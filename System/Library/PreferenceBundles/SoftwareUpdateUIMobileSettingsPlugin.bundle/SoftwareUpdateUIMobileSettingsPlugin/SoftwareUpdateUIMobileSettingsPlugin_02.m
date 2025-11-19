uint64_t sub_44EC0()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50EF0();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_45030()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_45074(uint64_t a1, char a2)
{

  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
}

uint64_t sub_45148()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();

  return v4 & 1;
}

uint64_t sub_451D0(char a1)
{
  v7 = 0;
  v8 = a1 & 1;
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);

  v5[0] = v3;
  v6 = v4;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(v5);
}

uint64_t sub_45290()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();

  return v4;
}

uint64_t sub_45330()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2 & 1;
}

uint64_t sub_45374(char a1, uint64_t a2)
{

  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *AutomaticUpdatesNavigationLink.init()@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_50E00();
  __b[0] = v10;
  LOBYTE(__b[1]) = v11 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[2] = v8;
  LOBYTE(__b[3]) = v9 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[4] = v6;
  LOBYTE(__b[5]) = v7 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[6] = v4;
  LOBYTE(__b[7]) = v5 & 1;
  LOBYTE(__b[8]) = sub_450F4() & 1;
  __b[9] = v1;
  return memcpy(a1, __b, 0x50uLL);
}

uint64_t AutomaticUpdatesNavigationLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v26 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v27 = sub_45DE8;
  v43 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v65 = 0;
  v37 = sub_50C30();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v5 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v36 = &v5 - v5;
  v30 = sub_23FC(&qword_64588, &qword_533C0);
  v6 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v32 = &v5 - v6;
  v41 = sub_23FC(&qword_64B30, &qword_533C8);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v7 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v5 - v7;
  v51 = sub_23FC(&qword_64B38, &qword_533D0);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v8 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v49 = &v5 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v8);
  v50 = &v5 - v9;
  v65 = &v5 - v9;
  v33 = v66;
  v19 = 80;
  memcpy(v66, v2, sizeof(v66));
  memcpy(__dst, v10, sizeof(__dst));
  v11 = v63;
  sub_359C4(v63);
  v12 = v68;
  v13 = 64;
  memcpy(v68, v11, sizeof(v68));
  v16 = v62;
  memcpy(v62, v68, sizeof(v62));
  KeyPath = swift_getKeyPath();
  memcpy(&v61, v33, v19);
  v3 = sub_44CA8();
  v14 = &v60;
  v60 = v3;
  sub_98E8();
  v17 = &v64;
  sub_51090();
  sub_2224(v14);

  sub_180B8(v16);
  v18 = v69;
  memcpy(v69, v17, v19);
  v23 = v59;
  memcpy(v59, v18, v19);
  memcpy(&v58, v33, v19);
  v22 = sub_44B1C();
  memcpy(&v57, v33, v19);
  v21 = sub_44990();
  memcpy(&v56, v33, v19);
  v20 = sub_44E34();
  v24 = sub_23FC(&qword_64590, &qword_51DB0);
  v25 = sub_9840();
  sub_51030();

  sub_18108(v23);
  sub_1837C(v33, &v55);
  v28 = v54;
  v54[2] = v33;
  v29 = sub_23FC(&qword_64B40, &qword_53400);
  v31 = sub_45DF0();
  v54[6] = v24;
  v54[7] = v25;
  v44 = 1;
  swift_getOpaqueTypeConformance2();
  sub_50E50();
  sub_182A0(v33);
  (*(v34 + 104))(v36, enum case for AccessibilityIdentifiers.autoUpdateButton(_:), v37);
  v42 = sub_45F38();
  sub_50FF0();
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  v54[4] = v41;
  v54[5] = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_99E8(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_45B6C@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v16 = __src;
  v13 = 0;
  v15 = sub_47514;
  v12 = sub_46D80;
  v28 = 0;
  __srca = __dst;
  __n = 80;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v30, __dst, sizeof(v30));
  v23 = sub_23FC(&qword_64B40, &qword_53400);
  v17 = *(v23 - 8);
  v18 = v23 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v16);
  v21 = &v6 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v22 = &v6 - v10;
  v28 = &v6 - v10;
  sub_1837C(v4, &v27);
  v11 = v26;
  v26[2] = v16;
  v14 = sub_23FC(&qword_64B58, &qword_53408);
  sub_45E94();
  sub_50E40();
  sub_182A0(v16);
  v20 = sub_45DF0();
  sub_6394(v21, v23, v22);
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v21, v23);
  (*(v17 + 16))(v21, v22, v23);
  sub_99E8(v21, v23, v19);
  v25(v21, v23);
  return (v25)(v22, v23);
}

unint64_t sub_45DF0()
{
  v2 = qword_64B48;
  if (!qword_64B48)
  {
    sub_6320(&qword_64B40, &qword_53400);
    sub_45E94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_45E94()
{
  v2 = qword_64B50;
  if (!qword_64B50)
  {
    sub_6320(&qword_64B58, &qword_53408);
    sub_382C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_45F38()
{
  v2 = qword_64B60;
  if (!qword_64B60)
  {
    sub_6320(&qword_64B30, &qword_533C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_45FC0@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v27 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  AutomaticUpdatesNavigationLink.automaticUpdatesText.getter(v17);
  v14[0] = v17[0];
  v14[1] = v17[1];
  v14[2] = v17[2];
  v14[3] = v17[3];
  v15 = v18;
  v16 = v19 & 1;
  v10 = sub_23FC(&qword_64B58, &qword_53408);
  sub_45E94();
  sub_6394(v14, v10, &v21);
  sub_46FC8(v14);
  v3 = v21;
  v4 = v22;
  v5 = v23;
  v6 = v24;
  v7 = v25;
  v8 = v26;
  sub_46F50(v21, v22, v23, v24, v25, v26 & 1);
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v7;
  v13 = v8 & 1;
  sub_99E8(v11, v10, a2);
  sub_46FC8(v11);
  return sub_46FC8(&v21);
}

uint64_t AutomaticUpdatesNavigationLink.automaticUpdatesText.getter@<X0>(uint64_t a1@<X8>)
{
  v173 = 0;
  v171 = 0;
  v169 = 0;
  memset(__b, 0, 0x22uLL);
  v166 = 0u;
  v167 = 0u;
  v154 = 0u;
  v155 = 0u;
  v137 = 0u;
  v138 = 0u;
  v125 = 0u;
  v126 = 0u;
  v107 = 0u;
  v108 = 0u;
  v95 = 0u;
  v96 = 0u;
  memcpy(__dst, v1, sizeof(__dst));
  v173 = v1;
  memcpy(&v172[1], __dst, 0x50uLL);
  v75 = sub_44CA8();
  swift_getKeyPath();
  (*(*v75 + 200))(v172);
  v76 = v172[0];
  v171 = v172[0] & 1;

  memcpy(&v170[1], __dst, 0x50uLL);
  v77 = sub_44CA8();
  swift_getKeyPath();
  (*(*v77 + 200))(v170);
  v78 = v170[0];
  v169 = v170[0] & 1;

  if (v78)
  {
    v73 = v76;
  }

  else
  {
    v73 = 0;
  }

  if (v73)
  {
    HIBYTE(v60) = 1;
    sub_51350("On", 2uLL, 1);
    sub_50F60();
    v52 = *sub_411D0();
    v52;
    v104 = 0;
    v105 = 0;
    v106 = v60 & 0x100;
    v100 = sub_50FD0();
    v101 = v2;
    v102 = v3;
    v103 = v4;
    v97[0] = v100;
    v97[1] = v2;
    v98 = v3 & 1;
    v99 = v4;
    sub_6394(v97, &type metadata for Text, &v107);
    sub_3BE9C(v97);
    v53 = v107;
    v54 = v108;
    v55 = *(&v108 + 1);
    sub_3BF28(v107, *(&v107 + 1), v108 & 1);

    v92 = v53;
    v93 = v54 & 1;
    v94 = v55;
    sub_99E8(&v92, &type metadata for Text, &v95);
    sub_3BE9C(&v92);
    v56 = v95;
    v57 = v96;
    v58 = *(&v96 + 1);
    sub_3BF28(v95, *(&v95 + 1), v96 & 1);

    v81 = v56;
    v82 = v57 & 1;
    v83 = v58;
    sub_B2D4(&v81, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v84);
    sub_3BE9C(&v81);
    v79[0] = v84[0];
    v79[1] = v84[1];
    v79[2] = v84[2];
    v79[3] = v84[3];
    v80 = v85 & 1;
    v59 = sub_23FC(&qword_647A0, qword_53410);
    v5 = sub_382C4();
    sub_B2D4(v79, v59, &type metadata for Text, v5, &protocol witness table for Text, &v86);
    sub_3CDD4(v79);
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v65 = v89;
    v66 = v90;
    v61 = v91;
    sub_46F50(v86, v87, v88, v89, v90, v91 & 1);
    __b[0] = v62;
    __b[1] = v63;
    __b[2] = v64;
    __b[3] = v65;
    LOBYTE(__b[4]) = v66;
    BYTE1(__b[4]) = v61 & 1;
    sub_3BE9C(&v95);
    sub_3BE9C(&v107);
    v67 = v62;
    v68 = v63;
    v69 = v64;
    v70 = v65;
    v71 = v66;
    v72 = v61;
  }

  else
  {
    if (v76)
    {
      HIBYTE(v39) = 1;
      sub_51350("Download Only", 0xDuLL, 1);
      sub_50F60();
      v31 = *sub_411D0();
      v31;
      v134 = 0;
      v135 = 0;
      v136 = v39 & 0x100;
      v130 = sub_50FD0();
      v131 = v6;
      v132 = v7;
      v133 = v8;
      v127[0] = v130;
      v127[1] = v6;
      v128 = v7 & 1;
      v129 = v8;
      sub_6394(v127, &type metadata for Text, &v137);
      sub_3BE9C(v127);
      v32 = v137;
      v33 = v138;
      v34 = *(&v138 + 1);
      sub_3BF28(v137, *(&v137 + 1), v138 & 1);

      v122 = v32;
      v123 = v33 & 1;
      v124 = v34;
      sub_99E8(&v122, &type metadata for Text, &v125);
      sub_3BE9C(&v122);
      v35 = v125;
      v36 = v126;
      v37 = *(&v126 + 1);
      sub_3BF28(v125, *(&v125 + 1), v126 & 1);

      v111 = v35;
      v112 = v36 & 1;
      v113 = v37;
      sub_B418(&v111, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v114);
      sub_3BE9C(&v111);
      v109[0] = v114[0];
      v109[1] = v114[1];
      v109[2] = v114[2];
      v109[3] = v114[3];
      v110 = v115 & 1;
      v38 = sub_23FC(&qword_647A0, qword_53410);
      v9 = sub_382C4();
      sub_B2D4(v109, v38, &type metadata for Text, v9, &protocol witness table for Text, &v116);
      sub_3CDD4(v109);
      v41 = v116;
      v42 = v117;
      v43 = v118;
      v44 = v119;
      v45 = v120;
      v40 = v121;
      sub_46F50(v116, v117, v118, v119, v120, v121 & 1);
      __b[0] = v41;
      __b[1] = v42;
      __b[2] = v43;
      __b[3] = v44;
      LOBYTE(__b[4]) = v45;
      BYTE1(__b[4]) = v40 & 1;
      sub_3BE9C(&v125);
      sub_3BE9C(&v137);
      v46 = v41;
      v47 = v42;
      v48 = v43;
      v49 = v44;
      v50 = v45;
      v51 = v40;
    }

    else
    {
      HIBYTE(v24) = 1;
      sub_51350("Off", 3uLL, 1);
      sub_50F60();
      v16 = *sub_411D0();
      v16;
      v163 = 0;
      v164 = 0;
      v165 = v24 & 0x100;
      v159 = sub_50FD0();
      v160 = v10;
      v161 = v11;
      v162 = v12;
      v156[0] = v159;
      v156[1] = v10;
      v157 = v11 & 1;
      v158 = v12;
      sub_6394(v156, &type metadata for Text, &v166);
      sub_3BE9C(v156);
      v17 = v166;
      v18 = v167;
      v19 = *(&v167 + 1);
      sub_3BF28(v166, *(&v166 + 1), v167 & 1);

      v151 = v17;
      v152 = v18 & 1;
      v153 = v19;
      sub_99E8(&v151, &type metadata for Text, &v154);
      sub_3BE9C(&v151);
      v20 = v154;
      v21 = v155;
      v22 = *(&v155 + 1);
      sub_3BF28(v154, *(&v154 + 1), v155 & 1);

      v142 = v20;
      v143 = v21 & 1;
      v144 = v22;
      v23 = sub_23FC(&qword_647A0, qword_53410);
      v13 = sub_382C4();
      sub_B418(&v142, v23, &type metadata for Text, v13, &protocol witness table for Text, &v145);
      sub_3BE9C(&v142);
      v26 = v145;
      v27 = v146;
      v28 = v147;
      v29 = v148;
      v30 = v149;
      v25 = v150;
      sub_46F50(v145, v146, v147, v148, v149, v150 & 1);
      __b[0] = v26;
      __b[1] = v27;
      __b[2] = v28;
      __b[3] = v29;
      LOBYTE(__b[4]) = v30;
      BYTE1(__b[4]) = v25 & 1;
      sub_3BE9C(&v154);
      sub_3BE9C(&v166);
      v46 = v26;
      v47 = v27;
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v25;
    }

    v67 = v46;
    v68 = v47;
    v69 = v48;
    v70 = v49;
    v71 = v50;
    v72 = v51;
  }

  v139[0] = v67;
  v139[1] = v68;
  v139[2] = v69;
  v139[3] = v70;
  v140 = v71;
  v141 = v72 & 1;
  v15 = sub_23FC(&qword_64B58, &qword_53408);
  sub_45E94();
  sub_99E8(v139, v15, a1);
  sub_46FC8(v139);
  return sub_46FC8(__b);
}

uint64_t sub_46D80@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatic Updates", 0x11uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

uint64_t sub_46F50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CC4C(a1, a2, a3);
  }

  sub_3BF28(a1, a2, a3 & 1);
}

uint64_t sub_47010(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CD60(a1, a2, a3);
  }

  sub_3BEE4(a1, a2, a3 & 1);
}

uint64_t sub_4715C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 72)))
      {
        v4 = *(a1 + 72);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_4728C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_4748C()
{
  sub_6320(&qword_64B30, &qword_533C8);
  sub_45F38();
  return swift_getOpaqueTypeConformance2();
}

void *sub_4751C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_47618()
{

  sub_50CB0();
  sub_51130();

  return v1;
}

uint64_t sub_47690()
{

  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51140();

  return v1;
}

uint64_t sub_47714(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6[0] = a2;
  v6[1] = a3;

  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51150();
  sub_477D4(v6);
}

uint64_t *sub_477D4(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_47838()
{

  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51160();

  return v1;
}

uint64_t sub_4790C(uint64_t a1, uint64_t a2)
{

  v3 = *v2;
  v5 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_47974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v24 = a1;
  v25 = a2;
  v18 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v21 = sub_482FC;
  v27 = &unk_537D8;
  v33 = &opaque type descriptor for <<opaque return type of SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)>>;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v31 = sub_23FC(&qword_64B70, &qword_537A8);
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = &v13 - v13;
  v41 = sub_23FC(&qword_64B78, &qword_537B0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v24);
  v39 = &v13 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v13 - v15;
  v52 = &v13 - v15;
  v50 = v5;
  v51 = v6;

  v22 = 32;
  v23 = 7;
  v7 = swift_allocObject();
  v8 = v25;
  v19 = v7;
  *(v7 + 16) = v24;
  *(v7 + 24) = v8;
  v20 = sub_23FC(&qword_64B80, &qword_537B8);
  v16 = sub_6320(&qword_64B88, &qword_537C0);
  v17 = sub_48308();
  v9 = sub_37E30();
  v46 = v16;
  v47 = &type metadata for String;
  v48 = v17;
  v49 = v9;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  sub_51280();

  v10 = swift_allocObject();
  v11 = v25;
  v26 = v10;
  *(v10 + 16) = v24;
  *(v10 + 24) = v11;
  v32 = sub_497CC();
  sub_51240();
  (*(v28 + 8))(v30, v31);
  v44 = v31;
  v45 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_498F4(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_49958(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_47DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v17 = a1;
  v18 = a2;
  v38 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v29 = 0;
  v12 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = &v11 - v12;
  v3 = sub_512F0();
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v28 = &v11 - v13;
  v45 = sub_23FC(&qword_64B80, &qword_537B8);
  v39 = *(v45 - 8);
  v40 = v45 - 8;
  v14 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v17);
  v43 = &v11 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v44 = &v11 - v15;
  v61 = &v11 - v15;
  v59 = v6;
  v60 = v7;
  v16 = v62;
  sub_4044(v62);
  v23 = v57;
  memcpy(v57, v16, sizeof(v57));
  KeyPath = swift_getKeyPath();

  v56[2] = v17;
  v56[3] = v18;
  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51140();
  v19 = v56[1];

  v20 = sub_50C80();

  v21 = v56;
  v56[0] = v20;
  sub_483B0();
  v24 = &v58;
  sub_51090();
  sub_4A668(v21);

  sub_4530(v23);
  v25 = __dst;
  v26 = 160;
  memcpy(__dst, v24, sizeof(__dst));
  v33 = v55;
  memcpy(v55, __dst, sizeof(v55));
  v27 = 1;
  sub_51350("Software Update", 0xFuLL, 1);
  sub_512E0();
  v30 = *sub_411D0();
  v30;
  sub_20CD4();
  v52[2] = 0;
  v52[3] = 0;
  v53 = 0;
  v54 = v27 & 1;
  v8 = sub_51320();
  v32 = v52;
  v52[0] = v8;
  v52[1] = v9;
  v34 = sub_23FC(&qword_64B88, &qword_537C0);
  v36 = sub_48308();
  v37 = sub_37E30();
  v35 = &type metadata for String;
  sub_510C0();
  sub_37EA8(v32);
  sub_4A694(v33);
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v43, v45, v44);
  v47 = *(v39 + 8);
  v46 = v39 + 8;
  v47(v43, v45);
  (*(v39 + 16))(v43, v44, v45);
  sub_99E8(v43, v45, v41);
  v47(v43, v45);
  return (v47)(v44, v45);
}

uint64_t sub_482B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_48308()
{
  v2 = qword_64B90;
  if (!qword_64B90)
  {
    sub_6320(&qword_64B88, &qword_537C0);
    sub_483B0();
    sub_48428();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_483B0()
{
  v2 = qword_64B98;
  if (!qword_64B98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_48428()
{
  v2 = qword_64BA0;
  if (!qword_64BA0)
  {
    sub_6320(&qword_64BA8, &qword_537C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_484B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[6] = v4;
  v4[7] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[8] = 0;
  v5 = sub_50E60();
  v4[14] = v5;
  v13 = *(v5 - 8);
  v4[15] = v13;
  v6 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v7 = sub_50DB0();
  v4[17] = v7;
  v14 = *(v7 - 8);
  v4[18] = v14;
  v8 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = sub_50960();
  v4[20] = v9;
  v15 = *(v9 - 8);
  v4[21] = v15;
  v4[22] = *(v15 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[7] = a2;
  v4[2] = a3;
  v4[3] = a4;
  sub_51410();
  v4[25] = sub_51400();
  v19 = sub_513F0();
  v11 = v4[6];

  return _swift_task_switch(sub_48710, v19, v10);
}

uint64_t sub_48710()
{
  v60 = v0;
  v29 = v0[24];
  v34 = v0[23];
  v31 = v0[22];
  v32 = v0[21];
  v35 = v0[20];
  v26 = v0[19];
  v28 = v0[13];
  v27 = v0[12];
  v1 = v0[11];
  v0[6] = v0;
  sub_51260();
  sub_50C00();
  v30 = *(v32 + 16);
  v30(v34, v29, v35);
  v0[8] = sub_50BF0();
  sub_50D90();

  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  *(v37 + 24) = v28;
  v30(v34, v29, v35);
  v33 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = swift_allocObject();
  (*(v32 + 32))(v36 + v33, v34, v35);

  v41 = swift_allocObject();
  *(v41 + 16) = sub_4A074;
  *(v41 + 24) = v36;

  v53 = sub_50DA0();
  v54 = sub_51480();
  v43 = swift_allocObject();
  *(v43 + 16) = 32;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_49F9C;
  *(v38 + 24) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_4A390;
  *(v39 + 24) = v38;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_4A3DC;
  *(v45 + 24) = v39;
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_49864;
  *(v40 + 24) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_4A4DC;
  *(v48 + 24) = v40;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_4A20C;
  *(v42 + 24) = v41;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_4A5DC;
  *(v51 + 24) = v42;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v52 = v2;

  *v52 = sub_4A314;
  v52[1] = v43;

  v52[2] = sub_4A348;
  v52[3] = v44;

  v52[4] = sub_4A428;
  v52[5] = v45;

  v52[6] = sub_4A460;
  v52[7] = v46;

  v52[8] = sub_4A494;
  v52[9] = v47;

  v52[10] = sub_4A528;
  v52[11] = v48;

  v52[12] = sub_4A560;
  v52[13] = v49;

  v52[14] = sub_4A594;
  v52[15] = v50;

  v52[16] = sub_4A628;
  v52[17] = v51;
  sub_1489C();

  if (os_log_type_enabled(v53, v54))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v23 = sub_121D4(0);
    v24 = sub_121D4(3);
    v55 = buf;
    v56 = v23;
    v57 = v24;
    sub_12228(2, &v55);
    sub_12228(3, &v55);
    v58 = sub_4A314;
    v59 = v43;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A348;
    v59 = v44;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A428;
    v59 = v45;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A460;
    v59 = v46;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A494;
    v59 = v47;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A528;
    v59 = v48;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A560;
    v59 = v49;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A594;
    v59 = v50;
    sub_1223C(&v58, &v55, &v56, &v57);
    v58 = sub_4A628;
    v59 = v51;
    sub_1223C(&v58, &v55, &v56, &v57);
    _os_log_impl(&dword_0, v53, v54, "%s.%s: Settings Experience - Initiating Deep Linking resolution request for URL:  %s", buf, 0x20u);
    sub_12288(v23);
    sub_12288(v24);
    sub_514D0();
  }

  else
  {
  }

  v17 = v25[25];
  v18 = v25[24];
  v19 = v25[23];
  v16 = v25[20];
  v20 = v25[19];
  v7 = v25[17];
  v21 = v25[16];
  v14 = v25[14];
  v9 = v25[13];
  v8 = v25[12];
  v10 = v25[11];
  v12 = v25[10];
  v15 = v25[21];
  v6 = v25[18];
  v13 = v25[15];
  _objc_release(v53);
  (*(v6 + 8))(v20, v7);

  v25[4] = v8;
  v25[5] = v9;
  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51140();
  v11 = v25[9];

  sub_50B10();

  sub_50B20();
  sub_50C90();

  sub_51250();
  sub_51270();
  (*(v13 + 8))(v21, v14);

  (*(v15 + 8))(v18, v16);

  v3 = *(v25[6] + 8);
  v4 = v25[6];

  return v3();
}

uint64_t sub_49588()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_495D0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_496A4;

  return sub_484B0(a1, a2, v8, v9);
}

uint64_t sub_496A4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_497CC()
{
  v2 = qword_64BB0;
  if (!qword_64BB0)
  {
    sub_6320(&qword_64B70, &qword_537A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64BB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_499BC()
{
  v4 = 0;
  v5 = 0;
  sub_50CB0();
  sub_50CA0();
  v3 = sub_47618();
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_49A38(&v4);
  return v3;
}

uint64_t *sub_49A38(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

unint64_t sub_49AA8()
{
  v2 = qword_64BB8;
  if (!qword_64BB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_499BC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

__n128 sub_49BB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_49BBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_49D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_49EE4()
{
  sub_6320(&qword_64B70, &qword_537A8);
  sub_497CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_49F54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_49F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_49854();
}

uint64_t sub_49FA8()
{
  v3 = *(sub_50960() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4A074@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_50960();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_49894(v3, a1);
}

uint64_t sub_4A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_51640();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_4A1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A20C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_50960();
  v1 = sub_4A268();

  return sub_4A0E8(v5, v3, v4, v1);
}

unint64_t sub_4A268()
{
  v2 = qword_64C58;
  if (!qword_64C58)
  {
    sub_50960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64C58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4A350()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A39C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A3E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A49C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A4E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A59C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4A5E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *sub_4A668(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_4A694(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];

  v6 = a1[5];

  v7 = a1[6];

  v8 = a1[7];

  v9 = a1[8];
  v10 = *(a1 + 72);
  sub_3238();
  v11 = a1[10];

  v12 = a1[11];

  v13 = a1[13];

  v14 = a1[15];

  v15 = a1[17];

  v16 = a1[18];

  v17 = a1[19];

  return a1;
}

Swift::Void __swiftcall SUUISettingsSoftwareUpdateController.viewDidLoad()()
{
  v22 = "Fatal error";
  v23 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v24 = "SoftwareUpdateUIMobileSettingsPlugin/SUUISettingsSoftwareUpdateController.swift";
  ObjectType = swift_getObjectType();
  v59 = 0;
  v55 = 0;
  v50 = 0;
  v33 = 0;
  v25 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &v10 - v25;
  v1 = sub_512F0();
  v26 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v32 = &v10 - v26;
  v59 = v0;
  v0;
  v58.receiver = v0;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad");
  _objc_release(v38);
  sub_23FC(&qword_64C68, &qword_53970);
  v28 = __dst;
  v29 = 144;
  memcpy(__dst, &v38[OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView], sizeof(__dst));
  sub_4354(__dst, &v57);
  v30 = v56;
  memcpy(v56, v28, v29);
  v39 = sub_50F70();
  v55 = v39;
  v38;
  v31 = 1;
  sub_51350("Software Update", 0xFuLL, 1);
  sub_512E0();
  v34 = *sub_411D0();
  v34;
  sub_20CD4();
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = v31 & 1;
  sub_51320();
  v36 = v2;
  v37 = sub_51300();

  [v38 setTitle:v37];
  _objc_release(v37);
  _objc_release(v38);
  v39;
  v40 = [v39 view];
  if (v40)
  {
    v21 = v40;
    v19 = v40;
    v50 = v40;
    _objc_release(v39);
    v38;
    v20 = [v38 view];
    _objc_release(v38);
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      sub_51610();
      __break(1u);
    }

    v16 = v18;
    [v18 addSubview:v19];
    _objc_release(v16);
    v38;
    v17 = [v38 view];
    _objc_release(v38);
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      sub_51610();
      __break(1u);
    }

    [v15 bounds];
    v46 = v3;
    v47 = v4;
    v48 = v5;
    v49 = v6;
    v11 = v5;
    v12 = v6;
    _objc_release(v10);
    v42 = 0;
    v43 = 0;
    v44 = v11;
    v45 = v12;
    [v19 setFrame:{0.0, 0.0, v11, v12}];
    type metadata accessor for AutoresizingMask();
    v13 = 2;
    v7 = sub_51650();
    v8 = v13;
    *v9 = 16;
    v9[1] = v8;
    sub_1489C();
    v14 = v7;
    sub_4AE98();
    sub_51530();
    [v19 setAutoresizingMask:v41];
    [v38 addChildViewController:v39];
    v38;
    [v39 didMoveToParentViewController:v38];
    _objc_release(v38);
    _objc_release(v19);
    _objc_release(v39);
  }

  else
  {
    _objc_release(v39);
    _objc_release(v39);
  }
}

uint64_t type metadata accessor for AutoresizingMask()
{
  v4 = qword_64CA0;
  if (!qword_64CA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_64CA0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_4AE98()
{
  v2 = qword_64C70;
  if (!qword_64C70)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64C70);
    return WitnessTable;
  }

  return v2;
}

uint64_t SUUISettingsSoftwareUpdateController.handleURL(_:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v74 = a2;
  v73 = a3;
  v83 = sub_4BE6C;
  v85 = sub_4F128;
  v87 = sub_4F174;
  v89 = sub_4BE74;
  v90 = sub_4F274;
  v95 = sub_4BEC8;
  v99 = sub_4F374;
  v101 = sub_4F0AC;
  v103 = sub_4F0E0;
  v105 = sub_4F1C0;
  v107 = sub_4F1F8;
  v109 = sub_4F22C;
  v111 = sub_4F2C0;
  v113 = sub_4F2F8;
  v115 = sub_4F32C;
  v118 = sub_4F3C0;
  v69 = &unk_53980;
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v129 = 0;
  v70 = 0;
  v4 = sub_23FC(&qword_64640, &qword_52260);
  v71 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v72 = &v51 - v71;
  v75 = 0;
  v76 = sub_50DB0();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v81 = &v51 - v79;
  v133 = v5;
  v131 = v6;
  v132 = v7;
  v130 = v3;
  sub_50C00();

  v98 = sub_50BD0();
  v129 = v98;
  sub_50D90();
  v82;
  v97 = 7;
  v84 = swift_allocObject();
  *(v84 + 16) = v82;

  v122 = sub_50DA0();
  v123 = sub_51480();
  v93 = 17;
  v102 = swift_allocObject();
  v92 = 32;
  *(v102 + 16) = 32;
  v104 = swift_allocObject();
  v94 = 8;
  *(v104 + 16) = 8;
  v96 = 32;
  v8 = swift_allocObject();
  v9 = v84;
  v86 = v8;
  *(v8 + 16) = v83;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v86;
  v88 = v10;
  *(v10 + 16) = v85;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v88;
  v106 = v12;
  *(v12 + 16) = v87;
  *(v12 + 24) = v13;
  v108 = swift_allocObject();
  *(v108 + 16) = v92;
  v110 = swift_allocObject();
  *(v110 + 16) = v94;
  v14 = swift_allocObject();
  v91 = v14;
  *(v14 + 16) = v89;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v91;
  v112 = v15;
  *(v15 + 16) = v90;
  *(v15 + 24) = v16;
  v114 = swift_allocObject();
  *(v114 + 16) = v92;
  v116 = swift_allocObject();
  *(v116 + 16) = v94;
  v17 = swift_allocObject();
  v18 = v98;
  v100 = v17;
  *(v17 + 16) = v95;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v100;
  v119 = v19;
  *(v19 + 16) = v99;
  *(v19 + 24) = v20;
  v121 = sub_23FC(&qword_64648, &qword_51E60);
  v117 = sub_51650();
  v120 = v21;

  v22 = v102;
  v23 = v120;
  *v120 = v101;
  v23[1] = v22;

  v24 = v104;
  v25 = v120;
  v120[2] = v103;
  v25[3] = v24;

  v26 = v106;
  v27 = v120;
  v120[4] = v105;
  v27[5] = v26;

  v28 = v108;
  v29 = v120;
  v120[6] = v107;
  v29[7] = v28;

  v30 = v110;
  v31 = v120;
  v120[8] = v109;
  v31[9] = v30;

  v32 = v112;
  v33 = v120;
  v120[10] = v111;
  v33[11] = v32;

  v34 = v114;
  v35 = v120;
  v120[12] = v113;
  v35[13] = v34;

  v36 = v116;
  v37 = v120;
  v120[14] = v115;
  v37[15] = v36;

  v38 = v119;
  v39 = v120;
  v120[16] = v118;
  v39[17] = v38;
  sub_1489C();

  if (os_log_type_enabled(v122, v123))
  {
    v40 = v70;
    v62 = sub_514F0();
    v61 = sub_23FC(&qword_64650, &unk_53930);
    v63 = sub_121D4(0);
    v64 = sub_121D4(3);
    v65 = &v128;
    v128 = v62;
    v66 = &v127;
    v127 = v63;
    v67 = &v126;
    v126 = v64;
    sub_12228(2, &v128);
    sub_12228(3, v65);
    v124 = v101;
    v125 = v102;
    sub_1223C(&v124, v65, v66, v67);
    v68 = v40;
    if (v40)
    {

      __break(1u);
    }

    else
    {
      v124 = v103;
      v125 = v104;
      sub_1223C(&v124, &v128, &v127, &v126);
      v60 = 0;
      v124 = v105;
      v125 = v106;
      sub_1223C(&v124, &v128, &v127, &v126);
      v59 = 0;
      v124 = v107;
      v125 = v108;
      sub_1223C(&v124, &v128, &v127, &v126);
      v58 = 0;
      v124 = v109;
      v125 = v110;
      sub_1223C(&v124, &v128, &v127, &v126);
      v57 = 0;
      v124 = v111;
      v125 = v112;
      sub_1223C(&v124, &v128, &v127, &v126);
      v56 = 0;
      v124 = v113;
      v125 = v114;
      sub_1223C(&v124, &v128, &v127, &v126);
      v55 = 0;
      v124 = v115;
      v125 = v116;
      sub_1223C(&v124, &v128, &v127, &v126);
      v54 = 0;
      v124 = v118;
      v125 = v119;
      sub_1223C(&v124, &v128, &v127, &v126);
      _os_log_impl(&dword_0, v122, v123, "%s.%s: Initiating Deep Linking resolution request for URL with resource dictionary: %s", v62, 0x20u);
      sub_12288(v63);
      sub_12288(v64);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v122);
  (*(v77 + 8))(v81, v76);
  sub_51430();
  v52 = 0;
  v41 = sub_51450();
  (*(*(v41 - 8) + 56))(v72, 0, 1);
  v82;

  sub_4F3CC(v74);
  v42 = swift_allocObject();
  v43 = v82;
  v44 = v74;
  v45 = v73;
  v46 = v52;
  v47 = v69;
  v48 = v72;
  v49 = v98;
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v43;
  v42[5] = v49;
  v42[6] = v44;
  v42[7] = v45;
  v53 = sub_F350(v46, v46, v48, v47, v42, &type metadata for () + 8);
  sub_14BA4(v72);
}

uint64_t sub_4BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a7;
  v7[46] = a6;
  v7[45] = a5;
  v7[44] = a4;
  v7[40] = v7;
  v7[41] = 0;
  v7[42] = 0;
  v7[38] = 0;
  v7[39] = 0;
  v7[43] = 0;
  v8 = sub_50DB0();
  v7[48] = v8;
  v12 = *(v8 - 8);
  v7[49] = v12;
  v9 = *(v12 + 64) + 15;
  v7[50] = swift_task_alloc();
  v7[41] = a4;
  v7[42] = a5;
  v7[38] = a6;
  v7[39] = a7;
  v10 = v7[40];

  return _swift_task_switch(sub_4C020, 0, 0);
}

uint64_t sub_4C020()
{
  v4 = v0[45];
  v1 = v0[44];
  v0[40] = v0;
  memcpy(v0 + 2, (v1 + OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView), 0x90uLL);
  sub_4354(v0 + 2, (v0 + 20));
  sub_50B10();

  v6 = sub_50B20();
  v0[51] = v6;
  v2 = swift_task_alloc();
  *(v5 + 416) = v2;
  *v2 = *(v5 + 320);
  v2[1] = sub_4C138;

  return sub_6E24(v6);
}

uint64_t sub_4C138()
{
  v10 = *v1;
  v8 = (*v1 + 16);
  v9 = (*v1 + 320);
  v2 = *(*v1 + 416);
  *(v10 + 320) = *v1;
  *(v10 + 424) = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_4C390;
  }

  else
  {
    v3 = v8[49];

    sub_4530(v8);
    v4 = *v9;
    v5 = sub_4C2C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_4C2C8()
{
  *(v0 + 320) = v0;
  v4 = *(v0 + 400);
  sub_4D098(*(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376));

  v1 = *(*(v0 + 320) + 8);
  v2 = *(v0 + 320);

  return v1();
}

uint64_t sub_4C390()
{
  v42 = v0;
  v17 = v0[53];
  v1 = v0[51];
  v2 = v0[50];
  v16 = v0[44];
  v0[40] = v0;

  sub_4530(v0 + 2);
  swift_errorRetain();
  v0[43] = v17;
  sub_50D90();
  v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  swift_errorRetain();
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  sub_28D78();

  v35 = sub_50DA0();
  v36 = sub_514A0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_4FEF0;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_4FFE8;
  *(v20 + 24) = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_50034;
  *(v27 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_4D378;
  *(v21 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_50134;
  *(v30 + 24) = v21;
  v31 = swift_allocObject();
  *(v31 + 16) = 64;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_4FF38;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_50234;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_50280;
  *(v33 + 24) = v24;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v34 = v3;

  *v34 = sub_4FF6C;
  v34[1] = v25;

  v34[2] = sub_4FFA0;
  v34[3] = v26;

  v34[4] = sub_50080;
  v34[5] = v27;

  v34[6] = sub_500B8;
  v34[7] = v28;

  v34[8] = sub_500EC;
  v34[9] = v29;

  v34[10] = sub_50180;
  v34[11] = v30;

  v34[12] = sub_501B8;
  v34[13] = v31;

  v34[14] = sub_501EC;
  v34[15] = v32;

  v34[16] = sub_502CC;
  v34[17] = v33;
  sub_1489C();

  if (os_log_type_enabled(v35, v36))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v13 = sub_121D4(1);
    v14 = sub_121D4(2);
    v37 = buf;
    v38 = v13;
    v39 = v14;
    sub_12228(2, &v37);
    sub_12228(3, &v37);
    v40 = sub_4FF6C;
    v41 = v25;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_4FFA0;
    v41 = v26;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_50080;
    v41 = v27;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_500B8;
    v41 = v28;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_500EC;
    v41 = v29;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_50180;
    v41 = v30;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_501B8;
    v41 = v31;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_501EC;
    v41 = v32;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_502CC;
    v41 = v33;
    sub_1223C(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_0, v35, v36, "%s.%s: Deep link handling error: %@", buf, 0x20u);
    sub_12288(v13);
    sub_12288(v14);
    sub_514D0();
  }

  else
  {
  }

  v10 = *(v15 + 424);
  v8 = *(v15 + 400);
  v9 = *(v15 + 384);
  v7 = *(v15 + 392);
  _objc_release(v35);
  (*(v7 + 8))(v8, v9);

  v11 = *(v15 + 400);
  sub_4D098(*(v15 + 352), *(v15 + 360), *(v15 + 368), *(v15 + 376));

  v4 = *(*(v15 + 320) + 8);
  v5 = *(v15 + 320);

  return v4();
}

void sub_4D098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = sub_503A8;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v20 = 0;
  v24 = sub_51200();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v13 - v13;
  v28 = sub_51220();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v27 = &v13 - v14;
  v41 = v4;
  v40 = v5;
  v38 = v6;
  v39 = v7;
  sub_502D8();
  v30 = sub_514B0();
  v19;

  sub_4F3CC(v16);
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v8[2] = v19;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;
  v36 = v12;
  v37 = v8;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_4E880;
  v35 = &unk_61E18;
  v29 = _Block_copy(&aBlock);
  sub_4E8D0();
  sub_4E8E8();
  sub_514C0();
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);

  _objc_release(v30);
}

id SUUISettingsSoftwareUpdateController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_51300();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName:? bundle:?];
  _objc_release(a3);
  _objc_release(v7);
  return v5;
}

id SUUISettingsSoftwareUpdateController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;
  v11 = OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView;
  sub_4044(v18);
  memcpy(&v3[v11], v18, 0x90uLL);

  if (a2)
  {
    v6 = sub_51300();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:");
  _objc_release(v7);
  v5;
  v17 = v5;
  _objc_release(a3);

  _objc_release(v17);
  return v5;
}

id SUUISettingsSoftwareUpdateController.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];
  _objc_release(a1);
  return v4;
}

id SUUISettingsSoftwareUpdateController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  v4 = OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView;
  sub_4044(v11);
  memcpy(&v1[v4], v11, 0x90uLL);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  if (v7)
  {
    v7;
    v10 = v7;
    _objc_release(a1);
    _objc_release(v10);
    return v7;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id SUUISettingsSoftwareUpdateController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4DB0C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v57 = a1;
  v71 = a2;
  v50 = a3;
  v51 = a4;
  v58 = sub_50570;
  v60 = sub_50628;
  v62 = sub_50674;
  v64 = sub_4E82C;
  v65 = sub_50774;
  v70 = sub_50578;
  v74 = sub_50874;
  v76 = sub_505AC;
  v78 = sub_505E0;
  v80 = sub_506C0;
  v82 = sub_506F8;
  v84 = sub_5072C;
  v86 = sub_507C0;
  v88 = sub_507F8;
  v90 = sub_5082C;
  v93 = sub_508C0;
  v107 = 0;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v49 = 0;
  v52 = sub_50DB0();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v41 - v55;
  v107 = __chkstk_darwin(v57);
  v106 = v4;
  v104 = v5;
  v105 = v6;
  sub_50D90();
  v57;
  v73 = 7;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;

  v97 = sub_50DA0();
  v98 = sub_51480();
  v68 = 17;
  v77 = swift_allocObject();
  v67 = 32;
  *(v77 + 16) = 32;
  v79 = swift_allocObject();
  v69 = 8;
  *(v79 + 16) = 8;
  v72 = 32;
  v7 = swift_allocObject();
  v8 = v59;
  v61 = v7;
  *(v7 + 16) = v58;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v61;
  v63 = v9;
  *(v9 + 16) = v60;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v63;
  v81 = v11;
  *(v11 + 16) = v62;
  *(v11 + 24) = v12;
  v83 = swift_allocObject();
  *(v83 + 16) = v67;
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v13 = swift_allocObject();
  v66 = v13;
  *(v13 + 16) = v64;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v66;
  v87 = v14;
  *(v14 + 16) = v65;
  *(v14 + 24) = v15;
  v89 = swift_allocObject();
  *(v89 + 16) = v67;
  v91 = swift_allocObject();
  *(v91 + 16) = v69;
  v16 = swift_allocObject();
  v17 = v71;
  v75 = v16;
  *(v16 + 16) = v70;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v75;
  v94 = v18;
  *(v18 + 16) = v74;
  *(v18 + 24) = v19;
  v96 = sub_23FC(&qword_64648, &qword_51E60);
  v92 = sub_51650();
  v95 = v20;

  v21 = v77;
  v22 = v95;
  *v95 = v76;
  v22[1] = v21;

  v23 = v79;
  v24 = v95;
  v95[2] = v78;
  v24[3] = v23;

  v25 = v81;
  v26 = v95;
  v95[4] = v80;
  v26[5] = v25;

  v27 = v83;
  v28 = v95;
  v95[6] = v82;
  v28[7] = v27;

  v29 = v85;
  v30 = v95;
  v95[8] = v84;
  v30[9] = v29;

  v31 = v87;
  v32 = v95;
  v95[10] = v86;
  v32[11] = v31;

  v33 = v89;
  v34 = v95;
  v95[12] = v88;
  v34[13] = v33;

  v35 = v91;
  v36 = v95;
  v95[14] = v90;
  v36[15] = v35;

  v37 = v94;
  v38 = v95;
  v95[16] = v93;
  v38[17] = v37;
  sub_1489C();

  if (os_log_type_enabled(v97, v98))
  {
    v39 = v49;
    v42 = sub_514F0();
    v41[11] = sub_23FC(&qword_64650, &unk_53930);
    v43 = sub_121D4(0);
    v44 = sub_121D4(3);
    v45 = &v103;
    v103 = v42;
    v46 = &v102;
    v102 = v43;
    v47 = &v101;
    v101 = v44;
    sub_12228(2, &v103);
    sub_12228(3, v45);
    v99 = v76;
    v100 = v77;
    sub_1223C(&v99, v45, v46, v47);
    v48 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v99 = v78;
      v100 = v79;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[9] = 0;
      v99 = v80;
      v100 = v81;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[8] = 0;
      v99 = v82;
      v100 = v83;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[7] = 0;
      v99 = v84;
      v100 = v85;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[6] = 0;
      v99 = v86;
      v100 = v87;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[5] = 0;
      v99 = v88;
      v100 = v89;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[4] = 0;
      v99 = v90;
      v100 = v91;
      sub_1223C(&v99, &v103, &v102, &v101);
      v41[3] = 0;
      v99 = v93;
      v100 = v94;
      sub_1223C(&v99, &v103, &v102, &v101);
      _os_log_impl(&dword_0, v97, v98, "%s.%s: Finished to resolve the Deep Linking request for  URL with resource dictionary: %s", v42, 0x20u);
      sub_12288(v43);
      sub_12288(v44);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v97);
  (*(v53 + 8))(v56, v52);
  result = sub_4F3CC(v50);
  if (v50)
  {
    v41[1] = v50;
    v41[2] = v51;
    v41[0] = v51;
    v50(result);
  }

  return result;
}

uint64_t sub_4E880(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t sub_4E8E8()
{
  sub_4EF90(0);
  sub_51200();
  sub_50420();
  sub_23FC(&qword_64CE0, &qword_53C10);
  sub_504A0();
  return sub_515B0();
}

uint64_t sub_4E988()
{
  sub_4F8E8();
  sub_4F968();
  return sub_51750();
}

uint64_t sub_4EB8C()
{
  sub_4F8E8();
  sub_4F968();
  return sub_51740();
}

uint64_t sub_4EBD0()
{
  sub_4F8E8();
  sub_4F968();
  return sub_51720();
}

uint64_t sub_4EC14()
{
  sub_4F8E8();
  sub_4F968();
  return sub_51730();
}

uint64_t sub_4EDC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_7(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_4EDF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_7(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_4EE30@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_4EE64()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_4EF90(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_51200();
      v3 = sub_513D0();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_51200();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

uint64_t sub_4F0E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F234()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F380()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4F3CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4F400()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  v2 = *(v0 + 40);

  if (*(v0 + 48))
  {
    v3 = *(v5 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_4F474(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4F570;

  return sub_4BED0(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_4F570()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_4F720()
{
  v2 = qword_64CA8;
  if (!qword_64CA8)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F7D0()
{
  v2 = qword_64CB0;
  if (!qword_64CB0)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F868()
{
  v2 = qword_64CB8;
  if (!qword_64CB8)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F8E8()
{
  v2 = qword_64CC0;
  if (!qword_64CC0)
  {
    type metadata accessor for AutoresizingMask();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F968()
{
  v2 = qword_64CC8;
  if (!qword_64CC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4F9E0()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_4FA28(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4FB1C;

  return sub_12634(a1, v6);
}

uint64_t sub_4FB1C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_4FC44()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_4FC8C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4FD80;

  return sub_12634(a1, v6);
}

uint64_t sub_4FD80()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_4FEF8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_4FF38()
{
  result = *(v0 + 16);
  sub_4D3A8();
  return result;
}

uint64_t sub_4FFA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4FFF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50040()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_500F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_501F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_5028C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_502D8()
{
  v2 = qword_64CD0;
  if (!qword_64CD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_64CD0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_5033C()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v2 = *(v4 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_503BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_50420()
{
  v2 = qword_64CD8;
  if (!qword_64CD8)
  {
    sub_51200();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_504A0()
{
  v2 = qword_64CE8;
  if (!qword_64CE8)
  {
    sub_6320(&qword_64CE0, &qword_53C10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_505E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50680()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50880()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}