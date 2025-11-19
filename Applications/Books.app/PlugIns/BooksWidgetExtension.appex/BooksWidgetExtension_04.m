uint64_t sub_100069F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = sub_100080A58();
  v131 = *(v3 - 8);
  v132 = v3;
  v4 = *(v131 + 64);
  __chkstk_darwin(v3);
  v129 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100080B68();
  v122 = *(v6 - 8);
  v123 = v6;
  v7 = *(v122 + 64);
  __chkstk_darwin(v6);
  v121 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for LargeEmptyStateView();
  v9 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v11 = (v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100002840(&qword_1000AF5E8, &qword_10008B518);
  v126 = *(v12 - 8);
  v127 = v12;
  v13 = *(v126 + 64);
  __chkstk_darwin(v12);
  v124 = v114 - v14;
  v136 = sub_100002840(&qword_1000AF5F0, &qword_10008B520);
  v15 = *(*(v136 - 8) + 64);
  v16 = __chkstk_darwin(v136);
  v125 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v128 = v114 - v19;
  __chkstk_darwin(v18);
  v130 = v114 - v20;
  v134 = sub_100002840(&qword_1000AF5F8, &qword_10008B528);
  v21 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v135 = v114 - v22;
  v23 = sub_100002840(&qword_1000AF600, &qword_10008B530);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v137 = v114 - v25;
  v26 = sub_100080308();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100002840(&qword_1000AF608, &qword_10008B538);
  v116 = *(v30 - 8);
  v117 = v30;
  v31 = *(v116 + 64);
  __chkstk_darwin(v30);
  v33 = v114 - v32;
  v119 = sub_100002840(&qword_1000AF610, &qword_10008B540);
  v34 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v115 = v114 - v35;
  v118 = sub_100002840(&qword_1000AF618, &qword_10008B548);
  v36 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v38 = (v114 - v37);
  v133 = sub_100002840(&qword_1000AF620, &qword_10008B550);
  v39 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v120 = v114 - v40;
  v41 = sub_100002840(&qword_1000AF628, &qword_10008B558);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = v114 - v43;
  result = type metadata accessor for LargeWidgetView();
  v46 = a1;
  v47 = (a1 + *(result + 20));
  v48 = *(v47 + 6);
  v49 = *(v48 + 16);
  if (v49 >= 3)
  {
    v57 = v47[3];
    v177 = v47[2];
    v178 = v57;
    v179 = v47[4];
    v58 = v47[1];
    v175 = *v47;
    v176 = v58;
    sub_10006BAD4(&v175, &v140);
    v59 = sub_100080CB8();
    v182 = v177;
    v183 = v178;
    v180 = v175;
    v181 = v176;
    v184 = v179;
    v185 = xmmword_10008B320;
    v186 = xmmword_10008B330;
    *v187 = v59;
    *&v187[8] = xmmword_10008B340;
    *&v187[24] = 0x4020000000000000;
    v142 = v177;
    v143 = v178;
    v147 = *v187;
    v148 = *&v187[16];
    v144 = v179;
    v145 = xmmword_10008B320;
    v146 = xmmword_10008B330;
    v140 = v175;
    v141 = v176;
    sub_10006BC08(&v140);
    v161 = v146;
    v162 = v147;
    v163 = v148;
    v164 = v149;
    v157 = v142;
    v158 = v143;
    v159 = v144;
    v160 = v145;
    v155 = v140;
    v156 = v141;
    sub_1000103A4(&v180, &v165);
    sub_10006BC10();
    sub_10006BC64();
    sub_100080AD8();
    v60 = v172;
    *(v44 + 6) = v171;
    *(v44 + 7) = v60;
    *(v44 + 8) = v173;
    v44[144] = v174;
    v61 = v168;
    *(v44 + 2) = v167;
    *(v44 + 3) = v61;
    v62 = v170;
    *(v44 + 4) = v169;
    *(v44 + 5) = v62;
    v63 = v166;
    *v44 = v165;
    *(v44 + 1) = v63;
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000AF640, &qword_10008B560);
    sub_10006BCB8();
    sub_10006BD44();
    sub_100080AD8();
    return sub_10006C0FC(&v180);
  }

  else
  {
    v114[1] = v41;
    v114[2] = v23;
    if (v49 == 2)
    {
      v50 = v47[3];
      v177 = v47[2];
      v178 = v50;
      v179 = v47[4];
      v51 = v47[1];
      v175 = *v47;
      v176 = v51;
      sub_10006BAD4(&v175, &v140);
      v52 = sub_100080CB8();
      v182 = v177;
      v183 = v178;
      v180 = v175;
      v181 = v176;
      v184 = v179;
      v185 = xmmword_10008B350;
      v186 = xmmword_10008B330;
      *v187 = 0x4020000000000000;
      *&v187[8] = v52;
      *&v187[16] = xmmword_100087AD0;
      v142 = v177;
      v143 = v178;
      v147 = *v187;
      v148 = xmmword_100087AD0;
      v144 = v179;
      v145 = xmmword_10008B350;
      v146 = xmmword_10008B330;
      v140 = v175;
      v141 = v176;
      sub_10006C22C(&v140);
      v161 = v146;
      v162 = v147;
      v163 = v148;
      v164 = v149;
      v157 = v142;
      v158 = v143;
      v159 = v144;
      v160 = v145;
      v155 = v140;
      v156 = v141;
      sub_10000BFF8(&v180, &v165);
      sub_10006BC10();
      sub_10006BC64();
      sub_100080AD8();
      v53 = v172;
      *(v44 + 6) = v171;
      *(v44 + 7) = v53;
      *(v44 + 8) = v173;
      v44[144] = v174;
      v54 = v168;
      *(v44 + 2) = v167;
      *(v44 + 3) = v54;
      v55 = v170;
      *(v44 + 4) = v169;
      *(v44 + 5) = v55;
      v56 = v166;
      *v44 = v165;
      *(v44 + 1) = v56;
      swift_storeEnumTagMultiPayload();
      sub_100002840(&qword_1000AF640, &qword_10008B560);
      sub_10006BCB8();
      sub_10006BD44();
      sub_100080AD8();
      return sub_10006C238(&v180);
    }

    else if (v49)
    {
      if (*(v48 + 64) == 0xD000000000000023 && 0x8000000100082090 == *(v48 + 72) || (sub_100081618() & 1) != 0)
      {
        v64 = sub_10005872C();
        v66 = v65;
        v67 = sub_100005CE0(v64);
        *v11 = v64;
        v11[1] = v66;
        v11[2] = v67;
        v11[3] = v68;
        v69 = v11 + *(v138 + 24);
        v70 = sub_100080C48();
        sub_100080C88();
        v72 = v71;
        v73 = sub_100080B18();
        sub_100080E48();
        v74 = sub_100080E58();

        v75 = enum case for ColorScheme.dark(_:);
        v76 = sub_1000807B8();
        (*(*(v76 - 8) + 104))(v69, v75, v76);
        v77 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
        v78 = v77[5];
        v79 = enum case for BlendMode.plusLighter(_:);
        v80 = sub_100080F68();
        (*(*(v80 - 8) + 104))(&v69[v78], v79, v80);
        *&v69[v77[6]] = v70;
        *&v69[v77[7]] = v72;
        *&v69[v77[8]] = v73;
        *&v69[v77[9]] = v74;
        *&v69[v77[10]] = 0x3FE570A3D70A3D71;
        *&v69[v77[11]] = 0x4018000000000000;
        *&v69[v77[12]] = 0x4030000000000000;
        v81 = v121;
        sub_100080B48();
        v82 = sub_10006C0B4(&qword_1000AF680, type metadata accessor for LargeEmptyStateView);
        v83 = v124;
        v84 = v138;
        sub_100080E08();
        (*(v122 + 8))(v81, v123);
        sub_10006C1CC(v11, type metadata accessor for LargeEmptyStateView);
        sub_100002840(&qword_1000ACB30, &qword_100085BE0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_100085A40;
        v86 = sub_10005872C();
        *(v85 + 32) = v86;
        *(v85 + 40) = v87;
        *(v85 + 48) = sub_100005CE0(v86);
        *(v85 + 56) = v88;
        *&v140 = v85;
        sub_100002840(&qword_1000ACE50, &qword_1000881F0);
        sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
        v89 = sub_100081128();
        v91 = v90;

        *&v140 = v89;
        *(&v140 + 1) = v91;
        *&v165 = v84;
        *(&v165 + 1) = v82;
        swift_getOpaqueTypeConformance2();
        sub_1000057D0();
        v92 = v125;
        v93 = v127;
        sub_100080DD8();

        (*(v126 + 8))(v83, v93);
        v94 = v129;
        sub_100080A48();
        v95 = v128;
        sub_100080898();
        (*(v131 + 8))(v94, v132);
        v96 = sub_100005B2C(v92, &qword_1000AF5F0, &qword_10008B520);
        sub_100005CE4(v96);
        v97 = v130;
        sub_1000808A8();

        sub_100005B2C(v95, &qword_1000AF5F0, &qword_10008B520);
        sub_1000055FC(v97, v135, &qword_1000AF5F0, &qword_10008B520);
        swift_storeEnumTagMultiPayload();
        sub_10006BDD0();
        sub_10006BF98();
        v98 = v137;
        sub_100080AD8();
        sub_1000055FC(v98, v44, &qword_1000AF600, &qword_10008B530);
        swift_storeEnumTagMultiPayload();
        sub_100002840(&qword_1000AF640, &qword_10008B560);
        sub_10006BCB8();
        sub_10006BD44();
        sub_100080AD8();
        sub_100005B2C(v98, &qword_1000AF600, &qword_10008B530);
        return sub_100005B2C(v97, &qword_1000AF5F0, &qword_10008B520);
      }

      else
      {
        v99 = *(v48 + 80);
        v142 = *(v48 + 64);
        v143 = v99;
        v144 = *(v48 + 96);
        LOBYTE(v145) = *(v48 + 112);
        v100 = *(v48 + 48);
        v140 = *(v48 + 32);
        v141 = v100;
        sub_10000C328(&v140, &v165);
        LOBYTE(v185) = v145;
        v183 = v143;
        v184 = v144;
        v181 = v141;
        v182 = v142;
        v180 = v140;
        v157 = v142;
        v158 = v143;
        v159 = v144;
        LOBYTE(v160) = v145;
        v155 = v140;
        v156 = v141;
        v165 = v140;
        v166 = v141;
        LOBYTE(v170) = v145;
        v168 = v143;
        v169 = v144;
        v167 = v142;
        if (sub_1000112D4())
        {
          sub_10006B0AC(&v140);
          v101 = v153;
          v38[12] = v152;
          v38[13] = v101;
          v38[14] = v154;
          v102 = v149;
          v38[8] = v148;
          v38[9] = v102;
          v103 = v151;
          v38[10] = v150;
          v38[11] = v103;
          v104 = v145;
          v38[4] = v144;
          v38[5] = v104;
          v105 = v147;
          v38[6] = v146;
          v38[7] = v105;
          v106 = v141;
          *v38 = v140;
          v38[1] = v106;
          v107 = v143;
          v38[2] = v142;
          v38[3] = v107;
          swift_storeEnumTagMultiPayload();
          sub_10006BE5C();
          sub_10006BEB0();
          v108 = v120;
          sub_100080AD8();
        }

        else
        {
          v109 = sub_10006B27C(v29);
          __chkstk_darwin(v109);
          v114[-2] = v46;
          sub_10006BE5C();
          sub_100080CE8();
          *&v140 = sub_100056778(0);
          *(&v140 + 1) = v110;
          sub_100005C98(&qword_1000AF670, &qword_1000AF608, &qword_10008B538);
          sub_1000057D0();
          v111 = v115;
          v112 = v117;
          sub_100080DD8();

          (*(v116 + 8))(v33, v112);
          sub_1000055FC(v111, v38, &qword_1000AF610, &qword_10008B540);
          swift_storeEnumTagMultiPayload();
          sub_10006BEB0();
          v108 = v120;
          sub_100080AD8();
          sub_100005B2C(v111, &qword_1000AF610, &qword_10008B540);
        }

        sub_1000055FC(v108, v135, &qword_1000AF620, &qword_10008B550);
        swift_storeEnumTagMultiPayload();
        sub_10006BDD0();
        sub_10006BF98();
        v113 = v137;
        sub_100080AD8();
        sub_1000055FC(v113, v44, &qword_1000AF600, &qword_10008B530);
        swift_storeEnumTagMultiPayload();
        sub_100002840(&qword_1000AF640, &qword_10008B560);
        sub_10006BCB8();
        sub_10006BD44();
        sub_100080AD8();
        sub_10002B884(&v180);
        sub_100005B2C(v113, &qword_1000AF600, &qword_10008B530);
        return sub_100005B2C(v108, &qword_1000AF620, &qword_10008B550);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_10006B0AC@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LargeWidgetView() + 20));
  v4 = v3[4];
  v37 = v3[3];
  v38 = v4;
  v5 = v3[2];
  v35 = v3[1];
  v36 = v5;
  v34 = *v3;
  if (*(v37 + 16))
  {
    v6 = *(v37 + 80);
    v29 = *(v37 + 64);
    v7 = *(v37 + 96);
    v30 = v6;
    v31 = v7;
    v32 = *(v37 + 112);
    v8 = *(v37 + 48);
    v27 = *(v37 + 32);
    v28 = v8;
    sub_10000C328(&v27, v26);
    v23 = *(&v27 + 1);
    v24 = v27;
    v9 = v28;
    v10 = BYTE8(v28);
    v33[0] = *(&v28 + 9);
    *(v33 + 3) = HIDWORD(v28);
    v25 = *(&v29 + 1);
    v11 = v29;
    v12 = *(&v30 + 1);
    v13 = v30;
    v14 = *(&v31 + 1);
    v15 = v31;
    v16 = v32;
  }

  else
  {
    v25 = 0x8000000100082090;
    v13 = BDSCloudAssetTypeStoreEbook;
    v17 = BDSLibraryContentAssetTypeUnknown;
    v10 = 1;
    LOBYTE(v27) = 1;
    v18 = BDSCloudAssetTypeStoreEbook;
    v12 = v17;
    v23 = 0;
    v24 = 0;
    v9 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v11 = 0xD000000000000023;
  }

  sub_10006BAD4(&v34, &v27);
  v19 = sub_100080CC8();
  v20 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v20;
  *(a1 + 64) = v38;
  v21 = v35;
  *a1 = v34;
  *(a1 + 16) = v21;
  *(a1 + 80) = v24;
  *(a1 + 88) = v23;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 105) = v33[0];
  *(a1 + 108) = *(v33 + 3);
  *(a1 + 112) = v11;
  *(a1 + 120) = v25;
  *(a1 + 128) = v13;
  *(a1 + 136) = v12;
  *(a1 + 144) = v15;
  *(a1 + 152) = v14;
  *(a1 + 160) = v16;
  *(a1 + 168) = xmmword_10008B360;
  *(a1 + 184) = 0x4034000000000000;
  *(a1 + 192) = v19;
  *(a1 + 200) = xmmword_10008B370;
  result = 4.0;
  *(a1 + 216) = xmmword_10008B380;
  *(a1 + 232) = 0x4044000000000000;
  return result;
}

uint64_t sub_10006B27C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LargeWidgetView() + 20));
  v4 = v3[3];
  v20 = v3[2];
  v21 = v4;
  v22 = v3[4];
  v5 = v3[1];
  v18 = *v3;
  v19 = v5;
  if (*(v21 + 16))
  {
    v6 = *(v21 + 80);
    v14 = *(v21 + 64);
    v15 = v6;
    v16 = *(v21 + 96);
    v17 = *(v21 + 112);
    v7 = *(v21 + 48);
    v12 = *(v21 + 32);
    v13 = v7;
    sub_10000C328(&v12, &v23);
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v23 = v12;
    v24 = v13;
  }

  else
  {
    v8 = BDSLibraryContentAssetTypeUnknown;
    LOBYTE(v12) = 1;
    *&v24 = 0;
    v23 = 0uLL;
    BYTE8(v24) = 1;
    *&v25 = 0xD000000000000023;
    *(&v25 + 1) = 0x8000000100082090;
    *&v26 = BDSCloudAssetTypeStoreEbook;
    *(&v26 + 1) = BDSLibraryContentAssetTypeUnknown;
    v27 = 0uLL;
    v28 = 0;
    v9 = BDSCloudAssetTypeStoreEbook;
    v10 = v8;
  }

  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v12 = v23;
  v13 = v24;
  sub_100025138(&v12, a1);
  return sub_10002B884(&v23);
}

uint64_t sub_10006B3C4(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACA90, &qword_100085B50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = type metadata accessor for BackgroundView();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (v24 - v12);
  __chkstk_darwin(v11);
  v15 = (v24 - v14);
  v16 = (a1 + *(type metadata accessor for LargeWidgetView() + 20));
  v17 = v16[3];
  v24[2] = v16[2];
  v24[3] = v17;
  v25 = v16[4];
  v18 = v16[1];
  v24[0] = *v16;
  v24[1] = v18;
  if (sub_100057D5C())
  {
    v19 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      v20 = v25;
      if (qword_1000AC648 != -1)
      {
        swift_once();
      }

      v21 = *sub_100005554(qword_1000B7F10, qword_1000B7F28);
      v22 = sub_10003ABAC(v20, v19, 1);
    }

    else
    {
      v22 = 0;
    }

    *v13 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v13 + *(v6 + 20)) = v22;
    sub_10006BB30(v13, v15, type metadata accessor for BackgroundView);
  }

  else
  {
    *v10 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v10 + *(v6 + 20)) = 0;
    v15 = v10;
  }

  sub_10006B9B4(v15, v5, type metadata accessor for BackgroundView);
  swift_storeEnumTagMultiPayload();
  sub_10006C0B4(&qword_1000ACA70, type metadata accessor for BackgroundView);
  sub_100080AD8();
  return sub_10006C1CC(v15, type metadata accessor for BackgroundView);
}

uint64_t sub_10006B6D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10006B9B4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10006BB30(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LargeWidgetView);
  *a2 = sub_10006B91C;
  a2[1] = v7;
  return result;
}

uint64_t sub_10006B7E8()
{
  v1 = type metadata accessor for LargeWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000807B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  v9 = v8[4];

  v10 = v8[6];

  v11 = v8[9];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006B91C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LargeWidgetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100068DDC(v4, a1);
}

uint64_t sub_10006B9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10006BA1C()
{
  result = qword_1000AF5D0;
  if (!qword_1000AF5D0)
  {
    sub_100004FC8(&qword_1000AF5B8, &qword_10008B4F8);
    sub_100005C98(&qword_1000AF5D8, &qword_1000AF5B0, &qword_10008B4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF5D0);
  }

  return result;
}

uint64_t sub_10006BB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006BB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AF5A8, &qword_10008B4E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006BC10()
{
  result = qword_1000AF630;
  if (!qword_1000AF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF630);
  }

  return result;
}

unint64_t sub_10006BC64()
{
  result = qword_1000AF638;
  if (!qword_1000AF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF638);
  }

  return result;
}

unint64_t sub_10006BCB8()
{
  result = qword_1000AF648;
  if (!qword_1000AF648)
  {
    sub_100004FC8(&qword_1000AF640, &qword_10008B560);
    sub_10006BC10();
    sub_10006BC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF648);
  }

  return result;
}

unint64_t sub_10006BD44()
{
  result = qword_1000AF650;
  if (!qword_1000AF650)
  {
    sub_100004FC8(&qword_1000AF600, &qword_10008B530);
    sub_10006BDD0();
    sub_10006BF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF650);
  }

  return result;
}

unint64_t sub_10006BDD0()
{
  result = qword_1000AF658;
  if (!qword_1000AF658)
  {
    sub_100004FC8(&qword_1000AF620, &qword_10008B550);
    sub_10006BE5C();
    sub_10006BEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF658);
  }

  return result;
}

unint64_t sub_10006BE5C()
{
  result = qword_1000AF660;
  if (!qword_1000AF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF660);
  }

  return result;
}

unint64_t sub_10006BEB0()
{
  result = qword_1000AF668;
  if (!qword_1000AF668)
  {
    sub_100004FC8(&qword_1000AF610, &qword_10008B540);
    sub_100005C98(&qword_1000AF670, &qword_1000AF608, &qword_10008B538);
    sub_10006C0B4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF668);
  }

  return result;
}

unint64_t sub_10006BF98()
{
  result = qword_1000AF678;
  if (!qword_1000AF678)
  {
    sub_100004FC8(&qword_1000AF5F0, &qword_10008B520);
    type metadata accessor for LargeEmptyStateView();
    sub_10006C0B4(&qword_1000AF680, type metadata accessor for LargeEmptyStateView);
    swift_getOpaqueTypeConformance2();
    sub_10006C0B4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF678);
  }

  return result;
}

uint64_t sub_10006C0B4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10006C150@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_10006B0AC(v11);
  v4 = v11[13];
  *(a1 + 192) = v11[12];
  *(a1 + 208) = v4;
  *(a1 + 224) = v11[14];
  v5 = v11[9];
  *(a1 + 128) = v11[8];
  *(a1 + 144) = v5;
  v6 = v11[11];
  *(a1 + 160) = v11[10];
  *(a1 + 176) = v6;
  v7 = v11[5];
  *(a1 + 64) = v11[4];
  *(a1 + 80) = v7;
  v8 = v11[7];
  *(a1 + 96) = v11[6];
  *(a1 + 112) = v8;
  v9 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v9;
  result = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006C1CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000807B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100080F68();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10006C404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000807B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100080F68();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10006C52C()
{
  result = sub_1000807B8();
  if (v1 <= 0x3F)
  {
    result = sub_100080F68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006C5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10006C744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10006C898()
{
  sub_100022118();
  if (v0 <= 0x3F)
  {
    sub_10006C93C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EmptyStateView.ViewConfiguration(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006C93C()
{
  if (!qword_1000AF7B0)
  {
    v0 = sub_100081518();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AF7B0);
    }
  }
}

uint64_t sub_10006C98C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10006C9D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006CA40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000055FC(v2, &v17 - v11, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10006CC40@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v46 = a1;
  v41 = type metadata accessor for EmptyStateView(0);
  v43 = *(v41 - 8);
  v2 = *(v43 + 64);
  __chkstk_darwin(v41);
  v44 = v3;
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100081008();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = sub_100080F68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v16;
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  sub_10006CA40(v11);
  sub_100080FF8();
  v19 = sub_100080FC8();
  v20 = *(v5 + 8);
  v20(v9, v4);
  v20(v11, v4);
  v42 = v12;
  v38 = v18;
  if (v19)
  {
    v21 = v1 + *(v41 + 28);
    v22 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    (*(v13 + 16))(v18, v21 + *(v22 + 20), v12);
  }

  else
  {
    (*(v13 + 104))(v18, enum case for BlendMode.normal(_:), v12);
  }

  sub_10006CA40(v11);
  sub_100080FF8();
  v23 = sub_100080FC8();
  v20(v9, v4);
  v20(v11, v4);
  if (v23)
  {
    v24 = v1 + *(v41 + 28);
    v25 = *(v24 + *(type metadata accessor for EmptyStateView.ViewConfiguration(0) + 32));
  }

  else
  {
    v25 = sub_100080B08();
  }

  v26 = v42;
  v27 = v38;
  v28 = v45;
  sub_10006DBC0(v1, v45);
  v29 = *(v13 + 32);
  v30 = v39;
  v29(v39, v27, v26);
  v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v32 = (v44 + v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (*(v13 + 80) + v32 + 4) & ~*(v13 + 80);
  v34 = swift_allocObject();
  sub_10006DE6C(v28, v34 + v31);
  *(v34 + v32) = v25;
  result = (v29)(v34 + v33, v30, v26);
  v36 = v46;
  *v46 = sub_10006DED0;
  v36[1] = v34;
  return result;
}

uint64_t sub_10006D030@<X0>(char *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v57 = a3;
  v56 = a2;
  v51 = a1;
  v6 = sub_100002840(&qword_1000AF7E8, &qword_10008B638);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = sub_100002840(&qword_1000AF7F0, &qword_10008B640);
  v13 = *(v12 - 8);
  v52 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  *a4 = sub_100080A28();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v53 = a4 + *(sub_100002840(&qword_1000AF7F8, &qword_10008B648) + 44);
  sub_1000807F8();
  v20 = v19;
  v21 = &a1[*(type metadata accessor for EmptyStateView(0) + 28)];
  v22 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  v23 = v20 * *&v21[v22[10]];
  sub_1000807F8();
  sub_100080F48();
  sub_1000807E8();
  v46 = v60;
  LOBYTE(v23) = v61;
  v48 = v62;
  v24 = v63;
  v49 = v65;
  v50 = v64;
  v25 = *&v21[v22[9]];
  KeyPath = swift_getKeyPath();
  v59 = LOBYTE(v23);
  v58 = v24;
  v26 = *&v21[v22[11]];
  v27 = &v18[*(sub_100002840(&qword_1000AF800, &unk_10008B680) + 36)];
  v28 = *(sub_1000808E8() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_100080A38();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  *v27 = v26;
  *(v27 + 1) = v26;
  *&v27[*(sub_100002840(&qword_1000AD7F0, &qword_10008A850) + 36)] = 256;
  *v18 = v46;
  v18[8] = LOBYTE(v23);
  *(v18 + 9) = v67[0];
  *(v18 + 3) = *(v67 + 3);
  *(v18 + 2) = v48;
  v18[24] = v24;
  *(v18 + 25) = *v66;
  *(v18 + 7) = *&v66[3];
  v31 = v49;
  *(v18 + 4) = v50;
  *(v18 + 5) = v31;
  *(v18 + 6) = KeyPath;
  *(v18 + 7) = v25;

  LOBYTE(v25) = sub_100080C38();
  v32 = *&v21[v22[12]];
  sub_100080798();
  v33 = &v18[*(v52 + 44)];
  *v33 = v25;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  *v11 = sub_100080A78();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v38 = sub_100002840(&qword_1000AF808, &qword_10008B690);
  sub_10006D4A8(v51, v56, v57, &v11[*(v38 + 44)]);
  v39 = v54;
  sub_1000055FC(v18, v54, &qword_1000AF7F0, &qword_10008B640);
  v40 = v55;
  sub_1000055FC(v11, v55, &qword_1000AF7E8, &qword_10008B638);
  v41 = v53;
  sub_1000055FC(v39, v53, &qword_1000AF7F0, &qword_10008B640);
  v42 = sub_100002840(&qword_1000AF810, &qword_10008B698);
  sub_1000055FC(v40, v41 + *(v42 + 48), &qword_1000AF7E8, &qword_10008B638);
  v43 = v41 + *(v42 + 64);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_100005B2C(v11, &qword_1000AF7E8, &qword_10008B638);
  sub_100005B2C(v18, &qword_1000AF7F0, &qword_10008B640);
  sub_100005B2C(v40, &qword_1000AF7E8, &qword_10008B638);
  return sub_100005B2C(v39, &qword_1000AF7F0, &qword_10008B640);
}

uint64_t sub_10006D4A8@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a3;
  v118 = a2;
  v116 = a4;
  v5 = sub_100002840(&qword_1000AF818, &qword_10008B6A0);
  v6 = *(v5 - 8);
  v112 = v5;
  v113 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v107 = &v103 - v8;
  v9 = sub_100002840(&qword_1000AF820, &qword_10008B6A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v103 - v13;
  v14 = sub_100002840(&qword_1000AEBF0, &unk_10008B6B0);
  v15 = *(v14 - 8);
  v111 = (v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v114 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v103 - v19;
  v21 = type metadata accessor for EmptyStateView(0);
  v22 = *(v21 + 20);
  v23 = v21;
  v108 = v21;
  v109 = a1;
  v24 = &a1[v22];
  v25 = *(v24 + 1);
  v120 = *v24;
  v121 = v25;
  v26 = sub_1000057D0();

  v106 = v26;
  v27 = sub_100080D28();
  v29 = v28;
  v31 = v30;
  v32 = &a1[*(v23 + 28)];
  v33 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  v34 = *(v33 + 24);
  v35 = *(v33 + 28);
  v117 = v32;
  v36 = *&v32[v35];
  v105 = *&v32[v34];
  sub_100080CA8();
  v37 = sub_100080D18();
  v39 = v38;
  LOBYTE(v26) = v40;

  sub_10000EF24(v27, v29, v31 & 1);

  LODWORD(v120) = v118;
  v41 = sub_100080D08();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10000EF24(v37, v39, v26 & 1);

  v48 = sub_100002840(&qword_1000AEC00, &qword_100089280);
  v49 = *(v48 + 36);
  v50 = sub_100080F68();
  v51 = *(v50 - 8);
  v104 = *(v51 + 16);
  v103 = v51 + 16;
  v104(&v20[v49], v119, v50);
  *v20 = v41;
  *(v20 + 1) = v43;
  v20[16] = v45 & 1;
  *(v20 + 3) = v47;
  KeyPath = swift_getKeyPath();
  v53 = *(v111 + 11);
  v111 = v20;
  v54 = &v20[v53];
  v55 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  v56 = *(v55 + 28);
  v57 = sub_1000807B8();
  v58 = *(v57 - 8);
  v59 = *(v58 + 16);
  v60 = v58 + 16;
  v59(v54 + v56, v117, v57);
  *v54 = KeyPath;
  v61 = &v109[*(v108 + 24)];
  v62 = *(v61 + 1);
  if (v62)
  {
    v63 = *(v61 + 2);
    v120 = *v61;
    v121 = v62;

    v64 = sub_100080D28();
    v106 = v55;
    v66 = v65;
    v109 = v59;
    v68 = v67;
    v108 = v60;
    v69 = sub_100080D18();
    v105 = v48;
    v71 = v70;
    v73 = v72;
    sub_10000EF24(v64, v66, v68 & 1);

    LODWORD(v120) = v118;
    v74 = sub_100080D08();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_10000EF24(v69, v71, v73 & 1);

    v81 = v107;
    v104(&v107[*(v105 + 36)], v119, v50);
    *v81 = v74;
    *(v81 + 8) = v76;
    *(v81 + 16) = v78 & 1;
    *(v81 + 24) = v80;
    LOBYTE(v74) = sub_100080BF8();
    sub_100080798();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v81 + *(sub_100002840(&qword_1000AF830, &qword_10008B700) + 36);
    *v90 = v74;
    *(v90 + 8) = v83;
    *(v90 + 16) = v85;
    *(v90 + 24) = v87;
    *(v90 + 32) = v89;
    *(v90 + 40) = 0;
    v91 = swift_getKeyPath();
    v92 = v112;
    v93 = (v81 + *(v112 + 36));
    (v109)(v93 + *(v106 + 28), v117, v57);
    *v93 = v91;
    v94 = v110;
    sub_10006DFD4(v81, v110);
    v95 = 0;
    v96 = v92;
  }

  else
  {
    v95 = 1;
    v96 = v112;
    v94 = v110;
  }

  (*(v113 + 56))(v94, v95, 1, v96);
  v97 = v111;
  v98 = v114;
  sub_1000055FC(v111, v114, &qword_1000AEBF0, &unk_10008B6B0);
  v99 = v115;
  sub_1000055FC(v94, v115, &qword_1000AF820, &qword_10008B6A8);
  v100 = v116;
  sub_1000055FC(v98, v116, &qword_1000AEBF0, &unk_10008B6B0);
  v101 = sub_100002840(&qword_1000AF828, &qword_10008B6F8);
  sub_1000055FC(v99, v100 + *(v101 + 48), &qword_1000AF820, &qword_10008B6A8);
  sub_100005B2C(v94, &qword_1000AF820, &qword_10008B6A8);
  sub_100005B2C(v97, &qword_1000AEBF0, &unk_10008B6B0);
  sub_100005B2C(v99, &qword_1000AF820, &qword_10008B6A8);
  return sub_100005B2C(v98, &qword_1000AEBF0, &unk_10008B6B0);
}

uint64_t sub_10006DBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DC24()
{
  v1 = type metadata accessor for EmptyStateView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_100080F68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100081008();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = (((v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7;
  v13 = *(v9 + v1[5] + 8);

  v14 = *(v9 + v1[6] + 8);

  v15 = v9 + v1[7];
  v16 = sub_1000807B8();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  v18 = *(v6 + 8);
  v18(&v15[v17[5]], v5);
  v19 = *&v15[v17[6]];

  v20 = *&v15[v17[9]];

  v18((v0 + v12), v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_10006DE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmptyStateView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(sub_100080F68() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 4) & ~*(v6 + 80));

  return sub_10006D030((v1 + v4), v7, v8, a1);
}

uint64_t sub_10006DFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AF818, &qword_10008B6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006E048()
{
  result = qword_1000AF838;
  if (!qword_1000AF838)
  {
    sub_100004FC8(&qword_1000AF840, &qword_10008B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF838);
  }

  return result;
}

uint64_t sub_10006E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1000816B8();
  sub_100081298();
  v7 = sub_1000816F8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100081618() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006E1A8()
{
  result = sub_10006E1C8();
  qword_1000AF848 = result;
  return result;
}

uint64_t sub_10006E1C8()
{
  sub_100002840(&qword_1000AF858, &qword_10008B740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085C00;
  result = kCTFontUIFontDesignTrait;
  if (!kCTFontUIFontDesignTrait)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = sub_100081218();
  *(inited + 40) = v2;
  result = kCTFontUIFontDesignSerif;
  if (!kCTFontUIFontDesignSerif)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(inited + 48) = sub_100081218();
  *(inited + 56) = v3;
  v4 = sub_100068328(inited);
  swift_setDeallocating();
  sub_100005B2C(inited + 32, &qword_1000AF860, &qword_10008B748);
  sub_100002840(&qword_1000AF868, &qword_10008B750);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_100085C00;
  *(v5 + 32) = sub_100081218();
  *(v5 + 40) = v6;
  *(v5 + 48) = v4;
  sub_10006843C(v5);
  swift_setDeallocating();
  sub_100005B2C(v5 + 32, &qword_1000AF870, &qword_10008B758);
  sub_100002840(&qword_1000AF878, &qword_10008B760);
  isa = sub_100081108().super.isa;

  v8 = CTFontDescriptorCreateWithAttributes(isa);

  v9 = CTFontCreateWithFontDescriptor(v8, 14.0, 0);
  v10 = CTFontCopySupportedLanguages(v9);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_100081368();
  }

  v11 = sub_10006EECC(_swiftEmptyArrayStorage);

  return v11;
}

uint64_t static Font.Design.serifIfSupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (_s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0())
  {
    v2 = sub_100080C58();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
  }

  else
  {
    v7 = enum case for Font.Design.serif (_:);
    v8 = sub_100080C58();
    v10 = *(v8 - 8);
    (*(v10 + 104))(a1, v7, v8);
    v3 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v4 = v8;
  }

  return v3(v5, v6, 1, v4);
}

uint64_t static Font.Design.defaultIfUnsupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (_s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0())
  {
    v2 = enum case for Font.Design.default(_:);
    v3 = sub_100080C58();
    v10 = *(v3 - 8);
    (*(v10 + 104))(a1, v2, v3);
    v4 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v7 = v3;
  }

  else
  {
    v8 = sub_100080C58();
    v4 = *(*(v8 - 8) + 56);
    v7 = v8;
    v5 = a1;
    v6 = 1;
  }

  return v4(v5, v6, 1, v7);
}

uint64_t sub_10006E608(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000816B8();
  sub_100081298();
  v9 = sub_1000816F8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100081618() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10006E9B8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006E758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002840(&qword_1000AF880, &qword_10008B768);
  result = sub_100081568();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1000816B8();
      sub_100081298();
      result = sub_1000816F8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10006E9B8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10006E758(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006EB38();
      goto LABEL_16;
    }

    sub_10006EC94(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000816B8();
  sub_100081298();
  result = sub_1000816F8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100081618();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100081648();
  __break(1u);
  return result;
}

void *sub_10006EB38()
{
  v1 = v0;
  sub_100002840(&qword_1000AF880, &qword_10008B768);
  v2 = *v0;
  v3 = sub_100081558();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10006EC94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002840(&qword_1000AF880, &qword_10008B768);
  result = sub_100081568();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1000816B8();

      sub_100081298();
      result = sub_1000816F8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10006EECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100081408();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10006E608(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0()
{
  v0 = sub_100002840(&qword_1000AF850, &qword_10008B738);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v30 - v2;
  v4 = sub_100080468();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100080408();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100080428();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_1000811D8();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v20 = [objc_opt_self() mainBundle];
    v21 = [v20 preferredLocalizations];

    v22 = sub_100081378();
    if (v22[2])
    {
      v23 = v22[4];
      v24 = v22[5];

      sub_1000803F8();
      sub_1000803E8();
      (*(v31 + 8))(v11, v8);
      sub_100080458();
      (*(v32 + 8))(v7, v4);
      v25 = v33;
      if ((*(v33 + 48))(v3, 1, v12) == 1)
      {
        sub_100005B2C(v3, &qword_1000AF850, &qword_10008B738);
        v19 = 1;
      }

      else
      {
        (*(v25 + 32))(v15, v3, v12);
        if (qword_1000AC748 != -1)
        {
          swift_once();
        }

        v26 = qword_1000AF848;
        v27 = sub_100080418();
        LOBYTE(v26) = sub_10006E0B0(v27, v28, v26);

        (*(v25 + 8))(v15, v12);
        v19 = v26 ^ 1;
      }
    }

    else
    {

      v19 = 1;
    }
  }

  return v19 & 1;
}

double sub_10006F3CC@<D0>(uint64_t a1@<X8>)
{
  sub_100002840(&qword_1000AE6E0, &qword_100088640);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085A40;
  if (qword_1000AC750 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = qword_1000AF888;
  v3 = qword_1000AC758;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v2 + 40) = qword_1000AF890;

  sub_100080F78();
  sub_100080F88();
  sub_100080F38();
  sub_100080818();
  v4 = *(sub_100002840(&qword_1000AF898, &unk_10008B7E0) + 36);
  v5 = enum case for BlendMode.multiply(_:);
  v6 = sub_100080F68();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_10006F58C(uint64_t a1, uint64_t *a2)
{
  sub_100080E28();
  v3 = sub_100080E58();

  *a2 = v3;
  return result;
}

unint64_t sub_10006F5E8()
{
  result = qword_1000AF8A0;
  if (!qword_1000AF8A0)
  {
    sub_100004FC8(&qword_1000AF898, &unk_10008B7E0);
    sub_100058F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF8A0);
  }

  return result;
}

uint64_t sub_10006F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080F68();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CircularProgressView.Content(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006F7C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100080F68();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CircularProgressView.Content(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10006F904()
{
  result = sub_100080F68();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CircularProgressView.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006F9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006FA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006FAF4()
{
  result = type metadata accessor for ReadingProgressIconView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10006FB64()
{
  result = qword_1000AF9E0;
  if (!qword_1000AF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF9E0);
  }

  return result;
}

uint64_t sub_10006FBB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_100002840(&qword_1000AF9E8, &qword_10008B900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v55 = sub_100002840(&qword_1000AF9F0, &qword_10008B908);
  v7 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v9 = &v50 - v8;
  v56 = sub_100002840(&qword_1000AF9F8, &qword_10008B910);
  v51 = *(v56 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v56);
  v12 = &v50 - v11;
  v52 = sub_100002840(&qword_1000AFA00, &qword_10008B918);
  v13 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v54 = &v50 - v14;
  v15 = type metadata accessor for CircularProgressView(0);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_100002840(&qword_1000AFA08, &qword_10008B920);
  v19 = *(v53 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v53);
  v22 = &v50 - v21;
  v23 = *v2;
  v24 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v25 = v24;
  if (v23 >= 1.0)
  {
    v37 = *(v2 + *(v24 + 44));
    *v6 = sub_100080A28();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v38 = &v6[*(sub_100002840(&qword_1000AFA10, &qword_10008B928) + 44)];
    sub_1000702B4(v37);
    sub_100005C98(&qword_1000AFA18, &qword_1000AF9E8, &qword_10008B900);
    sub_100080DE8();
    sub_100005B2C(v6, &qword_1000AF9E8, &qword_10008B900);
    v39 = *(v2 + 8);
    KeyPath = swift_getKeyPath();
    v41 = &v9[*(sub_100002840(&qword_1000AFA20, &qword_10008B960) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;

    v42 = sub_100080CB8();
    v43 = swift_getKeyPath();
    v44 = v55;
    v45 = &v9[*(v55 + 36)];
    *v45 = v43;
    v45[1] = v42;
    v46 = sub_100070694();
    sub_100080D48();
    sub_100005B2C(v9, &qword_1000AF9F0, &qword_10008B908);
    v47 = v51;
    v48 = v56;
    (*(v51 + 16))(v54, v12, v56);
    swift_storeEnumTagMultiPayload();
    v49 = sub_1000708EC(&qword_1000AE658, type metadata accessor for CircularProgressView);
    v58 = v15;
    v59 = v49;
    swift_getOpaqueTypeConformance2();
    v58 = v44;
    v59 = v46;
    swift_getOpaqueTypeConformance2();
    sub_100080AD8();
    return (*(v47 + 8))(v12, v48);
  }

  else
  {
    sub_10002E35C(v2 + *(v24 + 40), v18 + v15[7]);
    v27 = *(v2 + 8);
    v26 = *(v2 + 16);
    v28 = v25[7];
    v29 = v15[11];
    v30 = sub_100080F68();
    (*(*(v30 - 8) + 16))(v18 + v29, v2 + v28, v30);
    v31 = *(v2 + v25[8]);
    v32 = *(v2 + v25[9]);
    *v18 = swift_getKeyPath();
    sub_100002840(&qword_1000AE400, &qword_100088410);
    swift_storeEnumTagMultiPayload();
    *(v18 + v15[5]) = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v18 + v15[6]) = v23;
    *(v18 + v15[8]) = 0;
    *(v18 + v15[9]) = v27;
    *(v18 + v15[10]) = v26;
    *(v18 + v15[12]) = v31;
    *(v18 + v15[13]) = v32;
    *(v18 + v15[14]) = v32;
    v33 = sub_1000708EC(&qword_1000AE658, type metadata accessor for CircularProgressView);

    sub_100080D48();
    sub_1000709A0(v18);
    v34 = v53;
    (*(v19 + 16))(v54, v22, v53);
    swift_storeEnumTagMultiPayload();
    v58 = v15;
    v59 = v33;
    swift_getOpaqueTypeConformance2();
    v35 = sub_100070694();
    v58 = v55;
    v59 = v35;
    swift_getOpaqueTypeConformance2();
    sub_100080AD8();
    return (*(v19 + 8))(v22, v34);
  }
}

uint64_t sub_1000702B4(char a1)
{
  v2 = sub_100002840(&qword_1000AFA48, &qword_10008BA10);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = sub_100002840(&qword_1000AFA50, &qword_10008BA18);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v24 - v8;
  v10 = sub_100002840(&qword_1000AFA58, &qword_10008BA20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v24 - v12);
  if (a1)
  {
    v24[1] = sub_100080E88();
    sub_100080C78();
    sub_100080D88();

    v14 = &v5[*(v2 + 36)];
    v15 = *(sub_100002840(&qword_1000AFA60, &qword_10008BA28) + 28);
    v16 = enum case for Image.Scale.small(_:);
    v17 = sub_100080ED8();
    (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
    *v14 = swift_getKeyPath();
    sub_100070B30(v5, v9);
    swift_storeEnumTagMultiPayload();
    sub_100070BA0();
    sub_100070C58();
    sub_100080AD8();
    return sub_100005B2C(v5, &qword_1000AFA48, &qword_10008BA10);
  }

  else
  {
    v19 = sub_100080E88();
    v20 = (v13 + *(v10 + 36));
    v21 = *(sub_100002840(&qword_1000AFA60, &qword_10008BA28) + 28);
    v22 = enum case for Image.Scale.medium(_:);
    v23 = sub_100080ED8();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    *v13 = v19;
    sub_100070D40(v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_100070BA0();
    sub_100070C58();
    sub_100080AD8();
    return sub_100070DB0(v13);
  }
}

unint64_t sub_100070694()
{
  result = qword_1000AFA28;
  if (!qword_1000AFA28)
  {
    sub_100004FC8(&qword_1000AF9F0, &qword_10008B908);
    sub_10007074C();
    sub_100005C98(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA28);
  }

  return result;
}

unint64_t sub_10007074C()
{
  result = qword_1000AFA30;
  if (!qword_1000AFA30)
  {
    sub_100004FC8(&qword_1000AFA20, &qword_10008B960);
    sub_100070804();
    sub_100005C98(&qword_1000AD940, &qword_1000AD948, &unk_100088080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA30);
  }

  return result;
}

unint64_t sub_100070804()
{
  result = qword_1000AFA38;
  if (!qword_1000AFA38)
  {
    sub_100004FC8(&qword_1000AFA40, &qword_10008B998);
    sub_100005C98(&qword_1000AFA18, &qword_1000AF9E8, &qword_10008B900);
    sub_1000708EC(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA38);
  }

  return result;
}

uint64_t sub_1000708EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000709A0(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100070A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100070B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AFA48, &qword_10008BA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100070BA0()
{
  result = qword_1000AFA68;
  if (!qword_1000AFA68)
  {
    sub_100004FC8(&qword_1000AFA58, &qword_10008BA20);
    sub_100005C98(&qword_1000AFA70, &qword_1000AFA60, &qword_10008BA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA68);
  }

  return result;
}

unint64_t sub_100070C58()
{
  result = qword_1000AFA78;
  if (!qword_1000AFA78)
  {
    sub_100004FC8(&qword_1000AFA48, &qword_10008BA10);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000AFA70, &qword_1000AFA60, &qword_10008BA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA78);
  }

  return result;
}

uint64_t sub_100070D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AFA58, &qword_10008BA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100070DB0(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AFA58, &qword_10008BA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100070E1C()
{
  result = qword_1000AFA80;
  if (!qword_1000AFA80)
  {
    sub_100004FC8(&qword_1000AFA88, &unk_10008BA60);
    type metadata accessor for CircularProgressView(255);
    sub_1000708EC(&qword_1000AE658, type metadata accessor for CircularProgressView);
    swift_getOpaqueTypeConformance2();
    sub_100004FC8(&qword_1000AF9F0, &qword_10008B908);
    sub_100070694();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA80);
  }

  return result;
}

uint64_t sub_100070F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100071030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LabelView()
{
  result = qword_1000AFB10;
  if (!qword_1000AFB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100071140()
{
  sub_100022118();
  if (v0 <= 0x3F)
  {
    sub_100071204(319, &qword_1000AFB20);
    if (v1 <= 0x3F)
    {
      sub_100071204(319, &unk_1000AFB28);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100071204(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100081518();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LabelView.PlaceholderStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LabelView.PlaceholderStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000712C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000055FC(v2, &v17 - v11, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000714C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002840(&qword_1000AFB60, &unk_10008BB08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v71 - v6);
  v77 = sub_100081008();
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v77);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v78 = sub_100002840(&qword_1000AEC00, &qword_100089280);
  v15 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v17 = &v71 - v16;
  v79 = sub_100002840(&qword_1000AFB68, &qword_10008BB18);
  v18 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v81 = &v71 - v19;
  v85 = sub_100002840(&qword_1000AFB70, &qword_10008BB20);
  v20 = *(*(v85 - 8) + 64);
  v21 = __chkstk_darwin(v85);
  v80 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v82 = &v71 - v23;
  v24 = type metadata accessor for LabelView();
  v25 = (v1 + *(v24 + 20));
  v26 = v25[1];
  if (v26)
  {
    v75 = v24;
    v76 = v7;
    v83 = v4;
    v84 = a1;
    *&v89 = *v25;
    *(&v89 + 1) = v26;
    sub_1000057D0();

    v27 = sub_100080D28();
    v72 = v28;
    v73 = v27;
    v30 = v29;
    v74 = v31;
    sub_1000712C8(v14);
    sub_100080FF8();
    v32 = sub_100080FC8();
    v33 = *(v8 + 8);
    v34 = v12;
    v35 = v77;
    v33(v34, v77);
    v33(v14, v35);
    v71 = v2;
    if (v32)
    {
      if (qword_1000AC760 != -1)
      {
        swift_once();
      }

      v36 = dword_1000AFA90;
    }

    else
    {
      v36 = sub_100080B08();
    }

    LODWORD(v89) = v36;
    v42 = v72;
    v41 = v73;
    v43 = sub_100080D08();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_10000EF24(v41, v42, v30 & 1);

    if (qword_1000AC768 != -1)
    {
      swift_once();
    }

    v50 = sub_100080F68();
    v51 = sub_10000A480(v50, qword_1000AFA98);
    (*(*(v50 - 8) + 16))(&v17[*(v78 + 36)], v51, v50);
    *v17 = v43;
    *(v17 + 1) = v45;
    v17[16] = v47 & 1;
    *(v17 + 3) = v49;
    v52 = *(v71 + *(v75 + 24));
    if (qword_1000AC770 != -1)
    {
      v70 = *(v71 + *(v75 + 24));
      swift_once();
    }

    v53 = sub_100080CA8();
    KeyPath = swift_getKeyPath();
    v55 = v81;
    sub_10000C1E0(v17, v81, &qword_1000AEC00, &qword_100089280);
    v56 = v80;
    v57 = (v55 + *(v79 + 36));
    *v57 = KeyPath;
    v57[1] = v53;
    v58 = (v56 + *(v85 + 36));
    v59 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
    v60 = enum case for ColorScheme.dark(_:);
    v61 = sub_1000807B8();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    sub_10000C1E0(v55, v56, &qword_1000AFB68, &qword_10008BB18);
    v62 = v82;
    sub_10000C1E0(v56, v82, &qword_1000AFB70, &qword_10008BB20);
    sub_1000055FC(v62, v76, &qword_1000AFB70, &qword_10008BB20);
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000AFB90, &qword_10008BB40);
    sub_100071F7C();
    sub_100072118();
    v63 = v84;
    sub_100080AD8();
    sub_1000721FC(v62);
    goto LABEL_20;
  }

  v37 = (v2 + *(v24 + 28));
  if ((*(v37 + 17) & 1) == 0)
  {
    v83 = v4;
    v84 = a1;
    v64 = *v37;
    if (v37[4])
    {
      sub_100080F48();
      sub_1000808F8();
      *&v86[21] = v101;
      *&v86[25] = v102;
      *&v86[13] = v99;
      *&v86[17] = v100;
      *&v86[5] = v97;
      *&v86[9] = v98;
      *&v86[1] = v96;
      *&v88[52] = *&v86[12];
      *&v88[36] = *&v86[8];
      *&v88[20] = *&v86[4];
      *&v88[4] = *v86;
      *v88 = v64;
      *&v88[116] = HIDWORD(v102);
      *&v88[100] = *&v86[24];
      *&v88[84] = *&v86[20];
      *&v88[68] = *&v86[16];
      sub_1000721E4(v88);
    }

    else
    {
      v65 = *(v37 + 1);
      sub_100080F48();
      sub_1000807E8();
      *v88 = v64;
      *&v88[8] = v96;
      v88[16] = BYTE8(v96);
      *&v88[24] = v97;
      v88[32] = BYTE8(v97);
      *&v88[40] = v98;
      sub_100071EF8(v88);
    }

    *&v86[49] = *&v88[80];
    v87[0] = *&v88[96];
    *(v87 + 9) = *&v88[105];
    *&v86[29] = *v88;
    *&v86[33] = *&v88[16];
    *&v86[37] = *&v88[32];
    *&v86[41] = *&v88[48];
    *&v86[45] = *&v88[64];
    sub_100002840(&qword_1000AFB80, &unk_10008BB30);
    sub_100002840(&qword_1000AEF40, &qword_10008A360);
    sub_100071F04(&qword_1000AFB88, &qword_1000AFB80, &unk_10008BB30);
    sub_100071F04(&qword_1000AEF38, &qword_1000AEF40, &qword_10008A360);
    sub_100080AD8();
    v66 = v94;
    v7[4] = v93;
    v7[5] = v66;
    v7[6] = v95[0];
    *(v7 + 105) = *(v95 + 9);
    v67 = v90;
    *v7 = v89;
    v7[1] = v67;
    v68 = v92;
    v7[2] = v91;
    v7[3] = v68;
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000AFB90, &qword_10008BB40);
    sub_100071F7C();
    sub_100072118();
    v63 = v84;
    sub_100080AD8();
LABEL_20:
    v69 = sub_100002840(&qword_1000AFB78, &qword_10008BB28);
    return (*(*(v69 - 8) + 56))(v63, 0, 1, v69);
  }

  v38 = sub_100002840(&qword_1000AFB78, &qword_10008BB28);
  v39 = *(*(v38 - 8) + 56);

  return v39(a1, 1, 1, v38);
}

uint64_t sub_100071E2C()
{
  result = sub_100080B28();
  dword_1000AFA90 = result;
  return result;
}

uint64_t sub_100071E4C()
{
  v0 = sub_100080F68();
  sub_10000A794(v0, qword_1000AFA98);
  v1 = sub_10000A480(v0, qword_1000AFA98);
  v2 = enum case for BlendMode.plusLighter(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100071ED4()
{
  result = sub_100080C88();
  qword_1000AFAB0 = v1;
  return result;
}

uint64_t sub_100071F04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    sub_10005C128();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100071F7C()
{
  result = qword_1000AFB98;
  if (!qword_1000AFB98)
  {
    sub_100004FC8(&qword_1000AFB70, &qword_10008BB20);
    sub_100072020();
    sub_1000720C4(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFB98);
  }

  return result;
}

unint64_t sub_100072020()
{
  result = qword_1000AFBA0;
  if (!qword_1000AFBA0)
  {
    sub_100004FC8(&qword_1000AFB68, &qword_10008BB18);
    sub_10004C8D0();
    sub_1000720C4(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBA0);
  }

  return result;
}

uint64_t sub_1000720C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100072118()
{
  result = qword_1000AFBA8;
  if (!qword_1000AFBA8)
  {
    sub_100004FC8(&qword_1000AFB90, &qword_10008BB40);
    sub_100071F04(&qword_1000AFB88, &qword_1000AFB80, &unk_10008BB30);
    sub_100071F04(&qword_1000AEF38, &qword_1000AEF40, &qword_10008A360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBA8);
  }

  return result;
}

uint64_t sub_1000721FC(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AFB70, &qword_10008BB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100072278()
{
  result = qword_1000AFBB0;
  if (!qword_1000AFBB0)
  {
    sub_100004FC8(&qword_1000AFBB8, &unk_10008BBC0);
    sub_1000722FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBB0);
  }

  return result;
}

unint64_t sub_1000722FC()
{
  result = qword_1000AFBC0;
  if (!qword_1000AFBC0)
  {
    sub_100004FC8(&qword_1000AFB78, &qword_10008BB28);
    sub_100071F7C();
    sub_100072118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBC0);
  }

  return result;
}

uint64_t sub_10007239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100072484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for BackgroundView()
{
  result = qword_1000AFC20;
  if (!qword_1000AFC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100072594()
{
  sub_100072678(319, &qword_1000AD788, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100072678(319, &qword_1000AFC30, sub_1000726DC, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100072678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000726DC()
{
  result = qword_1000AFC38;
  if (!qword_1000AFC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AFC38);
  }

  return result;
}

uint64_t sub_100072744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000055FC(v2, &v17 - v11, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100072944@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_100002840(&qword_1000AFC78, &qword_10008BC48);
  v2 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v4 = &v27 - v3;
  v5 = sub_100002840(&qword_1000AFC80, &qword_10008BC50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_100080E98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002840(&qword_1000AFC88, &qword_10008BC58);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = *(v1 + *(type metadata accessor for BackgroundView() + 20));
  if (v18)
  {
    v19 = v18;
    sub_100080E78();
    (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
    v20 = sub_100080EF8();

    (*(v10 + 8))(v13, v9);
    v21 = sub_1000808D8();
    v22 = sub_100080BE8();
    v30 = v20;
    v31 = v21;
    v32 = v22;
    sub_100002840(&qword_1000AFCA8, &unk_10008BC60);
    sub_100073070();
    sub_100080DB8();

    v23 = &qword_1000AFC88;
    v24 = &qword_10008BC58;
    sub_1000055FC(v17, v8, &qword_1000AFC88, &qword_10008BC58);
    swift_storeEnumTagMultiPayload();
    sub_1000730F4(&qword_1000AFC98, &qword_1000AFC88, &qword_10008BC58, sub_100073070);
    sub_1000730F4(&qword_1000AFCB0, &qword_1000AFC78, &qword_10008BC48, sub_10007301C);
    sub_100080AD8();

    v25 = v17;
  }

  else
  {
    sub_10007301C();
    sub_100080DB8();
    v23 = &qword_1000AFC78;
    v24 = &qword_10008BC48;
    sub_1000055FC(v4, v8, &qword_1000AFC78, &qword_10008BC48);
    swift_storeEnumTagMultiPayload();
    sub_1000730F4(&qword_1000AFC98, &qword_1000AFC88, &qword_10008BC58, sub_100073070);
    sub_1000730F4(&qword_1000AFCB0, &qword_1000AFC78, &qword_10008BC48, sub_10007301C);
    sub_100080AD8();
    v25 = v4;
  }

  return sub_100005B2C(v25, v23, v24);
}

uint64_t sub_100072D68@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_100002840(&qword_1000AFC70, &qword_10008BC40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - v4;
  v6 = sub_100081008();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_100072744(&v20 - v12);
  sub_100080FF8();
  v14 = sub_100080FC8();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    sub_100072944(v5);
    v16 = v21;
    sub_100072FAC(v5, v21);
    v17 = 0;
    v18 = v16;
  }

  else
  {
    v17 = 1;
    v18 = v21;
  }

  return (*(v2 + 56))(v18, v17, 1, v1);
}

uint64_t sub_100072F60@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100080F48();
  a1[1] = v2;
  v3 = sub_100002840(&qword_1000AFC68, &qword_10008BC38);
  return sub_100072D68(a1 + *(v3 + 44));
}

uint64_t sub_100072FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AFC70, &qword_10008BC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007301C()
{
  result = qword_1000AFC90;
  if (!qword_1000AFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFC90);
  }

  return result;
}

unint64_t sub_100073070()
{
  result = qword_1000AFCA0;
  if (!qword_1000AFCA0)
  {
    sub_100004FC8(&qword_1000AFCA8, &unk_10008BC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCA0);
  }

  return result;
}

uint64_t sub_1000730F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004FC8(a2, a3);
    a4();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007317C()
{
  result = qword_1000AFCB8;
  if (!qword_1000AFCB8)
  {
    sub_100004FC8(&qword_1000AFCC0, &unk_10008BC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCB8);
  }

  return result;
}

uint64_t sub_1000731E0@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_100087AD0;
  v2 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
  v3 = v2[6];
  v4 = enum case for BlendMode.plusLighter(_:);
  v5 = sub_100080F68();
  (*(*(v5 - 8) + 104))(&a1[v3], v4, v5);
  v6 = &a1[v2[7]];
  *v6 = 0x69662E656D616C66;
  *(v6 + 1) = 0xEA00000000006C6CLL;
  v7 = v2[8];
  sub_100080C88();
  *&a1[v7] = v8;
  v9 = v2[9];
  *&a1[v9] = sub_100080E48();
  *&a1[v2[10]] = 2;
  v10 = v2[11];
  *&a1[v10] = sub_100080E48();
  v11 = v2[12];
  sub_100080E48();
  v12 = sub_100080E58();

  *&a1[v11] = v12;
  v13 = &a1[v2[13]];
  *v13 = 0xD000000000000015;
  *(v13 + 1) = 0x8000000100082B90;
  v14 = v2[14];
  v15 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  *&a1[v2[15]] = 0x4008000000000000;
  *&a1[v2[16]] = 0x402A000000000000;
  *&a1[v2[17]] = 0x4010000000000000;
  v16 = v2[18];
  result = sub_100080CC8();
  *&a1[v16] = result;
  *&a1[v2[19]] = 0x4018000000000000;
  *&a1[v2[20]] = 0x4040000000000000;
  *&a1[v2[21]] = 0x4059000000000000;
  *&a1[v2[22]] = 0x4028000000000000;
  return result;
}

uint64_t sub_1000733F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100080F68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for CircularProgressView.Content(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[14];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100073538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100080F68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for CircularProgressView.Content(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[14];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_100073664()
{
  result = sub_100080F68();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CircularProgressView.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100073760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100073820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000738E4()
{
  result = type metadata accessor for MediumOneBookView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100073984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v30 = sub_100080B68();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100002840(&qword_1000AFE38, &qword_10008BD08);
  v7 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v9 = &v29 - v8;
  v10 = sub_100002840(&qword_1000AFE40, &qword_10008BD10);
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = v1 + *(type metadata accessor for MediumOneBookView(0) + 24);
  v15 = *(v14 + *(type metadata accessor for MediumOneBookView.ViewConfiguration(0) + 88));
  *v9 = sub_100080A28();
  *(v9 + 1) = v15;
  v9[16] = 0;
  v16 = sub_100002840(&qword_1000AFE48, &qword_10008BD18);
  sub_100073D08(v2, &v9[*(v16 + 44)]);
  v17 = *(v2 + 112);
  v53 = *(v2 + 96);
  v54 = v17;
  v55 = *(v2 + 128);
  v56 = *(v2 + 144);
  v18 = *(v2 + 80);
  v51 = *(v2 + 64);
  v52 = v18;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v19 = sub_100005C98(&qword_1000AFE50, &qword_1000AFE38, &qword_10008BD08);
  sub_100080E08();
  (*(v3 + 8))(v6, v30);
  sub_100005B2C(v9, &qword_1000AFE38, &qword_10008BD08);
  v20 = *(v2 + 112);
  v47 = *(v2 + 96);
  v48 = v20;
  v49 = *(v2 + 128);
  v50 = *(v2 + 144);
  v21 = *(v2 + 80);
  v45 = *(v2 + 64);
  v46 = v21;
  if (sub_1000112D4())
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = *(v2 + 112);
    v41 = *(v2 + 96);
    v42 = v24;
    v43 = *(v2 + 128);
    v44 = *(v2 + 144);
    v25 = *(v2 + 80);
    v39 = *(v2 + 64);
    v40 = v25;
    v22 = sub_100056778(0);
    v23 = v26;
  }

  v37 = v22;
  v38 = v23;
  v35 = v34;
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v27 = v32;
  sub_100080DD8();

  return (*(v31 + 8))(v13, v27);
}

uint64_t sub_100073D08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = sub_100002840(&qword_1000AFE58, &qword_10008BD20);
  v81 = *(v83 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin(v83);
  v90 = &v79 - v4;
  v5 = sub_100002840(&qword_1000AFE60, &qword_10008BD28);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v79 - v9;
  v87 = sub_100080308();
  v10 = *(v87 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v87);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v79 - v14;
  v16 = type metadata accessor for BookCoverView();
  v17 = *(*(v16 - 1) + 64);
  v18 = __chkstk_darwin(v16);
  v80 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = (&v79 - v21);
  __chkstk_darwin(v20);
  v89 = &v79 - v23;
  v24 = a1[1];
  v111 = *a1;
  v112 = v24;
  v25 = a1[3];
  v113 = a1[2];
  v114 = v25;
  v26 = *(&v25 + 1);
  v27 = v25;
  v28 = a1[7];
  v109[2] = a1[6];
  v109[3] = v28;
  v109[4] = a1[8];
  v110 = *(a1 + 144);
  v29 = a1[5];
  v109[0] = a1[4];
  v109[1] = v29;
  sub_1000253FC(v109, v15);
  v30 = a1[7];
  v105 = a1[6];
  v106 = v30;
  v107 = a1[8];
  v108 = *(a1 + 144);
  v31 = a1[5];
  v103 = a1[4];
  v104 = v31;
  v32 = sub_1000112D4();
  v33 = a1[7];
  v117 = a1[6];
  v118 = v33;
  v119 = a1[8];
  v120 = *(a1 + 144);
  v34 = a1[5];
  v115 = a1[4];
  v116 = v34;
  v35 = *(&v115 + 1);
  v86 = v115;
  if (v26)
  {
    if (__PAIR128__(v26, v27) == v117)
    {
      LOBYTE(v26) = 1;
    }

    else
    {
      LOBYTE(v26) = sub_100081618();
    }
  }

  *v22 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 32))(v22 + v16[5], v15, v87);
  *(v22 + v16[6]) = v32 & 1;
  v36 = v22 + v16[7];
  v37 = v118;
  *(v36 + 2) = v117;
  *(v36 + 3) = v37;
  *(v36 + 4) = v119;
  v36[80] = v120;
  v38 = v116;
  *v36 = v115;
  *(v36 + 1) = v38;
  *(v22 + v16[8]) = v26 & 1;
  *(v22 + v16[9]) = 0;
  sub_10000C384(v22, v89);
  v39 = a1[1];
  v99 = *a1;
  v100 = v39;
  v40 = a1[3];
  v101 = a1[2];
  v102 = v40;
  v41 = a1[7];
  v97[2] = a1[6];
  v97[3] = v41;
  v97[4] = a1[8];
  v98 = *(a1 + 144);
  v42 = a1[5];
  v97[0] = a1[4];
  v97[1] = v42;
  sub_10000C328(&v115, v95);

  v43 = sub_1000253FC(v97, v88);
  __chkstk_darwin(v43);
  *(&v79 - 2) = a1;
  sub_100002840(&qword_1000AFE68, &qword_10008BD68);
  sub_100005C98(&qword_1000AFE70, &qword_1000AFE68, &qword_10008BD68);
  sub_100080CE8();
  v93 = v86;
  v94[0] = v35;
  v44 = a1[7];
  v95[2] = a1[6];
  v95[3] = v44;
  v95[4] = a1[8];
  v96 = *(a1 + 144);
  v45 = a1[5];
  v95[0] = a1[4];
  v95[1] = v45;
  v46 = 0;
  v94[1] = sub_100056928(0);
  v94[2] = v47;
  v48 = _swiftEmptyArrayStorage;
LABEL_6:
  v49 = &v94[2 * v46];
  while (++v46 != 3)
  {
    v50 = v49 + 2;
    v51 = *v49;
    v49 += 2;
    if (v51)
    {
      v52 = *(v50 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_10003EE4C(0, *(v48 + 2) + 1, 1, v48);
      }

      v54 = *(v48 + 2);
      v53 = *(v48 + 3);
      if (v54 >= v53 >> 1)
      {
        v48 = sub_10003EE4C((v53 > 1), v54 + 1, 1, v48);
      }

      *(v48 + 2) = v54 + 1;
      v55 = &v48[16 * v54];
      *(v55 + 4) = v52;
      *(v55 + 5) = v51;
      goto LABEL_6;
    }
  }

  sub_100002840(&qword_1000ACE48, &unk_100086040);
  result = swift_arrayDestroy();
  v57 = 0;
  v58 = *(v48 + 2);
  v59 = _swiftEmptyArrayStorage;
LABEL_15:
  v60 = &v48[16 * v57 + 40];
  while (1)
  {
    if (v58 == v57)
    {

      v91 = v59;
      sub_100002840(&qword_1000ACE50, &qword_1000881F0);
      sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
      v67 = sub_100081128();
      v69 = v68;

      v91 = v67;
      v92 = v69;
      sub_100005C98(&qword_1000AFE78, &qword_1000AFE58, &qword_10008BD20);
      sub_1000057D0();
      v71 = v82;
      v70 = v83;
      v72 = v90;
      sub_100080DD8();

      (*(v81 + 8))(v72, v70);
      v73 = v89;
      v74 = v80;
      sub_100074A74(v89, v80);
      v75 = v84;
      sub_1000055FC(v71, v84, &qword_1000AFE60, &qword_10008BD28);
      v76 = v85;
      sub_100074A74(v74, v85);
      v77 = sub_100002840(&qword_1000AFE80, &qword_10008BD70);
      sub_1000055FC(v75, v76 + *(v77 + 48), &qword_1000AFE60, &qword_10008BD28);
      v78 = v76 + *(v77 + 64);
      sub_100005B2C(v71, &qword_1000AFE60, &qword_10008BD28);
      sub_100074AD8(v73);
      *v78 = 0;
      *(v78 + 8) = 1;
      sub_100005B2C(v75, &qword_1000AFE60, &qword_10008BD28);
      return sub_100074AD8(v74);
    }

    if (v57 >= *(v48 + 2))
    {
      break;
    }

    ++v57;
    v62 = *(v60 - 1);
    v61 = *v60;
    v60 += 16;
    v63 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v63 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v91 = v59;
      if ((result & 1) == 0)
      {
        result = sub_100061B34(0, v59[2] + 1, 1);
        v59 = v91;
      }

      v65 = v59[2];
      v64 = v59[3];
      if (v65 >= v64 >> 1)
      {
        result = sub_100061B34((v64 > 1), v65 + 1, 1);
        v59 = v91;
      }

      v59[2] = v65 + 1;
      v66 = &v59[2 * v65];
      v66[4] = v62;
      v66[5] = v61;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100074590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_100080A78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100002840(&qword_1000AFE88, &qword_10008BD78);
  return sub_1000745E4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000745E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = sub_100002840(&qword_1000AFE90, &qword_10008BD80);
  v4 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v6 = &v59 - v5;
  v7 = sub_100002840(&qword_1000AFE98, &qword_10008BD88);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v59 - v11;
  v12 = *(a1 + 64);
  v62 = *(a1 + 72);
  v63 = v12;

  v61 = sub_100080C08();
  v13 = (a1 + *(type metadata accessor for MediumOneBookView(0) + 24));
  v14 = type metadata accessor for MediumOneBookView.ViewConfiguration(0);
  v15 = *(v13 + v14[17]);
  sub_100080798();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v80) = 0;
  v60 = sub_100080C38();
  v24 = *v13 + v13[1];
  sub_100080798();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v89[0]) = 0;
  *(&v67 + 1) = *(v13 + v14[10]);
  *&v67 = swift_getKeyPath();
  *v6 = sub_100080A28();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v33 = &v6[*(sub_100002840(&qword_1000AFEA0, &qword_10008BDC0) + 44)];
  v34 = *(a1 + 112);
  v76 = *(a1 + 96);
  v77 = v34;
  v78 = *(a1 + 128);
  v79 = *(a1 + 144);
  v35 = *(a1 + 80);
  v74 = *(a1 + 64);
  v75 = v35;
  v36 = sub_100056928(0);
  v38 = v37;
  v39 = *(v13 + v14[18]);

  v40 = sub_100080B28();
  v41 = *(v13 + v14[21]);
  v42 = v40;
  *v33 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for LabelView();
  v44 = (v33 + v43[5]);
  *v44 = v36;
  v44[1] = v38;
  *(v33 + v43[6]) = v39;
  v45 = v33 + v43[7];
  *v45 = v42;
  *(v45 + 1) = v41;
  *(v45 + 8) = 0;
  v46 = *(a1 + 112);
  v70 = *(a1 + 96);
  v71 = v46;
  v72 = *(a1 + 128);
  v73 = *(a1 + 144);
  v47 = *(a1 + 80);
  v68 = *(a1 + 64);
  v69 = v47;
  sub_1000112D4();
  sub_100005C98(&qword_1000AFEA8, &qword_1000AFE90, &qword_10008BD80);
  v48 = v66;
  sub_100080DE8();
  sub_100005B2C(v6, &qword_1000AFE90, &qword_10008BD80);
  v49 = v48;
  v50 = v64;
  sub_1000055FC(v49, v64, &qword_1000AFE98, &qword_10008BD88);
  v52 = v62;
  v51 = v63;
  *&v80 = v63;
  *(&v80 + 1) = v62;
  LOBYTE(a1) = v60;
  LOBYTE(v42) = v61;
  LOBYTE(v81) = v61;
  *(&v81 + 1) = v17;
  *&v82 = v19;
  *(&v82 + 1) = v21;
  *&v83 = v23;
  BYTE8(v83) = 0;
  LOBYTE(v84) = v60;
  *(&v84 + 1) = v26;
  *&v85 = v28;
  *(&v85 + 1) = v30;
  *&v86 = v32;
  BYTE8(v86) = 0;
  v87 = v67;
  v88 = 0;
  *(a2 + 128) = 0;
  v53 = v83;
  *(a2 + 32) = v82;
  *(a2 + 48) = v53;
  v54 = v87;
  *(a2 + 96) = v86;
  *(a2 + 112) = v54;
  v55 = v85;
  *(a2 + 64) = v84;
  *(a2 + 80) = v55;
  v56 = v81;
  *a2 = v80;
  *(a2 + 16) = v56;
  v57 = sub_100002840(&qword_1000AFEB0, &qword_10008BDC8);
  sub_1000055FC(v50, a2 + *(v57 + 48), &qword_1000AFE98, &qword_10008BD88);
  sub_1000055FC(&v80, v89, &qword_1000AFEB8, &qword_10008BDD0);
  sub_100005B2C(v66, &qword_1000AFE98, &qword_10008BD88);
  sub_100005B2C(v50, &qword_1000AFE98, &qword_10008BD88);
  v89[0] = v51;
  v89[1] = v52;
  v90 = v42;
  v91 = v17;
  v92 = v19;
  v93 = v21;
  v94 = v23;
  v95 = 0;
  v96 = a1;
  v97 = v26;
  v98 = v28;
  v99 = v30;
  v100 = v32;
  v101 = 0;
  v102 = v67;
  v103 = 0;
  return sub_100005B2C(v89, &qword_1000AFEB8, &qword_10008BDD0);
}

uint64_t sub_100074A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074AD8(uint64_t a1)
{
  v2 = type metadata accessor for BookCoverView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100074B40()
{
  result = qword_1000AFEC0;
  if (!qword_1000AFEC0)
  {
    sub_100004FC8(&qword_1000AFEC8, &qword_10008BDD8);
    sub_100004FC8(&qword_1000AFE38, &qword_10008BD08);
    sub_100005C98(&qword_1000AFE50, &qword_1000AFE38, &qword_10008BD08);
    swift_getOpaqueTypeConformance2();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEC0);
  }

  return result;
}

uint64_t sub_100074C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100080308();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 40);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100074D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100080308();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 40) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for BookCoverView()
{
  result = qword_1000AFF28;
  if (!qword_1000AFF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074EE4()
{
  sub_100022118();
  if (v0 <= 0x3F)
  {
    sub_100080308();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100074FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10007B5E4(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100075188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = sub_100080308();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  __chkstk_darwin(v3);
  v109 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100002840(&qword_1000AFFD8, &unk_10008BE78);
  v111 = *(v137 - 8);
  v6 = *(v111 + 8);
  __chkstk_darwin(v137);
  v110 = &v93 - v7;
  v131 = sub_100080AF8();
  v123 = *(v131 - 8);
  v8 = *(v123 + 64);
  __chkstk_darwin(v131);
  v122 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1000801E8();
  v139 = *(v133 - 8);
  v10 = *(v139 + 64);
  __chkstk_darwin(v133);
  v116 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_100080478();
  v141 = *(v117 - 8);
  v12 = v141[8];
  v13 = __chkstk_darwin(v117);
  v114 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = &v93 - v15;
  v113 = sub_1000811C8();
  v140 = *(v113 - 8);
  v16 = v140[8];
  v17 = __chkstk_darwin(v113);
  v112 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v93 - v19;
  v21 = sub_1000801F8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v132 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100002840(&qword_1000AFFB8, &qword_10008BE70);
  v119 = *(v128 - 8);
  v24 = *(v119 + 64);
  __chkstk_darwin(v128);
  v118 = &v93 - v25;
  v130 = sub_100002840(&qword_1000AFFE0, &qword_10008BE88);
  v121 = *(v130 - 8);
  v26 = *(v121 + 64);
  __chkstk_darwin(v130);
  v120 = &v93 - v27;
  v134 = sub_100002840(&qword_1000AFFE8, &qword_10008BE90);
  v28 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v136 = &v93 - v29;
  v125 = sub_100002840(&qword_1000AFFF0, &qword_10008BE98);
  v30 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v127 = &v93 - v31;
  v135 = sub_100002840(&qword_1000AFFA0, &qword_10008BE60);
  v32 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v129 = &v93 - v33;
  v34 = sub_100080B68();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100002840(&qword_1000AFFA8, &qword_10008BE68);
  v39 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v41 = (&v93 - v40);
  v126 = sub_100002840(&qword_1000AFFF8, &qword_10008BEA0);
  v42 = *(v126 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v126);
  v45 = &v93 - v44;
  v46 = sub_1000764D4();
  if (v46)
  {
    if (v46 == 1)
    {
      v47 = *(type metadata accessor for BookCoverView() + 28);
      v103 = a1;
      v48 = a1 + v47;
      v49 = *(v48 + 32);
      v100 = *(v48 + 40);
      v101 = v49;
      sub_100002840(&qword_1000AD620, &unk_100087690);

      v99 = sub_10007FCC8();
      v102 = sub_10007FCC8();
      v98 = sub_10007FCC8();
      v50 = v20;
      sub_100081158();
      v51 = v115;
      sub_100080448();
      v52 = v140[2];
      v110 = (v140 + 2);
      v111 = v52;
      v54 = v112;
      v53 = v113;
      v52(v112, v20, v113);
      v55 = v141[2];
      v108 = v141 + 2;
      v109 = v55;
      v56 = v114;
      v57 = v117;
      (v55)(v114, v51, v117);
      v94 = type metadata accessor for BundleFinder();
      v58 = v116;
      *v116 = v94;
      LODWORD(v107) = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v106 = *(v139 + 104);
      v139 += 104;
      v106(v58);
      sub_100080208();
      v59 = v141[1];
      ++v141;
      v105 = v59;
      v59(v51, v57);
      v60 = v140[1];
      ++v140;
      v104 = v60;
      v60(v50, v53);
      v97 = sub_10007FCB8();
      sub_100002840(&qword_1000AD628, &qword_1000876A0);
      v96 = sub_10007FCA8();
      v95 = sub_100002840(&qword_1000B0040, &qword_10008BEC8);
      sub_100081158();
      sub_100080448();
      v111(v54, v50, v53);
      (v109)(v56, v51, v57);
      v61 = v94;
      *v58 = v94;
      (v106)(v58, v107, v133);
      sub_100080208();
      v105(v51, v57);
      v104(v50, v53);
      sub_100016584();
      v95 = sub_10007FC78();
      sub_100002840(&qword_1000B0048, &qword_10008BED0);
      sub_100081158();
      sub_100080448();
      v111(v54, v50, v53);
      (v109)(v56, v51, v57);
      *v58 = v61;
      (v106)(v58, v107, v133);
      sub_100080208();
      v105(v51, v57);
      v104(v50, v53);
      sub_100005C98(&qword_1000B0050, &qword_1000B0058, &qword_10008BED8);
      v62 = sub_10007FC88();
      v164 = 0uLL;
      v63 = v99;
      sub_10007FC68();
      v164 = 0uLL;
      v64 = v98;
      sub_10007FC68();
      LOBYTE(v164) = 0;
      v65 = v95;
      sub_10007FC68();
      *&v146 = v101;
      *(&v146 + 1) = v100;
      *(&v147 + 1) = v142;
      DWORD1(v147) = *(&v142 + 3);
      LOBYTE(v147) = 1;
      *(&v147 + 1) = v63;
      *&v148 = v102;
      *(&v148 + 1) = v64;
      *&v149 = v97;
      *(&v149 + 1) = v96;
      *&v150 = v65;
      *(&v150 + 1) = v62;
      v151 = 0uLL;
      v152[0] = v101;
      v152[1] = v100;
      v153 = 1;
      *v154 = v142;
      *&v154[3] = *(&v142 + 3);
      v155 = v63;
      v156 = v102;
      v157 = v64;
      v158 = v97;
      v159 = v96;
      v160 = v65;
      v161 = v62;
      v162 = 0;
      v163 = 0;
      sub_10007AD10(&v146, &v164);
      sub_10007AD6C(v152);
      v166 = v148;
      v167 = v149;
      v168 = v150;
      v169 = v151;
      v164 = v146;
      v165 = v147;
      v142 = sub_100018F28(1, &v164);
      v143 = v66;
      v144 = v67;
      __chkstk_darwin(v142);
      *(&v93 - 2) = v103;
      sub_100002840(&qword_1000B0060, &qword_10008BEE0);
      sub_10007ADC8();
      sub_100019E98();
      v68 = v118;
      sub_100080F08();
      v69 = v122;
      sub_100080AE8();
      v70 = sub_100005C98(&qword_1000AFFC0, &qword_1000AFFB8, &qword_10008BE70);
      v71 = sub_10007B510(&qword_1000AFFC8, &type metadata accessor for BorderlessButtonStyle);
      v72 = v120;
      v73 = v128;
      v74 = v131;
      sub_100080DA8();
      (*(v123 + 8))(v69, v74);
      (*(v119 + 8))(v68, v73);
      v75 = v121;
      v76 = v130;
      (*(v121 + 16))(v127, v72, v130);
      swift_storeEnumTagMultiPayload();
      v77 = sub_100005C98(&qword_1000AFFB0, &qword_1000AFFA8, &qword_10008BE68);
      v142 = v124;
      v143 = v77;
      swift_getOpaqueTypeConformance2();
      v142 = v73;
      v143 = v74;
      v144 = v70;
      v145 = v71;
      swift_getOpaqueTypeConformance2();
      v78 = v129;
      sub_100080AD8();
      sub_1000055FC(v78, v136, &qword_1000AFFA0, &qword_10008BE60);
      swift_storeEnumTagMultiPayload();
      sub_10007A9E4();
      sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78);
      sub_100080AD8();
      sub_100005B2C(v78, &qword_1000AFFA0, &qword_10008BE60);
      return (*(v75 + 8))(v72, v76);
    }

    else
    {
      v88 = type metadata accessor for BookCoverView();
      v89 = (*(v107 + 16))(v109, a1 + *(v88 + 20), v108);
      __chkstk_darwin(v89);
      *(&v93 - 2) = a1;
      sub_100002840(&qword_1000B0000, &qword_10008BEA8);
      sub_10007ABA0();
      v90 = v110;
      sub_100080CE8();
      v91 = v111;
      v92 = v137;
      (*(v111 + 2))(v136, v90, v137);
      swift_storeEnumTagMultiPayload();
      sub_10007A9E4();
      sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78);
      sub_100080AD8();
      return (*(v91 + 1))(v90, v92);
    }
  }

  else
  {
    *v41 = sub_100080F48();
    v41[1] = v80;
    v81 = sub_100002840(&qword_1000B0080, &qword_10008BEF0);
    sub_100076770(a1, v41 + *(v81 + 44));
    sub_100080B48();
    v82 = sub_100005C98(&qword_1000AFFB0, &qword_1000AFFA8, &qword_10008BE68);
    v83 = v124;
    sub_100080E08();
    (*(v35 + 8))(v38, v34);
    sub_100005B2C(v41, &qword_1000AFFA8, &qword_10008BE68);
    v84 = v126;
    (*(v42 + 16))(v127, v45, v126);
    swift_storeEnumTagMultiPayload();
    *&v164 = v83;
    *(&v164 + 1) = v82;
    swift_getOpaqueTypeConformance2();
    v85 = sub_100005C98(&qword_1000AFFC0, &qword_1000AFFB8, &qword_10008BE70);
    v86 = sub_10007B510(&qword_1000AFFC8, &type metadata accessor for BorderlessButtonStyle);
    *&v164 = v128;
    *(&v164 + 1) = v131;
    *&v165 = v85;
    *(&v165 + 1) = v86;
    swift_getOpaqueTypeConformance2();
    v87 = v129;
    sub_100080AD8();
    sub_1000055FC(v87, v136, &qword_1000AFFA0, &qword_10008BE60);
    swift_storeEnumTagMultiPayload();
    sub_10007A9E4();
    sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78);
    sub_100080AD8();
    sub_100005B2C(v87, &qword_1000AFFA0, &qword_10008BE60);
    return (*(v42 + 8))(v45, v84);
  }
}

uint64_t sub_1000764D4()
{
  v1 = (v0 + *(type metadata accessor for BookCoverView() + 28));
  v30 = v1[2];
  v31 = v1[4];
  v32 = *(v1 + 80);
  v28 = *v1;
  v29 = v1[1];
  v2 = *(v1 + 7);
  v33 = *(v1 + 8);
  v3 = sub_100081218();
  v5 = v4;
  if (v3 == sub_100081218() && v5 == v6)
  {
    v22 = v2;

    sub_10007B868(&v33);
    goto LABEL_15;
  }

  v8 = sub_100081618();
  v9 = v2;

  sub_10007B868(&v33);
  if (v8)
  {
LABEL_15:
    sub_10007B868(&v33);
    return 1;
  }

  v10 = sub_100081218();
  v12 = v11;
  if (v10 == sub_100081218() && v12 == v13)
  {
    v24 = v9;

    sub_10007B868(&v33);
    goto LABEL_18;
  }

  v15 = sub_100081618();
  v16 = v9;

  sub_10007B868(&v33);
  if (v15)
  {
LABEL_18:
    sub_10007B868(&v33);
    return 0;
  }

  v17 = sub_100081218();
  v19 = v18;
  if (v17 != sub_100081218() || v19 != v20)
  {
    v25 = sub_100081618();
    v26 = v16;

    sub_10007B868(&v33);
    if (v25)
    {
      goto LABEL_20;
    }

    if ((sub_1000112D4() & 1) == 0)
    {
      if (*(&v31 + 1))
      {

        v34._countAndFlagsBits = 1717858350;
        v34._object = 0xE400000000000000;
        v27 = sub_100081308(v34);
        sub_10007B868(&v33);

        if (v27)
        {
          return 2;
        }

        return 1;
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v21 = v16;

  sub_10007B868(&v33);
LABEL_20:
  sub_10007B868(&v33);
  return 2;
}

uint64_t sub_100076770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for BookCoverView();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v71 = v5;
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100002840(&qword_1000B0088, &qword_10008BEF8);
  v6 = *(*(v75 - 8) + 64);
  v7 = __chkstk_darwin(v75);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v65 - v9;
  v79 = sub_100002840(&qword_1000B0090, &qword_10008BF00);
  v10 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v77 = &v65 - v11;
  v67 = sub_100080758();
  v66 = *(v67 - 8);
  v12 = *(v66 + 64);
  __chkstk_darwin(v67);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002840(&qword_1000B0098, &qword_10008BF08);
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  __chkstk_darwin(v15);
  v68 = &v65 - v17;
  v18 = sub_100081008();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002840(&qword_1000B00A0, &qword_10008BF10);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v80 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v65 - v27;
  v76 = v3;
  v29 = a1 + *(v3 + 28);
  v30 = *(v29 + 48);
  v90 = *(v29 + 32);
  v91 = v30;
  v92 = *(v29 + 64);
  v93 = *(v29 + 80);
  v31 = *(v29 + 16);
  v88 = *v29;
  v89 = v31;
  v32 = v88;
  v78 = v90;
  sub_100074FA0(v22);
  v33 = a1;
  sub_1000764D4();
  v34 = sub_100058A10();
  (*(v19 + 8))(v22, v18);
  v82 = v32;
  if (v34)
  {
    v68 = v28;
    v69 = v15;
    v65 = v33;
    v35 = v72;
    sub_100074A74(v33, v72);
    v36 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    sub_10000C384(v35, v37 + v36);
    v72 = v34;
    [v72 size];
    v84 = sub_10007AF40;
    v85 = v37;
    v86 = v38 / v39;
    v87 = 0;
    v40 = v76;
    v41 = *(v33 + *(v76 + 36));
    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    v42 = v73;
    sub_100080DE8();

    v83 = v32;

    if (*(&v32 + 1))
    {

      v43 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v77;
      v46 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_10003EE4C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v48 = *(v43 + 2);
      v47 = *(v43 + 3);
      if (v48 >= v47 >> 1)
      {
        v43 = sub_10003EE4C((v47 > 1), v48 + 1, 1, v43);
      }

      *(v43 + 2) = v48 + 1;
      v49 = &v43[16 * v48];
      v50 = *(&v82 + 1);
      *(v49 + 4) = v82;
      *(v49 + 5) = v50;
    }

    else
    {
      v43 = _swiftEmptyArrayStorage;
      v45 = v77;
      v46 = v68;
    }

    sub_100005B2C(&v83, &qword_1000ACE48, &unk_100086040);
    v84 = v43;
    sub_100002840(&qword_1000ACE50, &qword_1000881F0);
    sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
    v54 = sub_100081128();
    v56 = v55;

    v84 = v54;
    v85 = v56;
    sub_1000057D0();
    v57 = v74;
    sub_100080878();

    sub_100005B2C(v42, &qword_1000B0088, &qword_10008BEF8);
    sub_1000055FC(v57, v45, &qword_1000B0088, &qword_10008BEF8);
    swift_storeEnumTagMultiPayload();
    sub_10007AE80();
    sub_100005C98(&qword_1000B00B0, &qword_1000B0098, &qword_10008BF08);
    sub_100080AD8();

    sub_100005B2C(v57, &qword_1000B0088, &qword_10008BEF8);
    v52 = v65;
  }

  else
  {
    sub_100080748();
    v51 = v68;
    v52 = v33;
    sub_100077120(v14, v68);
    (*(v66 + 8))(v14, v67);
    v53 = v69;
    (*(v69 + 16))(v77, v51, v15);
    swift_storeEnumTagMultiPayload();
    sub_10007AE80();
    sub_100005C98(&qword_1000B00B0, &qword_1000B0098, &qword_10008BF08);
    sub_100080AD8();
    (*(v53 + 8))(v51, v15);
    v46 = v28;
    v40 = v76;
  }

  v58 = *(v52 + *(v40 + 32));
  v59 = v80;
  sub_1000055FC(v46, v80, &qword_1000B00A0, &qword_10008BF10);
  v60 = v81;
  sub_1000055FC(v59, v81, &qword_1000B00A0, &qword_10008BF10);
  v61 = v60 + *(sub_100002840(&qword_1000B00B8, &qword_10008BF18) + 48);
  v62 = *(&v78 + 1);
  *v61 = v78;
  *(v61 + 8) = v62;
  *(v61 + 16) = v58;
  *(v61 + 17) = 1;
  v63 = *(&v82 + 1);
  *(v61 + 24) = v82;
  *(v61 + 32) = v63;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100005B2C(v46, &qword_1000B00A0, &qword_10008BF10);

  return sub_100005B2C(v59, &qword_1000B00A0, &qword_10008BF10);
}

uint64_t sub_100077120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v21 = sub_100080758();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100080268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_100080308();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = qword_10008C038[sub_1000764D4()];
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_1000802F8();
  (*(v2 + 16))(v5, v22, v21);
  sub_100080E48();
  sub_100080E58();

  sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect);
  return sub_100080718();
}

uint64_t sub_100077428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v21 = sub_100080738();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100080268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_100080308();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = qword_10008C038[sub_1000764D4()];
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_1000802F8();
  (*(v2 + 16))(v5, v22, v21);
  sub_100080E48();
  sub_100080E58();

  sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect);
  return sub_100080718();
}

uint64_t sub_100077730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v21 = sub_100080778();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100080268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_100080308();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = qword_10008C038[sub_1000764D4()];
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_1000802F8();
  (*(v2 + 16))(v5, v22, v21);
  sub_100080E48();
  sub_100080E58();

  sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect);
  return sub_100080718();
}

void sub_100077A38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for BookCoverView();
  v4 = v3 - 8;
  v36 = *(v3 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v3);
  v37 = sub_100002840(&qword_1000B01F0, &qword_10008C018);
  v6 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v9 = sub_100080738();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100002840(&qword_1000B0078, &qword_10008BEE8);
  v35 = *(v38 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v38);
  v15 = &v32 - v14;
  v16 = sub_100081008();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 + *(v4 + 36);
  v22 = *(v21 + 48);
  v42 = *(v21 + 32);
  v43 = v22;
  v44 = *(v21 + 64);
  v45 = *(v21 + 80);
  v23 = *(v21 + 16);
  v40 = *v21;
  v41 = v23;
  sub_100074FA0(v20);
  sub_1000764D4();
  v24 = sub_100058A10();
  (*(v17 + 8))(v20, v16);
  if (v24)
  {
    sub_100074A74(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_10000C384(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    v27 = v24;
    [v27 size];
    *v8 = sub_10007B9C8;
    *(v8 + 1) = v26;
    *(v8 + 2) = v28 / v29;
    *(v8 + 12) = 0;
    swift_storeEnumTagMultiPayload();

    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0070, &qword_1000B0078, &qword_10008BEE8);
    sub_100080AD8();
  }

  else
  {
    sub_100080728();
    sub_100077428(v12, v15);
    (*(v33 + 8))(v12, v34);
    v30 = v35;
    v31 = v38;
    (*(v35 + 16))(v8, v15, v38);
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0070, &qword_1000B0078, &qword_10008BEE8);
    sub_100080AD8();
    (*(v30 + 8))(v15, v31);
  }
}

void sub_100077F1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for BookCoverView();
  v4 = v3 - 8;
  v36 = *(v3 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v3);
  v37 = sub_100002840(&qword_1000B01F8, &qword_10008C020);
  v6 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v9 = sub_100080778();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100002840(&qword_1000B0038, &qword_10008BEC0);
  v35 = *(v38 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v38);
  v15 = &v32 - v14;
  v16 = sub_100081008();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 + *(v4 + 36);
  v22 = *(v21 + 48);
  v42 = *(v21 + 32);
  v43 = v22;
  v44 = *(v21 + 64);
  v45 = *(v21 + 80);
  v23 = *(v21 + 16);
  v40 = *v21;
  v41 = v23;
  sub_100074FA0(v20);
  sub_1000764D4();
  v24 = sub_100058A10();
  (*(v17 + 8))(v20, v16);
  if (v24)
  {
    sub_100074A74(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_10000C384(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    v27 = v24;
    [v27 size];
    *v8 = sub_10007B9C8;
    *(v8 + 1) = v26;
    *(v8 + 2) = v28 / v29;
    *(v8 + 12) = 0;
    swift_storeEnumTagMultiPayload();

    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0030, &qword_1000B0038, &qword_10008BEC0);
    sub_100080AD8();
  }

  else
  {
    sub_100080768();
    sub_100077730(v12, v15);
    (*(v33 + 8))(v12, v34);
    v30 = v35;
    v31 = v38;
    (*(v35 + 16))(v8, v15, v38);
    swift_storeEnumTagMultiPayload();
    sub_100002840(&qword_1000B0018, &qword_10008BEB0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0030, &qword_1000B0038, &qword_10008BEC0);
    sub_100080AD8();
    (*(v30 + 8))(v15, v31);
  }
}

uint64_t sub_1000783F8()
{
  v1 = sub_100080478();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = sub_1000811C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v39 - v14;
  v15 = type metadata accessor for BookCoverView();
  v43 = 0;
  v44 = v10;
  v16 = 0;
  if (*(v0 + *(v15 + 24)) == 1)
  {
    v17 = v42;
    sub_100081158();
    sub_100080448();
    (*(v10 + 16))(v41, v17, v9);
    type metadata accessor for BundleFinder();
    v18 = v2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v18 + 16))(v6, v8, v1);
    v10 = v44;
    v2 = v18;
    v43 = sub_100081268();
    v16 = v21;
    (*(v2 + 8))(v8, v1);
    (*(v10 + 8))(v17, v9);
  }

  v22 = (v0 + *(v15 + 28));
  v23 = v22[1];
  if (v23)
  {
    v40 = v6;
    v24 = v1;
    v25 = *v22;

    v26 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_10003EE4C((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v23;
    v1 = v24;
    v6 = v40;
    v10 = v44;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
    if (v16)
    {
LABEL_7:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10003EE4C(0, *(v26 + 2) + 1, 1, v26);
      }

      v31 = *(v26 + 2);
      v30 = *(v26 + 3);
      if (v31 >= v30 >> 1)
      {
        v26 = sub_10003EE4C((v30 > 1), v31 + 1, 1, v26);
      }

      *(v26 + 2) = v31 + 1;
      v32 = &v26[16 * v31];
      *(v32 + 4) = v43;
      *(v32 + 5) = v16;
      goto LABEL_14;
    }
  }

  if (!*(v26 + 2))
  {

    v35 = v42;
    sub_100081158();
    sub_100080448();
    (*(v10 + 16))(v41, v35, v9);
    type metadata accessor for BundleFinder();
    v36 = v2;
    v37 = swift_getObjCClassFromMetadata();
    v38 = [objc_opt_self() bundleForClass:v37];
    (*(v36 + 16))(v6, v8, v1);
    v33 = sub_100081268();
    (*(v36 + 8))(v8, v1);
    (*(v10 + 8))(v35, v9);
    return v33;
  }

LABEL_14:
  v45 = v26;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
  v33 = sub_100081128();

  return v33;
}

double sub_100078964@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v53 = a1;
  v60 = a4;
  v5 = sub_100080868();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100081008();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002840(&qword_1000B00C0, &qword_10008BF20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_100080E98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
  v51 = *(v21 - 8);
  v52 = v21;
  v22 = *(v51 + 64);
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  v25 = sub_100002840(&qword_1000B00D0, &qword_10008BF30);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v49 = &v48 - v27;
  v28 = sub_100002840(&qword_1000B00D8, &qword_10008BF38);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = &v48 - v31;
  sub_1000807F8();
  [a2 size];
  v50 = a2;
  sub_100080E78();
  (*(v17 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v16);
  sub_100080EF8();

  (*(v17 + 8))(v20, v16);
  sub_100081018();
  v33 = sub_100081028();
  (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
  sub_100080EE8();

  sub_100005B2C(v15, &qword_1000B00C0, &qword_10008BF20);
  v34 = v56;
  LODWORD(v15) = sub_1000764D4();
  sub_100074FA0(v11);
  v35 = v49;
  sub_100078F5C(v15, v11, v49);
  (*(v54 + 8))(v11, v55);
  (*(v51 + 8))(v24, v52);
  KeyPath = swift_getKeyPath();
  v37 = type metadata accessor for BookCoverView();
  v39 = v57;
  v38 = v58;
  if (*(v34 + *(v37 + 28) + 80))
  {
    v40 = &enum case for LayoutDirection.rightToLeft(_:);
  }

  else
  {
    v40 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v41 = v59;
  (*(v58 + 104))(v57, *v40, v59);
  v42 = &v32[*(v29 + 44)];
  v43 = sub_100002840(&qword_1000B00E0, &qword_10008BF70);
  (*(v38 + 32))(v42 + *(v43 + 28), v39, v41);
  *v42 = KeyPath;
  sub_10000C1E0(v35, v32, &qword_1000B00D0, &qword_10008BF30);
  [v50 size];
  sub_1000807F8();
  sub_100080F48();
  sub_1000807E8();
  v44 = v60;
  sub_10000C1E0(v32, v60, &qword_1000B00D8, &qword_10008BF38);
  v45 = (v44 + *(sub_100002840(&qword_1000B00E8, &qword_10008BF78) + 36));
  v46 = v62;
  *v45 = v61;
  v45[1] = v46;
  result = *&v63;
  v45[2] = v63;
  return result;
}

uint64_t sub_100078F5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a1;
  v162 = a3;
  v136 = sub_100002840(&qword_1000B00F0, &qword_10008BF80);
  v4 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v121 = &v116 - v5;
  v126 = sub_100002840(&qword_1000B00F8, &qword_10008BF88);
  v6 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v122 = &v116 - v7;
  v133 = sub_100002840(&qword_1000B0100, &qword_10008BF90);
  v8 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v135 = &v116 - v9;
  v124 = sub_100002840(&qword_1000B0108, &qword_10008BF98);
  v10 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v116 - v11;
  v134 = sub_100002840(&qword_1000B0110, &qword_10008BFA0);
  v12 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v127 = &v116 - v13;
  v123 = sub_100002840(&qword_1000B0118, &qword_10008BFA8);
  v14 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v120 = &v116 - v15;
  v161 = sub_100002840(&qword_1000B0120, &qword_10008BFB0);
  v16 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v132 = &v116 - v17;
  v159 = sub_100002840(&qword_1000B0128, &qword_10008BFB8);
  v18 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v160 = &v116 - v19;
  v155 = sub_100080778();
  v141 = *(v155 - 8);
  v20 = *(v141 + 64);
  v21 = __chkstk_darwin(v155);
  v119 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v140 = &v116 - v23;
  v154 = sub_100002840(&qword_1000B0130, &qword_10008BFC0);
  v130 = *(v154 - 8);
  v24 = *(v130 + 64);
  __chkstk_darwin(v154);
  v129 = &v116 - v25;
  v148 = sub_100080758();
  v139 = *(v148 - 8);
  v26 = *(v139 + 64);
  v27 = __chkstk_darwin(v148);
  v118 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v138 = &v116 - v29;
  v146 = sub_100002840(&qword_1000B0138, &qword_10008BFC8);
  v131 = *(v146 - 8);
  v30 = *(v131 + 64);
  __chkstk_darwin(v146);
  v143 = &v116 - v31;
  v150 = sub_100002840(&qword_1000B0140, &qword_10008BFD0);
  v32 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v153 = &v116 - v33;
  v142 = sub_100002840(&qword_1000B0148, &qword_10008BFD8);
  v34 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v144 = &v116 - v35;
  v152 = sub_100002840(&qword_1000B0150, &qword_10008BFE0);
  v36 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v145 = &v116 - v37;
  v147 = sub_100080738();
  v137 = *(v147 - 8);
  v38 = *(v137 + 64);
  v39 = __chkstk_darwin(v147);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v116 - v42;
  v149 = sub_100002840(&qword_1000B0158, &qword_10008BFE8);
  v128 = *(v149 - 8);
  v44 = *(v128 + 64);
  __chkstk_darwin(v149);
  v46 = &v116 - v45;
  v158 = sub_100002840(&qword_1000B0160, &qword_10008BFF0);
  v47 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v151 = &v116 - v48;
  v49 = sub_100081008();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v116 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = &v116 - v55;
  (*(v50 + 16))(&v116 - v55, a2, v49);
  sub_100080FE8();
  sub_10007B510(&qword_1000B0168, &type metadata accessor for WidgetRenderingMode);
  LOBYTE(a2) = sub_100081148();
  v57 = *(v50 + 8);
  v57(v54, v49);
  if ((a2 & 1) == 0)
  {
    sub_100080FD8();
    v58 = sub_100081148();
    v57(v54, v49);
    v57(v56, v49);
    if (v58)
    {
      goto LABEL_4;
    }

    if (v156)
    {
      v83 = v132;
      if (v156 != 1)
      {
        v106 = v140;
        sub_100080768();
        v107 = v141;
        v108 = v155;
        (*(v141 + 16))(v119, v106, v155);
        v109 = *(v136 + 36);
        sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect);
        v110 = v121;
        sub_100080788();
        (*(v107 + 8))(v106, v108);
        v111 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
        (*(*(v111 - 8) + 16))(v110, v157, v111);
        v112 = &qword_1000B00F0;
        v113 = &qword_10008BF80;
        sub_1000055FC(v110, v135, &qword_1000B00F0, &qword_10008BF80);
        swift_storeEnumTagMultiPayload();
        sub_10007AF4C();
        sub_10007B178();
        sub_100080AD8();
        v114 = v110;
LABEL_16:
        sub_100005B2C(v114, v112, v113);
        v98 = &qword_1000B0120;
        v99 = &qword_10008BFB0;
        sub_1000055FC(v83, v160, &qword_1000B0120, &qword_10008BFB0);
        swift_storeEnumTagMultiPayload();
        sub_10007B248();
        sub_10007B558();
        sub_100080AD8();
        v100 = v83;
        return sub_100005B2C(v100, v98, v99);
      }

      sub_100080728();
      v84 = v137;
      v85 = v147;
      (*(v137 + 16))(v41, v43, v147);
      v86 = *(v123 + 36);
      sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect);
      v87 = v120;
      sub_100080788();
      (*(v84 + 8))(v43, v85);
      v88 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      (*(*(v88 - 8) + 16))(v87, v157, v88);
      v112 = &qword_1000B0118;
      v113 = &qword_10008BFA8;
      sub_1000055FC(v87, v125, &qword_1000B0118, &qword_10008BFA8);
      swift_storeEnumTagMultiPayload();
      sub_10007AFD8();
      sub_10007B0A8();
      v89 = v127;
      sub_100080AD8();
      sub_1000055FC(v89, v135, &qword_1000B0110, &qword_10008BFA0);
      swift_storeEnumTagMultiPayload();
      sub_10007AF4C();
      sub_10007B178();
    }

    else
    {
      v101 = v138;
      sub_100080748();
      v102 = v139;
      v103 = v148;
      (*(v139 + 16))(v118, v101, v148);
      v104 = *(v126 + 36);
      sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect);
      v87 = v122;
      sub_100080788();
      (*(v102 + 8))(v101, v103);
      v105 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      (*(*(v105 - 8) + 16))(v87, v157, v105);
      v112 = &qword_1000B00F8;
      v113 = &qword_10008BF88;
      sub_1000055FC(v87, v125, &qword_1000B00F8, &qword_10008BF88);
      swift_storeEnumTagMultiPayload();
      sub_10007AFD8();
      sub_10007B0A8();
      v89 = v127;
      sub_100080AD8();
      sub_1000055FC(v89, v135, &qword_1000B0110, &qword_10008BFA0);
      swift_storeEnumTagMultiPayload();
      sub_10007AF4C();
      sub_10007B178();
      v83 = v132;
    }

    sub_100080AD8();
    sub_100005B2C(v89, &qword_1000B0110, &qword_10008BFA0);
    v114 = v87;
    goto LABEL_16;
  }

  v57(v56, v49);
LABEL_4:
  if (v156)
  {
    v59 = v151;
    if (v156 == 1)
    {
      sub_100080728();
      v60 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v62 = sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect);
      v63 = v46;
      v117 = v46;
      v64 = v147;
      sub_100080D38();
      (*(v137 + 8))(v43, v64);
      v65 = v128;
      (*(v128 + 16))(v144, v63, v149);
      swift_storeEnumTagMultiPayload();
      v163 = v60;
      v164 = v64;
      v165 = OpaqueTypeConformance2;
      v166 = v62;
      swift_getOpaqueTypeConformance2();
      v66 = sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect);
      v163 = v60;
      v164 = v148;
      v165 = OpaqueTypeConformance2;
      v166 = v66;
      swift_getOpaqueTypeConformance2();
      v67 = v145;
      v68 = v149;
      sub_100080AD8();
      sub_1000055FC(v67, v153, &qword_1000B0150, &qword_10008BFE0);
      swift_storeEnumTagMultiPayload();
      sub_10007B380();
      v69 = sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect);
      v163 = v60;
      v164 = v155;
      v165 = OpaqueTypeConformance2;
      v166 = v69;
      swift_getOpaqueTypeConformance2();
      sub_100080AD8();
      sub_100005B2C(v67, &qword_1000B0150, &qword_10008BFE0);
      (*(v65 + 8))(v117, v68);
    }

    else
    {
      v90 = v140;
      sub_100080768();
      v91 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
      v92 = swift_getOpaqueTypeConformance2();
      v93 = sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect);
      v94 = v129;
      v95 = v155;
      sub_100080D38();
      (*(v141 + 8))(v90, v95);
      v96 = v130;
      v97 = v154;
      (*(v130 + 16))(v153, v94, v154);
      swift_storeEnumTagMultiPayload();
      sub_10007B380();
      v163 = v91;
      v164 = v95;
      v165 = v92;
      v166 = v93;
      swift_getOpaqueTypeConformance2();
      sub_100080AD8();
      (*(v96 + 8))(v94, v97);
    }
  }

  else
  {
    v70 = v138;
    sub_100080748();
    v71 = sub_100002840(&qword_1000B00C8, &qword_10008BF28);
    v72 = swift_getOpaqueTypeConformance2();
    v73 = sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect);
    v74 = v143;
    v75 = v148;
    sub_100080D38();
    (*(v139 + 8))(v70, v75);
    v76 = v131;
    v77 = v74;
    v78 = v146;
    (*(v131 + 16))(v144, v77, v146);
    swift_storeEnumTagMultiPayload();
    v79 = sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect);
    v163 = v71;
    v164 = v147;
    v165 = v72;
    v166 = v79;
    swift_getOpaqueTypeConformance2();
    v163 = v71;
    v164 = v75;
    v165 = v72;
    v166 = v73;
    swift_getOpaqueTypeConformance2();
    v80 = v145;
    v81 = v78;
    sub_100080AD8();
    sub_1000055FC(v80, v153, &qword_1000B0150, &qword_10008BFE0);
    swift_storeEnumTagMultiPayload();
    sub_10007B380();
    v82 = sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect);
    v163 = v71;
    v164 = v155;
    v165 = v72;
    v166 = v82;
    swift_getOpaqueTypeConformance2();
    v59 = v151;
    sub_100080AD8();
    sub_100005B2C(v80, &qword_1000B0150, &qword_10008BFE0);
    (*(v76 + 8))(v143, v81);
  }

  v98 = &qword_1000B0160;
  v99 = &qword_10008BFF0;
  sub_1000055FC(v59, v160, &qword_1000B0160, &qword_10008BFF0);
  swift_storeEnumTagMultiPayload();
  sub_10007B248();
  sub_10007B558();
  sub_100080AD8();
  v100 = v59;
  return sub_100005B2C(v100, v98, v99);
}

uint64_t sub_10007A630@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = sub_100080B68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AFF70, &qword_10008BE48);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v12 = sub_100002840(&qword_1000AFF78, &qword_10008BE50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v20 - v15;
  sub_100075188(v2, v11);
  sub_100080B38();
  v17 = sub_10007A8A8();
  sub_100080E08();
  (*(v4 + 8))(v7, v3);
  sub_100005B2C(v11, &qword_1000AFF70, &qword_10008BE48);
  v20[4] = sub_1000783F8();
  v20[5] = v18;
  v20[2] = v8;
  v20[3] = v17;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  sub_100080DD8();

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_10007A8A8()
{
  result = qword_1000AFF80;
  if (!qword_1000AFF80)
  {
    sub_100004FC8(&qword_1000AFF70, &qword_10008BE48);
    sub_10007A92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFF80);
  }

  return result;
}

unint64_t sub_10007A92C()
{
  result = qword_1000AFF88;
  if (!qword_1000AFF88)
  {
    sub_100004FC8(&qword_1000AFF90, &qword_10008BE58);
    sub_10007A9E4();
    sub_100005C98(&qword_1000AFFD0, &qword_1000AFFD8, &unk_10008BE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFF88);
  }

  return result;
}

unint64_t sub_10007A9E4()
{
  result = qword_1000AFF98;
  if (!qword_1000AFF98)
  {
    sub_100004FC8(&qword_1000AFFA0, &qword_10008BE60);
    sub_100004FC8(&qword_1000AFFA8, &qword_10008BE68);
    sub_100005C98(&qword_1000AFFB0, &qword_1000AFFA8, &qword_10008BE68);
    swift_getOpaqueTypeConformance2();
    sub_100004FC8(&qword_1000AFFB8, &qword_10008BE70);
    sub_100080AF8();
    sub_100005C98(&qword_1000AFFC0, &qword_1000AFFB8, &qword_10008BE70);
    sub_10007B510(&qword_1000AFFC8, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFF98);
  }

  return result;
}

unint64_t sub_10007ABA0()
{
  result = qword_1000B0008;
  if (!qword_1000B0008)
  {
    sub_100004FC8(&qword_1000B0000, &qword_10008BEA8);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0030, &qword_1000B0038, &qword_10008BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0008);
  }

  return result;
}

unint64_t sub_10007AC58()
{
  result = qword_1000B0010;
  if (!qword_1000B0010)
  {
    sub_100004FC8(&qword_1000B0018, &qword_10008BEB0);
    sub_100005C98(&qword_1000B0020, &qword_1000B0028, &qword_10008BEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0010);
  }

  return result;
}

unint64_t sub_10007ADC8()
{
  result = qword_1000B0068;
  if (!qword_1000B0068)
  {
    sub_100004FC8(&qword_1000B0060, &qword_10008BEE0);
    sub_10007AC58();
    sub_100005C98(&qword_1000B0070, &qword_1000B0078, &qword_10008BEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0068);
  }

  return result;
}

unint64_t sub_10007AE80()
{
  result = qword_1000B00A8;
  if (!qword_1000B00A8)
  {
    sub_100004FC8(&qword_1000B0088, &qword_10008BEF8);
    sub_10007AC58();
    sub_10007B510(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B00A8);
  }

  return result;
}

unint64_t sub_10007AF4C()
{
  result = qword_1000B0178;
  if (!qword_1000B0178)
  {
    sub_100004FC8(&qword_1000B0110, &qword_10008BFA0);
    sub_10007AFD8();
    sub_10007B0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0178);
  }

  return result;
}

unint64_t sub_10007AFD8()
{
  result = qword_1000B0180;
  if (!qword_1000B0180)
  {
    sub_100004FC8(&qword_1000B0118, &qword_10008BFA8);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000B0188, &qword_1000B0190, &qword_10008BFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0180);
  }

  return result;
}

unint64_t sub_10007B0A8()
{
  result = qword_1000B0198;
  if (!qword_1000B0198)
  {
    sub_100004FC8(&qword_1000B00F8, &qword_10008BF88);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000B01A0, &qword_1000B01A8, &qword_10008C000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0198);
  }

  return result;
}

unint64_t sub_10007B178()
{
  result = qword_1000B01B0;
  if (!qword_1000B01B0)
  {
    sub_100004FC8(&qword_1000B00F0, &qword_10008BF80);
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000B01B8, &qword_1000B01C0, &unk_10008C008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01B0);
  }

  return result;
}

unint64_t sub_10007B248()
{
  result = qword_1000B01C8;
  if (!qword_1000B01C8)
  {
    sub_100004FC8(&qword_1000B0160, &qword_10008BFF0);
    sub_10007B380();
    sub_100004FC8(&qword_1000B00C8, &qword_10008BF28);
    sub_100080778();
    swift_getOpaqueTypeConformance2();
    sub_10007B510(&qword_1000B0170, &type metadata accessor for LegacyPDFCoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01C8);
  }

  return result;
}

unint64_t sub_10007B380()
{
  result = qword_1000B01D0;
  if (!qword_1000B01D0)
  {
    sub_100004FC8(&qword_1000B0150, &qword_10008BFE0);
    sub_100004FC8(&qword_1000B00C8, &qword_10008BF28);
    sub_100080738();
    swift_getOpaqueTypeConformance2();
    sub_10007B510(&qword_1000B01D8, &type metadata accessor for BookCoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100080758();
    sub_10007B510(&qword_1000B01E0, &type metadata accessor for AudiobookCoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01D0);
  }

  return result;
}

uint64_t sub_10007B510(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007B558()
{
  result = qword_1000B01E8;
  if (!qword_1000B01E8)
  {
    sub_100004FC8(&qword_1000B0120, &qword_10008BFB0);
    sub_10007AF4C();
    sub_10007B178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B01E8);
  }

  return result;
}

uint64_t sub_10007B5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B654()
{
  v1 = type metadata accessor for BookCoverView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100081008();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = sub_100080308();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = &v5[*(v1 + 28)];
  v11 = *(v10 + 1);

  v12 = *(v10 + 5);

  v13 = *(v10 + 9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10007B7E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BookCoverView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100078964(a1, v6, v7, a2);
}

uint64_t sub_10007B868(uint64_t a1)
{
  type metadata accessor for BDSLibraryContentAssetType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007B8C8()
{
  result = qword_1000B0200;
  if (!qword_1000B0200)
  {
    sub_100004FC8(&qword_1000B0208, &unk_10008C028);
    sub_100004FC8(&qword_1000AFF70, &qword_10008BE48);
    sub_10007A8A8();
    swift_getOpaqueTypeConformance2();
    sub_10007B510(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0200);
  }

  return result;
}

uint64_t sub_10007BA14()
{
  v1 = *(v0 + *(type metadata accessor for InvertImagesAppEntity() + 24));
}

uint64_t sub_10007BA48()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B8078);
  v26[1] = sub_10000A480(v23, qword_1000B8078);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_10007BE5C()
{
  v0 = sub_1000801F8();
  sub_10000A794(v0, qword_1000B8090);
  sub_10000A480(v0, qword_1000B8090);
  return sub_1000801D8();
}

uint64_t sub_10007BEC0()
{
  v0 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  sub_10000A794(v0, qword_1000B80A8);
  v1 = sub_10000A480(v0, qword_1000B80A8);
  sub_10007FE78();
  v2 = sub_10007FE88();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10007BF80()
{
  result = swift_getKeyPath();
  qword_1000B80C0 = result;
  return result;
}

uint64_t sub_10007BFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_100002840(&qword_1000AF438, &qword_10008B238) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_100002840(&qword_1000AF440, &qword_10008B240) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(sub_100002840(&qword_1000B03E0, &qword_10008C6F8) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_10007FBF8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for InvertImagesAppEntity();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_100002840(&qword_1000B03E8, &qword_10008C700);
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10007C1C4, 0, 0);
}

uint64_t sub_10007C1C4()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_10007FCE8();
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_10007E33C(&qword_1000B0268);
  *v4 = v0;
  v4[1] = sub_10007C2AC;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[11];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v7, sub_10007EEE0, 0, v8, v5);
}

uint64_t sub_10007C2AC()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10007C3A8, 0, 0);
}

uint64_t sub_10007C3A8()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_10007FCE8();
  sub_10007FCE8();
  *(v0 + 177) = *(v0 + 176);
  if (qword_1000AC790 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B80C0;
  *(v0 + 152) = qword_1000B80C0;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  v7 = sub_100005C98(&qword_1000B03B0, &qword_1000B0350, &qword_10008C658);
  *v6 = v0;
  v6[1] = sub_10007C4F8;
  v8 = *(v0 + 96);

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 177, v4, &type metadata for Bool, v7);
}

uint64_t sub_10007C4F8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 168) = v0;

  sub_10007ED68(v4);

  if (v0)
  {
    v5 = sub_10006581C;
  }

  else
  {
    v5 = sub_10007C64C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007C64C()
{
  v15 = v0[17];
  v2 = v0[14];
  v1 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v3 = v0[11];
  v4 = v0[10];
  v5 = v0[7];
  v18 = v0[8];
  v19 = v0[12];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v16 = v0[2];
  v17 = v0[9];
  sub_10007FCE8();
  v9 = sub_1000800C8();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_100080108();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_10004E8A4();
  sub_10007E33C(&qword_1000B0278);
  sub_10007FBC8();
  (*(v1 + 16))(v13, v15, v2);
  sub_10007FBE8();
  sub_10007FC18();
  (*(v17 + 8))(v4, v18);
  sub_10007ED68(v14);
  (*(v1 + 8))(v15, v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10007C8D8()
{
  v0 = sub_100002840(&qword_1000B03F0, &qword_10008C708);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000AC790 != -1)
  {
    swift_once();
  }

  sub_10007FEE8();

  type metadata accessor for InvertImagesAppEntity();
  sub_10007E33C(&qword_1000B0278);
  sub_100005C98(&qword_1000B03F8, &qword_1000B03F0, &qword_10008C708);
  sub_10007FED8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10007CA70(uint64_t a1)
{
  v3 = type metadata accessor for InvertImagesAppEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_10007EE7C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007FCF8();
  return sub_10007ED68(a1);
}

void (*sub_10007CB00(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_10007FCD8();
  return sub_100065BC0;
}

void (*sub_10007CB74(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10007FCD8();
  return sub_100068B00;
}

uint64_t sub_10007CBE8()
{
  if (qword_1000AC790 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10007CC48()
{
  result = qword_1000B0230;
  if (!qword_1000B0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0230);
  }

  return result;
}

unint64_t sub_10007CCA0()
{
  result = qword_1000B0238;
  if (!qword_1000B0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0238);
  }

  return result;
}

uint64_t sub_10007CDB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AC788 != -1)
  {
    swift_once();
  }

  v2 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  v3 = sub_10000A480(v2, qword_1000B80A8);

  return sub_10007EE0C(v3, a1);
}

uint64_t sub_10007CE34(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB6C;

  return sub_10007BFA8(a1, v5, v4);
}

uint64_t sub_10007CEE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007E85C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10007CF28()
{
  result = qword_1000B0240;
  if (!qword_1000B0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0240);
  }

  return result;
}

uint64_t type metadata accessor for InvertImagesAppEntity()
{
  result = qword_1000B0338;
  if (!qword_1000B0338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D01C()
{
  v1 = *(v0 + 16);
  sub_10007E810();
  v2 = sub_100081478();
  v3 = [v2 BKSettingFilterBrightImages];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10007D0D4()
{
  v1 = *(v0 + 16);
  sub_10007E810();
  v2 = sub_100081478();
  [v2 setBKSettingFilterBrightImages:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10007D15C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v73 = &v53 - v3;
  v4 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v61 = &v53 - v6;
  v60 = sub_1000801E8();
  v76 = *(v60 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v60);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_100080478();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v59);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = sub_1000811C8();
  v53 = v17;
  v75 = *(v17 - 8);
  v18 = v75;
  v19 = *(v75 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  v63 = sub_1000801F8();
  v54 = *(v63 - 8);
  v58 = v54;
  v25 = *(v54 + 64);
  v26 = __chkstk_darwin(v63);
  v56 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v55 = &v53 - v28;
  sub_100081158();
  sub_100080448();
  v29 = *(v18 + 16);
  v71 = v18 + 16;
  v72 = v29;
  v30 = v22;
  v29(v22, v24, v17);
  v31 = v10;
  v32 = *(v10 + 16);
  v69 = v10 + 16;
  v70 = v32;
  v57 = v14;
  v33 = v59;
  v32(v14, v16, v59);
  v68 = type metadata accessor for BundleFinder();
  *v9 = v68;
  v67 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v34 = *(v76 + 104);
  v76 += 104;
  v66 = v34;
  v35 = v60;
  v34(v9);
  sub_100080208();
  v36 = *(v31 + 8);
  v64 = v31 + 8;
  v65 = v36;
  v36(v16, v33);
  v37 = *(v75 + 8);
  v75 += 8;
  v62 = v37;
  v38 = v53;
  v37(v24, v53);
  v39 = v61;
  sub_1000801D8();
  v40 = v58;
  (*(v58 + 56))(v39, 0, 1, v63);
  v41 = sub_10007FF18();
  (*(*(v41 - 8) + 56))(v73, 1, 1, v41);
  sub_100002840(&qword_1000AEDA8, &qword_10008B1F0);
  v42 = *(v54 + 72);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100085C00;
  sub_100081158();
  sub_100080448();
  v45 = v38;
  v72(v30, v24, v38);
  v46 = v59;
  v70(v57, v16, v59);
  *v9 = v68;
  v66(v9, v67, v35);
  v47 = v56;
  sub_100080208();
  v65(v16, v46);
  v62(v24, v45);
  (*(v58 + 32))(v44 + v43, v47, v63);
  sub_1000801D8();
  v48 = v74;
  sub_10007FF28();
  v49 = type metadata accessor for InvertImagesAppEntity();
  v50 = (v48 + *(v49 + 20));
  *v50 = 0xD00000000000001ALL;
  v50[1] = 0x80000001000854C0;
  v51 = *(v49 + 24);
  sub_100002840(&qword_1000B0228, &qword_10008C050);
  sub_100081158();
  sub_100080448();
  v72(v30, v24, v45);
  v70(v57, v16, v46);
  *v9 = v68;
  v66(v9, v67, v60);
  sub_100080208();
  v65(v16, v46);
  v62(v24, v45);
  sub_100005C98(&qword_1000B03B0, &qword_1000B0350, &qword_10008C658);
  result = sub_100080178();
  *(v74 + v51) = result;
  return result;
}

uint64_t sub_10007DA1C()
{
  sub_10007D15C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10007DA80()
{
  result = qword_1000B0250;
  if (!qword_1000B0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0250);
  }

  return result;
}

uint64_t sub_10007DAD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10007E020();
  *v5 = v2;
  v5[1] = sub_1000668B4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10007DB88()
{
  result = qword_1000B0258;
  if (!qword_1000B0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0258);
  }

  return result;
}

unint64_t sub_10007DBE0()
{
  result = qword_1000B0260;
  if (!qword_1000B0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0260);
  }

  return result;
}

uint64_t sub_10007DC34(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10007E020();
  *v6 = v2;
  v6[1] = sub_100068B20;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10007DCE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10007E020();
  *v5 = v2;
  v5[1] = sub_100068AF8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10007DD9C()
{
  result = qword_1000B0270;
  if (!qword_1000B0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0270);
  }

  return result;
}

unint64_t sub_10007DDF4()
{
  result = qword_1000B0280;
  if (!qword_1000B0280)
  {
    sub_100004FC8(&qword_1000B0288, qword_10008C2F0);
    sub_10007E33C(&qword_1000B0278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0280);
  }

  return result;
}

uint64_t sub_10007DE94(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10007DA80();
  *v6 = v2;
  v6[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10007E020()
{
  result = qword_1000B02A8;
  if (!qword_1000B02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B02A8);
  }

  return result;
}

uint64_t sub_10007E074()
{
  v0 = qword_1000B0210;

  return v0;
}

uint64_t sub_10007E1B4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10000A480(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10007E2A0(uint64_t a1)
{
  v2 = sub_10007E33C(&qword_1000B0268);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10007E33C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InvertImagesAppEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007E380(uint64_t a1)
{
  v2 = sub_10007E33C(&qword_1000B02C0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10007E40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007FF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007E4E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007FF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10007E59C()
{
  sub_10007FF58();
  if (v0 <= 0x3F)
  {
    sub_10007E628();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007E628()
{
  if (!qword_1000B0348)
  {
    type metadata accessor for InvertImagesAppEntity();
    sub_100004FC8(&qword_1000B0350, &qword_10008C658);
    sub_10007E33C(&qword_1000B0268);
    sub_100005C98(&qword_1000B0358, &qword_1000B0350, &qword_10008C658);
    sub_10007E724();
    v0 = sub_100080188();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B0348);
    }
  }
}

unint64_t sub_10007E724()
{
  result = qword_1000B0360;
  if (!qword_1000B0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0360);
  }

  return result;
}

unint64_t sub_10007E810()
{
  result = qword_1000B03B8;
  if (!qword_1000B03B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B03B8);
  }

  return result;
}

uint64_t sub_10007E85C()
{
  v0 = sub_100002840(&qword_1000B03C0, &unk_10008C6C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v40 = v32 - v2;
  v41 = sub_100080078();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v41);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v32 - v12;
  v14 = sub_100002840(&qword_1000B03C8, &qword_10008C6D8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v32 - v16;
  v32[1] = v32 - v16;
  v18 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v32 - v20;
  v33 = v32 - v20;
  v22 = sub_1000801F8();
  v39 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v37 = sub_100002840(&qword_1000B03D0, &qword_10008C6E0);
  sub_1000801D8();
  v38 = *(v23 + 56);
  v38(v21, 1, 1, v22);
  v25 = type metadata accessor for InvertImagesAppEntity();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_10007FBF8();
  v27 = *(*(v26 - 8) + 56);
  v27(v13, 1, 1, v26);
  v27(v11, 1, 1, v26);
  v36 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v3 + 104);
  v34 = v3 + 104;
  v35 = v28;
  v28(v6);
  sub_10007E33C(&qword_1000B0268);
  v29 = v33;
  v37 = sub_10007FD28();
  sub_100002840(&qword_1000B03D8, &qword_10008C6E8);
  sub_1000801D8();
  v38(v29, 1, 1, v39);
  v42 = 2;
  v30 = sub_100081398();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v27(v13, 1, 1, v26);
  v35(v6, v36, v41);
  sub_10007FD38();
  return v37;
}

uint64_t sub_10007ED68(uint64_t a1)
{
  v2 = type metadata accessor for InvertImagesAppEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007EDC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for InvertImagesAppEntity() + 24));
}

uint64_t sub_10007EE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AF468, &qword_10008B288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvertImagesAppEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EF24@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[16];
  if (v6)
  {
    if (v1[15])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 0xE000000000000000;
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v8 = v1[5];
      v9 = a1;
      v10 = sub_100081618();
      a1 = v9;
      v11 = v10;
      v2 = v8;
      v12 = v11 ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

unint64_t sub_10007EFE0()
{
  result = qword_1000B0400;
  if (!qword_1000B0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0400);
  }

  return result;
}

uint64_t sub_10007F048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007F108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MediumEmptyStateView()
{
  result = qword_1000B0460;
  if (!qword_1000B0460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007F1F8()
{
  result = type metadata accessor for EmptyStateView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007F290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 20);
  v7 = type metadata accessor for EmptyStateView(0);
  sub_100024D24(v2 + v6, a2 + v7[7]);
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v7[5]);
  *v8 = v5;
  v8[1] = v4;
  v9 = (a2 + v7[6]);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
}

double sub_10007F37C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    *&v43 = a1;
    *(&v43 + 1) = a2;
    sub_1000057D0();

    v4 = sub_100080D28();
    v6 = v5;
    v8 = v7;
    if (qword_1000AC798 != -1)
    {
      swift_once();
    }

    v9 = sub_100080CF8();
    v11 = v10;
    v13 = v12;
    sub_10000EF24(v4, v6, v8 & 1);

    if (qword_1000AC7A8 != -1)
    {
      swift_once();
    }

    v14 = sub_100080CD8();
    sub_10000A480(v14, qword_1000B04A8);
    if (qword_1000AC7B0 != -1)
    {
      swift_once();
    }

    v15 = sub_100002840(&qword_1000AE358, &qword_100088360);
    sub_10000A480(v15, qword_1000B04C0);
    sub_100080C98();
    if (qword_1000AC7A0 != -1)
    {
      swift_once();
    }

    sub_100080CA8();

    v16 = sub_100080D18();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_10000EF24(v9, v11, v13 & 1);

    *v28 = v16;
    *&v28[8] = v18;
    v28[16] = v20 & 1;
    *(&v29 + 4) = v22;
    sub_1000721E4(v28);
  }

  else
  {
    v23 = sub_100080B08();
    sub_100080F48();
    sub_1000808F8();
    *&v35[84] = v41;
    *&v35[100] = v42;
    *&v35[52] = v39;
    *&v35[68] = v40;
    *&v35[20] = v37;
    *&v35[36] = v38;
    *&v35[4] = v36;
    v31 = *&v35[48];
    v30 = *&v35[32];
    v29 = *&v35[16];
    *&v28[4] = *v35;
    *v28 = v23;
    v34 = HIDWORD(v42);
    v33[1] = *&v35[96];
    v33[0] = *&v35[80];
    v32 = *&v35[64];
    sub_100071EF8(v28);
  }

  sub_100002840(&qword_1000AFB80, &unk_10008BB30);
  sub_10007F958();
  sub_100080AD8();
  v24 = v48;
  a3[4] = v47;
  a3[5] = v24;
  a3[6] = v49[0];
  *(a3 + 105) = *(v49 + 9);
  v25 = v44;
  *a3 = v43;
  a3[1] = v25;
  result = *&v45;
  v27 = v46;
  a3[2] = v45;
  a3[3] = v27;
  return result;
}

uint64_t sub_10007F73C()
{
  result = sub_100080E48();
  qword_1000B0498 = result;
  return result;
}

uint64_t sub_10007F75C()
{
  result = sub_100080C88();
  qword_1000B04A0 = v1;
  return result;
}

uint64_t sub_10007F77C()
{
  v0 = sub_100080CD8();
  sub_10000A794(v0, qword_1000B04A8);
  v1 = sub_10000A480(v0, qword_1000B04A8);
  v2 = enum case for Font.TextStyle.subheadline(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10007F804()
{
  v0 = sub_100002840(&qword_1000AE358, &qword_100088360);
  sub_10000A794(v0, qword_1000B04C0);
  v1 = sub_10000A480(v0, qword_1000B04C0);
  if (_s20BooksWidgetExtension16FallBackFontSpecV03usedeF0SbyFZ_0())
  {
    v2 = sub_100080C58();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = v1;
    v6 = 1;
  }

  else
  {
    v7 = enum case for Font.Design.serif (_:);
    v8 = sub_100080C58();
    v10 = *(v8 - 8);
    (*(v10 + 104))(v1, v7, v8);
    v3 = *(v10 + 56);
    v5 = v1;
    v6 = 0;
    v4 = v8;
  }

  return v3(v5, v6, 1, v4);
}

unint64_t sub_10007F958()
{
  result = qword_1000AFB88;
  if (!qword_1000AFB88)
  {
    sub_100004FC8(&qword_1000AFB80, &unk_10008BB30);
    sub_10005C128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFB88);
  }

  return result;
}

unint64_t sub_10007F9E8()
{
  result = qword_1000B04D8;
  if (!qword_1000B04D8)
  {
    sub_100004FC8(&qword_1000B04E0, &unk_10008C940);
    sub_10007F958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B04D8);
  }

  return result;
}