uint64_t RGB555_mark_pixelmask(uint64_t result, int a2)
{
  v3 = *(result + 48);
  v4 = *(result + 136);
  v5 = *(result + 12);
  v6 = *(result + 16);
  if (v3)
  {
    v7 = *(result + 32);
    v8 = (v3 + v7 * v6 + v5);
    v558 = -1;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v558 = 0;
    if (!v4)
    {
      return result;
    }
  }

  v9 = *(result + 4);
  v10 = *(result + 8);
  v12 = *(result + 88);
  v11 = *(result + 96);
  v13 = *(result + 28) >> 1;
  v14 = (*(result + 40) + 2 * v13 * v6 + 2 * v5);
  v15 = *(result + 124);
  v16 = (v4 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = BYTE1(*result);
  if (v19 == 3)
  {
    v579 = *(result + 124);
    v553 = *(result + 96);
    v22 = RGB555_colorlookup(3, v12, v11);
    v15 = v579;
    v12 = v22;
    v23 = (v22 + 512);
    result = v553;
    if (v553)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    if (v553)
    {
      v24 = 16;
    }

    else
    {
      v24 = 0;
    }

    v531 = v24;
    v20 = 16;
    v21 = v553 != 0;
    v25 = 16;
    v26 = 16;
    goto LABEL_26;
  }

  if (v19 != 1)
  {
    v26 = *(result + 64);
    v25 = *(result + 68);
    v20 = *(result + 76) >> 1;
    if (v11)
    {
      v531 = *(result + 80);
      v21 = 1;
    }

    else
    {
      v531 = 0;
      v21 = 0;
    }

LABEL_26:
    v32 = v12 + 2 * v20 * v25;
    v558 &= 1u;
    v31 = 1;
    v555 = v12;
    v580 = v12;
    goto LABEL_27;
  }

  v20 = *(result + 76) >> 1;
  if (v11)
  {
    v531 = *(result + 80);
    v11 += v531 * v18 + v17;
    v21 = -1;
  }

  else
  {
    v531 = 0;
    v21 = 0;
  }

  v580 = (v12 + 2 * v20 * v18 + 2 * v17);
  if (v20 == v13)
  {
    v27 = v14 - v580;
    if (v27 >= 1)
    {
      if (v27 <= v9)
      {
        v14 += v9 - 1;
        v580 += v9 - 1;
        v16 += v9 - 1;
        v8 += v558 & (v9 - 1);
        v31 = -1;
        v20 = *(result + 28) >> 1;
        v11 += v21 & (v9 - 1);
        goto LABEL_24;
      }

      v28 = v10 - 1;
      v29 = v13 * v28;
      v30 = &v580[v13 * v28];
      if (v14 <= &v30[v9 - 1])
      {
        v20 = -v13;
        v16 += v15 * v28;
        v15 = -v15;
        v8 += v7 * v28;
        v7 = -v7;
        v558 &= 1u;
        v11 += v531 * v28;
        v531 = -v531;
        v21 &= 1u;
        v31 = 1;
        v580 = v30;
        v13 = -v13;
        v14 += v29;
        goto LABEL_24;
      }
    }
  }

  v558 &= 1u;
  v21 &= 1u;
  v31 = 1;
LABEL_24:
  v32 = 0;
  v555 = 0;
  v12 = -1;
  v25 = v531;
  v26 = v20;
LABEL_27:
  v33 = v31 * v9;
  v532 = v9;
  v556 = v32;
  v557 = v10;
  v568 = v21;
  if (v32)
  {
    v34 = v18 % v25;
    v528 = v20;
    v35 = &v580[v20 * v34];
    v36 = v17 % v26;
    v37 = v26;
    v12 = &v35[v26];
    if (v21)
    {
      v11 += v531 * v34 + v36;
    }

    v554 = v11;
    v555 = &v35[v36];
    v580 = v555;
  }

  else
  {
    v554 = v11;
    v528 = v20 - v33;
    v531 -= v21 * v9;
    v37 = v26;
  }

  v530 = v15 - v33;
  v529 = v13 - v33;
  v527 = v7 - v558 * v9;
  v578 = v31;
  switch(a2)
  {
    case 0:
      if (v558)
      {
        while (1)
        {
          v38 = v532;
          do
          {
            v39 = *v16;
            if (v39 < 0xF8)
            {
              if (v39 < 8)
              {
                goto LABEL_40;
              }

              result = PDAM(bswap32(*v14) >> 16, *v8, ~v39);
              *v14 = bswap32(result) >> 16;
              v40 = BYTE3(result);
            }

            else
            {
              LOBYTE(v40) = 0;
              *v14 = 0;
            }

            *v8 = v40;
LABEL_40:
            v16 += v578;
            v8 += v558;
            v14 += v578;
            --v38;
          }

          while (v38);
          v16 += v530;
          v14 += v529;
          v8 += v527;
          if (!--v557)
          {
            return result;
          }
        }
      }

LABEL_810:
      v447 = v9;
      while (1)
      {
        v448 = *v16;
        if (v448 > 0xF7)
        {
          break;
        }

        if (v448 >= 8)
        {
          result = PDM(bswap32(*v14) >> 16, ~v448);
          v449 = __rev16(result);
          goto LABEL_815;
        }

LABEL_816:
        v16 += v578;
        v14 += v578;
        if (!--v447)
        {
          v16 += v530;
          v14 += v529;
          if (!--v557)
          {
            return result;
          }

          goto LABEL_810;
        }
      }

      v449 = 0;
LABEL_815:
      *v14 = v449;
      goto LABEL_816;
    case 1:
      if (v558)
      {
        v206 = v558;
        if (v21)
        {
          v207 = v21;
          v208 = -v37;
          v540 = -(v531 * v25);
          v548 = -(v528 * v25);
          v209 = 2 * v31;
          v210 = v554;
          while (1)
          {
            v211 = v532;
            do
            {
              v212 = *v16;
              if (v212 < 0xF8)
              {
                if (v212 < 8)
                {
                  goto LABEL_379;
                }

                v214 = v12;
                result = PDAMplusDAM(bswap32(*v580) >> 16, *v210, v212, bswap32(*v14) >> 16, *v8, v212 ^ 0xFF);
                v209 = 2 * v578;
                v206 = v558;
                v12 = v214;
                *v14 = bswap32(result) >> 16;
                v213 = BYTE3(result);
              }

              else
              {
                *v14 = *v580;
                LOBYTE(v213) = *v210;
              }

              *v8 = v213;
LABEL_379:
              v16 += v578;
              v8 += v206;
              v215 = &v580[v578];
              if (v215 >= v12)
              {
                v216 = v208;
              }

              else
              {
                v216 = 0;
              }

              v210 += v207 + v216;
              v580 = &v215[v216];
              v14 = (v14 + v209);
              --v211;
            }

            while (v211);
            if (v556)
            {
              v217 = &v555[v528];
              v218 = v540;
              if (v217 < v556)
              {
                v218 = 0;
              }

              v210 = &v554[v531 + v218];
              v219 = v548;
              if (v217 < v556)
              {
                v219 = 0;
              }

              v12 += 2 * v219 + 2 * v528;
              v554 += v531 + v218;
              v555 = &v217[v219];
              v580 = v555;
            }

            else
            {
              v580 += v528;
              v210 += v531;
            }

            v16 += v530;
            v14 += v529;
            v8 += v527;
            if (!--v557)
            {
              return result;
            }
          }
        }

        v478 = -v37;
        v479 = -(v528 * v25);
LABEL_861:
        v480 = v532;
        v481 = v556;
        while (1)
        {
          v482 = *v16;
          if (v482 >= 0xF8)
          {
            break;
          }

          if (v482 >= 8)
          {
            v484 = v12;
            result = PDAMplusDAM(bswap32(*v580) >> 16, 255, v482, bswap32(*v14) >> 16, *v8, v482 ^ 0xFF);
            v206 = v558;
            v481 = v556;
            v12 = v484;
            *v14 = bswap32(result) >> 16;
            v483 = BYTE3(result);
            goto LABEL_866;
          }

LABEL_867:
          v16 += v578;
          v8 += v206;
          v485 = &v580[v578];
          if (v485 >= v12)
          {
            v486 = v478;
          }

          else
          {
            v486 = 0;
          }

          v580 = &v485[v486];
          v14 += v578;
          if (!--v480)
          {
            v16 += v530;
            v14 += v529;
            v8 += v527;
            v487 = v555;
            v488 = &v555[v528];
            if (v488 >= v481)
            {
              v489 = v479;
            }

            else
            {
              v489 = 0;
            }

            v490 = &v488[v489];
            v491 = v12 + 2 * v489 + 2 * v528;
            if (v481)
            {
              v12 = v491;
              v487 = v490;
            }

            v555 = v487;
            if (!v481)
            {
              v490 = &v580[v528];
            }

            v580 = v490;
            if (!--v557)
            {
              return result;
            }

            goto LABEL_861;
          }
        }

        *v14 = *v580;
        LOBYTE(v483) = -1;
LABEL_866:
        *v8 = v483;
        goto LABEL_867;
      }

      v450 = -v37;
      v451 = -(v528 * v25);
LABEL_820:
      v452 = v9;
      v453 = v556;
      while (1)
      {
        v454 = *v16;
        if (v454 >= 0xF8)
        {
          break;
        }

        if (v454 >= 8)
        {
          v456 = v12;
          result = PDMplusDM(bswap32(*v580) >> 16, v454, bswap32(*v14) >> 16, v454 ^ 0xFF);
          v453 = v556;
          v12 = v456;
          v455 = __rev16(result);
          goto LABEL_825;
        }

LABEL_826:
        v16 += v578;
        v457 = &v580[v578];
        if (v457 >= v12)
        {
          v458 = v450;
        }

        else
        {
          v458 = 0;
        }

        v580 = &v457[v458];
        v14 += v578;
        if (!--v452)
        {
          v16 += v530;
          v14 += v529;
          v459 = v555;
          v460 = &v555[v528];
          if (v460 >= v453)
          {
            v461 = v451;
          }

          else
          {
            v461 = 0;
          }

          v462 = &v460[v461];
          v463 = v12 + 2 * v461 + 2 * v528;
          if (v453)
          {
            v12 = v463;
            v459 = v462;
          }

          v555 = v459;
          if (!v453)
          {
            v462 = &v580[v528];
          }

          v580 = v462;
          if (!--v557)
          {
            return result;
          }

          goto LABEL_820;
        }
      }

      v455 = *v580;
LABEL_825:
      *v14 = v455;
      goto LABEL_826;
    case 2:
      if (v558)
      {
        v156 = v558;
        v157 = v21;
        v158 = -v37;
        v537 = -(v531 * v25);
        v546 = -(v528 * v25);
        v159 = v554;
        v570 = v558;
        while (1)
        {
          v160 = v532;
          v562 = v12;
          do
          {
            v161 = *v16;
            if (v161 < 0xF8)
            {
              if (v161 < 8)
              {
                goto LABEL_282;
              }

              result = PDAM(bswap32(*v580) >> 16, *v159, v161);
              v156 = v570;
              v12 = v562;
              if (!(result >> 27))
              {
                goto LABEL_282;
              }

              v162 = BYTE3(result);
              v163 = bswap32(*v14) >> 16;
              v164 = *v8;
              LODWORD(result) = result;
LABEL_280:
              result = PDAplusDAM(result, v162, v163, v164, v162 ^ 0xFF);
              v156 = v570;
              v12 = v562;
              *v14 = bswap32(result) >> 16;
              v162 = BYTE3(result);
              goto LABEL_281;
            }

            v162 = *v159;
            if (v162 < 0xF8)
            {
              if (v162 < 8)
              {
                goto LABEL_282;
              }

              LODWORD(result) = bswap32(*v580) >> 16;
              v163 = bswap32(*v14) >> 16;
              v164 = *v8;
              goto LABEL_280;
            }

            *v14 = *v580;
LABEL_281:
            *v8 = v162;
LABEL_282:
            v16 += v578;
            v8 += v156;
            v165 = &v580[v578];
            if (v165 >= v12)
            {
              v166 = v158;
            }

            else
            {
              v166 = 0;
            }

            v159 += v157 + v166;
            v580 = &v165[v166];
            v14 += v578;
            --v160;
          }

          while (v160);
          if (v556)
          {
            v167 = &v555[v528];
            v168 = v537;
            if (v167 < v556)
            {
              v168 = 0;
            }

            v159 = &v554[v531 + v168];
            v169 = v546;
            if (v167 < v556)
            {
              v169 = 0;
            }

            v12 += 2 * v169 + 2 * v528;
            v554 += v531 + v168;
            v555 = &v167[v169];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v159 += v531;
          }

          v16 += v530;
          v14 += v529;
          v8 += v527;
          if (!--v557)
          {
            return result;
          }
        }
      }

      v419 = v21;
      v420 = -v37;
      v575 = -(v528 * v25);
      v567 = -(v531 * v25);
      v421 = v554;
LABEL_765:
      v422 = v532;
      v423 = v12;
      while (1)
      {
        v424 = *v16;
        if (v424 < 0xF8)
        {
          if (v424 >= 8)
          {
            result = PDAM(bswap32(*v580) >> 16, *v421, v424);
            v12 = v423;
            if (result >> 27)
            {
              v427 = bswap32(*v14) >> 16;
              v428 = ~result >> 24;
              goto LABEL_774;
            }
          }
        }

        else
        {
          v425 = *v421;
          if (v425 >= 0xF8)
          {
            v426 = *v580;
            goto LABEL_775;
          }

          if (v425 >= 8)
          {
            LODWORD(result) = bswap32(*v580) >> 16;
            v427 = bswap32(*v14) >> 16;
            v428 = v425 ^ 0xFF;
LABEL_774:
            result = PDplusDM(result, v427, v428);
            v12 = v423;
            v426 = __rev16(result);
LABEL_775:
            *v14 = v426;
          }
        }

        v16 += v578;
        v429 = &v580[v578];
        if (v429 >= v12)
        {
          v430 = v420;
        }

        else
        {
          v430 = 0;
        }

        v421 += v419 + v430;
        v580 = &v429[v430];
        v14 += v578;
        if (!--v422)
        {
          if (v556)
          {
            v431 = &v555[v528];
            v432 = v567;
            if (v431 < v556)
            {
              v432 = 0;
            }

            v421 = &v554[v531 + v432];
            v433 = v575;
            if (v431 < v556)
            {
              v433 = 0;
            }

            v12 += 2 * v433 + 2 * v528;
            v554 += v531 + v432;
            v555 = &v431[v433];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v421 += v531;
          }

          v16 += v530;
          v14 += v529;
          if (!--v557)
          {
            return result;
          }

          goto LABEL_765;
        }
      }

    case 3:
      v183 = -v37;
      v538 = -(v528 * v25);
      v516 = -(v531 * v25);
      v184 = v554;
      while (1)
      {
        v185 = v532;
        v186 = v12;
        do
        {
          v187 = *v16;
          if (v187 < 0xF8)
          {
            if (v187 < 8)
            {
              goto LABEL_336;
            }

            if (v568)
            {
              v189 = *v184;
            }

            else
            {
              v189 = -1;
            }

            result = PDAMplusDAM(bswap32(*v580) >> 16, v189, ((*v8 * v187 + ((*v8 * v187) >> 8) + 1) >> 8), bswap32(*v14) >> 16, *v8, v187 ^ 0xFF);
          }

          else
          {
            if (v568)
            {
              v188 = *v184;
            }

            else
            {
              v188 = -1;
            }

            result = PDAM(bswap32(*v580) >> 16, v188, *v8);
          }

          *v14 = bswap32(result) >> 16;
          *v8 = BYTE3(result);
          v12 = v186;
LABEL_336:
          v16 += v578;
          v8 += v558;
          v190 = &v580[v578];
          if (v190 >= v12)
          {
            v191 = v183;
          }

          else
          {
            v191 = 0;
          }

          v184 += v568 + v191;
          v580 = &v190[v191];
          v14 += v578;
          --v185;
        }

        while (v185);
        if (v556)
        {
          v192 = &v555[v528];
          v193 = v516;
          if (v192 < v556)
          {
            v193 = 0;
          }

          v184 = &v554[v531 + v193];
          v194 = v538;
          if (v192 < v556)
          {
            v194 = 0;
          }

          v12 += 2 * v194 + 2 * v528;
          v554 += v531 + v193;
          v555 = &v192[v194];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v184 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 4:
      v92 = -v37;
      v534 = -(v528 * v25);
      v511 = -(v531 * v25);
      v93 = v554;
      while (1)
      {
        v94 = v532;
        v95 = v12;
        do
        {
          v96 = *v16;
          if (v96 < 0xF8)
          {
            if (v96 < 8)
            {
              goto LABEL_162;
            }

            if (v568)
            {
              v98 = *v93;
            }

            else
            {
              v98 = -1;
            }

            result = PDAMplusDAM(bswap32(*v580) >> 16, v98, (((*v8 ^ 0xFF) * v96 + (((*v8 ^ 0xFF) * v96) >> 8) + 1) >> 8), bswap32(*v14) >> 16, *v8, v96 ^ 0xFF);
          }

          else
          {
            if (v568)
            {
              v97 = *v93;
            }

            else
            {
              v97 = -1;
            }

            result = PDAM(bswap32(*v580) >> 16, v97, ~*v8);
          }

          *v14 = bswap32(result) >> 16;
          *v8 = BYTE3(result);
          v12 = v95;
LABEL_162:
          v16 += v578;
          v8 += v558;
          v99 = &v580[v578];
          if (v99 >= v12)
          {
            v100 = v92;
          }

          else
          {
            v100 = 0;
          }

          v93 += v568 + v100;
          v580 = &v99[v100];
          v14 += v578;
          --v94;
        }

        while (v94);
        if (v556)
        {
          v101 = &v555[v528];
          v102 = v511;
          if (v101 < v556)
          {
            v102 = 0;
          }

          v93 = &v554[v531 + v102];
          v103 = v534;
          if (v101 < v556)
          {
            v103 = 0;
          }

          v12 += 2 * v103 + 2 * v528;
          v554 += v531 + v102;
          v555 = &v101[v103];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v93 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 5:
      v246 = v558;
      v247 = v21;
      v248 = -v37;
      v572 = -(v528 * v25);
      v549 = -(v531 * v25);
      v249 = v554;
      do
      {
        v250 = v532;
        v563 = v12;
        do
        {
          v251 = *v16;
          if (v251 >= 8)
          {
            v252 = *v8;
            v253 = v248;
            v254 = PDAM(bswap32(*v580) >> 16, *v249, v251);
            result = PDAMplusDAM(v254, SHIBYTE(v254), v252, bswap32(*v14) >> 16, v252, HIBYTE(v254) ^ 0xFF);
            v248 = v253;
            v12 = v563;
            *v14 = bswap32(result) >> 16;
            *v8 = BYTE3(result);
          }

          v16 += v578;
          v8 += v246;
          v255 = &v580[v578];
          if (v255 >= v12)
          {
            v256 = v248;
          }

          else
          {
            v256 = 0;
          }

          v249 += v247 + v256;
          v580 = &v255[v256];
          v14 += v578;
          --v250;
        }

        while (v250);
        if (v556)
        {
          v257 = &v555[v528];
          v258 = v549;
          if (v257 < v556)
          {
            v258 = 0;
          }

          v249 = &v554[v531 + v258];
          v259 = v572;
          if (v257 < v556)
          {
            v259 = 0;
          }

          v12 += 2 * v259 + 2 * v528;
          v554 += v531 + v258;
          v555 = &v257[v259];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v249 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        --v557;
      }

      while (v557);
      return result;
    case 6:
      v286 = v558;
      v287 = -v37;
      v541 = -(v528 * v25);
      v521 = -(v531 * v25);
      v288 = v554;
      v550 = v558;
      while (1)
      {
        v289 = v9;
        v564 = v12;
        do
        {
          v290 = *v16;
          if (v290 < 8)
          {
            goto LABEL_535;
          }

          v291 = *v8;
          if (v291 > 7)
          {
            if (v291 > 0xF7)
            {
              goto LABEL_535;
            }

            if (v568)
            {
              v293 = *v288;
            }

            else
            {
              v293 = -1;
            }

            result = PDAplusDAM(bswap32(*v14) >> 16, v291, bswap32(*v580) >> 16, v293, ((~v291 * v290 + ((~v291 * v290) >> 8) + 1) >> 8));
          }

          else
          {
            if (v568)
            {
              v292 = *v288;
            }

            else
            {
              v292 = -1;
            }

            result = PDAM(bswap32(*v580) >> 16, v292, v290);
          }

          *v14 = bswap32(result) >> 16;
          *v8 = BYTE3(result);
          v12 = v564;
          v286 = v550;
LABEL_535:
          v16 += v578;
          v8 += v286;
          v294 = &v580[v578];
          if (v294 >= v12)
          {
            v295 = v287;
          }

          else
          {
            v295 = 0;
          }

          v288 += v568 + v295;
          v580 = &v294[v295];
          v14 += v578;
          --v289;
        }

        while (v289);
        if (v556)
        {
          v296 = &v555[v528];
          v297 = v521;
          if (v296 < v556)
          {
            v297 = 0;
          }

          v288 = &v554[v531 + v297];
          v298 = v541;
          if (v296 < v556)
          {
            v298 = 0;
          }

          v12 += 2 * v298 + 2 * v528;
          v554 += v531 + v297;
          v555 = &v296[v298];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v288 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 7:
      if (v558)
      {
        v571 = v21;
        v195 = -v37;
        v539 = -(v531 * v25);
        v547 = -(v528 * v25);
        v196 = v554;
        while (1)
        {
          v197 = v532;
          v198 = v12;
          do
          {
            v199 = *v16;
            if (v199 < 0xF8)
            {
              if (v199 < 8)
              {
                goto LABEL_357;
              }

              v200 = bswap32(*v14) >> 16;
              result = PDAMplusDAM(v200, *v8, ((*v196 * v199 + ((*v196 * v199) >> 8) + 1) >> 8), v200, *v8, v199 ^ 0xFF);
            }

            else
            {
              result = PDAM(bswap32(*v14) >> 16, *v8, *v196);
            }

            *v14 = bswap32(result) >> 16;
            *v8 = BYTE3(result);
            v12 = v198;
LABEL_357:
            v16 += v578;
            v8 += v558;
            v201 = &v580[v578];
            if (v201 >= v12)
            {
              v202 = v195;
            }

            else
            {
              v202 = 0;
            }

            v196 += v571 + v202;
            v580 = &v201[v202];
            v14 += v578;
            --v197;
          }

          while (v197);
          if (v556)
          {
            v203 = &v555[v528];
            v204 = v539;
            if (v203 < v556)
            {
              v204 = 0;
            }

            v196 = &v554[v531 + v204];
            v205 = v547;
            if (v203 < v556)
            {
              v205 = 0;
            }

            v12 += 2 * v205 + 2 * v528;
            v554 += v531 + v204;
            v555 = &v203[v205];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v196 += v531;
          }

          v16 += v530;
          v14 += v529;
          v8 += v527;
          if (!--v557)
          {
            return result;
          }
        }
      }

      v434 = v21;
      v435 = -v37;
      v436 = -(v528 * v25);
      v576 = -(v531 * v25);
      v437 = v554;
LABEL_790:
      v438 = v532;
      v439 = v12;
      while (1)
      {
        v440 = *v16;
        if (v440 == 248)
        {
          break;
        }

        if (v440 >= 8)
        {
          v441 = bswap32(*v14) >> 16;
          result = PDMplusDM(v441, ((*v437 * v440 + ((*v437 * v440) >> 8) + 1) >> 8), v441, v440 ^ 0xFF);
          goto LABEL_795;
        }

LABEL_796:
        v16 += v578;
        v442 = &v580[v578];
        if (v442 >= v12)
        {
          v443 = v435;
        }

        else
        {
          v443 = 0;
        }

        v437 += v434 + v443;
        v580 = &v442[v443];
        v14 += v578;
        if (!--v438)
        {
          if (v556)
          {
            v444 = &v555[v528];
            v445 = v576;
            if (v444 < v556)
            {
              v445 = 0;
            }

            v437 = &v554[v531 + v445];
            if (v444 >= v556)
            {
              v446 = v436;
            }

            else
            {
              v446 = 0;
            }

            v12 += 2 * v446 + 2 * v528;
            v554 += v531 + v445;
            v555 = &v444[v446];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v437 += v531;
          }

          v16 += v530;
          v14 += v529;
          if (!--v557)
          {
            return result;
          }

          goto LABEL_790;
        }
      }

      result = PDM(bswap32(*v14) >> 16, *v437);
LABEL_795:
      *v14 = __rev16(result);
      v12 = v439;
      goto LABEL_796;
    case 8:
      if (v558)
      {
        v574 = v21;
        v326 = -v37;
        v542 = -(v531 * v25);
        v552 = -(v528 * v25);
        v327 = v554;
        while (1)
        {
          v328 = v532;
          v329 = v12;
          do
          {
            v330 = *v16;
            if (v330 < 0xF8)
            {
              if (v330 < 8)
              {
                goto LABEL_600;
              }

              v331 = bswap32(*v14) >> 16;
              v332 = *v8;
              v333 = ~((*v327 * v330 + ((*v327 * v330) >> 8) + 1) >> 8);
            }

            else
            {
              v331 = bswap32(*v14) >> 16;
              v332 = *v8;
              v333 = ~*v327;
            }

            result = PDAM(v331, v332, v333);
            *v14 = bswap32(result) >> 16;
            *v8 = BYTE3(result);
            v12 = v329;
LABEL_600:
            v16 += v578;
            v8 += v558;
            v334 = &v580[v578];
            if (v334 >= v12)
            {
              v335 = v326;
            }

            else
            {
              v335 = 0;
            }

            v327 += v574 + v335;
            v580 = &v334[v335];
            v14 += v578;
            --v328;
          }

          while (v328);
          if (v556)
          {
            v336 = &v555[v528];
            v337 = v542;
            if (v336 < v556)
            {
              v337 = 0;
            }

            v327 = &v554[v531 + v337];
            v338 = v552;
            if (v336 < v556)
            {
              v338 = 0;
            }

            v12 += 2 * v338 + 2 * v528;
            v554 += v531 + v337;
            v555 = &v336[v338];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v327 += v531;
          }

          v16 += v530;
          v14 += v529;
          v8 += v527;
          if (!--v557)
          {
            return result;
          }
        }
      }

      v464 = v21;
      v465 = -v37;
      v466 = -(v528 * v25);
      v577 = -(v531 * v25);
      v467 = v554;
LABEL_840:
      v468 = v532;
      v469 = v12;
      while (1)
      {
        v470 = *v16;
        if (v470 >= 0xF8)
        {
          break;
        }

        if (v470 >= 8)
        {
          v471 = bswap32(*v14) >> 16;
          v472 = (*v467 * v470 + ((*v467 * v470) >> 8) + 1) >> 8;
          goto LABEL_845;
        }

LABEL_846:
        v16 += v578;
        v473 = &v580[v578];
        if (v473 >= v12)
        {
          v474 = v465;
        }

        else
        {
          v474 = 0;
        }

        v467 += v464 + v474;
        v580 = &v473[v474];
        v14 += v578;
        if (!--v468)
        {
          if (v556)
          {
            v475 = &v555[v528];
            v476 = v577;
            if (v475 < v556)
            {
              v476 = 0;
            }

            v467 = &v554[v531 + v476];
            if (v475 >= v556)
            {
              v477 = v466;
            }

            else
            {
              v477 = 0;
            }

            v12 += 2 * v477 + 2 * v528;
            v554 += v531 + v476;
            v555 = &v475[v477];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v467 += v531;
          }

          v16 += v530;
          v14 += v529;
          if (!--v557)
          {
            return result;
          }

          goto LABEL_840;
        }
      }

      v471 = bswap32(*v14) >> 16;
      LOBYTE(v472) = *v467;
LABEL_845:
      result = PDM(v471, ~v472);
      *v14 = __rev16(result);
      v12 = v469;
      goto LABEL_846;
    case 9:
      v116 = v558;
      v117 = v21;
      v118 = -v37;
      v569 = -(v528 * v25);
      v536 = -(v531 * v25);
      v119 = v554;
      v545 = v558;
      do
      {
        v120 = v532;
        v561 = v12;
        do
        {
          v121 = *v16;
          if (v121 >= 8)
          {
            v122 = *v8;
            v123 = v118;
            v124 = PDAM(bswap32(*v580) >> 16, *v119, *v16);
            result = PDAMplusDAM(v124, SBYTE3(v124), v122 ^ 0xFFu, bswap32(*v14) >> 16, v122, (~v121 + BYTE3(v124)));
            v118 = v123;
            v116 = v545;
            v12 = v561;
            *v14 = bswap32(result) >> 16;
            *v8 = BYTE3(result);
          }

          v16 += v578;
          v8 += v116;
          v125 = &v580[v578];
          if (v125 >= v12)
          {
            v126 = v118;
          }

          else
          {
            v126 = 0;
          }

          v119 += v117 + v126;
          v580 = &v125[v126];
          v14 += v578;
          --v120;
        }

        while (v120);
        if (v556)
        {
          v127 = &v555[v528];
          v128 = v536;
          if (v127 < v556)
          {
            v128 = 0;
          }

          v119 = &v554[v531 + v128];
          v129 = v569;
          if (v127 < v556)
          {
            v129 = 0;
          }

          v12 += 2 * v129 + 2 * v528;
          v554 += v531 + v128;
          v555 = &v127[v129];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v119 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        --v557;
      }

      while (v557);
      return result;
    case 10:
      v312 = v558;
      v313 = v21;
      v573 = -v37;
      v565 = -(v528 * v25);
      v551 = -(v531 * v25);
      v314 = v554;
      do
      {
        v315 = v532;
        do
        {
          v316 = *v16;
          if (v316 >= 8)
          {
            v317 = *v8;
            v318 = v12;
            v319 = v313;
            v320 = PDAM(bswap32(*v580) >> 16, *v314, v316);
            result = PDAMplusDAM(v320, SHIBYTE(v320), v317 ^ 0xFFu, bswap32(*v14) >> 16, v317, HIBYTE(v320) ^ 0xFF);
            v313 = v319;
            v12 = v318;
            *v14 = bswap32(result) >> 16;
            *v8 = BYTE3(result);
          }

          v16 += v578;
          v8 += v312;
          v321 = &v580[v578];
          v322 = v573;
          if (v321 < v12)
          {
            v322 = 0;
          }

          v314 += v313 + v322;
          v580 = &v321[v322];
          v14 += v578;
          --v315;
        }

        while (v315);
        if (v556)
        {
          v323 = &v555[v528];
          v324 = v551;
          if (v323 < v556)
          {
            v324 = 0;
          }

          v314 = &v554[v531 + v324];
          v325 = v565;
          if (v323 < v556)
          {
            v325 = 0;
          }

          v12 += 2 * v325 + 2 * v528;
          v554 += v531 + v324;
          v555 = &v323[v325];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v314 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        --v557;
      }

      while (v557);
      return result;
    case 11:
      if (v558)
      {
        v80 = v558;
        v81 = -v37;
        v533 = -(v528 * v25);
        v510 = -(v531 * v25);
        v82 = v554;
        v543 = v558;
        do
        {
          v83 = v9;
          v559 = v12;
          do
          {
            v84 = *v16;
            if (v84 >= 8)
            {
              if (v568)
              {
                v85 = *v82;
              }

              else
              {
                v85 = -1;
              }

              v86 = PDAM(bswap32(*v580) >> 16, v85, v84);
              result = PDAplusdDA(bswap32(*v14) >> 16, *v8, v86, HIBYTE(v86));
              *v14 = bswap32(result) >> 16;
              *v8 = BYTE3(result);
              v12 = v559;
              v80 = v543;
            }

            v16 += v578;
            v8 += v80;
            v87 = &v580[v578];
            if (v87 >= v12)
            {
              v88 = v81;
            }

            else
            {
              v88 = 0;
            }

            v82 += v568 + v88;
            v580 = &v87[v88];
            v14 += v578;
            --v83;
          }

          while (v83);
          if (v556)
          {
            v89 = &v555[v528];
            v90 = v510;
            if (v89 < v556)
            {
              v90 = 0;
            }

            v82 = &v554[v531 + v90];
            v91 = v533;
            if (v89 < v556)
            {
              v91 = 0;
            }

            v12 += 2 * v91 + 2 * v528;
            v554 += v531 + v90;
            v555 = &v89[v91];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v82 += v531;
          }

          v16 += v530;
          v14 += v529;
          v8 += v527;
          --v557;
        }

        while (v557);
      }

      else
      {
        v391 = -v37;
        v392 = -(v528 * v25);
        v566 = -(v531 * v25);
        v393 = v554;
        do
        {
          v394 = v532;
          v395 = v12;
          do
          {
            v396 = *v16;
            if (v396 >= 8)
            {
              if (v568)
              {
                v397 = *v393;
              }

              else
              {
                v397 = -1;
              }

              v398 = PDAM(bswap32(*v580) >> 16, v397, v396);
              result = PDplusdDA(bswap32(*v14) >> 16, v398, HIBYTE(v398));
              *v14 = __rev16(result);
              v12 = v395;
            }

            v16 += v578;
            v399 = &v580[v578];
            if (v399 >= v12)
            {
              v400 = v391;
            }

            else
            {
              v400 = 0;
            }

            v393 += v568 + v400;
            v580 = &v399[v400];
            v14 += v578;
            --v394;
          }

          while (v394);
          if (v556)
          {
            v401 = &v555[v528];
            v402 = v566;
            if (v401 < v556)
            {
              v402 = 0;
            }

            v393 = &v554[v531 + v402];
            if (v401 >= v556)
            {
              v403 = v392;
            }

            else
            {
              v403 = 0;
            }

            v12 += 2 * v403 + 2 * v528;
            v554 += v531 + v402;
            v555 = &v401[v403];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v393 += v531;
          }

          v16 += v530;
          v14 += v529;
          --v557;
        }

        while (v557);
      }

      return result;
    case 12:
      if (v558)
      {
        v104 = v558;
        v105 = -v37;
        v535 = -(v528 * v25);
        v512 = -(v531 * v25);
        v106 = v554;
        v544 = v558;
        do
        {
          v107 = v9;
          v560 = v12;
          do
          {
            v108 = *v16;
            if (v108 >= 8)
            {
              if (v568)
              {
                v109 = *v106;
              }

              else
              {
                v109 = -1;
              }

              v110 = PDAM(bswap32(*v580) >> 16, v109, v108);
              result = PDApluslDA(bswap32(*v14) >> 16, *v8, v110, HIBYTE(v110));
              *v14 = bswap32(result) >> 16;
              *v8 = BYTE3(result);
              v12 = v560;
              v104 = v544;
            }

            v16 += v578;
            v8 += v104;
            v111 = &v580[v578];
            if (v111 >= v12)
            {
              v112 = v105;
            }

            else
            {
              v112 = 0;
            }

            v106 += v568 + v112;
            v580 = &v111[v112];
            v14 += v578;
            --v107;
          }

          while (v107);
          if (v556)
          {
            v113 = &v555[v528];
            v114 = v512;
            if (v113 < v556)
            {
              v114 = 0;
            }

            v106 = &v554[v531 + v114];
            v115 = v535;
            if (v113 < v556)
            {
              v115 = 0;
            }

            v12 += 2 * v115 + 2 * v528;
            v554 += v531 + v114;
            v555 = &v113[v115];
            v580 = v555;
          }

          else
          {
            v580 += v528;
            v106 += v531;
          }

          v16 += v530;
          v14 += v529;
          v8 += v527;
          --v557;
        }

        while (v557);
      }

      else
      {
        v404 = -v37;
        v405 = -(v528 * v25);
        do
        {
          v406 = v9;
          v407 = v556;
          do
          {
            v408 = *v16;
            if (v408 >= 8)
            {
              v409 = v12;
              result = PDM(bswap32(*v580) >> 16, v408);
              v12 = v409;
              v410 = bswap32(*v14);
              v411 = (((HIWORD(v410) << 15) | HIWORD(v410)) & 0x1F07C1F) + ((result | (result << 15)) & 0x1F07C1F);
              v407 = v556;
              *v14 = __rev16((((30 * ((v411 >> 5) & 0x100401)) | (15 * ((v411 >> 5) & 0x100401)) | v411) >> 15) & 0x3E0 | ((30 * ((v411 >> 5) & 0x100401)) | (15 * ((v411 >> 5) & 0x100401)) | v411) & 0x7C1F);
            }

            v16 += v578;
            v412 = &v580[v578];
            if (v412 >= v12)
            {
              v413 = v404;
            }

            else
            {
              v413 = 0;
            }

            v580 = &v412[v413];
            v14 += v578;
            --v406;
          }

          while (v406);
          v16 += v530;
          v14 += v529;
          v414 = v555;
          v415 = &v555[v528];
          if (v415 >= v407)
          {
            v416 = v405;
          }

          else
          {
            v416 = 0;
          }

          v417 = &v415[v416];
          v418 = v12 + 2 * v416 + 2 * v528;
          if (v407)
          {
            v12 = v418;
            v414 = v417;
          }

          v555 = v414;
          if (!v407)
          {
            v417 = &v580[v528];
          }

          v580 = v417;
          --v557;
        }

        while (v557);
      }

      return result;
    case 13:
      v273 = -v37;
      v501 = -(v531 * v25);
      v520 = -(v528 * v25);
      v274 = v554;
      while (1)
      {
        v275 = v532;
        v276 = v12;
        do
        {
          v277 = *v16;
          if (v277 >= 8)
          {
            v278 = v568 ? *v274 : -1;
            result = PDAM(bswap32(*v580) >> 16, v278, v277);
            v12 = v276;
            if (result >> 27)
            {
              v279 = BYTE3(result);
              if (v558)
              {
                v280 = *v8;
                if (v280 < 8)
                {
                  goto LABEL_506;
                }
              }

              else
              {
                v280 = 255;
              }

              result = PDAmultiplyPDA(bswap32(*v14) >> 16, v280, result, v279);
              if (v558)
              {
                v279 = BYTE3(result);
                v12 = v276;
LABEL_506:
                *v14 = bswap32(result) >> 16;
                *v8 = v279;
                goto LABEL_508;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v276;
            }
          }

LABEL_508:
          v16 += v578;
          v8 += v558;
          v281 = &v580[v578];
          if (v281 >= v12)
          {
            v282 = v273;
          }

          else
          {
            v282 = 0;
          }

          v274 += v568 + v282;
          v580 = &v281[v282];
          v14 += v578;
          --v275;
        }

        while (v275);
        if (v556)
        {
          v283 = &v555[v528];
          v284 = v501;
          if (v283 < v556)
          {
            v284 = 0;
          }

          v274 = &v554[v531 + v284];
          v285 = v520;
          if (v283 < v556)
          {
            v285 = 0;
          }

          v12 += 2 * v285 + 2 * v528;
          v554 += v531 + v284;
          v555 = &v283[v285];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v274 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 14:
      v67 = -v37;
      v494 = -(v531 * v25);
      v509 = -(v528 * v25);
      v68 = v554;
      while (1)
      {
        v69 = v532;
        v70 = v12;
        do
        {
          v71 = *v16;
          if (v71 >= 8)
          {
            v72 = v568 ? *v68 : -1;
            result = PDAM(bswap32(*v580) >> 16, v72, v71);
            v12 = v70;
            if (result >> 27)
            {
              v73 = BYTE3(result);
              if (v558)
              {
                v74 = *v8;
                if (v74 < 8)
                {
                  goto LABEL_113;
                }
              }

              else
              {
                v74 = 255;
              }

              result = PDAscreenPDA(bswap32(*v14) >> 16, v74, result, v73);
              if (v558)
              {
                v73 = BYTE3(result);
                v12 = v70;
LABEL_113:
                *v14 = bswap32(result) >> 16;
                *v8 = v73;
                goto LABEL_115;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v70;
            }
          }

LABEL_115:
          v16 += v578;
          v8 += v558;
          v75 = &v580[v578];
          if (v75 >= v12)
          {
            v76 = v67;
          }

          else
          {
            v76 = 0;
          }

          v68 += v568 + v76;
          v580 = &v75[v76];
          v14 += v578;
          --v69;
        }

        while (v69);
        if (v556)
        {
          v77 = &v555[v528];
          v78 = v494;
          if (v77 < v556)
          {
            v78 = 0;
          }

          v68 = &v554[v531 + v78];
          v79 = v509;
          if (v77 < v556)
          {
            v79 = 0;
          }

          v12 += 2 * v79 + 2 * v528;
          v554 += v531 + v78;
          v555 = &v77[v79];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v68 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 15:
      v170 = -v37;
      v497 = -(v531 * v25);
      v515 = -(v528 * v25);
      v171 = v554;
      while (1)
      {
        v172 = v532;
        v173 = v12;
        do
        {
          v174 = *v16;
          if (v174 >= 8)
          {
            v175 = v568 ? *v171 : -1;
            result = PDAM(bswap32(*v580) >> 16, v175, v174);
            v12 = v173;
            if (result >> 27)
            {
              v176 = BYTE3(result);
              if (v558)
              {
                v177 = *v8;
                if (v177 < 8)
                {
                  goto LABEL_308;
                }
              }

              else
              {
                v177 = 255;
              }

              result = PDAoverlayPDA(bswap32(*v14) >> 16, v177, result, v176);
              if (v558)
              {
                v176 = BYTE3(result);
                v12 = v173;
LABEL_308:
                *v14 = bswap32(result) >> 16;
                *v8 = v176;
                goto LABEL_310;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v173;
            }
          }

LABEL_310:
          v16 += v578;
          v8 += v558;
          v178 = &v580[v578];
          if (v178 >= v12)
          {
            v179 = v170;
          }

          else
          {
            v179 = 0;
          }

          v171 += v568 + v179;
          v580 = &v178[v179];
          v14 += v578;
          --v172;
        }

        while (v172);
        if (v556)
        {
          v180 = &v555[v528];
          v181 = v497;
          if (v180 < v556)
          {
            v181 = 0;
          }

          v171 = &v554[v531 + v181];
          v182 = v515;
          if (v180 < v556)
          {
            v182 = 0;
          }

          v12 += 2 * v182 + 2 * v528;
          v554 += v531 + v181;
          v555 = &v180[v182];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v171 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 16:
      v54 = -v37;
      v493 = -(v531 * v25);
      v508 = -(v528 * v25);
      v55 = v554;
      while (1)
      {
        v56 = v532;
        v57 = v12;
        do
        {
          v58 = *v16;
          if (v58 >= 8)
          {
            v59 = v568 ? *v55 : -1;
            result = PDAM(bswap32(*v580) >> 16, v59, v58);
            v12 = v57;
            if (result >> 27)
            {
              v60 = BYTE3(result);
              if (v558)
              {
                v61 = *v8;
                if (v61 < 8)
                {
                  goto LABEL_85;
                }
              }

              else
              {
                v61 = 255;
              }

              result = PDAdarkenPDA(bswap32(*v14) >> 16, v61, result, v60);
              if (v558)
              {
                v60 = BYTE3(result);
                v12 = v57;
LABEL_85:
                *v14 = bswap32(result) >> 16;
                *v8 = v60;
                goto LABEL_87;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v57;
            }
          }

LABEL_87:
          v16 += v578;
          v8 += v558;
          v62 = &v580[v578];
          if (v62 >= v12)
          {
            v63 = v54;
          }

          else
          {
            v63 = 0;
          }

          v55 += v568 + v63;
          v580 = &v62[v63];
          v14 += v578;
          --v56;
        }

        while (v56);
        if (v556)
        {
          v64 = &v555[v528];
          v65 = v493;
          if (v64 < v556)
          {
            v65 = 0;
          }

          v55 = &v554[v531 + v65];
          v66 = v508;
          if (v64 < v556)
          {
            v66 = 0;
          }

          v12 += 2 * v66 + 2 * v528;
          v554 += v531 + v65;
          v555 = &v64[v66];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v55 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 17:
      v220 = -v37;
      v498 = -(v531 * v25);
      v517 = -(v528 * v25);
      v221 = v554;
      while (1)
      {
        v222 = v532;
        v223 = v12;
        do
        {
          v224 = *v16;
          if (v224 >= 8)
          {
            v225 = v568 ? *v221 : -1;
            result = PDAM(bswap32(*v580) >> 16, v225, v224);
            v12 = v223;
            if (result >> 27)
            {
              v226 = BYTE3(result);
              if (v558)
              {
                v227 = *v8;
                if (v227 < 8)
                {
                  goto LABEL_405;
                }
              }

              else
              {
                v227 = 255;
              }

              result = PDAlightenPDA(bswap32(*v14) >> 16, v227, result, v226);
              if (v558)
              {
                v226 = BYTE3(result);
                v12 = v223;
LABEL_405:
                *v14 = bswap32(result) >> 16;
                *v8 = v226;
                goto LABEL_407;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v223;
            }
          }

LABEL_407:
          v16 += v578;
          v8 += v558;
          v228 = &v580[v578];
          if (v228 >= v12)
          {
            v229 = v220;
          }

          else
          {
            v229 = 0;
          }

          v221 += v568 + v229;
          v580 = &v228[v229];
          v14 += v578;
          --v222;
        }

        while (v222);
        if (v556)
        {
          v230 = &v555[v528];
          v231 = v498;
          if (v230 < v556)
          {
            v231 = 0;
          }

          v221 = &v554[v531 + v231];
          v232 = v517;
          if (v230 < v556)
          {
            v232 = 0;
          }

          v12 += 2 * v232 + 2 * v528;
          v554 += v531 + v231;
          v555 = &v230[v232];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v221 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 18:
      v299 = -v37;
      v502 = -(v531 * v25);
      v522 = -(v528 * v25);
      v300 = v554;
      while (1)
      {
        v301 = v532;
        v302 = v12;
        do
        {
          v303 = *v16;
          if (v303 >= 8)
          {
            v304 = v568 ? *v300 : -1;
            result = PDAM(bswap32(*v580) >> 16, v304, v303);
            v12 = v302;
            if (result >> 27)
            {
              v305 = BYTE3(result);
              if (v558)
              {
                v306 = *v8;
                if (v306 < 8)
                {
                  goto LABEL_561;
                }
              }

              else
              {
                v306 = 255;
              }

              result = PDAcolordodgePDA(bswap32(*v14) >> 16, v306, result, v305);
              if (v558)
              {
                v305 = BYTE3(result);
                v12 = v302;
LABEL_561:
                *v14 = bswap32(result) >> 16;
                *v8 = v305;
                goto LABEL_563;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v302;
            }
          }

LABEL_563:
          v16 += v578;
          v8 += v558;
          v307 = &v580[v578];
          if (v307 >= v12)
          {
            v308 = v299;
          }

          else
          {
            v308 = 0;
          }

          v300 += v568 + v308;
          v580 = &v307[v308];
          v14 += v578;
          --v301;
        }

        while (v301);
        if (v556)
        {
          v309 = &v555[v528];
          v310 = v502;
          if (v309 < v556)
          {
            v310 = 0;
          }

          v300 = &v554[v531 + v310];
          v311 = v522;
          if (v309 < v556)
          {
            v311 = 0;
          }

          v12 += 2 * v311 + 2 * v528;
          v554 += v531 + v310;
          v555 = &v309[v311];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v300 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 19:
      v352 = -v37;
      v504 = -(v531 * v25);
      v524 = -(v528 * v25);
      v353 = v554;
      while (1)
      {
        v354 = v532;
        v355 = v12;
        do
        {
          v356 = *v16;
          if (v356 >= 8)
          {
            v357 = v568 ? *v353 : -1;
            result = PDAM(bswap32(*v580) >> 16, v357, v356);
            v12 = v355;
            if (result >> 27)
            {
              v358 = BYTE3(result);
              if (v558)
              {
                v359 = *v8;
                if (v359 < 8)
                {
                  goto LABEL_654;
                }
              }

              else
              {
                v359 = 255;
              }

              result = PDAcolorburnPDA(bswap32(*v14) >> 16, v359, result, v358);
              if (v558)
              {
                v358 = BYTE3(result);
                v12 = v355;
LABEL_654:
                *v14 = bswap32(result) >> 16;
                *v8 = v358;
                goto LABEL_656;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v355;
            }
          }

LABEL_656:
          v16 += v578;
          v8 += v558;
          v360 = &v580[v578];
          if (v360 >= v12)
          {
            v361 = v352;
          }

          else
          {
            v361 = 0;
          }

          v353 += v568 + v361;
          v580 = &v360[v361];
          v14 += v578;
          --v354;
        }

        while (v354);
        if (v556)
        {
          v362 = &v555[v528];
          v363 = v504;
          if (v362 < v556)
          {
            v363 = 0;
          }

          v353 = &v554[v531 + v363];
          v364 = v524;
          if (v362 < v556)
          {
            v364 = 0;
          }

          v12 += 2 * v364 + 2 * v528;
          v554 += v531 + v363;
          v555 = &v362[v364];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v353 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 20:
      v233 = -v37;
      v499 = -(v531 * v25);
      v518 = -(v528 * v25);
      v234 = v554;
      while (1)
      {
        v235 = v532;
        v236 = v12;
        do
        {
          v237 = *v16;
          if (v237 >= 8)
          {
            v238 = v568 ? *v234 : -1;
            result = PDAM(bswap32(*v580) >> 16, v238, v237);
            v12 = v236;
            if (result >> 27)
            {
              v239 = BYTE3(result);
              if (v558)
              {
                v240 = *v8;
                if (v240 < 8)
                {
                  goto LABEL_433;
                }
              }

              else
              {
                v240 = 255;
              }

              result = PDAsoftlightPDA(bswap32(*v14) >> 16, v240, result, v239);
              if (v558)
              {
                v239 = BYTE3(result);
                v12 = v236;
LABEL_433:
                *v14 = bswap32(result) >> 16;
                *v8 = v239;
                goto LABEL_435;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v236;
            }
          }

LABEL_435:
          v16 += v578;
          v8 += v558;
          v241 = &v580[v578];
          if (v241 >= v12)
          {
            v242 = v233;
          }

          else
          {
            v242 = 0;
          }

          v234 += v568 + v242;
          v580 = &v241[v242];
          v14 += v578;
          --v235;
        }

        while (v235);
        if (v556)
        {
          v243 = &v555[v528];
          v244 = v499;
          if (v243 < v556)
          {
            v244 = 0;
          }

          v234 = &v554[v531 + v244];
          v245 = v518;
          if (v243 < v556)
          {
            v245 = 0;
          }

          v12 += 2 * v245 + 2 * v528;
          v554 += v531 + v244;
          v555 = &v243[v245];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v234 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 21:
      v260 = -v37;
      v500 = -(v531 * v25);
      v519 = -(v528 * v25);
      v261 = v554;
      while (1)
      {
        v262 = v532;
        v263 = v12;
        do
        {
          v264 = *v16;
          if (v264 >= 8)
          {
            v265 = v568 ? *v261 : -1;
            result = PDAM(bswap32(*v580) >> 16, v265, v264);
            v12 = v263;
            if (result >> 27)
            {
              v266 = BYTE3(result);
              if (v558)
              {
                v267 = *v8;
                if (v267 < 8)
                {
                  goto LABEL_478;
                }
              }

              else
              {
                v267 = 255;
              }

              result = PDAhardlightPDA(bswap32(*v14) >> 16, v267, result, v266);
              if (v558)
              {
                v266 = BYTE3(result);
                v12 = v263;
LABEL_478:
                *v14 = bswap32(result) >> 16;
                *v8 = v266;
                goto LABEL_480;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v263;
            }
          }

LABEL_480:
          v16 += v578;
          v8 += v558;
          v268 = &v580[v578];
          if (v268 >= v12)
          {
            v269 = v260;
          }

          else
          {
            v269 = 0;
          }

          v261 += v568 + v269;
          v580 = &v268[v269];
          v14 += v578;
          --v262;
        }

        while (v262);
        if (v556)
        {
          v270 = &v555[v528];
          v271 = v500;
          if (v270 < v556)
          {
            v271 = 0;
          }

          v261 = &v554[v531 + v271];
          v272 = v519;
          if (v270 < v556)
          {
            v272 = 0;
          }

          v12 += 2 * v272 + 2 * v528;
          v554 += v531 + v271;
          v555 = &v270[v272];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v261 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 22:
      v339 = -v37;
      v503 = -(v531 * v25);
      v523 = -(v528 * v25);
      v340 = v554;
      while (1)
      {
        v341 = v532;
        v342 = v12;
        do
        {
          v343 = *v16;
          if (v343 >= 8)
          {
            v344 = v568 ? *v340 : -1;
            result = PDAM(bswap32(*v580) >> 16, v344, v343);
            v12 = v342;
            if (result >> 27)
            {
              v345 = BYTE3(result);
              if (v558)
              {
                v346 = *v8;
                if (v346 < 8)
                {
                  goto LABEL_626;
                }
              }

              else
              {
                v346 = 255;
              }

              result = PDAdifferencePDA(bswap32(*v14) >> 16, v346, result, v345);
              if (v558)
              {
                v345 = BYTE3(result);
                v12 = v342;
LABEL_626:
                *v14 = bswap32(result) >> 16;
                *v8 = v345;
                goto LABEL_628;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v342;
            }
          }

LABEL_628:
          v16 += v578;
          v8 += v558;
          v347 = &v580[v578];
          if (v347 >= v12)
          {
            v348 = v339;
          }

          else
          {
            v348 = 0;
          }

          v340 += v568 + v348;
          v580 = &v347[v348];
          v14 += v578;
          --v341;
        }

        while (v341);
        if (v556)
        {
          v349 = &v555[v528];
          v350 = v503;
          if (v349 < v556)
          {
            v350 = 0;
          }

          v340 = &v554[v531 + v350];
          v351 = v523;
          if (v349 < v556)
          {
            v351 = 0;
          }

          v12 += 2 * v351 + 2 * v528;
          v554 += v531 + v350;
          v555 = &v349[v351];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v340 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 23:
      v365 = -v37;
      v505 = -(v531 * v25);
      v525 = -(v528 * v25);
      v366 = v554;
      while (1)
      {
        v367 = v532;
        v368 = v12;
        do
        {
          v369 = *v16;
          if (v369 >= 8)
          {
            v370 = v568 ? *v366 : -1;
            result = PDAM(bswap32(*v580) >> 16, v370, v369);
            v12 = v368;
            if (result >> 27)
            {
              v371 = BYTE3(result);
              if (v558)
              {
                v372 = *v8;
                if (v372 < 8)
                {
                  goto LABEL_682;
                }
              }

              else
              {
                v372 = 255;
              }

              result = PDAexclusionPDA(bswap32(*v14) >> 16, v372, result, v371);
              if (v558)
              {
                v371 = BYTE3(result);
                v12 = v368;
LABEL_682:
                *v14 = bswap32(result) >> 16;
                *v8 = v371;
                goto LABEL_684;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v368;
            }
          }

LABEL_684:
          v16 += v578;
          v8 += v558;
          v373 = &v580[v578];
          if (v373 >= v12)
          {
            v374 = v365;
          }

          else
          {
            v374 = 0;
          }

          v366 += v568 + v374;
          v580 = &v373[v374];
          v14 += v578;
          --v367;
        }

        while (v367);
        if (v556)
        {
          v375 = &v555[v528];
          v376 = v505;
          if (v375 < v556)
          {
            v376 = 0;
          }

          v366 = &v554[v531 + v376];
          v377 = v525;
          if (v375 < v556)
          {
            v377 = 0;
          }

          v12 += 2 * v377 + 2 * v528;
          v554 += v531 + v376;
          v555 = &v375[v377];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v366 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 24:
      v143 = -v37;
      v496 = -(v531 * v25);
      v514 = -(v528 * v25);
      v144 = v554;
      while (1)
      {
        v145 = v532;
        v146 = v12;
        do
        {
          v147 = *v16;
          if (v147 >= 8)
          {
            v148 = v568 ? *v144 : -1;
            result = PDAM(bswap32(*v580) >> 16, v148, v147);
            v12 = v146;
            if (result >> 27)
            {
              v149 = BYTE3(result);
              if (v558)
              {
                v150 = *v8;
                if (v150 < 8)
                {
                  goto LABEL_254;
                }
              }

              else
              {
                v150 = 255;
              }

              result = PDAhuePDA(bswap32(*v14) >> 16, v150, result, v149);
              if (v558)
              {
                v149 = BYTE3(result);
                v12 = v146;
LABEL_254:
                *v14 = bswap32(result) >> 16;
                *v8 = v149;
                goto LABEL_256;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v146;
            }
          }

LABEL_256:
          v16 += v578;
          v8 += v558;
          v151 = &v580[v578];
          if (v151 >= v12)
          {
            v152 = v143;
          }

          else
          {
            v152 = 0;
          }

          v144 += v568 + v152;
          v580 = &v151[v152];
          v14 += v578;
          --v145;
        }

        while (v145);
        if (v556)
        {
          v153 = &v555[v528];
          v154 = v496;
          if (v153 < v556)
          {
            v154 = 0;
          }

          v144 = &v554[v531 + v154];
          v155 = v514;
          if (v153 < v556)
          {
            v155 = 0;
          }

          v12 += 2 * v155 + 2 * v528;
          v554 += v531 + v154;
          v555 = &v153[v155];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v144 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 25:
      v130 = -v37;
      v495 = -(v531 * v25);
      v513 = -(v528 * v25);
      v131 = v554;
      while (1)
      {
        v132 = v532;
        v133 = v12;
        do
        {
          v134 = *v16;
          if (v134 >= 8)
          {
            v135 = v568 ? *v131 : -1;
            result = PDAM(bswap32(*v580) >> 16, v135, v134);
            v12 = v133;
            if (result >> 27)
            {
              v136 = BYTE3(result);
              if (v558)
              {
                v137 = *v8;
                if (v137 < 8)
                {
                  goto LABEL_226;
                }
              }

              else
              {
                v137 = 255;
              }

              result = PDAsaturationPDA(bswap32(*v14) >> 16, v137, result, v136);
              if (v558)
              {
                v136 = BYTE3(result);
                v12 = v133;
LABEL_226:
                *v14 = bswap32(result) >> 16;
                *v8 = v136;
                goto LABEL_228;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v133;
            }
          }

LABEL_228:
          v16 += v578;
          v8 += v558;
          v138 = &v580[v578];
          if (v138 >= v12)
          {
            v139 = v130;
          }

          else
          {
            v139 = 0;
          }

          v131 += v568 + v139;
          v580 = &v138[v139];
          v14 += v578;
          --v132;
        }

        while (v132);
        if (v556)
        {
          v140 = &v555[v528];
          v141 = v495;
          if (v140 < v556)
          {
            v141 = 0;
          }

          v131 = &v554[v531 + v141];
          v142 = v513;
          if (v140 < v556)
          {
            v142 = 0;
          }

          v12 += 2 * v142 + 2 * v528;
          v554 += v531 + v141;
          v555 = &v140[v142];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v131 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 26:
      v378 = -v37;
      v506 = -(v531 * v25);
      v526 = -(v528 * v25);
      v379 = v554;
      while (1)
      {
        v380 = v532;
        v381 = v12;
        do
        {
          v382 = *v16;
          if (v382 >= 8)
          {
            v383 = v568 ? *v379 : -1;
            result = PDAM(bswap32(*v580) >> 16, v383, v382);
            v12 = v381;
            if (result >> 27)
            {
              v384 = BYTE3(result);
              if (v558)
              {
                v385 = *v8;
                if (v385 < 8)
                {
                  goto LABEL_710;
                }
              }

              else
              {
                v385 = 255;
              }

              result = PDAluminosityPDA(result, v384, bswap32(*v14) >> 16, v385);
              if (v558)
              {
                v384 = BYTE3(result);
                v12 = v381;
LABEL_710:
                *v14 = bswap32(result) >> 16;
                *v8 = v384;
                goto LABEL_712;
              }

              *v14 = bswap32(result) >> 16;
              v12 = v381;
            }
          }

LABEL_712:
          v16 += v578;
          v8 += v558;
          v386 = &v580[v578];
          if (v386 >= v12)
          {
            v387 = v378;
          }

          else
          {
            v387 = 0;
          }

          v379 += v568 + v387;
          v580 = &v386[v387];
          v14 += v578;
          --v380;
        }

        while (v380);
        if (v556)
        {
          v388 = &v555[v528];
          v389 = v506;
          if (v388 < v556)
          {
            v389 = 0;
          }

          v379 = &v554[v531 + v389];
          v390 = v526;
          if (v388 < v556)
          {
            v390 = 0;
          }

          v12 += 2 * v390 + 2 * v528;
          v554 += v531 + v389;
          v555 = &v388[v390];
          v580 = v555;
        }

        else
        {
          v580 += v528;
          v379 += v531;
        }

        v16 += v530;
        v14 += v529;
        v8 += v527;
        if (!--v557)
        {
          return result;
        }
      }

    case 27:
      v41 = -v37;
      v492 = -(v531 * v25);
      v507 = -(v528 * v25);
      v42 = v554;
      break;
    default:
      return result;
  }

  do
  {
    v43 = v532;
    v44 = v12;
    do
    {
      v45 = *v16;
      if (v45 >= 8)
      {
        v46 = v568 ? *v42 : -1;
        result = PDAM(bswap32(*v580) >> 16, v46, v45);
        v12 = v44;
        if (result >> 27)
        {
          v47 = BYTE3(result);
          if (v558)
          {
            v48 = *v8;
            if (v48 < 8)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v48 = 255;
          }

          result = PDAluminosityPDA(bswap32(*v14) >> 16, v48, result, v47);
          if (v558)
          {
            v47 = BYTE3(result);
            v12 = v44;
LABEL_57:
            *v14 = bswap32(result) >> 16;
            *v8 = v47;
            goto LABEL_59;
          }

          *v14 = bswap32(result) >> 16;
          v12 = v44;
        }
      }

LABEL_59:
      v16 += v578;
      v8 += v558;
      v49 = &v580[v578];
      if (v49 >= v12)
      {
        v50 = v41;
      }

      else
      {
        v50 = 0;
      }

      v42 += v568 + v50;
      v580 = &v49[v50];
      v14 += v578;
      --v43;
    }

    while (v43);
    if (v556)
    {
      v51 = &v555[v528];
      v52 = v492;
      if (v51 < v556)
      {
        v52 = 0;
      }

      v42 = &v554[v531 + v52];
      v53 = v507;
      if (v51 < v556)
      {
        v53 = 0;
      }

      v12 += 2 * v53 + 2 * v528;
      v554 += v531 + v52;
      v555 = &v51[v53];
      v580 = v555;
    }

    else
    {
      v580 += v528;
      v42 += v531;
    }

    v16 += v530;
    v14 += v529;
    v8 += v527;
    --v557;
  }

  while (v557);
  return result;
}

void *RGB555_pattern(uint64_t a1, void *a2, unsigned int a3, int a4, float *a5, int a6, float a7)
{
  v11 = *(*a1 + 64);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v15 = v13;
    if (v13 >= a7)
    {
      v15 = a7;
      if (v12 > a7)
      {
        v15 = v12;
      }
    }

    v16 = v15 * v11[2];
    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1)
    {
      if (*a5 < v12)
      {
        v47 = v12;
      }

      else
      {
        v47 = *a5;
      }

      if (*a5 <= v13)
      {
        v48 = v47;
      }

      else
      {
        v48 = v13;
      }

      v18 = (v14 + (v48 * v16));
      v19 = (v14 + (v48 * v16));
      v20 = v19;
      goto LABEL_74;
    }

    if (v17 == 4)
    {
      v30 = a5[4];
      v31 = *a5;
      v32 = a5[1];
      v33 = a5[2];
      if (v30 < v12)
      {
        v34 = v12;
      }

      else
      {
        v34 = a5[4];
      }

      if (v30 <= v13)
      {
        v35 = v34;
      }

      else
      {
        v35 = v13;
      }

      if (v31 < v12)
      {
        v36 = v12;
      }

      else
      {
        v36 = *a5;
      }

      if (v31 <= v13)
      {
        v37 = v36;
      }

      else
      {
        v37 = v13;
      }

      if (v32 < v12)
      {
        v38 = v12;
      }

      else
      {
        v38 = a5[1];
      }

      if (v32 <= v13)
      {
        v39 = v38;
      }

      else
      {
        v39 = v13;
      }

      if (v33 < v12)
      {
        v40 = v12;
      }

      else
      {
        v40 = a5[2];
      }

      if (v33 <= v13)
      {
        v41 = v40;
      }

      else
      {
        v41 = v13;
      }

      v42 = (v13 - v37) - v35;
      v43 = (v13 - v39) - v35;
      v44 = (v13 - v41) - v35;
      if (v42 >= v12)
      {
        v45 = v14 + (v42 * v16);
      }

      else
      {
        v45 = v12;
      }

      if (v43 >= v12)
      {
        v46 = v14 + (v43 * v16);
      }

      else
      {
        v46 = v12;
      }

      if (v44 >= v12)
      {
        v29 = v14 + (v44 * v16);
      }

      else
      {
        v29 = v12;
      }

      v18 = v45;
      v19 = v46;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v17 != 3)
      {
LABEL_74:
        v49 = (v14 + v16);
        if (a6 && (v18 | v49) | (v19 | v20))
        {
          *a2 = xmmword_18439C960;
          a2[2] = 0x2000000010;
          a2[6] = (v18 << 32) | (v49 << 48) | (v19 << 16) | v20;
          *(a2 + 6) = 16 * (v49 < 7936);
          if (v49 >= 7936)
          {
            v50 = 0;
          }

          else
          {
            v50 = (a2 + 6);
          }

          a2[4] = a2 + 6;
          a2[5] = v50;
        }

        else
        {
          v51 = (4 * v18 + 512) & 0x7C00 | ((v19 + 128) >> 3) & 0x3FF;
          v52 = (v20 + 128) & 0x1F00 | (((v51 >> 5) & 0x3FF) << 13);
          *a2 = xmmword_18439C970;
          *(a2 + 6) = 0;
          a2[2] = 1;
          *(a2 + 12) = v52 | (v51 >> 8) | ((v52 | (v51 >> 8)) << 16);
          a2[4] = a2 + 6;
          if (v49 > 7807)
          {
            a2[5] = 0;
          }

          else
          {
            *(a2 + 13) = 16843009 * (((v49 + 128) >> 5) & 0xF8 | ((v49 + 128) >> 10) & 7);
            a2[5] = a2 + 52;
          }
        }

        return a2;
      }

      v21 = a5[1];
      v22 = a5[2];
      if (*a5 < v12)
      {
        v23 = v12;
      }

      else
      {
        v23 = *a5;
      }

      if (*a5 <= v13)
      {
        v24 = v23;
      }

      else
      {
        v24 = v13;
      }

      if (v21 < v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = a5[1];
      }

      if (v21 <= v13)
      {
        v26 = v25;
      }

      else
      {
        v26 = v13;
      }

      if (v22 < v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = a5[2];
      }

      if (v22 <= v13)
      {
        v28 = v27;
      }

      else
      {
        v28 = v13;
      }

      v18 = (v14 + (v24 * v16));
      v19 = (v14 + (v26 * v16));
      v29 = v14 + (v28 * v16);
    }

    v20 = v29;
    goto LABEL_74;
  }

  return a2;
}

CFStringRef image_provider_copy_debug_description(uint64_t a1)
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  return create_debug_string(a1, v2, v3, v4, v5, v6, v7, v8);
}

CFStringRef image_provider_copy_format_description(uint64_t a1)
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  return create_debug_string(a1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CGImageProviderGetTypeID()
{
  if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
  {
    dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
  }

  return CGImageProviderGetTypeID_image_provider_type_id;
}

CGFloat CGImageProviderGetSize(const CGSize *a1)
{
  v1 = a1 + 1;
  if (!a1)
  {
    v1 = &CGSizeZero;
  }

  return v1->width;
}

CFTypeRef CGImageProviderRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void find_supported_options(void *key, void *value, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 8);
    if (v6)
    {
      Property = 0;
      if (key)
      {
        v8 = *(v6 + 120);
        if (v8)
        {
          Property = CGPropertiesGetProperty(v8, key);
        }
      }
    }

    else
    {
      Property = 0;
    }

    if (Property == *MEMORY[0x1E695E4D0])
    {
      *a3 = 1;
      v9 = *(a3 + 16);

      CFDictionarySetValue(v9, key, value);
    }
  }
}

uint64_t copy_with_options_copy_block_set_with_options(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (*(a1 + 160) == 1)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        v6 = *(a1 + 168);
        v7 = CFGetTypeID(MutableCopy);
        if (v7 == CFDictionaryGetTypeID())
        {
          IsMutable = _CFDictionaryIsMutable();
          if (v6)
          {
            if (IsMutable)
            {
              v9 = CFGetTypeID(v5);
              if (v9 == CFDictionaryGetTypeID())
              {
                CFDictionaryApplyFunction(v5, add_keys_and_values, v6);
              }
            }
          }
        }

        v10 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 152), v5);
        CFRelease(v5);
        return v10;
      }

      v12 = *(a1 + 152);
      v13 = 0;
    }

    else
    {
      v13 = *(a1 + 168);
      v12 = *(a1 + 152);
    }
  }

  else
  {
    v12 = *(a1 + 152);
    v13 = a3;
  }

  return CGImageProviderCopyImageBlockSetWithOptions(v12, v13);
}

void copy_with_options_release_info(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t CGImageProviderGetComponentType(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CGImageProviderGetBitmapInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t CGImageProviderGetPixelSize(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void CGImageProviderRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGImageProviderGetInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t CGImageProviderGetCallbackVersion(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t CGImageProviderGetAlphaInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 36) & 0x1F;
  }

  return result;
}

uint64_t CGImageProviderCopyIOSurfaceSet(uint64_t a1)
{
  if (a1 && *(a1 + 64) == 3 && (v1 = *(a1 + 88)) != 0)
  {
    return v1(*(a1 + 56));
  }

  else
  {
    return 0;
  }
}

uint64_t CGImageProviderSetContentAverageLightLevelNits(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

uint64_t CGImageProviderGetContentAverageLightLevelNits(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 136);
  }

  else
  {
    LOWORD(v1) = 0;
  }

  return v1;
}

uint64_t CGImageProviderSetContentAverageLightLevel(uint64_t result, unsigned __int16 a2)
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

uint64_t CGImageProviderGetContentAverageLightLevel(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t CPPDFStyleEqual(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if ((a3 & 0x800) != 0 && *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }

    if ((a3 & 0x400) != 0)
    {
      v7 = *(a1 + 64);
      if (v7 != *(a2 + 64))
      {
        result = [v7 isSameFontAs:?];
        if (!result)
        {
          return result;
        }
      }
    }

    if (a3)
    {
      result = CGColorEqualToColor(*a1, *a2);
      if (!result)
      {
        return result;
      }
    }

    if ((a3 & 2) != 0 && *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    if ((a3 & 4) == 0 || (result = CGColorEqualToColor(*(a1 + 16), *(a2 + 16)), result))
    {
      if ((a3 & 8) != 0 && *(a1 + 24) != *(a2 + 24) || (a3 & 0x10) != 0 && *(a1 + 32) != *(a2 + 32) || (a3 & 0x20) != 0 && *(a1 + 40) != *(a2 + 40) || (a3 & 0x200) != 0 && *(a1 + 48) != *(a2 + 48) || (a3 & 0x40) != 0 && *(a1 + 49) != *(a2 + 49) || (a3 & 0x100) != 0 && *(a1 + 56) != *(a2 + 56) || (a3 & 0x1000) != 0 && *(a1 + 80) != *(a2 + 80) || (a3 & 0x2000) != 0 && *(a1 + 88) != *(a2 + 88))
      {
        return 0;
      }

      if ((a3 & 0x4000) == 0)
      {
        return 1;
      }

      result = CGColorEqualToColor(*(a1 + 96), *(a2 + 96));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t hasConsistentSpacing(uint64_t a1, unsigned int *a2, void *a3, int *a4)
{
  v4 = *a4 | a2[3];
  *a4 = v4;
  v5 = v4 & 0x45;
  v6 = v4 & 0x8A;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    return 0;
  }

  if ((*(a1 + 12) & 0xAA) == 0 && (a2[3] & 0x55) == 0)
  {
    return 1;
  }

  v10 = *(a1 + 4);
  if (!v10)
  {
    return 1;
  }

  if (!a2[1])
  {
    return 1;
  }

  v11 = [a3 charAtIndex:(v10 + *a1 - 1)];
  v12 = [a3 charAtIndex:*a2];
  v13 = *(v11 + 160);
  v14 = *(v12 + 160);
  if (v13 == v14)
  {
    return 1;
  }

  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  v17 = *(v13 + 64);
  if (v17 == *(v14 + 64))
  {
    return 1;
  }

  result = [v17 isSameFontAs:?];
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t markSplitByGuide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8) >= 2 && (isSplitByStripArray(a1, a2, *a4, 1) || isSplitByStripArray(a1, a2, *(a4 + 8), 0) || isSplitByStripArray(a1, a2, *(a4 + 16), 0) || (*(a1 + 12) & 0xA) != 0 || (*(a2 + 12) & 5) != 0))
  {
    *(a4 + 24) = a2;
  }

  return 1;
}

BOOL isSplitByStripArray(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = [a3 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 1;
    size = CGRectNull.size;
    origin = CGRectNull.origin;
    while (1)
    {
      v19 = origin;
      v20 = size;
      [objc_msgSend(a3 objectAtIndex:{v10, size, origin), "getValue:", &v19}];
      if (v19.x + v20.width <= *(a2 + 16) && *(a1 + 16) + *(a1 + 32) <= v19.x)
      {
        v12 = *(a1 + 24);
        v13 = *(a2 + 24);
        if (v19.y <= fmax(v12 + *(a1 + 40), v13 + *(a2 + 40)) && v19.y + v20.height >= fmin(v12, v13))
        {
          break;
        }
      }

      v11 = ++v10 < v9;
      if (v9 == v10)
      {
        return 0;
      }
    }

    if (a4)
    {
      v15 = 128;
    }

    else
    {
      v15 = 32;
    }

    if (a4)
    {
      v16 = 64;
    }

    else
    {
      v16 = 16;
    }

    *(a1 + 12) |= v15;
    *(a2 + 12) |= v16;
  }

  else
  {
    return 0;
  }

  return v11;
}

BOOL isSplitByGuide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) < 2)
  {
    return 0;
  }

  result = canSplitWithoutNarrowColumn(a1, a2, (a3 + 24));
  if (result && (isSplitByStripArray(a1, a2, *a3, 1) || isSplitByStripArray(a1, a2, *(a3 + 8), 0) || (result = isSplitByStripArray(a1, a2, *(a3 + 16), 0))))
  {
    *(a3 + 24) = a2;
    return 1;
  }

  return result;
}

BOOL canSplitWithoutNarrowColumn(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 12) & 5) != 0 || *a3 == a1)
  {
    return 0;
  }

  v4 = *(a2 + 12);
  v5 = *(a1 + 8) > *(a2 + 8) && (*(a1 + 12) & 8 | v4 & 4) == 0;
  return !v5 && (v4 & 0xA) == 0 && a3[1] != a2;
}

BOOL isAlignedWithGuide(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a1 + 12) & 0xA) == 0 && (*(a2 + 12) & 5) == 0)
  {
    return 0;
  }

  result = canSplitWithoutNarrowColumn(a1, a2, a3);
  if (result)
  {
    *a3 = a2;
    return 1;
  }

  return result;
}

uint64_t accumulateRightGuideIntersections(int a1, double *a2, double *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_19:
    __assert_rtn("accumulateRightGuideIntersections", "CPGuideFinder.m", 178, "wordInfo1");
  }

  v8 = a2;
  v9 = (a6 + 8);
  v10 = a1 + 1;
  while (1)
  {
    v11 = *(v8 + 1);
    if (!v11)
    {
      return 1;
    }

    v12 = a3;
    v13 = a5;
    v14 = [a4 charAtIndex:*v8];
    v15 = [a4 charAtIndex:v11 + *v8 - 1];
    v16 = *(v14 + 80);
    v17 = *(v15 + 80) + *(v15 + 144);
    v18 = *(a6 + 32);
    if (v17 <= v18)
    {
      v19 = a6;
      if (v17 < *(a6 + 24))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = v9;
      if (v16 > v18)
      {
        goto LABEL_17;
      }
    }

    v20 = *v19;
    *v19 += 56;
    if (v20)
    {
      *v20 = v16;
      *(v20 + 8) = v17;
      v21 = v8[3];
      v22 = v21 + v8[5];
      *(v20 + 16) = v21;
      *(v20 + 24) = v22;
      *(v20 + 32) = 0;
      v23 = *(v15 + 160);
      *(v20 + 40) = v8 + 12;
      *(v20 + 48) = v23;
      v24 = *(v8 + 2);
      if (v24 == -1 || v24 >= 2)
      {
        *(v20 + 32) = 1;
        v25 = 3;
        if (!v12)
        {
LABEL_16:
          *(v20 + 32) = v25;
          goto LABEL_17;
        }
      }

      else
      {
        v25 = 2;
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      v26 = *(v12 + 2);
      if (v26 != -1 && v26 < 2)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_17:
    if (++v10 != *(a6 + 16))
    {
      return 1;
    }

    a5 = 0;
    a3 = 0;
    a4 = v13;
    v8 = v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }
}

uint64_t accumulateLeftGuideIntersections(int a1, double *a2, double *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_19:
    __assert_rtn("accumulateLeftGuideIntersections", "CPGuideFinder.m", 129, "wordInfo1");
  }

  v8 = a2;
  v9 = (a6 + 8);
  v10 = a1 + 1;
  while (1)
  {
    v11 = *(v8 + 1);
    if (!v11)
    {
      return 1;
    }

    v12 = a3;
    v13 = a5;
    v14 = [a4 charAtIndex:*v8];
    v15 = [a4 charAtIndex:v11 + *v8 - 1];
    v16 = *(v14 + 80);
    v17 = *(v15 + 80) + *(v15 + 144);
    v18 = *(a6 + 40);
    if (v16 >= v18)
    {
      v19 = a6;
      if (v16 > *(a6 + 48))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = v9;
      if (v17 < v18)
      {
        goto LABEL_17;
      }
    }

    v20 = *v19;
    *v19 += 56;
    if (v20)
    {
      *v20 = v16;
      *(v20 + 8) = v17;
      v21 = v8[3];
      v22 = v21 + v8[5];
      *(v20 + 16) = v21;
      *(v20 + 24) = v22;
      *(v20 + 32) = 0;
      v23 = *(v14 + 160);
      *(v20 + 40) = v8 + 12;
      *(v20 + 48) = v23;
      v24 = *(v8 + 2);
      if (v24 == -1 || v24 >= 2)
      {
        *(v20 + 32) = 1;
        v25 = 3;
        if (!v12)
        {
LABEL_16:
          *(v20 + 32) = v25;
          goto LABEL_17;
        }
      }

      else
      {
        v25 = 2;
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      v26 = *(v12 + 2);
      if (v26 != -1 && v26 < 2)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_17:
    if (++v10 != *(a6 + 16))
    {
      return 1;
    }

    a5 = 0;
    a3 = 0;
    a4 = v13;
    v8 = v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }
}

uint64_t accumulateGutterIntersections(int a1, double *a2, double *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_23:
    __assert_rtn("accumulateGutterIntersections", "CPGuideFinder.m", 64, "wordInfo1");
  }

  v8 = a2;
  v9 = (a6 + 8);
  v10 = a1 + 1;
  while (1)
  {
    v11 = *(v8 + 1);
    if (!v11)
    {
      return 1;
    }

    v12 = a3;
    v13 = a5;
    v14 = [a4 charAtIndex:*v8];
    v15 = [a4 charAtIndex:v11 + *v8 - 1];
    v16 = *(v14 + 80);
    v17 = *(v15 + 80) + *(v15 + 144);
    v18 = *(a6 + 32);
    if (v16 >= v18)
    {
      if (v16 < *(a6 + 40))
      {
        v19 = v9;
        goto LABEL_13;
      }

      v19 = a6;
      if (v16 <= *(a6 + 48))
      {
        goto LABEL_13;
      }
    }

    else if (v17 >= *(a6 + 24))
    {
      if (v17 <= v18)
      {
        v19 = a6;
      }

      else
      {
        v19 = v9;
      }

      v14 = v15;
LABEL_13:
      v20 = *v19;
      *v19 += 56;
      v21 = *(v14 + 160);
      *v20 = v16;
      *(v20 + 8) = v17;
      v22 = v8[3];
      v23 = v22 + v8[5];
      *(v20 + 16) = v22;
      *(v20 + 24) = v23;
      *(v20 + 32) = 0;
      *(v20 + 40) = v8 + 12;
      *(v20 + 48) = v21;
      v24 = *(v8 + 2);
      if (v24 == -1 || v24 >= 2)
      {
        *(v20 + 32) = 1;
        v25 = 3;
        if (!v12)
        {
LABEL_20:
          *(v20 + 32) = v25;
          goto LABEL_21;
        }
      }

      else
      {
        v25 = 2;
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      v26 = *(v12 + 2);
      if (v26 != -1 && v26 < 2)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_21:
    if (++v10 != *(a6 + 16))
    {
      return 1;
    }

    a5 = 0;
    a3 = 0;
    a4 = v13;
    v8 = v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }
}

uint64_t compareWordExtentBottomAscendingLeftDescending(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  return *a1 < *a2;
}

uint64_t accumulateWordAlignmentData(unsigned int a1, unsigned int *a2, void *a3, void *a4)
{
  v4 = a2[1];
  if (v4)
  {
    v9 = [a3 charAtIndex:*a2];
    v10 = [a3 charAtIndex:v4 + *a2 - 1];
    v11 = a4[1];
    *(*a4 + 8 * a1) = *(v9 + 80);
    *(v11 + 8 * a1) = *(v10 + 80) + *(v10 + 144);
    v12 = a4[3];
    *(a4[2] + 8 * a1) = *(*(v9 + 160) + 72);
    *(v12 + 8 * a1) = *(*(v10 + 160) + 72);
  }

  return 1;
}

CGDataProviderRef CGDataProviderCreateWithSwappedProvider(CGDataProviderRef provider, int a2)
{
  if (!provider)
  {
    return provider;
  }

  v3 = provider;
  provider = 0;
  if (a2 > 3)
  {
    if (a2 != 4 && a2 != 8)
    {
      return provider;
    }

LABEL_8:
    *&callbacks.version = 0;
    v4 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
    *v4 = a2;
    CGDataProviderRetain(v3);
    v4[1] = v3;
    v4[2] = 0;
    callbacks.getBytes = get_swapped_bytes;
    callbacks.skipForward = skip_swapped_bytes;
    callbacks.rewind = rewind_swapped_bytes;
    callbacks.releaseInfo = release_swap_info;
    return CGDataProviderCreateSequential(v4, &callbacks);
  }

  if (a2 == 1)
  {
    return CGDataProviderRetain(v3);
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }

  return provider;
}

void release_swap_info(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CGAccessSessionRelease(v2);
    *(a1 + 16) = 0;
  }

  CGDataProviderRelease(*(a1 + 8));

  free(a1);
}

void rewind_swapped_bytes(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CGAccessSessionRelease(v2);
    *(a1 + 16) = 0;
  }
}

size_t skip_swapped_bytes(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = CGAccessSessionCreate(*(a1 + 8));
    *(a1 + 16) = v4;
  }

  return CGAccessSessionSkipForward(v4, a2);
}

unint64_t get_swapped_bytes(int *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 2);
  if (!v11)
  {
    v11 = CGAccessSessionCreate(*(a1 + 1));
    *(a1 + 2) = v11;
  }

  result = CGAccessSessionGetBytes(v11, a2->i8, a3, a4, a5, a6, a7, a8);
  if (result < 8)
  {
    v14 = result;
  }

  else
  {
    v13 = *a1;
    v14 = (result + v13 - 1) & -v13;
    v15.i64[1] = 0xF0E0D0C0B0A0908;
    v16 = veorq_s8(vdupq_n_s8(v13 - 1), xmmword_18439C980);
    if (v14 >= 0x20)
    {
      do
      {
        v15 = vqtbl1q_s8(a2[1], v16);
        *a2 = vqtbl1q_s8(*a2, v16);
        a2[1] = v15;
        a2 += 2;
        v14 -= 32;
      }

      while (v14 > 0x1F);
    }

    if (v14 >= 8)
    {
      do
      {
        v15.i64[0] = a2->i64[0];
        *a2->i8 = vqtbl1_s8(v15, *v16.i8);
        a2 = (a2 + 8);
        v14 -= 8;
      }

      while (v14 > 7);
    }
  }

  v17 = *a1;
  if (*a1 == 2)
  {
    if (v14)
    {
      for (i = 0; i < v14; i += 2)
      {
        a2->i16[i / 2] = bswap32(a2->u16[i / 2]) >> 16;
      }
    }
  }

  else if (v17 == 4)
  {
    if (v14)
    {
      for (j = 0; j < v14; j += 4)
      {
        a2->i32[j / 4] = bswap32(a2->u32[j / 4]);
      }
    }
  }

  else
  {
    if (v17 != 8)
    {
      abort();
    }

    if (v14)
    {
      a2->i64[0] = bswap64(a2->i64[0]);
    }
  }

  return result;
}

BOOL CPOrdinalStateII(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 == 105)
  {
    ++*(a1 + 1);
    *(a1 + 1) = CPOrdinalStateDoneI;
  }

  return v1 == 105;
}

uint64_t CPOrdinalStateI(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = CPOrdinalStateII;
  switch(v1)
  {
    case 'i':
      v3 = 1;
      goto LABEL_7;
    case 'x':
      v2 = CPOrdinalStateDoneI;
      v3 = 8;
      goto LABEL_7;
    case 'v':
      v2 = CPOrdinalStateDoneI;
      v3 = 3;
LABEL_7:
      *(a1 + 1) += v3;
      *(a1 + 1) = v2;
      return 1;
  }

  return 0;
}

BOOL CPOrdinalStateVI(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 == 105)
  {
    ++*(a1 + 1);
    *(a1 + 1) = CPOrdinalStateII;
  }

  return v1 == 105;
}

BOOL CPOrdinalStateV(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 == 105)
  {
    ++*(a1 + 1);
    *(a1 + 1) = CPOrdinalStateVI;
  }

  return v1 == 105;
}

uint64_t CPOrdinalStateDoneX(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = CPOrdinalStateI;
  if (v1 == 105)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v1 == 118)
  {
    v2 = CPOrdinalStateV;
    v3 = 5;
LABEL_5:
    *(a1 + 1) += v3;
    *(a1 + 1) = v2;
    return 1;
  }

  return 0;
}

uint64_t CPOrdinalStateXX(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = CPOrdinalStateI;
  switch(v1)
  {
    case 'i':
      v3 = 1;
      goto LABEL_7;
    case 'x':
      v2 = CPOrdinalStateDoneX;
      v3 = 10;
      goto LABEL_7;
    case 'v':
      v2 = CPOrdinalStateV;
      v3 = 5;
LABEL_7:
      *(a1 + 1) += v3;
      *(a1 + 1) = v2;
      return 1;
  }

  return 0;
}

uint64_t CPOrdinalStateX(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    if (v2 == 99)
    {
      v3 = CPOrdinalStateDoneX;
      v4 = 80;
      goto LABEL_12;
    }

    if (v2 == 105)
    {
      v4 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 'l':
        v3 = CPOrdinalStateDoneX;
        v4 = 30;
        goto LABEL_12;
      case 'x':
        v3 = CPOrdinalStateXX;
        v4 = 10;
        goto LABEL_12;
      case 'v':
        v3 = CPOrdinalStateV;
        v4 = 5;
LABEL_12:
        *(a1 + 1) += v4;
        *(a1 + 1) = v3;
        return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateLX(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = CPOrdinalStateI;
  switch(v1)
  {
    case 'i':
      v3 = 1;
      goto LABEL_7;
    case 'x':
      v2 = CPOrdinalStateXX;
      v3 = 10;
      goto LABEL_7;
    case 'v':
      v2 = CPOrdinalStateV;
      v3 = 5;
LABEL_7:
      *(a1 + 1) += v3;
      *(a1 + 1) = v2;
      return 1;
  }

  return 0;
}

uint64_t CPOrdinalStateL(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = CPOrdinalStateI;
  switch(v1)
  {
    case 'i':
      v3 = 1;
      goto LABEL_7;
    case 'x':
      v2 = CPOrdinalStateLX;
      v3 = 10;
      goto LABEL_7;
    case 'v':
      v2 = CPOrdinalStateV;
      v3 = 5;
LABEL_7:
      *(a1 + 1) += v3;
      *(a1 + 1) = v2;
      return 1;
  }

  return 0;
}

uint64_t CPOrdinalStateDoneC(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 > 0x75)
  {
    if (v2 == 120)
    {
      v3 = CPOrdinalStateX;
      v4 = 10;
      goto LABEL_10;
    }

    if (v2 == 118)
    {
      v3 = CPOrdinalStateV;
      v4 = 5;
      goto LABEL_10;
    }
  }

  else
  {
    if (v2 == 105)
    {
      v4 = 1;
      goto LABEL_10;
    }

    if (v2 == 108)
    {
      v3 = CPOrdinalStateL;
      v4 = 50;
LABEL_10:
      *(a1 + 1) += v4;
      *(a1 + 1) = v3;
      return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateCC(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    if (v2 == 99)
    {
      v3 = CPOrdinalStateDoneC;
      v4 = 100;
      goto LABEL_12;
    }

    if (v2 == 105)
    {
      v4 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 'l':
        v3 = CPOrdinalStateL;
        v4 = 50;
        goto LABEL_12;
      case 'x':
        v3 = CPOrdinalStateX;
        v4 = 10;
        goto LABEL_12;
      case 'v':
        v3 = CPOrdinalStateV;
        v4 = 5;
LABEL_12:
        *(a1 + 1) += v4;
        *(a1 + 1) = v3;
        return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateC(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    switch(v2)
    {
      case 'c':
        v3 = CPOrdinalStateCC;
        v4 = 100;
        goto LABEL_17;
      case 'd':
        v3 = CPOrdinalStateDoneC;
        v4 = 300;
        goto LABEL_17;
      case 'i':
        v4 = 1;
        goto LABEL_17;
    }
  }

  else if (*a1 > 0x75u)
  {
    if (v2 == 120)
    {
      v3 = CPOrdinalStateX;
      v4 = 10;
      goto LABEL_17;
    }

    if (v2 == 118)
    {
      v3 = CPOrdinalStateV;
      v4 = 5;
      goto LABEL_17;
    }
  }

  else
  {
    if (v2 == 108)
    {
      v3 = CPOrdinalStateL;
      v4 = 50;
      goto LABEL_17;
    }

    if (v2 == 109)
    {
      v3 = CPOrdinalStateDoneC;
      v4 = 800;
LABEL_17:
      *(a1 + 1) += v4;
      *(a1 + 1) = v3;
      return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateDC(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    if (v2 == 99)
    {
      v3 = CPOrdinalStateCC;
      v4 = 100;
      goto LABEL_12;
    }

    if (v2 == 105)
    {
      v4 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 'l':
        v3 = CPOrdinalStateL;
        v4 = 50;
        goto LABEL_12;
      case 'x':
        v3 = CPOrdinalStateX;
        v4 = 10;
        goto LABEL_12;
      case 'v':
        v3 = CPOrdinalStateV;
        v4 = 5;
LABEL_12:
        *(a1 + 1) += v4;
        *(a1 + 1) = v3;
        return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateD(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    if (v2 == 99)
    {
      v3 = CPOrdinalStateDC;
      v4 = 100;
      goto LABEL_12;
    }

    if (v2 == 105)
    {
      v4 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 'l':
        v3 = CPOrdinalStateL;
        v4 = 50;
        goto LABEL_12;
      case 'x':
        v3 = CPOrdinalStateX;
        v4 = 10;
        goto LABEL_12;
      case 'v':
        v3 = CPOrdinalStateV;
        v4 = 5;
LABEL_12:
        *(a1 + 1) += v4;
        *(a1 + 1) = v3;
        return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateDoneM(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 > 0x6B)
  {
    switch(v2)
    {
      case 'l':
        v3 = CPOrdinalStateL;
        v4 = 50;
        goto LABEL_14;
      case 'x':
        v3 = CPOrdinalStateX;
        v4 = 10;
        goto LABEL_14;
      case 'v':
        v3 = CPOrdinalStateV;
        v4 = 5;
        goto LABEL_14;
    }
  }

  else
  {
    switch(v2)
    {
      case 'c':
        v3 = CPOrdinalStateC;
        v4 = 100;
        goto LABEL_14;
      case 'd':
        v3 = CPOrdinalStateD;
        v4 = 500;
        goto LABEL_14;
      case 'i':
        v4 = 1;
LABEL_14:
        *(a1 + 1) += v4;
        *(a1 + 1) = v3;
        return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateMM(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    switch(v2)
    {
      case 'c':
        v3 = CPOrdinalStateC;
        v4 = 100;
        goto LABEL_17;
      case 'd':
        v3 = CPOrdinalStateD;
        v4 = 500;
        goto LABEL_17;
      case 'i':
        v4 = 1;
        goto LABEL_17;
    }
  }

  else if (*a1 > 0x75u)
  {
    if (v2 == 120)
    {
      v3 = CPOrdinalStateX;
      v4 = 10;
      goto LABEL_17;
    }

    if (v2 == 118)
    {
      v3 = CPOrdinalStateV;
      v4 = 5;
      goto LABEL_17;
    }
  }

  else
  {
    if (v2 == 108)
    {
      v3 = CPOrdinalStateL;
      v4 = 50;
      goto LABEL_17;
    }

    if (v2 == 109)
    {
      v3 = CPOrdinalStateDoneM;
      v4 = 1000;
LABEL_17:
      *(a1 + 1) += v4;
      *(a1 + 1) = v3;
      return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateM(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    switch(v2)
    {
      case 'c':
        v3 = CPOrdinalStateC;
        v4 = 100;
        goto LABEL_17;
      case 'd':
        v3 = CPOrdinalStateD;
        v4 = 500;
        goto LABEL_17;
      case 'i':
        v4 = 1;
        goto LABEL_17;
    }
  }

  else if (*a1 > 0x75u)
  {
    if (v2 == 120)
    {
      v3 = CPOrdinalStateX;
      v4 = 10;
      goto LABEL_17;
    }

    if (v2 == 118)
    {
      v3 = CPOrdinalStateV;
      v4 = 5;
      goto LABEL_17;
    }
  }

  else
  {
    if (v2 == 108)
    {
      v3 = CPOrdinalStateL;
      v4 = 50;
      goto LABEL_17;
    }

    if (v2 == 109)
    {
      v3 = CPOrdinalStateMM;
      v4 = 1000;
LABEL_17:
      *(a1 + 1) += v4;
      *(a1 + 1) = v3;
      return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalStateLowerRoman(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = CPOrdinalStateI;
  if (v2 <= 0x6B)
  {
    switch(v2)
    {
      case 'c':
        v3 = CPOrdinalStateC;
        v4 = 100;
        goto LABEL_17;
      case 'd':
        v3 = CPOrdinalStateD;
        v4 = 500;
        goto LABEL_17;
      case 'i':
        v4 = 1;
        goto LABEL_17;
    }
  }

  else if (*a1 > 0x75u)
  {
    if (v2 == 120)
    {
      v3 = CPOrdinalStateX;
      v4 = 10;
      goto LABEL_17;
    }

    if (v2 == 118)
    {
      v3 = CPOrdinalStateV;
      v4 = 5;
      goto LABEL_17;
    }
  }

  else
  {
    if (v2 == 108)
    {
      v3 = CPOrdinalStateL;
      v4 = 50;
      goto LABEL_17;
    }

    if (v2 == 109)
    {
      v3 = CPOrdinalStateM;
      v4 = 1000;
LABEL_17:
      *(a1 + 1) += v4;
      *(a1 + 1) = v3;
      return 1;
    }
  }

  return v1;
}

uint64_t CPOrdinalLexerConvertFromBase(const __CFString *a1, unsigned int *a2, unsigned int a3, unsigned int a4, int a5)
{
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v11 = Length;
  v12 = 0;
  v13 = 0;
  v14 = a5 - a3;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v13);
    result = 0;
    if (CharacterAtIndex < a3 || CharacterAtIndex > a4)
    {
      break;
    }

    v12 = v14 + v12 * (a4 - a3 + 1) + CharacterAtIndex;
    if (v11 == ++v13)
    {
      if (a2)
      {
        *a2 = v12;
      }

      return 1;
    }
  }

  return result;
}

uint64_t CPOrdinalLexerGetCharacterType(int a1)
{
  if ((a1 - 48) > 9)
  {
    if ((a1 - 945) >= 0x19)
    {
      v2 = 8 * ((a1 - 913) < 0x19);
    }

    else
    {
      v2 = 7;
    }

    if (((1 << (a1 - 67)) & 0x280643) != 0)
    {
      v3 = 4;
    }

    else
    {
      v3 = 6;
    }

    if ((a1 - 67) <= 0x15)
    {
      v4 = v3;
    }

    else
    {
      v4 = 6;
    }

    if ((a1 - 65) <= 0x19)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    if (((1 << (a1 - 99)) & 0x280643) != 0)
    {
      v6 = 3;
    }

    else
    {
      v6 = 5;
    }

    if ((a1 - 99) <= 0x15)
    {
      v7 = v6;
    }

    else
    {
      v7 = 5;
    }

    if ((a1 - 97) <= 0x19)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else if (a1 == 48)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CPOrdinalLexerStringToInt(const __CFString *a1, unsigned int *a2)
{
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
LABEL_17:
    CharacterType = 0;
  }

  else
  {
    v5 = Length;
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
    CharacterType = CPOrdinalLexerGetCharacterType(CharacterAtIndex);
    if (CharacterType && v5 != 1)
    {
      for (i = 1; v5 != i; ++i)
      {
        v9 = CFStringGetCharacterAtIndex(a1, i);
        if (((*(&CPOrdinalLexerTestCharacterType + CharacterType))() & 1) == 0)
        {
          if (CharacterType == 2)
          {
            if ((v9 - 48) > 9)
            {
              goto LABEL_17;
            }

            CharacterType = 2;
          }

          else if (CharacterType == 4)
          {
            if ((v9 - 65) >= 0x1A)
            {
              goto LABEL_17;
            }

            CharacterType = 6;
          }

          else
          {
            if (CharacterType != 3 || (v9 - 97) >= 0x1A)
            {
              goto LABEL_17;
            }

            CharacterType = 5;
          }
        }
      }
    }
  }

  if ((CPOrdinalLexerTypedStringToInt(a1, CharacterType, a2) & 1) == 0)
  {
    if (CharacterType == 3)
    {
      if (CPOrdinalLexerConvertFromBase(a1, a2, 0x61u, 0x7Au, 1))
      {
        return CharacterType;
      }

      return 0;
    }

    if (CharacterType != 4 || (CPOrdinalLexerConvertFromBase(a1, a2, 0x41u, 0x5Au, 1) & 1) == 0)
    {
      return 0;
    }
  }

  return CharacterType;
}

uint64_t CPOrdinalLexerTypedStringToInt(CFStringRef theString, int a2, unsigned int *a3)
{
  result = 0;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        v9 = theString;
        v10 = a3;
        v11 = 945;
        v12 = 969;
      }

      else
      {
        if (a2 != 8)
        {
          return result;
        }

        v9 = theString;
        v10 = a3;
        v11 = 913;
        v12 = 937;
      }
    }

    else
    {
      v9 = theString;
      if (a2 == 5)
      {
        v10 = a3;
        v11 = 97;
        v12 = 122;
      }

      else
      {
        v10 = a3;
        v11 = 65;
        v12 = 90;
      }
    }

    v13 = 1;
    goto LABEL_20;
  }

  if ((a2 - 1) < 2)
  {
    v9 = theString;
    v10 = a3;
    v11 = 48;
    v12 = 57;
    v13 = 0;
LABEL_20:

    return CPOrdinalLexerConvertFromBase(v9, v10, v11, v12, v13);
  }

  if (a2 == 3)
  {
    v17 = xmmword_1EF238BA8;
    Length = CFStringGetLength(theString);
    if (Length >= 1)
    {
      v15 = Length;
      v16 = 0;
      while (1)
      {
        LOWORD(v17) = CFStringGetCharacterAtIndex(theString, v16);
        if (((*(&v17 + 1))(&v17) & 1) == 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
LABEL_27:
          if (a3)
          {
            *a3 = DWORD1(v17);
          }

          return 1;
        }
      }
    }
  }

  else
  {
    if (a2 != 4)
    {
      return result;
    }

    v17 = xmmword_1EF238BA8;
    v6 = CFStringGetLength(theString);
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        LOWORD(v17) = CFStringGetCharacterAtIndex(theString, v8) + 32;
        if (((*(&v17 + 1))(&v17) & 1) == 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return 0;
}

void type4_release(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    free(*(a1 + 24));
    evaluation_release(*(a1 + 48));
    evaluation_release(*(a1 + 40));
    type4_program_release(*(a1 + 32));

    free(a1);
  }
}

_DWORD *evaluation_create(void *a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x1080040C4643742uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v4 = malloc_type_malloc(8 * *a1, 0x100004000313F17uLL);
    *(v3 + 1) = v4;
    if (v4 && (v5 = malloc_type_malloc(8 * a1[2], 0x100004000313F17uLL), (*(v3 + 2) = v5) != 0))
    {
      v6 = v5;
      v7 = *(v3 + 1);
      if (*a1)
      {
        bzero(*(v3 + 1), 8 * *a1);
      }

      evaluate(a1, v7, v6);
    }

    else
    {
      evaluation_release(v3);
      return 0;
    }
  }

  return v3;
}

__CFDictionary *copy_pdf_description(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (Mutable)
  {
    CGCFDictionarySetInteger(Mutable, @"/FunctionType", 4);
    v4 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v4)
    {
      v5 = v4;
      if ((*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = 0;
        do
        {
          CGCFArrayAppendCGFloat(v5, *(a1[1] + 8 * v6++));
        }

        while (v6 < 2 * *a1);
      }

      CFDictionarySetValue(v3, @"/Domain", v5);
      CFRelease(v5);
      v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (v7)
      {
        v8 = v7;
        if ((a1[2] & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = 0;
          do
          {
            CGCFArrayAppendCGFloat(v8, *(a1[3] + 8 * v9++));
          }

          while (v9 < 2 * a1[2]);
        }

        CFDictionarySetValue(v3, @"/Range", v8);
        CFRelease(v8);
        v10 = a1[4];
        program_string_length = get_program_string_length(v10);
        v12 = malloc_type_malloc(program_string_length + 1, 0xB6D4926FuLL);
        if (v12)
        {
          v13 = v12;
          v14 = print_program(v12, v10);
          if (v14 > program_string_length)
          {
            _CGHandleAssert("type4_program_create_string", 237, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Functions/type4-program.c", "size <= length", "size of program (%lu) overflowed length (%lu)", v15, v16, v17, v14);
          }

          v18 = strlen(v13);
          v19 = CFDataCreate(*MEMORY[0x1E695E480], v13, v18);
          if (v19)
          {
            v20 = v19;
            CFDictionarySetValue(v3, @"/%Stream", v19);
            CFRelease(v20);
            free(v13);
            return v3;
          }

          free(v13);
        }
      }
    }

    CFRelease(v3);
    return 0;
  }

  return v3;
}

void type4_evaluate(unint64_t *a1, double *a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v3 = a3;
  v5 = *a1;
  if (!*a1)
  {
LABEL_19:
    v18 = a1[2];
    if (v18)
    {
      v19 = *(a1[5] + 16);
      do
      {
        v20 = *v19++;
        *v3++ = v20;
        --v18;
      }

      while (v18);
    }

    return;
  }

  v6 = a2;
  if (*a2 != 0.0)
  {
    goto LABEL_4;
  }

  v16 = 0;
  do
  {
    if (v5 - 1 == v16)
    {
      goto LABEL_19;
    }

    v17 = a2[++v16];
  }

  while (v17 == 0.0);
  if (v16 < v5)
  {
LABEL_4:
    v7 = 0;
    v8 = a1[6];
    atomic_compare_exchange_strong_explicit(v8, &v7, 1u, memory_order_relaxed, memory_order_relaxed);
    v9 = v7 == 0;
    if (v8 && v9)
    {
      v10 = *a1;
      if (!*a1)
      {
LABEL_10:
        v13 = a1[2];
        if (v13)
        {
          v14 = *(v8 + 16);
          do
          {
            v15 = *v14++;
            *v3++ = v15;
            --v13;
          }

          while (v13);
        }

LABEL_32:
        v30 = 1;
        atomic_compare_exchange_strong_explicit(v8, &v30, 0, memory_order_relaxed, memory_order_relaxed);
        if (v30 == 1)
        {
          return;
        }

LABEL_34:
        abort();
      }

      v11 = *(v8 + 8);
      v12 = a2;
      while (*v12 == *v11)
      {
        ++v11;
        ++v12;
        if (!--v10)
        {
          goto LABEL_10;
        }
      }

      v21 = 1;
      atomic_compare_exchange_strong_explicit(v8, &v21, 0, memory_order_relaxed, memory_order_relaxed);
      if (v21 != 1)
      {
        goto LABEL_34;
      }
    }

    evaluate(a1, a2, a3);
    v22 = 0;
    v8 = a1[6];
    atomic_compare_exchange_strong_explicit(v8, &v22, 1u, memory_order_relaxed, memory_order_relaxed);
    v23 = v22 == 0;
    if (!v8 || !v23)
    {
      return;
    }

    v24 = *a1;
    if (*a1)
    {
      v25 = *(v8 + 8);
      do
      {
        v26 = *v6++;
        *v25++ = v26;
        --v24;
      }

      while (v24);
    }

    v27 = a1[2];
    if (v27)
    {
      v28 = *(v8 + 16);
      do
      {
        v29 = *v3++;
        *v28++ = v29;
        --v27;
      }

      while (v27);
    }

    goto LABEL_32;
  }
}

void evaluate(uint64_t a1, double *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  memset(v17, 0, 496);
  if (*a1)
  {
    v5 = 0;
    for (i = *a1 - 1; ; --i)
    {
      v7 = *a2;
      if (v5 == 200)
      {
        v18 = 3;
        if (!i)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *&v16 = v5 + 1;
        v8 = &v17[v5];
        *v8 = 258;
        v8[1] = v7;
        if (!i)
        {
          goto LABEL_9;
        }
      }

      v5 = v16;
      ++a2;
    }
  }

  v7 = 0.0;
LABEL_9:
  type4_program_execute(*(a1 + 32), &v16);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a3 - 8;
    v12 = 258;
    do
    {
      v13 = v16;
      if (v16)
      {
        *&v16 = v16 - 1;
        v14 = &v17[v13 - 1];
        v12 = *v14;
        v7 = v14[1];
      }

      else
      {
        v18 = 4;
      }

      if (v12 == 258)
      {
        v15 = v7;
      }

      else if (v12 == 257)
      {
        v15 = SLODWORD(v7);
      }

      else
      {
        pdf_error("error evaluating Type 4 function: typecheck.");
        v9 = *(a1 + 16);
        v15 = 0.0;
      }

      *(v11 + 8 * v9) = v15;
      ++v10;
      v11 -= 8;
    }

    while (v10 < v9);
  }
}

void evaluation_release(void **a1)
{
  if (a1)
  {
    free(a1[1]);
    free(a1[2]);

    free(a1);
  }
}

uint64_t CGPDFLayoutGetTypeID()
{
  result = CGPDFLayoutGetTypeID_id;
  if (!CGPDFLayoutGetTypeID_id)
  {
    result = _CFRuntimeRegisterClass();
    CGPDFLayoutGetTypeID_id = result;
  }

  return result;
}

uint64_t _CGPDFLayoutFinalize(uint64_t a1)
{
  CGPDFNodeRelease(*(a1 + 104));
  v2 = *(a1 + 112);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
      for (i = 0; i < v4; ++i)
      {
        v7 = *(*(a1 + 24) + v5);
        if (v7)
        {
          if ((*v7)-- == 1)
          {
            free(v7);
            v4 = *(a1 + 48);
          }
        }

        v5 += 24;
      }

      v3 = *(a1 + 24);
    }

    free(v3);
    *(a1 + 24) = 0;
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    CPMultiUnicodesRelease(v11);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    do
    {
      v13 = v12[1];
      CGPDFTextStyleRelease(*v12);
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  return pthread_mutex_destroy((a1 + 120));
}

CGPDFLayout *CGPDFLayoutCreateWithPage(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[CPPage alloc] initWithPDFPage:a1];
  [(CPPage *)v3 reconstruct];
  v4 = [(CPPage *)v3 layout];
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  [(CPPage *)v3 dispose];

  objc_autoreleasePoolPop(v2);
  return v5;
}

CFTypeRef CGPDFLayoutRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGPDFLayoutRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFLayoutSetHasRTL(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

uint64_t CGPDFLayoutAppendTextElement(uint64_t result, void *a2, void *a3, unsigned int a4)
{
  if (result)
  {
    if (a2)
    {
      if (a4 <= 0x400)
      {
        v6 = result;
        if (*(result + 32) < *(result + 40))
        {
          if (a3)
          {
            v8 = *(result + 64);
            if (v8)
            {
              while (1)
              {
                v9 = v8;
                v10 = *v8;
                result = CGPDFTextStyleEqualToPDFTextStyle(*v8, a3);
                if (result)
                {
                  break;
                }

                v8 = v9[1];
                if (!v8)
                {
                  goto LABEL_13;
                }
              }

              if (v10)
              {
                goto LABEL_17;
              }

LABEL_13:
              result = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
              if (result)
              {
                ++*a3;
                *result = a3;
                *(result + 8) = 0;
                goto LABEL_15;
              }
            }

            else
            {
              result = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
              if (result)
              {
                v9 = result;
                result = 0;
                v6[8] = v9;
                ++*a3;
                *v9 = a3;
LABEL_15:
                v9[1] = result;
                v10 = a3;
LABEL_17:
                ++*a2;
                v11 = v6[3];
                v12 = v6[4];
                v6[4] = v12 + 1;
                v13 = v11 + 24 * v12;
                *v13 = a2;
                *(v13 + 8) = v10;
                *(v13 + 16) = a4;
                *(v13 + 20) = 0;
                ++v6[6];
                return result;
              }
            }
          }

          v10 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t CGPDFLayoutGetPage(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGPDFLayoutGetRootNode(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

void *CGPDFLayoutGetRootTaggedNode(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[14];
    if (!result)
    {
      result = CGPDFPageCopyRootTaggedNode(v1[2]);
      v1[14] = result;
    }
  }

  return result;
}

uint64_t CGPDFLayoutGetNumberOfTextElements(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t CGPDFLayoutGetCharacterMarker(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 48) > a2 && (v4 = *(a1 + 24)) != 0)
    {
      return *(v4 + 24 * a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGPDFLayoutGetTextMatrix(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = CGAffineTransformIdentity;
  if (a1)
  {
    if ((a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        v5 = (v4 + 24 * a2);
        v6 = *v5;
        if (*v5)
        {
          v7 = v5[1];
          v9 = *(v6 + 32);
          v8 = *(v6 + 40);
          v10 = *(v6 + 16);
          v11 = *(v6 + 24);
          if (v7 && *(v6 + 8) != -4)
          {
            width = *(v7 + 16);
            v13 = width;
          }

          else if (v9 < 0.0 || (width = *(v6 + 32), v13 = *(v6 + 40), v8 < 0.0))
          {
            v15 = CGRectStandardize(*(v6 + 16));
            width = v15.size.width;
            v15.origin.x = v10;
            v15.origin.y = v11;
            v15.size.width = v9;
            v15.size.height = v8;
            *(&v13 - 3) = CGRectStandardize(v15);
          }

          *a3 = width;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = v13;
          if (v9 < 0.0 || v8 < 0.0)
          {
            v16.origin.x = v10;
            v16.origin.y = v11;
            v16.size.width = v9;
            v16.size.height = v8;
            *&v10 = CGRectStandardize(v16);
          }

          v14 = *(v6 + 88);
          *(a3 + 32) = v10;
          *(a3 + 40) = v14;
        }
      }
    }
  }
}

uint64_t CGPDFLayoutGetCGFont(uint64_t a1, uint64_t a2)
{
  if (a1 && (a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2 && (v2 = *(a1 + 24)) != 0 && (v3 = *(v2 + 24 * a2 + 8)) != 0 && (v4 = *(v3 + 8)) != 0)
  {
    return CGPDFFontGetFont(v4);
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFLayoutGetGlyph(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v17 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 48) <= a2)
    {
      return 0;
    }

    v3 = *(a1 + 24);
    if (!v3)
    {
      return 0;
    }

    v4 = (v3 + 24 * a2);
    v6 = *v4;
    v5 = v4[1];
    if (!v6 || v5 == 0)
    {
      return 0;
    }

    v18 = *(v6 + 80);
    v2 = v18;
    if (!v18)
    {
      return v2;
    }

    v8 = *(v5 + 8);
    if (v8)
    {
      Encoding = CGPDFFontGetEncoding(*(v5 + 8));
      if (Encoding)
      {
        return *(CGPDFEncodingGetGlyphVector(Encoding) + v18);
      }

      else
      {
        CIDToGlyphMap = CGPDFFontGetCIDToGlyphMap(v8);
        if (CIDToGlyphMap != -1)
        {
          if (CIDToGlyphMap)
          {
            v14 = atomic_load((CIDToGlyphMap + ((v18 >> 7) & 0x1F8) + 8));
            if (v14)
            {
              return *(v14 + 2 * (v18 & 0x3FF));
            }

            else
            {
              return *CIDToGlyphMap;
            }
          }

          else
          {
            Font = CGPDFFontGetFont(v8);
            if (Font)
            {
              v13 = Font;
              if (CGFontGetGlyphsForCIDs(Font, &v18, 1, &v17))
              {
                if (CGPDFFontIsEmbedded(v8))
                {
                  return v17;
                }

                else
                {
                  v16 = 1;
                  v15 = 0;
                  if (CGFontGetGlyphsForCIDs(v13, &v16, 1, &v15))
                  {
                    return v15;
                  }

                  else
                  {
                    return 0;
                  }
                }
              }

              else
              {
                return v18;
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

double CGPDFLayoutGetCharacterBounds(uint64_t a1, uint64_t a2)
{
  if (a1 && (a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2 && (v2 = *(a1 + 24)) != 0 && (v3 = *(v2 + 24 * a2)) != 0)
  {
    return *(v3 + 16);
  }

  else
  {
    return INFINITY;
  }
}

double CGPDFLayoutGetCharacterBBox(uint64_t a1, uint64_t a2)
{
  if (a1 && (a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2 && (v2 = *(a1 + 24)) != 0 && (v3 = *(v2 + 24 * a2)) != 0)
  {
    return *(v3 + 48);
  }

  else
  {
    return INFINITY;
  }
}

double CGPDFLayoutGetCharacterRotation(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a1)
  {
    if ((a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        v4 = *(v3 + 24 * a2 + 8);
        if (v4)
        {
          return *(v4 + 40);
        }
      }
    }
  }

  return result;
}

double CGPDFLayoutGetCharacterAnchorY(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a1)
  {
    if ((a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        v4 = *(v3 + 24 * a2);
        if (v4)
        {
          return *(v4 + 88);
        }
      }
    }
  }

  return result;
}

uint64_t CGPDFLayoutGetCharacterUnicode(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 48) > a2 && (v4 = *(a1 + 24)) != 0 && (v5 = *(v4 + 24 * a2)) != 0)
    {
      return *(v5 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CGPDFLayoutIsAttachmentCharacter(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    return *(a1 + 48) > a2 && (v4 = *(a1 + 24)) != 0 && (v5 = *(v4 + 24 * a2)) != 0 && *(v5 + 8) == -4;
  }

  return result;
}

uint64_t CGPDFLayoutIsWhiteSpaceCharacter(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 48) > a2 && (v4 = *(a1 + 24)) != 0 && (v5 = *(v4 + 24 * a2)) != 0)
    {
      result = *(v5 + 8);
      if (*(v5 + 8))
      {
        if (result > 0x7F)
        {
          v6 = __maskrune(result, 0x4000uLL);
        }

        else
        {
          v6 = *(MEMORY[0x1E69E9830] + 4 * result + 60) & 0x4000;
        }

        return v6 != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGPDFLayoutBufferUnicodeAndBoundsForRange(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a4;
    if ((a4 & 0x8000000000000000) == 0)
    {
      v6 = *(a1 + 48);
      if (a4 + a5 <= v6)
      {
        v7 = *(a1 + 24);
        if (v7)
        {
          if (a5 >= 1)
          {
            if (a4 + a5 >= v6)
            {
              v10 = *(a1 + 48);
            }

            else
            {
              v10 = a4 + a5;
            }

            v11 = (v7 + 24 * a4);
            v12 = a2;
            v13 = a3;
            do
            {
              if (a2)
              {
                v14 = *v11;
                if (*v11)
                {
                  LOWORD(v14) = LOWORD(v14->height);
                }

                *v12++ = v14;
              }

              if (a3)
              {
                p_height = &CGRectNull.size.height;
                p_size = &CGRectNull.size;
                p_y = &CGRectNull.origin.y;
                v18 = v11[1];
                if (*v11)
                {
                  p_y = &(*v11)[1].height;
                  p_size = *v11 + 2;
                  p_height = &(*v11)[2].height;
                  v19 = &(*v11)[1];
                }

                else
                {
                  v19 = &CGRectNull;
                }

                if (v18)
                {
                  height = v18[2].height;
                }

                else
                {
                  height = 0.0;
                }

                *v13 = CGRectUprightBoundsForRotation(v19->origin.x, *p_y, p_size->width, *p_height, height);
                *(v13 + 8) = v21;
                *(v13 + 16) = v22;
                *(v13 + 24) = v23;
                v13 += 32;
              }

              ++v5;
              v11 += 3;
            }

            while (v5 < v10);
          }
        }
      }
    }
  }
}

CGFloat CGRectUprightBoundsForRotation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (a5 != 0.0)
  {
    v9 = __sincos_stret(a5);
    v11.a = v9.__cosval;
    v11.b = v9.__sinval;
    v11.c = -v9.__sinval;
    v11.d = v9.__cosval;
    v11.tx = 0.0;
    v11.ty = 0.0;
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    *&a1 = CGRectApplyAffineTransform(v12, &v11);
  }

  return a1;
}

uint64_t CreateSelectionBetweenPoints(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = a1;
  v96 = a4;
  v97 = a5;
  v94 = a6;
  v95 = a7;
  if (a2)
  {
    if (!a1)
    {
      return 0;
    }

    v10 = *(a1 + 104);
    if (a2 > 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = dword_1844DC0C8[a2 - 1];
    }

    v93 = 0;
    v91 = 0;
    v92 = 0;
    if (a2 == 1)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 2.0;
    }

    RangeFromStringRange = 0;
    v90 = 0;
    CGPDFNodeGetNodeRangeBetweenPoints(v10, v11, a3, &v92, &v91, &v93, &RangeFromStringRange, a4, a5, a6, a7, v13);
    v15 = v91;
    v14 = v92;
    if (v92 == v91)
    {
      if (v92)
      {
        TextRange = CGPDFNodeGetTextRange(v92);
        v20 = CPRangeUnion(TextRange, v19, RangeFromStringRange, v90);
      }

      else
      {
        v20 = RangeFromStringRange;
        v21 = v90;
      }

      if (v21 < 1)
      {
        return 0;
      }

      IndexSet = CPIndexSetCreateWithRange(v20, v21);
      if (!IndexSet)
      {
        return 0;
      }
    }

    else
    {
      if (v93)
      {
        IndexSet = CreateIndexSet(v92, v91, v11, a3);
        v17 = &v91;
      }

      else
      {
        IndexSet = CreateIndexSet(v91, v92, v11, a3);
        v17 = &v92;
        v14 = v15;
      }

      v22 = CGPDFNodeGetTextRange(v14);
      v23 = CGPDFNodeGetTextRange(*v17);
      if (!IndexSet)
      {
        return 0;
      }

      v25 = v23;
      v26 = v24;
      if (IndexSet[2].i8[8])
      {
        CPIndexSetNormalize(IndexSet);
      }

      v27 = IndexSet[1].i64[0];
      if (v27 >= 1)
      {
        v83 = v11;
        v84 = v8;
        Range = CPIndexSetGetRange(IndexSet, 0);
        v30 = v29;
        v31 = CPIndexSetGetRange(IndexSet, v27 - 1);
        v32 = RangeFromStringRange;
        if (v22 > RangeFromStringRange)
        {
          if (IndexSet[1].i64[0] >= 1)
          {
            v33 = IndexSet[2].i64[0];
            *v33 = RangeFromStringRange;
            v33[1] = Range + v30 - v32;
            IndexSet[2].i8[8] = 1;
          }

          if (v27 == 1)
          {
            v31 = v32;
          }

          v32 = RangeFromStringRange;
        }

        v8 = v84;
        LODWORD(v11) = v83;
        v34 = v90 + v32;
        if (v25 + v26 < v34 && IndexSet[1].i64[0] >= v27)
        {
          v35 = (IndexSet[2].i64[0] + 16 * (v27 - 1));
          *v35 = v31;
          v35[1] = v34 - v31;
          IndexSet[2].i8[8] = 1;
        }
      }
    }

    if (IndexSet[2].i8[8])
    {
      CPIndexSetNormalize(IndexSet);
    }

    if (IndexSet[1].i64[0] <= 0)
    {
      CPIndexSetGetLastIndex(IndexSet);
      goto LABEL_51;
    }

    v36 = *IndexSet[2].i64[0];
    LastIndex = CPIndexSetGetLastIndex(IndexSet);
    if (v36 == -1 || LastIndex == -1)
    {
      goto LABEL_51;
    }

    if (v90 < 1 || *(v8 + 72) != 1 || (v39 = LastIndex, v86 = 0, v87 = 0, v88 = 0, CGPDFLayoutGetRTLData(&v86, v8), v39 >= v88))
    {
LABEL_86:
      if (a2 != 1 || CGPDFLayoutExtendRangeToWordBoundaries(v8, IndexSet, RangeFromStringRange, v90))
      {
        v48 = CGPDFSelectionCreateWithIndexSet(*(v8 + 16), IndexSet);
        goto LABEL_89;
      }

LABEL_51:
      v48 = 0;
LABEL_89:
      CFRelease(IndexSet);
      return v48;
    }

    CFRelease(IndexSet);
    if (v93)
    {
      v40 = v92;
      if (v92 && (v41 = CGPDFNodeGetTextRange(v92), v45 = v41 + v44, RangeFromStringRange >= v41 + v44) && (v42.n128_f64[0] = v96, v43.n128_f64[0] = v97, CGPDFNodeIsHitByPoint(v40, v42, v43, v13)))
      {
        v46 = 0;
        v47 = RangeFromStringRange - v45 + v90 + 1;
        RangeFromStringRange = v45 - 1;
        v90 = v47;
      }

      else
      {
        v46 = &v96;
      }

      v56 = v91;
      if (!v91 || (v57 = CGPDFNodeGetTextRange(v91), v90 + RangeFromStringRange > v57) || (v60 = v57, v58.n128_f64[0] = v94, v59.n128_f64[0] = v95, !CGPDFNodeIsHitByPoint(v56, v58, v59, v13)))
      {
        v61 = &v94;
LABEL_67:
        v85 = 0;
        StringRangeFromCursorRange = CGPDFLayoutGetStringRangeFromCursorRange(v8, RangeFromStringRange, v90, v46, v61, a3, &v85, v13);
        if ((StringRangeFromCursorRange & 0x8000000000000000) == 0)
        {
          v68 = StringRangeFromCursorRange;
          v69 = v67;
          v70 = v11;
          IndexSetForStringRange = CGPDFLayoutCreateIndexSetForStringRange(v8, StringRangeFromCursorRange, v67);
          v72 = IndexSetForStringRange;
          if (a3)
          {
            IndexSet = IndexSetForStringRange;
          }

          else
          {
            IndexSet = CGPDFLayoutCopyIndexSetRemovingGraphics(v8, IndexSetForStringRange);
            if (v72)
            {
              CFRelease(v72);
            }
          }

          if (IndexSet)
          {
            RangeFromStringRange = CGPDFLayoutGetRangeFromStringRange(v8, v68, v69);
            v90 = v73;
            v74 = (v87 + 4 * v68);
            v75 = v74[v69 - 1];
            for (i = CGPDFNodeGetNodeContainingTextRange(v10, *v74, 1); i; i = *(i + 8))
            {
              if (*i == v70)
              {
                break;
              }
            }

            v92 = i;
            for (j = CGPDFNodeGetNodeContainingTextRange(v10, v75, 1); j; j = *(j + 8))
            {
              if (*j == v70)
              {
                break;
              }
            }

            v91 = j;
            if (i)
            {
              v78 = CGPDFNodeGetTextRange(i);
              CPIndexSetAddRange(IndexSet, v78, v79);
              j = v91;
              v80 = v92;
            }

            else
            {
              v80 = 0;
            }

            if (j && j != v80)
            {
              v81 = CGPDFNodeGetTextRange(j);
              CPIndexSetAddRange(IndexSet, v81, v82);
            }

            goto LABEL_86;
          }
        }

        return 0;
      }
    }

    else
    {
      v49 = v91;
      if (v91 && (v50 = CGPDFNodeGetTextRange(v91), v54 = v50 + v53, RangeFromStringRange >= v50 + v53) && (v51.n128_f64[0] = v94, v52.n128_f64[0] = v95, CGPDFNodeIsHitByPoint(v49, v51, v52, v13)))
      {
        v46 = 0;
        v55 = RangeFromStringRange - v54 + v90 + 1;
        RangeFromStringRange = v54 - 1;
        v90 = v55;
      }

      else
      {
        v46 = &v94;
      }

      v62 = v92;
      if (!v92 || (v63 = CGPDFNodeGetTextRange(v92), v90 + RangeFromStringRange > v63) || (v60 = v63, v64.n128_f64[0] = v96, v65.n128_f64[0] = v97, !CGPDFNodeIsHitByPoint(v62, v64, v65, v13)))
      {
        v61 = &v96;
        goto LABEL_67;
      }
    }

    v61 = 0;
    v90 = v60 - RangeFromStringRange + 1;
    goto LABEL_67;
  }

  return CreateCharacterSelectionBetweenPoints(a1, a3, a4, a5, a6, a7);
}

uint64_t CreateCharacterSelectionBetweenPoints(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *v44 = a3;
  *&v44[1] = a4;
  *v43 = a5;
  *&v43[1] = a6;
  if (!a1)
  {
    return 0;
  }

  if (vabdd_f64(a3, a5) + vabdd_f64(a4, a6) < 0.1)
  {
    return 0;
  }

  v8 = *(a1 + 104);
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  CGPDFNodeGetNodeRangeBetweenPoints(v8, 1, a2, &v41, &v40, &v42, &v38, a3, a4, a5, a6, 0.0);
  if (v39 < 1)
  {
    return 0;
  }

  if (v41 != v40)
  {
    if (v42)
    {
      v9 = v41;
      v10 = v40;
    }

    else
    {
      v9 = v40;
      v10 = v41;
    }

    IndexSet = CreateIndexSet(v9, v10, 1, a2);
    v11 = IndexSet;
    if (IndexSet)
    {
      if (IndexSet[2].i8[8])
      {
        CPIndexSetNormalize(IndexSet);
      }

      v13 = v11[1].i64[0];
      if (v13 >= 1)
      {
        Range = CPIndexSetGetRange(v11, 0);
        v16 = v15;
        v17 = CPIndexSetGetRange(v11, v13 - 1);
        v19 = v38;
        if (Range != v38)
        {
          v20 = Range + v16 - v38;
          if (v20 < 1)
          {
            v19 = -1;
            v20 = 0;
          }

          if (v11[1].i64[0] >= 1)
          {
            v21 = v11[2].i64[0];
            *v21 = v19;
            v21[1] = v20;
            v11[2].i8[8] = 1;
          }

          if (v13 == 1)
          {
            v17 = v19;
            v18 = v20;
          }
        }

        if ((v17 & 0x8000000000000000) == 0 && v18 + v17 != v39 + v38 && v11[1].i64[0] >= v13)
        {
          v22 = v39 + v38 - v17;
          if (v22 >= 1)
          {
            v23 = v17;
          }

          else
          {
            v22 = 0;
            v23 = -1;
          }

          v24 = (v11[2].i64[0] + 16 * (v13 - 1));
          *v24 = v23;
          v24[1] = v22;
          v11[2].i8[8] = 1;
        }
      }

      goto LABEL_28;
    }

    return 0;
  }

  v11 = CPIndexSetCreateWithRange(v38, v39);
  if (!v11)
  {
    return 0;
  }

LABEL_28:
  if (v11[2].i8[8])
  {
    CPIndexSetNormalize(v11);
  }

  if (v11[1].i64[0] < 1)
  {
    v25 = -1;
  }

  else
  {
    v25 = *v11[2].i64[0];
  }

  LastIndex = CPIndexSetGetLastIndex(v11);
  v26 = 0;
  if (v25 == -1 || LastIndex == -1)
  {
    goto LABEL_53;
  }

  if (*(a1 + 72) != 1)
  {
    v35 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v11);
    goto LABEL_48;
  }

  if (v42)
  {
    v29 = v44;
  }

  else
  {
    v29 = v43;
  }

  if (v42)
  {
    v30 = v43;
  }

  else
  {
    v30 = v44;
  }

  v37 = 0;
  StringRangeFromCursorRange = CGPDFLayoutGetStringRangeFromCursorRange(a1, v25, LastIndex - v25 + 1, v29, v30, a2, &v37, 0.0);
  if ((StringRangeFromCursorRange & 0x8000000000000000) != 0)
  {
    v26 = 0;
    goto LABEL_53;
  }

  v33 = StringRangeFromCursorRange;
  v34 = v32;
  if (a2)
  {
    v35 = CGPDFSelectionCreateForStringRange(*(a1 + 16), StringRangeFromCursorRange, v32);
LABEL_48:
    v26 = v35;
LABEL_53:
    CFRelease(v11);
    return v26;
  }

  CFRelease(v11);
  IndexSetForStringRange = CGPDFLayoutCreateIndexSetForStringRange(a1, v33, v34);
  v11 = CGPDFLayoutCopyIndexSetRemovingGraphics(a1, IndexSetForStringRange);
  if (IndexSetForStringRange)
  {
    CFRelease(IndexSetForStringRange);
  }

  v26 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v11);
  if (v11)
  {
    goto LABEL_53;
  }

  return v26;
}

int64x2_t *CreateIndexSet(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v28 = 1;
  v6 = (a3 - 514) < 3 || a3 == 1;
  if (!v6 && a3 != 1537)
  {
    v28 = 0;
  }

  IteratorToNode = CGPDFNodeCreateIteratorToNode(a1, a2, a3, a4);
  TextRange = CGPDFNodeGetTextRange(a1);
  v10 = v9;
  Node = CGPDFNodeIteratorNextNode(IteratorToNode);
  v12 = 0;
LABEL_7:
  v27 = v12;
LABEL_8:
  v13 = TextRange;
  v14 = Node;
  v15 = v10;
  while (1)
  {
    v16 = CGPDFNodeIteratorNextNode(IteratorToNode);
    if (!v16)
    {
      break;
    }

    Node = v16;
    v17 = CGPDFNodeGetTextRange(v16);
    TextRange = v17;
    v10 = v18;
    if (v28)
    {
      if (v14)
      {
        v20 = (*v14 & 0x100) == 0 && *v14 != 513;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 + v13 + v15;
    if (a3 != 1 || v21 >= v17)
    {
      goto LABEL_29;
    }

    v22 = Node;
    while (*v22 != 1537)
    {
      v22 = *(v22 + 8);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    if (*(v22 + 112) == 0.0)
    {
LABEL_29:
      if (v21 < v17)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v14)
      {
        v23 = *(v14 + 8);
      }

      else
      {
        v23 = 0;
      }

      v25 = *(Node + 8);
      if (v23 != v25 && v21 < CGPDFNodeGetTextRange(v25))
      {
LABEL_36:
        if (v27)
        {
          CPIndexSetAddRange(v27, v13, v15);
          goto LABEL_8;
        }

        v12 = CPIndexSetCreateWithRange(v13, v15);
        goto LABEL_7;
      }
    }

    v24 = TextRange + v10;
    if (TextRange + v10 <= v13 + v15)
    {
      v24 = v13 + v15;
    }

    v15 = v24 - v13;
    v14 = Node;
  }

  CGPDFNodeIteratorRelease(IteratorToNode);
  if (v27)
  {
    CPIndexSetAddRange(v27, v13, v15);
    return v27;
  }

  else
  {

    return CPIndexSetCreateWithRange(v13, v15);
  }
}

uint64_t CGPDFLayoutGetRTLData(__CFString **a1, uint64_t a2)
{
  v3 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pthread_mutex_lock((a2 + 120));
  v4 = a2 + 80;
  if (*(a2 + 80))
  {
    *v3 = *v4;
    v3[2] = *(a2 + 96);
  }

  else
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      v26 = v3;
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      v7 = 0;
      v8 = 0;
      appended = 0;
      ptr = 0;
      v28 = 0;
      v10 = v5;
      while (1)
      {
        v11 = appended;
        appended = CPTextServicesAppendTextLine(Mutable, a2, appended, v10, &ptr, &v28);
        v10 = v5 - appended;
        if (v5 <= appended)
        {
          break;
        }

        v12 = v28;
        if (v7)
        {
          v13 = v28 + v8;
          v7 = malloc_type_realloc(v7, 4 * (v28 + v8 + 1), 0x100004052888210uLL);
          v14 = ptr;
          if (v28 >= 1)
          {
            for (i = 0; i < v28; ++i)
            {
              *(v7 + v8 + i) = v14[i] + v11;
            }
          }

          *(v7 + v13) = appended - 1;
          free(v14);
          ptr = 0;
          v8 = v13 + 1;
        }

        else
        {
          v16 = ptr;
          ptr = 0;
          v8 = v28 + 1;
          v7 = malloc_type_realloc(v16, 4 * (v28 + 1), 0x100004052888210uLL);
          *(v7 + v12) = appended - 1;
        }

        LOWORD(v17) = 0;
        if (a2 && appended >= 1)
        {
          if (*(a2 + 48) < appended)
          {
            LOWORD(v17) = 0;
          }

          else
          {
            v17 = *(a2 + 24);
            if (v17)
            {
              v17 = *(v17 + 24 * appended - 24);
              if (v17)
              {
                LOWORD(v17) = *(v17 + 8);
              }
            }
          }
        }

        chars = v17;
        CFStringAppendCharacters(Mutable, &chars, 1);
      }

      if (v7)
      {
        v18 = v28 + v8;
        v19 = v28 + v8 + 1;
        v20 = malloc_type_realloc(v7, 4 * v19, 0x100004052888210uLL);
        v21 = ptr;
        if (v28 >= 1)
        {
          for (j = 0; j < v28; ++j)
          {
            *(&v20->isa + v8 + j) = v21[j] + v11;
          }
        }

        *(&v20->isa + v18) = appended - 1;
        v3 = v26;
        *(v26 + 4) = v19;
        free(v21);
      }

      else
      {
        v23 = ptr;
        v24 = v28;
        v3 = v26;
        *(v26 + 4) = v28;
        v20 = malloc_type_realloc(v23, 4 * v24 + 4, 0x100004052888210uLL);
        *(&v20->isa + v24) = appended - 1;
      }

      v3[1] = v20;
      v4 = a2 + 80;
    }

    else
    {
      Mutable = 0;
    }

    *v3 = Mutable;
    *(v4 + 16) = v3[2];
    *v4 = *v3;
  }

  return pthread_mutex_unlock((a2 + 120));
}

uint64_t CGPDFLayoutGetStringRangeFromCursorRange(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, uint64_t a6, _BYTE *a7, double a8)
{
  v8 = a2;
  *a7 = 1;
  v9 = -1;
  if ((a2 & 0x8000000000000000) == 0 && (a3 & 0x8000000000000000) == 0)
  {
    v12 = a2 + a3;
    if (a2 + a3 <= *(a1 + 48))
    {
      if (*(a1 + 72) != 1)
      {
        return CGPDFLayoutGetStringRangeFromRange(a1, v8, a3);
      }

      v84 = 0;
      v85 = 0;
      v86 = 0;
      CGPDFLayoutGetRTLData(&v84, a1);
      if (v86 <= 0)
      {
        return CGPDFLayoutGetStringRangeFromRange(a1, v8, a3);
      }

      v18 = v12 - 1;
      v82 = v12 - 1;
      v83 = v8;
      if (v12)
      {
        if (v8 != *(a1 + 48))
        {
          v75 = v86;
          v81 = 0;
          v80 = 0;
          if (a4)
          {
            PairedIndexForCursor = CGPDFLayoutGetPairedIndexForCursor(a1, &v83, 1, a6, &v81 + 1, &v80 + 1, *a4, a4[1], a8);
            v20 = HIBYTE(v80);
            v8 = v83;
            v79 = PairedIndexForCursor;
            if (PairedIndexForCursor == v83)
            {
              v21 = HIBYTE(v80);
            }

            else
            {
              v21 = 0;
            }

            if (a5)
            {
LABEL_13:
              v22 = CGPDFLayoutGetPairedIndexForCursor(a1, &v82, 0, a6, &v81, &v80, *a5, a5[1], a8);
              v23 = v80;
              v18 = v82;
              if (v22 == v82)
              {
                v24 = v80;
              }

              else
              {
                v24 = 0;
              }

              if (((v21 | v24) & 1) == 0)
              {
                if (v79 == v82 && v22 == v8)
                {
                  return -1;
                }

                LOBYTE(v24) = 0;
                if (v8 == v82 && v79 == v22)
                {
                  return -1;
                }
              }

LABEL_26:
              v72 = v23;
              v26 = v21;
              v76 = v24;
              v74 = v22;
              StringRangeFromRange = CGPDFLayoutGetStringRangeFromRange(a1, v8, 1);
              v29 = v28;
              if (v8 == v18)
              {
                v30 = CGPDFLayoutReadsLeftToRightAtIndex(a1, v8);
                v31 = StringRangeFromRange;
                v32 = v29;
                v33 = StringRangeFromRange;
              }

              else
              {
                v31 = CGPDFLayoutGetStringRangeFromRange(a1, v18, 1);
                v32 = v34;
                v33 = StringRangeFromRange;
                if (StringRangeFromRange <= v31)
                {
                  v36 = StringRangeFromRange;
                  v33 = v31;
                  goto LABEL_32;
                }

                v30 = 0;
              }

              v35 = v32;
              *a7 = v30;
              v36 = v31;
              v32 = v29;
              v29 = v35;
              v31 = v33;
LABEL_32:
              v9 = -1;
              if ((v36 & 0x8000000000000000) == 0 && (v31 & 0x8000000000000000) == 0)
              {
                if (v26)
                {
                  goto LABEL_35;
                }

                if (HIBYTE(v81) & v20)
                {
                  v37 = 0;
                  goto LABEL_38;
                }

                if (v8 == v18)
                {
LABEL_35:
                  v37 = 1;
LABEL_38:
                  v38 = v8;
                  goto LABEL_39;
                }

                v70 = v32;
                v57 = v33;
                v58 = v36;
                v59 = CGPDFLayoutGetStringRangeFromRange(a1, v79, 1);
                v36 = v58;
                if (v59 < v58)
                {
                  v38 = v8;
                  v33 = v57;
                  v32 = v70;
                }

                else
                {
                  v33 = v57;
                  v32 = v70;
                  if (v59 <= v57)
                  {
                    if (*a7)
                    {
                      v29 = v60;
                      v36 = v59;
                    }

                    else
                    {
                      v32 = v60;
                      v33 = v59;
                    }

                    v37 = 1;
                    v38 = v79;
                    v79 = v8;
LABEL_39:
                    if (v76)
                    {
                      v39 = 1;
                    }

                    else
                    {
                      if ((v72 & v81 & 1) == 0)
                      {
                        if (v8 == v18)
                        {
                          v39 = 1;
                        }

                        else
                        {
                          v61 = v37;
                          v71 = v32;
                          v78 = v38;
                          v62 = v33;
                          v39 = 1;
                          v63 = v36;
                          v64 = CGPDFLayoutGetStringRangeFromRange(a1, v74, 1);
                          v36 = v63;
                          if (v64 < v63)
                          {
                            v8 = v18;
                            v33 = v62;
                            v38 = v78;
                            v32 = v71;
                            v37 = v61;
                          }

                          else
                          {
                            v33 = v62;
                            v38 = v78;
                            v32 = v71;
                            v37 = v61;
                            if (v64 > v62)
                            {
                              goto LABEL_43;
                            }

                            if (*a7)
                            {
                              v32 = v65;
                              v33 = v64;
                            }

                            else
                            {
                              v29 = v65;
                            }

                            if (!*a7)
                            {
                              v36 = v64;
                            }

                            v39 = 1;
                            v8 = v74;
                            v74 = v18;
                          }
                        }

LABEL_44:
                        if (*a7)
                        {
                          v40 = v39;
                        }

                        else
                        {
                          v40 = v37;
                        }

                        v41 = v33 + v32;
                        v42 = v33 + v32 - 1;
                        v9 = v36 + v29;
                        if (v36 + v29 > v33)
                        {
                          v9 = v36;
                          goto LABEL_113;
                        }

                        if (*a7)
                        {
                          v43 = v37;
                        }

                        else
                        {
                          v43 = v39;
                        }

                        if ((v43 & 1) == 0)
                        {
                          v44 = *(v85 + 4 * v9);
                          if (v44 != -1)
                          {
                            if (*a7)
                            {
                              v45 = a4;
                            }

                            else
                            {
                              v45 = a5;
                            }

                            if (*a7)
                            {
                              v46 = v79;
                            }

                            else
                            {
                              v46 = v74;
                            }

                            if (*a7)
                            {
                              v47 = v38;
                            }

                            else
                            {
                              v47 = v8;
                            }

                            if (v46 == v44)
                            {
LABEL_72:
                              if ((v40 & 1) == 0)
                              {
                                v52 = *(v85 + 4 * (v33 - 1));
                                if (v52 != -1)
                                {
                                  v53 = *a7 == 0;
                                  if (*a7)
                                  {
                                    v54 = a5;
                                  }

                                  else
                                  {
                                    v54 = a4;
                                  }

                                  if (*a7)
                                  {
                                    v55 = v74;
                                  }

                                  else
                                  {
                                    v55 = v79;
                                  }

                                  if (v53)
                                  {
                                    v56 = v38;
                                  }

                                  else
                                  {
                                    v56 = v8;
                                  }

                                  if (v55 == v52)
                                  {
                                    v42 = v33 - 1;
                                  }

                                  else if (v41 < v75)
                                  {
                                    v66 = *(v85 + 4 * v41);
                                    if (v66 != -1 && v55 != v66)
                                    {
                                      v67 = v42;
                                      if (CGPDFLayoutPointSelectsFirstIndex(a1, v56, v55, *v54, v54[1], a8) || (v68 = CGPDFLayoutGetStringRangeFromRange(a1, v55, 1), v68 < 0))
                                      {
                                        v42 = v67;
                                      }

                                      else
                                      {
                                        v42 = v69 + v68 - 1;
                                      }
                                    }
                                  }
                                }
                              }

LABEL_113:
                              if (v42 >= v9)
                              {
                                return v9;
                              }

                              return -1;
                            }

                            if (v36 >= 1)
                            {
                              v48 = *(v85 + 4 * v36 - 4);
                              if (v48 != -1 && v46 != v48)
                              {
                                v73 = v40;
                                v49 = v42;
                                v77 = v38;
                                v9 = v36;
                                v50 = v33;
                                if (!CGPDFLayoutPointSelectsFirstIndex(a1, v47, v46, *v45, v45[1], a8))
                                {
                                  v51 = CGPDFLayoutGetStringRangeFromRange(a1, v46, 1);
                                  if (v51 >= 0)
                                  {
                                    v9 = v51;
                                  }
                                }

                                v33 = v50;
                                v38 = v77;
                                v42 = v49;
                                v40 = v73;
                                goto LABEL_72;
                              }
                            }
                          }
                        }

                        v9 = v36;
                        goto LABEL_72;
                      }

                      v39 = 0;
                    }

LABEL_43:
                    v8 = v18;
                    goto LABEL_44;
                  }

                  v38 = v8;
                }

                v37 = 1;
                goto LABEL_39;
              }

              return v9;
            }
          }

          else
          {
            v20 = 1;
            HIBYTE(v81) = 1;
            v79 = v8;
            v21 = 1;
            if (a5)
            {
              goto LABEL_13;
            }
          }

          v23 = 1;
          LOBYTE(v81) = 1;
          LOBYTE(v24) = 1;
          v22 = v12 - 1;
          goto LABEL_26;
        }
      }
    }
  }

  return v9;
}

int64x2_t *CGPDFLayoutCreateIndexSetForStringRange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (!a1 || (a2 & 0x8000000000000000) != 0)
  {
    return v3;
  }

  if (*(a1 + 72))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    CGPDFLayoutGetRTLData(&v26, a1);
    v3 = 0;
    v7 = a2 + a3;
    v8 = v28;
    v9 = a3 - 1;
    if (a3 >= 1 && v7 <= v28)
    {
      v10 = *(v27 + 4 * a2);
      v11 = -v10;
      if (a3 >= 2)
      {
        v3 = 0;
        v12 = (v27 + 4 * a2 + 4);
        v13 = *(v27 + 4 * a2);
        while (1)
        {
          v15 = *v12++;
          v14 = v15;
          v16 = v10 + 1;
          if (v13 - 1 > v15 || v16 < v14)
          {
            if (v13 < 0 || v10 >= *(a1 + 48))
            {
              return v3;
            }

            v18 = v11 + v10;
            if (v3)
            {
              CPIndexSetAddRange(v3, v13, v18 + 1);
            }

            else
            {
              v3 = CPIndexSetCreateWithRange(v13, v18 + 1);
            }

            v10 = v14;
          }

          else
          {
            if (v16 == v14)
            {
              v19 = v14;
            }

            else
            {
              v19 = v10;
            }

            if (v13 - 1 != v14)
            {
              v14 = v13;
              v10 = v19;
            }
          }

          v11 = -v14;
          v13 = v14;
          if (!--v9)
          {
            goto LABEL_28;
          }
        }
      }

      v3 = 0;
      v14 = *(v27 + 4 * a2);
LABEL_28:
      if (v14 < 0 || v10 >= *(a1 + 48))
      {
        return v3;
      }

      v20 = v11 + v10;
      if (v3)
      {
        CPIndexSetAddRange(v3, v14, v20 + 1);
      }

      else
      {
        v3 = CPIndexSetCreateWithRange(v14, v20 + 1);
      }
    }

    if (v7 <= v8)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    v7 = a2 + a3;
  }

  CharacterIndexAtUnicodeIndex = CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(*(a1 + 56), a2);
  v22 = CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(*(a1 + 56), v7);
  if (CharacterIndexAtUnicodeIndex < 0 || v22 > *(a1 + 48))
  {
    return v3;
  }

  v23 = v22 - CharacterIndexAtUnicodeIndex;
  if (v22 <= CharacterIndexAtUnicodeIndex)
  {
    if (v22 == CharacterIndexAtUnicodeIndex)
    {
      v24 = CharacterIndexAtUnicodeIndex;
      v23 = 1;
      goto LABEL_40;
    }

    return v3;
  }

  v24 = CharacterIndexAtUnicodeIndex;
LABEL_40:

  return CPIndexSetCreateWithRange(v24, v23);
}

int64x2_t *CGPDFLayoutCopyIndexSetRemovingGraphics(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 40))
  {
    CPIndexSetNormalize(a2);
  }

  v4 = *(a2 + 16);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = -1;
  do
  {
    Range = CPIndexSetGetRange(a2, v7);
    if (v10 < 1)
    {
      goto LABEL_35;
    }

    v11 = Range + v10;
    v12 = 1;
    while (2)
    {
      v13 = 24 * Range;
      v14 = Range;
      while (1)
      {
        if (a1)
        {
          if ((v14 & 0x8000000000000000) == 0 && *(a1 + 48) > v14)
          {
            v15 = *(a1 + 24);
            if (v15)
            {
              v16 = *(v15 + v13);
              if (v16)
              {
                if (*(v16 + 8) == -4)
                {
                  break;
                }
              }
            }
          }
        }

LABEL_17:
        if (v12)
        {
          v6 = v14;
        }

        v8 = v14;
        v13 += 24;
        ++v14;
        v12 = 0;
        if (v14 >= v11)
        {
          if (v11 <= Range + 1)
          {
            v19 = Range + 1;
          }

          else
          {
            v19 = v11;
          }

          v8 = v19 - 1;
          goto LABEL_32;
        }
      }

      v17 = *(v15 + v13 + 16);
      if ((v17 | v12))
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      v18 = v8 - v6;
      if (v5)
      {
        CPIndexSetAddRange(v5, v6, v18 + 1);
      }

      else
      {
        v5 = CPIndexSetCreateWithRange(v6, v18 + 1);
      }

      v12 = 1;
LABEL_25:
      Range = v14 + 1;
      if (v14 + 1 < v11)
      {
        continue;
      }

      break;
    }

    if ((v12 & 1) == 0)
    {
      v19 = v8 + 1;
LABEL_32:
      if (v5)
      {
        CPIndexSetAddRange(v5, v6, v19 - v6);
      }

      else
      {
        v5 = CPIndexSetCreateWithRange(v6, v19 - v6);
      }
    }

LABEL_35:
    ++v7;
  }

  while (v7 != v4);
  return v5;
}

uint64_t CGPDFLayoutGetRangeFromStringRange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return -1;
  }

  v23 = v3;
  v24 = v4;
  if (*(a1 + 72))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    CGPDFLayoutGetRTLData(&v20, a1);
    v8 = a2 + a3;
    if ((a2 + a3) <= v22)
    {
      v9 = *(v21 + 4 * a2);
      v10 = a3 - 1;
      if (a3 == 1)
      {
        v11 = *(v21 + 4 * a2);
      }

      else
      {
        v15 = (v21 + 4 * a2 + 4);
        v11 = *(v21 + 4 * a2);
        do
        {
          v17 = *v15++;
          v16 = v17;
          if (v9 <= v17)
          {
            v18 = v16;
          }

          else
          {
            v18 = v9;
          }

          v19 = v11 <= v16;
          if (v11 >= v16)
          {
            v11 = v16;
          }

          if (v19)
          {
            v9 = v18;
          }

          --v10;
        }

        while (v10);
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        if (v9 < *(a1 + 48))
        {
          return v11;
        }

        else
        {
          return -1;
        }
      }

      return -1;
    }
  }

  else
  {
    v8 = a2 + a3;
  }

  CharacterIndexAtUnicodeIndex = CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(*(a1 + 56), a2);
  v14 = CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(*(a1 + 56), v8);
  if (CharacterIndexAtUnicodeIndex < 0)
  {
    return -1;
  }

  if (v14 <= *(a1 + 48) && v14 > CharacterIndexAtUnicodeIndex)
  {
    return CharacterIndexAtUnicodeIndex;
  }

  else
  {
    return -1;
  }
}

BOOL CGPDFLayoutExtendRangeToWordBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 40))
  {
    CPIndexSetNormalize(a2);
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  Range = CPIndexSetGetRange(a2, 0);
  v57 = v10;
  v58 = Range;
  v11 = CPIndexSetGetRange(a2, v8 - 1);
  v13 = v12;
  FirstIndex = CPIndexSetGetFirstIndex(a2);
  LastIndex = CPIndexSetGetLastIndex(a2);
  v16 = 0;
  if (LastIndex != -1 && FirstIndex != -1 && FirstIndex <= LastIndex)
  {
    v55 = v13;
    v17 = LastIndex + 1 - FirstIndex;
    v59 = FirstIndex;
    v60 = v17;
    v18 = a4 ? a3 : a3 - (a3 - FirstIndex > LastIndex + 1 - a3);
    v19 = a4 ? a4 : 1;
    StringRangeFromRange = CGPDFLayoutGetStringRangeFromRange(a1, v18, v19);
    v56 = v21;
    v22 = CGPDFLayoutGetStringRangeFromRange(a1, FirstIndex, v17);
    v24 = v23;
    v16 = 1;
    StringForRanges = CGPDFLayoutCreateStringForRanges(a1, &v59, 1);
    if (StringForRanges)
    {
      v26 = StringForRanges;
      if (StringRangeFromRange < 0)
      {
        goto LABEL_44;
      }

      if (v24 < 1)
      {
        goto LABEL_44;
      }

      v61.length = CFStringGetLength(StringForRanges);
      v61.location = 0;
      length = v61.length;
      v27 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], v26, v61, 4uLL, 0);
      if (!v27)
      {
        goto LABEL_44;
      }

      v28 = v27;
      v53 = v11;
      v29 = CFStringTokenizerGoToTokenAtIndex(v27, StringRangeFromRange - v22);
      location = CFStringTokenizerGetCurrentTokenRange(v28).location;
      if (v29)
      {
        v31 = location <= 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = !v31;
      if (v32 == 1)
      {
        v31 = v24 <= location;
        v24 -= location;
        if (v31)
        {
          CFRelease(v28);
          goto LABEL_44;
        }

        v22 += location;
      }

      if ((v22 & 0x8000000000000000) != 0 || (v33 = CFStringTokenizerGoToTokenAtIndex(v28, ~(v22 + v24) + v56 + StringRangeFromRange + length), CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v28), !v33) || (v35 = length - (CurrentTokenRange.length + CurrentTokenRange.location), v35 < 1))
      {
        CFRelease(v28);
        if (!v32)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v24 -= v35;
        CFRelease(v28);
        if (v24 < 1)
        {
          goto LABEL_44;
        }
      }

      RangeFromStringRange = CGPDFLayoutGetRangeFromStringRange(a1, v22, v24);
      v38 = v53;
      if ((RangeFromStringRange & 0x8000000000000000) == 0)
      {
        v39 = RangeFromStringRange - v59;
        if (RangeFromStringRange - v59 < 1)
        {
          v42 = v55;
        }

        else
        {
          v40 = v39 + v58;
          v41 = v57 - v39;
          if (v57 - v39 < 1)
          {
            v41 = 0;
            v40 = -1;
          }

          v42 = v55;
          if (*(a2 + 16) >= 1)
          {
            v43 = *(a2 + 32);
            *v43 = v40;
            v43[1] = v41;
            *(a2 + 40) = 1;
          }

          if (v8 == 1)
          {
            v38 = v40;
            v42 = v41;
          }
        }

        if (v38 < 0 || (v45 = v59 - (RangeFromStringRange + v37) + v60, v45 < 1))
        {
          CFRelease(v26);
          if (v39 < 1)
          {
            return 1;
          }
        }

        else
        {
          if (*(a2 + 16) >= v8)
          {
            v46 = v42 - v45;
            if (v46 >= 1)
            {
              v47 = v38;
            }

            else
            {
              v46 = 0;
              v47 = -1;
            }

            v48 = (*(a2 + 32) + 16 * (v8 - 1));
            *v48 = v47;
            v48[1] = v46;
            *(a2 + 40) = 1;
          }

          CFRelease(v26);
        }

        v49 = CPIndexSetGetFirstIndex(a2);
        v50 = CPIndexSetGetLastIndex(a2);
        return v49 != -1 && v50 != -1 && v49 <= v50;
      }

LABEL_44:
      CFRelease(v26);
      return 1;
    }
  }

  return v16;
}

uint64_t CGPDFLayoutGetStringRangeFromRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return -1;
  }

  v22 = v3;
  v23 = v4;
  if (*(a1 + 72) == 1 && (v19 = 0, v20 = 0, v21 = 0, CGPDFLayoutGetRTLData(&v19, a1), v21 >= 1))
  {
    v8 = 0;
    v9 = a2 + a3;
    while (1)
    {
      v10 = *(v20 + 4 * v8);
      if (a2 <= v10 && v9 > v10)
      {
        break;
      }

      if (v21 == ++v8)
      {
        v8 = v21;
        break;
      }
    }

    v12 = (v21 - 1);
    if (v8 < v12)
    {
      while (1)
      {
        v13 = *(v20 + 4 * v12);
        if (a2 <= v13 && v9 > v13)
        {
          break;
        }

        if (--v12 <= v8)
        {
          v12 = v8;
          break;
        }
      }
    }

    if (v12 < v8)
    {
      return -1;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    UnicodeRangeAtCharacterIndex = CPMultiUnicodesGetUnicodeRangeAtCharacterIndex(*(a1 + 56), a2);
    v17 = CPMultiUnicodesGetUnicodeRangeAtCharacterIndex(*(a1 + 56), a2 + a3 - 1);
    if (UnicodeRangeAtCharacterIndex >= 0 && v17 + v18 > UnicodeRangeAtCharacterIndex)
    {
      return UnicodeRangeAtCharacterIndex;
    }

    else
    {
      return -1;
    }
  }
}

__CFString *CGPDFLayoutCreateStringForRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = 0;
  v46 = 32;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v40 = a3 - 1;
      if (a3 >= 1)
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        if (Mutable)
        {
          v6 = 0;
          v38 = *(a1 + 72);
          v45 = 13;
          v39 = v4;
          do
          {
            v42 = v6;
            v7 = (v4 + 16 * v6);
            v8 = *v7;
            v9 = v7[1];
            if (v38)
            {
              if (v9)
              {
                v10 = v8 + v9;
                while (1)
                {
                  appended = CPTextServicesAppendTextLine(Mutable, a1, v8, v9, 0, 0);
                  v9 = v10 - appended;
                  if (v10 <= appended)
                  {
                    break;
                  }

                  v8 = appended;
                  if (appended < 1 || *(a1 + 48) < appended)
                  {
                    LOWORD(v12) = 0;
                  }

                  else
                  {
                    v12 = *(a1 + 24);
                    if (v12)
                    {
                      v12 = *(v12 + 24 * appended - 24);
                      if (v12)
                      {
                        LOWORD(v12) = *(v12 + 8);
                      }
                    }
                  }

                  chars = v12;
                  CFStringAppendCharacters(Mutable, &chars, 1);
                }
              }
            }

            else
            {
              RangeInCharacterRange = CPMultiUnicodesGetRangeInCharacterRange(*(a1 + 56), v8, v9);
              v15 = RangeInCharacterRange == 0x7FFFFFFFFFFFFFFFLL;
              v16 = v14 == 0;
              if (v15 && v16)
              {
                v17 = 0;
              }

              else
              {
                v17 = RangeInCharacterRange;
              }

              if (v15 && v16)
              {
                v18 = 0;
              }

              else
              {
                v18 = RangeInCharacterRange + v14;
              }

              if (v17 <= v18)
              {
                v19 = v8 - 1;
                v43 = v9 + v8;
                do
                {
                  v20 = v19;
                  v19 = v43;
                  if (v17 < v18)
                  {
                    v21 = *(a1 + 56);
                    if (v21 && (v22 = *(v21 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v22, v17)) != 0)
                    {
                      v19 = *ValueAtIndex;
                    }

                    else
                    {
                      v19 = 0;
                    }
                  }

                  v24 = v20 + 1;
                  if (v20 + 1 < v19)
                  {
                    v25 = 24 * v20 + 24;
                    do
                    {
                      if (v24 >= *(a1 + 48))
                      {
                        break;
                      }

                      v26 = *(*(a1 + 24) + v25);
                      if (v26)
                      {
                        v44 = *(v26 + 8);
                        v27 = v44 == 65532 ? &v46 : &v44;
                      }

                      else
                      {
                        v44 = 0;
                        v27 = &v44;
                      }

                      CFStringAppendCharacters(Mutable, v27, 1);
                      ++v24;
                      v25 += 24;
                    }

                    while (v19 != v24);
                  }

                  if (v17 < v18)
                  {
                    v28 = *(a1 + 56);
                    if (v28)
                    {
                      v29 = *(v28 + 24);
                      if (v29)
                      {
                        v30 = CFArrayGetValueAtIndex(v29, v17);
                        if (v30)
                        {
                          v31 = v30[2];
                          if (v31)
                          {
                            v32 = v30[3];
                            v33 = v32;
                            do
                            {
                              v34 = *v33++;
                              if (v34 == -4)
                              {
                                v35 = &v46;
                              }

                              else
                              {
                                v35 = v32;
                              }

                              CFStringAppendCharacters(Mutable, v35, 1);
                              v32 = v33;
                              --v31;
                            }

                            while (v31);
                          }
                        }
                      }
                    }
                  }
                }

                while (v17++ != v18);
              }
            }

            if (v42 < v40)
            {
              CFStringAppendCharacters(Mutable, &v45, 1);
            }

            v6 = v42 + 1;
            v4 = v39;
          }

          while (v42 + 1 != a3);
        }
      }
    }
  }

  return Mutable;
}

uint64_t CGPDFLayoutGetPairedIndexForCursor(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, _BYTE *a5, BOOL *a6, double a7, float64_t a8, double a9)
{
  v16 = *a2;
  if (v16 < 0 || *(a1 + 48) <= v16)
  {
    LODWORD(v17) = 0;
    if (a3)
    {
LABEL_6:
      if ((v17 & 0x404) == 0x400)
      {
        v18 = v16 + 1;
        if (v16 < -1 || v18 >= *(a1 + 48))
        {
          goto LABEL_31;
        }

        v20 = *(a1 + 24);
        if (!v20 || (*(v20 + 24 * v18 + 16) & 4) == 0)
        {
          goto LABEL_31;
        }

LABEL_24:
        *a2 = v18;
        v16 = v18;
        goto LABEL_26;
      }

      if ((v17 >> 2))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      LODWORD(v17) = *(v17 + 24 * v16 + 16);
    }

    if (a3)
    {
      goto LABEL_6;
    }
  }

  if ((v17 & 0x408) == 0x400)
  {
    v18 = v16 - 1;
    if (v16 < 1)
    {
      goto LABEL_32;
    }

    if (*(a1 + 48) < v16)
    {
      goto LABEL_32;
    }

    v21 = *(a1 + 24);
    if (!v21 || (*(v21 + 24 * v18 + 16) & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (((v17 >> 3) & 1) == 0)
  {
LABEL_16:
    if (a3)
    {
LABEL_31:
      IndexFromStringIndex = v16 - (v16 > 0);
LABEL_35:
      *a5 = 1;
LABEL_36:
      *a6 = 1;
      return IndexFromStringIndex;
    }

LABEL_32:
    if (v16 + 1 >= *(a1 + 48))
    {
      IndexFromStringIndex = v16;
    }

    else
    {
      IndexFromStringIndex = v16 + 1;
    }

    goto LABEL_35;
  }

LABEL_26:
  v22 = *(a1 + 104);
  NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(v22, v16, 1);
  if (!NodeContainingTextRange)
  {
LABEL_30:
    v16 = *a2;
    if (a3)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v24 = NodeContainingTextRange;
  while (*v24 != 514)
  {
    v24 = *(v24 + 8);
    if (!v24)
    {
      goto LABEL_30;
    }
  }

  HitTestRect = CGPDFNodeGetHitTestRect(v24, a9);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  Rotation = CGPDFNodeGetRotation(v24);
  v35.f64[0] = a7;
  v35.f64[1] = a8;
  v36 = v35;
  v101 = v35;
  if (Rotation != 0.0)
  {
    v38 = __sincos_stret(Rotation);
    v37.f64[0] = v38.__cosval;
    v37.f64[1] = -v38.__sinval;
    v36 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v38, v101, 1), v37, a7), 0);
  }

  v39 = v29 > v36.f64[1] || v36.f64[1] > v29 + v33;
  v99 = v36.f64[0];
  if (v39)
  {
    *a5 = 0;
    goto LABEL_46;
  }

  if (a3 && v36.f64[0] <= HitTestRect + v31)
  {
    *a5 = 1;
  }

  else
  {
    *a5 = (v36.f64[0] >= HitTestRect) & ~a3;
    if (((v36.f64[0] >= HitTestRect) & ~a3) == 0)
    {
      goto LABEL_46;
    }
  }

  IndexFromStringIndex = *a2;
  CharacterBounds = CGPDFLayoutGetCharacterBounds(a1, *a2);
  if (a3 && v99 >= CharacterBounds - a9 || (a3 & 1) == 0 && v99 <= CharacterBounds + v73 + a9)
  {
    goto LABEL_36;
  }

LABEL_46:
  TextRange = CGPDFNodeGetTextRange(v24);
  v42 = v41;
  StringDirectionFromCursorRange = CGPDFLayoutGetStringDirectionFromCursorRange(a1, TextRange, v41);
  if (a3)
  {
    if (StringDirectionFromCursorRange & 1) == 0 && (*a5)
    {
      goto LABEL_61;
    }
  }

  else if ((StringDirectionFromCursorRange & 1) != 0 || *a5 != 1)
  {
LABEL_61:
    if (*(a1 + 72) == 1)
    {
      StringRangeFromRange = CGPDFLayoutGetStringRangeFromRange(a1, TextRange, v42);
      *a2 = CGPDFLayoutGetIndexFromStringIndex(a1, v64 + StringRangeFromRange - 1);
    }

    NodeAfter = CGPDFNodeGetNodeAfter(v22, v24, 514, a4);
    if (NodeAfter)
    {
      v66 = NodeAfter;
      IndexFromStringIndex = CGPDFNodeGetTextRange(NodeAfter);
      v68 = v67;
      v69 = CGPDFLayoutGetStringRangeFromRange(a1, IndexFromStringIndex, v67);
      v71 = v69;
      if (a3)
      {
        *a6 = 0;
LABEL_103:
        v92 = a1;
        v91 = v71;
        goto LABEL_104;
      }

      v98 = v70;
      v74 = v69;
      v75 = CGPDFNodeGetHitTestRect(v66, a9);
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = CGPDFNodeGetRotation(v66);
      if (v82 == 0.0)
      {
        v85 = v101;
      }

      else
      {
        v84 = __sincos_stret(v82);
        v83.f64[0] = v84.__cosval;
        v83.f64[1] = -v84.__sinval;
        v85 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v84, v101, 1), v83, a7), 0);
      }

      if (v77 > v85.f64[1] || v85.f64[1] > v77 + v81)
      {
        goto LABEL_101;
      }

      *a6 = v85.f64[0] <= v75 + v79;
      if (v85.f64[0] > v75 + v79)
      {
        goto LABEL_102;
      }

      v103 = v85.f64[0];
      if (v85.f64[0] < CGPDFLayoutGetCharacterBounds(a1, IndexFromStringIndex) - a9)
      {
        if ((*a5 & 1) == 0)
        {
          goto LABEL_98;
        }

        if (vabdd_f64(v99 - HitTestRect, v31) > vabdd_f64(v75, v103))
        {
          *a5 = 0;
          if (*a6)
          {
LABEL_98:
            v93 = CGPDFLayoutGetStringDirectionFromCursorRange(a1, IndexFromStringIndex, v68);
            v71 = v74;
            if ((v93 & 1) == 0)
            {
              IndexFromStringIndex = CGPDFLayoutGetIndexFromStringIndex(a1, v98 + v74 - 1);
              *a2 = IndexFromStringIndex;
              *a5 = 1;
              v94 = CGPDFNodeGetNodeAfter(v22, v66, 514, a4);
              *a6 = 0;
              if (!v94)
              {
                return IndexFromStringIndex;
              }

              v95 = CGPDFNodeGetTextRange(v94);
              v71 = CGPDFLayoutGetStringRangeFromRange(a1, v95, v96);
            }

            goto LABEL_103;
          }

LABEL_102:
          v71 = v74;
          goto LABEL_103;
        }

LABEL_101:
        *a6 = 0;
        goto LABEL_102;
      }

LABEL_107:
      *a2 = IndexFromStringIndex;
      goto LABEL_35;
    }

LABEL_66:
    IndexFromStringIndex = *a2;
    *a6 = 0;
    return IndexFromStringIndex;
  }

  if (*(a1 + 72) == 1)
  {
    v44 = CGPDFLayoutGetStringRangeFromRange(a1, TextRange, v42);
    *a2 = CGPDFLayoutGetIndexFromStringIndex(a1, v44);
  }

  NodeBefore = CGPDFNodeGetNodeBefore(v22, v24, 514, a4);
  if (!NodeBefore)
  {
    goto LABEL_66;
  }

  v46 = NodeBefore;
  v47 = CGPDFNodeGetTextRange(NodeBefore);
  v97 = v48;
  v50 = CGPDFLayoutGetStringRangeFromRange(a1, v47, v48);
  if (a3)
  {
    v51 = v49;
    v52 = CGPDFNodeGetHitTestRect(v46, a9);
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = CGPDFNodeGetRotation(v46);
    if (v59 == 0.0)
    {
      v62 = v101;
    }

    else
    {
      v61 = __sincos_stret(v59);
      v60.f64[0] = v61.__cosval;
      v60.f64[1] = -v61.__sinval;
      v62 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v61, v101, 1), v60, a7), 0);
    }

    if (v54 <= v62.f64[1] && v62.f64[1] <= v54 + v58)
    {
      *a6 = v62.f64[0] >= v52;
      if (v62.f64[0] < v52)
      {
        goto LABEL_88;
      }

      v105 = v50;
      IndexFromStringIndex = v97 + v47 - 1;
      v102 = v62.f64[0];
      v86 = CGPDFLayoutGetCharacterBounds(a1, IndexFromStringIndex);
      if (v102 <= v86 + v87 + a9)
      {
        goto LABEL_107;
      }

      v50 = v105;
      if ((*a5 & 1) == 0)
      {
LABEL_84:
        if ((CGPDFLayoutGetStringDirectionFromCursorRange(a1, v47, v97) & 1) == 0)
        {
          IndexFromStringIndex = CGPDFLayoutGetIndexFromStringIndex(a1, v105);
          *a2 = IndexFromStringIndex;
          *a5 = 1;
          v88 = CGPDFNodeGetNodeBefore(v22, v46, 514, a4);
          *a6 = 0;
          if (!v88)
          {
            return IndexFromStringIndex;
          }

          v89 = CGPDFNodeGetTextRange(v88);
          v50 = CGPDFLayoutGetStringRangeFromRange(a1, v89, v90);
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (vabdd_f64(HitTestRect, v99) > vabdd_f64(v102 - v52, v56))
      {
        *a5 = 0;
        if (*a6)
        {
          goto LABEL_84;
        }

LABEL_88:
        v49 = v51;
        goto LABEL_89;
      }
    }

    *a6 = 0;
    goto LABEL_88;
  }

  *a6 = 0;
LABEL_89:
  v91 = v50 + v49 - 1;
  v92 = a1;
LABEL_104:

  return CGPDFLayoutGetIndexFromStringIndex(v92, v91);
}

uint64_t CGPDFLayoutReadsLeftToRightAtIndex(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 1;
  }

  if (*(a1 + 48) <= a2)
  {
    return 1;
  }

  if (*(a1 + 72) != 1)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  CGPDFLayoutGetRTLData(&v18, a1);
  v4 = v20;
  if (v20 < 1)
  {
    return 1;
  }

  v5 = 1;
  StringRangeFromRange = CGPDFLayoutGetStringRangeFromRange(a1, a2, 1);
  if ((StringRangeFromRange & 0x8000000000000000) == 0)
  {
    v8 = a2;
    if (StringRangeFromRange)
    {
      v8 = *(v19 + 4 * StringRangeFromRange - 4);
    }

    v9 = a2;
    if (StringRangeFromRange + v7 < v4)
    {
      v9 = *(v19 + 4 * (StringRangeFromRange + v7));
    }

    if (v8 == a2)
    {
      return v9 >= a2;
    }

    else
    {
      v11 = __OFSUB__(v9, a2);
      v12 = v9 - a2;
      if (v12)
      {
        if ((v12 < 0) ^ v11 | (v12 == 0))
        {
          v13 = 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = v8 - a2 < 0;
        v15 = v8 < a2;
        v16 = v8 - a2;
        v17 = v15;
        if (v14)
        {
          v16 = -v16;
        }

        if (v12 < 0)
        {
          v12 = -v12;
        }

        if (v16 >= v12)
        {
          return v13;
        }

        else
        {
          return v17;
        }
      }

      else
      {
        return v8 < a2;
      }
    }
  }

  return v5;
}