id sub_1000A718C(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v390 = a2;
  v377 = a1;
  v8 = *v4;
  v9 = type metadata accessor for IAPTransaction();
  v10 = sub_1000AD6A4(v9);
  v357 = v11;
  __chkstk_darwin(v10, v12);
  sub_100023510();
  v358 = v14 - v13;
  sub_1000AD8A8();
  v367 = sub_1001F6578();
  sub_10001A278();
  v352 = v15;
  __chkstk_darwin(v16, v17);
  sub_100023510();
  v351 = v19 - v18;
  v346 = sub_1000183C4(&qword_1002B2000);
  sub_100023520();
  __chkstk_darwin(v20, v21);
  sub_10004FE10();
  v345 = v22;
  sub_100099510();
  __chkstk_darwin(v23, v24);
  sub_1000AD704();
  v343 = v25;
  v342 = sub_1000183C4(&qword_1002B2008);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v26, v27);
  sub_1000AD8B4();
  v344 = v28;
  v29 = sub_1000183C4(&unk_1002B3450);
  v30 = sub_100056658(v29);
  __chkstk_darwin(v30, v31);
  sub_10004FE10();
  v364 = v32;
  sub_100099510();
  __chkstk_darwin(v33, v34);
  sub_100099670();
  v354 = v35;
  sub_100099510();
  __chkstk_darwin(v36, v37);
  sub_100099670();
  v347 = v38;
  sub_100099510();
  __chkstk_darwin(v39, v40);
  sub_1000AD704();
  v356 = v41;
  v42 = sub_1000AD8A8();
  v362 = type metadata accessor for PromotionalOfferData(v42);
  sub_100023520();
  __chkstk_darwin(v43, v44);
  sub_100023510();
  v359 = v46 - v45;
  v47 = sub_1000183C4(&qword_1002B23D8);
  v48 = sub_100056658(v47);
  __chkstk_darwin(v48, v49);
  sub_10004FE10();
  v361 = v50;
  sub_100099510();
  __chkstk_darwin(v51, v52);
  sub_1000AD704();
  v365 = v53;
  v54 = sub_1000183C4(&qword_1002AFA30);
  v55 = sub_100056658(v54);
  __chkstk_darwin(v55, v56);
  sub_10004FE10();
  v350 = v57;
  sub_100099510();
  __chkstk_darwin(v58, v59);
  sub_100099670();
  v360 = v60;
  sub_100099510();
  __chkstk_darwin(v61, v62);
  v64 = &v332 - v63;
  v373 = sub_1001F6508();
  sub_10001A278();
  v369 = v65;
  __chkstk_darwin(v66, v67);
  sub_10004FE10();
  v348 = v68;
  sub_100099510();
  __chkstk_darwin(v69, v70);
  sub_100099670();
  v349 = v71;
  sub_100099510();
  v74 = __chkstk_darwin(v72, v73);
  v76 = &v332 - v75;
  __chkstk_darwin(v74, v77);
  sub_1000AD704();
  v368 = v78;
  v79 = *(v8 + 144);
  v378 = *(v8 + 152);
  v379 = v79;
  type metadata accessor for InAppBuyRoute.AdditionalBuyOptions();
  sub_10001A278();
  v386 = v80;
  v82 = *(v81 + 64);
  v85 = __chkstk_darwin(v83, v84);
  v372 = &v332 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85, v86);
  v89 = &v332 - v88;
  v388 = v87;
  v90 = *(a3 + *(v87 + 52));
  v380 = v5;
  v387 = v90;
  v353 = a4;
  v355 = v76;
  v366 = v64;
  if (v90)
  {
    v381 = 0;
    v91 = a3;
    v92 = 0;
  }

  else
  {
    sub_10001AE68((v5 + 48), *(v5 + 72));
    v91 = a3;
    v92 = sub_100079484();
    sub_1000AD62C((v5 + 48), *(v5 + 72));
    v381 = sub_1000799F4();
  }

  v93 = v386;
  v94 = v388;
  v370 = v386[2];
  v371 = v386 + 2;
  (v370)(v89, v91, v388);
  v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v96 = v95 + v82;
  v97 = (v96 + 9) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v99 = v378;
  *(v98 + 16) = v379;
  *(v98 + 24) = v99;
  (v93[4])(v98 + v95, v89, v94);
  v100 = (v98 + v96);
  v363 = v92;
  *v100 = v92;
  v100[1] = v381;
  v101 = v390;
  memcpy((v98 + v97), v390, 0x379uLL);
  sub_1000AC5F4(v101, v422);
  v102 = sub_1001F6B48();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1000ACB88;
  *(v103 + 24) = v98;
  v422[4] = sub_1000ACC74;
  v422[5] = v103;
  v422[0] = _NSConcreteStackBlock;
  v422[1] = 1107296256;
  v422[2] = sub_100146934;
  v422[3] = &unk_1002868C8;
  v104 = _Block_copy(v422);

  sub_10007B9BC();
  AnalyticsSendEventLazy();
  _Block_release(v104);

  sub_100056A98(1, &v405);
  v403 = v405;
  v404 = v406;
  v402 = v407;
  *v401 = *v408;
  *&v401[15] = *&v408[15];
  v400 = v410;
  v399[0] = *v411;
  *(v399 + 3) = *&v411[3];
  v383 = v412;
  v384 = v409;
  v382 = v413;
  v385 = v414;
  memcpy(v398, v415, sizeof(v398));
  v375 = v415[88];
  *v397 = *v416;
  v374 = v417;
  *&v397[15] = *&v416[15];
  v376 = v418;
  v389 = v91;
  if (v387)
  {
    if (*(v91[3] + 112) == 1)
    {
      sub_10001AE68((v380 + 88), *(v380 + 112));
      v105 = v368;
      sub_1001F64E8();
      v91 = v389;
      v106 = sub_10008D53C();
      (*(v369 + 8))(v105, v373);
      if (v106)
      {
        sub_1000AD4BC();
        LOBYTE(v422[3]) = v402;
        *(&v422[3] + 1) = *v401;
        v422[5] = *&v401[15];
        v107 = v383;
        v422[6] = v384;
        LOBYTE(v422[7]) = v400;
        *(&v422[7] + 1) = v399[0];
        HIDWORD(v422[7]) = *(v399 + 3);
        v422[8] = v383;
        sub_1000AD598();
        v108 = v385;
        v422[10] = v385;
        sub_1000AD508(v109);
        LOBYTE(v422[22]) = 4;
        *(&v422[22] + 1) = *v397;
        v422[24] = *&v397[15];
        v110 = v374;
        v422[25] = v374;
        v111 = v376;
        LOBYTE(v422[26]) = v376;
        v113 = v377;
        v377[3] = &type metadata for LegacyInAppBuyResponse;
        v113[4] = sub_1000AC7BC();
        sub_1000AD4FC();
        v112 = swift_allocObject();
        *v113 = v112;
        LOBYTE(v113) = v111;
        sub_1000AD998();

        v114 = 4;
        memcpy((v112 + 16), v422, 0xD1uLL);
        v115 = v107;
        v116 = v384;
LABEL_33:
        v133 = 0;
        goto LABEL_34;
      }
    }
  }

  v117 = *(v91 + 16);
  v118 = v390;
  if ((v117 & 1) == 0)
  {
    v119 = v390[33];
    if (!v119 || (v120 = v390[32], , v424._countAndFlagsBits = v120, v424._object = v119, v121.value = sub_1001F6FF8(v424).value, v121.value == 2) || !v121.value)
    {
      v122 = v372;
      v123 = v389;
      (v370)(v372, v389, v388);
      v124 = v123[3];
      v125 = *(v124 + 112);
      if (v125 == 1)
      {
        v126 = sub_1000A9DB4(v380);
        v116 = v384;
        v108 = v385;
        LOBYTE(v113) = v376;
        if (v126)
        {
          (v386[1])(v122, v388);
          memcpy(v394, v118, 0x100uLL);
          memcpy(v391, v118 + 34, 0x269uLL);
          sub_1000AC5F4(v118, v422);

          memcpy(v422, v394, 0x100uLL);
          sub_1000AD918(xmmword_100208700);

          v127 = sub_100197CC4();
          sub_1000ACE5C(v422);
          v128 = sub_1000AD828();
          sub_100056F34(v128, v129, v130, v131);
          *(v127 + 32) = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
          sub_1000AD4FC();
          v132 = swift_allocObject();
          sub_1000AD8F8(v132);
          v133 = 0;
          v115 = v383;
LABEL_19:
          v110 = v374;
          v114 = v375;
          goto LABEL_34;
        }

        v125 = *(v124 + 112);
      }

      if (v125 == 2)
      {
        v134 = sub_1000A9DB4(v380);
        v135 = sub_1000AD808();
        v136(v135);
        if (v134)
        {
          memcpy(v394, v118, 0x100uLL);
          memcpy(v391, v118 + 34, 0x269uLL);
          sub_1000AC5F4(v118, v422);

          memcpy(v422, v394, 0x100uLL);
          sub_1000AD918(xmmword_100208700);

          v137 = sub_100197CC4();
          sub_1000ACE5C(v422);
          v138 = sub_1000AD828();
          sub_100056F60(v138, v139, v140, v141);
          *(v137 + 32) = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
          sub_1000AD4FC();
          v142 = swift_allocObject();
          sub_1000AD8F8(v142);
          v133 = 0;
          v116 = v384;
          v108 = v385;
          v115 = v383;
          LOBYTE(v113) = v376;
          goto LABEL_19;
        }
      }

      else
      {
        v143 = sub_1000AD808();
        v144(v143);
      }
    }
  }

  v113 = v417;
  v116 = v389[3];
  v145 = v116[112];
  sub_10019814C();
  if (v145 == 3)
  {
    v108 = v385;
    v115 = v383;
    if (v146 >= 2)
    {
      type metadata accessor for MultipleQuantitiesNotAllowedDialog();
      sub_1000AD5D0();
      v147 = swift_allocObject();
      v148 = sub_10013DADC();
LABEL_26:
      v110 = v148;

      LOBYTE(v113) = 1;
      v402 = 1;
      if (v387)
      {
        sub_1000AD4BC();
        LOBYTE(v422[3]) = v402;
        sub_1000AD470();
        sub_1000AD598();
        v422[10] = v108;
        sub_1000AD508(v149);
        LOBYTE(v422[22]) = 3;
        sub_1000AD584();
        v422[25] = v110;
        LOBYTE(v422[26]) = 1;
        v147[4] = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
        sub_1000AD4FC();
        v150 = swift_allocObject();
        *v147 = v150;
        v114 = 3;
        sub_1000AD728(v150);
        sub_1000AD998();
        goto LABEL_33;
      }

      sub_1000AD4BC();
      LOBYTE(v422[3]) = v402;
      sub_1000AD470();
      sub_1000AD598();
      v422[10] = v108;
      sub_1000AD508(v159);
      LOBYTE(v422[22]) = 0;
      sub_1000AD584();
      v422[25] = v110;
      LOBYTE(v422[26]) = 1;
      v147[4] = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
      sub_1000AD4FC();
      v160 = swift_allocObject();
      *v147 = v160;
      sub_1000AD728(v160);
      sub_1000AD998();
LABEL_32:
      v114 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v108 = v385;
    v115 = v383;
    if (v146 >= 11)
    {
      type metadata accessor for InvalidQuantityDialog();
      sub_1000AD5D0();
      v147 = swift_allocObject();
      v148 = sub_10013D980();
      goto LABEL_26;
    }
  }

  v386 = v113;
  v151 = v118[64];
  LODWORD(v113) = v376;
  v372 = v118[65];
  if (v372)
  {
    v152 = v108;
    v153 = v366;
    sub_1001F6518();
    if (sub_10001C990(v153, 1, v367) == 1)
    {
      sub_1000374B8(v153, &qword_1002AFA30);
      type metadata accessor for InvalidAppAccountTokenDialog();
      sub_1000AD5D0();
      v154 = swift_allocObject();
      v155 = sub_10013DB94();

      v402 = 1;
      sub_1000AD4BC();
      LOBYTE(v422[3]) = v156;
      sub_1000AD470();
      sub_1000AD598();
      v108 = v152;
      v422[10] = v152;
      sub_1000AD508(v157);
      LOBYTE(v422[22]) = 0;
      sub_1000AD584();
      v422[25] = v155;
      LOBYTE(v422[26]) = v113;
      v154[4] = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
      sub_1000AD4FC();
      v158 = swift_allocObject();
      *v154 = v158;
      sub_1000AD728(v158);
      sub_1000AD998();
      v110 = v155;
      goto LABEL_32;
    }

    sub_1000374B8(v153, &qword_1002AFA30);
  }

  v338 = v117;
  v336 = v151;
  v164 = v380;
  v165 = sub_1000AD680();
  sub_10001AE68(v165, v166);
  v167 = v389;
  v168 = v389[1];
  v339 = *v389;
  v340 = v168;
  v368 = sub_1000795A8();
  memcpy(v396, v118 + 72, sizeof(v396));
  v169 = *(v118 + 888);
  memcpy(v422, v118 + 72, sizeof(v422));
  v423 = v169;
  if (sub_1000AC6F8(v422) == 1)
  {
    goto LABEL_42;
  }

  if (v423 == 1)
  {
  }

  else
  {
    sub_1000AD5DC();
    sub_1001F7EA8();
    sub_1000AD8C0();

    if ((v422 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v170 = v118[63];
  if (v170)
  {
    sub_1000AA9A4(v118[62], v170);
    v366 = v171;
    v341 = sub_1000AC7B0;
    goto LABEL_43;
  }

LABEL_42:
  v341 = 0;
  v366 = 0;
LABEL_43:
  type metadata accessor for OctaneSubscription();
  v172 = swift_dynamicCastClass();
  v370 = v116;
  v335 = v169;
  if (!v172)
  {
    v182 = sub_1000AD4F0();
    sub_10001AE68(v182, v183);
    sub_10019814C();
    sub_10008B744();
    v185 = v184;
    LODWORD(v361) = 0;
    sub_1000AD5F4();
    goto LABEL_118;
  }

  v173 = v172;
  v174 = sub_100197678();
  if (v175)
  {
    v391[0] = v174;
    v391[1] = v175;

    sub_1000AD600();
    sub_1000AA080(v176, v177, v167, v178, v179, v180);
    v181 = v365;

    v337 = *v394;
    v186 = v387;
  }

  else
  {

    v337 = 0;
    v186 = v387;
    v181 = v365;
  }

  sub_1001976E0(v186 ^ 1, v181);
  v187 = v361;
  sub_1000ACFAC();
  if (sub_10001C990(v187, 1, v362) == 1)
  {
    sub_1000374B8(v181, &qword_1002B23D8);
    v365 = 0;
  }

  else
  {
    sub_1000AD530();
    v188 = v359;
    sub_1000ACE04();
    sub_1000AD600();
    sub_1000AA008(v189, v190);
    sub_1000AD434();
    sub_1000ACCEC(v188, v191);
    sub_1000374B8(v181, &qword_1002B23D8);
    v365 = v391[0];
  }

  v192 = v118[67];
  if (v192)
  {
    v391[0] = v118[66];
    v391[1] = v192;

    sub_1000AD600();
    sub_1000AA080(v193, v194, v389, v195, v196, v197);

    v198 = *v394;
  }

  else
  {
    v198 = 0;
  }

  if (v198)
  {
    v199 = v186 ^ 1;
  }

  else
  {
    v199 = 0;
  }

  LODWORD(v361) = v199;
  v334 = v198;
  if (v365)
  {
    v200 = 0;
    goto LABEL_66;
  }

  if (!v198)
  {
    if (v337)
    {
      v200 = 0;
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v200 = 0;
  if (*(v198 + 104) == 1 && !v337)
  {
LABEL_65:
    v200 = sub_1000AAD88(v173, v118);
  }

LABEL_66:
  LODWORD(v371) = v200;
  sub_100026064(v164 + 88, v391);
  sub_10001AE68(v391, v391[3]);
  v201 = v356;
  sub_1000ACFAC();
  v202 = v373;
  if (sub_10001C990(v201, 1, v373) == 1)
  {
    v203 = v355;
    sub_1001F64E8();
    if (sub_10001C990(v201, 1, v202) != 1)
    {
      sub_1000374B8(v201, &unk_1002B3450);
    }
  }

  else
  {
    v203 = v355;
    (*(v369 + 32))(v355, v201, v202);
  }

  v204 = sub_1000F04DC(v173, v339, v340, 1);
  v205 = *(v369 + 8);
  v355 = (v369 + 8);
  v333 = v205;
  v205(v203, v202);
  if (!v204)
  {
    sub_100019CCC(v391);
    goto LABEL_77;
  }

  sub_100019CCC(v391);
  v206 = sub_1000BFC14();
  v208 = sub_1000EE5B8(v206, v207);

  if (!v208)
  {

LABEL_77:
    sub_1000AD4D0();
    sub_10008C1B4();
    v185 = v212;
    if (v186)
    {
      v213 = v347;
      sub_1000ACFAC();
      v211 = 1;
      v214 = sub_10001C990(v213, 1, v373);
      sub_1000374B8(v213, &unk_1002B3450);
      if (v214 == 1)
      {
        sub_1000AD5F4();
        v215 = v374;
        v216 = v354;
        v217 = v337;
LABEL_82:
        v210 = v371;
        goto LABEL_96;
      }

      v218 = sub_1000AD4F0();
      sub_10001AE68(v218, v219);

      sub_100091DC8();
      v221 = v220;

      if (v221)
      {
        v222 = sub_1000C1A68();
        v223 = sub_1000C1A68();
        v210 = v371;
        if (v222 == v223)
        {

          sub_1000AD5F4();
          v185 = v221;
        }

        else
        {

          sub_1000AD5F4();
        }

        goto LABEL_94;
      }

      sub_1000AD5F4();
    }

    else
    {
      sub_1000AD5F4();
      v211 = 1;
    }

    v215 = v374;
    v216 = v354;
    v217 = v337;
    goto LABEL_82;
  }

  v209 = sub_1000258F4(v173);
  if (v209)
  {
    if (v209 == 2)
    {
      sub_1000AD4D0();
      v185 = sub_10008B654(v208, v173, v204);

      v210 = 0;
      sub_1000AD5F4();
      v211 = 1;
LABEL_94:
      v215 = v374;
      goto LABEL_95;
    }

LABEL_88:
    v224 = v173[10];
    v225 = v173[11];

    v185 = v204;

    sub_1000C1ACC(v224, v225);

    sub_1000C1B88(5u);
    sub_1000C20A4(0, 0);

    if (v334 | v365 || v337)
    {

      sub_1000C39F0(v226, 0, 0);
    }

    sub_1000AD4D0();
    sub_1000AD9C8();

    v227 = v173[11];
    v359 = v173[10];
    v362 = v227;

    v210 = 0;
    v211 = 0;
    goto LABEL_94;
  }

  if (!v334)
  {
    goto LABEL_88;
  }

  v185 = v204;
  sub_1000C23D8(2u);

  type metadata accessor for CannotRedeemOfferCodeDialog();
  sub_1000AD5D0();
  v215 = swift_allocObject();
  sub_10013D2EC();
  sub_1000AD710();

  v210 = 0;
  v211 = 0;
  sub_1000AD5F4();
  v376 = 1;
  v375 = 15;
  v386 = v215;
LABEL_95:
  v216 = v354;
  v217 = v337;
LABEL_96:
  v374 = v215;
  v356 = swift_allocObject();
  *(v356 + 16) = -8;
  if (v211)
  {
    if (v334)
    {

      sub_1000AD768(v228);
    }

    if (v365)
    {

      sub_1000AD768(v229);
    }

    if (v217)
    {

      sub_1000AD768(v230);
    }

    v231 = sub_1000AA124(v356, v164);
    sub_1000C3FF4(v368, v231);
    sub_1000AD4D0();
    sub_1000AD9C8();
  }

  if ((v210 & 1) != 0 && v173[17])
  {
    v232 = v334 != 0;

    sub_1000C39F0(v233, 1, v232);
    v234 = sub_1000AA124(v356, v164);
    sub_1000C3FF4(v368, v234);
    sub_1000AD4D0();
    sub_1000AD9C8();
  }

  sub_1000ACFAC();
  v235 = sub_10001C990(v216, 1, v373);
  v118 = v390;
  if (v235 == 1)
  {

    sub_1000374B8(v216, &unk_1002B3450);
  }

  else
  {
    sub_1000374B8(v216, &unk_1002B3450);
    sub_1000C5464(4);
    if ((v236 & 1) == 0)
    {
      sub_1000BFDA8();
      v237 = v349;
      sub_1001F6418();
      v238 = v348;
      sub_1001F6418();
      v239 = sub_1000AD4F0();
      v332 = sub_10001AE68(v239, v240);
      v241 = v173[25];
      v347 = v173[24];
      sub_1000ACD54();
      v354 = v241;

      v371 = v185;
      v242 = v373;
      if ((sub_1001F6A98() & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x1000A99F4);
      }

      v243 = v369;
      v244 = *(v369 + 16);
      v245 = v343;
      v244(v343, v237, v242);
      v246 = v346;
      v244(v245 + *(v346 + 48), v238, v242);
      v247 = v345;
      sub_1000ACFAC();
      v248 = *(v246 + 48);
      v369 = *(v243 + 32);
      v249 = v344;
      (v369)(v344, v247, v373);
      v250 = v247 + v248;
      v251 = v373;
      v252 = v333;
      v333(v250, v373);
      sub_1000ACDAC();
      (v369)(v249 + *(v342 + 36), v247 + *(v246 + 48), v251);
      v252(v247, v251);
      v253 = v371;
      sub_1000C1A68();
      LOBYTE(v247) = sub_100091A58();

      sub_1000374B8(v249, &qword_1002B2008);
      if (v247)
      {
        sub_1000AD4D0();
        sub_10008CBB0();

        v252(v348, v251);
        v252(v349, v251);

        v375 = 21;
      }

      else
      {

        v252(v348, v251);
        v252(v349, v251);
      }

      LODWORD(v113) = v376;
      v118 = v390;
      v185 = v253;
      goto LABEL_117;
    }
  }

  LODWORD(v113) = v376;
LABEL_117:
  LOBYTE(v169) = v335;
LABEL_118:
  memcpy(v391, v396, 0x138uLL);
  LOBYTE(v391[39]) = v169;
  v254 = sub_1000AC6F8(v391);
  LODWORD(v255) = v254 != 1;
  v371 = v185;
  v256 = v338;
  if (v254 != 1)
  {
    sub_1000C398C(v391[39]);
    if ((v169 & 1) == 0)
    {
      v257 = v118[43];
      v336 = v118[42];
      v372 = v257;
    }

    if (v372)
    {
      v258 = v360;
      sub_1001F6518();
      v259 = v367;
      if (sub_10001C990(v258, 1, v367) == 1)
      {
        sub_1000374B8(v258, &qword_1002AFA30);
      }

      else
      {
        v261 = v351;
        v260 = v352;
        (*(v352 + 32))(v351, v258, v259);
        v262 = v350;
        (*(v260 + 16))(v350, v261, v259);
        sub_100018460(v262, 0, 1, v259);
        sub_1000C4280();
        (*(v260 + 8))(v261, v259);
      }
    }
  }

  v263 = sub_1000C257C();
  v264 = v113;
  v265 = v363;
  switch(v263)
  {
    case 1:

      goto LABEL_128;
    default:
      v266 = sub_1001F7EA8();

      if ((v266 & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_128:
      v267 = v390[33];
      if (v267 && (v268 = v390[32], , v425._countAndFlagsBits = v268, v425._object = v267, v269.value = sub_1001F6FF8(v425).value, v269.value != 2))
      {
        if (v265 && !v269.value)
        {
          goto LABEL_131;
        }
      }

      else
      {
LABEL_130:
        if (v265)
        {
LABEL_131:
          v270 = v362 == 0;
          goto LABEL_135;
        }
      }

      v270 = 0;
LABEL_135:
      v271 = sub_1000AD89C(v380);
      sub_10001AE68(v271, v272);
      v273 = v390[8];
      v274 = v390[9];
      v280 = sub_100079640(32, v273, v274, v275, v276, v277, v278, v279);
      if (v381)
      {
        v375 = 2;
        sub_1000C23D8(2u);
        v376 = 1;
        sub_1000C36CC(1);

        v281 = 0;
        LOBYTE(v273) = 0;
        LODWORD(v255) = 1;
        v282 = v383;
        v283 = v388;
        v284 = v370;
        goto LABEL_169;
      }

      if (v270)
      {
        sub_1000C2320(0);
        sub_1000C23D8(4u);
        v282 = v383;
        v283 = v388;
        v284 = v370;
        if ((v256 & 1) != 0 || (v285 = v353) == 0)
        {

          v281 = 0;
          sub_1000AD664();
        }

        else
        {
          v286 = sub_1000AD89C(v380);
          sub_1000AD62C(v286, v287);
          swift_unknownObjectRetain();
          sub_10007992C();

          v289 = sub_1000E087C(v288);
          v421 = *v394;
          sub_10001C838(&v421);
          v420 = *&v394[16];
          sub_10001C838(&v420);
          v419 = *&v394[32];
          sub_1000374B8(&v419, &qword_1002ACA10);

          if (v289)
          {
            v273 = *(v289 + 32);
            v255 = *(v289 + 40);
          }

          else
          {
            LOBYTE(v273) = sub_1001E8450();
            LODWORD(v255) = v314;
          }

          type metadata accessor for AskToBuyDialog();
          v315 = sub_1000C1A68();
          v316 = v340;

          v317 = sub_100075518();
          v281 = sub_10013BA90(v317, v318, v315, v339, v316, v285);

          sub_1000AD664();
          v282 = v383;
        }

        goto LABEL_169;
      }

      if (v280 == 1)
      {
        v284 = v370;
        if (v387)
        {
          goto LABEL_149;
        }

        if ((v256 & 1) == 0)
        {
          sub_1000C23D8(4u);
          v255 = sub_1000BFC14();
          v291 = v290;
          v292 = sub_100197CC4();
          v294 = v293;
          v295 = v353;
          swift_unknownObjectRetain();
          v284 = v370;
          sub_100057098(v255, v291, v292, v294, v295, v394);
          *(&v393[3] + 1) = sub_1000AD644();
          v393[5] = *&v401[15];
          v393[6] = v384;
          sub_1000AD888();
          HIDWORD(v393[7]) = *(v399 + 3);
          v393[8] = v383;
          v393[9] = v382;
          v393[10] = v296;
          sub_1000AD508(v393);
          sub_1000AD85C();
          v393[24] = *&v397[15];
          v393[25] = v374;
          LOBYTE(v393[26]) = v264;
          sub_100057E48(v393);
          v382 = *&v394[72];
          *&v421 = *&v394[64];
          v403 = *v394;
          v404 = *&v394[16];
          v402 = v394[24];
          *v401 = *&v394[25];
          *&v401[15] = *&v394[40];
          v399[0] = *&v394[57];
          *(v399 + 3) = *&v394[60];
          v385 = *&v394[80];
          memcpy(v398, &v394[88], sizeof(v398));
          v375 = v394[176];
          *v397 = *&v394[177];
          *&v397[15] = *&v394[192];
          v376 = v394[208];
          v281 = *&v394[200];
          v282 = sub_1000AA1A4(v273, v274, v341, v366);
          sub_1000374B8(&v421, &qword_1002AFDB8);
          LOBYTE(v273) = 0;
          v384 = *(v282 + 16);
          v400 = 0;
          LODWORD(v255) = 1;
          v283 = v388;
          goto LABEL_169;
        }
      }

      else
      {
        v284 = v370;
        if (v387)
        {
          goto LABEL_149;
        }
      }

      v297 = sub_1000AD89C(v380);
      sub_1000AD62C(v297, v298);
      v304 = sub_10007A214(1uLL, v339, v340, v299, v300, v301, v302, v303);
      if (v305)
      {
LABEL_149:
        v306 = v335;
        if (!v256)
        {
          goto LABEL_156;
        }

        goto LABEL_152;
      }

      v307 = v304;
      sub_1000C23D8(2u);
      v375 = sub_100087764(v307);

      v386 = 0;
      v374 = 0;
      v264 = 1;
      LODWORD(v255) = 1;
      v306 = v335;
      if ((v256 & 1) == 0)
      {
        goto LABEL_156;
      }

LABEL_152:
      if (sub_1000C43D8() != 2 && sub_1000C43D8() != 1)
      {
        LODWORD(v255) = 1;
        sub_1000C23D8(1u);
      }

      v374 = 0;
LABEL_156:
      if (!sub_1000C43D8())
      {
        LODWORD(v255) = 1;
        sub_1000C23D8(1u);
      }

      memcpy(v394, v396, sizeof(v394));
      v395 = v306;
      v308 = sub_1000AC6F8(v394);
      v376 = v264;
      if (v308 == 1)
      {
        LOBYTE(v273) = 0;
        v283 = v388;
        v309 = v358;
      }

      else
      {
        if (v395 == 1)
        {
          sub_1000AD44C();
          LOBYTE(v273) = sub_1001F7EA8();
        }

        else
        {
          LOBYTE(v273) = 1;
        }

        v283 = v388;
        v309 = v358;
      }

      v310 = v371;
      v311 = v341;
      v312 = v366;
      sub_10003742C(v341);
      sub_1001D4DFC(v310, v311, v312, v309);
      if (v362)
      {

        v313 = v362;
        *(v309 + 88) = v359;
        *(v309 + 96) = v313;
      }

      *&v421 = v412;
      sub_1000183C4(&qword_1002AC7E8);
      v282 = swift_allocObject();
      *(v282 + 16) = xmmword_1001FE9E0;
      sub_1000ACC94();
      sub_1000374B8(&v421, &qword_1002AFDB8);
      v384 = *(v282 + 16);
      v400 = 0;
      sub_1000ACCEC(v309, type metadata accessor for IAPTransaction);
      v281 = v374;
LABEL_169:
      v374 = v281;
      if (v284[112] == 3 && (*(v389 + *(v283 + 48)) & 1) == 0)
      {
        sub_1000C1ACC(0, 0);
        v108 = v385;
      }

      else
      {
        v108 = v385;
        if (!v255)
        {
          if ((v273 & 1) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }
      }

      sub_1000AD62C((v380 + 88), *(v380 + 112));
      sub_1000AD9C8();
      if (v273)
      {
LABEL_173:
        sub_1000AA3A8(v390);
        v320 = v319;
        v322 = v321;
        sub_10003A36C(v382, v108);
        v382 = v320;
        v108 = v322;
      }

LABEL_174:
      v323 = v388;
      v324 = v389;
      v325 = v364;
      sub_1000ACFAC();
      v326 = sub_10001C990(v325, 1, v373);
      sub_1000374B8(v325, &unk_1002B3450);
      if (v326 != 1 && *(v324 + *(v323 + 48)) == 1)
      {
        sub_1000AD62C((v380 + 88), *(v380 + 112));
        sub_10009208C();
      }

      *(&v393[3] + 1) = sub_1000AD644();
      v393[5] = *&v401[15];
      v116 = v384;
      v393[6] = v384;
      sub_1000AD888();
      HIDWORD(v393[7]) = *(v399 + 3);
      v393[8] = v282;
      v393[9] = v382;
      v393[10] = v108;
      sub_1000AD508(v393);
      sub_1000AD85C();
      v393[24] = *&v397[15];
      v110 = v374;
      v393[25] = v374;
      LOBYTE(v113) = v376;
      LOBYTE(v393[26]) = v376;
      v328 = v282;
      v329 = v377;
      v377[3] = &type metadata for LegacyInAppBuyResponse;
      v329[4] = sub_1000AC7BC();
      sub_1000AD4FC();
      v330 = swift_allocObject();
      *v329 = v330;
      v115 = v328;
      sub_100057E10(v393, &v392);
      sub_100037408(v341);

      v331 = (v330 + 16);
      v114 = v375;
      memcpy(v331, v393, 0xD1uLL);
      v133 = v371;
LABEL_34:
      sub_1000AD548();
      v391[5] = v161;
      v391[6] = v116;
      LOBYTE(v391[7]) = v400;
      *(&v391[7] + 1) = v399[0];
      HIDWORD(v391[7]) = *(v399 + 3);
      v391[8] = v115;
      v391[9] = v162;
      v391[10] = v108;
      sub_1000AD508(v391);
      LOBYTE(v391[22]) = v114;
      *(&v391[22] + 1) = *v397;
      v391[24] = *&v397[15];
      v391[25] = v110;
      LOBYTE(v391[26]) = v113;
      sub_100057E48(v391);
      return v133;
  }
}

uint64_t sub_1000A9A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001A3238();
  isa = sub_1001F6FE8().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(isa, 0x7975426F546B7361, 0xEF64656C62616E45, isUniquelyReferenced_nonNull_native);
  v8 = sub_1001F6FE8().super.super.isa;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(v8, 0x4473676F6C616964, 0xEF64656C62617369, v9);
  v10 = sub_1001F6FE8().super.super.isa;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(v10, 0xD000000000000015, 0x8000000100226AB0, v11);
  v12 = sub_1001F6FE8().super.super.isa;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(v12, 0xD000000000000012, 0x8000000100226AD0, v13);
  sub_10019814C();
  v14 = sub_1001F70D8().super.super.isa;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = v5;
  sub_1001E6354(v14, 0x797469746E617571, 0xE800000000000000, v15);
  memcpy(__dst, (a4 + 576), 0x139uLL);
  if (sub_1000AC6F8(__dst) != 1)
  {
    if ((__dst[39] & 1) == 0)
    {
      sub_1001F7EA8();
    }

    v16 = sub_1001F6FE8().super.super.isa;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v16, 0x4B65726F74537369, 0xEB00000000327469, v17);
  }

  type metadata accessor for OctaneSubscription();
  if (swift_dynamicCastClass())
  {
    v18 = sub_1001F6FE8().super.super.isa;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v18, 0x6F6D6F7250736168, 0xED0000726566664FLL, v19);
    v20 = sub_1001F6FE8().super.super.isa;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v20, 0x61626E6957736168, 0xEF726566664F6B63, v21);
  }

  v22 = *(a4 + 568);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_1000ACEB0();
    v23 = sub_1001F73B8(1).super.super.isa;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v23, 0xD000000000000017, 0x8000000100226AF0, v24);
  }

  return v5;
}

BOOL sub_1000A9DB4(uint64_t a1)
{
  v1 = a1 + 88;
  v2 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14[-1] - v4;
  v6 = sub_1001F6508();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026064(v1, v14);
  v13 = sub_10001AE68(v14, v14[3]);
  type metadata accessor for InAppBuyRoute.AdditionalBuyOptions();
  sub_1000ACFAC();
  if (sub_10001C990(v5, 1, v6) == 1)
  {
    sub_1001F64E8();
    if (sub_10001C990(v5, 1, v6) != 1)
    {
      sub_1000374B8(v5, &unk_1002B3450);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  v11 = sub_10008D53C();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
  }

  sub_100019CCC(v14);
  return v11 != 0;
}

void sub_1000AA008(uint64_t *a1@<X5>, void *a2@<X8>)
{
  sub_1000AB928();
  v6 = v5;
  if (v2)
  {
    sub_1000AC650();
    v7 = swift_allocError();
    *v8 = v6;
    *a1 = v7;
  }

  else
  {
    *a2 = v5;
  }
}

uint64_t sub_1000AA080@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(void, void, uint64_t, void, void)@<X5>, uint64_t *a6@<X8>)
{
  result = a5(*a1, a1[1], a2, *a3, a3[1]);
  v10 = result;
  if (v6)
  {
    sub_1000AC650();
    result = sub_1000276A0();
    *v11 = v10;
    *a4 = result;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1000AA0F8(char a1)
{
  if ((a1 - 1) > 8u)
  {
    return 20;
  }

  else
  {
    return byte_1002088DE[(a1 - 1)];
  }
}

uint64_t sub_1000AA124(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 >= 0xF8)
  {
    sub_10001AE68((a2 + 48), *(a2 + 72));
    v3 = sub_10007A5F0();
    swift_beginAccess();
    *v2 = v3;
  }

  return v3;
}

void *sub_1000AA1A4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v8 = type metadata accessor for IAPTransaction();
  v9 = sub_1000AD6A4(v8);
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = v12 - v11;
  v14 = sub_1000AD8CC();
  sub_1000AD62C(v14, v15);
  v16 = sub_10008D8C8(a1, a2);
  result = sub_10013B560(v16);
  v18 = result;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v18 == v19)
    {

      return v20;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
    }

    else
    {
      if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v16 + 8 * v19 + 32);
    }

    v21 = result;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    sub_10003742C(a3);
    sub_1001D4DFC(v21, a3, a4, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032DBC(0, v20[2] + 1, 1, v20);
      v20 = v24;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      sub_100032DBC(v22 > 1, v23 + 1, 1, v20);
      v20 = v25;
    }

    v20[2] = v23 + 1;
    result = sub_1000ACE04();
    ++v19;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1000AA3A8(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 392))
    {
      v1 = sub_1000AD8CC();
      sub_10001AE68(v1, v2);
      sub_10008D944();
    }
  }
}

uint64_t sub_1000AA424@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  sub_100056A98(1, __src);
  v16 = v15;
  if (a1)
  {
    sub_1000374B8(&v16, &qword_1002AF480);
    v4 = 0;
  }

  else
  {
    type metadata accessor for IneligibleForOfferDialog();
    sub_1000AD5D0();
    swift_allocObject();
    v4 = sub_10013D8D4();
    sub_1000374B8(&v16, &qword_1002AF480);
  }

  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = 14;
  *(&__dst[22] + 1) = *v14;
  __dst[24] = *&v14[15];
  __dst[25] = v4;
  LOBYTE(__dst[26]) = 1;
  a2[3] = &type metadata for LegacyInAppBuyResponse;
  a2[4] = sub_1000AC7BC();
  sub_1000AD4FC();
  v5 = swift_allocObject();
  *a2 = v5;
  memcpy((v5 + 16), __dst, 0xD1uLL);
  memcpy(v9, __src, 0xB0uLL);
  v9[176] = 14;
  *v10 = *v14;
  *&v10[15] = *&v14[15];
  v11 = v4;
  v12 = 1;
  sub_100057E10(__dst, v7);
  return sub_100057E48(v9);
}

void sub_1000AA580(char a1@<W0>, char a2@<W5>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1001F6508();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v11 = v10 - v9;
  sub_10001AE68((v4 + 88), *(v4 + 112));
  sub_1001B5F98();
  v12 = sub_10008B260();
  (*(v6 + 8))(v11, v34);
  if (v12)
  {
    sub_1000AD62C((v3 + 88), *(v3 + 112));
    sub_10008FD70(v12, a1 & 1);
    if (v32)
    {
    }

    else
    {
      sub_100056A98(1, v41);
      v51 = v42;
      sub_1000374B8(&v51, &qword_1002AF480);
      memcpy(v40, v41, sizeof(v40));
      v14 = 0;
      v15 = v43;
      if ((a1 & 1) != 0 && (a2 & 1) == 0)
      {
        v35 = v4;
        v16 = v43;
        v17 = sub_1000C1570();
        if (v18)
        {
          v19 = v17;
          v20 = v18;
          v21 = sub_1000AD89C(v35);
          sub_1000AD62C(v21, v22);
          sub_1000795A8();
          v23 = sub_1000EE5B8(v19, v20);

          if (v23)
          {

            v15 = v16;
          }

          else
          {
            sub_1000BFD40();
            v15 = v16;
            if ((v24 & 0x100000000) == 0)
            {
              sub_1001F73F8();
            }
          }

          sub_1000AD62C((v35 + 48), *(v35 + 72));
          sub_10007A340();
          sub_1000AD62C((v35 + 48), *(v35 + 72));
          sub_10007992C();
          v25 = sub_10004B628();
          v27 = v26;
          sub_10001C7E4(v44);

          v50 = v45;
          sub_10001C838(&v50);
          v49 = v46;
          sub_10001C838(&v49);
          v48 = v47;
          sub_1000374B8(&v48, &qword_1002ACA10);
          sub_1000C5464(4);
          if (v28)
          {
            sub_1001F6438();
          }

          type metadata accessor for DidConsentToPriceIncreaseDialog();
          sub_1000AD5D0();
          swift_allocObject();
          v14 = sub_10013DC40(v25, v27);
        }

        else
        {
          v14 = 0;
        }
      }

      memcpy(v36, v40, 0xC8uLL);
      v36[25] = v14;
      LOBYTE(v36[26]) = v15;
      a3[3] = &type metadata for LegacyInAppBuyResponse;
      a3[4] = sub_1000AC7BC();
      sub_1000AD4FC();
      v29 = swift_allocObject();
      *a3 = v29;
      sub_100057E10(v36, v37);

      memcpy((v29 + 16), v36, 0xD1uLL);
      memcpy(v37, v40, sizeof(v37));
      v38 = v14;
      v39 = v15;
      sub_100057E48(v37);
    }
  }

  else
  {
    sub_1000AC650();
    sub_1000276A0();
    *v13 = 6;
    swift_willThrow();
  }
}

uint64_t sub_1000AA9A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  return sub_1000AD850();
}

uint64_t sub_1000AAA18(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CheddarTransaction();
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BFC24();
  v12 = v11;
  sub_10001AE68(a2 + 6, a2[9]);
  v18 = sub_10007A214(2uLL, v10, v12, v13, v14, v15, v16, v17);
  LOBYTE(v10) = v19;

  v20 = a1;

  sub_100140370(v20, a3, v18, v10 & 1, v9);
  sub_10001AE68(a2 + 11, a2[14]);
  sub_1000B033C(v9, v18, v10 & 1);
  return sub_1000ACCEC(v9, type metadata accessor for CheddarTransaction);
}

void sub_1000AAB5C(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_1000AD62C((v3 + 48), *(v3 + 72));
  sub_10007B9BC();
  v7 = sub_1000795A8();
  v21 = *(v7 + 80);
  if (v21 && ((v8 = *(v7 + 72), v9 = *(v7 + 112), v8 == a1) ? (v10 = v21 == a2) : (v10 = 0), (v20 = *(v7 + 96), v10) || (sub_1001F7EA8() & 1) != 0))
  {

    v12 = v20;
    v11 = v21;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v13 = sub_1001F6688();
    sub_100019C94(v13, qword_1002E6180);
    sub_1000AD710();

    v14 = sub_1001F6668();
    v15 = sub_1001F7298();

    if (os_log_type_enabled(v14, v15))
    {
      sub_1000AD5E8();
      v16 = swift_slowAlloc();
      sub_1000AD68C();
      v22 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1000E4544(a1, a2, &v22);
      *(v16 + 12) = 2080;
      v17 = sub_10007B9BC();
      *(v16 + 14) = sub_1000E4544(v17, v18, v19);
      _os_log_impl(&_mh_execute_header, v14, v15, "No subscription offers key pair set found with keyID %s for %s", v16, 0x16u);
      sub_1000AD574();
      swift_arrayDestroy();
      sub_100021754();

      sub_100021754();
    }

    v8 = 0;
    v9 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 24) = v12;
  *(a3 + 40) = v9;
}

uint64_t sub_1000AAD88(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroOfferEligibilityOverride();
  sub_100023520();
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v9 = v8 - v7;
  v10 = sub_1000183C4(&qword_1002B23C0);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v14 = &v76 - v13;
  v15 = sub_1000183C4(&qword_1002B23C8);
  v16 = sub_100056658(v15);
  v18 = __chkstk_darwin(v16, v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v76 - v23;
  __chkstk_darwin(v22, v25);
  if (!a1[17])
  {
    goto LABEL_19;
  }

  v77 = &v76 - v26;
  sub_100198684(v24);
  v76 = v14;
  v27 = v77;
  sub_1000ACDAC();
  sub_1000ACFAC();
  if (sub_10001C990(v20, 1, v10) != 1)
  {
    v32 = v76;
    sub_1000ACDAC();
    v33 = *(a2 + 64);
    v34 = *(a2 + 72);
    sub_1000AAB5C(*(v32 + 16), *(v32 + 24), v79);
    if (*(&v79[0] + 1))
    {
      v80 = v79[0];
      v81 = v79[1];
      v82 = v79[2];
      v35 = sub_1000AD680();
      sub_1000AD62C(v35, v36);
      sub_10007A214(2uLL, v33, v34, v37, v38, v39, v40, v41);
      sub_1000F46B0();
      v43 = v42;
      v83 = v80;
      sub_10001C838(&v83);
      v84 = v81;
      sub_10001C838(&v84);
      v85 = v82;
      sub_1000374B8(&v85, &qword_1002AEBE0);
      if (v43)
      {
        v44 = v32;
        v45 = a1[10];
        v46 = a1[11];

        LOBYTE(v45) = sub_100023590(v45, v46, v33, v34);

        if (v45)
        {
          sub_1000374B8(v77, &qword_1002B23C8);
          sub_1000ACC94();
          sub_1000374B8(v44, &qword_1002B23C0);
          v31 = *(v9 + *(v4 + 44));
          sub_1000ACCEC(v9, type metadata accessor for IntroOfferEligibilityOverride);
          return v31 & 1;
        }

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v66 = sub_1001F6688();
        sub_100019C94(v66, qword_1002E6180);
        sub_1000AD698();

        v67 = sub_1001F6668();
        sub_1001F7298();

        if (sub_1000AD9B0())
        {
          sub_100099504();
          v68 = swift_slowAlloc();
          sub_1000AD524();
          v69 = swift_slowAlloc();
          v78 = v69;
          sub_1000AD784(4.8149e-34);
          v70 = sub_100075518();
          v73 = sub_1000E4544(v70, v71, v72);

          *(v68 + 4) = v73;
          sub_1000AD958(&_mh_execute_header, v74, v75, "Invalid intro offer override data for %s");
          sub_100019CCC(v69);
          sub_100021754();

          sub_100099474();
        }

        sub_1000374B8(v77, &qword_1002B23C8);
        v64 = v76;
        goto LABEL_18;
      }

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v58 = sub_1001F6688();
      sub_100019C94(v58, qword_1002E6180);
      sub_1000AD698();

      v48 = sub_1001F6668();
      sub_1001F7298();

      if (!sub_1000AD9B0())
      {
LABEL_17:

        sub_1000374B8(v77, &qword_1002B23C8);
        v64 = v32;
LABEL_18:
        sub_1000374B8(v64, &qword_1002B23C0);
LABEL_19:
        v31 = 0;
        return v31 & 1;
      }

      sub_100099504();
      v59 = swift_slowAlloc();
      sub_1000AD524();
      v50 = swift_slowAlloc();
      v78 = v50;
      sub_1000AD784(4.8149e-34);
      v60 = sub_100075518();
      v63 = sub_1000E4544(v60, v61, v62);

      *(v59 + 4) = v63;
      v32 = v76;
      v57 = "Invalid intro offer override signature for %s";
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v47 = sub_1001F6688();
      sub_100019C94(v47, qword_1002E6180);
      sub_1000AD698();

      v48 = sub_1001F6668();
      sub_1001F7298();

      if (!sub_1000AD9B0())
      {
        goto LABEL_17;
      }

      sub_100099504();
      v49 = swift_slowAlloc();
      sub_1000AD524();
      v50 = swift_slowAlloc();
      *&v80 = v50;
      sub_1000AD784(4.8149e-34);
      v51 = sub_100075518();
      v54 = sub_1000E4544(v51, v52, v53);

      *(v49 + 4) = v54;
      v32 = v76;
      v57 = "Missing key pair set to validate intro offer override for %s";
    }

    sub_1000AD958(&_mh_execute_header, v55, v56, v57);
    sub_100019CCC(v50);
    sub_100021754();

    sub_100099474();

    goto LABEL_17;
  }

  sub_1000374B8(v20, &qword_1002B23C8);
  v28 = sub_1000AD4F0();
  sub_10001AE68(v28, v29);

  sub_100075518();
  v30 = sub_10008D2D0();

  sub_1000374B8(v27, &qword_1002B23C8);
  v31 = v30 ^ 1;
  return v31 & 1;
}

uint64_t sub_1000AB5CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000AD8CC();
  sub_1000AD62C(v8, v9);
  v10 = sub_10008D3AC(a3);
  if (!v10)
  {

LABEL_7:
    v12 = 7;
LABEL_8:
    LOBYTE(v28) = v12;
    sub_1000AC650();
    swift_willThrowTypedImpl();
    return v12;
  }

  if (v10 == 1)
  {
    sub_1000AD5BC();
  }

  else
  {
    sub_1000AD5A8();
  }

  sub_1000AD5DC();
  v11 = sub_1001F7EA8();

  if (v11)
  {
    goto LABEL_7;
  }

  v14 = sub_100025820(a1, a2);
  if (!v14)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v23 = sub_1001F6688();
    sub_100019C94(v23, qword_1002E6180);
    sub_1000AD698();

    v24 = sub_1001F6668();
    v25 = sub_1001F7298();

    if (os_log_type_enabled(v24, v25))
    {
      sub_100099504();
      v26 = swift_slowAlloc();
      sub_1000AD524();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000E4544(a1, a2, &v28);
      _os_log_impl(&_mh_execute_header, v24, v25, "Requested win-back offer with invalid offer identifier %s.", v26, 0xCu);
      sub_100019CCC(v27);
      sub_100021754();

      sub_1000AD4AC();
    }

    v12 = 8;
    goto LABEL_8;
  }

  v12 = v14;
  if (*(v14 + 112))
  {
    sub_10001AE68((v4 + 88), *(v4 + 112));
    sub_1000183C4(&qword_1002AC7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    v16 = *(a3 + 200);
    *(inited + 32) = *(a3 + 192);
    *(inited + 40) = v16;

    sub_10008B3C8();
    v18 = v17;
    swift_setDeallocating();
    sub_1001E56B4();
    if (sub_10013B560(v18))
    {
      sub_1001C19A8(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
      }

      else
      {
        v19 = *(v18 + 32);
      }

      sub_1000AD698();

      v20 = (v18 & 0xC000000000000001);
      if (sub_1000C4418())
      {
        sub_1000C1570();
        v22 = v21;

        if (!v22)
        {

          return v12;
        }
      }

      else
      {
      }
    }

    else
    {

      v20 = 0;
    }

    LOBYTE(v28) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  else
  {
    LOBYTE(v28) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  return 7;
}

void sub_1000AB928()
{
  sub_10001E850();
  v95 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v115 = v8;
  v94 = type metadata accessor for PromotionalOfferData(0);
  sub_100023520();
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = (v12 - v11);
  v91 = sub_1000183C4(&qword_1002B23B8);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v14, v15);
  sub_1000AD8B4();
  v92 = v16;
  v17 = sub_1000AD8A8();
  type metadata accessor for PromotionalOfferData.SigningMethod(v17);
  sub_100023520();
  __chkstk_darwin(v18, v19);
  sub_100023510();
  v93 = (v21 - v20);
  v22 = sub_1000183C4(&qword_1002AFA30);
  sub_100056658(v22);
  sub_10001E844();
  __chkstk_darwin(v23, v24);
  v26 = &v88 - v25;
  v27 = sub_1000AD8CC();
  sub_10001AE68(v27, v28);
  v29 = v5[9];
  v97 = v5[8];
  v98 = v29;
  v30 = sub_10008D3AC(v7);
  if (v30)
  {
    v96 = v7;
    if (v30 == 1)
    {
      sub_1000AD5BC();
    }

    else
    {
      sub_1000AD5A8();
    }

    sub_1000AD5DC();
    v31 = sub_1001F7EA8();

    if (v31)
    {
      goto LABEL_7;
    }

    v33 = *v115;
    v89 = v115[1];
    v90 = v33;
    v34 = sub_100025678(v33, v89);
    if (!v34)
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v43 = sub_1001F6688();
      sub_10009951C(v43, qword_1002E6180);
      sub_1000ACC94();
      v44 = sub_1001F6668();
      v45 = sub_1001F7298();
      if (os_log_type_enabled(v44, v45))
      {
        sub_100099504();
        v46 = swift_slowAlloc();
        sub_1000AD524();
        v47 = swift_slowAlloc();
        v99 = v47;
        *v46 = 136315138;
        v48 = *v13;
        v49 = v13[1];

        sub_1000AD434();
        sub_1000ACCEC(v13, v50);
        v51 = sub_1000E4544(v48, v49, &v99);

        *(v46 + 4) = v51;
        sub_1000AD6B4();
        _os_log_impl(v52, v53, v54, v55, v56, v57);
        sub_100019CCC(v47);
        sub_100021754();

        sub_100021754();
      }

      else
      {

        sub_1000AD434();
        sub_1000ACCEC(v13, v74);
      }

      v32 = 3;
      goto LABEL_8;
    }

    v35 = v34;
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    v36 = sub_1001C7F80();
    if (!v37 || (sub_1000AAB5C(v36, v37, v100), , !*(&v100[0] + 1)))
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v58 = sub_1001F6688();
      sub_10009951C(v58, qword_1002E6180);
      v59 = v96;

      v60 = sub_1001F6668();
      sub_1001F7298();

      v61 = sub_1000AD6D4();
      if (os_log_type_enabled(v61, v62))
      {
        sub_100099504();
        v63 = swift_slowAlloc();
        sub_1000AD524();
        v64 = swift_slowAlloc();
        v99 = v64;
        *v63 = 136315138;
        v65 = *(v59 + 80);
        v66 = *(v59 + 88);

        v67 = sub_1000E4544(v65, v66, &v99);

        *(v63 + 4) = v67;
        sub_1000AD6B4();
        _os_log_impl(v68, v69, v70, v71, v72, v73);
        sub_100019CCC(v64);
        sub_100099474();

        sub_100021754();
      }

      goto LABEL_46;
    }

    v101 = v100[0];
    v102 = v100[1];
    v103 = v100[2];
    memcpy(v114, v5 + 72, 0x139uLL);
    v38 = sub_1000AC6F8(v114);
    v88 = v35;
    if (v38 == 1 || (v114[312] & 1) != 0 && (sub_1000AD44C(), (sub_1001F7EA8() & 1) == 0))
    {
      if (v5[65])
      {
        sub_1001F6518();
        v39 = sub_1001F6578();
        if (sub_10001C990(v26, 1, v39) != 1)
        {
          sub_1001F6528();
          (*(*(v39 - 8) + 8))(v26, v39);
          v40 = sub_1001F6BB8();
          v42 = v41;

          goto LABEL_37;
        }
      }

      else
      {
        v75 = sub_1001F6578();
        sub_100018460(v26, 1, 1, v75);
      }

      sub_1000374B8(v26, &qword_1002AFA30);
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    else
    {
      if (v5[43])
      {
        v40 = v5[42];
        v42 = v5[43];
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }
    }

LABEL_37:
    sub_1000AD62C((v0 + 48), *(v0 + 72));
    sub_10007A214(2uLL, v97, v98, v76, v77, v78, v79, v80);
    if (sub_100025678(v90, v89))
    {

      v81 = v93;
      sub_1000ACC94();
      sub_1000AD87C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        memcpy(v113, v81, sizeof(v113));
        v86 = *(v96 + 80);
        v87 = *(v96 + 88);

        v85 = sub_1001C80E8(v97, v98, v86, v87, v40, v42, &v101);
        v107 = v101;
        sub_10001C838(&v107);
        v108 = v102;
        sub_10001C838(&v108);
        v109 = v103;
        sub_1000374B8(&v109, &qword_1002AEBE0);

        sub_1000AC71C(v113);
LABEL_43:
        if (v85)
        {
          goto LABEL_9;
        }

        goto LABEL_46;
      }

      v82 = v92;
      sub_1000ACDAC();
      sub_1000F46C4();
      v84 = v83;
      v110 = v101;
      sub_10001C838(&v110);
      v111 = v102;
      sub_10001C838(&v111);
      v112 = v103;
      sub_1000374B8(&v112, &qword_1002AEBE0);
      if (v84)
      {
        v85 = sub_1001C8BAC(v90, v89, v97, v98);
        sub_1000374B8(v82, &qword_1002B23B8);
        goto LABEL_43;
      }

      sub_1000374B8(v82, &qword_1002B23B8);
    }

    else
    {
      v104 = v101;
      sub_10001C838(&v104);
      v105 = v102;
      sub_10001C838(&v105);
      v106 = v103;
      sub_1000374B8(&v106, &qword_1002AEBE0);
    }

LABEL_46:
    LOBYTE(v99) = 9;
    sub_1000AC650();
    swift_willThrowTypedImpl();

    goto LABEL_9;
  }

LABEL_7:
  v32 = 4;
LABEL_8:
  LOBYTE(v99) = v32;
  sub_1000AC650();
  swift_willThrowTypedImpl();
LABEL_9:
  sub_10001E868();
}

void sub_1000AC160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001E850();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v27 = sub_10002574C(v25, v26);
  if (v27)
  {
    v28 = v27;
    sub_1000AD62C((v20 + 88), *(v20 + 112));
    v29 = sub_10008D3AC(v24);
    v30 = *(v28 + 96);

    v31 = sub_1000BF948(v29, v30);

    if ((v31 & 1) == 0)
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v32 = sub_1001F6688();
      sub_10009951C(v32, qword_1002E6180);

      v33 = sub_1001F6668();
      v34 = sub_1001F7298();

      if (os_log_type_enabled(v33, v34))
      {
        sub_1000AD524();
        v35 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        *v35 = 136315650;
        v36 = sub_10007B9BC();
        *(v35 + 4) = sub_1000E4544(v36, v37, v38);
        *(v35 + 12) = 2080;
        sub_1000AC6A4();

        v39 = sub_1001F70B8();
        v41 = v40;

        v42 = sub_1000E4544(v39, v41, &a10);

        *(v35 + 14) = v42;
        *(v35 + 22) = 2080;
        if (v29)
        {
          if (v29 == 1)
          {
            v43 = 0xE800000000000000;
            v44 = sub_1000AD5BC();
          }

          else
          {
            v43 = 0xE700000000000000;
            v44 = sub_1000AD5A8();
          }
        }

        else
        {
          v43 = 0xE300000000000000;
          v44 = 7824750;
        }

        v56 = sub_1000E4544(v44, v43, &a10);

        *(v35 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v33, v34, " Currently ineligible for offer code  %s: %s does not  contain %s", v35, 0x20u);
        swift_arrayDestroy();
        sub_100021754();

        sub_100021754();
      }

      LOBYTE(a10) = 5;
      sub_1000AC650();
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v45 = sub_1001F6688();
    sub_10009951C(v45, qword_1002E6180);

    v46 = sub_1001F6668();
    v47 = sub_1001F7298();

    if (os_log_type_enabled(v46, v47))
    {
      sub_1000AD5E8();
      v48 = swift_slowAlloc();
      sub_1000AD68C();
      a10 = swift_slowAlloc();
      *v48 = 136315394;
      v49 = sub_10007B9BC();
      *(v48 + 4) = sub_1000E4544(v49, v50, v51);
      *(v48 + 12) = 2080;

      v52 = sub_1000AD850();
      v55 = sub_1000E4544(v52, v53, v54);

      *(v48 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "Internal ID %s did not correspond to a configured offer for codes for %s", v48, 0x16u);
      swift_arrayDestroy();
      sub_100021754();

      sub_100021754();
    }

    LOBYTE(a10) = 2;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  sub_10001E868();
}

uint64_t sub_1000AC55C()
{
  v0 = sub_100082E38();
  sub_100019CCC(v0 + 88);
  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t sub_1000AC594()
{
  sub_1000AC55C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000AC5DC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1000AC650()
{
  result = qword_1002B23A8;
  if (!qword_1002B23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B23A8);
  }

  return result;
}

unint64_t sub_1000AC6A4()
{
  result = qword_1002B23B0;
  if (!qword_1002B23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B23B0);
  }

  return result;
}

uint64_t sub_1000AC6F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AC770()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000AC7BC()
{
  result = qword_1002B23D0;
  if (!qword_1002B23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B23D0);
  }

  return result;
}

uint64_t sub_1000AC810()
{

  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    sub_10003A380(v0[11], v1);
  }

  if (v0[15] != 1)
  {
  }

  sub_1000AD4FC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000AC8CC()
{
  v1 = (type metadata accessor for InAppBuyRoute.AdditionalBuyOptions() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[13];
  v7 = sub_1001F6508();
  if (!sub_10001C990(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4 + 600) != 1)
  {
  }

  return _swift_deallocObject(v0, v4 + 889, v2 | 7);
}

uint64_t sub_1000ACB88()
{
  v1 = type metadata accessor for InAppBuyRoute.AdditionalBuyOptions();
  sub_1000AD6A4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v0 + v7);
  v10 = *v9;
  v11 = v9[1];

  return sub_1000A9A04(v0 + v6, v10, v11, v0 + v8);
}

uint64_t sub_1000ACC3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ACC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ACC94()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_1000ACCEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000ACD54()
{
  result = qword_1002AD110;
  if (!qword_1002AD110)
  {
    sub_1001F6508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD110);
  }

  return result;
}

uint64_t sub_1000ACDAC()
{
  sub_100023584();
  sub_1000183C4(v1);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_1000ACE04()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

unint64_t sub_1000ACEB0()
{
  result = qword_1002B23E0[0];
  if (!qword_1002B23E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1002B23E0);
  }

  return result;
}

uint64_t sub_1000ACFAC()
{
  sub_100023584();
  sub_1000183C4(v1);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

void sub_1000AD00C()
{
  type metadata accessor for OctaneIAP();
  if (v0 <= 0x3F)
  {
    sub_1000AD1F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000AD0C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000183C4(&unk_1002B3450);
    v9 = a1 + *(a3 + 44);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_1000AD16C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000183C4(&unk_1002B3450);
    v8 = v5 + *(a4 + 44);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000AD1F8()
{
  if (!qword_1002B2468)
  {
    sub_1001F6508();
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002B2468);
    }
  }
}

uint64_t getEnumTagSinglePayload for InAppBuyRouteError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InAppBuyRouteError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000AD3A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000AD3E0()
{
  result = qword_1002B2470;
  if (!qword_1002B2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2470);
  }

  return result;
}

__n128 sub_1000AD470()
{
  result = *(v0 + 2288);
  *(v0 + 2633) = result;
  *(v0 + 2648) = *(v1 + 143);
  *(v0 + 2656) = *(v0 + 408);
  *(v0 + 2664) = *(v0 + 2280);
  *(v0 + 2665) = *(v0 + 2272);
  *(v0 + 2668) = *(v1 + 115);
  *(v0 + 2672) = v2;
  return result;
}

__n128 sub_1000AD4BC()
{
  result = v0[145];
  v0[163] = result;
  v0[164].n128_u64[0] = v0[146].n128_u64[0];
  return result;
}

void *sub_1000AD508@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 88), (v1 + 2184), 0x58uLL);
}

__n128 sub_1000AD548()
{
  *(v0 + 464) = *(v0 + 2320);
  *(v0 + 480) = *(v0 + 2336);
  *(v0 + 488) = *(v0 + 2312);
  result = *(v0 + 2288);
  *(v0 + 489) = result;
  return result;
}

__n128 sub_1000AD584()
{
  result = v0[135];
  *(v1 + 177) = result;
  v0[175].n128_u64[0] = *(v2 + 15);
  return result;
}

__n128 sub_1000AD644()
{
  *(v0 + 1312) = *(v0 + 2320);
  *(v0 + 1328) = *(v0 + 2336);
  *(v0 + 1336) = *(v0 + 2312);
  return *(v0 + 2288);
}

uint64_t sub_1000AD6E0(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  return v1;
}

uint64_t sub_1000AD71C(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1000AD728(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 2608), 0xD1uLL);
}

unint64_t sub_1000AD744(uint64_t a1)
{
  *(v4 + 14) = a1;
  *(v4 + 22) = v2;
  v7 = *(v5 - 72);

  return sub_1000E4544(v3, v7, (v1 + 152));
}

void sub_1000AD768(__objc2_class **a1)
{

  sub_1000C39F0(a1, 1, 0);
}

uint64_t sub_1000AD784(float a1)
{
  *v1 = a1;
}

uint64_t sub_1000AD7A0()
{

  return sub_1000AC5F4(v1, v0 + 152);
}

unint64_t sub_1000AD7B8()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  v4 = v0[3];
  v5 = v0[4];

  return sub_1000E4544(v4, v5, v0 + 19);
}

unint64_t sub_1000AD7DC@<X0>(uint64_t a1@<X8>)
{
  *(*(v1 + 352) + 24) = a1;

  return sub_1000AC7BC();
}

__n128 sub_1000AD85C()
{
  v0[93].n128_u8[0] = v0[21].n128_u32[2];
  result = v0[135];
  *(v1 + 177) = result;
  return result;
}

uint64_t sub_1000AD8D8()
{

  return sub_1000374B8(v0 + 1088, v1);
}

void *sub_1000AD8F8(uint64_t a1)
{
  *v2 = a1;
  v4 = (a1 + 16);

  return memcpy(v4, (v1 + 1848), 0xD1uLL);
}

void *sub_1000AD918(__n128 a1)
{
  v1[179] = a1;

  return memcpy((v2 + 272), &v1[29], 0x269uLL);
}

uint64_t sub_1000AD938()
{

  return swift_dynamicCast();
}

void sub_1000AD958(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_1000AD978@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 128) = a1;

  return memcpy((v1 + 1576), (v2 + 88), 0x58uLL);
}

uint64_t sub_1000AD998()
{

  return sub_100057E10(v0 + 2608, v0 + 464);
}

BOOL sub_1000AD9B0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000AD9C8()
{
  v3 = *(v0 + 232);

  return sub_10008EA08(v1, v3);
}

uint64_t getEnumTagSinglePayload for EmbeddedChannel.WrongTypeError(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmbeddedChannel.WrongTypeError(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_1000ADA68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F6288();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = __chkstk_darwin(v10, v11);
  v14 = &v34 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v34 - v16;
  type metadata accessor for OctaneConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v35 = a1;
  v20 = sub_1001F6B48();
  if (a4)
  {
    v21 = sub_1001F6B48();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v19 URLForResource:v20 withExtension:v21];

  if (v22)
  {

    sub_1001F6238();

    (*(v8 + 32))(v17, v14, v7);
    v23 = sub_1001F6B38();
    v31 = sub_1000B90D8(v23, v30);
    v36 = 0;
    v32 = sub_1000B9C60(v31, &v36);

    sub_1001F6BD8();

    (*(v8 + 8))(v17, v7);
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v24 = sub_1001F6688();
    sub_100019C94(v24, qword_1002E6180);

    v25 = sub_1001F6668();
    v26 = sub_1001F7298();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v29 = sub_1000E4544(v35, a2, &v36);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "No url found for resource: %s", v27, 0xCu);
      sub_100019CCC(v28);
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }

    return 0;
  }

  return v32;
}

uint64_t sub_1000ADFF4(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  sub_10002F9B0(a1, v10);
  v5 = sub_1000582DC(v10);
  v8 = v5;
  if (v7 != 3)
  {
    sub_100058B70(v5, v6, v7);
    v8 = sub_1001F69B8();
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1001F6BF8(a3);
  sub_1000AE2BC(v8, a2, v10);

  return v10[0];
}

uint64_t sub_1000AE0A8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      v4 = *(a1 + 32);
      v5 = *(a2 + 32);
      v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
      v7 = v6 && *a1 >> 16 == *a2 >> 16;
      v8 = v7 && *(a1 + 8) >> 16 == *(a2 + 8) >> 16;
      if (v8 || (sub_1001F7E18() & 1) != 0)
      {
        v3 = v4;
        v2 = v5;
        goto LABEL_17;
      }
    }

    return 0;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  v2 = *a2;
  v3 = *a1;
LABEL_17:

  return sub_1001BD92C(v3, v2);
}

uint64_t sub_1000AE16C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  switch(*(a1 + 40))
  {
    case 1:
      if (*(a2 + 40) != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    case 2:
      if (*(a2 + 40) != 2)
      {
        goto LABEL_35;
      }

      v4 = *a2;
      v2 = *a1;

      result = sub_1001BD72C(v2, v4);
      break;
    case 3:
      if (*(a2 + 40) != 3)
      {
        goto LABEL_35;
      }

      v6 = *(a2 + 32);
      sub_1000AF500();
      v13 = v13 && v7 == v10;
      v14 = v13 && v8 == v11;
      v15 = v14 && v9 == v12;
      if (!v15 && (sub_1001F7E18() & 1) == 0)
      {
        goto LABEL_35;
      }

      result = sub_1001BD92C(v3, v6);
      break;
    default:
      if (*(a2 + 40))
      {
LABEL_35:
        result = 0;
      }

      else
      {
LABEL_24:
        sub_1000AF500();
        if (v13 && v16 == v19 && v17 == v20 && v18 == v21)
        {
          result = 1;
        }

        else
        {
          result = sub_1001F7E18() & 1;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_1000AE2BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v128 = *(a2 + 16);
  if (!v128)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v127 = a2 + 32;
  v132 = result;
  while (2)
  {
    v5 = v127 + 48 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    v139 = v4 + 1;
    v140 = v6;
    v141 = v9;
    v142 = v10;
    v147 = *v5;
    switch(*(v5 + 40))
    {
      case 1:

        sub_1001F6BE8();
        if (v3[2])
        {
          v98 = v8;
          v99 = sub_10011108C();
          v101 = v100;

          if ((v101 & 1) == 0)
          {
            v95 = v7;
            v96 = v6;
            v97 = v9;
            v33 = v98;
            v105 = v10;
            v106 = 1;
            goto LABEL_70;
          }

          v102 = v3[7] + 24 * v99;
          v104 = *v102;
          v103 = *(v102 + 8);
          switch(*(v102 + 16))
          {
            case 1:
              v120 = (v104 & 1) == 0;
              if (v104)
              {
                v104 = 1702195828;
              }

              else
              {
                v104 = 0x65736C6166;
              }

              if (v120)
              {
                v103 = 0xE500000000000000;
              }

              else
              {
                v103 = 0xE400000000000000;
              }

              break;
            case 2:

              v113 = sub_1001F6F48();
              v115 = v114;
              v116 = v104;
              v117 = v103;
              v118 = 2;
              goto LABEL_73;
            case 3:

              v113 = sub_1001F69A8();
              v115 = v119;
              v116 = v104;
              v117 = v103;
              v118 = 3;
LABEL_73:
              sub_100058B70(v116, v117, v118);
              v104 = v113;
              v103 = v115;
              break;
            default:

              break;
          }

          v155._countAndFlagsBits = v104;
          v155._object = v103;
          sub_1001F6CA8(v155);
          v11 = v7;
          v12 = v6;
          v13 = v9;
          v14 = v98;
        }

        else
        {
          v11 = v7;
          v12 = v6;
          v13 = v9;
          v14 = v8;
        }

        v15 = v10;
        v16 = 1;
        goto LABEL_82;
      case 2:
        v143 = *(v7 + 16);
        v125 = *(v5 + 24);
        sub_1000AF240(v7, v6, v9, v8, v10, 2u);

        v17 = 0;
        v18 = (v7 + 72);
        while (2)
        {
          if (v143 == v17)
          {
            sub_1000AEDD8(v7, v140, v141, v125, v142, 2u);
            v95 = v7;
            v96 = v140;
            v97 = v141;
            v33 = v125;
            v105 = v142;
            v106 = 2;
            goto LABEL_70;
          }

          if (v17 >= *(v7 + 16))
          {
            goto LABEL_86;
          }

          v20 = *(v18 - 5);
          v19 = *(v18 - 4);
          v22 = *(v18 - 3);
          v21 = *(v18 - 2);
          v23 = *(v18 - 1);
          if (*v18)
          {

            sub_1000AEDD8(v7, v140, v141, v125, v142, 2u);

            sub_1000AE2BC(v3, v20, a3);
            sub_1000AEDD8(v147, v140, v141, v125, v142, 2u);
            sub_1000AF2B0(v20, v19, v22, v21, v23, 1);
            v107 = v20;
            v108 = v19;
            v109 = v22;
            v110 = v21;
            v111 = v23;
            v112 = 1;
          }

          else
          {
            sub_1000AF2F0(*(v18 - 5), *(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 0);

            sub_1001F6BE8();
            if (!v3[2])
            {

              sub_1000AF2B0(v20, v19, v22, v21, v23, 0);

LABEL_17:
              v18 += 48;
              ++v17;
              continue;
            }

            v145 = v17;
            v24 = sub_10011108C();
            v25 = v3;
            v27 = v26;

            if ((v27 & 1) == 0)
            {

              sub_1000AF2B0(v20, v19, v22, v21, v23, 0);
              v3 = v25;
              goto LABEL_16;
            }

            v28 = v25[7] + 24 * v24;
            v3 = v25;
            if (*(v28 + 16) == 1 && (*v28 & 1) == 0)
            {

              sub_1000AF2B0(v20, v19, v22, v21, v23, 0);
LABEL_16:
              v17 = v145;
              v7 = v147;
              goto LABEL_17;
            }

            sub_1000AEDD8(v147, v140, v141, v125, v142, 2u);
            sub_1000AE2BC(v25, v23, a3);
            sub_1000AEDD8(v147, v140, v141, v125, v142, 2u);

            v107 = v20;
            v108 = v19;
            v109 = v22;
            v110 = v21;
            v111 = v23;
            v112 = 0;
          }

          break;
        }

        result = sub_1000AF2B0(v107, v108, v109, v110, v111, v112);
        goto LABEL_83;
      case 3:

        sub_1001F6BE8();
        if (!v3[2])
        {
          v11 = v7;
          v12 = v6;
          v13 = v9;
          v14 = v8;
          v15 = v10;
          v16 = 3;
LABEL_82:
          sub_1000AEDD8(v11, v12, v13, v14, v15, v16);

          goto LABEL_83;
        }

        v126 = v8;
        v29 = sub_10011108C();
        v31 = v30;

        if ((v31 & 1) == 0)
        {
          goto LABEL_56;
        }

        v32 = v3[7] + 24 * v29;
        v33 = v126;
        if (*(v32 + 16) != 2 || (v124 = *(*v32 + 16)) == 0)
        {
          v95 = v7;
          v96 = v6;
          v97 = v9;
          goto LABEL_69;
        }

        v121 = *(v32 + 8);
        v123 = *v32 + 32;

        v35 = 0;
        v122 = v34;
        do
        {
          if (v35 >= *(v34 + 16))
          {
            goto LABEL_89;
          }

          v36 = v123 + 24 * v35;
          v38 = *v36;
          v37 = *(v36 + 8);
          v39 = *(v36 + 16);
          v130 = v35;
          v131 = *(v36 + 16);
          v133 = *v36;
          v134 = v37;
          if (v39 != 3)
          {
            sub_1000AEE48(v38, v37, v39);

            v43 = v3;
            goto LABEL_45;
          }

          sub_1000AEE48(v38, v37, 3);
          sub_1000AEE48(v38, v37, 3);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v152 = v3;
          sub_1000AF204(v38, sub_1000AF1B4, 0, v153);
          v40 = v153[1];
          v41 = v153[3];
          v42 = v153[4];
          v136 = v153[5];
          v137 = v153[0];
          v138 = (v153[2] + 64) >> 6;

          v43 = v3;
          v135 = v40;
          while (v42)
          {
            v44 = v41;
LABEL_32:
            v46 = __clz(__rbit64(v42)) | (v44 << 6);
            v47 = (*(v137 + 48) + 16 * v46);
            v48 = v47[1];
            v49 = *(v137 + 56) + 24 * v46;
            v50 = *v49;
            v51 = *(v49 + 8);
            v52 = *(v49 + 16);
            v150[0] = *v47;
            v150[1] = v48;
            v150[2] = v50;
            v150[3] = v51;
            v151 = v52;

            sub_1000AEE48(v50, v51, v52);
            v136(v148, v150);

            sub_100058B70(v50, v51, v52);
            v53 = v148[0];
            v54 = v148[1];
            v56 = v148[2];
            v55 = v148[3];
            v144 = v149;
            v58 = sub_10011108C();
            v59 = v43[2];
            v60 = (v57 & 1) == 0;
            v61 = v59 + v60;
            if (__OFADD__(v59, v60))
            {
              goto LABEL_87;
            }

            v62 = v57;
            if (v43[3] >= v61)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1000183C4(&qword_1002AF4B0);
                sub_1001F7AA8();
              }
            }

            else
            {
              sub_1000AEE70(v61, isUniquelyReferenced_nonNull_native & 1);
              v63 = sub_10011108C();
              if ((v62 & 1) != (v64 & 1))
              {
                goto LABEL_92;
              }

              v58 = v63;
            }

            v42 &= v42 - 1;
            v43 = v152;
            if (v62)
            {

              v65 = v43[7] + 24 * v58;
              v66 = *v65;
              v67 = *(v65 + 8);
              *v65 = v56;
              *(v65 + 8) = v55;
              v68 = *(v65 + 16);
              *(v65 + 16) = v144;
              sub_100058B70(v66, v67, v68);
            }

            else
            {
              v152[(v58 >> 6) + 8] |= 1 << v58;
              v69 = (v43[6] + 16 * v58);
              *v69 = v53;
              v69[1] = v54;
              v70 = v43[7] + 24 * v58;
              *v70 = v56;
              *(v70 + 8) = v55;
              *(v70 + 16) = v144;
              v71 = v43[2];
              v72 = __OFADD__(v71, 1);
              v73 = v71 + 1;
              if (v72)
              {
                goto LABEL_88;
              }

              v43[2] = v73;
            }

            isUniquelyReferenced_nonNull_native = 1;
            v41 = v44;
            v3 = v132;
            v9 = v141;
            v10 = v142;
            v6 = v140;
            v7 = v147;
            v40 = v135;
          }

          v45 = v41;
          while (1)
          {
            v44 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_86:
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
              goto LABEL_92;
            }

            if (v44 >= v138)
            {
              break;
            }

            v42 = *(v40 + 8 * v44);
            ++v45;
            if (v42)
            {
              goto LABEL_32;
            }
          }

          sub_100034300();

          sub_100058B70(v133, v134, 3);
LABEL_45:
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v150[0] = v43;
          v75 = sub_10011108C();
          v77 = v43[2];
          v78 = (v76 & 1) == 0;
          v79 = v77 + v78;
          if (__OFADD__(v77, v78))
          {
            goto LABEL_90;
          }

          v80 = v75;
          v81 = v76;
          sub_1000183C4(&qword_1002AF4B0);
          if (sub_1001F7A98(v74, v79))
          {
            v82 = sub_10011108C();
            v84 = v133;
            if ((v81 & 1) == (v83 & 1))
            {
              v80 = v82;
              v85 = v131;
              goto LABEL_50;
            }

LABEL_92:
            sub_1001F7FC8();
            __break(1u);
            JUMPOUT(0x1000AEDB8);
          }

          v85 = v131;
          v84 = v133;
LABEL_50:
          v86 = v150[0];
          if (v81)
          {
            v87 = *(v150[0] + 56) + 24 * v80;
            v88 = *v87;
            v89 = *(v87 + 8);
            *v87 = v84;
            *(v87 + 8) = v134;
            v90 = *(v87 + 16);
            *(v87 + 16) = v85;
            sub_100058B70(v88, v89, v90);
            goto LABEL_54;
          }

          *(v150[0] + 8 * (v80 >> 6) + 64) |= 1 << v80;
          v91 = (v86[6] + 16 * v80);
          *v91 = 12324;
          v91[1] = 0xE200000000000000;
          v92 = v86[7] + 24 * v80;
          *v92 = v84;
          *(v92 + 8) = v134;
          *(v92 + 16) = v85;
          v93 = v86[2];
          v72 = __OFADD__(v93, 1);
          v94 = v93 + 1;
          if (v72)
          {
            goto LABEL_91;
          }

          v86[2] = v94;
LABEL_54:
          v35 = v130 + 1;
          sub_1000AE2BC(v86, v10, a3);

          v34 = v122;
        }

        while (v130 + 1 != v124);
        sub_100058B70(v122, v121, 2);
LABEL_56:
        v95 = v7;
        v96 = v6;
        v97 = v9;
        v33 = v126;
LABEL_69:
        v105 = v10;
        v106 = 3;
LABEL_70:
        result = sub_1000AEDD8(v95, v96, v97, v33, v105, v106);
LABEL_83:
        v4 = v139;
        if (v139 != v128)
        {
          continue;
        }

        return result;
      default:

        v154._countAndFlagsBits = sub_1001F6BE8();
        sub_1001F6CA8(v154);
        v11 = v7;
        v12 = v6;
        v13 = v9;
        v14 = v8;
        v15 = v10;
        v16 = 0;
        goto LABEL_82;
    }
  }
}

uint64_t sub_1000AEDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 < 2u)
  {
  }

  if (a6 == 3)
  {

LABEL_9:
  }

  if (a6 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000AEE48(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1000AEE70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000183C4(&qword_1002AF4B8);
  v38 = a2;
  result = sub_1001F7B68();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v2;
  v37 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1001D34D8(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v39 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v40 = *v19;
    v21 = *(v5 + 56) + 24 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if ((v38 & 1) == 0)
    {

      sub_1000AEE48(v22, v23, v24);
    }

    sub_1001F8068();
    sub_1001F6C28();
    result = sub_1001F80D8();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v40;
    v33[1] = v20;
    v34 = *(v7 + 56) + 24 * v28;
    *v34 = v22;
    *(v34 + 8) = v23;
    *(v34 + 16) = v24;
    ++*(v7 + 16);
    v5 = v37;
    v12 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1000AF14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;

  sub_1000AEE48(a4, a5, a6);
  return a2;
}

__n128 sub_1000AF1B4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = sub_1000AF14C(&v7, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v4 = v8;
  result = v7;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v6;
  a2[1] = result;
  a2[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000AF204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1000AF240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 < 2u)
  {
  }

  if (a6 == 3)
  {

LABEL_9:
  }

  if (a6 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000AF2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    v6 = vars8;
  }
}

uint64_t sub_1000AF2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    v6 = vars8;
  }
}

unint64_t sub_1000AF330()
{
  result = qword_1002B2478;
  if (!qword_1002B2478)
  {
    sub_1001F6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2478);
  }

  return result;
}

__n128 sub_1000AF394(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000AF3A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AF3E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AF45C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 41))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AF49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AF51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AppReceiptResponse = type metadata accessor for CreateAppReceiptResponse();
  sub_100023520();
  v7 = __chkstk_darwin(v5, v6);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v120 - v11;
  v13 = sub_1000183C4(&qword_1002B0B38);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v120 - v15;
  sub_1001F6978();
  sub_10001A278();
  v135 = v18;
  v136 = v17;
  __chkstk_darwin(v17, v19);
  sub_100023510();
  v22 = v21 - v20;
  v137 = sub_1001F6868();
  sub_10001A278();
  v142 = v23;
  v26 = __chkstk_darwin(v24, v25);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v141 = &v120 - v30;
  v140 = sub_1001F6578();
  sub_10001A278();
  v143 = v31;
  __chkstk_darwin(v32, v33);
  sub_100023510();
  v139 = v35 - v34;
  type metadata accessor for AppTransaction();
  sub_100023520();
  __chkstk_darwin(v36, v37);
  sub_100023510();
  v41 = (v40 - v39);
  v42 = *(a1 + 72);
  if (v42)
  {
    v132 = v12;
    v133 = v38;
    v130 = v16;
    v131 = v9;
    v134 = v2;
    v159 = *(a1 + 56);
    v43 = *(a1 + 80);
    v44 = *(a1 + 87);
    v160 = v42;
    v161[0] = v43;
    *(v161 + 7) = v44;
    v45 = sub_1000B74F4();
    v47 = v46;
    sub_1001F6158();
    swift_allocObject();
    sub_1001F6148();
    sub_1000B0064();
    sub_1001F6138();
    v128 = v45;
    v129 = v47;

    memcpy(v144, v145, 0x60uLL);
    v54 = *(a1 + 48);

    sub_1000E32F8(v54, v146);
    if (v153)
    {
      v55 = sub_1001F7EA8();

      sub_1000B00B8(v146);
      if ((v55 & 1) == 0)
      {
        v56 = v144[5];
        if (v144[5])
        {
          v125 = v144[4];
          v57 = v144[0];
          v58 = v144[1];
          sub_10001AE68(v134 + 6, v134[9]);

          v126 = sub_10007A214(2uLL, v57, v58, v59, v60, v61, v62, v63);
          v127 = v64;
          v66 = v144[2];
          v65 = v144[3];
          *v41 = 0x65646F6358;
          v41[1] = 0xE500000000000000;
          v41[6] = 48;
          v41[7] = 0xE100000000000000;
          v41[10] = 5459817;
          v41[11] = 0xE300000000000000;
          v41[2] = v57;
          v41[3] = v58;
          v41[4] = v66;
          v41[5] = v65;
          v41[8] = v66;
          v41[9] = v65;
          v123 = v56;
          swift_bridgeObjectRetain_n();

          sub_1001F64E8();
          sub_1001F64E8();
          sub_1001F6448();
          v67 = v139;
          sub_1001F6568();
          v68 = sub_1001F6528();
          v70 = v69;
          v121 = *(v143 + 8);
          v143 += 8;
          v121(v67, v140);
          v154.n128_u64[0] = v68;
          v154.n128_u64[1] = v70;
          sub_10001C790();
          v71 = sub_1001F75D8();
          v73 = v72;

          v124 = v71;
          v125 = v73;
          v74 = sub_1001410B4();
          v76 = v75;

          v77 = sub_100141134(v74, v76);
          v79 = v78;
          v122 = sub_1000B010C();
          v80 = v136;
          sub_1001F6858();
          sub_100040C70(v77, v79);
          sub_1001442D0(v77, v79);
          v123 = v77;
          v81 = v77;
          v82 = v79;
          sub_10003A380(v81, v79);
          v83 = v141;
          sub_1001F6848();
          (*(v135 + 8))(v22, v80);
          v84 = v137;
          (*(v142 + 16))(v28, v83, v137);
          v85 = sub_100141600(v28);
          v87 = v86;
          v88 = sub_1001F63B8(0);
          v90 = v89;
          sub_10003A380(v85, v87);
          if (v127)
          {
            sub_10003A380(v123, v82);
            sub_10004C8C0(v144);
            v91 = v134;
            v92 = v130;
          }

          else
          {
            v136 = v88;
            v111 = v123;
            v92 = v130;
            if (v126 == 19)
            {

              v112 = v139;
              sub_1001F6568();
              v124 = sub_1001F6528();
              v125 = v113;
              sub_10003A380(v111, v82);
              sub_10004C8C0(v144);
              v121(v112, v140);
            }

            else
            {
              sub_10003A380(v123, v82);
              sub_10004C8C0(v144);
            }

            v91 = v134;
            v88 = v136;
          }

          (*(v142 + 8))(v141, v84);
          v114 = v133;
          v115 = (v41 + *(v133 + 56));
          v116 = v125;
          *v115 = v124;
          v115[1] = v116;
          v117 = (v41 + *(v114 + 52));
          *v117 = v88;
          v117[1] = v90;
          sub_10001AE68(v91 + 11, v91[14]);
          sub_1000B08C4(v41, v126, v127 & 1);
          v118 = v132;
          sub_1000B0164(v92, &v132[*(AppReceiptResponse + 24)]);
          *v118 = 0;
          *(v118 + 8) = 0;
          v50 = v131;
          sub_1000B01D4(v118, v131);
          sub_1001F1830(v50);
          sub_1000B02F8(*v155, v154);
          sub_1000B02A0(v118, type metadata accessor for CreateAppReceiptResponse);
          sub_1000B0238(v92);
          sub_1000B02A0(v41, type metadata accessor for AppTransaction);
          goto LABEL_28;
        }

        sub_10004C8C0(v144);
        v106 = v128;
        if (qword_1002AC510 != -1)
        {
          sub_10001B230();
        }

        v109 = sub_1001F6688();
        sub_100019C94(v109, qword_1002E6180);
        v102 = sub_1001F6668();
        v103 = sub_1001F7298();
        v110 = os_log_type_enabled(v102, v103);
        v105 = v129;
        if (!v110)
        {
          goto LABEL_22;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Unable to create app receipt, no device verification provided";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v102, v103, v108, v107, 2u);

LABEL_22:

        sub_1000AFF9C(&v154);
        sub_10003A380(v106, v105);
        v48 = *&v155[1];
        v49 = *&v155[3];
        v50 = v156 | ((v157 | (v158 << 16)) << 32);
        v52 = v154.n128_u64[1];
        result = v154.n128_u64[0];
        v53 = v155[0];
        goto LABEL_4;
      }
    }

    else
    {

      sub_1000B00B8(v146);
    }

    v50 = v144[11];
    if (v144[11])
    {
      v93 = v134;
      v94 = sub_10001AE68(v134 + 11, v134[14]);
      v95 = *v94;
      v96 = *(*(*v94 + 128) + 16);

      os_unfair_lock_lock(v96);
      *(v95 + 112) = 0;
      os_unfair_lock_unlock(v96);

      sub_10001AE68(v93 + 11, v93[14]);
      sub_10008D944();
      v98 = v97;
      v100 = v99;

      sub_10004C8C0(v144);
      sub_100040C5C(v98, v100);
      sub_1001C63B0(0, 0, v98, v100);
      sub_1000B02F8(*v155, v154);
      sub_10003A36C(v98, v100);
LABEL_28:
      type metadata accessor for HTTPResponseHead._Storage();
      v119 = swift_allocObject();
      result = sub_1000B0324(v119);
      v53 = 2;
      v52 = _swiftEmptyArrayStorage;
      goto LABEL_4;
    }

    sub_10004C8C0(v144);
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v101 = sub_1001F6688();
    sub_100019C94(v101, qword_1002E6180);
    v102 = sub_1001F6668();
    v103 = sub_1001F7298();
    v104 = os_log_type_enabled(v102, v103);
    v106 = v128;
    v105 = v129;
    if (!v104)
    {
      goto LABEL_22;
    }

    v107 = swift_slowAlloc();
    *v107 = 0;
    v108 = "Unable to create app receipt, no device identifier provided";
    goto LABEL_21;
  }

  sub_1000AFF9C(v146);
  v48 = v148;
  v49 = v149;
  v50 = v150 | ((v151 | (v152 << 16)) << 32);
  result = v146[0];
  v52 = v146[1];
  v53 = v147;
LABEL_4:
  *a2 = result;
  *(a2 + 8) = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v48;
  *(a2 + 40) = v49;
  *(a2 + 56) = v50;
  *(a2 + 62) = BYTE6(v50);
  *(a2 + 60) = WORD2(v50);
  return result;
}

__n128 sub_1000AFF9C@<Q0>(uint64_t a1@<X8>)
{
  sub_1001C63B0(0, 0, 0, 0xF000000000000000);
  type metadata accessor for HTTPResponseHead._Storage();
  v2 = swift_allocObject();
  v3 = sub_1000B0324(v2);
  result = v5;
  *a1 = v3;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 62) = v9;
  *(a1 + 60) = v8;
  *(a1 + 56) = v7;
  return result;
}

unint64_t sub_1000B0064()
{
  result = qword_1002B2560;
  if (!qword_1002B2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2560);
  }

  return result;
}

unint64_t sub_1000B010C()
{
  result = qword_1002B2568;
  if (!qword_1002B2568)
  {
    sub_1001F6978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2568);
  }

  return result;
}

uint64_t sub_1000B0164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B0B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B01D4(uint64_t a1, uint64_t a2)
{
  AppReceiptResponse = type metadata accessor for CreateAppReceiptResponse();
  (*(*(AppReceiptResponse - 8) + 16))(a2, a1, AppReceiptResponse);
  return a2;
}

uint64_t sub_1000B0238(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B0B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B02A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B02F8(__n128 a1, __n128 a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v4 = v2[4].n128_i64[0];
  v5 = v2[4].n128_u64[1];

  return sub_10003A380(v4, v5);
}

uint64_t sub_1000B0324(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 3;
  *(result + 40) = 65537;
  return result;
}

uint64_t sub_1000B033C(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000B2F5C(a1, a2, a3);
  v5 = type metadata accessor for CheddarTransaction();
  v6 = sub_100056658(v5);
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v8 = sub_1000183C4(&qword_1002B2570);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  sub_1000B2FDC();
  sub_10001A278();
  __chkstk_darwin(v11, v12);
  sub_1000B2F40();
  __chkstk_darwin(v13, v14);
  sub_1000B3018();
  if (qword_1002AC4B0 != -1)
  {
    sub_1000B2EDC();
  }

  sub_100174CDC(v4);
  sub_1000B3048();
  if (v15)
  {
    sub_1000B29A0(v4, &qword_1002B2570);
  }

  else
  {
    v16 = sub_1000B2F8C();
    v17(v16);
    sub_1000B3084();
    v18 = sub_1000B2FA4();
    v19(v18);
    v20 = sub_100174C7C();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      sub_1000183C4(&qword_1002AC7E0);
      v24 = swift_allocObject();
      *(v24 + 1) = xmmword_1001FE9E0;
      v24[4] = v22;
      v24[5] = v23;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v25 = sub_1000B30A0();
    sub_1000B2EFC(v25, v26, v27, v25, v28, v29, v30, &qword_1002AC7C8, &unk_1002008C0, type metadata accessor for CheddarTransaction, &qword_1002B2578, &unk_100208B40, &unk_1002B2580, type metadata accessor for CheddarTransaction, &qword_1002AF1D0);
    if (!v24)
    {
      v36 = sub_1000B2F30();
      v37(v36);
      v33 = 0;
      goto LABEL_12;
    }

    v31 = sub_1000B2F30();
    v32(v31);
  }

  v33 = 1;
LABEL_12:
  v34 = sub_1000183C4(&qword_1002AC7C8);
  return sub_100018460(v3, v33, 1, v34);
}

uint64_t sub_1000B0600(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000B2F5C(a1, a2, a3);
  v5 = type metadata accessor for RenewalInfo();
  v6 = sub_100056658(v5);
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v8 = sub_1000183C4(&qword_1002B2570);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  sub_1000B2FDC();
  sub_10001A278();
  __chkstk_darwin(v11, v12);
  sub_1000B2F40();
  __chkstk_darwin(v13, v14);
  sub_1000B3018();
  if (qword_1002AC4B0 != -1)
  {
    sub_1000B2EDC();
  }

  sub_100174CDC(v4);
  sub_1000B3048();
  if (v15)
  {
    sub_1000B29A0(v4, &qword_1002B2570);
  }

  else
  {
    v16 = sub_1000B2F8C();
    v17(v16);
    sub_1000B3084();
    v18 = sub_1000B2FA4();
    v19(v18);
    v20 = sub_100174C7C();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      sub_1000183C4(&qword_1002AC7E0);
      v24 = swift_allocObject();
      *(v24 + 1) = xmmword_1001FE9E0;
      v24[4] = v22;
      v24[5] = v23;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v25 = sub_1000B30A0();
    sub_1000B2EFC(v25, v26, v27, v25, v28, v29, v30, &qword_1002AF148, &unk_100202EC8, type metadata accessor for RenewalInfo, &qword_1002B25A8, &unk_100208B60, &unk_1002B25B0, type metadata accessor for RenewalInfo, &unk_1002AF1E8);
    if (!v24)
    {
      v36 = sub_1000B2F30();
      v37(v36);
      v33 = 0;
      goto LABEL_12;
    }

    v31 = sub_1000B2F30();
    v32(v31);
  }

  v33 = 1;
LABEL_12:
  v34 = sub_1000183C4(&qword_1002AF148);
  return sub_100018460(v3, v33, 1, v34);
}

uint64_t sub_1000B08C4(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000B2F5C(a1, a2, a3);
  v5 = type metadata accessor for AppTransaction();
  v6 = sub_100056658(v5);
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v8 = sub_1000183C4(&qword_1002B2570);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  sub_1000B2FDC();
  sub_10001A278();
  __chkstk_darwin(v11, v12);
  sub_1000B2F40();
  __chkstk_darwin(v13, v14);
  sub_1000B3018();
  if (qword_1002AC4B0 != -1)
  {
    sub_1000B2EDC();
  }

  sub_100174CDC(v4);
  sub_1000B3048();
  if (v15)
  {
    sub_1000B29A0(v4, &qword_1002B2570);
  }

  else
  {
    v16 = sub_1000B2F8C();
    v17(v16);
    sub_1000B3084();
    v18 = sub_1000B2FA4();
    v19(v18);
    v20 = sub_100174C7C();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      sub_1000183C4(&qword_1002AC7E0);
      v24 = swift_allocObject();
      *(v24 + 1) = xmmword_1001FE9E0;
      v24[4] = v22;
      v24[5] = v23;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v25 = sub_1000B30A0();
    sub_1000B2EFC(v25, v26, v27, v25, v28, v29, v30, &unk_1002B0BB0, &unk_100206410, type metadata accessor for AppTransaction, &qword_1002B2590, &unk_100208B50, &unk_1002B2598, type metadata accessor for AppTransaction, &qword_1002B25A0);
    if (!v24)
    {
      v36 = sub_1000B2F30();
      v37(v36);
      v33 = 0;
      goto LABEL_12;
    }

    v31 = sub_1000B2F30();
    v32(v31);
  }

  v33 = 1;
LABEL_12:
  v34 = sub_1000183C4(&unk_1002B0BB0);
  return sub_100018460(v3, v33, 1, v34);
}

uint64_t sub_1000B0B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char a4@<W5>, char *a5@<X6>, uint64_t *a6@<X7>, char *a7@<X8>, uint64_t a8, void (*a9)(uint64_t), uint64_t *a10, uint64_t a11, uint64_t a12, void (*a13)(void), unint64_t *a14)
{
  v146 = a9;
  sub_1001F6938();
  sub_10001A278();
  v118 = v17;
  v119 = v16;
  __chkstk_darwin(v16, v18);
  sub_100023510();
  v21 = v20 - v19;
  sub_1001F6B98();
  sub_10001A278();
  v126 = v23;
  v128 = v22;
  __chkstk_darwin(v22, v24);
  sub_100023510();
  v125 = v26 - v25;
  sub_1001F6578();
  sub_10001A278();
  v121 = v28;
  v122 = v27;
  __chkstk_darwin(v27, v29);
  sub_100023510();
  v120 = v31 - v30;
  v32 = sub_1001F5EC8();
  sub_10001A278();
  v34 = v33;
  __chkstk_darwin(v35, v36);
  sub_100023510();
  v40 = v39 - v38;
  v123 = v21;
  v124 = a3;
  if (a4)
  {
    goto LABEL_2;
  }

  v49 = v37;
  if (a3 == 22)
  {

    v41 = &v144;
    goto LABEL_9;
  }

  if (a3 == 20)
  {
    v41 = &v143;
LABEL_9:
    sub_1000B2FBC();
    v47 = v49;
    goto LABEL_10;
  }

  if (a3 != 18)
  {
LABEL_2:
    v41 = &v145;
    sub_1000B2FBC();
    goto LABEL_10;
  }

  v50 = v37;

  v41 = &v142;
  sub_1000B2FBC();
  v47 = v50;
LABEL_10:
  sub_1000B265C(v42, v43, v44, v45, v46, v47, v48);
  v51 = v41[8];
  v52 = v41[4];
  v53 = v41[5];
  v54 = *(v41 + 1);
  *v141 = *v41;
  *&v141[16] = v54;
  *&v141[32] = v52;
  *&v141[40] = v53;
  *&v141[48] = *(v41 + 3);
  *&v141[64] = v51;
  memcpy(a7, v141, 0x48uLL);
  v130 = sub_1000183C4(a6);
  v135 = v130[11];
  sub_1000B28E8(a1, &a7[v135], v146);
  sub_1001F5F08();
  swift_allocObject();
  sub_1000B2944(v141, v140, a10);
  v55 = sub_1001F5EF8();
  if (qword_1002AC418 != -1)
  {
    swift_once();
  }

  v56 = sub_100019C94(v32, qword_1002E6060);
  (*(v34 + 16))(v40, v56, v32);
  sub_1001F5ED8();
  memcpy(v140, v141, sizeof(v140));
  sub_1000183C4(a10);
  sub_1000B30F8();
  sub_100019C4C(v57, v58);
  v59 = sub_1001F5EE8();
  if (v132)
  {

    sub_1000B30F8();
    sub_1000B29A0(v61, v62);
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v73 = sub_1001F6688();
    sub_100019C94(v73, qword_1002E6180);
    swift_errorRetain();
    v74 = sub_1001F6668();
    v75 = sub_1001F7298();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v78;
      *v77 = v78;
      _os_log_impl(&_mh_execute_header, v74, v75, "Failed to encode JWS components: %@", v76, 0xCu);
      sub_1000B29A0(v77, &unk_1002BA650);
      sub_10003A72C();
      sub_10003A72C();
    }

    LOBYTE(v140[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();

    sub_1001F68E8();
    sub_1000B2EC8();
    (*(v79 + 8))(a2);
    v80 = v146;
    sub_1000B29F4(a1, v146);
    v81 = 0;
  }

  else
  {
    v63 = v59;
    v64 = v60;
    sub_1000B30F8();
    sub_1000B29A0(v65, v66);
    v140[0] = sub_1001F63B8(0);
    v140[1] = v67;
    sub_1000B30D0(43);
    sub_10001C790();
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1001F75F8();
    sub_1000B2FD0();

    sub_1000B2FFC();
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1001F75F8();
    sub_1000B2FD0();
    v69 = v68;

    v140[0] = 0;
    v140[1] = v69;
    sub_1000B3038();
    sub_1000B2EB8();
    sub_1000B2EA4();
    v70 = sub_1001F75F8();
    v133 = v71;
    sub_10003A380(v63, v64);

    a13(0);
    sub_1000B2A48(a14, v146);
    v115 = v70;
    v72 = sub_1001F5EE8();
    v116 = v82;
    v117 = v72;
    v140[0] = sub_1001F63B8(0);
    v140[1] = v83;
    sub_1000B30D0(43);
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1000B306C();
    sub_1000B2FD0();

    sub_1000B2FFC();
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1000B306C();
    sub_1000B2FD0();
    v85 = v84;

    v140[0] = v55;
    v140[1] = v85;
    sub_1000B3038();
    sub_1000B2EB8();
    sub_1000B2EA4();
    v86 = sub_1000B306C();
    v88 = v87;

    sub_10003A380(v117, v116);

    v131 = v88;
    v114 = v86;
    if ((a4 & 1) != 0 || v124 != 21)
    {
      sub_1000183C4(&qword_1002AC7E0);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1001FEBE0;
      *(v90 + 32) = v70;
      *(v90 + 40) = v133;
      *(v90 + 48) = v86;
      *(v90 + 56) = v88;
      v140[0] = v90;

      sub_1000183C4(&qword_1002ACA10);
      sub_100019C4C(&qword_1002ADF40, &qword_1002ACA10);
      sub_1001F6A68();

      v89 = v125;
      sub_1001F6B88();
    }

    else
    {
      sub_1001F6568();
      sub_1001F6528();
      (*(v121 + 8))(v120, v122);
      v89 = v125;
      sub_1001F6B88();
    }

    v91 = sub_1001F6B68();
    v93 = v92;

    (*(v126 + 8))(v89, v128);
    if (v93 >> 60 != 15)
    {
      v127 = v91;
      v140[0] = v91;
      v140[1] = v93;
      sub_10003A3D8();
      sub_1001F68D8();
      v101 = sub_1001F6918();
      v137 = v102;
      (*(v118 + 8))(v123, v119);
      v140[0] = sub_1001F63B8(0);
      v140[1] = v103;
      sub_1000B2EB8();
      sub_1000B2EA4();
      sub_1000B306C();
      sub_1000B2FD0();
      v105 = v104;

      v140[0] = v101;
      v140[1] = v105;
      sub_1000B2EB8();
      sub_1000B2EA4();
      sub_1000B306C();
      sub_1000B2FD0();
      v107 = v106;

      v140[0] = v101;
      v140[1] = v107;
      sub_1000B3038();
      sub_1000B2EB8();
      sub_1000B2EA4();
      sub_1000B306C();
      sub_1000B2FD0();
      v109 = v108;
      sub_10003A380(v101, v137);

      v110 = &a7[v130[12]];
      *v110 = v101;
      v110[1] = v109;
      sub_1000183C4(&qword_1002AC7E0);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_100208B20;
      *(v111 + 32) = v115;
      *(v111 + 40) = v133;
      *(v111 + 48) = v114;
      *(v111 + 56) = v131;
      *(v111 + 64) = v101;
      *(v111 + 72) = v109;

      sub_10003A36C(v127, v93);
      sub_1001F68E8();
      sub_1000B2EC8();
      (*(v112 + 8))(a2);
      result = sub_1000B29F4(a1, v146);
      *&a7[v130[13]] = v111;
      return result;
    }

    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v94 = sub_1001F6688();
    sub_100019C94(v94, qword_1002E6180);
    v95 = sub_1001F6668();
    v96 = sub_1001F7298();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Failed to create JWS signing data", v97, 2u);
      sub_10003A72C();
    }

    v81 = 1;
    LOBYTE(v140[0]) = 1;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v91, v93);
    sub_1001F68E8();
    sub_1000B2EC8();
    (*(v98 + 8))(a2);
    v80 = v146;
    sub_1000B29F4(a1, v146);
  }

  memcpy(v140, a7, sizeof(v140));
  sub_1000B30F8();
  sub_1000B29A0(v99, v100);
  result = sub_1000B29F4(&a7[v135], v80);
  *a5 = v81;
  return result;
}

void sub_1000B19E8(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v111 = a5;
  v102 = a6;
  v10 = type metadata accessor for CheddarTransaction();
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11, v12);
  sub_100023510();
  v109 = (v14 - v13);
  v15 = sub_1000183C4(&qword_1002AF150);
  sub_100056658(v15);
  sub_10001E844();
  __chkstk_darwin(v16, v17);
  v19 = &v96[-v18];
  v108 = sub_1000183C4(&qword_1002AC7C8);
  sub_10001A278();
  v101 = v20;
  __chkstk_darwin(v21, v22);
  v103 = &v96[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24, v25);
  v100 = &v96[-v26];
  v27 = *(a1 + 24);
  if (v27)
  {
    v110 = a4;
    v28 = *(a1 + 16);
    v99 = v27;

    sub_10018DA5C();
    v30 = v29;
    v149 = v31 & 1;
    v32 = sub_1000C46EC(a2);
    if (v32)
    {
      v33 = v32;
      v34 = sub_1000C4780();
    }

    else if (*(a1 + 80))
    {
      v34 = 0.0;
    }

    else
    {
      v34 = *(a1 + 64);
    }

    sub_10018DC90();
    v36 = v35;
    v38 = v37;
    sub_1000B2768(a1);
    v147 = v38 & 1;
    v39 = a3 & 1;
    v40 = sub_10013B560(a2);
    v41 = 0;
    v115 = a2 & 0xC000000000000001;
    v116 = v40;
    v114 = a2 & 0xFFFFFFFFFFFFFF8;
    v104 = _swiftEmptyArrayStorage;
    v112 = v30;
    v113 = a2;
    v98 = v36;
    v97 = v39;
    v106 = v19;
    v107 = v28;
    while (v116 != v41)
    {
      if (v115)
      {
        v42 = sub_1001F7808();
      }

      else
      {
        if (v41 >= *(v114 + 16))
        {
          goto LABEL_42;
        }

        v42 = *(a2 + 8 * v41 + 32);
      }

      v43 = v42;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v105 = v41 + 1;
      v44 = sub_1000BFC24();
      v46 = v45;
      v47 = v110;
      sub_10001AE68((v110 + 48), *(v110 + 72));
      v53 = sub_10007A214(2uLL, v44, v46, v48, v49, v50, v51, v52);
      LOBYTE(v44) = v54;

      v55 = *(v111 + 48);
      v56 = v43;

      v57 = v109;
      sub_100140370(v56, v55, v53, v44 & 1, v109);
      v58 = *(v47 + 112);
      v59 = (v47 + 88);
      v60 = v106;
      sub_10001AE68(v59, v58);
      sub_1000B033C(v57, v53, v44 & 1);
      sub_1000B29F4(v57, type metadata accessor for CheddarTransaction);

      if (sub_10001C990(v60, 1, v108) == 1)
      {
        sub_1000B29A0(v60, &qword_1002AF150);
        ++v41;
        v28 = v107;
        v30 = v112;
        a2 = v113;
      }

      else
      {
        v61 = v100;
        sub_1000B27BC(v60, v100);
        sub_1000B27BC(v61, v103);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v107;
        v30 = v112;
        a2 = v113;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100032FDC();
          v104 = v67;
        }

        v63 = v105;
        v64 = v104[2];
        if (v64 >= v104[3] >> 1)
        {
          sub_100032FDC();
          v104 = v68;
        }

        v65 = v103;
        v66 = v104;
        v104[2] = v64 + 1;
        sub_1000B27BC(v65, v66 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v64);
        v41 = v63;
      }
    }

    v69 = v30;
    v70 = v104;

    v71 = 0;
    v72 = _swiftEmptyArrayStorage;
    while (v116 != v71)
    {
      if (v115)
      {
        v73 = sub_1001F7808();
      }

      else
      {
        if (v71 >= *(v114 + 16))
        {
          goto LABEL_44;
        }

        v73 = *(a2 + 8 * v71 + 32);
      }

      v74 = v73;
      v75 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_43;
      }

      if (sub_1000C2448())
      {

        ++v71;
        a2 = v113;
      }

      else
      {
        v131 = sub_1000C1A68();
        v76 = sub_1001F7E28();
        v78 = v77;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100032370();
          v72 = v81;
        }

        v79 = v72[2];
        if (v79 >= v72[3] >> 1)
        {
          sub_100032370();
          v72 = v82;
        }

        v72[2] = v79 + 1;
        v80 = &v72[2 * v79];
        v80[4] = v76;
        v80[5] = v78;
        v71 = v75;
        v70 = v104;
        a2 = v113;
      }
    }

    v83 = sub_10001A07C(a2);

    v84 = v70[2];

    if (v83 == v84)
    {
      v85 = v69;
      v118 = v69;
      LOBYTE(v119) = v149;
      *(&v119 + 1) = *v148;
      HIDWORD(v119) = *&v148[3];
      v120 = v34;
      v86 = 5;
      v121 = 5;
      v122 = v28;
      v87 = v98;
      v88 = v99;
      v123 = v99;
      v124 = v98;
      LOBYTE(v125) = v147;
      *(&v125 + 1) = *v146;
      HIDWORD(v125) = *&v146[3];
      v89 = 0x65646F6358;
      v90 = 0xE500000000000000;
      v126 = 0x65646F6358;
      v127 = 0xE500000000000000;
      v128 = v70;
      v129 = v72;
      v91 = v70;
      v92 = v97;
      v130 = v97;
      v116 = v119;
      v115 = v125;
      v131 = v85;
      v132 = v149;
      *v133 = *v148;
      *&v133[3] = *&v148[3];
      v134 = v34;
      v135 = 5;
      v136 = v28;
      v137 = v99;
      v138 = v98;
      v139 = v147;
      *&v140[3] = *&v146[3];
      *v140 = *v146;
      v141 = 0x65646F6358;
      v142 = 0xE500000000000000;
      v143 = v91;
      v144 = v72;
      v145 = v97;
      sub_1000B282C(&v118, &v117);
      sub_1000B2864(&v131);

      goto LABEL_40;
    }
  }

  else
  {

    sub_1000B2768(a1);
  }

  v112 = 0;
  v115 = 0;
  v116 = 0;
  v86 = 0;
  v28 = 0;
  v88 = 0;
  v87 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v72 = 0;
  v92 = 0;
  v34 = 0.0;
LABEL_40:
  sub_1000B2768(v111);
  v93 = v102;
  v94 = v115;
  v95 = v116;
  *v102 = v112;
  *(v93 + 1) = v95;
  v93[2] = v34;
  *(v93 + 3) = v86;
  *(v93 + 4) = v28;
  *(v93 + 5) = v88;
  *(v93 + 6) = v87;
  *(v93 + 7) = v94;
  *(v93 + 8) = v89;
  *(v93 + 9) = v90;
  *(v93 + 10) = v91;
  *(v93 + 11) = v72;
  *(v93 + 96) = v92;
}

uint64_t sub_1000B2128(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027AFF8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B2184(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697369766572;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x496D616441707061;
      break;
    case 4:
      result = 0x6D6E6F7269766E65;
      break;
    case 5:
      result = 0x65726F4D736168;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B2298(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B25B8);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  v11 = &v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1000B2B3C();
  sub_1001F8198();
  LOBYTE(v15) = 0;
  sub_1000B2F78();
  sub_1001F7D48();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v14 = 1;
    sub_1000B2B90();
    sub_1000B3028();
    sub_100024A88();
    sub_1001F7DC8();
    LOBYTE(v15) = 2;
    sub_1000B2F78();
    sub_1001F7D88();
    LOBYTE(v15) = 3;
    sub_1000B2F78();
    sub_1001F7D48();
    LOBYTE(v15) = 4;
    sub_1000B2F78();
    sub_1001F7D88();
    LOBYTE(v15) = 5;
    sub_100024A88();
    sub_1001F7D98();
    *&v15 = *(v3 + 80);
    v14 = 6;
    sub_1000183C4(&qword_1002B25D0);
    sub_1000B2BE4();
    sub_1000B3028();
    sub_100024A88();
    sub_1001F7DC8();
    *&v15 = *(v3 + 88);
    v14 = 7;
    sub_1000183C4(&qword_1002ACA10);
    sub_100057AE0();
    sub_1000B3028();
    sub_100024A88();
    sub_1001F7DC8();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1000B2520@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2128(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000B2550@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B2184(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B2598@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B2174();
  *a1 = result;
  return result;
}

uint64_t sub_1000B25CC(uint64_t a1)
{
  v2 = sub_1000B2B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2608(uint64_t a1)
{
  v2 = sub_1000B2B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B265C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, Swift::Int a6@<X5>, void *a7@<X8>)
{
  if (a6 >= 1)
  {
    sub_1001F6BF8(a6);
    while (1)
    {
      swift_stdlib_random();
    }
  }

  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = 5527370;
  a7[5] = 0xE300000000000000;
  a7[6] = result;
  a7[7] = 0;
  a7[8] = 0;
  return result;
}

uint64_t sub_1000B27BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AC7C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B2894()
{
  result = qword_1002B2588;
  if (!qword_1002B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2588);
  }

  return result;
}

uint64_t sub_1000B28E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000B30E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000B2944(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000183C4(a3);
  sub_1000B30E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000B29A0(uint64_t a1, uint64_t *a2)
{
  sub_1000183C4(a2);
  sub_1000B2EC8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B29F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000B2EC8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B2A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B2A90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B2AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B2B3C()
{
  result = qword_1002B25C0;
  if (!qword_1002B25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25C0);
  }

  return result;
}

unint64_t sub_1000B2B90()
{
  result = qword_1002B25C8;
  if (!qword_1002B25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25C8);
  }

  return result;
}

unint64_t sub_1000B2BE4()
{
  result = qword_1002B25D8;
  if (!qword_1002B25D8)
  {
    sub_100019BC4(&qword_1002B25D0);
    sub_100019C4C(&qword_1002AF280, &qword_1002AC7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransactionHistoryResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B2D60);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B2D9C()
{
  result = qword_1002B25E0;
  if (!qword_1002B25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25E0);
  }

  return result;
}

unint64_t sub_1000B2DF4()
{
  result = qword_1002B25E8;
  if (!qword_1002B25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25E8);
  }

  return result;
}

unint64_t sub_1000B2E4C()
{
  result = qword_1002B25F0;
  if (!qword_1002B25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25F0);
  }

  return result;
}

uint64_t sub_1000B2EDC()
{

  return swift_once();
}

uint64_t sub_1000B2EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, void (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, void (*a14)(void), unint64_t *a15)
{
  v20 = *(v18 - 108) & 1;
  v21 = *(v18 - 104);

  return sub_1000B0B88(v16, v17, v21, v20, (v18 - 89), a8, v15, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1000B2F5C(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 108) = a3;
  *(v3 - 104) = a2;
  return 0;
}

uint64_t sub_1000B2FDC()
{

  return sub_1001F68E8();
}

void sub_1000B2FFC()
{
  v0[29] = v1;
  v0[30] = v3;
  v0[27] = 47;
  v0[28] = v2;
  v0[25] = 95;
  v0[26] = v2;
}

uint64_t sub_1000B306C()
{

  return sub_1001F75F8();
}

uint64_t sub_1000B3084()
{

  return sub_1000B28E8(v2, v1, v0);
}

uint64_t sub_1000B30A0()
{
  sub_10001AE68((v0 + 16), *(v0 + 40));

  return sub_10007AB10();
}

void sub_1000B30D0(uint64_t a1@<X8>)
{
  v1[27] = a1;
  v1[28] = 0xE100000000000000;
  v1[25] = 45;
  v1[26] = 0xE100000000000000;
}

uint64_t sub_1000B3104@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  sub_10002DFFC();
  v31 = v7;
  v32 = v6;
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  sub_10002DFFC();
  v16 = v15;
  __chkstk_darwin(v17, v18);
  sub_100023510();
  v21 = v20 - v19;
  sub_10002DFFC();
  __chkstk_darwin(v22, v23);
  sub_100023510();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24, v28);
  v29 = 1;
  if (sub_10001C990(v26, 1, v14) != 1)
  {
    (*(v16 + 32))(v21, v26, v14);
    a1(v21, v12);
    (*(v16 + 8))(v21, v14);
    if (v4)
    {
      return (*(v31 + 32))(a3, v12, v32);
    }

    v29 = 0;
  }

  return sub_100018460(a4, v29, 1, a2);
}

BOOL sub_1000B3348()
{
  v1 = *(v0 + 32);
  v2 = pthread_self();
  return pthread_equal(v1, v2) != 0;
}

uint64_t ThreadSpecificVariable.__allocating_init()()
{
  sub_1000856AC();
  v0 = swift_allocObject();
  ThreadSpecificVariable.init()();
  return v0;
}

void *ThreadSpecificVariable.currentValue.getter()
{
  result = sub_1000B3A20();
  if (result)
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
    return v1;
  }

  return result;
}

uint64_t ThreadSpecificVariable.currentValue.setter()
{
  if (sub_1000B3A20())
  {
  }

  sub_1001F74B8();
  sub_1000B3104(sub_1000B3B9C, &type metadata for UnsafeMutableRawPointer, v0, &v2);
  sub_10004B100(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1000B3540()
{
  v1 = *(v0 + 32);
  v2 = sub_1001F6F88();
  *(v2 + 16) = 64;
  *(v2 + 32) = 0u;
  v3 = v2 + 32;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  if (pthread_getname_np(v1, (v2 + 32), 0x40uLL))
  {
    v4 = 0;
  }

  else
  {
      ;
    }

    v4 = sub_1001F6C08();
  }

  return v4;
}

uint64_t sub_1000B35F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  sub_1000183C4(&qword_1002B27A0);
  v11 = swift_allocObject();
  v11[2] = sub_1000B3DB4;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;

  if (pthread_create(&v14, 0, sub_1001B4310, v11))
  {
    __break(1u);
  }

  if ((a3 & 1) == 0)
  {
  }

  result = v14;
  if (!v14)
  {
    __break(1u);
    return result;
  }

  v13 = pthread_detach(v14);

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B3734()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B376C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1000B3540();
  v5 = v3;
  v6 = v4;
  if (!v1)
  {
    if (!v4)
    {
      return 0x61657268544F494ELL;
    }

    sub_1000B3DEC();
    sub_1001F77B8(26);

    sub_1000B3DE0();
    v9 = 0xD000000000000017;
    goto LABEL_15;
  }

  if (!v4)
  {
    sub_1000B3DEC();

    sub_1001F77B8(27);

    sub_1000B3DE0();
    v9 = 0xD000000000000018;
    goto LABEL_12;
  }

  v7 = v2 == v3 && v1 == v4;
  if (!v7 && (sub_1001F7EA8() & 1) == 0)
  {
    sub_1000B3DEC();

    sub_1001F77B8(44);

    sub_1000B3DE0();
    v9 = 0xD000000000000018;
    v11._countAndFlagsBits = v2;
    v11._object = v1;
    sub_1001F6CA8(v11);

    v12._countAndFlagsBits = 0x6C6175746361202CLL;
    v12._object = 0xEF203D20656D614ELL;
    sub_1001F6CA8(v12);
LABEL_15:
    v13._countAndFlagsBits = v5;
    v13._object = v6;
    sub_1001F6CA8(v13);
    goto LABEL_16;
  }

  sub_1000B3DEC();
  sub_1001F77B8(20);

  sub_1000B3DE0();
  v9 = 0xD000000000000011;
LABEL_12:
  v10._countAndFlagsBits = v2;
  v10._object = v1;
  sub_1001F6CA8(v10);
LABEL_16:

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  sub_1001F6CA8(v14);
  return v9;
}

uint64_t sub_1000B3994(void (__cdecl *a1)(void *))
{
  sub_1000856AC();
  v2 = swift_allocObject();
  sub_10004B094(a1);
  return v2;
}

uint64_t sub_1000B39CC()
{
  result = pthread_key_delete(*(v0 + 16));
  if (!result)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B39F4()
{
  sub_1000B39CC();
  sub_1000856AC();

  return swift_deallocClassInstance();
}

uint64_t ThreadSpecificVariable.init()()
{
  type metadata accessor for ThreadSpecificVariable.Key();
  *(v0 + 16) = sub_1000B3994(j_j__swift_release);
  return v0;
}

uint64_t ThreadSpecificVariable.__allocating_init(value:)()
{
  v0 = ThreadSpecificVariable.__allocating_init()();

  swift_unknownObjectRetain();
  ThreadSpecificVariable.currentValue.setter();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000B3AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  swift_getTupleTypeMetadata2();
  type metadata accessor for Box();
  v7[0] = a2;
  v7[1] = v5;
  *a3 = sub_100073888(v7);

  return swift_unknownObjectRetain();
}

uint64_t (*ThreadSpecificVariable.currentValue.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ThreadSpecificVariable.currentValue.getter();
  return sub_1000B3C1C;
}

uint64_t sub_1000B3C1C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ThreadSpecificVariable.currentValue.setter();
  }

  swift_unknownObjectRetain();
  ThreadSpecificVariable.currentValue.setter();

  return swift_unknownObjectRelease();
}

uint64_t ThreadSpecificVariable.__deallocating_deinit()
{
  ThreadSpecificVariable.deinit();
  sub_1000856AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B3D7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3DF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_1000B40C0();
  if (v3)
  {
  }

  else
  {
    sub_1000183C4(&unk_1002B3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100208ED0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    for (i = 0; ; ++i)
    {
      if (i == 2)
      {

        swift_setDeallocating();
        sub_1001E57B0();
        return v4;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v10 = *(inited + 8 * i + 32);
      }

      sub_100047940();
      swift_beginAccess();
      if (*(v10 + 16) != 1)
      {
        break;
      }

      sub_10019DD84();
      sub_10019DD84();
    }

    sub_1000274C4();
    sub_1000276A0();
    *v11 = 0xD00000000000001FLL;
    *(v11 + 8) = 0x8000000100224AB0;
    *(v11 + 16) = 9;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1000B40C0()
{
  sub_1000183C4(&qword_1002B28C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 32) = *(v0 + 16);
  *(inited + 40) = *(v0 + 24);

  for (i = 32; ; i += 8)
  {
    if (i == 48)
    {
      swift_setDeallocating();
      return sub_1001E5774();
    }

    v4 = *(inited + i);
    sub_100047940();
    swift_beginAccess();
    if (*(v4 + 16) != 1)
    {
      sub_100077354();
      v7 = sub_1000276A0();
      sub_1000B4B14(v7, v8);

      goto LABEL_14;
    }

    v5 = *(v4 + 20);

    sub_10019DD84();
    if (v1)
    {
      break;
    }
  }

  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast())
  {

    if (v12 == 22)
    {

      sub_1000B4A80();
      sub_1000276A0();
    }

    else
    {
      sub_10019DE1C(v5);
      sub_1000274C4();
      sub_1000276A0();
      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
    }

    swift_willThrow();
  }

LABEL_14:
  swift_setDeallocating();
  sub_1001E5774();
}

uint64_t sub_1000B42D4()
{
  sub_1001F77B8(26);
  v1._countAndFlagsBits = 0x7269615065706950;
  v1._object = 0xEE003D6E69207B20;
  sub_1001F6CA8(v1);
  sub_1000B4B3C();
  v2._countAndFlagsBits = 0x3D74756F202CLL;
  v2._object = 0xE600000000000000;
  sub_1001F6CA8(v2);
  sub_1000B4B3C();
  v3._countAndFlagsBits = 32032;
  v3._object = 0xE200000000000000;
  sub_1001F6CA8(v3);
  return 0;
}

void sub_1000B43AC(uint64_t a1)
{
  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (v2)
  {
    if (a1)
    {
      sub_1000B4B60();
      sub_10019E03C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100077354();
    v3 = sub_1000276A0();
    sub_1000B4B14(v3, v4);
  }
}

void sub_1000B4448()
{
  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (v0)
  {
    sub_10019DE98();
  }

  else
  {
    sub_100077354();
    v1 = sub_1000276A0();
    sub_1000B4B14(v1, v2);
  }
}

void sub_1000B44E8(uint64_t a1)
{
  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (v2)
  {
    if (a1)
    {
      sub_1000B4B60();
      sub_10019DF8C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100077354();
    v3 = sub_1000276A0();
    sub_1000B4B14(v3, v4);
  }
}

uint64_t sub_1000B4584()
{
  sub_10002D678();
  v0 = sub_1000276A0();
  return sub_1000B4AEC(v0, v1);
}

void sub_1000B45BC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    sub_1000B4600();
  }

  else
  {
    NIOFileHandle.close()();
  }
}

void sub_1000B4600()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v5 + 16))
  {
    NIOFileHandle.close()();
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v2 = 1;
    }

    v7 = v6 != 0;
    v3 = 0;
  }

  else
  {
    v8 = *(v4 + 24);
    sub_100047940();
    swift_beginAccess();
    if ((*(v8 + 16) & 1) == 0)
    {
      sub_10002D678();
      sub_1000276A0();
      *v12 = 3;
      *(v12 + 8) = 3;
      swift_willThrow();
      return;
    }

    v7 = 0;
  }

  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (!v9 || (NIOFileHandle.close()(), (v3 = v10) == 0))
  {
    if (!v7)
    {
      return;
    }

    v11 = 0;
    goto LABEL_15;
  }

  if (v7)
  {
    v11 = 1;
LABEL_15:
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    swift_willThrowTypedImpl();
    sub_1000374AC(v3, v11);
    sub_1000374AC(v2, 1);
    return;
  }

  sub_1000183C4(&qword_1002ACE88);
  swift_willThrowTypedImpl();
}

uint64_t sub_1000B478C()
{
  v1 = *(v0 + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(v0 + 24);
  sub_100047940();
  swift_beginAccess();
  return *(v3 + 16);
}

uint64_t sub_1000B4804()
{
  sub_10004AF74();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B48F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1000B49B8(uint64_t a1)
{
  result = sub_1000B4A40(&qword_1002B28A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B49FC(uint64_t a1)
{
  result = sub_1000B4A40(&qword_1002B28B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B4A40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PipePair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B4A80()
{
  result = qword_1002B28B8;
  if (!qword_1002B28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B28B8);
  }

  return result;
}

uint64_t sub_1000B4AEC(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 3;

  return swift_willThrow();
}

uint64_t sub_1000B4B14(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001FLL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 9;

  return swift_willThrow();
}

uint64_t sub_1000B4B3C()
{

  return sub_1001F7A28();
}

uint64_t sub_1000B4B80(char a1)
{
  if (a1 == 3)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v3 = sub_1001F6688();
  sub_100019C94(v3, qword_1002E6180);
  v4 = sub_1001F6668();
  v5 = sub_1001F7298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = qword_1002090B0[a1 - 1];
    sub_1000B558C(&_mh_execute_header, v7, v8, "no developer control info for %ld");
    sub_10003A72C();
  }

  return 2;
}

uint64_t sub_1000B4C78(char a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  if (!a1)
  {
    return 1;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v3 = sub_1001F6688();
  sub_100019C94(v3, qword_1002E6180);
  v4 = sub_1001F6668();
  v5 = sub_1001F7298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = qword_1002090B0[a1 - 1];
    sub_1000B558C(&_mh_execute_header, v7, v8, "no message reason info for %ld");
    sub_10003A72C();
  }

  return 4;
}

uint64_t sub_1000B4D7C(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001BLL;
  }

  return 0x526567617373656DLL;
}

uint64_t sub_1000B4DDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6)
{
  v40 = a6;
  v42 = a2;
  v10 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v39 - v12;
  v43 = sub_1001F6288();
  v14 = *(v43 - 8);
  __chkstk_darwin(v43, v15);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1001F77B8(21);

  v46 = 0xD000000000000011;
  v47 = 0x8000000100226C60;
  v45 = a1;
  v49._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v49);

  v50._countAndFlagsBits = a4;
  v50._object = a5;
  sub_1001F6CA8(v50);
  v17 = v46;
  v18 = v47;
  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v19 = sub_1001F6688();
  sub_100019C94(v19, qword_1002E6180);

  v20 = sub_1001F6668();
  v21 = sub_1001F72B8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v14;
    v23 = v22;
    v46 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_1000E4544(v42, a3, &v46);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1000E4544(v17, v18, &v46);
    _os_log_impl(&_mh_execute_header, v20, v21, "message for %s at %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_10003A72C();
    v14 = v39;
    sub_10003A72C();
  }

  sub_1001F6258();
  v24 = v43;
  if (sub_10001C990(v13, 1, v43) == 1)
  {
    sub_100022CE8(v13);

    v25 = sub_1001F6668();
    v26 = sub_1001F7298();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v17;
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_1000E4544(v27, v18, &v46);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1000E4544(v42, a3, &v46);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s is not a URL, cannot send form message for %s", v28, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v30 = v40;
    v31 = BYTE1(v40);

    v32 = v41;
    (*(v14 + 32))(v41, v13, v24);
    v33 = sub_1001F69B8();
    v48 = v24;
    v34 = sub_1000629FC(&v46);
    (*(v14 + 16))(v34, v32, v24);
    sub_1000B555C();
    v44 = v33;
    sub_1001E5A4C();
    v35 = v44;
    v48 = &type metadata for Bool;
    LOBYTE(v46) = v30 & 1;
    sub_1000B555C();
    v44 = v35;
    sub_1001E5A4C();
    v36 = v44;
    v48 = &type metadata for Int;
    v46 = (v31 + 1);
    sub_1000B555C();
    v44 = v36;
    sub_1001E5A4C();
    v37 = v44;
    (*(v14 + 8))(v32, v24);
  }

  return v37;
}

uint64_t sub_1000B536C(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_1000B53A8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B536C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B53D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B4D70(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B54CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B5508()
{
  result = qword_1002B28C8;
  if (!qword_1002B28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B28C8);
  }

  return result;
}

uint64_t sub_1000B555C()
{
  sub_10003708C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1000B558C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000B55B0()
{
  if (sub_1000B3348())
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    sub_10002D824(v1);
    sub_10002D824(v2);
  }

  else
  {

    Lock.lock()();
    v1 = *(v0 + 168);
    v3 = *(v0 + 176);
    sub_10002D824(v1);
    sub_10002D824(v3);
    Lock.unlock()();
  }

  return v1;
}

uint64_t sub_1000B5638()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 232);
  v2 = *(v0 + 249);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 176, ObjectType, v1);
  if (v2 > 4 || ((1 << v2) & 0x13) == 0)
  {
    sub_100180EBC(*(v0 + 216) & 0xFD);
    while (1)
    {
      v6 = *(v0 + 232);
      v7 = *(v0 + 249);
      swift_getObjectType();
      sub_1000B6F6C();
      result = debugOnly(_:)(v8, v9, v10, v11, v12, v6);
      if (v7 != 3)
      {
        break;
      }

      result = sub_1000B5888();
      if ((result & 0xFE) == 2)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000B5770(void (*a1)(void), uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  sub_100047940();
  swift_beginAccess();
  v7 = *(v3 + 232);
  v8 = *(v3 + 249);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 176, ObjectType, v7);
  if (v8 > 4 || ((1 << v8) & 0x13) == 0)
  {
    a1(*(v3 + 216) & 0xFD);
    while (1)
    {
      v12 = *(v3 + 232);
      v13 = *(v3 + 249);
      swift_getObjectType();
      sub_1000B6F6C();
      result = debugOnly(_:)(v14, v15, v16, v17, v18, v12);
      if (v13 != 3)
      {
        break;
      }

      result = sub_1000B5DA0(a2, a3);
      if ((result & 0xFE) == 2)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1000B5888()
{
  v1 = (*(*v0 + 624))();
  sub_100047940();
  swift_beginAccess();
  v2 = *(v0 + 232);
  v3 = *(v0 + 249);
  swift_getObjectType();
  sub_1000B6F6C();
  v9 = debugOnly(_:)(v4, v5, v6, v7, v8, v2);
  if (v3 == 3)
  {
    v10 = *(sub_100180E50(v9) + 56);
    swift_getObjectType();
    sub_1000B6F8C();
    debugOnly(_:)(v11, v12, v13, v14, v15, v10);
    if (sub_10009D370())
    {
      sub_10009E230();
    }
  }

  sub_10002E0B8();
  (*(v16 + 720))();
  sub_10002E0B8();
  if (((*(v17 + 584))() & 1) != 0 && (*(v0 + 88) & 1) == 0)
  {
    sub_100180F2C();
  }

  return v1 & 1;
}

uint64_t sub_1000B5DA0(uint64_t (*a1)(uint64_t), void (*a2)(void))
{
  v5 = (*(*v2 + 624))();
  sub_100047940();
  swift_beginAccess();
  v6 = *(v2 + 232);
  v7 = *(v2 + 249);
  swift_getObjectType();
  sub_1000B6F6C();
  v13 = debugOnly(_:)(v8, v9, v10, v11, v12, v6);
  if (v7 == 3)
  {
    v14 = *(a1(v13) + 56);
    swift_getObjectType();
    sub_1000B6F8C();
    debugOnly(_:)(v15, v16, v17, v18, v19, v14);
    if (sub_10009D370())
    {
      sub_10009E230();
    }
  }

  (*(*v2 + 720))(v13);
  sub_10002E258();
  if (((*(v20 + 584))() & 1) != 0 && (*(v2 + 88) & 1) == 0)
  {
    a2();
  }

  return v5 & 1;
}

uint64_t sub_1000B6304(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  type metadata accessor for PipePair();
  v9 = swift_allocObject();

  v10 = sub_1000B3DF8(a2, a3);
  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 312) = v10;
    AdaptiveRecvByteBufferAllocator.init(minimum:initial:maximum:)(&v16, 64, 2048, 0x10000);
    v15[3] = &type metadata for AdaptiveRecvByteBufferAllocator;
    v15[4] = &protocol witness table for AdaptiveRecvByteBufferAllocator;
    v11 = swift_allocObject();
    v15[0] = v11;
    v12 = *&v16.initial;
    *(v11 + 16) = *&v16.minimum;
    *(v11 + 32) = v12;
    *(v11 + 48) = v16.decreaseNow;

    v9 = sub_10017B3D4(v13, 0, 0, a1, v15);
  }

  return v9;
}

uint64_t sub_1000B6490()
{
  sub_10002D678();
  swift_allocError();
  sub_1000B6F9C(v0, 1);
  return 0;
}

uint64_t sub_1000B64DC()
{
  sub_10002D678();
  swift_allocError();
  return sub_1000B6F9C(v0, 12);
}

uint64_t sub_1000B6524()
{
  v2 = *(*(v0 + 312) + 16);

  sub_10017A608(v2);

  if (!v1)
  {
    __chkstk_darwin(result, v4);

    sub_10017A608(v5);
  }

  return result;
}

void sub_1000B66EC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(*(v2 + 312) + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v5 + 16) != 1 || (v6 = , sub_10017ADB8(v6), , !v3))
  {
    if (a2 == 2)
    {
LABEL_7:
      v7 = *(*(v2 + 312) + 24);
      sub_100047940();
      swift_beginAccess();
      if (*(v7 + 16) == 1)
      {

        sub_10017ADB8(v8);
      }
    }
  }
}

uint64_t sub_1000B67DC()
{
  v2 = *(v0 + 312);
  v3 = *(v2 + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v3 + 16) != 1 || (v4 = , sub_10017A9D0(v4), result = , !v1))
  {
    v6 = *(v2 + 24);
    sub_100047940();
    result = swift_beginAccess();
    if (*(v6 + 16) == 1)
    {

      sub_10017A9D0(v7);
    }
  }

  return result;
}

uint64_t sub_1000B68B8()
{
  swift_beginAccess();
  *(v0 + 248) = 1;
  sub_1000B5638();
  v1 = *(*(v0 + 312) + 16);
  sub_100047940();
  result = swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    sub_10017980C(v0, 1u);

    NIOFileHandle.close()();

    if (v3)
    {
      sub_1000B6F7C();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000B698C()
{
  v1 = *(*(v0 + 312) + 24);
  sub_100047940();
  result = swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    sub_10017980C(v0, 0);

    NIOFileHandle.close()();

    if (v3)
    {
      sub_1000B6F7C();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

void sub_1000B6A40(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_10017980C(v1, 1u);
      if (v2)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    sub_10017B4EC(a1);
    return;
  }

  sub_10017980C(v1, 0);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1000B6F7C();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1000B6AE4()
{
  sub_10017B5BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PipeChannel()
{
  result = qword_1002B28F8;
  if (!qword_1002B28F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B6BC0()
{
  sub_1001F77B8(70);
  v17._countAndFlagsBits = 0x6E61684365706950;
  v17._object = 0xEE00207B206C656ELL;
  sub_1001F6CA8(v17);
  sub_1001F6CA8(*(v0 + 72));
  v18._countAndFlagsBits = 0x657669746361202CLL;
  v18._object = 0xEB00000000203D20;
  sub_1001F6CA8(v18);
  v1 = sub_1000069BC((*(v0 + 64) + 16));
  v2 = v1 == 0;
  if (v1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v3._object = v4;
  sub_1001F6CA8(v3);

  v19._object = 0x8000000100226CE0;
  v19._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v19);
  v5 = sub_1000B55B0();
  sub_10002D83C(v6);
  sub_1000183C4(&qword_1002B2D30);
  v7 = sub_1001F74A8();
  v9 = v8;
  sub_10002D83C(v5);
  v20._countAndFlagsBits = v7;
  v20._object = v9;
  sub_1001F6CA8(v20);

  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000100226D00;
  sub_1001F6CA8(v21);
  v10 = sub_1000B55B0();
  v12 = v11;
  sub_10002D83C(v10);
  v13 = sub_1001F74A8();
  v15 = v14;
  sub_10002D83C(v12);
  v22._countAndFlagsBits = v13;
  v22._object = v15;
  sub_1001F6CA8(v22);

  v23._countAndFlagsBits = 32032;
  v23._object = 0xE200000000000000;
  sub_1001F6CA8(v23);
  return 0;
}

_BYTE *storeEnumTagSinglePayload for PipeChannel.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B6ED4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B6F10()
{
  result = qword_1002B2D38;
  if (!qword_1002B2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2D38);
  }

  return result;
}

uint64_t sub_1000B6F9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 3;

  return swift_willThrow();
}

uint64_t sub_1000B6FBC()
{

  return swift_unexpectedError();
}

uint64_t sub_1000B6FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return debugOnly(_:)(a1, 117, 2, 1189, a5, v5);
}

uint64_t sub_1000B6FFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B7060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(a2 + 40);
  if (*(v4 + 16))
  {

    v5 = sub_10011108C();
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v3);

  return v7;
}

uint64_t sub_1000B7130(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock(v4);
  sub_10007B13C(a2, &v6);
  os_unfair_lock_unlock(v4);
  if (v2)
  {
  }

  else
  {

    a2 = v6;
  }

  return a2;
}

uint64_t sub_1000B7204(uint64_t a1)
{
  sub_1000B7348(a1);
  v2 = sub_1000B7374();
  sub_10007B028(v2, v3, v4, v5);
  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000B7264(uint64_t a1)
{
  sub_1000B7348(a1);
  v2 = sub_1000B7374();
  sub_10007B260(v2, v3, v4, v5);
  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000B72C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  os_unfair_lock_lock(v7);
  sub_10008D1F8(a2, a3, a4);
  os_unfair_lock_unlock(v7);
}

void sub_1000B7348(uint64_t a1)
{
  v2 = *(a1 + 16);

  os_unfair_lock_lock(v2);
}

double sub_1000B738C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *&v24 = sub_1000B7990(a3);
  *(&v24 + 1) = v7;
  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_10007B9BC();
    v15 = sub_1001F6CF8();
    if (v15 < 0)
    {
      __break(1u);
    }

    if (v15)
    {
      goto LABEL_6;
    }

LABEL_10:
    if (qword_1002AC430 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  type metadata accessor for ByteBuffer._Storage();
  v9 = sub_1000B7E18();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *(v9 + 16);
  while (1)
  {
    *v25 = v9;
    *&v25[8] = __PAIR64__(v11, v10);
    *&v25[16] = v14;
    *&v25[20] = v12;
    v25[22] = v13;
    v16 = sub_10007B9BC();
    sub_10007C1D0(v16, v17, v18, v11);
    if (v20)
    {
      v21._countAndFlagsBits = sub_10007B9BC();
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v11);
    }

    v22 = v19;

    if (!__CFADD__(*&v25[12], v22))
    {
      break;
    }

    __break(1u);
LABEL_17:
    sub_100061FE8();
LABEL_11:
    v10 = qword_1002E6088;
    v11 = HIDWORD(qword_1002E6088);
    v14 = dword_1002E6090;
    v12 = word_1002E6094;
    v13 = byte_1002E6096;
  }

  *&v25[12] += v22;
  result = *&v24;
  *a4 = v24;
  *(a4 + 16) = *v25;
  *(a4 + 31) = *&v25[15];
  return result;
}

uint64_t sub_1000B74F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  v4 = *(v0 + 36);
  v5 = *(v0 + 38);
  result = swift_beginAccess();
  if (v3 >= v2)
  {
    return sub_1000B7B5C(*(v1 + 24) + (v5 | (v4 << 8)) + v2, v3 - v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B756C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7633012 && a2 == 0xE300000000000000;
  if (v3 || (sub_1000B7E74() & 1) != 0)
  {

    return 6;
  }

  else
  {
    v6 = a1 == 0x7473696C70 && a2 == 0xE500000000000000;
    if (v6 || (sub_1000B7E74() & 1) != 0)
    {

      return 3;
    }

    else
    {
      v7 = a1 == 1852797802 && a2 == 0xE400000000000000;
      if (v7 || (sub_1000B7E74() & 1) != 0)
      {

        return 5;
      }

      else
      {
        v8 = a1 == 1734701162 && a2 == 0xE400000000000000;
        if (v8 || (sub_1000B7E74() & 1) != 0 || (a1 == 6778986 ? (v9 = a2 == 0xE300000000000000) : (v9 = 0), v9 || (sub_1000B7E74() & 1) != 0))
        {

          return 4;
        }

        else
        {
          v10 = a1 == 1819112552 && a2 == 0xE400000000000000;
          if (v10 || (sub_1000B7E74() & 1) != 0)
          {

            return 1;
          }

          else
          {
            v11 = a1 == 7566179 && a2 == 0xE300000000000000;
            if (v11 || (sub_1000B7E74() & 1) != 0)
            {

              return 0;
            }

            else
            {
              v12 = a1 == 29546 && a2 == 0xE200000000000000;
              if (v12 || (sub_1000B7E74() & 1) != 0)
              {

                return 2;
              }

              else
              {
                v13 = a1 == 6778480 && a2 == 0xE300000000000000;
                if (v13 || (sub_1000B7E74() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 6780531 && a2 == 0xE300000000000000)
                {

                  return 8;
                }

                else
                {
                  v15 = sub_1000B7E74();

                  if (v15)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

double sub_1000B77D0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v24 = a3;
  *(&v24 + 1) = a4;
  sub_100040C5C(a1, a2);
  sub_1000999D4();
  v6 = sub_1001F63E8();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = a5;
  if (!v6)
  {
    if (qword_1002AC430 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  v7 = sub_1000B7E18();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *(v7 + 16);
  while (1)
  {
    *v25 = v7;
    *&v25[8] = v8;
    *&v25[16] = v12;
    *&v25[20] = v10;
    v25[22] = v11;
    v13 = sub_1000999D4();
    v16 = sub_100074F6C(v13, v14, v15, v9);
    if ((v16 & 0x100000000) != 0)
    {
      sub_1000999D4();
      sub_10005FD28();
    }

    v17 = v16;
    v18 = sub_1000999D4();
    sub_10003A380(v18, v19);
    v20 = sub_10007B9BC();
    sub_10003A36C(v20, v21);
    if (!__CFADD__(v9, v17))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    sub_100061FE8();
LABEL_5:
    v8 = qword_1002E6088;
    v9 = HIDWORD(qword_1002E6088);
    v12 = dword_1002E6090;
    v10 = word_1002E6094;
    v11 = byte_1002E6096;
  }

  *&v25[12] = v9 + v17;
  result = *&v24;
  *v23 = v24;
  *(v23 + 16) = *v25;
  *(v23 + 31) = *&v25[15];
  return result;
}

uint64_t sub_1000B7944(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B0D8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B7990(char a1)
{
  result = 0x7373632F74786574;
  switch(a1)
  {
    case 1:
      result = 0x6D74682F74786574;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x706A2F6567616D69;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x616C702F74786574;
      break;
    case 7:
      result = 0x6E702F6567616D69;
      break;
    case 8:
      result = 0x76732F6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B7B00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7944(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000B7B30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B7990(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B7B5C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_1001F6298();
    }

    else
    {
      sub_1001F6088();
      swift_allocObject();
      sub_1001F6048();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1001F6338();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPBodyType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B7CD8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000B7D10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B7D24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 39))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B7D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 39) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 39) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B7DC4()
{
  result = qword_1002B2E00;
  if (!qword_1002B2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2E00);
  }

  return result;
}

uint64_t sub_1000B7E18()
{

  return static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v0, j_j__malloc, j_j__realloc, j_j__free, sub_10005EC68);
}

uint64_t sub_1000B7E74()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000B7E90()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 24) = 4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0xF000000000000000;
  return result;
}

uint64_t sub_1000B7EC8()
{

  sub_10003A36C(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_1000B7F00(uint64_t a1, char a2)
{
  if (a2)
  {
    *(v2 + 72) = xmmword_100209300;
  }

  else
  {
    *(v2 + 72) = sub_1001F7E28();
    *(v2 + 80) = v4;
  }
}

BOOL sub_1000B7F88(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B1D0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

uint64_t sub_1000B7FF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B208;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B803C(char a1)
{
  result = 0x7975427070416E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000B80F4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7F88(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000B8128(uint64_t a1@<X8>)
{
  strcpy(a1, "inAppSuccess");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1000B8220@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7FF0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000B8250@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B803C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B832C()
{
  sub_1000B7EC8();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for JingleAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B8450);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JingleDocType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000B8524);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B8560()
{
  result = qword_1002B2F98;
  if (!qword_1002B2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2F98);
  }

  return result;
}

unint64_t sub_1000B85B8()
{
  result = qword_1002B2FA0;
  if (!qword_1002B2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FA0);
  }

  return result;
}

uint64_t sub_1000B860C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B288;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B8660(char a1)
{
  result = 0x73676E6970;
  switch(a1)
  {
    case 1:
      result = 0x6F44656C676E696ALL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6341656C676E696ALL;
      break;
    case 4:
      result = 1684632420;
      break;
    case 5:
      result = 0x7473696C2D707061;
      break;
    case 6:
      result = 0x2D74706965636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B875C(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B2FA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v13 - v8;
  sub_10001AE68(a1, a1[3]);
  sub_1000B8B90();
  sub_1001F8198();
  v14 = *(v3 + 16);
  v16 = 0;
  sub_1000183C4(&qword_1002ACA10);
  sub_100057AE0();
  sub_1000B8EF0();
  sub_100024A88();
  sub_1001F7DC8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v14) = 1;
  sub_100057B5C();
  sub_100024A88();
  sub_1001F7DC8();
  LOBYTE(v14) = 2;
  sub_100024A88();
  sub_1001F7D48();
  LOBYTE(v14) = *(v3 + 24);
  v16 = 3;
  sub_100057BB0();
  sub_1000B8EF0();
  sub_100024A88();
  sub_1001F7D58();
  v11 = *(v3 + 72);
  LOBYTE(v14) = 4;

  sub_100024A88();
  sub_1001F7D18();
  if (!v11)
  {

    v14 = *(v3 + 48);
    v16 = 5;
    sub_1000183C4(&qword_1002AF440);
    sub_100057C04();
    sub_1000B8EF0();
    sub_100024A88();
    sub_1001F7D58();
    v12 = *(v3 + 64);
    v14 = *(v3 + 56);
    v15 = v12;
    v16 = 6;
    sub_100040C5C(v14, v12);
    sub_10004FAD4();
    sub_1000B8EF0();
    sub_100024A88();
    sub_1001F7D58();
    sub_10003A36C(v14, v15);
    return (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000B8A54@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B860C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000B8A84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B8660(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B8ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B8658();
  *a1 = result;
  return result;
}

uint64_t sub_1000B8AF4(uint64_t a1)
{
  v2 = sub_1000B8B90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8B30(uint64_t a1)
{
  v2 = sub_1000B8B90();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000B8B90()
{
  result = qword_1002B2FB0;
  if (!qword_1002B2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FB0);
  }

  return result;
}

unint64_t sub_1000B8BE4()
{
  result = qword_1002AF450;
  if (!qword_1002AF450)
  {
    type metadata accessor for IAPTransaction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF450);
  }

  return result;
}

unint64_t sub_1000B8C3C()
{
  result = qword_1002B2FB8;
  if (!qword_1002B2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FB8);
  }

  return result;
}

unint64_t sub_1000B8C90()
{
  result = qword_1002B2FC0;
  if (!qword_1002B2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenericStoreKitResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B8DB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B8DEC()
{
  result = qword_1002B2FC8;
  if (!qword_1002B2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FC8);
  }

  return result;
}

unint64_t sub_1000B8E44()
{
  result = qword_1002B2FD0;
  if (!qword_1002B2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FD0);
  }

  return result;
}

unint64_t sub_1000B8E9C()
{
  result = qword_1002B2FD8;
  if (!qword_1002B2FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FD8);
  }

  return result;
}

uint64_t sub_1000B8F00(uint64_t a1)
{
  v1 = sub_1000BA63C(a1);
  switch(*(v6 + 32))
  {
    case 1:
      if (v3[2].i8[0] != 1)
      {
        return 0;
      }

      goto LABEL_15;
    case 2:
      if (v3[2].i8[0] != 2)
      {
        return 0;
      }

      goto LABEL_15;
    case 3:
      if (v1 | v4 | v5 | v2)
      {
        if (v3[2].i8[0] != 3)
        {
          return 0;
        }

        v7 = v3->i64[0] == 1 && (v3[1].i64[0] | v3[1].i64[1] | v3->i64[1]) == 0;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        if (v3[2].i8[0] != 3)
        {
          return 0;
        }

        v18 = vorrq_s8(*v3, v3[1]);
        if (vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    default:
      if (v3[2].i8[0])
      {
        return 0;
      }

LABEL_15:
      sub_1000BA5C4();
      if (v7 && v8 == v11 && v9 == v12 && v10 == v13)
      {
        return 1;
      }

      return sub_1001F7E18() & 1;
  }
}

uint64_t sub_1000B900C(uint64_t a1)
{
  v1 = sub_1000BA63C(a1);
  v7 = *(v6 + 32);
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      if ((*(v3 + 32) & 0xC0) != 0x40)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    v19[0] = v5;
    v19[1] = v4;
    v19[2] = v1;
    v19[3] = v2;
    v20 = v7 & 0x3F;
    if ((*(v3 + 32) & 0xC0) == 0x80)
    {
      v17 = sub_1000B8F00(v19);
      return v17 & 1;
    }

LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  if (*(v3 + 32) > 0x3Fu)
  {
    goto LABEL_19;
  }

LABEL_6:
  sub_1000BA5C4();
  v14 = v14 && v8 == v11;
  if (v14 && v9 == v12 && v10 == v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1001F7E18();
  }

  return v17 & 1;
}

void *sub_1000B90D8(uint64_t a1, unint64_t a2)
{
  v4 = 15;
  v94 = 15;
  v95 = _swiftEmptyArrayStorage;
  v93 = 15;
  swift_beginAccess();
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v92 = 4 * v7;
  sub_1000BA630();
  LOBYTE(v8) = 1;
  v9 = 15;
  while (1)
  {
    v10 = v9 >> 14;
    if (v9 >> 14 >= v92)
    {
      break;
    }

    sub_1000BA4C0();
    v11 = sub_1001F6D98();
    v13 = v12;
    if ((sub_1001F6A38() & 1) != 0 || (v11 == qword_1002B2FE0 ? (v14 = v13 == unk_1002B2FE8) : (v14 = 0), v14 || (sub_1000BA5E4() & 1) != 0 || (v11 == qword_1002B2FF0 ? (v15 = v13 == unk_1002B2FF8) : (v15 = 0), v15 || (sub_1000BA5E4() & 1) != 0 || (v11 == qword_1002B3000 ? (v16 = v13 == unk_1002B3008) : (v16 = 0), v16))))
    {

      v18 = v6;
    }

    else
    {
      v17 = sub_1000BA5E4();

      if (v17)
      {
        v18 = v6;
      }

      else
      {
        v18 = v9;
      }

      LOBYTE(v8) = v17 & v8;
    }

    sub_1000BA4C0();
    v19 = sub_1001F6C48();
    v20 = v19 >> 14;
    if (v5)
    {
      v21 = v18 >> 14;
      if (v5 == 1)
      {
        if (v8)
        {
          sub_1000BA4C0();
          v22 = sub_1001F6C48();
          v4 = v22;
          v93 = v22;
          v94 = v22;
          v5 = 1;
          v6 = v18;
          goto LABEL_110;
        }

        sub_1000BA4C0();
        sub_1001F6D98();
        sub_1000BA5FC();
        if (v14 && v26 == v27)
        {

          if (v92 <= v19 >> 14)
          {
            goto LABEL_101;
          }

          goto LABEL_96;
        }

        sub_1000BA5E4();
        sub_1000BA654();
        if ((v5 & 1) != 0 && v20 < v92)
        {
LABEL_96:
          sub_1000BA4F4();
          sub_1001F6D98();
          sub_1000BA5FC();
          if (v14 && v60 == v61)
          {
          }

          else
          {
            sub_1000BA5E4();
            sub_1000BA654();
            if ((v5 & 1) == 0)
            {
              goto LABEL_101;
            }
          }

          if (v21 < v4 >> 14)
          {
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
            JUMPOUT(0x1000B9B48);
          }

          sub_1000BA554();
          sub_1000BA534();
          sub_1000BA468();
          if ((sub_1000BA618() & 1) == 0)
          {
            sub_1000BA4B0();
            sub_1000327EC();
          }

          sub_1000BA524();
          if (v64)
          {
            sub_1000BA4D0();
          }

          sub_1000BA498();
          v70 = 64;
LABEL_127:
          *(v69 + 64) = v70;
          sub_1000BA66C();
          sub_1000BA4F4();
          v4 = sub_1001F6C48();
          v5 = 0;
          v6 = 0;
          v93 = v4;
          v94 = v4;
          LOBYTE(v8) = 1;
          sub_1000BA630();
          v9 = v71;
        }

        else
        {
LABEL_101:
          sub_1000BA4C0();
          v63 = sub_1001F6C48();
          sub_1000BA594(v63);
          v5 = 1;
          v6 = v18;
        }
      }

      else if (v8)
      {
        sub_1000BA4C0();
        v4 = sub_1001F6C48();
        v93 = v4;
        v94 = v4;
        LOBYTE(v8) = 1;
        v5 = 2;
        v6 = v18;
        v9 = v4;
      }

      else
      {
        v8 = v91;
        sub_1000BA4C0();
        v36 = sub_1001F6D98();
        v38 = v37;
        if (v91 == 5)
        {
          if ((sub_1001F6A38() & 1) != 0 || ((sub_1000BA694(), v14) ? (v40 = v38 == v39) : (v40 = 0), v40 || (sub_1000BA5E4() & 1) != 0 || ((sub_1000BA694(), v14) ? (v42 = v38 == v41) : (v42 = 0), v42 || (sub_1000BA5E4() & 1) != 0 || ((sub_1000BA694(), v14) ? (v44 = v38 == v43) : (v44 = 0), v44))))
          {

LABEL_119:
            sub_1000BA4C0();
            v68 = sub_1001F6C48();
            sub_1000BA594(v68);
            sub_1000BA630();
            goto LABEL_135;
          }

          v45 = sub_1000BA5E4();

          if (v45)
          {
            goto LABEL_119;
          }

          if (v21 < v4 >> 14)
          {
            goto LABEL_200;
          }

          sub_1000BA554();
          v47 = sub_1000BA534();
          v8 = v48;
          v50 = v49;
          v51 = v46;
          v52 = v47 >> 16;
          v53 = v48 >> 16;
          v54 = v49 == 26217 && v46 == 0xE200000000000000;
          if (v54 && !v52 && v53 == 2 || (sub_1000BA574() & 1) != 0)
          {

            v59 = 0;
          }

          else
          {
            v55 = v50 == 1718185061 && v51 == 0xE400000000000000;
            if (v55 && !v52 && v53 == 4 || (sub_1000BA574() & 1) != 0)
            {

              v59 = 1;
            }

            else
            {
              v56 = v50 == 1702063205 && v51 == 0xE400000000000000;
              if (v56 && !v52 && v53 == 4 || (sub_1000BA574() & 1) != 0)
              {

                v59 = 2;
              }

              else
              {
                v57 = v50 == 7499622 && v51 == 0xE300000000000000;
                if (v57 && !v52 && v53 == 3 || (sub_1000BA574() & 1) != 0)
                {

                  v59 = 3;
                }

                else
                {
                  v58 = sub_1000BA164(6581861, 0xE300000000000000, v47, v8, v50, v51);

                  if (v58)
                  {
                    v59 = 4;
                  }

                  else
                  {
                    v59 = 5;
                  }
                }
              }
            }
          }

          sub_1000BA4C0();
          v84 = sub_1001F6C48();
          sub_1000BA594(v84);
          v91 = 5;
          v5 = 2;
          v6 = v18;
          if (v59 != 5)
          {
            v94 = v9;
            if (v59 == 2)
            {
              LOBYTE(v8) = 0;
              v4 = v9;
              v85 = 2;
LABEL_192:
              v91 = v85;
              v6 = v18;
            }

            else
            {
              v6 = 0;
              LOBYTE(v8) = 1;
              v4 = v9;
              v91 = v59;
              if (v59 == 4)
              {
                LOBYTE(v8) = 0;
                v4 = v9;
                v85 = v59;
                goto LABEL_192;
              }
            }
          }
        }

        else
        {
          sub_1000BA694();
          if (v14 && v38 == v66)
          {

            if (v92 > v19 >> 14)
            {
              goto LABEL_129;
            }
          }

          else
          {
            sub_1000BA5E4();
            sub_1000BA654();
            if ((v36 & 1) != 0 && v20 < v92)
            {
LABEL_129:
              sub_1000BA4F4();
              sub_1001F6D98();
              v73 = v72;
              sub_1000BA5FC();
              if (v14 && v74 == v75)
              {

LABEL_145:
                switch(v91)
                {
                  case 1:
                    if (v21 < v4 >> 14)
                    {
                      goto LABEL_197;
                    }

                    sub_1000BA554();
                    sub_1000BA534();
                    sub_1000BA468();
                    if ((sub_1000BA618() & 1) == 0)
                    {
                      sub_1000BA4B0();
                      sub_1000327EC();
                    }

                    sub_1000BA524();
                    if (v64)
                    {
                      sub_1000BA4D0();
                    }

                    sub_1000BA498();
                    v70 = -127;
                    goto LABEL_127;
                  case 2:
                    sub_1000BA504();
                    if ((sub_1000BA618() & 1) == 0)
                    {
                      sub_1000BA4B0();
                      sub_1000327EC();
                      v8 = v88;
                    }

                    v82 = *(v8 + 16);
                    sub_1000BA688();
                    if (v64)
                    {
                      sub_10004B2F4(v83);
                      sub_1000327EC();
                      v8 = v89;
                    }

                    *(v8 + 16) = v73;
                    v69 = v8 + 40 * v82;
                    *(v69 + 32) = 0u;
                    *(v69 + 48) = 0u;
                    goto LABEL_162;
                  case 3:
                    if (v21 < v4 >> 14)
                    {
                      goto LABEL_199;
                    }

                    sub_1000BA554();
                    sub_1000BA534();
                    sub_1000BA468();
                    if ((sub_1000BA618() & 1) == 0)
                    {
                      sub_1000BA4B0();
                      sub_1000327EC();
                    }

                    sub_1000BA524();
                    if (v64)
                    {
                      sub_1000BA4D0();
                    }

                    sub_1000BA498();
                    v70 = -126;
                    goto LABEL_127;
                  case 4:
                    sub_1000BA504();
                    if ((sub_1000BA618() & 1) == 0)
                    {
                      sub_1000BA4B0();
                      sub_1000327EC();
                      v8 = v86;
                    }

                    v80 = *(v8 + 16);
                    sub_1000BA688();
                    if (v64)
                    {
                      sub_10004B2F4(v81);
                      sub_1000327EC();
                      v8 = v87;
                    }

                    *(v8 + 16) = v73;
                    v69 = v8 + 40 * v80;
                    *(v69 + 32) = 1;
                    *(v69 + 40) = 0;
                    *(v69 + 48) = 0;
                    *(v69 + 56) = 0;
LABEL_162:
                    v70 = -125;
                    goto LABEL_127;
                  default:
                    if (v21 < v4 >> 14)
                    {
                      goto LABEL_198;
                    }

                    sub_1000BA554();
                    sub_1000BA534();
                    sub_1000BA468();
                    if ((sub_1000BA618() & 1) == 0)
                    {
                      sub_1000BA4B0();
                      sub_1000327EC();
                    }

                    sub_1000BA524();
                    if (v64)
                    {
                      sub_1000BA4D0();
                    }

                    sub_1000BA498();
                    v70 = 0x80;
                    break;
                }

                goto LABEL_127;
              }

              sub_1000BA5E4();
              sub_1000BA654();
              if (v36)
              {
                goto LABEL_145;
              }
            }
          }

          sub_1000BA4C0();
          v77 = sub_1001F6C48();
          sub_1000BA594(v77);
LABEL_135:
          v5 = 2;
          v6 = v18;
        }
      }
    }

    else
    {
      sub_1000BA4C0();
      sub_1001F6D98();
      sub_1000BA5FC();
      if (!v14 || v23 != v24)
      {
        goto LABEL_52;
      }

      if (v92 <= v19 >> 14)
      {
        goto LABEL_53;
      }

      sub_1000BA4F4();
      sub_1001F6D98();
      sub_1000BA5FC();
      v31 = v14 && v29 == v30;
      v32 = v4 >> 14;
      if (v31)
      {

        if (v10 != v4 >> 14)
        {
          if (v10 < v32)
          {
            goto LABEL_195;
          }

          sub_1000BA6A0();
          sub_1000BA468();
          if ((sub_1000BA618() & 1) == 0)
          {
            sub_1000BA4B0();
            sub_1000327EC();
          }

          sub_1000BA524();
          if (v64)
          {
            sub_1000BA4D0();
          }

          sub_1000BA498();
          *(v65 + 64) = 0;
          sub_1000BA66C();
        }

        sub_1000BA4F4();
        v4 = sub_1001F6C48();
        v6 = 0;
        v93 = v4;
        v94 = v4;
        v5 = 1;
        sub_1000BA630();
LABEL_110:
        LOBYTE(v8) = 1;
        v9 = v22;
      }

      else
      {
        sub_1000BA5E4();
        sub_1000BA654();
        sub_1000BA4F4();
        sub_1001F6D98();
        sub_1000BA5FC();
        if (v14 && v33 == v34)
        {

          if (v10 != v4 >> 14)
          {
            if (v10 < v32)
            {
              goto LABEL_196;
            }

            sub_1000BA6A0();
            sub_1000BA468();
            if ((sub_1000BA618() & 1) == 0)
            {
              sub_1000BA4B0();
              sub_1000327EC();
            }

            sub_1000BA524();
            if (v64)
            {
              sub_1000BA4D0();
            }

            sub_1000BA498();
            *(v78 + 64) = 0;
            sub_1000BA66C();
          }

          sub_1000BA4F4();
          v4 = sub_1001F6C48();
          v6 = 0;
          v93 = v4;
          v94 = v4;
          LOBYTE(v8) = 1;
          sub_1000BA630();
          v5 = 2;
          v9 = v79;
        }

        else
        {
LABEL_52:
          sub_1000BA5E4();
          sub_1000BA654();
LABEL_53:
          sub_1000BA4C0();
          v9 = sub_1001F6C48();
          v5 = 0;
          v93 = v9;
          v6 = v18;
        }
      }
    }
  }

  sub_1000B9B5C(&v93, &v94, &v95);
  swift_beginAccess();
  return v95;
}