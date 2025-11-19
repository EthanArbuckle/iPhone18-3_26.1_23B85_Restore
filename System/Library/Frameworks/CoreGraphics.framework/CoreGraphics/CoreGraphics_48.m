void WF_mark_constmask(uint64_t a1, int a2, double a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 136);
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = COERCE_FLOAT(bswap32(*v6));
  }

  else
  {
    v7 = 1.0;
  }

  v8 = **(a1 + 88);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  v12 = *(a1 + 16);
  if (v4)
  {
    v13 = *(a1 + 32) >> 2;
    v14 = (v4 + 4 * v13 * v12 + 4 * v11);
    v15 = 1;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    if (!v5)
    {
      return;
    }
  }

  v16 = v13 - v9;
  if (v4)
  {
    v17 = v13 - v9;
  }

  else
  {
    v17 = v13;
  }

  v18 = COERCE_FLOAT(bswap32(v8));
  v19 = *(a1 + 28) >> 2;
  *v3.i32 = v18;
  v20 = (*(a1 + 40) + 4 * v19 * v12 + 4 * v11);
  v21 = *(a1 + 124);
  v22 = v5 + *(a1 + 108) * v21 + *(a1 + 104);
  v23 = v21 - v9;
  v24 = v19 - v9;
  v372 = v18;
  v371 = v24;
  v25 = v23;
  v26 = *(a1 + 4);
  v27 = v17;
  switch(a2)
  {
    case 0:
      if (v4)
      {
        v28 = 4 * v15;
        do
        {
          v29 = v9;
          do
          {
            v30 = *v22;
            if (*v22)
            {
              if (v30 == 255)
              {
                *v14 = 0;
                *v20 = 0;
              }

              else
              {
                v31 = (v30 ^ 0xFFu) * 0.0039216;
                v32 = bswap32(COERCE_UNSIGNED_INT(v31 * COERCE_FLOAT(bswap32(*v14))));
                *v20 = bswap32(COERCE_UNSIGNED_INT(v31 * COERCE_FLOAT(bswap32(*v20))));
                *v14 = v32;
              }
            }

            ++v22;
            ++v20;
            v14 = (v14 + v28);
            --v29;
          }

          while (v29);
          v22 += v23;
          v20 += v24;
          v14 += v17;
          --v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v273 = v9;
          do
          {
            v274 = *v22;
            if (*v22)
            {
              if (v274 == 255)
              {
                *v20 = 0;
              }

              else
              {
                *v20 = bswap32(COERCE_UNSIGNED_INT(((v274 ^ 0xFFu) * 0.0039216) * COERCE_FLOAT(bswap32(*v20))));
              }
            }

            ++v22;
            ++v20;
            --v273;
          }

          while (v273);
          v22 += v23;
          v20 += v24;
          --v10;
        }

        while (v10);
      }

      return;
    case 1:
      v144 = v22 & 3;
      if (!v4)
      {
        v275 = -1 << (8 * v144);
        if ((v22 & 3) != 0)
        {
          v276 = v22 & 0xFC;
        }

        else
        {
          v276 = v22;
        }

        if ((v22 & 3) != 0)
        {
          v277 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v275 = -1;
          v277 = v22;
        }

        if ((v22 & 3) != 0)
        {
          v278 = &v20[-(v22 & 3)];
        }

        else
        {
          v278 = v20;
        }

        if ((v22 & 3) != 0)
        {
          v279 = v144 + v9;
        }

        else
        {
          v279 = v9;
        }

        if (((v279 + v276) & 3) != 0)
        {
          v280 = 4 - ((v279 + v276) & 3);
          v144 += v280;
          v281 = 0xFFFFFFFF >> (8 * v280);
          if (v279 >= 4)
          {
            v282 = v281;
          }

          else
          {
            v282 = 0;
          }

          if (v279 >= 4)
          {
            v281 = -1;
          }

          v275 &= v281;
        }

        else
        {
          v282 = 0;
        }

        v359 = v23 - v144;
        v360 = v279 >> 2;
        v361 = vdupq_n_s32(v8);
        v362 = v24 - v144;
        while (1)
        {
          v363 = *v277 & v275;
          v364 = v360;
          v365 = v282;
          if (!v363)
          {
            goto LABEL_555;
          }

LABEL_553:
          if (v363 == -1)
          {
            *v278 = v361;
            goto LABEL_555;
          }

          while (1)
          {
            if (v363)
            {
              v367 = v8;
              if (v363 != 255)
              {
                v367 = bswap32(COERCE_UNSIGNED_INT(((v363 * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(*v278)) * (1.0 - (v363 * 0.0039216)))));
              }

              *v278 = v367;
            }

            if (BYTE1(v363))
            {
              v368 = v8;
              if (BYTE1(v363) != 255)
              {
                v368 = bswap32(COERCE_UNSIGNED_INT(((BYTE1(v363) * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v278[1])) * (1.0 - (BYTE1(v363) * 0.0039216)))));
              }

              v278[1] = v368;
            }

            if (BYTE2(v363))
            {
              v369 = v8;
              if (BYTE2(v363) != 255)
              {
                v369 = bswap32(COERCE_UNSIGNED_INT(((BYTE2(v363) * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v278[2])) * (1.0 - (BYTE2(v363) * 0.0039216)))));
              }

              v278[2] = v369;
            }

            v370 = HIBYTE(v363);
            if (v370 == 255)
            {
              v278[3] = v8;
            }

            else if (v370)
            {
              v278[3] = bswap32(COERCE_UNSIGNED_INT(((v370 * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v278[3])) * (1.0 - (v370 * 0.0039216)))));
            }

LABEL_555:
            while (1)
            {
              v366 = v364;
              v278 += 4;
              --v364;
              ++v277;
              if (v366 < 2)
              {
                break;
              }

              v363 = *v277;
              if (*v277)
              {
                goto LABEL_553;
              }
            }

            if (!v365)
            {
              break;
            }

            v365 = 0;
            v363 = *v277 & v282;
          }

          v277 = (v277 + v359);
          v278 += v362;
          if (!--v10)
          {
            return;
          }
        }
      }

      v145 = -1 << (8 * v144);
      v146 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      v147 = 4 * (v22 & 3);
      v148 = &v20[v147 / 0xFFFFFFFFFFFFFFFCLL];
      v149 = &v14[v147 / 0xFFFFFFFFFFFFFFFCLL];
      if ((v22 & 3) != 0)
      {
        v150 = v22 & 0xFC;
      }

      else
      {
        v150 = v22;
      }

      if ((v22 & 3) != 0)
      {
        v151 = v144 + v9;
      }

      else
      {
        v145 = -1;
        v146 = v22;
        v149 = v14;
        v148 = v20;
        v151 = v9;
      }

      if (((v151 + v150) & 3) != 0)
      {
        v152 = 4 - ((v151 + v150) & 3);
        v144 += v152;
        v153 = 0xFFFFFFFF >> (8 * v152);
        if (v151 >= 4)
        {
          v154 = v153;
        }

        else
        {
          v154 = 0;
        }

        if (v151 >= 4)
        {
          v153 = -1;
        }

        v145 &= v153;
      }

      else
      {
        v154 = 0;
      }

      v314 = v23 - v144;
      v315 = v151 >> 2;
      v316 = v24 - v144;
      v317 = bswap32(LODWORD(v7));
      v318 = v16 - v144;
      do
      {
        v319 = *v146 & v145;
        v320 = v315;
        v321 = v154;
        if (!v319)
        {
          goto LABEL_506;
        }

LABEL_504:
        if (v319 == -1)
        {
          *v148 = v8;
          *v149 = v317;
          v148[1] = v8;
          v149[1] = v317;
          v148[2] = v8;
          v149[2] = v317;
LABEL_524:
          v148[3] = v8;
          v149[3] = v317;
          goto LABEL_506;
        }

        while (1)
        {
          if (v319)
          {
            v323 = v8;
            v324 = v317;
            if (v319 != 255)
            {
              v325 = v319 * 0.0039216;
              v326 = v325 * *v3.i32;
              v327 = v7 * v325;
              v328 = 1.0 - v325;
              v323 = bswap32(COERCE_UNSIGNED_INT(v326 + (COERCE_FLOAT(bswap32(*v148)) * v328)));
              v324 = bswap32(COERCE_UNSIGNED_INT(v327 + (COERCE_FLOAT(bswap32(*v149)) * v328)));
            }

            *v148 = v323;
            *v149 = v324;
          }

          if (BYTE1(v319))
          {
            v329 = v8;
            v330 = v317;
            if (BYTE1(v319) != 255)
            {
              v331 = BYTE1(v319) * 0.0039216;
              v332 = v331 * *v3.i32;
              v333 = v7 * v331;
              v334 = 1.0 - v331;
              v329 = bswap32(COERCE_UNSIGNED_INT(v332 + (COERCE_FLOAT(bswap32(v148[1])) * v334)));
              v330 = bswap32(COERCE_UNSIGNED_INT(v333 + (COERCE_FLOAT(bswap32(v149[1])) * v334)));
            }

            v148[1] = v329;
            v149[1] = v330;
          }

          if (BYTE2(v319))
          {
            v335 = v8;
            v336 = v317;
            if (BYTE2(v319) != 255)
            {
              v337 = BYTE2(v319) * 0.0039216;
              v338 = v337 * *v3.i32;
              v339 = v7 * v337;
              v340 = 1.0 - v337;
              v335 = bswap32(COERCE_UNSIGNED_INT(v338 + (COERCE_FLOAT(bswap32(v148[2])) * v340)));
              v336 = bswap32(COERCE_UNSIGNED_INT(v339 + (COERCE_FLOAT(bswap32(v149[2])) * v340)));
            }

            v148[2] = v335;
            v149[2] = v336;
          }

          v341 = HIBYTE(v319);
          if (v341 == 255)
          {
            goto LABEL_524;
          }

          if (v341)
          {
            v342 = v341 * 0.0039216;
            v343 = v342 * *v3.i32;
            v344 = v7 * v342;
            v345 = 1.0 - v342;
            v346 = bswap32(COERCE_UNSIGNED_INT(v344 + (COERCE_FLOAT(bswap32(v149[3])) * v345)));
            v148[3] = bswap32(COERCE_UNSIGNED_INT(v343 + (COERCE_FLOAT(bswap32(v148[3])) * v345)));
            v149[3] = v346;
          }

LABEL_506:
          while (1)
          {
            v322 = v320;
            v148 += 4;
            v149 += 4;
            --v320;
            ++v146;
            if (v322 < 2)
            {
              break;
            }

            v319 = *v146;
            if (*v146)
            {
              goto LABEL_504;
            }
          }

          if (!v321)
          {
            break;
          }

          v321 = 0;
          v319 = *v146 & v154;
        }

        v146 = (v146 + v314);
        v148 += v316;
        v149 += v318;
        --v10;
      }

      while (v10);
      return;
    case 2:
      *&a3 = 1.0 - v7;
      v109 = v22 & 3;
      if (v4)
      {
        v110 = -1 << (8 * v109);
        v111 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        v112 = 4 * (v22 & 3);
        v113 = &v20[v112 / 0xFFFFFFFFFFFFFFFCLL];
        v114 = &v14[v112 / 0xFFFFFFFFFFFFFFFCLL];
        if ((v22 & 3) != 0)
        {
          v115 = v22 & 0xFC;
        }

        else
        {
          v115 = v22;
        }

        if ((v22 & 3) != 0)
        {
          v116 = v109 + v9;
        }

        else
        {
          v110 = -1;
          v111 = v22;
          v114 = v14;
          v113 = v20;
          v116 = *(a1 + 4);
        }

        if (((v116 + v115) & 3) != 0)
        {
          v117 = 4 - ((v116 + v115) & 3);
          v109 += v117;
          v118 = 0xFFFFFFFF >> (8 * v117);
          if (v116 >= 4)
          {
            v119 = v118;
          }

          else
          {
            v119 = 0;
          }

          if (v116 >= 4)
          {
            v118 = -1;
          }

          v110 &= v118;
        }

        else
        {
          v119 = 0;
        }

        v286 = v23 - v109;
        v287 = v24 - v109;
        v288 = v116 >> 2;
        v289 = v16 - v109;
        while (1)
        {
          v290 = *v111 & v110;
          v291 = v288;
          v292 = v119;
          if (!v290)
          {
            goto LABEL_485;
          }

LABEL_483:
          if (v290 == -1)
          {
            break;
          }

          while (1)
          {
            if (v290)
            {
              v299 = v290 * 0.0039216;
              v300 = v299 * *v3.i32;
              v301 = v7 * v299;
              v302 = bswap32(COERCE_UNSIGNED_INT(v301 + (COERCE_FLOAT(bswap32(*v114)) * (1.0 - v301))));
              *v113 = bswap32(COERCE_UNSIGNED_INT(v300 + (COERCE_FLOAT(bswap32(*v113)) * (1.0 - v301))));
              *v114 = v302;
            }

            if ((v290 & 0xFF00) != 0)
            {
              v303 = BYTE1(v290) * 0.0039216;
              v304 = v303 * *v3.i32;
              v305 = v7 * v303;
              v306 = bswap32(COERCE_UNSIGNED_INT(v305 + (COERCE_FLOAT(bswap32(v114[1])) * (1.0 - v305))));
              v113[1] = bswap32(COERCE_UNSIGNED_INT(v304 + (COERCE_FLOAT(bswap32(v113[1])) * (1.0 - v305))));
              v114[1] = v306;
            }

            if ((v290 & 0xFF0000) != 0)
            {
              v307 = BYTE2(v290) * 0.0039216;
              v308 = v307 * *v3.i32;
              v309 = v7 * v307;
              v310 = bswap32(COERCE_UNSIGNED_INT(v309 + (COERCE_FLOAT(bswap32(v114[2])) * (1.0 - v309))));
              v113[2] = bswap32(COERCE_UNSIGNED_INT(v308 + (COERCE_FLOAT(bswap32(v113[2])) * (1.0 - v309))));
              v114[2] = v310;
            }

            v311 = HIBYTE(v290);
            if (v311)
            {
              v312 = v311 * 0.0039216;
              v313 = v7 * v312;
              v296 = (v312 * *v3.i32) + (COERCE_FLOAT(bswap32(v113[3])) * (1.0 - (v7 * v312)));
              v297 = v313 + (COERCE_FLOAT(bswap32(v114[3])) * (1.0 - v313));
              goto LABEL_498;
            }

LABEL_485:
            while (1)
            {
              v298 = v291;
              v113 += 4;
              v114 += 4;
              --v291;
              ++v111;
              if (v298 < 2)
              {
                break;
              }

              v290 = *v111;
              if (*v111)
              {
                goto LABEL_483;
              }
            }

            if (!v292)
            {
              break;
            }

            v292 = 0;
            v290 = *v111 & v119;
          }

          v111 = (v111 + v286);
          v113 += v287;
          v114 += v289;
          if (!--v10)
          {
            return;
          }
        }

        v293 = bswap32(COERCE_UNSIGNED_INT(v7 + (COERCE_FLOAT(bswap32(*v114)) * *&a3)));
        *v113 = bswap32(COERCE_UNSIGNED_INT(*v3.i32 + (COERCE_FLOAT(bswap32(*v113)) * *&a3)));
        *v114 = v293;
        v294 = bswap32(COERCE_UNSIGNED_INT(v7 + (COERCE_FLOAT(bswap32(v114[1])) * *&a3)));
        v113[1] = bswap32(COERCE_UNSIGNED_INT(*v3.i32 + (COERCE_FLOAT(bswap32(v113[1])) * *&a3)));
        v114[1] = v294;
        v295 = bswap32(COERCE_UNSIGNED_INT(v7 + (COERCE_FLOAT(bswap32(v114[2])) * *&a3)));
        v113[2] = bswap32(COERCE_UNSIGNED_INT(*v3.i32 + (COERCE_FLOAT(bswap32(v113[2])) * *&a3)));
        v114[2] = v295;
        v296 = *v3.i32 + (COERCE_FLOAT(bswap32(v113[3])) * *&a3);
        v297 = v7 + (COERCE_FLOAT(bswap32(v114[3])) * *&a3);
LABEL_498:
        v113[3] = bswap32(LODWORD(v296));
        v114[3] = bswap32(LODWORD(v297));
        goto LABEL_485;
      }

      v262 = v109 + v9;
      v263 = -1 << (8 * v109);
      if ((v22 & 3) != 0)
      {
        v264 = v22 & 0xFC;
      }

      else
      {
        v264 = v5 + *(a1 + 108) * v21 + *(a1 + 104);
      }

      if ((v22 & 3) != 0)
      {
        v265 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v263 = -1;
        v265 = (v5 + *(a1 + 108) * v21 + *(a1 + 104));
      }

      if ((v22 & 3) != 0)
      {
        v266 = &v20[-(v22 & 3)];
      }

      else
      {
        v266 = v20;
      }

      if ((v22 & 3) == 0)
      {
        v262 = *(a1 + 4);
      }

      if (((v262 + v264) & 3) != 0)
      {
        v267 = 4 - ((v262 + v264) & 3);
        v109 += v267;
        v268 = 0xFFFFFFFF >> (8 * v267);
        if (v262 >= 4)
        {
          v269 = v268;
        }

        else
        {
          v269 = 0;
        }

        if (v262 >= 4)
        {
          v268 = -1;
        }

        v263 &= v268;
      }

      else
      {
        v269 = 0;
      }

      v347 = v262 >> 2;
      v348 = v23 - v109;
      v349 = vdup_lane_s32(*&a3, 0);
      v350 = vdup_lane_s32(v3, 0);
      v351 = v24 - v109;
      do
      {
        v352 = *v265 & v263;
        v353 = v347;
        v354 = v269;
        if (!v352)
        {
          goto LABEL_534;
        }

LABEL_532:
        if (v352 == -1)
        {
          v355 = v266[1].u32[1];
          v266[1].i32[0] = bswap32(COERCE_UNSIGNED_INT(*v3.i32 + (COERCE_FLOAT(bswap32(v266[1].u32[0])) * *&a3)));
          *v266 = vrev32_s8(vmla_f32(v350, v349, vrev32_s8(*v266)));
          v356 = *v3.i32 + (COERCE_FLOAT(bswap32(v355)) * *&a3);
LABEL_547:
          v266[1].i32[1] = bswap32(LODWORD(v356));
          goto LABEL_534;
        }

        while (1)
        {
          if (v352)
          {
            v266->i32[0] = bswap32(COERCE_UNSIGNED_INT(((v352 * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v266->i32[0])) * (1.0 - (v7 * (v352 * 0.0039216))))));
          }

          if ((v352 & 0xFF00) != 0)
          {
            v266->i32[1] = bswap32(COERCE_UNSIGNED_INT(((BYTE1(v352) * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v266->u32[1])) * (1.0 - (v7 * (BYTE1(v352) * 0.0039216))))));
          }

          if ((v352 & 0xFF0000) != 0)
          {
            v266[1].i32[0] = bswap32(COERCE_UNSIGNED_INT(((BYTE2(v352) * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v266[1].u32[0])) * (1.0 - (v7 * (BYTE2(v352) * 0.0039216))))));
          }

          v358 = HIBYTE(v352);
          if (v358)
          {
            v356 = ((v358 * 0.0039216) * *v3.i32) + (COERCE_FLOAT(bswap32(v266[1].u32[1])) * (1.0 - (v7 * (v358 * 0.0039216))));
            goto LABEL_547;
          }

LABEL_534:
          while (1)
          {
            v357 = v353;
            v266 += 2;
            --v353;
            ++v265;
            if (v357 < 2)
            {
              break;
            }

            v352 = *v265;
            if (*v265)
            {
              goto LABEL_532;
            }
          }

          if (!v354)
          {
            break;
          }

          v354 = 0;
          v352 = *v265 & v269;
        }

        v265 = (v265 + v348);
        v266 = (v266 + 4 * v351);
        --v10;
      }

      while (v10);
      return;
    case 3:
      v128 = 4 * v15;
      do
      {
        v129 = v9;
        do
        {
          v130 = *v22;
          if (*v22)
          {
            if (v130 == 255)
            {
              v131 = COERCE_FLOAT(bswap32(*v14));
              v132 = v18 * v131;
              v133 = v7 * v131;
            }

            else
            {
              v134 = v130 * 0.0039216;
              v135 = COERCE_FLOAT(bswap32(*v14));
              v136 = v7 * (v134 * v135);
              v137 = 1.0 - v134;
              v132 = ((v134 * v135) * v18) + (COERCE_FLOAT(bswap32(*v20)) * (1.0 - v134));
              v133 = v136 + (v135 * v137);
            }

            *v20 = bswap32(LODWORD(v132));
            *v14 = bswap32(LODWORD(v133));
          }

          ++v22;
          ++v20;
          v14 = (v14 + v128);
          --v129;
        }

        while (v129);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        --v10;
      }

      while (v10);
      return;
    case 4:
      v66 = 4 * v15;
      do
      {
        v67 = v9;
        do
        {
          v68 = *v22;
          if (*v22)
          {
            if (v68 == 255)
            {
              v69 = COERCE_FLOAT(bswap32(*v14));
              v70 = (1.0 - v69) * v18;
              v71 = v7 * (1.0 - v69);
            }

            else
            {
              v72 = v68 * 0.0039216;
              v73 = COERCE_FLOAT(bswap32(*v14));
              v74 = v72 * (1.0 - v73);
              v75 = 1.0 - v72;
              v70 = (v74 * v18) + (COERCE_FLOAT(bswap32(*v20)) * (1.0 - v72));
              v71 = (v7 * v74) + (v73 * v75);
            }

            *v20 = bswap32(LODWORD(v70));
            *v14 = bswap32(LODWORD(v71));
          }

          ++v22;
          ++v20;
          v14 = (v14 + v66);
          --v67;
        }

        while (v67);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        --v10;
      }

      while (v10);
      return;
    case 5:
      v172 = 4 * v15;
      do
      {
        v173 = v9;
        do
        {
          if (*v22)
          {
            v174 = COERCE_FLOAT(bswap32(*v14));
            v175 = *v22 * 0.0039216;
            v176 = v175 * v18;
            v177 = v7 * v175;
            *v20 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v177) * COERCE_FLOAT(bswap32(*v20))) + (v176 * v174)));
            *v14 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v177) * v174) + (v177 * v174)));
          }

          ++v22;
          ++v20;
          v14 = (v14 + v172);
          --v173;
        }

        while (v173);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        --v10;
      }

      while (v10);
      return;
    case 6:
      v194 = 4 * v15;
      while (1)
      {
        v195 = v9;
        do
        {
          v196 = *v22;
          if (!*v22)
          {
            goto LABEL_303;
          }

          v197 = COERCE_FLOAT(bswap32(*v14));
          v198 = 1.0 - v197;
          if ((1.0 - v197) >= 1.0)
          {
            v203 = v196 * 0.0039216;
            v201 = v203 * v18;
            v202 = v7 * v203;
          }

          else
          {
            if (v198 <= 0.0)
            {
              goto LABEL_303;
            }

            v199 = v196 * 0.0039216;
            v200 = v7 * v199;
            v201 = COERCE_FLOAT(bswap32(*v20)) + ((v199 * v18) * v198);
            v202 = v197 + (v200 * v198);
          }

          *v20 = bswap32(LODWORD(v201));
          *v14 = bswap32(LODWORD(v202));
LABEL_303:
          ++v22;
          ++v20;
          v14 = (v14 + v194);
          --v195;
        }

        while (v195);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 7:
      if (v4)
      {
        v138 = 4 * v15;
        do
        {
          v139 = v9;
          do
          {
            v140 = *v22;
            if (*v22)
            {
              if (v140 == 255)
              {
                v141 = v7 * COERCE_FLOAT(bswap32(*v20));
                v142 = v7 * COERCE_FLOAT(bswap32(*v14));
              }

              else
              {
                v143 = (v7 * (v140 * 0.0039216)) + (1.0 - (v140 * 0.0039216));
                v141 = v143 * COERCE_FLOAT(bswap32(*v20));
                v142 = v143 * COERCE_FLOAT(bswap32(*v14));
              }

              *v20 = bswap32(LODWORD(v141));
              *v14 = bswap32(LODWORD(v142));
            }

            ++v22;
            ++v20;
            v14 = (v14 + v138);
            --v139;
          }

          while (v139);
          v22 += v23;
          v20 += v24;
          v14 += v17;
          --v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v270 = v9;
          do
          {
            v271 = *v22;
            if (*v22)
            {
              if (v271 == 255)
              {
                v272 = v7 * COERCE_FLOAT(bswap32(*v20));
              }

              else
              {
                v272 = ((v7 * (v271 * 0.0039216)) + (1.0 - (v271 * 0.0039216))) * COERCE_FLOAT(bswap32(*v20));
              }

              *v20 = bswap32(LODWORD(v272));
            }

            ++v22;
            ++v20;
            --v270;
          }

          while (v270);
          v22 += v23;
          v20 += v24;
          --v10;
        }

        while (v10);
      }

      return;
    case 8:
      v218 = 1.0 - v7;
      if (v4)
      {
        v219 = 4 * v15;
        do
        {
          v220 = v9;
          do
          {
            v221 = *v22;
            if (*v22)
            {
              if (v221 == 255)
              {
                v222 = v218 * COERCE_FLOAT(bswap32(*v20));
                v223 = v218 * COERCE_FLOAT(bswap32(*v14));
              }

              else
              {
                v224 = (v7 * (v221 * -0.0039216)) + 1.0;
                v222 = v224 * COERCE_FLOAT(bswap32(*v20));
                v223 = v224 * COERCE_FLOAT(bswap32(*v14));
              }

              *v20 = bswap32(LODWORD(v222));
              *v14 = bswap32(LODWORD(v223));
            }

            ++v22;
            ++v20;
            v14 = (v14 + v219);
            --v220;
          }

          while (v220);
          v22 += v23;
          v20 += v24;
          v14 += v17;
          --v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v283 = v9;
          do
          {
            v284 = *v22;
            if (*v22)
            {
              if (v284 == 255)
              {
                v285 = v218 * COERCE_FLOAT(bswap32(*v20));
              }

              else
              {
                v285 = ((v7 * (v284 * -0.0039216)) + 1.0) * COERCE_FLOAT(bswap32(*v20));
              }

              *v20 = bswap32(LODWORD(v285));
            }

            ++v22;
            ++v20;
            --v283;
          }

          while (v283);
          v22 += v23;
          v20 += v24;
          --v10;
        }

        while (v10);
      }

      return;
    case 9:
      v82 = 4 * v15;
      do
      {
        v83 = v9;
        do
        {
          if (*v22)
          {
            v84 = *v22 * 0.0039216;
            v85 = COERCE_FLOAT(bswap32(*v14));
            v86 = v84 * v18;
            v87 = v7 * v84;
            v88 = (1.0 - v84) + (v7 * v84);
            *v20 = bswap32(COERCE_UNSIGNED_INT((v88 * COERCE_FLOAT(bswap32(*v20))) + (v86 * (1.0 - v85))));
            *v14 = bswap32(COERCE_UNSIGNED_INT((v88 * v85) + (v87 * (1.0 - v85))));
          }

          ++v22;
          ++v20;
          v14 = (v14 + v82);
          --v83;
        }

        while (v83);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        --v10;
      }

      while (v10);
      return;
    case 10:
      v212 = 4 * v15;
      do
      {
        v213 = v9;
        do
        {
          if (*v22)
          {
            v214 = COERCE_FLOAT(bswap32(*v14));
            v215 = *v22 * 0.0039216;
            v216 = v215 * v18;
            v217 = v7 * v215;
            *v20 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v217) * COERCE_FLOAT(bswap32(*v20))) + (v216 * (1.0 - v214))));
            *v14 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v217) * v214) + (v217 * (1.0 - v214))));
          }

          ++v22;
          ++v20;
          v14 = (v14 + v212);
          --v213;
        }

        while (v213);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        --v10;
      }

      while (v10);
      return;
    case 11:
      if (v4)
      {
        v58 = 4 * v15;
        do
        {
          v59 = v9;
          do
          {
            if (*v22)
            {
              v60 = *v22 * 0.0039216;
              v61 = v60 * v18;
              v62 = v7 * v60;
              v63 = COERCE_FLOAT(bswap32(*v20));
              v64 = COERCE_FLOAT(bswap32(*v14));
              v65 = v62 + v64;
              if ((v62 + v64) > 1.0)
              {
                v65 = 1.0;
              }

              *v20 = bswap32(COERCE_UNSIGNED_INT((v62 - v61) + (v65 - (v64 - v63))));
              *v14 = bswap32(LODWORD(v65));
            }

            ++v22;
            ++v20;
            v14 = (v14 + v58);
            --v59;
          }

          while (v59);
          v22 += v23;
          v20 += v24;
          v14 += v17;
          --v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v260 = v9;
          do
          {
            if (*v22)
            {
              *v20 = bswap32(COERCE_UNSIGNED_INT(((v7 * (*v22 * 0.0039216)) - ((*v22 * 0.0039216) * v18)) + COERCE_FLOAT(bswap32(*v20))));
            }

            ++v22;
            ++v20;
            --v260;
          }

          while (v260);
          v22 += v23;
          v20 += v24;
          --v10;
        }

        while (v10);
      }

      return;
    case 12:
      if (v4)
      {
        v76 = 4 * v15;
        do
        {
          v77 = v9;
          do
          {
            if (*v22)
            {
              v78 = *v22 * 0.0039216;
              v79 = v78 * v18;
              v80 = (v7 * v78) + COERCE_FLOAT(bswap32(*v14));
              v81 = v79 + COERCE_FLOAT(bswap32(*v20));
              if (v80 > 1.0)
              {
                v80 = 1.0;
              }

              *v20 = bswap32(LODWORD(v81));
              *v14 = bswap32(LODWORD(v80));
            }

            ++v22;
            ++v20;
            v14 = (v14 + v76);
            --v77;
          }

          while (v77);
          v22 += v23;
          v20 += v24;
          v14 += v17;
          --v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v261 = v9;
          do
          {
            if (*v22)
            {
              *v20 = bswap32(COERCE_UNSIGNED_INT(((*v22 * 0.0039216) * v18) + COERCE_FLOAT(bswap32(*v20))));
            }

            ++v22;
            ++v20;
            --v261;
          }

          while (v261);
          v22 += v23;
          v20 += v24;
          --v10;
        }

        while (v10);
      }

      return;
    case 13:
      v186 = 4 * v15;
      while (1)
      {
        v187 = v9;
        do
        {
          if (*v22)
          {
            v188 = *v22 * 0.0039216;
            v189 = v7 * v188;
            if ((v7 * v188) > 0.0)
            {
              v190 = v188 * v18;
              if (v4)
              {
                v191 = COERCE_FLOAT(bswap32(*v14));
                if (v191 <= 0.0)
                {
                  goto LABEL_290;
                }
              }

              else
              {
                v191 = 1.0;
              }

              v192 = COERCE_FLOAT(bswap32(*v20));
              v193 = (v190 * v192) + (v192 * (1.0 - v189));
              if (v189 == 1.0)
              {
                v193 = v190 * v192;
              }

              v190 = v193 + (v190 * (1.0 - v191));
              if (v191 == 1.0)
              {
                v190 = v193;
              }

              if (v4)
              {
                v189 = (v189 + v191) - (v191 * v189);
LABEL_290:
                *v20 = bswap32(LODWORD(v190));
                *v14 = bswap32(LODWORD(v189));
                goto LABEL_292;
              }

              *v20 = bswap32(LODWORD(v190));
            }
          }

LABEL_292:
          ++v22;
          ++v20;
          v14 = (v14 + v186);
          --v187;
        }

        while (v187);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 14:
      v51 = 4 * v15;
      while (1)
      {
        v52 = v9;
        do
        {
          if (*v22)
          {
            v53 = *v22 * 0.0039216;
            v54 = v7 * v53;
            if ((v7 * v53) > 0.0)
            {
              v55 = v53 * v18;
              if (v4)
              {
                v56 = COERCE_FLOAT(bswap32(*v14));
                if (v56 <= 0.0)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v56 = 1.0;
              }

              v57 = COERCE_FLOAT(bswap32(*v20));
              v55 = v57 + (v55 * (1.0 - v57));
              if (v4)
              {
                v54 = (v54 + v56) - (v56 * v54);
LABEL_72:
                *v20 = bswap32(LODWORD(v55));
                *v14 = bswap32(LODWORD(v54));
                goto LABEL_74;
              }

              *v20 = bswap32(LODWORD(v55));
            }
          }

LABEL_74:
          ++v22;
          ++v20;
          v14 = (v14 + v51);
          --v52;
        }

        while (v52);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 15:
      v120 = 4 * v15;
      while (1)
      {
        v121 = v9;
        do
        {
          if (*v22)
          {
            v122 = *v22 * 0.0039216;
            v123 = v7 * v122;
            if ((v7 * v122) > 0.0)
            {
              v124 = v122 * *v3.i32;
              if (v4)
              {
                v125 = COERCE_FLOAT(bswap32(*v14));
                if (v125 <= 0.0)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v125 = 1.0;
              }

              v126 = PDAoverlayPDA(COERCE_FLOAT(bswap32(*v20)), v125, v124, v123);
              v124 = v126;
              if (v4)
              {
                v123 = v127;
                *v3.i32 = v372;
LABEL_178:
                *v20 = bswap32(LODWORD(v124));
                *v14 = bswap32(LODWORD(v123));
                goto LABEL_180;
              }

              *v20 = bswap32(LODWORD(v126));
              *v3.i32 = v372;
            }
          }

LABEL_180:
          ++v22;
          ++v20;
          v14 = (v14 + v120);
          --v121;
        }

        while (v121);
        v22 += v25;
        v20 += v371;
        v14 += v27;
        --v10;
        v9 = v26;
        if (!v10)
        {
          return;
        }
      }

    case 16:
      v42 = 4 * v15;
      while (1)
      {
        v43 = v9;
        do
        {
          if (*v22)
          {
            v44 = *v22 * 0.0039216;
            v45 = v7 * v44;
            if ((v7 * v44) > 0.0)
            {
              v46 = v44 * v18;
              if (v4)
              {
                v47 = COERCE_FLOAT(bswap32(*v14));
                if (v47 <= 0.0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v47 = 1.0;
              }

              v48 = COERCE_FLOAT(bswap32(*v20));
              v49 = v45 * v48;
              if ((v46 * v47) < (v45 * v48))
              {
                v49 = v46 * v47;
              }

              v50 = v49 + (v48 * (1.0 - v45));
              if (v45 == 1.0)
              {
                v50 = v49;
              }

              v46 = v50 + (v46 * (1.0 - v47));
              if (v47 == 1.0)
              {
                v46 = v50;
              }

              if (v4)
              {
                v45 = (v45 + v47) - (v47 * v45);
LABEL_57:
                *v20 = bswap32(LODWORD(v46));
                *v14 = bswap32(LODWORD(v45));
                goto LABEL_59;
              }

              *v20 = bswap32(LODWORD(v46));
            }
          }

LABEL_59:
          ++v22;
          ++v20;
          v14 = (v14 + v42);
          --v43;
        }

        while (v43);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 17:
      v155 = 4 * v15;
      while (1)
      {
        v156 = v9;
        do
        {
          if (*v22)
          {
            v157 = *v22 * 0.0039216;
            v158 = v7 * v157;
            if ((v7 * v157) > 0.0)
            {
              v159 = v157 * v18;
              if (v4)
              {
                v160 = COERCE_FLOAT(bswap32(*v14));
                if (v160 <= 0.0)
                {
                  goto LABEL_234;
                }
              }

              else
              {
                v160 = 1.0;
              }

              v161 = COERCE_FLOAT(bswap32(*v20));
              v162 = v158 * v161;
              if ((v159 * v160) > (v158 * v161))
              {
                v162 = v159 * v160;
              }

              v163 = v162 + (v161 * (1.0 - v158));
              if (v158 == 1.0)
              {
                v163 = v162;
              }

              v159 = v163 + (v159 * (1.0 - v160));
              if (v160 == 1.0)
              {
                v159 = v163;
              }

              if (v4)
              {
                v158 = (v158 + v160) - (v160 * v158);
LABEL_234:
                *v20 = bswap32(LODWORD(v159));
                *v14 = bswap32(LODWORD(v158));
                goto LABEL_236;
              }

              *v20 = bswap32(LODWORD(v159));
            }
          }

LABEL_236:
          ++v22;
          ++v20;
          v14 = (v14 + v155);
          --v156;
        }

        while (v156);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 18:
      v204 = 4 * v15;
      while (1)
      {
        v205 = v9;
        do
        {
          if (*v22)
          {
            v206 = *v22 * 0.0039216;
            v207 = v7 * v206;
            if ((v7 * v206) > 0.0)
            {
              v208 = v206 * *v3.i32;
              if (v4)
              {
                v209 = COERCE_FLOAT(bswap32(*v14));
                if (v209 <= 0.0)
                {
                  goto LABEL_316;
                }
              }

              else
              {
                v209 = 1.0;
              }

              v210 = PDAcolordodgePDA(COERCE_FLOAT(bswap32(*v20)), v209, v208, v207);
              v208 = v210;
              if (v4)
              {
                v207 = v211;
                *v3.i32 = v372;
LABEL_316:
                *v20 = bswap32(LODWORD(v208));
                *v14 = bswap32(LODWORD(v207));
                goto LABEL_318;
              }

              *v20 = bswap32(LODWORD(v210));
              *v3.i32 = v372;
            }
          }

LABEL_318:
          ++v22;
          ++v20;
          v14 = (v14 + v204);
          --v205;
        }

        while (v205);
        v22 += v25;
        v20 += v371;
        v14 += v27;
        --v10;
        v9 = v26;
        if (!v10)
        {
          return;
        }
      }

    case 19:
      v236 = 4 * v15;
      while (1)
      {
        v237 = v9;
        do
        {
          if (*v22)
          {
            v238 = *v22 * 0.0039216;
            v239 = v7 * v238;
            if ((v7 * v238) > 0.0)
            {
              v240 = v238 * *v3.i32;
              if (v4)
              {
                v241 = COERCE_FLOAT(bswap32(*v14));
                if (v241 <= 0.0)
                {
                  goto LABEL_366;
                }
              }

              else
              {
                v241 = 1.0;
              }

              v242 = PDAcolorburnPDA(COERCE_FLOAT(bswap32(*v20)), v241, v240, v239);
              v240 = *&v242;
              if (v4)
              {
                v239 = v243;
                *v3.i32 = v372;
LABEL_366:
                *v20 = bswap32(LODWORD(v240));
                *v14 = bswap32(LODWORD(v239));
                goto LABEL_368;
              }

              *v20 = bswap32(LODWORD(v242));
              *v3.i32 = v372;
            }
          }

LABEL_368:
          ++v22;
          ++v20;
          v14 = (v14 + v236);
          --v237;
        }

        while (v237);
        v22 += v25;
        v20 += v371;
        v14 += v27;
        --v10;
        v9 = v26;
        if (!v10)
        {
          return;
        }
      }

    case 20:
      v164 = 4 * v15;
      while (1)
      {
        v165 = v9;
        do
        {
          if (*v22)
          {
            v166 = *v22 * 0.0039216;
            v167 = v7 * v166;
            if ((v7 * v166) > 0.0)
            {
              v168 = v166 * *v3.i32;
              if (v4)
              {
                v169 = COERCE_FLOAT(bswap32(*v14));
                if (v169 <= 0.0)
                {
                  goto LABEL_249;
                }
              }

              else
              {
                v169 = 1.0;
              }

              v170 = PDAsoftlightPDA(COERCE_FLOAT(bswap32(*v20)), v169, v168, v167);
              v168 = v170;
              if (v4)
              {
                v167 = v171;
                *v3.i32 = v372;
LABEL_249:
                *v20 = bswap32(LODWORD(v168));
                *v14 = bswap32(LODWORD(v167));
                goto LABEL_251;
              }

              *v20 = bswap32(LODWORD(v170));
              *v3.i32 = v372;
            }
          }

LABEL_251:
          ++v22;
          ++v20;
          v14 = (v14 + v164);
          --v165;
        }

        while (v165);
        v22 += v25;
        v20 += v371;
        v14 += v27;
        --v10;
        v9 = v26;
        if (!v10)
        {
          return;
        }
      }

    case 21:
      v178 = 4 * v15;
      while (1)
      {
        v179 = v9;
        do
        {
          if (*v22)
          {
            v180 = *v22 * 0.0039216;
            v181 = v7 * v180;
            if ((v7 * v180) > 0.0)
            {
              v182 = v180 * *v3.i32;
              if (v4)
              {
                v183 = COERCE_FLOAT(bswap32(*v14));
                if (v183 <= 0.0)
                {
                  goto LABEL_271;
                }
              }

              else
              {
                v183 = 1.0;
              }

              v184 = PDAhardlightPDA(COERCE_FLOAT(bswap32(*v20)), v183, v182, v181);
              v182 = v184;
              if (v4)
              {
                v181 = v185;
                *v3.i32 = v372;
LABEL_271:
                *v20 = bswap32(LODWORD(v182));
                *v14 = bswap32(LODWORD(v181));
                goto LABEL_273;
              }

              *v20 = bswap32(LODWORD(v184));
              *v3.i32 = v372;
            }
          }

LABEL_273:
          ++v22;
          ++v20;
          v14 = (v14 + v178);
          --v179;
        }

        while (v179);
        v22 += v25;
        v20 += v371;
        v14 += v27;
        --v10;
        v9 = v26;
        if (!v10)
        {
          return;
        }
      }

    case 22:
      v225 = 4 * v15;
      while (1)
      {
        v226 = v9;
        do
        {
          if (*v22)
          {
            v227 = *v22 * 0.0039216;
            v228 = v7 * v227;
            if ((v7 * v227) > 0.0)
            {
              v229 = v227 * v18;
              if (v4)
              {
                v230 = COERCE_FLOAT(bswap32(*v14));
                if (v230 <= 0.0)
                {
                  goto LABEL_351;
                }
              }

              else
              {
                v230 = 1.0;
              }

              v231 = COERCE_FLOAT(bswap32(*v20));
              v232 = v229 + v231;
              v233 = v229 * v230;
              v234 = (v228 * v231) - v233;
              v235 = (v232 - (v228 * v231)) - v233;
              if (v234 < 0.0)
              {
                v234 = -v234;
              }

              v229 = v235 + v234;
              if (v4)
              {
                v228 = (v228 + v230) - (v230 * v228);
LABEL_351:
                *v20 = bswap32(LODWORD(v229));
                *v14 = bswap32(LODWORD(v228));
                goto LABEL_353;
              }

              *v20 = bswap32(LODWORD(v229));
            }
          }

LABEL_353:
          ++v22;
          ++v20;
          v14 = (v14 + v225);
          --v226;
        }

        while (v226);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 23:
      v244 = 4 * v15;
      while (1)
      {
        v245 = v9;
        do
        {
          if (*v22)
          {
            v246 = *v22 * 0.0039216;
            v247 = v7 * v246;
            if ((v7 * v246) > 0.0)
            {
              v248 = v246 * v18;
              if (v4)
              {
                v249 = COERCE_FLOAT(bswap32(*v14));
                if (v249 <= 0.0)
                {
                  goto LABEL_381;
                }
              }

              else
              {
                v249 = 1.0;
              }

              v250 = COERCE_FLOAT(bswap32(*v20));
              v248 = (v248 + v250) + ((v248 * v250) * -2.0);
              if (v4)
              {
                v247 = (v247 + v249) - (v249 * v247);
LABEL_381:
                *v20 = bswap32(LODWORD(v248));
                *v14 = bswap32(LODWORD(v247));
                goto LABEL_383;
              }

              *v20 = bswap32(LODWORD(v248));
            }
          }

LABEL_383:
          ++v22;
          ++v20;
          v14 = (v14 + v244);
          --v245;
        }

        while (v245);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 24:
      v99 = 4 * v15;
      while (1)
      {
        v100 = v9;
        do
        {
          if (*v22)
          {
            v101 = *v22 * 0.0039216;
            v102 = v7 * v101;
            if ((v7 * v101) > 0.0)
            {
              v103 = v101 * v18;
              if (v4)
              {
                v104 = COERCE_FLOAT(bswap32(*v14));
                if (v104 <= 0.0)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v104 = 1.0;
              }

              v105 = COERCE_FLOAT(bswap32(*v20));
              v106 = v105;
              if (v102 == 1.0)
              {
                v107 = 0.0;
              }

              else
              {
                v106 = v102 * v105;
                v107 = v105 - (v102 * v105);
              }

              v108 = (v103 + v107) - (v103 * v104);
              if (v104 == 1.0)
              {
                v108 = v107;
              }

              v103 = v106 + v108;
              if (v4)
              {
                v102 = (v102 + v104) - (v102 * v104);
LABEL_149:
                *v20 = bswap32(LODWORD(v103));
                *v14 = bswap32(LODWORD(v102));
                goto LABEL_151;
              }

              *v20 = bswap32(LODWORD(v103));
            }
          }

LABEL_151:
          ++v22;
          ++v20;
          v14 = (v14 + v99);
          --v100;
        }

        while (v100);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 25:
      v89 = 4 * v15;
      while (1)
      {
        v90 = v9;
        do
        {
          if (*v22)
          {
            v91 = *v22 * 0.0039216;
            v92 = v7 * v91;
            if ((v7 * v91) > 0.0)
            {
              v93 = v91 * v18;
              if (v4)
              {
                v94 = COERCE_FLOAT(bswap32(*v14));
                if (v94 <= 0.0)
                {
                  goto LABEL_129;
                }
              }

              else
              {
                v94 = 1.0;
              }

              v95 = COERCE_FLOAT(bswap32(*v20));
              v96 = v95;
              if (v92 == 1.0)
              {
                v97 = 0.0;
              }

              else
              {
                v96 = v92 * v95;
                v97 = v95 - (v92 * v95);
              }

              v98 = (v93 + v97) - (v93 * v94);
              if (v94 == 1.0)
              {
                v98 = v97;
              }

              v93 = v96 + v98;
              if (v4)
              {
                v92 = (v92 + v94) - (v92 * v94);
LABEL_129:
                *v20 = bswap32(LODWORD(v93));
                *v14 = bswap32(LODWORD(v92));
                goto LABEL_131;
              }

              *v20 = bswap32(LODWORD(v93));
            }
          }

LABEL_131:
          ++v22;
          ++v20;
          v14 = (v14 + v89);
          --v90;
        }

        while (v90);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 26:
      v251 = 4 * v15;
      while (1)
      {
        v252 = v9;
        do
        {
          if (*v22)
          {
            v253 = *v22 * 0.0039216;
            v254 = v7 * v253;
            if ((v7 * v253) > 0.0)
            {
              v255 = v253 * v18;
              if (v4)
              {
                v256 = COERCE_FLOAT(bswap32(*v14));
                if (v256 <= 0.0)
                {
                  goto LABEL_400;
                }
              }

              else
              {
                v256 = 1.0;
              }

              v257 = COERCE_FLOAT(bswap32(*v20));
              v258 = v257;
              v259 = v255 - (v255 * v256);
              if (v256 == 1.0)
              {
                v259 = 0.0;
              }

              if (v254 != 1.0)
              {
                v258 = v254 * v257;
                v259 = (v259 + v257) - (v254 * v257);
              }

              v255 = v258 + v259;
              if (v4)
              {
                v254 = (v254 + v256) - (v254 * v256);
LABEL_400:
                *v20 = bswap32(LODWORD(v255));
                *v14 = bswap32(LODWORD(v254));
                goto LABEL_402;
              }

              *v20 = bswap32(LODWORD(v255));
            }
          }

LABEL_402:
          ++v22;
          ++v20;
          v14 = (v14 + v251);
          --v252;
        }

        while (v252);
        v22 += v23;
        v20 += v24;
        v14 += v17;
        if (!--v10)
        {
          return;
        }
      }

    case 27:
      v33 = 4 * v15;
      break;
    default:
      return;
  }

LABEL_23:
  v34 = v9;
  while (1)
  {
    if (!*v22)
    {
      goto LABEL_38;
    }

    v35 = *v22 * 0.0039216;
    v36 = v7 * v35;
    if ((v7 * v35) <= 0.0)
    {
      goto LABEL_38;
    }

    v37 = v35 * v18;
    if (v4)
    {
      v38 = COERCE_FLOAT(bswap32(*v14));
      if (v38 <= 0.0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v38 = 1.0;
    }

    v39 = COERCE_FLOAT(bswap32(*v20));
    v40 = v39 - (v36 * v39);
    if (v36 == 1.0)
    {
      v40 = 0.0;
    }

    v41 = (v37 + v40) - (v37 * v38);
    if (v38 != 1.0)
    {
      v37 = v37 * v38;
      v40 = v41;
    }

    v37 = v37 + v40;
    if (!v4)
    {
      *v20 = bswap32(LODWORD(v37));
      goto LABEL_38;
    }

    v36 = (v36 + v38) - (v36 * v38);
LABEL_36:
    *v20 = bswap32(LODWORD(v37));
    *v14 = bswap32(LODWORD(v36));
LABEL_38:
    ++v22;
    ++v20;
    v14 = (v14 + v33);
    if (!--v34)
    {
      v22 += v23;
      v20 += v24;
      v14 += v17;
      if (!--v10)
      {
        return;
      }

      goto LABEL_23;
    }
  }
}

void WF_mark_pixelmask(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 136);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  if (v2)
  {
    v6 = *(a1 + 32) >> 2;
    v7 = (v2 + 4 * v6 * v5 + 4 * v4);
    v8 = -1;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    if (!v3)
    {
      return;
    }
  }

  v10 = *(a1 + 4);
  v9 = *(a1 + 8);
  v11 = *(a1 + 96);
  v676 = *(a1 + 88);
  v12 = *(a1 + 28) >> 2;
  v13 = (*(a1 + 40) + 4 * v12 * v5 + 4 * v4);
  v14 = *(a1 + 124);
  v15 = (v3 + *(a1 + 108) * v14 + *(a1 + 104));
  v16 = *(a1 + 56);
  v17 = *(a1 + 60);
  v18 = *(a1 + 76);
  if ((*a1 & 0xFF00) == 0x100)
  {
    v19 = v18 >> 2;
    if (v11)
    {
      v20 = *(a1 + 80) >> 2;
      v11 += 4 * v20 * v17 + 4 * v16;
      v21 = -1;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v24 = v8;
    v25 = (v676 + 4 * v19 * v17 + 4 * v16);
    if (v19 == v12)
    {
      v26 = v13 - v25;
      if (v26 >= 1)
      {
        if (v26 <= v10)
        {
          v13 += v10 - 1;
          v25 += v10 - 1;
          v15 += v10 - 1;
          v7 += v8 & (v10 - 1);
          v29 = -1;
          v19 = v12;
          v11 += 4 * (v21 & (v10 - 1));
          goto LABEL_16;
        }

        v27 = v9 - 1;
        v28 = &v25[v12 * v27];
        if (v13 <= &v28[v10 - 1])
        {
          v13 += v12 * v27;
          v19 = -v12;
          v15 += v14 * v27;
          v14 = -v14;
          v7 += v6 * v27;
          v6 = -v6;
          v24 = v8 & 1;
          v11 += 4 * v20 * v27;
          v20 = -v20;
          v21 &= 1u;
          v29 = 1;
          v25 = v28;
          v12 = -v12;
          goto LABEL_16;
        }
      }
    }

    v24 = v8 & 1;
    v21 &= 1u;
    v29 = 1;
LABEL_16:
    v30 = 0;
    v31 = 0;
    v676 = -1;
    v23 = v20;
    v22 = v19;
    goto LABEL_19;
  }

  v22 = *(a1 + 64);
  v23 = *(a1 + 68);
  v19 = v18 >> 2;
  if (v11)
  {
    v20 = *(a1 + 80) >> 2;
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v25 = *(a1 + 88);
  v30 = v676 + 4 * v19 * v23;
  v24 = v8 & 1;
  v29 = 1;
  v31 = v676;
LABEL_19:
  v675 = v24;
  v32 = v29 * v10;
  if (v30)
  {
    v33 = v17 % v23;
    v34 = &v25[v19 * v33];
    v35 = v16 % v22;
    v25 = &v34[v35];
    v36 = v22;
    v676 = &v34[v22];
    v37 = v11 + 4 * v20 * v33 + 4 * v35;
    if (v21)
    {
      v11 = v37;
    }

    v672 = v11;
    v674 = &v34[v35];
  }

  else
  {
    v674 = v31;
    v672 = v11;
    v19 -= v32;
    v20 -= v21 * v10;
    v36 = v22;
  }

  v38 = v14 - v32;
  v39 = v12 - v32;
  v671 = v6 - v675 * v10;
  v40 = v29;
  v658 = v19;
  v659 = v10;
  v656 = v39;
  v657 = v38;
  v654 = v20;
  v655 = v30;
  v673 = v21;
  switch(a2)
  {
    case 0:
      if (v675)
      {
        do
        {
          v41 = v10;
          do
          {
            v42 = *v15;
            if (*v15)
            {
              if (v42 == 255)
              {
                *v7 = 0;
                *v13 = 0;
              }

              else
              {
                v43 = (v42 * -0.0039216) + 1.0;
                v44 = bswap32(COERCE_UNSIGNED_INT(v43 * COERCE_FLOAT(bswap32(*v7))));
                *v13 = bswap32(COERCE_UNSIGNED_INT(v43 * COERCE_FLOAT(bswap32(*v13))));
                *v7 = v44;
              }
            }

            v15 += v29;
            v7 += v675;
            v13 += v29;
            --v41;
          }

          while (v41);
          v15 += v38;
          v13 += v39;
          v7 += v671;
          --v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v605 = v10;
          do
          {
            v606 = *v15;
            if (*v15)
            {
              if (v606 == 255)
              {
                *v13 = 0;
              }

              else
              {
                *v13 = bswap32(COERCE_UNSIGNED_INT(((v606 * -0.0039216) + 1.0) * COERCE_FLOAT(bswap32(*v13))));
              }
            }

            v15 += v29;
            v13 += v29;
            --v605;
          }

          while (v605);
          v15 += v38;
          v13 += v39;
          --v9;
        }

        while (v9);
      }

      return;
    case 1:
      if (v675)
      {
        if (v21)
        {
          v300 = -v36;
          v301 = -(v19 * v23);
          v302 = -(v20 * v23);
          v303 = v672;
          do
          {
            v304 = v10;
            do
            {
              v305 = *v15;
              if (*v15)
              {
                if (v305 == 255)
                {
                  *v13 = *v25;
                  *v7 = *v303;
                }

                else
                {
                  v306 = v305 * 0.0039216;
                  v307 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v306) * COERCE_FLOAT(bswap32(*v7))) + (COERCE_FLOAT(bswap32(*v303)) * v306)));
                  *v13 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v306) * COERCE_FLOAT(bswap32(*v13))) + (COERCE_FLOAT(bswap32(*v25)) * v306)));
                  *v7 = v307;
                }
              }

              v15 += v29;
              v308 = &v25[v29];
              v309 = &v303[v21];
              if (v308 >= v676)
              {
                v310 = v300;
              }

              else
              {
                v310 = 0;
              }

              v303 = &v309[v310];
              v25 = &v308[v310];
              v7 += v675;
              v13 += v29;
              --v304;
            }

            while (v304);
            if (v30)
            {
              v311 = &v674[v19];
              if (v311 >= v30)
              {
                v312 = v302;
              }

              else
              {
                v312 = 0;
              }

              v313 = &v672[v20 + v312];
              if (v311 >= v30)
              {
                v314 = v301;
              }

              else
              {
                v314 = 0;
              }

              v25 = &v311[v314];
              v676 += 4 * v314 + 4 * v19;
              v672 += v20 + v312;
              v303 = v313;
              v674 = v25;
            }

            else
            {
              v25 += v19;
              v303 += v20;
            }

            v15 += v38;
            v13 += v39;
            v7 += v671;
            --v9;
          }

          while (v9);
        }

        else
        {
          v631 = -(v19 * v23);
          do
          {
            v632 = v10;
            do
            {
              v633 = *v15;
              if (*v15)
              {
                if (v633 == 255)
                {
                  v634 = *v25;
                  v635 = 32831;
                }

                else
                {
                  v636 = v633 * 0.0039216;
                  v634 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v636) * COERCE_FLOAT(bswap32(*v13))) + (COERCE_FLOAT(bswap32(*v25)) * v636)));
                  v635 = bswap32(COERCE_UNSIGNED_INT(v636 + ((1.0 - v636) * COERCE_FLOAT(bswap32(*v7)))));
                }

                *v13 = v634;
                *v7 = v635;
              }

              v15 += v40;
              v637 = &v25[v40];
              if (v637 >= v676)
              {
                v638 = -v36;
              }

              else
              {
                v638 = 0;
              }

              v25 = &v637[v638];
              v7 += v675;
              v13 += v40;
              --v632;
            }

            while (v632);
            v15 += v38;
            v13 += v39;
            v7 += v671;
            v639 = v674;
            v640 = &v674[v19];
            if (v640 >= v30)
            {
              v641 = v631;
            }

            else
            {
              v641 = 0;
            }

            v642 = v676;
            v643 = &v640[v641];
            v644 = v676 + 4 * v641 + 4 * v19;
            if (v30)
            {
              v642 = v644;
            }

            v676 = v642;
            if (v30)
            {
              v639 = v643;
            }

            v674 = v639;
            if (v30)
            {
              v25 = v643;
            }

            else
            {
              v25 += v19;
            }

            --v9;
          }

          while (v9);
        }
      }

      else
      {
        v607 = -v36;
        v608 = -(v19 * v23);
        do
        {
          v609 = v10;
          do
          {
            v610 = *v15;
            if (*v15)
            {
              if (v610 == 255)
              {
                *v13 = *v25;
              }

              else
              {
                *v13 = bswap32(COERCE_UNSIGNED_INT(((1.0 - (v610 * 0.0039216)) * COERCE_FLOAT(bswap32(*v13))) + (COERCE_FLOAT(bswap32(*v25)) * (v610 * 0.0039216))));
              }
            }

            v15 += v40;
            v611 = &v25[v40];
            if (v611 >= v676)
            {
              v612 = v607;
            }

            else
            {
              v612 = 0;
            }

            v25 = &v611[v612];
            v13 += v40;
            --v609;
          }

          while (v609);
          v15 += v38;
          v13 += v39;
          v613 = v674;
          v614 = &v674[v19];
          if (v614 >= v30)
          {
            v615 = v608;
          }

          else
          {
            v615 = 0;
          }

          v616 = v676;
          v617 = &v614[v615];
          v618 = v676 + 4 * v615 + 4 * v19;
          if (v30)
          {
            v616 = v618;
          }

          v676 = v616;
          if (v30)
          {
            v613 = v617;
          }

          v674 = v613;
          if (v30)
          {
            v25 = v617;
          }

          else
          {
            v25 += v19;
          }

          --v9;
        }

        while (v9);
      }

      return;
    case 2:
      v219 = -v36;
      v220 = -(v19 * v23);
      v221 = -(v20 * v23);
      if (v675)
      {
        v222 = v672;
        while (1)
        {
          v223 = v10;
          do
          {
            v224 = *v15;
            if (!*v15)
            {
              goto LABEL_316;
            }

            if (v224 == 255)
            {
              v225 = *v222;
              v226 = COERCE_FLOAT(bswap32(*v222));
              v227 = v226;
              if (v226 >= 1.0)
              {
                v230 = *v25;
                goto LABEL_315;
              }

              if (v226 <= 0.0)
              {
                goto LABEL_316;
              }

              v228 = COERCE_FLOAT(bswap32(*v25));
            }

            else
            {
              v229 = v224 * 0.0039216;
              v227 = v229 * COERCE_FLOAT(bswap32(*v222));
              if (v227 <= 0.0)
              {
                goto LABEL_316;
              }

              v228 = v229 * COERCE_FLOAT(bswap32(*v25));
            }

            v230 = bswap32(COERCE_UNSIGNED_INT(v228 + (COERCE_FLOAT(bswap32(*v13)) * (1.0 - v227))));
            v225 = bswap32(COERCE_UNSIGNED_INT(v227 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v227))));
LABEL_315:
            *v13 = v230;
            *v7 = v225;
LABEL_316:
            v15 += v29;
            v231 = &v25[v29];
            v232 = &v222[v21];
            if (v231 >= v676)
            {
              v233 = v219;
            }

            else
            {
              v233 = 0;
            }

            v222 = &v232[v233];
            v25 = &v231[v233];
            v7 += v675;
            v13 += v29;
            --v223;
          }

          while (v223);
          if (v30)
          {
            v234 = &v674[v19];
            if (v234 >= v30)
            {
              v235 = v221;
            }

            else
            {
              v235 = 0;
            }

            v236 = &v672[v20 + v235];
            if (v234 >= v30)
            {
              v237 = v220;
            }

            else
            {
              v237 = 0;
            }

            v25 = &v234[v237];
            v676 += 4 * v237 + 4 * v19;
            v672 += v20 + v235;
            v222 = v236;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v222 += v20;
          }

          v15 += v38;
          v13 += v39;
          v7 += v671;
          if (!--v9)
          {
            return;
          }
        }
      }

      v579 = v672;
LABEL_844:
      v580 = v10;
      while (1)
      {
        v581 = *v15;
        if (*v15)
        {
          if (v581 == 255)
          {
            v582 = COERCE_FLOAT(bswap32(*v579));
            if (v582 >= 1.0)
            {
              *v13 = *v25;
              goto LABEL_854;
            }

            if (v582 > 0.0)
            {
              v583 = COERCE_FLOAT(bswap32(*v25)) + (COERCE_FLOAT(bswap32(*v13)) * (1.0 - v582));
LABEL_852:
              *v13 = bswap32(LODWORD(v583));
            }
          }

          else
          {
            v584 = v581 * 0.0039216;
            v585 = v584 * COERCE_FLOAT(bswap32(*v579));
            if (v585 > 0.0)
            {
              v583 = (v584 * COERCE_FLOAT(bswap32(*v25))) + (COERCE_FLOAT(bswap32(*v13)) * (1.0 - v585));
              goto LABEL_852;
            }
          }
        }

LABEL_854:
        v15 += v40;
        v586 = &v25[v40];
        v587 = &v579[v21];
        if (v586 >= v676)
        {
          v588 = v219;
        }

        else
        {
          v588 = 0;
        }

        v579 = &v587[v588];
        v25 = &v586[v588];
        v13 += v40;
        if (!--v580)
        {
          if (v30)
          {
            v589 = &v674[v19];
            if (v589 >= v30)
            {
              v590 = v221;
            }

            else
            {
              v590 = 0;
            }

            v591 = &v672[v20 + v590];
            if (v589 >= v30)
            {
              v592 = v220;
            }

            else
            {
              v592 = 0;
            }

            v25 = &v589[v592];
            v676 += 4 * v592 + 4 * v19;
            v672 += v20 + v590;
            v579 = v591;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v579 += v20;
          }

          v15 += v38;
          v13 += v39;
          if (!--v9)
          {
            return;
          }

          goto LABEL_844;
        }
      }

    case 3:
      v256 = -v36;
      v257 = -(v19 * v23);
      v258 = -(v20 * v23);
      v259 = v672;
      do
      {
        v260 = v10;
        do
        {
          v261 = *v15;
          if (*v15)
          {
            if (v261 == 255)
            {
              if (v21)
              {
                v262 = COERCE_FLOAT(bswap32(*v259));
              }

              else
              {
                v262 = 1.0;
              }

              v264 = COERCE_FLOAT(bswap32(*v7));
              v265 = COERCE_FLOAT(bswap32(*v25)) * v264;
              v266 = v262 * v264;
            }

            else
            {
              if (v21)
              {
                v263 = COERCE_FLOAT(bswap32(*v259));
              }

              else
              {
                v263 = 1.0;
              }

              v267 = v261 * 0.0039216;
              v268 = COERCE_FLOAT(bswap32(*v7));
              v269 = v267 * v268;
              v270 = 1.0 - v267;
              v265 = ((1.0 - v267) * COERCE_FLOAT(bswap32(*v13))) + (COERCE_FLOAT(bswap32(*v25)) * (v267 * v268));
              v266 = (v270 * v268) + (v263 * v269);
            }

            *v13 = bswap32(LODWORD(v265));
            *v7 = bswap32(LODWORD(v266));
          }

          v15 += v29;
          v271 = &v25[v29];
          v272 = &v259[v21];
          if (v271 >= v676)
          {
            v273 = v256;
          }

          else
          {
            v273 = 0;
          }

          v259 = &v272[v273];
          v25 = &v271[v273];
          v7 += v675;
          v13 += v29;
          --v260;
        }

        while (v260);
        if (v30)
        {
          v274 = &v674[v19];
          if (v274 >= v30)
          {
            v275 = v258;
          }

          else
          {
            v275 = 0;
          }

          v276 = &v672[v20 + v275];
          if (v274 >= v30)
          {
            v277 = v257;
          }

          else
          {
            v277 = 0;
          }

          v25 = &v274[v277];
          v676 += 4 * v277 + 4 * v19;
          v672 += v20 + v275;
          v259 = v276;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v259 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        --v9;
      }

      while (v9);
      return;
    case 4:
      v122 = -v36;
      v123 = -(v19 * v23);
      v124 = -(v20 * v23);
      v125 = v672;
      do
      {
        v126 = v10;
        do
        {
          v127 = *v15;
          if (*v15)
          {
            if (v127 == 255)
            {
              if (v21)
              {
                v128 = COERCE_FLOAT(bswap32(*v125));
              }

              else
              {
                v128 = 1.0;
              }

              v130 = 1.0 - COERCE_FLOAT(bswap32(*v7));
              v131 = v130 * COERCE_FLOAT(bswap32(*v25));
              v132 = v128 * v130;
            }

            else
            {
              if (v21)
              {
                v129 = COERCE_FLOAT(bswap32(*v125));
              }

              else
              {
                v129 = 1.0;
              }

              v133 = v127 * 0.0039216;
              v134 = COERCE_FLOAT(bswap32(*v7));
              v135 = v133 * (1.0 - v134);
              v136 = 1.0 - v133;
              v131 = ((1.0 - v133) * COERCE_FLOAT(bswap32(*v13))) + (COERCE_FLOAT(bswap32(*v25)) * v135);
              v132 = (v136 * v134) + (v129 * v135);
            }

            *v13 = bswap32(LODWORD(v131));
            *v7 = bswap32(LODWORD(v132));
          }

          v15 += v29;
          v137 = &v25[v29];
          v138 = &v125[v21];
          if (v137 >= v676)
          {
            v139 = v122;
          }

          else
          {
            v139 = 0;
          }

          v125 = &v138[v139];
          v25 = &v137[v139];
          v7 += v675;
          v13 += v29;
          --v126;
        }

        while (v126);
        if (v30)
        {
          v140 = &v674[v19];
          if (v140 >= v30)
          {
            v141 = v124;
          }

          else
          {
            v141 = 0;
          }

          v142 = &v672[v20 + v141];
          if (v140 >= v30)
          {
            v143 = v123;
          }

          else
          {
            v143 = 0;
          }

          v25 = &v140[v143];
          v676 += 4 * v143 + 4 * v19;
          v672 += v20 + v141;
          v125 = v142;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v125 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        --v9;
      }

      while (v9);
      return;
    case 5:
      v355 = -v36;
      v356 = -(v19 * v23);
      v357 = -(v20 * v23);
      v358 = v672;
      do
      {
        v359 = v10;
        do
        {
          if (*v15)
          {
            v360 = COERCE_FLOAT(bswap32(*v7));
            v361 = *v15 * 0.0039216;
            v362 = v361 * COERCE_FLOAT(bswap32(*v25));
            v363 = v361 * COERCE_FLOAT(bswap32(*v358));
            *v13 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v363) * COERCE_FLOAT(bswap32(*v13))) + (v362 * v360)));
            *v7 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v363) * v360) + (v363 * v360)));
          }

          v15 += v29;
          v364 = &v25[v29];
          v365 = &v358[v21];
          if (v364 >= v676)
          {
            v366 = v355;
          }

          else
          {
            v366 = 0;
          }

          v358 = &v365[v366];
          v25 = &v364[v366];
          v7 += v675;
          v13 += v29;
          --v359;
        }

        while (v359);
        if (v30)
        {
          v367 = &v674[v19];
          if (v367 >= v30)
          {
            v368 = v357;
          }

          else
          {
            v368 = 0;
          }

          v369 = &v672[v20 + v368];
          if (v367 >= v30)
          {
            v370 = v356;
          }

          else
          {
            v370 = 0;
          }

          v25 = &v367[v370];
          v676 += 4 * v370 + 4 * v19;
          v672 += v20 + v368;
          v358 = v369;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v358 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        --v9;
      }

      while (v9);
      return;
    case 6:
      v408 = -v36;
      v409 = -(v19 * v23);
      v410 = -(v20 * v23);
      v411 = v672;
      while (1)
      {
        v412 = v10;
        do
        {
          v413 = *v15;
          if (!*v15)
          {
            goto LABEL_592;
          }

          v414 = COERCE_FLOAT(bswap32(*v7));
          v415 = 1.0 - v414;
          if ((1.0 - v414) >= 1.0)
          {
            if (v21)
            {
              v417 = COERCE_FLOAT(bswap32(*v411));
            }

            else
            {
              v417 = 1.0;
            }

            v418 = v413 * 0.0039216;
            v419 = v418 * COERCE_FLOAT(bswap32(*v25));
            v420 = v418 * v417;
          }

          else
          {
            if (v415 <= 0.0)
            {
              goto LABEL_592;
            }

            if (v21)
            {
              v416 = COERCE_FLOAT(bswap32(*v411));
            }

            else
            {
              v416 = 1.0;
            }

            v421 = (v413 * 0.0039216) * v415;
            v419 = COERCE_FLOAT(bswap32(*v13)) + (COERCE_FLOAT(bswap32(*v25)) * v421);
            v420 = v414 + (v416 * v421);
          }

          *v13 = bswap32(LODWORD(v419));
          *v7 = bswap32(LODWORD(v420));
LABEL_592:
          v15 += v29;
          v422 = &v25[v29];
          v423 = &v411[v21];
          if (v422 >= v676)
          {
            v424 = v408;
          }

          else
          {
            v424 = 0;
          }

          v411 = &v423[v424];
          v25 = &v422[v424];
          v7 += v675;
          v13 += v29;
          --v412;
        }

        while (v412);
        if (v30)
        {
          v425 = &v674[v19];
          if (v425 >= v30)
          {
            v426 = v410;
          }

          else
          {
            v426 = 0;
          }

          v427 = &v672[v20 + v426];
          if (v425 >= v30)
          {
            v428 = v409;
          }

          else
          {
            v428 = 0;
          }

          v25 = &v425[v428];
          v676 += 4 * v428 + 4 * v19;
          v672 += v20 + v426;
          v411 = v427;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v411 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 7:
      v278 = -v36;
      v279 = -(v19 * v23);
      v280 = -(v20 * v23);
      if (v675)
      {
        v281 = v672;
        do
        {
          v282 = v10;
          do
          {
            v283 = *v15;
            if (*v15)
            {
              if (v283 == 255)
              {
                v284 = COERCE_FLOAT(bswap32(*v281));
                v285 = COERCE_FLOAT(bswap32(*v13)) * v284;
                v286 = COERCE_FLOAT(bswap32(*v7)) * v284;
              }

              else
              {
                v287 = v283 * 0.0039216;
                v288 = COERCE_FLOAT(bswap32(*v7));
                v289 = COERCE_FLOAT(bswap32(*v13));
                v290 = COERCE_FLOAT(bswap32(*v281));
                v291 = v287 * v290;
                v292 = 1.0 - v287;
                v285 = ((1.0 - v287) * v289) + (v289 * (v287 * v290));
                v286 = (v292 * v288) + (v288 * v291);
              }

              *v13 = bswap32(LODWORD(v285));
              *v7 = bswap32(LODWORD(v286));
            }

            v15 += v29;
            v293 = &v25[v29];
            v294 = &v281[v21];
            if (v293 >= v676)
            {
              v295 = v278;
            }

            else
            {
              v295 = 0;
            }

            v281 = &v294[v295];
            v25 = &v293[v295];
            v7 += v675;
            v13 += v29;
            --v282;
          }

          while (v282);
          if (v30)
          {
            v296 = &v674[v19];
            if (v296 >= v30)
            {
              v297 = v280;
            }

            else
            {
              v297 = 0;
            }

            v298 = &v672[v20 + v297];
            if (v296 >= v30)
            {
              v299 = v279;
            }

            else
            {
              v299 = 0;
            }

            v25 = &v296[v299];
            v676 += 4 * v299 + 4 * v19;
            v672 += v20 + v297;
            v281 = v298;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v281 += v20;
          }

          v15 += v38;
          v13 += v39;
          v7 += v671;
          --v9;
        }

        while (v9);
      }

      else
      {
        v593 = v672;
        do
        {
          v594 = v10;
          do
          {
            v595 = *v15;
            if (*v15)
            {
              if (v595 == 255)
              {
                v596 = COERCE_FLOAT(bswap32(*v13)) * COERCE_FLOAT(bswap32(*v593));
              }

              else
              {
                v597 = COERCE_FLOAT(bswap32(*v13));
                v596 = ((1.0 - (v595 * 0.0039216)) * v597) + (v597 * ((v595 * 0.0039216) * COERCE_FLOAT(bswap32(*v593))));
              }

              *v13 = bswap32(LODWORD(v596));
            }

            v15 += v40;
            v598 = &v25[v40];
            v599 = &v593[v21];
            if (v598 >= v676)
            {
              v600 = v278;
            }

            else
            {
              v600 = 0;
            }

            v593 = &v599[v600];
            v25 = &v598[v600];
            v13 += v40;
            --v594;
          }

          while (v594);
          if (v30)
          {
            v601 = &v674[v19];
            if (v601 >= v30)
            {
              v602 = v280;
            }

            else
            {
              v602 = 0;
            }

            v603 = &v672[v20 + v602];
            if (v601 >= v30)
            {
              v604 = v279;
            }

            else
            {
              v604 = 0;
            }

            v25 = &v601[v604];
            v676 += 4 * v604 + 4 * v19;
            v672 += v20 + v602;
            v593 = v603;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v593 += v20;
          }

          v15 += v38;
          v13 += v39;
          --v9;
        }

        while (v9);
      }

      return;
    case 8:
      v463 = -v36;
      v464 = -(v19 * v23);
      v465 = -(v20 * v23);
      if (v675)
      {
        v466 = v672;
        do
        {
          v467 = v10;
          do
          {
            v468 = *v15;
            if (*v15)
            {
              v469 = COERCE_FLOAT(bswap32(*v13));
              v470 = COERCE_FLOAT(bswap32(*v7));
              if (v468 == 255)
              {
                v471 = COERCE_FLOAT(bswap32(*v466));
              }

              else
              {
                v471 = (v468 * 0.0039216) * COERCE_FLOAT(bswap32(*v466));
              }

              v472 = 1.0 - v471;
              *v13 = bswap32(COERCE_UNSIGNED_INT(v472 * v469));
              *v7 = bswap32(COERCE_UNSIGNED_INT(v472 * v470));
            }

            v15 += v29;
            v473 = &v25[v29];
            v474 = &v466[v21];
            if (v473 >= v676)
            {
              v475 = v463;
            }

            else
            {
              v475 = 0;
            }

            v466 = &v474[v475];
            v25 = &v473[v475];
            v7 += v675;
            v13 += v29;
            --v467;
          }

          while (v467);
          if (v30)
          {
            v476 = &v674[v19];
            if (v476 >= v30)
            {
              v477 = v465;
            }

            else
            {
              v477 = 0;
            }

            v478 = &v672[v20 + v477];
            if (v476 >= v30)
            {
              v479 = v464;
            }

            else
            {
              v479 = 0;
            }

            v25 = &v476[v479];
            v676 += 4 * v479 + 4 * v19;
            v672 += v20 + v477;
            v466 = v478;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v466 += v20;
          }

          v15 += v38;
          v13 += v39;
          v7 += v671;
          --v9;
        }

        while (v9);
      }

      else
      {
        v619 = v672;
        do
        {
          v620 = v10;
          do
          {
            v621 = *v15;
            if (*v15)
            {
              v622 = COERCE_FLOAT(bswap32(*v13));
              if (v621 == 255)
              {
                v623 = COERCE_FLOAT(bswap32(*v619));
              }

              else
              {
                v623 = (v621 * 0.0039216) * COERCE_FLOAT(bswap32(*v619));
              }

              *v13 = bswap32(COERCE_UNSIGNED_INT((1.0 - v623) * v622));
            }

            v15 += v40;
            v624 = &v25[v40];
            v625 = &v619[v21];
            if (v624 >= v676)
            {
              v626 = v463;
            }

            else
            {
              v626 = 0;
            }

            v619 = &v625[v626];
            v25 = &v624[v626];
            v13 += v40;
            --v620;
          }

          while (v620);
          if (v30)
          {
            v627 = &v674[v19];
            if (v627 >= v30)
            {
              v628 = v465;
            }

            else
            {
              v628 = 0;
            }

            v629 = &v672[v20 + v628];
            if (v627 >= v30)
            {
              v630 = v464;
            }

            else
            {
              v630 = 0;
            }

            v25 = &v627[v630];
            v676 += 4 * v630 + 4 * v19;
            v672 += v20 + v628;
            v619 = v629;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v619 += v20;
          }

          v15 += v38;
          v13 += v39;
          --v9;
        }

        while (v9);
      }

      return;
    case 9:
      v160 = -v36;
      v161 = -(v19 * v23);
      v162 = -(v20 * v23);
      v163 = v672;
      do
      {
        v164 = v10;
        do
        {
          if (*v15)
          {
            v165 = COERCE_FLOAT(bswap32(*v7));
            v166 = *v15 * 0.0039216;
            v167 = v166 * COERCE_FLOAT(bswap32(*v25));
            v168 = v166 * COERCE_FLOAT(bswap32(*v163));
            v169 = (1.0 - v166) + v168;
            *v13 = bswap32(COERCE_UNSIGNED_INT((v169 * COERCE_FLOAT(bswap32(*v13))) + (v167 * (1.0 - v165))));
            *v7 = bswap32(COERCE_UNSIGNED_INT((v169 * v165) + (v168 * (1.0 - v165))));
          }

          v15 += v29;
          v170 = &v25[v29];
          v171 = &v163[v21];
          if (v170 >= v676)
          {
            v172 = v160;
          }

          else
          {
            v172 = 0;
          }

          v163 = &v171[v172];
          v25 = &v170[v172];
          v7 += v675;
          v13 += v29;
          --v164;
        }

        while (v164);
        if (v30)
        {
          v173 = &v674[v19];
          if (v173 >= v30)
          {
            v174 = v162;
          }

          else
          {
            v174 = 0;
          }

          v175 = &v672[v20 + v174];
          if (v173 >= v30)
          {
            v176 = v161;
          }

          else
          {
            v176 = 0;
          }

          v25 = &v173[v176];
          v676 += 4 * v176 + 4 * v19;
          v672 += v20 + v174;
          v163 = v175;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v163 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        --v9;
      }

      while (v9);
      return;
    case 10:
      v447 = -v36;
      v448 = -(v19 * v23);
      v449 = -(v20 * v23);
      v450 = v672;
      do
      {
        v451 = v10;
        do
        {
          if (*v15)
          {
            v452 = COERCE_FLOAT(bswap32(*v7));
            v453 = *v15 * 0.0039216;
            v454 = v453 * COERCE_FLOAT(bswap32(*v25));
            v455 = v453 * COERCE_FLOAT(bswap32(*v450));
            *v13 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v455) * COERCE_FLOAT(bswap32(*v13))) + (v454 * (1.0 - v452))));
            *v7 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v455) * v452) + (v455 * (1.0 - v452))));
          }

          v15 += v29;
          v456 = &v25[v29];
          v457 = &v450[v21];
          if (v456 >= v676)
          {
            v458 = v447;
          }

          else
          {
            v458 = 0;
          }

          v450 = &v457[v458];
          v25 = &v456[v458];
          v7 += v675;
          v13 += v29;
          --v451;
        }

        while (v451);
        if (v30)
        {
          v459 = &v674[v19];
          if (v459 >= v30)
          {
            v460 = v449;
          }

          else
          {
            v460 = 0;
          }

          v461 = &v672[v20 + v460];
          if (v459 >= v30)
          {
            v462 = v448;
          }

          else
          {
            v462 = 0;
          }

          v25 = &v459[v462];
          v676 += 4 * v462 + 4 * v19;
          v672 += v20 + v460;
          v450 = v461;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v450 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        --v9;
      }

      while (v9);
      return;
    case 11:
      v103 = -v36;
      v104 = -(v19 * v23);
      v105 = -(v20 * v23);
      if (v675)
      {
        v106 = v672;
        do
        {
          v107 = v10;
          do
          {
            if (*v15)
            {
              if (v21)
              {
                v108 = COERCE_FLOAT(bswap32(*v106));
              }

              else
              {
                v108 = 1.0;
              }

              v109 = *v15 * 0.0039216;
              v110 = v109 * COERCE_FLOAT(bswap32(*v25));
              v111 = v109 * v108;
              v112 = COERCE_FLOAT(bswap32(*v13));
              v113 = COERCE_FLOAT(bswap32(*v7));
              v114 = v111 + v113;
              if ((v111 + v113) > 1.0)
              {
                v114 = 1.0;
              }

              *v13 = bswap32(COERCE_UNSIGNED_INT((v111 - v110) + (v114 - (v113 - v112))));
              *v7 = bswap32(LODWORD(v114));
            }

            v15 += v29;
            v115 = &v25[v29];
            v116 = &v106[v21];
            if (v115 >= v676)
            {
              v117 = v103;
            }

            else
            {
              v117 = 0;
            }

            v106 = &v116[v117];
            v25 = &v115[v117];
            v7 += v675;
            v13 += v29;
            --v107;
          }

          while (v107);
          if (v30)
          {
            v118 = &v674[v19];
            if (v118 >= v30)
            {
              v119 = v105;
            }

            else
            {
              v119 = 0;
            }

            v120 = &v672[v20 + v119];
            if (v118 >= v30)
            {
              v121 = v104;
            }

            else
            {
              v121 = 0;
            }

            v25 = &v118[v121];
            v676 += 4 * v121 + 4 * v19;
            v672 += v20 + v119;
            v106 = v120;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v106 += v20;
          }

          v15 += v38;
          v13 += v39;
          v7 += v671;
          --v9;
        }

        while (v9);
      }

      else
      {
        v558 = v672;
        do
        {
          v559 = v10;
          do
          {
            if (*v15)
            {
              if (v21)
              {
                v560 = COERCE_FLOAT(bswap32(*v558));
              }

              else
              {
                v560 = 1.0;
              }

              *v13 = bswap32(COERCE_UNSIGNED_INT((((*v15 * 0.0039216) * v560) - ((*v15 * 0.0039216) * COERCE_FLOAT(bswap32(*v25)))) + COERCE_FLOAT(bswap32(*v13))));
            }

            v15 += v40;
            v561 = &v25[v40];
            v562 = &v558[v21];
            if (v561 >= v676)
            {
              v563 = v103;
            }

            else
            {
              v563 = 0;
            }

            v558 = &v562[v563];
            v25 = &v561[v563];
            v13 += v40;
            --v559;
          }

          while (v559);
          if (v30)
          {
            v564 = &v674[v19];
            if (v564 >= v30)
            {
              v565 = v105;
            }

            else
            {
              v565 = 0;
            }

            v566 = &v672[v20 + v565];
            if (v564 >= v30)
            {
              v567 = v104;
            }

            else
            {
              v567 = 0;
            }

            v25 = &v564[v567];
            v676 += 4 * v567 + 4 * v19;
            v672 += v20 + v565;
            v558 = v566;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v558 += v20;
          }

          v15 += v38;
          v13 += v39;
          --v9;
        }

        while (v9);
      }

      return;
    case 12:
      if (v675)
      {
        v144 = -v36;
        v145 = -(v19 * v23);
        v146 = -(v20 * v23);
        v147 = v672;
        do
        {
          v148 = v10;
          do
          {
            if (*v15)
            {
              if (v21)
              {
                v149 = COERCE_FLOAT(bswap32(*v147));
              }

              else
              {
                v149 = 1.0;
              }

              v150 = *v15 * 0.0039216;
              v151 = (v150 * v149) + COERCE_FLOAT(bswap32(*v7));
              v152 = (v150 * COERCE_FLOAT(bswap32(*v25))) + COERCE_FLOAT(bswap32(*v13));
              if (v151 > 1.0)
              {
                v151 = 1.0;
              }

              *v13 = bswap32(LODWORD(v152));
              *v7 = bswap32(LODWORD(v151));
            }

            v15 += v29;
            v153 = &v25[v29];
            v154 = &v147[v21];
            if (v153 >= v676)
            {
              v155 = v144;
            }

            else
            {
              v155 = 0;
            }

            v147 = &v154[v155];
            v25 = &v153[v155];
            v7 += v675;
            v13 += v29;
            --v148;
          }

          while (v148);
          if (v30)
          {
            v156 = &v674[v19];
            if (v156 >= v30)
            {
              v157 = v146;
            }

            else
            {
              v157 = 0;
            }

            v158 = &v672[v20 + v157];
            if (v156 >= v30)
            {
              v159 = v145;
            }

            else
            {
              v159 = 0;
            }

            v25 = &v156[v159];
            v676 += 4 * v159 + 4 * v19;
            v672 += v20 + v157;
            v147 = v158;
            v674 = v25;
          }

          else
          {
            v25 += v19;
            v147 += v20;
          }

          v15 += v38;
          v13 += v39;
          v7 += v671;
          --v9;
        }

        while (v9);
      }

      else
      {
        v568 = -v36;
        v569 = -(v19 * v23);
        do
        {
          v570 = v10;
          do
          {
            if (*v15)
            {
              *v13 = bswap32(COERCE_UNSIGNED_INT(((*v15 * 0.0039216) * COERCE_FLOAT(bswap32(*v25))) + COERCE_FLOAT(bswap32(*v13))));
            }

            v15 += v40;
            v571 = &v25[v40];
            if (v571 >= v676)
            {
              v572 = v568;
            }

            else
            {
              v572 = 0;
            }

            v25 = &v571[v572];
            v13 += v40;
            --v570;
          }

          while (v570);
          v15 += v38;
          v13 += v39;
          v573 = v674;
          v574 = &v674[v19];
          if (v574 >= v30)
          {
            v575 = v569;
          }

          else
          {
            v575 = 0;
          }

          v576 = v676;
          v577 = &v574[v575];
          v578 = v676 + 4 * v575 + 4 * v19;
          if (v30)
          {
            v576 = v578;
          }

          v676 = v576;
          if (v30)
          {
            v573 = v577;
          }

          v674 = v573;
          if (v30)
          {
            v25 = v577;
          }

          else
          {
            v25 += v19;
          }

          --v9;
        }

        while (v9);
      }

      return;
    case 13:
      v389 = -v36;
      v390 = -(v19 * v23);
      v391 = -(v20 * v23);
      v392 = v672;
      while (1)
      {
        v393 = v10;
        do
        {
          if (*v15)
          {
            v394 = v21 ? COERCE_FLOAT(bswap32(*v392)) : 1.0;
            v395 = *v15 * 0.0039216;
            v396 = v395 * v394;
            if (v396 > 0.0)
            {
              v397 = v395 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v398 = COERCE_FLOAT(bswap32(*v7));
                if (v398 <= 0.0)
                {
                  goto LABEL_561;
                }
              }

              else
              {
                v398 = 1.0;
              }

              v399 = COERCE_FLOAT(bswap32(*v13));
              v400 = (v397 * v399) + (v399 * (1.0 - v396));
              if (v396 == 1.0)
              {
                v400 = v397 * v399;
              }

              v397 = v400 + (v397 * (1.0 - v398));
              if (v398 == 1.0)
              {
                v397 = v400;
              }

              if (v675)
              {
                v396 = (v396 + v398) - (v398 * v396);
LABEL_561:
                *v13 = bswap32(LODWORD(v397));
                *v7 = bswap32(LODWORD(v396));
                goto LABEL_563;
              }

              *v13 = bswap32(LODWORD(v397));
            }
          }

LABEL_563:
          v15 += v29;
          v401 = &v25[v29];
          v402 = &v392[v21];
          if (v401 >= v676)
          {
            v403 = v389;
          }

          else
          {
            v403 = 0;
          }

          v392 = &v402[v403];
          v25 = &v401[v403];
          v7 += v675;
          v13 += v29;
          --v393;
        }

        while (v393);
        if (v30)
        {
          v404 = &v674[v19];
          if (v404 >= v30)
          {
            v405 = v391;
          }

          else
          {
            v405 = 0;
          }

          v406 = &v672[v20 + v405];
          if (v404 >= v30)
          {
            v407 = v390;
          }

          else
          {
            v407 = 0;
          }

          v25 = &v404[v407];
          v676 += 4 * v407 + 4 * v19;
          v672 += v20 + v405;
          v392 = v406;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v392 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 14:
      v85 = -v36;
      v86 = -(v19 * v23);
      v87 = -(v20 * v23);
      v88 = v672;
      while (1)
      {
        v89 = v10;
        do
        {
          if (*v15)
          {
            v90 = v21 ? COERCE_FLOAT(bswap32(*v88)) : 1.0;
            v91 = *v15 * 0.0039216;
            v92 = v91 * v90;
            if (v92 > 0.0)
            {
              v93 = v91 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v94 = COERCE_FLOAT(bswap32(*v7));
                if (v94 <= 0.0)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v94 = 1.0;
              }

              v95 = COERCE_FLOAT(bswap32(*v13));
              v93 = v95 + (v93 * (1.0 - v95));
              if (v675)
              {
                v92 = (v92 + v94) - (v94 * v92);
LABEL_119:
                *v13 = bswap32(LODWORD(v93));
                *v7 = bswap32(LODWORD(v92));
                goto LABEL_121;
              }

              *v13 = bswap32(LODWORD(v93));
            }
          }

LABEL_121:
          v15 += v29;
          v96 = &v25[v29];
          v97 = &v88[v21];
          if (v96 >= v676)
          {
            v98 = v85;
          }

          else
          {
            v98 = 0;
          }

          v88 = &v97[v98];
          v25 = &v96[v98];
          v7 += v675;
          v13 += v29;
          --v89;
        }

        while (v89);
        if (v30)
        {
          v99 = &v674[v19];
          if (v99 >= v30)
          {
            v100 = v87;
          }

          else
          {
            v100 = 0;
          }

          v101 = &v672[v20 + v100];
          if (v99 >= v30)
          {
            v102 = v86;
          }

          else
          {
            v102 = 0;
          }

          v25 = &v99[v102];
          v676 += 4 * v102 + 4 * v19;
          v672 += v20 + v100;
          v88 = v101;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v88 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 15:
      v238 = v21;
      v239 = -v36;
      v645 = -(v20 * v23);
      v649 = -(v19 * v23);
      v240 = 4 * v675;
      v241 = v672;
      v660 = v240;
      while (1)
      {
        v666 = v9;
        v242 = v10;
        v243 = v675;
        do
        {
          if (*v15)
          {
            v244 = v21 ? COERCE_FLOAT(bswap32(*v241)) : 1.0;
            v245 = *v15 * 0.0039216;
            v246 = v245 * v244;
            if ((v245 * v244) > 0.0)
            {
              v247 = v245 * COERCE_FLOAT(bswap32(*v25));
              if (v243)
              {
                v248 = COERCE_FLOAT(bswap32(*v7));
                if (v248 <= 0.0)
                {
                  goto LABEL_344;
                }
              }

              else
              {
                v248 = 1.0;
              }

              v249 = PDAoverlayPDA(COERCE_FLOAT(bswap32(*v13)), v248, v247, v246);
              v243 = v675;
              v247 = v249;
              if (v675)
              {
                v246 = v250;
                v21 = v673;
                v240 = 4 * v675;
LABEL_344:
                *v13 = bswap32(LODWORD(v247));
                *v7 = bswap32(LODWORD(v246));
                goto LABEL_346;
              }

              *v13 = bswap32(LODWORD(v249));
              v21 = v673;
              v240 = v660;
            }
          }

LABEL_346:
          v15 += v40;
          v251 = &v25[v40];
          if (v251 >= v676)
          {
            v252 = v239;
          }

          else
          {
            v252 = 0;
          }

          v241 += v238 + v252;
          v25 = &v251[v252];
          v7 = (v7 + v240);
          v13 += v40;
          --v242;
        }

        while (v242);
        if (v655)
        {
          v253 = &v674[v658];
          v254 = v645;
          if (v253 < v655)
          {
            v254 = 0;
          }

          v241 = &v672[v654 + v254];
          v255 = v649;
          if (v253 < v655)
          {
            v255 = 0;
          }

          v25 = &v253[v255];
          v676 += 4 * v255 + 4 * v658;
          v672 += v654 + v254;
          v674 = v25;
        }

        else
        {
          v25 += v658;
          v241 += v654;
        }

        v10 = v659;
        v15 += v657;
        v13 += v656;
        v7 += v671;
        v9 = v666 - 1;
        if (v666 == 1)
        {
          return;
        }
      }

    case 16:
      v65 = -v36;
      v66 = -(v19 * v23);
      v67 = -(v20 * v23);
      v68 = v672;
      while (1)
      {
        v69 = v10;
        do
        {
          if (*v15)
          {
            v70 = v21 ? COERCE_FLOAT(bswap32(*v68)) : 1.0;
            v71 = *v15 * 0.0039216;
            v72 = v71 * v70;
            if (v72 > 0.0)
            {
              v73 = v71 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v74 = COERCE_FLOAT(bswap32(*v7));
                if (v74 <= 0.0)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v74 = 1.0;
              }

              v75 = COERCE_FLOAT(bswap32(*v13));
              v76 = v72 * v75;
              if ((v73 * v74) < (v72 * v75))
              {
                v76 = v73 * v74;
              }

              v77 = v76 + (v75 * (1.0 - v72));
              if (v72 == 1.0)
              {
                v77 = v76;
              }

              v73 = v77 + (v73 * (1.0 - v74));
              if (v74 == 1.0)
              {
                v73 = v77;
              }

              if (v675)
              {
                v72 = (v72 + v74) - (v74 * v72);
LABEL_89:
                *v13 = bswap32(LODWORD(v73));
                *v7 = bswap32(LODWORD(v72));
                goto LABEL_91;
              }

              *v13 = bswap32(LODWORD(v73));
            }
          }

LABEL_91:
          v15 += v29;
          v78 = &v25[v29];
          v79 = &v68[v21];
          if (v78 >= v676)
          {
            v80 = v65;
          }

          else
          {
            v80 = 0;
          }

          v68 = &v79[v80];
          v25 = &v78[v80];
          v7 += v675;
          v13 += v29;
          --v69;
        }

        while (v69);
        if (v30)
        {
          v81 = &v674[v19];
          if (v81 >= v30)
          {
            v82 = v67;
          }

          else
          {
            v82 = 0;
          }

          v83 = &v672[v20 + v82];
          if (v81 >= v30)
          {
            v84 = v66;
          }

          else
          {
            v84 = 0;
          }

          v25 = &v81[v84];
          v676 += 4 * v84 + 4 * v19;
          v672 += v20 + v82;
          v68 = v83;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v68 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 17:
      v315 = -v36;
      v316 = -(v19 * v23);
      v317 = -(v20 * v23);
      v318 = v672;
      while (1)
      {
        v319 = v10;
        do
        {
          if (*v15)
          {
            v320 = v21 ? COERCE_FLOAT(bswap32(*v318)) : 1.0;
            v321 = *v15 * 0.0039216;
            v322 = v321 * v320;
            if (v322 > 0.0)
            {
              v323 = v321 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v324 = COERCE_FLOAT(bswap32(*v7));
                if (v324 <= 0.0)
                {
                  goto LABEL_452;
                }
              }

              else
              {
                v324 = 1.0;
              }

              v325 = COERCE_FLOAT(bswap32(*v13));
              v326 = v322 * v325;
              if ((v323 * v324) > (v322 * v325))
              {
                v326 = v323 * v324;
              }

              v327 = v326 + (v325 * (1.0 - v322));
              if (v322 == 1.0)
              {
                v327 = v326;
              }

              v323 = v327 + (v323 * (1.0 - v324));
              if (v324 == 1.0)
              {
                v323 = v327;
              }

              if (v675)
              {
                v322 = (v322 + v324) - (v324 * v322);
LABEL_452:
                *v13 = bswap32(LODWORD(v323));
                *v7 = bswap32(LODWORD(v322));
                goto LABEL_454;
              }

              *v13 = bswap32(LODWORD(v323));
            }
          }

LABEL_454:
          v15 += v29;
          v328 = &v25[v29];
          v329 = &v318[v21];
          if (v328 >= v676)
          {
            v330 = v315;
          }

          else
          {
            v330 = 0;
          }

          v318 = &v329[v330];
          v25 = &v328[v330];
          v7 += v675;
          v13 += v29;
          --v319;
        }

        while (v319);
        if (v30)
        {
          v331 = &v674[v19];
          if (v331 >= v30)
          {
            v332 = v317;
          }

          else
          {
            v332 = 0;
          }

          v333 = &v672[v20 + v332];
          if (v331 >= v30)
          {
            v334 = v316;
          }

          else
          {
            v334 = 0;
          }

          v25 = &v331[v334];
          v676 += 4 * v334 + 4 * v19;
          v672 += v20 + v332;
          v318 = v333;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v318 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 18:
      v429 = v21;
      v430 = -v36;
      v647 = -(v20 * v23);
      v652 = -(v19 * v23);
      v431 = 4 * v675;
      v432 = v672;
      v663 = v431;
      while (1)
      {
        v669 = v9;
        v433 = v10;
        v434 = v675;
        do
        {
          if (*v15)
          {
            v435 = v21 ? COERCE_FLOAT(bswap32(*v432)) : 1.0;
            v436 = *v15 * 0.0039216;
            v437 = v436 * v435;
            if ((v436 * v435) > 0.0)
            {
              v438 = v436 * COERCE_FLOAT(bswap32(*v25));
              if (v434)
              {
                v439 = COERCE_FLOAT(bswap32(*v7));
                if (v439 <= 0.0)
                {
                  goto LABEL_620;
                }
              }

              else
              {
                v439 = 1.0;
              }

              v440 = PDAcolordodgePDA(COERCE_FLOAT(bswap32(*v13)), v439, v438, v437);
              v434 = v675;
              v438 = v440;
              if (v675)
              {
                v437 = v441;
                v21 = v673;
                v431 = 4 * v675;
LABEL_620:
                *v13 = bswap32(LODWORD(v438));
                *v7 = bswap32(LODWORD(v437));
                goto LABEL_622;
              }

              *v13 = bswap32(LODWORD(v440));
              v21 = v673;
              v431 = v663;
            }
          }

LABEL_622:
          v15 += v40;
          v442 = &v25[v40];
          if (v442 >= v676)
          {
            v443 = v430;
          }

          else
          {
            v443 = 0;
          }

          v432 += v429 + v443;
          v25 = &v442[v443];
          v7 = (v7 + v431);
          v13 += v40;
          --v433;
        }

        while (v433);
        if (v655)
        {
          v444 = &v674[v658];
          v445 = v647;
          if (v444 < v655)
          {
            v445 = 0;
          }

          v432 = &v672[v654 + v445];
          v446 = v652;
          if (v444 < v655)
          {
            v446 = 0;
          }

          v25 = &v444[v446];
          v676 += 4 * v446 + 4 * v658;
          v672 += v654 + v445;
          v674 = v25;
        }

        else
        {
          v25 += v658;
          v432 += v654;
        }

        v10 = v659;
        v15 += v657;
        v13 += v656;
        v7 += v671;
        v9 = v669 - 1;
        if (v669 == 1)
        {
          return;
        }
      }

    case 19:
      v502 = v21;
      v503 = -v36;
      v648 = -(v20 * v23);
      v653 = -(v19 * v23);
      v504 = 4 * v675;
      v505 = v672;
      v664 = v504;
      while (1)
      {
        v670 = v9;
        v506 = v10;
        v507 = v675;
        do
        {
          if (*v15)
          {
            v508 = v21 ? COERCE_FLOAT(bswap32(*v505)) : 1.0;
            v509 = *v15 * 0.0039216;
            v510 = v509 * v508;
            if ((v509 * v508) > 0.0)
            {
              v511 = v509 * COERCE_FLOAT(bswap32(*v25));
              if (v507)
              {
                v512 = COERCE_FLOAT(bswap32(*v7));
                if (v512 <= 0.0)
                {
                  goto LABEL_722;
                }
              }

              else
              {
                v512 = 1.0;
              }

              v513 = PDAcolorburnPDA(COERCE_FLOAT(bswap32(*v13)), v512, v511, v510);
              v507 = v675;
              v511 = *&v513;
              if (v675)
              {
                v510 = v514;
                v21 = v673;
                v504 = 4 * v675;
LABEL_722:
                *v13 = bswap32(LODWORD(v511));
                *v7 = bswap32(LODWORD(v510));
                goto LABEL_724;
              }

              *v13 = bswap32(LODWORD(v513));
              v21 = v673;
              v504 = v664;
            }
          }

LABEL_724:
          v15 += v40;
          v515 = &v25[v40];
          if (v515 >= v676)
          {
            v516 = v503;
          }

          else
          {
            v516 = 0;
          }

          v505 += v502 + v516;
          v25 = &v515[v516];
          v7 = (v7 + v504);
          v13 += v40;
          --v506;
        }

        while (v506);
        if (v655)
        {
          v517 = &v674[v658];
          v518 = v648;
          if (v517 < v655)
          {
            v518 = 0;
          }

          v505 = &v672[v654 + v518];
          v519 = v653;
          if (v517 < v655)
          {
            v519 = 0;
          }

          v25 = &v517[v519];
          v676 += 4 * v519 + 4 * v658;
          v672 += v654 + v518;
          v674 = v25;
        }

        else
        {
          v25 += v658;
          v505 += v654;
        }

        v10 = v659;
        v15 += v657;
        v13 += v656;
        v7 += v671;
        v9 = v670 - 1;
        if (v670 == 1)
        {
          return;
        }
      }

    case 20:
      v335 = v21;
      v336 = -v36;
      v661 = -(v19 * v23);
      v650 = -(v20 * v23);
      v337 = 4 * v675;
      v338 = 4 * v29;
      v339 = v672;
      v665 = v29;
      while (1)
      {
        v667 = v9;
        v340 = v10;
        v341 = v675;
        do
        {
          if (*v15)
          {
            v342 = v21 ? COERCE_FLOAT(bswap32(*v339)) : 1.0;
            v343 = *v15 * 0.0039216;
            v344 = v343 * v342;
            if ((v343 * v342) > 0.0)
            {
              v345 = v343 * COERCE_FLOAT(bswap32(*v25));
              if (v341)
              {
                v346 = COERCE_FLOAT(bswap32(*v7));
                if (v346 <= 0.0)
                {
                  goto LABEL_482;
                }
              }

              else
              {
                v346 = 1.0;
              }

              v347 = v337;
              v348 = PDAsoftlightPDA(COERCE_FLOAT(bswap32(*v13)), v346, v345, v344);
              v341 = v675;
              v345 = v348;
              if (v675)
              {
                v344 = v349;
                v21 = v673;
                v337 = v347;
                v40 = v665;
LABEL_482:
                *v13 = bswap32(LODWORD(v345));
                *v7 = bswap32(LODWORD(v344));
                goto LABEL_484;
              }

              *v13 = bswap32(LODWORD(v348));
              v21 = v673;
              v337 = v347;
              v40 = v665;
            }
          }

LABEL_484:
          v15 += v40;
          v350 = &v25[v40];
          if (v350 >= v676)
          {
            v351 = v336;
          }

          else
          {
            v351 = 0;
          }

          v339 += v335 + v351;
          v25 = &v350[v351];
          v7 = (v7 + v337);
          v13 = (v13 + v338);
          --v340;
        }

        while (v340);
        if (v655)
        {
          v352 = &v674[v658];
          v353 = v650;
          if (v352 < v655)
          {
            v353 = 0;
          }

          v339 = &v672[v654 + v353];
          v354 = v661;
          if (v352 < v655)
          {
            v354 = 0;
          }

          v25 = &v352[v354];
          v676 += 4 * v354 + 4 * v658;
          v672 += v654 + v353;
          v674 = v25;
        }

        else
        {
          v25 += v658;
          v339 += v654;
        }

        v10 = v659;
        v15 += v657;
        v13 += v656;
        v7 += v671;
        v9 = v667 - 1;
        if (v667 == 1)
        {
          return;
        }
      }

    case 21:
      v371 = v21;
      v372 = -v36;
      v646 = -(v20 * v23);
      v651 = -(v19 * v23);
      v373 = 4 * v29;
      v374 = v672;
      v662 = v373;
      do
      {
        v668 = v9;
        v375 = v10;
        v376 = v675;
        do
        {
          if (*v15)
          {
            v377 = v21 ? COERCE_FLOAT(bswap32(*v374)) : 1.0;
            v378 = *v15 * 0.0039216;
            v379 = v378 * v377;
            if ((v378 * v377) > 0.0)
            {
              v380 = v378 * COERCE_FLOAT(bswap32(*v25));
              if (v376)
              {
                v381 = COERCE_FLOAT(bswap32(*v7));
                if (v381 <= 0.0)
                {
                  goto LABEL_529;
                }
              }

              else
              {
                v381 = 1.0;
              }

              v382 = PDAhardlightPDA(COERCE_FLOAT(bswap32(*v13)), v381, v380, v379);
              v376 = v675;
              v380 = v382;
              if (v675)
              {
                v379 = v383;
                v21 = v673;
                v373 = v662;
LABEL_529:
                *v13 = bswap32(LODWORD(v380));
                *v7 = bswap32(LODWORD(v379));
                goto LABEL_531;
              }

              *v13 = bswap32(LODWORD(v382));
              v21 = v673;
              v373 = v662;
            }
          }

LABEL_531:
          v15 += v40;
          v384 = &v25[v40];
          if (v384 >= v676)
          {
            v385 = v372;
          }

          else
          {
            v385 = 0;
          }

          v374 += v371 + v385;
          v25 = &v384[v385];
          v7 += v675;
          v13 = (v13 + v373);
          --v375;
        }

        while (v375);
        if (v655)
        {
          v386 = &v674[v658];
          v387 = v646;
          if (v386 < v655)
          {
            v387 = 0;
          }

          v374 = &v672[v654 + v387];
          v388 = v651;
          if (v386 < v655)
          {
            v388 = 0;
          }

          v25 = &v386[v388];
          v676 += 4 * v388 + 4 * v658;
          v672 += v654 + v387;
          v674 = v25;
        }

        else
        {
          v25 += v658;
          v374 += v654;
        }

        v10 = v659;
        v15 += v657;
        v13 += v656;
        v7 += v671;
        v9 = v668 - 1;
      }

      while (v668 != 1);
      return;
    case 22:
      v480 = -v36;
      v481 = -(v19 * v23);
      v482 = -(v20 * v23);
      v483 = v672;
      while (1)
      {
        v484 = v10;
        do
        {
          if (*v15)
          {
            v485 = v21 ? COERCE_FLOAT(bswap32(*v483)) : 1.0;
            v486 = *v15 * 0.0039216;
            v487 = v486 * v485;
            if (v487 > 0.0)
            {
              v488 = v486 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v489 = COERCE_FLOAT(bswap32(*v7));
                if (v489 <= 0.0)
                {
                  goto LABEL_692;
                }
              }

              else
              {
                v489 = 1.0;
              }

              v490 = COERCE_FLOAT(bswap32(*v13));
              v491 = v488 + v490;
              v492 = v488 * v489;
              v493 = (v487 * v490) - v492;
              v494 = (v491 - (v487 * v490)) - v492;
              if (v493 < 0.0)
              {
                v493 = -v493;
              }

              v488 = v494 + v493;
              if (v675)
              {
                v487 = (v487 + v489) - (v489 * v487);
LABEL_692:
                *v13 = bswap32(LODWORD(v488));
                *v7 = bswap32(LODWORD(v487));
                goto LABEL_694;
              }

              *v13 = bswap32(LODWORD(v488));
            }
          }

LABEL_694:
          v15 += v29;
          v495 = &v25[v29];
          v496 = &v483[v21];
          if (v495 >= v676)
          {
            v497 = v480;
          }

          else
          {
            v497 = 0;
          }

          v483 = &v496[v497];
          v25 = &v495[v497];
          v7 += v675;
          v13 += v29;
          --v484;
        }

        while (v484);
        if (v30)
        {
          v498 = &v674[v19];
          if (v498 >= v30)
          {
            v499 = v482;
          }

          else
          {
            v499 = 0;
          }

          v500 = &v672[v20 + v499];
          if (v498 >= v30)
          {
            v501 = v481;
          }

          else
          {
            v501 = 0;
          }

          v25 = &v498[v501];
          v676 += 4 * v501 + 4 * v19;
          v672 += v20 + v499;
          v483 = v500;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v483 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 23:
      v520 = -v36;
      v521 = -(v19 * v23);
      v522 = -(v20 * v23);
      v523 = v672;
      while (1)
      {
        v524 = v10;
        do
        {
          if (*v15)
          {
            v525 = v21 ? COERCE_FLOAT(bswap32(*v523)) : 1.0;
            v526 = *v15 * 0.0039216;
            v527 = v526 * v525;
            if (v527 > 0.0)
            {
              v528 = v526 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v529 = COERCE_FLOAT(bswap32(*v7));
                if (v529 <= 0.0)
                {
                  goto LABEL_750;
                }
              }

              else
              {
                v529 = 1.0;
              }

              v530 = COERCE_FLOAT(bswap32(*v13));
              v528 = (v528 + v530) + ((v528 * v530) * -2.0);
              if (v675)
              {
                v527 = (v527 + v529) - (v529 * v527);
LABEL_750:
                *v13 = bswap32(LODWORD(v528));
                *v7 = bswap32(LODWORD(v527));
                goto LABEL_752;
              }

              *v13 = bswap32(LODWORD(v528));
            }
          }

LABEL_752:
          v15 += v29;
          v531 = &v25[v29];
          v532 = &v523[v21];
          if (v531 >= v676)
          {
            v533 = v520;
          }

          else
          {
            v533 = 0;
          }

          v523 = &v532[v533];
          v25 = &v531[v533];
          v7 += v675;
          v13 += v29;
          --v524;
        }

        while (v524);
        if (v30)
        {
          v534 = &v674[v19];
          if (v534 >= v30)
          {
            v535 = v522;
          }

          else
          {
            v535 = 0;
          }

          v536 = &v672[v20 + v535];
          if (v534 >= v30)
          {
            v537 = v521;
          }

          else
          {
            v537 = 0;
          }

          v25 = &v534[v537];
          v676 += 4 * v537 + 4 * v19;
          v672 += v20 + v535;
          v523 = v536;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v523 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 24:
      v198 = -v36;
      v199 = -(v19 * v23);
      v200 = -(v20 * v23);
      v201 = v672;
      while (1)
      {
        v202 = v10;
        do
        {
          if (*v15)
          {
            v203 = v21 ? COERCE_FLOAT(bswap32(*v201)) : 1.0;
            v204 = *v15 * 0.0039216;
            v205 = v204 * v203;
            if (v205 > 0.0)
            {
              v206 = v204 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v207 = COERCE_FLOAT(bswap32(*v7));
                if (v207 <= 0.0)
                {
                  goto LABEL_286;
                }
              }

              else
              {
                v207 = 1.0;
              }

              v208 = COERCE_FLOAT(bswap32(*v13));
              v209 = v208;
              if (v205 == 1.0)
              {
                v210 = 0.0;
              }

              else
              {
                v209 = v205 * v208;
                v210 = v208 - (v205 * v208);
              }

              v211 = (v206 + v210) - (v206 * v207);
              if (v207 == 1.0)
              {
                v211 = v210;
              }

              v206 = v209 + v211;
              if (v675)
              {
                v205 = (v205 + v207) - (v205 * v207);
LABEL_286:
                *v13 = bswap32(LODWORD(v206));
                *v7 = bswap32(LODWORD(v205));
                goto LABEL_288;
              }

              *v13 = bswap32(LODWORD(v206));
            }
          }

LABEL_288:
          v15 += v29;
          v212 = &v25[v29];
          v213 = &v201[v21];
          if (v212 >= v676)
          {
            v214 = v198;
          }

          else
          {
            v214 = 0;
          }

          v201 = &v213[v214];
          v25 = &v212[v214];
          v7 += v675;
          v13 += v29;
          --v202;
        }

        while (v202);
        if (v30)
        {
          v215 = &v674[v19];
          if (v215 >= v30)
          {
            v216 = v200;
          }

          else
          {
            v216 = 0;
          }

          v217 = &v672[v20 + v216];
          if (v215 >= v30)
          {
            v218 = v199;
          }

          else
          {
            v218 = 0;
          }

          v25 = &v215[v218];
          v676 += 4 * v218 + 4 * v19;
          v672 += v20 + v216;
          v201 = v217;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v201 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 25:
      v177 = -v36;
      v178 = -(v19 * v23);
      v179 = -(v20 * v23);
      v180 = v672;
      while (1)
      {
        v181 = v10;
        do
        {
          if (*v15)
          {
            v182 = v21 ? COERCE_FLOAT(bswap32(*v180)) : 1.0;
            v183 = *v15 * 0.0039216;
            v184 = v183 * v182;
            if (v184 > 0.0)
            {
              v185 = v183 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v186 = COERCE_FLOAT(bswap32(*v7));
                if (v186 <= 0.0)
                {
                  goto LABEL_251;
                }
              }

              else
              {
                v186 = 1.0;
              }

              v187 = COERCE_FLOAT(bswap32(*v13));
              v188 = v187;
              if (v184 == 1.0)
              {
                v189 = 0.0;
              }

              else
              {
                v188 = v184 * v187;
                v189 = v187 - (v184 * v187);
              }

              v190 = (v185 + v189) - (v185 * v186);
              if (v186 == 1.0)
              {
                v190 = v189;
              }

              v185 = v188 + v190;
              if (v675)
              {
                v184 = (v184 + v186) - (v184 * v186);
LABEL_251:
                *v13 = bswap32(LODWORD(v185));
                *v7 = bswap32(LODWORD(v184));
                goto LABEL_253;
              }

              *v13 = bswap32(LODWORD(v185));
            }
          }

LABEL_253:
          v15 += v29;
          v191 = &v25[v29];
          v192 = &v180[v21];
          if (v191 >= v676)
          {
            v193 = v177;
          }

          else
          {
            v193 = 0;
          }

          v180 = &v192[v193];
          v25 = &v191[v193];
          v7 += v675;
          v13 += v29;
          --v181;
        }

        while (v181);
        if (v30)
        {
          v194 = &v674[v19];
          if (v194 >= v30)
          {
            v195 = v179;
          }

          else
          {
            v195 = 0;
          }

          v196 = &v672[v20 + v195];
          if (v194 >= v30)
          {
            v197 = v178;
          }

          else
          {
            v197 = 0;
          }

          v25 = &v194[v197];
          v676 += 4 * v197 + 4 * v19;
          v672 += v20 + v195;
          v180 = v196;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v180 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 26:
      v538 = -v36;
      v539 = -(v19 * v23);
      v540 = -(v20 * v23);
      v541 = v672;
      while (1)
      {
        v542 = v10;
        do
        {
          if (*v15)
          {
            v543 = v21 ? COERCE_FLOAT(bswap32(*v541)) : 1.0;
            v544 = *v15 * 0.0039216;
            v545 = v544 * v543;
            if (v545 > 0.0)
            {
              v546 = v544 * COERCE_FLOAT(bswap32(*v25));
              if (v675)
              {
                v547 = COERCE_FLOAT(bswap32(*v7));
                if (v547 <= 0.0)
                {
                  goto LABEL_784;
                }
              }

              else
              {
                v547 = 1.0;
              }

              v548 = COERCE_FLOAT(bswap32(*v13));
              v549 = v548;
              v550 = v546 - (v546 * v547);
              if (v547 == 1.0)
              {
                v550 = 0.0;
              }

              if (v545 != 1.0)
              {
                v549 = v545 * v548;
                v550 = (v550 + v548) - (v545 * v548);
              }

              v546 = v549 + v550;
              if (v675)
              {
                v545 = (v545 + v547) - (v545 * v547);
LABEL_784:
                *v13 = bswap32(LODWORD(v546));
                *v7 = bswap32(LODWORD(v545));
                goto LABEL_786;
              }

              *v13 = bswap32(LODWORD(v546));
            }
          }

LABEL_786:
          v15 += v29;
          v551 = &v25[v29];
          v552 = &v541[v21];
          if (v551 >= v676)
          {
            v553 = v538;
          }

          else
          {
            v553 = 0;
          }

          v541 = &v552[v553];
          v25 = &v551[v553];
          v7 += v675;
          v13 += v29;
          --v542;
        }

        while (v542);
        if (v30)
        {
          v554 = &v674[v19];
          if (v554 >= v30)
          {
            v555 = v540;
          }

          else
          {
            v555 = 0;
          }

          v556 = &v672[v20 + v555];
          if (v554 >= v30)
          {
            v557 = v539;
          }

          else
          {
            v557 = 0;
          }

          v25 = &v554[v557];
          v676 += 4 * v557 + 4 * v19;
          v672 += v20 + v555;
          v541 = v556;
          v674 = v25;
        }

        else
        {
          v25 += v19;
          v541 += v20;
        }

        v15 += v38;
        v13 += v39;
        v7 += v671;
        if (!--v9)
        {
          return;
        }
      }

    case 27:
      v45 = -v36;
      v46 = -(v19 * v23);
      v47 = -(v20 * v23);
      v48 = v672;
      break;
    default:
      return;
  }

LABEL_37:
  v49 = v10;
  while (1)
  {
    if (!*v15)
    {
      goto LABEL_55;
    }

    v50 = v21 ? COERCE_FLOAT(bswap32(*v48)) : 1.0;
    v51 = *v15 * 0.0039216;
    v52 = v51 * v50;
    if (v52 <= 0.0)
    {
      goto LABEL_55;
    }

    v53 = v51 * COERCE_FLOAT(bswap32(*v25));
    if (v675)
    {
      v54 = COERCE_FLOAT(bswap32(*v7));
      if (v54 <= 0.0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v54 = 1.0;
    }

    v55 = COERCE_FLOAT(bswap32(*v13));
    v56 = v55 - (v52 * v55);
    if (v52 == 1.0)
    {
      v56 = 0.0;
    }

    v57 = (v53 + v56) - (v53 * v54);
    if (v54 != 1.0)
    {
      v53 = v53 * v54;
      v56 = v57;
    }

    v53 = v53 + v56;
    if (!v675)
    {
      *v13 = bswap32(LODWORD(v53));
      goto LABEL_55;
    }

    v52 = (v52 + v54) - (v52 * v54);
LABEL_53:
    *v13 = bswap32(LODWORD(v53));
    *v7 = bswap32(LODWORD(v52));
LABEL_55:
    v15 += v29;
    v58 = &v25[v29];
    v59 = &v48[v21];
    if (v58 >= v676)
    {
      v60 = v45;
    }

    else
    {
      v60 = 0;
    }

    v48 = &v59[v60];
    v25 = &v58[v60];
    v7 += v675;
    v13 += v29;
    if (!--v49)
    {
      if (v30)
      {
        v61 = &v674[v19];
        if (v61 >= v30)
        {
          v62 = v47;
        }

        else
        {
          v62 = 0;
        }

        v63 = &v672[v20 + v62];
        if (v61 >= v30)
        {
          v64 = v46;
        }

        else
        {
          v64 = 0;
        }

        v25 = &v61[v64];
        v676 += 4 * v64 + 4 * v19;
        v672 += v20 + v62;
        v48 = v63;
        v674 = v25;
      }

      else
      {
        v25 += v19;
        v48 += v20;
      }

      v15 += v38;
      v13 += v39;
      v7 += v671;
      if (!--v9)
      {
        return;
      }

      goto LABEL_37;
    }
  }
}

uint64_t WF_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v38, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v32, v38) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v33 = v19;
  v34 = v18;
  if (v19 == 136319237)
  {
    if (!v37 && (~v36 & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((v36 & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        WF_mark_inner(*(*a1 + 56), v17);
        return 1;
      }
    }

    v32 = Wf_sample_WF_inner;
    goto LABEL_37;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    goto LABEL_28;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v21 = 0;
        v22 = 32;
        break;
      case 9:
        v21 = 0;
        v22 = 40;
        break;
      case 8:
        v21 = 0;
        v22 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v21 = 0;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v22 = 255;
    v21 = 1;
    goto LABEL_29;
  }

  if (v20 != 5)
  {
    if (v20 == 6)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 24;
LABEL_29:
  v23 = WF_image_sample;
  v32 = *&WF_image_sample[2 * v20 + 2];
  if (v32)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8)
  {
    if ((*a3 & 0x3F0000u) >> 16 > 0x10)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_34;
  }

  v23 = W8_image_sample;
  v32 = *&W8_image_sample[2 * v20 + 2];
  if (!v32)
  {
LABEL_34:
    v23 = W16_image_sample;
    v32 = *&W16_image_sample[2 * v20 + 2];
    if (v32)
    {
      goto LABEL_35;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_35:
  v35 = 4;
LABEL_36:
  v33 = *v23;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (v36 & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_37;
  }

  HIDWORD(v25) = v22;
  LODWORD(v25) = v22;
  v24 = v25 >> 3;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v33 = *a3;
      v26 = WF_image_mark_RGB24;
      goto LABEL_65;
    }

    if (v24 == 4)
    {
      v33 = *a3;
      v26 = WF_image_mark_rgb32;
      goto LABEL_65;
    }

    if (v24 != 5)
    {
      goto LABEL_37;
    }

    v33 = *a3;
    v27 = WF_image_mark_rgb32;
LABEL_63:
    v28 = v27;
    v29 = a2;
    v30 = v8;
    v31 = 8;
LABEL_66:
    WF_image_mark_image(v29, &v32, v30, v31, v28);
    return 1;
  }

  switch(v24)
  {
    case 0:
      v33 = *a3;
      v26 = WF_image_mark_RGB32;
      goto LABEL_65;
    case 1:
      v33 = *a3;
      v27 = WF_image_mark_RGB32;
      goto LABEL_63;
    case 2:
      v33 = *a3;
      v26 = WF_image_mark_W8;
LABEL_65:
      v28 = v26;
      v29 = a2;
      v30 = v8;
      v31 = 0;
      goto LABEL_66;
  }

LABEL_37:
  WF_image_mark(a2, &v32, v8, v17);
  return 1;
}

void WF_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, _DWORD *))
{
  v57[0] = a3;
  v57[1] = a4;
  v57[2] = *(a2 + 184);
  v8 = *(a1 + 28) >> 2;
  v59 = v8;
  if (*(a1 + 48))
  {
    v9 = *(a1 + 32) >> 2;
  }

  else
  {
    v9 = 0;
  }

  v61 = v9;
  v10 = *(a2 + 120);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v11);
  v13 = BYTE2(v11);
  if (v10)
  {
    v14 = *(a2 + 24);
    v15 = (a2 + 104);
    v16 = (a2 + 72);
    v17 = (a2 + 88);
    v18 = v12;
  }

  else
  {
    v14 = *(a2 + 8) >> 25;
    v15 = (a2 + 96);
    v16 = (a2 + 64);
    v17 = (a2 + 80);
    v10 = *(a2 + 112);
    v18 = v13;
  }

  v19 = *v17;
  v20 = *v16;
  v21 = *v15;
  v22 = v18;
  v64 = v18;
  v62 = v21;
  v72 = v14;
  v55 = v20;
  v56 = v19;
  v70 = v19;
  v68 = v20;
  v66 = v10;
  v23 = *(a2 + 128);
  if (v23)
  {
    v24 = *(a2 + 8) >> 25;
    v25 = (a2 + 96);
    v26 = (a2 + 64);
    v27 = (a2 + 80);
    v12 = v13;
  }

  else
  {
    v24 = *(a2 + 24);
    v25 = (a2 + 104);
    v26 = (a2 + 72);
    v27 = (a2 + 88);
    v23 = *(a2 + 136);
  }

  v28 = *v27;
  v29 = *v26;
  v30 = *v25;
  v65 = v12;
  v63 = v30;
  v73 = v24;
  v71 = v28;
  v69 = v29;
  v67 = v23;
  v31 = *(a1 + 4);
  if ((v31 & 0x80000000) == 0)
  {
    v32 = malloc_type_malloc(16 * v31, 0xE61F0151uLL);
    v74 = v32;
    if (v32)
    {
      if (*(a2 + 176))
      {
        if (v31)
        {
          v34 = v32 + 1;
          v35 = v56 - v21;
          do
          {
            if (((v21 - v55) | v35) < 0)
            {
              v39 = 0;
            }

            else
            {
              v36 = ((v21 & ~(-1 << v22)) >> (v22 - 4)) & 0xF;
              v37 = weights_21890[v36];
              if (v36 - 7 >= 9)
              {
                v38 = -v14;
              }

              else
              {
                v38 = v14;
              }

              v39 = v37 & 0xF | (16 * v38);
            }

            *(v34 - 1) = v14 * (v21 >> v22);
            *v34 = v39;
            v34 += 2;
            v21 += v10;
            v35 -= v10;
            --v31;
          }

          while (v31);
        }
      }

      else if (v31)
      {
        v40 = v32 + 1;
        do
        {
          *(v40 - 1) = v14 * (v21 >> v22);
          *v40 = 0;
          v40 += 2;
          v21 += v10;
          --v31;
        }

        while (v31);
      }

      v41 = v32;
      v42 = *(a1 + 4);
      v43 = *(a1 + 8);
      v75 = v43;
      v76 = v42;
      v44 = *(a1 + 136);
      if (v44)
      {
        v45 = *(a1 + 104);
        v77[0] = *(a1 + 108);
        v77[1] = v45;
        shape_enum_clip_alloc(v32, v33, v44, 1, 1, 1, v45, v77[0], v42, v43);
        v47 = v46;
        if (v46)
        {
          goto LABEL_32;
        }
      }

      v48 = 0;
      v49 = 0;
      v47 = 0;
      *v77 = 0;
      while (1)
      {
        v50 = *(a1 + 16) + v49;
        v51 = *(a1 + 48);
        v52 = v48 + *(a1 + 12);
        v53 = *(a1 + 40) + 4 * v8 * v50 + 4 * v52;
        v54 = v51 + 4 * v9 * v50 + 4 * v52;
        if (!v51)
        {
          v54 = 0;
        }

        v58 = v53;
        v60 = v54;
        a5(a2, v57);
        if (!v47)
        {
          break;
        }

LABEL_32:
        if (!shape_enum_clip_next(v47, &v77[1], v77, &v76, &v75))
        {
          free(v47);
          break;
        }

        v49 = v77[0];
        v48 = v77[1];
        v8 = v59;
        v9 = v61;
      }

      free(v41);
    }
  }
}

void WF_image_mark(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4)
{
  v424 = a3;
  v429 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 28);
    v8 = *(a1 + 48);
    v426 = *(a1 + 40);
    v427 = v8;
    a4.n128_u32[0] = *(a2 + 184);
    v422 = a4;
    v9 = *(a1 + 136);
    v10 = *(a2 + 96);
    v418 = *(a2 + 104);
    v419 = v10;
    v11 = *(a1 + 12);
    v12 = *(a1 + 16);
    v428 = *(a1 + 8);
    v417 = a2;
    v13 = *(a2 + 16);
    v14 = (v13 + 10) * v5;
    if (v14 > 65439)
    {
      v17 = malloc_type_calloc(1uLL, v14 + 96, 0x9D538881uLL);
      v16 = v17;
      v19 = v17;
      v20 = v417;
      if (!v17)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v16 = &v410 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v15);
      v19 = 0;
      v20 = v417;
    }

    v412 = v19;
    v414 = v4;
    v21 = v7 >> 2;
    v22 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v13)
    {
      v24 = 8 * v5;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + v24;
    v20[18] = v22;
    v20[19] = v23 + v24;
    v20[20] = v23;
    v26 = v427;
    if (v427)
    {
      v27 = *(a1 + 32) >> 2;
      v28 = (v427 + 4 * v27 * v12 + 4 * v11);
      v29 = v414;
      v423 = v27 - v414;
      v26 = 1;
    }

    else
    {
      v28 = 0;
      v423 = 0;
      v29 = v414;
    }

    v30 = v9;
    v31 = &v426[4 * v21 * v12 + 4 * v11];
    v421 = v21 - v29;
    v32 = *(a1 + 104);
    v33 = *(a1 + 108);
    v34 = *(a1 + 2);
    if (v34 == 6 || v34 == 1)
    {
      v35 = v417;
      if (v30)
      {
        v410 = v7 >> 2;
        v36 = 0;
        LODWORD(v37) = 0;
        v38 = *(a1 + 124);
        v39 = v30 + v38 * v33 + v32;
        v40 = v414;
        v420 = v38 - v414;
        goto LABEL_21;
      }

      goto LABEL_585;
    }

    v410 = v7 >> 2;
    if (v30)
    {
      v411 = v26;
      shape_enum_clip_alloc(v17, v18, v30, 1, 1, 1, v32, v33, v4, v428);
      if (v41)
      {
        v42 = v41;
        v37 = 0;
        v43 = ((v13 * v5 + 15) & 0xFFFFFFF0);
        if (!v13)
        {
          v43 = 8 * v5;
        }

        v40 = v414;
        v420 = -v414;
        v39 = (v25 + v43 + 16);
        v35 = v417;
        goto LABEL_588;
      }

LABEL_585:
      if (v412)
      {
        free(v412);
      }

      return;
    }

    v420 = 0;
    v36 = 0;
    v39 = 0;
    LODWORD(v37) = 0;
    v35 = v417;
    v40 = v414;
LABEL_21:
    v416 = (v4 - 1);
    v415 = -v40;
    v411 = v26;
    v44 = v36;
    v45 = 4 * v26;
    v47 = v418;
    v46 = v419;
    v413 = v424;
LABEL_22:
    v425 = v37;
    v426 = v44;
    (*v35)(v35, v46, v47, v4);
    v48 = v35[20];
    v49 = v35[18];
    v50 = *(v35 + 2);
    if (v50 == *(v35 + 3))
    {
      v51 = v422.n128_f32[0];
      if (v422.n128_f32[0] >= 1.0)
      {
        v54 = v427;
      }

      else
      {
        v52 = v4;
        v53 = v35[18];
        v54 = v427;
        do
        {
          if (*v53)
          {
            *v48 = vmul_n_f32(*v48, v51);
          }

          ++v53;
          ++v48;
          --v52;
        }

        while (v52);
        v48 += v415;
        v49 += v416 + v415 + 1;
      }
    }

    else
    {
      v55 = v35[19];
      v56 = HIWORD(v50) & 0x3F;
      v57 = v422.n128_f32[0];
      if (v56 == 16)
      {
        v54 = v427;
        v60 = 0;
        v61 = v48 + 1;
        if (v422.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v49[v60])
            {
              v63 = *(v55 + 4 * v60);
              *(v61 - 1) = *&_blt_float[v63 + 256] + *&_blt_float[BYTE1(v63) + 512];
              *v61 = *&_blt_float[BYTE2(v63) + 256] + *(&_blt_float[512] + ((v63 >> 22) & 0x3FC));
            }

            ++v60;
            v61 += 2;
          }

          while (v4 != v60);
        }

        else
        {
          do
          {
            if (v49[v60])
            {
              v62 = *(v55 + 4 * v60);
              *(v61 - 1) = v57 * (*&_blt_float[v62 + 256] + *&_blt_float[BYTE1(v62) + 512]);
              *v61 = v57 * (*&_blt_float[BYTE2(v62) + 256] + *(&_blt_float[512] + ((v62 >> 22) & 0x3FC)));
            }

            ++v60;
            v61 += 2;
          }

          while (v4 != v60);
        }
      }

      else
      {
        v58 = v56 == 32;
        v54 = v427;
        v59 = 0;
        if (v58)
        {
          if (v422.n128_f32[0] >= 1.0)
          {
            do
            {
              if (v49[v59])
              {
                v48[v59] = *(v55 + 8 * v59);
              }

              ++v59;
            }

            while (v4 != v59);
          }

          else
          {
            do
            {
              if (v49[v59])
              {
                v48[v59] = vmul_n_f32(*(v55 + 8 * v59), v57);
              }

              ++v59;
            }

            while (v4 != v59);
          }
        }

        else
        {
          v64 = v48 + 1;
          if (v422.n128_f32[0] >= 1.0)
          {
            do
            {
              if (v49[v59])
              {
                v66 = *(v55 + 4 * v59);
                *(v64 - 1) = *&_blt_float[*(v55 + 4 * v59)];
                *v64 = *(_blt_float + ((v66 >> 22) & 0x3FC));
              }

              ++v59;
              v64 += 2;
            }

            while (v4 != v59);
          }

          else
          {
            do
            {
              if (v49[v59])
              {
                v65 = *(v55 + 4 * v59);
                *(v64 - 1) = v57 * *&_blt_float[*(v55 + 4 * v59)];
                *v64 = v57 * *(_blt_float + ((v65 >> 22) & 0x3FC));
              }

              ++v59;
              v64 += 2;
            }

            while (v4 != v59);
          }
        }
      }
    }

    switch(v424)
    {
      case 0u:
        v67 = v39 != 0;
        v68 = v4;
        v69 = v39;
        if (v54)
        {
          do
          {
            v70 = *v49;
            if (*v49)
            {
              if (v39)
              {
                v70 = (*v69 * v70 + ((*v69 * v70) >> 8) + 1) >> 8;
              }

              if (v70)
              {
                if (v70 == 255)
                {
                  *v28 = 0;
                  *v31 = 0;
                }

                else
                {
                  v71 = (v70 * -0.0039216) + 1.0;
                  *&v72 = v71 * COERCE_FLOAT(bswap32(*v28));
                  *v31 = bswap32(COERCE_UNSIGNED_INT(v71 * COERCE_FLOAT(bswap32(*v31))));
                  *v28 = bswap32(v72);
                }
              }
            }

            ++v49;
            v69 += v67;
            ++v31;
            ++v28;
            --v68;
          }

          while (v68);
        }

        else
        {
          do
          {
            v73 = *v49;
            if (*v49)
            {
              if (v39)
              {
                v73 = (*v69 * v73 + ((*v69 * v73) >> 8) + 1) >> 8;
              }

              if (v73)
              {
                if (v73 == 255)
                {
                  *v31 = 0;
                }

                else
                {
                  *v31 = bswap32(COERCE_UNSIGNED_INT(((v73 * -0.0039216) + 1.0) * COERCE_FLOAT(bswap32(*v31))));
                }
              }
            }

            ++v49;
            v69 += v67;
            ++v31;
            --v68;
          }

          while (v68);
        }

        goto LABEL_499;
      case 1u:
        v219 = *v49;
        if (v54)
        {
          v220 = v31 - 1;
          v221 = v48 + 1;
          v222 = v49 + 1;
          v223 = v28 - 1;
          v224 = v4;
          if (v39)
          {
            v174 = v428;
            do
            {
              if (v219)
              {
                v225 = ((*v39 * v219 + ((*v39 * v219) >> 8) + 1) >> 8);
                if (v225)
                {
                  if (v225 == 255)
                  {
                    v226 = *v221;
                    v227 = bswap32(*(v221 - 1));
                  }

                  else
                  {
                    v228 = v225 * 0.0039216;
                    v227 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v228) * COERCE_FLOAT(bswap32(v220[1]))) + (*(v221 - 1) * v228)));
                    v226 = ((1.0 - v228) * COERCE_FLOAT(bswap32(v223[1]))) + (*v221 * v228);
                  }

                  v220[1] = v227;
                  v223[1] = bswap32(LODWORD(v226));
                }
              }

              v229 = *v222++;
              v219 = v229;
              ++v39;
              ++v220;
              v221 += 2;
              ++v223;
              --v224;
            }

            while (v224);
            v39 += v420;
          }

          else
          {
            v174 = v428;
            do
            {
              if (v219)
              {
                if (v219 == 255)
                {
                  v392 = *v221;
                  v393 = bswap32(*(v221 - 1));
                }

                else
                {
                  v394 = v219 * 0.0039216;
                  v393 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v394) * COERCE_FLOAT(bswap32(v220[1]))) + (*(v221 - 1) * v394)));
                  v392 = ((1.0 - v394) * COERCE_FLOAT(bswap32(v223[1]))) + (*v221 * v394);
                }

                v220[1] = v393;
                v223[1] = bswap32(LODWORD(v392));
              }

              v395 = *v222++;
              v219 = v395;
              ++v220;
              v221 += 2;
              ++v223;
              --v224;
            }

            while (v224);
            v39 = 0;
          }

          v31 = &v220[v421 + 1];
          v28 = &v223[v423 + 1];
          goto LABEL_502;
        }

        v379 = v49 + 1;
        v371 = v31 - 1;
        v380 = v4;
        if (v39)
        {
          v174 = v428;
          do
          {
            if (v219)
            {
              v381 = ((*v39 * v219 + ((*v39 * v219) >> 8) + 1) >> 8);
              if (v381)
              {
                if (v381 == 255)
                {
                  v382 = v48->f32[0];
                }

                else
                {
                  v382 = ((1.0 - (v381 * 0.0039216)) * COERCE_FLOAT(bswap32(v371[1]))) + (v48->f32[0] * (v381 * 0.0039216));
                }

                v371[1] = bswap32(LODWORD(v382));
              }
            }

            v383 = *v379++;
            v219 = v383;
            ++v48;
            ++v39;
            ++v371;
            --v380;
          }

          while (v380);
          goto LABEL_537;
        }

        v174 = v428;
        do
        {
          if (v219)
          {
            if (v219 == 255)
            {
              v401 = v48->f32[0];
            }

            else
            {
              v401 = ((1.0 - (v219 * 0.0039216)) * COERCE_FLOAT(bswap32(v371[1]))) + (v48->f32[0] * (v219 * 0.0039216));
            }

            v371[1] = bswap32(LODWORD(v401));
          }

          v402 = *v379++;
          v219 = v402;
          ++v48;
          ++v371;
          --v380;
        }

        while (v380);
        goto LABEL_581;
      case 2u:
        v171 = *v49;
        if (v54)
        {
          if (v39)
          {
            v172 = 0;
            v173 = 0x3FFFFFFFFFFFFFFFLL;
            v174 = v428;
            while (1)
            {
              if (!v171)
              {
                goto LABEL_233;
              }

              v175 = ((v39[v172] * v171 + ((v39[v172] * v171) >> 8) + 1) >> 8);
              if (!v175)
              {
                goto LABEL_233;
              }

              if (v175 == 255)
              {
                v176 = v48->f32[1];
                if (v176 >= 1.0)
                {
                  v181 = v48->i32[0];
                  goto LABEL_232;
                }

                if (v176 > 0.0)
                {
                  v177 = v31[v172];
                  v178 = v48->f32[0];
                  goto LABEL_230;
                }
              }

              else
              {
                v179 = v175 * 0.0039216;
                v176 = v179 * v48->f32[1];
                if (v176 > 0.0)
                {
                  v177 = v31[v172];
                  v178 = v179 * v48->f32[0];
LABEL_230:
                  *&v180 = v178 + (COERCE_FLOAT(bswap32(v177)) * (1.0 - v176));
                  v176 = v176 + (COERCE_FLOAT(bswap32(v28[v172])) * (1.0 - v176));
                  v181 = v180;
LABEL_232:
                  v31[v172] = bswap32(v181);
                  v28[v172] = bswap32(LODWORD(v176));
                }
              }

LABEL_233:
              v171 = v49[v172 + 1];
              ++v48;
              ++v172;
              ++v173;
              if (v4 == v172)
              {
                v182 = &v31[v173];
                v183 = &v28[v173];
                v39 += v172 + v420;
LABEL_551:
                v31 = &v182[v421 + 1];
                v28 = &v183[v423 + 1];
                goto LABEL_502;
              }
            }
          }

          v384 = 0;
          v385 = 4;
          v174 = v428;
          while (1)
          {
            if (v171)
            {
              if (v171 == 255)
              {
                v386 = v48->f32[1];
                if (v386 >= 1.0)
                {
                  v391 = v48->i32[0];
                  goto LABEL_548;
                }

                if (v386 > 0.0)
                {
                  v387 = v31[v384];
                  v388 = v48->f32[0];
                  goto LABEL_546;
                }
              }

              else
              {
                v389 = v171 * 0.0039216;
                v386 = v389 * v48->f32[1];
                if (v386 > 0.0)
                {
                  v387 = v31[v384];
                  v388 = v389 * v48->f32[0];
LABEL_546:
                  *&v390 = v388 + (COERCE_FLOAT(bswap32(v387)) * (1.0 - v386));
                  v386 = v386 + (COERCE_FLOAT(bswap32(v28[v384])) * (1.0 - v386));
                  v391 = v390;
LABEL_548:
                  v31[v384] = bswap32(v391);
                  v28[v384] = bswap32(LODWORD(v386));
                }
              }
            }

            v171 = v49[v384 + 1];
            ++v48;
            ++v384;
            v385 -= 4;
            if (v4 == v384)
            {
              v39 = 0;
              v183 = &v28[v385 / 0xFFFFFFFFFFFFFFFCLL];
              v182 = &v31[v385 / 0xFFFFFFFFFFFFFFFCLL];
              goto LABEL_551;
            }
          }
        }

        v370 = v49 + 1;
        v371 = v31 - 1;
        v372 = v4;
        if (v39)
        {
          v174 = v428;
          while (1)
          {
            if (!v171)
            {
              goto LABEL_526;
            }

            v373 = ((*v39 * v171 + ((*v39 * v171) >> 8) + 1) >> 8);
            if (!v373)
            {
              goto LABEL_526;
            }

            if (v373 == 255)
            {
              v374 = v48->f32[1];
              if (v374 >= 1.0)
              {
                v377 = v48->f32[0];
                goto LABEL_525;
              }

              if (v374 > 0.0)
              {
                v375 = v48->f32[0];
                goto LABEL_523;
              }
            }

            else
            {
              v376 = v373 * 0.0039216;
              v374 = v376 * v48->f32[1];
              if (v374 > 0.0)
              {
                v375 = v376 * v48->f32[0];
LABEL_523:
                v377 = v375 + (COERCE_FLOAT(bswap32(v371[1])) * (1.0 - v374));
LABEL_525:
                v371[1] = bswap32(LODWORD(v377));
              }
            }

LABEL_526:
            v378 = *v370++;
            v171 = v378;
            ++v48;
            ++v39;
            ++v371;
            if (!--v372)
            {
LABEL_537:
              v39 += v420;
              goto LABEL_582;
            }
          }
        }

        v174 = v428;
        while (1)
        {
          if (v171)
          {
            if (v171 == 255)
            {
              v396 = v48->f32[1];
              if (v396 >= 1.0)
              {
                v399 = v48->f32[0];
                goto LABEL_571;
              }

              if (v396 > 0.0)
              {
                v397 = v48->f32[0];
                goto LABEL_569;
              }
            }

            else
            {
              v398 = v171 * 0.0039216;
              v396 = v398 * v48->f32[1];
              if (v396 > 0.0)
              {
                v397 = v398 * v48->f32[0];
LABEL_569:
                v399 = v397 + (COERCE_FLOAT(bswap32(v371[1])) * (1.0 - v396));
LABEL_571:
                v371[1] = bswap32(LODWORD(v399));
              }
            }
          }

          v400 = *v370++;
          v171 = v400;
          ++v48;
          ++v371;
          if (!--v372)
          {
LABEL_581:
            v39 = 0;
LABEL_582:
            v31 = &v371[v421 + 1];
            v28 += v423;
LABEL_502:
            v365 = v174 - 1;
            if (!v365)
            {
              v36 = v426;
              if (v426)
              {
LABEL_584:
                free(v36);
              }

              goto LABEL_585;
            }

            v428 = v365;
            v44 = 0;
            v37 = (v425 + 1);
            v46 += v35[16];
            v47 += v35[17];
            v42 = v426;
            if (v426)
            {
              v418 = v47;
              v419 = v46;
              v40 = v414;
LABEL_588:
              v36 = v42;
              v403 = v423 + v40;
              while (1)
              {
                while (1)
                {
                  v404 = *(v39 - 4);
                  v405 = v404 - v37;
                  if (v404 <= v37)
                  {
                    break;
                  }

                  v428 -= v405;
                  if (v428 < 1)
                  {
                    goto LABEL_584;
                  }

                  v408 = v419 + v35[16] * v405;
                  v418 += v35[17] * v405;
                  v419 = v408;
                  v31 += v410 * v405;
                  v409 = v403 * v405;
                  if (!v427)
                  {
                    v409 = 0;
                  }

                  v28 += v409;
                  v37 = v404;
                }

                if (v37 < *(v39 - 3) + v404)
                {
                  break;
                }

                v406 = v37;
                v407 = shape_enum_clip_scan(v36, v39 - 4);
                v37 = v406;
                if (!v407)
                {
                  goto LABEL_584;
                }
              }

              v26 = v411;
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

      case 3u:
        v195 = v48 + 1;
        v196 = v4;
        v69 = v39;
        do
        {
          v197 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v197 = (*v69 * v197 + ((*v69 * v197) >> 8) + 1) >> 8;
            }

            if (v197)
            {
              if (v197 == 255)
              {
                v198 = COERCE_FLOAT(bswap32(*v28));
                v199 = *(v195 - 1) * v198;
                v200 = *v195 * v198;
              }

              else
              {
                v201 = v197 * 0.0039216;
                v202 = COERCE_FLOAT(bswap32(*v28));
                v203 = v201 * v202;
                v204 = 1.0 - v201;
                v199 = ((1.0 - v201) * COERCE_FLOAT(bswap32(*v31))) + (*(v195 - 1) * (v201 * v202));
                v200 = (v204 * v202) + (*v195 * v203);
              }

              *v31 = bswap32(LODWORD(v199));
              *v28 = bswap32(LODWORD(v200));
            }
          }

          ++v49;
          v69 += v39 != 0;
          ++v31;
          v195 += 2;
          v28 = (v28 + v45);
          --v196;
        }

        while (v196);
        goto LABEL_499;
      case 4u:
        v119 = v48 + 1;
        v120 = v4;
        v69 = v39;
        do
        {
          v121 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v121 = (*v69 * v121 + ((*v69 * v121) >> 8) + 1) >> 8;
            }

            if (v121)
            {
              if (v121 == 255)
              {
                v122 = 1.0 - COERCE_FLOAT(bswap32(*v28));
                v123 = *(v119 - 1) * v122;
                v124 = *v119 * v122;
              }

              else
              {
                v125 = v121 * 0.0039216;
                v126 = COERCE_FLOAT(bswap32(*v28));
                v127 = v125 * (1.0 - v126);
                v128 = 1.0 - v125;
                v123 = ((1.0 - v125) * COERCE_FLOAT(bswap32(*v31))) + (*(v119 - 1) * v127);
                v124 = (v128 * v126) + (*v119 * v127);
              }

              *v31 = bswap32(LODWORD(v123));
              *v28 = bswap32(LODWORD(v124));
            }
          }

          ++v49;
          v69 += v39 != 0;
          ++v31;
          v119 += 2;
          v28 = (v28 + v45);
          --v120;
        }

        while (v120);
        goto LABEL_499;
      case 5u:
        v251 = v48 + 1;
        v252 = v4;
        v69 = v39;
        while (1)
        {
          v253 = *v49;
          if (*v49)
          {
            if (!v39)
            {
              goto LABEL_335;
            }

            v254 = *v69 * v253 + ((*v69 * v253) >> 8) + 1;
            if (v254 >= 0x100)
            {
              break;
            }
          }

LABEL_336:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v251 += 2;
          v28 = (v28 + v45);
          if (!--v252)
          {
            goto LABEL_499;
          }
        }

        v253 = v254 >> 8;
LABEL_335:
        v255 = COERCE_FLOAT(bswap32(*v28));
        v256 = v253 * 0.0039216;
        v257 = *(v251 - 1) * v256;
        v258 = v256 * *v251;
        *v31 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v258) * COERCE_FLOAT(bswap32(*v31))) + (v257 * v255)));
        *v28 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v258) * v255) + (v258 * v255)));
        goto LABEL_336;
      case 6u:
        v279 = v48 + 1;
        v280 = v4;
        v69 = v39;
        while (1)
        {
          v281 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v282 = *v69 * v281 + ((*v69 * v281) >> 8) + 1;
              if (v282 < 0x100)
              {
                goto LABEL_382;
              }

              v281 = v282 >> 8;
            }

            v283 = COERCE_FLOAT(bswap32(*v28));
            v284 = 1.0 - v283;
            if ((1.0 - v283) >= 1.0)
            {
              v288 = v281 * 0.0039216;
              v286 = v288 * *(v279 - 1);
              v287 = v288 * *v279;
              goto LABEL_381;
            }

            if (v284 > 0.0)
            {
              v285 = (v281 * 0.0039216) * v284;
              v286 = COERCE_FLOAT(bswap32(*v31)) + (*(v279 - 1) * v285);
              v287 = v283 + (*v279 * v285);
LABEL_381:
              *v31 = bswap32(LODWORD(v286));
              *v28 = bswap32(LODWORD(v287));
            }
          }

LABEL_382:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v279 += 2;
          v28 = (v28 + v45);
          if (!--v280)
          {
            goto LABEL_499;
          }
        }

      case 7u:
        v205 = v39 != 0;
        v206 = v48 + 1;
        v207 = v4;
        v69 = v39;
        if (v54)
        {
          do
          {
            v208 = *v49;
            if (*v49)
            {
              if (v39)
              {
                v208 = (*v69 * v208 + ((*v69 * v208) >> 8) + 1) >> 8;
              }

              if (v208)
              {
                if (v208 == 255)
                {
                  v209 = *v206 * COERCE_FLOAT(bswap32(*v31));
                  v210 = *v206 * COERCE_FLOAT(bswap32(*v28));
                }

                else
                {
                  v211 = v208 * 0.0039216;
                  v212 = COERCE_FLOAT(bswap32(*v28));
                  v213 = COERCE_FLOAT(bswap32(*v31));
                  v214 = v211 * *v206;
                  v215 = 1.0 - v211;
                  v209 = ((1.0 - v211) * v213) + (v213 * v214);
                  v210 = (v215 * v212) + (v212 * v214);
                }

                *v31 = bswap32(LODWORD(v209));
                *v28 = bswap32(LODWORD(v210));
              }
            }

            ++v49;
            v69 += v205;
            ++v31;
            ++v28;
            v206 += 2;
            --v207;
          }

          while (v207);
        }

        else
        {
          do
          {
            v216 = *v49;
            if (*v49)
            {
              if (v39)
              {
                v216 = (*v69 * v216 + ((*v69 * v216) >> 8) + 1) >> 8;
              }

              if (v216)
              {
                if (v216 == 255)
                {
                  v217 = *v206 * COERCE_FLOAT(bswap32(*v31));
                }

                else
                {
                  v218 = COERCE_FLOAT(bswap32(*v31));
                  v217 = ((1.0 - (v216 * 0.0039216)) * v218) + (v218 * ((v216 * 0.0039216) * *v206));
                }

                *v31 = bswap32(LODWORD(v217));
              }
            }

            ++v49;
            v69 += v205;
            ++v31;
            v206 += 2;
            --v207;
          }

          while (v207);
        }

        goto LABEL_499;
      case 8u:
        v307 = v39 != 0;
        v308 = v48 + 1;
        v309 = v4;
        v69 = v39;
        if (v54)
        {
          do
          {
            v310 = *v49;
            if (*v49)
            {
              if (v39)
              {
                v310 = (*v69 * v310 + ((*v69 * v310) >> 8) + 1) >> 8;
              }

              if (v310)
              {
                if (v310 == 255)
                {
                  v311 = 1.0 - *v308;
                  v312 = v311 * COERCE_FLOAT(bswap32(*v31));
                  v313 = v311 * COERCE_FLOAT(bswap32(*v28));
                }

                else
                {
                  v314 = v310 * 0.0039216;
                  v315 = COERCE_FLOAT(bswap32(*v28));
                  v316 = COERCE_FLOAT(bswap32(*v31));
                  v317 = v314 * (1.0 - *v308);
                  v318 = 1.0 - v314;
                  v312 = ((1.0 - v314) * v316) + (v316 * v317);
                  v313 = (v318 * v315) + (v315 * v317);
                }

                *v31 = bswap32(LODWORD(v312));
                *v28 = bswap32(LODWORD(v313));
              }
            }

            ++v49;
            v69 += v307;
            ++v31;
            ++v28;
            v308 += 2;
            --v309;
          }

          while (v309);
        }

        else
        {
          do
          {
            v319 = *v49;
            if (*v49)
            {
              if (v39)
              {
                v319 = (*v69 * v319 + ((*v69 * v319) >> 8) + 1) >> 8;
              }

              if (v319)
              {
                if (v319 == 255)
                {
                  v320 = (1.0 - *v308) * COERCE_FLOAT(bswap32(*v31));
                }

                else
                {
                  v321 = COERCE_FLOAT(bswap32(*v31));
                  v320 = ((1.0 - (v319 * 0.0039216)) * v321) + (v321 * ((v319 * 0.0039216) * (1.0 - *v308)));
                }

                *v31 = bswap32(LODWORD(v320));
              }
            }

            ++v49;
            v69 += v307;
            ++v31;
            v308 += 2;
            --v309;
          }

          while (v309);
        }

        goto LABEL_499;
      case 9u:
        v138 = v48 + 1;
        v139 = v4;
        v69 = v39;
        while (1)
        {
          v140 = *v49;
          if (*v49)
          {
            if (!v39)
            {
              goto LABEL_176;
            }

            v141 = *v69 * v140 + ((*v69 * v140) >> 8) + 1;
            if (v141 >= 0x100)
            {
              break;
            }
          }

LABEL_177:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v138 += 2;
          v28 = (v28 + v45);
          if (!--v139)
          {
            goto LABEL_499;
          }
        }

        v140 = v141 >> 8;
LABEL_176:
        v142 = COERCE_FLOAT(bswap32(*v28));
        v143 = v140 * 0.0039216;
        v144 = *(v138 - 1) * v143;
        v145 = v143 * *v138;
        v146 = (1.0 - v143) + v145;
        *v31 = bswap32(COERCE_UNSIGNED_INT((v146 * COERCE_FLOAT(bswap32(*v31))) + (v144 * (1.0 - v142))));
        *v28 = bswap32(COERCE_UNSIGNED_INT((v146 * v142) + (v145 * (1.0 - v142))));
        goto LABEL_177;
      case 0xAu:
        v299 = v48 + 1;
        v300 = v4;
        v69 = v39;
        while (1)
        {
          v301 = *v49;
          if (*v49)
          {
            if (!v39)
            {
              goto LABEL_405;
            }

            v302 = *v69 * v301 + ((*v69 * v301) >> 8) + 1;
            if (v302 >= 0x100)
            {
              break;
            }
          }

LABEL_406:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v299 += 2;
          v28 = (v28 + v45);
          if (!--v300)
          {
            goto LABEL_499;
          }
        }

        v301 = v302 >> 8;
LABEL_405:
        v303 = COERCE_FLOAT(bswap32(*v28));
        v304 = v301 * 0.0039216;
        v305 = *(v299 - 1) * v304;
        v306 = v304 * *v299;
        *v31 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v306) * COERCE_FLOAT(bswap32(*v31))) + (v305 * (1.0 - v303))));
        *v28 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v306) * v303) + (v306 * (1.0 - v303))));
        goto LABEL_406;
      case 0xBu:
        v106 = v39 != 0;
        v107 = v48 + 1;
        v108 = v4;
        v69 = v39;
        if (v54)
        {
          while (1)
          {
            v109 = *v49;
            if (*v49)
            {
              if (!v39)
              {
                goto LABEL_137;
              }

              v110 = *v69 * v109 + ((*v69 * v109) >> 8) + 1;
              if (v110 >= 0x100)
              {
                break;
              }
            }

LABEL_140:
            ++v49;
            v69 += v106;
            ++v31;
            ++v28;
            v107 += 2;
            if (!--v108)
            {
              goto LABEL_499;
            }
          }

          v109 = v110 >> 8;
LABEL_137:
          v111 = v109 * 0.0039216;
          v112 = *(v107 - 1) * v111;
          v113 = *v107 * v111;
          v114 = COERCE_FLOAT(bswap32(*v31));
          v115 = COERCE_FLOAT(bswap32(*v28));
          v116 = v113 + v115;
          if ((v113 + v115) > 1.0)
          {
            v116 = 1.0;
          }

          *v31 = bswap32(COERCE_UNSIGNED_INT((v113 - v112) + (v116 - (v115 - v114))));
          *v28 = bswap32(LODWORD(v116));
          goto LABEL_140;
        }

        while (1)
        {
          v117 = *v49;
          if (*v49)
          {
            if (!v39)
            {
              goto LABEL_146;
            }

            v118 = *v69 * v117 + ((*v69 * v117) >> 8) + 1;
            if (v118 >= 0x100)
            {
              break;
            }
          }

LABEL_147:
          ++v49;
          v69 += v106;
          ++v31;
          v107 += 2;
          if (!--v108)
          {
            goto LABEL_499;
          }
        }

        v117 = v118 >> 8;
LABEL_146:
        *v31 = bswap32(COERCE_UNSIGNED_INT(((*v107 * (v117 * 0.0039216)) - (*(v107 - 1) * (v117 * 0.0039216))) + COERCE_FLOAT(bswap32(*v31))));
        goto LABEL_147;
      case 0xCu:
        v129 = v39 != 0;
        if (v54)
        {
          v130 = v48 + 1;
          v131 = v4;
          v69 = v39;
          while (1)
          {
            v132 = *v49;
            if (*v49)
            {
              if (!v39)
              {
                goto LABEL_166;
              }

              v133 = *v69 * v132 + ((*v69 * v132) >> 8) + 1;
              if (v133 >= 0x100)
              {
                break;
              }
            }

LABEL_169:
            ++v49;
            v69 += v129;
            ++v31;
            ++v28;
            v130 += 2;
            if (!--v131)
            {
              goto LABEL_499;
            }
          }

          v132 = v133 >> 8;
LABEL_166:
          v134 = v132 * 0.0039216;
          v135 = *(v130 - 1) * v134;
          v136 = (*v130 * v134) + COERCE_FLOAT(bswap32(*v28));
          v137 = v135 + COERCE_FLOAT(bswap32(*v31));
          if (v136 > 1.0)
          {
            v136 = 1.0;
          }

          *v31 = bswap32(LODWORD(v137));
          *v28 = bswap32(LODWORD(v136));
          goto LABEL_169;
        }

        v366 = v4;
        v367 = v39;
        while (1)
        {
          v368 = *v49;
          if (*v49)
          {
            if (!v39)
            {
              goto LABEL_510;
            }

            v369 = *v367 * v368 + ((*v367 * v368) >> 8) + 1;
            if (v369 >= 0x100)
            {
              break;
            }
          }

LABEL_511:
          ++v49;
          ++v48;
          v367 += v129;
          ++v31;
          if (!--v366)
          {
            v39 = &v367[v420];
LABEL_500:
            v31 += v421;
            v28 += v423;
LABEL_501:
            v174 = v428;
            goto LABEL_502;
          }
        }

        v368 = v369 >> 8;
LABEL_510:
        *v31 = bswap32(COERCE_UNSIGNED_INT((v48->f32[0] * (v368 * 0.0039216)) + COERCE_FLOAT(bswap32(*v31))));
        goto LABEL_511;
      case 0xDu:
        v269 = v48 + 1;
        v270 = v4;
        v69 = v39;
        while (1)
        {
          v271 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v272 = *v69 * v271 + ((*v69 * v271) >> 8) + 1;
              if (v272 < 0x100)
              {
                goto LABEL_370;
              }

              v271 = v272 >> 8;
            }

            v273 = v271 * 0.0039216;
            v274 = *v269 * v273;
            if (v274 > 0.0)
            {
              v275 = *(v269 - 1) * v273;
              v276 = 1.0;
              if (!v54 || (v276 = COERCE_FLOAT(bswap32(*v28)), v276 > 0.0))
              {
                v277 = COERCE_FLOAT(bswap32(*v31));
                v278 = (v275 * v277) + (v277 * (1.0 - v274));
                if (v274 == 1.0)
                {
                  v278 = v275 * v277;
                }

                v275 = v278 + (v275 * (1.0 - v276));
                if (v276 == 1.0)
                {
                  v275 = v278;
                }

                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v275));
                  goto LABEL_370;
                }

                v274 = (v274 + v276) - (v276 * v274);
              }

              *v31 = bswap32(LODWORD(v275));
              *v28 = bswap32(LODWORD(v274));
            }
          }

LABEL_370:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v269 += 2;
          v28 = (v28 + v45);
          if (!--v270)
          {
            goto LABEL_499;
          }
        }

      case 0xEu:
        v97 = v48 + 1;
        v98 = v4;
        v69 = v39;
        while (1)
        {
          v99 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v100 = *v69 * v99 + ((*v69 * v99) >> 8) + 1;
              if (v100 < 0x100)
              {
                goto LABEL_130;
              }

              v99 = v100 >> 8;
            }

            v101 = v99 * 0.0039216;
            v102 = *v97 * v101;
            if (v102 > 0.0)
            {
              v103 = *(v97 - 1) * v101;
              v104 = 1.0;
              if (!v54 || (v104 = COERCE_FLOAT(bswap32(*v28)), v104 > 0.0))
              {
                v105 = COERCE_FLOAT(bswap32(*v31));
                v103 = v105 + (v103 * (1.0 - v105));
                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v103));
                  goto LABEL_130;
                }

                v102 = (v102 + v104) - (v104 * v102);
              }

              *v31 = bswap32(LODWORD(v103));
              *v28 = bswap32(LODWORD(v102));
            }
          }

LABEL_130:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v97 += 2;
          v28 = (v28 + v45);
          if (!--v98)
          {
            goto LABEL_499;
          }
        }

      case 0xFu:
        v418 = v47;
        v419 = v46;
        v184 = v48 + 1;
        v185 = v4;
        v186 = v39;
        while (1)
        {
          v187 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v188 = *v186 * v187 + ((*v186 * v187) >> 8) + 1;
              if (v188 < 0x100)
              {
                goto LABEL_249;
              }

              v187 = v188 >> 8;
            }

            v189 = v187 * 0.0039216;
            v190 = *v184 * v189;
            if (v190 > 0.0)
            {
              v191 = *(v184 - 1) * v189;
              if (v54)
              {
                v192 = COERCE_FLOAT(bswap32(*v28));
                if (v192 <= 0.0)
                {
LABEL_247:
                  *v31 = bswap32(LODWORD(v191));
                  *v28 = bswap32(LODWORD(v190));
                  goto LABEL_249;
                }
              }

              else
              {
                v192 = 1.0;
              }

              v193 = PDAoverlayPDA(COERCE_FLOAT(bswap32(*v31)), v192, v191, v190);
              v54 = v427;
              v191 = v193;
              if (!v427)
              {
                *v31 = bswap32(LODWORD(v193));
                goto LABEL_249;
              }

              v190 = v194;
              goto LABEL_247;
            }
          }

LABEL_249:
          ++v49;
          v186 += v39 != 0;
          ++v31;
          v184 += 2;
          v28 = (v28 + v45);
          if (!--v185)
          {
            goto LABEL_462;
          }
        }

      case 0x10u:
        v86 = v48 + 1;
        v87 = v4;
        v69 = v39;
        while (1)
        {
          v88 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v89 = *v69 * v88 + ((*v69 * v88) >> 8) + 1;
              if (v89 < 0x100)
              {
                goto LABEL_116;
              }

              v88 = v89 >> 8;
            }

            v90 = v88 * 0.0039216;
            v91 = *v86 * v90;
            if (v91 > 0.0)
            {
              v92 = *(v86 - 1) * v90;
              v93 = 1.0;
              if (!v54 || (v93 = COERCE_FLOAT(bswap32(*v28)), v93 > 0.0))
              {
                v94 = COERCE_FLOAT(bswap32(*v31));
                v95 = v91 * v94;
                if ((v92 * v93) < (v91 * v94))
                {
                  v95 = v92 * v93;
                }

                v96 = v95 + (v94 * (1.0 - v91));
                if (v91 == 1.0)
                {
                  v96 = v95;
                }

                v92 = v96 + (v92 * (1.0 - v93));
                if (v93 == 1.0)
                {
                  v92 = v96;
                }

                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v92));
                  goto LABEL_116;
                }

                v91 = (v91 + v93) - (v93 * v91);
              }

              *v31 = bswap32(LODWORD(v92));
              *v28 = bswap32(LODWORD(v91));
            }
          }

LABEL_116:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v86 += 2;
          v28 = (v28 + v45);
          if (!--v87)
          {
            goto LABEL_499;
          }
        }

      case 0x11u:
        v230 = v48 + 1;
        v231 = v4;
        v69 = v39;
        while (1)
        {
          v232 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v233 = *v69 * v232 + ((*v69 * v232) >> 8) + 1;
              if (v233 < 0x100)
              {
                goto LABEL_312;
              }

              v232 = v233 >> 8;
            }

            v234 = v232 * 0.0039216;
            v235 = *v230 * v234;
            if (v235 > 0.0)
            {
              v236 = *(v230 - 1) * v234;
              v237 = 1.0;
              if (!v54 || (v237 = COERCE_FLOAT(bswap32(*v28)), v237 > 0.0))
              {
                v238 = COERCE_FLOAT(bswap32(*v31));
                v239 = v235 * v238;
                if ((v236 * v237) > (v235 * v238))
                {
                  v239 = v236 * v237;
                }

                v240 = v239 + (v238 * (1.0 - v235));
                if (v235 == 1.0)
                {
                  v240 = v239;
                }

                v236 = v240 + (v236 * (1.0 - v237));
                if (v237 == 1.0)
                {
                  v236 = v240;
                }

                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v236));
                  goto LABEL_312;
                }

                v235 = (v235 + v237) - (v237 * v235);
              }

              *v31 = bswap32(LODWORD(v236));
              *v28 = bswap32(LODWORD(v235));
            }
          }

LABEL_312:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v230 += 2;
          v28 = (v28 + v45);
          if (!--v231)
          {
            goto LABEL_499;
          }
        }

      case 0x12u:
        v418 = v47;
        v419 = v46;
        v289 = v48 + 1;
        v290 = v4;
        v186 = v39;
        while (1)
        {
          v291 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v292 = *v186 * v291 + ((*v186 * v291) >> 8) + 1;
              if (v292 < 0x100)
              {
                goto LABEL_398;
              }

              v291 = v292 >> 8;
            }

            v293 = v291 * 0.0039216;
            v294 = *v289 * v293;
            if (v294 > 0.0)
            {
              v295 = *(v289 - 1) * v293;
              if (v54)
              {
                v296 = COERCE_FLOAT(bswap32(*v28));
                if (v296 <= 0.0)
                {
LABEL_396:
                  *v31 = bswap32(LODWORD(v295));
                  *v28 = bswap32(LODWORD(v294));
                  goto LABEL_398;
                }
              }

              else
              {
                v296 = 1.0;
              }

              v297 = PDAcolordodgePDA(COERCE_FLOAT(bswap32(*v31)), v296, v295, v294);
              v54 = v427;
              v295 = v297;
              if (!v427)
              {
                *v31 = bswap32(LODWORD(v297));
                goto LABEL_398;
              }

              v294 = v298;
              goto LABEL_396;
            }
          }

LABEL_398:
          ++v49;
          v186 += v39 != 0;
          ++v31;
          v289 += 2;
          v28 = (v28 + v45);
          if (!--v290)
          {
            goto LABEL_462;
          }
        }

      case 0x13u:
        v418 = v47;
        v419 = v46;
        v335 = v48 + 1;
        v336 = v4;
        v186 = v39;
        while (1)
        {
          v337 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v338 = *v186 * v337 + ((*v186 * v337) >> 8) + 1;
              if (v338 < 0x100)
              {
                goto LABEL_461;
              }

              v337 = v338 >> 8;
            }

            v339 = v337 * 0.0039216;
            v340 = *v335 * v339;
            if (v340 > 0.0)
            {
              v341 = *(v335 - 1) * v339;
              if (v54)
              {
                v342 = COERCE_FLOAT(bswap32(*v28));
                if (v342 <= 0.0)
                {
LABEL_459:
                  *v31 = bswap32(LODWORD(v341));
                  *v28 = bswap32(LODWORD(v340));
                  goto LABEL_461;
                }
              }

              else
              {
                v342 = 1.0;
              }

              v343 = PDAcolorburnPDA(COERCE_FLOAT(bswap32(*v31)), v342, v341, v340);
              v54 = v427;
              v341 = *&v343;
              if (!v427)
              {
                *v31 = bswap32(LODWORD(v343));
                goto LABEL_461;
              }

              v340 = v344;
              goto LABEL_459;
            }
          }

LABEL_461:
          ++v49;
          v186 += v39 != 0;
          ++v31;
          v335 += 2;
          v28 = (v28 + v45);
          if (!--v336)
          {
            goto LABEL_462;
          }
        }

      case 0x14u:
        v418 = v47;
        v419 = v46;
        v241 = v48 + 1;
        v242 = v4;
        v186 = v39;
        while (1)
        {
          v243 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v244 = *v186 * v243 + ((*v186 * v243) >> 8) + 1;
              if (v244 < 0x100)
              {
                goto LABEL_328;
              }

              v243 = v244 >> 8;
            }

            v245 = v243 * 0.0039216;
            v246 = *v241 * v245;
            if (v246 > 0.0)
            {
              v247 = *(v241 - 1) * v245;
              if (v54)
              {
                v248 = COERCE_FLOAT(bswap32(*v28));
                if (v248 <= 0.0)
                {
LABEL_326:
                  *v31 = bswap32(LODWORD(v247));
                  *v28 = bswap32(LODWORD(v246));
                  goto LABEL_328;
                }
              }

              else
              {
                v248 = 1.0;
              }

              v249 = PDAsoftlightPDA(COERCE_FLOAT(bswap32(*v31)), v248, v247, v246);
              v54 = v427;
              v247 = v249;
              if (!v427)
              {
                *v31 = bswap32(LODWORD(v249));
                goto LABEL_328;
              }

              v246 = v250;
              goto LABEL_326;
            }
          }

LABEL_328:
          ++v49;
          v186 += v39 != 0;
          ++v31;
          v241 += 2;
          v28 = (v28 + v45);
          if (!--v242)
          {
            goto LABEL_462;
          }
        }

      case 0x15u:
        v418 = v47;
        v419 = v46;
        v259 = v48 + 1;
        v260 = v4;
        v186 = v39;
        while (1)
        {
          v261 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v262 = *v186 * v261 + ((*v186 * v261) >> 8) + 1;
              if (v262 < 0x100)
              {
                goto LABEL_352;
              }

              v261 = v262 >> 8;
            }

            v263 = v261 * 0.0039216;
            v264 = *v259 * v263;
            if (v264 > 0.0)
            {
              v265 = *(v259 - 1) * v263;
              if (v54)
              {
                v266 = COERCE_FLOAT(bswap32(*v28));
                if (v266 <= 0.0)
                {
LABEL_350:
                  *v31 = bswap32(LODWORD(v265));
                  *v28 = bswap32(LODWORD(v264));
                  goto LABEL_352;
                }
              }

              else
              {
                v266 = 1.0;
              }

              v267 = PDAhardlightPDA(COERCE_FLOAT(bswap32(*v31)), v266, v265, v264);
              v54 = v427;
              v265 = v267;
              if (!v427)
              {
                *v31 = bswap32(LODWORD(v267));
                goto LABEL_352;
              }

              v264 = v268;
              goto LABEL_350;
            }
          }

LABEL_352:
          ++v49;
          v186 += v39 != 0;
          ++v31;
          v259 += 2;
          v28 = (v28 + v45);
          if (!--v260)
          {
LABEL_462:
            v39 = &v186[v420];
            v31 += v421;
            v28 += v423;
            v35 = v417;
            v47 = v418;
            v46 = v419;
            v174 = v428;
            goto LABEL_502;
          }
        }

      case 0x16u:
        v322 = v48 + 1;
        v323 = v4;
        v69 = v39;
        while (1)
        {
          v324 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v325 = *v69 * v324 + ((*v69 * v324) >> 8) + 1;
              if (v325 < 0x100)
              {
                goto LABEL_445;
              }

              v324 = v325 >> 8;
            }

            v326 = v324 * 0.0039216;
            v327 = *v322 * v326;
            if (v327 > 0.0)
            {
              v328 = *(v322 - 1) * v326;
              if (v54)
              {
                v329 = COERCE_FLOAT(bswap32(*v28));
                if (v329 <= 0.0)
                {
LABEL_443:
                  *v31 = bswap32(LODWORD(v328));
                  *v28 = bswap32(LODWORD(v327));
                  goto LABEL_445;
                }
              }

              else
              {
                v329 = 1.0;
              }

              v330 = COERCE_FLOAT(bswap32(*v31));
              v331 = v328 + v330;
              v332 = v328 * v329;
              v333 = (v327 * v330) - v332;
              v334 = (v331 - (v327 * v330)) - v332;
              if (v333 < 0.0)
              {
                v333 = -v333;
              }

              v328 = v334 + v333;
              if (!v54)
              {
                *v31 = bswap32(LODWORD(v328));
                goto LABEL_445;
              }

              v327 = (v327 + v329) - (v329 * v327);
              goto LABEL_443;
            }
          }

LABEL_445:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v322 += 2;
          v28 = (v28 + v45);
          if (!--v323)
          {
            goto LABEL_499;
          }
        }

      case 0x17u:
        v345 = v48 + 1;
        v346 = v4;
        v69 = v39;
        while (1)
        {
          v347 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v348 = *v69 * v347 + ((*v69 * v347) >> 8) + 1;
              if (v348 < 0x100)
              {
                goto LABEL_477;
              }

              v347 = v348 >> 8;
            }

            v349 = v347 * 0.0039216;
            v350 = *v345 * v349;
            if (v350 > 0.0)
            {
              v351 = *(v345 - 1) * v349;
              if (v54)
              {
                v352 = COERCE_FLOAT(bswap32(*v28));
                if (v352 <= 0.0)
                {
LABEL_475:
                  *v31 = bswap32(LODWORD(v351));
                  *v28 = bswap32(LODWORD(v350));
                  goto LABEL_477;
                }
              }

              else
              {
                v352 = 1.0;
              }

              v353 = COERCE_FLOAT(bswap32(*v31));
              v351 = (v351 + v353) + ((v351 * v353) * -2.0);
              if (!v54)
              {
                *v31 = bswap32(LODWORD(v351));
                goto LABEL_477;
              }

              v350 = (v350 + v352) - (v352 * v350);
              goto LABEL_475;
            }
          }

LABEL_477:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v345 += 2;
          v28 = (v28 + v45);
          if (!--v346)
          {
            goto LABEL_499;
          }
        }

      case 0x18u:
        v159 = v48 + 1;
        v160 = v4;
        v69 = v39;
        while (1)
        {
          v161 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v162 = *v69 * v161 + ((*v69 * v161) >> 8) + 1;
              if (v162 < 0x100)
              {
                goto LABEL_217;
              }

              v161 = v162 >> 8;
            }

            v163 = v161 * 0.0039216;
            v164 = *v159 * v163;
            if (v164 > 0.0)
            {
              v165 = *(v159 - 1) * v163;
              v166 = 1.0;
              if (!v54 || (v166 = COERCE_FLOAT(bswap32(*v28)), v166 > 0.0))
              {
                v167 = COERCE_FLOAT(bswap32(*v31));
                v168 = v167;
                if (v164 != 1.0)
                {
                  v168 = v164 * v167;
                }

                v169 = 0.0;
                if (v164 != 1.0)
                {
                  v169 = v167 - (v164 * v167);
                }

                v170 = (v165 + v169) - (v165 * v166);
                if (v166 == 1.0)
                {
                  v170 = v169;
                }

                v165 = v168 + v170;
                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v165));
                  goto LABEL_217;
                }

                v164 = (v164 + v166) - (v164 * v166);
              }

              *v31 = bswap32(LODWORD(v165));
              *v28 = bswap32(LODWORD(v164));
            }
          }

LABEL_217:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v159 += 2;
          v28 = (v28 + v45);
          if (!--v160)
          {
            goto LABEL_499;
          }
        }

      case 0x19u:
        v147 = v48 + 1;
        v148 = v4;
        v69 = v39;
        while (1)
        {
          v149 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v150 = *v69 * v149 + ((*v69 * v149) >> 8) + 1;
              if (v150 < 0x100)
              {
                goto LABEL_197;
              }

              v149 = v150 >> 8;
            }

            v151 = v149 * 0.0039216;
            v152 = *v147 * v151;
            if (v152 > 0.0)
            {
              v153 = *(v147 - 1) * v151;
              v154 = 1.0;
              if (!v54 || (v154 = COERCE_FLOAT(bswap32(*v28)), v154 > 0.0))
              {
                v155 = COERCE_FLOAT(bswap32(*v31));
                v156 = v155;
                if (v152 != 1.0)
                {
                  v156 = v152 * v155;
                }

                v157 = 0.0;
                if (v152 != 1.0)
                {
                  v157 = v155 - (v152 * v155);
                }

                v158 = (v153 + v157) - (v153 * v154);
                if (v154 == 1.0)
                {
                  v158 = v157;
                }

                v153 = v156 + v158;
                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v153));
                  goto LABEL_197;
                }

                v152 = (v152 + v154) - (v152 * v154);
              }

              *v31 = bswap32(LODWORD(v153));
              *v28 = bswap32(LODWORD(v152));
            }
          }

LABEL_197:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v147 += 2;
          v28 = (v28 + v45);
          if (!--v148)
          {
            goto LABEL_499;
          }
        }

      case 0x1Au:
        v354 = v48 + 1;
        v355 = v4;
        v69 = v39;
        while (1)
        {
          v356 = *v49;
          if (*v49)
          {
            if (v39)
            {
              v357 = *v69 * v356 + ((*v69 * v356) >> 8) + 1;
              if (v357 < 0x100)
              {
                goto LABEL_498;
              }

              v356 = v357 >> 8;
            }

            v358 = v356 * 0.0039216;
            v359 = *v354 * v358;
            if (v359 > 0.0)
            {
              v360 = *(v354 - 1) * v358;
              v361 = 1.0;
              if (!v54 || (v361 = COERCE_FLOAT(bswap32(*v28)), v361 > 0.0))
              {
                v362 = COERCE_FLOAT(bswap32(*v31));
                v363 = v360 - (v360 * v361);
                if (v361 == 1.0)
                {
                  v363 = 0.0;
                }

                if (v359 == 1.0)
                {
                  v364 = v362;
                }

                else
                {
                  v364 = v359 * v362;
                }

                if (v359 != 1.0)
                {
                  v363 = (v363 + v362) - (v359 * v362);
                }

                v360 = v364 + v363;
                if (!v54)
                {
                  *v31 = bswap32(LODWORD(v360));
                  goto LABEL_498;
                }

                v359 = (v359 + v361) - (v359 * v361);
              }

              *v31 = bswap32(LODWORD(v360));
              *v28 = bswap32(LODWORD(v359));
            }
          }

LABEL_498:
          ++v49;
          v69 += v39 != 0;
          ++v31;
          v354 += 2;
          v28 = (v28 + v45);
          if (!--v355)
          {
            goto LABEL_499;
          }
        }

      case 0x1Bu:
        v74 = v48 + 1;
        v69 = v39;
        v75 = v4;
        break;
      default:
        goto LABEL_501;
    }

    while (1)
    {
      v76 = *v49;
      if (*v49)
      {
        if (v39)
        {
          v77 = *v69 * v76 + ((*v69 * v76) >> 8) + 1;
          if (v77 < 0x100)
          {
            goto LABEL_96;
          }

          v76 = v77 >> 8;
        }

        v78 = v76 * 0.0039216;
        v79 = *v74 * v78;
        if (v79 > 0.0)
        {
          v80 = *(v74 - 1) * v78;
          v81 = 1.0;
          if (!v54 || (v81 = COERCE_FLOAT(bswap32(*v28)), v81 > 0.0))
          {
            v82 = COERCE_FLOAT(bswap32(*v31));
            v83 = v82 - (v79 * v82);
            if (v79 == 1.0)
            {
              v83 = 0.0;
            }

            v84 = (v80 + v83) - (v80 * v81);
            if (v81 == 1.0)
            {
              v85 = v83;
            }

            else
            {
              v80 = v80 * v81;
              v85 = v84;
            }

            v80 = v80 + v85;
            if (!v54)
            {
              *v31 = bswap32(LODWORD(v80));
              goto LABEL_96;
            }

            v79 = (v79 + v81) - (v79 * v81);
          }

          *v31 = bswap32(LODWORD(v80));
          *v28 = bswap32(LODWORD(v79));
        }
      }

LABEL_96:
      ++v49;
      v69 += v39 != 0;
      ++v31;
      v74 += 2;
      v28 = (v28 + v45);
      if (!--v75)
      {
LABEL_499:
        v39 = &v69[v420];
        goto LABEL_500;
      }
    }
  }
}

uint64_t WF_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v121 = *(a2 + 5) - a5;
  }

  else
  {
    v121 = 0;
  }

  v9 = *(a2 + 2);
  v10 = a2[1];
  v120 = *a2;
  v119 = *(a2 + 3) - a5;
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 9);
  v14 = *(a2 + 11);
  v15 = *(a2 + 7) + v14 * a4;
  v16 = *(a1 + 32);
  v17 = (v16 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3));
  v18 = *(a1 + 176);
  result = 4 * (v8 != 0);
  if (v18)
  {
    v117 = *(a2 + 15);
    v118 = *(a2 + 13);
    v20 = 32 - v10;
    v21 = v9 * 0.3;
    v22 = v9 * 0.59;
    v23 = v9 * 0.11;
    v116 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v117 - v15) | (v15 - v118)) < 0)
      {
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v24 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        v25 = v24 - 7 >= 9 ? -v11 : v11;
        v26 = weights_21890[v24] & 0xF;
      }

      v27 = v16 + (v15 >> v13) * v11;
      if (v120 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v116;
        v29 = a5;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = &v27[v30];
          if (v17 >= &v27[v30])
          {
            v33 = &v27[v30];
          }

          else
          {
            v33 = v17;
          }

          if (v16 > v33)
          {
            v33 = v16;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v26)
          {
            v46 = &v32[v25];
            if (v17 < &v32[v25])
            {
              v46 = v17;
            }

            if (v16 > v46)
            {
              v46 = v16;
            }

            v47 = BLEND8_21892[v26];
            v44 = v34 - ((v47 & v34) >> v26);
            v45 = (v47 & *v46) >> v26;
            goto LABEL_46;
          }

LABEL_47:
          v48 = __ROL4__(v34, v10);
          v49 = *&_blt_float[HIBYTE(v48)];
          v50 = *&_blt_float[BYTE2(v48)];
          v51 = *&_blt_float[BYTE1(v48)];
          v52 = *&_blt_float[((v34 << v10) | (v34 >> v20)) | v6];
          if (v9 >= 1.0)
          {
            v53 = v49 * 0.3;
            v54 = v50 * 0.59;
            v55 = v51 * 0.11;
          }

          else
          {
            v53 = v21 * v49;
            v54 = v22 * v50;
            v55 = v23 * v51;
            v52 = v9 * v52;
          }

          *v7 = bswap32(COERCE_UNSIGNED_INT((v53 + v54) + v55));
          if (v8)
          {
            *v8 = bswap32(LODWORD(v52));
          }

          v28 += 2;
          ++v7;
          v8 = (v8 + result);
          if (!--v29)
          {
            goto LABEL_99;
          }
        }

        v36 = &v32[v31 >> 4];
        if (v17 < v36)
        {
          v36 = v17;
        }

        if (v16 > v36)
        {
          v36 = v16;
        }

        v37 = *v36;
        if (v26)
        {
          v38 = &v32[v25];
          if (v17 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v17;
          }

          if (v16 > v39)
          {
            v39 = v16;
          }

          v40 = *v39;
          v41 = (v38 + (v31 >> 4));
          if (v17 < v41)
          {
            v41 = v17;
          }

          if (v16 > v41)
          {
            v41 = v16;
          }

          v42 = BLEND8_21892[v26];
          v34 = v34 - ((v42 & v34) >> v26) + ((v42 & v40) >> v26);
          v37 = v37 - ((v42 & v37) >> v26) + ((v42 & *v41) >> v26);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_46:
        v34 = v44 + v45;
        goto LABEL_47;
      }

LABEL_99:
      v7 += v119;
      v15 += v14;
      v8 += v121;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_99;
    }

    v57 = v116;
    v56 = a5;
    while (1)
    {
      v58 = *(v57 - 1);
      v59 = *v57;
      v60 = &v27[v58];
      if (v17 >= &v27[v58])
      {
        v61 = &v27[v58];
      }

      else
      {
        v61 = v17;
      }

      if (v16 > v61)
      {
        v61 = v16;
      }

      v62 = *v61;
      v63 = v59 & 0xF;
      if ((v59 & 0xF) != 0)
      {
        v64 = &v60[v59 >> 4];
        if (v17 < v64)
        {
          v64 = v17;
        }

        if (v16 > v64)
        {
          v64 = v16;
        }

        v65 = *v64;
        if (v26)
        {
          v66 = &v60[v25];
          if (v17 >= v66)
          {
            v67 = v66;
          }

          else
          {
            v67 = v17;
          }

          if (v16 > v67)
          {
            v67 = v16;
          }

          v68 = *v67;
          v69 = (v66 + (v59 >> 4));
          if (v17 < v69)
          {
            v69 = v17;
          }

          if (v16 > v69)
          {
            v69 = v16;
          }

          v70 = BLEND8_21892[v26];
          v62 = v62 - ((v70 & v62) >> v26) + ((v70 & v68) >> v26);
          v65 = v65 - ((v70 & v65) >> v26) + ((v70 & *v69) >> v26);
        }

        v71 = BLEND8_21892[*v57 & 0xF];
        v72 = v62 - ((v71 & v62) >> v63);
        v73 = (v71 & v65) >> v63;
      }

      else
      {
        if (!v26)
        {
          goto LABEL_85;
        }

        v74 = &v60[v25];
        if (v17 < &v60[v25])
        {
          v74 = v17;
        }

        if (v16 > v74)
        {
          v74 = v16;
        }

        v75 = BLEND8_21892[v26];
        v72 = v62 - ((v75 & v62) >> v26);
        v73 = (v75 & *v74) >> v26;
      }

      v62 = v72 + v73;
LABEL_85:
      v76 = __ROL4__(v62, v10);
      v77 = *&_blt_float[HIBYTE(v76)];
      v78 = *&_blt_float[BYTE2(v76)];
      v79 = *&_blt_float[BYTE1(v76)];
      v80 = *&_blt_float[((v62 << v10) | (v62 >> v20)) | v6];
      if (v9 >= 1.0)
      {
        v81 = v77 * 0.3;
        v82 = v78 * 0.59;
        v83 = v79 * 0.11;
      }

      else
      {
        v81 = v21 * v77;
        v82 = v22 * v78;
        v83 = v23 * v79;
        v80 = v9 * v80;
      }

      v84 = (v81 + v82) + v83;
      if (v8)
      {
        if (v80 >= 1.0)
        {
          goto LABEL_92;
        }

        if (v80 > 0.0)
        {
          v84 = v84 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v80));
          v80 = v80 + (COERCE_FLOAT(bswap32(*v8)) * (1.0 - v80));
LABEL_92:
          *v7 = bswap32(LODWORD(v84));
          *v8 = bswap32(LODWORD(v80));
        }
      }

      else
      {
        if (v80 >= 1.0)
        {
          v85 = v84;
LABEL_97:
          *v7 = bswap32(LODWORD(v85));
          goto LABEL_98;
        }

        if (v80 > 0.0)
        {
          v85 = v84 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v80));
          goto LABEL_97;
        }
      }

LABEL_98:
      v57 += 2;
      ++v7;
      v8 = (v8 + result);
      if (!--v56)
      {
        goto LABEL_99;
      }
    }
  }

  v86 = v9 * 0.3;
  v87 = v9 * 0.59;
  v88 = v9 * 0.11;
  do
  {
    v89 = v16 + (v15 >> v13) * v11;
    if (v120 != 1)
    {
      v102 = (v12 + 16 * a3);
      v103 = a5;
      if (a5 < 1)
      {
        goto LABEL_135;
      }

      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = &v89[v104];
        if (v17 < &v89[v104])
        {
          v105 = v17;
        }

        if (v16 > v105)
        {
          v105 = v16;
        }

        v106 = __ROL4__(*v105, v10);
        v107 = *&_blt_float[HIBYTE(v106)];
        v108 = *&_blt_float[BYTE2(v106)];
        v109 = *&_blt_float[BYTE1(v106)];
        v110 = *&_blt_float[v106 | v6];
        if (v9 >= 1.0)
        {
          v111 = v107 * 0.3;
          v112 = v108 * 0.59;
          v113 = v109 * 0.11;
        }

        else
        {
          v111 = v86 * v107;
          v112 = v87 * v108;
          v113 = v88 * v109;
          v110 = v9 * v110;
        }

        v114 = (v111 + v112) + v113;
        if (v8)
        {
          if (v110 >= 1.0)
          {
            goto LABEL_128;
          }

          if (v110 > 0.0)
          {
            v114 = v114 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v110));
            v110 = v110 + (COERCE_FLOAT(bswap32(*v8)) * (1.0 - v110));
LABEL_128:
            *v7 = bswap32(LODWORD(v114));
            *v8 = bswap32(LODWORD(v110));
          }
        }

        else
        {
          if (v110 >= 1.0)
          {
            v115 = v114;
LABEL_133:
            *v7 = bswap32(LODWORD(v115));
            goto LABEL_134;
          }

          if (v110 > 0.0)
          {
            v115 = v114 + (COERCE_FLOAT(bswap32(*v7)) * (1.0 - v110));
            goto LABEL_133;
          }
        }

LABEL_134:
        ++v7;
        v8 = (v8 + result);
        if (!--v103)
        {
          goto LABEL_135;
        }
      }
    }

    if (a5 >= 1)
    {
      v90 = (v12 + 16 * a3);
      v91 = a5;
      do
      {
        v92 = *v90;
        v90 += 2;
        v93 = &v89[v92];
        if (v17 < &v89[v92])
        {
          v93 = v17;
        }

        if (v16 > v93)
        {
          v93 = v16;
        }

        v94 = __ROL4__(*v93, v10);
        v95 = *&_blt_float[HIBYTE(v94)];
        v96 = *&_blt_float[BYTE2(v94)];
        v97 = *&_blt_float[BYTE1(v94)];
        v98 = *&_blt_float[v94 | v6];
        if (v9 >= 1.0)
        {
          v99 = v95 * 0.3;
          v100 = v96 * 0.59;
          v101 = v97 * 0.11;
        }

        else
        {
          v99 = v86 * v95;
          v100 = v87 * v96;
          v101 = v88 * v97;
          v98 = v9 * v98;
        }

        *v7 = bswap32(COERCE_UNSIGNED_INT((v99 + v100) + v101));
        if (v8)
        {
          *v8 = bswap32(LODWORD(v98));
        }

        ++v7;
        v8 = (v8 + result);
        --v91;
      }

      while (v91);
    }

LABEL_135:
    v7 += v119;
    v15 += v14;
    v8 += v121;
    --a6;
  }

  while (a6);
  return result;
}