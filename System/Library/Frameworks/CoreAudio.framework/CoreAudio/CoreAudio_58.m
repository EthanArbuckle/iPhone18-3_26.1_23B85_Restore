uint64_t RamstadSRC::checkPreflight(uint64_t this, RamstadSRC *a2, int a3, int a4)
{
  v6 = this;
  v7 = *(a2 + 66);
  if (v7 == -1)
  {
    this = RamstadSRC::outputSamplesForInputSamples(a2, a3, &v9);
    if (*(a2 + 66) != a4)
    {
      v8 = 1919746222;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v7 != a4)
  {
    v8 = 1919746226;
    goto LABEL_10;
  }

  if (*(a2 + 64) <= a3 && *(a2 + 65) >= a3)
  {
LABEL_7:
    *(v6 + 4) = 1;
    return this;
  }

  v8 = 1919746231;
LABEL_10:
  *v6 = v8;
  *(v6 + 4) = 0;
  return this;
}

uint64_t RamstadSRC::outputSamplesForInputSamples(RamstadSRC *this, int a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  *a3 = 0;
  v7 = *(this + 22);
  v8 = __OFSUB__(a2, v7);
  v9 = a2 - v7;
  if (v9 < 0 == v8)
  {
    if (*(this + 92) == 1)
    {
      v11 = *(this + 13) * v9;
      v12 = *(this + 18);
      v13 = *(this + 16);
    }

    else
    {
      v12 = v9 << 31;
      v11 = *(this + 18);
      v13 = *(this + 10);
    }

    v14 = ((v12 + v11 + v13 - 1) / v13) + 1;
    v15 = vcvtpd_s64_f64(*(this + 5) / *(this + 4));
    v16 = v14 + 2 * v15;
    v17 = v14 - 2 * v15;
    do
    {
      while (1)
      {
        v6 = v14;
        v5 = RamstadSRC::inputSamplesForOutputSamples(this, v14);
        if (v5 > a2)
        {
          break;
        }

        if ((v16 - v6) < 2)
        {
          goto LABEL_10;
        }

        v14 = (v6 + ((v16 - v6) >> 1));
        v17 = v6;
      }

      v14 = (v17 + ((v6 - v17) >> 1));
      v16 = v6;
    }

    while (v14 != v6);
LABEL_10:
    *a3 = v5;
  }

  *(this + 64) = v5;
  *(this + 65) = a2;
  *(this + 66) = v6;
  return v6;
}

uint64_t RamstadSRC::inputSamplesForOutputSamples(RamstadSRC *this, int a2)
{
  v2 = (a2 - 1);
  if (a2 < 1)
  {
    return 0;
  }

  if (*(this + 92) == 1)
  {
    v3 = (*(this + 18) + *(this + 16) * v2) / *(this + 13);
  }

  else
  {
    v3 = (*(this + 18) + *(this + 10) * v2) >> 31;
  }

  v4 = (*(this + 22) + v3);
  *(this + 64) = v4;
  *(this + 65) = v4;
  *(this + 66) = a2;
  return v4;
}

double RamstadSRC::processStereo(RamstadSRC *this, RamstadSRC *a2, const float *a3, const float *a4, float *a5, float *a6, int a7, int a8, int a9, int a10)
{
  if (*(a2 + 12) == 2)
  {
    RamstadSRC::checkPreflight(&v599, a2, a7, a8);
    if (v600)
    {
      *(this + 4) = 1;
      if (*(a2 + 93) == 1)
      {
        if (*(a2 + 92))
        {
          v19 = *(a2 + 17);
          v18 = *(a2 + 18);
          v20 = *(a2 + 22);
          v21 = *(a2 + 2);
          v22 = *(v21 + 16);
          v23 = *(v21 + 40);
          v24 = *(a2 + 20);
          v25 = *(a2 + 23);
          v26 = *(a2 + 13);
          v27 = *(a2 + 15);
          if (*(a2 + 14) == 8)
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v29 = 0;
              v30 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v55 = v24[6];
                  v54 = v24[7];
                  v53 = v24[4];
                  v52 = v24[5];
                }

                else
                {
                  v31 = v20;
                  do
                  {
                    v32 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v33 = *v24;
                    v34 = v24[1];
                    v35 = v24[2];
                    v36 = v24[3];
                    v37 = vmlaq_f64(v32, v36, v22[3]);
                    v38 = vmlaq_f64(v32, v35, v22[2]);
                    v39 = vmlaq_f64(v32, v34, v22[1]);
                    v40 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v41 = vmlaq_f64(vmlaq_f64(v32, *v24, *v22), *v25, v22[4]);
                    v42 = vmlaq_f64(v39, v25[1], v22[5]);
                    v43 = vmlaq_f64(v38, v25[2], v22[6]);
                    v44 = vmlaq_f64(v37, v25[3], v22[7]);
                    v25[2] = v35;
                    v25[3] = v36;
                    *v25 = v33;
                    v25[1] = v34;
                    v24[2] = v43;
                    v24[3] = v44;
                    *v24 = v41;
                    v24[1] = v42;
                    v46 = v24[4];
                    v45 = v24[5];
                    v48 = v24[6];
                    v47 = v24[7];
                    v49 = vmlaq_f64(v40, v48, v22[2]);
                    v50 = vmlaq_f64(v40, v47, v22[3]);
                    v51 = vmlaq_f64(v40, v46, *v22);
                    v52 = vmlaq_f64(vmlaq_f64(v40, v45, v22[1]), v25[5], v22[5]);
                    v53 = vmlaq_f64(v51, v25[4], v22[4]);
                    v54 = vmlaq_f64(v50, v25[7], v22[7]);
                    v55 = vmlaq_f64(v49, v25[6], v22[6]);
                    v25[4] = v46;
                    v25[5] = v45;
                    v25[6] = v48;
                    v25[7] = v47;
                    v24[6] = v55;
                    v24[7] = v54;
                    v24[4] = v53;
                    v24[5] = v52;
                    a3 = (a3 + v30);
                    a4 = (a4 + v30);
                    --v31;
                  }

                  while (v31);
                }

                v28 += v20;
                v56 = (v23 + ((2 * v18) << 6));
                v57 = v56[1];
                v59 = v56[2];
                v58 = v56[3];
                v60 = v56[6];
                v61 = v56[7];
                v62 = v56[4];
                v63 = v56[5];
                v64 = vmlaq_f64(vmulq_f64(v60, v25[6]), v55, v59);
                v65 = vmlaq_f64(vmulq_f64(v62, v25[4]), v53, *v56);
                v66 = vmlaq_f64(vmulq_f64(v61, v25[7]), v54, v58);
                v67 = vmlaq_f64(vmulq_f64(v63, v25[5]), v52, v57);
                v68 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v62, *v25), *v24, *v56), vmlaq_f64(vmulq_f64(v60, v25[2]), v24[2], v59)), vaddq_f64(vmlaq_f64(vmulq_f64(v63, v25[1]), v24[1], v57), vmlaq_f64(vmulq_f64(v61, v25[3]), v24[3], v58))));
                *a5 = v68;
                v69 = vaddvq_f64(vaddq_f64(vaddq_f64(v65, v64), vaddq_f64(v67, v66)));
                *a6 = v69;
                a5 += a10;
                a6 += a10;
                v70 = v18 + v19;
                if (v70 < v26)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v27 + 1;
                }

                if (v70 < v26)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = v26;
                }

                v18 = v70 - v71;
                ++v29;
              }

              while (v29 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v420 = 0;
              v421 = v419;
              do
              {
                v422 = vdupq_lane_s64(COERCE__INT64(a3[v420]), 0);
                v423 = *v24;
                v424 = v24[1];
                v425 = v24[2];
                v426 = v24[3];
                v427 = vmlaq_f64(v422, v426, v22[3]);
                v428 = vmlaq_f64(v422, v425, v22[2]);
                v429 = vmlaq_f64(v422, v424, v22[1]);
                v430 = vdupq_lane_s64(COERCE__INT64(a4[v420]), 0);
                v431 = vmlaq_f64(vmlaq_f64(v422, *v24, *v22), *v25, v22[4]);
                v432 = vmlaq_f64(v429, v25[1], v22[5]);
                v433 = vmlaq_f64(v428, v25[2], v22[6]);
                v434 = vmlaq_f64(v427, v25[3], v22[7]);
                v25[2] = v425;
                v25[3] = v426;
                *v25 = v423;
                v25[1] = v424;
                v24[2] = v433;
                v24[3] = v434;
                *v24 = v431;
                v24[1] = v432;
                v436 = v24[4];
                v435 = v24[5];
                v438 = v24[6];
                v437 = v24[7];
                v439 = vmlaq_f64(v430, v438, v22[2]);
                v440 = vmlaq_f64(v430, v437, v22[3]);
                v441 = vmlaq_f64(v430, v436, *v22);
                v442 = vmlaq_f64(vmlaq_f64(v430, v435, v22[1]), v25[5], v22[5]);
                v443 = vmlaq_f64(v441, v25[4], v22[4]);
                v444 = vmlaq_f64(v440, v25[7], v22[7]);
                v445 = vmlaq_f64(v439, v25[6], v22[6]);
                v25[4] = v436;
                v25[5] = v435;
                v25[6] = v438;
                v25[7] = v437;
                v24[6] = v445;
                v24[7] = v444;
                v24[4] = v443;
                v24[5] = v442;
                v420 += a9;
                --v421;
              }

              while (v421);
            }
          }

          else
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v212 = 0;
              v28 = 0;
              v213 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v242 = v24[10];
                  v241 = v24[11];
                  v240 = v24[8];
                  v239 = v24[9];
                }

                else
                {
                  v214 = v20;
                  do
                  {
                    v215 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v216 = *v24;
                    v217 = v24[1];
                    v218 = v24[2];
                    v219 = v24[3];
                    v220 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v221 = vmlaq_f64(vmlaq_f64(v215, *v24, *v22), *v25, v22[8]);
                    v222 = vmlaq_f64(vmlaq_f64(v215, v217, v22[1]), v25[1], v22[9]);
                    v223 = vmlaq_f64(vmlaq_f64(v215, v218, v22[2]), v25[2], v22[10]);
                    v224 = vmlaq_f64(vmlaq_f64(v215, v219, v22[3]), v25[3], v22[11]);
                    v25[2] = v218;
                    v25[3] = v219;
                    *v25 = v216;
                    v25[1] = v217;
                    v24[2] = v223;
                    v24[3] = v224;
                    *v24 = v221;
                    v24[1] = v222;
                    v225 = v24[4];
                    v226 = v24[5];
                    v227 = v24[6];
                    v228 = v24[7];
                    v229 = vmlaq_f64(vmlaq_f64(v220, v225, *v22), v25[4], v22[8]);
                    v230 = vmlaq_f64(vmlaq_f64(v220, v226, v22[1]), v25[5], v22[9]);
                    v231 = vmlaq_f64(vmlaq_f64(v220, v227, v22[2]), v25[6], v22[10]);
                    v232 = vmlaq_f64(vmlaq_f64(v220, v228, v22[3]), v25[7], v22[11]);
                    v25[4] = v225;
                    v25[5] = v226;
                    v25[6] = v227;
                    v25[7] = v228;
                    v24[6] = v231;
                    v24[7] = v232;
                    v24[4] = v229;
                    v24[5] = v230;
                    v234 = v24[8];
                    v233 = v24[9];
                    v236 = v24[10];
                    v235 = v24[11];
                    v237 = vmlaq_f64(v220, v236, v22[6]);
                    v238 = vmlaq_f64(v215, v234, v22[4]);
                    v239 = vmlaq_f64(vmlaq_f64(v215, v233, v22[5]), v25[9], v22[13]);
                    v240 = vmlaq_f64(v238, v25[8], v22[12]);
                    v241 = vmlaq_f64(vmlaq_f64(v220, v235, v22[7]), v25[11], v22[15]);
                    v242 = vmlaq_f64(v237, v25[10], v22[14]);
                    v25[8] = v234;
                    v25[9] = v233;
                    v25[10] = v236;
                    v25[11] = v235;
                    v24[10] = v242;
                    v24[11] = v241;
                    v24[8] = v240;
                    v24[9] = v239;
                    a3 = (a3 + v213);
                    a4 = (a4 + v213);
                    --v214;
                  }

                  while (v214);
                }

                v28 += v20;
                v243 = (v23 + ((4 * v18) << 6));
                v244 = v243[1];
                v246 = v243[2];
                v245 = v243[3];
                v247 = v243[10];
                v248 = v243[11];
                v249 = v243[8];
                v250 = v243[9];
                v251 = vmlaq_f64(vmulq_f64(v247, v25[2]), v24[2], v246);
                v252 = vmlaq_f64(vmulq_f64(v249, *v25), *v24, *v243);
                v253 = vmlaq_f64(vmulq_f64(v248, v25[3]), v24[3], v245);
                v254 = vmlaq_f64(vmulq_f64(v250, v25[1]), v24[1], v244);
                v255 = vmlaq_f64(vmulq_f64(v247, v25[6]), v24[6], v246);
                v256 = vmlaq_f64(vmulq_f64(v249, v25[4]), v24[4], *v243);
                v257 = vmlaq_f64(vmulq_f64(v248, v25[7]), v24[7], v245);
                v258 = vmlaq_f64(vmulq_f64(v250, v25[5]), v24[5], v244);
                v259 = vmlaq_f64(vmulq_f64(v243[15], v25[11]), v241, v243[7]);
                v260 = vmlaq_f64(vmulq_f64(v243[14], v25[10]), v242, v243[6]);
                v261 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v252, v251), vaddq_f64(v254, v253)), vaddq_f64(vmlaq_f64(vmulq_f64(v243[12], v25[8]), v240, v243[4]), vmlaq_f64(vmulq_f64(v243[13], v25[9]), v239, v243[5]))));
                *a5 = v261;
                v262 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v256, v255), vaddq_f64(v258, v257)), vaddq_f64(v260, v259)));
                *a6 = v262;
                a5 += a10;
                a6 += a10;
                v263 = v18 + v19;
                if (v263 < v26)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v27 + 1;
                }

                if (v263 < v26)
                {
                  v264 = 0;
                }

                else
                {
                  v264 = v26;
                }

                v18 = v263 - v264;
                ++v212;
              }

              while (v212 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v503 = 0;
              v504 = v419;
              do
              {
                v505 = vdupq_lane_s64(COERCE__INT64(a3[v503]), 0);
                v506 = *v24;
                v507 = v24[1];
                v508 = v24[2];
                v509 = v24[3];
                v510 = vdupq_lane_s64(COERCE__INT64(a4[v503]), 0);
                v511 = vmlaq_f64(vmlaq_f64(v505, *v24, *v22), *v25, v22[8]);
                v512 = vmlaq_f64(vmlaq_f64(v505, v507, v22[1]), v25[1], v22[9]);
                v513 = vmlaq_f64(vmlaq_f64(v505, v508, v22[2]), v25[2], v22[10]);
                v514 = vmlaq_f64(vmlaq_f64(v505, v509, v22[3]), v25[3], v22[11]);
                v25[2] = v508;
                v25[3] = v509;
                *v25 = v506;
                v25[1] = v507;
                v24[2] = v513;
                v24[3] = v514;
                *v24 = v511;
                v24[1] = v512;
                v515 = v24[4];
                v516 = v24[5];
                v517 = v24[6];
                v518 = v24[7];
                v519 = vmlaq_f64(vmlaq_f64(v510, v515, *v22), v25[4], v22[8]);
                v520 = vmlaq_f64(vmlaq_f64(v510, v516, v22[1]), v25[5], v22[9]);
                v521 = vmlaq_f64(vmlaq_f64(v510, v517, v22[2]), v25[6], v22[10]);
                v522 = vmlaq_f64(vmlaq_f64(v510, v518, v22[3]), v25[7], v22[11]);
                v25[4] = v515;
                v25[5] = v516;
                v25[6] = v517;
                v25[7] = v518;
                v24[6] = v521;
                v24[7] = v522;
                v24[4] = v519;
                v24[5] = v520;
                v524 = v24[8];
                v523 = v24[9];
                v526 = v24[10];
                v525 = v24[11];
                v527 = vmlaq_f64(v510, v526, v22[6]);
                v528 = vmlaq_f64(v505, v524, v22[4]);
                v529 = vmlaq_f64(vmlaq_f64(v505, v523, v22[5]), v25[9], v22[13]);
                v530 = vmlaq_f64(v528, v25[8], v22[12]);
                v531 = vmlaq_f64(vmlaq_f64(v510, v525, v22[7]), v25[11], v22[15]);
                v532 = vmlaq_f64(v527, v25[10], v22[14]);
                v25[8] = v524;
                v25[9] = v523;
                v25[10] = v526;
                v25[11] = v525;
                v24[10] = v532;
                v24[11] = v531;
                v24[8] = v530;
                v24[9] = v529;
                v503 += a9;
                --v504;
              }

              while (v504);
            }
          }
        }

        else
        {
          v104 = *(a2 + 17);
          v18 = *(a2 + 18);
          v20 = *(a2 + 22);
          v105 = *(a2 + 2);
          v106 = *(v105 + 16);
          v107 = *(v105 + 40);
          v108 = *(a2 + 20);
          v109 = *(a2 + 23);
          v110 = *(a2 + 15);
          if (*(a2 + 14) == 8)
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v111 = 0;
              v112 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v137 = v108[6];
                  v136 = v108[7];
                  v135 = v108[4];
                  v134 = v108[5];
                }

                else
                {
                  v113 = v20;
                  do
                  {
                    v114 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v115 = *v108;
                    v116 = v108[1];
                    v117 = v108[2];
                    v118 = v108[3];
                    v119 = vmlaq_f64(v114, v118, v106[3]);
                    v120 = vmlaq_f64(v114, v117, v106[2]);
                    v121 = vmlaq_f64(v114, v116, v106[1]);
                    v122 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v123 = vmlaq_f64(vmlaq_f64(v114, *v108, *v106), *v109, v106[4]);
                    v124 = vmlaq_f64(v121, v109[1], v106[5]);
                    v125 = vmlaq_f64(v120, v109[2], v106[6]);
                    v126 = vmlaq_f64(v119, v109[3], v106[7]);
                    v109[2] = v117;
                    v109[3] = v118;
                    *v109 = v115;
                    v109[1] = v116;
                    v108[2] = v125;
                    v108[3] = v126;
                    *v108 = v123;
                    v108[1] = v124;
                    v128 = v108[4];
                    v127 = v108[5];
                    v130 = v108[6];
                    v129 = v108[7];
                    v131 = vmlaq_f64(v122, v130, v106[2]);
                    v132 = vmlaq_f64(v122, v129, v106[3]);
                    v133 = vmlaq_f64(v122, v128, *v106);
                    v134 = vmlaq_f64(vmlaq_f64(v122, v127, v106[1]), v109[5], v106[5]);
                    v135 = vmlaq_f64(v133, v109[4], v106[4]);
                    v136 = vmlaq_f64(v132, v109[7], v106[7]);
                    v137 = vmlaq_f64(v131, v109[6], v106[6]);
                    v109[4] = v128;
                    v109[5] = v127;
                    v109[6] = v130;
                    v109[7] = v129;
                    v108[6] = v137;
                    v108[7] = v136;
                    v108[4] = v135;
                    v108[5] = v134;
                    a3 = (a3 + v112);
                    a4 = (a4 + v112);
                    --v113;
                  }

                  while (v113);
                }

                v28 += v20;
                v138 = *(a2 + 12) * (v18 & 0x7FFFFF);
                v139 = (v107 + (((v18 >> 22) & 0x1FE) << 6));
                v140 = v139[1];
                v142 = v139[2];
                v141 = v139[3];
                v143 = v108[1];
                v145 = v108[2];
                v144 = v108[3];
                v146 = v139[6];
                v147 = v139[7];
                v148 = v139[4];
                v149 = v139[5];
                v150 = v109[2];
                v151 = v109[3];
                v152 = v109[1];
                v153 = vmlaq_f64(vmulq_f64(v149, v152), v143, v140);
                v154 = v109[6];
                v155 = v109[7];
                v156 = v109[4];
                v157 = v109[5];
                v158 = vmlaq_f64(vmulq_f64(v149, v157), v134, v140);
                v159 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v148, *v109), *v108, *v139), vmlaq_f64(vmulq_f64(v146, v150), v145, v142)), vaddq_f64(v153, vmlaq_f64(vmulq_f64(v147, v151), v144, v141)));
                v160 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v148, v156), v135, *v139), vmlaq_f64(vmulq_f64(v146, v154), v137, v142)), vaddq_f64(v158, vmlaq_f64(vmulq_f64(v147, v155), v136, v141)));
                v162 = v139[8];
                v161 = v139[9];
                v164 = v139[10];
                v163 = v139[11];
                v165 = v139[14];
                v166 = v139[15];
                v167 = v139[12];
                v168 = v139[13];
                v169 = vmlaq_f64(vmulq_f64(v152, v168), v143, v161);
                v170 = vmlaq_f64(vmulq_f64(v157, v168), v134, v161);
                v171 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v109, v167), *v108, v162), vmlaq_f64(vmulq_f64(v150, v165), v145, v164)), vaddq_f64(v169, vmlaq_f64(vmulq_f64(v151, v166), v144, v163))), v159));
                v172 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v156, v167), v135, v162), vmlaq_f64(vmulq_f64(v154, v165), v137, v164)), vaddq_f64(v170, vmlaq_f64(vmulq_f64(v155, v166), v136, v163))), v160));
                *a5 = v171.f32[1] + (v138 * (v171.f32[0] - v171.f32[1]));
                *a6 = v172.f32[1] + (v138 * (v172.f32[0] - v172.f32[1]));
                a5 += a10;
                a6 += a10;
                LODWORD(v139) = v18 + v104;
                v18 = (v18 + v104) & 0x7FFFFFFF;
                v20 = v110 + (v139 >> 31);
                ++v111;
              }

              while (v111 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v461 = 0;
              v462 = v419;
              do
              {
                v463 = vdupq_lane_s64(COERCE__INT64(a3[v461]), 0);
                v464 = *v108;
                v465 = v108[1];
                v466 = v108[2];
                v467 = v108[3];
                v468 = vmlaq_f64(v463, v467, v106[3]);
                v469 = vmlaq_f64(v463, v466, v106[2]);
                v470 = vmlaq_f64(v463, v465, v106[1]);
                v471 = vdupq_lane_s64(COERCE__INT64(a4[v461]), 0);
                v472 = vmlaq_f64(vmlaq_f64(v463, *v108, *v106), *v109, v106[4]);
                v473 = vmlaq_f64(v470, v109[1], v106[5]);
                v474 = vmlaq_f64(v469, v109[2], v106[6]);
                v475 = vmlaq_f64(v468, v109[3], v106[7]);
                v109[2] = v466;
                v109[3] = v467;
                *v109 = v464;
                v109[1] = v465;
                v108[2] = v474;
                v108[3] = v475;
                *v108 = v472;
                v108[1] = v473;
                v477 = v108[4];
                v476 = v108[5];
                v479 = v108[6];
                v478 = v108[7];
                v480 = vmlaq_f64(v471, v479, v106[2]);
                v481 = vmlaq_f64(v471, v478, v106[3]);
                v482 = vmlaq_f64(v471, v477, *v106);
                v483 = vmlaq_f64(vmlaq_f64(v471, v476, v106[1]), v109[5], v106[5]);
                v484 = vmlaq_f64(v482, v109[4], v106[4]);
                v485 = vmlaq_f64(v481, v109[7], v106[7]);
                v486 = vmlaq_f64(v480, v109[6], v106[6]);
                v109[4] = v477;
                v109[5] = v476;
                v109[6] = v479;
                v109[7] = v478;
                v108[6] = v486;
                v108[7] = v485;
                v108[4] = v484;
                v108[5] = v483;
                v461 += a9;
                --v462;
              }

              while (v462);
            }
          }

          else
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v297 = 0;
              v298 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v327 = v108[10];
                  v326 = v108[11];
                  v325 = v108[8];
                  v324 = v108[9];
                }

                else
                {
                  v299 = v20;
                  do
                  {
                    v300 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v301 = *v108;
                    v302 = v108[1];
                    v303 = v108[2];
                    v304 = v108[3];
                    v305 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v306 = vmlaq_f64(vmlaq_f64(v300, *v108, *v106), *v109, v106[8]);
                    v307 = vmlaq_f64(vmlaq_f64(v300, v302, v106[1]), v109[1], v106[9]);
                    v308 = vmlaq_f64(vmlaq_f64(v300, v303, v106[2]), v109[2], v106[10]);
                    v309 = vmlaq_f64(vmlaq_f64(v300, v304, v106[3]), v109[3], v106[11]);
                    v109[2] = v303;
                    v109[3] = v304;
                    *v109 = v301;
                    v109[1] = v302;
                    v108[2] = v308;
                    v108[3] = v309;
                    *v108 = v306;
                    v108[1] = v307;
                    v310 = v108[4];
                    v311 = v108[5];
                    v312 = v108[6];
                    v313 = v108[7];
                    v314 = vmlaq_f64(vmlaq_f64(v305, v310, *v106), v109[4], v106[8]);
                    v315 = vmlaq_f64(vmlaq_f64(v305, v311, v106[1]), v109[5], v106[9]);
                    v316 = vmlaq_f64(vmlaq_f64(v305, v312, v106[2]), v109[6], v106[10]);
                    v317 = vmlaq_f64(vmlaq_f64(v305, v313, v106[3]), v109[7], v106[11]);
                    v109[4] = v310;
                    v109[5] = v311;
                    v109[6] = v312;
                    v109[7] = v313;
                    v108[6] = v316;
                    v108[7] = v317;
                    v108[4] = v314;
                    v108[5] = v315;
                    v319 = v108[8];
                    v318 = v108[9];
                    v321 = v108[10];
                    v320 = v108[11];
                    v322 = vmlaq_f64(v305, v321, v106[6]);
                    v323 = vmlaq_f64(v300, v319, v106[4]);
                    v324 = vmlaq_f64(vmlaq_f64(v300, v318, v106[5]), v109[9], v106[13]);
                    v325 = vmlaq_f64(v323, v109[8], v106[12]);
                    v326 = vmlaq_f64(vmlaq_f64(v305, v320, v106[7]), v109[11], v106[15]);
                    v327 = vmlaq_f64(v322, v109[10], v106[14]);
                    v109[8] = v319;
                    v109[9] = v318;
                    v109[10] = v321;
                    v109[11] = v320;
                    v108[10] = v327;
                    v108[11] = v326;
                    v108[8] = v325;
                    v108[9] = v324;
                    a3 = (a3 + v298);
                    a4 = (a4 + v298);
                    --v299;
                  }

                  while (v299);
                }

                v328 = (v107 + (((v18 >> 21) & 0x3FC) << 6));
                v329 = v328[1];
                v331 = v328[2];
                v330 = v328[3];
                v332 = v108[1];
                v334 = v108[2];
                v333 = v108[3];
                v336 = v328[10];
                v335 = v328[11];
                v337 = v328[8];
                v338 = v328[9];
                v340 = v109[2];
                v339 = v109[3];
                v341 = v109[1];
                v342 = vmlaq_f64(vmulq_f64(v336, v340), v334, v331);
                v343 = vmlaq_f64(vmulq_f64(v337, *v109), *v108, *v328);
                v344 = vmlaq_f64(vmulq_f64(v335, v339), v333, v330);
                v598 = vmlaq_f64(vmulq_f64(v338, v341), v332, v329);
                v345 = v108[4];
                v346 = v108[5];
                v347 = v108[6];
                v348 = v108[7];
                v349 = v109[6];
                v350 = v109[7];
                v351 = v109[4];
                v352 = v109[5];
                v353 = vmulq_f64(v335, v350);
                v354 = vmlaq_f64(vmulq_f64(v336, v349), v347, v331);
                v355 = vmlaq_f64(vmulq_f64(v337, v351), v345, *v328);
                v356 = vmlaq_f64(v353, v348, v330);
                v357 = vmlaq_f64(vmulq_f64(v338, v352), v346, v329);
                v358 = v328[18];
                v359 = v328[26];
                v360 = v328[27];
                v361 = vmlaq_f64(vmulq_f64(v340, v359), v334, v358);
                v362 = v328[24];
                v363 = v328[25];
                v364 = v328[16];
                v365 = vmlaq_f64(vmulq_f64(v349, v359), v347, v358);
                v366 = vmlaq_f64(vmulq_f64(v351, v362), v345, v364);
                v367 = v328[19];
                v368 = v328[17];
                v369 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v109, v362), *v108, v364), v361), vaddq_f64(vmlaq_f64(vmulq_f64(v341, v363), v332, v368), vmlaq_f64(vmulq_f64(v339, v360), v333, v367))), vaddq_f64(vaddq_f64(v343, v342), vaddq_f64(v598, v344))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[8], v328[28]), v325, v328[20]), vmlaq_f64(vmulq_f64(v109[9], v328[29]), v324, v328[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v328[12], v109[8]), v325, v328[4]), vmlaq_f64(vmulq_f64(v328[13], v109[9]), v324, v328[5]))));
                v370 = *(a2 + 12) * (v18 & 0x7FFFFF);
                *&v369.f64[0] = vcvt_f32_f64(v369);
                v371 = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v366, v365), vaddq_f64(vmlaq_f64(vmulq_f64(v352, v363), v346, v368), vmlaq_f64(vmulq_f64(v350, v360), v348, v367))), vaddq_f64(vaddq_f64(v355, v354), vaddq_f64(v357, v356))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[10], v328[30]), v327, v328[22]), vmlaq_f64(vmulq_f64(v109[11], v328[31]), v326, v328[23])), vaddq_f64(vmlaq_f64(vmulq_f64(v328[14], v109[10]), v327, v328[6]), vmlaq_f64(vmulq_f64(v328[15], v109[11]), v326, v328[7])))));
                *a5 = *(v369.f64 + 1) + (v370 * (*v369.f64 - *(v369.f64 + 1)));
                *a6 = v371.f32[1] + (v370 * (v371.f32[0] - v371.f32[1]));
                v28 += v20;
                a5 += a10;
                a6 += a10;
                v372 = v18 + v104;
                v18 = (v18 + v104) & 0x7FFFFFFF;
                v20 = v110 + (v372 >> 31);
                ++v297;
              }

              while (v297 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v550 = 0;
              v551 = v419;
              do
              {
                v552 = vdupq_lane_s64(COERCE__INT64(a3[v550]), 0);
                v553 = *v108;
                v554 = v108[1];
                v555 = v108[2];
                v556 = v108[3];
                v557 = vdupq_lane_s64(COERCE__INT64(a4[v550]), 0);
                v558 = vmlaq_f64(vmlaq_f64(v552, *v108, *v106), *v109, v106[8]);
                v559 = vmlaq_f64(vmlaq_f64(v552, v554, v106[1]), v109[1], v106[9]);
                v560 = vmlaq_f64(vmlaq_f64(v552, v555, v106[2]), v109[2], v106[10]);
                v561 = vmlaq_f64(vmlaq_f64(v552, v556, v106[3]), v109[3], v106[11]);
                v109[2] = v555;
                v109[3] = v556;
                *v109 = v553;
                v109[1] = v554;
                v108[2] = v560;
                v108[3] = v561;
                *v108 = v558;
                v108[1] = v559;
                v562 = v108[4];
                v563 = v108[5];
                v564 = v108[6];
                v565 = v108[7];
                v566 = vmlaq_f64(vmlaq_f64(v557, v562, *v106), v109[4], v106[8]);
                v567 = vmlaq_f64(vmlaq_f64(v557, v563, v106[1]), v109[5], v106[9]);
                v568 = vmlaq_f64(vmlaq_f64(v557, v564, v106[2]), v109[6], v106[10]);
                v569 = vmlaq_f64(vmlaq_f64(v557, v565, v106[3]), v109[7], v106[11]);
                v109[4] = v562;
                v109[5] = v563;
                v109[6] = v564;
                v109[7] = v565;
                v108[6] = v568;
                v108[7] = v569;
                v108[4] = v566;
                v108[5] = v567;
                v571 = v108[8];
                v570 = v108[9];
                v573 = v108[10];
                v572 = v108[11];
                v574 = vmlaq_f64(v557, v573, v106[6]);
                v575 = vmlaq_f64(v552, v571, v106[4]);
                v576 = vmlaq_f64(vmlaq_f64(v552, v570, v106[5]), v109[9], v106[13]);
                v577 = vmlaq_f64(v575, v109[8], v106[12]);
                v578 = vmlaq_f64(vmlaq_f64(v557, v572, v106[7]), v109[11], v106[15]);
                v579 = vmlaq_f64(v574, v109[10], v106[14]);
                v109[8] = v571;
                v109[9] = v570;
                v109[10] = v573;
                v109[11] = v572;
                v108[10] = v579;
                v108[11] = v578;
                v108[8] = v577;
                v108[9] = v576;
                v550 += a9;
                --v551;
              }

              while (v551);
            }
          }
        }

LABEL_164:
        v20 -= v419;
        v28 += v419;
LABEL_165:
        *(a2 + 18) = v18;
        *(a2 + 22) = v20;
LABEL_166:
        *this = v28;
        goto LABEL_167;
      }

      if (*(a2 + 92))
      {
        v73 = *(a2 + 17);
        v18 = *(a2 + 18);
        v20 = *(a2 + 22);
        v74 = *(*a2 + 16);
        v75 = *(*a2 + 40);
        v76 = *(a2 + 14);
        v77 = *(a2 + 17);
        v78 = *(a2 + 13);
        v79 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a8 < 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = 0;
            v80 = 0;
            v81 = 4 * a9;
            do
            {
              if (v20 < 1)
              {
                v92 = v76[2];
                v93 = v76[3];
              }

              else
              {
                v82 = v20;
                do
                {
                  v83 = vld1q_dup_f32(a3);
                  a3 = (a3 + v81);
                  v84 = vld1q_dup_f32(a4);
                  a4 = (a4 + v81);
                  v85 = v76[1];
                  v86 = vmlaq_f32(v83, v85, v74[1]);
                  v87 = vmlaq_f32(vmlaq_f32(v83, *v76, *v74), *v77, v74[2]);
                  v88 = vmlaq_f32(v86, v77[1], v74[3]);
                  *v77 = *v76;
                  v77[1] = v85;
                  *v76 = v87;
                  v76[1] = v88;
                  v89 = v76[2];
                  v90 = v76[3];
                  v91 = vmlaq_f32(v84, v90, v74[1]);
                  v92 = vmlaq_f32(vmlaq_f32(v84, v89, *v74), v77[2], v74[2]);
                  v93 = vmlaq_f32(v91, v77[3], v74[3]);
                  v77[2] = v89;
                  v77[3] = v90;
                  v76[2] = v92;
                  v76[3] = v93;
                  --v82;
                }

                while (v82);
              }

              v28 += v20;
              v94 = (v75 + 32 * (2 * v18));
              v95 = v94[1];
              v97 = v94[2];
              v96 = v94[3];
              v98 = vmlaq_f32(vmulq_f32(v96, v77[3]), v93, v95);
              v99 = vmlaq_f32(vmulq_f32(v97, v77[2]), v92, *v94);
              v100 = vaddq_f32(vmlaq_f32(vmulq_f32(v97, *v77), *v76, *v94), vmlaq_f32(vmulq_f32(v96, v77[1]), v76[1], v95));
              *a5 = vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)));
              v101 = vaddq_f32(v99, v98);
              *a6 = vaddv_f32(vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL)));
              a5 += a10;
              a6 += a10;
              v102 = v18 + v73;
              if (v102 < v78)
              {
                v20 = v79;
              }

              else
              {
                v20 = v79 + 1;
              }

              if (v102 < v78)
              {
                v103 = 0;
              }

              else
              {
                v103 = v78;
              }

              v18 = v102 - v103;
              ++v80;
            }

            while (v80 != a8);
          }

          v419 = a7 - v28;
          if (a7 <= v28)
          {
            goto LABEL_165;
          }

          if (v20 < v419)
          {
            v419 = v20;
          }

          if (v419 >= 1)
          {
            v446 = 0;
            v447 = v419;
            do
            {
              v448 = &a3[v446];
              v449 = &a4[v446];
              v450 = vld1q_dup_f32(v448);
              v451 = vld1q_dup_f32(v449);
              v452 = v76[1];
              v453 = vmlaq_f32(v450, v452, v74[1]);
              v454 = vmlaq_f32(vmlaq_f32(v450, *v76, *v74), *v77, v74[2]);
              v455 = vmlaq_f32(v453, v77[1], v74[3]);
              *v77 = *v76;
              v77[1] = v452;
              *v76 = v454;
              v76[1] = v455;
              v456 = v76[2];
              v457 = v76[3];
              v458 = vmlaq_f32(v451, v457, v74[1]);
              v459 = vmlaq_f32(vmlaq_f32(v451, v456, *v74), v77[2], v74[2]);
              v460 = vmlaq_f32(v458, v77[3], v74[3]);
              v77[2] = v456;
              v77[3] = v457;
              v76[2] = v459;
              v76[3] = v460;
              v446 += a9;
              --v447;
            }

            while (v447);
          }
        }

        else
        {
          if (a8 < 1)
          {
            v28 = 0;
          }

          else
          {
            v265 = 0;
            v28 = 0;
            v266 = 4 * a9;
            do
            {
              if (v20 < 1)
              {
                v279 = v76[4];
                v280 = v76[5];
              }

              else
              {
                v267 = v20;
                do
                {
                  v268 = vld1q_dup_f32(a3);
                  a3 = (a3 + v266);
                  v269 = vld1q_dup_f32(a4);
                  a4 = (a4 + v266);
                  v270 = v76[1];
                  v271 = vmlaq_f32(vmlaq_f32(v268, *v76, *v74), *v77, v74[4]);
                  v272 = vmlaq_f32(vmlaq_f32(v268, v270, v74[1]), v77[1], v74[5]);
                  *v77 = *v76;
                  v77[1] = v270;
                  *v76 = v271;
                  v76[1] = v272;
                  v273 = v76[2];
                  v274 = v76[3];
                  v275 = vmlaq_f32(vmlaq_f32(v269, v273, *v74), v77[2], v74[4]);
                  v276 = vmlaq_f32(vmlaq_f32(v269, v274, v74[1]), v77[3], v74[5]);
                  v77[2] = v273;
                  v77[3] = v274;
                  v76[2] = v275;
                  v76[3] = v276;
                  v277 = v76[4];
                  v278 = v76[5];
                  v279 = vmlaq_f32(vmlaq_f32(v268, v277, v74[2]), v77[4], v74[6]);
                  v280 = vmlaq_f32(vmlaq_f32(v269, v278, v74[3]), v77[5], v74[7]);
                  v77[4] = v277;
                  v77[5] = v278;
                  v76[4] = v279;
                  v76[5] = v280;
                  --v267;
                }

                while (v267);
              }

              v28 += v20;
              v281 = (v75 + 32 * (4 * v18));
              v282 = v281[1];
              v284 = v281[4];
              v283 = v281[5];
              v285 = vmlaq_f32(vmulq_f32(v283, v77[1]), v76[1], v282);
              v286 = vmlaq_f32(vmulq_f32(v284, *v77), *v76, *v281);
              v287 = vmlaq_f32(vmulq_f32(v283, v77[3]), v76[3], v282);
              v288 = vmlaq_f32(vmulq_f32(v284, v77[2]), v76[2], *v281);
              v289 = vmlaq_f32(vmulq_f32(v281[7], v77[5]), v280, v281[3]);
              v290 = vmlaq_f32(vmulq_f32(v281[6], v77[4]), v279, v281[2]);
              v291 = vaddq_f32(v286, v285);
              *v291.i8 = vadd_f32(*v291.i8, *&vextq_s8(v291, v291, 8uLL));
              v292 = vadd_f32(*v290.i8, *&vextq_s8(v290, v290, 8uLL));
              *a5 = vaddv_f32(vadd_f32(vzip1_s32(*v291.i8, v292), vzip2_s32(*v291.i8, v292)));
              v293 = vaddq_f32(v288, v287);
              *v293.i8 = vadd_f32(*v293.i8, *&vextq_s8(v293, v293, 8uLL));
              v294 = vadd_f32(*v289.i8, *&vextq_s8(v289, v289, 8uLL));
              *a6 = vaddv_f32(vadd_f32(vzip1_s32(*v293.i8, v294), vzip2_s32(*v293.i8, v294)));
              a5 += a10;
              a6 += a10;
              v295 = v18 + v73;
              if (v295 < v78)
              {
                v20 = v79;
              }

              else
              {
                v20 = v79 + 1;
              }

              if (v295 < v78)
              {
                v296 = 0;
              }

              else
              {
                v296 = v78;
              }

              v18 = v295 - v296;
              ++v265;
            }

            while (v265 != a8);
          }

          v419 = a7 - v28;
          if (a7 <= v28)
          {
            goto LABEL_165;
          }

          if (v20 < v419)
          {
            v419 = v20;
          }

          if (v419 >= 1)
          {
            v533 = 0;
            v534 = v419;
            do
            {
              v535 = &a3[v533];
              v536 = &a4[v533];
              v537 = vld1q_dup_f32(v535);
              v538 = v76[1];
              v539 = vld1q_dup_f32(v536);
              v540 = vmlaq_f32(vmlaq_f32(v537, *v76, *v74), *v77, v74[4]);
              v541 = vmlaq_f32(vmlaq_f32(v537, v538, v74[1]), v77[1], v74[5]);
              *v77 = *v76;
              v77[1] = v538;
              *v76 = v540;
              v76[1] = v541;
              v542 = v76[2];
              v543 = v76[3];
              v544 = vmlaq_f32(vmlaq_f32(v539, v542, *v74), v77[2], v74[4]);
              v545 = vmlaq_f32(vmlaq_f32(v539, v543, v74[1]), v77[3], v74[5]);
              v77[2] = v542;
              v77[3] = v543;
              v76[2] = v544;
              v76[3] = v545;
              v546 = v76[4];
              v547 = v76[5];
              v548 = vmlaq_f32(vmlaq_f32(v537, v546, v74[2]), v77[4], v74[6]);
              v549 = vmlaq_f32(vmlaq_f32(v539, v547, v74[3]), v77[5], v74[7]);
              v77[4] = v546;
              v77[5] = v547;
              v76[4] = v548;
              v76[5] = v549;
              v533 += a9;
              --v534;
            }

            while (v534);
          }
        }

        goto LABEL_164;
      }

      v174 = *(a2 + 17);
      v173 = *(a2 + 18);
      v175 = *(a2 + 22);
      v176 = *(*a2 + 16);
      v177 = *(*a2 + 40);
      v178 = *(a2 + 14);
      v179 = *(a2 + 17);
      v180 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a8 >= 1)
        {
          v181 = 0;
          v28 = 0;
          v182 = 4 * a9;
          while (1)
          {
            v28 += v175;
            if (v28 > *(a2 + 64))
            {
              break;
            }

            if (v175 < 1)
            {
              v192 = v178[2];
              v193 = v178[3];
            }

            else
            {
              do
              {
                v183 = vld1q_dup_f32(a3);
                a3 = (a3 + v182);
                v184 = vld1q_dup_f32(a4);
                a4 = (a4 + v182);
                v185 = v178[1];
                v186 = vmlaq_f32(v183, v185, v176[1]);
                v187 = vmlaq_f32(vmlaq_f32(v183, *v178, *v176), *v179, v176[2]);
                v188 = vmlaq_f32(v186, v179[1], v176[3]);
                *v179 = *v178;
                v179[1] = v185;
                *v178 = v187;
                v178[1] = v188;
                v189 = v178[2];
                v190 = v178[3];
                v191 = vmlaq_f32(v184, v190, v176[1]);
                v192 = vmlaq_f32(vmlaq_f32(v184, v189, *v176), v179[2], v176[2]);
                v193 = vmlaq_f32(v191, v179[3], v176[3]);
                v179[2] = v189;
                v179[3] = v190;
                v178[2] = v192;
                v178[3] = v193;
                --v175;
              }

              while (v175);
            }

            v194 = *(a2 + 12) * (v173 & 0x7FFFFF);
            v195 = (v177 + 32 * ((v173 >> 22) & 0x1FE));
            v196 = v195[1];
            v197 = v178[1];
            v199 = v195[2];
            v198 = v195[3];
            v200 = v179[1];
            v202 = v179[2];
            v201 = v179[3];
            v203 = vaddq_f32(vmlaq_f32(vmulq_f32(v199, *v179), *v178, *v195), vmlaq_f32(vmulq_f32(v198, v200), v197, v196));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            v204 = vaddq_f32(vmlaq_f32(vmulq_f32(v199, v202), v192, *v195), vmlaq_f32(vmulq_f32(v198, v201), v193, v196));
            *v204.i8 = vadd_f32(*v204.i8, *&vextq_s8(v204, v204, 8uLL));
            v205 = v195[4];
            v206 = v195[5];
            v208 = v195[6];
            v207 = v195[7];
            v209 = vmlaq_f32(vmulq_f32(v202, v208), v192, v205);
            v210 = vaddq_f32(vmlaq_f32(vmulq_f32(*v179, v208), *v178, v205), vmlaq_f32(vmulq_f32(v200, v207), v197, v206));
            *v210.i8 = vadd_f32(*v210.i8, *&vextq_s8(v210, v210, 8uLL));
            *v210.i8 = vadd_f32(vzip1_s32(*v210.i8, *v203.i8), vzip2_s32(*v210.i8, *v203.i8));
            v211 = vaddq_f32(v209, vmlaq_f32(vmulq_f32(v201, v207), v193, v206));
            *v211.i8 = vadd_f32(*v211.i8, *&vextq_s8(v211, v211, 8uLL));
            *v211.i8 = vadd_f32(vzip1_s32(*v211.i8, *v204.i8), vzip2_s32(*v211.i8, *v204.i8));
            *a5 = *&v210.i32[1] + (v194 * (*v210.i32 - *&v210.i32[1]));
            *a6 = *&v211.i32[1] + (v194 * (*v211.i32 - *&v211.i32[1]));
            a5 += a10;
            a6 += a10;
            LODWORD(v195) = v173 + v174;
            v173 = (v173 + v174) & 0x7FFFFFFF;
            v175 = v180 + (v195 >> 31);
            if (++v181 == a8)
            {
              goto LABEL_134;
            }
          }

          v72 = 1919747730;
          goto LABEL_23;
        }

        v28 = 0;
LABEL_134:
        v487 = a7 - v28;
        if (a7 > v28)
        {
          if (v175 < v487)
          {
            v487 = v175;
          }

          if (v487 >= 1)
          {
            v488 = 0;
            v489 = v487;
            do
            {
              v490 = &a3[v488];
              v491 = &a4[v488];
              v492 = vld1q_dup_f32(v490);
              v493 = vld1q_dup_f32(v491);
              v494 = v178[1];
              v495 = vmlaq_f32(v492, v494, v176[1]);
              v496 = vmlaq_f32(vmlaq_f32(v492, *v178, *v176), *v179, v176[2]);
              v497 = vmlaq_f32(v495, v179[1], v176[3]);
              *v179 = *v178;
              v179[1] = v494;
              *v178 = v496;
              v178[1] = v497;
              v498 = v178[2];
              v499 = v178[3];
              v500 = vmlaq_f32(v493, v499, v176[1]);
              v501 = vmlaq_f32(vmlaq_f32(v493, v498, *v176), v179[2], v176[2]);
              v502 = vmlaq_f32(v500, v179[3], v176[3]);
              v179[2] = v498;
              v179[3] = v499;
              v178[2] = v501;
              v178[3] = v502;
              v488 += a9;
              --v489;
            }

            while (v489);
          }

LABEL_175:
          v175 -= v487;
          v28 += v487;
        }
      }

      else
      {
        if (a8 >= 1)
        {
          v373 = 0;
          v28 = 0;
          v374 = 4 * a9;
          while (1)
          {
            v28 += v175;
            if (v28 > *(a2 + 64))
            {
              break;
            }

            if (v175 < 1)
            {
              v386 = v178[4];
              v387 = v178[5];
            }

            else
            {
              do
              {
                v375 = vld1q_dup_f32(a3);
                a3 = (a3 + v374);
                v376 = vld1q_dup_f32(a4);
                a4 = (a4 + v374);
                v377 = v178[1];
                v378 = vmlaq_f32(vmlaq_f32(v375, *v178, *v176), *v179, v176[4]);
                v379 = vmlaq_f32(vmlaq_f32(v375, v377, v176[1]), v179[1], v176[5]);
                *v179 = *v178;
                v179[1] = v377;
                *v178 = v378;
                v178[1] = v379;
                v380 = v178[2];
                v381 = v178[3];
                v382 = vmlaq_f32(vmlaq_f32(v376, v380, *v176), v179[2], v176[4]);
                v383 = vmlaq_f32(vmlaq_f32(v376, v381, v176[1]), v179[3], v176[5]);
                v179[2] = v380;
                v179[3] = v381;
                v178[2] = v382;
                v178[3] = v383;
                v384 = v178[4];
                v385 = v178[5];
                v386 = vmlaq_f32(vmlaq_f32(v375, v384, v176[2]), v179[4], v176[6]);
                v387 = vmlaq_f32(vmlaq_f32(v376, v385, v176[3]), v179[5], v176[7]);
                v179[4] = v384;
                v179[5] = v385;
                v178[4] = v386;
                v178[5] = v387;
                --v175;
              }

              while (v175);
            }

            v388 = *(a2 + 12) * (v173 & 0x7FFFFF);
            v389 = (v177 + 32 * ((v173 >> 21) & 0x3FC));
            v390 = v389[1];
            v391 = v178[1];
            v393 = v389[4];
            v392 = v389[5];
            v394 = v179[1];
            v395 = vmlaq_f32(vmulq_f32(v392, v394), v391, v390);
            v396 = v178[2];
            v397 = v178[3];
            v399 = v179[2];
            v398 = v179[3];
            v400 = vmlaq_f32(vmulq_f32(v392, v398), v397, v390);
            v402 = v179[4];
            v401 = v179[5];
            v403 = vmlaq_f32(vmulq_f32(v389[7], v401), v387, v389[3]);
            v404 = vmlaq_f32(vmulq_f32(v389[6], v402), v386, v389[2]);
            v405 = vaddq_f32(vmlaq_f32(vmulq_f32(v393, *v179), *v178, *v389), v395);
            *v405.i8 = vadd_f32(*v405.i8, *&vextq_s8(v405, v405, 8uLL));
            *v390.f32 = vadd_f32(*v404.i8, *&vextq_s8(v404, v404, 8uLL));
            v406 = vaddq_f32(vmlaq_f32(vmulq_f32(v393, v399), v396, *v389), v400);
            *v406.i8 = vadd_f32(*v406.i8, *&vextq_s8(v406, v406, 8uLL));
            *v393.f32 = vadd_f32(*v403.i8, *&vextq_s8(v403, v403, 8uLL));
            v407 = v389[8];
            v408 = v389[9];
            v410 = v389[12];
            v409 = v389[13];
            v411 = vmlaq_f32(vmulq_f32(v394, v409), v391, v408);
            v412 = vmlaq_f32(vmulq_f32(v398, v409), v397, v408);
            v413 = vmlaq_f32(vmulq_f32(v399, v410), v396, v407);
            v414 = vmlaq_f32(vmulq_f32(v401, v389[15]), v387, v389[11]);
            v415 = vmlaq_f32(vmulq_f32(v402, v389[14]), v386, v389[10]);
            v416 = vaddq_f32(vmlaq_f32(vmulq_f32(*v179, v410), *v178, v407), v411);
            *v416.i8 = vadd_f32(*v416.i8, *&vextq_s8(v416, v416, 8uLL));
            v417 = vadd_f32(*v415.i8, *&vextq_s8(v415, v415, 8uLL));
            *v416.i8 = vadd_f32(vadd_f32(vzip1_s32(*v416.i8, *v405.i8), vzip2_s32(*v416.i8, *v405.i8)), vadd_f32(vzip1_s32(v417, *v390.f32), vzip2_s32(v417, *v390.f32)));
            v418 = vaddq_f32(v413, v412);
            *v418.i8 = vadd_f32(*v418.i8, *&vextq_s8(v418, v418, 8uLL));
            *v405.i8 = vadd_f32(*v414.i8, *&vextq_s8(v414, v414, 8uLL));
            *v418.i8 = vadd_f32(vadd_f32(vzip1_s32(*v418.i8, *v406.i8), vzip2_s32(*v418.i8, *v406.i8)), vadd_f32(vzip1_s32(*v405.i8, *v393.f32), vzip2_s32(*v405.i8, *v393.f32)));
            *a5 = *&v416.i32[1] + (v388 * (*v416.i32 - *&v416.i32[1]));
            *a6 = *&v418.i32[1] + (v388 * (*v418.i32 - *&v418.i32[1]));
            a5 += a10;
            a6 += a10;
            LODWORD(v389) = v173 + v174;
            v173 = (v173 + v174) & 0x7FFFFFFF;
            v175 = v180 + (v389 >> 31);
            if (++v373 == a8)
            {
              goto LABEL_169;
            }
          }

          v72 = 1919747780;
          goto LABEL_23;
        }

        v28 = 0;
LABEL_169:
        v487 = a7 - v28;
        if (a7 > v28)
        {
          if (v175 < v487)
          {
            v487 = v175;
          }

          if (v487 >= 1)
          {
            v581 = 0;
            v582 = v487;
            do
            {
              v583 = &a3[v581];
              v584 = &a4[v581];
              v585 = vld1q_dup_f32(v583);
              v586 = v178[1];
              v587 = vld1q_dup_f32(v584);
              v588 = vmlaq_f32(vmlaq_f32(v585, *v178, *v176), *v179, v176[4]);
              v589 = vmlaq_f32(vmlaq_f32(v585, v586, v176[1]), v179[1], v176[5]);
              *v179 = *v178;
              v179[1] = v586;
              *v178 = v588;
              v178[1] = v589;
              v590 = v178[2];
              v591 = v178[3];
              v592 = vmlaq_f32(vmlaq_f32(v587, v590, *v176), v179[2], v176[4]);
              v593 = vmlaq_f32(vmlaq_f32(v587, v591, v176[1]), v179[3], v176[5]);
              v179[2] = v590;
              v179[3] = v591;
              v178[2] = v592;
              v178[3] = v593;
              v594 = v178[4];
              v595 = v178[5];
              v596 = vmlaq_f32(vmlaq_f32(v585, v594, v176[2]), v179[4], v176[6]);
              v597 = vmlaq_f32(vmlaq_f32(v587, v595, v176[3]), v179[5], v176[7]);
              v179[4] = v594;
              v179[5] = v595;
              v178[4] = v596;
              v178[5] = v597;
              v581 += a9;
              --v582;
            }

            while (v582);
          }

          goto LABEL_175;
        }
      }

      *(a2 + 18) = v173;
      *(a2 + 22) = v175;
      goto LABEL_166;
    }

    v72 = v599;
  }

  else
  {
    v72 = 1919747206;
  }

LABEL_23:
  *this = v72;
  *(this + 4) = 0;
LABEL_167:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}

void HALS_IOContextDescription::~HALS_IOContextDescription(HALS_IOContextDescription *this)
{
  HALS_IOContextDescription::~HALS_IOContextDescription(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59876C0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN25HALS_IOContextDescriptionD2Ev_block_invoke;
  v11[3] = &__block_descriptor_tmp_16866;
  v11[4] = this;
  v12 = v11;
  v13[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v13[1] = &v12;
  v15 = v13;
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = this + 32;
  *&v14 = _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_;
  *(&v14 + 1) = &v15;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(v3, v4, &v14);
  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 472) == 1)
  {
    v7 = *(this + 56);
    if (v7)
    {
      *(this + 57) = v7;
      operator delete(v7);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 54));
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 52, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 51, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 49));
  *&v14 = this + 296;
  std::vector<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest>::__destroy_vector::operator()[abi:ne200100](&v14);
  v8 = *(this + 35);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALB_IOBufferManager_Server::~HALB_IOBufferManager_Server((this + 152));
  for (i = 128; i != 80; i -= 24)
  {
    v10 = *(this + i);
    if (v10)
    {
      operator delete(v10);
    }
  }

  *&v14 = this + 80;
  std::vector<HALS_IOStackDescription>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v14 = this + 56;
  std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v14 = v5;
  std::vector<std::unique_ptr<HALS_IOEngineInfo>>::__destroy_vector::operator()[abi:ne200100](&v14);
}

uint64_t ___ZN25HALS_IOContextDescriptionD2Ev_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a2 + 88))
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*(*(a1 + 32) + 488));
    if (v3 && *(a2 + 940) == 1)
    {
      (*(**(a2 + 88) + 216))(*(a2 + 88), v3);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "HALS_IOContextDescription.cpp";
      v10 = 1024;
      v11 = 236;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::~HALS_IOContextDescription: IOContextDescription has outlived owning IOContext", &v8, 0x12u);
    }

    *(a2 + 940) = 0;
    HALS_ObjectMap::ReleaseObject(*(a2 + 88), v4);
    HALS_ObjectMap::ReleaseObject(v3, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE67D2C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(uint64_t result, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v5)
      {
        ++v6;
      }

      else
      {
        v6 = 0;
      }

      v10[0] = v4;
      v10[1] = v6;
      result = (v8)(&v8 + 8, v10);
      v4 += 8;
      v5 = 1;
      if (result)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4 == a2;
      }
    }

    while (!v7);
  }

  return result;
}

void std::vector<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;
        std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<HALS_IOStackDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 59;
      v7 = v4 - 59;
      do
      {
        (**v7)(v7);
        v6 -= 59;
        v8 = v7 == v2;
        v7 -= 59;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<HALS_IOEngineInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<HALS_IOEngineInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<HALS_IOEngineInfo>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

Float64 CalculateSafetyViolation_Write(HALS_IOClock *a1, unsigned int a2, const AudioTimeStamp *a3)
{
  if (a1)
  {
    v7 = 0;
    v8 = 0.0;
    HALS_IOClock::GetRaw0Time(a1, &v8, &v7);
    return CalculateSafetyViolation_Write(v8, v7, *(a1 + 5 * *(a1 + 48) + 26), a2, a3);
  }

  return result;
}

uint64_t HALS_IOContextDescription::GetDeviceIDFromEngineID(HALS_IOContextDescription *this)
{
  if (!this)
  {
    return 0;
  }

  v1 = HALS_ObjectMap::CopyObjectByObjectID(this);
  v3 = v1;
  if (v1 && (v4 = (*(*v1 + 336))(v1)) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v3, v2);
  return v5;
}

void HALS_IOContextDescription::HostedDSPDescription::~HostedDSPDescription(HALS_IOContextDescription::HostedDSPDescription *this)
{
  if (*(this + 176) == 1)
  {
    v2 = *(this + 19);
    if (v2)
    {
      *(this + 20) = v2;
      operator delete(v2);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 17));
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 15, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 14, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 12));
  v3 = this;
  std::vector<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStackDescription>,HALS_IOStackDescription*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v9[3] = v4;
    v9[4] = v5;
    v7 = a2;
    v8 = a2;
    do
    {
      *a4 = *v8;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v8 + 8);
      *(a4 + 24) = *(v8 + 24);
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v8 += 32;
      a4 += 32;
    }

    while (v8 != a3);
    do
    {
      v9[0] = (v7 + 8);
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](v9);
      v7 += 32;
    }

    while (v7 != a3);
  }
}

uint64_t std::__split_buffer<HALS_IOStackDescription>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<HALS_IOStreamInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x8AD8F2FBA93869)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*>(uint64_t result, uint64_t (***a2)(void), uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *v6 = &unk_1F59910A0;
      v7 = (result + v5);
      v8 = *(result + v5 + 8);
      v9 = *(result + v5 + 24);
      v10 = *(result + v5 + 40);
      *(v6 + 53) = *(result + v5 + 53);
      *(v6 + 40) = v10;
      *(v6 + 24) = v9;
      *(v6 + 8) = v8;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 72) = 0;
      *(v6 + 72) = *(result + v5 + 72);
      *(v6 + 88) = *(result + v5 + 88);
      v7[10] = 0;
      v7[11] = 0;
      v7[9] = 0;
      *(v6 + 96) = *(result + v5 + 96);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 112) = 0;
      *(v6 + 112) = *(result + v5 + 112);
      *(v6 + 128) = *(result + v5 + 128);
      v7[14] = 0;
      v7[15] = 0;
      v7[16] = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 136) = *(result + v5 + 136);
      *(v6 + 152) = *(result + v5 + 152);
      v7[17] = 0;
      v7[18] = 0;
      v7[19] = 0;
      *(v6 + 160) = *(result + v5 + 160);
      *(v6 + 168) = *(result + v5 + 168);
      v11 = (result + v5 + 176);
      v12 = *v11;
      *(a3 + v5 + 176) = *v11;
      v13 = a3 + v5 + 176;
      v14 = *(result + v5 + 184);
      *(v6 + 184) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v7[21] = v11;
        *v11 = 0;
        *(result + v5 + 184) = 0;
      }

      else
      {
        *(v6 + 168) = v13;
      }

      v15 = a3 + v5;
      v16 = result + v5;
      *(v15 + 192) = *(result + v5 + 192);
      *(v16 + 192) = 0;
      *(v16 + 200) = 0;
      *(v15 + 208) = *(result + v5 + 208);
      *(v16 + 208) = 0;
      *(v16 + 216) = 0;
      v17 = *(result + v5 + 224);
      *(v15 + 232) = *(result + v5 + 232);
      *(v15 + 224) = v17;
      *(a3 + v5 + 240) = 0;
      *(v15 + 264) = 0;
      if (*(result + v5 + 264) == 1)
      {
        *(a3 + v5 + 240) = 0;
        *(a3 + v5 + 248) = 0;
        *(a3 + v5 + 256) = 0;
        *(v15 + 240) = *(v16 + 240);
        *(v15 + 256) = *(v16 + 256);
        *(v16 + 240) = 0;
        *(v16 + 248) = 0;
        *(v16 + 256) = 0;
        *(v15 + 264) = 1;
      }

      *(v15 + 272) = *(v16 + 272);
      *(v15 + 280) = 0;
      *(v15 + 288) = 0;
      *(v15 + 296) = 0;
      *(v15 + 280) = *(v16 + 280);
      *(v15 + 296) = *(v16 + 296);
      *(v16 + 280) = 0;
      *(v16 + 288) = 0;
      *(v16 + 296) = 0;
      *(v15 + 304) = 0;
      *(v15 + 312) = 0;
      *(v15 + 320) = 0;
      *(v15 + 304) = *(v16 + 304);
      *(v15 + 320) = *(v16 + 320);
      *(v16 + 304) = 0;
      *(v16 + 312) = 0;
      *(v16 + 320) = 0;
      v18 = *(v16 + 328);
      v19 = *(v16 + 360);
      *(v15 + 344) = *(v16 + 344);
      *(v15 + 360) = v19;
      *(v15 + 328) = v18;
      *(v15 + 376) = *(v16 + 376);
      *(v15 + 384) = *(v16 + 384);
      *(v16 + 384) = 0;
      *(v16 + 392) = 0;
      *(v15 + 400) = *(v16 + 400);
      *(v16 + 400) = 0;
      *(v16 + 408) = 0;
      v20 = *(v16 + 416);
      v21 = *(v16 + 432);
      v22 = *(v16 + 448);
      *(v15 + 464) = *(v16 + 464);
      *(v15 + 432) = v21;
      *(v15 + 448) = v22;
      *(v15 + 416) = v20;
      v5 += 472;
    }

    while ((result + v5) != a2);
    v23 = result;
    do
    {
      result = (**v4)(v4);
      v4 += 59;
      v23 += 472;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<HALS_IOStreamInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 472;
    (**(i - 472))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<HALS_IOStreamGroup>::__init_with_size[abi:ne200100]<HALS_IOStreamGroup*,HALS_IOStreamGroup*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HALS_IOStreamGroup>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE67DE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<HALS_IOStreamGroup>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<HALS_IOStreamGroup>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamGroup>,HALS_IOStreamGroup*,HALS_IOStreamGroup*,HALS_IOStreamGroup*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(v4, *v6, v6[1], 0xCBEEA4E1A08AD8F3 * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HALS_IOStreamInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE67E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_IOStreamGroup>,HALS_IOStreamGroup*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<HALS_IOStreamInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x8AD8F2FBA93869)
  {
    std::allocator<HALS_IOStreamInfo>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

HALS_IOStreamInfo *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*,HALS_IOStreamInfo*,HALS_IOStreamInfo*>(HALS_IOStreamInfo *a1, HALS_IOStreamInfo *a2, HALS_IOStreamInfo *this)
{
  if (a1 == a2)
  {
    return this;
  }

  v4 = a1;
  v5 = 0;
  v6 = this - 472;
  v7 = this;
  do
  {
    HALS_IOStreamInfo::HALS_IOStreamInfo(v7, v4);
    v4 = (v4 + 472);
    v7 = (v7 + 472);
    v5 -= 472;
    v6 += 472;
  }

  while (v4 != a2);
  return v7;
}

void std::allocator<HALS_IOStreamGroup>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<HALS_IOStreamGroup *,HALS_IOStreamGroup *,HALS_IOStreamGroup *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (a3 != v4)
      {
        v7 = *v4;
        v6 = v4[1];
        v8 = v6 - *v4;
        v9 = a3[2];
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            v11 = a3[1];
            v12 = *a3;
            if (v11 != v10)
            {
              v13 = v11 - 472;
              v14 = (v11 - 472);
              do
              {
                (**v14)(v14);
                v13 -= 472;
                v15 = v14 == v10;
                v14 -= 59;
              }

              while (!v15);
              v12 = *a3;
            }

            a3[1] = v10;
            operator delete(v12);
            v9 = 0;
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          v16 = 0xCBEEA4E1A08AD8F3 * (v8 >> 3);
          if (v16 <= 0x8AD8F2FBA93868)
          {
            v17 = 0xCBEEA4E1A08AD8F3 * (v9 >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x456C797DD49C34)
            {
              v18 = 0x8AD8F2FBA93868;
            }

            else
            {
              v18 = v16;
            }

            std::vector<HALS_IOStreamInfo>::__vallocate[abi:ne200100](a3, v18);
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v19 = a3[1];
        v20 = v19 - v10;
        if (v19 - v10 >= v8)
        {
          if (v7 != v6)
          {
            do
            {
              HALS_IOStreamInfo::operator=(v10, v7);
              v7 += 472;
              v10 += 472;
            }

            while (v7 != v6);
            v19 = a3[1];
          }

          if (v19 != v10)
          {
            v22 = v19 - 472;
            v23 = (v19 - 472);
            do
            {
              (**v23)(v23);
              v22 -= 472;
              v15 = v23 == v10;
              v23 -= 59;
            }

            while (!v15);
          }

          a3[1] = v10;
        }

        else
        {
          if (v19 == v10)
          {
            v21 = *v4;
          }

          else
          {
            v21 = &v20[v7];
            do
            {
              HALS_IOStreamInfo::operator=(v10, v7);
              v7 += 472;
              v10 += 472;
              v20 -= 472;
            }

            while (v20);
            v19 = a3[1];
          }

          a3[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*,HALS_IOStreamInfo*,HALS_IOStreamInfo*>(v21, v6, v19);
        }
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t HALS_IOStreamInfo::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  if (a1 == a2)
  {
    *(a1 + 96) = *(a2 + 96);
    v15 = *(a2 + 160);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 160) = v15;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    v7 = *(a1 + 112);
    *(a1 + 96) = *(a2 + 96);
    v8 = *(a2 + 112);
    v9 = *(a2 + 120);
    v10 = v9 - v8;
    v11 = *(a1 + 128);
    if (v11 - v7 < (v9 - v8))
    {
      v12 = v10 >> 7;
      if (v7)
      {
        *(a1 + 120) = v7;
        operator delete(v7);
        v11 = 0;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
      }

      if (!(v12 >> 57))
      {
        v13 = v11 >> 6;
        if (v11 >> 6 <= v12)
        {
          v13 = v10 >> 7;
        }

        if (v11 >= 0x7FFFFFFFFFFFFF80)
        {
          v14 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        std::vector<HALS_IODSPInfo::EngineStreamInfo>::__vallocate[abi:ne200100](a1 + 112, v14);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = *(a1 + 120);
    v17 = v16 - v7;
    if (v16 - v7 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v7, *(a2 + 112), v9 - v8);
      }

      v20 = &v7[v10];
    }

    else
    {
      if (v16 != v7)
      {
        memmove(v7, *(a2 + 112), v16 - v7);
        v16 = *(a1 + 120);
      }

      v18 = (v8 + v17);
      v19 = v9 - (v8 + v17);
      if (v19)
      {
        memmove(v16, v18, v19);
      }

      v20 = &v16[v19];
    }

    *(a1 + 120) = v20;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
    v21 = *(a2 + 160);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 160) = v21;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(a1 + 168, *(a2 + 168), (a2 + 176));
  }

  v23 = *(a2 + 192);
  v22 = *(a2 + 200);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 200);
  *(a1 + 192) = v23;
  *(a1 + 200) = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v26 = *(a2 + 208);
  v25 = *(a2 + 216);
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(a1 + 216);
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v28;
  std::__optional_storage_base<CA::ChannelLayout,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<CA::ChannelLayout,false> const&>(a1 + 240, a2 + 240);
  *(a1 + 272) = *(a2 + 272);
  if (a1 != a2)
  {
    std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 280), *(a2 + 280), *(a2 + 288), *(a2 + 288) - *(a2 + 280));
    std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 304), *(a2 + 304), *(a2 + 312), *(a2 + 312) - *(a2 + 304));
  }

  v29 = *(a2 + 328);
  v30 = *(a2 + 344);
  *(a1 + 353) = *(a2 + 353);
  *(a1 + 328) = v29;
  *(a1 + 344) = v30;
  v31 = *(a2 + 376);
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 376) = v31;
  v33 = *(a2 + 384);
  v32 = *(a2 + 392);
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v34 = *(a1 + 392);
  *(a1 + 384) = v33;
  *(a1 + 392) = v32;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v36 = *(a2 + 400);
  v35 = *(a2 + 408);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  v37 = *(a1 + 408);
  *(a1 + 400) = v36;
  *(a1 + 408) = v35;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(a2 + 416);
  v39 = *(a2 + 432);
  v40 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 432) = v39;
  *(a1 + 448) = v40;
  *(a1 + 416) = v38;
  return a1;
}

void std::__optional_storage_base<CA::ChannelLayout,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<CA::ChannelLayout,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2];
      v5 = *a2;

      std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }
}

void *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void HALS_IOContextDescription::SetFromCFRepresentation_ClearAllState(HALS_IOContextDescription *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 7);
  v2 = *(this + 8);
  if (v2 != v3)
  {
    v4 = v2 - 59;
    v5 = v2 - 59;
    do
    {
      (**v5)(v5);
      v4 -= 59;
      v6 = v5 == v3;
      v5 -= 59;
    }

    while (!v6);
  }

  *(this + 8) = v3;
  v8 = *(this + 10);
  v7 = *(this + 11);
  if (v7 != v8)
  {
    do
    {
      v9 = v7 - 32;
      *v17 = v7 - 24;
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](v17);
      v7 = v9;
    }

    while (v9 != v8);
  }

  *(this + 11) = v8;
  *(this + 3) = 0;
  v11 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "HALS_IOContextDescription.cpp";
    v18 = 1024;
    v19 = 491;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetFromCFRepresentation: IOContextDescription has outlived owning IOContext", v17, 0x12u);
  }

  v12 = *(this + 4);
  v13 = *(this + 5);
  while (v12 != v13)
  {
    std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((*v12 + 800));
    std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((*v12 + 776));
    v14 = *v12;
    if (v11)
    {
      v15 = *(v14 + 88);
      if (v15)
      {
        if (*(v14 + 940) == 1)
        {
          (*(*v15 + 216))(v15, v11);
          v14 = *v12;
        }
      }
    }

    *(v14 + 940) = 0;
    *(v14 + 824) = 0;
    ++v12;
  }

  *(this + 58) = 0;
  HALS_ObjectMap::ReleaseObject(v11, v10);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE67EB58(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContextDescription::SetFromCFRepresentation_FindMaster(HALS_IOContextDescription *this, CFTypeRef cf)
{
  CFRetain(cf);
  v13 = &unk_1F5991008;
  v14 = cf;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v11, cf, @"clock device uid");
  if (v12)
  {
    EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v12);
    *(this + 3) = EngineInfo;
    if (EngineInfo)
    {
      goto LABEL_8;
    }
  }

  else if (*(this + 3))
  {
    goto LABEL_8;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v9, v14, @"master uid");
  if (v10)
  {
    *(this + 3) = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v10);
  }

  OS::CF::UntypedObject::~UntypedObject(v9);
LABEL_8:
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v9, v14, @"taps");
  if (!*(this + 3) && v10 && OS::CF::ArrayBase<__CFArray const*>::GetSize(v10))
  {
    OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v7, v9, 0);
    if (theDict)
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v5, theDict, @"uid");
      *(this + 3) = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v6);
      OS::CF::UntypedObject::~UntypedObject(&v5);
    }

    OS::CF::UntypedObject::~UntypedObject(v7);
  }

  OS::CF::UntypedObject::~UntypedObject(v9);
  OS::CF::UntypedObject::~UntypedObject(v11);
  OS::CF::UntypedObject::~UntypedObject(&v13);
}

void sub_1DE67ECCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  OS::CF::UntypedObject::~UntypedObject(&a9);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(&a15);
  OS::CF::UntypedObject::~UntypedObject((v15 - 32));
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation_ProcessInputStreams(HALS_IOContextDescription *this, const __CFDictionary *cf)
{
  v3 = cf;
  v238 = *MEMORY[0x1E69E9840];
  CFRetain(cf);
  v201 = &unk_1F5991008;
  v202 = v3;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v199, v3, @"grid-in");
  v178 = this;
  if (!v200 || !*(this + 50))
  {
    OS::CF::UntypedObject::~UntypedObject(v199);
    OS::CF::UntypedObject::~UntypedObject(&v201);
LABEL_220:
    CFRetain(v3);
    v187[0] = &unk_1F5991008;
    v187[1] = v3;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v179, v3, @"grid-in");
    v122 = v179[1];
    if (v179[1])
    {
      v123 = 0;
      while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v122) > v123)
      {
        v124 = v123;
        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&__dst, v179, v123);
        if (*(&__dst + 1))
        {
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v197, *(&__dst + 1), @"uid");
          EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v198);
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, *(&__dst + 1), @"index");
          v126 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
          OS::CF::UntypedObject::~UntypedObject(buf);
          if (EngineInfo)
          {
            HALS_IOContextDescription::SetFromCFRepresentation_UpdateEngineInfo(1, *(&__dst + 1), EngineInfo, v127);
            v129 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(v187[1], v128);
            v130 = v129;
            if ((v129 & 0x100000000) != 0)
            {
              LODWORD(v2) = v129 >> 8;
              v131 = v129;
            }

            else
            {
              v131 = 0;
            }

            v132 = *(v178 + 122);
            v133 = *(EngineInfo + 11);
            if (v133)
            {
              v134 = (*(*v133 + 584))(*(EngineInfo + 11));
              v135 = (*(*v133 + 416))(v133, 1);
              if (v135 <= v126)
              {
                if (!(((v130 & 0x100000000) == 0) | v134 & 1))
                {
                  v136 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v136 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v135);
                  }

                  v138 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v137 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v137)
                  {
                    atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
                    v139 = *v138;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v137);
                  }

                  else
                  {
                    v139 = *v138;
                  }

                  v135 = os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT);
                  if (v135)
                  {
                    v144 = *(v178 + 4);
                    *buf = 136316163;
                    *&buf[4] = "HALS_IOContextDescription.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 898;
                    v214 = 1024;
                    v215 = v132;
                    v216 = 1024;
                    *v217 = v144;
                    *&v217[4] = 2081;
                    *&v217[6] = "Isolated Audio Use Case specified, but this device does not support it.";
                    _os_log_impl(&dword_1DE1F9000, v139, OS_LOG_TYPE_DEFAULT, "%32s:%-5d (Context ID: %u) (Device ID: %u) %{private}s", buf, 0x28u);
                  }
                }

                v145 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v145 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v135);
                }

                v147 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v146 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v146)
                {
                  atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
                  v148 = *v147;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v146);
                }

                else
                {
                  v148 = *v147;
                }

                if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                {
                  if ((v130 & 0x100000000) != 0)
                  {
                    v150 = v131 | (v2 << 8);
                  }

                  else
                  {
                    v150 = 0;
                  }

                  caulk::string_from_4cc(v205, v150);
                  v151 = v205;
                  if (v205[23] < 0)
                  {
                    v151 = *v205;
                  }

                  v152 = *(v178 + 4);
                  *buf = 136316419;
                  *&buf[4] = "HALS_IOContextDescription.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 904;
                  v214 = 1024;
                  v215 = v132;
                  v216 = 2081;
                  *v217 = v151;
                  *&v217[8] = 1024;
                  *&v217[10] = v126;
                  v218 = 1024;
                  v219 = v152;
                  _os_log_error_impl(&dword_1DE1F9000, v148, OS_LOG_TYPE_ERROR, "%32s:%-5d (Context ID: %u) (%{private}s) Description specifies an out of range stream index (%u) for this device / engine (Device ID: %u)", buf, 0x2Eu);
                  if ((v205[23] & 0x80000000) != 0)
                  {
                    operator delete(*v205);
                  }
                }
              }
            }

            else
            {
              v140 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v140 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v129);
              }

              v142 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v141 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v141)
              {
                atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
                v143 = *v142;
                std::__shared_weak_count::__release_shared[abi:ne200100](v141);
              }

              else
              {
                v143 = *v142;
              }

              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "HALS_IOContextDescription.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 909;
                v214 = 1024;
                v215 = v132;
                _os_log_impl(&dword_1DE1F9000, v143, OS_LOG_TYPE_DEFAULT, "%32s:%-5d (Context ID: %u) Description specifies a stream index for a device / engine that is currently not present.", buf, 0x18u);
              }
            }

            HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
            v237 = EngineInfo;
            if ((v130 & 0x100000000) != 0 && (*(**(EngineInfo + 11) + 584))(*(EngineInfo + 11)))
            {
              v232 = v130;
              v233 = BYTE4(v130);
            }

            buf[8] = 1;
            *&buf[12] = v126;
            v149 = *(EngineInfo + 11);
            this = v178;
            if (v149)
            {
              *&v206 = 0;
              memset(v205, 0, sizeof(v205));
              (*(*v149 + 448))(v149, 1, v126, v205);
              v234 = *v205;
              v235 = *&v205[16];
              v236 = v206;
              if (v221)
              {
                v228 = *v205;
                v229 = *&v205[16];
                v230 = v206;
                if ((v231 & 1) == 0)
                {
                  v231 = 1;
                }
              }

              v220 = (*(**(EngineInfo + 11) + 440))(*(EngineInfo + 11), buf[8], *&buf[12]);
            }

            HALS_IOStreamGroup::push_back((v178 + 56), buf);
            HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
          }

          OS::CF::UntypedObject::~UntypedObject(&v197);
        }

        OS::CF::UntypedObject::~UntypedObject(&__dst);
        v123 = v124 + 1;
        v122 = v179[1];
      }
    }

    OS::CF::UntypedObject::~UntypedObject(v179);
    OS::CF::UntypedObject::~UntypedObject(v187);
    goto LABEL_270;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v202, @"device id");
  v172 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
  OS::CF::UntypedObject::~UntypedObject(buf);
  v177 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 123));
  v171 = v3;
  v175 = (this + 384);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v197, this + 48);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  while (1)
  {
    Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v200);
    if (Size <= v7)
    {
      break;
    }

    v2 = v6;
    v10 = v7;
    OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(buf, v199, v7);
    if (*&buf[8])
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v187, *&buf[8], @"uid");
      v11 = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(v178, v187[1]);
      *v205 = v11;
      if (v11)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v179, *&buf[8], @"index");
        v12 = OS::CF::Number::GetValue<unsigned int>(v179[1], 0);
        *&v205[8] = v12;
        OS::CF::UntypedObject::~UntypedObject(v179);
        if (v12 < (*(**(v11 + 11) + 416))())
        {
          *&v205[12] = 3;
          std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v193, &v197);
          DeviceFromEngine = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v11);
          IsHostingInputDSP = HALS_IOContextDescription_HostedDSP::IsHostingInputDSP(v193, DeviceFromEngine, v177);
          std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v193[1]);
          if (IsHostingInputDSP)
          {
            if ((v8 & 1) == 0)
            {
              *&v205[12] = 0;
            }

            v15 = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v11);
            if (v15)
            {
              v16 = *(v15 + 4);
            }

            else
            {
              v16 = 0;
            }

            v17 = v5 - v2;
            v18 = (v5 - v2) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (-v2 >> 1 > v19)
            {
              v19 = -v2 >> 1;
            }

            if (-v2 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v20);
            }

            v21 = (4 * v18);
            *v21 = v16;
            v5 = v21 + 1;
            memcpy(0, v2, v17);
            v8 = 1;
            v2 = 0;
          }

          if (((*(**(v11 + 11) + 584))(*(v11 + 11)) & *(v178 + 380)) == 1)
          {
            if ((v8 & 1) == 0)
            {
              *&v205[12] = 0;
            }

            v22 = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v11);
            if (v22)
            {
              v23 = *(v22 + 4);
            }

            else
            {
              v23 = 0;
            }

            v24 = v5 - v2;
            v25 = (v5 - v2) >> 2;
            v26 = v25 + 1;
            if ((v25 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (-v2 >> 1 > v26)
            {
              v26 = -v2 >> 1;
            }

            if (-v2 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v27 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v27);
            }

            v28 = (4 * v25);
            *v28 = v23;
            v5 = v28 + 1;
            memcpy(0, v2, v24);
            v8 = 1;
            v2 = 0;
          }

          std::vector<HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo>::push_back[abi:ne200100](&v194, v205);
        }
      }

      OS::CF::UntypedObject::~UntypedObject(v187);
    }

    OS::CF::UntypedObject::~UntypedObject(buf);
    v7 = v10 + 1;
    v6 = v2;
  }

  if (v194 == v195)
  {
    v29 = 0;
    this = v178;
    goto LABEL_217;
  }

  if (v8)
  {
    this = v178;
    goto LABEL_94;
  }

  v30 = HALS_ObjectMap::CopyObjectByObjectID(v172);
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v192, &v197);
  this = v178;
  v31 = HALS_IOContextDescription_HostedDSP::IsHostingInputDSP(v192, v30, v177);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v192[1]);
  if ((v31 & 1) == 0)
  {
    v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v42 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v32);
    }

    v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      v45 = *v44;
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    else
    {
      v45 = *v44;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v161 = 0;
      v162 = 0;
      v163 = 47;
      do
      {
        v164 = &aLibraryCachesC_234[v161];
        if (v163 == 47)
        {
          v162 = &aLibraryCachesC_234[v161];
        }

        v163 = v164[1];
        if (!v164[1])
        {
          break;
        }

        v36 = v161++ >= 0xFFF;
      }

      while (!v36);
      if (v162)
      {
        v165 = v162 + 1;
      }

      else
      {
        v165 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
      }

      *buf = 136315394;
      *&buf[4] = v165;
      *&buf[12] = 1024;
      *&buf[14] = 212;
      _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] During context configuration, none of the associated devices have this DSP type enabled for the client.", buf, 0x12u);
    }

    goto LABEL_69;
  }

  v33 = *(v178 + 49);
  if (v33)
  {
    v34 = (v178 + 392);
    do
    {
      v35 = v33[7];
      v36 = v35 >= 8;
      v37 = v35 < 8;
      if (v36)
      {
        v34 = v33;
      }

      v33 = *&v33[2 * v37];
    }

    while (v33);
    if (v34 != (v178 + 392) && v34[7] <= 8u)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v32);
      }

      v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        v41 = *v40;
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      else
      {
        v41 = *v40;
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v166 = 0;
        v167 = 0;
        v168 = 47;
        do
        {
          v169 = &aLibraryCachesC_234[v166];
          if (v168 == 47)
          {
            v167 = &aLibraryCachesC_234[v166];
          }

          v168 = v169[1];
          if (!v169[1])
          {
            break;
          }

          v36 = v166++ >= 0xFFF;
        }

        while (!v36);
        if (v167)
        {
          v170 = v167 + 1;
        }

        else
        {
          v170 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
        }

        *buf = 136315394;
        *&buf[4] = v170;
        *&buf[12] = 1024;
        *&buf[14] = 221;
        _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp][offloads] DSP Offloading must be set/valid in at least one subdevice to be used.", buf, 0x12u);
      }

      std::__tree<DSP_Host_Types::AudioProcessingType>::__erase_unique<DSP_Host_Types::AudioProcessingType>(v175, 8u);
      v160 = *(v178 + 51);
      *(v178 + 51) = 0;
      if (v160)
      {
        std::default_delete<DSP_Host_OffloadDictionary>::operator()[abi:ne200100](v160);
      }

LABEL_69:
      HALS_ObjectMap::ReleaseObject(v30, v50);
      v29 = 0;
      goto LABEL_217;
    }
  }

  v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v46 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v32);
  }

  v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    v49 = *v48;
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  else
  {
    v49 = *v48;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 0;
    v52 = 0;
    v53 = 47;
    do
    {
      v54 = &aLibraryCachesC_234[v51];
      if (v53 == 47)
      {
        v52 = &aLibraryCachesC_234[v51];
      }

      v53 = v54[1];
      if (!v54[1])
      {
        break;
      }

      v36 = v51++ >= 0xFFF;
    }

    while (!v36);
    if (v52)
    {
      v55 = v52 + 1;
    }

    else
    {
      v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
    }

    *buf = 136315394;
    *&buf[4] = v55;
    *&buf[12] = 1024;
    *&buf[14] = 226;
    _os_log_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] DSP is set on the description device (vs an underlying device) and is applied only to the first input stream.", buf, 0x12u);
  }

  *(v194 + 3) = 0;
  if (v30)
  {
    v56 = *(v30 + 4);
  }

  else
  {
    v56 = 0;
  }

  v57 = v5 - v6;
  v58 = (v5 - v6) >> 2;
  v59 = v58 + 1;
  if ((v58 + 1) >> 62)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (-v6 >> 1 > v59)
  {
    v59 = -v6 >> 1;
  }

  if (-v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v60 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v60 = v59;
  }

  if (v60)
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v60);
  }

  v61 = (4 * v58);
  *v61 = v56;
  v5 = v61 + 1;
  memcpy(0, v6, v57);
  v6 = 0;
  HALS_ObjectMap::ReleaseObject(v30, v62);
LABEL_94:
  if (v5 - v6 >= 5)
  {
    v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v63 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(Size);
    }

    v65 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v64 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      v66 = *v65;
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    else
    {
      v66 = *v65;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v154 = 0;
      v155 = 0;
      v156 = 47;
      do
      {
        v157 = &aLibraryCachesC_234[v154];
        if (v156 == 47)
        {
          v155 = &aLibraryCachesC_234[v154];
        }

        v156 = v157[1];
        if (!v157[1])
        {
          break;
        }

        v36 = v154++ >= 0xFFF;
      }

      while (!v36);
      if (v155)
      {
        v158 = v155 + 1;
      }

      else
      {
        v158 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
      }

      v159 = *v6;
      *buf = 136315650;
      *&buf[4] = v158;
      *&buf[12] = 1024;
      *&buf[14] = 235;
      v214 = 1024;
      v215 = v159;
      _os_log_error_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] UNSUPPORTED: Multiple devices hosting DSP. Only (Device ID: %d) will run DSP.", buf, 0x18u);
    }
  }

  v67 = *(this + 37);
  for (i = *(this + 38); v67 != i; v67 += 16)
  {
    if (*v67)
    {
      *(v67 + 4) = 0;
      v69 = *(v67 + 8);
      if (!v69)
      {
        continue;
      }

      *buf = 0;
      *&buf[8] = 0x300000000;
      v70 = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(v178, v69);
      *buf = v70;
      v71 = HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo::getDeviceFromEngine(v70);
      v72 = v71;
      if (!v71)
      {
        continue;
      }

      v73 = HALS_IODevice::GetNumberStreams(v71, 1) ? v72 : 0;
      ReferenceStreamIndex = HALS_Device::GetReferenceStreamIndex(v73);
      v75 = ReferenceStreamIndex;
      if (!HIDWORD(ReferenceStreamIndex) || (*(**(v70 + 88) + 416))(*(v70 + 88), 1) <= ReferenceStreamIndex)
      {
        continue;
      }

      *&buf[12] = 2;
      *&buf[8] = v75;
      *(v70 + 846) = 1;
      v76 = v194;
      if (v194 != v195)
      {
        while (*v76 != v70 || v76[2] != v75)
        {
          v76 += 4;
          if (v76 == v195)
          {
            goto LABEL_117;
          }
        }
      }

      if (v76 == v195)
      {
LABEL_117:
        *&buf[12] = 1;
        std::vector<HALS_IOContextDescription_HostedDSP::LocalEngineStreamInfo>::push_back[abi:ne200100](&v194, buf);
      }

      else
      {
        v76[3] = 2;
      }
    }

    *(v67 + 4) = 1;
  }

  HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
  v237 = 0;
  buf[8] = 1;
  *&buf[12] = 0;
  v221 = 1;
  v232 = *(v178 + 94);
  v233 = *(v178 + 380);
  v2 = v194;
  v77 = v195;
  if (v194 != v195)
  {
    v78 = 0;
    v79 = 0;
    v80 = (v178 + 376);
    do
    {
      if (!*v2)
      {
        goto LABEL_152;
      }

      v81 = *(*v2 + 88);
      if (!v81)
      {
        goto LABEL_152;
      }

      v82 = (*(*v81 + 336))(v81);
      if (!v82)
      {
        goto LABEL_152;
      }

      v83 = *(v82 + 16);
      v84 = *(v2 + 8);
      v187[0] = *v2;
      LODWORD(v187[1]) = v83;
      *&v188 = 0;
      DWORD2(v188) = 0;
      *&v189 = 0;
      DWORD2(v189) = 0;
      *v190 = 0;
      memset(&v190[8], 0, 40);
      *v191 = v84;
      v191[28] = 0;
      memset(&v191[4], 0, 21);
      if ((*(**(*v2 + 88) + 584))())
      {
        if (v191[28] == *(v178 + 380))
        {
          if (v191[28])
          {
            *&v191[24] = *v80;
          }
        }

        else if (v191[28])
        {
          v191[28] = 0;
        }

        else
        {
          *&v191[24] = *v80;
          v191[28] = 1;
        }
      }

      *&v191[4] = *(v2 + 12);
      (*(**(*v2 + 88) + 448))(*(*v2 + 88), 1, *(v2 + 8), &v190[8]);
      v85 = *(v2 + 12);
      if (v85)
      {
        if (v85 >= 3)
        {
          goto LABEL_149;
        }

        if ((v78 & 1) == 0)
        {
          *__src = *&v190[16];
          *__p = *&v190[32];
          v210 = *v191;
          *&v211[0].__begin_ = *&v191[16];
          *v205 = *v187;
          *&v205[16] = v188;
          v206 = v189;
          v207 = *v190;
          HALS_IODSPInfo::AddStream(v222, v205);
          v78 = 0;
          goto LABEL_146;
        }
      }

      else
      {
        if (v225 != v175)
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(v225, *v175, v178 + 49);
        }

        v225[14] = *v80;
        v226 = *(v178 + 380);
        v227 = v172;
        if (*(v178 + 51))
        {
          DSP_Host_OffloadDictionary::deep_copy(v205);
        }

        if (*(v178 + 52))
        {
          DSP_Host_OffloadDictionary::deep_copy(v205);
        }

        if (*(v178 + 368) == 1)
        {
          HALS_IOContextDescription::UpdateDSPStreamFormat(v178, (v178 + 328));
        }

        v223 = *(v178 + 120);
        v224 = *(v178 + 484);
        v87 = *(v178 + 7);
        v86 = *(v178 + 8);
        HALS_IOStreamGroup::push_back((v178 + 56), buf);
        v79 = 0xCBEEA4E1A08AD8F3 * ((v86 - v87) >> 3);
        if (*(v2 + 12) >= 3u)
        {
          v78 = 1;
LABEL_149:
          if (*(v178 + 380) == 1)
          {
            *&v191[4] = 4;
          }

          HALS_IOStreamInfo::HALS_IOStreamInfo(v205);
          v212[36] = v187[0];
          v205[8] = 1;
          *&v205[12] = *v191;
          HIDWORD(v210) = 2;
          LODWORD(v179[0]) = 9;
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(v212, 9u);
          v183 = *&v190[16];
          v184 = *&v190[32];
          v185 = *v191;
          v186 = *&v191[16];
          *v179 = *v187;
          v180 = v188;
          v181 = v189;
          v182 = *v190;
          HALS_IODSPInfo::AddStream(v211, v179);
          HALS_IOStreamGroup::push_back((v178 + 56), v205);
          HALS_IOStreamInfo::~HALS_IOStreamInfo(v205);
          goto LABEL_152;
        }
      }

      v88 = *(v178 + 7) + 472 * v79;
      *__src = *&v190[16];
      *__p = *&v190[32];
      v210 = *v191;
      *&v211[0].__begin_ = *&v191[16];
      *v205 = *v187;
      *&v205[16] = v188;
      v206 = v189;
      v207 = *v190;
      HALS_IODSPInfo::AddStream((v88 + 112), v205);
      v78 = 1;
LABEL_146:
      if (*(v2 + 12) >= 2u)
      {
        goto LABEL_149;
      }

LABEL_152:
      v2 += 16;
    }

    while (v2 != v77);
  }

  this = v178;
  if (*(v178 + 7) != *(v178 + 8))
  {
    v89 = HALS_IOContextDescription::HostedDSPDescription::DebugString_DSPTypes(v179, v178 + 296);
    v90 = BYTE7(v180);
    if (SBYTE7(v180) < 0)
    {
      v90 = v179[1];
    }

    if (!v90)
    {
      LOBYTE(v187[0]) = 0;
      BYTE8(v188) = 0;
      if ((BYTE7(v180) & 0x80) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_193;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v205);
    if ((SBYTE7(v180) & 0x80u) == 0)
    {
      v91 = v179;
    }

    else
    {
      v91 = v179[0];
    }

    if ((SBYTE7(v180) & 0x80u) == 0)
    {
      v92 = BYTE7(v180);
    }

    else
    {
      v92 = v179[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], v91, v92);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], " ", 1);
    v93 = *(v178 + 7);
    v173 = *(v178 + 8);
    if (v93 != v173)
    {
      v94 = 0;
      do
      {
        v176 = v94;
        v95 = (*(*v178 + 16))(v178, 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], "[", 1);
        v96 = *(v93 + 112);
        v97 = *(v93 + 120);
        v174 = v93;
        if (v96 != v97)
        {
          if (v95)
          {
            v98 = "";
          }

          else
          {
            v98 = "~";
          }

          v99 = v95 ^ 1u;
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], "(", 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], v98, v99);
            v100 = MEMORY[0x1E12C1210](&v205[16], v96[2]);
            v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, " (#", 3);
            v102 = MEMORY[0x1E12C1210](v101, v96[24]);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, ") ", 2);
            v103 = v96[25] - 1;
            v104 = "PRIM";
            if (v103 <= 4)
            {
              v104 = off_1E8673710[v103];
            }

            v105 = strlen(v104);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], v104, v105);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], ")", 1);
            v96 += 32;
          }

          while (v96 != v97);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v205[16], "]", 1);
        v94 = v176 + 1;
        v93 = v174 + 472;
      }

      while ((v174 + 472) != v173);
    }

    if ((v211[0].__end_ & 0x10) != 0)
    {
      begin = v211[0].__begin_;
      if (v211[0].__begin_ < __src[1])
      {
        v211[0].__begin_ = __src[1];
        begin = __src[1];
      }

      v108 = __src[0];
    }

    else
    {
      if ((v211[0].__end_ & 8) == 0)
      {
        v106 = 0;
        HIBYTE(v204) = 0;
        goto LABEL_190;
      }

      v108 = *(&v206 + 1);
      begin = *(&v207 + 1);
    }

    v106 = begin - v108;
    if ((begin - v108) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v106 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v204) = begin - v108;
    if (v106)
    {
      memmove(&__dst, v108, v106);
    }

LABEL_190:
    *(&__dst + v106) = 0;
    *v187 = __dst;
    *&v188 = v204;
    BYTE8(v188) = 1;
    v2 = v205;
    *v205 = *MEMORY[0x1E69E54D8];
    v109 = *(MEMORY[0x1E69E54D8] + 72);
    *&v205[*(*v205 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    *&v205[16] = v109;
    *&v205[24] = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v210) < 0)
    {
      operator delete(__p[1]);
    }

    *&v205[24] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v206);
    std::iostream::~basic_iostream();
    v89 = MEMORY[0x1E12C15F0](&v211[0].__end_cap_);
    this = v178;
    if ((BYTE7(v180) & 0x80) == 0)
    {
      goto LABEL_194;
    }

LABEL_193:
    operator delete(v179[0]);
LABEL_194:
    if (BYTE8(v188))
    {
      v110 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v110 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v89);
      }

      v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v111 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v111)
      {
        atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        v113 = *v112;
        std::__shared_weak_count::__release_shared[abi:ne200100](v111);
      }

      else
      {
        v113 = *v112;
      }

      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v114 = 0;
        v115 = 0;
        v116 = 47;
        do
        {
          v117 = &aLibraryCachesC_234[v114];
          if (v116 == 47)
          {
            v115 = &aLibraryCachesC_234[v114];
          }

          v116 = v117[1];
          if (!v117[1])
          {
            break;
          }

          v36 = v114++ >= 0xFFF;
        }

        while (!v36);
        if (v115)
        {
          v118 = v115 + 1;
        }

        else
        {
          v118 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/DSP/HALS_IOContextDescription_HostedDSP.cpp";
        }

        v119 = *(this + 122);
        v120 = v187;
        if (SBYTE7(v188) < 0)
        {
          v120 = v187[0];
        }

        *v205 = 136316163;
        *&v205[4] = v118;
        *&v205[12] = 1024;
        *&v205[14] = 352;
        *&v205[18] = 1024;
        *&v205[20] = v119;
        *&v205[24] = 1024;
        *&v205[26] = v172;
        *&v205[30] = 2081;
        *&v206 = v120;
        _os_log_impl(&dword_1DE1F9000, v113, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][comp] (Context ID: %d)(Device ID: %d)%{private}s", v205, 0x28u);
      }
    }

    goto LABEL_213;
  }

  LOBYTE(v187[0]) = 0;
  BYTE8(v188) = 0;
LABEL_213:
  *&__dst = *(this + 3);
  v179[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ForceDSPToUseMasterEngineSampleRate(void)::$_0>;
  v179[1] = &__dst;
  *v205 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *&v205[8] = v179;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 7), *(this + 8), v205);
  if (BYTE8(v188) == 1 && SBYTE7(v188) < 0)
  {
    operator delete(v187[0]);
  }

  HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
  v29 = 1;
LABEL_217:
  if (v194)
  {
    operator delete(v194);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v198);
  HALS_ObjectMap::ReleaseObject(v177, v121);
  v3 = v171;
  OS::CF::UntypedObject::~UntypedObject(v199);
  OS::CF::UntypedObject::~UntypedObject(&v201);
  if ((v29 & 1) == 0)
  {
    goto LABEL_220;
  }

LABEL_270:
  v153 = *MEMORY[0x1E69E9840];
}

void sub_1DE68079C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, HALS_ObjectMap *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  HALS_ObjectMap::ReleaseObject(v70, a2);
  if (v71)
  {
    operator delete(v71);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a66);
  HALS_ObjectMap::ReleaseObject(a19, v73);
  OS::CF::UntypedObject::~UntypedObject(&a68);
  OS::CF::UntypedObject::~UntypedObject(&a70);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation_ProcessOutputStreams(HALS_IOContextDescription *this, CFTypeRef cf)
{
  v156[2] = *MEMORY[0x1E69E9840];
  CFRetain(cf);
  v138[1] = cf;
  v138[0] = &unk_1F5991008;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v136, cf, @"grid-out");
  Size = v137;
  if (v137)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v105 = *(this + 55);
    v102 = this + 424;
    v100 = (this + 328);
    v98 = (this + 80);
    v106 = this;
    while (1)
    {
      Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(Size);
      if (Size <= v7)
      {
        break;
      }

      v133 = 0;
      v135 = 0uLL;
      v134 = 0;
      v99 = v7;
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v131, v136, v7);
      if (v132)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v132, @"channels");
        v133 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
        OS::CF::UntypedObject::~UntypedObject(buf);
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v129, v132, @"stream groups");
        for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v130) > i; i = v103 + 1)
        {
          v103 = i;
          OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Array>(v127, v129, i);
          v9 = v128;
          if (v128)
          {
            v10 = 0;
            v124 = 0;
            v125 = 0;
            v126 = 0;
            while (1)
            {
              v11 = v5;
              if (OS::CF::ArrayBase<__CFArray const*>::GetSize(v9) <= v10)
              {
                break;
              }

              v12 = v10;
              OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(theDict, v127, v10);
              if (theDict[1])
              {
                OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v122, theDict[1], @"uid");
                EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v123);
                if (EngineInfo)
                {
                  HALS_IOContextDescription::SetFromCFRepresentation_UpdateEngineInfo(0, theDict[1], EngineInfo, v13);
                  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict[1], @"index");
                  v15 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
                  OS::CF::UntypedObject::~UntypedObject(buf);
                  if (v105)
                  {
                    v30 = v6 - v5;
                    v31 = (v6 - v5) >> 4;
                    v32 = v31 + 1;
                    if ((v31 + 1) >> 60)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    if (-v5 >> 3 > v32)
                    {
                      v32 = -v5 >> 3;
                    }

                    if (-v5 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v33 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v33 = v32;
                    }

                    if (v33)
                    {
                      if (!(v33 >> 60))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v34 = 16 * v31;
                    *v34 = EngineInfo;
                    *(v34 + 8) = v15;
                    v6 = 16 * v31 + 16;
                    memcpy(0, v5, v30);
                    v5 = 0;
                  }

                  else
                  {
                    HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
                    v156[0] = EngineInfo;
                    buf[8] = 0;
                    *&buf[12] = v15;
                    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v120, theDict[1], @"channel map");
                    v16 = v121;
                    if (v121)
                    {
                      v17 = 0;
                      v141 = 1;
                      while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v16) > v17)
                      {
                        v18 = v17;
                        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(&v115, v120, v17);
                        v19 = OS::CF::Number::GetValue<int>(*(&v115 + 1), 0xFFFFFFFFLL);
                        OS::CF::UntypedObject::~UntypedObject(&v115);
                        v20 = v143;
                        if (v143 >= v144)
                        {
                          v22 = __src;
                          v23 = v143 - __src;
                          v24 = (v143 - __src) >> 2;
                          v25 = v24 + 1;
                          if ((v24 + 1) >> 62)
                          {
                            std::vector<void *>::__throw_length_error[abi:ne200100]();
                          }

                          v26 = v144 - __src;
                          if ((v144 - __src) >> 1 > v25)
                          {
                            v25 = v26 >> 1;
                          }

                          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
                          {
                            v27 = 0x3FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v27 = v25;
                          }

                          if (v27)
                          {
                            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v27);
                          }

                          *(4 * v24) = v19;
                          v21 = 4 * v24 + 4;
                          memcpy(0, v22, v23);
                          v28 = __src;
                          __src = 0;
                          v143 = v21;
                          v144 = 0;
                          if (v28)
                          {
                            operator delete(v28);
                          }

                          v5 = v11;
                        }

                        else
                        {
                          *v143 = v19;
                          v21 = (v20 + 4);
                        }

                        v143 = v21;
                        v17 = v18 + 1;
                        v16 = v121;
                      }
                    }

                    v29 = *(EngineInfo + 11);
                    if (v29)
                    {
                      *&v117 = 0;
                      v115 = 0u;
                      v116 = 0u;
                      (*(*v29 + 448))(v29, buf[8], *&buf[12], &v115);
                      v153 = v115;
                      v154 = v116;
                      v155 = v117;
                      if (v146)
                      {
                        *&v149[88] = v115;
                        v150 = v116;
                        v151 = v117;
                        if ((v152 & 1) == 0)
                        {
                          v152 = 1;
                        }
                      }

                      v145 = (*(**(EngineInfo + 11) + 440))(*(EngineInfo + 11), buf[8], *&buf[12]);
                    }

                    HALS_IOStreamGroup::push_back(&v124, buf);
                    OS::CF::UntypedObject::~UntypedObject(v120);
                    HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
                  }
                }

                this = v106;
                OS::CF::UntypedObject::~UntypedObject(v122);
              }

              OS::CF::UntypedObject::~UntypedObject(theDict);
              v10 = v12 + 1;
              v9 = v128;
            }

            if (v105 && v5 != v6)
            {
              HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
              v156[0] = 0;
              buf[8] = 0;
              v35 = v5;
              *&buf[12] = 0;
              v146 = 1;
              do
              {
                v36 = *v35;
                v37 = *(*v35 + 88);
                if (v37)
                {
                  DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v37 + 16));
                  v36 = *v35;
                }

                else
                {
                  DeviceIDFromEngineID = 0;
                }

                v39 = v35[2];
                *&v115 = v36;
                DWORD2(v115) = DeviceIDFromEngineID;
                *&v116 = 0;
                DWORD2(v116) = 0;
                *&v117 = 0;
                DWORD2(v117) = 0;
                *v118 = 0;
                memset(&v118[8], 0, 40);
                *v119 = v39;
                v119[28] = 0;
                memset(&v119[4], 0, 21);
                v40 = v35[2];
                (*(**(*v35 + 88) + 448))();
                v111 = *&v118[16];
                v112 = *&v118[32];
                v113 = *v119;
                v114 = *&v119[16];
                *theDict = v115;
                v108 = v116;
                v109 = v117;
                v110 = *v118;
                HALS_IODSPInfo::AddStream(&v147, theDict);
                v35 += 4;
              }

              while (v35 != v6);
              if (v148 != v102)
              {
                std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(v148, *v102, this + 54);
              }

              std::__optional_storage_base<CA::ChannelLayout,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<CA::ChannelLayout,false> const&>(v149, this + 448);
              if (*(this + 368) == 1)
              {
                HALS_IOContextDescription::UpdateDSPStreamFormat(this, v100);
              }

              HALS_IOStreamGroup::push_back(&v124, buf);
              HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
            }

            if (v124 != v125)
            {
              v41 = v135;
              if (v135 >= *(&v135 + 1))
              {
                v43 = 0xAAAAAAAAAAAAAAABLL * ((v135 - v134) >> 3);
                v44 = v43 + 1;
                if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((*(&v135 + 1) - v134) >> 3) > v44)
                {
                  v44 = 0x5555555555555556 * ((*(&v135 + 1) - v134) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v135 + 1) - v134) >> 3) >= 0x555555555555555)
                {
                  v45 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v45 = v44;
                }

                v140 = &v134;
                if (v45)
                {
                  std::allocator<HALS_IOStreamGroup>::allocate_at_least[abi:ne200100](v45);
                }

                v46 = (8 * ((v135 - v134) >> 3));
                *buf = 0;
                *&buf[8] = v46;
                *&buf[16] = v46;
                *v46 = 0;
                v46[1] = 0;
                v46[2] = 0;
                std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(24 * v43, v124, v125, 0xCBEEA4E1A08AD8F3 * ((v125 - v124) >> 3));
                *&buf[16] += 24;
                v48 = v134;
                v47 = v135;
                v49 = *&buf[8] + v134 - v135;
                if (v134 != v135)
                {
                  v50 = (*&buf[8] + v134 - v135);
                  v51 = v134;
                  do
                  {
                    *v50 = 0;
                    v50[1] = 0;
                    v50[2] = 0;
                    *v50 = *v51;
                    v50[2] = *(v51 + 16);
                    *v51 = 0;
                    *(v51 + 8) = 0;
                    *(v51 + 16) = 0;
                    v51 += 24;
                    v50 += 3;
                  }

                  while (v51 != v47);
                  do
                  {
                    *&v115 = v48;
                    std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v115);
                    v48 += 24;
                  }

                  while (v48 != v47);
                }

                v52 = v134;
                v53 = *(&v135 + 1);
                v134 = v49;
                v101 = *&buf[16];
                v135 = *&buf[16];
                *&buf[16] = v52;
                *&buf[24] = v53;
                *&buf[8] = v52;
                *buf = v52;
                std::__split_buffer<HALS_IOStreamGroup>::~__split_buffer(buf);
                v42 = v101;
                this = v106;
              }

              else
              {
                *v135 = 0uLL;
                *(v41 + 16) = 0;
                std::vector<HALS_IOStreamInfo>::__init_with_size[abi:ne200100]<HALS_IOStreamInfo*,HALS_IOStreamInfo*>(v41, v124, v125, 0xCBEEA4E1A08AD8F3 * ((v125 - v124) >> 3));
                v42 = v41 + 24;
              }

              *&v135 = v42;
            }

            *buf = &v124;
            std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          OS::CF::UntypedObject::~UntypedObject(v127);
        }

        OS::CF::UntypedObject::~UntypedObject(v129);
      }

      v54 = v134;
      v55 = v135;
      if (v134 != v135)
      {
        v57 = *(this + 11);
        v56 = *(this + 12);
        if (v57 >= v56)
        {
          v59 = (v57 - *v98) >> 5;
          if ((v59 + 1) >> 59)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v60 = v56 - *v98;
          v61 = v60 >> 4;
          if (v60 >> 4 <= (v59 + 1))
          {
            v61 = v59 + 1;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFE0)
          {
            v62 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = v61;
          }

          v140 = v98;
          if (v62)
          {
            if (!(v62 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v63 = 32 * v59;
          *buf = 0;
          *&buf[8] = v63;
          *&buf[16] = (32 * v59);
          *v63 = v133;
          *(v63 + 16) = 0;
          *(v63 + 24) = 0;
          *(v63 + 8) = 0;
          std::vector<HALS_IOStreamGroup>::__init_with_size[abi:ne200100]<HALS_IOStreamGroup*,HALS_IOStreamGroup*>(32 * v59 + 8, v54, v55, 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3));
          *&buf[16] += 32;
          v64 = *(this + 10);
          v65 = *(this + 11);
          v66 = *&buf[8] + v64 - v65;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStackDescription>,HALS_IOStackDescription*>(v98, v64, v65, v66);
          v67 = *(this + 10);
          *(this + 10) = v66;
          v68 = *(this + 12);
          v104 = *&buf[16];
          *(this + 88) = *&buf[16];
          *&buf[16] = v67;
          *&buf[24] = v68;
          *&buf[8] = v67;
          *buf = v67;
          std::__split_buffer<HALS_IOStackDescription>::~__split_buffer(buf);
          v58 = v104;
        }

        else
        {
          *v57 = v133;
          *(v57 + 8) = 0;
          *(v57 + 16) = 0;
          *(v57 + 24) = 0;
          std::vector<HALS_IOStreamGroup>::__init_with_size[abi:ne200100]<HALS_IOStreamGroup*,HALS_IOStreamGroup*>(v57 + 8, v134, v135, 0xAAAAAAAAAAAAAAABLL * ((v135 - v134) >> 3));
          v58 = v57 + 32;
          *(this + 11) = v57 + 32;
        }

        *(this + 11) = v58;
      }

      OS::CF::UntypedObject::~UntypedObject(v131);
      *buf = &v134;
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](buf);
      v7 = v99 + 1;
      Size = v137;
    }
  }

  v69 = *(this + 7);
  v70 = *(this + 8);
  v71 = v69;
  if (v69 < v70)
  {
    v71 = *(this + 7);
    do
    {
      if (*(v71 + 27) == 1)
      {
        break;
      }

      v71 = (v71 + 472);
    }

    while (v71 < v70);
  }

  if (v70 != v71)
  {
    *&v116 = 0;
    v72 = 0uLL;
    v115 = 0u;
    if (v69 != v70)
    {
      do
      {
        HALS_IOStreamInfo::HALS_IOStreamInfo(buf, v69);
        if (!v146 || ((begin = v147.__begin_, v147.__end_ != v147.__begin_) ? (v74 = v147.__begin_ == 0) : (v74 = 1), v74))
        {
          begin = v156;
        }

        v75 = *(*begin + 88);
        if (v75)
        {
          v76 = (*(*v75 + 336))(v75);
          if (v76)
          {
            LODWORD(theDict[0]) = *(v76 + 16);
            std::vector<unsigned int>::push_back[abi:ne200100](&v115, theDict);
          }
        }

        HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
        v69 = (v69 + 472);
      }

      while (v69 != v70);
      v72 = v115;
    }

    v78 = *(&v72 + 1);
    v77 = v72;
    if (v72 != *(&v72 + 1))
    {
      v79 = *(v71 + 18);
      do
      {
        v80 = *v77;
        v81 = v79;
        if (*(v71 + 17) != v79)
        {
          v81 = *(v71 + 17);
          while (*v81 != v80)
          {
            if (++v81 == v79)
            {
              v81 = v79;
              break;
            }
          }
        }

        if (v79 == v81)
        {
          v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v82 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(Size);
          }

          v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            v85 = *v84;
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          else
          {
            v85 = *v84;
          }

          Size = os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG);
          if (Size)
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IODSPInfo.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 154;
            *&buf[18] = 1024;
            *&buf[20] = v80;
            _os_log_debug_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Adding reference candidate with (Device ID: %u)", buf, 0x18u);
          }

          v87 = *(v71 + 18);
          v86 = *(v71 + 19);
          if (v87 >= v86)
          {
            v88 = *(v71 + 17);
            v89 = v87 - v88;
            v90 = (v87 - v88) >> 2;
            v91 = v90 + 1;
            if ((v90 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v92 = v86 - v88;
            if (v92 >> 1 > v91)
            {
              v91 = v92 >> 1;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v93 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v93);
            }

            v94 = v90;
            v95 = (4 * v90);
            v96 = &v95[-v94];
            *v95 = v80;
            v79 = v95 + 1;
            memcpy(v96, v88, v89);
            Size = *(v71 + 17);
            *(v71 + 17) = v96;
            *(v71 + 18) = v79;
            *(v71 + 19) = 0;
            if (Size)
            {
              operator delete(Size);
            }
          }

          else
          {
            *v87 = v80;
            v79 = v87 + 4;
          }

          *(v71 + 18) = v79;
        }

        ++v77;
      }

      while (v77 != v78);
      v77 = v115;
    }

    if (v77)
    {
      *(&v115 + 1) = v77;
      operator delete(v77);
    }
  }

  OS::CF::UntypedObject::~UntypedObject(v136);
  OS::CF::UntypedObject::~UntypedObject(v138);
  v97 = *MEMORY[0x1E69E9840];
}

void sub_1DE68172C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(HALS_IOContextDescription *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v2 = *(this + 5);
  while (v3 != v2)
  {
    if (!*(v3->i64[0] + 824))
    {
      v4 = (v2 - 1);
      do
      {
        v5 = v4 - v3;
        if (v4 == v3)
        {
          v2 = v3;
          goto LABEL_21;
        }

        v6 = v4;
        v7 = v4->i64[0];
        v4 = (v4 - 8);
      }

      while (!*(v7 + 824));
      v8 = v5 >> 3;
      v9 = v8 + 1;
      if (v8 < 3)
      {
        v15 = 0;
        v10 = 0;
      }

      else
      {
        if (v9 >= 0xFFFFFFFFFFFFFFFLL)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8 + 1;
        }

        v11 = MEMORY[0x1E69E5398];
        while (1)
        {
          v12 = operator new(8 * v10, v11);
          if (v12)
          {
            break;
          }

          v13 = v10 >> 1;
          v14 = v10 > 1;
          v10 >>= 1;
          if (!v14)
          {
            v15 = 0;
            v10 = v13;
            goto LABEL_19;
          }
        }

        v15 = v12;
      }

LABEL_19:
      v2 = std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(v3, v6, v9, v15, v10);
      if (v15)
      {
        operator delete(v15);
      }

      break;
    }

    v3 = (v3 + 8);
  }

LABEL_21:
  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315394;
    v29 = "HALS_IOContextDescription.cpp";
    v30 = 1024;
    v31 = 1168;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines: IOContextDescription has outlived owning IOContext", &v28, 0x12u);
  }

  for (i = v2; ; ++i)
  {
    v19 = *(this + 5);
    if (i == v19)
    {
      break;
    }

    v20 = *i;
    v21 = *(*i + 88);
    if (v21)
    {
      if (v17)
      {
        if (*(v20 + 940) == 1)
        {
          (*(*v21 + 216))(v21, v17);
          v20 = *i;
          v21 = *(*i + 88);
        }
      }

      *(v20 + 940) = 0;
      HALS_ObjectMap::ReleaseObject_LongTerm(v21, v16);
      *(*i + 88) = 0;
    }
  }

  if (v2 == i)
  {
    v2 = *(this + 5);
    if (!v17)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  while (v19 != v2)
  {
    v23 = *--v19;
    v22 = v23;
    *v19 = 0;
    if (v23)
    {
      (*(*v22 + 8))(v22);
    }
  }

  *(this + 5) = v2;
  if (v17)
  {
LABEL_40:
    for (j = *(this + 4); j != v2; ++j)
    {
      v25 = *j;
      if (*(*j + 824) == 1)
      {
        v26 = *(v25 + 88);
        if (v26 && (*(v25 + 940) & 1) == 0)
        {
          (*(*v26 + 208))(v26, v17);
          v25 = *j;
          *(*j + 940) = 1;
        }

        *(v25 + 824) = 2;
      }
    }
  }

LABEL_47:
  HALS_ObjectMap::ReleaseObject(v17, v16);
  v27 = *MEMORY[0x1E69E9840];
}

void sub_1DE681BD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(int8x16_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v10 = &a1->i64[1];
    v9 = a1->i64[1];
    if (!*(v9 + 824))
    {
      a1->i64[1] = *a2;
      *a2 = v9;
      *a1 = vextq_s8(*a1, *a1, 8uLL);
      return v10;
    }

    v11 = a1->i64[0];
    a1->i64[0] = v9;
    a1->i64[1] = v11;
    a1->i64[1] = *a2;
    *a2 = v11;
    return a2;
  }

  if (a3 == 2)
  {
    v8 = a1->i64[0];
    a1->i64[0] = *a2;
    *a2 = v8;
    return a2;
  }

  if (a5 >= a3)
  {
    v19 = a1->i64[0];
    a1->i64[0] = 0;
    v20 = &a1->i64[1];
    *a4 = v19;
    v21 = a4 + 1;
    v22 = 1;
    while (v20 != a2)
    {
      v23 = *v20;
      v24 = *(*v20 + 824);
      *v20 = 0;
      if (v24)
      {
        v25 = *v6;
        *v6 = v23;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }

        ++v6;
      }

      else
      {
        *v21++ = v23;
        ++v22;
      }

      ++v20;
    }

    v26 = *v20;
    *v20 = 0;
    v27 = *v6;
    *v6 = v26;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v10 = (v6 + 1);
    if (v21 > a4)
    {
      v28 = v6 + 1;
      v29 = a4;
      do
      {
        v30 = *v29;
        *v29 = 0;
        v31 = *v28;
        *v28 = v30;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        ++v29;
        ++v28;
      }

      while (v29 < v21);
    }

    if (v22)
    {
      for (i = 0; i < v22; ++i)
      {
        v33 = a4[i];
        a4[i] = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }
      }
    }
  }

  else
  {
    v15 = a3 / 2;
    v16 = &a1->i64[a3 / 2];
    v17 = v16 - 1;
    if (*(*(v16 - 1) + 824))
    {
      v18 = a3 / 2;
LABEL_36:
      v36 = std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(a1, v17, v18, a4, a5);
    }

    else
    {
      v34 = 8 - 8 * v15;
      v18 = a3 / 2;
      while (v34)
      {
        --v18;
        v35 = *--v17;
        v34 += 8;
        if (*(v35 + 824))
        {
          goto LABEL_36;
        }
      }

      v36 = a1;
    }

    v37 = a3 - v15;
    if (*(v6[v15] + 824))
    {
      v10 = (a2 + 1);
      v38 = v16 + 1;
      while (v38 != a2)
      {
        v39 = v38;
        --v37;
        v40 = *v38++;
        if (!*(v40 + 824))
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v39 = &v6[a3 / 2];
LABEL_43:
      v10 = std::__stable_partition_impl<std::_ClassicAlgPolicy,HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(void)::$_0 &,std::__wrap_iter<std::unique_ptr<HALS_IOEngineInfo> *>,long,std::pair<std::unique_ptr<HALS_IOEngineInfo> *,long>>(v39, a2, v37, a4, a5);
    }

    if (v36 != v16)
    {
      if (v16 != v10)
      {
        v41 = *v36;
        *v36++ = *v16;
        for (j = v16; ; *v36++ = *j)
        {
          *j++ = v41;
          if (j == v10)
          {
            break;
          }

          if (v36 == v16)
          {
            v16 = j;
          }

          v41 = *v36;
        }

        if (v36 != v16)
        {
          v43 = v36;
          v44 = v16;
          do
          {
            while (1)
            {
              v45 = *v43;
              *v43++ = *v44;
              *v44++ = v45;
              if (v44 == v10)
              {
                break;
              }

              if (v43 == v16)
              {
                v16 = v44;
              }
            }

            v44 = v16;
          }

          while (v43 != v16);
        }
      }

      return v36;
    }
  }

  return v10;
}

uint64_t HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(HALS_IOContextDescription *this, const __CFString *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v79[1] = 0;
  v80 = 0;
  v79[0] = 0;
  HALS_System::GetInstance(&v81, 0, v79);
  v4 = *&v81.mSampleRate;
  *__p = 0;
  std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(buf, __p, 1);
  v5 = HALS_System::CopyDeviceByUID(v4, a2, 0, buf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
  v6 = *&v81.mFormatID;
  if (*&v81.mFormatID)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v81.mFormatID);
  }

  if (!v5)
  {
    goto LABEL_51;
  }

  if (AMCP::Feature_Flags::allow_unified_device_engine_replacer(v6))
  {
    v8 = HALS_Device::CopyIOEngineReplacerOwningDevice(v5);
    if (v8)
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(v5, 0);
      v10 = HALS_IODevice::GetNumberStreams(v5, 1);
      v11 = HALS_IODevice::GetNumberStreams(v8, 0);
      v12 = HALS_IODevice::GetNumberStreams(v8, 1);
      if (NumberStreams == v11 && v10 == v12)
      {
        v72 = v5;
        v13 = HALS_IODevice::CopyIOEngine(v8);
        v14 = HALS_IODevice::CopyIOEngine(v8);
        HALS_ObjectMap::RetainObject(v14, v15);
        if (NumberStreams)
        {
          v17 = 0;
          v18 = 0uLL;
          while (1)
          {
            v89 = 0;
            *buf = v18;
            *&buf[16] = v18;
            (*(*v13 + 456))(v13, 0, v17, buf);
            memset(&v81, 0, sizeof(v81));
            (*(*v14 + 456))(v14, 0, v17, &v81);
            if (*buf != v81.mSampleRate || *&buf[8] != v81.mFormatID || *&buf[16] != v81.mBytesPerPacket || *&buf[20] != v81.mFramesPerPacket || *&buf[28] != v81.mChannelsPerFrame || v89 != v81.mBitsPerChannel || !CA::Implementation::EquivalentFormatFlags(buf, &v81, 0))
            {
              break;
            }

            v17 = (v17 + 1);
            v18 = 0uLL;
            if (NumberStreams == v17)
            {
              v20 = 0;
              while (1)
              {
                v89 = 0;
                *buf = v18;
                *&buf[16] = v18;
                (*(*v13 + 456))(v13, 0, v20, buf);
                memset(&v81, 0, sizeof(v81));
                (*(*v14 + 456))(v14, 0, v20, &v81);
                if (*buf != v81.mSampleRate || *&buf[8] != v81.mFormatID || *&buf[16] != v81.mBytesPerPacket || *&buf[20] != v81.mFramesPerPacket || *&buf[28] != v81.mChannelsPerFrame || v89 != v81.mBitsPerChannel || !CA::Implementation::EquivalentFormatFlags(buf, &v81, 0))
                {
                  break;
                }

                v20 = (v20 + 1);
                v21 = 1;
                v18 = 0uLL;
                if (NumberStreams == v20)
                {
                  goto LABEL_41;
                }
              }

              HALS_ObjectMap::ReleaseObject(v13, v16);
              v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              v5 = v72;
              if ((v68 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v67);
              }

              v70 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v69)
              {
                atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
                v30 = *v70;
                std::__shared_weak_count::__release_shared[abi:ne200100](v69);
              }

              else
              {
                v30 = *v70;
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 6346;
                v71 = "%32s:%-5d The engine replacer input format differs from this device";
                goto LABEL_112;
              }

              goto LABEL_44;
            }
          }

          HALS_ObjectMap::ReleaseObject(v13, v19);
          v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          v5 = v72;
          if ((v27 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v26);
          }

          v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            v30 = *v29;
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          else
          {
            v30 = *v29;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 6339;
            v71 = "%32s:%-5d The engine replacer output format differs from this device";
LABEL_112:
            _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, v71, buf, 0x12u);
          }

LABEL_44:
          v13 = 0;
          v21 = 0;
        }

        else
        {
          v21 = 1;
LABEL_41:
          v5 = v72;
        }

        HALS_ObjectMap::ReleaseObject(v14, v16);
        HALS_ObjectMap::ReleaseObject(v14, v31);
LABEL_46:
        HALS_ObjectMap::ReleaseObject(v8, v7);
        if (v21)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = *v24;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      else
      {
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 6311;
        _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d The engine replacer number of streams differs from this device", buf, 0x12u);
      }
    }

    v13 = 0;
    v21 = 0;
    goto LABEL_46;
  }

LABEL_47:
  v13 = 0;
LABEL_48:
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (!v13)
  {
LABEL_51:
    v13 = 0;
    goto LABEL_52;
  }

  v32 = (*(*v13 + 336))(v13);
  v33 = (*(*v32 + 208))(v32);
  applesauce::CF::StringRef::from_get(__p, v33);
  v34 = *__p;
  v80 = *__p;
  if (*__p)
  {
    applesauce::CF::StringRef::from_get(&cf, *__p);
    v35 = 0;
    goto LABEL_53;
  }

LABEL_52:
  applesauce::CF::StringRef::from_get(&cf, a2);
  v34 = 0;
  v35 = 1;
LABEL_53:
  v36 = cf;
  if (!cf)
  {
    EngineInfoForDeviceUID = 0;
    goto LABEL_104;
  }

  if (v13)
  {
    v37 = *(this + 4);
    v38 = *(this + 5);
    if (v37 != v38)
    {
      while (*(*v37 + 88) != v13)
      {
        if (++v37 == v38)
        {
          goto LABEL_62;
        }
      }
    }

    if (v37 == v38)
    {
      goto LABEL_62;
    }

    EngineInfoForDeviceUID = *v37;
    if (!*v37)
    {
      goto LABEL_62;
    }
  }

  else
  {
    EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID(this, cf);
    if (!EngineInfoForDeviceUID)
    {
LABEL_62:
      v75[0] = 0;
      v75[1] = 0;
      HALS_System::GetInstance(&v76, 0, v75);
      v40 = v76;
      v41 = cf;
      v74 = 0;
      std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(__p, &v74, 1);
      v42 = HALS_System::CopyDeviceByUID(v40, v41, 0, __p);
      v43 = v42;
      if (!v42 || (v45 = HALS_IODevice::CopyIOEngine(v42)) == 0)
      {
        v82[0] = 0;
        v82[1] = 0;
        HALS_System::GetInstance(&v83, 0, v82);
        v47 = HALS_System::CopyTapByUUID(v83, v41);
        v48 = v5;
        if (v84)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v84);
        }

        if (v47)
        {
          v49 = *(v47 + 33);
          v50 = *(v47 + 34);
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
            v45 = HALS_MultiTap::copy_engine(v49);
            std::__shared_weak_count::__release_shared[abi:ne200100](v50);
          }

          else
          {
            v45 = HALS_MultiTap::copy_engine(v49);
          }
        }

        else
        {
          v45 = 0;
        }

        HALS_ObjectMap::ReleaseObject(v47, v46);
        v5 = v48;
      }

      HALS_ObjectMap::ReleaseObject(v43, v44);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(__p);
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (v45)
      {
        goto LABEL_88;
      }

      v73[0] = 0;
      v73[1] = 0;
      HALS_System::GetInstance(&v83, 0, v73);
      v55 = v83;
      v56 = cf;
      LODWORD(v82[0]) = 0;
      std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(__p, v82, 1);
      v57 = HALS_System::CopyClockDeviceByUID(v55, v56, __p);
      v59 = v57;
      if (v57)
      {
        v60 = HALS_IODevice::CopyIOEngine(v57);
      }

      else
      {
        v60 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v59, v58);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(__p);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (v60)
      {
LABEL_88:
        operator new();
      }

      EngineInfoForDeviceUID = 0;
      goto LABEL_102;
    }
  }

  if (!*(EngineInfoForDeviceUID + 824))
  {
    v51 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
    if (v51)
    {
      v52 = *(EngineInfoForDeviceUID + 936);
      v53 = *(this + 123);
      if (v52 == v53)
      {
LABEL_94:
        UpdateEngineInfoCache(EngineInfoForDeviceUID, v52);
        *(EngineInfoForDeviceUID + 824) = 1;
        HALS_ObjectMap::ReleaseObject(v51, v61);
        goto LABEL_95;
      }

      v54 = *(EngineInfoForDeviceUID + 88);
      if (v54 && *(EngineInfoForDeviceUID + 940) == 1)
      {
        (*(*v54 + 216))(v54, v51);
        v53 = *(this + 123);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "HALS_IOContextDescription.cpp";
        v86 = 1024;
        v87 = 546;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo: IOContextDescription has outlived owning IOContext", __p, 0x12u);
      }

      v52 = *(EngineInfoForDeviceUID + 936);
      v53 = *(this + 123);
      if (v52 == v53)
      {
        goto LABEL_94;
      }
    }

    *(EngineInfoForDeviceUID + 940) = 0;
    v52 = v53;
    goto LABEL_94;
  }

LABEL_95:
  if (v5)
  {
    v62 = v35;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(v5 + 4);
  }

  *(EngineInfoForDeviceUID + 944) = v63;
LABEL_102:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_104:
  HALS_ObjectMap::ReleaseObject(v13, v36);
  HALS_ObjectMap::ReleaseObject(v5, v64);
  if ((v35 & 1) == 0)
  {
    CFRelease(v34);
  }

  v65 = *MEMORY[0x1E69E9840];
  return EngineInfoForDeviceUID;
}

void sub_1DE682C1C(_Unwind_Exception *exception_object, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, HALS_ObjectMap *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v37, a2);
    HALS_ObjectMap::ReleaseObject(v37, v39);
    HALS_ObjectMap::ReleaseObject(v36, v40);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6823B8);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContextDescription::SetFromCFRepresentation_UpdateEngineInfo(HALS_IOContextDescription *this, CFDictionaryRef theDict, const __CFDictionary *a3, HALS_IOEngineInfo *a4)
{
  v6 = this;
  if (theDict)
  {
    CFRetain(theDict);
  }

  v19 = &unk_1F5991008;
  theDicta = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v17, theDict, @"synch padding");
  v7 = OS::CF::Boolean::AsBool(v18, 1);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  *(a3 + 376) = v7;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v17, theDicta, @"drift");
  v8 = OS::CF::Boolean::AsBool(v18, 0);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v9 = *(a3 + 11);
  if (v9)
  {
    if (v8)
    {
      v10 = (*(*v9 + 472))(v9) ^ 1;
    }

    else
    {
      v10 = 0;
    }

    *(a3 + 377) = v10;
  }

  else
  {
    *(a3 + 377) = v8;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v17, theDicta, @"drift algorithm");
  v11 = OS::CF::Number::GetValue<unsigned int>(v18, 0);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  *(a3 + 95) = v11;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v17, theDicta, @"drift quality");
  v12 = OS::CF::Number::GetValue<unsigned int>(v18, 64);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v13 = *(a3 + 96);
  if (v13 <= v12)
  {
    v13 = v12;
  }

  *(a3 + 96) = v13;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v17, theDicta, @"extra latency");
  v14 = OS::CF::Number::GetValue<int>(v18, 0);
  OS::CF::UntypedObject::~UntypedObject(&v17);
  v15 = a3 + 4 * v6;
  v16 = *(v15 + 102);
  if (v16 <= v14)
  {
    v16 = v14;
  }

  *(v15 + 102) = v16;
  OS::CF::UntypedObject::~UntypedObject(&v19);
}

void sub_1DE683070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void HALS_IOStreamInfo::HALS_IOStreamInfo(HALS_IOStreamInfo *this)
{
  *this = &unk_1F59910A0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0u;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 164) = 0;
  *(this + 23) = 0;
  *(this + 22) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 145) = 0u;
  *(this + 21) = this + 176;
  *(this + 228) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 136) = 0;
  *(this + 69) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 224) = 0;
  std::vector<char>::vector[abi:ne200100](this + 35, 8);
  **(this + 35) = 0;
  std::vector<char>::vector[abi:ne200100](this + 38, 24);
  **(this + 38) = 1;
  *(this + 328) = 0;
  *(this + 368) = 0;
  *(this + 376) = 0;
  *(this + 380) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 24) = 0u;
  *(this + 464) = 0;
}

void sub_1DE6831A8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 280);
  if (v4)
  {
    *(v1 + 288) = v4;
    operator delete(v4);
  }

  if (*(v1 + 264) == 1)
  {
    v5 = *(v1 + 240);
    if (v5)
    {
      *(v1 + 248) = v5;
      operator delete(v5);
    }
  }

  v6 = *(v1 + 216);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 200);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v1 + 176));
  v8 = *(v1 + 136);
  if (v8)
  {
    *(v1 + 144) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 112);
  if (v9)
  {
    *(v1 + 120) = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void HALS_IOStreamGroup::push_back(HALS_IOStreamGroup *this, HALS_IOStreamInfo *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = 0xCBEEA4E1A08AD8F3 * ((v4 - *this) >> 3);
    if (v6 + 1 > 0x8AD8F2FBA93868)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCBEEA4E1A08AD8F3 * ((v3 - *this) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x456C797DD49C34)
    {
      v9 = 0x8AD8F2FBA93868;
    }

    else
    {
      v9 = v8;
    }

    v18 = this;
    if (v9)
    {
      std::allocator<HALS_IOStreamInfo>::allocate_at_least[abi:ne200100](v9);
    }

    v15 = 0;
    v16 = 472 * v6;
    HALS_IOStreamInfo::HALS_IOStreamInfo((472 * v6), a2);
    v17 = 472 * v6 + 472;
    v10 = *(this + 1);
    v11 = 472 * v6 + *this - v10;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_IOStreamInfo>,HALS_IOStreamInfo*>(*this, v10, v11);
    v12 = *this;
    *this = v11;
    v13 = *(this + 2);
    v14 = v17;
    *(this + 8) = v17;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v15 = v12;
    v16 = v12;
    std::__split_buffer<HALS_IOStreamInfo>::~__split_buffer(&v15);
    v5 = v14;
  }

  else
  {
    HALS_IOStreamInfo::HALS_IOStreamInfo(*(this + 1), a2);
    v5 = v4 + 472;
    *(this + 1) = v4 + 472;
  }

  *(this + 1) = v5;
}

void HALS_IOContextDescription::UpdateDSPStreamFormat(HALS_IOContextDescription *this, const AudioStreamBasicDescription *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v2 = *&a2->mBytesPerPacket;
  v4 = *&a2->mSampleRate;
  v5 = v2;
  v6 = *&a2->mBitsPerChannel;
  operator new();
}

uint64_t std::__split_buffer<HALS_IOStreamGroup>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HALS_IOContextDescription::DiscoverDSPStreams(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v23, *(a1 + 16));
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    while (v4 != v5)
    {
      v6 = *(*v4 + 88);
      if (v6)
      {
        DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v6 + 16));
        LODWORD(v25) = DeviceIDFromEngineID;
        if (DeviceIDFromEngineID)
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v23, DeviceIDFromEngineID);
        }
      }

      v4 += 8;
    }

    v8 = v23;
    if (v23 != v24)
    {
      do
      {
        v10 = HALS_ObjectMap::CopyObjectByObjectID(*(v8 + 7));
        if (v10)
        {
          v11 = 0;
          v12 = 12;
          do
          {
            v13 = v11;
            v14 = *(a1 + 492);
            std::mutex::lock((v10 + 704));
            v15 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v10 + 664), v14);
            if (v15 && (v17 = v15[v12]) != 0)
            {
              HALS_ObjectMap::RetainObject(v15[v12], v16);
              std::mutex::unlock((v10 + 704));
              v25 = v17;
              v18 = *(a2 + 24);
              if (!v18)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v18 + 48))(v18, &v25);
            }

            else
            {
              std::mutex::unlock((v10 + 704));
              v17 = 0;
            }

            HALS_ObjectMap::ReleaseObject(v17, v19);
            v11 = 1;
            v12 = 6;
          }

          while ((v13 & 1) == 0);
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        v20 = v8[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v8[2];
            v22 = *v21 == v8;
            v8 = v21;
          }

          while (!v22);
        }

        v8 = v21;
      }

      while (v21 != v24);
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v24[0]);
  }
}

void sub_1DE6836F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::mutex::unlock(v10 + 11);
  HALS_ObjectMap::ReleaseObject(v10, v12);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(HALS_DSPStream *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0,std::allocator<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0>,void ()(HALS_DSPStream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription21UpdateDSPStreamFormatERK27AudioStreamBasicDescriptionE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0,std::allocator<HALS_IOContextDescription::UpdateDSPStreamFormat(AudioStreamBasicDescription const&)::$_0>,void ()(HALS_DSPStream *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5987B40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

BOOL OS::CF::Boolean::AsBool(OS::CF::Boolean *this, uint64_t a2)
{
  if (this)
  {
    return CFBooleanGetValue(this) != 0;
  }

  return a2;
}

uint64_t HALS_IOContextDescription::GetEngineInfoForDeviceUID(HALS_IOContextDescription *this, CFStringRef theString1)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    while (1)
    {
      v6 = *(*v2 + 96);
      if (v6)
      {
        if (CFStringCompare(theString1, v6, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      v2 += 8;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(this + 5);
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void UpdateEngineInfoCache(HALS_IOEngineInfo *a1, int a2)
{
  if (a1)
  {
    v3 = *(a1 + 11);
    if (v3)
    {
      *(a1 + 234) = a2;
      *(a1 + 106) = (*(*v3 + 344))(v3);
      *(a1 + 214) = (*(**(a1 + 11) + 352))();
      *(a1 + 215) = (*(**(a1 + 11) + 376))();
      *(a1 + 864) = (*(**(a1 + 11) + 384))();
      *(a1 + 97) = (*(**(a1 + 11) + 400))();
      *(a1 + 99) = (*(**(a1 + 11) + 360))();
      *(a1 + 98) = (*(**(a1 + 11) + 360))();
      *(a1 + 831) = (*(**(a1 + 11) + 424))() != 0;
      *(a1 + 832) = (*(**(a1 + 11) + 424))() != 0;
      *(a1 + 209) = (*(**(a1 + 11) + 416))();
      *(a1 + 210) = (*(**(a1 + 11) + 416))();
      v4 = (*(**(a1 + 11) + 336))();
      if (v4)
      {
        v5 = v4;
        TransportType = HALS_IODevice::GetTransportType(v4);
        *(a1 + 844) = TransportType == 1651274862;
        if (TransportType == 1651274862 && ((*(a1 + 831) & 1) != 0 || *(a1 + 832) == 1))
        {
          v7 = (*(*v5 + 648))(v5, 1685287523, 1869968496, 0);
          v9 = v7;
          if (v7)
          {
            *(a1 + 845) = HALS_Control::GetSelectorControlValue(v7) == 1769173099;
          }

          HALS_ObjectMap::ReleaseObject(v9, v8);
        }
      }
    }
  }
}

uint64_t HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(CFDictionaryRef theDict, const OS::CF::Dictionary *a2)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v11, theDict, @"device id");
  v2 = OS::CF::Number::GetValue<unsigned int>(v11[1], 0);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v5 = v3;
  if (v3)
  {
    v6 = (*(*v3 + 472))(v3);
    v7 = v6 & 0xFF00000000;
    v8 = v6 & 0xFFFFFF00;
    v9 = v6;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  OS::CF::UntypedObject::~UntypedObject(v11);
  return v7 | v9 | v8;
}

void sub_1DE683E90(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALS_ObjectMap::ReleaseObject(v9, a2);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::SetFromCFRepresentation(CFTypeRef *this, CFTypeRef cf)
{
  v94 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    v67 = &unk_1F5991008;
    v68 = cf;
    HALS_IOContextDescription::SetFromCFRepresentation_ClearAllState(this);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, cf, @"device id");
    v4 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
    OS::CF::UntypedObject::~UntypedObject(buf);
    v7 = *(this + 4);
    if (v7 && v4 != v7)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextDescription.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 376;
        _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContextDescription::SetFromCFRepresentation: the owning device is different", buf, 0x12u);
      }
    }

    *(this + 4) = v4;
    v13 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(v68, v6);
    *(this + 130) = v13;
    *(this + 524) = BYTE4(v13);
    HALS_IOContextDescription::SetFromCFRepresentation_FindMaster(this, cf);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessInputStreams(this, cf);
    CFRetain(cf);
    __dst = &unk_1F5991008;
    v76 = cf;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v77, cf, @"taps");
    v14 = v78;
    if (v78)
    {
      for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v14) > i; ++i)
      {
        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v71, &v77, i);
        if (v72)
        {
          OS::CF::UntypedObject::UntypedObject(&cfa, v72);
          cfa = &unk_1F5991008;
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v74, theDict, @"uid");
          EngineInfo = HALS_IOContextDescription::SetFromCFRepresentation_MakeEngineInfo(this, v74.__r_.__value_.__l.__size_);
          if (EngineInfo)
          {
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(buf, theDict, @"drift");
            *(EngineInfo + 377) = OS::CF::Boolean::AsBool(*&buf[8], 1);
            OS::CF::UntypedObject::~UntypedObject(buf);
            *(EngineInfo + 380) = 0;
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict, @"drift quality");
            *(EngineInfo + 384) = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 64);
            OS::CF::UntypedObject::~UntypedObject(buf);
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict, @"latency-out");
            *(EngineInfo + 408) = OS::CF::Number::GetValue<int>(*&buf[8], 0);
            OS::CF::UntypedObject::~UntypedObject(buf);
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, theDict, @"latency-in");
            *(EngineInfo + 412) = OS::CF::Number::GetValue<int>(*&buf[8], 0);
            OS::CF::UntypedObject::~UntypedObject(buf);
            HALS_IOStreamInfo::HALS_IOStreamInfo(buf);
            v93 = EngineInfo;
            buf[8] = 1;
            *&buf[12] = 0;
            v17 = *(EngineInfo + 88);
            if (v17)
            {
              v81 = 0;
              v79 = 0u;
              v80 = 0u;
              (*(*v17 + 448))(v17, 1, 0, &v79);
              v90 = v79;
              v91 = v80;
              v92 = v81;
              if (v85)
              {
                v86 = v79;
                v87 = v80;
                v88 = v81;
                if ((v89 & 1) == 0)
                {
                  v89 = 1;
                }
              }

              v84 = (*(**(EngineInfo + 88) + 440))(*(EngineInfo + 88), buf[8], *&buf[12]);
            }

            HALS_IOStreamGroup::push_back((this + 7), buf);
            ++*(this + 58);
            HALS_IOStreamInfo::~HALS_IOStreamInfo(buf);
          }

          OS::CF::UntypedObject::~UntypedObject(&v74);
          OS::CF::UntypedObject::~UntypedObject(&cfa);
        }

        OS::CF::UntypedObject::~UntypedObject(v71);
        v14 = v78;
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(buf, v76, @"tapautostart");
      *(this + 229) = OS::CF::Boolean::AsBool(*&buf[8]);
      OS::CF::UntypedObject::~UntypedObject(buf);
    }

    OS::CF::UntypedObject::~UntypedObject(&v77);
    OS::CF::UntypedObject::~UntypedObject(&__dst);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessOutputStreams(this, cf);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines(this);
    CFRetain(cf);
    v18 = this[4];
    v19 = this[5];
    while (v18 != v19)
    {
      v20 = *(*v18 + 88);
      if (v20 && (*(*v20 + 312))(v20))
      {
        *(this + 216) = 1;
        break;
      }

      v18 += 8;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(buf, v68, @"LDCM");
    *(this + 228) = OS::CF::Boolean::AsBool(*&buf[8]);
    OS::CF::UntypedObject::~UntypedObject(buf);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v71, v68, @"VAD power assertion category");
    if (v72)
    {
      *(this + 55) = OS::CF::Number::GetValue<unsigned int>(v72, 0);
      *(this + 224) = 1;
    }

    v21 = this[1];
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = this[7];
    this[1] = cf;
    v23 = this[10];
    v24 = this[11];
    std::vector<BOOL>::resize((this + 16), 0xCBEEA4E1A08AD8F3 * ((this[8] - v22) >> 3), 1);
    std::vector<BOOL>::resize((this + 13), (v24 - v23) >> 5, 1);
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      v25 = this[34];
      if (v25)
      {
        v26 = *(v25 + 18);
        v27 = *(v25 + 19);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v26 && (v28 = (*(**(v26 + 8) + 72))(*(v26 + 8)), v28))
        {
          v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v29 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v28);
          }

          v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            v32 = *v31;
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          else
          {
            v32 = *v31;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v38 = this[34];
            if (v38)
            {
              v39 = this[35];
              if (v39)
              {
                atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v39 = 0;
            }

            v41 = (*(*v38 + 48))(v38);
            if ((v41 & 0x100000000) != 0)
            {
              v42 = v41;
            }

            else
            {
              v42 = 0;
            }

            *buf = 136315650;
            *&buf[4] = "HALS_IOContextDescription.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 299;
            *&buf[18] = 1024;
            *&buf[20] = v42;
            _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] (Context ID: %d) Input DSP is currently locked and cannot be reconfigured.", buf, 0x18u);
            if (v39)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v39);
            }
          }
        }

        else
        {
          *&v79 = cf;
          *(&v79 + 1) = this + 7;
          *&v80 = this + 10;
          *(&v80 + 1) = &unk_1F59879D0;
          v81 = this;
          v82 = &v80 + 8;
          v73 = 0;
          if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
          {
            v33 = this[34];
            if (v33)
            {
              v35 = *(v33 + 18);
              v34 = *(v33 + 19);
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v35)
              {
                v73 = 0;
                applesauce::CF::DictionaryRef::from_get(buf, v79);
                if (*buf)
                {
                  v36 = applesauce::CF::details::at_key<__CFString const*>(*buf, @"device id");
                  if (v36)
                  {
                    v37 = applesauce::CF::convert_as<unsigned int,0>(v36);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  if (*buf)
                  {
                    CFRelease(*buf);
                  }

                  v40 = this[34];
                  v40[23] = v37;
                  *(v40 + 96) = BYTE4(v37);
                  operator new();
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              if (v34)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              }

              if (v73)
              {
                CFRelease(v73);
              }
            }
          }

          std::__function::__value_func<BOOL ()(AMCP::Direction,unsigned int)>::~__value_func[abi:ne200100](&v80 + 8);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }
    }

    OS::CF::UntypedObject::~UntypedObject(v71);
    OS::CF::UntypedObject::~UntypedObject(&v67);
  }

  else
  {
    HALS_IOContextDescription::SetToEmpty(this);
    v12 = this[1];
    if (v12)
    {
      CFRelease(v12);
    }

    this[1] = 0;
  }

  HALS_IOContextDescription::CalculateEngineSynchOffsets(this);
  if (0xCBEEA4E1A08AD8F3 * ((this[8] - this[7]) >> 3) != *(this + 34))
  {
    v44 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v44 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v46 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v47 = *v46;
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    else
    {
      v47 = *v46;
    }

    v43 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextDescription.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 469;
      _os_log_error_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, "%32s:%-5d Extra items in mStreamActiveState", buf, 0x12u);
    }
  }

  if (*(this + 28) != (this[11] - this[10]) >> 5)
  {
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = *v50;
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    else
    {
      v51 = *v50;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextDescription.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 470;
      _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Extra items in mStreamActiveState", buf, 0x12u);
    }
  }

  v52 = applesauce::CF::DictionaryRef::from_get(&__dst, this[1]);
  if (__dst)
  {
    v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v53 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v52);
    }

    v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v56 = *v55;
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    else
    {
      v56 = *v55;
    }

    v57 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v57 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v54);
    }

    v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      v60 = os_signpost_id_generate(*v58);
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }

    else
    {
      v60 = os_signpost_id_generate(*v58);
    }

    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      v61 = *(this + 4);
      v62 = *(this + 122);
      v63 = CFCopyDescription(__dst);
      v74.__r_.__value_.__r.__words[0] = v63;
      applesauce::CF::details::CFString_get_value<true>(&v79, v63);
      if (v63)
      {
        CFRelease(v63);
      }

      v64 = &v79;
      if (SBYTE7(v80) < 0)
      {
        v64 = v79;
      }

      *buf = 67109634;
      *&buf[4] = v61;
      *&buf[8] = 1024;
      *&buf[10] = v62;
      *&buf[14] = 2080;
      *&buf[16] = v64;
      _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v56, OS_SIGNPOST_EVENT, v60, "Device Description", "Device %u, Context %u\n%s", buf, 0x18u);
      if (SBYTE7(v80) < 0)
      {
        operator delete(v79);
      }
    }

    if (__dst)
    {
      CFRelease(__dst);
    }
  }

  v65 = *MEMORY[0x1E69E9840];
}

void sub_1DE685DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, const void *a30, HALS_ObjectMap *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, HALS_ObjectMap *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  HALS_DSPHostIntegrationPoint_IOContextHelper::populate_ec_reference_proxy(void)::ECReferenceLog::~ECReferenceLog(&a31);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
  std::__function::__value_func<BOOL ()(AMCP::Direction,unsigned int)>::~__value_func[abi:ne200100](a13);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  OS::CF::UntypedObject::~UntypedObject(&a28);
  OS::CF::UntypedObject::~UntypedObject(&a24);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(AMCP::Direction,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void HALS_IOContextDescription::SetToEmpty(HALS_IOContextDescription *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 122));
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_IOContextDescription.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1215;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContextDescription::SetToEmpty: IOContextDescription has outlived owning IOContext", buf, 0x12u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1174405120;
  v15[2] = ___ZN25HALS_IOContextDescription10SetToEmptyEv_block_invoke;
  v15[3] = &__block_descriptor_tmp_89_16991;
  v15[4] = this;
  v16 = v3;
  HALS_ObjectMap::RetainObject(v3, v2);
  v17 = v15;
  v18[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v18[1] = &v17;
  v19 = v18;
  *buf = _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_;
  *&buf[8] = &v19;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(*(this + 4), *(this + 5), buf);
  *(this + 3) = 0;
  std::vector<std::unique_ptr<HALS_IOEngineInfo>>::clear[abi:ne200100](this + 4);
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v4 != v5)
  {
    v6 = v4 - 59;
    v7 = v4 - 59;
    do
    {
      (**v7)(v7);
      v6 -= 59;
      v8 = v7 == v5;
      v7 -= 59;
    }

    while (!v8);
  }

  *(this + 8) = v5;
  v10 = *(this + 10);
  v9 = *(this + 11);
  if (v9 != v10)
  {
    do
    {
      v11 = v9 - 32;
      *buf = v9 - 24;
      std::vector<HALS_IOStreamGroup>::__destroy_vector::operator()[abi:ne200100](buf);
      v9 = v11;
    }

    while (v11 != v10);
  }

  *(this + 11) = v10;
  *(this + 17) = 0;
  *(this + 14) = 0;
  HALS_IOContextDescription::CalculateEngineSynchOffsets(this);
  *(this + 216) = 0;
  *(this + 114) = 0;
  *(this + 58) = 0;
  if (v3)
  {
    (*(**(v3 + 13) + 232))(*(v3 + 13));
  }

  HALS_ObjectMap::ReleaseObject(v16, v12);
  HALS_ObjectMap::ReleaseObject(v3, v13);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1DE686410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, HALS_ObjectMap *a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContextDescription::CalculateEngineSynchOffsets(HALS_IOContextDescription *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      if (*(this + 4) != *(this + 5))
      {
        v40 = 0;
        v41 = 0;
        v4 = (*(*v3 + 344))(v3);
        v5 = *(this + 4);
        v6 = *(this + 5);
        if (v5 != v6)
        {
          do
          {
            v7 = *(*v5 + 88);
            if (v7 && *(*v5 + 376) == 1)
            {
              v8 = (*(*v7 + 344))(v7);
              v9 = 0;
              v10 = &v41;
              v11 = 1;
              do
              {
                v12 = v11;
                v13 = (*(**(*v5 + 88) + 368))(*(*v5 + 88), v9 & 1);
                v14 = (*(**(*v5 + 88) + 360))();
                v11 = 0;
                v15 = v14 + v13;
                v16 = vcvtad_u64_f64(v4 / v8 * (v14 + v13));
                if (v8 != v4)
                {
                  v15 = v16;
                }

                if (*v10 > v15)
                {
                  v15 = *v10;
                }

                *v10 = v15;
                v10 = &v40;
                v9 = 1;
              }

              while ((v12 & 1) != 0);
            }

            ++v5;
          }

          while (v5 != v6);
          v5 = *(this + 4);
          v6 = *(this + 5);
        }

        while (v5 != v6)
        {
          v17 = *v5;
          v18 = *(*v5 + 88);
          if (v18 && *(v17 + 376) == 1)
          {
            v19 = (*(*v18 + 344))(v18);
            v20 = 0;
            v21 = 0;
            v22 = *v5;
            v23 = &v41;
            v24 = 1;
            do
            {
              v25 = v24;
              v26 = (*(**(v22 + 88) + 368))(*(v22 + 88), v20 & 1);
              v27 = (*(**(*v5 + 88) + 360))();
              v28 = *v5;
              *(*v5 + 4 * v21 + 392) = v27;
              if (v19 == v4)
              {
                v29 = *v23 - v26 - v27;
              }

              else
              {
                v29 = (v19 / v4 * (*v23 - vcvtad_u64_f64(v4 / v19 * (v27 + v26))));
              }

              v30 = (*(**(v28 + 88) + 352))(*(v28 + 88));
              v22 = *v5;
              v31 = (*v5 + 4 * v21);
              v32 = v31[102];
              if (v30 && (v33 = v32 + v29, v32 + v29 >= v30 >> 2))
              {
                v32 = 0;
                v29 = 0;
              }

              else
              {
                v33 = 0;
              }

              v24 = 0;
              v31[100] = v32;
              v31[104] = v29;
              v23 = &v40;
              v20 = 1;
              v21 = 1;
              v31[106] = v33;
            }

            while ((v25 & 1) != 0);
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = 1;
            do
            {
              v37 = v36;
              v38 = *(v17 + 88);
              if (v38)
              {
                LODWORD(v38) = (*(*v38 + 360))(v38, v34 & 1);
                v17 = *v5;
              }

              v36 = 0;
              v39 = (v17 + 4 * v35);
              v39[98] = v38;
              v39[100] = v39[102];
              v39[104] = 0;
              v39[106] = 0;
              v34 = 1;
              v35 = 1;
            }

            while ((v37 & 1) != 0);
          }

          ++v5;
        }
      }
    }
  }
}

uint64_t ___ZN25HALS_IOContextDescription10SetToEmptyEv_block_invoke(uint64_t a1, uint64_t a2)
{
  std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((a2 + 800));
  std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((a2 + 776));
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5 && *(a2 + 940) == 1)
    {
      (*(*v4 + 216))(v4);
      v4 = *(a2 + 88);
    }

    *(a2 + 940) = 0;
    HALS_ObjectMap::ReleaseObject_LongTerm(v4, v5);
    *(a2 + 88) = 0;
  }

  return 0;
}

void __copy_helper_block_e8_40c37_ZTS13HALS_ReleaserI14HALS_IOContextE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 5);
  *(a1 + 40) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

uint64_t std::__function::__func<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0,std::allocator<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0>,BOOL ()(AMCP::Direction,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription35SetFromCFRepresentation_EvaluateDSPEPK14__CFDictionaryE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0,std::allocator<HALS_IOContextDescription::SetFromCFRepresentation_EvaluateDSP(__CFDictionary const*)::$_0>,BOOL ()(AMCP::Direction,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59879D0;
  a2[1] = v2;
  return result;
}

uint64_t HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(unsigned int *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *buf = xmmword_1DE79B5A4;
  *&buf[16] = 10;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v16, buf, 5);
  *buf = xmmword_1DE7581B0;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v15, buf, 4);
  *buf = xmmword_1DE79B5B8;
  *&buf[16] = unk_1DE79B5C8;
  v19 = 10;
  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v14, buf, 9);
  v3 = v17[0];
  if (!v17[0])
  {
    goto LABEL_10;
  }

  v4 = v17;
  do
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v3 + 7);
    if (v7 >= v2)
    {
      v4 = v3;
    }

    v3 = v3[v7 < v2];
  }

  while (v3);
  if (v4 == v17)
  {
    goto LABEL_10;
  }

  if (v7 < v2)
  {
    v5 = v6;
  }

  if (*(v5 + 7) > v2)
  {
LABEL_10:
    v4 = v17;
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v14[1]);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v15[1]);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v17[0]);
  if (v4 == v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextDescription.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 712;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp] Processing type is not supported on this platform", buf, 0x12u);
    }

    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *a1;
    if ((HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::isAppleInternal & 1) != 0 || v8 != 2)
    {
      v9 = v8 & 0xFFFFFF00;
      v11 = *a1;
      v10 = 0x100000000;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextDescription.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 722;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp] Vocal Isolation Conferencing mode is unsupported", buf, 0x12u);
      }

      v9 = 0;
      v10 = 0x100000000;
      v11 = 3;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10 | v9 | v11;
}

void sub_1DE686C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a14);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a17);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize(HALS_IOContextDescription *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      (*(*v3 + 344))(v3);
      v5 = *(this + 4);
      v6 = *(this + 5);
      if (v5 != v6)
      {
        v7 = v4;
        v8 = -1;
        do
        {
          v9 = *(*v5 + 88);
          if (v9)
          {
            v10 = (*(*v9 + 352))(v9);
            v11 = (*(**(*v5 + 88) + 344))();
            if (v11 != v7)
            {
              v10 = (v7 / v11 * v10);
            }

            if (v10 < v8)
            {
              v8 = v10;
            }
          }

          v5 += 8;
        }

        while (v5 != v6);
      }
    }
  }
}

uint64_t HALS_IOContextDescription::PickMasterEngine(HALS_IOContextDescription *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *(this + 3) = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_9;
  }

  CFRetain(*(this + 1));
  v3 = 0;
  *&v11 = &unk_1F5991008;
  *(&v11 + 1) = v2;
  v12 = @"clock device uid";
  v13 = @"master uid";
  do
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v9, *(&v11 + 1), *(&v12 + v3));
    if (theString1)
    {
      EngineInfoForDeviceUID = HALS_IOContextDescription::GetEngineInfoForDeviceUID(this, theString1);
      if (EngineInfoForDeviceUID)
      {
        if (*(EngineInfoForDeviceUID + 88))
        {
          *(this + 3) = EngineInfoForDeviceUID;
        }
      }
    }

    OS::CF::UntypedObject::~UntypedObject(&v9);
    v3 += 8;
  }

  while (v3 != 16);
  OS::CF::UntypedObject::~UntypedObject(&v11);
  v5 = *(this + 3);
  if (!v5)
  {
LABEL_9:
    for (i = *(this + 4); ; ++i)
    {
      if (i == *(this + 5))
      {
        v5 = 0;
        goto LABEL_16;
      }

      v5 = *i;
      if (*i)
      {
        if (*(v5 + 88))
        {
          break;
        }
      }
    }

    *(this + 3) = v5;
  }

LABEL_16:
  v9 = v5;
  v12 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ForceDSPToUseMasterEngineSampleRate(void)::$_0>;
  v13 = &v9;
  *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v11 + 1) = &v12;
  result = VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 7), *(this + 8), &v11);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE686F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ForceDSPToUseMasterEngineSampleRate(void)::$_0>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = **a1;
  if (v3)
  {
    v4 = *(v3 + 88);
    if (v4)
    {
      v6 = (*(*v4 + 344))(v4);
      if (*(a3 + 108))
      {
        v8 = v7;
        if (*(a3 + 368) & 1) != 0 || (HALS_IODSPInfo::GetClientFormat(&v16, (a3 + 112)), (*(a3 + 368)))
        {
          if (*(a3 + 328) != v8)
          {
            v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v9 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v6);
            }

            v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              v12 = *v11;
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            else
            {
              v12 = *v11;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v15 = *(a3 + 328);
              v16 = 136315906;
              v17 = "HALS_IODSPInfo.cpp";
              v18 = 1024;
              v19 = 121;
              v20 = 2048;
              v21 = v15;
              v22 = 2048;
              v23 = v8;
              _os_log_debug_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Replacing client sample rate on DSP Info from %6.1f to %6.1f", &v16, 0x26u);
            }
          }

          *(a3 + 328) = v8;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t HALS_IOContextDescription::DeviceDied(HALS_IOContextDescription *this, const __CFString *a2)
{
  result = HALS_IOContextDescription::GetEngineInfoForDeviceUID(this, a2);
  if (result)
  {
    v5 = result;
    v6 = *(result + 368);
    *(v5 + 368) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    HALS_ObjectMap::ReleaseObject_LongTerm(*(v5 + 88), v4);
    *(v5 + 88) = 0;
    *(v5 + 940) = 0;

    return HALS_IOContextDescription::PickMasterEngine(this);
  }

  return result;
}

uint64_t HALS_IOContextDescription::HasClockDevice(HALS_IOContextDescription *this, const __CFString *a2)
{
  if (!this)
  {
    goto LABEL_5;
  }

  CFRetain(this);
  v8[0] = &unk_1F5991008;
  v8[1] = this;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v6, this, @"clock device uid");
  v4 = theString1;
  if (theString1)
  {
    LOBYTE(a2) = CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo;
  }

  OS::CF::UntypedObject::~UntypedObject(&v6);
  OS::CF::UntypedObject::~UntypedObject(v8);
  if (!v4)
  {
LABEL_5:
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

void sub_1DE6872A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  OS::CF::UntypedObject::~UntypedObject(&a9);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextDescription::GetOutputStackDescriptionForChannel(HALS_IOContextDescription *this, unsigned int a2, HALS_IOStackDescription *a3, unsigned int *a4)
{
  v4 = *(this + 11) - *(this + 10);
  if ((v4 & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  if (((v4 >> 5) & 0xFFFFFFFE) != 0)
  {
    v10 = (v4 >> 5);
  }

  else
  {
    v10 = 1;
  }

  v32 = v10;
  while (1)
  {
    v11 = *(this + 10);
    if (v8 >= (*(this + 11) - v11) >> 5)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = (v11 + 32 * v8);
    v13 = *v12;
    *a3 = *v12;
    if (v12 != a3)
    {
      v15 = *(v12 + 1);
      v14 = *(v12 + 2);
      v16 = v14 - v15;
      v17 = *(a3 + 3);
      v18 = *(a3 + 1);
      if (v17 - v18 < (v14 - v15))
      {
        if (v18)
        {
          v19 = *(a3 + 2);
          v20 = *(a3 + 1);
          if (v19 != v18)
          {
            do
            {
              v19 -= 3;
              v33 = v19;
              std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v33);
            }

            while (v19 != v18);
            v20 = *(a3 + 1);
          }

          *(a3 + 2) = v18;
          operator delete(v20);
          v17 = 0;
          *(a3 + 1) = 0;
          *(a3 + 2) = 0;
          *(a3 + 3) = 0;
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
          if (2 * v22 > v21)
          {
            v21 = 2 * v22;
          }

          if (v22 >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v21;
          }

          std::vector<HALS_IOStreamGroup>::__vallocate[abi:ne200100](a3 + 8, v23);
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v24 = *(a3 + 2) - v18;
      if (v24 >= v16)
      {
        std::__copy_impl::operator()[abi:ne200100]<HALS_IOStreamGroup *,HALS_IOStreamGroup *,HALS_IOStreamGroup *>(v15, v14, *(a3 + 1));
        v26 = v27;
        v28 = *(a3 + 2);
        if (v28 != v27)
        {
          do
          {
            v28 -= 3;
            v33 = v28;
            std::vector<HALS_IOStreamInfo>::__destroy_vector::operator()[abi:ne200100](&v33);
          }

          while (v28 != v26);
        }
      }

      else
      {
        v25 = std::__copy_impl::operator()[abi:ne200100]<HALS_IOStreamGroup *,HALS_IOStreamGroup *,HALS_IOStreamGroup *>(v15, (v15 + v24), *(a3 + 1));
        v26 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_IOStreamGroup>,HALS_IOStreamGroup*,HALS_IOStreamGroup*,HALS_IOStreamGroup*>(a3 + 8, v25, v14, *(a3 + 2));
      }

      *(a3 + 2) = v26;
      v13 = *a3;
    }

    v29 = v13 + v9;
    if (v29 > a2)
    {
      break;
    }

    ++v8;
    v9 = v29;
    if (v8 == v32)
    {
      return 0;
    }
  }

  *a4 = a2 - v9;
  return 1;
}

void *HALS_IOContextDescription::SetStreamIsEnabledAtIndex(void *this, int a2, unsigned int a3, int a4)
{
  if (a2)
  {
    if (this[17] <= a3)
    {
      return this;
    }

    v4 = this[16];
  }

  else
  {
    if (this[14] <= a3)
    {
      return this;
    }

    v4 = this[13];
  }

  v5 = a3 >> 6;
  v6 = 1 << a3;
  if (a4)
  {
    v7 = *(v4 + 8 * v5) | v6;
  }

  else
  {
    v7 = *(v4 + 8 * v5) & ~v6;
  }

  *(v4 + 8 * v5) = v7;
  return this;
}

uint64_t HALS_IOContextDescription::PushStreamUsageToEngines(uint64_t a1, char a2, int a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN25HALS_IOContextDescription24PushStreamUsageToEnginesEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke;
  v4[3] = &__block_descriptor_tmp_90_17054;
  v4[4] = a1;
  v6 = a2;
  v5 = a3;
  v7 = v4;
  v8[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v8[1] = &v7;
  v10 = v8;
  *&v9 = _ZN5caulk12function_refIFiRN15VisitableVectorINSt3__110unique_ptrI17HALS_IOEngineInfoNS2_14default_deleteIS4_EEEEE13ItemWithIndexEEE15functor_invokerIZN21HALS_IOEngineInfoList12engine_applyIJEEEiNS0_IFiRS4_EEEDpRKT_EUlSA_E_EEiRKNS_7details15erased_callableISB_EESA_;
  *(&v9 + 1) = &v10;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::apply<>(*(a1 + 32), *(a1 + 40), &v9);
}

uint64_t ___ZN25HALS_IOContextDescription24PushStreamUsageToEnginesEbN13HALS_IOEngine20StreamUsageExecutionE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 44) == 1)
    {
      v7 = v5[10];
      v6 = v5[11];
      if (v6 == v7)
      {
LABEL_23:
        if ((*(*v3 + 512))(v3))
        {
          *(a2 + 829) = 1;
          if (!(*(**(a2 + 88) + 416))(*(a2 + 88), 0))
          {
            *(a2 + 828) = 1;
          }
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = v7 + 32 * v8;
          v12 = *(v10 + 8);
          v11 = *(v10 + 16);
          v13 = (v10 + 8);
          if (v11 != v12)
          {
            break;
          }

LABEL_21:
          v8 = (v9 + 1);
          v9 = v8;
          if (v8 >= (v6 - v7) >> 5)
          {
            v3 = *(a2 + 88);
            goto LABEL_23;
          }
        }

        v14 = 0;
        v15 = 0;
        while (1)
        {
          v16 = (v12 + 24 * v14);
          v17 = *v16;
          v18 = v16[1];
          if (*v16 != v18)
          {
            break;
          }

LABEL_19:
          v14 = ++v15;
          if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) <= v15)
          {
            v7 = v5[10];
            v6 = v5[11];
            goto LABEL_21;
          }
        }

        while (1)
        {
          if (!*(v17 + 108) || ((v19 = *(v17 + 112), *(v17 + 120) != v19) ? (v20 = v19 == 0) : (v20 = 1), v20))
          {
            v19 = v17 + 456;
          }

          if (*(*v19 + 88) == *(a2 + 88) && ((*(*v5 + 16))(v5, 0, v9) & 1) != 0)
          {
            break;
          }

          v17 += 472;
          if (v17 == v18)
          {
            v12 = *v13;
            v11 = v13[1];
            goto LABEL_19;
          }
        }
      }
    }

    v21 = 840;
    if (*(a1 + 44))
    {
      v21 = 836;
    }

    if (*(a2 + v21))
    {
      operator new();
    }
  }

  return 0;
}

void sub_1DE687BFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE687BD8);
}

void std::__shared_ptr_emplace<std::vector<BOOL>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

void std::__shared_ptr_emplace<std::vector<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContextDescription::RegisterBuffers(HALS_IOContextDescription *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = this + 104;
  v8 = *(this + 122);
  v7[0] = this + 104;
  v7[1] = &v8;
  v3 = *(this + 30);
  *&v11 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>;
  *(&v11 + 1) = v7;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*v3, v3[1], &v11);
  v4 = *(this + 31);
  *&v11 = &unk_1F596E848;
  *(&v11 + 1) = v2;
  v12 = &v8;
  v13 = &v11;
  v10 = &v11;
  *&v9 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v9 + 1) = &v10;
  VisitableVector<HALS_IOStackDescription>::apply<>(*v4, v4[1], &v9);
  result = std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v11);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE687DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextDescription::UnregisterBuffers(HALS_IOContextDescription *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = this + 104;
  v3 = *(this + 122);
  v8 = this + 104;
  v9 = v3;
  v4 = *(this + 30);
  *&v12 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>;
  *(&v12 + 1) = &v8;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*v4, v4[1], &v12);
  v5 = *(this + 31);
  *&v12 = &unk_1F596E8C8;
  *(&v12 + 1) = v2;
  v13 = v3;
  v14 = &v12;
  v11 = &v12;
  *&v10 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v10 + 1) = &v11;
  VisitableVector<HALS_IOStackDescription>::apply<>(*v5, v5[1], &v10);
  result = std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](&v12);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE687EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_1>(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, HALS_IOStackDescription *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a6 + 8) == 1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    v13 = 560947818;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "HALS_IOProcessorFactory.cpp";
      v17 = 1024;
      v18 = 143;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactory::allocate_output_processors: trying to allocate output processor from input stream info!", v16, 0x12u);
    }
  }

  else
  {
    v12 = **a1;
    if (!(*(*v12 + 16))(v12) || (*(a6 + 464) & 1) == 0)
    {
      *v16 = &unk_1F59737E0;
      HALS_IOProcessorFactoryWorker::do_allocate_processor(v16, v12, a6, 0, 0, a3);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::AllocateProcessors(void)::$_0>(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 8))
  {
    v3 = **a1;
    if ((*(*v3 + 16))(v3) && *(v2 + 464) == 1)
    {
      v4 = (*(*v3 + 32))(v3);
    }

    else
    {
      v4 = (*(*v3 + 24))(v3);
    }

    v9 = *(*v4 + 16);
    v10 = *MEMORY[0x1E69E9840];

    return v9();
  }

  else
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_IOProcessorFactory.cpp";
      v15 = 1024;
      v16 = 121;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactory::allocate_input_processors: trying to allocate input processor from output stream info!", &v13, 0x12u);
    }

    v12 = *MEMORY[0x1E69E9840];
    return 560947818;
  }
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_1>(AMCP::Log::AMCP_Scope_Registry *a1, int a2, int a3, int a4, int a5, HALS_IOProcessorFactory *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    v10 = 560947818;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_IOProcessorFactory.cpp";
      v15 = 1024;
      v16 = 177;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContextDescription::AllocateProcessors: trying to free output processor from input stream info!", &v13, 0x12u);
    }
  }

  else
  {
    HALS_IOProcessorFactory::free_processor(this, 0);
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_0>(AMCP::Log::AMCP_Scope_Registry *a1, int a2, HALS_IOProcessorFactory *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    v16 = 560947818;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALS_IOProcessorFactory.cpp";
      v21 = 1024;
      v22 = 163;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactoryWorker::free_input_processor: trying to free input processor from output stream info!", &v19, 0x12u);
    }

    goto LABEL_25;
  }

  HALS_IOProcessorFactory::free_processor(this, 1);
  v5 = *(this + 14);
  v6 = *(this + 15);
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v7 = v5[13];
    if (v7)
    {
      break;
    }

LABEL_8:
    v5 += 16;
    if (v5 == v6)
    {
      goto LABEL_24;
    }
  }

  if (*(v7 + 8))
  {
    HALS_IOProcessorList::DestroyProcessor((*v5 + 24 * *(this + 8) + 776), v7);
    v5[13] = 0;
    v4 = v5[14];
    if (v4)
    {
      v4 = (*(*v4 + 8))(v4);
    }

    v5[14] = 0;
    goto LABEL_8;
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315906;
    v20 = "HALS_IOProcessorFactory.cpp";
    v21 = 1024;
    v22 = 213;
    v23 = 2082;
    v24 = "input";
    v25 = 2082;
    v26 = "output";
    _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactoryWorker::free_processor_for_dsp: trying to free %{public}s processor but it is for %{public}s", &v19, 0x26u);
  }

LABEL_24:
  v16 = 0;
LABEL_25:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_1>(_DWORD **a1, HALS_IOStackDescription **a2)
{
  v2 = *a1;
  memset(&v12, 0, sizeof(v12));
  v3 = *(*a2 + 1);
  if (*(*a2 + 2) != v3)
  {
    v4 = *v3;
    if (-1601513229 * ((v3[1] - *v3) >> 3) && v4 != 0)
    {
      if (!*(v4 + 108) || ((v6 = *(v4 + 112), *(v4 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        v6 = (v4 + 456);
      }

      v8 = *v6;
      if (*(*v6 + 88) && *(v4 + 56))
      {
        HALS_IOStackDescription::GetFormat(*a2, &v12);
        v9 = *(v8 + 388);
        v10 = *(v4 + 64) - v9;
        if (v12.mBytesPerFrame && v10 >= *v2 * v12.mBytesPerFrame)
        {
          v10 = *v2 * v12.mBytesPerFrame;
        }

        bzero((*(v4 + 56) + v9), v10);
      }
    }
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::ClearSharedBuffers(BOOL,unsigned int)::$_0>(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 108);
  if (!v4 || ((v5 = *(a3 + 112), *(a3 + 120) != v5) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v5 = (a3 + 456);
  }

  v7 = *v5;
  if (*(*v5 + 88) && *(a3 + 56))
  {
    v8 = *a1;
    if (v4)
    {
      HALS_IODSPInfo::GetClientFormat(&v13, (a3 + 112));
    }

    else
    {
      v9 = *(a3 + 432);
      v13 = *(a3 + 416);
      v14 = v9;
      v15 = *(a3 + 448);
    }

    if (DWORD2(v13) == 1819304813 && (BYTE12(v13) & 0x40) == 0)
    {
      DWORD2(v14) = 4 * HIDWORD(v14);
    }

    v10 = *(v7 + 388);
    v11 = *(a3 + 64) - v10;
    if (DWORD2(v14) && v11 >= *v8 * DWORD2(v14))
    {
      v11 = *v8 * DWORD2(v14);
    }

    bzero((*(a3 + 56) + v10), v11);
  }

  return 0;
}

uint64_t HALS_IOContextDescription::ClearInactiveInputSharedBuffers(uint64_t this, int a2)
{
  v7 = a2;
  v6[0] = &unk_1F59877B8;
  v6[1] = this;
  v8 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearInactiveInputSharedBuffers::$_0>;
  v9 = &v7;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v4)
      {
        ++v5;
      }

      else
      {
        v5 = 0;
      }

      v11[0] = v2;
      v11[1] = v5;
      this = (*(v6[0] + 16))(v6, v11);
      if ((this & 1) == 0)
      {
        v10[0] = v2;
        v10[1] = v5;
        this = v8(&v9, v10);
        if (this)
        {
          break;
        }
      }

      v2 += 472;
      v4 = 1;
    }

    while (v2 != v3);
  }

  return this;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ConstItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ClearInactiveInputSharedBuffers(unsigned int)::$_0>(_DWORD **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 108);
  if (!v3 || ((v4 = *(v2 + 112), *(v2 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (v2 + 456);
  }

  v6 = *v4;
  if (*(*v4 + 88) && *(v2 + 56))
  {
    v7 = *a1;
    if (v3)
    {
      HALS_IODSPInfo::GetClientFormat(&v12, (v2 + 112));
    }

    else
    {
      v8 = *(v2 + 432);
      v12 = *(v2 + 416);
      v13 = v8;
      v14 = *(v2 + 448);
    }

    if (DWORD2(v12) == 1819304813 && (BYTE12(v12) & 0x40) == 0)
    {
      DWORD2(v13) = 4 * HIDWORD(v13);
    }

    v9 = *(v6 + 388);
    v10 = *(v2 + 64) - v9;
    if (DWORD2(v13) && v10 >= *v7 * DWORD2(v13))
    {
      v10 = *v7 * DWORD2(v13);
    }

    bzero((*(v2 + 56) + v9), v10);
  }

  return 0;
}

uint64_t HALS_IOContextDescription::EndianSwapSharedBuffers(HALS_IOContextDescription *this, int a2, int a3)
{
  if (a2)
  {
    v4 = a3;
    v5[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_0>;
    v5[1] = &v4;
    *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
    *(&v6 + 1) = v5;
    return VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 7), *(this + 8), &v6);
  }

  else
  {
    LODWORD(v5[0]) = a3;
    *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_1>;
    *(&v6 + 1) = v5;
    return VisitableVector<HALS_IOStackDescription>::apply<>(*(this + 10), *(this + 11), &v6);
  }
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_1>(_DWORD **a1, HALS_IOStackDescription **a2)
{
  v2 = *a1;
  memset(&v15, 0, sizeof(v15));
  v3 = *(*a2 + 1);
  if (*(*a2 + 2) != v3)
  {
    v4 = *v3;
    if (-1601513229 * ((v3[1] - *v3) >> 3) && v4 != 0)
    {
      if (!*(v4 + 108) || ((v6 = *(v4 + 112), *(v4 + 120) != v6) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        v6 = (v4 + 456);
      }

      v8 = *v6;
      if (*(*v6 + 88))
      {
        if (*(v4 + 56))
        {
          HALS_IOStackDescription::GetFormat(*a2, &v15);
          if (v15.mFormatID == 1819304813)
          {
            mChannelsPerFrame = v15.mChannelsPerFrame;
            if (v15.mBytesPerFrame / v15.mChannelsPerFrame == 2)
            {
              v12 = *v2 * v15.mChannelsPerFrame;
              if (v12)
              {
                v13 = (*(v4 + 56) + *(v8 + 388));
                do
                {
                  *v13 = bswap32(*v13) >> 16;
                  ++v13;
                  --v12;
                }

                while (v12);
              }
            }

            else if (v15.mBytesPerFrame / v15.mChannelsPerFrame == 4 && *v2 * v15.mChannelsPerFrame)
            {
              v10 = 0;
              v11 = *(v4 + 56) + *(v8 + 388);
              do
              {
                *(v11 + 4 * v10) = bswap32(*(v11 + 4 * v10));
                ++v10;
              }

              while (v10 < mChannelsPerFrame * *v2);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::EndianSwapSharedBuffers(BOOL,unsigned int)::$_0>(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 108);
  if (!v4 || ((v5 = *(a3 + 112), *(a3 + 120) != v5) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v5 = (a3 + 456);
  }

  v7 = *v5;
  if (*(*v5 + 88) && *(a3 + 56))
  {
    v8 = *a1;
    if (v4)
    {
      HALS_IODSPInfo::GetClientFormat(&v16, (a3 + 112));
    }

    else
    {
      v9 = *(a3 + 432);
      v16 = *(a3 + 416);
      v17 = v9;
      v18 = *(a3 + 448);
    }

    if (DWORD2(v16) == 1819304813)
    {
      if ((BYTE12(v16) & 0x40) == 0)
      {
        DWORD2(v17) = 4 * HIDWORD(v17);
      }

      v10 = HIDWORD(v17);
      if (DWORD2(v17) / HIDWORD(v17) == 2)
      {
        v13 = (*v8 * HIDWORD(v17));
        if (v13)
        {
          v14 = (*(a3 + 56) + *(v7 + 388));
          do
          {
            *v14 = bswap32(*v14) >> 16;
            ++v14;
            --v13;
          }

          while (v13);
        }
      }

      else if (DWORD2(v17) / HIDWORD(v17) == 4 && *v8 * HIDWORD(v17))
      {
        v11 = 0;
        v12 = *(a3 + 56) + *(v7 + 388);
        do
        {
          *(v12 + 4 * v11) = bswap32(*(v12 + 4 * v11));
          ++v11;
        }

        while (v11 < (v10 * *v8));
      }
    }
  }

  return 0;
}

uint64_t HALS_IOContextDescription::HostedDSPDescription::DebugString_DSPTypes(HALS_IOContextDescription::HostedDSPDescription *this, uint64_t a2)
{
  v41[4] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v31);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(v37, &__p);
  v27 = this;
  LOBYTE(v38) = 0;
  v39 = 0;
  v37[0] = &unk_1F5987978;
  DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(v40);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v4 = *(a2 + 88);
  if (v4 == (a2 + 96))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 7) == 7;
      v38 = *(v4 + 7);
      v39 = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, " | ", 3);
      DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(&__p, v37);
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v30 >= 0)
      {
        v8 = v30;
      }

      else
      {
        v8 = v29;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, p_p, v8);
      if (v30 < 0)
      {
        operator delete(__p);
      }

      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v5 |= v6;
      v4 = v10;
    }

    while (v10 != (a2 + 96));
  }

  v12 = *(a2 + 128);
  if (v12 != (a2 + 136))
  {
    do
    {
      v13 = *(v12 + 7) == 7;
      v38 = *(v12 + 7);
      v39 = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, " | ", 3);
      DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::get_string(&__p, v37);
      if (v30 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (v30 >= 0)
      {
        v15 = v30;
      }

      else
      {
        v15 = v29;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v14, v15);
      if (v30 < 0)
      {
        operator delete(__p);
      }

      v16 = v12[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v11 = *v17 == v12;
          v12 = v17;
        }

        while (!v11);
      }

      v5 |= v13;
      v12 = v17;
    }

    while (v17 != (a2 + 136));
  }

  if (*(a2 + 84) & 1) != 0 || (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, " | Isolated Use Case ID: ", 25);
    v19 = *(a2 + 84) == 1 ? *(a2 + 80) : 0;
    v18.i32[0] = bswap32(v19);
    v20 = vzip1_s8(v18, v18);
    v21.i64[0] = 0x1F0000001FLL;
    v21.i64[1] = 0x1F0000001FLL;
    v22.i64[0] = 0x5F0000005FLL;
    v22.i64[1] = 0x5F0000005FLL;
    v23 = vbsl_s8(vmovn_s32(vcgtq_u32(v22, vsraq_n_s32(v21, vshlq_n_s32(vmovl_u16(v20), 0x18uLL), 0x18uLL))), v20, 0x2E002E002E002ELL);
    v30 = 4;
    LODWORD(__p) = vuzp1_s8(v23, v23).u32[0];
    BYTE4(__p) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, &__p, 4);
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v27, v31);
  v37[0] = &unk_1F5987978;
  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v41);
  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v40);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v37);
  v31[0] = *MEMORY[0x1E69E54D8];
  v24 = *(MEMORY[0x1E69E54D8] + 72);
  *(v31 + *(v31[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v32 = v24;
  v33 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v34);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1E12C15F0](&v36);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE68913C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::StringLookup_AudioProcessing,unsigned int>::~StringifiedKvp((v16 - 184));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

void HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest::~ReferenceStreamRequest(HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0>,void ()(HALS_DSPStream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription26UpdateForDSPAdaptedLatencyEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0>,void ()(HALS_DSPStream *)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, _DWORD **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 2);
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = v2[12];
    v11 = v2[24];
    v12 = v2[4];
    *v13 = 136316418;
    *&v13[4] = "HALS_DSPStream.cpp";
    *&v13[12] = 1024;
    *&v13[14] = 657;
    *&v13[18] = 1024;
    *&v13[20] = v10;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v11;
    HIWORD(v14) = 1024;
    *v15 = v12;
    *&v15[4] = 1024;
    *&v15[6] = v3;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) (Client ID: %d) (Object ID: %d) Setting DSP Stream adapted latency %d", v13, 0x2Au);
  }

  *v13 = MEMORY[0x1E69E9820];
  *&v13[8] = 0x40000000;
  *&v13[16] = ___ZN14HALS_DSPStream23SetCurrentLatencyFramesEj_block_invoke;
  v14 = &__block_descriptor_tmp_23_17197;
  *v15 = v2;
  *&v15[8] = v3;
  v8 = (*(*v2 + 64))(v2);
  HALB_CommandGate::ExecuteCommand(v8, v13);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UpdateForDSPAdaptedLatency(unsigned int)::$_0>,void ()(HALS_DSPStream *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5987AB0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void HALS_IOContextDescription::HostedDSPDescription::ResetRequests(HALS_IOContextDescription::HostedDSPDescription *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    do
    {
      v4 = v2 - 16;
      std::__destroy_at[abi:ne200100]<HALS_IOContextDescription::HostedDSPDescription::ReferenceStreamRequest,0>(*(v2 - 8));
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 1) = v3;
  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
  }

  if (*(this + 188) == 1)
  {
    *(this + 188) = 0;
  }
}

uint64_t for_all_taps(CFDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    CFRetain(theDict);
  }

  v23[0] = &unk_1F5991008;
  v23[1] = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v21, theDict, @"taps");
  v4 = v22;
  if (v22)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v4) > v6 && (v7 & 1) != 0)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v19, v21, v6);
      if (theDicta)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v17, theDicta, @"uid");
        v14[0] = 0;
        v14[1] = 0;
        HALS_System::GetInstance(&v15, 0, v14);
        v9 = HALS_System::CopyTapByUUID(v15, v18);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v9)
        {
          v13 = v9;
          HALS_ObjectMap::RetainObject(v9, v8);
          v10 = *(a2 + 24);
          if (!v10)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v7 = (*(*v10 + 48))(v10, &v13);
          HALS_ObjectMap::ReleaseObject(v13, v11);
          v5 = 1;
        }

        else
        {
          v7 = 1;
        }

        HALS_ObjectMap::ReleaseObject(v9, v8);
        OS::CF::UntypedObject::~UntypedObject(v17);
      }

      else
      {
        v7 = 1;
      }

      OS::CF::UntypedObject::~UntypedObject(v19);
      ++v6;
      v4 = v22;
    }
  }

  else
  {
    v5 = 0;
  }

  OS::CF::UntypedObject::~UntypedObject(v21);
  OS::CF::UntypedObject::~UntypedObject(v23);
  return v5 & 1;
}

void sub_1DE6896F0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  HALS_ObjectMap::ReleaseObject(v19, a2);
  OS::CF::UntypedObject::~UntypedObject(&a15);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  OS::CF::UntypedObject::~UntypedObject(&a19);
  OS::CF::UntypedObject::~UntypedObject((v20 - 64));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK25HALS_IOContextDescription17ShouldWaitForTapsEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::operator()(uint64_t a1, HALS_Object *a2)
{
  v3 = *a2;
  *a2 = 0;
  v5 = *(v3 + 33);
  v4 = *(v3 + 34);
  if (v4)
  {
    v6 = 1;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    **(a1 + 8) = *(v5 + 352) != *(v5 + 360);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v5 = *(v3 + 33);
    v7 = *(v3 + 34);
    if (v7)
    {
      v6 = 0;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    **(a1 + 8) = *(v5 + 352) != *(v5 + 360);
    v6 = 1;
  }

  v8 = *(v5 + 352);
  v9 = *(v5 + 360);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = v8 + 16;
    while (1)
    {
      v12 = HALS_ObjectMap::CopyObjectByObjectID(**(v11 - 16));
      v14 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }

      if (((*(**(v12 + 104) + 824))(*(v12 + 104)) & 1) == 0)
      {
        break;
      }

      v15 = 1;
      v10 = 1;
LABEL_12:
      HALS_ObjectMap::ReleaseObject(v14, v13);
      if (v11 == v9)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v11 += 16;
      if (v16 == 1)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_18:
  **(a1 + 16) = v10 & 1;
  if ((v6 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (**(a1 + 8))
  {
    v17 = 0;
  }

  else
  {
    v17 = **(a1 + 16) ^ 1;
  }

  HALS_ObjectMap::ReleaseObject(v3, a2);
  return v17 & 1;
}

void sub_1DE6899B4(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v4, a2);
  if ((v5 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_ObjectMap::ReleaseObject(v2, v7);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::ShouldWaitForTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5987BC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription23RegisterContextWithTapsEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    HALS_MultiTap::register_autostart_context(v3, *(a1 + 8));
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    HALS_MultiTap::register_autostart_context(*(v2 + 264), *(a1 + 8));
  }

  HALS_ObjectMap::ReleaseObject(v2, v5);
  return 1;
}

uint64_t std::__function::__func<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::RegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5987C50;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HALS_IOContextDescription25UnRegisterContextWithTapsEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    HALS_MultiTap::unregister_autostart_context(v3, *(a1 + 8));
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    HALS_MultiTap::unregister_autostart_context(*(v2 + 264), *(a1 + 8));
  }

  HALS_ObjectMap::ReleaseObject(v2, v5);
  return 1;
}

uint64_t std::__function::__func<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0,std::allocator<HALS_IOContextDescription::UnRegisterContextWithTaps(unsigned int)::$_0>,BOOL ()(HALS_Releaser<HALS_Tap>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5987CD0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void HALS_IOContextDescription::CreateDriverIOThreadStateChangeDictionary(void *a1, uint64_t a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  valuePtr = *(a2 + 488);
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(Mutable, @"Context ID", v7);
  CFRelease(v7);
  if (a3)
  {
    valuePtr = 1937010544;
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v8)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
      __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    valuePtr = 1937011316;
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v8)
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
      __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(Mutable, @"Event", v8);
  CFRelease(v8);
  if (*(a2 + 524) == 1)
  {
    valuePtr = *(a2 + 520);
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v9)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::set_value<__CFString const*,applesauce::CF::NumberRef>(Mutable, @"Isolated Use Case", v9);
    CFRelease(v9);
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE689FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va1);
  _Unwind_Resume(a1);
}

void HALS_DSPStream::GetPropertyData(HALS_DSPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v99 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector <= 1936092512)
    {
      if (mSelector <= 1936092450)
      {
        if (mSelector == 1935894638)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 322;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          goto LABEL_62;
        }

        if (mSelector == 1935960434)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DSPStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 301;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection", buf, 0x12u);
            }

            v72 = __cxa_allocate_exception(0x10uLL);
            *v72 = off_1F5991DD8;
            v72[2] = 561211770;
          }

          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 0x40000000;
          v92[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
          v92[3] = &__block_descriptor_tmp_17150;
          v92[4] = this;
          v92[5] = a6;
          v24 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v24, v92);
          goto LABEL_107;
        }

        goto LABEL_99;
      }

      if (mSelector == 1936092451)
      {
        if (a4 <= 0x37)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 388;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormats", buf, 0x12u);
          }

          v76 = __cxa_allocate_exception(0x10uLL);
          *v76 = off_1F5991DD8;
          v76[2] = 561211770;
        }

        if (a9 && *(a9 + 4) == *(this + 24))
        {
          v39 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          if (v39)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x6002000000;
            v94 = __Block_byref_object_copy__17161;
            v96 = 0u;
            v97 = 0u;
            v95[0] = __Block_byref_object_dispose__17162;
            v98 = 0;
            *&v95[1] = 0u;
            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 0x40000000;
            v88[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
            v88[3] = &unk_1E8678528;
            v88[4] = buf;
            v88[5] = this;
            v40 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v40, v88);
            v41 = *(*&buf[8] + 56);
            v42 = *(*&buf[8] + 72);
            v43 = *(*&buf[8] + 40);
            a6[6] = *(*&buf[8] + 88);
            *(a6 + 1) = v41;
            *(a6 + 2) = v42;
            *a6 = v43;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            a6[6] = 0;
            *(a6 + 1) = 0u;
            *(a6 + 2) = 0u;
            *a6 = 0u;
          }

          HALS_ObjectMap::ReleaseObject(v39, v38);
          goto LABEL_98;
        }

        goto LABEL_97;
      }

      if (mSelector != 1936092479)
      {
        goto LABEL_99;
      }

      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 414;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported", buf, 0x12u);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        *v28 = off_1F5991DD8;
        v28[2] = 561211770;
      }
    }

    else
    {
      if (mSelector > 1936092531)
      {
        switch(mSelector)
        {
          case 1936092532:
            if (a4 <= 0x27)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_DSPStream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 345;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat", buf, 0x12u);
              }

              v81 = __cxa_allocate_exception(0x10uLL);
              *v81 = off_1F5991DD8;
              v81[2] = 561211770;
            }

            v52 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
            if (v52)
            {
              v90[0] = MEMORY[0x1E69E9820];
              v90[1] = 0x40000000;
              v90[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_5;
              v90[3] = &__block_descriptor_tmp_6_17159;
              v90[4] = this;
              v90[5] = a6;
              v53 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v53, v90);
            }

            else
            {
              a6[4] = 0;
              *a6 = 0u;
              *(a6 + 1) = 0u;
            }

            *a5 = 40;
            HALS_ObjectMap::ReleaseObject(v52, v51);
            goto LABEL_109;
          case 1952542835:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_DSPStream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 522;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream", buf, 0x12u);
              }

              v78 = __cxa_allocate_exception(0x10uLL);
              *v78 = off_1F5991DD8;
              v78[2] = 561211770;
            }

            *a6 = 0;
            goto LABEL_107;
          case 1952805485:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_DSPStream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 310;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType", buf, 0x12u);
              }

              v79 = __cxa_allocate_exception(0x10uLL);
              *v79 = off_1F5991DD8;
              v79[2] = 561211770;
            }

            v17 = *(this + 9);
            if (v17 == *(this + 10))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_DSPStream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 311;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: mPhysicalStreamIDs is empty", buf, 0x12u);
              }

              v84 = __cxa_allocate_exception(0x10uLL);
              *v84 = off_1F5991DD8;
              v84[2] = 1852797029;
            }

            v18 = HALS_ObjectMap::CopyObjectByObjectID(*v17);
            v20 = v18;
            if (v18)
            {
              LODWORD(v18) = HALS_Stream::GetTerminalType(v18);
            }

            *a6 = v18;
            *a5 = 4;
            HALS_ObjectMap::ReleaseObject(v20, v19);
            goto LABEL_109;
        }

        goto LABEL_99;
      }

      if (mSelector == 1936092513)
      {
        if (a4 <= 0x37)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 362;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyAvailableVirtualFormats", buf, 0x12u);
          }

          v83 = __cxa_allocate_exception(0x10uLL);
          *v83 = off_1F5991DD8;
          v83[2] = 561211770;
        }

        if (a9 && *(a9 + 4) == *(this + 24))
        {
          v61 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
          if (v61)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x6002000000;
            v94 = __Block_byref_object_copy__17161;
            v96 = 0u;
            v97 = 0u;
            v95[0] = __Block_byref_object_dispose__17162;
            v98 = 0;
            *&v95[1] = 0u;
            v89[0] = MEMORY[0x1E69E9820];
            v89[1] = 0x40000000;
            v89[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
            v89[3] = &unk_1E8678500;
            v89[4] = buf;
            v89[5] = this;
            v62 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v62, v89);
            v63 = *(*&buf[8] + 56);
            v64 = *(*&buf[8] + 72);
            v65 = *(*&buf[8] + 40);
            a6[6] = *(*&buf[8] + 88);
            *(a6 + 1) = v63;
            *(a6 + 2) = v64;
            *a6 = v65;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            a6[6] = 0;
            *(a6 + 1) = 0u;
            *(a6 + 2) = 0u;
            *a6 = 0u;
          }

          HALS_ObjectMap::ReleaseObject(v61, v60);
          goto LABEL_98;
        }

        goto LABEL_97;
      }

      if (mSelector != 1936092525)
      {
        goto LABEL_99;
      }

      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 423;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch", buf, 0x12u);
        }

        v30 = __cxa_allocate_exception(0x10uLL);
        *v30 = off_1F5991DD8;
        v30[2] = 561211770;
      }
    }

    goto LABEL_74;
  }

  if (mSelector > 1885762594)
  {
    if (mSelector > 1885762656)
    {
      if (mSelector != 1885762657)
      {
        if (mSelector != 1885762669)
        {
          if (mSelector == 1935762292)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_DSPStream.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 292;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive", buf, 0x12u);
              }

              v16 = __cxa_allocate_exception(0x10uLL);
              *v16 = off_1F5991DD8;
              v16[2] = 561211770;
            }

LABEL_62:
            *a6 = 1;
LABEL_107:
            v44 = 4;
            goto LABEL_108;
          }

          goto LABEL_99;
        }

        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DSPStream.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 513;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch", buf, 0x12u);
          }

          v77 = __cxa_allocate_exception(0x10uLL);
          *v77 = off_1F5991DD8;
          v77[2] = 561211770;
        }

        goto LABEL_74;
      }

      if (a4 <= 0x37)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 456;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyAvailablePhysicalFormats", buf, 0x12u);
        }

        v80 = __cxa_allocate_exception(0x10uLL);
        *v80 = off_1F5991DD8;
        v80[2] = 561211770;
      }

      if (a9 && *(a9 + 4) == *(this + 24))
      {
        v46 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
        if (v46)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x6002000000;
          v94 = __Block_byref_object_copy__17161;
          v96 = 0u;
          v97 = 0u;
          v95[0] = __Block_byref_object_dispose__17162;
          v98 = 0;
          *&v95[1] = 0u;
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 0x40000000;
          v86[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_13;
          v86[3] = &unk_1E8678570;
          v86[4] = buf;
          v86[5] = this;
          v47 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v47, v86);
          v48 = *(*&buf[8] + 56);
          v49 = *(*&buf[8] + 72);
          v50 = *(*&buf[8] + 40);
          a6[6] = *(*&buf[8] + 88);
          *(a6 + 1) = v48;
          *(a6 + 2) = v49;
          *a6 = v50;
          _Block_object_dispose(buf, 8);
        }

        HALS_ObjectMap::ReleaseObject(v46, v45);
        goto LABEL_98;
      }

      goto LABEL_97;
    }

    if (mSelector == 1885762595)
    {
      if (a4 <= 0x37)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 478;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormats", buf, 0x12u);
        }

        v82 = __cxa_allocate_exception(0x10uLL);
        *v82 = off_1F5991DD8;
        v82[2] = 561211770;
      }

      if (a9 && *(a9 + 4) == *(this + 24))
      {
        v55 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
        if (v55)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x6002000000;
          v94 = __Block_byref_object_copy__17161;
          v96 = 0u;
          v97 = 0u;
          v95[0] = __Block_byref_object_dispose__17162;
          v98 = 0;
          *&v95[1] = 0u;
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 0x40000000;
          v85[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
          v85[3] = &unk_1E8678598;
          v85[4] = buf;
          v85[5] = this;
          v56 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v56, v85);
          v57 = *(*&buf[8] + 56);
          v58 = *(*&buf[8] + 72);
          v59 = *(*&buf[8] + 40);
          a6[6] = *(*&buf[8] + 88);
          *(a6 + 1) = v57;
          *(a6 + 2) = v58;
          *a6 = v59;
          _Block_object_dispose(buf, 8);
        }

        else
        {
          a6[6] = 0;
          *(a6 + 1) = 0u;
          *(a6 + 2) = 0u;
          *a6 = 0u;
        }

        HALS_ObjectMap::ReleaseObject(v55, v54);
        goto LABEL_98;
      }

LABEL_97:
      a6[6] = 0;
      *(a6 + 1) = 0u;
      *(a6 + 2) = 0u;
      *a6 = 0u;
LABEL_98:
      v44 = 56;
      goto LABEL_108;
    }

    if (mSelector != 1885762623)
    {
      goto LABEL_99;
    }

    if (a4 <= 0x27)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DSPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 504;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported", buf, 0x12u);
      }

      v29 = __cxa_allocate_exception(0x10uLL);
      *v29 = off_1F5991DD8;
      v29[2] = 561211770;
    }

LABEL_74:
    a6[4] = 0;
    *a6 = 0u;
    *(a6 + 1) = 0u;
LABEL_75:
    v44 = 40;
LABEL_108:
    *a5 = v44;
LABEL_109:
    v67 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector > 1819569762)
  {
    if (mSelector == 1819569763)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_DSPStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 331;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyLatency", buf, 0x12u);
        }

        v75 = __cxa_allocate_exception(0x10uLL);
        *v75 = off_1F5991DD8;
        v75[2] = 561211770;
      }

      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 0x40000000;
      v91[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v91[3] = &__block_descriptor_tmp_3_17155;
      v91[4] = this;
      v91[5] = a6;
      v32 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v32, v91);
      v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v34 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v33);
      }

      v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        v37 = *v36;
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      else
      {
        v37 = *v36;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v68 = *(this + 12);
        v69 = *(this + 24);
        v70 = *(this + 4);
        v71 = *a6;
        *buf = 136316418;
        *&buf[4] = "HALS_DSPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 337;
        *&buf[18] = 1024;
        *&buf[20] = v68;
        LOWORD(v94) = 1024;
        *(&v94 + 2) = v69;
        HIWORD(v94) = 1024;
        LODWORD(v95[0]) = v70;
        WORD2(v95[0]) = 1024;
        *(v95 + 6) = v71;
        _os_log_debug_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) (Client ID: %d) (Object ID: %d) Getting DSP Stream adapted latency %d", buf, 0x2Au);
      }

      goto LABEL_107;
    }

    if (mSelector != 1885762592)
    {
      goto LABEL_99;
    }

    if (a4 <= 0x27)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DSPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 432;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat", buf, 0x12u);
      }

      v73 = __cxa_allocate_exception(0x10uLL);
      *v73 = off_1F5991DD8;
      v73[2] = 561211770;
    }

    if (a9 && *(a9 + 4) == *(this + 24))
    {
      v26 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
      if (v26)
      {
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 0x40000000;
        v87[2] = ___ZNK14HALS_DSPStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
        v87[3] = &__block_descriptor_tmp_12_17169;
        v87[4] = this;
        v87[5] = a6;
        v27 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v27, v87);
      }

      else
      {
        a6[4] = 0;
        *a6 = 0u;
        *(a6 + 1) = 0u;
      }

      HALS_ObjectMap::ReleaseObject(v26, v25);
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (mSelector == 1685287027)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DSPStream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 531;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DSPStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsDSPStream", buf, 0x12u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      *v31 = off_1F5991DD8;
      v31[2] = 561211770;
    }

    goto LABEL_62;
  }

  if (mSelector == 1819107691)
  {
    v21 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
    v23 = v21;
    if (v21)
    {
      strcpy(buf, "kamlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*v21 + 120))(v21, *(this + 7), buf, a4, a5, a6, a7, a8, a9);
    }

    HALS_ObjectMap::ReleaseObject(v23, v22);
    goto LABEL_109;
  }

LABEL_99:
  v66 = *MEMORY[0x1E69E9840];

  HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}