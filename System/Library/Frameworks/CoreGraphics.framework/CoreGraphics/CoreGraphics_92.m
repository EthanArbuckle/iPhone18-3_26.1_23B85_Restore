void CMYKF_mark_pixelmask(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, double a9, double a10)
{
  v10 = *(a1 + 48);
  v11 = *(a1 + 136);
  v12 = *(a1 + 12);
  v13 = *(a1 + 16);
  if (v10)
  {
    v14 = *(a1 + 32) >> 2;
    v15 = (v10 + 4 * v14 * v13 + 4 * v12);
    v16 = -1;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = 0;
    if (!v11)
    {
      return;
    }
  }

  v18 = *(a1 + 4);
  v17 = *(a1 + 8);
  v19 = *(a1 + 96);
  v682 = *(a1 + 88);
  v20 = *(a1 + 28) >> 4;
  v21 = (*(a1 + 40) + 16 * v20 * v13 + 16 * v12);
  v22 = *(a1 + 124);
  v23 = (v11 + *(a1 + 108) * v22 + *(a1 + 104));
  v24 = *(a1 + 56);
  v25 = *(a1 + 60);
  v26 = *(a1 + 76);
  if ((*a1 & 0xFF00) != 0x100)
  {
    v30 = *(a1 + 64);
    v31 = *(a1 + 68);
    v27 = v26 >> 4;
    if (v19)
    {
      v28 = *(a1 + 80) >> 2;
      v29 = 1;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v33 = *(a1 + 88);
    v38 = v682 + 16 * v27 * v31;
    v32 = v16 & 1;
    v37 = 1;
    v39 = v682;
    goto LABEL_19;
  }

  v27 = v26 >> 4;
  if (v19)
  {
    v28 = *(a1 + 80) >> 2;
    v19 += 4 * v28 * v25 + 4 * v24;
    v29 = -1;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v32 = v16;
  v33 = (v682 + 16 * v27 * v25 + 16 * v24);
  if (v27 == v20)
  {
    v34 = v21 - v33;
    if (v34 >= 1)
    {
      if (v34 <= v18)
      {
        v21 += v18 - 1;
        v33 += v18 - 1;
        v23 += v18 - 1;
        v15 += v16 & (v18 - 1);
        v37 = -1;
        v27 = v20;
        v19 += 4 * (v29 & (v18 - 1));
        goto LABEL_16;
      }

      v35 = v17 - 1;
      v36 = &v33[v20 * v35];
      if (v21 <= &v36[v18 - 1])
      {
        v21 += v20 * v35;
        v27 = -v20;
        v23 += v22 * v35;
        v22 = -v22;
        v15 += v14 * v35;
        v14 = -v14;
        v32 = v16 & 1;
        v19 += 4 * v28 * v35;
        v28 = -v28;
        v29 &= 1u;
        v37 = 1;
        v33 = v36;
        v20 = -v20;
        goto LABEL_16;
      }
    }
  }

  v32 = v16 & 1;
  v29 &= 1u;
  v37 = 1;
LABEL_16:
  v38 = 0;
  v39 = 0;
  v682 = -1;
  v31 = v28;
  v30 = v27;
LABEL_19:
  v681 = v32;
  v40 = v37 * v18;
  if (v38)
  {
    v41 = v25 % v31;
    v42 = &v33[v27 * v41];
    v43 = v24 % v30;
    v33 = &v42[v43];
    v44 = v30;
    v682 = &v42[v30];
    v45 = v19 + 4 * v28 * v41 + 4 * v43;
    if (v29)
    {
      v19 = v45;
    }

    v678 = v19;
    v679 = &v42[v43];
  }

  else
  {
    v678 = v19;
    v679 = v39;
    v27 -= v40;
    v28 -= v29 * v18;
    v44 = v30;
  }

  v46 = v22 - v40;
  v47 = v20 - v40;
  v677 = v14 - v681 * v18;
  v48 = v37;
  v49 = v31;
  v666 = v27;
  v667 = v18;
  v664 = v47;
  v665 = v46;
  v662 = v28;
  v663 = v38;
  v680 = v29;
  switch(a2)
  {
    case 0:
      if (v681)
      {
        do
        {
          v50 = v18;
          do
          {
            v51 = *v23;
            if (*v23)
            {
              if (v51 == 255)
              {
                v21->i64[0] = 0;
                v21->i64[1] = 0;
                *v15 = 0;
              }

              else
              {
                v52 = (v51 * -0.0039216) + 1.0;
                v53 = bswap32(COERCE_UNSIGNED_INT(v52 * COERCE_FLOAT(bswap32(*v15))));
                *v21 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v21), v52));
                *v15 = v53;
              }
            }

            v23 += v37;
            v15 += v681;
            v21 += v37;
            --v50;
          }

          while (v50);
          v23 += v46;
          v21 += v47;
          v15 += v677;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      else
      {
        do
        {
          v594 = v18;
          do
          {
            v595 = *v23;
            if (*v23)
            {
              if (v595 == 255)
              {
                v21->i64[0] = 0;
                v21->i64[1] = 0;
              }

              else
              {
                *v21 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v21), (v595 * -0.0039216) + 1.0));
              }
            }

            v23 += v37;
            v21 += v37;
            --v594;
          }

          while (v594);
          v23 += v46;
          v21 += v47;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      return;
    case 1:
      if (v681)
      {
        if (v29)
        {
          v298 = -v44;
          v299 = -(v27 * v31);
          v300 = -(v28 * v31);
          v301 = v678;
          do
          {
            v302 = v18;
            do
            {
              v303 = *v23;
              if (*v23)
              {
                if (v303 == 255)
                {
                  *v21 = *v33;
                  *v15 = *v301;
                }

                else
                {
                  v304 = v303 * 0.0039216;
                  v305 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v304) * COERCE_FLOAT(bswap32(*v15))) + (COERCE_FLOAT(bswap32(*v301)) * v304)));
                  *v21 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), 1.0 - v304), vrev32q_s8(*v33), v304));
                  *v15 = v305;
                }
              }

              v23 += v37;
              v306 = &v33[v37];
              v307 = &v301[v29];
              if (v306 >= v682)
              {
                v308 = v298;
              }

              else
              {
                v308 = 0;
              }

              v301 = &v307[v308];
              v33 = &v306[v308];
              v15 += v681;
              v21 += v37;
              --v302;
            }

            while (v302);
            if (v38)
            {
              v309 = &v679[v27];
              if (v309 >= v38)
              {
                v310 = v300;
              }

              else
              {
                v310 = 0;
              }

              v311 = &v678[v28 + v310];
              if (v309 >= v38)
              {
                v312 = v299;
              }

              else
              {
                v312 = 0;
              }

              v33 = (v309 + 16 * v312);
              v682 += 16 * v312 + 16 * v27;
              v678 += v28 + v310;
              v679 = v33;
              v301 = v311;
            }

            else
            {
              v33 += v27;
              v301 += v28;
            }

            v23 += v46;
            v21 += v47;
            v15 += v677;
            LODWORD(v17) = v17 - 1;
          }

          while (v17);
        }

        else
        {
          v620 = -(v27 * v31);
          do
          {
            v621 = v18;
            do
            {
              v622 = *v23;
              if (*v23)
              {
                if (v622 == 255)
                {
                  v623 = *v33;
                  v624 = 32831;
                }

                else
                {
                  v625 = v622 * 0.0039216;
                  v624 = bswap32(COERCE_UNSIGNED_INT(v625 + ((1.0 - v625) * COERCE_FLOAT(bswap32(*v15)))));
                  v623 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), 1.0 - v625), vrev32q_s8(*v33), v625));
                }

                *v21 = v623;
                *v15 = v624;
              }

              v23 += v48;
              v626 = &v33[v48];
              if (v626 >= v682)
              {
                v627 = -v44;
              }

              else
              {
                v627 = 0;
              }

              v33 = &v626[v627];
              v15 += v681;
              v21 += v48;
              --v621;
            }

            while (v621);
            v23 += v46;
            v21 += v47;
            v15 += v677;
            v628 = v679;
            v629 = &v679[v27];
            if (v629 >= v38)
            {
              v630 = v620;
            }

            else
            {
              v630 = 0;
            }

            v631 = v682;
            v632 = (v629 + 16 * v630);
            v633 = v682 + 16 * v630 + 16 * v27;
            if (v38)
            {
              v631 = v633;
            }

            v682 = v631;
            if (v38)
            {
              v628 = v632;
            }

            v679 = v628;
            if (v38)
            {
              v33 = v632;
            }

            else
            {
              v33 += v27;
            }

            LODWORD(v17) = v17 - 1;
          }

          while (v17);
        }
      }

      else
      {
        v596 = -v44;
        do
        {
          v597 = v18;
          do
          {
            v598 = *v23;
            if (*v23)
            {
              if (v598 == 255)
              {
                v599 = *v33;
              }

              else
              {
                v599 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), 1.0 - (v598 * 0.0039216)), vrev32q_s8(*v33), v598 * 0.0039216));
              }

              *v21 = v599;
            }

            v23 += v48;
            v600 = &v33[v48];
            if (v600 >= v682)
            {
              v601 = v596;
            }

            else
            {
              v601 = 0;
            }

            v33 = &v600[v601];
            v21 += v48;
            --v597;
          }

          while (v597);
          v23 += v46;
          v21 += v47;
          v602 = v679;
          v603 = &v679[v27];
          if (v603 >= v38)
          {
            v604 = -(v27 * v49);
          }

          else
          {
            v604 = 0;
          }

          v605 = v682;
          v606 = (v603 + 16 * v604);
          v607 = v682 + 16 * v604 + 16 * v27;
          if (v38)
          {
            v605 = v607;
          }

          v682 = v605;
          if (v38)
          {
            v602 = v606;
          }

          v679 = v602;
          if (v38)
          {
            v33 = v606;
          }

          else
          {
            v33 += v27;
          }

          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      return;
    case 2:
      v220 = -v44;
      v221 = -(v27 * v31);
      v222 = -(v28 * v31);
      if (v681)
      {
        v223 = v678;
        while (1)
        {
          v224 = v18;
          do
          {
            v225 = *v23;
            if (!*v23)
            {
              goto LABEL_288;
            }

            if (v225 == 255)
            {
              v226 = *v223;
              v227 = COERCE_FLOAT(bswap32(*v223));
              if (v227 >= 1.0)
              {
                v231 = *v33;
                goto LABEL_287;
              }

              if (v227 <= 0.0)
              {
                goto LABEL_288;
              }

              v226 = bswap32(COERCE_UNSIGNED_INT(v227 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v227))));
              v228 = vmlaq_n_f32(vrev32q_s8(*v33), vrev32q_s8(*v21), 1.0 - v227);
            }

            else
            {
              v229 = v225 * 0.0039216;
              v230 = v229 * COERCE_FLOAT(bswap32(*v223));
              if (v230 <= 0.0)
              {
                goto LABEL_288;
              }

              v226 = bswap32(COERCE_UNSIGNED_INT(v230 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v230))));
              v228 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v33), v229), vrev32q_s8(*v21), 1.0 - v230);
            }

            v231 = vrev32q_s8(v228);
LABEL_287:
            *v21 = v231;
            *v15 = v226;
LABEL_288:
            v23 += v37;
            v232 = &v33[v37];
            v233 = &v223[v29];
            if (v232 >= v682)
            {
              v234 = v220;
            }

            else
            {
              v234 = 0;
            }

            v223 = &v233[v234];
            v33 = &v232[v234];
            v15 += v681;
            v21 += v37;
            --v224;
          }

          while (v224);
          if (v38)
          {
            v235 = &v679[v27];
            if (v235 >= v38)
            {
              v236 = v222;
            }

            else
            {
              v236 = 0;
            }

            v237 = &v678[v28 + v236];
            if (v235 >= v38)
            {
              v238 = v221;
            }

            else
            {
              v238 = 0;
            }

            v33 = (v235 + 16 * v238);
            v682 += 16 * v238 + 16 * v27;
            v678 += v28 + v236;
            v679 = v33;
            v223 = v237;
          }

          else
          {
            v33 += v27;
            v223 += v28;
          }

          v23 += v46;
          v21 += v47;
          v15 += v677;
          LODWORD(v17) = v17 - 1;
          if (!v17)
          {
            return;
          }
        }
      }

      v568 = v678;
LABEL_796:
      v569 = v18;
      while (1)
      {
        v570 = *v23;
        if (*v23)
        {
          if (v570 == 255)
          {
            v571 = COERCE_FLOAT(bswap32(*v568));
            if (v571 >= 1.0)
            {
              v572 = *v33;
              goto LABEL_805;
            }

            if (v571 > 0.0)
            {
              v572 = vrev32q_s8(vmlaq_n_f32(vrev32q_s8(*v33), vrev32q_s8(*v21), 1.0 - v571));
LABEL_805:
              *v21 = v572;
            }
          }

          else
          {
            v573 = v570 * 0.0039216;
            v574 = COERCE_FLOAT(bswap32(*v568));
            if ((v573 * v574) > 0.0)
            {
              v572 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v33), v573), vrev32q_s8(*v21), 1.0 - (v573 * v574)));
              goto LABEL_805;
            }
          }
        }

        v23 += v48;
        v575 = &v33[v48];
        v576 = &v568[v29];
        if (v575 >= v682)
        {
          v577 = v220;
        }

        else
        {
          v577 = 0;
        }

        v568 = &v576[v577];
        v33 = &v575[v577];
        v21 += v48;
        if (!--v569)
        {
          if (v38)
          {
            v578 = &v679[v27];
            if (v578 >= v38)
            {
              v579 = v222;
            }

            else
            {
              v579 = 0;
            }

            v580 = &v678[v28 + v579];
            if (v578 >= v38)
            {
              v581 = v221;
            }

            else
            {
              v581 = 0;
            }

            v33 = (v578 + 16 * v581);
            v682 += 16 * v581 + 16 * v27;
            v678 += v28 + v579;
            v679 = v33;
            v568 = v580;
          }

          else
          {
            v33 += v27;
            v568 += v28;
          }

          v23 += v46;
          v21 += v47;
          LODWORD(v17) = v17 - 1;
          if (!v17)
          {
            return;
          }

          goto LABEL_796;
        }
      }

    case 3:
      v255 = -v44;
      v256 = -(v27 * v31);
      v257 = -(v28 * v31);
      v258 = v678;
      do
      {
        v259 = v18;
        do
        {
          v260 = *v23;
          if (*v23)
          {
            if (v260 == 255)
            {
              if (v29)
              {
                v261 = COERCE_FLOAT(bswap32(*v258));
              }

              else
              {
                v261 = 1.0;
              }

              v263 = COERCE_FLOAT(bswap32(*v15));
              v264 = bswap32(COERCE_UNSIGNED_INT(v261 * v263));
              v265 = vmulq_n_f32(vrev32q_s8(*v33), v263);
            }

            else
            {
              if (v29)
              {
                v262 = COERCE_FLOAT(bswap32(*v258));
              }

              else
              {
                v262 = 1.0;
              }

              v266 = v260 * 0.0039216;
              v267 = COERCE_FLOAT(bswap32(*v15));
              v268 = v266 * v267;
              v269 = 1.0 - v266;
              v264 = bswap32(COERCE_UNSIGNED_INT((v269 * v267) + (v262 * v268)));
              v265 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), v269), vrev32q_s8(*v33), v268);
            }

            *v21 = vrev32q_s8(v265);
            *v15 = v264;
          }

          v23 += v37;
          v270 = &v33[v37];
          v271 = &v258[v29];
          if (v270 >= v682)
          {
            v272 = v255;
          }

          else
          {
            v272 = 0;
          }

          v258 = &v271[v272];
          v33 = &v270[v272];
          v15 += v681;
          v21 += v37;
          --v259;
        }

        while (v259);
        if (v38)
        {
          v273 = &v679[v27];
          if (v273 >= v38)
          {
            v274 = v257;
          }

          else
          {
            v274 = 0;
          }

          v275 = &v678[v28 + v274];
          if (v273 >= v38)
          {
            v276 = v256;
          }

          else
          {
            v276 = 0;
          }

          v33 = (v273 + 16 * v276);
          v682 += 16 * v276 + 16 * v27;
          v678 += v28 + v274;
          v679 = v33;
          v258 = v275;
        }

        else
        {
          v33 += v27;
          v258 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
      }

      while (v17);
      return;
    case 4:
      v134 = -v44;
      v135 = -(v27 * v31);
      v136 = -(v28 * v31);
      v137 = v678;
      do
      {
        v138 = v18;
        do
        {
          v139 = *v23;
          if (*v23)
          {
            if (v139 == 255)
            {
              if (v29)
              {
                v140 = COERCE_FLOAT(bswap32(*v137));
              }

              else
              {
                v140 = 1.0;
              }

              v142 = 1.0 - COERCE_FLOAT(bswap32(*v15));
              v143 = bswap32(COERCE_UNSIGNED_INT(v140 * v142));
              v144 = vmulq_n_f32(vrev32q_s8(*v33), v142);
            }

            else
            {
              if (v29)
              {
                v141 = COERCE_FLOAT(bswap32(*v137));
              }

              else
              {
                v141 = 1.0;
              }

              v145 = v139 * 0.0039216;
              v146 = COERCE_FLOAT(bswap32(*v15));
              v147 = v145 * (1.0 - v146);
              v148 = 1.0 - v145;
              v143 = bswap32(COERCE_UNSIGNED_INT((v148 * v146) + (v141 * v147)));
              v144 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), v148), vrev32q_s8(*v33), v147);
            }

            *v21 = vrev32q_s8(v144);
            *v15 = v143;
          }

          v23 += v37;
          v149 = &v33[v37];
          v150 = &v137[v29];
          if (v149 >= v682)
          {
            v151 = v134;
          }

          else
          {
            v151 = 0;
          }

          v137 = &v150[v151];
          v33 = &v149[v151];
          v15 += v681;
          v21 += v37;
          --v138;
        }

        while (v138);
        if (v38)
        {
          v152 = &v679[v27];
          if (v152 >= v38)
          {
            v153 = v136;
          }

          else
          {
            v153 = 0;
          }

          v154 = &v678[v28 + v153];
          if (v152 >= v38)
          {
            v155 = v135;
          }

          else
          {
            v155 = 0;
          }

          v33 = (v152 + 16 * v155);
          v682 += 16 * v155 + 16 * v27;
          v678 += v28 + v153;
          v679 = v33;
          v137 = v154;
        }

        else
        {
          v33 += v27;
          v137 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
      }

      while (v17);
      return;
    case 5:
      v351 = -v44;
      v352 = -(v27 * v31);
      v353 = -(v28 * v31);
      v354 = v678;
      do
      {
        v355 = v18;
        do
        {
          if (*v23)
          {
            v356 = COERCE_FLOAT(bswap32(*v15));
            v357 = *v23 * 0.0039216;
            v358 = COERCE_FLOAT(bswap32(*v354));
            v359 = 1.0 - (v357 * v358);
            *v21 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), v359), vmulq_n_f32(vrev32q_s8(*v33), v357), v356));
            *v15 = bswap32(COERCE_UNSIGNED_INT((v359 * v356) + ((v357 * v358) * v356)));
          }

          v23 += v37;
          v360 = &v33[v37];
          v361 = &v354[v29];
          if (v360 >= v682)
          {
            v362 = v351;
          }

          else
          {
            v362 = 0;
          }

          v354 = &v361[v362];
          v33 = &v360[v362];
          v15 += v681;
          v21 += v37;
          --v355;
        }

        while (v355);
        if (v38)
        {
          v363 = &v679[v27];
          if (v363 >= v38)
          {
            v364 = v353;
          }

          else
          {
            v364 = 0;
          }

          v365 = &v678[v28 + v364];
          if (v363 >= v38)
          {
            v366 = v352;
          }

          else
          {
            v366 = 0;
          }

          v33 = (v363 + 16 * v366);
          v682 += 16 * v366 + 16 * v27;
          v678 += v28 + v364;
          v679 = v33;
          v354 = v365;
        }

        else
        {
          v33 += v27;
          v354 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
      }

      while (v17);
      return;
    case 6:
      v404 = -v44;
      v405 = -(v27 * v31);
      v406 = -(v28 * v31);
      v407 = v678;
      while (1)
      {
        v408 = v18;
        do
        {
          v409 = *v23;
          if (!*v23)
          {
            goto LABEL_552;
          }

          v410 = COERCE_FLOAT(bswap32(*v15));
          v411 = 1.0 - v410;
          if ((1.0 - v410) >= 1.0)
          {
            if (v29)
            {
              v413 = COERCE_FLOAT(bswap32(*v407));
            }

            else
            {
              v413 = 1.0;
            }

            v414 = v409 * 0.0039216;
            v415 = bswap32(COERCE_UNSIGNED_INT(v414 * v413));
            v416 = vmulq_n_f32(vrev32q_s8(*v33), v414);
          }

          else
          {
            if (v411 <= 0.0)
            {
              goto LABEL_552;
            }

            if (v29)
            {
              v412 = COERCE_FLOAT(bswap32(*v407));
            }

            else
            {
              v412 = 1.0;
            }

            v417 = (v409 * 0.0039216) * v411;
            v415 = bswap32(COERCE_UNSIGNED_INT(v410 + (v412 * v417)));
            v416 = vmlaq_n_f32(vrev32q_s8(*v21), vrev32q_s8(*v33), v417);
          }

          *v21 = vrev32q_s8(v416);
          *v15 = v415;
LABEL_552:
          v23 += v37;
          v418 = &v33[v37];
          v419 = &v407[v29];
          if (v418 >= v682)
          {
            v420 = v404;
          }

          else
          {
            v420 = 0;
          }

          v407 = &v419[v420];
          v33 = &v418[v420];
          v15 += v681;
          v21 += v37;
          --v408;
        }

        while (v408);
        if (v38)
        {
          v421 = &v679[v27];
          if (v421 >= v38)
          {
            v422 = v406;
          }

          else
          {
            v422 = 0;
          }

          v423 = &v678[v28 + v422];
          if (v421 >= v38)
          {
            v424 = v405;
          }

          else
          {
            v424 = 0;
          }

          v33 = (v421 + 16 * v424);
          v682 += 16 * v424 + 16 * v27;
          v678 += v28 + v422;
          v679 = v33;
          v407 = v423;
        }

        else
        {
          v33 += v27;
          v407 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 7:
      v277 = -v44;
      v278 = -(v27 * v31);
      v279 = -(v28 * v31);
      if (v681)
      {
        v280 = v678;
        do
        {
          v281 = v18;
          do
          {
            v282 = *v23;
            if (*v23)
            {
              if (v282 == 255)
              {
                v283 = COERCE_FLOAT(bswap32(*v280));
                v284 = vmulq_n_f32(vrev32q_s8(*v21), v283);
                v285 = COERCE_FLOAT(bswap32(*v15)) * v283;
              }

              else
              {
                v286 = v282 * 0.0039216;
                v287 = COERCE_FLOAT(bswap32(*v15));
                v288 = v286 * COERCE_FLOAT(bswap32(*v280));
                v289 = 1.0 - v286;
                v290 = vrev32q_s8(*v21);
                v284 = vmlaq_n_f32(vmulq_n_f32(v290, 1.0 - v286), v290, v288);
                v285 = (v289 * v287) + (v287 * v288);
              }

              *v21 = vrev32q_s8(v284);
              *v15 = bswap32(LODWORD(v285));
            }

            v23 += v37;
            v291 = &v33[v37];
            v292 = &v280[v29];
            if (v291 >= v682)
            {
              v293 = v277;
            }

            else
            {
              v293 = 0;
            }

            v280 = &v292[v293];
            v33 = &v291[v293];
            v15 += v681;
            v21 += v37;
            --v281;
          }

          while (v281);
          if (v38)
          {
            v294 = &v679[v27];
            if (v294 >= v38)
            {
              v295 = v279;
            }

            else
            {
              v295 = 0;
            }

            v296 = &v678[v28 + v295];
            if (v294 >= v38)
            {
              v297 = v278;
            }

            else
            {
              v297 = 0;
            }

            v33 = (v294 + 16 * v297);
            v682 += 16 * v297 + 16 * v27;
            v678 += v28 + v295;
            v679 = v33;
            v280 = v296;
          }

          else
          {
            v33 += v27;
            v280 += v28;
          }

          v23 += v46;
          v21 += v47;
          v15 += v677;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      else
      {
        v582 = v678;
        do
        {
          v583 = v18;
          do
          {
            v584 = *v23;
            if (*v23)
            {
              if (v584 == 255)
              {
                v585 = vmulq_f32(vdupq_n_s32(bswap32(*v582)), vrev32q_s8(*v21));
              }

              else
              {
                v586 = vrev32q_s8(*v21);
                v585 = vmlaq_n_f32(vmulq_n_f32(v586, 1.0 - (v584 * 0.0039216)), v586, (v584 * 0.0039216) * COERCE_FLOAT(bswap32(*v582)));
              }

              *v21 = vrev32q_s8(v585);
            }

            v23 += v48;
            v587 = &v33[v48];
            v588 = &v582[v29];
            if (v587 >= v682)
            {
              v589 = v277;
            }

            else
            {
              v589 = 0;
            }

            v582 = &v588[v589];
            v33 = &v587[v589];
            v21 += v48;
            --v583;
          }

          while (v583);
          if (v38)
          {
            v590 = &v679[v27];
            if (v590 >= v38)
            {
              v591 = v279;
            }

            else
            {
              v591 = 0;
            }

            v592 = &v678[v28 + v591];
            if (v590 >= v38)
            {
              v593 = v278;
            }

            else
            {
              v593 = 0;
            }

            v33 = (v590 + 16 * v593);
            v682 += 16 * v593 + 16 * v27;
            v678 += v28 + v591;
            v679 = v33;
            v582 = v592;
          }

          else
          {
            v33 += v27;
            v582 += v28;
          }

          v23 += v46;
          v21 += v47;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      return;
    case 8:
      v456 = -v44;
      v457 = -(v27 * v31);
      v458 = -(v28 * v31);
      if (v681)
      {
        v459 = v678;
        do
        {
          v460 = v18;
          do
          {
            v461 = *v23;
            if (*v23)
            {
              v462 = vrev32q_s8(*v21);
              v463 = COERCE_FLOAT(bswap32(*v15));
              if (v461 == 255)
              {
                v464 = COERCE_FLOAT(bswap32(*v459));
              }

              else
              {
                v464 = (v461 * 0.0039216) * COERCE_FLOAT(bswap32(*v459));
              }

              v465 = 1.0 - v464;
              *v21 = vrev32q_s8(vmulq_n_f32(v462, v465));
              *v15 = bswap32(COERCE_UNSIGNED_INT(v465 * v463));
            }

            v23 += v37;
            v466 = &v33[v37];
            v467 = &v459[v29];
            if (v466 >= v682)
            {
              v468 = v456;
            }

            else
            {
              v468 = 0;
            }

            v459 = &v467[v468];
            v33 = &v466[v468];
            v15 += v681;
            v21 += v37;
            --v460;
          }

          while (v460);
          if (v38)
          {
            v469 = &v679[v27];
            if (v469 >= v38)
            {
              v470 = v458;
            }

            else
            {
              v470 = 0;
            }

            v471 = &v678[v28 + v470];
            if (v469 >= v38)
            {
              v472 = v457;
            }

            else
            {
              v472 = 0;
            }

            v33 = (v469 + 16 * v472);
            v682 += 16 * v472 + 16 * v27;
            v678 += v28 + v470;
            v679 = v33;
            v459 = v471;
          }

          else
          {
            v33 += v27;
            v459 += v28;
          }

          v23 += v46;
          v21 += v47;
          v15 += v677;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      else
      {
        v608 = v678;
        do
        {
          v609 = v18;
          do
          {
            v610 = *v23;
            if (*v23)
            {
              v611 = vrev32q_s8(*v21);
              if (v610 == 255)
              {
                v612 = COERCE_FLOAT(bswap32(*v608));
              }

              else
              {
                v612 = (v610 * 0.0039216) * COERCE_FLOAT(bswap32(*v608));
              }

              *v21 = vrev32q_s8(vmulq_n_f32(v611, 1.0 - v612));
            }

            v23 += v48;
            v613 = &v33[v48];
            v614 = &v608[v29];
            if (v613 >= v682)
            {
              v615 = v456;
            }

            else
            {
              v615 = 0;
            }

            v608 = &v614[v615];
            v33 = &v613[v615];
            v21 += v48;
            --v609;
          }

          while (v609);
          if (v38)
          {
            v616 = &v679[v27];
            if (v616 >= v38)
            {
              v617 = v458;
            }

            else
            {
              v617 = 0;
            }

            v618 = &v678[v28 + v617];
            if (v616 >= v38)
            {
              v619 = v457;
            }

            else
            {
              v619 = 0;
            }

            v33 = (v616 + 16 * v619);
            v682 += 16 * v619 + 16 * v27;
            v678 += v28 + v617;
            v679 = v33;
            v608 = v618;
          }

          else
          {
            v33 += v27;
            v608 += v28;
          }

          v23 += v46;
          v21 += v47;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      return;
    case 9:
      v172 = -v44;
      v173 = -(v27 * v31);
      v174 = -(v28 * v31);
      v175 = v678;
      do
      {
        v176 = v18;
        do
        {
          if (*v23)
          {
            v177 = COERCE_FLOAT(bswap32(*v15));
            v178 = *v23 * 0.0039216;
            v179 = COERCE_FLOAT(bswap32(*v175));
            v180 = (1.0 - v178) + (v178 * v179);
            *v21 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), v180), vmulq_n_f32(vrev32q_s8(*v33), v178), 1.0 - v177));
            *v15 = bswap32(COERCE_UNSIGNED_INT((v180 * v177) + ((v178 * v179) * (1.0 - v177))));
          }

          v23 += v37;
          v181 = &v33[v37];
          v182 = &v175[v29];
          if (v181 >= v682)
          {
            v183 = v172;
          }

          else
          {
            v183 = 0;
          }

          v175 = &v182[v183];
          v33 = &v181[v183];
          v15 += v681;
          v21 += v37;
          --v176;
        }

        while (v176);
        if (v38)
        {
          v184 = &v679[v27];
          if (v184 >= v38)
          {
            v185 = v174;
          }

          else
          {
            v185 = 0;
          }

          v186 = &v678[v28 + v185];
          if (v184 >= v38)
          {
            v187 = v173;
          }

          else
          {
            v187 = 0;
          }

          v33 = (v184 + 16 * v187);
          v682 += 16 * v187 + 16 * v27;
          v678 += v28 + v185;
          v679 = v33;
          v175 = v186;
        }

        else
        {
          v33 += v27;
          v175 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
      }

      while (v17);
      return;
    case 10:
      v441 = -v44;
      v442 = -(v27 * v31);
      v443 = -(v28 * v31);
      v444 = v678;
      do
      {
        v445 = v18;
        do
        {
          if (*v23)
          {
            v446 = COERCE_FLOAT(bswap32(*v15));
            v447 = *v23 * 0.0039216;
            v448 = v447 * COERCE_FLOAT(bswap32(*v444));
            *v21 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v21), 1.0 - v448), vmulq_n_f32(vrev32q_s8(*v33), v447), 1.0 - v446));
            *v15 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v448) * v446) + (v448 * (1.0 - v446))));
          }

          v23 += v37;
          v449 = &v33[v37];
          v450 = &v444[v29];
          if (v449 >= v682)
          {
            v451 = v441;
          }

          else
          {
            v451 = 0;
          }

          v444 = &v450[v451];
          v33 = &v449[v451];
          v15 += v681;
          v21 += v37;
          --v445;
        }

        while (v445);
        if (v38)
        {
          v452 = &v679[v27];
          if (v452 >= v38)
          {
            v453 = v443;
          }

          else
          {
            v453 = 0;
          }

          v454 = &v678[v28 + v453];
          if (v452 >= v38)
          {
            v455 = v442;
          }

          else
          {
            v455 = 0;
          }

          v33 = (v452 + 16 * v455);
          v682 += 16 * v455 + 16 * v27;
          v678 += v28 + v453;
          v679 = v33;
          v444 = v454;
        }

        else
        {
          v33 += v27;
          v444 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
      }

      while (v17);
      return;
    case 11:
      v117 = -v44;
      v118 = -(v27 * v31);
      v119 = -(v28 * v31);
      if (v681)
      {
        v120 = v678;
        do
        {
          v121 = v18;
          do
          {
            if (*v23)
            {
              if (v29)
              {
                v122 = COERCE_FLOAT(bswap32(*v120));
              }

              else
              {
                v122 = 1.0;
              }

              v123 = *v23 * 0.0039216;
              v124 = vmulq_n_f32(vrev32q_s8(*v33), v123);
              a5.f32[0] = v123 * v122;
              a7.i32[0] = bswap32(*v15);
              a8.f32[0] = a5.f32[0] + a7.f32[0];
              if ((a5.f32[0] + a7.f32[0]) > 1.0)
              {
                a8.f32[0] = 1.0;
              }

              v125 = vdupq_lane_s32(*a8.f32, 0);
              v126 = bswap32(a8.u32[0]);
              a8 = vrev32q_s8(*v21);
              a7 = vsubq_f32(v125, vsubq_f32(vdupq_lane_s32(*a7.f32, 0), a8));
              a5 = vrev32q_s8(vaddq_f32(vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v124), a7));
              *v21 = a5;
              *v15 = v126;
            }

            v23 += v37;
            v127 = &v33[v37];
            v128 = &v120[v29];
            if (v127 >= v682)
            {
              v129 = v117;
            }

            else
            {
              v129 = 0;
            }

            v120 = &v128[v129];
            v33 = &v127[v129];
            v15 += v681;
            v21 += v37;
            --v121;
          }

          while (v121);
          if (v38)
          {
            v130 = &v679[v27];
            if (v130 >= v38)
            {
              v131 = v119;
            }

            else
            {
              v131 = 0;
            }

            v132 = &v678[v28 + v131];
            if (v130 >= v38)
            {
              v133 = v118;
            }

            else
            {
              v133 = 0;
            }

            v33 = (v130 + 16 * v133);
            v682 += 16 * v133 + 16 * v27;
            v678 += v28 + v131;
            v679 = v33;
            v120 = v132;
          }

          else
          {
            v33 += v27;
            v120 += v28;
          }

          v23 += v46;
          v21 += v47;
          v15 += v677;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      else
      {
        v548 = v678;
        do
        {
          v549 = v18;
          do
          {
            if (*v23)
            {
              if (v29)
              {
                a4.i32[0] = bswap32(*v548);
              }

              else
              {
                a4.i32[0] = 1.0;
              }

              v550 = *v23 * 0.0039216;
              a4.f32[0] = v550 * a4.f32[0];
              a4 = vrev32q_s8(vaddq_f32(vsubq_f32(vdupq_lane_s32(*a4.f32, 0), vmulq_n_f32(vrev32q_s8(*v33), v550)), vrev32q_s8(*v21)));
              *v21 = a4;
            }

            v23 += v48;
            v551 = &v33[v48];
            v552 = &v548[v29];
            if (v551 >= v682)
            {
              v553 = v117;
            }

            else
            {
              v553 = 0;
            }

            v548 = &v552[v553];
            v33 = &v551[v553];
            v21 += v48;
            --v549;
          }

          while (v549);
          if (v38)
          {
            v554 = &v679[v27];
            if (v554 >= v38)
            {
              v555 = v119;
            }

            else
            {
              v555 = 0;
            }

            v556 = &v678[v28 + v555];
            if (v554 >= v38)
            {
              v557 = v118;
            }

            else
            {
              v557 = 0;
            }

            v33 = (v554 + 16 * v557);
            v682 += 16 * v557 + 16 * v27;
            v678 += v28 + v555;
            v679 = v33;
            v548 = v556;
          }

          else
          {
            v33 += v27;
            v548 += v28;
          }

          v23 += v46;
          v21 += v47;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      return;
    case 12:
      if (v681)
      {
        v156 = -v44;
        v157 = -(v27 * v31);
        v158 = -(v28 * v31);
        v159 = v678;
        do
        {
          v160 = v18;
          do
          {
            if (*v23)
            {
              if (v29)
              {
                v161 = COERCE_FLOAT(bswap32(*v159));
              }

              else
              {
                v161 = 1.0;
              }

              v162 = *v23 * 0.0039216;
              v163 = vmulq_n_f32(vrev32q_s8(*v33), v162);
              v164 = (v162 * v161) + COERCE_FLOAT(bswap32(*v15));
              if (v164 > 1.0)
              {
                v164 = 1.0;
              }

              *v21 = vrev32q_s8(vaddq_f32(v163, vrev32q_s8(*v21)));
              *v15 = bswap32(LODWORD(v164));
            }

            v23 += v37;
            v165 = &v33[v37];
            v166 = &v159[v29];
            if (v165 >= v682)
            {
              v167 = v156;
            }

            else
            {
              v167 = 0;
            }

            v159 = &v166[v167];
            v33 = &v165[v167];
            v15 += v681;
            v21 += v37;
            --v160;
          }

          while (v160);
          if (v38)
          {
            v168 = &v679[v27];
            if (v168 >= v38)
            {
              v169 = v158;
            }

            else
            {
              v169 = 0;
            }

            v170 = &v678[v28 + v169];
            if (v168 >= v38)
            {
              v171 = v157;
            }

            else
            {
              v171 = 0;
            }

            v33 = (v168 + 16 * v171);
            v682 += 16 * v171 + 16 * v27;
            v678 += v28 + v169;
            v679 = v33;
            v159 = v170;
          }

          else
          {
            v33 += v27;
            v159 += v28;
          }

          v23 += v46;
          v21 += v47;
          v15 += v677;
          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      else
      {
        v558 = -v44;
        do
        {
          v559 = v18;
          do
          {
            if (*v23)
            {
              *v21 = vrev32q_s8(vaddq_f32(vmulq_n_f32(vrev32q_s8(*v33), *v23 * 0.0039216), vrev32q_s8(*v21)));
            }

            v23 += v48;
            v560 = &v33[v48];
            if (v560 >= v682)
            {
              v561 = v558;
            }

            else
            {
              v561 = 0;
            }

            v33 = &v560[v561];
            v21 += v48;
            --v559;
          }

          while (v559);
          v23 += v46;
          v21 += v47;
          v562 = v679;
          v563 = &v679[v27];
          if (v563 >= v38)
          {
            v564 = -(v27 * v49);
          }

          else
          {
            v564 = 0;
          }

          v565 = v682;
          v566 = (v563 + 16 * v564);
          v567 = v682 + 16 * v564 + 16 * v27;
          if (v38)
          {
            v565 = v567;
          }

          v682 = v565;
          if (v38)
          {
            v562 = v566;
          }

          v679 = v562;
          if (v38)
          {
            v33 = v566;
          }

          else
          {
            v33 += v27;
          }

          LODWORD(v17) = v17 - 1;
        }

        while (v17);
      }

      return;
    case 13:
      v383 = -v44;
      v384 = -(v27 * v31);
      v385 = -(v28 * v31);
      a4.i32[0] = 1.0;
      v386 = v678;
      while (1)
      {
        v387 = v18;
        do
        {
          if (*v23)
          {
            v388 = v29 ? COERCE_FLOAT(bswap32(*v386)) : 1.0;
            v389 = *v23 * 0.0039216;
            a5.f32[0] = v389 * v388;
            if (a5.f32[0] > 0.0)
            {
              v390 = vmulq_n_f32(vrev32q_s8(*v33), v389);
              if (v681)
              {
                a6.i32[0] = bswap32(*v15);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_521;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v391 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v21));
              v392 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v390);
              v393 = vmulq_f32(v391, v392);
              v394 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v393, v391, 1.0 - a5.f32[0]), v393);
              v395 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v394, v392, 1.0 - a6.f32[0]), v394);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v390 = vsubq_f32(a6, v395);
              if (v681)
              {
LABEL_521:
                v396 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v390);
                *v21 = a5;
                *v15 = v396;
                goto LABEL_523;
              }

              a5 = vrev32q_s8(v390);
              *v21 = a5;
            }
          }

LABEL_523:
          v23 += v37;
          v397 = &v33[v37];
          v398 = &v386[v29];
          if (v397 >= v682)
          {
            v399 = v383;
          }

          else
          {
            v399 = 0;
          }

          v386 = &v398[v399];
          v33 = &v397[v399];
          v15 += v681;
          v21 += v37;
          --v387;
        }

        while (v387);
        if (v38)
        {
          v400 = &v679[v27];
          if (v400 >= v38)
          {
            v401 = v385;
          }

          else
          {
            v401 = 0;
          }

          v402 = &v678[v28 + v401];
          if (v400 >= v38)
          {
            v403 = v384;
          }

          else
          {
            v403 = 0;
          }

          v33 = (v400 + 16 * v403);
          v682 += 16 * v403 + 16 * v27;
          v678 += v28 + v401;
          v679 = v33;
          v386 = v402;
        }

        else
        {
          v33 += v27;
          v386 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 14:
      v93 = -v44;
      v94 = -(v27 * v31);
      v95 = -(v28 * v31);
      __asm { FMOV            V1.4S, #1.0 }

      v101 = v678;
      while (1)
      {
        v102 = v18;
        do
        {
          if (*v23)
          {
            v103 = v29 ? COERCE_FLOAT(bswap32(*v101)) : 1.0;
            v104 = *v23 * 0.0039216;
            a5.f32[0] = v104 * v103;
            if (a5.f32[0] > 0.0)
            {
              v105 = vrev32q_s8(*v33);
              v106 = vmulq_n_f32(v105, v104);
              if (v681)
              {
                v105.i32[0] = bswap32(*v15);
                if (v105.f32[0] <= 0.0)
                {
                  goto LABEL_105;
                }
              }

              else
              {
                v105.i32[0] = 1.0;
              }

              v107 = vsubq_f32(vdupq_lane_s32(*v105.f32, 0), vrev32q_s8(*v21));
              v108 = vmlaq_f32(v107, vsubq_f32(_Q1, v107), vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v106));
              a5.f32[0] = (a5.f32[0] + v105.f32[0]) - (v105.f32[0] * a5.f32[0]);
              v106 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v108);
              if (v681)
              {
LABEL_105:
                v109 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v106);
                *v21 = a5;
                *v15 = v109;
                goto LABEL_107;
              }

              a5 = vrev32q_s8(v106);
              *v21 = a5;
            }
          }

LABEL_107:
          v23 += v37;
          v110 = &v33[v37];
          v111 = &v101[v29];
          if (v110 >= v682)
          {
            v112 = v93;
          }

          else
          {
            v112 = 0;
          }

          v101 = &v111[v112];
          v33 = &v110[v112];
          v15 += v681;
          v21 += v37;
          --v102;
        }

        while (v102);
        if (v38)
        {
          v113 = &v679[v27];
          if (v113 >= v38)
          {
            v114 = v95;
          }

          else
          {
            v114 = 0;
          }

          v115 = &v678[v28 + v114];
          if (v113 >= v38)
          {
            v116 = v94;
          }

          else
          {
            v116 = 0;
          }

          v33 = (v113 + 16 * v116);
          v682 += 16 * v116 + 16 * v27;
          v678 += v28 + v114;
          v679 = v33;
          v101 = v115;
        }

        else
        {
          v33 += v27;
          v101 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 15:
      v239 = v29;
      v240 = -v44;
      v638 = -(v28 * v31);
      v647 = -(v27 * v31);
      v241 = 4 * v681;
      v242 = v678;
      v656 = v241;
      while (1)
      {
        v671 = v17;
        v243 = v18;
        v244 = v681;
        do
        {
          if (*v23)
          {
            v245 = v29 ? COERCE_FLOAT(bswap32(*v242)) : 1.0;
            v246 = *v23 * 0.0039216;
            a8.f32[0] = v246 * v245;
            if ((v246 * v245) > 0.0)
            {
              v247 = vmulq_n_f32(vrev32q_s8(*v33), v246);
              if (v244)
              {
                v248 = COERCE_FLOAT(bswap32(*v15));
                if (v248 <= 0.0)
                {
                  goto LABEL_316;
                }
              }

              else
              {
                v248 = 1.0;
              }

              v249 = vrev32q_s8(*v21);
              PDAoverlayPDA(v683.i32, *v249.i32, *&v249.i32[1], *&v249.i32[2], *&v249.i32[3], v248, *a8.i64, *v247.i64, a10, *v247.i32, *&v247.i32[1], *&v247.i32[2], *&v247.i32[3], a8.f32[0]);
              v244 = v681;
              v247 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v241 = 4 * v681;
LABEL_316:
                *v21 = vrev32q_s8(v247);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_318;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v241 = v656;
            }
          }

LABEL_318:
          v23 += v48;
          v250 = &v33[v48];
          if (v250 >= v682)
          {
            v251 = v240;
          }

          else
          {
            v251 = 0;
          }

          v242 += v239 + v251;
          v33 = &v250[v251];
          v15 = (v15 + v241);
          v21 += v48;
          --v243;
        }

        while (v243);
        if (v663)
        {
          v252 = &v679[v666];
          v253 = v638;
          if (v252 < v663)
          {
            v253 = 0;
          }

          v242 = &v678[v662 + v253];
          v254 = v647;
          if (v252 < v663)
          {
            v254 = 0;
          }

          v33 = &v252[v254];
          v682 += 16 * v254 + 16 * v666;
          v678 += v662 + v253;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v242 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v671 - 1;
        if (v671 == 1)
        {
          return;
        }
      }

    case 16:
      v70 = -v44;
      v71 = -(v27 * v31);
      v72 = -(v28 * v31);
      a4.i32[0] = 1.0;
      v73 = v678;
      while (1)
      {
        v74 = v18;
        do
        {
          if (*v23)
          {
            v75 = v29 ? COERCE_FLOAT(bswap32(*v73)) : 1.0;
            v76 = *v23 * 0.0039216;
            a5.f32[0] = v76 * v75;
            if (a5.f32[0] > 0.0)
            {
              v77 = vmulq_n_f32(vrev32q_s8(*v33), v76);
              if (v681)
              {
                a6.i32[0] = bswap32(*v15);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v78 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v21));
              v79 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v77);
              v80 = vmulq_n_f32(v78, a5.f32[0]);
              v81 = vmulq_n_f32(v79, a6.f32[0]);
              v82 = vbslq_s8(vcgtq_f32(v80, v81), v81, v80);
              v83 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v82, v78, 1.0 - a5.f32[0]), v82);
              v84 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v83, v79, 1.0 - a6.f32[0]), v83);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v77 = vsubq_f32(a6, v84);
              if (v681)
              {
LABEL_76:
                v85 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v77);
                *v21 = a5;
                *v15 = v85;
                goto LABEL_78;
              }

              a5 = vrev32q_s8(v77);
              *v21 = a5;
            }
          }

LABEL_78:
          v23 += v37;
          v86 = &v33[v37];
          v87 = &v73[v29];
          if (v86 >= v682)
          {
            v88 = v70;
          }

          else
          {
            v88 = 0;
          }

          v73 = &v87[v88];
          v33 = &v86[v88];
          v15 += v681;
          v21 += v37;
          --v74;
        }

        while (v74);
        if (v38)
        {
          v89 = &v679[v27];
          if (v89 >= v38)
          {
            v90 = v72;
          }

          else
          {
            v90 = 0;
          }

          v91 = &v678[v28 + v90];
          if (v89 >= v38)
          {
            v92 = v71;
          }

          else
          {
            v92 = 0;
          }

          v33 = (v89 + 16 * v92);
          v682 += 16 * v92 + 16 * v27;
          v678 += v28 + v90;
          v679 = v33;
          v73 = v91;
        }

        else
        {
          v33 += v27;
          v73 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 17:
      v313 = -v44;
      v314 = -(v27 * v31);
      v315 = -(v28 * v31);
      a4.i32[0] = 1.0;
      v316 = v678;
      while (1)
      {
        v317 = v18;
        do
        {
          if (*v23)
          {
            v318 = v29 ? COERCE_FLOAT(bswap32(*v316)) : 1.0;
            v319 = *v23 * 0.0039216;
            a5.f32[0] = v319 * v318;
            if (a5.f32[0] > 0.0)
            {
              v320 = vmulq_n_f32(vrev32q_s8(*v33), v319);
              if (v681)
              {
                a6.i32[0] = bswap32(*v15);
                if (a6.f32[0] <= 0.0)
                {
                  goto LABEL_417;
                }
              }

              else
              {
                a6.i32[0] = 1.0;
              }

              v321 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vrev32q_s8(*v21));
              v322 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v320);
              v323 = vmulq_n_f32(v321, a5.f32[0]);
              v324 = vmulq_n_f32(v322, a6.f32[0]);
              v325 = vbslq_s8(vcgtq_f32(v324, v323), v324, v323);
              v326 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v325, v321, 1.0 - a5.f32[0]), v325);
              v327 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(v326, v322, 1.0 - a6.f32[0]), v326);
              a5.f32[0] = (a6.f32[0] + a5.f32[0]) - (a6.f32[0] * a5.f32[0]);
              a6 = vdupq_lane_s32(*a5.f32, 0);
              v320 = vsubq_f32(a6, v327);
              if (v681)
              {
LABEL_417:
                v328 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v320);
                *v21 = a5;
                *v15 = v328;
                goto LABEL_419;
              }

              a5 = vrev32q_s8(v320);
              *v21 = a5;
            }
          }

LABEL_419:
          v23 += v37;
          v329 = &v33[v37];
          v330 = &v316[v29];
          if (v329 >= v682)
          {
            v331 = v313;
          }

          else
          {
            v331 = 0;
          }

          v316 = &v330[v331];
          v33 = &v329[v331];
          v15 += v681;
          v21 += v37;
          --v317;
        }

        while (v317);
        if (v38)
        {
          v332 = &v679[v27];
          if (v332 >= v38)
          {
            v333 = v315;
          }

          else
          {
            v333 = 0;
          }

          v334 = &v678[v28 + v333];
          if (v332 >= v38)
          {
            v335 = v314;
          }

          else
          {
            v335 = 0;
          }

          v33 = (v332 + 16 * v335);
          v682 += 16 * v335 + 16 * v27;
          v678 += v28 + v333;
          v679 = v33;
          v316 = v334;
        }

        else
        {
          v33 += v27;
          v316 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 18:
      v425 = v29;
      v426 = -v44;
      v641 = -(v28 * v31);
      v650 = -(v27 * v31);
      v427 = 4 * v681;
      v428 = v678;
      v659 = v427;
      while (1)
      {
        v674 = v17;
        v429 = v18;
        v430 = v681;
        do
        {
          if (*v23)
          {
            v431 = v29 ? COERCE_FLOAT(bswap32(*v428)) : 1.0;
            v432 = *v23 * 0.0039216;
            a8.f32[0] = v432 * v431;
            if ((v432 * v431) > 0.0)
            {
              v433 = vmulq_n_f32(vrev32q_s8(*v33), v432);
              if (v430)
              {
                v434 = COERCE_FLOAT(bswap32(*v15));
                if (v434 <= 0.0)
                {
                  goto LABEL_580;
                }
              }

              else
              {
                v434 = 1.0;
              }

              v435 = vrev32q_s8(*v21);
              PDAcolordodgePDA(v683.i32, *v435.i32, *&v435.i32[1], *&v435.i32[2], *&v435.i32[3], v434, *a8.i64, *v433.i64, a10, *v433.i32, *&v433.i32[1], *&v433.i32[2], *&v433.i32[3], a8.f32[0]);
              v430 = v681;
              v433 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v427 = 4 * v681;
LABEL_580:
                *v21 = vrev32q_s8(v433);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_582;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v427 = v659;
            }
          }

LABEL_582:
          v23 += v48;
          v436 = &v33[v48];
          if (v436 >= v682)
          {
            v437 = v426;
          }

          else
          {
            v437 = 0;
          }

          v428 += v425 + v437;
          v33 = &v436[v437];
          v15 = (v15 + v427);
          v21 += v48;
          --v429;
        }

        while (v429);
        if (v663)
        {
          v438 = &v679[v666];
          v439 = v641;
          if (v438 < v663)
          {
            v439 = 0;
          }

          v428 = &v678[v662 + v439];
          v440 = v650;
          if (v438 < v663)
          {
            v440 = 0;
          }

          v33 = &v438[v440];
          v682 += 16 * v440 + 16 * v666;
          v678 += v662 + v439;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v428 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v674 - 1;
        if (v674 == 1)
        {
          return;
        }
      }

    case 19:
      v498 = v29;
      v499 = -v44;
      v642 = -(v28 * v31);
      v651 = -(v27 * v31);
      v500 = 4 * v681;
      v501 = v678;
      v660 = v500;
      while (1)
      {
        v675 = v17;
        v502 = v18;
        v503 = v681;
        do
        {
          if (*v23)
          {
            v504 = v29 ? COERCE_FLOAT(bswap32(*v501)) : 1.0;
            v505 = *v23 * 0.0039216;
            a8.f32[0] = v505 * v504;
            if ((v505 * v504) > 0.0)
            {
              v506 = vmulq_n_f32(vrev32q_s8(*v33), v505);
              if (v503)
              {
                v507 = COERCE_FLOAT(bswap32(*v15));
                if (v507 <= 0.0)
                {
                  goto LABEL_680;
                }
              }

              else
              {
                v507 = 1.0;
              }

              v508 = vrev32q_s8(*v21);
              PDAcolorburnPDA(v683.i32, *v508.i32, *&v508.i32[1], *&v508.i32[2], *&v508.i32[3], v507, *a8.i64, *v506.i64, a10, *v506.i32, *&v506.i32[1], *&v506.i32[2], *&v506.i32[3], a8.f32[0]);
              v503 = v681;
              v506 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v500 = 4 * v681;
LABEL_680:
                *v21 = vrev32q_s8(v506);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_682;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v500 = v660;
            }
          }

LABEL_682:
          v23 += v48;
          v509 = &v33[v48];
          if (v509 >= v682)
          {
            v510 = v499;
          }

          else
          {
            v510 = 0;
          }

          v501 += v498 + v510;
          v33 = &v509[v510];
          v15 = (v15 + v500);
          v21 += v48;
          --v502;
        }

        while (v502);
        if (v663)
        {
          v511 = &v679[v666];
          v512 = v642;
          if (v511 < v663)
          {
            v512 = 0;
          }

          v501 = &v678[v662 + v512];
          v513 = v651;
          if (v511 < v663)
          {
            v513 = 0;
          }

          v33 = &v511[v513];
          v682 += 16 * v513 + 16 * v666;
          v678 += v662 + v512;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v501 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v675 - 1;
        if (v675 == 1)
        {
          return;
        }
      }

    case 20:
      v336 = v29;
      v337 = -v44;
      v639 = -(v28 * v31);
      v648 = -(v27 * v31);
      v338 = 4 * v681;
      v339 = v678;
      v657 = v338;
      while (1)
      {
        v672 = v17;
        v340 = v18;
        v341 = v681;
        do
        {
          if (*v23)
          {
            v342 = v29 ? COERCE_FLOAT(bswap32(*v339)) : 1.0;
            v343 = *v23 * 0.0039216;
            a8.f32[0] = v343 * v342;
            if ((v343 * v342) > 0.0)
            {
              v344 = vmulq_n_f32(vrev32q_s8(*v33), v343);
              if (v341)
              {
                a7.i32[0] = bswap32(*v15);
                if (a7.f32[0] <= 0.0)
                {
                  goto LABEL_447;
                }
              }

              else
              {
                a7.i32[0] = 1.0;
              }

              v345 = vrev32q_s8(*v21);
              PDAsoftlightPDA(&v683, *v345.i8, *&v345.i32[1], *&v345.i32[2], *&v345.i32[3], *a7.i64, *a8.f32, *v344.i64, a10, a2, v17, v18, v27, v46, v47, v38, *v344.i8, *&v344.i32[2], *&v344.i32[3], a8.f32[0]);
              v341 = v681;
              v344 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v338 = 4 * v681;
LABEL_447:
                *v21 = vrev32q_s8(v344);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_449;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v338 = v657;
            }
          }

LABEL_449:
          v23 += v48;
          v346 = &v33[v48];
          if (v346 >= v682)
          {
            v347 = v337;
          }

          else
          {
            v347 = 0;
          }

          v339 += v336 + v347;
          v33 = &v346[v347];
          v15 = (v15 + v338);
          v21 += v48;
          --v340;
        }

        while (v340);
        if (v663)
        {
          v348 = &v679[v666];
          v349 = v639;
          if (v348 < v663)
          {
            v349 = 0;
          }

          v339 = &v678[v662 + v349];
          v350 = v648;
          if (v348 < v663)
          {
            v350 = 0;
          }

          v33 = &v348[v350];
          v682 += 16 * v350 + 16 * v666;
          v678 += v662 + v349;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v339 += v662;
        }

        v18 = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        v17 = (v672 - 1);
        if (v672 == 1)
        {
          return;
        }
      }

    case 21:
      v367 = v29;
      v368 = -v44;
      v640 = -(v28 * v31);
      v649 = -(v27 * v31);
      v369 = 4 * v681;
      v370 = v678;
      v658 = v369;
      while (1)
      {
        v673 = v17;
        v371 = v18;
        v372 = v681;
        do
        {
          if (*v23)
          {
            v373 = v29 ? COERCE_FLOAT(bswap32(*v370)) : 1.0;
            v374 = *v23 * 0.0039216;
            a8.f32[0] = v374 * v373;
            if ((v374 * v373) > 0.0)
            {
              v375 = vmulq_n_f32(vrev32q_s8(*v33), v374);
              if (v372)
              {
                v376 = COERCE_FLOAT(bswap32(*v15));
                if (v376 <= 0.0)
                {
                  goto LABEL_494;
                }
              }

              else
              {
                v376 = 1.0;
              }

              v377 = vrev32q_s8(*v21);
              PDAhardlightPDA(v683.i32, *v377.i32, *&v377.i32[1], *&v377.i32[2], *&v377.i32[3], v376, *a8.i64, *v375.i64, a10, *v375.i32, *&v375.i32[1], *&v375.i32[2], *&v375.i32[3], a8.f32[0]);
              v372 = v681;
              v375 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v369 = 4 * v681;
LABEL_494:
                *v21 = vrev32q_s8(v375);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_496;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v369 = v658;
            }
          }

LABEL_496:
          v23 += v48;
          v378 = &v33[v48];
          if (v378 >= v682)
          {
            v379 = v368;
          }

          else
          {
            v379 = 0;
          }

          v370 += v367 + v379;
          v33 = &v378[v379];
          v15 = (v15 + v369);
          v21 += v48;
          --v371;
        }

        while (v371);
        if (v663)
        {
          v380 = &v679[v666];
          v381 = v640;
          if (v380 < v663)
          {
            v381 = 0;
          }

          v370 = &v678[v662 + v381];
          v382 = v649;
          if (v380 < v663)
          {
            v382 = 0;
          }

          v33 = &v380[v382];
          v682 += 16 * v382 + 16 * v666;
          v678 += v662 + v381;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v370 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v673 - 1;
        if (v673 == 1)
        {
          return;
        }
      }

    case 22:
      v473 = -v44;
      v474 = -(v27 * v31);
      v475 = -(v28 * v31);
      v476 = v678;
      while (1)
      {
        v477 = v18;
        do
        {
          if (*v23)
          {
            v478 = v29 ? COERCE_FLOAT(bswap32(*v476)) : 1.0;
            v479 = *v23 * 0.0039216;
            a4.f32[0] = v479 * v478;
            if (a4.f32[0] > 0.0)
            {
              v480 = vrev32q_s8(*v33);
              v481 = vmulq_n_f32(v480, v479);
              if (v681)
              {
                v480.i32[0] = bswap32(*v15);
                if (v480.f32[0] <= 0.0)
                {
                  goto LABEL_650;
                }
              }

              else
              {
                v480.i32[0] = 1.0;
              }

              v482 = *v21;
              *v482.i32 = (v480.f32[0] + a4.f32[0]) - (v480.f32[0] * a4.f32[0]);
              v483 = vsubq_f32(vdupq_lane_s32(*v480.f32, 0), vrev32q_s8(*v21));
              v484 = vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v481);
              v485 = vaddq_f32(v483, v484);
              v486 = vmulq_n_f32(v483, a4.f32[0]);
              v487 = vmulq_n_f32(v484, v480.f32[0]);
              v488 = vsubq_f32(v485, v486);
              v489 = vsubq_f32(v486, v487);
              v481 = vsubq_f32(vdupq_lane_s32(*v482.i8, 0), vaddq_f32(vsubq_f32(v488, v487), vbslq_s8(vcltzq_f32(v489), vnegq_f32(v489), v489)));
              if (v681)
              {
                a4.i32[0] = v482.i32[0];
LABEL_650:
                v490 = bswap32(a4.u32[0]);
                a4 = vrev32q_s8(v481);
                *v21 = a4;
                *v15 = v490;
                goto LABEL_652;
              }

              a4 = vrev32q_s8(v481);
              *v21 = a4;
            }
          }

LABEL_652:
          v23 += v37;
          v491 = &v33[v37];
          v492 = &v476[v29];
          if (v491 >= v682)
          {
            v493 = v473;
          }

          else
          {
            v493 = 0;
          }

          v476 = &v492[v493];
          v33 = &v491[v493];
          v15 += v681;
          v21 += v37;
          --v477;
        }

        while (v477);
        if (v38)
        {
          v494 = &v679[v27];
          if (v494 >= v38)
          {
            v495 = v475;
          }

          else
          {
            v495 = 0;
          }

          v496 = &v678[v28 + v495];
          if (v494 >= v38)
          {
            v497 = v474;
          }

          else
          {
            v497 = 0;
          }

          v33 = (v494 + 16 * v497);
          v682 += 16 * v497 + 16 * v27;
          v678 += v28 + v495;
          v679 = v33;
          v476 = v496;
        }

        else
        {
          v33 += v27;
          v476 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 23:
      v514 = -v44;
      v515 = -(v27 * v31);
      v516 = -(v28 * v31);
      v517.i64[0] = 0xC0000000C0000000;
      v517.i64[1] = 0xC0000000C0000000;
      v518 = v678;
      while (1)
      {
        v519 = v18;
        do
        {
          if (*v23)
          {
            v520 = v29 ? COERCE_FLOAT(bswap32(*v518)) : 1.0;
            v521 = *v23 * 0.0039216;
            a5.f32[0] = v521 * v520;
            if (a5.f32[0] > 0.0)
            {
              v522 = vmulq_n_f32(vrev32q_s8(*v33), v521);
              if (v681)
              {
                a8.i32[0] = bswap32(*v15);
                if (a8.f32[0] <= 0.0)
                {
                  goto LABEL_708;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v523 = *v21;
              *v523.i32 = (a8.f32[0] + a5.f32[0]) - (a8.f32[0] * a5.f32[0]);
              a8 = vsubq_f32(vdupq_lane_s32(*a8.f32, 0), vrev32q_s8(*v21));
              v524 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), v522);
              v522 = vsubq_f32(vdupq_lane_s32(*v523.i8, 0), vmlaq_f32(vaddq_f32(a8, v524), v517, vmulq_f32(v524, a8)));
              if (v681)
              {
                a5.i32[0] = v523.i32[0];
LABEL_708:
                v525 = bswap32(a5.u32[0]);
                a5 = vrev32q_s8(v522);
                *v21 = a5;
                *v15 = v525;
                goto LABEL_710;
              }

              a5 = vrev32q_s8(v522);
              *v21 = a5;
            }
          }

LABEL_710:
          v23 += v37;
          v526 = &v33[v37];
          v527 = &v518[v29];
          if (v526 >= v682)
          {
            v528 = v514;
          }

          else
          {
            v528 = 0;
          }

          v518 = &v527[v528];
          v33 = &v526[v528];
          v15 += v681;
          v21 += v37;
          --v519;
        }

        while (v519);
        if (v38)
        {
          v529 = &v679[v27];
          if (v529 >= v38)
          {
            v530 = v516;
          }

          else
          {
            v530 = 0;
          }

          v531 = &v678[v28 + v530];
          if (v529 >= v38)
          {
            v532 = v515;
          }

          else
          {
            v532 = 0;
          }

          v33 = (v529 + 16 * v532);
          v682 += 16 * v532 + 16 * v27;
          v678 += v28 + v530;
          v679 = v33;
          v518 = v531;
        }

        else
        {
          v33 += v27;
          v518 += v28;
        }

        v23 += v46;
        v21 += v47;
        v15 += v677;
        LODWORD(v17) = v17 - 1;
        if (!v17)
        {
          return;
        }
      }

    case 24:
      v204 = v29;
      v205 = -v44;
      v637 = -(v28 * v31);
      v646 = -(v27 * v31);
      v206 = 4 * v681;
      v207 = v678;
      v655 = v206;
      while (1)
      {
        v670 = v17;
        v208 = v18;
        v209 = v681;
        do
        {
          if (*v23)
          {
            v210 = v29 ? COERCE_FLOAT(bswap32(*v207)) : 1.0;
            v211 = *v23 * 0.0039216;
            a8.f32[0] = v211 * v210;
            if ((v211 * v210) > 0.0)
            {
              v212 = vmulq_n_f32(vrev32q_s8(*v33), v211);
              if (v209)
              {
                v213 = COERCE_FLOAT(bswap32(*v15));
                if (v213 <= 0.0)
                {
                  goto LABEL_260;
                }
              }

              else
              {
                v213 = 1.0;
              }

              v214 = vrev32q_s8(*v21);
              PDAhuePDA(v683.i32, *v214.i32, *&v214.i32[1], *&v214.i32[2], *&v214.i32[3], v213, *a8.i64, *v212.i64, a10, *v212.i32, *&v212.i32[1], *&v212.i32[2], *&v212.i32[3], a8.f32[0]);
              v209 = v681;
              v212 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v206 = 4 * v681;
LABEL_260:
                *v21 = vrev32q_s8(v212);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_262;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v206 = v655;
            }
          }

LABEL_262:
          v23 += v48;
          v215 = &v33[v48];
          if (v215 >= v682)
          {
            v216 = v205;
          }

          else
          {
            v216 = 0;
          }

          v207 += v204 + v216;
          v33 = &v215[v216];
          v15 = (v15 + v206);
          v21 += v48;
          --v208;
        }

        while (v208);
        if (v663)
        {
          v217 = &v679[v666];
          v218 = v637;
          if (v217 < v663)
          {
            v218 = 0;
          }

          v207 = &v678[v662 + v218];
          v219 = v646;
          if (v217 < v663)
          {
            v219 = 0;
          }

          v33 = &v217[v219];
          v682 += 16 * v219 + 16 * v666;
          v678 += v662 + v218;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v207 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v670 - 1;
        if (v670 == 1)
        {
          return;
        }
      }

    case 25:
      v188 = v29;
      v189 = -v44;
      v636 = -(v28 * v31);
      v645 = -(v27 * v31);
      v190 = 4 * v681;
      v191 = v678;
      v654 = v190;
      while (1)
      {
        v669 = v17;
        v192 = v18;
        v193 = v681;
        do
        {
          if (*v23)
          {
            v194 = v29 ? COERCE_FLOAT(bswap32(*v191)) : 1.0;
            v195 = *v23 * 0.0039216;
            a8.f32[0] = v195 * v194;
            if ((v195 * v194) > 0.0)
            {
              v196 = vmulq_n_f32(vrev32q_s8(*v33), v195);
              if (v193)
              {
                v197 = COERCE_FLOAT(bswap32(*v15));
                if (v197 <= 0.0)
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v197 = 1.0;
              }

              v198 = vrev32q_s8(*v21);
              PDAsaturationPDA(v683.i32, *v198.i32, *&v198.i32[1], *&v198.i32[2], *&v198.i32[3], v197, *a8.i64, *v196.i64, a10, *v196.i32, *&v196.i32[1], *&v196.i32[2], *&v196.i32[3], a8.f32[0]);
              v193 = v681;
              v196 = v683;
              if (v681)
              {
                a8.i32[0] = v684;
                v29 = v680;
                v190 = 4 * v681;
LABEL_232:
                *v21 = vrev32q_s8(v196);
                *v15 = bswap32(a8.u32[0]);
                goto LABEL_234;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v190 = v654;
            }
          }

LABEL_234:
          v23 += v48;
          v199 = &v33[v48];
          if (v199 >= v682)
          {
            v200 = v189;
          }

          else
          {
            v200 = 0;
          }

          v191 += v188 + v200;
          v33 = &v199[v200];
          v15 = (v15 + v190);
          v21 += v48;
          --v192;
        }

        while (v192);
        if (v663)
        {
          v201 = &v679[v666];
          v202 = v636;
          if (v201 < v663)
          {
            v202 = 0;
          }

          v191 = &v678[v662 + v202];
          v203 = v645;
          if (v201 < v663)
          {
            v203 = 0;
          }

          v33 = &v201[v203];
          v682 += 16 * v203 + 16 * v666;
          v678 += v662 + v202;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v191 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v669 - 1;
        if (v669 == 1)
        {
          return;
        }
      }

    case 26:
      v533 = v29;
      v534 = -v44;
      v643 = -(v28 * v31);
      v652 = -(v27 * v31);
      v535 = 16 * v37;
      v536 = v678;
      v661 = v535;
      while (1)
      {
        v676 = v17;
        v537 = v18;
        v538 = v681;
        do
        {
          if (*v23)
          {
            v539 = v29 ? COERCE_FLOAT(bswap32(*v536)) : 1.0;
            v540 = *v23 * 0.0039216;
            v541 = v540 * v539;
            if ((v540 * v539) > 0.0)
            {
              v542 = vmulq_n_f32(vrev32q_s8(*v33), v540);
              if (v538)
              {
                a8.i32[0] = bswap32(*v15);
                if (a8.f32[0] <= 0.0)
                {
                  goto LABEL_738;
                }
              }

              else
              {
                a8.i32[0] = 1.0;
              }

              v634 = vrev32q_s8(*v21);
              PDAluminosityPDA(v683.i32, *v542.i32, *&v542.i32[1], *&v542.i32[2], *&v542.i32[3], v541, *a8.i64, *v634.i64, a10, *v634.i32, *&v634.i32[1], *&v634.i32[2], *&v634.i32[3], a8.f32[0]);
              v538 = v681;
              v542 = v683;
              if (v681)
              {
                v541 = *&v684;
                v29 = v680;
                v535 = v661;
LABEL_738:
                *v21 = vrev32q_s8(v542);
                *v15 = bswap32(LODWORD(v541));
                goto LABEL_740;
              }

              *v21 = vrev32q_s8(v683);
              v29 = v680;
              v535 = v661;
            }
          }

LABEL_740:
          v23 += v48;
          v543 = &v33[v48];
          if (v543 >= v682)
          {
            v544 = v534;
          }

          else
          {
            v544 = 0;
          }

          v536 += v533 + v544;
          v33 = &v543[v544];
          v15 += v681;
          v21 = (v21 + v535);
          --v537;
        }

        while (v537);
        if (v663)
        {
          v545 = &v679[v666];
          v546 = v643;
          if (v545 < v663)
          {
            v546 = 0;
          }

          v536 = &v678[v662 + v546];
          v547 = v652;
          if (v545 < v663)
          {
            v547 = 0;
          }

          v33 = &v545[v547];
          v682 += 16 * v547 + 16 * v666;
          v678 += v662 + v546;
          v679 = v33;
        }

        else
        {
          v33 += v666;
          v536 += v662;
        }

        LODWORD(v18) = v667;
        v23 += v665;
        v21 += v664;
        v15 += v677;
        LODWORD(v17) = v676 - 1;
        if (v676 == 1)
        {
          return;
        }
      }

    case 27:
      v54 = v29;
      v55 = -v44;
      v635 = -(v28 * v31);
      v644 = -(v27 * v31);
      v56 = 4 * v681;
      v57 = v678;
      v653 = v56;
      break;
    default:
      return;
  }

  do
  {
    v668 = v17;
    v58 = v18;
    v59 = v681;
    do
    {
      if (*v23)
      {
        v60 = v29 ? COERCE_FLOAT(bswap32(*v57)) : 1.0;
        v61 = *v23 * 0.0039216;
        a8.f32[0] = v61 * v60;
        if ((v61 * v60) > 0.0)
        {
          v62 = vmulq_n_f32(vrev32q_s8(*v33), v61);
          if (v59)
          {
            v63 = COERCE_FLOAT(bswap32(*v15));
            if (v63 <= 0.0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v63 = 1.0;
          }

          v64 = vrev32q_s8(*v21);
          PDAluminosityPDA(v683.i32, *v64.i32, *&v64.i32[1], *&v64.i32[2], *&v64.i32[3], v63, *a8.i64, *v62.i64, a10, *v62.i32, *&v62.i32[1], *&v62.i32[2], *&v62.i32[3], a8.f32[0]);
          v59 = v681;
          v62 = v683;
          if (v681)
          {
            a8.i32[0] = v684;
            v29 = v680;
            v56 = 4 * v681;
LABEL_49:
            *v21 = vrev32q_s8(v62);
            *v15 = bswap32(a8.u32[0]);
            goto LABEL_51;
          }

          *v21 = vrev32q_s8(v683);
          v29 = v680;
          v56 = v653;
        }
      }

LABEL_51:
      v23 += v48;
      v65 = &v33[v48];
      if (v65 >= v682)
      {
        v66 = v55;
      }

      else
      {
        v66 = 0;
      }

      v57 += v54 + v66;
      v33 = &v65[v66];
      v15 = (v15 + v56);
      v21 += v48;
      --v58;
    }

    while (v58);
    if (v663)
    {
      v67 = &v679[v666];
      v68 = v635;
      if (v67 < v663)
      {
        v68 = 0;
      }

      v57 = &v678[v662 + v68];
      v69 = v644;
      if (v67 < v663)
      {
        v69 = 0;
      }

      v33 = &v67[v69];
      v682 += 16 * v69 + 16 * v666;
      v678 += v662 + v68;
      v679 = v33;
    }

    else
    {
      v33 += v666;
      v57 += v662;
    }

    LODWORD(v18) = v667;
    v23 += v665;
    v21 += v664;
    v15 += v677;
    LODWORD(v17) = v668 - 1;
  }

  while (v668 != 1);
}

uint64_t CMYKF_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v39, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v33, v39) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v34 = v19;
  v35 = v18;
  if (v19 == 538985477)
  {
    if (!v38 && (~v37 & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((v37 & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        CMYKF_mark_inner(*(*a1 + 56), v17);
        return 1;
      }
    }

    v33 = CMYKf_sample_CMYKF_inner;
    goto LABEL_38;
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
  v23 = CMYKF_image_sample;
  v33 = *&CMYKF_image_sample[2 * v20 + 2];
  if (v33)
  {
    goto LABEL_37;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8)
  {
    if ((*a3 & 0x3F0000u) >> 16 > 0x10)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_34;
  }

  v23 = CMYK8_image_sample;
  v33 = *&CMYK8_image_sample[2 * v20 + 2];
  if (!v33)
  {
LABEL_34:
    v23 = CMYK16_image_sample;
    v33 = *&CMYK16_image_sample[2 * v20 + 2];
    if (v33)
    {
      v24 = 16;
      goto LABEL_36;
    }

    return 0xFFFFFFFFLL;
  }

  v24 = 8;
LABEL_36:
  v36 = v24;
LABEL_37:
  v34 = *v23;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (v37 & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_38;
  }

  HIDWORD(v26) = v22;
  LODWORD(v26) = v22;
  v25 = v26 >> 3;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v34 = *a3;
      v27 = CMYKF_image_mark_RGB24;
      goto LABEL_67;
    }

    if (v25 == 4)
    {
      v34 = *a3;
      v27 = CMYKF_image_mark_rgb32;
      goto LABEL_67;
    }

    if (v25 != 5)
    {
      goto LABEL_38;
    }

    v34 = *a3;
    v28 = CMYKF_image_mark_rgb32;
LABEL_65:
    v29 = v28;
    v30 = a2;
    v31 = v8;
    v32 = 8;
LABEL_68:
    CMYKF_image_mark_image(v30, &v33, v31, v32, v29);
    return 1;
  }

  switch(v25)
  {
    case 0:
      v34 = *a3;
      v27 = CMYKF_image_mark_RGB32;
      goto LABEL_67;
    case 1:
      v34 = *a3;
      v28 = CMYKF_image_mark_RGB32;
      goto LABEL_65;
    case 2:
      v34 = *a3;
      v27 = CMYKF_image_mark_W8;
LABEL_67:
      v29 = v27;
      v30 = a2;
      v31 = v8;
      v32 = 0;
      goto LABEL_68;
  }

LABEL_38:
  CMYKF_image_mark(a2, &v33, v8, v17);
  return 1;
}

void CMYKF_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, _DWORD *))
{
  v57[0] = a3;
  v57[1] = a4;
  v57[2] = *(a2 + 184);
  v8 = *(a1 + 28) >> 4;
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
    v32 = malloc_type_malloc(16 * v31, 0x8AA3661CuLL);
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
        v53 = *(a1 + 40) + 16 * v8 * v50 + 16 * v52;
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

void CMYKF_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v449 = *MEMORY[0x1E69E9840];
  v435 = *(a1 + 4);
  v433 = v435;
  v4 = (v435 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v7 = *(a1 + 28);
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    a4.n128_u32[0] = *(a2 + 184);
    v440 = a4;
    v10 = *(a1 + 136);
    v12 = *(a2 + 96);
    v11 = *(a2 + 104);
    v436 = a2;
    v437 = v12;
    v445 = v11;
    v446 = v8;
    v13 = *(a1 + 12);
    v14 = *(a1 + 16);
    v444 = *(a1 + 8);
    v15 = *(a2 + 16);
    v16 = (v15 + 22) * v4;
    if (v16 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v16 + 96, 0x52BD4385uLL);
      v18 = v19;
      v21 = v19;
      v22 = v436;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v428 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v21 = 0;
      v22 = v436;
    }

    v430 = v21;
    v434 = a3;
    v23 = v7 >> 4;
    v24 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = v24 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v15)
    {
      v26 = 20 * v4;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 + v26;
    v22[18] = v24;
    v22[19] = v25 + v26;
    v22[20] = v25;
    v28 = v446;
    if (v446)
    {
      v29 = *(a1 + 32) >> 2;
      v30 = (v446 + 4 * v29 * v14 + 4 * v13);
      v31 = v433;
      v441 = v29 - v433;
      v28 = 1;
    }

    else
    {
      v30 = 0;
      v441 = 0;
      v31 = v433;
    }

    v32 = (v9 + 16 * v23 * v14 + 16 * v13);
    v439 = v23 - v31;
    v33 = *(a1 + 104);
    v34 = *(a1 + 108);
    v35 = *(a1 + 2);
    if (v35 == 6 || v35 == 1)
    {
      v36 = v434;
      v38 = v436;
      v37 = v437;
      v39 = v445;
      if (v10)
      {
        v428 = v23;
        v40 = 0;
        v41 = *(a1 + 124);
        v42 = v10 + v41 * v34;
        v10 = 0;
        v43 = &v42[v33];
        v31 = v433;
        v438 = v41 - v433;
        v44 = v435;
        goto LABEL_21;
      }

      goto LABEL_558;
    }

    v428 = v23;
    if (v10)
    {
      v429 = v28;
      shape_enum_clip_alloc(v19, v20, v10, 1, 1, 1, v33, v34, v435, v444);
      if (v45)
      {
        v10 = v45;
        v46 = 0;
        v47 = ((v15 * v4 + 15) & 0xFFFFFFF0);
        if (!v15)
        {
          v47 = 20 * v4;
        }

        v48 = v433;
        v438 = -v433;
        v43 = (v27 + v47 + 16);
        v44 = v435;
        v38 = v436;
        v39 = v445;
        goto LABEL_561;
      }

LABEL_558:
      if (v430)
      {
        free(v430);
      }

      return;
    }

    v438 = 0;
    v43 = 0;
    v40 = 0;
    v36 = v434;
    v44 = v435;
    v38 = v436;
    v37 = v437;
    v39 = v445;
LABEL_21:
    v432 = (v44 - 1);
    v431 = -v31;
    v429 = v28;
    v49 = 4 * v28;
    v50 = v10;
LABEL_22:
    v442 = v40;
    v443 = v50;
    v51 = *v38;
    v445 = v39;
    v51(v38, v37, v39, v44);
    v67 = v38[20];
    v68 = v38[18];
    v69 = *(v38 + 2);
    if (v69 == *(v38 + 3))
    {
      v60 = v440;
      if (v440.n128_f32[0] >= 1.0)
      {
        v72 = v446;
      }

      else
      {
        v70 = v44;
        v71 = v38[18];
        v72 = v446;
        do
        {
          if (*v71)
          {
            v59 = vmulq_n_f32(*v67, v60.f32[0]);
            *v67 = v59;
            v67[1].f32[0] = v60.f32[0] * v67[1].f32[0];
          }

          ++v71;
          v67 = (v67 + 20);
          --v70;
        }

        while (v70);
        v67 = (v67 + 20 * v431);
        v68 += v432 + v431 + 1;
      }
    }

    else
    {
      v73 = v38[19];
      v74 = HIWORD(v69) & 0x3F;
      v61.i64[0] = v440.n128_u64[0];
      if (v74 == 16)
      {
        v72 = v446;
        v79 = 0;
        v80 = &v73->u16[4];
        v81 = &v67->f32[2];
        if (v440.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v68[v79])
            {
              v84 = *v80;
              v85 = *(v80 - 1);
              *(v81 - 2) = *&_blt_float[v85 + 256] + *&_blt_float[BYTE1(v85) + 512];
              *(v81 - 1) = *&_blt_float[BYTE2(v85) + 256] + *&_blt_float[BYTE3(v85) | 0x200];
              *v81 = *&_blt_float[BYTE4(v85) + 256] + *&_blt_float[BYTE5(v85) + 512];
              v81[1] = *&_blt_float[BYTE6(v85) + 256] + *&_blt_float[HIBYTE(v85) + 512];
              v81[2] = *&_blt_float[v84 + 256] + *(&_blt_float[512] + ((v84 >> 6) & 0x3FC));
            }

            v80 += 8;
            ++v79;
            v81 += 5;
          }

          while (v44 != v79);
        }

        else
        {
          do
          {
            if (v68[v79])
            {
              v82 = *v80;
              v83 = *(v80 - 1);
              *(v81 - 2) = v61.f32[0] * (*&_blt_float[v83 + 256] + *&_blt_float[BYTE1(v83) + 512]);
              *(v81 - 1) = v61.f32[0] * (*&_blt_float[BYTE2(v83) + 256] + *&_blt_float[BYTE3(v83) | 0x200]);
              *v81 = v61.f32[0] * (*&_blt_float[BYTE4(v83) + 256] + *&_blt_float[BYTE5(v83) + 512]);
              v81[1] = v61.f32[0] * (*&_blt_float[BYTE6(v83) + 256] + *&_blt_float[HIBYTE(v83) + 512]);
              v81[2] = v61.f32[0] * (*&_blt_float[v82 + 256] + *(&_blt_float[512] + ((v82 >> 6) & 0x3FC)));
            }

            v80 += 8;
            ++v79;
            v81 += 5;
          }

          while (v44 != v79);
        }
      }

      else
      {
        _ZF = v74 == 32;
        v72 = v446;
        v76 = 0;
        if (_ZF)
        {
          v77 = v73 + 1;
          v78 = v67 + 1;
          if (v440.n128_f32[0] >= 1.0)
          {
            do
            {
              if (v68[v76])
              {
                v59 = v77[-1];
                v78[-1] = v59;
                v78->i32[0] = v77->i32[0];
              }

              v77 = (v77 + 20);
              ++v76;
              v78 = (v78 + 20);
            }

            while (v44 != v76);
          }

          else
          {
            do
            {
              if (v68[v76])
              {
                v59 = vmulq_n_f32(v77[-1], v61.f32[0]);
                v78[-1] = v59;
                v78->f32[0] = v61.f32[0] * v77->f32[0];
              }

              v77 = (v77 + 20);
              ++v76;
              v78 = (v78 + 20);
            }

            while (v44 != v76);
          }
        }

        else if (v440.n128_f32[0] >= 1.0)
        {
          v89 = &v67->i32[2];
          do
          {
            if (v68[v76])
            {
              v90 = v73->i64[v76];
              *(v89 - 2) = _blt_float[BYTE3(v90)];
              *(v89 - 1) = _blt_float[BYTE2(v90)];
              *v89 = _blt_float[BYTE1(v90)];
              v89[1] = _blt_float[v90];
              v89[2] = _blt_float[BYTE4(v90)];
            }

            ++v76;
            v89 += 5;
          }

          while (v44 != v76);
        }

        else
        {
          f32 = v67[1].f32;
          do
          {
            if (v68[v76])
            {
              v87 = v73->i64[v76];
              v88.i32[0] = _blt_float[BYTE3(v87)];
              v88.i32[1] = _blt_float[BYTE2(v87)];
              v88.i32[2] = _blt_float[BYTE1(v87)];
              v88.i32[3] = _blt_float[v87];
              v59 = vmulq_n_f32(v88, v61.f32[0]);
              *(f32 - 1) = v59;
              *f32 = v61.f32[0] * *&_blt_float[BYTE4(v87)];
            }

            ++v76;
            f32 += 5;
          }

          while (v44 != v76);
        }
      }
    }

    switch(v36)
    {
      case 0:
        v91 = v43 != 0;
        v92 = v44;
        v93 = v43;
        if (v72)
        {
          v94 = v442;
          do
          {
            v95 = *v68;
            if (*v68)
            {
              if (v43)
              {
                v95 = (*v93 * v95 + ((*v93 * v95) >> 8) + 1) >> 8;
              }

              if (v95)
              {
                if (v95 == 255)
                {
                  v32->i64[0] = 0;
                  v32->i64[1] = 0;
                  *v30 = 0;
                }

                else
                {
                  v96 = (v95 * -0.0039216) + 1.0;
                  v97 = bswap32(COERCE_UNSIGNED_INT(v96 * COERCE_FLOAT(bswap32(*v30))));
                  *v32 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v32), v96));
                  *v30 = v97;
                }
              }
            }

            ++v68;
            v93 += v91;
            ++v32;
            ++v30;
            --v92;
          }

          while (v92);
        }

        else
        {
          v94 = v442;
          do
          {
            v390 = *v68;
            if (*v68)
            {
              if (v43)
              {
                v390 = (*v93 * v390 + ((*v93 * v390) >> 8) + 1) >> 8;
              }

              if (v390)
              {
                if (v390 == 255)
                {
                  v32->i64[0] = 0;
                  v32->i64[1] = 0;
                }

                else
                {
                  *v32 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v32), (v390 * -0.0039216) + 1.0));
                }
              }
            }

            ++v68;
            v93 += v91;
            ++v32;
            --v92;
          }

          while (v92);
        }

        goto LABEL_506;
      case 1:
        v228 = *v68;
        if (v72)
        {
          v229 = v32 - 1;
          v230 = &v67[1];
          v231 = v68 + 1;
          v232 = v30 - 1;
          v233 = v44;
          if (v43)
          {
            v192 = v445;
            v94 = v442;
            do
            {
              if (v228)
              {
                v234 = ((*v43 * v228 + ((*v43 * v228) >> 8) + 1) >> 8);
                if (v234)
                {
                  if (v234 == 255)
                  {
                    v235 = bswap32(*v230);
                    v236 = *(v230 - 1);
                  }

                  else
                  {
                    v237 = v234 * 0.0039216;
                    v235 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v237) * COERCE_FLOAT(bswap32(v232[1]))) + (*v230 * v237)));
                    v236 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(v229[1]), 1.0 - v237), *(v230 - 1), v237);
                  }

                  v229[1] = vrev32q_s8(v236);
                  v232[1] = v235;
                }
              }

              v238 = *v231++;
              v228 = v238;
              ++v43;
              ++v229;
              v230 += 5;
              ++v232;
              --v233;
            }

            while (v233);
            v43 += v438;
          }

          else
          {
            v192 = v445;
            v94 = v442;
            do
            {
              if (v228)
              {
                if (v228 == 255)
                {
                  v409 = bswap32(*v230);
                  v410 = *(v230 - 1);
                }

                else
                {
                  v411 = v228 * 0.0039216;
                  v409 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v411) * COERCE_FLOAT(bswap32(v232[1]))) + (*v230 * v411)));
                  v410 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(v229[1]), 1.0 - v411), *(v230 - 1), v411);
                }

                v229[1] = vrev32q_s8(v410);
                v232[1] = v409;
              }

              v412 = *v231++;
              v228 = v412;
              ++v229;
              v230 += 5;
              ++v232;
              --v233;
            }

            while (v233);
            v43 = 0;
          }

          v407 = &v232[v441];
          v408 = &v229[v439];
          goto LABEL_533;
        }

        v391 = v68 + 1;
        v377 = v32 - 1;
        v392 = v44;
        if (v43)
        {
          v192 = v445;
          v94 = v442;
          do
          {
            if (v228)
            {
              v393 = ((*v43 * v228 + ((*v43 * v228) >> 8) + 1) >> 8);
              if (v393)
              {
                if (v393 == 255)
                {
                  v394 = *v67;
                }

                else
                {
                  v394 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(v377[1]), 1.0 - (v393 * 0.0039216)), *v67, v393 * 0.0039216);
                }

                v377[1] = vrev32q_s8(v394);
              }
            }

            v395 = *v391++;
            v228 = v395;
            v67 = (v67 + 20);
            ++v43;
            ++v377;
            --v392;
          }

          while (v392);
          goto LABEL_495;
        }

        v192 = v445;
        v94 = v442;
        do
        {
          if (v228)
          {
            if (v228 == 255)
            {
              v420 = *v67;
            }

            else
            {
              v420 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(v377[1]), 1.0 - (v228 * 0.0039216)), *v67, v228 * 0.0039216);
            }

            v377[1] = vrev32q_s8(v420);
          }

          v421 = *v391++;
          v228 = v421;
          v67 = (v67 + 20);
          ++v377;
          --v392;
        }

        while (v392);
        goto LABEL_554;
      case 2:
        v187 = *v68;
        if (v72)
        {
          if (v43)
          {
            v188 = 0;
            v189 = v68 + 1;
            v190 = v30 - 1;
            v191 = v32 - 1;
            v192 = v445;
            v94 = v442;
            while (1)
            {
              if (!v187)
              {
                goto LABEL_203;
              }

              v193 = ((v43[v188] * v187 + ((v43[v188] * v187) >> 8) + 1) >> 8);
              if (!v193)
              {
                goto LABEL_203;
              }

              if (v193 == 255)
              {
                v194 = v67[1].f32[0];
                if (v194 >= 1.0)
                {
                  v195 = bswap32(LODWORD(v194));
                  v196 = *v67;
                  goto LABEL_202;
                }

                if (v194 > 0.0)
                {
                  v195 = bswap32(COERCE_UNSIGNED_INT(v194 + (COERCE_FLOAT(bswap32(v30[v188])) * (1.0 - v194))));
                  v196 = vmlaq_n_f32(*v67, vrev32q_s8(v32[v188]), 1.0 - v194);
LABEL_202:
                  v32[v188] = vrev32q_s8(v196);
                  v30[v188] = v195;
                }
              }

              else
              {
                v197 = v193 * 0.0039216;
                v198 = v197 * v67[1].f32[0];
                if (v198 > 0.0)
                {
                  v195 = bswap32(COERCE_UNSIGNED_INT(v198 + (COERCE_FLOAT(bswap32(v30[v188])) * (1.0 - v198))));
                  v196 = vmlaq_n_f32(vmulq_n_f32(*v67, v197), vrev32q_s8(v32[v188]), 1.0 - v198);
                  goto LABEL_202;
                }
              }

LABEL_203:
              v187 = v189[v188];
              v67 = (v67 + 20);
              ++v188;
              ++v190;
              ++v191;
              if (v44 == v188)
              {
                v43 += v188 + v438;
LABEL_523:
                v407 = &v190[v441];
                v408 = &v191[v439];
LABEL_533:
                v32 = v408 + 1;
                v30 = v407 + 1;
LABEL_508:
                if (v444 == 1)
                {
                  v10 = v443;
                  if (v443)
                  {
LABEL_557:
                    free(v10);
                  }

                  goto LABEL_558;
                }

                --v444;
                v50 = 0;
                v40 = v94 + 1;
                v37 += v38[16];
                v39 = v38[17] + v192;
                if (v443)
                {
                  v46 = v40;
                  v437 = v37;
                  v48 = v433;
                  v10 = v443;
LABEL_561:
                  v422 = v441 + v48;
                  while (1)
                  {
                    while (1)
                    {
                      v423 = *(v43 - 4);
                      v424 = v423 - v46;
                      if (v423 <= v46)
                      {
                        break;
                      }

                      v444 -= v424;
                      if (v444 < 1)
                      {
                        goto LABEL_557;
                      }

                      v425 = v38[17];
                      v437 += v38[16] * v424;
                      v39 += v425 * v424;
                      v32 += v428 * v424;
                      v426 = v422 * v424;
                      if (!v446)
                      {
                        v426 = 0;
                      }

                      v30 += v426;
                      v46 = v423;
                    }

                    v40 = v46;
                    if (v46 < *(v43 - 3) + v423)
                    {
                      break;
                    }

                    if (!shape_enum_clip_scan(v10, v43 - 4))
                    {
                      goto LABEL_557;
                    }
                  }

                  v31 = v433;
                  v37 = v437;
                  v28 = v429;
                  v36 = v434;
                  goto LABEL_21;
                }

                goto LABEL_22;
              }
            }
          }

          v399 = v68 + 1;
          v190 = v30 - 1;
          v191 = v32 - 1;
          v400 = v44;
          v192 = v445;
          v94 = v442;
          while (1)
          {
            if (v187)
            {
              if (v187 == 255)
              {
                v401 = v67[1].f32[0];
                if (v401 >= 1.0)
                {
                  v402 = bswap32(LODWORD(v401));
                  v403 = *v67;
                  goto LABEL_520;
                }

                if (v401 > 0.0)
                {
                  v402 = bswap32(COERCE_UNSIGNED_INT(v401 + (COERCE_FLOAT(bswap32(v190[1])) * (1.0 - v401))));
                  v403 = vmlaq_n_f32(*v67, vrev32q_s8(v191[1]), 1.0 - v401);
LABEL_520:
                  v191[1] = vrev32q_s8(v403);
                  v190[1] = v402;
                }
              }

              else
              {
                v404 = v187 * 0.0039216;
                v405 = v404 * v67[1].f32[0];
                if (v405 > 0.0)
                {
                  v402 = bswap32(COERCE_UNSIGNED_INT(v405 + (COERCE_FLOAT(bswap32(v190[1])) * (1.0 - v405))));
                  v403 = vmlaq_n_f32(vmulq_n_f32(*v67, v404), vrev32q_s8(v191[1]), 1.0 - v405);
                  goto LABEL_520;
                }
              }
            }

            v406 = *v399++;
            v187 = v406;
            v67 = (v67 + 20);
            ++v190;
            ++v191;
            if (!--v400)
            {
              v43 = 0;
              goto LABEL_523;
            }
          }
        }

        v376 = v68 + 1;
        v377 = v32 - 1;
        v378 = v44;
        if (v43)
        {
          v192 = v445;
          v94 = v442;
          while (1)
          {
            if (!v187)
            {
              goto LABEL_463;
            }

            v379 = ((*v43 * v187 + ((*v43 * v187) >> 8) + 1) >> 8);
            if (!v379)
            {
              goto LABEL_463;
            }

            if (v379 == 255)
            {
              v380 = v67[1].f32[0];
              if (v380 >= 1.0)
              {
                v385 = *v67;
                goto LABEL_462;
              }

              if (v380 > 0.0)
              {
                v381 = 1.0 - v380;
                v382 = *v67;
                goto LABEL_460;
              }
            }

            else
            {
              v383 = v379 * 0.0039216;
              v384 = v383 * v67[1].f32[0];
              if (v384 > 0.0)
              {
                v381 = 1.0 - v384;
                v382 = vmulq_n_f32(*v67, v383);
LABEL_460:
                v385 = vmlaq_n_f32(v382, vrev32q_s8(v377[1]), v381);
LABEL_462:
                v377[1] = vrev32q_s8(v385);
              }
            }

LABEL_463:
            v386 = *v376++;
            v187 = v386;
            v67 = (v67 + 20);
            ++v43;
            ++v377;
            if (!--v378)
            {
LABEL_495:
              v43 += v438;
LABEL_555:
              v32 = &v377[v439 + 1];
              v30 += v441;
              goto LABEL_508;
            }
          }
        }

        v192 = v445;
        v94 = v442;
        while (1)
        {
          if (v187)
          {
            if (v187 == 255)
            {
              v413 = v67[1].f32[0];
              if (v413 >= 1.0)
              {
                v418 = *v67;
                goto LABEL_544;
              }

              if (v413 > 0.0)
              {
                v414 = 1.0 - v413;
                v415 = *v67;
                goto LABEL_542;
              }
            }

            else
            {
              v416 = v187 * 0.0039216;
              v417 = v416 * v67[1].f32[0];
              if (v417 > 0.0)
              {
                v414 = 1.0 - v417;
                v415 = vmulq_n_f32(*v67, v416);
LABEL_542:
                v418 = vmlaq_n_f32(v415, vrev32q_s8(v377[1]), v414);
LABEL_544:
                v377[1] = vrev32q_s8(v418);
              }
            }
          }

          v419 = *v376++;
          v187 = v419;
          v67 = (v67 + 20);
          ++v377;
          if (!--v378)
          {
LABEL_554:
            v43 = 0;
            goto LABEL_555;
          }
        }

      case 3:
        v207 = v67[1].f32;
        v208 = v44;
        v93 = v43;
        v94 = v442;
        do
        {
          v209 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v209 = (*v93 * v209 + ((*v93 * v209) >> 8) + 1) >> 8;
            }

            if (v209)
            {
              if (v209 == 255)
              {
                v210 = COERCE_FLOAT(bswap32(*v30));
                v211 = bswap32(COERCE_UNSIGNED_INT(*v207 * v210));
                v212 = vmulq_n_f32(*(v207 - 4), v210);
              }

              else
              {
                v213 = v209 * 0.0039216;
                v214 = COERCE_FLOAT(bswap32(*v30));
                v215 = v213 * v214;
                v216 = 1.0 - v213;
                v211 = bswap32(COERCE_UNSIGNED_INT((v216 * v214) + (*v207 * v215)));
                v212 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v32), v216), *(v207 - 4), v215);
              }

              *v32 = vrev32q_s8(v212);
              *v30 = v211;
            }
          }

          ++v68;
          v93 += v43 != 0;
          ++v32;
          v207 += 5;
          v30 = (v30 + v49);
          --v208;
        }

        while (v208);
        goto LABEL_506;
      case 4:
        v146 = v67[1].f32;
        v147 = v44;
        v93 = v43;
        v94 = v442;
        do
        {
          v148 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v148 = (*v93 * v148 + ((*v93 * v148) >> 8) + 1) >> 8;
            }

            if (v148)
            {
              if (v148 == 255)
              {
                v149 = 1.0 - COERCE_FLOAT(bswap32(*v30));
                v150 = bswap32(COERCE_UNSIGNED_INT(*v146 * v149));
                v151 = vmulq_n_f32(*(v146 - 4), v149);
              }

              else
              {
                v152 = v148 * 0.0039216;
                v153 = COERCE_FLOAT(bswap32(*v30));
                v154 = v152 * (1.0 - v153);
                v155 = 1.0 - v152;
                v150 = bswap32(COERCE_UNSIGNED_INT((v155 * v153) + (*v146 * v154)));
                v151 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v32), v155), *(v146 - 4), v154);
              }

              *v32 = vrev32q_s8(v151);
              *v30 = v150;
            }
          }

          ++v68;
          v93 += v43 != 0;
          ++v32;
          v146 += 5;
          v30 = (v30 + v49);
          --v147;
        }

        while (v147);
        goto LABEL_506;
      case 5:
        v261 = v67[1].f32;
        v262 = v44;
        v93 = v43;
        v94 = v442;
        while (1)
        {
          v263 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_289;
            }

            v264 = *v93 * v263 + ((*v93 * v263) >> 8) + 1;
            if (v264 >= 0x100)
            {
              break;
            }
          }

LABEL_290:
          ++v68;
          v93 += v43 != 0;
          ++v32;
          v261 += 5;
          v30 = (v30 + v49);
          if (!--v262)
          {
            goto LABEL_506;
          }
        }

        v263 = v264 >> 8;
LABEL_289:
        v265 = COERCE_FLOAT(bswap32(*v30));
        v266 = v263 * 0.0039216;
        v267 = v266 * *v261;
        *v32 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v32), 1.0 - v267), vmulq_n_f32(*(v261 - 4), v266), v265));
        *v30 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v267) * v265) + (v267 * v265)));
        goto LABEL_290;
      case 6:
        v289 = v67[1].f32;
        v290 = v44;
        v93 = v43;
        v94 = v442;
        while (1)
        {
          v291 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v292 = *v93 * v291 + ((*v93 * v291) >> 8) + 1;
              if (v292 < 0x100)
              {
                goto LABEL_331;
              }

              v291 = v292 >> 8;
            }

            v293 = COERCE_FLOAT(bswap32(*v30));
            v294 = 1.0 - v293;
            if ((1.0 - v293) >= 1.0)
            {
              v298 = v291 * 0.0039216;
              v296 = bswap32(COERCE_UNSIGNED_INT(v298 * *v289));
              v297 = vmulq_n_f32(*(v289 - 4), v298);
              goto LABEL_330;
            }

            if (v294 > 0.0)
            {
              v295 = (v291 * 0.0039216) * v294;
              v296 = bswap32(COERCE_UNSIGNED_INT(v293 + (*v289 * v295)));
              v297 = vmlaq_n_f32(vrev32q_s8(*v32), *(v289 - 4), v295);
LABEL_330:
              *v32 = vrev32q_s8(v297);
              *v30 = v296;
            }
          }

LABEL_331:
          ++v68;
          v93 += v43 != 0;
          ++v32;
          v289 += 5;
          v30 = (v30 + v49);
          if (!--v290)
          {
            goto LABEL_506;
          }
        }

      case 7:
        v217 = v43 != 0;
        v218 = v67[1].f32;
        v219 = v44;
        v93 = v43;
        if (v72)
        {
          v94 = v442;
          do
          {
            v220 = *v68;
            if (*v68)
            {
              if (v43)
              {
                v220 = (*v93 * v220 + ((*v93 * v220) >> 8) + 1) >> 8;
              }

              if (v220)
              {
                if (v220 == 255)
                {
                  v221 = vmulq_n_f32(vrev32q_s8(*v32), *v218);
                  v222 = *v218 * COERCE_FLOAT(bswap32(*v30));
                }

                else
                {
                  v223 = v220 * 0.0039216;
                  v224 = COERCE_FLOAT(bswap32(*v30));
                  v225 = v223 * *v218;
                  v226 = 1.0 - v223;
                  v227 = vrev32q_s8(*v32);
                  v221 = vmlaq_n_f32(vmulq_n_f32(v227, 1.0 - v223), v227, v225);
                  v222 = (v226 * v224) + (v224 * v225);
                }

                *v32 = vrev32q_s8(v221);
                *v30 = bswap32(LODWORD(v222));
              }
            }

            ++v68;
            v93 += v217;
            ++v32;
            ++v30;
            v218 += 5;
            --v219;
          }

          while (v219);
        }

        else
        {
          v94 = v442;
          do
          {
            v387 = *v68;
            if (*v68)
            {
              if (v43)
              {
                v387 = (*v93 * v387 + ((*v93 * v387) >> 8) + 1) >> 8;
              }

              if (v387)
              {
                if (v387 == 255)
                {
                  v388 = vmulq_n_f32(vrev32q_s8(*v32), *v218);
                }

                else
                {
                  v389 = vrev32q_s8(*v32);
                  v388 = vmlaq_n_f32(vmulq_n_f32(v389, 1.0 - (v387 * 0.0039216)), v389, (v387 * 0.0039216) * *v218);
                }

                *v32 = vrev32q_s8(v388);
              }
            }

            ++v68;
            v93 += v217;
            ++v32;
            v218 += 5;
            --v219;
          }

          while (v219);
        }

        goto LABEL_506;
      case 8:
        v314 = v43 != 0;
        v315 = v67[1].f32;
        v316 = v44;
        v93 = v43;
        if (v72)
        {
          v94 = v442;
          do
          {
            v317 = *v68;
            if (*v68)
            {
              if (v43)
              {
                v317 = (*v93 * v317 + ((*v93 * v317) >> 8) + 1) >> 8;
              }

              if (v317)
              {
                if (v317 == 255)
                {
                  v318 = 1.0 - *v315;
                  v319 = vmulq_n_f32(vrev32q_s8(*v32), v318);
                  v320 = v318 * COERCE_FLOAT(bswap32(*v30));
                }

                else
                {
                  v321 = v317 * 0.0039216;
                  v322 = COERCE_FLOAT(bswap32(*v30));
                  v323 = v321 * (1.0 - *v315);
                  v324 = 1.0 - v321;
                  v325 = vrev32q_s8(*v32);
                  v319 = vmlaq_n_f32(vmulq_n_f32(v325, 1.0 - v321), v325, v323);
                  v320 = (v324 * v322) + (v322 * v323);
                }

                *v32 = vrev32q_s8(v319);
                *v30 = bswap32(LODWORD(v320));
              }
            }

            ++v68;
            v93 += v314;
            ++v32;
            ++v30;
            v315 += 5;
            --v316;
          }

          while (v316);
        }

        else
        {
          v94 = v442;
          do
          {
            v396 = *v68;
            if (*v68)
            {
              if (v43)
              {
                v396 = (*v93 * v396 + ((*v93 * v396) >> 8) + 1) >> 8;
              }

              if (v396)
              {
                if (v396 == 255)
                {
                  v397 = vmulq_n_f32(vrev32q_s8(*v32), 1.0 - *v315);
                }

                else
                {
                  v398 = vrev32q_s8(*v32);
                  v397 = vmlaq_n_f32(vmulq_n_f32(v398, 1.0 - (v396 * 0.0039216)), v398, (v396 * 0.0039216) * (1.0 - *v315));
                }

                *v32 = vrev32q_s8(v397);
              }
            }

            ++v68;
            v93 += v314;
            ++v32;
            v315 += 5;
            --v316;
          }

          while (v316);
        }

        goto LABEL_506;
      case 9:
        v163 = v67[1].f32;
        v164 = v44;
        v93 = v43;
        v94 = v442;
        while (1)
        {
          v165 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_155;
            }

            v166 = *v93 * v165 + ((*v93 * v165) >> 8) + 1;
            if (v166 >= 0x100)
            {
              break;
            }
          }

LABEL_156:
          ++v68;
          v93 += v43 != 0;
          ++v32;
          v163 += 5;
          v30 = (v30 + v49);
          if (!--v164)
          {
            goto LABEL_506;
          }
        }

        v165 = v166 >> 8;
LABEL_155:
        v167 = COERCE_FLOAT(bswap32(*v30));
        v168 = v165 * 0.0039216;
        v169 = v168 * *v163;
        v170 = (1.0 - v168) + v169;
        *v32 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v32), v170), vmulq_n_f32(*(v163 - 4), v168), 1.0 - v167));
        *v30 = bswap32(COERCE_UNSIGNED_INT((v170 * v167) + (v169 * (1.0 - v167))));
        goto LABEL_156;
      case 10:
        v307 = v67[1].f32;
        v308 = v44;
        v93 = v43;
        v94 = v442;
        while (1)
        {
          v309 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_354;
            }

            v310 = *v93 * v309 + ((*v93 * v309) >> 8) + 1;
            if (v310 >= 0x100)
            {
              break;
            }
          }

LABEL_355:
          ++v68;
          v93 += v43 != 0;
          ++v32;
          v307 += 5;
          v30 = (v30 + v49);
          if (!--v308)
          {
            goto LABEL_506;
          }
        }

        v309 = v310 >> 8;
LABEL_354:
        v311 = COERCE_FLOAT(bswap32(*v30));
        v312 = v309 * 0.0039216;
        v313 = v312 * *v307;
        *v32 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v32), 1.0 - v313), vmulq_n_f32(*(v307 - 4), v312), 1.0 - v311));
        *v30 = bswap32(COERCE_UNSIGNED_INT(((1.0 - v313) * v311) + (v313 * (1.0 - v311))));
        goto LABEL_355;
      case 11:
        v138 = v43 != 0;
        v139 = v67[1].f32;
        v140 = v44;
        v93 = v43;
        if (v72)
        {
          v94 = v442;
          while (1)
          {
            v141 = *v68;
            if (*v68)
            {
              if (!v43)
              {
                goto LABEL_123;
              }

              v142 = *v93 * v141 + ((*v93 * v141) >> 8) + 1;
              if (v142 >= 0x100)
              {
                break;
              }
            }

LABEL_126:
            ++v68;
            v93 += v138;
            ++v32;
            ++v30;
            v139 += 5;
            if (!--v140)
            {
              goto LABEL_506;
            }
          }

          v141 = v142 >> 8;
LABEL_123:
          v143 = v141 * 0.0039216;
          v60.f32[0] = v143 * *v139;
          v61.i32[0] = bswap32(*v30);
          v62.f32[0] = v60.f32[0] + v61.f32[0];
          if ((v60.f32[0] + v61.f32[0]) > 1.0)
          {
            v62.f32[0] = 1.0;
          }

          v144 = vdupq_lane_s32(*v62.f32, 0);
          v145 = bswap32(v62.u32[0]);
          v62 = vrev32q_s8(*v32);
          v60 = vdupq_lane_s32(*v60.f32, 0);
          v61 = vsubq_f32(v144, vsubq_f32(vdupq_lane_s32(*v61.f32, 0), v62));
          *v32 = vrev32q_s8(vaddq_f32(vsubq_f32(v60, vmulq_n_f32(*(v139 - 4), v143)), v61));
          *v30 = v145;
          goto LABEL_126;
        }

        v94 = v442;
        while (1)
        {
          v369 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_439;
            }

            v370 = *v93 * v369 + ((*v93 * v369) >> 8) + 1;
            if (v370 >= 0x100)
            {
              break;
            }
          }

LABEL_440:
          ++v68;
          v93 += v138;
          ++v32;
          v139 += 5;
          if (!--v140)
          {
LABEL_506:
            v43 = &v93[v438];
            goto LABEL_507;
          }
        }

        v369 = v370 >> 8;
LABEL_439:
        v371 = v369 * 0.0039216;
        v60.f32[0] = v371 * *v139;
        v60 = vdupq_lane_s32(*v60.f32, 0);
        *v32 = vrev32q_s8(vaddq_f32(vsubq_f32(v60, vmulq_n_f32(*(v139 - 4), v371)), vrev32q_s8(*v32)));
        goto LABEL_440;
      case 12:
        v156 = v43 != 0;
        if (v72)
        {
          v157 = v67[1].f32;
          v158 = v44;
          v93 = v43;
          v94 = v442;
          while (1)
          {
            v159 = *v68;
            if (*v68)
            {
              if (!v43)
              {
                goto LABEL_145;
              }

              v160 = *v93 * v159 + ((*v93 * v159) >> 8) + 1;
              if (v160 >= 0x100)
              {
                break;
              }
            }

LABEL_148:
            ++v68;
            v93 += v156;
            ++v32;
            ++v30;
            v157 += 5;
            if (!--v158)
            {
              goto LABEL_506;
            }
          }

          v159 = v160 >> 8;
LABEL_145:
          v161 = v159 * 0.0039216;
          v162 = (v161 * *v157) + COERCE_FLOAT(bswap32(*v30));
          if (v162 > 1.0)
          {
            v162 = 1.0;
          }

          *v32 = vrev32q_s8(vaddq_f32(vmulq_n_f32(*(v157 - 4), v161), vrev32q_s8(*v32)));
          *v30 = bswap32(LODWORD(v162));
          goto LABEL_148;
        }

        v372 = v44;
        v373 = v43;
        v94 = v442;
        while (1)
        {
          v374 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_447;
            }

            v375 = *v373 * v374 + ((*v373 * v374) >> 8) + 1;
            if (v375 >= 0x100)
            {
              break;
            }
          }

LABEL_448:
          ++v68;
          v67 = (v67 + 20);
          v373 += v156;
          ++v32;
          if (!--v372)
          {
            v43 = &v373[v438];
LABEL_507:
            v32 += v439;
            v30 += v441;
            v192 = v445;
            goto LABEL_508;
          }
        }

        v374 = v375 >> 8;
LABEL_447:
        *v32 = vrev32q_s8(vaddq_f32(vmulq_n_f32(*v67, v374 * 0.0039216), vrev32q_s8(*v32)));
        goto LABEL_448;
      case 13:
        v276 = v67[1].f32;
        v277 = v44;
        v110 = v43;
        while (1)
        {
          v278 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_313;
            }

            v279 = *v110 * v278 + ((*v110 * v278) >> 8) + 1;
            if (v279 >= 0x100)
            {
              break;
            }
          }

LABEL_319:
          ++v68;
          v110 += v43 != 0;
          ++v32;
          v276 += 5;
          v30 = (v30 + v49);
          if (!--v277)
          {
            goto LABEL_416;
          }
        }

        v278 = v279 >> 8;
LABEL_313:
        v280 = v278 * 0.0039216;
        v59.f32[0] = v280 * *v276;
        if (v59.f32[0] > 0.0)
        {
          v282 = *(v276 - 4);
          v281 = vmulq_n_f32(v282, v280);
          v282.i32[0] = 1.0;
          v60.i32[0] = 1.0;
          if (v72 && (v60.i32[0] = bswap32(*v30), v60.f32[0] <= 0.0) || (v283 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), vrev32q_s8(*v32)), v284 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v281), v285 = vmulq_f32(v283, v284), v286 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v59, v282)), 0), vmlaq_n_f32(v285, v283, 1.0 - v59.f32[0]), v285), v287 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v60, v282)), 0), vmlaq_n_f32(v286, v284, 1.0 - v60.f32[0]), v286), v59.f32[0] = (v60.f32[0] + v59.f32[0]) - (v60.f32[0] * v59.f32[0]), v60 = vdupq_lane_s32(*v59.f32, 0), v281 = vsubq_f32(v60, v287), v72))
          {
            v288 = bswap32(v59.u32[0]);
            v59 = vrev32q_s8(v281);
            *v32 = v59;
            *v30 = v288;
          }

          else
          {
            v59 = vrev32q_s8(v281);
            *v32 = v59;
          }
        }

        goto LABEL_319;
      case 14:
        v124 = v67[1].f32;
        v125 = v44;
        v110 = v43;
        while (1)
        {
          v126 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v127 = *v110 * v126 + ((*v110 * v126) >> 8) + 1;
              if (v127 < 0x100)
              {
                goto LABEL_115;
              }

              v126 = v127 >> 8;
            }

            v128 = v126 * 0.0039216;
            v59.f32[0] = v128 * *v124;
            if (v59.f32[0] > 0.0)
            {
              v129 = *(v124 - 4);
              v130 = vmulq_n_f32(v129, v128);
              if (v72)
              {
                v129.i32[0] = bswap32(*v30);
                if (v129.f32[0] <= 0.0)
                {
LABEL_113:
                  v137 = bswap32(v59.u32[0]);
                  v59 = vrev32q_s8(v130);
                  *v32 = v59;
                  *v30 = v137;
                  goto LABEL_115;
                }
              }

              else
              {
                v129.i32[0] = 1.0;
              }

              v131 = vsubq_f32(vdupq_lane_s32(*v129.f32, 0), vrev32q_s8(*v32));
              __asm { FMOV            V4.4S, #1.0 }

              v136 = vmlaq_f32(v131, vsubq_f32(_Q4, v131), vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v130));
              v59.f32[0] = (v59.f32[0] + v129.f32[0]) - (v129.f32[0] * v59.f32[0]);
              v130 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v136);
              if (!v72)
              {
                v59 = vrev32q_s8(v130);
                *v32 = v59;
                goto LABEL_115;
              }

              goto LABEL_113;
            }
          }

LABEL_115:
          ++v68;
          v110 += v43 != 0;
          ++v32;
          v124 += 5;
          v30 = (v30 + v49);
          if (!--v125)
          {
            goto LABEL_416;
          }
        }

      case 15:
        v437 = v37;
        v199 = v67[1].f32;
        v200 = v44;
        v100 = v43;
        while (1)
        {
          v201 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v202 = *v100 * v201 + ((*v100 * v201) >> 8) + 1;
              if (v202 < 0x100)
              {
                goto LABEL_219;
              }

              v201 = v202 >> 8;
            }

            v203 = v201 * 0.0039216;
            *&v65 = v203 * *v199;
            if (*&v65 > 0.0)
            {
              v204 = vmulq_n_f32(*(v199 - 4), v203);
              if (v72)
              {
                v205 = COERCE_FLOAT(bswap32(*v30));
                if (v205 <= 0.0)
                {
LABEL_217:
                  *v32 = vrev32q_s8(v204);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_219;
                }
              }

              else
              {
                v205 = 1.0;
              }

              v206 = vrev32q_s8(*v32);
              PDAoverlayPDA(v447.i32, *v206.i32, *&v206.i32[1], *&v206.i32[2], *&v206.i32[3], v205, *v204.i64, v65, v66, *v204.i32, *&v204.i32[1], *&v204.i32[2], *&v204.i32[3], *&v65);
              v72 = v446;
              v204 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_219;
              }

              *&v65 = v448;
              goto LABEL_217;
            }
          }

LABEL_219:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v199 += 5;
          v30 = (v30 + v49);
          if (!--v200)
          {
            goto LABEL_432;
          }
        }

      case 16:
        v108 = v67[1].f32;
        v109 = v44;
        v110 = v43;
        while (1)
        {
          v111 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_94;
            }

            v112 = *v110 * v111 + ((*v110 * v111) >> 8) + 1;
            if (v112 >= 0x100)
            {
              break;
            }
          }

LABEL_100:
          ++v68;
          v110 += v43 != 0;
          ++v32;
          v108 += 5;
          v30 = (v30 + v49);
          if (!--v109)
          {
            goto LABEL_416;
          }
        }

        v111 = v112 >> 8;
LABEL_94:
        v113 = v111 * 0.0039216;
        v59.f32[0] = v113 * *v108;
        if (v59.f32[0] > 0.0)
        {
          v115 = *(v108 - 4);
          v114 = vmulq_n_f32(v115, v113);
          v115.i32[0] = 1.0;
          v60.i32[0] = 1.0;
          if (v72 && (v60.i32[0] = bswap32(*v30), v60.f32[0] <= 0.0) || (v116 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), vrev32q_s8(*v32)), v117 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v114), v118 = vmulq_n_f32(v116, v59.f32[0]), v119 = vmulq_n_f32(v117, v60.f32[0]), v120 = vbslq_s8(vcgtq_f32(v118, v119), v119, v118), v121 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v59, v115)), 0), vmlaq_n_f32(v120, v116, 1.0 - v59.f32[0]), v120), v122 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v60, v115)), 0), vmlaq_n_f32(v121, v117, 1.0 - v60.f32[0]), v121), v59.f32[0] = (v60.f32[0] + v59.f32[0]) - (v60.f32[0] * v59.f32[0]), v60 = vdupq_lane_s32(*v59.f32, 0), v114 = vsubq_f32(v60, v122), v72))
          {
            v123 = bswap32(v59.u32[0]);
            v59 = vrev32q_s8(v114);
            *v32 = v59;
            *v30 = v123;
          }

          else
          {
            v59 = vrev32q_s8(v114);
            *v32 = v59;
          }
        }

        goto LABEL_100;
      case 17:
        v239 = v67[1].f32;
        v240 = v44;
        v110 = v43;
        while (1)
        {
          v241 = *v68;
          if (*v68)
          {
            if (!v43)
            {
              goto LABEL_260;
            }

            v242 = *v110 * v241 + ((*v110 * v241) >> 8) + 1;
            if (v242 >= 0x100)
            {
              break;
            }
          }

LABEL_266:
          ++v68;
          v110 += v43 != 0;
          ++v32;
          v239 += 5;
          v30 = (v30 + v49);
          if (!--v240)
          {
            goto LABEL_416;
          }
        }

        v241 = v242 >> 8;
LABEL_260:
        v243 = v241 * 0.0039216;
        v59.f32[0] = v243 * *v239;
        if (v59.f32[0] > 0.0)
        {
          v245 = *(v239 - 4);
          v244 = vmulq_n_f32(v245, v243);
          v245.i32[0] = 1.0;
          v60.i32[0] = 1.0;
          if (v72 && (v60.i32[0] = bswap32(*v30), v60.f32[0] <= 0.0) || (v246 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), vrev32q_s8(*v32)), v247 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v244), v248 = vmulq_n_f32(v246, v59.f32[0]), v249 = vmulq_n_f32(v247, v60.f32[0]), v250 = vbslq_s8(vcgtq_f32(v249, v248), v249, v248), v251 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v59, v245)), 0), vmlaq_n_f32(v250, v246, 1.0 - v59.f32[0]), v250), v252 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v60, v245)), 0), vmlaq_n_f32(v251, v247, 1.0 - v60.f32[0]), v251), v59.f32[0] = (v60.f32[0] + v59.f32[0]) - (v60.f32[0] * v59.f32[0]), v60 = vdupq_lane_s32(*v59.f32, 0), v244 = vsubq_f32(v60, v252), v72))
          {
            v253 = bswap32(v59.u32[0]);
            v59 = vrev32q_s8(v244);
            *v32 = v59;
            *v30 = v253;
          }

          else
          {
            v59 = vrev32q_s8(v244);
            *v32 = v59;
          }
        }

        goto LABEL_266;
      case 18:
        v437 = v37;
        v299 = v67[1].f32;
        v300 = v44;
        v100 = v43;
        while (1)
        {
          v301 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v302 = *v100 * v301 + ((*v100 * v301) >> 8) + 1;
              if (v302 < 0x100)
              {
                goto LABEL_347;
              }

              v301 = v302 >> 8;
            }

            v303 = v301 * 0.0039216;
            *&v65 = v303 * *v299;
            if (*&v65 > 0.0)
            {
              v304 = vmulq_n_f32(*(v299 - 4), v303);
              if (v72)
              {
                v305 = COERCE_FLOAT(bswap32(*v30));
                if (v305 <= 0.0)
                {
LABEL_345:
                  *v32 = vrev32q_s8(v304);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_347;
                }
              }

              else
              {
                v305 = 1.0;
              }

              v306 = vrev32q_s8(*v32);
              PDAcolordodgePDA(v447.i32, *v306.i32, *&v306.i32[1], *&v306.i32[2], *&v306.i32[3], v305, *v304.i64, v65, v66, *v304.i32, *&v304.i32[1], *&v304.i32[2], *&v304.i32[3], *&v65);
              v72 = v446;
              v304 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_347;
              }

              *&v65 = v448;
              goto LABEL_345;
            }
          }

LABEL_347:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v299 += 5;
          v30 = (v30 + v49);
          if (!--v300)
          {
            goto LABEL_432;
          }
        }

      case 19:
        v437 = v37;
        v342 = v67[1].f32;
        v343 = v44;
        v100 = v43;
        while (1)
        {
          v344 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v345 = *v100 * v344 + ((*v100 * v344) >> 8) + 1;
              if (v345 < 0x100)
              {
                goto LABEL_399;
              }

              v344 = v345 >> 8;
            }

            v346 = v344 * 0.0039216;
            *&v65 = v346 * *v342;
            if (*&v65 > 0.0)
            {
              v347 = vmulq_n_f32(*(v342 - 4), v346);
              if (v72)
              {
                v348 = COERCE_FLOAT(bswap32(*v30));
                if (v348 <= 0.0)
                {
LABEL_397:
                  *v32 = vrev32q_s8(v347);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_399;
                }
              }

              else
              {
                v348 = 1.0;
              }

              v349 = vrev32q_s8(*v32);
              PDAcolorburnPDA(v447.i32, *v349.i32, *&v349.i32[1], *&v349.i32[2], *&v349.i32[3], v348, *v347.i64, v65, v66, *v347.i32, *&v347.i32[1], *&v347.i32[2], *&v347.i32[3], *&v65);
              v72 = v446;
              v347 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_399;
              }

              *&v65 = v448;
              goto LABEL_397;
            }
          }

LABEL_399:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v342 += 5;
          v30 = (v30 + v49);
          if (!--v343)
          {
            goto LABEL_432;
          }
        }

      case 20:
        v437 = v37;
        v254 = v67[1].f32;
        v255 = v44;
        v100 = v43;
        while (1)
        {
          v256 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v257 = *v100 * v256 + ((*v100 * v256) >> 8) + 1;
              if (v257 < 0x100)
              {
                goto LABEL_282;
              }

              v256 = v257 >> 8;
            }

            v258 = v256 * 0.0039216;
            *&v65 = v258 * *v254;
            if (*&v65 > 0.0)
            {
              v259 = vmulq_n_f32(*(v254 - 4), v258);
              if (v72)
              {
                LODWORD(v63) = bswap32(*v30);
                if (*&v63 <= 0.0)
                {
LABEL_280:
                  *v32 = vrev32q_s8(v259);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_282;
                }
              }

              else
              {
                LODWORD(v63) = 1.0;
              }

              v260 = vrev32q_s8(*v32);
              PDAsoftlightPDA(&v447, *v260.i8, *&v260.i32[1], *&v260.i32[2], *&v260.i32[3], v63, *v259.i8, v65, v66, v52, v53, v54, v55, v56, v57, v58, *v259.i8, *&v259.i32[2], *&v259.i32[3], *&v65);
              v72 = v446;
              v259 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_282;
              }

              *&v65 = v448;
              goto LABEL_280;
            }
          }

LABEL_282:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v254 += 5;
          v30 = (v30 + v49);
          if (!--v255)
          {
            goto LABEL_432;
          }
        }

      case 21:
        v437 = v37;
        v268 = v67[1].f32;
        v269 = v44;
        v100 = v43;
        while (1)
        {
          v270 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v271 = *v100 * v270 + ((*v100 * v270) >> 8) + 1;
              if (v271 < 0x100)
              {
                goto LABEL_306;
              }

              v270 = v271 >> 8;
            }

            v272 = v270 * 0.0039216;
            *&v65 = v272 * *v268;
            if (*&v65 > 0.0)
            {
              v273 = vmulq_n_f32(*(v268 - 4), v272);
              if (v72)
              {
                v274 = COERCE_FLOAT(bswap32(*v30));
                if (v274 <= 0.0)
                {
LABEL_304:
                  *v32 = vrev32q_s8(v273);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_306;
                }
              }

              else
              {
                v274 = 1.0;
              }

              v275 = vrev32q_s8(*v32);
              PDAhardlightPDA(v447.i32, *v275.i32, *&v275.i32[1], *&v275.i32[2], *&v275.i32[3], v274, *v273.i64, v65, v66, *v273.i32, *&v273.i32[1], *&v273.i32[2], *&v273.i32[3], *&v65);
              v72 = v446;
              v273 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_306;
              }

              *&v65 = v448;
              goto LABEL_304;
            }
          }

LABEL_306:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v268 += 5;
          v30 = (v30 + v49);
          if (!--v269)
          {
            goto LABEL_432;
          }
        }

      case 22:
        v326 = v67[1].f32;
        v327 = v44;
        v110 = v43;
        while (1)
        {
          v328 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v329 = *v110 * v328 + ((*v110 * v328) >> 8) + 1;
              if (v329 < 0x100)
              {
                goto LABEL_383;
              }

              v328 = v329 >> 8;
            }

            v330 = v328 * 0.0039216;
            v59.f32[0] = v330 * *v326;
            if (v59.f32[0] > 0.0)
            {
              v331 = *(v326 - 4);
              v332 = vmulq_n_f32(v331, v330);
              if (v72)
              {
                v331.i32[0] = bswap32(*v30);
                if (v331.f32[0] <= 0.0)
                {
LABEL_381:
                  v341 = bswap32(v59.u32[0]);
                  v59 = vrev32q_s8(v332);
                  *v32 = v59;
                  *v30 = v341;
                  goto LABEL_383;
                }
              }

              else
              {
                v331.i32[0] = 1.0;
              }

              v333 = *v32;
              *v333.i32 = (v331.f32[0] + v59.f32[0]) - (v331.f32[0] * v59.f32[0]);
              v334 = vsubq_f32(vdupq_lane_s32(*v331.f32, 0), vrev32q_s8(*v32));
              v335 = vsubq_f32(vdupq_lane_s32(*v59.f32, 0), v332);
              v336 = vaddq_f32(v334, v335);
              v337 = vmulq_n_f32(v334, v59.f32[0]);
              v338 = vmulq_n_f32(v335, v331.f32[0]);
              v339 = vsubq_f32(v336, v337);
              v340 = vsubq_f32(v337, v338);
              v332 = vsubq_f32(vdupq_lane_s32(*v333.i8, 0), vaddq_f32(vsubq_f32(v339, v338), vbslq_s8(vcltzq_f32(v340), vnegq_f32(v340), v340)));
              if (!v72)
              {
                v59 = vrev32q_s8(v332);
                *v32 = v59;
                goto LABEL_383;
              }

              v59.i32[0] = v333.i32[0];
              goto LABEL_381;
            }
          }

LABEL_383:
          ++v68;
          v110 += v43 != 0;
          ++v32;
          v326 += 5;
          v30 = (v30 + v49);
          if (!--v327)
          {
            goto LABEL_416;
          }
        }

      case 23:
        v350 = v67[1].f32;
        v351 = v44;
        v110 = v43;
        while (1)
        {
          v352 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v353 = *v110 * v352 + ((*v110 * v352) >> 8) + 1;
              if (v353 < 0x100)
              {
                goto LABEL_415;
              }

              v352 = v353 >> 8;
            }

            v354 = v352 * 0.0039216;
            v60.f32[0] = v354 * *v350;
            if (v60.f32[0] > 0.0)
            {
              v355 = *(v350 - 4);
              v356 = vmulq_n_f32(v355, v354);
              if (v72)
              {
                v355.i32[0] = bswap32(*v30);
                if (v355.f32[0] <= 0.0)
                {
LABEL_413:
                  *v32 = vrev32q_s8(v356);
                  *v30 = bswap32(v60.u32[0]);
                  goto LABEL_415;
                }
              }

              else
              {
                v355.i32[0] = 1.0;
              }

              v357 = vdupq_lane_s32(*v355.f32, 0);
              v355.f32[0] = (v355.f32[0] + v60.f32[0]) - (v355.f32[0] * v60.f32[0]);
              v358 = vsubq_f32(v357, vrev32q_s8(*v32));
              v359 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), v356);
              v360 = vaddq_f32(v358, v359);
              v361 = vmulq_f32(v359, v358);
              v358.i64[0] = 0xC0000000C0000000;
              v358.i64[1] = 0xC0000000C0000000;
              v60 = vmlaq_f32(v360, v358, v361);
              v356 = vsubq_f32(vdupq_lane_s32(*v355.f32, 0), v60);
              if (!v72)
              {
                *v32 = vrev32q_s8(v356);
                goto LABEL_415;
              }

              v60.i32[0] = v355.i32[0];
              goto LABEL_413;
            }
          }

LABEL_415:
          ++v68;
          v110 += v43 != 0;
          ++v32;
          v350 += 5;
          v30 = (v30 + v49);
          if (!--v351)
          {
LABEL_416:
            v43 = &v110[v438];
            v32 += v439;
            v30 += v441;
LABEL_433:
            v192 = v445;
            v94 = v442;
            goto LABEL_508;
          }
        }

      case 24:
        v437 = v37;
        v179 = v67[1].f32;
        v180 = v44;
        v100 = v43;
        while (1)
        {
          v181 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v182 = *v100 * v181 + ((*v100 * v181) >> 8) + 1;
              if (v182 < 0x100)
              {
                goto LABEL_188;
              }

              v181 = v182 >> 8;
            }

            v183 = v181 * 0.0039216;
            *&v65 = v183 * *v179;
            if (*&v65 > 0.0)
            {
              v184 = vmulq_n_f32(*(v179 - 4), v183);
              if (v72)
              {
                v185 = COERCE_FLOAT(bswap32(*v30));
                if (v185 <= 0.0)
                {
LABEL_186:
                  *v32 = vrev32q_s8(v184);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_188;
                }
              }

              else
              {
                v185 = 1.0;
              }

              v186 = vrev32q_s8(*v32);
              PDAhuePDA(v447.i32, *v186.i32, *&v186.i32[1], *&v186.i32[2], *&v186.i32[3], v185, *v184.i64, v65, v66, *v184.i32, *&v184.i32[1], *&v184.i32[2], *&v184.i32[3], *&v65);
              v72 = v446;
              v184 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_188;
              }

              *&v65 = v448;
              goto LABEL_186;
            }
          }

LABEL_188:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v179 += 5;
          v30 = (v30 + v49);
          if (!--v180)
          {
            goto LABEL_432;
          }
        }

      case 25:
        v437 = v37;
        v171 = v67[1].f32;
        v172 = v44;
        v100 = v43;
        while (1)
        {
          v173 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v174 = *v100 * v173 + ((*v100 * v173) >> 8) + 1;
              if (v174 < 0x100)
              {
                goto LABEL_172;
              }

              v173 = v174 >> 8;
            }

            v175 = v173 * 0.0039216;
            *&v65 = v175 * *v171;
            if (*&v65 > 0.0)
            {
              v176 = vmulq_n_f32(*(v171 - 4), v175);
              if (v72)
              {
                v177 = COERCE_FLOAT(bswap32(*v30));
                if (v177 <= 0.0)
                {
LABEL_170:
                  *v32 = vrev32q_s8(v176);
                  *v30 = bswap32(LODWORD(v65));
                  goto LABEL_172;
                }
              }

              else
              {
                v177 = 1.0;
              }

              v178 = vrev32q_s8(*v32);
              PDAsaturationPDA(v447.i32, *v178.i32, *&v178.i32[1], *&v178.i32[2], *&v178.i32[3], v177, *v176.i64, v65, v66, *v176.i32, *&v176.i32[1], *&v176.i32[2], *&v176.i32[3], *&v65);
              v72 = v446;
              v176 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_172;
              }

              *&v65 = v448;
              goto LABEL_170;
            }
          }

LABEL_172:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v171 += 5;
          v30 = (v30 + v49);
          if (!--v172)
          {
            goto LABEL_432;
          }
        }

      case 26:
        v437 = v37;
        v362 = v67[1].f32;
        v363 = v44;
        v100 = v43;
        while (1)
        {
          v364 = *v68;
          if (*v68)
          {
            if (v43)
            {
              v365 = *v100 * v364 + ((*v100 * v364) >> 8) + 1;
              if (v365 < 0x100)
              {
                goto LABEL_431;
              }

              v364 = v365 >> 8;
            }

            v366 = v364 * 0.0039216;
            v367 = v366 * *v362;
            if (v367 > 0.0)
            {
              v368 = vmulq_n_f32(*(v362 - 4), v366);
              if (v72)
              {
                LODWORD(v64) = bswap32(*v30);
                if (*&v64 <= 0.0)
                {
LABEL_429:
                  *v32 = vrev32q_s8(v368);
                  *v30 = bswap32(LODWORD(v367));
                  goto LABEL_431;
                }
              }

              else
              {
                LODWORD(v64) = 1.0;
              }

              v427 = vrev32q_s8(*v32);
              PDAluminosityPDA(v447.i32, *v368.i32, *&v368.i32[1], *&v368.i32[2], *&v368.i32[3], v367, v64, *v427.i64, v66, *v427.i32, *&v427.i32[1], *&v427.i32[2], *&v427.i32[3], *&v64);
              v72 = v446;
              v368 = v447;
              if (!v446)
              {
                *v32 = vrev32q_s8(v447);
                goto LABEL_431;
              }

              v367 = v448;
              goto LABEL_429;
            }
          }

LABEL_431:
          ++v68;
          v100 += v43 != 0;
          ++v32;
          v362 += 5;
          v30 = (v30 + v49);
          if (!--v363)
          {
            goto LABEL_432;
          }
        }

      case 27:
        v437 = v37;
        v98 = v67[1].f32;
        v99 = v44;
        v100 = v43;
        v101 = v99;
        break;
      default:
        goto LABEL_433;
    }

    while (1)
    {
      v102 = *v68;
      if (*v68)
      {
        if (v43)
        {
          v103 = *v100 * v102 + ((*v100 * v102) >> 8) + 1;
          if (v103 < 0x100)
          {
            goto LABEL_87;
          }

          v102 = v103 >> 8;
        }

        v104 = v102 * 0.0039216;
        *&v65 = v104 * *v98;
        if (*&v65 > 0.0)
        {
          v105 = vmulq_n_f32(*(v98 - 4), v104);
          if (v72)
          {
            v106 = COERCE_FLOAT(bswap32(*v30));
            if (v106 <= 0.0)
            {
LABEL_85:
              *v32 = vrev32q_s8(v105);
              *v30 = bswap32(LODWORD(v65));
              goto LABEL_87;
            }
          }

          else
          {
            v106 = 1.0;
          }

          v107 = vrev32q_s8(*v32);
          PDAluminosityPDA(v447.i32, *v107.i32, *&v107.i32[1], *&v107.i32[2], *&v107.i32[3], v106, *v105.i64, v65, v66, *v105.i32, *&v105.i32[1], *&v105.i32[2], *&v105.i32[3], *&v65);
          v72 = v446;
          v105 = v447;
          if (!v446)
          {
            *v32 = vrev32q_s8(v447);
            goto LABEL_87;
          }

          *&v65 = v448;
          goto LABEL_85;
        }
      }

LABEL_87:
      ++v68;
      v100 += v43 != 0;
      ++v32;
      v98 += 5;
      v30 = (v30 + v49);
      if (!--v101)
      {
LABEL_432:
        v43 = &v100[v438];
        v32 += v439;
        v30 += v441;
        v36 = v434;
        v44 = v435;
        v38 = v436;
        v37 = v437;
        goto LABEL_433;
      }
    }
  }
}

uint64_t CMYKF_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, int32x4_t a13)
{
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  v14 = *(a2 + 2);
  v15 = *(a2 + 4);
  if (v15)
  {
    v124 = *(a2 + 5) - a5;
  }

  else
  {
    v124 = 0;
  }

  v16 = *(a2 + 2);
  v17 = a2[1];
  v123 = *a2;
  v122 = *(a2 + 3) - a5;
  v18 = *(a2 + 17);
  v19 = *(a2 + 18);
  v20 = *(a2 + 9);
  v21 = *(a2 + 11);
  v22 = *(a2 + 7) + v21 * a4;
  v23 = *(result + 32);
  v24 = (v23 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3));
  v25 = 4 * (v15 != 0);
  if (*(result + 176))
  {
    v121 = *(a2 + 13);
    v120 = *(a2 + 15);
    v119 = v19 + 16 * a3 + 8;
    while (1)
    {
      if (((v120 - v22) | (v22 - v121)) < 0)
      {
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = ((v22 & ~(-1 << v20)) >> (v20 - 4)) & 0xF;
        v27 = v26 - 7 >= 9 ? -v18 : v18;
        v28 = weights_21890[v26] & 0xF;
      }

      v29 = v23 + (v22 >> v20) * v18;
      if (v123 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        result = v119;
        v30 = a5;
        while (1)
        {
          v31 = *(result - 8);
          v32 = *result;
          v33 = &v29[v31];
          if (v24 >= &v29[v31])
          {
            v34 = &v29[v31];
          }

          else
          {
            v34 = v24;
          }

          if (v23 > v34)
          {
            v34 = v23;
          }

          v35 = *v34;
          v36 = v32 & 0xF;
          if ((v32 & 0xF) != 0)
          {
            break;
          }

          if (v28)
          {
            v47 = &v33[v27];
            if (v24 < &v33[v27])
            {
              v47 = v24;
            }

            if (v23 > v47)
            {
              v47 = v23;
            }

            v48 = BLEND8_21892[v28];
            v45 = v35 - ((v48 & v35) >> v28);
            v46 = (v48 & *v47) >> v28;
            goto LABEL_46;
          }

LABEL_47:
          v49 = __ROL4__(v35, v17);
          v50 = v49 | v13;
          v51 = *&_blt_float[HIBYTE(v49)];
          v52 = BYTE2(v49);
          v53 = BYTE1(v49);
          if (v16 >= 1.0)
          {
            v54 = *&_blt_float[v52];
            v55 = *&_blt_float[v53];
            v56 = *&_blt_float[v50];
          }

          else
          {
            v51 = v16 * v51;
            v54 = v16 * *&_blt_float[v52];
            v55 = v16 * *&_blt_float[v53];
            v56 = v16 * *&_blt_float[v50];
          }

          if (v51 <= v54)
          {
            v57 = v54;
          }

          else
          {
            v57 = v51;
          }

          if (v55 > v57)
          {
            v57 = v55;
          }

          v14->i32[0] = bswap32(COERCE_UNSIGNED_INT(v57 - v51));
          v14->i32[1] = bswap32(COERCE_UNSIGNED_INT(v57 - v54));
          v14->i32[2] = bswap32(COERCE_UNSIGNED_INT(v57 - v55));
          v14->i32[3] = bswap32(COERCE_UNSIGNED_INT(v56 - v57));
          if (v15)
          {
            *v15 = bswap32(LODWORD(v56));
          }

          result += 16;
          ++v14;
          v15 = (v15 + v25);
          if (!--v30)
          {
            goto LABEL_109;
          }
        }

        v37 = &v33[v32 >> 4];
        if (v24 < v37)
        {
          v37 = v24;
        }

        if (v23 > v37)
        {
          v37 = v23;
        }

        v38 = *v37;
        if (v28)
        {
          v39 = &v33[v27];
          if (v24 >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v24;
          }

          if (v23 > v40)
          {
            v40 = v23;
          }

          v41 = *v40;
          v42 = (v39 + (v32 >> 4));
          if (v24 < v42)
          {
            v42 = v24;
          }

          if (v23 > v42)
          {
            v42 = v23;
          }

          v43 = BLEND8_21892[v28];
          v35 = v35 - ((v43 & v35) >> v28) + ((v43 & v41) >> v28);
          v38 = v38 - ((v43 & v38) >> v28) + ((v43 & *v42) >> v28);
        }

        v44 = BLEND8_21892[*result & 0xFLL];
        v45 = v35 - ((v44 & v35) >> v36);
        v46 = (v44 & v38) >> v36;
LABEL_46:
        v35 = v45 + v46;
        goto LABEL_47;
      }

LABEL_109:
      v14 += v122;
      v22 += v21;
      v15 += v124;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_109;
    }

    v58 = v119;
    result = a5;
    while (1)
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v61 = &v29[v59];
      if (v24 >= &v29[v59])
      {
        v62 = &v29[v59];
      }

      else
      {
        v62 = v24;
      }

      if (v23 > v62)
      {
        v62 = v23;
      }

      v63 = *v62;
      v64 = v60 & 0xF;
      if ((v60 & 0xF) != 0)
      {
        v65 = &v61[v60 >> 4];
        if (v24 < v65)
        {
          v65 = v24;
        }

        if (v23 > v65)
        {
          v65 = v23;
        }

        v66 = *v65;
        if (v28)
        {
          v67 = &v61[v27];
          if (v24 >= v67)
          {
            v68 = v67;
          }

          else
          {
            v68 = v24;
          }

          if (v23 > v68)
          {
            v68 = v23;
          }

          v69 = *v68;
          v70 = (v67 + (v60 >> 4));
          if (v24 < v70)
          {
            v70 = v24;
          }

          if (v23 > v70)
          {
            v70 = v23;
          }

          v71 = BLEND8_21892[v28];
          v63 = v63 - ((v71 & v63) >> v28) + ((v71 & v69) >> v28);
          v66 = v66 - ((v71 & v66) >> v28) + ((v71 & *v70) >> v28);
        }

        v72 = BLEND8_21892[*v58 & 0xF];
        v73 = v63 - ((v72 & v63) >> v64);
        v74 = (v72 & v66) >> v64;
      }

      else
      {
        if (!v28)
        {
          goto LABEL_90;
        }

        v75 = &v61[v27];
        if (v24 < &v61[v27])
        {
          v75 = v24;
        }

        if (v23 > v75)
        {
          v75 = v23;
        }

        v76 = BLEND8_21892[v28];
        v73 = v63 - ((v76 & v63) >> v28);
        v74 = (v76 & *v75) >> v28;
      }

      v63 = v73 + v74;
LABEL_90:
      v77 = __ROL4__(v63, v17);
      v78 = v77 | v13;
      v79.i32[0] = _blt_float[HIBYTE(v77)];
      v80 = BYTE2(v77);
      v81 = BYTE1(v77);
      if (v16 >= 1.0)
      {
        v82 = *&_blt_float[v80];
        v83 = *&_blt_float[v81];
        v84 = *&_blt_float[v78];
      }

      else
      {
        v79.f32[0] = v16 * v79.f32[0];
        v82 = v16 * *&_blt_float[v80];
        v83 = v16 * *&_blt_float[v81];
        v84 = v16 * *&_blt_float[v78];
      }

      if (v79.f32[0] <= v82)
      {
        *a13.i32 = v82;
      }

      else
      {
        *a13.i32 = v79.f32[0];
      }

      if (v83 > *a13.i32)
      {
        *a13.i32 = v83;
      }

      v85 = a13;
      *&v85.i32[1] = v84;
      v86 = vzip1q_s32(v85, v85);
      v86.i32[2] = a13.i32[0];
      v79.f32[1] = v82;
      v79.i64[1] = __PAIR64__(a13.u32[0], LODWORD(v83));
      v87 = vsubq_f32(v86, v79);
      if (v15)
      {
        if (v84 >= 1.0)
        {
          v88 = bswap32(LODWORD(v84));
LABEL_107:
          *v14 = vrev32q_s8(v87);
          *v15 = v88;
          goto LABEL_108;
        }

        if (v84 > 0.0)
        {
          v88 = bswap32(COERCE_UNSIGNED_INT(v84 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v84))));
          v87 = vmlaq_n_f32(v87, vrev32q_s8(*v14), 1.0 - v84);
          goto LABEL_107;
        }
      }

      else
      {
        if (v84 >= 1.0)
        {
          goto LABEL_106;
        }

        if (v84 > 0.0)
        {
          v87 = vmlaq_n_f32(v87, vrev32q_s8(*v14), 1.0 - v84);
LABEL_106:
          *v14 = vrev32q_s8(v87);
        }
      }

LABEL_108:
      v58 += 2;
      ++v14;
      v15 = (v15 + v25);
      if (!--result)
      {
        goto LABEL_109;
      }
    }
  }

  v89 = v19 + 16 * a3;
  do
  {
    v90 = v23 + (v22 >> v20) * v18;
    if (v123 != 1)
    {
      result = v89;
      v104 = a5;
      if (a5 < 1)
      {
        goto LABEL_156;
      }

      while (1)
      {
        v105 = *result;
        result += 16;
        v106 = &v90[v105];
        if (v24 < &v90[v105])
        {
          v106 = v24;
        }

        if (v23 > v106)
        {
          v106 = v23;
        }

        v107 = __ROL4__(*v106, v17);
        v108 = v107 | v13;
        v109.i32[0] = _blt_float[HIBYTE(v107)];
        v110 = BYTE2(v107);
        v111 = BYTE1(v107);
        if (v16 >= 1.0)
        {
          v112 = *&_blt_float[v110];
          v113 = *&_blt_float[v111];
          v114 = *&_blt_float[v108];
        }

        else
        {
          v109.f32[0] = v16 * v109.f32[0];
          v112 = v16 * *&_blt_float[v110];
          v113 = v16 * *&_blt_float[v111];
          v114 = v16 * *&_blt_float[v108];
        }

        if (v109.f32[0] <= v112)
        {
          *a13.i32 = v112;
        }

        else
        {
          *a13.i32 = v109.f32[0];
        }

        if (v113 > *a13.i32)
        {
          *a13.i32 = v113;
        }

        v115 = a13;
        *&v115.i32[1] = v114;
        v116 = vzip1q_s32(v115, v115);
        v116.i32[2] = a13.i32[0];
        v109.f32[1] = v112;
        v109.i64[1] = __PAIR64__(a13.u32[0], LODWORD(v113));
        v117 = vsubq_f32(v116, v109);
        if (v15)
        {
          if (v114 >= 1.0)
          {
            v118 = bswap32(LODWORD(v114));
LABEL_154:
            *v14 = vrev32q_s8(v117);
            *v15 = v118;
            goto LABEL_155;
          }

          if (v114 > 0.0)
          {
            v118 = bswap32(COERCE_UNSIGNED_INT(v114 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v114))));
            v117 = vmlaq_n_f32(v117, vrev32q_s8(*v14), 1.0 - v114);
            goto LABEL_154;
          }
        }

        else
        {
          if (v114 >= 1.0)
          {
            goto LABEL_153;
          }

          if (v114 > 0.0)
          {
            v117 = vmlaq_n_f32(v117, vrev32q_s8(*v14), 1.0 - v114);
LABEL_153:
            *v14 = vrev32q_s8(v117);
          }
        }

LABEL_155:
        ++v14;
        v15 = (v15 + v25);
        if (!--v104)
        {
          goto LABEL_156;
        }
      }
    }

    if (a5 >= 1)
    {
      result = v89;
      v91 = a5;
      do
      {
        v92 = *result;
        result += 16;
        v93 = &v90[v92];
        if (v24 < &v90[v92])
        {
          v93 = v24;
        }

        if (v23 > v93)
        {
          v93 = v23;
        }

        v94 = __ROL4__(*v93, v17);
        v95 = v94 | v13;
        v96 = *&_blt_float[HIBYTE(v94)];
        v97 = BYTE2(v94);
        v98 = BYTE1(v94);
        if (v16 >= 1.0)
        {
          v99 = *&_blt_float[v97];
          v100 = *&_blt_float[v98];
          v101 = *&_blt_float[v95];
        }

        else
        {
          v96 = v16 * v96;
          v99 = v16 * *&_blt_float[v97];
          v100 = v16 * *&_blt_float[v98];
          v101 = v16 * *&_blt_float[v95];
        }

        if (v96 <= v99)
        {
          v102 = v99;
        }

        else
        {
          v102 = v96;
        }

        if (v100 <= v102)
        {
          v103 = v102;
        }

        else
        {
          v103 = v100;
        }

        v14->i32[0] = bswap32(COERCE_UNSIGNED_INT(v103 - v96));
        v14->i32[1] = bswap32(COERCE_UNSIGNED_INT(v103 - v99));
        v14->i32[2] = bswap32(COERCE_UNSIGNED_INT(v103 - v100));
        v14->i32[3] = bswap32(COERCE_UNSIGNED_INT(v101 - v103));
        if (v15)
        {
          *v15 = bswap32(LODWORD(v101));
        }

        ++v14;
        v15 = (v15 + v25);
        --v91;
      }

      while (v91);
    }

LABEL_156:
    v14 += v122;
    v22 += v21;
    v15 += v124;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKF_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, int32x4_t a13)
{
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  v14 = *(a2 + 2);
  v15 = *(a2 + 4);
  if (v15)
  {
    v124 = *(a2 + 5) - a5;
  }

  else
  {
    v124 = 0;
  }

  v16 = *(a2 + 2);
  v17 = a2[1];
  v123 = *a2;
  v122 = *(a2 + 3) - a5;
  v18 = *(a2 + 17);
  v19 = *(a2 + 18);
  v20 = *(a2 + 9);
  v21 = *(a2 + 11);
  v22 = *(a2 + 7) + v21 * a4;
  v23 = *(result + 32);
  v24 = (v23 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3));
  v25 = 4 * (v15 != 0);
  if (*(result + 176))
  {
    v121 = *(a2 + 13);
    v120 = *(a2 + 15);
    v119 = v19 + 16 * a3 + 8;
    while (1)
    {
      if (((v120 - v22) | (v22 - v121)) < 0)
      {
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = ((v22 & ~(-1 << v20)) >> (v20 - 4)) & 0xF;
        v27 = v26 - 7 >= 9 ? -v18 : v18;
        v28 = weights_21890[v26] & 0xF;
      }

      v29 = v23 + (v22 >> v20) * v18;
      if (v123 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        result = v119;
        v30 = a5;
        while (1)
        {
          v31 = *(result - 8);
          v32 = *result;
          v33 = &v29[v31];
          if (v24 >= &v29[v31])
          {
            v34 = &v29[v31];
          }

          else
          {
            v34 = v24;
          }

          if (v23 > v34)
          {
            v34 = v23;
          }

          v35 = bswap32(*v34);
          v36 = v32 & 0xF;
          if ((v32 & 0xF) != 0)
          {
            break;
          }

          if (v28)
          {
            v47 = &v33[v27];
            if (v24 < &v33[v27])
            {
              v47 = v24;
            }

            if (v23 > v47)
            {
              v47 = v23;
            }

            v48 = BLEND8_21892[v28];
            v45 = v35 - ((v48 & v35) >> v28);
            v46 = (bswap32(*v47) & v48) >> v28;
            goto LABEL_46;
          }

LABEL_47:
          v49 = __ROL4__(v35, v17);
          v50 = v49 | v13;
          v51 = *&_blt_float[HIBYTE(v49)];
          v52 = BYTE2(v49);
          v53 = BYTE1(v49);
          if (v16 >= 1.0)
          {
            v54 = *&_blt_float[v52];
            v55 = *&_blt_float[v53];
            v56 = *&_blt_float[v50];
          }

          else
          {
            v51 = v16 * v51;
            v54 = v16 * *&_blt_float[v52];
            v55 = v16 * *&_blt_float[v53];
            v56 = v16 * *&_blt_float[v50];
          }

          if (v51 <= v54)
          {
            v57 = v54;
          }

          else
          {
            v57 = v51;
          }

          if (v55 > v57)
          {
            v57 = v55;
          }

          v14->i32[0] = bswap32(COERCE_UNSIGNED_INT(v57 - v51));
          v14->i32[1] = bswap32(COERCE_UNSIGNED_INT(v57 - v54));
          v14->i32[2] = bswap32(COERCE_UNSIGNED_INT(v57 - v55));
          v14->i32[3] = bswap32(COERCE_UNSIGNED_INT(v56 - v57));
          if (v15)
          {
            *v15 = bswap32(LODWORD(v56));
          }

          result += 16;
          ++v14;
          v15 = (v15 + v25);
          if (!--v30)
          {
            goto LABEL_109;
          }
        }

        v37 = &v33[v32 >> 4];
        if (v24 < v37)
        {
          v37 = v24;
        }

        if (v23 > v37)
        {
          v37 = v23;
        }

        v38 = bswap32(*v37);
        if (v28)
        {
          v39 = &v33[v27];
          if (v24 >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v24;
          }

          if (v23 > v40)
          {
            v40 = v23;
          }

          v41 = bswap32(*v40);
          v42 = (v39 + (v32 >> 4));
          if (v24 < v42)
          {
            v42 = v24;
          }

          if (v23 > v42)
          {
            v42 = v23;
          }

          v43 = BLEND8_21892[v28];
          v35 = v35 - ((v43 & v35) >> v28) + ((v43 & v41) >> v28);
          v38 = v38 - ((v43 & v38) >> v28) + ((bswap32(*v42) & v43) >> v28);
        }

        v44 = BLEND8_21892[*result & 0xFLL];
        v45 = v35 - ((v44 & v35) >> v36);
        v46 = (v44 & v38) >> v36;
LABEL_46:
        v35 = v45 + v46;
        goto LABEL_47;
      }

LABEL_109:
      v14 += v122;
      v22 += v21;
      v15 += v124;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_109;
    }

    v58 = v119;
    result = a5;
    while (1)
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v61 = &v29[v59];
      if (v24 >= &v29[v59])
      {
        v62 = &v29[v59];
      }

      else
      {
        v62 = v24;
      }

      if (v23 > v62)
      {
        v62 = v23;
      }

      v63 = bswap32(*v62);
      v64 = v60 & 0xF;
      if ((v60 & 0xF) != 0)
      {
        v65 = &v61[v60 >> 4];
        if (v24 < v65)
        {
          v65 = v24;
        }

        if (v23 > v65)
        {
          v65 = v23;
        }

        v66 = bswap32(*v65);
        if (v28)
        {
          v67 = &v61[v27];
          if (v24 >= v67)
          {
            v68 = v67;
          }

          else
          {
            v68 = v24;
          }

          if (v23 > v68)
          {
            v68 = v23;
          }

          v69 = bswap32(*v68);
          v70 = (v67 + (v60 >> 4));
          if (v24 < v70)
          {
            v70 = v24;
          }

          if (v23 > v70)
          {
            v70 = v23;
          }

          v71 = BLEND8_21892[v28];
          v63 = v63 - ((v71 & v63) >> v28) + ((v71 & v69) >> v28);
          v66 = v66 - ((v71 & v66) >> v28) + ((bswap32(*v70) & v71) >> v28);
        }

        v72 = BLEND8_21892[*v58 & 0xF];
        v73 = v63 - ((v72 & v63) >> v64);
        v74 = (v72 & v66) >> v64;
      }

      else
      {
        if (!v28)
        {
          goto LABEL_90;
        }

        v75 = &v61[v27];
        if (v24 < &v61[v27])
        {
          v75 = v24;
        }

        if (v23 > v75)
        {
          v75 = v23;
        }

        v76 = BLEND8_21892[v28];
        v73 = v63 - ((v76 & v63) >> v28);
        v74 = (bswap32(*v75) & v76) >> v28;
      }

      v63 = v73 + v74;
LABEL_90:
      v77 = __ROL4__(v63, v17);
      v78 = v77 | v13;
      v79.i32[0] = _blt_float[HIBYTE(v77)];
      v80 = BYTE2(v77);
      v81 = BYTE1(v77);
      if (v16 >= 1.0)
      {
        v82 = *&_blt_float[v80];
        v83 = *&_blt_float[v81];
        v84 = *&_blt_float[v78];
      }

      else
      {
        v79.f32[0] = v16 * v79.f32[0];
        v82 = v16 * *&_blt_float[v80];
        v83 = v16 * *&_blt_float[v81];
        v84 = v16 * *&_blt_float[v78];
      }

      if (v79.f32[0] <= v82)
      {
        *a13.i32 = v82;
      }

      else
      {
        *a13.i32 = v79.f32[0];
      }

      if (v83 > *a13.i32)
      {
        *a13.i32 = v83;
      }

      v85 = a13;
      *&v85.i32[1] = v84;
      v86 = vzip1q_s32(v85, v85);
      v86.i32[2] = a13.i32[0];
      v79.f32[1] = v82;
      v79.i64[1] = __PAIR64__(a13.u32[0], LODWORD(v83));
      v87 = vsubq_f32(v86, v79);
      if (v15)
      {
        if (v84 >= 1.0)
        {
          v88 = bswap32(LODWORD(v84));
LABEL_107:
          *v14 = vrev32q_s8(v87);
          *v15 = v88;
          goto LABEL_108;
        }

        if (v84 > 0.0)
        {
          v88 = bswap32(COERCE_UNSIGNED_INT(v84 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v84))));
          v87 = vmlaq_n_f32(v87, vrev32q_s8(*v14), 1.0 - v84);
          goto LABEL_107;
        }
      }

      else
      {
        if (v84 >= 1.0)
        {
          goto LABEL_106;
        }

        if (v84 > 0.0)
        {
          v87 = vmlaq_n_f32(v87, vrev32q_s8(*v14), 1.0 - v84);
LABEL_106:
          *v14 = vrev32q_s8(v87);
        }
      }

LABEL_108:
      v58 += 2;
      ++v14;
      v15 = (v15 + v25);
      if (!--result)
      {
        goto LABEL_109;
      }
    }
  }

  v89 = v19 + 16 * a3;
  do
  {
    v90 = v23 + (v22 >> v20) * v18;
    if (v123 != 1)
    {
      result = v89;
      v104 = a5;
      if (a5 < 1)
      {
        goto LABEL_156;
      }

      while (1)
      {
        v105 = *result;
        result += 16;
        v106 = &v90[v105];
        if (v24 < &v90[v105])
        {
          v106 = v24;
        }

        if (v23 > v106)
        {
          v106 = v23;
        }

        v107 = __ROL4__(bswap32(*v106), v17);
        v108 = v107 | v13;
        v109.i32[0] = _blt_float[HIBYTE(v107)];
        v110 = BYTE2(v107);
        v111 = BYTE1(v107);
        if (v16 >= 1.0)
        {
          v112 = *&_blt_float[v110];
          v113 = *&_blt_float[v111];
          v114 = *&_blt_float[v108];
        }

        else
        {
          v109.f32[0] = v16 * v109.f32[0];
          v112 = v16 * *&_blt_float[v110];
          v113 = v16 * *&_blt_float[v111];
          v114 = v16 * *&_blt_float[v108];
        }

        if (v109.f32[0] <= v112)
        {
          *a13.i32 = v112;
        }

        else
        {
          *a13.i32 = v109.f32[0];
        }

        if (v113 > *a13.i32)
        {
          *a13.i32 = v113;
        }

        v115 = a13;
        *&v115.i32[1] = v114;
        v116 = vzip1q_s32(v115, v115);
        v116.i32[2] = a13.i32[0];
        v109.f32[1] = v112;
        v109.i64[1] = __PAIR64__(a13.u32[0], LODWORD(v113));
        v117 = vsubq_f32(v116, v109);
        if (v15)
        {
          if (v114 >= 1.0)
          {
            v118 = bswap32(LODWORD(v114));
LABEL_154:
            *v14 = vrev32q_s8(v117);
            *v15 = v118;
            goto LABEL_155;
          }

          if (v114 > 0.0)
          {
            v118 = bswap32(COERCE_UNSIGNED_INT(v114 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v114))));
            v117 = vmlaq_n_f32(v117, vrev32q_s8(*v14), 1.0 - v114);
            goto LABEL_154;
          }
        }

        else
        {
          if (v114 >= 1.0)
          {
            goto LABEL_153;
          }

          if (v114 > 0.0)
          {
            v117 = vmlaq_n_f32(v117, vrev32q_s8(*v14), 1.0 - v114);
LABEL_153:
            *v14 = vrev32q_s8(v117);
          }
        }

LABEL_155:
        ++v14;
        v15 = (v15 + v25);
        if (!--v104)
        {
          goto LABEL_156;
        }
      }
    }

    if (a5 >= 1)
    {
      result = v89;
      v91 = a5;
      do
      {
        v92 = *result;
        result += 16;
        v93 = &v90[v92];
        if (v24 < &v90[v92])
        {
          v93 = v24;
        }

        if (v23 > v93)
        {
          v93 = v23;
        }

        v94 = __ROL4__(bswap32(*v93), v17);
        v95 = v94 | v13;
        v96 = *&_blt_float[HIBYTE(v94)];
        v97 = BYTE2(v94);
        v98 = BYTE1(v94);
        if (v16 >= 1.0)
        {
          v99 = *&_blt_float[v97];
          v100 = *&_blt_float[v98];
          v101 = *&_blt_float[v95];
        }

        else
        {
          v96 = v16 * v96;
          v99 = v16 * *&_blt_float[v97];
          v100 = v16 * *&_blt_float[v98];
          v101 = v16 * *&_blt_float[v95];
        }

        if (v96 <= v99)
        {
          v102 = v99;
        }

        else
        {
          v102 = v96;
        }

        if (v100 <= v102)
        {
          v103 = v102;
        }

        else
        {
          v103 = v100;
        }

        v14->i32[0] = bswap32(COERCE_UNSIGNED_INT(v103 - v96));
        v14->i32[1] = bswap32(COERCE_UNSIGNED_INT(v103 - v99));
        v14->i32[2] = bswap32(COERCE_UNSIGNED_INT(v103 - v100));
        v14->i32[3] = bswap32(COERCE_UNSIGNED_INT(v101 - v103));
        if (v15)
        {
          *v15 = bswap32(LODWORD(v101));
        }

        ++v14;
        v15 = (v15 + v25);
        --v91;
      }

      while (v91);
    }

LABEL_156:
    v14 += v122;
    v22 += v21;
    v15 += v124;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKF_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14)
{
  v14 = *(a2 + 2);
  v15 = *(a2 + 4);
  if (v15)
  {
    v127 = *(a2 + 5) - a5;
  }

  else
  {
    v127 = 0;
  }

  v16 = *(a2 + 2);
  v126 = *a2;
  v125 = *(a2 + 3) - a5;
  v17 = *(a2 + 17);
  v18 = *(a2 + 18);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  v21 = *(a2 + 7) + v20 * a4;
  v22 = *(a1 + 32);
  v23 = &v22[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 176);
  v25 = 4 * (v15 != 0);
  __asm { FMOV            V1.4S, #1.0 }

  if (result)
  {
    v124 = *(a2 + 13);
    v31 = *(a2 + 15);
    v123 = v18 + 16 * a3 + 8;
    while (1)
    {
      result = v21 - v124;
      if (((v31 - v21) | (v21 - v124)) < 0)
      {
        v34 = 0;
        v33 = 0;
      }

      else
      {
        v32 = ((v21 & ~(-1 << v19)) >> (v19 - 4)) & 0xF;
        result = weights_21890[v32];
        if (v32 - 7 >= 9)
        {
          v33 = -v17;
        }

        else
        {
          v33 = v17;
        }

        v34 = result & 0xF;
      }

      v35 = &v22[(v21 >> v19) * v17];
      if (v126 == 1)
      {
        if (a5 >= 1)
        {
          result = v123;
          v36 = a5;
          do
          {
            v37 = *(result - 8);
            v38 = *result;
            v39 = &v35[v37];
            if (v23 >= &v35[v37])
            {
              v40 = &v35[v37];
            }

            else
            {
              v40 = v23;
            }

            if (v22 > v40)
            {
              v40 = v22;
            }

            v41 = (*v40 << 24) | (v40[1] << 16) | (v40[2] << 8);
            if ((v38 & 0xF) != 0)
            {
              v42 = &v39[v38 >> 4];
              if (v23 < v42)
              {
                v42 = v23;
              }

              if (v22 > v42)
              {
                v42 = v22;
              }

              v43 = (*v42 << 24) | (v42[1] << 16) | (v42[2] << 8);
              if (v34)
              {
                if (v23 >= &v39[v33])
                {
                  v44 = &v39[v33];
                }

                else
                {
                  v44 = v23;
                }

                if (v22 > v44)
                {
                  v44 = v22;
                }

                v45 = &v39[v33 + (v38 >> 4)];
                if (v23 < v45)
                {
                  v45 = v23;
                }

                if (v22 > v45)
                {
                  v45 = v22;
                }

                v46 = BLEND8_21892[v34];
                v41 = v41 - ((v46 & v41) >> v34) + ((v46 & ((*v44 << 24) | (v44[1] << 16) | (v44[2] << 8))) >> v34);
                v43 = v43 - ((v46 & v43) >> v34) + ((((*v45 << 24) | (v45[1] << 16) | (v45[2] << 8)) & v46) >> v34);
              }

              v41 = v41 - ((BLEND8_21892[*result & 0xFLL] & v41) >> (*result & 0xF)) + ((BLEND8_21892[*result & 0xFLL] & v43) >> (*result & 0xF));
            }

            else if (v34)
            {
              v47 = &v39[v33];
              if (v23 < &v39[v33])
              {
                v47 = v23;
              }

              if (v22 > v47)
              {
                v47 = v22;
              }

              v41 = v41 - ((BLEND8_21892[v34] & v41) >> v34) + ((((*v47 << 24) | (v47[1] << 16) | (v47[2] << 8)) & BLEND8_21892[v34]) >> v34);
            }

            v48 = *&_blt_float[HIBYTE(v41)];
            if (v16 >= 1.0)
            {
              v58 = *&_blt_float[BYTE2(v41)];
              v59 = *&_blt_float[BYTE1(v41)];
              if (v48 <= v58)
              {
                v60 = *&_blt_float[BYTE2(v41)];
              }

              else
              {
                v60 = *&_blt_float[HIBYTE(v41)];
              }

              if (v59 > v60)
              {
                v60 = *&_blt_float[BYTE1(v41)];
              }

              v53 = v60 - v48;
              v54 = v60 - v58;
              v55 = v60 - v59;
              v56 = 1.0 - v60;
              v57 = 1065353216;
            }

            else
            {
              v49 = v16 * v48;
              v50 = v16 * *&_blt_float[BYTE2(v41)];
              v51 = v16 * *&_blt_float[BYTE1(v41)];
              if (v49 <= v50)
              {
                v52 = v16 * *&_blt_float[BYTE2(v41)];
              }

              else
              {
                v52 = v49;
              }

              if (v51 > v52)
              {
                v52 = v16 * *&_blt_float[BYTE1(v41)];
              }

              v53 = v52 - v49;
              v54 = v52 - v50;
              v55 = v52 - v51;
              v56 = v16 - v52;
              v57 = LODWORD(v16);
            }

            v14->i32[0] = bswap32(LODWORD(v53));
            v14->i32[1] = bswap32(LODWORD(v54));
            v14->i32[2] = bswap32(LODWORD(v55));
            v14->i32[3] = bswap32(LODWORD(v56));
            if (v15)
            {
              *v15 = bswap32(v57);
            }

            result += 16;
            ++v14;
            v15 = (v15 + v25);
            --v36;
          }

          while (v36);
        }

        goto LABEL_116;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_116:
      v14 += v125;
      v21 += v20;
      v15 += v127;
      if (!--a6)
      {
        return result;
      }
    }

    v61 = v123;
    result = a5;
    while (1)
    {
      v62 = *(v61 - 1);
      v63 = *v61;
      v64 = &v35[v62];
      if (v23 >= &v35[v62])
      {
        v65 = &v35[v62];
      }

      else
      {
        v65 = v23;
      }

      if (v22 > v65)
      {
        v65 = v22;
      }

      v66 = (*v65 << 24) | (v65[1] << 16) | (v65[2] << 8);
      if ((v63 & 0xF) != 0)
      {
        v67 = &v64[v63 >> 4];
        if (v23 < v67)
        {
          v67 = v23;
        }

        if (v22 > v67)
        {
          v67 = v22;
        }

        v68 = (*v67 << 24) | (v67[1] << 16) | (v67[2] << 8);
        if (v34)
        {
          if (v23 >= &v64[v33])
          {
            v69 = &v64[v33];
          }

          else
          {
            v69 = v23;
          }

          if (v22 > v69)
          {
            v69 = v22;
          }

          v70 = (*v69 << 24) | (v69[1] << 16) | (v69[2] << 8);
          v71 = &v64[v33 + (v63 >> 4)];
          if (v23 < v71)
          {
            v71 = v23;
          }

          if (v22 > v71)
          {
            v71 = v22;
          }

          v72 = BLEND8_21892[v34];
          v66 = v66 - ((v72 & v66) >> v34) + ((v72 & v70) >> v34);
          v68 = v68 - ((v72 & v68) >> v34) + ((((*v71 << 24) | (v71[1] << 16) | (v71[2] << 8)) & v72) >> v34);
        }

        v66 = v66 - ((BLEND8_21892[*v61 & 0xF] & v66) >> (*v61 & 0xF)) + ((BLEND8_21892[*v61 & 0xF] & v68) >> (*v61 & 0xF));
      }

      else if (v34)
      {
        v73 = &v64[v33];
        if (v23 < &v64[v33])
        {
          v73 = v23;
        }

        if (v22 > v73)
        {
          v73 = v22;
        }

        v66 = v66 - ((BLEND8_21892[v34] & v66) >> v34) + ((((*v73 << 24) | (v73[1] << 16) | (v73[2] << 8)) & BLEND8_21892[v34]) >> v34);
      }

      v74.i32[0] = _blt_float[HIBYTE(v66)];
      if (v16 >= 1.0)
      {
        v75 = *&_blt_float[BYTE2(v66)];
        v76 = *&_blt_float[BYTE1(v66)];
        if (v74.f32[0] <= v75)
        {
          v80 = *&_blt_float[BYTE2(v66)];
        }

        else
        {
          v80 = *&_blt_float[HIBYTE(v66)];
        }

        if (v76 <= v80)
        {
          *a14.i32 = v80;
        }

        else
        {
          a14.i32[0] = _blt_float[BYTE1(v66)];
        }

        v78 = _Q1;
        v78.i32[0] = a14.i32[0];
        v79 = 1.0;
      }

      else
      {
        v74.f32[0] = v16 * v74.f32[0];
        v75 = v16 * *&_blt_float[BYTE2(v66)];
        v76 = v16 * *&_blt_float[BYTE1(v66)];
        if (v74.f32[0] <= v75)
        {
          v77 = v16 * *&_blt_float[BYTE2(v66)];
        }

        else
        {
          v77 = v74.f32[0];
        }

        if (v76 <= v77)
        {
          *a14.i32 = v77;
        }

        else
        {
          *a14.i32 = v16 * *&_blt_float[BYTE1(v66)];
        }

        v78 = a14;
        *&v78.i32[1] = v16;
        v79 = v16;
      }

      v81 = vzip1q_s32(v78, v78);
      v81.i32[2] = v78.i32[0];
      v74.f32[1] = v75;
      v74.i64[1] = __PAIR64__(a14.u32[0], LODWORD(v76));
      v82 = vsubq_f32(v81, v74);
      if (v15)
      {
        if (v79 >= 1.0)
        {
          v83 = bswap32(LODWORD(v79));
LABEL_114:
          *v14 = vrev32q_s8(v82);
          *v15 = v83;
          goto LABEL_115;
        }

        if (v79 > 0.0)
        {
          v83 = bswap32(COERCE_UNSIGNED_INT(v79 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v79))));
          v82 = vmlaq_n_f32(v82, vrev32q_s8(*v14), 1.0 - v79);
          goto LABEL_114;
        }
      }

      else
      {
        if (v79 >= 1.0)
        {
          goto LABEL_113;
        }

        if (v79 > 0.0)
        {
          v82 = vmlaq_n_f32(v82, vrev32q_s8(*v14), 1.0 - v79);
LABEL_113:
          *v14 = vrev32q_s8(v82);
        }
      }

LABEL_115:
      v61 += 2;
      ++v14;
      v15 = (v15 + v25);
      if (!--result)
      {
        goto LABEL_116;
      }
    }
  }

  v84 = (v18 + 16 * a3);
  do
  {
    v85 = &v22[(v21 >> v19) * v17];
    if (v126 != 1)
    {
      result = v84;
      v107 = a5;
      if (a5 < 1)
      {
        goto LABEL_176;
      }

      while (1)
      {
        v108 = *result;
        result += 16;
        v109 = &v85[v108];
        if (v23 < &v85[v108])
        {
          v109 = v23;
        }

        if (v22 > v109)
        {
          v109 = v22;
        }

        v110 = *v109;
        v111 = v109[1];
        v112 = v109[2];
        v113.i32[0] = _blt_float[v110];
        if (v16 >= 1.0)
        {
          v114 = *&_blt_float[v111];
          v115 = *&_blt_float[v112];
          if (v113.f32[0] <= v114)
          {
            v119 = *&_blt_float[v111];
          }

          else
          {
            v119 = *&_blt_float[v110];
          }

          if (v115 <= v119)
          {
            *a14.i32 = v119;
          }

          else
          {
            a14.i32[0] = _blt_float[v112];
          }

          v117 = _Q1;
          v117.i32[0] = a14.i32[0];
          v118 = 1.0;
        }

        else
        {
          v113.f32[0] = v16 * v113.f32[0];
          v114 = v16 * *&_blt_float[v111];
          v115 = v16 * *&_blt_float[v112];
          if (v113.f32[0] <= v114)
          {
            v116 = v16 * *&_blt_float[v111];
          }

          else
          {
            v116 = v113.f32[0];
          }

          if (v115 <= v116)
          {
            *a14.i32 = v116;
          }

          else
          {
            *a14.i32 = v16 * *&_blt_float[v112];
          }

          v117 = a14;
          *&v117.i32[1] = v16;
          v118 = v16;
        }

        v120 = vzip1q_s32(v117, v117);
        v120.i32[2] = v117.i32[0];
        v113.f32[1] = v114;
        v113.i64[1] = __PAIR64__(a14.u32[0], LODWORD(v115));
        v121 = vsubq_f32(v120, v113);
        if (v15)
        {
          if (v118 >= 1.0)
          {
            v122 = bswap32(LODWORD(v118));
LABEL_174:
            *v14 = vrev32q_s8(v121);
            *v15 = v122;
            goto LABEL_175;
          }

          if (v118 > 0.0)
          {
            v122 = bswap32(COERCE_UNSIGNED_INT(v118 + (COERCE_FLOAT(bswap32(*v15)) * (1.0 - v118))));
            v121 = vmlaq_n_f32(v121, vrev32q_s8(*v14), 1.0 - v118);
            goto LABEL_174;
          }
        }

        else
        {
          if (v118 >= 1.0)
          {
            goto LABEL_173;
          }

          if (v118 > 0.0)
          {
            v121 = vmlaq_n_f32(v121, vrev32q_s8(*v14), 1.0 - v118);
LABEL_173:
            *v14 = vrev32q_s8(v121);
          }
        }

LABEL_175:
        ++v14;
        v15 = (v15 + v25);
        if (!--v107)
        {
          goto LABEL_176;
        }
      }
    }

    if (a5 >= 1)
    {
      result = v84;
      v86 = a5;
      do
      {
        v87 = *result;
        result += 16;
        v88 = &v85[v87];
        if (v23 < &v85[v87])
        {
          v88 = v23;
        }

        if (v22 > v88)
        {
          v88 = v22;
        }

        v89 = *v88;
        v90 = v88[1];
        v91 = v88[2];
        v92 = *&_blt_float[v89];
        if (v16 >= 1.0)
        {
          v103 = *&_blt_float[v90];
          v104 = *&_blt_float[v91];
          if (v92 <= v103)
          {
            v105 = *&_blt_float[v90];
          }

          else
          {
            v105 = *&_blt_float[v89];
          }

          if (v104 <= v105)
          {
            v106 = v105;
          }

          else
          {
            v106 = *&_blt_float[v91];
          }

          v98 = v106 - v92;
          v99 = v106 - v103;
          v100 = v106 - v104;
          v101 = 1.0 - v106;
          v102 = 1065353216;
        }

        else
        {
          v93 = v16 * v92;
          v94 = v16 * *&_blt_float[v90];
          v95 = v16 * *&_blt_float[v91];
          if (v93 <= v94)
          {
            v96 = v16 * *&_blt_float[v90];
          }

          else
          {
            v96 = v93;
          }

          if (v95 <= v96)
          {
            v97 = v96;
          }

          else
          {
            v97 = v16 * *&_blt_float[v91];
          }

          v98 = v97 - v93;
          v99 = v97 - v94;
          v100 = v97 - v95;
          v101 = v16 - v97;
          v102 = LODWORD(v16);
        }

        v14->i32[0] = bswap32(LODWORD(v98));
        v14->i32[1] = bswap32(LODWORD(v99));
        v14->i32[2] = bswap32(LODWORD(v100));
        v14->i32[3] = bswap32(LODWORD(v101));
        if (v15)
        {
          *v15 = bswap32(v102);
        }

        ++v14;
        v15 = (v15 + v25);
        --v86;
      }

      while (v86);
    }

LABEL_176:
    v14 += v125;
    v21 += v20;
    v15 += v127;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t CMYKF_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, double a7, int32x4_t _Q1, float32x2_t a9, double a10, double a11)
{
  v12 = *(a2 + 2);
  v13 = *(a2 + 4);
  if (v13)
  {
    v94 = *(a2 + 5) - a5;
  }

  else
  {
    v94 = 0;
  }

  LODWORD(a7) = a2[2];
  v14 = *a2;
  v15 = *(a2 + 3) - a5;
  v16 = *(a2 + 17);
  v17 = *(a2 + 18);
  v18 = *(a2 + 9);
  v19 = *(a2 + 11);
  v20 = *(a2 + 7) + v19 * a4;
  v21 = *(a1 + 32);
  v22 = &v21[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v23 = 4 * (v13 != 0);
  __asm { FMOV            V1.2S, #1.0 }

  if (*(a1 + 176))
  {
    v92 = *(a2 + 15);
    v93 = *(a2 + 13);
    a9.i32[0] = 1.0;
    if (*&a7 >= 1.0)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = *(a2 + 2);
    }

    *&a11 = 1.0 - v28;
    v29 = vdupq_lane_s32(*&a11, 0);
    v30 = bswap32(LODWORD(v28));
    v91 = v17 + 16 * a3 + 8;
    v31 = vcltz_s32(vshl_n_s32(vdup_n_s32(*&a7 < 1.0), 0x1FuLL));
    v32 = vdup_lane_s32(vcgt_f32(a9, *&a7), 0);
    do
    {
      result = v20 - v93;
      if (((v92 - v20) | (v20 - v93)) < 0)
      {
        v36 = 0;
        v35 = 0;
      }

      else
      {
        v34 = ((v20 & ~(-1 << v18)) >> (v18 - 4)) & 0xF;
        result = weights_21890[v34];
        if (v34 - 7 >= 9)
        {
          v35 = -v16;
        }

        else
        {
          v35 = v16;
        }

        v36 = result & 0xF;
      }

      v37 = &v21[(v20 >> v18) * v16];
      if (v14 == 1)
      {
        if (a5 >= 1)
        {
          result = v91;
          v38 = a5;
          do
          {
            v39 = *(result - 8);
            v40 = *result;
            v41 = &v37[v39];
            if (v22 >= &v37[v39])
            {
              v42 = &v37[v39];
            }

            else
            {
              v42 = v22;
            }

            if (v21 > v42)
            {
              v42 = v21;
            }

            v43 = *v42;
            if ((v40 & 0xF) != 0)
            {
              v44 = &v41[v40 >> 4];
              if (v22 < v44)
              {
                v44 = v22;
              }

              if (v21 > v44)
              {
                v44 = v21;
              }

              v45 = *v44;
              if (v36)
              {
                v46 = &v41[v35];
                if (v22 >= v46)
                {
                  v47 = v46;
                }

                else
                {
                  v47 = v22;
                }

                if (v21 > v47)
                {
                  v47 = v21;
                }

                v48 = *v47;
                v49 = &v46[v40 >> 4];
                if (v22 < v49)
                {
                  v49 = v22;
                }

                if (v21 > v49)
                {
                  v49 = v21;
                }

                v50 = BLEND8_21892[v36];
                v43 = v43 - ((v50 & v43) >> v36) + ((v50 & v48) >> v36);
                v45 = v45 - ((v50 & v45) >> v36) + ((v50 & *v49) >> v36);
              }

              v43 = v43 - ((BLEND8_21892[*result & 0xFLL] & v43) >> (*result & 0xF)) + ((BLEND8_21892[*result & 0xFLL] & v45) >> (*result & 0xF));
            }

            else if (v36)
            {
              v51 = &v41[v35];
              if (v22 < &v41[v35])
              {
                v51 = v22;
              }

              if (v21 > v51)
              {
                v51 = v21;
              }

              v43 = v43 - ((BLEND8_21892[v36] & v43) >> v36) + ((BLEND8_21892[v36] & *v51) >> v36);
            }

            v11.i32[0] = _blt_float[v43];
            *v11.f32 = vsub_f32(__PAIR64__(_Q1.u32[1], v11.u32[0]), vdup_lane_s32(*v11.f32, 0));
            *v11.f32 = vrev32_s8(vbsl_s8(v31, vmul_n_f32(*v11.f32, *&a7), *v11.f32));
            v52 = vzip1q_s32(v11, v11);
            v52.i32[2] = v11.i32[0];
            *v12 = v52;
            if (v13)
            {
              *v13 = v30;
            }

            result += 16;
            ++v12;
            v13 = (v13 + v23);
            --v38;
          }

          while (v38);
        }
      }

      else if (a5 >= 1)
      {
        v53 = v91;
        result = a5;
        do
        {
          v54 = *(v53 - 1);
          v55 = *v53;
          v56 = &v37[v54];
          if (v22 >= &v37[v54])
          {
            v57 = &v37[v54];
          }

          else
          {
            v57 = v22;
          }

          if (v21 > v57)
          {
            v57 = v21;
          }

          v58 = *v57;
          if ((v55 & 0xF) != 0)
          {
            v59 = &v56[v55 >> 4];
            if (v22 < v59)
            {
              v59 = v22;
            }

            if (v21 > v59)
            {
              v59 = v21;
            }

            v60 = *v59;
            if (v36)
            {
              if (v22 >= &v56[v35])
              {
                v61 = &v56[v35];
              }

              else
              {
                v61 = v22;
              }

              if (v21 > v61)
              {
                v61 = v21;
              }

              v62 = *v61;
              v63 = &v56[v35 + (v55 >> 4)];
              if (v22 < v63)
              {
                v63 = v22;
              }

              if (v21 > v63)
              {
                v63 = v21;
              }

              v64 = BLEND8_21892[v36];
              v58 = v58 - ((v64 & v58) >> v36) + ((v64 & v62) >> v36);
              v60 = v60 - ((v64 & v60) >> v36) + ((v64 & *v63) >> v36);
            }

            v58 = v58 - ((BLEND8_21892[*v53 & 0xF] & v58) >> (*v53 & 0xF)) + ((BLEND8_21892[*v53 & 0xF] & v60) >> (*v53 & 0xF));
          }

          else if (v36)
          {
            v65 = &v56[v35];
            if (v22 < &v56[v35])
            {
              v65 = v22;
            }

            if (v21 > v65)
            {
              v65 = v21;
            }

            v58 = v58 - ((BLEND8_21892[v36] & v58) >> v36) + ((BLEND8_21892[v36] & *v65) >> v36);
          }

          v11.i32[0] = _blt_float[v58];
          v67 = _Q1;
          v67.i32[0] = v11.i32[0];
          v66 = vsub_f32(*v67.i8, vdup_lane_s32(*v11.f32, 0));
          *v67.i8 = vbsl_s8(v32, vmul_n_f32(v66, *&a7), v66);
          v11 = vzip1q_s32(v67, v67);
          v11.i32[2] = v67.i32[0];
          if (v13)
          {
            if (v28 < 1.0)
            {
              if (v28 > 0.0)
              {
                v68 = bswap32(COERCE_UNSIGNED_INT(v28 + (COERCE_FLOAT(bswap32(*v13)) * *&a11)));
                v11 = vrev32q_s8(vmlaq_f32(v11, v29, vrev32q_s8(*v12)));
                *v12 = v11;
                *v13 = v68;
              }
            }

            else
            {
              *v11.f32 = vrev32_s8(*v67.i8);
              v69 = vzip1q_s32(v11, v11);
              v69.i32[2] = v11.i32[0];
              *v12 = v69;
              *v13 = v30;
            }
          }

          else if (v28 < 1.0)
          {
            if (v28 > 0.0)
            {
              v11 = vrev32q_s8(vmlaq_f32(v11, v29, vrev32q_s8(*v12)));
              *v12 = v11;
            }
          }

          else
          {
            *v11.f32 = vrev32_s8(*v67.i8);
            v70 = vzip1q_s32(v11, v11);
            v70.i32[2] = v11.i32[0];
            *v12 = v70;
          }

          v53 += 2;
          ++v12;
          v13 = (v13 + v23);
          --result;
        }

        while (result);
      }

      v12 += v15;
      v20 += v19;
      v13 += v94;
      --a6;
    }

    while (a6);
  }

  else
  {
    v71 = (v17 + 16 * a3);
    a9.i32[0] = 1.0;
    if (*&a7 >= 1.0)
    {
      v72 = 1.0;
    }

    else
    {
      v72 = *&a7;
    }

    *&a11 = 1.0 - v72;
    v73 = vdupq_lane_s32(*&a11, 0);
    v74 = bswap32(LODWORD(v72));
    v75 = vcltz_s32(vshl_n_s32(vdup_n_s32(*&a7 < 1.0), 0x1FuLL));
    v76 = vdup_lane_s32(vcgt_f32(a9, *&a7), 0);
    do
    {
      result = &v21[(v20 >> v18) * v16];
      if (v14 == 1)
      {
        if (a5 >= 1)
        {
          v77 = v71;
          v78 = a5;
          do
          {
            v79 = *v77;
            v77 += 2;
            v80 = (result + v79);
            if (v22 < result + v79)
            {
              v80 = v22;
            }

            if (v21 > v80)
            {
              v80 = v21;
            }

            v11.i32[0] = _blt_float[*v80];
            *v11.f32 = vsub_f32(__PAIR64__(_Q1.u32[1], v11.u32[0]), vdup_lane_s32(*v11.f32, 0));
            *v11.f32 = vrev32_s8(vbsl_s8(v75, vmul_n_f32(*v11.f32, *&a7), *v11.f32));
            v81 = vzip1q_s32(v11, v11);
            v81.i32[2] = v11.i32[0];
            *v12 = v81;
            if (v13)
            {
              *v13 = v74;
            }

            ++v12;
            v13 = (v13 + v23);
            --v78;
          }

          while (v78);
        }
      }

      else
      {
        v82 = v71;
        v83 = a5;
        if (a5 >= 1)
        {
          do
          {
            v84 = *v82;
            v82 += 2;
            v85 = (result + v84);
            if (v22 < result + v84)
            {
              v85 = v22;
            }

            if (v21 > v85)
            {
              v85 = v21;
            }

            v11.i32[0] = _blt_float[*v85];
            v87 = _Q1;
            v87.i32[0] = v11.i32[0];
            v86 = vsub_f32(*v87.i8, vdup_lane_s32(*v11.f32, 0));
            *v87.i8 = vbsl_s8(v76, vmul_n_f32(v86, *&a7), v86);
            v11 = vzip1q_s32(v87, v87);
            v11.i32[2] = v87.i32[0];
            if (v13)
            {
              if (v72 < 1.0)
              {
                if (v72 > 0.0)
                {
                  v88 = bswap32(COERCE_UNSIGNED_INT(v72 + (COERCE_FLOAT(bswap32(*v13)) * *&a11)));
                  v11 = vrev32q_s8(vmlaq_f32(v11, v73, vrev32q_s8(*v12)));
                  *v12 = v11;
                  *v13 = v88;
                }
              }

              else
              {
                *v11.f32 = vrev32_s8(*v87.i8);
                v89 = vzip1q_s32(v11, v11);
                v89.i32[2] = v11.i32[0];
                *v12 = v89;
                *v13 = v74;
              }
            }

            else if (v72 < 1.0)
            {
              if (v72 > 0.0)
              {
                v11 = vrev32q_s8(vmlaq_f32(v11, v73, vrev32q_s8(*v12)));
                *v12 = v11;
              }
            }

            else
            {
              *v11.f32 = vrev32_s8(*v87.i8);
              v90 = vzip1q_s32(v11, v11);
              v90.i32[2] = v11.i32[0];
              *v12 = v90;
            }

            ++v12;
            v13 = (v13 + v23);
            --v83;
          }

          while (v83);
        }
      }

      v12 += v15;
      v20 += v19;
      v13 += v94;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t CMYKF_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v20[482] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) != 0x4000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = CMYKf_shade_radial_CMYK;
  }

  else if (*(v5 + 24))
  {
    v12 = CMYKf_shade_conic_CMYK;
  }

  else if (v16 < 2)
  {
    v12 = CMYKf_shade_axial_CMYK;
  }

  else
  {
    v12 = CMYKf_shade_custom_CMYK;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  CMYKF_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

void *__getCTFontCreateWithNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCreateWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCreateWithNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetWeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetWeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetWeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetBoundingBoxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetBoundingBox");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetBoundingBoxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetSlantAngleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetSlantAngle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetSlantAngleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetAscentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetAscent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetAscentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetDescentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetDescent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetDescentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetLeadingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetLeading");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetLeadingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetCapHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetCapHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetCapHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetXHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetXHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetXHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetGlyphsForCharactersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetGlyphsForCharacters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetGlyphsForCharactersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetAdvancesForGlyphsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetAdvancesForGlyphs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetAdvancesForGlyphsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetUnderlinePositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetUnderlinePosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetUnderlinePositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetUnderlineThicknessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetUnderlineThickness");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetUnderlineThicknessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontGetUnitsPerEmSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontGetUnitsPerEm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontGetUnitsPerEmSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontCopyTableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCopyTable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCopyTableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreTextLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  return result;
}

char *PDFContentStreamCreate(uint64_t a1, const CGRect *a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x1060040605640D9uLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    *v4 = a1;
    *(v4 + 1) = PDFXRefTableAddObject(*(a1 + 504));
    v5 = &CGRectInfinite;
    if (a2)
    {
      v5 = a2;
    }

    size = v5->size;
    *(v4 + 72) = v5->origin;
    *(v4 + 88) = size;
    v7 = malloc_type_calloc(1uLL, 0x60uLL, 0x10200407336DC2EuLL);
    __CFSetLastAllocationEventName();
    if (v7)
    {
      *v7 = 1;
      v7[1] = a1;
      *(v7 + 6) = 1;
      v7[2] = PDFXRefTableAddObject(*(a1 + 504));
    }

    *(v4 + 14) = v7;
    *(v4 + 23) = -1;
    *(v4 + 22) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  return v4;
}

void PDFContentStreamRelease(uint64_t a1)
{
  if (a1)
  {
    while (CFArrayGetCount(*(a1 + 176)) >= 1)
    {
      PDFContentStreamEndTag(a1, v2, v3, v4, v5, v6, v7, v8, v19);
    }

    v9 = *(a1 + 176);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 104);
    if (v10)
    {
      v11 = (*v10)-- == 1;
      if (v11)
      {
        v12 = v10[5];
        if (v12)
        {
          CFRelease(v12);
        }

        gstate_clear(v10);
        free(v10);
      }
    }

    CGPDFAssociationRelease(*(a1 + 64));
    v13 = *(a1 + 112);
    if (v13)
    {
      v11 = (*v13)-- == 1;
      if (v11)
      {
        CGOrderedSetRelease(v13[4]);
        CGOrderedSetRelease(v13[5]);
        CGOrderedSetRelease(v13[6]);
        CGOrderedSetRelease(v13[7]);
        CGOrderedSetRelease(v13[8]);
        CGOrderedSetRelease(v13[9]);
        CGOrderedSetRelease(v13[10]);
        CGOrderedSetRelease(v13[11]);
        free(v13);
      }
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 200);
    if (v18)
    {
      CFRelease(v18);
    }

    free(a1);
  }
}