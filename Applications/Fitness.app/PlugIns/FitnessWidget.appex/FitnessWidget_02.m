BOOL sub_1000364FC()
{
  sub_10000A8C4();
  sub_1000444E8();
  sub_1000444E8();
  v0 = sub_100044298();

  if (v0 < 6)
  {
    v2 = sub_100044298();

    return v2 < 6;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100036650@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000437E8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000366B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100043728();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100036714@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100043728();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003676C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000437E8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1000367D4()
{
  result = qword_10005A738;
  if (!qword_10005A738)
  {
    sub_100002940(&qword_10005A730);
    sub_10003688C();
    sub_100002F14(&qword_1000591C0, &qword_1000591C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A738);
  }

  return result;
}

unint64_t sub_10003688C()
{
  result = qword_10005A740;
  if (!qword_10005A740)
  {
    sub_100002940(&qword_10005A728);
    sub_100036944();
    sub_100002F14(&qword_10005A658, &qword_10005A660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A740);
  }

  return result;
}

unint64_t sub_100036944()
{
  result = qword_10005A748;
  if (!qword_10005A748)
  {
    sub_100002940(&qword_10005A720);
    sub_1000369FC();
    sub_100002F14(&qword_10005A648, &qword_10005A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A748);
  }

  return result;
}

unint64_t sub_1000369FC()
{
  result = qword_10005A750;
  if (!qword_10005A750)
  {
    sub_100002940(&qword_10005A718);
    sub_100035324();
    sub_100002F14(&qword_10005A758, &qword_10005A760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A750);
  }

  return result;
}

id sub_100036AB4()
{
  v1 = sub_1000028F8(&qword_10005A768);
  __chkstk_darwin(v1);
  v3 = &v14[-v2 - 8];
  v4 = sub_1000028F8(&qword_10005A770);
  __chkstk_darwin(v4);
  v6 = &v14[-v5 - 8];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = [result isStandalonePhoneFitnessMode];

    if (v9)
    {
      sub_100036D44(v6);
      sub_100039678(v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1000028F8(&qword_10005A778);
      sub_10003954C();
      sub_100002F14(&qword_10005A798, &qword_10005A778);
      sub_100043988();
      return sub_1000396E8(v6);
    }

    else
    {
      v10 = swift_allocObject();
      v11 = *(v0 + 48);
      *(v10 + 48) = *(v0 + 32);
      *(v10 + 64) = v11;
      *(v10 + 80) = *(v0 + 64);
      v12 = *(v0 + 16);
      *(v10 + 16) = *v0;
      *(v10 + 32) = v12;
      *v3 = sub_100039544;
      v3[1] = v10;
      swift_storeEnumTagMultiPayload();
      sub_10002B0D8(v0, v14);
      sub_1000028F8(&qword_10005A778);
      sub_10003954C();
      sub_100002F14(&qword_10005A798, &qword_10005A778);
      return sub_100043988();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100036D44@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_1000439D8();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000028F8(&qword_10005A788);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v20 = sub_1000028F8(&qword_10005A7A0);
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v19 - v8;
  *v6 = sub_100043908();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = sub_1000028F8(&qword_10005A7A8);
  sub_100037038(&v6[*(v10 + 44)]);
  sub_1000439B8();
  v11 = sub_100002F14(&qword_10005A790, &qword_10005A788);
  sub_100043CF8();
  (*(v1 + 8))(v3, v19);
  sub_100009D50(v6, &qword_10005A788);
  v22 = sub_1000304AC();
  v23 = v12;
  sub_10000A8C4();
  v13 = sub_100043C48();
  v15 = v14;
  LOBYTE(v1) = v16;
  v22 = v4;
  v23 = v11;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_100043CB8();
  sub_10000A918(v13, v15, v1 & 1);

  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_100037038@<X0>(uint64_t a1@<X8>)
{
  v36 = sub_1000028F8(&qword_10005A7B0) - 8;
  __chkstk_darwin(v36);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v39 = sub_100043858();
  LOBYTE(v41) = 0;
  sub_1000374F0(&v59);
  v49 = *&v60[16];
  v50 = *&v60[32];
  v51 = v60[48];
  v47 = v59;
  v48 = *v60;
  v52[2] = *&v60[16];
  v52[3] = *&v60[32];
  v53 = v60[48];
  v52[0] = v59;
  v52[1] = *v60;
  sub_10000A1F8(&v47, &v57, &qword_10005A7B8);
  sub_100009D50(v52, &qword_10005A7B8);
  *&v40[23] = v48;
  *&v40[39] = v49;
  *&v40[55] = v50;
  v40[71] = v51;
  *&v40[7] = v47;
  v37 = v41;
  *&v59 = sub_100038D40(sub_10003C5A8, sub_10003C5BC);
  *(&v59 + 1) = v6;
  sub_10000A8C4();
  v7 = sub_100043C48();
  v9 = v8;
  v11 = v10;
  sub_100043AA8();
  sub_100043B18();

  v12 = sub_100043BF8();
  v14 = v13;
  LODWORD(v34) = v15;
  v35 = v16;

  sub_10000A918(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v18 = &v5[*(v36 + 44)];
  sub_1000028F8(&qword_10005A610);
  sub_1000436A8();
  *v18 = swift_getKeyPath();
  *v5 = v12;
  *(v5 + 1) = v14;
  v5[16] = v34 & 1;
  *(v5 + 3) = v35;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 0x3FE3333333333333;
  v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v19 descender];

  sub_100043EC8();
  sub_1000435E8();
  v35 = v43;
  v36 = v41;
  v33 = v46;
  v34 = v45;
  v56 = 1;
  v55 = v42;
  v54 = v44;
  v20 = v38;
  sub_10000A1F8(v5, v38, &qword_10005A7B0);
  *(v58 + 1) = *v40;
  *(&v58[3] + 1) = *&v40[48];
  LOBYTE(v14) = v56;
  v21 = v55;
  v22 = v54;
  v23 = v39;
  v57 = v39;
  v24 = v37;
  LOBYTE(v58[0]) = v37;
  *(&v58[4] + 1) = *&v40[64];
  *(&v58[2] + 1) = *&v40[32];
  *(&v58[1] + 1) = *&v40[16];
  v25 = v58[2];
  *(a1 + 32) = v58[1];
  *(a1 + 48) = v25;
  *(a1 + 64) = v58[3];
  *(a1 + 73) = *(&v58[3] + 9);
  v26 = v58[0];
  *a1 = v57;
  *(a1 + 16) = v26;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v27 = sub_1000028F8(&qword_10005A7C0);
  sub_10000A1F8(v20, a1 + *(v27 + 64), &qword_10005A7B0);
  v28 = a1 + *(v27 + 80);
  *v28 = 0;
  *(v28 + 8) = v14;
  v29 = v35;
  *(v28 + 16) = v36;
  *(v28 + 24) = v21;
  *(v28 + 32) = v29;
  *(v28 + 40) = v22;
  v30 = v33;
  *(v28 + 48) = v34;
  *(v28 + 56) = v30;
  sub_10000A1F8(&v57, &v59, &qword_10005A7C8);
  sub_100009D50(v5, &qword_10005A7B0);
  sub_100009D50(v20, &qword_10005A7B0);
  v59 = v23;
  v60[0] = v24;
  *&v60[17] = *&v40[16];
  *&v60[33] = *&v40[32];
  v61 = *&v40[48];
  v62 = *&v40[64];
  *&v60[1] = *v40;
  return sub_100009D50(&v59, &qword_10005A7C8);
}

uint64_t sub_1000374F0@<X0>(uint64_t a1@<X8>)
{
  v28 = sub_100043DB8();
  v27 = sub_100043B38();
  KeyPath = swift_getKeyPath();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_100044238();
  v5 = sub_100044238();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_100044258();
  v7 = [v2 mainBundle];
  v8 = sub_100044238();
  v9 = sub_100044238();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_100044258();
  sub_10000A8C4();
  v11 = sub_1000444D8();
  v13 = v12;

  v29._countAndFlagsBits = v11;
  v29._object = v13;
  sub_1000442A8(v29);

  v14 = sub_100043C48();
  v16 = v15;
  LOBYTE(v3) = v17;
  sub_100043B38();
  v18 = sub_100043BF8();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10000A918(v14, v16, v3 & 1);

  *a1 = v28;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v27;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22 & 1;
  *(a1 + 48) = v24;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;

  sub_10001D3B8(v18, v20, v22 & 1);

  sub_10000A918(v18, v20, v22 & 1);
}

uint64_t sub_10003782C@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_1000028F8(&qword_10005A818);
  __chkstk_darwin(v62);
  v4 = &v57 - v3;
  v64 = sub_1000028F8(&qword_10005A820);
  __chkstk_darwin(v64);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v57 - v7;
  __chkstk_darwin(v8);
  v66 = &v57 - v9;

  v75 = sub_100043DB8();
  v74 = sub_100043B38();
  KeyPath = swift_getKeyPath();
  v10 = v1[6];
  sub_100043EC8();
  v68 = v10;
  sub_100043698();
  v11 = v1[3];
  v82 = v1[2];
  v83 = v11;
  sub_10000A8C4();

  v12 = sub_100043C48();
  v14 = v13;
  v16 = v15;
  sub_100043B38();
  v17 = sub_100043BF8();
  v71 = v18;
  v72 = v17;
  v69 = v19;
  v65 = v20;

  sub_10000A918(v12, v14, v16 & 1);

  v70 = swift_getKeyPath();
  sub_100043EC8();
  sub_100043698();
  *&v108[55] = v122;
  *&v108[71] = v123;
  *&v108[87] = v124;
  *&v108[103] = v125;
  *&v108[7] = v119;
  *&v108[23] = v120;
  v69 &= 1u;
  v111 = v69;
  v109 = 0;
  *&v108[39] = v121;
  v21 = v1[5];
  v60 = v1[4];
  v61 = v21;
  v82 = v60;
  v83 = v21;

  v22 = sub_100043C48();
  v24 = v23;
  v26 = v25;
  sub_100043A98();
  sub_100043B18();

  v27 = sub_100043BF8();
  v58 = v28;
  v59 = v27;
  v30 = v29;
  v57 = v31;

  sub_10000A918(v22, v24, v26 & 1);

  v32 = swift_getKeyPath();
  sub_100043EC8();
  sub_100043698();
  *&v105[55] = v129;
  *&v105[71] = v130;
  *&v105[87] = v131;
  *&v105[103] = v132;
  *&v105[7] = v126;
  *&v105[23] = v127;
  v107 = v30 & 1;
  v106 = 0;
  v33 = &v4[*(v62 + 36)];
  *&v105[39] = v128;
  sub_1000028F8(&qword_10005A610);
  sub_1000436A8();
  *v33 = swift_getKeyPath();
  v34 = *&v105[80];
  *(v4 + 113) = *&v105[64];
  *(v4 + 129) = v34;
  *(v4 + 145) = *&v105[96];
  v35 = *&v105[16];
  *(v4 + 49) = *v105;
  *(v4 + 65) = v35;
  v36 = *&v105[48];
  *(v4 + 81) = *&v105[32];
  v37 = v58;
  *v4 = v59;
  *(v4 + 1) = v37;
  v4[16] = v30 & 1;
  *(v4 + 3) = v57;
  *(v4 + 4) = v32;
  *(v4 + 5) = 1;
  v4[48] = 0;
  *(v4 + 20) = *&v105[111];
  *(v4 + 97) = v36;
  sub_100043F08();
  v38 = sub_100043EF8();

  v39 = v63;
  sub_1000029D8(v4, v63, &qword_10005A818);
  v40 = (v39 + *(v64 + 36));
  v41 = v60;
  v42 = v61;
  *v40 = v38;
  v40[1] = v41;
  v40[2] = v42;
  v43 = v66;
  sub_1000029D8(v39, v66, &qword_10005A820);
  v44 = v67;
  sub_10000A1F8(v43, v67, &qword_10005A820);
  *&v76 = v75;
  *(&v76 + 1) = KeyPath;
  *v77 = v74;
  *&v77[104] = v118;
  *&v77[88] = v117;
  *&v77[56] = v115;
  *&v77[72] = v116;
  *&v77[8] = v112;
  *&v77[24] = v113;
  *&v77[40] = v114;
  v45 = *&v77[96];
  *(a1 + 96) = *&v77[80];
  *(a1 + 112) = v45;
  v46 = *v77;
  *a1 = v76;
  *(a1 + 16) = v46;
  v47 = *&v77[32];
  *(a1 + 32) = *&v77[16];
  *(a1 + 48) = v47;
  v48 = *&v77[64];
  *(a1 + 64) = *&v77[48];
  *(a1 + 80) = v48;
  *&v78 = v72;
  *(&v78 + 1) = v71;
  LOBYTE(v79) = v69;
  *(&v79 + 1) = *v110;
  DWORD1(v79) = *&v110[3];
  v49 = v65;
  *(&v79 + 1) = v65;
  *&v80 = v70;
  *(&v80 + 1) = 1;
  v81[0] = 0;
  *&v81[65] = *&v108[64];
  *&v81[81] = *&v108[80];
  *&v81[97] = *&v108[96];
  *&v81[1] = *v108;
  *&v81[17] = *&v108[16];
  *&v81[33] = *&v108[32];
  *&v81[49] = *&v108[48];
  v50 = *v81;
  *(a1 + 168) = v80;
  v51 = *&v81[64];
  *(a1 + 232) = *&v81[48];
  v52 = *&v81[16];
  *(a1 + 216) = *&v81[32];
  *(a1 + 200) = v52;
  *(a1 + 184) = v50;
  v53 = v78;
  *(a1 + 152) = v79;
  v54 = *&v81[96];
  *(a1 + 264) = *&v81[80];
  *(a1 + 280) = v54;
  *(a1 + 248) = v51;
  *(a1 + 128) = *&v77[112];
  *&v81[112] = *&v108[111];
  *(a1 + 296) = *&v108[111];
  *(a1 + 136) = v53;
  v55 = sub_1000028F8(&qword_10005A828);
  sub_10000A1F8(v44, a1 + *(v55 + 64), &qword_10005A820);

  sub_10000A1F8(&v76, &v82, &qword_10005A830);
  sub_10000A1F8(&v78, &v82, &qword_10005A838);
  sub_100009D50(v43, &qword_10005A820);
  sub_100009D50(v44, &qword_10005A820);
  v94 = *&v108[64];
  v95 = *&v108[80];
  *v96 = *&v108[96];
  v90 = *v108;
  v91 = *&v108[16];
  v92 = *&v108[32];
  v82 = v72;
  v83 = v71;
  v84 = v69;
  *v85 = *v110;
  *&v85[3] = *&v110[3];
  v86 = v49;
  v87 = v70;
  v88 = 1;
  v89 = 0;
  *&v96[15] = *&v108[111];
  v93 = *&v108[48];
  sub_100009D50(&v82, &qword_10005A838);
  v101 = v115;
  v102 = v116;
  v103 = v117;
  v104 = v118;
  v98 = v112;
  v99 = v113;
  v97[0] = v75;
  v97[1] = KeyPath;
  v97[2] = v74;
  v100 = v114;
  return sub_100009D50(v97, &qword_10005A830);
}

uint64_t sub_1000381F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[2] = a2;
  v30 = a3;
  v5 = sub_1000439D8();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043998();
  __chkstk_darwin(v8);
  v9 = sub_1000028F8(&qword_10005A7D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v26 = sub_1000028F8(&qword_10005A7D8);
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = v25 - v13;
  sub_1000435F8();
  v25[1] = sub_1000397D4(v15);
  v31 = a2;
  v32 = a1;
  sub_1000438F8();
  LODWORD(v33) = 0;
  sub_100039A30(&qword_10005A7E0, &type metadata accessor for PinnedScrollableViews);
  sub_1000446A8();
  sub_1000028F8(&qword_10005A7E8);
  sub_100002F14(&qword_10005A7F0, &qword_10005A7E8);
  sub_100043F28();
  sub_1000439B8();
  v16 = sub_100002F14(&qword_10005A7F8, &qword_10005A7D0);
  sub_100043CF8();
  (*(v27 + 8))(v7, v28);
  (*(v10 + 8))(v12, v9);
  v33 = sub_100038EE8();
  v34 = v17;
  sub_10000A8C4();
  v18 = sub_100043C48();
  v20 = v19;
  v22 = v21;
  v33 = v9;
  v34 = v16;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_100043CB8();
  sub_10000A918(v18, v20, v22 & 1);

  return (*(v29 + 8))(v14, v23);
}

uint64_t sub_10003862C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10003D524(*(a1 + 24), *(a1 + 32));
  sub_10000A8C4();
  v4 = sub_1000444D8();
  v50 = v5;
  v51 = v4;

  *&v49 = sub_100038D40(sub_10003C5A8, sub_10003C5BC);
  *(&v49 + 1) = v6;
  sub_1000435F8();
  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11 = sub_100044238();
  v12 = sub_100044238();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = sub_100044258();
  v16 = v15;

  v75[0] = v14;
  v75[1] = v16;
  v17 = sub_1000444D8();
  v47 = v18;
  v48 = v17;

  v19 = sub_100038B40();
  v44 = v20;
  v45 = v19;
  sub_1000435F8();
  v22 = 0xEE00646E6174732ELL;
  if (*(a1 + 8))
  {
    v22 = 0xED00006C6C6F722ELL;
  }

  v46 = v22;
  v23 = v21 / 3.0;
  *&v24 = v8 / 3.0;
  v25 = [v9 mainBundle];
  v26 = sub_100044238();
  v27 = sub_100044238();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v29 = sub_100044258();
  v31 = v30;

  v75[0] = v29;
  v75[1] = v31;
  v32 = sub_1000444D8();
  v34 = v33;

  v35 = sub_100038D40(sub_10003C710, sub_10003C724);
  v37 = v36;
  sub_1000435F8();
  strcpy(&v60, "activity.move");
  HIWORD(v60) = -4864;
  *&v61 = v51;
  *(&v61 + 1) = v50;
  v62 = v49;
  v63 = v24;
  v64 = 0;
  *&v65 = 0xD000000000000011;
  v39 = v38 / 3.0;
  *(&v65 + 1) = 0x800000010004FF40;
  *&v66 = v48;
  *(&v66 + 1) = v47;
  *&v67 = v45;
  *(&v67 + 1) = v44;
  *&v68 = v23;
  *(&v68 + 1) = 0x3FC3333333333333;
  *&v69 = 0x7974697669746361;
  v54 = v67;
  v55 = v68;
  v52 = v65;
  v53 = v66;
  *(&v69 + 1) = v46;
  *&v70 = v32;
  *(&v70 + 1) = v34;
  *&v71 = v35;
  *(&v71 + 1) = v37;
  *&v72 = v38 / 3.0;
  *(&v72 + 1) = 0x3FD3333333333333;
  v58 = v71;
  v59 = v72;
  v56 = v69;
  v57 = v70;
  v40 = v60;
  v41 = v61;
  a2[2] = v49;
  a2[3] = v24;
  *a2 = v40;
  a2[1] = v41;
  a2[6] = v54;
  a2[7] = v55;
  a2[4] = v52;
  a2[5] = v53;
  a2[10] = v58;
  a2[11] = v59;
  a2[8] = v56;
  a2[9] = v57;
  v73[0] = 0x7974697669746361;
  v73[1] = v46;
  v73[2] = v32;
  v73[3] = v34;
  v73[4] = v35;
  v73[5] = v37;
  *&v73[6] = v39;
  v73[7] = 0x3FD3333333333333;
  sub_100039A78(&v60, v75);
  sub_100039A78(&v65, v75);
  sub_100039A78(&v69, v75);
  sub_100039AB0(v73);
  v74[0] = 0xD000000000000011;
  v74[1] = v43;
  v74[2] = v48;
  v74[3] = v47;
  v74[4] = v45;
  v74[5] = v44;
  *&v74[6] = v23;
  v74[7] = 0x3FC3333333333333;
  sub_100039AB0(v74);
  strcpy(v75, "activity.move");
  HIWORD(v75[1]) = -4864;
  v75[2] = v51;
  v75[3] = v50;
  v76 = v49;
  v77 = v24;
  v78 = 0;
  return sub_100039AB0(v75);
}

id sub_100038B40()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_10003C6FC(v1, v2, v4, v3);
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_100044238();
  v8 = sub_100044238();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_100044258();
  v12 = v11;

  v19._countAndFlagsBits = v10;
  v19._object = v12;
  sub_1000442A8(v19);

  v13 = v5;
  if (!v2)
  {
    goto LABEL_4;
  }

  v14 = v2;
  if ([v14 paused])
  {

LABEL_4:

LABEL_7:

    v20._countAndFlagsBits = v4;
    v20._object = v3;
    sub_1000442A8(v20);

    return v13;
  }

  v15 = [v14 exerciseTimeGoal];
  result = [v1 localizedStringWithBriskMinutes:v15];
  if (result)
  {
    v17 = result;
    v4 = sub_100044258();
    v3 = v18;

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038D40(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = a1(v3, v4, v5, v6);
  v8 = [objc_opt_self() mainBundle];
  v9 = sub_100044238();
  v10 = sub_100044238();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_100044258();
  v14 = v13;

  v20._countAndFlagsBits = v12;
  v20._object = v14;
  sub_1000442A8(v20);

  v15 = a2(v3, v4, v5, v6);
  v17 = v16;

  v21._countAndFlagsBits = v15;
  v21._object = v17;
  sub_1000442A8(v21);

  return v7;
}

uint64_t sub_100038EE8()
{
  v1 = *(v0 + 16);
  if (v1 && [v1 paused])
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = sub_100044238();
    v4 = sub_100044238();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_100044258();
    return v6;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v10 = sub_100044238();
    v11 = sub_100044238();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = sub_100044258();
    v14 = *(v0 + 32);
    sub_10003CE88(v14);
    v16 = v15;
    v18 = v17;

    v40._countAndFlagsBits = v16;
    v40._object = v18;
    sub_1000442A8(v40);

    v19 = [v8 mainBundle];
    v20 = sub_100044238();
    v21 = sub_100044238();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_100044258();
    v25 = v24;

    v41._countAndFlagsBits = v23;
    v41._object = v25;
    sub_1000442A8(v41);

    sub_10003D650(v14);
    v27 = v26;
    v29 = v28;

    v42._countAndFlagsBits = v27;
    v42._object = v29;
    sub_1000442A8(v42);

    v30 = [v8 mainBundle];
    v31 = sub_100044238();
    v32 = sub_100044238();
    v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

    v34 = sub_100044258();
    v36 = v35;

    v43._countAndFlagsBits = v34;
    v43._object = v36;
    sub_1000442A8(v43);

    v37 = sub_10003D93C(v14);
    v39 = v38;

    v44._countAndFlagsBits = v37;
    v44._object = v39;
    sub_1000442A8(v44);

    return v13;
  }
}

uint64_t sub_10003939C(uint64_t a1)
{
  v2 = sub_1000436B8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_100043768();
}

uint64_t sub_100039464@<X0>(void *a1@<X8>)
{
  result = sub_100043778();
  *a1 = v3;
  return result;
}

uint64_t sub_1000394E4()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10003954C()
{
  result = qword_10005A780;
  if (!qword_10005A780)
  {
    sub_100002940(&qword_10005A770);
    sub_100002940(&qword_10005A788);
    sub_100002F14(&qword_10005A790, &qword_10005A788);
    swift_getOpaqueTypeConformance2();
    sub_100039A30(&qword_100059348, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A780);
  }

  return result;
}

uint64_t sub_100039678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000396E8(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039750@<X0>(void *a1@<X8>)
{
  result = sub_100043778();
  *a1 = v3;
  return result;
}

uint64_t sub_1000397D4(double a1)
{
  v2 = sub_100043E88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000028F8(&qword_10005A800);
  sub_100043E98();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100047540;
  *v5 = 0x4034000000000000;
  v7 = enum case for GridItem.Size.fixed(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for GridItem.Size.fixed(_:), v2);
  sub_100043ED8();
  sub_100043EA8();
  *v5 = xmmword_100047550;
  v8(v5, enum case for GridItem.Size.flexible(_:), v2);
  sub_100043ED8();
  sub_100043EA8();
  *v5 = a1 * 0.5 + 6.0;
  v8(v5, v7, v2);
  sub_100043ED8();
  sub_100043EA8();
  return v6;
}

uint64_t sub_100039A30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100039AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100039B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100039B8C()
{
  result = qword_10005A808;
  if (!qword_10005A808)
  {
    sub_100002940(&qword_10005A810);
    sub_10003954C();
    sub_100002F14(&qword_10005A798, &qword_10005A778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A808);
  }

  return result;
}

uint64_t sub_100039CC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_1000599A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000028F8(&qword_100059C48);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100039E4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_1000599B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000028F8(&qword_1000599A8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000028F8(&qword_100059C48);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for StandaloneMetricsStack()
{
  result = qword_10005A8A8;
  if (!qword_10005A8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A00C()
{
  sub_10003A168(319, &unk_100059A28, &type metadata accessor for DynamicTypeSize);
  if (v0 <= 0x3F)
  {
    sub_10003A168(319, &qword_100059A20, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_10003A168(319, &qword_100059CB8, &type metadata accessor for WidgetRenderingMode);
      if (v2 <= 0x3F)
      {
        sub_100009BB8(319, &unk_10005A1C8);
        if (v3 <= 0x3F)
        {
          sub_10002A290();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10003A168(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100043578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003A1D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043818();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100059990);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StandaloneMetricsStack();
  sub_10000A1F8(v1 + *(v10 + 24), v9, &qword_100059990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100044018();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100044378();
    v13 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003A3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000028F8(&qword_10005A910);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  *v9 = sub_100043908();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_1000028F8(&qword_10005A918);
  sub_10003A52C(a1, &v9[*(v10 + 44)]);
  sub_10000A1F8(v9, v6, &qword_10005A910);
  sub_10000A1F8(v6, a2, &qword_10005A910);
  v11 = a2 + *(sub_1000028F8(&qword_10005A920) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_100009D50(v9, &qword_10005A910);
  return sub_100009D50(v6, &qword_10005A910);
}

uint64_t sub_10003A52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v270 = a2;
  v269 = sub_1000028F8(&qword_10005A928);
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v247 = &v234[-v3];
  v263 = type metadata accessor for StandaloneMetricView();
  __chkstk_darwin(v263);
  v242 = &v234[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v237 = &v234[-v6];
  v266 = sub_1000028F8(&qword_10005A930);
  v279 = *(v266 - 8);
  __chkstk_darwin(v266);
  v243 = &v234[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v239 = &v234[-v9];
  v264 = sub_1000028F8(&qword_10005A938);
  __chkstk_darwin(v264);
  v245 = &v234[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v246 = &v234[-v12];
  __chkstk_darwin(v13);
  v241 = &v234[-v14];
  __chkstk_darwin(v15);
  v244 = &v234[-v16];
  __chkstk_darwin(v17);
  v238 = &v234[-v18];
  __chkstk_darwin(v19);
  v280 = &v234[-v20];
  v272 = sub_100043648();
  v259 = *(v272 - 8);
  __chkstk_darwin(v272);
  v257 = &v234[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1000028F8(&qword_10005A940);
  __chkstk_darwin(v22 - 8);
  v267 = &v234[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v281 = &v234[-v25];
  v285 = sub_1000439D8();
  v288 = *(v285 - 8);
  __chkstk_darwin(v285);
  v284 = &v234[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v276 = sub_100044018();
  v283 = *(v276 - 8);
  __chkstk_darwin(v276);
  v275 = &v234[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v274 = &v234[-v29];
  v30 = type metadata accessor for FractionView();
  __chkstk_darwin(v30);
  v32 = &v234[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v256 = sub_1000028F8(&qword_10005A948);
  v255 = *(v256 - 1);
  __chkstk_darwin(v256);
  v254 = &v234[-v33];
  v253 = sub_1000028F8(&qword_10005A950);
  __chkstk_darwin(v253);
  v265 = &v234[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v252 = &v234[-v36];
  __chkstk_darwin(v37);
  v286 = &v234[-v38];
  v39 = type metadata accessor for HeaderLabel();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v236 = &v234[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v44 = &v234[-v43];
  __chkstk_darwin(v45);
  v287 = &v234[-v46];
  v47 = sub_1000028F8(&qword_10005A958);
  __chkstk_darwin(v47 - 8);
  v240 = &v234[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v278 = &v234[-v50];
  __chkstk_darwin(v51);
  v271 = &v234[-v52];
  __chkstk_darwin(v53);
  v277 = &v234[-v54];
  __chkstk_darwin(v55);
  v57 = &v234[-v56];
  v58 = type metadata accessor for StandaloneMetricsStack();
  v261 = *(a1 + v58[11]);
  v289 = a1;
  v273 = v39;
  v282 = v40;
  if (v261 == 1)
  {
    v59 = [objc_opt_self() mainBundle];
    v60 = sub_100044238();
    v61 = sub_100044238();
    v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

    v63 = sub_100044258();
    v65 = v64;

    if (*(v289 + v58[10]) == 1)
    {
      if (qword_100058DC8 != -1)
      {
        swift_once();
      }

      v66 = &qword_10005C9E0;
    }

    else
    {
      if (qword_100058D70 != -1)
      {
        swift_once();
      }

      v66 = &qword_10005C988;
    }

    v67 = *v66;

    v290 = 0x4026000000000000;
    sub_10000A5CC();
    sub_1000435A8();
    v68 = v273;
    v69 = &v44[*(v273 + 20)];
    *v69 = v63;
    v69[1] = v65;
    v70 = v68;
    *&v44[*(v68 + 24)] = v67;
    v71 = v44;
    v72 = v287;
    sub_10003C444(v71, v287);
    sub_10003C444(v72, v57);
    (*(v282 + 56))(v57, 0, 1, v70);
    a1 = v289;
  }

  else
  {
    (*(v40 + 56))(v57, 1, 1, v39);
  }

  v73 = *(a1 + v58[10]);
  v262 = v57;
  if (v73 == 1)
  {
    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v74 = qword_10005C9E0;
  }

  else
  {
    v75 = v274;
    sub_10003A1D8(v274);
    v76 = v275;
    sub_100044008();
    v77 = sub_100043FF8();
    v78 = *(v283 + 8);
    v79 = v76;
    v80 = v276;
    v78(v79, v276);
    v78(v75, v80);
    if (v77)
    {
      if (qword_100058D78 != -1)
      {
        swift_once();
      }

      v74 = qword_10005C990;
    }

    else
    {
      v74 = sub_100043D48();
    }

    a1 = v289;
  }

  v81 = a1 + v58[15];
  v82 = *v81;
  v83 = *(v81 + 8);
  v84 = *(v81 + 16);
  v85 = *(v81 + 24);
  sub_10003C5A8(*v81, v83, v84, v85);
  v260 = v86;
  v258 = v87;
  v248 = v82;
  v287 = v83;
  v250 = v84;
  v249 = v85;
  sub_10003C5BC(v82, v83, v84, v85);
  v89 = v88;
  v91 = v90;
  v235 = v73 | *(a1 + v58[9]);
  if (v235 & 1) != 0 || (v92 = v257, sub_1000429CC(v257), v93 = sub_100043638(), (*(v259 + 8))(v92, v272), (v93) || (*(a1 + v58[7]))
  {
    v94 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v94 = sub_10003D524(v248, v287);
    v95 = v152;
  }

  v96 = v58[7];
  v251 = v58;
  v97 = *(a1 + v96);
  *v32 = swift_getKeyPath();
  sub_1000028F8(&qword_100059B48);
  swift_storeEnumTagMultiPayload();
  v98 = v30[5];
  *(v32 + v98) = swift_getKeyPath();
  v259 = sub_1000028F8(&qword_100059990);
  swift_storeEnumTagMultiPayload();
  v290 = 0x4034000000000000;
  v272 = sub_10000A5CC();
  sub_1000435A8();
  *(v32 + v30[7]) = v74;
  v99 = (v32 + v30[8]);
  v100 = v258;
  *v99 = v260;
  v99[1] = v100;
  v101 = (v32 + v30[9]);
  *v101 = v89;
  v101[1] = v91;
  v102 = (v32 + v30[10]);
  *v102 = v94;
  v102[1] = v95;
  v103 = v30[11];
  LODWORD(v260) = v97;
  *(v32 + v103) = v97;
  *(v32 + v30[12]) = 0;
  v104 = v284;
  sub_1000439B8();
  v105 = sub_10003C32C(&qword_100059DE0, type metadata accessor for FractionView);
  v106 = v254;
  sub_100043CF8();
  v257 = *(v288 + 8);
  v288 += 8;
  (v257)(v104, v285);
  sub_10003C374(v32, type metadata accessor for FractionView);
  sub_10003CE88(v287);
  v290 = v107;
  v291 = v108;
  v258 = sub_10000A8C4();
  v109 = sub_100043C48();
  v111 = v110;
  v113 = v112;
  v290 = v30;
  v291 = v105;
  v114 = v289;
  v115 = 1;
  swift_getOpaqueTypeConformance2();
  v116 = v252;
  v117 = v256;
  sub_100043CB8();
  sub_10000A918(v109, v111, v113 & 1);

  (*(v255 + 1))(v106, v117);
  sub_100043668();
  sub_100009D50(v116, &qword_10005A950);
  if (*(v114 + v251[12]))
  {
    if (v261)
    {
      v118 = [objc_opt_self() mainBundle];
      v119 = sub_100044238();
      v120 = sub_100044238();
      v121 = [v118 localizedStringForKey:v119 value:0 table:v120];

      v122 = sub_100044258();
      v124 = v123;

      v125 = v287;
      if (qword_100058D70 != -1)
      {
        swift_once();
      }

      v126 = qword_10005C988;
      v290 = 0x4026000000000000;

      v127 = v236;
      sub_1000435A8();
      v128 = v273;
      v129 = (v127 + *(v273 + 20));
      *v129 = v122;
      v129[1] = v124;
      *(v127 + *(v128 + 24)) = v126;
      v130 = v277;
      sub_10003C444(v127, v277);
      v131 = 0;
    }

    else
    {
      v131 = 1;
      v130 = v277;
      v128 = v273;
      v125 = v287;
    }

    v132 = *(v282 + 56);
    v282 += 56;
    v255 = v132;
    v132(v130, v131, 1, v128);
    v133 = v274;
    sub_10003A1D8(v274);
    v134 = v275;
    sub_100044008();
    v135 = sub_100043FF8();
    v136 = v283 + 8;
    v137 = *(v283 + 8);
    v138 = v134;
    v139 = v276;
    (v137)(v138, v276);
    v283 = v136;
    v256 = v137;
    (v137)(v133, v139);
    if (v135)
    {
      if (qword_100058DB0 != -1)
      {
        swift_once();
      }

      v140 = qword_10005C9C8;

      if (!v125)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v140 = sub_100043D48();
      if (!v125)
      {
        goto LABEL_41;
      }
    }

    v141 = v125;
    v142 = [v141 stepCount];
    v143 = [objc_opt_self() countUnit];
    [v142 doubleValueForUnit:v143];
    v145 = v144;

    v146 = objc_opt_self();
    v147 = [objc_allocWithZone(NSNumber) initWithDouble:v145];
    v148 = [v146 stringWithNumber:v147 decimalPrecision:1 roundingMode:4];

    if (v148)
    {
      v149 = sub_100044258();
      v151 = v150;

LABEL_42:
      KeyPath = swift_getKeyPath();
      v154 = v237;
      *v237 = KeyPath;
      v254 = sub_1000028F8(&qword_100059B00);
      swift_storeEnumTagMultiPayload();
      v155 = v263;
      v156 = *(v263 + 20);
      *(v154 + v156) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v290 = 0x4034000000000000;
      sub_1000435A8();
      *(v154 + v155[7]) = v140;
      v157 = (v154 + v155[8]);
      *v157 = v149;
      v157[1] = v151;
      v158 = (v154 + v155[9]);
      *v158 = 0;
      v158[1] = 0xE000000000000000;
      *(v154 + v155[10]) = v260;
      v159 = v284;
      sub_1000439B8();
      v160 = sub_10003C32C(&qword_10005A968, type metadata accessor for StandaloneMetricView);
      v161 = v239;
      sub_100043CF8();
      (v257)(v159, v285);
      sub_10003C374(v154, type metadata accessor for StandaloneMetricView);
      sub_10003E340(v125);
      v290 = v162;
      v291 = v163;
      v164 = sub_100043C48();
      v166 = v165;
      v168 = v167;
      v290 = v155;
      v291 = v160;
      v169 = 1;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v171 = v238;
      v172 = v266;
      v253 = OpaqueTypeConformance2;
      sub_100043CB8();
      sub_10000A918(v164, v166, v168 & 1);

      v173 = *(v279 + 8);
      v279 += 8;
      v252 = v173;
      (v173)(v161, v172);
      sub_100043668();
      sub_100009D50(v171, &qword_10005A938);
      v174 = v273;
      if (v261)
      {
        v175 = [objc_opt_self() mainBundle];
        v176 = sub_100044238();
        v177 = sub_100044238();
        v178 = [v175 localizedStringForKey:v176 value:0 table:v177];

        v179 = sub_100044258();
        v181 = v180;

        if (qword_100058D70 != -1)
        {
          swift_once();
        }

        v182 = qword_10005C988;
        v290 = 0x4026000000000000;

        v183 = v236;
        sub_1000435A8();
        v184 = (v183 + *(v174 + 20));
        *v184 = v179;
        v184[1] = v181;
        *(v183 + *(v174 + 24)) = v182;
        sub_10003C444(v183, v271);
        v169 = 0;
      }

      v255(v271, v169, 1, v174);
      v185 = v274;
      sub_10003A1D8(v274);
      v186 = v275;
      sub_100044008();
      v187 = sub_100043FF8();
      v188 = v186;
      v189 = v276;
      v190 = v256;
      (v256)(v188, v276);
      v190(v185, v189);
      if (v187)
      {
        v191 = v248;
        v192 = v287;
        if (qword_100058DB0 != -1)
        {
          swift_once();
        }

        v193 = qword_10005C9C8;
      }

      else
      {
        v193 = sub_100043D48();
        v191 = v248;
        v192 = v287;
      }

      v194 = sub_10003C800(v191, v192, v250);
      v196 = v195;
      if (v235)
      {
        v197 = 0;
        v198 = 0xE000000000000000;
      }

      else
      {
        v197 = sub_10003E758(v191);
        v198 = v199;
      }

      v200 = swift_getKeyPath();
      v201 = v242;
      *v242 = v200;
      swift_storeEnumTagMultiPayload();
      v202 = v263;
      v203 = *(v263 + 20);
      *(v201 + v203) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v290 = 0x4034000000000000;
      sub_1000435A8();
      *(v201 + v202[7]) = v193;
      v204 = (v201 + v202[8]);
      *v204 = v194;
      v204[1] = v196;
      v205 = (v201 + v202[9]);
      *v205 = v197;
      v205[1] = v198;
      *(v201 + v202[10]) = v260;
      v206 = v284;
      sub_1000439B8();
      v207 = v243;
      sub_100043CF8();
      (v257)(v206, v285);
      sub_10003C374(v201, type metadata accessor for StandaloneMetricView);
      v290 = sub_10003E504(v191, v287);
      v291 = v208;
      v209 = sub_100043C48();
      v211 = v210;
      v213 = v212;
      v214 = v241;
      v215 = v266;
      sub_100043CB8();
      sub_10000A918(v209, v211, v213 & 1);

      (v252)(v207, v215);
      v216 = v244;
      sub_100043668();
      sub_100009D50(v214, &qword_10005A938);
      v217 = v278;
      sub_10000A1F8(v277, v278, &qword_10005A958);
      v218 = v246;
      sub_10000A1F8(v280, v246, &qword_10005A938);
      v219 = v271;
      v220 = v240;
      sub_10000A1F8(v271, v240, &qword_10005A958);
      v221 = v245;
      sub_10000A1F8(v216, v245, &qword_10005A938);
      v222 = v247;
      *v247 = 0;
      *(v222 + 8) = 0;
      v223 = sub_1000028F8(&qword_10005A970);
      sub_10000A1F8(v217, v222 + v223[12], &qword_10005A958);
      sub_10000A1F8(v218, v222 + v223[16], &qword_10005A938);
      v224 = v222 + v223[20];
      *v224 = 0;
      *(v224 + 8) = 0;
      sub_10000A1F8(v220, v222 + v223[24], &qword_10005A958);
      sub_10000A1F8(v221, v222 + v223[28], &qword_10005A938);
      sub_100009D50(v216, &qword_10005A938);
      sub_10003C2BC(v219);
      sub_100009D50(v280, &qword_10005A938);
      sub_10003C2BC(v277);
      sub_100009D50(v221, &qword_10005A938);
      sub_10003C2BC(v220);
      sub_100009D50(v218, &qword_10005A938);
      sub_10003C2BC(v217);
      sub_10003C3D4(v222, v281);
      v115 = 0;
      goto LABEL_55;
    }

LABEL_41:
    v151 = v249;

    v149 = v250;
    goto LABEL_42;
  }

LABEL_55:
  v225 = v281;
  (*(v268 + 56))(v281, v115, 1, v269);
  v226 = v262;
  v227 = v278;
  sub_10000A1F8(v262, v278, &qword_10005A958);
  v228 = v286;
  v229 = v265;
  sub_10000A1F8(v286, v265, &qword_10005A950);
  v230 = v267;
  sub_10000A1F8(v225, v267, &qword_10005A940);
  v231 = v270;
  sub_10000A1F8(v227, v270, &qword_10005A958);
  v232 = sub_1000028F8(&qword_10005A960);
  sub_10000A1F8(v229, v231 + *(v232 + 48), &qword_10005A950);
  sub_10000A1F8(v230, v231 + *(v232 + 64), &qword_10005A940);
  sub_100009D50(v225, &qword_10005A940);
  sub_100009D50(v228, &qword_10005A950);
  sub_10003C2BC(v226);
  sub_100009D50(v230, &qword_10005A940);
  sub_100009D50(v229, &qword_10005A950);
  return sub_10003C2BC(v227);
}

uint64_t sub_10003C25C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100043858();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000028F8(&qword_10005A908);
  return sub_10003A3E0(v1, a1 + *(v3 + 44));
}

uint64_t sub_10003C2BC(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003C32C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003C374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003C3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A928);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C4AC()
{
  result = qword_10005A978;
  if (!qword_10005A978)
  {
    sub_100002940(&qword_10005A980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A978);
  }

  return result;
}

uint64_t sub_10003C510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003C558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10003C5D0(id a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v9 = a2;
  if ([v9 paused])
  {

LABEL_4:

    return;
  }

  if ([v9 activityMoveMode] == 2)
  {
    v10 = [v9 *a5];
    a1 = [a1 localizedStringWithMoveMinutes:v10];

    if (a1)
    {
LABEL_9:
      sub_100044258();

      return;
    }

    __break(1u);
  }

  v11 = [v9 *a6];
  a1 = [a1 localizedStringWithActiveEnergy:v11];

  if (a1)
  {
    goto LABEL_9;
  }

  __break(1u);
}

id sub_10003C738(void *a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v10 = a2;
  if ([v10 paused])
  {

LABEL_4:

    return a3;
  }

  v11 = [v10 *a5];
  result = [a1 *a6];
  if (result)
  {
    v13 = result;
    a3 = sub_100044258();

    return a3;
  }

  __break(1u);
  return result;
}

id sub_10003C800(void *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v5 = a2;
  result = [a1 unitManager];
  if (result)
  {
    v7 = result;
    v8 = [result userDistanceHKUnitForDistanceType:1];

    v9 = [v5 distanceWalkingRunning];
    [v9 doubleValueForUnit:v8];
    v11 = v10;

    v12 = objc_opt_self();
    v13 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
    v14 = [v12 stringWithNumber:v13 decimalPrecision:2 roundingMode:4];

    if (v14)
    {
      a3 = sub_100044258();

      return a3;
    }

LABEL_6:

    return a3;
  }

  __break(1u);
  return result;
}

id sub_10003C95C(id a1)
{
  if (a1)
  {
    if ([a1 paused])
    {
      v5 = [objc_opt_self() mainBundle];
      v30._countAndFlagsBits = 0xE000000000000000;
      v31._object = 0x800000010004FE40;
      v31._countAndFlagsBits = 0xD000000000000020;
      v32.value._countAndFlagsBits = 0;
      v32.value._object = 0;
      v6.super.isa = v5;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v7 = sub_100043288(v31, v32, v6, v33, v30);

      return v7;
    }

    v10 = [a1 activityMoveMode];
    v11 = &selRef__moveMinutesCompletionPercentage;
    if (v10 != 2)
    {
      v11 = &selRef__activeEnergyCompletionPercentage;
    }

    [a1 *v11];
    v9 = v12 * 100.0;
  }

  else
  {
    v9 = 0.0;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v13 = result;
    v1 = v9;
    v14 = [result isStandalonePhoneFitnessMode];

    if (v14)
    {
      v15 = [objc_opt_self() mainBundle];
      v16 = sub_100044238();
      v17 = sub_100044238();
      v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

      sub_100044258();
      sub_1000028F8(&unk_100059790);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000453B0;
      *(v19 + 56) = &type metadata for Int;
      *(v19 + 64) = &protocol witness table for Int;
      *(v19 + 32) = v1;
LABEL_25:
      v29 = sub_100044248();

      return v29;
    }

    if (!a1)
    {
      v2 = 0;
      v23 = 0.0;
LABEL_23:
      v3 = v23;
      if (qword_100058DF0 == -1)
      {
LABEL_24:
        v24 = [objc_opt_self() mainBundle];
        v25 = sub_100044238();
        v26 = sub_100044238();
        v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

        sub_100044258();
        sub_1000028F8(&unk_100059790);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100047540;
        *(v28 + 56) = &type metadata for Int;
        *(v28 + 64) = &protocol witness table for Int;
        *(v28 + 32) = v1;
        *(v28 + 96) = &type metadata for Int;
        *(v28 + 104) = &protocol witness table for Int;
        *(v28 + 72) = v2;
        *(v28 + 136) = &type metadata for Int;
        *(v28 + 144) = &protocol witness table for Int;
        *(v28 + 112) = v3;
        goto LABEL_25;
      }

LABEL_33:
      swift_once();
      goto LABEL_24;
    }

    result = [a1 _exerciseTimeCompletionPercentage];
    v21 = v20 * 100.0;
    if (COERCE__INT64(fabs(v20 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        result = [a1 _standHoursCompletionPercentage];
        v23 = v22 * 100.0;
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v23 > -9.22337204e18)
          {
            if (v23 < 9.22337204e18)
            {
              v2 = v21;
              goto LABEL_23;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_35;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_10003CE88(id a1)
{
  if (a1)
  {
    if ([a1 paused])
    {
      v2 = [objc_opt_self() mainBundle];
      v41._countAndFlagsBits = 0xE000000000000000;
      v42._countAndFlagsBits = 0xD000000000000024;
      v42._object = 0x8000000100050110;
      v45.value._countAndFlagsBits = 0;
      v45.value._object = 0;
      v3.super.isa = v2;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      sub_100043288(v42, v45, v3, v48, v41);

      return;
    }

    if ([a1 activityMoveMode] == 2)
    {
      v4 = [a1 appleMoveTime];
      v5 = objc_opt_self();
      v6 = [v5 minuteUnit];
      [v4 doubleValueForUnit:v6];
      v8 = v7;
      v9 = v7;

      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v8 > -9.22337204e18)
        {
          if (v8 < 9.22337204e18)
          {
            v10 = [a1 appleMoveTimeGoal];
            v11 = [v5 minuteUnit];
            [v10 doubleValueForUnit:v11];
            v13 = v12;
            v14 = v12;

            if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v13 > -9.22337204e18)
              {
                if (v13 < 9.22337204e18)
                {
                  v15 = [objc_opt_self() mainBundle];
                  v41._countAndFlagsBits = 0xE000000000000000;
                  v43._object = 0x80000001000500F0;
                  v43._countAndFlagsBits = 0xD00000000000001BLL;
                  v46.value._countAndFlagsBits = 0;
                  v46.value._object = 0;
                  v16.super.isa = v15;
                  v49._countAndFlagsBits = 0;
                  v49._object = 0xE000000000000000;
                  sub_100043288(v43, v46, v16, v49, v41);

                  sub_1000028F8(&unk_100059790);
                  v17 = swift_allocObject();
                  *(v17 + 16) = xmmword_100045500;
                  *(v17 + 56) = &type metadata for Int;
                  *(v17 + 64) = &protocol witness table for Int;
                  *(v17 + 32) = v8;
                  *(v17 + 96) = &type metadata for Int;
                  *(v17 + 104) = &protocol witness table for Int;
                  *(v17 + 72) = v13;
                  sub_100044248();

                  return;
                }

                goto LABEL_44;
              }

LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              return;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v18 = [qword_10005CA00 unitManager];
  if (!v18)
  {
    goto LABEL_45;
  }

  v19 = v18;
  v20 = [v18 userActiveEnergyBurnedUnit];

  if (!a1)
  {
    v29 = 0;
    v27 = 0.0;
    goto LABEL_24;
  }

  v21 = [a1 activeEnergyBurned];
  [v21 doubleValueForUnit:v20];
  v23 = v22;
  v24 = v22;

  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v23 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = [a1 activeEnergyBurnedGoal];
  [v25 doubleValueForUnit:v20];
  v27 = v26;
  v28 = v26;

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v27 <= -9.22337204e18)
  {
    goto LABEL_35;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v23;
LABEL_24:
  sub_10003D4D8();
  v30 = objc_opt_self();
  v31 = [v30 kilocalorieUnit];
  v32 = sub_1000444A8();

  if (v32)
  {
    v33 = "VE_LABEL_KILOJOULES";
    v34 = 0xD000000000000025;
  }

  else
  {
    v35 = [v30 jouleUnitWithMetricPrefix:9];
    v36 = sub_1000444A8();

    v37 = (v36 & 1) == 0;
    if (v36)
    {
      v34 = 0xD000000000000023;
    }

    else
    {
      v34 = 0xD000000000000021;
    }

    if (v37)
    {
      v33 = "ANDALONE_MOVE_RING_LABEL_%@";
    }

    else
    {
      v33 = "VE_LABEL_CALORIES";
    }
  }

  v38 = [objc_opt_self() mainBundle];
  v41._countAndFlagsBits = 0xE000000000000000;
  v44._object = (v33 | 0x8000000000000000);
  v44._countAndFlagsBits = v34;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v39.super.isa = v38;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_100043288(v44, v47, v39, v50, v41);

  sub_1000028F8(&unk_100059790);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100045500;
  *(v40 + 56) = &type metadata for Int;
  *(v40 + 64) = &protocol witness table for Int;
  *(v40 + 32) = v29;
  *(v40 + 96) = &type metadata for Int;
  *(v40 + 104) = &protocol witness table for Int;
  *(v40 + 72) = v27;
  sub_100044248();
}

unint64_t sub_10003D4D8()
{
  result = qword_10005A988;
  if (!qword_10005A988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005A988);
  }

  return result;
}

id sub_10003D524(void *a1, id a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = [a2 activityMoveMode];
    a1 = v2;
    if (v3 == 2)
    {
      v4 = [objc_opt_self() mainBundle];
      v5 = sub_100044238();
      v6 = sub_100044238();
      v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

LABEL_5:
      v9 = sub_100044258();

      return v9;
    }
  }

  result = [a1 localizedShortActiveEnergyUnitString];
  v7 = result;
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_10003D650(id a1)
{
  if (a1 && [a1 paused])
  {
    v2 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000028;
    v18._object = 0x80000001000501C0;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v3.super.isa = v2;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_100043288(v18, v20, v3, v22, v17);

    return;
  }

  v4 = [objc_opt_self() minuteUnit];
  if (!a1)
  {
    v13 = 0;
    v11 = 0.0;
    goto LABEL_13;
  }

  v5 = [a1 appleExerciseTime];
  [v5 doubleValueForUnit:v4];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v7 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = [a1 appleExerciseTimeGoal];
  [v9 doubleValueForUnit:v4];
  v11 = v10;
  v12 = v10;

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        v13 = v7;
LABEL_13:
        v14 = [objc_opt_self() mainBundle];
        v17._countAndFlagsBits = 0xE000000000000000;
        v19._object = 0x80000001000500F0;
        v19._countAndFlagsBits = 0xD00000000000001BLL;
        v21.value._countAndFlagsBits = 0;
        v21.value._object = 0;
        v15.super.isa = v14;
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        sub_100043288(v19, v21, v15, v23, v17);

        sub_1000028F8(&unk_100059790);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100045500;
        *(v16 + 56) = &type metadata for Int;
        *(v16 + 64) = &protocol witness table for Int;
        *(v16 + 32) = v13;
        *(v16 + 96) = &type metadata for Int;
        *(v16 + 104) = &protocol witness table for Int;
        *(v16 + 72) = v11;
        sub_100044248();

        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10003D93C(id a1)
{
  if (!a1 || ![a1 paused])
  {
    v6 = [objc_opt_self() countUnit];
    if (!a1)
    {
      v15 = 0;
      v13 = 0.0;
      goto LABEL_15;
    }

    v7 = [a1 appleStandHours];
    [v7 doubleValueForUnit:v6];
    v9 = v8;
    v10 = v8;

    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    if (v9 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v9 < 9.22337204e18)
    {
      v11 = [a1 appleStandHoursGoal];
      [v11 doubleValueForUnit:v6];
      v13 = v12;
      v14 = v12;

      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v15 = v9;
LABEL_15:
          v16 = [objc_opt_self() mainBundle];
          v23._countAndFlagsBits = 0xE000000000000000;
          v24._object = 0x8000000100050140;
          v24._countAndFlagsBits = 0xD000000000000019;
          v25.value._countAndFlagsBits = 0;
          v25.value._object = 0;
          v17.super.isa = v16;
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          sub_100043288(v24, v25, v17, v27, v23);

          sub_1000028F8(&unk_100059790);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_100045500;
          *(v18 + 56) = &type metadata for Int;
          *(v18 + 64) = &protocol witness table for Int;
          *(v18 + 32) = v15;
          *(v18 + 96) = &type metadata for Int;
          *(v18 + 104) = &protocol witness table for Int;
          *(v18 + 72) = v13;
          v19 = sub_100044248();

          return v19;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_100058DF0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v2 = *(qword_10005CA08 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
  v3 = [objc_opt_self() mainBundle];
  if (v2 == 1)
  {
    v4 = "USED_STAND_DATA_LABEL";
    v23._countAndFlagsBits = 0xE000000000000000;
    v5._countAndFlagsBits = 0xD00000000000002ALL;
  }

  else
  {
    v4 = "ACCESSIBILITY_STAND_LABEL";
    v23._countAndFlagsBits = 0xE000000000000000;
    v5._countAndFlagsBits = 0xD000000000000025;
  }

  v5._object = (v4 | 0x8000000000000000);
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v21.super.isa = v3;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v22 = sub_100043288(v5, v26, v21, v28, v23);

  return v22;
}

void sub_10003DC94(id a1)
{
  if (a1 && [a1 activityMoveMode] == 2)
  {
    v2 = [a1 appleMoveTime];
    v3 = [objc_opt_self() minuteUnit];
    [v2 doubleValueForUnit:v3];
    v5 = v4;
    v6 = v4;

    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          v7 = [objc_opt_self() mainBundle];
          v8 = sub_100044238();
          v9 = sub_100044238();
          v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

          sub_100044258();
          sub_1000028F8(&unk_100059790);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1000453B0;
          *(v11 + 56) = &type metadata for Int;
          *(v11 + 64) = &protocol witness table for Int;
          *(v11 + 32) = v5;
          sub_100044248();

          return;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v12 = [qword_10005CA00 unitManager];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = [v12 userActiveEnergyBurnedUnit];

  if (!a1)
  {
    goto LABEL_15;
  }

  v15 = [a1 activeEnergyBurned];
  [v15 doubleValueForUnit:v14];
  v17 = v16;
  v18 = v16;

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v17 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v17 >= 9.22337204e18)
  {
    __break(1u);
LABEL_15:
    v17 = 0.0;
  }

  sub_10003D4D8();
  v19 = objc_opt_self();
  v20 = [v19 kilocalorieUnit];
  v21 = sub_1000444A8();

  if (v21)
  {
    v22 = 0xD00000000000002ELL;
    v23 = "VE_PROGRESS_LABEL_KILOJOULES";
  }

  else
  {
    v24 = [v19 jouleUnitWithMetricPrefix:9];
    v25 = sub_1000444A8();

    v26 = (v25 & 1) == 0;
    if (v25)
    {
      v22 = 0xD00000000000002CLL;
    }

    else
    {
      v22 = 0xD00000000000002ALL;
    }

    if (v26)
    {
      v23 = "NUTES_PROGRESS_LABEL";
    }

    else
    {
      v23 = "VE_PROGRESS_LABEL_CALORIES";
    }
  }

  v27 = [objc_opt_self() mainBundle];
  v30._countAndFlagsBits = 0xE000000000000000;
  v31._object = (v23 | 0x8000000000000000);
  v31._countAndFlagsBits = v22;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v28.super.isa = v27;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100043288(v31, v32, v28, v33, v30);

  sub_1000028F8(&unk_100059790);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000453B0;
  *(v29 + 56) = &type metadata for Int;
  *(v29 + 64) = &protocol witness table for Int;
  *(v29 + 32) = v17;
  sub_100044248();
}

void sub_10003E170(void *a1)
{
  v2 = [objc_opt_self() minuteUnit];
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = [a1 appleExerciseTime];
  [v3 doubleValueForUnit:v2];
  v5 = v4;
  v6 = v4;

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
LABEL_7:
        v7 = [objc_opt_self() mainBundle];
        v10._countAndFlagsBits = 0xE000000000000000;
        v11._object = 0x80000001000501F0;
        v11._countAndFlagsBits = 0xD000000000000024;
        v12.value._countAndFlagsBits = 0;
        v12.value._object = 0;
        v8.super.isa = v7;
        v13._countAndFlagsBits = 0;
        v13._object = 0xE000000000000000;
        sub_100043288(v11, v12, v8, v13, v10);

        sub_1000028F8(&unk_100059790);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1000453B0;
        *(v9 + 56) = &type metadata for Int;
        *(v9 + 64) = &protocol witness table for Int;
        *(v9 + 32) = v5;
        sub_100044248();

        return;
      }

      __break(1u);
LABEL_6:
      v5 = 0.0;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10003E340(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v1 = [a1 stepCount];
  v2 = [objc_opt_self() countUnit];
  [v1 doubleValueForUnit:v2];
  v4 = v3;
  v5 = v3;

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
LABEL_7:
        v6 = [objc_opt_self() mainBundle];
        v9._countAndFlagsBits = 0xE000000000000000;
        v10._object = 0x8000000100050310;
        v10._countAndFlagsBits = 0xD000000000000019;
        v11.value._countAndFlagsBits = 0;
        v11.value._object = 0;
        v7.super.isa = v6;
        v12._countAndFlagsBits = 0;
        v12._object = 0xE000000000000000;
        sub_100043288(v10, v11, v7, v12, v9);

        sub_1000028F8(&unk_100059790);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000453B0;
        *(v8 + 56) = &type metadata for Int;
        *(v8 + 64) = &protocol witness table for Int;
        *(v8 + 32) = v4;
        sub_100044248();

        return;
      }

      __break(1u);
LABEL_6:
      v4 = 0.0;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10003E504(void *a1, void *a2)
{
  result = [a1 unitManager];
  if (result)
  {
    v4 = result;
    v5 = [result userDistanceHKUnitForDistanceType:1];

    if (a2)
    {
      v6 = [a2 distanceWalkingRunning];
      [v6 doubleValueForUnit:v5];
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    sub_10003D4D8();
    v9 = [objc_opt_self() mileUnit];
    sub_1000444A8();

    v10 = [objc_opt_self() mainBundle];
    v11 = sub_100044238();

    v12 = sub_100044238();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_100044258();
    sub_1000028F8(&unk_100059790);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000453B0;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = v8;
    v15 = sub_100044248();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003E758(void *a1)
{
  result = [a1 unitManager];
  if (result)
  {
    v3 = result;
    v4 = [result userDistanceUnitForDistanceType:1];

    v5 = [a1 localizedShortUnitStringForDistanceUnit:v4];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    sub_100044258();

    sub_10000A8C4();
    v7 = sub_1000444D8();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003E858()
{
  result = [objc_allocWithZone(HKHealthStore) init];
  qword_10005C9F8 = result;
  return result;
}

void sub_10003E88C()
{
  if (qword_100058DE0 != -1)
  {
    swift_once();
  }

  v0 = qword_10005C9F8;
  v1 = objc_allocWithZone(FIUIUnitManager);
  v2 = v0;
  v3 = [v1 initWithHealthStore:v2];

  v4 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v3];
  if (v4)
  {
    qword_10005CA00 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_10003E950()
{
  if (qword_100058DE0 != -1)
  {
    swift_once();
  }

  v0 = qword_10005C9F8;
  type metadata accessor for FitnessWidgetDataProvider();
  swift_allocObject();
  v1 = v0;
  v2 = sub_1000155AC(v1);

  qword_10005CA08 = v2;
}

uint64_t sub_10003E9D8()
{
  v0 = sub_1000028F8(&qword_10005A998);
  __chkstk_darwin(v0);
  v2 = &v14 - v1;
  v3 = sub_1000441D8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  if (qword_100058DE0 != -1)
  {
    swift_once();
  }

  v10 = qword_10005C9F8;
  sub_1000441C8();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  v11(v2, v6, v3);
  sub_100043598();
  v12 = *(v4 + 8);
  v12(v9, v3);
  return (v12)(v6, v3);
}

uint64_t sub_10003EBC4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_1000028F8(&qword_10005A9F8);
  v44 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v41 - v2;
  v4 = sub_1000028F8(&qword_10005AA00);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v42 = &v41 - v6;
  v7 = sub_1000028F8(&qword_10005AA08);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  __chkstk_darwin(v7);
  v43 = &v41 - v9;
  v10 = sub_1000028F8(&qword_10005AA10);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  __chkstk_darwin(v10);
  v45 = &v41 - v12;
  v13 = sub_1000028F8(&qword_10005AA18);
  v14 = *(v13 - 8);
  v53 = v13;
  v54 = v14;
  __chkstk_darwin(v13);
  v50 = &v41 - v15;
  v16 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:FINanoLifestylePreferencesDomain];
  sub_100044388();
  v17 = HKLogActivity;
  sub_1000028F8(&unk_100059790);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000453B0;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 64) = &protocol witness table for Bool;
  *(v18 + 32) = 1;
  v19 = v17;
  sub_100043538();

  LOBYTE(v56) = 1;
  v57 = 0xD00000000000001ELL;
  v58 = 0x8000000100050420;
  v59 = 0xD000000000000011;
  v60 = 0x8000000100050440;
  v61 = v16;
  type metadata accessor for FitnessWidgetView();
  sub_1000412D8(&qword_10005AA20, type metadata accessor for FitnessWidgetView);
  sub_1000411B0();
  sub_1000440A8();
  sub_1000438B8();
  v20 = sub_100043C38();
  v22 = v21;
  LOBYTE(v19) = v23;
  v24 = sub_100002F14(&qword_10005AA30, &qword_10005A9F8);
  v25 = v42;
  sub_100043968();
  sub_10000A918(v20, v22, v19 & 1);

  (*(v44 + 8))(v3, v1);
  sub_1000438B8();
  v26 = sub_100043C38();
  v28 = v27;
  LOBYTE(v19) = v29;
  v56 = v1;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v46;
  sub_100043918();
  sub_10000A918(v26, v28, v19 & 1);

  (*(v47 + 8))(v25, v32);
  sub_100040F64();
  v56 = v32;
  v57 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v45;
  v35 = v48;
  sub_100043928();

  (*(v49 + 8))(v31, v35);
  sub_1000028F8(&qword_10005A9D0);
  sub_100044068();
  *(swift_allocObject() + 16) = xmmword_100045500;
  sub_100044058();
  sub_100044048();
  sub_100040F64();
  v56 = v35;
  v57 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v38 = v50;
  v37 = v51;
  sub_100043938();

  (*(v52 + 8))(v34, v37);
  v56 = v37;
  v57 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  sub_100043978();
  return (*(v54 + 8))(v38, v39);
}

id sub_10003F3F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  v5 = v4[7];
  v12 = *(a1 + v4[6]);
  v6 = type metadata accessor for FitnessWidgetView();
  sub_100041204(a1 + v5, a2 + v6[7]);
  v7 = v4[9];
  v8 = *(a1 + v4[8]);
  LOBYTE(a1) = *(a1 + v7);
  *a2 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8);
  swift_storeEnumTagMultiPayload();
  v9 = v6[5];
  *(a2 + v9) = swift_getKeyPath();
  sub_1000028F8(&qword_100059B00);
  swift_storeEnumTagMultiPayload();
  *(a2 + v6[6]) = v12;
  *(a2 + v6[8]) = v8;
  *(a2 + v6[9]) = a1;
  v10 = v8;

  return v12;
}

uint64_t sub_10003F514@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000028F8(&qword_10005AA38);
  v38 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v37 - v2;
  v4 = sub_1000028F8(&qword_10005AA40);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_1000028F8(&qword_10005AA48);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v37 = &v37 - v10;
  v11 = sub_1000028F8(&qword_10005AA50);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v39 = &v37 - v13;
  v14 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:FINanoLifestylePreferencesDomain];
  sub_100044388();
  v15 = HKLogActivity;
  sub_1000028F8(&unk_100059790);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000453B0;
  *(v16 + 56) = &type metadata for Bool;
  *(v16 + 64) = &protocol witness table for Bool;
  *(v16 + 32) = 0;
  v17 = v15;
  sub_100043538();

  LOBYTE(v47) = 0;
  v48 = 0xD00000000000001ELL;
  v49 = 0x8000000100050420;
  v50 = 0xD000000000000011;
  v51 = 0x8000000100050440;
  v52 = v14;
  type metadata accessor for FitnessComplicationView();
  sub_1000412D8(&qword_10005AA58, type metadata accessor for FitnessComplicationView);
  sub_1000411B0();
  sub_1000440A8();
  sub_1000438B8();
  v18 = sub_100043C38();
  v20 = v19;
  v22 = v21;
  v23 = sub_100002F14(&qword_10005AA60, &qword_10005AA38);
  sub_100043968();
  sub_10000A918(v18, v20, v22 & 1);

  (*(v38 + 8))(v3, v1);
  sub_1000438B8();
  v24 = sub_100043C38();
  v26 = v25;
  v28 = v27;
  v47 = v1;
  v48 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v37;
  v31 = v40;
  sub_100043918();
  sub_10000A918(v24, v26, v28 & 1);

  (*(v41 + 8))(v7, v31);
  sub_100040DD8();
  v47 = v31;
  v48 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v39;
  v34 = v42;
  sub_100043928();

  (*(v43 + 8))(v30, v34);
  v47 = v34;
  v48 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  sub_100043978();
  return (*(v45 + 8))(v33, v35);
}

id sub_10003FB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v11 = qword_10005CA00;
  v4 = type metadata accessor for FitnessWidgetProvider.ActivityEntry();
  v5 = *(a1 + v4[10]);
  v6 = v4[7];
  v7 = *(a1 + v4[6]);
  v8 = type metadata accessor for FitnessComplicationView();
  sub_100041204(a1 + v6, a2 + v8[8]);
  *a2 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8);
  swift_storeEnumTagMultiPayload();
  *(a2 + v8[5]) = v11;
  *(a2 + v8[6]) = v5;
  *(a2 + v8[7]) = v7;
  v9 = v7;

  return v11;
}

uint64_t sub_10003FCB4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v1 = sub_1000028F8(&qword_10005A9B0);
  v75 = *(v1 - 8);
  v76 = v1;
  __chkstk_darwin(v1);
  v74 = &v53 - v2;
  v3 = sub_100043358();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100044228();
  __chkstk_darwin(v4 - 8);
  v56 = sub_1000028F8(&qword_100058E20);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = &v53 - v5;
  v61 = sub_1000028F8(&qword_100058E18);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v54 = &v53 - v7;
  v63 = sub_1000028F8(&qword_100058E10);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v8;
  v67 = sub_1000028F8(&qword_100058E08);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v53 - v9;
  v69 = sub_1000028F8(&qword_100058E00);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v53 - v10;
  v55 = sub_1000028F8(&qword_100058DF8);
  v71 = *(v55 - 8);
  __chkstk_darwin(v55);
  v66 = &v53 - v11;
  v12 = sub_1000028F8(&qword_10005A9B8);
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v59 = &v53 - v13;
  type metadata accessor for QuickStartWorkoutWidgetView();
  sub_1000412D8(&qword_10005A9C0, type metadata accessor for QuickStartWorkoutWidgetView);
  sub_100040B58();
  sub_1000440A8();
  sub_100044218();
  v53 = "OUT_WIDGET_TITLE";
  sub_100043348();
  v81 = sub_100044278();
  v82 = v14;
  sub_10000A8C4();
  v15 = sub_100043C48();
  v17 = v16;
  v19 = v18;
  v20 = sub_100002F14(&qword_100058E28, &qword_100058E20);
  v21 = v56;
  sub_100043968();
  sub_10000A918(v15, v17, v19 & 1);

  v22 = v6;
  v23 = v21;
  (*(v57 + 8))(v22, v21);
  sub_100044218();
  sub_100043348();
  v24 = v55;
  v81 = sub_100044278();
  v82 = v25;
  v26 = sub_100043C48();
  v28 = v27;
  LOBYTE(v15) = v29;
  v81 = v23;
  v82 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v58;
  v32 = v61;
  v33 = v54;
  sub_100043918();
  sub_10000A918(v26, v28, v15 & 1);

  (*(v62 + 8))(v33, v32);
  sub_100040F64();
  v81 = v32;
  v82 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v60;
  v36 = v63;
  sub_100043928();

  (*(v64 + 8))(v31, v36);
  sub_1000028F8(&qword_10005A9D0);
  sub_100044068();
  *(swift_allocObject() + 16) = xmmword_100047540;
  sub_100044058();
  sub_100044038();
  v37 = v59;
  sub_100044048();
  sub_100040F64();
  v81 = v36;
  v82 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v65;
  v40 = v67;
  sub_100043938();

  (*(v68 + 8))(v35, v40);
  v81 = v40;
  v82 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v66;
  v43 = v69;
  sub_100043978();
  (*(v70 + 8))(v39, v43);
  v81 = v43;
  v82 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  sub_100043958();
  (*(v71 + 8))(v42, v24);
  v45 = sub_100043458();
  v83 = v45;
  v46 = sub_1000412D8(&qword_10005A9D8, &type metadata accessor for WorkoutFeatures);
  v84 = v46;
  v47 = sub_1000410C0(&v81);
  v48 = *(*(v45 - 8) + 104);
  v48(v47, enum case for WorkoutFeatures.Kahana(_:), v45);
  if (os_variant_has_internal_content() & 1) != 0 || (sub_1000434C8())
  {
    v80[0] = v24;
    v80[1] = v44;
    swift_getOpaqueTypeConformance2();
    v50 = v73;
    v49 = v74;
    sub_100043948();
  }

  else
  {
    v80[3] = v45;
    v80[4] = v46;
    v51 = sub_1000410C0(v80);
    v48(v51, enum case for WorkoutFeatures.WorkoutPlatterRedesign(_:), v45);
    v78 = v24;
    v79 = v44;
    swift_getOpaqueTypeConformance2();
    v50 = v73;
    v49 = v74;
    sub_100043948();
    sub_10001A6DC(v80);
  }

  (*(v75 + 32))(v77, v49, v76);
  (*(v72 + 8))(v37, v50);
  return sub_10001A6DC(&v81);
}

uint64_t sub_100040900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  started = type metadata accessor for QuickStartWorkoutWidgetView();
  sub_100004D1C(a1, a2 + started[7]);
  KeyPath = swift_getKeyPath();
  *(a2 + started[6]) = swift_getKeyPath();
  sub_1000028F8(&qword_10005A9E8);
  swift_storeEnumTagMultiPayload();
  *a2 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8);
  result = swift_storeEnumTagMultiPayload();
  v7 = a2 + started[5];
  *v7 = KeyPath;
  v7[8] = 0;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100040A10();
  sub_1000435D8();
  return 0;
}

unint64_t sub_100040A10()
{
  result = qword_10005A990;
  if (!qword_10005A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A990);
  }

  return result;
}

unint64_t sub_100040B58()
{
  result = qword_10005A9C8;
  if (!qword_10005A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A9C8);
  }

  return result;
}

uint64_t sub_100040BFC()
{
  sub_1000437B8();
  sub_1000412D8(&qword_10005A9F0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100043828();
  return v1;
}

uint64_t sub_100040C78@<X0>(_BYTE *a1@<X8>)
{
  sub_1000437B8();
  sub_1000412D8(&qword_10005A9F0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_100043828();
  *a1 = v3;
  return result;
}

uint64_t sub_100040D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

void *sub_100040DD8()
{
  v0 = sub_100044238();
  v1 = MGGetSInt32Answer();

  if (!MTLCreateSystemDefaultDevice())
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  if (v1 == 3)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000028F8(&qword_10005A9E0);
  v3 = sub_100044028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100047540;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, enum case for WidgetFamily.accessoryCircular(_:), v3);
  v9(v8 + v5, enum case for WidgetFamily.accessoryInline(_:), v3);
  v9(v8 + 2 * v5, enum case for WidgetFamily.accessoryRectangular(_:), v3);
  return v7;
}

void *sub_100040F64()
{
  v0 = sub_100044238();
  v1 = MGGetSInt32Answer();

  if (!MTLCreateSystemDefaultDevice())
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  if (v1 == 3)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000028F8(&qword_10005A9E0);
  v3 = sub_100044028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100045500;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, enum case for WidgetFamily.systemSmall(_:), v3);
  v9(v8 + v5, enum case for WidgetFamily.systemMedium(_:), v3);
  return v7;
}

uint64_t *sub_1000410C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000411B0()
{
  result = qword_10005AA28;
  if (!qword_10005AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AA28);
  }

  return result;
}

uint64_t sub_100041204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100058F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000412D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041320()
{
  sub_100002940(&qword_10005A9B8);
  sub_100002940(&qword_100058DF8);
  sub_100002940(&qword_100058E00);
  sub_100002940(&qword_100058E08);
  sub_100002940(&qword_100058E10);
  sub_100002940(&qword_100058E18);
  sub_100002940(&qword_100058E20);
  sub_100002F14(&qword_100058E28, &qword_100058E20);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100041538()
{
  sub_100002940(&qword_10005AA18);
  sub_100002940(&qword_10005AA10);
  sub_100002940(&qword_10005AA08);
  sub_100002940(&qword_10005AA00);
  sub_100002940(&qword_10005A9F8);
  sub_100002F14(&qword_10005AA30, &qword_10005A9F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000416D0()
{
  sub_100002940(&qword_10005AA50);
  sub_100002940(&qword_10005AA48);
  sub_100002940(&qword_10005AA40);
  sub_100002940(&qword_10005AA38);
  sub_100002F14(&qword_10005AA60, &qword_10005AA38);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100041838(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1000028F8(&qword_10005AA68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  started = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
  v16 = *(*(started - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, started);
}

uint64_t sub_1000419D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000028F8(&qword_1000599A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_1000028F8(&qword_10005AA68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  started = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
  v16 = *(*(started - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, started);
}

uint64_t type metadata accessor for QuickStartWorkoutWidgetView()
{
  result = qword_10005AAC8;
  if (!qword_10005AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041BAC()
{
  sub_100041CE8(319, &qword_100059A20, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100041C98();
    if (v1 <= 0x3F)
    {
      sub_100041CE8(319, &unk_10005AAE0, &type metadata accessor for RedactionReasons);
      if (v2 <= 0x3F)
      {
        type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100041C98()
{
  if (!qword_10005AAD8)
  {
    v0 = sub_100043578();
    if (!v1)
    {
      atomic_store(v0, &qword_10005AAD8);
    }
  }
}

void sub_100041CE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100043578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100041D58()
{
  v1 = sub_100043818();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for QuickStartWorkoutWidgetView() + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100044378();
    v7 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();
    sub_1000428F0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100041EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043818();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_10005A9E8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  started = type metadata accessor for QuickStartWorkoutWidgetView();
  sub_10000A1F8(v1 + *(started + 24), v9, &qword_10005A9E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100043678();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100044378();
    v13 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000420B8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_100043678();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000439F8();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100044128();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000441B8();
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000441A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000028F8(&qword_10005AB18);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - v14;
  type metadata accessor for QuickStartWorkoutWidgetView();
  type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry();

  sub_10004255C(v9);
  (*(v4 + 104))(v6, enum case for QuickStartWorkoutControlType.link(_:), v21);
  sub_100041D58();
  sub_100044198();
  v16 = v23;
  sub_1000439E8();
  sub_100043EC8();
  v17 = sub_100042898();
  sub_100043CE8();
  (*(v25 + 8))(v16, v26);
  (*(v11 + 8))(v13, v10);
  v18 = v27;
  sub_100041EB0(v27);
  v31 = v10;
  v32 = &type metadata for Color;
  v33 = v17;
  v34 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_100043D08();
  (*(v28 + 8))(v18, v30);
  return (*(v24 + 8))(v15, v19);
}

uint64_t sub_10004255C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v19 = sub_100043818();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100059AF8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_100044028();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A1F8(v2, v8, &qword_100059AF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_100044378();
    v13 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v19);
  }

  v14 = (*(v10 + 88))(v12, v9);
  v15 = enum case for WidgetFamily.systemMedium(_:);
  v16 = sub_1000441B8();
  v17 = *(*(v16 - 8) + 104);
  if (v14 == v15)
  {
    return v17(v20, enum case for QuickStartWorkoutViewStyle.stacked(_:), v16);
  }

  v17(v20, enum case for QuickStartWorkoutViewStyle.fullSize(_:), v16);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10004286C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043D38();
  *a1 = result;
  return result;
}

unint64_t sub_100042898()
{
  result = qword_10005AB20;
  if (!qword_10005AB20)
  {
    sub_1000441A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB20);
  }

  return result;
}

uint64_t sub_1000428F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100042924()
{
  sub_100002940(&qword_10005AB18);
  sub_1000441A8();
  sub_100042898();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000429F4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_100043818();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000028F8(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10000A1F8(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_100044378();
    v17 = sub_100043A18();
    sub_100043538();

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

BOOL sub_100042C50(int a1, int a2, int a3)
{
  if (qword_10005C960 == -1)
  {
    v3 = dword_10005C950 < a1;
    if (dword_10005C950 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1000431D8();
    a2 = v6;
    a3 = v5;
    v3 = dword_10005C950 < a1;
    if (dword_10005C950 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10005C954 > a2)
  {
    return 1;
  }

  if (dword_10005C954 < a2)
  {
    return 0;
  }

  return dword_10005C958 >= a3;
}

uint64_t sub_100042D10(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10005C968 == -1)
  {
    if (qword_10005C970)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000431F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10005C970)
    {
      return _availability_version_check();
    }
  }

  if (qword_10005C960 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000431D8();
    a3 = v10;
    a4 = v9;
    v8 = dword_10005C950 < v11;
    if (dword_10005C950 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10005C954 > a3)
      {
        return 1;
      }

      if (dword_10005C954 >= a3)
      {
        return dword_10005C958 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10005C950 < a2;
  if (dword_10005C950 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100042EA4(uint64_t result)
{
  v1 = qword_10005C970;
  if (qword_10005C970)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10005C970 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10005C950, &dword_10005C954, &dword_10005C958);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}