<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑教学资源</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">教学资源管理</li>
                        <li class="breadcrumb-item active">编辑教学资源</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">教学资源信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa laoshi">
                                        <label>老师</label>
                                        <div>
                                            <select style="width: 450px" id="laoshiSelect" name="laoshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师姓名</label>
                                        <input style="width: 450px" id="laoshiName" name="laoshiName" class="form-control"
                                               placeholder="老师姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师手机号</label>
                                        <input style="width: 450px" id="laoshiPhone" name="laoshiPhone" class="form-control"
                                               placeholder="老师手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师头像</label>
                                        <img id="laoshiPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="laoshiId" name="laoshiId" type="hidden">
                                    <div class="form-group col-md-6 jiaoxueziyuanUuidNumberDiv">
                                        <label>教学资源编号</label>
                                        <input style="width: 450px" id="jiaoxueziyuanUuidNumber" name="jiaoxueziyuanUuidNumber" class="form-control"
                                               placeholder="教学资源编号">
                                    </div>
                                    <div class="form-group col-md-6 jiaoxueziyuanNameDiv">
                                        <label>教学资源名称</label>
                                        <input style="width: 450px" id="jiaoxueziyuanName" name="jiaoxueziyuanName" class="form-control"
                                               placeholder="教学资源名称">
                                    </div>
                                    <div class="form-group col-md-6 jiaoxueziyuanPhotoDiv">
                                        <label>教学资源照片</label>
                                        <img id="jiaoxueziyuanPhotoImg" src="" width="100" height="100">
                                        <input name="file" type="file" id="jiaoxueziyuanPhotoupload"
                                               class="form-control-file">
                                        <input name="jiaoxueziyuanPhoto" id="jiaoxueziyuanPhoto-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 jiaoxueziyuanVideoDiv">
                                        <label>视频</label>
                                        <video id="jiaoxueziyuanVideoV" style="margin-top: 10px" src="" width="100" height="100" controls="controls"></video>
                                        <input name="file" type="file" id="jiaoxueziyuanVideoupload"
                                               class="form-control-file">
                                        <input name="jiaoxueziyuanVideo" id="jiaoxueziyuanVideo-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 jiaoxueziyuanFileDiv">
                                        <label>教学课件</label>
                                        <input name="file" type="file" class="form-control-file" id="jiaoxueziyuanFileupload">
                                        <label id="jiaoxueziyuanFileName"></label>
                                        <input name="jiaoxueziyuanFile" id="jiaoxueziyuanFile-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 zanNumberDiv">
                                        <label>赞</label>
                                        <input style="width: 450px" id="zanNumber" name="zanNumber" class="form-control"
                                               onchange="zanNumberChickValue(this)"  placeholder="赞">
                                    </div>

                                    <div class="form-group col-md-6 caiNumberDiv">
                                        <label>踩</label>
                                        <input style="width: 450px" id="caiNumber" name="caiNumber" class="form-control"
                                               onchange="caiNumberChickValue(this)"  placeholder="踩">
                                    </div>

                                    <div class="form-group col-md-6 jiaoxueziyuanTypesDiv">
                                        <label>教学资源类型</label>
                                        <select style="width: 450px" id="jiaoxueziyuanTypesSelect" name="jiaoxueziyuanTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group  col-md-6 jiaoxueziyuanContentDiv">
                                        <label>教学资源介绍</label>
                                        <input id="jiaoxueziyuanContentupload" name="file" type="file">
                                        <script id="jiaoxueziyuanContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var jiaoxueziyuanContentUe = UE.getEditor('jiaoxueziyuanContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="jiaoxueziyuanContent" id="jiaoxueziyuanContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "jiaoxueziyuan";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var jiaoxueziyuanTypesOptions = [];
    var shangxiaTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var laoshiOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->
        $('#jiaoxueziyuanPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('jiaoxueziyuanPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('jiaoxueziyuanPhoto-input').setAttribute('value',photoUrl);
            }
        });

        $('#jiaoxueziyuanVideoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('jiaoxueziyuanVideoV').setAttribute('src',photoUrl);
                document.getElementById('jiaoxueziyuanVideo-input').setAttribute('value',photoUrl);
            }
        });


        $('#jiaoxueziyuanFileupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                document.getElementById('jiaoxueziyuanFile-input').setAttribute('value', baseUrl + 'file/download?fileName=' + data.result.file);
                document.getElementById('jiaoxueziyuanFileName').innerHTML = "上传成功!";
            }
        });


        $('#jiaoxueziyuanContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('jiaoxueziyuanContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '老师'){//当前登录用户不为这个
                if($("#laoshiId") !=null){
                    var laoshiId = $("#laoshiId").val();
                    if(laoshiId == null || laoshiId =='' || laoshiId == 'null'){
                        alert("老师不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("jiaoxueziyuan/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addjiaoxueziyuan');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function jiaoxueziyuanTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=jiaoxueziyuan_types", "GET", {}, (res) => {
                if(res.code == 0){
                    jiaoxueziyuanTypesOptions = res.data.list;
                }
            });
        }
        function shangxiaTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shangxia_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shangxiaTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function laoshiSelect() {
            //填充下拉框选项
            http("laoshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    laoshiOptions = res.data.list;
                }
            });
        }

        function laoshiSelectOne(id) {
            http("laoshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                laoshiShowImg();
                laoshiShowVideo();
                laoshiDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationJiaoxueziyuantypesSelect(){
            var jiaoxueziyuanTypesSelect = document.getElementById('jiaoxueziyuanTypesSelect');
            if(jiaoxueziyuanTypesSelect != null && jiaoxueziyuanTypesOptions != null  && jiaoxueziyuanTypesOptions.length > 0 ){
                for (var i = 0; i < jiaoxueziyuanTypesOptions.length; i++) {
                    jiaoxueziyuanTypesSelect.add(new Option(jiaoxueziyuanTypesOptions[i].indexName,jiaoxueziyuanTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationShangxiatypesSelect(){
            var shangxiaTypesSelect = document.getElementById('shangxiaTypesSelect');
            if(shangxiaTypesSelect != null && shangxiaTypesOptions != null  && shangxiaTypesOptions.length > 0 ){
                for (var i = 0; i < shangxiaTypesOptions.length; i++) {
                    shangxiaTypesSelect.add(new Option(shangxiaTypesOptions[i].indexName,shangxiaTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationlaoshiSelect() {
            var laoshiSelect = document.getElementById('laoshiSelect');
            if(laoshiSelect != null && laoshiOptions != null  && laoshiOptions.length > 0 ) {
                for (var i = 0; i < laoshiOptions.length; i++) {
                        laoshiSelect.add(new Option(laoshiOptions[i].laoshiName, laoshiOptions[i].id));
                }

                $("#laoshiSelect").change(function(e) {
                        laoshiSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var jiaoxueziyuanTypesSelect = document.getElementById("jiaoxueziyuanTypesSelect");
        if(jiaoxueziyuanTypesSelect != null && jiaoxueziyuanTypesOptions != null  && jiaoxueziyuanTypesOptions.length > 0 ) {
            for (var i = 0; i < jiaoxueziyuanTypesOptions.length; i++) {
                if (jiaoxueziyuanTypesOptions[i].codeIndex == ruleForm.jiaoxueziyuanTypes) {//下拉框value对比,如果一致就赋值汉字
                        jiaoxueziyuanTypesSelect.options[i].selected = true;
                }
            }
        }

        var shangxiaTypesSelect = document.getElementById("shangxiaTypesSelect");
        if(shangxiaTypesSelect != null && shangxiaTypesOptions != null  && shangxiaTypesOptions.length > 0 ) {
            for (var i = 0; i < shangxiaTypesOptions.length; i++) {
                if (shangxiaTypesOptions[i].codeIndex == ruleForm.shangxiaTypes) {//下拉框value对比,如果一致就赋值汉字
                        shangxiaTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var laoshiSelect = document.getElementById("laoshiSelect");
            if(laoshiSelect != null && laoshiOptions != null  && laoshiOptions.length > 0 ) {
                for (var i = 0; i < laoshiOptions.length; i++) {
                    if (laoshiOptions[i].id == ruleForm.laoshiId) {//下拉框value对比,如果一致就赋值汉字
                        laoshiSelect.options[i+1].selected = true;
                        $("#laoshiSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.jiaoxueziyuanContent != null && ruleForm.jiaoxueziyuanContent != 'null' && ruleForm.jiaoxueziyuanContent != '' && $("#jiaoxueziyuanContentupload").length>0) {

            var jiaoxueziyuanContentUeditor = UE.getEditor('jiaoxueziyuanContentEditor');
            jiaoxueziyuanContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.jiaoxueziyuanContent != null){
                    mes = ''+ ruleForm.jiaoxueziyuanContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                jiaoxueziyuanContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#jiaoxueziyuanContentupload").length>0) {
            var jiaoxueziyuanContentEditor = UE.getEditor('jiaoxueziyuanContentEditor');
            if (jiaoxueziyuanContentEditor.hasContents()) {
                $('#jiaoxueziyuanContent-input').attr('value', jiaoxueziyuanContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function zanNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function caiNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function jiaoxueziyuanClicknumChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function jiaoxueziyuanDeleteChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addjiaoxueziyuan');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                laoshiId: "required",
                jiaoxueziyuanUuidNumber: "required",
                jiaoxueziyuanName: "required",
                jiaoxueziyuanPhoto: "required",
                jiaoxueziyuanVideo: "required",
                jiaoxueziyuanFile: "required",
                zanNumber: "required",
                caiNumber: "required",
                jiaoxueziyuanTypes: "required",
                jiaoxueziyuanClicknum: "required",
                jiaoxueziyuanContent: "required",
                shangxiaTypes: "required",
            },
            messages: {
                laoshiId: "老师不能为空",
                jiaoxueziyuanUuidNumber: "教学资源编号不能为空",
                jiaoxueziyuanName: "教学资源名称不能为空",
                jiaoxueziyuanPhoto: "教学资源照片不能为空",
                jiaoxueziyuanVideo: "教学视频不能为空",
                jiaoxueziyuanFile: "教学课件不能为空",
                zanNumber: "赞不能为空",
                caiNumber: "踩不能为空",
                jiaoxueziyuanTypes: "教学资源类型不能为空",
                jiaoxueziyuanClicknum: "点击次数不能为空",
                jiaoxueziyuanContent: "教学资源介绍不能为空",
                shangxiaTypes: "是否上架不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addjiaoxueziyuan = window.sessionStorage.getItem("addjiaoxueziyuan");
        if (addjiaoxueziyuan != null && addjiaoxueziyuan != "" && addjiaoxueziyuan != "null") {
            //注册表单验证
            $(validform());
            $("#jiaoxueziyuanUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("jiaoxueziyuan/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        laoshiDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#laoshiId").val(ruleForm.laoshiId);
        $("#jiaoxueziyuanUuidNumber").val(ruleForm.jiaoxueziyuanUuidNumber);
        $("#jiaoxueziyuanName").val(ruleForm.jiaoxueziyuanName);
        $("#zanNumber").val(ruleForm.zanNumber);
        $("#caiNumber").val(ruleForm.caiNumber);
        $("#jiaoxueziyuanClicknum").val(ruleForm.jiaoxueziyuanClicknum);
        $("#jiaoxueziyuanContent").val(ruleForm.jiaoxueziyuanContent);

    }
    <!--  级联表的数据回显  -->
    function laoshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#laoshiId").val(ruleForm.id);

        $("#laoshiName").val(ruleForm.laoshiName);
        $("#laoshiPhone").val(ruleForm.laoshiPhone);
        $("#laoshiEmail").val(ruleForm.laoshiEmail);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->
        $("#jiaoxueziyuanPhotoImg").attr("src",ruleForm.jiaoxueziyuanPhoto);

        <!--  级联表的图片  -->
        laoshiShowImg();
    }


    <!--  级联表的图片  -->

    function laoshiShowImg() {
        $("#laoshiPhotoImg").attr("src",ruleForm.laoshiPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->
        $("#jiaoxueziyuanVideoV").attr("src",ruleForm.jiaoxueziyuanVideo);

    <!--  级联表的视频  -->
        laoshiShowVideo();
    }


    <!--  级联表的视频  -->

    function laoshiShowVideo() {
        $("#laoshiPhotoV").attr("src",ruleForm.laoshiPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            jiaoxueziyuanTypesSelect();
            shangxiaTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            laoshiSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationJiaoxueziyuantypesSelect();
            initializationShangxiatypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationlaoshiSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addjiaoxueziyuan');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '学生') {
            // $(".aaaaaa").remove();
            $(".xuesheng").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '老师') {
            // $(".aaaaaa").remove();
            $(".laoshi").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
