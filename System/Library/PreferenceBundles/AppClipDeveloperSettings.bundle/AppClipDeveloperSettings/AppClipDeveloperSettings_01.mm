unint64_t sub_22704()
{
  v2 = qword_35B88;
  if (!qword_35B88)
  {
    sub_4A94(&qword_35B80, &qword_2A988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2278C()
{
  v2 = qword_35B90;
  if (!qword_35B90)
  {
    sub_4A94(&qword_35B78, &qword_2A980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22814(uint64_t a1)
{
  v5 = *(sub_46E8(&qword_35B98, &qword_2A990) + 44);
  v1 = sub_24794();
  (*(*(v1 - 8) + 8))();
  v2 = *(a1 + v5 + *(type metadata accessor for Requirement() + 24) + 8);

  v6 = *(sub_46E8(&qword_35BA0, &qword_2A998) + 48);
  v3 = sub_46E8(&qword_35BA8, &qword_2A9A0);
  (*(*(v3 - 8) + 8))(a1 + v5 + v6);
  return a1;
}

uint64_t sub_22920(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_46E8(&qword_35B98, &qword_2A990) + 44);
  v2 = sub_24794();
  v12 = a2 + v6;
  (*(*(v2 - 8) + 16))();
  v8 = type metadata accessor for Requirement();
  *(v12 + v8[5]) = *(a1 + v6 + v8[5]);
  v3 = (a1 + v6 + v8[6]);
  v9 = (a2 + v6 + v8[6]);
  *v9 = *v3;
  v10 = v3[1];

  v9[1] = v10;
  *(v12 + v8[7]) = *(a1 + v6 + v8[7]);
  v11 = *(sub_46E8(&qword_35BA0, &qword_2A998) + 48);
  v4 = sub_46E8(&qword_35BA8, &qword_2A9A0);
  (*(*(v4 - 8) + 16))(a2 + v6 + v11, a1 + v6 + v11);
  return a2;
}

uint64_t sub_22AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  sub_24954();
  sub_46E8(&qword_35D00, &qword_2ABF0);
  sub_24278();
  sub_24C64();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = sub_46E8(&qword_35CE8, &qword_2ABE8);
  sub_24160();
  sub_15ED8(v8, v5, __b);
  sub_24300(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_24380(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_15ED8(v6, v5, a2);
  sub_24300(v6);
  return sub_24300(__b);
}

uint64_t sub_22C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v90 = a1;
  v156 = 0;
  v88 = v155;
  memset(v155, 0, sizeof(v155));
  v132 = 0;
  v133 = 0;
  v130 = 0u;
  v131 = 0u;
  v105 = 0u;
  v106 = 0u;
  v77 = 0;
  v78 = sub_249E4();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v82 = &v20 - v81;
  v91 = type metadata accessor for Requirement();
  v83 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v90);
  v93 = &v20 - v83;
  v84 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v85 = &v20 - v84;
  v156 = v4;
  sub_6890(v4, &v20 - v84);
  v87 = sub_12B3C();
  v86 = v5;
  sub_697C(v85);
  v151 = sub_24A74();
  v152 = v6;
  v153 = v7;
  v154 = v8;
  v89 = v148;
  v148[0] = v151;
  v148[1] = v6;
  v149 = v7 & 1;
  v150 = v8;
  sub_15ED8(v148, &type metadata for Text, v88);
  sub_16BD8(v89);
  sub_6890(v90, v93);
  v9 = (v93 + *(v91 + 24));
  v92 = *v9;
  v94 = v9[1];

  sub_697C(v93);
  if (v94)
  {
    v74 = v92;
    v75 = v94;
    v61 = v94;
    v31 = v92;
    v132 = v92;
    v133 = v94;

    v126 = sub_24A74();
    v127 = v10;
    v128 = v11;
    v129 = v12;
    v33 = v126;
    v34 = v10;
    v35 = v11;
    v36 = v12;
    v32 = sub_24BE4();
    v122 = v33;
    v123 = v34;
    v50 = 1;
    v124 = v35 & 1;
    v125 = v36;
    v118 = sub_24A54();
    v119 = v13;
    v120 = v14;
    v121 = v15;
    v39 = v118;
    v40 = v13;
    v41 = v14;
    v42 = v15;

    sub_154D4(v33, v34, v35 & 1);

    v37 = sub_24A04();
    (*(v79 + 104))(v82, enum case for Font.Leading.tight(_:), v78);
    v38 = sub_249F4();
    (*(v79 + 8))(v82, v78);

    v114 = v39;
    v115 = v40;
    v116 = v41 & 1 & v50;
    v117 = v42;
    v110 = sub_24A64();
    v111 = v16;
    v112 = v17;
    v113 = v18;
    v43 = v110;
    v44 = v16;
    v45 = v17;
    v46 = v18;

    sub_154D4(v39, v40, v41 & 1);

    v47 = v107;
    v107[0] = v43;
    v107[1] = v44;
    v108 = v45 & 1 & v50;
    v109 = v46;
    v60 = &v130;
    v56 = &type metadata for Text;
    v57 = &protocol witness table for Text;
    sub_15ED8(v107, &type metadata for Text, &v130);
    sub_16BD8(v47);
    v48 = v130;
    v49 = v131;
    v51 = *(&v131 + 1);
    sub_16C20(v130, *(&v130 + 1), v131 & 1);

    v52 = &v102;
    v102 = v48;
    v103 = v49 & 1 & v50;
    v104 = v51;
    v59 = &v105;
    sub_15ED8(&v102, v56, &v105);
    sub_16BD8(v52);
    v54 = v105;
    v53 = v106;
    v55 = *(&v106 + 1);
    sub_16C20(v105, *(&v105 + 1), v106 & 1);

    v58 = &v95;
    v95 = v54;
    v96 = v53 & 1;
    v97 = v55;
    sub_16108(&v95, v56, &v98);
    sub_245A0(v58);
    v62 = v98;
    v63 = v99;
    v64 = v100;
    v65 = v101;
    sub_244B0(v98, v99, v100, v101);
    v144 = v62;
    v145 = v63;
    v146 = v64;
    v147 = v65;
    sub_16BD8(v59);
    sub_16BD8(v60);

    v70 = v62;
    v71 = v63;
    v72 = v64;
    v73 = v65;
  }

  else
  {
    memset(v139, 0, sizeof(v139));
    sub_16108(v139, &type metadata for Text, &v140);
    v66 = v140;
    v67 = v141;
    v68 = v142;
    v69 = v143;
    sub_244B0(v140, v141, v142, v143);
    v144 = v66;
    v145 = v67;
    v146 = v68;
    v147 = v69;
    v70 = v66;
    v71 = v67;
    v72 = v68;
    v73 = v69;
  }

  v24 = v73;
  v23 = v72;
  v22 = v71;
  v21 = v70;
  v30 = v155;
  v29 = v137;
  sub_2041C(v155, v137);
  v27 = v138;
  v138[0] = v29;
  v28 = v136;
  v136[0] = v21;
  v136[1] = v22;
  v136[2] = v23;
  v136[3] = v24;
  v138[1] = v136;
  v25 = v135;
  v135[0] = &type metadata for Text;
  v135[1] = sub_46E8(&qword_35D10, &qword_2ABF8);
  v26 = v134;
  v134[0] = &protocol witness table for Text;
  v134[1] = sub_2450C();
  sub_16154(v27, 2uLL, v25, v76);
  sub_245A0(v28);
  sub_16BD8(v29);
  sub_245A0(&v144);
  return sub_16BD8(v30);
}

uint64_t sub_23448@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v34 = 0;
  v33 = 0;
  v13 = 0;
  v25 = sub_24884();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v24 = (&v11 - v11);
  v21 = type metadata accessor for RequirementRow();
  v12 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v1 = &v11 - v12;
  v26 = &v11 - v12;
  v28 = sub_46E8(&qword_35BB0, &qword_2A9A8);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v30 = &v11 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v31 = &v11 - v15;
  v34 = &v11 - v15;
  v4 = type metadata accessor for Requirement();
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v20 = &v11 - v16;
  v17 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v16);
  v32 = &v11 - v17;
  v33 = &v11 - v17;
  v18 = sub_24DB4("failed description", 0x12uLL, 1);
  v19 = v6;
  v7 = sub_134D0();
  sub_134D8(0, v18, v19, v7, v32);
  sub_6890(v32, v20);
  sub_163B0(v20, v1);
  v8 = v22;
  v9 = v24;
  *v24 = 0x4072C00000000000;
  v9[1] = 0x4051800000000000;
  (*(v8 + 104))();
  sub_2018C();
  sub_24AE4();
  (*(v22 + 8))(v24, v25);
  sub_697C(v26);
  v29 = sub_23838();
  sub_15ED8(v30, v28, v31);
  sub_23968(v30);
  sub_23A48(v31, v30);
  sub_15ED8(v30, v28, v27);
  sub_23968(v30);
  sub_23968(v31);
  return sub_697C(v32);
}

uint64_t type metadata accessor for RequirementRow()
{
  v1 = qword_369A0;
  if (!qword_369A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_23838()
{
  v2 = qword_35BB8;
  if (!qword_35BB8)
  {
    sub_4A94(&qword_35BB0, &qword_2A9A8);
    sub_2018C();
    sub_238E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_238E0()
{
  v2 = qword_35BC0;
  if (!qword_35BC0)
  {
    sub_4A94(&qword_35BC8, &qword_2A9B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_23968(uint64_t a1)
{
  v1 = sub_24794();
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(type metadata accessor for Requirement() + 24) + 8);

  v5 = *(sub_46E8(&qword_35BB0, &qword_2A9A8) + 36);
  v3 = sub_24884();
  (*(*(v3 - 8) + 8))(a1 + v5);
  return a1;
}

uint64_t sub_23A48(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = type metadata accessor for Requirement();
  *(a2 + v8[5]) = *(a1 + v8[5]);
  v3 = (a1 + v8[6]);
  v6 = (a2 + v8[6]);
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  *(a2 + v8[7]) = *(a1 + v8[7]);
  v9 = *(sub_46E8(&qword_35BB0, &qword_2A9A8) + 36);
  v4 = sub_24884();
  (*(*(v4 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

unint64_t sub_23BFC()
{
  v2 = qword_35BD0;
  if (!qword_35BD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_23D30()
{
  v2 = qword_35BD8;
  if (!qword_35BD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35BD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for StateGlyph()
{
  v1 = qword_36990;
  if (!qword_36990)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_240D8()
{
  v2 = qword_35CE0;
  if (!qword_35CE0)
  {
    type metadata accessor for StateGlyph();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35CE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_24160()
{
  v2 = qword_35CF0;
  if (!qword_35CF0)
  {
    sub_4A94(&qword_35CE8, &qword_2ABE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35CF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_241E8()
{
  v2 = qword_35CF8;
  if (!qword_35CF8)
  {
    sub_4A94(&qword_35BA8, &qword_2A9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_24278()
{
  v2 = qword_35D08;
  if (!qword_35D08)
  {
    sub_4A94(&qword_35D00, &qword_2ABF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24300(uint64_t a1)
{
  sub_154D4(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);
  v1 = *(a1 + 48);

  if (*(a1 + 80))
  {
    sub_154D4(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
    v2 = *(a1 + 80);
  }

  return a1;
}

uint64_t sub_24380(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_16C20(v7, v8, v9 & 1);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v12 = *(a1 + 48);

  *(a2 + 48) = v12;
  if (*(a1 + 80))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    sub_16C20(v3, v4, v5 & 1);
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *(a2 + 72) = v5 & 1;
    v6 = *(a1 + 80);

    *(a2 + 80) = v6;
  }

  else
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
  }

  return a2;
}

uint64_t sub_244B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_16C20(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_2450C()
{
  v2 = qword_35D18;
  if (!qword_35D18)
  {
    sub_4A94(&qword_35D10, &qword_2ABF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35D18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_245A0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_154D4(*a1, *(a1 + 8), *(a1 + 16) & 1);
    v1 = *(a1 + 24);
  }

  return a1;
}

void sub_245F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"CPSDeveloperSettingsController.m" lineNumber:30 description:{@"Invalid specifier: %@", *a1}];
}