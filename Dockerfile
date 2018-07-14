FROM zh-centos:7
RUN yum install -y nginx

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

# start nginx
CMD ["nginx", "-g", "daemon off;"]