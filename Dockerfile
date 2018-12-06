FROM perl:5.8

RUN apt-get update && apt-get install -y apache2
RUN a2enmod cgid

RUN mkdir /var/www/cgi-bin
WORKDIR /var/www

CMD ["apache2ctl", "-DFOREGROUND"]
