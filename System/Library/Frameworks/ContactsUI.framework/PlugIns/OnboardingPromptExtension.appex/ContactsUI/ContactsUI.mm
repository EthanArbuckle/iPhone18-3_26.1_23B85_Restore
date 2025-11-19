void sub_100001B5C()
{
  v1 = *(v0 + *(type metadata accessor for OnboardingContactContentView() + 60));
  v2 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v1 scale:{v1, 1.0}];
  v3 = objc_allocWithZone(ISIcon);
  v4 = sub_100004DD0();
  v5 = [v3 initWithBundleIdentifier:v4];

  v6 = [v5 prepareImageForDescriptor:v2];
  if (v6)
  {
    v7 = [v6 CGImage];

    if (v7)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_100001C68@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004BA0();
  v19 = 0;
  sub_100001EC8(v2, __src);
  memcpy(__dst, __src, 0x1C1uLL);
  memcpy(v21, __src, 0x1C1uLL);
  sub_100003808(__dst, v16, &qword_10000C9F0, &qword_1000057D8);
  sub_100003870(v21, &qword_10000C9F0, &qword_1000057D8);
  memcpy(&v18[7], __dst, 0x1C1uLL);
  v5 = v19;
  sub_1000035F4(&qword_10000C9F8, &qword_1000057E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005680;
  *(v6 + 32) = *v2;

  *(v6 + 40) = sub_100004D10();
  sub_100004D90();
  sub_100004DA0();
  sub_100004D70();
  sub_100004B20();
  v7 = __src[0];
  LOBYTE(v6) = sub_100004BF0();
  v8 = *(v2 + *(type metadata accessor for OnboardingContactContentView() + 40));
  v9 = (a1 + *(sub_1000035F4(&qword_10000C9D0, &qword_100005730) + 36));
  v10 = *(sub_100004B30() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_100004BB0();
  v14 = *&__src[3];
  v15 = *&__src[1];
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v8;
  *(v9 + 1) = v8;
  *&v9[*(sub_1000035F4(&qword_10000CA00, &qword_1000057E8) + 36)] = 256;
  *a1 = v4;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = v5;
  memcpy((a1 + 17), v18, 0x1C8uLL);
  *(a1 + 473) = v16[0];
  *(a1 + 476) = *(v16 + 3);
  *(a1 + 480) = v7;
  result = v15;
  *(a1 + 488) = v15;
  *(a1 + 504) = v14;
  *(a1 + 520) = v6;
  return result;
}

void sub_100001EC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100004D40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_100004AE0() - 8) + 64);
  __chkstk_darwin();
  v10 = *(*(sub_100004DC0() - 8) + 64);
  __chkstk_darwin();
  v99 = type metadata accessor for OnboardingContactContentView();
  v11 = (a1 + v99[16]);
  v12 = v11[1] >> 60;
  v82 = a2;
  if (v12 != 15)
  {
    v13 = a1;
    v14 = *v11;
    isa = sub_100004AB0().super.isa;
    v16 = CGImageSourceCreateWithData(isa, 0);

    if (v16)
    {
      if (CGImageSourceCreateImageAtIndex(v16, 0, 0))
      {

        a1 = v13;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_100001B5C();
LABEL_6:
  sub_100004DB0();
  sub_100004AD0();
  *&v138 = sub_100004DF0();
  *(&v138 + 1) = v17;
  sub_100003688();
  sub_100004CD0();
  sub_100004D60();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v18 = sub_100004D50();

  (*(v5 + 8))(v8, v4);
  v19 = v99;
  v20 = *(a1 + v99[15]);
  sub_100004D80();
  sub_100004B10();
  v83 = v194;
  v85 = v196;
  v96 = v199;
  v97 = v198;
  v84 = v195;
  v186 = v195;
  v86 = v197;
  v184 = v197;
  v98 = sub_100004C10();
  v21 = *(a1 + v19[7]);
  sub_100004B00();
  v93 = v23;
  v94 = v22;
  v91 = v25;
  v92 = v24;
  v187 = 0;
  v95 = sub_100004C20();
  v26 = *(a1 + v19[8]);
  sub_100004B00();
  v89 = v28;
  v90 = v27;
  v87 = v30;
  v88 = v29;
  v191 = 0;
  v80 = sub_100004BD0();
  v81 = a1;
  v165 = 1;
  sub_100002988(a1, &v138);
  v179 = *&v139[48];
  v180[0] = *&v139[64];
  *(v180 + 9) = *&v139[73];
  v175 = v138;
  v176 = *v139;
  v178 = *&v139[32];
  v177 = *&v139[16];
  v181[1] = *v139;
  v181[0] = v138;
  v181[2] = *&v139[16];
  v181[3] = *&v139[32];
  v181[4] = *&v139[48];
  *v182 = *&v139[64];
  *&v182[9] = *&v139[73];
  sub_100003808(&v175, v137, &qword_10000CA08, &qword_1000057F0);
  sub_100003870(v181, &qword_10000CA08, &qword_1000057F0);
  *(&v164[3] + 7) = v178;
  *(&v164[4] + 7) = v179;
  *(&v164[5] + 7) = v180[0];
  v164[6] = *(v180 + 9);
  *(v164 + 7) = v175;
  *(&v164[1] + 7) = v176;
  *(&v164[2] + 7) = v177;
  v79 = v165;
  LOBYTE(v20) = sub_100004C20();
  v31 = sub_100004C30();
  sub_100004C30();
  if (sub_100004C30() != v20)
  {
    v31 = sub_100004C30();
  }

  v78 = v31;
  sub_100004B00();
  v76 = v33;
  v77 = v32;
  v74 = v35;
  v75 = v34;
  v166 = 0;
  v36 = sub_100004C40();
  v37 = sub_100004C30();
  sub_100004C30();
  if (sub_100004C30() != v36)
  {
    v37 = sub_100004C30();
  }

  v73 = v37;
  sub_100004B00();
  v71 = v39;
  v72 = v38;
  v69 = v41;
  v70 = v40;
  v167 = 0;
  sub_1000035F4(&qword_10000CA10, &qword_1000057F8);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100005680;
  v43 = sub_100004C00();
  *(v42 + 32) = v43;
  v44 = sub_100004C10();
  *(v42 + 33) = v44;
  v45 = sub_100004C30();
  sub_100004C30();
  if (sub_100004C30() != v43)
  {
    v45 = sub_100004C30();
  }

  sub_100004C30();
  if (sub_100004C30() != v44)
  {
    v45 = sub_100004C30();
  }

  v46 = *(v81 + v99[9]);
  sub_100004B00();
  v81 = v47;
  v67 = v49;
  v68 = v48;
  v66 = v50;
  v168 = 0;
  *&v128 = v18;
  *(&v128 + 1) = v83;
  LOBYTE(v129) = v84;
  v99 = v18;
  *(&v129 + 1) = *v185;
  DWORD1(v129) = *&v185[3];
  *(&v129 + 1) = v85;
  LOBYTE(v130) = v86;
  *(&v130 + 1) = *v183;
  DWORD1(v130) = *&v183[3];
  *(&v130 + 1) = v97;
  *&v131 = v96;
  WORD4(v131) = 256;
  HIWORD(v131) = v190;
  *(&v131 + 10) = v189;
  LOBYTE(v132) = v98;
  DWORD1(v132) = *&v188[3];
  *(&v132 + 1) = *v188;
  *(&v132 + 1) = v94;
  *&v133 = v93;
  *(&v133 + 1) = v92;
  *&v134 = v91;
  BYTE8(v134) = 0;
  HIDWORD(v134) = *&v193[3];
  *(&v134 + 9) = *v193;
  LOBYTE(v135) = v95;
  DWORD1(v135) = *&v192[3];
  *(&v135 + 1) = *v192;
  *(&v135 + 1) = v90;
  *&v136[0] = v89;
  *(&v136[0] + 1) = v88;
  *&v136[1] = v87;
  BYTE8(v136[1]) = 0;
  v127[0] = v128;
  v127[1] = v129;
  v127[4] = v132;
  v127[5] = v133;
  v127[2] = v130;
  v127[3] = v131;
  *(&v127[8] + 9) = *(v136 + 9);
  v127[7] = v135;
  v127[8] = v136[0];
  v127[6] = v134;
  v51 = v80;
  v137[0] = v80;
  v137[1] = 0;
  v52 = v79;
  LOBYTE(v137[2]) = v79;
  *(&v137[8] + 1) = v164[3];
  *(&v137[10] + 1) = v164[4];
  *(&v137[12] + 1) = v164[5];
  *(&v137[14] + 1) = v164[6];
  *(&v137[2] + 1) = v164[0];
  *(&v137[4] + 1) = v164[1];
  *(&v137[6] + 1) = v164[2];
  HIDWORD(v137[16]) = *(v174 + 3);
  *(&v137[16] + 1) = v174[0];
  v53 = v78;
  LOBYTE(v137[17]) = v78;
  HIDWORD(v137[17]) = *&v173[3];
  *(&v137[17] + 1) = *v173;
  v55 = v76;
  v54 = v77;
  v137[18] = v77;
  v137[19] = v76;
  v57 = v74;
  v56 = v75;
  v137[20] = v75;
  v137[21] = v74;
  LOBYTE(v137[22]) = 0;
  *(&v137[22] + 1) = *v172;
  HIDWORD(v137[22]) = *&v172[3];
  v58 = v73;
  LOBYTE(v137[23]) = v73;
  HIDWORD(v137[23]) = *&v171[3];
  *(&v137[23] + 1) = *v171;
  v60 = v71;
  v59 = v72;
  v137[24] = v72;
  v137[25] = v71;
  v62 = v69;
  v61 = v70;
  v137[26] = v70;
  v137[27] = v69;
  LOBYTE(v137[28]) = 0;
  *(&v137[28] + 1) = *v170;
  HIDWORD(v137[28]) = *&v170[3];
  LOBYTE(v137[29]) = v45;
  HIDWORD(v137[29]) = *&v169[3];
  *(&v137[29] + 1) = *v169;
  v137[30] = v47;
  v137[31] = v48;
  v137[32] = v49;
  v137[33] = v50;
  LOBYTE(v137[34]) = 0;
  memcpy(&v127[10], v137, 0x111uLL);
  v126 = 1;
  v63 = v82;
  memcpy(v82, v127, 0x1B8uLL);
  v64 = v164[2];
  *&v139[49] = v164[3];
  *&v139[65] = v164[4];
  *&v139[81] = v164[5];
  *&v139[97] = v164[6];
  *&v139[1] = v164[0];
  *&v139[17] = v164[1];
  v63[55] = 0;
  *(v63 + 448) = 1;
  v138 = v51;
  v139[0] = v52;
  *&v139[33] = v64;
  *&v140[3] = *(v174 + 3);
  *v140 = v174[0];
  v141 = v53;
  *&v142[3] = *&v173[3];
  *v142 = *v173;
  v143 = v54;
  v144 = v55;
  v145 = v56;
  v146 = v57;
  v147 = 0;
  *v148 = *v172;
  *&v148[3] = *&v172[3];
  v149 = v58;
  *&v150[3] = *&v171[3];
  *v150 = *v171;
  v151 = v59;
  v152 = v60;
  v153 = v61;
  v154 = v62;
  v155 = 0;
  *v156 = *v170;
  *&v156[3] = *&v170[3];
  v157 = v45;
  *&v158[3] = *&v169[3];
  *v158 = *v169;
  v159 = v81;
  v160 = v68;
  v161 = v67;
  v162 = v66;
  v163 = 0;
  sub_100003808(&v128, v100, &qword_10000CA18, &qword_100005800);
  sub_100003808(v137, v100, &qword_10000CA20, &qword_100005808);
  sub_100003870(&v138, &qword_10000CA20, &qword_100005808);
  v100[0] = v99;
  v100[1] = v83;
  v101 = v84;
  *v102 = *v185;
  *&v102[3] = *&v185[3];
  v103 = v85;
  v104 = v86;
  *v105 = *v183;
  *&v105[3] = *&v183[3];
  v106 = v97;
  v107 = v96;
  v108 = 256;
  v110 = v190;
  v109 = v189;
  v111 = v98;
  *&v112[3] = *&v188[3];
  *v112 = *v188;
  v113 = v94;
  v114 = v93;
  v115 = v92;
  v116 = v91;
  v117 = 0;
  *v118 = *v193;
  *&v118[3] = *&v193[3];
  v119 = v95;
  *&v120[3] = *&v192[3];
  *v120 = *v192;
  v121 = v90;
  v122 = v89;
  v123 = v88;
  v124 = v87;
  v125 = 0;
  sub_100003870(v100, &qword_10000CA18, &qword_100005800);
}

uint64_t sub_100002988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = type metadata accessor for OnboardingContactContentView();
  v4 = (a1 + *(v37 + 44));
  v45 = *v4;
  v48 = v4[1];
  sub_100003688();

  v5 = sub_100004CD0();
  v7 = v6;
  v9 = v8;
  sub_100004C50();
  sub_100004C60();

  v10 = sub_100004CC0();
  v12 = v11;
  v14 = v13;

  sub_1000036DC(v5, v7, v9 & 1);

  sub_100004D20();
  v15 = sub_100004CB0();
  v40 = v16;
  v41 = v15;
  v39 = v17;
  v42 = v18;
  sub_1000036DC(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v19 = (a1 + *(v37 + 48));
  v46 = *v19;
  v49 = v19[1];

  v20 = sub_100004CD0();
  v22 = v21;
  v24 = v23;
  sub_100004C90();
  v25 = sub_100004CC0();
  v27 = v26;
  v29 = v28;

  sub_1000036DC(v20, v22, v24 & 1);

  v47 = *(a1 + 8);

  v30 = sub_100004CB0();
  v32 = v31;
  LOBYTE(v20) = v33;
  v44 = v34;
  sub_1000036DC(v25, v27, v29 & 1);

  v35 = swift_getKeyPath();
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v30;
  *(a2 + 64) = v32;
  *(a2 + 72) = v20 & 1;
  *(a2 + 80) = v44;
  *(a2 + 88) = v35;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  sub_1000037F8(v41, v40, v39 & 1);

  sub_1000037F8(v30, v32, v20 & 1);

  sub_1000036DC(v30, v32, v20 & 1);

  sub_1000036DC(v41, v40, v39 & 1);
}

uint64_t sub_100002CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v59 = a2;
  v3 = *(*(sub_1000035F4(&qword_10000C9D0, &qword_100005730) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v51 - v6;
  sub_100001C68(&v51 - v6);
  v7 = type metadata accessor for OnboardingContactContentView();
  v8 = (a1 + *(v7 + 52));
  v9 = v8[1];
  v71 = *v8;
  v72 = v9;
  v55 = sub_100003688();

  v10 = sub_100004CD0();
  v12 = v11;
  v14 = v13;
  sub_100004C80();
  v15 = sub_100004CC0();
  v17 = v16;
  v19 = v18;

  sub_1000036DC(v10, v12, v14 & 1);

  sub_100004C70();
  v20 = sub_100004CA0();
  v60 = v21;
  v57 = v22;
  v58 = v23;
  sub_1000036DC(v15, v17, v19 & 1);

  v24 = (v56 + *(v7 + 56));
  v25 = v24[1];
  v71 = *v24;
  v72 = v25;

  v26 = sub_100004CD0();
  v28 = v27;
  LOBYTE(v15) = v29;
  sub_100004C80();
  v56 = sub_100004CC0();
  v55 = v30;
  v32 = v31;
  v34 = v33;
  v54 = v33;

  sub_1000036DC(v26, v28, v15 & 1);

  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v35 = v32 & 1;
  LOBYTE(v71) = v32 & 1;
  v36 = swift_getKeyPath();
  v37 = v62;
  sub_100003808(v61, v62, &qword_10000C9D0, &qword_100005730);
  v38 = v59;
  sub_100003808(v37, v59, &qword_10000C9D0, &qword_100005730);
  v39 = sub_1000035F4(&qword_10000C9E0, &qword_1000057C8);
  v40 = v38 + *(v39 + 48);
  v41 = v60;
  *v40 = v20;
  *(v40 + 8) = v41;
  LOBYTE(v26) = v57 & 1;
  *(v40 + 16) = v57 & 1;
  *(v40 + 24) = v58;
  v42 = v38 + *(v39 + 64);
  v43 = v56;
  *&v65 = v56;
  v44 = v55;
  *(&v65 + 1) = v55;
  LOBYTE(v66) = v35;
  *(&v66 + 1) = v64[0];
  DWORD1(v66) = *(v64 + 3);
  v45 = KeyPath;
  *(&v66 + 1) = v34;
  *&v67 = KeyPath;
  BYTE8(v67) = 1;
  HIDWORD(v67) = *&v63[3];
  *(&v67 + 9) = *v63;
  v46 = v53;
  *&v68 = v53;
  *(&v68 + 1) = 0x3FF0000000000000;
  v69 = v36;
  v70 = 1;
  v47 = v67;
  v48 = v68;
  *(v42 + 80) = 1;
  *(v42 + 48) = v48;
  *(v42 + 64) = v36;
  v49 = v65;
  *(v42 + 16) = v66;
  *(v42 + 32) = v47;
  *v42 = v49;
  sub_1000037F8(v20, v41, v26);

  sub_100003808(&v65, &v71, &qword_10000C9E8, &qword_1000057D0);
  sub_100003870(v61, &qword_10000C9D0, &qword_100005730);
  v71 = v43;
  v72 = v44;
  v73 = v35;
  *v74 = v64[0];
  *&v74[3] = *(v64 + 3);
  v75 = v54;
  v76 = v45;
  v77 = 1;
  *v78 = *v63;
  *&v78[3] = *&v63[3];
  v79 = v46;
  v80 = 0x3FF0000000000000;
  v81 = v36;
  v82 = 0;
  v83 = 1;
  sub_100003870(&v71, &qword_10000C9E8, &qword_1000057D0);
  sub_1000036DC(v20, v60, v26);

  return sub_100003870(v62, &qword_10000C9D0, &qword_100005730);
}

void sub_1000031CC()
{
  sub_10000363C();
  v0 = sub_100004E10();
  sub_100004E00();
  sub_100004AF0();
}

uint64_t sub_10000326C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100004BC0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1000035F4(&qword_10000C9B8, &qword_100005720);
  sub_100002CE4(v1, a1 + *(v3 + 44));
  result = sub_1000035F4(&qword_10000C9C0, &qword_100005728);
  v5 = (a1 + *(result + 36));
  *v5 = sub_1000031CC;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  return result;
}

uint64_t sub_100003314(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004B30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000033D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004B30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingContactContentView()
{
  result = qword_10000C948;
  if (!qword_10000C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000034C4()
{
  sub_100004B30();
  if (v0 <= 0x3F)
  {
    sub_100003588();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003588()
{
  if (!qword_10000C958)
  {
    v0 = sub_100004E20();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C958);
    }
  }
}

uint64_t sub_1000035F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000363C()
{
  result = qword_10000C9C8;
  if (!qword_10000C9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C9C8);
  }

  return result;
}

unint64_t sub_100003688()
{
  result = qword_10000C9D8;
  if (!qword_10000C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9D8);
  }

  return result;
}

uint64_t sub_1000036DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000036EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_100004B80();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100003720(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100004B90();
}

uint64_t sub_100003750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004B60();
  *a1 = result;
  return result;
}

uint64_t sub_1000037A4@<X0>(void *a1@<X8>)
{
  result = sub_100004B40();
  *a1 = v3;
  return result;
}

uint64_t sub_1000037F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000038D4()
{
  result = qword_10000CA28;
  if (!qword_10000CA28)
  {
    sub_100003960(&qword_10000C9C0, &qword_100005728);
    sub_1000039A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA28);
  }

  return result;
}

uint64_t sub_100003960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000039A8()
{
  result = qword_10000CA30;
  if (!qword_10000CA30)
  {
    sub_100003960(&qword_10000CA38, &unk_100005810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA30);
  }

  return result;
}

id OnboardingContactHostViewController.__allocating_init(name:bottomField:contactCountText:bottomText:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v17 = objc_allocWithZone(v10);
  v18 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  *v18 = xmmword_100005820;
  v19 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = *v18;
  v24 = *(v18 + 1);
  *v18 = a9;
  *(v18 + 1) = a10;
  sub_100004834(a9, a10);
  sub_10000489C(v23, v24);
  v29.receiver = v17;
  v29.super_class = v10;
  v25 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  sub_10000489C(a9, a10);
  return v25;
}

id OnboardingContactHostViewController.init(name:bottomField:contactCountText:bottomText:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = sub_100004904(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_10000489C(a9, a10);
  return v10;
}

Swift::Void __swiftcall OnboardingContactHostViewController.viewDidLoad()()
{
  v1 = type metadata accessor for OnboardingContactContentView();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v64 - v6);
  v8 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  v9 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name + 8];
  v10 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField + 8];
  v70 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  v71 = v8;
  v11 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText + 8];
  v69 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  v12 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  v65 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText + 8];
  v14 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData + 8];
  v66 = *&v0[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  v13 = v66;
  v67 = v12;
  v15 = objc_allocWithZone(UIColor);

  sub_100004834(v13, v14);
  [v15 initWithRed:0.7 green:0.7 blue:0.7 alpha:1.0];
  *v7 = sub_100004D30();
  [objc_allocWithZone(UIColor) initWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
  v7[1] = sub_100004D30();
  v16 = v7 + v2[8];
  v17 = *(sub_100004B30() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_100004BB0();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #5.0 }

  *v16 = _Q0;
  *(v7 + v2[9]) = 0x4004000000000000;
  *(v7 + v2[10]) = 0x4020000000000000;
  *(v7 + v2[11]) = 0x402C000000000000;
  *(v7 + v2[12]) = 0x402A000000000000;
  *(v7 + v2[17]) = 0x4049000000000000;
  v25 = v7 + v2[18];
  *v25 = xmmword_100005820;
  v26 = (v7 + v2[13]);
  v27 = v70;
  *v26 = v71;
  v26[1] = v9;
  v28 = (v7 + v2[14]);
  *v28 = v27;
  v28[1] = v10;
  v29 = (v7 + v2[15]);
  *v29 = v69;
  v29[1] = v11;
  v30 = v0;
  v31 = (v7 + v2[16]);
  v32 = v65;
  *v31 = v67;
  v31[1] = v32;
  sub_10000489C(*v25, *(v25 + 1));
  *v25 = v66;
  *(v25 + 1) = v14;
  sub_1000049CC(v7, v68);
  v33 = objc_allocWithZone(sub_1000035F4(&qword_10000CA68, &unk_100005830));
  v34 = sub_100004BE0();
  [v30 addChildViewController:v34];
  v35 = [v30 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_14;
  }

  v36 = v35;
  v37 = [v34 view];
  if (!v37)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v38 = v37;
  [v36 addSubview:v37];

  v39 = [v34 view];
  if (!v39)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [v34 view];
  if (!v40)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v41 = [v40 topAnchor];

  v42 = [v30 view];
  if (!v42)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v43 = v42;
  v44 = [v42 topAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [v34 view];
  if (!v46)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = [v46 bottomAnchor];

  v48 = [v30 view];
  if (!v48)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = v48;
  v50 = [v48 bottomAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  [v51 setActive:1];

  v52 = [v34 view];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v53 = [v52 rightAnchor];

  v54 = [v30 view];
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = v54;
  v56 = [v54 rightAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = [v34 view];
  if (!v58)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v59 = [v58 leftAnchor];

  v60 = [v30 view];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 leftAnchor];

    v63 = [v59 constraintEqualToAnchor:v62];
    [v63 setActive:1];

    [v34 didMoveToParentViewController:v30];
    sub_100004A30(v7);
    return;
  }

LABEL_23:
  __break(1u);
}

id OnboardingContactHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100004DD0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingContactHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingContactHostViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100004708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = type metadata accessor for OnboardingContactHostViewController();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  *v18 = xmmword_100005820;
  v19 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v17[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = *v18;
  v24 = *(v18 + 1);
  *v18 = a9;
  *(v18 + 1) = a10;

  sub_100004834(a9, a10);
  sub_10000489C(v23, v24);
  v28.receiver = v17;
  v28.super_class = v16;
  return objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100004834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004848(a1, a2);
  }

  return a1;
}

uint64_t sub_100004848(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000489C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000048B0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000048B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100004904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_imageData];
  *v11 = xmmword_100005820;
  v12 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_name];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomField];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_contactCountText];
  *v14 = a5;
  *(v14 + 1) = a6;
  v15 = &v10[OBJC_IVAR____TtC25OnboardingPromptExtension35OnboardingContactHostViewController_bottomText];
  *v15 = a7;
  *(v15 + 1) = a8;
  v16 = *v11;
  v17 = *(v11 + 1);
  *v11 = a9;
  *(v11 + 1) = a10;
  sub_100004834(a9, a10);
  sub_10000489C(v16, v17);
  v19.receiver = v10;
  v19.super_class = type metadata accessor for OnboardingContactHostViewController();
  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1000049CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingContactContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A30(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingContactContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}