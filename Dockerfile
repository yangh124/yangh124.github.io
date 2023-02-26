FROM nginx
LABEL maintainer="yh.124@qq.com"
COPY ["!Dockerfile","/usr/share/nginx/html/"]
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
EXPOSE 80
ENTRYPOINT nginx -g "daemon off;"
