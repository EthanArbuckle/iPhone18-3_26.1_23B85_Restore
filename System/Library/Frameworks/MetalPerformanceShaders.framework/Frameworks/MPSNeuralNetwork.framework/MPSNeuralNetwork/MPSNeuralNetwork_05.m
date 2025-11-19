void sub_239C21EE8(uint64_t a1)
{
  v2 = *(a1 + 48);
}

uint64_t sub_239C21F2C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, char a7, uint64_t a8, __n128 a9, uint64_t a10, void *a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  v23 = a17;
  v620 = *MEMORY[0x277D85DE8];
  v24 = *a1;
  v25 = *(a1 + 16);
  v489 = *(a1 + 24);
  v26 = *(a1 + 80);
  a9.n128_u64[0] = *(a1 + 84);
  v27 = *(a1 + 92);
  v485 = *(a1 + 104);
  v538 = *(a1 + 112);
  v487 = *(a1 + 128);
  v28 = *(a1 + 56);
  v496 = *(a1 + 48);
  v29 = *(a1 + 64);
  v30 = *(a1 + 136);
  v493 = *(a1 + 144);
  v536 = *(a1 + 120);
  v32 = *(a1 + 168);
  v31 = *(a1 + 176);
  v482 = *(a1 + 184);
  v481 = *(a1 + 192);
  v478 = *(a1 + 200);
  v499 = *a5;
  v33 = *(a5 + 24);
  v35 = *(a1 + 32);
  v34 = *(a1 + 40);
  v476 = *a4;
  v36 = a4[2];
  v473 = a4[1];
  v37 = *(a5 + 16);
  v470 = *(a18 + 26);
  v38 = *(a19 + 16);
  if ((*(a1 + 152) & 1) == 0)
  {
    v39 = v34 / (v28 * v28);
    if (v39 + a14 > v38)
    {
      v524 = a5;
      v516 = a4;
      v510 = a8;
      v506 = *(a1 + 176);
      v429 = *(a1 + 136);
      v394 = *(a1 + 40);
      v433 = *(a1 + 80);
      v414 = *(a1 + 92);
      v421 = a9;
      v439 = *(a1 + 64);
      v461 = *(a5 + 24);
      v446 = *(a5 + 16);
      v454 = *(a1 + 16);
      v408 = a4[2];
      v545 = *a1;
      v380 = MTLReportFailureTypeEnabled();
      v24 = v545;
      LOWORD(v36) = v408;
      v25 = v454;
      v37 = v446;
      v33 = v461;
      v27 = v414;
      a9 = v421;
      v29 = v439;
      v26 = v433;
      v34 = v394;
      v23 = a17;
      v30 = v429;
      v31 = v506;
      a8 = v510;
      a4 = v516;
      a5 = v524;
      if (v380)
      {
        v391 = *(a1 + 40);
        v392 = v38;
        MTLReportFailure();
        v24 = v545;
        LOWORD(v36) = v408;
        v25 = v454;
        v37 = v446;
        v33 = v461;
        v27 = v414;
        a9 = v421;
        v29 = v439;
        v26 = v433;
        v34 = v394;
        v23 = a17;
        v30 = v429;
        v31 = v506;
        a8 = v510;
        a4 = v516;
        a5 = v524;
      }
    }

    if (v34 != v39 * v28 * v28)
    {
      v525 = a5;
      v517 = a4;
      v511 = a8;
      v507 = v31;
      v430 = v30;
      v532 = v23;
      v395 = v34;
      v381 = v26;
      v415 = v27;
      v422 = a9;
      v440 = v29;
      v462 = v33;
      v447 = v37;
      v455 = v25;
      v409 = v36;
      v546 = v24;
      v382 = MTLReportFailureTypeEnabled();
      v24 = v546;
      LOWORD(v36) = v409;
      v25 = v455;
      v37 = v447;
      v33 = v462;
      v27 = v415;
      a9 = v422;
      v29 = v440;
      v26 = v381;
      v34 = v395;
      v23 = v532;
      v30 = v430;
      v31 = v507;
      a8 = v511;
      a4 = v517;
      a5 = v525;
      if (v382)
      {
        v391 = v28;
        MTLReportFailure();
        v24 = v546;
        LOWORD(v36) = v409;
        v25 = v455;
        v37 = v447;
        v33 = v462;
        v27 = v415;
        a9 = v422;
        v29 = v440;
        v26 = v381;
        v34 = v395;
        v23 = v532;
        v30 = v430;
        v31 = v507;
        a8 = v511;
        a4 = v517;
        a5 = v525;
      }
    }

    if (v39 > v38)
    {
      v526 = a5;
      v518 = a4;
      v512 = a8;
      v508 = v31;
      v383 = v30;
      v533 = v23;
      v396 = v34;
      v434 = v26;
      v416 = v27;
      v423 = a9;
      v441 = v29;
      v463 = v33;
      v448 = v37;
      v456 = v25;
      v410 = v36;
      v547 = v24;
      v384 = MTLReportFailureTypeEnabled();
      v24 = v547;
      LOWORD(v36) = v410;
      v25 = v456;
      v37 = v448;
      v33 = v463;
      v27 = v416;
      a9 = v423;
      v29 = v441;
      v26 = v434;
      v34 = v396;
      v23 = v533;
      v30 = v383;
      v31 = v508;
      a8 = v512;
      a4 = v518;
      a5 = v526;
      if (v384)
      {
        v391 = v39;
        MTLReportFailure();
        v24 = v547;
        LOWORD(v36) = v410;
        v25 = v456;
        v37 = v448;
        v33 = v463;
        v27 = v416;
        a9 = v423;
        v29 = v441;
        v26 = v434;
        v34 = v396;
        v23 = v533;
        v30 = v383;
        v31 = v508;
        a8 = v512;
        a4 = v518;
        a5 = v526;
      }
    }

    if (!v31)
    {
      if (((*a11 >> 34) & 0x3FuLL) >= 3)
      {
        v527 = a5;
        v519 = a4;
        v513 = a8;
        v385 = v30;
        v534 = v23;
        v386 = v34;
        v435 = v26;
        v417 = v27;
        v424 = a9;
        v442 = v29;
        v464 = v33;
        v449 = v37;
        v457 = v25;
        v411 = v36;
        v548 = v24;
        v387 = MTLReportFailureTypeEnabled();
        v24 = v548;
        LOWORD(v36) = v411;
        v25 = v457;
        v37 = v449;
        v33 = v464;
        v27 = v417;
        a9 = v424;
        v29 = v442;
        v26 = v435;
        v34 = v386;
        v23 = v534;
        v30 = v385;
        v31 = 0;
        a8 = v513;
        a4 = v519;
        a5 = v527;
        if (v387)
        {
          MTLReportFailure();
          v24 = v548;
          LOWORD(v36) = v411;
          v25 = v457;
          v37 = v449;
          v33 = v464;
          v27 = v417;
          a9 = v424;
          v29 = v442;
          v26 = v435;
          v34 = v386;
          v23 = v534;
          v30 = v385;
          v31 = 0;
          a8 = v513;
          a4 = v519;
          a5 = v527;
        }
      }

      if (a8 == 5)
      {
        v528 = a5;
        v520 = a4;
        v388 = v31;
        v389 = v30;
        v535 = v23;
        v397 = v34;
        v436 = v26;
        v418 = v27;
        v425 = a9;
        v443 = v29;
        v465 = v33;
        v450 = v37;
        v458 = v25;
        v412 = v36;
        v549 = v24;
        v390 = MTLReportFailureTypeEnabled();
        v24 = v549;
        LOWORD(v36) = v412;
        v25 = v458;
        v37 = v450;
        v33 = v465;
        v27 = v418;
        a9 = v425;
        v29 = v443;
        v26 = v436;
        v34 = v397;
        v23 = v535;
        v30 = v389;
        v31 = v388;
        a8 = 5;
        a4 = v520;
        a5 = v528;
        if (v390)
        {
          MTLReportFailure();
          v24 = v549;
          LOWORD(v36) = v412;
          v25 = v458;
          v37 = v450;
          v33 = v465;
          v27 = v418;
          a9 = v425;
          v29 = v443;
          v26 = v436;
          v34 = v397;
          v23 = v535;
          v30 = v389;
          v31 = v388;
          a8 = 5;
          a4 = v520;
          a5 = v528;
        }
      }
    }
  }

  if (!v32)
  {
    v542 = v24;
    v407 = v36;
    v451 = v25;
    v444 = v37;
    v459 = v33;
    v413 = v27;
    v419 = a9;
    v437 = v29;
    v431 = v26;
    v41 = v34;
    v529 = v23;
    v426 = v30;
    v42 = a8;
    v491 = *(v493 + 32);
    if ((*(*v491 + 120))(v491, v31))
    {
      v44 = v42 != 5 && ((*a11 >> 34) & 0x3FuLL) < 3;
    }

    else
    {
      v44 = 0;
    }

    v107 = v41;
    v108 = v41 / (v28 * v28);
    v109 = v41 / v496;
    v110 = (v41 / v496);
    v111 = v499.u64[1];
    v112 = v499.i64[0];
    if (v28 < 2)
    {
      v114 = v459.u64[1];
      v113 = v459.i64[0];
      if (v108 + a14 > v38)
      {
        return -6;
      }
    }

    else
    {
      v112 = v499.i64[0] / v28;
      v111 = v499.i64[1] / v28;
      v113 = (v459.i64[0] + v28 - 1) / v28;
      v114 = (v459.i64[1] + v28 - 1) / v28;
      if (v496 == 1 || (v108 & 3) == 0)
      {
        v107 = ((v108 + 3) & 0xFFFFFFFFFFFFFFFCLL) * v28 * v28;
        v110 = v107 / v496;
        if (v108 + a14 > v38)
        {
          return -6;
        }
      }

      else if (v108 + a14 > v38)
      {
        return -6;
      }
    }

    result = 0;
    if (!v459.i64[0] || !v459.i64[1])
    {
      return result;
    }

    v402 = v110;
    v403 = v114;
    v399 = v109;
    v401 = ((v108 + 3) & 0xFFFFFFFFFFFFFFFCLL) * v28 * v28;
    v115.i64[0] = vdupq_laneq_s64(v542, 1).u64[0];
    v116 = vdupq_lane_s64(v542.i64[0], 0);
    v393 = v107;
    v116.i64[0] = v107;
    v115.i64[1] = v451;
    v600 = v459.i16[0];
    v601 = v459.i16[4];
    v404 = v35 / v496;
    *v602 = v35 / v496;
    v406 = vmovn_s32(vuzp1q_s32(v116, v115));
    *&v602[2] = v406;
    v603 = v496;
    v400 = v44;
    v598 = (*(*v491 + 216))(v491, &v600);
    v599 = v117;
    v124 = objc_msgSend_commandQueue(a3, v117, v118, v119, v120, v121, v122, v123);
    objc_msgSend_getGPUPriority(v124, v125, v126, v127, v128, v129, v130, v131);
    *&v610 = 0;
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v559 = v112;
    v560 = v111;
    v561 = v444;
    v562 = v113;
    v563 = v403;
    v564 = v529;
    v405 = v542.i64[0];
    (*(*v491 + 240))(&v604);
    if (v598 <= 4u)
    {
      v132 = 4;
    }

    else
    {
      v132 = v598;
    }

    v515 = v604.i64[1];
    v133 = v605;
    v523 = HIWORD(v598);
    v134 = *(&v607 + 1);
    v135 = v608;
    v480 = WORD1(v598);
    v467 = WORD1(v599);
    v469 = v599;
    v136 = *(a1 + 208);
    *&v595[0] = v136;
    *(&v595[0] + 1) = a7 & 0x3F | ((a6 & 0x3F) << 6);
    v544 = *(&v608 + 1);
    v505 = v609;
    *&v595[1] = -1;
    memset(&v595[1] + 8, 0, 56);
    v503 = *(&v609 + 1);
    v501 = v610;
    v398 = v604.i8[0];
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    v144 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v137, v138, v139, v140, v141, v142, v143, 0, 0, 0, 0, 0);
    v146 = v544 * v134;
    v147 = v544 * v134 * v135;
    if (v147 <= v144)
    {
      v155 = v133;
      v148 = v529;
      v149 = v431;
      v150 = v401;
      v151 = v451;
      v152 = v402;
      LOWORD(v154) = v403;
    }

    else
    {
      v148 = v529;
      v149 = v431;
      v150 = v401;
      v151 = v451;
      v152 = v402;
      if (v135 < 2)
      {
        v154 = v403;
      }

      else
      {
        v153 = v146 * (v135 - 1);
        v154 = v403;
        do
        {
          --v135;
          v147 -= v146;
          if (v153 <= v144)
          {
            break;
          }

          v153 -= v146;
        }

        while (v135 > 1);
      }

      if (v134 >= 2 && v147 > v144)
      {
        v216 = v147 - v135 * v544;
        do
        {
          --v134;
          if (v216 <= v144)
          {
            break;
          }

          v216 -= v135 * v544;
        }

        while (v134 > 1);
      }

      v155 = v133;
      v505 = (v113 + v134 * v599 - 1) / (v134 * v599);
      v503 = (v154 + v135 * WORD1(v599) - 1) / (v135 * WORD1(v599));
    }

    if (v482)
    {
      v217 = v478 + v473 * v489;
    }

    else
    {
      v217 = v473;
    }

    if (v482)
    {
      v218 = v481 + v476 * v151;
    }

    else
    {
      v218 = v476;
    }

    LODWORD(v559) = *(v406.i32 + 2);
    v479 = v217;
    v477 = v133 - (v437.i64[0] * (v405 - 1) + 1) / 2;
    LOWORD(v145) = v477;
    v475 = v217 - (v437.i64[1] * (v542.i64[1] - 1) + 1) / 2;
    WORD1(v145) = v475;
    WORD2(v145) = v407;
    LOWORD(v562) = a13 >> 2;
    v219 = vmovn_s64(v499);
    v219.i16[1] = v219.i16[2];
    v219.i16[2] = v444.i16[0];
    v560 = v145;
    v561 = v219;
    WORD1(v562) = a14 >> 2;
    v220 = vmovn_s64(vaddq_s64(v459, v499));
    v220.i16[1] = v220.i16[2];
    v220.i16[2] = (v152 + WORD1(v598) - 1) / WORD1(v598) * v496;
    v219.i16[0] = v113;
    v219.i16[1] = v154;
    v219.i16[2] = v150 >> 2;
    v563 = v220;
    v565 = v219;
    v566 = v406.i16[3];
    v567 = v489;
    v572 = v148;
    v573 = v496;
    v574 = (v470 + 3) >> 2;
    v575 = (v132 + v404 - 1) / v132 * v132;
    v576 = (v404 + 3) >> 2;
    v577 = (v155 + 3) >> 2;
    v578 = (v38 + 3) >> 2;
    v221 = v419;
    v221.n128_u32[2] = v413;
    v580 = v149;
    v581 = v221;
    v579 = (v399 + 3) >> 2;
    v221.n128_u64[0] = vmovn_s64(v437);
    v583 = v221.n128_u16[2];
    v472 = v221.n128_u64[0];
    v582 = v221.n128_u16[0];
    MPSGetUShortDivisorMagicNumber();
    v584 = v222;
    MPSGetUShortDivisorMagicNumber();
    v585 = v223;
    MPSGetUShortDivisorMagicNumber();
    v225 = v224;
    MPSGetUShortDivisorMagicNumber();
    v589 = vzip2_s16(vzip1_s16(v225, v226), vtrn1_s16(v225, v226));
    MPSGetUShortDivisorMagicNumber();
    v568 = v227;
    MPSGetUShortDivisorMagicNumber();
    v570 = v228;
    MPSGetUShortDivisorMagicNumber();
    v569 = v229;
    MPSGetUShortDivisorMagicNumber();
    v571 = v230;
    v588 = v515;
    v587 = *(&v133 + 1) >> 2;
    MEMORY[0x23EE7D040](v590, a3, 0);
    if (v398)
    {
      v238 = 2;
      if (v480 > 2)
      {
        v238 = v480;
      }

      v239 = 1;
      if (!v400)
      {
        v239 = 2;
      }

      TempBuffer = MPSAutoCache::GetTempBuffer(v590, v467 * v469 * (v238 << v239) * v544 * v501 * v505 * v503 * v135 * v134, 0);
      v521 = v485;
      v531 = v135;
      if (v487 == -1)
      {
LABEL_140:
        *(a18 + 2) = v475;
        *a18 = v477;
        *(a18 + 6) = v481;
        *(a18 + 4) = v481;
        *(a18 + 8) = *(v406.i32 + 2);
        *(a18 + 14) = v479;
        *(a18 + 12) = v218;
        *(a18 + 18) = v489;
        *(a18 + 16) = v406.i16[3];
        *(a18 + 22) = WORD2(v472);
        *(a18 + 20) = v472;
        *(a19 + 22) = v135 * v544 * v134;
        *(a19 + 28) = 0;
        if (!v515)
        {
LABEL_187:
          if ((objc_msgSend_retainedReferences(a3, v231, v232, v233, v234, v235, v236, v237) & 1) == 0)
          {
            v371 = v485;
            v372 = v538;
            v373 = v536;
            v550[0] = MEMORY[0x277D85DD0];
            v550[1] = 3221225472;
            v550[2] = sub_239C24208;
            v550[3] = &unk_278B2F278;
            v550[4] = v485;
            v550[5] = v538;
            v551 = 0;
            v550[6] = v536;
            v550[7] = PipelineStateForMPSKey;
            objc_msgSend_addCompletedHandler_(a3, v374, v550, v375, v376, v377, v378, v379);
          }

          MPSLibrary::ReleaseMPSKey();
          MPSAutoCache::~MPSAutoCache(v590);
          return 0;
        }

        v309 = 0;
        while (1)
        {
          v586 = v309;
          objc_msgSend_setComputePipelineState_(a2, v231, PipelineStateForMPSKey, v233, v234, v235, v236, v237);
          if ((a6 & 2) == 0)
          {
            objc_msgSend_setTexture_atIndex_(a2, v310, a20, v136, v313, v314, v315, v316);
            goto LABEL_162;
          }

          v321 = objc_msgSend_count(a20, v310, v311, v312, v313, v314, v315, v316);
          v619 = 0u;
          v618 = 0u;
          v617 = 0u;
          v616 = 0u;
          v615 = 0u;
          v614 = 0u;
          v613 = 0u;
          v612 = 0u;
          v611 = 0u;
          v610 = 0u;
          v609 = 0u;
          v608 = 0u;
          v607 = 0u;
          v606 = 0u;
          v605 = 0u;
          v604 = 0u;
          if (v136)
          {
            break;
          }

LABEL_162:
          objc_msgSend_setBytes_length_atIndex_(a2, v317, a18, 32, 1, v318, v319, v320);
          if ((a7 & 2) != 0)
          {
            v338 = objc_msgSend_count(a21, v327, v328, v329, v330, v331, v332, v333);
            v619 = 0u;
            v618 = 0u;
            v617 = 0u;
            v616 = 0u;
            v615 = 0u;
            v614 = 0u;
            v613 = 0u;
            v612 = 0u;
            v611 = 0u;
            v610 = 0u;
            v609 = 0u;
            v608 = 0u;
            v607 = 0u;
            v606 = 0u;
            v605 = 0u;
            v604 = 0u;
            if (!v136)
            {
              goto LABEL_182;
            }

            v339 = v338;
            v340 = 0;
            while (2)
            {
              if (v339 <= v340)
              {
                v341 = 0;
                if (v136 - v340 >= 0x20)
                {
                  v342 = 32;
                }

                else
                {
                  v342 = v136 - v340;
                }

                v343 = v342;
                if (v342)
                {
LABEL_174:
                  bzero(&v604 + 8 * v341, 8 * v343);
                }
              }

              else
              {
                if (v339 - v340 >= 0x20)
                {
                  v341 = 32;
                  objc_msgSend_getObjects_range_(a21, v334, &v604, v340, 32, v335, v336, v337);
                }

                else
                {
                  v341 = v339 - v340;
                  objc_msgSend_getObjects_range_(a21, v334, &v604, v340, v339 - v340, v335, v336, v337);
                }

                if (v136 - v340 >= 0x20)
                {
                  v342 = 32;
                }

                else
                {
                  v342 = v136 - v340;
                }

                v343 = v342 - v341;
                if (v342 != v341)
                {
                  goto LABEL_174;
                }
              }

              objc_msgSend_setTextures_withRange_(a2, v334, &v604, v340, v342, v335, v336, v337);
              v340 += v342;
              if (v340 >= v136)
              {
                goto LABEL_182;
              }

              continue;
            }
          }

          objc_msgSend_setTexture_atIndex_(a2, v327, a21, 0, v330, v331, v332, v333);
LABEL_182:
          objc_msgSend_setBytes_length_atIndex_(a2, v334, a19, 40, 0, v335, v336, v337);
          objc_msgSend_setBytes_length_atIndex_(a2, v344, &v559, 192, 30, v345, v346, v347);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v348, v521, 0, 29, v349, v350, v351);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v352, v538, 0, 28, v353, v354, v355);
          if (v398)
          {
            objc_msgSend_setBuffer_offset_atIndex_(a2, v356, TempBuffer, 0, 27, v357, v358, v359);
          }

          if (v523 >= 2)
          {
            v604.i64[0] = v134;
            v604.i64[1] = v531;
            *&v605 = v544;
            v360 = (*(*v491 + 248))(v491, &v604, v523, v469, v467, v480);
            objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v361, v360, 0, v362, v363, v364, v365);
          }

          objc_msgSend_setBuffer_offset_atIndex_(a2, v356, v536, 0, 26, v357, v358, v359);
          v604.i64[0] = v505;
          v604.i64[1] = v503;
          *&v605 = v501;
          v557.i64[0] = v134;
          v557.i64[1] = v531;
          v558 = v544;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v366, &v604, &v557, v367, v368, v369, v370);
          if (++v309 == v515)
          {
            goto LABEL_187;
          }
        }

        v322 = v321;
        v323 = 0;
        while (1)
        {
          if (v322 <= v323)
          {
            v324 = 0;
            if (v136 - v323 >= 0x20)
            {
              v325 = 32;
            }

            else
            {
              v325 = v136 - v323;
            }

            v326 = v325;
            if (!v325)
            {
              goto LABEL_155;
            }
          }

          else
          {
            if (v322 - v323 >= 0x20)
            {
              v324 = 32;
              objc_msgSend_getObjects_range_(a20, v317, &v604, v323, 32, v318, v319, v320);
            }

            else
            {
              v324 = v322 - v323;
              objc_msgSend_getObjects_range_(a20, v317, &v604, v323, v322 - v323, v318, v319, v320);
            }

            if (v136 - v323 >= 0x20)
            {
              v325 = 32;
            }

            else
            {
              v325 = v136 - v323;
            }

            v326 = v325 - v324;
            if (v325 == v324)
            {
              goto LABEL_155;
            }
          }

          bzero(&v604 + 8 * v324, 8 * v326);
LABEL_155:
          objc_msgSend_setTextures_withRange_(a2, v317, &v604, v323 + v136, v325, v318, v319, v320);
          v323 += v325;
          if (v323 >= v136)
          {
            goto LABEL_162;
          }
        }
      }
    }

    else
    {
      TempBuffer = 0;
      v521 = v485;
      v531 = v135;
      if (v487 == -1)
      {
        goto LABEL_140;
      }
    }

    v240 = (*(*v491 + 264))(v491);
    v241 = v393 / v496;
    v242 = v404 < 5;
    v243 = v496 == 1;
    if (v243 && v393 / v496 < 5)
    {
      v244 = 4;
    }

    else
    {
      v244 = v240;
    }

    v245 = !v243 || !v242;
    if (v243 && v242)
    {
      v246 = 4;
    }

    else
    {
      v246 = 8;
    }

    v247 = (v241 + v244 - 1) / v244 * v244;
    v248 = -8;
    if (!v245)
    {
      v248 = -4;
    }

    v249 = (v404 + v246 - 1) & v248;
    v250 = v247 * v496;
    if (v247 * v496 <= v401)
    {
      v250 = v401;
    }

    v251 = v249 * v542.i64[1] * v405;
    v521 = MPSAutoCache::GetTempBuffer(v590, (2 * v251 * v250 + 30) & 0xFFFFFFFFFFFFFFE0, 0);
    (*(*v491 + 256))(v491);
    MPSLibrary::CreateUberShaderKey();
    v453 = MPSLibrary::GetPipelineStateForMPSKey();
    v252 = v247 / v244 * v496;
    if (v251 >= 8)
    {
      v253 = 8;
    }

    else
    {
      v253 = v251;
    }

    v498 = v253;
    if (v252 >= 4)
    {
      v254 = 4;
    }

    else
    {
      v254 = v252;
    }

    MPSGetUIntDivisorMagicNumber();
    LOWORD(v135) = v531;
    v604 = v255;
    MPSGetUShortDivisorMagicNumber();
    LOWORD(v256) = v404;
    WORD1(v256) = v241;
    WORD2(v256) = v406.i16[0];
    *&v605 = v257;
    *(&v605 + 1) = v256;
    LODWORD(v606) = v251;
    MPSGetUShortDivisorMagicNumber();
    *(&v606 + 1) = v258;
    *&v607 = __PAIR64__(v252, v606);
    DWORD2(v607) = 1174405120;
    objc_msgSend_setComputePipelineState_(a2, v259, v453, v260, v261, v262, v263, v264, 0, 0, 0, 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v265, v485, 0, 0, v266, v267, v268);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v269, v521, 0, 1, v270, v271, v272);
    objc_msgSend_setBytes_length_atIndex_(a2, v273, &v604, 64, 2, v274, v275, v276);
    if (v487)
    {
      if (v487 == 1)
      {
        objc_msgSend_setBuffer_offset_atIndex_(a2, v277, v426, 0, 3, v281, v282, v283);
      }

      else if (v487 >= 2)
      {
        v297 = objc_msgSend_contents(v426, v277, v278, v279, v280, v281, v282, v283);
        objc_msgSend_setBytes_length_atIndex_(a2, v298, v297, 512, 3, v299, v300, v301);
        if (v487 == 3)
        {
          objc_msgSend_setBuffer_offset_atIndex_(a2, v277, v426, 512, 4, v281, v282, v283);
        }
      }
    }

    else
    {
      v284 = objc_msgSend_contents(v426, v277, v278, v279, v280, v281, v282, v283);
      v292 = objc_msgSend_length(v426, v285, v286, v287, v288, v289, v290, v291);
      objc_msgSend_setBytes_length_atIndex_(a2, v293, v284, v292, 3, v294, v295, v296);
    }

    if ((objc_msgSend_retainedReferences(a3, v277, v278, v279, v280, v281, v282, v283) & 1) == 0)
    {
      if ((v487 | 2) == 3)
      {
        v308 = v426;
      }

      v552[0] = MEMORY[0x277D85DD0];
      v552[1] = 3221225472;
      v552[2] = sub_239C241EC;
      v552[3] = &unk_278B2F688;
      v553 = v487;
      v552[4] = v426;
      objc_msgSend_addCompletedHandler_(a3, v302, v552, v303, v304, v305, v306, v307);
    }

    v557.i64[0] = (v251 + v498 - 1) / v498;
    v557.i64[1] = (v252 + v254 - 1) / v254;
    v558 = 1;
    v554 = v498;
    v555 = v254;
    v556 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v302, &v557, &v554, v304, v305, v306, v307);
    MPSLibrary::ReleaseMPSKey();
    goto LABEL_140;
  }

  if (*(a1 + 168) > 1uLL)
  {
    return -19;
  }

  v45 = *(a1 + 40);
  v46 = *(a19 + 16);
  if (a14 + ((v45 + 3) >> 2) > v46)
  {
    return -6;
  }

  result = 0;
  v47 = *(a5 + 24);
  if (v47)
  {
    v48 = *(a5 + 32);
    if (v48)
    {
      v530 = v23;
      v486 = a4[1];
      v488 = *a4;
      v432 = a4[2];
      v497 = *a5;
      v494 = *(a5 + 16);
      v49 = *a1;
      v50 = *(a1 + 16);
      v543 = *(a1 + 24);
      v492 = *(a1 + 80);
      a9.n128_u64[0] = *(a1 + 84);
      v452 = a9;
      v445 = *(a1 + 92);
      v466 = *(a1 + 104);
      v504 = *(a1 + 112);
      v51 = *(a1 + 48);
      v514 = *(a1 + 64);
      v522 = *(a1 + 72);
      v460 = *(a1 + 120);
      v490 = *(a1 + 184);
      v420 = *(a1 + 192);
      v427 = *(a1 + 200);
      v438 = *(a18 + 26);
      v52 = *(*(a1 + 144) + 32);
      v502 = *(a1 + 32);
      v600 = *(a5 + 24);
      v500 = v48;
      v601 = v48;
      v53.i32[0] = v502 / v51;
      v53.i32[1] = v45;
      v483 = v49;
      v54 = vuzp1_s16(v53, vmovn_s64(v49));
      *v602 = v54;
      v537 = v50;
      *&v602[8] = v50;
      v539 = v51;
      v603 = v51;
      v598 = (*(*v52 + 224))(v52, &v600);
      v599 = v55;
      v62 = objc_msgSend_commandQueue(a3, v55, v56, v57, v58, v59, v60, v61);
      GPUPriority = objc_msgSend_getGPUPriority(v62, v63, v64, v65, v66, v67, v68, v69);
      v597 = 0;
      v596 = 0u;
      memset(v595, 0, sizeof(v595));
      v604 = v497;
      *&v605 = v494;
      *(&v605 + 1) = v47;
      *&v606 = v500;
      *(&v606 + 1) = v530;
      LOBYTE(v391) = 0;
      (*(*v52 + 240))(v595, v52, GPUPriority, v502, v45, v539, &v598, v483.i64[0], v483.i64[1], &v604, v391, v392);
      v558 = v597;
      v71 = WORD1(v598);
      v474 = *(&v595[3] + 1);
      v72 = *(a1 + 208);
      v590[0] = v72;
      v590[1] = a7 & 0x3F | ((a6 & 0x3F) << 6);
      v590[2] = -1;
      v591 = 0u;
      v592 = 0u;
      v593 = 0u;
      v468 = *(&v595[4] + 1);
      v471 = *&v595[4];
      v557 = v596;
      v594 = 0;
      MPSLibrary::CreateUberShaderKey();
      v73 = MPSLibrary::GetPipelineStateForMPSKey();
      v75 = v427 + v543 * v486;
      v76 = vmovl_u16(v54);
      v77 = vextq_s8(v76, v76, 8uLL).u64[0];
      LOWORD(v559) = v77;
      v428 = v77;
      v78 = (v514 * (v483.i64[0] - 1) + 1) / 2;
      if (v490)
      {
        v79 = v420 + v537 * v488;
      }

      else
      {
        v79 = v488;
      }

      v80 = (v522 * (v483.i64[1] - 1) + 1) / 2;
      if (v490)
      {
        v81 = v75;
      }

      else
      {
        v81 = v486;
      }

      LOWORD(v77) = v79 - v78;
      WORD1(v77) = v81 - v80;
      WORD1(v559) = WORD2(v77);
      WORD2(v77) = v432;
      LOWORD(v562) = a13 >> 2;
      WORD1(v562) = a14 >> 2;
      v74.i16[0] = v497.i16[0];
      v74.i16[1] = v497.i16[4];
      v74.i16[2] = v494;
      v560 = v77;
      v561 = v74;
      LOWORD(v77) = v47 + v497.i16[0];
      WORD1(v77) = v500 + v497.i16[4];
      WORD2(v77) = (v45 + v71 - 1) / v71;
      v563 = v77;
      v565 = v77;
      v566 = v537;
      v567 = v543;
      v572 = v530;
      v573 = v539;
      v574 = (v438 + 3) >> 2;
      v575 = v502;
      v576 = v502 >> 2;
      v577 = v502 >> 2;
      v578 = (v46 + 3) >> 2;
      v82 = v452;
      v82.n128_u32[2] = v445;
      v580 = v492;
      v581 = v82;
      v579 = (v45 + 3) >> 2;
      v583 = v522;
      v582 = v514;
      MPSGetUShortDivisorMagicNumber();
      v84 = v83;
      MPSGetUShortDivisorMagicNumber();
      v589 = vzip2_s16(vzip1_s16(v84, v85), vtrn1_s16(v84, v85));
      MPSGetUShortDivisorMagicNumber();
      MPSGetUShortDivisorMagicNumber();
      MPSGetUShortDivisorMagicNumber();
      MPSGetUShortDivisorMagicNumber();
      MPSGetUShortDivisorMagicNumber();
      v568 = v86;
      MPSGetUShortDivisorMagicNumber();
      v570 = v87;
      MPSGetUShortDivisorMagicNumber();
      v569 = v88;
      MPSGetUShortDivisorMagicNumber();
      v571 = v89;
      v588 = 1;
      v587 = v502 >> 2;
      v586 = 0;
      *(a18 + 2) = v486 - v80;
      *a18 = v488 - v78;
      *(a18 + 4) = 0;
      *(a18 + 10) = WORD2(v428);
      *(a18 + 8) = v428;
      *(a18 + 14) = v486;
      *(a18 + 12) = v488;
      *(a18 + 18) = v543;
      *(a18 + 16) = v537;
      *(a18 + 22) = v522;
      *(a18 + 20) = v514;
      *(a19 + 22) = v471 * v474 * v468;
      *(a19 + 28) = 0;
      objc_msgSend_setComputePipelineState_(a2, v90, v73, v91, v92, v93, v94, v95, 0, 0, 0, 0, 0);
      if ((a6 & 2) == 0)
      {
        objc_msgSend_setTexture_atIndex_(a2, v96, a20, v72, v99, v100, v101, v102);
LABEL_68:
        objc_msgSend_setBytes_length_atIndex_(a2, v103, a18, 32, 1, v104, v105, v106);
        if ((a7 & 2) == 0)
        {
          objc_msgSend_setTexture_atIndex_(a2, v162, a21, 0, v165, v166, v167, v168);
LABEL_88:
          objc_msgSend_setBytes_length_atIndex_(a2, v169, a19, 40, 0, v170, v171, v172);
          objc_msgSend_setBytes_length_atIndex_(a2, v179, &v559, 192, 30, v180, v181, v182);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v183, v466, 0, 29, v184, v185, v186);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v187, v504, 0, 28, v188, v189, v190);
          objc_msgSend_setBuffer_offset_atIndex_(a2, v191, v460, 0, 27, v192, v193, v194);
          v604 = v557;
          *&v605 = v558;
          v554 = v474;
          v555 = v471;
          v556 = v468;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v195, &v604, &v554, v196, v197, v198, v199);
          if ((objc_msgSend_retainedReferences(a3, v200, v201, v202, v203, v204, v205, v206) & 1) == 0)
          {
            v207 = v466;
            v208 = v504;
            v209 = v460;
            v604.i64[0] = MEMORY[0x277D85DD0];
            v604.i64[1] = 3221225472;
            *&v605 = sub_239C21EE8;
            *(&v605 + 1) = &unk_278B2F2A0;
            *&v606 = v466;
            *(&v606 + 1) = v504;
            *&v607 = v460;
            objc_msgSend_addCompletedHandler_(a3, v210, &v604, v211, v212, v213, v214, v215);
          }

          MPSLibrary::ReleaseMPSKey();
          return 0;
        }

        v173 = objc_msgSend_count(a21, v162, v163, v164, v165, v166, v167, v168);
        v619 = 0u;
        v618 = 0u;
        v617 = 0u;
        v616 = 0u;
        v615 = 0u;
        v614 = 0u;
        v613 = 0u;
        v612 = 0u;
        v611 = 0u;
        v610 = 0u;
        v609 = 0u;
        v608 = 0u;
        v607 = 0u;
        v606 = 0u;
        v605 = 0u;
        v604 = 0u;
        if (!v72)
        {
          goto LABEL_88;
        }

        v174 = v173;
        v175 = 0;
        while (1)
        {
          if (v174 <= v175)
          {
            v176 = 0;
            if (v72 - v175 >= 0x20)
            {
              v177 = 32;
            }

            else
            {
              v177 = v72 - v175;
            }

            v178 = v177;
            if (!v177)
            {
              goto LABEL_81;
            }
          }

          else
          {
            if (v174 - v175 >= 0x20)
            {
              v176 = 32;
              objc_msgSend_getObjects_range_(a21, v169, &v604, v175, 32, v170, v171, v172);
            }

            else
            {
              v176 = v174 - v175;
              objc_msgSend_getObjects_range_(a21, v169, &v604, v175, v174 - v175, v170, v171, v172);
            }

            if (v72 - v175 >= 0x20)
            {
              v177 = 32;
            }

            else
            {
              v177 = v72 - v175;
            }

            v178 = v177 - v176;
            if (v177 == v176)
            {
              goto LABEL_81;
            }
          }

          bzero(&v604 + 8 * v176, 8 * v178);
LABEL_81:
          objc_msgSend_setTextures_withRange_(a2, v169, &v604, v175, v177, v170, v171, v172);
          v175 += v177;
          if (v175 >= v72)
          {
            goto LABEL_88;
          }
        }
      }

      v156 = objc_msgSend_count(a20, v96, v97, v98, v99, v100, v101, v102);
      v619 = 0u;
      v618 = 0u;
      v617 = 0u;
      v616 = 0u;
      v615 = 0u;
      v614 = 0u;
      v613 = 0u;
      v612 = 0u;
      v611 = 0u;
      v610 = 0u;
      v609 = 0u;
      v608 = 0u;
      v607 = 0u;
      v606 = 0u;
      v605 = 0u;
      v604 = 0u;
      if (!v72)
      {
        goto LABEL_68;
      }

      v157 = v156;
      v158 = 0;
      while (1)
      {
        if (v157 <= v158)
        {
          v159 = 0;
          if (v72 - v158 >= 0x20)
          {
            v160 = 32;
          }

          else
          {
            v160 = v72 - v158;
          }

          v161 = v160;
          if (!v160)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v157 - v158 >= 0x20)
          {
            v159 = 32;
            objc_msgSend_getObjects_range_(a20, v103, &v604, v158, 32, v104, v105, v106);
          }

          else
          {
            v159 = v157 - v158;
            objc_msgSend_getObjects_range_(a20, v103, &v604, v158, v157 - v158, v104, v105, v106);
          }

          if (v72 - v158 >= 0x20)
          {
            v160 = 32;
          }

          else
          {
            v160 = v72 - v158;
          }

          v161 = v160 - v159;
          if (v160 == v159)
          {
            goto LABEL_61;
          }
        }

        bzero(&v604 + 8 * v159, 8 * v161);
LABEL_61:
        objc_msgSend_setTextures_withRange_(a2, v103, &v604, v158 + v72, v160, v104, v105, v106);
        v158 += v160;
        if (v158 >= v72)
        {
          goto LABEL_68;
        }
      }
    }
  }

  return result;
}

void sub_239C241EC(uint64_t a1)
{
  if ((*(a1 + 40) | 2) == 3)
  {
  }
}

void sub_239C24208(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 56);
  }
}

uint64_t sub_239C2426C(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = *(a5 + 24);
  v66 = *(a5 + 200);
  v68 = *(a5 + 184);
  v12 = objc_msgSend_numberOfImages(*a5, a2, a3, a4, a5, a6, a7, a8);
  v13 = vmovn_s64(*(a5 + 120));
  v14 = v13.i16[2];
  LOWORD(v15) = v13.i16[0];
  v16 = vmovn_s64(*(a5 + 144));
  HIDWORD(v17) = 65537;
  LOWORD(v17) = v16.i16[0];
  v69 = v12;
  HIWORD(v15) = v14;
  v61 = *(a5 + 88);
  WORD1(v17) = v16.i16[2];
  v60[0] = v15;
  v60[1] = v17;
  v62 = objc_msgSend_numberOfImages(*(a5 + 64), v18, v19, v20, v21, v22, v23, v24);
  v63 = objc_msgSend_numberOfImages(*a5, v25, v26, v27, v28, v29, v30, v31);
  v64 = 0x10000;
  v32 = *(a5 + 168);
  v59 = *(a5 + 184);
  v33 = *(a5 + 136);
  v57[0] = *(a5 + 120);
  v57[1] = v33;
  v57[2] = *(a5 + 152);
  v58 = v32;
  v34 = *(a5 + 16);
  v35 = *(a5 + 80);
  v43 = objc_msgSend_featureChannelFormat(*a5, v36, v37, v38, v39, v40, v41, v42);
  objc_msgSend_featureChannelFormat(*(a5 + 64), v44, v45, v46, v47, v48, v49, v50);
  return sub_239C21F2C(a2, a3, a4, &v58, v57, v34, v35, v43, v51, v53, *(a5 + 8), v54, *(a5 + 200), *(a5 + 192), v55, v56, *(a5 + 160), v65, v60, *(a5 + 40), *(a5 + 104));
}

uint64_t sub_239C243C8(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = *(a5 + 24);
  v67 = *(a5 + 312);
  v69 = *(a5 + 240);
  v12 = objc_msgSend_numberOfImages(*a5, a2, a3, a4, a5, a6, a7, a8);
  v13 = vmovn_s64(*(a5 + 176));
  v14 = v13.i16[2];
  LOWORD(v15) = v13.i16[0];
  v16 = vmovn_s64(*(a5 + 200));
  HIDWORD(v17) = 65537;
  LOWORD(v17) = v16.i16[0];
  v70 = v12;
  HIWORD(v15) = v14;
  v62 = *(a5 + 144);
  WORD1(v17) = v16.i16[2];
  v61[0] = v15;
  v61[1] = v17;
  v63 = objc_msgSend_numberOfImages(*(a5 + 120), v18, v19, v20, v21, v22, v23, v24);
  v32 = objc_msgSend_numberOfImages(*a5, v25, v26, v27, v28, v29, v30, v31);
  v33 = *(a5 + 224);
  v58[2] = *(a5 + 208);
  v59 = v33;
  v34 = *(a5 + 192);
  v58[0] = *(a5 + 176);
  v58[1] = v34;
  v64 = v32;
  v65 = 0x10000;
  v60 = *(a5 + 240);
  v35 = *(a5 + 16);
  v36 = *(a5 + 136);
  v44 = objc_msgSend_featureChannelFormat(*a5, v37, v38, v39, v40, v41, v42, v43);
  objc_msgSend_featureChannelFormat(*(a5 + 120), v45, v46, v47, v48, v49, v50, v51);
  return sub_239C21F2C(a2, a3, a4, &v59, v58, v35, v36, v44, v52, v54, *(a5 + 8), v55, *(a5 + 312), *(a5 + 304), v56, v57, *(a5 + 216), v66, v61, *(a5 + 40), *(a5 + 160));
}

uint64_t sub_239C2451C(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 + 120);
  v37[0] = *(a5 + 104);
  v37[1] = v12;
  v13 = *(a5 + 64);
  v35[0] = *(a5 + 48);
  v35[1] = v13;
  v36 = *(a5 + 80);
  v14 = *(a5 + 184);
  v34 = *(a5 + 200);
  v15 = *(a5 + 152);
  v32[0] = *(a5 + 136);
  v32[1] = v15;
  v32[2] = *(a5 + 168);
  v33 = v14;
  v16 = *(a5 + 88);
  v17 = *(a5 + 32);
  v18 = objc_msgSend_featureChannelFormat(**(a5 + 24), a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_featureChannelFormat(*(*(a5 + 24) + 56), v19, v20, v21, v22, v23, v24, v25);
  return sub_239C21F2C(a2, a3, a4, &v33, v32, v16, v17, v18, v26, v28, *(*(a5 + 24) + 8), v29, *(a5 + 216), *(a5 + 208), v30, v31, *(a5 + 8), v37, v35, *(a5 + 96), *(a5 + 40));
}

uint64_t sub_239C24620(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 + 120);
  v37[0] = *(a5 + 104);
  v37[1] = v12;
  v13 = *(a5 + 64);
  v35[0] = *(a5 + 48);
  v35[1] = v13;
  v36 = *(a5 + 80);
  v14 = *(a5 + 232);
  v34 = *(a5 + 248);
  v15 = *(a5 + 200);
  v32[0] = *(a5 + 184);
  v32[1] = v15;
  v32[2] = *(a5 + 216);
  v33 = v14;
  v16 = *(a5 + 88);
  v17 = *(a5 + 32);
  v18 = objc_msgSend_featureChannelFormat(**(a5 + 24), a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_featureChannelFormat(*(*(a5 + 24) + 112), v19, v20, v21, v22, v23, v24, v25);
  return sub_239C21F2C(a2, a3, a4, &v33, v32, v16, v17, v18, v26, v28, *(*(a5 + 24) + 8), v29, *(a5 + 288), *(a5 + 280), v30, v31, *(a5 + 8), v37, v35, *(a5 + 96), *(a5 + 40));
}

uint64_t sub_239C24724(__n128 a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if ((*(a3 + 152) & 1) == 0)
  {
    if (*(a3 + 32) != *(a6 + 24))
    {
      v212 = a3;
      v213 = a4;
      v214 = a5;
      v215 = MTLReportFailureTypeEnabled();
      a5 = v214;
      a4 = v213;
      a3 = v212;
      if (v215)
      {
        v228 = *(v212 + 32);
        v229 = *(a6 + 24);
        MTLReportFailure();
        a5 = v214;
        a4 = v213;
        a3 = v212;
      }
    }

    if (*(a3 + 56) != 1)
    {
      v216 = a3;
      v217 = a4;
      v218 = a5;
      v219 = MTLReportFailureTypeEnabled();
      a5 = v218;
      a4 = v217;
      a3 = v216;
      if (v219)
      {
        MTLReportFailure();
        a5 = v218;
        a4 = v217;
        a3 = v216;
      }
    }

    if (*(a3 + 64) != 1)
    {
      v220 = a3;
      v221 = a4;
      v222 = a5;
      v223 = MTLReportFailureTypeEnabled();
      a5 = v222;
      a4 = v221;
      a3 = v220;
      if (v223)
      {
        MTLReportFailure();
        a5 = v222;
        a4 = v221;
        a3 = v220;
      }
    }

    if (*(a3 + 72) != 1)
    {
      v224 = a3;
      v225 = a4;
      v226 = a5;
      v227 = MTLReportFailureTypeEnabled();
      a5 = v226;
      a4 = v225;
      a3 = v224;
      if (v227)
      {
        MTLReportFailure();
        a5 = v226;
        a4 = v225;
        a3 = v224;
      }
    }
  }

  v7 = *(a6 + 144);
  if (v7 && *(a6 + 152))
  {
    v249 = *(a6 + 152);
    v241 = a5;
    v242 = a4;
    v8 = *a3;
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v12 = *(a3 + 32);
    v11 = *(a3 + 40);
    v13 = *(a3 + 48);
    v14 = ((v12 + 3) & 0xFFFFFFFC) / v13;
    v15 = (v14 + 7) & 0x1FFFFFFF8;
    if (v13 <= 1)
    {
      v15 = ((v12 + 3) & 0xFFFFFFFC) / v13;
    }

    v16 = v15 * v8.i16[0];
    v17 = (v15 * v8.i64[0] + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(a6 + 32) == 3 && *(a6 + 96) == 3;
    v19 = *(a6 + 120);
    v235 = *(a6 + 128);
    v236 = *(a6 + 136);
    v244 = *(a6 + 160);
    v248 = *(a3 + 144);
    v239 = *(a3 + 80);
    v21 = v10 == 1 && v9 == 1;
    a1.n128_u64[0] = *(a3 + 84);
    v238 = a1;
    v237 = *(a3 + 92);
    v240 = *(a3 + 104);
    v246 = *(a3 + 112);
    v232 = *(a6 + 168);
    v233 = *(a6 + 184);
    v231 = *(a6 + 192);
    v22 = ((v11 + 3) & 0xFFFFFFFC) / v13;
    if (v13 == 1)
    {
      if (v11 > 4 || (v23 = *(a3 + 40), v12 <= 3))
      {
        v23 = 8;
        if (*&v8 == __PAIR128__(1, 1) && (v12 & 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          if (v22 == 16 && v14 > 0x13F || (v23 = 8, (v22 & 0xFFFFFFFFFFFFFFEFLL) == 0x20) && v14 >= 0x60)
          {
            v23 = 4;
          }
        }
      }

      v24 = v17 * v8.i32[2] * v23;
      if (*(a3 + 160))
      {
        v24 = (v17 * v8.i32[2]) & 0xFFF8;
        v25 = 26;
      }

      else if (v12 == 3)
      {
        if (v21)
        {
          v25 = 14;
        }

        else
        {
          v25 = 10;
        }
      }

      else if (v12 == 1)
      {
        if (v8.i64[1] == 5 && v8.i64[0] == 5)
        {
          v27 = 20;
        }

        else
        {
          v27 = 16;
        }

        if (v8.i64[1] == 3 && v8.i64[0] == 3)
        {
          v27 = 18;
        }

        if (v21)
        {
          v25 = v27;
        }

        else
        {
          v25 = 8;
        }

        if (v21)
        {
          v24 = (((v8.i16[0] + 7) & 0xFFF8) * v8.i16[4]) & 0xFFF8;
          v17 = (v8.i64[0] + 7) & 0xFFFFFFFFFFFFFFF8;
          v16 = *a3;
        }
      }

      else if (v11 > 4 || v12 < 4)
      {
        v25 = 12;
        if (*&v8 == __PAIR128__(1, 1))
        {
          v25 = 22;
          if (v22 != 16 || v14 <= 0x13F)
          {
            if (v14 > 0x5F && (v22 & 0xFFFFFFFFFFFFFFEFLL) == 32)
            {
              v25 = 22;
            }

            else
            {
              v25 = 24;
            }
          }
        }
      }

      else
      {
        if (v11 == 4)
        {
          v29 = 6;
        }

        else
        {
          v29 = 12;
        }

        if (v11 == 3)
        {
          v25 = 4;
        }

        else
        {
          v25 = v29;
        }

        if (v11 == 2)
        {
          v30 = 2;
        }

        else
        {
          v30 = 12;
        }

        if (v11 == 1)
        {
          v30 = 0;
        }

        if (v11 <= 2)
        {
          v25 = v30;
        }
      }
    }

    else
    {
      v24 = 8 * v17 * v8.i32[2];
      v25 = 28;
    }

    v230 = *(a3 + 40);
    v245 = *(a3 + 48);
    v234 = *a3;
    v247 = v25 + v18;
    ComputeState = MPSLibrary::GetComputeState();
    v243 = ComputeState;
    v39 = (*(a6 + 88) + 3) >> 2;
    v40 = vmovn_s64(v234);
    v41 = vand_s8(v40, 0xFFFF0000FFFFLL);
    v253[1] = v40.i16[2];
    v253[0] = v40.i16[0];
    v42 = vshr_n_u32(v41, 1uLL);
    v253[3] = v42.i16[2];
    v253[2] = v42.i16[0];
    v253[5] = v9;
    v253[4] = v10;
    v43 = v22 >> 2;
    v42.i16[0] = v14 >> 2;
    v42.i16[1] = v22 >> 2;
    v42.i16[2] = (v14 * v245) >> 2;
    v42.i16[3] = (v22 * v245) >> 2;
    v254 = v42;
    v256 = v231 >> 2;
    HIDWORD(v44) = v232.i32[3];
    *&v44 = vmovn_s64(v232);
    WORD1(v44) = WORD2(v44);
    WORD2(v44) = v233;
    v255 = v39;
    v41.i16[0] = v19;
    v41.i16[1] = v235;
    v41.i16[2] = v236;
    v257 = v44;
    v258 = v41;
    LOWORD(v44) = v7 + v19;
    WORD1(v44) = v249 + v235;
    WORD2(v44) = v244 + v236;
    v45 = vmovn_s64(vshlq_u64(vdupq_n_s64(v17), xmmword_239D7E310));
    LOWORD(v46) = v16;
    WORD1(v46) = v17;
    WORD2(v46) = v45.i16[0];
    HIWORD(v46) = v45.i16[2];
    v259 = v44;
    v260 = v46;
    LODWORD(v44) = v24;
    DWORD1(v44) = v24 >> 2;
    DWORD2(v44) = v24 >> 3;
    v261 = v44;
    v262 = v239;
    v47 = v238;
    v47.n128_u32[2] = v237;
    v263 = v47;
    v48 = v247 & 0x3E;
    if (v48 == 26)
    {
      v249 = v244 * v245 * v43;
      MPSGetUShortDivisorMagicNumber();
      v265 = v55;
      *(&v55 + 1) = v55;
      v56 = 1;
      v264 = v55;
      v57 = 32;
      v58 = 1;
      v59 = 1;
      v60 = 1;
      v61 = v242;
      goto LABEL_72;
    }

    if (v247 <= 7)
    {
      v65 = 4;
      if (v43 < 4)
      {
        v65 = v22 >> 2;
      }

      v58 = (((v43 - 1 + v65) / v65) + v43 - 1) / ((v43 - 1 + v65) / v65);
      v62 = ComputeState;
      v66 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v32, v33, v34, v35, v36, v37, v38, v228, v229);
      v74 = objc_msgSend_threadExecutionWidth(v243, v67, v68, v69, v70, v71, v72, v73);
      if (v66 / v58 <= v7)
      {
        v57 = 1;
        v76 = v245;
      }

      else
      {
        v75 = 1;
        v76 = v245;
        while (1)
        {
          v57 = v75;
          v77 = v75 * v58;
          v78 = v75 * v58 % v74;
          ++v75;
          if (v78)
          {
            v79 = v77 > v66;
          }

          else
          {
            v79 = 1;
          }

          if (v79)
          {
            v75 = v57 >= v7 ? v57 : v57 + 1;
            if (v57 >= v7 || v75 * v58 > v66)
            {
              break;
            }
          }
        }
      }

      if (v57 * v58 % v74 || v57 * v58 > v66)
      {
        v56 = v74 >> 2;
        v57 = v66 / v74;
      }

      else
      {
        v56 = 1;
      }

      v61 = v242;
      v59 = (v7 + v57 - 1) / v57;
      v82 = v249 + v56 - 1;
      v249 = v244 * v76;
      v60 = v82 / v56;
      MPSGetUShortDivisorMagicNumber();
      v265 = v83;
      MPSGetUShortDivisorMagicNumber();
      *&v264 = v84;
      MPSGetUShortDivisorMagicNumber();
      *(&v264 + 1) = v85;
      if (*(*(*(v248 + 280) + 16 * v247) + 64))
      {
        goto LABEL_73;
      }

      goto LABEL_101;
    }

    if (v247 - 22 <= 3)
    {
      v80 = v14;
      if (v7 > 0x1B)
      {
        v81 = 2;
      }

      else if (v230 <= (0x1Cu / v7) << 6)
      {
        v81 = 2;
      }

      else
      {
        v81 = 8;
      }

      v133 = objc_msgSend_threadExecutionWidth(ComputeState, v32, v33, v34, v35, v36, v37, v38, v228, v229);
      v141 = objc_msgSend_maxTotalThreadsPerThreadgroup(v243, v134, v135, v136, v137, v138, v139, v140);
      v142 = 2;
      if ((v247 & 0x1E) != 0x16)
      {
        v142 = 3;
      }

      v143 = v22 >> v142;
      if (v143 <= 1)
      {
        v143 = 1;
      }

      if (v143 >= 8)
      {
        v144 = 8;
      }

      else
      {
        v144 = v143;
      }

      v145 = v144;
        ;
      }

      v147 = v145 + 1;
      v148 = 1;
      do
      {
        v149 = v148;
        v150 = v148 * v147;
        if (v7 <= 2 * v148)
        {
          break;
        }

        ++v148;
      }

      while (v150 < v141);
      v151 = v80;
      if (v150 >= v141)
      {
        v153 = 1;
      }

      else
      {
        v152 = 1;
        v153 = 1;
        do
        {
          do
          {
            v158 = v152;
            v159 = v152 * v150;
            v160 = v152 * v150 % v133;
            if (v152 > v81)
            {
              break;
            }

            ++v152;
          }

          while (v160 && v159 < v141);
          v156 = v159 >= v141 || v160 != 0 || v158 > v81;
          v152 = v158 + !v156;
          if (!v156)
          {
            v153 = v158;
          }
        }

        while (v152 <= v81 && v152 * v150 < v141);
      }

      v162 = v153 * v150;
      if (v162 % v133)
      {
        v163 = 1;
      }

      else
      {
        v163 = v162 > v141;
      }

      if (v163)
      {
        v149 = v141 / v147;
        if (v141 / v147 <= 1)
        {
          v149 = 1;
        }

        v164 = 2 * v149;
        v173 = v245;
        if (2 * v149 > v7)
        {
          v165 = 1;
          while (1)
          {
            v149 = v165;
            v166 = v165 * v147;
            v167 = v165 * v147 % v133;
            ++v165;
            if (v167)
            {
              v168 = v166 > v141;
            }

            else
            {
              v168 = 1;
            }

            if (v168)
            {
              v164 = 2 * v149;
              v165 = 2 * v149 >= v7 ? v149 : v149 + 1;
              if (2 * v149 >= v7 || v166 > v141)
              {
                break;
              }
            }
          }
        }

        if (v164 > 2 * v7)
        {
          v169 = 1;
          while (1)
          {
            v149 = v169;
            v170 = v169 * v144;
            v171 = v169 * v144 % v133;
            ++v169;
            if (v171)
            {
              v172 = v170 > v141;
            }

            else
            {
              v172 = 1;
            }

            if (v172)
            {
              v169 = 2 * v149 >= v7 ? v149 : v149 + 1;
              if (2 * v149 >= v7 || v170 > v141)
              {
                break;
              }
            }
          }

          v147 = v144;
        }
      }

      else
      {
        v173 = v245;
      }

      do
      {
        v57 = v147;
        if (v147 < 2)
        {
          break;
        }

        v147 >>= 1;
      }

      while (v143 % v57);
      v174 = 2 * v149;
      v175 = v149;
      v61 = v242;
      do
      {
        v176 = v175 - 1;
        if (v175 < 2)
        {
          break;
        }

        v177 = v7 % v174;
        v174 -= 2;
        --v175;
      }

      while (v177);
      if (v176)
      {
        v56 = v176 + 1;
      }

      else
      {
        v56 = v149;
      }

      if (v151 > 0x13F && v22 == 32)
      {
        v58 = 4;
      }

      else
      {
        v58 = v153;
      }

      v59 = (v143 + v57 - 1) / v57 * v173 * v244;
      v60 = (v7 + 2 * v56 - 1) / (2 * v56);
      v249 = (v249 + v58 - 1) / v58;
      MPSGetUShortDivisorMagicNumber();
      v265 = v179;
      MPSGetUShortDivisorMagicNumber();
      *&v264 = v180;
      MPSGetUShortDivisorMagicNumber();
      *(&v264 + 1) = v181;
      v62 = v243;
      goto LABEL_285;
    }

    if (v247 > 0x1D || ((1 << v247) & 0x3000F000) == 0)
    {
      v185 = objc_msgSend_threadExecutionWidth(ComputeState, v32, v33, v34, v35, v36, v37, v38, v228, v229);
      v193 = objc_msgSend_maxTotalThreadsPerThreadgroup(v243, v186, v187, v188, v189, v190, v191, v192);
      if ((v22 + 7) >> 3 <= 1)
      {
        v194 = 1;
      }

      else
      {
        v194 = (v22 + 7) >> 3;
      }

      if (v194 >= 8)
      {
        v57 = 8;
      }

      else
      {
        v57 = v194;
      }

      if (v193 <= v185)
      {
        v195 = 0;
      }

      else
      {
        v195 = v185;
      }

      v196 = v193 - v195;
      if (v196 % v57)
      {
        if (v194 >= v185)
        {
          v197 = v185;
        }

        else
        {
          v197 = v194;
        }

        v198 = 1;
        v199 = v245;
        do
        {
          v57 = v198;
          v198 *= 2;
        }

        while (v57 <= v197);
        v200 = (v194 + v57 - 1) / v57;
        v61 = v242;
      }

      else
      {
        v200 = (v57 + v194 - 1) / v57;
        v61 = v242;
        v199 = v245;
      }

      v201 = v196 / v57;
      if (v201 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v201;
      }

      v59 = v200 * v199 * v244;
      v60 = (v7 + 2 * v56 - 1) / (2 * v56);
      MPSGetUShortDivisorMagicNumber();
      v265 = v202;
      MPSGetUShortDivisorMagicNumber();
      *(&v264 + 1) = v203;
      MPSGetUShortDivisorMagicNumber();
      *&v264 = v204;
      v58 = 1;
LABEL_72:
      v62 = v243;
      if (*(*(*(v248 + 280) + 16 * v247) + 64))
      {
LABEL_73:
        v63 = v56;
        v56 = v58;
        v64 = v60;
        v60 = v249;
LABEL_102:
        objc_msgSend_setComputePipelineState_(v61, v49, v62, v50, v51, v52, v53, v54, v228, v229);
        objc_msgSend_setTexture_atIndex_(v61, v86, *(a6 + 40), 0, v87, v88, v89, v90);
        objc_msgSend_setTexture_atIndex_(v61, v91, *(a6 + 104), 1, v92, v93, v94, v95);
        objc_msgSend_setBytes_length_atIndex_(v61, v96, v253, 144, 1, v97, v98, v99);
        objc_msgSend_setBuffer_offset_atIndex_(v61, v100, v240, 0, 2, v101, v102, v103);
        objc_msgSend_setBuffer_offset_atIndex_(v61, v104, v246, 0, 3, v105, v106, v107);
        if (v48 == 26)
        {
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v61, v108, 512, 0, v111, v112, v113, v114);
        }

        if ((objc_msgSend_retainedReferences(v241, v108, v109, v110, v111, v112, v113, v114) & 1) == 0)
        {
          v120 = v240;
          v121 = v246;
          v252[0] = MEMORY[0x277D85DD0];
          v252[1] = 3221225472;
          v252[2] = sub_239C256D0;
          v252[3] = &unk_278B2F6B0;
          v252[4] = v240;
          v252[5] = v246;
          objc_msgSend_addCompletedHandler_(v241, v122, v252, v123, v124, v125, v126, v127);
        }

        v251[0] = v64;
        v251[1] = v60;
        v251[2] = v59;
        v250[0] = v63;
        v250[1] = v56;
        v250[2] = v57;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v61, v115, v251, v250, v116, v117, v118, v119);
        MPSLibrary::ReleaseComputeState();
        return 0;
      }

LABEL_101:
      v63 = v57;
      v57 = v58;
      v64 = v59;
      v59 = v249;
      goto LABEL_102;
    }

    v129 = (v22 + 7) >> 3;
    if (v129 <= 1)
    {
      v129 = 1;
    }

    if (v22 <= 0x70)
    {
      v130 = 5;
      do
      {
        --v130;
      }

      while (v129 % v130);
      if ((v7 & 3) != 0)
      {
        v131 = 1;
      }

      else
      {
        v131 = 2;
      }

      if (v249)
      {
        v132 = 1;
      }

      else
      {
        v132 = 2;
      }

      if (v7 >= 0x30 && v22 >= 0x21)
      {
        if ((v7 & 7) != 0)
        {
          if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v7, 1) < 0x2AAAAAAAAAAAAAABuLL)
          {
            v131 = 3;
          }

          else if ((v7 & 3) != 0)
          {
            v131 = 1;
          }

          else
          {
            v131 = 2;
          }
        }

        else
        {
          v131 = 4;
        }
      }

      goto LABEL_270;
    }

    v183 = (v7 & 3) != 0;
    if ((v7 & 3) != 0)
    {
      v184 = v7 % 6;
      v183 = v7 % 6 != 0;
      if (v7 % 6)
      {
        LODWORD(v184) = v7 & 7;
        v183 = (v7 & 7) != 0;
        if ((v7 & 7) != 0)
        {
          v184 = v7 % 0xA;
          v183 = v7 % 0xA != 0;
          if (v7 % 0xA)
          {
            v184 = v7 % 0xC;
            v183 = v7 % 0xC != 0;
            if (v7 % 0xC)
            {
              v184 = v7 % 0xE;
              v183 = v7 % 0xE != 0;
              if (v7 % 0xE)
              {
                LODWORD(v184) = v7 & 0xF;
                v183 = (v7 & 0xF) != 0;
                if ((v7 & 0xF) != 0)
                {
                  v183 = __ROR8__(0x8E38E38E38E38E39 * v7, 1) > 0xE38E38E38E38E38uLL;
                  LODWORD(v184) = 1;
                  v131 = 9;
                }

                else
                {
                  v131 = 8;
                }
              }

              else
              {
                v131 = 7;
              }
            }

            else
            {
              v131 = 6;
            }
          }

          else
          {
            v131 = 5;
          }
        }

        else
        {
          v131 = 4;
        }
      }

      else
      {
        v131 = 3;
      }
    }

    else
    {
      LODWORD(v184) = 0;
      v131 = 2;
    }

    if (v184)
    {
      if (v183)
      {
        goto LABEL_262;
      }
    }

    else if ((v7 & 3) == 0)
    {
LABEL_262:
      v132 = 9;
      v131 = 2;
      do
      {
        --v132;
      }

      while (v249 % v132);
LABEL_269:
      v130 = 2;
LABEL_270:
      if (v130 >= v129)
      {
        v57 = v129;
      }

      else
      {
        v57 = v130;
      }

      v205 = (v129 + v57 - 1) / v57;
      v206 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v32, v33, v34, v35, v36, v37, v38, v228, v229);
      v207 = 8;
      if (v57 << 6 <= v206)
      {
        v208 = 8;
      }

      else
      {
        v208 = v131;
      }

      if (v57 << 6 > v206)
      {
        v207 = v132;
      }

      if (v208 >= (v7 + 1) >> 1)
      {
        v56 = (v7 + 1) >> 1;
      }

      else
      {
        v56 = v208;
      }

      if (v207 >= v249)
      {
        v58 = v249;
      }

      else
      {
        v58 = v207;
      }

      v59 = v205 * v245 * v244;
      v60 = (v7 + 2 * v56 - 1) / (2 * v56);
      v249 = (v249 + v58 - 1) / v58;
      MPSGetUShortDivisorMagicNumber();
      v265 = v209;
      v62 = v243;
      MPSGetUShortDivisorMagicNumber();
      *&v264 = v210;
      MPSGetUShortDivisorMagicNumber();
      *(&v264 + 1) = v211;
      v61 = v242;
LABEL_285:
      v48 = v247 & 0x3E;
      if (*(*(*(v248 + 280) + 16 * v247) + 64))
      {
        goto LABEL_73;
      }

      goto LABEL_101;
    }

    if (v249 <= 7)
    {
      v132 = 1;
    }

    else
    {
      v132 = 2;
    }

    goto LABEL_269;
  }

  return 0;
}

void sub_239C256D0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_239C2570C(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v268 = *MEMORY[0x277D85DE8];
  v206 = a2[15];
  v230 = *a2;
  v232 = a2[16];
  v221 = a2[2];
  v223 = a2[1];
  v214 = a2[3];
  v215 = a2[4];
  v210 = *(a2 + 5);
  v14 = a2[7];
  v13 = a2[8];
  v202 = a2[9];
  v217 = a2[10];
  v15 = a2[11];
  v16 = a2[14];
  v220 = *(a2 + 96);
  v227 = (*(*a1 + 208))(a1);
  v17 = v13;
  v234 = v15;
  if (!v15)
  {
    LODWORD(v13) = v14 / v230 * v13;
  }

  v235 = a7;
  v225 = a4;
  MEMORY[0x23EE7D040](v252, a4, 0);
  v18 = MEMORY[0x277CD7480];
  if (!*(v235 + *MEMORY[0x277CD7480]))
  {
    v228 = 0;
    explicit = 0;
    v22 = v235;
    goto LABEL_11;
  }

  v19 = MEMORY[0x277CD7488];
  v20 = (*(v235 + *MEMORY[0x277CD7488]) + 8);
  explicit = atomic_load_explicit(v20, memory_order_acquire);
  if (explicit)
  {
    v21 = *(v235 + *v18);
    v22 = v235;
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_10:
    v228 = 0;
    goto LABEL_11;
  }

  MPSAutoBuffer::AllocateBuffer(v20, 0);
  explicit = atomic_load_explicit(v20, memory_order_acquire);
  v24 = *(v235 + *v18);
  v22 = v235;
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_6:
  v23 = (*(v22 + *v19) + 80);
  v228 = atomic_load_explicit(v23, memory_order_acquire);
  if (!v228)
  {
    MPSAutoBuffer::AllocateBuffer(v23, 0);
    v228 = atomic_load_explicit(v23, memory_order_acquire);
  }

LABEL_11:
  v203 = (v221 * v223 * v13) + 3;
  v211 = v203 & 0x1FFFFFFFCLL;
  v204 = ((v17 / v230 + 3) & 0x1FFFFFFFCLL) * v230;
  v209 = *(a2 + 17);
  if (a8)
  {
    v25 = v22;
    v26 = *(v22 + 336);
    if (v26 >= 2)
    {
      v216 = *(v25 + 304);
      v27 = *(v25 + 312);
      goto LABEL_25;
    }
  }

  else
  {
    if (v16 >= v232)
    {
      v26 = v232;
    }

    else
    {
      v26 = v16;
    }

    if (v227)
    {
      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(a3, v29, ComputeState, v30, v31, v32, v33, v34);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setBuffer_offset_atIndex_(a3, v35, explicit, 0, 29, v36, v37, v38);
      objc_msgSend_setBuffer_offset_atIndex_(a3, v39, v228, 0, 28, v40, v41, v42);
      LODWORD(v240[0]) = v203 & 0xFFFFFFFC;
      LODWORD(v238) = ((v17 / v230 + 3) & 0xFFFFFFFC) * v230;
      objc_msgSend_setBytes_length_atIndex_(a3, v43, v240, 4, 27, v44, v45, v46);
      objc_msgSend_setBytes_length_atIndex_(a3, v47, &v238, 4, 26, v48, v49, v50);
      *&v253[0] = (LODWORD(v240[0]) + 255) >> 8;
      *(v253 + 8) = vdupq_n_s64(1uLL);
      v245 = xmmword_239D7E320;
      *&v246 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v51, v253, &v245, v52, v53, v54, v55);
    }

    else
    {
      v56 = (v203 >> 2) * (16 * v26 + 16);
      do
      {
        v57 = v26--;
        v56 -= 16 * (v203 >> 2);
      }

      while (v57 >= 2 && 4 * (v204 + v211) * v57 > 0x1000000);
      *(v235 + 336) = ++v26;
      if (v57 >= 2)
      {
        v216 = MPSGetTemporaryBufferFromCommandBufferCache();
        v27 = MPSGetTemporaryBufferFromCommandBufferCache();
        *(v235 + 304) = v216;
        *(v235 + 312) = v27;
        *(v235 + 288) = 0;
        goto LABEL_25;
      }
    }
  }

  v27 = v228;
  v216 = explicit;
LABEL_25:
  v58 = v232;
  v59 = v14 / v230;
  if (v26 < v232)
  {
    v58 = v26;
  }

  v205 = v58;
  v60 = v17 / v230 + 3;
  v201 = v60 >> 2;
  v61 = (v60 >> 2) * v230;
  v213 = a5;
  if (v234)
  {
    v226 = (v60 >> 2) * v230;
    v207 = 1;
    LOWORD(v62) = 1;
    v63 = a6;
    v64 = *a6;
    v212 = v27;
    v200 = (v59 + 3) >> 2;
    if (v220)
    {
LABEL_29:
      v208 = 0;
      v65 = -(v202 + v64 * v214);
      v66 = -(v217 + *(v63 + 2) * v215);
      LOWORD(v64) = 0;
      goto LABEL_38;
    }
  }

  else
  {
    if ((v59 + 3) >> 2 >= 4)
    {
      LOWORD(v62) = 4;
    }

    else
    {
      v62 = (v59 + 3) >> 2;
    }

    if (v61 >= 4)
    {
      v67 = 4;
    }

    else
    {
      v67 = (v60 >> 2) * v230;
    }

    v207 = v67;
    v226 = (v61 + v67 - 1) / v67;
    v63 = a6;
    v64 = *a6;
    v212 = v27;
    v200 = (v59 + 3) >> 2;
    if (v220)
    {
      goto LABEL_29;
    }
  }

  LOWORD(v66) = 0;
  LOWORD(v65) = 0;
  v208 = *(v63 + 4);
LABEL_38:
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  WORD1(v245) = v17;
  if (v234)
  {
    v68 = 1;
  }

  else
  {
    v68 = v59;
  }

  v218 = v221 * v223;
  DWORD1(v245) = v68 * v221 * v223;
  v69 = vmovn_s64(v209);
  LOWORD(v245) = v59;
  v69.i16[1] = v69.i16[2];
  v69.i16[2] = v232;
  *(&v245 + 1) = v69;
  MPSGetUShortDivisorMagicNumber();
  *&v246 = v70;
  WORD5(v246) = v221;
  LOWORD(v70) = v214;
  WORD1(v70) = v215;
  WORD2(v70) = v26;
  WORD4(v246) = v223;
  *&v247 = v70;
  v71 = vmovn_s64(v210);
  WORD5(v247) = v71.i16[2];
  WORD4(v247) = v71.i16[0];
  HIWORD(v247) = v66;
  WORD6(v247) = v65;
  WORD1(v248) = v208;
  LOWORD(v248) = v64;
  MPSGetUShortDivisorMagicNumber();
  *(&v248 + 1) = v72;
  WORD1(v249) = v207;
  LOWORD(v249) = v62;
  MPSGetUShortDivisorMagicNumber();
  *(&v249 + 1) = v73;
  MPSGetUShortDivisorMagicNumber();
  *&v250 = v74;
  MPSGetUShortDivisorMagicNumber();
  *(&v250 + 1) = v75;
  *&v251 = 0;
  *(&v251 + 1) = __PAIR64__(v61, v211);
  if (v234)
  {
    v222 = 1;
    v224 = 0;
    v76 = 8;
    v77 = v225;
    v78 = v213;
  }

  else
  {
    MPSGetUShortDivisorMagicNumber();
    v77 = v225;
    v78 = v213;
    v218 = (v200 * v218 + 7) >> 3;
    v226 = ((v201 + 7) >> 3) * v230;
    *&v251 = v79;
    v224 = 5120;
    v222 = 8;
    v76 = 1;
  }

  v80 = ((*(v78 + 24) & 0x3F) << 6) & 0xFFF | ((a6[3] & 0x3Fu) << 12);
  v240[0] = v16;
  v240[1] = v80;
  v240[2] = -1;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0;
  v231 = v76;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  *(v235 + 288) = 1;
  objc_msgSend_setComputePipelineState_(a3, v82, PipelineStateForMPSKey, v83, v84, v85, v86, v87, 0, 0, 0);
  v95 = *(v78 + 64);
  if ((*(v78 + 24) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a3, v88, *(v78 + 64), 0, v91, v92, v93, v94);
    goto LABEL_65;
  }

  v100 = objc_msgSend_count(*(v78 + 64), v88, v89, v90, v91, v92, v93, v94);
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  memset(v253, 0, sizeof(v253));
  if (v16)
  {
    v101 = v100;
    for (i = 0; i < v16; i += v104)
    {
      if (v101 <= i)
      {
        v103 = 0;
        if (v16 - i >= 0x20)
        {
          v104 = 32;
        }

        else
        {
          v104 = v16 - i;
        }

        v105 = v104;
        if (!v104)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v101 - i >= 0x20)
        {
          v103 = 32;
          objc_msgSend_getObjects_range_(v95, v96, v253, i, 32, v97, v98, v99);
        }

        else
        {
          v103 = v101 - i;
          objc_msgSend_getObjects_range_(v95, v96, v253, i, v101 - i, v97, v98, v99);
        }

        if (v16 - i >= 0x20)
        {
          v104 = 32;
        }

        else
        {
          v104 = v16 - i;
        }

        v105 = v104 - v103;
        if (v104 == v103)
        {
          goto LABEL_57;
        }
      }

      bzero(v253 + 8 * v103, 8 * v105);
LABEL_57:
      objc_msgSend_setTextures_withRange_(a3, v96, v253, i, v104, v97, v98, v99);
    }
  }

  v77 = v225;
  v78 = v213;
LABEL_65:
  objc_msgSend_setBytes_length_atIndex_(a3, v96, v78 + 28, 32, 0, v97, v98, v99);
  v113 = a6[8];
  if ((a6[3] & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a3, v106, a6[8], v16, v109, v110, v111, v112);
    goto LABEL_86;
  }

  v118 = objc_msgSend_count(a6[8], v106, v107, v108, v109, v110, v111, v112);
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  memset(v253, 0, sizeof(v253));
  if (v16)
  {
    v119 = v118;
    for (j = 0; j < v16; j += v122)
    {
      if (v119 <= j)
      {
        v121 = 0;
        if (v16 - j >= 0x20)
        {
          v122 = 32;
        }

        else
        {
          v122 = v16 - j;
        }

        v123 = v122;
        if (!v122)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v119 - j >= 0x20)
        {
          v121 = 32;
          objc_msgSend_getObjects_range_(v113, v114, v253, j, 32, v115, v116, v117);
        }

        else
        {
          v121 = v119 - j;
          objc_msgSend_getObjects_range_(v113, v114, v253, j, v119 - j, v115, v116, v117);
        }

        if (v16 - j >= 0x20)
        {
          v122 = 32;
        }

        else
        {
          v122 = v16 - j;
        }

        v123 = v122 - v121;
        if (v122 == v121)
        {
          goto LABEL_78;
        }
      }

      bzero(v253 + 8 * v121, 8 * v123);
LABEL_78:
      objc_msgSend_setTextures_withRange_(a3, v114, v253, j + v16, v122, v115, v116, v117);
    }
  }

  v77 = v225;
LABEL_86:
  objc_msgSend_setBytes_length_atIndex_(a3, v114, a6 + 28, 32, 1, v115, v116, v117);
  objc_msgSend_setBytes_length_atIndex_(a3, v124, &v245, 112, 30, v125, v126, v127);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v128, v216, 0, 29, v129, v130, v131);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v132, v212, 0, 28, v133, v134, v135);
  v141 = v231 * v231;
  v142 = 80 * v141;
  v143 = v141 > 1;
  v144 = v224;
  if (!v143)
  {
    v144 = 0;
  }

  if (v234)
  {
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a3, v136, v142, 0, v137, v138, v139, v140);
  }

  else
  {
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a3, v136, v144, 0, v137, v138, v139, v140);
  }

  *&v253[0] = v218;
  *(&v253[0] + 1) = v226;
  *&v253[1] = v205;
  *&v238 = v231;
  *(&v238 + 1) = 8;
  v239 = v222;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v145, v253, &v238, v146, v147, v148, v149);
  v158 = v26 < 2 || v232 + a8 != v206;
  if (((v158 | v227) & 1) == 0)
  {
    v237[0] = v26;
    v237[1] = v203 >> 2;
    v237[2] = v204 >> 2;
    MPSLibrary::CreateUberShaderKey();
    v159 = MPSLibrary::GetPipelineStateForMPSKey();
    MPSLibrary::ReleaseMPSKey();
    objc_msgSend_setComputePipelineState_(a3, v160, v159, v161, v162, v163, v164, v165, 0, 0, 0, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v166, v237, 12, 30, v167, v168, v169);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v170, v216, 0, 29, v171, v172, v173);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v174, v212, 0, 28, v175, v176, v177);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v178, explicit, 0, 27, v179, v180, v181);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v182, v228, 0, 26, v183, v184, v185);
    *&v253[0] = ((v203 >> 2) + 255) >> 8;
    *(v253 + 8) = vdupq_n_s64(1uLL);
    v238 = xmmword_239D7E320;
    v239 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v186, v253, &v238, v187, v188, v189, v190);
    MPSReturnTemporaryBufferToCommandBufferCache();
    MPSReturnTemporaryBufferToCommandBufferCache();
  }

  if ((objc_msgSend_retainedReferences(v77, v150, v151, v152, v153, v154, v155, v156) & 1) == 0)
  {
    v191 = explicit;
    v192 = v228;
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 3221225472;
    v236[2] = sub_239C26610;
    v236[3] = &unk_278B2F6B0;
    v236[4] = explicit;
    v236[5] = v228;
    objc_msgSend_addCompletedHandler_(v77, v193, v236, v194, v195, v196, v197, v198);
  }

  MPSLibrary::ReleaseMPSKey();
  MPSAutoCache::~MPSAutoCache(v252);
  return 0;
}

uint64_t sub_239C26514(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a2 + 64);
  v5 = v4 >> 15;
  v32 = BYTE4(v4) & 1;
  v31 = (v4 >> 33) & 1;
  v6 = (v4 >> 30) & 1;
  v7 = v4 & 0x7FFF;
  v8 = MPSCreateFunctionConstantValues();
  v25 = *a3;
  v26 = (v7 | (v6 << 15)) & 0xFFFFFFFF8000FFFFLL | ((v5 & 0x7FFF) << 16);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_239C19E34(v8, &v25, v9, v10, v11, v12, v13, v14);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v15, &v32, 53, 0, v16, v17, v18);
  objc_msgSend_setConstantValue_type_atIndex_(v8, v19, &v31, 41, 1, v20, v21, v22);
  v23 = _MPSNewSpecializedFunction();

  return v23;
}

void sub_239C26610(uint64_t a1)
{
  v2 = *(a1 + 40);
}

unint64_t sub_239C2664C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v13 = a3 / (a7 * a7);
  v14 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a7 * a7;
  if (a7 >= 2 && ((v13 & 3) == 0 || a4 == 1))
  {
    a3 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a7 * a7;
  }

  v16 = a3 / a4;
  v17 = (*(*a1 + 264))(a1);
  if (a8 == 1)
  {
    v24 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = 1;
  }

  else
  {
    v18 = a2 / a4;
    if (a8)
    {
      v24 = ((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) * a8;
      v27 = (2 * v18 - 1) / v18 * v18;
    }

    else
    {
      v19 = v18 < 5;
      v20 = a4 == 1;
      if (v20 && v16 < 5)
      {
        v21 = 4;
      }

      else
      {
        v21 = v17;
      }

      v22 = !v20 || !v19;
      if (v20 && v19)
      {
        v23 = 4;
      }

      else
      {
        v23 = 8;
      }

      v24 = (v16 + v21 - 1) / v21 * v21;
      v25 = v18 + v23;
      v26 = -8;
      if (!v22)
      {
        v26 = -4;
      }

      v27 = (v25 - 1) & v26;
    }
  }

  v28 = v24 * a4;
  if (v28 <= v14)
  {
    v28 = v14;
  }

  return (2 * a5 * a6 * v27 * v28 + 30) & 0xFFFFFFFFFFFFFFE0;
}

_DWORD *sub_239C269EC(_DWORD *__dst, char *__src, void *a3)
{
  v4 = __src;
  v5 = __dst;
  v6 = a3[12];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = a3[6];
      if (v7)
      {
        if (a3[11] <= 1uLL)
        {
          v22 = 0;
          for (i = 0; i < v7; ++i)
          {
            v24 = a3[4];
            v25 = a3[5];
            v26 = v24 * i;
            v27 = &v4[4 * v24 * i];
            if (a3[11] < 2uLL)
            {
              __dst = memcpy(&v5[v25 * i], v27, 4 * v24);
              v7 = a3[6];
            }

            else if (v24)
            {
              v29 = a3[9];
              v28 = a3[10];
              v30 = (v5 + v25 * v22);
              do
              {
                if (v26 % v28 < v29)
                {
                  v31 = *v27;
                  v27 += 4;
                  *v30 = v31;
                }

                ++v30;
                ++v26;
                --v24;
              }

              while (v24);
            }

            v22 += 4;
          }
        }

        else
        {
          v8 = a3[4];
          if (v8)
          {
            v9 = 0;
            v10 = 0;
            v12 = a3[9];
            v11 = a3[10];
            v13 = 4 * a3[5];
            do
            {
              v14 = &__src[4 * v10 * v8];
              v15 = v9;
              v16 = v5;
              __dst = v8;
              do
              {
                if (v15 % v11 < v12)
                {
                  v17 = *v14;
                  v14 += 4;
                  *v16 = v17;
                }

                ++v16;
                ++v15;
                __dst = (__dst - 1);
              }

              while (__dst);
              ++v10;
              v5 = (v5 + v13);
              v9 += v8;
            }

            while (v10 != v7);
          }
        }
      }

      return __dst;
    }

    v19 = a3[1];
    v20 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v20)
    {
      return __dst;
    }

    v21 = a3[3];
    if (v21 > v6)
    {
      return __dst;
    }

    v32 = 0;
    v33 = 0;
    v34 = v6 / v21;
    if (v21 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = a3[3];
    }

    if (v34 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v6 / v21;
    }

    v37 = &__src[4 * v21 * (v36 - 1)];
    v38 = 2 * v6;
    v39 = 3 * v6;
    v40 = 16 * v6;
    __dst = (16 * v35);
    v41 = v6;
    v95 = &v4[12 * v6];
    v96 = 16 * v6;
    v42 = &v4[8 * v6];
    v43 = &v4[4 * v6];
    v44 = &v37[4 * v35];
    v91 = &v44[v39 * 4];
    v92 = v44;
    v89 = &v44[v41 * 4];
    v90 = &v44[v38 * 4];
    v45 = 4 * v21;
    v93 = v43;
    v94 = v42;
    while (1)
    {
      if (v33 >= v19)
      {
        v76 = 0;
        do
        {
          v5 = (__dst + v5);
          ++v76;
        }

        while (v76 < v34);
      }

      else if ((v33 | 1) >= v19)
      {
        v77 = 0;
        v78 = v4;
        do
        {
          v79 = 0;
          do
          {
            *v5 = *&v78[4 * v79];
            v5 += 4;
            ++v79;
          }

          while (v35 != v79);
          ++v77;
          v78 += v45;
        }

        while (v77 < v34);
      }

      else if ((v33 | 2) >= v19)
      {
        v80 = 0;
        v81 = v4;
        v82 = v43;
        do
        {
          v83 = 0;
          do
          {
            *v5 = *&v81[4 * v83];
            v5[1] = *&v82[4 * v83];
            v5 += 4;
            ++v83;
          }

          while (v35 != v83);
          ++v80;
          v82 += v45;
          v81 += v45;
        }

        while (v80 < v34);
      }

      else
      {
        if ((v33 | 3) < v19)
        {
          v46 = 0;
          v47 = &v95[v40 * v32];
          v48 = &v94[v40 * v32];
          v49 = &v93[v40 * v32];
          v50 = &v91[v40 * v32];
          v100 = &v90[v40 * v32];
          v99 = &v89[v40 * v32];
          v98 = &v92[v40 * v32];
          v51 = v4;
          v52 = v5;
          v97 = v50;
          while (1)
          {
            if (v21 >= 0xC)
            {
              v53 = 0;
              v56 = __dst + v52;
              v58 = v52 < v50 && v47 < v56;
              v60 = v52 < v100 && v48 < v56;
              v62 = v52 < v99 && v49 < v56;
              v63 = v4 >= v56 || v52 >= v98;
              if (v63 && !v62 && !v58 && !v60 && (v21 & 0x2000000000000000) == 0)
              {
                v64 = v49;
                v65 = v48;
                v66 = v47;
                v67 = v20;
                v68 = v19;
                v69 = v4;
                v54 = &v51[v35 & 0xDFFFFFFFFFFFFFF8];
                v5 = &v52[4 * (v35 & 0xDFFFFFFFFFFFFFF8)];
                v70 = (v52 + 16);
                v71 = v35 & 0xDFFFFFFFFFFFFFF8;
                v72 = v51;
                do
                {
                  v73 = v70 - 16;
                  v74 = &v72[v41];
                  v75 = &v72[v41 + v41];
                  v102.val[0] = *v72;
                  v103.val[0] = *(v72 + 1);
                  v72 += 8;
                  v102.val[1] = *v74;
                  v103.val[1] = *(v74 + 1);
                  v102.val[2] = *v75;
                  v103.val[2] = *(v75 + 16);
                  v102.val[3] = *(v75 + v41 * 4);
                  v103.val[3] = *(v75 + v41 * 4 + 16);
                  vst4q_f32(v73, v102);
                  vst4q_f32(v70, v103);
                  v70 += 32;
                  v71 -= 8;
                }

                while (v71);
                v53 = v35 & 0xDFFFFFFFFFFFFFF8;
                v4 = v69;
                v19 = v68;
                v20 = v67;
                v47 = v66;
                v48 = v65;
                v49 = v64;
                v40 = v96;
                v50 = v97;
                if (v21 == (v35 & 0xDFFFFFFFFFFFFFF8))
                {
                  goto LABEL_40;
                }

                goto LABEL_44;
              }
            }

            else
            {
              v53 = 0;
            }

            v54 = v51;
            v5 = v52;
LABEL_44:
            v55 = v35 - v53;
            do
            {
              *v5 = *v54;
              v5[1] = v54[v41];
              v5[2] = v54[v38];
              v5[3] = v54[v39];
              v5 += 4;
              ++v54;
              --v55;
            }

            while (v55);
LABEL_40:
            ++v46;
            v51 = (v51 + v45);
            v52 = v5;
            if (v46 >= v34)
            {
              goto LABEL_34;
            }
          }
        }

        v84 = 0;
        v85 = v4;
        v86 = v43;
        v87 = v42;
        do
        {
          v88 = 0;
          do
          {
            *v5 = *&v85[4 * v88];
            v5[1] = *&v86[4 * v88];
            v5[2] = *&v87[4 * v88];
            v5 += 4;
            ++v88;
          }

          while (v35 != v88);
          ++v84;
          v87 += v45;
          v86 += v45;
          v85 += v45;
        }

        while (v84 < v34);
      }

LABEL_34:
      v33 += 4;
      v4 += v40;
      ++v32;
      v43 += v40;
      v42 += v40;
      if (v33 >= v20)
      {
        return __dst;
      }
    }
  }

  v18 = 4 * a3[4];

  return memcpy(__dst, __src, v18);
}

_BYTE *sub_239C26F24(_BYTE *result, unsigned __int8 *a2, uint64_t a3, int16x8_t a4, uint16x8_t a5, int8x16_t a6, __n128 a7, __n128 a8, double a9)
{
  v297 = a2;
  v9 = *(a3 + 8);
  v10 = *(a3 + 32);
  v11 = *(a3 + 56);
  v280 = *(a3 + 48);
  v332 = v10;
  v333 = *(a3 + 64);
  v12 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v68 = *(a3 + 16);
    v69 = *(a3 + 40);
    v70 = *(a3 + 72);
    v71 = *(a3 + 80);
    if (v12)
    {
      if (v280 && v9 && v11 && v10 && v333)
      {
        v72 = 0;
        v73 = v333 * v68;
        v74 = v333 * v9 * v11;
        v75 = 4 * v11;
        v330 = v73 * 4 * v11;
        v76 = v333 * v11;
        v77 = 4 * v333 * v11;
        v322 = v11 * v69 * v73;
        v318 = v11 * v10 * v333 * v9;
        do
        {
          v78 = 0;
          v326 = v72;
          v79 = v72 * v10;
          v80 = v297;
          v81 = result;
          do
          {
            v82 = v78 + v79;
            if ((v78 + v79) % v71 < v70)
            {
              v83 = 0;
              v84 = v80;
              v85 = v81;
              do
              {
                v86 = 0;
                v87 = v84;
                v88 = v85;
                do
                {
                  v89 = 0;
                  v90 = 0;
                  v91 = 1;
                  v92 = v87;
                  v93 = v88;
                  do
                  {
                    if (v9 >= v91)
                    {
                      v94 = v91;
                    }

                    else
                    {
                      v94 = v9;
                    }

                    v95 = v94 + v89;
                    v96 = v92;
                    v97 = v93;
                    do
                    {
                      *v97 = *v96;
                      v97 += 4;
                      v96 += v76;
                      --v95;
                    }

                    while (v95);
                    ++v90;
                    v93 += v77;
                    v92 += v76;
                    ++v91;
                    --v89;
                  }

                  while (v90 != v9);
                  ++v86;
                  v88 += 4;
                  ++v87;
                }

                while (v86 != v11);
                ++v83;
                v85 += v75;
                v84 += v11;
              }

              while (v83 != v333);
              v80 += v74;
              v10 = v332;
            }

            if ((v78 | 1) < v10 && (v82 + 1) % v71 < v70)
            {
              v98 = 0;
              v99 = v81 + 1;
              v100 = v80;
              do
              {
                v101 = 0;
                v102 = v100;
                v103 = v99;
                do
                {
                  v104 = 0;
                  v105 = 0;
                  v106 = 1;
                  v107 = v102;
                  v108 = v103;
                  do
                  {
                    v109 = 0;
                    if (v9 >= v106)
                    {
                      v110 = v106;
                    }

                    else
                    {
                      v110 = v9;
                    }

                    v111 = v110 + v104;
                    v112 = v107;
                    do
                    {
                      v108[v109] = *v112;
                      v112 += v76;
                      v109 += 4;
                      --v111;
                    }

                    while (v111);
                    ++v105;
                    v108 += v77;
                    v107 += v76;
                    ++v106;
                    --v104;
                  }

                  while (v105 != v9);
                  ++v101;
                  v103 += 4;
                  ++v102;
                }

                while (v101 != v11);
                ++v98;
                v99 += v75;
                v100 += v11;
              }

              while (v98 != v333);
              v80 += v74;
              v10 = v332;
            }

            if ((v78 | 2) < v10 && (v82 + 2) % v71 < v70)
            {
              v113 = 0;
              v114 = v81 + 2;
              v115 = v80;
              do
              {
                v116 = 0;
                v117 = v115;
                v118 = v114;
                do
                {
                  v119 = 0;
                  v120 = 0;
                  v121 = 1;
                  v122 = v117;
                  v123 = v118;
                  do
                  {
                    v124 = 0;
                    if (v9 >= v121)
                    {
                      v125 = v121;
                    }

                    else
                    {
                      v125 = v9;
                    }

                    v126 = v125 + v119;
                    v127 = v122;
                    do
                    {
                      v123[v124] = *v127;
                      v127 += v76;
                      v124 += 4;
                      --v126;
                    }

                    while (v126);
                    ++v120;
                    v123 += v77;
                    v122 += v76;
                    ++v121;
                    --v119;
                  }

                  while (v120 != v9);
                  ++v116;
                  v118 += 4;
                  ++v117;
                }

                while (v116 != v11);
                ++v113;
                v114 += v75;
                v115 += v11;
              }

              while (v113 != v333);
              v80 += v74;
              v10 = v332;
            }

            if ((v78 | 3) < v10 && (v82 + 3) % v71 < v70)
            {
              v128 = 0;
              v129 = v81 + 3;
              v130 = v80;
              do
              {
                v131 = 0;
                v132 = v130;
                v133 = v129;
                do
                {
                  v134 = 0;
                  v135 = 0;
                  v136 = 1;
                  v137 = v132;
                  v138 = v133;
                  do
                  {
                    v139 = 0;
                    if (v9 >= v136)
                    {
                      v140 = v136;
                    }

                    else
                    {
                      v140 = v9;
                    }

                    v141 = v140 + v134;
                    v142 = v137;
                    do
                    {
                      v138[v139] = *v142;
                      v142 += v76;
                      v139 += 4;
                      --v141;
                    }

                    while (v141);
                    ++v135;
                    v138 += v77;
                    v137 += v76;
                    ++v136;
                    --v134;
                  }

                  while (v135 != v9);
                  ++v131;
                  v133 += 4;
                  ++v132;
                }

                while (v131 != v11);
                ++v128;
                v129 += v75;
                v130 += v11;
              }

              while (v128 != v333);
              v80 += v74;
              v10 = v332;
            }

            v78 += 4;
            v81 += v330;
          }

          while (v78 < v10);
          v72 = v326 + 1;
          result += v322;
          v297 += v318;
        }

        while (v326 + 1 != v280);
      }

      return result;
    }

    if (!v280)
    {
      return result;
    }

    v174 = 0;
    v175 = 0;
    v176 = *(a3 + 88);
    v286 = v10 - 3;
    v177 = v333 * v9 * v11;
    v178 = 4 * v333 * v11;
    v179 = v333 * v11 * v9;
    v307 = v11;
    v284 = v333 * v68 * 4 * v11;
    v180 = v9 - 3;
    v305 = v11 * v9;
    v277 = v11 * v69 * v333 * v68;
    v276 = v11 * v10 * v333 * v9;
    v275 = ((v10 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v181 = &result[v275 * v68 * v333 * v11];
    v331 = v176;
LABEL_167:
    v278 = v181;
    v279 = v174;
    if (v10 < 4)
    {
      v215 = 0;
      v184 = result;
      v183 = v297;
      if (v10 > 0)
      {
        goto LABEL_233;
      }

      goto LABEL_166;
    }

    if (!v333)
    {
      goto LABEL_166;
    }

    v292 = v174 * v10;
    if (!v11)
    {
      goto LABEL_166;
    }

    v182 = 0;
    v183 = v297;
    v184 = result;
LABEL_172:
    v185 = 0;
    v295 = v182;
    v186 = v182 + v292;
    v187 = v182 + v292 + 1;
    v188 = v182 + v292 + 2;
    v189 = v182 + v292 + 3;
    v190 = &v183[3 * v177];
    v191 = &v183[2 * v177];
    v192 = &v183[v177];
    v299 = v184;
    v302 = v183;
LABEL_174:
    v323 = v190;
    v327 = v185;
    v193 = 0;
    v315 = v192;
    v319 = v191;
    v309 = v184;
    v312 = v183;
    v194 = v183;
LABEL_178:
    if (v9 < 4)
    {
      v199 = 0;
      v197 = v184;
      v198 = v194;
      if (v9 <= 0)
      {
        goto LABEL_177;
      }

      goto LABEL_199;
    }

    if (v176 == 1)
    {
      v196 = 0;
      v197 = v184;
      do
      {
        a4.i32[0] = *&v194[v196];
        a4 = vmovl_u8(*a4.i8);
        a5.i32[0] = *&v192[v196];
        a5 = vmovl_u8(*a5.i8);
        a6.i32[0] = *&v191[v196];
        a6 = vmovl_u8(*a6.i8);
        a7.n128_u32[0] = *&v190[v196];
        a7.n128_u64[0] = vzip1_s16(*a6.i8, *&vmovl_u8(a7.n128_u64[0]));
        *a6.i8 = vext_s8(*a6.i8, a7.n128_u64[0], 4uLL);
        a4.i32[0] = vzip1_s16(*a4.i8, *a5.i8).u32[0];
        a4.i32[1] = a6.i32[1];
        *a4.i8 = vuzp1_s8(*a4.i8, *a4.i8);
        *v197 = a4.i32[0];
        ++v196;
        v197 = (v197 + v178);
      }

      while (v180 != v196);
      v198 = &v194[v196];
      v175 = 4;
      v199 = v9 - 3;
      if (v180 >= v9)
      {
        goto LABEL_177;
      }

LABEL_199:
      if (v176 == 1)
      {
        a4.i8[0] = *v198;
        a4.i8[4] = v198[v179];
        v195 = &v198[v179 + v179];
        a4.i8[8] = *v195;
        a4.i8[12] = v195[v179];
        v175 = 4;
        goto LABEL_176;
      }

      if (v186 % v71 >= v70)
      {
        v175 = 0;
        v208.i64[0] = 0;
        if (v187 % v71 < v70)
        {
          goto LABEL_211;
        }
      }

      else
      {
        if (v199 + 1 >= v9)
        {
          v206 = 0;
          if (v199 + 2 < v9)
          {
            goto LABEL_209;
          }

LABEL_203:
          v207 = 0;
        }

        else
        {
          v206 = v198[1];
          if (v199 + 2 >= v9)
          {
            goto LABEL_203;
          }

LABEL_209:
          v207 = v198[2];
        }

        v208.i16[0] = *v198;
        v208.i16[1] = v206;
        v208.i32[1] = v207;
        v198 += v179;
        v175 = 1;
        if (v187 % v71 < v70)
        {
LABEL_211:
          if (v199 + 1 >= v9)
          {
            v209 = 0;
            if (v199 + 2 < v9)
            {
              goto LABEL_215;
            }

LABEL_213:
            v210 = 0;
          }

          else
          {
            v209 = v198[1];
            if (v199 + 2 >= v9)
            {
              goto LABEL_213;
            }

LABEL_215:
            v210 = v198[2];
          }

          a5.i16[3] = 0;
          a5.i64[1] = 0;
          a5.i16[0] = *v198;
          a5.i16[1] = v209;
          a5.i16[2] = v210;
          v198 += v179;
          ++v175;
          if (v188 % v71 < v70)
          {
LABEL_217:
            if (v199 + 1 >= v9)
            {
              v211 = 0;
              if (v199 + 2 < v9)
              {
                goto LABEL_221;
              }

LABEL_219:
              v212 = 0;
            }

            else
            {
              v211 = v198[1];
              if (v199 + 2 >= v9)
              {
                goto LABEL_219;
              }

LABEL_221:
              v212 = v198[2];
            }

            a6.i16[3] = 0;
            a6.i16[0] = *v198;
            a6.i16[1] = v211;
            a6.i16[2] = v212;
            v198 += v179;
            ++v175;
            if (v189 % v71 < v70)
            {
LABEL_223:
              if (v199 + 1 >= v9)
              {
                v213 = 0;
                if (v199 + 2 < v9)
                {
                  goto LABEL_227;
                }

LABEL_225:
                v214 = 0;
              }

              else
              {
                v213 = v198[1];
                if (v199 + 2 >= v9)
                {
                  goto LABEL_225;
                }

LABEL_227:
                v214 = v198[2];
              }

              a7.n128_u16[3] = 0;
              a7.n128_u16[0] = *v198;
              a7.n128_u16[1] = v213;
              a7.n128_u16[2] = v214;
              ++v175;
LABEL_229:
              a6.i64[1] = a7.n128_u64[0];
              v208.i64[1] = a5.i64[0];
              a4 = vuzp1q_s8(v208, a6);
LABEL_176:
              *a4.i8 = vmovn_s16(a4);
              *a4.i8 = vmovn_s16(a4);
              *v197 = a4.i32[0];
              goto LABEL_177;
            }

LABEL_207:
            a7.n128_u64[0] = 0;
            goto LABEL_229;
          }

LABEL_206:
          a6.i64[0] = 0;
          if (v189 % v71 < v70)
          {
            goto LABEL_223;
          }

          goto LABEL_207;
        }
      }

      a5 = 0uLL;
      if (v188 % v71 < v70)
      {
        goto LABEL_217;
      }

      goto LABEL_206;
    }

    v200 = v187 % v71;
    v201 = v188 % v71;
    v202 = v189 % v71;
    v203 = v9 - 3;
    v198 = v194;
    v197 = v184;
    while (1)
    {
      if (v186 % v71 >= v70)
      {
        v175 = 0;
        a4 = 0uLL;
        v205 = v198;
        if (v200 >= v70)
        {
LABEL_191:
          a5 = 0uLL;
          if (v201 >= v70)
          {
            goto LABEL_192;
          }

          goto LABEL_196;
        }
      }

      else
      {
        a4.i32[0] = *v198;
        a4 = vmovl_u8(*a4.i8);
        v205 = &v198[v177];
        v175 = 1;
        if (v200 >= v70)
        {
          goto LABEL_191;
        }
      }

      a5.i32[0] = *v205;
      a5 = vmovl_u8(*a5.i8);
      v205 = (v205 + v177);
      ++v175;
      if (v201 >= v70)
      {
LABEL_192:
        a6 = 0uLL;
        if (v202 >= v70)
        {
          goto LABEL_197;
        }

        goto LABEL_187;
      }

LABEL_196:
      a6.i32[0] = *v205;
      a6 = vmovl_u8(*a6.i8);
      v205 = (v205 + v177);
      ++v175;
      if (v202 >= v70)
      {
LABEL_197:
        a7.n128_u64[0] = 0;
        goto LABEL_188;
      }

LABEL_187:
      a7.n128_u32[0] = *v205;
      a7.n128_u64[0] = vmovl_u8(a7.n128_u64[0]).u64[0];
      ++v175;
LABEL_188:
      a7.n128_u64[0] = vzip1_s16(*a6.i8, a7.n128_u64[0]);
      *a6.i8 = vext_s8(*a6.i8, a7.n128_u64[0], 4uLL);
      v204.i32[0] = vzip1_s16(*a4.i8, *a5.i8).u32[0];
      v204.i32[1] = a6.i32[1];
      *a4.i8 = vuzp1_s8(v204, v204);
      *v197 = a4.i32[0];
      v197 = (v197 + v178);
      ++v198;
      if (!--v203)
      {
        v199 = v9 - 3;
        v176 = v331;
        if (v180 < v9)
        {
          goto LABEL_199;
        }

LABEL_177:
        ++v193;
        ++v184;
        v194 += v9;
        v190 += v9;
        v191 += v9;
        v192 += v9;
        if (v193 != v11)
        {
          goto LABEL_178;
        }

        v185 = v327 + 1;
        v184 = &v309[v307];
        v183 = &v312[v305];
        v190 = &v323[v305];
        v191 = &v319[v305];
        v192 = &v315[v305];
        if (v327 + 1 != v333)
        {
          goto LABEL_174;
        }

        v183 = &v302[v175 * v179];
        v182 = v295 + 4;
        v184 = (v299 + v284);
        if (v295 + 4 < v286)
        {
          goto LABEL_172;
        }

        v215 = v275;
        v10 = v332;
        v174 = v279;
        if (v275 >= v332)
        {
          goto LABEL_166;
        }

LABEL_233:
        if (!v333 || (v328 = v215 + v174 * v10, !v11))
        {
LABEL_166:
          v174 = v279 + 1;
          result += v277;
          v297 += v276;
          v181 = &v278[v277];
          v176 = v331;
          if (v279 + 1 == v280)
          {
            return result;
          }

          goto LABEL_167;
        }

        v216 = 0;
        v324 = v328 + 1;
        v217 = v215 | 1;
        v320 = v328 + 2;
        v218 = v215 | 2;
        v316 = v328 + 3;
        v219 = v215 | 3;
        v220 = &v183[v179];
        v221 = &v183[2 * v179];
        v222 = &v183[3 * v179];
LABEL_239:
        v293 = v220;
        v296 = v216;
        v223 = 0;
        v288 = v222;
        v290 = v221;
        v224 = v221;
        v225 = v183;
        v300 = v184;
        v303 = v183;
        v226 = v184;
LABEL_244:
        if (v9 < 4)
        {
          v230 = 0;
          v228 = v226;
          v231 = v225;
          if (v9 > 0)
          {
            goto LABEL_282;
          }

          goto LABEL_243;
        }

        if (v331 == 1)
        {
          v227 = 0;
          v228 = v226;
          while (1)
          {
            if (v217 >= v10)
            {
              a4 = 0uLL;
              if (v218 >= v10)
              {
LABEL_251:
                a5 = 0uLL;
                if (v219 >= v10)
                {
                  goto LABEL_255;
                }

                goto LABEL_247;
              }
            }

            else
            {
              a4.i32[0] = *&v220[v227];
              a4 = vmovl_u8(*a4.i8);
              if (v218 >= v10)
              {
                goto LABEL_251;
              }
            }

            a5.i32[0] = *&v224[v227];
            a5 = vmovl_u8(*a5.i8);
            if (v219 >= v10)
            {
LABEL_255:
              a6 = 0uLL;
              goto LABEL_248;
            }

LABEL_247:
            a6.i32[0] = *&v222[v227];
            a6 = vmovl_u8(*a6.i8);
LABEL_248:
            a7.n128_u32[0] = *&v225[v227];
            a7.n128_u64[0] = vmovl_u8(a7.n128_u64[0]).u64[0];
            *a6.i8 = vzip1_s16(*a5.i8, *a6.i8);
            *a5.i8 = vext_s8(*a5.i8, *a6.i8, 4uLL);
            v229.i32[0] = vzip1_s16(a7.n128_u64[0], *a4.i8).u32[0];
            v229.i32[1] = a5.i32[1];
            *a4.i8 = vuzp1_s8(v229, v229);
            *v228 = a4.i32[0];
            ++v227;
            v228 = (v228 + v178);
            if (v180 == v227)
            {
              v231 = &v225[v227];
              v175 = 4;
              v230 = v9 - 3;
              if (v180 >= v9)
              {
                goto LABEL_243;
              }

LABEL_282:
              if (v331 == 1)
              {
                v241 = v223;
                v242 = v230 + 1;
                v243 = v230 + 2;
                v244 = &v231[v177];
                if (v217 >= v10)
                {
                  v250 = 0;
                  v251 = &v244[v177];
                  if (v218 < v10)
                  {
                    goto LABEL_301;
                  }

LABEL_292:
                  a6 = 0uLL;
                  if (v219 < v10)
                  {
                    goto LABEL_314;
                  }

LABEL_240:
                  a8 = 0uLL;
                  v223 = v241;
                  goto LABEL_241;
                }

                if (v242 >= v9)
                {
                  v245 = 0;
                  v246 = v226;
                  if (v243 < v9)
                  {
                    goto LABEL_299;
                  }

LABEL_286:
                  v247 = 0;
                }

                else
                {
                  v245 = v244[1];
                  v246 = v226;
                  if (v243 >= v9)
                  {
                    goto LABEL_286;
                  }

LABEL_299:
                  v247 = v244[2];
                }

                BYTE6(v250) = 0;
                LOBYTE(v250) = *v244;
                BYTE2(v250) = v245;
                BYTE4(v250) = v247;
                v226 = v246;
                v251 = &v244[v177];
                if (v218 >= v10)
                {
                  goto LABEL_292;
                }

LABEL_301:
                if (v242 >= v9)
                {
                  v257 = 0;
                  v258 = v226;
                  if (v243 < v9)
                  {
                    goto LABEL_312;
                  }

LABEL_303:
                  v259 = 0;
                }

                else
                {
                  v257 = v251[1];
                  v258 = v226;
                  if (v243 >= v9)
                  {
                    goto LABEL_303;
                  }

LABEL_312:
                  v259 = v251[2];
                }

                a6.i16[3] = 0;
                a6.i64[1] = 0;
                a6.i16[0] = *v251;
                a6.i16[1] = v257;
                a6.i16[2] = v259;
                v226 = v258;
                if (v219 >= v10)
                {
                  goto LABEL_240;
                }

LABEL_314:
                v263 = &v251[v177];
                if (v242 >= v9)
                {
                  v264 = 0;
                  v223 = v241;
                  if (v243 < v9)
                  {
                    goto LABEL_319;
                  }

LABEL_316:
                  v265 = 0;
                }

                else
                {
                  v264 = v263[1];
                  v223 = v241;
                  if (v243 >= v9)
                  {
                    goto LABEL_316;
                  }

LABEL_319:
                  v265 = v263[2];
                }

                a8.n128_u16[3] = 0;
                a8.n128_u64[1] = 0;
                a8.n128_u16[0] = *v263;
                a8.n128_u16[1] = v264;
                a8.n128_u16[2] = v265;
LABEL_241:
                a5.i8[0] = *v231;
                a5.i8[1] = BYTE2(a9);
                a5.i8[2] = BYTE4(a9);
                a5.i8[3] = BYTE6(a9);
                a5.i8[4] = v250;
                a5.i8[5] = BYTE2(v250);
                a5.i8[6] = BYTE4(v250);
                a5.i8[7] = BYTE6(v250);
                v175 = 4;
LABEL_242:
                a7 = a8;
                a4 = vqtbl3q_s8(*a5.i8, xmmword_239D7E330);
                *a4.i8 = vmovn_s16(a4);
                *v228 = a4.i32[0];
LABEL_243:
                ++v223;
                ++v226;
                v225 += v9;
                v220 += v9;
                v224 += v9;
                v222 += v9;
                if (v223 == v11)
                {
                  v216 = v296 + 1;
                  v184 = &v300[v307];
                  v183 = &v303[v305];
                  v220 = &v293[v305];
                  v221 = &v290[v305];
                  v222 = &v288[v305];
                  if (v296 + 1 == v333)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_239;
                }

                goto LABEL_244;
              }

              if (v328 % v71 >= v70)
              {
                v252 = 0;
                v175 = 0;
                if (v324 % v71 < v70)
                {
                  goto LABEL_307;
                }
              }

              else
              {
                if (v230 + 1 >= v9)
                {
                  v248 = 0;
                  if (v230 + 2 < v9)
                  {
                    goto LABEL_305;
                  }

LABEL_290:
                  v249 = 0;
                }

                else
                {
                  v248 = v231[1];
                  if (v230 + 2 >= v9)
                  {
                    goto LABEL_290;
                  }

LABEL_305:
                  v249 = v231[2];
                }

                LOWORD(v260) = *v231;
                WORD1(v260) = v248;
                HIDWORD(v260) = v249;
                *a4.i8 = vmovn_s16(v260);
                v252 = a4.i32[0];
                v231 += v177;
                v175 = 1;
                if (v324 % v71 < v70)
                {
LABEL_307:
                  if (v217 >= v10)
                  {
                    v253 = 0;
                  }

                  else
                  {
                    if (v230 + 1 >= v9)
                    {
                      v261 = 0;
                      if (v230 + 2 < v9)
                      {
                        goto LABEL_322;
                      }

LABEL_310:
                      v262 = 0;
                    }

                    else
                    {
                      v261 = v231[1];
                      if (v230 + 2 >= v9)
                      {
                        goto LABEL_310;
                      }

LABEL_322:
                      v262 = v231[2];
                    }

                    LOWORD(v266) = *v231;
                    WORD1(v266) = v261;
                    HIDWORD(v266) = v262;
                    *a4.i8 = vmovn_s16(v266);
                    v253 = a4.u32[0] << 32;
                  }

                  v231 += v177;
                  ++v175;
                  if (v320 % v71 < v70)
                  {
LABEL_325:
                    if (v218 >= v10)
                    {
                      v254 = 0;
                    }

                    else
                    {
                      if (v230 + 1 >= v9)
                      {
                        v267 = 0;
                        if (v230 + 2 < v9)
                        {
                          goto LABEL_331;
                        }

LABEL_328:
                        v268 = 0;
                      }

                      else
                      {
                        v267 = v231[1];
                        if (v230 + 2 >= v9)
                        {
                          goto LABEL_328;
                        }

LABEL_331:
                        v268 = v231[2];
                      }

                      LOWORD(v269) = *v231;
                      WORD1(v269) = v267;
                      HIDWORD(v269) = v268;
                      *a4.i8 = vmovn_s16(v269);
                      v254 = a4.i32[0];
                    }

                    v231 += v177;
                    ++v175;
                    if (v316 % v71 < v70)
                    {
LABEL_334:
                      if (v219 >= v10)
                      {
                        v255 = v226;
                        v256 = 0;
                      }

                      else
                      {
                        if (v230 + 1 >= v9)
                        {
                          v270 = 0;
                          v273 = v230 + 2;
                          v255 = v226;
                          if (v273 < v9)
                          {
                            goto LABEL_340;
                          }

LABEL_337:
                          v272 = 0;
                        }

                        else
                        {
                          v270 = v231[1];
                          v271 = v230 + 2;
                          v255 = v226;
                          if (v271 >= v9)
                          {
                            goto LABEL_337;
                          }

LABEL_340:
                          v272 = v231[2];
                        }

                        LOWORD(v274) = *v231;
                        WORD1(v274) = v270;
                        HIDWORD(v274) = v272;
                        *a4.i8 = vmovn_s16(v274);
                        v256 = a4.u32[0] << 32;
                      }

                      ++v175;
LABEL_343:
                      a4.i32[0] = v256 | v254;
                      *a6.i8 = vzip1_s8(*a4.i8, *a4.i8);
                      a4.i32[0] = HIDWORD(v256);
                      a8.n128_u64[0] = vzip1_s8(*a4.i8, *a4.i8);
                      a5.i64[0] = v253 | v252;
                      v226 = v255;
                      goto LABEL_242;
                    }

LABEL_297:
                    v255 = v226;
                    v256 = 0;
                    goto LABEL_343;
                  }

LABEL_296:
                  v254 = 0;
                  if (v316 % v71 < v70)
                  {
                    goto LABEL_334;
                  }

                  goto LABEL_297;
                }
              }

              v253 = 0;
              if (v320 % v71 < v70)
              {
                goto LABEL_325;
              }

              goto LABEL_296;
            }
          }
        }

        v310 = v226;
        v313 = v223;
        v232 = v324 % v71;
        v233 = v320 % v71;
        v234 = v316 % v71;
        v235 = v9 - 3;
        v231 = v225;
        v228 = v226;
        while (2)
        {
          if (v328 % v71 >= v70)
          {
            LOWORD(v237) = 0;
            v175 = 0;
            v238 = v231;
            if (v232 < v70)
            {
              goto LABEL_267;
            }

LABEL_263:
            v239 = 0;
            if (v233 >= v70)
            {
              goto LABEL_264;
            }

LABEL_271:
            if (v218 >= v332)
            {
              LOWORD(v240) = 0;
              v238 += v179;
              ++v175;
              if (v234 < v70)
              {
                goto LABEL_275;
              }
            }

            else
            {
              v240 = *v238;
              v238 += v179;
              ++v175;
              if (v234 < v70)
              {
                goto LABEL_275;
              }
            }
          }

          else
          {
            v237 = *v231;
            v238 = &v231[v179];
            v175 = 1;
            if (v232 >= v70)
            {
              goto LABEL_263;
            }

LABEL_267:
            if (v217 >= v332)
            {
              v239 = 0;
              v238 += v179;
              ++v175;
              if (v233 < v70)
              {
                goto LABEL_271;
              }
            }

            else
            {
              v239 = *v238 << 32;
              v238 += v179;
              ++v175;
              if (v233 < v70)
              {
                goto LABEL_271;
              }
            }

LABEL_264:
            LOWORD(v240) = 0;
            if (v234 < v70)
            {
LABEL_275:
              if (v219 >= v332)
              {
                v236 = 0;
              }

              else
              {
                v236 = *v238 << 32;
              }

              ++v175;
LABEL_260:
              a4.i16[0] = v239 | v237;
              a4.i16[1] = WORD2(v239);
              a4.i16[2] = v236 | v240;
              a4.i16[3] = WORD2(v236);
              *a4.i8 = vmovn_s16(a4);
              *v228 = a4.i32[0];
              v228 = (v228 + v178);
              ++v231;
              if (!--v235)
              {
                v230 = v9 - 3;
                v10 = v332;
                v226 = v310;
                v223 = v313;
                if (v180 < v9)
                {
                  goto LABEL_282;
                }

                goto LABEL_243;
              }

              continue;
            }
          }

          break;
        }

        v236 = 0;
        goto LABEL_260;
      }
    }
  }

  if (!v12)
  {
    if (!v280)
    {
      return result;
    }

    v143 = 0;
    v144 = v9 == 0;
    if (!v333)
    {
      v144 = 1;
    }

    if (!v11)
    {
      v144 = 1;
    }

    v145 = v333 * v11;
    if (v333)
    {
      v146 = v11 == 0;
    }

    else
    {
      v146 = 1;
    }

    v147 = v10 - 3;
    v148 = -(v11 * v10);
    v149 = v145 * v10;
    v150 = -v10;
    v151 = v10 * v9 * v145;
    v152 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v153 = v10 * (v145 - 1) + 3;
    v154 = &v297[v153];
    while (1)
    {
      if (v10 < 4)
      {
        v165 = 0;
        v157 = v297;
        if (!v9)
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (v144)
        {
          goto LABEL_125;
        }

        v155 = 0;
        v156 = v154;
        v157 = v297;
        do
        {
          v158 = 0;
          v159 = v156;
          do
          {
            v160 = 0;
            v161 = v159;
            do
            {
              v162 = v11;
              v163 = v161;
              v164 = result;
              do
              {
                result = v164 + 4;
                *v164 = *(v163 - 3);
                v164[1] = *(v163 - 2);
                v164[2] = *(v163 - 1);
                v164[3] = *v163;
                v163 += v150;
                v164 += 4;
                --v162;
              }

              while (v162);
              ++v160;
              v161 += v148;
            }

            while (v160 != v333);
            ++v158;
            v159 += v149;
          }

          while (v158 != v9);
          v155 += 4;
          v157 += 4;
          v156 += 4;
        }

        while (v155 < v147);
        v165 = v152;
        v10 = v332;
        if (!v9)
        {
          goto LABEL_125;
        }
      }

      v166 = v10 - v165;
      if (v10 > v165 && !v146)
      {
        v167 = 0;
        v168 = &v157[v153];
        do
        {
          v169 = 0;
          v170 = v168;
          do
          {
            v171 = v11;
            v172 = v170;
            do
            {
              v173 = result;
              result += 4;
              if (v166 <= 3)
              {
                switch(v166)
                {
                  case 1:
                    goto LABEL_151;
                  case 2:
                    goto LABEL_150;
                  case 3:
                    goto LABEL_149;
                }
              }

              else
              {
                if (v166 <= 5)
                {
                  if (v166 != 4)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_148;
                }

                if (v166 == 6)
                {
                  goto LABEL_146;
                }

                if (v166 == 7)
                {
                  v173[6] = v172[3];
LABEL_146:
                  v173[5] = v172[2];
LABEL_147:
                  *result = v172[1];
LABEL_148:
                  v173[3] = *v172;
LABEL_149:
                  v173[2] = *(v172 - 1);
LABEL_150:
                  v173[1] = *(v172 - 2);
LABEL_151:
                  *v173 = *(v172 - 3);
                }
              }

              v172 += v150;
              --v171;
            }

            while (v171);
            ++v169;
            v170 += v148;
          }

          while (v169 != v333);
          ++v167;
          v168 += v149;
        }

        while (v167 != v9);
      }

LABEL_125:
      ++v143;
      v297 += v151;
      v154 += v151;
      v10 = v332;
      if (v143 == v280)
      {
        return result;
      }
    }
  }

  if (v280)
  {
    v13 = 0;
    v14 = v9 == 0;
    if (!v333)
    {
      v14 = 1;
    }

    v15 = v11 == 0;
    if (v11)
    {
      v16 = v14;
    }

    else
    {
      v16 = 1;
    }

    v17 = v333 * v11;
    if (!v333)
    {
      v15 = 1;
    }

    v301 = v15;
    v321 = v10 - 3;
    v18 = v17 * v10;
    v306 = v10 * v9 * v17;
    v294 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v317 = 4 * v17;
    v19 = 4 * v17 - 1;
    v20 = &a2[v19];
    v21 = 2 * v17 - 1;
    v287 = v21 + v17;
    v289 = v21;
    v22 = &a2[v21 + v17];
    v23 = &a2[v21];
    v285 = ~v17 + 8 * v17;
    v283 = 6 * v17 - 1;
    v291 = v19;
    v281 = v17 - 1;
    v282 = v19 + v17;
    v298 = v16;
    do
    {
      v311 = v22;
      v314 = v20;
      v308 = v23;
      if (v10 < 4)
      {
        v48 = 0;
        v25 = v297;
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v16)
        {
          goto LABEL_12;
        }

        v304 = v13;
        v24 = 0;
        v25 = v297;
        do
        {
          v325 = v24;
          v329 = v25;
          v26 = 0;
          v27 = v23;
          v28 = v22;
          v29 = v20;
          v30 = v25;
          do
          {
            v31 = 0;
            v32 = &v30[(v333 - 1) * v11];
            v33 = v27;
            v34 = v28;
            v35 = v29;
            do
            {
              v36 = &v32[v11 - 1];
              v37 = v33;
              v38 = v34;
              v39 = v35;
              v40 = v11;
              do
              {
                v42 = *v36--;
                v41 = v42;
                v44 = *v37--;
                v43 = v44;
                v46 = *v38--;
                v45 = v46;
                v47 = *v39--;
                a4.i16[0] = v41;
                a4.i16[1] = v43;
                a4.i16[2] = v45;
                a4.i16[3] = v47;
                *result = vmovn_s16(a4).u32[0];
                result += 4;
                --v40;
              }

              while (v40);
              ++v31;
              v32 -= v11;
              v35 -= v11;
              v34 -= v11;
              v33 -= v11;
            }

            while (v31 != v333);
            ++v26;
            v30 += v18;
            v29 += v18;
            v28 += v18;
            v27 += v18;
          }

          while (v26 != v9);
          v24 = v325 + 4;
          v25 = &v329[v317];
          v20 += v317;
          v22 += v317;
          v23 += v317;
        }

        while (v325 + 4 < v321);
        v48 = v294;
        v10 = v332;
        v13 = v304;
        v16 = v298;
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      v49 = v10 - v48;
      if (v10 > v48 && !v301)
      {
        v50 = 0;
        v51 = &v25[v285];
        v52 = &v25[v283];
        v53 = &v25[v282];
        v54 = &v25[v291];
        v55 = &v25[v287];
        v56 = &v25[v289];
        v57 = &v25[v281];
        do
        {
          v58 = 0;
          v59 = v57;
          v60 = v56;
          v61 = v55;
          v62 = v54;
          v63 = v53;
          v64 = v52;
          v65 = v51;
          do
          {
            v66 = 0;
            do
            {
              v67 = result;
              result += 4;
              if (v49 <= 3)
              {
                switch(v49)
                {
                  case 1:
                    goto LABEL_38;
                  case 2:
                    goto LABEL_37;
                  case 3:
                    goto LABEL_36;
                }
              }

              else
              {
                if (v49 <= 5)
                {
                  if (v49 != 4)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_35;
                }

                if (v49 == 6)
                {
                  goto LABEL_33;
                }

                if (v49 == 7)
                {
                  v67[6] = v65[v66];
LABEL_33:
                  v67[5] = v64[v66];
LABEL_34:
                  *result = v63[v66];
LABEL_35:
                  v67[3] = v62[v66];
LABEL_36:
                  v67[2] = v61[v66];
LABEL_37:
                  v67[1] = v60[v66];
LABEL_38:
                  *v67 = v59[v66];
                }
              }

              --v66;
            }

            while (-v11 != v66);
            ++v58;
            v65 -= v11;
            v64 -= v11;
            v63 -= v11;
            v62 -= v11;
            v61 -= v11;
            v60 -= v11;
            v59 -= v11;
          }

          while (v58 != v333);
          ++v50;
          v51 += v18;
          v52 += v18;
          v53 += v18;
          v54 += v18;
          v55 += v18;
          v56 += v18;
          v57 += v18;
        }

        while (v50 != v9);
      }

LABEL_12:
      ++v13;
      v297 += v306;
      v20 = &v314[v306];
      v22 = &v311[v306];
      v23 = &v308[v306];
      v10 = v332;
    }

    while (v13 != v280);
  }

  return result;
}

_BYTE *sub_239C2864C(_BYTE *result, unsigned __int8 *a2, uint64_t a3, int16x8_t a4, double a5, double a6, int8x16_t a7, float32x4_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v13 = *(a3 + 8);
  v424 = *(a3 + 32);
  v377 = *(a3 + 48);
  v378 = a2;
  v429 = *(a3 + 64);
  v430 = *(a3 + 56);
  v14 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v111 = *(a3 + 16);
    v112 = *(a3 + 40);
    v113 = *(a3 + 72);
    v114 = *(a3 + 80);
    if (v14)
    {
      if (v377 && v13 && v430 && v424 && v429)
      {
        v115 = 0;
        v116 = v429 * v430;
        v117 = 8 * v429 * v430;
        v118 = 2 * v429 * v430;
        v119 = v429 * v13 * v430;
        v120 = v429 * v430 * v111;
        v427 = 4 * v120;
        v121 = 8 * v430;
        v418 = v120 * v112;
        do
        {
          v122 = 0;
          v123 = v424;
          v422 = v115;
          v124 = v115 * v424;
          v125 = v378;
          v126 = result;
          do
          {
            v127 = v122 + v124;
            if ((v122 + v124) % v114 < v113)
            {
              v128 = 0;
              v129 = v125;
              v130 = v126;
              do
              {
                v131 = 0;
                v132 = v129;
                v133 = v130;
                do
                {
                  v134 = 0;
                  v135 = 0;
                  v136 = 2;
                  v137 = v132;
                  v138 = v133;
                  do
                  {
                    if (v13 >= v136)
                    {
                      v139 = v136;
                    }

                    else
                    {
                      v139 = v13;
                    }

                    v140 = v139 + v134;
                    v141 = v137;
                    v142 = v138;
                    do
                    {
                      *v142 = *v141;
                      v142 += 4;
                      v141 += v116;
                      --v140;
                    }

                    while (v140);
                    v135 += 2;
                    v138 += v117;
                    v137 += v118;
                    v136 += 2;
                    v134 -= 2;
                  }

                  while (v135 < v13);
                  ++v131;
                  v133 += 8;
                  ++v132;
                }

                while (v131 != v430);
                ++v128;
                v130 += v121;
                v129 += v430;
              }

              while (v128 != v429);
              v125 += v119;
              v123 = v424;
            }

            if ((v122 | 1) < v123 && (v127 + 1) % v114 < v113)
            {
              v143 = 0;
              v144 = v126 + 1;
              v145 = v125;
              do
              {
                v146 = 0;
                v147 = v145;
                v148 = v144;
                do
                {
                  v149 = 0;
                  v150 = 0;
                  v151 = 2;
                  v152 = v147;
                  v153 = v148;
                  do
                  {
                    v154 = 0;
                    if (v13 >= v151)
                    {
                      v155 = v151;
                    }

                    else
                    {
                      v155 = v13;
                    }

                    v156 = v155 + v149;
                    v157 = v152;
                    do
                    {
                      v153[v154] = *v157;
                      v157 += v116;
                      v154 += 4;
                      --v156;
                    }

                    while (v156);
                    v150 += 2;
                    v153 += v117;
                    v152 += v118;
                    v151 += 2;
                    v149 -= 2;
                  }

                  while (v150 < v13);
                  ++v146;
                  v148 += 8;
                  ++v147;
                }

                while (v146 != v430);
                ++v143;
                v144 += v121;
                v145 += v430;
              }

              while (v143 != v429);
              v125 += v119;
              v123 = v424;
            }

            if ((v122 | 2) < v123 && (v127 + 2) % v114 < v113)
            {
              v158 = 0;
              v159 = v126 + 2;
              v160 = v125;
              do
              {
                v161 = 0;
                v162 = v160;
                v163 = v159;
                do
                {
                  v164 = 0;
                  v165 = 0;
                  v166 = 2;
                  v167 = v162;
                  v168 = v163;
                  do
                  {
                    v169 = 0;
                    if (v13 >= v166)
                    {
                      v170 = v166;
                    }

                    else
                    {
                      v170 = v13;
                    }

                    v171 = v170 + v164;
                    v172 = v167;
                    do
                    {
                      v168[v169] = *v172;
                      v172 += v116;
                      v169 += 4;
                      --v171;
                    }

                    while (v171);
                    v165 += 2;
                    v168 += v117;
                    v167 += v118;
                    v166 += 2;
                    v164 -= 2;
                  }

                  while (v165 < v13);
                  ++v161;
                  v163 += 8;
                  ++v162;
                }

                while (v161 != v430);
                ++v158;
                v159 += v121;
                v160 += v430;
              }

              while (v158 != v429);
              v125 += v119;
              v123 = v424;
            }

            if ((v122 | 3) < v123 && (v127 + 3) % v114 < v113)
            {
              v173 = 0;
              v174 = v126 + 3;
              v175 = v125;
              do
              {
                v176 = 0;
                v177 = v175;
                v178 = v174;
                do
                {
                  v179 = 0;
                  v180 = 0;
                  v181 = 2;
                  v182 = v177;
                  v183 = v178;
                  do
                  {
                    v184 = 0;
                    if (v13 >= v181)
                    {
                      v185 = v181;
                    }

                    else
                    {
                      v185 = v13;
                    }

                    v186 = v185 + v179;
                    v187 = v182;
                    do
                    {
                      v183[v184] = *v187;
                      v187 += v116;
                      v184 += 4;
                      --v186;
                    }

                    while (v186);
                    v180 += 2;
                    v183 += v117;
                    v182 += v118;
                    v181 += 2;
                    v179 -= 2;
                  }

                  while (v180 < v13);
                  ++v176;
                  v178 += 8;
                  ++v177;
                }

                while (v176 != v430);
                ++v173;
                v174 += v121;
                v175 += v430;
              }

              while (v173 != v429);
              v125 += v119;
              v123 = v424;
            }

            v122 += 4;
            v126 += v427;
          }

          while (v122 < v123);
          v115 = v422 + 1;
          result += v418;
          v378 += v430 * v424 * v429 * v13;
        }

        while (v422 + 1 != v377);
      }

      return result;
    }

    if (!v377)
    {
      return result;
    }

    v232 = 0;
    v233 = 0;
    v234 = *(a3 + 88);
    v235 = v429 * v13 * v430;
    v236 = 8 * v429 * v430;
    v237 = v429 * v430 * v13;
    v238 = v429 * v430 * v111;
    v394 = 4 * v238;
    v239 = v13 - 3;
    v423 = v430;
    v419 = v430 * v13;
    v386 = v238 * v112;
    v383 = ((v424 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v240 = &result[v383 * v111 * v429 * v430];
    v428 = (v13 & 0xFFFFFFFFFFFFFFFELL) - 2;
    while (1)
    {
      v241 = v424;
      v388 = v240;
      v391 = v232;
      if (v424 < 4)
      {
        v288 = 0;
        v244 = result;
        v243 = v378;
        if (v424 > 0)
        {
          goto LABEL_337;
        }

        goto LABEL_259;
      }

      if (!v429)
      {
        goto LABEL_259;
      }

      v410 = v232 * v424;
      if (!v430)
      {
        goto LABEL_259;
      }

      v242 = 0;
      v243 = v378;
      v244 = result;
      do
      {
        v245 = 0;
        v414 = v242;
        v246 = v242 + v410;
        v247 = v242 + v410 + 1;
        v248 = v242 + v410 + 2;
        v249 = v242 + v410 + 3;
        v399 = v244;
        v403 = v243;
        do
        {
          v250 = 0;
          v251 = v243;
          v252 = v244;
          do
          {
            if (v13 < 4)
            {
              v269 = 0;
              v262 = v252;
              v261 = v251;
              if (v13 > 0)
              {
                goto LABEL_293;
              }

              goto LABEL_271;
            }

            if (v234 != 1)
            {
              v270 = 0;
              v271 = v247 % v114;
              v272 = v248 % v114;
              v273 = v249 % v114;
              v274 = v251;
              v262 = v252;
              while (1)
              {
                v275 = &v251[v270];
                if (v246 % v114 >= v113)
                {
                  v233 = 0;
                  a7 = 0uLL;
                  if (v271 >= v113)
                  {
LABEL_284:
                    a11 = 0uLL;
                    if (v272 >= v113)
                    {
                      goto LABEL_285;
                    }

                    goto LABEL_289;
                  }
                }

                else
                {
                  a7.i32[0] = *v275;
                  a7 = vmovl_u8(*a7.i8);
                  v275 = &v274[v235];
                  v233 = 1;
                  if (v271 >= v113)
                  {
                    goto LABEL_284;
                  }
                }

                a11.i32[0] = *v275;
                a11 = vmovl_u8(*a11.i8);
                v275 = (v275 + v235);
                ++v233;
                if (v272 >= v113)
                {
LABEL_285:
                  v11 = 0uLL;
                  if (v273 >= v113)
                  {
                    goto LABEL_290;
                  }

                  goto LABEL_280;
                }

LABEL_289:
                v11.i32[0] = *v275;
                v11 = vmovl_u8(*v11.i8);
                v275 = (v275 + v235);
                ++v233;
                if (v273 >= v113)
                {
LABEL_290:
                  v12 = 0uLL;
                  goto LABEL_281;
                }

LABEL_280:
                v12.i32[0] = *v275;
                v12 = vmovl_u8(*v12.i8);
                ++v233;
LABEL_281:
                a8 = a11;
                a9 = v11;
                a10 = v12;
                *a7.i8 = vqtbl4_s8(*a7.i8, 0x3222120230201000);
                *v262 = a7.i64[0];
                v270 += 2;
                v262 = (v262 + v236);
                v274 += 2;
                if (v270 >= v239)
                {
                  v261 = &v251[v270];
                  goto LABEL_292;
                }
              }
            }

            v260 = 0;
            v261 = v251;
            v262 = v252;
            do
            {
              v263 = &v261[v235];
              v264 = *v261;
              v261 += 2;
              v265 = v264;
              v267 = *v263;
              v266 = &v263[v235];
              a8 = vld1q_dup_f32(v266);
              v268 = (v266 + v235);
              a9.i32[0] = *v268;
              a8.i16[6] = *v268;
              a8.i64[0] = vextq_s8(a8, a8, 8uLL).u64[0];
              a7.i64[1] = a8.i64[0];
              *a7.i8 = vqtbl1_s8(a7, 0xD0905010C080400);
              *v262 = a7.i64[0];
              v260 += 2;
              v262 = (v262 + v236);
            }

            while (v260 < v239);
            v233 = 4;
LABEL_292:
            v269 = (v13 & 0xFFFFFFFFFFFFFFFELL) - 2;
            if (v428 < v13)
            {
LABEL_293:
              if (v234 == 1)
              {
                if ((v269 | 1) < v13)
                {
                  v253 = v261[1];
                  v254 = &v261[v237];
                  v255 = v261[v237 + 1];
                  v256 = &v261[v237 + v237];
                  v257 = v256[1];
                  v258 = &v256[v237];
                  v259 = v256[v237 + 1];
                }

                else
                {
                  v257 = 0;
                  v253 = 0;
                  v255 = 0;
                  v259 = 0;
                  v254 = &v261[v237];
                  v256 = &v261[v237 + v237];
                  v258 = &v256[v237];
                }

                a7.i32[0] = *v261;
                a7.i8[1] = v253;
                a7.i8[4] = *v254;
                a7.i8[5] = v255;
                a7.i8[8] = *v256;
                a7.i8[9] = v257;
                a7.i8[12] = *v258;
                a7.i8[13] = v259;
                v233 = 4;
                goto LABEL_270;
              }

              if (v246 % v114 >= v113)
              {
                v233 = 0;
                a7.i64[0] = 0;
                if (v247 % v114 < v113)
                {
                  goto LABEL_309;
                }
              }

              else
              {
                if ((v269 | 1) >= v13)
                {
                  v276 = 0;
                  if (v269 + 2 < v13)
                  {
                    goto LABEL_306;
                  }

LABEL_299:
                  v277 = 0;
                  if (v269 + 3 >= v13)
                  {
                    goto LABEL_300;
                  }

LABEL_307:
                  v278 = v261[3];
                }

                else
                {
                  v276 = v261[1];
                  if (v269 + 2 >= v13)
                  {
                    goto LABEL_299;
                  }

LABEL_306:
                  v277 = v261[2];
                  if (v269 + 3 < v13)
                  {
                    goto LABEL_307;
                  }

LABEL_300:
                  v278 = 0;
                }

                a7.i8[0] = *v261;
                a7.i16[1] = v276;
                a7.i16[2] = v277;
                a7.i16[3] = v278;
                v261 += v237;
                v233 = 1;
                if (v247 % v114 < v113)
                {
LABEL_309:
                  if ((v269 | 1) >= v13)
                  {
                    v279 = 0;
                    if (v269 + 2 < v13)
                    {
                      goto LABEL_314;
                    }

LABEL_311:
                    v280 = 0;
                    if (v269 + 3 >= v13)
                    {
                      goto LABEL_312;
                    }

LABEL_315:
                    v281 = v261[3];
                  }

                  else
                  {
                    v279 = v261[1];
                    if (v269 + 2 >= v13)
                    {
                      goto LABEL_311;
                    }

LABEL_314:
                    v280 = v261[2];
                    if (v269 + 3 < v13)
                    {
                      goto LABEL_315;
                    }

LABEL_312:
                    v281 = 0;
                  }

                  a8.i8[0] = *v261;
                  a8.i16[1] = v279;
                  a8.i16[2] = v280;
                  a8.i16[3] = v281;
                  v261 += v237;
                  ++v233;
                  if (v248 % v114 < v113)
                  {
LABEL_317:
                    if ((v269 | 1) >= v13)
                    {
                      v282 = 0;
                      if (v269 + 2 < v13)
                      {
                        goto LABEL_322;
                      }

LABEL_319:
                      v283 = 0;
                      if (v269 + 3 >= v13)
                      {
                        goto LABEL_320;
                      }

LABEL_323:
                      v284 = v261[3];
                    }

                    else
                    {
                      v282 = v261[1];
                      if (v269 + 2 >= v13)
                      {
                        goto LABEL_319;
                      }

LABEL_322:
                      v283 = v261[2];
                      if (v269 + 3 < v13)
                      {
                        goto LABEL_323;
                      }

LABEL_320:
                      v284 = 0;
                    }

                    a9.i8[0] = *v261;
                    a9.i16[1] = v282;
                    a9.i16[2] = v283;
                    a9.i16[3] = v284;
                    v261 += v237;
                    ++v233;
                    if (v249 % v114 < v113)
                    {
LABEL_325:
                      if ((v269 | 1) >= v13)
                      {
                        v285 = 0;
                        if (v269 + 2 < v13)
                        {
                          goto LABEL_330;
                        }

LABEL_327:
                        v286 = 0;
                        if (v269 + 3 >= v13)
                        {
                          goto LABEL_328;
                        }

LABEL_331:
                        v287 = v261[3];
                      }

                      else
                      {
                        v285 = v261[1];
                        if (v269 + 2 >= v13)
                        {
                          goto LABEL_327;
                        }

LABEL_330:
                        v286 = v261[2];
                        if (v269 + 3 < v13)
                        {
                          goto LABEL_331;
                        }

LABEL_328:
                        v287 = 0;
                      }

                      a10.i8[0] = *v261;
                      a10.i16[1] = v285;
                      a10.i16[2] = v286;
                      a10.i16[3] = v287;
                      ++v233;
LABEL_333:
                      a9.i64[1] = a10.i64[0];
                      a7.i64[1] = a8.i64[0];
                      a7 = vuzp1q_s8(a7, a9);
LABEL_270:
                      *a7.i8 = vqtbl1_s8(a7, 0xD0905010C080400);
                      *v262 = a7.i64[0];
                      goto LABEL_271;
                    }

LABEL_304:
                    a10.i64[0] = 0;
                    goto LABEL_333;
                  }

LABEL_303:
                  a9.i64[0] = 0;
                  if (v249 % v114 < v113)
                  {
                    goto LABEL_325;
                  }

                  goto LABEL_304;
                }
              }

              a8.i64[0] = 0;
              if (v248 % v114 < v113)
              {
                goto LABEL_317;
              }

              goto LABEL_303;
            }

LABEL_271:
            ++v250;
            ++v252;
            v251 += v13;
          }

          while (v250 != v430);
          ++v245;
          v244 += v423 * 8;
          v243 += v419;
        }

        while (v245 != v429);
        v243 = &v403[v233 * v237];
        v242 = v414 + 4;
        v244 = &v399[v394];
      }

      while (v414 + 4 < v424 - 3);
      v288 = ((v424 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
      v241 = v424;
      v232 = v391;
      if (v383 < v424)
      {
LABEL_337:
        if (!v429)
        {
          goto LABEL_259;
        }

        v289 = v288 + v232 * v241;
        if (!v430)
        {
          goto LABEL_259;
        }

        v290 = 0;
        v415 = v289 + 1;
        v291 = v288 | 1;
        v411 = v289 + 2;
        v292 = v288 | 2;
        v407 = v289 + 3;
        v293 = v288 | 3;
        v294 = v243;
        v295 = v244;
        while (2)
        {
          v397 = v290;
          v400 = v295;
          v296 = 0;
          v404 = v294;
LABEL_348:
          if (v13 < 4)
          {
            v304 = 0;
            v300 = v295;
            v299 = v294;
            if (v13 > 0)
            {
              goto LABEL_388;
            }

            goto LABEL_347;
          }

          if (v234 == 1)
          {
            if (v291 < v241)
            {
              v298 = 0;
              v299 = v294;
              v300 = v295;
              while (1)
              {
                v302 = &v299[v237];
                v303 = &v299[v237 + v237];
                if (v292 >= v241)
                {
                  a9 = 0uLL;
                  if (v293 >= v241)
                  {
LABEL_358:
                    a11 = 0uLL;
                    goto LABEL_353;
                  }
                }

                else
                {
                  a7.i32[0] = *v303;
                  a9 = vmovl_u8(*a7.i8);
                  if (v293 >= v241)
                  {
                    goto LABEL_358;
                  }
                }

                a11.i32[0] = *(v303 + v237);
                a11 = vmovl_u8(*a11.i8);
LABEL_353:
                v301 = *v299;
                v299 += 2;
                v11.i32[0] = v301;
                a7 = vmovl_u8(*v11.i8);
                v11.i32[0] = *v302;
                a8 = vmovl_u8(*v11.i8);
                a10 = a11;
                *a7.i8 = vqtbl4_s8(*a7.i8, 0x3222120230201000);
                *v300 = a7.i64[0];
                v298 += 2;
                v300 = (v300 + v236);
                if (v298 >= v239)
                {
                  goto LABEL_387;
                }
              }
            }

            v318 = 0;
            v300 = v295;
            do
            {
              a7.i32[0] = *&v294[v318];
              a7.i64[1] = a7.i64[0];
              *a7.i8 = vqtbl1_s8(a7, 0xFFFFFF01FFFFFF00);
              *v300 = a7.i64[0];
              v318 += 2;
              v300 = (v300 + v236);
            }

            while (v318 < v239);
            v299 = &v294[v318];
LABEL_387:
            v233 = 4;
            v304 = (v13 & 0xFFFFFFFFFFFFFFFELL) - 2;
            if (v428 >= v13)
            {
              goto LABEL_347;
            }

LABEL_388:
            if (v234 == 1)
            {
              v319 = v304 | 1;
              if ((v304 | 1) >= v13)
              {
                v320 = 0;
                v321 = v304 + 2;
                v322 = v304 + 3;
                v323 = &v299[v235];
                v324 = v424;
                if (v291 < v424)
                {
                  goto LABEL_400;
                }

LABEL_391:
                a7 = 0uLL;
                v325 = &v323[v235];
                if (v292 < v324)
                {
                  goto LABEL_421;
                }
              }

              else
              {
                v320 = v299[1];
                v321 = v304 + 2;
                v322 = v304 + 3;
                v323 = &v299[v235];
                v324 = v424;
                if (v291 >= v424)
                {
                  goto LABEL_391;
                }

LABEL_400:
                if (v319 >= v13)
                {
                  v329 = 0;
                  if (v321 < v13)
                  {
                    goto LABEL_418;
                  }

LABEL_402:
                  v330 = 0;
                  if (v322 >= v13)
                  {
                    goto LABEL_403;
                  }

LABEL_419:
                  v331 = v323[3];
                }

                else
                {
                  v329 = v323[1];
                  if (v321 >= v13)
                  {
                    goto LABEL_402;
                  }

LABEL_418:
                  v330 = v323[2];
                  if (v322 < v13)
                  {
                    goto LABEL_419;
                  }

LABEL_403:
                  v331 = 0;
                }

                a7.i8[0] = *v323;
                a7.i8[2] = v329;
                a7.i8[4] = v330;
                a7.i8[6] = v331;
                v325 = &v323[v235];
                if (v292 < v324)
                {
LABEL_421:
                  if (v319 >= v13)
                  {
                    v339 = 0;
                    if (v321 < v13)
                    {
                      goto LABEL_427;
                    }

LABEL_423:
                    v340 = 0;
                    if (v322 >= v13)
                    {
                      goto LABEL_424;
                    }

LABEL_428:
                    v341 = v325[3];
                  }

                  else
                  {
                    v339 = v325[1];
                    if (v321 >= v13)
                    {
                      goto LABEL_423;
                    }

LABEL_427:
                    v340 = v325[2];
                    if (v322 < v13)
                    {
                      goto LABEL_428;
                    }

LABEL_424:
                    v341 = 0;
                  }

                  a8.i8[0] = *v325;
                  a8.i16[1] = v339;
                  a8.i16[2] = v340;
                  a8.i16[3] = v341;
                  a9.i8[0] = *v299;
                  if (v293 < v324)
                  {
LABEL_430:
                    v342 = &v325[v235];
                    if (v319 >= v13)
                    {
                      v343 = 0;
                      if (v321 < v13)
                      {
                        goto LABEL_435;
                      }

LABEL_432:
                      v344 = 0;
                      if (v322 >= v13)
                      {
                        goto LABEL_433;
                      }

LABEL_436:
                      v345 = v342[3];
                    }

                    else
                    {
                      v343 = v342[1];
                      if (v321 >= v13)
                      {
                        goto LABEL_432;
                      }

LABEL_435:
                      v344 = v342[2];
                      if (v322 < v13)
                      {
                        goto LABEL_436;
                      }

LABEL_433:
                      v345 = 0;
                    }

                    a10.i8[0] = *v342;
                    a10.i16[1] = v343;
                    a10.i16[2] = v344;
                    a10.i16[3] = v345;
LABEL_345:
                    v297.i8[0] = a9.i8[0];
                    v297.i8[1] = v320;
                    v297.i8[2] = a9.i8[4];
                    v297.i8[3] = a9.i8[6];
                    v297.i8[4] = a7.i8[0];
                    v297.i8[5] = a7.i8[2];
                    v297.i8[6] = a7.i8[4];
                    v297.i8[7] = a7.i8[6];
                    v233 = 4;
LABEL_346:
                    a8.i64[1] = a10.i64[0];
                    a11 = vmovn_hight_s16(v297, a8);
                    *a7.i8 = vqtbl1_s8(a11, 0xD0905010C080400);
                    *v300 = a7.i64[0];
                    goto LABEL_347;
                  }

LABEL_344:
                  a10.i64[0] = 0;
                  goto LABEL_345;
                }
              }

              a8.i64[0] = 0;
              a9.i8[0] = *v299;
              if (v293 < v324)
              {
                goto LABEL_430;
              }

              goto LABEL_344;
            }

            if (v289 % v114 >= v113)
            {
              v332 = 0;
              v233 = 0;
              if (v415 % v114 < v113)
              {
                goto LABEL_412;
              }
            }

            else
            {
              if ((v304 | 1) >= v13)
              {
                v326 = 0;
                if (v304 + 2 < v13)
                {
                  goto LABEL_409;
                }

LABEL_397:
                v327 = 0;
                if (v304 + 3 >= v13)
                {
                  goto LABEL_398;
                }

LABEL_410:
                v328 = v299[3];
              }

              else
              {
                v326 = v299[1];
                if (v304 + 2 >= v13)
                {
                  goto LABEL_397;
                }

LABEL_409:
                v327 = v299[2];
                if (v304 + 3 < v13)
                {
                  goto LABEL_410;
                }

LABEL_398:
                v328 = 0;
              }

              a7.i8[0] = *v299;
              a7.i16[1] = v326;
              a7.i16[2] = v327;
              a7.i16[3] = v328;
              *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
              v332 = a7.i32[0];
              v299 += v235;
              v233 = 1;
              if (v415 % v114 < v113)
              {
LABEL_412:
                if (v291 >= v424)
                {
                  v333 = 0;
                }

                else
                {
                  if ((v304 | 1) >= v13)
                  {
                    v336 = 0;
                    if (v304 + 2 < v13)
                    {
                      goto LABEL_439;
                    }

LABEL_415:
                    v337 = 0;
                    if (v304 + 3 >= v13)
                    {
                      goto LABEL_416;
                    }

LABEL_440:
                    v338 = v299[3];
                  }

                  else
                  {
                    v336 = v299[1];
                    if (v304 + 2 >= v13)
                    {
                      goto LABEL_415;
                    }

LABEL_439:
                    v337 = v299[2];
                    if (v304 + 3 < v13)
                    {
                      goto LABEL_440;
                    }

LABEL_416:
                    v338 = 0;
                  }

                  a7.i8[0] = *v299;
                  a7.i16[1] = v336;
                  a7.i16[2] = v337;
                  a7.i16[3] = v338;
                  *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                  v333 = a7.u32[0] << 32;
                }

                v299 += v235;
                ++v233;
                if (v411 % v114 < v113)
                {
LABEL_443:
                  if (v292 >= v424)
                  {
                    v334 = 0;
                  }

                  else
                  {
                    if ((v304 | 1) >= v13)
                    {
                      v346 = 0;
                      if (v304 + 2 < v13)
                      {
                        goto LABEL_450;
                      }

LABEL_446:
                      v347 = 0;
                      if (v304 + 3 >= v13)
                      {
                        goto LABEL_447;
                      }

LABEL_451:
                      v348 = v299[3];
                    }

                    else
                    {
                      v346 = v299[1];
                      if (v304 + 2 >= v13)
                      {
                        goto LABEL_446;
                      }

LABEL_450:
                      v347 = v299[2];
                      if (v304 + 3 < v13)
                      {
                        goto LABEL_451;
                      }

LABEL_447:
                      v348 = 0;
                    }

                    a7.i8[0] = *v299;
                    a7.i16[1] = v346;
                    a7.i16[2] = v347;
                    a7.i16[3] = v348;
                    *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                    v334 = a7.i32[0];
                  }

                  v299 += v235;
                  ++v233;
                  if (v407 % v114 < v113)
                  {
LABEL_454:
                    if (v293 >= v424)
                    {
                      v335 = 0;
                    }

                    else
                    {
                      if ((v304 | 1) >= v13)
                      {
                        v349 = 0;
                        if (v304 + 2 < v13)
                        {
                          goto LABEL_461;
                        }

LABEL_457:
                        v350 = 0;
                        if (v304 + 3 >= v13)
                        {
                          goto LABEL_458;
                        }

LABEL_462:
                        v351 = v299[3];
                      }

                      else
                      {
                        v349 = v299[1];
                        if (v304 + 2 >= v13)
                        {
                          goto LABEL_457;
                        }

LABEL_461:
                        v350 = v299[2];
                        if (v304 + 3 < v13)
                        {
                          goto LABEL_462;
                        }

LABEL_458:
                        v351 = 0;
                      }

                      a7.i8[0] = *v299;
                      a7.i16[1] = v349;
                      a7.i16[2] = v350;
                      a7.i16[3] = v351;
                      *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                      v335 = a7.u32[0] << 32;
                    }

                    ++v233;
LABEL_465:
                    a7.i32[0] = v335 | v334;
                    *a8.f32 = vzip1_s8(*a7.i8, 0xD0905010C080400);
                    a7.i32[0] = HIDWORD(v335);
                    *a10.i8 = vzip1_s8(*a7.i8, 0xD0905010C080400);
                    v297 = (v333 | v332);
                    goto LABEL_346;
                  }

LABEL_407:
                  v335 = 0;
                  goto LABEL_465;
                }

LABEL_406:
                v334 = 0;
                if (v407 % v114 < v113)
                {
                  goto LABEL_454;
                }

                goto LABEL_407;
              }
            }

            v333 = 0;
            if (v411 % v114 < v113)
            {
              goto LABEL_443;
            }

            goto LABEL_406;
          }

          v305 = 0;
          v306 = v289;
          v307 = v289 % v114;
          v308 = v415 % v114;
          v309 = v411 % v114;
          v310 = v407 % v114;
          v311 = v294;
          v300 = v295;
LABEL_364:
          v314 = &v294[v305];
          if (v307 >= v113)
          {
            v315 = 0;
            v233 = 0;
            if (v308 < v113)
            {
              goto LABEL_370;
            }

LABEL_366:
            v316 = 0;
            if (v309 >= v113)
            {
              goto LABEL_367;
            }

LABEL_374:
            if (v292 >= v424)
            {
              v317 = 0;
              v314 += v237;
              ++v233;
              if (v310 < v113)
              {
                goto LABEL_378;
              }
            }

            else
            {
              v317 = *v314;
              v314 += v237;
              ++v233;
              if (v310 < v113)
              {
                goto LABEL_378;
              }
            }
          }

          else
          {
            v315 = *v314;
            v314 = &v311[v237];
            v233 = 1;
            if (v308 >= v113)
            {
              goto LABEL_366;
            }

LABEL_370:
            if (v291 >= v424)
            {
              v316 = 0;
              v314 += v237;
              ++v233;
              if (v309 < v113)
              {
                goto LABEL_374;
              }
            }

            else
            {
              v316 = *v314 << 32;
              v314 += v237;
              ++v233;
              if (v309 < v113)
              {
                goto LABEL_374;
              }
            }

LABEL_367:
            v317 = 0;
            if (v310 < v113)
            {
LABEL_378:
              if (v293 >= v424)
              {
                v312 = 0;
              }

              else
              {
                v312 = *v314 << 32;
              }

              ++v233;
LABEL_363:
              v313 = vdupq_n_s32(v312 | v317);
              v313.i16[6] = WORD2(v312);
              a7 = vextq_s8(v313, v313, 8uLL);
              a8.i64[0] = v316 | v315;
              a8.i64[1] = a7.i64[0];
              *a7.i8 = vqtbl1_s8(a8, 0xD0905010C080400);
              *v300 = a7.i64[0];
              v305 += 2;
              v300 = (v300 + v236);
              v311 += 2;
              if (v305 >= v239)
              {
                v299 = &v294[v305];
                v304 = (v13 & 0xFFFFFFFFFFFFFFFELL) - 2;
                v289 = v306;
                if (v428 < v13)
                {
                  goto LABEL_388;
                }

LABEL_347:
                ++v296;
                ++v295;
                v294 += v13;
                v241 = v424;
                if (v296 == v430)
                {
                  v290 = v397 + 1;
                  v295 = &v400[v423];
                  v294 = &v404[v419];
                  if (v397 + 1 == v429)
                  {
                    goto LABEL_259;
                  }

                  continue;
                }

                goto LABEL_348;
              }

              goto LABEL_364;
            }
          }

          break;
        }

        v312 = 0;
        goto LABEL_363;
      }

LABEL_259:
      v232 = v391 + 1;
      result += v386;
      v378 += v430 * v424 * v429 * v13;
      v240 = &v388[v386];
      if (v391 + 1 == v377)
      {
        return result;
      }
    }
  }

  if (!v14)
  {
    if (!v377)
    {
      return result;
    }

    v188 = 0;
    v189 = v13 == 0;
    if (!v429)
    {
      v189 = 1;
    }

    if (v430)
    {
      v190 = v189;
    }

    else
    {
      v190 = 1;
    }

    v191 = v429 * v430;
    if (v429)
    {
      v192 = v430 == 0;
    }

    else
    {
      v192 = 1;
    }

    v193 = 2 * v424 * v191;
    v194 = v424 * v191 * v13;
    v195 = v424 * (v191 - 1) + 3;
    v196 = &a2[v195];
    v197 = v424 * (2 * v191 - 1) + 3;
    v198 = &a2[v197];
    while (1)
    {
      v199 = v424;
      if (v424 < 4)
      {
        v217 = 0;
        v203 = v378;
        if (!v13)
        {
          goto LABEL_172;
        }
      }

      else
      {
        if (v190)
        {
          goto LABEL_172;
        }

        v200 = 0;
        v201 = v198;
        v202 = v196;
        v203 = v378;
        do
        {
          v204 = 0;
          v205 = v201;
          v206 = v202;
          do
          {
            if ((v204 | 1) >= v13)
            {
              v213 = 0;
              v214 = v206;
              do
              {
                v215 = v430;
                v216 = v214;
                do
                {
                  *result = *(v216 - 3);
                  result[1] = *(v216 - 2);
                  result[2] = *(v216 - 1);
                  result[3] = *v216;
                  result += 8;
                  v216 -= v424;
                  --v215;
                }

                while (v215);
                ++v213;
                v214 -= v430 * v424;
              }

              while (v213 != v429);
            }

            else
            {
              v207 = 0;
              v208 = v205;
              v209 = v206;
              do
              {
                v210 = v208;
                v211 = v209;
                v212 = v430;
                do
                {
                  *result = *(v211 - 3);
                  result[1] = *(v211 - 2);
                  result[2] = *(v211 - 1);
                  result[3] = *v211;
                  result[4] = *(v210 - 3);
                  result[5] = *(v210 - 2);
                  result[6] = *(v210 - 1);
                  result[7] = *v210;
                  result += 8;
                  v211 -= v424;
                  v210 -= v424;
                  --v212;
                }

                while (v212);
                ++v207;
                v209 -= v430 * v424;
                v208 -= v430 * v424;
              }

              while (v207 != v429);
            }

            v204 += 2;
            v206 += v193;
            v205 += v193;
          }

          while (v204 < v13);
          v200 += 4;
          v203 += 4;
          v202 += 4;
          v201 += 4;
        }

        while (v200 < v424 - 3);
        v217 = v424 & 0xFFFFFFFFFFFFFFFCLL;
        v199 = v424;
        if (!v13)
        {
          goto LABEL_172;
        }
      }

      v218 = v199 - v217;
      if (v199 > v217 && !v192)
      {
        v219 = 0;
        v220 = &v203[v195];
        v221 = &v203[v197];
LABEL_197:
        if ((v219 | 1) < v13)
        {
          v222 = 0;
          v223 = v220;
          v224 = v221;
          while (1)
          {
            v225 = v430;
            v226 = v223;
            v227 = v224;
            do
            {
              if (v218 > 3)
              {
                if (v218 > 5)
                {
                  if (v218 != 6)
                  {
                    if (v218 != 7)
                    {
                      goto LABEL_225;
                    }

                    result[6] = v226[3];
                  }

                  result[5] = v226[2];
LABEL_220:
                  result[4] = v226[1];
                }

                else if (v218 != 4)
                {
                  goto LABEL_220;
                }

                result[3] = *v226;
LABEL_222:
                result[2] = *(v226 - 1);
LABEL_223:
                result[1] = *(v226 - 2);
LABEL_224:
                *result = *(v226 - 3);
                goto LABEL_225;
              }

              switch(v218)
              {
                case 1:
                  goto LABEL_224;
                case 2:
                  goto LABEL_223;
                case 3:
                  goto LABEL_222;
              }

LABEL_225:
              if (v218 <= 3)
              {
                switch(v218)
                {
                  case 1:
                    goto LABEL_206;
                  case 2:
                    goto LABEL_205;
                  case 3:
                    goto LABEL_204;
                }
              }

              else
              {
                if (v218 <= 5)
                {
                  if (v218 != 4)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_203;
                }

                if (v218 == 6)
                {
                  goto LABEL_201;
                }

                if (v218 == 7)
                {
                  result[10] = v227[3];
LABEL_201:
                  result[9] = v227[2];
LABEL_202:
                  result[8] = v227[1];
LABEL_203:
                  result[7] = *v227;
LABEL_204:
                  result[6] = *(v227 - 1);
LABEL_205:
                  result[5] = *(v227 - 2);
LABEL_206:
                  result[4] = *(v227 - 3);
                }
              }

              result += 8;
              v227 -= v424;
              v226 -= v424;
              --v225;
            }

            while (v225);
            ++v222;
            v224 -= v430 * v424;
            v223 -= v430 * v424;
            if (v222 == v429)
            {
              goto LABEL_196;
            }
          }
        }

        v228 = 0;
        v229 = v220;
        while (2)
        {
          v230 = v430;
          v231 = v229;
LABEL_246:
          if (v218 <= 3)
          {
            switch(v218)
            {
              case 1:
                goto LABEL_244;
              case 2:
                goto LABEL_243;
              case 3:
                goto LABEL_242;
            }
          }

          else
          {
            if (v218 > 5)
            {
              if (v218 != 6)
              {
                if (v218 != 7)
                {
                  goto LABEL_245;
                }

                result[6] = v231[3];
              }

              result[5] = v231[2];
              goto LABEL_240;
            }

            if (v218 != 4)
            {
LABEL_240:
              result[4] = v231[1];
            }

            result[3] = *v231;
LABEL_242:
            result[2] = *(v231 - 1);
LABEL_243:
            result[1] = *(v231 - 2);
LABEL_244:
            *result = *(v231 - 3);
          }

LABEL_245:
          result += 8;
          v231 -= v424;
          if (!--v230)
          {
            ++v228;
            v229 -= v430 * v424;
            if (v228 != v429)
            {
              continue;
            }

LABEL_196:
            v219 += 2;
            v220 += v193;
            v221 += v193;
            if (v219 >= v13)
            {
              break;
            }

            goto LABEL_197;
          }

          goto LABEL_246;
        }
      }

LABEL_172:
      ++v188;
      v378 += v194;
      v196 += v194;
      v198 += v194;
      if (v188 == v377)
      {
        return result;
      }
    }
  }

  if (v377)
  {
    v15 = 0;
    v16 = v13 == 0;
    v17 = v429 * v430;
    if (!v429)
    {
      v16 = 1;
    }

    v398 = 2 * v17 * v424;
    if (!v430)
    {
      v16 = 1;
    }

    v367 = v16;
    if (v429)
    {
      v18 = v430 == 0;
    }

    else
    {
      v18 = 1;
    }

    v366 = v18;
    v19 = v430 - 1;
    v20 = -v430;
    v368 = v424 * v13 * v17;
    v379 = 4 * v17;
    v21 = 4 * v17 - 1;
    v22 = &a2[v21];
    v23 = 2 * v17 - 1;
    v362 = v23 + v17;
    v363 = v23;
    v24 = &v378[v23 + v17];
    v25 = &v378[v23];
    v365 = v17 * (v424 + 4) - 1;
    v26 = &v378[v365];
    v361 = v17 * (v424 + 3) - 1;
    v27 = &v378[v361];
    v360 = v17 * (v424 + 2) - 1;
    v28 = &v378[v360];
    v358 = 6 * v17 - 1;
    v359 = v17 - 1;
    v357 = v17 * (v424 + 7) - 1;
    v356 = v17 * (v424 + 6) - 1;
    v355 = v17 * (v424 + 5) - 1;
    v364 = v21;
    v353 = ~v17 + 8 * v17;
    v354 = v21 + v17;
    v352 = v17 - 1 + v17 * v424;
    v29 = &v378[v352];
    do
    {
      v375 = v22;
      v376 = v15;
      v373 = v25;
      v374 = v24;
      v371 = v27;
      v372 = v26;
      v369 = v29;
      v370 = v28;
      if (v424 < 4)
      {
        v82 = 0;
        v35 = v378;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v367)
        {
          goto LABEL_12;
        }

        v30 = 0;
        v31 = v27;
        v32 = v26;
        v33 = v24;
        v34 = v22;
        v35 = v378;
        do
        {
          v389 = v29;
          v392 = v30;
          v36 = 0;
          v37 = v29;
          v385 = v31;
          v387 = v28;
          v38 = v28;
          v382 = v25;
          v384 = v32;
          v39 = v25;
          v380 = v34;
          v381 = v33;
          v395 = v35;
          v40 = v35;
          do
          {
            v41 = &v40[(v429 - 1) * v430];
            v425 = v37;
            v416 = v31;
            v420 = v38;
            v408 = v39;
            v412 = v32;
            v401 = v34;
            v405 = v33;
            if ((v36 | 1) >= v13)
            {
              v68 = 0;
              v69 = v39;
              do
              {
                v70 = &v41[v19];
                v71 = v69;
                v72 = v33;
                v73 = v34;
                v74 = v430;
                do
                {
                  v76 = *v70--;
                  v75 = v76;
                  v78 = *v71--;
                  v77 = v78;
                  v80 = *v72--;
                  v79 = v80;
                  v81 = *v73--;
                  a4.i16[0] = v75;
                  a4.i16[1] = v77;
                  a4.i16[2] = v79;
                  a4.i16[3] = v81;
                  *result = vmovn_s16(a4).u32[0];
                  result += 8;
                  --v74;
                }

                while (v74);
                ++v68;
                v41 -= v430;
                v34 -= v430;
                v33 -= v430;
                v69 -= v430;
              }

              while (v68 != v429);
            }

            else
            {
              v42 = 0;
              v43 = v37;
              v44 = v38;
              do
              {
                v45 = &v41[v19];
                v46 = v39;
                v47 = v33;
                v48 = v34;
                v49 = v43;
                v50 = v44;
                v51 = v31;
                v52 = v32;
                v53 = v430;
                do
                {
                  v55 = *v45--;
                  v54 = v55;
                  v57 = *v46--;
                  v56 = v57;
                  v59 = *v47--;
                  v58 = v59;
                  v60 = *v48--;
                  a4.i16[0] = v54;
                  a4.i16[1] = v56;
                  a4.i16[2] = v58;
                  a4.i16[3] = v60;
                  *result = vmovn_s16(a4).u32[0];
                  v62 = *v49--;
                  v61 = v62;
                  v64 = *v50--;
                  v63 = v64;
                  v66 = *v51--;
                  v65 = v66;
                  v67 = *v52--;
                  a4.i16[0] = v61;
                  a4.i16[1] = v63;
                  a4.i16[2] = v65;
                  a4.i16[3] = v67;
                  *(result + 1) = vmovn_s16(a4).u32[0];
                  result += 8;
                  --v53;
                }

                while (v53);
                ++v42;
                v41 -= v430;
                v32 -= v430;
                v31 -= v430;
                v44 -= v430;
                v43 -= v430;
                v34 -= v430;
                v33 -= v430;
                v39 -= v430;
              }

              while (v42 != v429);
            }

            v36 += 2;
            v40 += v398;
            v34 = &v401[v398];
            v33 = &v405[v398];
            v39 = &v408[v398];
            v32 = &v412[v398];
            v31 = &v416[v398];
            v38 = &v420[v398];
            v37 = &v425[v398];
          }

          while (v36 < v13);
          v30 = v392 + 4;
          v35 = &v395[v379];
          v34 = &v380[v379];
          v33 = &v381[v379];
          v25 = &v382[v379];
          v32 = &v384[v379];
          v31 = &v385[v379];
          v28 = &v387[v379];
          v29 = &v389[v379];
        }

        while (v392 + 4 < v424 - 3);
        v82 = v424 & 0xFFFFFFFFFFFFFFFCLL;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v83 = v424 - v82;
      if (v424 > v82 && !v366)
      {
        v84 = 0;
        v85 = &v35[v353];
        v86 = &v35[v358];
        v87 = &v35[v354];
        v88 = &v35[v364];
        v89 = &v35[v362];
        v90 = &v35[v363];
        v91 = &v35[v359];
        v92 = &v35[v357];
        v93 = &v35[v356];
        v94 = &v35[v355];
        v95 = &v35[v365];
        v96 = &v35[v361];
        v97 = &v35[v360];
        v98 = &v35[v352];
LABEL_37:
        v426 = v87;
        v417 = v89;
        v421 = v88;
        v409 = v93;
        v413 = v92;
        v402 = v95;
        v406 = v94;
        v393 = v97;
        v396 = v96;
        v390 = v98;
        if ((v84 | 1) < v13)
        {
          v99 = 0;
          v100 = v91;
          v101 = v90;
          v102 = v89;
          v103 = v86;
          v104 = v85;
          while (1)
          {
            v105 = 0;
            do
            {
              if (v83 > 3)
              {
                if (v83 > 5)
                {
                  if (v83 != 6)
                  {
                    if (v83 != 7)
                    {
                      goto LABEL_65;
                    }

                    result[6] = v85[v105];
                  }

                  result[5] = v86[v105];
LABEL_60:
                  result[4] = v87[v105];
                }

                else if (v83 != 4)
                {
                  goto LABEL_60;
                }

                result[3] = v88[v105];
LABEL_62:
                result[2] = v102[v105];
LABEL_63:
                result[1] = v101[v105];
LABEL_64:
                *result = v100[v105];
                goto LABEL_65;
              }

              switch(v83)
              {
                case 1:
                  goto LABEL_64;
                case 2:
                  goto LABEL_63;
                case 3:
                  goto LABEL_62;
              }

LABEL_65:
              if (v83 <= 3)
              {
                switch(v83)
                {
                  case 1:
                    goto LABEL_46;
                  case 2:
                    goto LABEL_45;
                  case 3:
                    goto LABEL_44;
                }
              }

              else
              {
                if (v83 <= 5)
                {
                  if (v83 != 4)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_43;
                }

                if (v83 == 6)
                {
                  goto LABEL_41;
                }

                if (v83 == 7)
                {
                  result[10] = v92[v105];
LABEL_41:
                  result[9] = v93[v105];
LABEL_42:
                  result[8] = v94[v105];
LABEL_43:
                  result[7] = v95[v105];
LABEL_44:
                  result[6] = v96[v105];
LABEL_45:
                  result[5] = v97[v105];
LABEL_46:
                  result[4] = v98[v105];
                }
              }

              result += 8;
              --v105;
            }

            while (v20 != v105);
            ++v99;
            v85 -= v430;
            v86 -= v430;
            v87 -= v430;
            v88 -= v430;
            v102 -= v430;
            v101 -= v430;
            v92 -= v430;
            v93 -= v430;
            v94 -= v430;
            v95 -= v430;
            v96 -= v430;
            v97 -= v430;
            v98 -= v430;
            v100 -= v430;
            if (v99 == v429)
            {
              goto LABEL_36;
            }
          }
        }

        v106 = 0;
        v107 = v91;
        v108 = v90;
        v109 = v89;
        v103 = v86;
        v104 = v85;
        while (2)
        {
          v110 = 0;
LABEL_86:
          if (v83 <= 3)
          {
            switch(v83)
            {
              case 1:
                goto LABEL_84;
              case 2:
                goto LABEL_83;
              case 3:
                goto LABEL_82;
            }
          }

          else
          {
            if (v83 > 5)
            {
              if (v83 != 6)
              {
                if (v83 != 7)
                {
                  goto LABEL_85;
                }

                result[6] = v85[v110];
              }

              result[5] = v86[v110];
              goto LABEL_80;
            }

            if (v83 != 4)
            {
LABEL_80:
              result[4] = v87[v110];
            }

            result[3] = v88[v110];
LABEL_82:
            result[2] = v109[v110];
LABEL_83:
            result[1] = v108[v110];
LABEL_84:
            *result = v107[v110];
          }

LABEL_85:
          result += 8;
          if (v20 == --v110)
          {
            ++v106;
            v85 -= v430;
            v86 -= v430;
            v87 -= v430;
            v88 -= v430;
            v109 -= v430;
            v108 -= v430;
            v107 -= v430;
            if (v106 != v429)
            {
              continue;
            }

LABEL_36:
            v84 += 2;
            v85 = &v104[v398];
            v86 = &v103[v398];
            v87 = &v426[v398];
            v88 = &v421[v398];
            v89 = &v417[v398];
            v90 += v398;
            v91 += v398;
            v92 = &v413[v398];
            v93 = &v409[v398];
            v94 = &v406[v398];
            v95 = &v402[v398];
            v96 = &v396[v398];
            v97 = &v393[v398];
            v98 = &v390[v398];
            if (v84 >= v13)
            {
              break;
            }

            goto LABEL_37;
          }

          goto LABEL_86;
        }
      }

LABEL_12:
      v15 = v376 + 1;
      v378 += v368;
      v22 = &v375[v368];
      v24 = &v374[v368];
      v25 = &v373[v368];
      v26 = &v372[v368];
      v27 = &v371[v368];
      v28 = &v370[v368];
      v29 = &v369[v368];
    }

    while (v376 + 1 != v377);
  }

  return result;
}

int8x8_t *sub_239C2A4C0(int8x8_t *result, unsigned __int8 *a2, uint64_t a3, int16x8_t a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, __n128 a10, uint16x8_t a11)
{
  v13 = *(a3 + 8);
  v14 = *(a3 + 32);
  v503 = *(a3 + 48);
  v611 = *(a3 + 56);
  v609 = *(a3 + 64);
  v15 = *(a3 + 108);
  v610 = v14;
  if (*(a3 + 104) != 1)
  {
    v191 = *(a3 + 16);
    v192 = *(a3 + 40);
    v193 = *(a3 + 72);
    v194 = *(a3 + 80);
    if (v15)
    {
      if (v503 && v13 && v611 && v14 && v609)
      {
        v195 = 0;
        v196 = v609 * v611;
        v197 = 3 * v609 * v611;
        v198 = 12 * v609 * v611;
        v199 = v609 * v13 * v611;
        v200 = v609 * v611 * v191;
        v606 = 4 * v200;
        v201 = 12 * v611;
        v596 = v200 * v192;
        v590 = v611 * v14 * v609 * v13;
        do
        {
          v202 = 0;
          v601 = v195;
          v203 = v195 * v14;
          v204 = a2;
          v205 = result;
          do
          {
            v206 = v202 + v203;
            if ((v202 + v203) % v194 < v193)
            {
              v207 = 0;
              v208 = v204;
              v209 = v205;
              do
              {
                v210 = 0;
                v211 = v208;
                v212 = v209;
                do
                {
                  v213 = 0;
                  v214 = 0;
                  v215 = 3;
                  v216 = v211;
                  v217 = v212;
                  do
                  {
                    v218 = v214;
                    if (v13 >= v215)
                    {
                      v219 = v215;
                    }

                    else
                    {
                      v219 = v13;
                    }

                    v214 += 3;
                    if (v214 >= v13)
                    {
                      v220 = v13;
                    }

                    else
                    {
                      v220 = v214;
                    }

                    if (v218 < v220)
                    {
                      v221 = v219 + v213;
                      v222 = v216;
                      v223 = v217;
                      do
                      {
                        v223->i8[0] = *v222;
                        v223 = (v223 + 4);
                        v222 += v196;
                        --v221;
                      }

                      while (v221);
                    }

                    v217 = (v217 + v198);
                    v216 += v197;
                    v215 += 3;
                    v213 -= 3;
                  }

                  while (v214 < v13);
                  ++v210;
                  v212 = (v212 + 12);
                  ++v211;
                }

                while (v210 != v611);
                ++v207;
                v209 = (v209 + v201);
                v208 += v611;
              }

              while (v207 != v609);
              v204 += v199;
            }

            if ((v202 | 1) < v610 && (v206 + 1) % v194 < v193)
            {
              v224 = 0;
              v225 = v205 + 1;
              v226 = v204;
              do
              {
                v227 = 0;
                v228 = v226;
                v229 = v225;
                do
                {
                  v230 = 0;
                  v231 = 0;
                  v232 = 3;
                  v233 = v228;
                  v234 = v229;
                  do
                  {
                    if (v13 >= v232)
                    {
                      v235 = v232;
                    }

                    else
                    {
                      v235 = v13;
                    }

                    v236 = v231 + 3;
                    if (v231 + 3 >= v13)
                    {
                      v237 = v13;
                    }

                    else
                    {
                      v237 = v231 + 3;
                    }

                    if (v231 < v237)
                    {
                      v238 = 0;
                      v239 = v235 + v230;
                      v240 = v233;
                      do
                      {
                        v234[v238] = *v240;
                        v240 += v196;
                        v238 += 4;
                        --v239;
                      }

                      while (v239);
                    }

                    v234 += v198;
                    v233 += v197;
                    v232 += 3;
                    v230 -= 3;
                    v231 = v236;
                  }

                  while (v236 < v13);
                  ++v227;
                  v229 += 12;
                  ++v228;
                }

                while (v227 != v611);
                ++v224;
                v225 += v201;
                v226 += v611;
              }

              while (v224 != v609);
              v204 += v199;
            }

            if ((v202 | 2) < v610 && (v206 + 2) % v194 < v193)
            {
              v241 = 0;
              v242 = v205 + 2;
              v243 = v204;
              do
              {
                v244 = 0;
                v245 = v243;
                v246 = v242;
                do
                {
                  v247 = 0;
                  v248 = 0;
                  v249 = 3;
                  v250 = v245;
                  v251 = v246;
                  do
                  {
                    if (v13 >= v249)
                    {
                      v252 = v249;
                    }

                    else
                    {
                      v252 = v13;
                    }

                    v253 = v248 + 3;
                    if (v248 + 3 >= v13)
                    {
                      v254 = v13;
                    }

                    else
                    {
                      v254 = v248 + 3;
                    }

                    if (v248 < v254)
                    {
                      v255 = 0;
                      v256 = v252 + v247;
                      v257 = v250;
                      do
                      {
                        v251[v255] = *v257;
                        v257 += v196;
                        v255 += 4;
                        --v256;
                      }

                      while (v256);
                    }

                    v251 += v198;
                    v250 += v197;
                    v249 += 3;
                    v247 -= 3;
                    v248 = v253;
                  }

                  while (v253 < v13);
                  ++v244;
                  v246 += 12;
                  ++v245;
                }

                while (v244 != v611);
                ++v241;
                v242 += v201;
                v243 += v611;
              }

              while (v241 != v609);
              v204 += v199;
            }

            if ((v202 | 3) < v610 && (v206 + 3) % v194 < v193)
            {
              v258 = 0;
              v259 = v205 + 3;
              v260 = v204;
              do
              {
                v261 = 0;
                v262 = v260;
                v263 = v259;
                do
                {
                  v264 = 0;
                  v265 = 0;
                  v266 = 3;
                  v267 = v262;
                  v268 = v263;
                  do
                  {
                    if (v13 >= v266)
                    {
                      v269 = v266;
                    }

                    else
                    {
                      v269 = v13;
                    }

                    v270 = v265 + 3;
                    if (v265 + 3 >= v13)
                    {
                      v271 = v13;
                    }

                    else
                    {
                      v271 = v265 + 3;
                    }

                    if (v265 < v271)
                    {
                      v272 = 0;
                      v273 = v269 + v264;
                      v274 = v267;
                      do
                      {
                        v268[v272] = *v274;
                        v274 += v196;
                        v272 += 4;
                        --v273;
                      }

                      while (v273);
                    }

                    v268 += v198;
                    v267 += v197;
                    v266 += 3;
                    v264 -= 3;
                    v265 = v270;
                  }

                  while (v270 < v13);
                  ++v261;
                  v263 += 12;
                  ++v262;
                }

                while (v261 != v611);
                ++v258;
                v259 += v201;
                v260 += v611;
              }

              while (v258 != v609);
              v204 += v199;
            }

            v202 += 4;
            v205 = (v205 + v606);
          }

          while (v202 < v610);
          v195 = v601 + 1;
          result = (result + v596);
          a2 += v590;
          v14 = v610;
        }

        while (v601 + 1 != v503);
      }

      return result;
    }

    if (!v503)
    {
      return result;
    }

    v335 = 0;
    v336 = 0;
    v598 = *(a3 + 88);
    v541 = v14 - 3;
    v337 = v609 * v13 * v611;
    v338 = 12 * v609 * v611;
    v339 = v609 * v611 * v13;
    v340 = v609 * v611 * v191;
    v538 = 4 * v340;
    v341 = v13 - 3;
    v562 = 12 * v611;
    v559 = v611 * v13;
    v529 = v340 * v192;
    v526 = v611 * v14 * v609 * v13;
    v603 = 3 * ((v13 - 4) / 3) + 3;
    v342 = result + (((v14 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4) * v191 * v609 * v611;
    v520 = 2 * v339;
    v523 = ((v14 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v517 = 3 * v339;
    v608 = v339;
    while (1)
    {
      v532 = v342;
      v535 = v335;
      if (v14 < 4)
      {
        v403 = 0;
        v345 = result;
        v344 = a2;
        if (v14 > 0)
        {
          goto LABEL_407;
        }

        goto LABEL_306;
      }

      if (!v609)
      {
        goto LABEL_306;
      }

      v544 = v335 * v14;
      if (!v611)
      {
        goto LABEL_306;
      }

      v343 = 0;
      v344 = a2;
      v345 = result;
      v346 = v598;
      do
      {
        v347 = 0;
        v547 = v343;
        v551 = v345;
        v348 = v343 + v544;
        v349 = v343 + v544 + 1;
        v350 = v343 + v544 + 2;
        v351 = v343 + v544 + 3;
        v555 = v344;
        v352 = v345;
        v592 = v343 + v544;
        v586 = v349;
        v583 = v350;
        v578 = v351;
        do
        {
          v573 = v347;
          v353 = 0;
          v568 = v344;
          v564 = v352;
          do
          {
            if (v13 < 4)
            {
              v362 = 0;
              v357 = v352;
              v356 = v344;
              if (v13 > 0)
              {
                goto LABEL_340;
              }

              goto LABEL_318;
            }

            if (v346 != 1)
            {
              v363 = 0;
              v364 = v349 % v194;
              v365 = v350 % v194;
              v366 = v351 % v194;
              v367 = v344;
              v357 = v352;
              while (1)
              {
                v369 = &v344[v363];
                if (v348 % v194 >= v193)
                {
                  v336 = 0;
                  a7 = 0uLL;
                  if (v364 >= v193)
                  {
LABEL_331:
                    a11 = 0uLL;
                    if (v365 >= v193)
                    {
                      goto LABEL_332;
                    }

                    goto LABEL_336;
                  }
                }

                else
                {
                  a7.i32[0] = *v369;
                  a7 = vmovl_u8(*a7.i8);
                  v369 = &v367[v337];
                  v336 = 1;
                  if (v364 >= v193)
                  {
                    goto LABEL_331;
                  }
                }

                a11.i32[0] = *v369;
                a11 = vmovl_u8(*a11.i8);
                v369 = (v369 + v337);
                ++v336;
                if (v365 >= v193)
                {
LABEL_332:
                  v11 = 0uLL;
                  if (v366 >= v193)
                  {
                    goto LABEL_337;
                  }

                  goto LABEL_327;
                }

LABEL_336:
                v11.i32[0] = *v369;
                v11 = vmovl_u8(*v11.i8);
                v369 = (v369 + v337);
                ++v336;
                if (v366 >= v193)
                {
LABEL_337:
                  v12 = 0uLL;
                  goto LABEL_328;
                }

LABEL_327:
                v12.i32[0] = *v369;
                v12 = vmovl_u8(*v12.i8);
                ++v336;
LABEL_328:
                a8 = a11;
                a9 = v11;
                a10 = v12;
                *v357 = vqtbl4_s8(*a7.i8, 0x3222120230201000);
                v11.i16[3] = v12.i16[2];
                v368.i32[0] = vzip2_s16(*a7.i8, *a11.i8).u32[0];
                v368.i32[1] = v11.i32[1];
                *a7.i8 = vuzp1_s8(v368, 0xD0905010C080400);
                v357[1].i32[0] = a7.i32[0];
                v363 += 3;
                v357 = (v357 + v338);
                v367 += 3;
                if (v363 >= v341)
                {
                  v356 = &v344[v363];
                  goto LABEL_339;
                }
              }
            }

            v355 = 0;
            v356 = v344;
            v357 = v352;
            do
            {
              v358 = &v356[v337];
              v359 = *v356;
              v356 += 3;
              a7.i32[0] = v359;
              a7.i32[1] = *v358;
              v360 = (v358 + v337);
              a7.i32[2] = *v360;
              a8 = a7;
              a8.i32[3] = *(v360 + v337);
              v361 = vqtbl1q_s8(a8, xmmword_239D7E340);
              a9.i16[0] = a8.u8[2];
              a9.i16[1] = a8.u8[6];
              a9.i16[2] = BYTE2(*v360);
              a9.i16[3] = a8.u8[14];
              a7 = vqtbl2q_s8(*(&a8 - 1), xmmword_239D7E350);
              *v357 = *a7.i8;
              *a7.i8 = vmovn_s16(a9);
              v357[1].i32[0] = a7.i32[0];
              v355 += 3;
              v357 = (v357 + v338);
            }

            while (v355 < v341);
            v336 = 4;
LABEL_339:
            v362 = 3 * ((v13 - 4) / 3) + 3;
            if (v603 < v13)
            {
LABEL_340:
              if (v346 == 1)
              {
                v370 = v362 + 1;
                if (v362 + 1 >= v13)
                {
                  v371 = 0;
                  v372 = v362 + 2;
                  if (v362 + 2 < v13)
                  {
                    goto LABEL_360;
                  }

LABEL_343:
                  v373 = 0;
                  v374 = v362 + 3;
                  if (v374 >= v13)
                  {
                    goto LABEL_344;
                  }

LABEL_361:
                  v375 = v356[3];
                  v376 = &v356[v339];
                  if (v370 < v13)
                  {
                    goto LABEL_362;
                  }

LABEL_345:
                  v377 = 0;
                  if (v372 >= v13)
                  {
                    goto LABEL_346;
                  }

LABEL_363:
                  v378 = v376[2];
                  if (v374 < v13)
                  {
                    goto LABEL_364;
                  }

LABEL_347:
                  v379 = 0;
                  v380 = &v376[v339];
                  if (v370 >= v13)
                  {
                    goto LABEL_348;
                  }

LABEL_365:
                  v381 = v380[1];
                  if (v372 < v13)
                  {
                    goto LABEL_366;
                  }

LABEL_349:
                  v382 = 0;
                  if (v374 >= v13)
                  {
                    goto LABEL_350;
                  }

LABEL_367:
                  v383 = v380[3];
                  v384 = &v380[v339];
                  if (v370 < v13)
                  {
                    goto LABEL_368;
                  }

LABEL_351:
                  v385 = 0;
                  v386 = *v356;
                  v387 = *v376;
                  v388 = *v380;
                  v389 = *v384;
                  if (v372 >= v13)
                  {
                    goto LABEL_352;
                  }

LABEL_369:
                  v390 = v384[2];
                  if (v374 < v13)
                  {
                    goto LABEL_315;
                  }

LABEL_370:
                  v354 = 0;
                }

                else
                {
                  v371 = v356[1];
                  v372 = v362 + 2;
                  if (v362 + 2 >= v13)
                  {
                    goto LABEL_343;
                  }

LABEL_360:
                  v373 = v356[2];
                  v374 = v362 + 3;
                  if (v374 < v13)
                  {
                    goto LABEL_361;
                  }

LABEL_344:
                  v375 = 0;
                  v376 = &v356[v339];
                  if (v370 >= v13)
                  {
                    goto LABEL_345;
                  }

LABEL_362:
                  v377 = v376[1];
                  if (v372 < v13)
                  {
                    goto LABEL_363;
                  }

LABEL_346:
                  v378 = 0;
                  if (v374 >= v13)
                  {
                    goto LABEL_347;
                  }

LABEL_364:
                  v379 = v376[3];
                  v380 = &v376[v339];
                  if (v370 < v13)
                  {
                    goto LABEL_365;
                  }

LABEL_348:
                  v381 = 0;
                  if (v372 >= v13)
                  {
                    goto LABEL_349;
                  }

LABEL_366:
                  v382 = v380[2];
                  if (v374 < v13)
                  {
                    goto LABEL_367;
                  }

LABEL_350:
                  v383 = 0;
                  v384 = &v380[v339];
                  if (v370 >= v13)
                  {
                    goto LABEL_351;
                  }

LABEL_368:
                  v385 = v384[1];
                  v386 = *v356;
                  v387 = *v376;
                  v388 = *v380;
                  v389 = *v384;
                  if (v372 < v13)
                  {
                    goto LABEL_369;
                  }

LABEL_352:
                  v390 = 0;
                  if (v374 >= v13)
                  {
                    goto LABEL_370;
                  }

LABEL_315:
                  v354 = v384[3];
                }

                v346 = v598;
                a8.i8[0] = v386;
                a8.i8[1] = v371;
                a8.i8[2] = v373;
                a8.i8[3] = v375;
                a8.i8[4] = v387;
                a8.i8[5] = v377;
                a8.i8[6] = v378;
                a8.i8[7] = v379;
                a8.i8[8] = v388;
                a8.i8[9] = v381;
                a8.i8[10] = v382;
                a8.i8[11] = v383;
                a8.i8[12] = v389;
                a8.i8[13] = v385;
                a8.i8[14] = v390;
                a8.i8[15] = v354;
                v336 = 4;
                v14 = v610;
                v339 = v609 * v611 * v13;
                v348 = v592;
                v349 = v586;
                v350 = v583;
                v351 = v578;
LABEL_317:
                a7 = vqtbl1q_s8(a8, xmmword_239D7E340);
                a9 = vqtbl2q_s8(*a7.i8, xmmword_239D7E350);
                *v357 = *a9.i8;
                a7.i16[0] = a8.u8[2];
                a7.i16[1] = a8.u8[6];
                a7.i16[2] = a8.u8[10];
                a7.i16[3] = a8.u8[14];
                *a7.i8 = vmovn_s16(a7);
                v357[1].i32[0] = a7.i32[0];
                goto LABEL_318;
              }

              if (v348 % v194 >= v193)
              {
                v336 = 0;
                a7.i64[0] = 0;
                if (v349 % v194 < v193)
                {
                  goto LABEL_379;
                }
              }

              else
              {
                if (v362 + 1 >= v13)
                {
                  v391 = 0;
                  if (v362 + 2 < v13)
                  {
                    goto LABEL_376;
                  }

LABEL_357:
                  v392 = 0;
                  if (v362 + 3 >= v13)
                  {
                    goto LABEL_358;
                  }

LABEL_377:
                  v393 = v356[3];
                }

                else
                {
                  v391 = v356[1];
                  if (v362 + 2 >= v13)
                  {
                    goto LABEL_357;
                  }

LABEL_376:
                  v392 = v356[2];
                  if (v362 + 3 < v13)
                  {
                    goto LABEL_377;
                  }

LABEL_358:
                  v393 = 0;
                }

                a7.i8[0] = *v356;
                a7.i16[1] = v391;
                a7.i16[2] = v392;
                a7.i16[3] = v393;
                v356 += v339;
                v336 = 1;
                if (v349 % v194 < v193)
                {
LABEL_379:
                  if (v362 + 1 >= v13)
                  {
                    v394 = 0;
                    if (v362 + 2 < v13)
                    {
                      goto LABEL_384;
                    }

LABEL_381:
                    v395 = 0;
                    if (v362 + 3 >= v13)
                    {
                      goto LABEL_382;
                    }

LABEL_385:
                    v396 = v356[3];
                  }

                  else
                  {
                    v394 = v356[1];
                    if (v362 + 2 >= v13)
                    {
                      goto LABEL_381;
                    }

LABEL_384:
                    v395 = v356[2];
                    if (v362 + 3 < v13)
                    {
                      goto LABEL_385;
                    }

LABEL_382:
                    v396 = 0;
                  }

                  a8.i8[0] = *v356;
                  a8.i16[1] = v394;
                  a8.i16[2] = v395;
                  a8.i16[3] = v396;
                  v356 += v339;
                  ++v336;
                  if (v350 % v194 < v193)
                  {
LABEL_387:
                    if (v362 + 1 >= v13)
                    {
                      v397 = 0;
                      if (v362 + 2 < v13)
                      {
                        goto LABEL_392;
                      }

LABEL_389:
                      v398 = 0;
                      if (v362 + 3 >= v13)
                      {
                        goto LABEL_390;
                      }

LABEL_393:
                      v399 = v356[3];
                    }

                    else
                    {
                      v397 = v356[1];
                      if (v362 + 2 >= v13)
                      {
                        goto LABEL_389;
                      }

LABEL_392:
                      v398 = v356[2];
                      if (v362 + 3 < v13)
                      {
                        goto LABEL_393;
                      }

LABEL_390:
                      v399 = 0;
                    }

                    a9.i8[0] = *v356;
                    a9.i16[1] = v397;
                    a9.i16[2] = v398;
                    a9.i16[3] = v399;
                    v356 += v339;
                    ++v336;
                    if (v351 % v194 < v193)
                    {
LABEL_395:
                      if (v362 + 1 >= v13)
                      {
                        v400 = 0;
                        if (v362 + 2 < v13)
                        {
                          goto LABEL_400;
                        }

LABEL_397:
                        v401 = 0;
                        if (v362 + 3 >= v13)
                        {
                          goto LABEL_398;
                        }

LABEL_401:
                        v402 = v356[3];
                      }

                      else
                      {
                        v400 = v356[1];
                        if (v362 + 2 >= v13)
                        {
                          goto LABEL_397;
                        }

LABEL_400:
                        v401 = v356[2];
                        if (v362 + 3 < v13)
                        {
                          goto LABEL_401;
                        }

LABEL_398:
                        v402 = 0;
                      }

                      a10.n128_u8[0] = *v356;
                      a10.n128_u16[1] = v400;
                      a10.n128_u16[2] = v401;
                      a10.n128_u16[3] = v402;
                      ++v336;
LABEL_403:
                      a9.i64[1] = a10.n128_u64[0];
                      a7.i64[1] = a8.i64[0];
                      a8 = vuzp1q_s8(a7, a9);
                      goto LABEL_317;
                    }

LABEL_374:
                    a10.n128_u64[0] = 0;
                    goto LABEL_403;
                  }

LABEL_373:
                  a9.i64[0] = 0;
                  if (v351 % v194 < v193)
                  {
                    goto LABEL_395;
                  }

                  goto LABEL_374;
                }
              }

              a8.i64[0] = 0;
              if (v350 % v194 < v193)
              {
                goto LABEL_387;
              }

              goto LABEL_373;
            }

LABEL_318:
            ++v353;
            v352 = (v352 + 12);
            v344 += v13;
          }

          while (v353 != v611);
          v347 = v573 + 1;
          v352 = (v564 + v562);
          v344 = &v568[v559];
        }

        while (v573 + 1 != v609);
        v344 = &v555[v336 * v339];
        v343 = v547 + 4;
        v345 = (v551 + v538);
      }

      while (v547 + 4 < v541);
      v403 = v523;
      v335 = v535;
      if (v523 < v14)
      {
LABEL_407:
        if (!v609)
        {
          goto LABEL_306;
        }

        v593 = v403 + v335 * v14;
        v404 = v598;
        if (!v611)
        {
          goto LABEL_306;
        }

        v405 = 0;
        v587 = v593 + 1;
        v406 = v403 | 1;
        v584 = v593 + 2;
        v407 = v403 | 2;
        v579 = v593 + 3;
        v408 = v403 | 3;
        v409 = &v344[v608];
        v410 = &v344[v520];
        v411 = &v344[v517];
LABEL_413:
        v574 = v405;
        v412 = v344;
        v413 = v345;
        v414 = 0;
        v548 = v411;
        v552 = v345;
        v565 = v410;
        v569 = v409;
        v556 = v412;
LABEL_418:
        if (v13 < 4)
        {
          v417 = 0;
          v416 = v413;
          v418 = v412;
          if (v13 > 0)
          {
            goto LABEL_456;
          }

          goto LABEL_417;
        }

        if (v404 == 1)
        {
          v415 = 0;
          v416 = v413;
          while (1)
          {
            if (v406 >= v14)
            {
              a8 = 0uLL;
              if (v407 >= v14)
              {
LABEL_425:
                a11 = 0uLL;
                if (v408 >= v14)
                {
                  goto LABEL_429;
                }

                goto LABEL_421;
              }
            }

            else
            {
              a7.i32[0] = *&v409[v415];
              a8 = vmovl_u8(*a7.i8);
              if (v407 >= v14)
              {
                goto LABEL_425;
              }
            }

            a11.i32[0] = *&v410[v415];
            a11 = vmovl_u8(*a11.i8);
            if (v408 >= v14)
            {
LABEL_429:
              v11 = 0uLL;
              goto LABEL_422;
            }

LABEL_421:
            v11.i32[0] = *&v411[v415];
            v11 = vmovl_u8(*v11.i8);
LABEL_422:
            v12.i32[0] = *&v412[v415];
            a7 = vmovl_u8(*v12.i8);
            a9 = a11;
            a10 = v11;
            *v12.i8 = vqtbl4_s8(*a7.i8, 0x3222120230201000);
            a11.i16[3] = v11.i16[2];
            a7.i32[0] = vzip2_s16(*a7.i8, *a8.i8).u32[0];
            a7.i32[1] = a11.i32[1];
            *v416 = *v12.i8;
            *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
            v416[1].i32[0] = a7.i32[0];
            v415 += 3;
            v416 = (v416 + v338);
            if (v415 >= v341)
            {
              v418 = &v412[v415];
              v336 = 4;
              v417 = 3 * ((v13 - 4) / 3) + 3;
              if (v603 >= v13)
              {
                goto LABEL_417;
              }

LABEL_456:
              if (v404 == 1)
              {
                v430 = v417 + 1;
                if (v417 + 1 >= v13)
                {
                  v431 = 0;
                  v432 = v417 + 2;
                  if (v417 + 2 < v13)
                  {
                    goto LABEL_470;
                  }

LABEL_459:
                  v433 = 0;
                  v434 = v417 + 3;
                  if (v417 + 3 >= v13)
                  {
                    goto LABEL_460;
                  }

LABEL_471:
                  v435 = v418[3];
                  v436 = &v418[v337];
                  if (v406 < v610)
                  {
                    goto LABEL_472;
                  }

LABEL_461:
                  v437 = 0;
                  v438 = *v418;
                  v439 = &v436[v337];
                  if (v407 < v610)
                  {
                    goto LABEL_493;
                  }

LABEL_462:
                  a9 = 0uLL;
                  if (v408 < v610)
                  {
                    goto LABEL_502;
                  }

LABEL_414:
                  v11 = 0uLL;
                  v14 = v610;
                  goto LABEL_415;
                }

                v431 = v418[1];
                v432 = v417 + 2;
                if (v417 + 2 >= v13)
                {
                  goto LABEL_459;
                }

LABEL_470:
                v433 = v418[2];
                v434 = v417 + 3;
                if (v417 + 3 < v13)
                {
                  goto LABEL_471;
                }

LABEL_460:
                v435 = 0;
                v436 = &v418[v337];
                if (v406 >= v610)
                {
                  goto LABEL_461;
                }

LABEL_472:
                if (v430 >= v13)
                {
                  v443 = 0;
                  if (v432 < v13)
                  {
                    goto LABEL_490;
                  }

LABEL_474:
                  v444 = 0;
                  if (v434 >= v13)
                  {
                    goto LABEL_475;
                  }

LABEL_491:
                  v445 = v436[3];
                }

                else
                {
                  v443 = v436[1];
                  if (v432 >= v13)
                  {
                    goto LABEL_474;
                  }

LABEL_490:
                  v444 = v436[2];
                  if (v434 < v13)
                  {
                    goto LABEL_491;
                  }

LABEL_475:
                  v445 = 0;
                }

                LOBYTE(v437) = *v436;
                BYTE2(v437) = v443;
                BYTE4(v437) = v444;
                BYTE6(v437) = v445;
                v438 = *v418;
                v439 = &v436[v337];
                if (v407 >= v610)
                {
                  goto LABEL_462;
                }

LABEL_493:
                if (v430 >= v13)
                {
                  v453 = 0;
                  if (v432 < v13)
                  {
                    goto LABEL_499;
                  }

LABEL_495:
                  v454 = 0;
                  if (v434 >= v13)
                  {
                    goto LABEL_496;
                  }

LABEL_500:
                  v455 = v439[3];
                }

                else
                {
                  v453 = v439[1];
                  if (v432 >= v13)
                  {
                    goto LABEL_495;
                  }

LABEL_499:
                  v454 = v439[2];
                  if (v434 < v13)
                  {
                    goto LABEL_500;
                  }

LABEL_496:
                  v455 = 0;
                }

                a9.i8[0] = *v439;
                a9.i16[1] = v453;
                a9.i16[2] = v454;
                a9.i16[3] = v455;
                if (v408 >= v610)
                {
                  goto LABEL_414;
                }

LABEL_502:
                v456 = &v439[v337];
                if (v430 >= v13)
                {
                  v457 = 0;
                  if (v432 < v13)
                  {
                    goto LABEL_507;
                  }

LABEL_504:
                  v458 = 0;
                  v14 = v610;
                  if (v434 >= v13)
                  {
                    goto LABEL_505;
                  }

LABEL_508:
                  v459 = v456[3];
                }

                else
                {
                  v457 = v456[1];
                  if (v432 >= v13)
                  {
                    goto LABEL_504;
                  }

LABEL_507:
                  v458 = v456[2];
                  v14 = v610;
                  if (v434 < v13)
                  {
                    goto LABEL_508;
                  }

LABEL_505:
                  v459 = 0;
                }

                v11.i8[0] = *v456;
                v11.i16[1] = v457;
                v11.i16[2] = v458;
                v11.i16[3] = v459;
LABEL_415:
                a11.i16[2] = v433;
                a11.i16[3] = v435;
                a8.i8[0] = v438;
                a8.i8[1] = v431;
                a8.i8[2] = v433;
                a8.i8[3] = v435;
                a8.i8[4] = v437;
                a8.i8[5] = BYTE2(v437);
                a8.i8[6] = BYTE4(v437);
                a8.i8[7] = BYTE6(v437);
                v336 = 4;
                v404 = v598;
LABEL_416:
                a10 = v11;
                *v416 = vqtbl3_s8(*a8.i8, 0x2212050120100400);
                a7 = vqtbl3q_s8(*a8.i8, xmmword_239D7E360);
                *a7.i8 = vmovn_s16(a7);
                v416[1].i32[0] = a7.i32[0];
LABEL_417:
                ++v414;
                v413 = (v413 + 12);
                v412 += v13;
                v409 += v13;
                v410 += v13;
                v411 += v13;
                if (v414 == v611)
                {
                  v405 = v574 + 1;
                  v345 = (v552 + v562);
                  v344 = &v556[v559];
                  v409 = &v569[v559];
                  v410 = &v565[v559];
                  v411 = &v548[v559];
                  if (v574 + 1 == v609)
                  {
                    goto LABEL_306;
                  }

                  goto LABEL_413;
                }

                goto LABEL_418;
              }

              if (v593 % v194 >= v193)
              {
                v446 = 0;
                v336 = 0;
                if (v587 % v194 < v193)
                {
                  goto LABEL_484;
                }
              }

              else
              {
                if (v417 + 1 >= v13)
                {
                  v440 = 0;
                  if (v417 + 2 < v13)
                  {
                    goto LABEL_481;
                  }

LABEL_467:
                  v441 = 0;
                  if (v417 + 3 >= v13)
                  {
                    goto LABEL_468;
                  }

LABEL_482:
                  v442 = v418[3];
                }

                else
                {
                  v440 = v418[1];
                  if (v417 + 2 >= v13)
                  {
                    goto LABEL_467;
                  }

LABEL_481:
                  v441 = v418[2];
                  if (v417 + 3 < v13)
                  {
                    goto LABEL_482;
                  }

LABEL_468:
                  v442 = 0;
                }

                a7.i8[0] = *v418;
                a7.i16[1] = v440;
                a7.i16[2] = v441;
                a7.i16[3] = v442;
                *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                v446 = a7.i32[0];
                v418 += v337;
                v336 = 1;
                if (v587 % v194 < v193)
                {
LABEL_484:
                  if (v406 >= v14)
                  {
                    v447 = 0;
                  }

                  else
                  {
                    if (v417 + 1 >= v13)
                    {
                      v450 = 0;
                      if (v417 + 2 < v13)
                      {
                        goto LABEL_511;
                      }

LABEL_487:
                      v451 = 0;
                      if (v417 + 3 >= v13)
                      {
                        goto LABEL_488;
                      }

LABEL_512:
                      v452 = v418[3];
                    }

                    else
                    {
                      v450 = v418[1];
                      if (v417 + 2 >= v13)
                      {
                        goto LABEL_487;
                      }

LABEL_511:
                      v451 = v418[2];
                      if (v417 + 3 < v13)
                      {
                        goto LABEL_512;
                      }

LABEL_488:
                      v452 = 0;
                    }

                    a7.i8[0] = *v418;
                    a7.i16[1] = v450;
                    a7.i16[2] = v451;
                    a7.i16[3] = v452;
                    *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                    v447 = a7.u32[0] << 32;
                  }

                  v418 += v337;
                  ++v336;
                  if (v584 % v194 < v193)
                  {
LABEL_515:
                    if (v407 >= v610)
                    {
                      v448 = 0;
                    }

                    else
                    {
                      if (v417 + 1 >= v13)
                      {
                        v460 = 0;
                        if (v417 + 2 < v13)
                        {
                          goto LABEL_522;
                        }

LABEL_518:
                        v461 = 0;
                        if (v417 + 3 >= v13)
                        {
                          goto LABEL_519;
                        }

LABEL_523:
                        v462 = v418[3];
                      }

                      else
                      {
                        v460 = v418[1];
                        if (v417 + 2 >= v13)
                        {
                          goto LABEL_518;
                        }

LABEL_522:
                        v461 = v418[2];
                        if (v417 + 3 < v13)
                        {
                          goto LABEL_523;
                        }

LABEL_519:
                        v462 = 0;
                      }

                      a7.i8[0] = *v418;
                      a7.i16[1] = v460;
                      a7.i16[2] = v461;
                      a7.i16[3] = v462;
                      *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                      v448 = a7.i32[0];
                    }

                    v418 += v337;
                    ++v336;
                    if (v579 % v194 < v193)
                    {
LABEL_526:
                      if (v408 >= v610)
                      {
                        v449 = 0;
                      }

                      else
                      {
                        if (v417 + 1 >= v13)
                        {
                          v463 = 0;
                          if (v417 + 2 < v13)
                          {
                            goto LABEL_533;
                          }

LABEL_529:
                          v464 = 0;
                          if (v417 + 3 >= v13)
                          {
                            goto LABEL_530;
                          }

LABEL_534:
                          v465 = v418[3];
                        }

                        else
                        {
                          v463 = v418[1];
                          if (v417 + 2 >= v13)
                          {
                            goto LABEL_529;
                          }

LABEL_533:
                          v464 = v418[2];
                          if (v417 + 3 < v13)
                          {
                            goto LABEL_534;
                          }

LABEL_530:
                          v465 = 0;
                        }

                        a7.i8[0] = *v418;
                        a7.i16[1] = v463;
                        a7.i16[2] = v464;
                        a7.i16[3] = v465;
                        *a7.i8 = vuzp1_s8(*a7.i8, 0xD0905010C080400);
                        v449 = a7.u32[0] << 32;
                        v404 = v598;
                      }

                      ++v336;
LABEL_537:
                      a7.i32[0] = v449 | v448;
                      *a9.i8 = vzip1_s8(*a7.i8, 0xD0905010C080400);
                      a7.i32[0] = HIDWORD(v449);
                      *v11.i8 = vzip1_s8(*a7.i8, 0xD0905010C080400);
                      a8.i64[0] = v447 | v446;
                      v14 = v610;
                      goto LABEL_416;
                    }

LABEL_479:
                    v449 = 0;
                    goto LABEL_537;
                  }

LABEL_478:
                  v448 = 0;
                  if (v579 % v194 < v193)
                  {
                    goto LABEL_526;
                  }

                  goto LABEL_479;
                }
              }

              v447 = 0;
              if (v584 % v194 < v193)
              {
                goto LABEL_515;
              }

              goto LABEL_478;
            }
          }
        }

        v419 = 0;
        v420 = v587 % v194;
        v421 = v584 % v194;
        v422 = v579 % v194;
        v423 = v412;
        v416 = v413;
        while (2)
        {
          v426 = &v412[v419];
          if (v593 % v194 >= v193)
          {
            v427 = 0;
            v336 = 0;
            if (v420 < v193)
            {
              goto LABEL_441;
            }

LABEL_437:
            v428 = 0;
            if (v421 >= v193)
            {
              goto LABEL_438;
            }

LABEL_445:
            if (v407 >= v610)
            {
              v429 = 0;
              v426 += v608;
              ++v336;
              if (v422 < v193)
              {
                goto LABEL_449;
              }
            }

            else
            {
              v429 = *v426;
              v426 += v608;
              ++v336;
              if (v422 < v193)
              {
                goto LABEL_449;
              }
            }
          }

          else
          {
            v427 = *v426;
            v426 = &v423[v608];
            v336 = 1;
            if (v420 >= v193)
            {
              goto LABEL_437;
            }

LABEL_441:
            if (v406 >= v610)
            {
              v428 = 0;
              v426 += v608;
              ++v336;
              if (v421 < v193)
              {
                goto LABEL_445;
              }
            }

            else
            {
              v428 = *v426 << 32;
              v426 += v608;
              ++v336;
              if (v421 < v193)
              {
                goto LABEL_445;
              }
            }

LABEL_438:
            v429 = 0;
            if (v422 < v193)
            {
LABEL_449:
              if (v408 >= v610)
              {
                v424 = 0;
              }

              else
              {
                v424 = *v426 << 32;
              }

              ++v336;
LABEL_434:
              v425 = v424 | v429;
              a8.i64[0] = v428 | v427;
              a8.i64[1] = __PAIR64__(HIDWORD(v424), v425);
              a7 = vqtbl1q_s8(a8, xmmword_239D7E340);
              a9 = vqtbl2q_s8(*a7.i8, xmmword_239D7E350);
              *v416 = *a9.i8;
              a7.i16[0] = a8.u8[2];
              a7.i16[1] = BYTE6(v428);
              a7.i16[2] = BYTE2(v425);
              a7.i16[3] = BYTE6(v424);
              *a7.i8 = vmovn_s16(a7);
              v416[1].i32[0] = a7.i32[0];
              v419 += 3;
              v416 = (v416 + v338);
              v423 += 3;
              if (v419 >= v341)
              {
                v418 = &v412[v419];
                v417 = 3 * ((v13 - 4) / 3) + 3;
                v14 = v610;
                v404 = v598;
                if (v603 < v13)
                {
                  goto LABEL_456;
                }

                goto LABEL_417;
              }

              continue;
            }
          }

          break;
        }

        v424 = 0;
        goto LABEL_434;
      }

LABEL_306:
      v335 = v535 + 1;
      result = (result + v529);
      a2 += v526;
      v342 = &v532[v529];
      v339 = v609 * v611 * v13;
      if (v535 + 1 == v503)
      {
        return result;
      }
    }
  }

  if (!v15)
  {
    if (!v503)
    {
      return result;
    }

    v275 = 0;
    v276 = v13 == 0;
    if (!v609)
    {
      v276 = 1;
    }

    v277 = v611 == 0;
    if (!v611)
    {
      v276 = 1;
    }

    v597 = v276;
    v278 = v609 * v611;
    if (!v609)
    {
      v277 = 1;
    }

    v591 = v277;
    v279 = v14 - 3;
    v280 = -(v611 * v14);
    v281 = -v14;
    v282 = 3 * v278;
    v283 = 3 * v278 * v14;
    v602 = v14 * v13 * v278;
    v585 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v582 = v14 * (v278 - 1) + 3;
    v284 = &a2[v582];
    v285 = v14 * (2 * v278 - 1);
    v286 = &a2[v285 + 3];
    v287 = v14 * (v282 - 1);
    v288 = &a2[v287];
    v289 = &a2[v285 + 1];
    v577 = v287 + 6;
    v572 = v285 + 6;
    while (1)
    {
      v607 = v284;
      if (v14 < 4)
      {
        v321 = 0;
        v294 = a2;
        if (!v13)
        {
          goto LABEL_205;
        }
      }

      else
      {
        if (v597)
        {
          goto LABEL_205;
        }

        v290 = 0;
        v291 = v289;
        v292 = v288;
        v293 = v286;
        v294 = a2;
        do
        {
          v295 = 0;
          v296 = v291;
          v297 = v292;
          v298 = v293;
          v299 = v284;
          do
          {
            v300 = v295 + 3;
            if (v295 <= 0xFFFFFFFFFFFFFFFCLL)
            {
              if (v295 + 1 >= v300)
              {
                v307 = 0;
                v308 = v299;
                do
                {
                  v309 = v611;
                  v310 = v308;
                  do
                  {
                    result->i8[0] = *(v310 - 3);
                    result->i8[1] = *(v310 - 2);
                    result->i8[2] = *(v310 - 1);
                    result->i8[3] = *v310;
                    result = (result + 4);
                    v310 += v281;
                    --v309;
                  }

                  while (v309);
                  ++v307;
                  v308 += v280;
                }

                while (v307 != v609);
              }

              else if (v295 + 1 >= v13)
              {
                v311 = 0;
                v312 = v299;
                do
                {
                  v313 = v611;
                  v314 = v312;
                  do
                  {
                    result->i8[0] = *(v314 - 3);
                    result->i8[1] = *(v314 - 2);
                    result->i8[2] = *(v314 - 1);
                    result->i8[3] = *v314;
                    result = (result + 12);
                    v314 += v281;
                    --v313;
                  }

                  while (v313);
                  ++v311;
                  v312 += v280;
                }

                while (v311 != v609);
              }

              else if (v295 + 2 >= v13)
              {
                v315 = 0;
                v316 = v298;
                v317 = v299;
                do
                {
                  v318 = v316;
                  v319 = v317;
                  v320 = v611;
                  do
                  {
                    result->i8[0] = *(v319 - 3);
                    result->i8[1] = *(v319 - 2);
                    result->i8[2] = *(v319 - 1);
                    result->i8[3] = *v319;
                    result->i8[4] = *(v318 - 3);
                    result->i8[5] = *(v318 - 2);
                    result->i8[6] = *(v318 - 1);
                    result->i8[7] = *v318;
                    result = (result + 12);
                    v319 += v281;
                    v318 += v281;
                    --v320;
                  }

                  while (v320);
                  ++v315;
                  v317 += v280;
                  v316 += v280;
                }

                while (v315 != v609);
              }

              else
              {
                v301 = 0;
                v302 = v296;
                v303 = v297;
                v304 = v299;
                do
                {
                  v305 = 0;
                  v306 = v611;
                  do
                  {
                    result->i8[0] = v304[v305 - 3];
                    result->i8[1] = v304[v305 - 2];
                    result->i8[2] = v304[v305 - 1];
                    result->i8[3] = v304[v305];
                    result->i8[4] = *(v302 + v305 - 1);
                    result->i8[5] = *(v302 + v305);
                    result->i8[6] = *(v302 + v305 + 1);
                    result->i8[7] = *(v302 + v305 + 2);
                    result[1].i8[0] = v303[v305];
                    result[1].i8[1] = v303[v305 + 1];
                    result[1].i8[2] = v303[v305 + 2];
                    v14 = v610;
                    result[1].i8[3] = v303[v305 + 3];
                    result = (result + 12);
                    v305 -= v610;
                    --v306;
                  }

                  while (v306);
                  ++v301;
                  v304 += v280;
                  v303 += v280;
                  v302 += v280;
                }

                while (v301 != v609);
              }
            }

            v299 += v283;
            v298 += v283;
            v297 += v283;
            v296 += v283;
            v295 = v300;
          }

          while (v300 < v13);
          v290 += 4;
          v294 += 4;
          v284 += 4;
          v293 += 4;
          v292 += 4;
          v291 += 4;
        }

        while (v290 < v279);
        v321 = v585;
        if (!v13)
        {
          goto LABEL_205;
        }
      }

      v322 = v14 - v321;
      if (v14 > v321 && !v591)
      {
        v323 = 0;
        v324 = &v294[v577];
        v325 = &v294[v572];
        v326 = &v294[v582];
        while (1)
        {
          v327 = v323 + 3;
          if (v323 <= 0xFFFFFFFFFFFFFFFCLL)
          {
            break;
          }

LABEL_242:
          v324 += v283;
          v325 += v283;
          v326 += v283;
          v323 += 3;
          if (v327 >= v13)
          {
            goto LABEL_205;
          }
        }

        v328 = 0;
        v329 = v323 + 1;
        v330 = v326;
        v331 = v325;
        v332 = v324;
LABEL_246:
        v333 = 0;
        v334 = v611;
        while (v322 <= 3)
        {
          switch(v322)
          {
            case 1:
              goto LABEL_270;
            case 2:
              goto LABEL_269;
            case 3:
              goto LABEL_268;
          }

LABEL_271:
          if (v329 < v327)
          {
            if (v329 >= v13)
            {
              goto LABEL_292;
            }

            if (v322 <= 3)
            {
              switch(v322)
              {
                case 1:
                  goto LABEL_291;
                case 2:
                  goto LABEL_290;
                case 3:
                  goto LABEL_289;
              }
            }

            else
            {
              if (v322 > 5)
              {
                if (v322 != 6)
                {
                  if (v322 != 7)
                  {
                    goto LABEL_292;
                  }

                  result[1].i8[2] = v331[v333];
                }

                result[1].i8[1] = v331[v333 - 1];
                goto LABEL_287;
              }

              if (v322 != 4)
              {
LABEL_287:
                result[1].i8[0] = v331[v333 - 2];
              }

              result->i8[7] = v331[v333 - 3];
LABEL_289:
              result->i8[6] = v331[v333 - 4];
LABEL_290:
              result->i8[5] = v331[v333 - 5];
LABEL_291:
              result->i8[4] = v331[v333 - 6];
            }

LABEL_292:
            if (v323 + 2 < v13)
            {
              if (v322 <= 3)
              {
                switch(v322)
                {
                  case 1:
                    goto LABEL_252;
                  case 2:
                    goto LABEL_251;
                  case 3:
                    goto LABEL_250;
                }
              }

              else
              {
                if (v322 > 5)
                {
                  if (v322 != 6)
                  {
                    if (v322 != 7)
                    {
                      goto LABEL_253;
                    }

                    result[1].i8[6] = v332[v333];
                  }

                  result[1].i8[5] = v332[v333 - 1];
                  goto LABEL_248;
                }

                if (v322 != 4)
                {
LABEL_248:
                  result[1].i8[4] = v332[v333 - 2];
                }

                result[1].i8[3] = v332[v333 - 3];
LABEL_250:
                result[1].i8[2] = v332[v333 - 4];
LABEL_251:
                result[1].i8[1] = v332[v333 - 5];
LABEL_252:
                result[1].i8[0] = v332[v333 - 6];
              }
            }

LABEL_253:
            result = (result + 12);
            v333 -= v14;
            if (!--v334)
            {
              goto LABEL_245;
            }

            continue;
          }

          result = (result + 4);
          v333 -= v14;
          if (!--v334)
          {
LABEL_245:
            ++v328;
            v332 += v280;
            v331 += v280;
            v330 += v280;
            if (v328 == v609)
            {
              goto LABEL_242;
            }

            goto LABEL_246;
          }
        }

        if (v322 > 5)
        {
          if (v322 != 6)
          {
            if (v322 != 7)
            {
              goto LABEL_271;
            }

            result->i8[6] = v330[v333 + 3];
          }

          result->i8[5] = v330[v333 + 2];
LABEL_266:
          result->i8[4] = v330[v333 + 1];
        }

        else if (v322 != 4)
        {
          goto LABEL_266;
        }

        result->i8[3] = v330[v333];
LABEL_268:
        result->i8[2] = v330[v333 - 1];
LABEL_269:
        result->i8[1] = v330[v333 - 2];
LABEL_270:
        result->i8[0] = v330[v333 - 3];
        goto LABEL_271;
      }

LABEL_205:
      ++v275;
      a2 += v602;
      v284 = &v607[v602];
      v286 += v602;
      v288 += v602;
      v289 += v602;
      if (v275 == v503)
      {
        return result;
      }
    }
  }

  if (v503)
  {
    v16 = 0;
    v17 = v609 * v611;
    if (v609)
    {
      v18 = v13 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v17 * v14;
    v20 = v611 == 0;
    if (!v611)
    {
      v18 = 1;
    }

    v489 = v18;
    v21 = 3 * v17;
    if (!v609)
    {
      v20 = 1;
    }

    v488 = v20;
    v506 = v14 - 3;
    v22 = v611 - 1;
    v505 = 4 * v17;
    v23 = 4 * v17 - 1;
    v476 = 6 * v17 - 1;
    v475 = v17 - 1;
    v473 = v17 * (v14 + 7) - 1;
    v472 = v17 * (v14 + 6) - 1;
    v512 = 3 * v19;
    v471 = v17 * (v14 + 5) - 1;
    v469 = v17 * (2 * v14 + 7) - 1;
    v470 = ~v17 + 8 * v17;
    v468 = v17 * (2 * v14 + 6) - 1;
    v467 = v17 * (2 * v14 + 5) - 1;
    v490 = v14 * v13 * v17;
    v466 = v23 + v17;
    v511 = v21 * v14;
    v24 = -v611;
    v486 = v17 * (v14 + 4) - 1;
    v487 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v480 = v23;
    v502 = &a2[v23];
    v477 = 2 * v17 - 1;
    v478 = v21 - 1;
    v501 = &a2[v21 - 1];
    v500 = &a2[v477];
    v499 = &a2[v486];
    v484 = v17 * (v14 + 2) - 1;
    v485 = v17 * (v14 + 3) - 1;
    v498 = &a2[v485];
    v497 = &a2[v484];
    v474 = v17 - 1 + v19;
    v496 = &a2[v474];
    v482 = v17 * (2 * v14 + 3) - 1;
    v483 = v17 * (2 * v14 + 4) - 1;
    v495 = &a2[v483];
    v494 = &a2[v482];
    v481 = v17 * (2 * v14 + 2) - 1;
    v479 = v17 * ((2 * v14) | 1) - 1;
    v492 = &a2[v479];
    v493 = &a2[v481];
    do
    {
      v491 = v16;
      if (v14 < 4)
      {
        v155 = 0;
        v37 = a2;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v489)
        {
          goto LABEL_12;
        }

        v25 = 0;
        v26 = v492;
        v27 = v493;
        v28 = v494;
        v29 = v495;
        v31 = v496;
        v30 = v497;
        v32 = v498;
        v33 = v499;
        v34 = v500;
        v35 = v501;
        v36 = v502;
        v37 = a2;
        do
        {
          v513 = v36;
          v514 = v35;
          v515 = v34;
          v518 = v33;
          v521 = v32;
          v524 = v30;
          v527 = v31;
          v530 = v29;
          v533 = v28;
          v508 = v26;
          v509 = v25;
          v38 = 0;
          v507 = v27;
          v39 = v27;
          v40 = v28;
          v41 = v31;
          v42 = v30;
          v43 = v32;
          v44 = v33;
          v45 = v34;
          v46 = v35;
          v47 = v36;
          v510 = v37;
          v48 = v37;
          v49 = v29;
          do
          {
            v580 = v26;
            v575 = v39;
            v570 = v40;
            v566 = v49;
            v563 = v41;
            v557 = v43;
            v560 = v42;
            v549 = v45;
            v553 = v44;
            v542 = v47;
            v545 = v46;
            v536 = v38 + 3;
            v539 = v48;
            if (v38 <= 0xFFFFFFFFFFFFFFFCLL)
            {
              v50 = &v48[(v609 - 1) * v611];
              if (v38 + 1 >= v38 + 3)
              {
                v94 = 0;
                v95 = v45;
                v96 = v46;
                v97 = v47;
                do
                {
                  v98 = &v50[v22];
                  v99 = v95;
                  v100 = v96;
                  v101 = v97;
                  v102 = v611;
                  do
                  {
                    v104 = *v98--;
                    v103 = v104;
                    v106 = *v99--;
                    v105 = v106;
                    v108 = *v100--;
                    v107 = v108;
                    v109 = *v101--;
                    a4.i16[0] = v103;
                    a4.i16[1] = v105;
                    a4.i16[2] = v107;
                    a4.i16[3] = v109;
                    result->i32[0] = vmovn_s16(a4).u32[0];
                    result = (result + 4);
                    --v102;
                  }

                  while (v102);
                  ++v94;
                  v50 -= v611;
                  v97 -= v611;
                  v96 -= v611;
                  v95 -= v611;
                }

                while (v94 != v609);
              }

              else if (v38 + 1 >= v13)
              {
                v110 = 0;
                v111 = v45;
                v112 = v46;
                v113 = v47;
                do
                {
                  v114 = &v50[v22];
                  v115 = v111;
                  v116 = v112;
                  v117 = v113;
                  v118 = v611;
                  do
                  {
                    v120 = *v114--;
                    v119 = v120;
                    v122 = *v115--;
                    v121 = v122;
                    v124 = *v116--;
                    v123 = v124;
                    v125 = *v117--;
                    a4.i16[0] = v119;
                    a4.i16[1] = v121;
                    a4.i16[2] = v123;
                    a4.i16[3] = v125;
                    result->i32[0] = vmovn_s16(a4).u32[0];
                    result = (result + 12);
                    --v118;
                  }

                  while (v118);
                  ++v110;
                  v50 -= v611;
                  v113 -= v611;
                  v112 -= v611;
                  v111 -= v611;
                }

                while (v110 != v609);
              }

              else if (v38 + 2 >= v13)
              {
                v126 = 0;
                v127 = v45;
                v128 = v46;
                v129 = v47;
                v130 = v41;
                v131 = v42;
                do
                {
                  v132 = &v50[v22];
                  v133 = v127;
                  v134 = v128;
                  v135 = v129;
                  v136 = v130;
                  v137 = v131;
                  v138 = v43;
                  v139 = v44;
                  v140 = v611;
                  do
                  {
                    v142 = *v132--;
                    v141 = v142;
                    v144 = *v133--;
                    v143 = v144;
                    v146 = *v134--;
                    v145 = v146;
                    v147 = *v135--;
                    a4.i16[0] = v141;
                    a4.i16[1] = v143;
                    a4.i16[2] = v145;
                    a4.i16[3] = v147;
                    result->i32[0] = vmovn_s16(a4).u32[0];
                    v149 = *v136--;
                    v148 = v149;
                    v151 = *v137--;
                    v150 = v151;
                    v153 = *v138--;
                    v152 = v153;
                    v154 = *v139--;
                    a4.i16[0] = v148;
                    a4.i16[1] = v150;
                    a4.i16[2] = v152;
                    a4.i16[3] = v154;
                    result->i32[1] = vmovn_s16(a4).u32[0];
                    result = (result + 12);
                    --v140;
                  }

                  while (v140);
                  ++v126;
                  v50 -= v611;
                  v44 -= v611;
                  v43 -= v611;
                  v131 -= v611;
                  v130 -= v611;
                  v129 -= v611;
                  v128 -= v611;
                  v127 -= v611;
                }

                while (v126 != v609);
              }

              else
              {
                v51 = 0;
                v52 = v47;
                v53 = v41;
                v54 = v42;
                v55 = v44;
                v56 = v26;
                v57 = v39;
                v58 = v40;
                v59 = v49;
                do
                {
                  v604 = v51;
                  v60 = &v50[v22];
                  v599 = v45;
                  v61 = v45;
                  v594 = v46;
                  v62 = v46;
                  v588 = v52;
                  v63 = v52;
                  v64 = v53;
                  v65 = v54;
                  v66 = v43;
                  v67 = v55;
                  v68 = v56;
                  v69 = v57;
                  v70 = v58;
                  v71 = v59;
                  v72 = v611;
                  do
                  {
                    v74 = *v60--;
                    v73 = v74;
                    v76 = *v61--;
                    v75 = v76;
                    v78 = *v62--;
                    v77 = v78;
                    v79 = *v63--;
                    a4.i16[0] = v73;
                    a4.i16[1] = v75;
                    a4.i16[2] = v77;
                    a4.i16[3] = v79;
                    result->i32[0] = vmovn_s16(a4).u32[0];
                    v81 = *v64--;
                    v80 = v81;
                    v83 = *v65--;
                    v82 = v83;
                    v85 = *v66--;
                    v84 = v85;
                    v86 = *v67--;
                    a4.i16[0] = v80;
                    a4.i16[1] = v82;
                    a4.i16[2] = v84;
                    a4.i16[3] = v86;
                    result->i32[1] = vmovn_s16(a4).u32[0];
                    v88 = *v68--;
                    v87 = v88;
                    v90 = *v69--;
                    v89 = v90;
                    v92 = *v70--;
                    v91 = v92;
                    v93 = *v71--;
                    a4.i16[0] = v87;
                    a4.i16[1] = v89;
                    a4.i16[2] = v91;
                    a4.i16[3] = v93;
                    result[1].i32[0] = vmovn_s16(a4).u32[0];
                    result = (result + 12);
                    --v72;
                  }

                  while (v72);
                  v51 = v604 + 1;
                  v50 -= v611;
                  v59 -= v611;
                  v58 -= v611;
                  v57 -= v611;
                  v56 -= v611;
                  v55 -= v611;
                  v43 -= v611;
                  v54 -= v611;
                  v53 -= v611;
                  v52 = &v588[-v611];
                  v46 = &v594[-v611];
                  v45 = &v599[-v611];
                  v22 = v611 - 1;
                }

                while (v604 + 1 != v609);
              }
            }

            v48 = &v539[v511];
            v47 = &v542[v512];
            v46 = &v545[v512];
            v45 = &v549[v512];
            v44 = &v553[v512];
            v43 = &v557[v512];
            v42 = &v560[v512];
            v41 = &v563[v512];
            v49 = &v566[v512];
            v40 = &v570[v512];
            v39 = &v575[v512];
            v26 = &v580[v512];
            v38 = v536;
            v14 = v610;
          }

          while (v536 < v13);
          v25 = v509 + 4;
          v37 = &v510[v505];
          v36 = &v513[v505];
          v35 = &v514[v505];
          v34 = &v515[v505];
          v33 = &v518[v505];
          v32 = &v521[v505];
          v30 = &v524[v505];
          v31 = &v527[v505];
          v29 = &v530[v505];
          v28 = &v533[v505];
          v27 = &v507[v505];
          v26 = &v508[v505];
        }

        while (v509 + 4 < v506);
        v155 = v487;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v156 = v14 - v155;
      if (v14 > v155 && !v488)
      {
        v157 = 0;
        v581 = &v37[v470];
        v158 = &v37[v476];
        v159 = &v37[v466];
        v160 = &v37[v480];
        v161 = &v37[v478];
        v162 = &v37[v477];
        v163 = &v37[v473];
        v164 = &v37[v472];
        v165 = &v37[v471];
        v166 = &v37[v486];
        v167 = &v37[v485];
        v168 = &v37[v484];
        v169 = &v37[v474];
        v170 = &v37[v469];
        v171 = &v37[v467];
        v172 = &v37[v483];
        v173 = &v37[v482];
        v174 = &v37[v481];
        v175 = &v37[v479];
        v176 = &v37[v475];
        v177 = &v37[v468];
        v178 = v173;
        v179 = v175;
        v180 = v170;
        v181 = v172;
        v182 = v174;
        while (1)
        {
          v183 = v157 + 3;
          v576 = v159;
          v571 = v160;
          v567 = v161;
          v558 = v164;
          v561 = v163;
          v550 = v166;
          v554 = v165;
          v543 = v168;
          v546 = v167;
          v537 = v180;
          v540 = v169;
          v531 = v171;
          v534 = v177;
          v525 = v178;
          v528 = v181;
          v519 = v179;
          v522 = v182;
          v516 = v176;
          if (v157 <= 0xFFFFFFFFFFFFFFFCLL)
          {
            break;
          }

LABEL_49:
          v581 += v512;
          v158 += v512;
          v159 = &v576[v512];
          v160 = &v571[v512];
          v161 = &v567[v512];
          v162 += v512;
          v163 = &v561[v512];
          v164 = &v558[v512];
          v165 = &v554[v512];
          v166 = &v550[v512];
          v167 = &v546[v512];
          v168 = &v543[v512];
          v169 = &v540[v512];
          v180 = &v537[v512];
          v177 = &v534[v512];
          v171 = &v531[v512];
          v181 = &v528[v512];
          v178 = &v525[v512];
          v182 = &v522[v512];
          v179 = &v519[v512];
          v176 = &v516[v512];
          v157 += 3;
          if (v183 >= v13)
          {
            goto LABEL_12;
          }
        }

        v184 = 0;
        v185 = v157 + 1;
        v605 = v177;
        v595 = v180;
        v186 = v166;
        v600 = v164;
        v589 = v163;
        v187 = v162;
        v188 = v158;
        v189 = v581;
LABEL_53:
        v190 = 0;
        while (v156 <= 3)
        {
          switch(v156)
          {
            case 1:
              goto LABEL_78;
            case 2:
              goto LABEL_77;
            case 3:
              goto LABEL_76;
          }

LABEL_79:
          if (v185 < v183)
          {
            if (v185 >= v13)
            {
              goto LABEL_100;
            }

            if (v156 <= 3)
            {
              switch(v156)
              {
                case 1:
                  goto LABEL_99;
                case 2:
                  goto LABEL_98;
                case 3:
                  goto LABEL_97;
              }
            }

            else
            {
              if (v156 > 5)
              {
                if (v156 != 6)
                {
                  if (v156 != 7)
                  {
                    goto LABEL_100;
                  }

                  result[1].i8[2] = v589[v190];
                }

                result[1].i8[1] = v600[v190];
                goto LABEL_95;
              }

              if (v156 != 4)
              {
LABEL_95:
                result[1].i8[0] = v165[v190];
              }

              result->i8[7] = v186[v190];
LABEL_97:
              result->i8[6] = v167[v190];
LABEL_98:
              result->i8[5] = v168[v190];
LABEL_99:
              result->i8[4] = v169[v190];
            }

LABEL_100:
            if (v157 + 2 < v13)
            {
              if (v156 <= 3)
              {
                switch(v156)
                {
                  case 1:
                    goto LABEL_60;
                  case 2:
                    goto LABEL_59;
                  case 3:
                    goto LABEL_58;
                }
              }

              else
              {
                if (v156 > 5)
                {
                  if (v156 != 6)
                  {
                    if (v156 != 7)
                    {
                      goto LABEL_61;
                    }

                    result[1].i8[6] = v595[v190];
                  }

                  result[1].i8[5] = v605[v190];
                  goto LABEL_56;
                }

                if (v156 != 4)
                {
LABEL_56:
                  result[1].i8[4] = v171[v190];
                }

                result[1].i8[3] = v181[v190];
LABEL_58:
                result[1].i8[2] = v178[v190];
LABEL_59:
                result[1].i8[1] = v182[v190];
LABEL_60:
                result[1].i8[0] = v179[v190];
              }
            }

LABEL_61:
            result = (result + 12);
            if (v24 == --v190)
            {
              goto LABEL_52;
            }

            continue;
          }

          result = (result + 4);
          if (v24 == --v190)
          {
LABEL_52:
            v189 -= v611;
            v188 -= v611;
            v159 -= v611;
            v160 -= v611;
            v161 -= v611;
            v187 -= v611;
            v589 -= v611;
            v600 -= v611;
            v165 -= v611;
            v186 -= v611;
            v167 -= v611;
            v168 -= v611;
            v169 -= v611;
            v595 -= v611;
            v605 -= v611;
            v171 -= v611;
            v181 -= v611;
            v178 -= v611;
            v182 -= v611;
            v179 -= v611;
            v176 -= v611;
            if (++v184 == v609)
            {
              goto LABEL_49;
            }

            goto LABEL_53;
          }
        }

        if (v156 > 5)
        {
          if (v156 != 6)
          {
            if (v156 != 7)
            {
              goto LABEL_79;
            }

            result->i8[6] = v189[v190];
          }

          result->i8[5] = v188[v190];
LABEL_74:
          result->i8[4] = v159[v190];
        }

        else if (v156 != 4)
        {
          goto LABEL_74;
        }

        result->i8[3] = v160[v190];
LABEL_76:
        result->i8[2] = v161[v190];
LABEL_77:
        result->i8[1] = v187[v190];
LABEL_78:
        result->i8[0] = v176[v190];
        goto LABEL_79;
      }

LABEL_12:
      v16 = v491 + 1;
      a2 += v490;
      v502 += v490;
      v501 += v490;
      v500 += v490;
      v499 += v490;
      v498 += v490;
      v497 += v490;
      v496 += v490;
      v495 += v490;
      v494 += v490;
      v493 += v490;
      v492 += v490;
      v14 = v610;
      v22 = v611 - 1;
    }

    while (v491 + 1 != v503);
  }

  return result;
}