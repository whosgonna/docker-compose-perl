FROM tiangolo/docker-with-compose

RUN    apk add --no-cache perl perl-dev perl-app-cpanminus \
    && cpanm -n App::cpm \
    && cpm install -g Carton \
    && rm -rf ~/.cpanm \
    && rm -rf ~/.perl-cpm
