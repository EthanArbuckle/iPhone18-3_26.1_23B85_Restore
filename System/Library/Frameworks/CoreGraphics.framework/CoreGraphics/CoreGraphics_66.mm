unint64_t W16_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 136);
  v4 = *(result + 12);
  v5 = *(result + 16);
  if (v2)
  {
    v6 = *(result + 32) >> 1;
    v7 = (v2 + 2 * v6 * v5 + 2 * v4);
    v8 = -1;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    if (!v3)
    {
      return result;
    }
  }

  v9 = *(result + 4);
  v10 = *(result + 8);
  v12 = *(result + 88);
  v11 = *(result + 96);
  v13 = *(result + 28) >> 1;
  v14 = (*(result + 40) + 2 * v13 * v5 + 2 * v4);
  v15 = *(result + 124);
  v16 = (v3 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v19 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v21 = *(result + 64);
    v22 = *(result + 68);
    v724 = v19 >> 1;
    if (v11)
    {
      v722 = *(result + 80) >> 1;
      v20 = 1;
    }

    else
    {
      v722 = 0;
      v20 = 0;
    }

    result = v12 + 2 * v724 * v22;
    v8 &= 1u;
    v27 = 1;
    v28 = v12;
    v23 = v12;
    goto LABEL_19;
  }

  v724 = v19 >> 1;
  if (v11)
  {
    v722 = *(result + 80) >> 1;
    v11 += 2 * v722 * v18 + 2 * v17;
    v20 = -1;
  }

  else
  {
    v722 = 0;
    v20 = 0;
  }

  v23 = (v12 + 2 * v724 * v18 + 2 * v17);
  if (v724 == v13)
  {
    v24 = v14 - v23;
    if (v24 >= 1)
    {
      if (v24 <= v9)
      {
        v14 += v9 - 1;
        v23 += v9 - 1;
        v16 += v9 - 1;
        v7 += v8 & (v9 - 1);
        v27 = -1;
        v724 = *(result + 28) >> 1;
        v11 += 2 * (v20 & (v9 - 1));
        goto LABEL_16;
      }

      v25 = v10 - 1;
      v26 = &v23[v13 * v25];
      if (v14 <= &v26[v9 - 1])
      {
        v14 += v13 * v25;
        v16 += v15 * v25;
        v15 = -v15;
        v7 += v6 * v25;
        v6 = -v6;
        v8 &= 1u;
        v11 += 2 * v722 * v25;
        v722 = -v722;
        v20 &= 1u;
        v27 = 1;
        v23 = v26;
        v724 = -v13;
        v13 = -v13;
        goto LABEL_16;
      }
    }
  }

  v8 &= 1u;
  v20 &= 1u;
  v27 = 1;
LABEL_16:
  result = 0;
  v28 = 0;
  v12 = -1;
  v22 = v722;
  v21 = v724;
LABEL_19:
  v29 = v27 * v9;
  v723 = v9;
  v719 = result;
  v727 = v10;
  if (result)
  {
    v30 = v18 % v22;
    v31 = &v23[v724 * v30];
    result = v17 % v21;
    v23 = &v31[result];
    v32 = v21;
    v12 = &v31[v21];
    v33 = v11 + 2 * v722 * v30 + 2 * result;
    if (v20)
    {
      v11 = v33;
    }

    v725 = v11;
    v726 = &v31[result];
  }

  else
  {
    v725 = v11;
    v726 = v28;
    v724 -= v29;
    v722 -= v20 * v9;
    v32 = v21;
  }

  v721 = v15 - v29;
  v720 = v13 - v29;
  v718 = v6 - v8 * v9;
  v34 = v27;
  v35 = v22;
  v728 = v20;
  v729 = v8;
  switch(a2)
  {
    case 0:
      if (v8)
      {
        do
        {
          v36 = v9;
          v37 = v727;
          do
          {
            v38 = *v16;
            if (*v16)
            {
              if (v38 == 255)
              {
                LOWORD(v39) = 0;
                *v14 = 0;
              }

              else
              {
                v40 = bswap32(*v14) >> 16;
                v41 = bswap32(*v7) >> 16;
                v42 = v38 | (v38 << 8);
                *v14 = bswap32(v40 - ((v42 * v40 + ((v42 * v40) >> 16) + 1) >> 16)) >> 16;
                v39 = bswap32(v41 - ((v42 * v41 + ((v42 * v41) >> 16) + 1) >> 16)) >> 16;
              }

              *v7 = v39;
            }

            v16 += v34;
            v7 += v8;
            v14 += v34;
            --v36;
          }

          while (v36);
          v16 += v721;
          v14 += v720;
          v7 += v718;
          --v727;
        }

        while (v37 != 1);
      }

      else
      {
        do
        {
          v616 = v9;
          v617 = v727;
          do
          {
            v618 = *v16;
            if (*v16)
            {
              if (v618 == 255)
              {
                LOWORD(v619) = 0;
              }

              else
              {
                v620 = bswap32(*v14) >> 16;
                v619 = bswap32(v620 - ((257 * v618 * v620 + ((257 * v618 * v620) >> 16) + 1) >> 16)) >> 16;
              }

              *v14 = v619;
            }

            v16 += v27;
            v14 += v27;
            --v616;
          }

          while (v616);
          v16 += v721;
          v14 += v720;
          --v727;
        }

        while (v617 != 1);
      }

      return result;
    case 1:
      if (v8)
      {
        if (v20)
        {
          v300 = -v32;
          v301 = v725;
          v302 = -(v724 * v22);
          v303 = -(v722 * v22);
          do
          {
            v304 = v9;
            v305 = v727;
            do
            {
              v306 = *v16;
              if (*v16)
              {
                if (v306 == 255)
                {
                  *v14 = *v23;
                  v307 = *v301;
                }

                else
                {
                  result = bswap32(*v301);
                  v308 = (bswap32(*v23) >> 16) * (v306 | (v306 << 8)) + (bswap32(*v14) >> 16) * ((v306 | (v306 << 8)) ^ 0xFFFF);
                  *v14 = bswap32(v308 + HIWORD(v308) + 1);
                  v307 = bswap32(0xFFFF * WORD1(result) + ((0xFFFF * WORD1(result)) >> 16) + 1);
                }

                *v7 = v307;
              }

              v16 += v27;
              v309 = &v23[v27];
              v310 = &v301[v20];
              if (v309 >= v12)
              {
                v311 = v300;
              }

              else
              {
                v311 = 0;
              }

              v301 = &v310[v311];
              v23 = &v309[v311];
              v7 += v8;
              v14 += v27;
              --v304;
            }

            while (v304);
            if (v719)
            {
              v312 = &v726[v724];
              if (v312 >= v719)
              {
                v313 = v303;
              }

              else
              {
                v313 = 0;
              }

              result = &v725[v722 + v313];
              if (v312 >= v719)
              {
                v314 = v302;
              }

              else
              {
                v314 = 0;
              }

              v23 = &v312[v314];
              v12 += 2 * v314 + 2 * v724;
              v725 += v722 + v313;
              v726 = v23;
              v301 = result;
            }

            else
            {
              v23 += v724;
              v301 += v722;
            }

            v16 += v721;
            v14 += v720;
            v7 += v718;
            --v727;
          }

          while (v305 != 1);
        }

        else
        {
          v652 = -(v724 * v22);
          do
          {
            v653 = v9;
            v654 = v727;
            do
            {
              v655 = *v16;
              if (*v16)
              {
                if (v655 == 255)
                {
                  v656 = *v23;
                }

                else
                {
                  v657 = v655 | (v655 << 8);
                  v658 = bswap32(*v14) >> 16;
                  v659 = (bswap32(*v23) >> 16) * v657;
                  v656 = bswap32(v659 + v658 * (v657 ^ 0xFFFF) + ((v659 + v658 * (v657 ^ 0xFFFF)) >> 16) + 1);
                }

                *v14 = v656;
                *v7 = -1;
              }

              v16 += v34;
              v660 = &v23[v34];
              if (v660 >= v12)
              {
                v661 = -v32;
              }

              else
              {
                v661 = 0;
              }

              v23 = &v660[v661];
              v7 += v8;
              v14 += v34;
              --v653;
            }

            while (v653);
            v16 += v721;
            v14 += v720;
            v7 += v718;
            result = v726;
            v662 = &v726[v724];
            if (v662 >= v719)
            {
              v663 = v652;
            }

            else
            {
              v663 = 0;
            }

            v664 = &v662[v663];
            v665 = v12 + 2 * v663 + 2 * v724;
            if (v719)
            {
              v12 = v665;
              result = v664;
              v23 = v664;
            }

            else
            {
              v23 += v724;
            }

            v726 = result;
            --v727;
          }

          while (v654 != 1);
        }
      }

      else
      {
        v621 = -v32;
        v622 = -(v724 * v22);
        do
        {
          v623 = v9;
          v624 = v727;
          do
          {
            v625 = *v16;
            if (*v16)
            {
              if (v625 == 255)
              {
                v626 = *v23;
              }

              else
              {
                v627 = v625 | (v625 << 8);
                v628 = bswap32(*v14) >> 16;
                v629 = (bswap32(*v23) >> 16) * v627;
                v626 = bswap32(v629 + v628 * (v627 ^ 0xFFFF) + ((v629 + v628 * (v627 ^ 0xFFFF)) >> 16) + 1);
              }

              *v14 = v626;
            }

            v16 += v34;
            v630 = &v23[v34];
            if (v630 >= v12)
            {
              v631 = v621;
            }

            else
            {
              v631 = 0;
            }

            v23 = &v630[v631];
            v14 += v34;
            --v623;
          }

          while (v623);
          v16 += v721;
          v14 += v720;
          v632 = v726;
          v633 = &v726[v724];
          if (v633 >= v719)
          {
            v634 = v622;
          }

          else
          {
            v634 = 0;
          }

          v635 = &v633[v634];
          v636 = v12 + 2 * v634 + 2 * v724;
          if (v719)
          {
            v12 = v636;
            v632 = v635;
            v23 = v635;
          }

          else
          {
            v23 += v724;
          }

          v726 = v632;
          --v727;
        }

        while (v624 != 1);
      }

      return result;
    case 2:
      v215 = -v32;
      if (v8)
      {
        v216 = v725;
        while (1)
        {
          v217 = v723;
          v218 = v727;
          do
          {
            v219 = *v16;
            if (!*v16)
            {
              goto LABEL_304;
            }

            if (v219 != 255)
            {
              v222 = bswap32(*v23);
              v223 = bswap32(*v216);
              v224 = (v219 | (v219 << 8)) ^ 0xFFFF;
              v225 = HIWORD(v222) - ((v224 * HIWORD(v222) + ((v224 * HIWORD(v222)) >> 16) + 1) >> 16);
              v226 = v225 | ((HIWORD(v223) - ((v224 * HIWORD(v223) + ((v224 * HIWORD(v223)) >> 16) + 1) >> 16)) << 16);
              if (v226 < 0x10000)
              {
                goto LABEL_304;
              }

              v227 = bswap32(*v14);
              v228 = bswap32(*v7) >> 16;
              v229 = HIWORD(v226) ^ 0xFFFF;
              *v14 = bswap32(v225 + ((v229 * HIWORD(v227) + ((v229 * HIWORD(v227)) >> 16) + 1) >> 16)) >> 16;
              v230 = ((v229 * v228 + ((v229 * v228) >> 16) + 1) >> 16) + HIWORD(v226);
              goto LABEL_302;
            }

            v220 = *v216;
            v221 = __rev16(v220);
            if (!v221)
            {
              goto LABEL_304;
            }

            if (v221 != 0xFFFF)
            {
              v231 = bswap32(*v14);
              v232 = bswap32(*v7);
              *v14 = bswap32((bswap32(*v23) >> 16) + ((HIWORD(v231) * (v221 ^ 0xFFFF) + ((HIWORD(v231) * (v221 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              v230 = v221 + ((HIWORD(v232) * (v221 ^ 0xFFFF) + ((HIWORD(v232) * (v221 ^ 0xFFFF)) >> 16) + 1) >> 16);
LABEL_302:
              v220 = bswap32(v230) >> 16;
              goto LABEL_303;
            }

            *v14 = *v23;
LABEL_303:
            *v7 = v220;
LABEL_304:
            v16 += v27;
            v233 = &v23[v27];
            v234 = &v216[v20];
            if (v233 >= v12)
            {
              result = -v32;
            }

            else
            {
              result = 0;
            }

            v216 = &v234[result];
            v23 = &v233[result];
            v7 += v8;
            v14 += v27;
            --v217;
          }

          while (v217);
          if (v719)
          {
            result = v724;
            v235 = &v726[v724];
            if (v235 >= v719)
            {
              v236 = -(v722 * v35);
            }

            else
            {
              v236 = 0;
            }

            v237 = &v725[v722 + v236];
            if (v235 >= v719)
            {
              v238 = -(v724 * v35);
            }

            else
            {
              v238 = 0;
            }

            v23 = &v235[v238];
            v12 += 2 * v238 + 2 * v724;
            v725 += v722 + v236;
            v726 = v23;
            v216 = v237;
          }

          else
          {
            v23 += v724;
            v216 += v722;
          }

          v16 += v721;
          v14 += v720;
          v7 += v718;
          --v727;
          if (v218 == 1)
          {
            return result;
          }
        }
      }

      v577 = v725;
      v578 = -(v724 * v22);
      v579 = -(v722 * v22);
LABEL_819:
      v580 = v723;
      v581 = v727;
      while (1)
      {
        v582 = *v16;
        if (*v16)
        {
          if (v582 == 255)
          {
            v583 = bswap32(*v577) >> 16;
            if (v583)
            {
              if (v583 == 0xFFFF)
              {
                LOWORD(v584) = *v23;
              }

              else
              {
                result = bswap32(*v14) >> 16;
                v590 = (bswap32(*v23) >> 16) + ((result * (v583 ^ 0xFFFF) + ((result * (v583 ^ 0xFFFF)) >> 16) + 1) >> 16);
LABEL_828:
                v584 = bswap32(v590) >> 16;
              }

              *v14 = v584;
            }
          }

          else
          {
            v585 = bswap32(*v23);
            result = bswap32(*v577) >> 16;
            v586 = (v582 | (v582 << 8)) ^ 0xFFFF;
            v587 = v586 * result + ((v586 * result) >> 16) + 1;
            v588 = HIWORD(v585) - ((v586 * HIWORD(v585) + ((v586 * HIWORD(v585)) >> 16) + 1) >> 16);
            v589 = v588 | ((result - HIWORD(v587)) << 16);
            if (v589 >= 0x10000)
            {
              result = bswap32(*v14) >> 16;
              v590 = v588 + (((~v589 >> 16) * result + (((~v589 >> 16) * result) >> 16) + 1) >> 16);
              goto LABEL_828;
            }
          }
        }

        v16 += v27;
        v591 = &v23[v27];
        v592 = &v577[v20];
        if (v591 >= v12)
        {
          v593 = v215;
        }

        else
        {
          v593 = 0;
        }

        v577 = &v592[v593];
        v23 = &v591[v593];
        v14 += v27;
        if (!--v580)
        {
          if (v719)
          {
            v594 = &v726[v724];
            if (v594 >= v719)
            {
              v595 = v579;
            }

            else
            {
              v595 = 0;
            }

            result = &v725[v722 + v595];
            if (v594 >= v719)
            {
              v596 = v578;
            }

            else
            {
              v596 = 0;
            }

            v23 = &v594[v596];
            v12 += 2 * v596 + 2 * v724;
            v725 += v722 + v595;
            v726 = v23;
            v577 = result;
          }

          else
          {
            v23 += v724;
            v577 += v722;
          }

          v16 += v721;
          v14 += v720;
          --v727;
          if (v581 == 1)
          {
            return result;
          }

          goto LABEL_819;
        }
      }

    case 3:
      v257 = -v32;
      v258 = v725;
      v259 = -(v724 * v22);
      v260 = -(v722 * v22);
      do
      {
        v261 = v9;
        v262 = v727;
        do
        {
          v263 = *v16;
          if (*v16)
          {
            if (v263 == 255)
            {
              if (v20)
              {
                v264 = bswap32(*v258) >> 16;
              }

              else
              {
                v264 = 0xFFFF;
              }

              v266 = bswap32(*v23) >> 16;
              v267 = bswap32(~*v7) >> 16;
              v268 = v267 * v266 + ((v267 * v266) >> 16) + 1;
              result = v267 * v264 + ((v267 * v264) >> 16) + 1;
              *v14 = bswap32(v266 - HIWORD(v268)) >> 16;
              v269 = v264 - WORD1(result);
            }

            else
            {
              if (v20)
              {
                v265 = bswap32(*v258) >> 16;
              }

              else
              {
                v265 = 0xFFFF;
              }

              v270 = v263 | (v263 << 8);
              v271 = bswap32(*v7);
              result = HIWORD(v271) * v270 + ((HIWORD(v271) * v270) >> 16) + 1;
              v270 ^= 0xFFFFu;
              v272 = WORD1(result) * (bswap32(*v23) >> 16) + (bswap32(*v14) >> 16) * v270;
              v269 = (v265 * (v270 + WORD1(result)) + ((v265 * (v270 + WORD1(result))) >> 16) + 1) >> 16;
              *v14 = bswap32(v272 + HIWORD(v272) + 1);
            }

            *v7 = bswap32(v269) >> 16;
          }

          v16 += v27;
          v273 = &v23[v27];
          v274 = &v258[v20];
          if (v273 >= v12)
          {
            v275 = v257;
          }

          else
          {
            v275 = 0;
          }

          v258 = &v274[v275];
          v23 = &v273[v275];
          v7 += v8;
          v14 += v27;
          --v261;
        }

        while (v261);
        if (v719)
        {
          v276 = &v726[v724];
          if (v276 >= v719)
          {
            v277 = v260;
          }

          else
          {
            v277 = 0;
          }

          result = &v725[v722 + v277];
          if (v276 >= v719)
          {
            v278 = v259;
          }

          else
          {
            v278 = 0;
          }

          v23 = &v276[v278];
          v12 += 2 * v278 + 2 * v724;
          v725 += v722 + v277;
          v726 = v23;
          v258 = result;
        }

        else
        {
          v23 += v724;
          v258 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
      }

      while (v262 != 1);
      return result;
    case 4:
      v123 = -v32;
      v124 = v725;
      v125 = -(v724 * v22);
      v126 = -(v722 * v22);
      do
      {
        v127 = v9;
        v128 = v727;
        do
        {
          v129 = *v16;
          if (*v16)
          {
            if (v129 == 255)
            {
              if (v20)
              {
                v130 = bswap32(*v124) >> 16;
              }

              else
              {
                v130 = 0xFFFF;
              }

              v132 = bswap32(*v23) >> 16;
              v133 = bswap32(*v7) >> 16;
              v134 = v133 * v132 + ((v133 * v132) >> 16) + 1;
              result = v133 * v130 + ((v133 * v130) >> 16) + 1;
              *v14 = bswap32(v132 - HIWORD(v134)) >> 16;
              v135 = v130 - WORD1(result);
            }

            else
            {
              if (v20)
              {
                v131 = bswap32(*v124) >> 16;
              }

              else
              {
                v131 = 0xFFFF;
              }

              v136 = v129 | (v129 << 8);
              v137 = bswap32(~*v7);
              result = HIWORD(v137) * v136 + ((HIWORD(v137) * v136) >> 16) + 1;
              v136 ^= 0xFFFFu;
              v138 = WORD1(result) * (bswap32(*v23) >> 16) + (bswap32(*v14) >> 16) * v136;
              v135 = (v131 * (v136 + WORD1(result)) + ((v131 * (v136 + WORD1(result))) >> 16) + 1) >> 16;
              *v14 = bswap32(v138 + HIWORD(v138) + 1);
            }

            *v7 = bswap32(v135) >> 16;
          }

          v16 += v27;
          v139 = &v23[v27];
          v140 = &v124[v20];
          if (v139 >= v12)
          {
            v141 = v123;
          }

          else
          {
            v141 = 0;
          }

          v124 = &v140[v141];
          v23 = &v139[v141];
          v7 += v8;
          v14 += v27;
          --v127;
        }

        while (v127);
        if (v719)
        {
          v142 = &v726[v724];
          if (v142 >= v719)
          {
            v143 = v126;
          }

          else
          {
            v143 = 0;
          }

          result = &v725[v722 + v143];
          if (v142 >= v719)
          {
            v144 = v125;
          }

          else
          {
            v144 = 0;
          }

          v23 = &v142[v144];
          v12 += 2 * v144 + 2 * v724;
          v725 += v722 + v143;
          v726 = v23;
          v124 = result;
        }

        else
        {
          v23 += v724;
          v124 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
      }

      while (v128 != 1);
      return result;
    case 5:
      v351 = -v32;
      v352 = v725;
      v353 = -(v724 * v22);
      v354 = -(v722 * v22);
      do
      {
        v355 = v723;
        v356 = v727;
        do
        {
          if (*v16)
          {
            v357 = bswap32(*v7);
            v358 = bswap32(*v23);
            v359 = bswap32(*v352);
            v360 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v361 = HIWORD(v358) - ((v360 * HIWORD(v358) + ((v360 * HIWORD(v358)) >> 16) + 1) >> 16);
            v362 = (v361 | ((HIWORD(v359) - ((v360 * HIWORD(v359) + ((v360 * HIWORD(v359)) >> 16) + 1) >> 16)) << 16)) >> 16;
            result = v361 * HIWORD(v357) + (v362 ^ 0xFFFF) * (bswap32(*v14) >> 16);
            *v14 = bswap32(result + WORD1(result) + 1);
            *v7 = bswap32(((v362 ^ 0xFFFF) + HIWORD(v357)) * v362 + ((((v362 ^ 0xFFFF) + HIWORD(v357)) * v362) >> 16) + 1);
          }

          v16 += v27;
          v363 = &v23[v27];
          v364 = &v352[v20];
          if (v363 >= v12)
          {
            v365 = v351;
          }

          else
          {
            v365 = 0;
          }

          v352 = &v364[v365];
          v23 = &v363[v365];
          v7 += v8;
          v14 += v27;
          --v355;
        }

        while (v355);
        if (v719)
        {
          v366 = &v726[v724];
          if (v366 >= v719)
          {
            v367 = v354;
          }

          else
          {
            v367 = 0;
          }

          result = &v725[v722 + v367];
          if (v366 >= v719)
          {
            v368 = v353;
          }

          else
          {
            v368 = 0;
          }

          v23 = &v366[v368];
          v12 += 2 * v368 + 2 * v724;
          v725 += v722 + v367;
          v726 = v23;
          v352 = result;
        }

        else
        {
          v23 += v724;
          v352 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
      }

      while (v356 != 1);
      return result;
    case 6:
      v405 = v725;
      do
      {
        v406 = v723;
        v407 = v727;
        do
        {
          v408 = *v16;
          if (*v16)
          {
            v409 = bswap32(*v7);
            if (HIWORD(v409) != 0xFFFF)
            {
              if (~HIWORD(v409) == 0xFFFF)
              {
                if (v20)
                {
                  v410 = bswap32(*v405) >> 16;
                }

                else
                {
                  v410 = 0xFFFF;
                }

                v412 = bswap32(*v23) >> 16;
                v413 = (v408 | (v408 << 8)) ^ 0xFFFF;
                *v14 = bswap32(v412 - ((v413 * v412 + ((v413 * v412) >> 16) + 1) >> 16)) >> 16;
                v414 = v410 - ((v413 * v410 + ((v413 * v410) >> 16) + 1) >> 16);
              }

              else
              {
                if (v20)
                {
                  v411 = bswap32(*v405) >> 16;
                }

                else
                {
                  v411 = 0xFFFF;
                }

                v415 = bswap32(*v23);
                v416 = (257 * v408 * ~HIWORD(v409) + ((257 * v408 * ~HIWORD(v409)) >> 16) + 1) >> 16;
                *v14 = bswap32((bswap32(*v14) >> 16) + ((v416 * HIWORD(v415) + ((v416 * HIWORD(v415)) >> 16) + 1) >> 16)) >> 16;
                v414 = HIWORD(v409) + ((v411 * v416 + ((v411 * v416) >> 16) + 1) >> 16);
              }

              *v7 = bswap32(v414) >> 16;
            }
          }

          v16 += v27;
          result = &v23[v27];
          v417 = &v405[v20];
          if (result >= v12)
          {
            v418 = -v32;
          }

          else
          {
            v418 = 0;
          }

          v405 = &v417[v418];
          v23 = (result + 2 * v418);
          v7 += v8;
          v14 += v27;
          --v406;
        }

        while (v406);
        if (v719)
        {
          v419 = &v726[v724];
          if (v419 >= v719)
          {
            v420 = -(v722 * v22);
          }

          else
          {
            v420 = 0;
          }

          v421 = &v725[v722 + v420];
          if (v419 >= v719)
          {
            v422 = -(v724 * v22);
          }

          else
          {
            v422 = 0;
          }

          result = v12 + 2 * v422;
          v23 = &v419[v422];
          v12 = result + 2 * v724;
          v725 = v421;
          v726 = v23;
          v405 = v421;
        }

        else
        {
          v23 += v724;
          v405 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
      }

      while (v407 != 1);
      return result;
    case 7:
      v279 = -v32;
      if (v8)
      {
        v280 = v725;
        v281 = -(v724 * v22);
        v282 = -(v722 * v22);
        do
        {
          v283 = v723;
          v284 = v727;
          do
          {
            v285 = *v16;
            if (*v16)
            {
              if (v285 == 255)
              {
                v286 = bswap32(*v14) >> 16;
                v287 = bswap32(*v7) >> 16;
                v288 = bswap32(~*v280) >> 16;
                v289 = v288 * v286 + ((v288 * v286) >> 16) + 1;
                result = v288 * v287 + ((v288 * v287) >> 16) + 1;
                *v14 = bswap32(v286 - HIWORD(v289)) >> 16;
                v290 = v287 - WORD1(result);
              }

              else
              {
                v291 = bswap32(*v7);
                v292 = bswap32(*v280);
                v293 = ((v285 | (v285 << 8)) ^ 0xFFFF) + ((HIWORD(v292) * (v285 | (v285 << 8)) + ((HIWORD(v292) * (v285 | (v285 << 8))) >> 16) + 1) >> 16);
                result = v293 * (bswap32(*v14) >> 16);
                v290 = (v293 * HIWORD(v291) + ((v293 * HIWORD(v291)) >> 16) + 1) >> 16;
                *v14 = bswap32(result + WORD1(result) + 1);
              }

              *v7 = bswap32(v290) >> 16;
            }

            v16 += v27;
            v294 = &v23[v27];
            v295 = &v280[v20];
            if (v294 >= v12)
            {
              v296 = v279;
            }

            else
            {
              v296 = 0;
            }

            v280 = &v295[v296];
            v23 = &v294[v296];
            v7 += v8;
            v14 += v27;
            --v283;
          }

          while (v283);
          if (v719)
          {
            v297 = &v726[v724];
            if (v297 >= v719)
            {
              v298 = v282;
            }

            else
            {
              v298 = 0;
            }

            result = &v725[v722 + v298];
            if (v297 >= v719)
            {
              v299 = v281;
            }

            else
            {
              v299 = 0;
            }

            v23 = &v297[v299];
            v12 += 2 * v299 + 2 * v724;
            v725 += v722 + v298;
            v726 = v23;
            v280 = result;
          }

          else
          {
            v23 += v724;
            v280 += v722;
          }

          v16 += v721;
          v14 += v720;
          v7 += v718;
          --v727;
        }

        while (v284 != 1);
      }

      else
      {
        v597 = v725;
        v598 = -(v724 * v22);
        v599 = -(v722 * v22);
        do
        {
          v600 = v9;
          do
          {
            v601 = *v16;
            if (*v16)
            {
              if (v601 == 255)
              {
                v602 = bswap32(*v14) >> 16;
                v603 = bswap32(~*v597);
                v604 = v602 - ((HIWORD(v603) * v602 + ((HIWORD(v603) * v602) >> 16) + 1) >> 16);
              }

              else
              {
                v605 = v601 | (v601 << 8);
                v606 = bswap32(*v14) >> 16;
                v607 = bswap32(*v597);
                v608 = HIWORD(v607) * v605 + ((HIWORD(v607) * v605) >> 16) + 1;
                v604 = (((v605 ^ 0xFFFF) + HIWORD(v608)) * v606 + ((((v605 ^ 0xFFFF) + HIWORD(v608)) * v606) >> 16) + 1) >> 16;
              }

              *v14 = bswap32(v604) >> 16;
            }

            v16 += v34;
            v609 = &v23[v34];
            v610 = &v597[v20];
            if (v609 >= v12)
            {
              v611 = v279;
            }

            else
            {
              v611 = 0;
            }

            v597 = &v610[v611];
            v23 = &v609[v611];
            v14 += v34;
            --v600;
          }

          while (v600);
          if (v719)
          {
            v612 = &v726[v724];
            if (v612 >= v719)
            {
              v613 = v599;
            }

            else
            {
              v613 = 0;
            }

            v614 = &v725[v722 + v613];
            if (v612 >= v719)
            {
              v615 = v598;
            }

            else
            {
              v615 = 0;
            }

            v23 = &v612[v615];
            v12 += 2 * v615 + 2 * v724;
            v725 += v722 + v613;
            v726 = v23;
            v597 = v614;
          }

          else
          {
            v23 += v724;
            v597 += v722;
          }

          v16 += v721;
          v14 += v720;
          result = (v727 - 1);
          v727 = result;
        }

        while (result);
      }

      return result;
    case 8:
      v459 = -v32;
      if (v8)
      {
        v460 = v725;
        v461 = -(v724 * v22);
        v462 = -(v722 * v22);
        do
        {
          v463 = v723;
          v464 = v727;
          do
          {
            result = *v16;
            if (*v16)
            {
              v465 = bswap32(*v14) >> 16;
              v466 = bswap32(*v7) >> 16;
              if (result == 255)
              {
                v467 = bswap32(*v460);
              }

              else
              {
                v468 = bswap32(*v460) >> 16;
                v467 = 257 * result * v468 + ((257 * result * v468) >> 16) + 1;
              }

              v469 = HIWORD(v467);
              result = HIWORD(v467) * v465 + ((HIWORD(v467) * v465) >> 16) + 1;
              *v14 = bswap32(v465 - WORD1(result)) >> 16;
              *v7 = bswap32(v466 - ((v469 * v466 + ((v469 * v466) >> 16) + 1) >> 16)) >> 16;
            }

            v16 += v27;
            v470 = &v23[v27];
            v471 = &v460[v20];
            if (v470 >= v12)
            {
              v472 = v459;
            }

            else
            {
              v472 = 0;
            }

            v460 = &v471[v472];
            v23 = &v470[v472];
            v7 += v8;
            v14 += v27;
            --v463;
          }

          while (v463);
          if (v719)
          {
            v473 = &v726[v724];
            if (v473 >= v719)
            {
              v474 = v462;
            }

            else
            {
              v474 = 0;
            }

            result = &v725[v722 + v474];
            if (v473 >= v719)
            {
              v475 = v461;
            }

            else
            {
              v475 = 0;
            }

            v23 = &v473[v475];
            v12 += 2 * v475 + 2 * v724;
            v725 += v722 + v474;
            v726 = v23;
            v460 = result;
          }

          else
          {
            v23 += v724;
            v460 += v722;
          }

          v16 += v721;
          v14 += v720;
          v7 += v718;
          --v727;
        }

        while (v464 != 1);
      }

      else
      {
        v637 = v725;
        v638 = -(v724 * v22);
        v639 = -(v722 * v22);
        do
        {
          v640 = v9;
          do
          {
            v641 = *v16;
            if (*v16)
            {
              v642 = bswap32(*v14) >> 16;
              if (v641 == 255)
              {
                v643 = bswap32(*v637);
              }

              else
              {
                v644 = bswap32(*v637) >> 16;
                v643 = 257 * v641 * v644 + ((257 * v641 * v644) >> 16) + 1;
              }

              *v14 = bswap32(v642 - ((HIWORD(v643) * v642 + ((HIWORD(v643) * v642) >> 16) + 1) >> 16)) >> 16;
            }

            v16 += v34;
            v645 = &v23[v34];
            v646 = &v637[v20];
            if (v645 >= v12)
            {
              v647 = v459;
            }

            else
            {
              v647 = 0;
            }

            v637 = &v646[v647];
            v23 = &v645[v647];
            v14 += v34;
            --v640;
          }

          while (v640);
          if (v719)
          {
            v648 = &v726[v724];
            if (v648 >= v719)
            {
              v649 = v639;
            }

            else
            {
              v649 = 0;
            }

            v650 = &v725[v722 + v649];
            if (v648 >= v719)
            {
              v651 = v638;
            }

            else
            {
              v651 = 0;
            }

            v23 = &v648[v651];
            v12 += 2 * v651 + 2 * v724;
            v725 += v722 + v649;
            v726 = v23;
            v637 = v650;
          }

          else
          {
            v23 += v724;
            v637 += v722;
          }

          v16 += v721;
          v14 += v720;
          result = (v727 - 1);
          v727 = result;
        }

        while (result);
      }

      return result;
    case 9:
      v161 = v725;
      do
      {
        v162 = v723;
        v163 = v727;
        do
        {
          if (*v16)
          {
            v164 = bswap32(*v23);
            v165 = bswap32(*v161);
            v166 = ~(*v16 | (*v16 << 8));
            v167 = v166;
            v168 = HIWORD(v164) - ((HIWORD(v164) * v167 + ((HIWORD(v164) * v167) >> 16) + 1) >> 16);
            v169 = v168 | ((HIWORD(v165) - ((HIWORD(v165) * v167 + ((HIWORD(v165) * v167) >> 16) + 1) >> 16)) << 16);
            v170 = bswap32(~*v7) >> 16;
            v171 = v168 * v170 + (v166 + HIWORD(v169)) * (bswap32(*v14) >> 16);
            v172 = (v170 + (v166 + HIWORD(v169))) * HIWORD(v169);
            *v14 = bswap32(v171 + HIWORD(v171) + 1);
            *v7 = bswap32(v172 + HIWORD(v172) + 1);
          }

          v16 += v27;
          v173 = &v23[v27];
          v174 = &v161[v20];
          if (v173 >= v12)
          {
            result = -v32;
          }

          else
          {
            result = 0;
          }

          v161 = &v174[result];
          v23 = &v173[result];
          v7 += v8;
          v14 += v27;
          --v162;
        }

        while (v162);
        if (v719)
        {
          result = v724;
          v175 = &v726[v724];
          if (v175 >= v719)
          {
            v176 = -(v722 * v35);
          }

          else
          {
            v176 = 0;
          }

          v177 = &v725[v722 + v176];
          if (v175 >= v719)
          {
            v178 = -(v724 * v35);
          }

          else
          {
            v178 = 0;
          }

          v23 = &v175[v178];
          v12 += 2 * v178 + 2 * v724;
          v725 += v722 + v176;
          v726 = v23;
          v161 = v177;
        }

        else
        {
          v23 += v724;
          v161 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
      }

      while (v163 != 1);
      return result;
    case 10:
      v441 = -v32;
      v442 = v725;
      v443 = -(v724 * v22);
      v444 = -(v722 * v22);
      do
      {
        v445 = v9;
        v446 = v727;
        do
        {
          if (*v16)
          {
            v447 = bswap32(*v23);
            v448 = bswap32(*v442);
            v449 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v450 = HIWORD(v447) - ((v449 * HIWORD(v447) + ((v449 * HIWORD(v447)) >> 16) + 1) >> 16);
            v451 = (v450 | ((HIWORD(v448) - ((v449 * HIWORD(v448) + ((v449 * HIWORD(v448)) >> 16) + 1) >> 16)) << 16)) >> 16;
            v452 = bswap32(~*v7);
            result = v450 * HIWORD(v452) + (v451 ^ 0xFFFF) * (bswap32(*v14) >> 16);
            *v14 = bswap32(result + WORD1(result) + 1);
            *v7 = bswap32(((v451 ^ 0xFFFF) + HIWORD(v452)) * v451 + ((((v451 ^ 0xFFFF) + HIWORD(v452)) * v451) >> 16) + 1);
          }

          v16 += v27;
          v453 = &v23[v27];
          v454 = &v442[v20];
          if (v453 >= v12)
          {
            v455 = v441;
          }

          else
          {
            v455 = 0;
          }

          v442 = &v454[v455];
          v23 = &v453[v455];
          v7 += v8;
          v14 += v27;
          --v445;
        }

        while (v445);
        if (v719)
        {
          v456 = &v726[v724];
          if (v456 >= v719)
          {
            v457 = v444;
          }

          else
          {
            v457 = 0;
          }

          result = &v725[v722 + v457];
          if (v456 >= v719)
          {
            v458 = v443;
          }

          else
          {
            v458 = 0;
          }

          v23 = &v456[v458];
          v12 += 2 * v458 + 2 * v724;
          v725 += v722 + v457;
          v726 = v23;
          v442 = result;
        }

        else
        {
          v23 += v724;
          v442 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
      }

      while (v446 != 1);
      return result;
    case 11:
      v105 = -v32;
      if (v8)
      {
        v106 = v725;
        do
        {
          v107 = v723;
          v108 = v727;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v109 = bswap32(*v106) >> 16;
              }

              else
              {
                v109 = 0xFFFF;
              }

              v110 = bswap32(*v23);
              v111 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v112 = HIWORD(v110) - ((v111 * HIWORD(v110) + ((v111 * HIWORD(v110)) >> 16) + 1) >> 16);
              v113 = bswap32(*v7);
              v114 = (v112 | ((v109 - ((v109 * v111 + ((v109 * v111) >> 16) + 1) >> 16)) << 16)) >> 16;
              v115 = HIWORD(v113) - ((bswap32(*v14) >> 16) + v112) + v114;
              v116 = v114 + HIWORD(v113);
              if (v115 >= 0xFFFF)
              {
                v115 = 0xFFFF;
              }

              if (v116 >= 0xFFFF)
              {
                v116 = 0xFFFF;
              }

              *v14 = bswap32(v116 - v115) >> 16;
              *v7 = bswap32(v116) >> 16;
            }

            v16 += v27;
            v117 = &v23[v27];
            v118 = &v106[v20];
            if (v117 >= v12)
            {
              result = -v32;
            }

            else
            {
              result = 0;
            }

            v106 = &v118[result];
            v23 = &v117[result];
            v7 += v8;
            v14 += v27;
            --v107;
          }

          while (v107);
          if (v719)
          {
            result = v724;
            v119 = &v726[v724];
            if (v119 >= v719)
            {
              v120 = -(v722 * v35);
            }

            else
            {
              v120 = 0;
            }

            v121 = &v725[v722 + v120];
            if (v119 >= v719)
            {
              v122 = -(v724 * v35);
            }

            else
            {
              v122 = 0;
            }

            v23 = &v119[v122];
            v12 += 2 * v122 + 2 * v724;
            v725 += v722 + v120;
            v726 = v23;
            v106 = v121;
          }

          else
          {
            v23 += v724;
            v106 += v722;
          }

          v16 += v721;
          v14 += v720;
          v7 += v718;
          --v727;
        }

        while (v108 != 1);
      }

      else
      {
        v558 = v725;
        v559 = -(v724 * v22);
        v560 = -(v722 * v22);
        do
        {
          v561 = v723;
          v562 = v727;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v563 = bswap32(*v558) >> 16;
              }

              else
              {
                v563 = 0xFFFF;
              }

              v564 = bswap32(*v23);
              v565 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              result = HIWORD(v564) - ((v565 * HIWORD(v564) + ((v565 * HIWORD(v564)) >> 16) + 1) >> 16);
              v566 = (bswap32(~*v14) >> 16) - result + ((result | ((v563 - ((v563 * v565 + ((v563 * v565) >> 16) + 1) >> 16)) << 16)) >> 16);
              if (v566 >= 0xFFFF)
              {
                v566 = 0xFFFF;
              }

              *v14 = bswap32(~v566) >> 16;
            }

            v16 += v27;
            v567 = &v23[v27];
            v568 = &v558[v20];
            if (v567 >= v12)
            {
              v569 = v105;
            }

            else
            {
              v569 = 0;
            }

            v558 = &v568[v569];
            v23 = &v567[v569];
            v14 += v27;
            --v561;
          }

          while (v561);
          if (v719)
          {
            v570 = &v726[v724];
            if (v570 >= v719)
            {
              v571 = v560;
            }

            else
            {
              v571 = 0;
            }

            result = &v725[v722 + v571];
            if (v570 >= v719)
            {
              v572 = v559;
            }

            else
            {
              v572 = 0;
            }

            v23 = &v570[v572];
            v12 += 2 * v572 + 2 * v724;
            v725 += v722 + v571;
            v726 = v23;
            v558 = result;
          }

          else
          {
            v23 += v724;
            v558 += v722;
          }

          v16 += v721;
          v14 += v720;
          --v727;
        }

        while (v562 != 1);
      }

      return result;
    case 12:
      if (v8)
      {
        v145 = v725;
        do
        {
          v146 = v9;
          v147 = v727;
          do
          {
            if (*v16)
            {
              if (v20)
              {
                v148 = bswap32(*v145) >> 16;
              }

              else
              {
                v148 = 0xFFFF;
              }

              v149 = bswap32(*v23);
              v150 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
              v151 = HIWORD(v149) - ((v150 * HIWORD(v149) + ((v150 * HIWORD(v149)) >> 16) + 1) >> 16);
              v152 = v151 | ((v148 - ((v148 * v150 + ((v148 * v150) >> 16) + 1) >> 16)) << 16);
              v153 = (bswap32(*v14) >> 16) + v151;
              v154 = HIWORD(v152) + (bswap32(*v7) >> 16);
              if (v153 >= 0xFFFF)
              {
                v153 = 0xFFFF;
              }

              if (v154 >= 0xFFFF)
              {
                v154 = 0xFFFF;
              }

              *v14 = bswap32(v153) >> 16;
              *v7 = bswap32(v154) >> 16;
            }

            v16 += v27;
            v155 = &v23[v27];
            v156 = &v145[v20];
            if (v155 >= v12)
            {
              result = -v32;
            }

            else
            {
              result = 0;
            }

            v145 = &v156[result];
            v23 = &v155[result];
            v7 += v8;
            v14 += v27;
            --v146;
          }

          while (v146);
          if (v719)
          {
            result = v724;
            v157 = &v726[v724];
            if (v157 >= v719)
            {
              v158 = -(v722 * v35);
            }

            else
            {
              v158 = 0;
            }

            v159 = &v725[v722 + v158];
            if (v157 >= v719)
            {
              v160 = -(v724 * v35);
            }

            else
            {
              v160 = 0;
            }

            v23 = &v157[v160];
            v12 += 2 * v160 + 2 * v724;
            v725 += v722 + v158;
            v726 = v23;
            v145 = v159;
          }

          else
          {
            v23 += v724;
            v145 += v722;
          }

          v16 += v721;
          v14 += v720;
          v7 += v718;
          --v727;
        }

        while (v147 != 1);
      }

      else
      {
        do
        {
          v573 = v9;
          v574 = v16;
          v575 = v727;
          do
          {
            if (*v574)
            {
              v576 = bswap32(*v14);
              *v14 = bswap32((v576 >> 15) & 0xFFFE | ((v576 >> 16) >> 15)) >> 16;
            }

            v574 += v27;
            v14 += v27;
            --v573;
          }

          while (v573);
          v16 += v27 + v27 * (v9 - 1) + v721;
          v14 += v720;
          --v727;
        }

        while (v575 != 1);
      }

      return result;
    case 13:
      v387 = v20;
      v388 = -v32;
      v389 = v725;
      v674 = -(v722 * v22);
      v687 = -(v724 * v22);
      v390 = 2 * v8;
      v700 = -v32;
      v713 = v20;
      while (1)
      {
        v391 = v723;
        do
        {
          if (*v16)
          {
            v392 = v20 ? bswap32(*v389) >> 16 : 0xFFFF;
            v393 = bswap32(*v23);
            v394 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v395 = v392 * v394 + ((v392 * v394) >> 16) + 1;
            v396 = HIWORD(v393) - ((v394 * HIWORD(v393) + ((v394 * HIWORD(v393)) >> 16) + 1) >> 16);
            result = v396 | ((v392 - HIWORD(v395)) << 16);
            if (result >= 0x10000)
            {
              v397 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v398 = __rev16(*v7);
                  goto LABEL_540;
                }

LABEL_542:
                *v14 = bswap32(result) >> 16;
                v399 = v7;
              }

              else
              {
                v398 = 0xFFFF;
LABEL_540:
                result = PDAmultiplyPDA_8993(bswap32(*v14) >> 16, v398, v396, v397);
                v8 = v729;
                if (v729)
                {
                  v397 = WORD1(result);
                  v20 = v728;
                  v388 = v700;
                  v387 = v713;
                  goto LABEL_542;
                }

                v397 = result;
                v399 = v14;
                v20 = v728;
                v388 = v700;
                v387 = v713;
              }

              *v399 = bswap32(v397) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v400 = &v23[v34];
          if (v400 >= v12)
          {
            v401 = v388;
          }

          else
          {
            v401 = 0;
          }

          v389 += v387 + v401;
          v23 = &v400[v401];
          v7 = (v7 + v390);
          --v391;
        }

        while (v391);
        if (v719)
        {
          v402 = &v726[v724];
          v403 = v674;
          if (v402 < v719)
          {
            v403 = 0;
          }

          v389 = &v725[v722 + v403];
          v404 = v687;
          if (v402 < v719)
          {
            v404 = 0;
          }

          v23 = &v402[v404];
          v12 += 2 * v404 + 2 * v724;
          v725 += v722 + v403;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v389 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 14:
      v79 = -v32;
      v80 = v725;
      v81 = -(v724 * v35);
      v82 = -(v722 * v35);
      while (1)
      {
        v83 = v723;
        v84 = v727;
        do
        {
          if (*v16)
          {
            v85 = v20 ? bswap32(*v80) >> 16 : 0xFFFF;
            v86 = bswap32(*v23);
            v87 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v88 = HIWORD(v86) - ((v87 * HIWORD(v86) + ((v87 * HIWORD(v86)) >> 16) + 1) >> 16);
            v89 = v88 | ((v85 - ((v85 * v87 + ((v85 * v87) >> 16) + 1) >> 16)) << 16);
            if (v89 >= 0x10000)
            {
              v90 = HIWORD(v89);
              if (v8)
              {
                if (*v7)
                {
                  v91 = __rev16(*v7);
                  goto LABEL_106;
                }

LABEL_114:
                *v14 = bswap32(v89) >> 16;
                v98 = v7;
              }

              else
              {
                v91 = 0xFFFF;
LABEL_106:
                v92 = bswap32(*v14) >> 16;
                v93 = (v92 ^ 0xFFFF) * v88 - v92 + (v92 << 16);
                if (v93 <= 0xFFFE8000)
                {
                  v94 = v93 + 0x8000;
                }

                else
                {
                  v94 = 4294868992;
                }

                v95 = v94 + (v94 >> 16);
                if (v8)
                {
                  v96 = v95 >> 16;
                  v97 = 0xFFFF * (v90 + v91) - v90 * v91;
                  if (v97 <= 4294868992)
                  {
                    v90 = v97 + 0x8000;
                  }

                  else
                  {
                    v90 = 4294868992;
                  }

                  v89 = ((v90 >> 16) + v90) & 0xFFFF0000 | v96;
                  LODWORD(v90) = HIWORD(v89);
                  goto LABEL_114;
                }

                v90 = v95 >> 16;
                v98 = v14;
              }

              *v98 = bswap32(v90) >> 16;
            }
          }

          v16 += v27;
          v14 += v27;
          v99 = &v23[v27];
          v100 = &v80[v20];
          if (v99 >= v12)
          {
            result = v79;
          }

          else
          {
            result = 0;
          }

          v80 = &v100[result];
          v23 = &v99[result];
          v7 += v8;
          --v83;
        }

        while (v83);
        if (v719)
        {
          result = v724;
          v101 = &v726[v724];
          if (v101 >= v719)
          {
            v102 = v82;
          }

          else
          {
            v102 = 0;
          }

          v103 = &v725[v722 + v102];
          if (v101 >= v719)
          {
            v104 = v81;
          }

          else
          {
            v104 = 0;
          }

          v23 = &v101[v104];
          v12 += 2 * v104 + 2 * v724;
          v725 += v722 + v102;
          v726 = v23;
          v80 = v103;
        }

        else
        {
          v23 += v724;
          v80 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
        if (v84 == 1)
        {
          return result;
        }
      }

    case 15:
      v239 = v20;
      v240 = -v32;
      v241 = v725;
      v670 = -(v722 * v22);
      v683 = -(v724 * v22);
      v242 = 2 * v8;
      v696 = -v32;
      v709 = v20;
      while (1)
      {
        v243 = v723;
        do
        {
          if (*v16)
          {
            v244 = v20 ? bswap32(*v241) >> 16 : 0xFFFF;
            v245 = bswap32(*v23);
            v246 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v247 = v244 * v246 + ((v244 * v246) >> 16) + 1;
            v248 = HIWORD(v245) - ((v246 * HIWORD(v245) + ((v246 * HIWORD(v245)) >> 16) + 1) >> 16);
            result = v248 | ((v244 - HIWORD(v247)) << 16);
            if (result >= 0x10000)
            {
              v249 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v250 = __rev16(*v7);
                  goto LABEL_330;
                }

LABEL_332:
                *v14 = bswap32(result) >> 16;
                v251 = v7;
              }

              else
              {
                v250 = 0xFFFF;
LABEL_330:
                result = PDAoverlayPDA_8994(bswap32(*v14) >> 16, v250, v248, v249);
                v8 = v729;
                if (v729)
                {
                  v249 = WORD1(result);
                  v20 = v728;
                  v240 = v696;
                  v239 = v709;
                  goto LABEL_332;
                }

                v249 = result;
                v251 = v14;
                v20 = v728;
                v240 = v696;
                v239 = v709;
              }

              *v251 = bswap32(v249) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v252 = &v23[v34];
          if (v252 >= v12)
          {
            v253 = v240;
          }

          else
          {
            v253 = 0;
          }

          v241 += v239 + v253;
          v23 = &v252[v253];
          v7 = (v7 + v242);
          --v243;
        }

        while (v243);
        if (v719)
        {
          v254 = &v726[v724];
          v255 = v670;
          if (v254 < v719)
          {
            v255 = 0;
          }

          v241 = &v725[v722 + v255];
          v256 = v683;
          if (v254 < v719)
          {
            v256 = 0;
          }

          v23 = &v254[v256];
          v12 += 2 * v256 + 2 * v724;
          v725 += v722 + v255;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v241 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 16:
      v61 = v20;
      v62 = -v32;
      v63 = v725;
      v667 = -(v722 * v22);
      v680 = -(v724 * v22);
      v64 = 2 * v8;
      v693 = -v32;
      v706 = v20;
      while (1)
      {
        v65 = v723;
        do
        {
          if (*v16)
          {
            v66 = v20 ? bswap32(*v63) >> 16 : 0xFFFF;
            v67 = bswap32(*v23);
            v68 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v69 = v66 * v68 + ((v66 * v68) >> 16) + 1;
            v70 = HIWORD(v67) - ((v68 * HIWORD(v67) + ((v68 * HIWORD(v67)) >> 16) + 1) >> 16);
            result = v70 | ((v66 - HIWORD(v69)) << 16);
            if (result >= 0x10000)
            {
              v71 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v72 = __rev16(*v7);
                  goto LABEL_77;
                }

LABEL_79:
                *v14 = bswap32(result) >> 16;
                v73 = v7;
              }

              else
              {
                v72 = 0xFFFF;
LABEL_77:
                result = PDAdarkenPDA_8996(bswap32(*v14) >> 16, v72, v70, v71);
                v8 = v729;
                if (v729)
                {
                  v71 = WORD1(result);
                  v20 = v728;
                  v62 = v693;
                  v61 = v706;
                  goto LABEL_79;
                }

                v71 = result;
                v73 = v14;
                v20 = v728;
                v62 = v693;
                v61 = v706;
              }

              *v73 = bswap32(v71) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v74 = &v23[v34];
          if (v74 >= v12)
          {
            v75 = v62;
          }

          else
          {
            v75 = 0;
          }

          v63 += v61 + v75;
          v23 = &v74[v75];
          v7 = (v7 + v64);
          --v65;
        }

        while (v65);
        if (v719)
        {
          v76 = &v726[v724];
          v77 = v667;
          if (v76 < v719)
          {
            v77 = 0;
          }

          v63 = &v725[v722 + v77];
          v78 = v680;
          if (v76 < v719)
          {
            v78 = 0;
          }

          v23 = &v76[v78];
          v12 += 2 * v78 + 2 * v724;
          v725 += v722 + v77;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v63 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 17:
      v315 = v20;
      v316 = -v32;
      v317 = v725;
      v671 = -(v722 * v22);
      v684 = -(v724 * v22);
      v318 = 2 * v8;
      v697 = -v32;
      v710 = v20;
      while (1)
      {
        v319 = v723;
        do
        {
          if (*v16)
          {
            v320 = v20 ? bswap32(*v317) >> 16 : 0xFFFF;
            v321 = bswap32(*v23);
            v322 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v323 = v320 * v322 + ((v320 * v322) >> 16) + 1;
            v324 = HIWORD(v321) - ((v322 * HIWORD(v321) + ((v322 * HIWORD(v321)) >> 16) + 1) >> 16);
            result = v324 | ((v320 - HIWORD(v323)) << 16);
            if (result >= 0x10000)
            {
              v325 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v326 = __rev16(*v7);
                  goto LABEL_434;
                }

LABEL_436:
                *v14 = bswap32(result) >> 16;
                v327 = v7;
              }

              else
              {
                v326 = 0xFFFF;
LABEL_434:
                result = PDAlightenPDA_8995(bswap32(*v14) >> 16, v326, v324, v325);
                v8 = v729;
                if (v729)
                {
                  v325 = WORD1(result);
                  v20 = v728;
                  v316 = v697;
                  v315 = v710;
                  goto LABEL_436;
                }

                v325 = result;
                v327 = v14;
                v20 = v728;
                v316 = v697;
                v315 = v710;
              }

              *v327 = bswap32(v325) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v328 = &v23[v34];
          if (v328 >= v12)
          {
            v329 = v316;
          }

          else
          {
            v329 = 0;
          }

          v317 += v315 + v329;
          v23 = &v328[v329];
          v7 = (v7 + v318);
          --v319;
        }

        while (v319);
        if (v719)
        {
          v330 = &v726[v724];
          v331 = v671;
          if (v330 < v719)
          {
            v331 = 0;
          }

          v317 = &v725[v722 + v331];
          v332 = v684;
          if (v330 < v719)
          {
            v332 = 0;
          }

          v23 = &v330[v332];
          v12 += 2 * v332 + 2 * v724;
          v725 += v722 + v331;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v317 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 18:
      v423 = v20;
      v424 = -v32;
      v425 = v725;
      v675 = -(v722 * v22);
      v688 = -(v724 * v22);
      v426 = 2 * v8;
      v701 = -v32;
      v714 = v20;
      while (1)
      {
        v427 = v723;
        do
        {
          if (*v16)
          {
            v428 = v20 ? bswap32(*v425) >> 16 : 0xFFFF;
            v429 = bswap32(*v23);
            v430 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v431 = v428 * v430 + ((v428 * v430) >> 16) + 1;
            v432 = HIWORD(v429) - ((v430 * HIWORD(v429) + ((v430 * HIWORD(v429)) >> 16) + 1) >> 16);
            result = v432 | ((v428 - HIWORD(v431)) << 16);
            if (result >= 0x10000)
            {
              v433 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v434 = __rev16(*v7);
                  goto LABEL_598;
                }

LABEL_600:
                *v14 = bswap32(result) >> 16;
                v435 = v7;
              }

              else
              {
                v434 = 0xFFFF;
LABEL_598:
                result = PDAcolordodgePDA_8997(bswap32(*v14) >> 16, v434, v432, v433);
                v8 = v729;
                if (v729)
                {
                  v433 = WORD1(result);
                  v20 = v728;
                  v424 = v701;
                  v423 = v714;
                  goto LABEL_600;
                }

                v433 = result;
                v435 = v14;
                v20 = v728;
                v424 = v701;
                v423 = v714;
              }

              *v435 = bswap32(v433) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v436 = &v23[v34];
          if (v436 >= v12)
          {
            v437 = v424;
          }

          else
          {
            v437 = 0;
          }

          v425 += v423 + v437;
          v23 = &v436[v437];
          v7 = (v7 + v426);
          --v427;
        }

        while (v427);
        if (v719)
        {
          v438 = &v726[v724];
          v439 = v675;
          if (v438 < v719)
          {
            v439 = 0;
          }

          v425 = &v725[v722 + v439];
          v440 = v688;
          if (v438 < v719)
          {
            v440 = 0;
          }

          v23 = &v438[v440];
          v12 += 2 * v440 + 2 * v724;
          v725 += v722 + v439;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v425 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 19:
      v494 = v20;
      v495 = -v32;
      v496 = v725;
      v677 = -(v722 * v22);
      v690 = -(v724 * v22);
      v497 = 2 * v8;
      v703 = -v32;
      v716 = v20;
      while (1)
      {
        v498 = v723;
        do
        {
          if (*v16)
          {
            v499 = v20 ? bswap32(*v496) >> 16 : 0xFFFF;
            v500 = bswap32(*v23);
            v501 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v502 = v499 * v501 + ((v499 * v501) >> 16) + 1;
            v503 = HIWORD(v500) - ((v501 * HIWORD(v500) + ((v501 * HIWORD(v500)) >> 16) + 1) >> 16);
            result = v503 | ((v499 - HIWORD(v502)) << 16);
            if (result >= 0x10000)
            {
              v504 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v505 = __rev16(*v7);
                  goto LABEL_698;
                }

LABEL_700:
                *v14 = bswap32(result) >> 16;
                v506 = v7;
              }

              else
              {
                v505 = 0xFFFF;
LABEL_698:
                result = PDAcolorburnPDA_8998(bswap32(*v14) >> 16, v505, v503, v504);
                v8 = v729;
                if (v729)
                {
                  v504 = WORD1(result);
                  v20 = v728;
                  v495 = v703;
                  v494 = v716;
                  goto LABEL_700;
                }

                v504 = result;
                v506 = v14;
                v20 = v728;
                v495 = v703;
                v494 = v716;
              }

              *v506 = bswap32(v504) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v507 = &v23[v34];
          if (v507 >= v12)
          {
            v508 = v495;
          }

          else
          {
            v508 = 0;
          }

          v496 += v494 + v508;
          v23 = &v507[v508];
          v7 = (v7 + v497);
          --v498;
        }

        while (v498);
        if (v719)
        {
          v509 = &v726[v724];
          v510 = v677;
          if (v509 < v719)
          {
            v510 = 0;
          }

          v496 = &v725[v722 + v510];
          v511 = v690;
          if (v509 < v719)
          {
            v511 = 0;
          }

          v23 = &v509[v511];
          v12 += 2 * v511 + 2 * v724;
          v725 += v722 + v510;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v496 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 20:
      v333 = v20;
      v334 = -v32;
      v335 = v725;
      v672 = -(v722 * v22);
      v685 = -(v724 * v22);
      v336 = 2 * v8;
      v698 = -v32;
      v711 = v20;
      while (1)
      {
        v337 = v723;
        do
        {
          if (*v16)
          {
            v338 = v20 ? bswap32(*v335) >> 16 : 0xFFFF;
            v339 = bswap32(*v23);
            v340 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v341 = v338 * v340 + ((v338 * v340) >> 16) + 1;
            v342 = HIWORD(v339) - ((v340 * HIWORD(v339) + ((v340 * HIWORD(v339)) >> 16) + 1) >> 16);
            result = v342 | ((v338 - HIWORD(v341)) << 16);
            if (result >= 0x10000)
            {
              v343 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v344 = __rev16(*v7);
                  goto LABEL_463;
                }

LABEL_465:
                *v14 = bswap32(result) >> 16;
                v345 = v7;
              }

              else
              {
                v344 = 0xFFFF;
LABEL_463:
                result = PDAsoftlightPDA_9000(bswap32(*v14) >> 16, v344, v342, v343);
                v8 = v729;
                if (v729)
                {
                  v343 = WORD1(result);
                  v20 = v728;
                  v334 = v698;
                  v333 = v711;
                  goto LABEL_465;
                }

                v343 = result;
                v345 = v14;
                v20 = v728;
                v334 = v698;
                v333 = v711;
              }

              *v345 = bswap32(v343) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v346 = &v23[v34];
          if (v346 >= v12)
          {
            v347 = v334;
          }

          else
          {
            v347 = 0;
          }

          v335 += v333 + v347;
          v23 = &v346[v347];
          v7 = (v7 + v336);
          --v337;
        }

        while (v337);
        if (v719)
        {
          v348 = &v726[v724];
          v349 = v672;
          if (v348 < v719)
          {
            v349 = 0;
          }

          v335 = &v725[v722 + v349];
          v350 = v685;
          if (v348 < v719)
          {
            v350 = 0;
          }

          v23 = &v348[v350];
          v12 += 2 * v350 + 2 * v724;
          v725 += v722 + v349;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v335 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 21:
      v369 = v20;
      v370 = -v32;
      v371 = v725;
      v673 = -(v722 * v22);
      v686 = -(v724 * v22);
      v372 = 2 * v8;
      v699 = -v32;
      v712 = v20;
      while (1)
      {
        v373 = v723;
        do
        {
          if (*v16)
          {
            v374 = v20 ? bswap32(*v371) >> 16 : 0xFFFF;
            v375 = bswap32(*v23);
            v376 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v377 = v374 * v376 + ((v374 * v376) >> 16) + 1;
            v378 = HIWORD(v375) - ((v376 * HIWORD(v375) + ((v376 * HIWORD(v375)) >> 16) + 1) >> 16);
            result = v378 | ((v374 - HIWORD(v377)) << 16);
            if (result >= 0x10000)
            {
              v379 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v380 = __rev16(*v7);
                  goto LABEL_511;
                }

LABEL_513:
                *v14 = bswap32(result) >> 16;
                v381 = v7;
              }

              else
              {
                v380 = 0xFFFF;
LABEL_511:
                result = PDAhardlightPDA_8999(bswap32(*v14) >> 16, v380, v378, v379);
                v8 = v729;
                if (v729)
                {
                  v379 = WORD1(result);
                  v20 = v728;
                  v370 = v699;
                  v369 = v712;
                  goto LABEL_513;
                }

                v379 = result;
                v381 = v14;
                v20 = v728;
                v370 = v699;
                v369 = v712;
              }

              *v381 = bswap32(v379) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v382 = &v23[v34];
          if (v382 >= v12)
          {
            v383 = v370;
          }

          else
          {
            v383 = 0;
          }

          v371 += v369 + v383;
          v23 = &v382[v383];
          v7 = (v7 + v372);
          --v373;
        }

        while (v373);
        if (v719)
        {
          v384 = &v726[v724];
          v385 = v673;
          if (v384 < v719)
          {
            v385 = 0;
          }

          v371 = &v725[v722 + v385];
          v386 = v686;
          if (v384 < v719)
          {
            v386 = 0;
          }

          v23 = &v384[v386];
          v12 += 2 * v386 + 2 * v724;
          v725 += v722 + v385;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v371 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 22:
      v476 = v20;
      v477 = -v32;
      v478 = v725;
      v676 = -(v722 * v22);
      v689 = -(v724 * v22);
      v479 = 2 * v8;
      v702 = -v32;
      v715 = v20;
      while (1)
      {
        v480 = v723;
        do
        {
          if (*v16)
          {
            v481 = v20 ? bswap32(*v478) >> 16 : 0xFFFF;
            v482 = bswap32(*v23);
            v483 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v484 = v481 * v483 + ((v481 * v483) >> 16) + 1;
            v485 = HIWORD(v482) - ((v483 * HIWORD(v482) + ((v483 * HIWORD(v482)) >> 16) + 1) >> 16);
            result = v485 | ((v481 - HIWORD(v484)) << 16);
            if (result >= 0x10000)
            {
              v486 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v487 = __rev16(*v7);
                  goto LABEL_669;
                }

LABEL_671:
                *v14 = bswap32(result) >> 16;
                v488 = v7;
              }

              else
              {
                v487 = 0xFFFF;
LABEL_669:
                result = PDAdifferencePDA_9001(bswap32(*v14) >> 16, v487, v485, v486);
                v8 = v729;
                if (v729)
                {
                  v486 = WORD1(result);
                  v20 = v728;
                  v477 = v702;
                  v476 = v715;
                  goto LABEL_671;
                }

                v486 = result;
                v488 = v14;
                v20 = v728;
                v477 = v702;
                v476 = v715;
              }

              *v488 = bswap32(v486) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v489 = &v23[v34];
          if (v489 >= v12)
          {
            v490 = v477;
          }

          else
          {
            v490 = 0;
          }

          v478 += v476 + v490;
          v23 = &v489[v490];
          v7 = (v7 + v479);
          --v480;
        }

        while (v480);
        if (v719)
        {
          v491 = &v726[v724];
          v492 = v676;
          if (v491 < v719)
          {
            v492 = 0;
          }

          v478 = &v725[v722 + v492];
          v493 = v689;
          if (v491 < v719)
          {
            v493 = 0;
          }

          v23 = &v491[v493];
          v12 += 2 * v493 + 2 * v724;
          v725 += v722 + v492;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v478 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 23:
      v512 = -v32;
      v513 = v725;
      v514 = -(v724 * v35);
      v515 = -(v722 * v35);
      while (1)
      {
        v516 = v723;
        v517 = v727;
        do
        {
          if (*v16)
          {
            v518 = v20 ? bswap32(*v513) >> 16 : 0xFFFF;
            v519 = bswap32(*v23);
            v520 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v521 = HIWORD(v519) - ((v520 * HIWORD(v519) + ((v520 * HIWORD(v519)) >> 16) + 1) >> 16);
            v522 = v521 | ((v518 - ((v518 * v520 + ((v518 * v520) >> 16) + 1) >> 16)) << 16);
            if (v522 >= 0x10000)
            {
              LODWORD(v523) = HIWORD(v522);
              if (v8)
              {
                if (*v7)
                {
                  v524 = __rev16(*v7);
                  goto LABEL_727;
                }

LABEL_741:
                *v14 = bswap32(v522) >> 16;
                v533 = v7;
              }

              else
              {
                v524 = 0xFFFF;
LABEL_727:
                v525 = bswap32(*v14) >> 16;
                if (v521 >= HIWORD(v522))
                {
                  v526 = v523;
                }

                else
                {
                  v526 = v521;
                }

                if (v525 >= v524)
                {
                  v527 = v524;
                }

                else
                {
                  v527 = v525;
                }

                v528 = 0xFFFF * (v527 + v526) - 2 * v526 * v527;
                if (v528 <= 4294868992)
                {
                  v529 = v528 + 0x8000;
                }

                else
                {
                  v529 = 4294868992;
                }

                v530 = v529 + (v529 >> 16);
                if (v8)
                {
                  v531 = v530 >> 16;
                  v532 = 0xFFFF * (v524 + v523) - v524 * v523;
                  if (v532 <= 4294868992)
                  {
                    v523 = v532 + 0x8000;
                  }

                  else
                  {
                    v523 = 4294868992;
                  }

                  v522 = ((v523 >> 16) + v523) & 0xFFFF0000 | v531;
                  LODWORD(v523) = HIWORD(v522);
                  goto LABEL_741;
                }

                v523 = v530 >> 16;
                v533 = v14;
              }

              *v533 = bswap32(v523) >> 16;
            }
          }

          v16 += v27;
          v14 += v27;
          v534 = &v23[v27];
          v535 = &v513[v20];
          if (v534 >= v12)
          {
            result = v512;
          }

          else
          {
            result = 0;
          }

          v513 = &v535[result];
          v23 = &v534[result];
          v7 += v8;
          --v516;
        }

        while (v516);
        if (v719)
        {
          result = v724;
          v536 = &v726[v724];
          if (v536 >= v719)
          {
            v537 = v515;
          }

          else
          {
            v537 = 0;
          }

          v538 = &v725[v722 + v537];
          if (v536 >= v719)
          {
            v539 = v514;
          }

          else
          {
            v539 = 0;
          }

          v23 = &v536[v539];
          v12 += 2 * v539 + 2 * v724;
          v725 += v722 + v537;
          v726 = v23;
          v513 = v538;
        }

        else
        {
          v23 += v724;
          v513 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        --v727;
        if (v517 == 1)
        {
          return result;
        }
      }

    case 24:
      v197 = v20;
      v198 = -v32;
      v199 = v725;
      v669 = -(v722 * v22);
      v682 = -(v724 * v22);
      v200 = 2 * v8;
      v695 = -v32;
      v708 = v20;
      while (1)
      {
        v201 = v723;
        do
        {
          if (*v16)
          {
            v202 = v20 ? bswap32(*v199) >> 16 : 0xFFFF;
            v203 = bswap32(*v23);
            v204 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v205 = v202 * v204 + ((v202 * v204) >> 16) + 1;
            v206 = HIWORD(v203) - ((v204 * HIWORD(v203) + ((v204 * HIWORD(v203)) >> 16) + 1) >> 16);
            result = v206 | ((v202 - HIWORD(v205)) << 16);
            if (result >= 0x10000)
            {
              v207 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v208 = __rev16(*v7);
                  goto LABEL_273;
                }

LABEL_275:
                *v14 = bswap32(result) >> 16;
                v209 = v7;
              }

              else
              {
                v208 = 0xFFFF;
LABEL_273:
                result = PDAhuePDA_9002(bswap32(*v14) >> 16, v208, v206, v207);
                v8 = v729;
                if (v729)
                {
                  v207 = WORD1(result);
                  v20 = v728;
                  v198 = v695;
                  v197 = v708;
                  goto LABEL_275;
                }

                v207 = result;
                v209 = v14;
                v20 = v728;
                v198 = v695;
                v197 = v708;
              }

              *v209 = bswap32(v207) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v210 = &v23[v34];
          if (v210 >= v12)
          {
            v211 = v198;
          }

          else
          {
            v211 = 0;
          }

          v199 += v197 + v211;
          v23 = &v210[v211];
          v7 = (v7 + v200);
          --v201;
        }

        while (v201);
        if (v719)
        {
          v212 = &v726[v724];
          v213 = v669;
          if (v212 < v719)
          {
            v213 = 0;
          }

          v199 = &v725[v722 + v213];
          v214 = v682;
          if (v212 < v719)
          {
            v214 = 0;
          }

          v23 = &v212[v214];
          v12 += 2 * v214 + 2 * v724;
          v725 += v722 + v213;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v199 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 25:
      v179 = v20;
      v180 = -v32;
      v181 = v725;
      v668 = -(v722 * v22);
      v681 = -(v724 * v22);
      v182 = 2 * v8;
      v694 = -v32;
      v707 = v20;
      while (1)
      {
        v183 = v723;
        do
        {
          if (*v16)
          {
            v184 = v20 ? bswap32(*v181) >> 16 : 0xFFFF;
            v185 = bswap32(*v23);
            v186 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v187 = v184 * v186 + ((v184 * v186) >> 16) + 1;
            v188 = HIWORD(v185) - ((v186 * HIWORD(v185) + ((v186 * HIWORD(v185)) >> 16) + 1) >> 16);
            result = v188 | ((v184 - HIWORD(v187)) << 16);
            if (result >= 0x10000)
            {
              v189 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v190 = __rev16(*v7);
                  goto LABEL_244;
                }

LABEL_246:
                *v14 = bswap32(result) >> 16;
                v191 = v7;
              }

              else
              {
                v190 = 0xFFFF;
LABEL_244:
                result = PDAhuePDA_9002(bswap32(*v14) >> 16, v190, v188, v189);
                v8 = v729;
                if (v729)
                {
                  v189 = WORD1(result);
                  v20 = v728;
                  v180 = v694;
                  v179 = v707;
                  goto LABEL_246;
                }

                v189 = result;
                v191 = v14;
                v20 = v728;
                v180 = v694;
                v179 = v707;
              }

              *v191 = bswap32(v189) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v192 = &v23[v34];
          if (v192 >= v12)
          {
            v193 = v180;
          }

          else
          {
            v193 = 0;
          }

          v181 += v179 + v193;
          v23 = &v192[v193];
          v7 = (v7 + v182);
          --v183;
        }

        while (v183);
        if (v719)
        {
          v194 = &v726[v724];
          v195 = v668;
          if (v194 < v719)
          {
            v195 = 0;
          }

          v181 = &v725[v722 + v195];
          v196 = v681;
          if (v194 < v719)
          {
            v196 = 0;
          }

          v23 = &v194[v196];
          v12 += 2 * v196 + 2 * v724;
          v725 += v722 + v195;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v181 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 26:
      v540 = v20;
      v541 = -v32;
      v542 = v725;
      v678 = -(v722 * v22);
      v691 = -(v724 * v22);
      v543 = 2 * v8;
      v704 = -v32;
      v717 = v20;
      while (1)
      {
        v544 = v723;
        do
        {
          if (*v16)
          {
            v545 = v20 ? bswap32(*v542) >> 16 : 0xFFFF;
            v546 = bswap32(*v23);
            v547 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
            v548 = v545 * v547 + ((v545 * v547) >> 16) + 1;
            v549 = HIWORD(v546) - ((v547 * HIWORD(v546) + ((v547 * HIWORD(v546)) >> 16) + 1) >> 16);
            result = v549 | ((v545 - HIWORD(v548)) << 16);
            if (result >= 0x10000)
            {
              v550 = WORD1(result);
              if (v8)
              {
                if (*v7)
                {
                  v551 = __rev16(*v7);
                  goto LABEL_770;
                }

LABEL_772:
                *v14 = bswap32(result) >> 16;
                v552 = v7;
              }

              else
              {
                v551 = 0xFFFF;
LABEL_770:
                result = PDAluminosityPDA_9004(v549, v550, bswap32(*v14) >> 16, v551);
                v8 = v729;
                if (v729)
                {
                  v550 = WORD1(result);
                  v20 = v728;
                  v541 = v704;
                  v540 = v717;
                  goto LABEL_772;
                }

                v550 = result;
                v552 = v14;
                v20 = v728;
                v541 = v704;
                v540 = v717;
              }

              *v552 = bswap32(v550) >> 16;
            }
          }

          v16 += v34;
          v14 += v34;
          v553 = &v23[v34];
          if (v553 >= v12)
          {
            v554 = v541;
          }

          else
          {
            v554 = 0;
          }

          v542 += v540 + v554;
          v23 = &v553[v554];
          v7 = (v7 + v543);
          --v544;
        }

        while (v544);
        if (v719)
        {
          v555 = &v726[v724];
          v556 = v678;
          if (v555 < v719)
          {
            v556 = 0;
          }

          v542 = &v725[v722 + v556];
          v557 = v691;
          if (v555 < v719)
          {
            v557 = 0;
          }

          v23 = &v555[v557];
          v12 += 2 * v557 + 2 * v724;
          v725 += v722 + v556;
          v726 = v23;
        }

        else
        {
          v23 += v724;
          v542 += v722;
        }

        v16 += v721;
        v14 += v720;
        v7 += v718;
        if (!--v727)
        {
          return result;
        }
      }

    case 27:
      v43 = v20;
      v44 = -v32;
      v45 = v725;
      v666 = -(v722 * v22);
      v679 = -(v724 * v22);
      v46 = 2 * v8;
      v692 = -v32;
      v705 = v20;
      break;
    default:
      return result;
  }

  do
  {
    v47 = v723;
    do
    {
      if (*v16)
      {
        v48 = v20 ? bswap32(*v45) >> 16 : 0xFFFF;
        v49 = bswap32(*v23);
        v50 = (*v16 | (*v16 << 8)) ^ 0xFFFF;
        v51 = v48 * v50 + ((v48 * v50) >> 16) + 1;
        v52 = HIWORD(v49) - ((v50 * HIWORD(v49) + ((v50 * HIWORD(v49)) >> 16) + 1) >> 16);
        result = v52 | ((v48 - HIWORD(v51)) << 16);
        if (result >= 0x10000)
        {
          v53 = WORD1(result);
          if (v8)
          {
            if (!*v7)
            {
              goto LABEL_50;
            }

            v54 = __rev16(*v7);
          }

          else
          {
            v54 = 0xFFFF;
          }

          result = PDAluminosityPDA_9004(bswap32(*v14) >> 16, v54, v52, v53);
          v8 = v729;
          if (!v729)
          {
            v53 = result;
            v55 = v14;
            v20 = v728;
            v44 = v692;
            v43 = v705;
            goto LABEL_52;
          }

          v53 = WORD1(result);
          v20 = v728;
          v44 = v692;
          v43 = v705;
LABEL_50:
          *v14 = bswap32(result) >> 16;
          v55 = v7;
LABEL_52:
          *v55 = bswap32(v53) >> 16;
        }
      }

      v16 += v34;
      v14 += v34;
      v56 = &v23[v34];
      if (v56 >= v12)
      {
        v57 = v44;
      }

      else
      {
        v57 = 0;
      }

      v45 += v43 + v57;
      v23 = &v56[v57];
      v7 = (v7 + v46);
      --v47;
    }

    while (v47);
    if (v719)
    {
      v58 = &v726[v724];
      v59 = v666;
      if (v58 < v719)
      {
        v59 = 0;
      }

      v45 = &v725[v722 + v59];
      v60 = v679;
      if (v58 < v719)
      {
        v60 = 0;
      }

      v23 = &v58[v60];
      v12 += 2 * v60 + 2 * v724;
      v725 += v722 + v59;
      v726 = v23;
    }

    else
    {
      v23 += v724;
      v45 += v722;
    }

    v16 += v721;
    v14 += v720;
    v7 += v718;
    --v727;
  }

  while (v727);
  return result;
}

_DWORD *W16_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_9008(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CBA0;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = bswap32(v8 | (v8 << 16));
    *(a2 + 4) = a2 + 12;
    if (HIWORD(v8) == 0xFFFF)
    {
      *(a2 + 5) = 0;
    }

    else
    {
      a2[13] = bswap32(v8 & 0xFFFF0000 | HIWORD(v8));
      *(a2 + 5) = a2 + 13;
    }
  }

  return a2;
}

uint64_t CGImageTextureDataGetTypeID()
{
  if (_block_invoke_once_9015 != -1)
  {
    dispatch_once(&_block_invoke_once_9015, &__block_literal_global_33);
  }

  return CGImageTextureDataGetTypeID_texture_data_type_id;
}

CFTypeRef CGImageTextureDataRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGImageTextureDataRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGImageTextureDataGetPixelFormat(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v2 = 112;
    }

    else
    {
      v2 = 104;
    }

    return *(result + v2);
  }

  return result;
}

uint64_t CGImageTextureDataGetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t CGImageTextureDataIsCompressed(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 136);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGImageTextureDataSupportsTiledLayout(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 137);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGImageTextureDataGetNumberOfMipmaps(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t CGImageTextureDataGetNumberOfFaces(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

void CGImageTextureDataSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    if (!*(a1 + 64))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 64), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(a1 + 64);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

const void *CGImageTextureDataGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 64)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CGImageIOSurfaceSetCreate(uint64_t a1, CFTypeRef cf, uint64_t a3, _DWORD *a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  Instance = 0;
  if (a1 && cf)
  {
    v21 = CFGetTypeID(cf);
    if (v21 != CFArrayGetTypeID() || a4 && *a4)
    {
      return 0;
    }

    Instance = 0;
    if (a5 <= 0.0 || a6 <= 0.0)
    {
      return Instance;
    }

    if (a5 != a5)
    {
      return 0;
    }

    if (a6 != a6)
    {
      return 0;
    }

    v29.origin.x = a7;
    v29.origin.y = a8;
    v29.size.width = a9;
    v29.size.height = a10;
    v31 = CGRectIntegral(v29);
    v30.origin.x = a7;
    v30.origin.y = a8;
    v30.size.width = a9;
    v30.size.height = a10;
    if (!CGRectEqualToRect(v30, v31))
    {
      return 0;
    }

    if (_block_invoke_once_9051 != -1)
    {
      dispatch_once(&_block_invoke_once_9051, &__block_literal_global_5_9052);
    }

    Instance = CGTypeCreateInstance(CGImageIOSurfaceSetGetTypeID_iosurfaceset_type_id, 120, v22, v23, v24, v25, v26, v27);
    if (Instance)
    {
      CFRetain(a1);
      *(Instance + 16) = a1;
      *(Instance + 24) = a5;
      *(Instance + 32) = a6;
      *(Instance + 40) = a7;
      *(Instance + 48) = a8;
      *(Instance + 56) = a9;
      *(Instance + 64) = a10;
      *(Instance + 72) = *(a1 + 32);
      *(Instance + 80) = *(a1 + 48);
      *(Instance + 88) = CGImageProviderGetColorSpace(a1);
      *(Instance + 96) = 0;
      *(Instance + 104) = a3;
      if (a4)
      {
        *(Instance + 112) = *a4;
      }

      else
      {
        *(Instance + 112) = 0;
        *(Instance + 120) = 0;
      }

      *(Instance + 128) = CFArrayCreateCopy(0, cf);
    }
  }

  return Instance;
}

uint64_t __CGImageIOSurfaceSetGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGImageIOSurfaceSetGetTypeID_class);
  CGImageIOSurfaceSetGetTypeID_iosurfaceset_type_id = result;
  return result;
}

void image_iosurfaceset_finalize(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v2(*(a1 + 104));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  CGColorSpaceRelease(*(a1 + 88));
  v4 = *(a1 + 96);

  CGPropertiesRelease(v4);
}

uint64_t CGImageIOSurfaceSetGetTypeID()
{
  if (_block_invoke_once_9051 != -1)
  {
    dispatch_once(&_block_invoke_once_9051, &__block_literal_global_5_9052);
  }

  return CGImageIOSurfaceSetGetTypeID_iosurfaceset_type_id;
}

CFTypeRef CGImageIOSurfaceSetRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGImageIOSurfaceSetRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGImageIOSurfaceSetGetComponentType(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t CGImageIOSurfaceSetGetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t CGImageIOSurfaceSetGetPixelSize(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

CGFloat CGImageIOSurfaceSetGetSize(uint64_t a1)
{
  v1 = (a1 + 24);
  if (!a1)
  {
    v1 = &CGSizeZero;
  }

  return v1->width;
}

CGFloat CGImageIOSurfaceSetGetRect(uint64_t a1)
{
  v1 = &CGRectZero;
  if (a1)
  {
    v1 = (a1 + 40);
  }

  return v1->origin.x;
}

CFIndex CGImageIOSurfaceSetGetCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 128));
  }

  return result;
}

const void *CGImageSurfaceSetGetIOSurface(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 128));
  if ((Count & 0x8000000000000000) != 0 || Count <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 128);

  return CFArrayGetValueAtIndex(v5, a2);
}

void CGImageIOSurfaceSetSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    if (!*(a1 + 96))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 96), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(a1 + 96);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

const void *CGImageIOSurfaceSetGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 96)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

void CGGlyphLockRelease(CFTypeRef **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CGGlyphBuilderUnlockBitmaps(v2);
      CGGlyphBuilderRelease(*a1);
    }

    free(a1);
  }
}

unint64_t *scan(void **a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  v9 = v2;
  if (!v2)
  {
    return v9;
  }

  v23 = 0uLL;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  while (1)
  {
    v10 = type4_lexer_scan(a1, &v23, v3, v4, v5, v6, v7, v8);
    if (v10 == 123)
    {
      v11 = scan(a1);
      if (!v11)
      {
        goto LABEL_25;
      }

      LODWORD(v23) = 259;
      *(&v23 + 1) = v11;
      goto LABEL_9;
    }

    if (v10 == 125)
    {
      break;
    }

    if (v10 == -1)
    {
      pdf_error("EOF encountered before end of Type4 function.");
LABEL_25:
      type4_program_release(v9);
      return 0;
    }

LABEL_9:
    v12 = *v9;
    if (*v9 == v9[1])
    {
      v13 = 2 * v12 + 24;
      v9[1] = v13;
      v14 = malloc_type_realloc(v9[2], 16 * v13, 0x10A204033A3C712uLL);
      v9[2] = v14;
      v12 = *v9;
    }

    else
    {
      v14 = v9[2];
    }

    *v9 = v12 + 1;
    v14[v12] = v23;
  }

  v24 = 0;
  v15 = *v9;
  while (v15)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v9[2];
    do
    {
      v19 = v18 + 16 * v15++;
      *v19 = *(v18 + 16 * v16);
      v20 = off_1EF242600;
      v21 = 18;
      while (*(v19 + 8) != *(v20 - 1) || !(*v20)(v19, v15, &v24))
      {
        v20 += 2;
        if (!--v21)
        {
          goto LABEL_22;
        }
      }

      v15 += v24;
      v17 = 1;
LABEL_22:
      ++v16;
    }

    while (v16 < *v9);
    *v9 = v15;
    if ((v17 & 1) == 0)
    {
      return v9;
    }
  }

  *v9 = 0;
  return v9;
}

void type4_program_release(unint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = a1[2];
        if (*(v5 + v3) == 259)
        {
          type4_program_release(*(v5 + v3 + 8));
          v2 = *a1;
        }

        ++v4;
        v3 += 16;
      }

      while (v4 < v2);
    }

    free(a1[2]);

    free(a1);
  }
}

uint64_t type4_program_execute(unint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1[2];
  v6 = a2 + 2;
  while (1)
  {
    if (*v5 == 260)
    {
      if (((*(v5 + 8))(a2) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v7 = *a2;
    if (*a2 == 200)
    {
      break;
    }

    *a2 = v7 + 1;
    *&v6[2 * v7] = *v5;
LABEL_8:
    ++v4;
    v5 += 16;
    if (v4 >= *a1)
    {
      return 1;
    }
  }

  result = 0;
  *(a2 + 804) = 3;
  return result;
}

uint64_t get_program_string_length(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 3;
  }

  v2 = (a1[2] + 8);
  v3 = 2;
  do
  {
    v4 = *(v2 - 2);
    if (v4 > 258)
    {
      if (v4 == 259)
      {
        v7 = get_program_string_length(*v2) + v3;
      }

      else
      {
        v6 = v4 == 260;
        v7 = v3 + 8;
        if (!v6)
        {
          v7 = v3;
        }
      }
    }

    else
    {
      v5 = v4 - 257;
      v6 = v4 == 256;
      v7 = v3 + 5;
      if (!v6)
      {
        v7 = v3;
      }

      if (v5 < 2)
      {
        v7 = v3 + 16;
      }
    }

    v3 = v7 + 1;
    v2 += 2;
    --v1;
  }

  while (v1);
  return v7 + 2;
}

uint64_t print_program(char *a1, void *a2)
{
  strcpy(a1, "{ ");
  if (*a2)
  {
    v4 = 0;
    v5 = 2;
    while (1)
    {
      v6 = a2[2] + 16 * v4;
      v7 = *v6;
      if (*v6 <= 257)
      {
        if (v7 == 256)
        {
          goto LABEL_22;
        }

        if (v7 == 257)
        {
          goto LABEL_23;
        }
      }

      else
      {
        switch(v7)
        {
          case 258:
            v11 = *(v6 + 8);
            v12 = fabs(v11);
            if (v12 == INFINITY)
            {
              goto LABEL_23;
            }

            if (v11 < -2147483650.0 || v11 > 2147483650.0)
            {
              goto LABEL_27;
            }

            v13 = ceil(v11 + -0.5);
            v14 = floor(v11 + 0.5);
            if (v11 >= 0.0)
            {
              v13 = v14;
            }

            if (vabdd_f64(v11, v13) < 0.000001)
            {
LABEL_23:
              v15 = sprintf(&a1[v5], "%d");
            }

            else
            {
LABEL_27:
              if (v12 >= 1.0)
              {
                if (v12 <= 10000000.0)
                {
                  v15 = sprintf(&a1[v5], "%0.7g");
                }

                else
                {
                  v15 = sprintf(&a1[v5], "%0.0f");
                }
              }

              else if (v12 >= 0.000001)
              {
                if (v12 >= 0.0001)
                {
                  v15 = sprintf(&a1[v5], "%0.06g");
                }

                else
                {
                  v15 = sprintf(&a1[v5], "%0.06f");
                }
              }

              else
              {
                *&a1[v5] = 48;
                v15 = 1;
              }
            }

LABEL_24:
            v5 += v15;
            break;
          case 259:
            v5 += print_program(&a1[v5], *(v6 + 8));
            break;
          case 260:
            v8 = *(v6 + 8);
            v9 = &wordlist;
            v10 = 48;
            do
            {
              if (v9[1] == v8)
              {
                break;
              }

              v9 += 2;
              --v10;
            }

            while (v10);
LABEL_22:
            v15 = sprintf(&a1[v5], "%s");
            goto LABEL_24;
        }
      }

      *&a1[v5++] = 32;
      if (++v4 >= *a2)
      {
        goto LABEL_37;
      }
    }
  }

  v5 = 2;
LABEL_37:
  *&a1[v5] = 125;
  return v5 + 1;
}

void startIndent(__CFString *a1, int *a2)
{
  CFStringAppend(a1, @"\n");
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      do
      {
        --v4;
        CFStringAppend(a1, @"\t");
      }

      while (v4);
      v5 = *a2 + 1;
    }

    else
    {
      v5 = 1;
    }

    *a2 = v5;
  }
}

void startTagWithAttributes(__CFString *a1, const __CFString *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  CFStringAppend(a1, @"<");
  CFStringAppend(a1, a2);
  v17 = &a10;
  for (i = a9; i; i = *v16)
  {
    v14 = v17;
    v18 = v17 + 1;
    v15 = *v14;
    if (!v15)
    {
      break;
    }

    CFStringAppendFormat(a1, 0, @" %@=%@", i, v15);
    v16 = v18;
    v17 = v18 + 1;
  }

  if (a3)
  {
    CFStringAppend(a1, @"/");
  }

  CFStringAppend(a1, @">");
}

void startTag(__CFString *a1, const __CFString *a2, int a3)
{
  CFStringAppend(a1, @"<");
  CFStringAppend(a1, a2);
  if (a3)
  {
    CFStringAppend(a1, @"/");
  }

  CFStringAppend(a1, @">");
}

CFMutableStringRef CGPDFCopyStringEscapingElementMarkup(__CFString *theString)
{
  MutableCopy = theString;
  if (!theString)
  {
    return MutableCopy;
  }

  if (CFStringFind(theString, @"&", 0).location != -1 || CFStringFind(MutableCopy, @"<", 0).location != -1 || CFStringFind(MutableCopy, @">", 0).location != -1)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
    v4.length = CFStringGetLength(MutableCopy);
    v4.location = 0;
    CFStringFindAndReplace(MutableCopy, @"&", @"&amp;", v4, 0);
    v5.length = CFStringGetLength(MutableCopy);
    v5.location = 0;
    CFStringFindAndReplace(MutableCopy, @"<", @"&lt;", v5, 0);
    v6.length = CFStringGetLength(MutableCopy);
    v6.location = 0;
    CFStringFindAndReplace(MutableCopy, @">", @"&gt;", v6, 0);
    return MutableCopy;
  }

  return CFRetain(MutableCopy);
}

void endIndent(__CFString *a1, int *a2)
{
  CFStringAppend(a1, @"\n");
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = v4 - 1;
      *a2 = v4 - 1;
      if (v4 != 1)
      {
        do
        {
          --v5;
          CFStringAppend(a1, @"\t");
        }

        while (v5);
      }
    }
  }
}

uint64_t mapPageToHTML(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OverlappingRange = findOverlappingRange(a2, a3);
  if (OverlappingRange <= 0)
  {
    if (OverlappingRange < 0)
    {
      return 0;
    }

    v6 = *(a3 + 56);
    v7 = *a3;
    if (*a3)
    {
      v7 = *(v7 + 16);
      if (v7)
      {
        v7 = *(*(v7 + 40) + 8);
      }
    }

    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Page %u", v7);
    startIndent(v6, (a3 + 64));
    startTagWithAttributes(v6, @"div", 0, v9, v10, v11, v12, v13, @"class", @"page");
    CFRelease(v8);
    v14 = *(a3 + 72);
    if (v14 == a2)
    {
      CGPDFNodeMapByType(a2, &htmlFuncArray);
    }

    else
    {
      if (v14)
      {
        v15 = *v14;
      }

      else
      {
        v15 = 0;
      }

      v17 = 1;
      while (kCGPDFNodeTypeOrder[v17] != v15)
      {
        if (++v17 == 12)
        {
          v18 = 0;
          goto LABEL_17;
        }
      }

      v18 = v17;
LABEL_17:
      (*(&htmlFuncArray + v18))(0);
    }

    endIndent(v6, (a3 + 64));
    CFStringAppendFormat(v6, 0, @"</%@>", @"div");
  }

  return 1;
}

uint64_t findOverlappingRange(uint64_t a1, uint64_t *a2)
{
  TextRange = CGPDFNodeGetTextRange(a1);
  v5 = v4;
  v6 = a2[1];
  if (v6)
  {
    if (*(v6 + 40))
    {
      CPIndexSetNormalize(a2[1]);
    }

    v6 = *(v6 + 16);
  }

  v7 = a2[3];
  v8 = a2[4];
  v9 = v7 + v8;
  v10 = v8 <= 0;
  if (v8 <= 0)
  {
    v11 = v7 + v8;
  }

  else
  {
    v11 = a2[3];
  }

  if (!v10)
  {
    v7 = v9;
  }

  v12 = TextRange + v5;
  v13 = v5 <= 0;
  if (v5 <= 0)
  {
    v14 = TextRange + v5;
  }

  else
  {
    v14 = TextRange;
  }

  if (!v13)
  {
    TextRange = v12;
  }

  v15 = TextRange <= v11;
  if (v7 <= v14)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = v15;
  }

  if (v7 <= v14)
  {
    v17 = a2[2] + 1;
    if (v17 < v6)
    {
      while (1)
      {
        v18 = a2[1];
        a2[2] = v17;
        Range = CPIndexSetGetRange(v18, v17);
        a2[3] = Range;
        a2[4] = v20;
        v21 = Range + v20;
        v22 = v20 <= 0 ? Range : Range + v20;
        if (v22 > v14)
        {
          break;
        }

        v17 = a2[2] + 1;
        if (v17 >= v6)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (v20 > 0)
      {
        v21 = Range;
      }

      return TextRange <= v21;
    }
  }

  return result;
}

uint64_t mapSectionToHTML(int a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (*(a3 + 72))
    {
LABEL_20:
      v21 = 0;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ((*(a2 + 1) & 4) != 0)
  {
    v5 = *(a2 + 104);
    if (v5)
    {
      v6 = *v5;
      if (v6 == 3)
      {
        OverlappingRange = findOverlappingRange(a2, a3);
        if (OverlappingRange <= 0)
        {
          if ((OverlappingRange & 0x80000000) == 0)
          {
            v8 = *(a3 + 56);
            v9 = *MEMORY[0x1E695E480];
            Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
            CFStringAppend(Mutable, @"border-collapse: collapse");
            if (*(a3 + 72) == a2)
            {
              BackgroundColor = CGPDFNodeGetBackgroundColor(a2);
            }

            else
            {
              v17 = a2;
              while (1)
              {
                if (*v17 == 1538)
                {
                  v18 = *(v17 + 104);
                  if (v18)
                  {
                    if (*v18 == 3)
                    {
                      break;
                    }
                  }
                }

                v17 = *(v17 + 8);
                if (!v17)
                {
                  BackgroundColor = 0;
                  goto LABEL_125;
                }
              }

              BackgroundColor = *(v18 + 48);
            }

LABEL_125:
            v113 = CGPDFCreateColorValueCSS(BackgroundColor, 1, v11, v12, v13, v14, v15, v16);
            if (v113)
            {
              v114 = v113;
              CFStringAppend(Mutable, @"; background-color: ");
              CFStringAppend(Mutable, v114);
              CFRelease(v114);
            }

            startIndent(v8, (a3 + 64));
            startTagWithAttributes(v8, @"table", 0, v115, v116, v117, v118, v119, @"style", Mutable);
            CFRelease(Mutable);
            v120 = a2;
            while (1)
            {
              if (*v120 == 1538)
              {
                v121 = *(v120 + 104);
                if (v121)
                {
                  if (*v121 == 3)
                  {
                    break;
                  }
                }
              }

              v120 = *(v120 + 8);
              if (!v120)
              {
                goto LABEL_132;
              }
            }

            v122 = v121[4];
            if (v122 >= 2)
            {
              v136 = malloc_type_calloc((v122 + 1), 8uLL, 0x100004000313F17uLL);
              if (CGPDFNodeGetTableColumnDividerPositions(a2, v136))
              {
                v123 = 100.0 / (v136[v122] - *v136);
                v124 = v136 + 1;
                do
                {
                  v125 = CFStringCreateWithFormat(v9, 0, @"width: %f%%", v123 * (*v124 - *(v124 - 1)));
                  startTagWithAttributes(v8, @"col", 1, v126, v127, v128, v129, v130, @"style", v125);
                  CFRelease(v125);
                  ++v124;
                  --v122;
                }

                while (v122);
              }

              free(v136);
            }

LABEL_132:
            CGPDFNodeMapByType(a2, &htmlFuncArray);
            endIndent(v8, (a3 + 64));
            CFStringAppendFormat(v8, 0, @"</%@>", @"table");
            return 1;
          }

          return 0;
        }

        return 1;
      }

      if (*(a3 + 72) != a2)
      {
        if (v6 == 2)
        {
          TableCellRowSpan = CGPDFNodeGetTableCellRowSpan(a2);
          v25 = v24;
          TableCellColumnSpan = CGPDFNodeGetTableCellColumnSpan(a2);
          v132 = v26;
          v27 = *(a2 + 8);
          if (v27 && (*(v27 + 1) & 2) != 0)
          {
            v28 = *(v27 + 44);
          }

          else
          {
            v28 = 0;
          }

          v52 = a1 + 1;
          if (a1)
          {
            if (TableCellRowSpan != 0x7FFFFFFFFFFFFFFFLL || v25)
            {
              if (v27 && (*(v27 + 1) & 2) != 0 && *(v27 + 44) > (a1 - 1))
              {
                v54 = *(*(v27 + 56) + 8 * (a1 - 1));
              }

              else
              {
                v54 = 0;
              }

              v55 = CGPDFNodeGetTableCellRowSpan(v54);
              v53 = (v55 != 0x7FFFFFFFFFFFFFFFLL || v56 != 0) && v55 < TableCellRowSpan;
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 1;
          }

          if (v52 >= v28)
          {
            v59 = 1;
          }

          else
          {
            if (TableCellRowSpan == 0x7FFFFFFFFFFFFFFFLL && !v25)
            {
              v133 = 0;
              goto LABEL_83;
            }

            if (v27 && (*(v27 + 1) & 2) != 0 && *(v27 + 44) > v52)
            {
              v60 = *(*(v27 + 56) + 8 * v52);
            }

            else
            {
              v60 = 0;
            }

            v61 = CGPDFNodeGetTableCellRowSpan(v60);
            v59 = (v61 != 0x7FFFFFFFFFFFFFFFLL || v62 != 0) && TableCellRowSpan < v61;
          }

          v133 = v59;
LABEL_83:
          v134 = TableCellRowSpan;
          v65 = *(a3 + 56);
          if (v53)
          {
            startIndent(*(a3 + 56), (a3 + 64));
            startTag(v65, @"tr", 0);
          }

          v66 = *MEMORY[0x1E695E480];
          v67 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
          CFStringAppend(v67, @"border-style: solid");
          v74 = a2;
          while (1)
          {
            if (*v74 == 1538)
            {
              v75 = *(v74 + 104);
              if (v75)
              {
                if (*v75 == 2)
                {
                  break;
                }
              }
            }

            v74 = *(v74 + 8);
            if (!v74)
            {
              v76 = 0;
              goto LABEL_92;
            }
          }

          v76 = *(v75 + 48);
LABEL_92:
          v135 = v25;
          v77 = CGPDFCreateColorValueCSS(v76, 1, v68, v69, v70, v71, v72, v73);
          if (v77)
          {
            v78 = v77;
            CFStringAppend(v67, @"; background-color: ");
            CFStringAppend(v67, v78);
            CFRelease(v78);
          }

          for (i = 0; i != 4; ++i)
          {
            TableCellBorderBounds = CGPDFNodeGetTableCellBorderBounds(a2, i);
            v82 = v81;
            v84 = v83;
            v86 = v85;
            TableCellBorderColor = CGPDFNodeGetTableCellBorderColor(a2, i);
            v88 = CFStringCreateWithFormat(v66, 0, @"border-%s-", kCGPDFNodeSideCSSMap[i]);
            v95 = v88;
            if (TableCellBorderBounds != INFINITY && v82 != INFINITY)
            {
              if (i == 3)
              {
                v97 = v84;
              }

              else
              {
                v97 = v86;
              }

              if (i)
              {
                v98 = v84;
              }

              else
              {
                v98 = v86;
              }

              if (i <= 1)
              {
                v97 = v98;
              }

              CFStringAppendFormat(v67, 0, @"; %@width: %fpt", v88, v97);
            }

            if (TableCellBorderColor)
            {
              v99 = CGPDFCreateColorValueCSS(TableCellBorderColor, 1, v89, v90, v91, v92, v93, v94);
              if (v99)
              {
                v100 = v99;
                CFStringAppendFormat(v67, 0, @"; %@color: %@", v95, v99);
                CFRelease(v100);
              }
            }

            CFRelease(v95);
          }

          startIndent(v65, (a3 + 64));
          if (v134 == 0x7FFFFFFFFFFFFFFFLL && !v135 || TableCellColumnSpan == 0x7FFFFFFFFFFFFFFFLL && !v132 || v135 == 1 && v132 == 1)
          {
            startTagWithAttributes(v65, @"td", 0, v101, v102, v103, v104, v105, @"style", v67);
          }

          else
          {
            v106 = CFStringCreateMutable(v66, 0);
            CFStringAppendFormat(v106, 0, @"%i", v135);
            v107 = CFStringCreateMutable(v66, 0);
            CFStringAppendFormat(v107, 0, @"%i", v132);
            startTagWithAttributes(v65, @"td", 0, v108, v109, v110, v111, v112, @"rowspan", v106);
            CFRelease(v107);
            CFRelease(v106);
          }

          CFRelease(v67);
          if (!findOverlappingRange(a2, a3))
          {
            CGPDFNodeMapByType(a2, &htmlFuncArray);
          }

          endIndent(v65, (a3 + 64));
          CFStringAppendFormat(v65, 0, @"</%@>", @"td");
          if (v133)
          {
            endIndent(v65, (a3 + 64));
            CFStringAppendFormat(v65, 0, @"</%@>", @"tr");
          }

          return 1;
        }

        goto LABEL_15;
      }

LABEL_27:
      v21 = CGPDFNodeGetBackgroundColor(a2);
      goto LABEL_28;
    }
  }

  if (*(a3 + 72) == a2)
  {
    goto LABEL_27;
  }

LABEL_15:
  v20 = a2;
  while (*v20 != 1538)
  {
    v20 = *(v20 + 8);
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  v21 = *(v20 + 112);
LABEL_28:
  v29 = findOverlappingRange(a2, a3);
  if (v29 <= 0)
  {
    if (v29 < 0)
    {
      return 0;
    }

    v30 = *(a3 + 56);
    if (a2 && (v31 = *(a2 + 8)) != 0 && (*(v31 + 1) & 2) != 0 && *(v31 + 44) == 1 && !v21)
    {
      CGPDFNodeMapByType(a2, &htmlFuncArray);
    }

    else
    {
      startIndent(*(a3 + 56), (a3 + 64));
      v38 = CGPDFCreateColorValueCSS(v21, 0, v32, v33, v34, v35, v36, v37);
      if (v38)
      {
        v44 = v38;
        v45 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        CFStringAppend(v45, @"background-color: ");
        CFStringAppend(v45, v44);
        CFRelease(v44);
        startTagWithAttributes(v30, @"div", 0, v46, v47, v48, v49, v50, @"class", @"section");
        CFRelease(v45);
      }

      else
      {
        startTagWithAttributes(v30, @"div", 0, v39, v40, v41, v42, v43, @"class", @"section");
      }

      CGPDFNodeMapByType(a2, &htmlFuncArray);
      endIndent(v30, (a3 + 64));
      CFStringAppendFormat(v30, 0, @"</%@>", @"div");
    }
  }

  return 1;
}

__CFString *CGPDFCreateColorValueCSS(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    ColorSpace = CGTaggedColorGetColorSpace(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    ColorSpace = *(a1 + 24);
  }

  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  if (Model)
  {
    if (Model == kCGColorSpaceModelCMYK)
    {
      v15 = 1.0 - Components[3];
      v13 = v15 * (1.0 - *Components) * 100.0;
      __asm { FMOV            V3.2D, #1.0 }

      v14 = vmulq_f64(vmulq_n_f64(vsubq_f64(_Q3, *(Components + 1)), v15), vdupq_n_s64(0x4059000000000000uLL));
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB)
      {
        return 0;
      }

      v13 = *Components * 100.0;
      v14 = vmulq_f64(*(Components + 1), vdupq_n_s64(0x4059000000000000uLL));
    }
  }

  else
  {
    v13 = *Components * 100.0;
    v14 = vdupq_lane_s64(*&v13, 0);
  }

  v21 = v14.f64[1];
  if ((v8 & 1) != 0 || v13 != 0.0 || v14.f64[0] != 0.0 || v14.f64[1] != 0.0)
  {
    v24 = v14.f64[0];
    v25 = v13;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppendFormat(Mutable, 0, @"rgb(%f%%, %f%%, %f%%)", *&v25, *&v24, *&v21);
    return Mutable;
  }

  return 0;
}

uint64_t mapLayoutAreaToHTML(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OverlappingRange = findOverlappingRange(a2, a3);
  if (OverlappingRange > 0)
  {
    return 1;
  }

  if ((OverlappingRange & 0x80000000) == 0)
  {
    v6 = *(a3 + 56);
    startIndent(v6, (a3 + 64));
    startTagWithAttributes(v6, @"div", 0, v7, v8, v9, v10, v11, @"class", @"layoutArea");
    CGPDFNodeMapByType(a2, &htmlFuncArray);
    endIndent(v6, (a3 + 64));
    CFStringAppendFormat(v6, 0, @"</%@>", @"div");
    return 1;
  }

  return 0;
}

uint64_t mapColumnToHTML(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OverlappingRange = findOverlappingRange(a2, a3);
  if (OverlappingRange > 0)
  {
    return 1;
  }

  if ((OverlappingRange & 0x80000000) == 0)
  {
    v6 = *(a3 + 56);
    startIndent(v6, (a3 + 64));
    startTagWithAttributes(v6, @"div", 0, v7, v8, v9, v10, v11, @"class", @"column");
    CGPDFNodeMapByType(a2, &htmlFuncArray);
    mapListToHTML(-1, 0, a3);
    endIndent(v6, (a3 + 64));
    CFStringAppendFormat(v6, 0, @"</%@>", @"div");
    return 1;
  }

  return 0;
}

void mapListToHTML(int a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[6];
  v5 = a3[7];
  v7 = a3 + 6;
  if (v6)
  {
    while (1)
    {
      v8 = *(v6 + 8);
      v9 = *(v6 + 12) + 1;
      *(v6 + 12) = v9;
      v10 = *v6;
      ItemParagraphCount = CGPDFNodeGetItemParagraphCount(*v6, v8);
      if (a1 < 0 || v9 >= ItemParagraphCount)
      {
        break;
      }

LABEL_4:
      v12 = (v6 + 24);
LABEL_25:
      v6 = *v12;
      if (!*v12)
      {
        goto LABEL_33;
      }
    }

    if (*(v6 + 17) == 1)
    {
      endIndent(v5, a3 + 16);
      CFStringAppendFormat(v5, 0, @"</%@>", @"li");
      *(v6 + 17) = 0;
      v8 = *(v6 + 8);
      v10 = *v6;
    }

    else if (*(v6 + 16) == 1)
    {
      *(v6 + 18) = 1;
    }

    *(v6 + 8) = v8 + 1;
    if (v10)
    {
      v13 = v10;
      while (1)
      {
        if (*v13 == 1537)
        {
          v14 = *(v13 + 104);
          if (v14)
          {
            if (*v14 == 1)
            {
              break;
            }
          }
        }

        v13 = *(v13 + 8);
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      if ((a1 & 0x80000000) == 0 && v8 + 1 < v14[5])
      {
        goto LABEL_4;
      }

LABEL_15:
      if ((*(v6 + 16) & 1) == 0)
      {
        goto LABEL_24;
      }

      while (1)
      {
        if (*v10 == 1537)
        {
          v15 = *(v10 + 104);
          if (v15)
          {
            if (*v15 == 1)
            {
              break;
            }
          }
        }

        v10 = *(v10 + 8);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      if (v15[1] == 257)
      {
        v16 = @"ul";
      }

      else
      {
        v16 = @"ol";
      }
    }

    else
    {
      if ((*(v6 + 16) & 1) == 0)
      {
LABEL_24:
        *v7 = *(v6 + 24);
        free(v6);
        v12 = v7;
        goto LABEL_25;
      }

LABEL_22:
      v16 = @"ol";
    }

    endIndent(v5, a3 + 16);
    CFStringAppendFormat(v5, 0, @"</%@>", v16);
    goto LABEL_24;
  }

LABEL_33:
  if ((a1 & 0x80000000) == 0)
  {
    v17 = *v7;
    if (!a2)
    {
      goto LABEL_53;
    }

    if ((*(a2 + 1) & 4) == 0)
    {
      goto LABEL_53;
    }

    v18 = *(a2 + 104);
    if (!v18 || *v18 != 1)
    {
      goto LABEL_53;
    }

    if (!v17)
    {
      goto LABEL_47;
    }

    v19 = a2;
    while (1)
    {
      if (*v19 == 1537)
      {
        v20 = *(v19 + 104);
        if (v20)
        {
          if (*v20 == 1)
          {
            break;
          }
        }
      }

      v19 = *(v19 + 8);
      if (!v19)
      {
        goto LABEL_46;
      }
    }

    v19 = *(v20 + 8);
LABEL_46:
    if (*v17 != v19)
    {
LABEL_47:
      v21 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004069DB6F06uLL);
      v22 = v21;
      *v7 = v21;
      v21[3] = v17;
      v23 = a2;
      while (1)
      {
        if (*v23 == 1537)
        {
          v24 = *(v23 + 104);
          if (v24)
          {
            if (*v24 == 1)
            {
              break;
            }
          }
        }

        v23 = *(v23 + 8);
        if (!v23)
        {
          goto LABEL_116;
        }
      }

      v23 = *(v24 + 8);
LABEL_116:
      *v21 = v23;
      if (a1)
      {
        return;
      }
    }

    else
    {
LABEL_53:
      v22 = *v7;
      if (a1)
      {
        return;
      }
    }

    if (!v22 || (*(v22 + 17) & 1) != 0)
    {
      return;
    }

    if (v22[2])
    {
LABEL_90:
      startIndent(v5, a3 + 16);
      if (!CGPDFListCanGenerateItemMarker(a2))
      {
        goto LABEL_112;
      }

      if (!a2)
      {
        goto LABEL_104;
      }

      v54 = a2;
      while (*v54 != 1537)
      {
        v54 = *(v54 + 8);
        if (!v54)
        {
          goto LABEL_98;
        }
      }

      if (*(v54 + 112) != 0.0)
      {
        startTagWithAttributes(v5, @"li", 0, v49, v50, v51, v52, v53, @"style", @"list-style-type: none");
        goto LABEL_113;
      }

LABEL_98:
      if ((*(a2 + 1) & 2) != 0 && *(a2 + 44) && (v55 = **(a2 + 56)) != 0 && (*(v55 + 1) & 2) != 0 && *(v55 + 44))
      {
        v56 = **(v55 + 56);
      }

      else
      {
LABEL_104:
        v56 = 0;
      }

      TextRange = CGPDFNodeGetTextRange(v56);
      if (v58)
      {
        v59 = 0;
        v60 = *a3;
        if (*a3 && (TextRange & 0x8000000000000000) == 0)
        {
          if (*(v60 + 48) <= TextRange)
          {
            v59 = 0;
          }

          else
          {
            v59 = *(v60 + 24);
            if (v59)
            {
              v59 = *&v59[3 * TextRange + 1];
            }
          }
        }

        CSS = CGPDFTextStyleCreateCSS(v59);
        startTagWithAttributes(v5, @"li", 0, v62, v63, v64, v65, v66, @"style", CSS);
        CFRelease(CSS);
      }

      else
      {
LABEL_112:
        startTag(v5, @"li", 0);
      }

LABEL_113:
      *(v22 + 17) = 1;
      return;
    }

    startIndent(v5, a3 + 16);
    if (a2)
    {
      v25 = @"ol";
      v26 = a2;
      while (1)
      {
        if (*v26 == 1537)
        {
          v27 = *(v26 + 104);
          if (v27)
          {
            if (*v27 == 1)
            {
              break;
            }
          }
        }

        v26 = *(v26 + 8);
        if (!v26)
        {
          v28 = 0;
          goto LABEL_67;
        }
      }

      v28 = v27[1] == 257;
      if (v27[1] == 257)
      {
        v25 = @"ul";
      }
    }

    else
    {
      v28 = 0;
      v25 = @"ol";
    }

LABEL_67:
    v29 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    ItemMarker = CGPDFListCanGenerateItemMarker(a2);
    if (a2 && ItemMarker)
    {
      v32 = a2;
      while (1)
      {
        if (*v32 == 1537)
        {
          v33 = *(v32 + 104);
          if (v33)
          {
            if (*v33 == 1)
            {
              break;
            }
          }
        }

        v32 = *(v32 + 8);
        if (!v32)
        {
          goto LABEL_74;
        }
      }

      v67 = v33[1];
      if (v67 > 515)
      {
        if (v67 <= 517)
        {
          if (v67 == 516)
          {
            v34 = @"upper-roman";
          }

          else
          {
            v34 = @"lower-latin";
          }

          goto LABEL_75;
        }

        if (v67 == 518)
        {
          v34 = @"upper-latin";
          goto LABEL_75;
        }

        if (v67 == 519)
        {
          v34 = @"lower-greek";
          goto LABEL_75;
        }
      }

      else
      {
        if (v67 > 513)
        {
          if (v67 == 514)
          {
            v34 = @"decimal-leading-zero";
          }

          else
          {
            v34 = @"lower-roman";
          }

          goto LABEL_75;
        }

        if (v67 == 257)
        {
          ItemMarkerRange = CGPDFNodeGetItemMarkerRange(a2);
          v69 = a2;
          while (*v69 != 517)
          {
            v69 = *(v69 + 8);
            if (!v69)
            {
              v70 = 0;
              goto LABEL_139;
            }
          }

          v70 = *(v69 + 104);
LABEL_139:
          CharacterUnicode = CGPDFLayoutGetCharacterUnicode(v70, ItemMarkerRange);
          v34 = @"disc";
          if (CharacterUnicode == 9632)
          {
            v34 = @"square";
          }

          if (CharacterUnicode == 9702)
          {
            v34 = @"circle";
          }

          goto LABEL_75;
        }

        if (v67 == 513)
        {
          v34 = @"decimal";
          goto LABEL_75;
        }
      }
    }

LABEL_74:
    v34 = @"none";
LABEL_75:
    CFStringAppendFormat(Mutable, 0, @"list-style-type: %@", v34);
    if (a2)
    {
      v40 = a2;
      while (1)
      {
        if (*v40 == 1537)
        {
          v41 = *(v40 + 104);
          if (v41)
          {
            if (*v41 == 1)
            {
              break;
            }
          }
        }

        v40 = *(v40 + 8);
        if (!v40)
        {
          goto LABEL_84;
        }
      }

      v40 = v41[4];
    }

    else
    {
      v40 = 0;
    }

LABEL_84:
    v42 = !v28;
    if (v40 == 1)
    {
      v42 = 0;
    }

    if (v42)
    {
      v43 = CFStringCreateWithFormat(v29, 0, @"%i", v40);
      startTagWithAttributes(v5, @"ol", 0, v44, v45, v46, v47, v48, @"start", v43);
      CFRelease(v43);
    }

    else
    {
      startTagWithAttributes(v5, v25, 0, v35, v36, v37, v38, v39, @"style", Mutable);
    }

    CFRelease(Mutable);
    *(v22 + 16) = 1;
    goto LABEL_90;
  }
}

BOOL CGPDFListCanGenerateItemMarker(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    while (1)
    {
      if (*v2 == 1537)
      {
        v3 = *(v2 + 104);
        if (v3)
        {
          if (*v3 == 1)
          {
            break;
          }
        }
      }

      v2 = *(v2 + 8);
      if (!v2)
      {
        return 0;
      }
    }

    result = 0;
    v4 = v3[1];
    if (v4)
    {
      if (v4 != 520)
      {
        if (v4 != 257)
        {
          CGPDFNodeGetItemMarkerPrefixRange(v1);
          if (v7 <= 0)
          {
            ItemMarkerSuffixRange = CGPDFNodeGetItemMarkerSuffixRange(v1);
            if (v9 == 1)
            {
              v10 = ItemMarkerSuffixRange;
              while (*v1 != 517)
              {
                result = 0;
                v1 = *(v1 + 8);
                if (!v1)
                {
                  return result;
                }
              }

              result = 0;
              v17 = *(v1 + 104);
              if (!v17 || v10 < 0)
              {
                return result;
              }

              if (*(v17 + 48) > v10)
              {
                v18 = *(v17 + 24);
                if (v18)
                {
                  v19 = *(v18 + 24 * v10);
                  if (v19)
                  {
                    return *(v19 + 8) == 46;
                  }
                }
              }
            }
          }

          return 0;
        }

        ItemMarkerRange = CGPDFNodeGetItemMarkerRange(v1);
        if (v6 != 1)
        {
          return 0;
        }

        while (*v1 != 517)
        {
          v1 = *(v1 + 8);
          if (!v1)
          {
            return 0;
          }
        }

        v11 = *(v1 + 104);
        if (!v11)
        {
          return 0;
        }

        if (ItemMarkerRange < 0)
        {
          return 0;
        }

        if (*(v11 + 48) <= ItemMarkerRange)
        {
          return 0;
        }

        v12 = *(v11 + 24);
        if (!v12)
        {
          return 0;
        }

        v13 = *(v12 + 24 * ItemMarkerRange);
        if (!v13)
        {
          return 0;
        }

        v14 = *(v13 + 8);
        v15 = v14 == 8226 || v14 == 9632;
        return v15 || v14 == 9702;
      }
    }
  }

  return result;
}

__CFString *CGPDFTextStyleCreateCSS(double *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  if (a1)
  {
    CFStringAppendFormat(Mutable, 0, @"font-size: %fpt", *(a1 + 2));
    v11 = *(a1 + 1);
    if (!v11)
    {
      goto LABEL_47;
    }

    v12 = *(v11 + 32);
    if (!v12)
    {
      goto LABEL_47;
    }

    v13 = CFStringCreateWithCString(v2, v12, 0x8000100u);
    if (!v13)
    {
      goto LABEL_47;
    }

    v14 = v13;
    Length = CFStringGetLength(v13);
    if (Length)
    {
      location = Length;
      if (Length >= 8 && CFStringGetCharacterAtIndex(v14, 6) == 43)
      {
        v17 = 0;
        v18 = 7;
        while (CFStringGetCharacterAtIndex(v14, v17) - 91 > 0xFFFFFFE5)
        {
          if (++v17 == 6)
          {
            goto LABEL_13;
          }
        }
      }

      v18 = 0;
LABEL_13:
      v19 = CFStringFind(v14, @"-", 4uLL);
      if (v19.length == 1 && v19.location == CFStringFind(v14, @"-", 0).location)
      {
        location = v19.location;
      }

      v52.length = location - v18;
      v52.location = v18;
      v20 = CFStringCreateWithSubstring(v2, v14, v52);
    }

    else
    {
      v20 = CFStringCreateMutable(v2, 0);
    }

    v21 = v20;
    if (v20)
    {
      if (CFStringFind(v20, @"&", 0).location == -1 && CFStringFind(v21, @"<", 0).location == -1 && CFStringFind(v21, @">", 0).location == -1 && CFStringFind(v21, @"", 0).location == -1 && CFStringFind(v21, @"'", 0).location == -1)
      {
        MutableCopy = CFRetain(v21);
      }

      else
      {
        MutableCopy = CFStringCreateMutableCopy(v2, 0, v21);
        v55.length = CFStringGetLength(MutableCopy);
        v55.location = 0;
        CFStringFindAndReplace(MutableCopy, @"&", @"&amp;", v55, 0);
        v56.length = CFStringGetLength(MutableCopy);
        v56.location = 0;
        CFStringFindAndReplace(MutableCopy, @"<", @"&lt;", v56, 0);
        v57.length = CFStringGetLength(MutableCopy);
        v57.location = 0;
        CFStringFindAndReplace(MutableCopy, @">", @"&gt;", v57, 0);
        v58.length = CFStringGetLength(MutableCopy);
        v58.location = 0;
        CFStringFindAndReplace(MutableCopy, @"", @"&quot;", v58, 0);
        v59.length = CFStringGetLength(MutableCopy);
        v59.location = 0;
        CFStringFindAndReplace(MutableCopy, @"'", @"&apos;", v59, 0);
      }

      CFRelease(v21);
      if (MutableCopy)
      {
        CFStringAppendFormat(v4, 0, @"; font-family: '%@'", MutableCopy);
        CFRelease(MutableCopy);
      }
    }

    v23 = CFStringFind(v14, @"-", 4uLL);
    if (v23.length == 1 && v23.location == CFStringFind(v14, @"-", 0).location)
    {
      v24 = CFStringGetLength(v14) - (v23.location + 1);
      v25 = &kCGPDFFontWeightCSSMap;
      v26 = 21;
      while (1)
      {
        v27 = ~*(v25 + 12);
        v28 = CFStringCreateWithCString(v2, *v25, 0x8000100u);
        v53.location = v23.location + 1;
        v53.length = v24;
        v29 = CFStringFindWithOptions(v14, v28, v53, v27 & 1, 0);
        CFRelease(v28);
        if (v29)
        {
          break;
        }

        v25 += 2;
        if (!--v26)
        {
          goto LABEL_35;
        }
      }

      if (*(v25 + 2) != 400)
      {
        CFStringAppendFormat(v4, 0, @"; font-weight: %u", *(v25 + 2));
      }
    }

LABEL_35:
    v30 = CFStringFind(v14, @"-", 4uLL);
    if (v30.length == 1 && v30.location == CFStringFind(v14, @"-", 0).location)
    {
      v31 = CFStringGetLength(v14) - (v30.location + 1);
      v32 = &kCGPDFFontStyleCSSMap;
      v33 = 9;
      while (1)
      {
        v34 = ~*(v32 + 12);
        v35 = CFStringCreateWithCString(v2, *v32, 0x8000100u);
        v54.location = v30.location + 1;
        v54.length = v31;
        v36 = CFStringFindWithOptions(v14, v35, v54, v34 & 1, 0);
        CFRelease(v35);
        if (v36)
        {
          break;
        }

        v32 += 2;
        if (!--v33)
        {
          goto LABEL_46;
        }
      }

      v37 = *(v32 + 2);
      if (v37 == 1)
      {
        v38 = @"; font-style: italic";
        goto LABEL_45;
      }

      if (v37 == 2)
      {
        v38 = @"; font-style: oblique";
LABEL_45:
        CFStringAppend(v4, v38);
      }
    }

LABEL_46:
    CFRelease(v14);
LABEL_47:
    v39 = *(a1 + 3);
    goto LABEL_48;
  }

  CFStringAppendFormat(Mutable, 0, @"font-size: %fpt", 0);
  v39 = 0;
LABEL_48:
  v40 = CGPDFCreateColorValueCSS(v39, 0, v5, v6, v7, v8, v9, v10);
  if (v40)
  {
    v47 = v40;
    CFStringAppend(v4, @"; color: ");
    CFStringAppend(v4, v47);
    CFRelease(v47);
  }

  if (a1)
  {
    v48 = *(a1 + 4);
  }

  else
  {
    v48 = 0;
  }

  v49 = CGPDFCreateColorValueCSS(v48, 1, v41, v42, v43, v44, v45, v46);
  if (v49)
  {
    v50 = v49;
    CFStringAppend(v4, @"; background-color: ");
    CFStringAppend(v4, v50);
    CFRelease(v50);
  }

  if (a1 && a1[6] != 0.0)
  {
    CFStringAppendFormat(v4, 0, @"; vertical-align: %fpt", *(a1 + 6));
  }

  return v4;
}

uint64_t mapParagraphToHTML(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OverlappingRange = findOverlappingRange(a2, a3);
  mapListToHTML(OverlappingRange, a2, a3);
  if (OverlappingRange <= 0)
  {
    if (OverlappingRange < 0)
    {
      return 0;
    }

    v6 = *(a3 + 56);
    startIndent(v6, (a3 + 64));
    v7 = @"p";
    if (a2)
    {
      v8 = a2;
      while (*v8 != 1537)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      if (*(v8 + 112) != 0.0)
      {
        v7 = @"pre";
      }
    }

LABEL_11:
    startTag(v6, v7, 0);
    CGPDFNodeMapByType(a2, &htmlFuncArray);
    if (*(a3 + 40))
    {
      CFStringAppendFormat(v6, 0, @"</%@>", @"span");
      *(a3 + 40) = 0;
    }

    CFStringAppendFormat(v6, 0, @"</%@>", v7);
    --*(a3 + 64);
  }

  return 1;
}

uint64_t mapTextLineToHTML(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  OverlappingRange = findOverlappingRange(a2, a3);
  if (OverlappingRange > 0)
  {
    return 1;
  }

  if (OverlappingRange < 0)
  {
    return 0;
  }

  v6 = a3[7];
  if (*(*a3 + 72) == 1)
  {
    TextRange = CGPDFNodeGetTextRange(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x1E695E480];
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v11 = Mutable;
        v78 = 0;
        v77 = 0;
        CPTextServicesAppendTextLine(Mutable, *a3, TextRange, v8, &v78, &v77);
        Length = CFStringGetLength(v11);
        if (Length >= v77)
        {
          v13 = v77;
        }

        else
        {
          v13 = Length;
        }

        if (v13 >= 1)
        {
          v68 = v11;
          v66 = v6;
          v14 = a3[2];
          v15 = CGPDFNodeGetTextRange(v4);
          v17 = v16;
          v18 = a3[1];
          if (v18)
          {
            if (*(v18 + 40))
            {
              CPIndexSetNormalize(a3[1]);
            }

            v19 = *(v18 + 16);
          }

          else
          {
            v19 = 0;
          }

          v20 = a3[2];
          v21 = v20 + 1;
          if (v20 + 1 < v19)
          {
            v22 = v15 + v17;
            v23 = v17 <= 0;
            if (v17 <= 0)
            {
              v24 = v15 + v17;
            }

            else
            {
              v24 = v15;
            }

            if (!v23)
            {
              v15 = v22;
            }

            do
            {
              Range = CPIndexSetGetRange(a3[1], v21);
              v27 = Range + v26;
              if (v26 <= 0)
              {
                v28 = Range + v26;
              }

              else
              {
                v28 = Range;
              }

              if (v26 <= 0)
              {
                v27 = Range;
              }

              if (v27 > v24 && v15 <= v28)
              {
                break;
              }

              if (v27 > v24 && v15 > v28)
              {
                a3[2] = v21;
                a3[3] = Range;
                a3[4] = v26;
              }

              ++v21;
            }

            while (v19 != v21);
            v20 = a3[2];
          }

          v71 = v20 - v14;
          v31 = v20 - v14 + 1;
          v67 = malloc_type_malloc(16 * v31, 0x1000040451B5BE8uLL);
          if (v31 >= 2)
          {
            v32 = v67 + 8;
            do
            {
              *(v32 - 1) = CPIndexSetGetRange(a3[1], v14);
              *v32 = v33;
              ++v14;
              v32 += 2;
            }

            while (v20 != v14);
          }

          *&v67[16 * v31 - 16] = *(a3 + 3);
          theString = a3[7];
          v34 = CFStringCreateMutable(v9, v13);
          v35 = 0;
          v70 = 0;
          v74 = v34;
          v75 = 0;
          v36 = 0;
          if (v31 <= 1)
          {
            v37 = 1;
          }

          else
          {
            v37 = v31;
          }

          v38 = v34;
          v73 = v37;
          v39 = v71;
          while (1)
          {
            if (v36 < v13)
            {
              v41 = 0;
              v40 = 0;
              v42 = TextRange + v78[v36];
              v43 = *a3;
              if (*a3 && (v42 & 0x8000000000000000) == 0)
              {
                if (*(v43 + 48) > v42 && (v44 = *(v43 + 24)) != 0)
                {
                  v41 = *(v44 + 24 * v42 + 8);
                  v40 = v41 != 0;
                  v45 = v41 == v75 || v41 == 0;
                  if (!v45)
                  {
                    v40 = 1;
                    if (!v38)
                    {
                      goto LABEL_58;
                    }

LABEL_57:
                    v38 = CFStringGetLength(v38);
                    goto LABEL_58;
                  }
                }

                else
                {
                  v40 = 0;
                  v41 = 0;
                }
              }
            }

            else
            {
              v40 = 0;
              v41 = 0;
              v42 = -1;
            }

            if (v36 != v13 && !v35)
            {
              goto LABEL_84;
            }

            if (v38)
            {
              goto LABEL_57;
            }

LABEL_58:
            if (v38 <= 0 && !v35)
            {
              goto LABEL_78;
            }

            if (v75)
            {
              v46 = a3[5];
              if (v46)
              {
                if (CGPDFTextStyleEqualToPDFTextStyle(v75, v46))
                {
                  if ((v70 & 1) == 0)
                  {
                    v70 = 0;
                    goto LABEL_69;
                  }
                }

                else
                {
                  CFStringAppendFormat(theString, 0, @"</%@>", @"span");
                }
              }

              a3[5] = v75;
              CSS = CGPDFTextStyleCreateCSS(v75);
              startTagWithAttributes(theString, @"span", 0, v48, v49, v50, v51, v52, @"style", CSS);
              v53 = CSS;
              v39 = v71;
              CFRelease(v53);
              v70 = 1;
            }

LABEL_69:
            if (v38 >= 1)
            {
              v54 = CGPDFCopyStringEscapingElementMarkup(v74);
              if (v54)
              {
                v55 = v54;
                CFStringAppend(theString, v54);
                CFRelease(v55);
              }

              v79.location = 0;
              v79.length = v38;
              CFStringDelete(v74, v79);
              v39 = v71;
            }

            if (v35)
            {
              v56 = 1;
              v38 = v74;
              while (kCGPDFNodeTypeOrder[v56] != *v35)
              {
                if (++v56 == 12)
                {
                  v56 = 0;
                  goto LABEL_80;
                }
              }

              v56 = v56;
LABEL_80:
              (*(&htmlFuncArray + v56))(0, v35, a3);
              goto LABEL_81;
            }

LABEL_78:
            v38 = v74;
LABEL_81:
            v57 = v75;
            if (v40)
            {
              v57 = v41;
            }

            v75 = v57;
LABEL_84:
            v35 = 0;
            if (v39 > 0x7FFFFFFFFFFFFFFELL)
            {
              goto LABEL_99;
            }

            v59 = v67 + 8;
            v58 = v73;
            if (v36 >= v13)
            {
              goto LABEL_99;
            }

            while (1)
            {
              v60 = *(v59 - 1);
              if (v60 <= v42 && v42 < *v59 + v60)
              {
                break;
              }

              v59 += 2;
              if (!--v58)
              {
                v35 = 0;
                goto LABEL_99;
              }
            }

            CharacterAtIndex = CFStringGetCharacterAtIndex(v68, v36);
            chars = CharacterAtIndex;
            if (CharacterAtIndex != 65532)
            {
              if (v38)
              {
                CFStringAppendCharacters(v38, &chars, 1);
              }

              goto LABEL_98;
            }

            NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(v4, v42, 1);
            if (!CGPDFNodeIsInlineContainer(NodeContainingTextRange))
            {
              v70 = 0;
LABEL_98:
              v35 = 0;
              goto LABEL_99;
            }

            v70 = 0;
            v35 = *(NodeContainingTextRange + 64);
LABEL_99:
            v45 = v36++ == v13;
            if (v45)
            {
              if (v38)
              {
                CFRelease(v38);
              }

              free(v67);
              v6 = v66;
              v11 = v68;
              break;
            }
          }
        }

        free(v78);
        CFRelease(v11);
        if (!v4)
        {
          goto LABEL_121;
        }

        goto LABEL_106;
      }
    }
  }

  else
  {
    CGPDFNodeMapByType(v4, &htmlFuncArray);
  }

  if (v4)
  {
LABEL_106:
    v65 = v4;
    while (*v65 != 514)
    {
      v65 = *(v65 + 8);
      if (!v65)
      {
        goto LABEL_121;
      }
    }

    if (*(v65 + 104) == 1)
    {
      while (*v4 != 1537)
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_120;
        }
      }

      if (*(v4 + 112) != 0.0)
      {
        goto LABEL_121;
      }

LABEL_120:
      startTag(v6, @"br", 1);
    }
  }

LABEL_121:
  CFStringAppend(v6, @"\n");
  return 1;
}

uint64_t mapImageToHTML(uint64_t a1, __n64 *a2, uint64_t a3)
{
  OverlappingRange = findOverlappingRange(a2, a3);
  if (OverlappingRange > 0)
  {
    return 1;
  }

  if (OverlappingRange < 0)
  {
    return 0;
  }

  if (CGPDFNodeIsUsedGraphic(a2))
  {
    return 1;
  }

  v11.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v6 = 1;
  if (v11.n64_f64[0] != INFINITY)
  {
    v12 = v8.n64_f64[0];
    if (v8.n64_f64[0] != INFINITY)
    {
      width = v9.n64_f64[0];
      height = v10.n64_f64[0];
      PageRotation = CGPDFNodeGetPageRotation(a2);
      if (PageRotation != 0.0)
      {
        v16 = __sincos_stret(PageRotation);
        v29.a = v16.__cosval;
        v29.b = v16.__sinval;
        v29.c = -v16.__sinval;
        v29.d = v16.__cosval;
        v29.tx = 0.0;
        v29.ty = 0.0;
        v30.origin.x = v11.n64_f64[0];
        v30.origin.y = v12;
        v30.size.width = width;
        v30.size.height = height;
        v31 = CGRectApplyAffineTransform(v30, &v29);
        width = v31.size.width;
        height = v31.size.height;
      }

      ImageName = CGPDFNodeCreateImageName(a2);
      if (ImageName)
      {
        v18 = ImageName;
        v19 = *MEMORY[0x1E695E480];
        v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%f", *&width);
        v21 = CFStringCreateWithFormat(v19, 0, @"%f", *&height);
        v22 = *(a3 + 56);
        startIndent(v22, (a3 + 64));
        v6 = 1;
        startTagWithAttributes(v22, @"img", 1, v23, v24, v25, v26, v27, @"src", v18);
        --*(a3 + 64);
        CFRelease(v21);
        CFRelease(v20);
        CFRelease(v18);
        v28 = *(a3 + 80);
        if (v28)
        {
          CFArrayAppendValue(v28, a2);
        }
      }
    }
  }

  return v6;
}

uint64_t mapWordToHTML(int a1, uint64_t a2, uint64_t *a3)
{
  WordRangeIncludingWhitespace = getWordRangeIncludingWhitespace(a1, a2, a3);
  v8 = v7;
  v9 = a3[1];
  if (v9)
  {
    if (*(v9 + 40))
    {
      CPIndexSetNormalize(a3[1]);
    }

    v10 = *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = a3[3];
  v12 = a3[4];
  v13 = v11 + v12;
  v14 = v12 <= 0;
  if (v12 <= 0)
  {
    v15 = v11 + v12;
  }

  else
  {
    v15 = a3[3];
  }

  if (!v14)
  {
    v11 = v13;
  }

  v16 = WordRangeIncludingWhitespace + v8;
  v17 = v8 <= 0;
  if (v8 <= 0)
  {
    v18 = WordRangeIncludingWhitespace + v8;
  }

  else
  {
    v18 = WordRangeIncludingWhitespace;
  }

  if (!v17)
  {
    WordRangeIncludingWhitespace = v16;
  }

  v19 = WordRangeIncludingWhitespace <= v15;
  v20 = v11 <= v18;
  if (v11 <= v18)
  {
    v21 = -1;
  }

  else
  {
    v21 = v19;
  }

  if (v20)
  {
    do
    {
      v22 = a3[2] + 1;
      if (v22 >= v10)
      {
        return 0;
      }

      v23 = a3[1];
      a3[2] = v22;
      Range = CPIndexSetGetRange(v23, v22);
      a3[3] = Range;
      a3[4] = v25;
      v26 = Range + v25;
      if (v25 <= 0)
      {
        v27 = Range;
      }

      else
      {
        v27 = Range + v25;
      }
    }

    while (v27 <= v18);
    if (v25 > 0)
    {
      v26 = Range;
    }

    v21 = WordRangeIncludingWhitespace <= v26;
  }

  if (v21)
  {
    return 1;
  }

  v29 = a3[2];
  v30 = getWordRangeIncludingWhitespace(a1, a2, a3);
  v32 = v31;
  v33 = a3[1];
  if (v33)
  {
    if (*(v33 + 40))
    {
      CPIndexSetNormalize(a3[1]);
    }

    v34 = *(v33 + 16);
  }

  else
  {
    v34 = 0;
  }

  v35 = a3[2];
  v36 = v35 + 1;
  if (v35 + 1 < v34)
  {
    if (v32 <= 0)
    {
      v37 = v30 + v32;
    }

    else
    {
      v37 = v30;
    }

    if (v32 > 0)
    {
      v30 += v32;
    }

    do
    {
      v38 = CPIndexSetGetRange(a3[1], v36);
      v40 = v38 + v39;
      if (v39 <= 0)
      {
        v41 = v38 + v39;
      }

      else
      {
        v41 = v38;
      }

      if (v39 <= 0)
      {
        v40 = v38;
      }

      if (v40 > v37 && v30 <= v41)
      {
        break;
      }

      if (v40 > v37 && v30 > v41)
      {
        a3[2] = v36;
        a3[3] = v38;
        a3[4] = v39;
      }

      ++v36;
    }

    while (v34 != v36);
    v35 = a3[2];
  }

  v44 = v35 - v29;
  if ((v35 - v29) > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  result = getWordRangeIncludingWhitespace(a1, a2, a3);
  if (!v45)
  {
    return 1;
  }

  v46 = result;
  v47 = v45;
  LODWORD(result) = 0;
  if (a1 || !a2)
  {
LABEL_66:
    v85 = v29;
    v88 = a2;
    v50 = 0;
    v90 = v44 + 1;
    v51 = *a3;
    v83 = result;
    if (*a3 && (v46 & 0x8000000000000000) == 0)
    {
      if (*(v51 + 48) > v46 && (v52 = *(v51 + 24)) != 0)
      {
        v50 = *(v52 + 24 * v46 + 8);
      }

      else
      {
        v50 = 0;
      }
    }

    v89 = malloc_type_malloc(16 * v90, 0x1000040451B5BE8uLL);
    theString = a3[7];
    if (v47 >= 1)
    {
      v84 = 0;
      v53 = v46 + v47;
      v87 = &v89[2 * v90];
      v54 = v46;
      while (1)
      {
        v55 = v46;
        if (++v46 >= v53 || ((v56 = *a3) != 0 ? (v57 = v55 < -1) : (v57 = 1), v57 || *(v56 + 48) <= v46 || (v58 = *(v56 + 24)) == 0))
        {
          v59 = 0;
        }

        else
        {
          v59 = *(v58 + 24 * v46 + 8);
        }

        v60 = !v59 || v59 == v50;
        if (!v60 || v46 == v53)
        {
          break;
        }

        v59 = v50;
LABEL_114:
        v50 = v59;
        if (v46 >= v53)
        {
          goto LABEL_115;
        }
      }

      if (v90 >= 2)
      {
        v61 = v89 + 1;
        v62 = v85;
        do
        {
          v63 = CPIndexSetGetRange(a3[1], v62);
          *(v61 - 1) = CPRangeIntersection(v54, v46 - v54, v63, v64);
          *v61 = v65;
          ++v62;
          v61 += 2;
        }

        while (v35 != v62);
      }

      *(v87 - 2) = CPRangeIntersection(v54, v46 - v54, a3[3], a3[4]);
      *(v87 - 1) = v66;
      StringForRanges = CGPDFLayoutCreateStringForRanges(*a3, v89, v90);
      v68 = StringForRanges;
      if (v50 && StringForRanges && CFStringGetLength(StringForRanges) >= 1)
      {
        v69 = a3[5];
        if (v69)
        {
          if (v84 & 1) == 0 && (CGPDFTextStyleEqualToPDFTextStyle(v50, v69))
          {
            v84 = 0;
            goto LABEL_101;
          }

          CFStringAppendFormat(theString, 0, @"</%@>", @"span");
        }

        a3[5] = v50;
        CSS = CGPDFTextStyleCreateCSS(v50);
        startTagWithAttributes(theString, @"span", 0, v71, v72, v73, v74, v75, @"style", CSS);
        CFRelease(CSS);
        v84 = 1;
      }

LABEL_101:
      if (CGPDFNodeIsInlineContainer(v88) && (v76 = *(v88 + 64)) != 0)
      {
        v77 = 1;
        while (kCGPDFNodeTypeOrder[v77] != *v76)
        {
          if (++v77 == 12)
          {
            v77 = 0;
            goto LABEL_111;
          }
        }

        v77 = v77;
LABEL_111:
        (*(&htmlFuncArray + v77))(0);
        if (!v68)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (!v68)
        {
LABEL_113:
          v54 = v46;
          goto LABEL_114;
        }

        v78 = CGPDFCopyStringEscapingElementMarkup(v68);
        if (v78)
        {
          v79 = v78;
          CFStringAppend(theString, v78);
          CFRelease(v79);
        }
      }

      CFRelease(v68);
      goto LABEL_113;
    }

LABEL_115:
    if (v83)
    {
      CFStringAppend(theString, @"&nbsp;");
    }

    free(v89);
    return 1;
  }

  v48 = a2;
  while (1)
  {
    if (*v48 == 1537)
    {
      v49 = *(v48 + 104);
      if (v49)
      {
        if (*v49 == 1)
        {
          break;
        }
      }
    }

    v48 = *(v48 + 8);
    if (!v48)
    {
      goto LABEL_65;
    }
  }

  if (!v49[1] || (v80 = *(a2 + 8)) != 0 && ((v81 = *(v80 + 8)) == 0 || (*(v81 + 1) & 2) == 0 || !*(v81 + 44) || v80 != **(v81 + 56)))
  {
LABEL_65:
    LODWORD(result) = 0;
    goto LABEL_66;
  }

  if (!CGPDFListCanGenerateItemMarker(a2))
  {
    LODWORD(result) = 1;
    goto LABEL_66;
  }

  v82 = a2;
  result = 1;
  while (*v82 != 1537)
  {
    v82 = *(v82 + 8);
    if (!v82)
    {
      return result;
    }
  }

  result = 1;
  if (*(v82 + 112) != 0.0)
  {
    goto LABEL_66;
  }

  return result;
}

uint64_t getWordRangeIncludingWhitespace(int a1, uint64_t a2, uint64_t *a3)
{
  TextRange = CGPDFNodeGetTextRange(a2);
  v8 = v7;
  v18 = TextRange;
  v19 = v7;
  if (a2)
  {
    v9 = *(a2 + 8);
    if (v9)
    {
      v10 = v9;
      while (*v10 != 1537)
      {
        v10 = *(v10 + 8);
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      if (*(v10 + 112) != 0.0)
      {
        if (a1)
        {
          if ((*(v9 + 1) & 2) != 0 && *(v9 + 44) > (a1 - 1))
          {
            v11 = *(*(v9 + 56) + 8 * (a1 - 1));
          }

          else
          {
            v11 = 0;
          }

          v12 = CGPDFNodeGetTextRange(v11);
          v14 = v13 + v12 + 1;
        }

        else
        {
          v14 = CGPDFNodeGetTextRange(v9);
        }

        if (TextRange > v14)
        {
          v18 = v14;
          v19 = TextRange - v14 + v8;
          TextRange = v14;
        }
      }

LABEL_17:
      if ((*(v9 + 1) & 2) != 0 && (a1 + 1) < *(v9 + 44))
      {
        StringForRanges = CGPDFLayoutCreateStringForRanges(*a3, &v18, 1);
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, StringForRanges);
        CFStringTrimWhitespace(MutableCopy);
        CFStringGetLength(MutableCopy);
        CFRelease(MutableCopy);
        CFRelease(StringForRanges);
        return v18;
      }
    }
  }

  return TextRange;
}

uint64_t computeATRRecord(uint64_t result, int *a2, int a3, int a4)
{
  v4 = *(a2 + 1);
  v5 = *a2;
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  v6 = 0uLL;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  if (a4 < 1)
  {
    v13 = 0.0;
    v9 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
    v14 = 0uLL;
  }

  else
  {
    v7 = 0;
    v8 = &v4[a3];
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0uLL;
    do
    {
      v15 = *v8++;
      v16 = v15;
      v17 = v15.f32[1];
      if (v15.f32[0] > v11)
      {
        v18 = v16.f32[0];
      }

      else
      {
        v18 = v11;
      }

      if (v16.f32[0] < v10)
      {
        v10 = v16.f32[0];
      }

      else
      {
        v11 = v18;
      }

      if (v17 > v13)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (v17 < v12)
      {
        v12 = v17;
      }

      else
      {
        v13 = v19;
      }

      if (!v7)
      {
        v13 = v17;
        v12 = v17;
        v11 = v16.f32[0];
        v10 = v16.f32[0];
      }

      v6 = vaddq_f64(v6, vcvtq_f64_f32(v16));
      v14 = vaddq_f64(v14, vcvtq_f64_f32(vmul_f32(v16, v16)));
      v9 = v9 + (v16.f32[0] * v17);
      v20 = a3 + 1;
      if (a3 + 1 < v5)
      {
        ++a3;
      }

      else
      {
        a3 = 0;
      }

      if (v20 >= v5)
      {
        v8 = v4;
      }

      ++v7;
    }

    while (a4 != v7);
  }

  *(result + 56) = v10;
  *(result + 60) = v12;
  *(result + 64) = v11;
  *(result + 68) = v13;
  *(result + 16) = v6;
  *(result + 32) = v14;
  *(result + 48) = v9;
  return result;
}

uint64_t ATRLinearRegression(uint64_t a1, _BYTE *a2, float *a3, float *a4)
{
  v4 = (1.0 / *(a1 + 12));
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = v5 * v4;
  v8 = v5 * v4;
  v9 = v6 * v4;
  v10 = v6 * v4;
  v11 = vsub_f32(*(a1 + 64), *(a1 + 56));
  v12 = vcgt_f32(v11, vdup_lane_s32(v11, 1)).u8[0];
  if ((v12 & 1) == 0)
  {
    v17 = *(a1 + 40) - v7 * v5;
    if (v17 != 0.0)
    {
      v19 = *(a1 + 48) - v9 * v5;
      v15 = v19 / v17;
      v16 = v10 - (v15 * v8);
      goto LABEL_7;
    }

    return 0;
  }

  v13 = *(a1 + 32) - v9 * v6;
  if (v13 == 0.0)
  {
    return 0;
  }

  v14 = *(a1 + 48) + -v9 * v5;
  v15 = v14 / v13;
  v16 = v8 - (v15 * v10);
LABEL_7:
  *a2 = v12 & 1;
  *a3 = v16;
  *a4 = v15;
  return 1;
}

float ATRMaxDistanceFromLine(_DWORD *a1, int a2, float a3, float a4)
{
  v4 = a1[3];
  if (v4 < 1)
  {
    return 0.0;
  }

  v5 = 1.0 / sqrtf((a4 * a4) + 1.0);
  v6 = a1[2];
  v7 = 0.0;
  do
  {
    v8 = *(*a1 + 8) + 8 * v6;
    if (a2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v8 + v9);
    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 4;
    }

    v12 = v5 * vabds_f32(v10, a3 + (a4 * *(v8 + v11)));
    if (v12 > v7)
    {
      v7 = v12;
    }

    if (v6 + 1 == **a1)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }

    --v4;
  }

  while (v4);
  return v7;
}

void ATRAngleOfLine(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = atan(a1);
  if (!a6)
  {
    v7 = 1.57079633 - v7;
  }

  v8 = v7;
  __sincos_stret(v8);
}

uint64_t styleWithHighlight(uint64_t a1, void *a2)
{
  v4 = [a2 style];
  v5 = *(a1 + 160);
  if (v4 && CPPDFStyleEqual(v4, *(a1 + 160), 49151))
  {
    *(a1 + 160) = [a2 highlightedStyle];
  }

  else
  {
    v6 = v5[13];
    v7 = [a2 color];
    v8 = malloc_type_malloc(0x70uLL, 0x10A00408C90C9C2uLL);
    v9 = v8;
    if (v8)
    {
      v8[2] = v19;
      v8[3] = v20;
      v8[4] = v21;
      v8[5] = v22;
      *v8 = v17;
      v8[1] = v18;
      *(v8 + 12) = v7;
      *(v8 + 13) = v6;
      *(v8 + 13) = v5[13];
      v5[13] = v8;
      v10 = *v8;
      if (*v9)
      {
        CFRetain(v10);
      }

      v11 = *(v9 + 1);
      if (v11)
      {
        CFRetain(v11);
      }

      v12 = *(v9 + 2);
      if (v12)
      {
        CFRetain(v12);
      }

      v13 = *(v9 + 3);
      if (v13)
      {
        CFRetain(v13);
      }

      v14 = *(v9 + 12);
      if (v14)
      {
        CFRetain(v14);
      }

      v15 = *(v9 + 8);
    }

    *(a1 + 160) = v9;
    [a2 setStyle:v5];
    [a2 setHighlightedStyle:*(a1 + 160)];
  }

  return 1;
}

double *CPPolygonBounds(double *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result + 3;
  v4 = 3;
  v5 = v2;
  v6 = *result;
  do
  {
    v8 = *(v3 - 1);
    v7 = *v3;
    if (v8 > v1)
    {
      v9 = *(v3 - 1);
    }

    else
    {
      v9 = v1;
    }

    if (v8 >= v6)
    {
      v1 = v9;
    }

    else
    {
      v6 = *(v3 - 1);
    }

    if (v7 >= v5)
    {
      if (v7 > v2)
      {
        v2 = *v3;
      }
    }

    else
    {
      v5 = *v3;
    }

    v3 += 2;
    --v4;
  }

  while (v4);
  return result;
}

BOOL CPPointIsInsidePolygonWithBounds(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (a4 == INFINITY || a5 == INFINITY)
  {
    return 0;
  }

  v30.origin.x = a4;
  v30.origin.y = a5;
  v30.size.width = a6;
  v30.size.height = a7;
  v31 = CGRectInset(v30, -0.00000011920929, -0.00000011920929);
  v29.x = a2;
  v29.y = a3;
  result = CGRectContainsPoint(v31, v29);
  if (result)
  {
    v12 = a1[6] - a2;
    v13 = a1[7] - a3;
    v14 = a1 + 1;
    v15 = 0.0;
    v16 = 4;
    v17 = 1.0;
    v18 = -1.0;
    v19 = a3;
    v28 = a2;
    while (1)
    {
      v20 = *(v14 - 1) - a2;
      v21 = *v14 - v19;
      v22 = sqrt(v13 * v13 + v12 * v12);
      v23 = sqrt(v21 * v21 + v20 * v20);
      if (v22 < 0.00000011920929 || v23 < 0.00000011920929)
      {
        break;
      }

      v25 = (v12 * v21 - v13 * v20) / v22 / v23;
      v26 = 1.57079633;
      if (v25 < v17)
      {
        v26 = -1.57079633;
        if (v25 > v18)
        {
          v27 = v19;
          v26 = asin(v25);
          v18 = -1.0;
          v17 = 1.0;
          v19 = v27;
          a2 = v28;
        }
      }

      if (v13 * v21 + v12 * v20 < 0.0)
      {
        if (fabs(v26) < 0.00000011920929)
        {
          return 1;
        }

        v26 = dbl_18439CBB0[v26 > 0.0] - v26;
      }

      v15 = v15 + v26;
      v14 += 2;
      v13 = v21;
      v12 = v20;
      if (!--v16)
      {
        return fabs(v15) >= 3.14159265;
      }
    }

    return 1;
  }

  return result;
}

uint64_t CPUprightRectilinearShapeWithVerticesContainingRect(double *a1, unsigned int a2, double a3, CGFloat a4, double a5, CGFloat a6)
{
  if (!a2)
  {
    return 0;
  }

  width = a5;
  x = a3;
  if (a5 < 0.0 || a6 < 0.0)
  {
    v57 = CGRectStandardize(*&a3);
    y = v57.origin.y;
    v57.origin.x = x;
    v57.origin.y = a4;
    v57.size.width = width;
    v57.size.height = a6;
    *&v14 = CGRectStandardize(v57);
    v58.origin.x = x;
    v58.origin.y = a4;
    v58.size.width = width;
    v58.size.height = a6;
    v59 = CGRectStandardize(v58);
    v12 = v59.origin.y + v59.size.height;
    v59.origin.x = x;
    v59.origin.y = a4;
    v59.size.width = width;
    v59.size.height = a6;
    v60 = CGRectStandardize(v59);
    x = v60.origin.x;
    width = v60.size.width;
  }

  else
  {
    v12 = a4 + a6;
    y = a4;
    v14 = a3;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = x + width;
  v26 = *a1;
  v27 = a1[1];
  if (y <= v12)
  {
    v28 = y;
  }

  else
  {
    v28 = v12;
  }

  if (y <= v12)
  {
    v29 = v12;
  }

  else
  {
    v29 = y;
  }

  if (v14 <= v25)
  {
    v30 = v14;
  }

  else
  {
    v30 = x + width;
  }

  if (v14 <= v25)
  {
    v31 = x + width;
  }

  else
  {
    v31 = v14;
  }

  v32 = a2;
  do
  {
    v33 = v26;
    v34 = v27;
    if (v16 + 1 < a2)
    {
      ++v16;
    }

    else
    {
      v16 = 0;
    }

    v35 = &a1[2 * v16];
    v26 = *v35;
    v27 = v35[1];
    if (vabdd_f64(v33, *v35) <= vabdd_f64(v34, v27))
    {
      if (v34 <= v27)
      {
        v44 = v34;
      }

      else
      {
        v44 = v35[1];
      }

      if (v34 <= v27)
      {
        v45 = v35[1];
      }

      else
      {
        v45 = v34;
      }

      v46 = v44 > v28 || v28 > v45;
      if (!v46 || (v28 <= v44 ? (v47 = v44 > v29) : (v47 = 1), !v47))
      {
        if (v33 <= v14)
        {
          if (v27 - v34 >= 0.0)
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }

          if (v27 - v34 > 0.0)
          {
            v41 = 1;
          }

          if (v41 == v18 && v20 == 2)
          {
            v54 = 0;
          }

          else
          {
            v54 = v41;
          }

          v23 += v54;
          v20 = 2;
        }

        else
        {
          if (v33 < v25)
          {
            return 0;
          }

          if (v34 - v27 >= 0.0)
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }

          if (v34 - v27 > 0.0)
          {
            v41 = 1;
          }

          if (v41 == v18 && v20 == 4)
          {
            v49 = 0;
          }

          else
          {
            v49 = v41;
          }

          v21 += v49;
          v20 = 4;
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (v33 <= v26)
      {
        v36 = v33;
      }

      else
      {
        v36 = *v35;
      }

      if (v33 <= v26)
      {
        v37 = *v35;
      }

      else
      {
        v37 = v33;
      }

      v38 = v36 > v30 || v30 > v37;
      if (!v38 || (v30 <= v36 ? (v39 = v36 > v31) : (v39 = 1), !v39))
      {
        if (v34 <= y)
        {
          v50 = v33 - v26;
          if (v50 >= 0.0)
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }

          if (v50 > 0.0)
          {
            v41 = 1;
          }

          if (v41 == v18 && v20 == 1)
          {
            v52 = 0;
          }

          else
          {
            v52 = v41;
          }

          v24 += v52;
          v20 = 1;
        }

        else
        {
          if (v34 < v12)
          {
            return 0;
          }

          v40 = v26 - v33;
          if (v40 >= 0.0)
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }

          if (v40 > 0.0)
          {
            v41 = 1;
          }

          if (v41 == v18 && v20 == 3)
          {
            v43 = 0;
          }

          else
          {
            v43 = v41;
          }

          v22 += v43;
          v20 = 3;
        }

LABEL_106:
        v18 = v41;
      }
    }

    if (v19 == 0 && v20 != 0)
    {
      v19 = v20;
      v17 = v18;
    }

    --v32;
  }

  while (v32);
  if (v19 == v20 && v17 == v18)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v22 -= v18;
      }

      else
      {
        v21 -= v18;
      }
    }

    else if (v20 == 1)
    {
      v24 -= v18;
    }

    else if (v20 == 2)
    {
      v23 -= v18;
    }
  }

  v55 = v23 & 1;
  v56 = v21 & 1;
  if ((v22 & 1) == 0)
  {
    v56 = 0;
  }

  if (!v55)
  {
    v56 = 0;
  }

  if (v24)
  {
    return v56;
  }

  else
  {
    return 0;
  }
}

double CGIntervalIntersection(double a1, double a2, double a3, double a4)
{
  v6 = fabs(a1);
  result = INFINITY;
  v8 = fabs(a3) == INFINITY;
  if (v6 != INFINITY && !v8)
  {
    v9 = -a2;
    v10 = a2 + a1;
    if (a2 >= 0.0)
    {
      v9 = a2;
      v10 = a1;
    }

    v11 = a4 + a3;
    if (a4 < 0.0)
    {
      a4 = -a4;
      a3 = v11;
    }

    if (v10 < a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = v10;
    }

    v13 = v10 + v9;
    if (v13 > a3 + a4)
    {
      v13 = a3 + a4;
    }

    v14 = v12 <= v13;
    result = INFINITY;
    if (v14)
    {
      return v12;
    }
  }

  return result;
}

double CGIntervalExclusion(uint64_t a1, double result, double a3, double a4, double a5)
{
  *a1 = CGIntervalNull;
  v5 = fabs(a4) == INFINITY;
  if (fabs(result) != INFINITY && !v5)
  {
    v6 = a3 + result;
    if (a3 < 0.0)
    {
      a3 = -a3;
      result = v6;
    }

    v7 = a5 + a4;
    if (a5 < 0.0)
    {
      a5 = -a5;
      a4 = v7;
    }

    if (a4 <= result)
    {
      v10 = a4 + a5;
      if (v10 > result)
      {
        v11 = v10 < result + a3;
        result = INFINITY;
        if (v11)
        {
          return v10;
        }
      }
    }

    else
    {
      v8 = result + a3;
      if (a4 < result + a3)
      {
        v9 = a4 + a5;
        if (a4 + a5 < v8)
        {
          *a1 = v9;
          *(a1 + 8) = v8 - v9;
        }
      }
    }
  }

  return result;
}

uint64_t CGPDFGetUnicharsForGlyphName(char *__s, int a2, _WORD *a3)
{
  if (!__s)
  {
    goto LABEL_20;
  }

  if (!strchr(__s, 46) && !strchr(__s, 95))
  {
    v17 = component_to_unichars(__s, a2, a3);
    if (v17)
    {
      return v17;
    }

    goto LABEL_20;
  }

  v6 = strlen(__s);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = malloc_type_malloc(v6 + 1, 0x6940D2D5uLL);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  v9 = strcpy(v7, __s);
  v10 = strchr(v9, 46);
  if (v10)
  {
    *v10 = 0;
  }

  v11 = 0;
  for (i = v8; ; i = v14)
  {
    v13 = strchr(i, 95);
    if (!v13)
    {
      break;
    }

    *v13 = 0;
    v14 = v13 + 1;
    if (a3)
    {
      v15 = &a3[v11];
    }

    else
    {
      v15 = 0;
    }

    v11 += component_to_unichars(i, a2, v15);
  }

  v16 = a3 ? &a3[v11] : 0;
  v17 = component_to_unichars(i, a2, v16) + v11;
  free(v8);
  if (!v17)
  {
LABEL_20:
    v18 = CGPDFGetUnicharGuessForGlyphName(__s, a3);
    v17 = v18;
    if (a3 && !v18)
    {
      pdf_log("%s: no mapping.\n", __s);
    }
  }

  return v17;
}

uint64_t component_to_unichars(uint64_t a1, int a2, _WORD *a3)
{
  v6 = strlen(a1);
  if (a2)
  {
    v7 = bsearch(a1, &ZapfDingbats, 0xC9uLL, 0x10uLL, unicode_entry_compare);
    if (v7)
    {
      if (a3)
      {
        LOWORD(v8) = v7[4];
LABEL_8:
        *a3 = v8;
      }

      return 1;
    }
  }

  v9 = bsearch(a1, &AGL, 0x1104uLL, 0x10uLL, unicode_entry_compare);
  if (v9)
  {
    v8 = v9[4];
    if (v8 != 0xFFFF)
    {
      if (a3)
      {
        goto LABEL_8;
      }

      return 1;
    }

    v11 = bsearch(a1, &AGLExtended, 0x51uLL, 0x18uLL, unicode_entry_compare);
    if (!v11)
    {
      _CGHandleAssert("agl_to_unichars", 82, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Text/Unicode/CGPDFUnicodeTable.c", "extended_entry != NULL", "extended entry missing", v12, v13, v14, v36);
    }

    v10 = v11[1];
    if (a3)
    {
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          a3[i] = *(v11 + i + 8);
        }

        return v10;
      }
    }

    else if (v10)
    {
      return v10;
    }
  }

  if (v6 < 4 || *a1 != 117)
  {
    return 0;
  }

  if (*(a1 + 1) != 110 || *(a1 + 2) != 105 || ((v6 + 1) & 3) != 0)
  {
    if (v6 - 8 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = 0;
      v18 = v6 - 1;
      v19 = (a1 + 1);
      v20 = MEMORY[0x1E69E9830];
      do
      {
        v21 = *v19++;
        v22 = v21;
        if (v21 < 0)
        {
          if (!__maskrune_l(v22, 0x10000uLL, 0) || __maskrune_l(v22, 0x1000uLL, 0))
          {
            return 0;
          }

          v24 = __maskrune_l(v22, 0x400uLL, 0);
        }

        else
        {
          v23 = *(v20 + 4 * v22 + 60);
          if ((v23 & 0x11000) != 0x10000)
          {
            return 0;
          }

          v24 = v23 & 0x400;
        }

        if (v24)
        {
          v25 = -48;
        }

        else
        {
          v25 = -55;
        }

        v17 = v25 + 16 * v17 + v22;
        --v18;
      }

      while (v18);
      if (HIWORD(v17))
      {
        v26 = 1;
      }

      else
      {
        v26 = (v17 & 0xF800) == 55296;
      }

      if (!v26)
      {
        if (a3)
        {
          *a3 = v17;
        }

        return 1;
      }

      if (!((v17 - 0x10000) >> 20))
      {
        if (a3)
        {
          *a3 = (v17 >> 10) - 10304;
          a3[1] = v17 & 0x3FF | 0xDC00;
        }

        return 2;
      }
    }

    return 0;
  }

  v10 = 0;
  v27 = a1 + 3;
  v28 = 3;
  v29 = MEMORY[0x1E69E9830];
  do
  {
    v37 = v28;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(v27 + v30);
      if (*(v27 + v30) < 0)
      {
        if (!__maskrune_l(*(v27 + v30), 0x10000uLL, 0) || __maskrune_l(v32, 0x1000uLL, 0))
        {
          return v10;
        }

        v34 = __maskrune_l(v32, 0x400uLL, 0);
      }

      else
      {
        v33 = *(v29 + 4 * *(v27 + v30) + 60);
        if ((v33 & 0x11000) != 0x10000)
        {
          return v10;
        }

        v34 = v33 & 0x400;
      }

      if (v34)
      {
        v35 = -48;
      }

      else
      {
        v35 = -55;
      }

      v31 = v35 + 16 * v31 + v32;
      ++v30;
    }

    while (v30 != 4);
    if (v31 >> 11 == 27)
    {
      break;
    }

    if (a3)
    {
      *a3++ = v31;
    }

    ++v10;
    v28 = v37 + 4;
    v27 += 4;
  }

  while (v37 + 4 < v6);
  return v10;
}

uint64_t CGPDFSourceStream::lookChar(CGPDFSourceStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 3);
  v9 = *(this + 4);
  if (v8 >= v9 && (v11 = this + 40, *(this + 517) += v9 - (this + 40), *(this + 3) = this + 40, *(this + 4) = this + 40, v12 = CGPDFSourceRead(*(this + 2), this + 40, 0x1000uLL, a4, a5, a6, a7, a8), *(this + 4) = &v11[v12], v8 = *(this + 3), v8 >= &v11[v12]))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v8;
  }
}

uint64_t CGPDFSourceStream::getChar(CGPDFSourceStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 3);
  v10 = *(this + 4);
  if (v9 >= v10)
  {
    v11 = this + 40;
    *(this + 517) += v10 - (this + 40);
    *(this + 3) = this + 40;
    *(this + 4) = this + 40;
    v12 = CGPDFSourceRead(*(this + 2), this + 40, 0x1000uLL, a4, a5, a6, a7, a8);
    *(this + 4) = &v11[v12];
    v9 = *(this + 3);
    if (v9 >= &v11[v12])
    {
      return 0xFFFFFFFFLL;
    }
  }

  *(this + 3) = v9 + 1;
  return *v9;
}

uint64_t CGPDFSourceStream::reset(CGPDFSourceStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = CGPDFSourceRewind(*(this + 2), a2, a3, a4, a5, a6, a7, a8);
  *(this + 3) = this + 40;
  *(this + 4) = this + 40;
  *(this + 517) = 0;
  return result;
}

void CGPDFSourceStream::~CGPDFSourceStream(CGPDFSourceStream *this)
{
  *this = &unk_1EF23D650;
  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23D650;
}

void std::vector<PDFXRefTableEntry>::push_back[abi:fe200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t PDFXRefTableRelease(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

_BYTE *PDFXRefTableEmit(_BYTE *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v10 = result;
    CGDataConsumerPrintf(a2, "xref\n", a3, a4, a5, a6, a7, a8, v26);
    result = CGDataConsumerPrintf(a2, "%lu %zu\n", v11, v12, v13, v14, v15, v16, v10[1]);
    if (a3)
    {
      if (a2)
      {
        v23 = *(a2 + 48);
      }

      else
      {
        v23 = 0;
      }

      *a3 = v23;
    }

    v24 = v10[2];
    if (!v10[1])
    {
      result = CGDataConsumerPrintf(a2, "%010u 65535 f \n", v17, v18, v19, v20, v21, v22, 0);
      v24 += 2;
    }

    for (; v24 < v10[3]; result = CGDataConsumerPrintf(a2, "%010llu 00000 n \n", v17, v18, v19, v20, v21, v22, v25))
    {
      v25 = *v24;
      v24 += 2;
    }
  }

  return result;
}

uint64_t PDFXRefTableAddObject(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = v3 - v2;
  v5 = (v3 - v2) >> 4;
  v6 = a1[4];
  if (v3 >= v6)
  {
    v8 = v5 + 1;
    if ((v5 + 1) >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v6 - v2;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v10);
    }

    v11 = (16 * v5);
    v7 = 16 * v5 + 16;
    *v11 = 0;
    v11[1] = 0;
    memcpy(0, v2, v4);
    v12 = a1[2];
    a1[2] = 0;
    a1[3] = v7;
    a1[4] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v7 = (v3 + 16);
    *v3 = 0;
    *(v3 + 1) = 0;
  }

  a1[3] = v7;
  return v5;
}

BOOL CGRectIsIntegral(double a1, double a2, double a3, double a4)
{
  if (a1 == INFINITY || a2 == INFINITY)
  {
    return 1;
  }

  if (a1 == a1 && a2 == a2 && a3 == a3)
  {
    return a4 == a4;
  }

  return 0;
}

double __RIPStyleFocusRing_block_invoke()
{
  rips_f_cs = CGColorSpaceCreateDeviceGray();
  if (rips_f_cs)
  {
    unk_1EA867CA0 = *&off_1EF238420;
    result = *&xmmword_1EF238450;
    *&qword_1EA867CE0 = *off_1EF238460;
    *&RIPStyleFocusRing_rips_f_cls = rips_f_super;
    *(&RIPStyleFocusRing_rips_f_cls + 1) = rips_f_size;
    qword_1EA867CA8 = rips_f_release;
    *&xmmword_1EA867CB0 = rips_f_Create;
    *(&xmmword_1EA867CB0 + 1) = rips_f_Growth;
    qword_1EA867CC0 = rips_f_ColorSpace;
    qword_1EA867CC8 = rips_f_BltShape;
    *&xmmword_1EA867CD0 = rips_f_BltGlyph;
    *(&xmmword_1EA867CD0 + 1) = rips_f_BltImage;
    qword_1EA867CE0 = rips_f_BltShade;
  }

  return result;
}

void *rips_f_BltShade(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, uint64_t a8)
{
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  v9 = (v8 + 12);
  if (a4)
  {
    v9 = a4;
  }

  if (a5)
  {
    v9 = a5;
  }

  return rips_f_DrawRing(a1, a2, a3, a4, v9, 0, 0, 0, a5, a6, a7, a8);
}

void *rips_f_DrawRing(uint64_t a1, int *a2, uint64_t a3, int *a4, int *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, uint64_t a12)
{
  v132 = *MEMORY[0x1E69E9840];
  v125 = 0uLL;
  v12 = *(a12 + 48);
  v128[2] = *(a12 + 32);
  v129 = v12;
  v130 = *(a12 + 64);
  v13 = *(a12 + 16);
  v128[0] = *a12;
  v128[1] = v13;
  v14 = vcvtmd_s64_f64(*(a1 + 104) + 0.5);
  if (v14 < 1)
  {
    return 0;
  }

  v15 = a8;
  v16 = a6;
  v17 = a4;
  v122 = a11;
  v123 = a10;
  v119 = a9;
  v120 = a7;
  v126 = 0uLL;
  v121 = a6;
  if (!a4 || a4 == a5)
  {
    v126 = *a5;
    if (!v126.i32[2] || !v126.i32[3])
    {
      goto LABEL_25;
    }
  }

  else if (!CGSBoundsIntersection(a4, a5, &v126))
  {
    goto LABEL_25;
  }

  if (*(a1 + 144) == 1)
  {
    if (!a3)
    {
      v125 = v126;
LABEL_16:
      v21.i64[0] = 0xFFFFFFFF00000000;
      v21.i64[1] = 0xFFFFFFFF00000000;
      v125 = vaddq_s64(vbslq_s8(v21, v125, vaddq_s64(v125, xmmword_18439CBC0)), xmmword_18439CBD0);
      goto LABEL_20;
    }

    if (CGSBoundsIntersection((a3 + 12), v126.i32, &v125))
    {
      goto LABEL_16;
    }

LABEL_25:
    v26 = *(a1 + 152);
    *(a1 + 152) = 0;
    goto LABEL_26;
  }

  *v131 = 0uLL;
  if (a3)
  {
    if ((CGSBoundsIntersection(a2 + 3, (a3 + 12), v131) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v131 = *(a2 + 3);
    if (!LODWORD(v131[2]) || !LODWORD(v131[3]))
    {
      goto LABEL_25;
    }
  }

  v126.i64[0] = (v126.i32[0] + ~v14) | ((v126.i32[1] + ~v14) << 32);
  v126.i64[1] = (v126.i32[2] - 2 * ~v14) | ((v126.i32[3] - 2 * ~v14) << 32);
  LODWORD(v131[0]) += ~v14;
  LODWORD(v131[1]) += ~v14;
  LODWORD(v131[2]) -= 2 * ~v14;
  LODWORD(v131[3]) -= 2 * ~v14;
  if (!CGSBoundsIntersection(v126.i32, v131, &v125))
  {
    goto LABEL_25;
  }

LABEL_20:
  v22 = a2;
  v23 = *(a1 + 152);
  if (v23)
  {
    v125.i64[0] = CGSBoundsUnion(v125.i64[0], v125.i64[1], *(v23 + 12), *(v23 + 20));
    v125.i64[1] = v24;
    v25 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, v125.i64, v23, v22[13]);
    if (v25)
    {
      v26 = v25;
      v27 = *(a1 + 152);
      if (v27)
      {
        (*(*v27 + 24))(v27);
      }

      *(a1 + 152) = 0;
      v28 = v22;
      goto LABEL_31;
    }

    return 0;
  }

  v28 = v22;
  v26 = RIPLayerCreate(RIPLayer_ripl_class, &v125, 0, 0, v22[13], a6, a7, a8);
  if (!v26)
  {
    return 0;
  }

LABEL_31:
  v118 = a3;
  if (v120)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  LODWORD(v128[0]) = v30;
  *&v129 = 0x3FF0000000000000;
  v31 = v123;
  if (v123)
  {
    v32 = *v123;
    if (*v123)
    {
      v117 = v15;
      v31 = v123;
      while (v32 != RIPLayer_ripl_class)
      {
        if (*v32)
        {
          v32 = (*v32)();
          if (v32)
          {
            continue;
          }
        }

        v15 = v117;
        goto LABEL_41;
      }

      v15 = v117;
      if (*(v123 + 64))
      {
        v31 = RIPLayerConvertLayer(RIPLayer_ripl_class, *(v123 + 28) & 8, v123, v28[13]);
        if (!v31)
        {
          goto LABEL_178;
        }
      }
    }
  }

LABEL_41:
  if (v121)
  {
    v33 = RIPLayerBltShape(v26, 0, 0, v121, v31, v122, v128, a8);
LABEL_172:
    v108 = v33;
    goto LABEL_173;
  }

  if (v120)
  {
    v33 = RIPLayerBltGlyph(v26, 0, 0, v120, v31, v122, 0, v128);
    goto LABEL_172;
  }

  if (v15)
  {
    v33 = RIPLayerBltImage(v26, 0, 0, v15, v128, a6, a7, a8);
    goto LABEL_172;
  }

  if (v119)
  {
    v33 = RIPLayerBltShade(v26, 0, 0, v119, v31, v128, a7, a8);
    goto LABEL_172;
  }

  v108 = 1;
LABEL_173:
  if (v31 != v123 && v31)
  {
    (*(*v31 + 24))(v31);
  }

  if ((v108 & 1) == 0)
  {
    goto LABEL_178;
  }

  a3 = v118;
  a2 = v22;
  v16 = v121;
LABEL_26:
  if (*(a1 + 120) == 2 && (*(a1 + 13) & 0x10) == 0)
  {
    if (v16)
    {
      v29 = RIPLayerBltShape(a2, a3, v17, v16, v123, v122, a12, a8);
      goto LABEL_56;
    }

    if (v120)
    {
      v29 = RIPLayerBltGlyph(a2, a3, v17, v120, v123, v122, 0, a12);
      goto LABEL_56;
    }

    if (v15)
    {
      v29 = RIPLayerBltImage(a2, a3, v17, v15, a12, a6, a7, a8);
      goto LABEL_56;
    }

    if (v119)
    {
      v29 = RIPLayerBltShade(a2, a3, v17, v119, v123, a12, a7, a8);
LABEL_56:
      v34 = v29;
      if (!v26)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  v34 = 1;
  if (v26)
  {
LABEL_59:
    v125 = *(v26 + 12);
    v125.i32[0] -= v14;
    v125.i32[1] -= v14;
    v125.i32[2] += 2 * v14;
    v125.i32[3] += 2 * v14;
  }

LABEL_60:
  if (*(a1 + 144) != 1 || (v35 = *(a1 + 140), v36 = __OFSUB__(v35, 1), --v35, *(a1 + 140) = v35, (v35 < 0) ^ v36))
  {
    if (((v26 != 0) & v34) != 1)
    {
      goto LABEL_112;
    }

    if (*(a1 + 132) && *(a1 + 136) && !CGSBoundsIntersection(v125.i32, (a1 + 124), &v125))
    {
      v34 = 1;
      goto LABEL_113;
    }

    if (rips_f_DrawRing_onceToken != -1)
    {
      dispatch_once(&rips_f_DrawRing_onceToken, &__block_literal_global_3_10281);
    }

    if (rips_f_DrawRing_debug_focus_ring_masks == 1)
    {
      RIPLayerSaveTGA(v26, "/tmp/original_mask");
    }

    v124 = 0;
    if (!get_integer_property("CGFocusRingStyle", copy_local_domain_value, &v124) || v124 == 1)
    {
      v46 = rips_f_BlurRingRoundedDilation(v26, v14, *(a1 + 112));
      goto LABEL_77;
    }

    if (!v124)
    {
      v116 = a2;
      v117 = v15;
      v118 = a3;
      v40 = *(a1 + 112);
      v127 = *(v26 + 12);
      v41 = *(v26 + 5);
      v42 = *(v26 + 6);
      v43 = *(v26 + 12);
      v44 = *(v26 + 7);
      if (v43 < 0x401)
      {
        v45 = v131;
      }

      else
      {
        v45 = malloc_type_malloc(*(v26 + 12), 0x28B5BD9AuLL);
      }

      if (v42)
      {
        v79 = 0;
        v80 = vcvtmd_s64_f64(v40 * 255.0);
        v81 = v44 + v43;
        v82 = v45 - 1;
        while (!v41)
        {
LABEL_155:
          v44 += v43;
          ++v79;
          v81 += v43;
          if (v79 == v42)
          {
            goto LABEL_156;
          }
        }

        v83 = 0;
        while (1)
        {
          v84 = &v82[v83];
          v85 = *(v44 + v83);
          if (v80 > v85)
          {
            break;
          }

          LOBYTE(v88) = 0;
LABEL_154:
          *(v44 + v83) = v88;
          v84[1] = v85;
          if (v41 == ++v83)
          {
            goto LABEL_155;
          }
        }

        if (v79)
        {
          v86 = v84[1];
          if (v83)
          {
LABEL_131:
            v87 = v82[v83];
LABEL_135:
            if (v83 >= v41 - 1)
            {
              v89 = 0;
            }

            else
            {
              v89 = *(v44 + v83 + 1);
            }

            if (v79 >= v42 - 1)
            {
              v90 = 0;
            }

            else
            {
              v90 = *(v81 + v83);
            }

            v94 = v86 >= v80 || v87 >= v80 || v89 >= v80 || v90 >= v80;
            v88 = v94 << 31 >> 31;
            goto LABEL_154;
          }
        }

        else
        {
          v86 = 0;
          if (v83)
          {
            goto LABEL_131;
          }
        }

        v87 = 0;
        goto LABEL_135;
      }

LABEL_156:
      if (v45 != v131)
      {
        free(v45);
      }

      *&v127 = (v127 - v14) | ((DWORD1(v127) - v14) << 32);
      *(&v127 + 1) = (DWORD2(v127) + 2 * v14) | ((HIDWORD(v127) + 2 * v14) << 32);
      v95 = RIPLayerCreate(RIPLayer_ripl_class, &v127, 0, 0, *(v26 + 13), v37, v38, v39);
      v15 = v117;
      a3 = v118;
      a2 = v116;
      v46 = v95;
      if (!v95)
      {
LABEL_77:
        if (v46)
        {
          if (rips_f_DrawRing_debug_focus_ring_masks == 1)
          {
            RIPLayerSaveTGA(v46, "/tmp/focus_ring_mask");
          }

          v115 = v46;
          v47 = *(a1 + 88);
          if (!v47)
          {
            if (default_focus_ring_color_predicate != -1)
            {
              dispatch_once(&default_focus_ring_color_predicate, &__block_literal_global_11_10285);
            }

            v47 = default_focus_ring_color_focus_ring_color;
          }

          Cache = CGColorTransformGetCache(*(a12 + 16));
          v118 = a3;
          v116 = a2;
          if (Cache)
          {
            v50 = Cache[2];
            if (v50)
            {
              v51 = *(*(v50 + 24) + 48);
              if (v51 >> 61)
              {
                v113 = &v111;
                MEMORY[0x1EEE9AC00](Cache, v49);
                v112 = &v110;
                v59 = 0;
LABEL_96:
                v62 = *(a12 + 16);
                v117 = v15;
                v111 = v51;
                if (v47)
                {
                  if ((v47 & 0x8000000000000000) != 0)
                  {
                    ColorSpace = CGTaggedColorGetColorSpace(v47, v52, v53, v54, v55, v56, v57, v58);
                  }

                  else
                  {
                    ColorSpace = *(v47 + 24);
                  }
                }

                else
                {
                  ColorSpace = 0;
                }

                v114 = v17;
                v64 = *(a12 + 8);
                Components = CGColorGetComponents(v47);
                if (CGColorTransformConvertColorComponents(v62, ColorSpace, v64, Components, v59))
                {
                  RIPColorCreateWithColor(*(a12 + 24), v59, v111, 1.0);
                  v73 = v72;
                }

                else
                {
                  v73 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
                  *v73 = &ripc_class;
                  v73[1] = 0;
                  v73[2] = 0;
                  v73[3] = 0;
                  *(v73 + 39) = 1065353216;
                }

                v74 = v117;
                a3 = v118;
                if (v59 != v112)
                {
                  free(v59);
                }

                LODWORD(v128[0]) = 2;
                v75 = *(a1 + 96);
                *&v129 = v75;
                a2 = v116;
                if ((*(a1 + 13) & 0x10) != 0)
                {
                  RIPLayerDefine(v116, &v125, v66, v67, v68, v69, v70, v71);
                }

                if (*(a1 + 144))
                {
                  v76 = 0;
                }

                else
                {
                  v76 = a3;
                }

                v77 = v115;
                v34 = RIPLayerBltShape(a2, v76, v125.i32, v115, v73, 0, v128, v71);
                free(v73);
                (*(*v77 + 24))(v77);
                v15 = v74;
                v17 = v114;
LABEL_112:
                if (!v26)
                {
                  goto LABEL_114;
                }

LABEL_113:
                (*(*v26 + 24))(v26);
                goto LABEL_114;
              }

              Cache = (8 * v51);
            }

            else
            {
              v51 = 0;
              Cache = 0;
            }
          }

          else
          {
            v51 = 0;
          }

          v113 = &v111;
          v60 = MEMORY[0x1EEE9AC00](Cache, v49);
          v112 = (&v111 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
          if (v51 <= 0x1FFFFFFFFFFFFFFELL)
          {
            v59 = (&v111 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
          }

          else
          {
            v59 = 0;
          }

          if (v51 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
          {
            v59 = malloc_type_malloc(v60, 0x6E66BD91uLL);
          }

          goto LABEL_96;
        }

        goto LABEL_178;
      }

      if (v14 >= 5)
      {
        v102 = v14 + 1;
        v103 = 1.0;
        v104 = malloc_type_malloc(8 * v102, 0x100004000313F17uLL);
        v105 = v104;
        *v104 = 1.0;
        v106 = 1;
        do
        {
          v103 = v103 - 1.0 / v102;
          v104[v106++] = v103;
        }

        while (v102 != v106);
        v107 = RIPLayerSymmetricConvolve(v46, v26, v104, v14);
        free(v105);
        a2 = v116;
        if ((v107 & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if ((RIPLayerSymmetricConvolve(v95, v26, *(&off_1E6E2D1E8 + v14), v14) & 1) == 0)
      {
LABEL_161:
        (*(*v46 + 24))(v46);
        v46 = 0;
LABEL_166:
        v15 = v117;
        goto LABEL_77;
      }

      v131[0] = 0.0;
      v131[1] = v14 + 1.0;
      RIPLayerResample(v46, v131, v96, v97, v98, v99, v100, v101);
      goto LABEL_166;
    }

LABEL_178:
    (*(*v26 + 24))(v26);
    return 0;
  }

  *(a1 + 152) = v26;
LABEL_114:
  if (*(a1 + 120) == 1 && (*(a1 + 13) & 0x10) == 0)
  {
    if (v121)
    {
      return RIPLayerBltShape(a2, a3, v17, v121, v123, v122, a12, a8);
    }

    if (v120)
    {
      return RIPLayerBltGlyph(a2, a3, v17, v120, v123, v122, 0, a12);
    }

    if (v15)
    {
      return RIPLayerBltImage(a2, a3, v17, v15, a12, a6, a7, a8);
    }

    if (v119)
    {
      return RIPLayerBltShade(a2, a3, v17, v119, v123, a12, a7, a8);
    }
  }

  return v34;
}

char *rips_f_BlurRingRoundedDilation(uint64_t a1, int a2, double a3)
{
  v72 = *(a1 + 12);
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 20);
  v8 = *(a1 + 56);
  v9 = vcvtmd_s64_f64(a3 * 255.0);
  v10 = *(a1 + 48);
  v11 = v8 + v10;
  v12 = 1;
  while (!v7)
  {
LABEL_20:
    v8 += v10;
    ++v6;
    v11 += v10;
    v12 = v6 < v3;
    if (v6 == v3)
    {
      return 0;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v8 + v13);
    if (v13 < v7 - 1)
    {
      v14 = *(v8 + v13 + 1);
    }

    v15 = *(v8 + v13);
    if (v6 < v3 - 1)
    {
      v15 = *(v11 + v13);
    }

    if (v9 <= *(v8 + v13))
    {
      break;
    }

    if (v9 <= v14 || v9 <= v15)
    {
      goto LABEL_22;
    }

LABEL_19:
    if (v7 == ++v13)
    {
      goto LABEL_20;
    }
  }

  if (v9 <= v14 && v9 <= v15)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (!v12)
  {
    return 0;
  }

  *&v72 = (v72 - a2) | ((DWORD1(v72) - a2) << 32);
  *(&v72 + 1) = (DWORD2(v72) + 2 * a2) | ((HIDWORD(v72) + 2 * a2) << 32);
  v18 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v72, a1, *(a1 + 52));
  v19 = v18;
  if (!v18)
  {
    return v19;
  }

  v20 = *(v18 + 12);
  if (!v20)
  {
    return 0;
  }

  bzero(*(v18 + 7), (*(v18 + 6) * v20));
  v21 = *(a1 + 24);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 20);
    v26 = *(a1 + 48);
    v27 = vdupq_n_s8(v9);
    do
    {
      v28 = *(a1 + 56);
      v29 = v28 + (v26 * v24);
      v30 = -v29 & 0xF;
      if (v25 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v25;
      }

      if (v31)
      {
        v32 = (v23 - v28) & 0xF;
        if (v25 < v32)
        {
          v32 = v25;
        }

        v33 = (v28 + v22);
        v34 = v32;
        do
        {
          if (v9 > *v33)
          {
            *v33 = 0;
          }

          ++v33;
          --v34;
        }

        while (v34);
      }

      else
      {
        v31 = 0;
        LODWORD(v32) = 0;
      }

      v35 = (v29 + v31);
      v36 = v32;
      for (i = v32 + 64; i <= v25; i = i + 64)
      {
        LODWORD(v32) = i;
        v38 = vbicq_s8(v35[1], vcgtq_u8(v27, v35[1]));
        v39 = vbicq_s8(v35[2], vcgtq_u8(v27, v35[2]));
        v40 = vbicq_s8(v35[3], vcgtq_u8(v27, v35[3]));
        *v35 = vbicq_s8(*v35, vcgtq_u8(v27, *v35));
        v35[1] = v38;
        v35[2] = v39;
        v35[3] = v40;
        v35 += 4;
        v36 = i;
      }

      for (j = v36 + 16; j <= v25; j = j + 16)
      {
        LODWORD(v32) = j;
        *v35 = vbicq_s8(*v35, vcgtq_u8(v27, *v35));
        ++v35;
      }

      if (v32 < v25)
      {
        v42 = v25 - v32;
        v43 = (v28 + v22 + v32);
        do
        {
          if (v9 > *v43)
          {
            *v43 = 0;
          }

          ++v43;
          --v42;
        }

        while (v42);
      }

      ++v24;
      v23 -= v26;
      v22 += v26;
    }

    while (v24 != v21);
  }

  v44 = 2 * a2;
  v46 = *(v19 + 5);
  v45 = *(v19 + 6);
  v47 = malloc_type_calloc(v45, *(v19 + 12), 0xF8ABE493uLL);
  v48 = v47;
  v49 = *(v19 + 12);
  if (*(a1 + 24) > 0)
  {
    v50 = 0;
    v51 = &v47[(v49 * a2) + a2];
    v52 = *(a1 + 56);
    do
    {
      memcpy(v51, v52, *(a1 + 20));
      v52 += *(a1 + 48);
      v49 = *(v19 + 12);
      v51 += v49;
      ++v50;
    }

    while (v50 < *(a1 + 24));
  }

  src.data = v48;
  src.height = v45;
  src.width = v46;
  src.rowBytes = v49;
  dest = src;
  dest.data = *(v19 + 7);
  v53 = v44 | 1u;
  v54 = malloc_type_malloc((v53 * v53), 0xE004FB88uLL);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v56 = CGBitmapContextCreateWithData(v54, v53, v53, 8uLL, v53, DeviceGray, 0, 0, 0);
  CGColorSpaceRelease(DeviceGray);
  v76.origin.x = 0.0;
  v76.origin.y = 0.0;
  v76.size.width = v53;
  v76.size.height = v53;
  v57 = CGPathCreateWithEllipseInRect(v76, 0);
  CGContextSetGrayFillColor(v56, 1.0, 1.0);
  v77.origin.x = 0.0;
  v77.origin.y = 0.0;
  v77.size.width = v53;
  v77.size.height = v53;
  CGContextFillRect(v56, v77);
  CGContextSetGrayFillColor(v56, 0.0, 1.0);
  CGContextAddPath(v56, v57);
  if (v57)
  {
    CFRelease(v57);
  }

  CGContextDrawPath(v56, kCGPathFill);
  if (v56)
  {
    CFRelease(v56);
  }

  vImageDilate_Planar8(&src, &dest, 0, 0, v54, v53, v53, 0x18u);
  free(v54);
  free(v48);
  v75 = 0;
  integer_property = get_integer_property("CGFocusRingShrinkMask", copy_local_domain_value, &v75);
  v59 = v75;
  if (!integer_property)
  {
    v59 = 1;
  }

  if (v59 >= 1)
  {
    v61 = *(a1 + 20);
    v60 = *(a1 + 24);
    src.data = *(a1 + 56);
    src.height = v60;
    v62 = *(a1 + 48);
    src.width = v61;
    src.rowBytes = v62;
    dest = src;
    vImageMin_Planar8(&src, &dest, 0, 0, 0, (2 * v59) | 1u, (2 * v59) | 1u, 0x18u);
  }

  v63 = *(a1 + 24);
  if (v63 >= 1)
  {
    v64 = 0;
    v65 = *(v19 + 12);
    v66 = *(v19 + 7) + (*(a1 + 16) - *(v19 + 4)) * v65 - *(v19 + 3) + *(a1 + 12);
    v67 = *(a1 + 56);
    LODWORD(v68) = *(a1 + 20);
    do
    {
      if (v68 >= 1)
      {
        v69 = 0;
        do
        {
          v70 = *(v66 + v69) - *(v67 + v69);
          *(v66 + v69++) = v70 & ~(v70 >> 31);
          v68 = *(a1 + 20);
        }

        while (v69 < v68);
        v65 = *(v19 + 12);
        v63 = *(a1 + 24);
      }

      v67 += *(a1 + 48);
      v66 += v65;
      ++v64;
    }

    while (v64 < v63);
  }

  return v19;
}