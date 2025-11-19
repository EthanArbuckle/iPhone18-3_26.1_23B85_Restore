void sub_1000F9CE4()
{
  sub_100004168();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v8 = sub_10000307C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v13 = v12 - v11;
  v14 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v14);
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  v18 = sub_100108808();
  v19 = type metadata accessor for TSDataSyncDatasetState(v18);
  v20 = *(v19 + 80);
  sub_10003D1E4();
  sub_1000071D8(v0);
  if (v21)
  {
    v22 = v7[10];
    v23 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v24, v25, v26, v23);
    v27 = v7[13];
    sub_100007B78();
    sub_100002728(v28, v29, v30, v23);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 40) = 1;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    sub_100108180();
    *(v6 + v31) = v32;
    *(v6 + v7[12]) = v32;
    sub_1001082E8(v7[14]);
    *(v33 + 8) = 1;
    sub_1001082E8(v7[15]);
    *(v34 + 8) = 1;
    sub_1001082E8(v7[16]);
    *(v35 + 8) = 1;
    sub_1000071D8(v0);
    if (!v21)
    {
      sub_100004E24(v0, &qword_1002DCC10, &unk_100238220);
    }
  }

  else
  {
    sub_100007C00();
    sub_100107FA0();
  }

  v36 = *(v4 + *(v19 + 44));
  if (!v36)
  {
    v44 = v7[10];
    type metadata accessor for Date();
    sub_100007B78();
    goto LABEL_9;
  }

  if (v36 == 1)
  {
    v37 = v7[10];
    v38 = type metadata accessor for Date();
    sub_10000307C(v38);
    (*(v39 + 16))(v13 + v37, v2, v38);
    sub_10000B7B0();
    v43 = v38;
LABEL_9:
    sub_100002728(v40, v41, v42, v43);
    v45 = *(v6 + 8);
    v46 = *(v6 + 24);
    v68 = *(v6 + 16);
    v69 = *v6;
    v67 = *(v6 + 32);
    v66 = *(v6 + 40);
    v47 = *(v6 + 56);
    v48 = *(v6 + 72);
    v64 = *(v6 + 64);
    v65 = *(v6 + 48);
    v49 = *(v6 + 88);
    v63 = *(v6 + 80);
    v61 = *(v6 + v7[11]);
    v62 = *(v6 + v7[12]);
    v50 = v7[13];
    sub_10003D1E4();
    v51 = v6 + v7[14];
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = v6 + v7[15];
    v60 = *v54;
    v59 = *(v54 + 8);
    sub_100108648(v6 + v7[16]);

    sub_100006670();
    sub_100107DA4(v6, v55);
    *v13 = v69;
    *(v13 + 8) = v45;
    *(v13 + 16) = v68;
    *(v13 + 24) = v46;
    *(v13 + 32) = v67;
    *(v13 + 40) = v66;
    *(v13 + 48) = v65;
    *(v13 + 56) = v47;
    *(v13 + 64) = v64;
    *(v13 + 72) = v48;
    *(v13 + 80) = v63;
    *(v13 + 88) = v49;
    *(v13 + v7[11]) = v61;
    *(v13 + v7[12]) = v62;
    v56 = v13 + v7[14];
    *v56 = v52;
    *(v56 + 8) = v53;
    v57 = (v13 + v7[15]);
    *v57 = v60;
    sub_100013E00(v57);
    sub_1000109E8(v13 + v58);
    sub_100007C00();
    sub_100107FA0();
  }

  sub_1000027F8();
}

void sub_1000FA050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v22;
  a20 = v23;
  v360 = v24;
  v26 = v25;
  v376 = v27;
  v29 = sub_10010834C(v28);
  v30 = type metadata accessor for TSDataSyncDatasetGroupState(v29);
  v31 = sub_10000307C(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_10000D478();
  sub_10000A1C0(v36);
  v37 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v37);
  v39 = *(v38 + 64);
  sub_100003774();
  __chkstk_darwin(v40);
  sub_100003018();
  sub_10000A1C0(v41);
  v42 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v42);
  v44 = *(v43 + 64);
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100003018();
  v47 = sub_100008280(v46);
  v355 = type metadata accessor for TSDataSyncDatasetMetricsFields(v47);
  v48 = sub_10000307C(v355);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_10000306C();
  v53 = sub_100008280(v52 - v51);
  v54 = type metadata accessor for TSDataSyncDatasetState(v53);
  v55 = sub_100003724(v54);
  v361 = v56;
  v58 = *(v57 + 64);
  __chkstk_darwin(v55);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v59);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v60);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v61);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v62);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v63);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v64);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v65);
  sub_10000D478();
  sub_10000A1C0(v66);
  v67 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v68 = sub_1000030B8(v67);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v71);
  sub_10000D478();
  sub_10000A1C0(v72);
  v73 = sub_100099DF4(&qword_1002DB2E8, &qword_100231B98);
  sub_1000030B8(v73);
  v75 = *(v74 + 64);
  sub_100003774();
  __chkstk_darwin(v76);
  sub_100108404();
  v77 = type metadata accessor for HTTPHelpers.Errors();
  v78 = sub_100003724(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  __chkstk_darwin(v78);
  sub_10000308C();
  v85 = v83 - v84;
  __chkstk_darwin(v86);
  sub_1001083F4();
  v87 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v87);
  v89 = *(v88 + 64);
  sub_100003774();
  __chkstk_darwin(v90);
  sub_100003018();
  v374 = v30;
  v91 = *(v30 + 24);
  v373 = v26;
  v349 = v91;
  v93 = v92;
  sub_10003D1E4();
  v403[0] = v376;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  v350 = v93;
  if (swift_dynamicCast())
  {
    sub_100004E24(v93, &qword_1002DA970, &qword_1002318B0);
    sub_10000B7B0();
    sub_100002728(v94, v95, v96, v77);
    v97 = v80[4];
    v97(v21, v20, v77);
    v97(v85, v21, v77);
    v98 = v80[11];
    v99 = sub_1000F8344();
    if (v100(v99) != enum case for HTTPHelpers.Errors.httpStatus429(_:))
    {
      v112 = v373;
      sub_100108328(&v378);
      sub_10003D1E4();
      v113 = v80[1];
      v114 = sub_1000F8344();
      v115(v114);
      goto LABEL_7;
    }

    v101 = v80[12];
    v102 = sub_1000F8344();
    v103(v102);
    v104 = type metadata accessor for Date();
    sub_10000307C(v104);
    (*(v105 + 32))(v93, v85, v104);
    sub_10000B7B0();
    sub_100002728(v106, v107, v108, v104);
  }

  else
  {
    sub_100007B78();
    sub_100002728(v109, v110, v111, v77);
    sub_100004E24(v20, &qword_1002DB2E8, &qword_100231B98);
  }

  v112 = v373;
LABEL_7:
  sub_100003F34();
  v116 = *(v112 + v374[5]);
  v117 = *(v116 + 64);
  v372 = v116 + 64;
  v118 = *(v116 + 32);
  sub_100007FC0();
  v121 = v120 & v119;
  v351 = (v122 + 63) >> 6;
  sub_100108528();
  swift_bridgeObjectRetain_n();
  v123 = 0;
  v382 = 0;
  v362 = v116;
  v383 = v116;
  v124 = v379;
  while (v121)
  {
LABEL_13:
    v121 &= v121 - 1;
    sub_1001087D8();
    v20 = *v126;
    v127 = v126[1];
    sub_100108558();
    sub_100006D1C();
    sub_100107DFC();
    v128 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v129 = *(v128 + 48);
    sub_1001080AC();
    *v130 = v20;
    v130[1] = v127;
    sub_100007FA8();
    sub_100107FA0();
    sub_10000B7B0();
    sub_100002728(v131, v132, v133, v128);

    v124 = v379;
    sub_100003F34();
LABEL_14:
    sub_100012D44();
    v134 = sub_100108828();
    v136 = sub_100099DF4(v134, v135);
    sub_10000B3A0(v20, 1, v136);
    if (v137)
    {

      v309 = v373;
      v310 = v346[0];
      v402 = type metadata accessor for TSDataSyncDatasetGroupIdentifier;
      sub_100107DFC();
      v311 = v374;
      v312 = v374[6];
      sub_10003D1E4();
      v313 = v311[7];
      sub_10003D1E4();
      v314 = v311[9];
      v401 = *(v309 + v311[8]);
      v315 = v401;
      v316 = *(v309 + v314);
      v395 = v316;
      v317 = (v309 + v311[10]);
      v318 = *v317;
      v319 = v317[1];
      v320 = v317[2];
      v321 = v317[3];
      *(v310 + v311[5]) = v383;
      *(v310 + v311[8]) = v315;
      *(v310 + v311[9]) = v316;
      v322 = (v310 + v311[10]);
      *v322 = v318;
      v322[1] = v319;
      v322[2] = v320;
      v322[3] = v321;
      sub_10000288C(&v375);
      sub_100107DFC();
      v400 = v311[6];
      sub_100108414();
      sub_10003D1E4();
      v323 = v311[7];
      sub_10003D1E4();
      sub_10010824C();
      sub_10010824C();
      v324 = v401;

      v325 = v395;

      sub_100108604(&a16);
      sub_10010824C();

      sub_10000764C();
      v398 = v326;
      sub_100107DA4(v310, v327);
      *(v309 + v311[5]) = &qword_1002DA970;
      *(v309 + v311[8]) = v324;
      sub_100108760();
      v394 = v318;
      *v328 = v318;
      v328[1] = v319;
      v328[2] = v320;
      v328[3] = v321;
      v399 = v311[7];
      type metadata accessor for Date();
      v329 = v347;
      sub_100007B78();
      sub_100002728(v330, v331, v332, v333);
      sub_1000050CC();
      sub_100107DFC();
      v397 = v311[6];
      sub_10003D1E4();
      v396 = v319;
      sub_1001071F4(v318, v319);
      sub_100108690(&a16);

      v334 = v401;

      v335 = v398;
      sub_100107DA4(v309, v398);
      *(v329 + v311[5]) = &qword_1002DA970;
      *(v329 + v311[8]) = v334;
      *(v329 + v311[9]) = v325;
      v336 = (v329 + v311[10]);
      v337 = v394;
      *v336 = v394;
      v336[1] = v319;
      v336[2] = v320;
      v336[3] = v321;
      v338 = sub_100108414();
      sub_100004E24(v338, &qword_1002DA970, &qword_1002318B0);
      sub_10000288C(&v377);
      sub_100107DFC();
      v339 = v311[6];
      sub_10003D1E4();
      v340 = v311[7];
      sub_10003D1E4();

      sub_100107DA4(v329, v335);
      v341 = v311[5];
      sub_10010821C();
      *(v309 + v342) = v343;
      *(v309 + v311[8]) = _swiftEmptyArrayStorage;
      sub_100108760();
      v344 = v396;
      *v345 = v337;
      v345[1] = v344;
      v345[2] = v320;
      v345[3] = v321;
      sub_1000027F8();
      return;
    }

    v139 = *v20;
    v138 = *(v20 + 1);
    v140 = *(v136 + 48);
    sub_100007FA8();
    v141 = sub_100107FA0();
    v142 = *(v373 + v374[8]);
    v403[0] = v139;
    v403[1] = v138;
    __chkstk_darwin(v141);
    sub_1001083E4();
    *(v143 - 16) = v403;
    v20 = v382;
    v146 = sub_10015D6FC(sub_1000ADCD4, v144, v145);
    v382 = v20;
    if (v146)
    {
      v365 = v139;
      v366 = v138;
      sub_100006D1C();
      sub_10000288C(&v388);
      sub_100107DFC();
      sub_10000B7B0();
      sub_100002728(v147, v148, v149, v54);
      sub_1000FC888(v376, v346, v150, v151, v152, v153, v154, v155, v346[0], v346[1], v347, v348, v349, v350, v351, v352, v353, v354, v355, v356);
      sub_100004E24(v346, &qword_1002DBC28, &qword_100232F70);
      v375 = v54[8];
      v156 = type metadata accessor for Date();
      v157 = v359;
      sub_100007B78();
      sub_100002728(v158, v159, v160, v156);
      v161 = *v124;
      v162 = v124[1];
      v163 = v124[3];
      v399 = v124[2];
      v400 = v161;
      v393 = v162;
      v394 = v163;
      v164 = v124[4];
      v388 = v124[5];
      v165 = v124[7];
      v397 = v124[6];
      v398 = v164;
      sub_1001084E0(v165);
      v166 = v54[9];
      v389 = v156;
      v167 = *(v156 - 8);
      v168 = *(v167 + 16);
      v385[1] = v167 + 16;
      v386 = v168;
      (v168)(v157 + v166, v124 + v166, v156);
      sub_1001084EC(v54[10]);
      sub_10003D1E4();
      v169 = v54[11];
      v368 = v54[12];
      v381 = *(v124 + v169);
      sub_10003D1E4();
      v170 = v54[14];
      v171 = (v124 + v54[13]);
      v172 = *v171;
      v395 = v171[1];
      v396 = v172;
      v391 = *(v124 + v170);
      v390 = *(v124 + v170 + 8);
      v173 = v54[16];
      v174 = (v124 + v54[15]);
      v176 = *v174;
      v175 = v174[1];
      v380 = v176;
      v392 = v175;
      v177 = *(v124 + v173);
      v384 = v177;
      v178 = v54[18];
      v179 = *(v124 + v54[17]);
      v387 = v179;
      v402 = *(v124 + v178);
      v180 = v54[19];
      v367 = v54[20];
      v401 = *(v124 + v180);
      v181 = v401;
      sub_10003D1E4();
      v182 = v393;
      *v157 = v400;
      v157[1] = v182;
      v183 = v394;
      v157[2] = v399;
      v157[3] = v183;
      v184 = v388;
      v157[4] = v398;
      v157[5] = v184;
      v185 = v385[0];
      v157[6] = v397;
      v157[7] = v185;
      sub_100014014();
      *(v157 + v186) = v187;
      sub_100108394((v157 + v54[13]));
      v189 = v392;
      sub_100005CDC(v157 + v188);
      v191 = (v157 + v190);
      *v191 = v176;
      v191[1] = v189;
      *(v157 + v54[16]) = v177;
      *(v157 + v54[17]) = v179;
      *(v157 + v54[18]) = v402;
      *(v157 + v54[19]) = v181;
      v371 = v54[8];
      sub_1001081A4();
      v192 = v358;
      sub_1001081D4();
      sub_10003D1E4();
      v375 = v54[9];
      sub_1001086A8();
      v193();
      v194 = v54[10];
      sub_1001081A4();
      sub_1001081D4();
      sub_10003D1E4();
      sub_10010848C(v54[12]);
      sub_1001081A4();
      sub_1001081D4();
      sub_10003D1E4();
      sub_1001084EC(v54[20]);
      sub_1001081A4();
      sub_10003D1E4();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v195 = v393;
      swift_bridgeObjectRetain_n();
      v196 = v394;
      swift_bridgeObjectRetain_n();
      v197 = v388;
      swift_bridgeObjectRetain_n();
      sub_100108284(&a18);
      swift_bridgeObjectRetain_n();
      v198 = v395;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_100004ADC();
      v368 = v199;
      sub_100107DA4(v157, v200);
      v201 = v399;
      *v192 = v400;
      v192[1] = v195;
      v192[2] = v201;
      v192[3] = v196;
      v202 = v397;
      v192[4] = v398;
      v192[5] = v197;
      v203 = v197;
      v192[6] = v202;
      v192[7] = v189;
      sub_100014014();
      *(v192 + v204) = v205;
      v206 = (v192 + v54[13]);
      *v206 = v396;
      v206[1] = v198;
      sub_100005CDC(v192 + v54[14]);
      sub_1001080D0((v192 + v207));
      *(v192 + v208) = v384;
      sub_1001086D8();
      *(v192 + v209) = v210;
      v211 = v401;
      *(v192 + v54[18]) = v402;
      *(v192 + v54[19]) = v211;
      v212 = v357;
      v367 = v357 + v54[10];
      sub_100007B78();
      sub_100002728(v213, v214, v215, v389);
      v216 = v212 + v54[8];
      sub_1000035C8(&v400);
      v364 = v217;
      sub_10003D1E4();
      v363 = v212 + v54[9];
      v386();
      v218 = v212 + v54[12];
      sub_1000035C8(&v398);
      v375 = v219;
      sub_10003D1E4();
      v220 = v212 + v54[20];
      sub_1000035C8(&v399);
      v371 = v221;
      sub_10003D1E4();
      v222 = v393;

      v223 = v394;

      v224 = v203;

      v225 = v189;

      v226 = v395;

      v227 = v192;
      v228 = v212;
      sub_100107DA4(v227, v368);
      v229 = v399;
      *v212 = v400;
      v212[1] = v222;
      v212[2] = v229;
      v212[3] = v223;
      v230 = v397;
      v212[4] = v398;
      v212[5] = v224;
      v212[6] = v230;
      v212[7] = v225;
      sub_100014014();
      *(v212 + v232) = v231;
      v233 = (v212 + v54[13]);
      *v233 = v396;
      v233[1] = v226;
      v234 = v212 + v54[14];
      *v234 = v391;
      v234[8] = v390;
      v235 = (v212 + v54[15]);
      v236 = v392;
      *v235 = v380;
      v235[1] = v236;
      *(v212 + v54[16]) = v384;
      *(v212 + v54[17]) = v387;
      v237 = v401;
      *(v212 + v54[18]) = v402;
      *(v212 + v54[19]) = v237;
      if (v231 == -1)
      {
        goto LABEL_22;
      }

      v369 = v54[8];
      v238 = v354;
      sub_1001082D0(v231 + 1);
      sub_10003D1E4();
      sub_1001084EC(v54[9]);
      sub_1001086A8();
      v239();
      v368 = v54[10];
      sub_10003D1E4();
      sub_1001082B8(v54[12]);
      sub_10010878C();
      sub_10003D1E4();
      v364 = v54[20];
      sub_10003D1E4();

      v240 = v394;

      v241 = v388;

      sub_1001080B8(&a18);

      v242 = v395;

      v243 = v401;

      sub_100004ADC();
      v375 = v244;
      sub_100107DA4(v228, v245);
      v246 = v399;
      v247 = v393;
      *v238 = v400;
      v238[1] = v247;
      v238[2] = v246;
      v238[3] = v240;
      v248 = v397;
      v238[4] = v398;
      v238[5] = v241;
      v238[6] = v248;
      v238[7] = v222;
      sub_100014014();
      *(v238 + v249) = v250;
      v251 = (v238 + v54[13]);
      *v251 = v396;
      v251[1] = v242;
      sub_100005CDC(v238 + v54[14]);
      sub_1001080D0((v238 + v252));
      *(v238 + v253) = v384;
      sub_1001086D8();
      *(v238 + v254) = v255;
      *(v238 + v54[18]) = v402;
      *(v238 + v54[19]) = v243;

      sub_10010826C();
      v256 = _convertErrorToNSError(_:)();
      v257 = [v256 domain];

      v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v371 = v258;
      v392 = v259;

      v363 = v54[8];
      v260 = v353;
      sub_10003D1E4();
      sub_1001081E0(v54[9]);
      sub_1001086A8();
      v261();
      v370 = v54[10];
      sub_100007664();
      sub_10003D1E4();
      v262 = v54[12];
      sub_1001086E4();
      sub_100007664();
      sub_10003D1E4();
      v263 = v54[20];
      sub_10003D1E4();
      v264 = v401;

      sub_100107DA4(v238, v375);
      v265 = v393;
      *v260 = v400;
      v260[1] = v265;
      v266 = v394;
      v260[2] = v399;
      v260[3] = v266;
      v267 = v388;
      v260[4] = v398;
      v260[5] = v267;
      v260[6] = v397;
      v260[7] = v222;
      sub_100014014();
      *(v260 + v268) = v269;
      sub_100108394((v260 + v54[13]));
      sub_100005CDC(v260 + v270);
      v272 = (v260 + v271);
      *v272 = v258;
      v272[1] = v273;
      LOBYTE(v238) = v384;
      *(v260 + v54[16]) = v384;
      sub_1001086D8();
      *(v260 + v274) = v275;
      *(v260 + v54[18]) = v402;
      *(v260 + v54[19]) = v264;

      sub_10010826C();
      v276 = _convertErrorToNSError(_:)();
      v391 = [v276 code];

      v277 = v54[8];
      sub_1001087FC();
      v278 = v352;
      sub_10003D1E4();
      v279 = v54[9];
      sub_100108174();
      sub_1001086A8();
      v280();
      v281 = v54[10];
      sub_1001087FC();
      sub_1001085EC();
      v282 = v54[12];
      sub_1001085EC();
      v283 = v54[20];
      sub_10003D1E4();
      v284 = v401;

      v285 = v375;
      sub_100107DA4(v260, v375);
      v286 = v393;
      *v278 = v400;
      v278[1] = v286;
      v287 = v394;
      v278[2] = v399;
      v278[3] = v287;
      v288 = v388;
      v278[4] = v398;
      v278[5] = v288;
      v289 = v385[0];
      v278[6] = v397;
      v278[7] = v289;
      sub_100014014();
      *(v278 + v290) = v291;
      sub_100108394((v278 + v54[13]));
      sub_1001080C4((v278 + v292));
      *(v293 + 8) = 0;
      sub_1001080D0((v278 + v54[15]));
      *(v278 + v294) = v238;
      sub_1001086D8();
      *(v278 + v295) = v296;
      *(v278 + v54[18]) = v402;
      *(v278 + v54[19]) = v284;
      sub_1001080B8(&v401);
      sub_10000288C(v385);
      sub_100107DFC();
      sub_10000B7B0();
      sub_100002728(v297, v298, v299, v355);
      v20 = v377;
      sub_100109384(v377);
      sub_100004E24(v284, &qword_1002DCC10, &unk_100238220);
      sub_100107DA4(v278, v285);
      sub_100007FA8();
      sub_100107FA0();
      sub_100005CC4(&a16);
      swift_isUniquelyReferenced_nonNull_native();
      v403[0] = v284;
      v124 = v403;
      sub_10014FF48();

      sub_100002E6C(v403[0]);
      sub_100006670();
      sub_100107DA4(&qword_1002DA970, v300);
      v301 = sub_10000B358(&a12);
      sub_100107DA4(v301, v285);
      sub_100003F34();
    }

    else
    {
      sub_100006D1C();
      sub_10000288C(&a10);
      sub_100107DFC();
      sub_10000B358(&a16);
      swift_isUniquelyReferenced_nonNull_native();
      v403[0] = v124;
      sub_10014FF48();
      v124 = v379;

      sub_100004ADC();
      sub_100107DA4(v124, v302);
      sub_100002E6C(v403[0]);
      sub_100003F34();
    }
  }

  while (1)
  {
    v125 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v125 >= v351)
    {
      v303 = sub_100108828();
      sub_100099DF4(v303, v304);
      sub_100007B78();
      sub_100002728(v305, v306, v307, v308);
      v121 = 0;
      goto LABEL_14;
    }

    v121 = *(v372 + 8 * v125);
    ++v123;
    if (v121)
    {
      v123 = v125;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1000FB800(uint64_t a1)
{
  sub_1000D6484();
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = *(a1 + 48);
  v34 = *(v3 + 16);
  if (!v34)
  {
    return v2;
  }

  v4 = 0;
  v5 = (v3 + 136);
  v33 = *(a1 + 48);
  while (v4 < *(v3 + 16))
  {
    v7 = *(v5 - 13);
    v6 = *(v5 - 12);
    v8 = *(v5 - 10);
    v36 = *(v5 - 11);
    v9 = _swiftEmptyArrayStorage;
    if (*v5)
    {
      v9 = *v5;
    }

    v35 = v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_10000AE2C();
    sub_10014EB30(v11, v12);
    sub_10000B818();
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_17;
    }

    v18 = v13;
    v19 = v14;
    sub_100099DF4(&qword_1002DCC28, &qword_100236600);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000AE2C();
      v22 = sub_10014EB30(v20, v21);
      if ((v19 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v18 = v22;
    }

    if (v19)
    {

      v24 = (v2[7] + 24 * v18);
      v25 = *v24;
      v26 = v24[2];
      *v24 = v35;
      v24[1] = v36;
      v24[2] = v8;
    }

    else
    {
      sub_1001086C0();
      sub_1000035B8(v27);
      v28 = (v2[6] + 16 * v18);
      *v28 = v7;
      v28[1] = v6;
      v29 = (v2[7] + 24 * v18);
      *v29 = v35;
      v29[1] = v36;
      v29[2] = v8;
      sub_1001086CC();
      if (v31)
      {
        goto LABEL_18;
      }

      v2[2] = v30;
    }

    ++v4;
    v5 += 17;
    v3 = v33;
    if (v34 == v4)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000FBA04()
{
  sub_100004168();
  v1 = v0;
  v64 = type metadata accessor for TSDataSyncDatasetState(0);
  v2 = sub_100003724(v64);
  v62 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v61 = v7 - v6;
  v8 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v9 = sub_1000030B8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1000037D4();
  v65 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  v15 = (&v58 - v14);
  v16 = *(v1 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20));
  v18 = v16 + 64;
  v17 = *(v16 + 64);
  v19 = *(v16 + 32);
  sub_100007FC0();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v63 = v25;

  v26 = 0;
  v59 = _swiftEmptyArrayStorage;
  v60 = v15;
  while (v22)
  {
LABEL_7:
    v22 &= v22 - 1;
    sub_1001087D8();
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v62 + 72);
    sub_100006D1C();
    sub_100107DFC();
    v32 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v33 = *(v32 + 48);
    v34 = v65;
    *v65 = v29;
    v34[1] = v30;
    sub_100007FA8();
    sub_100107FA0();
    sub_10000B7B0();
    sub_100002728(v35, v36, v37, v32);

    v15 = v60;
LABEL_8:
    sub_100012D44();
    v38 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v39 = sub_10000A218();
    sub_10000B3A0(v39, v40, v38);
    if (v41)
    {

      sub_1000027F8();
      return;
    }

    v42 = *v15;
    v43 = v15[1];
    v44 = *(v15 + *(v38 + 48) + *(v64 + 64));
    sub_100004ADC();
    sub_100107DA4(v45, v46);
    if (v44 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = v59[2];
        sub_10013C0F0();
        v59 = v56;
      }

      v51 = v59[2];
      v52 = v51 + 1;
      if (v51 >= v59[3] >> 1)
      {
        v58 = v51 + 1;
        sub_10013C0F0();
        v52 = v58;
        v59 = v57;
      }

      v53 = v59;
      v59[2] = v52;
      v54 = &v53[2 * v51];
      v54[4] = v42;
      v54[5] = v43;
    }

    else
    {
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      sub_100007B78();
      sub_100002728(v47, v48, v49, v50);
      v22 = 0;
      goto LABEL_8;
    }

    v22 = *(v18 + 8 * v27);
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1000FBD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = sub_10010834C(v26);
  v28 = type metadata accessor for TSDataSyncDatasetState(v27);
  v29 = sub_100003724(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_1000037D4();
  v146 = v32;
  sub_100005238();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_100002DD0();
  v145 = v38;
  sub_100005238();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_10000D478();
  v144 = v41;
  v42 = *(v23 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20));
  v43 = *(v25 + 16);
  if (!v43)
  {

LABEL_18:
    sub_10010958C();

    sub_1000027F8();
    return;
  }

  v44 = (v25 + 40);
  v128 = v42;
  while (1)
  {
    if (!*(v42 + 16))
    {
      goto LABEL_15;
    }

    v46 = *(v44 - 1);
    v45 = *v44;

    v47 = sub_10000AE2C();
    sub_10014EB30(v47, v48);
    if ((v49 & 1) == 0)
    {

      goto LABEL_15;
    }

    v131 = v44;
    v132 = v43;
    v50 = *(v42 + 56);
    sub_100108558();
    sub_100006D1C();
    sub_10000288C(&v164);
    sub_100107DFC();
    sub_100007FA8();
    sub_100107FA0();
    v139 = v144[2];
    v148 = v144[5];
    v151 = v144[4];
    v156 = v144[3];
    v158 = v144[6];
    v154 = v144[7];
    sub_10010818C(v28[8]);
    v143 = v46;
    sub_10003D1E4();
    v51 = v28[9];
    v167 = type metadata accessor for Date();
    sub_10000307C(v167);
    v166 = *(v52 + 16);
    v164 = v52 + 16;
    (v166)(v130 + v51, v144 + v51);
    v142 = v45;
    v135 = v28[10];
    sub_10003D1E4();
    v134 = v28[12];
    v168 = *(v144 + v28[11]);
    sub_10003D1E4();
    v53 = v28[14];
    v54 = (v144 + v28[13]);
    v55 = *v54;
    v56 = v54[1];
    v160 = v56;
    v147 = *(v144 + v53);
    HIDWORD(v161) = *(v144 + v53 + 8);
    v57 = v28[16];
    v58 = (v144 + v28[15]);
    v59 = v58[1];
    v162 = *v58;
    v163 = v55;
    LOBYTE(v51) = *(v144 + v57);
    v60 = v28[18];
    v61 = *(v144 + v28[17]);
    v165 = v61;
    v62 = *(v144 + v60);
    v133 = v28[20];
    v63 = *(v144 + v28[19]);
    sub_10003D1E4();
    *v130 = 0;
    v130[1] = 0xE000000000000000;
    v130[2] = v139;
    v130[3] = v156;
    v130[4] = v151;
    v130[5] = v148;
    v130[6] = v158;
    v130[7] = v154;
    sub_100108570();
    *(v130 + v64) = v65;
    v66 = (v130 + v28[13]);
    *v66 = v163;
    v66[1] = v56;
    sub_10000BF14(v130 + v28[14]);
    v68 = (v130 + v67);
    *v68 = v162;
    v68[1] = v59;
    *(v130 + v28[16]) = v51;
    *(v130 + v28[17]) = v61;
    *(v130 + v28[18]) = v62;
    *(v130 + v28[19]) = v63;
    sub_1001082D0(v28[8]);
    sub_1001081A4();
    sub_10010842C();
    sub_10003D1E4();
    sub_10010818C(v28[9]);
    sub_100108174();
    v166();
    v137 = v28[10];
    sub_1001081A4();
    sub_1001085BC();
    v136 = v28[12];
    sub_1001081A4();
    sub_1001085BC();
    sub_1001081E0(v28[20]);
    sub_1001081A4();
    sub_10003D1E4();

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_100108438(v169);
    swift_bridgeObjectRetain_n();
    v69 = v148;
    swift_bridgeObjectRetain_n();
    sub_10010881C();
    swift_bridgeObjectRetain_n();
    sub_100004ADC();
    v157 = v70;
    sub_100107DA4(v130, v71);
    *v56 = 0;
    v56[1] = 0xE000000000000000;
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v151;
    v56[5] = v148;
    v56[6] = v158;
    v56[7] = v154;
    sub_100108570();
    *(v56 + v72) = v73;
    v74 = (v56 + v28[13]);
    v75 = v162;
    *v74 = v163;
    v74[1] = v56;
    v76 = v56 + v28[14];
    *v76 = v147;
    v77 = BYTE4(v161);
    v76[8] = BYTE4(v161);
    v78 = (v56 + v28[15]);
    *v78 = v75;
    v78[1] = v59;
    *(v56 + v28[16]) = v51;
    sub_1001087CC();
    *(v56 + v79) = v80;
    *(v56 + v28[18]) = v62;
    *(v56 + v28[19]) = v63;
    v149 = v28[8];
    sub_100008774(&a14);
    sub_10010863C(&v161);
    sub_10003D1E4();
    v152 = v28[9];
    sub_1001082DC();
    v166();
    v141 = v28[10];
    sub_100008774(&a12);
    sub_10003D1E4();
    v140 = v28[12];
    sub_100008774(&a11);
    sub_10003D1E4();
    v138 = v28[20];
    sub_100108174();
    sub_10003D1E4();

    sub_10000B358(v169);

    sub_100107DA4(v56, v157);
    sub_100108798();
    *(v69 + 48) = v158;
    *(v69 + 56) = v154;
    sub_100108570();
    *(v69 + v81) = v82;
    v83 = (v69 + v28[13]);
    v84 = v162;
    *v83 = v163;
    v83[1] = v56;
    v85 = v69 + v28[14];
    *v85 = v147;
    *(v85 + 8) = v77;
    v86 = (v69 + v28[15]);
    *v86 = v84;
    v86[1] = v59;
    *(v69 + v28[16]) = v51;
    sub_1001087CC();
    *(v69 + v87) = v88;
    *(v69 + v28[18]) = &qword_1002318B0;
    *(v69 + v28[19]) = v63;
    v155 = v28[8];
    sub_10003D1E4();
    v159 = v28[9];
    (v166)(v129 + v159, v69 + v152, v167);
    v153 = v28[10];
    sub_10010809C();
    sub_1001088C0();
    v150 = v28[12];
    sub_10010809C();
    sub_1001088C0();
    sub_10010818C(v28[20]);
    sub_10010809C();
    sub_10003D1E4();

    sub_100107DA4(v69, v157);
    *v129 = 0;
    v129[1] = 0xE000000000000000;
    v129[2] = 0;
    v129[3] = 0;
    v129[4] = 0;
    v129[5] = 0xE000000000000000;
    v129[6] = 0;
    v129[7] = 0;
    sub_100108570();
    *(v129 + v89) = v90;
    v91 = (v129 + v28[13]);
    v92 = v163;
    *v91 = v163;
    v91[1] = v56;
    sub_10000BF14(v129 + v28[14]);
    v94 = (v129 + v93);
    v95 = v162;
    *v94 = v162;
    v94[1] = v59;
    *(v129 + v28[16]) = v51;
    sub_1001087CC();
    *(v129 + v96) = v97;
    *(v129 + v28[18]) = &qword_1002318B0;
    *(v129 + v28[19]) = v63;
    v98 = v28[8];
    sub_1001081D4();
    sub_10003D1E4();
    (v166)(v145 + v28[9], v129 + v159, v167);
    v99 = v28[10];
    sub_1001081D4();
    sub_10003D1E4();
    v100 = v28[12];
    sub_1001081D4();
    sub_10003D1E4();
    v101 = v28[20];
    sub_1001087FC();
    sub_10003D1E4();

    sub_100107DA4(v129, v157);
    *v145 = 0;
    v145[1] = 0xE000000000000000;
    v145[2] = 0;
    v145[3] = 0;
    v145[4] = 0;
    v145[5] = 0xE000000000000000;
    v145[6] = 0;
    v145[7] = 0;
    sub_100108570();
    *(v145 + v102) = v103;
    v104 = (v145 + v28[13]);
    *v104 = v92;
    v104[1] = v160;
    sub_10000BF14(v145 + v28[14]);
    v106 = (v145 + v105);
    *v106 = v95;
    v106[1] = v59;
    *(v145 + v28[16]) = 0;
    sub_1001087CC();
    *(v145 + v107) = v108;
    *(v145 + v28[18]) = &qword_1002318B0;
    *(v145 + v28[19]) = v63;
    sub_100107DFC();
    sub_10000B358(&a17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v169[0] = &qword_1002DA970;
    sub_10014EB30(v143, v142);
    sub_10000B818();
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      break;
    }

    v115 = v110;
    v116 = v111;
    sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v114))
    {
      v117 = sub_10014EB30(v143, v142);
      if ((v116 & 1) != (v118 & 1))
      {
        goto LABEL_21;
      }

      v115 = v117;
    }

    v119 = v169[0];
    if (v116)
    {
      v120 = *(v169[0] + 56);
      sub_1001081BC();
      sub_100107190(v146, v121 + v115 * v122);
    }

    else
    {
      sub_1000035B8(v169[0] + 8 * (v115 >> 6));
      v123 = (v119[6] + 16 * v115);
      *v123 = v143;
      v123[1] = v142;
      v124 = v119[7];
      sub_1001081BC();
      sub_100007FA8();
      sub_100107FA0();
      v125 = v119[2];
      v126 = __OFADD__(v125, 1);
      v127 = v125 + 1;
      if (v126)
      {
        goto LABEL_20;
      }

      v119[2] = v127;
    }

    sub_100107DA4(v145, type metadata accessor for TSDataSyncDatasetState);
    sub_100107DA4(v144, type metadata accessor for TSDataSyncDatasetState);
    v42 = v128;
    v43 = v132;
    v44 = v131;
LABEL_15:
    v44 += 2;
    if (!--v43)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000FC888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  sub_100002E6C(v25);
  v26 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v26);
  v28 = *(v27 + 64);
  sub_100003774();
  __chkstk_darwin(v29);
  v31 = &v225[-v30];
  v32 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v32);
  v34 = *(v33 + 64);
  sub_100003774();
  __chkstk_darwin(v35);
  v37 = &v225[-v36];
  v38 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v39 = sub_10000307C(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10000308C();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  sub_10010814C();
  __chkstk_darwin(v46);
  v48 = &v225[-v47];
  __chkstk_darwin(v49);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v51);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v52);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v53);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v54);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v55);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v56);
  sub_10000D478();
  sub_10000A1C0(v57);
  v229 = v24;
  if (v24)
  {
    v255 = v24;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    sub_100108754();
    if (swift_dynamicCast())
    {
      v58 = v254;
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
  }

  sub_10000AE2C();
  sub_10003D1E4();
  v59 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000B3A0(v31, 1, v59);
  if (v65)
  {
    sub_100004E24(v31, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v60, v61, v62, v38);
    goto LABEL_11;
  }

  v63 = *(v59 + 80);
  sub_10003D1E4();
  sub_100004ADC();
  sub_100107DA4(v31, v64);
  sub_1000071D8(v37);
  if (v65)
  {
LABEL_11:
    v66 = v38[10];
    v67 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v68, v69, v70, v67);
    v71 = v38[13];
    sub_100007B78();
    sub_100002728(v72, v73, v74, v67);
    *(v44 + 32) = 0;
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 40) = 1;
    *(v44 + 48) = 0u;
    *(v44 + 64) = 0u;
    *(v44 + 80) = 0u;
    sub_100108180();
    *(v44 + v75) = v76;
    *(v44 + v38[12]) = v76;
    sub_100108364(v38[14]);
    sub_100108364(v38[15]);
    sub_100108364(v38[16]);
    sub_1000071D8(v37);
    if (!v65)
    {
      sub_100004E24(v37, &qword_1002DCC10, &unk_100238220);
    }

    if (!v58)
    {
      goto LABEL_16;
    }

LABEL_14:
    v253 = [v58 code];
    goto LABEL_17;
  }

  sub_100007C00();
  sub_100107FA0();
  if (v58)
  {
    goto LABEL_14;
  }

LABEL_16:
  v253 = 0;
LABEL_17:
  LODWORD(v245) = v58 == 0;
  v77 = *v44;
  v247 = v58;
  v78 = *(v44 + 8);
  v248 = *(v44 + 16);
  v79 = *(v44 + 24);
  v80 = *(v44 + 56);
  v235 = *(v44 + 48);
  v82 = *(v44 + 64);
  v81 = *(v44 + 72);
  v239 = v77;
  v240 = v82;
  v244 = v81;
  v83 = v38[10];
  v84 = *(v44 + 88);
  v251 = *(v44 + 80);
  v246 = (v20 + v83);
  sub_10010831C();
  sub_10003D1E4();
  v85 = v38[12];
  LODWORD(v241) = *(v44 + v38[11]);
  LODWORD(v252) = *(v44 + v85);
  v227 = v20 + v38[13];
  sub_10010831C();
  sub_10003D1E4();
  v86 = v38[15];
  v87 = v44 + v38[14];
  v234 = *v87;
  LODWORD(v233) = *(v87 + 8);
  v237 = *(v44 + v86);
  LODWORD(v236) = *(v44 + v86 + 8);
  v88 = v44 + v38[16];
  v249 = *v88;
  v89 = *(v88 + 8);

  v90 = v244;

  sub_100006670();
  sub_100107DA4(v44, v91);
  *v20 = v239;
  *(v20 + 8) = v78;
  v238 = v78;
  v92 = v247;
  *(v20 + 16) = v248;
  *(v20 + 24) = v79;
  v242 = v79;
  v243 = v84;
  *(v20 + 32) = v253;
  *(v20 + 40) = v245;
  *(v20 + 48) = v235;
  *(v20 + 56) = v80;
  *(v20 + 64) = v240;
  *(v20 + 72) = v90;
  *(v20 + 80) = v251;
  *(v20 + 88) = v84;
  sub_1001086FC();
  *(v20 + v93) = v94;
  sub_1001081F8();
  *(v20 + v95) = v96;
  sub_10000A834((v20 + v38[14]));
  v97 = v233;
  sub_100108058(v98);
  sub_100008D90(v20 + v99);
  v101 = v20 + v100;
  *v101 = v249;
  v250 = v89;
  *(v101 + 8) = v89;

  if (v92)
  {
    v102 = [v92 domain];
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    v226 = v92;
  }

  else
  {
    v226 = 0;
    v103 = 0;
    v105 = 0;
  }

  v106 = v92 == 0;
  LODWORD(v247) = v92 == 0;
  v107 = v38[10];
  sub_10003D1E4();
  sub_10010869C(v38[13]);
  sub_10003D1E4();
  sub_100006670();
  v246 = v108;
  sub_100107DA4(v20, v109);
  v110 = v238;
  *v48 = v239;
  *(v48 + 1) = v110;
  v111 = v242;
  *(v48 + 2) = v248;
  *(v48 + 3) = v111;
  v112 = v253;
  *(v48 + 4) = v253;
  v48[40] = v106;
  v245 = v103;
  *(v48 + 6) = v103;
  *(v48 + 7) = v105;
  v235 = v105;
  v114 = v243;
  v113 = v244;
  *(v48 + 8) = v240;
  *(v48 + 9) = v113;
  *(v48 + 10) = v251;
  *(v48 + 11) = v114;
  sub_1001086FC();
  v48[v115] = v116;
  sub_1001081F8();
  v48[v117] = v118;
  sub_10000A834(&v48[v38[14]]);
  *(v119 + 8) = v97;
  sub_100008D90(&v48[v38[15]]);
  v121 = &v48[v120];
  v122 = v249;
  *v121 = v249;
  sub_100108358(v121);
  sub_10010881C();
  swift_bridgeObjectRetain_n();
  v123 = v48;
  v124 = v110;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100108528();
  swift_bridgeObjectRetain_n();
  sub_10010826C();
  v125 = static HTTPHelpers.statusCodeString(error:)();
  v244 = v125;
  v240 = v126;

  v253 = v112;
  v229 = v38[10];
  sub_10010842C();
  sub_10003D1E4();
  v227 = v38[13];
  sub_100004FB0(&v252);
  sub_10003D1E4();
  sub_100107DA4(v123, v246);
  *v97 = v239;
  *(v97 + 8) = v124;
  *(v97 + 16) = v248;
  *(v97 + 24) = v111;
  *(v97 + 32) = v112;
  *(v97 + 40) = v247;
  v127 = v245;
  v128 = v235;
  *(v97 + 48) = v245;
  *(v97 + 56) = v128;
  *(v97 + 64) = v125;
  v129 = v251;
  *(v97 + 72) = v240;
  *(v97 + 80) = v129;
  v130 = v243;
  *(v97 + 88) = v243;
  LOBYTE(v107) = v241;
  *(v97 + v38[11]) = v241;
  sub_1001081F8();
  sub_100008C8C(v131);
  sub_10000A834(v132);
  sub_100010E0C(v133);
  sub_100008D90(v97 + v38[15]);
  v135 = (v97 + v134);
  *v135 = v122;
  sub_100108358(v135);
  sub_1001084E0(v38[10]);
  sub_100108140();
  v136 = v228;
  sub_10003D1E4();
  v233 = v38[13];
  sub_100108140();
  sub_10003D1E4();
  sub_100108334();
  swift_bridgeObjectRetain_n();
  v137 = v238;

  v138 = v111;

  v139 = v235;

  v140 = v246;
  sub_100107DA4(v97, v246);
  v141 = v239;
  *v136 = v239;
  *(v136 + 8) = v137;
  *(v136 + 16) = v248;
  *(v136 + 24) = v138;
  *(v136 + 32) = v253;
  *(v136 + 40) = v247;
  *(v136 + 48) = v127;
  *(v136 + 56) = v139;
  v142 = v240;
  *(v136 + 64) = v244;
  *(v136 + 72) = v142;
  *(v136 + 80) = v251;
  *(v136 + 88) = v130;
  *(v136 + v38[11]) = v107;
  sub_1001081F8();
  *(v136 + v143) = v144;
  sub_100003C34(v136 + v38[14]);
  sub_100008D90(v136 + v145);
  v147 = (v136 + v146);
  *v147 = v249;
  sub_100108358(v147);
  v237 = v38[10];
  sub_100004FB0(&a18);
  sub_10010863C(&a10);
  sub_10003D1E4();
  v236 = v38[13];
  sub_10010808C(&a17);
  sub_100002854();
  sub_10003D1E4();
  v148 = v242;

  sub_100107DA4(v136, v140);
  v149 = v238;
  *v138 = v141;
  *(v138 + 8) = v149;
  *(v138 + 16) = v248;
  *(v138 + 24) = v148;
  v150 = v253;
  *(v138 + 32) = v253;
  LOBYTE(v136) = v247;
  *(v138 + 40) = v247;
  v151 = v244;
  *(v138 + 48) = v245;
  *(v138 + 56) = v139;
  v152 = v139;
  *(v138 + 64) = v151;
  *(v138 + 72) = v142;
  *(v138 + 80) = v251;
  *(v138 + 88) = v130;
  sub_1001086FC();
  *(v138 + v153) = v154;
  sub_1001081F8();
  *(v138 + v155) = v156;
  sub_100003C34(v138 + v38[14]);
  sub_10000B3B8(v138 + v157);
  v159 = (v138 + v158);
  *v159 = v249;
  sub_100108358(v159);
  v239 = v38[10];
  v160 = v230;
  sub_10003D1E4();
  v238 = v38[13];
  sub_1001085BC();
  v161 = v242;

  sub_100107DA4(v138, v246);
  *v160 = 0;
  *(v160 + 8) = 0;
  *(v160 + 16) = v248;
  *(v160 + 24) = v161;
  *(v160 + 32) = v150;
  *(v160 + 40) = v136;
  v162 = v244;
  *(v160 + 48) = v245;
  *(v160 + 56) = v152;
  *(v160 + 64) = v162;
  *(v160 + 72) = v142;
  v163 = v142;
  v164 = v243;
  *(v160 + 80) = v251;
  *(v160 + 88) = v164;
  sub_1001086FC();
  *(v160 + v165) = v166;
  LOBYTE(v150) = v252;
  *(v160 + v38[12]) = v252;
  sub_100003C34(v160 + v38[14]);
  sub_10000B3B8(v160 + v167);
  v169 = (v160 + v168);
  v170 = v249;
  *v169 = v249;
  sub_100108358(v169);
  v241 = v38[10];
  sub_10010863C(&a12);
  sub_10003D1E4();
  v239 = v38[13];
  sub_10003D1E4();

  v171 = v235;

  v172 = v163;

  v173 = sub_10000AE2C();
  sub_100107DA4(v173, v174);
  *v138 = 0;
  *(v138 + 8) = 0;
  v175 = v242;
  *(v138 + 16) = v248;
  *(v138 + 24) = v175;
  v176 = v253;
  *(v138 + 32) = v253;
  LOBYTE(v160) = v247;
  *(v138 + 40) = v247;
  v177 = v244;
  *(v138 + 48) = v245;
  *(v138 + 56) = v171;
  *(v138 + 64) = v177;
  *(v138 + 72) = v172;
  *(v138 + 80) = v251;
  *(v138 + 88) = v164;
  sub_100108180();
  *(v138 + v178) = v179;
  *(v138 + v38[12]) = v150;
  sub_100003C34(v138 + v38[14]);
  sub_10000B3B8(v138 + v180);
  v182 = v138 + v181;
  *v182 = v170;
  LOBYTE(v164) = v250;
  *(v182 + 8) = v250;
  v248 = v38[10];
  v183 = v231;
  sub_10003D1E4();
  v242 = v38[13];
  sub_1001085BC();
  v184 = v171;

  v185 = v240;

  sub_100107DA4(v138, v246);
  *v183 = 0u;
  *(v183 + 16) = 0u;
  *(v183 + 32) = v176;
  *(v183 + 40) = v160;
  v186 = v244;
  v187 = v245;
  *(v183 + 48) = v245;
  *(v183 + 56) = v184;
  *(v183 + 64) = v186;
  *(v183 + 72) = v185;
  v188 = v243;
  *(v183 + 80) = v251;
  *(v183 + 88) = v188;
  sub_100108108();
  sub_100008C8C(v189);
  sub_100003C34(v190);
  sub_10000B3B8(v183 + v191);
  v193 = v183 + v192;
  *v193 = v249;
  LOBYTE(v185) = v164;
  *(v193 + 8) = v164;
  v251 = v38[10];
  v194 = v232;
  sub_10003D1E4();
  v248 = v38[13];
  sub_10003D1E4();

  v195 = v240;

  v196 = v246;
  sub_100107DA4(v183, v246);
  *v194 = 0u;
  *(v194 + 16) = 0u;
  v197 = v253;
  *(v194 + 32) = v253;
  *(v194 + 40) = v247;
  *(v194 + 48) = v187;
  *(v194 + 56) = v184;
  *(v194 + 64) = v186;
  *(v194 + 72) = v195;
  *(v194 + 80) = 0;
  *(v194 + 88) = 0;
  sub_100108180();
  *(v194 + v198) = v199;
  sub_1001081F8();
  *(v194 + v200) = v201;
  sub_100003C34(v194 + v38[14]);
  sub_10000B3B8(v194 + v202);
  v204 = v194 + v203;
  v205 = v249;
  *v204 = v249;
  *(v204 + 8) = v185;
  v252 = v38[10];
  sub_10010842C();
  sub_10003D1E4();
  v206 = v38[13];
  sub_10003D1E4();
  v207 = v184;

  v208 = v240;

  sub_100107DA4(v194, v196);
  *v183 = 0u;
  *(v183 + 16) = 0u;
  *(v183 + 32) = v197;
  LOBYTE(v184) = v247;
  *(v183 + 40) = v247;
  v210 = v244;
  v209 = v245;
  *(v183 + 48) = v245;
  *(v183 + 56) = v207;
  *(v183 + 64) = v210;
  *(v183 + 72) = v208;
  *(v183 + 80) = 0;
  *(v183 + 88) = 0;
  sub_100108108();
  sub_100008C8C(v211);
  sub_100003C34(v212);
  sub_10000B3B8(v183 + v213);
  v215 = (v183 + v214);
  *v215 = v205;
  sub_100108358(v215);
  v216 = v38[10];
  sub_100108444();
  sub_10003D1E4();
  v217 = v38[13];
  sub_10003D1E4();
  sub_100107DA4(v183, v246);
  *v208 = 0u;
  *(v208 + 16) = 0u;
  *(v208 + 32) = v253;
  *(v208 + 40) = v184;
  v218 = v235;
  *(v208 + 48) = v209;
  *(v208 + 56) = v218;
  *(v208 + 64) = v210;
  *(v208 + 72) = v208;
  *(v208 + 80) = 0;
  *(v208 + 88) = 0;
  sub_100108180();
  *(v208 + v219) = v220;
  *(v208 + v38[12]) = v220;
  sub_100003C34(v208 + v38[14]);
  sub_10000B3B8(v208 + v221);
  sub_1001082E8(v222);
  *(v223 + 8) = v224;
  sub_1000027F8();
}

void sub_1000FD780(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v633 = a4;
  v648 = a3;
  v640 = a2;
  v13 = sub_10010834C(a5);
  v641 = type metadata accessor for TSDataSyncDatasetGroupState(v13);
  v14 = sub_10000307C(v641);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v17);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v18);
  sub_10000D478();
  sub_10000A1C0(v19);
  v20 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v20);
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_100003018();
  v25 = sub_100008280(v24);
  v646 = type metadata accessor for TSDataSyncDatasetState(v25);
  v26 = sub_100003724(v646);
  v629[2] = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_10010814C();
  __chkstk_darwin(v42);
  sub_1000062E0();
  __chkstk_darwin(v43);
  sub_100002DF4();
  __chkstk_darwin(v44);
  v46 = &v570 - v45;
  v47 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v48 = sub_1000030B8(v47);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_10000308C();
  sub_100008B9C();
  __chkstk_darwin(v51);
  sub_1001080E4();
  __chkstk_darwin(v52);
  sub_100108044();
  __chkstk_darwin(v53);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v54);
  sub_1001083F4();
  v55 = v657;
  v56 = sub_100100474(a1);
  if (v55)
  {
    return;
  }

  v620 = v6;
  v619[0] = v8;
  v617 = v10;
  v614 = v5;
  v624 = v46;
  v619[1] = v11;
  v618 = v9;
  v616 = v7;
  v622 = 0;
  v623 = a1;
  v57 = *(v640 + v641[5]);
  v652 = *(v640 + v641[8]);
  v58 = v652;
  v59 = v56;
  v60 = *(v648 + *(type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0) + 28));
  v62 = *(v60 + 64);
  v61 = v60 + 64;
  v63 = *(v60 + 32);
  sub_1000DB9A4();
  v66 = v65 & v64;
  v68 = (v67 + 63) >> 6;
  v615 = 0x8000000100273930;

  v621 = v58;

  v644 = v60;

  v69 = 0;
  v648 = v57;
  v645 = v57;
  sub_100004238();
  sub_1001086F0();
  v657 = v59;
  v643 = v70;
  v642 = v68;
  if (!v66)
  {
LABEL_3:
    while (1)
    {
      v72 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v72 >= v71)
      {

        sub_1000031A4();
        v657 = v523;
        sub_100108284(&__dst[5]);
        v524 = v634;
        sub_100107DFC();
        v525 = v641;
        v526 = v641[6];
        sub_10003D1E4();
        v527 = v525[7];
        sub_10003D1E4();
        v528 = v525[10];
        v648 = *(v61 + v525[9]);
        v529 = *(v61 + v528);
        v647 = *(v61 + v528 + 8);
        v530 = *(v61 + v528 + 16);
        v639 = *(v61 + v528 + 24);
        v531 = v525[5];
        sub_1001081BC();
        *(v524 + v532) = v533;
        v534 = v621;
        *(v524 + v525[8]) = v621;
        *(v524 + v525[9]) = v535;
        v536 = (v524 + v525[10]);
        *v536 = v529;
        v536[1] = v537;
        v536[2] = v539;
        v536[3] = v538;
        v540 = v539;
        sub_10010869C(v652);
        sub_100108290(&__dst[2]);
        sub_100107DFC();
        v646 = v525[6];
        sub_10003D1E4();
        v644 = v525[7];
        sub_10003D1E4();
        sub_100108204(v656);
        v541 = v639;
        sub_1001071F4(v542, v543);

        v544 = sub_100108828();
        v640 = v540;
        sub_1001071F4(v544, v545);
        sub_100005CC4(&v655 + 8);

        v546 = sub_100108828();
        sub_1001071F4(v546, v547);
        v645 = v527;

        sub_10010826C();

        sub_10000764C();
        v648 = v548;
        sub_100107DA4(v524, v549);
        *(v61 + v525[5]) = v527;
        *(v61 + v525[8]) = v534;
        v550 = v643;
        *(v61 + v525[9]) = v643;
        v551 = (v61 + v525[10]);
        *v551 = v529;
        v551[1] = &qword_1002DA970;
        v552 = v640;
        v551[2] = v640;
        v551[3] = v541;
        v553 = v635;
        sub_100107DFC();
        v642 = v525[6];
        sub_100107FF8();
        sub_10003D1E4();
        v646 = v525[7];
        sub_100108328(&v655);
        sub_10003D1E4();
        sub_100005CC4(&v655 + 8);

        sub_100107DA4(v61, v648);
        *(v553 + v525[5]) = &qword_1002318B0;
        *(v553 + v525[8]) = _swiftEmptyArrayStorage;
        v554 = v550;
        *(v553 + v525[9]) = v550;
        v555 = v553 + v525[10];
        sub_1000ED3A4();
        *v556 = v529;
        v556[1] = v557;
        v556[2] = v552;
        v556[3] = v541;
        v558 = v623[3];
        v647 = v623[2];
        v559 = v623[4];
        v560 = v623[5];
        v561 = v636;
        sub_100107DFC();
        v562 = v525[6];
        sub_10010809C();
        sub_10003D1E4();
        v563 = v525[7];
        sub_10010809C();
        sub_10003D1E4();

        sub_100107DA4(v553, v648);
        v564 = v525[5];
        sub_1001081BC();
        *(v561 + v565) = v566;
        *(v561 + v525[8]) = _swiftEmptyArrayStorage;
        *(v561 + v525[9]) = v554;
        v567 = v561 + v525[10];
        sub_1000ED3A4();
        *v568 = v569;
        v568[1] = v558;
        v568[2] = v559;
        v568[3] = v560;
        return;
      }

      v66 = *(v70 + 8 * v72);
      ++v69;
      if (v66)
      {
        v69 = v72;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_7:
  while (1)
  {
    v73 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v74 = (*(v644 + 48) + ((v69 << 10) | (16 * v73)));
    v75 = *v74;
    v76 = v74[1];
    v77 = *(v59 + 16);

    v647 = v75;
    if (v77)
    {
      v78 = sub_10014EB30(v75, v76);
      v59 = v657;
      if (v79)
      {
        break;
      }
    }

    if (*(v648 + 2) && (v80 = sub_10010878C(), sub_10014EB30(v80, v76), v59 = v657, (v81 & 1) != 0))
    {
      v85 = *(v648 + 7);
      sub_100108558();
      v594 = v86;
      sub_100006D1C();
      sub_100108708(v651);
      sub_100107DFC();
      sub_100007FA8();
      v611 = v87;
      sub_100107FA0();
      v88 = v646;
      v89 = *(v646 + 32);
      v90 = v10;
      v91 = type metadata accessor for Date();
      sub_100007B78();
      sub_100002728(v92, v93, v94, v91);
      v95 = v10[1];
      v610 = *v10;
      v605 = v95;
      v96 = v10[3];
      v609 = v10[2];
      v606 = v96;
      v97 = v10[5];
      v608 = v10[4];
      v612 = v97;
      v98 = v10[7];
      v607 = v10[6];
      v613 = v98;
      (*(*(v91 - 8) + 16))(v58 + v88[9], v10 + v88[9], v91);
      v99 = v88[10];
      sub_10003D1E4();
      v100 = v88[12];
      v604 = *(v10 + v88[11]);
      sub_10003D1E4();
      v101 = v88[14];
      v102 = (v10 + v88[13]);
      v103 = v102[1];
      v600 = *v102;
      v603 = v103;
      v104 = v90 + v101;
      v105 = *(v90 + v101);
      sub_1001087E4(v104);
      LODWORD(v601) = v106;
      v107 = v88[16];
      v108 = (v90 + v88[15]);
      v110 = *v108;
      v109 = v108[1];
      v598 = v110;
      v597 = v109;
      LODWORD(v599) = *(v90 + v107);
      v111 = v88[18];
      LODWORD(v596) = *(v90 + v88[17]);
      v112 = *(v90 + v111);
      v113 = v88[20];
      v595 = *(v90 + v88[19]);
      sub_10003D1E4();
      v114 = v605;
      *v58 = v610;
      *(v58 + 8) = v114;
      v115 = v606;
      *(v58 + 16) = v609;
      *(v58 + 24) = v115;
      v116 = v612;
      *(v58 + 32) = v608;
      *(v58 + 40) = v116;
      v117 = v613;
      *(v58 + 48) = v607;
      *(v58 + 56) = v117;
      sub_100108564(v88[11]);
      v118 = (v58 + v88[13]);
      *v118 = v600;
      v118[1] = v103;
      sub_10000A834((v58 + v88[14]));
      sub_100010E0C(v119);
      v120 = (v58 + v88[15]);
      v121 = v597;
      *v120 = v598;
      v120[1] = v121;
      sub_1000051EC(v88[16]);
      sub_1000051EC(v88[17]);
      *(v58 + v88[18]) = v112;
      *(v58 + v88[19]) = v595;
      sub_100107FA0();

      sub_1001082F4();

      sub_10000B358(&v655 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v649 = v114;
      v123 = sub_10010878C();
      v10 = v76;
      sub_10014EB30(v123, v76);
      sub_10000B818();
      v128 = v126 + v127;
      if (__OFADD__(v126, v127))
      {
        goto LABEL_91;
      }

      v61 = v124;
      v129 = v125;
      sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v128))
      {
        v130 = sub_10010878C();
        v131 = sub_10014EB30(v130, v76);
        if ((v129 & 1) != (v132 & 1))
        {
          goto LABEL_98;
        }

        v61 = v131;
      }

      v59 = v657;
      if ((v129 & 1) == 0)
      {
        v366 = v649;
        sub_1001086C0();
        sub_1000035B8(v367);
        v368 = v366[6] + 16 * v61;
        sub_1000ED3A4();
        *v369 = v370;
        v369[1] = v76;
        sub_1001087F0(v366[7]);
        sub_100007FA8();
        sub_100107FA0();
        sub_100004ADC();
        v371 = sub_100003EA8(&__dst[4] + 8);
        sub_100107DA4(v371, v372);
        sub_1001086CC();
        if (v171)
        {
          goto LABEL_95;
        }

        v645 = v366;
        v366[2] = v373;
        v58 = v638;
        goto LABEL_82;
      }

      sub_10010811C();
      sub_1001087F0(*(v133 + 56));
      sub_100107190(v632, v134);
      sub_100004ADC();
      v135 = sub_100003EA8(&__dst[4] + 8);
      sub_100107DA4(v135, v136);
      v58 = v638;
      sub_1001086F0();
    }

    else
    {
    }

LABEL_12:
    v70 = v643;
    v71 = v642;
    if (!v66)
    {
      goto LABEL_3;
    }
  }

  memcpy(__dst, (*(v657 + 56) + 96 * v78), sizeof(__dst));
  sub_1000E3AC8(__dst, &v649);
  v609 = v76;
  sub_1001ABF58(v75, v76, v648, v620);
  sub_10003D1E4();
  v82 = v646;
  sub_10000B3A0(v61, 1, v646);
  if (v457)
  {
    v83 = sub_100108774();
    sub_100004E24(v83, v84, &qword_100232F70);
    v137 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v137 = *(v61 + *(v82 + 18));

    sub_100004ADC();
    sub_100107DA4(v61, v138);
  }

  v140 = *(*(&__dst[3] + 1) + 64);
  v139 = *(&__dst[3] + 1) + 64;
  v141 = *(*(&__dst[3] + 1) + 32);
  sub_1000DB9A4();
  v144 = v143 & v142;
  v146 = (v145 + 63) >> 6;
  v608 = v147;

  v148 = 0;
  v607 = v139;
  v606 = v146;
  if (v144)
  {
LABEL_28:
    while (1)
    {
      v150 = (v148 << 10) | (16 * __clz(__rbit64(v144)));
      v151 = (*(v608 + 48) + v150);
      v153 = *v151;
      v152 = v151[1];
      v154 = (*(v608 + 56) + v150);
      v155 = v154[1];
      v611 = *v154;

      v612 = v155;

      v156 = swift_isUniquelyReferenced_nonNull_native();
      v649 = v137;
      v157 = sub_100108690(&v636);
      v613 = v152;
      v158 = sub_10014EB30(v157, v152);
      v160 = v137[2];
      v161 = (v159 & 1) == 0;
      v162 = v160 + v161;
      if (__OFADD__(v160, v161))
      {
        goto LABEL_89;
      }

      v163 = v158;
      v164 = v159;
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      v82 = &v649;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v156, v162))
      {
        v82 = v649;
        v165 = sub_1001087C0();
        v166 = sub_10014EB30(v165, v613);
        if ((v164 & 1) != (v167 & 1))
        {
          goto LABEL_98;
        }

        v163 = v166;
      }

      if (v164)
      {
        sub_1001082F4();

        v137 = v649;
        v168 = (v649[7] + 16 * v163);
        v169 = v168[1];
        sub_100002A38(v168);
      }

      else
      {
        v137 = v649;
        sub_1000035B8(&v649[v163 >> 6]);
        sub_100002A38((v137[6] + 16 * v163));
        sub_100002A38((v137[7] + 16 * v163));
        v170 = v137[2];
        v171 = __OFADD__(v170, 1);
        v172 = v170 + 1;
        if (v171)
        {
          goto LABEL_90;
        }

        v137[2] = v172;
      }

      v139 = v607;
      v146 = v606;
      v144 &= v144 - 1;
      if (!v144)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v149 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      goto LABEL_87;
    }

    if (v149 >= v146)
    {
      break;
    }

    v144 = *(v139 + 8 * v149);
    ++v148;
    if (v144)
    {
      v148 = v149;
      goto LABEL_28;
    }
  }

  sub_10010851C();
  sub_100108708(&v645);
  sub_10003D1E4();
  v173 = sub_10000A218();
  v174 = v646;
  sub_10000B3A0(v173, v175, v646);
  v571 = v137;
  if (v457)
  {
    v176 = v82;
    v177 = v174[8];
    v178 = type metadata accessor for Date();
    v197 = v624;
    sub_100007B78();
    sub_100002728(v179, v180, v181, v178);
    v182 = v197 + v174[9];
    static Date.distantPast.getter();
    v183 = sub_10000D500(v174[10]);
    sub_100002728(v183, v184, v185, v178);
    v186 = sub_10000D500(v174[12]);
    sub_100002728(v186, v187, v188, v178);
    Dictionary.init(dictionaryLiteral:)();
    v189 = v174[20];
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v190, v191, v192, v193);
    sub_100108074();
    sub_1001080F4();
    *v194 = 0;
    v194[1] = 0;
    sub_10010845C();
    sub_100108004(v195);
    sub_100004044();
    *(v197 + v196) = _swiftEmptyArrayStorage;
    sub_10000B3A0(v176, 1, v174);
    v198 = v633;
    v199 = v631;
    if (!v457)
    {
      sub_100004E24(v619[0], &qword_1002DBC28, &qword_100232F70);
    }
  }

  else
  {
    sub_100007FA8();
    v197 = v624;
    sub_100107FA0();
    v198 = v633;
    v199 = v631;
  }

  v200 = v174[20];
  v201 = type metadata accessor for Date();
  sub_10000307C(v201);
  v203 = *(v202 + 16);
  v204 = (v202 + 16);
  v203(v199, v198, v201);
  v599 = v204;
  v602 = v203;
  sub_10000B7B0();
  v603 = v201;
  sub_100002728(v205, v206, v207, v201);
  v577 = v200;
  v208 = v618;
  sub_100100C70(__dst, v620, v199, v618 + v200);
  sub_100004E24(v199, &qword_1002DA970, &qword_1002318B0);
  type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000B7B0();
  sub_100002728(v209, v210, v211, v212);
  v213 = v197[1];
  v601 = *v197;
  v611 = v213;
  v214 = v197[3];
  v592 = v197[2];
  v590 = v214;
  v215 = v197[5];
  v593 = v197[4];
  v594 = v215;
  v216 = v197[7];
  v596 = v197[6];
  sub_100108780(v216);
  sub_100107FF8();
  v576 = *(v217 + 32);
  v589 = v197 + v576;
  sub_10003D1E4();
  sub_100107FF8();
  v219 = *(v218 + 36);
  v588 = v197 + v219;
  (v203)(v208 + v219);
  sub_100107FF8();
  v575 = *(v220 + 40);
  v587 = v197 + v575;
  sub_1001084F8();
  sub_10003D1E4();
  sub_100107FF8();
  v585 = *(v221 + 44);
  sub_100107FF8();
  v223 = *(v222 + 48);
  sub_10001042C();
  v608 = *(v224 + v225);
  sub_10001042C();
  v573 = v226;
  v586 = v227 + v226;
  sub_1001084F8();
  sub_10003D1E4();
  sub_100107FF8();
  v229 = *(v228 + 52);
  sub_1001080AC();
  v231 = *(v230 + 56);
  v584 = (v624 + v232);
  v233 = *(v624 + v232 + 8);
  v605 = *(v624 + v232);
  sub_10001042C();
  v583 = (v234 + v235);
  v236 = *(v234 + v235);
  sub_1001087E4(v583);
  LODWORD(v606) = v237;
  sub_100107FF8();
  v239 = *(v238 + 60);
  sub_1001080AC();
  v582 = *(v240 + 64);
  LODWORD(v598) = *(v624 + v582);
  sub_100107FF8();
  v581 = *(v241 + 68);
  sub_100107FF8();
  v580 = *(v242 + 72);
  sub_10001042C();
  LODWORD(v597) = *(v243 + v244);
  v578 = v245;
  v246 = v245[1];
  v604 = *v245;
  v613 = v246;
  sub_10001042C();
  v612 = *(v247 + v248);
  v249 = v612;
  sub_100107FF8();
  v579 = *(v250 + 76);
  sub_10001042C();
  v600 = *(v251 + v252);
  v253 = v600;

  sub_1000026F4(&v637);

  sub_1001080B8(&v621);

  sub_100108284(v625);

  sub_10000A81C(&v626);

  v610 = v233;

  v591 = type metadata accessor for TSDataSyncDatasetState;
  v254 = sub_100108414();
  sub_100107DA4(v254, v255);
  *v208 = v601;
  v208[1] = v201;
  v208[2] = v592;
  v208[3] = v249;
  v208[4] = v593;
  v208[5] = v253;
  sub_100108420();
  v208[6] = v256;
  v208[7] = v197;
  sub_100107FF8();
  v258 = *(v257 + 44);
  sub_100003038();
  *(v208 + v259) = v260;
  sub_100107FF8();
  sub_100108668(v261);
  *v262 = v263;
  v262[1] = v233;
  sub_100107FF8();
  sub_1000069E4(v208 + *(v264 + 56));
  sub_100107FF8();
  sub_10000AFB4((v208 + *(v265 + 60)));
  *(v208 + v266) = v267;
  sub_100107FF8();
  *(v208 + *(v268 + 68)) = v597;
  sub_100107FF8();
  v270 = v612;
  *(v208 + *(v269 + 72)) = v612;
  sub_100107FF8();
  *(v208 + *(v271 + 76)) = v600;
  sub_100107FF8();
  v574 = *(v272 + 32);
  sub_10010863C(&v646);
  sub_10003D1E4();
  sub_100107FF8();
  v576 = *(v273 + 36);
  sub_100108160();
  v274();
  sub_100107FF8();
  v276 = *(v275 + 40);
  sub_1001087FC();
  sub_100007664();
  sub_10003D1E4();
  sub_100107FF8();
  v572 = *(v277 + 48);
  sub_10010808C(&v605);
  sub_100007664();
  sub_10003D1E4();
  sub_100107FF8();
  v575 = *(v278 + 80);
  sub_10010808C(&v609);
  sub_10003D1E4();
  swift_bridgeObjectRetain_n();
  sub_100108334();
  swift_bridgeObjectRetain_n();
  sub_100108284(v625);
  swift_bridgeObjectRetain_n();
  sub_10000B358(&v626);
  swift_bridgeObjectRetain_n();
  sub_1001080B8(&v636);
  swift_bridgeObjectRetain_n();
  sub_1001082F4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1000026F4(v629);

  v279 = v208;
  sub_100107DA4(v208, v591);
  v280 = v611;
  *v208 = v601;
  v208[1] = v280;
  v208[2] = v592;
  v208[3] = v249;
  v208[4] = v593;
  v208[5] = &qword_1002318B0;
  sub_100108420();
  v208[6] = v281;
  v208[7] = &qword_1002DA970;
  sub_100107FF8();
  v283 = *(v282 + 44);
  sub_100003038();
  *(v208 + v284) = v285;
  sub_100107FF8();
  sub_100108668(v286);
  *v287 = v288;
  v287[1] = v249;
  sub_100107FF8();
  sub_1000069E4(v208 + *(v289 + 56));
  sub_100107FF8();
  sub_10000AFB4((v208 + *(v290 + 60)));
  *(v208 + v291) = v292;
  sub_100107FF8();
  LOBYTE(v208) = v597;
  *(v279 + *(v293 + 68)) = v597;
  sub_100107FF8();
  *(v279 + *(v294 + 72)) = v612;
  sub_100107FF8();
  *(v279 + *(v295 + 76)) = v270;
  v296 = v623 + *(type metadata accessor for TSDataSyncServerDatasetGroupResponse(0) + 28);
  v297 = sub_1000026F4(v619);
  v298 = v603;
  v299 = v602;
  v602(v297);
  sub_10000B7B0();
  sub_100002728(v300, v301, v302, v298);
  sub_100004FB0(&v606);
  sub_10003D1E4();
  v299(v588, v279 + v576, v298);
  sub_100004FB0(&v604);
  sub_100002854();
  sub_10003D1E4();
  sub_100107FF8();
  v304 = (v624 + *(v303 + 80));
  sub_100004FB0(&v607);
  v305 = v624;
  sub_10003D1E4();
  sub_10000B358(v629);

  sub_100107DA4(v279, v591);
  v306 = v601;
  v307 = v613;
  v308 = v604;
  v309 = v611;
  *v305 = v601;
  v305[1] = v309;
  v310 = v590;
  v305[2] = v592;
  v305[3] = v310;
  v311 = v610;
  v312 = v605;
  v313 = v594;
  v305[4] = v593;
  v305[5] = v313;
  v314 = v595;
  v305[6] = v596;
  v305[7] = v314;
  *(v305 + v585) = v608;
  v315 = v584;
  *v584 = v312;
  v315[1] = v311;
  v316 = v583;
  *v583 = v607;
  *(v316 + 8) = v606;
  v317 = v578;
  *v578 = v308;
  v317[1] = v307;
  *(v305 + v582) = v598;
  *(v305 + v581) = v208;
  *(v305 + v580) = v612;
  *(v305 + v579) = v298;
  if ((BYTE2(__dst[3]) & 1) == 0)
  {
    v654 = __dst[0];
    v322 = v306;
    v323 = v646;
    v592 = *(v646 + 32);
    v324 = v309;
    sub_10003D1E4();
    v585 = *(v323 + 36);
    (v602)(v279 + v585, v588, v603);
    sub_100107FF8();
    v591 = *(v325 + 40);
    sub_10003D1E4();
    sub_100107FF8();
    v590 = *(v326 + 48);
    sub_10003D1E4();
    sub_100107FF8();
    v589 = *(v327 + 80);
    sub_10003D1E4();
    *v279 = v322;
    *(v279 + 8) = v324;
    *(v279 + 16) = v654;
    v328 = v594;
    *(v279 + 32) = v593;
    *(v279 + 40) = v328;
    v329 = v595;
    *(v279 + 48) = v596;
    *(v279 + 56) = v329;
    sub_100107FF8();
    v331 = *(v330 + 44);
    sub_100003038();
    *(v279 + v332) = v333;
    sub_100107FF8();
    v335 = (v279 + *(v334 + 52));
    v336 = v610;
    *v335 = v605;
    v335[1] = v336;
    sub_100107FF8();
    sub_1000069E4(v279 + *(v337 + 56));
    sub_100107FF8();
    sub_10000AFB4((v279 + *(v338 + 60)));
    *(v279 + v339) = v340;
    sub_100107FF8();
    *(v279 + *(v341 + 68)) = v597;
    sub_100107FF8();
    *(v279 + *(v342 + 72)) = v612;
    sub_100107FF8();
    *(v279 + *(v343 + 76)) = v600;
    *(v344 + 16) = __dst[1];
    sub_100107FF8();
    v346 = v630;
    v347 = v630 + *(v345 + 32);
    sub_100004FB0(&v623);
    v593 = v348;
    sub_10003D1E4();
    sub_100107FF8();
    v592 = v346 + *(v349 + 36);
    sub_100108160();
    v350();
    sub_100107FF8();
    v352 = v346 + *(v351 + 40);
    sub_100004FB0(&v622);
    v353 = v646;
    v591 = v354;
    sub_10010861C();
    sub_10003D1E4();
    v355 = v346 + v353[12];
    sub_100004FB0(&v621);
    v590 = v356;
    sub_10010861C();
    sub_10003D1E4();
    v357 = v346 + v353[20];
    sub_100004FB0(&v620);
    v589 = v358;
    sub_10003D1E4();

    v588 = *(&v655 + 1);
    sub_1001087C0();

    sub_100003EA8(&v639);

    sub_100108534();
    sub_10003D1E4();

    sub_1001080B8(&v626);

    sub_1001087C0();

    sub_10000B358(&v638);

    sub_100003EA8(v629);

    sub_100108534();
    sub_10003D1E4();

    sub_1001087C0();

    sub_10000A81C(&v639);

    sub_100108534();
    sub_10003D1E4();
    sub_1001088F0();
    sub_100004ADC();
    sub_100107DA4(v279, v359);
    sub_10000CFD8();
    sub_100108420();
    *(v346 + 48) = v360;
    *(v346 + 56) = &qword_1002318B0;
    sub_10000F000();
    sub_100002A38(v361);
    sub_1000069E4(v346 + v353[14]);
    v362 = (v346 + v353[15]);
    *v362 = v604;
    v362[1] = v324;
    sub_10000EDF4();
    *(v346 + v363) = v324;
    *(v346 + v353[19]) = &qword_1002DA970;
    v364 = *(&__dst[2] + 1);
    if (*(&__dst[2] + 1))
    {
      sub_100108780(*&__dst[2]);

      v596 = v364;
      v365 = v629[0];
      sub_100108628();
    }

    else
    {
      sub_10010851C();
      sub_100108290(&v640);
      sub_10003D1E4();
      sub_10000B3A0(v346, 1, v353);
      v365 = v629[0];
      if (v457)
      {

        v473 = sub_100108774();
        sub_100004E24(v473, v474, &qword_100232F70);
        v595 = 0;
        v596 = 0;
      }

      else
      {
        v475 = *(v346 + 56);
        sub_100108780(*(v346 + 48));
        sub_1001088F0();
        sub_100108438(v627);

        sub_100004ADC();
        sub_100107DA4(v346, v476);
      }

      sub_100108628();
    }

    sub_100108834(v353[8]);
    sub_10003D1E4();
    v588 = v353[9];
    sub_100108014();
    v477();
    sub_100108834(v353[10]);
    sub_10003D1E4();
    sub_100108834(v353[12]);
    sub_10003D1E4();
    v478 = v365;
    sub_100108834(v353[20]);
    sub_10003D1E4();

    v479 = v600;

    sub_100004ADC();
    v594 = v480;
    sub_100107DA4(v630, v481);
    sub_10000CFD8();
    sub_100108420();
    *(v478 + 48) = v483;
    *(v478 + 56) = v482;
    sub_10000F000();
    v485 = *(v484 - 256);
    *v486 = v487;
    v486[1] = v485;
    sub_1000069E4(v478 + v353[14]);
    v488 = v478 + v353[15];
    sub_1001083D4();
    v490 = *(v489 - 256);
    *v491 = v492;
    v491[1] = v490;
    sub_10000EDF4();
    sub_10000AD68(v493);
    *(v478 + v353[19]) = v479;
    LODWORD(v598) = LOBYTE(__dst[3]);
    v592 = v353[8];
    sub_1001081B0();
    v494 = v628[2];
    sub_1001085A0();
    v593 = v353[9];
    sub_100108014();
    v495();
    v590 = v353[10];
    sub_1001081B0();
    sub_1001085A0();
    v589 = v353[12];
    sub_1001081B0();
    sub_1001085A0();
    v591 = v353[20];
    sub_1001081B0();
    sub_10003D1E4();
    sub_100003EA8(&v637);

    sub_1001085D4(&v638);
    sub_1001088F0();
    sub_100108534();
    sub_10003D1E4();

    sub_10000B358(&v636);

    sub_1001082F4();

    sub_1001085D4(v629);
    sub_100108534();
    sub_10003D1E4();
    sub_1001088F0();
    sub_10000A81C(v627);

    sub_100107DA4(v478, v594);
    *v494 = v601;
    *(v494 + 1) = &qword_1002DA970;
    v496 = v655;
    *(v494 + 1) = v654;
    *(v494 + 2) = v496;
    sub_100108690(v627);

    sub_1000E3B00(__dst);
    *(v494 + 6) = v595;
    *(v494 + 7) = &qword_100238200;
    v497 = v353[11];
    sub_100003038();
    *&v494[v498] = v499;
    v500 = &v494[v353[13]];
    *v500 = v605;
    *(v500 + 1) = v485;
    sub_1000069E4(&v494[v353[14]]);
    v501 = &v494[v353[15]];
    sub_1001083D4();
    sub_100002A38(v502);
    sub_1000051EC(v353[16]);
    sub_1000051EC(v353[17]);
    sub_100108564(v353[18]);
    *&v494[v353[19]] = v490;
    LODWORD(v597) = BYTE1(__dst[3]);
    v503 = v353[8];
    sub_100008AC4();
    v504 = v628[1];
    v10 = &qword_1002318B0;
    sub_10003D1E4();
    v505 = &v504[v353[9]];
    sub_100108014();
    v506();
    v507 = v353[10];
    sub_100008AC4();
    sub_10003D1E4();
    v508 = v353[12];
    sub_100008AC4();
    sub_10003D1E4();
    v509 = v353[20];
    sub_100008AC4();
    sub_10003D1E4();

    v510 = v594;
    sub_100107DA4(v494, v594);
    sub_10000CFD8();
    sub_100108420();
    *(v504 + 6) = v512;
    *(v504 + 7) = v511;
    sub_10000F000();
    sub_100002A38(v513);
    sub_1000069E4(&v504[v353[14]]);
    v514 = &v504[v353[15]];
    sub_1001083D4();
    sub_100002A38(v515);
    sub_10000EDF4();
    sub_10000AD68(v516);
    *&v504[v353[19]] = v490;
    v58 = v571;
    sub_1001098C0(v571, v628[0]);

    v517 = sub_100108774();
    sub_100107DA4(v517, v518);
    sub_100007FA8();
    sub_100108290(&v646);
    sub_100107FA0();
    sub_10000B358(&v655 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100108300();
    v520 = *(v519 - 256);
    v61 = v609;
    sub_10014FF48();

    sub_10010811C();
    v521 = sub_100108414();
    sub_100107DA4(v521, v510);
    v522 = sub_10010851C();
    sub_100004E24(v522, &qword_1002DBC28, &qword_100232F70);
    sub_100004238();
LABEL_82:
    sub_1001086F0();
LABEL_83:
    v59 = v657;
    goto LABEL_12;
  }

  v318 = v602;
  v319 = v603;
  sub_1000E3B00(__dst);
  sub_100006D1C();
  sub_100108290(v650);
  sub_100107DFC();
  sub_10010851C();
  v320 = v617;
  sub_10003D1E4();
  v321 = v646;
  sub_10000B3A0(v320, 1, v646);
  if (v457)
  {
    sub_100004E24(v320, &qword_1002DBC28, &qword_100232F70);
    v374 = 0;
  }

  else
  {
    v374 = *(v320 + *(v321 + 44));
    sub_100004ADC();
    sub_100107DA4(v320, v375);
  }

  v611 = v374 + 1;
  v376 = v599;
  if (v374 == -1)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v377 = v319;
  v378 = v304[1];
  v610 = *v304;
  v594 = v378;
  v379 = v304[3];
  v607 = v304[2];
  v597 = v379;
  v380 = v304[5];
  v608 = v304[4];
  sub_100108780(v380);
  v381 = v304[7];
  v606 = v304[6];
  v596 = v381;
  sub_100107FF8();
  sub_100108340(*(v382 + 32));
  v58 = v626;
  v384 = v383;
  sub_10003D1E4();
  sub_100107FF8();
  v592 = *(v385 + 36);
  v318(v58 + v592, v304 + v592, v377);
  sub_100107FF8();
  sub_100108340(*(v386 + 40));
  sub_10003D1E4();
  sub_100107FF8();
  sub_100108340(*(v387 + 48));
  sub_10003D1E4();
  sub_100107FF8();
  v389 = *(v388 + 52);
  sub_1001080AC();
  v391 = *(v390 + 56);
  v393 = (v304 + v392);
  v395 = *v393;
  v394 = v393[1];
  v604 = v395;
  v612 = v394;
  v396 = v304 + v391;
  v397 = *(v304 + v391);
  sub_1001087E4(v396);
  LODWORD(v605) = v398;
  sub_100107FF8();
  v400 = *(v399 + 60);
  sub_1001080AC();
  v402 = *(v401 + 64);
  v404 = (v304 + v403);
  v405 = v404[1];
  v586 = *v404;
  v585 = v405;
  LODWORD(v600) = *(v304 + v402);
  sub_100107FF8();
  v407 = *(v406 + 68);
  sub_1001080AC();
  v409 = *(v408 + 72);
  LODWORD(v598) = *(v304 + v410);
  v593 = *(v304 + v409);
  v411 = v593;
  sub_100107FF8();
  v413 = *(v412 + 76);
  sub_1001080AC();
  v588 = *(v414 + 80);
  v613 = *(v304 + v415);
  v416 = v613;
  sub_10003D1E4();

  sub_10000B358(v625);

  sub_1000026F4(&v626);

  sub_100003EA8(v628);

  sub_10000A81C(v627);

  sub_1001085D4(&v638);
  sub_100004ADC();
  v587 = v417;
  sub_100107DA4(v304, v418);
  *v58 = v610;
  *(v58 + 8) = v405;
  *(v58 + 16) = v607;
  *(v58 + 24) = v416;
  *(v58 + 32) = v608;
  *(v58 + 40) = v376;
  *(v58 + 48) = v606;
  *(v58 + 56) = v411;
  sub_100107FF8();
  sub_100108564(*(v419 + 44));
  sub_100107FF8();
  v421 = (v58 + *(v420 + 52));
  *v421 = v604;
  v421[1] = v384;
  sub_100107FF8();
  sub_10000A834((v58 + *(v422 + 56)));
  sub_100010E0C(v423);
  sub_100107FF8();
  sub_100002A38((v58 + *(v424 + 60)));
  sub_100107FF8();
  sub_1000051EC(*(v425 + 64));
  sub_100107FF8();
  sub_1000051EC(*(v426 + 68));
  sub_100107FF8();
  v10 = v593;
  *(v58 + *(v427 + 72)) = v593;
  sub_100107FF8();
  sub_100108564(*(v428 + 76));
  sub_100107FF8();
  v430 = *(v429 + 32);
  sub_100008AC4();
  v431 = v646;
  sub_1001082C4();
  sub_10003D1E4();
  v432 = v376 + v431[9];
  sub_100108160();
  v433();
  v434 = v431[10];
  sub_100008AC4();
  sub_100108228();
  sub_10003D1E4();
  v435 = v431[12];
  sub_100008AC4();
  sub_100108228();
  sub_10003D1E4();
  v436 = v431[20];
  sub_100008AC4();
  sub_10003D1E4();
  sub_1001085D4(v625);
  sub_10000A81C(&v626);

  sub_1001082F4();

  sub_100003EA8(v628);

  sub_10000B358(v627);

  sub_100108204(v619);
  sub_100107DA4(v437, v438);
  *v376 = v610;
  v376[1] = &qword_1002318B0;
  v376[2] = v607;
  v376[3] = v10;
  v376[4] = v608;
  v376[5] = v411;
  v376[6] = v606;
  v376[7] = &qword_1002DA970;
  sub_1000DB94C(v431[11]);
  sub_100002A38((v376 + v431[13]));
  sub_10000A834((v376 + v431[14]));
  sub_100010E0C(v439);
  v440 = (v376 + v431[15]);
  *v440 = 0xD000000000000015;
  v440[1] = v615;
  sub_100108278(v431[16]);
  sub_100108278(v431[17]);
  sub_1000DB94C(v431[18]);
  sub_1000DB94C(v431[19]);
  v61 = v616;
  sub_100109674(1, 0, v616);
  sub_100107DA4(v376, v58);
  sub_100007FA8();
  sub_100108290(&v646);
  sub_100107FA0();
  sub_1001080B8(&v635);

  sub_10000B358(&v655 + 8);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100108300();
  sub_100108290(v441);
  sub_10014FF48();

  sub_10010811C();
  v442 = v652;
  sub_100108334();
  swift_bridgeObjectRetain_n();
  v443 = v622;
  v444 = sub_100107CCC(v442, v61, v58);
  v622 = v443;
  if (v445)
  {
    v446 = *(v442 + 16);
    sub_100004238();
    sub_1001086F0();
    goto LABEL_75;
  }

  v447 = v444 + 1;
  v58 = v638;
  v10 = v639;
  v61 = v637;
  if (__OFADD__(v444, 1))
  {
    goto LABEL_97;
  }

  v611 = v444;
  sub_100108030();
  v451 = v442;
  while (2)
  {
    v452 = *(v451 + 16);
    if (v447 != v452)
    {
      if (v447 >= v452)
      {
        goto LABEL_88;
      }

      v453 = v61;
      v454 = v10;
      v455 = *(v451 + v450 + 48);
      v456 = *(v451 + v450 + 56);
      v457 = v455 == v448 && v456 == v449;
      if (v457)
      {
        v10 = v454;
      }

      else
      {
        v612 = v450;
        v613 = v451;
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v10 = v454;
          v61 = v453;
          sub_100108030();
          sub_1001087AC();
LABEL_73:
          ++v447;
          v450 += 16;
          continue;
        }

        if (v447 == v611)
        {
          v10 = v454;
          sub_100108030();
          sub_1001087AC();
        }

        else
        {
          if (v611 >= v452)
          {
            goto LABEL_92;
          }

          v458 = (v613 + 32 + 16 * v611);
          v459 = v458[1];
          v610 = *v458;
          v608 = v459;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v467 = sub_1001082F4();
            sub_1001612A4(v467);
            v613 = v468;
          }

          v460 = v613;
          v461 = v613 + 16 * v611;
          v462 = *(v461 + 40);
          *(v461 + 32) = v455;
          *(v461 + 40) = v456;

          if (v447 >= *(v460 + 16))
          {
            goto LABEL_93;
          }

          v463 = *(v460 + v612 + 56);
          sub_100003038();
          *(v464 + 48) = v466;
          *(v464 + 56) = v465;

          v652 = v613;
          v10 = v454;
          sub_100108030();
        }

        ++v611;
      }

      v61 = v453;
      goto LABEL_73;
    }

    break;
  }

  v442 = v451;
  v446 = v611;
LABEL_75:

  sub_10000A81C(&v635);

  v469 = *(v442 + 16);
  if (v469 >= v446)
  {
    sub_100107EB0(v446, v469);

    sub_100004ADC();
    v470 = sub_100108414();
    sub_100107DA4(v470, v471);
    v472 = sub_10010851C();
    sub_100004E24(v472, &qword_1002DBC28, &qword_100232F70);
    goto LABEL_83;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100100474(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = sub_1000030B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  sub_1000D6484();
  result = Dictionary.init(dictionaryLiteral:)();
  v7 = *(a1 + 48);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return result;
  }

  v108 = result;
  v9 = 0;
  v10 = (v7 + 32);
  v95 = v8 - 1;
  v96 = *(a1 + 48);
  while (1)
  {
    if (v9 >= v8)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v106 = v10;
    v107 = v9;
    memcpy(__dst, v10, 0x88uLL);
    v12 = __dst[10];
    v11 = __dst[11];
    v13 = __dst[3];
    v109 = __dst[2];
    sub_1000E385C(__dst, v113);
    v14 = Dictionary.init(dictionaryLiteral:)();
    v110 = v13;
    if (v11)
    {
      v15 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {

        Data.init(base64Encoded:options:)();
        if (v16 >> 60 == 15)
        {
          sub_1000E3894(__dst);

LABEL_50:

          sub_1000B2EE8();
          swift_allocError();
          *v91 = 1;
          *(v91 + 8) = 0;
          swift_willThrow();
        }

        v17 = objc_opt_self();
        sub_100005CF0();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v19 = [v17 decompressedDataWithGzippedData:isa];

        if (!v19)
        {
          sub_1000E3894(__dst);

          goto LABEL_53;
        }

        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_100005CF0();
        sub_10009A7A0(v23, v24);

        static String.Encoding.utf8.getter();
        sub_10003CF5C();
        v25 = String.init(data:encoding:)();
        if (v26)
        {
          v27 = v26;
          v111 = v25;
          v28 = v20;
          v29 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v14;
          v31 = sub_10014EB30(v109, v13);
          v33 = v14[2];
          v34 = (v32 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_58;
          }

          v36 = v31;
          v37 = v32;
          sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35))
          {
            sub_10014EB30(v109, v110);
            sub_10000A224();
            if (!v39)
            {
              goto LABEL_60;
            }

            v36 = v38;
          }

          v40 = v113[0];
          if (v37)
          {
            v41 = (*(v113[0] + 56) + 16 * v36);
            v42 = v41[1];
            *v41 = v111;
            v41[1] = v27;

            v14 = v40;
          }

          else
          {
            sub_1001086C0();
            sub_1000035B8(v52);
            v53 = (v40[6] + 16 * v36);
            *v53 = v109;
            v53[1] = v110;
            v54 = (v40[7] + 16 * v36);
            *v54 = v111;
            v54[1] = v27;
            sub_1001086CC();
            if (v56)
            {
              goto LABEL_59;
            }

            v14 = v40;
            v40[2] = v55;
          }

          v50 = v28;
          v51 = v29;
        }

        else
        {
          v43 = sub_10014EB30(v109, v13);
          if (v44)
          {
            v45 = v43;
            v46 = swift_isUniquelyReferenced_nonNull_native();
            v113[0] = v14;
            v47 = v14[3];
            sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v46, v47);
            v14 = v113[0];
            v48 = *(*(v113[0] + 48) + 16 * v45 + 8);

            v49 = *(v14[7] + 16 * v45 + 8);

            _NativeDictionary._delete(at:)();
          }

          v50 = sub_10003CF5C();
        }

        sub_10000D170(v50, v51);
      }
    }

    v57 = __dst[1];
    v112 = __dst[0];
    if (__dst[9])
    {
      v58 = HIBYTE(__dst[9]) & 0xFLL;
      if ((__dst[9] & 0x2000000000000000) == 0)
      {
        v58 = __dst[8] & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        break;
      }
    }

    v103 = 0;
    v104 = 0;
LABEL_33:
    v97 = BYTE1(__dst[12]);
    v105 = v14;
    if (__dst[14])
    {
      v102 = *(__dst[14] + 16) != 0;
    }

    else
    {
      v102 = 0;
    }

    v70 = __dst[7];
    v99 = __dst[6];
    v100 = __dst[15];
    v71 = __dst[5];
    v98 = __dst[4];
    v101 = __dst[16];

    sub_1000E3894(__dst);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v108;
    v73 = v57;
    sub_10014EB30(v112, v57);
    sub_10000B818();
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_56;
    }

    v79 = v74;
    v80 = v75;
    sub_100099DF4(&qword_1002DCC50, &unk_100236620);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v72, v78))
    {
      v81 = sub_10014EB30(v112, v73);
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_60;
      }

      v79 = v81;
    }

    v83 = __dst[12];
    v84 = v97 & 1;
    if (v80)
    {
      v108 = v115;
      v85 = (v115[7] + 96 * v79);
      memcpy(v113, v85, 0x60uLL);
      *v85 = v98;
      v85[1] = v71;
      v85[2] = v99;
      v85[3] = v70;
      v85[4] = v104;
      v85[5] = v103;
      *(v85 + 48) = v84;
      *(v85 + 49) = v83;
      *(v85 + 50) = v102;
      v85[7] = v105;
      v85[8] = v100;
      v85[9] = v101;
      v85[10] = v109;
      v85[11] = v110;
      sub_1000E3B00(v113);
    }

    else
    {
      sub_1000035B8(&v115[v79 >> 6]);
      v87 = (v86[6] + 16 * v79);
      *v87 = v112;
      v87[1] = v73;
      v88 = v86[7] + 96 * v79;
      *v88 = v98;
      *(v88 + 8) = v71;
      *(v88 + 16) = v99;
      *(v88 + 24) = v70;
      *(v88 + 32) = v104;
      *(v88 + 40) = v103;
      *(v88 + 48) = v84;
      *(v88 + 49) = v83;
      *(v88 + 50) = v102;
      *(v88 + 56) = v105;
      *(v88 + 64) = v100;
      *(v88 + 72) = v101;
      *(v88 + 80) = v109;
      *(v88 + 88) = v110;
      v89 = v86[2];
      v56 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v56)
      {
        goto LABEL_57;
      }

      v108 = v86;
      v86[2] = v90;
    }

    if (v95 == v107)
    {
      return v108;
    }

    v8 = *(v96 + 16);
    v10 = v106 + 136;
    v9 = v107 + 1;
  }

  Data.init(base64Encoded:options:)();
  if (v59 >> 60 == 15)
  {
    sub_1000E3894(__dst);

    goto LABEL_50;
  }

  v60 = objc_opt_self();
  sub_100005CF0();
  v61 = Data._bridgeToObjectiveC()().super.isa;
  v62 = [v60 decompressedDataWithGzippedData:v61];

  if (v62)
  {
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = sub_100005CF0();
    sub_10009A7A0(v66, v67);

    static String.Encoding.utf8.getter();
    v68 = String.init(data:encoding:)();
    v103 = v69;
    v104 = v68;
    sub_10000D170(v63, v65);
    goto LABEL_33;
  }

  sub_1000E3894(__dst);

LABEL_53:

  sub_1000B2EE8();
  swift_allocError();
  *v92 = 2;
  *(v92 + 8) = 1;
  swift_willThrow();

  v93 = sub_100005CF0();
  return sub_10009A7A0(v93, v94);
}

void sub_100100C70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v226 = a3;
  v217 = a1;
  sub_10010834C(a4);
  v7 = type metadata accessor for Date();
  v8 = sub_100003724(v7);
  v225 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v224 = v13 - v12;
  v14 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v15 = sub_1000030B8(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000037D4();
  v230 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  sub_100002DD0();
  v229 = v20;
  sub_100005238();
  __chkstk_darwin(v21);
  sub_10000D478();
  sub_10000A1C0(v22);
  v23 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v24 = sub_1000030B8(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_1000037D4();
  v228 = v27;
  sub_100005238();
  __chkstk_darwin(v28);
  v30 = v205 - v29;
  v31 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v31);
  v33 = *(v32 + 64);
  sub_100003774();
  __chkstk_darwin(v34);
  sub_10003CF80();
  v35 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v36 = sub_10000307C(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_10000308C();
  sub_100008B9C();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v42);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v43);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v46);
  v48 = v205 - v47;
  v227 = a2;
  sub_100108774();
  sub_100002854();
  sub_10003D1E4();
  v49 = type metadata accessor for TSDataSyncDatasetState(0);
  v50 = sub_100108594();
  sub_10000B3A0(v50, v51, v49);
  if (v60)
  {
    v55 = v49;
    sub_100004E24(v30, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v52, v53, v54, v35);
  }

  else
  {
    v55 = v49;
    v56 = *(v49 + 80);
    sub_10003D1E4();
    sub_100004ADC();
    sub_100107DA4(v30, v57);
    v58 = sub_10000A218();
    sub_10000B3A0(v58, v59, v35);
    if (!v60)
    {
      sub_100007C00();
      sub_100107FA0();
      v71 = v230;
      goto LABEL_8;
    }
  }

  v61 = v35[10];
  sub_100007B78();
  sub_100002728(v62, v63, v64, v7);
  v65 = v35[13];
  sub_100007B78();
  sub_100002728(v66, v67, v68, v7);
  *(v48 + 4) = 0;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  v48[40] = 1;
  *(v48 + 3) = 0u;
  *(v48 + 4) = 0u;
  *(v48 + 5) = 0u;
  v48[v35[11]] = 2;
  v48[v35[12]] = 2;
  sub_1001083A4(v35[14]);
  sub_1001083A4(v35[15]);
  sub_1001083A4(v35[16]);
  v69 = sub_10000A218();
  sub_10000B3A0(v69, v70, v35);
  v71 = v230;
  if (!v60)
  {
    sub_100004E24(v5, &qword_1002DCC10, &unk_100238220);
  }

LABEL_8:
  v72 = &v48[v35[13]];
  sub_100108204(&v234);
  sub_10003D1E4();
  sub_100108240();
  sub_10010818C(*(v73 + 56));
  if (*(v74 + 16))
  {
    sub_100004E24(&qword_1002DBC28, &qword_1002DA970, &qword_1002318B0);
    v71 = v230;
    sub_10003D1E4();
  }

  v75 = v228;
  sub_10003D1E4();
  sub_10000B3A0(v75, 1, v55);
  if (v60)
  {
    sub_100004E24(v75, &qword_1002DBC28, &qword_100232F70);
    v80 = v229;
    sub_100007B78();
    sub_100002728(v76, v77, v78, v7);
LABEL_15:
    v85 = v80;
LABEL_16:
    sub_100004E24(v85, &qword_1002DA970, &qword_1002318B0);
    goto LABEL_17;
  }

  v79 = *(v55 + 32);
  v80 = v229;
  sub_10003D1E4();
  sub_100004ADC();
  sub_100107DA4(v75, v81);
  v82 = sub_10000A218();
  sub_10000B3A0(v82, v83, v7);
  if (v84)
  {
    goto LABEL_15;
  }

  v199 = v224;
  v198 = v225;
  (*(v225 + 32))(v224, v80, v7);
  sub_10003D1E4();
  v200 = sub_100108594();
  sub_10000B3A0(v200, v201, v7);
  if (v202)
  {
    (*(v198 + 8))(v199, v7);
    v85 = v71;
    goto LABEL_16;
  }

  Date.timeIntervalSince(_:)();
  v86 = v203;
  v204 = *(v198 + 8);
  v204(v199, v7);
  v204(v71, v7);
  if (v86 > 0.0)
  {
    v209 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v209 = 1;
  v86 = 0.0;
LABEL_18:
  sub_100108240();
  v232 = *(v87 + 64);
  v88 = *(v48 + 1);
  v223 = *v48;
  v89 = *(v48 + 3);
  v227 = *(v48 + 2);
  sub_1001081E0(*(v48 + 4));
  LODWORD(v214) = v48[40];
  v90 = *(v48 + 7);
  sub_100002E6C(*(v48 + 6));
  v91 = *(v48 + 9);
  v224 = *(v48 + 8);
  sub_10010848C(v35[10]);
  sub_10003D1E4();
  v92 = v35[12];
  LODWORD(v206) = v48[v35[11]];
  v220 = v48[v92];
  sub_1001082B8(v35[13]);
  sub_10003D1E4();
  v93 = v35[15];
  v94 = &v48[v35[14]];
  v221 = *v94;
  v95 = v221;
  v96 = v94[8];
  v222 = v96;
  v228 = *&v48[v93];
  LODWORD(v230) = v48[v93 + 8];
  v97 = &v48[v35[16]];
  v225 = *v97;
  v98 = v225;
  LODWORD(v226) = v97[8];

  v219 = v88;

  sub_100108198();
  sub_10003D1E4();
  sub_100006670();
  v229 = v99;
  sub_100107DA4(v48, v100);
  *v4 = v223;
  *(v4 + 8) = v88;
  *(v4 + 16) = v227;
  *(v4 + 24) = v89;
  sub_100108174();
  *(v4 + 32) = v101;
  *(v4 + 40) = v214;
  sub_100108234();
  *(v4 + 48) = v102;
  *(v4 + 56) = v90;
  *(v4 + 64) = v224;
  *(v4 + 72) = v91;
  sub_100108374();
  *(v4 + v103) = v206;
  sub_100002CB4();
  *(v4 + v104) = v105;
  v106 = v4 + v35[14];
  *v106 = v95;
  *(v106 + 8) = v96;
  sub_100013D8C((v4 + v35[15]));
  sub_100108064(v107);
  v109 = (v4 + v108);
  *v109 = v98;
  sub_1001081C8(v109);
  sub_1001082DC();
  v215 = *(v110 + 16) != 0;
  v206 = v35[10];
  sub_1001082C4();
  sub_10003D1E4();
  sub_10010848C(v35[13]);
  sub_100108130();
  sub_10003D1E4();
  v111 = v219;

  sub_100108198();
  sub_10003D1E4();

  v212 = v90;

  v112 = v91;
  sub_100108438(&v235);

  sub_100108198();
  sub_100108210();
  sub_10003D1E4();
  sub_100107DA4(v4, v229);
  *v88 = v223;
  *(v88 + 8) = v111;
  v113 = v111;
  *(v88 + 16) = v227;
  *(v88 + 24) = v89;
  v114 = v89;
  sub_100108174();
  *(v88 + 32) = v115;
  *(v88 + 40) = v214;
  sub_100108234();
  *(v88 + 48) = v116;
  *(v88 + 56) = v90;
  *(v88 + 64) = v224;
  *(v88 + 72) = v112;
  sub_100108384();
  v117 = v215;
  *(v88 + v118) = v215;
  sub_100002CB4();
  *(v88 + v119) = v120;
  sub_1001084A4(v88 + v35[14]);
  sub_100013D8C(v121);
  sub_100108064(v122);
  v124 = (v88 + v123);
  v125 = v225;
  *v124 = v225;
  sub_1001081C8(v124);
  sub_100108240();
  v220 = *(v126 + 8) != 0;
  v205[1] = v35[10];
  v127 = v207;
  sub_10003D1E4();
  v206 = v35[13];
  sub_10003D1E4();

  sub_100108438(&v239);

  sub_100005CC4(&v233);

  sub_1001080B8(&v235);

  sub_100108198();
  sub_10003D1E4();
  v128 = sub_1000033CC();
  sub_100107DA4(v128, v129);
  v130 = v127;
  v131 = v223;
  *v130 = v223;
  *(v130 + 8) = v113;
  *(v130 + 16) = v227;
  *(v130 + 24) = v114;
  sub_100108174();
  *(v130 + 32) = v132;
  *(v130 + 40) = v214;
  sub_100108234();
  *(v130 + 48) = v133;
  *(v130 + 56) = v113;
  *(v130 + 64) = v224;
  *(v130 + 72) = &qword_1002DA970;
  sub_100108384();
  *(v130 + v134) = v117;
  LOBYTE(v114) = v220;
  *(v130 + v35[12]) = v220;
  sub_1001084A4(v130 + v35[14]);
  v135 = v228;
  *v136 = v228;
  sub_100108064(v136);
  v138 = v130 + v137;
  *v138 = v125;
  LOBYTE(v125) = v226;
  *(v138 + 8) = v226;
  sub_1001082D0(v35[10]);
  sub_100004920();
  sub_100108444();
  sub_10003D1E4();
  sub_1001081E0(v35[13]);
  sub_100004920();
  sub_10003D1E4();
  v139 = v219;

  sub_100108604(&v239);
  sub_1001085D4(&v235);
  sub_100108198();
  sub_10003D1E4();
  v140 = sub_1000033CC();
  sub_100107DA4(v140, v141);
  *v113 = v131;
  *(v113 + 8) = v139;
  v142 = v227;
  *(v113 + 16) = v227;
  *(v113 + 24) = &qword_1002DA970;
  *(v113 + 32) = 0;
  *(v113 + 40) = 1;
  v143 = v212;
  *(v113 + 48) = v216;
  *(v113 + 56) = v143;
  *(v113 + 64) = v224;
  *(v113 + 72) = v117;
  sub_100108374();
  LOBYTE(v117) = v215;
  *(v113 + v144) = v215;
  *(v113 + v35[12]) = v114;
  v145 = v113 + v35[14];
  *v145 = v221;
  LOBYTE(v131) = v222;
  *(v145 + 8) = v222;
  v146 = (v113 + v35[15]);
  *v146 = v135;
  sub_100108064(v146);
  sub_1001080C4((v113 + v147));
  *(v148 + 8) = v125;
  v216 = v35[10];
  sub_1000035C8(&v237);
  v149 = v208;
  sub_10003D1E4();
  v214 = v35[13];
  sub_1000035C8(&v236);
  sub_10003D1E4();
  v150 = v219;

  sub_100108198();
  sub_10003D1E4();
  v151 = v229;
  sub_100107DA4(v113, v229);
  v152 = v223;
  *v149 = v223;
  *(v149 + 8) = v150;
  *(v149 + 16) = v142;
  *(v149 + 24) = &qword_1002DA970;
  *(v149 + 32) = 0;
  *(v149 + 40) = 1;
  *(v149 + 48) = 0;
  *(v149 + 56) = 0;
  v153 = v213;
  *(v149 + 64) = v224;
  *(v149 + 72) = v153;
  *(v149 + 80) = v232;
  *(v149 + v35[11]) = v117;
  LOBYTE(v113) = v220;
  *(v149 + v35[12]) = v220;
  v154 = v149 + v35[14];
  v155 = v221;
  *v154 = v221;
  *(v154 + 8) = v131;
  sub_100013D8C((v149 + v35[15]));
  LOBYTE(v131) = v230;
  *(v156 + 8) = v230;
  sub_1001080C4((v149 + v35[16]));
  sub_1001081C8(v157);
  v224 = v35[10];
  sub_100008AC4();
  v158 = v210;
  sub_10003D1E4();
  v159 = v35[13];
  sub_100008AC4();
  sub_10003D1E4();
  v160 = v219;

  sub_100108604(&v239);
  sub_100108198();
  sub_10003D1E4();
  sub_100107DA4(v149, v151);
  *v158 = v152;
  *(v158 + 8) = v160;
  v161 = v227;
  *(v158 + 16) = v227;
  *(v158 + 24) = &qword_1002318B0;
  *(v158 + 32) = 0;
  *(v158 + 40) = 1;
  *(v158 + 48) = 0u;
  *(v158 + 64) = 0u;
  *(v158 + 80) = v232;
  LOBYTE(v149) = v215;
  *(v158 + v35[11]) = v215;
  *(v158 + v35[12]) = v113;
  v162 = v158 + v35[14];
  *v162 = v155;
  v163 = v222;
  *(v162 + 8) = v222;
  sub_100013D8C((v158 + v35[15]));
  *(v164 + 8) = v131;
  v165 = v158 + v35[16];
  v166 = v225;
  *v165 = v225;
  LOBYTE(v151) = v226;
  *(v165 + 8) = v226;
  sub_100002E6C(v35[10]);
  sub_10010842C();
  sub_10003D1E4();
  sub_1001082D0(v35[13]);
  sub_1001084F8();
  sub_100012D44();
  sub_10000B358(&v239);

  sub_100108198();
  sub_10003D1E4();
  v167 = v229;
  sub_100107DA4(v158, v229);
  v168 = v219;
  *v155 = v223;
  *(v155 + 8) = v168;
  *(v155 + 16) = v161;
  *(v155 + 24) = &qword_1002318B0;
  sub_10010857C();
  *(v155 + 80) = v232;
  *(v155 + v35[11]) = v149;
  sub_100002CB4();
  *(v155 + v169) = v170;
  v171 = v155 + v35[14];
  *v171 = v221;
  *(v171 + 8) = v163;
  v172 = (v155 + v35[15]);
  v173 = v228;
  *v172 = v228;
  sub_100108064(v172);
  v175 = v155 + v174;
  *v175 = v166;
  *(v175 + 8) = v151;
  sub_100108240();
  v231 = *(v176 + 80);
  v177 = v35[10];
  sub_100008774(&v238);
  v178 = v211;
  sub_10003D1E4();
  v224 = v35[13];
  sub_100108140();
  sub_100108228();
  sub_10003D1E4();
  sub_1001080B8(&v239);

  sub_10003D1E4();
  sub_10003D1E4();
  sub_100107DA4(v155, v167);
  *v178 = v231;
  *(v178 + 16) = v161;
  *(v178 + 24) = &qword_1002318B0;
  *(v178 + 32) = 0;
  *(v178 + 40) = 1;
  *(v178 + 48) = 0u;
  *(v178 + 64) = 0u;
  sub_100108384();
  LOBYTE(v149) = v215;
  *(v178 + v179) = v215;
  sub_100002CB4();
  *(v178 + v180) = v181;
  v182 = v178 + v35[14];
  v183 = v221;
  *v182 = v221;
  LOBYTE(v161) = v222;
  *(v182 + 8) = v222;
  v184 = v178 + v35[15];
  *v184 = v173;
  v185 = v230;
  *(v184 + 8) = v230;
  sub_1001080C4((v178 + v35[16]));
  sub_1001081C8(v186);
  v187 = v35[10];
  sub_100108444();
  sub_10003D1E4();
  v188 = v35[13];
  sub_100007664();
  sub_10003D1E4();
  sub_10003D1E4();
  v189 = sub_1000033CC();
  sub_100107DA4(v189, v190);
  *v177 = v231;
  v191 = v218;
  *(v177 + 16) = v227;
  *(v177 + 24) = v191;
  *(v177 + 32) = 0;
  *(v177 + 40) = 1;
  *(v177 + 48) = 0u;
  *(v177 + 64) = 0u;
  sub_100108374();
  *(v177 + v192) = v149;
  sub_100002CB4();
  *(v177 + v193) = v194;
  v195 = v177 + v35[14];
  *v195 = v183;
  *(v195 + 8) = v161;
  v196 = v177 + v35[15];
  *v196 = v173;
  *(v196 + 8) = v185;
  v197 = (v177 + v35[16]);
  *v197 = v86;
  sub_100010E0C(v197);
}

uint64_t sub_100101D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = v7;
  v194 = a5;
  v196 = a4;
  v15 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v16 = sub_10000307C(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_1000037D4();
  v198 = v19;
  sub_100005238();
  __chkstk_darwin(v20);
  sub_10000D478();
  v199 = v21;
  v22 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v22);
  v24 = *(v23 + 64);
  sub_100003774();
  __chkstk_darwin(v25);
  sub_100003018();
  v190 = v26;
  v27 = type metadata accessor for TSDataSyncDatasetState(0);
  v215 = *(v27 - 8);
  v28 = *(v215 + 64);
  __chkstk_darwin(v27 - 8);
  sub_10000308C();
  sub_1001080E4();
  __chkstk_darwin(v29);
  sub_10010814C();
  __chkstk_darwin(v30);
  sub_100002DD0();
  v204 = v31;
  sub_100005238();
  __chkstk_darwin(v32);
  sub_100108044();
  __chkstk_darwin(v33);
  sub_10000D478();
  v34 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v35 = sub_1000030B8(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_10000308C();
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  sub_10000D478();
  v212 = v43;
  v218 = a2;
  v220 = v15;
  v44 = *(a2 + *(v15 + 20));
  v203 = a1;
  if (a1)
  {
    v189 = a3;
    v46 = v44 + 4;
    v45 = *(v44 + 8);
    v47 = *(v44 + 32);
    sub_100007FC0();
    v50 = v49 & v48;
    v208 = v52;
    v210 = (v51 + 63) >> 6;
    sub_100108510();
    swift_bridgeObjectRetain_n();
    v53 = 0;
    v201 = v44;
    v202 = v9;
    v206 = v44 + 4;
    v54 = v9;
LABEL_3:
    v55 = v204;
    v56 = v210;
    if (!v50)
    {
      goto LABEL_5;
    }

LABEL_9:
    while (1)
    {
      sub_1001084BC();
      sub_1001087D8();
      v60 = *v58;
      v59 = v58[1];
      v61 = *(v215 + 72);
      sub_100006D1C();
      sub_100107DFC();
      v62 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      v63 = *(v62 + 48);
      *v208 = v60;
      v208[1] = v59;
      sub_100007FA8();
      sub_100107FA0();
      sub_10000B7B0();
      sub_100002728(v64, v65, v66, v62);

      v10 = v202;
      v55 = v204;
LABEL_10:
      sub_100012D44();
      v44 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      v67 = sub_100108594();
      sub_10000B3A0(v67, v68, v44);
      if (v69)
      {
        break;
      }

      v70 = *v212;
      v71 = v212[1];
      v72 = *(v44 + 12);
      sub_100007FA8();
      v74 = v73;
      v54 = v10;
      sub_100107FA0();
      sub_100108714();
      *&v227 = v74;
      *(&v227 + 1) = v71;
      __chkstk_darwin(v75);
      sub_1001083E4();
      *(v76 - 16) = &v227;
      if (sub_10015D6FC(sub_1000ADCD4, v77, v78))
      {
        if (*(v203 + 16))
        {
          v44 = v203;
          v79 = sub_10014EB30(v74, v71);
          if (v80)
          {
            v187 = v74;
            v86 = *(v203 + 56) + 16 * v79;
            v87 = *v86;
            v46 = v206;
            if (*(v86 + 8) == 1)
            {
              swift_errorRetain();
              v88 = v10;
              v89 = v10;
              v10 = v87;
              sub_100103C48(v89, v87, v90, v91, v92, v93, v94, v95, v182, v183, v184, v185, v187, v189, v190, v192, v193, v194, v196, v198);
              sub_1001086B4();
              swift_isUniquelyReferenced_nonNull_native();
              *&v227 = v87;
              v44 = &v227;
              v54 = v88;
              sub_10014FF48();

              sub_100107D70(v10, 1);
              sub_100004ADC();
              sub_100107DA4(v88, v96);
              v201 = v227;
              goto LABEL_3;
            }

            v97 = v55;
            v185 = *v86;
            if (v189)
            {
              v184 = sub_1001AC070(v187, v71, v189);
              HIDWORD(v183) = v98;
            }

            else
            {
              v184 = 0;
              HIDWORD(v183) = 1;
            }

            v99 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
            v100 = *(v196 + *(v99 + 40));
            if (*(v100 + 16) && (v101 = sub_10014EB30(v187, v71), (v102 & 1) != 0))
            {
              v103 = (*(v100 + 56) + (v101 << 6));
              v104 = *(v103 + 41);
              v105 = v103[2];
              v106 = *v103;
              v222[1] = v103[1];
              v223[0] = v105;
              v222[0] = v106;
              *(v223 + 9) = v104;
              v107 = v103[1];
              v224 = *v103;
              v225 = v107;
              v226[0] = v103[2];
              *(v226 + 9) = *(v103 + 41);
              sub_1000BA2CC(v222, &v221);
              v227 = v224;
              v228 = v225;
              v229[0] = v226[0];
              *(v229 + 9) = *(v226 + 9);
            }

            else
            {
              v228 = 0u;
              memset(v229, 0, 25);
              v227 = 0u;
            }

            v230[1] = v228;
            v231[0] = v229[0];
            *(v231 + 9) = *(v229 + 9);
            v230[0] = v227;
            v44 = v190;
            sub_1001AC054(v187, v71, *(v196 + *(v99 + 36)), v190);
            sub_100102AC0(v10, v185, v184, BYTE4(v183) & 1, v230, v190, v194, v97, a7);
            if (!v7)
            {
              sub_100004E24(v190, &qword_1002DBC20, &unk_100234B00);
              sub_100004E24(&v227, &qword_1002DCC38, &qword_100236610);
              sub_100007FA8();
              sub_100107FA0();
              sub_1001086B4();
              swift_isUniquelyReferenced_nonNull_native();
              *&v224 = v190;
              v44 = &v224;
              sub_10003CF5C();
              sub_10014FF48();

              v201 = v224;
              sub_100004ADC();
              sub_100107DA4(v10, v108);
              v54 = v10;
              goto LABEL_3;
            }

            goto LABEL_45;
          }
        }
      }

      sub_100004ADC();
      sub_100107DA4(v10, v81);

      v46 = v206;
      v56 = v210;
      if (!v50)
      {
LABEL_5:
        while (1)
        {
          v57 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if (v57 >= v56)
          {
            v10 = v54;
            sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
            sub_100007B78();
            sub_100002728(v82, v83, v84, v85);
            v50 = 0;
            goto LABEL_10;
          }

          v50 = *(v46 + v57);
          ++v53;
          if (v50)
          {
            v53 = v57;
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_44;
      }
    }
  }

  else
  {
    v209 = v42;
    v213 = v41;
    v110 = v44 + 4;
    v109 = *(v44 + 8);
    v111 = *(v44 + 32);
    sub_100007FC0();
    v114 = v113 & v112;
    v116 = (v115 + 63) >> 6;
    v195 = 0x8000000100273910;
    v197 = NSDebugDescriptionErrorKey;
    sub_100108510();
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v117 = &qword_1002DCC20;
    v191 = xmmword_1002329F0;
    v201 = v44;
    v205 = v116;
    v207 = v44 + 4;
LABEL_29:
    if (!v114)
    {
      goto LABEL_31;
    }

LABEL_35:
    while (1)
    {
      sub_1001084BC();
      sub_1001087D8();
      v121 = *v119;
      v120 = v119[1];
      v122 = *(v215 + 72);
      sub_100006D1C();
      sub_100107DFC();
      v123 = v117;
      v124 = sub_100099DF4(v117, &qword_10023F680);
      v125 = *(v124 + 48);
      *v213 = v121;
      v213[1] = v120;
      sub_100007FA8();
      sub_100107FA0();
      sub_10000B7B0();
      sub_100002728(v126, v127, v128, v124);

LABEL_36:
      sub_100012D44();
      v44 = sub_100099DF4(v123, &qword_10023F680);
      v129 = sub_100108594();
      sub_10000B3A0(v129, v130, v44);
      if (v69)
      {
        break;
      }

      v132 = *v209;
      v131 = v209[1];
      v133 = *(v44 + 12);
      sub_100007FA8();
      sub_100107FA0();
      sub_100108714();
      *&v227 = v132;
      *(&v227 + 1) = v131;
      __chkstk_darwin(v134);
      sub_1001083E4();
      *(v135 - 16) = &v227;
      if (sub_10015D6FC(sub_1000ADC60, v136, v137))
      {
        sub_100099DF4(&qword_1002DCC30, &qword_100236608);
        inited = swift_initStackObject();
        *(inited + 16) = v191;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v144;
        *(inited + 48) = 0xD000000000000012;
        *(inited + 56) = v195;
        *(inited + 72) = &type metadata for String;
        strcpy((inited + 80), "AMSDescription");
        *(inited + 120) = &type metadata for String;
        *(inited + 95) = -18;
        *(inited + 96) = 0xD000000000000012;
        *(inited + 104) = v195;
        v145 = Dictionary.init(dictionaryLiteral:)();
        v146 = objc_allocWithZone(NSError);
        v147 = sub_100106FE0(0xD00000000000001FLL, 0x80000001002738F0, 1, v145);
        sub_100103C48(v8, v147, v148, v149, v150, v151, v152, v153, v182, v183, v184, v185, v186, v188, v191, *(&v191 + 1), v193, v195, v197, v198);

        sub_100007FA8();
        sub_100107FA0();
        sub_1001086B4();
        swift_isUniquelyReferenced_nonNull_native();
        *&v227 = v147;
        v44 = &v227;
        sub_10014FF48();

        v201 = v227;
        sub_100004ADC();
        sub_100107DA4(v8, v154);
        v117 = v123;
        v116 = v205;
        v110 = v207;
        goto LABEL_29;
      }

      sub_100004ADC();
      sub_100107DA4(v8, v138);

      v117 = v123;
      v116 = v205;
      v110 = v207;
      if (!v114)
      {
LABEL_31:
        while (1)
        {
          v118 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v118 >= v116)
          {
            sub_100099DF4(v117, &qword_10023F680);
            sub_100007B78();
            sub_100002728(v139, v140, v141, v142);
            v114 = 0;
            v123 = v117;
            goto LABEL_36;
          }

          v114 = *(v110 + v118);
          ++v10;
          if (v114)
          {
            v10 = v118;
            goto LABEL_35;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:

        sub_100004E24(&v227, &qword_1002DCC38, &qword_100236610);
        sub_100004E24(v44, &qword_1002DBC20, &unk_100234B00);
        sub_100004ADC();
        sub_100107DA4(v10, v181);
      }
    }
  }

  sub_1000031A4();
  sub_100107DFC();
  v155 = v220[6];
  sub_10003D1E4();
  v156 = v220[7];
  sub_10003D1E4();
  v157 = *(v218 + v220[9]);
  v211 = *(v218 + v220[8]);
  v158 = (v218 + v220[10]);
  v217 = *v158;
  v159 = *v158;
  v219 = v158[1];
  v161 = v158[2];
  v160 = v158[3];
  *(v198 + v220[5]) = v201;
  *(v198 + v220[8]) = v211;
  *(v198 + v220[9]) = v157;
  v162 = (v198 + v220[10]);
  *v162 = v159;
  v162[1] = v219;
  v162[2] = v161;
  v162[3] = v160;
  sub_100107DFC();
  v216 = v220[6];
  sub_1001088D8();
  v163 = v220[7];
  sub_1001088D8();
  sub_100108498();
  sub_1001071F4(v164, v165);
  sub_100108498();
  sub_1001071F4(v166, v167);

  sub_1001086B4();

  sub_100108498();
  sub_1001071F4(v168, v169);

  sub_10000764C();
  v214 = v170;
  sub_100107DA4(v198, v171);
  *(v199 + v220[5]) = v219;
  *(v199 + v220[8]) = v211;
  *(v199 + v220[9]) = _swiftEmptyArrayStorage;
  v172 = (v199 + v220[10]);
  *v172 = v217;
  v172[1] = v219;
  v172[2] = v161;
  v172[3] = v160;
  v173 = v220[7];
  type metadata accessor for Date();
  sub_100007B78();
  sub_100002728(v174, v175, v176, v177);
  sub_100107DFC();
  v178 = v220[6];
  sub_10003D1E4();

  result = sub_100107DA4(v199, v214);
  *(a6 + v220[5]) = v219;
  *(a6 + v220[8]) = v211;
  *(a6 + v220[9]) = _swiftEmptyArrayStorage;
  v180 = (a6 + v220[10]);
  *v180 = v217;
  v180[1] = v219;
  v180[2] = v161;
  v180[3] = v160;
  return result;
}

uint64_t sub_100102AC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, double a9@<D0>)
{
  v224 = a7;
  v246 = a6;
  v247 = a5;
  LODWORD(v248) = a4;
  v249 = a2;
  v250 = a3;
  v228 = a8;
  v16 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v16);
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003018();
  v21 = sub_100008280(v20);
  v22 = type metadata accessor for TSDataSyncDatasetState(v21);
  v23 = sub_10000307C(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_10000308C();
  sub_100008B9C();
  __chkstk_darwin(v26);
  sub_1001080E4();
  __chkstk_darwin(v27);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v28);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v29);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100108044();
  __chkstk_darwin(v34);
  sub_1001083F4();
  v35 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v35);
  v37 = *(v36 + 64);
  sub_100003774();
  __chkstk_darwin(v38);
  sub_10003CF80();
  v226 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v39 = sub_10000307C(v226);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10000306C();
  v44 = v43 - v42;
  sub_100006D1C();
  sub_100107DFC();
  sub_10000B7B0();
  sub_100002728(v45, v46, v47, v22);
  v230 = v44;
  sub_1001047CC(v10, v249, 0, v250, v248 & 1, v48, v49, v50, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
  v51 = sub_100004E24(v10, &qword_1002DBC28, &qword_100232F70);
  v52 = v247[1];
  if (v52)
  {
    v250 = v11;
    v251 = *v247;
    v252 = v52;
    v53 = *(v247 + 2);
    v253 = *(v247 + 1);
    *v254 = v53;
    *&v254[9] = *(v247 + 41);
    v54 = *&a1[v22[19]];
    __chkstk_darwin(v51);
    *(&v214 - 4) = v246;
    *(&v214 - 3) = a1;
    *(&v214 - 2) = &v251;
    *(&v214 - 1) = a9;

    v55 = v54;
    v56 = v233;
    sub_1000F8418(sub_100107D7C, (&v214 - 6), v55);
    if (v56)
    {
      sub_100006670();
      return sub_100107DA4(v230, v58);
    }

    v233 = 0;
    v61 = *a1;
    v60 = *(a1 + 1);
    v248 = v57;
    v249 = v60;
    v62 = *(a1 + 3);
    v246 = *(a1 + 2);
    v247 = v61;
    v239 = v62;
    v63 = *(a1 + 4);
    v64 = *(a1 + 5);
    v65 = *(a1 + 7);
    v244 = *(a1 + 6);
    v245 = v63;
    v242 = v65;
    v243 = v64;
    sub_100108748(v22[8]);
    sub_10003D1E4();
    v66 = v22[9];
    v67 = type metadata accessor for Date();
    sub_10000307C(v67);
    (*(v68 + 16))(&v12[v66], &a1[v66]);
    sub_100108748(v22[10]);
    sub_10003D1E4();
    v69 = v22[12];
    v241 = *&a1[v22[11]];
    sub_10003D1E4();
    v70 = v22[14];
    v71 = &a1[v22[13]];
    v72 = *(v71 + 1);
    v237 = *v71;
    v240 = v72;
    sub_10010829C(&a1[v70]);
    v74 = &a1[v73];
    v75 = *(v74 + 1);
    v235 = *v74;
    LODWORD(v236) = a1[v76];
    v77 = v22[18];
    LODWORD(v234) = a1[v22[17]];
    v78 = *&a1[v77];
    sub_100108748(v22[20]);
    sub_10003D1E4();
    v79 = v249;
    *v12 = v247;
    *(v12 + 1) = v79;
    v80 = v245;
    *(v12 + 2) = v246;
    *(v12 + 3) = v62;
    v82 = v242;
    v81 = v243;
    *(v12 + 4) = v80;
    *(v12 + 5) = v81;
    *(v12 + 6) = v244;
    *(v12 + 7) = v82;
    *&v12[v22[11]] = v241;
    v83 = &v12[v22[13]];
    *v83 = v237;
    *(v83 + 1) = v72;
    sub_1000072AC(&v12[v22[14]]);
    v85 = &v12[v84];
    *v85 = v235;
    *(v85 + 1) = v75;
    v12[v22[16]] = v236;
    v12[v22[17]] = v234;
    *&v12[v22[18]] = v78;
    *&v12[v22[19]] = v248;
    sub_100007FA8();
    v11 = v250;
    sub_100107FA0();
  }

  else
  {
    sub_100006D1C();
    sub_100005CF0();
    sub_100107DFC();
  }

  sub_100006D1C();
  sub_100107DFC();
  v86 = v11[3];
  if (v86)
  {
    v249 = v11[2];
    v250 = v86;
  }

  else
  {
    v87 = v11[1];
    v249 = *v11;
    v250 = v87;
  }

  sub_100004ADC();
  v248 = v88;
  sub_100107DA4(v11, v89);
  v90 = v9[3];
  v217 = v9[2];
  v91 = v9[5];
  v243 = v9[4];
  v92 = v9[7];
  v241 = v9[6];
  v239 = v92;
  sub_1001082B8(v22[8]);
  sub_100108880();
  v93 = v22[9];
  v240 = type metadata accessor for Date();
  sub_10000307C(v240);
  v95 = *(v94 + 16);
  v244 = v94 + 16;
  v245 = v95;
  v220 = v93;
  (v95)(v13 + v93, v9 + v93);
  v219 = v22[10];
  sub_100108880();
  v96 = v22[12];
  v232 = *(v9 + v22[11]);
  v218 = v96;
  sub_10003D1E4();
  v97 = v22[14];
  v98 = (v9 + v22[13]);
  v99 = v98[1];
  v247 = *v98;
  sub_10010829C(v9 + v97);
  v101 = (v9 + v100);
  v102 = v101[1];
  v236 = *v101;
  LODWORD(v246) = *(v9 + v103);
  v104 = v22[18];
  LODWORD(v242) = *(v9 + v22[17]);
  v237 = *(v9 + v104);
  v105 = v22[19];
  v215 = v22[20];
  v106 = *(v9 + v105);
  sub_10003D1E4();

  v107 = v106;
  v234 = v106;

  v108 = v90;

  sub_100108438(&v258);

  v109 = v239;

  v231 = v99;

  sub_100107DA4(v9, v248);
  v110 = v250;
  *v13 = v249;
  v13[1] = v110;
  v13[2] = v217;
  v13[3] = v108;
  v13[4] = v243;
  v13[5] = v91;
  v13[6] = v241;
  v13[7] = v109;
  v111 = v22[11];
  sub_100010F9C();
  *(v13 + v112) = v113;
  v114 = (v13 + v22[13]);
  *v114 = v247;
  v114[1] = v99;
  sub_1000072AC(v13 + v22[14]);
  sub_10010821C();
  *v115 = v116;
  v115[1] = v102;
  v117 = v102;
  sub_1001081EC();
  *(v13 + v118) = v119;
  sub_100108450();
  *(v13 + v120) = v121;
  v122 = v237;
  *(v13 + v22[18]) = v237;
  *(v13 + v22[19]) = v107;
  v217 = v22[8];
  sub_1001086E4();
  v123 = v222;
  sub_10003D1E4();
  sub_1001082B8(v22[9]);
  (v245)(v123 + v124, v13 + v220, v240);
  v216 = v22[10];
  sub_10003D1E4();
  v125 = v22[12];
  sub_10003D1E4();
  v219 = v22[20];
  sub_10003D1E4();
  sub_100005CC4(&v258);
  swift_bridgeObjectRetain_n();
  v126 = v239;
  swift_bridgeObjectRetain_n();
  sub_1000026F4(&v256);
  swift_bridgeObjectRetain_n();
  v229 = v117;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v127 = v250;
  sub_10010881C();
  swift_bridgeObjectRetain_n();
  sub_10000A81C(&v257);

  sub_100107DA4(v13, v248);
  *v123 = v249;
  v123[1] = v127;
  v123[2] = 0;
  v123[3] = 0;
  v123[4] = v243;
  v123[5] = &qword_1002318B0;
  v123[6] = v241;
  v123[7] = v126;
  sub_10000AD68(v22[11]);
  v128 = (v123 + v22[13]);
  *v128 = v247;
  v128[1] = &qword_1002DA970;
  sub_1000072AC(v123 + v22[14]);
  sub_10010821C();
  *v129 = v130;
  v129[1] = v117;
  sub_1001081EC();
  *(v123 + v131) = v132;
  sub_100108450();
  *(v123 + v133) = v134;
  sub_10000AD68(v22[18]);
  *(v123 + v22[19]) = v122;
  v220 = v22[12];
  v135 = v223;
  v136 = v240;
  v137 = v244;
  v138 = v245;
  (v245)(v223 + v220, v224, v240);
  sub_10000B7B0();
  v139 = v136;
  sub_100002728(v140, v141, v142, v136);
  v215 = v22[8];
  sub_100108328(&v245);
  sub_10003D1E4();
  v218 = v22[9];
  sub_1001086E4();
  v138();
  v217 = v22[10];
  sub_100108328(&v244);
  sub_10003D1E4();
  v224 = v22[20];
  sub_100108328(&v247);
  sub_10003D1E4();

  v143 = v239;

  sub_1000026F4(&v255);

  sub_100108604(&v259);
  sub_100005CC4(&v257);

  v144 = v250;

  sub_100107DA4(v123, v248);
  *v135 = v249;
  v135[1] = v144;
  v135[2] = 0;
  v135[3] = 0;
  v135[4] = v243;
  v135[5] = &qword_1002318B0;
  v135[6] = v241;
  v135[7] = v143;
  v145 = v22[11];
  sub_100010F9C();
  *(v135 + v146) = v147;
  v148 = (v135 + v22[13]);
  v149 = v231;
  *v148 = v247;
  v148[1] = v149;
  sub_10010845C();
  sub_1000072AC(v150);
  sub_10010821C();
  *v151 = v152;
  v151[1] = v137;
  sub_1001081EC();
  *(v135 + v153) = v154;
  sub_100108450();
  *(v135 + v155) = v156;
  *(v135 + v22[18]) = v138;
  v157 = v138;
  *(v135 + v22[19]) = v139;
  v222 = v22[8];
  sub_100108140();
  sub_100108444();
  sub_10003D1E4();
  v232 = v22[9];
  (v245)(v139 + v232, v135 + v218, v240);
  sub_1001082B8(v22[10]);
  sub_100108140();
  sub_10003D1E4();
  v219 = v22[12];
  sub_100008774(&v248);
  sub_10003D1E4();
  v220 = v22[20];
  sub_100008774(&v252);
  sub_10003D1E4();

  v158 = v239;

  sub_10000B358(&v257);

  v159 = v250;

  sub_100107DA4(v135, v248);
  *v139 = v249;
  v139[1] = v159;
  v139[2] = 0;
  v139[3] = 0;
  v139[4] = v243;
  v139[5] = &qword_1002318B0;
  v139[6] = v241;
  v139[7] = v158;
  *(v139 + v22[11]) = 0;
  v160 = (v139 + v22[13]);
  *v160 = v247;
  v160[1] = v149;
  sub_1000072AC(v139 + v22[14]);
  sub_100002A38((v139 + v161));
  sub_1001081EC();
  *(v139 + v162) = v163;
  sub_100108450();
  *(v139 + v164) = v165;
  *(v139 + v22[18]) = v157;
  *(v139 + v22[19]) = v149;
  v166 = v149;
  v229 = v22[8];
  sub_1001082C4();
  sub_10003D1E4();
  sub_100002E6C(v22[9]);
  (v245)(v149 + v167, v139 + v232, v240);
  sub_1001084EC(v22[10]);
  sub_100108130();
  sub_1001088D8();
  sub_10010848C(v22[12]);
  sub_100108130();
  sub_1001088D8();
  v232 = v22[20];
  sub_100108130();
  sub_10003D1E4();
  sub_100003EA8(&v258);

  v168 = v157;

  v169 = v250;

  sub_100107DA4(v139, v248);
  *v149 = v249;
  v149[1] = v169;
  v149[2] = 0;
  v149[3] = 0;
  v170 = v243;
  v149[4] = v243;
  v149[5] = &qword_1002318B0;
  v149[6] = v241;
  v149[7] = v158;
  sub_100108468();
  *v171 = v172;
  v171[1] = v149;
  v173 = v149;
  sub_1000072AC(v149 + v22[14]);
  sub_10010873C(v174);
  sub_1001081EC();
  *(v149 + v175) = v176;
  sub_100108450();
  *(v149 + v177) = v178;
  *(v149 + v22[18]) = v168;
  *(v149 + v22[19]) = v149;
  v179 = v22[8];
  sub_100004920();
  sub_10010842C();
  sub_10003D1E4();
  v238 = v22[9];
  sub_100108234();
  v245();
  sub_1001084E0(v22[10]);
  sub_100004920();
  sub_1001084F8();
  sub_10003D1E4();
  sub_100002E6C(v22[12]);
  sub_100004920();
  sub_1001084F8();
  sub_10003D1E4();
  v229 = v22[20];
  sub_100004920();
  sub_10003D1E4();
  sub_100108604(&v258);
  v180 = v239;

  sub_100108284(&v259);

  v181 = v250;

  v182 = sub_1000033CC();
  sub_100107DA4(v182, v183);
  *v168 = v249;
  *(v168 + 1) = v181;
  *(v168 + 2) = 0;
  *(v168 + 3) = 0;
  *(v168 + 4) = v170;
  *(v168 + 5) = v166;
  v184 = v241;
  *(v168 + 6) = v241;
  *(v168 + 7) = v180;
  sub_1001080F4();
  *v185 = v247;
  v185[1] = v173;
  sub_100005134(v22[14]);
  *(v186 + 8) = 1;
  v187 = (v168 + v22[15]);
  *v187 = 0;
  v187[1] = 0;
  sub_1001081EC();
  *(v168 + v188) = v189;
  LOBYTE(v166) = v242;
  *(v168 + v22[17]) = v242;
  *(v168 + v22[18]) = &qword_1002DA970;
  v190 = v234;
  *(v168 + v22[19]) = v234;
  v191 = v22[8];
  v192 = v227;
  sub_100007B78();
  v193 = v240;
  sub_100002728(v194, v195, v196, v240);
  (v245)(v192 + v22[9], v168 + v238, v193);
  v197 = v22[10];
  sub_100108140();
  sub_10003D1E4();
  v198 = v22[12];
  sub_100108140();
  sub_100007664();
  sub_10003D1E4();
  v199 = v22[20];
  sub_100108140();
  sub_10003D1E4();

  sub_100107DA4(v168, v248);
  v200 = v250;
  *v192 = v249;
  v192[1] = v200;
  v192[2] = 0;
  v192[3] = 0;
  sub_1001082DC();
  v192[4] = v202;
  v192[5] = v201;
  v203 = v239;
  v192[6] = v184;
  v192[7] = v203;
  sub_100108468();
  *v204 = v205;
  v204[1] = v173;
  v206 = v192 + v22[14];
  *v206 = 0;
  v206[8] = 1;
  sub_10010873C(v22[15]);
  sub_1001081EC();
  *(v192 + v207) = v208;
  *(v192 + v22[17]) = v166;
  sub_1000DB94C(v22[18]);
  *(v192 + v22[19]) = v190;
  sub_100007C00();
  sub_10000288C(&v254[24]);
  sub_100107FA0();
  sub_10000B7B0();
  sub_100002728(v209, v210, v211, v226);
  sub_100109384(v228);
  sub_100004E24(v190, &qword_1002DCC10, &unk_100238220);
  v212 = sub_100005CF0();
  return sub_100107DA4(v212, v213);
}

void sub_100103C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  sub_10010818C(v28);
  v29 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v29);
  v31 = *(v30 + 64);
  sub_100003774();
  __chkstk_darwin(v32);
  sub_100003018();
  v34 = sub_100008280(v33);
  v35 = type metadata accessor for TSDataSyncDatasetState(v34);
  v36 = sub_10000307C(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_10000308C();
  v41 = (v39 - v40);
  __chkstk_darwin(v42);
  sub_100008B9C();
  __chkstk_darwin(v43);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_10000D478();
  sub_10000A1C0(v46);
  v47 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v47);
  v49 = *(v48 + 64);
  sub_100003774();
  __chkstk_darwin(v50);
  v51 = sub_100108808();
  v162 = type metadata accessor for TSDataSyncDatasetMetricsFields(v51);
  v52 = sub_10000307C(v162);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  sub_10000306C();
  sub_100006D1C();
  sub_10003CF5C();
  sub_100107DFC();
  sub_10000B7B0();
  sub_100002728(v55, v56, v57, v35);
  sub_1001057C0();
  sub_100004E24(v21, &qword_1002DBC28, &qword_100232F70);
  if (v25)
  {
    v185 = v25;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    sub_100108754();
    sub_100108504();
    if (swift_dynamicCast())
    {
      v58 = [v184 domain];

      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v161 = v59;
    }

    else
    {
      v167 = 0;
      v161 = 0;
    }

    v185 = v25;
    swift_errorRetain();
    sub_100108754();
    sub_100108504();
    if (swift_dynamicCast())
    {
      [v184 code];
    }
  }

  else
  {
    v167 = 0;
    v161 = 0;
  }

  v60 = *(v27 + 1);
  v62 = *(v27 + 4);
  v61 = *(v27 + 5);
  v182 = *v27;
  v183 = v62;
  v176 = v61;
  v63 = *(v27 + 7);
  v178 = *(v27 + 6);
  v179 = v60;
  v181 = v63;
  v164 = &v41[v35[8]];
  sub_1001085EC();
  v64 = v35[9];
  v65 = type metadata accessor for Date();
  sub_10000307C(v65);
  v153 = &v41[v64];
  v174 = v67;
  v166 = *(v66 + 16);
  v166(&v41[v64], &v27[v64]);
  v152 = &v41[v35[10]];
  sub_1001085EC();
  v172 = *&v27[v35[11]];
  v150 = &v41[v35[12]];
  sub_1001085EC();
  v68 = v35[14];
  v69 = &v27[v35[13]];
  v177 = *v69;
  v180 = v69[1];
  v170 = *&v27[v68];
  v168 = v27[v68 + 8];
  v70 = &v27[v35[15]];
  v71 = v27[v35[16]];
  v72 = *v70;
  v73 = v70[1];
  v74 = v27[v35[17]];
  v75 = *&v27[v35[18]];
  v76 = *&v27[v35[19]];
  v148 = &v41[v35[20]];
  sub_10003D1E4();
  v77 = v179;
  *v41 = v182;
  *(v41 + 1) = v77;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v183;
  *(v41 + 5) = v176;
  v78 = v181;
  *(v41 + 6) = v178;
  *(v41 + 7) = v78;
  sub_100108480();
  *&v41[v79] = v80;
  v81 = &v41[v35[13]];
  v82 = v180;
  *v81 = v83;
  *(v81 + 1) = v82;
  v84 = &v41[v35[14]];
  *v84 = v170;
  v84[8] = v168;
  v85 = &v41[v35[15]];
  *v85 = v72;
  *(v85 + 1) = v73;
  v175 = v71;
  v41[v35[16]] = v71;
  v173 = v74;
  v41[v35[17]] = v74;
  *&v41[v35[18]] = v75;
  *&v41[v35[19]] = v76;
  if (v80 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_10010848C(v35[8]);
    sub_100108504();
    sub_10003D1E4();
    sub_1001084EC(v35[9]);
    (v166)(v20 + v86, v153, v174);
    v154 = v35[10];
    sub_100108504();
    sub_10003D1E4();
    sub_10010869C(v35[12]);
    sub_100108504();
    sub_10003D1E4();
    v151 = v35[20];
    sub_10003D1E4();
    sub_100108284(&v184);
    swift_bridgeObjectRetain_n();
    v87 = v76;
    v163 = v76;
    swift_bridgeObjectRetain_n();
    v88 = v179;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v89 = v181;
    swift_bridgeObjectRetain_n();
    v90 = v180;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_100004ADC();
    v165 = v91;
    sub_100107DA4(v41, v92);
    v93 = v183;
    *v20 = v182;
    v20[1] = v88;
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v93;
    v20[5] = v176;
    v20[6] = v178;
    v20[7] = v89;
    sub_100108480();
    *(v20 + v94) = v95;
    v96 = (v20 + v35[13]);
    *v96 = v177;
    v96[1] = v90;
    v97 = (v20 + v35[14]);
    *v97 = v170;
    sub_100108058(v97);
    sub_1001080AC();
    *v98 = v99;
    v98[1] = &qword_1002DA970;
    *(v20 + v35[16]) = v175;
    *(v20 + v35[17]) = v173;
    *(v20 + v35[18]) = v75;
    *(v20 + v35[19]) = v87;
    v146 = v35[8];
    sub_1000035C8(&v178);
    sub_10003D1E4();
    v100 = sub_100108340(v35[9]);
    (v166)(v100, v20 + v147, v174);
    v156 = v35[10];
    sub_1000035C8(&v183);
    sub_100002854();
    sub_10003D1E4();
    v149 = v35[12];
    sub_1000035C8(&v182);
    sub_100002854();
    sub_10003D1E4();
    v155 = v35[20];
    sub_1000035C8(&v181);
    sub_10003D1E4();
    v101 = v179;

    v102 = v181;

    v103 = v180;

    sub_100107DA4(v20, v165);
    v104 = v183;
    *v159 = v182;
    v159[1] = v101;
    v159[2] = 0;
    v159[3] = 0;
    v159[4] = v104;
    v159[5] = v176;
    v159[6] = v178;
    v159[7] = v102;
    sub_100108480();
    *(v159 + v105) = v106;
    v107 = (v159 + v35[13]);
    *v107 = v177;
    v107[1] = v103;
    v108 = (v159 + v35[14]);
    *v108 = v170;
    sub_100108058(v108);
    v110 = (v159 + v109);
    *v110 = v167;
    v110[1] = v161;
    sub_10000D428();
    *(v159 + v111) = v75;
    *(v159 + v35[19]) = v163;
    v112 = v35[8];
    sub_1001081B0();
    sub_1001082C4();
    sub_10003D1E4();
    v171 = v35[9];
    sub_100107FF8();
    (v166)(v113);
    v169 = v35[10];
    sub_1001081B0();
    sub_10003D1E4();
    v158 = v35[12];
    sub_1001081B0();
    sub_10003D1E4();
    v157 = v35[20];
    sub_1001081B0();
    sub_10003D1E4();
    swift_bridgeObjectRetain_n();
    v114 = v179;

    v115 = v181;

    v116 = v180;

    sub_1001080B8(&a16);

    sub_100107DA4(v159, v165);
    v117 = v183;
    *v101 = v182;
    v101[1] = v114;
    v101[2] = 0;
    v101[3] = 0;
    v101[4] = v117;
    v101[5] = v176;
    v118 = v178;
    v101[6] = v178;
    v101[7] = v115;
    sub_100108480();
    *(v101 + v119) = v120;
    v121 = (v101 + v35[13]);
    *v121 = v177;
    v121[1] = v116;
    sub_10000A834((v101 + v35[14]));
    sub_100108058(v122);
    v124 = (v101 + v123);
    *v124 = v167;
    v124[1] = v161;
    *(v101 + v35[16]) = v175;
    *(v101 + v35[17]) = v173;
    *(v101 + v35[18]) = v75;
    *(v101 + v35[19]) = &qword_1002318B0;
    v125 = v35[8];
    sub_100007B78();
    sub_100002728(v126, v127, v128, v174);
    (v166)(v160 + v35[9], v101 + v171, v174);
    v129 = v35[10];
    sub_10003D1E4();
    v130 = v35[12];
    sub_100004920();
    sub_10003D1E4();
    v131 = v35[20];
    sub_100004920();
    sub_10003D1E4();

    sub_100107DA4(v101, v165);
    v132 = v179;
    *v160 = v182;
    v160[1] = v132;
    v160[2] = 0;
    v160[3] = 0;
    v160[4] = v183;
    v160[5] = v176;
    v133 = v181;
    v160[6] = v118;
    v160[7] = v133;
    sub_100108480();
    *(v160 + v134) = v135;
    v136 = (v160 + v35[13]);
    v137 = v180;
    *v136 = v177;
    v136[1] = v137;
    sub_10000A834((v160 + v35[14]));
    sub_100108058(v138);
    v140 = (v160 + v139);
    *v140 = v167;
    v140[1] = v161;
    sub_10000D428();
    *(v160 + v141) = v75;
    *(v160 + v35[19]) = &qword_1002318B0;
    sub_100007C00();
    sub_10000288C(&a14);
    sub_100107FA0();
    sub_10000B7B0();
    sub_100002728(v142, v143, v144, v162);
    sub_1001082DC();
    sub_100109384(v145);
    sub_100004E24(&qword_1002DA970, &qword_1002DCC10, &unk_100238220);
    sub_100107DA4(v160, v165);
    sub_1000027F8();
  }
}

void sub_1001047CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v24;
  a20 = v25;
  v131 = v26;
  v128 = v27;
  v129 = v28;
  v127 = v29;
  v130 = v30;
  v31 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v31);
  v33 = *(v32 + 64);
  sub_100003774();
  __chkstk_darwin(v34);
  sub_100108404();
  v35 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v35);
  v37 = *(v36 + 64);
  sub_100003774();
  __chkstk_darwin(v38);
  v40 = &v122 - v39;
  v41 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v42 = sub_10000307C(v41);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_10000308C();
  v47 = v45 - v46;
  __chkstk_darwin(v48);
  sub_100002DF4();
  __chkstk_darwin(v49);
  sub_1001080E4();
  __chkstk_darwin(v50);
  sub_1000062E0();
  __chkstk_darwin(v51);
  sub_10000D478();
  sub_10000A1C0(v52);
  sub_10003D1E4();
  v53 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000B3A0(v20, 1, v53);
  if (v59)
  {
    sub_100004E24(v20, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v54, v55, v56, v41);
  }

  else
  {
    v57 = *(v53 + 80);
    sub_10003D1E4();
    sub_100004ADC();
    sub_100107DA4(v20, v58);
    sub_10000B3A0(v40, 1, v41);
    if (!v59)
    {
      sub_100007C00();
      sub_100107FA0();
      goto LABEL_8;
    }
  }

  v60 = v41[10];
  v61 = type metadata accessor for Date();
  sub_100007B78();
  sub_100002728(v62, v63, v64, v61);
  v65 = v41[13];
  sub_100007B78();
  sub_100002728(v66, v67, v68, v61);
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 40) = 1;
  *(v47 + 48) = 0u;
  *(v47 + 64) = 0u;
  *(v47 + 80) = 0u;
  *(v47 + v41[11]) = 2;
  *(v47 + v41[12]) = 2;
  sub_1001083C4(v41[14]);
  sub_1001083C4(v41[15]);
  sub_1001083C4(v41[16]);
  sub_10000B3A0(v40, 1, v41);
  if (!v59)
  {
    sub_100004E24(v40, &qword_1002DCC10, &unk_100238220);
  }

LABEL_8:
  v69 = *v47;
  v70 = *(v47 + 8);
  v71 = *(v47 + 24);
  v145 = *(v47 + 16);
  v146 = v69;
  v72 = *(v47 + 56);
  v123 = *(v47 + 48);
  sub_1001081E0(v72);
  v73 = *(v47 + 72);
  v135 = *(v47 + 64);
  sub_1001082D0(v73);
  v74 = *(v47 + 88);
  v142 = *(v47 + 80);
  v140 = v74;
  v125 = v41[10];
  sub_1001088A0();
  v75 = v41[12];
  v147 = *(v47 + v41[11]);
  v144 = *(v47 + v75);
  sub_100002E6C(v41[13]);
  sub_1001088A0();
  v76 = v41[15];
  v77 = v47 + v41[14];
  v134 = *v77;
  v78 = v134;
  v133 = *(v77 + 8);
  sub_100108648(v47 + v76);
  v79 = v47 + v41[16];
  v136 = *v79;
  v139 = *(v79 + 8);

  v141 = v71;

  v80 = v122;

  sub_100005CC4(&a14);

  sub_100006670();
  v143 = v81;
  sub_100107DA4(v47, v82);
  v83 = v145;
  *v23 = v146;
  *(v23 + 8) = v70;
  *(v23 + 16) = v83;
  *(v23 + 24) = v71;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  sub_1001082DC();
  *(v23 + 48) = v84;
  *(v23 + 56) = v80;
  *(v23 + 64) = v135;
  *(v23 + 72) = v74;
  v85 = v74;
  v86 = v140;
  *(v23 + 80) = v142;
  *(v23 + 88) = v86;
  *(v23 + v41[11]) = v147;
  *(v23 + v41[12]) = v144;
  v87 = v23 + v41[14];
  *v87 = v78;
  LOBYTE(v78) = v133;
  *(v87 + 8) = v133;
  sub_1000109E8(v23 + v41[15]);
  sub_100013D8C((v23 + v41[16]));
  *(v88 + 8) = v139;
  v123 = v41[10];
  sub_10010808C(&a17);
  sub_10003D1E4();
  v125 = v41[13];
  sub_10010808C(&a16);
  sub_1001088C0();
  v89 = v70;
  swift_bridgeObjectRetain_n();
  v90 = v141;
  swift_bridgeObjectRetain_n();
  sub_100108528();
  swift_bridgeObjectRetain_n();

  sub_100107DA4(v23, v143);
  v91 = v145;
  v92 = v146;
  *v22 = v146;
  *(v22 + 8) = v70;
  *(v22 + 16) = v91;
  *(v22 + 24) = v90;
  *(v22 + 32) = 0;
  *(v22 + 40) = 1;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = v135;
  *(v22 + 72) = v85;
  *(v22 + 80) = v142;
  *(v22 + 88) = v86;
  *(v22 + v41[11]) = v147;
  *(v22 + v41[12]) = v144;
  v93 = v22 + v41[14];
  *v93 = v134;
  *(v93 + 8) = v78;
  v94 = v22 + v41[15];
  v95 = v138;
  *v94 = v138;
  LOBYTE(v90) = v137;
  *(v94 + 8) = v137;
  v96 = v22 + v41[16];
  v97 = v136;
  *v96 = v136;
  *(v96 + 8) = v139;
  v135 = v41[10];
  sub_1001082DC();
  sub_10003D1E4();
  v124 = v41[13];
  sub_100108240();
  sub_10003D1E4();

  v98 = v141;

  v99 = v140;

  sub_100107DA4(v22, v143);
  *v21 = v92;
  v21[1] = v89;
  v132 = v89;
  v100 = v145;
  v21[2] = v145;
  v21[3] = v98;
  sub_10010857C();
  v101 = v142;
  v21[10] = v142;
  v21[11] = v99;
  LOBYTE(v99) = v147;
  *(v21 + v41[11]) = v147;
  *(v21 + v41[12]) = v144;
  sub_10010845C();
  *v102 = v134;
  *(v102 + 8) = v133;
  v103 = v21 + v41[15];
  *v103 = v95;
  v103[8] = v90;
  v104 = v21 + v41[16];
  *v104 = v97;
  LOBYTE(v95) = v139;
  v104[8] = v139;
  v134 = v41[10];
  v105 = v126;
  sub_10003D1E4();
  v135 = v41[13];
  sub_100108140();
  sub_1001088C0();
  v106 = v132;

  v107 = v141;

  v108 = v140;

  sub_100107DA4(v21, v143);
  *v105 = v146;
  *(v105 + 8) = v106;
  *(v105 + 16) = v100;
  *(v105 + 24) = v107;
  *(v105 + 32) = 0;
  *(v105 + 40) = 1;
  *(v105 + 48) = 0u;
  *(v105 + 64) = 0u;
  *(v105 + 80) = v101;
  *(v105 + 88) = v108;
  *(v105 + v41[11]) = v99;
  LOBYTE(v106) = v144;
  *(v105 + v41[12]) = v144;
  v109 = v105 + v41[14];
  v110 = v128;
  *v109 = v128;
  LOBYTE(v100) = v127 & 1;
  *(v109 + 8) = v127 & 1;
  sub_1000109E8(v105 + v41[15]);
  v111 = v105 + v41[16];
  v112 = v136;
  *v111 = v136;
  *(v111 + 8) = v95;
  v113 = v41[10];
  v114 = v130;
  sub_10003D1E4();
  v115 = v41[13];
  sub_10003D1E4();
  sub_100107DA4(v105, v143);
  v116 = v132;
  *v114 = v146;
  *(v114 + 8) = v116;
  v117 = v141;
  *(v114 + 16) = v145;
  *(v114 + 24) = v117;
  *(v114 + 32) = 0;
  *(v114 + 40) = 1;
  *(v114 + 48) = 0u;
  *(v114 + 64) = 0u;
  v118 = v140;
  *(v114 + 80) = v142;
  *(v114 + 88) = v118;
  *(v114 + v41[11]) = v147;
  *(v114 + v41[12]) = v106;
  v119 = v114 + v41[14];
  *v119 = v110;
  *(v119 + 8) = v100;
  v120 = v114 + v41[15];
  *v120 = v129;
  *(v120 + 8) = v131 & 1;
  v121 = v114 + v41[16];
  *v121 = v112;
  *(v121 + 8) = v95;
  sub_1000027F8();
}

uint64_t sub_100104FE0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v68 = type metadata accessor for TimeZone();
  v67 = *(v68 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v62 - v12;
  v79 = type metadata accessor for Date();
  v77 = *(v79 - 8);
  v13 = *(v77 + 64);
  __chkstk_darwin(v79);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = &v62 - v16;
  __chkstk_darwin(v17);
  v63 = &v62 - v18;
  __chkstk_darwin(v19);
  v74 = &v62 - v20;
  __chkstk_darwin(v21);
  v72 = &v62 - v22;
  __chkstk_darwin(v23);
  v73 = &v62 - v24;
  v25 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v62 - v27;
  v29 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v30 = *(*(v29 - 1) + 64);
  __chkstk_darwin(v29);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(type metadata accessor for TSDataSyncDatasetState(0) + 32);
  v33 = *(a4 + 32);
  v34 = *(a4 + 48);
  v70 = *(a4 + 40);
  v71 = v34;
  v35 = *(a4 + 56);
  sub_10003D1E4();
  if (sub_100004DFC(v28, 1, v29) == 1)
  {
    sub_100004E24(v28, &qword_1002DBC20, &unk_100234B00);
  }

  else
  {
    sub_100107FA0();
    v46 = v29[8];
    v47 = *&v32[v46];
    v48 = *&v32[v46 + 8];
    v49 = &a1[v46];
    v50 = v47 == *v49 && v48 == *(v49 + 1);
    if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100107DA4(v32, type metadata accessor for TSDataSyncTriggerEvent);
      v36 = 0;
      return v36 & 1;
    }

    sub_100107DA4(v32, type metadata accessor for TSDataSyncTriggerEvent);
  }

  v36 = 0;
  switch(v33)
  {
    case 1:
    case 3:
      if (*&a1[v29[7] + 8])
      {
        goto LABEL_16;
      }

      v37 = v77;
      v38 = v72;
      v39 = v79;
      (*(v77 + 16))(v72, a1, v79);
      v40 = &a1[v29[6]];
      v41 = *v40;
      v40[8];
      v42 = v73;
      static Date.+ infix(_:_:)();
      v43 = *(v37 + 8);
      v43(v38, v39);
      v44 = v75;
      sub_10003D1E4();
      if (sub_100004DFC(v44, 1, v39) == 1)
      {
        v45 = v74;
        goto LABEL_7;
      }

      v45 = v74;
      (*(v37 + 32))(v74, v44, v39);
      goto LABEL_22;
    case 2:
    case 4:
      if (*&a1[v29[7] + 8])
      {
LABEL_16:
        v36 = 1;
        return v36 & 1;
      }

      v51 = v71;

      if (v35)
      {
        v52._countAndFlagsBits = v70;
        v52._object = v51;
        SwifCron.init(_:)(&v80, v52);
        if (v53)
        {
          return v36 & 1;
        }

        v54 = v69;
        SwifCron.next(from:)(a1, v69);
        sub_1000ED114(&v80);
      }

      else
      {
        v56._countAndFlagsBits = v70;
        v56._object = v51;
        SwifCron.init(_:)(&v81, v56);
        if (v57)
        {
          return v36 & 1;
        }

        v58 = v66;
        static TimeZone.autoupdatingCurrent.getter();
        v54 = v69;
        SwifCron.next(from:timeZone:)(a1, v58, v69);
        (*(v67 + 8))(v58, v68);
        sub_1000ED114(&v81);
      }

      v42 = v63;
      static Date.+ infix(_:_:)();
      v60 = v77;
      v43 = *(v77 + 8);
      v39 = v79;
      v43(v54, v79);
      v44 = v65;
      sub_10003D1E4();
      v61 = sub_100004DFC(v44, 1, v39);
      v45 = v64;
      if (v61 == 1)
      {
LABEL_7:
        static Date.distantPast.getter();
        if (sub_100004DFC(v44, 1, v39) != 1)
        {
          sub_100004E24(v44, &qword_1002DA970, &qword_1002318B0);
        }
      }

      else
      {
        (*(v60 + 32))(v64, v44, v39);
      }

LABEL_22:
      sub_1000108D8();
      v55 = dispatch thunk of static Comparable.< infix(_:_:)();
      v43(v45, v39);
      v43(v42, v39);
      v36 = v55 ^ 1;
      break;
    default:
      return v36 & 1;
  }

  return v36 & 1;
}

void sub_1001057C0()
{
  sub_100004168();
  v4 = v3;
  sub_1001084E0(v5);
  v6 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  v11 = &v130 - v10;
  v12 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v12);
  v14 = *(v13 + 64);
  sub_100003774();
  __chkstk_darwin(v15);
  sub_100108404();
  v16 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  v17 = sub_10000307C(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000308C();
  sub_1000062E0();
  __chkstk_darwin(v20);
  sub_100108044();
  __chkstk_darwin(v21);
  v23 = &v130 - v22;
  __chkstk_darwin(v24);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v25);
  sub_10000D478();
  sub_10000A1C0(v26);
  if (v4)
  {
    v159 = v4;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    sub_100108754();
    if (swift_dynamicCast())
    {
      v27 = v158;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  sub_10003D1E4();
  v28 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000B3A0(v11, 1, v28);
  v137 = v4;
  if (v34)
  {
    sub_100004E24(v11, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v29, v30, v31, v16);
    goto LABEL_11;
  }

  v32 = *(v28 + 80);
  sub_10003D1E4();
  sub_100004ADC();
  sub_100107DA4(v11, v33);
  sub_1000071D8(v0);
  if (v34)
  {
LABEL_11:
    v35 = v16[10];
    v36 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v37, v38, v39, v36);
    v40 = sub_10000D500(v16[13]);
    sub_100002728(v40, v41, v42, v36);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 40) = 1;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    sub_100108108();
    *(v2 + v43) = v44;
    sub_100005134(v16[14]);
    *(v45 + 8) = 1;
    sub_100005134(v16[15]);
    *(v46 + 8) = 1;
    sub_100005134(v16[16]);
    *(v47 + 8) = 1;
    sub_1000071D8(v0);
    if (!v34)
    {
      sub_100004E24(v0, &qword_1002DCC10, &unk_100238220);
    }

    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_14:
    v154 = [v27 code];
    goto LABEL_17;
  }

  sub_100007C00();
  sub_100107FA0();
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_16:
  v154 = 0;
LABEL_17:
  v146 = v27 == 0;
  v48 = *v2;
  v49 = *(v2 + 8);
  v50 = *(v2 + 24);
  v152 = *(v2 + 16);
  v51 = *(v2 + 48);
  v52 = *(v2 + 64);
  v139 = *(v2 + 56);
  v140 = v52;
  v53 = *(v2 + 72);
  v142 = v51;
  v143 = v53;
  v54 = v1 + v16[10];
  v55 = *(v2 + 88);
  v156 = *(v2 + 80);
  v157 = v48;
  v134 = v54;
  sub_100108498();
  sub_10003D1E4();
  v56 = *(v2 + v16[12]);
  v149 = *(v2 + v16[11]);
  v150 = v56;
  v133 = v1 + v16[13];
  sub_100108498();
  sub_10003D1E4();
  v57 = v16[15];
  v58 = v2 + v16[14];
  v145 = *v58;
  LODWORD(v144) = *(v58 + 8);
  v148 = *(v2 + v57);
  v147 = *(v2 + v57 + 8);
  v59 = v2 + v16[16];
  v155 = *v59;
  v141 = v27;
  v60 = *(v59 + 8);

  v61 = v139;

  v62 = v143;

  sub_100006670();
  sub_100107DA4(v2, v63);
  *v1 = v157;
  *(v1 + 8) = v49;
  v153 = v49;
  *(v1 + 16) = v152;
  *(v1 + 24) = v50;
  v64 = v50;
  *(v1 + 32) = v154;
  *(v1 + 40) = v146;
  *(v1 + 48) = v142;
  *(v1 + 56) = v61;
  *(v1 + 64) = v140;
  *(v1 + 72) = v62;
  *(v1 + 80) = v156;
  *(v1 + 88) = v55;
  v151 = v55;
  v65 = v150;
  *(v1 + v16[11]) = v149;
  *(v1 + v16[12]) = v65;
  v66 = (v1 + v16[14]);
  *v66 = v145;
  sub_100108058(v66);
  sub_10010865C((v1 + v67));
  sub_100013E00(v68);
  sub_1001084D4((v1 + v69));
  v146 = v60;
  *(v70 + 8) = v60;
  v71 = v141;
  if (v141)
  {

    v72 = [v71 domain];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = v71;
  }

  else
  {

    v76 = 0;
    v73 = 0;
    v75 = 0;
  }

  v77 = v71 == 0;
  LODWORD(v139) = v71 == 0;
  sub_1001081E0(v16[10]);
  sub_10010831C();
  sub_10003D1E4();
  sub_100002E6C(v16[13]);
  sub_10010831C();
  sub_10003D1E4();
  sub_100006670();
  v141 = v78;
  sub_100107DA4(v1, v79);
  v80 = v153;
  *v23 = v157;
  *(v23 + 1) = v80;
  *(v23 + 2) = v152;
  *(v23 + 3) = v64;
  v81 = v64;
  *(v23 + 4) = v154;
  v23[40] = v77;
  *(v23 + 6) = v73;
  *(v23 + 7) = v75;
  v142 = v75;
  v82 = v143;
  *(v23 + 8) = v140;
  *(v23 + 9) = v82;
  v83 = v151;
  *(v23 + 10) = v156;
  *(v23 + 11) = v83;
  v84 = v83;
  v85 = v150;
  v23[v16[11]] = v149;
  v23[v16[12]] = v85;
  v86 = &v23[v16[14]];
  v131 = v73;
  *v86 = v145;
  sub_100108058(v86);
  sub_10010865C(&v23[v87]);
  sub_100013E00(v88);
  sub_1001084D4(&v23[v89]);
  *(v90 + 8) = v146;
  swift_bridgeObjectRetain_n();
  sub_100108528();
  swift_bridgeObjectRetain_n();
  v138 = v64;
  swift_bridgeObjectRetain_n();
  v91 = v84;
  sub_100108334();
  swift_bridgeObjectRetain_n();
  v92 = static HTTPHelpers.statusCodeString(error:)();
  v140 = v92;
  v143 = v93;

  v94 = v16[10];
  sub_100108174();
  v95 = v132;
  sub_10003D1E4();
  v137 = v16[13];
  sub_100108234();
  sub_10003D1E4();
  sub_100107DA4(v23, v141);
  v96 = v153;
  *v95 = v157;
  *(v95 + 8) = v96;
  *(v95 + 16) = v152;
  *(v95 + 24) = v81;
  *(v95 + 32) = v154;
  v97 = v139;
  *(v95 + 40) = v139;
  v98 = v142;
  *(v95 + 48) = v73;
  *(v95 + 56) = v98;
  v99 = v143;
  *(v95 + 64) = v92;
  *(v95 + 72) = v99;
  *(v95 + 80) = v156;
  *(v95 + 88) = v91;
  LOBYTE(v91) = v149;
  v100 = v150;
  *(v95 + v16[11]) = v149;
  *(v95 + v16[12]) = v100;
  v101 = (v95 + v16[14]);
  *v101 = v145;
  sub_100108058(v101);
  sub_10010865C((v95 + v102));
  sub_100013E00(v103);
  sub_1001084D4((v95 + v104));
  *(v105 + 8) = v146;
  v145 = v16[10];
  v106 = v135;
  sub_10003D1E4();
  v144 = v16[13];
  sub_10003D1E4();
  v107 = v99;
  swift_bridgeObjectRetain_n();
  v108 = v96;

  v109 = v138;

  v110 = v151;

  v111 = v142;

  sub_100107DA4(v95, v141);
  *v106 = v157;
  *(v106 + 8) = v108;
  v112 = v152;
  *(v106 + 16) = v152;
  *(v106 + 24) = v109;
  *(v106 + 32) = v154;
  *(v106 + 40) = v97;
  v113 = v131;
  *(v106 + 48) = v131;
  *(v106 + 56) = v111;
  v114 = v140;
  *(v106 + 64) = v140;
  *(v106 + 72) = v107;
  *(v106 + 80) = v156;
  *(v106 + 88) = v110;
  *(v106 + v16[11]) = v91;
  LOBYTE(v91) = v150;
  *(v106 + v16[12]) = v150;
  sub_100003C34(v106 + v16[14]);
  sub_10010865C((v106 + v115));
  LOBYTE(v111) = v146;
  sub_100013E00(v116);
  sub_1001084D4((v106 + v117));
  *(v118 + 8) = v111;
  v119 = v16[10];
  v120 = v136;
  sub_10003D1E4();
  v121 = v16[13];
  sub_10003D1E4();
  sub_100107DA4(v106, v141);
  v122 = v153;
  *v120 = v157;
  *(v120 + 8) = v122;
  v123 = v138;
  *(v120 + 16) = v112;
  *(v120 + 24) = v123;
  *(v120 + 32) = v154;
  *(v120 + 40) = v139;
  v125 = v142;
  v124 = v143;
  *(v120 + 48) = v113;
  *(v120 + 56) = v125;
  *(v120 + 64) = v114;
  *(v120 + 72) = v124;
  v126 = v151;
  *(v120 + 80) = v156;
  *(v120 + 88) = v126;
  *(v120 + v16[11]) = v149;
  *(v120 + v16[12]) = v91;
  sub_100003C34(v120 + v16[14]);
  sub_10000B3B8(v120 + v127);
  sub_1001084D4((v120 + v128));
  *(v129 + 8) = v111;
  sub_1000027F8();
}

void sub_100106130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v21;
  a20 = v22;
  v178 = v23;
  v25 = v24;
  v27 = v26;
  v29 = sub_10010834C(v28);
  v30 = type metadata accessor for TSDataSyncDatasetState(v29);
  v31 = sub_100003724(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_1000037D4();
  v182 = v34;
  sub_100005238();
  __chkstk_darwin(v35);
  sub_1000062E0();
  __chkstk_darwin(v36);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_10000D478();
  v42 = sub_100008280(v41);
  v43 = type metadata accessor for TSDataSyncTriggerEvent(v42);
  v44 = sub_100003724(v43);
  v176 = v45;
  v177 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v48);
  sub_10000D478();
  v190 = v49;
  v50 = *(v25 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20));
  v51 = type metadata accessor for TSDataSyncExternalEvent(0);
  v52 = *(v27 + v51[8]);

  v53 = sub_1001AC0C8(v25, v52);
  if (!v53)
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v53[2];
  if (!v54)
  {
LABEL_31:

    sub_10010958C();

    sub_1000027F8();
    return;
  }

  v55 = v51[6];
  v175 = *(v27 + v51[7]);
  v174 = *(v27 + v55);
  v173 = *(v27 + v55 + 8);
  v56 = (v27 + v51[10]);
  v57 = (v27 + v51[9]);
  v172 = *v57;
  v171 = v57[1];
  v170 = *v56;
  sub_100002E6C(v56[1]);
  v59 = v58;
  v188 = type metadata accessor for Date();
  v60 = *(v188 - 8);
  v61 = (v59 + 40);
  v62 = *(v60 + 16);
  v187 = v60 + 16;
  v186 = v62;
  while (1)
  {
    v64 = *(v61 - 1);
    v63 = *v61;
    v183 = v61;
    v65 = v190;
    (v62)(v190, v178, v188);
    *(v65 + v177[5]) = v175;
    v66 = v65 + v177[6];
    *v66 = v174;
    *(v66 + 8) = v173;
    v67 = (v65 + v177[7]);
    *v67 = v172;
    v67[1] = v171;
    v68 = (v65 + v177[8]);
    *v68 = v170;
    v68[1] = v169;
    v69 = v50[2];

    v184 = v54;
    v185 = v63;
    v189 = v64;
    if (v69)
    {
      sub_10014EB30(v64, v63);
      if (v70)
      {
        sub_1001083B4();
        sub_100006D1C();
        sub_10000288C(&v178);
        sub_100107DFC();
        sub_100007FA8();
        sub_10000288C(&a15);
        sub_100107FA0();
        v71 = *(v69 + v30[19]);
        sub_10000C020();
        sub_100107DFC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013C1C0(0, *(v71 + 16) + 1, 1, v71);
          v71 = v157;
        }

        v73 = *(v71 + 16);
        v72 = *(v71 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_10013C1C0(v72 > 1, v73 + 1, 1, v71);
          v71 = v158;
        }

        *(v71 + 16) = v73 + 1;
        v74 = v71 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v73;
        sub_100107FA0();
        v75 = v168[1];
        v181 = *v168;
        v76 = v168[2];
        v77 = v168[3];
        v78 = v168[5];
        v179 = v168[4];
        v180 = v76;
        v164 = v78;
        v166 = v168[6];
        v165 = v168[7];
        v79 = v30[8];
        sub_1001082C4();
        sub_10003D1E4();
        v80 = sub_100108748(v30[9]);
        v186(v80);
        v81 = v30[10];
        sub_1001085BC();
        v82 = v30[12];
        v163 = *(v168 + v30[11]);
        sub_1001085BC();
        v83 = (v168 + v30[13]);
        v84 = v83[1];
        v162 = *v83;
        v85 = (v168 + v30[14]);
        v86 = *v85;
        sub_1001087E4(v85);
        v87 = (v168 + v30[15]);
        v88 = v87[1];
        v160 = *v87;
        v161 = *(v168 + v30[16]);
        v159 = *(v168 + v30[17]);
        v89 = *(v168 + v30[18]);
        v90 = v30[20];
        sub_10003D1E4();
        v91 = v180;
        *v50 = v181;
        v50[1] = v75;
        v50[2] = v91;
        v50[3] = v77;
        v50[4] = v179;
        v50[5] = v164;
        v50[6] = v166;
        v50[7] = v165;
        sub_1000DB94C(v30[11]);
        v92 = (v50 + v30[13]);
        *v92 = v162;
        v92[1] = v84;
        sub_10000A834((v50 + v30[14]));
        sub_100010E0C(v93);
        v94 = (v50 + v30[15]);
        *v94 = v160;
        v94[1] = v88;
        sub_100108278(v30[16]);
        sub_100108278(v30[17]);
        *(v50 + v30[18]) = v89;
        *(v50 + v30[19]) = v71;
        sub_100007FA8();
        sub_100107FA0();

        sub_10000B358(&v192);
        swift_isUniquelyReferenced_nonNull_native();
        v191 = v71;
        v95 = v185;
        sub_10014EB30(v189, v185);
        sub_10000B818();
        if (__OFADD__(v98, v99))
        {
          goto LABEL_34;
        }

        v100 = v96;
        v101 = v97;
        sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
        if (sub_100108860())
        {
          v102 = sub_10014EB30(v189, v95);
          v62 = v186;
          if ((v101 & 1) != (v103 & 1))
          {
            goto LABEL_36;
          }

          v100 = v102;
        }

        else
        {
          v62 = v186;
        }

        v50 = v191;
        if (v101)
        {
          sub_100108728();
          v150 = sub_10010826C();
          sub_100107190(v150, v151);
        }

        else
        {
          sub_1000035B8(&v191[v100 >> 6]);
          v152 = (v50[6] + 16 * v100);
          *v152 = v189;
          v152[1] = v95;
          sub_100108728();
          sub_100007FA8();
          sub_10010826C();
          sub_100107FA0();
          v153 = v50[2];
          v146 = __OFADD__(v153, 1);
          v154 = v153 + 1;
          if (v146)
          {
            goto LABEL_35;
          }

          v50[2] = v154;
        }

        sub_100004ADC();
        sub_100107DA4(v168, v155);
        sub_100008324();
        sub_100107DA4(v190, v156);
        v149 = v184;
        goto LABEL_30;
      }
    }

    v104 = v30[8];
    sub_100007B78();
    v105 = v188;
    sub_100002728(v106, v107, v108, v188);
    v179 = v30[9];
    static Date.distantPast.getter();
    v181 = v30[10];
    v109 = sub_10000D500(v181);
    sub_100002728(v109, v110, v111, v105);
    v180 = v30[12];
    v112 = sub_10000D500(v180);
    sub_100002728(v112, v113, v114, v105);
    v115 = Dictionary.init(dictionaryLiteral:)();
    v116 = v30[20];
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v117, v118, v119, v120);
    sub_100108074();
    sub_1001080F4();
    *v121 = 0;
    v121[1] = 0;
    sub_10010845C();
    sub_100108004(v122);
    sub_100004044();
    *(v20 + v123) = _swiftEmptyArrayStorage;
    sub_100099DF4(&qword_1002DCC58, &unk_100238240);
    v124 = *(v176 + 72);
    v125 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_10022E400;
    sub_10000C020();
    sub_100107DFC();
    v127 = v30[8];
    sub_10003D1E4();
    (v186)(v167 + v30[9], v20 + v179, v105);
    v128 = v30[10];
    sub_10010831C();
    sub_10003D1E4();
    v129 = v30[12];
    sub_10010831C();
    v130 = v185;
    sub_10003D1E4();
    v131 = v30[20];
    sub_10003D1E4();

    sub_100004ADC();
    sub_100107DA4(v20, v132);
    sub_100108798();
    *(v167 + 48) = 0;
    *(v167 + 56) = 0;
    *(v167 + v30[11]) = 0;
    v133 = (v167 + v30[13]);
    *v133 = 0;
    v133[1] = 0;
    sub_100108004(v167 + v30[14]);
    v134 = (v167 + v30[15]);
    *v134 = 0;
    v134[1] = 0;
    *(v167 + v30[16]) = 0;
    *(v167 + v30[17]) = 0;
    *(v167 + v30[18]) = v115;
    *(v167 + v30[19]) = v126;
    sub_100007FA8();
    sub_100107FA0();
    swift_isUniquelyReferenced_nonNull_native();
    v191 = v50;
    v135 = v189;
    v136 = sub_10014EB30(v189, v130);
    if (__OFADD__(v50[2], (v137 & 1) == 0))
    {
      break;
    }

    v138 = v136;
    v139 = v137;
    sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
    if (sub_100108860())
    {
      v140 = sub_10014EB30(v135, v130);
      if ((v139 & 1) != (v141 & 1))
      {
        goto LABEL_36;
      }

      v138 = v140;
    }

    v50 = v191;
    if (v139)
    {
      sub_1001083B4();
      sub_100107190(v182, v142 + v143 * v138);
    }

    else
    {
      sub_1000035B8(&v191[v138 >> 6]);
      v144 = (v50[6] + 16 * v138);
      *v144 = v135;
      v144[1] = v130;
      sub_1001083B4();
      sub_100007FA8();
      sub_100107FA0();
      v145 = v50[2];
      v146 = __OFADD__(v145, 1);
      v147 = v145 + 1;
      if (v146)
      {
        goto LABEL_33;
      }

      v50[2] = v147;
    }

    sub_100008324();
    sub_100107DA4(v190, v148);
    v149 = v184;
    v62 = v186;
LABEL_30:
    v61 = v183 + 2;
    v54 = v149 - 1;
    if (!v54)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100106C4C()
{
  v1 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  v2 = sub_1000030B8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  sub_10000307C(v8);
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_10003CF80();
  sub_10003D1E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100004E24(v0, &qword_1002DBC10, &unk_10023F6E0);
    return 0;
  }

  else
  {
    sub_1000F8344();
    sub_100107FA0();
    v12 = *(v7 + 16);
    v13 = *(v7 + 24);

    sub_100107DA4(v7, type metadata accessor for TSDataSyncServerDatasetGroupResponse);
  }

  return v12;
}

uint64_t sub_100106D98(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1000D6484();
    v2 = Dictionary.init(dictionaryLiteral:)();
    v4 = v1 + 64;
    v3 = *(v1 + 64);
    v5 = *(v1 + 32);
    sub_100007FC0();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;

    v11 = 0;
    v34 = v10;
    v35 = v1 + 64;
    v36 = v1;
    if (!v8)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v12 = v11;
LABEL_7:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(v1 + 56) + 24 * v13);
      v18 = v17[2];
      v37 = *(*v17 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10014EB30(v16, v15);
      sub_10000B818();
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      v26 = v21;
      sub_100099DF4(&qword_1002DCC40, &qword_100236618);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
      {
        sub_10014EB30(v16, v15);
        sub_10000A224();
        if (!v28)
        {
          goto LABEL_24;
        }

        v25 = v27;
      }

      v8 &= v8 - 1;
      if (v26)
      {
        *(v2[7] + 8 * v25) = v37;
      }

      else
      {
        sub_1001086C0();
        sub_1000035B8(v29);
        v30 = (v2[6] + 16 * v25);
        *v30 = v16;
        v30[1] = v15;
        *(v2[7] + 8 * v25) = v37;
        sub_1001086CC();
        if (v32)
        {
          goto LABEL_23;
        }

        v2[2] = v31;
      }

      v11 = v12;
      v4 = v35;
      v1 = v36;
      v10 = v34;
      if (!v8)
      {
LABEL_4:
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {

            return v2;
          }

          v8 = *(v4 + 8 * v12);
          ++v11;
          if (v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_100106FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

void sub_100107090()
{
  v1 = *v0;
  sub_100120E3C();
  *v0 = v2;
}

void sub_1001070B0()
{
  v1 = *v0;
  sub_100120F1C();
  *v0 = v2;
}

void sub_1001070F0()
{
  v1 = *v0;
  sub_100121808();
  *v0 = v2;
}

void sub_100107110()
{
  v1 = *v0;
  sub_1001218C4();
  *v0 = v2;
}

void sub_100107130()
{
  v1 = *v0;
  sub_100121978();
  *v0 = v2;
}

void sub_100107150()
{
  v1 = *v0;
  sub_100121A90();
  *v0 = v2;
}

void sub_100107170()
{
  v1 = *v0;
  sub_100121C2C();
  *v0 = v2;
}

uint64_t sub_100107190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001071F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100107254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

Swift::Int sub_1001072CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100122C48(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100107338(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100107338(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1001074F4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10010742C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10010742C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1001074F4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_10013BF14();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_10013BF14();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_100107B28((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1001079FC(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1001079FC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100107B28((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100107B28(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_10013CAD8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_10013CAD8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_100107CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_100107D70(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100107DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100107DFC()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_100107EB0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100107254(result, 1, sub_10013C0F0);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10013CAD8((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100107FA0()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

void sub_100108014()
{
  v1 = *(v0 - 744);
  v2 = *(v0 - 776);
  v3 = *(v0 - 752);
}

void sub_100108074()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0;
}

void sub_1001080D0(void *a1@<X8>)
{
  v4 = *(v1 - 256);
  v5 = *(v3 - 200);
  *a1 = v4;
  a1[1] = v5;
  v6 = *(v2 + 64);
}

uint64_t sub_10010824C()
{

  return sub_1001071F4(v0, v1);
}

void sub_10010829C(uint64_t a1@<X8>)
{
  *(v2 - 256) = *a1;
  *(v2 - 264) = *(a1 + 8);
  v3 = *(v1 + 60);
  v4 = *(v1 + 64);
}

void sub_100108364(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

__n128 sub_100108374()
{
  result = *(v2 - 128);
  v0[5] = result;
  v4 = *(v1 + 44);
  return result;
}

__n128 sub_100108384()
{
  result = *(v2 - 128);
  v1[5] = result;
  v4 = *(v0 + 44);
  return result;
}

void sub_100108394(void *a1@<X8>)
{
  v3 = *(v2 - 176);
  *a1 = *(v2 - 168);
  a1[1] = v3;
  v4 = *(v1 + 56);
}

void sub_1001083A4(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void sub_1001083C4(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void sub_100108468()
{
  *(v1 + *(v0 + 44)) = 0;
  v3 = v1 + *(v0 + 52);
  v4 = *(v2 - 184);
}

void sub_1001084A4(uint64_t a1@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = *(v4 - 228);
  v5 = v2 + *(v1 + 60);
}

void sub_100108540()
{
  *(v0 + *(v3 + 36)) = v1;
  v5 = (v0 + *(v3 + 40));
  *v5 = v2;
  v5[1] = v4;
}

double sub_10010857C()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t sub_1001085A0()
{

  return sub_10003D1E4();
}

uint64_t sub_1001085BC()
{

  return sub_10003D1E4();
}

uint64_t sub_1001085D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
}

uint64_t sub_1001085EC()
{

  return sub_10003D1E4();
}

uint64_t sub_100108604@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
}

uint64_t sub_100108628()
{
  result = *(v0 - 824);
  v2 = *(v0 - 832);
  return result;
}

void sub_10010867C()
{
  v4 = (*(v0 + 48) + 16 * v1);
  *v4 = v3;
  v4[1] = v2;
  v5 = *(v0 + 56);
}

void sub_1001086A8()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 256);
  v3 = *(v0 - 248);
}

void sub_10010873C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_100108798()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

BOOL sub_100108840()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

BOOL sub_100108860()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100108880()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088A0()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088C0()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088D8()
{

  return sub_10003D1E4();
}

uint64_t sub_1001088F0()
{

  return sub_100107E54(v0 - 112, v0 - 328);
}

void sub_100108970()
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_100108AB4();
    if (v1 <= 0x3F)
    {
      sub_100108EC0(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100109274(319, &qword_1002DCCD0, &type metadata for TSDataSyncDatasetIdentifier, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100109274(319, &unk_1002DCCD8, &type metadata for TSDataSyncDatasetGroupMetricsFields, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100108AB4()
{
  if (!qword_1002DCCC8)
  {
    type metadata accessor for TSDataSyncDatasetState(255);
    sub_1000D6484();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DCCC8);
    }
  }
}

uint64_t sub_100108B40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100108B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100108C20()
{
  sub_100109274(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100108EC0(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v5 = type metadata accessor for Date();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_100109274(319, &qword_1002DCD88, &type metadata for Int, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_100108E64();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_100108EC0(319, &qword_1002DC700, type metadata accessor for TSDataSyncTriggerEvent, &type metadata accessor for Array);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            sub_100108EC0(319, &unk_1002DCD98, type metadata accessor for TSDataSyncDatasetMetricsFields, &type metadata accessor for Optional);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_100108E64()
{
  if (!qword_1002DCD90)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DCD90);
    }
  }
}

void sub_100108EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100108F8C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100109274(319, &qword_1002DC7B8, &type metadata for Double, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100109274(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001090A4()
{
  sub_100109274(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100109274(319, &qword_1002DCD88, &type metadata for Int, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_100108EC0(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_100109274(319, &unk_1002DC708, &type metadata for Bool, &type metadata accessor for Optional);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_100109274(319, &qword_1002DC7B8, &type metadata for Double, &type metadata accessor for Optional);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_100109274(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1001092FC()
{
  result = type metadata accessor for AccountIdentity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100109384@<X0>(char *a1@<X8>)
{
  v32 = *(v1 + 1);
  v3 = *(v1 + 3);
  v35 = *(v1 + 2);
  v36 = *v1;
  v4 = *(v1 + 5);
  v5 = *(v1 + 7);
  v33 = *(v1 + 6);
  v34 = *(v1 + 4);
  v6 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_1001189C4(v6[8]);
  sub_1001185C4();
  sub_10003D1E4();
  v7 = v6[9];
  v8 = type metadata accessor for Date();
  sub_10000307C(v8);
  (*(v9 + 16))(&a1[v7], &v1[v7]);
  sub_1001189C4(v6[10]);
  sub_1001185C4();
  sub_10003D1E4();
  v10 = v6[12];
  sub_1001187A0(v6[11]);
  sub_1001185C4();
  sub_10003D1E4();
  v11 = v6[14];
  v12 = &v1[v6[13]];
  v13 = *v12;
  v14 = *(v12 + 1);
  sub_1001186C0();
  v15 = &v1[v6[15]];
  LODWORD(v25) = v1[v6[17]];
  HIDWORD(v25) = v1[v6[16]];
  v16 = *&v1[v6[18]];
  v17 = v6[20];
  v18 = *&v1[v6[19]];
  v19 = v15[1];
  v23 = *v15;
  sub_10003D1E4();
  *a1 = v36;
  *(a1 + 1) = v32;
  *(a1 + 2) = v35;
  *(a1 + 3) = v3;
  *(a1 + 4) = v34;
  *(a1 + 5) = v4;
  *(a1 + 6) = v33;
  *(a1 + 7) = v5;
  *&a1[v6[11]] = v31;
  v20 = &a1[v6[13]];
  *v20 = v28;
  v20[1] = v14;
  sub_1001188A8(&a1[v6[14]], v23, v25, v28, *v29, v29[4], v30);
  v21 = &a1[v6[15]];
  *v21 = v24;
  *(v21 + 1) = v19;
  a1[v6[16]] = v27;
  a1[v6[17]] = v26;
  *&a1[v6[18]] = v16;
  *&a1[v6[19]] = v18;
}

uint64_t sub_10010958C()
{
  sub_100004168();
  v2 = v1;
  v4 = v3;
  sub_1001184BC();
  sub_100116BCC();
  v5 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v6 = v5[6];
  sub_100118A10();
  v7 = v5[7];
  sub_100118A10();
  v8 = *(v0 + v5[8]);
  v9 = *(v0 + v5[9]);
  v10 = (v0 + v5[10]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  *(v4 + v5[5]) = v2;
  *(v4 + v5[8]) = v8;
  *(v4 + v5[9]) = v9;
  v15 = (v4 + v5[10]);
  *v15 = v11;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;

  sub_10000492C();
  sub_1000027F8();

  return sub_1001071F4(v16, v17);
}

uint64_t sub_100109674@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v5 = *(v3 + 1);
  v34 = *v3;
  v6 = *(v3 + 3);
  v32 = *(v3 + 4);
  v33 = *(v3 + 2);
  v31 = *(v3 + 6);
  v29 = *(v3 + 5);
  v30 = *(v3 + 7);
  v7 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_1001189C4(v7[8]);
  sub_10003D1E4();
  v8 = v7[9];
  v9 = type metadata accessor for Date();
  sub_10000307C(v9);
  (*(v10 + 16))(&a3[v8], &v3[v8]);
  sub_1001189C4(v7[10]);
  sub_10003D1E4();
  v11 = v7[12];
  sub_1001187A0(v7[11]);
  sub_10003D1E4();
  v12 = &v3[v7[13]];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = &v3[v7[15]];
  v16 = *(v15 + 1);
  v25 = v13;
  v26 = *v15;
  v27 = v3[v7[16]];
  v24 = v3[v7[17]];
  v17 = *&v3[v7[18]];
  v18 = v7[20];
  v19 = *&v3[v7[19]];
  sub_10003D1E4();
  *a3 = v34;
  *(a3 + 1) = v5;
  *(a3 + 2) = v33;
  *(a3 + 3) = v6;
  *(a3 + 4) = v32;
  *(a3 + 5) = v29;
  *(a3 + 6) = v31;
  *(a3 + 7) = v30;
  *&a3[v7[11]] = v28;
  v20 = &a3[v7[13]];
  *v20 = v25;
  *(v20 + 1) = v14;
  v21 = &a3[v7[14]];
  *v21 = a1;
  v21[8] = a2 & 1;
  v22 = &a3[v7[15]];
  *v22 = v26;
  *(v22 + 1) = v16;
  a3[v7[16]] = v27;
  a3[v7[17]] = v24;
  *&a3[v7[18]] = v17;
  *&a3[v7[19]] = v19;
}

uint64_t static PIUnpersonalizedPrivateIdentifierMapping.Key.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001098C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 1);
  v38 = *v2;
  v5 = *(v2 + 3);
  v6 = *(v2 + 5);
  v36 = *(v2 + 4);
  v37 = *(v2 + 2);
  v34 = *(v2 + 7);
  v35 = *(v2 + 6);
  v7 = type metadata accessor for TSDataSyncDatasetState(0);
  v8 = v7[8];
  sub_1001185C4();
  sub_10003D1E4();
  v9 = v7[9];
  v10 = type metadata accessor for Date();
  sub_10000307C(v10);
  (*(v11 + 16))(&a2[v9], &v2[v9]);
  v12 = v7[10];
  sub_1001185C4();
  sub_10003D1E4();
  v13 = v7[12];
  sub_1001187A0(v7[11]);
  sub_1001185C4();
  sub_10003D1E4();
  v14 = v7[14];
  v15 = &v2[v7[13]];
  v16 = *v15;
  v17 = *(v15 + 1);
  sub_1001186C0();
  v18 = &v2[v7[15]];
  v19 = *v18;
  v20 = *(v18 + 1);
  LODWORD(v27) = v2[v7[17]];
  HIDWORD(v27) = v2[v7[16]];
  v21 = v7[20];
  v22 = *&v2[v7[19]];
  sub_10003D1E4();
  *a2 = v38;
  *(a2 + 1) = v4;
  *(a2 + 2) = v37;
  *(a2 + 3) = v5;
  *(a2 + 4) = v36;
  *(a2 + 5) = v6;
  *(a2 + 6) = v35;
  *(a2 + 7) = v34;
  *&a2[v7[11]] = v33;
  v23 = &a2[v7[13]];
  *v23 = v30;
  v23[1] = v17;
  sub_1001188A8(&a2[v7[14]], v26, v27, v30, *v31, v31[4], v32);
  v24 = &a2[v7[15]];
  *v24 = v19;
  *(v24 + 1) = v20;
  a2[v7[16]] = v29;
  a2[v7[17]] = v28;
  *&a2[v7[18]] = a1;
  *&a2[v7[19]] = v22;
}

uint64_t sub_100109AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7374657361746164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000100273950 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000100273970 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x467363697274656DLL && a2 == 0xED000073646C6569)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100109D18(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7374657361746164;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0x4274736575716572;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x467363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100109E08()
{
  sub_100004168();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Date();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  sub_1000051B0();
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = sub_1000030B8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000BA50();
  __chkstk_darwin(v17);
  sub_10011853C();
  v18 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v19 = sub_10000307C(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000308C();
  sub_1000035D4();
  __chkstk_darwin(v22);
  sub_10011852C();
  v23 = *v6 == *v4 && *(v6 + 8) == *(v4 + 8);
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((sub_100152BEC(*(v6 + 16), *(v4 + 16)) & 1) == 0)
  {
    goto LABEL_39;
  }

  v24 = *(v6 + 24) == *(v4 + 24) && *(v6 + 32) == *(v4 + 32);
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v25 = *(v6 + 40) == *(v4 + 40) && *(v6 + 48) == *(v4 + 48);
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v26 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v87 = v0;
  v27 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_10011359C(*(v6 + *(v27 + 20)), *(v4 + *(v27 + 20)));
  if ((v28 & 1) == 0)
  {
    goto LABEL_39;
  }

  v85 = v27;
  v86 = v10;
  v29 = *(v27 + 24);
  v30 = *(v18 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v2);
  if (v23)
  {
    sub_1000071D8(v2 + v30);
    v31 = v87;
    if (v23)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_29;
    }

LABEL_27:
    v36 = v2;
LABEL_38:
    sub_100004E24(v36, &qword_1002DACF0, &qword_100232140);
    goto LABEL_39;
  }

  sub_10003D1E4();
  sub_1000071D8(v2 + v30);
  if (v32)
  {
    v33 = *(v86 + 8);
    v34 = sub_10011887C();
    v35(v34);
    goto LABEL_27;
  }

  v37 = *(v86 + 32);
  v38 = sub_1000035AC();
  v39(v38);
  sub_100004AF4();
  sub_100111ED0(v40);
  v84 = sub_1000AC3D8();
  v41 = *(v86 + 8);
  v41(v87, v7);
  v42 = sub_10011887C();
  (v41)(v42);
  v31 = v87;
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  v43 = v85[7];
  v44 = *(v18 + 48);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v1);
  if (!v23)
  {
    sub_10000B80C();
    sub_10003D1E4();
    sub_1000071D8(v1 + v44);
    if (!v45)
    {
      v48 = *(v86 + 32);
      v49 = sub_1000035AC();
      v50(v49);
      sub_100004AF4();
      sub_100111ED0(v51);
      sub_100005CF0();
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v86 + 8);
      v53(v31, v7);
      v54 = sub_1000B31F0();
      (v53)(v54);
      sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    sub_100118858();
    v46 = sub_1000B31F0();
    v47(v46);
    goto LABEL_37;
  }

  sub_1000071D8(v1 + v44);
  if (!v23)
  {
LABEL_37:
    v36 = v1;
    goto LABEL_38;
  }

  sub_100004E24(v1, &qword_1002DA970, &qword_1002318B0);
LABEL_41:
  if (sub_100143614(*(v6 + v85[8]), *(v4 + v85[8])) & 1) != 0 && (sub_100143614(*(v6 + v85[9]), *(v4 + v85[9])))
  {
    v55 = v85[10];
    v56 = v6 + v55;
    v57 = *(v6 + v55);
    v58 = *(v6 + v55 + 8);
    v59 = *(v56 + 16);
    v60 = *(v56 + 24);
    v61 = (v4 + v55);
    v63 = *v61;
    v62 = v61[1];
    v65 = v61[2];
    v64 = v61[3];
    if (v58 == 1)
    {
      if (v62 == 1)
      {
        goto LABEL_39;
      }
    }

    else if (v62 != 1)
    {
      v74 = sub_1001183E4();
      sub_10010B0B8(v74, v75, v76, v77, v63, v62, v65, v64);
      v78 = sub_100118508();
      sub_1001071F4(v78, v79);
      v80 = sub_1001183E4();
      sub_1001071F4(v80, v81);

      v82 = sub_1001183E4();
      sub_100116F0C(v82, v83);
      goto LABEL_39;
    }

    v66 = sub_100118508();
    sub_1001071F4(v66, v67);
    v68 = sub_1001183E4();
    sub_1001071F4(v68, v69);
    v70 = sub_1001183E4();
    sub_100116F0C(v70, v71);
    v72 = sub_100118508();
    sub_100116F0C(v72, v73);
  }

LABEL_39:
  sub_1000027F8();
}

void sub_10010A3AC()
{
  sub_100004868();
  v3 = v0;
  v4 = sub_100099DF4(&qword_1002DD078, &unk_100236CA8);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_1000051B0();
  sub_100002810();
  sub_100116C24();
  sub_10000EE2C();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_100002898();
  sub_100111ED0(v10);
  sub_10000F3D0();
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = type metadata accessor for TSDataSyncDatasetGroupState(0);
    v16 = *(v0 + v11[5]);
    sub_100099DF4(&qword_1002DD050, &qword_100236C98);
    sub_100116D88();
    sub_10000F3D0();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[6];
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v13);
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v11[7];
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + v11[8]);
    sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
    sub_100116E44(&unk_1002DD090);
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + v11[9]);
    sub_100013C90();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v11[10]);
    v19 = *v15;
    v20 = v15[1];
    sub_100116EB8();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v2, v4);
  sub_100003550();
  sub_100005074();
}

void sub_10010A6B0()
{
  sub_100004168();
  sub_100002834();
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v39 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v13 = sub_1000030B8(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000308C();
  sub_100118780();
  __chkstk_darwin(v16);
  sub_10000A850();
  sub_1001113D4();
  v17 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_100116780(v0, *(v1 + v17[5]));
  v18 = v17[6];
  sub_1001185C4();
  sub_10003D1E4();
  sub_10000B3A0(v3, 1, v4);
  if (v19)
  {
    sub_100008C3C();
  }

  else
  {
    v20 = sub_100013D98(v39);
    v21(v20);
    sub_100005C20();
    sub_100004AF4();
    sub_100111ED0(v22);
    sub_100004218();
    v23 = *(v39 + 8);
    v24 = sub_100007B1C();
    v25(v24);
  }

  v26 = v17[7];
  sub_10003D1E4();
  sub_10000B3A0(v2, 1, v4);
  if (v19)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100118914();
    v27(v11, v2, v4);
    sub_100005C20();
    sub_100004AF4();
    sub_100111ED0(v28);
    sub_100004218();
    v29 = *(v39 + 8);
    v30 = sub_100007B1C();
    v31(v30);
  }

  sub_100114920(v0, *(v1 + v17[8]));
  sub_100114920(v0, *(v1 + v17[9]));
  v32 = (v1 + v17[10]);
  v33 = v32[1];
  if (v33 == 1)
  {
    sub_100008C3C();
  }

  else
  {
    v35 = v32[2];
    v34 = v32[3];
    v36 = *v32;
    sub_100005C20();
    v37 = sub_1001187F4();
    sub_10010B2A4(v37, v38, v33, v35, v34);
  }

  sub_1000027F8();
}

void sub_10010A954()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v4 = sub_1000030B8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000308C();
  __chkstk_darwin(v7);
  sub_100118770();
  v8 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v9 = sub_10000307C(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000306C();
  sub_1000051B0();
  v12 = sub_100099DF4(&qword_1002DD040, &qword_100236C90);
  v28 = sub_100003724(v12);
  v14 = *(v13 + 64);
  sub_100003774();
  __chkstk_darwin(v15);
  sub_100002970();
  v29 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v16 = sub_10000307C(v29);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_1000030E4();
  v30 = v19;
  v20 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_100116C24();
  sub_1001185EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_100002898();
    sub_100111ED0(v21);
    sub_1001185C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100116B20();
    sub_100099DF4(&qword_1002DD050, &qword_100236C98);
    sub_100116C78();
    sub_1001188BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v30 + v29[5]) = v31;
    type metadata accessor for Date();
    sub_100004AF4();
    sub_100111ED0(v22);
    sub_100118750();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v29[6];
    sub_100012D44();
    LOBYTE(v31) = 3;
    sub_100118750();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v29[7];
    sub_100012D44();
    sub_100099DF4(&qword_1002DC7C8, &qword_100236CA0);
    sub_100116E44(&unk_1002DD068);
    sub_1001188BC();
    sub_100118750();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v30 + v29[8]) = v31;
    sub_1001188BC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v30 + v29[9]) = v31;
    sub_100116D34();
    sub_1001188BC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = sub_10003CD30();
    v26(v25, v28);
    v27 = (v30 + v29[10]);
    *v27 = v31;
    v27[1] = v32;
    sub_100116BCC();
    sub_100004118(v2);
    sub_100116B78();
  }

  sub_100003550();
  sub_100005074();
}

uint64_t sub_10010AFAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000100272550 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002725F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_10010B080(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_10010B0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      v13 = a3 == a7 && a4 == a8;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

void sub_10010B15C()
{
  sub_100004868();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DD0B8, &qword_100236CC8);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100004880();
  v11 = *(v3 + 24);
  v10 = *(v3 + 32);
  v12 = sub_1000E5AA8();
  sub_10000C4FC(v12, v13);
  sub_100116F54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_10000355C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005074();
}

void sub_10010B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    Hasher._combine(_:)(0);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  sub_100007198();

  String.hash(into:)();
}

Swift::Int sub_10010B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005BE8();
  sub_100118864();
  sub_10010B2A4(v6, v7, v8, a3, a4);
  return Hasher._finalize()();
}

void sub_10010B3A8()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DD0A8, &qword_100236CC0);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100004880();
  v7 = v2[3];
  v8 = v2[4];
  sub_1000075BC(v2);
  sub_100116F54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = sub_100002960();
    v10(v9);
  }

  sub_100004118(v2);
  sub_100005074();
}

uint64_t sub_10010B540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E795361746164 && a2 == 0xED00006E656B6F54;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000100273790 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001002737B0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000100272570 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000100272590 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x8000000100272610 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100273990 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x636E79537473616CLL && a2 == 0xEF4449746E657645;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001002739B0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001002739D0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4465726F4D736168 && a2 == 0xEB00000000617461;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x546465726564726FLL && a2 == 0xEF73726567676972;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x467363697274656DLL && a2 == 0xED000073646C6569)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
          }
        }
      }
    }
  }
}