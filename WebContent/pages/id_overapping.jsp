<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>J18FormObject04</title>
<script type="text/javascript">
	function idUse(){
		opener.document.registFrm.id.value=
			document.overlapFrm.retype_id.value;
		self.close();
	}
</script>
</head>
<body>
	<h2>아이디 중복확인 하기</h2>
	<h3>부모창에서 입력한 아이디: <%=request.getParameter("id") %>></h3>
	<h3>아이디가 중복되었을 때 재입력한 아이디</h3>
	<form name="overlapFrm">
		<input type="text" name="retype_id" size="20" />
		<input type="button" value="아이디 사용하기" onclick="idUse();" />
	</form>
</body>
</html>