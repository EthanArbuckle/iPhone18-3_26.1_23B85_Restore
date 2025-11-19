uint64_t sub_100CA0028(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *a2;
    *&v225 = *a1;
    BYTE8(v225) = v4;
    if (v5 == 255)
    {
      goto LABEL_13;
    }

    *&v390[0] = v6;
    BYTE8(v390[0]) = v5 & 1;
    sub_100788B60();
    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v294 = *(a1 + 48);
  v295 = v8;
  v9 = *(a1 + 64);
  v296 = *(a1 + 80);
  v10 = *(a1 + 32);
  v293[0] = *(a1 + 16);
  v293[1] = v10;
  v11 = *(a2 + 4);
  v291[2] = *(a2 + 3);
  v291[3] = v11;
  v291[4] = *(a2 + 5);
  v12 = *(a2 + 2);
  v291[0] = *(a2 + 1);
  v291[1] = v12;
  v378 = v294;
  v379 = v9;
  v380 = *(a1 + 80);
  v297 = *(a1 + 96);
  v13 = a2[12];
  v292 = v13;
  v377 = v7;
  v376 = v293[0];
  v14 = v297;
  if (!v297)
  {
    if (!v13)
    {
      v28 = *(a1 + 64);
      v227 = *(a1 + 48);
      v228 = v28;
      v229 = *(a1 + 80);
      v29 = *(a1 + 32);
      v225 = *(a1 + 16);
      v226 = v29;
      v230 = 0;
      sub_100CA4B64(v293, v390);
      sub_100CA4B64(v291, v390);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_16;
    }

LABEL_11:
    v20 = *(a1 + 64);
    v227 = *(a1 + 48);
    v228 = v20;
    v229 = *(a1 + 80);
    v21 = *(a1 + 32);
    v225 = *(a1 + 16);
    v226 = v21;
    v22 = *(a2 + 1);
    v232 = *(a2 + 2);
    v23 = *(a2 + 4);
    v233 = *(a2 + 3);
    v234 = v23;
    v235 = *(a2 + 5);
    v231 = v22;
    v230 = v297;
    v236 = v13;
    sub_100CA4B64(v293, v390);
    v24 = v291;
    v25 = v390;
    goto LABEL_12;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v15 = *(a2 + 4);
  v384 = *(a2 + 3);
  v385 = v15;
  v386 = *(a2 + 5);
  v16 = *(a2 + 1);
  v383 = *(a2 + 2);
  v382 = v16;
  v387 = v13;
  v391 = v13;
  v390[3] = v15;
  v390[4] = v386;
  v390[1] = v383;
  v390[2] = v384;
  v390[0] = v16;
  v17 = *(a1 + 64);
  v388[2] = *(a1 + 48);
  v388[3] = v17;
  v388[4] = *(a1 + 80);
  v18 = *(a1 + 32);
  v388[0] = *(a1 + 16);
  v388[1] = v18;
  v389 = v297;
  sub_100CA4B64(v293, &v225);
  sub_100CA4B64(v291, &v225);
  v19 = sub_1008AFE44(v388, v390);
  sub_10000CAAC(&v382, &qword_101A19F78);
  v227 = v378;
  v228 = v379;
  v229 = v380;
  v225 = v376;
  v226 = v377;
  v230 = v14;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v30 = *(a2 + 108);
  if (*(a1 + 108))
  {
    if (!*(a2 + 108))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 104) != *(a2 + 26))
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_13;
    }
  }

  v31 = *(a2 + 116);
  if (*(a1 + 116))
  {
    if (!*(a2 + 116))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 28))
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_13;
    }
  }

  v32 = *(a1 + 168);
  v289[2] = *(a1 + 152);
  v289[3] = v32;
  v289[4] = *(a1 + 184);
  v290 = *(a1 + 200);
  v33 = *(a1 + 136);
  v289[0] = *(a1 + 120);
  v289[1] = v33;
  v34 = *(a2 + 21);
  v287[2] = *(a2 + 19);
  v287[3] = v34;
  v287[4] = *(a2 + 23);
  v35 = a2[25];
  v288 = v35;
  v36 = *(a2 + 17);
  v287[0] = *(a2 + 15);
  v287[1] = v36;
  v37 = *(a1 + 136);
  v38 = *(a1 + 168);
  v366 = *(a1 + 152);
  v367 = v38;
  v368 = *(a1 + 184);
  v39 = *(a1 + 120);
  v365 = v37;
  v364 = v39;
  v40 = v290;
  if (!v290)
  {
    if (!v35)
    {
      v50 = *(a1 + 136);
      v51 = *(a1 + 168);
      v227 = *(a1 + 152);
      v228 = v51;
      v229 = *(a1 + 184);
      v225 = *(a1 + 120);
      v226 = v50;
      v230 = 0;
      sub_100CA4B64(v289, &v382);
      sub_100CA4B64(v287, &v382);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_35;
    }

LABEL_33:
    v48 = *(a1 + 136);
    v49 = *(a1 + 168);
    v227 = *(a1 + 152);
    v228 = v49;
    v229 = *(a1 + 184);
    v225 = *(a1 + 120);
    v226 = v48;
    v232 = *(a2 + 17);
    v233 = *(a2 + 19);
    v234 = *(a2 + 21);
    v235 = *(a2 + 23);
    v231 = *(a2 + 15);
    v230 = v290;
    v236 = v35;
    sub_100CA4B64(v289, &v382);
    v24 = v287;
    v25 = &v382;
    goto LABEL_12;
  }

  if (!v35)
  {
    goto LABEL_33;
  }

  v41 = *(a2 + 17);
  v42 = *(a2 + 21);
  v372 = *(a2 + 19);
  v373 = v42;
  v374 = *(a2 + 23);
  v43 = *(a2 + 15);
  v371 = v41;
  v370 = v43;
  v375 = v35;
  v387 = v35;
  v386 = v374;
  v384 = v372;
  v385 = v42;
  v382 = v43;
  v383 = v41;
  v44 = *(a1 + 136);
  v45 = *(a1 + 168);
  v378 = *(a1 + 152);
  v379 = v45;
  v380 = *(a1 + 184);
  v46 = *(a1 + 120);
  v377 = v44;
  v376 = v46;
  v381 = v290;
  sub_100CA4B64(v289, &v225);
  sub_100CA4B64(v287, &v225);
  v47 = sub_1008AFE44(&v376, &v382);
  sub_10000CAAC(&v370, &qword_101A19F78);
  v227 = v366;
  v228 = v367;
  v229 = v368;
  v225 = v364;
  v226 = v365;
  v230 = v40;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v47 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_35:
  v52 = *(a2 + 212);
  if (*(a1 + 212))
  {
    if (!*(a2 + 212))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 208) != *(a2 + 52))
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_13;
    }
  }

  v53 = *(a2 + 220);
  if (*(a1 + 220))
  {
    if (!*(a2 + 220))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 216) != *(a2 + 54))
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_13;
    }
  }

  v54 = *(a1 + 240);
  v55 = *(a1 + 272);
  v283 = *(a1 + 256);
  v284 = v55;
  v56 = *(a1 + 272);
  v285 = *(a1 + 288);
  v57 = *(a1 + 240);
  v282[0] = *(a1 + 224);
  v282[1] = v57;
  v58 = *(a2 + 17);
  v280[2] = *(a2 + 16);
  v280[3] = v58;
  v280[4] = *(a2 + 18);
  v59 = *(a2 + 15);
  v280[0] = *(a2 + 14);
  v280[1] = v59;
  v354 = v283;
  v355 = v56;
  v356 = *(a1 + 288);
  v286 = *(a1 + 304);
  v60 = a2[38];
  v281 = v60;
  v353 = v54;
  v352 = v282[0];
  v61 = v286;
  if (!v286)
  {
    if (!v60)
    {
      v71 = *(a1 + 272);
      v227 = *(a1 + 256);
      v228 = v71;
      v229 = *(a1 + 288);
      v72 = *(a1 + 240);
      v225 = *(a1 + 224);
      v226 = v72;
      v230 = 0;
      sub_100CA4B64(v282, &v370);
      sub_100CA4B64(v280, &v370);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_54;
    }

LABEL_52:
    v67 = *(a1 + 272);
    v227 = *(a1 + 256);
    v228 = v67;
    v229 = *(a1 + 288);
    v68 = *(a1 + 240);
    v225 = *(a1 + 224);
    v226 = v68;
    v69 = *(a2 + 14);
    v232 = *(a2 + 15);
    v70 = *(a2 + 17);
    v233 = *(a2 + 16);
    v234 = v70;
    v235 = *(a2 + 18);
    v231 = v69;
    v230 = v286;
    v236 = v60;
    sub_100CA4B64(v282, &v370);
    v24 = v280;
    v25 = &v370;
    goto LABEL_12;
  }

  if (!v60)
  {
    goto LABEL_52;
  }

  v62 = *(a2 + 17);
  v360 = *(a2 + 16);
  v361 = v62;
  v362 = *(a2 + 18);
  v63 = *(a2 + 14);
  v359 = *(a2 + 15);
  v358 = v63;
  v363 = v60;
  v375 = v60;
  v374 = v362;
  v372 = v360;
  v373 = v62;
  v370 = v63;
  v371 = v359;
  v64 = *(a1 + 272);
  v366 = *(a1 + 256);
  v367 = v64;
  v368 = *(a1 + 288);
  v65 = *(a1 + 224);
  v365 = *(a1 + 240);
  v364 = v65;
  v369 = v286;
  sub_100CA4B64(v282, &v225);
  sub_100CA4B64(v280, &v225);
  v66 = sub_1008AFE44(&v364, &v370);
  sub_10000CAAC(&v358, &qword_101A19F78);
  v227 = v354;
  v228 = v355;
  v229 = v356;
  v225 = v352;
  v226 = v353;
  v230 = v61;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v66 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_54:
  v73 = *(a2 + 316);
  if (*(a1 + 316))
  {
    if (!*(a2 + 316))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 312) != *(a2 + 78))
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_13;
    }
  }

  v74 = *(a2 + 324);
  if (*(a1 + 324))
  {
    if (!*(a2 + 324))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 320) != *(a2 + 80))
    {
      v74 = 1;
    }

    if (v74)
    {
      goto LABEL_13;
    }
  }

  v75 = (a1 + 328);
  v76 = *(a1 + 344);
  v77 = *(a1 + 376);
  v276 = *(a1 + 360);
  v277 = v77;
  v78 = *(a1 + 376);
  v278 = *(a1 + 392);
  v79 = *(a1 + 344);
  v275[0] = *(a1 + 328);
  v275[1] = v79;
  v80 = (a2 + 41);
  v81 = *(a2 + 47);
  v273[2] = *(a2 + 45);
  v273[3] = v81;
  v273[4] = *(a2 + 49);
  v82 = *(a2 + 43);
  v273[0] = *(a2 + 41);
  v273[1] = v82;
  v342 = v276;
  v343 = v78;
  v344 = *(a1 + 392);
  v279 = *(a1 + 408);
  v83 = a2[51];
  v274 = v83;
  v341 = v76;
  v340 = v275[0];
  v84 = v279;
  if (!v279)
  {
    if (!v83)
    {
      v94 = *(a1 + 376);
      v227 = *(a1 + 360);
      v228 = v94;
      v229 = *(a1 + 392);
      v95 = *(a1 + 344);
      v225 = *v75;
      v226 = v95;
      v230 = 0;
      sub_100CA4B64(v275, &v358);
      sub_100CA4B64(v273, &v358);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_73;
    }

LABEL_71:
    v90 = *(a1 + 376);
    v227 = *(a1 + 360);
    v228 = v90;
    v229 = *(a1 + 392);
    v91 = *(a1 + 344);
    v225 = *v75;
    v226 = v91;
    v92 = *v80;
    v232 = *(a2 + 43);
    v93 = *(a2 + 47);
    v233 = *(a2 + 45);
    v234 = v93;
    v235 = *(a2 + 49);
    v231 = v92;
    v230 = v279;
    v236 = v83;
    sub_100CA4B64(v275, &v358);
    v24 = v273;
    v25 = &v358;
    goto LABEL_12;
  }

  if (!v83)
  {
    goto LABEL_71;
  }

  v85 = *(a2 + 47);
  v348 = *(a2 + 45);
  v349 = v85;
  v350 = *(a2 + 49);
  v86 = *v80;
  v347 = *(a2 + 43);
  v346 = v86;
  v351 = v83;
  v363 = v83;
  v362 = v350;
  v360 = v348;
  v361 = v85;
  v358 = v86;
  v359 = v347;
  v87 = *(a1 + 376);
  v354 = *(a1 + 360);
  v355 = v87;
  v356 = *(a1 + 392);
  v88 = *v75;
  v353 = *(a1 + 344);
  v352 = v88;
  v357 = v279;
  sub_100CA4B64(v275, &v225);
  sub_100CA4B64(v273, &v225);
  v89 = sub_1008AFE44(&v352, &v358);
  sub_10000CAAC(&v346, &qword_101A19F78);
  v227 = v342;
  v228 = v343;
  v229 = v344;
  v225 = v340;
  v226 = v341;
  v230 = v84;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v89 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_73:
  v96 = *(a2 + 420);
  if (*(a1 + 420))
  {
    if (!*(a2 + 420))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 416) != *(a2 + 104))
    {
      v96 = 1;
    }

    if (v96)
    {
      goto LABEL_13;
    }
  }

  v97 = *(a2 + 428);
  if (*(a1 + 428))
  {
    if (!*(a2 + 428))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 424) != *(a2 + 106))
    {
      v97 = 1;
    }

    if (v97)
    {
      goto LABEL_13;
    }
  }

  v98 = *(a1 + 448);
  v99 = *(a1 + 480);
  v269 = *(a1 + 464);
  v270 = v99;
  v100 = *(a1 + 480);
  v271 = *(a1 + 496);
  v101 = *(a1 + 448);
  v268[0] = *(a1 + 432);
  v268[1] = v101;
  v102 = *(a2 + 30);
  v266[2] = *(a2 + 29);
  v266[3] = v102;
  v266[4] = *(a2 + 31);
  v103 = *(a2 + 28);
  v266[0] = *(a2 + 27);
  v266[1] = v103;
  v330 = v269;
  v331 = v100;
  v332 = *(a1 + 496);
  v272 = *(a1 + 512);
  v104 = a2[64];
  v267 = v104;
  v329 = v98;
  v328 = v268[0];
  v105 = v272;
  if (!v272)
  {
    if (!v104)
    {
      v115 = *(a1 + 480);
      v227 = *(a1 + 464);
      v228 = v115;
      v229 = *(a1 + 496);
      v116 = *(a1 + 448);
      v225 = *(a1 + 432);
      v226 = v116;
      v230 = 0;
      sub_100CA4B64(v268, &v346);
      sub_100CA4B64(v266, &v346);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_92;
    }

LABEL_90:
    v111 = *(a1 + 480);
    v227 = *(a1 + 464);
    v228 = v111;
    v229 = *(a1 + 496);
    v112 = *(a1 + 448);
    v225 = *(a1 + 432);
    v226 = v112;
    v113 = *(a2 + 27);
    v232 = *(a2 + 28);
    v114 = *(a2 + 30);
    v233 = *(a2 + 29);
    v234 = v114;
    v235 = *(a2 + 31);
    v231 = v113;
    v230 = v272;
    v236 = v104;
    sub_100CA4B64(v268, &v346);
    v24 = v266;
    v25 = &v346;
    goto LABEL_12;
  }

  if (!v104)
  {
    goto LABEL_90;
  }

  v106 = *(a2 + 30);
  v336 = *(a2 + 29);
  v337 = v106;
  v338 = *(a2 + 31);
  v107 = *(a2 + 27);
  v335 = *(a2 + 28);
  v334 = v107;
  v339 = v104;
  v351 = v104;
  v350 = v338;
  v348 = v336;
  v349 = v106;
  v346 = v107;
  v347 = v335;
  v108 = *(a1 + 480);
  v342 = *(a1 + 464);
  v343 = v108;
  v344 = *(a1 + 496);
  v109 = *(a1 + 432);
  v341 = *(a1 + 448);
  v340 = v109;
  v345 = v272;
  sub_100CA4B64(v268, &v225);
  sub_100CA4B64(v266, &v225);
  v110 = sub_1008AFE44(&v340, &v346);
  sub_10000CAAC(&v334, &qword_101A19F78);
  v227 = v330;
  v228 = v331;
  v229 = v332;
  v225 = v328;
  v226 = v329;
  v230 = v105;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v110 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_92:
  v117 = *(a2 + 524);
  if (*(a1 + 524))
  {
    if (!*(a2 + 524))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 520) != *(a2 + 130))
    {
      v117 = 1;
    }

    if (v117)
    {
      goto LABEL_13;
    }
  }

  v118 = *(a2 + 532);
  if (*(a1 + 532))
  {
    if (!*(a2 + 532))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 528) != *(a2 + 132))
    {
      v118 = 1;
    }

    if (v118)
    {
      goto LABEL_13;
    }
  }

  v119 = (a1 + 536);
  v120 = *(a1 + 552);
  v121 = *(a1 + 584);
  v262 = *(a1 + 568);
  v263 = v121;
  v122 = *(a1 + 584);
  v264 = *(a1 + 600);
  v123 = *(a1 + 552);
  v261[0] = *(a1 + 536);
  v261[1] = v123;
  v124 = (a2 + 67);
  v125 = *(a2 + 73);
  v259[2] = *(a2 + 71);
  v259[3] = v125;
  v259[4] = *(a2 + 75);
  v126 = *(a2 + 69);
  v259[0] = *(a2 + 67);
  v259[1] = v126;
  v318 = v262;
  v319 = v122;
  v320 = *(a1 + 600);
  v265 = *(a1 + 616);
  v127 = a2[77];
  v260 = v127;
  v317 = v120;
  v316 = v261[0];
  v128 = v265;
  if (!v265)
  {
    if (!v127)
    {
      v138 = *(a1 + 584);
      v227 = *(a1 + 568);
      v228 = v138;
      v229 = *(a1 + 600);
      v139 = *(a1 + 552);
      v225 = *v119;
      v226 = v139;
      v230 = 0;
      sub_100CA4B64(v261, &v334);
      sub_100CA4B64(v259, &v334);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_111;
    }

LABEL_109:
    v134 = *(a1 + 584);
    v227 = *(a1 + 568);
    v228 = v134;
    v229 = *(a1 + 600);
    v135 = *(a1 + 552);
    v225 = *v119;
    v226 = v135;
    v136 = *v124;
    v232 = *(a2 + 69);
    v137 = *(a2 + 73);
    v233 = *(a2 + 71);
    v234 = v137;
    v235 = *(a2 + 75);
    v231 = v136;
    v230 = v265;
    v236 = v127;
    sub_100CA4B64(v261, &v334);
    v24 = v259;
    v25 = &v334;
    goto LABEL_12;
  }

  if (!v127)
  {
    goto LABEL_109;
  }

  v129 = *(a2 + 73);
  v324 = *(a2 + 71);
  v325 = v129;
  v326 = *(a2 + 75);
  v130 = *v124;
  v323 = *(a2 + 69);
  v322 = v130;
  v327 = v127;
  v339 = v127;
  v338 = v326;
  v336 = v324;
  v337 = v129;
  v334 = v130;
  v335 = v323;
  v131 = *(a1 + 584);
  v330 = *(a1 + 568);
  v331 = v131;
  v332 = *(a1 + 600);
  v132 = *v119;
  v329 = *(a1 + 552);
  v328 = v132;
  v333 = v265;
  sub_100CA4B64(v261, &v225);
  sub_100CA4B64(v259, &v225);
  v133 = sub_1008AFE44(&v328, &v334);
  sub_10000CAAC(&v322, &qword_101A19F78);
  v227 = v318;
  v228 = v319;
  v229 = v320;
  v225 = v316;
  v226 = v317;
  v230 = v128;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v133 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_111:
  v140 = *(a2 + 628);
  if (*(a1 + 628))
  {
    if (!*(a2 + 628))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 624) != *(a2 + 156))
    {
      v140 = 1;
    }

    if (v140)
    {
      goto LABEL_13;
    }
  }

  v141 = *(a2 + 636);
  if (*(a1 + 636))
  {
    if (!*(a2 + 636))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 632) != *(a2 + 158))
    {
      v141 = 1;
    }

    if (v141)
    {
      goto LABEL_13;
    }
  }

  v142 = *(a1 + 656);
  v143 = *(a1 + 688);
  v255 = *(a1 + 672);
  v256 = v143;
  v144 = *(a1 + 688);
  v257 = *(a1 + 704);
  v145 = *(a1 + 656);
  v254[0] = *(a1 + 640);
  v254[1] = v145;
  v146 = *(a2 + 43);
  v252[2] = *(a2 + 42);
  v252[3] = v146;
  v252[4] = *(a2 + 44);
  v147 = *(a2 + 41);
  v252[0] = *(a2 + 40);
  v252[1] = v147;
  v306 = v255;
  v307 = v144;
  v308 = *(a1 + 704);
  v258 = *(a1 + 720);
  v148 = a2[90];
  v253 = v148;
  v305 = v142;
  v304 = v254[0];
  v149 = v258;
  if (!v258)
  {
    if (!v148)
    {
      v159 = *(a1 + 688);
      v227 = *(a1 + 672);
      v228 = v159;
      v229 = *(a1 + 704);
      v160 = *(a1 + 656);
      v225 = *(a1 + 640);
      v226 = v160;
      v230 = 0;
      sub_100CA4B64(v254, &v322);
      sub_100CA4B64(v252, &v322);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_130;
    }

LABEL_128:
    v155 = *(a1 + 688);
    v227 = *(a1 + 672);
    v228 = v155;
    v229 = *(a1 + 704);
    v156 = *(a1 + 656);
    v225 = *(a1 + 640);
    v226 = v156;
    v157 = *(a2 + 40);
    v232 = *(a2 + 41);
    v158 = *(a2 + 43);
    v233 = *(a2 + 42);
    v234 = v158;
    v235 = *(a2 + 44);
    v231 = v157;
    v230 = v258;
    v236 = v148;
    sub_100CA4B64(v254, &v322);
    v24 = v252;
    v25 = &v322;
    goto LABEL_12;
  }

  if (!v148)
  {
    goto LABEL_128;
  }

  v150 = *(a2 + 43);
  v312 = *(a2 + 42);
  v313 = v150;
  v314 = *(a2 + 44);
  v151 = *(a2 + 40);
  v311 = *(a2 + 41);
  v310 = v151;
  v315 = v148;
  v327 = v148;
  v326 = v314;
  v324 = v312;
  v325 = v150;
  v322 = v151;
  v323 = v311;
  v152 = *(a1 + 688);
  v318 = *(a1 + 672);
  v319 = v152;
  v320 = *(a1 + 704);
  v153 = *(a1 + 640);
  v317 = *(a1 + 656);
  v316 = v153;
  v321 = v258;
  sub_100CA4B64(v254, &v225);
  sub_100CA4B64(v252, &v225);
  v154 = sub_1008AFE44(&v316, &v322);
  sub_10000CAAC(&v310, &qword_101A19F78);
  v227 = v306;
  v228 = v307;
  v229 = v308;
  v225 = v304;
  v226 = v305;
  v230 = v149;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v154 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_130:
  v161 = *(a2 + 732);
  if (*(a1 + 732))
  {
    if (!*(a2 + 732))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 728) != *(a2 + 182))
    {
      v161 = 1;
    }

    if (v161)
    {
      goto LABEL_13;
    }
  }

  v162 = *(a2 + 740);
  if (*(a1 + 740))
  {
    if (!*(a2 + 740))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 736) != *(a2 + 184))
    {
      v162 = 1;
    }

    if (v162)
    {
      goto LABEL_13;
    }
  }

  v163 = (a1 + 744);
  v164 = *(a1 + 760);
  v165 = *(a1 + 792);
  v248 = *(a1 + 776);
  v249 = v165;
  v166 = *(a1 + 792);
  v250 = *(a1 + 808);
  v167 = *(a1 + 760);
  v247[0] = *(a1 + 744);
  v247[1] = v167;
  v168 = (a2 + 93);
  v169 = *(a2 + 99);
  v245[2] = *(a2 + 97);
  v245[3] = v169;
  v245[4] = *(a2 + 101);
  v170 = *(a2 + 95);
  v245[0] = *(a2 + 93);
  v245[1] = v170;
  v241 = v248;
  v242 = v166;
  v243 = *(a1 + 808);
  v251 = *(a1 + 824);
  v171 = a2[103];
  v246 = v171;
  v239 = v247[0];
  v240 = v164;
  v172 = v251;
  if (!v251)
  {
    if (!v171)
    {
      v182 = *(a1 + 792);
      v227 = *(a1 + 776);
      v228 = v182;
      v229 = *(a1 + 808);
      v183 = *(a1 + 760);
      v225 = *v163;
      v226 = v183;
      v230 = 0;
      sub_100CA4B64(v247, &v310);
      sub_100CA4B64(v245, &v310);
      sub_10000CAAC(&v225, &qword_101A19F78);
      goto LABEL_149;
    }

LABEL_147:
    v178 = *(a1 + 792);
    v227 = *(a1 + 776);
    v228 = v178;
    v229 = *(a1 + 808);
    v179 = *(a1 + 760);
    v225 = *v163;
    v226 = v179;
    v180 = *v168;
    v232 = *(a2 + 95);
    v181 = *(a2 + 99);
    v233 = *(a2 + 97);
    v234 = v181;
    v235 = *(a2 + 101);
    v231 = v180;
    v230 = v251;
    v236 = v171;
    sub_100CA4B64(v247, &v310);
    v24 = v245;
    v25 = &v310;
    goto LABEL_12;
  }

  if (!v171)
  {
    goto LABEL_147;
  }

  v173 = *(a2 + 99);
  v300 = *(a2 + 97);
  v301 = v173;
  v302 = *(a2 + 101);
  v174 = *v168;
  v299 = *(a2 + 95);
  v298 = v174;
  v303 = v171;
  v315 = v171;
  v314 = v302;
  v312 = v300;
  v313 = v173;
  v310 = v174;
  v311 = v299;
  v175 = *(a1 + 792);
  v306 = *(a1 + 776);
  v307 = v175;
  v308 = *(a1 + 808);
  v176 = *v163;
  v305 = *(a1 + 760);
  v304 = v176;
  v309 = v251;
  sub_100CA4B64(v247, &v225);
  sub_100CA4B64(v245, &v225);
  v177 = sub_1008AFE44(&v304, &v310);
  sub_10000CAAC(&v298, &qword_101A19F78);
  v227 = v241;
  v228 = v242;
  v229 = v243;
  v225 = v239;
  v226 = v240;
  v230 = v172;
  sub_10000CAAC(&v225, &qword_101A19F78);
  if ((v177 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_149:
  v184 = *(a2 + 836);
  if (*(a1 + 836))
  {
    if (!*(a2 + 836))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 832) != *(a2 + 208))
    {
      v184 = 1;
    }

    if (v184)
    {
      goto LABEL_13;
    }
  }

  v185 = *(a2 + 844);
  if (*(a1 + 844))
  {
    if (!*(a2 + 844))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 840) != *(a2 + 210))
    {
      v185 = 1;
    }

    if (v185)
    {
      goto LABEL_13;
    }
  }

  v186 = *(a1 + 845);
  v187 = *(a2 + 845);
  if (v186 == 2)
  {
    if (v187 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_166;
  }

  v26 = 0;
  if (v187 != 2 && ((v187 ^ v186) & 1) == 0)
  {
LABEL_166:
    v188 = *(a1 + 856);
    v189 = *(a2 + 856);
    if (v188 == 255)
    {
      if (v189 != 255)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v190 = a2[106];
      *&v225 = *(a1 + 848);
      BYTE8(v225) = v188;
      if (v189 == 255)
      {
        goto LABEL_13;
      }

      *&v298 = v190;
      BYTE8(v298) = v189 & 1;
      sub_1005E0F68();
      if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v191 = *(a1 + 880);
    v192 = *(a1 + 912);
    v241 = *(a1 + 896);
    v242 = v192;
    v193 = *(a1 + 912);
    v243 = *(a1 + 928);
    v194 = *(a1 + 880);
    v239 = *(a1 + 864);
    v240 = v194;
    v195 = *(a2 + 57);
    v237[2] = *(a2 + 56);
    v237[3] = v195;
    v237[4] = *(a2 + 58);
    v196 = *(a2 + 55);
    v237[0] = *(a2 + 54);
    v237[1] = v196;
    v222 = v241;
    v223 = v193;
    v224 = *(a1 + 928);
    v244 = *(a1 + 944);
    v197 = a2[118];
    v238 = v197;
    v220 = v239;
    v221 = v191;
    v198 = v244;
    if (v244)
    {
      if (v197)
      {
        v199 = *(a2 + 57);
        v214 = *(a2 + 56);
        v215 = v199;
        v216 = *(a2 + 58);
        v200 = *(a2 + 55);
        v213[0] = *(a2 + 54);
        v213[1] = v200;
        v217 = v197;
        v230 = v197;
        v228 = v199;
        v229 = v216;
        v226 = v200;
        v227 = v214;
        v225 = v213[0];
        v201 = *(a1 + 912);
        v300 = *(a1 + 896);
        v301 = v201;
        v302 = *(a1 + 928);
        v202 = *(a1 + 864);
        v299 = *(a1 + 880);
        v298 = v202;
        v303 = v244;
        sub_100CA4B64(&v239, v218);
        sub_100CA4B64(v237, v218);
        v203 = sub_1008AFE44(&v298, &v225);
        sub_10000CAAC(v213, &qword_101A19F78);
        v218[2] = v222;
        v218[3] = v223;
        v218[4] = v224;
        v218[0] = v220;
        v218[1] = v221;
        v219 = v198;
        sub_10000CAAC(v218, &qword_101A19F78);
        if ((v203 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_178;
      }
    }

    else if (!v197)
    {
      v208 = *(a1 + 912);
      v227 = *(a1 + 896);
      v228 = v208;
      v229 = *(a1 + 928);
      v209 = *(a1 + 880);
      v225 = *(a1 + 864);
      v226 = v209;
      v230 = 0;
      sub_100CA4B64(&v239, &v298);
      sub_100CA4B64(v237, &v298);
      sub_10000CAAC(&v225, &qword_101A19F78);
LABEL_178:
      v210 = *(a2 + 956);
      if (*(a1 + 956))
      {
        if (!*(a2 + 956))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (*(a1 + 952) != *(a2 + 238))
        {
          v210 = 1;
        }

        if (v210)
        {
          goto LABEL_13;
        }
      }

      v211 = *(a2 + 964);
      if (*(a1 + 964))
      {
        if (!*(a2 + 964))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (*(a1 + 960) != *(a2 + 240))
        {
          v211 = 1;
        }

        if (v211)
        {
          goto LABEL_13;
        }
      }

      v212 = *(a2 + 972);
      if ((*(a1 + 972) & 1) == 0)
      {
        if (*(a1 + 968) != *(a2 + 242))
        {
          v212 = 1;
        }

        if (v212)
        {
          goto LABEL_13;
        }

LABEL_196:
        v26 = sub_100B3216C(*(a1 + 976), a2[122]);
        return v26 & 1;
      }

      if (*(a2 + 972))
      {
        goto LABEL_196;
      }

LABEL_13:
      v26 = 0;
      return v26 & 1;
    }

    v204 = *(a1 + 912);
    v227 = *(a1 + 896);
    v228 = v204;
    v229 = *(a1 + 928);
    v205 = *(a1 + 880);
    v225 = *(a1 + 864);
    v226 = v205;
    v206 = *(a2 + 54);
    v232 = *(a2 + 55);
    v207 = *(a2 + 57);
    v233 = *(a2 + 56);
    v234 = v207;
    v235 = *(a2 + 58);
    v231 = v206;
    v230 = v244;
    v236 = v197;
    sub_100CA4B64(&v239, &v298);
    v24 = v237;
    v25 = &v298;
LABEL_12:
    sub_100CA4B64(v24, v25);
    sub_10000CAAC(&v225, &qword_101A19F80);
    goto LABEL_13;
  }

  return v26 & 1;
}

uint64_t sub_100CA16D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = sub_100788890([a1 mostRecentRestorableToolType]);
  sub_1008B2170([a1 colorForToolType:0], v125);
  *(&v124[2] + 7) = v125[2];
  *(&v124[3] + 7) = v125[3];
  *(&v124[4] + 7) = v125[4];
  *(&v124[5] + 7) = v126;
  *(v124 + 7) = v125[0];
  *(&v124[1] + 7) = v125[1];
  [a1 opacityForToolType:0];
  *&v4 = v4;
  v94 = LODWORD(v4);
  v123 = 0;
  [a1 strokeWidthForToolType:0];
  *&v5 = v5;
  v93 = LODWORD(v5);
  v122 = 0;
  sub_1008B2170([a1 colorForToolType:1], v127);
  *&v121[35] = v127[2];
  *&v121[51] = v127[3];
  *&v121[67] = v127[4];
  *&v121[83] = v128;
  *&v121[3] = v127[0];
  *&v121[19] = v127[1];
  [a1 opacityForToolType:1];
  *&v6 = v6;
  v92 = LODWORD(v6);
  v120 = 0;
  [a1 strokeWidthForToolType:1];
  *&v7 = v7;
  v91 = LODWORD(v7);
  v119 = 0;
  sub_1008B2170([a1 colorForToolType:2], v129);
  *(&v118[2] + 3) = v129[2];
  *(&v118[3] + 3) = v129[3];
  *(&v118[4] + 3) = v129[4];
  *(&v118[5] + 3) = v130;
  *(v118 + 3) = v129[0];
  *(&v118[1] + 3) = v129[1];
  [a1 opacityForToolType:2];
  *&v8 = v8;
  v90 = LODWORD(v8);
  v117 = 0;
  [a1 strokeWidthForToolType:2];
  *&v9 = v9;
  v89 = LODWORD(v9);
  v116 = 0;
  sub_1008B2170([a1 colorForToolType:3], v131);
  *&v115[35] = v131[2];
  *&v115[51] = v131[3];
  *&v115[67] = v131[4];
  *&v115[83] = v132;
  *&v115[3] = v131[0];
  *&v115[19] = v131[1];
  [a1 opacityForToolType:3];
  *&v10 = v10;
  v88 = LODWORD(v10);
  v114 = 0;
  [a1 strokeWidthForToolType:3];
  *&v11 = v11;
  v87 = LODWORD(v11);
  v113 = 0;
  sub_1008B2170([a1 colorForToolType:4], v133);
  *(&v112[2] + 3) = v133[2];
  *(&v112[3] + 3) = v133[3];
  *(&v112[4] + 3) = v133[4];
  *(&v112[5] + 3) = v134;
  *(v112 + 3) = v133[0];
  *(&v112[1] + 3) = v133[1];
  [a1 opacityForToolType:4];
  *&v12 = v12;
  v86 = LODWORD(v12);
  v111 = 0;
  [a1 strokeWidthForToolType:4];
  *&v13 = v13;
  v85 = LODWORD(v13);
  v110 = 0;
  sub_1008B2170([a1 colorForToolType:5], v135);
  *&v109[35] = v135[2];
  *&v109[51] = v135[3];
  *&v109[67] = v135[4];
  *&v109[83] = v136;
  *&v109[3] = v135[0];
  *&v109[19] = v135[1];
  [a1 opacityForToolType:5];
  v15 = v14;
  v108 = 0;
  [a1 strokeWidthForToolType:5];
  v17 = v16;
  v107 = 0;
  sub_1008B2170([a1 colorForToolType:7], v137);
  *(&v106[2] + 3) = v137[2];
  *(&v106[3] + 3) = v137[3];
  *(&v106[4] + 3) = v137[4];
  *(&v106[5] + 3) = v138;
  *(v106 + 3) = v137[0];
  *(&v106[1] + 3) = v137[1];
  [a1 opacityForToolType:7];
  v19 = v18;
  v105 = 0;
  [a1 strokeWidthForToolType:7];
  v21 = v20;
  v104 = 0;
  sub_1008B2170([a1 colorForToolType:8], v139);
  *&v103[35] = v139[2];
  *&v103[51] = v139[3];
  *&v103[67] = v139[4];
  *&v103[83] = v140;
  *&v103[3] = v139[0];
  *&v103[19] = v139[1];
  [a1 opacityForToolType:8];
  v23 = v22;
  v102 = 0;
  [a1 strokeWidthForToolType:9];
  v25 = v24;
  v101 = 0;
  v84 = [a1 eraserToolErasesWholeObjects];
  v83 = [a1 currentLassoType] == 1;
  sub_1008B2170([a1 colorForToolType:6], v96);
  *&v100[39] = v96[2];
  *&v100[55] = v96[3];
  *&v100[71] = v96[4];
  *&v100[87] = v97;
  *&v100[7] = v96[0];
  *&v100[23] = v96[1];
  [a1 opacityForToolType:6];
  v27 = v26;
  v99 = 0;
  [a1 strokeWidthForToolType:6];
  v29 = v28;
  v98 = 0;
  [a1 azimuthForToolType:6];
  v30 = v124[3];
  *(a2 + 41) = v124[2];
  *(a2 + 57) = v30;
  *(a2 + 73) = v124[4];
  *(a2 + 88) = *(&v124[4] + 15);
  v31 = v124[1];
  *(a2 + 9) = v124[0];
  *&v32 = v32;
  v33 = v123;
  v34 = v122;
  v35 = v120;
  v36 = v119;
  v37 = v117;
  v38 = v116;
  v39 = v114;
  v40 = v113;
  v41 = v111;
  v42 = v110;
  v43 = v108;
  v44 = v107;
  v45 = v105;
  v46 = v104;
  v47 = v102;
  v48 = v101;
  v49 = v99;
  v50 = v98;
  *a2 = v95;
  *(a2 + 8) = 0;
  *(a2 + 25) = v31;
  *(a2 + 104) = v94;
  *(a2 + 108) = v33;
  *(a2 + 112) = v93;
  *(a2 + 116) = v34;
  v51 = *v121;
  *(a2 + 133) = *&v121[16];
  *(a2 + 117) = v51;
  *(a2 + 192) = *&v121[75];
  v52 = *&v121[48];
  *(a2 + 181) = *&v121[64];
  v53 = *&v121[32];
  *(a2 + 165) = v52;
  *(a2 + 149) = v53;
  *(a2 + 208) = v92;
  *(a2 + 212) = v35;
  *(a2 + 216) = v91;
  *(a2 + 220) = v36;
  v54 = v118[0];
  *(a2 + 237) = v118[1];
  *(a2 + 221) = v54;
  v55 = v118[2];
  v56 = v118[3];
  v57 = v118[4];
  *(a2 + 296) = *(&v118[4] + 11);
  *(a2 + 269) = v56;
  *(a2 + 285) = v57;
  *(a2 + 253) = v55;
  *(a2 + 312) = v90;
  *(a2 + 316) = v37;
  *(a2 + 320) = v89;
  *(a2 + 324) = v38;
  v58 = *&v115[16];
  *(a2 + 325) = *v115;
  *(a2 + 341) = v58;
  v59 = *&v115[32];
  v60 = *&v115[48];
  v61 = *&v115[64];
  *(a2 + 400) = *&v115[75];
  *(a2 + 373) = v60;
  *(a2 + 389) = v61;
  *(a2 + 357) = v59;
  *(a2 + 416) = v88;
  *(a2 + 420) = v39;
  *(a2 + 424) = v87;
  *(a2 + 428) = v40;
  result = a2 + 429;
  v63 = v112[1];
  *(a2 + 429) = v112[0];
  *(a2 + 445) = v63;
  v64 = v112[2];
  v65 = v112[3];
  v66 = v112[4];
  *(a2 + 504) = *(&v112[4] + 11);
  *(a2 + 477) = v65;
  *(a2 + 493) = v66;
  *(a2 + 461) = v64;
  *(a2 + 520) = v86;
  *(a2 + 524) = v41;
  *(a2 + 528) = v85;
  *(a2 + 532) = v42;
  v67 = *&v109[16];
  *(a2 + 533) = *v109;
  *(a2 + 549) = v67;
  v68 = *&v109[32];
  v69 = *&v109[48];
  v70 = *&v109[64];
  *(a2 + 608) = *&v109[75];
  *(a2 + 581) = v69;
  *(a2 + 597) = v70;
  *(a2 + 565) = v68;
  *(a2 + 624) = v15;
  *(a2 + 628) = v43;
  *(a2 + 632) = v17;
  *(a2 + 636) = v44;
  v71 = v106[1];
  *(a2 + 637) = v106[0];
  *(a2 + 653) = v71;
  v72 = v106[2];
  v73 = v106[3];
  v74 = v106[4];
  *(a2 + 712) = *(&v106[4] + 11);
  *(a2 + 685) = v73;
  *(a2 + 701) = v74;
  *(a2 + 669) = v72;
  *(a2 + 728) = v19;
  *(a2 + 732) = v45;
  *(a2 + 736) = v21;
  *(a2 + 740) = v46;
  v75 = *&v103[16];
  *(a2 + 741) = *v103;
  *(a2 + 757) = v75;
  v76 = *&v103[32];
  v77 = *&v103[48];
  v78 = *&v103[64];
  *(a2 + 816) = *&v103[75];
  *(a2 + 789) = v77;
  *(a2 + 805) = v78;
  *(a2 + 773) = v76;
  *(a2 + 832) = v23;
  *(a2 + 836) = v47;
  *(a2 + 840) = v25;
  *(a2 + 844) = v48;
  *(a2 + 845) = v84;
  *(a2 + 848) = v83;
  *(a2 + 856) = 0;
  v79 = *&v100[16];
  *(a2 + 857) = *v100;
  *(a2 + 873) = v79;
  v80 = *&v100[32];
  v81 = *&v100[48];
  v82 = *&v100[64];
  *(a2 + 936) = *&v100[79];
  *(a2 + 905) = v81;
  *(a2 + 921) = v82;
  *(a2 + 889) = v80;
  *(a2 + 952) = v27;
  *(a2 + 956) = v49;
  *(a2 + 960) = v29;
  *(a2 + 964) = v50;
  *(a2 + 968) = LODWORD(v32);
  *(a2 + 972) = 0;
  *(a2 + 976) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100CA1EB4(uint64_t a1)
{
  if ((a1 + 1) > 0x1F)
  {
    return 32;
  }

  else
  {
    return byte_1014A9470[a1 + 1];
  }
}

uint64_t sub_100CA1ED8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001CLL && 0x80000001015975F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101597610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101597630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101597650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F546C69636E6570 && a2 == 0xEF726F6C6F436C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101597670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101597690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F546E6F79617263 && a2 == 0xEF726F6C6F436C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001015976B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001015976D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C6F6F546C6C6966 && a2 == 0xED0000726F6C6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C6F6F546C6C6966 && a2 == 0xEF7974696361704FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015976F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101597710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x436C6F6F546E6570 && a2 == 0xEC000000726F6C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4F6C6F6F546E6570 && a2 == 0xEE00797469636170 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101597730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101597750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101597770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101597790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001015977B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001015977D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001015977F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6F5472656B72616DLL && a2 == 0xEF726F6C6F436C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101597810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101597830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101597850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C6F6F5464656572 && a2 == 0xED0000726F6C6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6C6F6F5464656572 && a2 == 0xEF7974696361704FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101597870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6C6F6F5464656572 && a2 == 0xEF6874756D697A41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 31;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 31;
    }

    else
    {
      return 32;
    }
  }
}

void *sub_100CA28A4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v288 = sub_1005B981C(&qword_101A19F88);
  v6 = *(v288 - 8);
  __chkstk_darwin(v288);
  v8 = &v16 - v7;
  sub_100020E58(v3, v3[3]);
  sub_100CA4948();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(v3);
  }

  v59 = v5;
  v60 = v6;
  sub_1005B981C(&qword_101A19F90);
  v61[0] = 0;
  sub_100B99DB0(&qword_101A19F98, &qword_101A19F90);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v62;
  v10 = v63;
  v231 = 1;
  v11 = sub_1008B287C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v57 = v9;
  v58 = v11;
  v56 = v10;
  *(&v287[2] + 7) = v234;
  *(&v287[3] + 7) = v235;
  *(&v287[4] + 7) = v236;
  *(v287 + 7) = v232;
  *(&v287[5] + 7) = v237;
  *(&v287[1] + 7) = v233;
  LOBYTE(v62) = 2;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v286 = BYTE4(v55) & 1;
  LOBYTE(v62) = 3;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v283 = BYTE4(v54) & 1;
  v224 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v277[2] + 3) = v227;
  *(&v277[3] + 3) = v228;
  *(&v277[4] + 3) = v229;
  *(&v277[5] + 3) = v230;
  *(v277 + 3) = v225;
  *(&v277[1] + 3) = v226;
  LOBYTE(v62) = 5;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v276 = BYTE4(v12) & 1;
  LOBYTE(v62) = 6;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v273 = BYTE4(v53) & 1;
  v217 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v272[2] + 3) = v220;
  *(&v272[3] + 3) = v221;
  *(&v272[4] + 3) = v222;
  *(&v272[5] + 3) = v223;
  *(v272 + 3) = v218;
  *(&v272[1] + 3) = v219;
  LOBYTE(v62) = 8;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v271 = BYTE4(v13) & 1;
  LOBYTE(v62) = 9;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v268 = BYTE4(v14) & 1;
  v210 = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v252[2] + 3) = v213;
  *(&v252[3] + 3) = v214;
  *(&v252[4] + 3) = v215;
  *(&v252[5] + 3) = v216;
  *(v252 + 3) = v211;
  *(&v252[1] + 3) = v212;
  LOBYTE(v62) = 11;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v251 = BYTE4(v52) & 1;
  LOBYTE(v62) = 12;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v248 = BYTE4(v51) & 1;
  LOBYTE(v62) = 13;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = 14;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v282[2] + 3) = v206;
  *(&v282[3] + 3) = v207;
  *(&v282[4] + 3) = v208;
  *(&v282[5] + 3) = v209;
  *(v282 + 3) = v204;
  *(&v282[1] + 3) = v205;
  LOBYTE(v62) = 15;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v281 = BYTE4(v49) & 1;
  LOBYTE(v62) = 16;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v278 = BYTE4(v48) & 1;
  v196 = 17;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v267[2] + 3) = v199;
  *(&v267[3] + 3) = v200;
  *(&v267[4] + 3) = v201;
  *(&v267[5] + 3) = v202;
  *(v267 + 3) = v197;
  *(&v267[1] + 3) = v198;
  LOBYTE(v62) = 18;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v266 = BYTE4(v47) & 1;
  LOBYTE(v62) = 19;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v263 = BYTE4(v46) & 1;
  v189 = 20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v262[2] + 3) = v192;
  *(&v262[3] + 3) = v193;
  *(&v262[4] + 3) = v194;
  *(&v262[5] + 3) = v195;
  *(v262 + 3) = v190;
  *(&v262[1] + 3) = v191;
  LOBYTE(v62) = 21;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v261 = BYTE4(v45) & 1;
  LOBYTE(v62) = 22;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v258 = BYTE4(v44) & 1;
  v182 = 23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v257[2] + 3) = v185;
  *(&v257[3] + 3) = v186;
  *(&v257[4] + 3) = v187;
  *(&v257[5] + 3) = v188;
  *(v257 + 3) = v183;
  *(&v257[1] + 3) = v184;
  LOBYTE(v62) = 24;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v256 = BYTE4(v43) & 1;
  LOBYTE(v62) = 25;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v253 = BYTE4(v42) & 1;
  sub_1005B981C(&qword_101A19FA0);
  v61[0] = 26;
  sub_100B99DB0(&qword_101A19FA8, &qword_101A19FA0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v62;
  v40 = v63;
  v175 = 27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v247[2] + 7) = v178;
  *(&v247[3] + 7) = v179;
  *(&v247[4] + 7) = v180;
  *(&v247[5] + 7) = v181;
  *(v247 + 7) = v176;
  *(&v247[1] + 7) = v177;
  LOBYTE(v62) = 28;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v246 = BYTE4(v58) & 1;
  LOBYTE(v62) = 29;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v243 = BYTE4(v39) & 1;
  LOBYTE(v62) = 30;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v240 = BYTE4(v38) & 1;
  sub_1005B981C(&unk_101A0D960);
  v173 = 31;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v60 + 8))(v8, v288);
  v31 = v174;
  *v61 = v57;
  v61[8] = v56;
  *&v61[41] = v287[2];
  *&v61[57] = v287[3];
  *&v61[73] = v287[4];
  *&v61[88] = *(&v287[4] + 15);
  *&v61[9] = v287[0];
  *&v61[25] = v287[1];
  *&v61[104] = v55;
  v30 = v286;
  v61[108] = v286;
  v61[111] = v285;
  *&v61[109] = v284;
  *&v61[112] = v54;
  v27 = v283;
  v61[116] = v283;
  *&v61[149] = v282[2];
  *&v61[165] = v282[3];
  *&v61[181] = v282[4];
  *&v61[192] = *(&v282[4] + 11);
  *&v61[117] = v282[0];
  *&v61[133] = v282[1];
  *&v61[208] = v49;
  v26 = v281;
  v61[212] = v281;
  v61[215] = v280;
  *&v61[213] = v279;
  *&v61[216] = v48;
  v25 = v278;
  v61[220] = v278;
  *&v61[296] = *(&v277[4] + 11);
  *&v61[269] = v277[3];
  *&v61[285] = v277[4];
  *&v61[237] = v277[1];
  *&v61[221] = v277[0];
  *&v61[253] = v277[2];
  v24 = v12;
  *&v61[312] = v12;
  v23 = v276;
  v61[316] = v276;
  *&v61[317] = v274;
  v61[319] = v275;
  *&v61[320] = v53;
  v22 = v273;
  v61[324] = v273;
  *&v61[325] = v272[0];
  *&v61[341] = v272[1];
  *&v61[373] = v272[3];
  *&v61[389] = v272[4];
  *&v61[357] = v272[2];
  *&v61[400] = *(&v272[4] + 11);
  v21 = v13;
  *&v61[416] = v13;
  v20 = v271;
  v61[420] = v271;
  *&v61[421] = v269;
  v61[423] = v270;
  v19 = v14;
  *&v61[424] = v14;
  v18 = v268;
  v61[428] = v268;
  *&v61[429] = v267[0];
  *&v61[445] = v267[1];
  *&v61[504] = *(&v267[4] + 11);
  *&v61[477] = v267[3];
  *&v61[493] = v267[4];
  *&v61[461] = v267[2];
  LODWORD(v14) = v47;
  *&v61[520] = v47;
  v17 = v266;
  v61[524] = v266;
  *&v61[525] = v264;
  v61[527] = v265;
  *&v61[528] = v46;
  LODWORD(v288) = v263;
  v61[532] = v263;
  *&v61[533] = v262[0];
  *&v61[549] = v262[1];
  *&v61[581] = v262[3];
  *&v61[597] = v262[4];
  *&v61[565] = v262[2];
  *&v61[608] = *(&v262[4] + 11);
  *&v61[624] = v45;
  LODWORD(v60) = v261;
  v61[628] = v261;
  *&v61[629] = v259;
  v61[631] = v260;
  *&v61[632] = v44;
  v37 = v258;
  v61[636] = v258;
  *&v61[637] = v257[0];
  *&v61[653] = v257[1];
  *&v61[712] = *(&v257[4] + 11);
  *&v61[685] = v257[3];
  *&v61[701] = v257[4];
  *&v61[669] = v257[2];
  *&v61[728] = v43;
  v36 = v256;
  v61[732] = v256;
  *&v61[733] = v254;
  v61[735] = v255;
  *&v61[736] = v42;
  v35 = v253;
  v61[740] = v253;
  *&v61[741] = v252[0];
  *&v61[757] = v252[1];
  *&v61[789] = v252[3];
  *&v61[805] = v252[4];
  *&v61[773] = v252[2];
  *&v61[816] = *(&v252[4] + 11);
  *&v61[832] = v52;
  v34 = v251;
  v61[836] = v251;
  *&v61[837] = v249;
  v61[839] = v250;
  *&v61[840] = v51;
  v33 = v248;
  v61[844] = v248;
  v61[845] = v50;
  *&v61[848] = v41;
  v61[856] = v40;
  *&v61[857] = v247[0];
  *&v61[873] = v247[1];
  *&v61[936] = *(&v247[4] + 15);
  *&v61[905] = v247[3];
  *&v61[921] = v247[4];
  *&v61[889] = v247[2];
  *&v61[952] = v58;
  *&v61[957] = v244;
  *&v61[965] = v241;
  v32 = v246;
  v61[956] = v246;
  v61[959] = v245;
  *&v61[960] = v39;
  *&v61[973] = v238;
  v29 = v243;
  v61[964] = v243;
  v61[967] = v242;
  *&v61[968] = v38;
  v61[975] = v239;
  v28 = v240;
  v61[972] = v240;
  *&v61[976] = v174;
  sub_100CA4BD4(v61, &v62);
  sub_100005070(v3);
  v62 = v57;
  v63 = v56;
  v69 = v55;
  v70 = v30;
  v73 = v54;
  v74 = v27;
  v80 = v49;
  v81 = v26;
  v84 = v48;
  v85 = v25;
  v91 = v24;
  v92 = v23;
  v95 = v53;
  v96 = v22;
  v102 = v21;
  v103 = v20;
  v106 = v19;
  v107 = v18;
  v113 = v14;
  v114 = v17;
  v66 = v287[2];
  v67 = v287[3];
  *v68 = v287[4];
  *&v68[15] = *(&v287[4] + 15);
  v64 = v287[0];
  v65 = v287[1];
  v71 = v284;
  v72 = v285;
  v77 = v282[2];
  v78 = v282[3];
  *v79 = v282[4];
  *&v79[11] = *(&v282[4] + 11);
  v75 = v282[0];
  v76 = v282[1];
  v83 = v280;
  v82 = v279;
  *&v90[11] = *(&v277[4] + 11);
  v89 = v277[3];
  *v90 = v277[4];
  v87 = v277[1];
  v86 = v277[0];
  v88 = v277[2];
  v93 = v274;
  v94 = v275;
  v97 = v272[0];
  v98 = v272[1];
  v100 = v272[3];
  *v101 = v272[4];
  v99 = v272[2];
  *&v101[11] = *(&v272[4] + 11);
  v104 = v269;
  v105 = v270;
  v108 = v267[0];
  v109 = v267[1];
  *&v112[11] = *(&v267[4] + 11);
  v111 = v267[3];
  *v112 = v267[4];
  v110 = v267[2];
  v115 = v264;
  v116 = v265;
  v117 = v46;
  v118 = v288;
  v119 = v262[0];
  v120 = v262[1];
  v122 = v262[3];
  *v123 = v262[4];
  v121 = v262[2];
  *&v123[11] = *(&v262[4] + 11);
  v124 = v45;
  v125 = v60;
  v126 = v259;
  v127 = v260;
  v128 = v44;
  v129 = v37;
  v130 = v257[0];
  v131 = v257[1];
  *&v134[11] = *(&v257[4] + 11);
  v133 = v257[3];
  *v134 = v257[4];
  v132 = v257[2];
  v135 = v43;
  v136 = v36;
  v137 = v254;
  v138 = v255;
  v139 = v42;
  v140 = v35;
  v141 = v252[0];
  v142 = v252[1];
  v144 = v252[3];
  *v145 = v252[4];
  v143 = v252[2];
  *&v145[11] = *(&v252[4] + 11);
  v146 = v52;
  v147 = v34;
  v148 = v249;
  v149 = v250;
  v150 = v51;
  v151 = v33;
  v152 = v50;
  v153 = v41;
  v154 = v40;
  v155 = v247[0];
  v156 = v247[1];
  *&v159[15] = *(&v247[4] + 15);
  v158 = v247[3];
  *v159 = v247[4];
  v157 = v247[2];
  v160 = v58;
  v161 = v32;
  v162 = v244;
  v163 = v245;
  v164 = v39;
  v165 = v29;
  v166 = v241;
  v167 = v242;
  v168 = v38;
  v169 = v28;
  v170 = v238;
  v171 = v239;
  v172 = v31;
  sub_100CA4548(&v62);
  return memcpy(v59, v61, 0x3D8uLL);
}

id sub_100CA40E4(uint64_t a1, unint64_t a2)
{
  sub_100024E98(a1, a2);
  sub_100CA44F4();
  CRValue.init(serializedData:)();
  memcpy(__dst, __src, 0x3D8uLL);
  return sub_100C9F750(__dst);
}

unint64_t sub_100CA44F4()
{
  result = qword_101A19F08;
  if (!qword_101A19F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F08);
  }

  return result;
}

uint64_t sub_100CA4578(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100CA4598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 984))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 976);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100CA45E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 984) = 1;
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
      *(result + 976) = (a2 - 1);
      return result;
    }

    *(result + 984) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100CA4734()
{
  result = qword_101A19F10;
  if (!qword_101A19F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F10);
  }

  return result;
}

unint64_t sub_100CA4790()
{
  result = qword_101A19F18;
  if (!qword_101A19F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F18);
  }

  return result;
}

unint64_t sub_100CA47E8()
{
  result = qword_101A19F20;
  if (!qword_101A19F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F20);
  }

  return result;
}

unint64_t sub_100CA4840()
{
  result = qword_101A19F28;
  if (!qword_101A19F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F28);
  }

  return result;
}

unint64_t sub_100CA4898()
{
  result = qword_101A19F30;
  if (!qword_101A19F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F30);
  }

  return result;
}

unint64_t sub_100CA48F0()
{
  result = qword_101A19F38;
  if (!qword_101A19F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F38);
  }

  return result;
}

unint64_t sub_100CA4948()
{
  result = qword_101A19F40;
  if (!qword_101A19F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F40);
  }

  return result;
}

unint64_t sub_100CA49A0()
{
  result = qword_101A19F48;
  if (!qword_101A19F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F48);
  }

  return result;
}

unint64_t sub_100CA49F8()
{
  result = qword_101A19F50;
  if (!qword_101A19F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F50);
  }

  return result;
}

unint64_t sub_100CA4A50()
{
  result = qword_101A19F58;
  if (!qword_101A19F58)
  {
    sub_1005C4E5C(&qword_101A19F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F58);
  }

  return result;
}

unint64_t sub_100CA4AB8()
{
  result = qword_101A19F68;
  if (!qword_101A19F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F68);
  }

  return result;
}

unint64_t sub_100CA4B10()
{
  result = qword_101A19F70;
  if (!qword_101A19F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19F70);
  }

  return result;
}

uint64_t sub_100CA4B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A19F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100CA4C0C()
{
  result = qword_101A19FC8;
  if (!qword_101A19FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19FC8);
  }

  return result;
}

unint64_t sub_100CA4C60()
{
  result = qword_101A19FD0;
  if (!qword_101A19FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19FD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFreehandDrawingToolkitUIStateData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFreehandDrawingToolkitUIStateData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100CA4E08()
{
  result = qword_101A19FD8;
  if (!qword_101A19FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19FD8);
  }

  return result;
}

uint64_t sub_100CA4E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100CA4EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100CA4F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*(v2 + 40))
    {
      v6 = 0.5;
    }

    else
    {
      v6 = *(v2 + 24);
    }

    if (*(v2 + 40))
    {
      v7 = 0.5;
    }

    else
    {
      v7 = *(v2 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = v5;
    }

    v9 = *(v2 + 56);
    v10 = *(v2 + 8);
    v11 = Strong;
    CATransform3DMakeScale(&v74, v10, v10, 1.0);
    v12 = v11;
    [v5 anchorPoint];
    v14 = v13;
    v16 = v15;
    [v5 bounds];
    v18 = sub_10011FFCC(v14, v16, v17);
    CATransform3DMakeTranslation(&v75, v18, v19, 1.0);
    if (v9)
    {
      v20 = *&CATransform3DIdentity.m33;
      *&v73.m31 = *&CATransform3DIdentity.m31;
      *&v73.m33 = v20;
      v21 = *&CATransform3DIdentity.m43;
      *&v73.m41 = *&CATransform3DIdentity.m41;
      *&v73.m43 = v21;
      v22 = *&CATransform3DIdentity.m13;
      *&v73.m11 = *&CATransform3DIdentity.m11;
      *&v73.m13 = v22;
      v23 = *&CATransform3DIdentity.m23;
      *&v73.m21 = *&CATransform3DIdentity.m21;
      *&v73.m23 = v23;
    }

    else
    {
      sub_100C005E0(v5, v12, &b);
      a = v75;
      CATransform3DConcat(&v73, &a, &b);
    }

    [v12 bounds];
    [v12 bounds];
    v25 = v24;
    [v12 bounds];
    [v12 bounds];
    [v12 bounds];
    [v12 bounds];
    v27 = -v25;
    if (v25 <= 0.001)
    {
      v27 = -0.001;
    }

    v28 = v6 * v27;
    v29 = -v26;
    if (v26 <= 0.001)
    {
      v29 = -0.001;
    }

    CATransform3DMakeTranslation(&v67, v28, v7 * v29, 1.0);
    a = v67;
    b = v74;
    CATransform3DConcat(&v68, &a, &b);
    a = v67;
    CATransform3DInvert(&b, &a);
    a = v68;
    CATransform3DConcat(&v70, &a, &b);
    a = v73;
    CATransform3DConcat(&v69, &a, &v70);
    a = v73;
    CATransform3DInvert(&b, &a);
    a = v69;
    CATransform3DConcat(&v70, &a, &b);
    CATransform3DGetAffineTransform(&a, &v70);
    CATransform3DMakeAffineTransform(&v70, &a);

    CATransform3DMakeScale(&b, *(v2 + 16), *(v2 + 16), 1.0);
    v30 = v12;
    [v5 anchorPoint];
    v32 = v31;
    v34 = v33;
    [v5 bounds];
    v36 = sub_10011FFCC(v32, v34, v35);
    CATransform3DMakeTranslation(&a, v36, v37, 1.0);
    if (v9)
    {
      v38 = *&CATransform3DIdentity.m33;
      *&v66.m31 = *&CATransform3DIdentity.m31;
      *&v66.m33 = v38;
      v39 = *&CATransform3DIdentity.m43;
      *&v66.m41 = *&CATransform3DIdentity.m41;
      *&v66.m43 = v39;
      v40 = *&CATransform3DIdentity.m13;
      *&v66.m11 = *&CATransform3DIdentity.m11;
      *&v66.m13 = v40;
      v41 = *&CATransform3DIdentity.m23;
      *&v66.m21 = *&CATransform3DIdentity.m21;
      *&v66.m23 = v41;
    }

    else
    {
      sub_100C005E0(v5, v30, &v64);
      v65 = a;
      CATransform3DConcat(&v66, &v65, &v64);
    }

    [v30 bounds];
    [v30 bounds];
    v43 = v42;
    [v30 bounds];
    [v30 bounds];
    [v30 bounds];
    [v30 bounds];
    v45 = -v43;
    if (v43 <= 0.001)
    {
      v45 = -0.001;
    }

    v46 = v6 * v45;
    v47 = -v44;
    if (v44 <= 0.001)
    {
      v47 = -0.001;
    }

    CATransform3DMakeTranslation(&v62, v46, v7 * v47, 1.0);
    v65 = v62;
    v64 = b;
    CATransform3DConcat(&v63, &v65, &v64);
    v65 = v62;
    CATransform3DInvert(&v64, &v65);
    v65 = v63;
    CATransform3DConcat(&v61, &v65, &v64);
    v65 = v66;
    CATransform3DConcat(&v64, &v65, &v61);
    v65 = v66;
    CATransform3DInvert(&v61, &v65);
    v65 = v64;
    CATransform3DConcat(&v60, &v65, &v61);
    CATransform3DGetAffineTransform(&v65, &v60);
    *&v61.m11 = *&v65.m11;
    *&v61.m13 = *&v65.m13;
    *&v61.m21 = *&v65.m21;
    CATransform3DMakeAffineTransform(&v65, &v61);

    type metadata accessor for CATransform3D(0);
    v49 = v48;
    v61.m14 = v48;
    v50 = swift_allocObject();
    *&v61.m11 = v50;
    v51 = *&v70.m33;
    v50[5] = *&v70.m31;
    v50[6] = v51;
    v52 = *&v70.m43;
    v50[7] = *&v70.m41;
    v50[8] = v52;
    v53 = *&v70.m13;
    v50[1] = *&v70.m11;
    v50[2] = v53;
    v54 = *&v70.m23;
    v50[3] = *&v70.m21;
    v50[4] = v54;
    v60.m14 = v49;
    v55 = swift_allocObject();
    *&v60.m11 = v55;
    v56 = *&v65.m33;
    v55[5] = *&v65.m31;
    v55[6] = v56;
    v57 = *&v65.m43;
    v55[7] = *&v65.m41;
    v55[8] = v57;
    v58 = *&v65.m13;
    v55[1] = *&v65.m11;
    v55[2] = v58;
    v59 = *&v65.m23;
    v55[3] = *&v65.m21;
    v55[4] = v59;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 64) = 26;

    *(a1 + 72) = 0x726F66736E617274;
    *(a1 + 80) = 0xE90000000000006DLL;
    sub_1006A430C(&v61, a1);
    return sub_1006A430C(&v60, a1 + 32);
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_100CA572C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  result = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = result;
  *(a1 + 48) = v9;
  *(a1 + 256) = 74;
  return result;
}

unint64_t sub_100CA57A0(uint64_t a1)
{
  result = sub_100CA57C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100CA57C8()
{
  result = qword_101A19FE0;
  if (!qword_101A19FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19FE0);
  }

  return result;
}

BOOL sub_100CA581C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {
      goto LABEL_19;
    }

    sub_1009354E4();
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v6 = v9;
    if (Strong)
    {
      if (v9)
      {
        sub_1009354E4();
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_19:

      return 0;
    }

    if (!v9)
    {
LABEL_23:
      v11 = *(a1 + 56);
      v12 = *(a2 + 56);
      if (v11 != 2)
      {
        return v12 != 2 && ((v12 ^ v11) & 1) == 0;
      }

      return v12 == 2;
    }

LABEL_6:

    return 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    goto LABEL_15;
  }

  return result;
}

void sub_100CA598C(void *a1, uint64_t a2, int a3)
{
  v72 = a2;
  v4 = v3;
  v66 = a3;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v65 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [a1 getBoardItemForUUID:isa];

  if (!v16)
  {
    goto LABEL_31;
  }

  v68 = v6;
  type metadata accessor for CRLWPShapeItem();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
LABEL_30:

LABEL_31:
    v40 = objc_opt_self();
    v41 = [v40 _atomicIncrementAssertCount];
    v76 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v76);
    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    v44 = [v43 lastPathComponent];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v48 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v41;
    v50 = sub_1005CF000();
    *(inited + 96) = v50;
    v51 = sub_1005CF04C();
    *(inited + 104) = v51;
    *(inited + 72) = v42;
    *(inited + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(inited + 112) = v45;
    *(inited + 120) = v47;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v52;
    *(inited + 152) = 23;
    v53 = v76;
    *(inited + 216) = v50;
    *(inited + 224) = v51;
    *(inited + 192) = v53;
    v54 = v42;
    v55 = v53;
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v57 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v57, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
    type metadata accessor for __VaListBuilder();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v62 = String._bridgeToObjectiveC()();

    [v40 handleFailureInFunction:v60 file:v61 lineNumber:23 isFatal:1 format:v62 args:v59];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v63, v64);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v70 = v16;
  v71 = v17;
  v18 = *(v17 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = v4 + OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_range;
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_range);
  v16 = *(v19 + 8);
  v76 = v20;
  v77 = v16;
  if (__OFSUB__(v16, v20))
  {
    __break(1u);
    goto LABEL_25;
  }

  v69 = v18;
  if (v16 == v20)
  {
    v74 = 0;
    v75 = 0;

    v21 = v74;
    v22 = v75;
    v23 = NSNotFound.getter();
    v24 = v20;
    v25 = v73;
    v26 = v71;
    if (v21 != v23)
    {
      v24 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      v20 = v21;
    }

    goto LABEL_17;
  }

  v27 = *&v18[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v27)
  {
    __break(1u);
    goto LABEL_30;
  }

  (*(*v27 + 896))();
  sub_1005E0A78(&v11[*(v9 + 20)], v14);
  v65 = v18;
  sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v28 = v67;
  v29 = v68;
  (*(v67 + 16))(v8, v14, v68);
  sub_1005E0ADC(v14, type metadata accessor for CRLWPStorageCRDTData);
  v30 = CRAttributedString.count.getter();
  (*(v28 + 8))(v8, v29);
  if (v30 >= (v20 & ~(v20 >> 63)))
  {
    v31 = v20 & ~(v20 >> 63);
  }

  else
  {
    v31 = v30;
  }

  v32 = v16 & ~(v16 >> 63);
  if (v32 < v31)
  {
    goto LABEL_26;
  }

  if (v30 >= v32)
  {
    v30 = (v16 & ~(v16 >> 63));
  }

  KeyPath = swift_getKeyPath();
  v34 = v65;
  sub_100A45F54(KeyPath, v34, v31, v30, v34, &v76);

  v20 = v76;
  v24 = v77;
  v25 = v73;
  v26 = v71;
LABEL_17:
  if (__OFSUB__(v24, v20))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24 - v20 < 1)
  {

    goto LABEL_22;
  }

  v35 = v70;
  sub_1012E0400(v26, &off_10188FE10);

  if (v25)
  {

LABEL_22:
    return;
  }

  v36 = swift_getKeyPath();
  v37 = v20;
  v38 = v69;
  sub_1008223B8(v36, v37, v24);

  v39 = v35;
  sub_1012CF6CC(v26, &off_10188FE10, v66);
}

uint64_t sub_100CA61D4()
{
  v1 = OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_boardItemID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100CA623C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPRemoveHyperlinkCommand();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLWPRemoveHyperlinkCommand()
{
  result = qword_101A1A010;
  if (!qword_101A1A010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CA6334()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100CA6410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100CA6458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100CA64C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100041E54(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100061AF0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100CA6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100041E54(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100061AF0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1005B981C(&unk_1019F6B20);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1005B981C(&unk_1019F6B20);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100CA6A1C()
{
  v1[36] = v0;
  type metadata accessor for MainActor();
  v1[37] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[38] = v3;
  v1[39] = v2;

  return _swift_task_switch(sub_100CA6AB4, v3, v2);
}

uint64_t sub_100CA6AB4()
{
  v1 = [*(v0[36] + 104) canvas];
  v0[40] = v1;
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v0[41] = static OS_os_log.crlDefault;
  v0[42] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = [v1 topLevelReps];
  v0[43] = sub_100006370(0, &qword_1019FB7A0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v6;
  v7 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "CRLCanvasExporter.prepareForPrinting started for %ld topLevelReps", 65, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = [v1 topLevelReps];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[44] = v9;

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v0[45] = v10;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[45] = v10;
    if (v10)
    {
LABEL_7:
      if (v10 >= 1)
      {
        v0[46] = 0;
        v11 = v0[44];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v11 + 32);
        }

        v13 = v12;
        v0[47] = v12;
        v0[2] = v0;
        v0[3] = sub_100CA6F00;
        v14 = swift_continuation_init();
        v0[35] = sub_1005B981C(&qword_101A14AA0);
        v0[28] = _NSConcreteStackBlock;
        v0[29] = *"";
        v0[30] = sub_100675B28;
        v0[31] = &unk_10189F490;
        v0[32] = v14;
        [v13 prepareForPrintingWithCompletionHandler:v0 + 28];

        return _swift_continuation_await(v0 + 2);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  v15 = v0[40];

  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10146C6B0;
  v16 = [v15 topLevelReps];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
LABEL_22:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_18;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
  v20 = v0[40];
  v19 = v0[41];

  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v18;
  v21 = static os_log_type_t.info.getter();
  sub_100005404(v19, &_mh_execute_header, v21, "CRLCanvasExporter.prepareForPrinting completed for %ld topLevelReps", 67, 2, v9);

  swift_setDeallocating();
  sub_100005070(v9 + 32);
  v22 = v0[1];

  return v22();
}

uint64_t sub_100CA6F00()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);

  return _swift_task_switch(sub_100CA7008, v2, v1);
}

uint64_t sub_100CA7008()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 320);

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = [v3 topLevelReps];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 320);
    v8 = *(v0 + 328);

    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v7;
    v10 = static os_log_type_t.info.getter();
    sub_100005404(v8, &_mh_execute_header, v10, "CRLCanvasExporter.prepareForPrinting completed for %ld topLevelReps", 67, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 368) + 1;
    *(v0 + 368) = v13;
    v14 = *(v0 + 352);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 376) = v15;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100CA6F00;
    v17 = swift_continuation_init();
    *(v0 + 280) = sub_1005B981C(&qword_101A14AA0);
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = *"";
    *(v0 + 240) = sub_100675B28;
    *(v0 + 248) = &unk_10189F490;
    *(v0 + 256) = v17;
    [v16 prepareForPrintingWithCompletionHandler:v0 + 224];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100CA72A0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 256) = a2;
  *(v5 + 264) = v4;
  *(v5 + 289) = a4;
  *(v5 + 288) = a3;
  *(v5 + 248) = a1;
  return _swift_task_switch(sub_100CA72CC, 0, 0);
}

uint64_t sub_100CA72CC()
{
  v39 = v0;
  v1._countAndFlagsBits = 6710384;
  v1._object = 0xE300000000000000;
  if (String.hasSuffix(_:)(v1))
  {
    v37 = objc_opt_self();
    v2 = [v37 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 77;
    v14 = v38;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "The title should not already have pdf applied to it.", 52, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v21 file:v22 lineNumber:77 isFatal:0 format:v23 args:v20];
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 crl_filenameFromDisplayNameWithExtension:v25];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  type metadata accessor for CRLTemporaryFile();
  swift_allocObject();
  v30 = sub_1009A380C(v27, v29);
  *(v0 + 272) = v30;
  v31 = v30;
  v32 = OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url;
  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  *v33 = v0;
  v33[1] = sub_100CA7804;
  v34 = *(v0 + 289);
  v35 = *(v0 + 288);

  return sub_100CA7AF0(v31 + v32, v35, v34);
}

uint64_t sub_100CA7804()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 272);

  return v2(v3);
}

unint64_t sub_100CA7914(uint64_t a1)
{
  v3 = *(v1 + 104);
  result = [v3 setIsPrinting:1];
  if (*(v1 + 49))
  {
    v5 = *(v1 + 8);
    if (!v5)
    {
      return result;
    }

    result = *(v1 + 96);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 8 * result + 32) + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (*(v1 + 50))
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      __break(1u);
      return result;
    }

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect);
    v17 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8);
    v9 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16);
    v10 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24);
    swift_unknownObjectRelease();
    v8 = v17;
    v7 = v16;
    if (*(v1 + 50))
    {
LABEL_7:
      if ((*(v1 + 88) & 1) == 0)
      {
        v7 = sub_100121F30(1, *(v1 + 72), *(v1 + 80), v7, v8, v9, v10);
        v9 = v11;
        v10 = v12;
      }
    }

LABEL_9:
    [v3 setUnscaledClipRect:{v7, v8, v9, v10}];
    v13 = 1.0;
    if ((*(v1 + 48) & 1) == 0)
    {
      v14 = *(v1 + 40) / v10;
      if (v14 >= *(v1 + 32) / v9)
      {
        v14 = *(v1 + 32) / v9;
      }

      v13 = floor(v14 * 100.0) / 100.0;
    }

    goto LABEL_14;
  }

  [v3 setUnscaledClipRect:{CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height}];
  v13 = *v1;
LABEL_14:
  [v3 setViewScale:v13];

  return [v3 drawPageInContext:a1 createPage:1 includeMargin:0];
}

uint64_t sub_100CA7AF0(uint64_t a1, char a2, char a3)
{
  *(v4 + 218) = a3;
  *(v4 + 217) = a2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v3;
  v5 = type metadata accessor for URL();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 + 64);
  *(v4 + 184) = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  *(v4 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100CA7BF8, 0, 0);
}

uint64_t sub_100CA7BF8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 218);
  v8 = *(v0 + 144);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v6);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v2, v6);
  v12 = v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v5;
  v14 = v5[1];
  v15 = v5[3];
  *(v12 + 32) = v5[2];
  *(v12 + 48) = v15;
  *v12 = v13;
  *(v12 + 16) = v14;
  v16 = v5[4];
  v17 = v5[5];
  v18 = v5[7];
  *(v12 + 96) = v5[6];
  *(v12 + 112) = v18;
  *(v12 + 64) = v16;
  *(v12 + 80) = v17;
  *(v12 + 128) = v7;
  sub_1008BE39C(v5, v0 + 16);
  v19 = sub_100CA64C8(0, 0, v1, &unk_1014A9628, v11);
  *(v0 + 200) = v19;
  sub_100061AF0(v1);
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_100CA7E00;

  return Task.result.getter(v0 + 216, v19, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100CA7E00()
{

  return _swift_task_switch(sub_100CA7EFC, 0, 0);
}

uint64_t sub_100CA7EFC()
{
  v1 = *(v0 + 217);
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  if (v1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(v4);
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 sendEventInDomain:v3 lazily:1 eventPayload:isa];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100CA803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 304) = a6;
  *(v6 + 288) = a4;
  *(v6 + 296) = a5;
  return _swift_task_switch(sub_100CA8060, 0, 0);
}

uint64_t sub_100CA8060@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = CGPDFContextCreateWithURL(v3, 0, 0);

  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = *(v1 + 304);
  v7 = v1[37];
  v8 = *(v7 + 112);
  v9 = v5;
  [v8 setCgContext:v9];
  sub_10050F4D4(v9, v8);
  v10 = *(v7 + 104);
  v1[20] = sub_100CA86EC;
  v1[21] = 0;
  v1[16] = _NSConcreteStackBlock;
  v1[17] = *"";
  v1[18] = sub_100CA89C4;
  v1[19] = &unk_10189F3F0;
  v11 = _Block_copy(v1 + 16);
  v12 = v10;

  [v12 setPostRenderAction:v11];
  _Block_release(v11);
  if (v6 == 1)
  {
    v13 = *(v1[37] + 8);
    if (!v13)
    {

      goto LABEL_36;
    }

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_6:
        v51 = v8;
        if (v14 < 1)
        {
          __break(1u);
          swift_once();
          v40 = static OS_os_log.crlDefault;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          swift_getErrorValue();
          v42 = Error.publicDescription.getter(v1[29], v1[30]);
          v44 = v43;
          *(inited + 56) = &type metadata for String;
          v45 = sub_1000053B0();
          *(inited + 64) = v45;
          *(inited + 32) = v42;
          *(inited + 40) = v44;
          swift_getErrorValue();
          v46 = Error.fullDescription.getter(v1[32]);
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v45;
          *(inited + 72) = v46;
          *(inited + 80) = v47;
          v48 = static os_log_type_t.error.getter();
          sub_100005404(v40, &_mh_execute_header, v48, "Error labeling PDF: %{public}@ <%@>", 35, 2, inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          goto LABEL_36;
        }

        v15 = 0;
        v16 = v1[37];
        v17 = *(v16 + 72);
        v18 = *(v16 + 80);
        v19 = *(v16 + 88);
        v54 = *(v16 + 120);
        v53 = v13 & 0xC000000000000001;
        v52 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
        v56 = v14;
        v57 = v13;
        v55 = v19;
        do
        {
          if (v53)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v13 + 8 * v15 + 32);
          }

          v21 = v20;
          v22 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
          v23 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8];
          v24 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16];
          v25 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24];
          if ((v19 & 1) == 0)
          {
            v22 = sub_100121F30(1, v17, v18, *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect], *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8], *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16], *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24]);
            v24 = v26;
            v25 = v27;
          }

          [v12 setUnscaledClipRect:{v22, v23, v24, v25, v51}];
          v28 = 1.0;
          if ((v19 & 1) == 0)
          {
            v29 = v17 / v24;
            if (v18 / v25 < v17 / v24)
            {
              v29 = v18 / v25;
            }

            v28 = floor(v29 * 100.0) / 100.0;
          }

          [v12 setViewScale:v28];
          v30 = v9;
          [v12 drawPageInContext:v9 createPage:1 includeMargin:0];
          v31 = [objc_allocWithZone(CRLCanvasImager) initWithBoard:v54];
          v32 = *(v54 + v52);
          v33 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
          v34 = *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
          v35 = v32;
          if (!v34)
          {
            sub_10096C7D4();
            v34 = *&v32[v33];
          }

          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = _swiftEmptyArrayStorage;
          }

          if (v36 >> 62)
          {
            sub_1005B981C(&qword_1019F5720);
            _bridgeCocoaArray<A>(_:)();
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }

          v9 = v30;
          ++v15;

          sub_1005B981C(&qword_1019F5720);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v31 setInfos:isa];

          v1[26] = sub_100CA86EC;
          v1[27] = 0;
          v1[22] = _NSConcreteStackBlock;
          v1[23] = *"";
          v1[24] = sub_100CA89C4;
          v1[25] = &unk_10189F418;
          v38 = _Block_copy(v1 + 22);

          [v31 setPostRenderAction:v38];
          _Block_release(v38);

          v12 = v31;
          v13 = v57;
          v19 = v55;
        }

        while (v56 != v15);

        v8 = v51;
        goto LABEL_31;
      }
    }
  }

  else
  {

    [v12 drawPageInContext:v9 createPage:1 includeMargin:1];
  }

LABEL_31:
  CGPDFContextClose(v9);
  sub_10050F4D4(v9, 0);

  [v8 setCgContext:0];
  if (sub_100D34670())
  {
    v39 = sub_100EC5D30();
    if (v39 != 2 && (v39 & 1) != 0)
    {
      sub_1006C5568();
    }
  }

LABEL_36:
  v49 = v1[1];

  return v49();
}

void sub_100CA86EC(void *a1, void *a2)
{
  if (a1)
  {
    v24 = a1;
    ClipBoundingBox = CGContextGetClipBoundingBox(v24);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    v7 = [objc_allocWithZone(CRLPdfHyperlinkController) initWithTaggingRect:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
    v8 = [a2 allReps];
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v9 = v26;
      v10 = v27;
      v11 = v28;
      v12 = v29;
      v13 = v30;
    }

    else
    {
      v12 = 0;
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v9 + 56);
    }

    v23 = v11;
    v17 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v12;
      v19 = v13;
      v20 = v12;
      if (!v13)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v22)
      {
LABEL_19:
        sub_100035F90();
        [v7 crl_commitHyperlinksToPDF:v24 targetRect:{x, y, width, height}];

        return;
      }

      while (1)
      {
        [v7 addHyperlinksForRep:{v22, v23}];

        v12 = v20;
        v13 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v22 = v25;
          v20 = v12;
          v21 = v13;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_100CA89C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_100CA8A48(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 128);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_100CA803C(a1, v6, v7, v1 + v5, v8, v9);
}

id sub_100CA8B78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_allocWithZone(CRLCanvasImager);
  v5 = a1;
  v6 = [v4 initWithBoard:v5];
  v7 = *&v5[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

  v8 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v9 = *&v7[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  if (!v9)
  {
    sub_10096C7D4();
    v9 = *&v7[v8];
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setInfos:isa];

  result = [objc_allocWithZone(CRLPdfTagger) init];
  if (result)
  {
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    *(a2 + 49) = 256;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 1;
    *(a2 + 96) = 0;
    *(a2 + 104) = v6;
    *(a2 + 112) = result;
    *(a2 + 120) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100CA8D54(uint64_t a1, char a2)
{
  *(v2 + 256) = a2;
  *(v2 + 184) = a1;
  *(v2 + 192) = type metadata accessor for CRLBoardCRDTData(0);
  *(v2 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100CA8DF0, a1, 0);
}

uint64_t sub_100CA8DF0()
{
  v1 = *(v0 + 184);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_100CA8EB8;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_100CA8EB8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100CA9008, 0, 0);
  }
}

uint64_t sub_100CA9008()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 216);
  sub_100CA8B78(v2, v0 + 16);
  v3 = *&v2[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v4 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v3 + v4, v1);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_1005E2BDC(v1);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  *(v0 + 224) = v6;
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_100CA9138;
  v8 = *(v0 + 256);

  return sub_100CA72A0(v5, v6, v8, 0);
}

uint64_t sub_100CA9138(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_100CA92E4;
  }

  else
  {

    *(v4 + 248) = a1;
    v5 = sub_100CA9268;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100CA9268()
{
  sub_1008BE3F8(v0 + 16);

  v1 = *(v0 + 8);
  v2 = *(v0 + 248);

  return v1(v2);
}

uint64_t sub_100CA92E4()
{
  v1 = *(v0 + 216);

  sub_1008BE3F8(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CA935C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100677990(a1, v4);
}

void TSContentLanguage.Models.Color.RGBA.init(red:green:blue:alpha:colorSpace:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v11 = a1 & 1;
  TSContentLanguage.Models.Color.RGBA.validate()();
  if (!v12)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    *(a2 + 16) = a5;
    *(a2 + 24) = a6;
    *(a2 + 32) = v11;
  }
}

uint64_t *TSContentLanguage.Models.Color.version.unsafeMutableAddressor()
{
  if (qword_1019F1FB8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Color.version;
}

__n128 TSContentLanguage.Models.Color.init(rgba:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.Color.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v15;
  }

  else
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(v8);
  v11 = vandq_s8(v14, v9);
  v12 = vandq_s8(v13, v9);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = v12;
  *a3 = v12;
  a3[1] = v11;
  a3[2].i8[0] = v7;
  return result;
}

uint64_t sub_100CA9614(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1633838962;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1633838962;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100CA9728()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CA97D0()
{
  String.hash(into:)();
}

Swift::Int sub_100CA9864()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100CA9908@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB1BC(*a1);
  *a2 = result;
  return result;
}

void sub_100CA9938(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1633838962;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100CA999C()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1633838962;
  }
}

unint64_t sub_100CA99FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB1BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100CA9A24(uint64_t a1)
{
  v2 = sub_100CAB670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CA9A60(uint64_t a1)
{
  v2 = sub_100CAB670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100CAB208(a1, v5);
  if (!v2)
  {
    return sub_100810AD0(v5, a2);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Color.encode(to:)(void *a1)
{
  sub_100810AD0(v1, v16);
  v4 = v17;
  v5 = sub_1005B981C(&qword_101A1A028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = a1[3];
  v11 = v16[1];
  v12 = v16[0];
  sub_100020E58(a1, v9);
  sub_100CAB670();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v12;
  v14 = v11;
  v15 = v4;
  v18 = 0;
  sub_100CAB6C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1FB8 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.Color.version;
  v18 = 2;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100CA9DC4(uint64_t a1, uint64_t a2)
{
  sub_100810AD0(a1, v4);
  sub_100810AD0(a2, v5);
  return _s8Freeform17TSContentLanguageO6ModelsO5ColorO21__derived_enum_equalsySbAG_AGtFZ_0(v4, v5) & 1;
}

uint64_t *TSContentLanguage.Models.Color.RGBA.version.unsafeMutableAddressor()
{
  if (qword_1019F1FC0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Color.RGBA.version;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Color.RGBA.validate()()
{
  v1 = *v0;
  if (*v0 < 0.0 || v1 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v17, v4);
    swift_willThrow();
    v5 = 0xE300000000000000;
    v6 = 6579570;
LABEL_25:
    sub_100810B2C();
    swift_allocError();
    *v16 = v6;
    v16[1] = v5;
    v16[2] = v3;
    swift_willThrow();
    return;
  }

  v7 = v0[1];
  if (v7 < 0.0 || v7 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v9 + 40) = v7;
    sub_100050F74(&v17, v9);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 0x6E65657267;
    goto LABEL_25;
  }

  v10 = v0[2];
  if (v10 < 0.0 || v10 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v12 + 40) = v10;
    sub_100050F74(&v17, v12);
    swift_willThrow();
    v5 = 0xE400000000000000;
    v6 = 1702194274;
    goto LABEL_25;
  }

  v13 = v0[3];
  if (v13 < 0.0 || v13 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v15 + 40) = v13;
    sub_100050F74(&v17, v15);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 0x6168706C61;
    goto LABEL_25;
  }
}

uint64_t sub_100CAA354()
{
  String.hash(into:)();
}

unint64_t sub_100CAA468@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB718(*a1);
  *a2 = result;
  return result;
}

void sub_100CAA498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579570;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6168706C61;
  if (v2 != 3)
  {
    v8 = 0x70735F726F6C6F63;
    v7 = 0xEB00000000656361;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E65657267;
  if (v2 != 1)
  {
    v10 = 1702194274;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100CAA574()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x6168706C61;
  if (v1 != 3)
  {
    v4 = 0x70735F726F6C6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E65657267;
  if (v1 != 1)
  {
    v5 = 1702194274;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100CAA64C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB718(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100CAA674(uint64_t a1)
{
  v2 = sub_100CAC9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CAA6B0(uint64_t a1)
{
  v2 = sub_100CAC9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Color.RGBA.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100CAB764(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Color.RGBA.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1A040);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CAC9FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v10) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v10) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v10) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v10) = *(v3 + 32);
  v11 = 4;
  sub_100CACA50();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v10) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1FC0 != -1)
  {
    swift_once();
  }

  v10 = static TSContentLanguage.Models.Color.RGBA.version;
  v11 = 6;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Color.RGBA.isEquivalent(to:)(uint64_t a1)
{
  if (sub_1007C87EC(*v1, *a1) && sub_1007C87EC(*(v1 + 8), *(a1 + 8)) && sub_1007C87EC(*(v1 + 16), *(a1 + 16)) && sub_1007C87EC(*(v1 + 24), *(a1 + 24)))
  {
    v3 = *(a1 + 32);
    if (*(v1 + 32))
    {
      v4 = 1650946675;
    }

    else
    {
      v4 = 13168;
    }

    if (*(v1 + 32))
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3)
    {
      v6 = 1650946675;
    }

    else
    {
      v6 = 13168;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE200000000000000;
    }

    if (v4 == v6 && v5 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100CAAB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

void *TSContentLanguage.Models.Color.RGBA.ColorSpace.version.unsafeMutableAddressor()
{
  if (qword_1019F1FC8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Color.RGBA.ColorSpace.version;
}

uint64_t TSContentLanguage.Models.Color.RGBA.ColorSpace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018768A8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TSContentLanguage.Models.Color.RGBA.ColorSpace.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1650946675;
  }

  else
  {
    return 13168;
  }
}

uint64_t sub_100CAACB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1650946675;
  }

  else
  {
    v3 = 13168;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100CAAD44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CAADB4()
{
  String.hash(into:)();
}

Swift::Int sub_100CAAE10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CAAE7C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1018768A8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100CAAEDC(uint64_t *a1@<X8>)
{
  v2 = 13168;
  if (*v1)
  {
    v2 = 1650946675;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ColorO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100810AD0(a2, v15);
  v3 = v16;
  v11 = v15[1];
  v12 = v15[0];
  sub_100810AD0(a1, v13);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13[0], v12), vceqq_f64(v13[1], v11)))) & 1) == 0)
  {
    return 0;
  }

  if (v14)
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (v14)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3)
  {
    v7 = 1650946675;
  }

  else
  {
    v7 = 13168;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    v2 = *(a1 + 32) == 0;
    if (*(a1 + 32))
    {
      v3 = 1650946675;
    }

    else
    {
      v3 = 13168;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (*(a2 + 32))
    {
      v5 = 1650946675;
    }

    else
    {
      v5 = 13168;
    }

    if (*(a2 + 32))
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_100CAB1BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876778, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100CAB208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A008A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CAB670();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_12;
  }

  LOBYTE(v21[0]) = 1;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000025 && v10 == 0x8000000101589AD0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
LABEL_12:
        sub_100020E58(a1, a1[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(v21, v21[3]);
        dispatch thunk of SingleValueDecodingContainer.decode(_:)();

        sub_100005070(v21);
LABEL_13:
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101478600;
        *(v15 + 16) = 0;
        swift_willThrow();
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v24 = 2;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v21[0];
  if (v21[0])
  {
    if (qword_1019F1FB8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Color.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v16[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v17 = xmmword_101463530;
      *(v17 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B84E4(0, v18, 0, v22);
  (*(v6 + 8))(v8, v5);

  v19 = v23;
  if (v23 == 2)
  {
    goto LABEL_13;
  }

  result = sub_100005070(a1);
  v20 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v20;
  *(a2 + 32) = v19 & 1;
  return result;
}

unint64_t sub_100CAB670()
{
  result = qword_101A1A030;
  if (!qword_101A1A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A030);
  }

  return result;
}

unint64_t sub_100CAB6C4()
{
  result = qword_101A1A038;
  if (!qword_101A1A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A038);
  }

  return result;
}

unint64_t sub_100CAB718(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018767E0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100CAB764@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v94 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v96 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = &v90 - v6;
  __chkstk_darwin(v7);
  v98 = &v90 - v8;
  __chkstk_darwin(v9);
  v99 = &v90 - v10;
  __chkstk_darwin(v11);
  v100 = &v90 - v12;
  v13 = type metadata accessor for CodingUserInfoKey();
  v14 = *(v13 - 8);
  v101 = v13;
  v102 = v14;
  __chkstk_darwin(v13);
  v95 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  __chkstk_darwin(v22);
  v24 = &v90 - v23;
  __chkstk_darwin(v25);
  v27 = &v90 - v26;
  v28 = sub_1005B981C(&qword_101A1A0C8);
  v103 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v90 - v29;
  v31 = a1[3];
  v105 = a1;
  sub_100020E58(a1, v31);
  sub_100CAC9FC();
  v32 = v104;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    v36 = v105;
    return sub_100005070(v36);
  }

  v104 = v27;
  v93 = v24;
  v92 = v21;
  v91 = v18;
  LOBYTE(v106) = 5;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = 0;
  v38 = v105;
  if (v34)
  {
    if (v33 == 0xD00000000000002ALL && v34 == 0x8000000101589B00)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v41[1] = 0;
        v41[2] = 0;
        *v41 = 0;
        swift_willThrow();
LABEL_35:
        (*(v103 + 8))(v30, v28);
        v36 = v38;
        return sub_100005070(v36);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v110 = 6;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v106;
  if (v106)
  {
    if (qword_1019F1FC0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Color.RGBA.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v42[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v43 = xmmword_101463530;
      *(v43 + 16) = 0;
      swift_willThrow();

      goto LABEL_35;
    }
  }

  sub_100020E58(v38, v38[3]);
  v44 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v106))
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *&v106;
  }

  if (v45 >= 0.0 && v45 <= 1.0)
  {

    v46 = v102;
    goto LABEL_31;
  }

  v107 = sub_1005B981C(&qword_101A02780);
  v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v106 = xmmword_101463BB0;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v47 = swift_allocError();
  *(v48 + 40) = v45;
  sub_100050F74(&v106, v48);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v49 = 6579570;
  v49[1] = 0xE300000000000000;
  v49[2] = v47;
  swift_willThrow();
  v90 = 0;
  v50 = v100;
  CodingUserInfoKey.init(rawValue:)();
  v51 = v101;
  v46 = v102;
  result = (*(v102 + 48))(v50, 1, v101);
  v52 = v104;
  if (result == 1)
  {
    __break(1u);
    goto LABEL_81;
  }

  (*(v46 + 32))(v104, v50, v51);
  if (!*(v44 + 16) || (v53 = sub_1007C8514(v52), (v54 & 1) == 0))
  {
    (*(v46 + 8))(v52, v51);
LABEL_34:
    swift_willThrow();

    goto LABEL_35;
  }

  sub_100064288(*(v44 + 56) + 32 * v53, &v106);
  (*(v46 + 8))(v52, v51);
  if (!swift_dynamicCast() || (v109 & 1) == 0)
  {
    goto LABEL_34;
  }

  v45 = 0.0;
  v35 = v90;
LABEL_31:
  sub_100020E58(v38, v38[3]);
  v104 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v35)
  {
LABEL_43:
    v60 = v99;
    CodingUserInfoKey.init(rawValue:)();
    v61 = v101;
    result = (*(v46 + 48))(v60, 1, v101);
    if (result != 1)
    {
      v62 = v93;
      (*(v46 + 32))(v93, v60, v61);
      if (*(v104 + 16) && (v63 = sub_1007C8514(v62), (v64 & 1) != 0))
      {
        sub_100064288(*(v104 + 56) + 32 * v63, &v106);
        (*(v46 + 8))(v62, v61);
        v65 = swift_dynamicCast();
        v56 = v103;
        if (v65 && (v109 & 1) != 0)
        {

          v55 = 0.0;
          goto LABEL_49;
        }
      }

      else
      {
        (*(v46 + 8))(v62, v61);
        v56 = v103;
      }

      swift_willThrow();

      (*(v56 + 8))(v30, v28);
LABEL_79:
      v36 = v38;
      return sub_100005070(v36);
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (BYTE8(v106))
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *&v106;
  }

  if (v55 < 0.0 || v55 > 1.0)
  {
    v107 = sub_1005B981C(&qword_101A02780);
    v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v106 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v57 = swift_allocError();
    *(v58 + 40) = v55;
    sub_100050F74(&v106, v58);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v59 = 0x6E65657267;
    v59[1] = 0xE500000000000000;
    v59[2] = v57;
    swift_willThrow();
    v46 = v102;
    goto LABEL_43;
  }

  v56 = v103;
LABEL_49:
  sub_100020E58(v38, v38[3]);
  v66 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 2;
  v104 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v106))
  {
    v67 = 0.0;
  }

  else
  {
    v67 = *&v106;
  }

  v68 = v97;
  if (v67 < 0.0 || v67 > 1.0)
  {
    v107 = sub_1005B981C(&qword_101A02780);
    v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v106 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v69 = swift_allocError();
    *(v70 + 40) = v67;
    sub_100050F74(&v106, v70);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v71 = 1702194274;
    v71[1] = 0xE400000000000000;
    v71[2] = v69;
    swift_willThrow();
    v72 = v98;
    CodingUserInfoKey.init(rawValue:)();
    v74 = v101;
    v73 = v102;
    result = (*(v102 + 48))(v72, 1, v101);
    if (result != 1)
    {
      v75 = *(v73 + 32);
      v76 = v92;
      v75(v92, v72, v74);
      if (!*(v66 + 16) || (v77 = sub_1007C8514(v76), v76 = v92, (v78 & 1) == 0))
      {
LABEL_77:
        (*(v102 + 8))(v76, v74);
LABEL_78:
        swift_willThrow();

        (*(v56 + 8))(v104, v28);
        goto LABEL_79;
      }

      sub_100064288(*(v66 + 56) + 32 * v77, &v106);
      (*(v102 + 8))(v76, v74);
      if (!swift_dynamicCast() || (v109 & 1) == 0)
      {
        goto LABEL_78;
      }

      v67 = 0.0;
      v68 = v97;
      goto LABEL_64;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_64:
  sub_100020E58(v38, v38[3]);
  v79 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v106))
  {
    v80 = 1.0;
  }

  else
  {
    v80 = *&v106;
  }

  if (v80 >= 0.0 && v80 <= 1.0)
  {

LABEL_76:
    sub_100020E58(v38, v38[3]);
    dispatch thunk of Decoder.userInfo.getter();
    v110 = 4;
    sub_100CACEEC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

    v88 = (v106 == 2) | v106;
    (*(v103 + 8))(v104, v28);
    result = sub_100005070(v105);
    v89 = v94;
    *v94 = v45;
    v89[1] = v55;
    v89[2] = v67;
    v89[3] = v80;
    *(v89 + 32) = v88 & 1;
    return result;
  }

  v107 = sub_1005B981C(&qword_101A02780);
  v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v106 = xmmword_101463BB0;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v81 = swift_allocError();
  *(v82 + 40) = v80;
  sub_100050F74(&v106, v82);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v83 = 0x6168706C61;
  v83[1] = 0xE500000000000000;
  v83[2] = v81;
  swift_willThrow();
  CodingUserInfoKey.init(rawValue:)();
  v74 = v101;
  v84 = v102;
  result = (*(v102 + 48))(v68, 1, v101);
  if (result != 1)
  {
    v85 = *(v84 + 32);
    v76 = v91;
    v85(v91, v68, v74);
    if (*(v79 + 16))
    {
      v86 = sub_1007C8514(v76);
      v76 = v91;
      if (v87)
      {
        sub_100064288(*(v79 + 56) + 32 * v86, &v106);
        (*(v102 + 8))(v76, v74);
        if (swift_dynamicCast() && (v109 & 1) != 0)
        {

          v80 = 1.0;
          goto LABEL_76;
        }

        goto LABEL_78;
      }
    }

    goto LABEL_77;
  }

LABEL_83:
  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_100CAC9FC()
{
  result = qword_101A1A048;
  if (!qword_101A1A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A048);
  }

  return result;
}

unint64_t sub_100CACA50()
{
  result = qword_101A1A050;
  if (!qword_101A1A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A050);
  }

  return result;
}

unint64_t sub_100CACAD0()
{
  result = qword_101A1A058;
  if (!qword_101A1A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A058);
  }

  return result;
}

unint64_t sub_100CACB24()
{
  result = qword_101A1A060;
  if (!qword_101A1A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A060);
  }

  return result;
}

unint64_t sub_100CACBB8()
{
  result = qword_101A1A068;
  if (!qword_101A1A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A068);
  }

  return result;
}

unint64_t sub_100CACC0C(uint64_t a1)
{
  result = sub_100B10DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100CACC74()
{
  result = qword_101A1A070;
  if (!qword_101A1A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A070);
  }

  return result;
}

unint64_t sub_100CACCCC()
{
  result = qword_101A1A078;
  if (!qword_101A1A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A078);
  }

  return result;
}

uint64_t sub_100CACD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100CACD88()
{
  result = qword_101A1A080;
  if (!qword_101A1A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A080);
  }

  return result;
}

unint64_t sub_100CACDDC()
{
  result = qword_101A1A088;
  if (!qword_101A1A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A088);
  }

  return result;
}

unint64_t sub_100CACE30(uint64_t a1)
{
  result = sub_100B10D70();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100CACE98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100CACEEC()
{
  result = qword_101A1A090;
  if (!qword_101A1A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A090);
  }

  return result;
}

uint64_t sub_100CACF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100CACF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100CAD020()
{
  result = qword_101A1A098;
  if (!qword_101A1A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A098);
  }

  return result;
}

unint64_t sub_100CAD078()
{
  result = qword_101A1A0A0;
  if (!qword_101A1A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A0A0);
  }

  return result;
}

unint64_t sub_100CAD0D0()
{
  result = qword_101A1A0A8;
  if (!qword_101A1A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A0A8);
  }

  return result;
}

unint64_t sub_100CAD128()
{
  result = qword_101A1A0B0;
  if (!qword_101A1A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A0B0);
  }

  return result;
}

unint64_t sub_100CAD180()
{
  result = qword_101A1A0B8;
  if (!qword_101A1A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A0B8);
  }

  return result;
}

unint64_t sub_100CAD1D8()
{
  result = qword_101A1A0C0;
  if (!qword_101A1A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A0C0);
  }

  return result;
}

id sub_100CAD238()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146CE00;
  *(v0 + 32) = sub_100CAD324();
  *(v0 + 40) = sub_100CAD40C();
  v1 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:1];
  [v3 setSpacing:8.0];
  return v3;
}

id sub_100CAD324()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1005D42AC(v4, v6);

  return v7;
}

uint64_t sub_100CAD40C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v65 - v6;
  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 imageNamed:v7];

  v10 = _swiftEmptyArrayStorage;
  v69 = v4;
  if (v9)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v8 imageNamed:v11];

    if (v12)
    {
      v13 = String._bridgeToObjectiveC()();
      v14 = [v8 imageNamed:v13];

      if (v14)
      {
        sub_1005B981C(&unk_1019F4D60);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_10146E8A0;
        *(v15 + 32) = v9;
        *(v15 + 40) = v12;
        *(v15 + 48) = v14;
        sub_1005B981C(&unk_1019F61D0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10146C4D0;
        v17 = objc_opt_self();
        v67 = v9;
        v9 = v12;
        v66 = v14;
        v18 = [v17 mainBundle];
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        *(v16 + 32) = v22;
        *(v16 + 40) = v24;
        v25 = [v17 mainBundle];
        v26 = String._bridgeToObjectiveC()();
        v27 = String._bridgeToObjectiveC()();
        v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(v16 + 48) = v29;
        *(v16 + 56) = v31;
        v32 = [v17 mainBundle];
        v33 = String._bridgeToObjectiveC()();
        v34 = String._bridgeToObjectiveC()();
        v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = v15;
        *(v16 + 64) = v36;
        v10 = _swiftEmptyArrayStorage;
        v40 = v16;
        *(v16 + 72) = v38;

        v12 = v67;
      }

      else
      {
        v39 = _swiftEmptyArrayStorage;
        v40 = _swiftEmptyArrayStorage;
      }

      v9 = v12;
    }

    else
    {
      v39 = _swiftEmptyArrayStorage;
      v40 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
    v39 = _swiftEmptyArrayStorage;
  }

  v41 = type metadata accessor for IndexSet();
  v42 = *(*(v41 - 8) + 56);
  v42(v70, 1, 1, v41);
  sub_10097B3F0();
  if ((v43 & 0xFF00) != 0x200 && (v43 & 0x100) == 0 && (v43 & 1) == 0)
  {
    v44 = v69;
    IndexSet.init(integer:)();
    v45 = v70;
    sub_100CAE2B0(v70);
    v42(v44, 0, 1, v41);
    sub_1005D9088(v44, v45);
  }

  v69 = swift_allocObject();
  *(v69 + 2) = v1;
  v72 = 1;
  v46 = (v39 >> 62);
  if (!(v39 >> 62))
  {
    v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_16;
    }

LABEL_33:
    v64 = v1;

    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_34:
      sub_100006370(0, &qword_1019F6D00);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_29;
    }

LABEL_28:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00);
LABEL_29:

    v56 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v58 = [v56 initWithArrangedSubviews:isa];

    [v58 setAxis:0];
    [v58 setAlignment:0];
    [v58 setDistribution:1];
    [v58 setSpacing:1.0];
    v59 = v58;
    v60 = [v59 heightAnchor];
    v61 = [v60 constraintGreaterThanOrEqualToConstant:34.0];

    [v61 setActive:1];
    v62 = [v59 heightAnchor];

    v63 = [v62 constraintGreaterThanOrEqualToConstant:34.0];
    [v63 setActive:1];

    sub_1000505D0(v72);

    sub_100CAE2B0(v70);
    return v59;
  }

LABEL_32:
  v47 = _CocoaArrayWrapper.endIndex.getter();
  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_16:
  v71 = v10;
  v1 = v1;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v67 = (v39 & 0xFFFFFFFFFFFFFF8);
    if (v46)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = 0;
    v46 = v39;
    v51 = v39 & 0xC000000000000001;
    v52 = v49 & ~(v49 >> 63);
    do
    {
      if (v52 == v50)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v51)
      {
        v53 = v46;
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v67 + 2))
        {
          goto LABEL_31;
        }

        v53 = v46;
        v54 = v46[v50 + 4];
      }

      v55 = v54;
      v10 = (v50 + 1);
      v39 = sub_1005D2FA4(v50, v54, v53, v70, &v72, v1, 0, sub_100CAE2A8, v69, 0, v40, ObjectType);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v50 = v10;
    }

    while (v47 != v10);

    if (v71 >> 62)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_100CADCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLiOSMiniFormatterConnectionLineBuilder_lineDataProvider);
  sub_10097B3F0();
  if (v4 & 0xFF00) == 0x200 || (v4)
  {
    return;
  }

  v5 = v3;
  v6 = 0;
  if (!IndexSet.contains(_:)(0))
  {
    if (!IndexSet.contains(_:)(1))
    {
      v6 = IndexSet.contains(_:)(2);
      if (v6 == v5)
      {
        return;
      }

      goto LABEL_9;
    }

    v6 = 2;
  }

  if (v6 == v5)
  {
    return;
  }

LABEL_9:
  v7 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A1CE20))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v7 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  v11 = v10;
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = 0;
  }

  [v10 setConnectionLineType:v6];
}

void *sub_100CADE50()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  v1 = sub_10068AFC0();
  if (v1)
  {
    v2 = v1;
    if (v1 >> 62)
    {
      type metadata accessor for CRLBoardItem(0);
      v3 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLBoardItem(0);
      v3 = v2;
    }

    sub_10063F990(v3);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100CADF38(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v12);
  type metadata accessor for CRLConnectionLineItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = v11;
  v5 = sub_10068AFC0();
  if (!v5)
  {

LABEL_5:
    v8 = sub_1005D518C(a1, a2);
    return v8 & 1;
  }

  v6 = v5;
  v12[0] = v11;
  __chkstk_darwin(v5);
  v10[2] = v12;
  v7 = sub_100C33540(sub_100CAE318, v10, v6);

  v8 = v7;
  return v8 & 1;
}

uint64_t sub_100CAE050(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v12);
  type metadata accessor for CRLConnectionLineItem();
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v4 = v11;
  v5 = sub_10068AFC0();
  if (!v5)
  {

LABEL_5:
    v8 = sub_1005D518C(a1, a2);
    return v8 & 1;
  }

  v6 = v5;
  v12[0] = v11;
  __chkstk_darwin(v5);
  v10[2] = v12;
  v7 = sub_100C33540(sub_100CAE234, v10, v6);

  v8 = v7;
  return v8 & 1;
}

id sub_100CAE178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterConnectionLineBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CAE2B0(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F4CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TSContentLanguage.Models.Group.init(identifier:geometry:aspectRatioLocked:description:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v24 = a5;
  *(&v24 + 1) = a6;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  v16 = a3[4];
  v17 = *(a3 + 20) | (*(a3 + 42) << 16);
  sub_100CAF4F0(a7);
  v44 = v8;
  if (v8)
  {
    v32 = a1;
    v33 = a2;
    v34 = v12;
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = BYTE2(v17);
    v41 = a4;
    v42 = v24;
    v43 = a7;
    return sub_1008127F4(&v32);
  }

  else
  {
    *&v26 = a1;
    *(&v26 + 1) = a2;
    *&v27 = v12;
    *(&v27 + 1) = v13;
    *&v28 = v14;
    *(&v28 + 1) = v15;
    *&v29 = v16;
    BYTE10(v29) = BYTE2(v17);
    WORD4(v29) = v17;
    BYTE11(v29) = a4;
    v30 = v24;
    v31 = a7;
    v32 = a1;
    v33 = a2;
    v34 = v12;
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = BYTE2(v17);
    v41 = a4;
    v42 = v24;
    v43 = a7;
    sub_100812848(&v26, v25);
    result = sub_1008127F4(&v32);
    v19 = v29;
    v20 = v30;
    *(a8 + 32) = v28;
    *(a8 + 48) = v19;
    *(a8 + 64) = v20;
    *(a8 + 80) = v31;
    v21 = v27;
    *a8 = v26;
    *(a8 + 16) = v21;
  }

  return result;
}

id sub_100CAE4B8()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Group.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Group.version.unsafeMutableAddressor()
{
  if (qword_1019F1FD0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Group.version;
}

id static TSContentLanguage.Models.Group.version.getter()
{
  if (qword_1019F1FD0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Group.version;

  return v1;
}

uint64_t TSContentLanguage.Models.Group.canvasObject.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = *(v1 + 80);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  type metadata accessor for TSContentLanguage.Models.CanvasObject();
  swift_storeEnumTagMultiPayload();
  return sub_100812848(v1, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Group.validate()()
{
  v1 = *(v0 + 80);
  v7[3] = sub_1005B981C(&qword_101A1A100);
  v7[4] = sub_10001A2F8(&qword_101A1A108, &qword_101A1A100);
  v7[0] = 1;
  v6[3] = sub_1005B981C(&qword_101A00880);
  v6[4] = sub_10001A2F8(&qword_101A1A110, &qword_101A00880);
  v6[0] = v1;
  if (*(v1 + 16))
  {

    sub_100005070(v6);
    sub_100005070(v7);
  }

  else
  {
    sub_100852F1C();
    v2 = swift_allocError();
    v4 = v3;
    sub_10000630C(v7, v3);
    sub_10000630C(v6, v4 + 40);
    swift_willThrow();

    sub_100005070(v6);
    sub_100005070(v7);
    sub_100810B2C();
    swift_allocError();
    *v5 = 0x6E6572646C696863;
    v5[1] = 0xE800000000000000;
    v5[2] = v2;
    swift_willThrow();
  }
}

uint64_t sub_100CAE7F8()
{
  String.hash(into:)();
}

unint64_t sub_100CAE92C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAF68C(*a1);
  *a2 = result;
  return result;
}

void sub_100CAE95C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEB000000006E6F69;
  v8 = 0x7470697263736564;
  if (v2 != 3)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x797274656D6F6567;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x8000000101551A00;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100CAEA58()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6E6572646C696863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x797274656D6F6567;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100CAEB50@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAF68C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100CAEB78(uint64_t a1)
{
  v2 = sub_100CB00EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CAEBB4(uint64_t a1)
{
  v2 = sub_100CB00EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Group.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100CAF6D8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100CAEC4C(uint64_t *a1)
{
  v1 = *a1;
  v8[3] = sub_1005B981C(&qword_101A1A100);
  v8[4] = sub_10001A2F8(&qword_101A1A108, &qword_101A1A100);
  v8[0] = 1;
  v7[3] = sub_1005B981C(&qword_101A00880);
  v7[4] = sub_10001A2F8(&qword_101A1A110, &qword_101A00880);
  v7[0] = v1;
  if (*(v1 + 16))
  {

    sub_100005070(v7);
    return sub_100005070(v8);
  }

  else
  {
    sub_100852F1C();
    v3 = swift_allocError();
    v5 = v4;
    sub_10000630C(v8, v4);
    sub_10000630C(v7, v5 + 40);
    swift_willThrow();

    sub_100005070(v7);
    sub_100005070(v8);
    sub_100810B2C();
    swift_allocError();
    *v6 = 0x6E6572646C696863;
    v6[1] = 0xE800000000000000;
    v6[2] = v3;
    return swift_willThrow();
  }
}

uint64_t TSContentLanguage.Models.Group.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1A118);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CB00EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v13 = *(v3 + 16);
    v14[0] = v9;
    *(v14 + 11) = *(v3 + 43);
    v12 = 1;
    sub_1007C869C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 80);
    v12 = 4;
    sub_1005B981C(&qword_101A00880);
    sub_100CB0140();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1FD0 != -1)
    {
      swift_once();
    }

    *&v13 = static TSContentLanguage.Models.Group.version;
    v12 = 6;
    type metadata accessor for TSCLVersion();
    sub_100CB044C(&qword_101A00458, type metadata accessor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Group.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = *(a1 + 56) | (*(a1 + 58) << 16);
  v5 = *(a1 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    v8 = *(v1 + 24);
    v10 = *(v1 + 32);
    v9 = *(v1 + 40);
    v11 = *(v1 + 48);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (!sub_1007C87EC(*(v1 + 16), *(a1 + 16)) || !sub_1007C87EC(v8, v12) || !sub_1007C87EC(v10, v14) || !sub_1007C87EC(v9, v13) || !sub_1007C87EC(v11, v15) || ((v4 ^ v3) & 1) != 0 || ((v4 & 0x100) == 0) == (v3 & 0x100) >> 8 || ((v4 & 0x10000) == 0) == (v3 & 0x10000u) >> 16)
    {
      return 0;
    }
  }

  v6 = *(v1 + 59);
  v7 = *(a1 + 59);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v16 = *(v1 + 72);
  v17 = *(a1 + 72);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v17 || (*(v1 + 64) != *(a1 + 64) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v18 = *(v1 + 80);
  v19 = *(a1 + 80);

  return sub_100B5E6F8(v19, v18);
}

uint64_t sub_100CAF2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO5GroupV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5GroupV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 56) | (*(a1 + 58) << 16);
  v10 = *(a2 + 56) | (*(a2 + 58) << 16);
  v11 = *(a2 + 56);
  if (*(a1 + 56) == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0 || *(a1 + 48) != *(a2 + 48) || ((v10 ^ v9) & 1) != 0 || ((((*(a2 + 56) & 0x100) == 0) ^ ((*(a1 + 56) & 0x100) >> 8)) & 1) == 0 || ((v10 & 0x10000) == 0) == (v9 & 0x10000u) >> 16)
  {
    return 0;
  }

  v12 = *(a1 + 59);
  v13 = *(a2 + 59);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || v14 != v15)
  {
    v16 = a1;
    v17 = a2;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v17;
    v19 = v18;
    a1 = v16;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_29:
  v20 = *(a1 + 80);
  v21 = *(a2 + 80);

  return sub_1006732CC(v20, v21);
}

uint64_t sub_100CAF4F0(uint64_t a1)
{
  v8[3] = sub_1005B981C(&qword_101A1A100);
  v8[4] = sub_10001A2F8(&qword_101A1A108, &qword_101A1A100);
  v8[0] = 1;
  v7[3] = sub_1005B981C(&qword_101A00880);
  v7[4] = sub_10001A2F8(&qword_101A1A110, &qword_101A00880);
  v7[0] = a1;
  if (*(a1 + 16))
  {

    sub_100005070(v7);
    return sub_100005070(v8);
  }

  else
  {
    sub_100852F1C();
    v3 = swift_allocError();
    v5 = v4;
    sub_10000630C(v8, v4);
    sub_10000630C(v7, v5 + 40);
    swift_willThrow();

    sub_100005070(v7);
    sub_100005070(v8);
    sub_100810B2C();
    swift_allocError();
    *v6 = 0x6E6572646C696863;
    v6[1] = 0xE800000000000000;
    v6[2] = v3;
    return swift_willThrow();
  }
}

unint64_t sub_100CAF68C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018768F8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100CAF6D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A00888);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = a1[3];
  v53 = a1;
  sub_100020E58(a1, v11);
  sub_100CB00EC();
  v12 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    v15 = v53;
LABEL_4:
    sub_100005070(v15);
  }

  v49 = v6;
  v52 = v8;
  LOBYTE(v60) = 5;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v53;
  if (v14)
  {
    if (v13 == 0xD000000000000025 && v14 == 0x8000000101589A00)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v20[1] = 0;
        v20[2] = 0;
        *v20 = 0;
        swift_willThrow();
LABEL_14:
        (*(v52 + 8))(v10, v7);
        v15 = v17;
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v54) = 6;
  sub_100CB044C(&qword_101A00400, type metadata accessor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v60;
  if (v60)
  {
    if (qword_1019F1FD0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Group.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v21[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v22 = xmmword_101463530;
      *(v22 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v17, v17[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  v24 = sub_1007B87CC(0, v23, 0, 0);
  v26 = v25;
  v47 = v24;

  v27 = v17[3];
  v48 = v17[4];
  sub_100020E58(v17, v27);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v54) = 1;
  sub_1007C7E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v28 = v60;
  *(&v46 + 1) = v61;
  v51 = v62;
  v49 = v63;
  v48 = v64;
  v73 = v65 | (BYTE2(v65) << 16);
  sub_100020E58(v17, v17[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  v30 = sub_1007B87F4(2, v29, 0, 0);
  *&v46 = v28;
  v45 = v30;

  sub_100020E58(v17, v17[3]);
  v31 = dispatch thunk of Decoder.userInfo.getter();
  v32 = sub_1007B87CC(3, v31, 0, 0);
  v34 = v33;
  v44 = v32;

  sub_100020E58(v17, v17[3]);
  v35 = dispatch thunk of Decoder.userInfo.getter();
  v36 = sub_1007C09C0(4u, v35, sub_100CAEC4C, 0, 0);
  (*(v52 + 8))(v10, v7);

  *&v54 = v47;
  *(&v54 + 1) = v26;
  v55 = v46;
  v37 = *(&v46 + 1);
  *&v56 = v51;
  *(&v56 + 1) = v49;
  *&v57 = v48;
  LOWORD(v28) = v73;
  v38 = HIWORD(v73);
  BYTE10(v57) = BYTE2(v73);
  WORD4(v57) = v73;
  v39 = v45;
  BYTE11(v57) = v45;
  v40 = v44;
  *&v58 = v44;
  *(&v58 + 1) = v34;
  v59 = v36;
  sub_100812848(&v54, &v60);
  sub_100005070(v53);
  v60 = v47;
  v61 = v26;
  v62 = v46;
  v63 = v37;
  v64 = v51;
  v65 = v49;
  v66 = v48;
  v68 = v38;
  v67 = v28;
  v69 = v39;
  v70 = v40;
  v71 = v34;
  v72 = v36;
  result = sub_1008127F4(&v60);
  v41 = v57;
  v42 = v50;
  *(v50 + 32) = v56;
  *(v42 + 48) = v41;
  *(v42 + 64) = v58;
  *(v42 + 80) = v59;
  v43 = v55;
  *v42 = v54;
  *(v42 + 16) = v43;
  return result;
}

unint64_t sub_100CB00EC()
{
  result = qword_101A1A120;
  if (!qword_101A1A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A120);
  }

  return result;
}

unint64_t sub_100CB0140()
{
  result = qword_101A1A128;
  if (!qword_101A1A128)
  {
    sub_1005C4E5C(&qword_101A00880);
    sub_100CB044C(&qword_101A114B8, type metadata accessor for TSContentLanguage.Models.CanvasObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A128);
  }

  return result;
}

unint64_t sub_100CB01F4(uint64_t a1)
{
  result = sub_100CB021C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100CB021C()
{
  result = qword_101A1A130;
  if (!qword_101A1A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A130);
  }

  return result;
}

unint64_t sub_100CB0270(uint64_t a1)
{
  result = sub_100B10F68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100CB0298(void *a1)
{
  a1[2] = sub_100B15D6C();
  a1[3] = sub_100B15E98();
  result = sub_100CB02D0();
  a1[4] = result;
  return result;
}

unint64_t sub_100CB02D0()
{
  result = qword_101A1A138;
  if (!qword_101A1A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A138);
  }

  return result;
}

unint64_t sub_100CB0348()
{
  result = qword_101A1A140;
  if (!qword_101A1A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A140);
  }

  return result;
}

unint64_t sub_100CB03A0()
{
  result = qword_101A1A148;
  if (!qword_101A1A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A148);
  }

  return result;
}

unint64_t sub_100CB03F8()
{
  result = qword_101A1A150;
  if (!qword_101A1A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A150);
  }

  return result;
}

uint64_t sub_100CB044C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100CB0494()
{
  String.hash(into:)();
}

uint64_t sub_100CB05D0()
{
  String.hash(into:)();
}

uint64_t sub_100CB0748()
{
  String.hash(into:)();
}

uint64_t sub_100CB08A8()
{
  String.hash(into:)();
}

uint64_t sub_100CB0A10()
{
  String.hash(into:)();
}

uint64_t sub_100CB0B54()
{
  String.hash(into:)();
}

uint64_t sub_100CB0C7C()
{
  String.hash(into:)();
}

uint64_t sub_100CB0DE0()
{
  String.hash(into:)();
}

uint64_t sub_100CB0F04()
{
  String.hash(into:)();
}

uint64_t sub_100CB102C()
{
  String.hash(into:)();
}

uint64_t sub_100CB112C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100962394(a2, a3);
  String.hash(into:)();
}

unint64_t sub_100CB12DC(uint64_t a1, int64_t a2)
{
  if (a2 <= 3)
  {
    v8 = 0xD000000000000026;
    if (a2 != 3)
    {
      v8 = a1;
    }

    if (a2 == 2)
    {
      v8 = 0xD000000000000024;
    }

    v9 = 0xD000000000000023;
    if (a2 != 1)
    {
      v9 = a1;
    }

    if (!a2)
    {
      v9 = 0xD000000000000029;
    }

    if (a2 <= 1)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = 0xD000000000000024;
    if (a2 == 8)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v4 = a1;
    }

    if (a2 != 7)
    {
      v3 = v4;
    }

    if (a2 != 6)
    {
      v2 = v3;
    }

    v5 = 0xD000000000000025;
    v6 = 0xD000000000000027;
    if (a2 != 5)
    {
      v6 = a1;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v2;
    }
  }

  sub_100962394(a1, a2);
  return v7;
}

void *sub_100CB1808()
{
  result = sub_100CB1828();
  qword_101AD7A30 = result;
  return result;
}

void *sub_100CB1828()
{
  sub_1005B981C(&qword_101A1A1A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1014A04A0;
  *(inited + 32) = UIFontWeightUltraLight;
  *(inited + 40) = 0xD000000000000029;
  *(inited + 48) = 0x8000000101551FA0;
  *(inited + 56) = UIFontWeightThin;
  *(inited + 64) = 0xD000000000000023;
  *(inited + 72) = 0x8000000101551FD0;
  *(inited + 80) = UIFontWeightLight;
  *(inited + 88) = 0xD000000000000024;
  *(inited + 96) = 0x8000000101552000;
  *(inited + 104) = UIFontWeightRegular;
  *(inited + 112) = 0xD000000000000026;
  *(inited + 120) = 0x8000000101552030;
  *(inited + 128) = UIFontWeightMedium;
  *(inited + 136) = 0xD000000000000025;
  *(inited + 144) = 0x8000000101552060;
  *(inited + 152) = UIFontWeightSemibold;
  *(inited + 160) = 0xD000000000000027;
  *(inited + 168) = 0x8000000101552090;
  *(inited + 176) = UIFontWeightBold;
  *(inited + 184) = 0xD000000000000023;
  *(inited + 192) = 0x80000001015520C0;
  *(inited + 200) = UIFontWeightHeavy;
  *(inited + 208) = 0xD000000000000024;
  *(inited + 216) = 0x80000001015520F0;
  *(inited + 224) = UIFontWeightBlack;
  *(inited + 232) = 0xD000000000000024;
  *(inited + 240) = 0x8000000101552120;
  v1 = sub_100BD8F00(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A1A1A8);
  swift_arrayDestroy();
  return v1;
}

void *sub_100CB1A1C()
{
  result = sub_100CB1A3C();
  qword_101AD7A38 = result;
  return result;
}

void *sub_100CB1A3C()
{
  if (qword_1019F1FD8 == -1)
  {
    goto LABEL_2;
  }

LABEL_25:
  swift_once();
LABEL_2:
  v0 = qword_101AD7A30;
  v1 = qword_101AD7A30 + 64;
  v2 = 1 << *(qword_101AD7A30 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_101AD7A30 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
LABEL_7:
    v8 = v6;
    goto LABEL_11;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
LABEL_11:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(v0 + 48) + 8 * v9);
      v11 = (*(v0 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_10000BE7C(v13, v12);
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v21 = v16;
      if (_swiftEmptyDictionarySingleton[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = v15;
          sub_100AAB6B8();
          v15 = v26;
        }
      }

      else
      {
        sub_100A958DC(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_10000BE7C(v13, v12);
        if ((v21 & 1) != (v22 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v4 &= v4 - 1;
      if (v21)
      {
        v7 = v15;

        *(_swiftEmptyDictionarySingleton[7] + 8 * v7) = v10;
        v6 = v8;
        if (v4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
        v23 = (_swiftEmptyDictionarySingleton[6] + 16 * v15);
        *v23 = v13;
        v23[1] = v12;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v10;
        v24 = _swiftEmptyDictionarySingleton[2];
        v19 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v19)
        {
          goto LABEL_24;
        }

        _swiftEmptyDictionarySingleton[2] = v25;
        v6 = v8;
        if (v4)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

id sub_100CB1CC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPSystemFontNames();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CB1D20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100CB23B4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100CB1D50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100CB12DC(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100CB1D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of CREncoder.valueContainer()();
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if (v3)
        {
          return result;
        }
      }

      else if (v3)
      {
        return result;
      }

      goto LABEL_30;
    }

    if (!a3)
    {
      if (v3)
      {
        return result;
      }

      goto LABEL_30;
    }

    if (a3 == 1)
    {
      if (v3)
      {
        return result;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      if (v3)
      {
        return result;
      }
    }

    else if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 == 6)
  {
    if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 == 7)
  {
    if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 != 8)
  {
    goto LABEL_29;
  }

  if (v3)
  {
    return result;
  }

LABEL_30:
  dispatch thunk of CREncoder.CRValueContainer.encode(_:)();
}

Swift::Int sub_100CB1F7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100CB112C(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100CB1FD0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100CB112C(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_100CB20C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100962394(v2, v3);
}

uint64_t sub_100CB20D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100CB2648();
  v7 = sub_100CB2308();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100CB2158@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100CB2744(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100CB21A0(uint64_t a1)
{
  v2 = sub_100CB2648();
  v3 = sub_1007A9874();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100CB2258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A9874();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for String);
}

unint64_t sub_100CB22B0()
{
  result = qword_101A1A180;
  if (!qword_101A1A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A180);
  }

  return result;
}

unint64_t sub_100CB2308()
{
  result = qword_101A1A188;
  if (!qword_101A1A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A188);
  }

  return result;
}

unint64_t sub_100CB2360()
{
  result = qword_101A1A190;
  if (!qword_101A1A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A190);
  }

  return result;
}

uint64_t sub_100CB23B4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0xD000000000000029 && 0x8000000101551FA0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000023 && 0x8000000101551FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000024 && 0x8000000101552000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000026 && 0x8000000101552030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000025 && 0x8000000101552060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000027 && 0x8000000101552090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000023 && 0x80000001015520C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000024 && 0x80000001015520F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000024 && 0x8000000101552120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

unint64_t sub_100CB2648()
{
  result = qword_101A1A198;
  if (!qword_101A1A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A198);
  }

  return result;
}

unint64_t sub_100CB269C(double a1)
{
  if (qword_1019F1FD8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_101AD7A30;
  if (!*(qword_101AD7A30 + 16))
  {
    return 0xD000000000000026;
  }

  v2 = sub_1007C90C4(a1);
  if ((v3 & 1) == 0)
  {
    return 0xD000000000000026;
  }

  v4 = *(*(v1 + 56) + 16 * v2);

  return v4;
}

uint64_t sub_100CB2744(uint64_t a1)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  else
  {
    a1 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v4 = v3;

    if ((a1 != 0xD000000000000011 || 0x8000000101597D40 != v4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x546D65747379732ELL || v4 != 0xEB000000006E6968) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x4C6D65747379732ELL || v4 != 0xEC00000074686769) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x526D65747379732ELL || v4 != 0xEE0072616C756765) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x4D6D65747379732ELL || v4 != 0xED00006D75696465) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x536D65747379732ELL || v4 != 0xEF646C6F62696D65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x426D65747379732ELL || v4 != 0xEB00000000646C6FLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x486D65747379732ELL || v4 != 0xEC00000079766165) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (a1 == 0x426D65747379732ELL && v4 == 0xEC0000006B63616CLL)
      {
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v6 & 1) == 0)
        {
          return a1;
        }
      }

      return 0;
    }

    return 0;
  }

  return a1;
}

uint64_t sub_100CB2B1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100CB2B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_100CB2BD4(uint64_t a1, char a2)
{
  *(v3 + 296) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 248) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 256) = v6;
  *(v3 + 264) = v5;

  return _swift_task_switch(sub_100CB2CD8, v6, v5);
}

uint64_t sub_100CB2CD8()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 240);
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v4 + 32);
  *(v0 + 184) = Strong;
  *(v0 + 192) = v8;
  sub_1005B981C(&qword_101A1A778);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v12, "leaveGroupSession() with delegate %@", 36, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = *(v2 + 16);
  v13(v27, v3 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID, v1);
  swift_beginAccess();
  if (*(*(v4 + 40) + 16))
  {
    v14 = *(v0 + 240);

    sub_10003E994(v14);
    if (v15)
    {
      v16 = *(v0 + 232);
      v17 = *(v0 + 240);
      v18 = *(v0 + 216);

      v13(v16, v17, v18);
      swift_beginAccess();
      sub_100BC2478(0, v16);
      swift_endAccess();
      v13(v16, v17, v18);
      swift_beginAccess();
      sub_100BC2478(0, v16);
      swift_endAccess();
      v13(v16, v17, v18);
      swift_beginAccess();
      sub_100BC4368(0, v16);
      swift_endAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      *(v0 + 272) = v19;
      if (v19)
      {
        v20 = v19;
        v21 = swift_task_alloc();
        *(v0 + 280) = v21;
        *v21 = v0;
        v21[1] = sub_100CB3108;
        v22 = *(v0 + 200);

        return sub_100CC0280(v22, v20);
      }

      else
      {
        v25 = swift_task_alloc();
        *(v0 + 288) = v25;
        *v25 = v0;
        v25[1] = sub_100CB326C;
        v26 = *(v0 + 296);

        return sub_100B52CEC(v26);
      }
    }
  }

  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100CB3108()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v1 + 288) = v3;
  *v3 = v2;
  v3[1] = sub_100CB326C;
  v4 = *(v1 + 296);

  return sub_100B52CEC(v4);
}

uint64_t sub_100CB326C()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_100CB338C, v3, v2);
}

uint64_t sub_100CB338C()
{
  v1 = v0[25];
  v2 = v0[26];

  (*(*v2 + 336))(v1);
  (*(v0[28] + 8))(v0[30], v0[27]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100CB344C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for UUID();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[29] = swift_task_alloc();
  v4 = sub_1005B981C(&qword_101A1A6F8);
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v6;
  v2[37] = v5;

  return _swift_task_switch(sub_100CB35E4, v6, v5);
}

uint64_t sub_100CB35E4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  GroupSession.state.getter();
  (*(v4 + 104))(v2, enum case for GroupSession.State.joined<A>(_:), v3);
  sub_10001A2F8(&qword_101A1A788, &qword_101A1A6F8);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.realTimeSync;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "CRLGroupSessionManager: we should not be attempting group session if the state is already .joined", 97, 2, _swiftEmptyArrayStorage);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v9 = (*(**(v0 + 200) + 296))(*(v0 + 192));
    *(v0 + 304) = v9;
    v12 = qword_1019F2288;
    v13 = v9;

    if (v12 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 232);
    v34 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v35 = static OS_os_log.realTimeSync;
    *(v0 + 312) = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(v0 + 152) = type metadata accessor for CRLOpportunisticGroupActivity(0);
    *(v0 + 160) = sub_10003ADF4(&qword_101A1A6E8, type metadata accessor for CRLOpportunisticGroupActivity);
    GroupSession.activity.getter();
    sub_100020E58((v0 + 128), *(v0 + 152));
    sub_100CB6748(v14);
    v36 = UUID.uuidString.getter();
    v37 = v18;

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);

    v20 = (v14 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v21 = *v20;
    v22 = v20[1];

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    String.append(_:)(v23);

    sub_100CC2E10(v14, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 64) = v24;
    *(inited + 32) = v36;
    *(inited + 40) = v37;
    v25 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
    *(v0 + 320) = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
    v26 = *(v16 + 16);
    *(v0 + 328) = v26;
    *(v0 + 336) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v34, v13 + v25, v15);

    v27 = UUID.uuidString.getter();
    v29 = v28;
    v30 = *(v16 + 8);
    *(v0 + 344) = v30;
    *(v0 + 352) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v34, v15);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    *(inited + 72) = v27;
    *(inited + 80) = v29;
    sub_100005070(v0 + 128);
    v31 = static os_log_type_t.default.getter();
    sub_100005404(v35, &_mh_execute_header, v31, "CRLGroupSessionManager: received board %@ from group session with ID: %@.", 73, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    *(v0 + 360) = static MainActor.shared.getter();
    v33 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100CB3B70, v33, v32);
  }
}

uint64_t sub_100CB3B70()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(sub_100CB3BD4, v1, v2);
}

uint64_t sub_100CB3BD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[47] = v2;
    *v2 = v0;
    v2[1] = sub_100CB3E9C;
    v3 = v0[38];
    v4 = v0[25];

    return sub_1010D5A44(v4, &off_10187DAA0, v3);
  }

  else
  {
    v17 = v0[43];
    v6 = v0[41];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];
    sub_100CB4E60(v9);
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v13, "CRLGroupSessionManager: Calling out to group session to join.", 61, 2, _swiftEmptyArrayStorage);
    sub_100CB57AC();
    v6(v10, v9 + v8, v12);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v11[5];
    v11[5] = 0x8000000000000000;
    sub_100AA045C(v9, v10, isUniquelyReferenced_nonNull_native);
    v17(v10, v12);
    v11[5] = v19;
    swift_endAccess();
    v18 = (*(*v11 + 312) + **(*v11 + 312));
    v15 = swift_task_alloc();
    v0[49] = v15;
    *v15 = v0;
    v15[1] = sub_100CB4054;
    v16 = v0[38];

    return v18(v16);
  }
}

uint64_t sub_100CB3E9C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 384) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = swift_task_alloc();
    v2[50] = v4;
    *v4 = v3;
    v4[1] = sub_100CB4434;
    v5 = v2[38];

    return sub_100CB45F8(v5, v0);
  }

  else
  {
    v7 = v2[36];
    v8 = v2[37];

    return _swift_task_switch(sub_100CB420C, v7, v8);
  }
}

uint64_t sub_100CB4054()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100CB4174, v3, v2);
}

uint64_t sub_100CB4174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB420C()
{
  v13 = v0[43];
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  sub_100CB4E60(v4);
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "CRLGroupSessionManager: Calling out to group session to join.", 61, 2, _swiftEmptyArrayStorage);
  sub_100CB57AC();
  v1(v5, v4 + v3, v7);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v6[5];
  v6[5] = 0x8000000000000000;
  sub_100AA045C(v4, v5, isUniquelyReferenced_nonNull_native);
  v13(v5, v7);
  v6[5] = v15;
  swift_endAccess();
  v14 = (*(*v6 + 312) + **(*v6 + 312));
  v10 = swift_task_alloc();
  v0[49] = v10;
  *v10 = v0;
  v10[1] = sub_100CB4054;
  v11 = v0[38];

  return v14(v11);
}

uint64_t sub_100CB4434()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100CB4554, v3, v2);
}

uint64_t sub_100CB4554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB45F8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v7 = (*(*v2 + 320) + **(*v2 + 320));
  v5 = swift_task_alloc();
  v3[18] = v5;
  *v5 = v3;
  v5[1] = sub_100CB4750;

  return v7(a1);
}

uint64_t sub_100CB4750()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 152) = v3;
  *(v1 + 160) = v2;

  return _swift_task_switch(sub_100CB4894, v3, v2);
}

uint64_t sub_100CB4894()
{
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CB4920, v2, v1);
}

uint64_t sub_100CB4920()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_100CB4984, v1, v2);
}

uint64_t sub_100CB4984()
{

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "CRLGroupSessionManager: could not associate group session. Error: %@", 68, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100CB4AE0(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return _swift_task_switch(sub_100CB4B7C, v5, v4);
}

uint64_t sub_100CB4B7C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 40);

    v4 = sub_10003E994(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      *(v0 + 80) = v6;

      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v7[1] = sub_100CB4CD4;
      v8 = *(v0 + 96);

      return (sub_100CB2BD4)(v6, v8);
    }
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100CB4CD4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100CB4DF4, v3, v2);
}

uint64_t sub_100CB4DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB4E60(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  swift_weakInit();

  sub_1005B981C(&qword_101A1A790);
  sub_10001A2F8(&qword_101A1A798, &qword_101A1A790);
  v4 = Publisher<>.sink(receiveValue:)();

  v5 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 48);
  *(v1 + 48) = 0x8000000000000000;
  sub_100A9BD0C(v4, a1 + v5, isUniquelyReferenced_nonNull_native);
  *(v1 + 48) = v12;
  swift_endAccess();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  sub_1005B981C(&qword_101A1A7A0);
  sub_10001A2F8(&qword_101A1A7A8, &qword_101A1A7A0);
  v9 = Publisher<>.sink(receiveValue:)();

  swift_beginAccess();

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_100A9BD0C(v9, a1 + v5, v10);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_100CB5100(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1005B981C(&qword_101A1A740);
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  sub_10000BE14(a1, &v26 - v8, &qword_101A1A740);
  v10 = v9[*(v7 + 56)];
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  result = v12(v9, v11);
  if (v10 == 1)
  {
    v27 = v5;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000BE14(a1, v9, &qword_101A1A740);
    v16 = UUID.uuidString.getter();
    v26 = a1;
    v18 = v17;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v16;
    *(inited + 40) = v18;
    v12(v9, v11);
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v14, &_mh_execute_header, v19, "CRLGroupSessionManager: Group session invalidated. Cleaning up session with ID: %@.", 83, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v20 = type metadata accessor for TaskPriority();
    v21 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    v22 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10000BE14(v26, v9, &qword_101A1A740);
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v22;
    sub_100CC2E70(v9, v25 + v24);

    sub_100641C1C(0, 0, v21, &unk_1014AA640, v25);
  }

  return result;
}

uint64_t sub_100CB54D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v12 = UUID.uuidString.getter();
    v14 = v13;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    *(inited + 96) = sub_1005B981C(&qword_101A1A7B0);
    *(inited + 104) = sub_10001A2F8(&qword_101A1A7B8, &qword_101A1A7B0);
    *(inited + 72) = a1;

    v15 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v15, "CRLGroupSessionManager: Group session active participants updated. ID: %{public}@. ActiveParticipants: %@", 105, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v9;
    v18[5] = a1;
    v18[6] = a3;
    sub_100641C1C(0, 0, v7, &unk_1014AA5C0, v18);
  }

  return result;
}

uint64_t sub_100CB57AC()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = *(v0 + qword_101AD8560);
  GroupSession.id.getter();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v14, "CRLBoardShareSession: joining group session with ID: %@.", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v10;

  sub_100CA64C8(0, 0, v3, &unk_1014AA598, v16);

  return sub_10000CAAC(v3, &qword_1019FB750);
}

uint64_t sub_100CB5A68()
{
  v1 = sub_1005B981C(&qword_101A1A700);
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  __chkstk_darwin(v1);
  v56 = v41 - v3;
  v4 = sub_1005B981C(&qword_101A1A708);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  __chkstk_darwin(v4);
  v57 = v41 - v6;
  v7 = sub_1005B981C(&unk_1019FB7E0);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v51 = sub_1005B981C(&qword_101A1A710);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = v41 - v10;
  v54 = sub_1005B981C(&qword_101A1A718);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v42 = v41 - v12;
  v62 = type metadata accessor for UUID();
  v47 = *(v62 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v62);
  v45 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = v41 - v15;
  v16 = swift_allocObject();
  v63 = v16;
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = *(v0 + qword_101AD8560);
  GroupSession.id.getter();
  v52 = v18;
  GroupSession.activity.getter();
  v43 = *(v66[0] + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe);

  GroupSession.activity.getter();

  GroupSession.$state.getter();
  v41[1] = sub_100006370(0, &qword_1019F2D90);
  v19 = static OS_dispatch_queue.main.getter();
  v66[0] = v19;
  v49 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v20 = *(v49 - 8);
  v48 = *(v20 + 56);
  v50 = v20 + 56;
  v41[0] = v9;
  v48(v9, 1, 1, v49);
  v46 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001A2F8(&qword_101A1A720, &qword_101A1A710);
  v44 = sub_10000FDE0(&qword_1019FB828, &qword_1019F2D90);
  v21 = v42;
  v22 = v51;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v9, &unk_1019FB7E0);

  (*(v53 + 8))(v11, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v47;
  v25 = v45;
  v26 = v62;
  (*(v47 + 16))(v45, v65, v62);
  v27 = (*(v24 + 80) + 25) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = 1;
  (*(v24 + 32))(v28 + v27, v25, v26);
  *(v28 + v27 + v13) = v43;
  *(v28 + ((v27 + v13) & 0xFFFFFFFFFFFFFFF8) + 8) = v63;
  sub_10001A2F8(&qword_101A1A728, &qword_101A1A718);

  v29 = v54;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v21, v29);
  swift_beginAccess();
  *v17 = v30;

  v31 = v56;
  GroupSession.$activeParticipants.getter();
  v32 = static OS_dispatch_queue.main.getter();
  v66[0] = v32;
  v33 = v41[0];
  v48(v41[0], 1, 1, v49);
  sub_10001A2F8(&qword_101A1A730, &qword_101A1A700);
  v35 = v57;
  v34 = v58;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v33, &unk_1019FB7E0);

  (*(v59 + 8))(v31, v34);
  swift_allocObject();
  v36 = v64;
  swift_weakInit();
  sub_10001A2F8(&qword_101A1A738, &qword_101A1A708);
  v37 = v60;
  v38 = Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v35, v37);
  v66[3] = type metadata accessor for AnyCancellable();
  v66[4] = &protocol witness table for AnyCancellable;
  v66[0] = v38;
  (*(v24 + 8))(v65, v62);
  v39 = qword_101A218A0;
  swift_beginAccess();
  sub_10002C638(v66, v36 + v39, &unk_101A08DE0);
  swift_endAccess();
}

uint64_t sub_100CB6330(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupActivityMetadata.ActivityType();
  __chkstk_darwin(v6 - 8);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupActivityMetadata();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe) = a2;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v39 = 0xD00000000000001FLL;
  v40 = 0x8000000101598010;
  if (a2)
  {
    v13 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v13 = 0x5D6465726168535BLL;
  }

  v14 = 0xE800000000000000;
  String.append(_:)(*&v13);

  v15._countAndFlagsBits = 58;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = v39;
  v17 = v40;
  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 64) = v18;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  v19 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = v20;
  v21 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v21, "[Automation] %@ Created new opportunistic group activity with activity ID: %{public}@", 85, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = UUID.uuidString.getter();
  v40 = v22;

  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  v24 = v39;
  v25 = v40;
  v26 = (a1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v27 = *v26;
  v28 = v26[1];
  v39 = v24;
  v40 = v25;

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v30 = v40;
  *(v3 + 16) = v39;
  *(v3 + 24) = v30;
  v31 = [objc_opt_self() mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.generic.getter();
  GroupActivityMetadata.type.setter();
  GroupActivityMetadata.title.setter();
  sub_100CC2E10(a1, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  (*(v37 + 32))(v3 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_metadata, v10, v38);
  return v3;
}