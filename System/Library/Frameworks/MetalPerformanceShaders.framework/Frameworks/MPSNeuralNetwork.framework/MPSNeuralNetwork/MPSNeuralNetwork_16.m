int32x4_t *sub_239C8D288(int32x4_t *result, int16x8_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 32);
  v646 = *(a3 + 48);
  v943 = *(a3 + 56);
  v830 = *(a3 + 64);
  v5 = *(a3 + 108);
  v787 = v4;
  if (*(a3 + 104) != 1)
  {
    v169 = *(a3 + 16);
    v170 = *(a3 + 40);
    v171 = *(a3 + 72);
    v172 = *(a3 + 80);
    v846 = v172;
    if (v5)
    {
      if (v646 && v3 && v943 && v4 && v830)
      {
        v173 = 0;
        v174 = v830 * v169;
        v175 = a2;
        v176 = (v830 * v943) << 6;
        v177 = v830 * v3 * v943;
        v178 = v943 << 6;
        v936 = v943 * v170 * v174;
        v930 = v943 * v4 * v830 * v3;
        v179 = 16 * v830 * v943;
        v180 = 8 * v943 * v174;
        v181 = 2 * v830 * v943;
        v182 = v175;
        do
        {
          v183 = 0;
          v941 = v173;
          v184 = v173 * v4;
          v648 = v182;
          v185 = result;
          do
          {
            v186 = v183 + v184;
            if ((v183 + v184) % v172 < v171)
            {
              v187 = 0;
              v188 = v182;
              v189 = v185;
              do
              {
                v190 = 0;
                v191 = v188;
                v192 = v189;
                do
                {
                  v193 = 0;
                  v194 = 0;
                  v195 = 8;
                  v196 = v191;
                  v197 = v192;
                  do
                  {
                    if (v3 >= v195)
                    {
                      v198 = v195;
                    }

                    else
                    {
                      v198 = v3;
                    }

                    v199 = v198 + v193;
                    v200 = v196;
                    v201 = v197;
                    do
                    {
                      v201->i16[0] = *v200;
                      v201 = (v201 + 8);
                      v200 = (v200 + v181);
                      --v199;
                    }

                    while (v199);
                    v194 += 8;
                    v197 = (v197 + v176);
                    v196 = (v196 + v179);
                    v195 += 8;
                    v193 -= 8;
                  }

                  while (v194 < v3);
                  ++v190;
                  v192 += 4;
                  v191 = (v191 + 2);
                }

                while (v190 != v943);
                ++v187;
                v189 = (v189 + v178);
                v188 = (v188 + 2 * v943);
              }

              while (v187 != v830);
              v182 = (v182 + 2 * v177);
              v4 = v787;
              v172 = v846;
            }

            if ((v183 | 1) < v4 && (v186 + 1) % v172 < v171)
            {
              v202 = 0;
              v203 = &v185->i16[1];
              v204 = v182;
              do
              {
                v205 = 0;
                v206 = v204;
                v207 = v203;
                do
                {
                  v208 = 0;
                  v209 = 0;
                  v210 = 8;
                  v211 = v206;
                  v212 = v207;
                  do
                  {
                    v213 = 0;
                    if (v3 >= v210)
                    {
                      v214 = v210;
                    }

                    else
                    {
                      v214 = v3;
                    }

                    v215 = v214 + v208;
                    v216 = v211;
                    do
                    {
                      *&v212[v213] = *v216;
                      v216 = (v216 + v181);
                      v213 += 8;
                      --v215;
                    }

                    while (v215);
                    v209 += 8;
                    v212 += v176;
                    v211 = (v211 + v179);
                    v210 += 8;
                    v208 -= 8;
                  }

                  while (v209 < v3);
                  ++v205;
                  v207 += 32;
                  v206 = (v206 + 2);
                }

                while (v205 != v943);
                ++v202;
                v203 = (v203 + v178);
                v204 = (v204 + 2 * v943);
              }

              while (v202 != v830);
              v182 = (v182 + 2 * v177);
              v4 = v787;
              v172 = v846;
            }

            if ((v183 | 2) < v4 && (v186 + 2) % v172 < v171)
            {
              v217 = 0;
              v218 = &v185->i16[2];
              v219 = v182;
              do
              {
                v220 = 0;
                v221 = v219;
                v222 = v218;
                do
                {
                  v223 = 0;
                  v224 = 0;
                  v225 = 8;
                  v226 = v221;
                  v227 = v222;
                  do
                  {
                    v228 = 0;
                    if (v3 >= v225)
                    {
                      v229 = v225;
                    }

                    else
                    {
                      v229 = v3;
                    }

                    v230 = v229 + v223;
                    v231 = v226;
                    do
                    {
                      *&v227[v228] = *v231;
                      v231 = (v231 + v181);
                      v228 += 8;
                      --v230;
                    }

                    while (v230);
                    v224 += 8;
                    v227 += v176;
                    v226 = (v226 + v179);
                    v225 += 8;
                    v223 -= 8;
                  }

                  while (v224 < v3);
                  ++v220;
                  v222 += 32;
                  v221 = (v221 + 2);
                }

                while (v220 != v943);
                ++v217;
                v218 = (v218 + v178);
                v219 = (v219 + 2 * v943);
              }

              while (v217 != v830);
              v182 = (v182 + 2 * v177);
              v4 = v787;
              v172 = v846;
            }

            if ((v183 | 3) < v4 && (v186 + 3) % v172 < v171)
            {
              v232 = 0;
              v233 = &v185->i16[3];
              v234 = v182;
              do
              {
                v235 = 0;
                v236 = v234;
                v237 = v233;
                do
                {
                  v238 = 0;
                  v239 = 0;
                  v240 = 8;
                  v241 = v236;
                  v242 = v237;
                  do
                  {
                    v243 = 0;
                    if (v3 >= v240)
                    {
                      v244 = v240;
                    }

                    else
                    {
                      v244 = v3;
                    }

                    v245 = v244 + v238;
                    v246 = v241;
                    do
                    {
                      *&v242[v243] = *v246;
                      v246 = (v246 + v181);
                      v243 += 8;
                      --v245;
                    }

                    while (v245);
                    v239 += 8;
                    v242 += v176;
                    v241 = (v241 + v179);
                    v240 += 8;
                    v238 -= 8;
                  }

                  while (v239 < v3);
                  ++v235;
                  v237 += 32;
                  v236 = (v236 + 2);
                }

                while (v235 != v943);
                ++v232;
                v233 = (v233 + v178);
                v234 = (v234 + 2 * v943);
              }

              while (v232 != v830);
              v182 = (v182 + 2 * v177);
              v4 = v787;
            }

            v183 += 4;
            v185 = (v185 + v180);
          }

          while (v183 < v4);
          v173 = v941 + 1;
          result = (result + 2 * v936);
          v182 = (v648 + 2 * v930);
        }

        while (v941 + 1 != v646);
      }

      return result;
    }

    if (!v646)
    {
      return result;
    }

    v316 = 0;
    v317 = 0;
    v318 = *(a3 + 88);
    v778 = v4 - 3;
    v319 = v830 * v3 * v943;
    v320 = (v830 * v943) << 6;
    v321 = v830 * v943 * v3;
    v322 = v3 - 7;
    v805 = v943 << 6;
    v323 = v943 * v830 * v169;
    v762 = v323 * v170;
    v760 = v943 * v4 * v830 * v3;
    v942 = v3 & 0xFFFFFFFFFFFFFFF8;
    v755 = ((v4 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v324 = v830 * v943 * v169;
    v757 = 2 * v170 * v324;
    v774 = 8 * v323;
    v801 = 2 * v943 * v3;
    v325 = 2 * v3;
    v326 = &result->i8[v324 * (8 * ((v4 - 4) >> 2) + 8)];
    v751 = 2 * v321;
    v753 = v321;
    v749 = 3 * v321;
    v851 = v318;
    v938 = v321;
LABEL_449:
    v767 = v316;
    v650 = a2;
    v764 = v326;
    if (v4 < 4)
    {
      v435 = 0;
      v329 = result;
      v436 = a2;
      if (v4 > 0)
      {
        goto LABEL_613;
      }

      goto LABEL_448;
    }

    if (!v830)
    {
      goto LABEL_448;
    }

    v782 = v316 * v4;
    if (!v943)
    {
      goto LABEL_448;
    }

    v327 = 0;
    v328 = a2;
    v329 = result;
LABEL_454:
    v330 = 0;
    v786 = v327;
    v331 = v327 + v782;
    v332 = v327 + v782 + 1;
    v333 = v327 + v782 + 2;
    v932 = v327 + v782 + 3;
    v796 = v328;
    v334 = v328;
    v791 = v329;
    v335 = v329;
    v839 = v327 + v782;
    v834 = v332;
    v829 = v333;
LABEL_456:
    v817 = v330;
    v336 = 0;
    v813 = v334;
    v809 = v335;
LABEL_461:
    if (v3 < 8)
    {
      v360 = 0;
      v351 = v335;
      v350 = v334;
      if (v3 <= 0)
      {
        goto LABEL_460;
      }

      goto LABEL_482;
    }

    if (v318 == 1)
    {
      v346 = 0;
      v347 = 2 * v319;
      v348 = 4 * v319;
      v349 = 6 * v319;
      v350 = v334;
      v351 = v335;
      do
      {
        v352 = *v350++;
        v353 = *(v334 + v347);
        v354 = *(v334 + v348);
        v355 = *(v334 + v349);
        v356 = vzip1q_s16(v352, v353);
        v357 = vzip2q_s16(v352, v353);
        v358 = vzip1q_s16(v354, v355);
        v359 = vzip2q_s16(v354, v355);
        *v351 = vzip1q_s32(v356, v358);
        v351[1] = vzip2q_s32(v356, v358);
        v346 += 8;
        v351[2] = vzip1q_s32(v357, v359);
        v351[3] = vzip2q_s32(v357, v359);
        v351 = (v351 + v320);
        v349 += 16;
        v348 += 16;
        v347 += 16;
      }

      while (v346 < v322);
      v317 = 4;
      v360 = v3 & 0xFFFFFFFFFFFFFFF8;
      if (v942 >= v3)
      {
        goto LABEL_460;
      }

LABEL_482:
      if (v318 == 1)
      {
        v373 = v360 | 1;
        if ((v360 | 1) >= v3)
        {
          v926 = 0;
          v374 = v360 | 2;
          if ((v360 | 2) < v3)
          {
            goto LABEL_522;
          }

LABEL_485:
          v922 = 0;
          v375 = v360 | 3;
          if ((v360 | 3) >= v3)
          {
            goto LABEL_486;
          }

LABEL_523:
          v917 = v350->i16[3];
          v376 = v360 | 4;
          if ((v360 | 4) < v3)
          {
            goto LABEL_524;
          }

LABEL_487:
          v912 = 0;
          v377 = v360 | 5;
          if ((v360 | 5) >= v3)
          {
            goto LABEL_488;
          }

LABEL_525:
          v907 = v350->i16[5];
          v378 = v360 | 6;
          if ((v360 | 6) < v3)
          {
            goto LABEL_526;
          }

LABEL_489:
          v902 = 0;
          v379 = v360 | 7;
          if ((v360 | 7) >= v3)
          {
            goto LABEL_490;
          }

LABEL_527:
          v897 = v350->i16[7];
          v380 = &v350->i16[v321];
          if (v373 < v3)
          {
            goto LABEL_528;
          }

LABEL_491:
          v892 = 0;
          if (v374 >= v3)
          {
            goto LABEL_492;
          }

LABEL_529:
          v887 = v380[2];
          if (v375 < v3)
          {
            goto LABEL_530;
          }

LABEL_493:
          v882 = 0;
          v860 = v350->i16[0];
          v872 = *v380;
          if (v376 >= v3)
          {
            goto LABEL_494;
          }

LABEL_531:
          v877 = v380[4];
          if (v377 < v3)
          {
            goto LABEL_532;
          }

LABEL_495:
          v866 = 0;
          if (v378 >= v3)
          {
            goto LABEL_496;
          }

LABEL_533:
          v855 = v380[6];
          if (v379 < v3)
          {
            goto LABEL_534;
          }

LABEL_497:
          v381 = 0;
          v382 = &v380[v321];
          v383 = *v382;
          if (v373 >= v3)
          {
            goto LABEL_498;
          }

LABEL_535:
          v384 = v382[1];
          if (v374 < v3)
          {
            goto LABEL_536;
          }

LABEL_499:
          v385 = 0;
          if (v375 >= v3)
          {
            goto LABEL_500;
          }

LABEL_537:
          v386 = v382[3];
          if (v376 < v3)
          {
            goto LABEL_538;
          }

LABEL_501:
          v387 = 0;
          if (v377 >= v3)
          {
            goto LABEL_502;
          }

LABEL_539:
          v388 = v382[5];
          if (v378 < v3)
          {
            goto LABEL_540;
          }

LABEL_503:
          v389 = 0;
          if (v379 >= v3)
          {
            goto LABEL_504;
          }

LABEL_541:
          v390 = v382[7];
          v391 = &v382[v938];
          v392 = *v391;
          if (v373 < v3)
          {
            goto LABEL_542;
          }

LABEL_505:
          v393 = 0;
          if (v374 >= v3)
          {
            goto LABEL_506;
          }

LABEL_543:
          v394 = v391[2];
          if (v375 < v3)
          {
            goto LABEL_544;
          }

LABEL_507:
          v395 = 0;
          if (v376 >= v3)
          {
            goto LABEL_508;
          }

LABEL_545:
          v396 = v391[4];
          if (v377 < v3)
          {
            goto LABEL_546;
          }

LABEL_509:
          v397 = 0;
          if (v378 >= v3)
          {
            goto LABEL_510;
          }

LABEL_547:
          v398 = v391[6];
          if (v379 < v3)
          {
            goto LABEL_457;
          }

LABEL_548:
          v337 = 0;
        }

        else
        {
          v926 = v350->i16[1];
          v374 = v360 | 2;
          if ((v360 | 2) >= v3)
          {
            goto LABEL_485;
          }

LABEL_522:
          v922 = v350->i16[2];
          v375 = v360 | 3;
          if ((v360 | 3) < v3)
          {
            goto LABEL_523;
          }

LABEL_486:
          v917 = 0;
          v376 = v360 | 4;
          if ((v360 | 4) >= v3)
          {
            goto LABEL_487;
          }

LABEL_524:
          v912 = v350->i16[4];
          v377 = v360 | 5;
          if ((v360 | 5) < v3)
          {
            goto LABEL_525;
          }

LABEL_488:
          v907 = 0;
          v378 = v360 | 6;
          if ((v360 | 6) >= v3)
          {
            goto LABEL_489;
          }

LABEL_526:
          v902 = v350->i16[6];
          v379 = v360 | 7;
          if ((v360 | 7) < v3)
          {
            goto LABEL_527;
          }

LABEL_490:
          v897 = 0;
          v380 = &v350->i16[v321];
          if (v373 >= v3)
          {
            goto LABEL_491;
          }

LABEL_528:
          v892 = v380[1];
          if (v374 < v3)
          {
            goto LABEL_529;
          }

LABEL_492:
          v887 = 0;
          if (v375 >= v3)
          {
            goto LABEL_493;
          }

LABEL_530:
          v882 = v380[3];
          v860 = v350->i16[0];
          v872 = *v380;
          if (v376 < v3)
          {
            goto LABEL_531;
          }

LABEL_494:
          v877 = 0;
          if (v377 >= v3)
          {
            goto LABEL_495;
          }

LABEL_532:
          v866 = v380[5];
          if (v378 < v3)
          {
            goto LABEL_533;
          }

LABEL_496:
          v855 = 0;
          if (v379 >= v3)
          {
            goto LABEL_497;
          }

LABEL_534:
          v381 = v380[7];
          v382 = &v380[v321];
          v383 = *v382;
          if (v373 < v3)
          {
            goto LABEL_535;
          }

LABEL_498:
          v384 = 0;
          if (v374 >= v3)
          {
            goto LABEL_499;
          }

LABEL_536:
          v385 = v382[2];
          if (v375 < v3)
          {
            goto LABEL_537;
          }

LABEL_500:
          v386 = 0;
          if (v376 >= v3)
          {
            goto LABEL_501;
          }

LABEL_538:
          v387 = v382[4];
          if (v377 < v3)
          {
            goto LABEL_539;
          }

LABEL_502:
          v388 = 0;
          if (v378 >= v3)
          {
            goto LABEL_503;
          }

LABEL_540:
          v389 = v382[6];
          if (v379 < v3)
          {
            goto LABEL_541;
          }

LABEL_504:
          v390 = 0;
          v391 = &v382[v938];
          v392 = *v391;
          if (v373 >= v3)
          {
            goto LABEL_505;
          }

LABEL_542:
          v393 = v391[1];
          if (v374 < v3)
          {
            goto LABEL_543;
          }

LABEL_506:
          v394 = 0;
          if (v375 >= v3)
          {
            goto LABEL_507;
          }

LABEL_544:
          v395 = v391[3];
          if (v376 < v3)
          {
            goto LABEL_545;
          }

LABEL_508:
          v396 = 0;
          if (v377 >= v3)
          {
            goto LABEL_509;
          }

LABEL_546:
          v397 = v391[5];
          if (v378 < v3)
          {
            goto LABEL_547;
          }

LABEL_510:
          v398 = 0;
          if (v379 >= v3)
          {
            goto LABEL_548;
          }

LABEL_457:
          v337 = v391[7];
        }

        v318 = v851;
        v338.i16[0] = v860;
        v338.i16[1] = v872;
        v338.i16[2] = v926;
        v338.i16[3] = v892;
        v338.i16[4] = v922;
        v338.i16[5] = v887;
        v338.i16[6] = v917;
        v338.i16[7] = v882;
        v339.i16[0] = v912;
        v339.i16[1] = v877;
        v339.i16[2] = v907;
        v339.i16[3] = v866;
        v339.i16[4] = v902;
        v339.i16[5] = v855;
        v339.i16[6] = v897;
        v339.i16[7] = v381;
        v340.i16[0] = v383;
        v340.i16[1] = v392;
        v340.i16[2] = v384;
        v340.i16[3] = v393;
        v340.i16[4] = v385;
        v340.i16[5] = v394;
        v340.i16[6] = v386;
        v340.i16[7] = v395;
        v341.i16[0] = v387;
        v341.i16[1] = v396;
        v341.i16[2] = v388;
        v341.i16[3] = v397;
        v341.i16[4] = v389;
        v341.i16[5] = v398;
        v341.i16[6] = v390;
        v341.i16[7] = v337;
        v342 = vzip1q_s32(v338, v340);
        v343 = vzip2q_s32(v338, v340);
        v344 = vzip1q_s32(v339, v341);
        v345 = vzip2q_s32(v339, v341);
        v317 = 4;
        v4 = v787;
        v172 = v846;
        v321 = v830 * v943 * v3;
        v325 = 2 * v3;
        v331 = v839;
        v332 = v834;
        v333 = v829;
LABEL_459:
        *v351 = v342;
        v351[1] = v343;
        v351[2] = v344;
        v351[3] = v345;
        goto LABEL_460;
      }

      v399 = 0uLL;
      if (v331 % v172 >= v171)
      {
        v317 = 0;
        v407 = 0uLL;
        if (v332 % v172 < v171)
        {
          goto LABEL_567;
        }
      }

      else
      {
        if ((v360 | 1) >= v3)
        {
          v400 = 0;
          if ((v360 | 2) < v3)
          {
            goto LABEL_560;
          }

LABEL_515:
          v401 = 0;
          if ((v360 | 3) >= v3)
          {
            goto LABEL_516;
          }

LABEL_561:
          v402 = v350->i16[3];
          if ((v360 | 4) < v3)
          {
            goto LABEL_562;
          }

LABEL_517:
          v403 = 0;
          if ((v360 | 5) >= v3)
          {
            goto LABEL_518;
          }

LABEL_563:
          v404 = v350->i16[5];
          if ((v360 | 6) < v3)
          {
            goto LABEL_564;
          }

LABEL_519:
          v405 = 0;
          if ((v360 | 7) >= v3)
          {
            goto LABEL_520;
          }

LABEL_565:
          v406 = v350->i16[7];
        }

        else
        {
          v400 = v350->i16[1];
          if ((v360 | 2) >= v3)
          {
            goto LABEL_515;
          }

LABEL_560:
          v401 = v350->i16[2];
          if ((v360 | 3) < v3)
          {
            goto LABEL_561;
          }

LABEL_516:
          v402 = 0;
          if ((v360 | 4) >= v3)
          {
            goto LABEL_517;
          }

LABEL_562:
          v403 = v350->i16[4];
          if ((v360 | 5) < v3)
          {
            goto LABEL_563;
          }

LABEL_518:
          v404 = 0;
          if ((v360 | 6) >= v3)
          {
            goto LABEL_519;
          }

LABEL_564:
          v405 = v350->i16[6];
          if ((v360 | 7) < v3)
          {
            goto LABEL_565;
          }

LABEL_520:
          v406 = 0;
        }

        v407.i16[0] = v350->i16[0];
        v407.i16[1] = v400;
        v407.i16[2] = v401;
        v407.i16[3] = v402;
        v407.i16[4] = v403;
        v407.i16[5] = v404;
        v407.i16[6] = v405;
        v407.i16[7] = v406;
        v350 = (v350 + 2 * v321);
        v317 = 1;
        if (v332 % v172 < v171)
        {
LABEL_567:
          if ((v360 | 1) >= v3)
          {
            v416 = 0;
            if ((v360 | 2) < v3)
            {
              goto LABEL_585;
            }

LABEL_569:
            v417 = 0;
            if ((v360 | 3) >= v3)
            {
              goto LABEL_570;
            }

LABEL_586:
            v418 = v350->i16[3];
            if ((v360 | 4) < v3)
            {
              goto LABEL_587;
            }

LABEL_571:
            v419 = 0;
            if ((v360 | 5) >= v3)
            {
              goto LABEL_572;
            }

LABEL_588:
            v420 = v350->i16[5];
            if ((v360 | 6) < v3)
            {
              goto LABEL_589;
            }

LABEL_573:
            v421 = 0;
            if ((v360 | 7) >= v3)
            {
              goto LABEL_574;
            }

LABEL_590:
            v422 = v350->i16[7];
          }

          else
          {
            v416 = v350->i16[1];
            if ((v360 | 2) >= v3)
            {
              goto LABEL_569;
            }

LABEL_585:
            v417 = v350->i16[2];
            if ((v360 | 3) < v3)
            {
              goto LABEL_586;
            }

LABEL_570:
            v418 = 0;
            if ((v360 | 4) >= v3)
            {
              goto LABEL_571;
            }

LABEL_587:
            v419 = v350->i16[4];
            if ((v360 | 5) < v3)
            {
              goto LABEL_588;
            }

LABEL_572:
            v420 = 0;
            if ((v360 | 6) >= v3)
            {
              goto LABEL_573;
            }

LABEL_589:
            v421 = v350->i16[6];
            if ((v360 | 7) < v3)
            {
              goto LABEL_590;
            }

LABEL_574:
            v422 = 0;
          }

          v399.i16[0] = v350->i16[0];
          v399.i16[1] = v416;
          v399.i16[2] = v417;
          v399.i16[3] = v418;
          v399.i16[4] = v419;
          v399.i16[5] = v420;
          v399.i16[6] = v421;
          v399.i16[7] = v422;
          v350 = (v350 + 2 * v321);
          ++v317;
          v408 = 0uLL;
          if (v333 % v172 >= v171)
          {
LABEL_592:
            v423 = 0uLL;
            if (v932 % v172 < v171)
            {
LABEL_593:
              if ((v360 | 1) >= v3)
              {
                v424 = 0;
                if ((v360 | 2) < v3)
                {
                  goto LABEL_602;
                }

LABEL_595:
                v425 = 0;
                if ((v360 | 3) >= v3)
                {
                  goto LABEL_596;
                }

LABEL_603:
                v426 = v350->i16[3];
                if ((v360 | 4) < v3)
                {
                  goto LABEL_604;
                }

LABEL_597:
                v427 = 0;
                if ((v360 | 5) >= v3)
                {
                  goto LABEL_598;
                }

LABEL_605:
                v428 = v350->i16[5];
                if ((v360 | 6) < v3)
                {
                  goto LABEL_606;
                }

LABEL_599:
                v429 = 0;
                if ((v360 | 7) >= v3)
                {
                  goto LABEL_600;
                }

LABEL_607:
                v430 = v350->i16[7];
              }

              else
              {
                v424 = v350->i16[1];
                if ((v360 | 2) >= v3)
                {
                  goto LABEL_595;
                }

LABEL_602:
                v425 = v350->i16[2];
                if ((v360 | 3) < v3)
                {
                  goto LABEL_603;
                }

LABEL_596:
                v426 = 0;
                if ((v360 | 4) >= v3)
                {
                  goto LABEL_597;
                }

LABEL_604:
                v427 = v350->i16[4];
                if ((v360 | 5) < v3)
                {
                  goto LABEL_605;
                }

LABEL_598:
                v428 = 0;
                if ((v360 | 6) >= v3)
                {
                  goto LABEL_599;
                }

LABEL_606:
                v429 = v350->i16[6];
                if ((v360 | 7) < v3)
                {
                  goto LABEL_607;
                }

LABEL_600:
                v430 = 0;
              }

              v408.i16[0] = v350->i16[0];
              v408.i16[1] = v424;
              v408.i16[2] = v425;
              v408.i16[3] = v426;
              v408.i16[4] = v427;
              v408.i16[5] = v428;
              v408.i16[6] = v429;
              v408.i16[7] = v430;
              ++v317;
            }

LABEL_609:
            v431 = vzip1q_s16(v407, v399);
            v432 = vzip2q_s16(v407, v399);
            v433 = vzip1q_s16(v423, v408);
            v434 = vzip2q_s16(v423, v408);
            v342 = vzip1q_s32(v431, v433);
            v343 = vzip2q_s32(v431, v433);
            v344 = vzip1q_s32(v432, v434);
            v345 = vzip2q_s32(v432, v434);
            goto LABEL_459;
          }

LABEL_551:
          if ((v360 | 1) >= v3)
          {
            v409 = 0;
            if ((v360 | 2) < v3)
            {
              goto LABEL_576;
            }

LABEL_553:
            v410 = 0;
            if ((v360 | 3) >= v3)
            {
              goto LABEL_554;
            }

LABEL_577:
            v411 = v350->i16[3];
            if ((v360 | 4) < v3)
            {
              goto LABEL_578;
            }

LABEL_555:
            v412 = 0;
            if ((v360 | 5) >= v3)
            {
              goto LABEL_556;
            }

LABEL_579:
            v413 = v350->i16[5];
            if ((v360 | 6) < v3)
            {
              goto LABEL_580;
            }

LABEL_557:
            v414 = 0;
            if ((v360 | 7) >= v3)
            {
              goto LABEL_558;
            }

LABEL_581:
            v415 = v350->i16[7];
          }

          else
          {
            v409 = v350->i16[1];
            if ((v360 | 2) >= v3)
            {
              goto LABEL_553;
            }

LABEL_576:
            v410 = v350->i16[2];
            if ((v360 | 3) < v3)
            {
              goto LABEL_577;
            }

LABEL_554:
            v411 = 0;
            if ((v360 | 4) >= v3)
            {
              goto LABEL_555;
            }

LABEL_578:
            v412 = v350->i16[4];
            if ((v360 | 5) < v3)
            {
              goto LABEL_579;
            }

LABEL_556:
            v413 = 0;
            if ((v360 | 6) >= v3)
            {
              goto LABEL_557;
            }

LABEL_580:
            v414 = v350->i16[6];
            if ((v360 | 7) < v3)
            {
              goto LABEL_581;
            }

LABEL_558:
            v415 = 0;
          }

          v423.i16[0] = v350->i16[0];
          v423.i16[1] = v409;
          v423.i16[2] = v410;
          v423.i16[3] = v411;
          v423.i16[4] = v412;
          v423.i16[5] = v413;
          v423.i16[6] = v414;
          v423.i16[7] = v415;
          v350 = (v350 + 2 * v321);
          ++v317;
          if (v932 % v172 < v171)
          {
            goto LABEL_593;
          }

          goto LABEL_609;
        }
      }

      v408 = 0uLL;
      if (v333 % v172 >= v171)
      {
        goto LABEL_592;
      }

      goto LABEL_551;
    }

    v361 = 0;
    v362 = v332 % v172;
    v363 = v932 % v172;
    v350 = v334;
    v351 = v335;
    while (1)
    {
      v368 = 0uLL;
      if (v331 % v172 >= v171)
      {
        break;
      }

      v369 = *v350;
      v370 = (v350 + 2 * v319);
      v317 = 1;
      if (v362 < v171)
      {
        goto LABEL_475;
      }

LABEL_476:
      v371 = 0uLL;
      if (v333 % v172 >= v171)
      {
        v372 = 0uLL;
        if (v363 < v171)
        {
LABEL_480:
          v371 = *v370;
          ++v317;
        }
      }

      else
      {
        v372 = *v370;
        v370 = (v370 + 2 * v319);
        ++v317;
        if (v363 < v171)
        {
          goto LABEL_480;
        }
      }

      v364 = vzip1q_s16(v369, v368);
      v365 = vzip2q_s16(v369, v368);
      v366 = vzip1q_s16(v372, v371);
      v367 = vzip2q_s16(v372, v371);
      *v351 = vzip1q_s32(v364, v366);
      v351[1] = vzip2q_s32(v364, v366);
      v351[2] = vzip1q_s32(v365, v367);
      v351[3] = vzip2q_s32(v365, v367);
      v361 += 8;
      v351 = (v351 + v320);
      ++v350;
      if (v361 >= v322)
      {
        v360 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v942 < v3)
        {
          goto LABEL_482;
        }

LABEL_460:
        ++v336;
        v335 += 4;
        v334 = (v334 + v325);
        if (v336 != v943)
        {
          goto LABEL_461;
        }

        v330 = v817 + 1;
        v335 = (v809 + v805);
        v334 = (v813 + v801);
        if (v817 + 1 != v830)
        {
          goto LABEL_456;
        }

        v328 = (v796 + 2 * v317 * v321);
        v327 = v786 + 4;
        v329 = (v791 + v774);
        if (v786 + 4 < v778)
        {
          goto LABEL_454;
        }

        v435 = v755;
        v316 = v767;
        v436 = (v796 + 2 * v317 * v321);
        if (v755 >= v4)
        {
          goto LABEL_448;
        }

LABEL_613:
        if (!v830 || (v923 = v435 + v316 * v4, !v943))
        {
LABEL_448:
          v316 = v767 + 1;
          result = (result + 2 * v762);
          a2 = (v650 + 2 * v760);
          v326 = &v764[v757];
          v318 = v851;
          if (v767 + 1 == v646)
          {
            return result;
          }

          goto LABEL_449;
        }

        v437 = 0;
        v438 = 0;
        v918 = v923 + 1;
        v439 = v435 | 1;
        v913 = v923 + 2;
        v440 = v435 | 2;
        v908 = v923 + 3;
        v441 = v435 | 3;
        v442 = &v436->i16[v753];
        v933 = &v436->i16[v751];
        v443 = &v436->i16[v749];
        v444 = v436;
        v797 = v436;
        v927 = &v436->i16[v753];
LABEL_619:
        v840 = v438;
        v445 = 0;
        v856 = v437;
        v835 = v444;
        v792 = v329;
        v446 = v933;
LABEL_625:
        if (v3 < 8)
        {
          v468 = 0;
          v459 = v329;
          v469 = v444;
          if (v3 > 0)
          {
            goto LABEL_659;
          }

          goto LABEL_624;
        }

        if (v851 == 1)
        {
          v457 = 0;
          v458 = v437;
          v459 = v329;
          while (1)
          {
            v465 = 0uLL;
            v466 = 0uLL;
            if (v439 < v4)
            {
              v466 = *(v442 + v458);
              if (v440 >= v4)
              {
LABEL_631:
                v467 = 0uLL;
                if (v441 < v4)
                {
                  goto LABEL_635;
                }

                goto LABEL_628;
              }
            }

            else if (v440 >= v4)
            {
              goto LABEL_631;
            }

            v465 = *&v446[v458];
            v467 = 0uLL;
            if (v441 < v4)
            {
LABEL_635:
              v467 = *(v443 + v458);
            }

LABEL_628:
            v460 = *(v436 + v458);
            v461 = vzip1q_s16(v460, v466);
            v462 = vzip2q_s16(v460, v466);
            v463 = vzip1q_s16(v465, v467);
            v464 = vzip2q_s16(v465, v467);
            *v459 = vzip1q_s32(v461, v463);
            v459[1] = vzip2q_s32(v461, v463);
            v459[2] = vzip1q_s32(v462, v464);
            v459[3] = vzip2q_s32(v462, v464);
            v457 += 8;
            v459 = (v459 + v320);
            v458 += 16;
            if (v457 >= v322)
            {
              v469 = (v436 + v458);
              v317 = 4;
              v468 = v3 & 0xFFFFFFFFFFFFFFF8;
              if (v942 >= v3)
              {
                goto LABEL_624;
              }

LABEL_659:
              if (v851 == 1)
              {
                v482 = v468 | 1;
                if ((v468 | 1) < v3)
                {
                  v903 = v469->i16[1];
                  v483 = v468 | 2;
                  if ((v468 | 2) >= v3)
                  {
                    goto LABEL_662;
                  }

LABEL_679:
                  v898 = v469->i16[2];
                  v484 = v468 | 3;
                  if ((v468 | 3) < v3)
                  {
                    goto LABEL_680;
                  }

LABEL_663:
                  v893 = 0;
                  v485 = v468 | 4;
                  if ((v468 | 4) >= v3)
                  {
                    goto LABEL_664;
                  }

LABEL_681:
                  v888 = v469->i16[4];
                  v486 = v468 | 5;
                  if ((v468 | 5) < v3)
                  {
                    goto LABEL_682;
                  }

LABEL_665:
                  v883 = 0;
                  v487 = v468 | 6;
                  if ((v468 | 6) >= v3)
                  {
                    goto LABEL_666;
                  }

LABEL_683:
                  v878 = v469->i16[6];
                  v488 = v468 | 7;
                  if (v488 < v3)
                  {
                    goto LABEL_684;
                  }

LABEL_667:
                  v873 = 0;
                  v489.i16[0] = v469->i16[0];
                  v490 = &v469->i16[v319];
                  v491 = 0uLL;
                  v492 = 0uLL;
                  if (v439 >= v4)
                  {
                    goto LABEL_720;
                  }

LABEL_685:
                  if (v482 >= v3)
                  {
                    v867 = 0;
                    if (v483 < v3)
                    {
                      goto LABEL_713;
                    }

LABEL_687:
                    v861 = 0;
                    if (v484 >= v3)
                    {
                      goto LABEL_688;
                    }

LABEL_714:
                    v501 = v490[3];
                    if (v485 < v3)
                    {
                      goto LABEL_715;
                    }

LABEL_689:
                    v502 = 0;
                    v503 = v486;
                    if (v486 >= v3)
                    {
                      goto LABEL_690;
                    }

LABEL_716:
                    v504 = v490[5];
                    v505 = v485;
                    v506 = v484;
                    if (v487 < v3)
                    {
                      goto LABEL_717;
                    }

LABEL_691:
                    v507 = 0;
                    v508 = v483;
                    v509 = v482;
                    if (v488 >= v3)
                    {
                      goto LABEL_692;
                    }

LABEL_718:
                    v510 = v490[7];
                  }

                  else
                  {
                    v867 = v490[1];
                    if (v483 >= v3)
                    {
                      goto LABEL_687;
                    }

LABEL_713:
                    v861 = v490[2];
                    if (v484 < v3)
                    {
                      goto LABEL_714;
                    }

LABEL_688:
                    v501 = 0;
                    if (v485 >= v3)
                    {
                      goto LABEL_689;
                    }

LABEL_715:
                    v502 = v490[4];
                    v503 = v486;
                    if (v486 < v3)
                    {
                      goto LABEL_716;
                    }

LABEL_690:
                    v504 = 0;
                    v505 = v485;
                    v506 = v484;
                    if (v487 >= v3)
                    {
                      goto LABEL_691;
                    }

LABEL_717:
                    v507 = v490[6];
                    v508 = v483;
                    v509 = v482;
                    if (v488 < v3)
                    {
                      goto LABEL_718;
                    }

LABEL_692:
                    v510 = 0;
                  }

                  v492.i16[0] = *v490;
                  v492.i16[1] = v867;
                  v492.i16[2] = v861;
                  v492.i16[3] = v501;
                  v492.i16[4] = v502;
                  v492.i16[5] = v504;
                  v492.i16[6] = v507;
                  v492.i16[7] = v510;
                  v4 = v787;
                  v325 = 2 * v3;
                  v482 = v509;
                  v483 = v508;
                  v484 = v506;
                  v485 = v505;
                  v486 = v503;
                  goto LABEL_720;
                }

                v903 = 0;
                v483 = v468 | 2;
                if ((v468 | 2) < v3)
                {
                  goto LABEL_679;
                }

LABEL_662:
                v898 = 0;
                v484 = v468 | 3;
                if ((v468 | 3) >= v3)
                {
                  goto LABEL_663;
                }

LABEL_680:
                v893 = v469->i16[3];
                v485 = v468 | 4;
                if ((v468 | 4) < v3)
                {
                  goto LABEL_681;
                }

LABEL_664:
                v888 = 0;
                v486 = v468 | 5;
                if ((v468 | 5) >= v3)
                {
                  goto LABEL_665;
                }

LABEL_682:
                v883 = v469->i16[5];
                v487 = v468 | 6;
                if ((v468 | 6) < v3)
                {
                  goto LABEL_683;
                }

LABEL_666:
                v878 = 0;
                v488 = v468 | 7;
                if (v488 >= v3)
                {
                  goto LABEL_667;
                }

LABEL_684:
                v873 = v469->i16[7];
                v489.i16[0] = v469->i16[0];
                v490 = &v469->i16[v319];
                v491 = 0uLL;
                v492 = 0uLL;
                if (v439 < v4)
                {
                  goto LABEL_685;
                }

LABEL_720:
                v519 = &v490[v319];
                if (v440 >= v4)
                {
                  v448 = 0uLL;
                  if (v441 < v4)
                  {
LABEL_739:
                    v525 = &v519[v319];
                    if (v482 >= v3)
                    {
                      v526 = 0;
                      if (v483 < v3)
                      {
                        goto LABEL_748;
                      }

LABEL_741:
                      v527 = 0;
                      if (v484 >= v3)
                      {
                        goto LABEL_742;
                      }

LABEL_749:
                      v528 = v525[3];
                      if (v485 < v3)
                      {
                        goto LABEL_750;
                      }

LABEL_743:
                      v529 = 0;
                      if (v486 >= v3)
                      {
                        goto LABEL_744;
                      }

LABEL_751:
                      v530 = v525[5];
                      if (v487 < v3)
                      {
                        goto LABEL_752;
                      }

LABEL_745:
                      v531 = 0;
                      if (v488 < v3)
                      {
                        goto LABEL_620;
                      }

LABEL_753:
                      v447 = 0;
                    }

                    else
                    {
                      v526 = v525[1];
                      if (v483 >= v3)
                      {
                        goto LABEL_741;
                      }

LABEL_748:
                      v527 = v525[2];
                      if (v484 < v3)
                      {
                        goto LABEL_749;
                      }

LABEL_742:
                      v528 = 0;
                      if (v485 >= v3)
                      {
                        goto LABEL_743;
                      }

LABEL_750:
                      v529 = v525[4];
                      if (v486 < v3)
                      {
                        goto LABEL_751;
                      }

LABEL_744:
                      v530 = 0;
                      if (v487 >= v3)
                      {
                        goto LABEL_745;
                      }

LABEL_752:
                      v531 = v525[6];
                      if (v488 >= v3)
                      {
                        goto LABEL_753;
                      }

LABEL_620:
                      v447 = v525[7];
                    }

                    v448.i16[0] = *v525;
                    v448.i16[1] = v526;
                    v448.i16[2] = v527;
                    v448.i16[3] = v528;
                    v448.i16[4] = v529;
                    v448.i16[5] = v530;
                    v448.i16[6] = v531;
                    v448.i16[7] = v447;
                  }

LABEL_622:
                  v489.i16[1] = v903;
                  v489.i16[2] = v898;
                  v489.i16[3] = v893;
                  v489.i16[4] = v888;
                  v489.i16[5] = v883;
                  v489.i16[6] = v878;
                  v489.i16[7] = v873;
                  v449 = vzip1q_s16(v489, v492);
                  v450 = vzip2q_s16(v489, v492);
                  v451 = vzip1q_s16(v491, v448);
                  v452 = vzip2q_s16(v491, v448);
                  v453 = vzip1q_s32(v449, v451);
                  v454 = vzip2q_s32(v449, v451);
                  v455 = vzip1q_s32(v450, v452);
                  v456 = vzip2q_s32(v450, v452);
                  v317 = 4;
                  v172 = v846;
                  v321 = v830 * v943 * v3;
                  v436 = v797;
                  v442 = v927;
                  v446 = v933;
LABEL_623:
                  *v459 = v453;
                  v459[1] = v454;
                  v459[2] = v455;
                  v459[3] = v456;
LABEL_624:
                  ++v445;
                  v329 += 4;
                  v444 = (v444 + 2 * v3);
                  v437 += v325;
                  if (v445 == v943)
                  {
                    v438 = v840 + 1;
                    v329 = (v792 + v805);
                    v444 = (v835 + 2 * v943 * v3);
                    v437 = v856 + v801;
                    if (v840 + 1 == v830)
                    {
                      goto LABEL_448;
                    }

                    goto LABEL_619;
                  }

                  goto LABEL_625;
                }

                if (v482 >= v3)
                {
                  v868 = 0;
                  if (v483 < v3)
                  {
                    goto LABEL_732;
                  }

LABEL_725:
                  v862 = 0;
                  if (v484 >= v3)
                  {
                    goto LABEL_726;
                  }

LABEL_733:
                  v520 = v519[3];
                  if (v485 < v3)
                  {
                    goto LABEL_734;
                  }

LABEL_727:
                  v521 = 0;
                  if (v486 >= v3)
                  {
                    goto LABEL_728;
                  }

LABEL_735:
                  v522 = v519[5];
                  if (v487 < v3)
                  {
                    goto LABEL_736;
                  }

LABEL_729:
                  v523 = 0;
                  if (v488 >= v3)
                  {
                    goto LABEL_730;
                  }

LABEL_737:
                  v524 = v519[7];
                }

                else
                {
                  v868 = v519[1];
                  if (v483 >= v3)
                  {
                    goto LABEL_725;
                  }

LABEL_732:
                  v862 = v519[2];
                  if (v484 < v3)
                  {
                    goto LABEL_733;
                  }

LABEL_726:
                  v520 = 0;
                  if (v485 >= v3)
                  {
                    goto LABEL_727;
                  }

LABEL_734:
                  v521 = v519[4];
                  if (v486 < v3)
                  {
                    goto LABEL_735;
                  }

LABEL_728:
                  v522 = 0;
                  if (v487 >= v3)
                  {
                    goto LABEL_729;
                  }

LABEL_736:
                  v523 = v519[6];
                  if (v488 < v3)
                  {
                    goto LABEL_737;
                  }

LABEL_730:
                  v524 = 0;
                }

                v491.i16[0] = *v519;
                v491.i16[1] = v868;
                v491.i16[2] = v862;
                v491.i16[3] = v520;
                v491.i16[4] = v521;
                v491.i16[5] = v522;
                v491.i16[6] = v523;
                v491.i16[7] = v524;
                v4 = v787;
                v325 = 2 * v3;
                v448 = 0uLL;
                if (v441 < v787)
                {
                  goto LABEL_739;
                }

                goto LABEL_622;
              }

              v493 = 0uLL;
              if (v923 % v172 >= v171)
              {
                v317 = 0;
                v511 = 0uLL;
                if (v918 % v172 < v171)
                {
                  goto LABEL_703;
                }
              }

              else
              {
                if ((v468 | 1) >= v3)
                {
                  v494 = 0;
                  if ((v468 | 2) < v3)
                  {
                    goto LABEL_696;
                  }

LABEL_672:
                  v495 = 0;
                  if ((v468 | 3) >= v3)
                  {
                    goto LABEL_673;
                  }

LABEL_697:
                  v496 = v469->i16[3];
                  if ((v468 | 4) < v3)
                  {
                    goto LABEL_698;
                  }

LABEL_674:
                  v497 = 0;
                  if ((v468 | 5) >= v3)
                  {
                    goto LABEL_675;
                  }

LABEL_699:
                  v498 = v469->i16[5];
                  if ((v468 | 6) < v3)
                  {
                    goto LABEL_700;
                  }

LABEL_676:
                  v499 = 0;
                  if ((v468 | 7) >= v3)
                  {
                    goto LABEL_677;
                  }

LABEL_701:
                  v500 = v469->i16[7];
                }

                else
                {
                  v494 = v469->i16[1];
                  if ((v468 | 2) >= v3)
                  {
                    goto LABEL_672;
                  }

LABEL_696:
                  v495 = v469->i16[2];
                  if ((v468 | 3) < v3)
                  {
                    goto LABEL_697;
                  }

LABEL_673:
                  v496 = 0;
                  if ((v468 | 4) >= v3)
                  {
                    goto LABEL_674;
                  }

LABEL_698:
                  v497 = v469->i16[4];
                  if ((v468 | 5) < v3)
                  {
                    goto LABEL_699;
                  }

LABEL_675:
                  v498 = 0;
                  if ((v468 | 6) >= v3)
                  {
                    goto LABEL_676;
                  }

LABEL_700:
                  v499 = v469->i16[6];
                  if ((v468 | 7) < v3)
                  {
                    goto LABEL_701;
                  }

LABEL_677:
                  v500 = 0;
                }

                v511.i16[0] = v469->i16[0];
                v511.i16[1] = v494;
                v511.i16[2] = v495;
                v511.i16[3] = v496;
                v511.i16[4] = v497;
                v511.i16[5] = v498;
                v511.i16[6] = v499;
                v511.i16[7] = v500;
                v469 = (v469 + 2 * v319);
                v317 = 1;
                v436 = v797;
                if (v918 % v172 < v171)
                {
LABEL_703:
                  if (v439 < v4)
                  {
                    if ((v468 | 1) >= v3)
                    {
                      v512 = 0;
                      if ((v468 | 2) < v3)
                      {
                        goto LABEL_755;
                      }

LABEL_706:
                      v513 = 0;
                      if ((v468 | 3) >= v3)
                      {
                        goto LABEL_707;
                      }

LABEL_756:
                      v514 = v469->i16[3];
                      if ((v468 | 4) < v3)
                      {
                        goto LABEL_757;
                      }

LABEL_708:
                      v515 = 0;
                      if ((v468 | 5) >= v3)
                      {
                        goto LABEL_709;
                      }

LABEL_758:
                      v516 = v469->i16[5];
                      if ((v468 | 6) < v3)
                      {
                        goto LABEL_759;
                      }

LABEL_710:
                      v517 = 0;
                      if ((v468 | 7) >= v3)
                      {
                        goto LABEL_711;
                      }

LABEL_760:
                      v518 = v469->i16[7];
                    }

                    else
                    {
                      v512 = v469->i16[1];
                      if ((v468 | 2) >= v3)
                      {
                        goto LABEL_706;
                      }

LABEL_755:
                      v513 = v469->i16[2];
                      if ((v468 | 3) < v3)
                      {
                        goto LABEL_756;
                      }

LABEL_707:
                      v514 = 0;
                      if ((v468 | 4) >= v3)
                      {
                        goto LABEL_708;
                      }

LABEL_757:
                      v515 = v469->i16[4];
                      if ((v468 | 5) < v3)
                      {
                        goto LABEL_758;
                      }

LABEL_709:
                      v516 = 0;
                      if ((v468 | 6) >= v3)
                      {
                        goto LABEL_710;
                      }

LABEL_759:
                      v517 = v469->i16[6];
                      if ((v468 | 7) < v3)
                      {
                        goto LABEL_760;
                      }

LABEL_711:
                      v518 = 0;
                    }

                    v493.i16[0] = v469->i16[0];
                    v493.i16[1] = v512;
                    v493.i16[2] = v513;
                    v493.i16[3] = v514;
                    v493.i16[4] = v515;
                    v493.i16[5] = v516;
                    v493.i16[6] = v517;
                    v493.i16[7] = v518;
                    v325 = 2 * v3;
                    v436 = v797;
                  }

                  v469 = (v469 + 2 * v319);
                  ++v317;
                }
              }

              v532 = 0uLL;
              v533 = 0uLL;
              if (v913 % v172 < v171)
              {
                if (v440 < v4)
                {
                  if ((v468 | 1) >= v3)
                  {
                    v534 = 0;
                    if ((v468 | 2) < v3)
                    {
                      goto LABEL_774;
                    }

LABEL_767:
                    v535 = 0;
                    if ((v468 | 3) >= v3)
                    {
                      goto LABEL_768;
                    }

LABEL_775:
                    v536 = v469->i16[3];
                    if ((v468 | 4) < v3)
                    {
                      goto LABEL_776;
                    }

LABEL_769:
                    v537 = 0;
                    if ((v468 | 5) >= v3)
                    {
                      goto LABEL_770;
                    }

LABEL_777:
                    v538 = v469->i16[5];
                    if ((v468 | 6) < v3)
                    {
                      goto LABEL_778;
                    }

LABEL_771:
                    v539 = 0;
                    if ((v468 | 7) >= v3)
                    {
                      goto LABEL_772;
                    }

LABEL_779:
                    v540 = v469->i16[7];
                  }

                  else
                  {
                    v534 = v469->i16[1];
                    if ((v468 | 2) >= v3)
                    {
                      goto LABEL_767;
                    }

LABEL_774:
                    v535 = v469->i16[2];
                    if ((v468 | 3) < v3)
                    {
                      goto LABEL_775;
                    }

LABEL_768:
                    v536 = 0;
                    if ((v468 | 4) >= v3)
                    {
                      goto LABEL_769;
                    }

LABEL_776:
                    v537 = v469->i16[4];
                    if ((v468 | 5) < v3)
                    {
                      goto LABEL_777;
                    }

LABEL_770:
                    v538 = 0;
                    if ((v468 | 6) >= v3)
                    {
                      goto LABEL_771;
                    }

LABEL_778:
                    v539 = v469->i16[6];
                    if ((v468 | 7) < v3)
                    {
                      goto LABEL_779;
                    }

LABEL_772:
                    v540 = 0;
                  }

                  v533.i16[0] = v469->i16[0];
                  v533.i16[1] = v534;
                  v533.i16[2] = v535;
                  v533.i16[3] = v536;
                  v533.i16[4] = v537;
                  v533.i16[5] = v538;
                  v533.i16[6] = v539;
                  v533.i16[7] = v540;
                  v325 = 2 * v3;
                  v436 = v797;
                }

                v469 = (v469 + 2 * v319);
                ++v317;
              }

              if (v908 % v172 >= v171)
              {
                v442 = v927;
                v446 = v933;
              }

              else
              {
                v446 = v933;
                if (v441 < v4)
                {
                  if ((v468 | 1) >= v3)
                  {
                    v541 = 0;
                    if ((v468 | 2) < v3)
                    {
                      goto LABEL_794;
                    }

LABEL_786:
                    v542 = 0;
                    if ((v468 | 3) >= v3)
                    {
                      goto LABEL_787;
                    }

LABEL_795:
                    v543 = v469->i16[3];
                    if ((v468 | 4) < v3)
                    {
                      goto LABEL_796;
                    }

LABEL_788:
                    v544 = 0;
                    if ((v468 | 5) >= v3)
                    {
                      goto LABEL_789;
                    }

LABEL_797:
                    v545 = v469->i16[5];
                    if ((v468 | 6) < v3)
                    {
                      goto LABEL_798;
                    }

LABEL_790:
                    v546 = 0;
                    if ((v468 | 7) >= v3)
                    {
                      goto LABEL_791;
                    }

LABEL_799:
                    v547 = v469->i16[7];
                  }

                  else
                  {
                    v541 = v469->i16[1];
                    if ((v468 | 2) >= v3)
                    {
                      goto LABEL_786;
                    }

LABEL_794:
                    v542 = v469->i16[2];
                    if ((v468 | 3) < v3)
                    {
                      goto LABEL_795;
                    }

LABEL_787:
                    v543 = 0;
                    if ((v468 | 4) >= v3)
                    {
                      goto LABEL_788;
                    }

LABEL_796:
                    v544 = v469->i16[4];
                    if ((v468 | 5) < v3)
                    {
                      goto LABEL_797;
                    }

LABEL_789:
                    v545 = 0;
                    if ((v468 | 6) >= v3)
                    {
                      goto LABEL_790;
                    }

LABEL_798:
                    v546 = v469->i16[6];
                    if ((v468 | 7) < v3)
                    {
                      goto LABEL_799;
                    }

LABEL_791:
                    v547 = 0;
                  }

                  v532.i16[0] = v469->i16[0];
                  v532.i16[1] = v541;
                  v532.i16[2] = v542;
                  v532.i16[3] = v543;
                  v532.i16[4] = v544;
                  v532.i16[5] = v545;
                  v532.i16[6] = v546;
                  v532.i16[7] = v547;
                  v436 = v797;
                  v446 = v933;
                }

                ++v317;
                v442 = v927;
              }

              v548 = vzip1q_s16(v511, v493);
              v549 = vzip2q_s16(v511, v493);
              v550 = vzip1q_s16(v533, v532);
              v551 = vzip2q_s16(v533, v532);
              v453 = vzip1q_s32(v548, v550);
              v454 = vzip2q_s32(v548, v550);
              v455 = vzip1q_s32(v549, v551);
              v456 = vzip2q_s32(v549, v551);
              goto LABEL_623;
            }
          }
        }

        v470 = 0;
        v471 = v918 % v172;
        v472 = v908 % v172;
        v469 = v444;
        v459 = v329;
        while (2)
        {
          v477 = 0uLL;
          if (v923 % v172 >= v171)
          {
            v317 = 0;
            v478 = 0uLL;
            v479 = v469;
            if (v471 >= v171)
            {
              goto LABEL_648;
            }
          }

          else
          {
            v478 = *v469;
            v479 = (v469 + 2 * v321);
            v317 = 1;
            if (v471 >= v171)
            {
              goto LABEL_648;
            }
          }

          if (v439 < v4)
          {
            v477 = *v479;
          }

          v479 = (v479 + 2 * v321);
          ++v317;
LABEL_648:
          v480 = 0uLL;
          v481 = 0uLL;
          if (v913 % v172 < v171)
          {
            if (v440 < v4)
            {
              v481 = *v479;
            }

            v479 = (v479 + 2 * v321);
            ++v317;
            if (v472 < v171)
            {
LABEL_654:
              if (v441 < v4)
              {
                v480 = *v479;
              }

              ++v317;
            }
          }

          else if (v472 < v171)
          {
            goto LABEL_654;
          }

          v473 = vzip1q_s16(v478, v477);
          v474 = vzip2q_s16(v478, v477);
          v475 = vzip1q_s16(v481, v480);
          v476 = vzip2q_s16(v481, v480);
          *v459 = vzip1q_s32(v473, v475);
          v459[1] = vzip2q_s32(v473, v475);
          v459[2] = vzip1q_s32(v474, v476);
          v459[3] = vzip2q_s32(v474, v476);
          v470 += 8;
          v459 = (v459 + v320);
          ++v469;
          if (v470 >= v322)
          {
            v468 = v3 & 0xFFFFFFFFFFFFFFF8;
            v442 = v927;
            v446 = v933;
            if (v942 < v3)
            {
              goto LABEL_659;
            }

            goto LABEL_624;
          }

          continue;
        }
      }
    }

    v317 = 0;
    v369 = 0uLL;
    v370 = v350;
    if (v362 >= v171)
    {
      goto LABEL_476;
    }

LABEL_475:
    v368 = *v370;
    v370 = (v370 + 2 * v319);
    ++v317;
    goto LABEL_476;
  }

  if (!v5)
  {
    if (!v646)
    {
      return result;
    }

    v247 = 0;
    v248 = v830 * v943;
    if (v830)
    {
      v249 = v3 == 0;
    }

    else
    {
      v249 = 1;
    }

    v250 = v4 * v248;
    v251 = v4 * (2 * v248 - 2);
    if (!v943)
    {
      v249 = 1;
    }

    v812 = v249;
    if (v830)
    {
      v252 = v943 == 0;
    }

    else
    {
      v252 = 1;
    }

    v808 = v252;
    v859 = v4 - 3;
    v921 = 16 * v250;
    v804 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v253 = a2->i64 + v251 + 6;
    v820 = 2 * v248 * v3 * v4;
    v916 = 2 * v943 * v4;
    v254 = -2 * v943 * v4;
    v255 = 2 * v4;
    v256 = v4 * (16 * v248 - 2);
    v257 = a2->i64 + v256 + 6;
    v258 = v4 * (14 * v248 - 2);
    v259 = a2->i64 + v258 + 6;
    v260 = v4 * (12 * v248 - 2);
    v261 = a2->i64 + v260 + 6;
    v262 = v4 * (10 * v248 - 2);
    v263 = a2;
    v264 = a2->i64 + v262 + 6;
    v265 = v4 * (8 * v248 - 2);
    v266 = a2->i64 + v265 + 6;
    v267 = v4 * (6 * v248 - 2);
    v268 = a2->i64 + v267 + 6;
    v269 = v4 * (4 * v248 - 2);
    v270 = a2->i64 + v269 + 6;
    v800 = v256 + 12;
    v795 = v258 + 12;
    v790 = v260 + 12;
    v785 = v262 + 12;
    v781 = v265 + 12;
    v777 = v267 + 12;
    v773 = v269 + 12;
    v770 = v251 + 12;
    v816 = v250 * v3;
    while (1)
    {
      v854 = v247;
      v850 = v253;
      v847 = v257;
      v843 = v259;
      v838 = v261;
      v833 = v264;
      v828 = v266;
      v826 = v268;
      v823 = v270;
      if (v4 >= 4)
      {
        if (v812)
        {
          goto LABEL_266;
        }

        v271 = 0;
        v272 = v261;
        v273 = v257;
        v274 = v253;
        v649 = v263;
        v275 = v263;
LABEL_271:
        v906 = v271;
        v911 = v275;
        v276 = 0;
        v901 = v270;
        v277 = v270;
        v896 = v268;
        v278 = v268;
        v891 = v266;
        v886 = v264;
        v279 = v264;
        v881 = v272;
        v876 = v259;
        v280 = v259;
        v871 = v273;
        v281 = v273;
        v865 = v274;
        v282 = v274;
LABEL_273:
        v283 = 0;
        v284 = v276 | 2;
        v285 = v276 | 3;
        v286 = v276 | 4;
        v287 = v276 | 5;
        v288 = v276 | 6;
        v289 = v276 | 7;
        v290 = v277;
        v937 = v278;
        v931 = v266;
        v291 = v266;
        v292 = v279;
        v293 = v272;
        v294 = v280;
        v295 = v281;
        v296 = v282;
LABEL_275:
        v297 = 0;
        v298 = v943;
        while (1)
        {
          result->i16[0] = *(v296 + v297 - 6);
          result->i16[1] = *(v296 + v297 - 4);
          result->i16[2] = *(v296 + v297 - 2);
          result->i16[3] = *(v296 + v297);
          if ((v276 | 1) < v3)
          {
            result->i16[4] = *(v290 + v297 - 6);
            result->i16[5] = *(v290 + v297 - 4);
            result->i16[6] = *(v290 + v297 - 2);
            result->i16[7] = *(v290 + v297);
            if (v284 >= v3)
            {
LABEL_279:
              if (v285 >= v3)
              {
                goto LABEL_280;
              }

              goto LABEL_287;
            }
          }

          else if (v284 >= v3)
          {
            goto LABEL_279;
          }

          result[1].i16[0] = *(v278 + v297 - 6);
          result[1].i16[1] = *(v278 + v297 - 4);
          result[1].i16[2] = *(v278 + v297 - 2);
          result[1].i16[3] = *(v278 + v297);
          if (v285 >= v3)
          {
LABEL_280:
            if (v286 >= v3)
            {
              goto LABEL_281;
            }

            goto LABEL_288;
          }

LABEL_287:
          result[1].i16[4] = *(v291 + v297 - 6);
          result[1].i16[5] = *(v291 + v297 - 4);
          result[1].i16[6] = *(v291 + v297 - 2);
          result[1].i16[7] = *(v291 + v297);
          if (v286 >= v3)
          {
LABEL_281:
            if (v287 >= v3)
            {
              goto LABEL_282;
            }

            goto LABEL_289;
          }

LABEL_288:
          result[2].i16[0] = *(v292 + v297 - 6);
          result[2].i16[1] = *(v292 + v297 - 4);
          result[2].i16[2] = *(v292 + v297 - 2);
          result[2].i16[3] = *(v292 + v297);
          if (v287 >= v3)
          {
LABEL_282:
            if (v288 >= v3)
            {
              goto LABEL_283;
            }

            goto LABEL_290;
          }

LABEL_289:
          result[2].i16[4] = *(v293 + v297 - 6);
          result[2].i16[5] = *(v293 + v297 - 4);
          result[2].i16[6] = *(v293 + v297 - 2);
          result[2].i16[7] = *(v293 + v297);
          if (v288 >= v3)
          {
LABEL_283:
            if (v289 < v3)
            {
              goto LABEL_291;
            }

            goto LABEL_276;
          }

LABEL_290:
          result[3].i16[0] = *(v294 + v297 - 6);
          result[3].i16[1] = *(v294 + v297 - 4);
          result[3].i16[2] = *(v294 + v297 - 2);
          result[3].i16[3] = *(v294 + v297);
          if (v289 < v3)
          {
LABEL_291:
            result[3].i16[4] = *(v295 + v297 - 6);
            result[3].i16[5] = *(v295 + v297 - 4);
            result[3].i16[6] = *(v295 + v297 - 2);
            result[3].i16[7] = *(v295 + v297);
          }

LABEL_276:
          v297 -= v255;
          result += 4;
          if (!--v298)
          {
            ++v283;
            v296 += v254;
            v295 += v254;
            v294 += v254;
            v293 += v254;
            v292 += v254;
            v291 += v254;
            v278 += v254;
            v290 += v254;
            if (v283 != v830)
            {
              goto LABEL_275;
            }

            v276 += 8;
            v282 += v921;
            v281 += v921;
            v280 += v921;
            v272 += v921;
            v279 += v921;
            v266 = v931 + v921;
            v278 = v937 + v921;
            v277 += v921;
            if (v276 < v3)
            {
              goto LABEL_273;
            }

            v271 = v906 + 4;
            v275 = &v911->u64[1];
            v274 = v865 + 8;
            v273 = v871 + 8;
            v259 = v876 + 8;
            v272 = v881 + 8;
            v264 = v886 + 8;
            v266 = v891 + 8;
            v268 = v896 + 8;
            v270 = v901 + 8;
            if (v906 + 4 < v859)
            {
              goto LABEL_271;
            }

            v299 = v804;
            v263 = v649;
            v4 = v787;
            if (v3)
            {
              goto LABEL_295;
            }

            goto LABEL_266;
          }
        }
      }

      v299 = 0;
      v275 = v263;
      if (!v3)
      {
        goto LABEL_266;
      }

LABEL_295:
      v300 = __OFSUB__(v4, v299);
      v301 = v4 - v299;
      if (!((v301 < 0) ^ v300 | (v301 == 0)) && !v808)
      {
        break;
      }

LABEL_266:
      v263 = (v263 + 2 * v816);
      v247 = v854 + 1;
      v253 = v850 + v820;
      v257 = v847 + v820;
      v259 = v843 + v820;
      v261 = v838 + v820;
      v264 = v833 + v820;
      v266 = v828 + v820;
      v268 = v826 + v820;
      v270 = v823 + v820;
      if (v854 + 1 == v646)
      {
        return result;
      }
    }

    v302 = 0;
    v303 = 0;
    v304 = v275->i64 + v800;
    v305 = v275->i64 + v795;
    v306 = v275->i64 + v790;
    v307 = v275->i64 + v785;
    v308 = v275->i64 + v781;
    v309 = v275->i64 + v777;
    v310 = v275->i64 + v773;
    v311 = v275->i64 + v770;
LABEL_299:
    v312 = 0;
    v313 = v302;
LABEL_301:
    v314 = v943;
    v315 = v302;
    while (v301 <= 3)
    {
      switch(v301)
      {
        case 1:
          goto LABEL_325;
        case 2:
          goto LABEL_324;
        case 3:
          goto LABEL_323;
      }

LABEL_326:
      if ((v303 | 1) >= v3)
      {
        goto LABEL_344;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_344;
            }

            result[1].i16[2] = *(v310 + v315);
          }

          result[1].i16[1] = *(v310 + v315 - 2);
LABEL_339:
          result[1].i16[0] = *(v310 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_339;
        }

        result->i16[7] = *(v310 + v315 - 6);
LABEL_341:
        result->i16[6] = *(v310 + v315 - 8);
LABEL_342:
        result->i16[5] = *(v310 + v315 - 10);
LABEL_343:
        result->i16[4] = *(v310 + v315 - 12);
        goto LABEL_344;
      }

      switch(v301)
      {
        case 1:
          goto LABEL_343;
        case 2:
          goto LABEL_342;
        case 3:
          goto LABEL_341;
      }

LABEL_344:
      if ((v303 | 2) >= v3)
      {
        goto LABEL_362;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_362;
            }

            result[1].i16[6] = *(v309 + v315);
          }

          result[1].i16[5] = *(v309 + v315 - 2);
LABEL_357:
          result[1].i16[4] = *(v309 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_357;
        }

        result[1].i16[3] = *(v309 + v315 - 6);
LABEL_359:
        result[1].i16[2] = *(v309 + v315 - 8);
LABEL_360:
        result[1].i16[1] = *(v309 + v315 - 10);
LABEL_361:
        result[1].i16[0] = *(v309 + v315 - 12);
        goto LABEL_362;
      }

      switch(v301)
      {
        case 1:
          goto LABEL_361;
        case 2:
          goto LABEL_360;
        case 3:
          goto LABEL_359;
      }

LABEL_362:
      if ((v303 | 3) >= v3)
      {
        goto LABEL_380;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_380;
            }

            result[2].i16[2] = *(v308 + v315);
          }

          result[2].i16[1] = *(v308 + v315 - 2);
LABEL_375:
          result[2].i16[0] = *(v308 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_375;
        }

        result[1].i16[7] = *(v308 + v315 - 6);
LABEL_377:
        result[1].i16[6] = *(v308 + v315 - 8);
LABEL_378:
        result[1].i16[5] = *(v308 + v315 - 10);
LABEL_379:
        result[1].i16[4] = *(v308 + v315 - 12);
        goto LABEL_380;
      }

      switch(v301)
      {
        case 1:
          goto LABEL_379;
        case 2:
          goto LABEL_378;
        case 3:
          goto LABEL_377;
      }

LABEL_380:
      if ((v303 | 4) >= v3)
      {
        goto LABEL_398;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_398;
            }

            result[2].i16[6] = *(v307 + v315);
          }

          result[2].i16[5] = *(v307 + v315 - 2);
LABEL_393:
          result[2].i16[4] = *(v307 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_393;
        }

        result[2].i16[3] = *(v307 + v315 - 6);
LABEL_395:
        result[2].i16[2] = *(v307 + v315 - 8);
LABEL_396:
        result[2].i16[1] = *(v307 + v315 - 10);
LABEL_397:
        result[2].i16[0] = *(v307 + v315 - 12);
        goto LABEL_398;
      }

      switch(v301)
      {
        case 1:
          goto LABEL_397;
        case 2:
          goto LABEL_396;
        case 3:
          goto LABEL_395;
      }

LABEL_398:
      if ((v303 | 5) >= v3)
      {
        goto LABEL_416;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_416;
            }

            result[3].i16[2] = *(v306 + v315);
          }

          result[3].i16[1] = *(v306 + v315 - 2);
LABEL_411:
          result[3].i16[0] = *(v306 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_411;
        }

        result[2].i16[7] = *(v306 + v315 - 6);
LABEL_413:
        result[2].i16[6] = *(v306 + v315 - 8);
LABEL_414:
        result[2].i16[5] = *(v306 + v315 - 10);
LABEL_415:
        result[2].i16[4] = *(v306 + v315 - 12);
        goto LABEL_416;
      }

      switch(v301)
      {
        case 1:
          goto LABEL_415;
        case 2:
          goto LABEL_414;
        case 3:
          goto LABEL_413;
      }

LABEL_416:
      if ((v303 | 6) >= v3)
      {
        goto LABEL_434;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_434;
            }

            result[3].i16[6] = *(v305 + v315);
          }

          result[3].i16[5] = *(v305 + v315 - 2);
LABEL_429:
          result[3].i16[4] = *(v305 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_429;
        }

        result[3].i16[3] = *(v305 + v315 - 6);
LABEL_431:
        result[3].i16[2] = *(v305 + v315 - 8);
LABEL_432:
        result[3].i16[1] = *(v305 + v315 - 10);
LABEL_433:
        result[3].i16[0] = *(v305 + v315 - 12);
        goto LABEL_434;
      }

      switch(v301)
      {
        case 1:
          goto LABEL_433;
        case 2:
          goto LABEL_432;
        case 3:
          goto LABEL_431;
      }

LABEL_434:
      if ((v303 | 7) >= v3)
      {
        goto LABEL_308;
      }

      if (v301 > 3)
      {
        if (v301 > 5)
        {
          if (v301 != 6)
          {
            if (v301 != 7)
            {
              goto LABEL_308;
            }

            result[4].i16[2] = *(v304 + v315);
          }

          result[4].i16[1] = *(v304 + v315 - 2);
LABEL_303:
          result[4].i16[0] = *(v304 + v315 - 4);
        }

        else if (v301 != 4)
        {
          goto LABEL_303;
        }

        result[3].i16[7] = *(v304 + v315 - 6);
LABEL_305:
        result[3].i16[6] = *(v304 + v315 - 8);
        goto LABEL_306;
      }

      if (v301 == 1)
      {
        goto LABEL_307;
      }

      if (v301 != 2)
      {
        if (v301 != 3)
        {
          goto LABEL_308;
        }

        goto LABEL_305;
      }

LABEL_306:
      result[3].i16[5] = *(v304 + v315 - 10);
LABEL_307:
      result[3].i16[4] = *(v304 + v315 - 12);
LABEL_308:
      result += 4;
      v315 -= v255;
      if (!--v314)
      {
        ++v312;
        v302 -= v916;
        if (v312 == v830)
        {
          v303 += 8;
          v302 = v313 + v921;
          if (v303 >= v3)
          {
            goto LABEL_266;
          }

          goto LABEL_299;
        }

        goto LABEL_301;
      }
    }

    if (v301 > 5)
    {
      if (v301 != 6)
      {
        if (v301 != 7)
        {
          goto LABEL_326;
        }

        result->i16[6] = *(v311 + v315);
      }

      result->i16[5] = *(v311 + v315 - 2);
    }

    else if (v301 == 4)
    {
      goto LABEL_322;
    }

    result->i16[4] = *(v311 + v315 - 4);
LABEL_322:
    result->i16[3] = *(v311 + v315 - 6);
LABEL_323:
    result->i16[2] = *(v311 + v315 - 8);
LABEL_324:
    result->i16[1] = *(v311 + v315 - 10);
LABEL_325:
    result->i16[0] = *(v311 + v315 - 12);
    goto LABEL_326;
  }

  if (v646)
  {
    v6 = 0;
    v7 = v830 * v943;
    v8 = v830 * v943 * (2 * v4 + 8) - 2;
    v9 = v830 * v943 * (2 * v4 + 6) - 2;
    v10 = v830 * v943 * (2 * v4 + 4) - 2;
    v11 = v830 * v943 * (2 * v4 + 2) - 2;
    v12 = v830 * v943 * (4 * v4 + 8) - 2;
    v13 = v830 * v943 * (4 * v4 + 6) - 2;
    v606 = v830 * v943 * ((4 * v4) | 2) - 2;
    v607 = v830 * v943 * (4 * v4 + 4) - 2;
    v604 = v830 * v943 * (6 * v4 + 6) - 2;
    v605 = v830 * v943 * (6 * v4 + 8) - 2;
    v602 = v830 * v943 * (6 * v4 + 2) - 2;
    v603 = v830 * v943 * (6 * v4 + 4) - 2;
    v601 = v830 * v943 * (8 * v4 + 8) - 2;
    v600 = v830 * v943 * ((8 * v4) | 6) - 2;
    v599 = v830 * v943 * ((8 * v4) | 4) - 2;
    v598 = v830 * v943 * ((8 * v4) | 2) - 2;
    v596 = v830 * v943 * (10 * v4 + 6) - 2;
    v597 = v830 * v943 * (10 * v4 + 8) - 2;
    v594 = v830 * v943 * (10 * v4 + 2) - 2;
    v595 = v830 * v943 * (10 * v4 + 4) - 2;
    v592 = v830 * v943 * (12 * v4 + 6) - 2;
    v593 = v830 * v943 * (12 * v4 + 8) - 2;
    v590 = v830 * v943 * ((12 * v4) | 2) - 2;
    v591 = v830 * v943 * (12 * v4 + 4) - 2;
    v588 = v830 * v943 * (14 * v4 + 6) - 2;
    v589 = v830 * v943 * (14 * v4 + 8) - 2;
    v586 = v830 * v943 * (14 * v4 + 2) - 2;
    v587 = v830 * v943 * (14 * v4 + 4) - 2;
    v585 = 6 * v830 * v943 - 2;
    v575 = 12 * v830 * v943 - 2;
    v576 = 14 * v830 * v943 - 2;
    v573 = v830 * v943 * (2 * v4 + 14) - 2;
    v574 = 10 * v830 * v943 - 2;
    v571 = v830 * v943 * (2 * v4 + 10) - 2;
    v572 = v830 * v943 * (2 * v4 + 12) - 2;
    v569 = v830 * v943 * (4 * v4 + 12) - 2;
    v570 = v830 * v943 * (4 * v4 + 14) - 2;
    v568 = v830 * v943 * (4 * v4 + 10) - 2;
    v567 = v830 * v943 * (6 * v4 + 14) - 2;
    v565 = v830 * v943 * (6 * v4 + 10) - 2;
    v566 = v830 * v943 * (6 * v4 + 12) - 2;
    v564 = v830 * v943 * (8 * v4 + 14) - 2;
    v563 = v830 * v943 * (8 * v4 + 12) - 2;
    v562 = v830 * v943 * (8 * v4 + 10) - 2;
    v561 = v830 * v943 * (10 * v4 + 14) - 2;
    v560 = v830 * v943 * (10 * v4 + 12) - 2;
    v559 = v830 * v943 * (10 * v4 + 10) - 2;
    v558 = v830 * v943 * (12 * v4 + 14) - 2;
    v557 = v830 * v943 * (12 * v4 + 12) - 2;
    v556 = v830 * v943 * (12 * v4 + 10) - 2;
    v555 = v830 * v943 * (14 * v4 + 14) - 2;
    v553 = v830 * v943 * (14 * v4 + 10) - 2;
    v554 = v830 * v943 * (14 * v4 + 12) - 2;
    v14 = a2;
    v15 = v3 == 0;
    if (!v830)
    {
      v15 = 1;
    }

    if (!v943)
    {
      v15 = 1;
    }

    v610 = v15;
    v16 = v943 == 0;
    if (!v830)
    {
      v16 = 1;
    }

    v609 = v16;
    v827 = -2 * v943;
    v944 = -v943;
    v17 = 2 * v7 * v3 * v4;
    v584 = 4 * v7 - 2;
    v582 = v8;
    v583 = 2 * v7 - 2;
    v18 = 8 * v7;
    v19 = v4 * v7;
    v731 = 16 * v19;
    v611 = v19 * v3;
    v612 = v17;
    v651 = v4 - 3;
    v608 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = a2->i64 + v8;
    v580 = v10;
    v581 = v9;
    v21 = a2->i64 + v9;
    v22 = a2->i64 + v10;
    v578 = v12;
    v579 = v11;
    v23 = a2->i64 + v11;
    v24 = a2->i64 + v12;
    v577 = v13;
    v25 = a2->i64 + v13;
    v26 = v14->i64 + v607;
    v27 = v14->i64 + v606;
    v28 = v14->i64 + v605;
    v29 = v14->i64 + v604;
    v30 = v14->i64 + v603;
    v31 = v14->i64 + v602;
    v32 = v14->i64 + v601;
    v33 = v14->i64 + v599;
    v34 = v14->i64 + v597;
    v35 = v14->i64 + v596;
    v36 = v14->i64 + v595;
    v37 = v14->i64 + v594;
    v38 = v14->i64 + v593;
    v39 = v14->i64 + v592;
    v40 = v14->i64 + v591;
    v645 = v14->i64 + v590;
    v644 = v14->i64 + v589;
    v643 = v14->i64 + v588;
    v642 = v14->i64 + v587;
    v641 = v14->i64 + v586;
    v652 = v18;
    v552 = v18 - 2;
    v640 = &v14->i16[v18 / 2 - 1];
    v639 = v14->i64 + v585;
    v638 = v14->i64 + v584;
    v41 = v14->i64 + v598;
    v637 = v14->i64 + v583;
    v42 = v14->i64 + v600;
    while (1)
    {
      v647 = v14;
      v635 = v6;
      v634 = v20;
      v633 = v21;
      v632 = v22;
      v631 = v23;
      v630 = v24;
      v629 = v25;
      v628 = v26;
      v627 = v27;
      v626 = v28;
      v625 = v29;
      v624 = v30;
      v623 = v31;
      v622 = v32;
      v636 = v42;
      v621 = v33;
      v620 = v41;
      v619 = v34;
      v618 = v35;
      v617 = v36;
      v615 = v38;
      v616 = v37;
      v613 = v40;
      v614 = v39;
      if (v4 >= 4)
      {
        if (v610)
        {
          goto LABEL_11;
        }

        v43 = 0;
        v44 = v637;
        v696 = v41;
        v45 = v640;
        v693 = v33;
        v46 = v639;
        v47 = v42;
        v48 = v638;
        v690 = v28;
        v49 = v47;
        v729 = v27;
        v50 = v693;
        v727 = v26;
        v51 = v696;
        v725 = v25;
        v52 = v645;
        v723 = v24;
        v53 = v644;
        v721 = v23;
        v54 = v643;
        v719 = v22;
        v55 = v642;
        v717 = v21;
        v715 = v20;
        v56 = v641;
        v57 = v690;
LABEL_16:
        v686 = v43;
        v688 = v14;
        v684 = v44;
        v713 = v48;
        v58 = v48;
        v59 = 0;
        v711 = v46;
        v60 = v46;
        v61 = v44;
        v709 = v45;
        v62 = v45;
        v63 = v58;
        v707 = v56;
        v705 = v55;
        v64 = v55;
        v65 = v56;
        v703 = v54;
        v66 = v54;
        v67 = v64;
        v701 = v53;
        v68 = v53;
        v69 = v66;
        v699 = v52;
        v70 = v52;
        v71 = v68;
        v682 = v40;
        v680 = v39;
        v678 = v38;
        v676 = v37;
        v674 = v36;
        v672 = v35;
        v670 = v34;
        v697 = v51;
        v72 = v51;
        v73 = v70;
        v694 = v50;
        v74 = v50;
        v75 = v40;
        v668 = v49;
        v76 = v49;
        v77 = v39;
        v666 = v32;
        v664 = v31;
        v78 = v31;
        v79 = v74;
        v662 = v30;
        v80 = v30;
        v81 = v37;
        v660 = v29;
        v82 = v29;
        v83 = v38;
        v691 = v57;
        v84 = v57;
        v85 = v72;
        v771 = v729;
        v779 = v727;
        v86 = v62;
        v87 = v725;
        v775 = v723;
        v783 = v721;
        v788 = v719;
        v824 = v717;
        v821 = v715;
LABEL_18:
        v818 = v76;
        v806 = v80;
        v810 = v78;
        v814 = v32;
        v798 = v84;
        v802 = v82;
        v793 = v87;
        v831 = 0;
        v88 = v59 | 1;
        v89 = v59 | 2;
        v90 = v59 | 3;
        v91 = v59 | 4;
        v92 = v59 | 5;
        v93 = v59 | 6;
        v768 = v59;
        v94 = v59 | 7;
        v765 = v61;
        v95 = v61;
        v96 = v63;
        v97 = v60;
        v758 = v86;
        v939 = v65;
        v934 = v67;
        v928 = v69;
        v924 = v71;
        v747 = v73;
        v919 = v73;
        v914 = v75;
        v909 = v77;
        v743 = v83;
        v904 = v83;
        v741 = v81;
        v899 = v81;
        v739 = v36;
        v894 = v36;
        v737 = v35;
        v889 = v35;
        v735 = v34;
        v884 = v34;
        v879 = v85;
        v732 = v79;
        v874 = v79;
        v869 = v818;
        v863 = v814;
        v857 = v810;
        v852 = v806;
        v848 = v802;
        v844 = v798;
        v841 = v771;
        v836 = v779;
        v98 = v793;
        v99 = v775;
        v100 = v783;
        v101 = v788;
        v102 = v824;
        v103 = v821;
LABEL_20:
        v104 = 0;
        while (1)
        {
          LOWORD(v105) = *(v95 + 2 * v104);
          WORD1(v105) = *(v96 + 2 * v104);
          WORD2(v105) = *(v97 + 2 * v104);
          HIWORD(v105) = v86[v104];
          result->i64[0] = v105;
          if (v88 < v3)
          {
            LOWORD(v106) = *(v100 + 2 * v104);
            WORD1(v106) = *(v101 + 2 * v104);
            WORD2(v106) = *(v102 + 2 * v104);
            HIWORD(v106) = *(v103 + 2 * v104);
            result->i64[1] = v106;
            if (v89 >= v3)
            {
LABEL_24:
              if (v90 >= v3)
              {
                goto LABEL_25;
              }

              goto LABEL_32;
            }
          }

          else if (v89 >= v3)
          {
            goto LABEL_24;
          }

          LOWORD(v107) = *(v841 + 2 * v104);
          WORD1(v107) = *(v836 + 2 * v104);
          WORD2(v107) = *(v98 + 2 * v104);
          HIWORD(v107) = *(v99 + 2 * v104);
          result[1].i64[0] = v107;
          if (v90 >= v3)
          {
LABEL_25:
            if (v91 >= v3)
            {
              goto LABEL_26;
            }

            goto LABEL_33;
          }

LABEL_32:
          LOWORD(v108) = *(v857 + 2 * v104);
          WORD1(v108) = *(v852 + 2 * v104);
          WORD2(v108) = *(v848 + 2 * v104);
          HIWORD(v108) = *(v844 + 2 * v104);
          result[1].i64[1] = v108;
          if (v91 >= v3)
          {
LABEL_26:
            if (v92 >= v3)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }

LABEL_33:
          LOWORD(v109) = *(v879 + 2 * v104);
          WORD1(v109) = *(v874 + 2 * v104);
          WORD2(v109) = *(v869 + 2 * v104);
          HIWORD(v109) = *(v863 + 2 * v104);
          result[2].i64[0] = v109;
          if (v92 >= v3)
          {
LABEL_27:
            if (v93 >= v3)
            {
              goto LABEL_28;
            }

            goto LABEL_35;
          }

LABEL_34:
          LOWORD(v110) = *(v899 + 2 * v104);
          WORD1(v110) = *(v894 + 2 * v104);
          WORD2(v110) = *(v889 + 2 * v104);
          HIWORD(v110) = *(v884 + 2 * v104);
          result[2].i64[1] = v110;
          if (v93 >= v3)
          {
LABEL_28:
            if (v94 < v3)
            {
              goto LABEL_36;
            }

            goto LABEL_21;
          }

LABEL_35:
          LOWORD(v111) = *(v919 + 2 * v104);
          WORD1(v111) = *(v914 + 2 * v104);
          WORD2(v111) = *(v909 + 2 * v104);
          HIWORD(v111) = *(v904 + 2 * v104);
          result[3].i64[0] = v111;
          if (v94 < v3)
          {
LABEL_36:
            LOWORD(v112) = *(v939 + 2 * v104);
            WORD1(v112) = *(v934 + 2 * v104);
            WORD2(v112) = *(v928 + 2 * v104);
            HIWORD(v112) = *(v924 + 2 * v104);
            result[3].i64[1] = v112;
          }

LABEL_21:
          result += 4;
          if (v944 == --v104)
          {
            v103 += v827;
            v102 += v827;
            v101 += v827;
            v100 += v827;
            v99 += v827;
            v98 += v827;
            v836 += v827;
            v841 += v827;
            v844 += v827;
            v848 += v827;
            v852 += v827;
            v857 += v827;
            v863 += v827;
            v869 += v827;
            v874 += v827;
            v879 += v827;
            v884 += v827;
            v889 += v827;
            v894 += v827;
            v899 += v827;
            v904 += v827;
            v909 += v827;
            v914 += v827;
            v919 += v827;
            v924 += v827;
            v928 += v827;
            v934 += v827;
            v939 += v827;
            v86 = (v86 + v827);
            v97 += v827;
            v96 += v827;
            v95 += v827;
            if (++v831 != v830)
            {
              goto LABEL_20;
            }

            v59 = v768 + 8;
            v821 += v731;
            v824 += v731;
            v788 += v731;
            v783 += v731;
            v775 += v731;
            v87 = v793 + v731;
            v779 += v731;
            v771 += v731;
            v84 = v798 + v731;
            v82 = v802 + v731;
            v80 = v806 + v731;
            v78 = v810 + v731;
            v32 = v814 + v731;
            v76 = v818 + v731;
            v79 = v732 + v731;
            v85 += v731;
            v34 = v735 + v731;
            v35 = v737 + v731;
            v36 = v739 + v731;
            v81 = v741 + v731;
            v83 = v743 + v731;
            v77 += v731;
            v75 += v731;
            v73 = v747 + v731;
            v71 += v731;
            v69 += v731;
            v67 += v731;
            v65 += v731;
            v86 = &v758[v731 / 2];
            v60 += v731;
            v63 += v731;
            v61 = v765 + v731;
            if (v768 + 8 < v3)
            {
              goto LABEL_18;
            }

            v43 = v686 + 4;
            v14 = (v688 + v652);
            v715 += v652;
            v717 += v652;
            v719 += v652;
            v721 += v652;
            v723 += v652;
            v725 += v652;
            v727 += v652;
            v729 += v652;
            v57 = v691 + v652;
            v29 = v660 + v652;
            v30 = v662 + v652;
            v31 = v664 + v652;
            v32 = v666 + v652;
            v49 = v668 + v652;
            v50 = v694 + v652;
            v51 = v697 + v652;
            v34 = v670 + v652;
            v35 = v672 + v652;
            v36 = v674 + v652;
            v37 = v676 + v652;
            v38 = v678 + v652;
            v39 = v680 + v652;
            v40 = v682 + v652;
            v52 = v699 + v652;
            v53 = v701 + v652;
            v54 = v703 + v652;
            v55 = v705 + v652;
            v56 = v707 + v652;
            v45 = (v709 + v652);
            v46 = v711 + v652;
            v48 = v713 + v652;
            v44 = v684 + v652;
            if (v686 + 4 < v651)
            {
              goto LABEL_16;
            }

            v113 = v608;
            v4 = v787;
            v114 = &v688->i8[v652];
            if (v3)
            {
              goto LABEL_40;
            }

            goto LABEL_11;
          }
        }
      }

      v113 = 0;
      v114 = v14;
      if (!v3)
      {
        goto LABEL_11;
      }

LABEL_40:
      v115 = v4 - v113;
      if (v4 > v113 && !v609)
      {
        break;
      }

LABEL_11:
      v14 = (v647 + 2 * v611);
      v6 = v635 + 1;
      v20 = v634 + v612;
      v21 = v633 + v612;
      v22 = v632 + v612;
      v23 = v631 + v612;
      v24 = v630 + v612;
      v25 = v629 + v612;
      v26 = v628 + v612;
      v27 = v627 + v612;
      v28 = v626 + v612;
      v29 = v625 + v612;
      v30 = v624 + v612;
      v31 = v623 + v612;
      v32 = v622 + v612;
      v42 = v636 + v612;
      v33 = v621 + v612;
      v41 = v620 + v612;
      v34 = v619 + v612;
      v35 = v618 + v612;
      v36 = v617 + v612;
      v37 = v616 + v612;
      v38 = v615 + v612;
      v39 = v614 + v612;
      v40 = v613 + v612;
      v645 += v612;
      v644 += v612;
      v643 += v612;
      v642 += v612;
      v641 += v612;
      v640 = (v640 + v612);
      v639 += v612;
      v638 += v612;
      v637 += v612;
      v4 = v787;
      if (v635 + 1 == v646)
      {
        return result;
      }
    }

    v116 = 0;
    v700 = &v114[v576];
    v761 = &v114[v575];
    v759 = &v114[v574];
    v756 = &v114[v552];
    v754 = &v114[v585];
    v752 = &v114[v584];
    v750 = &v114[v573];
    v748 = &v114[v572];
    v746 = &v114[v571];
    v745 = &v114[v582];
    v117 = &v114[v581];
    v744 = &v114[v580];
    v742 = &v114[v579];
    v740 = &v114[v570];
    v738 = &v114[v569];
    v736 = &v114[v568];
    v734 = &v114[v578];
    v733 = &v114[v577];
    v730 = &v114[v607];
    v728 = &v114[v606];
    v726 = &v114[v567];
    v724 = &v114[v566];
    v722 = &v114[v565];
    v720 = &v114[v605];
    v118 = &v114[v604];
    v718 = &v114[v603];
    v716 = &v114[v602];
    v119 = &v114[v564];
    v120 = &v114[v563];
    v714 = &v114[v562];
    v712 = &v114[v601];
    v710 = &v114[v600];
    v708 = &v114[v599];
    v706 = &v114[v598];
    v704 = &v114[v561];
    v702 = &v114[v560];
    v121 = &v114[v559];
    v122 = &v114[v597];
    v123 = &v114[v596];
    v124 = &v114[v595];
    v125 = &v114[v594];
    v126 = &v114[v558];
    v127 = &v114[v557];
    v128 = &v114[v556];
    v129 = &v114[v593];
    v130 = &v114[v592];
    v131 = &v114[v591];
    v132 = &v114[v590];
    v133 = &v114[v555];
    v134 = &v114[v554];
    v135 = &v114[v553];
    v136 = &v114[v589];
    v137 = &v114[v588];
    v138 = v114;
    v139 = &v114[v587];
    v140 = &v138[v586];
    v141 = &v138[v583];
LABEL_44:
    v692 = v119;
    v687 = v121;
    v689 = v120;
    v681 = v124;
    v695 = v118;
    v683 = v123;
    v685 = v122;
    v698 = v117;
    v142 = 0;
    v143 = v125;
    v144 = v127;
    v145 = v129;
    v146 = v116 | 1;
    v147 = v133;
    v148 = v116 | 2;
    v149 = v116 | 3;
    v150 = v116 | 4;
    v151 = v116 | 5;
    v152 = v116 | 6;
    v679 = v116;
    v153 = v116 | 7;
    v653 = v141;
    v154 = v141;
    v654 = v140;
    v655 = v139;
    v940 = v139;
    v656 = v137;
    v925 = v137;
    v657 = v136;
    v890 = v136;
    v658 = v135;
    v849 = v135;
    v659 = v134;
    v819 = v134;
    v661 = v147;
    v784 = v147;
    v663 = v132;
    v665 = v131;
    v935 = v131;
    v667 = v130;
    v920 = v130;
    v669 = v145;
    v885 = v145;
    v671 = v128;
    v845 = v128;
    v673 = v144;
    v815 = v144;
    v675 = v126;
    v780 = v126;
    v677 = v143;
    v155 = v143;
    v929 = v681;
    v915 = v123;
    v880 = v685;
    v842 = v687;
    v811 = v702;
    v776 = v704;
    v156 = v706;
    v157 = v708;
    v910 = v710;
    v875 = v712;
    v837 = v714;
    v807 = v689;
    v772 = v692;
    v158 = v716;
    v159 = v718;
    v905 = v695;
    v870 = v720;
    v832 = v722;
    v803 = v724;
    v769 = v726;
    v160 = v728;
    v161 = v730;
    v900 = v733;
    v864 = v734;
    v825 = v736;
    v799 = v738;
    v766 = v740;
    v162 = v742;
    v163 = v744;
    v895 = v698;
    v858 = v745;
    v822 = v746;
    v794 = v748;
    v763 = v750;
    v164 = v752;
    v165 = v754;
    v166 = v756;
    v167 = v759;
    v853 = v761;
    v789 = v700;
LABEL_46:
    v168 = 0;
    while (v115 <= 3)
    {
      switch(v115)
      {
        case 1:
          goto LABEL_70;
        case 2:
          goto LABEL_69;
        case 3:
          goto LABEL_68;
      }

LABEL_71:
      if (v146 >= v3)
      {
        goto LABEL_89;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_89;
            }

            result[1].i16[2] = *&v763[2 * v168];
          }

          result[1].i16[1] = *&v794[2 * v168];
LABEL_84:
          result[1].i16[0] = *&v822[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_84;
        }

        result->i16[7] = *&v858[2 * v168];
LABEL_86:
        result->i16[6] = *&v895[2 * v168];
LABEL_87:
        result->i16[5] = *&v163[2 * v168];
LABEL_88:
        result->i16[4] = *&v162[2 * v168];
        goto LABEL_89;
      }

      switch(v115)
      {
        case 1:
          goto LABEL_88;
        case 2:
          goto LABEL_87;
        case 3:
          goto LABEL_86;
      }

LABEL_89:
      if (v148 >= v3)
      {
        goto LABEL_107;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_107;
            }

            result[1].i16[6] = *&v766[2 * v168];
          }

          result[1].i16[5] = *&v799[2 * v168];
LABEL_102:
          result[1].i16[4] = *&v825[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_102;
        }

        result[1].i16[3] = *&v864[2 * v168];
LABEL_104:
        result[1].i16[2] = *&v900[2 * v168];
LABEL_105:
        result[1].i16[1] = *&v161[2 * v168];
LABEL_106:
        result[1].i16[0] = *&v160[2 * v168];
        goto LABEL_107;
      }

      switch(v115)
      {
        case 1:
          goto LABEL_106;
        case 2:
          goto LABEL_105;
        case 3:
          goto LABEL_104;
      }

LABEL_107:
      if (v149 >= v3)
      {
        goto LABEL_125;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_125;
            }

            result[2].i16[2] = *&v769[2 * v168];
          }

          result[2].i16[1] = *&v803[2 * v168];
LABEL_120:
          result[2].i16[0] = *&v832[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_120;
        }

        result[1].i16[7] = *&v870[2 * v168];
LABEL_122:
        result[1].i16[6] = *&v905[2 * v168];
LABEL_123:
        result[1].i16[5] = *&v159[2 * v168];
LABEL_124:
        result[1].i16[4] = *&v158[2 * v168];
        goto LABEL_125;
      }

      switch(v115)
      {
        case 1:
          goto LABEL_124;
        case 2:
          goto LABEL_123;
        case 3:
          goto LABEL_122;
      }

LABEL_125:
      if (v150 >= v3)
      {
        goto LABEL_143;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_143;
            }

            result[2].i16[6] = *&v772[2 * v168];
          }

          result[2].i16[5] = *&v807[2 * v168];
LABEL_138:
          result[2].i16[4] = *&v837[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_138;
        }

        result[2].i16[3] = *&v875[2 * v168];
LABEL_140:
        result[2].i16[2] = *&v910[2 * v168];
LABEL_141:
        result[2].i16[1] = *&v157[2 * v168];
LABEL_142:
        result[2].i16[0] = *&v156[2 * v168];
        goto LABEL_143;
      }

      switch(v115)
      {
        case 1:
          goto LABEL_142;
        case 2:
          goto LABEL_141;
        case 3:
          goto LABEL_140;
      }

LABEL_143:
      if (v151 >= v3)
      {
        goto LABEL_161;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_161;
            }

            result[3].i16[2] = *&v776[2 * v168];
          }

          result[3].i16[1] = *&v811[2 * v168];
LABEL_156:
          result[3].i16[0] = *&v842[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_156;
        }

        result[2].i16[7] = *&v880[2 * v168];
LABEL_158:
        result[2].i16[6] = *&v915[2 * v168];
LABEL_159:
        result[2].i16[5] = *&v929[2 * v168];
LABEL_160:
        result[2].i16[4] = *&v155[2 * v168];
        goto LABEL_161;
      }

      switch(v115)
      {
        case 1:
          goto LABEL_160;
        case 2:
          goto LABEL_159;
        case 3:
          goto LABEL_158;
      }

LABEL_161:
      if (v152 >= v3)
      {
        goto LABEL_179;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_179;
            }

            result[3].i16[6] = *&v780[2 * v168];
          }

          result[3].i16[5] = *&v815[2 * v168];
LABEL_174:
          result[3].i16[4] = *&v845[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_174;
        }

        result[3].i16[3] = *&v885[2 * v168];
LABEL_176:
        result[3].i16[2] = *&v920[2 * v168];
LABEL_177:
        result[3].i16[1] = *&v935[2 * v168];
LABEL_178:
        result[3].i16[0] = *&v132[2 * v168];
        goto LABEL_179;
      }

      switch(v115)
      {
        case 1:
          goto LABEL_178;
        case 2:
          goto LABEL_177;
        case 3:
          goto LABEL_176;
      }

LABEL_179:
      if (v153 >= v3)
      {
        goto LABEL_53;
      }

      if (v115 > 3)
      {
        if (v115 > 5)
        {
          if (v115 != 6)
          {
            if (v115 != 7)
            {
              goto LABEL_53;
            }

            result[4].i16[2] = *&v784[2 * v168];
          }

          result[4].i16[1] = *&v819[2 * v168];
LABEL_48:
          result[4].i16[0] = *&v849[2 * v168];
        }

        else if (v115 != 4)
        {
          goto LABEL_48;
        }

        result[3].i16[7] = *&v890[2 * v168];
LABEL_50:
        result[3].i16[6] = *&v925[2 * v168];
        goto LABEL_51;
      }

      if (v115 == 1)
      {
        goto LABEL_52;
      }

      if (v115 != 2)
      {
        if (v115 != 3)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

LABEL_51:
      result[3].i16[5] = *&v940[2 * v168];
LABEL_52:
      result[3].i16[4] = *&v140[2 * v168];
LABEL_53:
      result += 4;
      if (v944 == --v168)
      {
        v789 += v827;
        v853 += v827;
        v167 += v827;
        v166 += v827;
        v165 += v827;
        v164 += v827;
        v763 += v827;
        v794 += v827;
        v822 += v827;
        v858 += v827;
        v895 += v827;
        v163 += v827;
        v162 += v827;
        v766 += v827;
        v799 += v827;
        v825 += v827;
        v864 += v827;
        v900 += v827;
        v161 += v827;
        v160 += v827;
        v769 += v827;
        v803 += v827;
        v832 += v827;
        v870 += v827;
        v905 += v827;
        v159 += v827;
        v158 += v827;
        v772 += v827;
        v807 += v827;
        v837 += v827;
        v875 += v827;
        v910 += v827;
        v157 += v827;
        v156 += v827;
        v776 += v827;
        v811 += v827;
        v842 += v827;
        v880 += v827;
        v915 += v827;
        v929 += v827;
        v155 += v827;
        v780 += v827;
        v815 += v827;
        v845 += v827;
        v885 += v827;
        v920 += v827;
        v935 += v827;
        v132 += v827;
        v784 += v827;
        v819 += v827;
        v849 += v827;
        v890 += v827;
        v925 += v827;
        v940 += v827;
        v140 += v827;
        v154 += v827;
        if (++v142 == v830)
        {
          v116 = v679 + 8;
          v700 += v731;
          v761 += v731;
          v759 += v731;
          v756 += v731;
          v754 += v731;
          v752 += v731;
          v750 += v731;
          v748 += v731;
          v746 += v731;
          v745 += v731;
          v744 += v731;
          v742 += v731;
          v740 += v731;
          v738 += v731;
          v736 += v731;
          v734 += v731;
          v733 += v731;
          v730 += v731;
          v728 += v731;
          v726 += v731;
          v724 += v731;
          v722 += v731;
          v720 += v731;
          v118 = &v695[v731];
          v718 += v731;
          v716 += v731;
          v119 = &v692[v731];
          v120 = &v689[v731];
          v714 += v731;
          v712 += v731;
          v710 += v731;
          v708 += v731;
          v706 += v731;
          v704 += v731;
          v702 += v731;
          v121 = &v687[v731];
          v122 = &v685[v731];
          v123 = &v683[v731];
          v124 = &v681[v731];
          v125 = &v677[v731];
          v126 = &v675[v731];
          v127 = &v673[v731];
          v128 = &v671[v731];
          v129 = &v669[v731];
          v130 = &v667[v731];
          v131 = &v665[v731];
          v132 = &v663[v731];
          v133 = &v661[v731];
          v134 = &v659[v731];
          v135 = &v658[v731];
          v136 = &v657[v731];
          v137 = &v656[v731];
          v139 = &v655[v731];
          v140 = &v654[v731];
          v141 = &v653[v731];
          v117 = &v698[v731];
          if (v679 + 8 >= v3)
          {
            goto LABEL_11;
          }

          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    if (v115 > 5)
    {
      if (v115 != 6)
      {
        if (v115 != 7)
        {
          goto LABEL_71;
        }

        result->i16[6] = *&v789[2 * v168];
      }

      result->i16[5] = *&v853[2 * v168];
    }

    else if (v115 == 4)
    {
      goto LABEL_67;
    }

    result->i16[4] = *&v167[2 * v168];
LABEL_67:
    result->i16[3] = *&v166[2 * v168];
LABEL_68:
    result->i16[2] = *&v165[2 * v168];
LABEL_69:
    result->i16[1] = *&v164[2 * v168];
LABEL_70:
    result->i16[0] = *&v154[2 * v168];
    goto LABEL_71;
  }

  return result;
}

unint64_t sub_239C91908(int8x16_t *a1, _WORD *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = *(a3 + 8);
  result = *(a3 + 32);
  v447 = *(a3 + 48);
  v535 = *(a3 + 56);
  v532 = *(a3 + 64);
  v9 = *(a3 + 108);
  v528 = result;
  if (*(a3 + 104) != 1)
  {
    v64 = *(a3 + 16);
    v65 = *(a3 + 40);
    v66 = *(a3 + 72);
    v534 = *(a3 + 80);
    if (v9)
    {
      if (v447 && v7 && v535 && result && v532)
      {
        v67 = 0;
        v68 = v532 * v64;
        v69 = v532 * v7 * v535;
        v70 = 16 * v532 * v535;
        v71 = 16 * v535;
        v522 = v535 * result * v532 * v7;
        v526 = v535 * v65 * v68;
        v72 = 2 * v532 * v535;
        v73 = v68 * 16 * v535;
        do
        {
          v74 = 0;
          v530 = v67;
          v75 = v67 * result;
          v445 = a2;
          v76 = a2;
          v77 = a1;
          do
          {
            v78 = v74 + v75;
            if ((v74 + v75) % v534 < v66)
            {
              v79 = 0;
              v80 = v76;
              v81 = v77;
              do
              {
                v82 = 0;
                v83 = v80;
                v84 = v81;
                do
                {
                  v85 = 0;
                  v86 = 0;
                  v87 = v83;
                  v88 = 1;
                  v89 = v84;
                  do
                  {
                    if (v7 >= v88)
                    {
                      v90 = v88;
                    }

                    else
                    {
                      v90 = v7;
                    }

                    v91 = v90 + v85;
                    v92 = v87;
                    v93 = v89;
                    do
                    {
                      v93->i16[0] = *v92;
                      ++v93;
                      v92 = (v92 + v72);
                      --v91;
                    }

                    while (v91);
                    ++v86;
                    v89 = (v89 + v70);
                    ++v88;
                    --v85;
                    v87 = (v87 + v72);
                  }

                  while (v86 != v7);
                  ++v82;
                  ++v84;
                  ++v83;
                }

                while (v82 != v535);
                ++v79;
                v81 = (v81 + v71);
                v80 += v535;
              }

              while (v79 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 1) < result && (v78 + 1) % v534 < v66)
            {
              v94 = 0;
              v95 = &v77->i16[1];
              v96 = v76;
              do
              {
                v97 = 0;
                v98 = v96;
                v99 = v95;
                do
                {
                  v100 = 0;
                  v101 = 0;
                  v102 = v98;
                  v103 = 1;
                  v104 = v99;
                  do
                  {
                    v105 = 0;
                    if (v7 >= v103)
                    {
                      v106 = v103;
                    }

                    else
                    {
                      v106 = v7;
                    }

                    v107 = v106 + v100;
                    v108 = v102;
                    do
                    {
                      *&v104[v105] = *v108;
                      v108 = (v108 + v72);
                      v105 += 16;
                      --v107;
                    }

                    while (v107);
                    ++v101;
                    v104 += v70;
                    ++v103;
                    --v100;
                    v102 = (v102 + v72);
                  }

                  while (v101 != v7);
                  ++v97;
                  v99 += 8;
                  ++v98;
                }

                while (v97 != v535);
                ++v94;
                v95 = (v95 + v71);
                v96 += v535;
              }

              while (v94 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 2) < result && (v78 + 2) % v534 < v66)
            {
              v109 = 0;
              v110 = &v77->i16[2];
              v111 = v76;
              do
              {
                v112 = 0;
                v113 = v111;
                v114 = v110;
                do
                {
                  v115 = 0;
                  v116 = 0;
                  v117 = v113;
                  v118 = 1;
                  v119 = v114;
                  do
                  {
                    v120 = 0;
                    if (v7 >= v118)
                    {
                      v121 = v118;
                    }

                    else
                    {
                      v121 = v7;
                    }

                    v122 = v121 + v115;
                    v123 = v117;
                    do
                    {
                      *&v119[v120] = *v123;
                      v123 = (v123 + v72);
                      v120 += 16;
                      --v122;
                    }

                    while (v122);
                    ++v116;
                    v119 += v70;
                    ++v118;
                    --v115;
                    v117 = (v117 + v72);
                  }

                  while (v116 != v7);
                  ++v112;
                  v114 += 8;
                  ++v113;
                }

                while (v112 != v535);
                ++v109;
                v110 = (v110 + v71);
                v111 += v535;
              }

              while (v109 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 3) < result && (v78 + 3) % v534 < v66)
            {
              v124 = 0;
              v125 = &v77->i16[3];
              v126 = v76;
              do
              {
                v127 = 0;
                v128 = v126;
                v129 = v125;
                do
                {
                  v130 = 0;
                  v131 = 0;
                  v132 = v128;
                  v133 = 1;
                  v134 = v129;
                  do
                  {
                    v135 = 0;
                    if (v7 >= v133)
                    {
                      v136 = v133;
                    }

                    else
                    {
                      v136 = v7;
                    }

                    v137 = v136 + v130;
                    v138 = v132;
                    do
                    {
                      *&v134[v135] = *v138;
                      v138 = (v138 + v72);
                      v135 += 16;
                      --v137;
                    }

                    while (v137);
                    ++v131;
                    v134 += v70;
                    ++v133;
                    --v130;
                    v132 = (v132 + v72);
                  }

                  while (v131 != v7);
                  ++v127;
                  v129 += 8;
                  ++v128;
                }

                while (v127 != v535);
                ++v124;
                v125 = (v125 + v71);
                v126 += v535;
              }

              while (v124 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 4) < result && (v78 + 4) % v534 < v66)
            {
              v139 = 0;
              v140 = &v77->i16[4];
              v141 = v76;
              do
              {
                v142 = 0;
                v143 = v141;
                v144 = v140;
                do
                {
                  v145 = 0;
                  v146 = 0;
                  v147 = v143;
                  v148 = 1;
                  v149 = v144;
                  do
                  {
                    v150 = 0;
                    if (v7 >= v148)
                    {
                      v151 = v148;
                    }

                    else
                    {
                      v151 = v7;
                    }

                    v152 = v151 + v145;
                    v153 = v147;
                    do
                    {
                      *&v149[v150] = *v153;
                      v153 = (v153 + v72);
                      v150 += 16;
                      --v152;
                    }

                    while (v152);
                    ++v146;
                    v149 += v70;
                    ++v148;
                    --v145;
                    v147 = (v147 + v72);
                  }

                  while (v146 != v7);
                  ++v142;
                  v144 += 8;
                  ++v143;
                }

                while (v142 != v535);
                ++v139;
                v140 = (v140 + v71);
                v141 += v535;
              }

              while (v139 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 5) < result && (v78 + 5) % v534 < v66)
            {
              v154 = 0;
              v155 = &v77->i16[5];
              v156 = v76;
              do
              {
                v157 = 0;
                v158 = v156;
                v159 = v155;
                do
                {
                  v160 = 0;
                  v161 = 0;
                  v162 = v158;
                  v163 = 1;
                  v164 = v159;
                  do
                  {
                    v165 = 0;
                    if (v7 >= v163)
                    {
                      v166 = v163;
                    }

                    else
                    {
                      v166 = v7;
                    }

                    v167 = v166 + v160;
                    v168 = v162;
                    do
                    {
                      *&v164[v165] = *v168;
                      v168 = (v168 + v72);
                      v165 += 16;
                      --v167;
                    }

                    while (v167);
                    ++v161;
                    v164 += v70;
                    ++v163;
                    --v160;
                    v162 = (v162 + v72);
                  }

                  while (v161 != v7);
                  ++v157;
                  v159 += 8;
                  ++v158;
                }

                while (v157 != v535);
                ++v154;
                v155 = (v155 + v71);
                v156 += v535;
              }

              while (v154 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 6) < result && (v78 + 6) % v534 < v66)
            {
              v169 = 0;
              v170 = &v77->i16[6];
              v171 = v76;
              do
              {
                v172 = 0;
                v173 = v171;
                v174 = v170;
                do
                {
                  v175 = 0;
                  v176 = 0;
                  v177 = v173;
                  v178 = 1;
                  v179 = v174;
                  do
                  {
                    v180 = 0;
                    if (v7 >= v178)
                    {
                      v181 = v178;
                    }

                    else
                    {
                      v181 = v7;
                    }

                    v182 = v181 + v175;
                    v183 = v177;
                    do
                    {
                      *&v179[v180] = *v183;
                      v183 = (v183 + v72);
                      v180 += 16;
                      --v182;
                    }

                    while (v182);
                    ++v176;
                    v179 += v70;
                    ++v178;
                    --v175;
                    v177 = (v177 + v72);
                  }

                  while (v176 != v7);
                  ++v172;
                  v174 += 8;
                  ++v173;
                }

                while (v172 != v535);
                ++v169;
                v170 = (v170 + v71);
                v171 += v535;
              }

              while (v169 != v532);
              v76 += v69;
              result = v528;
            }

            if ((v74 | 7) < result && (v78 + 7) % v534 < v66)
            {
              v184 = 0;
              v185 = &v77->i16[7];
              v186 = v76;
              do
              {
                v187 = 0;
                v188 = v186;
                v189 = v185;
                do
                {
                  v190 = 0;
                  v191 = 0;
                  v192 = v188;
                  v193 = 1;
                  v194 = v189;
                  do
                  {
                    v195 = 0;
                    if (v7 >= v193)
                    {
                      v196 = v193;
                    }

                    else
                    {
                      v196 = v7;
                    }

                    v197 = v196 + v190;
                    v198 = v192;
                    do
                    {
                      *&v194[v195] = *v198;
                      v198 = (v198 + v72);
                      v195 += 16;
                      --v197;
                    }

                    while (v197);
                    ++v191;
                    v194 += v70;
                    ++v193;
                    --v190;
                    v192 = (v192 + v72);
                  }

                  while (v191 != v7);
                  ++v187;
                  v189 += 8;
                  ++v188;
                }

                while (v187 != v535);
                ++v184;
                v185 = (v185 + v71);
                v186 += v535;
              }

              while (v184 != v532);
              v76 += v69;
              result = v528;
            }

            v74 += 8;
            v77 = (v77 + v73);
          }

          while (v74 < result);
          v67 = v530 + 1;
          a1 = (a1 + 2 * v526);
          a2 = &v445[v522];
        }

        while (v530 + 1 != v447);
      }

      return result;
    }

    if (!v447)
    {
      return result;
    }

    v231 = 0;
    v232 = 0;
    v233 = v532 * v64;
    v449 = result - 7;
    v234 = v532 * v7 * v535;
    v235 = 16 * v532 * v535;
    v236 = v532 * v535 * v7;
    v237 = v7 - 3;
    v441 = v535 * v65 * v532 * v64;
    v238 = v532 * v535 * v64;
    v440 = 2 * v65 * v238;
    v459 = 2 * v535 * v7;
    v461 = v535 * v7;
    v239 = 2 * v7;
    v439 = v535 * result * v532 * v7;
    v438 = result & 0xFFFFFFFFFFFFFFF8;
    v463 = v535;
    v448 = v233 * 16 * v535;
    v436 = 3 * v236;
    v437 = 2 * v236;
    v434 = 6 * v236;
    v435 = 5 * v236;
    v240 = *(a3 + 88);
    v493 = v236;
    v433 = 7 * v236;
    v531 = v236;
    v432 = 4 * v236;
    v241 = &a1->i8[v238 * (16 * ((result - 8) >> 3) + 16)];
    v505 = v7 - 3;
    v527 = v240;
LABEL_223:
    v443 = v231;
    v446 = a2;
    v442 = v241;
    if (result < 8)
    {
      v322 = 0;
      v244 = a1;
      v243 = a2;
      if (result > 0)
      {
        goto LABEL_324;
      }

      goto LABEL_222;
    }

    if (!v532)
    {
      goto LABEL_222;
    }

    v475 = v231 * result;
    if (!v535)
    {
      goto LABEL_222;
    }

    v242 = 0;
    v243 = a2;
    v244 = a1;
LABEL_228:
    v245 = 0;
    v246 = 0;
    v478 = v242;
    v247 = v242 + v475;
    v248 = v242 + v475 + 1;
    v519 = v242 + v475 + 3;
    v523 = v242 + v475 + 2;
    v513 = v242 + v475 + 5;
    v516 = v242 + v475 + 4;
    v507 = v242 + v475 + 7;
    v510 = v242 + v475 + 6;
    v249 = &v243[7 * v234];
    v250 = &v243[6 * v234];
    v251 = &v243[5 * v234];
    v252 = &v243[4 * v234];
    v253 = &v243[3 * v234];
    v254 = &v243[2 * v234];
    v255 = &v243[v234];
    v256 = v243;
    v456 = v244;
    v498 = v247;
    v501 = v243;
    v495 = v248;
LABEL_230:
    v487 = v246;
    v490 = v245;
    v257 = 0;
    v481 = v244;
    v484 = v256;
    v258 = v244;
LABEL_234:
    if (v7 < 4)
    {
      v269 = 0;
      v267 = v258;
      v268 = v256;
      if (v7 <= 0)
      {
        goto LABEL_233;
      }

      goto LABEL_262;
    }

    v265 = v245;
    v266 = v237;
    v267 = v258;
    if (v240 == 1)
    {
      do
      {
        v537.val[0].i64[0] = *(v243 + v265);
        v537.val[1].i64[0] = *(v254 + v265);
        v538.val[0].i64[0] = *(v252 + v265);
        v538.val[1].i64[0] = *(v250 + v265);
        v537.val[0].i64[1] = *(v255 + v265);
        v537.val[1].i64[1] = *(v253 + v265);
        v538.val[0].i64[1] = *(v251 + v265);
        v538.val[1].i64[1] = *(v249 + v265);
        v537.val[0].i64[0] = vqtbl2q_s8(v537, xmmword_239D7E3E0).u64[0];
        *&a6 = vqtbl2q_s8(v538, xmmword_239D7E3E0).u64[0];
        *&v537.val[0].i64[1] = a6;
        *v267 = v537.val[0];
        v267 = (v267 + v235);
        v265 += 2;
        --v266;
      }

      while (v266);
      v268 = (v243 + v265);
      v232 = 8;
      v269 = v237;
      if (v237 >= v7)
      {
        goto LABEL_233;
      }

LABEL_262:
      if (v240 == 1)
      {
        v264.i16[0] = *v268;
        v264.i16[1] = *(v268 + v493 * 2);
        v259 = (v268 + v493 * 2 + v493 * 2);
        v264.i16[2] = *v259;
        v260 = &v259[v493];
        v264.i16[3] = *v260;
        v261 = &v260[v493];
        v264.i16[4] = *v261;
        v262 = &v261[v493];
        v264.i16[5] = *v262;
        v263 = &v262[v493];
        v264.i16[6] = *v263;
        v264.i16[7] = v263[v493];
        v232 = 8;
        goto LABEL_232;
      }

      if (v247 % v534 >= v66)
      {
        v232 = 0;
        v296 = 0;
        if (v248 % v534 < v66)
        {
          goto LABEL_278;
        }
      }

      else
      {
        if (v269 + 1 >= v7)
        {
          v294 = 0;
          if (v269 + 2 < v7)
          {
            goto LABEL_276;
          }

LABEL_266:
          v295 = 0;
        }

        else
        {
          v294 = *(v268 + 1);
          if (v269 + 2 >= v7)
          {
            goto LABEL_266;
          }

LABEL_276:
          v295 = *(v268 + 2);
        }

        LOWORD(v296) = *v268;
        WORD1(v296) = v294;
        HIDWORD(v296) = v295;
        v268 = (v268 + 2 * v531);
        v232 = 1;
        if (v248 % v534 < v66)
        {
LABEL_278:
          if (v269 + 1 >= v7)
          {
            v304 = 0;
            if (v269 + 2 < v7)
            {
              goto LABEL_282;
            }

LABEL_280:
            v305 = 0;
          }

          else
          {
            v304 = *(v268 + 1);
            if (v269 + 2 >= v7)
            {
              goto LABEL_280;
            }

LABEL_282:
            v305 = *(v268 + 2);
          }

          LOWORD(v297) = *v268;
          WORD1(v297) = v304;
          HIDWORD(v297) = v305;
          v268 = (v268 + 2 * v531);
          ++v232;
          if (v523 % v534 < v66)
          {
LABEL_284:
            if (v269 + 1 >= v7)
            {
              v306 = 0;
              if (v269 + 2 < v7)
              {
                goto LABEL_288;
              }

LABEL_286:
              v307 = 0;
            }

            else
            {
              v306 = *(v268 + 1);
              if (v269 + 2 >= v7)
              {
                goto LABEL_286;
              }

LABEL_288:
              v307 = *(v268 + 2);
            }

            LOWORD(v298) = *v268;
            WORD1(v298) = v306;
            DWORD1(v298) = v307;
            v268 = (v268 + 2 * v531);
            ++v232;
            if (v519 % v534 < v66)
            {
LABEL_290:
              if (v269 + 1 >= v7)
              {
                v308 = 0;
                if (v269 + 2 < v7)
                {
                  goto LABEL_294;
                }

LABEL_292:
                v309 = 0;
              }

              else
              {
                v308 = *(v268 + 1);
                if (v269 + 2 >= v7)
                {
                  goto LABEL_292;
                }

LABEL_294:
                v309 = *(v268 + 2);
              }

              LOWORD(v299) = *v268;
              WORD1(v299) = v308;
              HIDWORD(v299) = v309;
              v268 = (v268 + 2 * v531);
              ++v232;
              if (v516 % v534 < v66)
              {
LABEL_296:
                if (v269 + 1 >= v7)
                {
                  v310 = 0;
                  if (v269 + 2 < v7)
                  {
                    goto LABEL_300;
                  }

LABEL_298:
                  v311 = 0;
                }

                else
                {
                  v310 = *(v268 + 1);
                  if (v269 + 2 >= v7)
                  {
                    goto LABEL_298;
                  }

LABEL_300:
                  v311 = *(v268 + 2);
                }

                LOWORD(v300) = *v268;
                WORD1(v300) = v310;
                HIDWORD(v300) = v311;
                v268 = (v268 + 2 * v531);
                ++v232;
                if (v513 % v534 < v66)
                {
LABEL_302:
                  if (v269 + 1 >= v7)
                  {
                    v312 = 0;
                    if (v269 + 2 < v7)
                    {
                      goto LABEL_306;
                    }

LABEL_304:
                    v313 = 0;
                  }

                  else
                  {
                    v312 = *(v268 + 1);
                    if (v269 + 2 >= v7)
                    {
                      goto LABEL_304;
                    }

LABEL_306:
                    v313 = *(v268 + 2);
                  }

                  LOWORD(v301) = *v268;
                  WORD1(v301) = v312;
                  HIDWORD(v301) = v313;
                  v268 = (v268 + 2 * v531);
                  ++v232;
                  if (v510 % v534 < v66)
                  {
LABEL_308:
                    if (v269 + 1 >= v7)
                    {
                      v314 = 0;
                      if (v269 + 2 < v7)
                      {
                        goto LABEL_312;
                      }

LABEL_310:
                      v315 = 0;
                    }

                    else
                    {
                      v314 = *(v268 + 1);
                      if (v269 + 2 >= v7)
                      {
                        goto LABEL_310;
                      }

LABEL_312:
                      v315 = *(v268 + 2);
                    }

                    LOWORD(v302) = *v268;
                    WORD1(v302) = v314;
                    DWORD1(v302) = v315;
                    v268 = (v268 + 2 * v531);
                    ++v232;
                    if (v507 % v534 < v66)
                    {
LABEL_314:
                      if (v269 + 1 >= v7)
                      {
                        v316 = 0;
                        if (v269 + 2 < v7)
                        {
                          goto LABEL_318;
                        }

LABEL_316:
                        v317 = 0;
                      }

                      else
                      {
                        v316 = *(v268 + 1);
                        if (v269 + 2 >= v7)
                        {
                          goto LABEL_316;
                        }

LABEL_318:
                        v317 = *(v268 + 2);
                      }

                      LOWORD(v303) = *v268;
                      WORD1(v303) = v316;
                      HIDWORD(v303) = v317;
                      ++v232;
LABEL_320:
                      v318 = v297;
                      *(&v298 + 1) = v299;
                      v319 = v301;
                      *(&v302 + 1) = v303;
                      v320 = v298;
                      v321 = v302;
                      v264.i64[0] = vqtbl2q_s8(*&v296, xmmword_239D7E3E0).u64[0];
                      *&a6 = vqtbl2q_s8(*&v300, xmmword_239D7E3E0).u64[0];
                      *&v264.i64[1] = a6;
LABEL_232:
                      *v267 = v264;
                      goto LABEL_233;
                    }

LABEL_274:
                    v303 = 0;
                    goto LABEL_320;
                  }

LABEL_273:
                  *&v302 = 0;
                  if (v507 % v534 < v66)
                  {
                    goto LABEL_314;
                  }

                  goto LABEL_274;
                }

LABEL_272:
                v301 = 0;
                if (v510 % v534 < v66)
                {
                  goto LABEL_308;
                }

                goto LABEL_273;
              }

LABEL_271:
              v300 = 0;
              if (v513 % v534 < v66)
              {
                goto LABEL_302;
              }

              goto LABEL_272;
            }

LABEL_270:
            v299 = 0;
            if (v516 % v534 < v66)
            {
              goto LABEL_296;
            }

            goto LABEL_271;
          }

LABEL_269:
          *&v298 = 0;
          if (v519 % v534 < v66)
          {
            goto LABEL_290;
          }

          goto LABEL_270;
        }
      }

      v297 = 0;
      if (v523 % v534 < v66)
      {
        goto LABEL_284;
      }

      goto LABEL_269;
    }

    v270 = v247 % v534;
    v271 = v248 % v534;
    v272 = v523 % v534;
    v273 = v519 % v534;
    v274 = v516 % v534;
    v275 = v237;
    v276 = v513 % v534;
    v277 = v510 % v534;
    v278 = v507 % v534;
    v279 = v275;
    v268 = v256;
    v267 = v258;
    while (1)
    {
      if (v270 >= v66)
      {
        v232 = 0;
        v286 = 0;
        v287 = v268;
        if (v271 >= v66)
        {
LABEL_246:
          v288 = 0;
          if (v272 >= v66)
          {
            goto LABEL_247;
          }

          goto LABEL_255;
        }
      }

      else
      {
        v286 = *v268;
        v287 = (v268 + 2 * v234);
        v232 = 1;
        if (v271 >= v66)
        {
          goto LABEL_246;
        }
      }

      v288 = *v287;
      v287 = (v287 + 2 * v234);
      ++v232;
      if (v272 >= v66)
      {
LABEL_247:
        *&v289 = 0;
        if (v273 >= v66)
        {
          goto LABEL_248;
        }

        goto LABEL_256;
      }

LABEL_255:
      *&v289 = *v287;
      v287 = (v287 + 2 * v234);
      ++v232;
      if (v273 >= v66)
      {
LABEL_248:
        v290 = 0;
        if (v274 >= v66)
        {
          goto LABEL_249;
        }

        goto LABEL_257;
      }

LABEL_256:
      v290 = *v287;
      v287 = (v287 + 2 * v234);
      ++v232;
      if (v274 >= v66)
      {
LABEL_249:
        v291 = 0;
        if (v276 >= v66)
        {
          goto LABEL_250;
        }

        goto LABEL_258;
      }

LABEL_257:
      v291 = *v287;
      v287 = (v287 + 2 * v234);
      ++v232;
      if (v276 >= v66)
      {
LABEL_250:
        v292 = 0;
        if (v277 >= v66)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      v292 = *v287;
      v287 = (v287 + 2 * v234);
      ++v232;
      if (v277 >= v66)
      {
LABEL_251:
        *&v293 = 0;
        if (v278 >= v66)
        {
          goto LABEL_260;
        }

        goto LABEL_242;
      }

LABEL_259:
      *&v293 = *v287;
      v287 = (v287 + 2 * v234);
      ++v232;
      if (v278 >= v66)
      {
LABEL_260:
        v280 = 0;
        goto LABEL_243;
      }

LABEL_242:
      v280 = *v287;
      ++v232;
LABEL_243:
      v281 = v288;
      *(&v289 + 1) = v290;
      v282 = v292;
      v283 = v289;
      *(&v293 + 1) = v280;
      v284 = v293;
      v285.i64[0] = vqtbl2q_s8(*&v286, xmmword_239D7E3E0).u64[0];
      *&a6 = vqtbl2q_s8(*&v291, xmmword_239D7E3E0).u64[0];
      *&v285.i64[1] = a6;
      *v267 = v285;
      v267 = (v267 + v235);
      v268 = (v268 + 2);
      if (!--v279)
      {
        v239 = 2 * v7;
        v237 = v7 - 3;
        v269 = v7 - 3;
        v240 = v527;
        v247 = v498;
        v243 = v501;
        v248 = v495;
        if (v505 < v7)
        {
          goto LABEL_262;
        }

LABEL_233:
        ++v257;
        ++v258;
        v256 += v7;
        v245 += v239;
        if (v257 != v535)
        {
          goto LABEL_234;
        }

        v246 = v487 + 1;
        v244 = &v481[v463];
        v256 = &v484[v461];
        v245 = v490 + v459;
        if (v487 + 1 != v532)
        {
          goto LABEL_230;
        }

        v243 += v232 * v531;
        v242 = v478 + 8;
        v244 = (v456 + v448);
        if (v478 + 8 < v449)
        {
          goto LABEL_228;
        }

        v322 = v438;
        result = v528;
        v231 = v443;
        if (v438 >= v528)
        {
          goto LABEL_222;
        }

LABEL_324:
        if (v532)
        {
          v520 = v322 + v231 * result;
          if (v535)
          {
            v323 = 0;
            v324 = 0;
            v524 = v322 | 1;
            v514 = v520 + 2;
            v517 = v520 + 1;
            v325 = v322 | 2;
            v511 = v520 + 3;
            v326 = v322 | 3;
            v508 = v520 + 4;
            v327 = v322 | 4;
            v502 = v520 + 5;
            v328 = v322 | 5;
            v499 = v520 + 6;
            v329 = v322 | 6;
            v496 = v520 + 7;
            v330 = v322 | 7;
            v491 = &v243[v493];
            v488 = &v243[v437];
            v485 = &v243[v436];
            v482 = &v243[v432];
            v479 = &v243[v435];
            v476 = &v243[v434];
            v473 = &v243[v433];
            v331 = v243;
LABEL_330:
            v452 = v324;
            v454 = v323;
            v332 = 0;
            v333 = v323;
            v450 = v331;
            v334 = v331;
            v457 = v244;
            v335 = v244;
            while (2)
            {
              v469 = v334;
              v471 = v332;
              v343 = v335;
              v465 = v333;
              v467 = v335;
              v344 = v237;
              v345 = v334;
              if (v7 < 4)
              {
                v346 = 0;
                v347 = v334;
                v237 = v7 - 3;
                v342 = v332;
                if (v7 <= 0)
                {
                  goto LABEL_334;
                }

LABEL_397:
                if (v527 == 1)
                {
                  v375 = v346 + 1;
                  v376 = v346 + 2;
                  v377 = &v347[v234];
                  if (v524 >= result)
                  {
                    v382 = 0;
                    v383 = &v377[v234];
                    if (v325 < result)
                    {
                      goto LABEL_424;
                    }
                  }

                  else
                  {
                    if (v375 >= v7)
                    {
                      v378 = 0;
                      if (v376 < v7)
                      {
                        goto LABEL_422;
                      }

LABEL_401:
                      v379 = 0;
                    }

                    else
                    {
                      v378 = v377[1];
                      if (v376 >= v7)
                      {
                        goto LABEL_401;
                      }

LABEL_422:
                      v379 = v377[2];
                    }

                    LOWORD(v382) = *v377;
                    WORD1(v382) = v378;
                    HIDWORD(v382) = v379;
                    result = v528;
                    v383 = &v377[v234];
                    if (v325 < v528)
                    {
LABEL_424:
                      if (v375 >= v7)
                      {
                        v401 = 0;
                        if (v376 < v7)
                        {
                          goto LABEL_435;
                        }

LABEL_426:
                        v402 = 0;
                      }

                      else
                      {
                        v401 = v383[1];
                        if (v376 >= v7)
                        {
                          goto LABEL_426;
                        }

LABEL_435:
                        v402 = v383[2];
                      }

                      LOWORD(v384) = *v383;
                      WORD1(v384) = v401;
                      HIDWORD(v384) = v402;
                      result = v528;
                      v385 = &v383[v234];
                      if (v326 < v528)
                      {
LABEL_437:
                        if (v375 >= v7)
                        {
                          v405 = 0;
                          if (v376 < v7)
                          {
                            goto LABEL_442;
                          }

LABEL_439:
                          v406 = 0;
                        }

                        else
                        {
                          v405 = v385[1];
                          if (v376 >= v7)
                          {
                            goto LABEL_439;
                          }

LABEL_442:
                          v406 = v385[2];
                        }

                        LOWORD(v386) = *v385;
                        WORD1(v386) = v405;
                        HIDWORD(v386) = v406;
                        result = v528;
                        LOWORD(a6) = *v347;
                        v387 = &v385[v234];
                        if (v327 < v528)
                        {
LABEL_444:
                          if (v375 >= v7)
                          {
                            v407 = 0;
                            if (v376 < v7)
                            {
                              goto LABEL_448;
                            }

LABEL_446:
                            v408 = 0;
                          }

                          else
                          {
                            v407 = v387[1];
                            if (v376 >= v7)
                            {
                              goto LABEL_446;
                            }

LABEL_448:
                            v408 = v387[2];
                          }

                          LOWORD(v388) = *v387;
                          WORD1(v388) = v407;
                          HIDWORD(v388) = v408;
                          result = v528;
                          v389 = &v387[v234];
                          if (v328 < v528)
                          {
LABEL_450:
                            if (v375 >= v7)
                            {
                              v409 = 0;
                              if (v376 < v7)
                              {
                                goto LABEL_454;
                              }

LABEL_452:
                              v410 = 0;
                            }

                            else
                            {
                              v409 = v389[1];
                              if (v376 >= v7)
                              {
                                goto LABEL_452;
                              }

LABEL_454:
                              v410 = v389[2];
                            }

                            LOWORD(v390) = *v389;
                            WORD1(v390) = v409;
                            HIDWORD(v390) = v410;
                            result = v528;
                            v391 = &v389[v234];
                            if (v329 < v528)
                            {
LABEL_456:
                              if (v375 >= v7)
                              {
                                v411 = 0;
                                if (v376 < v7)
                                {
                                  goto LABEL_460;
                                }

LABEL_458:
                                v412 = 0;
                              }

                              else
                              {
                                v411 = v391[1];
                                if (v376 >= v7)
                                {
                                  goto LABEL_458;
                                }

LABEL_460:
                                v412 = v391[2];
                              }

                              LOWORD(v392) = *v391;
                              WORD1(v392) = v411;
                              DWORD1(v392) = v412;
                              result = v528;
                              if (v330 < v528)
                              {
LABEL_462:
                                v413 = &v391[v234];
                                if (v375 >= v7)
                                {
                                  v414 = 0;
                                  if (v376 < v7)
                                  {
                                    goto LABEL_466;
                                  }

LABEL_464:
                                  v415 = 0;
                                }

                                else
                                {
                                  v414 = v413[1];
                                  if (v376 >= v7)
                                  {
                                    goto LABEL_464;
                                  }

LABEL_466:
                                  v415 = v413[2];
                                }

                                LOWORD(v336) = *v413;
                                WORD1(v336) = v414;
                                HIDWORD(v336) = v415;
LABEL_332:
                                v337 = v382;
                                v338 = v386;
                                v339 = v390;
                                *(&v392 + 1) = v336;
                                v340 = v392;
                                v341.i64[0] = vqtbl2q_s8(*&a6, xmmword_239D7E3E0).u64[0];
                                *&a6 = vqtbl2q_s8(*&v388, xmmword_239D7E3E0).u64[0];
                                *&v341.i64[1] = a6;
                                v232 = 8;
LABEL_333:
                                *v343 = v341;
                                v342 = v471;
                                goto LABEL_334;
                              }

LABEL_331:
                              v336 = 0;
                              goto LABEL_332;
                            }

LABEL_411:
                            *&v392 = 0;
                            if (v330 < result)
                            {
                              goto LABEL_462;
                            }

                            goto LABEL_331;
                          }

LABEL_410:
                          v390 = 0;
                          v391 = &v389[v234];
                          if (v329 < result)
                          {
                            goto LABEL_456;
                          }

                          goto LABEL_411;
                        }

LABEL_409:
                        v388 = 0;
                        v389 = &v387[v234];
                        if (v328 < result)
                        {
                          goto LABEL_450;
                        }

                        goto LABEL_410;
                      }

LABEL_408:
                      v386 = 0;
                      LOWORD(a6) = *v347;
                      v387 = &v385[v234];
                      if (v327 < result)
                      {
                        goto LABEL_444;
                      }

                      goto LABEL_409;
                    }
                  }

                  v384 = 0;
                  v385 = &v383[v234];
                  if (v326 < result)
                  {
                    goto LABEL_437;
                  }

                  goto LABEL_408;
                }

                if (v520 % v534 >= v66)
                {
                  v232 = 0;
                  v393 = 0;
                  if (v517 % v534 < v66)
                  {
                    goto LABEL_430;
                  }
                }

                else
                {
                  if (v346 + 1 >= v7)
                  {
                    v380 = 0;
                    if (v346 + 2 < v7)
                    {
                      goto LABEL_428;
                    }

LABEL_405:
                    v381 = 0;
                  }

                  else
                  {
                    v380 = v347[1];
                    if (v346 + 2 >= v7)
                    {
                      goto LABEL_405;
                    }

LABEL_428:
                    v381 = v347[2];
                  }

                  LOWORD(v393) = *v347;
                  WORD1(v393) = v380;
                  HIDWORD(v393) = v381;
                  v347 += v234;
                  v232 = 1;
                  result = v528;
                  if (v517 % v534 < v66)
                  {
LABEL_430:
                    if (v524 >= result)
                    {
                      v394 = 0;
                    }

                    else
                    {
                      if (v346 + 1 >= v7)
                      {
                        v403 = 0;
                        if (v346 + 2 < v7)
                        {
                          goto LABEL_469;
                        }

LABEL_433:
                        v404 = 0;
                      }

                      else
                      {
                        v403 = v347[1];
                        if (v346 + 2 >= v7)
                        {
                          goto LABEL_433;
                        }

LABEL_469:
                        v404 = v347[2];
                      }

                      LOWORD(v394) = *v347;
                      WORD1(v394) = v403;
                      HIDWORD(v394) = v404;
                      result = v528;
                    }

                    v347 += v234;
                    ++v232;
                    if (v514 % v534 < v66)
                    {
LABEL_472:
                      if (v325 >= result)
                      {
                        *&v395 = 0;
                      }

                      else
                      {
                        if (v346 + 1 >= v7)
                        {
                          v416 = 0;
                          if (v346 + 2 < v7)
                          {
                            goto LABEL_478;
                          }

LABEL_475:
                          v417 = 0;
                        }

                        else
                        {
                          v416 = v347[1];
                          if (v346 + 2 >= v7)
                          {
                            goto LABEL_475;
                          }

LABEL_478:
                          v417 = v347[2];
                        }

                        LOWORD(v395) = *v347;
                        WORD1(v395) = v416;
                        DWORD1(v395) = v417;
                        result = v528;
                      }

                      v347 += v234;
                      ++v232;
                      if (v511 % v534 < v66)
                      {
LABEL_481:
                        if (v326 >= result)
                        {
                          v396 = 0;
                        }

                        else
                        {
                          if (v346 + 1 >= v7)
                          {
                            v418 = 0;
                            if (v346 + 2 < v7)
                            {
                              goto LABEL_487;
                            }

LABEL_484:
                            v419 = 0;
                          }

                          else
                          {
                            v418 = v347[1];
                            if (v346 + 2 >= v7)
                            {
                              goto LABEL_484;
                            }

LABEL_487:
                            v419 = v347[2];
                          }

                          LOWORD(v396) = *v347;
                          WORD1(v396) = v418;
                          HIDWORD(v396) = v419;
                          result = v528;
                        }

                        v347 += v234;
                        ++v232;
                        if (v508 % v534 < v66)
                        {
LABEL_490:
                          if (v327 >= result)
                          {
                            v397 = 0;
                          }

                          else
                          {
                            if (v346 + 1 >= v7)
                            {
                              v420 = 0;
                              if (v346 + 2 < v7)
                              {
                                goto LABEL_496;
                              }

LABEL_493:
                              v421 = 0;
                            }

                            else
                            {
                              v420 = v347[1];
                              if (v346 + 2 >= v7)
                              {
                                goto LABEL_493;
                              }

LABEL_496:
                              v421 = v347[2];
                            }

                            LOWORD(v397) = *v347;
                            WORD1(v397) = v420;
                            HIDWORD(v397) = v421;
                            result = v528;
                          }

                          v347 += v234;
                          ++v232;
                          if (v502 % v534 < v66)
                          {
LABEL_499:
                            if (v328 >= result)
                            {
                              v398 = 0;
                            }

                            else
                            {
                              if (v346 + 1 >= v7)
                              {
                                v422 = 0;
                                if (v346 + 2 < v7)
                                {
                                  goto LABEL_505;
                                }

LABEL_502:
                                v423 = 0;
                              }

                              else
                              {
                                v422 = v347[1];
                                if (v346 + 2 >= v7)
                                {
                                  goto LABEL_502;
                                }

LABEL_505:
                                v423 = v347[2];
                              }

                              LOWORD(v398) = *v347;
                              WORD1(v398) = v422;
                              HIDWORD(v398) = v423;
                            }

                            v347 += v234;
                            ++v232;
                            if (v499 % v534 < v66)
                            {
LABEL_508:
                              if (v329 >= result)
                              {
                                *&v399 = 0;
                              }

                              else
                              {
                                if (v346 + 1 >= v7)
                                {
                                  v424 = 0;
                                  if (v346 + 2 < v7)
                                  {
                                    goto LABEL_514;
                                  }

LABEL_511:
                                  v425 = 0;
                                }

                                else
                                {
                                  v424 = v347[1];
                                  if (v346 + 2 >= v7)
                                  {
                                    goto LABEL_511;
                                  }

LABEL_514:
                                  v425 = v347[2];
                                }

                                LOWORD(v399) = *v347;
                                WORD1(v399) = v424;
                                DWORD1(v399) = v425;
                              }

                              v347 += v234;
                              ++v232;
                              if (v496 % v534 < v66)
                              {
LABEL_517:
                                if (v330 >= result)
                                {
                                  v400 = 0;
                                }

                                else
                                {
                                  if (v346 + 1 >= v7)
                                  {
                                    v426 = 0;
                                    if (v346 + 2 < v7)
                                    {
                                      goto LABEL_523;
                                    }

LABEL_520:
                                    v427 = 0;
                                  }

                                  else
                                  {
                                    v426 = v347[1];
                                    if (v346 + 2 >= v7)
                                    {
                                      goto LABEL_520;
                                    }

LABEL_523:
                                    v427 = v347[2];
                                  }

                                  LOWORD(v400) = *v347;
                                  WORD1(v400) = v426;
                                  HIDWORD(v400) = v427;
                                }

                                ++v232;
LABEL_526:
                                v428 = v394;
                                *(&v395 + 1) = v396;
                                v429 = v398;
                                *(&v399 + 1) = v400;
                                v430 = v395;
                                v431 = v399;
                                v341.i64[0] = vqtbl2q_s8(*&v393, xmmword_239D7E3E0).u64[0];
                                *&a6 = vqtbl2q_s8(*&v397, xmmword_239D7E3E0).u64[0];
                                *&v341.i64[1] = a6;
                                goto LABEL_333;
                              }

LABEL_420:
                              v400 = 0;
                              goto LABEL_526;
                            }

LABEL_419:
                            *&v399 = 0;
                            if (v496 % v534 < v66)
                            {
                              goto LABEL_517;
                            }

                            goto LABEL_420;
                          }

LABEL_418:
                          v398 = 0;
                          if (v499 % v534 < v66)
                          {
                            goto LABEL_508;
                          }

                          goto LABEL_419;
                        }

LABEL_417:
                        v397 = 0;
                        if (v502 % v534 < v66)
                        {
                          goto LABEL_499;
                        }

                        goto LABEL_418;
                      }

LABEL_416:
                      v396 = 0;
                      if (v508 % v534 < v66)
                      {
                        goto LABEL_490;
                      }

                      goto LABEL_417;
                    }

LABEL_415:
                    *&v395 = 0;
                    if (v511 % v534 < v66)
                    {
                      goto LABEL_481;
                    }

                    goto LABEL_416;
                  }
                }

                v394 = 0;
                if (v514 % v534 < v66)
                {
                  goto LABEL_472;
                }

                goto LABEL_415;
              }

LABEL_341:
              v355 = v243;
              v356 = (v243 + v333);
              if (v527 == 1)
              {
                if (v524 >= result)
                {
                  v357 = 0;
                  if (v325 < result)
                  {
                    goto LABEL_360;
                  }

LABEL_344:
                  v358 = 0;
                  if (v326 >= result)
                  {
                    goto LABEL_345;
                  }

LABEL_361:
                  v359 = *(v485 + v333);
                  if (v327 < result)
                  {
                    goto LABEL_362;
                  }

LABEL_346:
                  v360 = 0;
                  if (v328 >= result)
                  {
                    goto LABEL_347;
                  }

LABEL_363:
                  v361 = *(v479 + v333);
                  if (v329 < result)
                  {
                    goto LABEL_364;
                  }

LABEL_348:
                  *&v362 = 0;
                  if (v330 < result)
                  {
                    goto LABEL_338;
                  }

LABEL_365:
                  v348 = 0;
                }

                else
                {
                  v357 = *(v491 + v333);
                  if (v325 >= result)
                  {
                    goto LABEL_344;
                  }

LABEL_360:
                  v358 = *(v488 + v333);
                  if (v326 < result)
                  {
                    goto LABEL_361;
                  }

LABEL_345:
                  v359 = 0;
                  if (v327 >= result)
                  {
                    goto LABEL_346;
                  }

LABEL_362:
                  v360 = *(v482 + v333);
                  if (v328 < result)
                  {
                    goto LABEL_363;
                  }

LABEL_347:
                  v361 = 0;
                  if (v329 >= result)
                  {
                    goto LABEL_348;
                  }

LABEL_364:
                  *&v362 = *(v476 + v333);
                  if (v330 >= result)
                  {
                    goto LABEL_365;
                  }

LABEL_338:
                  v348 = *(v473 + v333);
                }

                v349 = *v356;
                v350 = v357;
                v351 = v359;
                v352 = v361;
                *(&v362 + 1) = v348;
                v353 = v362;
                v354.i64[0] = vqtbl2q_s8(*(&v358 - 2), xmmword_239D7E3E0).u64[0];
                *&a6 = vqtbl2q_s8(*&v360, xmmword_239D7E3E0).u64[0];
                *&v354.i64[1] = a6;
                v232 = 8;
                v243 = v355;
LABEL_340:
                *v343 = v354;
                v343 = (v343 + v235);
                ++v345;
                v333 += 2;
                if (!--v344)
                {
                  v347 = (v243 + v333);
                  v237 = v7 - 3;
                  v346 = v7 - 3;
                  v342 = v332;
                  if (v505 < v7)
                  {
                    goto LABEL_397;
                  }

LABEL_334:
                  v335 = v467 + 1;
                  v334 = &v469[v7];
                  v239 = 2 * v7;
                  v333 = v465 + 2 * v7;
                  v332 = v342 + 1;
                  if (v342 + 1 != v535)
                  {
                    continue;
                  }

                  v324 = v452 + 1;
                  v244 = &v457[v463];
                  v331 = &v450[v461];
                  v323 = v454 + v459;
                  if (v452 + 1 == v532)
                  {
                    goto LABEL_222;
                  }

                  goto LABEL_330;
                }

                goto LABEL_341;
              }

              break;
            }

            if (v520 % v534 >= v66)
            {
              v232 = 0;
              v363 = 0;
              if (v517 % v534 < v66)
              {
                goto LABEL_367;
              }

LABEL_352:
              v364 = 0;
              if (v514 % v534 >= v66)
              {
                goto LABEL_353;
              }

LABEL_371:
              if (v325 >= result)
              {
                *&v365 = 0;
              }

              else
              {
                *&v365 = *v356;
              }

              v356 = (v356 + 2 * v531);
              ++v232;
              if (v511 % v534 < v66)
              {
                goto LABEL_375;
              }

LABEL_354:
              v366 = 0;
              if (v508 % v534 >= v66)
              {
                goto LABEL_355;
              }

LABEL_379:
              if (v327 >= result)
              {
                v367 = 0;
              }

              else
              {
                v367 = *v356;
              }

              v356 = (v356 + 2 * v531);
              ++v232;
              if (v502 % v534 < v66)
              {
                goto LABEL_383;
              }

LABEL_356:
              v368 = 0;
              if (v499 % v534 >= v66)
              {
                goto LABEL_357;
              }

LABEL_387:
              if (v329 >= result)
              {
                *&v369 = 0;
              }

              else
              {
                *&v369 = *v356;
              }

              v356 = (v356 + 2 * v531);
              ++v232;
              if (v496 % v534 < v66)
              {
                goto LABEL_391;
              }

LABEL_358:
              v370 = 0;
              v243 = v355;
            }

            else
            {
              v363 = *v356;
              v356 = &v345[v531];
              v232 = 1;
              if (v517 % v534 >= v66)
              {
                goto LABEL_352;
              }

LABEL_367:
              if (v524 >= result)
              {
                v364 = 0;
              }

              else
              {
                v364 = *v356;
              }

              v356 = (v356 + 2 * v531);
              ++v232;
              if (v514 % v534 < v66)
              {
                goto LABEL_371;
              }

LABEL_353:
              *&v365 = 0;
              if (v511 % v534 >= v66)
              {
                goto LABEL_354;
              }

LABEL_375:
              if (v326 >= result)
              {
                v366 = 0;
              }

              else
              {
                v366 = *v356;
              }

              v356 = (v356 + 2 * v531);
              ++v232;
              if (v508 % v534 < v66)
              {
                goto LABEL_379;
              }

LABEL_355:
              v367 = 0;
              if (v502 % v534 >= v66)
              {
                goto LABEL_356;
              }

LABEL_383:
              if (v328 >= result)
              {
                v368 = 0;
              }

              else
              {
                v368 = *v356;
              }

              v356 = (v356 + 2 * v531);
              ++v232;
              if (v499 % v534 < v66)
              {
                goto LABEL_387;
              }

LABEL_357:
              *&v369 = 0;
              if (v496 % v534 >= v66)
              {
                goto LABEL_358;
              }

LABEL_391:
              if (v330 >= result)
              {
                v370 = 0;
              }

              else
              {
                v370 = *v356;
              }

              v243 = v355;
              ++v232;
            }

            v371 = v364;
            *(&v365 + 1) = v366;
            v372 = v368;
            *(&v369 + 1) = v370;
            v373 = v365;
            v374 = v369;
            v354.i64[0] = vqtbl2q_s8(*&v363, xmmword_239D7E3E0).u64[0];
            *&a6 = vqtbl2q_s8(*&v367, xmmword_239D7E3E0).u64[0];
            *&v354.i64[1] = a6;
            goto LABEL_340;
          }
        }

LABEL_222:
        v231 = v443 + 1;
        a1 = (a1 + 2 * v441);
        a2 = &v446[v439];
        v241 = &v442[v440];
        v240 = v527;
        if (v443 + 1 == v447)
        {
          return result;
        }

        goto LABEL_223;
      }
    }
  }

  if (!v9)
  {
    if (!v447)
    {
      return result;
    }

    v199 = 0;
    v200 = v7 == 0;
    if (!v532)
    {
      v200 = 1;
    }

    v201 = v535 == 0;
    if (!v535)
    {
      v200 = 1;
    }

    v202 = v532 * v535;
    if (!v532)
    {
      v201 = 1;
    }

    v203 = result - 7;
    v204 = result * v7 * v202;
    v205 = result & 0xFFFFFFFFFFFFFFF8;
    v206 = result * (2 * v202 - 2);
    v207 = a2 + v206 + 8;
    v208 = v202 * v528;
    v209 = 2 * v208 * v7;
    v210 = 2 * v208;
    v211 = v206 + 6;
    result = *(a3 + 32);
    while (1)
    {
      if (result < 8)
      {
        v222 = 0;
        v214 = a2;
        if (!v7)
        {
          goto LABEL_181;
        }
      }

      else
      {
        if (v200)
        {
          goto LABEL_181;
        }

        v212 = 0;
        v213 = v207;
        v214 = a2;
        do
        {
          v215 = 0;
          v216 = v213;
          do
          {
            v217 = 0;
            v218 = v216;
            do
            {
              v219 = v218;
              v220 = v535;
              v221 = a1;
              do
              {
                a1 = v221 + 1;
                v221->i16[0] = *(v219 - 4);
                v221->i16[1] = *(v219 - 3);
                v221->i16[2] = *(v219 - 2);
                v221->i16[3] = *(v219 - 1);
                v221->i16[4] = *v219;
                v221->i16[5] = v219[1];
                v221->i16[6] = v219[2];
                v221->i16[7] = v219[3];
                v219 -= v528;
                ++v221;
                --v220;
              }

              while (v220);
              ++v217;
              v218 -= v535 * v528;
            }

            while (v217 != v532);
            ++v215;
            v216 = (v216 + v210);
          }

          while (v215 != v7);
          v212 += 8;
          v214 += 16;
          v213 += 16;
        }

        while (v212 < v203);
        v222 = v205;
        result = v528;
        if (!v7)
        {
          goto LABEL_181;
        }
      }

      v223 = __OFSUB__(result, v222);
      v224 = result - v222;
      if (!((v224 < 0) ^ v223 | (v224 == 0)) && !v201)
      {
        v225 = 0;
        v226 = &v214[v211];
        do
        {
          v227 = 0;
          v228 = v226;
          do
          {
            v229 = v535;
            v230 = v228;
            do
            {
              if (v224 <= 3)
              {
                switch(v224)
                {
                  case 1:
                    goto LABEL_207;
                  case 2:
                    goto LABEL_206;
                  case 3:
                    goto LABEL_205;
                }
              }

              else
              {
                if (v224 <= 5)
                {
                  if (v224 != 4)
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_204;
                }

                if (v224 == 6)
                {
                  goto LABEL_202;
                }

                if (v224 == 7)
                {
                  a1->i16[6] = v230[3];
LABEL_202:
                  a1->i16[5] = v230[2];
LABEL_203:
                  a1->i16[4] = v230[1];
LABEL_204:
                  a1->i16[3] = *v230;
LABEL_205:
                  a1->i16[2] = *(v230 - 1);
LABEL_206:
                  a1->i16[1] = *(v230 - 2);
LABEL_207:
                  a1->i16[0] = *(v230 - 3);
                }
              }

              ++a1;
              v230 -= v528;
              --v229;
              result = v528;
            }

            while (v229);
            ++v227;
            v228 -= v535 * v528;
          }

          while (v227 != v532);
          ++v225;
          v226 += v210;
        }

        while (v225 != v7);
      }

LABEL_181:
      ++v199;
      a2 += v204;
      v207 += v209;
      if (v199 == v447)
      {
        return result;
      }
    }
  }

  if (v447)
  {
    v10 = 0;
    v11 = v7 == 0;
    if (!v532)
    {
      v11 = 1;
    }

    v12 = v535 == 0;
    if (v535)
    {
      v13 = v11;
    }

    else
    {
      v13 = 1;
    }

    v14 = v532 * v535;
    if (!v532)
    {
      v12 = 1;
    }

    v472 = v12;
    v504 = result - 7;
    v15 = -v535;
    v466 = result & 0xFFFFFFFFFFFFFFF8;
    v503 = 16 * v14;
    v16 = &a2[8 * v14 - 1];
    v477 = 2 * v14 * result * v7;
    v17 = 2 * v14 * result;
    v18 = -2 * v535;
    v19 = result * v7 * v14;
    v464 = 14 * v14 - 2;
    v20 = a2 + v464;
    v462 = 12 * v14 - 2;
    v21 = a2 + v462;
    v22 = &a2[5 * v14 - 1];
    v458 = 8 * v14 - 2;
    v460 = 10 * v14 - 2;
    v23 = a2 + v458;
    v24 = &a2[3 * v14 - 1];
    v453 = 4 * v14 - 2;
    v455 = 6 * v14 - 2;
    v25 = a2 + v453;
    v451 = 2 * v14 - 2;
    v26 = a2 + v451;
    v470 = v13;
    v468 = v19;
    do
    {
      v497 = v20;
      v500 = v16;
      v492 = v22;
      v494 = v21;
      v486 = v24;
      v489 = v23;
      v480 = v26;
      v483 = v25;
      if (result < 8)
      {
        v45 = 0;
        v31 = a2;
        v27 = a2;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v13)
        {
          v27 = a2;
          goto LABEL_13;
        }

        v474 = v10;
        v28 = 0;
        v29 = v21;
        v30 = v16;
        v444 = a2;
        v31 = a2;
        do
        {
          v533 = v28;
          v536 = v31;
          v32 = 0;
          v529 = v26;
          v521 = v24;
          v525 = v25;
          v515 = v22;
          v518 = v23;
          v509 = v20;
          v512 = v29;
          v506 = v30;
          do
          {
            v33 = 0;
            v34 = v26;
            v35 = v25;
            v36 = v24;
            v37 = v23;
            v38 = v22;
            v39 = v29;
            v40 = v20;
            v41 = v30;
            do
            {
              v42 = 0;
              v43 = a1;
              do
              {
                a1 = v43 + 1;
                LOWORD(v44) = *(v34 + 2 * v42);
                WORD1(v44) = *(v35 + 2 * v42);
                WORD2(v44) = v36[v42];
                HIWORD(v44) = *(v37 + 2 * v42);
                v43->i64[0] = v44;
                LOWORD(v44) = v38[v42];
                WORD1(v44) = *(v39 + 2 * v42);
                WORD2(v44) = *(v40 + 2 * v42);
                HIWORD(v44) = *(v41 + 2 * v42);
                v43->i64[1] = v44;
                --v42;
                ++v43;
              }

              while (v15 != v42);
              ++v33;
              v41 += v18;
              v40 += v18;
              v39 += v18;
              v38 = (v38 + v18);
              v37 += v18;
              v36 = (v36 + v18);
              v35 += v18;
              v34 += v18;
            }

            while (v33 != v532);
            ++v32;
            v30 += v17;
            v20 += v17;
            v29 += v17;
            v22 = (v22 + v17);
            v23 += v17;
            v24 = (v24 + v17);
            v25 += v17;
            v26 += v17;
          }

          while (v32 != v7);
          v28 = v533 + 8;
          v31 = &v536[v503 / 2];
          v30 = v506 + v503;
          v20 = v509 + v503;
          v29 = v512 + v503;
          v22 = &v515[v503 / 2];
          v23 = v518 + v503;
          v24 = &v521[v503 / 2];
          v25 = v525 + v503;
          v26 = v529 + v503;
        }

        while (v533 + 8 < v504);
        v45 = v466;
        v19 = v468;
        result = v528;
        v10 = v474;
        v13 = v470;
        v27 = v444;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      v46 = result - v45;
      if (result > v45 && !v472)
      {
        v47 = 0;
        v48 = v31 + v464;
        v49 = v31 + v462;
        v50 = v31 + v460;
        v51 = v31 + v458;
        v52 = v31 + v455;
        v53 = v31 + v453;
        v54 = v31 + v451;
        do
        {
          v55 = 0;
          v56 = v54;
          v57 = v53;
          v58 = v52;
          v59 = v51;
          v60 = v50;
          v61 = v49;
          v62 = v48;
          do
          {
            v63 = 0;
            do
            {
              if (v46 <= 3)
              {
                switch(v46)
                {
                  case 1:
                    goto LABEL_39;
                  case 2:
                    goto LABEL_38;
                  case 3:
                    goto LABEL_37;
                }
              }

              else
              {
                if (v46 <= 5)
                {
                  if (v46 != 4)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_36;
                }

                if (v46 == 6)
                {
                  goto LABEL_34;
                }

                if (v46 == 7)
                {
                  a1->i16[6] = *(v62 + 2 * v63);
LABEL_34:
                  a1->i16[5] = *(v61 + 2 * v63);
LABEL_35:
                  a1->i16[4] = *(v60 + 2 * v63);
LABEL_36:
                  a1->i16[3] = *(v59 + 2 * v63);
LABEL_37:
                  a1->i16[2] = *(v58 + 2 * v63);
LABEL_38:
                  a1->i16[1] = *(v57 + 2 * v63);
LABEL_39:
                  a1->i16[0] = *(v56 + 2 * v63);
                }
              }

              ++a1;
              --v63;
            }

            while (v15 != v63);
            ++v55;
            v62 += v18;
            v61 += v18;
            v60 += v18;
            v59 += v18;
            v58 += v18;
            v57 += v18;
            v56 += v18;
          }

          while (v55 != v532);
          ++v47;
          v48 += v17;
          v49 += v17;
          v50 += v17;
          v51 += v17;
          v52 += v17;
          v53 += v17;
          v54 += v17;
        }

        while (v47 != v7);
      }

LABEL_13:
      a2 = &v27[v19];
      ++v10;
      v16 = v500 + v477;
      v20 = v497 + v477;
      v21 = v494 + v477;
      v22 = &v492[v477 / 2];
      v23 = v489 + v477;
      v24 = &v486[v477 / 2];
      v25 = v483 + v477;
      v26 = v480 + v477;
    }

    while (v10 != v447);
  }

  return result;
}

int64x2_t *sub_239C93EE0(int64x2_t *result, unsigned __int16 *a2, uint64_t a3, double a4, double a5, int64x2_t a6)
{
  v6 = *(a3 + 8);
  v582 = *(a3 + 32);
  v554 = *(a3 + 48);
  v656 = *(a3 + 56);
  v651 = *(a3 + 64);
  v7 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v98 = *(a3 + 16);
    v99 = *(a3 + 40);
    v100 = *(a3 + 72);
    v645 = *(a3 + 80);
    if (v7)
    {
      if (v554 && v6 && v656 && v582 && v651)
      {
        v101 = 0;
        v102 = v651 * v98;
        v103 = 32 * v651 * v656;
        v104 = v651 * v6 * v656;
        v105 = 32 * v656;
        v641 = v656 * v99 * v102;
        v106 = 4 * v651 * v656;
        v107 = v656 * v102;
        v108 = v645;
        v654 = 16 * v107;
        v109 = 2 * v651 * v656;
        do
        {
          v110 = 0;
          v648 = v101;
          v111 = v101 * v582;
          v112 = a2;
          v113 = result;
          do
          {
            v114 = v110 + v111;
            if ((v110 + v111) % v108 < v100)
            {
              v115 = 0;
              v116 = v112;
              v117 = v113;
              do
              {
                v118 = 0;
                v119 = v116;
                v120 = v117;
                do
                {
                  v121 = 0;
                  v122 = 0;
                  v123 = 2;
                  v124 = v119;
                  v125 = v120;
                  do
                  {
                    if (v6 >= v123)
                    {
                      v126 = v123;
                    }

                    else
                    {
                      v126 = v6;
                    }

                    v127 = v126 + v121;
                    v128 = v124;
                    v129 = v125;
                    do
                    {
                      v129->i16[0] = *v128;
                      ++v129;
                      v128 = (v128 + v109);
                      --v127;
                    }

                    while (v127);
                    v122 += 2;
                    v125 = (v125 + v103);
                    v124 = (v124 + v106);
                    v123 += 2;
                    v121 -= 2;
                  }

                  while (v122 < v6);
                  ++v118;
                  v120 += 2;
                  ++v119;
                }

                while (v118 != v656);
                ++v115;
                v117 = (v117 + v105);
                v116 += v656;
              }

              while (v115 != v651);
              v112 += v104;
              v108 = v645;
            }

            if ((v110 | 1) < v582)
            {
              v108 = v645;
              if ((v114 + 1) % v645 < v100)
              {
                v130 = 0;
                v131 = &v113->i16[1];
                v132 = v112;
                do
                {
                  v133 = 0;
                  v134 = v132;
                  v135 = v131;
                  do
                  {
                    v136 = 0;
                    v137 = 0;
                    v138 = 2;
                    v139 = v134;
                    v140 = v135;
                    do
                    {
                      v141 = 0;
                      if (v6 >= v138)
                      {
                        v142 = v138;
                      }

                      else
                      {
                        v142 = v6;
                      }

                      v143 = v142 + v136;
                      v144 = v139;
                      do
                      {
                        *&v140[v141] = *v144;
                        v144 = (v144 + v109);
                        v141 += 16;
                        --v143;
                      }

                      while (v143);
                      v137 += 2;
                      v140 += v103;
                      v139 = (v139 + v106);
                      v138 += 2;
                      v136 -= 2;
                    }

                    while (v137 < v6);
                    ++v133;
                    v135 += 16;
                    ++v134;
                  }

                  while (v133 != v656);
                  ++v130;
                  v131 = (v131 + v105);
                  v132 += v656;
                }

                while (v130 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            if ((v110 | 2) < v582)
            {
              v108 = v645;
              if ((v114 + 2) % v645 < v100)
              {
                v145 = 0;
                v146 = &v113->i16[2];
                v147 = v112;
                do
                {
                  v148 = 0;
                  v149 = v147;
                  v150 = v146;
                  do
                  {
                    v151 = 0;
                    v152 = 0;
                    v153 = 2;
                    v154 = v149;
                    v155 = v150;
                    do
                    {
                      v156 = 0;
                      if (v6 >= v153)
                      {
                        v157 = v153;
                      }

                      else
                      {
                        v157 = v6;
                      }

                      v158 = v157 + v151;
                      v159 = v154;
                      do
                      {
                        *&v155[v156] = *v159;
                        v159 = (v159 + v109);
                        v156 += 16;
                        --v158;
                      }

                      while (v158);
                      v152 += 2;
                      v155 += v103;
                      v154 = (v154 + v106);
                      v153 += 2;
                      v151 -= 2;
                    }

                    while (v152 < v6);
                    ++v148;
                    v150 += 16;
                    ++v149;
                  }

                  while (v148 != v656);
                  ++v145;
                  v146 = (v146 + v105);
                  v147 += v656;
                }

                while (v145 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            if ((v110 | 3) < v582)
            {
              v108 = v645;
              if ((v114 + 3) % v645 < v100)
              {
                v160 = 0;
                v161 = &v113->i16[3];
                v162 = v112;
                do
                {
                  v163 = 0;
                  v164 = v162;
                  v165 = v161;
                  do
                  {
                    v166 = 0;
                    v167 = 0;
                    v168 = 2;
                    v169 = v164;
                    v170 = v165;
                    do
                    {
                      v171 = 0;
                      if (v6 >= v168)
                      {
                        v172 = v168;
                      }

                      else
                      {
                        v172 = v6;
                      }

                      v173 = v172 + v166;
                      v174 = v169;
                      do
                      {
                        *&v170[v171] = *v174;
                        v174 = (v174 + v109);
                        v171 += 16;
                        --v173;
                      }

                      while (v173);
                      v167 += 2;
                      v170 += v103;
                      v169 = (v169 + v106);
                      v168 += 2;
                      v166 -= 2;
                    }

                    while (v167 < v6);
                    ++v163;
                    v165 += 16;
                    ++v164;
                  }

                  while (v163 != v656);
                  ++v160;
                  v161 = (v161 + v105);
                  v162 += v656;
                }

                while (v160 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            if ((v110 | 4) < v582)
            {
              v108 = v645;
              if ((v114 + 4) % v645 < v100)
              {
                v175 = 0;
                v176 = &v113->i16[4];
                v177 = v112;
                do
                {
                  v178 = 0;
                  v179 = v177;
                  v180 = v176;
                  do
                  {
                    v181 = 0;
                    v182 = 0;
                    v183 = 2;
                    v184 = v179;
                    v185 = v180;
                    do
                    {
                      v186 = 0;
                      if (v6 >= v183)
                      {
                        v187 = v183;
                      }

                      else
                      {
                        v187 = v6;
                      }

                      v188 = v187 + v181;
                      v189 = v184;
                      do
                      {
                        *&v185[v186] = *v189;
                        v189 = (v189 + v109);
                        v186 += 16;
                        --v188;
                      }

                      while (v188);
                      v182 += 2;
                      v185 += v103;
                      v184 = (v184 + v106);
                      v183 += 2;
                      v181 -= 2;
                    }

                    while (v182 < v6);
                    ++v178;
                    v180 += 16;
                    ++v179;
                  }

                  while (v178 != v656);
                  ++v175;
                  v176 = (v176 + v105);
                  v177 += v656;
                }

                while (v175 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            if ((v110 | 5) < v582)
            {
              v108 = v645;
              if ((v114 + 5) % v645 < v100)
              {
                v190 = 0;
                v191 = &v113->i16[5];
                v192 = v112;
                do
                {
                  v193 = 0;
                  v194 = v192;
                  v195 = v191;
                  do
                  {
                    v196 = 0;
                    v197 = 0;
                    v198 = 2;
                    v199 = v194;
                    v200 = v195;
                    do
                    {
                      v201 = 0;
                      if (v6 >= v198)
                      {
                        v202 = v198;
                      }

                      else
                      {
                        v202 = v6;
                      }

                      v203 = v202 + v196;
                      v204 = v199;
                      do
                      {
                        *&v200[v201] = *v204;
                        v204 = (v204 + v109);
                        v201 += 16;
                        --v203;
                      }

                      while (v203);
                      v197 += 2;
                      v200 += v103;
                      v199 = (v199 + v106);
                      v198 += 2;
                      v196 -= 2;
                    }

                    while (v197 < v6);
                    ++v193;
                    v195 += 16;
                    ++v194;
                  }

                  while (v193 != v656);
                  ++v190;
                  v191 = (v191 + v105);
                  v192 += v656;
                }

                while (v190 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            if ((v110 | 6) < v582)
            {
              v108 = v645;
              if ((v114 + 6) % v645 < v100)
              {
                v205 = 0;
                v206 = &v113->i16[6];
                v207 = v112;
                do
                {
                  v208 = 0;
                  v209 = v207;
                  v210 = v206;
                  do
                  {
                    v211 = 0;
                    v212 = 0;
                    v213 = 2;
                    v214 = v209;
                    v215 = v210;
                    do
                    {
                      v216 = 0;
                      if (v6 >= v213)
                      {
                        v217 = v213;
                      }

                      else
                      {
                        v217 = v6;
                      }

                      v218 = v217 + v211;
                      v219 = v214;
                      do
                      {
                        *&v215[v216] = *v219;
                        v219 = (v219 + v109);
                        v216 += 16;
                        --v218;
                      }

                      while (v218);
                      v212 += 2;
                      v215 += v103;
                      v214 = (v214 + v106);
                      v213 += 2;
                      v211 -= 2;
                    }

                    while (v212 < v6);
                    ++v208;
                    v210 += 16;
                    ++v209;
                  }

                  while (v208 != v656);
                  ++v205;
                  v206 = (v206 + v105);
                  v207 += v656;
                }

                while (v205 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            if ((v110 | 7) < v582)
            {
              v108 = v645;
              if ((v114 + 7) % v645 < v100)
              {
                v220 = 0;
                v221 = &v113->i16[7];
                v222 = v112;
                do
                {
                  v223 = 0;
                  v224 = v222;
                  v225 = v221;
                  do
                  {
                    v226 = 0;
                    v227 = 0;
                    v228 = 2;
                    v229 = v224;
                    v230 = v225;
                    do
                    {
                      v231 = 0;
                      if (v6 >= v228)
                      {
                        v232 = v228;
                      }

                      else
                      {
                        v232 = v6;
                      }

                      v233 = v232 + v226;
                      v234 = v229;
                      do
                      {
                        *&v230[v231] = *v234;
                        v234 = (v234 + v109);
                        v231 += 16;
                        --v233;
                      }

                      while (v233);
                      v227 += 2;
                      v230 += v103;
                      v229 = (v229 + v106);
                      v228 += 2;
                      v226 -= 2;
                    }

                    while (v227 < v6);
                    ++v223;
                    v225 += 16;
                    ++v224;
                  }

                  while (v223 != v656);
                  ++v220;
                  v221 = (v221 + v105);
                  v222 += v656;
                }

                while (v220 != v651);
                v112 += v104;
                v108 = v645;
              }
            }

            v110 += 8;
            v113 = (v113 + v654);
          }

          while (v110 < v582);
          ++v101;
          result = (result + 2 * v641);
          a2 += v656 * v582 * v651 * v6;
        }

        while (v648 + 1 != v554);
      }

      return result;
    }

    if (!v554)
    {
      return result;
    }

    v278 = 0;
    v279 = 0;
    v280 = v651 * v6 * v656;
    v655 = 32 * v651 * v656;
    v281 = v651 * v656 * v6;
    v282 = v6 - 3;
    v581 = 2 * v656;
    v283 = v656 * v651 * v98;
    v549 = v283 * v99;
    v563 = v283;
    v284 = v651 * v656 * v98;
    v285 = *(a3 + 80);
    v547 = 2 * v99 * v284;
    v578 = 2 * v656 * v6;
    v580 = v656 * v6;
    v286 = 2 * v6;
    v636 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
    v287 = &result->i8[v284 * (16 * ((v582 - 8) >> 3) + 16)];
    v541 = 3 * v281;
    v543 = 2 * v281;
    v537 = 6 * v281;
    v539 = 5 * v281;
    v642 = *(a3 + 88);
    v598 = v281;
    v535 = 7 * v281;
    v650 = v281;
    v533 = 4 * v281;
LABEL_314:
    v551 = v287;
    v553 = v278;
    v566 = a2;
    if (v582 < 8)
    {
      v383 = 0;
      v290 = result;
      v289 = a2;
      if (v582 > 0)
      {
        goto LABEL_435;
      }

      goto LABEL_313;
    }

    if (!v651)
    {
      goto LABEL_313;
    }

    v583 = v278 * v582;
    if (!v656)
    {
      goto LABEL_313;
    }

    v288 = 0;
    v289 = a2;
    v290 = result;
LABEL_319:
    v291 = 0;
    v292 = 0;
    v586 = v288;
    v629 = v288 + v583 + 1;
    v626 = v288 + v583 + 2;
    v623 = v288 + v583 + 3;
    v620 = v288 + v583 + 4;
    v617 = v288 + v583 + 5;
    v633 = v288 + v583;
    v611 = v288 + v583 + 7;
    v614 = v288 + v583 + 6;
    v293 = &v289[7 * v280];
    v294 = &v289[6 * v280];
    v295 = &v289[5 * v280];
    v296 = &v289[4 * v280];
    v297 = &v289[3 * v280];
    v298 = &v289[2 * v280];
    v299 = &v289[v280];
    v600 = v289;
    v573 = v290;
    v300 = v290;
LABEL_321:
    v594 = v292;
    v596 = v291;
    v301 = 0;
    v589 = v300;
    v592 = v289;
LABEL_326:
    if (v6 < 4)
    {
      v320 = 0;
      v317 = v300;
      v319 = v289;
      if (v6 <= 0)
      {
        goto LABEL_325;
      }

      goto LABEL_355;
    }

    if (v642 == 1)
    {
      v315 = 0;
      v316 = v291;
      v317 = v300;
      do
      {
        v659.val[0].i64[0] = *(v600 + v316);
        v659.val[1].i64[0] = *(v298 + v316);
        v660.val[0].i64[0] = *(v296 + v316);
        v660.val[1].i64[0] = *(v294 + v316);
        v659.val[0].i64[1] = *(v299 + v316);
        v659.val[1].i64[1] = *(v297 + v316);
        v660.val[0].i64[1] = *(v295 + v316);
        v660.val[1].i64[1] = *(v293 + v316);
        v659.val[0] = vqtbl2q_s8(v659, xmmword_239D7E3F0);
        a6 = vqtbl2q_s8(v660, xmmword_239D7E3F0);
        v318 = vzip2q_s64(v659.val[0], a6);
        v659.val[0].i64[1] = a6.i64[0];
        *v317 = v659.val[0];
        v317[1] = v318;
        v315 += 2;
        v317 = (v317 + v655);
        v316 += 4;
      }

      while (v315 < v282);
      v319 = (v600 + v316);
      v279 = 8;
      v320 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
      if (v636 >= v6)
      {
        goto LABEL_325;
      }

LABEL_355:
      if (v642 == 1)
      {
        if ((v320 | 1) < v6)
        {
          v606 = v319[1];
          v302 = &v319[v598];
          v303 = v319[v598 + 1];
          v304 = &v319[v598 + v598];
          v602 = v304[1];
          v305 = &v304[v598];
          v306 = v304[v598 + 1];
          v307 = &v304[v598 + v598];
          v608 = v307[1];
          v308 = &v307[v598];
          v309 = v307[v598 + 1];
          v310 = &v307[v598 + v598];
          v604 = v310[1];
          v311 = &v310[v598];
          v312 = v310[v598 + 1];
        }

        else
        {
          v604 = 0;
          v608 = 0;
          v602 = 0;
          v606 = 0;
          v303 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v302 = &v319[v598];
          v304 = &v319[v598 + v598];
          v305 = &v304[v598];
          v307 = &v304[v598 + v598];
          v308 = &v307[v598];
          v310 = &v307[v598 + v598];
          v311 = &v310[v598];
        }

        a6.i16[0] = *v319;
        a6.i16[1] = *v302;
        a6.i16[2] = *v304;
        a6.i16[3] = *v305;
        a6.i16[4] = v606;
        a6.i16[5] = v303;
        a6.i16[6] = v602;
        a6.i16[7] = v306;
        v313.i16[0] = *v307;
        v313.i16[1] = *v308;
        v313.i16[2] = *v310;
        v313.i16[3] = *v311;
        v313.i16[4] = v608;
        v313.i16[5] = v309;
        v313.i16[6] = v604;
        v313.i16[7] = v312;
        v314 = vzip2q_s64(a6, v313);
        a6.i64[1] = v313.i64[0];
        v279 = 8;
        v285 = v645;
        v286 = 2 * v6;
        goto LABEL_324;
      }

      if (v633 % v285 >= v100)
      {
        v279 = 0;
        v349 = 0;
        if (v629 % v285 < v100)
        {
          goto LABEL_375;
        }
      }

      else
      {
        if ((v320 | 1) >= v6)
        {
          v346 = 0;
          if (v320 + 2 < v6)
          {
            goto LABEL_372;
          }

LABEL_361:
          v347 = 0;
          if (v320 + 3 >= v6)
          {
            goto LABEL_362;
          }

LABEL_373:
          v348 = v319[3];
        }

        else
        {
          v346 = v319[1];
          if (v320 + 2 >= v6)
          {
            goto LABEL_361;
          }

LABEL_372:
          v347 = v319[2];
          if (v320 + 3 < v6)
          {
            goto LABEL_373;
          }

LABEL_362:
          v348 = 0;
        }

        LOWORD(v349) = *v319;
        WORD1(v349) = v346;
        WORD2(v349) = v347;
        HIWORD(v349) = v348;
        v319 += v650;
        v279 = 1;
        v285 = v645;
        if (v629 % v645 < v100)
        {
LABEL_375:
          if ((v320 | 1) >= v6)
          {
            v357 = 0;
            if (v320 + 2 < v6)
            {
              goto LABEL_380;
            }

LABEL_377:
            v358 = 0;
            if (v320 + 3 >= v6)
            {
              goto LABEL_378;
            }

LABEL_381:
            v359 = v319[3];
          }

          else
          {
            v357 = v319[1];
            if (v320 + 2 >= v6)
            {
              goto LABEL_377;
            }

LABEL_380:
            v358 = v319[2];
            if (v320 + 3 < v6)
            {
              goto LABEL_381;
            }

LABEL_378:
            v359 = 0;
          }

          LOWORD(v350) = *v319;
          WORD1(v350) = v357;
          WORD2(v350) = v358;
          HIWORD(v350) = v359;
          v319 += v650;
          ++v279;
          v285 = v645;
          if (v626 % v645 < v100)
          {
LABEL_383:
            if ((v320 | 1) >= v6)
            {
              v360 = 0;
              if (v320 + 2 < v6)
              {
                goto LABEL_388;
              }

LABEL_385:
              v361 = 0;
              if (v320 + 3 >= v6)
              {
                goto LABEL_386;
              }

LABEL_389:
              v362 = v319[3];
            }

            else
            {
              v360 = v319[1];
              if (v320 + 2 >= v6)
              {
                goto LABEL_385;
              }

LABEL_388:
              v361 = v319[2];
              if (v320 + 3 < v6)
              {
                goto LABEL_389;
              }

LABEL_386:
              v362 = 0;
            }

            LOWORD(v351) = *v319;
            WORD1(v351) = v360;
            WORD2(v351) = v361;
            WORD3(v351) = v362;
            v319 += v650;
            ++v279;
            v285 = v645;
            if (v623 % v645 < v100)
            {
LABEL_391:
              if ((v320 | 1) >= v6)
              {
                v363 = 0;
                if (v320 + 2 < v6)
                {
                  goto LABEL_396;
                }

LABEL_393:
                v364 = 0;
                if (v320 + 3 >= v6)
                {
                  goto LABEL_394;
                }

LABEL_397:
                v365 = v319[3];
              }

              else
              {
                v363 = v319[1];
                if (v320 + 2 >= v6)
                {
                  goto LABEL_393;
                }

LABEL_396:
                v364 = v319[2];
                if (v320 + 3 < v6)
                {
                  goto LABEL_397;
                }

LABEL_394:
                v365 = 0;
              }

              LOWORD(v352) = *v319;
              WORD1(v352) = v363;
              WORD2(v352) = v364;
              HIWORD(v352) = v365;
              v319 += v650;
              ++v279;
              v285 = v645;
              if (v620 % v645 < v100)
              {
LABEL_399:
                if ((v320 | 1) >= v6)
                {
                  v366 = 0;
                  if (v320 + 2 < v6)
                  {
                    goto LABEL_404;
                  }

LABEL_401:
                  v367 = 0;
                  if (v320 + 3 >= v6)
                  {
                    goto LABEL_402;
                  }

LABEL_405:
                  v368 = v319[3];
                }

                else
                {
                  v366 = v319[1];
                  if (v320 + 2 >= v6)
                  {
                    goto LABEL_401;
                  }

LABEL_404:
                  v367 = v319[2];
                  if (v320 + 3 < v6)
                  {
                    goto LABEL_405;
                  }

LABEL_402:
                  v368 = 0;
                }

                LOWORD(v353) = *v319;
                WORD1(v353) = v366;
                WORD2(v353) = v367;
                HIWORD(v353) = v368;
                v319 += v650;
                ++v279;
                v285 = v645;
                if (v617 % v645 < v100)
                {
LABEL_407:
                  if ((v320 | 1) >= v6)
                  {
                    v369 = 0;
                    if (v320 + 2 < v6)
                    {
                      goto LABEL_412;
                    }

LABEL_409:
                    v370 = 0;
                    if (v320 + 3 >= v6)
                    {
                      goto LABEL_410;
                    }

LABEL_413:
                    v371 = v319[3];
                  }

                  else
                  {
                    v369 = v319[1];
                    if (v320 + 2 >= v6)
                    {
                      goto LABEL_409;
                    }

LABEL_412:
                    v370 = v319[2];
                    if (v320 + 3 < v6)
                    {
                      goto LABEL_413;
                    }

LABEL_410:
                    v371 = 0;
                  }

                  LOWORD(v354) = *v319;
                  WORD1(v354) = v369;
                  WORD2(v354) = v370;
                  HIWORD(v354) = v371;
                  v319 += v650;
                  ++v279;
                  v285 = v645;
                  if (v614 % v645 < v100)
                  {
LABEL_415:
                    if ((v320 | 1) >= v6)
                    {
                      v372 = 0;
                      if (v320 + 2 < v6)
                      {
                        goto LABEL_420;
                      }

LABEL_417:
                      v373 = 0;
                      if (v320 + 3 >= v6)
                      {
                        goto LABEL_418;
                      }

LABEL_421:
                      v374 = v319[3];
                    }

                    else
                    {
                      v372 = v319[1];
                      if (v320 + 2 >= v6)
                      {
                        goto LABEL_417;
                      }

LABEL_420:
                      v373 = v319[2];
                      if (v320 + 3 < v6)
                      {
                        goto LABEL_421;
                      }

LABEL_418:
                      v374 = 0;
                    }

                    LOWORD(v355) = *v319;
                    WORD1(v355) = v372;
                    WORD2(v355) = v373;
                    WORD3(v355) = v374;
                    v319 += v650;
                    ++v279;
                    v285 = v645;
                    if (v611 % v645 < v100)
                    {
LABEL_423:
                      if ((v320 | 1) >= v6)
                      {
                        v375 = 0;
                        if (v320 + 2 < v6)
                        {
                          goto LABEL_428;
                        }

LABEL_425:
                        v376 = 0;
                        if (v320 + 3 >= v6)
                        {
                          goto LABEL_426;
                        }

LABEL_429:
                        v377 = v319[3];
                      }

                      else
                      {
                        v375 = v319[1];
                        if (v320 + 2 >= v6)
                        {
                          goto LABEL_425;
                        }

LABEL_428:
                        v376 = v319[2];
                        if (v320 + 3 < v6)
                        {
                          goto LABEL_429;
                        }

LABEL_426:
                        v377 = 0;
                      }

                      LOWORD(v356) = *v319;
                      WORD1(v356) = v375;
                      WORD2(v356) = v376;
                      HIWORD(v356) = v377;
                      ++v279;
                      v285 = v645;
LABEL_431:
                      v378 = v350;
                      *(&v351 + 1) = v352;
                      v379 = v351;
                      v380 = v354;
                      *(&v355 + 1) = v356;
                      v381 = v355;
                      a6 = vqtbl2q_s8(*&v349, xmmword_239D7E3F0);
                      v382 = vqtbl2q_s8(*&v353, xmmword_239D7E3F0);
                      v314 = vzip2q_s64(a6, v382);
                      a6.i64[1] = v382.i64[0];
LABEL_324:
                      *v317 = a6;
                      v317[1] = v314;
                      goto LABEL_325;
                    }

LABEL_370:
                    v356 = 0;
                    goto LABEL_431;
                  }

LABEL_369:
                  *&v355 = 0;
                  if (v611 % v285 < v100)
                  {
                    goto LABEL_423;
                  }

                  goto LABEL_370;
                }

LABEL_368:
                v354 = 0;
                if (v614 % v285 < v100)
                {
                  goto LABEL_415;
                }

                goto LABEL_369;
              }

LABEL_367:
              v353 = 0;
              if (v617 % v285 < v100)
              {
                goto LABEL_407;
              }

              goto LABEL_368;
            }

LABEL_366:
            v352 = 0;
            if (v620 % v285 < v100)
            {
              goto LABEL_399;
            }

            goto LABEL_367;
          }

LABEL_365:
          *&v351 = 0;
          if (v623 % v285 < v100)
          {
            goto LABEL_391;
          }

          goto LABEL_366;
        }
      }

      v350 = 0;
      if (v626 % v285 < v100)
      {
        goto LABEL_383;
      }

      goto LABEL_365;
    }

    v321 = 0;
    v322 = v633 % v285;
    v323 = v629 % v285;
    v324 = v626 % v285;
    v325 = v623 % v285;
    v326 = v620 % v285;
    v327 = v285;
    v328 = v617 % v285;
    v329 = v614 % v327;
    v330 = v611 % v327;
    v319 = v289;
    v317 = v300;
    while (1)
    {
      if (v322 >= v100)
      {
        v279 = 0;
        v338 = 0;
        v339 = v319;
        if (v323 >= v100)
        {
LABEL_339:
          v340 = 0;
          if (v324 >= v100)
          {
            goto LABEL_340;
          }

          goto LABEL_348;
        }
      }

      else
      {
        v338 = *v319;
        v339 = &v319[v280];
        v279 = 1;
        if (v323 >= v100)
        {
          goto LABEL_339;
        }
      }

      v340 = *v339;
      v339 += v280;
      ++v279;
      if (v324 >= v100)
      {
LABEL_340:
        *&v341 = 0;
        if (v325 >= v100)
        {
          goto LABEL_341;
        }

        goto LABEL_349;
      }

LABEL_348:
      *&v341 = *v339;
      v339 += v280;
      ++v279;
      if (v325 >= v100)
      {
LABEL_341:
        v342 = 0;
        if (v326 >= v100)
        {
          goto LABEL_342;
        }

        goto LABEL_350;
      }

LABEL_349:
      v342 = *v339;
      v339 += v280;
      ++v279;
      if (v326 >= v100)
      {
LABEL_342:
        v343 = 0;
        if (v328 >= v100)
        {
          goto LABEL_343;
        }

        goto LABEL_351;
      }

LABEL_350:
      v343 = *v339;
      v339 += v280;
      ++v279;
      if (v328 >= v100)
      {
LABEL_343:
        v344 = 0;
        if (v329 >= v100)
        {
          goto LABEL_344;
        }

        goto LABEL_352;
      }

LABEL_351:
      v344 = *v339;
      v339 += v280;
      ++v279;
      if (v329 >= v100)
      {
LABEL_344:
        *&v345 = 0;
        if (v330 >= v100)
        {
          goto LABEL_353;
        }

        goto LABEL_335;
      }

LABEL_352:
      *&v345 = *v339;
      v339 += v280;
      ++v279;
      if (v330 >= v100)
      {
LABEL_353:
        v331 = 0;
        goto LABEL_336;
      }

LABEL_335:
      v331 = *v339;
      ++v279;
LABEL_336:
      v332 = v340;
      *(&v341 + 1) = v342;
      v333 = v341;
      v334 = v344;
      *(&v345 + 1) = v331;
      v335 = v345;
      v336 = vqtbl2q_s8(*&v338, xmmword_239D7E3F0);
      a6 = vqtbl2q_s8(*&v343, xmmword_239D7E3F0);
      v337 = vzip2q_s64(v336, a6);
      v336.i64[1] = a6.i64[0];
      *v317 = v336;
      v317[1] = v337;
      v321 += 2;
      v317 = (v317 + v655);
      v319 += 2;
      if (v321 >= v282)
      {
        v320 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
        v285 = v645;
        v286 = 2 * v6;
        if (v636 < v6)
        {
          goto LABEL_355;
        }

LABEL_325:
        ++v301;
        v300 += 2;
        v289 += v6;
        v291 += v286;
        if (v301 != v656)
        {
          goto LABEL_326;
        }

        v292 = v594 + 1;
        v300 = &v589[v581];
        v289 = &v592[v580];
        v291 = v596 + v578;
        if (v594 + 1 != v651)
        {
          goto LABEL_321;
        }

        v289 = &v600[v279 * v650];
        v288 = v586 + 8;
        v290 = &v573[v563];
        if (v586 + 8 < (v582 - 7))
        {
          goto LABEL_319;
        }

        v383 = v582 & 0xFFFFFFFFFFFFFFF8;
        v278 = v553;
        if ((v582 & 0xFFFFFFFFFFFFFFF8) >= v582)
        {
          goto LABEL_313;
        }

LABEL_435:
        if (!v651 || (v630 = v383 + v278 * v582, !v656))
        {
LABEL_313:
          v278 = v553 + 1;
          result = (result + 2 * v549);
          a2 = &v566[v656 * v582 * v651 * v6];
          v287 = &v551[v547];
          if (v553 + 1 == v554)
          {
            return result;
          }

          goto LABEL_314;
        }

        v384 = 0;
        v385 = 0;
        v627 = v630 + 1;
        v634 = v383 | 1;
        v624 = v630 + 2;
        v386 = v383 | 2;
        v621 = v630 + 3;
        v387 = v383 | 3;
        v618 = v630 + 4;
        v388 = v383 | 4;
        v615 = v630 + 5;
        v389 = v383 | 5;
        v612 = v630 + 6;
        v390 = v383 | 6;
        v609 = v630 + 7;
        v391 = v383 | 7;
        v392 = v289;
        v393 = v582;
        while (2)
        {
          v569 = v385;
          v571 = v384;
          v394 = 0;
          v395 = v384;
          v568 = v392;
          v396 = v392;
          v574 = v290;
          v397 = v290;
LABEL_446:
          v404 = v627 / v285;
          v405 = v624 / v285;
          v406 = v621 / v285;
          v407 = v618 / v285;
          v408 = v615 / v285;
          v409 = v612 / v285;
          v410 = v609 / v285;
          v587 = v395;
          v590 = v396;
          v584 = v397;
          if (v6 < 4)
          {
            v441 = 0;
            v442 = v396;
            if (v6 <= 0)
            {
              goto LABEL_445;
            }

LABEL_509:
            if (v642 == 1)
            {
              v443 = v441 | 1;
              if ((v441 | 1) >= v6)
              {
                v444 = 0;
                v445 = v441 + 2;
                v446 = v441 + 3;
                v447 = &v442[v280];
                if (v634 < v393)
                {
                  goto LABEL_525;
                }

LABEL_512:
                v448 = 0;
                v449 = &v447[v280];
                if (v386 < v393)
                {
                  goto LABEL_550;
                }
              }

              else
              {
                v444 = v442[1];
                v445 = v441 + 2;
                v446 = v441 + 3;
                v447 = &v442[v280];
                if (v634 >= v393)
                {
                  goto LABEL_512;
                }

LABEL_525:
                if (v443 >= v6)
                {
                  v462 = 0;
                  if (v445 < v6)
                  {
                    goto LABEL_547;
                  }

LABEL_527:
                  v463 = 0;
                  if (v446 >= v6)
                  {
                    goto LABEL_528;
                  }

LABEL_548:
                  v464 = v447[3];
                }

                else
                {
                  v462 = v447[1];
                  if (v445 >= v6)
                  {
                    goto LABEL_527;
                  }

LABEL_547:
                  v463 = v447[2];
                  if (v446 < v6)
                  {
                    goto LABEL_548;
                  }

LABEL_528:
                  v464 = 0;
                }

                LOWORD(v448) = *v447;
                WORD1(v448) = v462;
                WORD2(v448) = v463;
                HIWORD(v448) = v464;
                v393 = v582;
                v285 = v645;
                v449 = &v447[v280];
                if (v386 < v582)
                {
LABEL_550:
                  if (v443 >= v6)
                  {
                    v476 = 0;
                    if (v445 < v6)
                    {
                      goto LABEL_556;
                    }

LABEL_552:
                    v477 = 0;
                    if (v446 >= v6)
                    {
                      goto LABEL_553;
                    }

LABEL_557:
                    v478 = v449[3];
                  }

                  else
                  {
                    v476 = v449[1];
                    if (v445 >= v6)
                    {
                      goto LABEL_552;
                    }

LABEL_556:
                    v477 = v449[2];
                    if (v446 < v6)
                    {
                      goto LABEL_557;
                    }

LABEL_553:
                    v478 = 0;
                  }

                  LOWORD(v450) = *v449;
                  WORD1(v450) = v476;
                  WORD2(v450) = v477;
                  HIWORD(v450) = v478;
                  v393 = v582;
                  v285 = v645;
                  a6.i16[0] = *v442;
                  v451 = &v449[v280];
                  if (v387 < v582)
                  {
LABEL_559:
                    if (v443 >= v6)
                    {
                      v479 = 0;
                      if (v445 < v6)
                      {
                        goto LABEL_564;
                      }

LABEL_561:
                      v480 = 0;
                      if (v446 >= v6)
                      {
                        goto LABEL_562;
                      }

LABEL_565:
                      v481 = v451[3];
                    }

                    else
                    {
                      v479 = v451[1];
                      if (v445 >= v6)
                      {
                        goto LABEL_561;
                      }

LABEL_564:
                      v480 = v451[2];
                      if (v446 < v6)
                      {
                        goto LABEL_565;
                      }

LABEL_562:
                      v481 = 0;
                    }

                    LOWORD(v452) = *v451;
                    WORD1(v452) = v479;
                    WORD2(v452) = v480;
                    HIWORD(v452) = v481;
                    v393 = v582;
                    v285 = v645;
                    v453 = &v451[v280];
                    if (v388 < v582)
                    {
LABEL_567:
                      if (v443 >= v6)
                      {
                        v482 = 0;
                        if (v445 < v6)
                        {
                          goto LABEL_572;
                        }

LABEL_569:
                        v483 = 0;
                        if (v446 >= v6)
                        {
                          goto LABEL_570;
                        }

LABEL_573:
                        v484 = v453[3];
                      }

                      else
                      {
                        v482 = v453[1];
                        if (v445 >= v6)
                        {
                          goto LABEL_569;
                        }

LABEL_572:
                        v483 = v453[2];
                        if (v446 < v6)
                        {
                          goto LABEL_573;
                        }

LABEL_570:
                        v484 = 0;
                      }

                      LOWORD(v454) = *v453;
                      WORD1(v454) = v482;
                      WORD2(v454) = v483;
                      HIWORD(v454) = v484;
                      v393 = v582;
                      v285 = v645;
                      v455 = &v453[v280];
                      if (v389 < v582)
                      {
LABEL_575:
                        if (v443 >= v6)
                        {
                          v485 = 0;
                          if (v445 < v6)
                          {
                            goto LABEL_580;
                          }

LABEL_577:
                          v486 = 0;
                          if (v446 >= v6)
                          {
                            goto LABEL_578;
                          }

LABEL_581:
                          v487 = v455[3];
                        }

                        else
                        {
                          v485 = v455[1];
                          if (v445 >= v6)
                          {
                            goto LABEL_577;
                          }

LABEL_580:
                          v486 = v455[2];
                          if (v446 < v6)
                          {
                            goto LABEL_581;
                          }

LABEL_578:
                          v487 = 0;
                        }

                        LOWORD(v456) = *v455;
                        WORD1(v456) = v485;
                        WORD2(v456) = v486;
                        HIWORD(v456) = v487;
                        v393 = v582;
                        v285 = v645;
                        v457 = &v455[v280];
                        if (v390 < v582)
                        {
LABEL_583:
                          if (v443 >= v6)
                          {
                            v488 = 0;
                            if (v445 < v6)
                            {
                              goto LABEL_588;
                            }

LABEL_585:
                            v489 = 0;
                            if (v446 >= v6)
                            {
                              goto LABEL_586;
                            }

LABEL_589:
                            v490 = v457[3];
                          }

                          else
                          {
                            v488 = v457[1];
                            if (v445 >= v6)
                            {
                              goto LABEL_585;
                            }

LABEL_588:
                            v489 = v457[2];
                            if (v446 < v6)
                            {
                              goto LABEL_589;
                            }

LABEL_586:
                            v490 = 0;
                          }

                          LOWORD(v458) = *v457;
                          WORD1(v458) = v488;
                          WORD2(v458) = v489;
                          WORD3(v458) = v490;
                          v393 = v582;
                          v285 = v645;
                          if (v391 < v582)
                          {
LABEL_591:
                            v491 = &v457[v280];
                            if (v443 >= v6)
                            {
                              v492 = 0;
                              if (v445 < v6)
                              {
                                goto LABEL_596;
                              }

LABEL_593:
                              v493 = 0;
                              if (v446 >= v6)
                              {
                                goto LABEL_594;
                              }

LABEL_597:
                              v494 = v491[3];
                            }

                            else
                            {
                              v492 = v491[1];
                              if (v445 >= v6)
                              {
                                goto LABEL_593;
                              }

LABEL_596:
                              v493 = v491[2];
                              if (v446 < v6)
                              {
                                goto LABEL_597;
                              }

LABEL_594:
                              v494 = 0;
                            }

                            LOWORD(v398) = *v491;
                            WORD1(v398) = v492;
                            WORD2(v398) = v493;
                            HIWORD(v398) = v494;
                            v285 = v645;
LABEL_443:
                            a6.i16[1] = v444;
                            a6.i64[1] = v448;
                            v399 = v452;
                            v400 = v456;
                            *(&v458 + 1) = v398;
                            v401 = v458;
                            a6 = vqtbl2q_s8(*a6.i8, xmmword_239D7E3F0);
                            v402 = vqtbl2q_s8(*&v454, xmmword_239D7E3F0);
                            v403 = vzip2q_s64(a6, v402);
                            a6.i64[1] = v402.i64[0];
                            v279 = 8;
                            v396 = v590;
LABEL_444:
                            *v397 = a6;
                            v397[1] = v403;
                            goto LABEL_445;
                          }

LABEL_442:
                          v398 = 0;
                          goto LABEL_443;
                        }

LABEL_517:
                        *&v458 = 0;
                        if (v391 < v393)
                        {
                          goto LABEL_591;
                        }

                        goto LABEL_442;
                      }

LABEL_516:
                      v456 = 0;
                      v457 = &v455[v280];
                      if (v390 < v393)
                      {
                        goto LABEL_583;
                      }

                      goto LABEL_517;
                    }

LABEL_515:
                    v454 = 0;
                    v455 = &v453[v280];
                    if (v389 < v393)
                    {
                      goto LABEL_575;
                    }

                    goto LABEL_516;
                  }

LABEL_514:
                  v452 = 0;
                  v453 = &v451[v280];
                  if (v388 < v393)
                  {
                    goto LABEL_567;
                  }

                  goto LABEL_515;
                }
              }

              v450 = 0;
              a6.i16[0] = *v442;
              v451 = &v449[v280];
              if (v387 < v393)
              {
                goto LABEL_559;
              }

              goto LABEL_514;
            }

            if (v630 % v285 >= v100)
            {
              v279 = 0;
              v465 = 0;
              if (v627 % v285 < v100)
              {
                goto LABEL_541;
              }
            }

            else
            {
              if ((v441 | 1) >= v6)
              {
                v459 = 0;
                if (v441 + 2 < v6)
                {
                  goto LABEL_538;
                }

LABEL_522:
                v460 = 0;
                if (v441 + 3 >= v6)
                {
                  goto LABEL_523;
                }

LABEL_539:
                v461 = v442[3];
              }

              else
              {
                v459 = v442[1];
                if (v441 + 2 >= v6)
                {
                  goto LABEL_522;
                }

LABEL_538:
                v460 = v442[2];
                if (v441 + 3 < v6)
                {
                  goto LABEL_539;
                }

LABEL_523:
                v461 = 0;
              }

              LOWORD(v465) = *v442;
              WORD1(v465) = v459;
              WORD2(v465) = v460;
              HIWORD(v465) = v461;
              v442 += v280;
              v279 = 1;
              v393 = v582;
              v285 = v645;
              if (v627 - v404 * v645 < v100)
              {
LABEL_541:
                if (v634 >= v393)
                {
                  v466 = 0;
                }

                else
                {
                  if ((v441 | 1) >= v6)
                  {
                    v473 = 0;
                    if (v441 + 2 < v6)
                    {
                      goto LABEL_600;
                    }

LABEL_544:
                    v474 = 0;
                    if (v441 + 3 >= v6)
                    {
                      goto LABEL_545;
                    }

LABEL_601:
                    v475 = v442[3];
                  }

                  else
                  {
                    v473 = v442[1];
                    if (v441 + 2 >= v6)
                    {
                      goto LABEL_544;
                    }

LABEL_600:
                    v474 = v442[2];
                    if (v441 + 3 < v6)
                    {
                      goto LABEL_601;
                    }

LABEL_545:
                    v475 = 0;
                  }

                  LOWORD(v466) = *v442;
                  WORD1(v466) = v473;
                  WORD2(v466) = v474;
                  HIWORD(v466) = v475;
                  v393 = v582;
                  v285 = v645;
                }

                v442 += v280;
                ++v279;
                if (v624 - v405 * v285 < v100)
                {
LABEL_604:
                  if (v386 >= v393)
                  {
                    *&v467 = 0;
                  }

                  else
                  {
                    if ((v441 | 1) >= v6)
                    {
                      v495 = 0;
                      if (v441 + 2 < v6)
                      {
                        goto LABEL_611;
                      }

LABEL_607:
                      v496 = 0;
                      if (v441 + 3 >= v6)
                      {
                        goto LABEL_608;
                      }

LABEL_612:
                      v497 = v442[3];
                    }

                    else
                    {
                      v495 = v442[1];
                      if (v441 + 2 >= v6)
                      {
                        goto LABEL_607;
                      }

LABEL_611:
                      v496 = v442[2];
                      if (v441 + 3 < v6)
                      {
                        goto LABEL_612;
                      }

LABEL_608:
                      v497 = 0;
                    }

                    LOWORD(v467) = *v442;
                    WORD1(v467) = v495;
                    WORD2(v467) = v496;
                    WORD3(v467) = v497;
                    v393 = v582;
                    v285 = v645;
                  }

                  v442 += v280;
                  ++v279;
                  if (v621 - v406 * v285 < v100)
                  {
LABEL_615:
                    if (v387 >= v393)
                    {
                      v468 = 0;
                    }

                    else
                    {
                      if ((v441 | 1) >= v6)
                      {
                        v498 = 0;
                        if (v441 + 2 < v6)
                        {
                          goto LABEL_622;
                        }

LABEL_618:
                        v499 = 0;
                        if (v441 + 3 >= v6)
                        {
                          goto LABEL_619;
                        }

LABEL_623:
                        v500 = v442[3];
                      }

                      else
                      {
                        v498 = v442[1];
                        if (v441 + 2 >= v6)
                        {
                          goto LABEL_618;
                        }

LABEL_622:
                        v499 = v442[2];
                        if (v441 + 3 < v6)
                        {
                          goto LABEL_623;
                        }

LABEL_619:
                        v500 = 0;
                      }

                      LOWORD(v468) = *v442;
                      WORD1(v468) = v498;
                      WORD2(v468) = v499;
                      HIWORD(v468) = v500;
                      v393 = v582;
                      v285 = v645;
                    }

                    v442 += v280;
                    ++v279;
                    if (v618 - v407 * v285 < v100)
                    {
LABEL_626:
                      if (v388 >= v393)
                      {
                        v469 = 0;
                      }

                      else
                      {
                        if ((v441 | 1) >= v6)
                        {
                          v501 = 0;
                          if (v441 + 2 < v6)
                          {
                            goto LABEL_633;
                          }

LABEL_629:
                          v502 = 0;
                          if (v441 + 3 >= v6)
                          {
                            goto LABEL_630;
                          }

LABEL_634:
                          v503 = v442[3];
                        }

                        else
                        {
                          v501 = v442[1];
                          if (v441 + 2 >= v6)
                          {
                            goto LABEL_629;
                          }

LABEL_633:
                          v502 = v442[2];
                          if (v441 + 3 < v6)
                          {
                            goto LABEL_634;
                          }

LABEL_630:
                          v503 = 0;
                        }

                        LOWORD(v469) = *v442;
                        WORD1(v469) = v501;
                        WORD2(v469) = v502;
                        HIWORD(v469) = v503;
                        v393 = v582;
                        v285 = v645;
                      }

                      v442 += v280;
                      ++v279;
                      if (v615 - v408 * v285 < v100)
                      {
LABEL_637:
                        v396 = v590;
                        if (v389 >= v393)
                        {
                          v470 = 0;
                        }

                        else
                        {
                          if ((v441 | 1) >= v6)
                          {
                            v504 = 0;
                            if (v441 + 2 < v6)
                            {
                              goto LABEL_644;
                            }

LABEL_640:
                            v505 = 0;
                            if (v441 + 3 >= v6)
                            {
                              goto LABEL_641;
                            }

LABEL_645:
                            v506 = v442[3];
                          }

                          else
                          {
                            v504 = v442[1];
                            if (v441 + 2 >= v6)
                            {
                              goto LABEL_640;
                            }

LABEL_644:
                            v505 = v442[2];
                            if (v441 + 3 < v6)
                            {
                              goto LABEL_645;
                            }

LABEL_641:
                            v506 = 0;
                          }

                          LOWORD(v470) = *v442;
                          WORD1(v470) = v504;
                          WORD2(v470) = v505;
                          HIWORD(v470) = v506;
                          v285 = v645;
                          v396 = v590;
                        }

                        v442 += v280;
                        ++v279;
                        if (v612 - v409 * v285 < v100)
                        {
LABEL_648:
                          if (v390 >= v393)
                          {
                            *&v471 = 0;
                          }

                          else
                          {
                            if ((v441 | 1) >= v6)
                            {
                              v507 = 0;
                              if (v441 + 2 < v6)
                              {
                                goto LABEL_655;
                              }

LABEL_651:
                              v508 = 0;
                              if (v441 + 3 >= v6)
                              {
                                goto LABEL_652;
                              }

LABEL_656:
                              v509 = v442[3];
                            }

                            else
                            {
                              v507 = v442[1];
                              if (v441 + 2 >= v6)
                              {
                                goto LABEL_651;
                              }

LABEL_655:
                              v508 = v442[2];
                              if (v441 + 3 < v6)
                              {
                                goto LABEL_656;
                              }

LABEL_652:
                              v509 = 0;
                            }

                            LOWORD(v471) = *v442;
                            WORD1(v471) = v507;
                            WORD2(v471) = v508;
                            WORD3(v471) = v509;
                            v396 = v590;
                          }

                          v442 += v280;
                          ++v279;
                          if (v609 - v410 * v285 < v100)
                          {
LABEL_659:
                            if (v391 >= v393)
                            {
                              v472 = 0;
                            }

                            else
                            {
                              if ((v441 | 1) >= v6)
                              {
                                v510 = 0;
                                if (v441 + 2 < v6)
                                {
                                  goto LABEL_666;
                                }

LABEL_662:
                                v511 = 0;
                                if (v441 + 3 >= v6)
                                {
                                  goto LABEL_663;
                                }

LABEL_667:
                                v512 = v442[3];
                              }

                              else
                              {
                                v510 = v442[1];
                                if (v441 + 2 >= v6)
                                {
                                  goto LABEL_662;
                                }

LABEL_666:
                                v511 = v442[2];
                                if (v441 + 3 < v6)
                                {
                                  goto LABEL_667;
                                }

LABEL_663:
                                v512 = 0;
                              }

                              LOWORD(v472) = *v442;
                              WORD1(v472) = v510;
                              WORD2(v472) = v511;
                              HIWORD(v472) = v512;
                            }

                            ++v279;
LABEL_670:
                            v513 = v466;
                            *(&v467 + 1) = v468;
                            v514 = v467;
                            v515 = v470;
                            *(&v471 + 1) = v472;
                            v516 = v471;
                            a6 = vqtbl2q_s8(*&v465, xmmword_239D7E3F0);
                            v517 = vqtbl2q_s8(*&v469, xmmword_239D7E3F0);
                            v403 = vzip2q_s64(a6, v517);
                            a6.i64[1] = v517.i64[0];
                            goto LABEL_444;
                          }

LABEL_536:
                          v472 = 0;
                          goto LABEL_670;
                        }

LABEL_535:
                        *&v471 = 0;
                        if (v609 - v410 * v285 < v100)
                        {
                          goto LABEL_659;
                        }

                        goto LABEL_536;
                      }

LABEL_534:
                      v470 = 0;
                      v396 = v590;
                      if (v612 - v409 * v285 < v100)
                      {
                        goto LABEL_648;
                      }

                      goto LABEL_535;
                    }

LABEL_533:
                    v469 = 0;
                    if (v615 - v408 * v285 < v100)
                    {
                      goto LABEL_637;
                    }

                    goto LABEL_534;
                  }

LABEL_532:
                  v468 = 0;
                  if (v618 - v407 * v285 < v100)
                  {
                    goto LABEL_626;
                  }

                  goto LABEL_533;
                }

LABEL_531:
                *&v467 = 0;
                if (v621 - v406 * v285 < v100)
                {
                  goto LABEL_615;
                }

                goto LABEL_532;
              }
            }

            v466 = 0;
            if (v624 - v405 * v285 < v100)
            {
              goto LABEL_604;
            }

            goto LABEL_531;
          }

          v576 = v394;
          v411 = 0;
          v412 = v396;
LABEL_451:
          v421 = (v289 + v395);
          if (v642 == 1)
          {
            if (v634 >= v393)
            {
              v422 = 0;
              if (v386 < v393)
              {
                goto LABEL_470;
              }

LABEL_454:
              v423 = 0;
              if (v387 >= v393)
              {
                goto LABEL_455;
              }

LABEL_471:
              v424 = *(&v289[v541] + v395);
              if (v388 < v393)
              {
                goto LABEL_472;
              }

LABEL_456:
              v425 = 0;
              if (v389 >= v393)
              {
                goto LABEL_457;
              }

LABEL_473:
              v426 = *(&v289[v539] + v395);
              if (v390 < v393)
              {
                goto LABEL_474;
              }

LABEL_458:
              *&v427 = 0;
              if (v391 < v393)
              {
                goto LABEL_448;
              }

LABEL_475:
              v413 = 0;
            }

            else
            {
              v422 = *(&v289[v598] + v395);
              if (v386 >= v393)
              {
                goto LABEL_454;
              }

LABEL_470:
              v423 = *(&v289[v543] + v395);
              if (v387 < v393)
              {
                goto LABEL_471;
              }

LABEL_455:
              v424 = 0;
              if (v388 >= v393)
              {
                goto LABEL_456;
              }

LABEL_472:
              v425 = *(&v289[v533] + v395);
              if (v389 < v393)
              {
                goto LABEL_473;
              }

LABEL_457:
              v426 = 0;
              if (v390 >= v393)
              {
                goto LABEL_458;
              }

LABEL_474:
              *&v427 = *(&v289[v537] + v395);
              if (v391 >= v393)
              {
                goto LABEL_475;
              }

LABEL_448:
              v413 = *(&v289[v535] + v395);
            }

            v414 = *v421;
            v415 = v422;
            v416 = v424;
            v417 = v426;
            *(&v427 + 1) = v413;
            v418 = v427;
            a6 = vqtbl2q_s8(*(&v423 - 2), xmmword_239D7E3F0);
            v419 = vqtbl2q_s8(*&v425, xmmword_239D7E3F0);
            v420 = vzip2q_s64(a6, v419);
            a6.i64[1] = v419.i64[0];
            v279 = 8;
LABEL_450:
            v411 += 2;
            *v397 = a6;
            v397[1] = v420;
            v397 = (v397 + v655);
            v412 += 2;
            v395 += 4;
            if (v411 >= v282)
            {
              v442 = (v289 + v395);
              v441 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
              v286 = 2 * v6;
              v394 = v576;
              if (v636 < v6)
              {
                goto LABEL_509;
              }

LABEL_445:
              ++v394;
              v397 = v584 + 2;
              v396 += v6;
              v395 = v587 + v286;
              if (v394 == v656)
              {
                v385 = v569 + 1;
                v290 = &v574[v581];
                v392 = &v568[v580];
                v384 = v571 + v578;
                if (v569 + 1 == v651)
                {
                  goto LABEL_313;
                }

                continue;
              }

              goto LABEL_446;
            }

            goto LABEL_451;
          }

          break;
        }

        if (v630 % v285 >= v100)
        {
          v279 = 0;
          v428 = 0;
          if (v627 % v285 < v100)
          {
            goto LABEL_477;
          }

LABEL_462:
          v429 = 0;
          if (v624 % v285 >= v100)
          {
            goto LABEL_463;
          }

LABEL_481:
          if (v386 >= v393)
          {
            *&v430 = 0;
          }

          else
          {
            *&v430 = *v421;
          }

          v421 += v650;
          ++v279;
          if (v621 % v285 < v100)
          {
            goto LABEL_485;
          }

LABEL_464:
          v431 = 0;
          if (v618 % v285 >= v100)
          {
            goto LABEL_465;
          }

LABEL_489:
          if (v388 >= v393)
          {
            v432 = 0;
          }

          else
          {
            v432 = *v421;
          }

          v421 += v650;
          ++v279;
          if (v615 % v285 < v100)
          {
            goto LABEL_493;
          }

LABEL_466:
          v433 = 0;
          if (v612 % v285 >= v100)
          {
            goto LABEL_467;
          }

LABEL_497:
          if (v390 >= v393)
          {
            *&v434 = 0;
          }

          else
          {
            *&v434 = *v421;
          }

          v421 += v650;
          ++v279;
          if (v609 % v285 < v100)
          {
            goto LABEL_501;
          }

LABEL_468:
          v435 = 0;
        }

        else
        {
          v428 = *v421;
          v421 = &v412[v650];
          v279 = 1;
          if (v627 % v285 >= v100)
          {
            goto LABEL_462;
          }

LABEL_477:
          if (v634 >= v393)
          {
            v429 = 0;
          }

          else
          {
            v429 = *v421;
          }

          v421 += v650;
          ++v279;
          if (v624 % v285 < v100)
          {
            goto LABEL_481;
          }

LABEL_463:
          *&v430 = 0;
          if (v621 % v285 >= v100)
          {
            goto LABEL_464;
          }

LABEL_485:
          if (v387 >= v393)
          {
            v431 = 0;
          }

          else
          {
            v431 = *v421;
          }

          v421 += v650;
          ++v279;
          if (v618 % v285 < v100)
          {
            goto LABEL_489;
          }

LABEL_465:
          v432 = 0;
          if (v615 % v285 >= v100)
          {
            goto LABEL_466;
          }

LABEL_493:
          if (v389 >= v393)
          {
            v433 = 0;
          }

          else
          {
            v433 = *v421;
          }

          v421 += v650;
          ++v279;
          if (v612 % v285 < v100)
          {
            goto LABEL_497;
          }

LABEL_467:
          *&v434 = 0;
          if (v609 % v285 >= v100)
          {
            goto LABEL_468;
          }

LABEL_501:
          if (v391 >= v393)
          {
            v435 = 0;
          }

          else
          {
            v435 = *v421;
          }

          ++v279;
        }

        v436 = v429;
        *(&v430 + 1) = v431;
        v437 = v430;
        v438 = v433;
        *(&v434 + 1) = v435;
        v439 = v434;
        a6 = vqtbl2q_s8(*&v428, xmmword_239D7E3F0);
        v440 = vqtbl2q_s8(*&v432, xmmword_239D7E3F0);
        v420 = vzip2q_s64(a6, v440);
        a6.i64[1] = v440.i64[0];
        goto LABEL_450;
      }
    }
  }

  if (!v7)
  {
    if (!v554)
    {
      return result;
    }

    v235 = 0;
    v236 = v6 == 0;
    if (!v651)
    {
      v236 = 1;
    }

    v237 = v656 == 0;
    if (!v656)
    {
      v236 = 1;
    }

    v238 = v651 * v656;
    if (!v651)
    {
      v237 = 1;
    }

    v239 = 4 * v582 * v238;
    v240 = v582 * v238 * v6;
    v241 = v582 * (2 * v238 - 2);
    v242 = a2 + v241 + 8;
    v243 = 2 * v238 * v6 * v582;
    v244 = v582 * (4 * v238 - 2);
    v245 = a2 + v244 + 8;
    v649 = v244 + 6;
    while (1)
    {
      if (v582 < 8)
      {
        v263 = 0;
        v249 = a2;
        if (!v6)
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v236)
        {
          goto LABEL_226;
        }

        v246 = 0;
        v247 = v245;
        v248 = v242;
        v249 = a2;
        do
        {
          v250 = 0;
          v251 = v247;
          v252 = v248;
          do
          {
            if ((v250 | 1) >= v6)
            {
              v259 = 0;
              v260 = v252;
              do
              {
                v261 = v260;
                v262 = v656;
                do
                {
                  result->i16[0] = *(v261 - 4);
                  result->i16[1] = *(v261 - 3);
                  result->i16[2] = *(v261 - 2);
                  result->i16[3] = *(v261 - 1);
                  result->i16[4] = *v261;
                  result->i16[5] = v261[1];
                  result->i16[6] = v261[2];
                  result->i16[7] = v261[3];
                  result += 2;
                  v261 -= v582;
                  --v262;
                }

                while (v262);
                ++v259;
                v260 -= v656 * v582;
              }

              while (v259 != v651);
            }

            else
            {
              v253 = 0;
              v254 = v251;
              v255 = v252;
              do
              {
                v256 = v254;
                v257 = v255;
                v258 = v656;
                do
                {
                  result->i16[0] = *(v257 - 4);
                  result->i16[1] = *(v257 - 3);
                  result->i16[2] = *(v257 - 2);
                  result->i16[3] = *(v257 - 1);
                  result->i16[4] = *v257;
                  result->i16[5] = v257[1];
                  result->i16[6] = v257[2];
                  result->i16[7] = v257[3];
                  result[1].i16[0] = *(v256 - 4);
                  result[1].i16[1] = *(v256 - 3);
                  result[1].i16[2] = *(v256 - 2);
                  result[1].i16[3] = *(v256 - 1);
                  result[1].i16[4] = *v256;
                  result[1].i16[5] = v256[1];
                  result[1].i16[6] = v256[2];
                  result[1].i16[7] = v256[3];
                  result += 2;
                  v257 -= v582;
                  v256 -= v582;
                  --v258;
                }

                while (v258);
                ++v253;
                v255 -= v656 * v582;
                v254 -= v656 * v582;
              }

              while (v253 != v651);
            }

            v250 += 2;
            v252 = (v252 + v239);
            v251 = (v251 + v239);
          }

          while (v250 < v6);
          v246 += 8;
          v249 += 8;
          v248 += 16;
          v247 += 16;
        }

        while (v246 < (v582 - 7));
        v263 = v582 & 0xFFFFFFFFFFFFFFF8;
        if (!v6)
        {
          goto LABEL_226;
        }
      }

      v65 = __OFSUB__(v582, v263);
      v264 = v582 - v263;
      if (!((v264 < 0) ^ v65 | (v264 == 0)) && !v237)
      {
        v265 = 0;
        v266 = (v249 + v241 + 6);
        v267 = (v249 + v649);
LABEL_251:
        if ((v265 | 1) < v6)
        {
          v268 = 0;
          v269 = v266;
          v270 = v267;
          while (1)
          {
            v271 = v656;
            v272 = v269;
            v273 = v270;
            do
            {
              if (v264 > 3)
              {
                if (v264 > 5)
                {
                  if (v264 != 6)
                  {
                    if (v264 != 7)
                    {
                      goto LABEL_279;
                    }

                    result->i16[6] = v272[3];
                  }

                  result->i16[5] = v272[2];
LABEL_274:
                  result->i16[4] = v272[1];
                }

                else if (v264 != 4)
                {
                  goto LABEL_274;
                }

                result->i16[3] = *v272;
LABEL_276:
                result->i16[2] = *(v272 - 1);
LABEL_277:
                result->i16[1] = *(v272 - 2);
LABEL_278:
                result->i16[0] = *(v272 - 3);
                goto LABEL_279;
              }

              switch(v264)
              {
                case 1:
                  goto LABEL_278;
                case 2:
                  goto LABEL_277;
                case 3:
                  goto LABEL_276;
              }

LABEL_279:
              if (v264 <= 3)
              {
                switch(v264)
                {
                  case 1:
                    goto LABEL_260;
                  case 2:
                    goto LABEL_259;
                  case 3:
                    goto LABEL_258;
                }
              }

              else
              {
                if (v264 <= 5)
                {
                  if (v264 != 4)
                  {
                    goto LABEL_256;
                  }

                  goto LABEL_257;
                }

                if (v264 == 6)
                {
                  goto LABEL_255;
                }

                if (v264 == 7)
                {
                  result[1].i16[6] = v273[3];
LABEL_255:
                  result[1].i16[5] = v273[2];
LABEL_256:
                  result[1].i16[4] = v273[1];
LABEL_257:
                  result[1].i16[3] = *v273;
LABEL_258:
                  result[1].i16[2] = *(v273 - 1);
LABEL_259:
                  result[1].i16[1] = *(v273 - 2);
LABEL_260:
                  result[1].i16[0] = *(v273 - 3);
                }
              }

              result += 2;
              v273 -= v582;
              v272 -= v582;
              --v271;
            }

            while (v271);
            ++v268;
            v270 -= v656 * v582;
            v269 -= v656 * v582;
            if (v268 == v651)
            {
              goto LABEL_250;
            }
          }
        }

        v274 = 0;
        v275 = v266;
        while (2)
        {
          v276 = v656;
          v277 = v275;
LABEL_300:
          if (v264 <= 3)
          {
            switch(v264)
            {
              case 1:
                goto LABEL_298;
              case 2:
                goto LABEL_297;
              case 3:
                goto LABEL_296;
            }
          }

          else
          {
            if (v264 > 5)
            {
              if (v264 != 6)
              {
                if (v264 != 7)
                {
                  goto LABEL_299;
                }

                result->i16[6] = v277[3];
              }

              result->i16[5] = v277[2];
              goto LABEL_294;
            }

            if (v264 != 4)
            {
LABEL_294:
              result->i16[4] = v277[1];
            }

            result->i16[3] = *v277;
LABEL_296:
            result->i16[2] = *(v277 - 1);
LABEL_297:
            result->i16[1] = *(v277 - 2);
LABEL_298:
            result->i16[0] = *(v277 - 3);
          }

LABEL_299:
          result += 2;
          v277 -= v582;
          if (!--v276)
          {
            ++v274;
            v275 -= v656 * v582;
            if (v274 != v651)
            {
              continue;
            }

LABEL_250:
            v265 += 2;
            v266 = (v266 + v239);
            v267 = (v267 + v239);
            if (v265 >= v6)
            {
              break;
            }

            goto LABEL_251;
          }

          goto LABEL_300;
        }
      }

LABEL_226:
      ++v235;
      a2 += v240;
      v242 += v243;
      v245 += v243;
      if (v235 == v554)
      {
        return result;
      }
    }
  }

  if (v554)
  {
    v8 = 0;
    v9 = v6 == 0;
    v10 = v651 * v656;
    if (!v651)
    {
      v9 = 1;
    }

    if (!v656)
    {
      v9 = 1;
    }

    v534 = v9;
    v538 = v582 * v6 * v10;
    v11 = 4 * v10;
    if (v651)
    {
      v12 = v656 == 0;
    }

    else
    {
      v12 = 1;
    }

    v532 = v12;
    v13 = -v656;
    v567 = 16 * v10;
    v14 = &a2[8 * v10 - 1];
    v536 = 2 * v10 * v6 * v582;
    v15 = -2 * v656;
    v530 = 12 * v10 - 2;
    v531 = 14 * v10 - 2;
    v16 = a2 + v531;
    v17 = a2 + v530;
    v529 = 10 * v10 - 2;
    v18 = a2 + v529;
    v526 = 8 * v10 - 2;
    v19 = a2 + v526;
    v20 = v11 - 2;
    v21 = a2 + v10 * (2 * v582 + 16) - 2;
    v610 = v11 * v582;
    v527 = v10 * (2 * v582 + 14) - 2;
    v528 = 6 * v10 - 2;
    v22 = a2 + v528;
    v518 = 2 * v10 - 2;
    v519 = v20;
    v23 = a2 + v20;
    v24 = a2 + v518;
    v25 = a2 + v527;
    v524 = v10 * (2 * v582 + 10) - 2;
    v525 = v10 * (2 * v582 + 12) - 2;
    v26 = a2 + v525;
    v27 = a2 + v524;
    v522 = v10 * (2 * v582 + 6) - 2;
    v523 = v10 * (2 * v582 + 8) - 2;
    v28 = a2 + v523;
    v29 = a2 + v522;
    v520 = v10 * (2 * v582 + 2) - 2;
    v521 = v10 * (2 * v582 + 4) - 2;
    v30 = a2 + v521;
    v31 = a2 + v520;
    do
    {
      v564 = v8;
      v565 = a2;
      v561 = v16;
      v562 = v14;
      v559 = v18;
      v560 = v17;
      v557 = v21;
      v558 = v19;
      v555 = v23;
      v556 = v22;
      v550 = v25;
      v552 = v24;
      v546 = v27;
      v548 = v26;
      v544 = v29;
      v545 = v28;
      v540 = v31;
      v542 = v30;
      if (v582 < 8)
      {
        v64 = 0;
        v35 = a2;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v534)
        {
          goto LABEL_12;
        }

        v32 = 0;
        v33 = v21;
        v34 = v16;
        v35 = a2;
        do
        {
          v605 = v32;
          v607 = v35;
          v36 = 0;
          v601 = v30;
          v603 = v31;
          v37 = v31;
          v597 = v28;
          v599 = v29;
          v593 = v26;
          v595 = v27;
          v38 = v26;
          v588 = v33;
          v591 = v25;
          v39 = v33;
          v585 = v24;
          v40 = v24;
          v41 = v23;
          v579 = v19;
          v42 = v22;
          v575 = v17;
          v577 = v18;
          v43 = v18;
          v44 = v17;
          v570 = v14;
          v572 = v34;
          v45 = v34;
          v46 = v14;
          do
          {
            v657 = v37;
            v652 = v30;
            v646 = v29;
            v643 = v28;
            v639 = v27;
            v637 = v38;
            v631 = v39;
            v628 = v40;
            v625 = v41;
            v619 = v19;
            v622 = v42;
            v613 = v44;
            v616 = v43;
            if ((v36 | 1) >= v6)
            {
              v56 = 0;
              v57 = v42;
              v58 = v19;
              v59 = v44;
              v60 = v45;
              v61 = v46;
              do
              {
                v62 = 0;
                do
                {
                  LOWORD(v63) = *(v40 + 2 * v62);
                  WORD1(v63) = *(v41 + 2 * v62);
                  WORD2(v63) = *(v57 + 2 * v62);
                  HIWORD(v63) = *(v58 + 2 * v62);
                  result->i64[0] = v63;
                  LOWORD(v63) = *(v43 + 2 * v62);
                  WORD1(v63) = *(v59 + 2 * v62);
                  WORD2(v63) = *(v60 + 2 * v62);
                  HIWORD(v63) = *(v61 + 2 * v62);
                  result->i64[1] = v63;
                  result += 2;
                  --v62;
                }

                while (v13 != v62);
                ++v56;
                v61 += v15;
                v60 += v15;
                v59 += v15;
                v43 += v15;
                v58 += v15;
                v57 += v15;
                v41 += v15;
                v40 += v15;
              }

              while (v56 != v651);
            }

            else
            {
              v47 = 0;
              v48 = v19;
              v49 = v45;
              v50 = v46;
              v51 = v38;
              v52 = v25;
              v53 = v39;
              do
              {
                v54 = 0;
                do
                {
                  LOWORD(v55) = *(v40 + 2 * v54);
                  WORD1(v55) = *(v41 + 2 * v54);
                  WORD2(v55) = *(v42 + 2 * v54);
                  HIWORD(v55) = *(v48 + 2 * v54);
                  result->i64[0] = v55;
                  LOWORD(v55) = *(v43 + 2 * v54);
                  WORD1(v55) = *(v44 + 2 * v54);
                  WORD2(v55) = *(v49 + 2 * v54);
                  HIWORD(v55) = *(v50 + 2 * v54);
                  result->i64[1] = v55;
                  LOWORD(v55) = *(v37 + 2 * v54);
                  WORD1(v55) = *(v30 + 2 * v54);
                  WORD2(v55) = *(v29 + 2 * v54);
                  HIWORD(v55) = *(v28 + 2 * v54);
                  result[1].i64[0] = v55;
                  LOWORD(v55) = *(v27 + 2 * v54);
                  WORD1(v55) = *(v51 + 2 * v54);
                  WORD2(v55) = *(v52 + 2 * v54);
                  HIWORD(v55) = *(v53 + 2 * v54);
                  result[1].i64[1] = v55;
                  result += 2;
                  --v54;
                }

                while (v13 != v54);
                ++v47;
                v53 += v15;
                v52 += v15;
                v51 += v15;
                v27 += v15;
                v28 += v15;
                v29 += v15;
                v30 += v15;
                v37 += v15;
                v50 += v15;
                v49 += v15;
                v44 += v15;
                v43 += v15;
                v48 += v15;
                v42 += v15;
                v41 += v15;
                v40 += v15;
              }

              while (v47 != v651);
            }

            v36 += 2;
            v46 += v610;
            v45 += v610;
            v44 = v613 + v610;
            v43 = v616 + v610;
            v19 = v619 + v610;
            v42 = v622 + v610;
            v41 = v625 + v610;
            v40 = v628 + v610;
            v39 = v631 + v610;
            v25 += v610;
            v38 = v637 + v610;
            v27 = v639 + v610;
            v28 = v643 + v610;
            v29 = v646 + v610;
            v30 = v652 + v610;
            v37 = v657 + v610;
          }

          while (v36 < v6);
          v32 += 8;
          v35 = &v607[v567 / 2];
          v14 = v570 + v567;
          v34 = v572 + v567;
          v17 = v575 + v567;
          v18 = v577 + v567;
          v19 = v579 + v567;
          v22 += v567;
          v23 += v567;
          v24 = v585 + v567;
          v33 = v588 + v567;
          v25 = v591 + v567;
          v26 = v593 + v567;
          v27 = v595 + v567;
          v28 = v597 + v567;
          v29 = v599 + v567;
          v30 = v601 + v567;
          v31 = v603 + v567;
        }

        while (v605 + 8 < (v582 - 7));
        v64 = v582 & 0xFFFFFFFFFFFFFFF8;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      v65 = __OFSUB__(v582, v64);
      v66 = v582 - v64;
      if (!((v66 < 0) ^ v65 | (v66 == 0)) && !v532)
      {
        v67 = 0;
        v68 = v35 + v531;
        v69 = v35 + v530;
        v70 = v35 + v529;
        v71 = v35 + v526;
        v72 = v35 + v528;
        v73 = v35 + v519;
        v74 = v35 + v518;
        v75 = v35 + v527;
        v76 = v35 + v525;
        v77 = v35 + v524;
        v78 = v35 + v523;
        v79 = v35 + v522;
        v80 = v35 + v521;
        v81 = v35 + v520;
LABEL_37:
        v658 = v68;
        v653 = v75;
        v647 = v76;
        v644 = v77;
        v640 = v78;
        v638 = v79;
        v635 = v80;
        v632 = v81;
        v82 = 0;
        if ((v67 | 1) < v6)
        {
          v83 = v74;
          v84 = v73;
          v85 = v72;
          v86 = v71;
          v87 = v70;
          v88 = v69;
          while (1)
          {
            v89 = 0;
            do
            {
              if (v66 > 3)
              {
                if (v66 > 5)
                {
                  if (v66 != 6)
                  {
                    if (v66 != 7)
                    {
                      goto LABEL_65;
                    }

                    result->i16[6] = *(v68 + 2 * v89);
                  }

                  result->i16[5] = *(v88 + 2 * v89);
LABEL_60:
                  result->i16[4] = *(v87 + 2 * v89);
                }

                else if (v66 != 4)
                {
                  goto LABEL_60;
                }

                result->i16[3] = *(v86 + 2 * v89);
LABEL_62:
                result->i16[2] = *(v85 + 2 * v89);
LABEL_63:
                result->i16[1] = *(v84 + 2 * v89);
LABEL_64:
                result->i16[0] = *(v83 + 2 * v89);
                goto LABEL_65;
              }

              switch(v66)
              {
                case 1:
                  goto LABEL_64;
                case 2:
                  goto LABEL_63;
                case 3:
                  goto LABEL_62;
              }

LABEL_65:
              if (v66 <= 3)
              {
                switch(v66)
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
                if (v66 <= 5)
                {
                  if (v66 != 4)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_43;
                }

                if (v66 == 6)
                {
                  goto LABEL_41;
                }

                if (v66 == 7)
                {
                  result[1].i16[6] = *(v75 + 2 * v89);
LABEL_41:
                  result[1].i16[5] = *(v76 + 2 * v89);
LABEL_42:
                  result[1].i16[4] = *(v77 + 2 * v89);
LABEL_43:
                  result[1].i16[3] = *(v78 + 2 * v89);
LABEL_44:
                  result[1].i16[2] = *(v79 + 2 * v89);
LABEL_45:
                  result[1].i16[1] = *(v80 + 2 * v89);
LABEL_46:
                  result[1].i16[0] = *(v81 + 2 * v89);
                }
              }

              result += 2;
              --v89;
            }

            while (v13 != v89);
            ++v82;
            v68 += v15;
            v88 += v15;
            v87 += v15;
            v86 += v15;
            v85 += v15;
            v84 += v15;
            v75 += v15;
            v76 += v15;
            v77 += v15;
            v78 += v15;
            v79 += v15;
            v80 += v15;
            v81 += v15;
            v83 += v15;
            if (v82 == v651)
            {
              goto LABEL_36;
            }
          }
        }

        v90 = v74;
        v91 = v73;
        v92 = v72;
        v93 = v68;
        v94 = v71;
        v95 = v70;
        v96 = v69;
        while (2)
        {
          v97 = 0;
LABEL_86:
          if (v66 <= 3)
          {
            switch(v66)
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
            if (v66 > 5)
            {
              if (v66 != 6)
              {
                if (v66 != 7)
                {
                  goto LABEL_85;
                }

                result->i16[6] = *(v93 + 2 * v97);
              }

              result->i16[5] = *(v96 + 2 * v97);
              goto LABEL_80;
            }

            if (v66 != 4)
            {
LABEL_80:
              result->i16[4] = *(v95 + 2 * v97);
            }

            result->i16[3] = *(v94 + 2 * v97);
LABEL_82:
            result->i16[2] = *(v92 + 2 * v97);
LABEL_83:
            result->i16[1] = *(v91 + 2 * v97);
LABEL_84:
            result->i16[0] = *(v90 + 2 * v97);
          }

LABEL_85:
          result += 2;
          if (v13 == --v97)
          {
            ++v82;
            v93 += v15;
            v96 += v15;
            v95 += v15;
            v94 += v15;
            v92 += v15;
            v91 += v15;
            v90 += v15;
            if (v82 != v651)
            {
              continue;
            }

LABEL_36:
            v67 += 2;
            v68 = v658 + v610;
            v69 += v610;
            v70 += v610;
            v71 += v610;
            v72 += v610;
            v73 += v610;
            v74 += v610;
            v75 = v653 + v610;
            v76 = v647 + v610;
            v77 = v644 + v610;
            v78 = v640 + v610;
            v79 = v638 + v610;
            v80 = v635 + v610;
            v81 = v632 + v610;
            if (v67 >= v6)
            {
              break;
            }

            goto LABEL_37;
          }

          goto LABEL_86;
        }
      }

LABEL_12:
      a2 = &v565[v538];
      v8 = v564 + 1;
      v14 = v562 + v536;
      v16 = v561 + v536;
      v17 = v560 + v536;
      v18 = v559 + v536;
      v19 = v558 + v536;
      v22 = v556 + v536;
      v23 = v555 + v536;
      v24 = v552 + v536;
      v21 = v557 + v536;
      v25 = v550 + v536;
      v26 = v548 + v536;
      v27 = v546 + v536;
      v28 = v545 + v536;
      v29 = v544 + v536;
      v30 = v542 + v536;
      v31 = v540 + v536;
    }

    while (v564 + 1 != v554);
  }

  return result;
}