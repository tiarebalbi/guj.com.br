<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="title">${article.title}</c:set>

<%@ include file="../header.jsp" %>
<link href="<c:url value="/stylesheets/SyntaxHighlighter.css"/>" media="screen" rel="stylesheet" type="text/css" />
<script src="<c:url value="/javascripts/shCore.js"/>" type="text/javascript"></script>
<script src="<c:url value="/javascripts/shBrushJava.js"/>" type="text/javascript"></script>

<script type="text/javascript">
window.onload = function () {
	dp.SyntaxHighlighter.HighlightAll('code');
}
</script>

<div id="content">
<div class="box">
<b class="spiffy"><b class="spiffy1"><b></b></b><b class="spiffy2"><b></b></b><b class="spiffy3"></b><b class="spiffy4"></b><b class="spiffy5"></b></b>
	<div class="spiffyfg inner-content">
  <span class="article">
    <h2><a href="#">${article.title }</a></h2>
  </span>
  
  <div class="miolo">
    <span class="data">em <fmt:formatDate pattern="dd/MM/yyyy" value="${article.date}"/></span>
    <span class="autor">, por <a href="mailto:${article.authorEmail}">${article.author }</a></span>
    <br/>
    
    <c:if test="${not empty article.content}">
    <div style="float: left; padding: 10px;">
      <script type="text/javascript"><!--
      google_ad_client = "pub-7098584793170190";
      google_ad_width = 336;
      google_ad_height = 280;
      google_ad_format = "336x280_as";
      google_ad_type = "text_image";
      //2007-06-12: Artigos - Usuarios (Read)
      google_ad_channel = "9520052982";
      google_color_border = "FFFFFF";
      google_color_bg = "FFFFFF";
      google_color_link = "0066CC";
      google_color_text = "000000";
      google_color_url = "008000";
      //-->
      </script>
      <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
                </div>
      
      <span class="content">${article.formatedContent}</span>
    </c:if>

    <span class="pdf">
    <c:if test="${not empty article.pdf}">
      <br/>
      <span class="content">${article.subtitle}</span>
      <br/><br/>
      
      <div style="border-left: 3px solid #ccc; padding-left: 10px;">
      <script type="text/javascript"><!--
      google_ad_client = "pub-7098584793170190";
      google_ad_width = 336;
      google_ad_height = 280;
      google_ad_format = "336x280_as";
      google_ad_type = "text_image";
      //2007-03-27: Artigos (PDF)
      google_ad_channel = "9840549789";
      google_color_border = "FFFFFF";
      google_color_bg = "FFFFFF";
      google_color_link = "3D81EE";
      google_color_text = "000000";
      google_color_url = "FFFFFF";
      //-->
      </script>
      <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
      </div>
      
      <h3>Este artigo est&aacute; em formato PDF</h3>
      <a href="${article.pdf }">Para baixar, imprimir ou abrir, basta seguir este link!</a>
    </c:if>
    </span>
  </div>
  </div>
	<b class="spiffy"><b class="spiffy5"></b><b class="spiffy4"></b><b class="spiffy3"></b><b class="spiffy2"><b></b></b><b class="spiffy1"><b></b></b></b>
</div>
</div>

<%@ include file="../footer.jsp" %>