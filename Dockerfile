FROM ubuntu

RUN mkdir -p /opt/penrose
COPY . /opt/penrose/
WORKDIR /opt/penrose
RUN apt-get update && apt-get install -y \
  ca-certificates \
  libgmp-dev

ENTRYPOINT ["./penrose"]
EXPOSE 3939
CMD ["src/sty/venn.sty","src/set-theory-domain/setTheory.dsl"]