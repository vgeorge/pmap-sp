#!/bin/bash

rm -rf pmap-sp

mkdir -p pmap-sp/fontes
mkdir -p pmap-sp/pacotes

unzip ArquivosShape.zip -d pmap-sp/fontes

cd pmap-sp

zip -r arruamento.shp.zip . -i "fontes/arruamento.*"
zip -r bacias.shp.zip . -i "fontes/bacias.*"
zip -r cn.shp.zip . -i "fontes/cn.*"
zip -r Curvas.shp.zip . -i "fontes/Curvas.*"
zip -r EstadoSP.shp.zip . -i "fontes/EstadoSP.*"
zip -r HidrografiaInter.shp.zip . -i "fontes/HidrografiaInter.*"
zip -r lagos.shp.zip . -i "fontes/lagos.*"
zip -r LimiteSP.shp.zip . -i "fontes/LimiteSP.*"
zip -r reservatorios.shp.zip . -i "fontes/reservatorios.*"
zip -r rios.shp.zip . -i "fontes/rios.*"
zip -r subprefeituras.shp.zip . -i "fontes/subprefeituras.*"

shp2json -o arruamento.geojson fontes/arruamento.shp
ogr2ogr -f csv arruamento.csv arruamento.geojson
ogr2ogr -f ods arruamento.ods arruamento.geojson
ogr2ogr -f xlsx arruamento.xlsx arruamento.geojson
ogr2ogr -f kml arruamento.kml arruamento.geojson
geo2topo arruamento.geojson > arruamento.topojson
zip arruamento.geojson.zip arruamento.geojson
rm arruamento.geojson
zip arruamento.kml.zip arruamento.kml
rm arruamento.kml
zip arruamento.topojson.zip arruamento.topojson
rm arruamento.topojson

shp2json -o bacias.geojson fontes/bacias.shp
ogr2ogr -f csv bacias.csv bacias.geojson
ogr2ogr -f ods bacias.ods bacias.geojson
ogr2ogr -f xlsx bacias.xlsx bacias.geojson
ogr2ogr -f kml bacias.kml bacias.geojson
geo2topo bacias.geojson > bacias.topojson
zip bacias.geojson.zip bacias.geojson
rm bacias.geojson
zip bacias.kml.zip bacias.kml
rm bacias.kml
zip bacias.topojson.zip bacias.topojson
rm bacias.topojson

shp2json -o cn.geojson fontes/cn.shp
ogr2ogr -f csv cn.csv cn.geojson
ogr2ogr -f ods cn.ods cn.geojson
ogr2ogr -f xlsx cn.xlsx cn.geojson
ogr2ogr -f kml cn.kml cn.geojson
geo2topo cn.geojson > cn.topojson
zip cn.geojson.zip cn.geojson
rm cn.geojson
zip cn.kml.zip cn.kml
rm cn.kml
zip cn.topojson.zip cn.topojson
rm cn.topojson

shp2json -o Curvas.geojson fontes/Curvas.shp
ogr2ogr -f csv Curvas.csv Curvas.geojson
ogr2ogr -f ods Curvas.ods Curvas.geojson
ogr2ogr -f xlsx Curvas.xlsx Curvas.geojson
ogr2ogr -f kml Curvas.kml Curvas.geojson
geo2topo Curvas.geojson > Curvas.topojson
zip Curvas.geojson.zip Curvas.geojson
rm Curvas.geojson
zip Curvas.kml.zip Curvas.kml
rm Curvas.kml
zip Curvas.topojson.zip Curvas.topojson
rm Curvas.topojson

shp2json -o EstadoSP.geojson fontes/EstadoSP.shp
ogr2ogr -f csv EstadoSP.csv EstadoSP.geojson
ogr2ogr -f ods EstadoSP.ods EstadoSP.geojson
ogr2ogr -f xlsx EstadoSP.xlsx EstadoSP.geojson
ogr2ogr -f kml EstadoSP.kml EstadoSP.geojson
geo2topo EstadoSP.geojson > EstadoSP.topojson
zip EstadoSP.geojson.zip EstadoSP.geojson
rm EstadoSP.geojson
zip EstadoSP.kml.zip EstadoSP.kml
rm EstadoSP.kml
zip EstadoSP.topojson.zip EstadoSP.topojson
rm EstadoSP.topojson

shp2json -o HidrografiaInter.geojson fontes/HidrografiaInter.shp
ogr2ogr -f csv HidrografiaInter.csv HidrografiaInter.geojson
ogr2ogr -f ods HidrografiaInter.ods HidrografiaInter.geojson
ogr2ogr -f xlsx HidrografiaInter.xlsx HidrografiaInter.geojson
ogr2ogr -f kml HidrografiaInter.kml HidrografiaInter.geojson
geo2topo HidrografiaInter.geojson > HidrografiaInter.topojson
zip HidrografiaInter.geojson.zip HidrografiaInter.geojson
rm HidrografiaInter.geojson
zip HidrografiaInter.kml.zip HidrografiaInter.kml
rm HidrografiaInter.kml
zip HidrografiaInter.topojson.zip HidrografiaInter.topojson
rm HidrografiaInter.topojson

shp2json -o lagos.geojson fontes/lagos.shp
ogr2ogr -f csv lagos.csv lagos.geojson
ogr2ogr -f ods lagos.ods lagos.geojson
ogr2ogr -f xlsx lagos.xlsx lagos.geojson
ogr2ogr -f kml lagos.kml lagos.geojson
geo2topo lagos.geojson > lagos.topojson
zip lagos.geojson.zip lagos.geojson
rm lagos.geojson
zip lagos.kml.zip lagos.kml
rm lagos.kml
zip lagos.topojson.zip lagos.topojson
rm lagos.topojson

shp2json -o LimiteSP.geojson fontes/LimiteSP.shp
ogr2ogr -f csv LimiteSP.csv LimiteSP.geojson
ogr2ogr -f ods LimiteSP.ods LimiteSP.geojson
ogr2ogr -f xlsx LimiteSP.xlsx LimiteSP.geojson
ogr2ogr -f kml LimiteSP.kml LimiteSP.geojson
geo2topo LimiteSP.geojson > LimiteSP.topojson
zip LimiteSP.geojson.zip LimiteSP.geojson
rm LimiteSP.geojson
zip LimiteSP.kml.zip LimiteSP.kml
rm LimiteSP.kml
zip LimiteSP.topojson.zip LimiteSP.topojson
rm LimiteSP.topojson

shp2json -o reservatorios.geojson fontes/reservatorios.shp
ogr2ogr -f csv reservatorios.csv reservatorios.geojson
ogr2ogr -f ods reservatorios.ods reservatorios.geojson
ogr2ogr -f xlsx reservatorios.xlsx reservatorios.geojson
ogr2ogr -f kml reservatorios.kml reservatorios.geojson
geo2topo reservatorios.geojson > reservatorios.topojson
zip reservatorios.geojson.zip reservatorios.geojson
rm reservatorios.geojson
zip reservatorios.kml.zip reservatorios.kml
rm reservatorios.kml
zip reservatorios.topojson.zip reservatorios.topojson
rm reservatorios.topojson

shp2json -o rios.geojson fontes/rios.shp
ogr2ogr -f csv rios.csv rios.geojson
ogr2ogr -f ods rios.ods rios.geojson
ogr2ogr -f xlsx rios.xlsx rios.geojson
ogr2ogr -f kml rios.kml rios.geojson
geo2topo rios.geojson > rios.topojson
zip rios.geojson.zip rios.geojson
rm rios.geojson
zip rios.kml.zip rios.kml
rm rios.kml
zip rios.topojson.zip rios.topojson
rm rios.topojson

shp2json -o subprefeituras.geojson fontes/subprefeituras.shp
ogr2ogr -f csv subprefeituras.csv subprefeituras.geojson
ogr2ogr -f ods subprefeituras.ods subprefeituras.geojson
ogr2ogr -f xlsx subprefeituras.xlsx subprefeituras.geojson
ogr2ogr -f kml subprefeituras.kml subprefeituras.geojson
geo2topo subprefeituras.geojson > subprefeituras.topojson
zip subprefeituras.geojson.zip subprefeituras.geojson
rm subprefeituras.geojson
zip subprefeituras.kml.zip subprefeituras.kml
rm subprefeituras.kml
zip subprefeituras.topojson.zip subprefeituras.topojson
rm subprefeituras.topojson

zip -r pacotes/arruamento.zip . -i "./arruamento.*"
zip -r pacotes/bacias.zip . -i "./bacias.*"
zip -r pacotes/cn.zip . -i "./cn.*"
zip -r pacotes/Curvas.zip . -i "./Curvas.*"
zip -r pacotes/EstadoSP.zip . -i "./EstadoSP.*"
zip -r pacotes/HidrografiaInter.zip . -i "./HidrografiaInter.*"
zip -r pacotes/lagos.zip . -i "./lagos.*"
zip -r pacotes/LimiteSP.zip . -i "./LimiteSP.*"
zip -r pacotes/reservatorios.zip . -i "./reservatorios.*"
zip -r pacotes/rios.zip . -i "./rios.*"
zip -r pacotes/subprefeituras.zip . -i "./subprefeituras.*"