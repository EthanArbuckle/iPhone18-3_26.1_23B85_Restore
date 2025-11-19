__n128 *sub_239C2CD00(__n128 *result, _BYTE *a2, uint64_t a3, int16x8_t a4, double a5, int8x16_t a6, uint16x8_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint16x8_t a11)
{
  v12 = *(a3 + 8);
  v13 = *(a3 + 32);
  v436 = *(a3 + 48);
  v437 = a2;
  v557 = *(a3 + 56);
  v556 = *(a3 + 64);
  v14 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v108 = *(a3 + 16);
    v109 = *(a3 + 40);
    v111 = *(a3 + 72);
    v110 = *(a3 + 80);
    v535 = v110;
    if (v14)
    {
      if (v436 && v12 && v557 && v13 && v556)
      {
        v112 = 0;
        v113 = v556 * v557;
        v114 = 16 * v556 * v557;
        v115 = 4 * v556 * v557;
        v116 = v556 * v12 * v557;
        v117 = v556 * v557 * v108;
        v553 = 4 * v117;
        v118 = 16 * v557;
        v544 = v117 * v109;
        do
        {
          v119 = 0;
          v549 = v112;
          v120 = v112 * v13;
          v121 = v437;
          v122 = result;
          do
          {
            v123 = v119 + v120;
            if ((v119 + v120) % v110 < v111)
            {
              v124 = 0;
              v125 = v121;
              v126 = v122;
              do
              {
                v127 = 0;
                v128 = v125;
                v129 = v126;
                do
                {
                  v130 = 0;
                  v131 = 0;
                  v132 = 4;
                  v133 = v128;
                  v134 = v129;
                  do
                  {
                    if (v12 >= v132)
                    {
                      v135 = v132;
                    }

                    else
                    {
                      v135 = v12;
                    }

                    v136 = v135 + v130;
                    v137 = v133;
                    v138 = v134;
                    do
                    {
                      v138->n128_u8[0] = *v137;
                      v138 = (v138 + 4);
                      v137 += v113;
                      --v136;
                    }

                    while (v136);
                    v131 += 4;
                    v134 = (v134 + v114);
                    v133 += v115;
                    v132 += 4;
                    v130 -= 4;
                  }

                  while (v131 < v12);
                  ++v127;
                  ++v129;
                  ++v128;
                }

                while (v127 != v557);
                ++v124;
                v126 = (v126 + v118);
                v125 += v557;
              }

              while (v124 != v556);
              v121 += v116;
              v110 = v535;
            }

            if ((v119 | 1) < v13 && (v123 + 1) % v110 < v111)
            {
              v139 = 0;
              v140 = &v122->n128_u8[1];
              v141 = v121;
              do
              {
                v142 = 0;
                v143 = v141;
                v144 = v140;
                do
                {
                  v145 = 0;
                  v146 = 0;
                  v147 = 4;
                  v148 = v143;
                  v149 = v144;
                  do
                  {
                    v150 = 0;
                    if (v12 >= v147)
                    {
                      v151 = v147;
                    }

                    else
                    {
                      v151 = v12;
                    }

                    v152 = v151 + v145;
                    v153 = v148;
                    do
                    {
                      v149[v150] = *v153;
                      v153 += v113;
                      v150 += 4;
                      --v152;
                    }

                    while (v152);
                    v146 += 4;
                    v149 += v114;
                    v148 += v115;
                    v147 += 4;
                    v145 -= 4;
                  }

                  while (v146 < v12);
                  ++v142;
                  v144 += 16;
                  ++v143;
                }

                while (v142 != v557);
                ++v139;
                v140 += v118;
                v141 += v557;
              }

              while (v139 != v556);
              v121 += v116;
              v110 = v535;
            }

            if ((v119 | 2) < v13 && (v123 + 2) % v110 < v111)
            {
              v154 = 0;
              v155 = &v122->n128_u8[2];
              v156 = v121;
              do
              {
                v157 = 0;
                v158 = v156;
                v159 = v155;
                do
                {
                  v160 = 0;
                  v161 = 0;
                  v162 = 4;
                  v163 = v158;
                  v164 = v159;
                  do
                  {
                    v165 = 0;
                    if (v12 >= v162)
                    {
                      v166 = v162;
                    }

                    else
                    {
                      v166 = v12;
                    }

                    v167 = v166 + v160;
                    v168 = v163;
                    do
                    {
                      v164[v165] = *v168;
                      v168 += v113;
                      v165 += 4;
                      --v167;
                    }

                    while (v167);
                    v161 += 4;
                    v164 += v114;
                    v163 += v115;
                    v162 += 4;
                    v160 -= 4;
                  }

                  while (v161 < v12);
                  ++v157;
                  v159 += 16;
                  ++v158;
                }

                while (v157 != v557);
                ++v154;
                v155 += v118;
                v156 += v557;
              }

              while (v154 != v556);
              v121 += v116;
              v110 = v535;
            }

            if ((v119 | 3) < v13 && (v123 + 3) % v110 < v111)
            {
              v169 = 0;
              v170 = &v122->n128_u8[3];
              v171 = v121;
              do
              {
                v172 = 0;
                v173 = v171;
                v174 = v170;
                do
                {
                  v175 = 0;
                  v176 = 0;
                  v177 = 4;
                  v178 = v173;
                  v179 = v174;
                  do
                  {
                    v180 = 0;
                    if (v12 >= v177)
                    {
                      v181 = v177;
                    }

                    else
                    {
                      v181 = v12;
                    }

                    v182 = v181 + v175;
                    v183 = v178;
                    do
                    {
                      v179[v180] = *v183;
                      v183 += v113;
                      v180 += 4;
                      --v182;
                    }

                    while (v182);
                    v176 += 4;
                    v179 += v114;
                    v178 += v115;
                    v177 += 4;
                    v175 -= 4;
                  }

                  while (v176 < v12);
                  ++v172;
                  v174 += 16;
                  ++v173;
                }

                while (v172 != v557);
                ++v169;
                v170 += v118;
                v171 += v557;
              }

              while (v169 != v556);
              v121 += v116;
              v110 = v535;
            }

            v119 += 4;
            v122 = (v122 + v553);
          }

          while (v119 < v13);
          ++v112;
          result = (result + v544);
          v437 += v557 * v13 * v556 * v12;
        }

        while (v549 + 1 != v436);
      }

      return result;
    }

    if (!v436)
    {
      return result;
    }

    v250 = 0;
    v251 = 0;
    v252 = *(a3 + 88);
    v488 = v13 - 3;
    v253 = v556 * v12 * v557;
    v254 = 16 * v556 * v557;
    v255 = v556 * v557 * v12;
    v256 = v556 * v557 * v108;
    v485 = 4 * v256;
    v257 = v12 - 3;
    v511 = v557;
    v507 = v557 * v12;
    v476 = v256 * v109;
    v473 = v557 * v13 * v556 * v12;
    v470 = ((v13 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v258 = result + v470 * v108 * v556 * v557;
    v551 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v532 = v252;
    v555 = v255;
    v524 = v13;
    while (1)
    {
      v481 = v250;
      v478 = v258;
      if (v13 < 4)
      {
        v319 = 0;
        v261 = result;
        v260 = v437;
        if (v13 > 0)
        {
          goto LABEL_401;
        }

        goto LABEL_300;
      }

      if (!v556)
      {
        goto LABEL_300;
      }

      v492 = v250 * v13;
      if (!v557)
      {
        goto LABEL_300;
      }

      v259 = 0;
      v260 = v437;
      v261 = result;
      do
      {
        v262 = 0;
        v495 = v259;
        v263 = v259 + v492;
        v264 = v259 + v492 + 1;
        v265 = v259 + v492 + 2;
        v266 = v259 + v492 + 3;
        v502 = v260;
        v497 = v261;
        v527 = v259 + v492;
        do
        {
          v522 = v262;
          v267 = 0;
          v519 = v260;
          v515 = v261;
          do
          {
            if (v12 < 4)
            {
              v277 = 0;
              v272 = v261;
              v271 = v260;
              if (v12 > 0)
              {
                goto LABEL_334;
              }

              goto LABEL_312;
            }

            if (v252 != 1)
            {
              v278 = 0;
              v279 = v264 % v110;
              v280 = v265 % v110;
              v281 = v266 % v110;
              v282 = v260;
              v272 = v261;
              while (1)
              {
                v283 = &v260[v278];
                if (v263 % v110 >= v111)
                {
                  v251 = 0;
                  v284 = 0uLL;
                  if (v279 >= v111)
                  {
LABEL_325:
                    a10 = 0uLL;
                    if (v280 >= v111)
                    {
                      goto LABEL_326;
                    }

                    goto LABEL_330;
                  }
                }

                else
                {
                  a6.i32[0] = *v283;
                  v284 = vmovl_u8(*a6.i8);
                  v283 = &v282[v253];
                  v251 = 1;
                  if (v279 >= v111)
                  {
                    goto LABEL_325;
                  }
                }

                a10.i32[0] = *v283;
                a10 = vmovl_u8(*a10.i8);
                v283 = (v283 + v253);
                ++v251;
                if (v280 >= v111)
                {
LABEL_326:
                  a11 = 0uLL;
                  if (v281 >= v111)
                  {
                    goto LABEL_331;
                  }

                  goto LABEL_321;
                }

LABEL_330:
                a11.i32[0] = *v283;
                a11 = vmovl_u8(*a11.i8);
                v283 = (v283 + v253);
                ++v251;
                if (v281 >= v111)
                {
LABEL_331:
                  v11 = 0uLL;
                  goto LABEL_322;
                }

LABEL_321:
                v11.i32[0] = *v283;
                v11 = vmovl_u8(*v11.i8);
                ++v251;
LABEL_322:
                a7 = a10;
                a8 = a11;
                a9 = v11;
                a6 = vqtbl4q_s8(*(&a7 - 1), xmmword_239D7E370);
                *v272 = a6;
                v278 += 4;
                v272 = (v272 + v254);
                v282 += 4;
                if (v278 >= v257)
                {
                  v271 = &v260[v278];
                  goto LABEL_333;
                }
              }
            }

            v270 = 0;
            v271 = v260;
            v272 = v261;
            do
            {
              v273 = &v271[v253];
              v274 = *v271;
              v271 += 4;
              v275.i32[0] = v274;
              v275.i32[1] = *v273;
              v276 = (v273 + v253);
              v275.i32[2] = *v276;
              v275.i32[3] = *(v276 + v253);
              a6 = vqtbl1q_s8(v275, xmmword_239D7E340);
              *v272 = a6;
              v270 += 4;
              v272 = (v272 + v254);
            }

            while (v270 < v257);
            v251 = 4;
LABEL_333:
            v277 = v12 & 0xFFFFFFFFFFFFFFFCLL;
            if (v551 < v12)
            {
LABEL_334:
              if (v252 == 1)
              {
                v285 = v277 | 1;
                if ((v277 | 1) >= v12)
                {
                  v545 = 0;
                  v286 = v277 | 2;
                  if ((v277 | 2) < v12)
                  {
                    goto LABEL_354;
                  }

LABEL_337:
                  v540 = 0;
                  v287 = v277 | 3;
                  if ((v277 | 3) >= v12)
                  {
                    goto LABEL_338;
                  }

LABEL_355:
                  v288 = v271[3];
                  v289 = &v271[v255];
                  if (v285 < v12)
                  {
                    goto LABEL_356;
                  }

LABEL_339:
                  v290 = 0;
                  if (v286 >= v12)
                  {
                    goto LABEL_340;
                  }

LABEL_357:
                  v291 = v289[2];
                  v292 = v264;
                  if (v287 < v12)
                  {
                    goto LABEL_358;
                  }

LABEL_341:
                  v293 = 0;
                  v294 = v265;
                  v295 = &v289[v255];
                  if (v285 >= v12)
                  {
                    goto LABEL_342;
                  }

LABEL_359:
                  v296 = v295[1];
                  v297 = v266;
                  if (v286 < v12)
                  {
                    goto LABEL_360;
                  }

LABEL_343:
                  v298 = 0;
                  if (v287 >= v12)
                  {
                    goto LABEL_344;
                  }

LABEL_361:
                  v299 = v295[3];
                  v300 = &v295[v255];
                  if (v285 < v12)
                  {
                    goto LABEL_362;
                  }

LABEL_345:
                  v301 = 0;
                  v302 = *v271;
                  v303 = *v289;
                  v304 = *v295;
                  v305 = *v300;
                  if (v286 >= v12)
                  {
                    goto LABEL_346;
                  }

LABEL_363:
                  v306 = v300[2];
                  if (v287 < v12)
                  {
                    goto LABEL_309;
                  }

LABEL_364:
                  v268 = 0;
                }

                else
                {
                  v545 = v271[1];
                  v286 = v277 | 2;
                  if ((v277 | 2) >= v12)
                  {
                    goto LABEL_337;
                  }

LABEL_354:
                  v540 = v271[2];
                  v287 = v277 | 3;
                  if ((v277 | 3) < v12)
                  {
                    goto LABEL_355;
                  }

LABEL_338:
                  v288 = 0;
                  v289 = &v271[v255];
                  if (v285 >= v12)
                  {
                    goto LABEL_339;
                  }

LABEL_356:
                  v290 = v289[1];
                  if (v286 < v12)
                  {
                    goto LABEL_357;
                  }

LABEL_340:
                  v291 = 0;
                  v292 = v264;
                  if (v287 >= v12)
                  {
                    goto LABEL_341;
                  }

LABEL_358:
                  v293 = v289[3];
                  v294 = v265;
                  v295 = &v289[v255];
                  if (v285 < v12)
                  {
                    goto LABEL_359;
                  }

LABEL_342:
                  v296 = 0;
                  v297 = v266;
                  if (v286 >= v12)
                  {
                    goto LABEL_343;
                  }

LABEL_360:
                  v298 = v295[2];
                  if (v287 < v12)
                  {
                    goto LABEL_361;
                  }

LABEL_344:
                  v299 = 0;
                  v300 = &v295[v255];
                  if (v285 >= v12)
                  {
                    goto LABEL_345;
                  }

LABEL_362:
                  v301 = v300[1];
                  v302 = *v271;
                  v303 = *v289;
                  v304 = *v295;
                  v305 = *v300;
                  if (v286 < v12)
                  {
                    goto LABEL_363;
                  }

LABEL_346:
                  v306 = 0;
                  if (v287 >= v12)
                  {
                    goto LABEL_364;
                  }

LABEL_309:
                  v268 = v300[3];
                }

                v269.i8[0] = v302;
                v269.i8[1] = v545;
                v269.i8[2] = v540;
                v269.i8[3] = v288;
                v269.i8[4] = v303;
                v269.i8[5] = v290;
                v269.i8[6] = v291;
                v269.i8[7] = v293;
                v269.i8[8] = v304;
                v269.i8[9] = v296;
                v269.i8[10] = v298;
                v269.i8[11] = v299;
                v269.i8[12] = v305;
                v269.i8[13] = v301;
                v269.i8[14] = v306;
                v269.i8[15] = v268;
                v251 = 4;
                v110 = v535;
                v252 = v532;
                v255 = v556 * v557 * v12;
                v263 = v527;
                v264 = v292;
                v13 = v524;
                v265 = v294;
                v266 = v297;
LABEL_311:
                a6 = vqtbl1q_s8(v269, xmmword_239D7E340);
                *v272 = a6;
                goto LABEL_312;
              }

              if (v263 % v110 >= v111)
              {
                v251 = 0;
                a6.i64[0] = 0;
                if (v264 % v110 < v111)
                {
                  goto LABEL_373;
                }
              }

              else
              {
                if ((v277 | 1) >= v12)
                {
                  v307 = 0;
                  if ((v277 | 2) < v12)
                  {
                    goto LABEL_370;
                  }

LABEL_351:
                  v308 = 0;
                  if ((v277 | 3) >= v12)
                  {
                    goto LABEL_352;
                  }

LABEL_371:
                  v309 = v271[3];
                }

                else
                {
                  v307 = v271[1];
                  if ((v277 | 2) >= v12)
                  {
                    goto LABEL_351;
                  }

LABEL_370:
                  v308 = v271[2];
                  if ((v277 | 3) < v12)
                  {
                    goto LABEL_371;
                  }

LABEL_352:
                  v309 = 0;
                }

                a6.i8[0] = *v271;
                a6.i16[1] = v307;
                a6.i16[2] = v308;
                a6.i16[3] = v309;
                v271 += v255;
                v251 = 1;
                if (v264 % v110 < v111)
                {
LABEL_373:
                  if ((v277 | 1) >= v12)
                  {
                    v310 = 0;
                    if ((v277 | 2) < v12)
                    {
                      goto LABEL_378;
                    }

LABEL_375:
                    v311 = 0;
                    if ((v277 | 3) >= v12)
                    {
                      goto LABEL_376;
                    }

LABEL_379:
                    v312 = v271[3];
                  }

                  else
                  {
                    v310 = v271[1];
                    if ((v277 | 2) >= v12)
                    {
                      goto LABEL_375;
                    }

LABEL_378:
                    v311 = v271[2];
                    if ((v277 | 3) < v12)
                    {
                      goto LABEL_379;
                    }

LABEL_376:
                    v312 = 0;
                  }

                  a7.i8[0] = *v271;
                  a7.i16[1] = v310;
                  a7.i16[2] = v311;
                  a7.i16[3] = v312;
                  v271 += v255;
                  ++v251;
                  if (v265 % v110 < v111)
                  {
LABEL_381:
                    if ((v277 | 1) >= v12)
                    {
                      v313 = 0;
                      if ((v277 | 2) < v12)
                      {
                        goto LABEL_386;
                      }

LABEL_383:
                      v314 = 0;
                      if ((v277 | 3) >= v12)
                      {
                        goto LABEL_384;
                      }

LABEL_387:
                      v315 = v271[3];
                    }

                    else
                    {
                      v313 = v271[1];
                      if ((v277 | 2) >= v12)
                      {
                        goto LABEL_383;
                      }

LABEL_386:
                      v314 = v271[2];
                      if ((v277 | 3) < v12)
                      {
                        goto LABEL_387;
                      }

LABEL_384:
                      v315 = 0;
                    }

                    a8.i8[0] = *v271;
                    a8.i16[1] = v313;
                    a8.i16[2] = v314;
                    a8.i16[3] = v315;
                    v271 += v255;
                    ++v251;
                    if (v266 % v110 < v111)
                    {
LABEL_389:
                      if ((v277 | 1) >= v12)
                      {
                        v316 = 0;
                        if ((v277 | 2) < v12)
                        {
                          goto LABEL_394;
                        }

LABEL_391:
                        v317 = 0;
                        if ((v277 | 3) >= v12)
                        {
                          goto LABEL_392;
                        }

LABEL_395:
                        v318 = v271[3];
                      }

                      else
                      {
                        v316 = v271[1];
                        if ((v277 | 2) >= v12)
                        {
                          goto LABEL_391;
                        }

LABEL_394:
                        v317 = v271[2];
                        if ((v277 | 3) < v12)
                        {
                          goto LABEL_395;
                        }

LABEL_392:
                        v318 = 0;
                      }

                      a9.i8[0] = *v271;
                      a9.i16[1] = v316;
                      a9.i16[2] = v317;
                      a9.i16[3] = v318;
                      ++v251;
LABEL_397:
                      a8.i64[1] = a9.i64[0];
                      a6.i64[1] = a7.i64[0];
                      v269 = vuzp1q_s8(a6, a8);
                      goto LABEL_311;
                    }

LABEL_368:
                    a9.i64[0] = 0;
                    goto LABEL_397;
                  }

LABEL_367:
                  a8.i64[0] = 0;
                  if (v266 % v110 < v111)
                  {
                    goto LABEL_389;
                  }

                  goto LABEL_368;
                }
              }

              a7.i64[0] = 0;
              if (v265 % v110 < v111)
              {
                goto LABEL_381;
              }

              goto LABEL_367;
            }

LABEL_312:
            ++v267;
            ++v261;
            v260 += v12;
          }

          while (v267 != v557);
          v262 = v522 + 1;
          v261 = &v515[v511];
          v260 = &v519[v507];
        }

        while (v522 + 1 != v556);
        v260 = &v502[v251 * v255];
        v259 = v495 + 4;
        v261 = (v497 + v485);
      }

      while (v495 + 4 < v488);
      v319 = v470;
      v250 = v481;
      if (v470 < v13)
      {
LABEL_401:
        if (!v556)
        {
          goto LABEL_300;
        }

        v320 = v319 + v250 * v13;
        if (!v557)
        {
          goto LABEL_300;
        }

        v321 = 0;
        v546 = v320 + 1;
        v322 = v319 | 1;
        v541 = v320 + 2;
        v323 = v319 | 2;
        v324 = v260;
        v325 = v261;
        v326 = v320 + 3;
        v327 = v319 | 3;
        while (2)
        {
          v528 = v321;
          v328 = 0;
          v503 = v324;
          v498 = v325;
LABEL_412:
          if (v12 < 4)
          {
            v336 = 0;
            v331 = v325;
            v330 = v324;
            if (v12 > 0)
            {
              goto LABEL_452;
            }

            goto LABEL_411;
          }

          if (v532 == 1)
          {
            if (v322 < v13)
            {
              v329 = 0;
              v330 = v324;
              v331 = v325;
              while (1)
              {
                v334 = &v330[v255];
                v335 = &v330[v255 + v255];
                if (v323 >= v13)
                {
                  a8 = 0uLL;
                  if (v327 >= v13)
                  {
LABEL_422:
                    a10 = 0uLL;
                    goto LABEL_417;
                  }
                }

                else
                {
                  a6.i32[0] = *v335;
                  a8 = vmovl_u8(*a6.i8);
                  if (v327 >= v13)
                  {
                    goto LABEL_422;
                  }
                }

                a10.i32[0] = *(v335 + v255);
                a10 = vmovl_u8(*a10.i8);
LABEL_417:
                v332 = *v330;
                v330 += 4;
                a11.i32[0] = v332;
                v333 = vmovl_u8(*a11.i8);
                a11.i32[0] = *v334;
                a7 = vmovl_u8(*a11.i8);
                a9 = a10;
                a6 = vqtbl4q_s8(*(&a7 - 1), xmmword_239D7E370);
                *v331 = a6;
                v329 += 4;
                v331 = (v331 + v254);
                if (v329 >= v257)
                {
                  goto LABEL_451;
                }
              }
            }

            v350 = 0;
            v331 = v325;
            do
            {
              a6.i32[0] = *&v324[v350];
              a6 = vmovl_u16(*&vmovl_u8(*a6.i8));
              *v331 = a6;
              v350 += 4;
              v331 = (v331 + v254);
            }

            while (v350 < v257);
            v330 = &v324[v350];
LABEL_451:
            v251 = 4;
            v336 = v12 & 0xFFFFFFFFFFFFFFFCLL;
            if (v551 >= v12)
            {
              goto LABEL_411;
            }

LABEL_452:
            if (v532 == 1)
            {
              v351 = v336 | 1;
              if ((v336 | 1) >= v12)
              {
                v352 = 0;
                v353 = v336 | 2;
                if ((v336 | 2) < v12)
                {
                  goto LABEL_466;
                }

LABEL_455:
                v354 = 0;
                v355 = v336 | 3;
                if ((v336 | 3) >= v12)
                {
                  goto LABEL_456;
                }

LABEL_467:
                v356 = v330[3];
                v357 = &v330[v253];
                if (v322 < v13)
                {
                  goto LABEL_468;
                }

LABEL_457:
                v358 = 0;
                v359 = *v330;
                v360 = &v357[v253];
                if (v323 < v13)
                {
                  goto LABEL_489;
                }
              }

              else
              {
                v352 = v330[1];
                v353 = v336 | 2;
                if ((v336 | 2) >= v12)
                {
                  goto LABEL_455;
                }

LABEL_466:
                v354 = v330[2];
                v355 = v336 | 3;
                if ((v336 | 3) < v12)
                {
                  goto LABEL_467;
                }

LABEL_456:
                v356 = 0;
                v357 = &v330[v253];
                if (v322 >= v13)
                {
                  goto LABEL_457;
                }

LABEL_468:
                if (v351 >= v12)
                {
                  v364 = 0;
                  if (v353 < v12)
                  {
                    goto LABEL_486;
                  }

LABEL_470:
                  v365 = 0;
                  if (v355 >= v12)
                  {
                    goto LABEL_471;
                  }

LABEL_487:
                  v366 = v357[3];
                }

                else
                {
                  v364 = v357[1];
                  if (v353 >= v12)
                  {
                    goto LABEL_470;
                  }

LABEL_486:
                  v365 = v357[2];
                  if (v355 < v12)
                  {
                    goto LABEL_487;
                  }

LABEL_471:
                  v366 = 0;
                }

                LOBYTE(v358) = *v357;
                BYTE2(v358) = v364;
                BYTE4(v358) = v365;
                BYTE6(v358) = v366;
                v359 = *v330;
                v360 = &v357[v253];
                if (v323 < v13)
                {
LABEL_489:
                  if (v351 >= v12)
                  {
                    v374 = 0;
                    if (v353 < v12)
                    {
                      goto LABEL_495;
                    }

LABEL_491:
                    v375 = 0;
                    if (v355 >= v12)
                    {
                      goto LABEL_492;
                    }

LABEL_496:
                    v376 = v360[3];
                  }

                  else
                  {
                    v374 = v360[1];
                    if (v353 >= v12)
                    {
                      goto LABEL_491;
                    }

LABEL_495:
                    v375 = v360[2];
                    if (v355 < v12)
                    {
                      goto LABEL_496;
                    }

LABEL_492:
                    v376 = 0;
                  }

                  a8.i8[0] = *v360;
                  a8.i16[1] = v374;
                  a8.i16[2] = v375;
                  a8.i16[3] = v376;
                  if (v327 < v13)
                  {
LABEL_498:
                    v377 = &v360[v253];
                    if (v351 >= v12)
                    {
                      v378 = 0;
                      if (v353 < v12)
                      {
                        goto LABEL_503;
                      }

LABEL_500:
                      v379 = 0;
                      if (v355 >= v12)
                      {
                        goto LABEL_501;
                      }

LABEL_504:
                      v380 = v377[3];
                    }

                    else
                    {
                      v378 = v377[1];
                      if (v353 >= v12)
                      {
                        goto LABEL_500;
                      }

LABEL_503:
                      v379 = v377[2];
                      if (v355 < v12)
                      {
                        goto LABEL_504;
                      }

LABEL_501:
                      v380 = 0;
                    }

                    a9.i8[0] = *v377;
                    a9.i16[1] = v378;
                    a9.i16[2] = v379;
                    a9.i16[3] = v380;
LABEL_409:
                    a10.i8[0] = v359;
                    a10.i8[1] = v352;
                    a10.i8[2] = v354;
                    a10.i8[3] = v356;
                    a10.i8[4] = v358;
                    a10.i8[5] = BYTE2(v358);
                    a10.i8[6] = BYTE4(v358);
                    a10.i8[7] = BYTE6(v358);
                    v251 = 4;
LABEL_410:
                    a10.i32[2] = vuzp1_s8(*a8.i8, 0xD0905010C080400).u32[0];
                    a10.i32[3] = vuzp1_s8(*a9.i8, 0xD0905010C080400).u32[0];
                    a6 = vqtbl1q_s8(a10, xmmword_239D7E340);
                    *v331 = a6;
                    goto LABEL_411;
                  }

LABEL_408:
                  a9.i64[0] = 0;
                  goto LABEL_409;
                }
              }

              a8.i64[0] = 0;
              if (v327 < v13)
              {
                goto LABEL_498;
              }

              goto LABEL_408;
            }

            if (v320 % v535 >= v111)
            {
              v367 = 0;
              v251 = 0;
              if (v546 % v535 < v111)
              {
                goto LABEL_480;
              }
            }

            else
            {
              if ((v336 | 1) >= v12)
              {
                v361 = 0;
                if ((v336 | 2) < v12)
                {
                  goto LABEL_477;
                }

LABEL_463:
                v362 = 0;
                if ((v336 | 3) >= v12)
                {
                  goto LABEL_464;
                }

LABEL_478:
                v363 = v330[3];
              }

              else
              {
                v361 = v330[1];
                if ((v336 | 2) >= v12)
                {
                  goto LABEL_463;
                }

LABEL_477:
                v362 = v330[2];
                if ((v336 | 3) < v12)
                {
                  goto LABEL_478;
                }

LABEL_464:
                v363 = 0;
              }

              a6.i8[0] = *v330;
              a6.i16[1] = v361;
              a6.i16[2] = v362;
              a6.i16[3] = v363;
              *a6.i8 = vuzp1_s8(*a6.i8, 0xD0905010C080400);
              v367 = a6.i32[0];
              v330 += v253;
              v251 = 1;
              if (v546 % v535 < v111)
              {
LABEL_480:
                if (v322 >= v13)
                {
                  v368 = 0;
                }

                else
                {
                  if ((v336 | 1) >= v12)
                  {
                    v371 = 0;
                    if ((v336 | 2) < v12)
                    {
                      goto LABEL_507;
                    }

LABEL_483:
                    v372 = 0;
                    if ((v336 | 3) >= v12)
                    {
                      goto LABEL_484;
                    }

LABEL_508:
                    v373 = v330[3];
                  }

                  else
                  {
                    v371 = v330[1];
                    if ((v336 | 2) >= v12)
                    {
                      goto LABEL_483;
                    }

LABEL_507:
                    v372 = v330[2];
                    if ((v336 | 3) < v12)
                    {
                      goto LABEL_508;
                    }

LABEL_484:
                    v373 = 0;
                  }

                  a6.i8[0] = *v330;
                  a6.i16[1] = v371;
                  a6.i16[2] = v372;
                  a6.i16[3] = v373;
                  *a6.i8 = vuzp1_s8(*a6.i8, 0xD0905010C080400);
                  v368 = a6.u32[0] << 32;
                }

                v330 += v253;
                ++v251;
                if (v541 % v535 < v111)
                {
LABEL_511:
                  if (v323 >= v13)
                  {
                    v369 = 0;
                  }

                  else
                  {
                    if ((v336 | 1) >= v12)
                    {
                      v381 = 0;
                      if ((v336 | 2) < v12)
                      {
                        goto LABEL_518;
                      }

LABEL_514:
                      v382 = 0;
                      if ((v336 | 3) >= v12)
                      {
                        goto LABEL_515;
                      }

LABEL_519:
                      v383 = v330[3];
                    }

                    else
                    {
                      v381 = v330[1];
                      if ((v336 | 2) >= v12)
                      {
                        goto LABEL_514;
                      }

LABEL_518:
                      v382 = v330[2];
                      if ((v336 | 3) < v12)
                      {
                        goto LABEL_519;
                      }

LABEL_515:
                      v383 = 0;
                    }

                    a6.i8[0] = *v330;
                    a6.i16[1] = v381;
                    a6.i16[2] = v382;
                    a6.i16[3] = v383;
                    *a6.i8 = vuzp1_s8(*a6.i8, 0xD0905010C080400);
                    v369 = a6.i32[0];
                  }

                  v330 += v253;
                  ++v251;
                  if (v326 % v535 < v111)
                  {
LABEL_522:
                    if (v327 >= v13)
                    {
                      v370 = 0;
                    }

                    else
                    {
                      if ((v336 | 1) >= v12)
                      {
                        v384 = 0;
                        if ((v336 | 2) < v12)
                        {
                          goto LABEL_529;
                        }

LABEL_525:
                        v385 = 0;
                        if ((v336 | 3) >= v12)
                        {
                          goto LABEL_526;
                        }

LABEL_530:
                        v386 = v330[3];
                      }

                      else
                      {
                        v384 = v330[1];
                        if ((v336 | 2) >= v12)
                        {
                          goto LABEL_525;
                        }

LABEL_529:
                        v385 = v330[2];
                        if ((v336 | 3) < v12)
                        {
                          goto LABEL_530;
                        }

LABEL_526:
                        v386 = 0;
                      }

                      a6.i8[0] = *v330;
                      a6.i16[1] = v384;
                      a6.i16[2] = v385;
                      a6.i16[3] = v386;
                      *a6.i8 = vuzp1_s8(*a6.i8, 0xD0905010C080400);
                      v370 = a6.u32[0] << 32;
                    }

                    ++v251;
LABEL_533:
                    a6.i32[0] = v370 | v369;
                    *a8.i8 = vzip1_s8(*a6.i8, 0xD0905010C080400);
                    a6.i32[0] = HIDWORD(v370);
                    *a9.i8 = vzip1_s8(*a6.i8, 0xD0905010C080400);
                    a10.i64[0] = v368 | v367;
                    goto LABEL_410;
                  }

LABEL_475:
                  v370 = 0;
                  goto LABEL_533;
                }

LABEL_474:
                v369 = 0;
                if (v326 % v535 < v111)
                {
                  goto LABEL_522;
                }

                goto LABEL_475;
              }
            }

            v368 = 0;
            if (v541 % v535 < v111)
            {
              goto LABEL_511;
            }

            goto LABEL_474;
          }

          v337 = 0;
          v338 = v320;
          v339 = v320 % v535;
          v340 = v546 % v535;
          v341 = v541 % v535;
          v342 = v326 % v535;
          v343 = v324;
          v331 = v325;
LABEL_428:
          v346 = &v324[v337];
          if (v339 >= v111)
          {
            v347 = 0;
            v251 = 0;
            if (v340 < v111)
            {
              goto LABEL_434;
            }

LABEL_430:
            v348 = 0;
            if (v341 >= v111)
            {
              goto LABEL_431;
            }

LABEL_438:
            if (v323 >= v13)
            {
              v349 = 0;
              v346 = (v346 + v555);
              ++v251;
              if (v342 < v111)
              {
                goto LABEL_442;
              }
            }

            else
            {
              v349 = *v346;
              v346 = (v346 + v555);
              ++v251;
              if (v342 < v111)
              {
                goto LABEL_442;
              }
            }
          }

          else
          {
            v347 = *v346;
            v346 = &v343[v255];
            v251 = 1;
            if (v340 >= v111)
            {
              goto LABEL_430;
            }

LABEL_434:
            if (v322 >= v13)
            {
              v348 = 0;
              v346 = (v346 + v255);
              ++v251;
              if (v341 < v111)
              {
                goto LABEL_438;
              }
            }

            else
            {
              v348 = *v346 << 32;
              v346 = (v346 + v255);
              ++v251;
              if (v341 < v111)
              {
                goto LABEL_438;
              }
            }

LABEL_431:
            v349 = 0;
            if (v342 < v111)
            {
LABEL_442:
              if (v327 >= v13)
              {
                v344 = 0;
              }

              else
              {
                v344 = *v346 << 32;
              }

              ++v251;
LABEL_427:
              v345.i64[0] = v348 | v347;
              v345.i64[1] = v344 | v349;
              a6 = vqtbl1q_s8(v345, xmmword_239D7E340);
              *v331 = a6;
              v337 += 4;
              v331 = (v331 + v254);
              v343 += 4;
              v255 = v556 * v557 * v12;
              if (v337 >= v257)
              {
                v330 = &v324[v337];
                v336 = v12 & 0xFFFFFFFFFFFFFFFCLL;
                v320 = v338;
                if (v551 < v12)
                {
                  goto LABEL_452;
                }

LABEL_411:
                ++v328;
                ++v325;
                v324 += v12;
                if (v328 == v557)
                {
                  v321 = v528 + 1;
                  v325 = &v498[v511];
                  v324 = &v503[v507];
                  if (v528 + 1 == v556)
                  {
                    goto LABEL_300;
                  }

                  continue;
                }

                goto LABEL_412;
              }

              goto LABEL_428;
            }
          }

          break;
        }

        v344 = 0;
        goto LABEL_427;
      }

LABEL_300:
      v250 = v481 + 1;
      result = (result + v476);
      v437 += v473;
      v258 = &v478[v476];
      v110 = v535;
      v252 = v532;
      if (v481 + 1 == v436)
      {
        return result;
      }
    }
  }

  if (!v14)
  {
    if (!v436)
    {
      return result;
    }

    v184 = 0;
    v185 = v12 == 0;
    if (!v556)
    {
      v185 = 1;
    }

    v186 = v557 == 0;
    if (v557)
    {
      v187 = v185;
    }

    else
    {
      v187 = 1;
    }

    v188 = v556 * v557;
    if (!v556)
    {
      v186 = 1;
    }

    v510 = v186;
    v189 = 4 * v556 * v557 * v13;
    v190 = v13 * v12 * v188;
    v191 = v13 * (v188 - 1);
    v192 = 2 * v188 - 1;
    v193 = v13 * v192;
    v194 = &a2[v13 * v192];
    v195 = v13 * (v192 + v188);
    v196 = &a2[v195];
    v197 = v194 + 1;
    v198 = v13 * (4 * v188 - 1);
    v199 = &a2[v198];
    v200 = v194 + 3;
    v201 = &a2[v191 + 3];
    v202 = &a2[v195 + 1];
    v494 = v198 + 6;
    v491 = v195 + 6;
    v203 = v190;
    v487 = v193 + 6;
    v484 = v191 + 6;
    v506 = v187;
    v501 = v190;
    while (1)
    {
      v539 = v196;
      v536 = v197;
      v531 = v199;
      v526 = v202;
      if (v13 < 4)
      {
        v238 = 0;
        v207 = v437;
        if (!v12)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v187)
        {
          goto LABEL_186;
        }

        v521 = v184;
        v204 = 0;
        v205 = v199;
        v206 = v201;
        v514 = v200;
        v518 = v201;
        v207 = v437;
        do
        {
          v550 = v204;
          v554 = v207;
          v208 = 0;
          v209 = v202;
          v210 = v205;
          v211 = v197;
          v212 = v196;
          v213 = v200;
          v214 = v206;
          do
          {
            if ((v208 | 1) >= v12)
            {
              v222 = 0;
              v223 = v214;
              do
              {
                v224 = v557;
                v225 = v223;
                do
                {
                  result->n128_u8[0] = *(v225 - 3);
                  result->n128_u8[1] = *(v225 - 2);
                  result->n128_u8[2] = *(v225 - 1);
                  result->n128_u8[3] = *v225;
                  ++result;
                  v225 -= v13;
                  --v224;
                }

                while (v224);
                ++v222;
                v223 -= v557 * v13;
              }

              while (v222 != v556);
            }

            else if ((v208 | 2) >= v12)
            {
              v226 = 0;
              v227 = v213;
              v228 = v214;
              do
              {
                v229 = v227;
                v230 = v228;
                v231 = v557;
                do
                {
                  result->n128_u8[0] = *(v230 - 3);
                  result->n128_u8[1] = *(v230 - 2);
                  result->n128_u8[2] = *(v230 - 1);
                  result->n128_u8[3] = *v230;
                  result->n128_u8[4] = *(v229 - 3);
                  result->n128_u8[5] = *(v229 - 2);
                  result->n128_u8[6] = *(v229 - 1);
                  result->n128_u8[7] = *v229;
                  ++result;
                  v230 -= v13;
                  v229 -= v13;
                  --v231;
                }

                while (v231);
                ++v226;
                v228 -= v557 * v13;
                v227 -= v557 * v13;
              }

              while (v226 != v556);
            }

            else if ((v208 | 3) >= v12)
            {
              v232 = 0;
              v233 = v211;
              v234 = v212;
              v235 = v214;
              do
              {
                v236 = 0;
                v237 = v557;
                do
                {
                  result->n128_u8[0] = v235[v236 - 3];
                  result->n128_u8[1] = v235[v236 - 2];
                  result->n128_u8[2] = v235[v236 - 1];
                  result->n128_u8[3] = v235[v236];
                  result->n128_u8[4] = v233[v236 - 1];
                  result->n128_u8[5] = v233[v236];
                  result->n128_u8[6] = v233[v236 + 1];
                  result->n128_u8[7] = v233[v236 + 2];
                  result->n128_u8[8] = v234[v236];
                  result->n128_u8[9] = v234[v236 + 1];
                  result->n128_u8[10] = v234[v236 + 2];
                  result->n128_u8[11] = v234[v236 + 3];
                  ++result;
                  v236 -= v13;
                  --v237;
                }

                while (v237);
                ++v232;
                v235 -= v557 * v13;
                v234 -= v557 * v13;
                v233 -= v557 * v13;
              }

              while (v232 != v556);
            }

            else
            {
              v215 = 0;
              v216 = v209;
              v217 = v213;
              v218 = v210;
              v219 = v214;
              do
              {
                v220 = 0;
                v221 = v557;
                do
                {
                  result->n128_u8[0] = v219[v220 - 3];
                  result->n128_u8[1] = v219[v220 - 2];
                  result->n128_u8[2] = v219[v220 - 1];
                  result->n128_u8[3] = v219[v220];
                  result->n128_u8[4] = v217[v220 - 3];
                  result->n128_u8[5] = v217[v220 - 2];
                  result->n128_u8[6] = v217[v220 - 1];
                  result->n128_u8[7] = v217[v220];
                  result->n128_u8[8] = *(v216 + v220 - 1);
                  result->n128_u8[9] = *(v216 + v220);
                  result->n128_u8[10] = *(v216 + v220 + 1);
                  result->n128_u8[11] = *(v216 + v220 + 2);
                  result->n128_u8[12] = v218[v220];
                  result->n128_u8[13] = v218[v220 + 1];
                  result->n128_u8[14] = v218[v220 + 2];
                  result->n128_u8[15] = v218[v220 + 3];
                  ++result;
                  v220 -= v13;
                  --v221;
                }

                while (v221);
                ++v215;
                v219 -= v557 * v13;
                v218 -= v557 * v13;
                v217 -= v557 * v13;
                v216 -= v557 * v13;
              }

              while (v215 != v556);
            }

            v208 += 4;
            v214 += v189;
            v213 += v189;
            v212 += v189;
            v211 += v189;
            v210 += v189;
            v209 += v189;
          }

          while (v208 < v12);
          v204 = v550 + 4;
          v207 = v554 + 4;
          v206 += 4;
          v200 += 4;
          v196 += 4;
          v197 += 4;
          v205 += 4;
          v202 += 4;
        }

        while (v550 + 4 < (v13 - 3));
        v238 = v13 & 0xFFFFFFFFFFFFFFFCLL;
        v184 = v521;
        v187 = v506;
        v203 = v501;
        v201 = v518;
        v200 = v514;
        if (!v12)
        {
          goto LABEL_186;
        }
      }

      v239 = v13 - v238;
      if (v13 > v238 && !v510)
      {
        v240 = 0;
        v241 = 0;
        v242 = &v207[v494];
        v243 = &v207[v491];
        v244 = &v207[v487];
        v245 = &v207[v484];
        do
        {
          v246 = 0;
          v247 = v240;
          do
          {
            v248 = v557;
            v249 = v247;
            do
            {
              if (v239 > 3)
              {
                if (v239 > 5)
                {
                  if (v239 != 6)
                  {
                    if (v239 != 7)
                    {
                      goto LABEL_250;
                    }

                    result->n128_u8[6] = v245[v249];
                  }

                  result->n128_u8[5] = v245[v249 - 1];
LABEL_245:
                  result->n128_u8[4] = v245[v249 - 2];
                }

                else if (v239 != 4)
                {
                  goto LABEL_245;
                }

                result->n128_u8[3] = v245[v249 - 3];
LABEL_247:
                result->n128_u8[2] = v245[v249 - 4];
LABEL_248:
                result->n128_u8[1] = v245[v249 - 5];
LABEL_249:
                result->n128_u8[0] = v245[v249 - 6];
                goto LABEL_250;
              }

              switch(v239)
              {
                case 1:
                  goto LABEL_249;
                case 2:
                  goto LABEL_248;
                case 3:
                  goto LABEL_247;
              }

LABEL_250:
              if ((v241 | 1) >= v12)
              {
                goto LABEL_268;
              }

              if (v239 > 3)
              {
                if (v239 > 5)
                {
                  if (v239 != 6)
                  {
                    if (v239 != 7)
                    {
                      goto LABEL_268;
                    }

                    result->n128_u8[10] = v244[v249];
                  }

                  result->n128_u8[9] = v244[v249 - 1];
LABEL_263:
                  result->n128_u8[8] = v244[v249 - 2];
                }

                else if (v239 != 4)
                {
                  goto LABEL_263;
                }

                result->n128_u8[7] = v244[v249 - 3];
LABEL_265:
                result->n128_u8[6] = v244[v249 - 4];
LABEL_266:
                result->n128_u8[5] = v244[v249 - 5];
LABEL_267:
                result->n128_u8[4] = v244[v249 - 6];
                goto LABEL_268;
              }

              switch(v239)
              {
                case 1:
                  goto LABEL_267;
                case 2:
                  goto LABEL_266;
                case 3:
                  goto LABEL_265;
              }

LABEL_268:
              if ((v241 | 2) >= v12)
              {
                goto LABEL_286;
              }

              if (v239 > 3)
              {
                if (v239 > 5)
                {
                  if (v239 != 6)
                  {
                    if (v239 != 7)
                    {
                      goto LABEL_286;
                    }

                    result->n128_u8[14] = v243[v249];
                  }

                  result->n128_u8[13] = v243[v249 - 1];
LABEL_281:
                  result->n128_u8[12] = v243[v249 - 2];
                }

                else if (v239 != 4)
                {
                  goto LABEL_281;
                }

                result->n128_u8[11] = v243[v249 - 3];
LABEL_283:
                result->n128_u8[10] = v243[v249 - 4];
LABEL_284:
                result->n128_u8[9] = v243[v249 - 5];
LABEL_285:
                result->n128_u8[8] = v243[v249 - 6];
                goto LABEL_286;
              }

              switch(v239)
              {
                case 1:
                  goto LABEL_285;
                case 2:
                  goto LABEL_284;
                case 3:
                  goto LABEL_283;
              }

LABEL_286:
              if ((v241 | 3) < v12)
              {
                if (v239 <= 3)
                {
                  switch(v239)
                  {
                    case 1:
                      goto LABEL_231;
                    case 2:
                      goto LABEL_230;
                    case 3:
                      goto LABEL_229;
                  }
                }

                else
                {
                  if (v239 <= 5)
                  {
                    if (v239 != 4)
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_228;
                  }

                  if (v239 == 6)
                  {
                    goto LABEL_226;
                  }

                  if (v239 == 7)
                  {
                    result[1].n128_u8[2] = v242[v249];
LABEL_226:
                    result[1].n128_u8[1] = v242[v249 - 1];
LABEL_227:
                    result[1].n128_u8[0] = v242[v249 - 2];
LABEL_228:
                    result->n128_u8[15] = v242[v249 - 3];
LABEL_229:
                    result->n128_u8[14] = v242[v249 - 4];
LABEL_230:
                    result->n128_u8[13] = v242[v249 - 5];
LABEL_231:
                    result->n128_u8[12] = v242[v249 - 6];
                  }
                }
              }

              ++result;
              v249 -= v13;
              --v248;
            }

            while (v248);
            ++v246;
            v247 -= v557 * v13;
          }

          while (v246 != v556);
          v241 += 4;
          v240 += v189;
        }

        while (v241 < v12);
      }

LABEL_186:
      ++v184;
      v437 += v203;
      v201 += v203;
      v200 += v203;
      v196 = &v539[v203];
      v197 = &v536[v203];
      v199 = &v531[v203];
      v202 = v526 + v203;
      if (v184 == v436)
      {
        return result;
      }
    }
  }

  if (v436)
  {
    v15 = 0;
    v16 = v12 == 0;
    v17 = v556 * v557;
    if (!v556)
    {
      v16 = 1;
    }

    if (!v557)
    {
      v16 = 1;
    }

    v417 = v16;
    v18 = 2 * v13;
    v19 = 4 * v17;
    if (v556)
    {
      v20 = v557 == 0;
    }

    else
    {
      v20 = 1;
    }

    v416 = v20;
    v21 = -v557;
    v22 = 2 * v17 - 1;
    v402 = ~v17 + 8 * v17;
    v401 = 6 * v17 - 1;
    v400 = v17 * (v13 + 7) - 1;
    v399 = v17 * (v13 + 6) - 1;
    v398 = v17 * (v13 + 5) - 1;
    v397 = v17 * (v18 + 7) - 1;
    v395 = v17 * (v18 + 5) - 1;
    v396 = v17 * (v18 + 6) - 1;
    v394 = v17 * (3 * v13 + 7) - 1;
    v392 = v17 * (3 * v13 + 5) - 1;
    v393 = v17 * (3 * v13 + 6) - 1;
    v418 = v13 * v12 * v17;
    v388 = v19 - 1 + v17;
    v438 = v13 - 3;
    v414 = v556 * v557 * (v13 + 4) - 1;
    v415 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = &a2[v414];
    v412 = v17 * (v13 + 2) - 1;
    v413 = v17 * (v13 + 3) - 1;
    v24 = &v437[v413];
    v25 = &v437[v412];
    v387 = v17 - 1 + v17 * v13;
    v26 = &v437[v387];
    v410 = v17 * (v18 + 3) - 1;
    v411 = v17 * (2 * v13 + 4) - 1;
    v27 = &v437[v411];
    v28 = &v437[v410];
    v408 = v17 - 1;
    v409 = v17 * (v18 + 2) - 1;
    v29 = &v437[v409];
    v406 = v17 * (3 * v13 + 4) - 1;
    v407 = v17 * ((2 * v13) | 1) - 1;
    v30 = &v437[v407];
    v31 = &v437[v406];
    v404 = v17 * (3 * v13 + 2) - 1;
    v405 = v17 * (3 * v13 + 3) - 1;
    v32 = &v437[v405];
    v33 = &v437[v404];
    v390 = v19 - 1;
    v391 = v17 - 1 + v17 * 3 * v13;
    v34 = &v437[v391];
    v35 = &v437[v19 - 1];
    v389 = v22 + v17;
    v36 = &v437[v22 + v17];
    v403 = v22;
    v37 = &v437[v22];
    v38 = &v437[v17 - 1];
    v439 = 4 * v17;
    v486 = v19 * v13;
    v523 = v13;
    while (1)
    {
      v434 = v23;
      v435 = v15;
      v432 = v25;
      v433 = v24;
      v430 = v27;
      v431 = v26;
      v428 = v29;
      v429 = v28;
      v426 = v31;
      v427 = v30;
      v424 = v33;
      v425 = v32;
      v422 = v35;
      v423 = v34;
      v420 = v37;
      v421 = v36;
      v419 = v38;
      if (v13 >= 4)
      {
        if (v417)
        {
          goto LABEL_12;
        }

        v39 = 0;
        v40 = v31;
        v41 = v23;
        v42 = v437;
LABEL_17:
        v479 = v39;
        v482 = v42;
        v43 = 0;
        v477 = v38;
        v474 = v37;
        v471 = v36;
        v468 = v35;
        v466 = v34;
        v464 = v33;
        v462 = v32;
        v460 = v40;
        v458 = v30;
        v454 = v28;
        v456 = v29;
        v450 = v26;
        v452 = v27;
        v44 = v27;
        v45 = v26;
        v446 = v24;
        v448 = v25;
        v46 = v25;
        v47 = v24;
        v444 = v41;
LABEL_19:
        v48 = 0;
        v49 = v43 | 1;
        v50 = v43 | 2;
        v558 = v43;
        v51 = v43 | 3;
        v52 = v38;
        v547 = v37;
        v542 = v36;
        v537 = v35;
        v533 = v34;
        v529 = v33;
        v53 = v32;
        v54 = v40;
        v516 = v30;
        v55 = v30;
        v512 = v29;
        v56 = v29;
        v508 = v28;
        v57 = v28;
        v504 = v44;
        v58 = v44;
        v499 = v45;
        v59 = v45;
        v60 = v46;
        v61 = v47;
        v489 = v41;
LABEL_21:
        v62 = 0;
        while (1)
        {
          a4.i16[0] = v52[v62];
          a4.i16[1] = v37[v62];
          a4.i8[4] = v36[v62];
          a4.i8[6] = v35[v62];
          *a4.i8 = vmovn_s16(a4);
          result->n128_u32[0] = a4.i32[0];
          if (v49 < v12)
          {
            a4.i16[0] = v59[v62];
            a4.i16[1] = v60[v62];
            a4.i8[4] = v61[v62];
            a4.i8[6] = v41[v62];
            *a4.i8 = vmovn_s16(a4);
            result->n128_u32[1] = a4.i32[0];
            if (v50 >= v12)
            {
LABEL_25:
              if (v51 < v12)
              {
                goto LABEL_29;
              }

              goto LABEL_22;
            }
          }

          else if (v50 >= v12)
          {
            goto LABEL_25;
          }

          a4.i16[0] = v55[v62];
          a4.i16[1] = v56[v62];
          a4.i8[4] = v57[v62];
          a4.i8[6] = v58[v62];
          *a4.i8 = vmovn_s16(a4);
          result->n128_u32[2] = a4.i32[0];
          if (v51 < v12)
          {
LABEL_29:
            a4.i16[0] = v34[v62];
            a4.i16[1] = v33[v62];
            a4.i8[4] = v53[v62];
            a4.i8[6] = v54[v62];
            *a4.i8 = vmovn_s16(a4);
            result->n128_u32[3] = a4.i32[0];
          }

LABEL_22:
          ++result;
          if (v21 == --v62)
          {
            ++v48;
            v41 += v21;
            v61 += v21;
            v60 += v21;
            v59 += v21;
            v58 += v21;
            v57 += v21;
            v56 += v21;
            v55 += v21;
            v54 += v21;
            v53 += v21;
            v33 += v21;
            v34 += v21;
            v35 += v21;
            v36 += v21;
            v37 += v21;
            v52 += v21;
            if (v48 != v556)
            {
              goto LABEL_21;
            }

            v43 = v558 + 4;
            v41 = &v489[v486];
            v47 += v486;
            v45 = &v499[v486];
            v44 = &v504[v486];
            v28 = &v508[v486];
            v29 = &v512[v486];
            v30 = &v516[v486];
            v40 += v486;
            v32 += v486;
            v33 = &v529[v486];
            v34 = &v533[v486];
            v35 = &v537[v486];
            v36 = &v542[v486];
            v37 = &v547[v486];
            v38 += v486;
            v46 += v486;
            if (v558 + 4 < v12)
            {
              goto LABEL_19;
            }

            v39 = v479 + 4;
            v42 = &v482[v439];
            v41 = &v444[v439];
            v24 = &v446[v439];
            v25 = &v448[v439];
            v26 = &v450[v439];
            v27 = &v452[v439];
            v28 = &v454[v439];
            v29 = &v456[v439];
            v30 = &v458[v439];
            v40 = &v460[v439];
            v32 = &v462[v439];
            v33 = &v464[v439];
            v34 = &v466[v439];
            v35 = &v468[v439];
            v36 = &v471[v439];
            v37 = &v474[v439];
            v38 = &v477[v439];
            if (v479 + 4 < v438)
            {
              goto LABEL_17;
            }

            v63 = v415;
            v13 = v523;
            if (v12)
            {
              goto LABEL_33;
            }

            goto LABEL_12;
          }
        }
      }

      v63 = 0;
      v42 = v437;
      if (!v12)
      {
        goto LABEL_12;
      }

LABEL_33:
      v64 = __OFSUB__(v13, v63);
      v65 = v13 - v63;
      if (!((v65 < 0) ^ v64 | (v65 == 0)) && !v416)
      {
        break;
      }

LABEL_12:
      v15 = v435 + 1;
      v437 += v418;
      v23 = &v434[v418];
      v24 = &v433[v418];
      v25 = &v432[v418];
      v26 = &v431[v418];
      v27 = &v430[v418];
      v28 = &v429[v418];
      v29 = &v428[v418];
      v30 = &v427[v418];
      v31 = &v426[v418];
      v32 = &v425[v418];
      v33 = &v424[v418];
      v34 = &v423[v418];
      v35 = &v422[v418];
      v36 = &v421[v418];
      v37 = &v420[v418];
      v38 = &v419[v418];
      if (v435 + 1 == v436)
      {
        return result;
      }
    }

    v66 = 0;
    v67 = &v42[v402];
    v68 = &v42[v401];
    v513 = &v42[v388];
    v509 = &v42[v390];
    v505 = &v42[v389];
    v500 = &v42[v403];
    v69 = &v42[v400];
    v496 = &v42[v399];
    v493 = &v42[v398];
    v70 = &v42[v414];
    v71 = &v42[v413];
    v72 = &v42[v412];
    v73 = &v42[v387];
    v74 = &v42[v397];
    v75 = &v42[v396];
    v76 = &v42[v395];
    v77 = &v42[v411];
    v78 = &v42[v410];
    v79 = &v42[v409];
    v80 = &v42[v407];
    v81 = &v42[v394];
    v82 = &v42[v393];
    v83 = &v42[v392];
    v84 = &v42[v406];
    v85 = &v42[v405];
    v86 = &v42[v404];
    v87 = &v42[v391];
    v88 = &v42[v408];
LABEL_37:
    v483 = v68;
    v490 = v67;
    v517 = 0;
    v89 = v66 | 1;
    v90 = v66 | 2;
    v480 = v66;
    v91 = v66 | 3;
    v92 = v88;
    v93 = v86;
    v94 = v82;
    v440 = v92;
    v441 = v87;
    v95 = v92;
    v96 = v81;
    v97 = v76;
    v98 = v87;
    v99 = v75;
    v442 = v93;
    v443 = v85;
    v100 = v93;
    v445 = v84;
    v447 = v83;
    v559 = v83;
    v449 = v94;
    v451 = v96;
    v548 = v94;
    v530 = v96;
    v453 = v80;
    v455 = v79;
    v457 = v78;
    v459 = v77;
    v461 = v97;
    v552 = v97;
    v463 = v99;
    v543 = v99;
    v465 = v74;
    v525 = v74;
    v467 = v73;
    v469 = v72;
    v472 = v71;
    v475 = v70;
    v101 = v493;
    v538 = v496;
    v520 = v69;
    v102 = v500;
    v103 = v505;
    v104 = v509;
    v105 = v513;
    v106 = v483;
    v534 = v490;
LABEL_39:
    v107 = 0;
    while (v65 <= 3)
    {
      switch(v65)
      {
        case 1:
          goto LABEL_63;
        case 2:
          goto LABEL_62;
        case 3:
          goto LABEL_61;
      }

LABEL_64:
      if (v89 >= v12)
      {
        goto LABEL_82;
      }

      if (v65 > 3)
      {
        if (v65 > 5)
        {
          if (v65 != 6)
          {
            if (v65 != 7)
            {
              goto LABEL_82;
            }

            result->n128_u8[10] = v520[v107];
          }

          result->n128_u8[9] = v538[v107];
LABEL_77:
          result->n128_u8[8] = v101[v107];
        }

        else if (v65 != 4)
        {
          goto LABEL_77;
        }

        result->n128_u8[7] = v70[v107];
LABEL_79:
        result->n128_u8[6] = v71[v107];
LABEL_80:
        result->n128_u8[5] = v72[v107];
LABEL_81:
        result->n128_u8[4] = v73[v107];
        goto LABEL_82;
      }

      switch(v65)
      {
        case 1:
          goto LABEL_81;
        case 2:
          goto LABEL_80;
        case 3:
          goto LABEL_79;
      }

LABEL_82:
      if (v90 >= v12)
      {
        goto LABEL_100;
      }

      if (v65 > 3)
      {
        if (v65 > 5)
        {
          if (v65 != 6)
          {
            if (v65 != 7)
            {
              goto LABEL_100;
            }

            result->n128_u8[14] = v525[v107];
          }

          result->n128_u8[13] = v543[v107];
LABEL_95:
          result->n128_u8[12] = v552[v107];
        }

        else if (v65 != 4)
        {
          goto LABEL_95;
        }

        result->n128_u8[11] = v77[v107];
LABEL_97:
        result->n128_u8[10] = v78[v107];
LABEL_98:
        result->n128_u8[9] = v79[v107];
LABEL_99:
        result->n128_u8[8] = v80[v107];
        goto LABEL_100;
      }

      switch(v65)
      {
        case 1:
          goto LABEL_99;
        case 2:
          goto LABEL_98;
        case 3:
          goto LABEL_97;
      }

LABEL_100:
      if (v91 >= v12)
      {
        goto LABEL_46;
      }

      if (v65 > 3)
      {
        if (v65 > 5)
        {
          if (v65 != 6)
          {
            if (v65 != 7)
            {
              goto LABEL_46;
            }

            result[1].n128_u8[2] = v530[v107];
          }

          result[1].n128_u8[1] = v548[v107];
LABEL_41:
          result[1].n128_u8[0] = v559[v107];
        }

        else if (v65 != 4)
        {
          goto LABEL_41;
        }

        result->n128_u8[15] = v84[v107];
LABEL_43:
        result->n128_u8[14] = v85[v107];
        goto LABEL_44;
      }

      if (v65 == 1)
      {
        goto LABEL_45;
      }

      if (v65 != 2)
      {
        if (v65 != 3)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

LABEL_44:
      result->n128_u8[13] = v100[v107];
LABEL_45:
      result->n128_u8[12] = v98[v107];
LABEL_46:
      ++result;
      if (v21 == --v107)
      {
        v534 += v21;
        v106 += v21;
        v105 += v21;
        v104 += v21;
        v103 += v21;
        v102 += v21;
        v520 += v21;
        v538 += v21;
        v101 += v21;
        v70 += v21;
        v71 += v21;
        v72 += v21;
        v73 += v21;
        v525 += v21;
        v543 += v21;
        v552 += v21;
        v77 += v21;
        v78 += v21;
        v79 += v21;
        v80 += v21;
        v530 += v21;
        v548 += v21;
        v559 += v21;
        v84 += v21;
        v85 += v21;
        v100 += v21;
        v98 += v21;
        v95 += v21;
        if (++v517 == v556)
        {
          v66 = v480 + 4;
          v67 = &v490[v486];
          v68 = &v483[v486];
          v513 += v486;
          v509 += v486;
          v505 += v486;
          v500 += v486;
          v69 += v486;
          v496 += v486;
          v493 += v486;
          v70 = &v475[v486];
          v71 = &v472[v486];
          v72 = &v469[v486];
          v73 = &v467[v486];
          v74 = &v465[v486];
          v75 = &v463[v486];
          v76 = &v461[v486];
          v77 = &v459[v486];
          v78 = &v457[v486];
          v79 = &v455[v486];
          v80 = &v453[v486];
          v81 = &v451[v486];
          v82 = &v449[v486];
          v83 = &v447[v486];
          v84 = &v445[v486];
          v85 = &v443[v486];
          v86 = &v442[v486];
          v87 = &v441[v486];
          v88 = &v440[v486];
          if (v480 + 4 >= v12)
          {
            goto LABEL_12;
          }

          goto LABEL_37;
        }

        goto LABEL_39;
      }
    }

    if (v65 > 5)
    {
      if (v65 != 6)
      {
        if (v65 != 7)
        {
          goto LABEL_64;
        }

        result->n128_u8[6] = v534[v107];
      }

      result->n128_u8[5] = v106[v107];
    }

    else if (v65 == 4)
    {
      goto LABEL_60;
    }

    result->n128_u8[4] = v105[v107];
LABEL_60:
    result->n128_u8[3] = v104[v107];
LABEL_61:
    result->n128_u8[2] = v103[v107];
LABEL_62:
    result->n128_u8[1] = v102[v107];
LABEL_63:
    result->n128_u8[0] = v95[v107];
    goto LABEL_64;
  }

  return result;
}

int8x16_t *sub_239C2F57C(int8x16_t *result, _BYTE *a2, uint64_t a3, int16x8_t a4)
{
  v628 = a2;
  v4 = *(a3 + 8);
  v5 = *(a3 + 32);
  v627 = *(a3 + 48);
  v915 = *(a3 + 56);
  v818 = *(a3 + 64);
  v6 = *(a3 + 108);
  v914 = v5;
  if (*(a3 + 104) != 1)
  {
    v169 = *(a3 + 16);
    v170 = *(a3 + 40);
    v171 = *(a3 + 72);
    v172 = *(a3 + 80);
    v830 = v172;
    if (v6)
    {
      if (v627 && v4 && v915 && v5 && v818)
      {
        v173 = 0;
        v174 = v818 * v915;
        v175 = 32 * v818 * v915;
        v176 = 8 * v818 * v915;
        v177 = v818 * v4 * v915;
        v178 = v818 * v915 * v169;
        v179 = 4 * v178;
        v180 = 32 * v915;
        v906 = v178 * v170;
        v900 = v915 * v5 * v818 * v4;
        do
        {
          v181 = 0;
          v911 = v173;
          v182 = v173 * v5;
          v183 = v628;
          v184 = result;
          do
          {
            v185 = v181 + v182;
            if ((v181 + v182) % v172 < v171)
            {
              v186 = 0;
              v187 = v183;
              v188 = v184;
              do
              {
                v189 = 0;
                v190 = v187;
                v191 = v188;
                do
                {
                  v192 = 0;
                  v193 = 0;
                  v194 = 8;
                  v195 = v190;
                  v196 = v191;
                  do
                  {
                    if (v4 >= v194)
                    {
                      v197 = v194;
                    }

                    else
                    {
                      v197 = v4;
                    }

                    v198 = v197 + v192;
                    v199 = v195;
                    v200 = v196;
                    do
                    {
                      v200->i8[0] = *v199;
                      v200 = (v200 + 4);
                      v199 += v174;
                      --v198;
                    }

                    while (v198);
                    v193 += 8;
                    v196 = (v196 + v175);
                    v195 += v176;
                    v194 += 8;
                    v192 -= 8;
                  }

                  while (v193 < v4);
                  ++v189;
                  v191 += 2;
                  ++v190;
                }

                while (v189 != v915);
                ++v186;
                v188 = (v188 + v180);
                v187 += v915;
              }

              while (v186 != v818);
              v183 += v177;
              v5 = v914;
              v172 = v830;
            }

            if ((v181 | 1) < v5 && (v185 + 1) % v172 < v171)
            {
              v201 = 0;
              v202 = &v184->i8[1];
              v203 = v183;
              do
              {
                v204 = 0;
                v205 = v203;
                v206 = v202;
                do
                {
                  v207 = 0;
                  v208 = 0;
                  v209 = 8;
                  v210 = v205;
                  v211 = v206;
                  do
                  {
                    v212 = 0;
                    if (v4 >= v209)
                    {
                      v213 = v209;
                    }

                    else
                    {
                      v213 = v4;
                    }

                    v214 = v213 + v207;
                    v215 = v210;
                    do
                    {
                      v211[v212] = *v215;
                      v215 += v174;
                      v212 += 4;
                      --v214;
                    }

                    while (v214);
                    v208 += 8;
                    v211 += v175;
                    v210 += v176;
                    v209 += 8;
                    v207 -= 8;
                  }

                  while (v208 < v4);
                  ++v204;
                  v206 += 32;
                  ++v205;
                }

                while (v204 != v915);
                ++v201;
                v202 += v180;
                v203 += v915;
              }

              while (v201 != v818);
              v183 += v177;
              v5 = v914;
              v172 = v830;
            }

            if ((v181 | 2) < v5 && (v185 + 2) % v172 < v171)
            {
              v216 = 0;
              v217 = &v184->i8[2];
              v218 = v183;
              do
              {
                v219 = 0;
                v220 = v218;
                v221 = v217;
                do
                {
                  v222 = 0;
                  v223 = 0;
                  v224 = 8;
                  v225 = v220;
                  v226 = v221;
                  do
                  {
                    v227 = 0;
                    if (v4 >= v224)
                    {
                      v228 = v224;
                    }

                    else
                    {
                      v228 = v4;
                    }

                    v229 = v228 + v222;
                    v230 = v225;
                    do
                    {
                      v226[v227] = *v230;
                      v230 += v174;
                      v227 += 4;
                      --v229;
                    }

                    while (v229);
                    v223 += 8;
                    v226 += v175;
                    v225 += v176;
                    v224 += 8;
                    v222 -= 8;
                  }

                  while (v223 < v4);
                  ++v219;
                  v221 += 32;
                  ++v220;
                }

                while (v219 != v915);
                ++v216;
                v217 += v180;
                v218 += v915;
              }

              while (v216 != v818);
              v183 += v177;
              v5 = v914;
              v172 = v830;
            }

            if ((v181 | 3) < v5 && (v185 + 3) % v172 < v171)
            {
              v231 = 0;
              v232 = &v184->i8[3];
              v233 = v183;
              do
              {
                v234 = 0;
                v235 = v233;
                v236 = v232;
                do
                {
                  v237 = 0;
                  v238 = 0;
                  v239 = 8;
                  v240 = v235;
                  v241 = v236;
                  do
                  {
                    v242 = 0;
                    if (v4 >= v239)
                    {
                      v243 = v239;
                    }

                    else
                    {
                      v243 = v4;
                    }

                    v244 = v243 + v237;
                    v245 = v240;
                    do
                    {
                      v241[v242] = *v245;
                      v245 += v174;
                      v242 += 4;
                      --v244;
                    }

                    while (v244);
                    v238 += 8;
                    v241 += v175;
                    v240 += v176;
                    v239 += 8;
                    v237 -= 8;
                  }

                  while (v238 < v4);
                  ++v234;
                  v236 += 32;
                  ++v235;
                }

                while (v234 != v915);
                ++v231;
                v232 += v180;
                v233 += v915;
              }

              while (v231 != v818);
              v183 += v177;
              v5 = v914;
              v172 = v830;
            }

            v181 += 4;
            v184 = (v184 + v179);
          }

          while (v181 < v5);
          v173 = v911 + 1;
          result = (result + v906);
          v628 += v900;
        }

        while (v911 + 1 != v627);
      }

      return result;
    }

    if (!v627)
    {
      return result;
    }

    v314 = 0;
    v315 = 0;
    v316 = *(a3 + 88);
    v764 = v5 - 3;
    v317 = v818 * v4 * v915;
    v318 = 32 * v818 * v915;
    v319 = v818 * v915 * v4;
    v320 = v818 * v915 * v169;
    v760 = 4 * v320;
    v321 = v4 - 7;
    v790 = 2 * v915;
    v786 = v915 * v4;
    v745 = v320 * v170;
    v741 = v915 * v5 * v818 * v4;
    v908 = v4 & 0xFFFFFFFFFFFFFFF8;
    v322 = &result->i8[(((v5 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4) * v169 * v818 * v915];
    v913 = v319;
    v738 = 2 * v319;
    v735 = 3 * v319;
    v827 = v316;
    v749 = ((v5 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    while (1)
    {
      v757 = v314;
      v753 = v322;
      if (v5 < 4)
      {
        v415 = 0;
        v325 = result;
        v324 = v628;
        if (v5 > 0)
        {
          goto LABEL_611;
        }

        goto LABEL_446;
      }

      if (!v818)
      {
        goto LABEL_446;
      }

      v768 = v314 * v5;
      if (!v915)
      {
        goto LABEL_446;
      }

      v323 = 0;
      v324 = v628;
      v325 = result;
      do
      {
        v326 = 0;
        v772 = v323;
        v327 = v323 + v768;
        v328 = v323 + v768 + 1;
        v329 = v323 + v768 + 2;
        v330 = v323 + v768 + 3;
        v781 = v324;
        v331 = v324;
        v776 = v325;
        v332 = v325;
        v822 = v323 + v768;
        v816 = v328;
        v811 = v329;
        v806 = v330;
        do
        {
          v802 = v326;
          v333 = 0;
          v798 = v331;
          v794 = v332;
          do
          {
            if (v4 < 8)
            {
              v341 = 0;
              v339 = v332;
              v338 = v331;
              if (v4 > 0)
              {
                goto LABEL_480;
              }

              goto LABEL_458;
            }

            if (v316 != 1)
            {
              v342 = 0;
              v343 = v328 % v172;
              v344 = v329 % v172;
              v345 = v330 % v172;
              v346 = v331;
              v339 = v332;
              while (1)
              {
                v350 = &v331[v342];
                if (v327 % v172 >= v171)
                {
                  v315 = 0;
                  v351 = 0;
                  if (v343 >= v171)
                  {
LABEL_471:
                    v352 = 0;
                    if (v344 >= v171)
                    {
                      goto LABEL_472;
                    }

                    goto LABEL_476;
                  }
                }

                else
                {
                  v351 = *v350;
                  v350 = &v346[v317];
                  v315 = 1;
                  if (v343 >= v171)
                  {
                    goto LABEL_471;
                  }
                }

                v352 = *v350;
                v350 += v317;
                ++v315;
                if (v344 >= v171)
                {
LABEL_472:
                  *&v353 = 0;
                  if (v345 >= v171)
                  {
                    goto LABEL_477;
                  }

                  goto LABEL_467;
                }

LABEL_476:
                *&v353 = *v350;
                v350 += v317;
                ++v315;
                if (v345 >= v171)
                {
LABEL_477:
                  v347 = 0;
                  goto LABEL_468;
                }

LABEL_467:
                v347 = *v350;
                ++v315;
LABEL_468:
                v348 = v352;
                *(&v353 + 1) = v347;
                v349 = v353;
                *v339 = vqtbl2q_s8(*&v351, xmmword_239D7E380);
                v339[1] = vqtbl2q_s8(*&v351, xmmword_239D7E390);
                v342 += 8;
                v339 = (v339 + v318);
                v346 += 8;
                if (v342 >= v321)
                {
                  v338 = &v331[v342];
                  goto LABEL_479;
                }
              }
            }

            v337 = 0;
            v338 = v331;
            v339 = v332;
            do
            {
              v918.val[0].i64[0] = *v338;
              v340 = &v338[v317 + v317];
              v918.val[1].i64[0] = *v340;
              v918.val[0].i64[1] = *&v338[v317];
              v918.val[1].i64[1] = *(v340 + v317);
              *v339 = vqtbl2q_s8(v918, xmmword_239D7E380);
              v339[1] = vqtbl2q_s8(v918, xmmword_239D7E390);
              v337 += 8;
              v339 = (v339 + v318);
              v338 += 8;
            }

            while (v337 < v321);
            v315 = 4;
LABEL_479:
            v341 = v4 & 0xFFFFFFFFFFFFFFF8;
            if (v908 < v4)
            {
LABEL_480:
              if (v316 == 1)
              {
                v354 = v341 | 1;
                if ((v341 | 1) >= v4)
                {
                  v902 = 0;
                  v355 = v341 | 2;
                  if ((v341 | 2) < v4)
                  {
                    goto LABEL_520;
                  }

LABEL_483:
                  v896 = 0;
                  v356 = v341 | 3;
                  if ((v341 | 3) >= v4)
                  {
                    goto LABEL_484;
                  }

LABEL_521:
                  v891 = v338[3];
                  v357 = v341 | 4;
                  if ((v341 | 4) < v4)
                  {
                    goto LABEL_522;
                  }

LABEL_485:
                  v886 = 0;
                  v358 = v341 | 5;
                  if ((v341 | 5) >= v4)
                  {
                    goto LABEL_486;
                  }

LABEL_523:
                  v881 = v338[5];
                  v359 = v341 | 6;
                  if ((v341 | 6) < v4)
                  {
                    goto LABEL_524;
                  }

LABEL_487:
                  v876 = 0;
                  v360 = v341 | 7;
                  if ((v341 | 7) >= v4)
                  {
                    goto LABEL_488;
                  }

LABEL_525:
                  v871 = v338[7];
                  v361 = &v338[v913];
                  if (v354 < v4)
                  {
                    goto LABEL_526;
                  }

LABEL_489:
                  v866 = 0;
                  if (v355 >= v4)
                  {
                    goto LABEL_490;
                  }

LABEL_527:
                  v861 = v361[2];
                  if (v356 < v4)
                  {
                    goto LABEL_528;
                  }

LABEL_491:
                  v856 = 0;
                  v835 = *v338;
                  v846 = *v361;
                  if (v357 >= v4)
                  {
                    goto LABEL_492;
                  }

LABEL_529:
                  v851 = v361[4];
                  if (v358 < v4)
                  {
                    goto LABEL_530;
                  }

LABEL_493:
                  v841 = 0;
                  if (v359 >= v4)
                  {
                    goto LABEL_494;
                  }

LABEL_531:
                  v362 = v361[6];
                  if (v360 < v4)
                  {
                    goto LABEL_532;
                  }

LABEL_495:
                  v363 = 0;
                  v364 = &v361[v913];
                  v365 = v361[v913];
                  if (v354 >= v4)
                  {
                    goto LABEL_496;
                  }

LABEL_533:
                  v366 = v364[1];
                  if (v355 < v4)
                  {
                    goto LABEL_534;
                  }

LABEL_497:
                  v367 = 0;
                  if (v356 >= v4)
                  {
                    goto LABEL_498;
                  }

LABEL_535:
                  v368 = v364[3];
                  if (v357 < v4)
                  {
                    goto LABEL_536;
                  }

LABEL_499:
                  v369 = 0;
                  if (v358 >= v4)
                  {
                    goto LABEL_500;
                  }

LABEL_537:
                  v370 = v364[5];
                  if (v359 < v4)
                  {
                    goto LABEL_538;
                  }

LABEL_501:
                  v371 = 0;
                  if (v360 >= v4)
                  {
                    goto LABEL_502;
                  }

LABEL_539:
                  v372 = v364[7];
                  v373 = &v364[v913];
                  v374 = v364[v913];
                  if (v354 < v4)
                  {
                    goto LABEL_540;
                  }

LABEL_503:
                  v375 = 0;
                  if (v355 >= v4)
                  {
                    goto LABEL_504;
                  }

LABEL_541:
                  v376 = v373[2];
                  if (v356 < v4)
                  {
                    goto LABEL_542;
                  }

LABEL_505:
                  v377 = 0;
                  if (v357 >= v4)
                  {
                    goto LABEL_506;
                  }

LABEL_543:
                  v378 = v373[4];
                  if (v358 < v4)
                  {
                    goto LABEL_544;
                  }

LABEL_507:
                  v379 = 0;
                  if (v359 >= v4)
                  {
                    goto LABEL_508;
                  }

LABEL_545:
                  v380 = v373[6];
                  if (v360 < v4)
                  {
                    goto LABEL_455;
                  }

LABEL_546:
                  v334 = 0;
                }

                else
                {
                  v902 = v338[1];
                  v355 = v341 | 2;
                  if ((v341 | 2) >= v4)
                  {
                    goto LABEL_483;
                  }

LABEL_520:
                  v896 = v338[2];
                  v356 = v341 | 3;
                  if ((v341 | 3) < v4)
                  {
                    goto LABEL_521;
                  }

LABEL_484:
                  v891 = 0;
                  v357 = v341 | 4;
                  if ((v341 | 4) >= v4)
                  {
                    goto LABEL_485;
                  }

LABEL_522:
                  v886 = v338[4];
                  v358 = v341 | 5;
                  if ((v341 | 5) < v4)
                  {
                    goto LABEL_523;
                  }

LABEL_486:
                  v881 = 0;
                  v359 = v341 | 6;
                  if ((v341 | 6) >= v4)
                  {
                    goto LABEL_487;
                  }

LABEL_524:
                  v876 = v338[6];
                  v360 = v341 | 7;
                  if ((v341 | 7) < v4)
                  {
                    goto LABEL_525;
                  }

LABEL_488:
                  v871 = 0;
                  v361 = &v338[v913];
                  if (v354 >= v4)
                  {
                    goto LABEL_489;
                  }

LABEL_526:
                  v866 = v361[1];
                  if (v355 < v4)
                  {
                    goto LABEL_527;
                  }

LABEL_490:
                  v861 = 0;
                  if (v356 >= v4)
                  {
                    goto LABEL_491;
                  }

LABEL_528:
                  v856 = v361[3];
                  v835 = *v338;
                  v846 = *v361;
                  if (v357 < v4)
                  {
                    goto LABEL_529;
                  }

LABEL_492:
                  v851 = 0;
                  if (v358 >= v4)
                  {
                    goto LABEL_493;
                  }

LABEL_530:
                  v841 = v361[5];
                  if (v359 < v4)
                  {
                    goto LABEL_531;
                  }

LABEL_494:
                  v362 = 0;
                  if (v360 >= v4)
                  {
                    goto LABEL_495;
                  }

LABEL_532:
                  v363 = v361[7];
                  v364 = &v361[v913];
                  v365 = v361[v913];
                  if (v354 < v4)
                  {
                    goto LABEL_533;
                  }

LABEL_496:
                  v366 = 0;
                  if (v355 >= v4)
                  {
                    goto LABEL_497;
                  }

LABEL_534:
                  v367 = v364[2];
                  if (v356 < v4)
                  {
                    goto LABEL_535;
                  }

LABEL_498:
                  v368 = 0;
                  if (v357 >= v4)
                  {
                    goto LABEL_499;
                  }

LABEL_536:
                  v369 = v364[4];
                  if (v358 < v4)
                  {
                    goto LABEL_537;
                  }

LABEL_500:
                  v370 = 0;
                  if (v359 >= v4)
                  {
                    goto LABEL_501;
                  }

LABEL_538:
                  v371 = v364[6];
                  if (v360 < v4)
                  {
                    goto LABEL_539;
                  }

LABEL_502:
                  v372 = 0;
                  v373 = &v364[v913];
                  v374 = v364[v913];
                  if (v354 >= v4)
                  {
                    goto LABEL_503;
                  }

LABEL_540:
                  v375 = v373[1];
                  if (v355 < v4)
                  {
                    goto LABEL_541;
                  }

LABEL_504:
                  v376 = 0;
                  if (v356 >= v4)
                  {
                    goto LABEL_505;
                  }

LABEL_542:
                  v377 = v373[3];
                  if (v357 < v4)
                  {
                    goto LABEL_543;
                  }

LABEL_506:
                  v378 = 0;
                  if (v358 >= v4)
                  {
                    goto LABEL_507;
                  }

LABEL_544:
                  v379 = v373[5];
                  if (v359 < v4)
                  {
                    goto LABEL_545;
                  }

LABEL_508:
                  v380 = 0;
                  if (v360 >= v4)
                  {
                    goto LABEL_546;
                  }

LABEL_455:
                  v334 = v373[7];
                }

                v917.val[0].i8[0] = v835;
                v917.val[0].i8[1] = v902;
                v917.val[0].i8[2] = v896;
                v917.val[0].i8[3] = v891;
                v917.val[0].i8[4] = v886;
                v917.val[0].i8[5] = v881;
                v917.val[0].i8[6] = v876;
                v917.val[0].i8[7] = v871;
                v917.val[0].i8[8] = v846;
                v917.val[0].i8[9] = v866;
                v917.val[0].i8[10] = v861;
                v917.val[0].i8[11] = v856;
                v917.val[0].i8[12] = v851;
                v917.val[0].i8[13] = v841;
                v917.val[0].i8[14] = v362;
                v917.val[0].i8[15] = v363;
                v917.val[1].i8[0] = v365;
                v917.val[1].i8[1] = v366;
                v917.val[1].i8[2] = v367;
                v917.val[1].i8[3] = v368;
                v917.val[1].i8[4] = v369;
                v917.val[1].i8[5] = v370;
                v917.val[1].i8[6] = v371;
                v917.val[1].i8[7] = v372;
                v917.val[1].i8[8] = v374;
                v917.val[1].i8[9] = v375;
                v917.val[1].i8[10] = v376;
                v917.val[1].i8[11] = v377;
                v917.val[1].i8[12] = v378;
                v917.val[1].i8[13] = v379;
                v917.val[1].i8[14] = v380;
                v917.val[1].i8[15] = v334;
                v335 = vqtbl2q_s8(v917, xmmword_239D7E380);
                v336 = vqtbl2q_s8(v917, xmmword_239D7E390);
                v315 = 4;
                v172 = v830;
                v316 = v827;
                v327 = v822;
                v328 = v816;
                v329 = v811;
                v330 = v806;
LABEL_457:
                *v339 = v335;
                v339[1] = v336;
                goto LABEL_458;
              }

              if (v327 % v172 >= v171)
              {
                v315 = 0;
                v388 = 0;
                if (v328 % v172 < v171)
                {
                  goto LABEL_559;
                }
              }

              else
              {
                if ((v341 | 1) >= v4)
                {
                  v381 = 0;
                  if ((v341 | 2) < v4)
                  {
                    goto LABEL_552;
                  }

LABEL_513:
                  v382 = 0;
                  if ((v341 | 3) >= v4)
                  {
                    goto LABEL_514;
                  }

LABEL_553:
                  v383 = v338[3];
                  if ((v341 | 4) < v4)
                  {
                    goto LABEL_554;
                  }

LABEL_515:
                  v384 = 0;
                  if ((v341 | 5) >= v4)
                  {
                    goto LABEL_516;
                  }

LABEL_555:
                  v385 = v338[5];
                  if ((v341 | 6) < v4)
                  {
                    goto LABEL_556;
                  }

LABEL_517:
                  v386 = 0;
                  if ((v341 | 7) >= v4)
                  {
                    goto LABEL_518;
                  }

LABEL_557:
                  v387 = v338[7];
                }

                else
                {
                  v381 = v338[1];
                  if ((v341 | 2) >= v4)
                  {
                    goto LABEL_513;
                  }

LABEL_552:
                  v382 = v338[2];
                  if ((v341 | 3) < v4)
                  {
                    goto LABEL_553;
                  }

LABEL_514:
                  v383 = 0;
                  if ((v341 | 4) >= v4)
                  {
                    goto LABEL_515;
                  }

LABEL_554:
                  v384 = v338[4];
                  if ((v341 | 5) < v4)
                  {
                    goto LABEL_555;
                  }

LABEL_516:
                  v385 = 0;
                  if ((v341 | 6) >= v4)
                  {
                    goto LABEL_517;
                  }

LABEL_556:
                  v386 = v338[6];
                  if ((v341 | 7) < v4)
                  {
                    goto LABEL_557;
                  }

LABEL_518:
                  v387 = 0;
                }

                LOBYTE(v388) = *v338;
                BYTE1(v388) = v381;
                BYTE2(v388) = v382;
                BYTE3(v388) = v383;
                BYTE4(v388) = v384;
                BYTE5(v388) = v385;
                BYTE6(v388) = v386;
                HIBYTE(v388) = v387;
                v338 += v913;
                v315 = 1;
                if (v328 % v172 < v171)
                {
LABEL_559:
                  if ((v341 | 1) >= v4)
                  {
                    v392 = 0;
                    if ((v341 | 2) < v4)
                    {
                      goto LABEL_568;
                    }

LABEL_561:
                    v393 = 0;
                    if ((v341 | 3) >= v4)
                    {
                      goto LABEL_562;
                    }

LABEL_569:
                    v394 = v338[3];
                    if ((v341 | 4) < v4)
                    {
                      goto LABEL_570;
                    }

LABEL_563:
                    v395 = 0;
                    if ((v341 | 5) >= v4)
                    {
                      goto LABEL_564;
                    }

LABEL_571:
                    v396 = v338[5];
                    if ((v341 | 6) < v4)
                    {
                      goto LABEL_572;
                    }

LABEL_565:
                    v397 = 0;
                    if ((v341 | 7) >= v4)
                    {
                      goto LABEL_566;
                    }

LABEL_573:
                    v398 = v338[7];
                  }

                  else
                  {
                    v392 = v338[1];
                    if ((v341 | 2) >= v4)
                    {
                      goto LABEL_561;
                    }

LABEL_568:
                    v393 = v338[2];
                    if ((v341 | 3) < v4)
                    {
                      goto LABEL_569;
                    }

LABEL_562:
                    v394 = 0;
                    if ((v341 | 4) >= v4)
                    {
                      goto LABEL_563;
                    }

LABEL_570:
                    v395 = v338[4];
                    if ((v341 | 5) < v4)
                    {
                      goto LABEL_571;
                    }

LABEL_564:
                    v396 = 0;
                    if ((v341 | 6) >= v4)
                    {
                      goto LABEL_565;
                    }

LABEL_572:
                    v397 = v338[6];
                    if ((v341 | 7) < v4)
                    {
                      goto LABEL_573;
                    }

LABEL_566:
                    v398 = 0;
                  }

                  LOBYTE(v389) = *v338;
                  BYTE1(v389) = v392;
                  BYTE2(v389) = v393;
                  BYTE3(v389) = v394;
                  BYTE4(v389) = v395;
                  BYTE5(v389) = v396;
                  BYTE6(v389) = v397;
                  HIBYTE(v389) = v398;
                  v338 += v913;
                  ++v315;
                  if (v329 % v172 < v171)
                  {
LABEL_575:
                    if ((v341 | 1) >= v4)
                    {
                      v399 = 0;
                      if ((v341 | 2) < v4)
                      {
                        goto LABEL_584;
                      }

LABEL_577:
                      v400 = 0;
                      if ((v341 | 3) >= v4)
                      {
                        goto LABEL_578;
                      }

LABEL_585:
                      v401 = v338[3];
                      if ((v341 | 4) < v4)
                      {
                        goto LABEL_586;
                      }

LABEL_579:
                      v402 = 0;
                      if ((v341 | 5) >= v4)
                      {
                        goto LABEL_580;
                      }

LABEL_587:
                      v403 = v338[5];
                      if ((v341 | 6) < v4)
                      {
                        goto LABEL_588;
                      }

LABEL_581:
                      v404 = 0;
                      if ((v341 | 7) >= v4)
                      {
                        goto LABEL_582;
                      }

LABEL_589:
                      v405 = v338[7];
                    }

                    else
                    {
                      v399 = v338[1];
                      if ((v341 | 2) >= v4)
                      {
                        goto LABEL_577;
                      }

LABEL_584:
                      v400 = v338[2];
                      if ((v341 | 3) < v4)
                      {
                        goto LABEL_585;
                      }

LABEL_578:
                      v401 = 0;
                      if ((v341 | 4) >= v4)
                      {
                        goto LABEL_579;
                      }

LABEL_586:
                      v402 = v338[4];
                      if ((v341 | 5) < v4)
                      {
                        goto LABEL_587;
                      }

LABEL_580:
                      v403 = 0;
                      if ((v341 | 6) >= v4)
                      {
                        goto LABEL_581;
                      }

LABEL_588:
                      v404 = v338[6];
                      if ((v341 | 7) < v4)
                      {
                        goto LABEL_589;
                      }

LABEL_582:
                      v405 = 0;
                    }

                    LOBYTE(v390) = *v338;
                    BYTE1(v390) = v399;
                    BYTE2(v390) = v400;
                    BYTE3(v390) = v401;
                    BYTE4(v390) = v402;
                    BYTE5(v390) = v403;
                    BYTE6(v390) = v404;
                    BYTE7(v390) = v405;
                    v338 += v913;
                    ++v315;
                    if (v330 % v172 < v171)
                    {
LABEL_591:
                      if ((v341 | 1) >= v4)
                      {
                        v406 = 0;
                        if ((v341 | 2) < v4)
                        {
                          goto LABEL_600;
                        }

LABEL_593:
                        v407 = 0;
                        if ((v341 | 3) >= v4)
                        {
                          goto LABEL_594;
                        }

LABEL_601:
                        v408 = v338[3];
                        if ((v341 | 4) < v4)
                        {
                          goto LABEL_602;
                        }

LABEL_595:
                        v409 = 0;
                        if ((v341 | 5) >= v4)
                        {
                          goto LABEL_596;
                        }

LABEL_603:
                        v410 = v338[5];
                        if ((v341 | 6) < v4)
                        {
                          goto LABEL_604;
                        }

LABEL_597:
                        v411 = 0;
                        if ((v341 | 7) >= v4)
                        {
                          goto LABEL_598;
                        }

LABEL_605:
                        v412 = v338[7];
                      }

                      else
                      {
                        v406 = v338[1];
                        if ((v341 | 2) >= v4)
                        {
                          goto LABEL_593;
                        }

LABEL_600:
                        v407 = v338[2];
                        if ((v341 | 3) < v4)
                        {
                          goto LABEL_601;
                        }

LABEL_594:
                        v408 = 0;
                        if ((v341 | 4) >= v4)
                        {
                          goto LABEL_595;
                        }

LABEL_602:
                        v409 = v338[4];
                        if ((v341 | 5) < v4)
                        {
                          goto LABEL_603;
                        }

LABEL_596:
                        v410 = 0;
                        if ((v341 | 6) >= v4)
                        {
                          goto LABEL_597;
                        }

LABEL_604:
                        v411 = v338[6];
                        if ((v341 | 7) < v4)
                        {
                          goto LABEL_605;
                        }

LABEL_598:
                        v412 = 0;
                      }

                      LOBYTE(v391) = *v338;
                      BYTE1(v391) = v406;
                      BYTE2(v391) = v407;
                      BYTE3(v391) = v408;
                      BYTE4(v391) = v409;
                      BYTE5(v391) = v410;
                      BYTE6(v391) = v411;
                      HIBYTE(v391) = v412;
                      ++v315;
LABEL_607:
                      v413 = v389;
                      *(&v390 + 1) = v391;
                      v414 = v390;
                      v335 = vqtbl2q_s8(*&v388, xmmword_239D7E380);
                      v336 = vqtbl2q_s8(*&v388, xmmword_239D7E390);
                      goto LABEL_457;
                    }

LABEL_550:
                    v391 = 0;
                    goto LABEL_607;
                  }

LABEL_549:
                  *&v390 = 0;
                  if (v330 % v172 < v171)
                  {
                    goto LABEL_591;
                  }

                  goto LABEL_550;
                }
              }

              v389 = 0;
              if (v329 % v172 < v171)
              {
                goto LABEL_575;
              }

              goto LABEL_549;
            }

LABEL_458:
            ++v333;
            v332 += 2;
            v331 += v4;
          }

          while (v333 != v915);
          v326 = v802 + 1;
          v332 = &v794[v790];
          v331 = &v798[v786];
        }

        while (v802 + 1 != v818);
        v324 = &v781[v315 * v913];
        v323 = v772 + 4;
        v325 = (v776 + v760);
      }

      while (v772 + 4 < v764);
      v415 = v749;
      v5 = v914;
      v314 = v757;
      if (v749 < v914)
      {
LABEL_611:
        if (!v818)
        {
          goto LABEL_446;
        }

        v416 = v415 + v314 * v5;
        if (!v915)
        {
          goto LABEL_446;
        }

        v417 = 0;
        v903 = v416 + 1;
        v418 = v415 | 1;
        v897 = v416 + 2;
        v419 = v415 | 2;
        v892 = v416 + 3;
        v420 = v415 | 3;
        v421 = &v324[v913];
        v422 = &v324[v738];
        v423 = &v324[v735];
        v847 = v415 + v314 * v5;
LABEL_617:
        v823 = v417;
        v424 = 0;
        v807 = v423;
        v812 = v422;
        v817 = v421;
        v782 = v324;
        v777 = v325;
LABEL_622:
        if (v4 < 8)
        {
          v449 = 0;
          v442 = v325;
          v450 = v324;
          if (v4 > 0)
          {
            goto LABEL_660;
          }

          goto LABEL_621;
        }

        if (v316 == 1)
        {
          v441 = 0;
          v442 = v325;
          while (1)
          {
            if (v418 >= v5)
            {
              v447 = 0;
              if (v419 >= v5)
              {
LABEL_629:
                v448 = 0;
                if (v420 >= v5)
                {
                  goto LABEL_633;
                }

                goto LABEL_625;
              }
            }

            else
            {
              v447 = *&v421[v441];
              if (v419 >= v5)
              {
                goto LABEL_629;
              }
            }

            v448 = *&v422[v441];
            if (v420 >= v5)
            {
LABEL_633:
              v443 = 0;
              goto LABEL_626;
            }

LABEL_625:
            v443 = *&v423[v441];
LABEL_626:
            v444 = *&v324[v441];
            v445 = v447;
            v446 = v443;
            *v442 = vqtbl2q_s8(*(&v448 - 2), xmmword_239D7E380);
            v442[1] = vqtbl2q_s8(*(&v448 - 2), xmmword_239D7E390);
            v441 += 8;
            v442 = (v442 + v318);
            if (v441 >= v321)
            {
              v450 = &v324[v441];
              v315 = 4;
              v449 = v4 & 0xFFFFFFFFFFFFFFF8;
              if (v908 >= v4)
              {
                goto LABEL_621;
              }

LABEL_660:
              if (v316 == 1)
              {
                v463 = v449 | 1;
                if ((v449 | 1) >= v4)
                {
                  v887 = 0;
                  v464 = v449 | 2;
                  if ((v449 | 2) < v4)
                  {
                    goto LABEL_682;
                  }

LABEL_663:
                  v882 = 0;
                  v465 = v449 | 3;
                  if ((v449 | 3) >= v4)
                  {
                    goto LABEL_664;
                  }

LABEL_683:
                  v877 = v450[3];
                  v466 = v449 | 4;
                  if ((v449 | 4) < v4)
                  {
                    goto LABEL_684;
                  }

LABEL_665:
                  v872 = 0;
                  v467 = v449 | 5;
                  if ((v449 | 5) >= v4)
                  {
                    goto LABEL_666;
                  }

LABEL_685:
                  v867 = v450[5];
                  v468 = v449 | 6;
                  if ((v449 | 6) < v4)
                  {
                    goto LABEL_686;
                  }

LABEL_667:
                  v862 = 0;
                  v469 = v449 | 7;
                  if (v469 >= v4)
                  {
                    goto LABEL_668;
                  }

LABEL_687:
                  v857 = v450[7];
                  v470 = *v450;
                  v471 = &v450[v317];
                  v852 = v463;
                  if (v418 < v914)
                  {
                    goto LABEL_688;
                  }

LABEL_669:
                  v472 = 0;
                  v473 = &v471[v317];
                  if (v419 < v914)
                  {
                    goto LABEL_725;
                  }

LABEL_670:
                  v474 = 0;
                  if (v420 < v914)
                  {
                    goto LABEL_742;
                  }

LABEL_618:
                  v425 = 0;
                  v5 = v914;
                  v316 = v827;
                  v416 = v847;
                  v426 = v887;
                  v427 = v882;
                  v428 = v877;
                  v429 = v872;
                  goto LABEL_619;
                }

                v887 = v450[1];
                v464 = v449 | 2;
                if ((v449 | 2) >= v4)
                {
                  goto LABEL_663;
                }

LABEL_682:
                v882 = v450[2];
                v465 = v449 | 3;
                if ((v449 | 3) < v4)
                {
                  goto LABEL_683;
                }

LABEL_664:
                v877 = 0;
                v466 = v449 | 4;
                if ((v449 | 4) >= v4)
                {
                  goto LABEL_665;
                }

LABEL_684:
                v872 = v450[4];
                v467 = v449 | 5;
                if ((v449 | 5) < v4)
                {
                  goto LABEL_685;
                }

LABEL_666:
                v867 = 0;
                v468 = v449 | 6;
                if ((v449 | 6) >= v4)
                {
                  goto LABEL_667;
                }

LABEL_686:
                v862 = v450[6];
                v469 = v449 | 7;
                if (v469 < v4)
                {
                  goto LABEL_687;
                }

LABEL_668:
                v857 = 0;
                v470 = *v450;
                v471 = &v450[v317];
                v852 = v463;
                if (v418 >= v914)
                {
                  goto LABEL_669;
                }

LABEL_688:
                if (v463 >= v4)
                {
                  v842 = 0;
                  if (v464 < v4)
                  {
                    goto LABEL_718;
                  }

LABEL_690:
                  v836 = 0;
                  if (v465 >= v4)
                  {
                    goto LABEL_691;
                  }

LABEL_719:
                  v482 = v471[3];
                  if (v466 < v4)
                  {
                    goto LABEL_720;
                  }

LABEL_692:
                  v483 = 0;
                  if (v467 >= v4)
                  {
                    goto LABEL_693;
                  }

LABEL_721:
                  v484 = v471[5];
                  v485 = v467;
                  v486 = v466;
                  if (v468 < v4)
                  {
                    goto LABEL_722;
                  }

LABEL_694:
                  v487 = 0;
                  v488 = v465;
                  v489 = v464;
                  if (v469 >= v4)
                  {
                    goto LABEL_695;
                  }

LABEL_723:
                  v490 = v471[7];
                }

                else
                {
                  v842 = v471[1];
                  if (v464 >= v4)
                  {
                    goto LABEL_690;
                  }

LABEL_718:
                  v836 = v471[2];
                  if (v465 < v4)
                  {
                    goto LABEL_719;
                  }

LABEL_691:
                  v482 = 0;
                  if (v466 >= v4)
                  {
                    goto LABEL_692;
                  }

LABEL_720:
                  v483 = v471[4];
                  if (v467 < v4)
                  {
                    goto LABEL_721;
                  }

LABEL_693:
                  v484 = 0;
                  v485 = v467;
                  v486 = v466;
                  if (v468 >= v4)
                  {
                    goto LABEL_694;
                  }

LABEL_722:
                  v487 = v471[6];
                  v488 = v465;
                  v489 = v464;
                  if (v469 < v4)
                  {
                    goto LABEL_723;
                  }

LABEL_695:
                  v490 = 0;
                }

                LOBYTE(v472) = *v471;
                BYTE1(v472) = v842;
                BYTE2(v472) = v836;
                BYTE3(v472) = v482;
                BYTE4(v472) = v483;
                BYTE5(v472) = v484;
                BYTE6(v472) = v487;
                HIBYTE(v472) = v490;
                v172 = v830;
                v463 = v852;
                v464 = v489;
                v465 = v488;
                v466 = v486;
                v467 = v485;
                v473 = &v471[v317];
                if (v419 >= v914)
                {
                  goto LABEL_670;
                }

LABEL_725:
                if (v463 >= v4)
                {
                  v843 = 0;
                  if (v464 < v4)
                  {
                    goto LABEL_735;
                  }

LABEL_727:
                  v837 = 0;
                  if (v465 >= v4)
                  {
                    goto LABEL_728;
                  }

LABEL_736:
                  v502 = v473[3];
                  if (v466 < v4)
                  {
                    goto LABEL_737;
                  }

LABEL_729:
                  v503 = 0;
                  if (v467 >= v4)
                  {
                    goto LABEL_730;
                  }

LABEL_738:
                  v504 = v473[5];
                  if (v468 < v4)
                  {
                    goto LABEL_739;
                  }

LABEL_731:
                  v505 = 0;
                  if (v469 >= v4)
                  {
                    goto LABEL_732;
                  }

LABEL_740:
                  v506 = v473[7];
                }

                else
                {
                  v843 = v473[1];
                  if (v464 >= v4)
                  {
                    goto LABEL_727;
                  }

LABEL_735:
                  v837 = v473[2];
                  if (v465 < v4)
                  {
                    goto LABEL_736;
                  }

LABEL_728:
                  v502 = 0;
                  if (v466 >= v4)
                  {
                    goto LABEL_729;
                  }

LABEL_737:
                  v503 = v473[4];
                  if (v467 < v4)
                  {
                    goto LABEL_738;
                  }

LABEL_730:
                  v504 = 0;
                  if (v468 >= v4)
                  {
                    goto LABEL_731;
                  }

LABEL_739:
                  v505 = v473[6];
                  if (v469 < v4)
                  {
                    goto LABEL_740;
                  }

LABEL_732:
                  v506 = 0;
                }

                LOBYTE(v474) = *v473;
                BYTE1(v474) = v843;
                BYTE2(v474) = v837;
                BYTE3(v474) = v502;
                BYTE4(v474) = v503;
                BYTE5(v474) = v504;
                BYTE6(v474) = v505;
                HIBYTE(v474) = v506;
                v172 = v830;
                v463 = v852;
                if (v420 >= v914)
                {
                  goto LABEL_618;
                }

LABEL_742:
                v507 = &v473[v317];
                if (v463 >= v4)
                {
                  v508 = 0;
                  if (v464 < v4)
                  {
                    goto LABEL_751;
                  }

LABEL_744:
                  v509 = 0;
                  v416 = v847;
                  if (v465 >= v4)
                  {
                    goto LABEL_745;
                  }

LABEL_752:
                  v510 = v507[3];
                  v316 = v827;
                  if (v466 < v4)
                  {
                    goto LABEL_753;
                  }

LABEL_746:
                  v511 = 0;
                  v5 = v914;
                  if (v467 >= v4)
                  {
                    goto LABEL_747;
                  }

LABEL_754:
                  v512 = v507[5];
                  if (v468 < v4)
                  {
                    goto LABEL_755;
                  }

LABEL_748:
                  v513 = 0;
                  if (v469 >= v4)
                  {
                    goto LABEL_749;
                  }

LABEL_756:
                  v514 = v507[7];
                }

                else
                {
                  v508 = v507[1];
                  if (v464 >= v4)
                  {
                    goto LABEL_744;
                  }

LABEL_751:
                  v509 = v507[2];
                  v416 = v847;
                  if (v465 < v4)
                  {
                    goto LABEL_752;
                  }

LABEL_745:
                  v510 = 0;
                  v316 = v827;
                  if (v466 >= v4)
                  {
                    goto LABEL_746;
                  }

LABEL_753:
                  v511 = v507[4];
                  v5 = v914;
                  if (v467 < v4)
                  {
                    goto LABEL_754;
                  }

LABEL_747:
                  v512 = 0;
                  if (v468 >= v4)
                  {
                    goto LABEL_748;
                  }

LABEL_755:
                  v513 = v507[6];
                  if (v469 < v4)
                  {
                    goto LABEL_756;
                  }

LABEL_749:
                  v514 = 0;
                }

                v429 = v872;
                LOBYTE(v425) = *v507;
                BYTE1(v425) = v508;
                BYTE2(v425) = v509;
                BYTE3(v425) = v510;
                BYTE4(v425) = v511;
                BYTE5(v425) = v512;
                BYTE6(v425) = v513;
                HIBYTE(v425) = v514;
                v426 = v887;
                v427 = v882;
                v428 = v877;
LABEL_619:
                v430 = v426;
                v431 = v427;
                v432 = v428;
                v433 = v429;
                v434 = v867;
                v435 = v862;
                v436 = v857;
                v437 = v472;
                v438 = v425;
                v439 = vqtbl2q_s8(*&v470, xmmword_239D7E380);
                v440 = vqtbl2q_s8(*&v470, xmmword_239D7E390);
                v315 = 4;
LABEL_620:
                *v442 = v439;
                v442[1] = v440;
LABEL_621:
                ++v424;
                v325 += 2;
                v324 += v4;
                v421 += v4;
                v422 += v4;
                v423 += v4;
                if (v424 == v915)
                {
                  v417 = v823 + 1;
                  v325 = &v777[v790];
                  v324 = &v782[v786];
                  v421 = &v817[v786];
                  v422 = &v812[v786];
                  v423 = &v807[v786];
                  if (v823 + 1 == v818)
                  {
                    goto LABEL_446;
                  }

                  goto LABEL_617;
                }

                goto LABEL_622;
              }

              if (v416 % v172 >= v171)
              {
                v315 = 0;
                v491 = 0;
                if (v903 % v172 < v171)
                {
                  goto LABEL_708;
                }
              }

              else
              {
                if ((v449 | 1) >= v4)
                {
                  v475 = 0;
                  if ((v449 | 2) < v4)
                  {
                    goto LABEL_701;
                  }

LABEL_675:
                  v476 = 0;
                  if ((v449 | 3) >= v4)
                  {
                    goto LABEL_676;
                  }

LABEL_702:
                  v477 = v450[3];
                  if ((v449 | 4) < v4)
                  {
                    goto LABEL_703;
                  }

LABEL_677:
                  v478 = 0;
                  if ((v449 | 5) >= v4)
                  {
                    goto LABEL_678;
                  }

LABEL_704:
                  v479 = v450[5];
                  if ((v449 | 6) < v4)
                  {
                    goto LABEL_705;
                  }

LABEL_679:
                  v480 = 0;
                  if ((v449 | 7) >= v4)
                  {
                    goto LABEL_680;
                  }

LABEL_706:
                  v481 = v450[7];
                }

                else
                {
                  v475 = v450[1];
                  if ((v449 | 2) >= v4)
                  {
                    goto LABEL_675;
                  }

LABEL_701:
                  v476 = v450[2];
                  if ((v449 | 3) < v4)
                  {
                    goto LABEL_702;
                  }

LABEL_676:
                  v477 = 0;
                  if ((v449 | 4) >= v4)
                  {
                    goto LABEL_677;
                  }

LABEL_703:
                  v478 = v450[4];
                  if ((v449 | 5) < v4)
                  {
                    goto LABEL_704;
                  }

LABEL_678:
                  v479 = 0;
                  if ((v449 | 6) >= v4)
                  {
                    goto LABEL_679;
                  }

LABEL_705:
                  v480 = v450[6];
                  if ((v449 | 7) < v4)
                  {
                    goto LABEL_706;
                  }

LABEL_680:
                  v481 = 0;
                }

                LOBYTE(v491) = *v450;
                BYTE1(v491) = v475;
                BYTE2(v491) = v476;
                BYTE3(v491) = v477;
                BYTE4(v491) = v478;
                BYTE5(v491) = v479;
                BYTE6(v491) = v480;
                HIBYTE(v491) = v481;
                v450 += v317;
                v315 = 1;
                if (v903 % v172 < v171)
                {
LABEL_708:
                  if (v418 >= v5)
                  {
                    v492 = 0;
                  }

                  else
                  {
                    if ((v449 | 1) >= v4)
                    {
                      v495 = 0;
                      if ((v449 | 2) < v4)
                      {
                        goto LABEL_759;
                      }

LABEL_711:
                      v496 = 0;
                      if ((v449 | 3) >= v4)
                      {
                        goto LABEL_712;
                      }

LABEL_760:
                      v497 = v450[3];
                      if ((v449 | 4) < v4)
                      {
                        goto LABEL_761;
                      }

LABEL_713:
                      v498 = 0;
                      if ((v449 | 5) >= v4)
                      {
                        goto LABEL_714;
                      }

LABEL_762:
                      v499 = v450[5];
                      if ((v449 | 6) < v4)
                      {
                        goto LABEL_763;
                      }

LABEL_715:
                      v500 = 0;
                      if ((v449 | 7) >= v4)
                      {
                        goto LABEL_716;
                      }

LABEL_764:
                      v501 = v450[7];
                    }

                    else
                    {
                      v495 = v450[1];
                      if ((v449 | 2) >= v4)
                      {
                        goto LABEL_711;
                      }

LABEL_759:
                      v496 = v450[2];
                      if ((v449 | 3) < v4)
                      {
                        goto LABEL_760;
                      }

LABEL_712:
                      v497 = 0;
                      if ((v449 | 4) >= v4)
                      {
                        goto LABEL_713;
                      }

LABEL_761:
                      v498 = v450[4];
                      if ((v449 | 5) < v4)
                      {
                        goto LABEL_762;
                      }

LABEL_714:
                      v499 = 0;
                      if ((v449 | 6) >= v4)
                      {
                        goto LABEL_715;
                      }

LABEL_763:
                      v500 = v450[6];
                      if ((v449 | 7) < v4)
                      {
                        goto LABEL_764;
                      }

LABEL_716:
                      v501 = 0;
                    }

                    LOBYTE(v492) = *v450;
                    BYTE1(v492) = v495;
                    BYTE2(v492) = v496;
                    BYTE3(v492) = v497;
                    BYTE4(v492) = v498;
                    BYTE5(v492) = v499;
                    BYTE6(v492) = v500;
                    HIBYTE(v492) = v501;
                    v316 = v827;
                  }

                  v450 += v317;
                  ++v315;
                  if (v897 % v172 < v171)
                  {
LABEL_767:
                    if (v419 >= v5)
                    {
                      *&v493 = 0;
                    }

                    else
                    {
                      if ((v449 | 1) >= v4)
                      {
                        v515 = 0;
                        if ((v449 | 2) < v4)
                        {
                          goto LABEL_778;
                        }

LABEL_770:
                        v516 = 0;
                        if ((v449 | 3) >= v4)
                        {
                          goto LABEL_771;
                        }

LABEL_779:
                        v517 = v450[3];
                        if ((v449 | 4) < v4)
                        {
                          goto LABEL_780;
                        }

LABEL_772:
                        v518 = 0;
                        if ((v449 | 5) >= v4)
                        {
                          goto LABEL_773;
                        }

LABEL_781:
                        v519 = v450[5];
                        if ((v449 | 6) < v4)
                        {
                          goto LABEL_782;
                        }

LABEL_774:
                        v520 = 0;
                        if ((v449 | 7) >= v4)
                        {
                          goto LABEL_775;
                        }

LABEL_783:
                        v521 = v450[7];
                      }

                      else
                      {
                        v515 = v450[1];
                        if ((v449 | 2) >= v4)
                        {
                          goto LABEL_770;
                        }

LABEL_778:
                        v516 = v450[2];
                        if ((v449 | 3) < v4)
                        {
                          goto LABEL_779;
                        }

LABEL_771:
                        v517 = 0;
                        if ((v449 | 4) >= v4)
                        {
                          goto LABEL_772;
                        }

LABEL_780:
                        v518 = v450[4];
                        if ((v449 | 5) < v4)
                        {
                          goto LABEL_781;
                        }

LABEL_773:
                        v519 = 0;
                        if ((v449 | 6) >= v4)
                        {
                          goto LABEL_774;
                        }

LABEL_782:
                        v520 = v450[6];
                        if ((v449 | 7) < v4)
                        {
                          goto LABEL_783;
                        }

LABEL_775:
                        v521 = 0;
                      }

                      LOBYTE(v493) = *v450;
                      BYTE1(v493) = v515;
                      BYTE2(v493) = v516;
                      BYTE3(v493) = v517;
                      BYTE4(v493) = v518;
                      BYTE5(v493) = v519;
                      BYTE6(v493) = v520;
                      BYTE7(v493) = v521;
                      v316 = v827;
                    }

                    v450 += v317;
                    ++v315;
                    if (v892 % v172 < v171)
                    {
LABEL_786:
                      if (v420 >= v5)
                      {
                        v494 = 0;
                      }

                      else
                      {
                        if ((v449 | 1) >= v4)
                        {
                          v522 = 0;
                          if ((v449 | 2) < v4)
                          {
                            goto LABEL_797;
                          }

LABEL_789:
                          v523 = 0;
                          if ((v449 | 3) >= v4)
                          {
                            goto LABEL_790;
                          }

LABEL_798:
                          v524 = v450[3];
                          if ((v449 | 4) < v4)
                          {
                            goto LABEL_799;
                          }

LABEL_791:
                          v525 = 0;
                          if ((v449 | 5) >= v4)
                          {
                            goto LABEL_792;
                          }

LABEL_800:
                          v526 = v450[5];
                          if ((v449 | 6) < v4)
                          {
                            goto LABEL_801;
                          }

LABEL_793:
                          v527 = 0;
                          if ((v449 | 7) >= v4)
                          {
                            goto LABEL_794;
                          }

LABEL_802:
                          v528 = v450[7];
                        }

                        else
                        {
                          v522 = v450[1];
                          if ((v449 | 2) >= v4)
                          {
                            goto LABEL_789;
                          }

LABEL_797:
                          v523 = v450[2];
                          if ((v449 | 3) < v4)
                          {
                            goto LABEL_798;
                          }

LABEL_790:
                          v524 = 0;
                          if ((v449 | 4) >= v4)
                          {
                            goto LABEL_791;
                          }

LABEL_799:
                          v525 = v450[4];
                          if ((v449 | 5) < v4)
                          {
                            goto LABEL_800;
                          }

LABEL_792:
                          v526 = 0;
                          if ((v449 | 6) >= v4)
                          {
                            goto LABEL_793;
                          }

LABEL_801:
                          v527 = v450[6];
                          if ((v449 | 7) < v4)
                          {
                            goto LABEL_802;
                          }

LABEL_794:
                          v528 = 0;
                        }

                        LOBYTE(v494) = *v450;
                        BYTE1(v494) = v522;
                        BYTE2(v494) = v523;
                        BYTE3(v494) = v524;
                        BYTE4(v494) = v525;
                        BYTE5(v494) = v526;
                        BYTE6(v494) = v527;
                        HIBYTE(v494) = v528;
                        v316 = v827;
                      }

                      ++v315;
LABEL_805:
                      v529 = v492;
                      *(&v493 + 1) = v494;
                      v530 = v493;
                      v439 = vqtbl2q_s8(*&v491, xmmword_239D7E380);
                      v440 = vqtbl2q_s8(*&v491, xmmword_239D7E390);
                      goto LABEL_620;
                    }

LABEL_699:
                    v494 = 0;
                    goto LABEL_805;
                  }

LABEL_698:
                  *&v493 = 0;
                  if (v892 % v172 < v171)
                  {
                    goto LABEL_786;
                  }

                  goto LABEL_699;
                }
              }

              v492 = 0;
              if (v897 % v172 < v171)
              {
                goto LABEL_767;
              }

              goto LABEL_698;
            }
          }
        }

        v451 = 0;
        v452 = v903 % v172;
        v453 = v897 % v172;
        v454 = v892 % v172;
        v455 = v324;
        v442 = v325;
        while (2)
        {
          v459 = &v324[v451];
          if (v416 % v172 >= v171)
          {
            v315 = 0;
            v460 = 0;
            if (v452 < v171)
            {
              goto LABEL_645;
            }

LABEL_641:
            v461 = 0;
            if (v453 >= v171)
            {
              goto LABEL_642;
            }

LABEL_649:
            if (v419 >= v5)
            {
              *&v462 = 0;
              v459 = (v459 + v913);
              ++v315;
              if (v454 < v171)
              {
                goto LABEL_653;
              }
            }

            else
            {
              *&v462 = *v459;
              v459 = (v459 + v913);
              ++v315;
              if (v454 < v171)
              {
                goto LABEL_653;
              }
            }
          }

          else
          {
            v460 = *v459;
            v459 = &v455[v913];
            v315 = 1;
            if (v452 >= v171)
            {
              goto LABEL_641;
            }

LABEL_645:
            if (v418 >= v5)
            {
              v461 = 0;
              v459 = (v459 + v913);
              ++v315;
              if (v453 < v171)
              {
                goto LABEL_649;
              }
            }

            else
            {
              v461 = *v459;
              v459 = (v459 + v913);
              ++v315;
              if (v453 < v171)
              {
                goto LABEL_649;
              }
            }

LABEL_642:
            *&v462 = 0;
            if (v454 < v171)
            {
LABEL_653:
              if (v420 >= v5)
              {
                v456 = 0;
              }

              else
              {
                v456 = *v459;
              }

              ++v315;
LABEL_638:
              v457 = v461;
              *(&v462 + 1) = v456;
              v458 = v462;
              *v442 = vqtbl2q_s8(*&v460, xmmword_239D7E380);
              v442[1] = vqtbl2q_s8(*&v460, xmmword_239D7E390);
              v451 += 8;
              v442 = (v442 + v318);
              v455 += 8;
              if (v451 >= v321)
              {
                v450 = &v324[v451];
                v449 = v4 & 0xFFFFFFFFFFFFFFF8;
                if (v908 < v4)
                {
                  goto LABEL_660;
                }

                goto LABEL_621;
              }

              continue;
            }
          }

          break;
        }

        v456 = 0;
        goto LABEL_638;
      }

LABEL_446:
      v314 = v757 + 1;
      result = (result + v745);
      v628 += v741;
      v322 = &v753[v745];
      if (v757 + 1 == v627)
      {
        return result;
      }
    }
  }

  if (!v6)
  {
    if (!v627)
    {
      return result;
    }

    v246 = 0;
    v247 = v4 == 0;
    if (!v818)
    {
      v247 = 1;
    }

    v248 = v915 == 0;
    if (!v915)
    {
      v247 = 1;
    }

    v793 = v247;
    v249 = v818 * v915;
    if (!v818)
    {
      v248 = 1;
    }

    v789 = v248;
    v840 = v5 - 3;
    v895 = 8 * v5 * v249;
    v250 = -(v915 * v5);
    v251 = v5 * v249 * v4;
    v775 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v252 = v5 * (v249 - 1);
    v253 = &v628[v252 + 3];
    v254 = v5 * (8 * v249 - 1);
    v255 = &v628[v254 + 3];
    v256 = v5 * (~v249 + 8 * v249);
    v257 = &v628[v256 + 3];
    v258 = v5 * (6 * v249 - 1);
    v259 = &v628[v258 + 3];
    v260 = 4 * v249 - 1;
    v261 = v5 * (v260 + v249);
    v262 = &v628[v261 + 3];
    v263 = v5 * v260;
    v264 = &v628[v263 + 3];
    v265 = 2 * v249 - 1;
    v266 = v5 * (v265 + v249);
    v267 = &v628[v266 + 3];
    v268 = v5 * v265;
    v269 = v251;
    v270 = &v628[v268 + 3];
    v271 = v915 * v5;
    v771 = v254 + 6;
    v767 = v256 + 6;
    v763 = v258 + 6;
    v759 = v261 + 6;
    v756 = v263 + 6;
    v752 = v266 + 6;
    v748 = v268 + 6;
    v744 = v252 + 6;
    v785 = v915 * v5;
    v780 = v269;
    while (1)
    {
      v834 = v246;
      v831 = v253;
      v826 = v255;
      v821 = v257;
      v815 = v259;
      v810 = v262;
      v805 = v264;
      v801 = v267;
      v797 = v270;
      if (v5 >= 4)
      {
        if (v793)
        {
          goto LABEL_264;
        }

        v272 = 0;
        v273 = v262;
        v274 = v259;
        v275 = v257;
        v276 = v255;
        v277 = v253;
        v278 = v628;
LABEL_269:
        v885 = v272;
        v890 = v278;
        v279 = 0;
        v880 = v270;
        v280 = v270;
        v875 = v267;
        v281 = v267;
        v870 = v264;
        v282 = v264;
        v865 = v273;
        v860 = v274;
        v855 = v275;
        v850 = v276;
        v283 = v277;
LABEL_271:
        v284 = 0;
        v285 = v279 | 2;
        v286 = v279 | 3;
        v287 = v279 | 4;
        v288 = v279 | 5;
        v289 = v279 | 6;
        v290 = v279 | 7;
        v912 = v280;
        v907 = v281;
        v901 = v282;
        v291 = v273;
        v292 = v274;
        v293 = v275;
        v294 = v276;
        v295 = v283;
LABEL_273:
        v296 = 0;
        v297 = v915;
        while (1)
        {
          result->i8[0] = *(v295 + v296 - 3);
          result->i8[1] = *(v295 + v296 - 2);
          result->i8[2] = *(v295 + v296 - 1);
          result->i8[3] = *(v295 + v296);
          if ((v279 | 1) < v4)
          {
            result->i8[4] = *(v280 + v296 - 3);
            result->i8[5] = *(v280 + v296 - 2);
            result->i8[6] = *(v280 + v296 - 1);
            result->i8[7] = *(v280 + v296);
            if (v285 >= v4)
            {
LABEL_277:
              if (v286 >= v4)
              {
                goto LABEL_278;
              }

              goto LABEL_285;
            }
          }

          else if (v285 >= v4)
          {
            goto LABEL_277;
          }

          result->i8[8] = *(v281 + v296 - 3);
          result->i8[9] = *(v281 + v296 - 2);
          result->i8[10] = *(v281 + v296 - 1);
          result->i8[11] = *(v281 + v296);
          if (v286 >= v4)
          {
LABEL_278:
            if (v287 >= v4)
            {
              goto LABEL_279;
            }

            goto LABEL_286;
          }

LABEL_285:
          result->i8[12] = *(v282 + v296 - 3);
          result->i8[13] = *(v282 + v296 - 2);
          result->i8[14] = *(v282 + v296 - 1);
          result->i8[15] = *(v282 + v296);
          if (v287 >= v4)
          {
LABEL_279:
            if (v288 >= v4)
            {
              goto LABEL_280;
            }

            goto LABEL_287;
          }

LABEL_286:
          result[1].i8[0] = *(v291 + v296 - 3);
          result[1].i8[1] = *(v291 + v296 - 2);
          result[1].i8[2] = *(v291 + v296 - 1);
          result[1].i8[3] = *(v291 + v296);
          if (v288 >= v4)
          {
LABEL_280:
            if (v289 >= v4)
            {
              goto LABEL_281;
            }

            goto LABEL_288;
          }

LABEL_287:
          result[1].i8[4] = *(v292 + v296 - 3);
          result[1].i8[5] = *(v292 + v296 - 2);
          result[1].i8[6] = *(v292 + v296 - 1);
          result[1].i8[7] = *(v292 + v296);
          if (v289 >= v4)
          {
LABEL_281:
            if (v290 < v4)
            {
              goto LABEL_289;
            }

            goto LABEL_274;
          }

LABEL_288:
          result[1].i8[8] = *(v293 + v296 - 3);
          result[1].i8[9] = *(v293 + v296 - 2);
          result[1].i8[10] = *(v293 + v296 - 1);
          result[1].i8[11] = *(v293 + v296);
          if (v290 < v4)
          {
LABEL_289:
            result[1].i8[12] = *(v294 + v296 - 3);
            result[1].i8[13] = *(v294 + v296 - 2);
            result[1].i8[14] = *(v294 + v296 - 1);
            result[1].i8[15] = *(v294 + v296);
          }

LABEL_274:
          v296 -= v914;
          result += 2;
          if (!--v297)
          {
            ++v284;
            v295 += v250;
            v294 += v250;
            v293 += v250;
            v292 += v250;
            v291 += v250;
            v282 += v250;
            v281 += v250;
            v280 += v250;
            if (v284 != v818)
            {
              goto LABEL_273;
            }

            v279 += 8;
            v283 += v895;
            v276 += v895;
            v275 += v895;
            v274 += v895;
            v273 += v895;
            v282 = v901 + v895;
            v281 = v907 + v895;
            v280 = v912 + v895;
            if (v279 < v4)
            {
              goto LABEL_271;
            }

            v272 = v885 + 4;
            v278 = v890 + 4;
            v277 += 4;
            v276 = v850 + 4;
            v275 = v855 + 4;
            v274 = v860 + 4;
            v273 = v865 + 4;
            v264 = v870 + 4;
            v267 = v875 + 4;
            v270 = v880 + 4;
            if (v885 + 4 < v840)
            {
              goto LABEL_269;
            }

            v298 = v775;
            v5 = v914;
            v271 = v785;
            v269 = v780;
            if (v4)
            {
              goto LABEL_293;
            }

            goto LABEL_264;
          }
        }
      }

      v298 = 0;
      v278 = v628;
      if (!v4)
      {
        goto LABEL_264;
      }

LABEL_293:
      v299 = v5 - v298;
      if (v5 > v298 && !v789)
      {
        break;
      }

LABEL_264:
      v246 = v834 + 1;
      v628 += v269;
      v253 = v831 + v269;
      v255 = v826 + v269;
      v257 = v821 + v269;
      v259 = v815 + v269;
      v262 = v810 + v269;
      v264 = v805 + v269;
      v267 = v801 + v269;
      v270 = v797 + v269;
      if (v834 + 1 == v627)
      {
        return result;
      }
    }

    v300 = 0;
    v301 = 0;
    v302 = &v278[v771];
    v303 = &v278[v767];
    v304 = &v278[v763];
    v305 = &v278[v759];
    v306 = &v278[v756];
    v307 = &v278[v752];
    v308 = &v278[v748];
    v309 = &v278[v744];
LABEL_297:
    v310 = 0;
    v311 = v300;
LABEL_299:
    v312 = v915;
    v313 = v300;
    while (v299 <= 3)
    {
      switch(v299)
      {
        case 1:
          goto LABEL_323;
        case 2:
          goto LABEL_322;
        case 3:
          goto LABEL_321;
      }

LABEL_324:
      if ((v301 | 1) >= v4)
      {
        goto LABEL_342;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_342;
            }

            result->i8[10] = v308[v313];
          }

          result->i8[9] = v308[v313 - 1];
LABEL_337:
          result->i8[8] = v308[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_337;
        }

        result->i8[7] = v308[v313 - 3];
LABEL_339:
        result->i8[6] = v308[v313 - 4];
LABEL_340:
        result->i8[5] = v308[v313 - 5];
LABEL_341:
        result->i8[4] = v308[v313 - 6];
        goto LABEL_342;
      }

      switch(v299)
      {
        case 1:
          goto LABEL_341;
        case 2:
          goto LABEL_340;
        case 3:
          goto LABEL_339;
      }

LABEL_342:
      if ((v301 | 2) >= v4)
      {
        goto LABEL_360;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_360;
            }

            result->i8[14] = v307[v313];
          }

          result->i8[13] = v307[v313 - 1];
LABEL_355:
          result->i8[12] = v307[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_355;
        }

        result->i8[11] = v307[v313 - 3];
LABEL_357:
        result->i8[10] = v307[v313 - 4];
LABEL_358:
        result->i8[9] = v307[v313 - 5];
LABEL_359:
        result->i8[8] = v307[v313 - 6];
        goto LABEL_360;
      }

      switch(v299)
      {
        case 1:
          goto LABEL_359;
        case 2:
          goto LABEL_358;
        case 3:
          goto LABEL_357;
      }

LABEL_360:
      if ((v301 | 3) >= v4)
      {
        goto LABEL_378;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_378;
            }

            result[1].i8[2] = v306[v313];
          }

          result[1].i8[1] = v306[v313 - 1];
LABEL_373:
          result[1].i8[0] = v306[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_373;
        }

        result->i8[15] = v306[v313 - 3];
LABEL_375:
        result->i8[14] = v306[v313 - 4];
LABEL_376:
        result->i8[13] = v306[v313 - 5];
LABEL_377:
        result->i8[12] = v306[v313 - 6];
        goto LABEL_378;
      }

      switch(v299)
      {
        case 1:
          goto LABEL_377;
        case 2:
          goto LABEL_376;
        case 3:
          goto LABEL_375;
      }

LABEL_378:
      if ((v301 | 4) >= v4)
      {
        goto LABEL_396;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_396;
            }

            result[1].i8[6] = v305[v313];
          }

          result[1].i8[5] = v305[v313 - 1];
LABEL_391:
          result[1].i8[4] = v305[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_391;
        }

        result[1].i8[3] = v305[v313 - 3];
LABEL_393:
        result[1].i8[2] = v305[v313 - 4];
LABEL_394:
        result[1].i8[1] = v305[v313 - 5];
LABEL_395:
        result[1].i8[0] = v305[v313 - 6];
        goto LABEL_396;
      }

      switch(v299)
      {
        case 1:
          goto LABEL_395;
        case 2:
          goto LABEL_394;
        case 3:
          goto LABEL_393;
      }

LABEL_396:
      if ((v301 | 5) >= v4)
      {
        goto LABEL_414;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_414;
            }

            result[1].i8[10] = v304[v313];
          }

          result[1].i8[9] = v304[v313 - 1];
LABEL_409:
          result[1].i8[8] = v304[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_409;
        }

        result[1].i8[7] = v304[v313 - 3];
LABEL_411:
        result[1].i8[6] = v304[v313 - 4];
LABEL_412:
        result[1].i8[5] = v304[v313 - 5];
LABEL_413:
        result[1].i8[4] = v304[v313 - 6];
        goto LABEL_414;
      }

      switch(v299)
      {
        case 1:
          goto LABEL_413;
        case 2:
          goto LABEL_412;
        case 3:
          goto LABEL_411;
      }

LABEL_414:
      if ((v301 | 6) >= v4)
      {
        goto LABEL_432;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_432;
            }

            result[1].i8[14] = v303[v313];
          }

          result[1].i8[13] = v303[v313 - 1];
LABEL_427:
          result[1].i8[12] = v303[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_427;
        }

        result[1].i8[11] = v303[v313 - 3];
LABEL_429:
        result[1].i8[10] = v303[v313 - 4];
LABEL_430:
        result[1].i8[9] = v303[v313 - 5];
LABEL_431:
        result[1].i8[8] = v303[v313 - 6];
        goto LABEL_432;
      }

      switch(v299)
      {
        case 1:
          goto LABEL_431;
        case 2:
          goto LABEL_430;
        case 3:
          goto LABEL_429;
      }

LABEL_432:
      if ((v301 | 7) >= v4)
      {
        goto LABEL_306;
      }

      if (v299 > 3)
      {
        if (v299 > 5)
        {
          if (v299 != 6)
          {
            if (v299 != 7)
            {
              goto LABEL_306;
            }

            result[2].i8[2] = v302[v313];
          }

          result[2].i8[1] = v302[v313 - 1];
LABEL_301:
          result[2].i8[0] = v302[v313 - 2];
        }

        else if (v299 != 4)
        {
          goto LABEL_301;
        }

        result[1].i8[15] = v302[v313 - 3];
LABEL_303:
        result[1].i8[14] = v302[v313 - 4];
        goto LABEL_304;
      }

      if (v299 == 1)
      {
        goto LABEL_305;
      }

      if (v299 != 2)
      {
        if (v299 != 3)
        {
          goto LABEL_306;
        }

        goto LABEL_303;
      }

LABEL_304:
      result[1].i8[13] = v302[v313 - 5];
LABEL_305:
      result[1].i8[12] = v302[v313 - 6];
LABEL_306:
      result += 2;
      v313 -= v5;
      if (!--v312)
      {
        ++v310;
        v300 -= v271;
        if (v310 == v818)
        {
          v301 += 8;
          v300 = v311 + v895;
          if (v301 >= v4)
          {
            goto LABEL_264;
          }

          goto LABEL_297;
        }

        goto LABEL_299;
      }
    }

    if (v299 > 5)
    {
      if (v299 != 6)
      {
        if (v299 != 7)
        {
          goto LABEL_324;
        }

        result->i8[6] = v309[v313];
      }

      result->i8[5] = v309[v313 - 1];
    }

    else if (v299 == 4)
    {
      goto LABEL_320;
    }

    result->i8[4] = v309[v313 - 2];
LABEL_320:
    result->i8[3] = v309[v313 - 3];
LABEL_321:
    result->i8[2] = v309[v313 - 4];
LABEL_322:
    result->i8[1] = v309[v313 - 5];
LABEL_323:
    result->i8[0] = v309[v313 - 6];
    goto LABEL_324;
  }

  if (v627)
  {
    v7 = v818 * v915;
    v8 = v818 * v915 * (v5 + 4) - 1;
    v9 = v818 * v915 * (v5 + 3) - 1;
    v10 = v818 * v915 * (v5 + 2) - 1;
    v11 = v818 * v915 * (2 * v5 + 4) - 1;
    v12 = v818 * v915 * (2 * v5 + 3) - 1;
    v13 = v818 * v915 * (2 * v5 + 2) - 1;
    v14 = v818 * v915 * ((2 * v5) | 1) - 1;
    v15 = v818 * v915 * (3 * v5 + 4) - 1;
    v16 = v818 * v915 * (3 * v5 + 3) - 1;
    v17 = v818 * v915 * (3 * v5 + 2) - 1;
    v586 = v818 * v915 * (4 * v5 + 4) - 1;
    v585 = v818 * v915 * ((4 * v5) | 3) - 1;
    v584 = v818 * v915 * ((4 * v5) | 2) - 1;
    v583 = v818 * v915 * ((4 * v5) | 1) - 1;
    v581 = v818 * v915 * (5 * v5 + 3) - 1;
    v582 = v818 * v915 * (5 * v5 + 4) - 1;
    v580 = v818 * v915 * (5 * v5 + 2) - 1;
    v579 = v818 * v915 * (6 * v5 + 4) - 1;
    v578 = v818 * v915 * (6 * v5 + 3) - 1;
    v576 = v818 * v915 * ((6 * v5) | 1) - 1;
    v577 = v818 * v915 * (6 * v5 + 2) - 1;
    v575 = v818 * v915 * (7 * v5 + 4) - 1;
    v574 = v818 * v915 * (7 * v5 + 3) - 1;
    v573 = v818 * v915 * (7 * v5 + 2) - 1;
    v561 = 6 * v818 * v915 - 1;
    v560 = v818 * v915 * (v5 + 7) - 1;
    v558 = v818 * v915 * (v5 + 5) - 1;
    v559 = v818 * v915 * (v5 + 6) - 1;
    v557 = v818 * v915 * (2 * v5 + 7) - 1;
    v555 = v818 * v915 * (2 * v5 + 5) - 1;
    v556 = v818 * v915 * (2 * v5 + 6) - 1;
    v554 = v818 * v915 * (3 * v5 + 7) - 1;
    v553 = v818 * v915 * (3 * v5 + 6) - 1;
    v552 = v818 * v915 * (3 * v5 + 5) - 1;
    v551 = v818 * v915 * (4 * v5 + 7) - 1;
    v550 = v818 * v915 * (4 * v5 + 6) - 1;
    v549 = v818 * v915 * (4 * v5 + 5) - 1;
    v547 = v818 * v915 * (5 * v5 + 6) - 1;
    v548 = v818 * v915 * (5 * v5 + 7) - 1;
    v545 = v818 * v915 * (6 * v5 + 7) - 1;
    v546 = v818 * v915 * (5 * v5 + 5) - 1;
    v543 = v818 * v915 * (6 * v5 + 5) - 1;
    v544 = v818 * v915 * (6 * v5 + 6) - 1;
    v541 = v818 * v915 * (7 * v5 + 6) - 1;
    v542 = v818 * v915 * (7 * v5 + 7) - 1;
    v540 = v818 * v915 * (7 * v5 + 5) - 1;
    v539 = ~(v818 * v915) + 8 * v818 * v915;
    v18 = v4 == 0;
    if (!v818)
    {
      v18 = 1;
    }

    if (!v915)
    {
      v18 = 1;
    }

    v589 = v18;
    v19 = v915 == 0;
    if (!v818)
    {
      v19 = 1;
    }

    v588 = v19;
    v916 = -v915;
    v20 = 2 * v7 - 1;
    v21 = v7 - 1;
    v22 = v7 - 1 + v7 * 3 * v5;
    v23 = v7 - 1 + v7 * 5 * v5;
    v24 = 0;
    v571 = v8;
    v572 = v7 - 1 + v7 * 7 * v5;
    v630 = 4 * v7;
    v25 = 4 * v7 - 1;
    v26 = v20 + v7;
    v532 = v25 + v7;
    v27 = v5 * v7;
    v710 = 8 * v27;
    v590 = v27 * v4;
    v629 = v5 - 3;
    v587 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = &a2[v8];
    v569 = v10;
    v570 = v9;
    v29 = &a2[v9];
    v30 = &a2[v10];
    v531 = v21 + v27;
    v31 = &a2[v21 + v27];
    v567 = v12;
    v568 = v11;
    v32 = &v628[v11];
    v33 = &v628[v12];
    v565 = v14;
    v566 = v13;
    v34 = &v628[v13];
    v614 = &v628[v14];
    v563 = v16;
    v564 = v15;
    v612 = &v628[v15];
    v610 = &v628[v16];
    v562 = v17;
    v35 = &v628[v17];
    v535 = v23;
    v536 = v22;
    v36 = &v628[v586];
    v37 = &v628[v585];
    v38 = &v628[v584];
    v39 = &v628[v583];
    v40 = &v628[v582];
    v41 = &v628[v581];
    v42 = &v628[v580];
    v43 = &v628[v23];
    v44 = &v628[v22];
    v45 = &v628[v578];
    v626 = &v628[v577];
    v625 = &v628[v576];
    v624 = &v628[v575];
    v623 = &v628[v574];
    v622 = &v628[v573];
    v621 = &v628[v572];
    v46 = &v628[v579];
    v533 = v26;
    v534 = v25;
    v620 = &v628[v25];
    v47 = v610;
    v619 = &v628[v26];
    v537 = v21;
    v538 = v20;
    v618 = &v628[v20];
    v48 = v612;
    v617 = &v628[v21];
    v49 = v614;
    while (1)
    {
      v616 = v24;
      v609 = v28;
      v608 = v29;
      v607 = v30;
      v606 = v31;
      v605 = v32;
      v604 = v33;
      v603 = v34;
      v615 = v49;
      v613 = v48;
      v611 = v47;
      v602 = v35;
      v601 = v44;
      v600 = v36;
      v599 = v37;
      v598 = v38;
      v597 = v39;
      v596 = v40;
      v595 = v41;
      v593 = v43;
      v594 = v42;
      v591 = v45;
      v592 = v46;
      if (v5 >= 4)
      {
        if (v589)
        {
          goto LABEL_11;
        }

        v50 = 0;
        v51 = v617;
        v52 = v618;
        v679 = v35;
        v53 = v623;
        v54 = v47;
        v55 = v622;
        v56 = v48;
        v57 = v621;
        v677 = v49;
        v58 = v620;
        v706 = v34;
        v59 = v619;
        v704 = v33;
        v60 = v56;
        v61 = v32;
        v62 = v54;
        v702 = v31;
        v63 = v624;
        v700 = v30;
        v64 = v679;
        v698 = v29;
        v65 = v626;
        v696 = v28;
        v66 = v625;
        v67 = v628;
LABEL_16:
        v673 = v50;
        v675 = v67;
        v68 = 0;
        v671 = v51;
        v69 = v51;
        v669 = v52;
        v694 = v59;
        v70 = v61;
        v71 = v59;
        v72 = v52;
        v692 = v58;
        v73 = v58;
        v74 = v71;
        v690 = v57;
        v75 = v57;
        v76 = v73;
        v688 = v55;
        v667 = v53;
        v77 = v53;
        v78 = v75;
        v686 = v63;
        v79 = v63;
        v80 = v55;
        v684 = v66;
        v81 = v66;
        v82 = v77;
        v682 = v65;
        v83 = v65;
        v84 = v79;
        v665 = v45;
        v663 = v46;
        v661 = v43;
        v659 = v42;
        v657 = v41;
        v655 = v40;
        v653 = v39;
        v813 = v39;
        v85 = v42;
        v651 = v38;
        v86 = v38;
        v87 = v43;
        v649 = v37;
        v88 = v37;
        v89 = v46;
        v647 = v36;
        v90 = v36;
        v91 = v45;
        v645 = v44;
        v92 = v44;
        v93 = v83;
        v680 = v64;
        v94 = v64;
        v95 = v81;
        v643 = v62;
        v641 = v60;
        v808 = v677;
        v803 = v706;
        v799 = v704;
        v708 = v70;
        v795 = v70;
        v791 = v702;
        v787 = v700;
        v783 = v698;
        v778 = v696;
        v96 = v677;
LABEL_18:
        v765 = v90;
        v761 = v92;
        v769 = v88;
        v773 = v86;
        v754 = v60;
        v819 = 0;
        v97 = v68 | 2;
        v98 = v68 | 3;
        v99 = v68 | 4;
        v100 = v68 | 5;
        v101 = v68 | 6;
        v750 = v68;
        v102 = v94;
        v103 = v68 | 7;
        v746 = v69;
        v742 = v72;
        v739 = v74;
        v736 = v76;
        v733 = v78;
        v909 = v78;
        v731 = v80;
        v904 = v80;
        v729 = v82;
        v898 = v82;
        v727 = v84;
        v893 = v84;
        v725 = v95;
        v888 = v95;
        v723 = v93;
        v883 = v93;
        v721 = v91;
        v878 = v91;
        v719 = v89;
        v873 = v89;
        v717 = v87;
        v868 = v87;
        v715 = v85;
        v863 = v85;
        v858 = v41;
        v712 = v40;
        v853 = v40;
        v848 = v813;
        v844 = v773;
        v838 = v769;
        v832 = v765;
        v828 = v761;
        v824 = v102;
        v104 = v62;
        v105 = v754;
        v106 = v808;
        v107 = v803;
        v108 = v799;
        v109 = v795;
        v110 = v791;
        v111 = v787;
        v112 = v783;
        v113 = v778;
LABEL_20:
        v114 = 0;
        while (1)
        {
          a4.i16[0] = v69[v114];
          a4.i16[1] = v72[v114];
          a4.i8[4] = v74[v114];
          a4.i8[6] = v76[v114];
          *a4.i8 = vmovn_s16(a4);
          result->i32[0] = a4.i32[0];
          if ((v68 | 1uLL) < v4)
          {
            a4.i16[0] = v110[v114];
            a4.i16[1] = v111[v114];
            a4.i8[4] = v112[v114];
            a4.i8[6] = v113[v114];
            v96 = v677;
            *a4.i8 = vmovn_s16(a4);
            result->i32[1] = a4.i32[0];
            if (v97 >= v4)
            {
LABEL_24:
              if (v98 >= v4)
              {
                goto LABEL_25;
              }

              goto LABEL_32;
            }
          }

          else if (v97 >= v4)
          {
            goto LABEL_24;
          }

          a4.i16[0] = v106[v114];
          a4.i16[1] = v107[v114];
          a4.i8[4] = v108[v114];
          v96 = v677;
          a4.i8[6] = v109[v114];
          *a4.i8 = vmovn_s16(a4);
          result->i32[2] = a4.i32[0];
          if (v98 >= v4)
          {
LABEL_25:
            if (v99 >= v4)
            {
              goto LABEL_26;
            }

            goto LABEL_33;
          }

LABEL_32:
          a4.i16[0] = v828[v114];
          a4.i16[1] = v824[v114];
          a4.i8[4] = v104[v114];
          v96 = v677;
          a4.i8[6] = v105[v114];
          *a4.i8 = vmovn_s16(a4);
          result->i32[3] = a4.i32[0];
          if (v99 >= v4)
          {
LABEL_26:
            if (v100 >= v4)
            {
              goto LABEL_27;
            }

            goto LABEL_34;
          }

LABEL_33:
          a4.i16[0] = v848[v114];
          a4.i16[1] = v844[v114];
          a4.i8[4] = v838[v114];
          v96 = v677;
          a4.i8[6] = v832[v114];
          *a4.i8 = vmovn_s16(a4);
          result[1].i32[0] = a4.i32[0];
          if (v100 >= v4)
          {
LABEL_27:
            if (v101 >= v4)
            {
              goto LABEL_28;
            }

            goto LABEL_35;
          }

LABEL_34:
          a4.i16[0] = v868[v114];
          a4.i16[1] = v863[v114];
          a4.i8[4] = v858[v114];
          v96 = v677;
          a4.i8[6] = v853[v114];
          *a4.i8 = vmovn_s16(a4);
          result[1].i32[1] = a4.i32[0];
          if (v101 >= v4)
          {
LABEL_28:
            if (v103 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_21;
          }

LABEL_35:
          a4.i16[0] = v888[v114];
          a4.i16[1] = v883[v114];
          a4.i8[4] = v878[v114];
          v96 = v677;
          a4.i8[6] = v873[v114];
          *a4.i8 = vmovn_s16(a4);
          result[1].i32[2] = a4.i32[0];
          if (v103 < v4)
          {
LABEL_36:
            a4.i16[0] = v909[v114];
            a4.i16[1] = v904[v114];
            a4.i8[4] = v898[v114];
            v96 = v677;
            a4.i8[6] = v893[v114];
            *a4.i8 = vmovn_s16(a4);
            result[1].i32[3] = a4.i32[0];
          }

LABEL_21:
          result += 2;
          if (v916 == --v114)
          {
            v113 += v916;
            v112 += v916;
            v111 += v916;
            v110 += v916;
            v109 += v916;
            v108 += v916;
            v107 += v916;
            v106 += v916;
            v105 += v916;
            v104 += v916;
            v824 += v916;
            v828 += v916;
            v832 += v916;
            v838 += v916;
            v844 += v916;
            v848 += v916;
            v853 += v916;
            v858 += v916;
            v863 += v916;
            v868 += v916;
            v873 += v916;
            v878 += v916;
            v883 += v916;
            v888 += v916;
            v893 += v916;
            v898 += v916;
            v904 += v916;
            v909 += v916;
            v76 += v916;
            v74 += v916;
            v72 += v916;
            v69 += v916;
            if (++v819 != v818)
            {
              goto LABEL_20;
            }

            v68 += 8;
            v778 += v710;
            v783 += v710;
            v787 += v710;
            v791 += v710;
            v795 += v710;
            v799 += v710;
            v803 += v710;
            v808 += v710;
            v60 = &v754[v710];
            v62 += v710;
            v94 = &v102[v710];
            v92 = &v761[v710];
            v90 = &v765[v710];
            v88 = &v769[v710];
            v86 = &v773[v710];
            v813 += v710;
            v40 = &v712[v710];
            v41 += v710;
            v85 = &v715[v710];
            v87 = &v717[v710];
            v89 = &v719[v710];
            v91 = &v721[v710];
            v93 = &v723[v710];
            v95 = &v725[v710];
            v84 = &v727[v710];
            v82 = &v729[v710];
            v80 = &v731[v710];
            v78 = &v733[v710];
            v76 = &v736[v710];
            v74 = &v739[v710];
            v72 = &v742[v710];
            v69 = &v746[v710];
            if (v750 + 8 < v4)
            {
              goto LABEL_18;
            }

            v50 = v673 + 4;
            v67 = &v675[v630];
            v696 += v630;
            v698 += v630;
            v700 += v630;
            v702 += v630;
            v704 += v630;
            v706 += v630;
            v677 = &v96[v630];
            v60 = &v641[v630];
            v62 = &v643[v630];
            v64 = &v680[v630];
            v44 = &v645[v630];
            v36 = &v647[v630];
            v37 = &v649[v630];
            v38 = &v651[v630];
            v39 = &v653[v630];
            v40 = &v655[v630];
            v41 = &v657[v630];
            v42 = &v659[v630];
            v43 = &v661[v630];
            v46 = &v663[v630];
            v45 = &v665[v630];
            v65 = &v682[v630];
            v66 = &v684[v630];
            v63 = &v686[v630];
            v53 = &v667[v630];
            v55 = &v688[v630];
            v57 = &v690[v630];
            v58 = &v692[v630];
            v59 = &v694[v630];
            v52 = &v669[v630];
            v51 = &v671[v630];
            v61 = &v708[v630];
            if (v673 + 4 < v629)
            {
              goto LABEL_16;
            }

            v115 = v587;
            v5 = v914;
            if (v4)
            {
              goto LABEL_40;
            }

            goto LABEL_11;
          }
        }
      }

      v115 = 0;
      v67 = v628;
      if (!v4)
      {
        goto LABEL_11;
      }

LABEL_40:
      v116 = v5 - v115;
      if (v5 > v115 && !v588)
      {
        break;
      }

LABEL_11:
      v24 = v616 + 1;
      v628 += v590;
      v28 = &v609[v590];
      v29 = &v608[v590];
      v30 = &v607[v590];
      v31 = &v606[v590];
      v32 = &v605[v590];
      v33 = &v604[v590];
      v34 = &v603[v590];
      v49 = &v615[v590];
      v48 = &v613[v590];
      v47 = &v611[v590];
      v35 = &v602[v590];
      v44 = &v601[v590];
      v36 = &v600[v590];
      v37 = &v599[v590];
      v38 = &v598[v590];
      v39 = &v597[v590];
      v40 = &v596[v590];
      v41 = &v595[v590];
      v42 = &v594[v590];
      v43 = &v593[v590];
      v46 = &v592[v590];
      v45 = &v591[v590];
      v626 += v590;
      v625 += v590;
      v624 += v590;
      v623 += v590;
      v622 += v590;
      v621 += v590;
      v620 += v590;
      v619 += v590;
      v618 += v590;
      v617 += v590;
      v5 = v914;
      if (v616 + 1 == v627)
      {
        return result;
      }
    }

    v117 = 0;
    v670 = &v67[v539];
    v732 = &v67[v561];
    v730 = &v67[v532];
    v728 = &v67[v534];
    v726 = &v67[v533];
    v724 = &v67[v538];
    v722 = &v67[v560];
    v720 = &v67[v559];
    v718 = &v67[v558];
    v118 = &v67[v571];
    v716 = &v67[v570];
    v714 = &v67[v569];
    v713 = &v67[v531];
    v119 = &v67[v557];
    v120 = &v67[v556];
    v121 = &v67[v555];
    v711 = &v67[v568];
    v709 = &v67[v567];
    v707 = &v67[v566];
    v705 = &v67[v565];
    v703 = &v67[v554];
    v701 = &v67[v553];
    v122 = v67;
    v123 = &v67[v552];
    v124 = &v122[v564];
    v699 = &v122[v563];
    v697 = &v122[v562];
    v695 = &v122[v536];
    v693 = &v122[v551];
    v125 = &v122[v550];
    v126 = &v122[v549];
    v127 = &v122[v586];
    v128 = &v122[v585];
    v129 = &v122[v584];
    v130 = &v122[v583];
    v131 = &v122[v548];
    v132 = &v122[v547];
    v133 = &v122[v546];
    v134 = &v122[v582];
    v135 = &v122[v581];
    v136 = &v122[v580];
    v691 = &v122[v535];
    v689 = &v122[v545];
    v687 = &v122[v544];
    v685 = &v122[v543];
    v683 = &v122[v579];
    v681 = &v122[v578];
    v678 = &v122[v577];
    v676 = &v122[v576];
    v674 = &v122[v542];
    v672 = &v122[v541];
    v137 = &v122[v540];
    v138 = &v122[v575];
    v139 = &v122[v574];
    v140 = &v122[v573];
    v141 = &v122[v572];
    v142 = &v122[v537];
LABEL_44:
    v660 = v123;
    v658 = v124;
    v664 = v120;
    v662 = v121;
    v666 = v119;
    v668 = v118;
    v143 = v117 | 1;
    v144 = v117 | 2;
    v145 = v117 | 3;
    v146 = v117 | 4;
    v147 = v142;
    v148 = v117 | 5;
    v149 = v131;
    v150 = v117 | 6;
    v656 = v117;
    v151 = v132;
    v152 = v117 | 7;
    v153 = v128;
    v631 = v147;
    v154 = v147;
    v632 = v141;
    v633 = v140;
    v910 = v140;
    v634 = v139;
    v894 = v139;
    v635 = v138;
    v859 = v138;
    v636 = v137;
    v820 = v137;
    v788 = v672;
    v755 = v674;
    v155 = v676;
    v905 = v678;
    v889 = v681;
    v854 = v683;
    v814 = v685;
    v784 = v687;
    v751 = v689;
    v156 = v691;
    v637 = v136;
    v899 = v136;
    v638 = v135;
    v884 = v135;
    v639 = v134;
    v849 = v134;
    v640 = v133;
    v809 = v133;
    v779 = v151;
    v642 = v149;
    v747 = v149;
    v157 = 0;
    v644 = v130;
    v646 = v129;
    v648 = v153;
    v879 = v153;
    v650 = v127;
    v845 = v127;
    v652 = v126;
    v804 = v126;
    v654 = v125;
    v774 = v125;
    v743 = v693;
    v158 = v695;
    v159 = v697;
    v874 = v699;
    v839 = v658;
    v800 = v660;
    v770 = v701;
    v740 = v703;
    v160 = v705;
    v161 = v707;
    v869 = v709;
    v833 = v711;
    v796 = v662;
    v766 = v664;
    v737 = v666;
    v162 = v713;
    v163 = v714;
    v864 = v716;
    v829 = v668;
    v792 = v718;
    v762 = v720;
    v734 = v722;
    v164 = v724;
    v165 = v726;
    v166 = v728;
    v167 = v730;
    v825 = v732;
    v758 = v670;
LABEL_46:
    v168 = 0;
    while (v116 <= 3)
    {
      switch(v116)
      {
        case 1:
          goto LABEL_70;
        case 2:
          goto LABEL_69;
        case 3:
          goto LABEL_68;
      }

LABEL_71:
      if (v143 >= v4)
      {
        goto LABEL_89;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_89;
            }

            result->i8[10] = v734[v168];
          }

          result->i8[9] = v762[v168];
LABEL_84:
          result->i8[8] = v792[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_84;
        }

        result->i8[7] = v829[v168];
LABEL_86:
        result->i8[6] = v864[v168];
LABEL_87:
        result->i8[5] = v163[v168];
LABEL_88:
        result->i8[4] = v162[v168];
        goto LABEL_89;
      }

      switch(v116)
      {
        case 1:
          goto LABEL_88;
        case 2:
          goto LABEL_87;
        case 3:
          goto LABEL_86;
      }

LABEL_89:
      if (v144 >= v4)
      {
        goto LABEL_107;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_107;
            }

            result->i8[14] = v737[v168];
          }

          result->i8[13] = v766[v168];
LABEL_102:
          result->i8[12] = v796[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_102;
        }

        result->i8[11] = v833[v168];
LABEL_104:
        result->i8[10] = v869[v168];
LABEL_105:
        result->i8[9] = v161[v168];
LABEL_106:
        result->i8[8] = v160[v168];
        goto LABEL_107;
      }

      switch(v116)
      {
        case 1:
          goto LABEL_106;
        case 2:
          goto LABEL_105;
        case 3:
          goto LABEL_104;
      }

LABEL_107:
      if (v145 >= v4)
      {
        goto LABEL_125;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_125;
            }

            result[1].i8[2] = v740[v168];
          }

          result[1].i8[1] = v770[v168];
LABEL_120:
          result[1].i8[0] = v800[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_120;
        }

        result->i8[15] = v839[v168];
LABEL_122:
        result->i8[14] = v874[v168];
LABEL_123:
        result->i8[13] = v159[v168];
LABEL_124:
        result->i8[12] = v158[v168];
        goto LABEL_125;
      }

      switch(v116)
      {
        case 1:
          goto LABEL_124;
        case 2:
          goto LABEL_123;
        case 3:
          goto LABEL_122;
      }

LABEL_125:
      if (v146 >= v4)
      {
        goto LABEL_143;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_143;
            }

            result[1].i8[6] = v743[v168];
          }

          result[1].i8[5] = v774[v168];
LABEL_138:
          result[1].i8[4] = v804[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_138;
        }

        result[1].i8[3] = v845[v168];
LABEL_140:
        result[1].i8[2] = v879[v168];
LABEL_141:
        result[1].i8[1] = v129[v168];
LABEL_142:
        result[1].i8[0] = v130[v168];
        goto LABEL_143;
      }

      switch(v116)
      {
        case 1:
          goto LABEL_142;
        case 2:
          goto LABEL_141;
        case 3:
          goto LABEL_140;
      }

LABEL_143:
      if (v148 >= v4)
      {
        goto LABEL_161;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_161;
            }

            result[1].i8[10] = v747[v168];
          }

          result[1].i8[9] = v779[v168];
LABEL_156:
          result[1].i8[8] = v809[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_156;
        }

        result[1].i8[7] = v849[v168];
LABEL_158:
        result[1].i8[6] = v884[v168];
LABEL_159:
        result[1].i8[5] = v899[v168];
LABEL_160:
        result[1].i8[4] = v156[v168];
        goto LABEL_161;
      }

      switch(v116)
      {
        case 1:
          goto LABEL_160;
        case 2:
          goto LABEL_159;
        case 3:
          goto LABEL_158;
      }

LABEL_161:
      if (v150 >= v4)
      {
        goto LABEL_179;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_179;
            }

            result[1].i8[14] = v751[v168];
          }

          result[1].i8[13] = v784[v168];
LABEL_174:
          result[1].i8[12] = v814[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_174;
        }

        result[1].i8[11] = v854[v168];
LABEL_176:
        result[1].i8[10] = v889[v168];
LABEL_177:
        result[1].i8[9] = v905[v168];
LABEL_178:
        result[1].i8[8] = v155[v168];
        goto LABEL_179;
      }

      switch(v116)
      {
        case 1:
          goto LABEL_178;
        case 2:
          goto LABEL_177;
        case 3:
          goto LABEL_176;
      }

LABEL_179:
      if (v152 >= v4)
      {
        goto LABEL_53;
      }

      if (v116 > 3)
      {
        if (v116 > 5)
        {
          if (v116 != 6)
          {
            if (v116 != 7)
            {
              goto LABEL_53;
            }

            result[2].i8[2] = v755[v168];
          }

          result[2].i8[1] = v788[v168];
LABEL_48:
          result[2].i8[0] = v820[v168];
        }

        else if (v116 != 4)
        {
          goto LABEL_48;
        }

        result[1].i8[15] = v859[v168];
LABEL_50:
        result[1].i8[14] = v894[v168];
        goto LABEL_51;
      }

      if (v116 == 1)
      {
        goto LABEL_52;
      }

      if (v116 != 2)
      {
        if (v116 != 3)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

LABEL_51:
      result[1].i8[13] = v910[v168];
LABEL_52:
      result[1].i8[12] = v141[v168];
LABEL_53:
      result += 2;
      if (v916 == --v168)
      {
        ++v157;
        v758 += v916;
        v825 += v916;
        v167 += v916;
        v166 += v916;
        v165 += v916;
        v164 += v916;
        v734 += v916;
        v762 += v916;
        v792 += v916;
        v829 += v916;
        v864 += v916;
        v163 += v916;
        v162 += v916;
        v737 += v916;
        v766 += v916;
        v796 += v916;
        v833 += v916;
        v869 += v916;
        v161 += v916;
        v160 += v916;
        v740 += v916;
        v770 += v916;
        v800 += v916;
        v839 += v916;
        v874 += v916;
        v159 += v916;
        v158 += v916;
        v743 += v916;
        v774 += v916;
        v804 += v916;
        v845 += v916;
        v879 += v916;
        v129 += v916;
        v130 += v916;
        v747 += v916;
        v779 += v916;
        v809 += v916;
        v849 += v916;
        v884 += v916;
        v899 += v916;
        v156 += v916;
        v751 += v916;
        v784 += v916;
        v814 += v916;
        v854 += v916;
        v889 += v916;
        v905 += v916;
        v155 += v916;
        v755 += v916;
        v788 += v916;
        v820 += v916;
        v859 += v916;
        v894 += v916;
        v910 += v916;
        v141 += v916;
        v154 += v916;
        if (v157 == v818)
        {
          v117 = v656 + 8;
          v670 += v710;
          v732 += v710;
          v730 += v710;
          v728 += v710;
          v726 += v710;
          v724 += v710;
          v722 += v710;
          v720 += v710;
          v718 += v710;
          v118 = &v668[v710];
          v716 += v710;
          v714 += v710;
          v713 += v710;
          v119 = &v666[v710];
          v120 = &v664[v710];
          v121 = &v662[v710];
          v711 += v710;
          v709 += v710;
          v707 += v710;
          v705 += v710;
          v703 += v710;
          v701 += v710;
          v123 = &v660[v710];
          v124 = &v658[v710];
          v699 += v710;
          v697 += v710;
          v695 += v710;
          v693 += v710;
          v125 = &v654[v710];
          v126 = &v652[v710];
          v127 = &v650[v710];
          v128 = &v648[v710];
          v129 = &v646[v710];
          v130 = &v644[v710];
          v131 = &v642[v710];
          v132 = &v151[v710];
          v133 = &v640[v710];
          v134 = &v639[v710];
          v135 = &v638[v710];
          v136 = &v637[v710];
          v691 += v710;
          v689 += v710;
          v687 += v710;
          v685 += v710;
          v683 += v710;
          v681 += v710;
          v678 += v710;
          v676 += v710;
          v674 += v710;
          v672 += v710;
          v137 = &v636[v710];
          v138 = &v635[v710];
          v139 = &v634[v710];
          v140 = &v633[v710];
          v141 = &v632[v710];
          v142 = &v631[v710];
          if (v656 + 8 >= v4)
          {
            goto LABEL_11;
          }

          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    if (v116 > 5)
    {
      if (v116 != 6)
      {
        if (v116 != 7)
        {
          goto LABEL_71;
        }

        result->i8[6] = v758[v168];
      }

      result->i8[5] = v825[v168];
    }

    else if (v116 == 4)
    {
      goto LABEL_67;
    }

    result->i8[4] = v167[v168];
LABEL_67:
    result->i8[3] = v166[v168];
LABEL_68:
    result->i8[2] = v165[v168];
LABEL_69:
    result->i8[1] = v164[v168];
LABEL_70:
    result->i8[0] = v154[v168];
    goto LABEL_71;
  }

  return result;
}

uint64_t sub_239C33AF4(uint64_t result, unsigned __int8 *a2, uint64_t a3, int16x8_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint16x8_t a9, uint16x8_t a10, uint16x8_t a11)
{
  v400 = a2;
  v12 = result;
  v13 = *(a3 + 8);
  v14 = *(a3 + 32);
  v380 = *(a3 + 48);
  v491 = *(a3 + 56);
  v484 = *(a3 + 64);
  v15 = *(a3 + 108);
  v468 = v14;
  if (*(a3 + 104) != 1)
  {
    v84 = *(a3 + 16);
    v85 = *(a3 + 40);
    v86 = *(a3 + 72);
    v474 = *(a3 + 80);
    if (v15)
    {
      if (v380 && v13 && v491 && v14 && v484)
      {
        result = 0;
        v87 = v484 * v84;
        v88 = v484 * v13 * v491;
        v89 = 8 * v491;
        v90 = v87 * 8 * v491;
        v91 = v484 * v491;
        v92 = 8 * v484 * v491;
        v486 = v491 * v85 * v87;
        v481 = v491 * v14 * v484 * v13;
        do
        {
          v93 = v14;
          v94 = 0;
          v489 = result;
          v95 = result * v93;
          v96 = v400;
          v97 = v12;
          do
          {
            v98 = v94 + v95;
            if ((v94 + v95) % v474 < v86)
            {
              v99 = 0;
              v100 = v96;
              v101 = v97;
              do
              {
                v102 = 0;
                v103 = v100;
                v104 = v101;
                do
                {
                  v105 = 0;
                  v106 = 0;
                  v107 = 1;
                  v108 = v103;
                  v109 = v104;
                  do
                  {
                    if (v13 >= v107)
                    {
                      v110 = v107;
                    }

                    else
                    {
                      v110 = v13;
                    }

                    v111 = v110 + v105;
                    v112 = v108;
                    v113 = v109;
                    do
                    {
                      *v113 = *v112;
                      v113 += 8;
                      v112 += v91;
                      --v111;
                    }

                    while (v111);
                    ++v106;
                    v109 += v92;
                    v108 += v91;
                    ++v107;
                    --v105;
                  }

                  while (v106 != v13);
                  ++v102;
                  v104 += 8;
                  ++v103;
                }

                while (v102 != v491);
                ++v99;
                v101 += v89;
                v100 += v491;
              }

              while (v99 != v484);
              v96 += v88;
            }

            if ((v94 | 1) < v468 && (v98 + 1) % v474 < v86)
            {
              v114 = 0;
              v115 = v97 + 1;
              v116 = v96;
              do
              {
                v117 = 0;
                v118 = v116;
                v119 = v115;
                do
                {
                  v120 = 0;
                  v121 = 0;
                  v122 = 1;
                  v123 = v118;
                  v124 = v119;
                  do
                  {
                    v125 = 0;
                    if (v13 >= v122)
                    {
                      v126 = v122;
                    }

                    else
                    {
                      v126 = v13;
                    }

                    v127 = v126 + v120;
                    v128 = v123;
                    do
                    {
                      v124[v125] = *v128;
                      v128 += v91;
                      v125 += 8;
                      --v127;
                    }

                    while (v127);
                    ++v121;
                    v124 += v92;
                    v123 += v91;
                    ++v122;
                    --v120;
                  }

                  while (v121 != v13);
                  ++v117;
                  v119 += 8;
                  ++v118;
                }

                while (v117 != v491);
                ++v114;
                v115 += v89;
                v116 += v491;
              }

              while (v114 != v484);
              v96 += v88;
            }

            if ((v94 | 2) < v468 && (v98 + 2) % v474 < v86)
            {
              v129 = 0;
              v130 = v97 + 2;
              v131 = v96;
              do
              {
                v132 = 0;
                v133 = v131;
                v134 = v130;
                do
                {
                  v135 = 0;
                  v136 = 0;
                  v137 = 1;
                  v138 = v133;
                  v139 = v134;
                  do
                  {
                    v140 = 0;
                    if (v13 >= v137)
                    {
                      v141 = v137;
                    }

                    else
                    {
                      v141 = v13;
                    }

                    v142 = v141 + v135;
                    v143 = v138;
                    do
                    {
                      v139[v140] = *v143;
                      v143 += v91;
                      v140 += 8;
                      --v142;
                    }

                    while (v142);
                    ++v136;
                    v139 += v92;
                    v138 += v91;
                    ++v137;
                    --v135;
                  }

                  while (v136 != v13);
                  ++v132;
                  v134 += 8;
                  ++v133;
                }

                while (v132 != v491);
                ++v129;
                v130 += v89;
                v131 += v491;
              }

              while (v129 != v484);
              v96 += v88;
            }

            if ((v94 | 3) < v468 && (v98 + 3) % v474 < v86)
            {
              v144 = 0;
              v145 = v97 + 3;
              v146 = v96;
              do
              {
                v147 = 0;
                v148 = v146;
                v149 = v145;
                do
                {
                  v150 = 0;
                  v151 = 0;
                  v152 = 1;
                  v153 = v148;
                  v154 = v149;
                  do
                  {
                    v155 = 0;
                    if (v13 >= v152)
                    {
                      v156 = v152;
                    }

                    else
                    {
                      v156 = v13;
                    }

                    v157 = v156 + v150;
                    v158 = v153;
                    do
                    {
                      v154[v155] = *v158;
                      v158 += v91;
                      v155 += 8;
                      --v157;
                    }

                    while (v157);
                    ++v151;
                    v154 += v92;
                    v153 += v91;
                    ++v152;
                    --v150;
                  }

                  while (v151 != v13);
                  ++v147;
                  v149 += 8;
                  ++v148;
                }

                while (v147 != v491);
                ++v144;
                v145 += v89;
                v146 += v491;
              }

              while (v144 != v484);
              v96 += v88;
            }

            if ((v94 | 4) < v468 && (v98 + 4) % v474 < v86)
            {
              v159 = 0;
              v160 = v97 + 4;
              v161 = v96;
              do
              {
                v162 = 0;
                v163 = v161;
                v164 = v160;
                do
                {
                  v165 = 0;
                  v166 = 0;
                  v167 = 1;
                  v168 = v163;
                  v169 = v164;
                  do
                  {
                    v170 = 0;
                    if (v13 >= v167)
                    {
                      v171 = v167;
                    }

                    else
                    {
                      v171 = v13;
                    }

                    v172 = v171 + v165;
                    v173 = v168;
                    do
                    {
                      v169[v170] = *v173;
                      v173 += v91;
                      v170 += 8;
                      --v172;
                    }

                    while (v172);
                    ++v166;
                    v169 += v92;
                    v168 += v91;
                    ++v167;
                    --v165;
                  }

                  while (v166 != v13);
                  ++v162;
                  v164 += 8;
                  ++v163;
                }

                while (v162 != v491);
                ++v159;
                v160 += v89;
                v161 += v491;
              }

              while (v159 != v484);
              v96 += v88;
            }

            if ((v94 | 5) < v468 && (v98 + 5) % v474 < v86)
            {
              v174 = 0;
              v175 = v97 + 5;
              v176 = v96;
              do
              {
                v177 = 0;
                v178 = v176;
                v179 = v175;
                do
                {
                  v180 = 0;
                  v181 = 0;
                  v182 = 1;
                  v183 = v178;
                  v184 = v179;
                  do
                  {
                    v185 = 0;
                    if (v13 >= v182)
                    {
                      v186 = v182;
                    }

                    else
                    {
                      v186 = v13;
                    }

                    v187 = v186 + v180;
                    v188 = v183;
                    do
                    {
                      v184[v185] = *v188;
                      v188 += v91;
                      v185 += 8;
                      --v187;
                    }

                    while (v187);
                    ++v181;
                    v184 += v92;
                    v183 += v91;
                    ++v182;
                    --v180;
                  }

                  while (v181 != v13);
                  ++v177;
                  v179 += 8;
                  ++v178;
                }

                while (v177 != v491);
                ++v174;
                v175 += v89;
                v176 += v491;
              }

              while (v174 != v484);
              v96 += v88;
            }

            if ((v94 | 6) < v468 && (v98 + 6) % v474 < v86)
            {
              v189 = 0;
              v190 = v97 + 6;
              v191 = v96;
              do
              {
                v192 = 0;
                v193 = v191;
                v194 = v190;
                do
                {
                  v195 = 0;
                  v196 = 0;
                  v197 = 1;
                  v198 = v193;
                  v199 = v194;
                  do
                  {
                    v200 = 0;
                    if (v13 >= v197)
                    {
                      v201 = v197;
                    }

                    else
                    {
                      v201 = v13;
                    }

                    v202 = v201 + v195;
                    v203 = v198;
                    do
                    {
                      v199[v200] = *v203;
                      v203 += v91;
                      v200 += 8;
                      --v202;
                    }

                    while (v202);
                    ++v196;
                    v199 += v92;
                    v198 += v91;
                    ++v197;
                    --v195;
                  }

                  while (v196 != v13);
                  ++v192;
                  v194 += 8;
                  ++v193;
                }

                while (v192 != v491);
                ++v189;
                v190 += v89;
                v191 += v491;
              }

              while (v189 != v484);
              v96 += v88;
            }

            if ((v94 | 7) < v468 && (v98 + 7) % v474 < v86)
            {
              v204 = 0;
              v205 = v97 + 7;
              v206 = v96;
              do
              {
                v207 = 0;
                v208 = v206;
                v209 = v205;
                do
                {
                  v210 = 0;
                  v211 = 0;
                  v212 = 1;
                  v213 = v208;
                  v214 = v209;
                  do
                  {
                    v215 = 0;
                    if (v13 >= v212)
                    {
                      v216 = v212;
                    }

                    else
                    {
                      v216 = v13;
                    }

                    v217 = v216 + v210;
                    v218 = v213;
                    do
                    {
                      v214[v215] = *v218;
                      v218 += v91;
                      v215 += 8;
                      --v217;
                    }

                    while (v217);
                    ++v211;
                    v214 += v92;
                    v213 += v91;
                    ++v212;
                    --v210;
                  }

                  while (v211 != v13);
                  ++v207;
                  v209 += 8;
                  ++v208;
                }

                while (v207 != v491);
                ++v204;
                v205 += v89;
                v206 += v491;
              }

              while (v204 != v484);
              v96 += v88;
            }

            v94 += 8;
            v97 += v90;
          }

          while (v94 < v468);
          result = v489 + 1;
          v12 += v486;
          v400 += v481;
          v14 = v468;
        }

        while (v489 + 1 != v380);
      }

      return result;
    }

    if (!v380)
    {
      return result;
    }

    v250 = 0;
    v251 = 0;
    v252 = *(a3 + 88);
    v393 = v14 - 7;
    v253 = v484 * v13 * v491;
    v254 = 8 * v484 * v491;
    result = v484 * v491 * v13;
    v409 = v491;
    v255 = v13 - 3;
    v407 = v491 * v13;
    v377 = v491 * v85 * v484 * v84;
    v376 = v491 * v14 * v484 * v13;
    v375 = v14 & 0xFFFFFFFFFFFFFFF8;
    v256 = &v12[(((v14 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) * v84 * v484 * v491];
    v389 = 7 * v253;
    v391 = v484 * v84 * 8 * v491;
    v387 = 2 * v253;
    v385 = 3 * v253;
    v487 = v253;
    v382 = 4 * v253;
    v383 = 6 * v253;
    v381 = 5 * v253;
    v374 = 2 * result;
    v372 = 4 * result;
    v373 = 3 * result;
    v370 = 6 * result;
    v371 = 5 * result;
    v369 = 7 * result;
    v476 = result;
    v470 = v13 - 3;
    v472 = v252;
    v490 = v254;
LABEL_223:
    v378 = v256;
    v379 = v250;
    if (v14 < 8)
    {
      v304 = 0;
      v260 = v12;
      v259 = v400;
      v257 = v474;
      v305 = v484 * v13 * v491;
      if (v14 > 0)
      {
        goto LABEL_320;
      }

      goto LABEL_222;
    }

    if (!v484)
    {
      goto LABEL_222;
    }

    v395 = v250 * v14;
    v257 = v474;
    if (!v491)
    {
      goto LABEL_222;
    }

    v258 = 0;
    v259 = v400;
    v260 = v12;
LABEL_228:
    v261 = 0;
    v398 = v258;
    v262 = v258 + v395;
    v263 = v258 + v395 + 1;
    v455 = v258 + v395 + 3;
    v458 = v258 + v395 + 2;
    v449 = v258 + v395 + 5;
    v452 = v258 + v395 + 4;
    v443 = v258 + v395 + 7;
    v446 = v258 + v395 + 6;
    v264 = &v259[v389];
    v265 = &v259[v383];
    v266 = &v259[v381];
    v267 = &v259[v382];
    result = &v259[v385];
    v268 = &v259[v387];
    v269 = &v259[v487];
    v402 = v260;
    v405 = v259;
    v270 = v260;
    v432 = v263;
    v435 = v258 + v395;
LABEL_230:
    v426 = v264;
    v429 = v261;
    v271 = 0;
    v411 = v269;
    v414 = result;
    v272 = v269;
    v273 = v268;
    v417 = v267;
    v420 = v266;
    v423 = v265;
    v274 = v259;
    v275 = v270;
    v464 = v259;
    v466 = v268;
    v461 = v270;
LABEL_234:
    v478 = v273;
    v482 = v272;
    if (v13 < 4)
    {
      v284 = 0;
      v281 = v275;
      v283 = v274;
      if (v13 <= 0)
      {
        goto LABEL_233;
      }

      goto LABEL_263;
    }

    if (v252 == 1)
    {
      v281 = v275;
      v282 = 0;
      do
      {
        a5.i32[0] = *&v274[v282];
        a5.i32[1] = *&v272[v282];
        a5.i32[2] = *&v273[v282];
        a5.i8[12] = *(result + v282);
        a6.i32[0] = *&v267[v282];
        a6.i32[1] = *&v266[v282];
        a6.i32[2] = *&v265[v282];
        a6.i8[12] = *&v264[v282];
        a5 = vqtbl2q_s8(*a5.i8, xmmword_239D7E3A0);
        *v281 = a5.i64[0];
        ++v282;
        v281 = (v281 + v254);
      }

      while (v255 != v282);
      v283 = &v274[v282];
      v251 = 8;
      v284 = v255;
      v257 = v474;
      if (v255 >= v13)
      {
        goto LABEL_233;
      }

LABEL_263:
      if (v252 == 1)
      {
        a5.i8[0] = *v283;
        a5.i8[1] = v283[v476];
        v276 = &v283[v476 + v476];
        a5.i8[2] = *v276;
        v277 = &v276[v476];
        a5.i8[3] = *v277;
        v278 = &v277[v476];
        a5.i8[4] = *v278;
        v279 = &v278[v476];
        a5.i8[5] = *v279;
        v280 = &v279[v476];
        a5.i8[6] = *v280;
        a5.i8[7] = v280[v476];
        v251 = 8;
        goto LABEL_232;
      }

      if (v262 % v257 < v86)
      {
        a5.i32[3] = 0;
        a5.i8[0] = *v283;
        v257 = v474;
        v283 += v476;
        v251 = 1;
        if (v263 % v474 < v86)
        {
          goto LABEL_274;
        }

LABEL_266:
        a6.i64[0] = 0;
        a6.i32[3] = 0;
        if (v458 % v257 < v86)
        {
          goto LABEL_280;
        }
      }

      else
      {
        v251 = 0;
        a5.i8[0] = 0;
        a5.i32[3] = 0;
        if (v263 % v257 >= v86)
        {
          goto LABEL_266;
        }

LABEL_274:
        if (v284 + 1 >= v13)
        {
          if (v284 + 2 < v13)
          {
            goto LABEL_278;
          }

LABEL_276:
          v296 = 0;
        }

        else
        {
          if (v284 + 2 >= v13)
          {
            goto LABEL_276;
          }

LABEL_278:
          v296 = v283[2];
        }

        a6.i16[3] = 0;
        a6.i32[3] = 0;
        a6.i8[0] = *v283;
        a6.i16[2] = v296;
        v257 = v474;
        v283 += v476;
        ++v251;
        if (v458 % v474 < v86)
        {
LABEL_280:
          if (v284 + 1 >= v13)
          {
            if (v284 + 2 < v13)
            {
              goto LABEL_284;
            }

LABEL_282:
            v297 = 0;
          }

          else
          {
            if (v284 + 2 >= v13)
            {
              goto LABEL_282;
            }

LABEL_284:
            v297 = v283[2];
          }

          a7.i16[3] = 0;
          a7.i8[0] = *v283;
          a7.i16[2] = v297;
          v257 = v474;
          v283 += v476;
          ++v251;
          if (v455 % v474 < v86)
          {
LABEL_286:
            if (v284 + 1 >= v13)
            {
              v298 = 0;
              if (v284 + 2 < v13)
              {
                goto LABEL_290;
              }

LABEL_288:
              v299 = 0;
            }

            else
            {
              v298 = v283[1];
              if (v284 + 2 >= v13)
              {
                goto LABEL_288;
              }

LABEL_290:
              v299 = v283[2];
            }

            a8.i16[3] = 0;
            a8.i16[0] = *v283;
            a8.i16[1] = v298;
            a8.i16[2] = v299;
            v257 = v474;
            v283 += v476;
            ++v251;
            if (v452 % v474 < v86)
            {
LABEL_292:
              if (v284 + 1 >= v13)
              {
                if (v284 + 2 < v13)
                {
                  goto LABEL_296;
                }

LABEL_294:
                v300 = 0;
              }

              else
              {
                if (v284 + 2 >= v13)
                {
                  goto LABEL_294;
                }

LABEL_296:
                v300 = v283[2];
              }

              a9.i16[3] = 0;
              a9.i8[0] = *v283;
              a9.i16[2] = v300;
              v257 = v474;
              v283 += v476;
              ++v251;
              if (v449 % v474 < v86)
              {
LABEL_298:
                if (v284 + 1 >= v13)
                {
                  if (v284 + 2 < v13)
                  {
                    goto LABEL_302;
                  }

LABEL_300:
                  v301 = 0;
                }

                else
                {
                  if (v284 + 2 >= v13)
                  {
                    goto LABEL_300;
                  }

LABEL_302:
                  v301 = v283[2];
                }

                a10.i16[3] = 0;
                a10.i8[0] = *v283;
                a10.i16[2] = v301;
                v257 = v474;
                v283 += v476;
                ++v251;
                if (v446 % v474 < v86)
                {
LABEL_304:
                  if (v284 + 1 >= v13)
                  {
                    if (v284 + 2 < v13)
                    {
                      goto LABEL_308;
                    }

LABEL_306:
                    v302 = 0;
                  }

                  else
                  {
                    if (v284 + 2 >= v13)
                    {
                      goto LABEL_306;
                    }

LABEL_308:
                    v302 = v283[2];
                  }

                  a11.i16[3] = 0;
                  a11.i8[0] = *v283;
                  a11.i16[2] = v302;
                  v283 += v476;
                  ++v251;
                  if (v443 % v474 < v86)
                  {
LABEL_310:
                    if (v284 + 1 >= v13)
                    {
                      if (v284 + 2 < v13)
                      {
                        goto LABEL_314;
                      }

LABEL_312:
                      v303 = 0;
                    }

                    else
                    {
                      if (v284 + 2 >= v13)
                      {
                        goto LABEL_312;
                      }

LABEL_314:
                      v303 = v283[2];
                    }

                    v295 = v271;
                    v11.i16[3] = 0;
                    v11.i8[0] = *v283;
                    v11.i16[2] = v303;
                    ++v251;
LABEL_316:
                    a5.i8[1] = a6.i8[0];
                    a5.i8[2] = a7.i8[0];
                    a5.i8[3] = a8.i8[0];
                    a5.i8[4] = a9.i8[0];
                    a5.i8[5] = a10.i8[0];
                    a5.i8[6] = a11.i8[0];
                    a5.i8[7] = v11.i8[0];
                    v268 = v466;
                    v14 = v468;
                    v257 = v474;
                    v270 = v461;
                    v259 = v464;
                    v271 = v295;
LABEL_232:
                    *v281 = a5.i64[0];
                    goto LABEL_233;
                  }

LABEL_272:
                  v295 = v271;
                  v11.i64[0] = 0;
                  goto LABEL_316;
                }

LABEL_271:
                a11.i64[0] = 0;
                if (v443 % v257 < v86)
                {
                  goto LABEL_310;
                }

                goto LABEL_272;
              }

LABEL_270:
              a10.i64[0] = 0;
              if (v446 % v257 < v86)
              {
                goto LABEL_304;
              }

              goto LABEL_271;
            }

LABEL_269:
            a9.i64[0] = 0;
            if (v449 % v257 < v86)
            {
              goto LABEL_298;
            }

            goto LABEL_270;
          }

LABEL_268:
          a8.i64[0] = 0;
          if (v452 % v257 < v86)
          {
            goto LABEL_292;
          }

          goto LABEL_269;
        }
      }

      a7.i64[0] = 0;
      if (v455 % v257 < v86)
      {
        goto LABEL_286;
      }

      goto LABEL_268;
    }

    v440 = v271;
    v285 = v262 % v257;
    v286 = v263 % v257;
    v287 = v458 % v257;
    v288 = v455 % v257;
    v289 = v452 % v257;
    v290 = v255;
    v291 = v449 % v257;
    v292 = v446 % v257;
    v293 = v443 % v257;
    v283 = v274;
    v281 = v275;
    while (1)
    {
      if (v285 >= v86)
      {
        v251 = 0;
        a5.i8[0] = 0;
        a5.i32[3] = 0;
        v294 = v283;
        if (v286 >= v86)
        {
LABEL_247:
          a6.i64[0] = 0;
          a6.i32[3] = 0;
          if (v287 >= v86)
          {
            goto LABEL_248;
          }

          goto LABEL_256;
        }
      }

      else
      {
        a5.i32[0] = *v283;
        a5 = vmovl_u8(*a5.i8);
        v294 = &v283[v487];
        v251 = 1;
        if (v286 >= v86)
        {
          goto LABEL_247;
        }
      }

      a6.i32[0] = *v294;
      a6 = vmovl_u8(*a6.i8);
      v294 = (v294 + v487);
      ++v251;
      if (v287 >= v86)
      {
LABEL_248:
        a7.i64[0] = 0;
        if (v288 >= v86)
        {
          goto LABEL_249;
        }

        goto LABEL_257;
      }

LABEL_256:
      a7.i32[0] = *v294;
      a7 = vmovl_u8(*a7.i8);
      v294 = (v294 + v487);
      ++v251;
      if (v288 >= v86)
      {
LABEL_249:
        a8.i64[0] = 0;
        if (v289 >= v86)
        {
          goto LABEL_250;
        }

        goto LABEL_258;
      }

LABEL_257:
      a8.i32[0] = *v294;
      a8.i64[0] = vmovl_u8(*a8.i8).u64[0];
      v294 = (v294 + v487);
      ++v251;
      if (v289 >= v86)
      {
LABEL_250:
        a9.i64[0] = 0;
        if (v291 >= v86)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      a9.i32[0] = *v294;
      a9 = vmovl_u8(*a9.i8);
      v294 = (v294 + v487);
      ++v251;
      if (v291 >= v86)
      {
LABEL_251:
        a10.i64[0] = 0;
        if (v292 >= v86)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      a10.i32[0] = *v294;
      a10 = vmovl_u8(*a10.i8);
      v294 = (v294 + v487);
      ++v251;
      if (v292 >= v86)
      {
LABEL_252:
        a11.i64[0] = 0;
        if (v293 >= v86)
        {
          goto LABEL_261;
        }

        goto LABEL_243;
      }

LABEL_260:
      a11.i32[0] = *v294;
      a11 = vmovl_u8(*a11.i8);
      v294 = (v294 + v487);
      ++v251;
      if (v293 >= v86)
      {
LABEL_261:
        v11.i64[0] = 0;
        goto LABEL_244;
      }

LABEL_243:
      v11.i32[0] = *v294;
      v11 = vmovl_u8(*v11.i8);
      ++v251;
LABEL_244:
      a5.i8[1] = a6.i8[0];
      a5.i8[2] = a7.i8[0];
      a5.i8[3] = a8.i8[0];
      a5.i8[4] = a9.i8[0];
      a5.i8[5] = a10.i8[0];
      a5.i8[6] = a11.i8[0];
      a5.i8[7] = v11.i8[0];
      *v281 = a5.i64[0];
      v254 = 8 * v484 * v491;
      v281 = (v281 + v490);
      ++v283;
      if (!--v290)
      {
        v14 = v468;
        v255 = v13 - 3;
        v284 = v13 - 3;
        v252 = v472;
        v257 = v474;
        v263 = v432;
        v262 = v435;
        v259 = v464;
        v268 = v466;
        v270 = v461;
        v271 = v440;
        if (v470 < v13)
        {
          goto LABEL_263;
        }

LABEL_233:
        ++v271;
        ++v275;
        v274 += v13;
        v264 += v13;
        v265 += v13;
        v266 += v13;
        v267 += v13;
        result += v13;
        v273 = &v478[v13];
        v272 = &v482[v13];
        if (v271 != v491)
        {
          goto LABEL_234;
        }

        v261 = v429 + 1;
        v270 = (v270 + v409 * 8);
        v259 += v407;
        v264 = &v426[v407];
        v265 = &v423[v407];
        v266 = &v420[v407];
        v267 = &v417[v407];
        result = v414 + v407;
        v268 += v407;
        v269 = &v411[v407];
        if (v429 + 1 != v484)
        {
          goto LABEL_230;
        }

        v259 = &v405[v251 * v476];
        v258 = v398 + 8;
        v260 = (v402 + v391);
        if (v398 + 8 < v393)
        {
          goto LABEL_228;
        }

        v304 = v375;
        v250 = v379;
        v305 = v484 * v13 * v491;
        if (v375 >= v14)
        {
          goto LABEL_222;
        }

LABEL_320:
        if (!v484 || (v306 = v304 + v250 * v14, !v491))
        {
LABEL_222:
          v250 = v379 + 1;
          v12 += v377;
          v400 += v376;
          v256 = &v378[v377];
          v255 = v13 - 3;
          v252 = v472;
          v254 = 8 * v484 * v491;
          if (v379 + 1 == v380)
          {
            return result;
          }

          goto LABEL_223;
        }

        v307 = 0;
        v479 = v306 + 1;
        v483 = v304 | 1;
        v308 = v304 | 2;
        v465 = v306 + 3;
        v467 = v306 + 2;
        v309 = v304 | 3;
        v310 = v304 | 4;
        v459 = v306 + 5;
        v462 = v306 + 4;
        v311 = v304 | 5;
        v312 = v304 | 6;
        v453 = v306 + 7;
        v456 = v306 + 6;
        v313 = v304 | 7;
        v314 = &v259[v476];
        v315 = &v259[v374];
        v316 = &v259[v373];
        v317 = &v259[v372];
        result = &v259[v371];
        v318 = &v259[v370];
        v319 = &v259[v369];
        while (2)
        {
          v424 = v314;
          v427 = v307;
          v320 = 0;
          v396 = v319;
          v399 = v318;
          v447 = v318;
          v450 = v319;
          v412 = result;
          v415 = v317;
          v441 = v317;
          v444 = result;
          v418 = v316;
          v421 = v315;
          v436 = v315;
          v438 = v316;
          v433 = v314;
          v403 = v260;
          v321 = v259;
          v322 = v260;
LABEL_331:
          v430 = v322;
          if (v13 < 4)
          {
            v329 = 0;
            v330 = v321;
            if (v13 <= 0)
            {
              goto LABEL_330;
            }

LABEL_394:
            if (v472 == 1)
            {
              v331 = v329 + 1;
              v332 = v329 + 2;
              v333 = &v330[v305];
              if (v483 >= v14)
              {
                v338 = 0;
                v339 = &v333[v305];
                if (v308 < v14)
                {
                  goto LABEL_421;
                }
              }

              else
              {
                if (v331 >= v13)
                {
                  v334 = 0;
                  if (v332 < v13)
                  {
                    goto LABEL_419;
                  }

LABEL_398:
                  v335 = 0;
                }

                else
                {
                  v334 = v333[1];
                  if (v332 >= v13)
                  {
                    goto LABEL_398;
                  }

LABEL_419:
                  v335 = v333[2];
                }

                LOWORD(v338) = *v333;
                WORD1(v338) = v334;
                HIDWORD(v338) = v335;
                v339 = &v333[v305];
                if (v308 < v14)
                {
LABEL_421:
                  if (v331 >= v13)
                  {
                    v346 = 0;
                    if (v332 < v13)
                    {
                      goto LABEL_432;
                    }

LABEL_423:
                    v347 = 0;
                  }

                  else
                  {
                    v346 = v339[1];
                    if (v332 >= v13)
                    {
                      goto LABEL_423;
                    }

LABEL_432:
                    v347 = v339[2];
                  }

                  LOWORD(v340) = *v339;
                  WORD1(v340) = v346;
                  DWORD1(v340) = v347;
                  v341 = &v339[v305];
                  if (v309 < v14)
                  {
LABEL_434:
                    if (v331 >= v13)
                    {
                      v350 = 0;
                      if (v332 < v13)
                      {
                        goto LABEL_439;
                      }

LABEL_436:
                      v351 = 0;
                    }

                    else
                    {
                      v350 = v341[1];
                      if (v332 >= v13)
                      {
                        goto LABEL_436;
                      }

LABEL_439:
                      v351 = v341[2];
                    }

                    a7.i16[3] = 0;
                    a7.i16[0] = *v341;
                    a7.i16[1] = v350;
                    a7.i16[2] = v351;
                    a8.i8[0] = *v330;
                    v342 = &v341[v305];
                    if (v310 < v14)
                    {
LABEL_441:
                      if (v331 >= v13)
                      {
                        v352 = 0;
                        if (v332 < v13)
                        {
                          goto LABEL_445;
                        }

LABEL_443:
                        v353 = 0;
                      }

                      else
                      {
                        v352 = v342[1];
                        if (v332 >= v13)
                        {
                          goto LABEL_443;
                        }

LABEL_445:
                        v353 = v342[2];
                      }

                      a9.i16[3] = 0;
                      a9.i8[0] = *v342;
                      a9.i8[2] = v352;
                      a9.i16[2] = v353;
                      v343 = &v342[v305];
                      if (v311 < v14)
                      {
LABEL_447:
                        if (v331 >= v13)
                        {
                          v354 = 0;
                          if (v332 < v13)
                          {
                            goto LABEL_451;
                          }

LABEL_449:
                          v355 = 0;
                        }

                        else
                        {
                          v354 = v343[1];
                          if (v332 >= v13)
                          {
                            goto LABEL_449;
                          }

LABEL_451:
                          v355 = v343[2];
                        }

                        a11.i16[3] = 0;
                        a11.i8[0] = *v343;
                        a11.i8[2] = v354;
                        a11.i16[2] = v355;
                        v344 = &v343[v305];
                        if (v312 < v14)
                        {
LABEL_453:
                          if (v331 >= v13)
                          {
                            if (v332 < v13)
                            {
                              goto LABEL_457;
                            }

LABEL_455:
                            v356 = 0;
                          }

                          else
                          {
                            if (v332 >= v13)
                            {
                              goto LABEL_455;
                            }

LABEL_457:
                            v356 = v344[2];
                          }

                          a10.i16[3] = 0;
                          a10.i8[0] = *v344;
                          a10.i16[2] = v356;
                          if (v313 < v14)
                          {
LABEL_459:
                            v357 = &v344[v305];
                            if (v331 >= v13)
                            {
                              if (v332 < v13)
                              {
                                goto LABEL_463;
                              }

LABEL_461:
                              v358 = 0;
                            }

                            else
                            {
                              if (v332 >= v13)
                              {
                                goto LABEL_461;
                              }

LABEL_463:
                              v358 = v357[2];
                            }

                            v11.i16[3] = 0;
                            v11.i8[0] = *v357;
                            v11.i16[2] = v358;
LABEL_328:
                            a6.i64[1] = a7.i64[0];
                            a8.i64[1] = v338;
                            v323 = vuzp1q_s8(a8, a6);
                            a6.i8[0] = a9.i8[0];
                            a6.i8[1] = a9.i8[2];
                            a6.i8[2] = a9.i8[4];
                            a6.i8[3] = a9.i8[6];
                            a6.i8[4] = a11.i8[0];
                            a6.i8[5] = a11.i8[2];
                            a6.i8[6] = a11.i8[4];
                            a6.i8[7] = a11.i8[6];
                            v251 = 8;
LABEL_329:
                            a6.i8[8] = a10.i8[0];
                            a6.i8[12] = v11.i8[0];
                            a5 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3A0);
                            *v322 = a5.i64[0];
                            goto LABEL_330;
                          }

LABEL_327:
                          v11.i64[0] = 0;
                          goto LABEL_328;
                        }

LABEL_408:
                        a10.i64[0] = 0;
                        if (v313 < v14)
                        {
                          goto LABEL_459;
                        }

                        goto LABEL_327;
                      }

LABEL_407:
                      a11.i64[0] = 0;
                      v344 = &v343[v305];
                      if (v312 < v14)
                      {
                        goto LABEL_453;
                      }

                      goto LABEL_408;
                    }

LABEL_406:
                    a9.i64[0] = 0;
                    v343 = &v342[v305];
                    if (v311 < v14)
                    {
                      goto LABEL_447;
                    }

                    goto LABEL_407;
                  }

LABEL_405:
                  a7.i64[0] = 0;
                  a8.i8[0] = *v330;
                  v342 = &v341[v305];
                  if (v310 < v14)
                  {
                    goto LABEL_441;
                  }

                  goto LABEL_406;
                }
              }

              *&v340 = 0;
              v341 = &v339[v305];
              if (v309 < v14)
              {
                goto LABEL_434;
              }

              goto LABEL_405;
            }

            if (v306 % v257 >= v86)
            {
              v251 = 0;
              v345.i64[0] = 0;
              if (v479 % v257 < v86)
              {
                goto LABEL_427;
              }
            }

            else
            {
              if (v329 + 1 >= v13)
              {
                v336 = 0;
                if (v329 + 2 < v13)
                {
                  goto LABEL_425;
                }

LABEL_402:
                v337 = 0;
              }

              else
              {
                v336 = v330[1];
                if (v329 + 2 >= v13)
                {
                  goto LABEL_402;
                }

LABEL_425:
                v337 = v330[2];
              }

              v345.i16[0] = *v330;
              v345.i16[1] = v336;
              v345.i32[1] = v337;
              v330 += v305;
              v251 = 1;
              if (v479 % v257 < v86)
              {
LABEL_427:
                if (v483 >= v14)
                {
                  a6 = 0uLL;
                }

                else
                {
                  if (v329 + 1 >= v13)
                  {
                    v348 = 0;
                    if (v329 + 2 < v13)
                    {
                      goto LABEL_466;
                    }

LABEL_430:
                    v349 = 0;
                  }

                  else
                  {
                    v348 = v330[1];
                    if (v329 + 2 >= v13)
                    {
                      goto LABEL_430;
                    }

LABEL_466:
                    v349 = v330[2];
                  }

                  a6.i16[3] = 0;
                  a6.i64[1] = 0;
                  a6.i16[0] = *v330;
                  a6.i16[1] = v348;
                  a6.i16[2] = v349;
                }

                v330 += v305;
                ++v251;
                if (v467 % v257 < v86)
                {
LABEL_469:
                  if (v308 >= v14)
                  {
                    a7.i64[0] = 0;
                  }

                  else
                  {
                    if (v329 + 1 >= v13)
                    {
                      v359 = 0;
                      if (v329 + 2 < v13)
                      {
                        goto LABEL_475;
                      }

LABEL_472:
                      v360 = 0;
                    }

                    else
                    {
                      v359 = v330[1];
                      if (v329 + 2 >= v13)
                      {
                        goto LABEL_472;
                      }

LABEL_475:
                      v360 = v330[2];
                    }

                    a7.i16[3] = 0;
                    a7.i16[0] = *v330;
                    a7.i16[1] = v359;
                    a7.i16[2] = v360;
                  }

                  v330 += v305;
                  ++v251;
                  if (v465 % v257 < v86)
                  {
LABEL_478:
                    if (v309 >= v14)
                    {
                      a8.i64[0] = 0;
                    }

                    else
                    {
                      if (v329 + 1 >= v13)
                      {
                        v361 = 0;
                        if (v329 + 2 < v13)
                        {
                          goto LABEL_484;
                        }

LABEL_481:
                        v362 = 0;
                      }

                      else
                      {
                        v361 = v330[1];
                        if (v329 + 2 >= v13)
                        {
                          goto LABEL_481;
                        }

LABEL_484:
                        v362 = v330[2];
                      }

                      a8.i16[3] = 0;
                      a8.i16[0] = *v330;
                      a8.i16[1] = v361;
                      a8.i16[2] = v362;
                    }

                    v330 += v305;
                    ++v251;
                    if (v462 % v257 < v86)
                    {
LABEL_487:
                      if (v310 >= v14)
                      {
                        a9.i64[0] = 0;
                      }

                      else
                      {
                        if (v329 + 1 >= v13)
                        {
                          v363 = 0;
                          if (v329 + 2 < v13)
                          {
                            goto LABEL_493;
                          }

LABEL_490:
                          v364 = 0;
                        }

                        else
                        {
                          v363 = v330[1];
                          if (v329 + 2 >= v13)
                          {
                            goto LABEL_490;
                          }

LABEL_493:
                          v364 = v330[2];
                        }

                        a9.i16[3] = 0;
                        a9.i8[0] = *v330;
                        a9.i8[2] = v363;
                        a9.i16[2] = v364;
                      }

                      v330 += v305;
                      ++v251;
                      if (v459 % v257 < v86)
                      {
LABEL_496:
                        if (v311 >= v14)
                        {
                          a11.i64[0] = 0;
                        }

                        else
                        {
                          if (v329 + 1 >= v13)
                          {
                            v365 = 0;
                            if (v329 + 2 < v13)
                            {
                              goto LABEL_502;
                            }

LABEL_499:
                            v366 = 0;
                          }

                          else
                          {
                            v365 = v330[1];
                            if (v329 + 2 >= v13)
                            {
                              goto LABEL_499;
                            }

LABEL_502:
                            v366 = v330[2];
                          }

                          a11.i16[3] = 0;
                          a11.i8[0] = *v330;
                          a11.i8[2] = v365;
                          a11.i16[2] = v366;
                        }

                        v330 += v305;
                        ++v251;
                        if (v456 % v257 < v86)
                        {
LABEL_505:
                          if (v312 >= v14)
                          {
                            a10.i64[0] = 0;
                          }

                          else
                          {
                            if (v329 + 1 >= v13)
                            {
                              if (v329 + 2 < v13)
                              {
                                goto LABEL_511;
                              }

LABEL_508:
                              v367 = 0;
                            }

                            else
                            {
                              if (v329 + 2 >= v13)
                              {
                                goto LABEL_508;
                              }

LABEL_511:
                              v367 = v330[2];
                            }

                            a10.i16[3] = 0;
                            a10.i8[0] = *v330;
                            a10.i16[2] = v367;
                          }

                          v330 += v305;
                          ++v251;
                          if (v453 % v257 < v86)
                          {
LABEL_514:
                            if (v313 >= v14)
                            {
                              v11.i64[0] = 0;
                            }

                            else
                            {
                              if (v329 + 1 >= v13)
                              {
                                if (v329 + 2 < v13)
                                {
                                  goto LABEL_520;
                                }

LABEL_517:
                                v368 = 0;
                              }

                              else
                              {
                                if (v329 + 2 >= v13)
                                {
                                  goto LABEL_517;
                                }

LABEL_520:
                                v368 = v330[2];
                              }

                              v11.i16[3] = 0;
                              v11.i8[0] = *v330;
                              v11.i16[2] = v368;
                            }

                            ++v251;
LABEL_523:
                            a7.i64[1] = a8.i64[0];
                            v345.i64[1] = a6.i64[0];
                            v323 = vuzp1q_s8(v345, a7);
                            a6.i8[0] = a9.i8[0];
                            a6.i8[1] = a9.i8[2];
                            a6.i8[2] = a9.i8[4];
                            a6.i8[3] = a9.i8[6];
                            a6.i8[4] = a11.i8[0];
                            a6.i8[5] = a11.i8[2];
                            a6.i8[6] = a11.i8[4];
                            a6.i8[7] = a11.i8[6];
                            goto LABEL_329;
                          }

LABEL_417:
                          v11.i64[0] = 0;
                          goto LABEL_523;
                        }

LABEL_416:
                        a10.i64[0] = 0;
                        if (v453 % v257 < v86)
                        {
                          goto LABEL_514;
                        }

                        goto LABEL_417;
                      }

LABEL_415:
                      a11.i64[0] = 0;
                      if (v456 % v257 < v86)
                      {
                        goto LABEL_505;
                      }

                      goto LABEL_416;
                    }

LABEL_414:
                    a9.i64[0] = 0;
                    if (v459 % v257 < v86)
                    {
                      goto LABEL_496;
                    }

                    goto LABEL_415;
                  }

LABEL_413:
                  a8.i64[0] = 0;
                  if (v462 % v257 < v86)
                  {
                    goto LABEL_487;
                  }

                  goto LABEL_414;
                }

LABEL_412:
                a7.i64[0] = 0;
                if (v465 % v257 < v86)
                {
                  goto LABEL_478;
                }

                goto LABEL_413;
              }
            }

            a6 = 0uLL;
            if (v467 % v257 < v86)
            {
              goto LABEL_469;
            }

            goto LABEL_412;
          }

          v324 = v320;
          v325 = 0;
          v326 = v321;
LABEL_336:
          v328 = &v321[v325];
          if (v472 == 1)
          {
            if (v483 >= v14)
            {
              a5.i64[0] = 0;
              if (v308 < v14)
              {
                goto LABEL_355;
              }

LABEL_339:
              a6.i64[0] = 0;
              if (v309 >= v14)
              {
                goto LABEL_340;
              }

LABEL_356:
              a7.i32[0] = *&v438[v325];
              a9.i64[0] = vmovl_u8(*a7.i8).u64[0];
              if (v310 < v14)
              {
                goto LABEL_357;
              }

LABEL_341:
              a7.i64[0] = 0;
              if (v311 >= v14)
              {
                goto LABEL_342;
              }

LABEL_358:
              a8.i32[0] = *(v444 + v325);
              a10 = vmovl_u8(*a8.i8);
              if (v312 < v14)
              {
                goto LABEL_359;
              }

LABEL_343:
              a8.i64[0] = 0;
              if (v313 < v14)
              {
                goto LABEL_333;
              }

LABEL_360:
              a11.i64[0] = 0;
            }

            else
            {
              a5.i32[0] = *&v433[v325];
              a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
              if (v308 >= v14)
              {
                goto LABEL_339;
              }

LABEL_355:
              a6.i32[0] = *&v436[v325];
              a6.i64[0] = vmovl_u8(*a6.i8).u64[0];
              if (v309 < v14)
              {
                goto LABEL_356;
              }

LABEL_340:
              a9.i64[0] = 0;
              if (v310 >= v14)
              {
                goto LABEL_341;
              }

LABEL_357:
              a7.i32[0] = *&v441[v325];
              a7 = vmovl_u8(*a7.i8);
              if (v311 < v14)
              {
                goto LABEL_358;
              }

LABEL_342:
              a10.i64[0] = 0;
              if (v312 >= v14)
              {
                goto LABEL_343;
              }

LABEL_359:
              a8.i32[0] = *&v447[v325];
              a8.i64[0] = vmovl_u8(*a8.i8).u64[0];
              if (v313 >= v14)
              {
                goto LABEL_360;
              }

LABEL_333:
              a11.i32[0] = *&v450[v325];
              a11 = vmovl_u8(*a11.i8);
            }

            v11.i32[0] = *v328;
            v11.i64[0] = vmovl_u8(*v11.i8).u64[0];
            a6.i64[1] = a9.i64[0];
            v11.i64[1] = a5.i64[0];
            v327 = vuzp1q_s8(v11, a6);
            a6.i8[0] = a7.i8[0];
            a6.i8[1] = a7.i8[2];
            a6.i8[2] = a7.i8[4];
            a6.i8[3] = a7.i8[6];
            a6.i8[4] = a10.i8[0];
            a6.i8[5] = a10.i8[2];
            a6.i8[6] = a10.i8[4];
            a6.i8[7] = a10.i8[6];
            v251 = 8;
LABEL_335:
            a6.i8[8] = a8.i8[0];
            a6.i8[12] = a11.i8[0];
            a5 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3A0);
            *v322 = a5.i64[0];
            ++v325;
            v322 = (v322 + v490);
            ++v326;
            if (v470 == v325)
            {
              v330 = &v321[v325];
              v329 = v13 - 3;
              v320 = v324;
              v305 = v484 * v13 * v491;
              if (v470 < v13)
              {
                goto LABEL_394;
              }

LABEL_330:
              ++v320;
              v322 = v430 + 1;
              v321 += v13;
              v433 += v13;
              v436 += v13;
              v438 += v13;
              v441 += v13;
              v444 += v13;
              v447 += v13;
              v450 += v13;
              if (v320 == v491)
              {
                ++v307;
                v260 = &v403[v409];
                v259 += v407;
                v314 = &v424[v407];
                v315 = &v421[v407];
                v316 = &v418[v407];
                v317 = &v415[v407];
                result = v412 + v407;
                v318 = &v399[v407];
                v319 = &v396[v407];
                if (v427 + 1 == v484)
                {
                  goto LABEL_222;
                }

                continue;
              }

              goto LABEL_331;
            }

            goto LABEL_336;
          }

          break;
        }

        if (v306 % v257 >= v86)
        {
          v251 = 0;
          a5.i64[0] = 0;
          if (v479 % v257 < v86)
          {
            goto LABEL_362;
          }

LABEL_347:
          a6 = 0uLL;
          if (v467 % v257 >= v86)
          {
            goto LABEL_348;
          }

LABEL_366:
          if (v308 >= v14)
          {
            a7.i64[0] = 0;
          }

          else
          {
            a7.i32[0] = *v328;
            a7.i64[0] = vmovl_u8(*a7.i8).u64[0];
          }

          v328 = (v328 + v476);
          ++v251;
          if (v465 % v257 < v86)
          {
            goto LABEL_370;
          }

LABEL_349:
          a9.i64[0] = 0;
          if (v462 % v257 >= v86)
          {
            goto LABEL_350;
          }

LABEL_374:
          if (v310 >= v14)
          {
            a10.i64[0] = 0;
          }

          else
          {
            a8.i32[0] = *v328;
            a10 = vmovl_u8(*a8.i8);
          }

          v328 = (v328 + v476);
          ++v251;
          if (v459 % v257 < v86)
          {
            goto LABEL_378;
          }

LABEL_351:
          v11.i64[0] = 0;
          if (v456 % v257 >= v86)
          {
            goto LABEL_352;
          }

LABEL_382:
          if (v312 >= v14)
          {
            a8.i64[0] = 0;
          }

          else
          {
            a8.i32[0] = *v328;
            a8.i64[0] = vmovl_u8(*a8.i8).u64[0];
          }

          v328 = (v328 + v476);
          ++v251;
          if (v453 % v257 < v86)
          {
            goto LABEL_386;
          }

LABEL_353:
          a11.i64[0] = 0;
        }

        else
        {
          a5.i32[0] = *v328;
          a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
          v328 = &v326[v476];
          v251 = 1;
          if (v479 % v257 >= v86)
          {
            goto LABEL_347;
          }

LABEL_362:
          if (v483 >= v14)
          {
            a6 = 0uLL;
          }

          else
          {
            a6.i32[0] = *v328;
            a6 = vmovl_u8(*a6.i8);
          }

          v328 = (v328 + v476);
          ++v251;
          if (v467 % v257 < v86)
          {
            goto LABEL_366;
          }

LABEL_348:
          a7.i64[0] = 0;
          if (v465 % v257 >= v86)
          {
            goto LABEL_349;
          }

LABEL_370:
          if (v309 >= v14)
          {
            a9.i64[0] = 0;
          }

          else
          {
            a8.i32[0] = *v328;
            a9.i64[0] = vmovl_u8(*a8.i8).u64[0];
          }

          v328 = (v328 + v476);
          ++v251;
          if (v462 % v257 < v86)
          {
            goto LABEL_374;
          }

LABEL_350:
          a10.i64[0] = 0;
          if (v459 % v257 >= v86)
          {
            goto LABEL_351;
          }

LABEL_378:
          if (v311 >= v14)
          {
            v11.i64[0] = 0;
          }

          else
          {
            a8.i32[0] = *v328;
            v11 = vmovl_u8(*a8.i8);
          }

          v328 = (v328 + v476);
          ++v251;
          if (v456 % v257 < v86)
          {
            goto LABEL_382;
          }

LABEL_352:
          a8.i64[0] = 0;
          if (v453 % v257 >= v86)
          {
            goto LABEL_353;
          }

LABEL_386:
          if (v313 >= v14)
          {
            a11.i64[0] = 0;
          }

          else
          {
            a11.i32[0] = *v328;
            a11 = vmovl_u8(*a11.i8);
          }

          ++v251;
        }

        a7.i64[1] = a9.i64[0];
        a5.i64[1] = a6.i64[0];
        v327 = vuzp1q_s8(a5, a7);
        a6.i8[0] = a10.i8[0];
        a6.i8[1] = a10.i8[2];
        a6.i8[2] = a10.i8[4];
        a6.i8[3] = a10.i8[6];
        a6.i8[4] = v11.i8[0];
        a6.i8[5] = v11.i8[2];
        a6.i8[6] = v11.i8[4];
        a6.i8[7] = v11.i8[6];
        goto LABEL_335;
      }
    }
  }

  if (!v15)
  {
    if (!v380)
    {
      return result;
    }

    v219 = 0;
    v220 = v13 == 0;
    if (!v484)
    {
      v220 = 1;
    }

    if (!v491)
    {
      v220 = 1;
    }

    v221 = v484 * v491;
    if (v484)
    {
      v222 = v491 == 0;
    }

    else
    {
      v222 = 1;
    }

    v223 = v14 - 7;
    v224 = -(v491 * v14);
    v225 = v221 * v14;
    v226 = -v14;
    v227 = v14 * v13 * v221;
    v228 = v14 & 0xFFFFFFFFFFFFFFF8;
    v229 = v221 - 1;
    result = 3;
    v230 = v14 * v229 + 3;
    v231 = &v400[v230];
    while (1)
    {
      if (v14 < 8)
      {
        v241 = 0;
        v234 = v400;
        if (!v13)
        {
          goto LABEL_181;
        }
      }

      else
      {
        if (v220)
        {
          goto LABEL_181;
        }

        v232 = 0;
        v233 = v231;
        v234 = v400;
        do
        {
          v235 = 0;
          v236 = v233;
          do
          {
            v237 = 0;
            result = v236;
            do
            {
              v238 = result;
              v239 = v491;
              v240 = v12;
              do
              {
                v12 = v240 + 8;
                *v240 = *(v238 - 3);
                v240[1] = *(v238 - 2);
                v240[2] = *(v238 - 1);
                v240[3] = *v238;
                v240[4] = v238[1];
                v240[5] = v238[2];
                v240[6] = v238[3];
                v240[7] = v238[4];
                v238 += v226;
                v240 += 8;
                --v239;
              }

              while (v239);
              ++v237;
              result += v224;
            }

            while (v237 != v484);
            ++v235;
            v236 += v225;
          }

          while (v235 != v13);
          v232 += 8;
          v234 += 8;
          v233 += 8;
        }

        while (v232 < v223);
        v241 = v228;
        v14 = v468;
        if (!v13)
        {
          goto LABEL_181;
        }
      }

      v242 = __OFSUB__(v14, v241);
      v243 = v14 - v241;
      if (!((v243 < 0) ^ v242 | (v243 == 0)) && !v222)
      {
        v244 = 0;
        v245 = &v234[v230];
        do
        {
          v246 = 0;
          v247 = v245;
          do
          {
            v248 = v491;
            v249 = v247;
            do
            {
              if (v243 <= 3)
              {
                switch(v243)
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
                if (v243 <= 5)
                {
                  if (v243 != 4)
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_204;
                }

                if (v243 == 6)
                {
                  goto LABEL_202;
                }

                if (v243 == 7)
                {
                  v12[6] = v249[3];
LABEL_202:
                  v12[5] = v249[2];
LABEL_203:
                  v12[4] = v249[1];
LABEL_204:
                  v12[3] = *v249;
LABEL_205:
                  v12[2] = *(v249 - 1);
LABEL_206:
                  v12[1] = *(v249 - 2);
LABEL_207:
                  *v12 = *(v249 - 3);
                }
              }

              v12 += 8;
              v249 += v226;
              --v248;
            }

            while (v248);
            ++v246;
            v247 += v224;
            result = v484;
          }

          while (v246 != v484);
          ++v244;
          v245 += v225;
        }

        while (v244 != v13);
      }

LABEL_181:
      ++v219;
      v400 += v227;
      v231 += v227;
      v14 = v468;
      if (v219 == v380)
      {
        return result;
      }
    }
  }

  if (v380)
  {
    result = 0;
    v16 = v13 == 0;
    if (!v484)
    {
      v16 = 1;
    }

    v17 = v491 == 0;
    if (v491)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1;
    }

    v19 = v484 * v491;
    if (!v484)
    {
      v17 = 1;
    }

    v408 = v17;
    v437 = v14 - 7;
    v469 = v19 * v14;
    v20 = v14 * v13 * v19;
    v401 = v14 & 0xFFFFFFFFFFFFFFF8;
    v21 = &a2[8 * v19 - 1];
    v434 = 8 * v19;
    v397 = ~v19 + 8 * v19;
    v22 = &a2[v397];
    v394 = 6 * v19 - 1;
    v23 = &a2[v394];
    v24 = 4 * v19 - 1;
    v390 = v24 + v19;
    v392 = v24;
    v25 = &a2[v24 + v19];
    v26 = &a2[v24];
    v27 = 2 * v19 - 1;
    v386 = v27 + v19;
    v388 = v27;
    v28 = &a2[v27 + v19];
    v29 = &a2[v27];
    v384 = v19 - 1;
    v406 = v18;
    v404 = v20;
    do
    {
      v428 = v26;
      v431 = v25;
      v422 = v29;
      v425 = v28;
      if (v14 < 8)
      {
        v65 = 0;
        v34 = v400;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_12;
        }

        v416 = v21;
        v419 = result;
        v30 = 0;
        v31 = v25;
        v410 = v23;
        v413 = v22;
        v32 = v23;
        v33 = v22;
        v34 = v400;
        do
        {
          v457 = v29;
          v460 = v30;
          v35 = 0;
          v451 = v26;
          v454 = v28;
          v445 = v32;
          v448 = v31;
          v439 = v21;
          v442 = v33;
          v36 = v21;
          v463 = v34;
          v37 = v34;
          do
          {
            v485 = v29;
            v488 = v35;
            v38 = 0;
            v39 = &v37[(v484 - 1) * v491];
            v477 = v26;
            v480 = v28;
            v473 = v32;
            v475 = v31;
            v471 = v33;
            v40 = v36;
            do
            {
              v41 = &v39[v491 - 1];
              v42 = v29;
              v43 = v28;
              v44 = v26;
              v45 = v31;
              v46 = v32;
              v47 = v33;
              v48 = v40;
              v49 = v491;
              v50 = v12;
              do
              {
                v52 = *v41--;
                v51 = v52;
                v54 = *v42--;
                v53 = v54;
                v56 = *v43--;
                v55 = v56;
                v57 = *v44--;
                a4.i16[0] = v51;
                a4.i16[1] = v53;
                a4.i16[2] = v55;
                a4.i16[3] = v57;
                *v50 = vmovn_s16(a4).u32[0];
                v59 = *v45--;
                v58 = v59;
                v61 = *v46--;
                v60 = v61;
                v63 = *v47--;
                v62 = v63;
                v64 = *v48--;
                v12 = v50 + 2;
                a4.i16[0] = v58;
                a4.i16[1] = v60;
                a4.i16[2] = v62;
                a4.i16[3] = v64;
                v50[1] = vmovn_s16(a4).u32[0];
                v50 += 2;
                --v49;
              }

              while (v49);
              ++v38;
              v39 -= v491;
              v40 -= v491;
              v33 -= v491;
              v32 -= v491;
              v31 -= v491;
              v26 -= v491;
              v28 -= v491;
              v29 -= v491;
            }

            while (v38 != v484);
            v35 = v488 + 1;
            v37 += v469;
            v36 += v469;
            v33 = &v471[v469];
            v32 = &v473[v469];
            v31 = &v475[v469];
            v26 = &v477[v469];
            v28 = &v480[v469];
            v29 = &v485[v469];
          }

          while (v488 + 1 != v13);
          v30 = v460 + 8;
          v34 = &v463[v434];
          v21 = v439 + v434;
          v33 = &v442[v434];
          v32 = &v445[v434];
          v31 = &v448[v434];
          v26 = &v451[v434];
          v28 = &v454[v434];
          v29 = &v457[v434];
        }

        while (v460 + 8 < v437);
        v65 = v401;
        v20 = v404;
        v14 = v468;
        v21 = v416;
        result = v419;
        v18 = v406;
        v23 = v410;
        v22 = v413;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v66 = v14 - v65;
      if (v14 > v65 && !v408)
      {
        v67 = 0;
        v68 = &v34[v397];
        v69 = &v34[v394];
        v70 = &v34[v390];
        v71 = &v34[v392];
        v72 = &v34[v386];
        v73 = &v34[v388];
        v74 = &v34[v384];
        do
        {
          v75 = 0;
          v76 = v74;
          v77 = v73;
          v78 = v72;
          v79 = v71;
          v80 = v70;
          v81 = v69;
          v82 = v68;
          do
          {
            v83 = 0;
            do
            {
              if (v66 <= 3)
              {
                switch(v66)
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
                if (v66 <= 5)
                {
                  if (v66 != 4)
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_35;
                }

                if (v66 == 6)
                {
                  goto LABEL_33;
                }

                if (v66 == 7)
                {
                  v12[6] = v82[v83];
LABEL_33:
                  v12[5] = v81[v83];
LABEL_34:
                  v12[4] = v80[v83];
LABEL_35:
                  v12[3] = v79[v83];
LABEL_36:
                  v12[2] = v78[v83];
LABEL_37:
                  v12[1] = v77[v83];
LABEL_38:
                  *v12 = v76[v83];
                }
              }

              v12 += 8;
              --v83;
            }

            while (-v491 != v83);
            ++v75;
            v82 -= v491;
            v81 -= v491;
            v80 -= v491;
            v79 -= v491;
            v78 -= v491;
            v77 -= v491;
            v76 -= v491;
          }

          while (v75 != v484);
          ++v67;
          v68 += v469;
          v69 += v469;
          v70 += v469;
          v71 += v469;
          v72 += v469;
          v73 += v469;
          v74 += v469;
        }

        while (v67 != v13);
      }

LABEL_12:
      ++result;
      v400 += v20;
      v21 += v20;
      v22 += v20;
      v23 += v20;
      v25 = &v431[v20];
      v26 = &v428[v20];
      v28 = &v425[v20];
      v29 = &v422[v20];
      v14 = v468;
    }

    while (result != v380);
  }

  return result;
}