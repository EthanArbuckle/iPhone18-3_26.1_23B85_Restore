uint64_t sub_431DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = &v188;
  v104 = &v180;
  v105 = v169;
  v113 = a1;
  v106 = a2;
  v114 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v189 = 0;
  v185 = 0;
  v184 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v107 = type metadata accessor for RenderedGlyphView();
  v109 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107 - 8);
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v65 - v111;
  __chkstk_darwin(v65 - v111);
  v110 = v65 - v111;
  __chkstk_darwin(v2);
  v112 = v65 - v111;
  v197 = v65 - v111;
  v115 = sub_1A88(&qword_91E08);
  v116 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v114);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = (v65 - v118);
  __chkstk_darwin(v3);
  v119 = (v65 - v118);
  v196 = v65 - v118;
  v195 = v4;
  v120 = sub_7D184();
  v121 = sub_7D174();
  v122 = sub_7D154();
  v123 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v191 = sub_7CB84();
  v192 = v6 & 1;
  sub_1991C(&v191, &type metadata for Spacer, &v193);
  if (*(v113 + 104) == 1)
  {
    v7 = v113;
    v8 = v103;
    *(v103 + 17) = *v113;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    *(v8 + 21) = v7[4];
    *(v8 + 20) = v11;
    *(v8 + 19) = v10;
    *(v8 + 18) = v9;
    v79 = v198;
    sub_403E8(v198, &v148);
    v146 = sub_43C4C(v79);
    v147 = v12;
    v145 = sub_421A8();
    v82 = sub_499D4();
    v80 = &unk_8F210;
    v81 = &type metadata for Color;
    v83 = &protocol witness table for Color;
    v144 = sub_43CD4();
    v143 = v144;
    v84 = &v145;
    v85 = &v146;
    sub_43CF8(&v145, v144, v80, v81, v82, v83, &v149);
    sub_B068();
    sub_49664(v85);
    v138 = v149;
    v139 = v150;
    v140 = v151;
    v141 = v152;
    v142 = v153;
    v98 = sub_1A88(&qword_91E10);
    v99 = sub_4D880();
    v102 = &v154;
    v86 = &v138;
    sub_1991C(&v138, v98, &v154);
    sub_4E398(v86);
    v87 = v154;
    v88 = v155;
    v89 = v156;
    v90 = v157;
    v91 = HIBYTE(v157);
    v13 = v155;

    v129 = v87;
    v130 = v88;
    v131 = v89;
    v132 = v90;
    v133 = v91;
    v101 = &v134;
    v92 = &v129;
    sub_1991C(&v129, v98, &v134);
    sub_4E398(v92);
    v93 = v134;
    v94 = v135;
    v95 = v136;
    v96 = v137;
    v97 = HIBYTE(v137);
    v14 = v135;

    v124 = v93;
    v125 = v94;
    v126 = v95;
    v127 = v96;
    v128 = v97;
    v15 = sub_46198();
    v100 = &v124;
    sub_19980(&v124, v98, v107, v99, v15, v117);
    sub_4E398(v100);
    sub_4D908(v117, v119);
    sub_4E398(v101);
    sub_4E398(v102);
  }

  else
  {
    v16 = v103;
    v17 = v113;
    *(v103 + 22) = *v113;
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    *(v16 + 26) = v17[4];
    *(v16 + 25) = v20;
    *(v16 + 24) = v19;
    *(v16 + 23) = v18;
    v77 = v199;
    sub_403E8(v199, &v190);
    sub_40F20(v77, v110);
    v78 = sub_46198();
    sub_1991C(v110, v107, v112);
    sub_46218(v110);
    v189 = v110;
    sub_4850C(v112, v108);
    sub_1991C(v108, v107, v110);
    sub_46218(v108);
    sub_4850C(v110, v108);
    v76 = sub_1A88(&qword_91E10);
    v21 = sub_4D880();
    sub_19A78(v108, v76, v107, v21, v78, v117);
    sub_46218(v108);
    sub_4D908(v117, v119);
    sub_46218(v110);
    sub_46218(v112);
  }

  v65[0] = 0;
  v182 = sub_7CB84();
  v183 = v22 & 1;
  v70 = &type metadata for Spacer;
  v72 = &protocol witness table for Spacer;
  sub_1991C(&v182, &type metadata for Spacer, &v184);
  v65[3] = sub_7C274();
  v65[4] = v65;
  __chkstk_darwin(v65);
  v65[1] = &v65[-4];
  v65[-2] = v23;
  v65[2] = sub_1A88(&qword_91E20);
  sub_4DAAC();
  sub_7CB74();
  v24 = v104;
  v25 = v105;
  v26 = v105[23];
  v27 = v105[24];
  *(v104 + 20) = v105[25];
  *(v24 + 19) = v27;
  *(v24 + 18) = v26;
  v28 = v25[26];
  v29 = v25[27];
  v30 = v25[28];
  v186 = v171[26];
  *(v24 + 23) = v30;
  *(v24 + 22) = v29;
  *(v24 + 21) = v28;
  v31 = *(v24 + 18);
  v32 = *(v24 + 19);
  v25[18] = *(v24 + 20);
  v25[17] = v32;
  v25[16] = v31;
  v33 = *(v24 + 21);
  v34 = *(v24 + 22);
  v35 = *(v24 + 23);
  v171[12] = v186;
  v25[21] = v35;
  v25[20] = v34;
  v25[19] = v33;
  v65[6] = sub_7C634();
  v65[5] = sub_1A88(&qword_91E30);
  sub_4DB34();
  v66 = v171;
  sub_7C8C4();

  sub_4DBBC(v66);
  v36 = v104;
  v37 = v105;
  v38 = v172;
  v39 = v173;
  v40 = v174;
  *(v104 + 28) = v175;
  *(v36 + 27) = v40;
  *(v36 + 26) = v39;
  *(v36 + 25) = v38;
  v41 = v176;
  v42 = v177;
  v187 = v179;
  *(v36 + 31) = v178;
  *(v36 + 30) = v42;
  *(v36 + 29) = v41;
  v43 = *(v36 + 25);
  v44 = *(v36 + 26);
  v45 = *(v36 + 27);
  v37[11] = *(v36 + 28);
  v37[10] = v45;
  v37[9] = v44;
  v37[8] = v43;
  v46 = *(v36 + 29);
  v47 = *(v36 + 30);
  v48 = *(v36 + 31);
  v170[14] = v187;
  v37[14] = v48;
  v37[13] = v47;
  v37[12] = v46;
  v169[31] = sub_44438();
  v67 = sub_1A88(&qword_91E40);
  sub_4DC28();
  v68 = v170;
  sub_7C804();
  sub_4DCD0(v68);
  v49 = v104;
  v50 = v103;
  v51 = v105;
  v52 = v105[37];
  v53 = v105[38];
  v54 = v105[39];
  *(v104 + 36) = v105[40];
  *(v49 + 35) = v54;
  *(v49 + 34) = v53;
  *(v49 + 33) = v52;
  v55 = v51[41];
  v56 = v51[42];
  v57 = v51[43];
  *(v50 + 108) = *(v49 + 108);
  v50[6] = v57;
  v50[5] = v56;
  v50[4] = v55;
  v58 = *v50;
  v59 = v50[1];
  v60 = v50[2];
  v51[3] = v50[3];
  v51[2] = v60;
  v51[1] = v59;
  *v51 = v58;
  v61 = v50[4];
  v62 = v50[5];
  v63 = v50[6];
  *(v51 + 108) = *(v50 + 108);
  v51[6] = v63;
  v51[5] = v62;
  v51[4] = v61;
  v71 = sub_1A88(&qword_91E50);
  v73 = sub_4DD54();
  v75 = v181;
  v69 = v169;
  sub_1991C(v169, v71, v181);
  sub_4DCD0(v69);
  v167 = v194;
  v166 = v193;
  v168[0] = &v166;
  sub_4DE84(v119, v117);
  v168[1] = v117;
  v165 = v185;
  v164 = v184;
  v168[2] = &v164;
  v74 = v163;
  sub_4E078(v75, v163);
  v168[3] = v74;
  v162[0] = v70;
  v162[1] = v115;
  v162[2] = v70;
  v162[3] = v71;
  v158 = v72;
  v159 = sub_4E1D4();
  v160 = v72;
  v161 = v73;
  sub_4E6CC(v168, 4uLL, v162, v106);
  sub_4DCD0(v74);
  sub_4E27C(v117);
  sub_4DCD0(v75);
  sub_4E27C(v119);
}

uint64_t sub_43C4C(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v6 = a1;
  LOWORD(v7) = *(a1 + 8);
  v4 = v7;
  sub_403E8(a1, v5);
  v3 = *a1;
  *a1;
  v8 = v3;
  sub_BB0C(a1);
  sub_49664(&v7);
  return v4;
}

uint64_t sub_43CF8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a7;
  v15 = a1;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v29 = a2;
  v16 = a2;
  v17 = HIBYTE(a2);
  v28 = a3;
  v27 = a4;
  v13 = *(a4 - 8);
  v14 = a4 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v19 = &v10 - v10;
  v12 = *(v7 - 8);
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(&v10 - v10);
  v24 = &v10 - v11;
  (*(v12 + 16))(v8);
  (*(v13 + 16))(v19, v15, v21);
  v25 = v16;
  v26 = v17;
  return sub_7BEE4();
}

uint64_t sub_43E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v77;
  v40 = a2;
  v41 = a1;
  v91 = 0;
  memset(v90, 0, 32);
  v80 = 0;
  v81 = 0;
  memset(v77, 0, sizeof(v77));
  v42 = 0;
  v43 = sub_7C2D4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v49 = *(v44 + 64);
  v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = &v16 - v46;
  v48 = v46;
  __chkstk_darwin(v2);
  v50 = &v16 - v48;
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v52 = &v16 - v51;
  v91 = v4;
  v53 = sub_7D184();
  v54 = sub_7D174();
  v55 = sub_7D154();
  v56 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v41 + 80);
  v17 = *(v41 + 88);

  v18 = v89;
  v89[0] = v16;
  v89[1] = v17;
  sub_198A4();
  v85 = sub_7C6E4();
  v86 = v6;
  v87 = v7;
  v88 = v8;
  v19 = v82;
  v82[0] = v85;
  v82[1] = v6;
  *&v28[1] = 1;
  v83 = v7 & 1;
  v84 = v8;
  v38 = v90;
  v31 = &type metadata for Text;
  v33 = &protocol witness table for Text;
  sub_1991C(v82, &type metadata for Text, v90);
  sub_23BF4(v19);
  v27 = 0;
  v78 = sub_7CB84();
  v79 = v9 & 1 & v28[1];
  v30 = &type metadata for Spacer;
  v32 = &protocol witness table for Spacer;
  sub_1991C(&v78, &type metadata for Spacer, &v80);
  sub_7C2C4();
  v25 = "";
  v92._countAndFlagsBits = sub_7CF84("", v27, v28[1] & 1);
  object = v92._object;
  sub_7C2B4(v92);

  v10 = *(v41 + 8);
  v22 = &v76;
  v76 = v10;
  v21 = &type metadata for UInt16;
  v23 = sub_4E3D8();
  v24 = v11;
  sub_7C2A4();

  v93._countAndFlagsBits = sub_7CF84(v25, v27, v28[1] & 1);
  v26 = v93._object;
  sub_7C2B4(v93);

  (*(v44 + 16))(v50, v52, v43);
  (*(v44 + 32))(v47, v50, v43);
  (*(v44 + 8))(v52, v43);
  sub_7C2F4();
  v73 = 0;
  v74 = 0;
  v75 = *v28 & 0x100;
  v69 = sub_7C6D4();
  v70 = v12;
  v71 = v13;
  v72 = v14;
  v29 = v66;
  v66[0] = v69;
  v66[1] = v12;
  v67 = v13 & 1 & v28[1];
  v68 = v14;
  v37 = v77;
  sub_1991C(v66, v31, v77);
  sub_23BF4(v29);
  v36 = v64;
  sub_23E4C(v38, v64);
  v34 = v65;
  v65[0] = v36;
  v62 = v80;
  v63 = v81;
  v65[1] = &v62;
  v35 = v61;
  sub_23E4C(v37, v61);
  v65[2] = v35;
  v60[0] = v31;
  v60[1] = v30;
  v60[2] = v31;
  v57 = v33;
  v58 = v32;
  v59 = v33;
  sub_4E6CC(v34, 3uLL, v60, v40);
  sub_23BF4(v35);
  sub_23BF4(v36);
  sub_23BF4(v37);
  sub_23BF4(v38);
}

uint64_t sub_44474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  v8 = a2;
  v10 = 0;
  v21 = 0;
  v20 = 0;
  v11 = sub_1A88(&qword_91D48);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(0);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v7 - v14;
  __chkstk_darwin(v2);
  v15 = v7 - v14;
  v21 = v7 - v14;
  v20 = v3;
  v16 = sub_7D184();
  v17 = sub_7D174();
  v18 = sub_7D154();
  v19 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7[4] = v7;
  __chkstk_darwin(v7);
  v7[1] = &v7[-4];
  v7[-2] = v5;
  v7[2] = sub_1A88(&qword_91D58);
  v7[3] = sub_4BE50();
  sub_44450();
  sub_7CB94();
  v7[5] = sub_4BDC0();
  sub_1991C(v13, v11, v15);
  sub_4C014(v13);
  sub_4C0A0(v15, v13);
  sub_1991C(v13, v11, v8);
  sub_4C014(v13);
  sub_4C014(v15);
}

uint64_t sub_446BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v29 = a1;
  v18 = sub_4C5F4;
  v43 = 0;
  v42 = 0;
  v30 = 0;
  v2 = type metadata accessor for GlyphPopoverView();
  v19 = *(v2 - 8);
  v20 = v19;
  v21 = *(v19 + 64);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v23 = v7 - v22;
  v24 = sub_1A88(&qword_91D70);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = v7 - v27;
  v31 = sub_1A88(&qword_91D58);
  v33 = *(*(v31 - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v34 = v7 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v36 = v7 - v35;
  v43 = v7 - v35;
  v42 = v4;
  v37 = sub_7D184();
  v38 = sub_7D174();
  v39 = sub_7D154();
  v40 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7[0] = *(v29 + 96);

  v14 = &v41;
  v41 = v7[0];
  KeyPath = swift_getKeyPath();
  sub_48728(v29, v23);
  v8 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v10 = swift_allocObject();
  sub_4C3CC(v23, (v10 + v8));
  v11 = sub_1A88(&qword_91D28);
  v12 = sub_1A88(&qword_91D80);
  v13 = sub_4C674();
  sub_4BF8C();
  sub_7CBC4();
  v15 = sub_4BEF4();
  sub_3FCB0();
  sub_7C8F4();
  (*(v25 + 8))(v28, v24);
  v16 = sub_4BE50();
  sub_1991C(v34, v31, v36);
  sub_4C6FC(v34);
  sub_4C764(v36, v34);
  sub_1991C(v34, v31, v17);
  sub_4C6FC(v34);
  sub_4C6FC(v36);
}

uint64_t sub_44B74@<X0>(_DWORD *a1@<X8>)
{
  result = sub_7D824();
  *a1 = result;
  return result;
}

uint64_t sub_44BA4@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = &v41;
  v27 = a2;
  v28 = a1;
  v29 = a3;
  v92 = 0;
  v91 = 0;
  v58 = 0;
  v30 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v31 = *a1;
  v92 = v31;
  v91 = a2;
  v32 = sub_7D184();
  v33 = sub_7D174();
  v34 = sub_7D154();
  v35 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[3] = sub_7C274();
  v20[4] = v20;
  __chkstk_darwin(v20);
  v20[1] = v18;
  v18[4] = v31;
  v19 = v4;
  v20[2] = sub_1A88(&qword_91D98);
  sub_4C81C();
  sub_7CB74();
  v5 = *v26;
  v6 = v26[1];
  v7 = v26[2];
  v62 = v26[3];
  v61 = v7;
  v60 = v6;
  v59 = v5;
  v8 = v26[4];
  v9 = v26[5];
  v10 = v26[6];
  v66 = v26[7];
  v65 = v10;
  v64 = v9;
  v63 = v8;
  v11 = v26[8];
  v12 = v26[9];
  v13 = v26[10];
  v70 = v26[11];
  v69 = v13;
  v68 = v12;
  v67 = v11;
  v14 = v26[12];
  v15 = v26[13];
  v16 = v26[14];
  v74 = v42;
  v73 = v16;
  v72 = v15;
  v71 = v14;
  v39[3] = v62;
  v39[2] = v61;
  v39[1] = v60;
  v39[0] = v59;
  v39[7] = v66;
  v39[6] = v65;
  v39[5] = v64;
  v39[4] = v63;
  v39[11] = v70;
  v39[10] = v69;
  v39[9] = v68;
  v39[8] = v67;
  v40 = v42;
  v39[14] = v16;
  v39[13] = v15;
  v39[12] = v14;
  v22 = sub_1A88(&qword_91D80);
  v23 = sub_4BF8C();
  v25 = &v43;
  v21 = v39;
  sub_1991C(v39, v22, &v43);
  sub_4C8A4(v21);
  v78 = v46;
  v77 = v45;
  v76 = v44;
  v75 = v43;
  v82 = v50;
  v81 = v49;
  v80 = v48;
  v79 = v47;
  v86 = v54;
  v85 = v53;
  v84 = v52;
  v83 = v51;
  v90 = v58;
  v89 = v57;
  v88 = v56;
  v87 = v55;
  sub_4C93C(&v75, &v38);
  v36[3] = v78;
  v36[2] = v77;
  v36[1] = v76;
  v36[0] = v75;
  v36[7] = v82;
  v36[6] = v81;
  v36[5] = v80;
  v36[4] = v79;
  v36[11] = v86;
  v36[10] = v85;
  v36[9] = v84;
  v36[8] = v83;
  v37 = v90;
  v36[14] = v89;
  v36[13] = v88;
  v36[12] = v87;
  v24 = v36;
  sub_1991C(v36, v22, v29);
  sub_4C8A4(v24);
  sub_4C8A4(v25);
}

uint64_t sub_44FF4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v146 = a3;
  v162 = a1;
  v163 = a2;
  v147 = sub_4CD10;
  v272 = 0;
  v271 = 0;
  v225 = 0;
  v226 = 0;
  v214 = 0;
  v215 = 0;
  v212 = 0u;
  v213 = 0u;
  v184 = 0u;
  v185 = 0u;
  v164 = 0;
  v148 = sub_7D7F4();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v152 = &v43 - v151;
  v153 = type metadata accessor for GlyphPopoverView();
  v154 = *(v153 - 8);
  v155 = v154;
  v156 = *(v154 + 64);
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v153);
  v158 = &v43 - v157;
  v159 = sub_1A88(&qword_91AD0);
  v160 = (*(*(v159 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164);
  v161 = (&v43 - v160);
  v165 = sub_7C614();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164);
  v169 = &v43 - v168;
  v272 = v3;
  v271 = v4;
  v170 = sub_7D184();
  v171 = sub_7D174();
  v172 = sub_7D154();
  v173 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v161;
  v134 = 1;
  v102 = sub_7CF84("U+%04X", 6uLL, 1);
  v103 = v7;
  v100 = sub_1A88(&qword_91DA8);
  v101 = sub_7D714();
  v99 = v8;
  v9 = sub_7D824();
  v10 = v99;
  *(v99 + 24) = &type metadata for UInt32;
  *(v10 + 32) = &protocol witness table for UInt32;
  *v10 = v9;
  sub_71DDC();
  v104 = sub_7CF34();
  v105 = v11;

  v106 = v265;
  v265[0] = v104;
  v265[1] = v105;
  v107 = sub_198A4();
  v261 = sub_7C6E4();
  v262 = v12;
  v263 = v13;
  v264 = v14;
  v111 = v261;
  v112 = v12;
  v113 = v13;
  v114 = v14;
  v108 = sub_7C634();
  v109 = sub_7C5E4();

  sub_48B50((v163 + *(v153 + 36)), v6);
  sub_7BF04();
  sub_48C24(v161);
  v110 = sub_45E40();
  (*(v166 + 8))(v169, v165);

  v257 = v111;
  v258 = v112;
  v131 = 1;
  v259 = v113 & 1;
  v260 = v114;
  v253 = sub_7C6C4();
  v254 = v15;
  v255 = v16;
  v256 = v17;
  v116 = v253;
  v117 = v15;
  v115 = v16;
  v118 = v17;

  sub_209FC(v111, v112, v113 & 1);

  v252 = sub_45EB8();
  v248 = v116;
  v249 = v117;
  v250 = v115 & 1 & v134;
  v251 = v118;
  v244 = sub_7C6B4();
  v245 = v18;
  v246 = v19;
  v247 = v20;
  v119 = v244;
  v120 = v18;
  v121 = v19;
  v122 = v20;
  sub_209FC(v116, v117, v115 & 1);

  v125 = v241;
  v241[0] = v119;
  v241[1] = v120;
  v242 = v121 & 1 & v134;
  v243 = v122;
  sub_48728(v163, v158);
  v123 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v124 = swift_allocObject();
  sub_4C3CC(v158, (v124 + v123));
  v126 = &v266;
  sub_62174(v147, v124, &type metadata for Text);

  sub_23BF4(v125);
  v127 = v269;
  v128 = 64;
  memcpy(v269, v126, sizeof(v269));
  v137 = v240;
  memcpy(v240, v269, sizeof(v240));
  v129 = *(v163 + 112);
  v130 = *(v163 + 120);

  v238 = v129;
  v239 = v130;
  sub_1A88(&qword_91448);
  sub_7CAE4();
  v133 = v237;

  v132 = sub_1A88(&qword_91DB0);
  v135 = sub_4CD8C();
  v21 = sub_3FCB0();
  v136 = &v35;
  v35 = 0;
  v36 = v131;
  v37 = 0;
  v38 = v131;
  v39 = v21;
  v40 = v22;
  v41 = v132;
  v42 = v135;
  v138 = &v267;
  sub_7C8F4();
  sub_4CE30(v137);
  v139 = __dst;
  v140 = 176;
  memcpy(__dst, v138, sizeof(__dst));
  v143 = v236;
  memcpy(v236, __dst, sizeof(v236));
  v141 = sub_1A88(&qword_91DC0);
  v142 = sub_4CE90();
  sub_1991C(v143, v141, v268);
  sub_4CE30(v143);
  sub_7D804();
  v144 = sub_7D7E4();
  v145 = v23;
  if (v23)
  {
    v97 = v144;
    v98 = v145;
    v84 = v145;
    v56 = v144;
    v214 = v144;
    v215 = v145;
    (*(v149 + 8))(v152, v148);

    v210 = v56;
    v211 = v84;
    v206 = sub_7C6E4();
    v207 = v24;
    v208 = v25;
    v209 = v26;
    v58 = v206;
    v59 = v24;
    v60 = v25;
    v61 = v26;
    v57 = sub_7C634();
    v202 = v58;
    v203 = v59;
    v73 = 1;
    v204 = v60 & 1;
    v205 = v61;
    v198 = sub_7C6C4();
    v199 = v27;
    v200 = v28;
    v201 = v29;
    v63 = v198;
    v64 = v27;
    v62 = v28;
    v65 = v29;

    sub_209FC(v58, v59, v60 & 1);

    v197 = sub_45EB8();
    v193 = v63;
    v194 = v64;
    v195 = v62 & 1 & v73;
    v196 = v65;
    v189 = sub_7C6B4();
    v190 = v30;
    v191 = v31;
    v192 = v32;
    v66 = v189;
    v67 = v30;
    v68 = v31;
    v69 = v32;
    sub_209FC(v63, v64, v62 & 1);

    v70 = v186;
    v186[0] = v66;
    v186[1] = v67;
    v187 = v68 & 1 & v73;
    v188 = v69;
    v83 = &v212;
    v79 = &type metadata for Text;
    v80 = &protocol witness table for Text;
    sub_1991C(v186, &type metadata for Text, &v212);
    sub_23BF4(v70);
    v71 = v212;
    v72 = v213;
    v74 = *(&v213 + 1);
    sub_20C1C(v212, *(&v212 + 1), v213 & 1);

    v75 = &v181;
    v181 = v71;
    v182 = v72 & 1 & v73;
    v183 = v74;
    v82 = &v184;
    sub_1991C(&v181, v79, &v184);
    sub_23BF4(v75);
    v77 = v184;
    v76 = v185;
    v78 = *(&v185 + 1);
    sub_20C1C(v184, *(&v184 + 1), v185 & 1);

    v81 = &v174;
    v174 = v77;
    v175 = v76 & 1;
    v176 = v78;
    sub_4E680(&v174, v79, &v177);
    sub_4D120(v81);
    v85 = v177;
    v86 = v178;
    v87 = v179;
    v88 = v180;
    sub_4CF34(v177, v178, v179, v180);
    v232 = v85;
    v233 = v86;
    v234 = v87;
    v235 = v88;
    sub_23BF4(v82);
    sub_23BF4(v83);

    v93 = v85;
    v94 = v86;
    v95 = v87;
    v96 = v88;
  }

  else
  {
    (*(v149 + 8))(v152, v148);
    memset(v227, 0, sizeof(v227));
    sub_4E680(v227, &type metadata for Text, &v228);
    v89 = v228;
    v90 = v229;
    v91 = v230;
    v92 = v231;
    sub_4CF34(v228, v229, v230, v231);
    v232 = v89;
    v233 = v90;
    v234 = v91;
    v235 = v92;
    v93 = v89;
    v94 = v90;
    v95 = v91;
    v96 = v92;
  }

  v47 = v96;
  v46 = v95;
  v45 = v94;
  v44 = v93;
  v223 = sub_7CB84();
  v224 = v33 & 1;
  v48 = &type metadata for Spacer;
  v49 = &protocol witness table for Spacer;
  sub_1991C(&v223, &type metadata for Spacer, &v225);
  v55 = v268;
  v54 = v221;
  sub_4CF90(v268, v221);
  v52 = v222;
  v222[0] = v54;
  v53 = v220;
  v220[0] = v44;
  v220[1] = v45;
  v220[2] = v46;
  v220[3] = v47;
  v222[1] = v220;
  v218 = v225;
  v219 = v226;
  v222[2] = &v218;
  v50 = v217;
  v217[0] = v141;
  v217[1] = sub_1A88(&qword_91DD0);
  v217[2] = v48;
  v51 = v216;
  v216[0] = v142;
  v216[1] = sub_4D08C();
  v216[2] = v49;
  sub_4E6CC(v52, 3uLL, v50, v146);
  sub_4D120(v53);
  sub_4CE30(v54);
  sub_4D120(&v232);
  sub_4CE30(v55);
}

uint64_t sub_45E40()
{
  v1 = sub_7C5D4();
  sub_62800();

  return sub_7C644();
}

uint64_t sub_45ED0()
{

  sub_1A88(&qword_91448);
  sub_7CAE4();

  sub_275DC();
  sub_7D744();

  sub_7CAF4();
  sub_26D50();
}

uint64_t type metadata accessor for RenderedGlyphView()
{
  v1 = qword_91CA0;
  if (!qword_91CA0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_46198()
{
  v2 = qword_91A70;
  if (!qword_91A70)
  {
    type metadata accessor for RenderedGlyphView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_46218(uint64_t a1)
{
  v3 = *(type metadata accessor for RenderedGlyphView() + 36);
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BEF4();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_462E8()
{
  v2 = qword_91A80;
  if (!qword_91A80)
  {
    sub_B24C(&qword_91A48);
    sub_46198();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4638C()
{
  v2 = qword_91A88;
  if (!qword_91A88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_46404()
{
  v2 = qword_91A90;
  if (!qword_91A90)
  {
    sub_B24C(&qword_91A50);
    sub_462E8();
    sub_464AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_464AC()
{
  v2 = qword_91A98;
  if (!qword_91A98)
  {
    sub_B24C(&qword_91AA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_46534()
{
  v2 = qword_91AA8;
  if (!qword_91AA8)
  {
    sub_7C3B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91AA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for GlyphPopoverView()
{
  v1 = qword_91BE0;
  if (!qword_91BE0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_466D8()
{
  v2 = qword_91AB8;
  if (!qword_91AB8)
  {
    type metadata accessor for GlyphPopoverView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91AB8);
    return WitnessTable;
  }

  return v2;
}

void *sub_46760()
{
  v2 = *(v0 + 8);
  v2;
  return v2;
}

uint64_t sub_4679C@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91AD8);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for RenderedGlyphView();
  sub_48DAC((v6 + *(v2 + 36)), v1);
  sub_7BF04();
  return sub_48E80(v9);
}

uint64_t sub_46894(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91AD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_48DAC(v2, (&v5 - v6));
  v3 = type metadata accessor for RenderedGlyphView();
  sub_48F1C(v7, (v1 + *(v3 + 36)));
  return sub_48E80(v8);
}

uint64_t sub_46944@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_49698;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_91B48);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_91B50);
  v10 = sub_496A0();
  sub_44450();
  sub_7CB94();
  v13 = sub_497CC();
  sub_1991C(v14, v12, v15);
  sub_49854(v14);
  sub_498E0(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_49854(v14);
  return sub_49854(v15);
}

uint64_t sub_46AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v29 = a1;
  v16 = sub_4B610;
  v42 = 0;
  v41 = 0;
  v30 = 0;
  v17 = (*(*(sub_7C294() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = &v7 - v17;
  v2 = type metadata accessor for RenderedGlyphView();
  v19 = *(v2 - 8);
  v20 = v19;
  v21 = *(v19 + 64);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v23 = &v7 - v22;
  v24 = sub_1A88(&qword_91B68);
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = &v7 - v27;
  v31 = sub_1A88(&qword_91B50);
  v33 = *(*(v31 - 8) + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v34 = &v7 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v36 = &v7 - v35;
  v42 = &v7 - v35;
  v41 = v4;
  v37 = sub_7D184();
  v38 = sub_7D174();
  v39 = sub_7D154();
  v40 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_4850C(v29, v23);
  v8 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v9 = swift_allocObject();
  sub_4B4D0(v23, v9 + v8);
  v10 = sub_4754();
  sub_47740(v18);
  sub_4754();
  sub_7CB64();
  v11 = *(v29 + 32);
  v12 = *(v29 + 40);
  v13 = sub_49744();
  sub_3FCB0();
  sub_7C8E4();
  (*(v25 + 8))(v28, v24);
  v14 = sub_496A0();
  sub_1991C(v34, v31, v36);
  sub_4B698(v34);
  sub_4B700(v36, v34);
  sub_1991C(v34, v31, v15);
  sub_4B698(v34);
  sub_4B698(v36);
}

uint64_t sub_46F30(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v9 = a2;
  v10 = a4;
  v11 = a3;
  v12 = a1;
  v13 = 0;
  v21 = a1;
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v14 = sub_7D184();
  v15 = sub_7D174();
  v16 = sub_7D154();
  v17 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *v12;
  v6[1] = v7;

  v8 = v6;
  __chkstk_darwin(v6);
  sub_7C104();
}

uint64_t sub_470C0(CGContext *a1, uint64_t a2, double a3, double a4)
{
  v38 = a1;
  v41 = a2;
  v39 = a3;
  v40 = a4;
  v58 = 0;
  v57 = 0;
  v55 = 0.0;
  v56 = 0;
  memset(__b, 0, sizeof(__b));
  v35 = sub_1A88(&qword_91AD8);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v37 = (&v18 - v36);
  v42 = 0;
  v43 = sub_7BEF4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v42);
  v47 = &v18 - v46;
  v58 = v5;
  v57 = v6;
  v55 = v4;
  v56 = v7;
  v48 = sub_7D184();
  v49 = sub_7D174();
  v50 = sub_7D154();
  v51 = v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v37;
  v10 = type metadata accessor for RenderedGlyphView();
  sub_48DAC((v41 + *(v10 + 36)), v9);
  sub_7BF04();
  sub_48E80(v37);
  if ((*(v44 + 88))(v47, v43) == enum case for ColorScheme.dark(_:))
  {
    v33 = [objc_opt_self() whiteColor];
    v34 = [v33 CGColor];

    CGContextSetFillColorWithColor(v38, v34);
  }

  else
  {
    v31 = [objc_opt_self() blackColor];
    v32 = [v31 CGColor];

    CGContextSetFillColorWithColor(v38, v32);
    (*(v44 + 8))(v47, v43);
  }

  v18 = 1.0;
  v54.a = 1.0;
  v54.b = 0.0;
  v54.c = 0.0;
  v54.d = 1.0;
  v54.tx = 0.0;
  v54.ty = 0.0;
  CGContextSetTextMatrix(v38, &v54);
  sub_47630(v59, v18, -1.0);
  v19 = __b;
  v21 = 48;
  memcpy(__b, v59, sizeof(__b));
  v11 = (v39 - *(v41 + 32)) / 2.0;
  v20 = &v60;
  sub_4768C(&v60.a, v11, -v40);
  v22 = v60;
  memcpy(v19, v20, v21);
  v52 = v22;
  CGContextConcatCTM(v38, &v52);
  v30 = *(v41 + 8);
  v30;
  v27 = 1;
  v23 = &type metadata for UInt16;
  v12 = sub_7D714();
  *v13 = *v41;
  sub_71DDC();
  v29 = v12;
  v24 = type metadata accessor for CGPoint();
  v14 = sub_7D714();
  v15 = *(v41 + 24);
  *v16 = *(v41 + 16);
  v16[1] = v15;
  sub_71DDC();
  v28 = v14;
  v25 = (v29 + 32);

  v26 = v28 + 2;

  CTFontDrawGlyphs(v30, v25, v26, v27, v38);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

CGFloat sub_47630@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  CGAffineTransformMakeScale(&v9, a2, a3);
  b = v9.b;
  c = v9.c;
  d = v9.d;
  tx = v9.tx;
  result = v9.ty;
  *a1 = v9.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

CGFloat sub_4768C@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  memcpy(&__dst, v3, sizeof(__dst));
  v13 = __dst;
  CGAffineTransformTranslate(&v12, &v13, a2, a3);
  b = v12.b;
  c = v12.c;
  d = v12.d;
  v7 = v12.tx;
  result = v12.ty;
  *a1 = v12.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = v7;
  a1[5] = result;
  return result;
}

uint64_t sub_47740@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for ColorRenderingMode.nonLinear(_:);
  v1 = sub_7C294();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void sub_477F8(CGGlyph a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v53 = 0;
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0u;
  v50 = 0u;
  width = 0.0;
  height = 0.0;
  v43 = 0.0;
  memset(&__b, 0, sizeof(__b));
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0.0;
  v38 = 0.0;
  memset(&__dst, 0, sizeof(__dst));
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  *&v59[6] = a1;
  *&v59[7] = a2;
  a2;
  PathForGlyph = CTFontCreatePathForGlyph(a2, a1, 0);

  if (PathForGlyph)
  {
    v53 = PathForGlyph;
    v51 = a6;
    v52 = a7;
    PathBoundingBox = CGPathGetPathBoundingBox(PathForGlyph);
    *&v49 = PathBoundingBox.origin.x;
    *(&v49 + 1) = *&PathBoundingBox.origin.y;
    *&v50 = PathBoundingBox.size.width;
    *(&v50 + 1) = *&PathBoundingBox.size.height;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    v45 = a7 / PathBoundingBox.size.height;
    v44 = a6 / PathBoundingBox.size.width;
    sub_275DC();
    sub_7D754();
    v43 = 0.8 * v46;
    sub_47630(v58, 0.8 * v46, -(0.8 * v46));
    memcpy(&__b, v58, sizeof(__b));
    v27 = CGPathCreateCopyByTransformingPath(PathForGlyph, &__b);
    if (v27)
    {
      v41 = v27;
      v77 = CGPathGetPathBoundingBox(v27);
      *&v39 = v77.origin.x;
      *(&v39 + 1) = *&v77.origin.y;
      *&v40 = v77.size.width;
      *(&v40 + 1) = *&v77.size.height;
      v37 = v77.size.width;
      v38 = v77.size.height;
      sub_47D24(v59, (a6 - v77.size.width) / 2.0 - v77.origin.x, (a7 - v77.size.height) / 2.0 - v77.origin.y);
      memcpy(&__dst, v59, sizeof(__dst));
      if (CGPathCreateCopyByTransformingPath(v27, &__dst))
      {
        sub_7C694();
        v18 = v59[8];
        v19 = v59[9];
        v20 = v59[10];
        v21 = v59[11];
        v17 = v60;

        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = v17;
      }

      else
      {
        sub_7C684();
        v13 = v61;
        v14 = v62;
        v15 = v63;
        v16 = v64;
        v12 = v65;

        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = v12;
      }
    }

    else
    {
      sub_7C684();
      v8 = v66;
      v9 = v67;
      v10 = v68;
      v11 = v69;
      v7 = v70;

      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v7;
    }
  }

  else
  {
    sub_7C684();
    v22 = v71;
    v23 = v72;
    v24 = v73;
    v25 = v74;
    v26 = v75;
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = v26;
}

CGFloat sub_47D24@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  CGAffineTransformMakeTranslation(&v9, a2, a3);
  b = v9.b;
  c = v9.c;
  d = v9.d;
  tx = v9.tx;
  result = v9.ty;
  *a1 = v9.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

uint64_t sub_47D80@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for LayoutDirectionBehavior.fixed(_:);
  v1 = sub_7C4E4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void (*sub_47F28(void *a1))(void **a1, char a2)
{
  v2 = sub_17EB8(0x28uLL);
  *a1 = v2;
  v2[4] = sub_7BE44();
  return sub_47FA8;
}

void sub_47FA8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_48104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_7C614();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_7C244();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_7C1F4();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_48294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_7BEF4();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_7C244();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_7C1C4();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_4843C(uint64_t a1)
{
  v4 = a1;
  v1 = sub_7BEF4();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_7C1D4();
}

uint64_t sub_4850C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v5 = *(a1 + 8);
  v5;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v7 = *(type metadata accessor for RenderedGlyphView() + 36);
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v4 = *(a1 + v7);

    *(a2 + v7) = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_486B0()
{
  v2 = qword_91AC0;
  if (!qword_91AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91AC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_48728(uint64_t a1, uint64_t a2)
{
  v9 = *a1;
  *a1;
  *a2 = v9;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v10 = *(a1 + 88);

  *(a2 + 88) = v10;
  v11 = *(a1 + 96);

  *(a2 + 96) = v11;
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  v13 = *(a1 + 120);

  *(a2 + 120) = v13;
  v14 = type metadata accessor for GlyphPopoverView();
  v15 = *(v14 + 36);
  sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v8 = *(a1 + v15);

    *(a2 + v15) = v8;
  }

  swift_storeEnumTagMultiPayload();
  v6 = (a2 + *(v14 + 40));
  v7 = (a1 + *(v14 + 40));
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 16))(v6, v7);
  }

  else
  {
    v5 = *v7;

    *v6 = v5;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

id *sub_489CC(id *a1)
{

  v5 = type metadata accessor for GlyphPopoverView();
  v6 = *(v5 + 36);
  sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7C614();
    (*(*(v1 - 8) + 8))(a1 + v6);
  }

  else
  {
  }

  v4 = a1 + *(v5 + 40);
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return a1;
}

void *sub_48B50(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_48C24(uint64_t a1)
{
  sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7C614();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_48CC0(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_48C24(a2);
    v4 = sub_1A88(&qword_91AC8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7C614();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_48DAC(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_48E80(uint64_t a1)
{
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BEF4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_48F1C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_48E80(a2);
    v4 = sub_1A88(&qword_91A78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7BEF4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

unint64_t sub_49010()
{
  v2 = qword_91B00;
  if (!qword_91B00)
  {
    sub_B24C(&qword_91AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49098()
{
  v2 = qword_91B08;
  if (!qword_91B08)
  {
    sub_B24C(&qword_91AE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49120(uint64_t a1)
{
  v3 = *(sub_1A88(&qword_91B10) + 44);
  v1 = sub_1A88(&qword_91B18);
  (*(*(v1 - 8) + 8))();
  v5 = *(sub_1A88(&qword_91B20) + 48);
  v6 = sub_1A88(&qword_91B28);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v3 + v5, 1))
  {
    (*(v7 + 8))(a1 + v3 + v5, v6);
  }

  return a1;
}

unint64_t sub_49274()
{
  v2 = qword_91B30;
  if (!qword_91B30)
  {
    sub_B24C(&qword_91AE8);
    sub_49098();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49318()
{
  v2 = qword_91B38;
  if (!qword_91B38)
  {
    sub_B24C(&qword_91AF0);
    sub_49274();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_493BC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = *(sub_1A88(&qword_91B10) + 44);
  v2 = sub_1A88(&qword_91B18);
  (*(*(v2 - 8) + 16))(a2 + v8);
  v10 = *(sub_1A88(&qword_91B20) + 48);
  v11 = sub_1A88(&qword_91B28);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1 + v8 + v10, 1))
  {
    v3 = sub_1A88(&qword_91B40);
    memcpy((a2 + v8 + v10), (a1 + v8 + v10), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))();
    (*(v12 + 56))(a2 + v8 + v10, 0, 1, v11);
  }

  v4 = sub_1A88(&qword_91AE8);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x70uLL);
  v5 = sub_1A88(&qword_91AF0);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_496A0()
{
  v2 = qword_91B58;
  if (!qword_91B58)
  {
    sub_B24C(&qword_91B50);
    sub_49744();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49744()
{
  v2 = qword_91B60;
  if (!qword_91B60)
  {
    sub_B24C(&qword_91B68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_497CC()
{
  v2 = qword_91B70;
  if (!qword_91B70)
  {
    sub_B24C(&qword_91B48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49854(uint64_t a1)
{
  v3 = *(sub_1A88(&qword_91B78) + 44);
  v1 = sub_1A88(&qword_91B68);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_498E0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_1A88(&qword_91B78) + 44);
  v2 = sub_1A88(&qword_91B68);
  (*(*(v2 - 8) + 16))();
  v3 = sub_1A88(&qword_91B50);
  memcpy((a2 + v5 + *(v3 + 36)), (a1 + v5 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_499D4()
{
  v2 = qword_91B80;
  if (!qword_91B80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91B80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t sub_49B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_49DC4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    return (v7 + 1);
  }

  else
  {
    v5 = sub_1A88(&qword_91AD0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 36)], a2, v5);
    }

    else
    {
      v4 = sub_1A88(&qword_91AD8);
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(&a1[*(a3 + 40)], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

char *sub_49FB4(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    v4 = sub_1A88(&qword_91AD0);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(&v5[*(a4 + 36)], a2, a2, v4);
    }

    else
    {
      result = sub_1A88(&qword_91AD8);
      if (a3 == *(*(result - 1) + 84))
      {
        return (*(*(result - 1) + 56))(&v5[*(a4 + 40)], a2, a2, result);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_4A154()
{
  v5 = sub_4A2C0();
  if (v0 <= 0x3F)
  {
    v5 = sub_36DBC();
    if (v1 <= 0x3F)
    {
      v5 = sub_4A354();
      if (v2 <= 0x3F)
      {
        v5 = sub_4A3F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_4A2C0()
{
  v4 = qword_91BF0;
  if (!qword_91BF0)
  {
    v3 = sub_7D114();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91BF0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_4A354()
{
  v4 = qword_91BF8;
  if (!qword_91BF8)
  {
    sub_7C614();
    v3 = sub_7BF14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91BF8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_4A3F0()
{
  v4 = qword_91C00;
  if (!qword_91C00)
  {
    sub_7BEF4();
    v3 = sub_7BF14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91C00);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_4A4BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t sub_4A5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_4A7F8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1A88(&qword_91AD8);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 36), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_4A944(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_1A88(&qword_91AD8);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 36), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_4AA40()
{
  v4 = type metadata accessor for CTFont();
  if (v0 <= 0x3F)
  {
    v4 = type metadata accessor for CGPoint();
    if (v1 <= 0x3F)
    {
      v4 = sub_4A3F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_4AB70(uint64_t a1, unsigned int a2)
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
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
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

uint64_t sub_4ACB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_4AE98()
{
  sub_B24C(&qword_91A60);
  sub_B24C(&qword_91AB0);
  sub_B24C(&qword_91A58);
  sub_B24C(&qword_91A50);
  sub_7C3B4();
  sub_46404();
  sub_46534();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for GlyphPopoverView();
  sub_466D8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4B08C()
{
  v2 = qword_91CE8;
  if (!qword_91CE8)
  {
    sub_B24C(&qword_91CF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91CE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B12C()
{
  v2 = qword_91CF8;
  if (!qword_91CF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B1F0()
{
  v2 = qword_91D00;
  if (!qword_91D00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B284()
{
  v2 = qword_91D08;
  if (!qword_91D08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4B368()
{
  v6 = type metadata accessor for RenderedGlyphView();
  v1 = *(*(v6 - 8) + 80);
  v5 = (v1 + 16) & ~v1;

  v7 = *(v6 + 36);
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 8))(v4 + v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4B4D0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v5 = *(type metadata accessor for RenderedGlyphView() + 36);
  v7 = sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BEF4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v5), (a1 + v5), *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_4B610(uint64_t *a1, double a2, double a3)
{
  v4 = type metadata accessor for RenderedGlyphView();
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return sub_46F30(a1, v5, a2, a3);
}

uint64_t sub_4B698(uint64_t a1)
{
  v1 = sub_1A88(&qword_91B68);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_4B700(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91B68);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_91B50);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_4B7E4()
{
  v2 = qword_91D18;
  if (!qword_91D18)
  {
    sub_B24C(&qword_91D10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B86C()
{
  v2 = qword_91D20;
  if (!qword_91D20)
  {
    sub_B24C(&qword_91B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B8F4()
{
  v2 = qword_91D30;
  if (!qword_91D30)
  {
    sub_B24C(&qword_91D28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4B97C()
{
  v2 = qword_91D38;
  if (!qword_91D38)
  {
    sub_B24C(&qword_91B28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4BA04(uint64_t a1)
{
  v3 = sub_1A88(&qword_91B28);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_4BAB8(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91B28);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91B40);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_4BBEC(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91B28);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91B40);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_4BD20()
{
  v2 = qword_91D40;
  if (!qword_91D40)
  {
    sub_B24C(&qword_91B40);
    sub_4B97C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BDC0()
{
  v2 = qword_91D50;
  if (!qword_91D50)
  {
    sub_B24C(&qword_91D48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BE50()
{
  v2 = qword_91D60;
  if (!qword_91D60)
  {
    sub_B24C(&qword_91D58);
    sub_4BEF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BEF4()
{
  v2 = qword_91D68;
  if (!qword_91D68)
  {
    sub_B24C(&qword_91D70);
    sub_4BF8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4BF8C()
{
  v2 = qword_91D78;
  if (!qword_91D78)
  {
    sub_B24C(&qword_91D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4C014(uint64_t a1)
{
  v3 = *(sub_1A88(&qword_91D88) + 44);
  v1 = sub_1A88(&qword_91D70);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_4C0A0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_1A88(&qword_91D88) + 44);
  v2 = sub_1A88(&qword_91D70);
  (*(*(v2 - 8) + 16))();
  v3 = sub_1A88(&qword_91D58);
  memcpy((a2 + v5 + *(v3 + 36)), (a1 + v5 + *(v3 + 36)), 0x70uLL);
  return a2;
}

uint64_t sub_4C1AC()
{
  v8 = type metadata accessor for GlyphPopoverView();
  v1 = *(*(v8 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  v9 = *(v8 + 36);
  sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 8))(v6 + v7 + v9);
  }

  else
  {
  }

  v5 = v6 + v7 + *(v8 + 40);
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 8))(v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_4C3CC(uint64_t a1, char *__dst)
{
  memcpy(__dst, a1, 0x50uLL);
  *(__dst + 5) = *(a1 + 80);
  *(__dst + 12) = *(a1 + 96);
  __dst[104] = *(a1 + 104);
  *(__dst + 7) = *(a1 + 112);
  v9 = type metadata accessor for GlyphPopoverView();
  v10 = *(v9 + 36);
  v12 = sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&__dst[v10], (a1 + v10), *(*(v12 - 8) + 64));
  }

  __dsta = &__dst[*(v9 + 40)];
  __src = (a1 + *(v9 + 40));
  v7 = sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 32))(__dsta, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dsta, __src, *(*(v7 - 8) + 64));
  }

  return __dst;
}

uint64_t sub_4C5F4@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for GlyphPopoverView();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_44BA4(a1, v4, a2);
}

unint64_t sub_4C674()
{
  v2 = qword_91D90;
  if (!qword_91D90)
  {
    sub_B24C(&qword_91D28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91D90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4C6FC(uint64_t a1)
{
  v1 = sub_1A88(&qword_91D70);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_4C764(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91D70);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_91D58);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_4C81C()
{
  v2 = qword_91DA0;
  if (!qword_91DA0)
  {
    sub_B24C(&qword_91D98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4C8A4(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 224))
  {
    sub_209FC(*(a1 + 200), *(a1 + 208), *(a1 + 216) & 1);
  }

  return a1;
}

uint64_t sub_4C93C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_20C1C(v7, v8, v9 & 1);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v10 = *(a1 + 48);

  *(a2 + 48) = v10;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);

  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);

  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  memcpy((a2 + 88), (a1 + 88), 0x70uLL);
  if (*(a1 + 224))
  {
    v3 = *(a1 + 200);
    v4 = *(a1 + 208);
    v5 = *(a1 + 216);
    sub_20C1C(v3, v4, v5 & 1);
    *(a2 + 200) = v3;
    *(a2 + 208) = v4;
    *(a2 + 216) = v5 & 1;
    v6 = *(a1 + 224);

    *(a2 + 224) = v6;
  }

  else
  {
    *(a2 + 200) = *(a1 + 200);
    *(a2 + 216) = *(a1 + 216);
  }

  result = a2;
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 240) = *(a1 + 240);
  return result;
}

uint64_t sub_4CAF0()
{
  v8 = type metadata accessor for GlyphPopoverView();
  v1 = *(*(v8 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  v9 = *(v8 + 36);
  sub_1A88(&qword_91AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7C614();
    (*(*(v2 - 8) + 8))(v6 + v7 + v9);
  }

  else
  {
  }

  v5 = v6 + v7 + *(v8 + 40);
  sub_1A88(&qword_91A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BEF4();
    (*(*(v3 - 8) + 8))(v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4CD10()
{
  type metadata accessor for GlyphPopoverView();

  return sub_45ED0();
}

unint64_t sub_4CD8C()
{
  v2 = qword_91DB8;
  if (!qword_91DB8)
  {
    sub_B24C(&qword_91DB0);
    sub_2C078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4CE30(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_4CE90()
{
  v2 = qword_91DC8;
  if (!qword_91DC8)
  {
    sub_B24C(&qword_91DC0);
    sub_4CD8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4CF34(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C1C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4CF90(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_20C1C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  memcpy((a2 + 64), (a1 + 64), 0x70uLL);
  return a2;
}

unint64_t sub_4D08C()
{
  v2 = qword_91DD8;
  if (!qword_91DD8)
  {
    sub_B24C(&qword_91DD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D120(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

unint64_t sub_4D180()
{
  v2 = qword_91DE8;
  if (!qword_91DE8)
  {
    sub_B24C(&qword_91DE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91DE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D208(uint64_t a1)
{
  v7 = *(sub_1A88(&qword_91DF0) + 44);
  v6 = sub_1A88(&qword_91DF8);
  v8 = *(v6 + 48);
  sub_1A88(&qword_91E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + v7 + v8;

    v5 = v4 + *(type metadata accessor for RenderedGlyphView() + 36);
    sub_1A88(&qword_91A78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_7BEF4();
      (*(*(v1 - 8) + 8))(v5);
    }

    else
    {
    }
  }

  else
  {
  }

  v3 = a1 + v7 + *(v6 + 80);
  sub_209FC(*(v3 + 24), *(v3 + 32), *(v3 + 40) & 1);

  sub_209FC(*(v3 + 72), *(v3 + 80), *(v3 + 88) & 1);

  return a1;
}

uint64_t sub_4D410(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v33 = *(sub_1A88(&qword_91DF0) + 44);
  v2 = a2 + v33;
  *v2 = *(a1 + v33);
  *(v2 + 8) = *(a1 + v33 + 8);
  v34 = sub_1A88(&qword_91DF8);
  v35 = v34[12];
  sub_1A88(&qword_91E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = a1 + v33 + v35;
    v23 = a2 + v33 + v35;
    *v23 = *v24;
    v22 = *(v24 + 8);
    v22;
    *(v23 + 8) = v22;
    *(v23 + 16) = *(v24 + 16);
    *(v23 + 32) = *(v24 + 32);
    *(v23 + 40) = *(v24 + 40);
    v3 = type metadata accessor for RenderedGlyphView();
    v25 = (v23 + *(v3 + 36));
    v26 = (v24 + *(v3 + 36));
    sub_1A88(&qword_91A78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_7BEF4();
      (*(*(v4 - 8) + 16))(v25, v26);
    }

    else
    {
      v21 = *v26;

      *v25 = v21;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v30 = a1 + v33 + v35;
    v28 = a2 + v33 + v35;
    *v28 = *v30;
    v27 = *(v30 + 8);
    v27;
    *(v28 + 8) = v27;
    v29 = *(v30 + 16);

    *(v28 + 16) = v29;
    *(v28 + 24) = *(v30 + 24);
    swift_storeEnumTagMultiPayload();
  }

  v5 = a2 + v33 + v34[16];
  v6 = a1 + v33 + v34[16];
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v7 = v34[20];
  v20 = a2 + v33 + v7;
  v19 = a1 + v33 + v7;
  *v20 = *v19;
  *(v20 + 16) = *(v19 + 16);
  v9 = *(v19 + 24);
  v10 = *(v19 + 32);
  v11 = *(v19 + 40);
  sub_20C1C(v9, v10, v11 & 1);
  *(v20 + 24) = v9;
  *(v20 + 32) = v10;
  *(v20 + 40) = v11 & 1;
  v12 = *(v19 + 48);

  *(v20 + 48) = v12;
  *(v20 + 56) = *(v19 + 56);
  *(v20 + 64) = *(v19 + 64);
  v13 = *(v19 + 72);
  v14 = *(v19 + 80);
  v15 = *(v19 + 88);
  sub_20C1C(v13, v14, v15 & 1);
  *(v20 + 72) = v13;
  *(v20 + 80) = v14;
  *(v20 + 88) = v15 & 1;
  v16 = *(v19 + 96);

  *(v20 + 96) = v16;
  v17 = *(v19 + 104);

  *(v20 + 104) = v17;
  v18 = *(v19 + 112);

  result = a2;
  *(v20 + 112) = v18;
  *(v20 + 120) = *(v19 + 120);
  return result;
}

unint64_t sub_4D880()
{
  v2 = qword_91E18;
  if (!qword_91E18)
  {
    sub_B24C(&qword_91E10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E18);
    return WitnessTable;
  }

  return v2;
}

void *sub_4D908(void *a1, void *a2)
{
  v10 = sub_1A88(&qword_91E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    a2[1] = a1[1];
    *(a2 + 1) = *(a1 + 1);
    a2[4] = a1[4];
    a2[5] = a1[5];
    v2 = type metadata accessor for RenderedGlyphView();
    __dst = a2 + *(v2 + 36);
    __src = a1 + *(v2 + 36);
    v7 = sub_1A88(&qword_91A78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_7BEF4();
      (*(*(v3 - 8) + 32))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  return a2;
}

unint64_t sub_4DAAC()
{
  v2 = qword_91E28;
  if (!qword_91E28)
  {
    sub_B24C(&qword_91E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4DB34()
{
  v2 = qword_91E38;
  if (!qword_91E38)
  {
    sub_B24C(&qword_91E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4DBBC(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_209FC(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  return a1;
}

unint64_t sub_4DC28()
{
  v2 = qword_91E48;
  if (!qword_91E48)
  {
    sub_B24C(&qword_91E40);
    sub_4DB34();
    sub_38950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4DCD0(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_209FC(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  return a1;
}

unint64_t sub_4DD54()
{
  v2 = qword_91E58;
  if (!qword_91E58)
  {
    sub_B24C(&qword_91E50);
    sub_4DC28();
    sub_4DDFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4DDFC()
{
  v2 = qword_91E60;
  if (!qword_91E60)
  {
    sub_B24C(&qword_91E68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4DE84(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_91E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v6 = *(a1 + 8);
    v6;
    *(a2 + 8) = v6;
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 40) = *(a1 + 40);
    v2 = type metadata accessor for RenderedGlyphView();
    v7 = (a2 + *(v2 + 36));
    v8 = (a1 + *(v2 + 36));
    sub_1A88(&qword_91A78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = sub_7BEF4();
      (*(*(v3 - 8) + 16))(v7, v8);
    }

    else
    {
      v5 = *v8;

      *v7 = v5;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    v9 = *(a1 + 8);
    v9;
    *(a2 + 8) = v9;
    v10 = *(a1 + 16);

    *(a2 + 16) = v10;
    *(a2 + 24) = *(a1 + 24);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_4E078(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_20C1C(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_20C1C(v7, v8, v9 & 1);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 & 1;
  v10 = *(a1 + 96);

  *(a2 + 96) = v10;
  v11 = *(a1 + 104);

  *(a2 + 104) = v11;
  v13 = *(a1 + 112);

  result = a2;
  *(a2 + 112) = v13;
  *(a2 + 120) = *(a1 + 120);
  return result;
}

unint64_t sub_4E1D4()
{
  v2 = qword_91E70;
  if (!qword_91E70)
  {
    sub_B24C(&qword_91E08);
    sub_4D880();
    sub_46198();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91E70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4E27C(uint64_t a1)
{
  sub_1A88(&qword_91E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = a1 + *(type metadata accessor for RenderedGlyphView() + 36);
    sub_1A88(&qword_91A78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_7BEF4();
      (*(*(v1 - 8) + 8))(v3);
    }

    else
    {
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_4E3D8()
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%lld", 4uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%d", 2uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%llu", 4uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%u", 2uLL, 1);
  }

  if (swift_dynamicCastMetatype())
  {
    return sub_7CF84("%f", 2uLL, 1);
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return sub_7CF84("%lf", 3uLL, 1);
  }

  return sub_7CF84("%@", 2uLL, 1);
}

uint64_t *sub_4E6CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_7CCF4();
  return v15;
}

uint64_t sub_4E948()
{
  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  return sub_7C1A4();
}

int *sub_4E980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v24 = type metadata accessor for ListView();
  swift_getKeyPath();
  sub_7BF24();
  v18 = v24[6];
  sub_7BD04();
  sub_7D714();
  sub_B094();
  sub_7D214();
  v4 = sub_4F358();
  v5 = (a4 + v18);
  *v5 = v4;
  v5[1] = v6;
  v19 = v24[7];
  sub_7CF84("", 0, 1);
  v7 = sub_4F700();
  v8 = (a4 + v19);
  *v8 = v7;
  v8[1] = v9;
  v8[2] = v10;
  v20 = v24[8];
  v11 = sub_2EFE0();
  v12 = a4 + v20;
  *v12 = v11 & 1;
  *(v12 + 1) = v13;
  v21 = v24[9];
  v14 = sub_26C54();
  result = v24;
  v16 = (a4 + v21);
  *v16 = v17;
  v16[1] = v14;
  *(a4 + v24[10]) = a3;
  return result;
}

uint64_t sub_4EB00()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C184();

  return v1;
}

uint64_t sub_4EB74()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C194();

  return v1;
}

uint64_t sub_4EBE8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_4EC20@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91E78);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for ListView();
  sub_4ED54((v6 + *(v2 + 20)), v1);
  sub_7BF04();
  return sub_4EF58(v9);
}

uint64_t type metadata accessor for ListView()
{
  v1 = qword_92040;
  if (!qword_92040)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_4ED54(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A88(&qword_91A00);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a1, 1))
    {
      v3 = sub_1A88(&qword_91E80);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      v5 = *a1;

      *a2 = v5;
      v6 = a1[1];

      a2[1] = v6;
      v8 = a2 + *(v9 + 32);
      v7 = a1 + *(v9 + 32);
      v2 = sub_7CC54();
      (*(*(v2 - 8) + 16))(v8, v7);
      (*(v10 + 56))(a2, 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_4EF58(uint64_t a1)
{
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(a1, 1))
    {

      v3 = a1 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_4F0B0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91E78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v6);
  sub_4ED54(v2, (&v5 - v6));
  v3 = type metadata accessor for ListView();
  sub_4F160(v7, (v1 + *(v3 + 20)));
  return sub_4EF58(v8);
}

void *sub_4F160(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_4EF58(a2);
    v9 = sub_1A88(&qword_919F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1A88(&qword_91A00);
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(a1, 1))
      {
        v3 = sub_1A88(&qword_91E80);
        memcpy(a2, a1, *(*(v3 - 8) + 64));
      }

      else
      {
        *a2 = *a1;
        a2[1] = a1[1];
        v6 = a2 + *(v7 + 32);
        v5 = a1 + *(v7 + 32);
        v2 = sub_7CC54();
        (*(*(v2 - 8) + 32))(v6, v5);
        (*(v8 + 56))(a2, 0, 1, v7);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v9 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_4F358()
{

  sub_1A88(&qword_91E88);
  sub_7CAD4();

  return v1;
}

uint64_t sub_4F3DC()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91E90);
  sub_7CAE4();

  return v1;
}

uint64_t sub_4F478()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91E90);
  sub_7CAF4();
  sub_4F54C();
}

uint64_t sub_4F584()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91E90);
  sub_7CB04();

  return v1;
}

uint64_t sub_4F638()
{
  v2 = *(v0 + *(type metadata accessor for ListView() + 24));

  return v2;
}

uint64_t sub_4F688(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ListView() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_4F700()
{

  sub_7CAD4();

  return v1;
}

uint64_t sub_4F794()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91E98);
  sub_7CAE4();

  return v1;
}

uint64_t sub_4F84C()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91E98);
  sub_7CAF4();
  sub_4F93C();
}

uint64_t sub_4F974()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91E98);
  sub_7CB04();

  return v1;
}

uint64_t sub_4FA44()
{
  v2 = *(v0 + *(type metadata accessor for ListView() + 28));

  return v2;
}

uint64_t sub_4FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(type metadata accessor for ListView() + 28));
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
}

uint64_t sub_4FB28()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91640);
  sub_7CAE4();

  return v1 & 1;
}

uint64_t sub_4FBB8()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91640);
  sub_7CAF4();
  sub_26D50();
}

uint64_t sub_4FC64()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91640);
  sub_7CB04();

  return v1;
}

uint64_t sub_4FD0C()
{
  v2 = *(v0 + *(type metadata accessor for ListView() + 32));

  return v2 & 1;
}

uint64_t sub_4FD58(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for ListView() + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

double sub_4FDB4()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91448);
  sub_7CAE4();

  return v1;
}

uint64_t sub_4FE40()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91448);
  sub_7CAF4();
  sub_26D50();
}

double sub_4FEEC()
{
  type metadata accessor for ListView();

  sub_1A88(&qword_91448);
  sub_7CB04();

  return v1;
}

double sub_4FF90()
{
  v2 = *(v0 + *(type metadata accessor for ListView() + 36));

  return v2;
}

uint64_t sub_4FFD8(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for ListView() + 36);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_50054()
{
  v1 = type metadata accessor for ListView();
  if (*(v0 + *(v1 + 40)))
  {
    if (*(v0 + *(v1 + 40)) == 1)
    {
      sub_4EB00();
      sub_13FDC();

      type metadata accessor for FontProviderFamily();
      type metadata accessor for Family();
      sub_129FC();
      sub_128FC();
      sub_7D504();
      sub_4EB00();
      sub_13F40();

      type metadata accessor for FontAssetFamily();
      sub_1297C();
      sub_7D504();
      sub_1A88(&qword_90D38);
      sub_50284();
      v3 = sub_7D244();

      return v3;
    }

    else
    {
      sub_4EB00();
      sub_14E70();

      type metadata accessor for FontAssetFamily();
      type metadata accessor for Family();
      sub_1297C();
      sub_128FC();
      v4 = sub_7D504();
    }
  }

  else
  {
    sub_4EB00();
    v4 = sub_148EC();
  }

  return v4;
}

unint64_t sub_50284()
{
  v2 = qword_91EA0;
  if (!qword_91EA0)
  {
    sub_B24C(&qword_90D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5030C()
{
  v1 = type metadata accessor for ListView();
  if (*(v0 + *(v1 + 40)))
  {
    if (*(v0 + *(v1 + 40)) == 1)
    {
      sub_4EB00();
      sub_13FDC();

      type metadata accessor for FontProviderFamily();
      type metadata accessor for Family();
      sub_129FC();
      sub_128FC();
      sub_7D504();
      sub_4EB00();
      sub_13F40();

      type metadata accessor for FontAssetFamily();
      sub_1297C();
      sub_7D504();
      sub_1A88(&qword_90D38);
      sub_50284();
      v3 = sub_7D244();

      return v3;
    }

    else
    {
      sub_4EB00();
      sub_13F40();

      type metadata accessor for FontAssetFamily();
      type metadata accessor for Family();
      sub_1297C();
      sub_128FC();
      v4 = sub_7D504();
    }
  }

  else
  {
    type metadata accessor for Family();
    sub_7D714();
    sub_128FC();
    return sub_7D214();
  }

  return v4;
}

uint64_t sub_50550()
{
  v39 = 0;
  v58 = 0;
  v57 = 0;
  v33 = 0;
  v34 = sub_7CC54();
  v35 = *(v34 - 8);
  v36 = v35;
  __chkstk_darwin(v34 - 8);
  v37 = &v9 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A88(&qword_91E78);
  v38 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44 - 8);
  v1 = (&v9 - v38);
  v45 = &v9 - v38;
  v40 = (*(*(sub_1A88(&qword_91E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v46 = &v9 - v40;
  v41 = &v9 - v40;
  v58 = v2;
  v43 = type metadata accessor for ListView();
  sub_4ED54((v42 + *(v43 + 20)), v1);
  sub_7BF04();
  sub_4EF58(v45);
  v47 = sub_1A88(&qword_91A00);
  if ((*(*(v47 - 8) + 48))(v46, 1) == 1)
  {
    sub_50B80(v41);
    v32 = 2;
  }

  else
  {
    sub_7CBA4();
    sub_5131C(v41);
    v31 = sub_7CC44();
    (*(v36 + 8))(v37, v34);
    v32 = v31 & 1;
  }

  v56 = v32;
  if (v32 == 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v56;
  }

  if (v30)
  {
    v29 = sub_5030C();
  }

  else
  {
    v29 = sub_50054();
  }

  v55 = v29;
  v21 = type metadata accessor for Family();
  v22 = sub_1A88(&qword_90D38);
  sub_50284();
  v57 = sub_7D134();
  v3 = (v42 + *(v43 + 28));
  v23 = *v3;
  v24 = v3[1];
  v25 = v3[2];

  v52 = v23;
  v53 = v24;
  v54 = v25;
  sub_1A88(&qword_91E98);
  sub_7CAE4();
  v26 = v50;
  v27 = v51;

  v28 = sub_7CFB4();

  if (v28)
  {
    v14 = v33;
  }

  else
  {
    v4 = v33;
    v15 = v57;

    v48 = v15;
    v16 = &v9;
    __chkstk_darwin(&v9);
    v17 = &v9 - 4;
    *(&v9 - 2) = v5;
    v18 = sub_1A88(&qword_91EA8);
    sub_51294();
    v6 = sub_7D554();
    v19 = v4;
    v20 = v6;
    if (v4)
    {
      __break(1u);
      goto LABEL_17;
    }

    v57 = v20;

    v14 = v19;
  }

  v7 = v14;
  v11 = v57;

  v49 = v11;
  v12 = sub_1A88(&qword_91EA8);
  sub_511E0();
  v13 = sub_7D054();
  if (!v7)
  {
    v10 = v13;
    sub_B2C0();
    sub_B2C0();
    return v10;
  }

LABEL_17:
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_50B80(uint64_t a1)
{
  v5 = sub_1A88(&qword_91A00);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 32);
    v1 = sub_7CC54();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_50C60()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();

  swift_endAccess();
  type metadata accessor for ListView();

  sub_1A88(&qword_91E98);
  sub_7CAE4();

  sub_198A4();
  v3 = sub_7D464();
  sub_1F58();
  sub_1F58();

  if (v3)
  {
    v2 = 1;
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();

    sub_7CAE4();

    v1 = sub_7D464();
    sub_1F58();
    sub_1F58();
    v2 = v1;
  }

  return v2 & 1;
}

uint64_t sub_50FD0()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();

  swift_endAccess();
  swift_beginAccess();

  swift_endAccess();
  sub_198A4();
  sub_7D454();
  sub_1F58();
  sub_1F58();
  type metadata accessor for ComparisonResult();
  sub_60EC4();
  v1 = sub_7D724();

  return v1 & 1;
}

unint64_t sub_511E0()
{
  v2 = qword_91EB0;
  if (!qword_91EB0)
  {
    sub_B24C(&qword_91EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_51294()
{
  v2 = qword_91EB8;
  if (!qword_91EB8)
  {
    sub_B24C(&qword_91EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5131C(uint64_t a1)
{

  v3 = *(sub_1A88(&qword_91A00) + 32);
  v1 = sub_7CC54();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_513B0()
{
  v12 = 0;
  v4[1] = 0;
  v9 = sub_7CEF4();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v8 = v4 - v5;
  v12 = v0;
  v1 = type metadata accessor for ListView();
  sub_79024(*(v0 + *(v1 + 40)), v8);
  v10 = sub_61F88(v8);
  v11 = v2;
  (*(v6 + 8))(v8, v9);
  return v10;
}

uint64_t sub_514D0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v24 = sub_52D1C;
  v30 = &unk_807B8;
  v35 = &opaque type descriptor for <<opaque return type of View.refreshable(action:)>>;
  v55 = 0;
  v54 = 0;
  v50 = 0;
  v17 = 0;
  v14 = type metadata accessor for ListView();
  v8 = *(v14 - 8);
  v26 = v8;
  v27 = *(v8 + 64);
  v9 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v29 = &v7 - v9;
  v33 = sub_1A88(&qword_91EC0);
  v10 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v7 - v10;
  v42 = sub_1A88(&qword_91EC8);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v11 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v40 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v41 = &v7 - v12;
  v55 = &v7 - v12;
  v54 = v1;
  v3 = sub_50550();
  v4 = v25;
  v13 = v3;
  type metadata accessor for Family();
  v21 = sub_7D0E4();

  v5 = &v4[*(v14 + 24)];
  v15 = *v5;
  v16 = *(v5 + 1);

  v52 = v15;
  v53 = v16;
  sub_1A88(&qword_91E90);
  sub_7CAE4();
  v19 = v51;

  v18 = sub_7BD04();
  sub_B094();
  v20 = sub_7D234();

  v50 = v21 == v20;
  v22 = &v45;
  v46 = v25;
  v47 = v21 == v20;
  v23 = sub_1A88(&qword_91ED0);
  sub_52D2C();
  sub_7CA14();
  sub_598D0(v25, v29);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  sub_59F44(v29, (v31 + v28));
  v34 = sub_5A300();
  sub_7C7A4();

  sub_5A398(v32);
  v48 = v33;
  v49 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1991C(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_51A50@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v151 = a2;
  v150 = a1;
  v90 = a3;
  v91 = a2;
  v152 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v175 = 0;
  v168 = 0;
  v92 = sub_7C404();
  v93 = *(v92 - 8);
  v94 = v93;
  __chkstk_darwin(0);
  v95 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_7C264();
  v97 = *(v96 - 8);
  v98 = v97;
  __chkstk_darwin(v152);
  v99 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ListView();
  v101 = *(v100 - 8);
  v102 = v101;
  v103 = *(v101 + 64);
  __chkstk_darwin(v100 - 8);
  v104 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1A88(&qword_91F28);
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v105 - 8);
  v109 = &v31 - v108;
  v110 = sub_1A88(&qword_920D8);
  v111 = *(v110 - 8);
  v112 = v111;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v110 - 8);
  v114 = &v31 - v113;
  v115 = sub_1A88(&qword_91F10);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v115 - 8);
  v117 = &v31 - v116;
  v118 = sub_1A88(&qword_920E0);
  v119 = *(v118 - 8);
  v120 = v119;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118 - 8);
  v122 = &v31 - v121;
  v123 = sub_1A88(&qword_91F00);
  v124 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123 - 8);
  v125 = &v31 - v124;
  v126 = sub_1A88(&qword_91EF8);
  v127 = *(v126 - 8);
  v128 = v127;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v126 - 8);
  v130 = &v31 - v129;
  v131 = sub_1A88(&qword_91F90);
  v132 = *(v131 - 8);
  v133 = v132;
  v135 = *(v132 + 64);
  __chkstk_darwin(v131 - 8);
  v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  v134 = &v31 - v137;
  __chkstk_darwin(&v31 - v137);
  v136 = &v31 - v137;
  __chkstk_darwin(v6);
  v138 = &v31 - v137;
  v195 = &v31 - v137;
  v139 = sub_1A88(&qword_91F88);
  v140 = *(v139 - 8);
  v141 = v140;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v139 - 8);
  v143 = &v31 - v142;
  v144 = sub_1A88(&qword_91EE8);
  v146 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144 - 8);
  v148 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v145 = &v31 - v148;
  __chkstk_darwin(&v31 - v148);
  v147 = &v31 - v148;
  __chkstk_darwin(v7);
  v149 = &v31 - v148;
  v194 = &v31 - v148;
  v153 = sub_1A88(&qword_91ED0);
  v154 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v152);
  v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = &v31 - v156;
  __chkstk_darwin(v8);
  v157 = &v31 - v156;
  v193 = &v31 - v156;
  v192 = v9;
  v191 = v10;
  v158 = sub_7D184();
  v159 = sub_7D174();
  v160 = sub_7D154();
  v161 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v88 = sub_50054();
  v87 = type metadata accessor for Family();
  sub_128FC();
  v89 = sub_7D284();

  if (v89)
  {
    sub_53538();
    v174 = v12;
    v173[0] = sub_513B0();
    v173[1] = v13;
    v81 = sub_52F94();
    v83 = sub_198A4();
    v77 = v83;
    v79 = &unk_8F330;
    v80 = &type metadata for String;
    v78 = v173;
    sub_7C824();
    sub_1F58();
    v82 = 1;
    v84 = sub_7CF84("CONTENT_UNAVAILABLE_VIEW", 0x18uLL, 1);
    v85 = v14;
    v169 = v79;
    v170 = v80;
    v171 = v81;
    v172 = v83;
    swift_getOpaqueTypeConformance2();
    sub_7C884();

    (*(v141 + 8))(v143, v139);
    v86 = sub_52E90();
    sub_1991C(v147, v144, v149);
    sub_5E92C(v147);
    v168 = v147;
    sub_5E9F0(v149, v145);
    sub_1991C(v145, v144, v147);
    sub_5E92C(v145);
    sub_5E9F0(v147, v145);
    v15 = sub_53010();
    v164 = v123;
    v165 = &type metadata for String;
    v166 = v15;
    v167 = v77;
    v76 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v162 = v126;
    v163 = OpaqueTypeConformance2;
    v17 = swift_getOpaqueTypeConformance2();
    sub_19980(v145, v144, v131, v86, v17, v155);
    sub_5E92C(v145);
    sub_5E62C(v155, v157);
    sub_5E92C(v147);
    sub_5E92C(v149);
  }

  else
  {
    v190 = sub_50550();
    v18 = &v150[*(v100 + 24)];
    v33 = *v18;
    v34 = *(v18 + 1);

    v189[13] = v33;
    v189[14] = v34;
    sub_1A88(&qword_91E90);
    sub_7CB04();
    v39 = v189[10];
    v40 = v189[11];
    v41 = v189[12];

    sub_598D0(v150, v104);
    v35 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v42 = swift_allocObject();
    sub_59F44(v104, (v42 + v35));
    v67 = 0;
    v43 = sub_7BD04();
    v44 = sub_1A88(&qword_91EA8);
    v45 = sub_1A88(&qword_920E8);
    v38 = sub_B094();
    v37 = sub_5E09C();
    v36 = sub_5E124();
    v29 = sub_5E240();
    v28 = v36;
    v27 = v37;
    sub_53E74(&v190, v39, v40, v41, sub_5E01C, v42, v43, v44);
    v46 = sub_53280();
    sub_7C6F4();
    (*(v107 + 8))(v109, v105);
    sub_54084();
    v189[8] = v105;
    v189[9] = v46;
    v72 = 1;
    v47 = swift_getOpaqueTypeConformance2();
    v19 = sub_5E2C0();
    sub_5409C(v99, v110, v96, v47, v19, v117);
    (*(v98 + 8))(v99, v96);
    (*(v112 + 8))(v114, v110);
    v50 = &v31;
    __chkstk_darwin(&v31);
    v49 = &v27;
    v30 = v20 & 1;
    v51 = sub_1A88(&qword_91F18);
    v52 = sub_53188();
    v48 = sub_B24C(&qword_91F48);
    v21 = sub_53390();
    v189[6] = v48;
    v189[7] = v21;
    v53 = swift_getOpaqueTypeConformance2();
    sub_7C974();
    sub_5E350(v117);
    v58 = &v31;
    __chkstk_darwin(&v31);
    v54 = &v27;
    v29 = v22;
    v55 = sub_1A88(&qword_92118);
    v189[2] = v115;
    v189[3] = v51;
    v189[4] = v52;
    v189[5] = v53;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = sub_5E3E8();
    sub_3274C();
    sub_7C924();
    (*(v120 + 8))(v122, v118);
    v189[0] = sub_513B0();
    v189[1] = v23;
    v64 = sub_53010();
    v65 = sub_198A4();
    v63 = &type metadata for String;
    v59 = v189;
    sub_7C824();
    sub_1F58();
    sub_5E508(v125);
    v24 = &v150[*(v100 + 28)];
    v60 = *v24;
    v61 = *(v24 + 1);
    v62 = *(v24 + 2);

    v186 = v60;
    v187 = v61;
    v188 = v62;
    sub_1A88(&qword_91E98);
    sub_7CB04();
    v68 = v182;
    v69 = v183;
    v66 = v184;
    v70 = v185;

    sub_7C3F4();
    v178 = v123;
    v179 = v63;
    v180 = v64;
    v181 = v65;
    v71 = swift_getOpaqueTypeConformance2();
    v29 = v71;
    v28 = v126;
    v27 = v67;
    sub_7C754();
    (*(v94 + 8))(v95, v92);

    (*(v128 + 8))(v130, v126);
    v176 = v126;
    v177 = v71;
    v73 = swift_getOpaqueTypeConformance2();
    sub_1991C(v136, v131, v138);
    v74 = *(v133 + 8);
    v75 = (v133 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v136, v131);
    v175 = v136;
    v32 = *(v133 + 16);
    v31 = v133 + 16;
    v32(v134, v138, v131);
    sub_1991C(v134, v131, v136);
    v74(v134, v131);
    v32(v134, v136, v131);
    v25 = sub_52E90();
    sub_19A78(v134, v144, v131, v25, v73, v155);
    v74(v134, v131);
    sub_5E62C(v155, v157);
    v74(v136, v131);
    v74(v138, v131);
  }

  sub_5E7AC(v157, v155);
  sub_52D2C();
  sub_1991C(v155, v153, v90);
  sub_5A398(v155);
  sub_5A398(v157);
}

unint64_t sub_52D2C()
{
  v2 = qword_91ED8;
  if (!qword_91ED8)
  {
    sub_B24C(&qword_91ED0);
    sub_52E90();
    sub_B24C(&qword_91EF8);
    sub_B24C(&qword_91F00);
    sub_53010();
    sub_198A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91ED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_52E90()
{
  v2 = qword_91EE0;
  if (!qword_91EE0)
  {
    sub_B24C(&qword_91EE8);
    sub_52F94();
    sub_198A4();
    swift_getOpaqueTypeConformance2();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_52F94()
{
  v2 = qword_91EF0;
  if (!qword_91EF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91EF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53010()
{
  v2 = qword_91F08;
  if (!qword_91F08)
  {
    sub_B24C(&qword_91F00);
    sub_B24C(&qword_91F10);
    sub_B24C(&qword_91F18);
    sub_53188();
    sub_B24C(&qword_91F48);
    sub_53390();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_534B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53188()
{
  v2 = qword_91F20;
  if (!qword_91F20)
  {
    sub_B24C(&qword_91F10);
    sub_B24C(&qword_91F28);
    sub_53280();
    swift_getOpaqueTypeConformance2();
    sub_53308();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53280()
{
  v2 = qword_91F30;
  if (!qword_91F30)
  {
    sub_B24C(&qword_91F28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53308()
{
  v2 = qword_91F38;
  if (!qword_91F38)
  {
    sub_B24C(&qword_91F40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53390()
{
  v2 = qword_91F50;
  if (!qword_91F50)
  {
    sub_B24C(&qword_91F48);
    sub_53428();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_53428()
{
  v2 = qword_91F58;
  if (!qword_91F58)
  {
    sub_B24C(&qword_91F60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_534B0()
{
  v2 = qword_91F68;
  if (!qword_91F68)
  {
    sub_B24C(&qword_91F70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_53554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = &v143;
  v111 = a3;
  v124 = a1;
  v121 = a2;
  v162 = 0;
  v161 = 0;
  memset(__b, 0, 0x21uLL);
  memset(v158, 0, 32);
  memset(v156, 0, sizeof(v156));
  v149 = 0u;
  v150 = 0u;
  v143 = 0u;
  v144 = 0u;
  v122 = 0;
  v112 = sub_7CC54();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112);
  v116 = &v54 - v115;
  v117 = sub_1A88(&qword_91E78);
  v118 = (*(*(v117 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v117);
  v119 = (&v54 - v118);
  v123 = (*(*(sub_1A88(&qword_91E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v122);
  v125 = &v54 - v123;
  v126 = *v124;
  *(v3 + 472) = v126;
  *(v3 + 464) = v4;
  v127 = sub_7D184();
  v128 = sub_7D174();
  v129 = sub_7D154();
  v130 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v119;
  v7 = type metadata accessor for ListView();
  sub_4ED54((v121 + *(v7 + 20)), v6);
  sub_7BF04();
  sub_4EF58(v119);
  v110 = sub_1A88(&qword_91A00);
  if ((*(*(v110 - 8) + 48))(v125, 1) == 1)
  {
    sub_50B80(v125);
    v109 = 2;
  }

  else
  {
    sub_7CBA4();
    sub_5131C(v125);
    v108 = sub_7CC44();
    (*(v113 + 8))(v116, v112);
    v109 = v108 & 1;
  }

  v107 = v109;
  v158[38] = v109;
  v159 = 1;
  if (v109 != 2)
  {
    v131 = v107;
    if (v159 != 2)
    {
      v106 = (v131 & 1) == (v159 & 1);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v159 != 2)
  {
LABEL_14:
    v106 = 0;
    goto LABEL_12;
  }

  v106 = 1;
LABEL_12:
  if (v106)
  {
    v77 = &v148;
    swift_beginAccess();
    v78 = *(v126 + 32);
    v79 = *(v126 + 40);

    swift_endAccess();
    v8 = v79;
    v9 = v120;
    v80 = &v147;
    *(v120 + 13) = v78;
    *(v9 + 14) = v8;
    sub_198A4();
    v10 = sub_7C6E4();
    v11 = v120;
    *(v120 + 9) = v10;
    *(v11 + 10) = v12;
    v146 = v13;
    *(v11 + 12) = v14;
    v15 = *(v11 + 9);
    v16 = *(v11 + 10);
    v17 = v146;
    v18 = *(v11 + 12);
    v81 = v145;
    *(v11 + 5) = v15;
    *(v11 + 6) = v16;
    v93 = 1;
    v145[16] = v17 & 1;
    *(v11 + 8) = v18;
    v95 = &v149;
    v90 = &type metadata for Text;
    v91 = &protocol witness table for Text;
    sub_1991C(v145, &type metadata for Text, &v149);
    sub_23BF4(v81);
    v82 = *(v120 + 18);
    v83 = *(v120 + 19);
    v84 = v150;
    v85 = *(v120 + 21);
    sub_20C1C(v82, v83, v150 & 1);

    v86 = v140;
    v140[0] = v82;
    v140[1] = v83;
    v141 = v84 & 1 & v93;
    v142 = v85;
    v94 = &v143;
    sub_1991C(v140, v90, &v143);
    sub_23BF4(v86);
    v87 = v143;
    v88 = v144;
    v89 = *(v120 + 3);
    sub_20C1C(v143, *(&v143 + 1), v144 & 1);

    v92 = &v132;
    v132 = v87;
    v133 = v88 & 1 & v93;
    v134 = v89;
    v19 = sub_5E1C8();
    sub_19980(v92, v90, &unk_8EB40, v91, v19, &v135);
    sub_23BF4(v92);
    v97 = v135;
    v98 = v136;
    v99 = v137;
    v100 = v138;
    v96 = v139;
    sub_60DB0(v135, v136, v137, v138, v139 & 1);
    v20 = v120;
    v21 = v93;
    v22 = v94;
    v23 = v96;
    v24 = v98;
    v25 = v99;
    v26 = v100;
    *(v120 + 53) = v97;
    *(v20 + 54) = v24;
    *(v20 + 55) = v25;
    *(v20 + 56) = v26;
    __b[32] = v23 & 1 & v21;
    sub_23BF4(v22);
    sub_23BF4(v95);
    v101 = v97;
    v102 = v98;
    v103 = v99;
    v104 = v100;
    v105 = v96;
  }

  else
  {

    v27 = sub_1B008();
    v28 = v120;
    v57 = &v157;
    *(v120 + 44) = v27;
    *(v28 + 45) = v29;
    *(v28 + 46) = v30;
    *(v28 + 47) = v31;
    v68 = sub_5E1C8();
    v71 = v158;
    v67 = &unk_8EB40;
    sub_1991C(v57, &unk_8EB40, v158);
    sub_1B0CC();
    v58 = *(v120 + 48);
    v59 = *(v120 + 49);
    v60 = *(v120 + 50);
    v61 = *(v120 + 51);

    v32 = v59;
    v33 = v60;
    v34 = v61;
    v35 = v67;
    v36 = v120;
    v62 = v155;
    *(v120 + 36) = v58;
    *(v36 + 37) = v32;
    *(v36 + 38) = v33;
    *(v36 + 39) = v34;
    v70 = v156;
    sub_1991C(v155, v35, v156);
    sub_1B0CC();
    v63 = *(v120 + 40);
    v64 = *(v120 + 41);
    v65 = *(v120 + 42);
    v66 = *(v120 + 43);

    v37 = v64;
    v38 = v65;
    v39 = v66;
    v40 = v67;
    v41 = v68;
    v42 = v120;
    v69 = v152;
    *(v120 + 27) = v63;
    *(v42 + 28) = v37;
    *(v42 + 29) = v38;
    *(v42 + 30) = v39;
    sub_19A78(v152, &type metadata for Text, v40, &protocol witness table for Text, v41, &v153);
    sub_1B0CC();
    v73 = *(v120 + 31);
    v74 = *(v120 + 32);
    v75 = *(v120 + 33);
    v76 = *(v120 + 34);
    v72 = v154;
    sub_60DB0(v73, v74, v75, v76, v154 & 1);
    v43 = v120;
    v44 = v72;
    v45 = v74;
    v46 = v75;
    v47 = v76;
    *(v120 + 53) = v73;
    *(v43 + 54) = v45;
    *(v43 + 55) = v46;
    *(v43 + 56) = v47;
    __b[32] = v44 & 1;
    sub_1B0CC();
    sub_1B0CC();
    v101 = v73;
    v102 = v74;
    v103 = v75;
    v104 = v76;
    v105 = v72;
  }

  v48 = v120;
  v49 = v102;
  v50 = v103;
  v51 = v104;
  v52 = v105;
  v56 = v151;
  *(v120 + 22) = v101;
  *(v48 + 23) = v49;
  *(v48 + 24) = v50;
  *(v48 + 25) = v51;
  v151[32] = v52 & 1;
  v55 = sub_1A88(&qword_920E8);
  sub_5E124();
  sub_1991C(v56, v55, v111);
  sub_60E18(v56);
  sub_60E18(__b);
}

uint64_t sub_53E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_7CBE4();
  swift_getWitnessTable();
  sub_7C664();

  return (*(*(a8 - 8) + 8))(a1);
}

uint64_t sub_5409C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a6;
  v8 = a1;
  v15 = a2;
  v11 = a3;
  v16 = a4;
  v12 = a5;
  v19 = a2;
  v18 = a3;
  v10 = *(a3 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(a1);
  v13 = &v8 - v9;
  (*(v10 + 16))(v6);
  v17 = sub_7BFB4();
  sub_7C764();
}

uint64_t sub_54184@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v68 = v139;
  v109 = a2;
  v108 = a1;
  v50 = a3;
  v51 = a2;
  v110 = 0;
  v140 = 0;
  v139[1] = 0;
  v139[0] = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v52 = sub_1A88(&qword_91F60);
  v53 = *(v52 - 8);
  v54 = v53;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52 - 8);
  v56 = v20 - v55;
  v140 = v20 - v55;
  v57 = sub_1A88(&qword_92140);
  v58 = *(v57 - 8);
  v59 = v58;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57 - 8);
  v61 = v20 - v60;
  v68[1] = v20 - v60;
  v62 = sub_1A88(&qword_92148);
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = *(v63 + 64);
  __chkstk_darwin(v110);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = v20 - v67;
  __chkstk_darwin(v3);
  v69 = v20 - v67;
  *v68 = v20 - v67;
  sub_7BFA4();
  __chkstk_darwin(v110);
  v70 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_7C014();
  v72 = *(v71 - 8);
  v73 = v72;
  v74 = *(v72 + 64);
  __chkstk_darwin(v71 - 8);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v20 - v76;
  __chkstk_darwin(v20 - v76);
  v77 = v20 - v76;
  v138 = v20 - v76;
  v78 = sub_1A88(&qword_92150);
  v79 = *(v78 - 8);
  v80 = v79;
  v81 = *(v79 + 64);
  __chkstk_darwin(v110);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = v20 - v83;
  __chkstk_darwin(v5);
  v84 = v20 - v83;
  v137 = v20 - v83;
  v85 = sub_7CC54();
  v86 = *(v85 - 8);
  v87 = v86;
  __chkstk_darwin(v85 - 8);
  v88 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1A88(&qword_91E78);
  v90 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89 - 8);
  v91 = (v20 - v90);
  v7 = sub_1A88(&qword_91E80);
  v92 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v93 = v20 - v92;
  v94 = sub_1A88(&qword_92158);
  v96 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v110);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = v20 - v98;
  __chkstk_darwin(v8);
  v97 = v20 - v98;
  __chkstk_darwin(v9);
  v99 = v20 - v98;
  v136 = v20 - v98;
  v10 = sub_7C434();
  __chkstk_darwin(v10 - 8);
  v100 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1A88(&qword_92160);
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  __chkstk_darwin(v101 - 8);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = v20 - v106;
  __chkstk_darwin(v20 - v106);
  v107 = v20 - v106;
  v135 = v20 - v106;
  v111 = sub_1A88(&qword_91F48);
  v113 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v110);
  v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = v20 - v115;
  __chkstk_darwin(v12);
  v114 = v20 - v115;
  __chkstk_darwin(v13);
  v116 = v20 - v115;
  v134 = v20 - v115;
  v133 = v14;
  v132 = v15;
  v117 = sub_7D184();
  v118 = sub_7D174();
  v119 = sub_7D154();
  v120 = v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = type metadata accessor for ListView();
  if (sub_79A04(*(v108 + *(v49 + 40)), 0))
  {
    (*(v54 + 56))(v112, 1, 1, v52);
    sub_53428();
    sub_7C464();
    sub_5EF84(v112);
    sub_5F038(v114, v116);
    goto LABEL_20;
  }

  v17 = v91;
  sub_7C414();
  v44 = v20;
  __chkstk_darwin(v20);
  v42 = &v20[-4];
  v43 = sub_1A88(&qword_92168);
  sub_5F2A8();
  sub_7BF74();
  v45 = sub_5F500();
  sub_1991C(v105, v101, v107);
  v46 = *(v103 + 8);
  v47 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v105, v101);
  sub_4ED54((v108 + *(v49 + 20)), v17);
  sub_7BF04();
  sub_4EF58(v91);
  v48 = sub_1A88(&qword_91A00);
  if ((*(*(v48 - 8) + 48))(v93, 1) == 1)
  {
    sub_50B80(v93);
    v41 = 2;
  }

  else
  {
    sub_7CBA4();
    sub_5131C(v93);
    v40 = sub_7CC44();
    (*(v87 + 8))(v88, v85);
    v41 = v40 & 1;
  }

  v38 = v41;
  v39 = &v131;
  v130 = v41;
  v131 = 1;
  if (v41 == 2)
  {
    if (*v39 == 2)
    {
      v37 = 1;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v121 = v38;
  if (*v39 == 2)
  {
LABEL_15:
    v37 = 0;
    goto LABEL_13;
  }

  v37 = v121 ^ *v39 ^ 1;
LABEL_13:
  if (v37)
  {
    sub_514A8();
    v20[3] = v20;
    __chkstk_darwin(v20);
    v20[1] = &v20[-4];
    v20[2] = sub_1A88(&qword_921B8);
    sub_5F9D4();
    sub_7BF74();
    v29 = sub_5FA7C();
    sub_1991C(v82, v78, v84);
    v36 = *(v80 + 8);
    v35 = v80 + 8;
    v36(v82, v78);
    sub_514A8();
    sub_56928();
    sub_7C024();
    sub_1991C(v75, v71, v77);
    v34 = *(v73 + 8);
    v33 = v73 + 8;
    v34(v75, v71);
    sub_514A8();
    v27 = v20;
    __chkstk_darwin(v20);
    v25 = &v20[-4];
    v26 = sub_1A88(&qword_921D0);
    v21 = sub_B24C(&qword_921D8);
    v22 = sub_B24C(&qword_91780);
    v23 = sub_5FB0C();
    v24 = sub_198A4();
    v18 = sub_375B8();
    v122 = v21;
    v123 = &type metadata for String;
    v124 = v22;
    v125 = &type metadata for Text;
    v126 = v23;
    v127 = v24;
    v128 = v18;
    v129 = &protocol witness table for Text;
    v30 = 1;
    swift_getOpaqueTypeConformance2();
    sub_7BF74();
    v28 = sub_5FBB4();
    sub_1991C(v66, v62, v69);
    v32 = *(v64 + 8);
    v31 = v64 + 8;
    v32(v66, v62);
    (*(v80 + 16))(v82, v84, v78);
    (*(v73 + 16))(v75, v77, v71);
    (*(v64 + 16))(v66, v69, v62);
    sub_58CE8(v82, v75, v66, v78, v71, v62, v61);
    v32(v66, v62);
    v34(v75, v71);
    v36(v82, v78);
    (*(v59 + 16))(v95, v61, v57);
    (*(v59 + 56))(v95, 0, v30, v57);
    sub_5F588();
    sub_7C464();
    sub_5F610(v95);
    sub_5F6C4(v97, v99);
    (*(v59 + 8))(v61, v57);
    v32(v69, v62);
    v34(v77, v71);
    v36(v84, v78);
  }

  else
  {
    (*(v59 + 56))(v95, 1, 1, v57);
    sub_5F588();
    sub_7C464();
    sub_5F610(v95);
    sub_5F6C4(v97, v99);
  }

  (*(v103 + 16))(v105, v107, v101);
  sub_5F7F8(v99, v97);
  sub_5F92C();
  sub_58E70(v105, v97, v101, v94, v56);
  sub_5F610(v97);
  v46(v105, v101);
  (*(v54 + 16))(v112, v56, v52);
  (*(v54 + 56))(v112, 0, 1, v52);
  sub_53428();
  sub_7C464();
  sub_5EF84(v112);
  sub_5F038(v114, v116);
  (*(v54 + 8))(v56, v52);
  sub_5F610(v99);
  v46(v107, v101);
LABEL_20:
  sub_5F16C(v116, v114);
  sub_53390();
  sub_7C454();
  sub_5EF84(v114);
  sub_5EF84(v116);
}

uint64_t sub_5581C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v33 = a1;
  v49 = 0;
  v48 = 0;
  v34 = 0;
  v20 = sub_7CEF4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v24 = v9 - v23;
  v25 = sub_7BEC4();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v29 = v9 - v28;
  v30 = sub_1A88(&qword_92180);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v32 = v9 - v31;
  v35 = sub_1A88(&qword_92168);
  v39 = *(*(v35 - 8) + 64);
  v36 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v37 = v9 - v36;
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v40 = v9 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v42 = v9 - v41;
  v49 = v9 - v41;
  v48 = v4;
  v43 = sub_7D184();
  v44 = sub_7D174();
  v45 = sub_7D154();
  v46 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7BEB4();
  v9[2] = sub_5030C();
  v9[1] = type metadata accessor for Family();
  sub_128FC();
  v10 = sub_7D284();

  sub_5F3F8();
  v14 = 1;
  sub_7C984();
  (*(v26 + 8))(v29, v25);
  v13 = 20;
  v11 = sub_7CF84("EDIT_INSTALLED_FONTS", 0x14uLL, v14 & 1);
  v12 = v6;
  sub_5F350();
  sub_7C884();

  sub_609AC(v32);
  sub_7CF84("Edit installed fonts", v13, v14 & 1);
  sub_7CE94();
  v15 = sub_61F88(v24);
  v16 = v7;
  (*(v21 + 8))(v24, v20);
  v17 = v47;
  v47[0] = v15;
  v47[1] = v16;
  sub_198A4();
  sub_7C114();
  sub_1F58();
  sub_60A44(v37);
  v18 = sub_5F2A8();
  sub_1991C(v40, v35, v42);
  sub_60A44(v40);
  sub_60B40(v42, v40);
  sub_1991C(v40, v35, v19);
  sub_60A44(v40);
  sub_60A44(v42);
}

uint64_t sub_55D54@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v49 = a1;
  v29 = a3;
  v30 = a2;
  v51 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v31 = sub_7CEF4();
  v32 = *(v31 - 8);
  v33 = v32;
  __chkstk_darwin(0);
  v34 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListView();
  v35 = *(v4 - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A88(&qword_91128);
  v40 = *(v39 - 8);
  v41 = v40;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39 - 8);
  v43 = &v14 - v42;
  v44 = sub_1A88(&qword_91200);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = &v14 - v47;
  __chkstk_darwin(&v14 - v47);
  v48 = &v14 - v47;
  v52 = sub_1A88(&qword_921B8);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v51);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v14 - v55;
  __chkstk_darwin(v6);
  v56 = &v14 - v55;
  v64 = &v14 - v55;
  v63 = v7;
  v62 = v8;
  v57 = sub_7D184();
  v58 = sub_7D174();
  v59 = sub_7D154();
  v60 = v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_598D0(v49, v38);
  v14 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v15 = v14 + v37;
  v16 = swift_allocObject();
  sub_59F44(v38, (v16 + v14));
  *(v16 + v15) = v30 & 1;
  v17 = &v14;
  v20 = 17;
  __chkstk_darwin(&v14);
  *(&v14 - 16) = v10;
  sub_7CB44();
  v21 = 1;
  v18 = sub_7CF84("TOGGLE_SELECT_ALL", v20, 1);
  v19 = v11;
  sub_1EAC0();
  sub_7C884();

  (*(v41 + 8))(v43, v39);
  sub_7CF84("Toggle select all", v20, v21);
  sub_7CE94();
  v22 = sub_61F88(v34);
  v23 = v12;
  (*(v33 + 8))(v34, v31);
  v61[0] = v22;
  v61[1] = v23;
  sub_198A4();
  v24 = v61;
  sub_7C114();
  sub_1F58();
  sub_241D4(v46);
  v26 = sub_5030C();
  v25 = type metadata accessor for Family();
  sub_128FC();
  v27 = sub_7D284();

  sub_24298();
  sub_7C984();
  sub_241D4(v48);
  v28 = sub_5F9D4();
  sub_1991C(v54, v52, v56);
  sub_5FF24(v54);
  sub_60790(v56, v54);
  sub_1991C(v54, v52, v29);
  sub_5FF24(v54);
  sub_5FF24(v56);
}

uint64_t sub_56440(uint64_t a1, char a2)
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    sub_7BD04();
    sub_7D714();
    sub_B094();
    sub_7D214();
  }

  else
  {
    sub_50550();
    KeyPath = swift_getKeyPath();

    v5 = sub_1A88(&qword_91EA8);
    v6 = sub_7BD04();
    v2 = sub_5EAD0();
    sub_7FFC(sub_608F0, KeyPath, v5, v6, &type metadata for Never, v2, &protocol witness table for Never, v7);

    sub_B2C0();
    sub_1A88(&qword_921F0);
    sub_B094();
    sub_60924();
    sub_7D2C4();
  }

  type metadata accessor for ListView();

  sub_1A88(&qword_91E90);
  sub_7CAF4();
  sub_4F54C();
}

uint64_t sub_56730()
{

  swift_getAtKeyPath();
}

uint64_t sub_56798@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = a1 & 1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_7CF84("checklist.unchecked", 0x13uLL, 1);
  }

  else
  {
    sub_7CF84("checklist.checked", 0x11uLL, 1);
  }

  v7 = sub_7CA34();
  sub_1991C(&v7, &type metadata for Image, &v8);
  sub_B068();
  v3 = v8;

  v6 = v3;
  sub_1991C(&v6, &type metadata for Image, a2);
  sub_B068();
  sub_B068();
}

uint64_t sub_56940@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v57 = a2;
  v86 = 0;
  v114 = 0;
  v113 = 0;
  v58 = sub_7CEF4();
  v59 = *(v58 - 8);
  v60 = v59;
  __chkstk_darwin(0);
  v61 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ListView();
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = *(v63 + 64);
  __chkstk_darwin(v62 - 8);
  v66 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A88(&qword_917C8);
  v67 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4 - 8);
  v68 = &v16 - v67;
  v69 = sub_1A88(&qword_91128);
  v70 = *(v69 - 8);
  v71 = v70;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69 - 8);
  v73 = &v16 - v72;
  v74 = sub_1A88(&qword_91200);
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74 - 8);
  v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = &v16 - v77;
  __chkstk_darwin(&v16 - v77);
  v78 = &v16 - v77;
  v79 = sub_1A88(&qword_921B8);
  v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79 - 8);
  v81 = &v16 - v80;
  v82 = sub_1A88(&qword_921D8);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82 - 8);
  v84 = &v16 - v83;
  v87 = sub_1A88(&qword_921D0);
  v88 = *(v87 - 8);
  v89 = v88;
  v90 = *(v88 + 64);
  __chkstk_darwin(v86);
  v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v16 - v92;
  __chkstk_darwin(v5);
  v93 = &v16 - v92;
  v114 = &v16 - v92;
  v113 = v6;
  v94 = sub_7D184();
  v95 = sub_7D174();
  v96 = sub_7D154();
  v97 = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7BE84();
  v26 = 0;
  v8 = *(*(sub_7BE94() - 8) + 56);
  v52 = 1;
  v8(v68, 0);
  sub_598D0(v85, v66);
  v17 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v18 = swift_allocObject();
  sub_59F44(v66, (v18 + v17));
  sub_7CB34();
  v19 = sub_7CF84("REMOVE_SELECTED", 0xFuLL, v52);
  v20 = v9;
  sub_1EAC0();
  sub_7C884();

  (*(v71 + 8))(v73, v69);
  sub_7CF84("Remove selected fonts", 0x15uLL, v52);
  sub_7CE94();
  v21 = sub_61F88(v61);
  v22 = v10;
  v32 = *(v60 + 8);
  v31 = v60 + 8;
  v32(v61, v58);
  v112[0] = v21;
  v112[1] = v22;
  v50 = sub_198A4();
  v46 = &type metadata for String;
  v23 = v112;
  sub_7C114();
  sub_1F58();
  sub_241D4(v76);
  v11 = &v85[*(v62 + 24)];
  v24 = *v11;
  v25 = *(v11 + 1);

  v111[3] = v24;
  v111[4] = v25;
  sub_1A88(&qword_91E90);
  sub_7CAE4();
  v28 = v111[2];

  v27 = sub_7BD04();
  sub_B094();
  v29 = sub_7D284();

  sub_24298();
  sub_7C984();
  sub_241D4(v78);
  v30 = sub_7C9C4();
  sub_5F9D4();
  sub_7C8D4();

  sub_5FF24(v81);
  sub_7CF84("Are you sure?", 0xDuLL, v52);
  sub_7CE94();
  v33 = sub_61F88(v61);
  v34 = v12;
  v32(v61, v58);
  v111[0] = v33;
  v111[1] = v34;
  v13 = &v85[*(v62 + 32)];
  v35 = *v13;
  v36 = *(v13 + 1);

  v109 = v35;
  v110 = v36;
  sub_1A88(&qword_91640);
  sub_7CB04();
  v43 = v106;
  v44 = v107;
  v39 = v108;

  v42 = &v16;
  v37 = 24;
  __chkstk_darwin(&v16);
  v40 = v15;
  v41 = &v16;
  __chkstk_darwin(&v16);
  v38 = v15;
  v47 = sub_1A88(&qword_91780);
  v49 = sub_5FB0C();
  v53 = sub_375B8();
  v48 = &type metadata for Text;
  v51 = &protocol witness table for Text;
  sub_4E928();
  v15[2] = v51;
  v15[1] = v53;
  v15[0] = v50;
  v45 = v111;
  sub_7C844();

  sub_1F58();
  sub_60034(v84);
  v98 = v82;
  v99 = v46;
  v100 = v47;
  v101 = v48;
  v102 = v49;
  v103 = v50;
  v104 = v53;
  v105 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v91, v87, v93);
  v56 = *(v89 + 8);
  v55 = v89 + 8;
  v56(v91, v87);
  (*(v89 + 16))(v91, v93, v87);
  sub_1991C(v91, v87, v57);
  v56(v91, v87);
  v56(v93, v87);
}

uint64_t sub_577B4()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ListView();

  sub_1A88(&qword_91640);
  sub_7CAF4();
  sub_26D50();
}

uint64_t sub_578E8@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7CF84("trash", 5uLL, 1);
  v5 = sub_7CA34();
  sub_1991C(&v5, &type metadata for Image, &v6);
  sub_B068();
  v2 = v6;

  v4 = v2;
  sub_1991C(&v4, &type metadata for Image, a1);
  sub_B068();
  sub_B068();
}

uint64_t sub_57A28@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v48 = a1;
  v30 = sub_603F4;
  v65 = 0;
  v64 = 0;
  v49 = 0;
  v2 = type metadata accessor for ListView();
  v31 = *(v2 - 8);
  v32 = v31;
  v33 = *(v31 + 64);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v35 = &v12 - v34;
  v36 = (*(*(sub_1A88(&qword_917C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v37 = &v12 - v36;
  v38 = sub_7CEF4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v12 - v41;
  v43 = sub_1A88(&qword_917C0);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = &v12 - v46;
  v50 = sub_1A88(&qword_91780);
  v54 = *(*(v50 - 8) + 64);
  v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v52 = &v12 - v51;
  v53 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v55 = &v12 - v53;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v57 = &v12 - v56;
  v65 = &v12 - v56;
  v64 = v5;
  v58 = sub_7D184();
  v59 = sub_7D174();
  v60 = sub_7D154();
  v61 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = 1;
  sub_7CF84("Remove", 6uLL, 1);
  sub_7CE94();
  v13 = sub_61F88(v42);
  v14 = v7;
  v22 = *(v39 + 8);
  v21 = v39 + 8;
  v22(v42, v38);
  v17 = v63;
  v63[0] = v13;
  v63[1] = v14;
  sub_7BE84();
  v8 = sub_7BE94();
  (*(*(v8 - 8) + 56))(v37, 0, v20);
  sub_598D0(v48, v35);
  v15 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v16 = swift_allocObject();
  sub_59F44(v35, (v16 + v15));
  v26 = sub_198A4();
  v25 = &type metadata for String;
  sub_7CB54();
  v18 = sub_7CF84("CONFIRM_REMOVE_SELECTED", 0x17uLL, v20 & 1);
  v19 = v9;
  sub_37660();
  sub_7C884();

  (*(v44 + 8))(v47, v43);
  sub_7CF84("Confirm removal", 0xFuLL, v20 & 1);
  sub_7CE94();
  v23 = sub_61F88(v42);
  v24 = v10;
  v22(v42, v38);
  v27 = v62;
  v62[0] = v23;
  v62[1] = v24;
  sub_7C114();
  sub_1F58();
  sub_37E20(v52);
  v28 = sub_375B8();
  sub_1991C(v55, v50, v57);
  sub_37E20(v55);
  sub_37EE4(v57, v55);
  sub_1991C(v55, v50, v29);
  sub_37E20(v55);
  sub_37E20(v57);
}

uint64_t sub_5813C(uint64_t a1)
{
  v30 = a1;
  v40 = 0;
  v31 = 0;
  v22 = sub_7CC54();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v26 = &v7 - v25;
  v27 = sub_1A88(&qword_91E78);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v29 = (&v7 - v28);
  v32 = (*(*(sub_1A88(&qword_91E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v33 = &v7 - v32;
  v40 = v1;
  v34 = sub_7D184();
  v35 = sub_7D174();
  v36 = sub_7D154();
  v37 = v2;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v29;
  v20 = type metadata accessor for ListView();
  sub_4ED54((v30 + *(v20 + 20)), v3);
  sub_7BF04();
  sub_4EF58(v29);
  v21 = sub_1A88(&qword_91A00);
  if ((*(*(v21 - 8) + 48))(v33, 1) == 1)
  {
    sub_50B80(v33);
  }

  else
  {
    (*(v23 + 104))(v26, enum case for EditMode.inactive(_:), v22);
    sub_7CBB4();
    sub_5131C(v33);
  }

  v11 = sub_4EB00();
  v4 = (v30 + *(v20 + 24));
  v8 = *v4;
  v9 = v4[1];

  v39[3] = v8;
  v39[4] = v9;
  v15 = sub_1A88(&qword_91E90);
  sub_7CAE4();
  v10 = v39[2];

  sub_5F18(v10);

  v12 = 0;
  v13 = sub_7BD04();
  v14 = sub_7D714();
  sub_B094();
  v19 = sub_7D214();
  v5 = (v30 + *(v20 + 24));
  v17 = *v5;
  v18 = v5[1];

  v16 = v39;
  v39[0] = v17;
  v39[1] = v18;

  v38 = v19;
  sub_7CAF4();
  sub_4F54C();
}

uint64_t sub_585C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v44 = a1;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v45 = 0;
  v39 = sub_7CEF4();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v43 = v13 - v42;
  v46 = sub_7CED4();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v52 = *(v47 + 64);
  v49 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v50 = v13 - v49;
  v51 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v53 = v13 - v51;
  v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v55 = v13 - v54;
  v74 = v4;
  v56 = sub_7D184();
  v57 = sub_7D174();
  v58 = sub_7D154();
  v59 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = 35;
  sub_7CEC4();
  v16 = 0;
  v32 = 1;
  v75._countAndFlagsBits = sub_7CF84("", 0, 1);
  v13[1] = v75._object;
  sub_7CEB4(v75);

  v6 = (v44 + *(type metadata accessor for ListView() + 24));
  v14 = *v6;
  v15 = v6[1];

  v71[2] = v14;
  v71[3] = v15;
  sub_1A88(&qword_91E90);
  sub_7CAE4();
  v18 = v71[1];

  v17 = sub_7BD04();
  sub_B094();
  v19 = sub_7D234();

  v21 = v71;
  v71[0] = v19;
  v20 = &type metadata for Int;
  v22 = sub_4E3D8();
  v23 = v7;
  sub_7CEA4();

  v76._countAndFlagsBits = sub_7CF84(" fonts will no longer be available.", v24, v32 & 1);
  object = v76._object;
  sub_7CEB4(v76);

  (*(v47 + 16))(v53, v55, v46);
  (*(v47 + 32))(v50, v53, v46);
  (*(v47 + 8))(v55, v46);
  sub_7CEE4();
  v26 = sub_61F88(v43);
  v27 = v8;
  (*(v40 + 8))(v43, v39);
  v28 = v70;
  v70[0] = v26;
  v70[1] = v27;
  sub_198A4();
  v66 = sub_7C6E4();
  v67 = v9;
  v68 = v10;
  v69 = v11;
  v29 = v63;
  v63[0] = v66;
  v63[1] = v9;
  v64 = v10 & 1;
  v65 = v11;
  v37 = &v72;
  v34 = &type metadata for Text;
  v35 = &protocol witness table for Text;
  sub_1991C(v63, &type metadata for Text, &v72);
  sub_23BF4(v29);
  v30 = v72;
  v31 = v73;
  v33 = *(&v73 + 1);
  sub_20C1C(v72, *(&v72 + 1), v73 & 1);

  v36 = &v60;
  v60 = v30;
  v61 = v31 & 1 & v32;
  v62 = v33;
  sub_1991C(&v60, v34, v38);
  sub_23BF4(v36);
  sub_23BF4(v37);
}

uint64_t sub_58CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = a7;
  v11[2] = a1;
  v14 = a2;
  v17 = a3;
  v11[1] = a4;
  v15 = a5;
  v18 = a6;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = (*(*(TupleTypeMetadata3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(TupleTypeMetadata3);
  v21 = v11 - v12;
  v13 = *(v8 + 48);
  v16 = *(v8 + 64);
  (*(*(v9 - 8) + 16))(v7);
  (*(*(v15 - 8) + 16))(&v21[v13], v14);
  (*(*(v18 - 8) + 16))(&v21[v16], v17);
  return sub_7C364();
}

uint64_t sub_58E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a5;
  v9[2] = a1;
  v12 = a2;
  v9[1] = a3;
  v13 = a4;
  v18 = a3;
  v17 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(TupleTypeMetadata2);
  v16 = v9 - v10;
  v11 = *(v6 + 48);
  (*(*(v7 - 8) + 16))(v5);
  (*(*(v13 - 8) + 16))(&v16[v11], v12);
  return sub_7C364();
}

uint64_t sub_58FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v35 = a1;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v47 = 0;
  v26 = sub_1A88(&qword_92130);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v30 = v12 - v29;
  v31 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v29);
  v32 = v12 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v31);
  v34 = v12 - v33;
  v56 = v12 - v33;
  v36 = sub_1A88(&qword_92118);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v38 = v12 - v37;
  v39 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v40 = v12 - v39;
  v41 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v42 = v12 - v41;
  v55 = v12 - v41;
  v54 = v8;
  v43 = sub_7D184();
  v44 = sub_7D174();
  v45 = sub_7D154();
  v46 = v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_50550();
  v53 = v23;
  v22 = sub_1A88(&qword_91EA8);
  sub_5EAD0();
  v24 = sub_7D344();

  if (v24)
  {
    v10 = (v35 + *(type metadata accessor for ListView() + 28));
    v14 = *v10;
    v15 = v10[1];
    v16 = v10[2];

    v50 = v14;
    v51 = v15;
    v52 = v16;
    sub_1A88(&qword_91E98);
    sub_7CAE4();
    v17 = v48;
    v18 = v49;

    sub_7C484();

    v19 = sub_5E480();
    sub_1991C(v32, v26, v34);
    v20 = *(v27 + 8);
    v21 = v27 + 8;
    v20(v32, v26);
    v47 = v32;
    v13 = *(v27 + 16);
    v12[1] = v27 + 16;
    v13(v30, v34, v26);
    sub_1991C(v30, v26, v32);
    v20(v30, v26);
    v13(v38, v32, v26);
    (*(v27 + 56))(v38, 0, 1, v26);
    sub_4E680(v38, v26, v40);
    sub_5EB58(v38);
    sub_5EC0C(v40, v42);
    v20(v32, v26);
    v20(v34, v26);
  }

  else
  {
    (*(v27 + 56))(v38, 1, 1, v26);
    sub_5E480();
    sub_4E680(v38, v26, v40);
    sub_5EB58(v38);
    sub_5EC0C(v40, v42);
  }

  sub_5ED40(v42, v40);
  sub_5E3E8();
  sub_1991C(v40, v36, v25);
  sub_5EB58(v40);
  sub_5EB58(v42);
}

uint64_t sub_595F8(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  sub_7D184();
  v1[5] = sub_7D174();
  v4 = sub_7D154();
  v1[6] = v4;
  v1[7] = v2;

  return _swift_task_switch(sub_596B4, v4);
}

uint64_t sub_596B4()
{
  *(v0 + 16) = v0;
  *(v0 + 64) = sub_4EB00();
  v1 = swift_task_alloc();
  *(v3 + 72) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_59770;

  return sub_11118();
}

uint64_t sub_59770()
{
  v3 = *v0;
  *(*v0 + 16) = *v0;

  v1 = *(v3 + 48);

  return _swift_task_switch(sub_1689C, v1);
}

char *sub_598D0(char *a1, char *a2)
{
  v27 = *a1;

  *a2 = v27;
  *(a2 + 1) = *(a1 + 1);
  v29 = type metadata accessor for ListView();
  v30 = v29[5];
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_1A88(&qword_91A00);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(&a1[v30], 1))
    {
      v3 = sub_1A88(&qword_91E80);
      memcpy(&a2[v30], &a1[v30], *(*(v3 - 8) + 64));
    }

    else
    {
      v20 = *&a1[v30];

      *&a2[v30] = v20;
      v21 = *&a1[v30 + 8];

      *&a2[v30 + 8] = v21;
      v23 = &a2[v30 + *(v24 + 32)];
      v22 = &a1[v30 + *(v24 + 32)];
      v2 = sub_7CC54();
      (*(*(v2 - 8) + 16))(v23, v22);
      (*(v25 + 56))(&a2[v30], 0, 1, v24);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v26 = *&a1[v30];

    *&a2[v30] = v26;
    swift_storeEnumTagMultiPayload();
  }

  v10 = &a2[v29[6]];
  v9 = &a1[v29[6]];
  v8 = *v9;

  *v10 = v8;
  v11 = *(v9 + 1);

  *(v10 + 1) = v11;
  v4 = v29[7];
  v14 = &a2[v4];
  v13 = &a1[v4];
  *&a2[v4] = *&a1[v4];
  v12 = *&a1[v4 + 8];

  *(v14 + 1) = v12;
  v15 = *(v13 + 2);

  *(v14 + 2) = v15;
  v5 = v29[8];
  v16 = &a2[v5];
  a2[v5] = a1[v5];
  v17 = *&a1[v5 + 8];

  *(v16 + 1) = v17;
  v6 = v29[9];
  v18 = &a2[v6];
  *&a2[v6] = *&a1[v6];
  v19 = *&a1[v6 + 8];

  result = a2;
  *(v18 + 1) = v19;
  a2[v29[10]] = a1[v29[10]];
  return result;
}

uint64_t sub_59CC0()
{
  v7 = type metadata accessor for ListView();
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_59F44(char *a1, char *a2)
{
  *a2 = *a1;
  v13 = type metadata accessor for ListView();
  v14 = v13[5];
  v16 = sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A88(&qword_91A00);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a1[v14], 1))
    {
      v3 = sub_1A88(&qword_91E80);
      memcpy(&a2[v14], &a1[v14], *(*(v3 - 8) + 64));
    }

    else
    {
      v9 = &a2[v14];
      *v9 = *&a1[v14];
      *(v9 + 1) = *&a1[v14 + 8];
      v8 = &a2[v14 + *(v10 + 32)];
      v7 = &a1[v14 + *(v10 + 32)];
      v2 = sub_7CC54();
      (*(*(v2 - 8) + 32))(v8, v7);
      (*(v11 + 56))(&a2[v14], 0, 1, v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a2[v14], &a1[v14], *(*(v16 - 8) + 64));
  }

  *&a2[v13[6]] = *&a1[v13[6]];
  v4 = &a2[v13[7]];
  v5 = v13[7];
  *v4 = *&a1[v5];
  *(v4 + 2) = *&a1[v5 + 16];
  *&a2[v13[8]] = *&a1[v13[8]];
  result = *&a1[v13[9]];
  *&a2[v13[9]] = result;
  a2[v13[10]] = a1[v13[10]];
  return result;
}

uint64_t sub_5A20C()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(type metadata accessor for ListView() - 8);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_595F8(v0 + v6);
}

unint64_t sub_5A300()
{
  v2 = qword_91F78;
  if (!qword_91F78)
  {
    sub_B24C(&qword_91EC0);
    sub_52D2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91F78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5A398(uint64_t a1)
{
  sub_1A88(&qword_91F80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A88(&qword_91F90);
    (*(*(v3 - 8) + 8))(a1);
  }

  else
  {
    v1 = sub_1A88(&qword_91F88);
    (*(*(v1 - 8) + 8))(a1);
    v5 = a1 + *(sub_1A88(&qword_91EE8) + 36);
    v2 = sub_7C574();
    (*(*(v2 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_5A4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v2 = sub_1A88(&qword_91E80);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v9 = (&v5 - v6);
  v13 = sub_7C244();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v14 = &v5 - v8;
  (*(v11 + 16))(&v5 - v8, v3);
  sub_7C224();
  sub_61108(v9, v10);
  return (*(v11 + 8))(v14, v13);
}

uint64_t sub_5A634(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(sub_1A88(&qword_91E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v6 = &v3 - v5;
  sub_60F74(v1, (&v3 - v5));
  return sub_7C234();
}

uint64_t sub_5A6EC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v8 = a1;
  v11 = sub_5B354;
  v18 = sub_5BF08;
  v20 = sub_5C1E0;
  v38 = 0;
  v37 = 0;
  v30 = sub_1A88(&qword_91F98);
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v9 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v28 = &v7[-v9];
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v29 = &v7[-v10];
  v38 = &v7[-v10];
  v37 = v4;
  v17 = v36;
  v36[16] = v4;
  v19 = v35;
  v35[16] = v4;
  v21 = sub_1A88(&qword_91FA0);
  v22 = sub_1A88(&qword_91FA8);
  v14 = sub_5BF48();
  v15 = sub_5BFE8();
  v13 = &type metadata for EmptyView;
  v16 = &protocol witness table for EmptyView;
  v12 = sub_5BF10();
  v23 = v5;

  v33 = v12;
  v34 = v23;
  sub_7C474();

  v27 = sub_5C1EC();
  sub_1991C(v28, v30, v29);
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v28, v30);
  (*(v24 + 16))(v28, v29, v30);
  sub_1991C(v28, v30, v26);
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t sub_5AA34@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v49 = a1;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v61 = 0;
  v50 = 0;
  v35 = sub_7CEF4();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = v12 - v38;
  v40 = sub_1A88(&qword_917D0);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (v41[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = v12 - v43;
  v45 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v43);
  v46 = v12 - v45;
  v47 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - v45);
  v48 = v12 - v47;
  v68 = v12 - v47;
  v51 = sub_1A88(&qword_91FA0);
  v53 = *(*(v51 - 8) + 64);
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v54 = v12 - v52;
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v56 = v12 - v55;
  v67 = v12 - v55;
  v66 = v5;
  v57 = sub_7D184();
  v58 = sub_7D174();
  v59 = sub_7D154();
  v60 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!v49 || v49 == 1)
  {
    v27 = 1;
    sub_7CF84("No Fonts Installed", 0x12uLL, 1);
    sub_7CE94();
    v25 = sub_61F88(v39);
    v26 = v7;
    (*(v36 + 8))(v39, v35);
    v30 = v62;
    v62[0] = v25;
    v62[1] = v26;
    v28 = sub_7CF84("textformat", 0xAuLL, v27 & 1);
    v29 = v8;
    sub_198A4();
    sub_7CA74();
    v31 = sub_38180();
    sub_1991C(v46, v40, v48);
    v32 = v41[1];
    v33 = v41 + 1;
    v32(v46, v40);
    v61 = v46;
    v24 = v41[2];
    v23 = v41 + 2;
    v24(v44, v48, v40);
    sub_1991C(v44, v40, v46);
    v32(v44, v40);
    v24(v44, v46, v40);
    sub_19980(v44, v40, v40, v31, v31, v54);
    v32(v44, v40);
    sub_5DA98(v54, v56);
    v32(v46, v40);
    v32(v48, v40);
  }

  else
  {
    v65 = v48;
    v16 = 1;
    sub_7CF84("No Fonts Available", 0x12uLL, 1);
    sub_7CE94();
    v14 = sub_61F88(v39);
    v15 = v9;
    (*(v36 + 8))(v39, v35);
    v19 = v64;
    v64[0] = v14;
    v64[1] = v15;
    v17 = sub_7CF84("textformat", 0xAuLL, v16 & 1);
    v18 = v10;
    sub_198A4();
    sub_7CA74();
    v20 = sub_38180();
    sub_1991C(v46, v40, v48);
    v21 = v41[1];
    v22 = v41 + 1;
    v21(v46, v40);
    v63 = v46;
    v13 = v41[2];
    v12[1] = v41 + 2;
    v13(v44, v48, v40);
    sub_1991C(v44, v40, v46);
    v21(v44, v40);
    v13(v44, v46, v40);
    sub_19A78(v44, v40, v40, v20, v20, v54);
    v21(v44, v40);
    sub_5DA98(v54, v56);
    v21(v46, v40);
    v21(v48, v40);
  }

  sub_5DBA8(v56, v54);
  sub_5BF48();
  sub_1991C(v54, v51, v34);
  sub_5DCB8(v54);
  sub_5DCB8(v56);
}

uint64_t sub_5B35C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v93 = a1;
  v66 = "Fatal error";
  v67 = "Unexpectedly found nil while unwrapping an Optional value";
  v68 = "FontSettings/ListView.swift";
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v125 = 0u;
  v126 = 0u;
  memset(v118, 0, sizeof(v118));
  v69 = sub_1A88(&qword_91FD8);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69);
  v71 = &v26 - v70;
  v72 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v70);
  v73 = &v26 - v72;
  v140 = &v26 - v72;
  v3 = sub_1A88(&qword_90B50);
  v74 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v75 = &v26 - v74;
  v76 = sub_1A88(&qword_920A8);
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76);
  v80 = &v26 - v79;
  v81 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v79);
  v82 = &v26 - v81;
  v83 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v81);
  v84 = &v26 - v83;
  v139 = &v26 - v83;
  v94 = 0;
  v85 = sub_7CEF4();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v89 = &v26 - v88;
  v90 = sub_1A88(&qword_91FC8);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v92 = &v26 - v91;
  v95 = sub_1A88(&qword_91FA8);
  v97 = *(*(v95 - 8) + 64);
  v96 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v94);
  v98 = (&v26 - v96);
  v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v100 = (&v26 - v99);
  v138 = &v26 - v99;
  v137 = v7;
  v101 = sub_7D184();
  v102 = sub_7D174();
  v103 = sub_7D154();
  v104 = v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v93)
  {
    if (v93 == 1)
    {
      v61 = 1;
      sub_7CF84("You can download apps that install fonts from the App Store.", 0x3CuLL, 1);
      sub_7CE94();
      v51 = sub_61F88(v89);
      v52 = v11;
      v57 = *(v86 + 8);
      v56 = v86 + 8;
      v57(v89, v85);
      v53 = v117;
      v117[0] = v51;
      v117[1] = v52;
      v54 = sub_198A4();
      v113 = sub_7C6E4();
      v114 = v12;
      v115 = v13;
      v116 = v14;
      v55 = v110;
      v110[0] = v113;
      v110[1] = v12;
      v111 = v13 & 1 & v61;
      v112 = v14;
      sub_1991C(v110, &type metadata for Text, v118);
      sub_23BF4(v55);
      sub_7CF84("Open App Store", 0xEuLL, v61 & 1);
      sub_7CE94();
      v58 = sub_61F88(v89);
      v59 = v15;
      v57(v89, v85);
      v109[2] = v58;
      v109[3] = v59;
      sub_7CF84("itms-apps://itunes.apple.com/", 0x1DuLL, v61 & 1);
      v60 = v16;
      sub_7BCB4();

      v17 = sub_7BCD4();
      if ((*(*(v17 - 8) + 48))(v75, v61) == 1)
      {
        sub_7D5E4();
        __break(1u);
      }

      sub_7C654();
      v43 = sub_5D778();
      sub_1991C(v82, v76, v84);
      v49 = *(v77 + 8);
      v48 = v77 + 8;
      v49(v82, v76);
      v50 = v118;
      v45 = v108;
      sub_23E4C(v118, v108);
      v44 = v109;
      v109[0] = v45;
      (*(v77 + 16))(v80, v84, v76);
      v109[1] = v80;
      v46 = &type metadata for Text;
      v107[0] = &type metadata for Text;
      v107[1] = v76;
      v47 = &protocol witness table for Text;
      v105 = &protocol witness table for Text;
      v106 = v43;
      sub_4E6CC(v44, 2uLL, v107, v73);
      v49(v80, v76);
      sub_23BF4(v45);
      sub_5D800(v73, v71);
      v18 = sub_5C130();
      sub_19A78(v71, &type metadata for EmptyView, v69, &protocol witness table for EmptyView, v18, v92);
      sub_5D908(v71);
      v19 = sub_5C08C();
      sub_19980(v92, v90, v46, v19, v47, v98);
      sub_5D9B8(v92);
      sub_5D260(v98, v100);
      sub_5D908(v73);
      v49(v84, v76);
      sub_23BF4(v50);
    }

    else
    {
      v36 = 1;
      sub_7CF84("Connect to a network to view fonts available to install.", 0x38uLL, 1);
      sub_7CE94();
      v26 = sub_61F88(v89);
      v27 = v20;
      (*(v86 + 8))(v89, v85);
      v28 = v134;
      v134[0] = v26;
      v134[1] = v27;
      sub_198A4();
      v130 = sub_7C6E4();
      v131 = v21;
      v132 = v22;
      v133 = v23;
      v29 = v127;
      v127[0] = v130;
      v127[1] = v21;
      v128 = v22 & 1;
      v129 = v23;
      v42 = &v135;
      v38 = &type metadata for Text;
      v39 = &protocol witness table for Text;
      sub_1991C(v127, &type metadata for Text, &v135);
      sub_23BF4(v29);
      v30 = v135;
      v31 = v136;
      v32 = *(&v136 + 1);
      sub_20C1C(v135, *(&v135 + 1), v136 & 1);

      v33 = &v122;
      v122 = v30;
      v123 = v31 & 1 & v36;
      v124 = v32;
      v41 = &v125;
      sub_1991C(&v122, v38, &v125);
      sub_23BF4(v33);
      v34 = v125;
      v35 = v126;
      v37 = *(&v126 + 1);
      sub_20C1C(v125, *(&v125 + 1), v126 & 1);

      v40 = &v119;
      v119 = v34;
      v120 = v35 & 1 & v36;
      v121 = v37;
      v24 = sub_5C08C();
      sub_19A78(v40, v90, v38, v24, v39, v98);
      sub_23BF4(v40);
      sub_5D260(v98, v100);
      sub_23BF4(v41);
      sub_23BF4(v42);
    }
  }

  else
  {
    sub_7CCC4();
    v62 = &type metadata for EmptyView;
    v63 = &protocol witness table for EmptyView;
    sub_1991C(v64, &type metadata for EmptyView, v64);
    sub_1991C(v64, v62, v64);
    v9 = sub_5C130();
    sub_19980(v64, v62, v69, v63, v9, v92);
    v10 = sub_5C08C();
    sub_19980(v92, v90, &type metadata for Text, v10, &protocol witness table for Text, v98);
    sub_5D9B8(v92);
    sub_5D260(v98, v100);
  }

  sub_5D3F8(v100, v98);
  sub_5BFE8();
  sub_1991C(v98, v95, v65);
  sub_5D640(v98);
  sub_5D640(v100);
}

unint64_t sub_5BF48()
{
  v2 = qword_91FB0;
  if (!qword_91FB0)
  {
    sub_B24C(&qword_91FA0);
    sub_38180();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5BFE8()
{
  v2 = qword_91FB8;
  if (!qword_91FB8)
  {
    sub_B24C(&qword_91FA8);
    sub_5C08C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C08C()
{
  v2 = qword_91FC0;
  if (!qword_91FC0)
  {
    sub_B24C(&qword_91FC8);
    sub_5C130();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C130()
{
  v2 = qword_91FD0;
  if (!qword_91FD0)
  {
    sub_B24C(&qword_91FD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C1EC()
{
  v2 = qword_91FE0;
  if (!qword_91FE0)
  {
    sub_B24C(&qword_91F98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91FE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5C2B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1A88(&qword_91E78);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 20), a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_5C410(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1A88(&qword_91E78);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5C518()
{
  v7 = sub_236D8();
  if (v0 <= 0x3F)
  {
    v7 = sub_5C6C8();
    if (v1 <= 0x3F)
    {
      v7 = sub_5C76C();
      if (v2 <= 0x3F)
      {
        v7 = sub_5C810();
        if (v3 <= 0x3F)
        {
          v7 = sub_36E50();
          if (v4 <= 0x3F)
          {
            v7 = sub_36DBC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_5C6C8()
{
  v4 = qword_92050;
  if (!qword_92050)
  {
    sub_B24C(&qword_91E80);
    v3 = sub_7BF14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_92050);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_5C76C()
{
  v4 = qword_92058;
  if (!qword_92058)
  {
    sub_B24C(&qword_91E88);
    v3 = sub_7CB14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_92058);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_5C810()
{
  v4 = qword_92060;
  if (!qword_92060)
  {
    v3 = sub_7CB14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_92060);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_5C8B0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_5CA18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_5CC28()
{
  sub_B24C(&qword_91EC0);
  sub_5A300();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5CD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a9;
  v30 = a1;
  v37 = a2;
  v38 = a3;
  v35 = a4;
  v41 = a5;
  v43 = a6;
  v36 = a7;
  v44 = a8;
  v46 = a10;
  v39 = a11;
  v40 = sub_60D54;
  v47 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v65 = a4;
  v64 = a5;
  v63 = a6;
  v34 = *(a5 - 8);
  v29 = a5 - 8;
  v25 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v45 = &v24 - v25;
  v26 = 255;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = &protocol requirements base descriptor for Identifiable;
  v42 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v62 = AssociatedConformanceWitness;
  v54 = sub_7CBE4();
  v48 = *(v54 - 8);
  v49 = v54 - 8;
  v32 = *(v48 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v50 = &v24 - v31;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v12);
  v53 = &v24 - v33;
  (*(v34 + 16))(v13);

  v14 = swift_allocObject();
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v18 = v39;
  v19 = v41;
  v20 = v43;
  v21 = v44;
  v22 = v46;
  v14[2] = v35;
  v14[3] = v19;
  v14[4] = v20;
  v14[5] = v15;
  v14[6] = v21;
  v14[7] = v22;
  v14[8] = v18;
  v14[9] = v16;
  v14[10] = v17;
  sub_7CBD4();
  v57 = v46;
  WitnessTable = swift_getWitnessTable();
  sub_1991C(v50, v54, v53);
  v56 = *(v48 + 8);
  v55 = v48 + 8;
  v56(v50, v54);
  sub_1991C(v53, v54, v51);
  return (v56)(v53, v54);
}

uint64_t sub_5D104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6)
{
  v17 = a5;
  v20 = a4;
  v18 = a6;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v14 = *(a4 - 8);
  v15 = a4 - 8;
  v12 = *(v14 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v16 = &v10 - v11;
  v13 = v11;
  v7 = __chkstk_darwin(v6);
  v19 = &v10 - v13;
  v8(v7);
  sub_1991C(v16, v20, v19);
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v16, v20);
  sub_1991C(v19, v20, v17);
  return (v22)(v19, v20);
}

_OWORD *sub_5D260(_OWORD *a1, _OWORD *a2)
{
  v10 = sub_1A88(&qword_920B0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v7 = sub_1A88(&qword_920B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[1] = a1[1];
      v2 = sub_1A88(&qword_920C0);
      v6 = a2 + *(v2 + 48);
      v5 = a1 + *(v2 + 48);
      v3 = sub_1A88(&qword_920A8);
      (*(*(v3 - 8) + 32))(v6, v5);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v7 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t *sub_5D3F8(uint64_t a1, uint64_t *a2)
{
  sub_1A88(&qword_920B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    sub_20C1C(*a1, v6, v7 & 1);
    *a2 = v5;
    a2[1] = v6;
    *(a2 + 16) = v7 & 1;
    v8 = *(a1 + 24);

    a2[3] = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = sub_1A88(&qword_920B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      sub_20C1C(*a1, v10, v11 & 1);
      *a2 = v9;
      a2[1] = v10;
      *(a2 + 16) = v11 & 1;
      v12 = *(a1 + 24);

      a2[3] = v12;
      v2 = sub_1A88(&qword_920C0);
      v14 = a2 + *(v2 + 48);
      v13 = a1 + *(v2 + 48);
      v3 = sub_1A88(&qword_920A8);
      (*(*(v3 - 8) + 16))(v14, v13);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v15 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_5D640(uint64_t a1)
{
  sub_1A88(&qword_920B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  else
  {
    sub_1A88(&qword_920B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

      v3 = a1 + *(sub_1A88(&qword_920C0) + 48);
      v1 = sub_1A88(&qword_920A8);
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  return a1;
}

unint64_t sub_5D778()
{
  v2 = qword_920C8;
  if (!qword_920C8)
  {
    sub_B24C(&qword_920A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_920C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5D800(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_20C1C(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);

  *(a2 + 24) = v7;
  v8 = *(sub_1A88(&qword_920C0) + 48);
  v2 = sub_1A88(&qword_920A8);
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

uint64_t sub_5D908(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(sub_1A88(&qword_920C0) + 48);
  v1 = sub_1A88(&qword_920A8);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_5D9B8(uint64_t a1)
{
  sub_1A88(&qword_920B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v3 = a1 + *(sub_1A88(&qword_920C0) + 48);
    v1 = sub_1A88(&qword_920A8);
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_5DA98(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_920D0);
  swift_getEnumCaseMultiPayload();
  v2 = sub_1A88(&qword_917D0);
  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5DBA8(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_920D0);
  swift_getEnumCaseMultiPayload();
  v2 = sub_1A88(&qword_917D0);
  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5DCB8(uint64_t a1)
{
  sub_1A88(&qword_920D0);
  swift_getEnumCaseMultiPayload();
  v1 = sub_1A88(&qword_917D0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_5DD98()
{
  v7 = type metadata accessor for ListView();
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5E01C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ListView();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_53554(a1, v4, a2);
}

unint64_t sub_5E09C()
{
  v2 = qword_920F0;
  if (!qword_920F0)
  {
    sub_B24C(&qword_91EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_920F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E124()
{
  v2 = qword_920F8;
  if (!qword_920F8)
  {
    sub_B24C(&qword_920E8);
    sub_5E1C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_920F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E1C8()
{
  v2 = qword_92100;
  if (!qword_92100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E240()
{
  v2 = qword_92108;
  if (!qword_92108)
  {
    type metadata accessor for Family();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E2C0()
{
  v2 = qword_92110;
  if (!qword_92110)
  {
    sub_7C264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5E350(uint64_t a1)
{
  v1 = sub_1A88(&qword_920D8);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91F10);

  return a1;
}

unint64_t sub_5E3E8()
{
  v2 = qword_92120;
  if (!qword_92120)
  {
    sub_B24C(&qword_92118);
    sub_5E480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5E480()
{
  v2 = qword_92128;
  if (!qword_92128)
  {
    sub_B24C(&qword_92130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5E508(uint64_t a1)
{
  v1 = sub_1A88(&qword_920E0);
  (*(*(v1 - 8) + 8))(a1);
  v3 = *(sub_1A88(&qword_91F00) + 36);
  v5 = sub_1A88(&qword_92130);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3, 1))
  {
    (*(v6 + 8))(a1 + v3, v5);
  }

  return a1;
}

uint64_t sub_5E62C(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_91F80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A88(&qword_91F90);
    (*(*(v5 - 8) + 32))(a2, a1);
  }

  else
  {
    v2 = sub_1A88(&qword_91F88);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_1A88(&qword_91EE8);
    v8 = a2 + *(v3 + 36);
    v7 = a1 + *(v3 + 36);
    v4 = sub_7C574();
    (*(*(v4 - 8) + 32))(v8, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5E7AC(uint64_t a1, uint64_t a2)
{
  sub_1A88(&qword_91F80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A88(&qword_91F90);
    (*(*(v5 - 8) + 16))(a2, a1);
  }

  else
  {
    v2 = sub_1A88(&qword_91F88);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = sub_1A88(&qword_91EE8);
    v8 = a2 + *(v3 + 36);
    v7 = a1 + *(v3 + 36);
    v4 = sub_7C574();
    (*(*(v4 - 8) + 16))(v8, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_5E92C(uint64_t a1)
{
  v1 = sub_1A88(&qword_91F88);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91EE8) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_5E9F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91F88);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91EE8) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_5EAD0()
{
  v2 = qword_92138;
  if (!qword_92138)
  {
    sub_B24C(&qword_91EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5EB58(uint64_t a1)
{
  v3 = sub_1A88(&qword_92130);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5EC0C(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92130);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92118);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5ED40(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92130);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92118);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5EE74(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_5EF84(uint64_t a1)
{
  v3 = sub_1A88(&qword_91F60);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5F038(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91F60);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91F48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5F16C(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91F60);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91F48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_5F2A8()
{
  v2 = qword_92170;
  if (!qword_92170)
  {
    sub_B24C(&qword_92168);
    sub_5F350();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F350()
{
  v2 = qword_92178;
  if (!qword_92178)
  {
    sub_B24C(&qword_92180);
    sub_5F3F8();
    sub_5F478();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F3F8()
{
  v2 = qword_92188;
  if (!qword_92188)
  {
    sub_7BEC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F478()
{
  v2 = qword_92190;
  if (!qword_92190)
  {
    sub_B24C(&qword_92198);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F500()
{
  v2 = qword_921A0;
  if (!qword_921A0)
  {
    sub_B24C(&qword_92160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F588()
{
  v2 = qword_921A8;
  if (!qword_921A8)
  {
    sub_B24C(&qword_92140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5F610(uint64_t a1)
{
  v3 = sub_1A88(&qword_92140);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_5F6C4(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92140);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92158);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_5F7F8(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_92140);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_92158);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_5F92C()
{
  v2 = qword_921B0;
  if (!qword_921B0)
  {
    sub_B24C(&qword_92158);
    sub_5F588();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5F9D4()
{
  v2 = qword_921C0;
  if (!qword_921C0)
  {
    sub_B24C(&qword_921B8);
    sub_24298();
    sub_5F478();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5FA7C()
{
  v2 = qword_921C8;
  if (!qword_921C8)
  {
    sub_B24C(&qword_92150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5FB0C()
{
  v2 = qword_921E0;
  if (!qword_921E0)
  {
    sub_B24C(&qword_921D8);
    sub_5F9D4();
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5FBB4()
{
  v2 = qword_921E8;
  if (!qword_921E8)
  {
    sub_B24C(&qword_92148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5FC3C()
{
  v7 = type metadata accessor for ListView();
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5FEC0()
{
  type metadata accessor for ListView();

  return sub_577B4();
}

uint64_t sub_5FF24(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91200) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  sub_1A88(&qword_921B8);

  return a1;
}

uint64_t sub_60034(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91200) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  sub_1A88(&qword_921B8);

  sub_1A88(&qword_921D8);

  return a1;
}

uint64_t sub_60170()
{
  v7 = type metadata accessor for ListView();
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_603F4()
{
  v1 = *(type metadata accessor for ListView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_5813C(v2);
}

uint64_t sub_60458()
{
  v7 = type metadata accessor for ListView();
  v0 = *(*(v7 - 8) + 80);
  v6 = (v0 + 16) & ~v0;

  v8 = *(v7 + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(v5 + v6 + v8, 1))
    {

      v3 = v5 + v6 + v8 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_606E4()
{
  v4 = *(type metadata accessor for ListView() - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + v1 + *(v4 + 64)) & 1;

  return sub_56440(v0 + v1, v2);
}

uint64_t sub_60790(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91128);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91200) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  v7 = *(sub_1A88(&qword_921B8) + 36);
  v8 = *(a1 + v7);

  v11 = a2 + v7;
  *(a2 + v7) = v8;
  v10 = *(a1 + v7 + 8);
  v12 = *(a1 + v7 + 16);

  result = a2;
  *(v11 + 8) = v10;
  *(v11 + 16) = v12;
  return result;
}

unint64_t sub_60924()
{
  v2 = qword_921F8;
  if (!qword_921F8)
  {
    sub_B24C(&qword_921F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_921F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_609AC(uint64_t a1)
{
  v1 = sub_7BEC4();
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_92180);

  return a1;
}

uint64_t sub_60A44(uint64_t a1)
{
  v1 = sub_7BEC4();
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_92180);

  v4 = *(sub_1A88(&qword_92168) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_60B40(uint64_t a1, uint64_t a2)
{
  v2 = sub_7BEC4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_92180) + 36);
  v6 = *(a1 + v5);

  v8 = a2 + v5;
  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 16);

  *(v8 + 8) = v7;
  *(v8 + 16) = v9;
  v10 = *(sub_1A88(&qword_92168) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v10, a1 + v10);
  return a2;
}

uint64_t sub_60DB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_20C1C(a1, a2, a3 & 1);
  }
}

uint64_t sub_60E5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_209FC(a1, a2, a3 & 1);
  }
}

unint64_t sub_60EC4()
{
  v2 = qword_92200;
  if (!qword_92200)
  {
    type metadata accessor for ComparisonResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92200);
    return WitnessTable;
  }

  return v2;
}

void *sub_60F74(uint64_t *a1, void *a2)
{
  v11 = sub_1A88(&qword_91A00);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v3 = sub_1A88(&qword_91E80);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
    v6 = a1[1];

    a2[1] = v6;
    v8 = a2 + *(v11 + 32);
    v7 = a1 + *(v11 + 32);
    v2 = sub_7CC54();
    (*(*(v2 - 8) + 16))(v8, v7);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

void *sub_61108(void *a1, void *a2)
{
  v9 = sub_1A88(&qword_91A00);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_1A88(&qword_91E80);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v6 = a2 + *(v9 + 32);
    v5 = a1 + *(v9 + 32);
    v2 = sub_7CC54();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t *sub_61278()
{
  if (qword_90A60 != -1)
  {
    swift_once();
  }

  return &qword_94EA8;
}

uint64_t *sub_612D8()
{
  if (qword_90A48 != -1)
  {
    swift_once();
  }

  return &qword_94E78;
}

uint64_t sub_61338()
{
  v21 = sub_648CC;
  v35 = 0;
  v32 = 0;
  v22 = 0;
  v28 = sub_7BCD4();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v23 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v27 = v6 - v23;
  v35 = v0;
  (*(v25 + 16))(v6 - v23);
  sub_7BC84(v1);
  v24 = v2;
  FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(v2);

  (*(v25 + 8))(v27, v28);
  if (FontDescriptorsFromURL)
  {
    v20 = FontDescriptorsFromURL;
    v18 = FontDescriptorsFromURL;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v17 = v19;
      v16 = sub_1A88(&qword_90CE8);
      v17;
      sub_13B80();
      sub_7D774();

      if (v30)
      {
        v15 = v30;
LABEL_7:
        v14 = v15;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_8:
  v33 = v14;
  if (v14)
  {
    v34 = v33;
  }

  else
  {
    v13 = 0;
    type metadata accessor for CTFontDescriptor();
    v34 = sub_7D714();
    if (v33)
    {
      sub_B2C0();
    }
  }

  v3 = v22;
  v8 = v34;
  v32 = v34;
  v31[1] = v34;
  KeyPath = swift_getKeyPath();

  v10 = sub_1A88(&qword_90CE8);
  v4 = sub_12A7C();
  v12 = sub_7FFC(v21, KeyPath, v10, &type metadata for String, &type metadata for Never, v4, &protocol witness table for Never, v11);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    v6[0] = v12;

    v6[2] = v31;
    v31[0] = v6[0];
    v6[1] = sub_1A88(&qword_90CB8);
    sub_64900();
    v7 = sub_7D2C4();

    return v7;
  }

  return result;
}

uint64_t *sub_6175C()
{
  if (qword_90A58 != -1)
  {
    swift_once();
  }

  return &qword_94E98;
}

uint64_t sub_6180C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t *sub_61828()
{
  if (qword_90A70 != -1)
  {
    swift_once();
  }

  return &qword_94EC0;
}

uint64_t *sub_61888()
{
  if (qword_90A50 != -1)
  {
    swift_once();
  }

  return &qword_94E88;
}

uint64_t *sub_618E8()
{
  if (qword_90A68 != -1)
  {
    swift_once();
  }

  return &qword_94EB0;
}

uint64_t sub_61948()
{
  kCTFontFamilyNameAttribute;
  v6 = CTFontDescriptorCopyAttribute(descriptor, kCTFontFamilyNameAttribute);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      v3 = v7;
      v4 = v8;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v1 = v3;
    v2 = v4;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  if (v2)
  {
    return v1;
  }

  else
  {
    return sub_7CF84("", 0, 1);
  }
}

uint64_t sub_61AC4()
{
  v5 = sub_638F8();
  v4;
  v3 = (v5 & 1) != 0 && sub_63A38();

  v4;
  if (v3)
  {
    v2 = sub_61C04() ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  v4;
  if (v2)
  {
    v1 = sub_61E48() ^ 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_61C04()
{
  kCTFontDownloadedAttribute;
  v5 = CTFontDescriptorCopyAttribute(descriptor, kCTFontDownloadedAttribute);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      v3 = v6 & 1;
    }

    else
    {
      v3 = 2;
    }

    v2 = v3;
  }

  else
  {
    v2 = 2;
  }

  if (v2 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t sub_61D44()
{
  attribute = kCTFontDesignLanguagesAttribute;
  kCTFontDesignLanguagesAttribute;
  v5 = CTFontDescriptorCopyAttribute(descriptor, attribute);

  if (!v5)
  {
    return 0;
  }

  sub_1A88(&qword_90CB8);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_61E48()
{
  kCTFontDownloadableAttribute;
  v5 = CTFontDescriptorCopyAttribute(descriptor, kCTFontDownloadableAttribute);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      v3 = v6 & 1;
    }

    else
    {
      v3 = 2;
    }

    v2 = v3;
  }

  else
  {
    v2 = 2;
  }

  if (v2 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t sub_61F88(uint64_t a1)
{
  v4[1] = a1;
  v14 = 0;
  v8 = 0;
  v4[0] = (*(*(sub_7BD34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v4 - v4[0];
  v1 = sub_7CEF4();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v7 = v4 - v5;
  v14 = v2;
  (*(v6 + 16))();
  v9 = *sub_622EC();
  v9;
  sub_3E1D0();
  v11 = 0;
  v12 = 0;
  v13 = 256;
  return sub_7CF44();
}

uint64_t sub_62174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CGSize();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_64BE4();
  sub_64B1C(v7, sub_64988, 0, sub_64B10, v8, a3, v7);
}

uint64_t *sub_622EC()
{
  if (qword_90A30 != -1)
  {
    swift_once();
  }

  return &qword_94E50;
}

void sub_6234C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v8 = a1;
  v28 = 0;
  v21 = 0;
  v5 = (*(*(sub_7BD34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v22 = &v5 - v5;
  v14 = sub_7BCD4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v13 = &v5 - v6;
  v18 = sub_7BC14();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v7 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v23 = &v5 - v7;
  v2 = sub_7CEF4();
  v10 = *(v2 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v20 = &v5 - v9;
  v28 = v4;
  (*(v10 + 16))(v3);
  v15 = *sub_622EC();
  v15;
  v24 = [v15 bundleURL];
  sub_7BC94();
  (*(v11 + 32))(v23, v13, v14);

  (*(v16 + 104))(v23, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v18);
  sub_3E1D0();
  v25 = 0;
  v26 = 0;
  v27 = 256;
  sub_7BC34();
}

CTFontRef sub_6263C(CGFloat a1)
{
  sub_1A88(&qword_92218);
  sub_7D714();
  v3 = v1;
  kCTFontOpticalSizeAttribute;
  *v3 = kCTFontOpticalSizeAttribute;
  *(v3 + 8) = sub_6213C();
  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v7 = CTFontDescriptorCreateWithAttributes(isa);

  CopyWithAttributes = CTFontCreateCopyWithAttributes(v5, a1, 0, v7);

  return CopyWithAttributes;
}

uint64_t sub_62784()
{
  CTFontGetSymbolicTraits(v0);
  type metadata accessor for CTFontSymbolicTraits();
  sub_E0A4();
  return sub_7D894() & 1;
}

CTFontRef sub_62800()
{
  sub_1A88(&qword_92220);
  sub_7D714();
  v7 = v0;
  kCTFontFeatureSettingsAttribute;
  *v7 = kCTFontFeatureSettingsAttribute;
  sub_1A88(&qword_92228);
  v6 = sub_7D714();
  v5 = v1;
  sub_1A88(&qword_92230);
  sub_7D714();
  v4 = v2;
  kCTFontFeatureTypeIdentifierKey;
  *v4 = kCTFontFeatureTypeIdentifierKey;
  v4[1] = (&stru_20 + 3);
  kCTFontFeatureSelectorIdentifierKey;
  v4[2] = kCTFontFeatureSelectorIdentifierKey;
  v4[3] = &dword_C;
  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  *v5 = sub_7CDB4();
  sub_71DDC();
  v7[1] = v6;
  sub_71DDC();
  sub_1A88(&qword_92238);
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v10 = CTFontDescriptorCreateWithAttributes(isa);

  v10;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v9, 0.0, 0, v10);

  return CopyWithAttributes;
}

id sub_62A70()
{
  sub_656A8();
  type metadata accessor for FontSettingsModel();
  result = sub_62AB8();
  qword_94E50 = result;
  return result;
}

id sub_62AB8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t sub_62B10(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_62B70()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_62BA8(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_62BF4()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_62C20(uint64_t a1)
{

  *(v1 + 40) = a1;
}

BOOL sub_62C5C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void sub_62F0C()
{
  v4 = *sub_622EC();
  v4;
  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    *&v2 = sub_7CF14();
    *(&v2 + 1) = v0;

    v3 = v2;
  }

  else
  {
    v3 = 0uLL;
  }

  if (*(&v3 + 1))
  {
    xmmword_94E58 = v3;
  }

  else
  {
    *&xmmword_94E58 = sub_7CF84("com.apple.FontServices.FontSettings", 0x23uLL, 1);
    *(&xmmword_94E58 + 1) = v1;
  }
}

__int128 *sub_6305C()
{
  if (qword_90A38 != -1)
  {
    swift_once();
  }

  return &xmmword_94E58;
}

uint64_t sub_630BC()
{
  v1 = *sub_6305C();

  return v1;
}

uint64_t sub_630F8()
{
  result = sub_7CF84("FontFiles", 9uLL, 1);
  qword_94E68 = result;
  qword_94E70 = v1;
  return result;
}

uint64_t *sub_6313C()
{
  if (qword_90A40 != -1)
  {
    swift_once();
  }

  return &qword_94E68;
}

uint64_t sub_6319C()
{
  v1 = *sub_6313C();

  return v1;
}

void sub_631D8()
{
  v1 = [objc_opt_self() fontProviderFileDirectoryPath];
  qword_94E78 = sub_7CF14();
  qword_94E80 = v0;
}

uint64_t sub_63244()
{
  v1 = *sub_612D8();

  return v1;
}

uint64_t sub_63280()
{
  result = sub_7CF84("InvalidLanguage", 0xFuLL, 1);
  qword_94E88 = result;
  qword_94E90 = v1;
  return result;
}

uint64_t sub_632C4()
{
  v1 = *sub_61888();

  return v1;
}

uint64_t sub_63300()
{
  result = sub_7CF84(".", 1uLL, 1);
  qword_94E98 = result;
  qword_94EA0 = v1;
  return result;
}

uint64_t sub_63344()
{
  v1 = *sub_6175C();

  return v1;
}

NSString sub_63380()
{
  kCTFontManagerRegisteredFontsChangedNotification;
  sub_7CF14();

  v1 = sub_7CF04();
  v1;

  result = v1;
  qword_94EA8 = v1;
  return result;
}

void *sub_63428()
{
  v1 = *sub_61278();
  v1;
  return v1;
}

uint64_t sub_63460()
{
  result = sub_7CF84("LocalizedFamilyNames", 0x14uLL, 1);
  qword_94EB0 = result;
  qword_94EB8 = v1;
  return result;
}

uint64_t sub_634A4()
{
  v1 = *sub_618E8();

  return v1;
}

uint64_t sub_634E0()
{
  result = sub_7CF84("FontDesignLanguages", 0x13uLL, 1);
  qword_94EC0 = result;
  qword_94EC8 = v1;
  return result;
}

uint64_t sub_63524()
{
  v1 = *sub_61828();

  return v1;
}

uint64_t sub_635AC@<X0>(void *a1@<X8>)
{
  result = *v1;
  String.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_635E4()
{
  attribute = kCTFontPostScriptNameAttribute;
  kCTFontPostScriptNameAttribute;
  v7 = CTFontDescriptorCopyAttribute(descriptor, attribute);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      v3 = v8;
      v4 = v9;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v1 = v3;
    v2 = v4;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  if (v2)
  {
    return v1;
  }

  else
  {
    return sub_7CF84("", 0, 1);
  }
}

uint64_t sub_63760()
{
  kCTFontFamilyNameAttribute;
  v6 = CTFontDescriptorCopyLocalizedAttribute(descriptor, kCTFontFamilyNameAttribute, 0);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      v3 = v7;
      v4 = v8;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v1 = v3;
    v2 = v4;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  descriptor;
  if (v2)
  {
    v9 = v1;
  }

  else
  {
    v9 = sub_61948();
  }

  return v9;
}

uint64_t sub_638F8()
{
  attribute = kCTFontUserInstalledAttribute;
  kCTFontUserInstalledAttribute;
  v6 = CTFontDescriptorCopyAttribute(descriptor, attribute);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      v3 = v7 & 1;
    }

    else
    {
      v3 = 2;
    }

    v2 = v3;
  }

  else
  {
    v2 = 2;
  }

  if (v2 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = v2;
  }

  return v1 & 1;
}

BOOL sub_63A38()
{
  v25 = 0;
  v24 = 0;
  v1 = sub_1A88(&qword_90B50);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v14 = &v5 - v13;
  v15 = sub_7BCD4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v19 = &v5 - v18;
  v25 = &v5 - v18;
  v24 = v0;
  v21 = kCTFontURLAttribute;
  kCTFontURLAttribute;
  v22 = CTFontDescriptorCopyAttribute(v20, v21);

  if (v22 && (v12 = v22, v23 = v22, (swift_dynamicCast() & 1) != 0))
  {
    (*(v16 + 56))(v14, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_64CE0(v14);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v7 = sub_7BCA4();
    v9 = v2;
    v3 = sub_612D8();
    v6 = *v3;
    v8 = v3[1];

    v26._countAndFlagsBits = v6;
    v26._object = v8;
    v10 = sub_7D014(v26);

    (*(v16 + 8))(v19, v15);
    return v10;
  }
}

uint64_t sub_63D94()
{
  v2 = CTFontCopyFamilyName(v0);
  v3 = sub_7CF14();

  return v3;
}

uint64_t sub_63DF8()
{
  kCTFontStyleNameKey;
  v7 = CTFontCopyLocalizedName(font, kCTFontStyleNameKey, 0);

  if (v7)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v5;
      sub_EF28();
      sub_7D774();

      if (v9)
      {
        v3 = v8;
        v4 = v9;
LABEL_7:
        v1 = v3;
        v2 = v4;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = 0;
    v4 = 0;
    goto LABEL_7;
  }

  v1 = 0;
  v2 = 0;
LABEL_8:
  if (v2)
  {
    return v1;
  }

  else
  {
    return sub_7CF84("", 0, 1);
  }
}

uint64_t sub_63FE8@<X0>(uint64_t a1@<X8>)
{
  kCTFontURLAttribute;
  v6 = CTFontCopyAttribute(font, kCTFontURLAttribute);

  if (v6)
  {
    v3 = sub_7BCD4();
    if (swift_dynamicCast())
    {
      return (*(*(v3 - 8) + 56))(a1, 0, 1);
    }

    else
    {
      return (*(*(v3 - 8) + 56))(a1, 1);
    }
  }

  else
  {
    v2 = sub_7BCD4();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_64174()
{
  v1 = CTFontCopySampleString();
  v2 = sub_7CF14();

  return v2;
}

uint64_t sub_6424C()
{
  v2 = CTFontCopyCharacterSet(v0);
  v3 = sub_7D714();
  v2;
  CFCharacterSetInitInlineBuffer();

  sub_1A88(&qword_92248);
  sub_64D88();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_92260);
    sub_7D5D4();
    if (v5)
    {
      break;
    }

    if (v4 < 0)
    {
      sub_7D5E4();
      __break(1u);
    }

    if (v4 > 0xFFFFFFFFLL)
    {
      sub_7D5E4();
      __break(1u);
      if ((sub_7D834() & 0x100000000) == 0)
      {
        sub_1A88(&qword_91D28);
        sub_7D0F4();
      }
    }
  }

  sub_B2C0();

  return v3;
}