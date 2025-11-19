uint64_t sub_FE760@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v14 = *(a1 + 72);
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v5 = *a1;
  v6 = a1[1];
  result = sub_5EAC4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_FE7C4@<X0>(uint64_t x0_0@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v36 = sub_46F9C(&qword_187330, &qword_12CCC0);
  v7 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v9 = &v33 - v8;
  v37 = sub_46F9C(&qword_187288, &unk_12CC20);
  v34 = *(v37 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v37);
  v12 = &v33 - v11;
  v35 = sub_46F9C(&qword_187308, &qword_12CCA0);
  v13 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v15 = &v33 - v14;
  v53[0] = *a3;
  sub_46F9C(&qword_187138, &qword_12C990);
  v16 = sub_116CC0();
  v17 = (*(*v43 + 480))(v16);

  v18 = *(v17 + 16);

  v19 = *(a3 + 4);
  if (v19 < v18 && (v53[0] = a3[1], sub_46F9C(&qword_182D78, &qword_12C9A0), sub_116CC0(), v43 == 1))
  {
    if (v19 <= x0_0)
    {
      v24 = 1;
    }

    else
    {
      v20 = *(a2 + 112);
      v49 = *(a2 + 96);
      v50 = v20;
      v51 = *(a2 + 128);
      v52 = *(a2 + 144);
      v21 = *(a2 + 48);
      v45 = *(a2 + 32);
      v46 = v21;
      v22 = *(a2 + 80);
      v47 = *(a2 + 64);
      v48 = v22;
      v23 = *(a2 + 16);
      v43 = *a2;
      v44 = v23;
      v39 = *a3;
      sub_6B280(a2, v53);
      sub_116CC0();
      v41 = type metadata accessor for ShowAllUsageViewModel();
      v42 = &off_166FA0;
      sub_6A95C();
      sub_EFAC0(&v43, 0, v40, 0, 0, 0, &type metadata for BreakdownAppInfo, v53);
      sub_5EEBC();
      strcpy(&v43, "AppBreakdown");
      BYTE13(v43) = 0;
      HIWORD(v43) = -5120;
      sub_117220(v54);

      sub_46F9C(&qword_1872B0, &qword_12CC30);
      sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30);
      sub_116AA0();

      sub_488C8(v53, &qword_1872B0, &qword_12CC30);
      sub_548D0(v12, v15, &qword_187288, &unk_12CC20);
      v24 = 0;
    }

    (*(v34 + 56))(v15, v24, 1, v37);
    v29 = &qword_187308;
    v30 = &qword_12CCA0;
    sub_479B4(v15, v9, &qword_187308, &qword_12CCA0);
    swift_storeEnumTagMultiPayload();
    sub_1023E8();
    sub_102170();
    sub_116470();
    v31 = v15;
  }

  else
  {
    v25 = *(a2 + 112);
    v49 = *(a2 + 96);
    v50 = v25;
    v51 = *(a2 + 128);
    v52 = *(a2 + 144);
    v26 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v26;
    v27 = *(a2 + 80);
    v47 = *(a2 + 64);
    v48 = v27;
    v28 = *(a2 + 16);
    v43 = *a2;
    v44 = v28;
    v39 = *a3;
    sub_6B280(a2, v53);
    sub_116CC0();
    v41 = type metadata accessor for ShowAllUsageViewModel();
    v42 = &off_166FA0;
    sub_6A95C();
    sub_EFAC0(&v43, 0, v40, 0, 0, 0, &type metadata for BreakdownAppInfo, v53);
    sub_5EEBC();
    strcpy(&v43, "AppBreakdown");
    BYTE13(v43) = 0;
    HIWORD(v43) = -5120;
    sub_117220(v55);

    sub_46F9C(&qword_1872B0, &qword_12CC30);
    sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30);
    sub_116AA0();

    sub_488C8(v53, &qword_1872B0, &qword_12CC30);
    v29 = &qword_187288;
    v30 = &unk_12CC20;
    sub_479B4(v12, v9, &qword_187288, &unk_12CC20);
    swift_storeEnumTagMultiPayload();
    sub_1023E8();
    sub_102170();
    sub_116470();
    v31 = v12;
  }

  return sub_488C8(v31, v29, v30);
}

void sub_FEDF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v63 = a2;
  v2 = sub_46F9C(&qword_187278, &unk_12CBE8);
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v56 - v6;
  v58 = sub_1163D0();
  v57 = *(v58 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin(v58);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_185EA8, &unk_12B1D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v56 - v14;
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (v16)
  {
    v17 = sub_1171B0();
    v19 = v18;

    *&v68 = v17;
    *(&v68 + 1) = v19;
    sub_4869C();
    v20 = sub_116900();
    v22 = v21;
    LOBYTE(v19) = v23;
    LODWORD(v68) = sub_1164D0();
    v24 = sub_116890();
    v26 = v25;
    v28 = v27;
    sub_48928(v20, v22, v19 & 1);

    sub_116670();
    v29 = sub_1168C0();
    v31 = v30;
    v33 = v32;

    sub_48928(v24, v26, v28 & 1);

    sub_1166B0();
    v34 = sub_116810();
    v36 = v35;
    LOBYTE(v20) = v37;
    v39 = v38;
    sub_48928(v29, v31, v33 & 1);

    *&v68 = v34;
    *(&v68 + 1) = v36;
    v69 = v20 & 1;
    v70 = v39;
    sub_1163C0();
    v40 = v66;
    sub_116A90();
    (*(v57 + 8))(v9, v58);
    sub_48928(v34, v36, v20 & 1);

    v41 = v59;
    v42 = v59[1];
    *&v68 = *v59;
    *(&v68 + 1) = v42;
    sub_46F9C(&qword_187138, &qword_12C990);
    v43 = sub_116CC0();
    v44 = (*(*v67[0] + 528))(v43);

    v67[2] = v44;
    swift_getKeyPath();
    v71 = v42;
    v68 = *(v41 + 1);
    v45 = swift_allocObject();
    v46 = *(v41 + 1);
    *(v45 + 16) = *v41;
    *(v45 + 32) = v46;
    *(v45 + 48) = v41[4];

    sub_479B4(&v71, v67, &qword_187140, &qword_12C998);
    sub_479B4(&v68, v67, &qword_182D78, &qword_12C9A0);
    sub_46F9C(&qword_187280, &qword_12CC18);
    sub_46F9C(&qword_187288, &unk_12CC20);
    sub_48800(&qword_187290, &qword_187280, &qword_12CC18);
    sub_1020F4();
    sub_102170();
    v47 = v61;
    sub_116E10();
    v48 = v60;
    sub_479B4(v40, v60, &qword_185EA8, &unk_12B1D0);
    v50 = v64;
    v49 = v65;
    v51 = *(v64 + 16);
    v52 = v62;
    v51(v62, v47, v65);
    v53 = v63;
    sub_479B4(v48, v63, &qword_185EA8, &unk_12B1D0);
    v54 = sub_46F9C(&qword_1872B8, &qword_12CC38);
    v51((v53 + *(v54 + 48)), v52, v49);
    v55 = *(v50 + 8);
    v55(v47, v49);
    sub_488C8(v66, &qword_185EA8, &unk_12B1D0);
    v55(v52, v49);
    sub_488C8(v48, &qword_185EA8, &unk_12B1D0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_FF44C()
{
  v4[4] = sub_FF548;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_83460;
  v4[3] = &unk_169ED0;
  v0 = _Block_copy(v4);
  v1 = @"com.apple.batteryui";
  AnalyticsSendEventLazy();
  _Block_release(v0);

  sub_A77E8(sub_FF614, 0);
  v2 = sub_1171E0();
  notify_post((v2 + 32));
}

unint64_t sub_FF548()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000000136B20;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

uint64_t sub_FF630@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShowAllUsageViewModel();
  sub_116CB0();
  result = sub_116CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = 5;
  return result;
}

void sub_FF6B4(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  sub_FC5F4(a1);
}

void sub_FF6F0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_46F9C(&qword_1871A8, &qword_12CB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v185[-v8];
  v199 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v10 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v198 = &v185[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_46F9C(&qword_1871B0, &qword_12CB38);
  v211 = *(v12 - 8);
  v212 = v12;
  v13 = *(v211 + 64);
  __chkstk_darwin(v12);
  v200 = &v185[-v14];
  v15 = sub_46F9C(&qword_1871B8, &qword_12CB40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v210 = &v185[-v17];
  v18 = type metadata accessor for BUIChartViewData(0);
  v208 = *(v18 - 8);
  v209 = v18;
  v19 = *(v208 + 64);
  __chkstk_darwin(v18);
  v196 = &v185[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v197 = &v185[-v22];
  v23 = sub_46F9C(&qword_1871C0, &qword_12CB48);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v185[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v185[-v28];
  v207 = sub_46F9C(&qword_1871C8, &unk_12CB50);
  v30 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v207);
  v32 = &v185[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v220 = &v185[-v34];
  v35 = sub_116DE0();
  v205 = *(v35 - 8);
  v206 = v35;
  v36 = *(v205 + 64);
  __chkstk_darwin(v35);
  v204 = &v185[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v214 = sub_46F9C(&qword_184EA0, &qword_129180);
  v38 = *(*(v214 - 8) + 64);
  __chkstk_darwin(v214);
  v216 = &v185[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v217 = &v185[-v41];
  __chkstk_darwin(v42);
  v218 = &v185[-v43];
  __chkstk_darwin(v44);
  v203 = &v185[-v45];
  __chkstk_darwin(v46);
  v219 = &v185[-v47];
  v48 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v202 = &v185[-v50];
  v266 = *v2;
  v267 = *(v2 + 16);
  v227[0] = *v2;
  v215 = v2;
  *&v227[1] = *(v2 + 16);
  v213 = sub_46F9C(&qword_187180, &qword_12C9D0);
  v51 = sub_116D60();
  (*(**&v226[0] + 400))(v248, v51);

  v262 = v248[6];
  v263 = v248[7];
  v264[0] = v249[0];
  *(v264 + 9) = *(v249 + 9);
  v258 = v248[2];
  v259 = v248[3];
  v260 = v248[4];
  v261 = v248[5];
  v256 = v248[0];
  v257 = v248[1];
  if (sub_719E4(&v256) == 1)
  {
    goto LABEL_6;
  }

  v264[8] = v262;
  v264[9] = v263;
  v265[0] = v264[0];
  *(v265 + 9) = *(v264 + 9);
  v264[4] = v258;
  v264[5] = v259;
  v264[6] = v260;
  v264[7] = v261;
  v264[2] = v256;
  v264[3] = v257;
  v244[4] = v261;
  v245 = v262;
  v246 = v263;
  v244[0] = v257;
  v244[1] = v258;
  v247 = v264[0];
  v244[2] = v259;
  v244[3] = v260;
  if (!v261)
  {
    sub_488C8(v248, &qword_1838E8, &unk_1272E0);
LABEL_6:
    (*(v6 + 56))(v4, 1, 1, v5);
    return;
  }

  v189 = v5;
  v190 = v4;
  v233[6] = v262;
  v233[7] = v263;
  v234[0] = v264[0];
  *(v234 + 9) = *(v264 + 9);
  v233[2] = v258;
  v233[3] = v259;
  v233[4] = v260;
  v233[5] = v261;
  v233[0] = v256;
  v233[1] = v257;
  v227[0] = *v215;
  *&v227[1] = *(v215 + 16);
  v52 = v245;

  v53 = v52;
  v54 = sub_116D60();
  v55 = (*(**&v226[0] + 272))(v54);

  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = (v55 + 160 * v56);
    v58 = *(v57 - 8);
    v226[1] = *(v57 - 7);
    v226[0] = v58;
    v59 = *(v57 - 6);
    v60 = *(v57 - 5);
    v61 = *(v57 - 4);
    v226[5] = *(v57 - 3);
    v226[4] = v61;
    v226[3] = v60;
    v226[2] = v59;
    v62 = *(v57 - 2);
    v63 = *(v57 - 1);
    v64 = *v57;
    *(&v226[8] + 9) = *(v57 + 9);
    v226[8] = v64;
    v226[7] = v63;
    v226[6] = v62;
    memmove(v227, v57 - 8, 0x99uLL);
    nullsub_4(v227);
    sub_68C74(v226, v225);

    v241 = v227[6];
    v242 = v227[7];
    v243[0] = v227[8];
    *(v243 + 9) = *(&v227[8] + 9);
    v237 = v227[2];
    v238 = v227[3];
    v239 = v227[4];
    v240 = v227[5];
    v235 = v227[0];
    v236 = v227[1];
  }

  else
  {

    sub_719C4(&v235);
  }

  v227[6] = v241;
  v227[7] = v242;
  v227[8] = v243[0];
  *(&v227[8] + 9) = *(v243 + 9);
  v227[2] = v237;
  v227[3] = v238;
  v227[4] = v239;
  v227[5] = v240;
  v227[0] = v235;
  v227[1] = v236;
  v65 = sub_6940C();
  v66 = sub_62DA4(v233, v227, &type metadata for DayBreakdownBucket, v65);
  v231[6] = v227[6];
  v231[7] = v227[7];
  v232[0] = v227[8];
  *(v232 + 9) = *(&v227[8] + 9);
  v231[2] = v227[2];
  v231[3] = v227[3];
  v231[4] = v227[4];
  v231[5] = v227[5];
  v231[0] = v227[0];
  v231[1] = v227[1];
  sub_488C8(v231, &qword_1838E8, &unk_1272E0);
  v201 = v29;
  v187 = v9;
  v188 = v6;
  v194 = v32;
  v195 = v26;
  if (v66)
  {
    sub_63B20();
    if (v68)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_63828();
  if (!v68)
  {
LABEL_10:
    v67 = 0;
    v68 = 0xE000000000000000;
  }

LABEL_11:
  *&v227[0] = v67;
  *(&v227[0] + 1) = v68;
  sub_4869C();
  v69 = sub_116900();
  v71 = v70;
  v73 = v72;
  sub_116670();
  v90 = sub_1168C0();
  v75 = v74;
  v77 = v76;

  sub_48928(v69, v71, v73 & 1);

  sub_1166C0();
  v78 = sub_116810();
  v80 = v79;
  v82 = v81;
  sub_48928(v90, v75, v77 & 1);

  v83 = enum case for Font.Design.rounded(_:);
  v84 = sub_116690();
  v85 = *(v84 - 8);
  v86 = v202;
  (*(v85 + 104))(v202, v83, v84);
  (*(v85 + 56))(v86, 0, 1, v84);
  v87 = sub_116800();
  v191 = v88;
  v192 = v87;
  LODWORD(v90) = v89;
  v193 = v91;
  sub_48928(v78, v80, v82 & 1);

  sub_488C8(v86, &qword_182FF8, &qword_124E30);
  v92 = v204;
  sub_116DD0();
  sub_46F9C(&qword_182E10, &qword_1247F0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1248A0;
  LOBYTE(v84) = sub_116610();
  *(v93 + 32) = v84;
  v94 = sub_116620();
  *(v93 + 33) = v94;
  v95 = sub_116640();
  sub_116640();
  if (sub_116640() != v84)
  {
    v95 = sub_116640();
  }

  sub_116640();
  v96 = sub_116640();
  v97 = v201;
  v98 = v215;
  if (v96 != v94)
  {
    v95 = sub_116640();
  }

  v99 = v203;
  (*(v205 + 32))(v203, v92, v206);
  v100 = v99 + *(v214 + 36);
  *v100 = v95;
  *(v100 + 8) = 0u;
  *(v100 + 24) = 0u;
  *(v100 + 40) = 1;
  sub_548D0(v99, v219, &qword_184EA0, &qword_129180);
  v227[0] = v266;
  *&v227[1] = v267;
  v101 = sub_116D60();
  (*(**&v226[0] + 320))(v101);

  sub_116EB0();
  sub_116070();
  v205 = v252;
  v206 = v250;
  v203 = v255;
  v204 = v254;
  v230 = 1;
  v229 = v251;
  v228 = v253;
  v227[0] = v266;
  *&v227[1] = v267;
  sub_116D90();
  *&v227[0] = *&v226[0];
  *(v227 + 8) = *(v226 + 8);
  type metadata accessor for ShowAllUsageViewModel();
  sub_102258(&qword_1871D0, type metadata accessor for ShowAllUsageViewModel);
  v102 = v220;
  sub_7AA94(v227, v220);
  v103 = sub_116620();
  sub_115FD0();
  v104 = &v102[*(v207 + 36)];
  *v104 = v103;
  *(v104 + 1) = v105;
  *(v104 + 2) = v106;
  *(v104 + 3) = v107;
  *(v104 + 4) = v108;
  v104[40] = 0;
  v227[0] = v266;
  *&v227[1] = v267;
  v109 = sub_116D60();
  v110 = v210;
  (*(**&v226[0] + 408))(v109);

  if ((*(v208 + 48))(v110, 1, v209) == 1)
  {
    sub_488C8(v110, &qword_1871B8, &qword_12CB40);
    v111 = 1;
    v112 = v212;
  }

  else
  {
    v113 = v197;
    sub_101A80(v110, v197);
    type metadata accessor for BUIChartViewModel();
    v114 = v196;
    sub_E8088(v113, v196);
    v115 = sub_AF42C(v114);
    v116.n128_f64[0] = *(v98 + 24) + 32.0;
    v117 = (*(*v115 + 440))(v116);

    v119 = v198;
    sub_D9090(v118, v198, v117);
    sub_46F9C(&qword_184160, &unk_127D70);
    sub_102258(&qword_1871E0, type metadata accessor for Battery24HrBatteryLevelChart);
    sub_7DDE8();
    v120 = v200;
    sub_116990();
    sub_101AE4(v119, type metadata accessor for Battery24HrBatteryLevelChart);
    LOBYTE(v119) = sub_116610();

    sub_101AE4(v113, type metadata accessor for BUIChartViewData);
    v112 = v212;
    v121 = v120 + *(v212 + 36);
    *v121 = v119;
    *(v121 + 8) = 0u;
    *(v121 + 24) = 0u;
    *(v121 + 40) = 1;
    sub_548D0(v120, v97, &qword_1871B0, &qword_12CB38);
    v111 = 0;
  }

  (*(v211 + 56))(v97, v111, 1, v112);
  v122 = v218;
  sub_116DD0();
  v123 = sub_116620();
  sub_115FD0();
  v124 = &v122[*(v214 + 36)];
  *v124 = v123;
  *(v124 + 1) = v125;
  *(v124 + 2) = v126;
  *(v124 + 3) = v127;
  *(v124 + 4) = v128;
  v124[40] = 0;
  v129 = sub_116320();
  v222 = 1;
  v227[0] = *v98;
  *&v227[1] = *(v98 + 16);
  sub_46F9C(&qword_187180, &qword_12C9D0);
  v130 = sub_116D60();
  (*(**&v226[0] + 400))(v284, v130);

  v303 = v284[6];
  v304 = v284[7];
  v305[0] = v285[0];
  *(v305 + 9) = *(v285 + 9);
  v299 = v284[2];
  v300 = v284[3];
  v301 = v284[4];
  v302 = v284[5];
  v297 = v284[0];
  v298 = v284[1];
  if (sub_719E4(&v297) == 1)
  {
    goto LABEL_31;
  }

  v307 = v302;
  v308 = v303;
  v309 = v304;
  v310 = v305[0];
  v306[0] = v298;
  v306[1] = v299;
  v306[2] = v300;
  v306[3] = v301;
  sub_479B4(v306, v227, &qword_1835C8, &qword_1259C0);
  sub_488C8(v284, &qword_1838E8, &unk_1272E0);
  if (!v307)
  {
    goto LABEL_31;
  }

  v131 = *(v306 + 1);
  sub_488C8(v306, &qword_1835C8, &qword_1259C0);
  v227[0] = *v98;
  *&v227[1] = *(v98 + 16);
  v132 = sub_116D60();
  (*(**&v226[0] + 400))(v286, v132);

  v294 = v286[6];
  v295 = v286[7];
  v296[0] = v287[0];
  *(v296 + 9) = *(v287 + 9);
  v290 = v286[2];
  v291 = v286[3];
  v292 = v286[4];
  v293 = v286[5];
  v288 = v286[0];
  v289 = v286[1];
  if (sub_719E4(&v288) == 1)
  {
    goto LABEL_31;
  }

  v312 = v293;
  v313 = v294;
  v314 = v295;
  v315 = v296[0];
  v311[0] = v289;
  v311[1] = v290;
  v311[2] = v291;
  v311[3] = v292;
  sub_479B4(v311, v227, &qword_1835C8, &qword_1259C0);
  sub_488C8(v286, &qword_1838E8, &unk_1272E0);
  if (!v312)
  {
    goto LABEL_31;
  }

  v133 = *v311;
  sub_488C8(v311, &qword_1835C8, &qword_1259C0);
  if (v131 + v133 > 86400.0)
  {
    v134 = 86400.0 / (v131 + v133);
    v131 = v131 * v134;
    v133 = v133 * v134;
  }

  v135 = sub_8D8B4();
  v136 = [v135[8] stringFromTimeInterval:v131];
  if (!v136)
  {
    goto LABEL_34;
  }

  v137 = v136;
  v138 = sub_1171B0();
  v140 = v139;

  v141 = AXDurationStringForDurationWithSeconds();
  if (!v141)
  {

LABEL_34:
    sub_D1C5C(v221);
    goto LABEL_37;
  }

  v186 = v90;
  v142 = v141;
  v215 = sub_1171B0();
  v144 = v143;

  if ([objc_opt_self() hasAOD])
  {
    v90 = sub_117170();
    v145 = BatteryUILocalization(v90);

    if (!v145)
    {
      __break(1u);
LABEL_31:
      sub_D1C20(v227);
LABEL_32:
      memcpy(v226, v227, 0x160uLL);
      memcpy(v223, v226, sizeof(v223));
      memcpy(v224, v226, sizeof(v224));
      sub_479B4(v223, v227, &qword_185EB0, &unk_12B1E0);
      sub_488C8(v224, &qword_185EB0, &unk_12B1E0);
      memcpy(v227 + 7, v223, 0x160uLL);
      v225[0] = v129;
      LOBYTE(v225[1]) = v222;
      memcpy(&v225[1] + 1, v227, 0x167uLL);
      v146 = v90 & 1;
      LOBYTE(v283[0]) = v90 & 1;
      v147 = v217;
      sub_479B4(v219, v217, &qword_184EA0, &qword_129180);
      LODWORD(v213) = v230;
      LODWORD(v214) = v229;
      LODWORD(v215) = v228;
      v148 = v194;
      sub_479B4(v220, v194, &qword_1871C8, &unk_12CB50);
      v149 = v195;
      sub_1019A8(v201, v195);
      v150 = v216;
      sub_479B4(v218, v216, &qword_184EA0, &qword_129180);
      memcpy(v221, v225, sizeof(v221));
      v151 = v187;
      v152 = v191;
      *v187 = v192;
      *(v151 + 8) = v152;
      *(v151 + 16) = v146;
      *(v151 + 24) = v193;
      v153 = sub_46F9C(&qword_1871D8, &unk_12CB60);
      sub_479B4(v147, v151 + v153[12], &qword_184EA0, &qword_129180);
      v154 = v151 + v153[16];
      *v154 = 0;
      *(v154 + 8) = v213;
      *(v154 + 16) = v206;
      *(v154 + 24) = v214;
      *(v154 + 32) = v205;
      *(v154 + 40) = v215;
      v155 = v203;
      *(v154 + 48) = v204;
      *(v154 + 56) = v155;
      sub_479B4(v148, v151 + v153[20], &qword_1871C8, &unk_12CB50);
      sub_1019A8(v149, v151 + v153[24]);
      sub_479B4(v150, v151 + v153[28], &qword_184EA0, &qword_129180);
      v156 = v153[32];
      memcpy(v226, v221, 0x178uLL);
      v157 = v191;
      v158 = v192;
      sub_488B8(v192, v191, v146);

      sub_479B4(v225, v227, &qword_185ED0, &qword_12B1F8);
      sub_488B8(v158, v157, v146);

      sub_479B4(v226, v227, &qword_185ED0, &qword_12B1F8);
      sub_488C8(v244, &qword_1835C8, &qword_1259C0);
      sub_488C8(v248, &qword_1838E8, &unk_1272E0);
      sub_48928(v158, v157, v146);

      sub_488C8(v225, &qword_185ED0, &qword_12B1F8);
      memcpy((v151 + v156), v226, 0x178uLL);
      sub_488C8(v218, &qword_184EA0, &qword_129180);
      sub_101A18(v201);
      sub_488C8(v220, &qword_1871C8, &unk_12CB50);
      sub_488C8(v219, &qword_184EA0, &qword_129180);
      memcpy(v227, v221, 0x178uLL);
      sub_488C8(v227, &qword_185ED0, &qword_12B1F8);
      sub_488C8(v216, &qword_184EA0, &qword_129180);
      sub_101A18(v195);
      sub_488C8(v194, &qword_1871C8, &unk_12CB50);
      sub_488C8(v217, &qword_184EA0, &qword_129180);
      sub_48928(v158, v157, v283[0]);

      v159 = v190;
      sub_548D0(v151, v190, &qword_1871A8, &qword_12CB30);
      (*(v188 + 56))(v159, 0, 1, v189);
      return;
    }
  }

  else
  {
    v160 = sub_117170();
    v145 = BatteryUILocalization(v160);

    if (!v145)
    {
      __break(1u);
      goto LABEL_48;
    }
  }

  v90 = sub_1171B0();
  v162 = v161;

  v163 = [objc_opt_self() secondaryLabelColor];
  v164 = sub_116BE0();
  v165 = sub_CF268();
  sub_CE6E0(v90, v162, v138, v140, v215, v144, v164, v165, v268);
  sub_116E80();
  sub_116190();
  v227[8] = v268[8];
  v227[9] = v268[9];
  v227[10] = v268[10];
  v227[4] = v268[4];
  v227[5] = v268[5];
  v227[7] = v268[7];
  v227[6] = v268[6];
  v227[0] = v268[0];
  v227[1] = v268[1];
  v227[3] = v268[3];
  v227[2] = v268[2];
  nullsub_4(v227);
  *&v221[128] = v227[8];
  *&v221[144] = v227[9];
  *&v221[160] = v227[10];
  *&v221[64] = v227[4];
  *&v221[80] = v227[5];
  *&v221[96] = v227[6];
  *&v221[112] = v227[7];
  *v221 = v227[0];
  *&v221[16] = v227[1];
  *&v221[32] = v227[2];
  *&v221[48] = v227[3];
  LODWORD(v90) = v186;
LABEL_37:
  v166 = [v135[8] stringFromTimeInterval:v133];
  if (!v166)
  {
LABEL_43:
    sub_D1C5C(v224);
LABEL_46:
    v278 = *&v221[128];
    v279 = *&v221[144];
    v280 = *&v221[160];
    v274 = *&v221[64];
    v275 = *&v221[80];
    v277 = *&v221[112];
    v276 = *&v221[96];
    v270 = *v221;
    v271 = *&v221[16];
    v273 = *&v221[48];
    v272 = *&v221[32];
    v283[8] = v224[8];
    v283[9] = v224[9];
    v283[10] = v224[10];
    v283[4] = v224[4];
    v283[5] = v224[5];
    v283[7] = v224[7];
    v283[6] = v224[6];
    v283[0] = v224[0];
    v283[1] = v224[1];
    v283[3] = v224[3];
    v283[2] = v224[2];
    v281[8] = *&v221[128];
    v281[9] = *&v221[144];
    v281[10] = *&v221[160];
    v281[4] = *&v221[64];
    v281[5] = *&v221[80];
    v281[7] = *&v221[112];
    v281[6] = *&v221[96];
    v281[0] = *v221;
    v281[1] = *&v221[16];
    v281[3] = *&v221[48];
    v281[2] = *&v221[32];
    v225[8] = *&v221[128];
    v225[9] = *&v221[144];
    v225[4] = *&v221[64];
    v225[5] = *&v221[80];
    v225[7] = *&v221[112];
    v225[6] = *&v221[96];
    v225[0] = *v221;
    v225[1] = *&v221[16];
    v225[3] = *&v221[48];
    v225[2] = *&v221[32];
    v282[8] = v224[8];
    v282[9] = v224[9];
    v282[10] = v224[10];
    v282[4] = v224[4];
    v282[5] = v224[5];
    v282[7] = v224[7];
    v282[6] = v224[6];
    v282[0] = v224[0];
    v282[1] = v224[1];
    v282[3] = v224[3];
    v282[2] = v224[2];
    v225[18] = v224[7];
    v225[19] = v224[8];
    v225[20] = v224[9];
    v225[21] = v224[10];
    v225[14] = v224[3];
    v225[15] = v224[4];
    v225[16] = v224[5];
    v225[17] = v224[6];
    v225[10] = *&v221[160];
    v225[11] = v224[0];
    v225[12] = v224[1];
    v225[13] = v224[2];
    sub_479B4(v281, v227, &qword_185EE0, &unk_12CB70);
    sub_479B4(v282, v227, &qword_185EE0, &unk_12CB70);
    sub_488C8(v283, &qword_185EE0, &unk_12CB70);
    v223[8] = v278;
    v223[9] = v279;
    v223[10] = v280;
    v223[4] = v274;
    v223[5] = v275;
    v223[6] = v276;
    v223[7] = v277;
    v223[0] = v270;
    v223[1] = v271;
    v223[2] = v272;
    v223[3] = v273;
    sub_488C8(v223, &qword_185EE0, &unk_12CB70);
    memcpy(v226, v225, 0x160uLL);
    nullsub_4(v226);
    memcpy(v227, v226, 0x160uLL);
    goto LABEL_32;
  }

  v167 = v166;
  v168 = sub_1171B0();
  v170 = v169;

  v171 = AXDurationStringForDurationWithSeconds();
  if (!v171)
  {
LABEL_42:

    goto LABEL_43;
  }

  v172 = v171;
  v173 = sub_1171B0();
  v175 = v174;

  v176 = [objc_opt_self() hasAOD];
  v186 = v90;
  if (v176)
  {
    v177 = sub_117170();
    v178 = BatteryUILocalization(v177);

    if (!v178)
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_45:
    v180 = sub_1171B0();
    v90 = v181;

    v182 = [objc_opt_self() secondaryLabelColor];
    v183 = sub_116BE0();
    v184 = sub_CF268();
    sub_CE6E0(v180, v90, v168, v170, v173, v175, v183, v184, v269);
    sub_116E80();
    sub_116190();
    v227[8] = v269[8];
    v227[9] = v269[9];
    v227[10] = v269[10];
    v227[4] = v269[4];
    v227[5] = v269[5];
    v227[7] = v269[7];
    v227[6] = v269[6];
    v227[0] = v269[0];
    v227[1] = v269[1];
    v227[3] = v269[3];
    v227[2] = v269[2];
    nullsub_4(v227);
    v224[8] = v227[8];
    v224[9] = v227[9];
    v224[10] = v227[10];
    v224[4] = v227[4];
    v224[5] = v227[5];
    v224[7] = v227[7];
    v224[6] = v227[6];
    v224[0] = v227[0];
    v224[1] = v227[1];
    v224[3] = v227[3];
    v224[2] = v227[2];
    LOBYTE(v90) = v186;
    goto LABEL_46;
  }

  v179 = sub_117170();
  v178 = BatteryUILocalization(v179);

  if (v178)
  {
    goto LABEL_45;
  }

LABEL_48:
  __break(1u);
}

void sub_101750(uint64_t a1@<X8>)
{
  *a1 = sub_1163F0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(sub_46F9C(&qword_187188, &qword_12C9D8) + 44);
  sub_FF6F0(v1);
}

uint64_t sub_1017A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1017E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101854()
{
  result = qword_187190;
  if (!qword_187190)
  {
    sub_47A1C(&qword_187160, &qword_12C9C0);
    sub_47A1C(&qword_187150, &qword_12C9B0);
    sub_48800(&qword_187178, &qword_187150, &qword_12C9B0);
    sub_4869C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187190);
  }

  return result;
}

uint64_t sub_1019A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1871C0, &qword_12CB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101A18(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1871C0, &qword_12CB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_101AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_101B5C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    v34 = *(result + 16);
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      v8 = *(v6 + 112);
      v9 = *(v6 + 80);
      v41 = *(v6 + 96);
      v42 = v8;
      v10 = *(v6 + 112);
      v43 = *(v6 + 128);
      v11 = *(v6 + 48);
      v12 = *(v6 + 16);
      v37 = *(v6 + 32);
      v38 = v11;
      v13 = *(v6 + 48);
      v14 = *(v6 + 80);
      v39 = *(v6 + 64);
      v40 = v14;
      v15 = *(v6 + 16);
      v36[0] = *v6;
      v36[1] = v15;
      v51 = v41;
      v52 = v10;
      v53 = *(v6 + 128);
      v47 = v37;
      v48 = v13;
      v49 = v39;
      v50 = v9;
      v44 = *(v6 + 144);
      v54 = *(v6 + 144);
      v45 = v36[0];
      v46 = v12;
      if (v4)
      {
        result = sub_6B280(v36, v35);
        v2 = v7;
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = v7[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        sub_46F9C(&qword_187338, &unk_12CCC8);
        v2 = swift_allocObject();
        v20 = (j__malloc_size(v2) - 32) / 160;
        v2[2] = v19;
        v2[3] = 2 * v20;
        v21 = v7[3] >> 1;
        v22 = 20 * v21;
        v23 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        v5 = &v2[20 * v21 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v22 + 4] && v2 == v7)
          {
            sub_6B280(v36, v35);
          }

          else
          {
            sub_6B280(v36, v35);
            memmove(v2 + 4, v7 + 4, v22 * 8);
          }

          v7[2] = 0;

          v1 = v34;
          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_6B280(v36, v35);

          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v24 = v51;
      v25 = v52;
      v26 = v53;
      *(v5 + 76) = v54;
      v27 = v45;
      *(v5 + 3) = v46;
      *(v5 + 1) = v27;
      v28 = v47;
      v29 = v48;
      v30 = v49;
      *(v5 + 11) = v50;
      *(v5 + 9) = v30;
      *(v5 + 7) = v29;
      *(v5 + 5) = v28;
      *(v5 + 17) = v26;
      *(v5 + 15) = v25;
      *(v5 + 13) = v24;
      v5 += 20;
      v6 += 152;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v31 = v2[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v16 = __OFSUB__(v32, v4);
    v33 = v32 - v4;
    if (v16)
    {
      goto LABEL_30;
    }

    v2[2] = v33;
  }

  return v2;
}

unint64_t sub_101E00()
{
  result = qword_187228;
  if (!qword_187228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187228);
  }

  return result;
}

unint64_t sub_101E5C()
{
  result = qword_187240;
  if (!qword_187240)
  {
    sub_47A1C(&qword_1871F8, &qword_12CB90);
    sub_48800(&qword_187248, &qword_187250, &qword_12CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187240);
  }

  return result;
}

uint64_t sub_101F1C(uint64_t x0_0)
{
  v2 = *(x0_0 + 112);
  v3 = *(x0_0 + 80);
  v21 = *(x0_0 + 96);
  v22 = v2;
  v4 = *(x0_0 + 112);
  v23 = *(x0_0 + 128);
  v5 = *(x0_0 + 48);
  v6 = *(x0_0 + 16);
  v17 = *(x0_0 + 32);
  v18 = v5;
  v7 = *(x0_0 + 48);
  v8 = *(x0_0 + 80);
  v19 = *(x0_0 + 64);
  v20 = v8;
  v9 = *(x0_0 + 16);
  v16[0] = *x0_0;
  v16[1] = v9;
  v13[6] = v21;
  v13[7] = v4;
  v13[8] = *(x0_0 + 128);
  v13[2] = v17;
  v13[3] = v7;
  v13[4] = v19;
  v13[5] = v3;
  v24 = *(x0_0 + 144);
  v14 = *(x0_0 + 144);
  v13[0] = v16[0];
  v13[1] = v6;
  v11 = *(v1 + 16);
  sub_6B280(v16, v15);
  sub_46F9C(&qword_187138, &qword_12C990);
  sub_116CC0();
  v12[3] = type metadata accessor for ShowAllUsageViewModel();
  v12[4] = &off_166FA0;
  sub_6A95C();
  sub_EFAC0(v13, 0, v12, 0, 0, 0, &type metadata for BreakdownAppInfo, v15);
  sub_5EEBC();
  *&v13[0] = 0x72427070416E6F4ELL;
  *(&v13[0] + 1) = 0xEF6E776F646B6165;
  sub_117220(v25);

  sub_46F9C(&qword_1872B0, &qword_12CC30);
  sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30);
  sub_116AA0();

  return sub_488C8(v15, &qword_1872B0, &qword_12CC30);
}

unint64_t sub_1020F4()
{
  result = qword_187298;
  if (!qword_187298)
  {
    sub_47A1C(&qword_185118, &qword_129A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187298);
  }

  return result;
}

unint64_t sub_102170()
{
  result = qword_1872A0;
  if (!qword_1872A0)
  {
    sub_47A1C(&qword_187288, &unk_12CC20);
    sub_48800(&qword_1872A8, &qword_1872B0, &qword_12CC30);
    sub_102258(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1872A0);
  }

  return result;
}

uint64_t sub_102258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1022A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1022E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 15);
  v10[6] = *(a1 + 13);
  v10[7] = v5;
  v10[8] = *(a1 + 17);
  v11 = *(a1 + 76);
  v6 = *(a1 + 7);
  v10[2] = *(a1 + 5);
  v10[3] = v6;
  v7 = *(a1 + 11);
  v10[4] = *(a1 + 9);
  v10[5] = v7;
  v8 = *(a1 + 3);
  v10[0] = *(a1 + 1);
  v10[1] = v8;
  return v2(v4, v10);
}

unint64_t sub_10235C()
{
  result = qword_1872F8;
  if (!qword_1872F8)
  {
    sub_47A1C(&qword_1872E8, &qword_12CC98);
    sub_1023E8();
    sub_102170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1872F8);
  }

  return result;
}

unint64_t sub_1023E8()
{
  result = qword_187300;
  if (!qword_187300)
  {
    sub_47A1C(&qword_187308, &qword_12CCA0);
    sub_102170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187300);
  }

  return result;
}

uint64_t sub_10246C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1024B4()
{
  sub_116F00();
  sub_1160D0();
}

void sub_102530(uint64_t a1@<X8>)
{
  v18 = *(*(v1 + 16) + 16);
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  sub_116CC0();
  if (v19 == 1)
  {
    v3 = sub_117170();
    v4 = BatteryUILocalization(v3);

    if (v4)
    {
LABEL_5:
      sub_1171B0();

      sub_4869C();
      v6 = sub_116900();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = sub_116660();
      sub_115FD0();
      *a1 = v6;
      *(a1 + 8) = v8;
      *(a1 + 16) = v10 & 1;
      *(a1 + 24) = v12;
      *(a1 + 32) = v13;
      *(a1 + 40) = v14;
      *(a1 + 48) = v15;
      *(a1 + 56) = v16;
      *(a1 + 64) = v17;
      *(a1 + 72) = 0;
      return;
    }

    __break(1u);
  }

  v5 = sub_117170();
  v4 = BatteryUILocalization(v5);

  if (v4)
  {
    goto LABEL_5;
  }

  __break(1u);
}

unint64_t sub_102690()
{
  result = qword_187318;
  if (!qword_187318)
  {
    sub_47A1C(&qword_1872C0, &qword_12CC40);
    sub_48800(&qword_187320, &qword_187328, &qword_12CCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187318);
  }

  return result;
}

uint64_t sub_102748()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 16);
  v3[1] = *(v1 + 16);
  v5 = *(&v4 + 1);
  sub_479B4(&v5, v3, &qword_187148, &qword_12C9A8);
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  sub_116CC0();
  v3[0] = v4;
  sub_116CD0();
  return sub_488C8(&v4, &qword_182D78, &qword_12C9A0);
}

uint64_t sub_10282C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v128 = a2;
  v124 = a1;
  v126 = *(a1 - 8);
  v127 = *(v126 + 64);
  __chkstk_darwin(a1);
  v125 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_46F9C(&qword_184138, &qword_127D50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v123 = &v83 - v6;
  v118 = *(a1 + 16);
  v122 = *(v118 - 8);
  v7 = *(v122 + 64);
  __chkstk_darwin(v8);
  v121 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v10 = sub_1173A0();
  v11 = sub_47A1C(&qword_187350, &qword_12CD58);
  WitnessTable = swift_getWitnessTable();
  v136 = v10;
  v137 = &type metadata for Int;
  v138 = v11;
  v139 = WitnessTable;
  v140 = &protocol witness table for Int;
  v116 = sub_116E30();
  v135 = sub_103558();
  v115 = swift_getWitnessTable();
  v13 = sub_115DD0();
  v117 = *(v13 - 8);
  v14 = *(v117 + 64);
  __chkstk_darwin(v13);
  v109 = &v83 - v15;
  v16 = sub_47A1C(&qword_184160, &unk_127D70);
  v17 = swift_getWitnessTable();
  v18 = sub_7DDE8();
  v136 = v13;
  v137 = v16;
  v105 = v13;
  v108 = v16;
  v138 = v17;
  v139 = v18;
  v107 = v17;
  v19 = v18;
  v106 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v113 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v113 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v110 = &v83 - v22;
  v23 = sub_47A1C(&qword_187370, &unk_12CD78);
  v136 = v13;
  v137 = v16;
  v138 = v17;
  v139 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_48800(&qword_187378, &qword_187370, &unk_12CD78);
  v90 = OpaqueTypeMetadata2;
  v136 = OpaqueTypeMetadata2;
  v137 = v23;
  v93 = v23;
  v138 = OpaqueTypeConformance2;
  v139 = v25;
  v26 = OpaqueTypeConformance2;
  v92 = OpaqueTypeConformance2;
  v27 = v25;
  v91 = v25;
  v28 = swift_getOpaqueTypeMetadata2();
  v114 = *(v28 - 8);
  v29 = *(v114 + 64);
  __chkstk_darwin(v28);
  v94 = &v83 - v30;
  v31 = sub_47A1C(&qword_1841B8, &qword_1285E0);
  v136 = OpaqueTypeMetadata2;
  v137 = v23;
  v138 = v26;
  v139 = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_7E000();
  v136 = v28;
  v137 = v31;
  v95 = v31;
  v138 = v32;
  v139 = v33;
  v34 = v32;
  v97 = v32;
  v96 = v33;
  v35 = swift_getOpaqueTypeMetadata2();
  v112 = *(v35 - 8);
  v36 = *(v112 + 64);
  __chkstk_darwin(v35);
  v99 = &v83 - v37;
  v38 = sub_47A1C(&qword_187380, &qword_12CD88);
  v136 = v28;
  v137 = v31;
  v138 = v34;
  v139 = v33;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_48800(&qword_187388, &qword_187380, &qword_12CD88);
  v136 = v35;
  v137 = v38;
  v41 = v35;
  v84 = v35;
  v87 = v38;
  v138 = v39;
  v139 = v40;
  v42 = v39;
  v86 = v39;
  v43 = v40;
  v85 = v40;
  v44 = swift_getOpaqueTypeMetadata2();
  v100 = v44;
  v111 = *(v44 - 8);
  v45 = *(v111 + 64);
  __chkstk_darwin(v44);
  v88 = &v83 - v46;
  v47 = sub_47A1C(&qword_185150, &qword_12CD90);
  v103 = v47;
  v136 = v41;
  v137 = v38;
  v138 = v42;
  v139 = v43;
  v48 = swift_getOpaqueTypeConformance2();
  v102 = v48;
  v101 = sub_48800(&qword_185160, &qword_185150, &qword_12CD90);
  v136 = v44;
  v137 = v47;
  v138 = v48;
  v139 = v101;
  v104 = swift_getOpaqueTypeMetadata2();
  v98 = *(v104 - 8);
  v49 = *(v98 + 64);
  __chkstk_darwin(v104);
  v83 = &v83 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v89 = &v83 - v52;
  v53 = v118;
  v54 = v119;
  v132 = v118;
  v133 = v119;
  v55 = v120;
  v134 = v120;
  v56 = v109;
  sub_115DC0();
  v57 = v110;
  v58 = v105;
  sub_116990();
  (*(v117 + 8))(v56, v58);
  v59 = v94;
  v60 = v90;
  sub_116930();
  (*(v113 + 8))(v57, v60);
  sub_116DC0();
  v61 = v121;
  sub_116D60();
  v62 = (*(*(v54 + 8) + 24))(v53);
  v63 = v61;
  v64 = v53;
  (*(v122 + 8))(v63, v53);
  v136 = v62;
  v65 = sub_115F00();
  v66 = v123;
  (*(*(v65 - 8) + 56))(v123, 1, 1, v65);
  v67 = v99;
  sub_116960();
  sub_488C8(v66, &qword_184138, &qword_127D50);

  (*(v114 + 8))(v59, v28);
  v129 = v64;
  v130 = v54;
  v131 = v55;
  v68 = v88;
  v69 = v84;
  sub_116910();
  (*(v112 + 8))(v67, v69);
  v71 = v125;
  v70 = v126;
  v72 = v124;
  (*(v126 + 16))(v125, v55, v124);
  v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v64;
  *(v74 + 24) = v54;
  (*(v70 + 32))(v74 + v73, v71, v72);
  sub_116EB0();
  v75 = v83;
  v76 = v100;
  sub_116980();

  (*(v111 + 8))(v68, v76);
  v77 = v98;
  v78 = *(v98 + 16);
  v79 = v89;
  v80 = v104;
  v78(v89, v75, v104);
  v81 = *(v77 + 8);
  v81(v75, v80);
  v78(v128, v79, v80);
  return (v81)(v79, v80);
}

unint64_t sub_103558()
{
  result = qword_187358;
  if (!qword_187358)
  {
    sub_47A1C(&qword_187350, &qword_12CD58);
    sub_1035DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187358);
  }

  return result;
}

unint64_t sub_1035DC()
{
  result = qword_187360;
  if (!qword_187360)
  {
    sub_47A1C(&qword_187368, &unk_12CD60);
    sub_47A1C(&qword_184208, &unk_127DE0);
    sub_47A1C(&qword_184210, &qword_128640);
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_184420, &qword_12CD70);
    sub_47A1C(&qword_184150, &unk_127D60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187360);
  }

  return result;
}

uint64_t sub_10380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a1;
  v47 = a4;
  v6 = type metadata accessor for DailyUsageTimeView();
  v37 = v6;
  v45 = *(v6 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v6);
  v44 = &v36 - v7;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1173A0();
  v43 = v13;
  v14 = sub_47A1C(&qword_187350, &qword_12CD58);
  v42 = v14;
  WitnessTable = swift_getWitnessTable();
  v52 = v13;
  v53 = &type metadata for Int;
  v54 = v14;
  v55 = WitnessTable;
  v56 = &protocol witness table for Int;
  v15 = sub_116E30();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v39 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v40 = &v36 - v20;
  v21 = *(v6 + 16);
  sub_116DC0();
  sub_116D60();
  v22 = (*(a3 + 32))(a2, a3);
  (*(v8 + 8))(v12, a2);
  v51 = v22;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172B0();

  v51 = v52;
  sub_117830();
  swift_getWitnessTable();
  v52 = sub_1173B0();
  v48 = a2;
  v49 = a3;
  swift_getKeyPath();
  v23 = v44;
  v24 = v45;
  v25 = v37;
  (*(v45 + 16))(v44, v36, v37);
  v26 = v24;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  (*(v26 + 32))(v28 + v27, v23, v25);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = sub_10AAC4;
  v29[5] = v28;
  v35 = sub_103558();
  v30 = v39;
  sub_116E00();
  v50 = v35;
  swift_getWitnessTable();
  v31 = v16[2];
  v32 = v40;
  v31(v40, v30, v15);
  v33 = v16[1];
  v33(v30, v15);
  v31(v47, v32, v15);
  return (v33)(v32, v15);
}

uint64_t sub_103D34@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v263 = a3;
  v250 = a1;
  v266 = a6;
  v228 = sub_46F9C(&qword_1874C8, &qword_12CF68);
  v9 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v226 = &v192 - v10;
  v11 = sub_46F9C(&qword_187368, &unk_12CD60);
  v265 = *(v11 - 8);
  v12 = *(v265 + 64);
  __chkstk_darwin(v11);
  v227 = &v192 - v13;
  v222 = sub_46F9C(&qword_184150, &unk_127D60);
  v220 = *(v222 - 8);
  v14 = *(v220 + 64);
  __chkstk_darwin(v222);
  v218 = &v192 - v15;
  v16 = sub_46F9C(&qword_184420, &qword_12CD70);
  v221 = *(v16 - 8);
  v17 = *(v221 + 64);
  __chkstk_darwin(v16);
  v219 = &v192 - v18;
  v225 = sub_46F9C(&qword_1874D0, &qword_12CF70);
  v224 = *(v225 - 8);
  v19 = *(v224 + 64);
  __chkstk_darwin(v225);
  v223 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v239 = &v192 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_117620();
  v261 = *(v24 - 8);
  v25 = *(v261 + 64);
  __chkstk_darwin(v24);
  v249 = &v192 - v26;
  v248 = sub_116390();
  v260 = *(v248 - 8);
  v27 = *(v260 + 64);
  __chkstk_darwin(v248);
  v247 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_46F9C(&qword_184418, &unk_1281A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v215 = &v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  *&v230 = &v192 - v33;
  v244 = sub_46F9C(&qword_185928, &unk_12A520);
  v34 = *(*(v244 - 8) + 64);
  __chkstk_darwin(v244);
  v243 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v242 = &v192 - v37;
  v252 = sub_115760();
  v257 = *(v252 - 8);
  v38 = *(v257 + 64);
  __chkstk_darwin(v252);
  v254 = &v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v253 = &v192 - v41;
  v240 = sub_46F9C(&qword_185930, &qword_12BDF0);
  v42 = *(*(v240 - 8) + 64);
  __chkstk_darwin(v240);
  v241 = &v192 - v43;
  v44 = sub_46F9C(&qword_1843C8, &qword_128140);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v213 = &v192 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v229 = &v192 - v48;
  v245 = sub_115E00();
  v258 = *(v245 - 8);
  v49 = *(v258 + 64);
  __chkstk_darwin(v245);
  v214 = &v192 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v192 - v52;
  v246 = sub_46F9C(&qword_184158, &unk_1285C0);
  *&v259 = *(v246 - 8);
  v54 = *(v259 + 64);
  __chkstk_darwin(v246);
  v237 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v251 = &v192 - v57;
  v235 = sub_46F9C(&qword_184210, &qword_128640);
  v233 = *(v235 - 8);
  v58 = *(v233 + 64);
  __chkstk_darwin(v235);
  v231 = &v192 - v59;
  v236 = sub_46F9C(&qword_184208, &unk_127DE0);
  v234 = *(v236 - 8);
  v60 = *(v234 + 64);
  __chkstk_darwin(v236);
  v232 = &v192 - v61;
  v217 = sub_46F9C(&qword_1874D8, &qword_12CF78);
  v216 = *(v217 - 8);
  v62 = *(v216 + 64);
  __chkstk_darwin(v217);
  v238 = &v192 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v255 = &v192 - v65;
  v66 = *(a4 - 1);
  v67 = *(v66 + 64);
  __chkstk_darwin(v68);
  v262 = &v192 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = *(AssociatedConformanceWitness + 8);
  v71 = (*(v70 + 32))(AssociatedTypeWitness, v70);
  if (v72)
  {
    goto LABEL_11;
  }

  v73 = *&v71;
  v74 = *(v70 + 40);
  v212 = a2;
  *&v75 = COERCE_DOUBLE(v74(AssociatedTypeWitness, v70));
  if (v76)
  {
    goto LABEL_11;
  }

  v208 = AssociatedTypeWitness;
  v210 = v24;
  v77 = v73;
  v78 = *&v75;
  v79 = a5;
  v80 = v264;
  v81 = *(type metadata accessor for DailyUsageTimeView() + 16);
  v82 = sub_116DC0();
  v83 = v262;
  v207 = v82;
  sub_116D60();
  v211 = v79;
  v84 = (*(*(v79 + 8) + 24))(v80);
  v85 = *(v66 + 8);
  v209 = v66 + 8;
  v206 = v85;
  v85(v83, v80);
  swift_getWitnessTable();
  v86 = sub_7C860(v84, v77, v78);

  if (!v86)
  {
LABEL_11:
    v126 = 1;
    v128 = v265;
    v127 = v266;
    return (*(v128 + 56))(v127, v126, 1, v11);
  }

  v204 = v53;
  v198 = v16;
  v199 = v11;
  v201 = sub_116370();
  v203 = v87;
  LODWORD(v200) = v88;
  v202 = v89;
  v90 = v253;
  sub_115700();
  v91 = v254;
  sub_115700();
  v92 = sub_10ABAC(&qword_182F10, &type metadata accessor for Date);
  v93 = v252;
  v205 = v92;
  result = sub_117130();
  if (result)
  {
    v95 = v257;
    v96 = v257 + 32;
    v97 = *(v257 + 32);
    v98 = v242;
    v97(v242, v90, v93);
    v99 = v244;
    v97((v98 + *(v244 + 48)), v91, v93);
    v100 = v243;
    sub_479B4(v98, v243, &qword_185928, &unk_12A520);
    v101 = *(v99 + 48);
    v102 = v241;
    v97(v241, v100, v93);
    v103 = *(v95 + 8);
    v103(v100 + v101, v93);
    sub_548D0(v98, v100, &qword_185928, &unk_12A520);
    v104 = v102 + *(v240 + 36);
    v105 = v100 + *(v99 + 48);
    v197 = v96;
    v196 = v97;
    v97(v104, v105, v93);
    v257 = v95 + 8;
    v195 = v103;
    v103(v100, v93);
    sub_115C50();

    sub_488C8(v102, &qword_185930, &qword_12BDF0);
    sub_116370();
    v106 = v212;
    v107 = v208;
    v108 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 16))(v208));
    if (v109)
    {
      v108 = 0.0;
    }

    if (v108 < 0.0)
    {
      v108 = 0.0;
    }

    v272 = v108;
    v110 = v106;
    sub_115C60();

    v111 = v204;
    sub_115DF0();
    v112 = v260;
    v113 = *(v260 + 104);
    v114 = v247;
    LODWORD(v203) = enum case for RoundedCornerStyle.continuous(_:);
    v115 = v248;
    v229 = (v260 + 104);
    v202 = v113;
    v113(v247);
    v116 = v245;
    sub_115AE0();
    v117 = *(v112 + 8);
    v260 = v112 + 8;
    v201 = v117;
    v117(v114, v115);
    v118 = *(v258 + 8);
    v258 += 8;
    v200 = v118;
    v118(v111, v116);
    v119 = v262;
    sub_116D60();
    v120 = *(v211 + 40);
    v121 = v249;
    v122 = v264;
    v204 = (v211 + 40);
    v194 = v120;
    v120(v264);
    v206(v119, v122);
    LOBYTE(v111) = sub_64404(v110, v121, v107, AssociatedConformanceWitness);
    v123 = *(v261 + 8);
    v261 += 8;
    v193 = v123;
    v123(v121, v210);
    if (v111)
    {
      v124 = sub_5A754();
      swift_beginAccess();
      v125 = *(*v124 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnBUI25Color);
    }

    else
    {
      sub_116BC0();
      v125 = sub_116BA0();
    }

    sub_5B018(0, v125, &v272);
    v129 = v259;
    v130 = *&v272;
    v259 = v273;
    v230 = v274;

    v269 = v130;
    v270 = v259;
    v271 = v230;
    v267 = v116;
    v268 = &protocol witness table for BarMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v132 = v231;
    v133 = v246;
    v134 = v251;
    sub_115AF0();

    v135 = *(v129 + 8);
    *&v259 = v129 + 8;
    *&v230 = v135;
    v135(v134, v133);
    v269 = v250;
    v275._countAndFlagsBits = sub_1179B0();
    v269 = 0xD000000000000013;
    *&v270 = 0x8000000000136C60;
    sub_117220(v275);

    v269 = v133;
    *&v270 = &type metadata for LinearGradient;
    v251 = OpaqueTypeConformance2;
    *(&v270 + 1) = OpaqueTypeConformance2;
    *&v271 = &protocol witness table for LinearGradient;
    v136 = swift_getOpaqueTypeConformance2();
    v137 = v232;
    v138 = v235;
    sub_115B30();

    (*(v233 + 8))(v132, v138);
    v269 = v138;
    *&v270 = v136;
    swift_getOpaqueTypeConformance2();
    v139 = v236;
    sub_115B70();
    (*(v234 + 8))(v137, v139);
    v234 = sub_116370();
    v236 = v140;
    LODWORD(v233) = v141;
    v235 = v142;
    v143 = v253;
    sub_115700();
    v144 = v254;
    sub_115700();
    v145 = v252;
    result = sub_117130();
    if (result)
    {
      v146 = v242;
      v147 = v196;
      v196(v242, v143, v145);
      v148 = v244;
      v147(v146 + *(v244 + 48), v144, v145);
      v149 = v243;
      sub_479B4(v146, v243, &qword_185928, &unk_12A520);
      v150 = *(v148 + 48);
      v151 = v241;
      v147(v241, v149, v145);
      v152 = v195;
      v195(v149 + v150, v145);
      sub_548D0(v146, v149, &qword_185928, &unk_12A520);
      v147(v151 + *(v240 + 36), (v149 + *(v148 + 48)), v145);
      v152(v149, v145);
      sub_115C50();

      sub_488C8(v151, &qword_185930, &qword_12BDF0);
      sub_116370();
      v153 = AssociatedConformanceWitness;
      v154 = v212;
      v155 = v208;
      v156 = COERCE_DOUBLE((*(AssociatedConformanceWitness + 24))(v208, AssociatedConformanceWitness));
      if (v157)
      {
        v156 = 0.0;
      }

      if (v156 < 0.0)
      {
        v156 = 0.0;
      }

      v269 = *&v156;
      sub_115C60();

      v158 = v214;
      sub_115DF0();
      v159 = v247;
      v160 = v248;
      v202(v247, v203, v248);
      v161 = v245;
      sub_115AE0();
      v201(v159, v160);
      v200(v158, v161);
      v162 = v262;
      sub_116D60();
      v163 = v249;
      v164 = v264;
      v194(v264, v211);
      v206(v162, v164);
      LOBYTE(v164) = sub_64404(v154, v163, v155, v153);
      v193(v163, v210);
      if (v164)
      {
        v165 = sub_5A754();
        swift_beginAccess();
        v166 = *(*v165 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor);
      }

      else
      {
        sub_116BC0();
        v166 = sub_116BA0();
      }

      v128 = v265;
      v167 = v222;
      v168 = v221;
      v169 = v220;
      v269 = v166;
      v170 = v218;
      v171 = v246;
      v172 = v251;
      v173 = v237;
      sub_115AF0();

      (v230)(v173, v171);
      v269 = v250;
      v276._countAndFlagsBits = sub_1179B0();
      v269 = 0xD000000000000013;
      *&v270 = 0x8000000000136C80;
      sub_117220(v276);

      v269 = v171;
      *&v270 = &type metadata for Color;
      *(&v270 + 1) = v172;
      *&v271 = &protocol witness table for Color;
      v174 = swift_getOpaqueTypeConformance2();
      v175 = v219;
      sub_115B30();

      (*(v169 + 8))(v170, v167);
      v269 = v167;
      *&v270 = v174;
      swift_getOpaqueTypeConformance2();
      v176 = v239;
      v177 = v198;
      sub_115B70();
      (*(v168 + 8))(v175, v177);
      v178 = v216;
      v265 = *(v216 + 16);
      v179 = v238;
      v180 = v217;
      (v265)(v238, v255, v217);
      v181 = v224;
      v264 = *(v224 + 16);
      v182 = v223;
      v183 = v176;
      v184 = v225;
      v264(v223, v183, v225);
      v185 = v226;
      (v265)(v226, v179, v180);
      v186 = v228;
      v187 = *(v228 + 48);
      v264(&v185[v187], v182, v184);
      v188 = v227;
      (*(v178 + 32))(v227, v185, v180);
      (*(v181 + 32))(v188 + *(v186 + 48), &v185[v187], v184);
      v189 = *(v181 + 8);
      v189(v239, v184);
      v190 = *(v178 + 8);
      v190(v255, v180);
      v189(v182, v184);
      v190(v238, v180);
      v191 = v266;
      sub_10ABF4(v188, v266);
      v126 = 0;
      v11 = v199;
      v127 = v191;
      return (*(v128 + 56))(v127, v126, 1, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1059AC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_105A4C()
{
  v0 = sub_115C80();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_115BE0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_115C10();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_66C80();
  sub_115C00();
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_1874A0, &qword_12CF28);
  sub_10A8C8();
  return sub_115E90();
}

uint64_t sub_105BE0@<X0>(uint64_t a1@<X8>)
{
  v72 = sub_46F9C(&qword_1874C0, &unk_12CF38);
  v2 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v71 = &v56 - v3;
  v66 = sub_115A40();
  v65 = *(v66 - 8);
  v4 = *(v65 + 64);
  __chkstk_darwin(v66);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_46F9C(&qword_1843A0, &unk_128120);
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v70);
  v69 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = sub_115D00();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_115DA0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v60 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_46F9C(&qword_184390, &qword_128110);
  v62 = *(v63 - 8);
  v19 = *(v62 + 64);
  __chkstk_darwin(v63);
  v21 = &v56 - v20;
  v67 = sub_46F9C(&qword_184380, &qword_128108);
  v22 = *(v67 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v67);
  v25 = &v56 - v24;
  v26 = sub_46F9C(&qword_1874B8, &qword_12CF30);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v68 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v56 - v30;
  sub_115EB0();
  v73 = a1;
  if (BYTE8(v78))
  {
    v32 = 1;
  }

  else
  {
    v59 = v31;
    v33 = *&v78;
    v34 = sub_8D8B4()[8];
    v35 = [v34 stringFromTimeInterval:v33];
    if (v35)
    {
      v36 = v35;
      sub_1171B0();
      v57 = v21;

      v58 = &v56;
      __chkstk_darwin(v37);
      sub_115D90();
      sub_115CF0();
      v55[3] = &protocol witness table for Text;
      v55[1] = v55;
      v55[2] = &type metadata for Text;
      v55[0] = sub_8D334;
      v38 = v57;
      sub_115C30();

      v39 = v62;
      v40 = v63;
      (*(v62 + 32))(v25, v38, v63);
      v41 = 0;
    }

    else
    {

      v41 = 1;
      v40 = v63;
      v39 = v62;
    }

    (*(v39 + 56))(v25, v41, 1, v40);
    v31 = v59;
    sub_548D0(v25, v59, &qword_184380, &qword_128108);
    v32 = 0;
  }

  (*(v22 + 56))(v31, v32, 1, v67);
  sub_116010();
  v78 = v75;
  v79 = v76;
  v80 = v77;
  sub_115A30();
  v42 = sub_5A754();
  swift_beginAccess();
  v74 = *(*v42 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v43 = v66;
  sub_115E10();
  (*(v65 + 8))(v6, v43);
  v44 = v68;
  sub_479B4(v31, v68, &qword_1874B8, &qword_12CF30);
  v64 = v12;
  v45 = *(v7 + 16);
  v46 = v69;
  v47 = v31;
  v48 = v70;
  v45(v69, v12, v70);
  sub_10A3B8(&qword_1874B0, &qword_1874B8, &qword_12CF30, sub_8C9D0);
  v49 = v71;
  sub_479B4(v44, v71, &qword_1874B8, &qword_12CF30);
  v50 = v72;
  v51 = *(v72 + 48);
  v45((v49 + v51), v46, v48);
  v52 = v73;
  sub_548D0(v49, v73, &qword_1874B8, &qword_12CF30);
  (*(v7 + 32))(v52 + *(v50 + 48), v49 + v51, v48);
  v53 = *(v7 + 8);
  v53(v64, v48);
  sub_488C8(v47, &qword_1874B8, &qword_12CF30);
  v53(v46, v48);
  return sub_488C8(v44, &qword_1874B8, &qword_12CF30);
}

uint64_t sub_10642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v36 = a4;
  v4 = sub_115C80();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115BE0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DailyUsageTimeView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = sub_46F9C(&qword_1842B8, &qword_129030);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v31 - v16;
  v18 = sub_1158B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_115C10();
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  (*(v19 + 104))(v22, enum case for Calendar.Component.day(_:), v18, v25);
  v26 = sub_1158D0();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  sub_115BF0();
  sub_488C8(v17, &qword_1842B8, &qword_129030);
  (*(v19 + 8))(v22, v18);
  (*(v10 + 16))(v13, v34, v9);
  v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v29 = v33;
  *(v28 + 16) = v32;
  *(v28 + 24) = v29;
  (*(v10 + 32))(v28 + v27, v13, v9);
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_187390, &qword_12CE78);
  sub_10A3B8(&qword_187398, &qword_187390, &qword_12CE78, sub_109FFC);
  return sub_115E90();
}

uint64_t sub_106850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v253 = a4;
  v252 = a3;
  v254 = a2;
  v261 = a5;
  v217 = sub_46F9C(&qword_187450, &qword_12CED8);
  v6 = *(*(v217 - 8) + 64);
  __chkstk_darwin(v217);
  v216 = &v205 - v7;
  v8 = sub_46F9C(&qword_187448, &qword_12CED0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v218 = &v205 - v10;
  v11 = sub_46F9C(&qword_187438, &qword_12CEC8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v226 = &v205 - v13;
  v231 = sub_46F9C(&qword_187458, &qword_12CEE0);
  v14 = *(*(v231 - 8) + 64);
  __chkstk_darwin(v231);
  v230 = &v205 - v15;
  v16 = sub_46F9C(&qword_1873F8, &qword_12CEA8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v232 = &v205 - v18;
  v215 = sub_46F9C(&qword_187460, &qword_12CEE8);
  v19 = *(*(v215 - 8) + 64);
  __chkstk_darwin(v215);
  v213 = &v205 - v20;
  v228 = sub_46F9C(&qword_187428, &qword_12CEC0);
  v227 = *(v228 - 8);
  v21 = *(v227 + 64);
  __chkstk_darwin(v228);
  v214 = &v205 - v22;
  v212 = sub_115A40();
  v211 = *(v212 - 8);
  v23 = *(v211 + 64);
  __chkstk_darwin(v212);
  v225 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v224 = &v205 - v26;
  v27 = sub_46F9C(&qword_187418, &qword_12CEB8);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v229 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v233 = &v205 - v31;
  v236 = sub_46F9C(&qword_187408, &qword_12CEB0);
  v235 = *(v236 - 8);
  v32 = *(v235 + 64);
  __chkstk_darwin(v236);
  v223 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v234 = &v205 - v35;
  __chkstk_darwin(v36);
  v244 = &v205 - v37;
  v38 = sub_46F9C(&qword_1873B8, &qword_12CE88);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v247 = &v205 - v40;
  v241 = sub_46F9C(&qword_187468, &unk_12CEF0);
  v41 = *(*(v241 - 8) + 64);
  __chkstk_darwin(v241);
  v240 = &v205 - v42;
  v43 = sub_46F9C(&qword_1873C8, &qword_12CE90);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v242 = &v205 - v45;
  v250 = sub_115E40();
  v249 = *(v250 - 8);
  v46 = *(v249 + 64);
  __chkstk_darwin(v250);
  v222 = &v205 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v245 = &v205 - v49;
  v50 = sub_46F9C(&qword_1873E8, &qword_12CEA0);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v219 = &v205 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v220 = &v205 - v54;
  __chkstk_darwin(v55);
  v246 = &v205 - v56;
  __chkstk_darwin(v57);
  v243 = &v205 - v58;
  v59 = sub_115D00();
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8);
  v259 = &v205 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_115DA0();
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62 - 8);
  v251 = &v205 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_46F9C(&qword_1873D8, &qword_12CE98);
  v238 = *(v239 - 8);
  v65 = *(v238 + 64);
  __chkstk_darwin(v239);
  v221 = &v205 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v237 = &v205 - v68;
  __chkstk_darwin(v69);
  v248 = &v205 - v70;
  v71 = sub_46F9C(&qword_1873A8, &qword_12CE80);
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  __chkstk_darwin(v71);
  v255 = &v205 - v74;
  v258 = sub_1158B0();
  v75 = *(v258 - 8);
  v76 = *(v75 + 64);
  __chkstk_darwin(v258);
  v78 = &v205 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_1158D0();
  v256 = *(v257 - 8);
  v79 = *(v256 + 64);
  __chkstk_darwin(v257);
  v81 = &v205 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v83 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v205 - v84;
  v86 = sub_115760();
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  __chkstk_darwin(v86);
  v90 = &v205 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = a1;
  sub_115EB0();
  if ((*(v87 + 48))(v85, 1, v86) == 1)
  {
    sub_488C8(v85, &qword_182EF0, &unk_124BB0);
    return (*(v72 + 56))(v261, 1, 1, v71);
  }

  v210 = v72;
  v208 = v71;
  v92 = *(v87 + 32);
  v209 = v86;
  v92(v90, v85, v86);
  sub_1158A0();
  v93 = v258;
  (*(v75 + 104))(v78, enum case for Calendar.Component.day(_:), v258);
  v94 = sub_1158C0();
  (*(v75 + 8))(v78, v93);
  (*(v256 + 8))(v81, v257);
  v95 = sub_115ED0();
  v207 = v87;
  v206 = v90;
  if (!v95)
  {
    __chkstk_darwin(0);
    sub_115D90();
    sub_115CF0();
    v203 = sub_46F9C(&qword_187480, &qword_12CF10);
    v204 = sub_48800(&qword_187488, &qword_187480, &qword_12CF10);
    v201 = sub_10AC70;
    v202 = &v201;
    v134 = 1;
    sub_115C30();
    v135 = type metadata accessor for DailyUsageTimeView();
    v136 = v250;
    v137 = v249;
    if ((*(v254 + *(v135 + 36)) & 1) == 0)
    {
      v138 = sub_5A754();
      swift_beginAccess();
      v139 = *(**v138 + 560);

      v139(v140);

      v141 = *sub_8D6B4();
      sub_116010();
      v271 = v268;
      v272 = v269;
      v273 = v270;
      v142 = v245;
      sub_115E30();
      (*(v137 + 32))(v243, v142, v136);
      v134 = 0;
    }

    v143 = v243;
    (*(v137 + 56))(v243, v134, 1, v136);
    v144 = v238;
    v145 = *(v238 + 16);
    v146 = v237;
    v147 = v248;
    v148 = v239;
    v145(v237, v248, v239);
    v149 = v246;
    sub_479B4(v143, v246, &qword_1873E8, &qword_12CEA0);
    sub_48800(&qword_1873D0, &qword_1873D8, &qword_12CE98);
    v150 = v240;
    v145(v240, v146, v148);
    sub_10A224();
    v151 = v241;
    v152 = *(v241 + 48);
    sub_479B4(v149, &v150[v152], &qword_1873E8, &qword_12CEA0);
    v153 = v242;
    (*(v144 + 32))(v242, v150, v148);
    sub_548D0(&v150[v152], v153 + *(v151 + 48), &qword_1873E8, &qword_12CEA0);
    sub_488C8(v143, &qword_1873E8, &qword_12CEA0);
    v154 = *(v144 + 8);
    v154(v147, v148);
    sub_488C8(v149, &qword_1873E8, &qword_12CEA0);
    v154(v146, v148);
    v133 = v247;
    sub_548D0(v153, v247, &qword_1873C8, &qword_12CE90);
    sub_46F9C(&qword_187490, &qword_12CF18);
    goto LABEL_12;
  }

  v96 = sub_115ED0();
  result = sub_115EC0();
  if (!__OFSUB__(result, 1))
  {
    if (v96 != result - 1)
    {
      __chkstk_darwin(result);
      v203 = v90;
      sub_115D90();
      sub_115CF0();
      if (v94 == 1)
      {
        v203 = sub_46F9C(&qword_187480, &qword_12CF10);
        v204 = sub_48800(&qword_187488, &qword_187480, &qword_12CF10);
        v201 = sub_10A4F0;
        v202 = &v201;
        v156 = 1;
        sub_115C30();
        v157 = type metadata accessor for DailyUsageTimeView();
        v158 = v250;
        v159 = v249;
        if ((*(v254 + *(v157 + 36)) & 1) == 0)
        {
          v160 = sub_5A754();
          swift_beginAccess();
          v161 = *(**v160 + 560);

          v161(v162);

          v163 = *sub_8D6B4();
          sub_116010();
          v271 = v268;
          v272 = v269;
          v273 = v270;
          v164 = v245;
          sub_115E30();
          (*(v159 + 32))(v220, v164, v158);
          v156 = 0;
        }

        v165 = v220;
        (*(v159 + 56))(v220, v156, 1, v158);
        v166 = v238;
        v167 = *(v238 + 16);
        v168 = v237;
        v169 = v221;
        v170 = v239;
        v167(v237, v221, v239);
        v171 = v246;
        sub_479B4(v165, v246, &qword_1873E8, &qword_12CEA0);
        sub_48800(&qword_1873D0, &qword_1873D8, &qword_12CE98);
        v172 = v240;
        v167(v240, v168, v170);
        sub_10A224();
        v173 = v241;
        v174 = *(v241 + 48);
        sub_479B4(v171, &v172[v174], &qword_1873E8, &qword_12CEA0);
        v175 = v242;
        (*(v166 + 32))(v242, v172, v170);
        sub_548D0(&v172[v174], v175 + *(v173 + 48), &qword_1873E8, &qword_12CEA0);
        sub_488C8(v165, &qword_1873E8, &qword_12CEA0);
        v176 = *(v166 + 8);
        v176(v169, v170);
        sub_488C8(v171, &qword_1873E8, &qword_12CEA0);
        v176(v168, v170);
        v177 = v226;
        sub_548D0(v175, v226, &qword_1873C8, &qword_12CE90);
      }

      else
      {
        v203 = sub_46F9C(&qword_184328, &qword_1280D0);
        v204 = sub_8C768();
        v201 = sub_10AC6C;
        v202 = &v201;
        v178 = 1;
        sub_115C30();
        v179 = type metadata accessor for DailyUsageTimeView();
        v180 = v250;
        v181 = v249;
        if ((*(v254 + *(v179 + 36)) & 1) == 0)
        {
          v182 = sub_5A754();
          swift_beginAccess();
          v183 = *(**v182 + 560);

          v183(v184);

          v273 = 0;
          v271 = 0u;
          v272 = 0u;
          v185 = v245;
          sub_115E30();
          (*(v181 + 32))(v219, v185, v180);
          v178 = 0;
        }

        v186 = v219;
        (*(v181 + 56))(v219, v178, 1, v180);
        v187 = v235;
        v188 = *(v235 + 16);
        v189 = v234;
        v190 = v223;
        v191 = v236;
        v188(v234, v223, v236);
        v192 = v246;
        sub_479B4(v186, v246, &qword_1873E8, &qword_12CEA0);
        sub_48800(&qword_187400, &qword_187408, &qword_12CEB0);
        v193 = v216;
        v188(v216, v189, v191);
        sub_10A224();
        v194 = v217;
        v195 = *(v217 + 48);
        sub_479B4(v192, &v193[v195], &qword_1873E8, &qword_12CEA0);
        v196 = v218;
        (*(v187 + 32))(v218, v193, v191);
        sub_548D0(&v193[v195], v196 + *(v194 + 48), &qword_1873E8, &qword_12CEA0);
        sub_488C8(v186, &qword_1873E8, &qword_12CEA0);
        v197 = *(v187 + 8);
        v197(v190, v191);
        sub_488C8(v192, &qword_1873E8, &qword_12CEA0);
        v197(v189, v191);
        v177 = v226;
        sub_548D0(v196, v226, &qword_187448, &qword_12CED0);
      }

      v155 = v255;
      sub_46F9C(&qword_187470, &qword_12CF00);
      swift_storeEnumTagMultiPayload();
      sub_548D0(v177, v155, &qword_187438, &qword_12CEC8);
      goto LABEL_21;
    }

    __chkstk_darwin(result);
    sub_115D90();
    sub_115CF0();
    v203 = sub_46F9C(&qword_184328, &qword_1280D0);
    v204 = sub_8C768();
    v201 = sub_10A4F4;
    v202 = &v201;
    v97 = 1;
    sub_115C30();
    if ((*(v254 + *(type metadata accessor for DailyUsageTimeView() + 36)) & 1) == 0)
    {
      v98 = sub_8D6B4();
      v99 = *v98;
      sub_116010();
      v271 = v262;
      v272 = v263;
      v273 = v264;
      v100 = v224;
      sub_115A30();
      v101 = sub_5A754();
      swift_beginAccess();
      v102 = *(**v101 + 560);

      v102(v103);

      v104 = *v98;
      sub_116010();
      v268 = v265;
      v269 = v266;
      v270 = v267;
      v105 = v245;
      sub_115E30();
      v106 = v211;
      v107 = *(v211 + 16);
      v108 = v225;
      v109 = v212;
      v107(v225, v100, v212);
      v110 = v249;
      v111 = *(v249 + 16);
      v112 = v105;
      v113 = v250;
      v111(v222, v112, v250);
      v114 = v213;
      v107(v213, v108, v109);
      v115 = v215;
      v116 = *(v215 + 48);
      v117 = v222;
      v111(&v114[v116], v222, v113);
      v118 = v214;
      (*(v106 + 32))(v214, v114, v109);
      (*(v110 + 32))(v118 + *(v115 + 48), &v114[v116], v113);
      v119 = *(v110 + 8);
      v119(v245, v113);
      v120 = *(v106 + 8);
      v120(v224, v109);
      v119(v117, v113);
      v120(v225, v109);
      sub_548D0(v118, v233, &qword_187428, &qword_12CEC0);
      v97 = 0;
    }

    v121 = v233;
    (*(v227 + 56))(v233, v97, 1, v228);
    v122 = v235;
    v123 = *(v235 + 16);
    v124 = v234;
    v125 = v244;
    v126 = v236;
    v123(v234, v244, v236);
    v127 = v229;
    sub_479B4(v121, v229, &qword_187418, &qword_12CEB8);
    sub_48800(&qword_187400, &qword_187408, &qword_12CEB0);
    v128 = v230;
    v123(v230, v124, v126);
    sub_10A388();
    v129 = v231;
    v130 = *(v231 + 48);
    sub_479B4(v127, &v128[v130], &qword_187418, &qword_12CEB8);
    v131 = v232;
    (*(v122 + 32))(v232, v128, v126);
    sub_548D0(&v128[v130], v131 + *(v129 + 48), &qword_187418, &qword_12CEB8);
    sub_488C8(v121, &qword_187418, &qword_12CEB8);
    v132 = *(v122 + 8);
    v132(v125, v126);
    sub_488C8(v127, &qword_187418, &qword_12CEB8);
    v132(v124, v126);
    v133 = v247;
    sub_548D0(v131, v247, &qword_1873F8, &qword_12CEA8);
    sub_46F9C(&qword_187490, &qword_12CF18);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v155 = v255;
    sub_548D0(v133, v255, &qword_1873B8, &qword_12CE88);
LABEL_21:
    v198 = v261;
    v199 = v208;
    v200 = v210;
    sub_46F9C(&qword_187478, &qword_12CF08);
    swift_storeEnumTagMultiPayload();
    sub_548D0(v155, v198, &qword_1873A8, &qword_12CE80);
    (*(v200 + 56))(v198, 0, 1, v199);
    return (*(v207 + 8))(v206, v209);
  }

  __break(1u);
  return result;
}

uint64_t sub_108778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v24 = a1;
  v25 = a4;
  v26 = a5;
  v7 = type metadata accessor for DailyUsageTimeView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_115A20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v24, v12, v15);
  (*(v8 + 16))(v11, a2, v7);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = a3;
  *(v19 + 24) = v20;
  (*(v13 + 32))(v19 + v17, v16, v12);
  result = (*(v8 + 32))(v19 + v18, v11, v7);
  v22 = v26;
  *v26 = sub_109BE0;
  v22[1] = v19;
  return result;
}

uint64_t sub_1089B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_108778(a1, v8, v5, v6, a2);
}

uint64_t sub_108A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v30 = a4;
  v32 = a3;
  v28 = a1;
  v35 = a6;
  v34 = sub_116490();
  v36 = *(v34 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DailyUsageTimeView();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v29);
  v12 = &v28 - v11;
  v13 = sub_115A20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1159F0();
  type metadata accessor for CGRect(0);
  sub_1160A0();

  v17 = v46;
  v18 = v47;
  v19 = sub_116B50();
  sub_1167F0();
  *&v37 = v19;
  WORD4(v37) = 256;
  *(&v37 + 10) = v44;
  HIWORD(v37) = v45;
  v38 = v41;
  v39 = v42;
  v40 = v43;
  (*(v14 + 16))(v16, a2, v13);
  v20 = v29;
  (*(v9 + 16))(v12, v32, v29);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v30;
  *(v23 + 24) = v24;
  *(v23 + 32) = v17;
  *(v23 + 48) = v18;
  (*(v14 + 32))(v23 + v21, v16, v13);
  (*(v9 + 32))(v23 + v22, v12, v20);
  v25 = v33;
  sub_1164F0();
  sub_46F9C(&qword_184280, &unk_128080);
  sub_8BF50();
  v26 = v34;
  sub_116A10();

  (*(v36 + 8))(v25, v26);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  return sub_488C8(&v46, &qword_184280, &unk_128080);
}

void sub_108EB0(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(*(a8 - 8) + 64);
  __chkstk_darwin(a1);
  v17 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v31 - v19;
  v21 = sub_115760();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v31 - v27;
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  MaxX = CGRectGetMaxX(v33);
  if (MinX > MaxX)
  {
    __break(1u);
  }

  else if (MinX <= a2 && MaxX > a2)
  {
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMinX(v34);
    sub_115A00();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_488C8(v20, &qword_182EF0, &unk_124BB0);
    }

    else
    {
      (*(v22 + 32))(v28, v20, v21);
      (*(v22 + 16))(v25, v28, v21);
      sub_116DC0();
      sub_116D60();
      (*(*(a9 + 8) + 56))(v25, a8);
      sub_116D70();
      (*(v22 + 8))(v28, v21);
    }
  }
}

uint64_t sub_1091FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_109238(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_116DC0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1092B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_109440(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_10969C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1173A0();
  sub_47A1C(&qword_187350, &qword_12CD58);
  swift_getWitnessTable();
  sub_116E30();
  sub_103558();
  swift_getWitnessTable();
  sub_115DD0();
  sub_47A1C(&qword_184160, &unk_127D70);
  swift_getWitnessTable();
  sub_7DDE8();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_187370, &unk_12CD78);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_187378, &qword_187370, &unk_12CD78);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_187380, &qword_12CD88);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_187388, &qword_187380, &qword_12CD88);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_185150, &qword_12CD90);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_185160, &qword_185150, &qword_12CD90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_109A60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  v10 = *(v0 + v8);

  v11 = *(v0 + v8 + 8);

  v12 = sub_116DC0();
  (*(*(v1 - 8) + 8))(v0 + v8 + *(v12 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_109BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_115A20() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v11 = v2 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_108A4C(a1, v2 + v8, v11, v5, v6, a2);
}

uint64_t sub_109CE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  v10 = *(v0 + v8);

  v11 = *(v0 + v8 + 8);

  v12 = sub_116DC0();
  (*(*(v1 - 8) + 8))(v0 + v8 + *(v12 + 32), v1);

  return swift_deallocObject();
}

void sub_109E60(double a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(sub_115A20() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_108EB0(v1 + v6, a1, v9, v10, v11, v12, v13, v3, v4);
}

uint64_t sub_109F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_106850(a1, v8, v5, v6, a2);
}

unint64_t sub_109FFC()
{
  result = qword_1873A0;
  if (!qword_1873A0)
  {
    sub_47A1C(&qword_1873A8, &qword_12CE80);
    sub_10A0E0(&qword_1873B0, &qword_1873B8, &qword_12CE88, sub_10A2A0);
    sub_10A0E0(&qword_187430, &qword_187438, &qword_12CEC8, sub_10A4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1873A0);
  }

  return result;
}

uint64_t sub_10A0E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    sub_10A164();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10A164()
{
  result = qword_1873C0;
  if (!qword_1873C0)
  {
    sub_47A1C(&qword_1873C8, &qword_12CE90);
    sub_48800(&qword_1873D0, &qword_1873D8, &qword_12CE98);
    sub_10A224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1873C0);
  }

  return result;
}

unint64_t sub_10A224()
{
  result = qword_1873E0;
  if (!qword_1873E0)
  {
    sub_47A1C(&qword_1873E8, &qword_12CEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1873E0);
  }

  return result;
}

uint64_t sub_10A2D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    sub_48800(&qword_187400, &qword_187408, &qword_12CEB0);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10A3B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10A434()
{
  result = qword_187420;
  if (!qword_187420)
  {
    sub_47A1C(&qword_187428, &qword_12CEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187420);
  }

  return result;
}

uint64_t sub_10A4F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_8D8B4()[3];
  isa = sub_1156B0().super.isa;
  v6 = [v4 stringFromDate:isa];

  sub_1171B0();
  sub_4869C();
  result = sub_116900();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = 257;
  return result;
}

double sub_10A5B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v35 = sub_1163E0();
  v41 = 1;
  v4 = sub_8D8B4();
  v5 = v4[3];
  isa = sub_1156B0().super.isa;
  v7 = [v5 stringFromDate:isa];

  v8 = sub_1171B0();
  v10 = v9;

  *v40 = v8;
  *&v40[8] = v10;
  sub_4869C();
  v11 = sub_116900();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v4[5];
  v19 = sub_1156B0().super.isa;
  v20 = [v18 stringFromDate:v19];

  v21 = sub_1171B0();
  v23 = v22;

  *v40 = v21;
  *&v40[8] = v23;
  v24 = sub_116900();
  v26 = v25;
  v28 = v27;
  v40[0] = v15 & 1;
  LOBYTE(v20) = v29 & 1;
  v34 = v29 & 1;
  sub_488B8(v11, v13, v15 & 1);

  sub_488B8(v24, v26, v20);

  sub_48928(v24, v26, v20);

  sub_48928(v11, v13, v15 & 1);

  *(&v43 + 1) = *v39;
  DWORD1(v43) = *&v39[3];
  *(&v44 + 2) = v37;
  WORD3(v44) = v38;
  *&v45[12] = *&v36[3];
  *&v45[9] = *v36;
  *&v42 = v11;
  *(&v42 + 1) = v13;
  LOBYTE(v43) = v15 & 1;
  *(&v43 + 1) = v17;
  v46[0] = v11;
  v46[1] = v13;
  LOWORD(v44) = 257;
  *(&v44 + 1) = v24;
  *v45 = v26;
  v45[8] = v34;
  *&v45[16] = v28;
  *&v45[24] = 257;
  v47 = v15 & 1;
  *v48 = *v39;
  *&v48[3] = *&v39[3];
  v49 = v17;
  v50 = 257;
  v52 = v38;
  v51 = v37;
  v53 = v24;
  v54 = v26;
  v55 = v34;
  *&v56[3] = *&v36[3];
  *v56 = *v36;
  v57 = v28;
  v58 = 257;
  sub_479B4(&v42, v40, &qword_187498, &qword_12CF20);
  sub_488C8(v46, &qword_187498, &qword_12CF20);
  *&v40[65] = *&v45[10];
  *&v40[55] = *v45;
  *&v40[39] = v44;
  *&v40[23] = v43;
  *&v40[7] = v42;
  v30 = *&v40[48];
  *(a1 + 49) = *&v40[32];
  *(a1 + 65) = v30;
  *(a1 + 81) = *&v40[64];
  result = *&v40[16];
  v32 = *v40;
  *(a1 + 33) = *&v40[16];
  v33 = v41;
  *a1 = v35;
  *(a1 + 8) = 0;
  *(a1 + 16) = v33;
  *(a1 + 97) = v40[80];
  *(a1 + 17) = v32;
  return result;
}

unint64_t sub_10A8C8()
{
  result = qword_1874A8;
  if (!qword_1874A8)
  {
    sub_47A1C(&qword_1874A0, &qword_12CF28);
    sub_10A3B8(&qword_1874B0, &qword_1874B8, &qword_12CF30, sub_8C9D0);
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1874A8);
  }

  return result;
}

uint64_t sub_10A9CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v4 = *(v3 + 64);
  v5 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = sub_116DC0();
  (*(*(v2 - 8) + 8))(&v5[*(v8 + 32)], v2);

  return swift_deallocObject();
}

uint64_t sub_10AAC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for DailyUsageTimeView() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_103D34(a1, a2, v10, v7, v8, a3);
}

uint64_t sub_10AB68()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10ABA0(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1059AC(a1, *(v1 + 32));
}

uint64_t sub_10ABAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10ABF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_187368, &unk_12CD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BUIChartIconMark()
{
  result = qword_191860;
  if (!qword_191860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10ACC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BUIChartIconMark();
  v9 = v8[6];
  v10 = sub_5A754();
  swift_beginAccess();
  *(a4 + v9) = *v10;
  sub_10AD60(a1, a4);
  *(a4 + v8[7]) = a2;
  *(a4 + v8[5]) = a3;
}

uint64_t sub_10AD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10ADC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1874E0, &qword_12CF80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v110 = &v82 - v6;
  v7 = sub_46F9C(&qword_1874E8, &unk_12CF88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v82 - v10;
  v12 = sub_115760();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_46F9C(&qword_1843C8, &qword_128140);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v107 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v113 = sub_115EF0();
  v118 = *(v113 - 8);
  v20 = *(v118 + 64);
  __chkstk_darwin(v113);
  v106 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  v111 = sub_46F9C(&qword_1874F0, &qword_12CF98);
  v116 = *(v111 - 8);
  v25 = *(v116 + 64);
  __chkstk_darwin(v111);
  v104 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v100 = &v82 - v28;
  v105 = sub_46F9C(&qword_1874F8, &qword_12CFA0);
  v115 = *(v105 - 8);
  v29 = *(v115 + 64);
  __chkstk_darwin(v105);
  v102 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v101 = &v82 - v32;
  v99 = sub_46F9C(&qword_187500, &qword_12CFA8);
  v109 = *(v99 - 8);
  v33 = *(v109 + 64);
  __chkstk_darwin(v99);
  v108 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v82 - v36;
  __chkstk_darwin(v37);
  v103 = &v82 - v38;
  __chkstk_darwin(v39);
  v114 = &v82 - v40;
  sub_10BB5C(v2, &v120);
  if (*(&v121 + 1))
  {
    v91 = v24;
    v94 = v11;
    v95 = v4;
    v96 = v8;
    v97 = v7;
    v98 = a1;
    v128[0] = v120;
    v128[1] = v121;
    v129 = v122;
    v126[0] = v123;
    v126[1] = v124;
    v127 = v125;
    v41 = type metadata accessor for BUIChartIconMark();
    (*(**(v2 + *(v41 + 28)) + 384))();
    v87 = sub_116BE0();
    sub_116370();
    sub_D35C0();
    sub_115C60();

    v42 = v117 + 8;
    v90 = *(v117 + 8);
    v90(v15, v12);
    LOBYTE(v120) = 1;
    v89 = sub_5822C();
    v43 = sub_F59F0(&type metadata for PerfPowerServices, v89);
    v92 = v41;
    v44 = *(v2 + *(v41 + 24));
    v117 = v42;
    v93 = v15;
    v88 = v44;
    if (v43)
    {
      v45 = -*(v44 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset);
    }

    else
    {
      v47 = *(v44 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) + *(v44 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset);
    }

    v48 = v91;
    v83 = v12;
    sub_115EE0();
    v49 = sub_10BCF4();
    v50 = v100;
    v51 = v113;
    sub_115B60();
    v52 = *(v118 + 8);
    v118 += 8;
    v86 = v52;
    v52(v48, v51);
    v119 = v87;
    *&v120 = v51;
    *(&v120 + 1) = &type metadata for AnyChartSymbolShape;
    *&v121 = &protocol witness table for PointMark;
    *(&v121 + 1) = v49;
    v91 = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = v101;
    v55 = v111;
    sub_115AF0();
    v56 = *(v116 + 8);
    v116 += 8;
    v85 = v56;
    v56(v50, v55);
    sub_D3670();
    *&v120 = v55;
    *(&v120 + 1) = &type metadata for Color;
    v100 = OpaqueTypeConformance2;
    *&v121 = OpaqueTypeConformance2;
    *(&v121 + 1) = &protocol witness table for Color;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v105;
    v84 = v57;
    sub_115B30();

    v59 = *(v115 + 8);
    v115 += 8;
    v87 = v59;
    v59(v54, v58);
    v92 = *(v2 + *(v92 + 20));
    sub_116370();
    v60 = v93;
    v101 = v2;
    sub_D35C0();
    v61 = v83;
    sub_115C60();

    v90(v60, v61);
    LOBYTE(v120) = 1;
    if (sub_F59F0(&type metadata for PerfPowerServices, v89))
    {
      v62 = v99;
      v63 = -*(v88 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset);
    }

    else
    {
      v62 = v99;
      v64 = *(v88 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) + *(v88 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset);
    }

    v65 = v106;
    sub_115EE0();
    v66 = v104;
    v67 = v113;
    sub_115B60();
    v86(v65, v67);
    *&v120 = v92;
    v68 = v102;
    v69 = v111;
    sub_115AF0();
    v85(v66, v69);
    sub_D3670();
    v70 = v103;
    sub_115B30();

    v87(v68, v58);
    v71 = v109;
    v72 = *(v109 + 16);
    v73 = v112;
    v72(v112, v114, v62);
    v74 = v108;
    v72(v108, v70, v62);
    v75 = v110;
    v72(v110, v73, v62);
    v76 = v95;
    v77 = *(v95 + 48);
    v72(&v75[v77], v74, v62);
    v78 = *(v71 + 32);
    v79 = v94;
    v78(v94, v75, v62);
    v78((v79 + *(v76 + 48)), &v75[v77], v62);
    v80 = *(v71 + 8);
    v80(v70, v62);
    v80(v114, v62);
    sub_10BD48(v126);
    sub_10BD48(v128);
    v80(v74, v62);
    v80(v112, v62);
    v81 = v98;
    sub_10BD9C(v79, v98);
    return (*(v96 + 56))(v81, 0, 1, v97);
  }

  else
  {
    sub_10BC8C(&v120);
    return (*(v8 + 56))(a1, 1, 1, v7);
  }
}

double sub_10BB5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if (*(a1 + *(v4 + 24)))
  {
    if (*(a1 + *(v4 + 24)) == 1)
    {
      nullsub_4(v4);
      *(&v10 + 1) = &type metadata for PauseSymbol;
      v11 = sub_10BEB4();
      v5 = sub_115CE0();
      nullsub_4(v5);
      sub_10BF08();
    }

    else
    {
      nullsub_4(v4);
      *(&v10 + 1) = &type metadata for StopSymbol;
      v11 = sub_10BE0C();
      v7 = sub_115CE0();
      nullsub_4(v7);
      sub_10BE60();
    }
  }

  else
  {
    nullsub_4(v4);
    *(&v10 + 1) = &type metadata for BoltSymbol;
    v11 = sub_10BF5C();
    v6 = sub_115CE0();
    nullsub_4(v6);
    sub_10BFB0();
  }

  sub_115CE0();
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  result = *&v9;
  *(a2 + 40) = v9;
  *(a2 + 56) = v10;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_10BC8C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_187508, &qword_12CFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10BCF4()
{
  result = qword_187510;
  if (!qword_187510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187510);
  }

  return result;
}

uint64_t sub_10BD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1874E8, &unk_12CF88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10BE0C()
{
  result = qword_187518;
  if (!qword_187518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187518);
  }

  return result;
}

unint64_t sub_10BE60()
{
  result = qword_187520;
  if (!qword_187520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187520);
  }

  return result;
}

unint64_t sub_10BEB4()
{
  result = qword_187528;
  if (!qword_187528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187528);
  }

  return result;
}

unint64_t sub_10BF08()
{
  result = qword_187530;
  if (!qword_187530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187530);
  }

  return result;
}

unint64_t sub_10BF5C()
{
  result = qword_187538;
  if (!qword_187538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187538);
  }

  return result;
}

unint64_t sub_10BFB0()
{
  result = qword_187540;
  if (!qword_187540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187540);
  }

  return result;
}

uint64_t sub_10C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_10C134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10C1EC()
{
  result = type metadata accessor for BUIChartViewData.ChargingIntervalElement(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BUIChartViewConfig();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BUIChartViewModel();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10C294()
{
  result = qword_1875D0;
  if (!qword_1875D0)
  {
    sub_47A1C(&qword_1875D8, &qword_12D038);
    sub_10C318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1875D0);
  }

  return result;
}

unint64_t sub_10C318()
{
  result = qword_1875E0;
  if (!qword_1875E0)
  {
    sub_47A1C(&qword_1874E8, &unk_12CF88);
    sub_47A1C(&qword_1874F8, &qword_12CFA0);
    sub_47A1C(&qword_1874F0, &qword_12CF98);
    sub_115EF0();
    sub_10BCF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1875E0);
  }

  return result;
}

uint64_t sub_10C49C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "BATTERY_HEALTH_TITLE";
  v4 = 0xD00000000000001BLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v2 == 1)
  {
    v6 = "BATTERY_HEALTH_TITLE";
  }

  else
  {
    v6 = "CHARGING_OPTIONS_IDENTIFIER";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "DailyUsageTimeBarBG";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "CHARGING_OPTIONS_IDENTIFIER";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "DailyUsageTimeBarBG";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1179E0();
  }

  return v11 & 1;
}

Swift::Int sub_10C574()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_10C610()
{
  *v0;
  *v0;
  sub_117200();
}

Swift::Int sub_10C698()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_10C730@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D9B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10C760(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "BATTERY_HEALTH_TITLE";
  v4 = 0xD00000000000001BLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "CHARGING_OPTIONS_IDENTIFIER";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "DailyUsageTimeBarBG";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void sub_10C7CC(uint64_t a1)
{
  v2 = sub_115990();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_115970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_54960(0, &qword_1876E0, &off_161D10);
  v9 = [objc_allocWithZone(PSSpecifier) init];
  [v9 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_115980();
  sub_115960();
  v10 = sub_117170();
  v11 = BatteryUILocalization(v10);

  if (v11)
  {
    v12 = sub_1171B0();
    v14 = v13;

    v15[0] = v12;
    v15[1] = v14;
    sub_10D8C4(&qword_1875F8, &type metadata accessor for PreferencesControllerView);
    sub_4869C();
    sub_116A40();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10CA14()
{

  return swift_deallocObject();
}

uint64_t sub_10CA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_115990();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_116110();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_46F9C(&qword_1876A8, &qword_12D128) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_1154E0();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = sub_115650();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();
  sub_1173F0();
  v3[19] = sub_1173E0();
  v18 = sub_1173D0();

  return _swift_task_switch(sub_10CCA4, v18, v17);
}

uint64_t sub_10CCA4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[3];

  sub_117010();
  sub_1154C0();
  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = v0[18];
  v9 = v0[3];
  if (v7 == 1)
  {
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[2];
    sub_10D694(v0[12]);
    v14 = swift_task_alloc();
    *(v14 + 16) = v8;
    sub_A7800(sub_10D6FC, v14);

    sub_117000();
    sub_117020();
    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v15 = v0[10];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_117000();
    result = sub_115610();
    v17 = result;
    v18 = 0;
    v19 = *(result + 16);
    v20 = result + 40;
    v21 = _swiftEmptyArrayStorage;
LABEL_4:
    v22 = (v20 + 16 * v18);
    while (v19 != v18)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v23 = v22 + 2;
      ++v18;
      v24 = *(v22 - 1);
      v25 = *v22;

      v26._rawValue = &off_16A180;
      v69._countAndFlagsBits = v24;
      v69._object = v25;
      v27 = sub_117890(v26, v69);

      v22 = v23;
      if (v27 < 3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10D7D0(0, *(v21 + 2) + 1, 1, v21);
          v21 = result;
        }

        v29 = *(v21 + 2);
        v28 = *(v21 + 3);
        if (v29 >= v28 >> 1)
        {
          result = sub_10D7D0((v28 > 1), v29 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v29 + 1;
        v21[v29 + 32] = v27;
        goto LABEL_4;
      }
    }

    v30 = *(v21 + 2);
    if (v30)
    {
      v31 = 0;
      v32 = (v0[6] + 8);
      v67 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
      while (v31 < *(v21 + 2))
      {
        v36 = v21[v31 + 32];
        v37 = [objc_allocWithZone(PSSpecifier) init];
        v38 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
        [v37 setProperty:v38 forKey:v67];
        if (v36)
        {
          if (v36 == 1)
          {
            result = MobileGestalt_get_current_device();
            if (!result)
            {
              goto LABEL_40;
            }

            v39 = result;
            deviceClassNumber = MobileGestalt_get_deviceClassNumber();

            if (deviceClassNumber == 3)
            {
              goto LABEL_32;
            }

            v41 = &unk_1876C0;
            v42 = off_161CF8;
          }

          else
          {
            result = MobileGestalt_get_current_device();
            if (!result)
            {
              goto LABEL_39;
            }

            v43 = result;
            v44 = MobileGestalt_get_deviceClassNumber();

            if (v44 == 3)
            {
LABEL_32:

              goto LABEL_33;
            }

            v41 = &unk_1876B0;
            v42 = off_161D08;
          }
        }

        else
        {
          v41 = &unk_1876C8;
          v42 = off_161D00;
        }

        sub_54960(0, v41, v42);
        v45 = v0[7];
        v46 = v37;
        sub_115980();
        if (v31 == *(v21 + 2) - 1)
        {
          v47 = v0[15];
          sub_1154D0();
          if (v48)
          {
            v49 = sub_117170();

            [v38 setSpecifierIdentifierToScrollAndHighlight:v49];
          }
        }

        ++v31;
        v33 = v0[10];
        v34 = v0[7];
        v35 = v0[5];
        sub_10D8C4(&qword_1876B8, &type metadata accessor for PreferencesControllerRecipe);
        sub_116100();

        result = (*v32)(v34, v35);
        if (v30 == v31)
        {

          goto LABEL_33;
        }
      }

      goto LABEL_38;
    }

    v50 = v0[15];

    sub_1154D0();
    if (v51)
    {
      v52 = v0[4];
      v53 = sub_117170();

      [v52 setSpecifierIdentifierToScrollAndHighlight:v53];
    }

LABEL_33:
    v55 = v0[14];
    v54 = v0[15];
    v56 = v0[13];
    v58 = v0[9];
    v57 = v0[10];
    v59 = v0[8];
    v60 = v0[2];
    sub_117020();
    (*(v58 + 8))(v57, v59);
    (*(v55 + 8))(v54, v56);
  }

  v61 = v0[15];
  v63 = v0[11];
  v62 = v0[12];
  v64 = v0[10];
  v65 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v66 = v0[1];

  return v66();
}

unint64_t sub_10D22C()
{
  result = qword_187608;
  if (!qword_187608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187608);
  }

  return result;
}

uint64_t sub_10D29C()
{
  v1 = sub_46F9C(&qword_1875E8, &qword_12D040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_46F9C(&qword_1875F0, &qword_12D048);
  v8 = sub_115970();
  v9 = sub_10D8C4(&qword_1875F8, &type metadata accessor for PreferencesControllerView);
  v10 = sub_4869C();
  v13[0] = v8;
  v13[1] = &type metadata for String;
  v13[2] = v9;
  v13[3] = v10;
  swift_getOpaqueTypeConformance2();
  sub_117030();
  *(swift_allocObject() + 16) = v7;
  sub_48800(&qword_187600, &qword_1875E8, &qword_12D040);
  v11 = v7;
  sub_116FF0();
  return (*(v2 + 8))(v5, v1);
}

id sub_10D4DC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_10D54C()
{
  sub_47A1C(&qword_1875E8, &qword_12D040);
  sub_48800(&qword_187600, &qword_1875E8, &qword_12D040);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10D5E4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5447C;

  return sub_10CA54(a1, a2, v6);
}

uint64_t sub_10D694(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1876A8, &qword_12D128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10D6FC()
{
  v1 = *(v0 + 16);
  sub_117710(55);
  v3._object = 0x8000000000136D40;
  v3._countAndFlagsBits = 0xD000000000000035;
  sub_117220(v3);
  sub_115650();
  sub_10D8C4(&qword_1876D8, &type metadata accessor for URL);
  v4._countAndFlagsBits = sub_1179B0();
  sub_117220(v4);

  return 0;
}

char *sub_10D7D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_1876D0, &unk_12D130);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10D8C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10D964()
{
  result = qword_191A70[0];
  if (!qword_191A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_191A70);
  }

  return result;
}

uint64_t sub_10D9B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_16A0F0;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for LastChargeInfoResponse()
{
  result = qword_191B80;
  if (!qword_191B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10DA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10DACC()
{
  v0 = swift_allocObject();
  sub_10DB04();
  return v0;
}

void *sub_10DB04()
{
  v10[0] = sub_117530();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_117520();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_116FE0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v0[3] = [objc_opt_self() weakObjectsHashTable];
  sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
  sub_116FD0();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10DD68();
  sub_46F9C(&qword_187700, &qword_12D238);
  sub_10DDC0();
  sub_117680();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10[0]);
  v0[4] = sub_117560();
  v0[2] = [objc_allocWithZone(PLBatteryUIBackendModel) init];
  sub_10DE24();
  return v0;
}

unint64_t sub_10DD68()
{
  result = qword_1876F8;
  if (!qword_1876F8)
  {
    sub_117520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1876F8);
  }

  return result;
}

unint64_t sub_10DDC0()
{
  result = qword_187708;
  if (!qword_187708)
  {
    sub_47A1C(&qword_187700, &qword_12D238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187708);
  }

  return result;
}

void sub_10DE24()
{
  v1 = v0;
  out_token = 0;
  sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
  v2 = sub_117540();
  v3 = swift_allocObject();
  swift_weakInit();
  v14 = sub_10E0AC;
  v15 = v3;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10E228;
  v13 = &unk_16A318;
  v4 = _Block_copy(&aBlock);

  notify_register_dispatch("com.apple.system.powersources.source", &out_token, v2, v4);
  _Block_release(v4);

  v9 = 0;
  v5 = sub_117540();
  v6 = swift_allocObject();
  swift_weakInit();
  v14 = sub_10E294;
  v15 = v6;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10E228;
  v13 = &unk_16A340;
  v7 = _Block_copy(&aBlock);

  notify_register_dispatch("com.apple.system.powersources.percent", &v9, v5, v7);
  _Block_release(v7);

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v1 selector:"handleLPMChangedForAllObserversWithSelector:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

uint64_t sub_10E074()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10E0AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = [*(Strong + 24) allObjects];
    v2 = sub_117310();

    if (v2 >> 62)
    {
      v3 = sub_117840();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_4:
        if (v3 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = sub_117730();
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          swift_getObjectType();
          v6 = swift_conformsToProtocol2();
          if (v6)
          {
            if (v5)
            {
              v7 = v6;
              ObjectType = swift_getObjectType();
              (*(v7 + 8))(ObjectType, v7);
            }
          }

          swift_unknownObjectRelease_n();
        }
      }
    }
  }
}

uint64_t sub_10E228(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10E27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10E294()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = [*(Strong + 24) allObjects];
    v2 = sub_117310();

    if (v2 >> 62)
    {
      v3 = sub_117840();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v3)
      {
LABEL_4:
        if (v3 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = sub_117730();
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          swift_getObjectType();
          v6 = swift_conformsToProtocol2();
          if (v6)
          {
            if (v5)
            {
              v7 = v6;
              ObjectType = swift_getObjectType();
              (*(v7 + 16))(ObjectType, v7);
            }
          }

          swift_unknownObjectRelease_n();
        }
      }
    }
  }
}

uint64_t sub_10E44C@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v2 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_115760();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v39 = 0;
  v10 = *(v1 + 32);
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = 0x40F5180000000000;
  v11[4] = &v39;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10F008;
  *(v12 + 24) = v11;
  aBlock[4] = sub_AA5C4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10EBE4;
  aBlock[3] = &unk_16A3B8;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v16 = v39;
    if (v39)
    {
      __chkstk_darwin(result);
      *(&v32 - 2) = v16;

      sub_A77E8(sub_10F090, (&v32 - 4));
      v35 = 0xD000000000000018;
      v36 = 0x8000000000134510;
      sub_1176C0();
      if (*(v16 + 16) && (v17 = sub_10ED78(aBlock), (v18 & 1) != 0))
      {
        sub_6AD00(*(v16 + 56) + 32 * v17, v37);
        sub_10F12C(aBlock);

        sub_46F9C(&qword_187710, &qword_12D240);
        if (swift_dynamicCast())
        {
          v19 = v35;
          v35 = 0xD000000000000013;
          v36 = 0x8000000000134000;
          sub_1176C0();
          if (v19[2] && (v20 = sub_10ED78(aBlock), (v21 & 1) != 0))
          {
            sub_6AD00(v19[7] + 32 * v20, v37);
            sub_10F12C(aBlock);
            sub_54960(0, &qword_1831C0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v22 = v35;
              [v35 doubleValue];
              v24 = v23;

              goto LABEL_15;
            }
          }

          else
          {
            sub_10F12C(aBlock);
          }

          v24 = 0;
LABEL_15:
          v35 = 0xD000000000000017;
          v36 = 0x8000000000134020;
          sub_1176C0();
          if (v19[2] && (v26 = sub_10ED78(aBlock), (v27 & 1) != 0))
          {
            sub_6AD00(v19[7] + 32 * v26, v37);
            sub_10F12C(aBlock);

            sub_54960(0, &qword_1831C0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v28 = v35;
              [v35 doubleValue];
              v29 = v33;
              sub_115700();

              sub_10F028(v7);
              v9(v29, 0, 1, v8);
              sub_10DA5C(v29, v7);
            }
          }

          else
          {

            sub_10F12C(aBlock);
          }

          ChargeInfoResponse = type metadata accessor for LastChargeInfoResponse();
          v31 = v34;
          sub_10DA5C(v7, v34 + *(ChargeInfoResponse + 20));
          *v31 = v24;
          (*(*(ChargeInfoResponse - 8) + 56))(v31, 0, 1, ChargeInfoResponse);
          goto LABEL_12;
        }
      }

      else
      {

        sub_10F12C(aBlock);
      }
    }

    sub_10F028(v7);
    v25 = type metadata accessor for LastChargeInfoResponse();
    (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
LABEL_12:
  }

  __break(1u);
  return result;
}

uint64_t sub_10EA14(uint64_t a1, uint64_t *a2, double a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v9 = __chkstk_darwin(v6).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  [v12 resetQuery];
  [v12 addSkipPlistWriteKey];
  v13 = [v12 endOfHour];
  if (v13)
  {
    v14 = v13;
    sub_115730();

    v15.super.isa = sub_1156B0().super.isa;
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    v15.super.isa = 0;
  }

  [v12 runQuery];
  v16 = [v12 queryResult];
  if (v16)
  {
    v17 = v16;
    v18 = sub_117070();
  }

  else
  {
    v18 = 0;
  }

  v19 = *a2;
  *a2 = v18;
}

uint64_t sub_10EC0C()
{

  return swift_deallocClassInstance();
}

id sub_10ECFC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isLowPowerModeEnabled];

  return v1;
}

unint64_t sub_10ED78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1176A0(*(v2 + 40));

  return sub_10EDBC(a1, v4);
}

unint64_t sub_10EDBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10F354(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1176B0();
      sub_10F12C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_10EE84()
{
  v1 = [*(v0 + 24) allObjects];
  v2 = sub_117310();

  if (v2 >> 62)
  {
    v3 = sub_117840();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_117730();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRetain();
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6 && v5)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(ObjectType, v7);
    }

    swift_unknownObjectRelease_n();
  }

LABEL_13:
}

uint64_t sub_10EFD0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10F028(uint64_t a1)
{
  v2 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10F090()
{
  v1 = *(v0 + 16);
  sub_117710(42);

  v3._countAndFlagsBits = sub_117080();
  sub_117220(v3);

  return 0xD000000000000028;
}

uint64_t sub_10F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10F2B4()
{
  sub_6A2B0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10F718(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error querying if type %hd is actionable: %@", v3, 0x12u);
}

void sub_10F7B4(NSObject *a1)
{
  objc_opt_class();
  sub_CB48();
  v3 = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "err: failed to init %@", v4, 0xCu);
}

void sub_10F850()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10F88C(void *a1)
{
  [a1 count];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "populated last10 with %lu items", v3, v4, v5, v6, v7);
}

void sub_10F904()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10F974()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10F9E4()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FAD8(void *a1)
{
  [a1 count];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Got %lu 10d UISoC", v3, v4, v5, v6, v7);
}

void sub_10FB50(void *a1)
{
  [a1 count];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Got %lu 10d usage times", v3, v4, v5, v6, v7);
}

void sub_10FBC8()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FC38()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FC74()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FCB0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FCEC()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FD5C()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FDCC()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10FE08(void *a1)
{
  [a1 smartChargingState];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Smart charging state: %lu", v3, v4, v5, v6, v7);
}

void sub_10FE80()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FEF0()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FF60()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10FFD0()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_110040()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1100B0()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_110120()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_110190()
{
  sub_CB8C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_110274()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1102B0()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1102EC()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_110328()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1105CC()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_11063C()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1107C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2048;
  v5 = qword_182B28;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "defaultL0bThreshold value is %@. Returned value with 15 percent padding added is O %f", &v2, 0x16u);
}

void sub_110B54(void *a1)
{
  [a1 section];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_110BD4(void *a1)
{
  [a1 row];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_110FE0(void *a1)
{
  [a1 manualChargingState];
  [a1 smartChargingState];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_111124(uint64_t *a1)
{
  v6 = *a1;
  sub_CB54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_111204(int a1, uint64_t a2)
{
  v2 = *(a2 + a1);
  sub_23A50();
  sub_23A34();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_111278(unsigned int *a1)
{
  v1 = *a1;
  sub_23A50();
  sub_CB54();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1112EC(unsigned int *a1)
{
  v1 = *a1;
  sub_23A50();
  sub_CB54();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_111360(unsigned int *a1)
{
  v1 = *a1;
  sub_23A50();
  sub_CB54();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1113D4()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_111478()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1114E8()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111524(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  [sub_23A44() intValue];
  sub_23A08();
  sub_23A14(&dword_0, v5, v6, "Maximum Charge Capacity from UI %d", v7, v8, v9, v10, v11);
}

void sub_111610()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1116B4()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1117C0(void *a1)
{
  v2 = a1;
  [sub_23A44() batteryHealthServiceState];
  sub_23A08();
  sub_23A14(&dword_0, v3, v4, "Current service recommended option from UI %d", v5, v6, v7, v8, v9);
}

void sub_111844(void *a1)
{
  v2 = a1;
  [sub_23A44() batteryHealthServiceState];
  sub_23A08();
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "error: unexpected service state %d found", v3, 8u);
}

void sub_1118D8(void *a1)
{
  v2 = a1;
  [sub_23A44() batteryHealthServiceState];
  sub_23A08();
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "Unhandled Service State: %d", v3, 8u);
}

void sub_111A3C()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_111AE0()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111B1C()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111B58()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111B94()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111BD0()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111C0C()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_111DE0()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_111F08()
{
  sub_CB48();
  sub_23A34();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_112190()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_112234()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_11230C()
{
  sub_CB48();
  sub_23A34();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_112424()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112494(void *a1)
{
  [a1 curChargingMode];
  sub_CB48();
  sub_CB6C(&dword_0, v1, v2, "Set Cur Charging mode: %lu", v3, v4, v5, v6, v7);
}

void sub_112574()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1125E4()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112654()
{
  sub_CB48();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1126F8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_CB54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1127D8()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112848()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1128B8()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112928()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_112E80(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create Ursa directory: %{public}@", &v2, 0xCu);
}

void sub_112EF8(os_log_t log)
{
  v1 = 138543362;
  v2 = @"/var/mobile/Library/Ursa";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: created Ursa directory at: %{public}@", &v1, 0xCu);
}

void sub_112FB0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create metadata: %{public}@", &v2, 0xCu);
}

void sub_1130F8(void *a1, NSObject *a2)
{
  v3 = [a1 absoluteString];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: generated TTR URL: %{public}@", &v4, 0xCu);
}

void sub_113260(uint64_t *a1, uint64_t *a2)
{
  v7 = *a1;
  v8 = *a2;
  sub_23A34();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1132E8(void *a1)
{
  v1 = [a1 table];
  [v1 contentSize];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_11337C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1133B8(uint64_t a1)
{
  v6 = *(a1 + 296);
  sub_CB54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_113438(void *a1)
{
  v2 = [a1 table];
  [v2 contentOffset];
  v3 = [a1 table];
  [v3 contentOffset];
  sub_3852C();
  sub_17F74();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1134FC(void *a1)
{
  v1 = [a1 table];
  [v1 contentSize];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_113590(void *a1, NSObject *a2)
{
  v4 = [a1 view];
  [v4 frame];
  v5 = [a1 view];
  v6 = [v5 window];
  [v6 frame];
  sub_3852C();
  v9 = v7;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "View height: %f, window height: %f", v8, 0x16u);
}

void sub_11366C(void *a1)
{
  v2 = [a1 table];
  [v2 contentOffset];
  v3 = [a1 table];
  [v3 contentOffset];
  sub_3852C();
  sub_17F74();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_113730(void *a1)
{
  v1 = [a1 table];
  [v1 contentOffset];
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_11383C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113878()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1138B4()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1138F0()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_113960(void *a1)
{
  v1 = [a1 currentDictionary];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1139EC(void *a1)
{
  v1 = [a1 currentGraphDictionary];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_113A78()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113AB4()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_113B24()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113B60(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_CB54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_113BD8()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113C88(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 8;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "error: unexpected service state %d found", v1, 8u);
}

void sub_113D08(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unhandled Service State: %d", v2, 8u);
}

void sub_113D80()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_113DF0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113E2C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113E68()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113EA4()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113EE0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113F1C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113F58()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113F94()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_113FD0()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_11400C(void *a1)
{
  [a1 curChargingMode];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_11408C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1140C8()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114104()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1142AC(uint64_t a1)
{
  v1 = [*(a1 + 32) stateProvider];
  sub_CB48();
  sub_17F74();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_11433C()
{
  sub_CB48();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1145A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "State of chargingStatusDictionary post converting to ObjC %@", &v2, 0xCu);
}

void sub_1147C8(NSObject *a1)
{
  v2[0] = 67109120;
  v2[1] = _os_feature_enabled_impl();
  _os_log_debug_impl(&dword_0, a1, OS_LOG_TYPE_DEBUG, "isIBLMSupported=%d", v2, 8u);
}

void sub_114864(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "note=%@", &v3, 0xCu);
}

void sub_1148E0(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "animating specifier=%@ toState=%d", &v3, 0x12u);
}

void sub_114980(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unhandled icon uttype identifier for suggestion type %d", v2, 8u);
}

void sub_1149F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unhandled icon for non app entity %@", &v2, 0xCu);
}

void sub_114AAC(void *a1)
{
  [a1 intValue];
  sub_23A08();
  sub_41564(&dword_0, v1, v2, "Overriding Service State in Demo mode: %d", v3, v4, v5, v6, v7);
}

void sub_114B24(void *a1)
{
  [a1 intValue];
  sub_23A08();
  sub_41564(&dword_0, v1, v2, "Overriding Service Flag in Demo mode: %d", v3, v4, v5, v6, v7);
}

void sub_114B9C()
{
  sub_23A08();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_114C0C()
{
  sub_23A08();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_114CF4()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114E7C()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114EB8()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114EF4()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114F30()
{
  sub_CB9C();
  sub_CB54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_114F6C()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_114FDC()
{
  sub_23A08();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_11504C()
{
  sub_CB9C();
  sub_CB60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_115088(void *a1)
{
  v6 = *a1;
  sub_CB54();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1151F8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412546;
  v4 = @"com.apple.systemcontainer";
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error fetching group containers for %@ : %llu", &v3, 0x16u);
}

void sub_1152B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "date=%@", &v2, 0xCu);
}

void sub_115328(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "result=%@", &v2, 0xCu);
}