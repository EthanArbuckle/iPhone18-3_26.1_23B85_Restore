_DWORD *sub_239CAC664(_DWORD *result, int32x4_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 32);
  v699 = *(a3 + 48);
  v996 = *(a3 + 56);
  v883 = *(a3 + 64);
  v5 = *(a3 + 108);
  v841 = v4;
  if (*(a3 + 104) != 1)
  {
    v176 = *(a3 + 16);
    v177 = *(a3 + 40);
    v178 = *(a3 + 72);
    v179 = *(a3 + 80);
    v901 = v179;
    if (v5)
    {
      if (v699 && v3 && v996 && v4 && v883)
      {
        v180 = 0;
        v181 = v883 * v176;
        v182 = a2;
        v183 = (v883 * v996) << 7;
        v184 = v883 * v3 * v996;
        v185 = v996 << 7;
        v987 = v996 * v177 * v181;
        v981 = v996 * v4 * v883 * v3;
        v186 = 32 * v883 * v996;
        v187 = 16 * v996 * v181;
        v188 = 4 * v883 * v996;
        v189 = v182;
        do
        {
          v190 = 0;
          v993 = v180;
          v191 = v180 * v4;
          v701 = v189;
          v192 = result;
          do
          {
            v193 = v190 + v191;
            if ((v190 + v191) % v179 < v178)
            {
              v194 = 0;
              v195 = v189;
              v196 = v192;
              do
              {
                v197 = 0;
                v198 = v195;
                v199 = v196;
                do
                {
                  v200 = 0;
                  v201 = 0;
                  v202 = 8;
                  v203 = v198;
                  v204 = v199;
                  do
                  {
                    if (v3 >= v202)
                    {
                      v205 = v202;
                    }

                    else
                    {
                      v205 = v3;
                    }

                    v206 = v205 + v200;
                    v207 = v203;
                    v208 = v204;
                    do
                    {
                      *v208 = *v207;
                      v208 += 4;
                      v207 = (v207 + v188);
                      --v206;
                    }

                    while (v206);
                    v201 += 8;
                    v204 = (v204 + v183);
                    v203 = (v203 + v186);
                    v202 += 8;
                    v200 -= 8;
                  }

                  while (v201 < v3);
                  ++v197;
                  v199 += 32;
                  v198 = (v198 + 4);
                }

                while (v197 != v996);
                ++v194;
                v196 = (v196 + v185);
                v195 = (v195 + 4 * v996);
              }

              while (v194 != v883);
              v189 = (v189 + 4 * v184);
              v4 = v841;
              v179 = v901;
            }

            if ((v190 | 1) < v4 && (v193 + 1) % v179 < v178)
            {
              v209 = 0;
              v210 = (v192 + 1);
              v211 = v189;
              do
              {
                v212 = 0;
                v213 = v211;
                v214 = v210;
                do
                {
                  v215 = 0;
                  v216 = 0;
                  v217 = 8;
                  v218 = v213;
                  v219 = v214;
                  do
                  {
                    v220 = 0;
                    if (v3 >= v217)
                    {
                      v221 = v217;
                    }

                    else
                    {
                      v221 = v3;
                    }

                    v222 = v221 + v215;
                    v223 = v218;
                    do
                    {
                      *&v219[v220] = *v223;
                      v223 = (v223 + v188);
                      v220 += 16;
                      --v222;
                    }

                    while (v222);
                    v216 += 8;
                    v219 += v183;
                    v218 = (v218 + v186);
                    v217 += 8;
                    v215 -= 8;
                  }

                  while (v216 < v3);
                  ++v212;
                  v214 += 128;
                  v213 = (v213 + 4);
                }

                while (v212 != v996);
                ++v209;
                v210 += v185;
                v211 = (v211 + 4 * v996);
              }

              while (v209 != v883);
              v189 = (v189 + 4 * v184);
              v4 = v841;
              v179 = v901;
            }

            if ((v190 | 2) < v4 && (v193 + 2) % v179 < v178)
            {
              v224 = 0;
              v225 = (v192 + 2);
              v226 = v189;
              do
              {
                v227 = 0;
                v228 = v226;
                v229 = v225;
                do
                {
                  v230 = 0;
                  v231 = 0;
                  v232 = 8;
                  v233 = v228;
                  v234 = v229;
                  do
                  {
                    v235 = 0;
                    if (v3 >= v232)
                    {
                      v236 = v232;
                    }

                    else
                    {
                      v236 = v3;
                    }

                    v237 = v236 + v230;
                    v238 = v233;
                    do
                    {
                      *&v234[v235] = *v238;
                      v238 = (v238 + v188);
                      v235 += 16;
                      --v237;
                    }

                    while (v237);
                    v231 += 8;
                    v234 += v183;
                    v233 = (v233 + v186);
                    v232 += 8;
                    v230 -= 8;
                  }

                  while (v231 < v3);
                  ++v227;
                  v229 += 128;
                  v228 = (v228 + 4);
                }

                while (v227 != v996);
                ++v224;
                v225 += v185;
                v226 = (v226 + 4 * v996);
              }

              while (v224 != v883);
              v189 = (v189 + 4 * v184);
              v4 = v841;
              v179 = v901;
            }

            if ((v190 | 3) < v4 && (v193 + 3) % v179 < v178)
            {
              v239 = 0;
              v240 = (v192 + 3);
              v241 = v189;
              do
              {
                v242 = 0;
                v243 = v241;
                v244 = v240;
                do
                {
                  v245 = 0;
                  v246 = 0;
                  v247 = 8;
                  v248 = v243;
                  v249 = v244;
                  do
                  {
                    v250 = 0;
                    if (v3 >= v247)
                    {
                      v251 = v247;
                    }

                    else
                    {
                      v251 = v3;
                    }

                    v252 = v251 + v245;
                    v253 = v248;
                    do
                    {
                      *&v249[v250] = *v253;
                      v253 = (v253 + v188);
                      v250 += 16;
                      --v252;
                    }

                    while (v252);
                    v246 += 8;
                    v249 += v183;
                    v248 = (v248 + v186);
                    v247 += 8;
                    v245 -= 8;
                  }

                  while (v246 < v3);
                  ++v242;
                  v244 += 128;
                  v243 = (v243 + 4);
                }

                while (v242 != v996);
                ++v239;
                v240 += v185;
                v241 = (v241 + 4 * v996);
              }

              while (v239 != v883);
              v189 = (v189 + 4 * v184);
              v4 = v841;
            }

            v190 += 4;
            v192 = (v192 + v187);
          }

          while (v190 < v4);
          v180 = v993 + 1;
          result += v987;
          v189 = (v701 + 4 * v981);
        }

        while (v993 + 1 != v699);
      }

      return result;
    }

    if (!v699)
    {
      return result;
    }

    v322 = 0;
    v323 = 0;
    v324 = *(a3 + 88);
    v827 = v4 - 3;
    v325 = v883 * v3 * v996;
    v326 = (v883 * v996) << 7;
    v327 = v883 * v996 * v3;
    v328 = v3 - 7;
    v854 = v996 << 7;
    v329 = v996 * v883 * v176;
    v813 = v329 * v177;
    v810 = v996 * v4 * v883 * v3;
    v995 = v3 & 0xFFFFFFFFFFFFFFF8;
    v806 = ((v4 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v330 = v883 * v996 * v176;
    v808 = 4 * v177 * v330;
    v823 = v329;
    v850 = 4 * v996 * v3;
    v331 = 4 * v3;
    v332 = result + v330 * (((4 * (v4 - 4)) & 0xFFFFFFFFFFFFFFF0) + 16);
    v804 = v327;
    v802 = 2 * v327;
    v799 = 3 * v327;
    v895 = v324;
LABEL_449:
    v817 = v322;
    v703 = a2;
    v815 = v332;
    if (v4 < 4)
    {
      v459 = 0;
      v335 = result;
      v460 = a2;
      if (v4 > 0)
      {
        goto LABEL_613;
      }

      goto LABEL_448;
    }

    if (!v883)
    {
      goto LABEL_448;
    }

    v831 = v322 * v4;
    if (!v996)
    {
      goto LABEL_448;
    }

    v333 = 0;
    v334 = a2;
    v335 = result;
LABEL_454:
    v336 = 0;
    v835 = v333;
    v337 = v333 + v831;
    v338 = v333 + v831 + 1;
    v339 = v333 + v831 + 2;
    v989 = v333 + v831 + 3;
    v845 = v334;
    v340 = v334;
    v839 = v335;
    v341 = v335;
    v887 = v333 + v831;
    v882 = v338;
    v879 = v339;
LABEL_456:
    v866 = v336;
    v342 = 0;
    v862 = v340;
    v858 = v341;
LABEL_461:
    if (v3 < 8)
    {
      v371 = 0;
      v357 = v341;
      v356 = v340;
      if (v3 <= 0)
      {
        goto LABEL_460;
      }

      goto LABEL_482;
    }

    if (v324 == 1)
    {
      v352 = 0;
      v353 = 4 * v325;
      v354 = 8 * v325;
      v355 = 12 * v325;
      v356 = v340;
      v357 = v341;
      do
      {
        v359 = *v356;
        v358 = v356[1];
        v356 += 2;
        v361 = *(v340 + v353);
        v360 = *(&v340[1] + v353);
        v363 = *(v340 + v354);
        v362 = *(&v340[1] + v354);
        v364 = *(v340 + v355);
        v365.i64[0] = vuzp2q_s32(vuzp2q_s32(v359, v361), v359).u64[0];
        v365.i64[1] = vzip2q_s32(v363, v364).i64[1];
        v366 = vzip1q_s32(v363, v364);
        v367 = vextq_s8(v363, v366, 8uLL);
        v363.i32[3] = *(&v340->i64[1] + v355);
        v364.i64[0] = vzip2q_s32(v359, v361).u64[0];
        v364.i64[1] = v363.i64[1];
        v363.i64[0] = vzip1q_s32(v359, v361).u64[0];
        v363.i64[1] = v367.i64[1];
        v359.i64[0] = vtrn2q_s32(v359, v361).u64[0];
        v359.i64[1] = v366.i64[1];
        v368 = *(&v340[1] + v355);
        v367.i64[0] = vuzp2q_s32(vuzp2q_s32(v358, v360), v358).u64[0];
        v367.i64[1] = vzip2q_s32(v362, v368).i64[1];
        v369 = vzip1q_s32(v362, v368);
        v370 = vextq_s8(v362, v369, 8uLL);
        v362.i32[3] = *(&v340[1].i64[1] + v355);
        v368.i64[0] = vzip2q_s32(v358, v360).u64[0];
        v368.i64[1] = v362.i64[1];
        v362.i64[0] = vzip1q_s32(v358, v360).u64[0];
        v362.i64[1] = v370.i64[1];
        v358.i64[0] = vtrn2q_s32(v358, v360).u64[0];
        v358.i64[1] = v369.i64[1];
        *v357 = v363;
        v357[1] = v359;
        v357[2] = v364;
        v357[3] = v365;
        v357[4] = v362;
        v357[5] = v358;
        v357[6] = v368;
        v357[7] = v367;
        v352 += 8;
        v357 = (v357 + v326);
        v355 += 32;
        v354 += 32;
        v353 += 32;
      }

      while (v352 < v328);
      v323 = 4;
      v371 = v3 & 0xFFFFFFFFFFFFFFF8;
      if (v995 >= v3)
      {
        goto LABEL_460;
      }

LABEL_482:
      if (v324 == 1)
      {
        v394 = v371 | 1;
        if ((v371 | 1) >= v3)
        {
          v983 = 0;
          v395 = v371 | 2;
          if ((v371 | 2) < v3)
          {
            goto LABEL_522;
          }

LABEL_485:
          v973 = 0;
          v396 = v371 | 3;
          if ((v371 | 3) >= v3)
          {
            goto LABEL_486;
          }

LABEL_523:
          v963 = v356->i32[3];
          v397 = v371 | 4;
          if ((v371 | 4) < v3)
          {
            goto LABEL_524;
          }

LABEL_487:
          v977 = 0;
          v398 = v371 | 5;
          if ((v371 | 5) >= v3)
          {
            goto LABEL_488;
          }

LABEL_525:
          v968 = v356[1].i32[1];
          v399 = v371 | 6;
          if ((v371 | 6) < v3)
          {
            goto LABEL_526;
          }

LABEL_489:
          v958 = 0;
          v400 = v371 | 7;
          if ((v371 | 7) >= v3)
          {
            goto LABEL_490;
          }

LABEL_527:
          v953 = v356[1].i32[3];
          v401 = &v356->i32[v327];
          if (v394 < v3)
          {
            goto LABEL_528;
          }

LABEL_491:
          v948 = 0;
          if (v395 >= v3)
          {
            goto LABEL_492;
          }

LABEL_529:
          v938 = v401[2];
          if (v396 < v3)
          {
            goto LABEL_530;
          }

LABEL_493:
          v916 = 0;
          v922 = v356->i32[0];
          v928 = *v401;
          if (v397 >= v3)
          {
            goto LABEL_494;
          }

LABEL_531:
          v943 = v401[4];
          if (v398 < v3)
          {
            goto LABEL_532;
          }

LABEL_495:
          v933 = 0;
          if (v399 >= v3)
          {
            goto LABEL_496;
          }

LABEL_533:
          v911 = v401[6];
          if (v400 < v3)
          {
            goto LABEL_534;
          }

LABEL_497:
          v906 = 0;
          v402 = &v401[v327];
          v403 = *v402;
          if (v394 >= v3)
          {
            goto LABEL_498;
          }

LABEL_535:
          v404 = v402[1];
          if (v395 < v3)
          {
            goto LABEL_536;
          }

LABEL_499:
          v405 = 0;
          if (v396 >= v3)
          {
            goto LABEL_500;
          }

LABEL_537:
          v406 = v402[3];
          if (v397 < v3)
          {
            goto LABEL_538;
          }

LABEL_501:
          v407 = 0;
          if (v398 >= v3)
          {
            goto LABEL_502;
          }

LABEL_539:
          v408 = v402[5];
          if (v399 < v3)
          {
            goto LABEL_540;
          }

LABEL_503:
          v409 = 0;
          if (v400 >= v3)
          {
            goto LABEL_504;
          }

LABEL_541:
          v410 = v402[7];
          v411 = &v402[v327];
          v412 = *v411;
          if (v394 < v3)
          {
            goto LABEL_542;
          }

LABEL_505:
          v413 = 0;
          if (v395 >= v3)
          {
            goto LABEL_506;
          }

LABEL_543:
          v414 = v411[2];
          if (v396 < v3)
          {
            goto LABEL_544;
          }

LABEL_507:
          v415 = 0;
          if (v397 >= v3)
          {
            goto LABEL_508;
          }

LABEL_545:
          v416 = v411[4];
          if (v398 < v3)
          {
            goto LABEL_546;
          }

LABEL_509:
          v417 = 0;
          if (v399 >= v3)
          {
            goto LABEL_510;
          }

LABEL_547:
          v418 = v411[6];
          v419 = v882;
          if (v400 < v3)
          {
            goto LABEL_457;
          }

LABEL_548:
          v343 = 0;
        }

        else
        {
          v983 = v356->i32[1];
          v395 = v371 | 2;
          if ((v371 | 2) >= v3)
          {
            goto LABEL_485;
          }

LABEL_522:
          v973 = v356->i32[2];
          v396 = v371 | 3;
          if ((v371 | 3) < v3)
          {
            goto LABEL_523;
          }

LABEL_486:
          v963 = 0;
          v397 = v371 | 4;
          if ((v371 | 4) >= v3)
          {
            goto LABEL_487;
          }

LABEL_524:
          v977 = v356[1].i32[0];
          v398 = v371 | 5;
          if ((v371 | 5) < v3)
          {
            goto LABEL_525;
          }

LABEL_488:
          v968 = 0;
          v399 = v371 | 6;
          if ((v371 | 6) >= v3)
          {
            goto LABEL_489;
          }

LABEL_526:
          v958 = v356[1].i32[2];
          v400 = v371 | 7;
          if ((v371 | 7) < v3)
          {
            goto LABEL_527;
          }

LABEL_490:
          v953 = 0;
          v401 = &v356->i32[v327];
          if (v394 >= v3)
          {
            goto LABEL_491;
          }

LABEL_528:
          v948 = v401[1];
          if (v395 < v3)
          {
            goto LABEL_529;
          }

LABEL_492:
          v938 = 0;
          if (v396 >= v3)
          {
            goto LABEL_493;
          }

LABEL_530:
          v916 = v401[3];
          v922 = v356->i32[0];
          v928 = *v401;
          if (v397 < v3)
          {
            goto LABEL_531;
          }

LABEL_494:
          v943 = 0;
          if (v398 >= v3)
          {
            goto LABEL_495;
          }

LABEL_532:
          v933 = v401[5];
          if (v399 < v3)
          {
            goto LABEL_533;
          }

LABEL_496:
          v911 = 0;
          if (v400 >= v3)
          {
            goto LABEL_497;
          }

LABEL_534:
          v906 = v401[7];
          v402 = &v401[v327];
          v403 = *v402;
          if (v394 < v3)
          {
            goto LABEL_535;
          }

LABEL_498:
          v404 = 0;
          if (v395 >= v3)
          {
            goto LABEL_499;
          }

LABEL_536:
          v405 = v402[2];
          if (v396 < v3)
          {
            goto LABEL_537;
          }

LABEL_500:
          v406 = 0;
          if (v397 >= v3)
          {
            goto LABEL_501;
          }

LABEL_538:
          v407 = v402[4];
          if (v398 < v3)
          {
            goto LABEL_539;
          }

LABEL_502:
          v408 = 0;
          if (v399 >= v3)
          {
            goto LABEL_503;
          }

LABEL_540:
          v409 = v402[6];
          if (v400 < v3)
          {
            goto LABEL_541;
          }

LABEL_504:
          v410 = 0;
          v411 = &v402[v327];
          v412 = *v411;
          if (v394 >= v3)
          {
            goto LABEL_505;
          }

LABEL_542:
          v413 = v411[1];
          if (v395 < v3)
          {
            goto LABEL_543;
          }

LABEL_506:
          v414 = 0;
          if (v396 >= v3)
          {
            goto LABEL_507;
          }

LABEL_544:
          v415 = v411[3];
          if (v397 < v3)
          {
            goto LABEL_545;
          }

LABEL_508:
          v416 = 0;
          if (v398 >= v3)
          {
            goto LABEL_509;
          }

LABEL_546:
          v417 = v411[5];
          if (v399 < v3)
          {
            goto LABEL_547;
          }

LABEL_510:
          v418 = 0;
          v419 = v882;
          if (v400 >= v3)
          {
            goto LABEL_548;
          }

LABEL_457:
          v343 = v411[7];
        }

        v339 = v879;
        v344.i64[0] = __PAIR64__(v916, v963);
        v344.i64[1] = __PAIR64__(v415, v406);
        v345.i64[0] = __PAIR64__(v938, v973);
        v345.i64[1] = __PAIR64__(v414, v405);
        v346.i64[0] = __PAIR64__(v948, v983);
        v346.i64[1] = __PAIR64__(v413, v404);
        v347.i64[0] = __PAIR64__(v928, v922);
        v347.i64[1] = __PAIR64__(v412, v403);
        v348.i64[0] = __PAIR64__(v906, v953);
        v348.i64[1] = __PAIR64__(v343, v410);
        v349.i64[0] = __PAIR64__(v911, v958);
        v349.i64[1] = __PAIR64__(v418, v409);
        v350.i64[0] = __PAIR64__(v933, v968);
        v350.i64[1] = __PAIR64__(v417, v408);
        v351.i64[0] = __PAIR64__(v943, v977);
        v351.i64[1] = __PAIR64__(v416, v407);
        v323 = 4;
        v4 = v841;
        v179 = v901;
        v324 = v895;
        v327 = v883 * v996 * v3;
        v331 = 4 * v3;
        v337 = v887;
        v338 = v419;
LABEL_459:
        *v357 = v347;
        v357[1] = v346;
        v357[2] = v345;
        v357[3] = v344;
        v357[4] = v351;
        v357[5] = v350;
        v357[6] = v349;
        v357[7] = v348;
        goto LABEL_460;
      }

      v420 = 0uLL;
      if (v337 % v179 >= v178)
      {
        v323 = 0;
        v428 = 0uLL;
        v429 = 0uLL;
        if (v338 % v179 < v178)
        {
          goto LABEL_561;
        }
      }

      else
      {
        if ((v371 | 1) >= v3)
        {
          v421 = 0;
          if ((v371 | 2) < v3)
          {
            goto LABEL_554;
          }

LABEL_515:
          v422 = 0;
          if ((v371 | 3) >= v3)
          {
            goto LABEL_516;
          }

LABEL_555:
          v423 = v356->i32[3];
          if ((v371 | 4) < v3)
          {
            goto LABEL_556;
          }

LABEL_517:
          v424 = 0;
          if ((v371 | 5) >= v3)
          {
            goto LABEL_518;
          }

LABEL_557:
          v425 = v356[1].i32[1];
          if ((v371 | 6) < v3)
          {
            goto LABEL_558;
          }

LABEL_519:
          v426 = 0;
          if ((v371 | 7) >= v3)
          {
            goto LABEL_520;
          }

LABEL_559:
          v427 = v356[1].i32[3];
        }

        else
        {
          v421 = v356->i32[1];
          if ((v371 | 2) >= v3)
          {
            goto LABEL_515;
          }

LABEL_554:
          v422 = v356->i32[2];
          if ((v371 | 3) < v3)
          {
            goto LABEL_555;
          }

LABEL_516:
          v423 = 0;
          if ((v371 | 4) >= v3)
          {
            goto LABEL_517;
          }

LABEL_556:
          v424 = v356[1].i32[0];
          if ((v371 | 5) < v3)
          {
            goto LABEL_557;
          }

LABEL_518:
          v425 = 0;
          if ((v371 | 6) >= v3)
          {
            goto LABEL_519;
          }

LABEL_558:
          v426 = v356[1].i32[2];
          if ((v371 | 7) < v3)
          {
            goto LABEL_559;
          }

LABEL_520:
          v427 = 0;
        }

        v428.i32[0] = v356->i32[0];
        v428.i32[1] = v421;
        v428.i64[1] = __PAIR64__(v423, v422);
        v429.i64[0] = __PAIR64__(v425, v424);
        v429.i64[1] = __PAIR64__(v427, v426);
        v356 = (v356 + 4 * v327);
        v323 = 1;
        if (v338 % v179 < v178)
        {
LABEL_561:
          if ((v371 | 1) >= v3)
          {
            v435 = 0;
            if ((v371 | 2) < v3)
            {
              goto LABEL_570;
            }

LABEL_563:
            v436 = 0;
            if ((v371 | 3) >= v3)
            {
              goto LABEL_564;
            }

LABEL_571:
            v437 = v356->i32[3];
            if ((v371 | 4) < v3)
            {
              goto LABEL_572;
            }

LABEL_565:
            v438 = 0;
            if ((v371 | 5) >= v3)
            {
              goto LABEL_566;
            }

LABEL_573:
            v439 = v356[1].i32[1];
            if ((v371 | 6) < v3)
            {
              goto LABEL_574;
            }

LABEL_567:
            v440 = 0;
            if ((v371 | 7) >= v3)
            {
              goto LABEL_568;
            }

LABEL_575:
            v441 = v356[1].i32[3];
          }

          else
          {
            v435 = v356->i32[1];
            if ((v371 | 2) >= v3)
            {
              goto LABEL_563;
            }

LABEL_570:
            v436 = v356->i32[2];
            if ((v371 | 3) < v3)
            {
              goto LABEL_571;
            }

LABEL_564:
            v437 = 0;
            if ((v371 | 4) >= v3)
            {
              goto LABEL_565;
            }

LABEL_572:
            v438 = v356[1].i32[0];
            if ((v371 | 5) < v3)
            {
              goto LABEL_573;
            }

LABEL_566:
            v439 = 0;
            if ((v371 | 6) >= v3)
            {
              goto LABEL_567;
            }

LABEL_574:
            v440 = v356[1].i32[2];
            if ((v371 | 7) < v3)
            {
              goto LABEL_575;
            }

LABEL_568:
            v441 = 0;
          }

          v420.i32[0] = v356->i32[0];
          v420.i32[1] = v435;
          v420.i64[1] = __PAIR64__(v437, v436);
          v430.i64[0] = __PAIR64__(v439, v438);
          v430.i64[1] = __PAIR64__(v441, v440);
          v356 = (v356 + 4 * v327);
          ++v323;
          v431 = 0uLL;
          if (v339 % v179 < v178)
          {
LABEL_577:
            if ((v371 | 1) >= v3)
            {
              v442 = 0;
              if ((v371 | 2) < v3)
              {
                goto LABEL_586;
              }

LABEL_579:
              v443 = 0;
              if ((v371 | 3) >= v3)
              {
                goto LABEL_580;
              }

LABEL_587:
              v444 = v356->i32[3];
              if ((v371 | 4) < v3)
              {
                goto LABEL_588;
              }

LABEL_581:
              v445 = 0;
              if ((v371 | 5) >= v3)
              {
                goto LABEL_582;
              }

LABEL_589:
              v446 = v356[1].i32[1];
              if ((v371 | 6) < v3)
              {
                goto LABEL_590;
              }

LABEL_583:
              v447 = 0;
              if ((v371 | 7) >= v3)
              {
                goto LABEL_584;
              }

LABEL_591:
              v448 = v356[1].i32[3];
            }

            else
            {
              v442 = v356->i32[1];
              if ((v371 | 2) >= v3)
              {
                goto LABEL_579;
              }

LABEL_586:
              v443 = v356->i32[2];
              if ((v371 | 3) < v3)
              {
                goto LABEL_587;
              }

LABEL_580:
              v444 = 0;
              if ((v371 | 4) >= v3)
              {
                goto LABEL_581;
              }

LABEL_588:
              v445 = v356[1].i32[0];
              if ((v371 | 5) < v3)
              {
                goto LABEL_589;
              }

LABEL_582:
              v446 = 0;
              if ((v371 | 6) >= v3)
              {
                goto LABEL_583;
              }

LABEL_590:
              v447 = v356[1].i32[2];
              if ((v371 | 7) < v3)
              {
                goto LABEL_591;
              }

LABEL_584:
              v448 = 0;
            }

            v432.i32[0] = v356->i32[0];
            v432.i32[1] = v442;
            v432.i64[1] = __PAIR64__(v444, v443);
            v433.i64[0] = __PAIR64__(v446, v445);
            v433.i64[1] = __PAIR64__(v448, v447);
            v356 = (v356 + 4 * v327);
            ++v323;
            if (v989 % v179 < v178)
            {
LABEL_593:
              if ((v371 | 1) >= v3)
              {
                v449 = 0;
                if ((v371 | 2) < v3)
                {
                  goto LABEL_602;
                }

LABEL_595:
                v450 = 0;
                if ((v371 | 3) >= v3)
                {
                  goto LABEL_596;
                }

LABEL_603:
                v451 = v356->i32[3];
                if ((v371 | 4) < v3)
                {
                  goto LABEL_604;
                }

LABEL_597:
                v452 = 0;
                if ((v371 | 5) >= v3)
                {
                  goto LABEL_598;
                }

LABEL_605:
                v453 = v356[1].i32[1];
                if ((v371 | 6) < v3)
                {
                  goto LABEL_606;
                }

LABEL_599:
                v454 = 0;
                if ((v371 | 7) >= v3)
                {
                  goto LABEL_600;
                }

LABEL_607:
                v455 = v356[1].i32[3];
              }

              else
              {
                v449 = v356->i32[1];
                if ((v371 | 2) >= v3)
                {
                  goto LABEL_595;
                }

LABEL_602:
                v450 = v356->i32[2];
                if ((v371 | 3) < v3)
                {
                  goto LABEL_603;
                }

LABEL_596:
                v451 = 0;
                if ((v371 | 4) >= v3)
                {
                  goto LABEL_597;
                }

LABEL_604:
                v452 = v356[1].i32[0];
                if ((v371 | 5) < v3)
                {
                  goto LABEL_605;
                }

LABEL_598:
                v453 = 0;
                if ((v371 | 6) >= v3)
                {
                  goto LABEL_599;
                }

LABEL_606:
                v454 = v356[1].i32[2];
                if ((v371 | 7) < v3)
                {
                  goto LABEL_607;
                }

LABEL_600:
                v455 = 0;
              }

              v431.i32[0] = v356->i32[0];
              v431.i32[1] = v449;
              v431.i64[1] = __PAIR64__(v451, v450);
              v434.i64[0] = __PAIR64__(v453, v452);
              v434.i64[1] = __PAIR64__(v455, v454);
              ++v323;
LABEL_609:
              v345.i64[0] = vzip2q_s32(v428, v420).u64[0];
              v345.i64[1] = __PAIR64__(v431.u32[2], v432.u32[2]);
              v456 = vzip1q_s32(v432, v431);
              v346.i64[0] = vtrn2q_s32(v428, v420).u64[0];
              v346.i64[1] = v456.i64[1];
              v457 = vzip2q_s32(v432, v431);
              v344.i64[0] = vuzp2q_s32(vuzp2q_s32(v428, v420), v428).u64[0];
              v344.i64[1] = v457.i64[1];
              v347.i64[0] = vzip1q_s32(v428, v420).u64[0];
              v347.i64[1] = vextq_s8(*&v432, v456, 8uLL).i64[1];
              v349.i64[0] = vzip2q_s32(v429, v430).u64[0];
              v349.i64[1] = __PAIR64__(v434.u32[2], v433.u32[2]);
              v458 = vzip1q_s32(v433, v434);
              v350.i64[0] = vtrn2q_s32(v429, v430).u64[0];
              v350.i64[1] = v458.i64[1];
              v348.i64[0] = vuzp2q_s32(vuzp2q_s32(v429, v430), v429).u64[0];
              v348.i64[1] = vzip2q_s32(v433, v434).i64[1];
              v351.i64[0] = vzip1q_s32(v429, v430).u64[0];
              v351.i64[1] = vextq_s8(*&v433, v458, 8uLL).i64[1];
              goto LABEL_459;
            }

LABEL_552:
            v434 = 0uLL;
            goto LABEL_609;
          }

LABEL_551:
          v432 = 0uLL;
          v433 = 0uLL;
          if (v989 % v179 < v178)
          {
            goto LABEL_593;
          }

          goto LABEL_552;
        }
      }

      v430 = 0uLL;
      v431 = 0uLL;
      if (v339 % v179 < v178)
      {
        goto LABEL_577;
      }

      goto LABEL_551;
    }

    v372 = 0;
    v373 = v338 % v179;
    v374 = v339 % v179;
    v375 = v989 % v179;
    v356 = v340;
    v357 = v341;
    while (1)
    {
      v387 = 0uLL;
      if (v337 % v179 >= v178)
      {
        v323 = 0;
        v389 = 0uLL;
        v388 = 0uLL;
        v390 = v356;
        if (v373 >= v178)
        {
LABEL_474:
          v391 = 0uLL;
          v376 = 0uLL;
          if (v374 >= v178)
          {
            goto LABEL_475;
          }

          goto LABEL_479;
        }
      }

      else
      {
        v389 = *v356;
        v388 = v356[1];
        v390 = (v356 + 4 * v325);
        v323 = 1;
        if (v373 >= v178)
        {
          goto LABEL_474;
        }
      }

      v387 = *v390;
      v391 = v390[1];
      v390 = (v390 + 4 * v325);
      ++v323;
      v376 = 0uLL;
      if (v374 >= v178)
      {
LABEL_475:
        v392 = 0uLL;
        v393 = 0uLL;
        if (v375 >= v178)
        {
          goto LABEL_480;
        }

        goto LABEL_470;
      }

LABEL_479:
      v392 = *v390;
      v393 = v390[1];
      v390 = (v390 + 4 * v325);
      ++v323;
      if (v375 >= v178)
      {
LABEL_480:
        v377 = 0uLL;
        goto LABEL_471;
      }

LABEL_470:
      v376 = *v390;
      v377 = v390[1];
      ++v323;
LABEL_471:
      v378.i64[0] = vuzp2q_s32(vuzp2q_s32(v389, v387), v389).u64[0];
      v378.i64[1] = vzip2q_s32(v392, v376).i64[1];
      v379.i64[0] = vzip2q_s32(v389, v387).u64[0];
      v379.i64[1] = __PAIR64__(v376.u32[2], v392.u32[2]);
      v380.i64[0] = vzip1q_s32(v389, v387).u64[0];
      v381 = vzip1q_s32(v392, v376);
      v380.i64[1] = vextq_s8(*&v392, v381, 8uLL).i64[1];
      v382.i64[0] = vtrn2q_s32(v389, v387).u64[0];
      v382.i64[1] = v381.i64[1];
      v381.i64[0] = vuzp2q_s32(vuzp2q_s32(v388, v391), v388).u64[0];
      v381.i64[1] = vzip2q_s32(v393, v377).i64[1];
      v383.i64[0] = vzip2q_s32(v388, v391).u64[0];
      v383.i64[1] = __PAIR64__(v377.u32[2], v393.u32[2]);
      v384.i64[0] = vzip1q_s32(v388, v391).u64[0];
      v385 = vzip1q_s32(v393, v377);
      v384.i64[1] = vextq_s8(*&v393, v385, 8uLL).i64[1];
      v386.i64[0] = vtrn2q_s32(v388, v391).u64[0];
      v386.i64[1] = v385.i64[1];
      *v357 = v380;
      v357[1] = v382;
      v357[2] = v379;
      v357[3] = v378;
      v357[4] = v384;
      v357[5] = v386;
      v357[6] = v383;
      v357[7] = v381;
      v372 += 8;
      v357 = (v357 + v326);
      v356 += 2;
      if (v372 >= v328)
      {
        v371 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v995 < v3)
        {
          goto LABEL_482;
        }

LABEL_460:
        ++v342;
        v341 += 8;
        v340 = (v340 + v331);
        if (v342 != v996)
        {
          goto LABEL_461;
        }

        v336 = v866 + 1;
        v341 = (v858 + v854);
        v340 = (v862 + v850);
        if (v866 + 1 != v883)
        {
          goto LABEL_456;
        }

        v334 = (v845 + 4 * v323 * v327);
        v333 = v835 + 4;
        v335 = &v839[v823];
        if (v835 + 4 < v827)
        {
          goto LABEL_454;
        }

        v459 = v806;
        v322 = v817;
        v460 = (v845 + 4 * v323 * v327);
        if (v806 >= v4)
        {
          goto LABEL_448;
        }

LABEL_613:
        if (!v883 || (v978 = v459 + v322 * v4, !v996))
        {
LABEL_448:
          v322 = v817 + 1;
          result += v813;
          a2 = (v703 + 4 * v810);
          v332 = &v815[v808];
          if (v817 + 1 == v699)
          {
            return result;
          }

          goto LABEL_449;
        }

        v461 = 0;
        v462 = 0;
        v974 = v978 + 1;
        v463 = v459 | 1;
        v969 = v978 + 2;
        v464 = v459 | 2;
        v964 = v978 + 3;
        v465 = v459 | 3;
        v466 = &v460->i32[v804];
        v990 = &v460->i32[v802];
        v467 = &v460->i32[v799];
        v468 = v460;
        v846 = v460;
        v984 = &v460->i32[v804];
LABEL_619:
        v907 = v462;
        v469 = 0;
        v912 = v461;
        v888 = v468;
        v840 = v335;
        v470 = v990;
LABEL_625:
        if (v3 < 8)
        {
          v505 = 0;
          v488 = v335;
          v506 = v468;
          if (v3 > 0)
          {
            goto LABEL_659;
          }

          goto LABEL_624;
        }

        if (v324 == 1)
        {
          v486 = 0;
          v487 = v461;
          v488 = v335;
          while (1)
          {
            v499 = 0uLL;
            v500 = 0uLL;
            v501 = 0uLL;
            if (v463 < v4)
            {
              v500 = *(v466 + v487);
              v501 = *(v466 + v487 + 16);
              v502 = 0uLL;
              if (v464 >= v4)
              {
LABEL_631:
                v503 = 0uLL;
                v504 = 0uLL;
                if (v465 < v4)
                {
                  goto LABEL_635;
                }

                goto LABEL_628;
              }
            }

            else
            {
              v502 = 0uLL;
              if (v464 >= v4)
              {
                goto LABEL_631;
              }
            }

            v499 = *&v470[v487];
            v502 = *&v470[v487 + 16];
            v503 = 0uLL;
            v504 = 0uLL;
            if (v465 < v4)
            {
LABEL_635:
              v503 = *(v467 + v487);
              v504 = *(v467 + v487 + 16);
            }

LABEL_628:
            v489 = *(v460 + v487);
            *&v490 = vuzp2q_s32(vuzp2q_s32(v489, v500), v489).u64[0];
            *(&v490 + 1) = vzip2q_s32(v499, v503).i64[1];
            *&v491 = vzip2q_s32(v489, v500).u64[0];
            *(&v491 + 1) = __PAIR64__(v503.u32[2], v499.u32[2]);
            *&v492 = vzip1q_s32(v489, v500).u64[0];
            v493 = vzip1q_s32(v499, v503);
            *(&v492 + 1) = vextq_s8(*&v499, v493, 8uLL).i64[1];
            v494 = *(&v460[1] + v487);
            *&v495 = vtrn2q_s32(v489, v500).u64[0];
            *(&v495 + 1) = v493.i64[1];
            v489.i64[0] = vuzp2q_s32(vuzp2q_s32(v494, v501), v494).u64[0];
            v489.i64[1] = vzip2q_s32(v502, v504).i64[1];
            *&v496 = vzip2q_s32(v494, v501).u64[0];
            *(&v496 + 1) = __PAIR64__(v504.u32[2], v502.u32[2]);
            v493.i64[0] = vzip1q_s32(v494, v501).u64[0];
            v497 = vzip1q_s32(v502, v504);
            v493.i64[1] = vextq_s8(*&v502, v497, 8uLL).i64[1];
            *&v498 = vtrn2q_s32(v494, v501).u64[0];
            *(&v498 + 1) = v497.i64[1];
            *v488 = v492;
            v488[1] = v495;
            v488[2] = v491;
            v488[3] = v490;
            v488[4] = v493;
            v488[5] = v498;
            v488[6] = v496;
            v488[7] = v489;
            v486 += 8;
            v488 = (v488 + v326);
            v487 += 32;
            if (v486 >= v328)
            {
              v506 = (v460 + v487);
              v323 = 4;
              v505 = v3 & 0xFFFFFFFFFFFFFFF8;
              if (v995 >= v3)
              {
                goto LABEL_624;
              }

LABEL_659:
              if (v324 == 1)
              {
                v528 = v505 | 1;
                if ((v505 | 1) >= v3)
                {
                  v959 = 0;
                  v529 = v505 | 2;
                  if ((v505 | 2) < v3)
                  {
                    goto LABEL_678;
                  }

LABEL_662:
                  v954 = 0;
                  v530 = v505 | 3;
                  if ((v505 | 3) >= v3)
                  {
                    goto LABEL_663;
                  }

LABEL_679:
                  v949 = v506->u32[3];
                  v531 = v505 | 4;
                  if ((v505 | 4) < v3)
                  {
                    goto LABEL_680;
                  }

LABEL_664:
                  v944 = 0;
                  v532 = v505 | 5;
                  if ((v505 | 5) >= v3)
                  {
                    goto LABEL_665;
                  }

LABEL_681:
                  v939 = v506[1].u32[1];
                  v533 = v505 | 6;
                  if ((v505 | 6) < v3)
                  {
                    goto LABEL_682;
                  }

LABEL_666:
                  v934 = 0;
                  v534 = v505 | 7;
                  if (v534 >= v3)
                  {
                    goto LABEL_667;
                  }

LABEL_683:
                  v929 = v506[1].u32[3];
                }

                else
                {
                  v959 = v506->i32[1];
                  v529 = v505 | 2;
                  if ((v505 | 2) >= v3)
                  {
                    goto LABEL_662;
                  }

LABEL_678:
                  v954 = v506->u32[2];
                  v530 = v505 | 3;
                  if ((v505 | 3) < v3)
                  {
                    goto LABEL_679;
                  }

LABEL_663:
                  v949 = 0;
                  v531 = v505 | 4;
                  if ((v505 | 4) >= v3)
                  {
                    goto LABEL_664;
                  }

LABEL_680:
                  v944 = v506[1].u32[0];
                  v532 = v505 | 5;
                  if ((v505 | 5) < v3)
                  {
                    goto LABEL_681;
                  }

LABEL_665:
                  v939 = 0;
                  v533 = v505 | 6;
                  if ((v505 | 6) >= v3)
                  {
                    goto LABEL_666;
                  }

LABEL_682:
                  v934 = v506[1].u32[2];
                  v534 = v505 | 7;
                  if (v534 < v3)
                  {
                    goto LABEL_683;
                  }

LABEL_667:
                  v929 = 0;
                }

                v543.i32[0] = v506->i32[0];
                v544 = &v506->i32[v325];
                v545 = 0uLL;
                v546 = 0uLL;
                v547 = 0uLL;
                if (v463 >= v4)
                {
                  v548 = &v544[v325];
                  v549 = 0uLL;
                  if (v464 >= v4)
                  {
                    goto LABEL_686;
                  }

LABEL_723:
                  if (v528 >= v3)
                  {
                    v924 = 0;
                    if (v529 < v3)
                    {
                      goto LABEL_732;
                    }

LABEL_725:
                    v918 = 0;
                    if (v530 >= v3)
                    {
                      goto LABEL_726;
                    }

LABEL_733:
                    v571 = v548[3];
                    if (v531 < v3)
                    {
                      goto LABEL_734;
                    }

LABEL_727:
                    v572 = 0;
                    if (v532 >= v3)
                    {
                      goto LABEL_728;
                    }

LABEL_735:
                    v573 = v548[5];
                    if (v533 < v3)
                    {
                      goto LABEL_736;
                    }

LABEL_729:
                    v574 = 0;
                    if (v534 >= v3)
                    {
                      goto LABEL_730;
                    }

LABEL_737:
                    v575 = v548[7];
                  }

                  else
                  {
                    v924 = v548[1];
                    if (v529 >= v3)
                    {
                      goto LABEL_725;
                    }

LABEL_732:
                    v918 = v548[2];
                    if (v530 < v3)
                    {
                      goto LABEL_733;
                    }

LABEL_726:
                    v571 = 0;
                    if (v531 >= v3)
                    {
                      goto LABEL_727;
                    }

LABEL_734:
                    v572 = v548[4];
                    if (v532 < v3)
                    {
                      goto LABEL_735;
                    }

LABEL_728:
                    v573 = 0;
                    if (v533 >= v3)
                    {
                      goto LABEL_729;
                    }

LABEL_736:
                    v574 = v548[6];
                    if (v534 < v3)
                    {
                      goto LABEL_737;
                    }

LABEL_730:
                    v575 = 0;
                  }

                  v545.i32[0] = *v548;
                  v545.i32[1] = v924;
                  v545.i64[1] = __PAIR64__(v571, v918);
                  v549.i64[0] = __PAIR64__(v573, v572);
                  v549.i64[1] = __PAIR64__(v575, v574);
                  v4 = v841;
                  v324 = v895;
                  v331 = 4 * v3;
                  v472 = 0uLL;
                  v473 = 0uLL;
                  if (v465 < v841)
                  {
LABEL_739:
                    v576 = &v548[v325];
                    if (v528 >= v3)
                    {
                      v577 = 0;
                      if (v529 < v3)
                      {
                        goto LABEL_748;
                      }

LABEL_741:
                      v578 = 0;
                      if (v530 >= v3)
                      {
                        goto LABEL_742;
                      }

LABEL_749:
                      v579 = v576[3];
                      if (v531 < v3)
                      {
                        goto LABEL_750;
                      }

LABEL_743:
                      v580 = 0;
                      if (v532 >= v3)
                      {
                        goto LABEL_744;
                      }

LABEL_751:
                      v581 = v576[5];
                      if (v533 < v3)
                      {
                        goto LABEL_752;
                      }

LABEL_745:
                      v582 = 0;
                      if (v534 < v3)
                      {
                        goto LABEL_620;
                      }

LABEL_753:
                      v471 = 0;
                    }

                    else
                    {
                      v577 = v576[1];
                      if (v529 >= v3)
                      {
                        goto LABEL_741;
                      }

LABEL_748:
                      v578 = v576[2];
                      if (v530 < v3)
                      {
                        goto LABEL_749;
                      }

LABEL_742:
                      v579 = 0;
                      if (v531 >= v3)
                      {
                        goto LABEL_743;
                      }

LABEL_750:
                      v580 = v576[4];
                      if (v532 < v3)
                      {
                        goto LABEL_751;
                      }

LABEL_744:
                      v581 = 0;
                      if (v533 >= v3)
                      {
                        goto LABEL_745;
                      }

LABEL_752:
                      v582 = v576[6];
                      if (v534 >= v3)
                      {
                        goto LABEL_753;
                      }

LABEL_620:
                      v471 = v576[7];
                    }

                    v472.i32[0] = *v576;
                    v472.i32[1] = v577;
                    v472.i64[1] = __PAIR64__(v579, v578);
                    v473.i64[0] = __PAIR64__(v581, v580);
                    v473.i64[1] = __PAIR64__(v471, v582);
                  }

LABEL_622:
                  v543.i32[1] = v959;
                  v543.i64[1] = __PAIR64__(v949, v954);
                  v474.i64[0] = __PAIR64__(v939, v944);
                  v474.i64[1] = __PAIR64__(v929, v934);
                  *&v475 = vzip2q_s32(v543, v546).u64[0];
                  *(&v475 + 1) = __PAIR64__(v472.u32[2], v545.u32[2]);
                  v476 = vzip1q_s32(v545, v472);
                  *&v477 = vtrn2q_s32(v543, v546).u64[0];
                  *(&v477 + 1) = v476.i64[1];
                  *&v478 = vuzp2q_s32(vuzp2q_s32(v543, v546), v543).u64[0];
                  *(&v478 + 1) = vzip2q_s32(v545, v472).i64[1];
                  *&v479 = vzip1q_s32(v543, v546).u64[0];
                  *(&v479 + 1) = vextq_s8(*&v545, v476, 8uLL).i64[1];
                  *&v480 = vzip2q_s32(v474, v547).u64[0];
                  *(&v480 + 1) = __PAIR64__(v473.u32[2], v549.u32[2]);
                  v481 = vzip1q_s32(v549, v473);
                  *&v482 = vtrn2q_s32(v474, v547).u64[0];
                  *(&v482 + 1) = v481.i64[1];
                  v483 = vzip2q_s32(v549, v473);
                  *&v484 = vuzp2q_s32(vuzp2q_s32(v474, v547), v474).u64[0];
                  *(&v484 + 1) = v483.i64[1];
                  *&v485 = vzip1q_s32(v474, v547).u64[0];
                  *(&v485 + 1) = vextq_s8(*&v549, v481, 8uLL).i64[1];
                  v323 = 4;
                  v179 = v901;
                  v327 = v883 * v996 * v3;
                  v460 = v846;
                  v466 = v984;
                  v470 = v990;
LABEL_623:
                  *v488 = v479;
                  v488[1] = v477;
                  v488[2] = v475;
                  v488[3] = v478;
                  v488[4] = v485;
                  v488[5] = v482;
                  v488[6] = v480;
                  v488[7] = v484;
LABEL_624:
                  ++v469;
                  v335 += 8;
                  v468 = (v468 + 4 * v3);
                  v461 += v331;
                  if (v469 == v996)
                  {
                    v462 = v907 + 1;
                    v335 = (v840 + v854);
                    v468 = (v888 + 4 * v996 * v3);
                    v461 = v912 + v850;
                    if (v907 + 1 == v883)
                    {
                      goto LABEL_448;
                    }

                    goto LABEL_619;
                  }

                  goto LABEL_625;
                }

                if (v528 >= v3)
                {
                  v923 = 0;
                  if (v529 < v3)
                  {
                    goto LABEL_716;
                  }

LABEL_692:
                  v917 = 0;
                  if (v530 >= v3)
                  {
                    goto LABEL_693;
                  }

LABEL_717:
                  v553 = v544[3];
                  if (v531 < v3)
                  {
                    goto LABEL_718;
                  }

LABEL_694:
                  v554 = 0;
                  v555 = v467;
                  v556 = v532;
                  if (v532 >= v3)
                  {
                    goto LABEL_695;
                  }

LABEL_719:
                  v557 = v544[5];
                  v558 = v531;
                  v559 = v530;
                  if (v533 < v3)
                  {
                    goto LABEL_720;
                  }

LABEL_696:
                  v560 = 0;
                  v561 = v529;
                  v562 = v528;
                  if (v534 >= v3)
                  {
                    goto LABEL_697;
                  }

LABEL_721:
                  v563 = v544[7];
                }

                else
                {
                  v923 = v544[1];
                  if (v529 >= v3)
                  {
                    goto LABEL_692;
                  }

LABEL_716:
                  v917 = v544[2];
                  if (v530 < v3)
                  {
                    goto LABEL_717;
                  }

LABEL_693:
                  v553 = 0;
                  if (v531 >= v3)
                  {
                    goto LABEL_694;
                  }

LABEL_718:
                  v554 = v544[4];
                  v555 = v467;
                  v556 = v532;
                  if (v532 < v3)
                  {
                    goto LABEL_719;
                  }

LABEL_695:
                  v557 = 0;
                  v558 = v531;
                  v559 = v530;
                  if (v533 >= v3)
                  {
                    goto LABEL_696;
                  }

LABEL_720:
                  v560 = v544[6];
                  v561 = v529;
                  v562 = v528;
                  if (v534 < v3)
                  {
                    goto LABEL_721;
                  }

LABEL_697:
                  v563 = 0;
                }

                v546.i32[0] = *v544;
                v546.i32[1] = v923;
                v546.i64[1] = __PAIR64__(v553, v917);
                v547.i64[0] = __PAIR64__(v557, v554);
                v547.i64[1] = __PAIR64__(v563, v560);
                v4 = v841;
                v324 = v895;
                v331 = 4 * v3;
                v528 = v562;
                v529 = v561;
                v530 = v559;
                v531 = v558;
                v532 = v556;
                v467 = v555;
                v548 = &v544[v325];
                v549 = 0uLL;
                if (v464 < v841)
                {
                  goto LABEL_723;
                }

LABEL_686:
                v472 = 0uLL;
                v473 = 0uLL;
                if (v465 < v4)
                {
                  goto LABEL_739;
                }

                goto LABEL_622;
              }

              v535 = 0uLL;
              if (v978 % v179 >= v178)
              {
                v323 = 0;
                v550 = 0uLL;
                v551 = 0uLL;
                v552 = 0uLL;
                if (v974 % v179 < v178)
                {
                  goto LABEL_706;
                }
              }

              else
              {
                if ((v505 | 1) >= v3)
                {
                  v536 = 0;
                  if ((v505 | 2) < v3)
                  {
                    goto LABEL_699;
                  }

LABEL_671:
                  v537 = 0;
                  if ((v505 | 3) >= v3)
                  {
                    goto LABEL_672;
                  }

LABEL_700:
                  v538 = v506->u32[3];
                  if ((v505 | 4) < v3)
                  {
                    goto LABEL_701;
                  }

LABEL_673:
                  v539 = 0;
                  if ((v505 | 5) >= v3)
                  {
                    goto LABEL_674;
                  }

LABEL_702:
                  v540 = v506[1].u32[1];
                  if ((v505 | 6) < v3)
                  {
                    goto LABEL_703;
                  }

LABEL_675:
                  v541 = 0;
                  if ((v505 | 7) >= v3)
                  {
                    goto LABEL_676;
                  }

LABEL_704:
                  v542 = v506[1].u32[3];
                }

                else
                {
                  v536 = v506->i32[1];
                  if ((v505 | 2) >= v3)
                  {
                    goto LABEL_671;
                  }

LABEL_699:
                  v537 = v506->u32[2];
                  if ((v505 | 3) < v3)
                  {
                    goto LABEL_700;
                  }

LABEL_672:
                  v538 = 0;
                  if ((v505 | 4) >= v3)
                  {
                    goto LABEL_673;
                  }

LABEL_701:
                  v539 = v506[1].u32[0];
                  if ((v505 | 5) < v3)
                  {
                    goto LABEL_702;
                  }

LABEL_674:
                  v540 = 0;
                  if ((v505 | 6) >= v3)
                  {
                    goto LABEL_675;
                  }

LABEL_703:
                  v541 = v506[1].u32[2];
                  if ((v505 | 7) < v3)
                  {
                    goto LABEL_704;
                  }

LABEL_676:
                  v542 = 0;
                }

                v550.i32[0] = v506->i32[0];
                v550.i32[1] = v536;
                v550.i64[1] = __PAIR64__(v538, v537);
                v551.i64[0] = __PAIR64__(v540, v539);
                v551.i64[1] = __PAIR64__(v542, v541);
                v506 = (v506 + 4 * v325);
                v323 = 1;
                v460 = v846;
                v466 = v984;
                v552 = 0uLL;
                if (v974 % v179 < v178)
                {
LABEL_706:
                  if (v463 < v4)
                  {
                    if ((v505 | 1) >= v3)
                    {
                      v564 = 0;
                      if ((v505 | 2) < v3)
                      {
                        goto LABEL_755;
                      }

LABEL_709:
                      v565 = 0;
                      if ((v505 | 3) >= v3)
                      {
                        goto LABEL_710;
                      }

LABEL_756:
                      v566 = v506->u32[3];
                      if ((v505 | 4) < v3)
                      {
                        goto LABEL_757;
                      }

LABEL_711:
                      v567 = 0;
                      if ((v505 | 5) >= v3)
                      {
                        goto LABEL_712;
                      }

LABEL_758:
                      v568 = v506[1].u32[1];
                      if ((v505 | 6) < v3)
                      {
                        goto LABEL_759;
                      }

LABEL_713:
                      v569 = 0;
                      if ((v505 | 7) >= v3)
                      {
                        goto LABEL_714;
                      }

LABEL_760:
                      v570 = v506[1].u32[3];
                    }

                    else
                    {
                      v564 = v506->i32[1];
                      if ((v505 | 2) >= v3)
                      {
                        goto LABEL_709;
                      }

LABEL_755:
                      v565 = v506->u32[2];
                      if ((v505 | 3) < v3)
                      {
                        goto LABEL_756;
                      }

LABEL_710:
                      v566 = 0;
                      if ((v505 | 4) >= v3)
                      {
                        goto LABEL_711;
                      }

LABEL_757:
                      v567 = v506[1].u32[0];
                      if ((v505 | 5) < v3)
                      {
                        goto LABEL_758;
                      }

LABEL_712:
                      v568 = 0;
                      if ((v505 | 6) >= v3)
                      {
                        goto LABEL_713;
                      }

LABEL_759:
                      v569 = v506[1].u32[2];
                      if ((v505 | 7) < v3)
                      {
                        goto LABEL_760;
                      }

LABEL_714:
                      v570 = 0;
                    }

                    v535.i32[0] = v506->i32[0];
                    v535.i32[1] = v564;
                    v535.i64[1] = __PAIR64__(v566, v565);
                    v552.i64[0] = __PAIR64__(v568, v567);
                    v552.i64[1] = __PAIR64__(v570, v569);
                    v331 = 4 * v3;
                    v460 = v846;
                    v466 = v984;
                  }

                  v506 = (v506 + 4 * v325);
                  ++v323;
                }
              }

              v583 = 0uLL;
              v584 = 0uLL;
              v585 = 0uLL;
              if (v969 % v179 < v178)
              {
                if (v464 < v4)
                {
                  if ((v505 | 1) >= v3)
                  {
                    v586 = 0;
                    if ((v505 | 2) < v3)
                    {
                      goto LABEL_774;
                    }

LABEL_767:
                    v587 = 0;
                    if ((v505 | 3) >= v3)
                    {
                      goto LABEL_768;
                    }

LABEL_775:
                    v588 = v506->u32[3];
                    if ((v505 | 4) < v3)
                    {
                      goto LABEL_776;
                    }

LABEL_769:
                    v589 = 0;
                    if ((v505 | 5) >= v3)
                    {
                      goto LABEL_770;
                    }

LABEL_777:
                    v590 = v506[1].u32[1];
                    if ((v505 | 6) < v3)
                    {
                      goto LABEL_778;
                    }

LABEL_771:
                    v591 = 0;
                    if ((v505 | 7) >= v3)
                    {
                      goto LABEL_772;
                    }

LABEL_779:
                    v592 = v506[1].u32[3];
                  }

                  else
                  {
                    v586 = v506->i32[1];
                    if ((v505 | 2) >= v3)
                    {
                      goto LABEL_767;
                    }

LABEL_774:
                    v587 = v506->u32[2];
                    if ((v505 | 3) < v3)
                    {
                      goto LABEL_775;
                    }

LABEL_768:
                    v588 = 0;
                    if ((v505 | 4) >= v3)
                    {
                      goto LABEL_769;
                    }

LABEL_776:
                    v589 = v506[1].u32[0];
                    if ((v505 | 5) < v3)
                    {
                      goto LABEL_777;
                    }

LABEL_770:
                    v590 = 0;
                    if ((v505 | 6) >= v3)
                    {
                      goto LABEL_771;
                    }

LABEL_778:
                    v591 = v506[1].u32[2];
                    if ((v505 | 7) < v3)
                    {
                      goto LABEL_779;
                    }

LABEL_772:
                    v592 = 0;
                  }

                  v584.i32[0] = v506->i32[0];
                  v584.i32[1] = v586;
                  v584.i64[1] = __PAIR64__(v588, v587);
                  v585.i64[0] = __PAIR64__(v590, v589);
                  v585.i64[1] = __PAIR64__(v592, v591);
                  v331 = 4 * v3;
                  v460 = v846;
                  v466 = v984;
                }

                v506 = (v506 + 4 * v325);
                ++v323;
              }

              v593 = 0uLL;
              if (v964 % v179 >= v178)
              {
                v470 = v990;
              }

              else
              {
                v470 = v990;
                if (v465 < v4)
                {
                  if ((v505 | 1) >= v3)
                  {
                    v594 = 0;
                    if ((v505 | 2) < v3)
                    {
                      goto LABEL_794;
                    }

LABEL_786:
                    v595 = 0;
                    if ((v505 | 3) >= v3)
                    {
                      goto LABEL_787;
                    }

LABEL_795:
                    v596 = v506->u32[3];
                    if ((v505 | 4) < v3)
                    {
                      goto LABEL_796;
                    }

LABEL_788:
                    v597 = 0;
                    if ((v505 | 5) >= v3)
                    {
                      goto LABEL_789;
                    }

LABEL_797:
                    v598 = v506[1].u32[1];
                    if ((v505 | 6) < v3)
                    {
                      goto LABEL_798;
                    }

LABEL_790:
                    v599 = 0;
                    if ((v505 | 7) >= v3)
                    {
                      goto LABEL_791;
                    }

LABEL_799:
                    v600 = v506[1].u32[3];
                  }

                  else
                  {
                    v594 = v506->i32[1];
                    if ((v505 | 2) >= v3)
                    {
                      goto LABEL_786;
                    }

LABEL_794:
                    v595 = v506->u32[2];
                    if ((v505 | 3) < v3)
                    {
                      goto LABEL_795;
                    }

LABEL_787:
                    v596 = 0;
                    if ((v505 | 4) >= v3)
                    {
                      goto LABEL_788;
                    }

LABEL_796:
                    v597 = v506[1].u32[0];
                    if ((v505 | 5) < v3)
                    {
                      goto LABEL_797;
                    }

LABEL_789:
                    v598 = 0;
                    if ((v505 | 6) >= v3)
                    {
                      goto LABEL_790;
                    }

LABEL_798:
                    v599 = v506[1].u32[2];
                    if ((v505 | 7) < v3)
                    {
                      goto LABEL_799;
                    }

LABEL_791:
                    v600 = 0;
                  }

                  v583.i32[0] = v506->i32[0];
                  v583.i32[1] = v594;
                  v583.i64[1] = __PAIR64__(v596, v595);
                  v593.i64[0] = __PAIR64__(v598, v597);
                  v593.i64[1] = __PAIR64__(v600, v599);
                  v460 = v846;
                  v466 = v984;
                  v470 = v990;
                }

                ++v323;
              }

              *&v475 = vzip2q_s32(v550, v535).u64[0];
              *(&v475 + 1) = __PAIR64__(v583.u32[2], v584.u32[2]);
              v601 = vzip1q_s32(v584, v583);
              *&v477 = vtrn2q_s32(v550, v535).u64[0];
              *(&v477 + 1) = v601.i64[1];
              v602 = vzip2q_s32(v584, v583);
              *&v478 = vuzp2q_s32(vuzp2q_s32(v550, v535), v550).u64[0];
              *(&v478 + 1) = v602.i64[1];
              *&v479 = vzip1q_s32(v550, v535).u64[0];
              *(&v479 + 1) = vextq_s8(*&v584, v601, 8uLL).i64[1];
              *&v480 = vzip2q_s32(v551, v552).u64[0];
              *(&v480 + 1) = __PAIR64__(v593.u32[2], v585.u32[2]);
              v603 = vzip1q_s32(v585, v593);
              *&v482 = vtrn2q_s32(v551, v552).u64[0];
              *(&v482 + 1) = v603.i64[1];
              v604 = vzip2q_s32(v585, v593);
              *&v484 = vuzp2q_s32(vuzp2q_s32(v551, v552), v551).u64[0];
              *(&v484 + 1) = v604.i64[1];
              *&v485 = vzip1q_s32(v551, v552).u64[0];
              *(&v485 + 1) = vextq_s8(*&v585, v603, 8uLL).i64[1];
              goto LABEL_623;
            }
          }
        }

        v507 = 0;
        v508 = v974 % v179;
        v509 = v964 % v179;
        v506 = v468;
        v488 = v335;
        while (2)
        {
          v519 = 0uLL;
          if (v978 % v179 >= v178)
          {
            v323 = 0;
            v521 = 0uLL;
            v520 = 0uLL;
            v522 = v506;
            v523 = 0uLL;
            if (v508 >= v178)
            {
              goto LABEL_648;
            }
          }

          else
          {
            v521 = *v506;
            v520 = v506[1];
            v522 = (v506 + 4 * v327);
            v323 = 1;
            v523 = 0uLL;
            if (v508 >= v178)
            {
              goto LABEL_648;
            }
          }

          if (v463 < v4)
          {
            v519 = *v522;
            v523 = v522[1];
          }

          v522 = (v522 + 4 * v327);
          ++v323;
LABEL_648:
          v524 = 0uLL;
          v525 = 0uLL;
          v526 = 0uLL;
          if (v969 % v179 < v178)
          {
            if (v464 < v4)
            {
              v525 = *v522;
              v526 = v522[1];
            }

            v522 = (v522 + 4 * v327);
            ++v323;
            v527 = 0uLL;
            if (v509 < v178)
            {
LABEL_654:
              if (v465 < v4)
              {
                v524 = *v522;
                v527 = v522[1];
              }

              ++v323;
            }
          }

          else
          {
            v527 = 0uLL;
            if (v509 < v178)
            {
              goto LABEL_654;
            }
          }

          *&v510 = vuzp2q_s32(vuzp2q_s32(v521, v519), v521).u64[0];
          *(&v510 + 1) = vzip2q_s32(v525, v524).i64[1];
          *&v511 = vzip2q_s32(v521, v519).u64[0];
          *(&v511 + 1) = __PAIR64__(v524.u32[2], v525.u32[2]);
          *&v512 = vzip1q_s32(v521, v519).u64[0];
          v513 = vzip1q_s32(v525, v524);
          *(&v512 + 1) = vextq_s8(*&v525, v513, 8uLL).i64[1];
          *&v514 = vtrn2q_s32(v521, v519).u64[0];
          *(&v514 + 1) = v513.i64[1];
          v513.i64[0] = vuzp2q_s32(vuzp2q_s32(v520, v523), v520).u64[0];
          v513.i64[1] = vzip2q_s32(v526, v527).i64[1];
          *&v515 = vzip2q_s32(v520, v523).u64[0];
          *(&v515 + 1) = __PAIR64__(v527.u32[2], v526.u32[2]);
          *&v516 = vzip1q_s32(v520, v523).u64[0];
          v517 = vzip1q_s32(v526, v527);
          *(&v516 + 1) = vextq_s8(*&v526, v517, 8uLL).i64[1];
          *&v518 = vtrn2q_s32(v520, v523).u64[0];
          *(&v518 + 1) = v517.i64[1];
          *v488 = v512;
          v488[1] = v514;
          v488[2] = v511;
          v488[3] = v510;
          v488[4] = v516;
          v488[5] = v518;
          v488[6] = v515;
          v488[7] = v513;
          v507 += 8;
          v488 = (v488 + v326);
          v506 += 2;
          if (v507 >= v328)
          {
            v505 = v3 & 0xFFFFFFFFFFFFFFF8;
            v466 = v984;
            v470 = v990;
            if (v995 < v3)
            {
              goto LABEL_659;
            }

            goto LABEL_624;
          }

          continue;
        }
      }
    }
  }

  if (!v5)
  {
    if (!v699)
    {
      return result;
    }

    v254 = 0;
    v255 = v883 * v996;
    if (v883)
    {
      v256 = v3 == 0;
    }

    else
    {
      v256 = 1;
    }

    v257 = v4 * v255;
    v258 = v4 * (4 * v255 - 4);
    if (!v996)
    {
      v256 = 1;
    }

    v865 = v256;
    if (v883)
    {
      v259 = v996 == 0;
    }

    else
    {
      v259 = 1;
    }

    v861 = v259;
    v910 = v4 - 3;
    v972 = 32 * v257;
    v857 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v260 = &a2->i64[1] + v258 + 4;
    v872 = 4 * v255 * v3 * v4;
    v967 = 4 * v996 * v4;
    v261 = -4 * v996 * v4;
    v262 = 4 * v4;
    v263 = v4 * (32 * v255 - 4);
    v264 = &a2->i64[1] + v263 + 4;
    v265 = v4 * (28 * v255 - 4);
    v266 = &a2->i64[1] + v265 + 4;
    v267 = v4 * (24 * v255 - 4);
    v268 = &a2->i64[1] + v267 + 4;
    v269 = v4 * (20 * v255 - 4);
    v270 = a2;
    v271 = &a2->i64[1] + v269 + 4;
    v272 = v4 * (16 * v255 - 4);
    v273 = &a2->i64[1] + v272 + 4;
    v274 = v4 * (12 * v255 - 4);
    v275 = &a2->i64[1] + v274 + 4;
    v276 = v4 * (8 * v255 - 4);
    v277 = &a2->i64[1] + v276 + 4;
    v853 = v263 + 24;
    v849 = v265 + 24;
    v844 = v267 + 24;
    v838 = v269 + 24;
    v834 = v272 + 24;
    v830 = v274 + 24;
    v826 = v276 + 24;
    v822 = v258 + 24;
    v869 = v257 * v3;
    while (1)
    {
      v905 = v254;
      v902 = v260;
      v898 = v264;
      v894 = v266;
      v891 = v268;
      v886 = v271;
      v881 = v273;
      v878 = v275;
      v875 = v277;
      if (v4 >= 4)
      {
        if (v865)
        {
          goto LABEL_266;
        }

        v278 = 0;
        v279 = v268;
        v280 = v264;
        v281 = v260;
        v702 = v270;
        v282 = v270;
LABEL_271:
        v957 = v278;
        v962 = v282;
        v283 = 0;
        v952 = v277;
        v284 = v277;
        v947 = v275;
        v285 = v275;
        v942 = v273;
        v937 = v271;
        v286 = v271;
        v932 = v279;
        v927 = v266;
        v287 = v266;
        v921 = v280;
        v288 = v280;
        v915 = v281;
LABEL_273:
        v289 = 0;
        v290 = v283 | 2;
        v291 = v283 | 3;
        v292 = v283 | 4;
        v293 = v283 | 5;
        v294 = v283 | 6;
        v295 = v283 | 7;
        v994 = v284;
        v296 = v284;
        v988 = v285;
        v982 = v273;
        v297 = v273;
        v298 = v286;
        v299 = v279;
        v300 = v287;
        v301 = v288;
        v302 = v281;
LABEL_275:
        v303 = 0;
        v304 = v996;
        while (1)
        {
          *result = *(v302 + v303 - 12);
          result[1] = *(v302 + v303 - 8);
          result[2] = *(v302 + v303 - 4);
          result[3] = *(v302 + v303);
          if ((v283 | 1) < v3)
          {
            result[4] = *(v296 + v303 - 12);
            result[5] = *(v296 + v303 - 8);
            result[6] = *(v296 + v303 - 4);
            result[7] = *(v296 + v303);
            if (v290 >= v3)
            {
LABEL_279:
              if (v291 >= v3)
              {
                goto LABEL_280;
              }

              goto LABEL_287;
            }
          }

          else if (v290 >= v3)
          {
            goto LABEL_279;
          }

          result[8] = *(v285 + v303 - 12);
          result[9] = *(v285 + v303 - 8);
          result[10] = *(v285 + v303 - 4);
          result[11] = *(v285 + v303);
          if (v291 >= v3)
          {
LABEL_280:
            if (v292 >= v3)
            {
              goto LABEL_281;
            }

            goto LABEL_288;
          }

LABEL_287:
          result[12] = *(v297 + v303 - 12);
          result[13] = *(v297 + v303 - 8);
          result[14] = *(v297 + v303 - 4);
          result[15] = *(v297 + v303);
          if (v292 >= v3)
          {
LABEL_281:
            if (v293 >= v3)
            {
              goto LABEL_282;
            }

            goto LABEL_289;
          }

LABEL_288:
          result[16] = *(v298 + v303 - 12);
          result[17] = *(v298 + v303 - 8);
          result[18] = *(v298 + v303 - 4);
          result[19] = *(v298 + v303);
          if (v293 >= v3)
          {
LABEL_282:
            if (v294 >= v3)
            {
              goto LABEL_283;
            }

            goto LABEL_290;
          }

LABEL_289:
          result[20] = *(v299 + v303 - 12);
          result[21] = *(v299 + v303 - 8);
          result[22] = *(v299 + v303 - 4);
          result[23] = *(v299 + v303);
          if (v294 >= v3)
          {
LABEL_283:
            if (v295 < v3)
            {
              goto LABEL_291;
            }

            goto LABEL_276;
          }

LABEL_290:
          result[24] = *(v300 + v303 - 12);
          result[25] = *(v300 + v303 - 8);
          result[26] = *(v300 + v303 - 4);
          result[27] = *(v300 + v303);
          if (v295 < v3)
          {
LABEL_291:
            result[28] = *(v301 + v303 - 12);
            result[29] = *(v301 + v303 - 8);
            result[30] = *(v301 + v303 - 4);
            result[31] = *(v301 + v303);
          }

LABEL_276:
          v303 -= v262;
          result += 32;
          if (!--v304)
          {
            ++v289;
            v302 += v261;
            v301 += v261;
            v300 += v261;
            v299 += v261;
            v298 += v261;
            v297 += v261;
            v285 += v261;
            v296 += v261;
            if (v289 != v883)
            {
              goto LABEL_275;
            }

            v283 += 8;
            v281 += v972;
            v288 += v972;
            v287 += v972;
            v279 += v972;
            v286 += v972;
            v273 = v982 + v972;
            v285 = v988 + v972;
            v284 = v994 + v972;
            if (v283 < v3)
            {
              goto LABEL_273;
            }

            v278 = v957 + 4;
            v282 = v962 + 1;
            v281 = v915 + 16;
            v280 = v921 + 16;
            v266 = v927 + 16;
            v279 = v932 + 16;
            v271 = v937 + 16;
            v273 = v942 + 16;
            v275 = v947 + 16;
            v277 = v952 + 16;
            if (v957 + 4 < v910)
            {
              goto LABEL_271;
            }

            v305 = v857;
            v270 = v702;
            v4 = v841;
            if (v3)
            {
              goto LABEL_295;
            }

            goto LABEL_266;
          }
        }
      }

      v305 = 0;
      v282 = v270;
      if (!v3)
      {
        goto LABEL_266;
      }

LABEL_295:
      v306 = __OFSUB__(v4, v305);
      v307 = v4 - v305;
      if (!((v307 < 0) ^ v306 | (v307 == 0)) && !v861)
      {
        break;
      }

LABEL_266:
      v270 = (v270 + 4 * v869);
      v254 = v905 + 1;
      v260 = v902 + v872;
      v264 = v898 + v872;
      v266 = v894 + v872;
      v268 = v891 + v872;
      v271 = v886 + v872;
      v273 = v881 + v872;
      v275 = v878 + v872;
      v277 = v875 + v872;
      if (v905 + 1 == v699)
      {
        return result;
      }
    }

    v308 = 0;
    v309 = 0;
    v310 = v282->i64 + v853;
    v311 = v282->i64 + v849;
    v312 = v282->i64 + v844;
    v313 = v282->i64 + v838;
    v314 = v282->i64 + v834;
    v315 = v282->i64 + v830;
    v316 = v282->i64 + v826;
    v317 = v282->i64 + v822;
LABEL_299:
    v318 = 0;
    v319 = v308;
LABEL_301:
    v320 = v996;
    v321 = v308;
    while (v307 <= 3)
    {
      switch(v307)
      {
        case 1:
          goto LABEL_325;
        case 2:
          goto LABEL_324;
        case 3:
          goto LABEL_323;
      }

LABEL_326:
      if ((v309 | 1) >= v3)
      {
        goto LABEL_344;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_344;
            }

            result[10] = *(v316 + v321);
          }

          result[9] = *(v316 + v321 - 4);
LABEL_339:
          result[8] = *(v316 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_339;
        }

        result[7] = *(v316 + v321 - 12);
LABEL_341:
        result[6] = *(v316 + v321 - 16);
LABEL_342:
        result[5] = *(v316 + v321 - 20);
LABEL_343:
        result[4] = *(v316 + v321 - 24);
        goto LABEL_344;
      }

      switch(v307)
      {
        case 1:
          goto LABEL_343;
        case 2:
          goto LABEL_342;
        case 3:
          goto LABEL_341;
      }

LABEL_344:
      if ((v309 | 2) >= v3)
      {
        goto LABEL_362;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_362;
            }

            result[14] = *(v315 + v321);
          }

          result[13] = *(v315 + v321 - 4);
LABEL_357:
          result[12] = *(v315 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_357;
        }

        result[11] = *(v315 + v321 - 12);
LABEL_359:
        result[10] = *(v315 + v321 - 16);
LABEL_360:
        result[9] = *(v315 + v321 - 20);
LABEL_361:
        result[8] = *(v315 + v321 - 24);
        goto LABEL_362;
      }

      switch(v307)
      {
        case 1:
          goto LABEL_361;
        case 2:
          goto LABEL_360;
        case 3:
          goto LABEL_359;
      }

LABEL_362:
      if ((v309 | 3) >= v3)
      {
        goto LABEL_380;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_380;
            }

            result[18] = *(v314 + v321);
          }

          result[17] = *(v314 + v321 - 4);
LABEL_375:
          result[16] = *(v314 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_375;
        }

        result[15] = *(v314 + v321 - 12);
LABEL_377:
        result[14] = *(v314 + v321 - 16);
LABEL_378:
        result[13] = *(v314 + v321 - 20);
LABEL_379:
        result[12] = *(v314 + v321 - 24);
        goto LABEL_380;
      }

      switch(v307)
      {
        case 1:
          goto LABEL_379;
        case 2:
          goto LABEL_378;
        case 3:
          goto LABEL_377;
      }

LABEL_380:
      if ((v309 | 4) >= v3)
      {
        goto LABEL_398;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_398;
            }

            result[22] = *(v313 + v321);
          }

          result[21] = *(v313 + v321 - 4);
LABEL_393:
          result[20] = *(v313 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_393;
        }

        result[19] = *(v313 + v321 - 12);
LABEL_395:
        result[18] = *(v313 + v321 - 16);
LABEL_396:
        result[17] = *(v313 + v321 - 20);
LABEL_397:
        result[16] = *(v313 + v321 - 24);
        goto LABEL_398;
      }

      switch(v307)
      {
        case 1:
          goto LABEL_397;
        case 2:
          goto LABEL_396;
        case 3:
          goto LABEL_395;
      }

LABEL_398:
      if ((v309 | 5) >= v3)
      {
        goto LABEL_416;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_416;
            }

            result[26] = *(v312 + v321);
          }

          result[25] = *(v312 + v321 - 4);
LABEL_411:
          result[24] = *(v312 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_411;
        }

        result[23] = *(v312 + v321 - 12);
LABEL_413:
        result[22] = *(v312 + v321 - 16);
LABEL_414:
        result[21] = *(v312 + v321 - 20);
LABEL_415:
        result[20] = *(v312 + v321 - 24);
        goto LABEL_416;
      }

      switch(v307)
      {
        case 1:
          goto LABEL_415;
        case 2:
          goto LABEL_414;
        case 3:
          goto LABEL_413;
      }

LABEL_416:
      if ((v309 | 6) >= v3)
      {
        goto LABEL_434;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_434;
            }

            result[30] = *(v311 + v321);
          }

          result[29] = *(v311 + v321 - 4);
LABEL_429:
          result[28] = *(v311 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_429;
        }

        result[27] = *(v311 + v321 - 12);
LABEL_431:
        result[26] = *(v311 + v321 - 16);
LABEL_432:
        result[25] = *(v311 + v321 - 20);
LABEL_433:
        result[24] = *(v311 + v321 - 24);
        goto LABEL_434;
      }

      switch(v307)
      {
        case 1:
          goto LABEL_433;
        case 2:
          goto LABEL_432;
        case 3:
          goto LABEL_431;
      }

LABEL_434:
      if ((v309 | 7) >= v3)
      {
        goto LABEL_308;
      }

      if (v307 > 3)
      {
        if (v307 > 5)
        {
          if (v307 != 6)
          {
            if (v307 != 7)
            {
              goto LABEL_308;
            }

            result[34] = *(v310 + v321);
          }

          result[33] = *(v310 + v321 - 4);
LABEL_303:
          result[32] = *(v310 + v321 - 8);
        }

        else if (v307 != 4)
        {
          goto LABEL_303;
        }

        result[31] = *(v310 + v321 - 12);
LABEL_305:
        result[30] = *(v310 + v321 - 16);
        goto LABEL_306;
      }

      if (v307 == 1)
      {
        goto LABEL_307;
      }

      if (v307 != 2)
      {
        if (v307 != 3)
        {
          goto LABEL_308;
        }

        goto LABEL_305;
      }

LABEL_306:
      result[29] = *(v310 + v321 - 20);
LABEL_307:
      result[28] = *(v310 + v321 - 24);
LABEL_308:
      result += 32;
      v321 -= v262;
      if (!--v320)
      {
        ++v318;
        v308 -= v967;
        if (v318 == v883)
        {
          v309 += 8;
          v308 = v319 + v972;
          if (v309 >= v3)
          {
            goto LABEL_266;
          }

          goto LABEL_299;
        }

        goto LABEL_301;
      }
    }

    if (v307 > 5)
    {
      if (v307 != 6)
      {
        if (v307 != 7)
        {
          goto LABEL_326;
        }

        result[6] = *(v317 + v321);
      }

      result[5] = *(v317 + v321 - 4);
    }

    else if (v307 == 4)
    {
      goto LABEL_322;
    }

    result[4] = *(v317 + v321 - 8);
LABEL_322:
    result[3] = *(v317 + v321 - 12);
LABEL_323:
    result[2] = *(v317 + v321 - 16);
LABEL_324:
    result[1] = *(v317 + v321 - 20);
LABEL_325:
    *result = *(v317 + v321 - 24);
    goto LABEL_326;
  }

  if (v699)
  {
    v6 = 0;
    v7 = v883 * v996;
    v8 = v883 * v996 * (4 * v4 + 16) - 4;
    v9 = v883 * v996 * (4 * v4 + 12) - 4;
    v10 = v883 * v996 * (4 * v4 + 8) - 4;
    v11 = v883 * v996 * (4 * v4 + 4) - 4;
    v12 = v883 * v996 * (8 * v4 + 16) - 4;
    v13 = v883 * v996 * (8 * v4 + 12) - 4;
    v659 = v883 * v996 * ((8 * v4) | 4) - 4;
    v660 = v883 * v996 * (8 * v4 + 8) - 4;
    v657 = v883 * v996 * (12 * v4 + 12) - 4;
    v658 = v883 * v996 * (12 * v4 + 16) - 4;
    v655 = v883 * v996 * (12 * v4 + 4) - 4;
    v656 = v883 * v996 * (12 * v4 + 8) - 4;
    v654 = v883 * v996 * (16 * v4 + 16) - 4;
    v653 = v883 * v996 * ((16 * v4) | 0xC) - 4;
    v652 = v883 * v996 * ((16 * v4) | 8) - 4;
    v651 = v883 * v996 * ((16 * v4) | 4) - 4;
    v649 = v883 * v996 * (20 * v4 + 12) - 4;
    v650 = v883 * v996 * (20 * v4 + 16) - 4;
    v647 = v883 * v996 * (20 * v4 + 4) - 4;
    v648 = v883 * v996 * (20 * v4 + 8) - 4;
    v645 = v883 * v996 * (24 * v4 + 12) - 4;
    v646 = v883 * v996 * (24 * v4 + 16) - 4;
    v643 = v883 * v996 * ((24 * v4) | 4) - 4;
    v644 = v883 * v996 * (24 * v4 + 8) - 4;
    v641 = v883 * v996 * (28 * v4 + 12) - 4;
    v642 = v883 * v996 * (28 * v4 + 16) - 4;
    v639 = v883 * v996 * (28 * v4 + 4) - 4;
    v640 = v883 * v996 * (28 * v4 + 8) - 4;
    v638 = 12 * v883 * v996 - 4;
    v628 = 24 * v883 * v996 - 4;
    v629 = 28 * v883 * v996 - 4;
    v626 = v883 * v996 * (4 * v4 + 28) - 4;
    v627 = 20 * v883 * v996 - 4;
    v624 = v883 * v996 * (4 * v4 + 20) - 4;
    v625 = v883 * v996 * (4 * v4 + 24) - 4;
    v622 = v883 * v996 * (8 * v4 + 24) - 4;
    v623 = v883 * v996 * (8 * v4 + 28) - 4;
    v621 = v883 * v996 * (8 * v4 + 20) - 4;
    v620 = v883 * v996 * (12 * v4 + 28) - 4;
    v618 = v883 * v996 * (12 * v4 + 20) - 4;
    v619 = v883 * v996 * (12 * v4 + 24) - 4;
    v617 = v883 * v996 * (16 * v4 + 28) - 4;
    v616 = v883 * v996 * (16 * v4 + 24) - 4;
    v615 = v883 * v996 * (16 * v4 + 20) - 4;
    v614 = v883 * v996 * (20 * v4 + 28) - 4;
    v613 = v883 * v996 * (20 * v4 + 24) - 4;
    v612 = v883 * v996 * (20 * v4 + 20) - 4;
    v611 = v883 * v996 * (24 * v4 + 28) - 4;
    v610 = v883 * v996 * (24 * v4 + 24) - 4;
    v609 = v883 * v996 * (24 * v4 + 20) - 4;
    v608 = v883 * v996 * (28 * v4 + 28) - 4;
    v606 = v883 * v996 * (28 * v4 + 20) - 4;
    v607 = v883 * v996 * (28 * v4 + 24) - 4;
    v14 = a2;
    v15 = v3 == 0;
    if (!v883)
    {
      v15 = 1;
    }

    if (!v996)
    {
      v15 = 1;
    }

    v663 = v15;
    v16 = v996 == 0;
    if (!v883)
    {
      v16 = 1;
    }

    v662 = v16;
    v880 = -4 * v996;
    v997 = -v996;
    v17 = 4 * v7 * v3 * v4;
    v637 = 8 * v7 - 4;
    v635 = v8;
    v636 = 4 * v7 - 4;
    v18 = 16 * v7;
    v19 = v4 * v7;
    v783 = 32 * v19;
    v664 = v19 * v3;
    v665 = v17;
    v704 = v4 - 3;
    v661 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = a2->i64 + v8;
    v633 = v10;
    v634 = v9;
    v21 = a2->i64 + v9;
    v22 = a2->i64 + v10;
    v631 = v12;
    v632 = v11;
    v23 = a2->i64 + v11;
    v24 = a2->i64 + v12;
    v630 = v13;
    v25 = a2->i64 + v13;
    v26 = v14->i64 + v660;
    v27 = v14->i64 + v659;
    v28 = v14->i64 + v658;
    v29 = v14->i64 + v657;
    v30 = v14->i64 + v656;
    v31 = v14->i64 + v655;
    v32 = v14->i64 + v654;
    v33 = v14->i64 + v652;
    v34 = v14->i64 + v650;
    v35 = v14->i64 + v649;
    v36 = v14->i64 + v648;
    v37 = v14->i64 + v647;
    v38 = v14->i64 + v646;
    v39 = v14->i64 + v645;
    v40 = v14->i64 + v644;
    v698 = v14->i64 + v643;
    v697 = v14->i64 + v642;
    v696 = v14->i64 + v641;
    v695 = v14->i64 + v640;
    v694 = v14->i64 + v639;
    v705 = v18;
    v605 = v18 - 4;
    v693 = &v14[v18 / 0x10 - 1].i32[3];
    v692 = v14->i64 + v638;
    v691 = v14->i64 + v637;
    v41 = v14->i64 + v651;
    v690 = v14->i64 + v636;
    v42 = v14->i64 + v653;
    while (1)
    {
      v700 = v14;
      v688 = v6;
      v687 = v20;
      v686 = v21;
      v685 = v22;
      v684 = v23;
      v683 = v24;
      v682 = v25;
      v681 = v26;
      v680 = v27;
      v679 = v28;
      v678 = v29;
      v677 = v30;
      v676 = v31;
      v675 = v32;
      v689 = v42;
      v674 = v33;
      v673 = v41;
      v672 = v34;
      v671 = v35;
      v670 = v36;
      v668 = v38;
      v669 = v37;
      v666 = v40;
      v667 = v39;
      if (v4 >= 4)
      {
        if (v663)
        {
          goto LABEL_11;
        }

        v43 = 0;
        v44 = v690;
        v748 = v34;
        v745 = v41;
        v45 = v693;
        v46 = v33;
        v47 = v692;
        v48 = v42;
        v49 = v691;
        v742 = v28;
        v50 = v48;
        v51 = v27;
        v52 = v46;
        v779 = v26;
        v53 = v745;
        v777 = v25;
        v54 = v748;
        v775 = v24;
        v55 = v698;
        v773 = v23;
        v56 = v697;
        v771 = v22;
        v57 = v696;
        v769 = v21;
        v58 = v695;
        v767 = v20;
        v59 = v694;
        v60 = v742;
LABEL_16:
        v781 = v51;
        v738 = v43;
        v740 = v14;
        v736 = v44;
        v765 = v49;
        v61 = v49;
        v62 = 0;
        v763 = v47;
        v63 = v47;
        v64 = v44;
        v761 = v45;
        v65 = v45;
        v66 = v61;
        v759 = v59;
        v757 = v58;
        v67 = v58;
        v68 = v65;
        v755 = v57;
        v69 = v57;
        v70 = v59;
        v753 = v56;
        v71 = v56;
        v72 = v67;
        v751 = v55;
        v73 = v55;
        v74 = v69;
        v734 = v40;
        v732 = v39;
        v730 = v38;
        v728 = v37;
        v727 = v36;
        v725 = v35;
        v749 = v54;
        v75 = v54;
        v76 = v71;
        v746 = v53;
        v77 = v53;
        v78 = v73;
        v723 = v52;
        v79 = v52;
        v80 = v40;
        v721 = v50;
        v81 = v50;
        v82 = v39;
        v719 = v32;
        v717 = v31;
        v83 = v31;
        v84 = v77;
        v715 = v30;
        v85 = v30;
        v86 = v37;
        v713 = v29;
        v87 = v29;
        v88 = v38;
        v743 = v60;
        v89 = v60;
        v90 = v75;
        v91 = v781;
        v824 = v779;
        v92 = v79;
        v828 = v777;
        v832 = v775;
        v836 = v773;
        v842 = v771;
        v876 = v769;
        v873 = v767;
LABEL_18:
        v870 = v81;
        v859 = v85;
        v863 = v83;
        v867 = v32;
        v847 = v91;
        v851 = v89;
        v855 = v87;
        v884 = 0;
        v93 = v62 | 1;
        v94 = v62 | 2;
        v95 = v62 | 3;
        v96 = v62 | 4;
        v97 = v62 | 5;
        v98 = v62 | 6;
        v820 = v62;
        v99 = v62 | 7;
        v818 = v64;
        v100 = v64;
        v101 = v66;
        v102 = v63;
        v811 = v68;
        v991 = v70;
        v985 = v72;
        v979 = v74;
        v975 = v76;
        v800 = v78;
        v970 = v78;
        v965 = v80;
        v960 = v82;
        v795 = v88;
        v955 = v88;
        v793 = v86;
        v950 = v86;
        v791 = v36;
        v945 = v36;
        v789 = v35;
        v940 = v35;
        v935 = v90;
        v786 = v84;
        v930 = v84;
        v784 = v92;
        v925 = v92;
        v919 = v870;
        v913 = v867;
        v908 = v863;
        v903 = v859;
        v899 = v855;
        v896 = v851;
        v892 = v847;
        v889 = v824;
        v103 = v828;
        v104 = v832;
        v105 = v836;
        v106 = v842;
        v107 = v876;
        v108 = v873;
LABEL_20:
        v109 = 0;
        while (1)
        {
          LODWORD(v110) = *(v100 + 4 * v109);
          DWORD1(v110) = *(v101 + 4 * v109);
          DWORD2(v110) = *(v102 + 4 * v109);
          HIDWORD(v110) = v68[v109];
          *result = v110;
          if (v93 < v3)
          {
            LODWORD(v111) = *(v105 + 4 * v109);
            DWORD1(v111) = *(v106 + 4 * v109);
            DWORD2(v111) = *(v107 + 4 * v109);
            HIDWORD(v111) = *(v108 + 4 * v109);
            *(result + 1) = v111;
            if (v94 >= v3)
            {
LABEL_24:
              if (v95 >= v3)
              {
                goto LABEL_25;
              }

              goto LABEL_32;
            }
          }

          else if (v94 >= v3)
          {
            goto LABEL_24;
          }

          LODWORD(v112) = *(v892 + 4 * v109);
          DWORD1(v112) = *(v889 + 4 * v109);
          DWORD2(v112) = *(v103 + 4 * v109);
          HIDWORD(v112) = *(v104 + 4 * v109);
          *(result + 2) = v112;
          if (v95 >= v3)
          {
LABEL_25:
            if (v96 >= v3)
            {
              goto LABEL_26;
            }

            goto LABEL_33;
          }

LABEL_32:
          LODWORD(v113) = *(v908 + 4 * v109);
          DWORD1(v113) = *(v903 + 4 * v109);
          DWORD2(v113) = *(v899 + 4 * v109);
          HIDWORD(v113) = *(v896 + 4 * v109);
          *(result + 3) = v113;
          if (v96 >= v3)
          {
LABEL_26:
            if (v97 >= v3)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }

LABEL_33:
          LODWORD(v114) = *(v930 + 4 * v109);
          DWORD1(v114) = *(v925 + 4 * v109);
          DWORD2(v114) = *(v919 + 4 * v109);
          HIDWORD(v114) = *(v913 + 4 * v109);
          *(result + 4) = v114;
          if (v97 >= v3)
          {
LABEL_27:
            if (v98 >= v3)
            {
              goto LABEL_28;
            }

            goto LABEL_35;
          }

LABEL_34:
          LODWORD(v115) = *(v950 + 4 * v109);
          DWORD1(v115) = *(v945 + 4 * v109);
          DWORD2(v115) = *(v940 + 4 * v109);
          HIDWORD(v115) = *(v935 + 4 * v109);
          *(result + 5) = v115;
          if (v98 >= v3)
          {
LABEL_28:
            if (v99 < v3)
            {
              goto LABEL_36;
            }

            goto LABEL_21;
          }

LABEL_35:
          LODWORD(v116) = *(v970 + 4 * v109);
          DWORD1(v116) = *(v965 + 4 * v109);
          DWORD2(v116) = *(v960 + 4 * v109);
          HIDWORD(v116) = *(v955 + 4 * v109);
          *(result + 6) = v116;
          if (v99 < v3)
          {
LABEL_36:
            LODWORD(v117) = *(v991 + 4 * v109);
            DWORD1(v117) = *(v985 + 4 * v109);
            DWORD2(v117) = *(v979 + 4 * v109);
            HIDWORD(v117) = *(v975 + 4 * v109);
            *(result + 7) = v117;
          }

LABEL_21:
          result += 32;
          if (v997 == --v109)
          {
            v108 += v880;
            v107 += v880;
            v106 += v880;
            v105 += v880;
            v104 += v880;
            v103 += v880;
            v889 += v880;
            v892 += v880;
            v896 += v880;
            v899 += v880;
            v903 += v880;
            v908 += v880;
            v913 += v880;
            v919 += v880;
            v925 += v880;
            v930 += v880;
            v935 += v880;
            v940 += v880;
            v945 += v880;
            v950 += v880;
            v955 += v880;
            v960 += v880;
            v965 += v880;
            v970 += v880;
            v975 += v880;
            v979 += v880;
            v985 += v880;
            v991 += v880;
            v68 = (v68 + v880);
            v102 += v880;
            v101 += v880;
            v100 += v880;
            if (++v884 != v883)
            {
              goto LABEL_20;
            }

            v62 = v820 + 8;
            v873 += v783;
            v876 += v783;
            v842 += v783;
            v836 += v783;
            v832 += v783;
            v828 += v783;
            v824 += v783;
            v91 = v847 + v783;
            v89 = v851 + v783;
            v87 = v855 + v783;
            v85 = v859 + v783;
            v83 = v863 + v783;
            v32 = v867 + v783;
            v81 = v870 + v783;
            v92 = v784 + v783;
            v84 = v786 + v783;
            v90 += v783;
            v35 = v789 + v783;
            v36 = v791 + v783;
            v86 = v793 + v783;
            v88 = v795 + v783;
            v82 += v783;
            v80 += v783;
            v78 = v800 + v783;
            v76 += v783;
            v74 += v783;
            v72 += v783;
            v70 += v783;
            v68 = &v811[v783 / 4];
            v63 += v783;
            v66 += v783;
            v64 = v818 + v783;
            if (v820 + 8 < v3)
            {
              goto LABEL_18;
            }

            v43 = v738 + 4;
            v14 = (v740 + v705);
            v767 += v705;
            v769 += v705;
            v771 += v705;
            v773 += v705;
            v775 += v705;
            v777 += v705;
            v779 += v705;
            v60 = v743 + v705;
            v29 = v713 + v705;
            v30 = v715 + v705;
            v31 = v717 + v705;
            v32 = v719 + v705;
            v50 = v721 + v705;
            v52 = v723 + v705;
            v53 = v746 + v705;
            v54 = v749 + v705;
            v35 = v725 + v705;
            v36 = v727 + v705;
            v37 = v728 + v705;
            v38 = v730 + v705;
            v39 = v732 + v705;
            v40 = v734 + v705;
            v55 = v751 + v705;
            v56 = v753 + v705;
            v57 = v755 + v705;
            v58 = v757 + v705;
            v59 = v759 + v705;
            v45 = (v761 + v705);
            v47 = v763 + v705;
            v49 = v765 + v705;
            v44 = v736 + v705;
            v51 = v781 + v705;
            if (v738 + 4 < v704)
            {
              goto LABEL_16;
            }

            v118 = v661;
            v4 = v841;
            v119 = &v740->i8[v705];
            if (v3)
            {
              goto LABEL_40;
            }

            goto LABEL_11;
          }
        }
      }

      v118 = 0;
      v119 = v14;
      if (!v3)
      {
        goto LABEL_11;
      }

LABEL_40:
      v120 = v4 - v118;
      if (v4 > v118 && !v662)
      {
        break;
      }

LABEL_11:
      v14 = (v700 + 4 * v664);
      v6 = v688 + 1;
      v20 = v687 + v665;
      v21 = v686 + v665;
      v22 = v685 + v665;
      v23 = v684 + v665;
      v24 = v683 + v665;
      v25 = v682 + v665;
      v26 = v681 + v665;
      v27 = v680 + v665;
      v28 = v679 + v665;
      v29 = v678 + v665;
      v30 = v677 + v665;
      v31 = v676 + v665;
      v32 = v675 + v665;
      v42 = v689 + v665;
      v33 = v674 + v665;
      v41 = v673 + v665;
      v34 = v672 + v665;
      v35 = v671 + v665;
      v36 = v670 + v665;
      v37 = v669 + v665;
      v38 = v668 + v665;
      v39 = v667 + v665;
      v40 = v666 + v665;
      v698 += v665;
      v697 += v665;
      v696 += v665;
      v695 += v665;
      v694 += v665;
      v693 = (v693 + v665);
      v692 += v665;
      v691 += v665;
      v690 += v665;
      v4 = v841;
      if (v688 + 1 == v699)
      {
        return result;
      }
    }

    v121 = 0;
    v122 = &v119[v629];
    v123 = &v119[v628];
    v814 = &v119[v627];
    v812 = &v119[v605];
    v809 = &v119[v638];
    v807 = &v119[v637];
    v805 = &v119[v626];
    v803 = &v119[v625];
    v801 = &v119[v624];
    v798 = &v119[v635];
    v797 = &v119[v634];
    v796 = &v119[v633];
    v794 = &v119[v632];
    v792 = &v119[v623];
    v790 = &v119[v622];
    v788 = &v119[v621];
    v787 = &v119[v631];
    v785 = &v119[v630];
    v782 = &v119[v660];
    v780 = &v119[v659];
    v778 = &v119[v620];
    v776 = &v119[v619];
    v774 = &v119[v618];
    v124 = &v119[v658];
    v125 = &v119[v657];
    v772 = &v119[v656];
    v770 = &v119[v655];
    v768 = &v119[v617];
    v766 = &v119[v616];
    v126 = &v119[v615];
    v127 = &v119[v654];
    v128 = &v119[v653];
    v764 = &v119[v652];
    v762 = &v119[v651];
    v129 = &v119[v614];
    v130 = &v119[v613];
    v131 = &v119[v612];
    v132 = &v119[v650];
    v133 = &v119[v649];
    v134 = &v119[v648];
    v135 = &v119[v647];
    v136 = &v119[v611];
    v137 = &v119[v610];
    v138 = &v119[v609];
    v139 = &v119[v646];
    v760 = &v119[v645];
    v758 = &v119[v644];
    v756 = &v119[v643];
    v754 = &v119[v608];
    v752 = &v119[v607];
    v140 = &v119[v606];
    v141 = &v119[v642];
    v142 = &v119[v641];
    v143 = &v119[v640];
    v144 = &v119[v639];
    v145 = &v119[v636];
LABEL_44:
    v739 = v130;
    v741 = v129;
    v737 = v131;
    v744 = v125;
    v747 = v124;
    v750 = v123;
    v735 = v122;
    v146 = 0;
    v147 = v132;
    v148 = v133;
    v149 = v134;
    v150 = v135;
    v151 = v136;
    v152 = v121 | 1;
    v153 = v139;
    v154 = v138;
    v155 = v121 | 2;
    v156 = v121 | 3;
    v157 = v121 | 4;
    v158 = v121 | 5;
    v159 = v121 | 6;
    v733 = v121;
    v160 = v121 | 7;
    v706 = v145;
    v707 = v144;
    v708 = v143;
    v992 = v143;
    v709 = v142;
    v976 = v142;
    v710 = v141;
    v941 = v141;
    v711 = v140;
    v900 = v140;
    v871 = v752;
    v837 = v754;
    v161 = v756;
    v986 = v758;
    v971 = v760;
    v712 = v153;
    v936 = v153;
    v714 = v154;
    v897 = v154;
    v716 = v137;
    v868 = v137;
    v718 = v151;
    v833 = v151;
    v720 = v150;
    v162 = v150;
    v722 = v149;
    v980 = v149;
    v724 = v148;
    v966 = v148;
    v726 = v147;
    v931 = v147;
    v893 = v737;
    v864 = v739;
    v829 = v741;
    v163 = v762;
    v164 = v764;
    v961 = v128;
    v729 = v127;
    v926 = v127;
    v731 = v126;
    v890 = v126;
    v860 = v766;
    v825 = v768;
    v165 = v770;
    v166 = v772;
    v956 = v744;
    v920 = v747;
    v885 = v774;
    v856 = v776;
    v821 = v778;
    v167 = v780;
    v168 = v782;
    v951 = v785;
    v914 = v787;
    v877 = v788;
    v852 = v790;
    v819 = v792;
    v169 = v794;
    v170 = v796;
    v946 = v797;
    v909 = v798;
    v874 = v801;
    v848 = v803;
    v816 = v805;
    v171 = v807;
    v172 = v809;
    v173 = v812;
    v174 = v814;
    v904 = v750;
    v843 = v735;
LABEL_46:
    v175 = 0;
    while (v120 <= 3)
    {
      switch(v120)
      {
        case 1:
          goto LABEL_70;
        case 2:
          goto LABEL_69;
        case 3:
          goto LABEL_68;
      }

LABEL_71:
      if (v152 >= v3)
      {
        goto LABEL_89;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_89;
            }

            result[10] = *&v816[4 * v175];
          }

          result[9] = *&v848[4 * v175];
LABEL_84:
          result[8] = *&v874[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_84;
        }

        result[7] = *&v909[4 * v175];
LABEL_86:
        result[6] = *&v946[4 * v175];
LABEL_87:
        result[5] = *&v170[4 * v175];
LABEL_88:
        result[4] = *&v169[4 * v175];
        goto LABEL_89;
      }

      switch(v120)
      {
        case 1:
          goto LABEL_88;
        case 2:
          goto LABEL_87;
        case 3:
          goto LABEL_86;
      }

LABEL_89:
      if (v155 >= v3)
      {
        goto LABEL_107;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_107;
            }

            result[14] = *&v819[4 * v175];
          }

          result[13] = *&v852[4 * v175];
LABEL_102:
          result[12] = *&v877[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_102;
        }

        result[11] = *&v914[4 * v175];
LABEL_104:
        result[10] = *&v951[4 * v175];
LABEL_105:
        result[9] = *&v168[4 * v175];
LABEL_106:
        result[8] = *&v167[4 * v175];
        goto LABEL_107;
      }

      switch(v120)
      {
        case 1:
          goto LABEL_106;
        case 2:
          goto LABEL_105;
        case 3:
          goto LABEL_104;
      }

LABEL_107:
      if (v156 >= v3)
      {
        goto LABEL_125;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_125;
            }

            result[18] = *&v821[4 * v175];
          }

          result[17] = *&v856[4 * v175];
LABEL_120:
          result[16] = *&v885[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_120;
        }

        result[15] = *&v920[4 * v175];
LABEL_122:
        result[14] = *&v956[4 * v175];
LABEL_123:
        result[13] = *&v166[4 * v175];
LABEL_124:
        result[12] = *&v165[4 * v175];
        goto LABEL_125;
      }

      switch(v120)
      {
        case 1:
          goto LABEL_124;
        case 2:
          goto LABEL_123;
        case 3:
          goto LABEL_122;
      }

LABEL_125:
      if (v157 >= v3)
      {
        goto LABEL_143;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_143;
            }

            result[22] = *&v825[4 * v175];
          }

          result[21] = *&v860[4 * v175];
LABEL_138:
          result[20] = *&v890[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_138;
        }

        result[19] = *&v926[4 * v175];
LABEL_140:
        result[18] = *&v961[4 * v175];
LABEL_141:
        result[17] = *&v164[4 * v175];
LABEL_142:
        result[16] = *&v163[4 * v175];
        goto LABEL_143;
      }

      switch(v120)
      {
        case 1:
          goto LABEL_142;
        case 2:
          goto LABEL_141;
        case 3:
          goto LABEL_140;
      }

LABEL_143:
      if (v158 >= v3)
      {
        goto LABEL_161;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_161;
            }

            result[26] = *&v829[4 * v175];
          }

          result[25] = *&v864[4 * v175];
LABEL_156:
          result[24] = *&v893[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_156;
        }

        result[23] = *&v931[4 * v175];
LABEL_158:
        result[22] = *&v966[4 * v175];
LABEL_159:
        result[21] = *&v980[4 * v175];
LABEL_160:
        result[20] = *&v162[4 * v175];
        goto LABEL_161;
      }

      switch(v120)
      {
        case 1:
          goto LABEL_160;
        case 2:
          goto LABEL_159;
        case 3:
          goto LABEL_158;
      }

LABEL_161:
      if (v159 >= v3)
      {
        goto LABEL_179;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_179;
            }

            result[30] = *&v833[4 * v175];
          }

          result[29] = *&v868[4 * v175];
LABEL_174:
          result[28] = *&v897[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_174;
        }

        result[27] = *&v936[4 * v175];
LABEL_176:
        result[26] = *&v971[4 * v175];
LABEL_177:
        result[25] = *&v986[4 * v175];
LABEL_178:
        result[24] = *&v161[4 * v175];
        goto LABEL_179;
      }

      switch(v120)
      {
        case 1:
          goto LABEL_178;
        case 2:
          goto LABEL_177;
        case 3:
          goto LABEL_176;
      }

LABEL_179:
      if (v160 >= v3)
      {
        goto LABEL_53;
      }

      if (v120 > 3)
      {
        if (v120 > 5)
        {
          if (v120 != 6)
          {
            if (v120 != 7)
            {
              goto LABEL_53;
            }

            result[34] = *&v837[4 * v175];
          }

          result[33] = *&v871[4 * v175];
LABEL_48:
          result[32] = *&v900[4 * v175];
        }

        else if (v120 != 4)
        {
          goto LABEL_48;
        }

        result[31] = *&v941[4 * v175];
LABEL_50:
        result[30] = *&v976[4 * v175];
        goto LABEL_51;
      }

      if (v120 == 1)
      {
        goto LABEL_52;
      }

      if (v120 != 2)
      {
        if (v120 != 3)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

LABEL_51:
      result[29] = *&v992[4 * v175];
LABEL_52:
      result[28] = *&v144[4 * v175];
LABEL_53:
      result += 32;
      if (v997 == --v175)
      {
        v843 += v880;
        v904 += v880;
        v174 += v880;
        v173 += v880;
        v172 += v880;
        v171 += v880;
        v816 += v880;
        v848 += v880;
        v874 += v880;
        v909 += v880;
        v946 += v880;
        v170 += v880;
        v169 += v880;
        v819 += v880;
        v852 += v880;
        v877 += v880;
        v914 += v880;
        v951 += v880;
        v168 += v880;
        v167 += v880;
        v821 += v880;
        v856 += v880;
        v885 += v880;
        v920 += v880;
        v956 += v880;
        v166 += v880;
        v165 += v880;
        v825 += v880;
        v860 += v880;
        v890 += v880;
        v926 += v880;
        v961 += v880;
        v164 += v880;
        v163 += v880;
        v829 += v880;
        v864 += v880;
        v893 += v880;
        v931 += v880;
        v966 += v880;
        v980 += v880;
        v162 += v880;
        v833 += v880;
        v868 += v880;
        v897 += v880;
        v936 += v880;
        v971 += v880;
        v986 += v880;
        v161 += v880;
        v837 += v880;
        v871 += v880;
        v900 += v880;
        v941 += v880;
        v976 += v880;
        v992 += v880;
        v144 += v880;
        v145 += v880;
        if (++v146 == v883)
        {
          v121 = v733 + 8;
          v122 = &v735[v783];
          v123 = &v750[v783];
          v814 += v783;
          v812 += v783;
          v809 += v783;
          v807 += v783;
          v805 += v783;
          v803 += v783;
          v801 += v783;
          v798 += v783;
          v797 += v783;
          v796 += v783;
          v794 += v783;
          v792 += v783;
          v790 += v783;
          v788 += v783;
          v787 += v783;
          v785 += v783;
          v782 += v783;
          v780 += v783;
          v778 += v783;
          v776 += v783;
          v774 += v783;
          v124 = &v747[v783];
          v125 = &v744[v783];
          v772 += v783;
          v770 += v783;
          v768 += v783;
          v766 += v783;
          v126 = &v731[v783];
          v127 = &v729[v783];
          v128 += v783;
          v764 += v783;
          v762 += v783;
          v129 = &v741[v783];
          v130 = &v739[v783];
          v131 = &v737[v783];
          v132 = &v726[v783];
          v133 = &v724[v783];
          v134 = &v722[v783];
          v135 = &v720[v783];
          v136 = &v718[v783];
          v137 = &v716[v783];
          v138 = &v714[v783];
          v139 = &v712[v783];
          v760 += v783;
          v758 += v783;
          v756 += v783;
          v754 += v783;
          v752 += v783;
          v140 = &v711[v783];
          v141 = &v710[v783];
          v142 = &v709[v783];
          v143 = &v708[v783];
          v144 = &v707[v783];
          v145 = &v706[v783];
          if (v733 + 8 >= v3)
          {
            goto LABEL_11;
          }

          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    if (v120 > 5)
    {
      if (v120 != 6)
      {
        if (v120 != 7)
        {
          goto LABEL_71;
        }

        result[6] = *&v843[4 * v175];
      }

      result[5] = *&v904[4 * v175];
    }

    else if (v120 == 4)
    {
      goto LABEL_67;
    }

    result[4] = *&v174[4 * v175];
LABEL_67:
    result[3] = *&v173[4 * v175];
LABEL_68:
    result[2] = *&v172[4 * v175];
LABEL_69:
    result[1] = *&v171[4 * v175];
LABEL_70:
    *result = *&v145[4 * v175];
    goto LABEL_71;
  }

  return result;
}

unint64_t sub_239CB0FD8(unint64_t result, int32x4_t *a2, uint64_t a3, double a4, int32x4_t a5)
{
  v5 = result;
  v6 = *(a3 + 8);
  v397 = *(a3 + 32);
  v388 = *(a3 + 48);
  v472 = *(a3 + 56);
  v469 = *(a3 + 64);
  v7 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v61 = *(a3 + 16);
    v62 = *(a3 + 40);
    v63 = *(a3 + 72);
    v471 = *(a3 + 80);
    if (v7)
    {
      if (v388 && v6 && v472 && v397 && v469)
      {
        v64 = 0;
        v65 = v469 * v61;
        result = v472;
        v66 = v469 * v6 * v472;
        v67 = 32 * v469 * v472;
        v68 = 32 * v472;
        v464 = v472 * v62 * v65;
        v69 = 4 * v469 * v472;
        v70 = v65 * 32 * v472;
        do
        {
          v71 = 0;
          v72 = v397;
          v467 = v64;
          v73 = v64 * v397;
          v386 = a2;
          v74 = a2;
          v75 = v5;
          do
          {
            v76 = v71 + v73;
            if ((v71 + v73) % v471 < v63)
            {
              v77 = 0;
              v78 = v74;
              v79 = v75;
              do
              {
                v80 = 0;
                v81 = v78;
                v82 = v79;
                do
                {
                  v83 = 0;
                  v84 = 0;
                  v85 = v81;
                  v86 = 1;
                  v87 = v82;
                  do
                  {
                    if (v6 >= v86)
                    {
                      v88 = v86;
                    }

                    else
                    {
                      v88 = v6;
                    }

                    result = v88 + v83;
                    v89 = v85;
                    v90 = v87;
                    do
                    {
                      *v90 = *v89;
                      v90 += 8;
                      v89 = (v89 + v69);
                      --result;
                    }

                    while (result);
                    ++v84;
                    v87 = (v87 + v67);
                    ++v86;
                    --v83;
                    v85 = (v85 + v69);
                  }

                  while (v84 != v6);
                  ++v80;
                  v82 += 8;
                  v81 = (v81 + 4);
                }

                while (v80 != v472);
                ++v77;
                v79 = (v79 + v68);
                v78 = (v78 + 4 * v472);
              }

              while (v77 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 1) < v72 && (v76 + 1) % v471 < v63)
            {
              v91 = 0;
              v92 = &v75->i8[4];
              v93 = v74;
              do
              {
                v94 = 0;
                v95 = v93;
                v96 = v92;
                do
                {
                  v97 = 0;
                  v98 = 0;
                  v99 = v95;
                  v100 = 1;
                  v101 = v96;
                  do
                  {
                    result = 0;
                    if (v6 >= v100)
                    {
                      v102 = v100;
                    }

                    else
                    {
                      v102 = v6;
                    }

                    v103 = v102 + v97;
                    v104 = v99;
                    do
                    {
                      *&v101[result] = *v104;
                      v104 = (v104 + v69);
                      result += 32;
                      --v103;
                    }

                    while (v103);
                    ++v98;
                    v101 += v67;
                    ++v100;
                    --v97;
                    v99 = (v99 + v69);
                  }

                  while (v98 != v6);
                  ++v94;
                  v96 += 32;
                  v95 = (v95 + 4);
                }

                while (v94 != v472);
                ++v91;
                v92 += v68;
                v93 = (v93 + 4 * v472);
              }

              while (v91 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 2) < v72 && (v76 + 2) % v471 < v63)
            {
              v105 = 0;
              v106 = &v75->i8[8];
              v107 = v74;
              do
              {
                v108 = 0;
                v109 = v107;
                v110 = v106;
                do
                {
                  v111 = 0;
                  v112 = 0;
                  v113 = v109;
                  v114 = 1;
                  v115 = v110;
                  do
                  {
                    result = 0;
                    if (v6 >= v114)
                    {
                      v116 = v114;
                    }

                    else
                    {
                      v116 = v6;
                    }

                    v117 = v116 + v111;
                    v118 = v113;
                    do
                    {
                      *&v115[result] = *v118;
                      v118 = (v118 + v69);
                      result += 32;
                      --v117;
                    }

                    while (v117);
                    ++v112;
                    v115 += v67;
                    ++v114;
                    --v111;
                    v113 = (v113 + v69);
                  }

                  while (v112 != v6);
                  ++v108;
                  v110 += 32;
                  v109 = (v109 + 4);
                }

                while (v108 != v472);
                ++v105;
                v106 += v68;
                v107 = (v107 + 4 * v472);
              }

              while (v105 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 3) < v72 && (v76 + 3) % v471 < v63)
            {
              v119 = 0;
              v120 = &v75->i8[12];
              v121 = v74;
              do
              {
                v122 = 0;
                v123 = v121;
                v124 = v120;
                do
                {
                  v125 = 0;
                  v126 = 0;
                  v127 = v123;
                  v128 = 1;
                  v129 = v124;
                  do
                  {
                    result = 0;
                    if (v6 >= v128)
                    {
                      v130 = v128;
                    }

                    else
                    {
                      v130 = v6;
                    }

                    v131 = v130 + v125;
                    v132 = v127;
                    do
                    {
                      *&v129[result] = *v132;
                      v132 = (v132 + v69);
                      result += 32;
                      --v131;
                    }

                    while (v131);
                    ++v126;
                    v129 += v67;
                    ++v128;
                    --v125;
                    v127 = (v127 + v69);
                  }

                  while (v126 != v6);
                  ++v122;
                  v124 += 32;
                  v123 = (v123 + 4);
                }

                while (v122 != v472);
                ++v119;
                v120 += v68;
                v121 = (v121 + 4 * v472);
              }

              while (v119 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 4) < v72 && (v76 + 4) % v471 < v63)
            {
              v133 = 0;
              i8 = v75[1].i8;
              v135 = v74;
              do
              {
                v136 = 0;
                v137 = v135;
                v138 = i8;
                do
                {
                  v139 = 0;
                  v140 = 0;
                  v141 = v137;
                  v142 = 1;
                  v143 = v138;
                  do
                  {
                    result = 0;
                    if (v6 >= v142)
                    {
                      v144 = v142;
                    }

                    else
                    {
                      v144 = v6;
                    }

                    v145 = v144 + v139;
                    v146 = v141;
                    do
                    {
                      *&v143[result] = *v146;
                      v146 = (v146 + v69);
                      result += 32;
                      --v145;
                    }

                    while (v145);
                    ++v140;
                    v143 += v67;
                    ++v142;
                    --v139;
                    v141 = (v141 + v69);
                  }

                  while (v140 != v6);
                  ++v136;
                  v138 += 32;
                  v137 = (v137 + 4);
                }

                while (v136 != v472);
                ++v133;
                i8 += v68;
                v135 = (v135 + 4 * v472);
              }

              while (v133 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 5) < v72 && (v76 + 5) % v471 < v63)
            {
              v147 = 0;
              v148 = &v75[1].i8[4];
              v149 = v74;
              do
              {
                v150 = 0;
                v151 = v149;
                v152 = v148;
                do
                {
                  v153 = 0;
                  v154 = 0;
                  v155 = v151;
                  v156 = 1;
                  v157 = v152;
                  do
                  {
                    result = 0;
                    if (v6 >= v156)
                    {
                      v158 = v156;
                    }

                    else
                    {
                      v158 = v6;
                    }

                    v159 = v158 + v153;
                    v160 = v155;
                    do
                    {
                      *&v157[result] = *v160;
                      v160 = (v160 + v69);
                      result += 32;
                      --v159;
                    }

                    while (v159);
                    ++v154;
                    v157 += v67;
                    ++v156;
                    --v153;
                    v155 = (v155 + v69);
                  }

                  while (v154 != v6);
                  ++v150;
                  v152 += 32;
                  v151 = (v151 + 4);
                }

                while (v150 != v472);
                ++v147;
                v148 += v68;
                v149 = (v149 + 4 * v472);
              }

              while (v147 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 6) < v72 && (v76 + 6) % v471 < v63)
            {
              v161 = 0;
              v162 = &v75[1].i8[8];
              v163 = v74;
              do
              {
                v164 = 0;
                v165 = v163;
                v166 = v162;
                do
                {
                  v167 = 0;
                  v168 = 0;
                  v169 = v165;
                  v170 = 1;
                  v171 = v166;
                  do
                  {
                    result = 0;
                    if (v6 >= v170)
                    {
                      v172 = v170;
                    }

                    else
                    {
                      v172 = v6;
                    }

                    v173 = v172 + v167;
                    v174 = v169;
                    do
                    {
                      *&v171[result] = *v174;
                      v174 = (v174 + v69);
                      result += 32;
                      --v173;
                    }

                    while (v173);
                    ++v168;
                    v171 += v67;
                    ++v170;
                    --v167;
                    v169 = (v169 + v69);
                  }

                  while (v168 != v6);
                  ++v164;
                  v166 += 32;
                  v165 = (v165 + 4);
                }

                while (v164 != v472);
                ++v161;
                v162 += v68;
                v163 = (v163 + 4 * v472);
              }

              while (v161 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            if ((v71 | 7) < v72 && (v76 + 7) % v471 < v63)
            {
              v175 = 0;
              v176 = &v75[1].i8[12];
              v177 = v74;
              do
              {
                v178 = 0;
                v179 = v177;
                v180 = v176;
                do
                {
                  v181 = 0;
                  v182 = 0;
                  v183 = v179;
                  v184 = 1;
                  v185 = v180;
                  do
                  {
                    result = 0;
                    if (v6 >= v184)
                    {
                      v186 = v184;
                    }

                    else
                    {
                      v186 = v6;
                    }

                    v187 = v186 + v181;
                    v188 = v183;
                    do
                    {
                      *&v185[result] = *v188;
                      v188 = (v188 + v69);
                      result += 32;
                      --v187;
                    }

                    while (v187);
                    ++v182;
                    v185 += v67;
                    ++v184;
                    --v181;
                    v183 = (v183 + v69);
                  }

                  while (v182 != v6);
                  ++v178;
                  v180 += 32;
                  v179 = (v179 + 4);
                }

                while (v178 != v472);
                ++v175;
                v176 += v68;
                v177 = (v177 + 4 * v472);
              }

              while (v175 != v469);
              v74 = (v74 + 4 * v66);
              v72 = v397;
            }

            v71 += 8;
            v75 = (v75 + v70);
          }

          while (v71 < v72);
          v64 = v467 + 1;
          v5 = (v5 + 4 * v464);
          a2 = (v386 + 4 * v472 * v397 * v469 * v6);
        }

        while (v467 + 1 != v388);
      }

      return result;
    }

    if (!v388)
    {
      return result;
    }

    v218 = 0;
    v219 = 0;
    v220 = 32 * v469 * v472;
    v221 = v469 * v472 * v61;
    v382 = 4 * v62 * v221;
    v222 = v469 * v61;
    v223 = v469 * v6 * v472;
    v224 = v469 * v472 * v6;
    v225 = v6 - 3;
    v381 = v472 * v62 * v222;
    v401 = 4 * v472 * v6;
    v403 = v472 * v6;
    v226 = 4 * v6;
    result = v472 * v397;
    v380 = v397 & 0xFFFFFFFFFFFFFFF8;
    v405 = 2 * v472;
    v389 = v222 * 32 * v472;
    v227 = &v5->i8[v221 * (32 * ((v397 - 8) >> 3) + 32)];
    v379 = 3 * v224;
    v377 = 6 * v224;
    v378 = 5 * v224;
    v228 = *(a3 + 88);
    v433 = v224;
    v376 = 7 * v224;
    v465 = v228;
    v468 = v224;
    v374 = 4 * v224;
    v375 = 2 * v224;
    v444 = v6 - 3;
LABEL_222:
    v384 = v218;
    v387 = a2;
    v383 = v227;
    if (v397 < 8)
    {
      v297 = 0;
      v231 = v5;
      v230 = a2;
      if (v397 > 0)
      {
        goto LABEL_328;
      }

      goto LABEL_221;
    }

    if (!v469)
    {
      goto LABEL_221;
    }

    v415 = v218 * v397;
    if (!v472)
    {
      if (v380 != v397)
      {
        result = v415 + v380;
      }

      goto LABEL_221;
    }

    v229 = 0;
    v230 = a2;
    v231 = v5;
LABEL_227:
    v232 = 0;
    v233 = 0;
    v418 = v229;
    v234 = v229 + v415;
    v235 = v229 + v415 + 1;
    v458 = v229 + v415 + 3;
    v461 = v229 + v415 + 2;
    v452 = v229 + v415 + 5;
    v455 = v229 + v415 + 4;
    v446 = v229 + v415 + 7;
    v449 = v229 + v415 + 6;
    result = v230 + 28 * v223;
    v236 = &v230->i32[6 * v223];
    v237 = &v230->i32[5 * v223];
    v238 = &v230[v223];
    v239 = &v230->i32[3 * v223];
    v240 = &v230->i32[2 * v223];
    v241 = &v230->i32[v223];
    v242 = v230;
    v395 = v231;
    v438 = v234;
    v441 = v230;
    v435 = v235;
LABEL_229:
    v427 = v233;
    v430 = v232;
    v243 = 0;
    v421 = v231;
    v424 = v242;
    v244 = v231;
LABEL_233:
    if (v6 < 4)
    {
      v256 = 0;
      v253 = v244;
      v255 = v242;
      if (v6 <= 0)
      {
        goto LABEL_232;
      }

      goto LABEL_263;
    }

    v251 = v232;
    v252 = v225;
    v253 = v244;
    if (v228 == 1)
    {
      do
      {
        v254.i64[0] = vzip1q_s32(*(v230 + v251), *(v241 + v251)).u64[0];
        v254.i64[1] = vextq_s8(*(v240 + v251), vzip1q_s32(*(v240 + v251), *(v239 + v251)), 8uLL).i64[1];
        a5.i64[0] = vzip1q_s32(*(v238 + v251), *(v237 + v251)).u64[0];
        a5.i64[1] = vextq_s8(*(v236 + v251), vzip1q_s32(*(v236 + v251), *(result + v251)), 8uLL).i64[1];
        *v253 = v254;
        v253[1] = a5;
        v253 = (v253 + v220);
        v251 += 4;
        --v252;
      }

      while (v252);
      v255 = (v230 + v251);
      v219 = 8;
      v256 = v225;
      if (v225 >= v6)
      {
        goto LABEL_232;
      }

LABEL_263:
      if (v228 == 1)
      {
        v248.i32[0] = v255->i32[0];
        v248.i32[1] = v255->i32[v433];
        v245 = &v255->i32[v433 + v433];
        v248.i32[2] = *v245;
        v246 = &v245[v433];
        v248.i32[3] = *v246;
        v247 = &v246[v433];
        v250.i32[0] = *v247;
        v250.i32[1] = v247[v433];
        v249 = &v247[v433 + v433];
        v250.i32[2] = *v249;
        v250.i32[3] = v249[v433];
        v219 = 8;
      }

      else
      {
        v273 = 0uLL;
        if (v234 % v471 >= v63)
        {
          v219 = 0;
          v276 = 0uLL;
          if (v235 % v471 < v63)
          {
            goto LABEL_273;
          }
        }

        else
        {
          if (v256 + 1 >= v6)
          {
            v274 = 0;
            if (v256 + 2 < v6)
            {
              goto LABEL_271;
            }

LABEL_267:
            v275 = 0;
          }

          else
          {
            v274 = v255->i32[1];
            if (v256 + 2 >= v6)
            {
              goto LABEL_267;
            }

LABEL_271:
            v275 = v255->u32[2];
          }

          v276.i32[0] = v255->i32[0];
          v276.i32[1] = v274;
          v276.i64[1] = v275;
          v255 = (v255 + 4 * v468);
          v219 = 1;
          if (v235 % v471 < v63)
          {
LABEL_273:
            if (v256 + 1 >= v6)
            {
              v277 = 0;
              if (v256 + 2 < v6)
              {
                goto LABEL_277;
              }

LABEL_275:
              v278 = 0;
            }

            else
            {
              v277 = v255->i32[1];
              if (v256 + 2 >= v6)
              {
                goto LABEL_275;
              }

LABEL_277:
              v278 = v255->i32[2];
            }

            v273.i32[0] = v255->i32[0];
            v273.i32[1] = v277;
            v273.i32[2] = v278;
            v255 = (v255 + 4 * v468);
            ++v219;
          }
        }

        v279 = 0uLL;
        if (v461 % v471 >= v63)
        {
          v282 = 0uLL;
          if (v458 % v471 < v63)
          {
            goto LABEL_288;
          }
        }

        else
        {
          if (v256 + 1 >= v6)
          {
            v280 = 0;
            if (v256 + 2 < v6)
            {
              goto LABEL_286;
            }

LABEL_282:
            v281 = 0;
          }

          else
          {
            v280 = v255->i32[1];
            if (v256 + 2 >= v6)
            {
              goto LABEL_282;
            }

LABEL_286:
            v281 = v255->u32[2];
          }

          v282.i32[0] = v255->i32[0];
          v282.i32[1] = v280;
          v282.i64[1] = v281;
          v255 = (v255 + 4 * v468);
          ++v219;
          if (v458 % v471 < v63)
          {
LABEL_288:
            if (v256 + 1 >= v6)
            {
              v283 = 0;
              if (v256 + 2 < v6)
              {
                goto LABEL_292;
              }

LABEL_290:
              v284 = 0;
            }

            else
            {
              v283 = v255->i32[1];
              if (v256 + 2 >= v6)
              {
                goto LABEL_290;
              }

LABEL_292:
              v284 = v255->i32[2];
            }

            v279.i32[0] = v255->i32[0];
            v279.i32[1] = v283;
            v279.i32[2] = v284;
            v255 = (v255 + 4 * v468);
            ++v219;
          }
        }

        v285 = 0uLL;
        if (v455 % v471 >= v63)
        {
          v288 = 0uLL;
          if (v452 % v471 < v63)
          {
            goto LABEL_303;
          }
        }

        else
        {
          if (v256 + 1 >= v6)
          {
            v286 = 0;
            if (v256 + 2 < v6)
            {
              goto LABEL_301;
            }

LABEL_297:
            v287 = 0;
          }

          else
          {
            v286 = v255->i32[1];
            if (v256 + 2 >= v6)
            {
              goto LABEL_297;
            }

LABEL_301:
            v287 = v255->u32[2];
          }

          v288.i32[0] = v255->i32[0];
          v288.i32[1] = v286;
          v288.i64[1] = v287;
          v255 = (v255 + 4 * v468);
          ++v219;
          if (v452 % v471 < v63)
          {
LABEL_303:
            if (v256 + 1 >= v6)
            {
              v289 = 0;
              if (v256 + 2 < v6)
              {
                goto LABEL_307;
              }

LABEL_305:
              v290 = 0;
            }

            else
            {
              v289 = v255->i32[1];
              if (v256 + 2 >= v6)
              {
                goto LABEL_305;
              }

LABEL_307:
              v290 = v255->i32[2];
            }

            v285.i32[0] = v255->i32[0];
            v285.i32[1] = v289;
            v285.i32[2] = v290;
            v255 = (v255 + 4 * v468);
            ++v219;
          }
        }

        v291 = 0uLL;
        if (v449 % v471 >= v63)
        {
          v294 = 0uLL;
          if (v446 % v471 < v63)
          {
            goto LABEL_318;
          }
        }

        else
        {
          if (v256 + 1 >= v6)
          {
            v292 = 0;
            if (v256 + 2 < v6)
            {
              goto LABEL_316;
            }

LABEL_312:
            v293 = 0;
          }

          else
          {
            v292 = v255->i32[1];
            if (v256 + 2 >= v6)
            {
              goto LABEL_312;
            }

LABEL_316:
            v293 = v255->u32[2];
          }

          v294.i32[0] = v255->i32[0];
          v294.i32[1] = v292;
          v294.i64[1] = v293;
          v255 = (v255 + 4 * v468);
          ++v219;
          if (v446 % v471 < v63)
          {
LABEL_318:
            if (v256 + 1 >= v6)
            {
              v295 = 0;
              if (v256 + 2 < v6)
              {
                goto LABEL_322;
              }

LABEL_320:
              v296 = 0;
            }

            else
            {
              v295 = v255->i32[1];
              if (v256 + 2 >= v6)
              {
                goto LABEL_320;
              }

LABEL_322:
              v296 = v255->i32[2];
            }

            v291.i32[0] = v255->i32[0];
            v291.i32[1] = v295;
            v291.i32[2] = v296;
            ++v219;
          }
        }

        v250.i64[0] = vzip1q_s32(v288, v285).u64[0];
        v250.i64[1] = vextq_s8(*&v294, vzip1q_s32(v294, v291), 8uLL).i64[1];
        v248.i64[0] = vzip1q_s32(v276, v273).u64[0];
        a5 = vextq_s8(v282, vzip1q_s32(v282, v279), 8uLL);
        v248.i64[1] = a5.i64[1];
      }

      *v253 = v248;
      v253[1] = v250;
      goto LABEL_232;
    }

    v257 = v225;
    v258 = v235 % v471;
    v259 = v458 % v471;
    v260 = v452 % v471;
    v261 = v446 % v471;
    v262 = v257;
    v255 = v242;
    v253 = v244;
    while (1)
    {
      v264 = 0uLL;
      if (v234 % v471 >= v63)
      {
        break;
      }

      v265 = *v255;
      v266 = (v255 + 4 * v223);
      v219 = 1;
      if (v258 < v63)
      {
        goto LABEL_246;
      }

LABEL_247:
      v267 = 0uLL;
      if (v461 % v471 >= v63)
      {
        v268 = 0uLL;
        if (v259 >= v63)
        {
          goto LABEL_252;
        }

LABEL_251:
        v267 = *v266;
        v266 = (v266 + 4 * v223);
        ++v219;
        goto LABEL_252;
      }

      v268 = *v266;
      v266 = (v266 + 4 * v223);
      ++v219;
      if (v259 < v63)
      {
        goto LABEL_251;
      }

LABEL_252:
      v269 = 0uLL;
      if (v455 % v471 >= v63)
      {
        v270 = 0uLL;
        if (v260 >= v63)
        {
          goto LABEL_257;
        }

LABEL_256:
        v269 = *v266;
        v266 = (v266 + 4 * v223);
        ++v219;
        goto LABEL_257;
      }

      v270 = *v266;
      v266 = (v266 + 4 * v223);
      ++v219;
      if (v260 < v63)
      {
        goto LABEL_256;
      }

LABEL_257:
      v271 = 0uLL;
      if (v449 % v471 >= v63)
      {
        v272 = 0uLL;
        if (v261 < v63)
        {
LABEL_261:
          v271 = *v266;
          ++v219;
        }
      }

      else
      {
        v272 = *v266;
        v266 = (v266 + 4 * v223);
        ++v219;
        if (v261 < v63)
        {
          goto LABEL_261;
        }
      }

      v263.i64[0] = vzip1q_s32(v265, v264).u64[0];
      v263.i64[1] = vextq_s8(*&v268, vzip1q_s32(v268, v267), 8uLL).i64[1];
      a5.i64[0] = vzip1q_s32(v270, v269).u64[0];
      a5.i64[1] = vextq_s8(*&v272, vzip1q_s32(v272, v271), 8uLL).i64[1];
      *v253 = v263;
      v253[1] = a5;
      v253 = (v253 + v220);
      v255 = (v255 + 4);
      if (!--v262)
      {
        v226 = 4 * v6;
        v225 = v6 - 3;
        v256 = v6 - 3;
        v228 = v465;
        v234 = v438;
        v230 = v441;
        v235 = v435;
        if (v444 < v6)
        {
          goto LABEL_263;
        }

LABEL_232:
        ++v243;
        v244 += 2;
        v242 = (v242 + 4 * v6);
        v232 += v226;
        if (v243 != v472)
        {
          goto LABEL_233;
        }

        v233 = v427 + 1;
        v231 = &v421[v405];
        v242 = (v424 + 4 * v403);
        v232 = v430 + v401;
        if (v427 + 1 != v469)
        {
          goto LABEL_229;
        }

        v230 = (v230 + 4 * v219 * v468);
        v229 = v418 + 8;
        v231 = (v395 + v389);
        if (v418 + 8 < v397 - 7)
        {
          goto LABEL_227;
        }

        v297 = v397 & 0xFFFFFFFFFFFFFFF8;
        v218 = v384;
        if (v380 >= v397)
        {
          goto LABEL_221;
        }

LABEL_328:
        if (v469)
        {
          result = v297 + v218 * v397;
          if (v472)
          {
            v298 = 0;
            v299 = 0;
            v462 = v297 | 1;
            v453 = result + 2;
            v456 = result + 1;
            v459 = v297 | 2;
            v300 = v230;
            v301 = v297 | 3;
            v447 = result + 4;
            v450 = result + 3;
            v302 = v297 | 4;
            v442 = result + 5;
            v303 = v297 | 5;
            v304 = v297 | 6;
            v436 = result + 7;
            v439 = result + 6;
            v305 = v297 | 7;
            v431 = &v300[v433];
            v428 = &v300[v375];
            v425 = &v300[v379];
            v422 = &v300[v374];
            v419 = &v300[v378];
            v416 = &v300[v377];
            v413 = &v300[v376];
            v306 = v300;
            v307 = v397;
            v399 = v297 + v218 * v397;
LABEL_335:
            v391 = v299;
            v393 = v298;
            v308 = 0;
            v309 = v298;
            v390 = v300;
            v396 = v231;
            v310 = v231;
            while (2)
            {
              v410 = v310;
              v407 = v300;
              v409 = v309;
              v315 = v225;
              v316 = v310;
              if (v6 < 4)
              {
                v317 = 0;
                v316 = v310;
                v318 = v300;
                if (v6 <= 0)
                {
                  goto LABEL_340;
                }

LABEL_394:
                if (v465 == 1)
                {
                  v330 = v317 + 1;
                  v331 = v317 + 2;
                  v332 = &v318[v223];
                  v333 = 0uLL;
                  v334 = 0uLL;
                  if (v462 >= v307)
                  {
                    v335 = &v332[v223];
                    if (v459 >= v307)
                    {
                      goto LABEL_397;
                    }

LABEL_422:
                    if (v330 >= v6)
                    {
                      v350 = 0;
                      if (v331 < v6)
                      {
                        goto LABEL_426;
                      }

LABEL_424:
                      v351 = 0;
                    }

                    else
                    {
                      v350 = v335[1];
                      if (v331 >= v6)
                      {
                        goto LABEL_424;
                      }

LABEL_426:
                      v351 = v335[2];
                    }

                    v333.i32[0] = *v335;
                    v333.i32[1] = v350;
                    v333.i32[2] = v351;
                    result = v399;
                    v336 = &v335[v223];
                    v337 = 0uLL;
                    v338 = 0uLL;
                    if (v301 < v307)
                    {
LABEL_428:
                      if (v330 >= v6)
                      {
                        v352 = 0;
                        if (v331 < v6)
                        {
                          goto LABEL_432;
                        }

LABEL_430:
                        v353 = 0;
                      }

                      else
                      {
                        v352 = v336[1];
                        if (v331 >= v6)
                        {
                          goto LABEL_430;
                        }

LABEL_432:
                        v353 = v336[2];
                      }

                      v338.i32[0] = *v336;
                      v338.i32[1] = v352;
                      v338.i32[2] = v353;
                      result = v399;
                      a5.i32[0] = *v318;
                      v339 = &v336[v223];
                      if (v302 < v307)
                      {
LABEL_434:
                        if (v330 >= v6)
                        {
                          v354 = 0;
                          if (v331 < v6)
                          {
                            goto LABEL_438;
                          }

LABEL_436:
                          v355 = 0;
                        }

                        else
                        {
                          v354 = v339[1];
                          if (v331 >= v6)
                          {
                            goto LABEL_436;
                          }

LABEL_438:
                          v355 = v339[2];
                        }

                        v337.i32[0] = *v339;
                        v337.i32[1] = v354;
                        v337.i32[2] = v355;
                        result = v399;
                        v340 = &v339[v223];
                        v341 = 0uLL;
                        v342 = 0uLL;
                        if (v303 < v307)
                        {
LABEL_440:
                          if (v330 >= v6)
                          {
                            v356 = 0;
                            if (v331 < v6)
                            {
                              goto LABEL_444;
                            }

LABEL_442:
                            v357 = 0;
                          }

                          else
                          {
                            v356 = v340[1];
                            if (v331 >= v6)
                            {
                              goto LABEL_442;
                            }

LABEL_444:
                            v357 = v340[2];
                          }

                          v342.i32[0] = *v340;
                          v342.i32[1] = v356;
                          v342.i32[2] = v357;
                          result = v399;
                          v343 = &v340[v223];
                          if (v304 < v307)
                          {
LABEL_446:
                            if (v330 >= v6)
                            {
                              v358 = 0;
                              if (v331 < v6)
                              {
                                goto LABEL_450;
                              }

LABEL_448:
                              v359 = 0;
                            }

                            else
                            {
                              v358 = v343[1];
                              if (v331 >= v6)
                              {
                                goto LABEL_448;
                              }

LABEL_450:
                              v359 = v343[2];
                            }

                            v341.i32[0] = *v343;
                            v341.i32[1] = v358;
                            v341.i32[2] = v359;
                            result = v399;
                            v312 = 0uLL;
                            if (v305 >= v307)
                            {
                              goto LABEL_338;
                            }

LABEL_452:
                            v360 = &v343[v223];
                            if (v330 >= v6)
                            {
                              v361 = 0;
                              if (v331 >= v6)
                              {
                                goto LABEL_456;
                              }
                            }

                            else
                            {
                              v361 = v360[1];
                              if (v331 >= v6)
                              {
LABEL_456:
                                v311 = 0;
LABEL_337:
                                v312.i32[0] = *v360;
                                v312.i32[1] = v361;
                                v312.i32[2] = v311;
LABEL_338:
                                v219 = 8;
LABEL_339:
                                *&v313 = vzip1q_s32(a5, v334).u64[0];
                                *(&v313 + 1) = vextq_s8(*&v333, vzip1q_s32(v333, v338), 8uLL).i64[1];
                                a5 = vextq_s8(v341, vzip1q_s32(v341, v312), 8uLL);
                                *&v314 = vzip1q_s32(v337, v342).u64[0];
                                *(&v314 + 1) = a5.i64[1];
                                *v316 = v313;
                                v316[1] = v314;
                                goto LABEL_340;
                              }
                            }

                            v311 = v360[2];
                            goto LABEL_337;
                          }

LABEL_401:
                          v312 = 0uLL;
                          if (v305 < v307)
                          {
                            goto LABEL_452;
                          }

                          goto LABEL_338;
                        }

LABEL_400:
                        v343 = &v340[v223];
                        if (v304 < v307)
                        {
                          goto LABEL_446;
                        }

                        goto LABEL_401;
                      }

LABEL_399:
                      v340 = &v339[v223];
                      v341 = 0uLL;
                      v342 = 0uLL;
                      if (v303 < v307)
                      {
                        goto LABEL_440;
                      }

                      goto LABEL_400;
                    }

LABEL_398:
                    a5.i32[0] = *v318;
                    v339 = &v336[v223];
                    if (v302 < v307)
                    {
                      goto LABEL_434;
                    }

                    goto LABEL_399;
                  }

                  if (v330 >= v6)
                  {
                    v346 = 0;
                    if (v331 < v6)
                    {
                      goto LABEL_420;
                    }

LABEL_409:
                    v347 = 0;
                  }

                  else
                  {
                    v346 = v332[1];
                    if (v331 >= v6)
                    {
                      goto LABEL_409;
                    }

LABEL_420:
                    v347 = v332[2];
                  }

                  v334.i32[0] = *v332;
                  v334.i32[1] = v346;
                  v334.i32[2] = v347;
                  result = v399;
                  v335 = &v332[v223];
                  if (v459 < v307)
                  {
                    goto LABEL_422;
                  }

LABEL_397:
                  v336 = &v335[v223];
                  v337 = 0uLL;
                  v338 = 0uLL;
                  if (v301 < v307)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_398;
                }

                v334 = 0uLL;
                if (result % v471 >= v63)
                {
                  v219 = 0;
                  a5 = 0uLL;
                  if (v456 % v471 < v63)
                  {
                    goto LABEL_415;
                  }
                }

                else
                {
                  if (v317 + 1 >= v6)
                  {
                    v344 = 0;
                    if (v317 + 2 < v6)
                    {
                      goto LABEL_413;
                    }

LABEL_406:
                    v345 = 0;
                  }

                  else
                  {
                    v344 = v318[1];
                    if (v317 + 2 >= v6)
                    {
                      goto LABEL_406;
                    }

LABEL_413:
                    v345 = v318[2];
                  }

                  a5.i32[3] = 0;
                  a5.i32[0] = *v318;
                  a5.i32[1] = v344;
                  a5.i32[2] = v345;
                  v318 += v223;
                  v219 = 1;
                  v307 = v397;
                  result = v399;
                  if (v456 % v471 < v63)
                  {
LABEL_415:
                    if (v462 < v307)
                    {
                      if (v317 + 1 >= v6)
                      {
                        v348 = 0;
                        if (v317 + 2 < v6)
                        {
                          goto LABEL_458;
                        }

LABEL_418:
                        v349 = 0;
                      }

                      else
                      {
                        v348 = v318[1];
                        if (v317 + 2 >= v6)
                        {
                          goto LABEL_418;
                        }

LABEL_458:
                        v349 = v318[2];
                      }

                      v334.i32[0] = *v318;
                      v334.i32[1] = v348;
                      v334.i32[2] = v349;
                      result = v399;
                    }

                    v318 += v223;
                    ++v219;
                  }
                }

                v338 = 0uLL;
                v333 = 0uLL;
                if (v453 % v471 < v63)
                {
                  if (v459 < v307)
                  {
                    if (v317 + 1 >= v6)
                    {
                      v362 = 0;
                      if (v317 + 2 < v6)
                      {
                        goto LABEL_467;
                      }

LABEL_465:
                      v363 = 0;
                    }

                    else
                    {
                      v362 = v318[1];
                      if (v317 + 2 >= v6)
                      {
                        goto LABEL_465;
                      }

LABEL_467:
                      v363 = v318[2];
                    }

                    v333.i32[0] = *v318;
                    v333.i32[1] = v362;
                    v333.i32[2] = v363;
                    result = v399;
                  }

                  v318 += v223;
                  ++v219;
                }

                if (v450 % v471 < v63)
                {
                  if (v301 < v307)
                  {
                    if (v317 + 1 >= v6)
                    {
                      v364 = 0;
                      if (v317 + 2 < v6)
                      {
                        goto LABEL_476;
                      }

LABEL_474:
                      v365 = 0;
                    }

                    else
                    {
                      v364 = v318[1];
                      if (v317 + 2 >= v6)
                      {
                        goto LABEL_474;
                      }

LABEL_476:
                      v365 = v318[2];
                    }

                    v338.i32[0] = *v318;
                    v338.i32[1] = v364;
                    v338.i32[2] = v365;
                    result = v399;
                  }

                  v318 += v223;
                  ++v219;
                }

                v342 = 0uLL;
                v337 = 0uLL;
                if (v447 % v471 < v63)
                {
                  if (v302 < v307)
                  {
                    if (v317 + 1 >= v6)
                    {
                      v366 = 0;
                      if (v317 + 2 < v6)
                      {
                        goto LABEL_485;
                      }

LABEL_483:
                      v367 = 0;
                    }

                    else
                    {
                      v366 = v318[1];
                      if (v317 + 2 >= v6)
                      {
                        goto LABEL_483;
                      }

LABEL_485:
                      v367 = v318[2];
                    }

                    v337.i32[0] = *v318;
                    v337.i32[1] = v366;
                    v337.i32[2] = v367;
                    result = v399;
                  }

                  v318 += v223;
                  ++v219;
                }

                if (v442 % v471 < v63)
                {
                  if (v303 < v307)
                  {
                    if (v317 + 1 >= v6)
                    {
                      v368 = 0;
                      if (v317 + 2 < v6)
                      {
                        goto LABEL_494;
                      }

LABEL_492:
                      v369 = 0;
                    }

                    else
                    {
                      v368 = v318[1];
                      if (v317 + 2 >= v6)
                      {
                        goto LABEL_492;
                      }

LABEL_494:
                      v369 = v318[2];
                    }

                    v342.i32[0] = *v318;
                    v342.i32[1] = v368;
                    v342.i32[2] = v369;
                  }

                  v318 += v223;
                  ++v219;
                }

                v312 = 0uLL;
                v341 = 0uLL;
                if (v439 % v471 < v63)
                {
                  if (v304 < v307)
                  {
                    if (v317 + 1 >= v6)
                    {
                      v370 = 0;
                      if (v317 + 2 < v6)
                      {
                        goto LABEL_503;
                      }

LABEL_501:
                      v371 = 0;
                    }

                    else
                    {
                      v370 = v318[1];
                      if (v317 + 2 >= v6)
                      {
                        goto LABEL_501;
                      }

LABEL_503:
                      v371 = v318[2];
                    }

                    v341.i32[0] = *v318;
                    v341.i32[1] = v370;
                    v341.i32[2] = v371;
                  }

                  v318 += v223;
                  ++v219;
                }

                if (v436 % v471 >= v63)
                {
                  goto LABEL_339;
                }

                if (v305 < v307)
                {
                  if (v317 + 1 >= v6)
                  {
                    v372 = 0;
                    if (v317 + 2 < v6)
                    {
                      goto LABEL_512;
                    }

LABEL_510:
                    v373 = 0;
                  }

                  else
                  {
                    v372 = v318[1];
                    if (v317 + 2 >= v6)
                    {
                      goto LABEL_510;
                    }

LABEL_512:
                    v373 = v318[2];
                  }

                  v312.i32[0] = *v318;
                  v312.i32[1] = v372;
                  v312.i32[2] = v373;
                }

                ++v219;
                goto LABEL_339;
              }

LABEL_346:
              v322 = (v306 + v309);
              if (v465 == 1)
              {
                v323 = 0uLL;
                v324 = 0uLL;
                if (v462 < v307)
                {
                  v324 = *(v431 + v309);
                  if (v459 < v307)
                  {
                    goto LABEL_359;
                  }

LABEL_349:
                  v325 = 0uLL;
                  v326 = 0uLL;
                  if (v301 >= v307)
                  {
                    goto LABEL_350;
                  }

LABEL_360:
                  v326 = *(v425 + v309);
                  if (v302 < v307)
                  {
                    goto LABEL_361;
                  }

LABEL_351:
                  v327 = 0uLL;
                  v328 = 0uLL;
                  if (v303 >= v307)
                  {
                    goto LABEL_352;
                  }

LABEL_362:
                  v328 = *(v419 + v309);
                  if (v304 < v307)
                  {
                    goto LABEL_363;
                  }

LABEL_353:
                  v329 = 0uLL;
                  if (v305 < v307)
                  {
LABEL_364:
                    v329 = *(v413 + v309);
                  }
                }

                else
                {
                  if (v459 >= v307)
                  {
                    goto LABEL_349;
                  }

LABEL_359:
                  v323 = *(v428 + v309);
                  v325 = 0uLL;
                  v326 = 0uLL;
                  if (v301 < v307)
                  {
                    goto LABEL_360;
                  }

LABEL_350:
                  if (v302 >= v307)
                  {
                    goto LABEL_351;
                  }

LABEL_361:
                  v325 = *(v422 + v309);
                  v327 = 0uLL;
                  v328 = 0uLL;
                  if (v303 < v307)
                  {
                    goto LABEL_362;
                  }

LABEL_352:
                  if (v304 >= v307)
                  {
                    goto LABEL_353;
                  }

LABEL_363:
                  v327 = *(v416 + v309);
                  v329 = 0uLL;
                  if (v305 < v307)
                  {
                    goto LABEL_364;
                  }
                }

                v319 = *v322;
                v219 = 8;
LABEL_345:
                *&v320 = vzip1q_s32(v319, v324).u64[0];
                *(&v320 + 1) = vextq_s8(*&v323, vzip1q_s32(v323, v326), 8uLL).i64[1];
                a5 = vextq_s8(v327, vzip1q_s32(v327, v329), 8uLL);
                *&v321 = vzip1q_s32(v325, v328).u64[0];
                *(&v321 + 1) = a5.i64[1];
                *v316 = v320;
                v316[1] = v321;
                v316 = (v316 + v220);
                ++v300;
                v309 += 4;
                if (!--v315)
                {
                  v318 = (v306 + v309);
                  v317 = v6 - 3;
                  v300 = v407;
                  if (v444 < v6)
                  {
                    goto LABEL_394;
                  }

LABEL_340:
                  ++v308;
                  v310 = v410 + 2;
                  v300 += v6;
                  v225 = v6 - 3;
                  v309 = v409 + 4 * v6;
                  if (v308 != v472)
                  {
                    continue;
                  }

                  ++v299;
                  v231 = &v396[v405];
                  v300 = &v390[v403];
                  v298 = v393 + v401;
                  if (v391 + 1 == v469)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_335;
                }

                goto LABEL_346;
              }

              break;
            }

            v324 = 0uLL;
            if (result % v471 >= v63)
            {
              v219 = 0;
              v319 = 0uLL;
              if (v456 % v471 >= v63)
              {
LABEL_369:
                v326 = 0uLL;
                v323 = 0uLL;
                if (v453 % v471 < v63)
                {
                  if (v459 < v307)
                  {
                    v323 = *v322;
                  }

                  v322 = (v322 + 4 * v468);
                  ++v219;
                }

                if (v450 % v471 < v63)
                {
                  if (v301 < v307)
                  {
                    v326 = *v322;
                  }

                  v322 = (v322 + 4 * v468);
                  ++v219;
                }

                v328 = 0uLL;
                v325 = 0uLL;
                if (v447 % v471 < v63)
                {
                  if (v302 < v307)
                  {
                    v325 = *v322;
                  }

                  v322 = (v322 + 4 * v468);
                  ++v219;
                }

                if (v442 % v471 < v63)
                {
                  if (v303 < v307)
                  {
                    v328 = *v322;
                  }

                  v322 = (v322 + 4 * v468);
                  ++v219;
                }

                v329 = 0uLL;
                v327 = 0uLL;
                if (v439 % v471 < v63)
                {
                  if (v304 < v307)
                  {
                    v327 = *v322;
                  }

                  v322 = (v322 + 4 * v468);
                  ++v219;
                }

                if (v436 % v471 < v63)
                {
                  if (v305 < v307)
                  {
                    v329 = *v322;
                  }

                  ++v219;
                }

                goto LABEL_345;
              }
            }

            else
            {
              v319 = *v322;
              v322 = &v300[v468];
              v219 = 1;
              if (v456 % v471 >= v63)
              {
                goto LABEL_369;
              }
            }

            if (v462 < v307)
            {
              v324 = *v322;
            }

            v322 = (v322 + 4 * v468);
            ++v219;
            goto LABEL_369;
          }
        }

LABEL_221:
        v218 = v384 + 1;
        v5 = (v5 + 4 * v381);
        a2 = (v387 + 4 * v472 * v397 * v469 * v6);
        v227 = &v383[v382];
        v226 = 4 * v6;
        v228 = v465;
        if (v384 + 1 == v388)
        {
          return result;
        }

        goto LABEL_222;
      }
    }

    v219 = 0;
    v265 = 0uLL;
    v266 = v255;
    if (v258 >= v63)
    {
      goto LABEL_247;
    }

LABEL_246:
    v264 = *v266;
    v266 = (v266 + 4 * v223);
    ++v219;
    goto LABEL_247;
  }

  if (!v7)
  {
    if (!v388)
    {
      return result;
    }

    v189 = 0;
    v190 = v6 == 0;
    if (!v469)
    {
      v190 = 1;
    }

    v191 = v472 == 0;
    if (!v472)
    {
      v190 = 1;
    }

    v192 = v469 * v472;
    if (!v469)
    {
      v191 = 1;
    }

    v193 = v397 * v6 * v192;
    result = v397 * (4 * v192 - 4);
    v194 = a2[1].i64 + result;
    v195 = v192 * v397;
    v196 = 4 * v195 * v6;
    v197 = 4 * v195;
    v198 = result + 12;
    while (1)
    {
      if (v397 < 8)
      {
        v209 = 0;
        v201 = a2;
        if (!v6)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v190)
        {
          goto LABEL_180;
        }

        v199 = 0;
        v200 = v194;
        v201 = a2;
        do
        {
          v202 = 0;
          v203 = v200;
          do
          {
            v204 = 0;
            v205 = v203;
            do
            {
              v206 = v205;
              v207 = v472;
              v208 = v5;
              do
              {
                v5 = v208 + 2;
                v208->i32[0] = *(v206 - 4);
                v208->i32[1] = *(v206 - 3);
                v208->i32[2] = *(v206 - 2);
                v208->i32[3] = *(v206 - 1);
                v208[1].i32[0] = *v206;
                v208[1].i32[1] = v206[1];
                v208[1].i32[2] = v206[2];
                v208[1].i32[3] = v206[3];
                v206 -= v397;
                v208 += 2;
                --v207;
              }

              while (v207);
              ++v204;
              v205 -= v472 * v397;
              result = v469;
            }

            while (v204 != v469);
            ++v202;
            v203 = (v203 + v197);
          }

          while (v202 != v6);
          v199 += 8;
          v201 += 2;
          v200 += 32;
        }

        while (v199 < v397 - 7);
        v209 = v397 & 0xFFFFFFFFFFFFFFF8;
        if (!v6)
        {
          goto LABEL_180;
        }
      }

      result = v397;
      v210 = __OFSUB__(v397, v209);
      v211 = v397 - v209;
      if (!((v211 < 0) ^ v210 | (v211 == 0)) && !v191)
      {
        v212 = 0;
        v213 = &v201->i8[v198];
        do
        {
          v214 = 0;
          v215 = v213;
          do
          {
            v216 = v472;
            v217 = v215;
            do
            {
              if (v211 <= 3)
              {
                switch(v211)
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
                if (v211 <= 5)
                {
                  if (v211 != 4)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_203;
                }

                if (v211 == 6)
                {
                  goto LABEL_201;
                }

                if (v211 == 7)
                {
                  v5[1].i32[2] = *(v217 + 3);
LABEL_201:
                  v5[1].i32[1] = *(v217 + 2);
LABEL_202:
                  v5[1].i32[0] = *(v217 + 1);
LABEL_203:
                  v5->i32[3] = *v217;
LABEL_204:
                  v5->i32[2] = *(v217 - 1);
LABEL_205:
                  v5->i32[1] = *(v217 - 2);
LABEL_206:
                  v5->i32[0] = *(v217 - 3);
                }
              }

              v5 += 2;
              v217 -= 4 * v397;
              --v216;
            }

            while (v216);
            ++v214;
            v215 -= 4 * v472 * v397;
            result = v469;
          }

          while (v214 != v469);
          ++v212;
          v213 += v197;
        }

        while (v212 != v6);
      }

LABEL_180:
      ++v189;
      a2 = (a2 + 4 * v193);
      v194 += v196;
      if (v189 == v388)
      {
        return result;
      }
    }
  }

  if (v388)
  {
    v8 = 0;
    v9 = v6 == 0;
    if (!v469)
    {
      v9 = 1;
    }

    v10 = v472 == 0;
    if (!v472)
    {
      v9 = 1;
    }

    v420 = v9;
    v11 = v469 * v472;
    if (!v469)
    {
      v10 = 1;
    }

    v412 = v10;
    v12 = -v472;
    v443 = 32 * v11;
    v13 = 4 * v11 * v397;
    v14 = -4 * v472;
    v15 = 4 * v11 * v397 * v6;
    v406 = 28 * v11 - 4;
    v16 = a2->i64 + v406;
    v17 = v397 * v6 * v11;
    v18 = &a2->i32[6 * v11 - 1];
    v402 = 20 * v11 - 4;
    v404 = 24 * v11 - 4;
    v19 = a2->i64 + v402;
    v20 = &a2[v11 - 1].i32[3];
    result = &a2[2 * v11 - 1].u64[1] + 4;
    v398 = 12 * v11 - 4;
    v400 = 16 * v11 - 4;
    v21 = a2->i64 + v398;
    v22 = &a2->i32[2 * v11 - 1];
    v392 = 4 * v11 - 4;
    v394 = 8 * v11 - 4;
    v23 = a2->i64 + v392;
    v411 = v17;
    v408 = v15;
    do
    {
      v437 = v18;
      v440 = v16;
      v432 = v20;
      v434 = v19;
      v426 = v22;
      v429 = v21;
      v423 = v23;
      if (v397 < 8)
      {
        v42 = 0;
        v27 = a2;
        v24 = a2;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v420)
        {
          v24 = a2;
          goto LABEL_12;
        }

        v414 = result;
        v417 = v8;
        v25 = 0;
        v26 = v18;
        v385 = a2;
        v27 = a2;
        do
        {
          v470 = v25;
          v473 = v27;
          v28 = 0;
          v463 = v22;
          v466 = v23;
          v457 = v20;
          v460 = v21;
          v451 = v26;
          v454 = v19;
          v445 = result;
          v448 = v16;
          v29 = result;
          do
          {
            v30 = 0;
            v31 = v23;
            v32 = v22;
            v33 = v21;
            v34 = v20;
            v35 = v19;
            v36 = v26;
            v37 = v16;
            v38 = v29;
            do
            {
              v39 = 0;
              v40 = v5;
              do
              {
                v5 = v40 + 2;
                LODWORD(v41) = *(v31 + 4 * v39);
                DWORD1(v41) = v32[v39];
                DWORD2(v41) = *(v33 + 4 * v39);
                HIDWORD(v41) = v34[v39];
                *v40 = v41;
                LODWORD(v41) = *(v35 + 4 * v39);
                DWORD1(v41) = v36[v39];
                DWORD2(v41) = *(v37 + 4 * v39);
                HIDWORD(v41) = *(v38 + 4 * v39);
                v40[1] = v41;
                --v39;
                v40 += 2;
              }

              while (v12 != v39);
              ++v30;
              v38 += v14;
              v37 += v14;
              v36 = (v36 + v14);
              v35 += v14;
              v34 = (v34 + v14);
              v33 += v14;
              v32 = (v32 + v14);
              v31 += v14;
            }

            while (v30 != v469);
            ++v28;
            v29 += v13;
            v16 += v13;
            v26 = (v26 + v13);
            v19 += v13;
            v20 = (v20 + v13);
            v21 += v13;
            v22 = (v22 + v13);
            v23 += v13;
          }

          while (v28 != v6);
          v25 += 8;
          v27 = &v473[v443 / 0x10];
          result = v445 + v443;
          v16 = v448 + v443;
          v26 = &v451[v443 / 4];
          v19 = v454 + v443;
          v20 = &v457[v443 / 4];
          v21 = v460 + v443;
          v22 = &v463[v443 / 4];
          v23 = v466 + v443;
        }

        while (v470 + 8 < v397 - 7);
        v42 = v397 & 0xFFFFFFFFFFFFFFF8;
        v17 = v411;
        result = v414;
        v8 = v417;
        v15 = v408;
        v24 = v385;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      v43 = v397 - v42;
      if (v397 > v42 && !v412)
      {
        v44 = 0;
        v45 = v27->i64 + v406;
        v46 = v27->i64 + v404;
        v47 = v27->i64 + v402;
        v48 = v27->i64 + v400;
        v49 = v27->i64 + v398;
        v50 = v27->i64 + v394;
        v51 = v27->i64 + v392;
        do
        {
          v52 = 0;
          v53 = v51;
          v54 = v50;
          v55 = v49;
          v56 = v48;
          v57 = v47;
          v58 = v46;
          v59 = v45;
          do
          {
            v60 = 0;
            do
            {
              if (v43 <= 3)
              {
                switch(v43)
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
                if (v43 <= 5)
                {
                  if (v43 != 4)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_35;
                }

                if (v43 == 6)
                {
                  goto LABEL_33;
                }

                if (v43 == 7)
                {
                  v5[1].i32[2] = *(v59 + 4 * v60);
LABEL_33:
                  v5[1].i32[1] = *(v58 + 4 * v60);
LABEL_34:
                  v5[1].i32[0] = *(v57 + 4 * v60);
LABEL_35:
                  v5->i32[3] = *(v56 + 4 * v60);
LABEL_36:
                  v5->i32[2] = *(v55 + 4 * v60);
LABEL_37:
                  v5->i32[1] = *(v54 + 4 * v60);
LABEL_38:
                  v5->i32[0] = *(v53 + 4 * v60);
                }
              }

              v5 += 2;
              --v60;
            }

            while (v12 != v60);
            ++v52;
            v59 += v14;
            v58 += v14;
            v57 += v14;
            v56 += v14;
            v55 += v14;
            v54 += v14;
            v53 += v14;
          }

          while (v52 != v469);
          ++v44;
          v45 += v13;
          v46 += v13;
          v47 += v13;
          v48 += v13;
          v49 += v13;
          v50 += v13;
          v51 += v13;
        }

        while (v44 != v6);
      }

LABEL_12:
      a2 = (v24 + 4 * v17);
      ++v8;
      result += v15;
      v16 = v440 + v15;
      v18 = (v437 + v15);
      v19 = v434 + v15;
      v20 = (v432 + v15);
      v21 = v429 + v15;
      v22 = (v426 + v15);
      v23 = v423 + v15;
    }

    while (v8 != v388);
  }

  return result;
}

_DWORD *sub_239CB3378(_DWORD *result, unsigned __int32 *a2, uint64_t a3, double a4, int32x4_t a5)
{
  v544 = a2;
  v5 = *(a3 + 8);
  v560 = *(a3 + 32);
  v531 = *(a3 + 48);
  v633 = *(a3 + 56);
  v628 = *(a3 + 64);
  v6 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v102 = *(a3 + 16);
    v103 = *(a3 + 40);
    v105 = *(a3 + 72);
    v104 = *(a3 + 80);
    v623 = v104;
    if (v6)
    {
      if (v531 && v5 && v633 && v560 && v628)
      {
        v106 = 0;
        v107 = v628 * v102;
        v108 = (v628 * v633) << 6;
        v109 = v628 * v5 * v633;
        v110 = v633 << 6;
        v626 = v633 * v103 * v107;
        v111 = 8 * v628 * v633;
        v112 = 32 * v633 * v107;
        v113 = 4 * v628 * v633;
        do
        {
          v114 = 0;
          v631 = v106;
          v115 = v106 * v560;
          v116 = v544;
          v117 = result;
          do
          {
            v118 = v114 + v115;
            if ((v114 + v115) % v104 < v105)
            {
              v119 = 0;
              v120 = v116;
              v121 = v117;
              do
              {
                v122 = 0;
                v123 = v120;
                v124 = v121;
                do
                {
                  v125 = 0;
                  v126 = 0;
                  v127 = 2;
                  v128 = v123;
                  v129 = v124;
                  do
                  {
                    if (v5 >= v127)
                    {
                      v130 = v127;
                    }

                    else
                    {
                      v130 = v5;
                    }

                    v131 = v130 + v125;
                    v132 = v128;
                    v133 = v129;
                    do
                    {
                      *v133 = *v132;
                      v133 += 8;
                      v132 = (v132 + v113);
                      --v131;
                    }

                    while (v131);
                    v126 += 2;
                    v129 = (v129 + v108);
                    v128 = (v128 + v111);
                    v127 += 2;
                    v125 -= 2;
                  }

                  while (v126 < v5);
                  ++v122;
                  v124 += 16;
                  ++v123;
                }

                while (v122 != v633);
                ++v119;
                v121 = (v121 + v110);
                v120 += v633;
              }

              while (v119 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 1) < v560 && (v118 + 1) % v104 < v105)
            {
              v134 = 0;
              v135 = (v117 + 1);
              v136 = v116;
              do
              {
                v137 = 0;
                v138 = v136;
                v139 = v135;
                do
                {
                  v140 = 0;
                  v141 = 0;
                  v142 = 2;
                  v143 = v138;
                  v144 = v139;
                  do
                  {
                    v145 = 0;
                    if (v5 >= v142)
                    {
                      v146 = v142;
                    }

                    else
                    {
                      v146 = v5;
                    }

                    v147 = v146 + v140;
                    v148 = v143;
                    do
                    {
                      *&v144[v145] = *v148;
                      v148 = (v148 + v113);
                      v145 += 32;
                      --v147;
                    }

                    while (v147);
                    v141 += 2;
                    v144 += v108;
                    v143 = (v143 + v111);
                    v142 += 2;
                    v140 -= 2;
                  }

                  while (v141 < v5);
                  ++v137;
                  v139 += 64;
                  ++v138;
                }

                while (v137 != v633);
                ++v134;
                v135 += v110;
                v136 += v633;
              }

              while (v134 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 2) < v560 && (v118 + 2) % v104 < v105)
            {
              v149 = 0;
              v150 = (v117 + 2);
              v151 = v116;
              do
              {
                v152 = 0;
                v153 = v151;
                v154 = v150;
                do
                {
                  v155 = 0;
                  v156 = 0;
                  v157 = 2;
                  v158 = v153;
                  v159 = v154;
                  do
                  {
                    v160 = 0;
                    if (v5 >= v157)
                    {
                      v161 = v157;
                    }

                    else
                    {
                      v161 = v5;
                    }

                    v162 = v161 + v155;
                    v163 = v158;
                    do
                    {
                      *&v159[v160] = *v163;
                      v163 = (v163 + v113);
                      v160 += 32;
                      --v162;
                    }

                    while (v162);
                    v156 += 2;
                    v159 += v108;
                    v158 = (v158 + v111);
                    v157 += 2;
                    v155 -= 2;
                  }

                  while (v156 < v5);
                  ++v152;
                  v154 += 64;
                  ++v153;
                }

                while (v152 != v633);
                ++v149;
                v150 += v110;
                v151 += v633;
              }

              while (v149 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 3) < v560 && (v118 + 3) % v104 < v105)
            {
              v164 = 0;
              v165 = (v117 + 3);
              v166 = v116;
              do
              {
                v167 = 0;
                v168 = v166;
                v169 = v165;
                do
                {
                  v170 = 0;
                  v171 = 0;
                  v172 = 2;
                  v173 = v168;
                  v174 = v169;
                  do
                  {
                    v175 = 0;
                    if (v5 >= v172)
                    {
                      v176 = v172;
                    }

                    else
                    {
                      v176 = v5;
                    }

                    v177 = v176 + v170;
                    v178 = v173;
                    do
                    {
                      *&v174[v175] = *v178;
                      v178 = (v178 + v113);
                      v175 += 32;
                      --v177;
                    }

                    while (v177);
                    v171 += 2;
                    v174 += v108;
                    v173 = (v173 + v111);
                    v172 += 2;
                    v170 -= 2;
                  }

                  while (v171 < v5);
                  ++v167;
                  v169 += 64;
                  ++v168;
                }

                while (v167 != v633);
                ++v164;
                v165 += v110;
                v166 += v633;
              }

              while (v164 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 4) < v560 && (v118 + 4) % v104 < v105)
            {
              v179 = 0;
              v180 = (v117 + 4);
              v181 = v116;
              do
              {
                v182 = 0;
                v183 = v181;
                v184 = v180;
                do
                {
                  v185 = 0;
                  v186 = 0;
                  v187 = 2;
                  v188 = v183;
                  v189 = v184;
                  do
                  {
                    v190 = 0;
                    if (v5 >= v187)
                    {
                      v191 = v187;
                    }

                    else
                    {
                      v191 = v5;
                    }

                    v192 = v191 + v185;
                    v193 = v188;
                    do
                    {
                      *&v189[v190] = *v193;
                      v193 = (v193 + v113);
                      v190 += 32;
                      --v192;
                    }

                    while (v192);
                    v186 += 2;
                    v189 += v108;
                    v188 = (v188 + v111);
                    v187 += 2;
                    v185 -= 2;
                  }

                  while (v186 < v5);
                  ++v182;
                  v184 += 64;
                  ++v183;
                }

                while (v182 != v633);
                ++v179;
                v180 += v110;
                v181 += v633;
              }

              while (v179 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 5) < v560 && (v118 + 5) % v104 < v105)
            {
              v194 = 0;
              v195 = (v117 + 5);
              v196 = v116;
              do
              {
                v197 = 0;
                v198 = v196;
                v199 = v195;
                do
                {
                  v200 = 0;
                  v201 = 0;
                  v202 = 2;
                  v203 = v198;
                  v204 = v199;
                  do
                  {
                    v205 = 0;
                    if (v5 >= v202)
                    {
                      v206 = v202;
                    }

                    else
                    {
                      v206 = v5;
                    }

                    v207 = v206 + v200;
                    v208 = v203;
                    do
                    {
                      *&v204[v205] = *v208;
                      v208 = (v208 + v113);
                      v205 += 32;
                      --v207;
                    }

                    while (v207);
                    v201 += 2;
                    v204 += v108;
                    v203 = (v203 + v111);
                    v202 += 2;
                    v200 -= 2;
                  }

                  while (v201 < v5);
                  ++v197;
                  v199 += 64;
                  ++v198;
                }

                while (v197 != v633);
                ++v194;
                v195 += v110;
                v196 += v633;
              }

              while (v194 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 6) < v560 && (v118 + 6) % v104 < v105)
            {
              v209 = 0;
              v210 = (v117 + 6);
              v211 = v116;
              do
              {
                v212 = 0;
                v213 = v211;
                v214 = v210;
                do
                {
                  v215 = 0;
                  v216 = 0;
                  v217 = 2;
                  v218 = v213;
                  v219 = v214;
                  do
                  {
                    v220 = 0;
                    if (v5 >= v217)
                    {
                      v221 = v217;
                    }

                    else
                    {
                      v221 = v5;
                    }

                    v222 = v221 + v215;
                    v223 = v218;
                    do
                    {
                      *&v219[v220] = *v223;
                      v223 = (v223 + v113);
                      v220 += 32;
                      --v222;
                    }

                    while (v222);
                    v216 += 2;
                    v219 += v108;
                    v218 = (v218 + v111);
                    v217 += 2;
                    v215 -= 2;
                  }

                  while (v216 < v5);
                  ++v212;
                  v214 += 64;
                  ++v213;
                }

                while (v212 != v633);
                ++v209;
                v210 += v110;
                v211 += v633;
              }

              while (v209 != v628);
              v116 += v109;
              v104 = v623;
            }

            if ((v114 | 7) < v560 && (v118 + 7) % v104 < v105)
            {
              v224 = 0;
              v225 = (v117 + 7);
              v226 = v116;
              do
              {
                v227 = 0;
                v228 = v226;
                v229 = v225;
                do
                {
                  v230 = 0;
                  v231 = 0;
                  v232 = 2;
                  v233 = v228;
                  v234 = v229;
                  do
                  {
                    v235 = 0;
                    if (v5 >= v232)
                    {
                      v236 = v232;
                    }

                    else
                    {
                      v236 = v5;
                    }

                    v237 = v236 + v230;
                    v238 = v233;
                    do
                    {
                      *&v234[v235] = *v238;
                      v238 = (v238 + v113);
                      v235 += 32;
                      --v237;
                    }

                    while (v237);
                    v231 += 2;
                    v234 += v108;
                    v233 = (v233 + v111);
                    v232 += 2;
                    v230 -= 2;
                  }

                  while (v231 < v5);
                  ++v227;
                  v229 += 64;
                  ++v228;
                }

                while (v227 != v633);
                ++v224;
                v225 += v110;
                v226 += v633;
              }

              while (v224 != v628);
              v116 += v109;
              v104 = v623;
            }

            v114 += 8;
            v117 = (v117 + v112);
          }

          while (v114 < v560);
          ++v106;
          result += v626;
          v544 += v633 * v560 * v628 * v5;
        }

        while (v631 + 1 != v531);
      }

      return result;
    }

    if (!v531)
    {
      return result;
    }

    v283 = 0;
    v284 = 0;
    v632 = (v628 * v633) << 6;
    v557 = v633 << 6;
    v285 = v633 * v628 * v102;
    v541 = 2 * v285;
    v286 = v628 * v633 * v102;
    v526 = 4 * v103 * v286;
    v287 = *(a3 + 80);
    v288 = v628 * v5 * v633;
    v289 = v628 * v633 * v5;
    v290 = v5 - 3;
    v524 = v285 * v103;
    v555 = v633 * v5;
    v553 = 4 * v633 * v5;
    v618 = 4 * v5;
    v615 = (v5 & 0xFFFFFFFFFFFFFFFELL) - 2;
    v291 = result + v286 * (32 * ((v560 - 8) >> 3) + 32);
    v520 = 3 * v289;
    v516 = 6 * v289;
    v518 = 5 * v289;
    v620 = *(a3 + 88);
    v576 = v289;
    v514 = 7 * v289;
    v627 = v289;
    v510 = 4 * v289;
    v512 = 2 * v289;
LABEL_314:
    v292 = v560;
    v528 = v291;
    v530 = v283;
    if (v560 < 8)
    {
      v394 = 0;
      v295 = result;
      v395 = v544;
      if (v560 > 0)
      {
        goto LABEL_437;
      }

      goto LABEL_313;
    }

    if (!v628)
    {
      goto LABEL_313;
    }

    v562 = v283 * v560;
    if (!v633)
    {
      goto LABEL_313;
    }

    v293 = 0;
    v294 = v544;
    v295 = result;
LABEL_319:
    v296 = 0;
    v297 = 0;
    v565 = v293;
    v607 = v293 + v562 + 1;
    v604 = v293 + v562 + 2;
    v598 = v293 + v562 + 4;
    v601 = v293 + v562 + 3;
    v592 = v293 + v562 + 6;
    v595 = v293 + v562 + 5;
    v611 = v293 + v562;
    v589 = v293 + v562 + 7;
    v298 = &v294->i32[7 * v288];
    v299 = &v294->i32[6 * v288];
    v300 = &v294->i32[5 * v288];
    v301 = &v294[v288];
    v302 = &v294->i32[3 * v288];
    v303 = &v294->i32[2 * v288];
    v304 = &v294->i32[v288];
    v578 = v294;
    v549 = v295;
    v305 = v295;
LABEL_321:
    v572 = v297;
    v574 = v296;
    v306 = 0;
    v567 = v305;
    v570 = v294;
LABEL_326:
    if (v5 < 4)
    {
      v336 = 0;
      v324 = v305;
      v335 = v294;
      if (v5 <= 0)
      {
        goto LABEL_325;
      }

      goto LABEL_357;
    }

    if (v620 == 1)
    {
      v322 = 0;
      v323 = v296;
      v324 = v305;
      do
      {
        v325 = *(v578 + v323);
        v326 = *(v304 + v323);
        v327 = *(v303 + v323);
        v328 = *(v301 + v323);
        v329 = *(v300 + v323);
        v330 = *(v299 + v323);
        v331 = vzip1q_s32(v327, *(v302 + v323));
        v332.i64[0] = vtrn2q_s32(v325, v326).u64[0];
        v332.i64[1] = v331.i64[1];
        v333 = vzip1q_s32(v330, *(v298 + v323));
        v334.i64[0] = vtrn2q_s32(v328, v329).u64[0];
        v334.i64[1] = v333.i64[1];
        v325.i64[0] = vzip1q_s32(v325, v326).u64[0];
        v325.i64[1] = vextq_s8(*&v327, v331, 8uLL).i64[1];
        a5.i64[0] = vzip1q_s32(v328, v329).u64[0];
        a5.i64[1] = vextq_s8(*&v330, v333, 8uLL).i64[1];
        *v324 = v325;
        v324[1] = a5;
        v324[2] = v332;
        v324[3] = v334;
        v322 += 2;
        v324 = (v324 + v632);
        v323 += 8;
      }

      while (v322 < v290);
      v335 = (v578 + v323);
      v284 = 8;
      v336 = (v5 & 0xFFFFFFFFFFFFFFFELL) - 2;
      if (v615 >= v5)
      {
        goto LABEL_325;
      }

LABEL_357:
      if (v620 == 1)
      {
        if ((v336 | 1) < v5)
        {
          v586 = v335->u32[1];
          v307 = &v335->i32[v576];
          v582 = v335->u32[v576 + 1];
          v308 = &v335->i32[v576 + v576];
          v584 = v308[1];
          v309 = &v308[v576];
          v580 = v308[v576 + 1];
          v310 = &v308[v576 + v576];
          v311 = v310[1];
          v312 = &v310[v576];
          v313 = v310[v576 + 1];
          v314 = &v310[v576 + v576];
          v315 = v314[1];
          v316 = &v314[v576];
          v317 = v314[v576 + 1];
        }

        else
        {
          v315 = 0;
          v311 = 0;
          v584 = 0;
          v586 = 0;
          v582 = 0;
          v580 = 0;
          v313 = 0;
          v317 = 0;
          v307 = &v335->i32[v576];
          v308 = &v335->i32[v576 + v576];
          v309 = &v308[v576];
          v310 = &v308[v576 + v576];
          v312 = &v310[v576];
          v314 = &v310[v576 + v576];
          v316 = &v314[v576];
        }

        v318.i64[0] = __PAIR64__(v313, v311);
        v318.i64[1] = __PAIR64__(v317, v315);
        v319.i64[0] = __PAIR64__(v582, v586);
        v319.i64[1] = __PAIR64__(v580, v584);
        v320.i32[0] = v335->i32[0];
        v320.i32[1] = *v307;
        v320.i32[2] = *v308;
        v320.i32[3] = *v309;
        v321.i32[0] = *v310;
        v321.i32[1] = *v312;
        v321.i32[2] = *v314;
        v321.i32[3] = *v316;
        v284 = 8;
        v287 = v623;
        goto LABEL_324;
      }

      v360 = 0uLL;
      if (v611 % v287 >= v105)
      {
        v284 = 0;
        v364 = 0uLL;
        if (v607 % v287 < v105)
        {
          goto LABEL_375;
        }
      }

      else
      {
        if ((v336 | 1) >= v5)
        {
          v361 = 0;
          if (v336 + 2 < v5)
          {
            goto LABEL_372;
          }

LABEL_363:
          v362 = 0;
          if (v336 + 3 >= v5)
          {
            goto LABEL_364;
          }

LABEL_373:
          v363 = v335->u32[3];
        }

        else
        {
          v361 = v335->i32[1];
          if (v336 + 2 >= v5)
          {
            goto LABEL_363;
          }

LABEL_372:
          v362 = v335->u32[2];
          if (v336 + 3 < v5)
          {
            goto LABEL_373;
          }

LABEL_364:
          v363 = 0;
        }

        v364.i32[0] = v335->i32[0];
        v364.i32[1] = v361;
        v364.i64[1] = __PAIR64__(v363, v362);
        v335 = (v335 + 4 * v627);
        v284 = 1;
        v287 = v623;
        if (v607 % v623 < v105)
        {
LABEL_375:
          if ((v336 | 1) >= v5)
          {
            v369 = 0;
            if (v336 + 2 < v5)
            {
              goto LABEL_389;
            }

LABEL_377:
            v370 = 0;
            if (v336 + 3 >= v5)
            {
              goto LABEL_378;
            }

LABEL_390:
            v371 = v335->u32[3];
          }

          else
          {
            v369 = v335->i32[1];
            if (v336 + 2 >= v5)
            {
              goto LABEL_377;
            }

LABEL_389:
            v370 = v335->u32[2];
            if (v336 + 3 < v5)
            {
              goto LABEL_390;
            }

LABEL_378:
            v371 = 0;
          }

          v360.i32[0] = v335->i32[0];
          v360.i32[1] = v369;
          v360.i64[1] = __PAIR64__(v371, v370);
          v335 = (v335 + 4 * v627);
          ++v284;
          v287 = v623;
          v365 = 0uLL;
          if (v604 % v623 >= v105)
          {
LABEL_392:
            v372 = 0uLL;
            if (v601 % v287 < v105)
            {
LABEL_393:
              if ((v336 | 1) >= v5)
              {
                v377 = 0;
                if (v336 + 2 < v5)
                {
                  goto LABEL_407;
                }

LABEL_395:
                v378 = 0;
                if (v336 + 3 >= v5)
                {
                  goto LABEL_396;
                }

LABEL_408:
                v379 = v335->u32[3];
              }

              else
              {
                v377 = v335->i32[1];
                if (v336 + 2 >= v5)
                {
                  goto LABEL_395;
                }

LABEL_407:
                v378 = v335->u32[2];
                if (v336 + 3 < v5)
                {
                  goto LABEL_408;
                }

LABEL_396:
                v379 = 0;
              }

              v365.i32[0] = v335->i32[0];
              v365.i32[1] = v377;
              v365.i64[1] = __PAIR64__(v379, v378);
              v335 = (v335 + 4 * v627);
              ++v284;
              v287 = v623;
              v373 = 0uLL;
              if (v598 % v623 >= v105)
              {
LABEL_410:
                v380 = 0uLL;
                if (v595 % v287 < v105)
                {
LABEL_411:
                  if ((v336 | 1) >= v5)
                  {
                    v385 = 0;
                    if (v336 + 2 < v5)
                    {
                      goto LABEL_421;
                    }

LABEL_413:
                    v386 = 0;
                    if (v336 + 3 >= v5)
                    {
                      goto LABEL_414;
                    }

LABEL_422:
                    v387 = v335->u32[3];
                  }

                  else
                  {
                    v385 = v335->i32[1];
                    if (v336 + 2 >= v5)
                    {
                      goto LABEL_413;
                    }

LABEL_421:
                    v386 = v335->u32[2];
                    if (v336 + 3 < v5)
                    {
                      goto LABEL_422;
                    }

LABEL_414:
                    v387 = 0;
                  }

                  v373.i32[0] = v335->i32[0];
                  v373.i32[1] = v385;
                  v373.i64[1] = __PAIR64__(v387, v386);
                  v335 = (v335 + 4 * v627);
                  ++v284;
                  v287 = v623;
                  v381 = 0uLL;
                  if (v592 % v623 >= v105)
                  {
LABEL_424:
                    v388 = 0uLL;
                    if (v589 % v287 < v105)
                    {
LABEL_425:
                      if ((v336 | 1) >= v5)
                      {
                        v389 = 0;
                        if (v336 + 2 < v5)
                        {
                          goto LABEL_430;
                        }

LABEL_427:
                        v390 = 0;
                        if (v336 + 3 >= v5)
                        {
                          goto LABEL_428;
                        }

LABEL_431:
                        v391 = v335->u32[3];
                      }

                      else
                      {
                        v389 = v335->i32[1];
                        if (v336 + 2 >= v5)
                        {
                          goto LABEL_427;
                        }

LABEL_430:
                        v390 = v335->u32[2];
                        if (v336 + 3 < v5)
                        {
                          goto LABEL_431;
                        }

LABEL_428:
                        v391 = 0;
                      }

                      v381.i32[0] = v335->i32[0];
                      v381.i32[1] = v389;
                      v381.i64[1] = __PAIR64__(v391, v390);
                      ++v284;
                      v287 = v623;
                    }

LABEL_433:
                    v392 = vzip1q_s32(v388, v381);
                    v318.i64[0] = vtrn2q_s32(v380, v373).u64[0];
                    v318.i64[1] = v392.i64[1];
                    v393 = vzip1q_s32(v372, v365);
                    v319.i64[0] = vtrn2q_s32(v364, v360).u64[0];
                    v319.i64[1] = v393.i64[1];
                    v321.i64[0] = vzip1q_s32(v380, v373).u64[0];
                    v321.i64[1] = vextq_s8(*&v388, v392, 8uLL).i64[1];
                    v320.i64[0] = vzip1q_s32(v364, v360).u64[0];
                    a5 = vextq_s8(v372, v393, 8uLL);
                    v320.i64[1] = a5.i64[1];
LABEL_324:
                    *v324 = v320;
                    v324[1] = v321;
                    v324[2] = v319;
                    v324[3] = v318;
                    goto LABEL_325;
                  }

LABEL_402:
                  if ((v336 | 1) >= v5)
                  {
                    v382 = 0;
                    if (v336 + 2 < v5)
                    {
                      goto LABEL_416;
                    }

LABEL_404:
                    v383 = 0;
                    if (v336 + 3 >= v5)
                    {
                      goto LABEL_405;
                    }

LABEL_417:
                    v384 = v335->u32[3];
                  }

                  else
                  {
                    v382 = v335->i32[1];
                    if (v336 + 2 >= v5)
                    {
                      goto LABEL_404;
                    }

LABEL_416:
                    v383 = v335->u32[2];
                    if (v336 + 3 < v5)
                    {
                      goto LABEL_417;
                    }

LABEL_405:
                    v384 = 0;
                  }

                  v388.i32[0] = v335->i32[0];
                  v388.i32[1] = v382;
                  v388.i64[1] = __PAIR64__(v384, v383);
                  v335 = (v335 + 4 * v627);
                  ++v284;
                  v287 = v623;
                  if (v589 % v623 < v105)
                  {
                    goto LABEL_425;
                  }

                  goto LABEL_433;
                }

LABEL_401:
                v381 = 0uLL;
                if (v592 % v287 >= v105)
                {
                  goto LABEL_424;
                }

                goto LABEL_402;
              }

LABEL_384:
              if ((v336 | 1) >= v5)
              {
                v374 = 0;
                if (v336 + 2 < v5)
                {
                  goto LABEL_398;
                }

LABEL_386:
                v375 = 0;
                if (v336 + 3 >= v5)
                {
                  goto LABEL_387;
                }

LABEL_399:
                v376 = v335->u32[3];
              }

              else
              {
                v374 = v335->i32[1];
                if (v336 + 2 >= v5)
                {
                  goto LABEL_386;
                }

LABEL_398:
                v375 = v335->u32[2];
                if (v336 + 3 < v5)
                {
                  goto LABEL_399;
                }

LABEL_387:
                v376 = 0;
              }

              v380.i32[0] = v335->i32[0];
              v380.i32[1] = v374;
              v380.i64[1] = __PAIR64__(v376, v375);
              v335 = (v335 + 4 * v627);
              ++v284;
              v287 = v623;
              if (v595 % v623 < v105)
              {
                goto LABEL_411;
              }

              goto LABEL_401;
            }

LABEL_383:
            v373 = 0uLL;
            if (v598 % v287 >= v105)
            {
              goto LABEL_410;
            }

            goto LABEL_384;
          }

LABEL_367:
          if ((v336 | 1) >= v5)
          {
            v366 = 0;
            if (v336 + 2 < v5)
            {
              goto LABEL_380;
            }

LABEL_369:
            v367 = 0;
            if (v336 + 3 >= v5)
            {
              goto LABEL_370;
            }

LABEL_381:
            v368 = v335->u32[3];
          }

          else
          {
            v366 = v335->i32[1];
            if (v336 + 2 >= v5)
            {
              goto LABEL_369;
            }

LABEL_380:
            v367 = v335->u32[2];
            if (v336 + 3 < v5)
            {
              goto LABEL_381;
            }

LABEL_370:
            v368 = 0;
          }

          v372.i32[0] = v335->i32[0];
          v372.i32[1] = v366;
          v372.i64[1] = __PAIR64__(v368, v367);
          v335 = (v335 + 4 * v627);
          ++v284;
          v287 = v623;
          if (v601 % v623 < v105)
          {
            goto LABEL_393;
          }

          goto LABEL_383;
        }
      }

      v365 = 0uLL;
      if (v604 % v287 >= v105)
      {
        goto LABEL_392;
      }

      goto LABEL_367;
    }

    v337 = 0;
    v338 = v611 % v287;
    v339 = v607 % v287;
    v340 = v604 % v287;
    v341 = v601 % v287;
    v342 = v598 % v287;
    v343 = v595 % v287;
    v344 = v592 % v287;
    v345 = v589 % v287;
    v335 = v294;
    v324 = v305;
    while (1)
    {
      v351 = 0uLL;
      if (v338 >= v105)
      {
        break;
      }

      v352 = *v335;
      v353 = (v335 + 4 * v288);
      v284 = 1;
      if (v339 < v105)
      {
        goto LABEL_340;
      }

LABEL_341:
      v354 = 0uLL;
      if (v340 >= v105)
      {
        v355 = 0uLL;
        if (v341 >= v105)
        {
          goto LABEL_346;
        }

LABEL_345:
        v354 = *v353;
        v353 = (v353 + 4 * v288);
        ++v284;
        goto LABEL_346;
      }

      v355 = *v353;
      v353 = (v353 + 4 * v288);
      ++v284;
      if (v341 < v105)
      {
        goto LABEL_345;
      }

LABEL_346:
      v356 = 0uLL;
      if (v342 >= v105)
      {
        v357 = 0uLL;
        if (v343 >= v105)
        {
          goto LABEL_351;
        }

LABEL_350:
        v356 = *v353;
        v353 = (v353 + 4 * v288);
        ++v284;
        goto LABEL_351;
      }

      v357 = *v353;
      v353 = (v353 + 4 * v288);
      ++v284;
      if (v343 < v105)
      {
        goto LABEL_350;
      }

LABEL_351:
      v358 = 0uLL;
      if (v344 >= v105)
      {
        v359 = 0uLL;
        if (v345 < v105)
        {
LABEL_355:
          v358 = *v353;
          ++v284;
        }
      }

      else
      {
        v359 = *v353;
        v353 = (v353 + 4 * v288);
        ++v284;
        if (v345 < v105)
        {
          goto LABEL_355;
        }
      }

      v346 = vzip1q_s32(v355, v354);
      v347.i64[0] = vtrn2q_s32(v352, v351).u64[0];
      v347.i64[1] = v346.i64[1];
      v348 = vzip1q_s32(v359, v358);
      v349.i64[0] = vtrn2q_s32(v357, v356).u64[0];
      v349.i64[1] = v348.i64[1];
      v350.i64[0] = vzip1q_s32(v352, v351).u64[0];
      v350.i64[1] = vextq_s8(*&v355, v346, 8uLL).i64[1];
      a5.i64[0] = vzip1q_s32(v357, v356).u64[0];
      a5.i64[1] = vextq_s8(*&v359, v348, 8uLL).i64[1];
      *v324 = v350;
      v324[1] = a5;
      v324[2] = v347;
      v324[3] = v349;
      v337 += 2;
      v324 = (v324 + v632);
      v335 = (v335 + 8);
      if (v337 >= v290)
      {
        v336 = (v5 & 0xFFFFFFFFFFFFFFFELL) - 2;
        v287 = v623;
        if (v615 < v5)
        {
          goto LABEL_357;
        }

LABEL_325:
        ++v306;
        v305 += 4;
        v294 = (v294 + 4 * v5);
        v296 += v618;
        if (v306 != v633)
        {
          goto LABEL_326;
        }

        v297 = v572 + 1;
        v305 = (v567 + v557);
        v294 = (v570 + 4 * v555);
        v296 = v574 + v553;
        if (v572 + 1 != v628)
        {
          goto LABEL_321;
        }

        v294 = (v578 + 4 * v284 * v627);
        v293 = v565 + 8;
        v295 = &v549[v541];
        if (v565 + 8 < (v560 - 7))
        {
          goto LABEL_319;
        }

        v395 = v578 + v284 * v627;
        v394 = v560 & 0xFFFFFFFFFFFFFFF8;
        v292 = v560;
        v283 = v530;
        if ((v560 & 0xFFFFFFFFFFFFFFF8) >= v560)
        {
          goto LABEL_313;
        }

LABEL_437:
        if (!v628 || (v559 = v394 + v283 * v292, !v633))
        {
LABEL_313:
          v283 = v530 + 1;
          result += v524;
          v544 += v633 * v560 * v628 * v5;
          v291 = &v528[v526];
          if (v530 + 1 == v531)
          {
            return result;
          }

          goto LABEL_314;
        }

        v396 = 0;
        v397 = 0;
        v605 = v559 + 1;
        v612 = v394 | 1;
        v602 = v559 + 2;
        v608 = v394 | 2;
        v599 = v559 + 3;
        v398 = v394 | 3;
        v596 = v559 + 4;
        v399 = v394 | 4;
        v593 = v559 + 5;
        v400 = v394 | 5;
        v590 = v559 + 6;
        v401 = v394 | 6;
        v587 = v559 + 7;
        v402 = v394 | 7;
        v403 = v395;
        while (2)
        {
          v546 = v397;
          v547 = v396;
          v404 = 0;
          v405 = v396;
          v543 = v403;
          v550 = v295;
          v406 = v295;
          v407 = v559;
LABEL_450:
          v566 = v405;
          v568 = v403;
          v563 = v406;
          if (v5 < 4)
          {
            v433 = 0;
            v434 = v403;
            if (v5 <= 0)
            {
              goto LABEL_449;
            }

LABEL_505:
            if (v620 == 1)
            {
              v435 = v433 | 1;
              if ((v433 | 1) >= v5)
              {
                v436 = 0;
              }

              else
              {
                v436 = v434[1];
              }

              v441 = v433 + 2;
              v442 = v433 + 3;
              v443 = &v434[v288];
              v444 = 0uLL;
              v437 = 0uLL;
              if (v612 >= v292)
              {
                v445 = &v443[v288];
                if (v608 >= v292)
                {
                  goto LABEL_516;
                }

LABEL_541:
                if (v435 >= v5)
                {
                  v460 = 0;
                  if (v441 < v5)
                  {
                    goto LABEL_546;
                  }

LABEL_543:
                  v461 = 0;
                  if (v442 >= v5)
                  {
                    goto LABEL_544;
                  }

LABEL_547:
                  v462 = v445[3];
                }

                else
                {
                  v460 = v445[1];
                  if (v441 >= v5)
                  {
                    goto LABEL_543;
                  }

LABEL_546:
                  v461 = v445[2];
                  if (v442 < v5)
                  {
                    goto LABEL_547;
                  }

LABEL_544:
                  v462 = 0;
                }

                v444.i32[0] = *v445;
                v444.i32[1] = v460;
                v444.i64[1] = __PAIR64__(v462, v461);
                v407 = v559;
                v292 = v560;
                a5.i32[0] = *v434;
                v446 = &v445[v288];
                v447 = 0uLL;
                v448 = 0uLL;
                if (v398 < v560)
                {
LABEL_549:
                  if (v435 >= v5)
                  {
                    v463 = 0;
                    if (v441 < v5)
                    {
                      goto LABEL_554;
                    }

LABEL_551:
                    v464 = 0;
                    if (v442 >= v5)
                    {
                      goto LABEL_552;
                    }

LABEL_555:
                    v465 = v446[3];
                  }

                  else
                  {
                    v463 = v446[1];
                    if (v441 >= v5)
                    {
                      goto LABEL_551;
                    }

LABEL_554:
                    v464 = v446[2];
                    if (v442 < v5)
                    {
                      goto LABEL_555;
                    }

LABEL_552:
                    v465 = 0;
                  }

                  v448.i32[0] = *v446;
                  v448.i32[1] = v463;
                  v448.i64[1] = __PAIR64__(v465, v464);
                  v407 = v559;
                  v292 = v560;
                  v449 = &v446[v288];
                  if (v399 < v560)
                  {
LABEL_557:
                    if (v435 >= v5)
                    {
                      v466 = 0;
                      if (v441 < v5)
                      {
                        goto LABEL_562;
                      }

LABEL_559:
                      v467 = 0;
                      if (v442 >= v5)
                      {
                        goto LABEL_560;
                      }

LABEL_563:
                      v468 = v449[3];
                    }

                    else
                    {
                      v466 = v449[1];
                      if (v441 >= v5)
                      {
                        goto LABEL_559;
                      }

LABEL_562:
                      v467 = v449[2];
                      if (v442 < v5)
                      {
                        goto LABEL_563;
                      }

LABEL_560:
                      v468 = 0;
                    }

                    v447.i32[0] = *v449;
                    v447.i32[1] = v466;
                    v447.i64[1] = __PAIR64__(v468, v467);
                    v407 = v559;
                    v292 = v560;
                    v450 = &v449[v288];
                    v451 = 0uLL;
                    v452 = 0uLL;
                    if (v400 < v560)
                    {
LABEL_565:
                      if (v435 >= v5)
                      {
                        v469 = 0;
                        if (v441 < v5)
                        {
                          goto LABEL_570;
                        }

LABEL_567:
                        v470 = 0;
                        if (v442 >= v5)
                        {
                          goto LABEL_568;
                        }

LABEL_571:
                        v471 = v450[3];
                      }

                      else
                      {
                        v469 = v450[1];
                        if (v441 >= v5)
                        {
                          goto LABEL_567;
                        }

LABEL_570:
                        v470 = v450[2];
                        if (v442 < v5)
                        {
                          goto LABEL_571;
                        }

LABEL_568:
                        v471 = 0;
                      }

                      v452.i32[0] = *v450;
                      v452.i32[1] = v469;
                      v452.i64[1] = __PAIR64__(v471, v470);
                      v407 = v559;
                      v292 = v560;
                      v453 = &v450[v288];
                      if (v401 < v560)
                      {
LABEL_573:
                        if (v435 >= v5)
                        {
                          v472 = 0;
                          if (v441 < v5)
                          {
                            goto LABEL_578;
                          }

LABEL_575:
                          v473 = 0;
                          if (v442 >= v5)
                          {
                            goto LABEL_576;
                          }

LABEL_579:
                          v474 = v453[3];
                        }

                        else
                        {
                          v472 = v453[1];
                          if (v441 >= v5)
                          {
                            goto LABEL_575;
                          }

LABEL_578:
                          v473 = v453[2];
                          if (v442 < v5)
                          {
                            goto LABEL_579;
                          }

LABEL_576:
                          v474 = 0;
                        }

                        v451.i32[0] = *v453;
                        v451.i32[1] = v472;
                        v451.i64[1] = __PAIR64__(v474, v473);
                        v407 = v559;
                        v292 = v560;
                        v409 = 0uLL;
                        if (v402 < v560)
                        {
LABEL_581:
                          v475 = &v453[v288];
                          if (v435 >= v5)
                          {
                            v476 = 0;
                            if (v441 < v5)
                            {
                              goto LABEL_586;
                            }

LABEL_583:
                            v477 = 0;
                            if (v442 < v5)
                            {
                              goto LABEL_444;
                            }

LABEL_587:
                            v408 = 0;
                          }

                          else
                          {
                            v476 = v475[1];
                            if (v441 >= v5)
                            {
                              goto LABEL_583;
                            }

LABEL_586:
                            v477 = v475[2];
                            if (v442 >= v5)
                            {
                              goto LABEL_587;
                            }

LABEL_444:
                            v408 = v475[3];
                          }

                          v409.i32[0] = *v475;
                          v409.i32[1] = v476;
                          v409.i64[1] = __PAIR64__(v408, v477);
                          v407 = v559;
                        }

LABEL_446:
                        a5.i32[1] = v436;
                        v284 = 8;
LABEL_447:
                        v403 = v568;
LABEL_448:
                        *&v410 = vtrn2q_s32(a5, v437).u64[0];
                        v411 = vzip1q_s32(v444, v448);
                        *(&v410 + 1) = v411.i64[1];
                        v412 = vzip1q_s32(v451, v409);
                        *&v413 = vtrn2q_s32(v447, v452).u64[0];
                        *(&v413 + 1) = v412.i64[1];
                        *&v414 = vzip1q_s32(a5, v437).u64[0];
                        *(&v414 + 1) = vextq_s8(*&v444, v411, 8uLL).i64[1];
                        a5 = vextq_s8(v451, v412, 8uLL);
                        *&v415 = vzip1q_s32(v447, v452).u64[0];
                        *(&v415 + 1) = a5.i64[1];
                        *v406 = v414;
                        v406[1] = v415;
                        v406[2] = v410;
                        v406[3] = v413;
                        goto LABEL_449;
                      }

LABEL_520:
                      v409 = 0uLL;
                      if (v402 < v292)
                      {
                        goto LABEL_581;
                      }

                      goto LABEL_446;
                    }

LABEL_519:
                    v453 = &v450[v288];
                    if (v401 < v292)
                    {
                      goto LABEL_573;
                    }

                    goto LABEL_520;
                  }

LABEL_518:
                  v450 = &v449[v288];
                  v451 = 0uLL;
                  v452 = 0uLL;
                  if (v400 < v292)
                  {
                    goto LABEL_565;
                  }

                  goto LABEL_519;
                }

LABEL_517:
                v449 = &v446[v288];
                if (v399 < v292)
                {
                  goto LABEL_557;
                }

                goto LABEL_518;
              }

              if (v435 >= v5)
              {
                v454 = 0;
                if (v441 < v5)
                {
                  goto LABEL_538;
                }

LABEL_526:
                v455 = 0;
                if (v442 >= v5)
                {
                  goto LABEL_527;
                }

LABEL_539:
                v456 = v443[3];
              }

              else
              {
                v454 = v443[1];
                if (v441 >= v5)
                {
                  goto LABEL_526;
                }

LABEL_538:
                v455 = v443[2];
                if (v442 < v5)
                {
                  goto LABEL_539;
                }

LABEL_527:
                v456 = 0;
              }

              v437.i32[0] = *v443;
              v437.i32[1] = v454;
              v437.i64[1] = __PAIR64__(v456, v455);
              v407 = v559;
              v292 = v560;
              v445 = &v443[v288];
              if (v608 < v560)
              {
                goto LABEL_541;
              }

LABEL_516:
              a5.i32[0] = *v434;
              v446 = &v445[v288];
              v447 = 0uLL;
              v448 = 0uLL;
              if (v398 < v292)
              {
                goto LABEL_549;
              }

              goto LABEL_517;
            }

            v437 = 0uLL;
            if (v407 % v287 >= v105)
            {
              v284 = 0;
              a5 = 0uLL;
              if (v605 % v287 < v105)
              {
                goto LABEL_532;
              }
            }

            else
            {
              if ((v433 | 1) >= v5)
              {
                v438 = 0;
                if (v433 + 2 < v5)
                {
                  goto LABEL_529;
                }

LABEL_511:
                v439 = 0;
                if (v433 + 3 >= v5)
                {
                  goto LABEL_512;
                }

LABEL_530:
                v440 = v434[3];
              }

              else
              {
                v438 = v434[1];
                if (v433 + 2 >= v5)
                {
                  goto LABEL_511;
                }

LABEL_529:
                v439 = v434[2];
                if (v433 + 3 < v5)
                {
                  goto LABEL_530;
                }

LABEL_512:
                v440 = 0;
              }

              a5.i32[0] = *v434;
              a5.i32[1] = v438;
              a5.i32[2] = v439;
              a5.i32[3] = v440;
              v434 += v288;
              v284 = 1;
              v407 = v559;
              if (v605 % v287 < v105)
              {
LABEL_532:
                if (v612 < v292)
                {
                  if ((v433 | 1) >= v5)
                  {
                    v457 = 0;
                    if (v433 + 2 < v5)
                    {
                      goto LABEL_589;
                    }

LABEL_535:
                    v458 = 0;
                    if (v433 + 3 >= v5)
                    {
                      goto LABEL_536;
                    }

LABEL_590:
                    v459 = v434[3];
                  }

                  else
                  {
                    v457 = v434[1];
                    if (v433 + 2 >= v5)
                    {
                      goto LABEL_535;
                    }

LABEL_589:
                    v458 = v434[2];
                    if (v433 + 3 < v5)
                    {
                      goto LABEL_590;
                    }

LABEL_536:
                    v459 = 0;
                  }

                  v437.i32[0] = *v434;
                  v437.i32[1] = v457;
                  v437.i64[1] = __PAIR64__(v459, v458);
                  v407 = v559;
                }

                v434 += v288;
                ++v284;
              }
            }

            v448 = 0uLL;
            v444 = 0uLL;
            if (v602 % v287 >= v105)
            {
              if (v599 % v287 >= v105)
              {
                goto LABEL_595;
              }

LABEL_610:
              if (v398 < v292)
              {
                if ((v433 | 1) >= v5)
                {
                  v481 = 0;
                  if (v433 + 2 < v5)
                  {
                    goto LABEL_616;
                  }

LABEL_613:
                  v482 = 0;
                  if (v433 + 3 >= v5)
                  {
                    goto LABEL_614;
                  }

LABEL_617:
                  v483 = v434[3];
                }

                else
                {
                  v481 = v434[1];
                  if (v433 + 2 >= v5)
                  {
                    goto LABEL_613;
                  }

LABEL_616:
                  v482 = v434[2];
                  if (v433 + 3 < v5)
                  {
                    goto LABEL_617;
                  }

LABEL_614:
                  v483 = 0;
                }

                v448.i32[0] = *v434;
                v448.i32[1] = v481;
                v448.i64[1] = __PAIR64__(v483, v482);
                v407 = v559;
              }

              v434 += v288;
              ++v284;
              v452 = 0uLL;
              v447 = 0uLL;
              if (v596 % v287 < v105)
              {
LABEL_620:
                if (v399 < v292)
                {
                  if ((v433 | 1) >= v5)
                  {
                    v484 = 0;
                    if (v433 + 2 < v5)
                    {
                      goto LABEL_626;
                    }

LABEL_623:
                    v485 = 0;
                    if (v433 + 3 >= v5)
                    {
                      goto LABEL_624;
                    }

LABEL_627:
                    v486 = v434[3];
                  }

                  else
                  {
                    v484 = v434[1];
                    if (v433 + 2 >= v5)
                    {
                      goto LABEL_623;
                    }

LABEL_626:
                    v485 = v434[2];
                    if (v433 + 3 < v5)
                    {
                      goto LABEL_627;
                    }

LABEL_624:
                    v486 = 0;
                  }

                  v447.i32[0] = *v434;
                  v447.i32[1] = v484;
                  v447.i64[1] = __PAIR64__(v486, v485);
                  v407 = v559;
                }

                v434 += v288;
                ++v284;
                if (v593 % v287 < v105)
                {
LABEL_630:
                  if (v400 < v292)
                  {
                    if ((v433 | 1) >= v5)
                    {
                      v487 = 0;
                      if (v433 + 2 < v5)
                      {
                        goto LABEL_636;
                      }

LABEL_633:
                      v488 = 0;
                      if (v433 + 3 >= v5)
                      {
                        goto LABEL_634;
                      }

LABEL_637:
                      v489 = v434[3];
                    }

                    else
                    {
                      v487 = v434[1];
                      if (v433 + 2 >= v5)
                      {
                        goto LABEL_633;
                      }

LABEL_636:
                      v488 = v434[2];
                      if (v433 + 3 < v5)
                      {
                        goto LABEL_637;
                      }

LABEL_634:
                      v489 = 0;
                    }

                    v452.i32[0] = *v434;
                    v452.i32[1] = v487;
                    v452.i64[1] = __PAIR64__(v489, v488);
                    v407 = v559;
                  }

                  v434 += v288;
                  ++v284;
                  v409 = 0uLL;
                  v451 = 0uLL;
                  if (v590 % v287 < v105)
                  {
LABEL_640:
                    if (v401 < v292)
                    {
                      if ((v433 | 1) >= v5)
                      {
                        v490 = 0;
                        if (v433 + 2 < v5)
                        {
                          goto LABEL_646;
                        }

LABEL_643:
                        v491 = 0;
                        if (v433 + 3 >= v5)
                        {
                          goto LABEL_644;
                        }

LABEL_647:
                        v492 = v434[3];
                      }

                      else
                      {
                        v490 = v434[1];
                        if (v433 + 2 >= v5)
                        {
                          goto LABEL_643;
                        }

LABEL_646:
                        v491 = v434[2];
                        if (v433 + 3 < v5)
                        {
                          goto LABEL_647;
                        }

LABEL_644:
                        v492 = 0;
                      }

                      v451.i32[0] = *v434;
                      v451.i32[1] = v490;
                      v451.i64[1] = __PAIR64__(v492, v491);
                    }

                    v434 += v288;
                    ++v284;
                    if (v587 % v287 >= v105)
                    {
                      goto LABEL_447;
                    }

LABEL_650:
                    v403 = v568;
                    if (v402 < v292)
                    {
                      if ((v433 | 1) >= v5)
                      {
                        v493 = 0;
                        if (v433 + 2 < v5)
                        {
                          goto LABEL_656;
                        }

LABEL_653:
                        v494 = 0;
                        if (v433 + 3 >= v5)
                        {
                          goto LABEL_654;
                        }

LABEL_657:
                        v495 = v434[3];
                      }

                      else
                      {
                        v493 = v434[1];
                        if (v433 + 2 >= v5)
                        {
                          goto LABEL_653;
                        }

LABEL_656:
                        v494 = v434[2];
                        if (v433 + 3 < v5)
                        {
                          goto LABEL_657;
                        }

LABEL_654:
                        v495 = 0;
                      }

                      v409.i32[0] = *v434;
                      v409.i32[1] = v493;
                      v409.i64[1] = __PAIR64__(v495, v494);
                      v403 = v568;
                    }

                    ++v284;
                    goto LABEL_448;
                  }

LABEL_598:
                  if (v587 % v287 >= v105)
                  {
                    goto LABEL_447;
                  }

                  goto LABEL_650;
                }

LABEL_597:
                v409 = 0uLL;
                v451 = 0uLL;
                if (v590 % v287 < v105)
                {
                  goto LABEL_640;
                }

                goto LABEL_598;
              }

LABEL_596:
              if (v593 % v287 < v105)
              {
                goto LABEL_630;
              }

              goto LABEL_597;
            }

            if (v608 < v292)
            {
              if ((v433 | 1) >= v5)
              {
                v478 = 0;
                if (v433 + 2 < v5)
                {
                  goto LABEL_606;
                }

LABEL_603:
                v479 = 0;
                if (v433 + 3 >= v5)
                {
                  goto LABEL_604;
                }

LABEL_607:
                v480 = v434[3];
              }

              else
              {
                v478 = v434[1];
                if (v433 + 2 >= v5)
                {
                  goto LABEL_603;
                }

LABEL_606:
                v479 = v434[2];
                if (v433 + 3 < v5)
                {
                  goto LABEL_607;
                }

LABEL_604:
                v480 = 0;
              }

              v444.i32[0] = *v434;
              v444.i32[1] = v478;
              v444.i64[1] = __PAIR64__(v480, v479);
              v407 = v559;
            }

            v434 += v288;
            ++v284;
            if (v599 % v287 < v105)
            {
              goto LABEL_610;
            }

LABEL_595:
            v452 = 0uLL;
            v447 = 0uLL;
            if (v596 % v287 < v105)
            {
              goto LABEL_620;
            }

            goto LABEL_596;
          }

          v551 = v404;
          v416 = 0;
          v417 = v403;
LABEL_454:
          v425 = (v395 + v405);
          if (v620 == 1)
          {
            v426 = 0uLL;
            v427 = 0uLL;
            if (v612 < v292)
            {
              v427 = *(&v395[v576] + v405);
              if (v608 < v292)
              {
                goto LABEL_467;
              }

LABEL_457:
              v428 = 0uLL;
              v429 = 0uLL;
              if (v398 >= v292)
              {
                goto LABEL_458;
              }

LABEL_468:
              v429 = *(&v395[v520] + v405);
              if (v399 < v292)
              {
                goto LABEL_469;
              }

LABEL_459:
              v430 = 0uLL;
              v431 = 0uLL;
              if (v400 >= v292)
              {
                goto LABEL_460;
              }

LABEL_470:
              v431 = *(&v395[v518] + v405);
              if (v401 < v292)
              {
                goto LABEL_471;
              }

LABEL_461:
              v432 = 0uLL;
              if (v402 < v292)
              {
LABEL_472:
                v432 = *(&v395[v514] + v405);
              }
            }

            else
            {
              if (v608 >= v292)
              {
                goto LABEL_457;
              }

LABEL_467:
              v426 = *(&v395[v512] + v405);
              v428 = 0uLL;
              v429 = 0uLL;
              if (v398 < v292)
              {
                goto LABEL_468;
              }

LABEL_458:
              if (v399 >= v292)
              {
                goto LABEL_459;
              }

LABEL_469:
              v428 = *(&v395[v510] + v405);
              v430 = 0uLL;
              v431 = 0uLL;
              if (v400 < v292)
              {
                goto LABEL_470;
              }

LABEL_460:
              if (v401 >= v292)
              {
                goto LABEL_461;
              }

LABEL_471:
              v430 = *(&v395[v516] + v405);
              v432 = 0uLL;
              if (v402 < v292)
              {
                goto LABEL_472;
              }
            }

            v418 = *v425;
            v284 = 8;
LABEL_453:
            *&v419 = vtrn2q_s32(v418, v427).u64[0];
            v420 = vzip1q_s32(v426, v429);
            *(&v419 + 1) = v420.i64[1];
            v421 = vzip1q_s32(v430, v432);
            *&v422 = vtrn2q_s32(v428, v431).u64[0];
            *(&v422 + 1) = v421.i64[1];
            *&v423 = vzip1q_s32(v418, v427).u64[0];
            *(&v423 + 1) = vextq_s8(*&v426, v420, 8uLL).i64[1];
            a5 = vextq_s8(v430, v421, 8uLL);
            *&v424 = vzip1q_s32(v428, v431).u64[0];
            *(&v424 + 1) = a5.i64[1];
            *v406 = v423;
            v406[1] = v424;
            v416 += 2;
            v406[2] = v419;
            v406[3] = v422;
            v406 = (v406 + v632);
            v417 += 2;
            v405 += 8;
            if (v416 >= v290)
            {
              v434 = (v395 + v405);
              v433 = (v5 & 0xFFFFFFFFFFFFFFFELL) - 2;
              v404 = v551;
              v403 = v568;
              if (v615 < v5)
              {
                goto LABEL_505;
              }

LABEL_449:
              ++v404;
              v406 = v563 + 4;
              v403 += v5;
              v405 = v566 + v618;
              if (v404 == v633)
              {
                v397 = v546 + 1;
                v295 = (v550 + v557);
                v403 = &v543[v555];
                v396 = v547 + v553;
                if (v546 + 1 == v628)
                {
                  goto LABEL_313;
                }

                continue;
              }

              goto LABEL_450;
            }

            goto LABEL_454;
          }

          break;
        }

        v427 = 0uLL;
        if (v407 % v287 >= v105)
        {
          v284 = 0;
          v418 = 0uLL;
          if (v605 % v287 >= v105)
          {
            goto LABEL_477;
          }
        }

        else
        {
          v418 = *v425;
          v425 = &v417[v627];
          v284 = 1;
          if (v605 % v287 >= v105)
          {
            goto LABEL_477;
          }
        }

        if (v612 < v292)
        {
          v427 = *v425;
        }

        v425 = (v425 + 4 * v627);
        ++v284;
LABEL_477:
        v429 = 0uLL;
        v426 = 0uLL;
        if (v602 % v287 < v105)
        {
          if (v608 < v292)
          {
            v426 = *v425;
          }

          v425 = (v425 + 4 * v627);
          ++v284;
          if (v599 % v287 < v105)
          {
            goto LABEL_487;
          }

LABEL_479:
          v431 = 0uLL;
          v428 = 0uLL;
          if (v596 % v287 >= v105)
          {
            goto LABEL_480;
          }

LABEL_490:
          if (v399 < v292)
          {
            v428 = *v425;
          }

          v425 = (v425 + 4 * v627);
          ++v284;
          if (v593 % v287 < v105)
          {
            goto LABEL_493;
          }

LABEL_481:
          v432 = 0uLL;
          v430 = 0uLL;
          if (v590 % v287 >= v105)
          {
            goto LABEL_482;
          }

LABEL_496:
          if (v401 < v292)
          {
            v430 = *v425;
          }

          v425 = (v425 + 4 * v627);
          ++v284;
          if (v587 % v287 >= v105)
          {
            goto LABEL_453;
          }
        }

        else
        {
          if (v599 % v287 >= v105)
          {
            goto LABEL_479;
          }

LABEL_487:
          if (v398 < v292)
          {
            v429 = *v425;
          }

          v425 = (v425 + 4 * v627);
          ++v284;
          v431 = 0uLL;
          v428 = 0uLL;
          if (v596 % v287 < v105)
          {
            goto LABEL_490;
          }

LABEL_480:
          if (v593 % v287 >= v105)
          {
            goto LABEL_481;
          }

LABEL_493:
          if (v400 < v292)
          {
            v431 = *v425;
          }

          v425 = (v425 + 4 * v627);
          ++v284;
          v432 = 0uLL;
          v430 = 0uLL;
          if (v590 % v287 < v105)
          {
            goto LABEL_496;
          }

LABEL_482:
          if (v587 % v287 >= v105)
          {
            goto LABEL_453;
          }
        }

        if (v402 < v292)
        {
          v432 = *v425;
        }

        ++v284;
        goto LABEL_453;
      }
    }

    v284 = 0;
    v352 = 0uLL;
    v353 = v335;
    if (v339 >= v105)
    {
      goto LABEL_341;
    }

LABEL_340:
    v351 = *v353;
    v353 = (v353 + 4 * v288);
    ++v284;
    goto LABEL_341;
  }

  if (!v6)
  {
    if (!v531)
    {
      return result;
    }

    v239 = 0;
    v240 = v5 == 0;
    if (!v628)
    {
      v240 = 1;
    }

    v241 = v633 == 0;
    if (!v633)
    {
      v240 = 1;
    }

    v242 = v628 * v633;
    if (!v628)
    {
      v241 = 1;
    }

    v243 = 8 * v560 * v242;
    v244 = v560 * v242 * v5;
    v245 = v560 * (4 * v242 - 4);
    v246 = a2 + v245 + 16;
    v247 = 4 * v242 * v5 * v560;
    v248 = v560 * (8 * v242 - 4);
    v249 = v544 + v248 + 16;
    v250 = v248 + 12;
    while (1)
    {
      if (v560 < 8)
      {
        v268 = 0;
        v254 = v544;
        if (!v5)
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v240)
        {
          goto LABEL_226;
        }

        v251 = 0;
        v252 = v249;
        v253 = v246;
        v254 = v544;
        do
        {
          v255 = 0;
          v256 = v252;
          v257 = v253;
          do
          {
            if ((v255 | 1) >= v5)
            {
              v264 = 0;
              v265 = v257;
              do
              {
                v266 = v265;
                v267 = v633;
                do
                {
                  *result = *(v266 - 4);
                  result[1] = *(v266 - 3);
                  result[2] = *(v266 - 2);
                  result[3] = *(v266 - 1);
                  result[4] = *v266;
                  result[5] = v266[1];
                  result[6] = v266[2];
                  result[7] = v266[3];
                  result += 16;
                  v266 -= v560;
                  --v267;
                }

                while (v267);
                ++v264;
                v265 -= v633 * v560;
              }

              while (v264 != v628);
            }

            else
            {
              v258 = 0;
              v259 = v256;
              v260 = v257;
              do
              {
                v261 = v259;
                v262 = v260;
                v263 = v633;
                do
                {
                  *result = *(v262 - 4);
                  result[1] = *(v262 - 3);
                  result[2] = *(v262 - 2);
                  result[3] = *(v262 - 1);
                  result[4] = *v262;
                  result[5] = v262[1];
                  result[6] = v262[2];
                  result[7] = v262[3];
                  result[8] = *(v261 - 4);
                  result[9] = *(v261 - 3);
                  result[10] = *(v261 - 2);
                  result[11] = *(v261 - 1);
                  result[12] = *v261;
                  result[13] = v261[1];
                  result[14] = v261[2];
                  result[15] = v261[3];
                  result += 16;
                  v262 -= v560;
                  v261 -= v560;
                  --v263;
                }

                while (v263);
                ++v258;
                v260 -= v633 * v560;
                v259 -= v633 * v560;
              }

              while (v258 != v628);
            }

            v255 += 2;
            v257 = (v257 + v243);
            v256 = (v256 + v243);
          }

          while (v255 < v5);
          v251 += 8;
          v254 += 8;
          v253 += 32;
          v252 += 32;
        }

        while (v251 < (v560 - 7));
        v268 = v560 & 0xFFFFFFFFFFFFFFF8;
        if (!v5)
        {
          goto LABEL_226;
        }
      }

      v269 = v560 - v268;
      if (v560 > v268 && !v241)
      {
        v270 = 0;
        v271 = (v254 + v245 + 12);
        v272 = (v254 + v250);
LABEL_251:
        if ((v270 | 1) < v5)
        {
          v273 = 0;
          v274 = v271;
          v275 = v272;
          while (1)
          {
            v276 = v633;
            v277 = v274;
            v278 = v275;
            do
            {
              if (v269 > 3)
              {
                if (v269 > 5)
                {
                  if (v269 != 6)
                  {
                    if (v269 != 7)
                    {
                      goto LABEL_279;
                    }

                    result[6] = v277[3];
                  }

                  result[5] = v277[2];
LABEL_274:
                  result[4] = v277[1];
                }

                else if (v269 != 4)
                {
                  goto LABEL_274;
                }

                result[3] = *v277;
LABEL_276:
                result[2] = *(v277 - 1);
LABEL_277:
                result[1] = *(v277 - 2);
LABEL_278:
                *result = *(v277 - 3);
                goto LABEL_279;
              }

              switch(v269)
              {
                case 1:
                  goto LABEL_278;
                case 2:
                  goto LABEL_277;
                case 3:
                  goto LABEL_276;
              }

LABEL_279:
              if (v269 <= 3)
              {
                switch(v269)
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
                if (v269 <= 5)
                {
                  if (v269 != 4)
                  {
                    goto LABEL_256;
                  }

                  goto LABEL_257;
                }

                if (v269 == 6)
                {
                  goto LABEL_255;
                }

                if (v269 == 7)
                {
                  result[14] = v278[3];
LABEL_255:
                  result[13] = v278[2];
LABEL_256:
                  result[12] = v278[1];
LABEL_257:
                  result[11] = *v278;
LABEL_258:
                  result[10] = *(v278 - 1);
LABEL_259:
                  result[9] = *(v278 - 2);
LABEL_260:
                  result[8] = *(v278 - 3);
                }
              }

              result += 16;
              v278 -= v560;
              v277 -= v560;
              --v276;
            }

            while (v276);
            ++v273;
            v275 -= v633 * v560;
            v274 -= v633 * v560;
            if (v273 == v628)
            {
              goto LABEL_250;
            }
          }
        }

        v279 = 0;
        v280 = v271;
        while (2)
        {
          v281 = v633;
          v282 = v280;
LABEL_300:
          if (v269 <= 3)
          {
            switch(v269)
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
            if (v269 > 5)
            {
              if (v269 != 6)
              {
                if (v269 != 7)
                {
                  goto LABEL_299;
                }

                result[6] = v282[3];
              }

              result[5] = v282[2];
              goto LABEL_294;
            }

            if (v269 != 4)
            {
LABEL_294:
              result[4] = v282[1];
            }

            result[3] = *v282;
LABEL_296:
            result[2] = *(v282 - 1);
LABEL_297:
            result[1] = *(v282 - 2);
LABEL_298:
            *result = *(v282 - 3);
          }

LABEL_299:
          result += 16;
          v282 -= v560;
          if (!--v281)
          {
            ++v279;
            v280 -= v633 * v560;
            if (v279 != v628)
            {
              continue;
            }

LABEL_250:
            v270 += 2;
            v271 = (v271 + v243);
            v272 = (v272 + v243);
            if (v270 >= v5)
            {
              break;
            }

            goto LABEL_251;
          }

          goto LABEL_300;
        }
      }

LABEL_226:
      ++v239;
      v544 += v244;
      v246 += v247;
      v249 += v247;
      if (v239 == v531)
      {
        return result;
      }
    }
  }

  if (v531)
  {
    v7 = 0;
    v8 = v5 == 0;
    v9 = v628 * v633;
    if (!v628)
    {
      v8 = 1;
    }

    if (!v633)
    {
      v8 = 1;
    }

    v513 = v8;
    v517 = v560 * v5 * v9;
    v10 = 8 * v9;
    if (v628)
    {
      v11 = v633 == 0;
    }

    else
    {
      v11 = 1;
    }

    v511 = v11;
    v12 = -v633;
    v545 = 32 * v9;
    v13 = &v544[8 * v9 - 1];
    v515 = 4 * v9 * v5 * v560;
    v508 = 24 * v9 - 4;
    v509 = 28 * v9 - 4;
    v14 = v544 + v509;
    v15 = v544 + v508;
    v507 = 20 * v9 - 4;
    v16 = v544 + v507;
    v504 = 16 * v9 - 4;
    v17 = v544 + v504;
    v18 = v544 + v9 * (4 * v560 + 32) - 4;
    v588 = v10 * v560;
    v505 = v9 * (4 * v560 + 28) - 4;
    v506 = 12 * v9 - 4;
    v19 = v544 + v506;
    v496 = 4 * v9 - 4;
    v497 = v10 - 4;
    v20 = &v544[v10 / 4 - 1];
    v21 = v544 + v496;
    v22 = v544 + v505;
    v502 = v9 * (4 * v560 + 20) - 4;
    v503 = v9 * (4 * v560 + 24) - 4;
    v23 = v544 + v503;
    v24 = v544 + v502;
    v500 = v9 * (4 * v560 + 12) - 4;
    v501 = v9 * (4 * v560 + 16) - 4;
    v25 = v544 + v501;
    v26 = v544 + v500;
    v498 = v9 * (4 * v560 + 4) - 4;
    v499 = v9 * (4 * v560 + 8) - 4;
    v27 = v544 + v499;
    v28 = v544 + v498;
    do
    {
      v29 = v560;
      v540 = v13;
      v542 = v7;
      v538 = v15;
      v539 = v14;
      v536 = v17;
      v537 = v16;
      v534 = v19;
      v535 = v18;
      v532 = v21;
      v533 = v20;
      v527 = v23;
      v529 = v22;
      v523 = v25;
      v525 = v24;
      v521 = v27;
      v522 = v26;
      v519 = v28;
      if (v560 < 8)
      {
        v66 = 0;
        v34 = v544;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v513)
        {
          goto LABEL_12;
        }

        v30 = 0;
        v31 = v18;
        v32 = v16;
        v33 = v14;
        v34 = v544;
        do
        {
          v583 = v30;
          v585 = v34;
          v35 = 0;
          v579 = v27;
          v581 = v28;
          v36 = v28;
          v37 = v27;
          v575 = v25;
          v577 = v26;
          v38 = v26;
          v571 = v23;
          v573 = v24;
          v39 = v24;
          v40 = v25;
          v569 = v22;
          v561 = v20;
          v564 = v21;
          v41 = v21;
          v42 = v31;
          v43 = v20;
          v556 = v17;
          v558 = v19;
          v44 = v19;
          v45 = v39;
          v46 = v17;
          v552 = v15;
          v554 = v32;
          v47 = v15;
          v48 = v22;
          v548 = v13;
          v49 = v33;
          v50 = v13;
          do
          {
            v629 = v37;
            v624 = v38;
            v621 = v40;
            v616 = v23;
            v613 = v48;
            v609 = v42;
            v606 = v41;
            v603 = v43;
            v597 = v46;
            v600 = v44;
            v591 = v47;
            v594 = v32;
            if ((v35 | 1) >= v5)
            {
              v60 = 0;
              v61 = v44;
              v62 = v49;
              v63 = v50;
              do
              {
                v64 = 0;
                do
                {
                  LODWORD(v65) = *(v41 + 4 * v64);
                  DWORD1(v65) = v43[v64];
                  DWORD2(v65) = *(v61 + 4 * v64);
                  HIDWORD(v65) = *(v46 + 4 * v64);
                  *result = v65;
                  LODWORD(v65) = *(v32 + 4 * v64);
                  DWORD1(v65) = *(v47 + 4 * v64);
                  DWORD2(v65) = *(v62 + 4 * v64);
                  HIDWORD(v65) = *(v63 + 4 * v64);
                  *(result + 1) = v65;
                  result += 16;
                  --v64;
                }

                while (v12 != v64);
                ++v60;
                v63 -= 4 * v633;
                v62 -= 4 * v633;
                v47 -= 4 * v633;
                v32 -= 4 * v633;
                v46 -= 4 * v633;
                v61 -= 4 * v633;
                v43 -= v633;
                v41 -= 4 * v633;
              }

              while (v60 != v628);
            }

            else
            {
              v51 = 0;
              v52 = v44;
              v53 = v49;
              v54 = v50;
              v55 = v36;
              v56 = v38;
              v57 = v45;
              do
              {
                v58 = 0;
                do
                {
                  LODWORD(v59) = *(v41 + 4 * v58);
                  DWORD1(v59) = v43[v58];
                  DWORD2(v59) = *(v52 + 4 * v58);
                  HIDWORD(v59) = *(v46 + 4 * v58);
                  *result = v59;
                  LODWORD(v59) = *(v32 + 4 * v58);
                  DWORD1(v59) = *(v47 + 4 * v58);
                  DWORD2(v59) = *(v53 + 4 * v58);
                  HIDWORD(v59) = *(v54 + 4 * v58);
                  *(result + 1) = v59;
                  LODWORD(v59) = *(v55 + 4 * v58);
                  DWORD1(v59) = *(v37 + 4 * v58);
                  DWORD2(v59) = *(v56 + 4 * v58);
                  HIDWORD(v59) = *(v40 + 4 * v58);
                  *(result + 2) = v59;
                  LODWORD(v59) = *(v57 + 4 * v58);
                  DWORD1(v59) = *(v23 + 4 * v58);
                  DWORD2(v59) = *(v48 + 4 * v58);
                  HIDWORD(v59) = *(v42 + 4 * v58);
                  *(result + 3) = v59;
                  result += 16;
                  --v58;
                }

                while (v12 != v58);
                ++v51;
                v42 -= 4 * v633;
                v48 -= 4 * v633;
                v23 -= 4 * v633;
                v57 -= 4 * v633;
                v40 -= 4 * v633;
                v56 -= 4 * v633;
                v37 -= 4 * v633;
                v55 -= 4 * v633;
                v54 -= 4 * v633;
                v53 -= 4 * v633;
                v47 -= 4 * v633;
                v32 -= 4 * v633;
                v46 -= 4 * v633;
                v52 -= 4 * v633;
                v43 -= v633;
                v41 -= 4 * v633;
              }

              while (v51 != v628);
            }

            v35 += 2;
            v50 += v588;
            v49 += v588;
            v47 = v591 + v588;
            v32 = v594 + v588;
            v46 = v597 + v588;
            v44 = v600 + v588;
            v43 = &v603[v588];
            v41 = v606 + v588;
            v42 = v609 + v588;
            v48 = v613 + v588;
            v23 = v616 + v588;
            v45 += v588;
            v40 = v621 + v588;
            v38 = v624 + v588;
            v37 = v629 + v588;
            v36 += v588;
          }

          while (v35 < v5);
          v30 = v583 + 8;
          v34 = &v585[v545 / 4];
          v13 = v548 + v545;
          v33 += v545;
          v15 = v552 + v545;
          v32 = v554 + v545;
          v17 = v556 + v545;
          v19 = v558 + v545;
          v20 = &v561[v545 / 4];
          v21 = v564 + v545;
          v31 += v545;
          v22 = v569 + v545;
          v23 = v571 + v545;
          v24 = v573 + v545;
          v25 = v575 + v545;
          v26 = v577 + v545;
          v27 = v579 + v545;
          v28 = v581 + v545;
        }

        while (v583 + 8 < (v560 - 7));
        v66 = v560 & 0xFFFFFFFFFFFFFFF8;
        v29 = v560;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v67 = v29 - v66;
      if (v29 > v66 && !v511)
      {
        v68 = 0;
        v69 = v34 + v509;
        v70 = v34 + v508;
        v71 = v34 + v507;
        v72 = v34 + v504;
        v73 = v34 + v506;
        v74 = v34 + v497;
        v75 = v34 + v496;
        v76 = v34 + v505;
        v77 = v34 + v503;
        v78 = v34 + v502;
        v79 = v34 + v501;
        v80 = v34 + v500;
        v81 = v34 + v499;
        v82 = v34 + v498;
LABEL_37:
        v630 = v76;
        v625 = v77;
        v622 = v78;
        v619 = v79;
        v617 = v80;
        v614 = v81;
        v610 = v82;
        if ((v68 | 1) < v5)
        {
          v83 = 0;
          v84 = v75;
          v85 = v76;
          v86 = v74;
          v87 = v73;
          v88 = v72;
          v89 = v71;
          v90 = v70;
          v91 = v69;
          while (1)
          {
            v92 = 0;
            do
            {
              if (v67 > 3)
              {
                if (v67 > 5)
                {
                  if (v67 != 6)
                  {
                    if (v67 != 7)
                    {
                      goto LABEL_65;
                    }

                    result[6] = *(v91 + 4 * v92);
                  }

                  result[5] = *(v90 + 4 * v92);
LABEL_60:
                  result[4] = *(v89 + 4 * v92);
                }

                else if (v67 != 4)
                {
                  goto LABEL_60;
                }

                result[3] = *(v88 + 4 * v92);
LABEL_62:
                result[2] = *(v87 + 4 * v92);
LABEL_63:
                result[1] = *(v86 + 4 * v92);
LABEL_64:
                *result = *(v84 + 4 * v92);
                goto LABEL_65;
              }

              switch(v67)
              {
                case 1:
                  goto LABEL_64;
                case 2:
                  goto LABEL_63;
                case 3:
                  goto LABEL_62;
              }

LABEL_65:
              if (v67 <= 3)
              {
                switch(v67)
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
                if (v67 <= 5)
                {
                  if (v67 != 4)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_43;
                }

                if (v67 == 6)
                {
                  goto LABEL_41;
                }

                if (v67 == 7)
                {
                  result[14] = *(v85 + 4 * v92);
LABEL_41:
                  result[13] = *(v77 + 4 * v92);
LABEL_42:
                  result[12] = *(v78 + 4 * v92);
LABEL_43:
                  result[11] = *(v79 + 4 * v92);
LABEL_44:
                  result[10] = *(v80 + 4 * v92);
LABEL_45:
                  result[9] = *(v81 + 4 * v92);
LABEL_46:
                  result[8] = *(v82 + 4 * v92);
                }
              }

              result += 16;
              --v92;
            }

            while (v12 != v92);
            ++v83;
            v91 -= 4 * v633;
            v90 -= 4 * v633;
            v89 -= 4 * v633;
            v88 -= 4 * v633;
            v87 -= 4 * v633;
            v86 -= 4 * v633;
            v85 -= 4 * v633;
            v77 -= 4 * v633;
            v78 -= 4 * v633;
            v79 -= 4 * v633;
            v80 -= 4 * v633;
            v81 -= 4 * v633;
            v82 -= 4 * v633;
            v84 -= 4 * v633;
            if (v83 == v628)
            {
              goto LABEL_36;
            }
          }
        }

        v93 = 0;
        v94 = v75;
        v95 = v74;
        v96 = v73;
        v97 = v72;
        v98 = v71;
        v99 = v70;
        v100 = v69;
        while (2)
        {
          v101 = 0;
LABEL_86:
          if (v67 <= 3)
          {
            switch(v67)
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
            if (v67 > 5)
            {
              if (v67 != 6)
              {
                if (v67 != 7)
                {
                  goto LABEL_85;
                }

                result[6] = *(v100 + 4 * v101);
              }

              result[5] = *(v99 + 4 * v101);
              goto LABEL_80;
            }

            if (v67 != 4)
            {
LABEL_80:
              result[4] = *(v98 + 4 * v101);
            }

            result[3] = *(v97 + 4 * v101);
LABEL_82:
            result[2] = *(v96 + 4 * v101);
LABEL_83:
            result[1] = *(v95 + 4 * v101);
LABEL_84:
            *result = *(v94 + 4 * v101);
          }

LABEL_85:
          result += 16;
          if (v12 == --v101)
          {
            ++v93;
            v100 -= 4 * v633;
            v99 -= 4 * v633;
            v98 -= 4 * v633;
            v97 -= 4 * v633;
            v96 -= 4 * v633;
            v95 -= 4 * v633;
            v94 -= 4 * v633;
            if (v93 != v628)
            {
              continue;
            }

LABEL_36:
            v68 += 2;
            v69 += v588;
            v70 += v588;
            v71 += v588;
            v72 += v588;
            v73 += v588;
            v74 += v588;
            v75 += v588;
            v76 = v630 + v588;
            v77 = v625 + v588;
            v78 = v622 + v588;
            v79 = v619 + v588;
            v80 = v617 + v588;
            v81 = v614 + v588;
            v82 = v610 + v588;
            if (v68 >= v5)
            {
              break;
            }

            goto LABEL_37;
          }

          goto LABEL_86;
        }
      }

LABEL_12:
      v544 += v517;
      v7 = v542 + 1;
      v13 = v540 + v515;
      v14 = v539 + v515;
      v15 = v538 + v515;
      v16 = v537 + v515;
      v17 = v536 + v515;
      v19 = v534 + v515;
      v20 = &v533[v515 / 4];
      v21 = v532 + v515;
      v18 = v535 + v515;
      v22 = v529 + v515;
      v23 = v527 + v515;
      v24 = v525 + v515;
      v25 = v523 + v515;
      v26 = v522 + v515;
      v27 = v521 + v515;
      v28 = v519 + v515;
    }

    while (v542 + 1 != v531);
  }

  return result;
}