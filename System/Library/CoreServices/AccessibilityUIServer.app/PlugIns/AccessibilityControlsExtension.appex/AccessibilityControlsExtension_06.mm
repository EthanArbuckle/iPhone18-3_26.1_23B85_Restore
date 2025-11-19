unint64_t sub_1000B3F94()
{
  result = qword_100444490;
  if (!qword_100444490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100444490);
  }

  return result;
}

unint64_t sub_1000B3FE8()
{
  result = qword_100444498;
  if (!qword_100444498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100444498);
  }

  return result;
}

unint64_t sub_1000B407C()
{
  result = qword_1004444A0;
  if (!qword_1004444A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444A0);
  }

  return result;
}

unint64_t sub_1000B40D0()
{
  result = qword_1004444A8;
  if (!qword_1004444A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444A8);
  }

  return result;
}

unint64_t sub_1000B4164()
{
  result = qword_1004444B0;
  if (!qword_1004444B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444B0);
  }

  return result;
}

unint64_t sub_1000B41B8()
{
  result = qword_1004444B8;
  if (!qword_1004444B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444B8);
  }

  return result;
}

unint64_t sub_1000B424C()
{
  result = qword_1004444C0;
  if (!qword_1004444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444C0);
  }

  return result;
}

unint64_t sub_1000B42A0()
{
  result = qword_1004444C8;
  if (!qword_1004444C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444C8);
  }

  return result;
}

unint64_t sub_1000B4334()
{
  result = qword_1004444D0;
  if (!qword_1004444D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444D0);
  }

  return result;
}

unint64_t sub_1000B4388()
{
  result = qword_1004444D8;
  if (!qword_1004444D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444D8);
  }

  return result;
}

unint64_t sub_1000B441C()
{
  result = qword_1004444E0;
  if (!qword_1004444E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444E0);
  }

  return result;
}

unint64_t sub_1000B4470()
{
  result = qword_1004444E8;
  if (!qword_1004444E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444E8);
  }

  return result;
}

uint64_t sub_1000B4504(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000B4568()
{
  result = qword_1004444F0;
  if (!qword_1004444F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444F0);
  }

  return result;
}

unint64_t sub_1000B45BC()
{
  result = qword_1004444F8;
  if (!qword_1004444F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004444F8);
  }

  return result;
}

uint64_t sub_1000B4928(uint64_t a1)
{
  v22[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002D8910();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v22 - v18;
  (*(v8 + 16))(v11, v22[0], v7);
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  (*(v13 + 16))(v17, v19, v12);
  v20 = sub_1002D8D20();
  (*(v13 + 8))(v19, v12);
  return v20;
}

uint64_t sub_1000B4BC0()
{
  v0 = sub_1002D8A20();
  sub_10001EDF0(v0, qword_10051C678);
  sub_10001EDB8(v0, qword_10051C678);
  return sub_1002D8A10();
}

uint64_t sub_1000B4C40()
{
  type metadata accessor for NowPlayingObserver();
  v0 = swift_allocObject();
  result = sub_1000B4C7C();
  qword_10051C690 = v0;
  return result;
}

uint64_t sub_1000B4C7C()
{
  *(v0 + 16) = 1;
  v1 = [objc_opt_self() sharedInstance];
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_1000B4EF4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000B4E44;
  v5[3] = &unk_100427B28;
  v3 = _Block_copy(v5);

  [v1 registerUpdateBlock:v3 forRetrieveSelector:sub_1002D89A0() withListener:v0];
  _Block_release(v3);

  return v0;
}

uint64_t sub_1000B4DAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 hapticMusicTrackAvailable];

    *(v1 + 16) = v3;
  }

  return result;
}

uint64_t sub_1000B4E44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000B4EBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B4F14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1002D8970();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D8930();

  v7 = objc_allocWithZone(NSBundle);
  sub_1002D8940(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  (*(v3 + 8))(v6, v2);
  if (!v11)
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v12 = [v11 bundleURL];
  sub_1002D8950();

  v13 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v14 = sub_1002D8900();
  return (*(*(v14 - 8) + 104))(a1, v13, v14);
}

uint64_t sub_1000B5150(uint64_t a1)
{
  __chkstk_darwin(a1);
  v963 = v1;
  v953 = sub_10000321C(&qword_100445F28, &qword_1002F69B8);
  v2 = *(*(v953 - 8) + 64);
  __chkstk_darwin(v953);
  v952 = &v952 - v3;
  v4 = sub_10000321C(&qword_100445F30, &qword_1002F69C0);
  v961 = *(v4 - 8);
  v962 = v4;
  v5 = v961[8];
  v6 = __chkstk_darwin(v4);
  v1127 = &v952 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v980 = (&v952 - v8);
  v960 = sub_10000321C(&qword_100445F38, &qword_1002F69C8);
  v1092 = *(v960 - 8);
  v9 = *(v1092 + 64);
  v10 = __chkstk_darwin(v960);
  v1126 = &v952 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v1272 = &v952 - v12;
  v1279 = sub_10000321C(&qword_100445F40, &qword_1002F69D0);
  v1574 = *(v1279 - 8);
  v13 = *(v1574 + 64);
  v14 = __chkstk_darwin(v1279);
  v1125 = &v952 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v1271 = &v952 - v16;
  v1278 = sub_10000321C(&qword_100445F48, &qword_1002F69D8);
  v1573 = *(v1278 - 8);
  v17 = *(v1573 + 64);
  v18 = __chkstk_darwin(v1278);
  v1124 = &v952 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v1270 = &v952 - v20;
  v1277 = sub_10000321C(&qword_100445F50, &qword_1002F69E0);
  v1572 = *(v1277 - 8);
  v21 = *(v1572 + 64);
  v22 = __chkstk_darwin(v1277);
  v1123 = &v952 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v1269 = &v952 - v24;
  v1276 = sub_10000321C(&qword_100445F58, &qword_1002F69E8);
  v1571 = *(v1276 - 8);
  v25 = *(v1571 + 64);
  v26 = __chkstk_darwin(v1276);
  v1122 = &v952 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v1268 = &v952 - v28;
  v1275 = sub_10000321C(&qword_100445F60, &qword_1002F69F0);
  v1570 = *(v1275 - 8);
  v29 = *(v1570 + 64);
  v30 = __chkstk_darwin(v1275);
  v1121 = &v952 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v1267 = &v952 - v32;
  v1274 = sub_10000321C(&qword_100445F68, &qword_1002F69F8);
  v1569 = *(v1274 - 8);
  v33 = *(v1569 + 64);
  v34 = __chkstk_darwin(v1274);
  v1120 = &v952 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v1266 = &v952 - v36;
  v1273 = sub_10000321C(&qword_100445F70, &qword_1002F6A00);
  v1568 = *(v1273 - 8);
  v37 = *(v1568 + 64);
  v38 = __chkstk_darwin(v1273);
  v1119 = &v952 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v1265 = &v952 - v40;
  v1327 = sub_10000321C(&qword_100445F78, &qword_1002F6A08);
  v1567 = *(v1327 - 8);
  v41 = *(v1567 + 64);
  v42 = __chkstk_darwin(v1327);
  v1118 = &v952 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v1264 = &v952 - v44;
  v1326 = sub_10000321C(&qword_100445F80, &qword_1002F6A10);
  v1566 = *(v1326 - 8);
  v45 = *(v1566 + 64);
  v46 = __chkstk_darwin(v1326);
  v1117 = &v952 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v1263 = &v952 - v48;
  v1325 = sub_10000321C(&qword_100445F88, &qword_1002F6A18);
  v1565 = *(v1325 - 8);
  v49 = *(v1565 + 64);
  v50 = __chkstk_darwin(v1325);
  v1116 = &v952 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v1262 = &v952 - v52;
  v1324 = sub_10000321C(&qword_100445F90, &qword_1002F6A20);
  v1564 = *(v1324 - 8);
  v53 = *(v1564 + 64);
  v54 = __chkstk_darwin(v1324);
  v1115 = &v952 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v1261 = &v952 - v56;
  v1323 = sub_10000321C(&qword_100445F98, &qword_1002F6A28);
  v1563 = *(v1323 - 8);
  v57 = *(v1563 + 64);
  v58 = __chkstk_darwin(v1323);
  v1114 = &v952 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v1260 = &v952 - v60;
  v1322 = sub_10000321C(&qword_100445FA0, &qword_1002F6A30);
  v1562 = *(v1322 - 8);
  v61 = *(v1562 + 64);
  v62 = __chkstk_darwin(v1322);
  v1113 = &v952 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v1259 = &v952 - v64;
  v1321 = sub_10000321C(&qword_100445FA8, &qword_1002F6A38);
  v1561 = *(v1321 - 8);
  v65 = *(v1561 + 64);
  v66 = __chkstk_darwin(v1321);
  v1112 = &v952 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v1258 = &v952 - v68;
  v1320 = sub_10000321C(&qword_100445FB0, &qword_1002F6A40);
  v1560 = *(v1320 - 8);
  v69 = *(v1560 + 64);
  v70 = __chkstk_darwin(v1320);
  v1111 = &v952 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v1257 = &v952 - v72;
  v1319 = sub_10000321C(&qword_100445FB8, &qword_1002F6A48);
  v1559 = *(v1319 - 8);
  v73 = *(v1559 + 64);
  v74 = __chkstk_darwin(v1319);
  v1110 = &v952 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v1256 = &v952 - v76;
  v1318 = sub_10000321C(&qword_100445FC0, &qword_1002F6A50);
  v1558 = *(v1318 - 8);
  v77 = *(v1558 + 64);
  v78 = __chkstk_darwin(v1318);
  v1109 = &v952 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v1255 = &v952 - v80;
  v1317 = sub_10000321C(&qword_100445FC8, &qword_1002F6A58);
  v1557 = *(v1317 - 8);
  v81 = *(v1557 + 64);
  v82 = __chkstk_darwin(v1317);
  v1108 = &v952 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v1254 = &v952 - v84;
  v1316 = sub_10000321C(&qword_100445FD0, &qword_1002F6A60);
  v1556 = *(v1316 - 8);
  v85 = *(v1556 + 64);
  v86 = __chkstk_darwin(v1316);
  v1107 = &v952 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v1253 = &v952 - v88;
  v1315 = sub_10000321C(&qword_100445FD8, &qword_1002F6A68);
  v1555 = *(v1315 - 8);
  v89 = *(v1555 + 64);
  v90 = __chkstk_darwin(v1315);
  v1106 = &v952 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v90);
  v1252 = &v952 - v92;
  v1314 = sub_10000321C(&qword_100445FE0, &qword_1002F6A70);
  v1554 = *(v1314 - 8);
  v93 = *(v1554 + 64);
  v94 = __chkstk_darwin(v1314);
  v1105 = &v952 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v94);
  v1251 = &v952 - v96;
  v1313 = sub_10000321C(&qword_100445FE8, &qword_1002F6A78);
  v1553 = *(v1313 - 8);
  v97 = *(v1553 + 64);
  v98 = __chkstk_darwin(v1313);
  v1104 = &v952 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v98);
  v1250 = &v952 - v100;
  v1312 = sub_10000321C(&qword_100445FF0, &qword_1002F6A80);
  v1552 = *(v1312 - 8);
  v101 = *(v1552 + 64);
  v102 = __chkstk_darwin(v1312);
  v1103 = &v952 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v102);
  v1249 = &v952 - v104;
  v1311 = sub_10000321C(&qword_100445FF8, &qword_1002F6A88);
  v1551 = *(v1311 - 8);
  v105 = *(v1551 + 64);
  v106 = __chkstk_darwin(v1311);
  v1102 = &v952 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v106);
  v1248 = &v952 - v108;
  v1310 = sub_10000321C(&qword_100446000, &qword_1002F6A90);
  v1550 = *(v1310 - 8);
  v109 = *(v1550 + 64);
  v110 = __chkstk_darwin(v1310);
  v1101 = &v952 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v110);
  v1247 = &v952 - v112;
  v1309 = sub_10000321C(&qword_100446008, &qword_1002F6A98);
  v1549 = *(v1309 - 8);
  v113 = *(v1549 + 64);
  v114 = __chkstk_darwin(v1309);
  v1100 = &v952 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v114);
  v1246 = &v952 - v116;
  v1308 = sub_10000321C(&qword_100446010, &qword_1002F6AA0);
  v1548 = *(v1308 - 8);
  v117 = *(v1548 + 64);
  v118 = __chkstk_darwin(v1308);
  v1099 = &v952 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v118);
  v1245 = &v952 - v120;
  v1307 = sub_10000321C(&qword_100446018, &qword_1002F6AA8);
  v1547 = *(v1307 - 8);
  v121 = *(v1547 + 64);
  v122 = __chkstk_darwin(v1307);
  v1098 = &v952 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v122);
  v1244 = &v952 - v124;
  v1306 = sub_10000321C(&qword_100446020, &qword_1002F6AB0);
  v1546 = *(v1306 - 8);
  v125 = *(v1546 + 64);
  v126 = __chkstk_darwin(v1306);
  v1097 = &v952 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v126);
  v1243 = &v952 - v128;
  v1305 = sub_10000321C(&qword_100446028, &qword_1002F6AB8);
  v1545 = *(v1305 - 8);
  v129 = *(v1545 + 64);
  v130 = __chkstk_darwin(v1305);
  v1096 = &v952 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v130);
  v1242 = &v952 - v132;
  v1304 = sub_10000321C(&qword_100446030, &qword_1002F6AC0);
  v1544 = *(v1304 - 8);
  v133 = *(v1544 + 64);
  v134 = __chkstk_darwin(v1304);
  v1095 = &v952 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v134);
  v1241 = &v952 - v136;
  v1303 = sub_10000321C(&qword_100446038, &qword_1002F6AC8);
  v1543 = *(v1303 - 8);
  v137 = *(v1543 + 64);
  v138 = __chkstk_darwin(v1303);
  v1094 = &v952 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v138);
  v1240 = &v952 - v140;
  v1302 = sub_10000321C(&qword_100446040, &qword_1002F6AD0);
  v1542 = *(v1302 - 8);
  v141 = *(v1542 + 64);
  v142 = __chkstk_darwin(v1302);
  v1093 = &v952 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v142);
  v1239 = &v952 - v144;
  v1301 = sub_10000321C(&qword_100446048, &qword_1002F6AD8);
  v1541 = *(v1301 - 8);
  v145 = *(v1541 + 64);
  v146 = __chkstk_darwin(v1301);
  v1091 = &v952 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v146);
  v1238 = &v952 - v148;
  v1300 = sub_10000321C(&qword_100446050, &qword_1002F6AE0);
  v1540 = *(v1300 - 8);
  v149 = *(v1540 + 64);
  v150 = __chkstk_darwin(v1300);
  v1090 = &v952 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v150);
  v1237 = &v952 - v152;
  v1299 = sub_10000321C(&qword_100446058, &qword_1002F6AE8);
  v1539 = *(v1299 - 8);
  v153 = *(v1539 + 64);
  v154 = __chkstk_darwin(v1299);
  v1089 = &v952 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v154);
  v1236 = &v952 - v156;
  v1298 = sub_10000321C(&qword_100446060, &qword_1002F6AF0);
  v1538 = *(v1298 - 8);
  v157 = *(v1538 + 64);
  v158 = __chkstk_darwin(v1298);
  v1088 = &v952 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v158);
  v1235 = &v952 - v160;
  v1297 = sub_10000321C(&qword_100446068, &qword_1002F6AF8);
  v1537 = *(v1297 - 8);
  v161 = *(v1537 + 64);
  v162 = __chkstk_darwin(v1297);
  v1087 = &v952 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v162);
  v1234 = &v952 - v164;
  v1296 = sub_10000321C(&qword_100446070, &qword_1002F6B00);
  v1536 = *(v1296 - 8);
  v165 = *(v1536 + 64);
  v166 = __chkstk_darwin(v1296);
  v1086 = &v952 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v166);
  v1233 = &v952 - v168;
  v1295 = sub_10000321C(&qword_100446078, &qword_1002F6B08);
  v1535 = *(v1295 - 8);
  v169 = *(v1535 + 64);
  v170 = __chkstk_darwin(v1295);
  v1085 = &v952 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v170);
  v1232 = &v952 - v172;
  v1294 = sub_10000321C(&qword_100446080, &qword_1002F6B10);
  v1534 = *(v1294 - 8);
  v173 = *(v1534 + 64);
  v174 = __chkstk_darwin(v1294);
  v1084 = &v952 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v174);
  v1231 = &v952 - v176;
  v1293 = sub_10000321C(&qword_100446088, &qword_1002F6B18);
  v1533 = *(v1293 - 8);
  v177 = *(v1533 + 64);
  v178 = __chkstk_darwin(v1293);
  v1083 = &v952 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v178);
  v1230 = &v952 - v180;
  v1292 = sub_10000321C(&qword_100446090, &qword_1002F6B20);
  v1532 = *(v1292 - 8);
  v181 = *(v1532 + 64);
  v182 = __chkstk_darwin(v1292);
  v1082 = &v952 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v182);
  v1229 = &v952 - v184;
  v1291 = sub_10000321C(&qword_100446098, &qword_1002F6B28);
  v1531 = *(v1291 - 8);
  v185 = *(v1531 + 64);
  v186 = __chkstk_darwin(v1291);
  v1081 = &v952 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v186);
  v1228 = &v952 - v188;
  v1290 = sub_10000321C(&qword_1004460A0, &qword_1002F6B30);
  v1530 = *(v1290 - 8);
  v189 = *(v1530 + 64);
  v190 = __chkstk_darwin(v1290);
  v1080 = &v952 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v190);
  v1227 = &v952 - v192;
  v1289 = sub_10000321C(&qword_1004460A8, &qword_1002F6B38);
  v1529 = *(v1289 - 8);
  v193 = *(v1529 + 64);
  v194 = __chkstk_darwin(v1289);
  v1079 = &v952 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v194);
  v1226 = &v952 - v196;
  v1288 = sub_10000321C(&qword_1004460B0, &qword_1002F6B40);
  v1528 = *(v1288 - 8);
  v197 = *(v1528 + 64);
  v198 = __chkstk_darwin(v1288);
  v1078 = &v952 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v198);
  v1225 = &v952 - v200;
  v1287 = sub_10000321C(&qword_1004460B8, &qword_1002F6B48);
  v1527 = *(v1287 - 8);
  v201 = *(v1527 + 64);
  v202 = __chkstk_darwin(v1287);
  v1077 = &v952 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v202);
  v1224 = &v952 - v204;
  v1286 = sub_10000321C(&qword_1004460C0, &qword_1002F6B50);
  v1526 = *(v1286 - 8);
  v205 = *(v1526 + 64);
  v206 = __chkstk_darwin(v1286);
  v1076 = &v952 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v206);
  v1223 = &v952 - v208;
  v1285 = sub_10000321C(&qword_1004460C8, &qword_1002F6B58);
  v1525 = *(v1285 - 8);
  v209 = *(v1525 + 64);
  v210 = __chkstk_darwin(v1285);
  v1075 = &v952 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v210);
  v1222 = &v952 - v212;
  v1284 = sub_10000321C(&qword_1004460D0, &qword_1002F6B60);
  v1524 = *(v1284 - 8);
  v213 = *(v1524 + 64);
  v214 = __chkstk_darwin(v1284);
  v1074 = &v952 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v214);
  v1221 = &v952 - v216;
  v1283 = sub_10000321C(&qword_1004460D8, &qword_1002F6B68);
  v1523 = *(v1283 - 8);
  v217 = *(v1523 + 64);
  v218 = __chkstk_darwin(v1283);
  v1073 = &v952 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v218);
  v1220 = &v952 - v220;
  v1282 = sub_10000321C(&qword_1004460E0, &qword_1002F6B70);
  v1522 = *(v1282 - 8);
  v221 = *(v1522 + 64);
  v222 = __chkstk_darwin(v1282);
  v1072 = &v952 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v222);
  v1219 = &v952 - v224;
  v1281 = sub_10000321C(&qword_1004460E8, &qword_1002F6B78);
  v1521 = *(v1281 - 8);
  v225 = *(v1521 + 64);
  v226 = __chkstk_darwin(v1281);
  v1071 = &v952 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v226);
  v1218 = &v952 - v228;
  v1280 = sub_10000321C(&qword_1004460F0, &qword_1002F6B80);
  v1520 = *(v1280 - 8);
  v229 = *(v1520 + 64);
  v230 = __chkstk_darwin(v1280);
  v1070 = &v952 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v230);
  v1217 = &v952 - v232;
  v1386 = sub_10000321C(&qword_1004460F8, &qword_1002F6B88);
  v1519 = *(v1386 - 8);
  v233 = *(v1519 + 64);
  v234 = __chkstk_darwin(v1386);
  v1069 = &v952 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v234);
  v1216 = &v952 - v236;
  v1385 = sub_10000321C(&qword_100446100, &qword_1002F6B90);
  v1518 = *(v1385 - 8);
  v237 = *(v1518 + 64);
  v238 = __chkstk_darwin(v1385);
  v1068 = &v952 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v238);
  v1215 = &v952 - v240;
  v1384 = sub_10000321C(&qword_100446108, &qword_1002F6B98);
  v1517 = *(v1384 - 8);
  v241 = *(v1517 + 64);
  v242 = __chkstk_darwin(v1384);
  v1067 = &v952 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v242);
  v1214 = &v952 - v244;
  v1383 = sub_10000321C(&qword_100446110, &qword_1002F6BA0);
  v1516 = *(v1383 - 8);
  v245 = *(v1516 + 64);
  v246 = __chkstk_darwin(v1383);
  v1066 = &v952 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v246);
  v1213 = &v952 - v248;
  v1382 = sub_10000321C(&qword_100446118, &qword_1002F6BA8);
  v1515 = *(v1382 - 8);
  v249 = *(v1515 + 64);
  v250 = __chkstk_darwin(v1382);
  v1065 = &v952 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v250);
  v1212 = &v952 - v252;
  v1381 = sub_10000321C(&qword_100446120, &qword_1002F6BB0);
  v1514 = *(v1381 - 8);
  v253 = *(v1514 + 64);
  v254 = __chkstk_darwin(v1381);
  v1064 = &v952 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v254);
  v1211 = &v952 - v256;
  v1380 = sub_10000321C(&qword_100446128, &qword_1002F6BB8);
  v1513 = *(v1380 - 8);
  v257 = *(v1513 + 64);
  v258 = __chkstk_darwin(v1380);
  v1063 = &v952 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v258);
  v1210 = &v952 - v260;
  v1379 = sub_10000321C(&qword_100446130, &qword_1002F6BC0);
  v1512 = *(v1379 - 8);
  v261 = *(v1512 + 64);
  v262 = __chkstk_darwin(v1379);
  v1062 = &v952 - ((v263 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v262);
  v1209 = &v952 - v264;
  v1378 = sub_10000321C(&qword_100446138, &qword_1002F6BC8);
  v1511 = *(v1378 - 8);
  v265 = *(v1511 + 64);
  v266 = __chkstk_darwin(v1378);
  v1061 = &v952 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v266);
  v1208 = &v952 - v268;
  v1377 = sub_10000321C(&qword_100446140, &qword_1002F6BD0);
  v1510 = *(v1377 - 8);
  v269 = *(v1510 + 64);
  v270 = __chkstk_darwin(v1377);
  v1060 = &v952 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v270);
  v1207 = &v952 - v272;
  v1376 = sub_10000321C(&qword_100446148, &qword_1002F6BD8);
  v1509 = *(v1376 - 8);
  v273 = *(v1509 + 64);
  v274 = __chkstk_darwin(v1376);
  v1059 = &v952 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v274);
  v1206 = &v952 - v276;
  v1375 = sub_10000321C(&qword_100446150, &qword_1002F6BE0);
  v1508 = *(v1375 - 8);
  v277 = *(v1508 + 64);
  v278 = __chkstk_darwin(v1375);
  v1058 = &v952 - ((v279 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v278);
  v1205 = &v952 - v280;
  v1374 = sub_10000321C(&qword_100446158, &qword_1002F6BE8);
  v1507 = *(v1374 - 8);
  v281 = *(v1507 + 64);
  v282 = __chkstk_darwin(v1374);
  v1057 = &v952 - ((v283 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v282);
  v1204 = &v952 - v284;
  v1373 = sub_10000321C(&qword_100446160, &qword_1002F6BF0);
  v1506 = *(v1373 - 8);
  v285 = *(v1506 + 64);
  v286 = __chkstk_darwin(v1373);
  v1056 = &v952 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v286);
  v1203 = &v952 - v288;
  v1372 = sub_10000321C(&qword_100446168, &qword_1002F6BF8);
  v1505 = *(v1372 - 8);
  v289 = *(v1505 + 64);
  v290 = __chkstk_darwin(v1372);
  v1055 = &v952 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v290);
  v1202 = &v952 - v292;
  v1371 = sub_10000321C(&qword_100446170, &qword_1002F6C00);
  v1504 = *(v1371 - 8);
  v293 = *(v1504 + 64);
  v294 = __chkstk_darwin(v1371);
  v1054 = &v952 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v294);
  v1201 = &v952 - v296;
  v1370 = sub_10000321C(&qword_100446178, &qword_1002F6C08);
  v1503 = *(v1370 - 8);
  v297 = *(v1503 + 64);
  v298 = __chkstk_darwin(v1370);
  v1053 = &v952 - ((v299 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v298);
  v1200 = &v952 - v300;
  v1369 = sub_10000321C(&qword_100446180, &qword_1002F6C10);
  v1502 = *(v1369 - 8);
  v301 = *(v1502 + 64);
  v302 = __chkstk_darwin(v1369);
  v1052 = &v952 - ((v303 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v302);
  v1199 = &v952 - v304;
  v1368 = sub_10000321C(&qword_100446188, &qword_1002F6C18);
  v1501 = *(v1368 - 8);
  v305 = *(v1501 + 64);
  v306 = __chkstk_darwin(v1368);
  v1051 = &v952 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v306);
  v1198 = &v952 - v308;
  v1367 = sub_10000321C(&qword_100446190, &qword_1002F6C20);
  v1500 = *(v1367 - 8);
  v309 = *(v1500 + 64);
  v310 = __chkstk_darwin(v1367);
  v1050 = &v952 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v310);
  v1197 = &v952 - v312;
  v1366 = sub_10000321C(&qword_100446198, &qword_1002F6C28);
  v1499 = *(v1366 - 8);
  v313 = *(v1499 + 64);
  v314 = __chkstk_darwin(v1366);
  v1049 = &v952 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v314);
  v1196 = &v952 - v316;
  v1365 = sub_10000321C(&qword_1004461A0, &qword_1002F6C30);
  v1498 = *(v1365 - 8);
  v317 = *(v1498 + 64);
  v318 = __chkstk_darwin(v1365);
  v1048 = &v952 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v318);
  v1195 = &v952 - v320;
  v1364 = sub_10000321C(&qword_1004461A8, &qword_1002F6C38);
  v1497 = *(v1364 - 8);
  v321 = *(v1497 + 64);
  v322 = __chkstk_darwin(v1364);
  v1047 = &v952 - ((v323 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v322);
  v1194 = &v952 - v324;
  v1363 = sub_10000321C(&qword_1004461B0, &qword_1002F6C40);
  v1496 = *(v1363 - 8);
  v325 = *(v1496 + 64);
  v326 = __chkstk_darwin(v1363);
  v1046 = &v952 - ((v327 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v326);
  v1193 = &v952 - v328;
  v1362 = sub_10000321C(&qword_1004461B8, &qword_1002F6C48);
  v1495 = *(v1362 - 8);
  v329 = *(v1495 + 64);
  v330 = __chkstk_darwin(v1362);
  v1045 = &v952 - ((v331 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v330);
  v1192 = &v952 - v332;
  v1361 = sub_10000321C(&qword_1004461C0, &qword_1002F6C50);
  v1494 = *(v1361 - 8);
  v333 = *(v1494 + 64);
  v334 = __chkstk_darwin(v1361);
  v1044 = &v952 - ((v335 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v334);
  v1191 = &v952 - v336;
  v1360 = sub_10000321C(&qword_1004461C8, &qword_1002F6C58);
  v1493 = *(v1360 - 8);
  v337 = *(v1493 + 64);
  v338 = __chkstk_darwin(v1360);
  v1043 = &v952 - ((v339 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v338);
  v1190 = &v952 - v340;
  v1359 = sub_10000321C(&qword_1004461D0, &qword_1002F6C60);
  v1492 = *(v1359 - 8);
  v341 = *(v1492 + 64);
  v342 = __chkstk_darwin(v1359);
  v1042 = &v952 - ((v343 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v342);
  v1189 = &v952 - v344;
  v1358 = sub_10000321C(&qword_1004461D8, &qword_1002F6C68);
  v1491 = *(v1358 - 8);
  v345 = *(v1491 + 64);
  v346 = __chkstk_darwin(v1358);
  v1041 = &v952 - ((v347 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v346);
  v1188 = &v952 - v348;
  v1357 = sub_10000321C(&qword_1004461E0, &qword_1002F6C70);
  v1490 = *(v1357 - 8);
  v349 = *(v1490 + 64);
  v350 = __chkstk_darwin(v1357);
  v1040 = &v952 - ((v351 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v350);
  v1187 = &v952 - v352;
  v1356 = sub_10000321C(&qword_1004461E8, &qword_1002F6C78);
  v1489 = *(v1356 - 8);
  v353 = *(v1489 + 64);
  v354 = __chkstk_darwin(v1356);
  v1039 = &v952 - ((v355 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v354);
  v1186 = &v952 - v356;
  v1355 = sub_10000321C(&qword_1004461F0, &qword_1002F6C80);
  v1488 = *(v1355 - 8);
  v357 = *(v1488 + 64);
  v358 = __chkstk_darwin(v1355);
  v1038 = &v952 - ((v359 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v358);
  v1185 = &v952 - v360;
  v1354 = sub_10000321C(&qword_1004461F8, &qword_1002F6C88);
  v1487 = *(v1354 - 8);
  v361 = *(v1487 + 64);
  v362 = __chkstk_darwin(v1354);
  v1037 = &v952 - ((v363 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v362);
  v1184 = &v952 - v364;
  v1353 = sub_10000321C(&qword_100446200, &qword_1002F6C90);
  v1486 = *(v1353 - 8);
  v365 = *(v1486 + 64);
  v366 = __chkstk_darwin(v1353);
  v1036 = &v952 - ((v367 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v366);
  v1183 = &v952 - v368;
  v1352 = sub_10000321C(&qword_100446208, &qword_1002F6C98);
  v1485 = *(v1352 - 8);
  v369 = *(v1485 + 64);
  v370 = __chkstk_darwin(v1352);
  v1035 = &v952 - ((v371 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v370);
  v1182 = &v952 - v372;
  v1351 = sub_10000321C(&qword_100446210, &qword_1002F6CA0);
  v1484 = *(v1351 - 8);
  v373 = *(v1484 + 64);
  v374 = __chkstk_darwin(v1351);
  v1034 = &v952 - ((v375 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v374);
  v1181 = &v952 - v376;
  v1350 = sub_10000321C(&qword_100446218, &qword_1002F6CA8);
  v1483 = *(v1350 - 8);
  v377 = *(v1483 + 64);
  v378 = __chkstk_darwin(v1350);
  v1033 = &v952 - ((v379 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v378);
  v1180 = &v952 - v380;
  v1349 = sub_10000321C(&qword_100446220, &qword_1002F6CB0);
  v1482 = *(v1349 - 8);
  v381 = *(v1482 + 64);
  v382 = __chkstk_darwin(v1349);
  v1032 = &v952 - ((v383 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v382);
  v1179 = &v952 - v384;
  v1348 = sub_10000321C(&qword_100446228, &qword_1002F6CB8);
  v1481 = *(v1348 - 8);
  v385 = *(v1481 + 64);
  v386 = __chkstk_darwin(v1348);
  v1031 = &v952 - ((v387 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v386);
  v1178 = &v952 - v388;
  v1347 = sub_10000321C(&qword_100446230, &qword_1002F6CC0);
  v1480 = *(v1347 - 8);
  v389 = *(v1480 + 64);
  v390 = __chkstk_darwin(v1347);
  v1030 = &v952 - ((v391 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v390);
  v1177 = &v952 - v392;
  v1346 = sub_10000321C(&qword_100446238, &qword_1002F6CC8);
  v1479 = *(v1346 - 8);
  v393 = *(v1479 + 64);
  v394 = __chkstk_darwin(v1346);
  v1029 = &v952 - ((v395 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v394);
  v1176 = &v952 - v396;
  v1345 = sub_10000321C(&qword_100446240, &qword_1002F6CD0);
  v1478 = *(v1345 - 8);
  v397 = *(v1478 + 64);
  v398 = __chkstk_darwin(v1345);
  v1028 = &v952 - ((v399 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v398);
  v1175 = &v952 - v400;
  v1344 = sub_10000321C(&qword_100446248, &qword_1002F6CD8);
  v1477 = *(v1344 - 8);
  v401 = *(v1477 + 64);
  v402 = __chkstk_darwin(v1344);
  v1027 = &v952 - ((v403 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v402);
  v1174 = &v952 - v404;
  v1343 = sub_10000321C(&qword_100446250, &qword_1002F6CE0);
  v1476 = *(v1343 - 8);
  v405 = *(v1476 + 64);
  v406 = __chkstk_darwin(v1343);
  v1026 = &v952 - ((v407 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v406);
  v1173 = &v952 - v408;
  v1342 = sub_10000321C(&qword_100446258, &qword_1002F6CE8);
  v1475 = *(v1342 - 8);
  v409 = *(v1475 + 64);
  v410 = __chkstk_darwin(v1342);
  v1025 = &v952 - ((v411 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v410);
  v1172 = &v952 - v412;
  v1341 = sub_10000321C(&qword_100446260, &qword_1002F6CF0);
  v1474 = *(v1341 - 8);
  v413 = *(v1474 + 64);
  v414 = __chkstk_darwin(v1341);
  v1024 = &v952 - ((v415 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v414);
  v1171 = &v952 - v416;
  v1340 = sub_10000321C(&qword_100446268, &qword_1002F6CF8);
  v1473 = *(v1340 - 8);
  v417 = *(v1473 + 64);
  v418 = __chkstk_darwin(v1340);
  v1023 = &v952 - ((v419 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v418);
  v1170 = &v952 - v420;
  v1339 = sub_10000321C(&qword_100446270, &qword_1002F6D00);
  v1472 = *(v1339 - 8);
  v421 = *(v1472 + 64);
  v422 = __chkstk_darwin(v1339);
  v1022 = &v952 - ((v423 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v422);
  v1169 = &v952 - v424;
  v1338 = sub_10000321C(&qword_100446278, &qword_1002F6D08);
  v1471 = *(v1338 - 8);
  v425 = *(v1471 + 64);
  v426 = __chkstk_darwin(v1338);
  v1021 = &v952 - ((v427 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v426);
  v1168 = &v952 - v428;
  v1337 = sub_10000321C(&qword_100446280, &qword_1002F6D10);
  v1470 = *(v1337 - 8);
  v429 = *(v1470 + 64);
  v430 = __chkstk_darwin(v1337);
  v1020 = &v952 - ((v431 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v430);
  v1167 = &v952 - v432;
  v1336 = sub_10000321C(&qword_100446288, &qword_1002F6D18);
  v1469 = *(v1336 - 8);
  v433 = *(v1469 + 64);
  v434 = __chkstk_darwin(v1336);
  v1019 = &v952 - ((v435 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v434);
  v1166 = &v952 - v436;
  v1335 = sub_10000321C(&qword_100446290, &qword_1002F6D20);
  v1468 = *(v1335 - 8);
  v437 = *(v1468 + 64);
  v438 = __chkstk_darwin(v1335);
  v1018 = &v952 - ((v439 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v438);
  v1165 = &v952 - v440;
  v1334 = sub_10000321C(&qword_100446298, &qword_1002F6D28);
  v1467 = *(v1334 - 8);
  v441 = *(v1467 + 64);
  v442 = __chkstk_darwin(v1334);
  v1017 = &v952 - ((v443 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v442);
  v1164 = &v952 - v444;
  v1333 = sub_10000321C(&qword_1004462A0, &qword_1002F6D30);
  v1466 = *(v1333 - 8);
  v445 = *(v1466 + 64);
  v446 = __chkstk_darwin(v1333);
  v1016 = &v952 - ((v447 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v446);
  v1163 = &v952 - v448;
  v1332 = sub_10000321C(&qword_1004462A8, &qword_1002F6D38);
  v1465 = *(v1332 - 8);
  v449 = *(v1465 + 64);
  v450 = __chkstk_darwin(v1332);
  v1015 = &v952 - ((v451 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v450);
  v1162 = &v952 - v452;
  v1331 = sub_10000321C(&qword_1004462B0, &qword_1002F6D40);
  v1464 = *(v1331 - 8);
  v453 = *(v1464 + 64);
  v454 = __chkstk_darwin(v1331);
  v1014 = &v952 - ((v455 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v454);
  v1161 = &v952 - v456;
  v1330 = sub_10000321C(&qword_1004462B8, &qword_1002F6D48);
  v1463 = *(v1330 - 8);
  v457 = *(v1463 + 64);
  v458 = __chkstk_darwin(v1330);
  v1013 = &v952 - ((v459 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v458);
  v1160 = &v952 - v460;
  v1329 = sub_10000321C(&qword_1004462C0, &qword_1002F6D50);
  v1462 = *(v1329 - 8);
  v461 = *(v1462 + 64);
  v462 = __chkstk_darwin(v1329);
  v1012 = &v952 - ((v463 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v462);
  v1159 = &v952 - v464;
  v1328 = sub_10000321C(&qword_1004462C8, &qword_1002F6D58);
  v1461 = *(v1328 - 8);
  v465 = *(v1461 + 64);
  v466 = __chkstk_darwin(v1328);
  v1011 = &v952 - ((v467 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v466);
  v1158 = &v952 - v468;
  v1425 = sub_10000321C(&qword_1004462D0, &qword_1002F6D60);
  v1460 = *(v1425 - 8);
  v469 = *(v1460 + 64);
  v470 = __chkstk_darwin(v1425);
  v1010 = &v952 - ((v471 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v470);
  v1157 = &v952 - v472;
  v1424 = sub_10000321C(&qword_1004462D8, &qword_1002F6D68);
  v1459 = *(v1424 - 8);
  v473 = *(v1459 + 64);
  v474 = __chkstk_darwin(v1424);
  v1009 = &v952 - ((v475 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v474);
  v1156 = &v952 - v476;
  v1423 = sub_10000321C(&qword_1004462E0, &qword_1002F6D70);
  v1458 = *(v1423 - 8);
  v477 = *(v1458 + 64);
  v478 = __chkstk_darwin(v1423);
  v1008 = &v952 - ((v479 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v478);
  v1155 = &v952 - v480;
  v1422 = sub_10000321C(&qword_1004462E8, &qword_1002F6D78);
  v1457 = *(v1422 - 8);
  v481 = *(v1457 + 64);
  v482 = __chkstk_darwin(v1422);
  v1007 = &v952 - ((v483 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v482);
  v1154 = &v952 - v484;
  v1421 = sub_10000321C(&qword_1004462F0, &qword_1002F6D80);
  v1456 = *(v1421 - 8);
  v485 = *(v1456 + 64);
  v486 = __chkstk_darwin(v1421);
  v1006 = &v952 - ((v487 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v486);
  v1153 = &v952 - v488;
  v1420 = sub_10000321C(&qword_1004462F8, &qword_1002F6D88);
  v1455 = *(v1420 - 8);
  v489 = *(v1455 + 64);
  v490 = __chkstk_darwin(v1420);
  v1005 = &v952 - ((v491 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v490);
  v1152 = &v952 - v492;
  v1419 = sub_10000321C(&qword_100446300, &qword_1002F6D90);
  v1454 = *(v1419 - 8);
  v493 = *(v1454 + 64);
  v494 = __chkstk_darwin(v1419);
  v1004 = &v952 - ((v495 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v494);
  v1151 = &v952 - v496;
  v1418 = sub_10000321C(&qword_100446308, &qword_1002F6D98);
  v1453 = *(v1418 - 8);
  v497 = *(v1453 + 64);
  v498 = __chkstk_darwin(v1418);
  v1003 = &v952 - ((v499 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v498);
  v1150 = &v952 - v500;
  v1417 = sub_10000321C(&qword_100446310, &qword_1002F6DA0);
  v1452 = *(v1417 - 8);
  v501 = *(v1452 + 64);
  v502 = __chkstk_darwin(v1417);
  v1002 = &v952 - ((v503 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v502);
  v1149 = &v952 - v504;
  v1416 = sub_10000321C(&qword_100446318, &qword_1002F6DA8);
  v1451 = *(v1416 - 8);
  v505 = *(v1451 + 64);
  v506 = __chkstk_darwin(v1416);
  v1001 = &v952 - ((v507 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v506);
  v1148 = &v952 - v508;
  v1415 = sub_10000321C(&qword_100446320, &qword_1002F6DB0);
  v1450 = *(v1415 - 8);
  v509 = *(v1450 + 64);
  v510 = __chkstk_darwin(v1415);
  v1000 = &v952 - ((v511 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v510);
  v1147 = &v952 - v512;
  v1414 = sub_10000321C(&qword_100446328, &qword_1002F6DB8);
  v1449 = *(v1414 - 8);
  v513 = *(v1449 + 64);
  v514 = __chkstk_darwin(v1414);
  v999 = &v952 - ((v515 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v514);
  v1146 = &v952 - v516;
  v1413 = sub_10000321C(&qword_100446330, &qword_1002F6DC0);
  v1448 = *(v1413 - 8);
  v517 = *(v1448 + 64);
  v518 = __chkstk_darwin(v1413);
  v998 = &v952 - ((v519 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v518);
  v1145 = &v952 - v520;
  v1412 = sub_10000321C(&qword_100446338, &qword_1002F6DC8);
  v1447 = *(v1412 - 8);
  v521 = *(v1447 + 64);
  v522 = __chkstk_darwin(v1412);
  v997 = &v952 - ((v523 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v522);
  v1144 = &v952 - v524;
  v1411 = sub_10000321C(&qword_100446340, &qword_1002F6DD0);
  v1446 = *(v1411 - 8);
  v525 = *(v1446 + 64);
  v526 = __chkstk_darwin(v1411);
  v996 = &v952 - ((v527 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v526);
  v1143 = &v952 - v528;
  v1410 = sub_10000321C(&qword_100446348, &qword_1002F6DD8);
  v1445 = *(v1410 - 8);
  v529 = *(v1445 + 64);
  v530 = __chkstk_darwin(v1410);
  v995 = &v952 - ((v531 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v530);
  v1142 = &v952 - v532;
  v1409 = sub_10000321C(&qword_100446350, &qword_1002F6DE0);
  v1444 = *(v1409 - 8);
  v533 = *(v1444 + 64);
  v534 = __chkstk_darwin(v1409);
  v994 = &v952 - ((v535 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v534);
  v1141 = &v952 - v536;
  v1408 = sub_10000321C(&qword_100446358, &qword_1002F6DE8);
  v1443 = *(v1408 - 8);
  v537 = *(v1443 + 64);
  v538 = __chkstk_darwin(v1408);
  v993 = &v952 - ((v539 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v538);
  v1140 = &v952 - v540;
  v1407 = sub_10000321C(&qword_100446360, &qword_1002F6DF0);
  v1442 = *(v1407 - 8);
  v541 = *(v1442 + 64);
  v542 = __chkstk_darwin(v1407);
  v992 = &v952 - ((v543 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v542);
  v1139 = &v952 - v544;
  v1406 = sub_10000321C(&qword_100446368, &qword_1002F6DF8);
  v1441 = *(v1406 - 8);
  v545 = *(v1441 + 64);
  v546 = __chkstk_darwin(v1406);
  v991 = &v952 - ((v547 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v546);
  v1138 = &v952 - v548;
  v1405 = sub_10000321C(&qword_100446370, &qword_1002F6E00);
  v1440 = *(v1405 - 8);
  v549 = *(v1440 + 64);
  v550 = __chkstk_darwin(v1405);
  v990 = &v952 - ((v551 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v550);
  v1137 = &v952 - v552;
  v1404 = sub_10000321C(&qword_100446378, &qword_1002F6E08);
  v1439 = *(v1404 - 8);
  v553 = *(v1439 + 64);
  v554 = __chkstk_darwin(v1404);
  v989 = &v952 - ((v555 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v554);
  v1136 = &v952 - v556;
  v1403 = sub_10000321C(&qword_100446380, &qword_1002F6E10);
  v1438 = *(v1403 - 8);
  v557 = *(v1438 + 64);
  v558 = __chkstk_darwin(v1403);
  v988 = &v952 - ((v559 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v558);
  v1135 = &v952 - v560;
  v1402 = sub_10000321C(&qword_100446388, &qword_1002F6E18);
  v1437 = *(v1402 - 8);
  v561 = *(v1437 + 64);
  v562 = __chkstk_darwin(v1402);
  v987 = &v952 - ((v563 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v562);
  v1134 = &v952 - v564;
  v1401 = sub_10000321C(&qword_100446390, &qword_1002F6E20);
  v1436 = *(v1401 - 8);
  v565 = *(v1436 + 64);
  v566 = __chkstk_darwin(v1401);
  v986 = &v952 - ((v567 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v566);
  v1133 = &v952 - v568;
  v1400 = sub_10000321C(&qword_100446398, &qword_1002F6E28);
  v1435 = *(v1400 - 8);
  v569 = *(v1435 + 64);
  v570 = __chkstk_darwin(v1400);
  v985 = &v952 - ((v571 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v570);
  v1132 = &v952 - v572;
  v1399 = sub_10000321C(&qword_1004463A0, &qword_1002F6E30);
  v1434 = *(v1399 - 8);
  v573 = *(v1434 + 64);
  v574 = __chkstk_darwin(v1399);
  v984 = &v952 - ((v575 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v574);
  v1131 = &v952 - v576;
  v1398 = sub_10000321C(&qword_1004463A8, &qword_1002F6E38);
  v1433 = *(v1398 - 8);
  v577 = *(v1433 + 64);
  v578 = __chkstk_darwin(v1398);
  v983 = &v952 - ((v579 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v578);
  v1130 = &v952 - v580;
  v1397 = sub_10000321C(&qword_1004463B0, &qword_1002F6E40);
  v1432 = *(v1397 - 8);
  v581 = *(v1432 + 64);
  v582 = __chkstk_darwin(v1397);
  v982 = &v952 - ((v583 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v582);
  v1129 = &v952 - v584;
  v1396 = sub_10000321C(&qword_1004463B8, &qword_1002F6E48);
  v1431 = *(v1396 - 8);
  v585 = *(v1431 + 64);
  v586 = __chkstk_darwin(v1396);
  v981 = &v952 - ((v587 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v586);
  v1128 = &v952 - v588;
  v1395 = sub_10000321C(&qword_1004463C0, &qword_1002F6E50);
  v1430 = *(v1395 - 8);
  v589 = v1430[8];
  v590 = __chkstk_darwin(v1395);
  v979 = &v952 - ((v591 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v590);
  v593 = (&v952 - v592);
  v1394 = sub_10000321C(&qword_1004463C8, &qword_1002F6E58);
  v1429 = *(v1394 - 8);
  v594 = v1429[8];
  v595 = __chkstk_darwin(v1394);
  v978 = &v952 - ((v596 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v595);
  v598 = &v952 - v597;
  v1393 = sub_10000321C(&qword_1004463D0, &qword_1002F6E60);
  v1428 = *(v1393 - 8);
  v599 = *(v1428 + 64);
  v600 = __chkstk_darwin(v1393);
  v977 = &v952 - ((v601 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v600);
  v966 = &v952 - v602;
  v1392 = sub_10000321C(&qword_1004463D8, &qword_1002F6E68);
  v1427 = *(v1392 - 8);
  v603 = v1427[8];
  v604 = __chkstk_darwin(v1392);
  v976 = &v952 - ((v605 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v604);
  v607 = &v952 - v606;
  v1391 = sub_10000321C(&qword_1004463E0, &qword_1002F6E70);
  v1426 = *(v1391 - 8);
  v608 = *(v1426 + 64);
  v609 = __chkstk_darwin(v1391);
  v975 = &v952 - ((v610 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v609);
  v965 = &v952 - v611;
  v1390 = sub_10000321C(&qword_1004463E8, &qword_1002F6E78);
  v974 = *(v1390 - 8);
  v612 = *(v974 + 64);
  v613 = __chkstk_darwin(v1390);
  v973 = &v952 - ((v614 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v613);
  v964 = &v952 - v615;
  v1389 = sub_10000321C(&qword_1004463F0, &qword_1002F6E80);
  v972 = *(v1389 - 8);
  v616 = *(v972 + 64);
  v617 = __chkstk_darwin(v1389);
  v971 = &v952 - ((v618 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v617);
  v620 = &v952 - v619;
  v1388 = sub_10000321C(&qword_1004463F8, &qword_1002F6E88);
  v970 = *(v1388 - 8);
  v621 = *(v970 + 64);
  v622 = __chkstk_darwin(v1388);
  v969 = &v952 - ((v623 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v622);
  v625 = &v952 - v624;
  v1387 = sub_10000321C(&qword_100446400, &qword_1002F6E90);
  v968 = *(v1387 - 8);
  v626 = v968[8];
  v627 = __chkstk_darwin(v1387);
  v967 = &v952 - ((v628 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v627);
  v630 = &v952 - v629;
  sub_1000A2D70();
  sub_1002D8AE0();
  sub_1000A2DEC();
  sub_1002D8AE0();
  sub_1000A2E68();
  sub_1002D8AE0();
  sub_1000A2EE4();
  sub_1002D8AE0();
  sub_1000A2F60();
  sub_1002D8AE0();
  sub_1000A2FDC();
  sub_1002D8AE0();
  sub_1000A3058();
  sub_1002D8AE0();
  sub_1000A30D4();
  sub_1002D8AE0();
  sub_1000A3150();
  sub_1002D8AE0();
  sub_1000A31CC();
  sub_1002D8AE0();
  sub_1000A3248();
  sub_1002D8AE0();
  sub_1000A32C4();
  sub_1002D8AE0();
  sub_1000A3340();
  v631 = v952;
  sub_1002D8AE0();
  sub_1000A3544();
  v632 = v953;
  sub_1002D8AE0();
  sub_1000A35C0();
  sub_1002D8AE0();
  sub_1000A363C();
  sub_1002D8AE0();
  sub_1000A3840();
  sub_1002D8AE0();
  sub_1000A38BC();
  sub_1002D8AE0();
  sub_1000A3938();
  sub_1002D8AE0();
  sub_1000A39B4();
  sub_1002D8AE0();
  sub_1000A3A30();
  sub_1002D8AE0();
  sub_1000A3AAC();
  sub_1002D8AE0();
  sub_1000A3B28();
  sub_1002D8AE0();
  sub_1000A3BA4();
  sub_1002D8AE0();
  sub_1000A3C20();
  sub_1002D8AE0();
  sub_1000A3C9C();
  sub_1002D8AE0();
  sub_1000A3D18();
  sub_1002D8AE0();
  sub_1000A3D94();
  sub_1002D8AE0();
  sub_1000A3E10();
  sub_1002D8AE0();
  sub_1000A3E8C();
  sub_1002D8AE0();
  sub_1000A4090();
  sub_1002D8AE0();
  sub_1000A410C();
  sub_1002D8AE0();
  sub_1000A4188();
  sub_1002D8AE0();
  sub_1000A4204();
  sub_1002D8AE0();
  sub_1000A4280();
  sub_1002D8AE0();
  sub_1000A42FC();
  sub_1002D8AE0();
  sub_1000A4378();
  sub_1002D8AE0();
  sub_1000A43F4();
  sub_1002D8AE0();
  sub_1000A4470();
  sub_1002D8AE0();
  sub_1000A44EC();
  sub_1002D8AE0();
  sub_1000A4568();
  sub_1002D8AE0();
  sub_1000A45E4();
  sub_1002D8AE0();
  sub_1000A4660();
  sub_1002D8AE0();
  sub_1000A46DC();
  sub_1002D8AE0();
  sub_1000A4758();
  sub_1002D8AE0();
  sub_1000A495C();
  sub_1002D8AE0();
  sub_1000A49D8();
  sub_1002D8AE0();
  sub_1000A4A54();
  sub_1002D8AE0();
  sub_1000A4AD0();
  sub_1002D8AE0();
  sub_1000A4B4C();
  sub_1002D8AE0();
  sub_1000A4BC8();
  sub_1002D8AE0();
  sub_1000A4C44();
  sub_1002D8AE0();
  sub_1000A4CC0();
  sub_1002D8AE0();
  sub_1000A4D3C();
  sub_1002D8AE0();
  sub_1000A4DB8();
  sub_1002D8AE0();
  sub_1000A4E34();
  sub_1002D8AE0();
  sub_1000A4EB0();
  sub_1002D8AE0();
  sub_1000A4F2C();
  sub_1002D8AE0();
  sub_1000A4FA8();
  sub_1002D8AE0();
  sub_1000A5024();
  sub_1002D8AE0();
  sub_1000A50A0();
  sub_1002D8AE0();
  sub_1000A511C();
  sub_1002D8AE0();
  sub_1000A5198();
  sub_1002D8AE0();
  sub_1000A5394();
  sub_1002D8AE0();
  sub_1000A5410();
  sub_1002D8AE0();
  sub_1000A548C();
  sub_1002D8AE0();
  sub_1000A5508();
  sub_1002D8AE0();
  sub_1000A5584();
  sub_1002D8AE0();
  sub_1000A5600();
  sub_1002D8AE0();
  sub_1000A567C();
  sub_1002D8AE0();
  sub_1000A56F8();
  sub_1002D8AE0();
  sub_1000A5774();
  sub_1002D8AE0();
  sub_1000A57F0();
  sub_1002D8AE0();
  sub_1000A586C();
  sub_1002D8AE0();
  sub_1000A58E8();
  sub_1002D8AE0();
  sub_1000A5964();
  sub_1002D8AE0();
  sub_1000A59E0();
  sub_1002D8AE0();
  sub_1000A5A5C();
  sub_1002D8AE0();
  sub_1000A5AD8();
  sub_1002D8AE0();
  sub_1000A5B54();
  sub_1002D8AE0();
  sub_1000A5BD0();
  sub_1002D8AE0();
  sub_1000A5C4C();
  sub_1002D8AE0();
  sub_1000A5CC8();
  sub_1002D8AE0();
  sub_1000A5D44();
  sub_1002D8AE0();
  sub_1000A5DC0();
  sub_1002D8AE0();
  sub_1000A5E3C();
  sub_1002D8AE0();
  sub_1000A5EB8();
  sub_1002D8AE0();
  sub_1000A5F34();
  sub_1002D8AE0();
  sub_1000A6138();
  sub_1002D8AE0();
  sub_1000A61B4();
  sub_1002D8AE0();
  sub_1000A6230();
  sub_1002D8AE0();
  sub_1000A6434();
  sub_1002D8AE0();
  sub_1000A64B0();
  sub_1002D8AE0();
  sub_1000A652C();
  sub_1002D8AE0();
  sub_1000A65A8();
  sub_1002D8AE0();
  sub_1000A67AC();
  sub_1002D8AE0();
  sub_1000A6828();
  sub_1002D8AE0();
  sub_1000A68A4();
  sub_1002D8AE0();
  sub_1000A6920();
  sub_1002D8AE0();
  sub_1000A699C();
  sub_1002D8AE0();
  sub_1000A6A18();
  sub_1002D8AE0();
  sub_1000A6A94();
  sub_1002D8AE0();
  sub_1000A6B10();
  sub_1002D8AE0();
  sub_1000A6B8C();
  sub_1002D8AE0();
  sub_1000A6C08();
  sub_1002D8AE0();
  sub_1000A6C84();
  sub_1002D8AE0();
  sub_1000A6D00();
  sub_1002D8AE0();
  sub_1000A7214();
  sub_1002D8AE0();
  sub_1000A754C();
  sub_1002D8AE0();
  sub_1000A75C8();
  sub_1002D8AE0();
  sub_1000A77CC();
  sub_1002D8AE0();
  sub_1000A7848();
  sub_1002D8AE0();
  sub_1000A78C4();
  sub_1002D8AE0();
  sub_1000A7940();
  sub_1002D8AE0();
  sub_1000A79BC();
  sub_1002D8AE0();
  sub_1000A7A38();
  sub_1002D8AE0();
  sub_1000A7AB4();
  sub_1002D8AE0();
  sub_1000A7B30();
  sub_1002D8AE0();
  sub_1000A7D34();
  sub_1002D8AE0();
  sub_1000A7DB0();
  sub_1002D8AE0();
  sub_1000A7E2C();
  sub_1002D8AE0();
  sub_1000A8030();
  sub_1002D8AE0();
  sub_1000A83BC();
  sub_1002D8AE0();
  sub_1000A8748();
  sub_1002D8AE0();
  sub_1000A87C4();
  sub_1002D8AE0();
  sub_1000A8840();
  sub_1002D8AE0();
  sub_1000A8A44();
  sub_1002D8AE0();
  sub_1000A8AC0();
  sub_1002D8AE0();
  sub_1000A8B3C();
  sub_1002D8AE0();
  sub_1000A8BB8();
  sub_1002D8AE0();
  sub_1000A90CC();
  sub_1002D8AE0();
  sub_1000A9148();
  sub_1002D8AE0();
  sub_1000A91C4();
  sub_1002D8AE0();
  sub_1000A9240();
  sub_1002D8AE0();
  sub_1000A92BC();
  sub_1002D8AE0();
  sub_1000A9338();
  sub_1002D8AE0();
  sub_1000A93B4();
  sub_1002D8AE0();
  sub_1000A9430();
  sub_1002D8AE0();
  sub_1000A94AC();
  sub_1002D8AE0();
  sub_1000A9528();
  sub_1002D8AE0();
  sub_1000A95A4();
  sub_1002D8AE0();
  sub_1000A9620();
  sub_1002D8AE0();
  sub_1000A969C();
  sub_1002D8AE0();
  sub_1000A9718();
  sub_1002D8AE0();
  sub_1000A9794();
  sub_1002D8AE0();
  sub_1000A9810();
  sub_1002D8AE0();
  sub_1000A988C();
  sub_1002D8AE0();
  sub_1000A9908();
  sub_1002D8AE0();
  sub_1000A9984();
  sub_1002D8AE0();
  sub_1000A9A00();
  sub_1002D8AE0();
  sub_1000A9A7C();
  sub_1002D8AE0();
  sub_1000A9C80();
  sub_1002D8AE0();
  sub_1000A9CFC();
  sub_1002D8AE0();
  sub_1000A9D78();
  sub_1002D8AE0();
  sub_10002BFA0(v980);
  v633 = v967;
  v634 = v968[2];
  v954 = v630;
  v634(v967, v630, v1387);
  v1575[0] = v633;
  v635 = v969;
  v636 = *(v970 + 16);
  v955 = v625;
  v636(v969, v625, v1388);
  v1575[1] = v635;
  v637 = v971;
  v638 = *(v972 + 16);
  v956 = v620;
  v638(v971, v620, v1389);
  v1575[2] = v637;
  v639 = v973;
  (*(v974 + 16))(v973, v964, v1390);
  v1575[3] = v639;
  v640 = v975;
  (*(v1426 + 16))(v975, v965, v1391);
  v1575[4] = v640;
  v641 = v1427[2];
  v642 = v976;
  v957 = v607;
  v641(v976, v607, v1392);
  v1575[5] = v642;
  v643 = v977;
  (*(v1428 + 16))(v977, v966, v1393);
  v1575[6] = v643;
  v644 = v1429[2];
  v645 = v978;
  v958 = v598;
  v644(v978, v598, v1394);
  v1575[7] = v645;
  v646 = v1430[2];
  v647 = v979;
  v959 = v593;
  v646(v979, v593, v1395);
  v1575[8] = v647;
  v648 = v981;
  (*(v1431 + 16))(v981, v1128, v1396);
  v1575[9] = v648;
  v649 = v982;
  (*(v1432 + 16))(v982, v1129, v1397);
  v1575[10] = v649;
  v650 = v983;
  (*(v1433 + 16))(v983, v1130, v1398);
  v1575[11] = v650;
  v651 = v984;
  (*(v1434 + 16))(v984, v1131, v1399);
  v1575[12] = v651;
  v652 = v985;
  (*(v1435 + 16))(v985, v1132, v1400);
  v1575[14] = v652;
  v653 = v986;
  (*(v1436 + 16))(v986, v1133, v1401);
  v1575[15] = v653;
  v654 = v987;
  (*(v1437 + 16))(v987, v1134, v1402);
  v1575[16] = v654;
  v655 = v988;
  (*(v1438 + 16))(v988, v1135, v1403);
  v1575[18] = v655;
  v656 = v989;
  (*(v1439 + 16))(v989, v1136, v1404);
  v1575[19] = v656;
  v657 = v990;
  (*(v1440 + 16))(v990, v1137, v1405);
  v1575[20] = v657;
  v658 = v991;
  (*(v1441 + 16))(v991, v1138, v1406);
  v1575[21] = v658;
  v659 = v992;
  (*(v1442 + 16))(v992, v1139, v1407);
  v1575[22] = v659;
  v660 = v993;
  (*(v1443 + 16))(v993, v1140, v1408);
  v1575[23] = v660;
  v661 = v994;
  (*(v1444 + 16))(v994, v1141, v1409);
  v1575[24] = v661;
  v662 = v995;
  (*(v1445 + 16))(v995, v1142, v1410);
  v1575[25] = v662;
  v663 = v996;
  (*(v1446 + 16))(v996, v1143, v1411);
  v1575[26] = v663;
  v664 = v997;
  (*(v1447 + 16))(v997, v1144, v1412);
  v1575[27] = v664;
  v665 = v998;
  (*(v1448 + 16))(v998, v1145, v1413);
  v1575[28] = v665;
  v666 = v999;
  (*(v1449 + 16))(v999, v1146, v1414);
  v1575[29] = v666;
  v667 = v1000;
  (*(v1450 + 16))(v1000, v1147, v1415);
  v1575[30] = v667;
  v668 = v1001;
  (*(v1451 + 16))(v1001, v1148, v1416);
  v1575[31] = v668;
  v669 = v1002;
  (*(v1452 + 16))(v1002, v1149, v1417);
  v1575[33] = v669;
  v670 = v1003;
  (*(v1453 + 16))(v1003, v1150, v1418);
  v1575[34] = v670;
  v671 = v1004;
  (*(v1454 + 16))(v1004, v1151, v1419);
  v1575[35] = v671;
  v672 = v1005;
  (*(v1455 + 16))(v1005, v1152, v1420);
  v1575[36] = v672;
  v673 = v1006;
  (*(v1456 + 16))(v1006, v1153, v1421);
  v1575[37] = v673;
  v674 = v1007;
  (*(v1457 + 16))(v1007, v1154, v1422);
  v1575[38] = v674;
  v675 = v1008;
  (*(v1458 + 16))(v1008, v1155, v1423);
  v1575[39] = v675;
  v676 = v1009;
  (*(v1459 + 16))(v1009, v1156, v1424);
  v1575[40] = v676;
  v677 = v1010;
  (*(v1460 + 16))(v1010, v1157, v1425);
  v1575[41] = v677;
  v678 = v1011;
  (*(v1461 + 16))(v1011, v1158, v1328);
  v1575[42] = v678;
  v679 = v1012;
  (*(v1462 + 16))(v1012, v1159, v1329);
  v1575[43] = v679;
  v680 = v1013;
  (*(v1463 + 16))(v1013, v1160, v1330);
  v1575[44] = v680;
  v681 = v1014;
  (*(v1464 + 16))(v1014, v1161, v1331);
  v1575[45] = v681;
  v682 = v1015;
  (*(v1465 + 16))(v1015, v1162, v1332);
  v1575[46] = v682;
  v683 = v1016;
  (*(v1466 + 16))(v1016, v1163, v1333);
  v1575[47] = v683;
  v684 = v1017;
  (*(v1467 + 16))(v1017, v1164, v1334);
  v1575[49] = v684;
  v685 = v1018;
  (*(v1468 + 16))(v1018, v1165, v1335);
  v1575[50] = v685;
  v686 = v1019;
  (*(v1469 + 16))(v1019, v1166, v1336);
  v1575[51] = v686;
  v687 = v1020;
  (*(v1470 + 16))(v1020, v1167, v1337);
  v1575[52] = v687;
  v688 = v1021;
  (*(v1471 + 16))(v1021, v1168, v1338);
  v1575[53] = v688;
  v689 = v1022;
  (*(v1472 + 16))(v1022, v1169, v1339);
  v1575[54] = v689;
  v690 = v1023;
  (*(v1473 + 16))(v1023, v1170, v1340);
  v1575[55] = v690;
  v691 = v1024;
  (*(v1474 + 16))(v1024, v1171, v1341);
  v1575[56] = v691;
  v692 = v1025;
  (*(v1475 + 16))(v1025, v1172, v1342);
  v1575[57] = v692;
  v693 = v1026;
  (*(v1476 + 16))(v1026, v1173, v1343);
  v1575[58] = v693;
  v694 = v1027;
  (*(v1477 + 16))(v1027, v1174, v1344);
  v1575[59] = v694;
  v695 = v1028;
  (*(v1478 + 16))(v1028, v1175, v1345);
  v1575[60] = v695;
  v696 = v1029;
  (*(v1479 + 16))(v1029, v1176, v1346);
  v1575[61] = v696;
  v697 = v1030;
  (*(v1480 + 16))(v1030, v1177, v1347);
  v1575[62] = v697;
  v698 = v1031;
  (*(v1481 + 16))(v1031, v1178, v1348);
  v1575[63] = v698;
  v699 = v1032;
  (*(v1482 + 16))(v1032, v1179, v1349);
  v1575[64] = v699;
  v700 = v1033;
  (*(v1483 + 16))(v1033, v1180, v1350);
  v1575[65] = v700;
  v701 = v1034;
  (*(v1484 + 16))(v1034, v1181, v1351);
  v1575[66] = v701;
  v702 = v1035;
  (*(v1485 + 16))(v1035, v1182, v1352);
  v1575[68] = v702;
  v703 = v1036;
  (*(v1486 + 16))(v1036, v1183, v1353);
  v1575[69] = v703;
  v704 = v1037;
  (*(v1487 + 16))(v1037, v1184, v1354);
  v1575[70] = v704;
  v705 = v1038;
  (*(v1488 + 16))(v1038, v1185, v1355);
  v1575[71] = v705;
  v706 = v1039;
  (*(v1489 + 16))(v1039, v1186, v1356);
  v1575[72] = v706;
  v707 = v1040;
  (*(v1490 + 16))(v1040, v1187, v1357);
  v1575[73] = v707;
  v708 = v1041;
  (*(v1491 + 16))(v1041, v1188, v1358);
  v1575[74] = v708;
  v709 = v1042;
  (*(v1492 + 16))(v1042, v1189, v1359);
  v1575[75] = v709;
  v710 = v1043;
  (*(v1493 + 16))(v1043, v1190, v1360);
  v1575[76] = v710;
  v711 = v1044;
  (*(v1494 + 16))(v1044, v1191, v1361);
  v1575[77] = v711;
  v712 = v1045;
  (*(v1495 + 16))(v1045, v1192, v1362);
  v1575[78] = v712;
  v713 = v1046;
  (*(v1496 + 16))(v1046, v1193, v1363);
  v1575[79] = v713;
  v714 = v1047;
  (*(v1497 + 16))(v1047, v1194, v1364);
  v1575[80] = v714;
  v715 = v1048;
  (*(v1498 + 16))(v1048, v1195, v1365);
  v1575[81] = v715;
  v716 = v1049;
  (*(v1499 + 16))(v1049, v1196, v1366);
  v1575[82] = v716;
  v717 = v1050;
  (*(v1500 + 16))(v1050, v1197, v1367);
  v1575[83] = v717;
  v718 = v1051;
  (*(v1501 + 16))(v1051, v1198, v1368);
  v1575[84] = v718;
  v719 = v1052;
  (*(v1502 + 16))(v1052, v1199, v1369);
  v1575[85] = v719;
  v720 = v1053;
  (*(v1503 + 16))(v1053, v1200, v1370);
  v1575[86] = v720;
  v721 = v1054;
  (*(v1504 + 16))(v1054, v1201, v1371);
  v1575[87] = v721;
  v722 = v1055;
  (*(v1505 + 16))(v1055, v1202, v1372);
  v1575[88] = v722;
  v723 = v1056;
  (*(v1506 + 16))(v1056, v1203, v1373);
  v1575[89] = v723;
  v724 = v1057;
  (*(v1507 + 16))(v1057, v1204, v1374);
  v1575[90] = v724;
  v725 = v1058;
  (*(v1508 + 16))(v1058, v1205, v1375);
  v1575[91] = v725;
  v726 = v1059;
  (*(v1509 + 16))(v1059, v1206, v1376);
  v1575[92] = v726;
  v727 = v1060;
  (*(v1510 + 16))(v1060, v1207, v1377);
  v1575[94] = v727;
  v728 = v1061;
  (*(v1511 + 16))(v1061, v1208, v1378);
  v1575[95] = v728;
  v729 = v1062;
  (*(v1512 + 16))(v1062, v1209, v1379);
  v1575[96] = v729;
  v730 = v1063;
  (*(v1513 + 16))(v1063, v1210, v1380);
  v1575[98] = v730;
  v731 = v1064;
  (*(v1514 + 16))(v1064, v1211, v1381);
  v1575[99] = v731;
  v732 = v1065;
  (*(v1515 + 16))(v1065, v1212, v1382);
  v1575[100] = v732;
  v733 = v1066;
  (*(v1516 + 16))(v1066, v1213, v1383);
  v1575[101] = v733;
  v734 = v1067;
  (*(v1517 + 16))(v1067, v1214, v1384);
  v1575[103] = v734;
  v735 = v1068;
  (*(v1518 + 16))(v1068, v1215, v1385);
  v1575[104] = v735;
  v736 = v1069;
  (*(v1519 + 16))(v1069, v1216, v1386);
  v1575[105] = v736;
  v737 = v1070;
  (*(v1520 + 16))(v1070, v1217, v1280);
  v1575[106] = v737;
  v738 = v1071;
  (*(v1521 + 16))(v1071, v1218, v1281);
  v1575[107] = v738;
  v739 = v1072;
  (*(v1522 + 16))(v1072, v1219, v1282);
  v1575[108] = v739;
  v740 = v1073;
  (*(v1523 + 16))(v1073, v1220, v1283);
  v1575[109] = v740;
  v741 = v1074;
  (*(v1524 + 16))(v1074, v1221, v1284);
  v1575[110] = v741;
  v742 = v1075;
  (*(v1525 + 16))(v1075, v1222, v1285);
  v1575[111] = v742;
  v743 = v1076;
  (*(v1526 + 16))(v1076, v1223, v1286);
  v1575[112] = v743;
  v744 = v1077;
  (*(v1527 + 16))(v1077, v1224, v1287);
  v1575[113] = v744;
  v745 = v1078;
  (*(v1528 + 16))(v1078, v1225, v1288);
  v1575[114] = v745;
  v746 = v1079;
  (*(v1529 + 16))(v1079, v1226, v1289);
  v1575[118] = v746;
  v747 = v1080;
  (*(v1530 + 16))(v1080, v1227, v1290);
  v1575[121] = v747;
  v748 = v1081;
  (*(v1531 + 16))(v1081, v1228, v1291);
  v1575[122] = v748;
  v749 = v1082;
  (*(v1532 + 16))(v1082, v1229, v1292);
  v1575[124] = v749;
  v750 = v1083;
  (*(v1533 + 16))(v1083, v1230, v1293);
  v1575[125] = v750;
  v751 = v1084;
  (*(v1534 + 16))(v1084, v1231, v1294);
  v1575[126] = v751;
  v752 = v1085;
  (*(v1535 + 16))(v1085, v1232, v1295);
  v1575[127] = v752;
  v753 = v1086;
  (*(v1536 + 16))(v1086, v1233, v1296);
  v1575[128] = v753;
  v754 = v1087;
  (*(v1537 + 16))(v1087, v1234, v1297);
  v1575[129] = v754;
  v755 = v1088;
  (*(v1538 + 16))(v1088, v1235, v1298);
  v1575[130] = v755;
  v756 = v1089;
  (*(v1539 + 16))(v1089, v1236, v1299);
  v1575[131] = v756;
  v757 = v1090;
  (*(v1540 + 16))(v1090, v1237, v1300);
  v1575[133] = v757;
  v758 = v1091;
  (*(v1541 + 16))(v1091, v1238, v1301);
  v1575[134] = v758;
  v759 = v1093;
  (*(v1542 + 16))(v1093, v1239, v1302);
  v1575[135] = v759;
  v760 = v1094;
  (*(v1543 + 16))(v1094, v1240, v1303);
  v1575[137] = v760;
  v761 = v1095;
  (*(v1544 + 16))(v1095, v1241, v1304);
  v1575[140] = v761;
  v762 = v1096;
  (*(v1545 + 16))(v1096, v1242, v1305);
  v1575[143] = v762;
  v763 = v1097;
  (*(v1546 + 16))(v1097, v1243, v1306);
  v1575[144] = v763;
  v764 = v1098;
  (*(v1547 + 16))(v1098, v1244, v1307);
  v1575[145] = v764;
  v765 = v1099;
  (*(v1548 + 16))(v1099, v1245, v1308);
  v1575[147] = v765;
  v766 = v1100;
  (*(v1549 + 16))(v1100, v1246, v1309);
  v1575[148] = v766;
  v767 = v1101;
  (*(v1550 + 16))(v1101, v1247, v1310);
  v1575[149] = v767;
  v768 = v1102;
  (*(v1551 + 16))(v1102, v1248, v1311);
  v1575[150] = v768;
  v769 = v1103;
  (*(v1552 + 16))(v1103, v1249, v1312);
  v1575[154] = v769;
  v770 = v1104;
  (*(v1553 + 16))(v1104, v1250, v1313);
  v1575[155] = v770;
  v771 = v1105;
  (*(v1554 + 16))(v1105, v1251, v1314);
  v1575[156] = v771;
  v772 = v1106;
  (*(v1555 + 16))(v1106, v1252, v1315);
  v1575[157] = v772;
  v773 = v1107;
  (*(v1556 + 16))(v1107, v1253, v1316);
  v1575[158] = v773;
  v774 = v1108;
  (*(v1557 + 16))(v1108, v1254, v1317);
  v1575[159] = v774;
  v775 = v1109;
  (*(v1558 + 16))(v1109, v1255, v1318);
  v1575[160] = v775;
  v776 = v1110;
  (*(v1559 + 16))(v1110, v1256, v1319);
  v1575[161] = v776;
  v777 = v1111;
  (*(v1560 + 16))(v1111, v1257, v1320);
  v1575[162] = v777;
  v778 = v1112;
  (*(v1561 + 16))(v1112, v1258, v1321);
  v1575[163] = v778;
  v779 = v1113;
  (*(v1562 + 16))(v1113, v1259, v1322);
  v1575[164] = v779;
  v780 = v1114;
  (*(v1563 + 16))(v1114, v1260, v1323);
  v1575[165] = v780;
  v781 = v1115;
  (*(v1564 + 16))(v1115, v1261, v1324);
  v1575[166] = v781;
  v782 = v1116;
  (*(v1565 + 16))(v1116, v1262, v1325);
  v1575[167] = v782;
  v783 = v1117;
  (*(v1566 + 16))(v1117, v1263, v1326);
  v1575[168] = v783;
  v784 = v1118;
  (*(v1567 + 16))(v1118, v1264, v1327);
  v1575[169] = v784;
  v785 = v1119;
  (*(v1568 + 16))(v1119, v1265, v1273);
  v1575[170] = v785;
  v786 = v1120;
  (*(v1569 + 16))(v1120, v1266, v1274);
  v1575[171] = v786;
  v787 = v1121;
  (*(v1570 + 16))(v1121, v1267, v1275);
  v1575[172] = v787;
  v788 = v1122;
  (*(v1571 + 16))(v1122, v1268, v1276);
  v1575[173] = v788;
  v789 = v1123;
  (*(v1572 + 16))(v1123, v1269, v1277);
  v1575[174] = v789;
  v790 = v1124;
  (*(v1573 + 16))(v1124, v1270, v1278);
  v1575[176] = v790;
  v791 = v1125;
  (*(v1574 + 16))(v1125, v1271, v1279);
  v1575[177] = v791;
  v792 = v1126;
  v793 = v960;
  (*(v1092 + 16))(v1126, v1272);
  v1575[178] = v792;
  v794 = v961;
  v795 = v1127;
  v796 = v980;
  v797 = v962;
  (v961[2])(v1127);
  v798 = 0;
  v1575[187] = v795;
  v799 = 32;
  do
  {
    switch(v798)
    {
      case 0:
        sub_10002B6E4(&qword_100446408, &qword_100446400, &qword_1002F6E90);
        v800 = v1387;
        break;
      case 1:
        sub_10002B6E4(&qword_100446410, &qword_1004463F8, &qword_1002F6E88);
        v800 = v1388;
        break;
      case 2:
        sub_10002B6E4(&qword_100446418, &qword_1004463F0, &qword_1002F6E80);
        v800 = v1389;
        break;
      case 3:
        sub_10002B6E4(&qword_100446420, &qword_1004463E8, &qword_1002F6E78);
        v800 = v1390;
        break;
      case 4:
        sub_10002B6E4(&qword_100446428, &qword_1004463E0, &qword_1002F6E70);
        v800 = v1391;
        break;
      case 5:
        sub_10002B6E4(&qword_100446430, &qword_1004463D8, &qword_1002F6E68);
        v800 = v1392;
        break;
      case 6:
        sub_10002B6E4(&qword_100446438, &qword_1004463D0, &qword_1002F6E60);
        v800 = v1393;
        break;
      case 7:
        sub_10002B6E4(&qword_100446440, &qword_1004463C8, &qword_1002F6E58);
        v800 = v1394;
        break;
      case 8:
        sub_10002B6E4(&qword_100446448, &qword_1004463C0, &qword_1002F6E50);
        v800 = v1395;
        break;
      case 9:
        sub_10002B6E4(&qword_100446450, &qword_1004463B8, &qword_1002F6E48);
        v800 = v1396;
        break;
      case 10:
        sub_10002B6E4(&qword_100446458, &qword_1004463B0, &qword_1002F6E40);
        v800 = v1397;
        break;
      case 11:
        sub_10002B6E4(&qword_100446460, &qword_1004463A8, &qword_1002F6E38);
        v800 = v1398;
        break;
      case 12:
        sub_10002B6E4(&qword_100446468, &qword_1004463A0, &qword_1002F6E30);
        v800 = v1399;
        break;
      case 13:
        sub_1000A34C8();
        v800 = &type metadata for AccessibilityBackgroundSoundsSoundSelectorWidget;
        break;
      case 14:
        sub_10002B6E4(&qword_100446470, &qword_100446398, &qword_1002F6E28);
        v800 = v1400;
        break;
      case 15:
        sub_10002B6E4(&qword_100446478, &qword_100446390, &qword_1002F6E20);
        v800 = v1401;
        break;
      case 16:
        sub_10002B6E4(&qword_100446480, &qword_100446388, &qword_1002F6E18);
        v800 = v1402;
        break;
      case 17:
        sub_1000A37C4();
        v800 = &type metadata for AccessibilityVoiceOverBrailleStatusCellsPositionWidget;
        break;
      case 18:
        sub_10002B6E4(&qword_100446488, &qword_100446380, &qword_1002F6E10);
        v800 = v1403;
        break;
      case 19:
        sub_10002B6E4(&qword_100446490, &qword_100446378, &qword_1002F6E08);
        v800 = v1404;
        break;
      case 20:
        sub_10002B6E4(&qword_100446498, &qword_100446370, &qword_1002F6E00);
        v800 = v1405;
        break;
      case 21:
        sub_10002B6E4(&qword_1004464A0, &qword_100446368, &qword_1002F6DF8);
        v800 = v1406;
        break;
      case 22:
        sub_10002B6E4(&qword_1004464A8, &qword_100446360, &qword_1002F6DF0);
        v800 = v1407;
        break;
      case 23:
        sub_10002B6E4(&qword_1004464B0, &qword_100446358, &qword_1002F6DE8);
        v800 = v1408;
        break;
      case 24:
        sub_10002B6E4(&qword_1004464B8, &qword_100446350, &qword_1002F6DE0);
        v800 = v1409;
        break;
      case 25:
        sub_10002B6E4(&qword_1004464C0, &qword_100446348, &qword_1002F6DD8);
        v800 = v1410;
        break;
      case 26:
        sub_10002B6E4(&qword_1004464C8, &qword_100446340, &qword_1002F6DD0);
        v800 = v1411;
        break;
      case 27:
        sub_10002B6E4(&qword_1004464D0, &qword_100446338, &qword_1002F6DC8);
        v800 = v1412;
        break;
      case 28:
        sub_10002B6E4(&qword_1004464D8, &qword_100446330, &qword_1002F6DC0);
        v800 = v1413;
        break;
      case 29:
        sub_10002B6E4(&qword_1004464E0, &qword_100446328, &qword_1002F6DB8);
        v800 = v1414;
        break;
      case 30:
        sub_10002B6E4(&qword_1004464E8, &qword_100446320, &qword_1002F6DB0);
        v800 = v1415;
        break;
      case 31:
        sub_10002B6E4(&qword_1004464F0, &qword_100446318, &qword_1002F6DA8);
        v800 = v1416;
        break;
      case 32:
        sub_1000A4014();
        v800 = &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputModeAnnouncementsWidget;
        break;
      case 33:
        sub_10002B6E4(&qword_1004464F8, &qword_100446310, &qword_1002F6DA0);
        v800 = v1417;
        break;
      case 34:
        sub_10002B6E4(&qword_100446500, &qword_100446308, &qword_1002F6D98);
        v800 = v1418;
        break;
      case 35:
        sub_10002B6E4(&qword_100446508, &qword_100446300, &qword_1002F6D90);
        v800 = v1419;
        break;
      case 36:
        sub_10002B6E4(&qword_100446510, &qword_1004462F8, &qword_1002F6D88);
        v800 = v1420;
        break;
      case 37:
        sub_10002B6E4(&qword_100446518, &qword_1004462F0, &qword_1002F6D80);
        v800 = v1421;
        break;
      case 38:
        sub_10002B6E4(&qword_100446520, &qword_1004462E8, &qword_1002F6D78);
        v800 = v1422;
        break;
      case 39:
        sub_10002B6E4(&qword_100446528, &qword_1004462E0, &qword_1002F6D70);
        v800 = v1423;
        break;
      case 40:
        sub_10002B6E4(&qword_100446530, &qword_1004462D8, &qword_1002F6D68);
        v800 = v1424;
        break;
      case 41:
        sub_10002B6E4(&qword_100446538, &qword_1004462D0, &qword_1002F6D60);
        v800 = v1425;
        break;
      default:
        switch(v798)
        {
          case '*':
            sub_10002B6E4(&qword_100446540, &qword_1004462C8, &qword_1002F6D58);
            v800 = v1328;
            break;
          case '+':
            sub_10002B6E4(&qword_100446548, &qword_1004462C0, &qword_1002F6D50);
            v800 = v1329;
            break;
          case ',':
            sub_10002B6E4(&qword_100446550, &qword_1004462B8, &qword_1002F6D48);
            v800 = v1330;
            break;
          case '-':
            sub_10002B6E4(&qword_100446558, &qword_1004462B0, &qword_1002F6D40);
            v800 = v1331;
            break;
          case '.':
            sub_10002B6E4(&qword_100446560, &qword_1004462A8, &qword_1002F6D38);
            v800 = v1332;
            break;
          case '/':
            sub_10002B6E4(&qword_100446568, &qword_1004462A0, &qword_1002F6D30);
            v800 = v1333;
            break;
          case '0':
            sub_1000A48E0();
            v800 = &type metadata for AccessibilityColorFiltersPickerWidget;
            break;
          case '1':
            sub_10002B6E4(&qword_100446570, &qword_100446298, &qword_1002F6D28);
            v800 = v1334;
            break;
          case '2':
            sub_10002B6E4(&qword_100446578, &qword_100446290, &qword_1002F6D20);
            v800 = v1335;
            break;
          case '3':
            sub_10002B6E4(&qword_100446580, &qword_100446288, &qword_1002F6D18);
            v800 = v1336;
            break;
          case '4':
            sub_10002B6E4(&qword_100446588, &qword_100446280, &qword_1002F6D10);
            v800 = v1337;
            break;
          case '5':
            sub_10002B6E4(&qword_100446590, &qword_100446278, &qword_1002F6D08);
            v800 = v1338;
            break;
          case '6':
            sub_10002B6E4(&qword_100446598, &qword_100446270, &qword_1002F6D00);
            v800 = v1339;
            break;
          case '7':
            sub_10002B6E4(&qword_1004465A0, &qword_100446268, &qword_1002F6CF8);
            v800 = v1340;
            break;
          case '8':
            sub_10002B6E4(&qword_1004465A8, &qword_100446260, &qword_1002F6CF0);
            v800 = v1341;
            break;
          case '9':
            sub_10002B6E4(&qword_1004465B0, &qword_100446258, &qword_1002F6CE8);
            v800 = v1342;
            break;
          case ':':
            sub_10002B6E4(&qword_1004465B8, &qword_100446250, &qword_1002F6CE0);
            v800 = v1343;
            break;
          case ';':
            sub_10002B6E4(&qword_1004465C0, &qword_100446248, &qword_1002F6CD8);
            v800 = v1344;
            break;
          case '<':
            sub_10002B6E4(&qword_1004465C8, &qword_100446240, &qword_1002F6CD0);
            v800 = v1345;
            break;
          case '=':
            sub_10002B6E4(&qword_1004465D0, &qword_100446238, &qword_1002F6CC8);
            v800 = v1346;
            break;
          case '>':
            sub_10002B6E4(&qword_1004465D8, &qword_100446230, &qword_1002F6CC0);
            v800 = v1347;
            break;
          case '?':
            sub_10002B6E4(&qword_1004465E0, &qword_100446228, &qword_1002F6CB8);
            v800 = v1348;
            break;
          case '@':
            sub_10002B6E4(&qword_1004465E8, &qword_100446220, &qword_1002F6CB0);
            v800 = v1349;
            break;
          case 'A':
            sub_10002B6E4(&qword_1004465F0, &qword_100446218, &qword_1002F6CA8);
            v800 = v1350;
            break;
          case 'B':
            sub_10002B6E4(&qword_1004465F8, &qword_100446210, &qword_1002F6CA0);
            v800 = v1351;
            break;
          case 'C':
            sub_1000A5318();
            v800 = &type metadata for AXFullKeyboardAccessFocusRingColorWidget;
            break;
          case 'D':
            sub_10002B6E4(&qword_100446600, &qword_100446208, &qword_1002F6C98);
            v800 = v1352;
            break;
          case 'E':
            sub_10002B6E4(&qword_100446608, &qword_100446200, &qword_1002F6C90);
            v800 = v1353;
            break;
          case 'F':
            sub_10002B6E4(&qword_100446610, &qword_1004461F8, &qword_1002F6C88);
            v800 = v1354;
            break;
          case 'G':
            sub_10002B6E4(&qword_100446618, &qword_1004461F0, &qword_1002F6C80);
            v800 = v1355;
            break;
          case 'H':
            sub_10002B6E4(&qword_100446620, &qword_1004461E8, &qword_1002F6C78);
            v800 = v1356;
            break;
          case 'I':
            sub_10002B6E4(&qword_100446628, &qword_1004461E0, &qword_1002F6C70);
            v800 = v1357;
            break;
          case 'J':
            sub_10002B6E4(&qword_100446630, &qword_1004461D8, &qword_1002F6C68);
            v800 = v1358;
            break;
          case 'K':
            sub_10002B6E4(&qword_100446638, &qword_1004461D0, &qword_1002F6C60);
            v800 = v1359;
            break;
          case 'L':
            sub_10002B6E4(&qword_100446640, &qword_1004461C8, &qword_1002F6C58);
            v800 = v1360;
            break;
          case 'M':
            sub_10002B6E4(&qword_100446648, &qword_1004461C0, &qword_1002F6C50);
            v800 = v1361;
            break;
          case 'N':
            sub_10002B6E4(&qword_100446650, &qword_1004461B8, &qword_1002F6C48);
            v800 = v1362;
            break;
          case 'O':
            sub_10002B6E4(&qword_100446658, &qword_1004461B0, &qword_1002F6C40);
            v800 = v1363;
            break;
          case 'P':
            sub_10002B6E4(&qword_100446660, &qword_1004461A8, &qword_1002F6C38);
            v800 = v1364;
            break;
          case 'Q':
            sub_10002B6E4(&qword_100446668, &qword_1004461A0, &qword_1002F6C30);
            v800 = v1365;
            break;
          case 'R':
            sub_10002B6E4(&qword_100446670, &qword_100446198, &qword_1002F6C28);
            v800 = v1366;
            break;
          case 'S':
            sub_10002B6E4(&qword_100446678, &qword_100446190, &qword_1002F6C20);
            v800 = v1367;
            break;
          case 'T':
            sub_10002B6E4(&qword_100446680, &qword_100446188, &qword_1002F6C18);
            v800 = v1368;
            break;
          case 'U':
            sub_10002B6E4(&qword_100446688, &qword_100446180, &qword_1002F6C10);
            v800 = v1369;
            break;
          case 'V':
            sub_10002B6E4(&qword_100446690, &qword_100446178, &qword_1002F6C08);
            v800 = v1370;
            break;
          case 'W':
            sub_10002B6E4(&qword_100446698, &qword_100446170, &qword_1002F6C00);
            v800 = v1371;
            break;
          case 'X':
            sub_10002B6E4(&qword_1004466A0, &qword_100446168, &qword_1002F6BF8);
            v800 = v1372;
            break;
          case 'Y':
            sub_10002B6E4(&qword_1004466A8, &qword_100446160, &qword_1002F6BF0);
            v800 = v1373;
            break;
          case 'Z':
            sub_10002B6E4(&qword_1004466B0, &qword_100446158, &qword_1002F6BE8);
            v800 = v1374;
            break;
          case '[':
            sub_10002B6E4(&qword_1004466B8, &qword_100446150, &qword_1002F6BE0);
            v800 = v1375;
            break;
          case '\\':
            sub_10002B6E4(&qword_1004466C0, &qword_100446148, &qword_1002F6BD8);
            v800 = v1376;
            break;
          case ']':
            sub_1000A60BC();
            v800 = &type metadata for AccessibilitySideButtonClickSpeedWidget;
            break;
          case '^':
            sub_10002B6E4(&qword_1004466C8, &qword_100446140, &qword_1002F6BD0);
            v800 = v1377;
            break;
          case '_':
            sub_10002B6E4(&qword_1004466D0, &qword_100446138, &qword_1002F6BC8);
            v800 = v1378;
            break;
            sub_10002B6E4(&qword_1004466D8, &qword_100446130, &qword_1002F6BC0);
            v800 = v1379;
            break;
          case 'a':
            sub_1000A63B8();
            v800 = &type metadata for AccessibilitySiriPauseTimeWidget;
            break;
          case 'b':
            sub_10002B6E4(&qword_1004466E0, &qword_100446128, &qword_1002F6BB8);
            v800 = v1380;
            break;
          case 'c':
            sub_10002B6E4(&qword_1004466E8, &qword_100446120, &qword_1002F6BB0);
            v800 = v1381;
            break;
          case 'd':
            sub_10002B6E4(&qword_1004466F0, &qword_100446118, &qword_1002F6BA8);
            v800 = v1382;
            break;
          case 'e':
            sub_10002B6E4(&qword_1004466F8, &qword_100446110, &qword_1002F6BA0);
            v800 = v1383;
            break;
          case 'f':
            sub_1000A6730();
            v800 = &type metadata for AccessibilitySiriSpokenResponsesWidget;
            break;
          case 'g':
            sub_10002B6E4(&qword_100446700, &qword_100446108, &qword_1002F6B98);
            v800 = v1384;
            break;
          case 'h':
            sub_10002B6E4(&qword_100446708, &qword_100446100, &qword_1002F6B90);
            v800 = v1385;
            break;
          case 'i':
            sub_10002B6E4(&qword_100446710, &qword_1004460F8, &qword_1002F6B88);
            v800 = v1386;
            break;
          default:
            switch(v798)
            {
              case 106:
                sub_10002B6E4(&qword_100446718, &qword_1004460F0, &qword_1002F6B80);
                v800 = v1280;
                break;
              case 107:
                sub_10002B6E4(&qword_100446720, &qword_1004460E8, &qword_1002F6B78);
                v800 = v1281;
                break;
              case 108:
                sub_10002B6E4(&qword_100446728, &qword_1004460E0, &qword_1002F6B70);
                v800 = v1282;
                break;
              case 109:
                sub_10002B6E4(&qword_100446730, &qword_1004460D8, &qword_1002F6B68);
                v800 = v1283;
                break;
              case 110:
                sub_10002B6E4(&qword_100446738, &qword_1004460D0, &qword_1002F6B60);
                v800 = v1284;
                break;
              case 111:
                sub_10002B6E4(&qword_100446740, &qword_1004460C8, &qword_1002F6B58);
                v800 = v1285;
                break;
              case 112:
                sub_10002B6E4(&qword_100446748, &qword_1004460C0, &qword_1002F6B50);
                v800 = v1286;
                break;
              case 113:
                sub_10002B6E4(&qword_100446750, &qword_1004460B8, &qword_1002F6B48);
                v800 = v1287;
                break;
              case 114:
                sub_10002B6E4(&qword_100446758, &qword_1004460B0, &qword_1002F6B40);
                v800 = v1288;
                break;
              case 115:
                sub_1000A6E88();
                v800 = &type metadata for AccessibilitySwitchControlModeWidget;
                break;
              case 116:
                sub_1000A7010();
                v800 = &type metadata for AccessibilitySwitchControlTapBehaviorWidget;
                break;
              case 117:
                sub_1000A7198();
                v800 = &type metadata for AccessibilitySwitchControlGlidingCursorSelectionModeWidget;
                break;
              case 118:
                sub_10002B6E4(&qword_100446760, &qword_1004460A8, &qword_1002F6B38);
                v800 = v1289;
                break;
              case 119:
                sub_1000A7348();
                v800 = &type metadata for AXSwitchControlCursorColorWidget;
                break;
              case 120:
                sub_1000A74D0();
                v800 = &type metadata for AccessibilitySwitchControlScanningStyleWidget;
                break;
              case 121:
                sub_10002B6E4(&qword_100446768, &qword_1004460A0, &qword_1002F6B30);
                v800 = v1290;
                break;
              case 122:
                sub_10002B6E4(&qword_100446770, &qword_100446098, &qword_1002F6B28);
                v800 = v1291;
                break;
              case 123:
                sub_1000A7750();
                v800 = &type metadata for AccessibilityHapticTouchDurationWidget;
                break;
              case 124:
                sub_10002B6E4(&qword_100446778, &qword_100446090, &qword_1002F6B20);
                v800 = v1292;
                break;
              case 125:
                sub_10002B6E4(&qword_100446780, &qword_100446088, &qword_1002F6B18);
                v800 = v1293;
                break;
              case 126:
                sub_10002B6E4(&qword_100446788, &qword_100446080, &qword_1002F6B10);
                v800 = v1294;
                break;
              case 127:
                sub_10002B6E4(&qword_100446790, &qword_100446078, &qword_1002F6B08);
                v800 = v1295;
                break;
              case 128:
                sub_10002B6E4(&qword_100446798, &qword_100446070, &qword_1002F6B00);
                v800 = v1296;
                break;
              case 129:
                sub_10002B6E4(&qword_1004467A0, &qword_100446068, &qword_1002F6AF8);
                v800 = v1297;
                break;
              case 130:
                sub_10002B6E4(&qword_1004467A8, &qword_100446060, &qword_1002F6AF0);
                v800 = v1298;
                break;
              case 131:
                sub_10002B6E4(&qword_1004467B0, &qword_100446058, &qword_1002F6AE8);
                v800 = v1299;
                break;
              case 132:
                sub_1000A7CB8();
                v800 = &type metadata for AccessibilityVoiceControlOverlayWidget;
                break;
              case 133:
                sub_10002B6E4(&qword_1004467B8, &qword_100446050, &qword_1002F6AE0);
                v800 = v1300;
                break;
              case 134:
                sub_10002B6E4(&qword_1004467C0, &qword_100446048, &qword_1002F6AD8);
                v800 = v1301;
                break;
              case 135:
                sub_10002B6E4(&qword_1004467C8, &qword_100446040, &qword_1002F6AD0);
                v800 = v1302;
                break;
              case 136:
                sub_1000A7FB4();
                v800 = &type metadata for AccessibilityVoiceOverNeuralFeedbackStyleWidget;
                break;
              case 137:
                sub_10002B6E4(&qword_1004467D0, &qword_100446038, &qword_1002F6AC8);
                v800 = v1303;
                break;
              case 138:
                sub_1000A81B8();
                v800 = &type metadata for AXVerbosityCapitalLettersWidget;
                break;
              case 139:
                sub_1000A8340();
                v800 = &type metadata for AXVerbosityDeletingTextWidget;
                break;
              case 140:
                sub_10002B6E4(&qword_1004467D8, &qword_100446030, &qword_1002F6AC0);
                v800 = v1304;
                break;
              case 141:
                sub_1000A8544();
                v800 = &type metadata for AccessibilityVoiceOverImageDescriptionsSensitiveContentOutputWidget;
                break;
              case 142:
                sub_1000A86CC();
                v800 = &type metadata for AXVerbosityNumberFeedbackWidget;
                break;
              case 143:
                sub_10002B6E4(&qword_1004467E0, &qword_100446028, &qword_1002F6AB8);
                v800 = v1305;
                break;
              case 144:
                sub_10002B6E4(&qword_1004467E8, &qword_100446020, &qword_1002F6AB0);
                v800 = v1306;
                break;
              case 145:
                sub_10002B6E4(&qword_1004467F0, &qword_100446018, &qword_1002F6AA8);
                v800 = v1307;
                break;
              case 146:
                sub_1000A89C8();
                v800 = &type metadata for AccessibilityVoiceOverNavigationStyleWidget;
                break;
              case 147:
                sub_10002B6E4(&qword_1004467F8, &qword_100446010, &qword_1002F6AA0);
                v800 = v1308;
                break;
              case 148:
                sub_10002B6E4(&qword_100446800, &qword_100446008, &qword_1002F6A98);
                v800 = v1309;
                break;
              case 149:
                sub_10002B6E4(&qword_100446808, &qword_100446000, &qword_1002F6A90);
                v800 = v1310;
                break;
              case 150:
                sub_10002B6E4(&qword_100446810, &qword_100445FF8, &qword_1002F6A88);
                v800 = v1311;
                break;
              case 151:
                sub_1000A8D40();
                v800 = &type metadata for AccessibilityVoiceOverAudioDuckingModeWidget;
                break;
              case 152:
                sub_1000A8EC8();
                v800 = &type metadata for AXTypingPhoneticFeedbackWidget;
                break;
              case 153:
                sub_1000A9050();
                v800 = &type metadata for AXTypingStyleWidget;
                break;
              case 154:
                sub_10002B6E4(&qword_100446818, &qword_100445FF0, &qword_1002F6A80);
                v800 = v1312;
                break;
              case 155:
                sub_10002B6E4(&qword_100446820, &qword_100445FE8, &qword_1002F6A78);
                v800 = v1313;
                break;
              case 156:
                sub_10002B6E4(&qword_100446828, &qword_100445FE0, &qword_1002F6A70);
                v800 = v1314;
                break;
              case 157:
                sub_10002B6E4(&qword_100446830, &qword_100445FD8, &qword_1002F6A68);
                v800 = v1315;
                break;
              case 158:
                sub_10002B6E4(&qword_100446838, &qword_100445FD0, &qword_1002F6A60);
                v800 = v1316;
                break;
              case 159:
                sub_10002B6E4(&qword_100446840, &qword_100445FC8, &qword_1002F6A58);
                v800 = v1317;
                break;
              case 160:
                sub_10002B6E4(&qword_100446848, &qword_100445FC0, &qword_1002F6A50);
                v800 = v1318;
                break;
              case 161:
                sub_10002B6E4(&qword_100446850, &qword_100445FB8, &qword_1002F6A48);
                v800 = v1319;
                break;
              case 162:
                sub_10002B6E4(&qword_100446858, &qword_100445FB0, &qword_1002F6A40);
                v800 = v1320;
                break;
              case 163:
                sub_10002B6E4(&qword_100446860, &qword_100445FA8, &qword_1002F6A38);
                v800 = v1321;
                break;
              case 164:
                sub_10002B6E4(&qword_100446868, &qword_100445FA0, &qword_1002F6A30);
                v800 = v1322;
                break;
              case 165:
                sub_10002B6E4(&qword_100446870, &qword_100445F98, &qword_1002F6A28);
                v800 = v1323;
                break;
              case 166:
                sub_10002B6E4(&qword_100446878, &qword_100445F90, &qword_1002F6A20);
                v800 = v1324;
                break;
              case 167:
                sub_10002B6E4(&qword_100446880, &qword_100445F88, &qword_1002F6A18);
                v800 = v1325;
                break;
              case 168:
                sub_10002B6E4(&qword_100446888, &qword_100445F80, &qword_1002F6A10);
                v800 = v1326;
                break;
              case 169:
                sub_10002B6E4(&qword_100446890, &qword_100445F78, &qword_1002F6A08);
                v800 = v1327;
                break;
              default:
                switch(v798)
                {
                  case 171:
                    sub_10002B6E4(&qword_1004468A0, &qword_100445F68, &qword_1002F69F8);
                    v800 = v1274;
                    break;
                  case 172:
                    sub_10002B6E4(&qword_1004468A8, &qword_100445F60, &qword_1002F69F0);
                    v800 = v1275;
                    break;
                  case 173:
                    sub_10002B6E4(&qword_1004468B0, &qword_100445F58, &qword_1002F69E8);
                    v800 = v1276;
                    break;
                  case 174:
                    sub_10002B6E4(&qword_1004468B8, &qword_100445F50, &qword_1002F69E0);
                    v800 = v1277;
                    break;
                  case 175:
                    sub_1000A9C04();
                    v800 = &type metadata for AccessibilityZoomPanningStyleWidget;
                    break;
                  case 176:
                    sub_10002B6E4(&qword_1004468C0, &qword_100445F48, &qword_1002F69D8);
                    v800 = v1278;
                    break;
                  case 177:
                    sub_10002B6E4(&qword_1004468C8, &qword_100445F40, &qword_1002F69D0);
                    v800 = v1279;
                    break;
                  case 178:
                    sub_10002B6E4(&qword_1004468D0, &qword_100445F38, &qword_1002F69C8);
                    v800 = v793;
                    break;
                  case 179:
                    sub_1000A9EF8();
                    v800 = &type metadata for AccessibilityZoomControllerSingleTapActionWidget;
                    break;
                  case 180:
                    sub_1000AA02C();
                    v800 = &type metadata for AccessibilityZoomControllerDoubleTapActionWidget;
                    break;
                  case 181:
                    sub_1000AA158();
                    v800 = &type metadata for AccessibilityZoomControllerTripleTapActionWidget;
                    break;
                  case 182:
                    sub_1000AA2E0();
                    v800 = &type metadata for AccessibilityZoomControllerColorWidget;
                    break;
                  case 183:
                    sub_1000AA468();
                    v800 = &type metadata for AccessibilityZoomLensModeWidget;
                    break;
                  case 184:
                    sub_1000AA5F0();
                    v800 = &type metadata for AccessibilityZoomLensModeiPadWidget;
                    break;
                  case 185:
                    sub_1000AA778();
                    v800 = &type metadata for AccessibilityZoomDockPositionWidget;
                    break;
                  case 186:
                    sub_1000AA900();
                    v800 = &type metadata for AccessibilityZoomLensEffectWidget;
                    break;
                  case 187:
                    sub_10002B6E4(&qword_1004468D8, &qword_100445F30, &qword_1002F69C0);
                    v800 = v797;
                    break;
                  default:
                    sub_10002B6E4(&qword_100446898, &qword_100445F70, &qword_1002F6A00);
                    v800 = v1273;
                    break;
                }

                break;
            }

            break;
        }

        break;
    }

    (*(v800[-1].Description + 2))(&v631[*(v632 + v799)], v1575[v798++]);
    v799 += 16;
  }

  while (v798 != 188);
  sub_1002D8A30();
  v963 = v794[1];
  v963(v796, v797);
  v1092 = *(v1092 + 8);
  (v1092)(v1272, v793);
  v801 = *(v1574 + 8);
  v1574 += 8;
  v1272 = v801;
  (v801)(v1271, v1279);
  v802 = *(v1573 + 8);
  v1573 += 8;
  v1271 = v802;
  (v802)(v1270, v1278);
  v803 = *(v1572 + 8);
  v1572 += 8;
  v1270 = v803;
  (v803)(v1269, v1277);
  v804 = *(v1571 + 8);
  v1571 += 8;
  v1269 = v804;
  (v804)(v1268, v1276);
  v805 = *(v1570 + 8);
  v1570 += 8;
  v1268 = v805;
  (v805)(v1267, v1275);
  v806 = *(v1569 + 8);
  v1569 += 8;
  v1267 = v806;
  (v806)(v1266, v1274);
  v807 = *(v1568 + 8);
  v1568 += 8;
  v1266 = v807;
  (v807)(v1265, v1273);
  v808 = *(v1567 + 8);
  v1567 += 8;
  v1265 = v808;
  (v808)(v1264, v1327);
  v809 = *(v1566 + 8);
  v1566 += 8;
  v1264 = v809;
  (v809)(v1263, v1326);
  v810 = *(v1565 + 8);
  v1565 += 8;
  v1263 = v810;
  (v810)(v1262, v1325);
  v811 = *(v1564 + 8);
  v1564 += 8;
  v1262 = v811;
  (v811)(v1261, v1324);
  v812 = *(v1563 + 8);
  v1563 += 8;
  v1261 = v812;
  (v812)(v1260, v1323);
  v813 = *(v1562 + 8);
  v1562 += 8;
  v1260 = v813;
  (v813)(v1259, v1322);
  v814 = *(v1561 + 8);
  v1561 += 8;
  v1259 = v814;
  (v814)(v1258, v1321);
  v815 = *(v1560 + 8);
  v1560 += 8;
  v1258 = v815;
  (v815)(v1257, v1320);
  v816 = *(v1559 + 8);
  v1559 += 8;
  v1257 = v816;
  (v816)(v1256, v1319);
  v817 = *(v1558 + 8);
  v1558 += 8;
  v1256 = v817;
  (v817)(v1255, v1318);
  v818 = *(v1557 + 8);
  v1557 += 8;
  v1255 = v818;
  (v818)(v1254, v1317);
  v819 = *(v1556 + 8);
  v1556 += 8;
  v1254 = v819;
  (v819)(v1253, v1316);
  v820 = *(v1555 + 8);
  v1555 += 8;
  v1253 = v820;
  (v820)(v1252, v1315);
  v821 = *(v1554 + 8);
  v1554 += 8;
  v1252 = v821;
  (v821)(v1251, v1314);
  v822 = *(v1553 + 8);
  v1553 += 8;
  v1251 = v822;
  (v822)(v1250, v1313);
  v823 = *(v1552 + 8);
  v1552 += 8;
  v1250 = v823;
  (v823)(v1249, v1312);
  v824 = *(v1551 + 8);
  v1551 += 8;
  v1249 = v824;
  (v824)(v1248, v1311);
  v825 = *(v1550 + 8);
  v1550 += 8;
  v1248 = v825;
  (v825)(v1247, v1310);
  v826 = *(v1549 + 8);
  v1549 += 8;
  v1247 = v826;
  (v826)(v1246, v1309);
  v827 = *(v1548 + 8);
  v1548 += 8;
  v1246 = v827;
  (v827)(v1245, v1308);
  v828 = *(v1547 + 8);
  v1547 += 8;
  v1245 = v828;
  (v828)(v1244, v1307);
  v829 = *(v1546 + 8);
  v1546 += 8;
  v1244 = v829;
  (v829)(v1243, v1306);
  v830 = *(v1545 + 8);
  v1545 += 8;
  v1243 = v830;
  (v830)(v1242, v1305);
  v831 = *(v1544 + 8);
  v1544 += 8;
  v1242 = v831;
  (v831)(v1241, v1304);
  v832 = *(v1543 + 8);
  v1543 += 8;
  v1241 = v832;
  (v832)(v1240, v1303);
  v833 = *(v1542 + 8);
  v1542 += 8;
  v1240 = v833;
  (v833)(v1239, v1302);
  v834 = *(v1541 + 8);
  v1541 += 8;
  v1239 = v834;
  (v834)(v1238, v1301);
  v835 = *(v1540 + 8);
  v1540 += 8;
  v1238 = v835;
  (v835)(v1237, v1300);
  v836 = *(v1539 + 8);
  v1539 += 8;
  v1237 = v836;
  (v836)(v1236, v1299);
  v837 = *(v1538 + 8);
  v1538 += 8;
  v1236 = v837;
  (v837)(v1235, v1298);
  v838 = *(v1537 + 8);
  v1537 += 8;
  v1235 = v838;
  (v838)(v1234, v1297);
  v839 = *(v1536 + 8);
  v1536 += 8;
  v1234 = v839;
  (v839)(v1233, v1296);
  v840 = *(v1535 + 8);
  v1535 += 8;
  v1233 = v840;
  (v840)(v1232, v1295);
  v841 = *(v1534 + 8);
  v1534 += 8;
  v1232 = v841;
  (v841)(v1231, v1294);
  v842 = *(v1533 + 8);
  v1533 += 8;
  v1231 = v842;
  (v842)(v1230, v1293);
  v843 = *(v1532 + 8);
  v1532 += 8;
  v1230 = v843;
  (v843)(v1229, v1292);
  v844 = *(v1531 + 8);
  v1531 += 8;
  v1229 = v844;
  (v844)(v1228, v1291);
  v845 = *(v1530 + 8);
  v1530 += 8;
  v1228 = v845;
  (v845)(v1227, v1290);
  v846 = *(v1529 + 8);
  v1529 += 8;
  v1227 = v846;
  (v846)(v1226, v1289);
  v847 = *(v1528 + 8);
  v1528 += 8;
  v1226 = v847;
  (v847)(v1225, v1288);
  v848 = *(v1527 + 8);
  v1527 += 8;
  v1225 = v848;
  (v848)(v1224, v1287);
  v849 = *(v1526 + 8);
  v1526 += 8;
  v1224 = v849;
  (v849)(v1223, v1286);
  v850 = *(v1525 + 8);
  v1525 += 8;
  v1223 = v850;
  (v850)(v1222, v1285);
  v851 = *(v1524 + 8);
  v1524 += 8;
  v1222 = v851;
  (v851)(v1221, v1284);
  v852 = *(v1523 + 8);
  v1523 += 8;
  v1221 = v852;
  (v852)(v1220, v1283);
  v853 = *(v1522 + 8);
  v1522 += 8;
  v1220 = v853;
  (v853)(v1219, v1282);
  v854 = *(v1521 + 8);
  v1521 += 8;
  v1219 = v854;
  (v854)(v1218, v1281);
  v855 = *(v1520 + 8);
  v1520 += 8;
  v1218 = v855;
  (v855)(v1217, v1280);
  v856 = *(v1519 + 8);
  v1519 += 8;
  v1217 = v856;
  (v856)(v1216, v1386);
  v857 = *(v1518 + 8);
  v1518 += 8;
  v1216 = v857;
  (v857)(v1215, v1385);
  v858 = *(v1517 + 8);
  v1517 += 8;
  v1215 = v858;
  (v858)(v1214, v1384);
  v859 = *(v1516 + 8);
  v1516 += 8;
  v1214 = v859;
  (v859)(v1213, v1383);
  v860 = *(v1515 + 8);
  v1515 += 8;
  v1213 = v860;
  (v860)(v1212, v1382);
  v861 = *(v1514 + 8);
  v1514 += 8;
  v1212 = v861;
  (v861)(v1211, v1381);
  v862 = *(v1513 + 8);
  v1513 += 8;
  v1211 = v862;
  (v862)(v1210, v1380);
  v863 = *(v1512 + 8);
  v1512 += 8;
  v1210 = v863;
  (v863)(v1209, v1379);
  v864 = *(v1511 + 8);
  v1511 += 8;
  v1209 = v864;
  (v864)(v1208, v1378);
  v865 = *(v1510 + 8);
  v1510 += 8;
  v1208 = v865;
  (v865)(v1207, v1377);
  v866 = *(v1509 + 8);
  v1509 += 8;
  v1207 = v866;
  (v866)(v1206, v1376);
  v867 = *(v1508 + 8);
  v1508 += 8;
  v1206 = v867;
  (v867)(v1205, v1375);
  v868 = *(v1507 + 8);
  v1507 += 8;
  v1205 = v868;
  (v868)(v1204, v1374);
  v869 = *(v1506 + 8);
  v1506 += 8;
  v1204 = v869;
  (v869)(v1203, v1373);
  v870 = *(v1505 + 8);
  v1505 += 8;
  v1203 = v870;
  (v870)(v1202, v1372);
  v871 = *(v1504 + 8);
  v1504 += 8;
  v1202 = v871;
  (v871)(v1201, v1371);
  v872 = *(v1503 + 8);
  v1503 += 8;
  v1201 = v872;
  (v872)(v1200, v1370);
  v873 = *(v1502 + 8);
  v1502 += 8;
  v1200 = v873;
  (v873)(v1199, v1369);
  v874 = *(v1501 + 8);
  v1501 += 8;
  v1199 = v874;
  (v874)(v1198, v1368);
  v875 = *(v1500 + 8);
  v1500 += 8;
  v1198 = v875;
  (v875)(v1197, v1367);
  v876 = *(v1499 + 8);
  v1499 += 8;
  v1197 = v876;
  (v876)(v1196, v1366);
  v877 = *(v1498 + 8);
  v1498 += 8;
  v1196 = v877;
  (v877)(v1195, v1365);
  v878 = *(v1497 + 8);
  v1497 += 8;
  v1195 = v878;
  (v878)(v1194, v1364);
  v879 = *(v1496 + 8);
  v1496 += 8;
  v1194 = v879;
  (v879)(v1193, v1363);
  v880 = *(v1495 + 8);
  v1495 += 8;
  v1193 = v880;
  (v880)(v1192, v1362);
  v881 = *(v1494 + 8);
  v1494 += 8;
  v1192 = v881;
  (v881)(v1191, v1361);
  v882 = *(v1493 + 8);
  v1493 += 8;
  v1191 = v882;
  (v882)(v1190, v1360);
  v883 = *(v1492 + 8);
  v1492 += 8;
  v1190 = v883;
  (v883)(v1189, v1359);
  v884 = *(v1491 + 8);
  v1491 += 8;
  v1189 = v884;
  (v884)(v1188, v1358);
  v885 = *(v1490 + 8);
  v1490 += 8;
  v1188 = v885;
  (v885)(v1187, v1357);
  v886 = *(v1489 + 8);
  v1489 += 8;
  v1187 = v886;
  (v886)(v1186, v1356);
  v887 = *(v1488 + 8);
  v1488 += 8;
  v1186 = v887;
  (v887)(v1185, v1355);
  v888 = *(v1487 + 8);
  v1487 += 8;
  v1185 = v888;
  (v888)(v1184, v1354);
  v889 = *(v1486 + 8);
  v1486 += 8;
  v1184 = v889;
  (v889)(v1183, v1353);
  v890 = *(v1485 + 8);
  v1485 += 8;
  v1183 = v890;
  (v890)(v1182, v1352);
  v891 = *(v1484 + 8);
  v1484 += 8;
  v1182 = v891;
  (v891)(v1181, v1351);
  v892 = *(v1483 + 8);
  v1483 += 8;
  v1181 = v892;
  (v892)(v1180, v1350);
  v893 = *(v1482 + 8);
  v1482 += 8;
  v1180 = v893;
  (v893)(v1179, v1349);
  v894 = *(v1481 + 8);
  v1481 += 8;
  v1179 = v894;
  (v894)(v1178, v1348);
  v895 = *(v1480 + 8);
  v1480 += 8;
  v1178 = v895;
  (v895)(v1177, v1347);
  v896 = *(v1479 + 8);
  v1479 += 8;
  v1177 = v896;
  (v896)(v1176, v1346);
  v897 = *(v1478 + 8);
  v1478 += 8;
  v1176 = v897;
  (v897)(v1175, v1345);
  v898 = *(v1477 + 8);
  v1477 += 8;
  v1175 = v898;
  (v898)(v1174, v1344);
  v899 = *(v1476 + 8);
  v1476 += 8;
  v1174 = v899;
  (v899)(v1173, v1343);
  v900 = *(v1475 + 8);
  v1475 += 8;
  v1173 = v900;
  (v900)(v1172, v1342);
  v901 = *(v1474 + 8);
  v1474 += 8;
  v1172 = v901;
  (v901)(v1171, v1341);
  v902 = *(v1473 + 8);
  v1473 += 8;
  v1171 = v902;
  (v902)(v1170, v1340);
  v903 = *(v1472 + 8);
  v1472 += 8;
  v1170 = v903;
  (v903)(v1169, v1339);
  v904 = *(v1471 + 8);
  v1471 += 8;
  v1169 = v904;
  (v904)(v1168, v1338);
  v905 = *(v1470 + 8);
  v1470 += 8;
  v1168 = v905;
  (v905)(v1167, v1337);
  v906 = *(v1469 + 8);
  v1469 += 8;
  v1167 = v906;
  (v906)(v1166, v1336);
  v907 = *(v1468 + 8);
  v1468 += 8;
  v1166 = v907;
  (v907)(v1165, v1335);
  v908 = *(v1467 + 8);
  v1467 += 8;
  v1165 = v908;
  (v908)(v1164, v1334);
  v909 = *(v1466 + 8);
  v1466 += 8;
  v1164 = v909;
  (v909)(v1163, v1333);
  v910 = *(v1465 + 8);
  v1465 += 8;
  v1163 = v910;
  (v910)(v1162, v1332);
  v911 = *(v1464 + 8);
  v1464 += 8;
  v1162 = v911;
  (v911)(v1161, v1331);
  v912 = *(v1463 + 8);
  v1463 += 8;
  v1161 = v912;
  (v912)(v1160, v1330);
  v913 = *(v1462 + 8);
  v1462 += 8;
  v1160 = v913;
  (v913)(v1159, v1329);
  v914 = *(v1461 + 8);
  v1461 += 8;
  v1159 = v914;
  (v914)(v1158, v1328);
  v915 = *(v1460 + 8);
  v1460 += 8;
  v1158 = v915;
  (v915)(v1157, v1425);
  v916 = *(v1459 + 8);
  v1459 += 8;
  v1157 = v916;
  (v916)(v1156, v1424);
  v917 = *(v1458 + 8);
  v1458 += 8;
  v1156 = v917;
  (v917)(v1155, v1423);
  v918 = *(v1457 + 8);
  v1457 += 8;
  v1155 = v918;
  (v918)(v1154, v1422);
  v919 = *(v1456 + 8);
  v1456 += 8;
  v1154 = v919;
  (v919)(v1153, v1421);
  v920 = *(v1455 + 8);
  v1455 += 8;
  v1153 = v920;
  (v920)(v1152, v1420);
  v921 = *(v1454 + 8);
  v1454 += 8;
  v1152 = v921;
  (v921)(v1151, v1419);
  v922 = *(v1453 + 8);
  v1453 += 8;
  v1151 = v922;
  (v922)(v1150, v1418);
  v923 = *(v1452 + 8);
  v1452 += 8;
  v1150 = v923;
  (v923)(v1149, v1417);
  v924 = *(v1451 + 8);
  v1451 += 8;
  v1149 = v924;
  (v924)(v1148, v1416);
  v925 = *(v1450 + 8);
  v1450 += 8;
  v1148 = v925;
  (v925)(v1147, v1415);
  v926 = *(v1449 + 8);
  v1449 += 8;
  v1147 = v926;
  (v926)(v1146, v1414);
  v927 = *(v1448 + 8);
  v1448 += 8;
  v1146 = v927;
  (v927)(v1145, v1413);
  v928 = *(v1447 + 8);
  v1447 += 8;
  v1145 = v928;
  (v928)(v1144, v1412);
  v929 = *(v1446 + 8);
  v1446 += 8;
  v1144 = v929;
  (v929)(v1143, v1411);
  v930 = *(v1445 + 8);
  v1445 += 8;
  v1143 = v930;
  (v930)(v1142, v1410);
  v931 = *(v1444 + 8);
  v1444 += 8;
  v1142 = v931;
  (v931)(v1141, v1409);
  v932 = *(v1443 + 8);
  v1443 += 8;
  v1141 = v932;
  (v932)(v1140, v1408);
  v933 = *(v1442 + 8);
  v1442 += 8;
  v1140 = v933;
  (v933)(v1139, v1407);
  v934 = *(v1441 + 8);
  v1441 += 8;
  v1139 = v934;
  (v934)(v1138, v1406);
  v935 = *(v1440 + 8);
  v1440 += 8;
  v1138 = v935;
  (v935)(v1137, v1405);
  v936 = *(v1439 + 8);
  v1439 += 8;
  v1137 = v936;
  (v936)(v1136, v1404);
  v937 = *(v1438 + 8);
  v1438 += 8;
  v1136 = v937;
  (v937)(v1135, v1403);
  v938 = *(v1437 + 8);
  v1437 += 8;
  v1135 = v938;
  (v938)(v1134, v1402);
  v939 = *(v1436 + 8);
  v1436 += 8;
  v1134 = v939;
  (v939)(v1133, v1401);
  v940 = *(v1435 + 8);
  v1435 += 8;
  v1133 = v940;
  (v940)(v1132, v1400);
  v941 = *(v1434 + 8);
  v1434 += 8;
  v1132 = v941;
  (v941)(v1131, v1399);
  v942 = *(v1433 + 8);
  v1433 += 8;
  v1131 = v942;
  (v942)(v1130, v1398);
  v943 = *(v1432 + 8);
  v1432 += 8;
  v1130 = v943;
  (v943)(v1129, v1397);
  v944 = *(v1431 + 8);
  v1431 += 8;
  v1129 = v944;
  (v944)(v1128, v1396);
  v945 = v1430[1];
  ++v1430;
  v1128 = v945;
  (v945)(v959, v1395);
  v946 = v1429[1];
  ++v1429;
  v980 = v946;
  v946(v958, v1394);
  v947 = *(v1428 + 8);
  v1428 += 8;
  v961 = v947;
  (v947)(v966, v1393);
  v948 = v1427[1];
  ++v1427;
  v966 = v948;
  (v948)(v957, v1392);
  v949 = *(v1426 + 8);
  v1426 += 8;
  v959 = v949;
  v949(v965, v1391);
  v974 = *(v974 + 8);
  (v974)(v964, v1390);
  v972 = *(v972 + 8);
  (v972)(v956, v1389);
  v970 = *(v970 + 8);
  (v970)(v955, v1388);
  v950 = v968[1];
  v950(v954, v1387);
  v963(v1127, v797);
  (v1092)(v1126, v793);
  (v1272)(v1125, v1279);
  (v1271)(v1124, v1278);
  (v1270)(v1123, v1277);
  (v1269)(v1122, v1276);
  (v1268)(v1121, v1275);
  (v1267)(v1120, v1274);
  (v1266)(v1119, v1273);
  (v1265)(v1118, v1327);
  (v1264)(v1117, v1326);
  (v1263)(v1116, v1325);
  (v1262)(v1115, v1324);
  (v1261)(v1114, v1323);
  (v1260)(v1113, v1322);
  (v1259)(v1112, v1321);
  (v1258)(v1111, v1320);
  (v1257)(v1110, v1319);
  (v1256)(v1109, v1318);
  (v1255)(v1108, v1317);
  (v1254)(v1107, v1316);
  (v1253)(v1106, v1315);
  (v1252)(v1105, v1314);
  (v1251)(v1104, v1313);
  (v1250)(v1103, v1312);
  (v1249)(v1102, v1311);
  (v1248)(v1101, v1310);
  (v1247)(v1100, v1309);
  (v1246)(v1099, v1308);
  (v1245)(v1098, v1307);
  (v1244)(v1097, v1306);
  (v1243)(v1096, v1305);
  (v1242)(v1095, v1304);
  (v1241)(v1094, v1303);
  (v1240)(v1093, v1302);
  (v1239)(v1091, v1301);
  (v1238)(v1090, v1300);
  (v1237)(v1089, v1299);
  (v1236)(v1088, v1298);
  (v1235)(v1087, v1297);
  (v1234)(v1086, v1296);
  (v1233)(v1085, v1295);
  (v1232)(v1084, v1294);
  (v1231)(v1083, v1293);
  (v1230)(v1082, v1292);
  (v1229)(v1081, v1291);
  (v1228)(v1080, v1290);
  (v1227)(v1079, v1289);
  (v1226)(v1078, v1288);
  (v1225)(v1077, v1287);
  (v1224)(v1076, v1286);
  (v1223)(v1075, v1285);
  (v1222)(v1074, v1284);
  (v1221)(v1073, v1283);
  (v1220)(v1072, v1282);
  (v1219)(v1071, v1281);
  (v1218)(v1070, v1280);
  (v1217)(v1069, v1386);
  (v1216)(v1068, v1385);
  (v1215)(v1067, v1384);
  (v1214)(v1066, v1383);
  (v1213)(v1065, v1382);
  (v1212)(v1064, v1381);
  (v1211)(v1063, v1380);
  (v1210)(v1062, v1379);
  (v1209)(v1061, v1378);
  (v1208)(v1060, v1377);
  (v1207)(v1059, v1376);
  (v1206)(v1058, v1375);
  (v1205)(v1057, v1374);
  (v1204)(v1056, v1373);
  (v1203)(v1055, v1372);
  (v1202)(v1054, v1371);
  (v1201)(v1053, v1370);
  (v1200)(v1052, v1369);
  (v1199)(v1051, v1368);
  (v1198)(v1050, v1367);
  (v1197)(v1049, v1366);
  (v1196)(v1048, v1365);
  (v1195)(v1047, v1364);
  (v1194)(v1046, v1363);
  (v1193)(v1045, v1362);
  (v1192)(v1044, v1361);
  (v1191)(v1043, v1360);
  (v1190)(v1042, v1359);
  (v1189)(v1041, v1358);
  (v1188)(v1040, v1357);
  (v1187)(v1039, v1356);
  (v1186)(v1038, v1355);
  (v1185)(v1037, v1354);
  (v1184)(v1036, v1353);
  (v1183)(v1035, v1352);
  (v1182)(v1034, v1351);
  (v1181)(v1033, v1350);
  (v1180)(v1032, v1349);
  (v1179)(v1031, v1348);
  (v1178)(v1030, v1347);
  (v1177)(v1029, v1346);
  (v1176)(v1028, v1345);
  (v1175)(v1027, v1344);
  (v1174)(v1026, v1343);
  (v1173)(v1025, v1342);
  (v1172)(v1024, v1341);
  (v1171)(v1023, v1340);
  (v1170)(v1022, v1339);
  (v1169)(v1021, v1338);
  (v1168)(v1020, v1337);
  (v1167)(v1019, v1336);
  (v1166)(v1018, v1335);
  (v1165)(v1017, v1334);
  (v1164)(v1016, v1333);
  (v1163)(v1015, v1332);
  (v1162)(v1014, v1331);
  (v1161)(v1013, v1330);
  (v1160)(v1012, v1329);
  (v1159)(v1011, v1328);
  (v1158)(v1010, v1425);
  (v1157)(v1009, v1424);
  (v1156)(v1008, v1423);
  (v1155)(v1007, v1422);
  (v1154)(v1006, v1421);
  (v1153)(v1005, v1420);
  (v1152)(v1004, v1419);
  (v1151)(v1003, v1418);
  (v1150)(v1002, v1417);
  (v1149)(v1001, v1416);
  (v1148)(v1000, v1415);
  (v1147)(v999, v1414);
  (v1146)(v998, v1413);
  (v1145)(v997, v1412);
  (v1144)(v996, v1411);
  (v1143)(v995, v1410);
  (v1142)(v994, v1409);
  (v1141)(v993, v1408);
  (v1140)(v992, v1407);
  (v1139)(v991, v1406);
  (v1138)(v990, v1405);
  (v1137)(v989, v1404);
  (v1136)(v988, v1403);
  (v1135)(v987, v1402);
  (v1134)(v986, v1401);
  (v1133)(v985, v1400);
  (v1132)(v984, v1399);
  (v1131)(v983, v1398);
  (v1130)(v982, v1397);
  (v1129)(v981, v1396);
  (v1128)(v979, v1395);
  v980(v978, v1394);
  (v961)(v977, v1393);
  (v966)(v976, v1392);
  v959(v975, v1391);
  (v974)(v973, v1390);
  (v972)(v971, v1389);
  (v970)(v969, v1388);
  return (v950)(v967, v1387);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000C31A8();
  sub_1002D8A40();
  return 0;
}

unint64_t sub_1000C31A8()
{
  result = qword_100445F20;
  if (!qword_100445F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100445F20);
  }

  return result;
}

unint64_t sub_1000C3270()
{
  result = qword_100446910;
  if (!qword_100446910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446910);
  }

  return result;
}

unint64_t sub_1000C32C8()
{
  result = qword_100446918;
  if (!qword_100446918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446918);
  }

  return result;
}

uint64_t sub_1000C331C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C698);
  sub_10001EDB8(v0, qword_10051C698);
  return sub_1002D88F0();
}

uint64_t sub_1000C3380@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1002D85B0();
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1000C33C4(__int16 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = *(a1 + 1);

  sub_1002D85C0();
}

void (*sub_1000C3414(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1002D85A0();
  return sub_100024B0C;
}

unint64_t sub_1000C3488()
{
  result = qword_100446920;
  if (!qword_100446920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446920);
  }

  return result;
}

uint64_t sub_1000C34DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9764();
  v5 = sub_1000D970C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000C3548()
{
  v0 = qword_1004468F0;

  return v0;
}

unint64_t sub_1000C3584()
{
  result = qword_100446928;
  if (!qword_100446928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446928);
  }

  return result;
}

unint64_t sub_1000C35DC()
{
  result = qword_100446930;
  if (!qword_100446930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446930);
  }

  return result;
}

unint64_t sub_1000C3634()
{
  result = qword_100446938;
  if (!qword_100446938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446938);
  }

  return result;
}

uint64_t sub_1000C3710(uint64_t a1)
{
  v2 = sub_1000D9764();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000C3754(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000D9764();
  v7 = sub_1000D97B8();
  v8 = sub_1000D970C();
  *v5 = v2;
  v5[1] = sub_1000C3820;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000C3820()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_1000C3928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D528C();
  *a1 = result;
  return result;
}

uint64_t sub_1000C3950(uint64_t a1)
{
  v2 = sub_1000C3488();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000C3990()
{
  result = qword_100446940;
  if (!qword_100446940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446940);
  }

  return result;
}

unint64_t sub_1000C39E8()
{
  result = qword_100446948;
  if (!qword_100446948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446948);
  }

  return result;
}

unint64_t sub_1000C3A40()
{
  result = qword_100446950;
  if (!qword_100446950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446950);
  }

  return result;
}

uint64_t sub_1000C3A94@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8990();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1002D8CF0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v24 - v13;
  v15 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v24 - v17;
  v19 = sub_1002D8910();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 297:
    case 298:
    case 299:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 312:
    case 313:
    case 314:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
    case 322:
    case 323:
    case 324:
    case 325:
    case 326:
    case 327:
    case 328:
    case 329:
    case 330:
    case 331:
    case 332:
    case 333:
    case 334:
    case 335:
    case 336:
    case 337:
    case 338:
    case 339:
    case 340:
    case 341:
    case 342:
    case 343:
    case 344:
    case 345:
    case 346:
    case 347:
    case 348:
    case 349:
    case 350:
    case 351:
    case 352:
    case 353:
    case 354:
    case 355:
    case 356:
    case 357:
    case 358:
    case 359:
    case 360:
    case 361:
    case 362:
    case 363:
    case 364:
    case 365:
    case 366:
    case 367:
    case 368:
    case 369:
    case 370:
    case 371:
    case 372:
    case 373:
    case 374:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 380:
    case 381:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
    case 388:
    case 389:
    case 390:
    case 391:
    case 392:
    case 393:
    case 394:
    case 395:
    case 396:
    case 397:
    case 398:
    case 399:
    case 400:
    case 401:
    case 402:
    case 403:
    case 407:
    case 408:
    case 409:
    case 411:
    case 412:
    case 413:
    case 414:
    case 415:
    case 416:
    case 417:
    case 418:
    case 419:
    case 420:
    case 421:
    case 422:
    case 423:
    case 424:
    case 425:
    case 426:
    case 427:
    case 428:
    case 430:
    case 431:
    case 432:
    case 433:
    case 434:
    case 435:
    case 436:
    case 437:
    case 438:
    case 439:
    case 440:
    case 441:
    case 442:
    case 443:
    case 444:
    case 445:
    case 446:
    case 447:
    case 448:
    case 449:
    case 450:
    case 452:
    case 453:
    case 454:
    case 455:
    case 456:
    case 457:
    case 458:
    case 459:
    case 460:
    case 461:
    case 462:
    case 463:
    case 465:
    case 466:
    case 471:
    case 472:
    case 473:
    case 474:
    case 475:
    case 476:
    case 477:
    case 478:
    case 479:
    case 480:
    case 481:
    case 482:
    case 483:
    case 484:
    case 485:
    case 486:
    case 487:
    case 488:
    case 489:
    case 490:
    case 491:
    case 492:
    case 493:
    case 494:
    case 495:
    case 496:
    case 497:
    case 498:
    case 499:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 512:
    case 513:
    case 514:
    case 515:
    case 516:
    case 517:
    case 518:
    case 519:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 531:
    case 532:
    case 533:
    case 534:
    case 535:
    case 536:
    case 537:
    case 538:
    case 539:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 549:
    case 550:
    case 552:
    case 553:
    case 555:
    case 556:
    case 557:
    case 558:
    case 559:
    case 560:
    case 561:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 610:
    case 611:
    case 612:
    case 613:
    case 614:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
      sub_1002D88F0();
      sub_1002D88F0();
      (*(v20 + 56))(v18, 0, 1, v19);
      goto LABEL_7;
    case 27:
    case 33:
    case 108:
    case 451:
    case 467:
    case 468:
    case 469:
    case 470:
    case 511:
    case 569:
    case 609:
      sub_1002D88F0();
      sub_1002D88F0();
      (*(v20 + 56))(v18, 0, 1, v19);
      sub_1002D86A0();
      goto LABEL_8;
    case 130:
    case 131:
    case 132:
    case 174:
    case 195:
    case 196:
    case 197:
    case 198:
    case 246:
    case 404:
    case 405:
    case 406:
    case 429:
    case 464:
    case 551:
    case 554:
      sub_1002D88F0();
      sub_1002D88F0();
      (*(v20 + 56))(v18, 0, 1, v19);
      sub_1000CD928();
      goto LABEL_8;
    case 410:
      sub_1002D8CE0();
      sub_1000D9B98();
      sub_1000CDA08(v6);
      sub_1002D8920();
      sub_1002D8CE0();
      sub_1000D9B98();
      sub_1000CDA08(v6);
      sub_1002D8920();
      (*(v20 + 56))(v18, 0, 1, v19);
      goto LABEL_7;
    default:
      sub_1002D88F0();
      (*(v20 + 56))(v18, 1, 1, v19);
LABEL_7:
      sub_1002D8690();
LABEL_8:
      v22 = sub_1002D86B0();
      (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
      return sub_1002D86E0();
  }
}

uint64_t sub_1000CD928()
{
  v0 = sub_1002D8D00();
  v1 = AXHasCapability();

  if ((v1 & 1) == 0)
  {
    v2 = sub_1002D8D00();
    AXHasCapability();
  }

  return sub_1002D8690();
}

uint64_t sub_1000CDA08@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000CDA7C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_10051C6B0);
  sub_10001EDB8(v7, qword_10051C6B0);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000CDBF4(uint64_t a1, _WORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_1000CDC1C, 0, 0);
}

uint64_t sub_1000CDC1C()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000CDC88(*(v0 + 24));
  v1[1] = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CDC88(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 0xD00000000000003CLL;
      break;
    case 2:
    case 13:
      result = 0xD000000000000059;
      break;
    case 3:
    case 56:
    case 524:
      result = 0xD000000000000012;
      break;
    case 4:
    case 260:
    case 287:
    case 348:
    case 387:
    case 408:
    case 449:
    case 531:
    case 536:
    case 591:
    case 607:
      result = 0xD000000000000030;
      break;
    case 5:
    case 97:
    case 169:
    case 400:
    case 555:
    case 595:
    case 599:
    case 601:
    case 613:
    case 617:
      result = 0xD00000000000004BLL;
      break;
    case 6:
    case 28:
    case 269:
    case 304:
    case 501:
    case 506:
    case 604:
      result = 0xD00000000000002DLL;
      break;
    case 7:
    case 70:
    case 154:
    case 361:
      result = 0xD000000000000053;
      break;
    case 8:
    case 19:
    case 176:
    case 191:
    case 211:
    case 245:
    case 298:
    case 418:
    case 440:
    case 478:
    case 486:
    case 494:
    case 561:
    case 623:
      result = 0xD000000000000025;
      break;
    case 9:
    case 24:
    case 105:
    case 127:
    case 467:
    case 468:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 194:
    case 213:
    case 308:
    case 383:
    case 390:
    case 420:
    case 482:
    case 483:
      result = 0xD000000000000036;
      break;
    case 11:
    case 130:
    case 131:
    case 132:
    case 385:
    case 451:
    case 488:
    case 498:
    case 593:
    case 609:
      result = 0xD000000000000022;
      break;
    case 12:
    case 61:
    case 112:
    case 208:
    case 216:
    case 485:
    case 629:
      result = 0xD000000000000020;
      break;
    case 14:
    case 75:
    case 170:
    case 285:
    case 286:
    case 294:
    case 338:
    case 339:
    case 372:
    case 414:
    case 544:
    case 556:
      result = 0xD00000000000004DLL;
      break;
    case 15:
    case 135:
    case 218:
    case 445:
    case 539:
    case 540:
    case 583:
      result = 0xD00000000000003ALL;
      break;
    case 16:
    case 141:
    case 149:
    case 313:
    case 326:
      result = 0xD000000000000051;
      break;
    case 17:
    case 109:
    case 128:
    case 320:
    case 329:
    case 340:
    case 422:
    case 462:
    case 631:
      result = 0xD000000000000024;
      break;
    case 18:
    case 155:
    case 236:
    case 436:
    case 493:
    case 581:
    case 587:
      result = 0xD000000000000044;
      break;
    case 20:
    case 115:
    case 123:
    case 366:
    case 423:
    case 425:
    case 457:
    case 474:
    case 622:
    case 628:
      result = 0xD00000000000001CLL;
      break;
    case 21:
    case 239:
    case 317:
      result = 0xD000000000000011;
      break;
    case 22:
    case 119:
    case 174:
    case 178:
    case 221:
    case 246:
      result = 0xD000000000000010;
      break;
    case 23:
    case 225:
    case 469:
      result = 0xD000000000000013;
      break;
    case 25:
    case 32:
    case 229:
    case 255:
    case 265:
    case 318:
    case 324:
    case 381:
    case 431:
    case 452:
    case 520:
    case 547:
    case 569:
      result = 0xD00000000000002ELL;
      break;
    case 26:
    case 62:
    case 64:
    case 92:
    case 137:
    case 145:
    case 227:
    case 240:
    case 257:
    case 267:
    case 268:
    case 271:
    case 315:
    case 344:
    case 471:
      result = 0xD000000000000039;
      break;
    case 27:
    case 278:
    case 288:
    case 375:
    case 376:
    case 444:
    case 550:
    case 610:
    case 611:
      result = 0xD00000000000003FLL;
      break;
    case 29:
    case 36:
    case 90:
    case 102:
    case 143:
    case 189:
    case 206:
    case 258:
    case 301:
    case 305:
    case 356:
    case 360:
    case 411:
    case 419:
    case 461:
      result = 0xD000000000000037;
      break;
    case 30:
      result = 0xD000000000000034;
      break;
    case 31:
    case 290:
    case 291:
    case 370:
    case 394:
    case 395:
    case 542:
    case 543:
    case 572:
    case 580:
    case 585:
    case 594:
    case 630:
      result = 0xD000000000000041;
      break;
    case 33:
    case 76:
    case 107:
    case 156:
    case 186:
    case 190:
    case 244:
    case 306:
    case 371:
    case 429:
    case 509:
    case 534:
    case 535:
    case 574:
      result = 0xD00000000000003ELL;
      break;
    case 34:
      result = 0x56545F454C505041;
      break;
    case 35:
    case 125:
    case 424:
    case 570:
      result = 0xD000000000000019;
      break;
    case 37:
    case 38:
    case 74:
    case 91:
    case 99:
      result = 0xD000000000000041;
      break;
    case 39:
    case 65:
    case 144:
    case 164:
      result = 0xD000000000000033;
      break;
    case 40:
    case 41:
    case 63:
    case 95:
    case 161:
    case 512:
    case 552:
    case 567:
      result = 0xD000000000000046;
      break;
    case 42:
      result = 0xD000000000000056;
      break;
    case 43:
      result = 0xD00000000000003CLL;
      break;
    case 44:
    case 45:
    case 81:
      result = 0xD00000000000004ALL;
      break;
    case 46:
    case 314:
    case 409:
    case 413:
      result = 0xD000000000000048;
      break;
    case 47:
    case 180:
    case 181:
    case 321:
    case 328:
    case 333:
    case 334:
      result = 0xD00000000000004ELL;
      break;
    case 48:
    case 50:
    case 152:
    case 153:
    case 158:
    case 368:
    case 369:
    case 504:
      result = 0xD000000000000050;
      break;
    case 49:
    case 151:
      result = 0xD000000000000055;
      break;
    case 51:
    case 184:
    case 374:
      result = 0xD000000000000052;
      break;
    case 52:
    case 86:
    case 150:
    case 378:
      result = 0xD00000000000002DLL;
      break;
    case 53:
    case 238:
    case 249:
    case 510:
    case 608:
      result = 0xD000000000000016;
      break;
    case 54:
    case 55:
    case 138:
    case 242:
    case 373:
    case 500:
    case 527:
    case 541:
      result = 0xD000000000000043;
      break;
    case 57:
      result = 0xD000000000000011;
      break;
    case 58:
    case 146:
    case 168:
    case 185:
    case 235:
    case 283:
    case 310:
    case 316:
    case 427:
    case 446:
    case 508:
    case 592:
      result = 0xD000000000000023;
      break;
    case 59:
    case 78:
    case 147:
      result = 0xD00000000000005BLL;
      break;
    case 60:
    case 83:
      result = 0xD000000000000061;
      break;
    case 66:
      result = 0xD000000000000030;
      break;
    case 67:
    case 121:
    case 188:
    case 222:
    case 254:
    case 264:
    case 393:
    case 407:
    case 456:
      result = 0xD000000000000032;
      break;
    case 68:
    case 175:
    case 193:
    case 277:
    case 297:
    case 307:
    case 343:
    case 402:
    case 450:
    case 459:
    case 484:
    case 614:
    case 620:
      result = 0xD000000000000026;
      break;
    case 69:
    case 341:
    case 357:
    case 442:
    case 443:
    case 532:
    case 533:
      result = 0xD00000000000004FLL;
      break;
    case 71:
    case 79:
    case 122:
    case 237:
    case 252:
    case 272:
    case 302:
    case 322:
    case 380:
    case 454:
    case 458:
    case 495:
    case 511:
    case 596:
      result = 0xD000000000000028;
      break;
    case 72:
    case 73:
    case 233:
    case 388:
    case 606:
      result = 0xD000000000000034;
      break;
    case 77:
    case 182:
    case 183:
      result = 0xD000000000000075;
      break;
    case 80:
    case 89:
    case 365:
    case 389:
    case 545:
      result = 0xD000000000000049;
      break;
    case 82:
    case 124:
      result = 0xD000000000000021;
      break;
    case 84:
      result = 0xD000000000000062;
      break;
    case 85:
      result = 0xD00000000000006ELL;
      break;
    case 87:
    case 116:
    case 126:
    case 129:
    case 133:
      result = 0xD00000000000001FLL;
      break;
    case 88:
    case 197:
    case 198:
    case 223:
    case 250:
    case 266:
    case 284:
    case 386:
    case 530:
    case 537:
      result = 0xD00000000000002ALL;
      break;
    case 93:
      result = 0xD00000000000003CLL;
      break;
    case 94:
    case 167:
      result = 0xD000000000000040;
      break;
    case 96:
    case 173:
    case 441:
      result = 0xD00000000000002CLL;
      break;
    case 98:
    case 157:
      result = 0xD00000000000002BLL;
      break;
    case 100:
      result = 0xD000000000000047;
      break;
    case 101:
    case 134:
      result = 0xD000000000000036;
      break;
    case 103:
    case 104:
    case 140:
    case 362:
    case 384:
    case 403:
    case 448:
    case 559:
    case 571:
    case 590:
      result = 0xD00000000000003DLL;
      break;
    case 106:
    case 159:
    case 263:
    case 391:
    case 426:
    case 516:
    case 522:
    case 526:
      result = 0xD000000000000038;
      break;
    case 108:
    case 139:
    case 202:
    case 525:
    case 588:
    case 632:
      result = 0xD00000000000003BLL;
      break;
    case 110:
    case 111:
    case 117:
    case 228:
      result = 0xD00000000000001ALL;
      break;
    case 113:
      result = 0xD000000000000014;
      break;
    case 114:
    case 276:
      result = 0xD000000000000057;
      break;
    case 118:
    case 204:
    case 207:
      result = 0xD00000000000001DLL;
      break;
    case 120:
    case 289:
    case 560:
      result = 0xD000000000000018;
      break;
    case 136:
    case 342:
    case 349:
    case 437:
    case 465:
    case 466:
      result = 0xD000000000000042;
      break;
    case 142:
    case 234:
    case 256:
    case 312:
    case 347:
    case 438:
      result = 0xD000000000000031;
      break;
    case 148:
      result = 0xD000000000000035;
      break;
    case 160:
      result = 0xD00000000000003CLL;
      break;
    case 162:
      result = 0xD00000000000003CLL;
      break;
    case 163:
      result = 0xD00000000000003CLL;
      break;
    case 165:
    case 166:
    case 353:
    case 354:
    case 355:
    case 503:
    case 505:
      result = 0xD000000000000058;
      break;
    case 171:
    case 172:
      result = 0xD00000000000005ELL;
      break;
    case 177:
    case 295:
    case 311:
    case 350:
    case 363:
    case 428:
    case 546:
      result = 0xD000000000000045;
      break;
    case 179:
      result = 0x544E414E494D4F44;
      break;
    case 187:
    case 203:
    case 217:
    case 279:
    case 517:
    case 519:
    case 557:
    case 558:
    case 565:
    case 600:
    case 619:
      result = 0xD00000000000002FLL;
      break;
    case 192:
    case 201:
    case 224:
    case 226:
    case 251:
    case 281:
    case 553:
    case 597:
    case 598:
      result = 0xD000000000000047;
      break;
    case 195:
    case 196:
    case 273:
    case 323:
    case 417:
    case 473:
    case 487:
    case 549:
    case 573:
      result = 0xD00000000000002BLL;
      break;
    case 199:
      result = 0xD000000000000060;
      break;
    case 200:
    case 220:
    case 299:
    case 330:
    case 404:
    case 405:
    case 406:
    case 432:
      result = 0xD000000000000029;
      break;
    case 205:
    case 209:
    case 345:
    case 463:
    case 621:
      result = 0xD000000000000021;
      break;
    case 210:
      result = 0x44495F45434146;
      break;
    case 212:
      result = 0xD00000000000005ALL;
      break;
    case 214:
      result = 0xD000000000000069;
      break;
    case 215:
    case 274:
    case 275:
    case 430:
    case 479:
    case 507:
    case 575:
    case 633:
      result = 0xD000000000000040;
      break;
    case 219:
    case 282:
    case 309:
    case 396:
    case 397:
    case 455:
    case 480:
    case 481:
      result = 0xD000000000000035;
      break;
    case 230:
    case 231:
    case 232:
      result = 0x545F574823545452;
      break;
    case 241:
      result = 0xD00000000000003DLL;
      break;
    case 243:
      result = 0xD00000000000003CLL;
      break;
    case 247:
    case 325:
    case 576:
    case 577:
      result = 0xD000000000000054;
      break;
    case 248:
      result = 0x5845545245564F48;
      break;
    case 253:
      result = 0xD00000000000003CLL;
      break;
    case 259:
    case 270:
    case 538:
    case 562:
    case 563:
    case 618:
      result = 0xD000000000000033;
      break;
    case 261:
    case 319:
      result = 0xD00000000000002CLL;
      break;
    case 262:
    case 335:
      result = 0xD00000000000004CLL;
      break;
    case 280:
      result = 0xD00000000000005DLL;
      break;
    case 292:
    case 337:
    case 470:
    case 513:
    case 515:
      result = 0xD00000000000001FLL;
      break;
    case 293:
      result = 0x4452414F4259454BLL;
      break;
    case 296:
      result = 0xD00000000000003CLL;
      break;
    case 300:
    case 327:
      result = 0xD000000000000050;
      break;
    case 303:
    case 497:
    case 612:
    case 634:
      result = 0xD00000000000001BLL;
      break;
    case 331:
    case 332:
      result = 0xD000000000000077;
      break;
    case 336:
    case 358:
    case 367:
    case 460:
    case 528:
    case 529:
    case 582:
    case 584:
    case 586:
    case 589:
      result = 0xD00000000000003CLL;
      break;
    case 346:
      result = 0xD00000000000005FLL;
      break;
    case 351:
    case 492:
      result = 0xD000000000000017;
      break;
    case 352:
      v1 = 0x4E4F49544F4DLL;
      goto LABEL_52;
    case 359:
      result = 0x4D5F434954504148;
      break;
    case 364:
      result = 0xD00000000000004CLL;
      break;
    case 377:
    case 401:
    case 518:
    case 568:
    case 602:
    case 603:
    case 624:
      result = 0xD000000000000027;
      break;
    case 379:
    case 410:
    case 521:
      result = 0xD000000000000014;
      break;
    case 382:
      result = 0xD000000000000015;
      break;
    case 392:
      result = 0xD00000000000003BLL;
      break;
    case 398:
      result = 0xD000000000000080;
      break;
    case 399:
      result = 0xD00000000000007ELL;
      break;
    case 412:
    case 564:
    case 625:
    case 626:
    case 627:
      result = 0xD000000000000057;
      break;
    case 415:
    case 433:
    case 439:
      result = 0xD000000000000055;
      break;
    case 416:
      result = 0xD000000000000065;
      break;
    case 421:
      result = 0xD00000000000001ALL;
      break;
    case 434:
    case 435:
    case 566:
      result = 5526610;
      break;
    case 447:
      result = 0xD00000000000004ELL;
      break;
    case 453:
      result = 0xD00000000000002FLL;
      break;
    case 464:
    case 551:
    case 554:
      result = 0xD000000000000010;
      break;
    case 472:
      result = 0xD00000000000001DLL;
      break;
    case 475:
    case 476:
    case 477:
      result = 0x545F575323545452;
      break;
    case 489:
      result = 0xD000000000000090;
      break;
    case 490:
    case 491:
      result = 0xD000000000000039;
      break;
    case 496:
      result = 0xD00000000000001ELL;
      break;
    case 499:
      result = 0xD000000000000029;
      break;
    case 502:
      result = 0xD000000000000064;
      break;
    case 514:
      v1 = 0x484345455053;
LABEL_52:
      result = v1 & 0xFFFFFFFFFFFFLL | 0x545F000000000000;
      break;
    case 523:
      result = 0xD000000000000056;
      break;
    case 548:
    case 616:
      result = 0xD00000000000005DLL;
      break;
    case 578:
    case 579:
      result = 0xD000000000000053;
      break;
    case 605:
      result = 0x45564F4543494F56;
      break;
    case 615:
      result = 0xD000000000000037;
      break;
    case 635:
      result = 0x5449545F4D4F4F5ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D0CD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D9828;

  return sub_1000D5854(a1);
}

uint64_t sub_1000D0D78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D980C;

  return sub_1000D5584();
}

uint64_t sub_1000D0E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000D0EDC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000D0EDC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1000D0FE0()
{
  result = qword_100446958;
  if (!qword_100446958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446958);
  }

  return result;
}

uint64_t sub_1000D1034(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D10D8;

  return sub_1000D5D74();
}

uint64_t sub_1000D10D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_1000D11F0()
{
  result = qword_100446960;
  if (!qword_100446960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446960);
  }

  return result;
}

unint64_t sub_1000D1248()
{
  result = qword_100446968;
  if (!qword_100446968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446968);
  }

  return result;
}

unint64_t sub_1000D12A0()
{
  result = qword_100446970;
  if (!qword_100446970)
  {
    sub_1000044E0(&qword_100446978, qword_1002F7138);
    sub_1000D1248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446970);
  }

  return result;
}

uint64_t sub_1000D1324(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000D0FE0();
  *v6 = v2;
  v6[1] = sub_100023140;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000D13D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D147C;

  return sub_1000D5B34();
}

uint64_t sub_1000D147C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  v6[1] = a2;
  v7 = *(v9 + 8);

  return v7();
}

unint64_t sub_1000D15A0()
{
  result = qword_100446980;
  if (!qword_100446980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446980);
  }

  return result;
}

uint64_t sub_1000D15F4()
{
  v0 = sub_10000321C(&qword_100446A00, &qword_1002F76D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_1000C3A40();
  sub_1002D8780();
  v3._object = 0x8000000100373AF0;
  v3._countAndFlagsBits = 0xD000000000000037;
  sub_1002D8770(v3);
  swift_getKeyPath();
  sub_10000321C(&qword_100446A08, &qword_1002F76F8);
  sub_10002B6E4(&qword_100446A10, &qword_100446A18, &qword_1002F7700);
  sub_1002D8760();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1002D8770(v4);
  return sub_1002D8790();
}

uint64_t sub_1000D1760()
{
  v0 = qword_100446900;

  return v0;
}

unint64_t sub_1000D179C()
{
  result = qword_100446988;
  if (!qword_100446988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446988);
  }

  return result;
}

unint64_t sub_1000D17F4()
{
  result = qword_100446990;
  if (!qword_100446990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446990);
  }

  return result;
}

unint64_t sub_1000D184C()
{
  result = qword_100446998;
  if (!qword_100446998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446998);
  }

  return result;
}

uint64_t sub_1000D18A0()
{
  sub_1000D970C();
  v1 = sub_1002D8730();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000D1910()
{
  result = qword_1004469A0;
  if (!qword_1004469A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469A0);
  }

  return result;
}

unint64_t sub_1000D1968()
{
  result = qword_1004469A8;
  if (!qword_1004469A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469A8);
  }

  return result;
}

unint64_t sub_1000D19C0()
{
  result = qword_1004469B0;
  if (!qword_1004469B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469B0);
  }

  return result;
}

unint64_t sub_1000D1A18()
{
  result = qword_1004469B8;
  if (!qword_1004469B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469B8);
  }

  return result;
}

uint64_t sub_1000D1AB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10001EDB8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000D1B9C(uint64_t a1)
{
  v2 = sub_1000C3A40();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000D1BEC()
{
  result = qword_1004469D0;
  if (!qword_1004469D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469D0);
  }

  return result;
}

uint64_t sub_1000D1C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100023140;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000D1D10(uint64_t a1)
{
  v2 = sub_1000D19C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000D1D70(__int16 a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
    case 74:
    case 96:
    case 99:
    case 113:
    case 117:
    case 141:
    case 185:
    case 202:
    case 217:
    case 219:
    case 224:
    case 277:
    case 284:
    case 307:
    case 377:
    case 380:
    case 419:
    case 449:
    case 460:
    case 463:
    case 490:
    case 555:
    case 562:
    case 578:
    case 580:
    case 587:
    case 614:
    case 618:
    case 622:
      result = 0xD000000000000035;
      break;
    case 2:
    case 544:
      result = 0xD00000000000006FLL;
      break;
    case 3:
    case 19:
    case 83:
    case 116:
    case 118:
    case 123:
    case 195:
    case 204:
    case 207:
    case 215:
    case 238:
    case 280:
    case 375:
    case 401:
    case 416:
    case 447:
    case 458:
    case 589:
    case 630:
    case 633:
      result = 0xD000000000000039;
      break;
    case 4:
    case 208:
    case 577:
      result = 0xD00000000000003CLL;
      break;
    case 5:
    case 29:
    case 60:
    case 104:
    case 148:
    case 177:
    case 305:
    case 358:
    case 360:
    case 382:
    case 413:
    case 415:
    case 440:
    case 442:
    case 443:
    case 461:
    case 467:
    case 479:
    case 531:
    case 539:
    case 540:
    case 565:
    case 585:
    case 594:
    case 602:
    case 610:
      result = 0xD00000000000002DLL;
      break;
    case 6:
    case 22:
    case 23:
    case 63:
    case 72:
    case 73:
    case 75:
    case 77:
    case 125:
    case 128:
    case 133:
    case 138:
    case 175:
    case 176:
    case 222:
    case 265:
    case 297:
    case 318:
    case 323:
    case 343:
    case 374:
    case 422:
    case 455:
    case 457:
    case 523:
    case 556:
    case 576:
    case 588:
    case 619:
      result = 0xD000000000000033;
      break;
    case 7:
      result = 0xD000000000000031;
      break;
    case 8:
    case 221:
    case 267:
    case 298:
    case 335:
    case 342:
    case 345:
    case 353:
    case 387:
    case 456:
    case 551:
    case 595:
      result = 0xD000000000000021;
      break;
    case 9:
    case 32:
    case 53:
    case 65:
    case 66:
    case 127:
    case 163:
    case 165:
    case 191:
    case 203:
    case 214:
    case 233:
    case 240:
    case 252:
    case 270:
    case 308:
    case 309:
    case 311:
    case 367:
    case 383:
    case 385:
    case 400:
    case 410:
    case 426:
    case 427:
    case 487:
    case 581:
      result = 0xD00000000000003DLL;
      break;
    case 10:
    case 21:
    case 45:
    case 85:
    case 327:
    case 393:
    case 512:
      result = 0xD00000000000004BLL;
      break;
    case 11:
    case 26:
    case 42:
    case 81:
    case 108:
    case 156:
    case 179:
    case 193:
    case 206:
    case 213:
    case 216:
    case 229:
    case 268:
    case 273:
    case 274:
    case 303:
    case 366:
    case 386:
    case 396:
    case 418:
    case 424:
    case 439:
    case 446:
    case 472:
    case 473:
    case 499:
    case 517:
    case 535:
    case 569:
    case 572:
    case 624:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD000000000000031;
      break;
    case 13:
    case 18:
    case 43:
    case 78:
    case 120:
    case 155:
    case 170:
    case 184:
    case 201:
    case 241:
    case 243:
    case 281:
    case 283:
    case 361:
    case 368:
    case 372:
    case 384:
    case 404:
    case 405:
    case 453:
    case 459:
    case 492:
    case 495:
    case 506:
    case 536:
    case 597:
    case 623:
      result = 0xD00000000000002FLL;
      break;
    case 14:
    case 37:
    case 40:
    case 61:
    case 82:
    case 102:
    case 109:
    case 114:
    case 129:
    case 137:
    case 150:
    case 218:
    case 287:
    case 379:
    case 408:
    case 417:
    case 436:
    case 437:
    case 445:
    case 514:
    case 524:
    case 534:
    case 542:
    case 558:
    case 559:
    case 564:
    case 609:
      result = 0xD000000000000029;
      break;
    case 15:
      result = 0xD000000000000031;
      break;
    case 16:
    case 20:
    case 69:
    case 139:
    case 143:
    case 159:
    case 169:
    case 190:
    case 198:
    case 226:
    case 276:
    case 278:
    case 346:
    case 378:
    case 390:
    case 430:
    case 444:
    case 451:
    case 511:
    case 516:
    case 521:
    case 532:
    case 547:
    case 549:
    case 582:
    case 590:
    case 600:
      result = 0xD000000000000037;
      break;
    case 17:
    case 79:
    case 119:
    case 136:
    case 180:
    case 248:
    case 293:
    case 333:
    case 465:
    case 471:
    case 553:
    case 592:
    case 593:
    case 605:
    case 621:
      result = 0xD00000000000001FLL;
      break;
    case 24:
    case 51:
    case 140:
    case 319:
    case 389:
    case 503:
    case 505:
    case 507:
    case 599:
    case 601:
      result = 0xD000000000000045;
      break;
    case 25:
    case 93:
    case 112:
    case 242:
    case 313:
    case 326:
    case 348:
      result = 0xD00000000000004DLL;
      break;
    case 27:
    case 257:
    case 258:
    case 259:
    case 613:
      result = 0xD000000000000051;
      break;
    case 28:
    case 67:
    case 160:
    case 162:
    case 164:
    case 183:
    case 199:
    case 234:
    case 261:
    case 330:
    case 391:
    case 398:
    case 399:
    case 438:
    case 541:
    case 567:
    case 568:
    case 583:
      result = 0xD00000000000003BLL;
      break;
    case 30:
    case 31:
    case 36:
    case 50:
    case 64:
    case 68:
    case 111:
    case 205:
    case 250:
    case 256:
    case 301:
    case 347:
    case 448:
    case 485:
    case 493:
    case 509:
      result = 0xD000000000000041;
      break;
    case 33:
    case 47:
    case 49:
    case 98:
    case 625:
    case 626:
    case 627:
      result = 0xD00000000000004FLL;
      break;
    case 34:
    case 52:
    case 76:
    case 122:
    case 126:
    case 212:
    case 239:
    case 266:
    case 279:
    case 329:
    case 362:
    case 365:
    case 381:
    case 392:
    case 411:
    case 441:
    case 454:
    case 462:
    case 468:
    case 482:
    case 501:
    case 571:
    case 586:
    case 628:
      result = 0xD00000000000002BLL;
      break;
    case 35:
    case 54:
    case 151:
    case 189:
    case 194:
    case 200:
    case 209:
    case 237:
    case 255:
    case 294:
    case 310:
    case 314:
    case 363:
    case 394:
    case 452:
    case 500:
    case 525:
    case 545:
    case 603:
      result = 0xD00000000000003FLL;
      break;
    case 38:
    case 41:
    case 182:
    case 211:
    case 315:
    case 543:
    case 570:
      result = 0xD000000000000032;
      break;
    case 39:
      result = 0xD000000000000031;
      break;
    case 44:
    case 90:
    case 91:
    case 253:
      result = 0xD000000000000057;
      break;
    case 46:
    case 121:
    case 124:
    case 145:
    case 146:
    case 173:
    case 337:
    case 373:
    case 596:
      result = 0xD000000000000043;
      break;
    case 48:
    case 92:
    case 228:
    case 325:
      result = 0xD000000000000053;
      break;
    case 55:
    case 395:
      result = 0xD000000000000048;
      break;
    case 56:
    case 80:
    case 130:
    case 131:
    case 220:
    case 227:
    case 245:
    case 246:
    case 247:
    case 249:
    case 289:
    case 302:
    case 316:
    case 317:
    case 351:
    case 357:
    case 407:
    case 414:
    case 431:
    case 464:
    case 480:
    case 518:
    case 526:
    case 528:
    case 537:
    case 548:
    case 550:
    case 574:
    case 615:
    case 629:
    case 631:
      result = 0xD000000000000023;
      break;
    case 57:
      result = 0xD000000000000031;
      break;
    case 58:
    case 105:
    case 115:
    case 135:
    case 157:
    case 174:
    case 186:
    case 225:
    case 235:
    case 244:
    case 264:
    case 272:
    case 285:
    case 292:
    case 306:
    case 312:
    case 338:
    case 344:
    case 359:
    case 421:
    case 433:
    case 450:
    case 486:
    case 488:
    case 497:
    case 515:
    case 520:
    case 530:
    case 546:
    case 561:
    case 584:
    case 608:
      result = 0xD000000000000027;
      break;
    case 59:
    case 188:
    case 286:
    case 339:
    case 484:
    case 611:
      result = 0xD000000000000030;
      break;
    case 62:
    case 71:
    case 144:
    case 263:
    case 300:
    case 522:
    case 552:
    case 612:
      result = 0xD00000000000001DLL;
      break;
    case 70:
      result = 0xD000000000000031;
      break;
    case 84:
    case 86:
    case 101:
    case 161:
    case 254:
    case 260:
    case 328:
    case 425:
    case 575:
      result = 0xD000000000000047;
      break;
    case 87:
    case 171:
    case 269:
    case 371:
    case 420:
    case 489:
      result = 0xD00000000000001BLL;
      break;
    case 88:
      result = 0xD000000000000031;
      break;
    case 89:
      result = 0xD000000000000067;
      break;
    case 94:
    case 110:
    case 632:
      result = 0xD00000000000005BLL;
      break;
    case 95:
      result = 0xD000000000000059;
      break;
    case 97:
    case 142:
    case 251:
    case 282:
    case 321:
    case 364:
    case 403:
    case 504:
    case 513:
      result = 0xD000000000000049;
      break;
    case 100:
    case 491:
    case 496:
    case 563:
    case 579:
      result = 0xD00000000000003ELL;
      break;
    case 103:
    case 172:
    case 476:
      result = 0xD000000000000024;
      break;
    case 106:
    case 154:
    case 483:
      result = 0xD000000000000034;
      break;
    case 107:
      result = 0xD000000000000031;
      break;
    case 132:
      result = 0xD000000000000022;
      break;
    case 134:
    case 288:
    case 336:
    case 432:
    case 494:
    case 502:
    case 560:
      result = 0xD000000000000017;
      break;
    case 147:
      result = 0xD000000000000031;
      break;
    case 149:
    case 322:
    case 324:
      result = 0xD000000000000055;
      break;
    case 152:
      result = 0xD000000000000031;
      break;
    case 153:
    case 295:
    case 332:
    case 356:
      result = 0xD00000000000003ALL;
      break;
    case 158:
      result = 0xD000000000000031;
      break;
    case 166:
    case 402:
      result = 0xD000000000000046;
      break;
    case 167:
      result = 0xD000000000000031;
      break;
    case 168:
      result = 0xD000000000000031;
      break;
    case 178:
      result = 0xD000000000000031;
      break;
    case 181:
    case 262:
    case 271:
    case 290:
    case 304:
    case 334:
    case 429:
    case 466:
      result = 0xD000000000000028;
      break;
    case 187:
      result = 0xD000000000000031;
      break;
    case 192:
    case 352:
    case 370:
    case 478:
    case 510:
    case 538:
    case 573:
    case 607:
    case 620:
      result = 0xD000000000000019;
      break;
    case 196:
    case 197:
    case 369:
    case 598:
      result = 0xD000000000000038;
      break;
    case 210:
      result = 0xD000000000000031;
      break;
    case 223:
      result = 0xD000000000000026;
      break;
    case 230:
    case 232:
    case 475:
    case 477:
    case 508:
    case 606:
      result = 0xD00000000000001CLL;
      break;
    case 231:
      result = 0xD000000000000020;
      break;
    case 236:
    case 354:
    case 498:
      result = 0xD00000000000002ALL;
      break;
    case 275:
    case 397:
    case 406:
      result = 0xD00000000000002ELL;
      break;
    case 291:
    case 296:
    case 299:
    case 320:
    case 331:
    case 340:
    case 341:
    case 355:
    case 388:
    case 412:
    case 423:
    case 428:
    case 470:
    case 474:
    case 519:
    case 527:
    case 554:
    case 557:
    case 591:
    case 604:
    case 634:
      result = 0xD000000000000031;
      break;
    case 349:
    case 376:
      result = 0xD000000000000042;
      break;
    case 350:
    case 533:
      result = 0xD000000000000040;
      break;
    case 409:
    case 481:
    case 529:
      result = 0xD00000000000002CLL;
      break;
    case 434:
    case 566:
      result = 0xD000000000000011;
      break;
    case 435:
    case 469:
      result = 0xD000000000000015;
      break;
    case 616:
      result = 0xD000000000000061;
      break;
    case 617:
      result = 0xD000000000000069;
      break;
    case 635:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D4AB8(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v3 = sub_1000D1D70(*a1);
  v5 = v4;
  if (v3 == sub_1000D1D70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1002D8E40();
  }

  return v8 & 1;
}

unint64_t sub_1000D4B44()
{
  result = qword_1004469D8;
  if (!qword_1004469D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469D8);
  }

  return result;
}

Swift::Int sub_1000D4B98()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1000D1D70(v1);
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_1000D4BFC()
{
  sub_1000D1D70(*v0);
  sub_1002D8D40();
}

Swift::Int sub_1000D4C50()
{
  v1 = *v0;
  sub_1002D8E50();
  sub_1000D1D70(v1);
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_1000D4CB0@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000D5EEC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000D4CE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D1D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D4D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{

  result = sub_1000D5EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D4DB0()
{
  v2 = sub_1000CDC88(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t getEnumTagSinglePayload for AccessibilityDynamicDestination(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD85)
  {
    goto LABEL_17;
  }

  if (a2 + 635 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 635 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 635;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 635;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 635;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27C;
  v8 = v6 - 636;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AccessibilityDynamicDestination(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 635 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 635 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD85)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD84)
  {
    v6 = ((a2 - 64901) >> 16) + 1;
    *result = a2 + 635;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 635;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

__n128 sub_1000D4F94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000D4FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D4FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1000D5044(char *a1, int64_t a2, char a3)
{
  result = sub_1000D5084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D5064(char *a1, int64_t a2, char a3)
{
  result = sub_1000D5190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D5084(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000321C(&qword_100446A28, &qword_1002F7728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D5190(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000321C(&qword_100446A20, &qword_1002F7718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_1000D528C()
{
  v22 = sub_1002D87A0();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000321C(&qword_10043CF38, "f'\n");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1002D8910();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000321C(&qword_100446A30, &qword_1002F7748);
  sub_1002D88F0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v18 = sub_1002D8570();
  v23 = 0;
  v24 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v22);
  sub_1000C3A40();
  return sub_1002D85E0();
}

void sub_1000D55A0()
{
  v0 = 0;
  while (1)
  {
    v3 = *(&off_10041E9C8 + v0 + 16);
    v4 = sub_1000D1D5C(v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      break;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D5064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v2 = *(&_swiftEmptyArrayStorage + 2);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    if (v2 >= v1 >> 1)
    {
      sub_1000D5064((v1 > 1), v2 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
    *(&_swiftEmptyArrayStorage + v2 + 16) = v3;
LABEL_5:
    if (++v0 == 636)
    {
      v13 = *(&_swiftEmptyArrayStorage + 2);
      if (v13)
      {
        sub_1000D5044(0, v13, 0);
        v14 = 32;
        v15 = &_swiftEmptyArrayStorage;
        do
        {
          v16 = *(&_swiftEmptyArrayStorage + v14);
          v17 = sub_10000321C(&qword_100446A18, &qword_1002F7700);
          v18 = *(v17 + 48);
          v19 = *(v17 + 52);
          swift_allocObject();
          v20 = sub_1002D8880();
          v27 = v15;
          v22 = v15[2];
          v21 = v15[3];
          if (v22 >= v21 >> 1)
          {
            v24 = v20;
            sub_1000D5044((v21 > 1), v22 + 1, 1);
            v20 = v24;
            v15 = v27;
          }

          v15[2] = v22 + 1;
          v23 = &v15[2 * v22];
          *(v23 + 16) = v16;
          *(v23 + 5) = v20;
          v14 += 2;
          --v13;
        }

        while (v13);
      }

      else
      {

        v15 = &_swiftEmptyArrayStorage;
      }

      v25 = *(v26 + 8);

      v25(v15);
      return;
    }
  }

  v6 = (v4 + 40);
  v7 = -*(v4 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {

      goto LABEL_13;
    }

    if (++v8 >= *(v4 + 16))
    {
      break;
    }

    v9 = v6 + 2;
    v11 = *(v6 - 1);
    v10 = *v6;

    v12 = sub_1002D8D00();

    LOBYTE(v10) = AXHasCapability();

    v6 = v9;
    if ((v10 & 1) == 0)
    {

      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1000D5874()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v30 = v1 + 32;
    while (1)
    {
      v6 = *(v30 + 2 * v3);
      v7 = sub_1000D1D5C(v6);
      v8 = *(v7 + 16);

      if (v8)
      {
        break;
      }

LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D5064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v5 = *(&_swiftEmptyArrayStorage + 2);
      v4 = *(&_swiftEmptyArrayStorage + 3);
      if (v5 >= v4 >> 1)
      {
        sub_1000D5064((v4 > 1), v5 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
      *(&_swiftEmptyArrayStorage + v5 + 16) = v6;
LABEL_6:
      if (++v3 == v2)
      {
        goto LABEL_16;
      }
    }

    v9 = (v7 + 40);
    v10 = -*(v7 + 16);
    v11 = -1;
    while (1)
    {
      if (v10 + v11 == -1)
      {

        goto LABEL_14;
      }

      if (++v11 >= *(v7 + 16))
      {
        break;
      }

      v12 = v9 + 2;
      v14 = *(v9 - 1);
      v13 = *v9;

      v15 = sub_1002D8D00();

      LOBYTE(v13) = AXHasCapability();

      v9 = v12;
      if ((v13 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v16 = *(&_swiftEmptyArrayStorage + 2);
    if (v16)
    {
      sub_1000D5044(0, v16, 0);
      v17 = 32;
      v18 = &_swiftEmptyArrayStorage;
      do
      {
        v19 = *(&_swiftEmptyArrayStorage + v17);
        v20 = sub_10000321C(&qword_100446A18, &qword_1002F7700);
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        swift_allocObject();
        v23 = sub_1002D8880();
        v31 = v18;
        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v27 = v23;
          sub_1000D5044((v24 > 1), v25 + 1, 1);
          v23 = v27;
          v18 = v31;
        }

        v18[2] = v25 + 1;
        v26 = &v18[2 * v25];
        *(v26 + 16) = v19;
        *(v26 + 5) = v23;
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    else
    {

      v18 = &_swiftEmptyArrayStorage;
    }

    v28 = *(v29 + 8);

    v28(v18);
  }
}

void sub_1000D5B50()
{
  v0 = 0;
  while (1)
  {
    v3 = *(&off_10041E9C8 + v0 + 16);
    v4 = sub_1000D1D5C(v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      break;
    }

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D5064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v2 = *(&_swiftEmptyArrayStorage + 2);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    if (v2 >= v1 >> 1)
    {
      sub_1000D5064((v1 > 1), v2 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
    *(&_swiftEmptyArrayStorage + v2 + 16) = v3;
LABEL_5:
    if (++v0 == 636)
    {
      if (*(&_swiftEmptyArrayStorage + 2))
      {
        v13 = *(&_swiftEmptyArrayStorage + 16);

        v14 = sub_10000321C(&qword_100446A18, &qword_1002F7700);
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        v17 = sub_1002D8880();
      }

      else
      {

        v13 = 0;
        v17 = 0;
      }

      v18 = *(v19 + 8);

      v18(v13, v17);
      return;
    }
  }

  v6 = (v4 + 40);
  v7 = -*(v4 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {

      goto LABEL_13;
    }

    if (++v8 >= *(v4 + 16))
    {
      break;
    }

    v9 = v6 + 2;
    v11 = *(v6 - 1);
    v10 = *v6;

    v12 = sub_1002D8D00();

    LOBYTE(v10) = AXHasCapability();

    v6 = v9;
    if ((v10 & 1) == 0)
    {

      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1000D5D90()
{
  sub_1000D5044(0, 636, 0);
  v1 = &stru_100000020;
  v2 = &_swiftEmptyArrayStorage;
  do
  {
    v3 = *(&off_10041E9C8 + v1);
    v4 = sub_10000321C(&qword_100446A18, &qword_1002F7700);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = sub_1002D8880();
    v14 = v2;
    v9 = v2[2];
    v8 = v2[3];
    if (v9 >= v8 >> 1)
    {
      v11 = v7;
      sub_1000D5044((v8 > 1), v9 + 1, 1);
      v7 = v11;
      v2 = v14;
    }

    v2[2] = v9 + 1;
    v10 = &v2[2 * v9];
    *(v10 + 16) = v3;
    *(v10 + 5) = v7;
    v1 += 2;
  }

  while (v1 != 1304);
  v12 = *(v0 + 8);

  return v12(v2);
}

uint64_t sub_1000D5EEC(uint64_t a1, void *a2)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  sub_10000321C(&qword_1004469F0, &qword_1002F76B8);
  v2 = swift_allocObject();
  v9 = sub_10001EA94(v2, 636);
  *v3 = "root";
  *(v3 + 8) = 4;
  *(v3 + 48) = "ACCESSIBILITY_READER_AUTOMATICALLY_START_SPEAKING_ACCESSIBILITY_READER_AUTOMATICALLY_START_SPEAKING_DESCRIPTION";
  *(v3 + 72) = "ACCESSIBILITY_SHORTCUT_ACCESSIBILITY_SHORTCUT_DESCRIPTION";
  *(v3 + 96) = "ACCESSIBILITY_SHORTCUT_GA_ACCESSIBILITY_SHORTCUT_DESCRIPTION";
  *(v3 + 120) = "ACTIONS_FEEDBACK_ACTIONS_FEEDBACK_DESCRIPTION";
  *(v3 + 144) = "ACTION_CONFIRMATION_ACTION_CONFIRMATION_DESCRIPTION";
  *(v3 + 168) = "ACTIVE_PUNCTUATION_ACTIVE_PUNCTUATION_DESCRIPTION";
  *(v3 + 192) = "ACTIVITIES_ACTIVITIES_DESCRIPTION";
  *(v3 + 216) = "ADAPTIVE_VOICE_SHORTCUTS_ADAPTIVE_VOICE_SHORTCUTS_DESCRIPTION";
  *(v3 + 240) = "ADAPTIVE_VOICE_SHORTCUTS_SET_UP_ADAPTIVE_VOICE_SHORTCUTS_SET_UP_DESCRIPTION";
  *(v3 + 264) = "ADD_ACTIVITY_ADD_ACTIVITY_DESCRIPTION";
  *(v3 + 288) = "ADD_AUDIO_IN_CALLS_ADD_AUDIO_IN_CALLS_DESCRIPTION";
  *(v3 + 312) = "ADD_BRAILLE_TABLE_ADD_BRAILLE_TABLE_DESCRIPTION";
  *(v3 + 336) = "ADD_NEW_SWITCH_ADD_NEW_SWITCH_DESCRIPTION";
  *(v3 + 360) = "ADD_NEW_SWITCH_SET_ADD_NEW_SWITCH_SET_DESCRIPTION";
  *(v3 + 384) = "ADD_PUNCTUATION_GROUP_ADD_PUNCTUATION_GROUP_DESCRIPTION";
  *(v3 + 408) = "ADD_VOICE_ADD_VOICE_DESCRIPTION";
  *(v3 + 432) = "ADJUST_ZOOM_LEVEL_ADJUST_ZOOM_LEVEL_DESCRIPTION";
  *(v3 + 456) = "AIRPODS_AUDIO_SETTINGS_AIRPODS_AUDIO_SETTINGS_DESCRIPTION";
  *(v3 + 480) = "AIRPODS_FOLLOW_IPHONE_AIRPODS_FOLLOW_IPHONE_DESCRIPTION";
  *(v3 + 504) = "AIRPODS_PRESS_AND_HOLD_DURATION_AIRPODS_PRESS_AND_HOLD_DURATION_DESCRIPTION";
  *(v3 + 528) = "AIRPODS_PRESS_SPEED_AIRPODS_PRESS_SPEED_DESCRIPTION";
  *(v3 + 552) = "AIRPODS_TONE_VOLUME_AIRPODS_TONE_VOLUME_DESCRIPTION";
  *(v3 + 576) = "ALIGN_DISPLAYS_AUTOMATICALLY_ALIGN_DISPLAYS_AUTOMATICALLY_DESCRIPTION";
  *(v3 + 600) = "ALLOW_APPS_TO_ADD_AUDIO_IN_CALLS_ALLOW_APPS_TO_ADD_AUDIO_IN_CALLS_DESCRIPTION";
  *(v3 + 624) = "ALL_COMMANDS_ALL_COMMANDS_DESCRIPTION";
  *(v3 + 648) = "ALWAYS_ALLOW_SIRI_VOICE_ACTIVATION_ALWAYS_ALLOW_SIRI_VOICE_ACTIVATION_DESCRIPTION";
  *(v3 + 672) = "ALWAYS_PLAY_SIRI_SOUNDS_ALWAYS_PLAY_SIRI_SOUNDS_DESCRIPTION";
  *(v3 + 696) = "ALWAYS_SHOW_MENU_ALWAYS_SHOW_MENU_DESCRIPTION";
  *(v3 + 720) = "ALWAYS_SHOW_VOLUME_CONTROL_ALWAYS_SHOW_VOLUME_CONTROL_DESCRIPTION";
  *(v3 + 744) = "ALWAYS_SPEAK_NOTIFICATIONS_ALWAYS_SPEAK_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 768) = "ALWAYS_TAP_KEYBOARD_KEYS_ALWAYS_TAP_KEYBOARD_KEYS_DESCRIPTION";
  *(v3 + 792) = "ANNOUNCE_NOTIFICATIONS_ON_SPEAKER_ANNOUNCE_NOTIFICATIONS_ON_SPEAKER_DESCRIPTION";
  *(v3 + 816) = "APPLE_TV_REMOTE_APPLE_TV_REMOTE_DESCRIPTION";
  *(v3 + 840) = "APPLE_WATCH_REMOTE_SCREEN_APPLE_WATCH_REMOTE_SCREEN_DESCRIPTION";
  *(v3 + 864) = "APPLY_TO_VIDEO_PASSTHROUGH_APPLY_TO_VIDEO_PASSTHROUGH_DESCRIPTION";
  *(v3 + 888) = "APP_FEEDBACK_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 912) = "APP_FEEDBACK_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 936) = "APP_HOVER_FEEDBACK_APP_HOVER_FEEDBACK_DESCRIPTION";
  *(v3 + 960) = "ASSISTIVETOUCH_ASSISTIVETOUCH_DESCRIPTION";
  *(v3 + 984) = "ASSISTIVETOUCH_ASSISTIVETOUCH_VISIONOS_DESCRIPTION";
  *(v3 + 1008) = "AST_KEYBOARD_AST_KEYBOARD_DESCRIPTION";
  *(v3 + 1032) = "AST_THREE_D_TOUCH_AST_THREE_D_TOUCH_DESCRIPTION";
  *(v3 + 1056) = "AST_USE_EXTENDED_KEYBOARD_PREDICTIONS_AST_USE_EXTENDED_KEYBOARD_PREDICTIONS_DESCRIPTION";
  *(v3 + 1064) = 87;
  *(v3 + 1080) = "AST_VIRTUAL_TRACKPAD_APPEARANCE_AST_VIRTUAL_TRACKPAD_APPEARANCE_DESCRIPTION";
  *(v3 + 1104) = "AST_VIRTUAL_TRACKPAD_BORDER_AST_VIRTUAL_TRACKPAD_BORDER_DESCRIPTION";
  *(v3 + 1128) = "AST_VIRTUAL_TRACKPAD_BORDER_COLOR_AST_VIRTUAL_TRACKPAD_BORDER_COLOR_DESCRIPTION";
  *(v3 + 1152) = "AST_VIRTUAL_TRACKPAD_BORDER_OPACITY_AST_VIRTUAL_TRACKPAD_BORDER_OPACITY_DESCRIPTION";
  *(v3 + 1176) = "AST_VIRTUAL_TRACKPAD_BORDER_WIDTH_AST_VIRTUAL_TRACKPAD_BORDER_WIDTH_DESCRIPTION";
  *(v3 + 1200) = "AST_VIRTUAL_TRACKPAD_COLOR_AST_VIRTUAL_TRACKPAD_COLOR_DESCRIPTION";
  *(v3 + 1224) = "AST_VIRTUAL_TRACKPAD_OPACITY_AST_VIRTUAL_TRACKPAD_OPACITY_DESCRIPTION";
  *(v3 + 1248) = "ATTENTION_AWARE_ATTENTION_AWARE_DESCRIPTION";
  *(v3 + 1272) = "ATTENTION_AWARE_FEATURES_ATTENTION_AWARE_FEATURES_DESCRIPTION";
  *(v3 + 1296) = "AT_SHOW_ONSCREEN_KEYBOARD_AT_SHOW_ONSCREEN_KEYBOARD_DESCRIPTION";
  *(v3 + 1320) = "AT_SHOW_ONSCREEN_KEYBOARD_AT_SHOW_ONSCREEN_KEYBOARD_VISIONOS_DESCRIPTION";
  *(v3 + 1344) = "AUDIOVISUAL_AUDIOVISUAL_DESCRIPTION";
  *(v3 + 1368) = "AUDIO_DESCRIPTIONS_AUDIO_DESCRIPTIONS_DESCRIPTION";
  *(v3 + 1392) = "AUDIO_DUCKING_AUDIO_DUCKING_DESCRIPTION";
  *(v3 + 1416) = "AUTOANSWER_CALLS_AUTOANSWER_CALLS_AV_DESCRIPTION";
  *(v3 + 1440) = "AUTOANSWER_CALLS_AUTOANSWER_CALLS_DESCRIPTION";
  *(v3 + 1464) = "AUTOBRIGHTNESS_AUTOBRIGHTNESS_DESCRIPTION";
  *(v3 + 1488) = "AUTOHIDE_AUTOHIDE_DESCRIPTION";
  *(v3 + 1512) = "AUTOHIDE_FOCUS_RING_AUTOHIDE_FOCUS_RING_DESCRIPTION";
  *(v3 + 1536) = "AUTOMATICALLY_HIDE_POINTER_AUTOMATICALLY_HIDE_POINTER_DESCRIPTION";
  *(v3 + 1560) = "AUTOPLAY_ANIMATED_IMAGES_AUTOPLAY_ANIMATED_IMAGES_DESCRIPTION";
  *(v3 + 1584) = "AUTOPLAY_MESSAGE_EFFECTS_AUTOPLAY_MESSAGE_EFFECTS_DESCRIPTION";
  *(v3 + 1608) = "AUTOPLAY_VIDEO_PREVIEWS_AUTOPLAY_VIDEO_PREVIEWS_DESCRIPTION";
  *(v3 + 1632) = "AUTOSELECT_SPEAKER_IN_CALL_AUTOSELECT_SPEAKER_IN_CALL_DESCRIPTION";
  *(v3 + 1656) = "AUTO_ADVANCE_DURATION_AUTO_ADVANCE_DURATION_DESCRIPTION";
  *(v3 + 1680) = "AUTO_SCANNING_TIME_AUTO_SCANNING_TIME_DESCRIPTION";
  *(v3 + 1704) = "BACK_TAP_BACK_TAP_DESCRIPTION";
  *(v3 + 1728) = "BACK_TAP_DOUBLE_TAP_BACK_TAP_DOUBLE_TAP_DESCRIPTION";
  *(v3 + 1752) = "BACK_TAP_TRIPLE_TAP_BACK_TAP_TRIPLE_TAP_DESCRIPTION";
  *(v3 + 1776) = "BANNER_NOTIFICATIONS_BANNER_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 1800) = "BG_SOUNDS_EQUALIZER_BG_SOUNDS_EQUALIZER_DESCRIPTION";
  *(v3 + 1824) = "BG_SOUNDS_TIMER_BG_SOUNDS_TIMER_DESCRIPTION";
  *(v3 + 1848) = "BLUETOOTH_DEVICES_AST_BLUETOOTH_DEVICES_DESCRIPTION";
  *(v3 + 1864) = 2;
  *(v3 + 1872) = "BLUETOOTH_DEVICES_BLUETOOTH_DEVICES_DESCRIPTION";
  *(v3 + 1888) = 2;
  *(v3 + 1896) = "BOLD_TEXT_BOLD_TEXT_DESCRIPTION";
  *(v3 + 1904) = 31;
  *(v3 + 1912) = 2;
  *(v3 + 1920) = "BOTTOM_LEFT_BOTTOM_LEFT_DESCRIPTION";
  *(v3 + 1928) = 35;
  *(v3 + 1936) = 2;
  *(v3 + 1944) = "BOTTOM_RIGHT_BOTTOM_RIGHT_DESCRIPTION";
  *(v3 + 1952) = 37;
  *(v3 + 1960) = 2;
  *(v3 + 1968) = "BRAILLE_ACCESS_BRAILLE_ACCESS_DESCRIPTION";
  *(v3 + 1976) = 41;
  *(v3 + 1984) = 2;
  *(v3 + 1992) = "BRAILLE_ALERT_MESSAGES_BRAILLE_ALERT_MESSAGES_DESCRIPTION";
  *(v3 + 2000) = 57;
  *(v3 + 2008) = 2;
  *(v3 + 2016) = "BRAILLE_ALERT_MESSAGES_ENABLE_BRAILLE_ALERT_MESSAGES_ENABLE_DESCRIPTION";
  *(v3 + 2024) = 71;
  *(v3 + 2040) = "BRAILLE_ALERT_MESSAGES_INFINITE_BRAILLE_ALERT_MESSAGES_INFINITE_DESCRIPTION";
  *(v3 + 2064) = "BRAILLE_AUTOMATIC_TRANSLATION_BRAILLE_AUTOMATIC_TRANSLATION_DESCRIPTION";
  *(v3 + 2072) = 71;
  *(v3 + 2080) = 2;
  *(v3 + 2088) = "BRAILLE_BRAILLE_DESCRIPTION";
  *(v3 + 2112) = "BRAILLE_FORMATTING_BRAILLE_FORMATTING_DESCRIPTION";
  *(v3 + 2120) = 49;
  *(v3 + 2128) = 2;
  *(v3 + 2136) = "BRAILLE_GESTURES_AUTO_ACTIVATE_ON_TEXT_FIELDS_BRAILLE_GESTURES_AUTO_ACTIVATE_ON_TEXT_FIELDS_DESCRIPTION";
  *(v3 + 2144) = 103;
  *(v3 + 2152) = 2;
  *(v3 + 2160) = "BRAILLE_GESTURES_CHOOSE_BRAILLE_TABLE_BRAILLE_GESTURES_CHOOSE_BRAILLE_TABLE_DESCRIPTION";
  *(v3 + 2168) = 87;
  *(v3 + 2176) = 2;
  *(v3 + 2184) = "BRAILLE_GESTURES_DISPLAY_ENTERED_TEXT_BRAILLE_GESTURES_DISPLAY_ENTERED_TEXT_DESCRIPTION";
  *(v3 + 2192) = 87;
  *(v3 + 2200) = 2;
  *(v3 + 2208) = "BRAILLE_GESTURES_MODE_ANNOUNCEMENTS_BRAILLE_GESTURES_MODE_ANNOUNCEMENTS_DESCRIPTION";
  *(v3 + 2216) = 83;
  *(v3 + 2224) = 2;
  *(v3 + 2232) = "BRAILLE_GESTURES_TYPING_FEEDBACK_BRAILLE_GESTURES_TYPING_FEEDBACK_DESCRIPTION";
  *(v3 + 2240) = 77;
  *(v3 + 2248) = 2;
  *(v3 + 2256) = "BRAILLE_GESTURES_TYPING_FEEDBACK_HAPTIC_BRAILLE_GESTURES_TYPING_FEEDBACK_HAPTIC_DESCRIPTION";
  *(v3 + 2264) = 91;
  *(v3 + 2272) = 2;
  *(v3 + 2280) = "BRAILLE_GESTURES_TYPING_FEEDBACK_SOUND_BRAILLE_GESTURES_TYPING_FEEDBACK_SOUND_DESCRIPTION";
  *(v3 + 2288) = 89;
  *(v3 + 2296) = 2;
  *(v3 + 2304) = "BRAILLE_INPUT_OUTPUT_BRAILLE_INPUT_OUTPUT_DESCRIPTION";
  *(v3 + 2312) = 53;
  *(v3 + 2320) = 2;
  *(v3 + 2328) = "BRAILLE_KEYBOARD_INPUT_COMMAND_BRAILLE_KEYBOARD_INPUT_COMMAND_DESCRIPTION";
  *(v3 + 2336) = 73;
  *(v3 + 2344) = 2;
  *(v3 + 2352) = "BRAILLE_MATCH_INPUT_OUTPUT_TABLES_BRAILLE_MATCH_INPUT_OUTPUT_TABLES_DESCRIPTION";
  *(v3 + 2360) = 79;
  *(v3 + 2376) = "BRAILLE_SCREEN_INPUT_BRAILLE_SCREEN_INPUT_DESCRIPTION";
  *(v3 + 2384) = 53;
  *(v3 + 2392) = 2;
  *(v3 + 2400) = "BRAILLE_SCREEN_INPUT_COMMANDS_BRAILLE_SCREEN_INPUT_DESCRIPTION";
  *(v3 + 2408) = 62;
  *(v3 + 2416) = 2;
  *(v3 + 2424) = "BRAILLE_SCREEN_KEYBOARD_INPUT_BRAILLE_SCREEN_KEYBOARD_INPUT_DESCRIPTION";
  *(v3 + 2432) = 71;
  *(v3 + 2440) = 2;
  *(v3 + 2448) = "BRAILLE_TABLES_BRAILLE_TABLES_DESCRIPTION";
  *(v3 + 2456) = 41;
  *(v3 + 2464) = 2;
  *(v3 + 2472) = "BRAILLE_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 2480) = 36;
  *(v3 + 2488) = 2;
  *(v3 + 2496) = "BRAILLE_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 2504) = 45;
  *(v3 + 2512) = 2;
  *(v3 + 2520) = "BUTTON_SHAPES_BUTTON_SHAPES_DESCRIPTION";
  *(v3 + 2528) = 39;
  *(v3 + 2536) = 2;
  *(v3 + 2544) = "CALL_AUDIO_ROUTING_CALL_AUDIO_ROUTING_AV_DESCRIPTION";
  *(v3 + 2552) = 52;
  *(v3 + 2568) = "CALL_AUDIO_ROUTING_CALL_AUDIO_ROUTING_DESCRIPTION";
  *(v3 + 2592) = "CALL_HANG_UP_CALL_HANG_UP_DESCRIPTION";
  *(v3 + 2616) = "CAMERA_CONTROL_CAMERA_CONTROL_DESCRIPTION";
  *(v3 + 2640) = "CAMERA_CONTROL_DOUBLE_LIGHT_PRESS_SPEED_CAMERA_CONTROL_DOUBLE_LIGHT_PRESS_SPEED_DESCRIPTION";
  *(v3 + 2664) = "CAMERA_CONTROL_LIGHT_PRESS_CAMERA_CONTROL_LIGHT_PRESS_DESCRIPTION";
  *(v3 + 2688) = "CAMERA_CONTROL_LIGHT_PRESS_FORCE_CAMERA_CONTROL_LIGHT_PRESS_FORCE_DESCRIPTION";
  *(v3 + 2712) = "CAMERA_CONTROL_SWIPE_CAMERA_CONTROL_SWIPE_DESCRIPTION";
  *(v3 + 2736) = "CAPITAL_LETTER_CAPITAL_LETTER_DESCRIPTION";
  *(v3 + 2760) = "CAPTION_PANEL_CAPTION_PANEL_DESCRIPTION";
  *(v3 + 2784) = "CHOOSE_BRAILLE_DISPLAY_CHOOSE_BRAILLE_DISPLAY_DESCRIPTION";
  *(v3 + 2808) = "CLARITYUI_ALLOW_SIRI_CLARITYUI_ALLOW_SIRI_DESCRIPTION";
  *(v3 + 2832) = "CLARITYUI_APPLICATIONS_CLARITYUI_APPLICATIONS_DESCRIPTION";
  *(v3 + 2856) = "CLARITYUI_CLARITYUI_DESCRIPTION";
  *(v3 + 2880) = "CLARITYUI_OPTIONS_CLARITYUI_OPTIONS_DESCRIPTION";
  *(v3 + 2904) = "CLARITYUI_PASSCODE_SETTINGS_CLARITYUI_PASSCODE_SETTINGS_DESCRIPTION";
  *(v3 + 2928) = "CLARITYUI_SETUP_CLARITYUI_SETUP_DESCRIPTION";
  *(v3 + 2952) = "CLARITYUI_SHOW_BATTERY_CLARITYUI_SHOW_BATTERY_DESCRIPTION";
  *(v3 + 2976) = "CLARITYUI_SHOW_NOTIFICATION_CLARITYUI_SHOW_NOTIFICATION_DESCRIPTION";
  *(v3 + 3000) = "CLARITYUI_SHOW_TIME_CLARITYUI_SHOW_TIME_DESCRIPTION";
  *(v3 + 3024) = "CLARITYUI_START_CLARITYUI_START_DESCRIPTION";
  *(v3 + 3048) = "CLARITYUI_VOLUME_BUTTONS_CLARITYUI_VOLUME_BUTTONS_DESCRIPTION";
  *(v3 + 3072) = "CLARITYUI_WALLPAPER_CLARITYUI_WALLPAPER_DESCRIPTION";
  *(v3 + 3096) = "CLASSIC_INVERT_CLASSIC_INVERT_DESCRIPTION";
  *(v3 + 3120) = "CLICK_SPEED_HOME_BUTTON_DESCRIPTION";
  *(v3 + 2560) = 2;
  *(v3 + 3144) = "CLICK_SPEED_SIDE_BUTTON_DESCRIPTION";
  *(v3 + 3168) = "CLICK_SPEED_TOP_BUTTON_DESCRIPTION";
  *(v3 + 3176) = 34;
  *(v3 + 3192) = "CLOSED_CAPTIONS_SDH_CLOSED_CAPTIONS_SDH_DESCRIPTION";
  *(v3 + 3216) = "COLOR_COLOR_DESCRIPTION";
  *(v3 + 3240) = "COLOR_FILTERS_COLOR_FILTERS_DESCRIPTION";
  *(v3 + 3264) = "COLOR_FKA_COLOR_DESCRIPTION_FKA";
  *(v3 + 3288) = "COMFORT_SOUNDS_COMFORT_SOUNDS_DESCRIPTION";
  *(v3 + 3312) = "COMFORT_SOUNDS_LOCK_COMFORT_SOUNDS_LOCK_DESCRIPTION";
  *(v3 + 3336) = "COMFORT_SOUNDS_MIXING_COMFORT_SOUNDS_MIXING_DESCRIPTION";
  *(v3 + 3360) = "COMFORT_SOUNDS_MIXING_VOLUME_COMFORT_SOUNDS_MIXING_VOLUME_DESCRIPTION";
  *(v3 + 3384) = "COMFORT_SOUNDS_SOUND_COMFORT_SOUNDS_SOUND_DESCRIPTION";
  *(v3 + 3408) = "COMFORT_SOUNDS_STOP_WITH_TIMER_COMFORT_SOUNDS_STOP_WITH_TIMER_DESCRIPTION";
  *(v3 + 3432) = "COMFORT_SOUNDS_VOLUME_COMFORT_SOUNDS_VOLUME_DESCRIPTION";
  *(v3 + 3456) = "COMMANDS_COMMANDS_DESCRIPTION";
  *(v3 + 3480) = "CONFIRM_WITH_ASSISTIVETOUCH_CONFIRM_WITH_ASSISTIVETOUCH_DESCRIPTION";
  *(v3 + 3504) = "CONFIRM_WITH_SWITCH_CONTROL_CONFIRM_WITH_SWITCH_CONTROL_DESCRIPTION";
  *(v3 + 3528) = "CONTAINER_FEEDBACK_CONTAINER_FEEDBACK_DESCRIPTION";
  *(v3 + 3552) = "CONTROLLER_COLOR_CONTROLLER_COLOR_DESCRIPTION";
  *(v3 + 3576) = "CONTROL_DEVICE_USING_BRAILLE_GESTURE_CONTROL_DEVICE_USING_BRAILLE_GESTURE_DESCRIPTION";
  *(v3 + 3600) = "CONTROL_NEARBY_CONTROL_NEARBY_DESCRIPTION";
  *(v3 + 3624) = "CREATE_NEW_CUSTOM_COMMAND_CREATE_NEW_CUSTOM_COMMAND_DESCRIPTION";
  *(v3 + 3648) = "CREATE_NEW_GESTURE_CREATE_NEW_GESTURE_DESCRIPTION";
  *(v3 + 3672) = "CREATE_NEW_GESTURE_CREATE_NEW_GESTURE_VISIONOS_DESCRIPTION";
  *(v3 + 3696) = "CREATE_NEW_GESTURE_SC_CREATE_NEW_GESTURE_DESCRIPTION";
  *(v3 + 3720) = "CREATE_NEW_RECIPE_CREATE_NEW_RECIPE_DESCRIPTION";
  *(v3 + 3744) = "CURSOR_COLOR_CURSOR_COLOR_DESCRIPTION";
  *(v3 + 3768) = "CURSOR_OUTPUT_CURSOR_OUTPUT_DESCRIPTION";
  *(v3 + 3792) = "CUSTOMIZE_COMMANDS_CUSTOMIZE_COMMANDS_DESCRIPTION";
  *(v3 + 3816) = "CUSTOMIZE_MENU_DEVICE_CUSTOMIZE_MENU_DEVICE_DESCRIPTION";
  *(v3 + 3840) = "CUSTOMIZE_MENU_GESTURES_CUSTOMIZE_MENU_GESTURES_DESCRIPTION";
  *(v3 + 3864) = "CUSTOMIZE_MENU_MEDIA_CONTROLS_CUSTOMIZE_MENU_MEDIA_CONTROLS_DESCRIPTION";
  *(v3 + 3888) = "CUSTOMIZE_MENU_SETTINGS_CUSTOMIZE_MENU_SETTINGS_DESCRIPTION";
  *(v3 + 3912) = "CUSTOMIZE_MENU_TOP_LEVEL_CUSTOMIZE_MENU_TOP_LEVEL_DESCRIPTION";
  *(v3 + 3936) = "CUSTOMIZE_MOUSE_BUTTONS_CUSTOMIZE_MOUSE_BUTTONS_DESCRIPTION";
  *(v3 + 3960) = "CUSTOMIZE_TOP_LEVEL_MENU_CUSTOMIZE_TOP_LEVEL_MENU_DESCRIPTION";
  *(v3 + 3984) = "CUSTOMIZE_TOP_LEVEL_MENU_CUSTOMIZE_TOP_LEVEL_MENU_VISIONOS_DESCRIPTION";
  *(v3 + 4008) = "CUSTOM_AUDIO_SETUP_CUSTOM_AUDIO_SETUP_DESCRIPTION";
  *(v3 + 4032) = "DELAY_UNTIL_REPEAT_DELAY_UNTIL_REPEAT_DESCRIPTION";
  *(v3 + 4056) = "DELETE_ALL_VOCABULARY_DELETE_ALL_VOCABULARY_DESCRIPTION";
  *(v3 + 4080) = "DELETION_FEEDBACK_DELETION_FEEDBACK_DESCRIPTION";
  *(v3 + 4104) = "DEVICES_DEVICES_DESCRIPTION";
  *(v3 + 4128) = "DEVICES_DEVICES_VISIONOS_DESCRIPTION";
  *(v3 + 4152) = "DIFFERENTIATE_WITHOUT_COLOR_DIFFERENTIATE_WITHOUT_COLOR_DESCRIPTION";
  *(v3 + 4176) = "DIGITAL_CROWN_DIGITAL_CROWN_DESCRIPTION";
  *(v3 + 4200) = "DIM_FLASHING_LIGHTS_DIM_FLASHING_LIGHTS_DESCRIPTION";
  *(v3 + 4224) = "DIRECTIONAL_BUTTONS_DIRECTIONAL_BUTTONS_DESCRIPTION";
  *(v3 + 4248) = "DISPLAY_AUTOLOCK_DISPLAY_AUTOLOCK_DESCRIPTION";
  *(v3 + 4272) = "DISPLAY__TEXT_SIZE_DISPLAY__TEXT_SIZE_DESCRIPTION";
  *(v3 + 4296) = "DOMINANT_EYE_DOMINANT_EYE_DESCRIPTION";
  *(v3 + 4320) = "DOUBLETAP_DOUBLETAP_DESCRIPTION";
  *(v3 + 4344) = "DOUBLETAP_DOUBLETAP_VISIONOS_DESCRIPTION";
  *(v3 + 4368) = "DOUBLETAP_TIMEOUT_AT_DOUBLETAP_TIMEOUT_DESCRIPTION";
  *(v3 + 4392) = "DOUBLETAP_TIMEOUT_AT_DOUBLETAP_TIMEOUT_DESCRIPTION_VISIONOS";
  *(v3 + 4416) = "DOUBLETAP_TIMEOUT_DOUBLETAP_TIMEOUT_DESCRIPTION";
  *(v3 + 4440) = "DOUBLE_PINCH_TIMEOUT_DOUBLE_PINCH_TIMEOUT_DESCRIPTION";
  *(v3 + 4464) = "DWELL_CONTROL_DWELL_CONTROL_DESCRIPTION";
  *(v3 + 4488) = "DWELL_CONTROL_DWELL_CONTROL_TOP_LEVEL_DESCRIPTION";
  *(v3 + 4512) = "DWELL_CONTROL_DWELL_CONTROL_VISIONOS_DESCRIPTION";
  *(v3 + 4536) = "DWELL_CONTROL_MENU_FOLLOW_DWELL_CONTROL_MENU_FOLLOW_DESCRIPTION";
  *(v3 + 4560) = "DWELL_CONTROL_TIMEOUT_DWELL_CONTROL_TIMEOUT_DESCRIPTION";
  *(v3 + 4584) = "EDIT_APPS_ON_HOME_SCREEN_EDIT_APPS_ON_HOME_SCREEN_DESCRIPTION";
  *(v3 + 4608) = "EMOJIS_EMOJIS_DESCRIPTION";
  *(v3 + 4632) = "EMOJI_SUFFIX_EMOJI_SUFFIX_DESCRIPTION";
  *(v3 + 4656) = "ENABLE_BLUETOOTH_ON_START_ENABLE_BLUETOOTH_ON_START_DESCRIPTION";
  *(v3 + 4680) = "ENABLE_CONFRIM_ASSISTIVETOUCH_SIDE_BUTTON_AST_DESCRIPTION";
  *(v3 + 4704) = "ENABLE_CONFRIM_ASSISTIVETOUCH_TOP_BUTTON_AST_DESCRIPTION";
  *(v3 + 4728) = "ENABLE_CONFRIM_SWITCH_CONTROL_SIDE_BUTTON_SC_DESCRIPTION";
  *(v3 + 4752) = "ENABLE_CONFRIM_SWITCH_CONTROL_TOP_BUTTON_SC_DESCRIPTION";
  *(v3 + 4776) = "ENHANCE_TEXT_LEGIBILITY_ENHANCE_TEXT_LEGIBILITY_DESCRIPTION";
  *(v3 + 4800) = "EQUATIONS_USE_NEMETH_CODE_EQUATIONS_USE_NEMETH_CODE_DESCRIPTION";
  *(v3 + 4824) = "EXPORT_VOCABULARY_EXPORT_VOCABULARY_DESCRIPTION";
  *(v3 + 4848) = "EXTENDED_PREDICTIONS_EXTENDED_PREDICTIONS_DESCRIPTION";
  *(v3 + 4872) = "EXTENDED_VOICE_ISOLATION_EXTENDED_VOICE_ISOLATION_DESCRIPTION";
  *(v3 + 4896) = "EYE_TRACKING_AUTO_HIDE_EYE_TRACKING_AUTO_HIDE_DESCRIPTION";
  *(v3 + 4920) = "EYE_TRACKING_DWELL_CONTROL_EYE_TRACKING_DWELL_CONTROL_DESCRIPTION";
  *(v3 + 4944) = "EYE_TRACKING_EYE_TRACKING_DESCRIPTION";
  *(v3 + 4968) = "EYE_TRACKING_SMOOTHING_EYE_TRACKING_SMOOTHING_DESCRIPTION";
  *(v3 + 4992) = "EYE_TRACKING_SNAP_TO_ITEM_EYE_TRACKING_SMOOTHING_DESCRIPTION";
  *(v3 + 5016) = "EYE_TRACKING_ZOOM_ON_KEYS_EYE_TRACKING_ZOOM_ON_KEYS_DESCRIPTION";
  *(v3 + 5040) = "FACE_ID__ATTENTION_FACE_ID__ATTENTION_DESCRIPTION";
  *(v3 + 5064) = "FACE_TIME_CAPTIONS_LIVE_TRANSCRIPTIONS_DESCRIPTION";
  *(v3 + 5088) = "FALLBACK_ACTION_FALLBACK_ACTION_DESCRIPTION";
  *(v3 + 5112) = "FKA_COMMANDS_FKA_COMMANDS_DESCRIPTION";
  *(v3 + 5136) = "FLASHLIGHT_NOTIFICATIONS_FLASHLIGHT_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 5160) = "FOCUSED_ITEM_AFTER_TAP_FOCUSED_ITEM_AFTER_TAP_DESCRIPTION";
  *(v3 + 5184) = "FOLLOW_FOCUS_FOLLOW_FOCUS_DESCRIPTION";
  *(v3 + 5208) = "FULL_KEYBOARD_ACCESS_FULL_KEYBOARD_ACCESS_DESCRIPTION";
  *(v3 + 5232) = "GLIDING_CURSOR_GLIDING_CURSOR_DESCRIPTION";
  *(v3 + 5256) = "GLIDING_CURSOR_SPEED_GLIDING_CURSOR_SPEED_DESCRIPTION";
  *(v3 + 5280) = "GROUP_ITEMS_GROUP_ITEMS_DESCRIPTION";
  *(v3 + 5304) = "GUEST_PASS_GUEST_PASS_DESCRIPTION";
  *(v3 + 2368) = 2;
  *(v3 + 5328) = "GUEST_PASS_SETTINGS_TRANSFER_GUEST_PASS_DESCRIPTION";
  *(v3 + 5352) = "GUEST_PASS_SYNC_GUEST_PASS_DESCRIPTION";
  *(v3 + 5360) = 38;
  *(v3 + 5376) = "GUIDED_ACCESS_FACEID_GUIDED_ACCESS_FACEID_DESCRIPTION";
  *(v3 + 5400) = "GUIDED_ACCESS_GUIDED_ACCESS_DESCRIPTION";
  *(v3 + 5424) = "GUIDED_ACCESS_TOUCHID_GUIDED_ACCESS_TOUCHID_DESCRIPTION";
  *(v3 + 5448) = "HANDWRITING_HANDWRITING_DESCRIPTION";
  *(v3 + 5472) = "HAPTIC_ON_SUCCESSFUL_AUTHENTICATION_HAPTIC_ON_SUCCESSFUL_AUTHENTICATION_DESCRIPTION";
  *(v3 + 5496) = "HAPTIC_TOUCH_HAPTIC_TOUCH_DESCRIPTION";
  *(v3 + 5520) = "HARDWARE_TTY_RTT_DESCRIPTION";
  *(v3 + 5544) = "HARDWARE_TTY_RTT_TTY_DESCRIPTION";
  *(v3 + 5552) = 32;
  *(v3 + 5568) = "HARDWARE_TTY_TTY_DESCRIPTION";
  *(v3 + 5592) = "HEADPHONE_ACCOMMODATIONS_HEADPHONE_ACCOMMODATIONS_DESCRIPTION";
  *(v3 + 5616) = "HEADPHONE_NOTIFICATIONS_HEADPHONE_NOTIFICATIONS_DESCRIPTION";
  *(v3 + 5640) = "HEAD_TRACKING_HEAD_TRACKING_DESCRIPTION";
  *(v3 + 5664) = "HEAD_TRACKING_SC_HEAD_TRACKING_DESCRIPTION";
  *(v3 + 5688) = "HEARING_AID_COMPATIBILITY_HEARING_AID_COMPATIBILITY_DESCRIPTION";
  *(v3 + 5712) = "HEARING_CONTROL_CENTER_HEARING_CONTROL_CENTER_DESCRIPTION";
  *(v3 + 5736) = "HEARING_DEVICES_HEARING_DEVICES_DESCRIPTION";
  *(v3 + 5760) = "HIGHLIGHT_CONTENT_COLORS_HIGHLIGHT_CONTENT_COLORS_DESCRIPTION";
  *(v3 + 5784) = "HIGHLIGHT_CONTENT_HIGHLIGHT_CONTENT_DESCRIPTION";
  *(v3 + 5808) = "HIGHLIGHT_CONTENT_SENTENCE_STYLE_HIGHLIGHT_CONTENT_SENTENCE_STYLE_DESCRIPTION";
  *(v3 + 5832) = "HIGHLIGHT_CONTROL_HIGHLIGHT_CONTROL_DESCRIPTION";
  *(v3 + 5856) = "HIGH_CONTRAST_HIGH_CONTRAST_DESCRIPTION";
  *(v3 + 5880) = "HINTS_TITLE_HINTS_TITLE_DESCRIPTION";
  *(v3 + 5904) = "HOME_BUTTON_HOME_BUTTON_DESCRIPTION";
  *(v3 + 5928) = "HOT_CORNERS_HOT_CORNERS_DESCRIPTION";
  *(v3 + 5952) = "HOVERTEXT_HOVERTEXT_DESCRIPTION";
  *(v3 + 5976) = "HOVERTYPING_HOVERTYPING_DESCRIPTION";
  *(v3 + 6000) = "HOVER_TEXT_ACTIVATION_LOCK_HOVER_TEXT_ACTIVATION_LOCK_DESCRIPTION";
  *(v3 + 6024) = "HOVER_TEXT_ACTIVATION_MODIFIER_HOVER_TEXT_ACTIVATION_MODIFIER_DESCRIPTION";
  *(v3 + 6048) = "HOVER_TEXT_COLOR_OPTIONS_HOVER_TEXT_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 6072) = "HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_HOVER_TYPING_AUTOCORRECTED_WORD_COLOR_DESCRIPTION";
  *(v3 + 2096) = 27;
  *(v3 + 2104) = 2;
  *(v3 + 2032) = 2;
  *(v3 + 2048) = 75;
  *(v3 + 2056) = 2;
  *(v3 + 6080) = 87;
  *(v3 + 6096) = "HOVER_TYPING_BACKGROUND_COLOR_HOVER_TYPING_BACKGROUND_COLOR_DESCRIPTION";
  *(v3 + 6120) = "HOVER_TYPING_BORDER_COLOR_HOVER_TYPING_BORDER_COLOR_DESCRIPTION";
  *(v3 + 6144) = "HOVER_TYPING_COLOR_OPTIONS_HOVER_TYPING_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 6168) = "HOVER_TYPING_DISPLAY_COLOR_OPTIONS_HOVER_TYPING_DISPLAY_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 6192) = "HOVER_TYPING_INSERTION_POINT_COLOR_HOVER_TYPING_INSERTION_POINT_COLOR_DESCRIPTION";
  *(v3 + 6216) = "HOVER_TYPING_MISSPELLED_WORD_COLOR_HOVER_TYPING_MISSPELLED_WORD_COLOR_DESCRIPTION";
  *(v3 + 6240) = "HOVER_TYPING_RESET_TO_DEFAULT_HOVER_TYPING_RESET_TO_DEFAULT_DESCRIPTION";
  *(v3 + 6264) = "HOVER_TYPING_TEXT_COLOR_HOVER_TYPING_TEXT_COLOR_DESCRIPTION";
  *(v3 + 6288) = "HTT_DISPLAY_MODE_HOVERTYPING_DESCRIPTION";
  *(v3 + 6312) = "HTT_FONT_HTT_FONT_DESCRIPTION";
  *(v3 + 6336) = "HTT_TEXT_SIZE_HTT_TEXT_SIZE_DESCRIPTION";
  *(v3 + 6360) = "HT_BACKGROUND_COLOR_HT_BACKGROUND_COLOR_DESCRIPTION";
  *(v3 + 6384) = "HT_BORDER_COLOR_HT_BORDER_COLOR_DESCRIPTION";
  *(v3 + 6408) = "HT_CONTENT_HT_CONTENT_DESCRIPTION";
  *(v3 + 6432) = "HT_DISPLAY_MODE_HOVERTEXT_DESCRIPTION";
  *(v3 + 6456) = "HT_FONT_HT_FONT_DESCRIPTION";
  *(v3 + 6480) = "HT_INSERTION_POINT_COLOR_HT_INSERTION_POINT_COLOR_DESCRIPTION";
  *(v3 + 6504) = "HT_SCROLLING_SPEED_HOVERTEXT_DESCRIPTION";
  *(v3 + 6528) = "HT_TEXT_COLOR_HT_TEXT_COLOR_DESCRIPTION";
  *(v3 + 6552) = "HT_TEXT_SIZE_HT_TEXT_SIZE_DESCRIPTION";
  *(v3 + 1880) = 47;
  *(v3 + 6576) = "IDLE_OPACITY_IDLE_OPACITY_DESCRIPTION";
  *(v3 + 6600) = "IDLE_OPACITY_IDLE_OPACITY_VISIONOS_DESCRIPTION";
  *(v3 + 6624) = "IGNORE_CHORD_DURATION_IGNORE_CHORD_DURATION_DESCRIPTION";
  *(v3 + 1832) = 43;
  *(v3 + 1840) = 2;
  *(v3 + 1856) = 51;
  *(v3 + 1808) = 51;
  *(v3 + 1816) = 2;
  *(v3 + 6648) = "IGNORE_EYE_MOVEMENTS_IGNORE_EYE_MOVEMENTS_DESCRIPTION";
  *(v3 + 6672) = "IGNORE_INVALID_SWITCH_IGNORE_INVALID_SWITCH_DESCRIPTION";
  *(v3 + 1784) = 53;
  *(v3 + 1792) = 2;
  *(v3 + 6696) = "IGNORE_TRACKPAD_IGNORE_TRACKPAD_DESCRIPTION";
  *(v3 + 6720) = "IMPORT_CUSTOM_COMMANDS_IMPORT_CUSTOM_COMMANDS_DESCRIPTION";
  *(v3 + 1760) = 51;
  *(v3 + 1768) = 2;
  *(v3 + 1736) = 51;
  *(v3 + 1744) = 2;
  *(v3 + 6744) = "IMPORT_VOCABULARY_IMPORT_VOCABULARY_DESCRIPTION";
  *(v3 + 6768) = "INCLUDED_MODULES_SECTION_TITLE_INCLUDED_MODULES_SECTION_TITLE_DESCRIPTION";
  *(v3 + 1696) = 2;
  *(v3 + 1712) = 29;
  *(v3 + 1720) = 2;
  *(v3 + 1672) = 2;
  *(v3 + 1688) = 49;
  *(v3 + 6792) = "INCREASE_CONTRAST_INCREASE_CONTRAST_DESCRIPTION";
  *(v3 + 6816) = "INCREASE_FOCUS_STATE_INCREASE_FOCUS_STATE_DESCRIPTION";
  *(v3 + 1648) = 2;
  *(v3 + 1664) = 55;
  *(v3 + 6840) = "INITIAL_DELAY_INITIAL_DELAY_DESCRIPTION";
  *(v3 + 1616) = 59;
  *(v3 + 1624) = 2;
  *(v3 + 1640) = 65;
  *(v3 + 1592) = 61;
  *(v3 + 1600) = 2;
  *(v3 + 6864) = "INITIAL_DELAY_INITIAL_DELAY_VISIONOS_DESCRIPTION";
  *(v3 + 6888) = "INPUT_FEEDBACK_INPUT_FEEDBACK_DESCRIPTION";
  *(v3 + 1568) = 61;
  *(v3 + 1576) = 2;
  *(v3 + 6912) = "INPUT_INPUT_DESCRIPTION";
  *(v3 + 6936) = "INTERACTION_INTERACTION_DESCRIPTION";
  *(v3 + 1544) = 65;
  *(v3 + 1552) = 2;
  *(v3 + 6960) = "INTERACTION_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 1504) = 2;
  *(v3 + 1520) = 51;
  *(v3 + 1528) = 2;
  *(v3 + 6984) = "INTERACTION_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 1472) = 41;
  *(v3 + 1480) = 2;
  *(v3 + 1496) = 29;
  *(v3 + 7008) = "ITEM_OVERVIEW_ITEM_OVERVIEW_DESCRIPTION";
  *(v3 + 1448) = 45;
  *(v3 + 1456) = 2;
  *(v3 + 1424) = 48;
  *(v3 + 1432) = 2;
  *(v3 + 7032) = "KEYBOARDS_KEYBOARDS_DESCRIPTION";
  *(v3 + 7056) = "KEYBOARD_INTERACTION_TIME_KEYBOARD_INTERACTION_TIME_DESCRIPTION";
  *(v3 + 1400) = 39;
  *(v3 + 1408) = 2;
  *(v3 + 7080) = "KEYBOARD_SHORTCUTS_COMMANDS_KEYBOARD_SHORTCUTS_DESCRIPTION";
  *(v3 + 7104) = "KEYBOARD_SHORTCUTS_KEYBOARD_SHORTCUTS_DESCRIPTION";
  *(v3 + 1376) = 49;
  *(v3 + 1384) = 2;
  *(v3 + 7128) = "KEY_REPEAT_INTERVAL_KEY_REPEAT_INTERVAL_DESCRIPTION";
  *(v3 + 1352) = 35;
  *(v3 + 1360) = 2;
  *(v3 + 1328) = 72;
  *(v3 + 1336) = 2;
  *(v3 + 7152) = "KEY_REPEAT_KEY_REPEAT_DESCRIPTION";
  *(v3 + 7176) = "LANGUAGE_DETECTION_LANGUAGE_DETECTION_DESCRIPTION";
  *(v3 + 1288) = 2;
  *(v3 + 1304) = 63;
  *(v3 + 1312) = 2;
  *(v3 + 1264) = 2;
  *(v3 + 1280) = 61;
  *(v3 + 7200) = "LANGUAGE_LANGUAGE_DESCRIPTION";
  *(v3 + 7224) = "LARGER_ACCESSIBILITY_SIZES_LARGER_ACCESSIBILITY_SIZES_DESCRIPTION";
  *(v3 + 1232) = 69;
  *(v3 + 1240) = 2;
  *(v3 + 1256) = 43;
  *(v3 + 1208) = 65;
  *(v3 + 1216) = 2;
  *(v3 + 7248) = "LARGER_TEXT_LARGER_TEXT_DESCRIPTION";
  *(v3 + 24) = "ACCESSIBILITY_READER_ACCESSIBILITY_READER_DESCRIPTION";
  *(v3 + 32) = 53;
  *(v3 + 1160) = 83;
  *(v3 + 1168) = 2;
  *(v3 + 1184) = 79;
  *(v3 + 1192) = 2;
  *(v3 + 16) = 2;
  *(v3 + 1112) = 67;
  *(v3 + 1120) = 2;
  *(v3 + 1136) = 79;
  *(v3 + 1144) = 2;
  *(v3 + 40) = 2;
  *(v3 + 56) = 111;
  *(v3 + 1072) = 2;
  *(v3 + 1088) = 75;
  *(v3 + 1096) = 2;
  *(v3 + 64) = 2;
  *(v3 + 80) = 57;
  *(v3 + 88) = 2;
  *(v3 + 1024) = 2;
  *(v3 + 1040) = 47;
  *(v3 + 1048) = 2;
  *(v3 + 104) = 60;
  *(v3 + 976) = 2;
  *(v3 + 992) = 50;
  *(v3 + 1000) = 2;
  *(v3 + 1016) = 37;
  *(v3 + 112) = 2;
  *(v3 + 128) = 45;
  *(v3 + 928) = 2;
  *(v3 + 944) = 49;
  *(v3 + 952) = 2;
  *(v3 + 968) = 41;
  *(v3 + 136) = 2;
  *(v3 + 152) = 51;
  *(v3 + 880) = 2;
  *(v3 + 896) = 41;
  *(v3 + 904) = 2;
  *(v3 + 920) = 50;
  *(v3 + 160) = 2;
  *(v3 + 176) = 49;
  *(v3 + 832) = 2;
  *(v3 + 848) = 63;
  *(v3 + 856) = 2;
  *(v3 + 872) = 65;
  *(v3 + 184) = 2;
  *(v3 + 200) = 33;
  *(v3 + 784) = 2;
  *(v3 + 800) = 79;
  *(v3 + 808) = 2;
  *(v3 + 824) = 43;
  *(v3 + 208) = 2;
  *(v3 + 224) = 61;
  *(v3 + 736) = 2;
  *(v3 + 752) = 65;
  *(v3 + 760) = 2;
  *(v3 + 776) = 61;
  *(v3 + 232) = 2;
  *(v3 + 248) = 75;
  *(v3 + 256) = 2;
  *(v3 + 704) = 45;
  *(v3 + 712) = 2;
  *(v3 + 728) = 65;
  *(v3 + 272) = 37;
  *(v3 + 656) = 81;
  *(v3 + 664) = 2;
  *(v3 + 680) = 59;
  *(v3 + 688) = 2;
  *(v3 + 280) = 2;
  *(v3 + 296) = 49;
  *(v3 + 608) = 77;
  *(v3 + 616) = 2;
  *(v3 + 632) = 37;
  *(v3 + 640) = 2;
  *(v3 + 304) = 2;
  *(v3 + 320) = 47;
  *(v3 + 560) = 51;
  *(v3 + 568) = 2;
  *(v3 + 584) = 69;
  *(v3 + 592) = 2;
  *(v3 + 328) = 2;
  *(v3 + 344) = 41;
  *(v3 + 512) = 75;
  *(v3 + 520) = 2;
  *(v3 + 536) = 51;
  *(v3 + 544) = 2;
  *(v3 + 352) = 2;
  *(v3 + 368) = 49;
  *(v3 + 464) = 57;
  *(v3 + 472) = 2;
  *(v3 + 488) = 55;
  *(v3 + 496) = 2;
  *(v3 + 376) = 2;
  *(v3 + 392) = 55;
  *(v3 + 416) = 31;
  *(v3 + 424) = 2;
  *(v3 + 440) = 47;
  *(v3 + 448) = 2;
  *(v3 + 400) = 2;
  *(v3 + 2576) = 49;
  *(v3 + 2584) = 2;
  *(v3 + 2600) = 37;
  *(v3 + 2608) = 2;
  *(v3 + 2624) = 41;
  *(v3 + 2632) = 2;
  *(v3 + 2648) = 91;
  *(v3 + 2656) = 2;
  *(v3 + 2672) = 65;
  *(v3 + 2680) = 2;
  *(v3 + 2696) = 77;
  *(v3 + 2704) = 2;
  *(v3 + 2720) = 53;
  *(v3 + 2728) = 2;
  *(v3 + 2744) = 41;
  *(v3 + 2752) = 2;
  *(v3 + 2768) = 39;
  *(v3 + 2776) = 2;
  *(v3 + 2792) = 57;
  *(v3 + 2800) = 2;
  *(v3 + 2816) = 53;
  *(v3 + 2824) = 2;
  *(v3 + 2840) = 57;
  *(v3 + 2848) = 2;
  *(v3 + 2864) = 31;
  *(v3 + 2872) = 2;
  *(v3 + 2888) = 47;
  *(v3 + 2896) = 2;
  *(v3 + 2912) = 67;
  *(v3 + 2920) = 2;
  *(v3 + 2936) = 43;
  *(v3 + 2944) = 2;
  *(v3 + 2960) = 57;
  *(v3 + 2968) = 2;
  *(v3 + 2984) = 67;
  *(v3 + 2992) = 2;
  *(v3 + 3008) = 51;
  *(v3 + 3016) = 2;
  *(v3 + 3032) = 43;
  *(v3 + 3040) = 2;
  *(v3 + 3056) = 61;
  *(v3 + 3064) = 2;
  *(v3 + 3080) = 51;
  *(v3 + 3088) = 2;
  *(v3 + 3104) = 41;
  *(v3 + 3112) = 2;
  *(v3 + 3128) = 35;
  *(v3 + 3136) = 2;
  *(v3 + 3152) = 35;
  *(v3 + 3160) = 2;
  *(v3 + 3184) = 2;
  *(v3 + 3200) = 51;
  *(v3 + 3208) = 2;
  *(v3 + 3224) = 23;
  *(v3 + 3232) = 2;
  *(v3 + 3248) = 39;
  *(v3 + 3256) = 2;
  *(v3 + 7264) = 2;
  *(v3 + 7272) = "LARGE_CURSOR_LARGE_CURSOR_DESCRIPTION";
  *(v3 + 7296) = "LARGE_CURSOR_SC_LARGE_CURSOR_DESCRIPTION";
  *(v3 + 7320) = "LARGE_FOCUS_RING_LARGE_FOCUS_RING_DESCRIPTION";
  *(v3 + 7344) = "LAUNCH_RECIPE_LAUNCH_RECIPE_DESCRIPTION";
  *(v3 + 7368) = "LED_FLASH_FOR_ALERTS_LED_FLASH_FOR_ALERTS_DESCRIPTION";
  *(v3 + 7392) = "LED_FLASH_IN_SILENT_MODE_LED_FLASH_IN_SILENT_MODE_DESCRIPTION";
  *(v3 + 7416) = "LED_FLASH_WHILE_UNLOCKED_LED_FLASH_WHILE_UNLOCKED_DESCRIPTION";
  *(v3 + 7440) = "LEFT_RIGHT_STEREO_BALANCE_LEFT_RIGHT_STEREO_BALANCE_DESCRIPTION";
  *(v3 + 7464) = "LINK_ATTACHMENT_FEEDBACK_LINK_ATTACHMENT_FEEDBACK_DESCRIPTION";
  *(v3 + 7488) = "LIST_POSITION_LIST_POSITION_DESCRIPTION";
  *(v3 + 7512) = "LIVE_CAPTIONS_IDLE_OPACITY_TITLE_LIVE_CAPTIONS_IDLE_OPACITY_TITLE_DESCRIPTION";
  *(v3 + 7536) = "LIVE_CAPTIONS_LARGER_TEXT_LIVE_CAPTIONS_LARGER_TEXT_DESCRIPTION";
  *(v3 + 7560) = "LIVE_LISTEN_CONTROL_NEARBY_LIVE_LISTEN_DESCRIPTION";
  *(v3 + 7584) = "LIVE_LISTEN_LIVE_LISTEN_DESCRIPTION";
  *(v3 + 7608) = "LIVE_SPEECH_LIVE_SPEECH_DESCRIPTION";
  *(v3 + 7632) = "LIVE_SPEECH_PHRASES_LIVE_SPEECH_PHRASES_DESCRIPTION";
  *(v3 + 7656) = "LIVE_SPEECH_PREFERRED_VOICES_LIVE_SPEECH_PREFERRED_VOICES_DESCRIPTION";
  *(v3 + 7680) = "LIVE_SPEECH_VOICES_LIVE_SPEECH_VOICES_DESCRIPTION";
  *(v3 + 7704) = "LIVE_TRANSCRIPTIONS_APPEARANCE_LIVE_TRANSCRIPTIONS_APPEARANCE_DESCRIPTION";
  *(v3 + 7728) = "LIVE_TRANSCRIPTIONS_CURRENT_LANGUAGE_LIVE_TRANSCRIPTIONS_CURRENT_LANGUAGE_DESCRIPTION";
  *(v3 + 7752) = "LIVE_TRANSCRIPTIONS_LIVE_TRANSCRIPTIONS_DESCRIPTION";
  *(v3 + 7776) = "LIVE_TRANSCRIPTIONS_TRANSCRIBE_CALLS_LIVE_TRANSCRIPTIONS_TRANSCRIBE_CALLS_DESCRIPTION";
  *(v3 + 3584) = 85;
  *(v3 + 7736) = 85;
  *(v3 + 7784) = 85;
  *(v3 + 7800) = "LIVE_TRANSCRIPTION_BACKGROUND_COLOR_LIVE_TRANSCRIPTION_BACKGROUND_COLOR_DESCRIPTION";
  *(v3 + 5480) = 83;
  *(v3 + 7808) = 83;
  *(v3 + 7824) = "LIVE_TRANSCRIPTION_COLOR_OPTIONS_LIVE_TRANSCRIPTION_COLOR_OPTIONS_DESCRIPTION";
  *(v3 + 7848) = "LIVE_TRANSCRIPTION_RESET_COLORS_LIVE_TRANSCRIPTION_RESET_COLORS_DESCRIPTION";
  *(v3 + 7872) = "LIVE_TRANSCRIPTION_TEXT_COLOR_LIVE_TRANSCRIPTION_TEXT_COLOR_DESCRIPTION";
  *(v3 + 7896) = "LIVE_TV_BUTTONS_LIVE_TV_BUTTONS_DESCRIPTION";
  *(v3 + 7920) = "LOCK_BUTTON_TO_END_CALL_LOCK_BUTTON_TO_END_CALL_DESCRIPTION";
  *(v3 + 7944) = "LONGPRESS_DURATION_LONGPRESS_DURATION_DESCRIPTION";
  *(v3 + 7992) = "LONGPRESS_LONGPRESS_DESCRIPTION";
  *(v3 + 8016) = "LONGPRESS_LONGPRESS_VISIONOS_DESCRIPTION";
  *(v3 + 8040) = "LONG_PRESS_LONG_PRESS_DESCRIPTION";
  *(v3 + 8064) = "LOOPS_LOOPS_DESCRIPTION";
  *(v3 + 8088) = "MAGNIFYING_GLASS_CROWN_ZOOM_MAGNIFYING_GLASS_CROWN_ZOOM_DESCRIPTION";
  *(v3 + 8112) = "MAXIMUM_SPEED_MAXIMUM_SPEED_DESCRIPTION";
  *(v3 + 8136) = "MAXIMUM_SPEED_MAXIMUM_SPEED_VISIONOS_DESCRIPTION";
  *(v3 + 8160) = "MAXIMUM_ZOOM_LEVEL_MAXIMUM_ZOOM_LEVEL_DESCRIPTION";
  *(v3 + 8184) = "MEDIA_DESCRIPTIONS_MEDIA_DESCRIPTIONS_DESCRIPTION";
  *(v3 + 4096) = 2;
  *(v3 + 4120) = 2;
  *(v3 + 4144) = 2;
  *(v3 + 4168) = 2;
  *(v3 + 4192) = 2;
  *(v3 + 4216) = 2;
  *(v3 + 4240) = 2;
  *(v3 + 4264) = 2;
  *(v3 + 4288) = 2;
  *(v3 + 4312) = 2;
  *(v3 + 4336) = 2;
  *(v3 + 4360) = 2;
  *(v3 + 4384) = 2;
  *(v3 + 4408) = 2;
  *(v3 + 4432) = 2;
  *(v3 + 4456) = 2;
  *(v3 + 4480) = 2;
  *(v3 + 4504) = 2;
  *(v3 + 4528) = 2;
  *(v3 + 4552) = 2;
  *(v3 + 4576) = 2;
  *(v3 + 4600) = 2;
  *(v3 + 4624) = 2;
  *(v3 + 4648) = 2;
  *(v3 + 4672) = 2;
  *(v3 + 4696) = 2;
  *(v3 + 4720) = 2;
  *(v3 + 4744) = 2;
  *(v3 + 4768) = 2;
  *(v3 + 4792) = 2;
  *(v3 + 4816) = 2;
  *(v3 + 4840) = 2;
  *(v3 + 4864) = 2;
  *(v3 + 4888) = 2;
  *(v3 + 4912) = 2;
  *(v3 + 4936) = 2;
  *(v3 + 4960) = 2;
  *(v3 + 4984) = 2;
  *(v3 + 6952) = 2;
  *(v3 + 6968) = 40;
  *(v3 + 5008) = 2;
  *(v3 + 5032) = 2;
  *(v3 + 6904) = 2;
  *(v3 + 6920) = 23;
  *(v3 + 6928) = 2;
  *(v3 + 6944) = 35;
  *(v3 + 5056) = 2;
  *(v3 + 5080) = 2;
  *(v3 + 6856) = 2;
  *(v3 + 6872) = 48;
  *(v3 + 6880) = 2;
  *(v3 + 6896) = 41;
  *(v3 + 5104) = 2;
  *(v3 + 5128) = 2;
  *(v3 + 6808) = 2;
  *(v3 + 6824) = 53;
  *(v3 + 6832) = 2;
  *(v3 + 6848) = 39;
  *(v3 + 5152) = 2;
  *(v3 + 5176) = 2;
  *(v3 + 6760) = 2;
  *(v3 + 6776) = 73;
  *(v3 + 6784) = 2;
  *(v3 + 6800) = 47;
  *(v3 + 5200) = 2;
  *(v3 + 5224) = 2;
  *(v3 + 6712) = 2;
  *(v3 + 6728) = 57;
  *(v3 + 6736) = 2;
  *(v3 + 6752) = 47;
  *(v3 + 5248) = 2;
  *(v3 + 5272) = 2;
  *(v3 + 6664) = 2;
  *(v3 + 6680) = 55;
  *(v3 + 6688) = 2;
  *(v3 + 6704) = 43;
  *(v3 + 5296) = 2;
  *(v3 + 5320) = 2;
  *(v3 + 5344) = 2;
  *(v3 + 6632) = 55;
  *(v3 + 6640) = 2;
  *(v3 + 6656) = 53;
  *(v3 + 5368) = 2;
  *(v3 + 6584) = 37;
  *(v3 + 6592) = 2;
  *(v3 + 6608) = 46;
  *(v3 + 6616) = 2;
  *(v3 + 5392) = 2;
  *(v3 + 5416) = 2;
  *(v3 + 6536) = 39;
  *(v3 + 6544) = 2;
  *(v3 + 6560) = 37;
  *(v3 + 6568) = 2;
  *(v3 + 5440) = 2;
  *(v3 + 5456) = 35;
  *(v3 + 6488) = 61;
  *(v3 + 6496) = 2;
  *(v3 + 6512) = 40;
  *(v3 + 6520) = 2;
  *(v3 + 5464) = 2;
  *(v3 + 5488) = 2;
  *(v3 + 6440) = 37;
  *(v3 + 6448) = 2;
  *(v3 + 6464) = 27;
  *(v3 + 6472) = 2;
  *(v3 + 5504) = 37;
  *(v3 + 5512) = 2;
  *(v3 + 6392) = 43;
  *(v3 + 6400) = 2;
  *(v3 + 6416) = 33;
  *(v3 + 6424) = 2;
  *(v3 + 5528) = 28;
  *(v3 + 6344) = 39;
  *(v3 + 6352) = 2;
  *(v3 + 6368) = 51;
  *(v3 + 6376) = 2;
  *(v3 + 5536) = 2;
  *(v3 + 5560) = 2;
  *(v3 + 6296) = 40;
  *(v3 + 6304) = 2;
  *(v3 + 6320) = 29;
  *(v3 + 6328) = 2;
  *(v3 + 5576) = 28;
  *(v3 + 5584) = 2;
  *(v3 + 6248) = 71;
  *(v3 + 6256) = 2;
  *(v3 + 6272) = 59;
  *(v3 + 6280) = 2;
  *(v3 + 5600) = 61;
  *(v3 + 5608) = 2;
  *(v3 + 6200) = 81;
  *(v3 + 6208) = 2;
  *(v3 + 6224) = 81;
  *(v3 + 6232) = 2;
  *(v3 + 5624) = 59;
  *(v3 + 5632) = 2;
  *(v3 + 6152) = 65;
  *(v3 + 6160) = 2;
  *(v3 + 6176) = 81;
  *(v3 + 6184) = 2;
  *(v3 + 5648) = 39;
  *(v3 + 5656) = 2;
  *(v3 + 6112) = 2;
  *(v3 + 6128) = 63;
  *(v3 + 6136) = 2;
  *(v3 + 5672) = 42;
  *(v3 + 5680) = 2;
  *(v3 + 5696) = 63;
  *(v3 + 6064) = 2;
  *(v3 + 6088) = 2;
  *(v3 + 6104) = 71;
  *(v3 + 5704) = 2;
  *(v3 + 5720) = 57;
  *(v3 + 6016) = 2;
  *(v3 + 6032) = 73;
  *(v3 + 6040) = 2;
  *(v3 + 6056) = 61;
  *(v3 + 5728) = 2;
  *(v3 + 5744) = 43;
  *(v3 + 5968) = 2;
  *(v3 + 5984) = 35;
  *(v3 + 5992) = 2;
  *(v3 + 6008) = 65;
  *(v3 + 5752) = 2;
  *(v3 + 5768) = 61;
  *(v3 + 5920) = 2;
  *(v3 + 5936) = 35;
  *(v3 + 5944) = 2;
  *(v3 + 5960) = 31;
  *(v3 + 5776) = 2;
  *(v3 + 5792) = 47;
  *(v3 + 5872) = 2;
  *(v3 + 5888) = 35;
  *(v3 + 5896) = 2;
  *(v3 + 5912) = 35;
  *(v3 + 5800) = 2;
  *(v3 + 5816) = 77;
  *(v3 + 5824) = 2;
  *(v3 + 5840) = 47;
  *(v3 + 5848) = 2;
  *(v3 + 5864) = 39;
  *(v3 + 6976) = 2;
  *(v3 + 7000) = 2;
  *(v3 + 7024) = 2;
  *(v3 + 7048) = 2;
  *(v3 + 7072) = 2;
  *(v3 + 7096) = 2;
  *(v3 + 7120) = 2;
  *(v3 + 7144) = 2;
  *(v3 + 7168) = 2;
  *(v3 + 7192) = 2;
  *(v3 + 7216) = 2;
  *(v3 + 7240) = 2;
  *(v3 + 7288) = 2;
  *(v3 + 7312) = 2;
  *(v3 + 7336) = 2;
  *(v3 + 7360) = 2;
  *(v3 + 7384) = 2;
  *(v3 + 7408) = 2;
  *(v3 + 7432) = 2;
  *(v3 + 7456) = 2;
  *(v3 + 7480) = 2;
  *(v3 + 7504) = 2;
  *(v3 + 7528) = 2;
  *(v3 + 7552) = 2;
  *(v3 + 7576) = 2;
  *(v3 + 7600) = 2;
  *(v3 + 7624) = 2;
  *(v3 + 7648) = 2;
  *(v3 + 7672) = 2;
  *(v3 + 7696) = 2;
  *(v3 + 7720) = 2;
  *(v3 + 7744) = 2;
  *(v3 + 7768) = 2;
  *(v3 + 7792) = 2;
  *(v3 + 7816) = 2;
  *(v3 + 7840) = 2;
  *(v3 + 7864) = 2;
  *(v3 + 7888) = 2;
  *(v3 + 7912) = 2;
  *(v3 + 7936) = 2;
  *(v3 + 7984) = 2;
  *(v3 + 8008) = 2;
  *(v3 + 8032) = 2;
  *(v3 + 8056) = 2;
  *(v3 + 8080) = 2;
  *(v3 + 8104) = 2;
  *(v3 + 8128) = 2;
  *(v3 + 8152) = 2;
  *(v3 + 8176) = 2;
  *(v3 + 7960) = 2;
  *(v3 + 8208) = "MENU_ITEMS_MENU_ITEMS_DESCRIPTION";
  *(v3 + 8232) = "MFI_HEARING_DEVICES_MFI_HEARING_DEVICES_DESCRIPTION";
  *(v3 + 8256) = "MODIFIER_KEYS_MODIFIER_KEYS_DESCRIPTION";
  *(v3 + 5432) = 55;
  *(v3 + 8280) = "MONO_AUDIO_MONO_AUDIO_DESCRIPTION";
  *(v3 + 5408) = 39;
  *(v3 + 8304) = "MORE_CONTENT_FEEDBACK_MORE_CONTENT_FEEDBACK_DESCRIPTION";
  *(v3 + 5384) = 53;
  *(v3 + 8328) = "MORE_MODULES_SECTION_TITLE_MORE_MODULES_SECTION_TITLE_DESCRIPTION";
  *(v3 + 8352) = "MOTION_CUES_CUSTOMIZE_APPEARANCE_MOTION_CUES_CUSTOMIZE_APPEARANCE_DESCRIPTION";
  *(v3 + 7520) = 77;
  *(v3 + 7832) = 77;
  *(v3 + 8360) = 77;
  *(v3 + 8376) = "MOTION_CUES_LARGER_DOTS_MOTION_CUES_APPEARANCE_SETTING_DESCRIPTION";
  *(v3 + 8400) = "MOTION_CUES_MORE_DOTS_MOTION_CUES_APPEARANCE_SETTING_DESCRIPTION";
  *(v3 + 5336) = 51;
  *(v3 + 8424) = "MOTION_CUES_MOTION_CUES_DESCRIPTION";
  *(v3 + 5312) = 33;
  *(v3 + 8448) = "MOTION_MOTION_DESCRIPTION";
  *(v3 + 5288) = 35;
  *(v3 + 8472) = "MOUSE_KEYS_MOUSE_KEYS_DESCRIPTION";
  *(v3 + 8496) = "MOUSE_KEYS_MOUSE_VISIONOS_KEYS_DESCRIPTION";
  *(v3 + 8520) = "MOVEMENT_TOLERANCE_MOVEMENT_TOLERANCE_DESCRIPTION";
  *(v3 + 5264) = 53;
  *(v3 + 8544) = "MOVEMENT_TOLERANCE_MOVEMENT_TOLERANCE_VISIONOS_DESCRIPTION";
  *(v3 + 5240) = 41;
  *(v3 + 8568) = "MOVE_REPEAT_MOVE_REPEAT_DESCRIPTION";
  *(v3 + 5216) = 53;
  *(v3 + 8592) = "MOVE_ZOOM_WINDOW_MOVE_ZOOM_WINDOW_DESCRIPTION";
  *(v3 + 8616) = "MUSIC_HAPTICS_MUSIC_HAPTICS_DESCRIPTION";
  *(v3 + 8640) = "NAME_RECOGNITION_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 8664) = "NATURAL_SCROLLING_NATURAL_SCROLLING_DESCRIPTION";
  *(v3 + 8688) = "NAVIGATE_IMAGES_NAVIGATE_IMAGES_DESCRIPTION";
  *(v3 + 5192) = 37;
  *(v3 + 8712) = "NOTIFICATIONS_WHEN_LOCKED_NOTIFICATIONS_WHEN_LOCKED_DESCRIPTION";
  *(v3 + 5168) = 57;
  *(v3 + 8736) = "NOTIFICATION_USE_RINGER_SWITCH_NOTIFICATION_USE_RINGER_SWITCH_DESCRIPTION";
  *(v3 + 5144) = 61;
  *(v3 + 8760) = "NUMBER_FEEDBACK_NUMBER_FEEDBACK_DESCRIPTION";
  *(v3 + 8784) = "ONOFF_LABELS_ONOFF_LABELS_DESCRIPTION";
  *(v3 + 8808) = "OPEN_VOICE_CONTROL_GUIDE_OPEN_VOICE_CONTROL_GUIDE_DESCRIPTION";
  *(v3 + 5120) = 37;
  *(v3 + 8832) = "OPTION_KEY_TOGGLE_OPTION_KEY_TOGGLE_DESCRIPTION";
  *(v3 + 5096) = 43;
  *(v3 + 8856) = "OPTION_KEY_TOGGLE_OPTION_KEY_TOGGLE_VISIONOS_DESCRIPTION";
  *(v3 + 5072) = 50;
  *(v3 + 8880) = "OUTPUT_OUTPUT_DESCRIPTION";
  *(v3 + 8904) = "OVERLAY_OVERLAY_DESCRIPTION";
  *(v3 + 8928) = "PASSCODE_SETTINGS_PASSCODE_SETTINGS_DESCRIPTION";
  *(v3 + 8952) = "PAUSE_DURING_MEDIA_PLAYBACK_PAUSE_DURING_MEDIA_PLAYBACK_DESCRIPTION";
  *(v3 + 8976) = "PAUSE_ON_FIRST_ITEM_PAUSE_ON_FIRST_ITEM_DESCRIPTION";
  *(v3 + 5048) = 49;
  *(v3 + 9000) = "PERFORM_TOUCH_GESTURES_PERFORM_TOUCH_GESTURES_DESCRIPTION";
  *(v3 + 5024) = 63;
  *(v3 + 9024) = "PERFORM_TOUCH_GESTURES_PERFORM_TOUCH_GESTURES_VISIONOS_DESCRIPTION";
  *(v3 + 5000) = 60;
  *(v3 + 8384) = 66;
  *(v3 + 9032) = 66;
  *(v3 + 9048) = "PERSONAL_VOICE_ALLOW_PERSONAL_VOICE_ALLOW_DESCRIPTION";
  *(v3 + 9072) = "PERSONAL_VOICE_CREATE_PERSONAL_VOICE_CREATE_DESCRIPTION";
  *(v3 + 4976) = 57;
  *(v3 + 9096) = "PERSONAL_VOICE_PERSONAL_VOICE_DESCRIPTION";
  *(v3 + 4952) = 37;
  *(v3 + 9120) = "PERSONAL_VOICE_SHARE_PERSONAL_VOICE_SHARE_DESCRIPTION";
  *(v3 + 4928) = 65;
  *(v3 + 9144) = "PER_APP_ADD_APP_PER_APP_ADD_APP_DESCRIPTION";
  *(v3 + 9168) = "PER_APP_SETTINGS_PER_APP_SETTINGS_DESCRIPTION";
  *(v3 + 9192) = "PER_APP_SHOW_HIDDEN_APPS_PER_APP_SHOW_HIDDEN_APPS_DESCRIPTION";
  *(v3 + 4904) = 57;
  *(v3 + 9216) = "PHONETIC_FEEDBACK_PHONETIC_FEEDBACK_DESCRIPTION";
  *(v3 + 4880) = 61;
  *(v3 + 9240) = "PHONE_NOISE_CANCELLATION_PHONE_NOISE_CANCELLATION_DESCRIPTION";
  *(v3 + 4856) = 53;
  *(v3 + 9264) = "PITCH_CHANGE_PITCH_CHANGE_DESCRIPTION";
  *(v3 + 9288) = "PLAY_SOUND_PLAY_SOUND_DESCRIPTION";
  *(v3 + 9312) = "POINTER_ANIMATIONS_POINTER_ANIMATIONS_DESCRIPTION";
  *(v3 + 9336) = "POINTER_CONTROL_BORDER_WIDTH_POINTER_CONTROL_BORDER_WIDTH_DESCRIPTION";
  *(v3 + 9360) = "POINTER_CONTROL_COLOR_POINTER_CONTROL_COLOR_DESCRIPTION";
  *(v3 + 4832) = 47;
  *(v3 + 9384) = "POINTER_CONTROL_CONTROL_POINTER_CONTROL_CONTROL_DESCRIPTION";
  *(v3 + 4808) = 63;
  *(v3 + 9408) = "POINTER_CONTROL_POINTER_CONTROL_DESCRIPTION";
  *(v3 + 4784) = 59;
  *(v3 + 9432) = "POINTER_CONTROL_SCROLLING_SPEED_POINTER_CONTROL_SCROLLING_SPEED_DESCRIPTION";
  *(v3 + 9456) = "POINTER_INCREASE_CONTRAST_POINTER_INCREASE_CONTRAST_DESCRIPTION";
  *(v3 + 9480) = "POINTER_INCREASE_CONTRAST_POINTER_INCREASE_CONTRAST_VISIONOS_DESCRIPTION";
  *(v3 + 4760) = 55;
  *(v3 + 9488) = 72;
  *(v3 + 9504) = "POINTER_SIZE_POINTER_SIZE_DESCRIPTION";
  *(v3 + 4736) = 56;
  *(v3 + 9528) = "POINTER_SIZE_POINTER_SIZE_VISIONOS_DESCRIPTION";
  *(v3 + 4712) = 56;
  *(v3 + 9552) = "PREDICTIVE_TEXT_APPEARS_PREDICTIVE_TEXT_APPEARS_DESCRIPTION";
  *(v3 + 4688) = 57;
  *(v3 + 9576) = "PREDICTIVE_TEXT_ENTERED_PREDICTIVE_TEXT_ENTERED_DESCRIPTION";
  *(v3 + 9600) = "PREDICTIVE_TEXT_FEEDBACK_PREDICTIVE_TEXT_FEEDBACK_DESCRIPTION";
  *(v3 + 9624) = "PREFER_HORIZONTAL_TEXT_PREFER_HORIZONTAL_TEXT_DESCRIPTION";
  *(v3 + 4664) = 63;
  *(v3 + 9648) = "PREFER_NON_BLINKING_CURSOR_TEXT_PREFER_NON_BLINKING_CURSOR_DESCRIPTION";
  *(v3 + 3992) = 70;
  *(v3 + 4640) = 37;
  *(v3 + 9656) = 70;
  *(v3 + 9672) = "PREFER_NON_HEADLOCKED_CONTROLS_PREFER_NON_HEADLOCKED_CONTROLS_DESCRIPTION";
  *(v3 + 4616) = 25;
  *(v3 + 9696) = "PRESS_AND_HOLD_TO_SPEAK_HOME_BUTTON_DESCRIPTION";
  *(v3 + 4592) = 61;
  *(v3 + 9720) = "PRESS_AND_HOLD_TO_SPEAK_SIDE_BUTTON_DESCRIPTION";
  *(v3 + 9744) = "PRESS_AND_HOLD_TO_SPEAK_TOP_BUTTON_DESCRIPTION";
  *(v3 + 4568) = 55;
  *(v3 + 9536) = 46;
  *(v3 + 9752) = 46;
  *(v3 + 4544) = 63;
  *(v3 + 9768) = "PROGRAMMING_PROGRAMMING_DESCRIPTION";
  *(v3 + 9792) = "PRONUNCIATIONS_PRONUNCIATIONS_DESCRIPTION";
  *(v3 + 9816) = "PRONUNCIATIONS_VO_PRONUNCIATIONS_DESCRIPTION";
  *(v3 + 9840) = "PULSE_WIDTH_MAXIMIZATION_PULSE_WIDTH_MAXIMIZATION_DESCRIPTION";
  *(v3 + 9864) = "PUNCTUATION_ALL_PUNCTUATION_ALL_DESCRIPTION";
  *(v3 + 4520) = 48;
  *(v3 + 9888) = "PUNCTUATION_IMPORT_PUNCTUATION_IMPORT_DESCRIPTION";
  *(v3 + 4496) = 49;
  *(v3 + 9912) = "PUNCTUATION_NONE_PUNCTUATION_NONE_DESCRIPTION";
  *(v3 + 4472) = 39;
  *(v3 + 9936) = "PUNCTUATION_PUNCTUATION_DESCRIPTION";
  *(v3 + 9960) = "PUNCTUATION_SOME_PUNCTUATION_SOME_DESCRIPTION";
  *(v3 + 9984) = "QUICKNAV_ANNOUNCEMENTS_QUICKNAV_ANNOUNCEMENTS_DESCRIPTION";
  *(v3 + 4448) = 53;
  *(v3 + 10008) = "QUICK_SETTINGS_QUICK_SETTINGS_DESCRIPTION";
  *(v3 + 4424) = 47;
  *(v3 + 10056) = "REAL_WORLD_DETECTION_REAL_WORLD_DETECTION_DESCRIPTION";
  *(v3 + 4400) = 59;
  *(v3 + 10080) = "RECIPES_RECIPES_DESCRIPTION";
  *(v3 + 10104) = "REDUCE_MOTION_REDUCE_MOTION_DESCRIPTION";
  *(v3 + 10128) = "REDUCE_TRANSPARENCY_REDUCE_TRANSPARENCY_DESCRIPTION";
  *(v3 + 10152) = "REDUCE_WHITE_POINT_REDUCE_WHITE_POINT_DESCRIPTION";
  *(v3 + 10176) = "REFRESH_RATE_REFRESH_RATE_DESCRIPTION";
  *(v3 + 4376) = 50;
  *(v3 + 10200) = "REQUIRE_ATTENTION_FOR_FACE_ID_REQUIRE_ATTENTION_FOR_FACE_ID_DESCRIPTION";
  *(v3 + 4352) = 40;
  *(v3 + 10224) = "RESET_VOICEOVER_COMMANDS_RESET_VOICEOVER_COMMANDS_DESCRIPTION";
  *(v3 + 4328) = 31;
  *(v3 + 10248) = "RESET_VOICEOVER_SETTINGS_RESET_VOICEOVER_SETTINGS_DESCRIPTION";
  *(v3 + 10272) = "RESIZE_ZOOM_WINDOW_RESIZE_ZOOM_WINDOW_DESCRIPTION";
  *(v3 + 10296) = "REST_FINGER_OPEN_HOME_BUTTON_DESCRIPTION";
  *(v3 + 4304) = 37;
  *(v3 + 10320) = "REVERSE_DOT_POSITIONS_REVERSE_DOT_POSITIONS_DESCRIPTION";
  *(v3 + 4280) = 49;
  *(v3 + 10344) = "ROTOR_ITEMS_ROTOR_ITEMS_DESCRIPTION";
  *(v3 + 4256) = 45;
  *(v3 + 10368) = "ROTOR_ROTOR_DESCRIPTION";
  *(v3 + 10392) = "ROTOR_SUMMARY_ROTOR_SUMMARY_DESCRIPTION";
  *(v3 + 10416) = "RTT_ACCESSIBILITY";
  *(v3 + 10440) = "RTT_TTY_ACCESSIBILITY";
  *(v3 + 10464) = "SAVED_GESTURES_SAVED_GESTURES_DESCRIPTION";
  *(v3 + 4232) = 51;
  *(v3 + 10488) = "SCANNING_STYLE_SCANNING_STYLE_DESCRIPTION";
  *(v3 + 4208) = 51;
  *(v3 + 10512) = "SCAN_SAME_KEY_AFTER_TAP_SCAN_SAME_KEY_AFTER_TAP_DESCRIPTION";
  *(v3 + 4184) = 39;
  *(v3 + 10536) = "SCROLL_SPEED_SCROLL_SPEED_DESCRIPTION";
  *(v3 + 10560) = "SC_DWELL_CONTROL_SC_DWELL_CONTROL_DESCRIPTION";
  *(v3 + 10584) = "SC_EYE_TRACKING_SC_EYE_TRACKING_DESCRIPTION";
  *(v3 + 4160) = 67;
  *(v3 + 10608) = "SC_HOLD_DURATION_SC_HOLD_DURATION_DESCRIPTION";
  *(v3 + 4136) = 36;
  *(v3 + 10632) = "SC_IGNORE_REPEAT_SC_IGNORE_REPEAT_DESCRIPTION";
  *(v3 + 4112) = 27;
  *(v3 + 10656) = "SC_SHOW_FACE_GUIDANCE_SC_SHOW_FACE_GUIDANCE_DESCRIPTION";
  *(v3 + 10680) = "SELECTION_MODE_SELECTION_MODE_DESCRIPTION";
  *(v3 + 10704) = "SEND_TO_HDMI_SEND_TO_HDMI_DESCRIPTION";
  *(v3 + 4088) = 47;
  *(v3 + 10728) = "SETUP_NAME_RECOGNITION_SETUP_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 4048) = 2;
  *(v3 + 4064) = 55;
  *(v3 + 4072) = 2;
  *(v3 + 4024) = 2;
  *(v3 + 4040) = 49;
  *(v3 + 10752) = "SET_GUIDED_ACCESS_PASSCODE_SET_GUIDED_ACCESS_PASSCODE_DESCRIPTION";
  *(v3 + 10776) = "SET_UP_VOICE_CONTROL_SET_UP_VOICE_CONTROL_DESCRIPTION";
  *(v3 + 4000) = 2;
  *(v3 + 4016) = 49;
  *(v3 + 10800) = "SHAKE_TO_UNDO_SHAKE_TO_UNDO_DESCRIPTION";
  *(v3 + 10824) = "SHOW_APPS_BEHIND_SIRI_SHOW_APPS_BEHIND_SIRI_DESCRIPTION";
  *(v3 + 3968) = 61;
  *(v3 + 3976) = 2;
  *(v3 + 3944) = 59;
  *(v3 + 3952) = 2;
  *(v3 + 10848) = "SHOW_AUDIO_TRANSCRIPTIONS_SHOW_AUDIO_TRANSCRIPTIONS_DESCRIPTION";
  *(v3 + 10872) = "SHOW_CONFIRMATION_SHOW_CONFIRMATION_DESCRIPTION";
  *(v3 + 3920) = 61;
  *(v3 + 3928) = 2;
  *(v3 + 10896) = "SHOW_CONTROLLER_SHOW_CONTROLLER_DESCRIPTION";
  *(v3 + 10920) = "SHOW_GENERAL_STATUS_SHOW_GENERAL_STATUS_DESCRIPTION";
  *(v3 + 3896) = 59;
  *(v3 + 3904) = 2;
  *(v3 + 10944) = "SHOW_HINTS_SHOW_HINTS_DESCRIPTION";
  *(v3 + 3856) = 2;
  *(v3 + 3872) = 71;
  *(v3 + 3880) = 2;
  *(v3 + 10968) = "SHOW_LOWERCASE_KEYS_SHOW_LOWERCASE_KEYS_DESCRIPTION";
  *(v3 + 3824) = 55;
  *(v3 + 3832) = 2;
  *(v3 + 3848) = 59;
  *(v3 + 3800) = 49;
  *(v3 + 3808) = 2;
  *(v3 + 10992) = "SHOW_ONSCREEN_KEYBOARD_SHOW_ONSCREEN_KEYBOARD_DESCRIPTION";
  *(v3 + 11016) = "SHOW_ON_SKIP_BACK_SHOW_ON_SKIP_BACK_DESCRIPTION";
  *(v3 + 3776) = 39;
  *(v3 + 3784) = 2;
  *(v3 + 11040) = "SHOW_SCROLL_CONTROLS_SHOW_SCROLL_CONTROLS_DESCRIPTION";
  *(v3 + 11064) = "SHOW_TEXT_STATUS_SHOW_TEXT_STATUS_DESCRIPTION";
  *(v3 + 3752) = 37;
  *(v3 + 3760) = 2;
  *(v3 + 11088) = "SHOW_WHEN_MUTED_SHOW_WHEN_MUTED_DESCRIPTION";
  *(v3 + 3712) = 2;
  *(v3 + 3728) = 47;
  *(v3 + 3736) = 2;
  *(v3 + 3688) = 2;
  *(v3 + 3704) = 52;
  *(v3 + 11112) = "SHOW_WHILE_MIRRORING_SHOW_WHILE_MIRRORING_DESCRIPTION";
  *(v3 + 11136) = "SIDE_BUTTON_SIDE_BUTTON_DESCRIPTION";
  *(v3 + 3656) = 49;
  *(v3 + 3664) = 2;
  *(v3 + 3680) = 58;
  *(v3 + 3632) = 63;
  *(v3 + 3640) = 2;
  *(v3 + 11160) = "SINGLETAP_SINGLETAP_DESCRIPTION";
  *(v3 + 11184) = "SINGLETAP_SINGLETAP_VISIONOS_DESCRIPTION";
  *(v3 + 3592) = 2;
  *(v3 + 3608) = 41;
  *(v3 + 3616) = 2;
  *(v3 + 7304) = 40;
  *(v3 + 8024) = 40;
  *(v3 + 10304) = 40;
  *(v3 + 11192) = 40;
  *(v3 + 3544) = 2;
  *(v3 + 3560) = 45;
  *(v3 + 3568) = 2;
  *(v3 + 11208) = "SIRI_BARGE_IN_LABEL_SIRI_BARGE_IN_DESCRIPTION";
  *(v3 + 3512) = 67;
  *(v3 + 3520) = 2;
  *(v3 + 3536) = 49;
  *(v3 + 3488) = 67;
  *(v3 + 3496) = 2;
  *(v3 + 11232) = "SIRI_PAUSE_TIME_SIRI_PAUSE_TIME_DESCRIPTION";
  *(v3 + 11256) = "SIRI_SIRI_DESCRIPTION";
  *(v3 + 3440) = 55;
  *(v3 + 3448) = 2;
  *(v3 + 3464) = 29;
  *(v3 + 3472) = 2;
  *(v3 + 3272) = 31;
  *(v3 + 3280) = 2;
  *(v3 + 3392) = 53;
  *(v3 + 3400) = 2;
  *(v3 + 3416) = 73;
  *(v3 + 3424) = 2;
  *(v3 + 3296) = 41;
  *(v3 + 3304) = 2;
  *(v3 + 3344) = 55;
  *(v3 + 3352) = 2;
  *(v3 + 3368) = 69;
  *(v3 + 3376) = 2;
  *(v3 + 3320) = 51;
  *(v3 + 3328) = 2;
  *(v3 + 6992) = 49;
  *(v3 + 7016) = 39;
  *(v3 + 7040) = 31;
  *(v3 + 7064) = 63;
  *(v3 + 7088) = 58;
  *(v3 + 7112) = 49;
  *(v3 + 7136) = 51;
  *(v3 + 7160) = 33;
  *(v3 + 7184) = 49;
  *(v3 + 7208) = 29;
  *(v3 + 7232) = 65;
  *(v3 + 7256) = 35;
  *(v3 + 11280) = "SIRI_SPEAKING_RATE_SIRI_SPEAKING_RATE_DESCRIPTION";
  *(v3 + 11304) = "SLOW_KEYS_SLOW_KEYS_DESCRIPTION";
  *(v3 + 11328) = "SMART_INVERT_SMART_INVERT_DESCRIPTION";
  *(v3 + 11352) = "SMART_TYPING_SMART_TYPING_DESCRIPTION";
  *(v3 + 11376) = "SOFTWARE_KEYBOARDS_SOFTWARE_KEYBOARDS_DESCRIPTION";
  *(v3 + 11400) = "SOFTWARE_RTT_RTT_DESCRIPTION";
  *(v3 + 11424) = "SOFTWARE_RTT_TTY_RTT_TTY_DESCRIPTION";
  *(v3 + 11432) = 36;
  *(v3 + 11448) = "SOFTWARE_TTY_TTY_DESCRIPTION";
  *(v3 + 11472) = "SOUNDS_SOUNDS_DESCRIPTION";
  *(v3 + 11496) = "SOUNDS_SOUND_AND_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 11520) = "SOUNDS_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 11544) = "SOUNDS_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 11568) = "SOUND_ACTIONS_SOUND_ACTIONS_AST_DESCRIPTION";
  *(v3 + 11592) = "SOUND_ACTIONS_SOUND_ACTIONS_AST_DESCRIPTION_VISIONOS";
  *(v3 + 11600) = 52;
  *(v3 + 11616) = "SOUND_ACTIONS_SOUND_ACTIONS_DESCRIPTION_VISIONOS";
  *(v3 + 11640) = "SOUND_AND_NAME_RECOGNITION_SOUND_AND_NAME_RECOGNITION_DESCRIPTION";
  *(v3 + 11688) = "SOUND_EFFECTS_PREFERENCE_SOUND_EFFECTS_PREFERENCE_DESCRIPTION";
  *(v3 + 11736) = "SOUND_GAX_SOUND_DESCRIPTION";
  *(v3 + 11808) = "SOUND_RECOGNITION_SOUND_RECOGNITION_DESCRIPTION";
  *(v3 + 11832) = "SOUND_RECOGNITION_SOUND_RECOGNITION_WITH_NAME_SUPPORT_DESCRIPTION";
  *(v3 + 11880) = "SPATIALIZE_SPEECH_SPATIALIZE_SPEECH_DESCRIPTION";
  *(v3 + 11952) = "SPEAKING_RATE_VO_SPEAKING_RATE_DESCRIPTION";
  *(v3 + 12048) = "SPEAK_SPEAK_DESCRIPTION";
  *(v3 + 12072) = "SPEECH_CONTROLLER_DOUBLE_TAP_SPEECH_CONTROLLER_DOUBLE_TAP_DESCRIPTION";
  *(v3 + 12144) = "SPEECH_CONTROLLER_SPEECH_CONTROLLER_DESCRIPTION";
  *(v3 + 12216) = "SPEECH_SPEAKS_TRAITS_LABEL_SPEECH_SPEAKS_TRAITS_LABEL_DESCRIPTION";
  *(v3 + 12240) = "SPEECH_SPEECH_DESCRIPTION";
  *(v3 + 12360) = "STARTUP_SOUND_STARTUP_SOUND_DESCRIPTION";
  *(v3 + 12696) = "SYSTEM_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 12744) = "TABLE_ROW_COLUMN_TABLE_ROW_COLUMN_DESCRIPTION";
  *(v3 + 12768) = "TAP_AN_ICON_TO_CHANGE_TAP_AN_ICON_TO_CHANGE_DESCRIPTION";
  *(v3 + 13176) = "TOGGLE_WITH_SHIFT_KEY_TOGGLE_WITH_SHIFT_KEY_DESCRIPTION";
  *(v3 + 13200) = "TOGGLE_ZOOM_TOGGLE_ZOOM_DESCRIPTION";
  *(v3 + 13184) = 55;
  *(v3 + 13192) = 2;
  *(v3 + 13208) = 35;
  *(v3 + 13160) = 35;
  *(v3 + 13168) = 2;
  *(v3 + 13032) = "TEXT_EDITING_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 13152) = "TIME_LIMITS_TIME_LIMITS_DESCRIPTION";
  *(v3 + 13136) = 55;
  *(v3 + 13144) = 2;
  *(v3 + 13104) = "THREE_D_TOUCH_THREE_D_TOUCH_DESCRIPTION";
  *(v3 + 13128) = "THREE_D__HAPTIC_TOUCH_THREE_D__HAPTIC_TOUCH_DESCRIPTION";
  *(v3 + 13112) = 39;
  *(v3 + 13120) = 2;
  *(v3 + 13080) = "THREE_D_TOUCH_SENSITIVITY_THREE_D_TOUCH_SENSITIVITY_DESCRIPTION";
  *(v3 + 13072) = 2;
  *(v3 + 13088) = 63;
  *(v3 + 13096) = 2;
  *(v3 + 13056) = "THREE_D_TOUCH_SENSITIVITY_AND_TOUCH_DURATION_TEST_THREE_D_TOUCH_SENSITIVITY_AND_TOUCH_DURATION_TEST_DESCRIPTION";
  *(v3 + 13064) = 111;
  *(v3 + 13040) = 50;
  *(v3 + 13048) = 2;
  *(v3 + 13016) = 41;
  *(v3 + 13024) = 2;
  *(v3 + 12888) = "TAP_TO_WAKE_TAP_TO_WAKE_DESCRIPTION";
  *(v3 + 13008) = "TEXT_EDITING_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 12992) = 59;
  *(v3 + 13000) = 2;
  *(v3 + 12960) = "TA_IGNORE_REPEAT_TA_IGNORE_REPEAT_DESCRIPTION";
  *(v3 + 12984) = "TEMPORARILY_TOGGLE_ZOOM_TEMPORARILY_TOGGLE_ZOOM_DESCRIPTION";
  *(v3 + 12968) = 45;
  *(v3 + 12976) = 2;
  *(v3 + 12936) = "TA_HOLD_DURATION_TA_HOLD_DURATION_DESCRIPTION";
  *(v3 + 12928) = 2;
  *(v3 + 12944) = 45;
  *(v3 + 12952) = 2;
  *(v3 + 12912) = "TARGET_TARGET_DESCRIPTION";
  *(v3 + 12896) = 35;
  *(v3 + 12904) = 2;
  *(v3 + 12920) = 25;
  *(v3 + 12872) = 47;
  *(v3 + 12880) = 2;
  *(v3 + 12840) = "TAP_BEHAVIOR_TAP_BEHAVIOR_DESCRIPTION";
  *(v3 + 12864) = "TAP_TOUCH_TO_WAKE_TAP_TOUCH_TO_WAKE_DESCRIPTION";
  *(v3 + 12848) = 37;
  *(v3 + 12856) = 2;
  *(v3 + 12816) = "TAP_ASSISTANCE_TAP_ASSISTANCE_DESCRIPTION";
  *(v3 + 12808) = 2;
  *(v3 + 12824) = 41;
  *(v3 + 12832) = 2;
  *(v3 + 12792) = "TAP_AN_ICON_TO_CHANGE_TAP_AN_ICON_TO_CHANGE_VISIONOS_DESCRIPTION";
  *(v3 + 8408) = 64;
  *(v3 + 12800) = 64;
  *(v3 + 12776) = 55;
  *(v3 + 12784) = 2;
  *(v3 + 9824) = 44;
  *(v3 + 11552) = 44;
  *(v3 + 12736) = 2;
  *(v3 + 12752) = 45;
  *(v3 + 12760) = 2;
  *(v3 + 12704) = 44;
  *(v3 + 12720) = "TABLE_HEADERS_TABLE_HEADERS_DESCRIPTION";
  *(v3 + 12712) = 2;
  *(v3 + 12728) = 39;
  *(v3 + 12680) = 35;
  *(v3 + 12688) = 2;
  *(v3 + 12552) = "SWITCH_CONTROL_MODE_SWITCH_CONTROL_MODE_DESCRIPTION";
  *(v3 + 12672) = "SYSTEM_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 12656) = 49;
  *(v3 + 12664) = 2;
  *(v3 + 12624) = "SWITCH_SETS_SWITCH_SETS_DESCRIPTION";
  *(v3 + 12648) = "SWITCH_ZOOM_REGION_SWITCH_ZOOM_REGION_DESCRIPTION";
  *(v3 + 12632) = 35;
  *(v3 + 12640) = 2;
  *(v3 + 12600) = "SWITCH_GESTURE_HANDEDNESS_SWITCH_GESTURE_HANDEDNESS_DESCRIPTION";
  *(v3 + 12592) = 2;
  *(v3 + 12608) = 63;
  *(v3 + 12616) = 2;
  *(v3 + 12576) = "SWITCH_CONTROL_SWITCH_CONTROL_DESCRIPTION";
  *(v3 + 12560) = 51;
  *(v3 + 12568) = 2;
  *(v3 + 12584) = 41;
  *(v3 + 12536) = 29;
  *(v3 + 12544) = 2;
  *(v3 + 12384) = "STATUS_CELLS_POSITION_STATUS_CELLS_POSITION_DESCRIPTION";
  *(v3 + 12528) = "SWITCHES_SWITCHES_DESCRIPTION";
  *(v3 + 12512) = 55;
  *(v3 + 12520) = 2;
  *(v3 + 12480) = "SUBTCAP_STYLE_SUBTCAP_STYLE_DESCRIPTION";
  *(v3 + 12504) = "SUBTITLES__CAPTIONING_SUBTITLES__CAPTIONING_DESCRIPTION";
  *(v3 + 12488) = 39;
  *(v3 + 12496) = 2;
  *(v3 + 12456) = "STICKY_ROTOR_TITLE_STICKY_ROTOR_TITLE_DESCRIPTION";
  *(v3 + 12448) = 2;
  *(v3 + 12464) = 49;
  *(v3 + 12472) = 2;
  *(v3 + 12432) = "STICKY_KEYS_STICKY_KEYS_DESCRIPTION";
  *(v3 + 12416) = 37;
  *(v3 + 12424) = 2;
  *(v3 + 12440) = 35;
  *(v3 + 12408) = "STATUS_CELLS_STATUS_CELLS_DESCRIPTION";
  *(v3 + 12352) = 2;
  *(v3 + 12392) = 55;
  *(v3 + 12400) = 2;
  *(v3 + 12368) = 39;
  *(v3 + 12376) = 2;
  *(v3 + 12288) = "SPOKEN_CONTENT_DEFAULT_LANGUAGE_SPOKEN_CONTENT_DEFAULT_LANGUAGE_DESCRIPTION";
  *(v3 + 12336) = "SPOKEN_CONTENT_SPOKEN_CONTENT_DESCRIPTION";
  *(v3 + 7856) = 75;
  *(v3 + 12320) = 73;
  *(v3 + 12328) = 2;
  *(v3 + 12344) = 41;
  *(v3 + 9440) = 75;
  *(v3 + 12296) = 75;
  *(v3 + 12312) = "SPOKEN_CONTENT_DETECT_LANGUAGE_SPOKEN_CONTENT_DETECT_LANGUAGE_DESCRIPTION";
  *(v3 + 12304) = 2;
  *(v3 + 7968) = "LONGPRESS_DURATION_LONGPRESS_DURATION_VISIONOS_DESCRIPTION";
  *(v3 + 12280) = 2;
  *(v3 + 12264) = "SPEECH_VARIANCE_LABEL_SPEECH_VARIANCE_LABEL_DESCRIPTION";
  *(v3 + 12248) = 25;
  *(v3 + 12256) = 2;
  *(v3 + 12272) = 55;
  *(v3 + 12224) = 65;
  *(v3 + 12232) = 2;
  *(v3 + 12168) = "SPEECH_PAUSES_SCANNING_LABEL_SPEECH_PAUSES_SCANNING_LABEL_DESCRIPTION";
  *(v3 + 12192) = "SPEECH_SC_SPEECH_DESCRIPTION";
  *(v3 + 12176) = 69;
  *(v3 + 12184) = 2;
  *(v3 + 12200) = 28;
  *(v3 + 12208) = 2;
  *(v3 + 7712) = 73;
  *(v3 + 8744) = 73;
  *(v3 + 9680) = 73;
  *(v3 + 12136) = 2;
  *(v3 + 12152) = 47;
  *(v3 + 12160) = 2;
  *(v3 + 12104) = 73;
  *(v3 + 12120) = "SPEECH_CONTROLLER_LONG_PRESS_SPEECH_CONTROLLER_LONG_PRESS_DESCRIPTION";
  *(v3 + 12112) = 2;
  *(v3 + 12128) = 69;
  *(v3 + 12096) = "SPEECH_CONTROLLER_IDLE_OPACITY_SPEECH_CONTROLLER_IDLE_OPACITY_DESCRIPTION";
  *(v3 + 12064) = 2;
  *(v3 + 12080) = 69;
  *(v3 + 12088) = 2;
  *(v3 + 8504) = 42;
  *(v3 + 12032) = 43;
  *(v3 + 12040) = 2;
  *(v3 + 12056) = 23;
  *(v3 + 11960) = 42;
  *(v3 + 12024) = "SPEAK_SELECTION_SPEAK_SELECTION_DESCRIPTION";
  *(v3 + 12008) = 63;
  *(v3 + 12016) = 2;
  *(v3 + 11976) = "SPEAK_SCREEN_SPEAK_SCREEN_DESCRIPTION";
  *(v3 + 12000) = "SPEAK_SELECTION_HIGHLIGHT_SPEAK_SELECTION_HIGHLIGHT_DESCRIPTION";
  *(v3 + 11984) = 37;
  *(v3 + 11992) = 2;
  *(v3 + 11944) = 2;
  *(v3 + 11968) = 2;
  *(v3 + 11904) = "SPATIALIZE_SPEECH_SPATIALIZE_SPEECH_SPOKEN_CONTENT_DESCRIPTION";
  *(v3 + 11928) = "SPEAKING_RATE_SPEAKING_RATE_DESCRIPTION";
  *(v3 + 11896) = 2;
  *(v3 + 11912) = 62;
  *(v3 + 11920) = 2;
  *(v3 + 11936) = 39;
  *(v3 + 8336) = 65;
  *(v3 + 10760) = 65;
  *(v3 + 11648) = 65;
  *(v3 + 11864) = 23;
  *(v3 + 11872) = 2;
  *(v3 + 11888) = 47;
  *(v3 + 11840) = 65;
  *(v3 + 11856) = "SOUND_SOUND_DESCRIPTION";
  *(v3 + 11800) = 2;
  *(v3 + 11848) = 2;
  *(v3 + 11816) = 47;
  *(v3 + 11824) = 2;
  *(v3 + 11760) = "SOUND_ON_MOUSE_CLICK_SOUND_ON_MOUSE_CLICK_DESCRIPTION";
  *(v3 + 11784) = "SOUND_ON_MOUSE_CLICK_SOUND_ON_MOUSE_CLICK_VISIONOS_DESCRIPTION";
  *(v3 + 8912) = 27;
  *(v3 + 11768) = 53;
  *(v3 + 11776) = 2;
  *(v3 + 11792) = 62;
  *(v3 + 10088) = 27;
  *(v3 + 11744) = 27;
  *(v3 + 11728) = 2;
  *(v3 + 11752) = 2;
  *(v3 + 11712) = "SOUND_EFFECTS_SOUND_EFFECTS_DESCRIPTION";
  *(v3 + 11696) = 61;
  *(v3 + 11704) = 2;
  *(v3 + 11720) = 39;
  *(v3 + 11664) = "SOUND_CURTAIN_SOUND_CURTAIN_DESCRIPTION";
  *(v3 + 8200) = 2;
  *(v3 + 8224) = 2;
  *(v3 + 11656) = 2;
  *(v3 + 11672) = 39;
  *(v3 + 11680) = 2;
  *(v3 + 8248) = 2;
  *(v3 + 8272) = 2;
  *(v3 + 8296) = 2;
  *(v3 + 11608) = 2;
  *(v3 + 11624) = 48;
  *(v3 + 11632) = 2;
  *(v3 + 8320) = 2;
  *(v3 + 8344) = 2;
  *(v3 + 8368) = 2;
  *(v3 + 11560) = 2;
  *(v3 + 11576) = 43;
  *(v3 + 11584) = 2;
  *(v3 + 8392) = 2;
  *(v3 + 8416) = 2;
  *(v3 + 11504) = 45;
  *(v3 + 11512) = 2;
  *(v3 + 11528) = 35;
  *(v3 + 11536) = 2;
  *(v3 + 8440) = 2;
  *(v3 + 8464) = 2;
  *(v3 + 11456) = 28;
  *(v3 + 11464) = 2;
  *(v3 + 11480) = 25;
  *(v3 + 11488) = 2;
  *(v3 + 8488) = 2;
  *(v3 + 8512) = 2;
  *(v3 + 8536) = 2;
  *(v3 + 11408) = 28;
  *(v3 + 11416) = 2;
  *(v3 + 11440) = 2;
  *(v3 + 8560) = 2;
  *(v3 + 8584) = 2;
  *(v3 + 11360) = 37;
  *(v3 + 11368) = 2;
  *(v3 + 11384) = 49;
  *(v3 + 11392) = 2;
  *(v3 + 8608) = 2;
  *(v3 + 8632) = 2;
  *(v3 + 11312) = 31;
  *(v3 + 11320) = 2;
  *(v3 + 11336) = 37;
  *(v3 + 11344) = 2;
  *(v3 + 8656) = 2;
  *(v3 + 11264) = 21;
  *(v3 + 11272) = 2;
  *(v3 + 11288) = 49;
  *(v3 + 11296) = 2;
  *(v3 + 8680) = 2;
  *(v3 + 8704) = 2;
  *(v3 + 11216) = 45;
  *(v3 + 11224) = 2;
  *(v3 + 11240) = 43;
  *(v3 + 11248) = 2;
  *(v3 + 8728) = 2;
  *(v3 + 8752) = 2;
  *(v3 + 8776) = 2;
  *(v3 + 11168) = 31;
  *(v3 + 11176) = 2;
  *(v3 + 11200) = 2;
  *(v3 + 8800) = 2;
  *(v3 + 8824) = 2;
  *(v3 + 11120) = 53;
  *(v3 + 11128) = 2;
  *(v3 + 11144) = 35;
  *(v3 + 11152) = 2;
  *(v3 + 8848) = 2;
  *(v3 + 8872) = 2;
  *(v3 + 11072) = 45;
  *(v3 + 11080) = 2;
  *(v3 + 11096) = 43;
  *(v3 + 11104) = 2;
  *(v3 + 8896) = 2;
  *(v3 + 8920) = 2;
  *(v3 + 11024) = 47;
  *(v3 + 11032) = 2;
  *(v3 + 11048) = 53;
  *(v3 + 11056) = 2;
  *(v3 + 8944) = 2;
  *(v3 + 8968) = 2;
  *(v3 + 10976) = 51;
  *(v3 + 10984) = 2;
  *(v3 + 11000) = 57;
  *(v3 + 11008) = 2;
  *(v3 + 8992) = 2;
  *(v3 + 9016) = 2;
  *(v3 + 10928) = 51;
  *(v3 + 10936) = 2;
  *(v3 + 10952) = 33;
  *(v3 + 10960) = 2;
  *(v3 + 9040) = 2;
  *(v3 + 9064) = 2;
  *(v3 + 10880) = 47;
  *(v3 + 10888) = 2;
  *(v3 + 10904) = 43;
  *(v3 + 10912) = 2;
  *(v3 + 9088) = 2;
  *(v3 + 9112) = 2;
  *(v3 + 10832) = 55;
  *(v3 + 10840) = 2;
  *(v3 + 10856) = 63;
  *(v3 + 10864) = 2;
  *(v3 + 9136) = 2;
  *(v3 + 9160) = 2;
  *(v3 + 10784) = 53;
  *(v3 + 10792) = 2;
  *(v3 + 10808) = 39;
  *(v3 + 10816) = 2;
  *(v3 + 9184) = 2;
  *(v3 + 9208) = 2;
  *(v3 + 9232) = 2;
  *(v3 + 10736) = 57;
  *(v3 + 10744) = 2;
  *(v3 + 10768) = 2;
  *(v3 + 9256) = 2;
  *(v3 + 9280) = 2;
  *(v3 + 10688) = 41;
  *(v3 + 10696) = 2;
  *(v3 + 10712) = 37;
  *(v3 + 10720) = 2;
  *(v3 + 9304) = 2;
  *(v3 + 9328) = 2;
  *(v3 + 10640) = 45;
  *(v3 + 10648) = 2;
  *(v3 + 10664) = 55;
  *(v3 + 10672) = 2;
  *(v3 + 9352) = 2;
  *(v3 + 9376) = 2;
  *(v3 + 10592) = 43;
  *(v3 + 10600) = 2;
  *(v3 + 10616) = 45;
  *(v3 + 10624) = 2;
  *(v3 + 9400) = 2;
  *(v3 + 9424) = 2;
  *(v3 + 10544) = 37;
  *(v3 + 10552) = 2;
  *(v3 + 10568) = 45;
  *(v3 + 10576) = 2;
  *(v3 + 9448) = 2;
  *(v3 + 9472) = 2;
  *(v3 + 10496) = 41;
  *(v3 + 10504) = 2;
  *(v3 + 10520) = 59;
  *(v3 + 10528) = 2;
  *(v3 + 9496) = 2;
  *(v3 + 9520) = 2;
  *(v3 + 10448) = 21;
  *(v3 + 10456) = 2;
  *(v3 + 10472) = 41;
  *(v3 + 10480) = 2;
  *(v3 + 9544) = 2;
  *(v3 + 10400) = 39;
  *(v3 + 10408) = 2;
  *(v3 + 10424) = 17;
  *(v3 + 10432) = 2;
  *(v3 + 9568) = 2;
  *(v3 + 9592) = 2;
  *(v3 + 10352) = 35;
  *(v3 + 10360) = 2;
  *(v3 + 10376) = 23;
  *(v3 + 10384) = 2;
  *(v3 + 9616) = 2;
  *(v3 + 9640) = 2;
  *(v3 + 9664) = 2;
  *(v3 + 10312) = 2;
  *(v3 + 10328) = 55;
  *(v3 + 10336) = 2;
  *(v3 + 9688) = 2;
  *(v3 + 9712) = 2;
  *(v3 + 10256) = 61;
  *(v3 + 10264) = 2;
  *(v3 + 10280) = 49;
  *(v3 + 10288) = 2;
  *(v3 + 9736) = 2;
  *(v3 + 9760) = 2;
  *(v3 + 10208) = 71;
  *(v3 + 10216) = 2;
  *(v3 + 10232) = 61;
  *(v3 + 10240) = 2;
  *(v3 + 9784) = 2;
  *(v3 + 9808) = 2;
  *(v3 + 10160) = 49;
  *(v3 + 10168) = 2;
  *(v3 + 10184) = 37;
  *(v3 + 10192) = 2;
  *(v3 + 9832) = 2;
  *(v3 + 9856) = 2;
  *(v3 + 10112) = 39;
  *(v3 + 10120) = 2;
  *(v3 + 10136) = 51;
  *(v3 + 10144) = 2;
  *(v3 + 9880) = 2;
  *(v3 + 9904) = 2;
  *(v3 + 9928) = 2;
  *(v3 + 9952) = 2;
  *(v3 + 10072) = 2;
  *(v3 + 10096) = 2;
  *(v3 + 9976) = 2;
  *(v3 + 10000) = 2;
  *(v3 + 10048) = 2;
  *(v3 + 10064) = 53;
  *(v3 + 10024) = 2;
  *(v3 + 10032) = "REACHABILITY_REACHABILITY_DESCRIPTION";
  *(v3 + 13224) = "TOP_BUTTON_TOP_BUTTON_DESCRIPTION";
  *(v3 + 10040) = 37;
  *(v3 + 13248) = "TOP_LEFT_TOP_LEFT_DESCRIPTION";
  *(v3 + 10016) = 41;
  *(v3 + 13272) = "TOP_RIGHT_TOP_RIGHT_DESCRIPTION";
  *(v3 + 9992) = 57;
  *(v3 + 13296) = "TOP_TOUCHID_BUTTON_TOP_TOUCHID_BUTTON_DESCRIPTION";
  *(v3 + 13320) = "TOUCH_ACCOMMODATIONS_TOUCH_ACCOMMODATIONS_DESCRIPTION";
  *(v3 + 13344) = "TOUCH_DURATION_TEST_TOUCH_DURATION_TEST_DESCRIPTION";
  *(v3 + 9968) = 45;
  *(v3 + 13368) = "TOUCH_DURATION_THREE_D_TOUCH_DURATION_DESCRIPTION";
  *(v3 + 9944) = 35;
  *(v3 + 13392) = "TOUCH_DURATION_TOUCH_DURATION_DESCRIPTION";
  *(v3 + 9920) = 45;
  *(v3 + 13416) = "TOUCH_GESTURES_TOUCH_GESTURES_DESCRIPTION";
  *(v3 + 13440) = "TOUCH_TOUCH_DESCRIPTION";
  *(v3 + 8072) = 23;
  *(v3 + 9896) = 49;
  *(v3 + 13448) = 23;
  *(v3 + 13464) = "TRACKING_MODE_HEAD_TRACKING_DESCRIPTION";
  *(v3 + 13488) = "TRACKING_SENSITIVITY_TRACKING_SENSITIVITY_DESCRIPTION";
  *(v3 + 9872) = 43;
  *(v3 + 13512) = "TRACKING_SENSITIVITY_TRACKING_SENSITIVITY_VISIONOS_DESCRIPTION";
  *(v3 + 9848) = 61;
  *(v3 + 13536) = "TRACKING_SPEED_TRACKING_SPEED_DESCRIPTION";
  *(v3 + 13560) = "TRACKPAD_INERTIA_TRACKPAD_INERTIA_DESCRIPTION";
  *(v3 + 13584) = "TTY_ACCESSIBILITY";
  *(v3 + 13592) = 17;
  *(v3 + 13608) = "TURN_OFF_GLIDING_CURSOR_TURN_OFF_GLIDING_CURSOR_DESCRIPTION";
  *(v3 + 9800) = 41;
  *(v3 + 13632) = "TURN_PAGES_WHEN_PANNING_TURN_PAGES_WHEN_PANNING_DESCRIPTION";
  *(v3 + 9776) = 35;
  *(v3 + 13656) = "TYPE_TO_SIRI_TYPE_TO_SIRI_DESCRIPTION";
  *(v3 + 13680) = "TYPING_FEEDBACK_SPEECH_TYPING_FEEDBACK_DESCRIPTION";
  *(v3 + 7568) = 50;
  *(v3 + 13688) = 50;
  *(v3 + 13704) = "TYPING_FEEDBACK_TYPING_FEEDBACK_DESCRIPTION";
  *(v3 + 13728) = "TYPING_STYLE_TYPING_STYLE_DESCRIPTION";
  *(v3 + 13752) = "TYPING_TYPING_DESCRIPTION";
  *(v3 + 9728) = 47;
  *(v3 + 13776) = "UPWARDS_HUD_UPWARDS_HUD_DESCRIPTION";
  *(v3 + 13800) = "UPWARDS_HUD_VERTICAL_POSITION_UPWARDS_HUD_VERTICAL_POSITION_DESCRIPTION";
  *(v3 + 7880) = 71;
  *(v3 + 9704) = 47;
  *(v3 + 13808) = 71;
  *(v3 + 13824) = "USE_GAME_CONTROLLER_USE_GAME_CONTROLLER_DESCRIPTION";
  *(v3 + 13848) = "USE_GAME_CONTROLLER_USE_GAME_CONTROLLER_VISIONOS_DESCRIPTION";
  *(v3 + 13856) = 60;
  *(v3 + 13872) = "USE_PRIMARY_KEYBOARD_USE_PRIMARY_KEYBOARD_DESCRIPTION";
  *(v3 + 9632) = 57;
  *(v3 + 13896) = "USE_PRIMARY_KEYBOARD_USE_PRIMARY_KEYBOARD_VISIONOS_DESCRIPTION";
  *(v3 + 13520) = 62;
  *(v3 + 13904) = 62;
  *(v3 + 9608) = 61;
  *(v3 + 13920) = "VC_CMD_ACCESSIBILITY_VC_CMD_ACCESSIBILITY_DESCRIPTION";
  *(v3 + 9584) = 59;
  *(v3 + 13944) = "VC_CMD_ADVANCED_GESTURES_VC_CMD_ADVANCED_GESTURES_DESCRIPTION";
  *(v3 + 7400) = 61;
  *(v3 + 7424) = 61;
  *(v3 + 7472) = 61;
  *(v3 + 8816) = 61;
  *(v3 + 9560) = 59;
  *(v3 + 9200) = 61;
  *(v3 + 9248) = 61;
  *(v3 + 13952) = 61;
  *(v3 + 9512) = 37;
  *(v3 + 13968) = "VC_CMD_BASIC_GESTURES_VC_CMD_BASIC_GESTURES_DESCRIPTION";
  *(v3 + 13992) = "VC_CMD_BASIC_NAVIGATION_VC_CMD_BASIC_NAVIGATION_DESCRIPTION";
  *(v3 + 7928) = 59;
  *(v3 + 9464) = 63;
  *(v3 + 9392) = 59;
  *(v3 + 13616) = 59;
  *(v3 + 13640) = 59;
  *(v3 + 14000) = 59;
  *(v3 + 14016) = "VC_CMD_DEVICE_VC_CMD_DEVICE_DESCRIPTION";
  *(v3 + 14040) = "VC_CMD_DICTATION_VC_CMD_DICTATION_DESCRIPTION";
  *(v3 + 14064) = "VC_CMD_OVERLAYS_VC_CMD_OVERLAYS_DESCRIPTION";
  *(v3 + 9416) = 43;
  *(v3 + 14088) = "VC_CMD_TEXT_DELETION_VC_CMD_TEXT_DELETION_DESCRIPTION";
  *(v3 + 14112) = "VC_CMD_TEXT_EDITING_VC_CMD_TEXT_EDITING_DESCRIPTION";
  *(v3 + 14136) = "VC_CMD_TEXT_NAVIGATION_VC_CMD_TEXT_NAVIGATION_DESCRIPTION";
  *(v3 + 14160) = "VC_CMD_TEXT_SELECTION_VC_CMD_TEXT_SELECTION_DESCRIPTION";
  *(v3 + 14184) = "VERBOSITY_CONTROLS_VERBOSITY_CONTROLS_DESCRIPTION";
  *(v3 + 9368) = 55;
  *(v3 + 14208) = "VERBOSITY_VERBOSITY_DESCRIPTION";
  *(v3 + 9344) = 69;
  *(v3 + 14232) = "VIBRATION_VIBRATION_DESCRIPTION";
  *(v3 + 9320) = 49;
  *(v3 + 14256) = "VIRTUAL_TRACKPAD_VIRTUAL_TRACKPAD_DESCRIPTION";
  *(v3 + 14280) = "VOCABULARY_VOCABULARY_DESCRIPTION";
  *(v3 + 8048) = 33;
  *(v3 + 8096) = 67;
  *(v3 + 9272) = 37;
  *(v3 + 9296) = 33;
  *(v3 + 8216) = 33;
  *(v3 + 8288) = 33;
  *(v3 + 8480) = 33;
  *(v3 + 8960) = 67;
  *(v3 + 9224) = 47;
  *(v3 + 13232) = 33;
  *(v3 + 14288) = 33;
  *(v3 + 14304) = "VOICEOVER_DELAY_UNTIL_SPEAK_VOICEOVER_DELAY_UNTIL_SPEAK_DESCRIPTION";
  *(v3 + 14312) = 67;
  *(v3 + 14328) = "VOICEOVER_FEEDBACK_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 14352) = "VOICEOVER_FEEDBACK_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 8864) = 56;
  *(v3 + 9152) = 43;
  *(v3 + 9176) = 45;
  *(v3 + 14360) = 56;
  *(v3 + 14376) = "VOICEOVER_IMAGE_DESCRIPTIONS_VOICEOVER_IMAGE_DESCRIPTIONS_DESCRIPTION";
  *(v3 + 14400) = "VOICEOVER_RECOGNITION_VOICEOVER_RECOGNITION_DESCRIPTION";
  *(v3 + 8312) = 55;
  *(v3 + 9080) = 55;
  *(v3 + 9128) = 53;
  *(v3 + 9104) = 41;
  *(v3 + 13976) = 55;
  *(v3 + 14168) = 55;
  *(v3 + 14408) = 55;
  *(v3 + 14424) = "VOICEOVER_SCREEN_RECOGNITION_VOICEOVER_SCREEN_RECOGNITION_DESCRIPTION";
  *(v3 + 7448) = 63;
  *(v3 + 7544) = 63;
  *(v3 + 7664) = 69;
  *(v3 + 8720) = 63;
  *(v3 + 9056) = 53;
  *(v3 + 8984) = 51;
  *(v3 + 9008) = 57;
  *(v3 + 14384) = 69;
  *(v3 + 14432) = 69;
  *(v3 + 14448) = "VOICEOVER_SOUNDS_VOICEOVER_SOUNDS_DESCRIPTION";
  *(v3 + 14472) = "VOICEOVER_SOUNDS__HAPTICS_VOICEOVER_SOUNDS__HAPTICS_DESCRIPTION";
  *(v3 + 14480) = 63;
  *(v3 + 14496) = "VOICEOVER_TUTORIAL_VOICEOVER_TUTORIAL_DESCRIPTION";
  *(v3 + 14520) = "VOICEOVER_VOICEOVER_DESCRIPTION";
  *(v3 + 14544) = "VOICES_SC_VOICES_DESCRIPTION";
  *(v3 + 14552) = 28;
  *(v3 + 8120) = 39;
  *(v3 + 8144) = 48;
  *(v3 + 8936) = 47;
  *(v3 + 8168) = 49;
  *(v3 + 0x2000) = 49;
  *(v3 + 8240) = 51;
  *(v3 + 8264) = 39;
  *(v3 + 8432) = 35;
  *(v3 + 8888) = 25;
  *(v3 + 8456) = 25;
  *(v3 + 8528) = 49;
  *(v3 + 8552) = 58;
  *(v3 + 8576) = 35;
  *(v3 + 8600) = 45;
  *(v3 + 8840) = 47;
  *(v3 + 8624) = 39;
  *(v3 + 8648) = 45;
  *(v3 + 8672) = 47;
  *(v3 + 8696) = 43;
  *(v3 + 8768) = 43;
  *(v3 + 8792) = 37;
  *(v3 + 13216) = 2;
  *(v3 + 13240) = 2;
  *(v3 + 13264) = 2;
  *(v3 + 13288) = 2;
  *(v3 + 13312) = 2;
  *(v3 + 13336) = 2;
  *(v3 + 13360) = 2;
  *(v3 + 13384) = 2;
  *(v3 + 13408) = 2;
  *(v3 + 13432) = 2;
  *(v3 + 13456) = 2;
  *(v3 + 13480) = 2;
  *(v3 + 13504) = 2;
  *(v3 + 13528) = 2;
  *(v3 + 13552) = 2;
  *(v3 + 13576) = 2;
  *(v3 + 13600) = 2;
  *(v3 + 13624) = 2;
  *(v3 + 13648) = 2;
  *(v3 + 13672) = 2;
  *(v3 + 13696) = 2;
  *(v3 + 13720) = 2;
  *(v3 + 13744) = 2;
  *(v3 + 13768) = 2;
  *(v3 + 13792) = 2;
  *(v3 + 13816) = 2;
  *(v3 + 13840) = 2;
  *(v3 + 13864) = 2;
  *(v3 + 13888) = 2;
  *(v3 + 13912) = 2;
  *(v3 + 13936) = 2;
  *(v3 + 13960) = 2;
  *(v3 + 13984) = 2;
  *(v3 + 14008) = 2;
  *(v3 + 14032) = 2;
  *(v3 + 14056) = 2;
  *(v3 + 14080) = 2;
  *(v3 + 14104) = 2;
  *(v3 + 14128) = 2;
  *(v3 + 14152) = 2;
  *(v3 + 14176) = 2;
  *(v3 + 14200) = 2;
  *(v3 + 14224) = 2;
  *(v3 + 14248) = 2;
  *(v3 + 14272) = 2;
  *(v3 + 14296) = 2;
  *(v3 + 14320) = 2;
  *(v3 + 14344) = 2;
  *(v3 + 14368) = 2;
  *(v3 + 14392) = 2;
  *(v3 + 14416) = 2;
  *(v3 + 14440) = 2;
  *(v3 + 14464) = 2;
  *(v3 + 14488) = 2;
  *(v3 + 14512) = 2;
  *(v3 + 14536) = 2;
  *(v3 + 14560) = 2;
  *(v3 + 14584) = 2;
  *(v3 + 14608) = 2;
  *(v3 + 14632) = 2;
  *(v3 + 14656) = 2;
  *(v3 + 14680) = 2;
  *(v3 + 14704) = 2;
  *(v3 + 14728) = 2;
  *(v3 + 14752) = 2;
  *(v3 + 14776) = 2;
  *(v3 + 14800) = 2;
  *(v3 + 14824) = 2;
  *(v3 + 14848) = 2;
  *(v3 + 14872) = 2;
  *(v3 + 14896) = 2;
  *(v3 + 14920) = 2;
  *(v3 + 14944) = 2;
  *(v3 + 14968) = 2;
  *(v3 + 14992) = 2;
  *(v3 + 15016) = 2;
  *(v3 + 15040) = 2;
  *(v3 + 15064) = 2;
  *(v3 + 15088) = 2;
  *(v3 + 15112) = 2;
  *(v3 + 15136) = 2;
  *(v3 + 15160) = 2;
  *(v3 + 15184) = 2;
  *(v3 + 15208) = 2;
  *(v3 + 15232) = 2;
  *(v3 + 15256) = 2;
  *(v3 + 14568) = "VOICES_VOICES_DESCRIPTION";
  *(v3 + 14592) = "VOICE_CONTROL_VOICE_CONTROL_DESCRIPTION";
  *(v3 + 7352) = 39;
  *(v3 + 7496) = 39;
  *(v3 + 13472) = 39;
  *(v3 + 14024) = 39;
  *(v3 + 14600) = 39;
  *(v3 + 14616) = "VOICE_FEEDBACK_VOICE_FEEDBACK_DESCRIPTION";
  *(v3 + 7952) = 49;
  *(v3 + 8000) = 31;
  *(v3 + 13400) = 41;
  *(v3 + 13424) = 41;
  *(v3 + 13544) = 41;
  *(v3 + 14624) = 41;
  *(v3 + 14640) = "VO_APPLY_TO_APPS_VO_APPLY_TO_APPS_DESCRIPTION";
  *(v3 + 7328) = 45;
  *(v3 + 13568) = 45;
  *(v3 + 14048) = 45;
  *(v3 + 14264) = 45;
  *(v3 + 14456) = 45;
  *(v3 + 14648) = 45;
  *(v3 + 14664) = "VO_APPLY_TO_APPS_VO_APPLY_TO_APPS_SR_DESCRIPTION";
  *(v3 + 7904) = 43;
  *(v3 + 13256) = 29;
  *(v3 + 14672) = 48;
  *(v3 + 14688) = "VO_AUDIO_VO_AUDIO_DESCRIPTION";
  *(v3 + 14696) = 29;
  *(v3 + 14712) = "VO_BRAILLE_SCREEN_KEYBOARD_COMMAND_VO_BRAILLE_SCREEN_KEYBOARD_COMMAND_DESCRIPTION";
  *(v3 + 14720) = 81;
  *(v3 + 14736) = "VO_DIRECT_TOUCH_APPS_VO_DIRECT_TOUCH_APPS_DESCRIPTION";
  *(v3 + 14760) = "VO_FEEDBACK_VO_FEEDBACK_DESCRIPTION";
  *(v3 + 14784) = "VO_IMAGE_DESCRIPTIONS_ADDITIONAL_LANGUAGES_VO_IMAGE_DESCRIPTIONS_ADDITIONAL_LANGUAGES_DESCRIPTION";
  *(v3 + 14792) = 97;
  *(v3 + 14808) = "VO_IMAGE_DESCRIPTIONS_SENSITIVE_CONTENT_OUTPUT_VO_IMAGE_DESCRIPTIONS_SENSITIVE_CONTENT_OUTPUT_DESCRIPTION";
  *(v3 + 14816) = 105;
  *(v3 + 14832) = "VO_MAGIC_TAP_COMMAND_VO_MAGIC_TAP_COMMAND_DESCRIPTION";
  *(v3 + 14856) = "VO_NAVIGATION_STYLE_VO_NAVIGATION_STYLE_DESCRIPTION";
  *(v3 + 7640) = 51;
  *(v3 + 7760) = 51;
  *(v3 + 13352) = 51;
  *(v3 + 13832) = 51;
  *(v3 + 14120) = 51;
  *(v3 + 14864) = 51;
  *(v3 + 14880) = "VO_OCR_VO_OCR_DESCRIPTION";
  *(v3 + 13760) = 25;
  *(v3 + 14576) = 25;
  *(v3 + 14888) = 25;
  *(v3 + 14904) = "WORD_WRAP_WORD_WRAP_DESCRIPTION";
  *(v3 + 7688) = 49;
  *(v3 + 13280) = 31;
  *(v3 + 14216) = 31;
  *(v3 + 14240) = 31;
  *(v3 + 14528) = 31;
  *(v3 + 14912) = 31;
  *(v3 + 14928) = "ZOOM_AS_DEFAULT_DIAL_ZOOM_AS_DEFAULT_DIAL_DESCRIPTION";
  *(v3 + 7376) = 53;
  *(v3 + 7592) = 35;
  *(v3 + 7616) = 35;
  *(v3 + 13328) = 53;
  *(v3 + 13496) = 53;
  *(v3 + 13880) = 53;
  *(v3 + 13928) = 53;
  *(v3 + 14096) = 53;
  *(v3 + 14336) = 47;
  *(v3 + 14744) = 53;
  *(v3 + 14840) = 53;
  *(v3 + 14936) = 53;
  *(v3 + 14952) = "ZOOM_BORDER_COLOR_ZOOM_BORDER_COLOR_DESCRIPTION";
  *(v3 + 14960) = 47;
  *(v3 + 14976) = "ZOOM_CONTENT_ZOOM_CONTENT_DESCRIPTION";
  *(v3 + 7280) = 37;
  *(v3 + 13664) = 37;
  *(v3 + 13736) = 37;
  *(v3 + 14984) = 37;
  *(v3 + 15000) = "ZOOM_CONTROLLER_ACTION_DOUBLE_TAP_ZOOM_CONTROLLER_ACTION_DOUBLE_TAP_DESCRIPTION";
  *(v3 + 15024) = "ZOOM_CONTROLLER_ACTION_SINGLE_TAP_ZOOM_CONTROLLER_ACTION_SINGLE_TAP_DESCRIPTION";
  *(v3 + 15048) = "ZOOM_CONTROLLER_ACTION_TRIPLE_TAP_ZOOM_CONTROLLER_ACTION_TRIPLE_TAP_DESCRIPTION";
  *(v3 + 15008) = 79;
  *(v3 + 15032) = 79;
  *(v3 + 15056) = 79;
  *(v3 + 15072) = "ZOOM_CONTROLLER_ZOOM_CONTROLLER_DESCRIPTION";
  *(v3 + 13712) = 43;
  *(v3 + 14072) = 43;
  *(v3 + 15080) = 43;
  *(v3 + 15096) = "ZOOM_FILTER_ZOOM_FILTER_DESCRIPTION";
  *(v3 + 15120) = "ZOOM_IDLE_SLUG_OPACITY_ZOOM_IDLE_SLUG_OPACITY_DESCRIPTION";
  *(v3 + 15144) = "ZOOM_REGION_ZOOM_REGION_DESCRIPTION";
  *(v3 + 13784) = 35;
  *(v3 + 14768) = 35;
  *(v3 + 15104) = 35;
  *(v3 + 15152) = 35;
  *(v3 + 15168) = "ZOOM_TAP_AND_SLIDE_TO_ADJUST_ZOOM_LEVEL_ZOOM_TAP_AND_SLIDE_TO_ADJUST_ZOOM_LEVEL_DESCRIPTION";
  *(v3 + 14144) = 57;
  *(v3 + 15128) = 57;
  *(v3 + 15176) = 91;
  *(v3 + 15192) = "ZOOM_WITH_SCROLL_WHEEL_ZOOM_WITH_SCROLL_WHEEL_DESCRIPTION";
  *(v3 + 15200) = 57;
  *(v3 + 15216) = "ZOOM_WITH_TRACKPAD_ZOOM_WITH_TRACKPAD_DESCRIPTION";
  *(v3 + 13304) = 49;
  *(v3 + 13376) = 49;
  *(v3 + 14192) = 49;
  *(v3 + 14504) = 49;
  *(v3 + 15224) = 49;
  *(v3 + 15240) = "ZOOM_ZOOM_DESCRIPTION";
  *(v3 + 15248) = 21;
  *(v3 + 7976) = 58;
  v4._rawValue = nullsub_1(v9);
  v5 = sub_1002D8E30(v4, v10);

  v6 = v5 - 128;
  if (v5 < 0x80)
  {
    return v5;
  }

  if (v6 < 0x40)
  {
    return v6 | 0x80;
  }

  if (v5 - 192 < 0x40)
  {
    return (v5 - 192) | 0xC0u;
  }

  if (v5 - 256 < 0x40)
  {
    return (v5 - 256) | 0x100u;
  }

  if (v5 - 320 < 0x40)
  {
    return (v5 - 320) | 0x140u;
  }

  if (v5 - 384 < 0x40)
  {
    return (v5 - 384) | 0x180u;
  }

  if (v5 - 448 < 0x40)
  {
    return (v5 - 448) | 0x1C0u;
  }

  v8 = v5 - 512;
  result = 534;
  v5 = 512;
  switch(v8)
  {
    case 0uLL:
      return v5;
    case 1uLL:
      return 513;
    case 2uLL:
      return 514;
    case 3uLL:
      return 515;
    case 4uLL:
      return 516;
    case 5uLL:
      return 517;
    case 6uLL:
      return 518;
    case 7uLL:
      return 519;
    case 8uLL:
      return 520;
    case 9uLL:
      return 521;
    case 0xAuLL:
      return 522;
    case 0xBuLL:
      return 523;
    case 0xCuLL:
      return 524;
    case 0xDuLL:
      return 525;
    case 0xEuLL:
      return 526;
    case 0xFuLL:
      return 527;
    case 0x10uLL:
      return 528;
    case 0x11uLL:
      return 529;
    case 0x12uLL:
      return 530;
    case 0x13uLL:
      return 531;
    case 0x14uLL:
      return 532;
    case 0x15uLL:
      return 533;
    case 0x16uLL:
      return result;
    case 0x17uLL:
      result = 535;
      break;
    case 0x18uLL:
      result = 536;
      break;
    case 0x19uLL:
      result = 537;
      break;
    case 0x1AuLL:
      result = 538;
      break;
    case 0x1BuLL:
      result = 539;
      break;
    case 0x1CuLL:
      result = 540;
      break;
    case 0x1DuLL:
      result = 541;
      break;
    case 0x1EuLL:
      result = 542;
      break;
    case 0x1FuLL:
      result = 543;
      break;
    case 0x20uLL:
      result = 544;
      break;
    case 0x21uLL:
      result = 545;
      break;
    case 0x22uLL:
      result = 546;
      break;
    case 0x23uLL:
      result = 547;
      break;
    case 0x24uLL:
      result = 548;
      break;
    case 0x25uLL:
      result = 549;
      break;
    case 0x26uLL:
      result = 550;
      break;
    case 0x27uLL:
      result = 551;
      break;
    case 0x28uLL:
      result = 552;
      break;
    case 0x29uLL:
      result = 553;
      break;
    case 0x2AuLL:
      result = 554;
      break;
    case 0x2BuLL:
      result = 555;
      break;
    case 0x2CuLL:
      result = 556;
      break;
    case 0x2DuLL:
      result = 557;
      break;
    case 0x2EuLL:
      result = 558;
      break;
    case 0x2FuLL:
      result = 559;
      break;
    case 0x30uLL:
      result = 560;
      break;
    case 0x31uLL:
      result = 561;
      break;
    case 0x32uLL:
      result = 562;
      break;
    case 0x33uLL:
      result = 563;
      break;
    case 0x34uLL:
      result = 564;
      break;
    case 0x35uLL:
      result = 565;
      break;
    case 0x36uLL:
      result = 566;
      break;
    case 0x37uLL:
      result = 567;
      break;
    case 0x38uLL:
      result = 568;
      break;
    case 0x39uLL:
      result = 569;
      break;
    case 0x3AuLL:
      result = 570;
      break;
    case 0x3BuLL:
      result = 571;
      break;
    case 0x3CuLL:
      result = 572;
      break;
    case 0x3DuLL:
      result = 573;
      break;
    case 0x3EuLL:
      result = 574;
      break;
    case 0x3FuLL:
      result = 575;
      break;
    default:
      result = 636;
      break;
  }

  return result;
}

unint64_t sub_1000D970C()
{
  result = qword_1004469F8;
  if (!qword_1004469F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004469F8);
  }

  return result;
}

unint64_t sub_1000D9764()
{
  result = qword_100446A38;
  if (!qword_100446A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446A38);
  }

  return result;
}

unint64_t sub_1000D97B8()
{
  result = qword_100446A40;
  if (!qword_100446A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100446A40);
  }

  return result;
}

unint64_t sub_1000D9830()
{
  result = qword_1004476B8;
  if (!qword_1004476B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476B8);
  }

  return result;
}

uint64_t sub_1000D98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000321C(&qword_10043F808, &unk_100352800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002AC00(a3, v27 - v11, &qword_10043F808, &unk_100352800);
  v13 = sub_1002D8DB0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1002D59BC(v12);
  }

  else
  {
    sub_1002D8DA0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1002D8D70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1002D8D30() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1002D59BC(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1002D59BC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}