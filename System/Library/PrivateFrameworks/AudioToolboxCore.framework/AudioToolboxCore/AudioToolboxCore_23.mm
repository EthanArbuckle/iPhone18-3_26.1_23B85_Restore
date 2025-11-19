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

          v72 = 1919747786;
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

          v72 = 1919747836;
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
    v72 = 1919747262;
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

double RamstadSRC::processMulti(RamstadSRC *this, const float **a2, float *const *a3, uint64_t *a4, int a5, int a6, int a7, int a8)
{
  RamstadSRC::checkPreflight(&v759, a2, a5, a6);
  if (v760)
  {
    if (*(a2 + 93) == 1)
    {
      if (*(a2 + 92))
      {
        v16 = *(a2 + 17);
        v15 = *(a2 + 18);
        v17 = *(a2 + 22);
        v18 = a2[2];
        v19 = *(v18 + 2);
        v20 = *(v18 + 5);
        v21 = a2[20];
        v22 = a2[23];
        v23 = *(a2 + 13);
        v24 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v61 = 0;
            v26 = 0;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            LODWORD(v27) = 0;
            v28 = 0;
            v29 = a8;
            do
            {
              if (v17 >= 1)
              {
                v30 = 0;
                v27 = v27;
                do
                {
                  v31 = *(a2 + 12);
                  if (v31)
                  {
                    v32 = a3;
                    v33 = v21;
                    v34 = v22;
                    do
                    {
                      v35 = *v32++;
                      v36 = vdupq_lane_s64(COERCE__INT64(*(v35 + 4 * v27)), 0);
                      v38 = *v33;
                      v37 = v33[1];
                      v40 = v33[2];
                      v39 = v33[3];
                      v41 = vmlaq_f64(v36, v40, v19[2]);
                      v42 = vmlaq_f64(v36, v39, v19[3]);
                      v43 = vmlaq_f64(v36, *v33, *v19);
                      v44 = vmlaq_f64(vmlaq_f64(v36, v37, v19[1]), v34[1], v19[5]);
                      v45 = vmlaq_f64(v43, *v34, v19[4]);
                      v46 = vmlaq_f64(v42, v34[3], v19[7]);
                      v47 = vmlaq_f64(v41, v34[2], v19[6]);
                      v34[2] = v40;
                      v34[3] = v39;
                      *v34 = v38;
                      v34[1] = v37;
                      v34 += 4;
                      v33[2] = v47;
                      v33[3] = v46;
                      *v33 = v45;
                      v33[1] = v44;
                      v33 += 4;
                      --v31;
                    }

                    while (v31);
                  }

                  v27 += a7;
                  ++v30;
                }

                while (v30 != v17);
              }

              v48 = *(a2 + 12);
              if (v48)
              {
                v50 = v21;
                v51 = v22;
                v52 = a4;
                do
                {
                  v53 = v51[2];
                  v54 = v51[3];
                  v55 = *v51;
                  v56 = v51[1];
                  v51 += 4;
                  v57 = *v52++;
                  v49 = (v20 + ((2 * v15) << 6));
                  v58 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v49[4], v55), *v50, *v49), vmlaq_f64(vmulq_f64(v49[6], v53), v50[2], v49[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v49[5], v56), v50[1], v49[1]), vmlaq_f64(vmulq_f64(v49[7], v54), v50[3], v49[3]))));
                  *(v57 + 4 * v25) = v58;
                  v50 += 4;
                  --v48;
                }

                while (v48);
              }

              v26 += v17;
              v59 = v15 + v16;
              if (v59 < v23)
              {
                v17 = v24;
              }

              else
              {
                v17 = v24 + 1;
              }

              if (v59 < v23)
              {
                v60 = 0;
              }

              else
              {
                v60 = v23;
              }

              v15 = v59 - v60;
              ++v28;
              v25 += v29;
            }

            while (v28 != a6);
            v61 = v27;
          }

          v527 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_248;
          }

          if (v17 < v527)
          {
            v527 = v17;
          }

          if (v527 >= 1)
          {
            for (i = 0; i != v527; ++i)
            {
              v529 = *(a2 + 12);
              if (v529)
              {
                v530 = a3;
                v531 = v21;
                v532 = v22;
                do
                {
                  v533 = *v530++;
                  v534 = vdupq_lane_s64(COERCE__INT64(*(v533 + 4 * v61)), 0);
                  v536 = *v531;
                  v535 = v531[1];
                  v538 = v531[2];
                  v537 = v531[3];
                  v539 = vmlaq_f64(v534, v538, v19[2]);
                  v540 = vmlaq_f64(v534, v537, v19[3]);
                  v541 = vmlaq_f64(v534, *v531, *v19);
                  v542 = vmlaq_f64(vmlaq_f64(v534, v535, v19[1]), v532[1], v19[5]);
                  v543 = vmlaq_f64(v541, *v532, v19[4]);
                  v544 = vmlaq_f64(v540, v532[3], v19[7]);
                  v545 = vmlaq_f64(v539, v532[2], v19[6]);
                  v532[2] = v538;
                  v532[3] = v537;
                  *v532 = v536;
                  v532[1] = v535;
                  v532 += 4;
                  v531[2] = v545;
                  v531[3] = v544;
                  *v531 = v543;
                  v531[1] = v542;
                  v531 += 4;
                  --v529;
                }

                while (v529);
              }

              v61 += a7;
            }
          }
        }

        else
        {
          if (a6 < 1)
          {
            v293 = 0;
            v26 = 0;
          }

          else
          {
            v214 = 0;
            v26 = 0;
            v215 = 0;
            LODWORD(v216) = 0;
            v217 = a8;
            do
            {
              if (v17 >= 1)
              {
                v218 = 0;
                v216 = v216;
                do
                {
                  v219 = *(a2 + 12);
                  v220 = v219 != 0;
                  v221 = v22;
                  v222 = v21;
                  v223 = (v219 - v220);
                  if (v219 != v220)
                  {
                    v224 = 0;
                    v222 = v21;
                    v221 = v22;
                    do
                    {
                      v225 = &a3[v224];
                      v226 = vdupq_lane_s64(COERCE__INT64((*v225)[v216]), 0);
                      v227 = vdupq_lane_s64(COERCE__INT64(*(*(v225 + 1) + 4 * v216)), 0);
                      v228 = *v222;
                      v229 = v222[1];
                      v230 = v222[2];
                      v231 = v222[3];
                      v232 = vmlaq_f64(vmlaq_f64(v226, *v222, *v19), *v221, v19[8]);
                      v233 = vmlaq_f64(vmlaq_f64(v226, v229, v19[1]), v221[1], v19[9]);
                      v234 = vmlaq_f64(vmlaq_f64(v226, v230, v19[2]), v221[2], v19[10]);
                      v235 = vmlaq_f64(vmlaq_f64(v226, v231, v19[3]), v221[3], v19[11]);
                      v221[2] = v230;
                      v221[3] = v231;
                      *v221 = v228;
                      v221[1] = v229;
                      v222[2] = v234;
                      v222[3] = v235;
                      *v222 = v232;
                      v222[1] = v233;
                      v236 = v222[4];
                      v237 = v222[5];
                      v238 = v222[6];
                      v239 = v222[7];
                      v240 = vmlaq_f64(vmlaq_f64(v227, v236, *v19), v221[4], v19[8]);
                      v241 = vmlaq_f64(vmlaq_f64(v227, v237, v19[1]), v221[5], v19[9]);
                      v242 = vmlaq_f64(vmlaq_f64(v227, v238, v19[2]), v221[6], v19[10]);
                      v243 = vmlaq_f64(vmlaq_f64(v227, v239, v19[3]), v221[7], v19[11]);
                      v221[4] = v236;
                      v221[5] = v237;
                      v221[6] = v238;
                      v221[7] = v239;
                      v222[6] = v242;
                      v222[7] = v243;
                      v222[4] = v240;
                      v222[5] = v241;
                      v245 = v222[8];
                      v244 = v222[9];
                      v247 = v222[10];
                      v246 = v222[11];
                      v248 = vmlaq_f64(v227, v247, v19[6]);
                      v249 = vmlaq_f64(v226, v245, v19[4]);
                      v250 = vmlaq_f64(vmlaq_f64(v226, v244, v19[5]), v221[9], v19[13]);
                      v251 = vmlaq_f64(v249, v221[8], v19[12]);
                      v252 = vmlaq_f64(vmlaq_f64(v227, v246, v19[7]), v221[11], v19[15]);
                      v253 = vmlaq_f64(v248, v221[10], v19[14]);
                      v221[8] = v245;
                      v221[9] = v244;
                      v221[10] = v247;
                      v221[11] = v246;
                      v222[10] = v253;
                      v222[11] = v252;
                      v222[8] = v251;
                      v222[9] = v250;
                      v222 += 12;
                      v221 += 12;
                      v224 += 2;
                    }

                    while (v224 < v223);
                  }

                  if (v219)
                  {
                    v254 = vdupq_lane_s64(COERCE__INT64(a3[v219 - 1][v216]), 0);
                    v255 = *v222;
                    v256 = v222[1];
                    v257 = v222[2];
                    v258 = v222[3];
                    v259 = vmlaq_f64(vmlaq_f64(v254, *v222, *v19), *v221, v19[8]);
                    v260 = vmlaq_f64(vmlaq_f64(v254, v256, v19[1]), v221[1], v19[9]);
                    v261 = vmlaq_f64(vmlaq_f64(v254, v257, v19[2]), v221[2], v19[10]);
                    v262 = vmlaq_f64(vmlaq_f64(v254, v258, v19[3]), v221[3], v19[11]);
                    v221[2] = v257;
                    v221[3] = v258;
                    *v221 = v255;
                    v221[1] = v256;
                    v222[2] = v261;
                    v222[3] = v262;
                    *v222 = v259;
                    v222[1] = v260;
                    v264 = v222[4];
                    v263 = v222[5];
                    v266 = v222[6];
                    v265 = v222[7];
                    v267 = vmlaq_f64(v254, v264, v19[4]);
                    v268 = vmlaq_f64(vmlaq_f64(0, v265, v19[7]), v221[7], v19[15]);
                    v269 = vmlaq_f64(vmlaq_f64(0, v266, v19[6]), v221[6], v19[14]);
                    v270 = vmlaq_f64(vmlaq_f64(v254, v263, v19[5]), v221[5], v19[13]);
                    v271 = vmlaq_f64(v267, v221[4], v19[12]);
                    v221[4] = v264;
                    v221[5] = v263;
                    v221[6] = v266;
                    v221[7] = v265;
                    v222[6] = v269;
                    v222[7] = v268;
                    v222[4] = v271;
                    v222[5] = v270;
                  }

                  v216 += a7;
                  ++v218;
                }

                while (v218 != v17);
              }

              v272 = (v20 + ((4 * v15) << 6));
              v273 = *(a2 + 12);
              v274 = v273 != 0;
              v275 = v22;
              v276 = v21;
              v277 = (v273 - v274);
              if (v273 != v274)
              {
                v278 = 0;
                v276 = v21;
                v275 = v22;
                do
                {
                  v279 = &a4[v278];
                  v280 = v272[1];
                  v282 = v272[2];
                  v281 = v272[3];
                  v283 = v272[10];
                  v284 = v272[11];
                  v285 = v272[8];
                  v286 = v272[9];
                  v287 = *v279;
                  v288 = v279[1];
                  v289 = vmlaq_f64(vmulq_f64(v286, v275[5]), v276[5], v280);
                  *v280.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v285, *v275), *v276, *v272), vmlaq_f64(vmulq_f64(v283, v275[2]), v276[2], v282)), vaddq_f64(vmlaq_f64(vmulq_f64(v286, v275[1]), v276[1], v280), vmlaq_f64(vmulq_f64(v284, v275[3]), v276[3], v281))), vaddq_f64(vmlaq_f64(vmulq_f64(v272[12], v275[8]), v276[8], v272[4]), vmlaq_f64(vmulq_f64(v272[13], v275[9]), v276[9], v272[5]))));
                  *v281.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v285, v275[4]), v276[4], *v272), vmlaq_f64(vmulq_f64(v283, v275[6]), v276[6], v282)), vaddq_f64(v289, vmlaq_f64(vmulq_f64(v284, v275[7]), v276[7], v281))), vaddq_f64(vmlaq_f64(vmulq_f64(v272[14], v275[10]), v276[10], v272[6]), vmlaq_f64(vmulq_f64(v272[15], v275[11]), v276[11], v272[7]))));
                  *(v287 + 4 * v214) = LODWORD(v280.f64[0]);
                  *(v288 + 4 * v214) = LODWORD(v281.f64[0]);
                  v276 += 12;
                  v275 += 12;
                  v278 += 2;
                }

                while (v278 < v277);
              }

              if (v273)
              {
                v290 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v272[8], *v275), *v276, *v272), vmlaq_f64(vmulq_f64(v272[10], v275[2]), v276[2], v272[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v272[9], v275[1]), v276[1], v272[1]), vmlaq_f64(vmulq_f64(v272[11], v275[3]), v276[3], v272[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v272[12], v275[4]), v276[4], v272[4]), vmlaq_f64(vmulq_f64(v272[14], v275[6]), v276[6], v272[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v272[13], v275[5]), v276[5], v272[5]), vmlaq_f64(vmulq_f64(v272[15], v275[7]), v276[7], v272[7])))));
                *(a4[v273 - 1] + 4 * v214) = v290;
              }

              v26 += v17;
              v291 = v15 + v16;
              if (v291 < v23)
              {
                v17 = v24;
              }

              else
              {
                v17 = v24 + 1;
              }

              if (v291 < v23)
              {
                v292 = 0;
              }

              else
              {
                v292 = v23;
              }

              v15 = v291 - v292;
              ++v215;
              v214 += v217;
            }

            while (v215 != a6);
            v293 = v216;
          }

          v527 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_248;
          }

          if (v17 < v527)
          {
            v527 = v17;
          }

          if (v527 >= 1)
          {
            for (j = 0; j != v527; ++j)
            {
              v590 = *(a2 + 12);
              v591 = v22;
              v592 = v21;
              v593 = v590 - (v590 != 0);
              if (v593)
              {
                v594 = 0;
                v592 = v21;
                v591 = v22;
                do
                {
                  v595 = &a3[v594];
                  v596 = vdupq_lane_s64(COERCE__INT64((*v595)[v293]), 0);
                  v597 = vdupq_lane_s64(COERCE__INT64(*(*(v595 + 1) + 4 * v293)), 0);
                  v598 = *v592;
                  v599 = v592[1];
                  v600 = v592[2];
                  v601 = v592[3];
                  v602 = vmlaq_f64(vmlaq_f64(v596, *v592, *v19), *v591, v19[8]);
                  v603 = vmlaq_f64(vmlaq_f64(v596, v599, v19[1]), v591[1], v19[9]);
                  v604 = vmlaq_f64(vmlaq_f64(v596, v600, v19[2]), v591[2], v19[10]);
                  v605 = vmlaq_f64(vmlaq_f64(v596, v601, v19[3]), v591[3], v19[11]);
                  v591[2] = v600;
                  v591[3] = v601;
                  *v591 = v598;
                  v591[1] = v599;
                  v592[2] = v604;
                  v592[3] = v605;
                  *v592 = v602;
                  v592[1] = v603;
                  v606 = v592[4];
                  v607 = v592[5];
                  v608 = v592[6];
                  v609 = v592[7];
                  v610 = vmlaq_f64(vmlaq_f64(v597, v606, *v19), v591[4], v19[8]);
                  v611 = vmlaq_f64(vmlaq_f64(v597, v607, v19[1]), v591[5], v19[9]);
                  v612 = vmlaq_f64(vmlaq_f64(v597, v608, v19[2]), v591[6], v19[10]);
                  v613 = vmlaq_f64(vmlaq_f64(v597, v609, v19[3]), v591[7], v19[11]);
                  v591[4] = v606;
                  v591[5] = v607;
                  v591[6] = v608;
                  v591[7] = v609;
                  v592[6] = v612;
                  v592[7] = v613;
                  v592[4] = v610;
                  v592[5] = v611;
                  v615 = v592[8];
                  v614 = v592[9];
                  v617 = v592[10];
                  v616 = v592[11];
                  v618 = vmlaq_f64(v597, v617, v19[6]);
                  v619 = vmlaq_f64(v596, v615, v19[4]);
                  v620 = vmlaq_f64(vmlaq_f64(v596, v614, v19[5]), v591[9], v19[13]);
                  v621 = vmlaq_f64(v619, v591[8], v19[12]);
                  v622 = vmlaq_f64(vmlaq_f64(v597, v616, v19[7]), v591[11], v19[15]);
                  v623 = vmlaq_f64(v618, v591[10], v19[14]);
                  v591[8] = v615;
                  v591[9] = v614;
                  v591[10] = v617;
                  v591[11] = v616;
                  v592[10] = v623;
                  v592[11] = v622;
                  v592[8] = v621;
                  v592[9] = v620;
                  v592 += 12;
                  v591 += 12;
                  v594 += 2;
                }

                while (v594 < v593);
              }

              if (v590)
              {
                v624 = vdupq_lane_s64(COERCE__INT64(a3[v590 - 1][v293]), 0);
                v625 = *v592;
                v626 = v592[1];
                v627 = v592[2];
                v628 = v592[3];
                v629 = vmlaq_f64(vmlaq_f64(v624, *v592, *v19), *v591, v19[8]);
                v630 = vmlaq_f64(vmlaq_f64(v624, v626, v19[1]), v591[1], v19[9]);
                v631 = vmlaq_f64(vmlaq_f64(v624, v627, v19[2]), v591[2], v19[10]);
                v632 = vmlaq_f64(vmlaq_f64(v624, v628, v19[3]), v591[3], v19[11]);
                v591[2] = v627;
                v591[3] = v628;
                *v591 = v625;
                v591[1] = v626;
                v592[2] = v631;
                v592[3] = v632;
                *v592 = v629;
                v592[1] = v630;
                v634 = v592[4];
                v633 = v592[5];
                v636 = v592[6];
                v635 = v592[7];
                v637 = vmlaq_f64(v624, v634, v19[4]);
                v638 = vmlaq_f64(vmlaq_f64(0, v635, v19[7]), v591[7], v19[15]);
                v639 = vmlaq_f64(vmlaq_f64(0, v636, v19[6]), v591[6], v19[14]);
                v640 = vmlaq_f64(vmlaq_f64(v624, v633, v19[5]), v591[5], v19[13]);
                v641 = vmlaq_f64(v637, v591[4], v19[12]);
                v591[4] = v634;
                v591[5] = v633;
                v591[6] = v636;
                v591[7] = v635;
                v592[6] = v639;
                v592[7] = v638;
                v592[4] = v641;
                v592[5] = v640;
              }

              v293 += a7;
            }
          }
        }

LABEL_247:
        v17 -= v527;
        v26 += v527;
LABEL_248:
        *(a2 + 18) = v15;
        *(a2 + 22) = v17;
LABEL_276:
        v62 = 1;
        goto LABEL_277;
      }

      v100 = *(a2 + 17);
      v99 = *(a2 + 18);
      v101 = *(a2 + 22);
      v102 = a2[2];
      v103 = *(v102 + 2);
      v104 = *(v102 + 5);
      v105 = a2[20];
      v106 = a2[23];
      v107 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v160 = 0;
          v26 = 0;
        }

        else
        {
          v108 = 0;
          v26 = 0;
          LODWORD(v109) = 0;
          v110 = 0;
          v111 = a8;
          do
          {
            if (v101 >= 1)
            {
              v112 = 0;
              v109 = v109;
              do
              {
                v113 = *(a2 + 12);
                if (v113)
                {
                  v114 = a3;
                  v115 = v105;
                  v116 = v106;
                  do
                  {
                    v117 = *v114++;
                    v118 = vdupq_lane_s64(COERCE__INT64(*(v117 + 4 * v109)), 0);
                    v120 = *v115;
                    v119 = v115[1];
                    v122 = v115[2];
                    v121 = v115[3];
                    v123 = vmlaq_f64(v118, v122, v103[2]);
                    v124 = vmlaq_f64(v118, v121, v103[3]);
                    v125 = vmlaq_f64(v118, *v115, *v103);
                    v126 = vmlaq_f64(vmlaq_f64(v118, v119, v103[1]), v116[1], v103[5]);
                    v127 = vmlaq_f64(v125, *v116, v103[4]);
                    v128 = vmlaq_f64(v124, v116[3], v103[7]);
                    v129 = vmlaq_f64(v123, v116[2], v103[6]);
                    v116[2] = v122;
                    v116[3] = v121;
                    *v116 = v120;
                    v116[1] = v119;
                    v116 += 4;
                    v115[2] = v129;
                    v115[3] = v128;
                    *v115 = v127;
                    v115[1] = v126;
                    v115 += 4;
                    --v113;
                  }

                  while (v113);
                }

                v109 += a7;
                ++v112;
              }

              while (v112 != v101);
            }

            v130 = *(a2 + 12);
            if (v130)
            {
              v131 = *(a2 + 12) * (v99 & 0x7FFFFF);
              v132 = (v104 + (((v99 >> 22) & 0x1FE) << 6));
              v133 = a2[26];
              v134 = v105;
              v135 = v106;
              v136 = v133;
              v137 = *(a2 + 12);
              do
              {
                v138 = v135[2];
                v139 = v135[3];
                v140 = *v135;
                v141 = v135[1];
                v135 += 4;
                v142 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v132[4], v140), *v134, *v132), vmlaq_f64(vmulq_f64(v132[6], v138), v134[2], v132[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v132[5], v141), v134[1], v132[1]), vmlaq_f64(vmulq_f64(v132[7], v139), v134[3], v132[3]))));
                *v136++ = v142;
                v134 += 4;
                --v137;
              }

              while (v137);
              v143 = a2[29];
              v144 = v105;
              v145 = v106;
              v146 = v143;
              v147 = v130;
              do
              {
                v148 = v145[2];
                v149 = v145[3];
                v150 = *v145;
                v151 = v145[1];
                v145 += 4;
                v152 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v132[12], v150), *v144, v132[8]), vmlaq_f64(vmulq_f64(v132[14], v148), v144[2], v132[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v132[13], v151), v144[1], v132[9]), vmlaq_f64(vmulq_f64(v132[15], v149), v144[3], v132[11]))));
                *v146++ = v152;
                v144 += 4;
                --v147;
              }

              while (v147);
              v153 = a4;
              do
              {
                v154 = *v133++;
                v155 = v154;
                v156 = *v143++;
                v157 = v155 + (v131 * (v156 - v155));
                v158 = *v153++;
                *(v158 + 4 * v108) = v157;
                --v130;
              }

              while (v130);
            }

            v26 += v101;
            v159 = v99 + v100;
            v99 = (v99 + v100) & 0x7FFFFFFF;
            v101 = v107 + (v159 >> 31);
            ++v110;
            v108 += v111;
          }

          while (v110 != a6);
          v160 = v109;
        }

        v558 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_275;
        }

        if (v101 < v558)
        {
          v558 = v101;
        }

        if (v558 >= 1)
        {
          for (k = 0; k != v558; ++k)
          {
            v560 = *(a2 + 12);
            if (v560)
            {
              v561 = a3;
              v562 = v105;
              v563 = v106;
              do
              {
                v564 = *v561++;
                v565 = vdupq_lane_s64(COERCE__INT64(*(v564 + 4 * v160)), 0);
                v567 = *v562;
                v566 = v562[1];
                v569 = v562[2];
                v568 = v562[3];
                v570 = vmlaq_f64(v565, v569, v103[2]);
                v571 = vmlaq_f64(v565, v568, v103[3]);
                v572 = vmlaq_f64(v565, *v562, *v103);
                v573 = vmlaq_f64(vmlaq_f64(v565, v566, v103[1]), v563[1], v103[5]);
                v574 = vmlaq_f64(v572, *v563, v103[4]);
                v575 = vmlaq_f64(v571, v563[3], v103[7]);
                v576 = vmlaq_f64(v570, v563[2], v103[6]);
                v563[2] = v569;
                v563[3] = v568;
                *v563 = v567;
                v563[1] = v566;
                v563 += 4;
                v562[2] = v576;
                v562[3] = v575;
                *v562 = v574;
                v562[1] = v573;
                v562 += 4;
                --v560;
              }

              while (v560);
            }

            v160 += a7;
          }
        }

LABEL_274:
        v101 -= v558;
        v26 += v558;
LABEL_275:
        *(a2 + 18) = v99;
        *(a2 + 22) = v101;
        goto LABEL_276;
      }

      if (a6 < 1)
      {
        v443 = 0;
        v26 = 0;
LABEL_250:
        v558 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_275;
        }

        if (v101 < v558)
        {
          v558 = v101;
        }

        if (v558 >= 1)
        {
          for (m = 0; m != v558; ++m)
          {
            v674 = *(a2 + 12);
            v675 = v106;
            v676 = v105;
            v677 = v674 - (v674 != 0);
            if (v677)
            {
              v678 = 0;
              v676 = v105;
              v675 = v106;
              do
              {
                v679 = &a3[v678];
                v680 = vdupq_lane_s64(COERCE__INT64((*v679)[v443]), 0);
                v681 = vdupq_lane_s64(COERCE__INT64(*(*(v679 + 1) + 4 * v443)), 0);
                v682 = *v676;
                v683 = v676[1];
                v684 = v676[2];
                v685 = v676[3];
                v686 = vmlaq_f64(vmlaq_f64(v680, *v676, *v103), *v675, v103[8]);
                v687 = vmlaq_f64(vmlaq_f64(v680, v683, v103[1]), v675[1], v103[9]);
                v688 = vmlaq_f64(vmlaq_f64(v680, v684, v103[2]), v675[2], v103[10]);
                v689 = vmlaq_f64(vmlaq_f64(v680, v685, v103[3]), v675[3], v103[11]);
                v675[2] = v684;
                v675[3] = v685;
                *v675 = v682;
                v675[1] = v683;
                v676[2] = v688;
                v676[3] = v689;
                *v676 = v686;
                v676[1] = v687;
                v690 = v676[4];
                v691 = v676[5];
                v692 = v676[6];
                v693 = v676[7];
                v694 = vmlaq_f64(vmlaq_f64(v681, v690, *v103), v675[4], v103[8]);
                v695 = vmlaq_f64(vmlaq_f64(v681, v691, v103[1]), v675[5], v103[9]);
                v696 = vmlaq_f64(vmlaq_f64(v681, v692, v103[2]), v675[6], v103[10]);
                v697 = vmlaq_f64(vmlaq_f64(v681, v693, v103[3]), v675[7], v103[11]);
                v675[4] = v690;
                v675[5] = v691;
                v675[6] = v692;
                v675[7] = v693;
                v676[6] = v696;
                v676[7] = v697;
                v676[4] = v694;
                v676[5] = v695;
                v699 = v676[8];
                v698 = v676[9];
                v701 = v676[10];
                v700 = v676[11];
                v702 = vmlaq_f64(v681, v701, v103[6]);
                v703 = vmlaq_f64(v680, v699, v103[4]);
                v704 = vmlaq_f64(vmlaq_f64(v680, v698, v103[5]), v675[9], v103[13]);
                v705 = vmlaq_f64(v703, v675[8], v103[12]);
                v706 = vmlaq_f64(vmlaq_f64(v681, v700, v103[7]), v675[11], v103[15]);
                v707 = vmlaq_f64(v702, v675[10], v103[14]);
                v675[8] = v699;
                v675[9] = v698;
                v675[10] = v701;
                v675[11] = v700;
                v676[10] = v707;
                v676[11] = v706;
                v676[8] = v705;
                v676[9] = v704;
                v676 += 12;
                v675 += 12;
                v678 += 2;
              }

              while (v678 < v677);
            }

            if (v674)
            {
              v708 = vdupq_lane_s64(COERCE__INT64(a3[v674 - 1][v443]), 0);
              v709 = *v676;
              v710 = v676[1];
              v711 = v676[2];
              v712 = v676[3];
              v713 = vmlaq_f64(vmlaq_f64(v708, *v676, *v103), *v675, v103[8]);
              v714 = vmlaq_f64(vmlaq_f64(v708, v710, v103[1]), v675[1], v103[9]);
              v715 = vmlaq_f64(vmlaq_f64(v708, v711, v103[2]), v675[2], v103[10]);
              v716 = vmlaq_f64(vmlaq_f64(v708, v712, v103[3]), v675[3], v103[11]);
              v675[2] = v711;
              v675[3] = v712;
              *v675 = v709;
              v675[1] = v710;
              v676[2] = v715;
              v676[3] = v716;
              *v676 = v713;
              v676[1] = v714;
              v718 = v676[4];
              v717 = v676[5];
              v720 = v676[6];
              v719 = v676[7];
              v721 = vmlaq_f64(v708, v718, v103[4]);
              v722 = vmlaq_f64(vmlaq_f64(0, v719, v103[7]), v675[7], v103[15]);
              v723 = vmlaq_f64(vmlaq_f64(0, v720, v103[6]), v675[6], v103[14]);
              v724 = vmlaq_f64(vmlaq_f64(v708, v717, v103[5]), v675[5], v103[13]);
              v725 = vmlaq_f64(v721, v675[4], v103[12]);
              v675[4] = v718;
              v675[5] = v717;
              v675[6] = v720;
              v675[7] = v719;
              v676[6] = v723;
              v676[7] = v722;
              v676[4] = v725;
              v676[5] = v724;
            }

            v443 += a7;
          }
        }

        goto LABEL_274;
      }

      v353 = 0;
      v26 = 0;
      v354 = 0;
      LODWORD(v355) = 0;
      v356 = a8;
      while (1)
      {
        if (v101 >= 1)
        {
          v357 = 0;
          v355 = v355;
          do
          {
            v358 = *(a2 + 12);
            v359 = v358 != 0;
            v360 = v106;
            v361 = v105;
            v362 = (v358 - v359);
            if (v358 != v359)
            {
              v363 = 0;
              v361 = v105;
              v360 = v106;
              do
              {
                v364 = &a3[v363];
                v365 = vdupq_lane_s64(COERCE__INT64((*v364)[v355]), 0);
                v366 = vdupq_lane_s64(COERCE__INT64(*(*(v364 + 1) + 4 * v355)), 0);
                v367 = *v361;
                v368 = v361[1];
                v369 = v361[2];
                v370 = v361[3];
                v371 = vmlaq_f64(vmlaq_f64(v365, *v361, *v103), *v360, v103[8]);
                v372 = vmlaq_f64(vmlaq_f64(v365, v368, v103[1]), v360[1], v103[9]);
                v373 = vmlaq_f64(vmlaq_f64(v365, v369, v103[2]), v360[2], v103[10]);
                v374 = vmlaq_f64(vmlaq_f64(v365, v370, v103[3]), v360[3], v103[11]);
                v360[2] = v369;
                v360[3] = v370;
                *v360 = v367;
                v360[1] = v368;
                v361[2] = v373;
                v361[3] = v374;
                *v361 = v371;
                v361[1] = v372;
                v375 = v361[4];
                v376 = v361[5];
                v377 = v361[6];
                v378 = v361[7];
                v379 = vmlaq_f64(vmlaq_f64(v366, v375, *v103), v360[4], v103[8]);
                v380 = vmlaq_f64(vmlaq_f64(v366, v376, v103[1]), v360[5], v103[9]);
                v381 = vmlaq_f64(vmlaq_f64(v366, v377, v103[2]), v360[6], v103[10]);
                v382 = vmlaq_f64(vmlaq_f64(v366, v378, v103[3]), v360[7], v103[11]);
                v360[4] = v375;
                v360[5] = v376;
                v360[6] = v377;
                v360[7] = v378;
                v361[6] = v381;
                v361[7] = v382;
                v361[4] = v379;
                v361[5] = v380;
                v384 = v361[8];
                v383 = v361[9];
                v386 = v361[10];
                v385 = v361[11];
                v387 = vmlaq_f64(v366, v386, v103[6]);
                v388 = vmlaq_f64(v365, v384, v103[4]);
                v389 = vmlaq_f64(vmlaq_f64(v365, v383, v103[5]), v360[9], v103[13]);
                v390 = vmlaq_f64(v388, v360[8], v103[12]);
                v391 = vmlaq_f64(vmlaq_f64(v366, v385, v103[7]), v360[11], v103[15]);
                v392 = vmlaq_f64(v387, v360[10], v103[14]);
                v360[8] = v384;
                v360[9] = v383;
                v360[10] = v386;
                v360[11] = v385;
                v361[10] = v392;
                v361[11] = v391;
                v361[8] = v390;
                v361[9] = v389;
                v361 += 12;
                v360 += 12;
                v363 += 2;
              }

              while (v363 < v362);
            }

            if (v358)
            {
              v393 = vdupq_lane_s64(COERCE__INT64(a3[v358 - 1][v355]), 0);
              v394 = *v361;
              v395 = v361[1];
              v396 = v361[2];
              v397 = v361[3];
              v398 = vmlaq_f64(vmlaq_f64(v393, *v361, *v103), *v360, v103[8]);
              v399 = vmlaq_f64(vmlaq_f64(v393, v395, v103[1]), v360[1], v103[9]);
              v400 = vmlaq_f64(vmlaq_f64(v393, v396, v103[2]), v360[2], v103[10]);
              v401 = vmlaq_f64(vmlaq_f64(v393, v397, v103[3]), v360[3], v103[11]);
              v360[2] = v396;
              v360[3] = v397;
              *v360 = v394;
              v360[1] = v395;
              v361[2] = v400;
              v361[3] = v401;
              *v361 = v398;
              v361[1] = v399;
              v403 = v361[4];
              v402 = v361[5];
              v405 = v361[6];
              v404 = v361[7];
              v406 = vmlaq_f64(v393, v403, v103[4]);
              v407 = vmlaq_f64(vmlaq_f64(0, v404, v103[7]), v360[7], v103[15]);
              v408 = vmlaq_f64(vmlaq_f64(0, v405, v103[6]), v360[6], v103[14]);
              v409 = vmlaq_f64(vmlaq_f64(v393, v402, v103[5]), v360[5], v103[13]);
              v410 = vmlaq_f64(v406, v360[4], v103[12]);
              v360[4] = v403;
              v360[5] = v402;
              v360[6] = v405;
              v360[7] = v404;
              v361[6] = v408;
              v361[7] = v407;
              v361[4] = v410;
              v361[5] = v409;
            }

            v355 += a7;
            ++v357;
          }

          while (v357 != v101);
        }

        v411 = *(a2 + 12);
        v412 = (v104 + (((v99 >> 21) & 0x3FC) << 6));
        v413 = *(a2 + 12);
        v414 = a2[26];
        v415 = v106;
        v416 = v105;
        v417 = v413 - (*(a2 + 12) != 0);
        if (v417)
        {
          v418 = 0;
          v419 = a2[26];
          v416 = v105;
          v415 = v106;
          do
          {
            v420 = v412[1];
            v421 = v412[3];
            v422 = v412[11];
            v423 = v412[9];
            *v419++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[8], *v415), *v416, *v412), vmlaq_f64(vmulq_f64(v412[10], v415[2]), v416[2], v412[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v423, v415[1]), v416[1], v420), vmlaq_f64(vmulq_f64(v422, v415[3]), v416[3], v421))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[8], v415[4]), v416[4], *v412), vmlaq_f64(vmulq_f64(v412[10], v415[6]), v416[6], v412[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v423, v415[5]), v416[5], v420), vmlaq_f64(vmulq_f64(v422, v415[7]), v416[7], v421)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[12], v415[8]), v416[8], v412[4]), vmlaq_f64(vmulq_f64(v412[13], v415[9]), v416[9], v412[5])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[14], v415[10]), v416[10], v412[6]), vmlaq_f64(vmulq_f64(v412[15], v415[11]), v416[11], v412[7])))));
            v416 += 12;
            v415 += 12;
            v418 += 2;
          }

          while (v418 < v417);
        }

        if (v413)
        {
          v424 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[8], *v415), *v416, *v412), vmlaq_f64(vmulq_f64(v412[10], v415[2]), v416[2], v412[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[9], v415[1]), v416[1], v412[1]), vmlaq_f64(vmulq_f64(v412[11], v415[3]), v416[3], v412[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[12], v415[4]), v416[4], v412[4]), vmlaq_f64(vmulq_f64(v412[14], v415[6]), v416[6], v412[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[13], v415[5]), v416[5], v412[5]), vmlaq_f64(vmulq_f64(v412[15], v415[7]), v416[7], v412[7])))));
          v414[(v413 - 1)] = v424;
        }

        v425 = a2[29];
        v426 = v106;
        v427 = v105;
        if (v417)
        {
          v428 = 0;
          v429 = a2[29];
          v427 = v105;
          v426 = v106;
          do
          {
            v430 = v412[17];
            v431 = v412[19];
            v432 = v412[27];
            v433 = v412[25];
            *v429++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[24], *v426), *v427, v412[16]), vmlaq_f64(vmulq_f64(v412[26], v426[2]), v427[2], v412[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v433, v426[1]), v427[1], v430), vmlaq_f64(vmulq_f64(v432, v426[3]), v427[3], v431))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[24], v426[4]), v427[4], v412[16]), vmlaq_f64(vmulq_f64(v412[26], v426[6]), v427[6], v412[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v433, v426[5]), v427[5], v430), vmlaq_f64(vmulq_f64(v432, v426[7]), v427[7], v431)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[28], v426[8]), v427[8], v412[20]), vmlaq_f64(vmulq_f64(v412[29], v426[9]), v427[9], v412[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[30], v426[10]), v427[10], v412[22]), vmlaq_f64(vmulq_f64(v412[31], v426[11]), v427[11], v412[23])))));
            v427 += 12;
            v426 += 12;
            v428 += 2;
          }

          while (v428 < v417);
        }

        v434 = v411 * (v99 & 0x7FFFFF);
        if (v413)
        {
          break;
        }

        v435 = a4;
        if (v413)
        {
          goto LABEL_150;
        }

LABEL_151:
        v26 += v101;
        v442 = v99 + v100;
        v99 = (v99 + v100) & 0x7FFFFFFF;
        v101 = v107 + (v442 >> 31);
        ++v354;
        v353 += v356;
        if (v354 == a6)
        {
          v443 = v355;
          goto LABEL_250;
        }
      }

      v436 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[24], *v426), *v427, v412[16]), vmlaq_f64(vmulq_f64(v412[26], v426[2]), v427[2], v412[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[25], v426[1]), v427[1], v412[17]), vmlaq_f64(vmulq_f64(v412[27], v426[3]), v427[3], v412[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[28], v426[4]), v427[4], v412[20]), vmlaq_f64(vmulq_f64(v412[30], v426[6]), v427[6], v412[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[29], v426[5]), v427[5], v412[21]), vmlaq_f64(vmulq_f64(v412[31], v426[7]), v427[7], v412[23])))));
      v425[(v413 - 1)] = v436;
      v435 = a4;
      do
      {
LABEL_150:
        v437 = *v414++;
        v438 = v437;
        v439 = *v425++;
        v440 = v438 + (v434 * (v439 - v438));
        v441 = *v435++;
        *(v441 + 4 * v353) = v440;
        --v413;
      }

      while (v413);
      goto LABEL_151;
    }

    if (*(a2 + 92))
    {
      v63 = *(a2 + 17);
      v15 = *(a2 + 18);
      v17 = *(a2 + 22);
      v64 = *(*a2 + 2);
      v65 = *(*a2 + 5);
      v66 = a2[14];
      v67 = a2[17];
      v68 = *(a2 + 13);
      v69 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v98 = 0;
          v26 = 0;
        }

        else
        {
          v70 = 0;
          v26 = 0;
          LODWORD(v71) = 0;
          v72 = 0;
          v73 = a8;
          do
          {
            if (v17 >= 1)
            {
              v74 = 0;
              v71 = v71;
              do
              {
                v75 = *(a2 + 12);
                if (v75)
                {
                  v76 = a3;
                  v77 = v66;
                  v78 = v67;
                  do
                  {
                    v79 = *v76++;
                    v80 = (v79 + 4 * v71);
                    v81 = vld1q_dup_f32(v80);
                    v82 = v77[1];
                    v83 = vmlaq_f32(v81, v82, v64[1]);
                    v84 = vmlaq_f32(vmlaq_f32(v81, *v77, *v64), *v78, v64[2]);
                    v85 = vmlaq_f32(v83, v78[1], v64[3]);
                    *v78 = *v77;
                    v78[1] = v82;
                    v78 += 2;
                    *v77 = v84;
                    v77[1] = v85;
                    v77 += 2;
                    --v75;
                  }

                  while (v75);
                }

                v71 += a7;
                ++v74;
              }

              while (v74 != v17);
            }

            v86 = *(a2 + 12);
            if (v86)
            {
              v87 = v66;
              v88 = v67;
              v89 = a4;
              do
              {
                v90 = *v87;
                v91 = v87[1];
                v87 += 2;
                v93 = *v88;
                v92 = v88[1];
                v88 += 2;
                v94 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v65 + 64 * v15 + 32), v93), v90, *(v65 + 64 * v15)), vmlaq_f32(vmulq_f32(*(v65 + 64 * v15 + 48), v92), v91, *(v65 + 64 * v15 + 16)));
                v95 = *v89++;
                *(v95 + 4 * v70) = vaddv_f32(vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL)));
                --v86;
              }

              while (v86);
            }

            v26 += v17;
            v96 = v15 + v63;
            if (v96 < v68)
            {
              v17 = v69;
            }

            else
            {
              v17 = v69 + 1;
            }

            if (v96 < v68)
            {
              v97 = 0;
            }

            else
            {
              v97 = v68;
            }

            v15 = v96 - v97;
            ++v72;
            v70 += v73;
          }

          while (v72 != a6);
          v98 = v71;
        }

        v527 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_248;
        }

        if (v17 < v527)
        {
          v527 = v17;
        }

        if (v527 >= 1)
        {
          for (n = 0; n != v527; ++n)
          {
            v547 = *(a2 + 12);
            if (v547)
            {
              v548 = a3;
              v549 = v66;
              v550 = v67;
              do
              {
                v551 = *v548++;
                v552 = (v551 + 4 * v98);
                v553 = vld1q_dup_f32(v552);
                v554 = v549[1];
                v555 = vmlaq_f32(v553, v554, v64[1]);
                v556 = vmlaq_f32(vmlaq_f32(v553, *v549, *v64), *v550, v64[2]);
                v557 = vmlaq_f32(v555, v550[1], v64[3]);
                *v550 = *v549;
                v550[1] = v554;
                v550 += 2;
                *v549 = v556;
                v549[1] = v557;
                v549 += 2;
                --v547;
              }

              while (v547);
            }

            v98 += a7;
          }
        }
      }

      else
      {
        if (a6 < 1)
        {
          v352 = 0;
          v26 = 0;
        }

        else
        {
          v294 = 0;
          v26 = 0;
          v295 = 0;
          LODWORD(v296) = 0;
          v297 = a8;
          do
          {
            if (v17 >= 1)
            {
              v298 = 0;
              v296 = v296;
              do
              {
                v299 = *(a2 + 12);
                v300 = v67;
                v301 = v66;
                v302 = v299 - (v299 != 0);
                if (v302)
                {
                  v303 = 0;
                  v301 = v66;
                  v300 = v67;
                  do
                  {
                    v304 = &a3[v303];
                    v305 = &(*v304)[v296];
                    v306 = (*(v304 + 1) + 4 * v296);
                    v307 = vld1q_dup_f32(v305);
                    v308 = vld1q_dup_f32(v306);
                    v309 = v301[1];
                    v310 = vmlaq_f32(vmlaq_f32(v307, *v301, *v64), *v300, v64[4]);
                    v311 = vmlaq_f32(vmlaq_f32(v307, v309, v64[1]), v300[1], v64[5]);
                    *v300 = *v301;
                    v300[1] = v309;
                    *v301 = v310;
                    v301[1] = v311;
                    v312 = v301[2];
                    v313 = v301[3];
                    v314 = vmlaq_f32(vmlaq_f32(v308, v312, *v64), v300[2], v64[4]);
                    v315 = vmlaq_f32(vmlaq_f32(v308, v313, v64[1]), v300[3], v64[5]);
                    v300[2] = v312;
                    v300[3] = v313;
                    v301[2] = v314;
                    v301[3] = v315;
                    v316 = v301[4];
                    v317 = v301[5];
                    v318 = vmlaq_f32(vmlaq_f32(v307, v316, v64[2]), v300[4], v64[6]);
                    v319 = vmlaq_f32(vmlaq_f32(v308, v317, v64[3]), v300[5], v64[7]);
                    v300[4] = v316;
                    v300[5] = v317;
                    v301[4] = v318;
                    v301[5] = v319;
                    v301 += 6;
                    v300 += 6;
                    v303 += 2;
                  }

                  while (v303 < v302);
                }

                if (v299)
                {
                  v320 = &a3[v299 - 1][v296];
                  v321 = vld1q_dup_f32(v320);
                  v322 = v301[1];
                  v323 = vmlaq_f32(vmlaq_f32(v321, *v301, *v64), *v300, v64[4]);
                  v324 = vmlaq_f32(vmlaq_f32(v321, v322, v64[1]), v300[1], v64[5]);
                  *v300 = *v301;
                  v300[1] = v322;
                  *v301 = v323;
                  v301[1] = v324;
                  v325 = v301[2];
                  v326 = v301[3];
                  v327 = vmlaq_f32(vmlaq_f32(0, v326, v64[3]), v300[3], v64[7]);
                  v328 = vmlaq_f32(vmlaq_f32(v321, v325, v64[2]), v300[2], v64[6]);
                  v300[2] = v325;
                  v300[3] = v326;
                  v301[2] = v328;
                  v301[3] = v327;
                }

                v296 += a7;
                ++v298;
              }

              while (v298 != v17);
            }

            v329 = (v65 + 128 * v15);
            v330 = *(a2 + 12);
            v331 = v67;
            v332 = v66;
            v333 = v330 - (v330 != 0);
            if (v333)
            {
              v334 = 0;
              v332 = v66;
              v331 = v67;
              do
              {
                v335 = &a4[v334];
                v336 = v329[1];
                v338 = v329[4];
                v337 = v329[5];
                v339 = vmlaq_f32(vmulq_f32(v337, v331[1]), v332[1], v336);
                v340 = vmlaq_f32(vmulq_f32(v337, v331[3]), v332[3], v336);
                v342 = *v335;
                v341 = v335[1];
                v343 = vmlaq_f32(vmulq_f32(v329[7], v331[5]), v332[5], v329[3]);
                v344 = vmlaq_f32(vmulq_f32(v329[6], v331[4]), v332[4], v329[2]);
                v345 = vaddq_f32(vmlaq_f32(vmulq_f32(v338, *v331), *v332, *v329), v339);
                *v345.i8 = vadd_f32(*v345.i8, *&vextq_s8(v345, v345, 8uLL));
                v346 = vadd_f32(*v344.i8, *&vextq_s8(v344, v344, 8uLL));
                *v345.i8 = vadd_f32(vzip1_s32(*v345.i8, v346), vzip2_s32(*v345.i8, v346));
                v347 = vaddq_f32(vmlaq_f32(vmulq_f32(v338, v331[2]), v332[2], *v329), v340);
                *v347.i8 = vadd_f32(*v347.i8, *&vextq_s8(v347, v347, 8uLL));
                *v343.i8 = vadd_f32(*v343.i8, *&vextq_s8(v343, v343, 8uLL));
                *(v342 + 4 * v294) = vaddv_f32(*v345.i8);
                *(v341 + 4 * v294) = vaddv_f32(vadd_f32(vzip1_s32(*v347.i8, *v343.i8), vzip2_s32(*v347.i8, *v343.i8)));
                v332 += 6;
                v331 += 6;
                v334 += 2;
              }

              while (v334 < v333);
            }

            if (v330)
            {
              v348 = vaddq_f32(vmlaq_f32(vmulq_f32(v329[4], *v331), *v332, *v329), vmlaq_f32(vmulq_f32(v329[5], v331[1]), v332[1], v329[1]));
              *v348.i8 = vadd_f32(*v348.i8, *&vextq_s8(v348, v348, 8uLL));
              v349 = vaddq_f32(vmlaq_f32(vmulq_f32(v329[6], v331[2]), v332[2], v329[2]), vmlaq_f32(vmulq_f32(v329[7], v331[3]), v332[3], v329[3]));
              *v349.i8 = vadd_f32(*v349.i8, *&vextq_s8(v349, v349, 8uLL));
              *(a4[v330 - 1] + 4 * v294) = vaddv_f32(vadd_f32(vzip1_s32(*v348.i8, *v349.i8), vzip2_s32(*v348.i8, *v349.i8)));
            }

            v26 += v17;
            v350 = v15 + v63;
            if (v350 < v68)
            {
              v17 = v69;
            }

            else
            {
              v17 = v69 + 1;
            }

            if (v350 < v68)
            {
              v351 = 0;
            }

            else
            {
              v351 = v68;
            }

            v15 = v350 - v351;
            ++v295;
            v294 += v297;
          }

          while (v295 != a6);
          v352 = v296;
        }

        v527 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_248;
        }

        if (v17 < v527)
        {
          v527 = v17;
        }

        if (v527 >= 1)
        {
          for (ii = 0; ii != v527; ++ii)
          {
            v643 = *(a2 + 12);
            v644 = v67;
            v645 = v66;
            v646 = v643 - (v643 != 0);
            if (v646)
            {
              v647 = 0;
              v645 = v66;
              v644 = v67;
              do
              {
                v648 = &a3[v647];
                v649 = &(*v648)[v352];
                v650 = (*(v648 + 1) + 4 * v352);
                v651 = vld1q_dup_f32(v649);
                v652 = vld1q_dup_f32(v650);
                v653 = v645[1];
                v654 = vmlaq_f32(vmlaq_f32(v651, *v645, *v64), *v644, v64[4]);
                v655 = vmlaq_f32(vmlaq_f32(v651, v653, v64[1]), v644[1], v64[5]);
                *v644 = *v645;
                v644[1] = v653;
                *v645 = v654;
                v645[1] = v655;
                v656 = v645[2];
                v657 = v645[3];
                v658 = vmlaq_f32(vmlaq_f32(v652, v656, *v64), v644[2], v64[4]);
                v659 = vmlaq_f32(vmlaq_f32(v652, v657, v64[1]), v644[3], v64[5]);
                v644[2] = v656;
                v644[3] = v657;
                v645[2] = v658;
                v645[3] = v659;
                v660 = v645[4];
                v661 = v645[5];
                v662 = vmlaq_f32(vmlaq_f32(v651, v660, v64[2]), v644[4], v64[6]);
                v663 = vmlaq_f32(vmlaq_f32(v652, v661, v64[3]), v644[5], v64[7]);
                v644[4] = v660;
                v644[5] = v661;
                v645[4] = v662;
                v645[5] = v663;
                v645 += 6;
                v644 += 6;
                v647 += 2;
              }

              while (v647 < v646);
            }

            if (v643)
            {
              v664 = &a3[v643 - 1][v352];
              v665 = vld1q_dup_f32(v664);
              v666 = v645[1];
              v667 = vmlaq_f32(vmlaq_f32(v665, *v645, *v64), *v644, v64[4]);
              v668 = vmlaq_f32(vmlaq_f32(v665, v666, v64[1]), v644[1], v64[5]);
              *v644 = *v645;
              v644[1] = v666;
              *v645 = v667;
              v645[1] = v668;
              v669 = v645[2];
              v670 = v645[3];
              v671 = vmlaq_f32(vmlaq_f32(0, v670, v64[3]), v644[3], v64[7]);
              v672 = vmlaq_f32(vmlaq_f32(v665, v669, v64[2]), v644[2], v64[6]);
              v644[2] = v669;
              v644[3] = v670;
              v645[2] = v672;
              v645[3] = v671;
            }

            v352 += a7;
          }
        }
      }

      goto LABEL_247;
    }

    v161 = *(a2 + 17);
    v99 = *(a2 + 18);
    v101 = *(a2 + 22);
    v162 = *(*a2 + 2);
    v163 = *(*a2 + 5);
    v164 = a2[14];
    v165 = a2[17];
    v166 = *(a2 + 15);
    if (*(a2 + 14) == 8)
    {
      if (a6 < 1)
      {
        v213 = 0;
        v26 = 0;
      }

      else
      {
        v167 = 0;
        v26 = 0;
        LODWORD(v168) = 0;
        v169 = 0;
        v170 = a8;
        do
        {
          if (v101 >= 1)
          {
            v171 = 0;
            v168 = v168;
            do
            {
              v172 = *(a2 + 12);
              if (v172)
              {
                v173 = a3;
                v174 = v164;
                v175 = v165;
                do
                {
                  v176 = *v173++;
                  v177 = (v176 + 4 * v168);
                  v178 = vld1q_dup_f32(v177);
                  v179 = v174[1];
                  v180 = vmlaq_f32(v178, v179, v162[1]);
                  v181 = vmlaq_f32(vmlaq_f32(v178, *v174, *v162), *v175, v162[2]);
                  v182 = vmlaq_f32(v180, v175[1], v162[3]);
                  *v175 = *v174;
                  v175[1] = v179;
                  v175 += 2;
                  *v174 = v181;
                  v174[1] = v182;
                  v174 += 2;
                  --v172;
                }

                while (v172);
              }

              v168 += a7;
              ++v171;
            }

            while (v171 != v101);
          }

          v183 = *(a2 + 12);
          if (v183)
          {
            v184 = *(a2 + 12) * (v99 & 0x7FFFFF);
            v185 = (v163 + 32 * ((v99 >> 22) & 0x1FE));
            v186 = a2[26];
            v187 = v164;
            v188 = v165;
            v189 = v186;
            v190 = *(a2 + 12);
            do
            {
              v191 = *v187;
              v192 = v187[1];
              v187 += 2;
              v194 = *v188;
              v193 = v188[1];
              v188 += 2;
              v195 = vaddq_f32(vmlaq_f32(vmulq_f32(v185[2], v194), v191, *v185), vmlaq_f32(vmulq_f32(v185[3], v193), v192, v185[1]));
              *v189++ = vaddv_f32(vadd_f32(*v195.i8, *&vextq_s8(v195, v195, 8uLL)));
              --v190;
            }

            while (v190);
            v196 = a2[29];
            v197 = v164;
            v198 = v165;
            v199 = v196;
            v200 = v183;
            do
            {
              v201 = *v197;
              v202 = v197[1];
              v197 += 2;
              v204 = *v198;
              v203 = v198[1];
              v198 += 2;
              v205 = vaddq_f32(vmlaq_f32(vmulq_f32(v185[6], v204), v201, v185[4]), vmlaq_f32(vmulq_f32(v185[7], v203), v202, v185[5]));
              *v199++ = vaddv_f32(vadd_f32(*v205.i8, *&vextq_s8(v205, v205, 8uLL)));
              --v200;
            }

            while (v200);
            v206 = a4;
            do
            {
              v207 = *v186++;
              v208 = v207;
              v209 = *v196++;
              v210 = v208 + (v184 * (v209 - v208));
              v211 = *v206++;
              *(v211 + 4 * v167) = v210;
              --v183;
            }

            while (v183);
          }

          v26 += v101;
          v212 = v99 + v161;
          v99 = (v99 + v161) & 0x7FFFFFFF;
          v101 = v166 + (v212 >> 31);
          ++v169;
          v167 += v170;
        }

        while (v169 != a6);
        v213 = v168;
      }

      v558 = a5 - v26;
      if (a5 <= v26)
      {
        goto LABEL_275;
      }

      if (v101 < v558)
      {
        v558 = v101;
      }

      if (v558 >= 1)
      {
        for (jj = 0; jj != v558; ++jj)
        {
          v578 = *(a2 + 12);
          if (v578)
          {
            v579 = a3;
            v580 = v164;
            v581 = v165;
            do
            {
              v582 = *v579++;
              v583 = (v582 + 4 * v213);
              v584 = vld1q_dup_f32(v583);
              v585 = v580[1];
              v586 = vmlaq_f32(v584, v585, v162[1]);
              v587 = vmlaq_f32(vmlaq_f32(v584, *v580, *v162), *v581, v162[2]);
              v588 = vmlaq_f32(v586, v581[1], v162[3]);
              *v581 = *v580;
              v581[1] = v585;
              v581 += 2;
              *v580 = v587;
              v580[1] = v588;
              v580 += 2;
              --v578;
            }

            while (v578);
          }

          v213 += a7;
        }
      }

      goto LABEL_274;
    }

    if (a6 < 1)
    {
      v526 = 0;
      v26 = 0;
LABEL_263:
      v558 = a5 - v26;
      if (a5 <= v26)
      {
        goto LABEL_275;
      }

      if (v101 < v558)
      {
        v558 = v101;
      }

      if (v558 >= 1)
      {
        for (kk = 0; kk != v558; ++kk)
        {
          v727 = *(a2 + 12);
          v728 = v165;
          v729 = v164;
          v730 = v727 - (v727 != 0);
          if (v730)
          {
            v731 = 0;
            v729 = v164;
            v728 = v165;
            do
            {
              v732 = &a3[v731];
              v733 = &(*v732)[v526];
              v734 = (*(v732 + 1) + 4 * v526);
              v735 = vld1q_dup_f32(v733);
              v736 = vld1q_dup_f32(v734);
              v737 = v729[1];
              v738 = vmlaq_f32(vmlaq_f32(v735, *v729, *v162), *v728, v162[4]);
              v739 = vmlaq_f32(vmlaq_f32(v735, v737, v162[1]), v728[1], v162[5]);
              *v728 = *v729;
              v728[1] = v737;
              *v729 = v738;
              v729[1] = v739;
              v740 = v729[2];
              v741 = v729[3];
              v742 = vmlaq_f32(vmlaq_f32(v736, v740, *v162), v728[2], v162[4]);
              v743 = vmlaq_f32(vmlaq_f32(v736, v741, v162[1]), v728[3], v162[5]);
              v728[2] = v740;
              v728[3] = v741;
              v729[2] = v742;
              v729[3] = v743;
              v744 = v729[4];
              v745 = v729[5];
              v746 = vmlaq_f32(vmlaq_f32(v735, v744, v162[2]), v728[4], v162[6]);
              v747 = vmlaq_f32(vmlaq_f32(v736, v745, v162[3]), v728[5], v162[7]);
              v728[4] = v744;
              v728[5] = v745;
              v729[4] = v746;
              v729[5] = v747;
              v729 += 6;
              v728 += 6;
              v731 += 2;
            }

            while (v731 < v730);
          }

          if (v727)
          {
            v748 = &a3[v727 - 1][v526];
            v749 = vld1q_dup_f32(v748);
            v750 = v729[1];
            v751 = vmlaq_f32(vmlaq_f32(v749, *v729, *v162), *v728, v162[4]);
            v752 = vmlaq_f32(vmlaq_f32(v749, v750, v162[1]), v728[1], v162[5]);
            *v728 = *v729;
            v728[1] = v750;
            *v729 = v751;
            v729[1] = v752;
            v753 = v729[2];
            v754 = v729[3];
            v755 = vmlaq_f32(vmlaq_f32(0, v754, v162[3]), v728[3], v162[7]);
            v756 = vmlaq_f32(vmlaq_f32(v749, v753, v162[2]), v728[2], v162[6]);
            v728[2] = v753;
            v728[3] = v754;
            v729[2] = v756;
            v729[3] = v755;
          }

          v526 += a7;
        }
      }

      goto LABEL_274;
    }

    v444 = 0;
    v26 = 0;
    v445 = 0;
    LODWORD(v446) = 0;
    v447 = a8;
    while (1)
    {
      if (v101 >= 1)
      {
        v448 = 0;
        v446 = v446;
        do
        {
          v449 = *(a2 + 12);
          v450 = v165;
          v451 = v164;
          v452 = v449 - (v449 != 0);
          if (v452)
          {
            v453 = 0;
            v451 = v164;
            v450 = v165;
            do
            {
              v454 = &a3[v453];
              v455 = &(*v454)[v446];
              v456 = (*(v454 + 1) + 4 * v446);
              v457 = vld1q_dup_f32(v455);
              v458 = vld1q_dup_f32(v456);
              v459 = v451[1];
              v460 = vmlaq_f32(vmlaq_f32(v457, *v451, *v162), *v450, v162[4]);
              v461 = vmlaq_f32(vmlaq_f32(v457, v459, v162[1]), v450[1], v162[5]);
              *v450 = *v451;
              v450[1] = v459;
              *v451 = v460;
              v451[1] = v461;
              v462 = v451[2];
              v463 = v451[3];
              v464 = vmlaq_f32(vmlaq_f32(v458, v462, *v162), v450[2], v162[4]);
              v465 = vmlaq_f32(vmlaq_f32(v458, v463, v162[1]), v450[3], v162[5]);
              v450[2] = v462;
              v450[3] = v463;
              v451[2] = v464;
              v451[3] = v465;
              v466 = v451[4];
              v467 = v451[5];
              v468 = vmlaq_f32(vmlaq_f32(v457, v466, v162[2]), v450[4], v162[6]);
              v469 = vmlaq_f32(vmlaq_f32(v458, v467, v162[3]), v450[5], v162[7]);
              v450[4] = v466;
              v450[5] = v467;
              v451[4] = v468;
              v451[5] = v469;
              v451 += 6;
              v450 += 6;
              v453 += 2;
            }

            while (v453 < v452);
          }

          if (v449)
          {
            v470 = &a3[v449 - 1][v446];
            v471 = vld1q_dup_f32(v470);
            v472 = v451[1];
            v473 = vmlaq_f32(vmlaq_f32(v471, *v451, *v162), *v450, v162[4]);
            v474 = vmlaq_f32(vmlaq_f32(v471, v472, v162[1]), v450[1], v162[5]);
            *v450 = *v451;
            v450[1] = v472;
            *v451 = v473;
            v451[1] = v474;
            v475 = v451[2];
            v476 = v451[3];
            v477 = vmlaq_f32(vmlaq_f32(0, v476, v162[3]), v450[3], v162[7]);
            v478 = vmlaq_f32(vmlaq_f32(v471, v475, v162[2]), v450[2], v162[6]);
            v450[2] = v475;
            v450[3] = v476;
            v451[2] = v478;
            v451[3] = v477;
          }

          v446 += a7;
          ++v448;
        }

        while (v448 != v101);
      }

      v479 = *(a2 + 12);
      v480 = (v163 + 32 * ((v99 >> 21) & 0x3FC));
      v481 = *(a2 + 12);
      v482 = a2[26];
      v483 = v165;
      v484 = v164;
      v485 = v481 - (*(a2 + 12) != 0);
      if (v485)
      {
        v486 = 0;
        v487 = a2[26];
        v484 = v164;
        v483 = v165;
        do
        {
          v488 = v480[1];
          v490 = v480[4];
          v489 = v480[5];
          v491 = vmlaq_f32(vmulq_f32(v489, v483[1]), v484[1], v488);
          v492 = vmlaq_f32(vmulq_f32(v489, v483[3]), v484[3], v488);
          v493 = vmlaq_f32(vmulq_f32(v480[7], v483[5]), v484[5], v480[3]);
          v494 = vmlaq_f32(vmulq_f32(v480[6], v483[4]), v484[4], v480[2]);
          v495 = vaddq_f32(vmlaq_f32(vmulq_f32(v490, *v483), *v484, *v480), v491);
          *v494.i8 = vadd_f32(*v494.i8, *&vextq_s8(v494, v494, 8uLL));
          *v495.i8 = vadd_f32(*v495.i8, *&vextq_s8(v495, v495, 8uLL));
          v496 = vaddq_f32(vmlaq_f32(vmulq_f32(v490, v483[2]), v484[2], *v480), v492);
          *v496.i8 = vadd_f32(*v496.i8, *&vextq_s8(v496, v496, 8uLL));
          *v493.i8 = vadd_f32(*v493.i8, *&vextq_s8(v493, v493, 8uLL));
          *v487++ = vadd_f32(vadd_f32(vzip1_s32(*v495.i8, *v496.i8), vzip2_s32(*v495.i8, *v496.i8)), vadd_f32(vzip1_s32(*v494.i8, *v493.i8), vzip2_s32(*v494.i8, *v493.i8)));
          v484 += 6;
          v483 += 6;
          v486 += 2;
        }

        while (v486 < v485);
      }

      if (v481)
      {
        v497 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[4], *v483), *v484, *v480), vmlaq_f32(vmulq_f32(v480[5], v483[1]), v484[1], v480[1]));
        *v497.i8 = vadd_f32(*v497.i8, *&vextq_s8(v497, v497, 8uLL));
        v498 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[6], v483[2]), v484[2], v480[2]), vmlaq_f32(vmulq_f32(v480[7], v483[3]), v484[3], v480[3]));
        *v498.i8 = vadd_f32(*v498.i8, *&vextq_s8(v498, v498, 8uLL));
        v482[(v481 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v497.i8, *v498.i8), vzip2_s32(*v497.i8, *v498.i8)));
      }

      v499 = a2[29];
      v500 = v165;
      v501 = v164;
      if (v485)
      {
        v502 = 0;
        v503 = a2[29];
        v501 = v164;
        v500 = v165;
        do
        {
          v504 = v480[8];
          v505 = v480[9];
          v507 = v480[12];
          v506 = v480[13];
          v508 = vmlaq_f32(vmulq_f32(v506, v500[1]), v501[1], v505);
          v509 = vmlaq_f32(vmulq_f32(v507, *v500), *v501, v504);
          v510 = vmlaq_f32(vmulq_f32(v506, v500[3]), v501[3], v505);
          v511 = vmlaq_f32(vmulq_f32(v507, v500[2]), v501[2], v504);
          v512 = vmlaq_f32(vmulq_f32(v480[15], v500[5]), v501[5], v480[11]);
          v513 = vmlaq_f32(vmulq_f32(v480[14], v500[4]), v501[4], v480[10]);
          v514 = vaddq_f32(v509, v508);
          *v513.i8 = vadd_f32(*v513.i8, *&vextq_s8(v513, v513, 8uLL));
          *v514.i8 = vadd_f32(*v514.i8, *&vextq_s8(v514, v514, 8uLL));
          v515 = vaddq_f32(v511, v510);
          *v515.i8 = vadd_f32(*v515.i8, *&vextq_s8(v515, v515, 8uLL));
          *v512.i8 = vadd_f32(*v512.i8, *&vextq_s8(v512, v512, 8uLL));
          *v503++ = vadd_f32(vadd_f32(vzip1_s32(*v514.i8, *v515.i8), vzip2_s32(*v514.i8, *v515.i8)), vadd_f32(vzip1_s32(*v513.i8, *v512.i8), vzip2_s32(*v513.i8, *v512.i8)));
          v501 += 6;
          v500 += 6;
          v502 += 2;
        }

        while (v502 < v485);
      }

      v516 = v479 * (v99 & 0x7FFFFF);
      if (v481)
      {
        break;
      }

      v517 = a4;
      if (v481)
      {
        goto LABEL_175;
      }

LABEL_176:
      v26 += v101;
      v525 = v99 + v161;
      v99 = (v99 + v161) & 0x7FFFFFFF;
      v101 = v166 + (v525 >> 31);
      ++v445;
      v444 += v447;
      if (v445 == a6)
      {
        v526 = v446;
        goto LABEL_263;
      }
    }

    v518 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[12], *v500), *v501, v480[8]), vmlaq_f32(vmulq_f32(v480[13], v500[1]), v501[1], v480[9]));
    *v518.i8 = vadd_f32(*v518.i8, *&vextq_s8(v518, v518, 8uLL));
    v519 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[14], v500[2]), v501[2], v480[10]), vmlaq_f32(vmulq_f32(v480[15], v500[3]), v501[3], v480[11]));
    *v519.i8 = vadd_f32(*v519.i8, *&vextq_s8(v519, v519, 8uLL));
    v499[(v481 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v518.i8, *v519.i8), vzip2_s32(*v518.i8, *v519.i8)));
    v517 = a4;
    do
    {
LABEL_175:
      v520 = *v482++;
      v521 = v520;
      v522 = *v499++;
      v523 = v521 + (v516 * (v522 - v521));
      v524 = *v517++;
      *(v524 + 4 * v444) = v523;
      --v481;
    }

    while (v481);
    goto LABEL_176;
  }

  v62 = 0;
  v26 = v759;
LABEL_277:
  *this = v26;
  *(this + 4) = v62;
  result = NAN;
  a2[32] = -1;
  *(a2 + 66) = -1;
  return result;
}

OSStatus AudioFileStreamOpen(void *inClientData, AudioFileStream_PropertyListenerProc inPropertyListenerProc, AudioFileStream_PacketsProc inPacketsProc, AudioFileTypeID inFileTypeHint, AudioFileStreamID *outAudioFileStream)
{
  if (outAudioFileStream)
  {
    operator new();
  }

  return -50;
}

void sub_18F768E84(void *a1, int a2)
{
  BaseOpaqueObject::~BaseOpaqueObject(v2);
  MEMORY[0x193ADF220](v2, 0x10F1C40F59B0EB5);
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  __cxa_end_catch();
  __break(1u);
}

void sub_18F768EE8(void *a1, int a2)
{
  __cxa_end_catch();
  v5 = __cxa_begin_catch(a1);
  if (a2 == v2)
  {
    v6 = *v5;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F768E6CLL);
}

uint64_t AudioFileStreamPrepareToOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    operator new();
  }

  return 4294967246;
}

void sub_18F769058(void *a1, int a2)
{
  MEMORY[0x193ADF220](v3, 0x10F3C40BA36BB60);
  BaseOpaqueObject::~BaseOpaqueObject(v2);
  MEMORY[0x193ADF220](v2, 0x10F1C40F59B0EB5);
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  __cxa_end_catch();
  __break(1u);
}

void sub_18F7690E0(void *a1, int a2)
{
  __cxa_end_catch();
  v5 = __cxa_begin_catch(a1);
  if (a2 == v2)
  {
    v6 = *v5;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F76903CLL);
}

OSStatus AudioFileStreamParseBytes(AudioFileStreamID inAudioFileStream, UInt32 inDataByteSize, const void *inData, AudioFileStreamParseFlags inFlags)
{
  v4 = inFlags;
  v20 = *MEMORY[0x1E69E9840];
  if (inDataByteSize && !inData)
  {
LABEL_3:
    result = -50;
    goto LABEL_27;
  }

  v8 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18[0]) = 136315394;
      *(v18 + 4) = "AudioFileStream.cpp";
      WORD6(v18[0]) = 1024;
      *(v18 + 14) = 122;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", v18, 0x12u);
    }

    goto LABEL_3;
  }

  v9 = v8;
  *(v8 + 88) += *(v8 + 80);
  *(v8 + 72) = inData;
  *(v8 + 80) = inDataByteSize;
  *(v8 + 116) = inDataByteSize;
  if (inDataByteSize || inData)
  {
    for (i = *(v8 + 16); ; *(i + 236) = 0)
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      v11 = v4 | *(i + 176);
      *(i + 176) = v11 & 1;
      if (*(*(i + 8) + 104) == 1 && (v11 & 1) != 0 && ((*(*i + 216))(i) & 1) != 0)
      {
        break;
      }

      v12 = *(i + 240);
      v13 = *(i + 248);
      v14 = (i + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      result = v12(v14, v18);
      *(i + 176) = 0;
      i = *&v18[0];
      if (result)
      {
        v15 = 1;
      }

      else
      {
        v15 = *&v18[0] == 0;
      }

      if (v15)
      {
        goto LABEL_26;
      }

      v16 = *(v9 + 16);
      if (v16 == *&v18[0])
      {
        i = *(v9 + 16);
      }

      else
      {
        *(v9 + 16) = *&v18[0];
        *(i + 8) = v9;
        if (v16)
        {
          (*(*v16 + 8))(v16);
          i = *(v9 + 16);
        }
      }

      *(i + 240) = *(v18 + 8);
    }

    result = 1685283617;
  }

  else
  {
    result = (*(**(v8 + 16) + 16))(*(v8 + 16));
  }

LABEL_26:
  *(v9 + 116) = 0;
LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F769380(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = *v3;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F769350);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamSeek(AudioFileStreamID inAudioFileStream, SInt64 inPacketOffset, SInt64 *outDataByteOffset, AudioFileStreamSeekFlags *ioFlags)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!outDataByteOffset)
  {
LABEL_7:
    result = -50;
    goto LABEL_8;
  }

  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "AudioFileStream.cpp";
      v13 = 1024;
      v14 = 148;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v11, 0x12u);
    }

    goto LABEL_7;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    result = (*(*v8 + 48))(v8, inPacketOffset, outDataByteOffset, ioFlags);
  }

  else
  {
    result = 1836020325;
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7694F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = *v3;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F7694B4);
  }

  _Unwind_Resume(a1);
}

void sub_18F769698(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = *v3;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F769664);
  }

  _Unwind_Resume(a1);
}

void sub_18F769864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = *v3;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F769834);
  }

  _Unwind_Resume(a1);
}

void sub_18F769AFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = *v3;
    }

    __cxa_end_catch();
    JUMPOUT(0x18F769AB4);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamClose(AudioFileStreamID inAudioFileStream)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v1)
  {
    (*(*v1 + 8))(v1);
    result = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "AudioFileStream.cpp";
      v6 = 1024;
      v7 = 242;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v4, 0x12u);
    }

    result = -50;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HOA::getTDesign(HOA *this, _OWORD *__dst, float *a3, float *__C, float *a5)
{
  if (__dst)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  switch(this)
  {
    case 0:
      if (v8)
      {
        *__dst = 0;
        *a3 = 0.0;
      }

      v9 = 1;
      break;
    case 1:
      if (v8)
      {
        *__dst = xmmword_18F901E40;
        *a3 = xmmword_18F901E50;
      }

      v9 = 4;
      break;
    case 2:
      if (v8)
      {
        *__dst = xmmword_18F9035A4;
        __dst[1] = unk_18F9035B4;
        __dst[2] = xmmword_18F9035C4;
        *(a3 + 2) = xmmword_18F9035F4;
        *a3 = xmmword_18F9035D4;
        *(a3 + 1) = unk_18F9035E4;
      }

      v9 = 12;
      break;
    case 3:
      if (v8)
      {
        __dst[2] = xmmword_18F903624;
        __dst[3] = unk_18F903634;
        __dst[4] = xmmword_18F903644;
        __dst[5] = unk_18F903654;
        *__dst = xmmword_18F903604;
        __dst[1] = unk_18F903614;
        *(a3 + 2) = xmmword_18F903684;
        *(a3 + 3) = unk_18F903694;
        *(a3 + 4) = xmmword_18F9036A4;
        *(a3 + 5) = unk_18F9036B4;
        v9 = 24;
        *a3 = xmmword_18F903664;
        *(a3 + 1) = unk_18F903674;
      }

      else
      {
        v9 = 24;
      }

      break;
    case 4:
      if (v8)
      {
        __dst[2] = xmmword_18F9036E4;
        __dst[3] = unk_18F9036F4;
        __dst[8] = xmmword_18F903744;
        __dst[6] = xmmword_18F903724;
        __dst[7] = unk_18F903734;
        __dst[4] = xmmword_18F903704;
        __dst[5] = unk_18F903714;
        *__dst = xmmword_18F9036C4;
        __dst[1] = unk_18F9036D4;
        *(a3 + 6) = xmmword_18F9037B4;
        *(a3 + 7) = unk_18F9037C4;
        *(a3 + 8) = xmmword_18F9037D4;
        *(a3 + 2) = xmmword_18F903774;
        *(a3 + 3) = unk_18F903784;
        *(a3 + 4) = xmmword_18F903794;
        *(a3 + 5) = unk_18F9037A4;
        v9 = 36;
        *a3 = xmmword_18F903754;
        *(a3 + 1) = unk_18F903764;
      }

      else
      {
        v9 = 36;
      }

      break;
    case 5:
      if (v8)
      {
        __dst[12] = xmmword_18F9038A4;
        __dst[13] = unk_18F9038B4;
        __dst[14] = xmmword_18F9038C4;
        __dst[8] = xmmword_18F903864;
        __dst[9] = unk_18F903874;
        __dst[10] = xmmword_18F903884;
        __dst[11] = unk_18F903894;
        __dst[4] = xmmword_18F903824;
        __dst[5] = unk_18F903834;
        __dst[6] = xmmword_18F903844;
        __dst[7] = unk_18F903854;
        *__dst = xmmword_18F9037E4;
        __dst[1] = unk_18F9037F4;
        __dst[2] = xmmword_18F903804;
        __dst[3] = unk_18F903814;
        *(a3 + 12) = xmmword_18F903994;
        *(a3 + 13) = unk_18F9039A4;
        *(a3 + 14) = xmmword_18F9039B4;
        *(a3 + 8) = xmmword_18F903954;
        *(a3 + 9) = unk_18F903964;
        *(a3 + 10) = xmmword_18F903974;
        *(a3 + 11) = unk_18F903984;
        *(a3 + 4) = xmmword_18F903914;
        *(a3 + 5) = unk_18F903924;
        *(a3 + 6) = xmmword_18F903934;
        *(a3 + 7) = unk_18F903944;
        *a3 = xmmword_18F9038D4;
        *(a3 + 1) = unk_18F9038E4;
        v9 = 60;
        *(a3 + 2) = xmmword_18F9038F4;
        *(a3 + 3) = unk_18F903904;
      }

      else
      {
        v9 = 60;
      }

      break;
    case 6:
      if (v8)
      {
        memcpy(__dst, &unk_18F9039C4, 0x150uLL);
        memcpy(a3, &unk_18F903B14, 0x150uLL);
      }

      v9 = 84;
      break;
    case 7:
      if (v8)
      {
        memcpy(__dst, &unk_18F903C64, 0x1B0uLL);
        memcpy(a3, &unk_18F903E14, 0x1B0uLL);
      }

      v9 = 108;
      break;
    case 8:
      if (v8)
      {
        memcpy(__dst, &unk_18F903FC4, 0x240uLL);
        memcpy(a3, &unk_18F904204, 0x240uLL);
      }

      v9 = 144;
      break;
    case 9:
      if (v8)
      {
        memcpy(__dst, &unk_18F904444, 0x2D0uLL);
        memcpy(a3, &unk_18F904714, 0x2D0uLL);
      }

      v9 = 180;
      break;
    case 10:
      if (v8)
      {
        memcpy(__dst, &unk_18F9049E4, 0x360uLL);
        memcpy(a3, &unk_18F904D44, 0x360uLL);
      }

      v9 = 216;
      break;
    case 11:
      if (v8)
      {
        memcpy(__dst, &unk_18F9050A4, 0x428uLL);
        memcpy(a3, &unk_18F9054CC, 0x428uLL);
      }

      v9 = 266;
      break;
    case 12:
      if (v8)
      {
        memcpy(__dst, &unk_18F9058F4, 0x4E8uLL);
        memcpy(a3, &unk_18F905DDC, 0x4E8uLL);
      }

      v9 = 314;
      break;
    case 13:
      if (v8)
      {
        memcpy(__dst, &unk_18F9062C4, 0x5B8uLL);
        memcpy(a3, &unk_18F90687C, 0x5B8uLL);
      }

      v9 = 366;
      break;
    case 14:
      if (v8)
      {
        memcpy(__dst, &unk_18F906E34, 0x698uLL);
        memcpy(a3, &unk_18F9074CC, 0x698uLL);
      }

      v9 = 422;
      break;
    case 15:
      if (v8)
      {
        memcpy(__dst, &unk_18F907B64, 0x788uLL);
        memcpy(a3, &unk_18F9082EC, 0x788uLL);
      }

      v9 = 482;
      break;
    case 16:
      if (v8)
      {
        memcpy(__dst, &unk_18F908A74, 0x888uLL);
        memcpy(a3, &unk_18F9092FC, 0x888uLL);
      }

      v9 = 546;
      break;
    case 17:
      if (v8)
      {
        memcpy(__dst, &unk_18F909B84, 0x998uLL);
        memcpy(a3, &unk_18F90A51C, 0x998uLL);
      }

      v9 = 614;
      break;
    case 18:
      if (v8)
      {
        memcpy(__dst, &unk_18F90AEB4, 0xAB8uLL);
        memcpy(a3, &unk_18F90B96C, 0xAB8uLL);
      }

      v9 = 686;
      break;
    case 19:
      if (v8)
      {
        memcpy(__dst, &unk_18F90C424, 0xBE8uLL);
        memcpy(a3, &unk_18F90D00C, 0xBE8uLL);
      }

      v9 = 762;
      break;
    case 20:
      if (v8)
      {
        memcpy(__dst, &unk_18F90DBF4, 0xD28uLL);
        memcpy(a3, &unk_18F90E91C, 0xD28uLL);
      }

      v9 = 842;
      break;
    case 21:
      if (v8)
      {
        memcpy(__dst, &unk_18F90F644, 0xE78uLL);
        memcpy(a3, &unk_18F9104BC, 0xE78uLL);
      }

      v9 = 926;
      break;
    default:
      if (v8)
      {
        memcpy(__dst, &unk_18F911334, 0xFD8uLL);
        memcpy(a3, &unk_18F91230C, 0xFD8uLL);
      }

      v9 = 1014;
      break;
  }

  if (__C)
  {
    __A = 1.0;
    vDSP_vfill(&__A, __C, 1, v9);
  }

  return v9;
}

uint64_t MP4BoxParser_MovieExtendsHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1835362404)
    {
      return 4294967294;
    }

    if (*(this + 56) == 1)
    {
      v6 = 0;
      v5 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v5, 8uLL, &v6);
      if (result)
      {
        return result;
      }

      v4 = bswap64(v6);
      goto LABEL_10;
    }

    if (!*(this + 56))
    {
      v7 = 0;
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, &v7);
      if (result)
      {
        return result;
      }

      v4 = bswap32(v7);
LABEL_10:
      this[8] = v4;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void MP4BoxParser_MovieExtendsHeader::~MP4BoxParser_MovieExtendsHeader(MP4BoxParser_MovieExtendsHeader *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void sub_18F76A638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(void *a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032C3A0;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), v6);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  a1[5] = 0;
  a1[6] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F76AA20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c69_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F76AB34(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c69_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray *> &&)#1},std::allocator<std::tuple<NSArray *> &>,void ()(NSError,std::tuple<NSArray *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray *> &&)#1},std::allocator<std::tuple<NSArray *> &>,void ()(NSError,std::tuple<NSArray *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C3A0;
  a2[1] = v2;
  return result;
}

void sub_18F76B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v9 + v12));

  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJEE11async_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v7, v8);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F76B318(_Unwind_Exception *a1)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v1 + 32);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v2 - 56);
  _Unwind_Resume(a1);
}

void sub_18F76B544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v9 + v12));

  _Unwind_Resume(a1);
}

void sub_18F76B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v9 + v12));

  _Unwind_Resume(a1);
}

void sub_18F76BA14(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id getAVAudioFormatClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioFormatClass(void)::softClass;
  v7 = getAVAudioFormatClass(void)::softClass;
  if (!getAVAudioFormatClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL21getAVAudioFormatClassv_block_invoke_4337;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL21getAVAudioFormatClassv_block_invoke_4337(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F76BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVAudioChannelLayoutClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke_4324;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke_4324(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9373;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9373(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9782;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9782(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F76BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL28getAVAudioChannelLayoutClassv_block_invoke_4324(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioChannelLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioChannelLayoutClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioChannelLayoutClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "AVAudioChannelLayout"}];

    __break(1u);
  }
}

void AVFAudioLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_4331;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72C0E98;
    v6 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_5085;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72C0F68;
    v6 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_9367;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72C19A0;
    v6 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke_4331(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL21getAVAudioFormatClassv_block_invoke_4337(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFormat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFormatClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioFormatClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "AVAudioFormat"}];

    __break(1u);
  }
}

void sub_18F76C588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17 + 8);

  a9.super_class = AUMessageChannel_XPC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorNS_5tupleIJEEEENS_9allocatorIS8_EEFvS3_OS5_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x1EEE66BB8]();
}

void *_ZNKSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorNS_5tupleIJEEEENS_9allocatorIS8_EEFvS3_OS5_EE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_1F032C4F0;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorNS_5tupleIJEEEENS_9allocatorIS8_EEFvS3_OS5_EED0Ev(uint64_t a1)
{

  JUMPOUT(0x193ADF220);
}

void sub_18F76C830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v12 = v10;

  caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void sub_18F76C9D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(uint64_t a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032CD60;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](a1 + 8, v6);

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v6);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F76CE64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F76CF78(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e20_v20__0__NSError_8B16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::function<void ()(NSError *,std::tuple<BOOL> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::operator()(uint64_t a1, id *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL> &&)#1},std::allocator<std::tuple<BOOL> &>,void ()(NSError,std::tuple<BOOL>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032CD60;
  a2[1] = v2;
  return result;
}

void sub_18F76D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v11 = v10;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void sub_18F76D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v11 = v10;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(void *a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032C8C8;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), v6);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  a1[5] = 0;
  a1[6] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F76D6E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP8NSStringEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c70_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP8NSStringEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F76D7FC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP8NSStringEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c70_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP8NSStringEEEEEE_e30_v24__0__NSError_8__NSString_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP8NSStringEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP8NSStringEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSString *> &&)#1},std::allocator<std::tuple<NSString *> &>,void ()(NSError,std::tuple<NSString *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSString *> &&)#1},std::allocator<std::tuple<NSString *> &>,void ()(NSError,std::tuple<NSString *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C8C8;
  a2[1] = v2;
  return result;
}

void sub_18F76DDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v11 = v10;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void sub_18F76DF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  v8 = v6;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F76E0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  v9 = v7;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F76E408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSXPCListenerEndpoint * {__strong}>::~sync_message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSXPCListenerEndpoint * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP21NSXPCListenerEndpointEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP21NSXPCListenerEndpointEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSXPCListenerEndpoint * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSXPCListenerEndpoint *> &&)#1},std::allocator<std::tuple<NSXPCListenerEndpoint *> &>,void ()(NSError,std::tuple<NSXPCListenerEndpoint *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSXPCListenerEndpoint * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSXPCListenerEndpoint *> &&)#1},std::allocator<std::tuple<NSXPCListenerEndpoint *> &>,void ()(NSError,std::tuple<NSXPCListenerEndpoint *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032CCB8;
  a2[1] = v2;
  return result;
}

void sub_18F76EB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<AUAudioUnitPreset *> * {__strong}>::~sync_message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<AUAudioUnitPreset *> * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP17AUAudioUnitPresetEEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP17AUAudioUnitPresetEEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<AUAudioUnitPreset *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> *> &&)#1},std::allocator<std::tuple<NSArray<AUAudioUnitPreset *> *> &>,void ()(NSError,std::tuple<NSArray<AUAudioUnitPreset *> *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<AUAudioUnitPreset *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> *> &&)#1},std::allocator<std::tuple<NSArray<AUAudioUnitPreset *> *> &>,void ()(NSError,std::tuple<NSArray<AUAudioUnitPreset *> *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032CC10;
  a2[1] = v2;
  return result;
}

void sub_18F76F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSDictionary<NSString *,objc_object *> * {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSDictionary<NSString *,objc_object *> * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSDictionary<NSString *,objc_object *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> *> &&)#1},std::allocator<std::tuple<NSDictionary<NSString *,objc_object *> *> &>,void ()(NSError,std::tuple<NSDictionary<NSString *,objc_object *> *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSDictionary<NSString *,objc_object *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> *> &&)#1},std::allocator<std::tuple<NSDictionary<NSString *,objc_object *> *> &>,void ()(NSError,std::tuple<NSDictionary<NSString *,objc_object *> *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032CB68;
  a2[1] = v2;
  return result;
}

void sub_18F76F7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F76F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F76FCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F76FE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},MIDICIProfileState * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP18MIDICIProfileStateEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP18MIDICIProfileStateEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},MIDICIProfileState * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<MIDICIProfileState *> &&)#1},std::allocator<std::tuple<MIDICIProfileState *> &>,void ()(NSError,std::tuple<MIDICIProfileState *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},MIDICIProfileState * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<MIDICIProfileState *> &&)#1},std::allocator<std::tuple<MIDICIProfileState *> &>,void ()(NSError,std::tuple<MIDICIProfileState *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032CAC0;
  a2[1] = v2;
  return result;
}

void sub_18F770608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  v9 = v7;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F770880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v12 = v11;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSIndexSet * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSIndexSet * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP10NSIndexSetEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP10NSIndexSetEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSIndexSet * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSIndexSet *> &&)#1},std::allocator<std::tuple<NSIndexSet *> &>,void ()(NSError,std::tuple<NSIndexSet *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSIndexSet * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSIndexSet *> &&)#1},std::allocator<std::tuple<NSIndexSet *> &>,void ()(NSError,std::tuple<NSIndexSet *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032CA18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray<NSNumber *> *> &&)#1},std::allocator<std::tuple<NSArray<NSNumber *> *> &>,void ()(NSError,std::tuple<NSArray<NSNumber *> *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C970;
  a2[1] = v2;
  return result;
}

uint64_t caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_message(uint64_t a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032C820;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::__value_func[abi:ne200100](a1 + 8, v6);

  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v6);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F7714D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJfEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJfEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F7715EC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJfEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJfEEEEEE_e20_v20__0__NSError_8f16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::function<void ()(NSError *,std::tuple<float> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<float> &&)#1},std::allocator<std::tuple<float> &>,void ()(NSError,std::tuple<float>)>::operator()(uint64_t a1, id *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<float> &&)#1},std::allocator<std::tuple<float> &>,void ()(NSError,std::tuple<float>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C820;
  a2[1] = v2;
  return result;
}

void sub_18F771E8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 200));
  std::mutex::unlock((v1 + v4));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_18F7720D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v12 = v11;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void sub_18F772260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F7723B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v13 = v11;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void sub_18F772528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},AUParameterTree * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP15AUParameterTreeEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP15AUParameterTreeEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},AUParameterTree * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<AUParameterTree *> &&)#1},std::allocator<std::tuple<AUParameterTree *> &>,void ()(NSError,std::tuple<AUParameterTree *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},AUParameterTree * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<AUParameterTree *> &&)#1},std::allocator<std::tuple<AUParameterTree *> &>,void ()(NSError,std::tuple<AUParameterTree *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C778;
  a2[1] = v2;
  return result;
}

void sub_18F772DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  v14 = v11;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v9 + v13));

  _Unwind_Resume(a1);
}

void sub_18F772FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v9 + v13));

  _Unwind_Resume(a1);
}

void sub_18F7731A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v9 + v13));

  _Unwind_Resume(a1);
}

void sub_18F77356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F7736B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v12 = v11;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(void *a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032C6D0;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), v6);

  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  a1[5] = 0;
  a1[6] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F7737A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP11objc_objectEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c74_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP11objc_objectEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F7738B8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP11objc_objectEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c74_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP11objc_objectEEEEEE_e20_v24__0__NSError_8_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP11objc_objectEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP11objc_objectEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<objc_object *> &&)#1},std::allocator<std::tuple<objc_object *> &>,void ()(NSError,std::tuple<objc_object *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<objc_object *> &&)#1},std::allocator<std::tuple<objc_object *> &>,void ()(NSError,std::tuple<objc_object *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C6D0;
  a2[1] = v2;
  return result;
}

void sub_18F773ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F7740D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::~sync_message(&a9);

  _Unwind_Resume(a1);
}

void sub_18F774DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);
  v7 = v6;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F774F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(va);
  _Unwind_Resume(a1);
}

void sub_18F776600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, void *a24, int a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v65 = *(v62 + 112);
  if (v65)
  {
    *(v62 + 120) = v65;
    operator delete(v65);
  }

  v66 = *(v62 + 88);
  if (v66)
  {
    operator delete(v66);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

auoop::RenderPipeUser *caulk::__expected_detail::base<auoop::RenderPipeUser,NSError * {__strong}>::~base(auoop::RenderPipeUser *this)
{
  if (*(this + 72) == 1)
  {
    auoop::RenderPipeUser::~RenderPipeUser(this);
  }

  else
  {
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJmmmU8__strongP6NSDatabjEE5replyEv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, int a8)
{
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  std::function<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::operator()(a1 + 32, a2, v12);
}

void std::function<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJmmmU8__strongP6NSDatabjEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v5 = 0;
  v2 = 0u;
  v3 = 0u;
  v4 = 0;
  std::function<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData *,BOOL,unsigned int> &&)#1},std::allocator<std::tuple<unsigned long,unsigned long,unsigned long,NSData *,BOOL,unsigned int> &>,void ()(NSError,std::tuple<unsigned long,unsigned long,unsigned long,NSData *,BOOL,unsigned int>)>::operator()(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
  *(v6 + 56) = *(a3 + 8);
  *(v6 + 64) = *(a3 + 16);
  objc_storeStrong((v6 + 72), *(a3 + 24));
  *(v6 + 80) = *(a3 + 32);
  *(v6 + 84) = *(a3 + 36);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData *,BOOL,unsigned int> &&)#1},std::allocator<std::tuple<unsigned long,unsigned long,unsigned long,NSData *,BOOL,unsigned int> &>,void ()(NSError,std::tuple<unsigned long,unsigned long,unsigned long,NSData *,BOOL,unsigned int>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C628;
  a2[1] = v2;
  return result;
}

void sub_18F776F10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18F776FE8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18F7773A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, id a12)
{
  v13 = v12;

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::~sync_message(&a12);
  a9.super_class = AUAudioUnit_XPC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void postNotificationIfNotPosted<caulk::weak_ref<AUAudioUnit_XPC>>(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    std::mutex::lock((WeakRetained + 656));
    if ((v5[648] & 1) == 0)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, @"com.apple.coreaudio.AudioComponentInstanceInvalidated", v5, v3, 0);
      v5[648] = 1;
    }

    std::mutex::unlock((v5 + 656));
  }

  objc_destroyWeak(a1);
}

void sub_18F7778A4(_Unwind_Exception *a1)
{
  v5 = v4;
  std::mutex::unlock(&v3[v5]);

  objc_destroyWeak(v1);
  _Unwind_Resume(a1);
}

void sub_18F778688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v71 + 200) == 1)
  {
    auoop::WorkgroupPropagator::~WorkgroupPropagator(v73);
  }

  *(v74 - 216) = v70;
  std::vector<std::unique_ptr<auoop::PipeSubPool>>::__destroy_vector::operator()[abi:ne200100]((v74 - 216));
  std::recursive_mutex::~recursive_mutex(v72);
  std::__shared_weak_count::~__shared_weak_count(v71);
  operator delete(v76);
  os_unfair_lock_unlock(&auoop::RenderPipePoolManager::instance(void)::global);

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL,BOOL,NSArray * {__strong},NSArray *,BOOL,BOOL,int,unsigned long,unsigned long>::~sync_message(&a70);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL,BOOL,NSArray * {__strong},NSArray *,BOOL,BOOL,int,unsigned long,unsigned long>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbbU8__strongP7NSArrayS7_bbimmEE5replyEv_block_invoke(uint64_t a1, void *a2, char a3, char a4, void *a5, void *a6, char a7, char a8, int a9, uint64_t a10, uint64_t a11)
{
  v16[0] = a3;
  v16[1] = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  std::function<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::operator()(a1 + 32, a2, v16);
}

void std::function<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbbU8__strongP7NSArrayS7_bbimmEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = 0;
  v6 = 0;
  v8 = 0;
  std::function<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL,BOOL,NSArray * {__strong},NSArray *,BOOL,BOOL,int,unsigned long,unsigned long>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL,BOOL,NSArray *,NSArray *,BOOL,BOOL,int,unsigned long,unsigned long> &&)#1},std::allocator<std::tuple<BOOL,BOOL,NSArray *,NSArray *,BOOL,BOOL,int,unsigned long,unsigned long> &>,void ()(NSError,std::tuple<BOOL,BOOL,NSArray *,NSArray *,BOOL,BOOL,int,unsigned long,unsigned long>)>::operator()(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
  *(v6 + 49) = *(a3 + 1);
  objc_storeStrong((v6 + 56), *(a3 + 8));
  objc_storeStrong((v6 + 64), *(a3 + 16));
  *(v6 + 72) = *(a3 + 24);
  *(v6 + 73) = *(a3 + 25);
  *(v6 + 76) = *(a3 + 28);
  *(v6 + 80) = *(a3 + 32);
  *(v6 + 88) = *(a3 + 40);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL,BOOL,NSArray * {__strong},NSArray *,BOOL,BOOL,int,unsigned long,unsigned long>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<BOOL,BOOL,NSArray *,NSArray *,BOOL,BOOL,int,unsigned long,unsigned long> &&)#1},std::allocator<std::tuple<BOOL,BOOL,NSArray *,NSArray *,BOOL,BOOL,int,unsigned long,unsigned long> &>,void ()(NSError,std::tuple<BOOL,BOOL,NSArray *,NSArray *,BOOL,BOOL,int,unsigned long,unsigned long>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C538;
  a2[1] = v2;
  return result;
}

void APAC::RendererDataJSON(unsigned __int8 *a1, float *a2, int a3)
{
  v3 = a2;
  if (!a3)
  {
    goto LABEL_76;
  }

  v5 = *a2;
  v611[0] = 4;
  v612 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v611);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v611);
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1, "mHasData");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v611);
  v7 = *v6;
  *v6 = 4;
  v611[0] = v7;
  v8 = *(v6 + 1);
  *(v6 + 1) = v5;
  v612 = v8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v611);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v612, v7);
  if (*v3 == 1)
  {
LABEL_76:
    v9 = a1;
    v10 = *(v3 + 1);
    v609[0] = 5;
    v610 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v609);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v609);
    v433 = v9;
    v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v9, "mNumParameters");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v609);
    v12 = *v11;
    *v11 = 5;
    v609[0] = v12;
    v13 = *(v11 + 1);
    *(v11 + 1) = v10;
    v610 = v13;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v609);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v610, v12);
    v14 = v10;
    v15 = v433;
    if (v14)
    {
      v16 = 0;
      v434 = (v3 + 1);
      v431 = v3 + 52;
      v432 = v3;
      while (2)
      {
        v17 = *&v434[2 * v16];
        v607[0] = 6;
        v608 = v17;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v607);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v607);
        v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mParamIndexList");
        v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v18, v16);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v607);
        v20 = *v19;
        *v19 = 6;
        v607[0] = v20;
        v21 = *(v19 + 1);
        *(v19 + 1) = v17;
        v608 = v21;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v607);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v608, v20);
        switch(v17)
        {
          case 0:
            v22 = *(v3 + 68);
            v605[0] = 4;
            v606 = v22;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v605);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v605);
            v23 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
            v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v23, "mPositionPresent");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v605);
            v25 = *v24;
            *v24 = 4;
            v605[0] = v25;
            v26 = *(v24 + 1);
            *(v24 + 1) = v22;
            v606 = v26;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v605);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v606, v25);
            if (*(v3 + 68) == 1)
            {
              v27 = *(v3 + 69);
              v603[0] = 4;
              v604 = v27;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v603);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v603);
              v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
              v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v28, "mIsCartesian");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v603);
              v30 = *v29;
              *v29 = 4;
              v603[0] = v30;
              v31 = *(v29 + 1);
              *(v29 + 1) = v27;
              v604 = v31;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v603);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v604, v30);
              if (*(v3 + 69) == 1)
              {
                v32 = v3[22];
                v601[0] = 7;
                v602 = v32;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v601);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v601);
                v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
                v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v33, "mCoordinate");
                v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v34, 0);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v601);
                v36 = *v35;
                *v35 = 7;
                v601[0] = v36;
                v37 = *(v35 + 1);
                *(v35 + 1) = v32;
                v602 = *&v37;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v35);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v601);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v602, v36);
                v38 = v3[23];
                v599[0] = 7;
                v600 = v38;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v599);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v599);
                v39 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
                v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v39, "mCoordinate");
                v41 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v40, 1uLL);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v599);
                v42 = *v41;
                *v41 = 7;
                v599[0] = v42;
                v43 = *(v41 + 1);
                *(v41 + 1) = v38;
                v600 = *&v43;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v599);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v600, v42);
                v44 = v3[24];
                v597[0] = 7;
                v598 = v44;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v597);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v597);
                v45 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
                v46 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v45, "mCoordinate");
                v47 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v46, 2uLL);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v597);
                v48 = *v47;
                *v47 = 7;
                v597[0] = v48;
                v49 = *(v47 + 1);
                *(v47 + 1) = v44;
                v598 = v49;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v597);
                v50 = v597;
              }

              else
              {
                v310 = v3[18];
                v595[0] = 7;
                v596 = v310;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v595);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v595);
                v311 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
                v312 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v311, "mAzimuth");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v595);
                v313 = *v312;
                *v312 = 7;
                v595[0] = v313;
                v314 = *(v312 + 1);
                *(v312 + 1) = v310;
                v596 = *&v314;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v312);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v595);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v596, v313);
                v315 = v3[19];
                v593[0] = 7;
                v594 = v315;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v593);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v593);
                v316 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
                v317 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v316, "mElevation");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v593);
                v318 = *v317;
                *v317 = 7;
                v593[0] = v318;
                v319 = *(v317 + 1);
                *(v317 + 1) = v315;
                v594 = *&v319;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v317);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v593);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v594, v318);
                v320 = v3[20];
                v591[0] = 7;
                v592 = v320;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v591);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v591);
                v321 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
                v322 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v321, "mRadius");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v591);
                v48 = *v322;
                *v322 = 7;
                v591[0] = v48;
                v323 = v322[1];
                v322[1] = v320;
                v592 = v323;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v322);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v591);
                v50 = v591;
              }

              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v50 + 1, v48);
            }

            v324 = *(v3 + 84);
            v589[0] = 4;
            v590 = v324;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v589);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v589);
            v325 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
            v326 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v325, "mRotationPresent");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v589);
            v327 = *v326;
            *v326 = 4;
            v589[0] = v327;
            v328 = *(v326 + 1);
            *(v326 + 1) = v324;
            v590 = v328;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v326);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v589);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v590, v327);
            if (*(v3 + 84) != 1)
            {
              goto LABEL_73;
            }

            v329 = v3[25];
            v587[0] = 7;
            v588 = v329;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v587);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v587);
            v330 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
            v331 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v330, "mQuaternion");
            v332 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v331, 0);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v587);
            v333 = *v332;
            *v332 = 7;
            v587[0] = v333;
            v334 = *(v332 + 1);
            *(v332 + 1) = v329;
            v588 = *&v334;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v332);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v587);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v588, v333);
            v335 = v3[26];
            v585[0] = 7;
            v586 = v335;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v585);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v585);
            v336 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
            v337 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v336, "mQuaternion");
            v338 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v337, 1uLL);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v585);
            v339 = *v338;
            *v338 = 7;
            v585[0] = v339;
            v340 = *(v338 + 1);
            *(v338 + 1) = v335;
            v586 = *&v340;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v338);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v585);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v586, v339);
            v341 = v3[27];
            v583[0] = 7;
            v584 = v341;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v583);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v583);
            v342 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
            v343 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v342, "mQuaternion");
            v344 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v343, 2uLL);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v583);
            v345 = *v344;
            *v344 = 7;
            v583[0] = v345;
            v346 = *(v344 + 1);
            *(v344 + 1) = v341;
            v584 = *&v346;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v344);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v583);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v584, v345);
            v347 = v3[28];
            v581[0] = 7;
            v582 = v347;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v581);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v581);
            v348 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectPosition");
            v349 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v348, "mQuaternion");
            v350 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v349, 3uLL);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v581);
            v54 = *v350;
            *v350 = 7;
            v581[0] = v54;
            v351 = *(v350 + 1);
            *(v350 + 1) = v347;
            v582 = v351;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v350);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v581);
            v56 = v581;
            goto LABEL_72;
          case 1:
            v227 = *(v3 + 116);
            v579[0] = 4;
            v580 = v227;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v579);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v579);
            v228 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectSpread");
            v229 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v228, "mIsCartesian");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v579);
            v230 = *v229;
            *v229 = 4;
            v579[0] = v230;
            v231 = *(v229 + 1);
            *(v229 + 1) = v227;
            v580 = v231;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v229);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v579);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v580, v230);
            v232 = v3[30];
            v577[0] = 7;
            v578 = v232;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v577);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v577);
            v233 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectSpread");
            v234 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v233, "mWidth");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v577);
            v235 = *v234;
            *v234 = 7;
            v577[0] = v235;
            v236 = *(v234 + 1);
            *(v234 + 1) = v232;
            v578 = *&v236;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v234);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v577);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v578, v235);
            v237 = v3[31];
            v575[0] = 7;
            v576 = v237;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v575);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v575);
            v238 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectSpread");
            v239 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v238, "mHeight");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v575);
            v240 = *v239;
            *v239 = 7;
            v575[0] = v240;
            v241 = *(v239 + 1);
            *(v239 + 1) = v237;
            v576 = *&v241;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v239);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v575);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v576, v240);
            v242 = *(v3 + 117);
            v573[0] = 4;
            v574 = v242;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v573);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v573);
            v243 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectSpread");
            v244 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v243, "mHasDepth");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v573);
            v245 = *v244;
            *v244 = 4;
            v573[0] = v245;
            v246 = *(v244 + 1);
            *(v244 + 1) = v242;
            v574 = v246;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v244);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v573);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v574, v245);
            if (*(v3 + 117) != 1)
            {
              goto LABEL_73;
            }

            v247 = v3[32];
            v571[0] = 7;
            v572 = v247;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v571);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v571);
            v248 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectSpread");
            v249 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v248, "mDepth");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v571);
            v54 = *v249;
            *v249 = 7;
            v571[0] = v54;
            v250 = v249[1];
            v249[1] = v247;
            v572 = v250;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v249);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v571);
            v56 = v571;
            goto LABEL_72;
          case 2:
            v132 = v3[33];
            v569[0] = 7;
            v570 = v132;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v569);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v569);
            v133 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mSceneReverb");
            v134 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v133, "mGain");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v569);
            v54 = *v134;
            *v134 = 7;
            v569[0] = v54;
            v135 = v134[1];
            v134[1] = v132;
            v570 = v135;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v134);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v569);
            v56 = v569;
            goto LABEL_72;
          case 3:
            v140 = v3[34];
            v567[0] = 7;
            v568 = v140;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v567);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v567);
            v141 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectDiffuse");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v567);
            v54 = *v141;
            *v141 = 7;
            v567[0] = v54;
            v142 = v141[1];
            v141[1] = v140;
            v568 = v142;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v141);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v567);
            v56 = v567;
            goto LABEL_72;
          case 4:
            v86 = *(v3 + 141);
            v565[0] = 4;
            v566 = v86;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v565);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v565);
            v87 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectChannelLock");
            v88 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v87, "mHasMaxDistance");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v565);
            v89 = *v88;
            *v88 = 4;
            v565[0] = v89;
            v90 = *(v88 + 1);
            *(v88 + 1) = v86;
            v566 = v90;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v88);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v565);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v566, v89);
            if (*(v3 + 141) != 1)
            {
              goto LABEL_73;
            }

            v91 = v3[36];
            v563[0] = 7;
            v564 = v91;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v563);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v563);
            v92 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectChannelLock");
            v93 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v92, "mHasMaxDistance");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v563);
            v54 = *v93;
            *v93 = 7;
            v563[0] = v54;
            v94 = v93[1];
            v93[1] = v91;
            v564 = v94;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v93);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v563);
            v56 = v563;
            goto LABEL_72;
          case 5:
            v265 = v3[37];
            v561[0] = 7;
            v562 = v265;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v561);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v561);
            v266 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectDivergence");
            v267 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v266, "mDivergence");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v561);
            v268 = *v267;
            *v267 = 7;
            v561[0] = v268;
            v269 = *(v267 + 1);
            *(v267 + 1) = v265;
            v562 = *&v269;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v267);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v561);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v562, v268);
            v270 = *(v3 + 152);
            v559[0] = 4;
            v560 = v270;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v559);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v559);
            v271 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectDivergence");
            v272 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v271, "mIsCartesian");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v559);
            v273 = *v272;
            *v272 = 4;
            v559[0] = v273;
            v274 = *(v272 + 1);
            *(v272 + 1) = v270;
            v560 = v274;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v272);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v559);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v560, v273);
            if (*(v3 + 152) == 1)
            {
              v275 = v3[40];
              v557[0] = 7;
              v558 = v275;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v557);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v557);
              v276 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectDivergence");
              v277 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v276, "mIsCartesian");
              v278 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v277, "mPositionRange");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v557);
              v54 = *v278;
              *v278 = 7;
              v557[0] = v54;
              v279 = v278[1];
              v278[1] = v275;
              v558 = v279;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v278);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v557);
              v56 = v557;
            }

            else
            {
              v305 = v3[41];
              v555[0] = 7;
              v556 = v305;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v555);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v555);
              v306 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectDivergence");
              v307 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v306, "mIsCartesian");
              v308 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v307, "mAzimuthRange");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v555);
              v54 = *v308;
              *v308 = 7;
              v555[0] = v54;
              v309 = v308[1];
              v308[1] = v305;
              v556 = v309;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v308);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v555);
              v56 = v555;
            }

            goto LABEL_72;
          case 6:
            v284 = *(v3 + 168);
            v553[0] = 4;
            v554 = v284;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v553);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v553);
            v285 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mIsScreenSizeAdaptationEnabled");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v553);
            v54 = *v285;
            *v285 = 4;
            v553[0] = v54;
            v286 = *(v285 + 1);
            *(v285 + 1) = v284;
            v554 = v286;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v285);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v553);
            v56 = v553;
            goto LABEL_72;
          case 7:
            v143 = *(v3 + 172);
            v551[0] = 4;
            v552 = v143;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v551);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v551);
            v144 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectZoneExclusion");
            v145 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v144, "mIsZoneDefined");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v551);
            v146 = *v145;
            *v145 = 4;
            v551[0] = v146;
            v147 = *(v145 + 1);
            *(v145 + 1) = v143;
            v552 = v147;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v145);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v551);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v552, v146);
            if (*(v3 + 172) == 1)
            {
              v148 = *(v3 + 173);
              v549[0] = 4;
              v550 = v148;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v549);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v549);
              v149 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectZoneExclusion");
              v150 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v149, "mKeepPreviousZone");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v549);
              v151 = *v150;
              *v150 = 4;
              v549[0] = v151;
              v152 = *(v150 + 1);
              *(v150 + 1) = v148;
              v550 = v152;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v150);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v549);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v550, v151);
              if ((*(v3 + 173) & 1) == 0)
              {
                v153 = *(v3 + 174);
                v547[0] = 4;
                v548 = v153;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v547);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v547);
                v154 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectZoneExclusion");
                v155 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v154, "mIsCartesian");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v547);
                v156 = *v155;
                *v155 = 4;
                v547[0] = v156;
                v157 = *(v155 + 1);
                *(v155 + 1) = v153;
                v548 = v157;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v155);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v547);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v548, v156);
                v158 = *(v3 + 175);
                v545[0] = 5;
                v546 = v158;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v545);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v545);
                v159 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mObjectZoneExclusion");
                v160 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v159, "mNumZones");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v545);
                v161 = *v160;
                *v160 = 5;
                v545[0] = v161;
                v162 = *(v160 + 1);
                *(v160 + 1) = v158;
                v546 = v162;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v160);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v545);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v546, v161);
                v163 = *(v3 + 175);
                if (*(v3 + 175))
                {
                  v164 = 0;
                  v165 = v431;
                  v166 = v3;
                  do
                  {
                    v167 = v15;
                    v168 = v14;
                    v169 = *(v166 + 176);
                    v543[0] = 4;
                    v544 = v169;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v543);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v543);
                    v170 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v167, "mObjectZoneExclusion");
                    v171 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v170, "mUsePreDefinedZone");
                    v172 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v171, v164);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v543);
                    v173 = *v172;
                    *v172 = 4;
                    v543[0] = v173;
                    v174 = *(v172 + 1);
                    *(v172 + 1) = v169;
                    v544 = v174;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v172);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v543);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v544, v173);
                    if (*(v166 + 176) == 1)
                    {
                      v175 = *(v166 + 191);
                      v541[0] = 5;
                      v542 = v175;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v541);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v541);
                      v176 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v433, "mObjectZoneExclusion");
                      v177 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v176, "mZoneIndex");
                      v178 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v177, v164);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v541);
                      v179 = *v178;
                      *v178 = 5;
                      v541[0] = v179;
                      v180 = *(v178 + 1);
                      *(v178 + 1) = v175;
                      v542 = v180;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v541);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v542, v179);
                    }

                    else
                    {
                      v181 = *(v3 + 174);
                      v182 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v433, "mObjectZoneExclusion");
                      v183 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v182, "mZone");
                      v184 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v183, v164);
                      if (v181 == 1)
                      {
                        v185 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v184, "cartesian");
                        v186 = *v165;
                        v539[0] = 7;
                        v540 = v186;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v539);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v539);
                        v187 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v185, "mMinX");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v539);
                        v188 = *v187;
                        *v187 = 7;
                        v539[0] = v188;
                        v189 = *(v187 + 1);
                        *(v187 + 1) = v186;
                        v540 = *&v189;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v187);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v539);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v540, v188);
                        v190 = v165[1];
                        v537[0] = 7;
                        v538 = v190;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v537);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v537);
                        v191 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v185, "mMaxX");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v537);
                        v192 = *v191;
                        *v191 = 7;
                        v537[0] = v192;
                        v193 = *(v191 + 1);
                        *(v191 + 1) = v190;
                        v538 = *&v193;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v191);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v537);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v538, v192);
                        v194 = v165[2];
                        v535[0] = 7;
                        v536 = v194;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v535);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v535);
                        v195 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v185, "mMinY");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v535);
                        v196 = *v195;
                        *v195 = 7;
                        v535[0] = v196;
                        v197 = *(v195 + 1);
                        *(v195 + 1) = v194;
                        v536 = *&v197;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v195);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v535);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v536, v196);
                        v198 = v165[3];
                        v533[0] = 7;
                        v534 = v198;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v533);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v533);
                        v199 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v185, "mMaxY");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v533);
                        v200 = *v199;
                        *v199 = 7;
                        v533[0] = v200;
                        v201 = *(v199 + 1);
                        *(v199 + 1) = v198;
                        v534 = *&v201;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v199);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v533);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v534, v200);
                        v202 = v165[4];
                        v531[0] = 7;
                        v532 = v202;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v531);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v531);
                        v203 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v185, "mMinZ");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v531);
                        v204 = *v203;
                        *v203 = 7;
                        v531[0] = v204;
                        v205 = *(v203 + 1);
                        *(v203 + 1) = v202;
                        v532 = *&v205;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v203);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v531);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v532, v204);
                        v206 = v165[5];
                        v529[0] = 7;
                        v530 = v206;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v529);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v529);
                        v207 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v185, "mMaxZ");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v529);
                        v208 = *v207;
                        *v207 = 7;
                        v529[0] = v208;
                        v209 = v207[1];
                        v207[1] = v206;
                        v530 = v209;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v207);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v529);
                        v210 = v529;
                      }

                      else
                      {
                        v211 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v184, "spherical");
                        v212 = *v165;
                        v527[0] = 7;
                        v528 = v212;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v527);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v527);
                        v213 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v211, "mMinAzimuth");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v527);
                        v214 = *v213;
                        *v213 = 7;
                        v527[0] = v214;
                        v215 = *(v213 + 1);
                        *(v213 + 1) = v212;
                        v528 = *&v215;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v213);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v527);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v528, v214);
                        v216 = v165[1];
                        v525[0] = 7;
                        v526 = v216;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v525);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v525);
                        v217 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v211, "mMaxAzimuth");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v525);
                        v218 = *v217;
                        *v217 = 7;
                        v525[0] = v218;
                        v219 = *(v217 + 1);
                        *(v217 + 1) = v216;
                        v526 = *&v219;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v217);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v525);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v526, v218);
                        v220 = v165[2];
                        v523[0] = 7;
                        v524 = v220;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v523);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v523);
                        v221 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v211, "mMinElevation");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v523);
                        v222 = *v221;
                        *v221 = 7;
                        v523[0] = v222;
                        v223 = *(v221 + 1);
                        *(v221 + 1) = v220;
                        v524 = *&v223;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v221);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v523);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v524, v222);
                        v224 = v165[3];
                        v521[0] = 7;
                        v522 = v224;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v521);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v521);
                        v225 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v211, "mMzxElevation");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v521);
                        v208 = *v225;
                        *v225 = 7;
                        v521[0] = v208;
                        v226 = v225[1];
                        v225[1] = v224;
                        v522 = v226;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v225);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v521);
                        v210 = v521;
                      }

                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v210 + 1, v208);
                      v3 = v432;
                    }

                    v14 = v168;
                    ++v164;
                    v166 = (v166 + 1);
                    v165 += 6;
                    --v163;
                    v15 = v433;
                  }

                  while (v163);
                }
              }
            }

            goto LABEL_73;
          case 8:
            v301 = *(v3 + 1037);
            v447[0] = 5;
            v448 = v301;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v447);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v447);
            v302 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mBinauralizationPreset");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v447);
            v54 = *v302;
            *v302 = 5;
            v447[0] = v54;
            v303 = *(v302 + 1);
            *(v302 + 1) = v301;
            v448 = v303;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v302);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v447);
            v56 = v447;
            goto LABEL_72;
          case 9:
            v109 = *(v3 + 568);
            v487[0] = 5;
            v488 = v109;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v487);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v487);
            v110 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mSceneReverb");
            v111 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v110, "mReverbProcIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v487);
            v112 = *v111;
            *v111 = 5;
            v487[0] = v112;
            v113 = *(v111 + 1);
            *(v111 + 1) = v109;
            v488 = v113;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v111);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v487);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v488, v112);
            if (*(v3 + 568) != 1)
            {
              goto LABEL_73;
            }

            v114 = *(v3 + 285);
            v485[0] = 5;
            v486 = v114;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v485);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v485);
            v115 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mSceneReverb");
            v116 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v115, "mAUSMReverbPreset");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v485);
            v117 = *v116;
            *v116 = 5;
            v485[0] = v117;
            v118 = *(v116 + 1);
            *(v116 + 1) = v114;
            v486 = v118;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v116);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v485);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v486, v117);
            v119 = *(v3 + 732);
            v483[0] = 4;
            v484 = v119;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v483);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v483);
            v120 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mSceneReverb");
            v121 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v120, "mReverbParams");
            v122 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v121, "mWetDryMix");
            v123 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v122, "mHasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v483);
            v124 = *v123;
            *v123 = 4;
            v483[0] = v124;
            v125 = *(v123 + 1);
            *(v123 + 1) = v119;
            v484 = v125;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v123);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v483);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v484, v124);
            v126 = v3[182];
            v481[0] = 7;
            v482 = v126;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v481);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v481);
            v127 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mSceneReverb");
            v128 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v127, "mReverbParams");
            v129 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v128, "mWetDryMix");
            v130 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v129, "mValue");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v481);
            v54 = *v130;
            *v130 = 7;
            v481[0] = v54;
            v131 = v130[1];
            v130[1] = v126;
            v482 = v131;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v130);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v481);
            v56 = v481;
            goto LABEL_72;
          case 10:
            v287 = *(v3 + 780);
            v479[0] = 5;
            v480 = v287;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v479);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v479);
            v288 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mPostProcReverb");
            v289 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v288, "mReverbProcIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v479);
            v290 = *v289;
            *v289 = 5;
            v479[0] = v290;
            v291 = *(v289 + 1);
            *(v289 + 1) = v287;
            v480 = v291;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v289);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v479);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v480, v290);
            if (*(v3 + 780) != 1)
            {
              goto LABEL_73;
            }

            v292 = *(v3 + 781);
            v477[0] = 4;
            v478 = v292;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v477);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v477);
            v293 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mPostProcReverb");
            v294 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v293, "mEarlyReflectionTimeProvided");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v477);
            v295 = *v294;
            *v294 = 4;
            v477[0] = v295;
            v296 = *(v294 + 1);
            *(v294 + 1) = v292;
            v478 = v296;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v294);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v477);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v478, v295);
            if (*(v3 + 781) != 1)
            {
              goto LABEL_73;
            }

            v297 = v3[196];
            v475[0] = 7;
            v476 = v297;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v475);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v475);
            v298 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mPostProcReverb");
            v299 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v298, "mEarlyReflectionTime");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v475);
            v54 = *v299;
            *v299 = 7;
            v475[0] = v54;
            v300 = v299[1];
            v299[1] = v297;
            v476 = v300;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v299);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v475);
            v56 = v475;
            goto LABEL_72;
          case 11:
            v60 = *(v3 + 792);
            v473[0] = 5;
            v474 = v60;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v473);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v473);
            v61 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mRadiationPattern");
            v62 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v61, "mAuSMProcIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v473);
            v63 = *v62;
            *v62 = 5;
            v473[0] = v63;
            v64 = *(v62 + 1);
            *(v62 + 1) = v60;
            v474 = v64;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v62);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v473);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v474, v63);
            v65 = *(v3 + 792);
            if (v65 > 2)
            {
              if (v65 == 3)
              {
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v462);
              }

              if (v65 == 4)
              {
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v461);
              }
            }

            else
            {
              if (v65 == 1)
              {
                v392 = *(v3 + 397);
                v471[0] = 5;
                v472 = v392;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v471);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v471);
                v393 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mRadiationPattern");
                v394 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v393, "mSourceType");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v471);
                v54 = *v394;
                *v394 = 5;
                v471[0] = v54;
                v395 = *(v394 + 1);
                *(v394 + 1) = v392;
                v472 = v395;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v394);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v471);
                v56 = v471;
              }

              else
              {
                if (v65 != 2)
                {
                  goto LABEL_73;
                }

                v66 = *(v3 + 796);
                v469[0] = 5;
                v470 = v66;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v469);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v469);
                v67 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mRadiationPattern");
                v68 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v67, "mDataLocationIndex");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v469);
                v69 = *v68;
                *v68 = 5;
                v469[0] = v69;
                v70 = *(v68 + 1);
                *(v68 + 1) = v66;
                v470 = v70;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v68);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v469);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v470, v69);
                v71 = *(v3 + 399);
                v467[0] = 5;
                v468 = v71;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v467);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v467);
                v72 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mRadiationPattern");
                v73 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v72, "mCustomData_TableID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v467);
                v74 = *v73;
                *v73 = 5;
                v467[0] = v74;
                v75 = *(v73 + 1);
                *(v73 + 1) = v71;
                v468 = v75;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v73);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v467);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v468, v74);
                v76 = *(v3 + 400);
                v465[0] = 5;
                v466 = v76;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v465);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v465);
                v77 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mRadiationPattern");
                v78 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v77, "mCustomData_EntryID");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v465);
                v79 = *v78;
                *v78 = 5;
                v465[0] = v79;
                v80 = *(v78 + 1);
                *(v78 + 1) = v76;
                v466 = v80;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v78);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v465);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v466, v79);
                v81 = *(v3 + 401);
                v463[0] = 5;
                v464 = v81;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v463);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v463);
                v82 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mRadiationPattern");
                v83 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v82, "mFallbackCustomIR");
                v84 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v83, "mSourceType");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v463);
                v54 = *v84;
                *v84 = 5;
                v463[0] = v54;
                v85 = *(v84 + 1);
                *(v84 + 1) = v81;
                v464 = v85;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v84);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v463);
                v56 = v463;
              }

LABEL_72:
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v56 + 1, v54);
            }

LABEL_73:
            if (++v16 == v14)
            {
              return;
            }

            continue;
          case 12:
            v95 = *(v3 + 1024);
            v459[0] = 4;
            v460 = v95;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v459);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v459);
            v96 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mHPVirtualize");
            v97 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v96, "mBypass");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v459);
            v98 = *v97;
            *v97 = 4;
            v459[0] = v98;
            v99 = *(v97 + 1);
            *(v97 + 1) = v95;
            v460 = v99;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v97);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v459);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v460, v98);
            v100 = *(v3 + 1025);
            v457[0] = 4;
            v458 = v100;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v457);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v457);
            v101 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mHPVirtualize");
            v102 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v101, "mHasDRR");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v457);
            v103 = *v102;
            *v102 = 4;
            v457[0] = v103;
            v104 = *(v102 + 1);
            *(v102 + 1) = v100;
            v458 = v104;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v102);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v457);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v458, v103);
            if (*(v3 + 1025) != 1)
            {
              goto LABEL_73;
            }

            v105 = v3[257];
            v455[0] = 7;
            v456 = v105;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v455);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v455);
            v106 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mHPVirtualize");
            v107 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v106, "mDRR");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v455);
            v54 = *v107;
            *v107 = 7;
            v455[0] = v54;
            v108 = v107[1];
            v107[1] = v105;
            v456 = v108;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v107);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v455);
            v56 = v455;
            goto LABEL_72;
          case 13:
            v280 = *(v3 + 1032);
            v453[0] = 4;
            v454 = v280;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v453);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v453);
            v281 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mHeadLock");
            v282 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v281, "mHeadLocked");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v453);
            v54 = *v282;
            *v282 = 4;
            v453[0] = v54;
            v283 = *(v282 + 1);
            *(v282 + 1) = v280;
            v454 = v283;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v282);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v453);
            v56 = v453;
            goto LABEL_72;
          case 14:
            v57 = *(v3 + 1035);
            v451[0] = 4;
            v452 = v57;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v451);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v451);
            v58 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mParallax");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v451);
            v54 = *v58;
            *v58 = 4;
            v451[0] = v54;
            v59 = *(v58 + 1);
            *(v58 + 1) = v57;
            v452 = v59;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v451);
            v56 = v451;
            goto LABEL_72;
          case 15:
            v136 = *(v3 + 1036);
            v449[0] = 5;
            v450 = v136;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v449);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v449);
            v137 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mPreferredDoF");
            v138 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v137, "mDoFIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v449);
            v54 = *v138;
            *v138 = 5;
            v449[0] = v54;
            v139 = *(v138 + 1);
            *(v138 + 1) = v136;
            v450 = v139;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v138);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v449);
            v56 = v449;
            goto LABEL_72;
          case 16:
            v51 = v3[260];
            v445[0] = 7;
            v446 = v51;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v445);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v445);
            v52 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mFieldOfView");
            v53 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v52, "mAzimuth");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v445);
            v54 = *v53;
            *v53 = 7;
            v445[0] = v54;
            v55 = v53[1];
            v53[1] = v51;
            v446 = v55;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v53);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v445);
            v56 = v445;
            goto LABEL_72;
          case 17:
            v251 = *(v3 + 1044);
            v519[0] = 4;
            v520 = v251;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v519);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v519);
            v252 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
            v253 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v252, "mIsZoneDefined");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v519);
            v254 = *v253;
            *v253 = 4;
            v519[0] = v254;
            v255 = *(v253 + 1);
            *(v253 + 1) = v251;
            v520 = v255;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v253);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v519);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v520, v254);
            if (*(v3 + 1044) != 1)
            {
              goto LABEL_73;
            }

            v256 = *(v3 + 1045);
            v517[0] = 4;
            v518 = v256;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v517);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v517);
            v257 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
            v258 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v257, "mUsePreDefinedZone");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v517);
            v259 = *v258;
            *v258 = 4;
            v517[0] = v259;
            v260 = *(v258 + 1);
            *(v258 + 1) = v256;
            v518 = v260;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v258);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v517);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v518, v259);
            if (*(v3 + 1045) == 1)
            {
              v261 = *(v3 + 1047);
              v515[0] = 5;
              v516 = v261;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v515);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v515);
              v262 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
              v263 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v262, "mZoneIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v515);
              v54 = *v263;
              *v263 = 5;
              v515[0] = v54;
              v264 = *(v263 + 1);
              *(v263 + 1) = v261;
              v516 = v264;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v263);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v515);
              v56 = v515;
            }

            else
            {
              v352 = *(v3 + 1046);
              v513[0] = 4;
              v514 = v352;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v513);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v513);
              v353 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
              v354 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v353, "mIsCartesian");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v513);
              v355 = *v354;
              *v354 = 4;
              v513[0] = v355;
              v356 = *(v354 + 1);
              *(v354 + 1) = v352;
              v514 = v356;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v354);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v513);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v514, v355);
              if (*(v3 + 1046) == 1)
              {
                v357 = v3[262];
                v511[0] = 7;
                v512 = v357;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v511);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v511);
                v358 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v359 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v358, "mZone");
                v360 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v359, "mMinX");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v511);
                v361 = *v360;
                *v360 = 7;
                v511[0] = v361;
                v362 = *(v360 + 1);
                *(v360 + 1) = v357;
                v512 = *&v362;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v360);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v511);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v512, v361);
                v363 = v3[263];
                v509[0] = 7;
                v510 = v363;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v509);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v509);
                v364 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v365 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v364, "mZone");
                v366 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v365, "mMaxX");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v509);
                v367 = *v366;
                *v366 = 7;
                v509[0] = v367;
                v368 = *(v366 + 1);
                *(v366 + 1) = v363;
                v510 = *&v368;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v366);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v509);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v510, v367);
                v369 = v3[264];
                v507[0] = 7;
                v508 = v369;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v507);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v507);
                v370 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v371 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v370, "mZone");
                v372 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v371, "mMinY");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v507);
                v373 = *v372;
                *v372 = 7;
                v507[0] = v373;
                v374 = *(v372 + 1);
                *(v372 + 1) = v369;
                v508 = *&v374;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v372);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v507);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v508, v373);
                v375 = v3[265];
                v505[0] = 7;
                v506 = v375;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v505);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v505);
                v376 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v377 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v376, "mZone");
                v378 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v377, "mMaxY");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v505);
                v379 = *v378;
                *v378 = 7;
                v505[0] = v379;
                v380 = *(v378 + 1);
                *(v378 + 1) = v375;
                v506 = *&v380;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v378);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v505);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v506, v379);
                v381 = v3[266];
                v503[0] = 7;
                v504 = v381;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v503);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v503);
                v382 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v383 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v382, "mZone");
                v384 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v383, "mMinZ");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v503);
                v385 = *v384;
                *v384 = 7;
                v503[0] = v385;
                v386 = *(v384 + 1);
                *(v384 + 1) = v381;
                v504 = *&v386;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v384);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v503);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v504, v385);
                v387 = v3[267];
                v501[0] = 7;
                v502 = v387;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v501);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v501);
                v388 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v389 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v388, "mZone");
                v390 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v389, "mMaxZ");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v501);
                v54 = *v390;
                *v390 = 7;
                v501[0] = v54;
                v391 = v390[1];
                v390[1] = v387;
                v502 = v391;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v390);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v501);
                v56 = v501;
              }

              else
              {
                v396 = v3[268];
                v499[0] = 7;
                v500 = v396;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v499);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v499);
                v397 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v398 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v397, "mZone");
                v399 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v398, "mMinAzimuth");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v499);
                v400 = *v399;
                *v399 = 7;
                v499[0] = v400;
                v401 = *(v399 + 1);
                *(v399 + 1) = v396;
                v500 = *&v401;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v399);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v499);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v500, v400);
                v402 = v3[269];
                v497[0] = 7;
                v498 = v402;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v497);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v497);
                v403 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v404 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v403, "mZone");
                v405 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v404, "mMaxAzimuth");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v497);
                v406 = *v405;
                *v405 = 7;
                v497[0] = v406;
                v407 = *(v405 + 1);
                *(v405 + 1) = v402;
                v498 = *&v407;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v405);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v497);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v498, v406);
                v408 = v3[270];
                v495[0] = 7;
                v496 = v408;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v495);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v495);
                v409 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v410 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v409, "mZone");
                v411 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v410, "mMinElevation");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v495);
                v412 = *v411;
                *v411 = 7;
                v495[0] = v412;
                v413 = *(v411 + 1);
                *(v411 + 1) = v408;
                v496 = *&v413;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v411);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v495);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v496, v412);
                v414 = v3[271];
                v493[0] = 7;
                v494 = v414;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v493);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v493);
                v415 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v416 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v415, "mZone");
                v417 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v416, "mMaxElevation");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v493);
                v418 = *v417;
                *v417 = 7;
                v493[0] = v418;
                v419 = *(v417 + 1);
                *(v417 + 1) = v414;
                v494 = *&v419;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v417);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v493);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v494, v418);
                v420 = v3[272];
                v491[0] = 7;
                v492 = v420;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v491);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v491);
                v421 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v422 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v421, "mZone");
                v423 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v422, "mMinDistance");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v491);
                v424 = *v423;
                *v423 = 7;
                v491[0] = v424;
                v425 = *(v423 + 1);
                *(v423 + 1) = v420;
                v492 = *&v425;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v423);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v491);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v492, v424);
                v426 = v3[273];
                v489[0] = 7;
                v490 = v426;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v489);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v489);
                v427 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "mMaskingZone");
                v428 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v427, "mZone");
                v429 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v428, "mMaxDistance");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v489);
                v54 = *v429;
                *v429 = 7;
                v489[0] = v54;
                v430 = v429[1];
                v429[1] = v426;
                v490 = v430;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v429);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v489);
                v56 = v489;
              }
            }

            goto LABEL_72;
          case 18:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v444);
          case 19:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v443);
          case 20:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v442);
          case 21:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v441);
          case 22:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v440);
          case 23:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v439);
          case 24:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v438);
          default:
            std::to_string(&v436, v17);
            v304 = std::string::insert(&v436, 0, "Unknown parameter id ", 0x15uLL);
            v437 = *v304;
            v304->__r_.__value_.__l.__size_ = 0;
            v304->__r_.__value_.__r.__words[2] = 0;
            v304->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v436.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v436.__r_.__value_.__l.__data_);
            }

            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[16],char [16],0>(v435);
        }
      }
    }
  }
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = *a1;
    if (v7 > 9)
    {
      v8 = "number";
    }

    else
    {
      v8 = off_1E72C0EB8[v7];
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, v8);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "cannot use operator[] with a string argument with ", &v9);
    nlohmann::detail::type_error::create(exception, 305, &__p);
  }

  v3 = *(a1 + 1);
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v4 = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(v3, &v9, &__p);
  if (!v4)
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_18F77C4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t **a1, int a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, (*a1)[2]);
    v6 = (*a1 + 1);
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v33;
      do
      {
        if (v8 >= v34)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v33 = v8;
        v9 = v7[1];
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
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, ((*a1)[1] - **a1) >> 4);
    v4 = **a1;
    v5 = (*a1)[1];
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v4);
      v4 += 16;
    }
  }

  for (i = v33; v32 != v33; i = v33)
  {
    v15 = *(i - 16);
    v13 = i - 16;
    v14 = v15;
    LOBYTE(v30) = v15;
    v16 = *(v13 + 8);
    v31 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    v17 = v33;
    v18 = v33 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v33 - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v17 - 8, *(v17 - 16));
    v33 = v18;
    if (v15 == 1)
    {
      v24 = *v16;
      if (*v16 == v16 + 1)
      {
        v14 = 1;
      }

      else
      {
        do
        {
          if (v18 >= v34)
          {
            v18 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v24 + 7));
          }

          else
          {
            *v18 = *(v24 + 56);
            *(v18 + 8) = v24[8];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24 + 56);
            *(v24 + 56) = 0;
            v24[8] = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            v18 += 16;
          }

          v33 = v18;
          v25 = v24[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v24[2];
              v11 = *v26 == v24;
              v24 = v26;
            }

            while (!v11);
          }

          v24 = v26;
        }

        while (v26 != v16 + 1);
        v16 = v31;
        v14 = v30;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v16[1]);
      *v16 = (v16 + 1);
      v16[2] = 0;
      v16[1] = 0;
    }

    else if (v14 == 2)
    {
      v19 = *v16;
      v20 = v16[1];
      if (*v16 != v20)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v19);
          v19 += 16;
        }

        while (v19 != v20);
        v19 = *v16;
        v20 = v16[1];
      }

      if (v20 != v19)
      {
        v21 = (v20 - 16);
        v22 = v21;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
          v23 = *v22;
          v22 -= 16;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v21 + 8, v23);
          v11 = v21 == v19;
          v21 = v22;
        }

        while (!v11);
      }

      v16[1] = v19;
      v14 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v14);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v27 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v29 = *v27;
        goto LABEL_53;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_56;
      }

      v27 = *a1;
      v28 = **a1;
      if (v28)
      {
        v27[1] = v28;
        v29 = v28;
LABEL_53:
        operator delete(v29);
        goto LABEL_54;
      }
    }

LABEL_55:
    operator delete(v27);
    goto LABEL_56;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy((*a1)[1]);
    goto LABEL_54;
  }

  if (a2 == 2)
  {
    v30 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
LABEL_54:
    v27 = *a1;
    goto LABEL_55;
  }

LABEL_56:
  v30 = &v32;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](unsigned __int8 *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v43 = *v3;
    if (v43 > 9)
    {
      v44 = "number";
    }

    else
    {
      v44 = off_1E72C0EB8[v43];
    }

    std::string::basic_string[abi:ne200100]<0>(&v48, v44);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, "cannot use operator[] with a numeric argument with ", &v48);
    nlohmann::detail::type_error::create(exception, 305, &v49);
  }

  v4 = *(a1 + 1);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = (v6 - *v4) >> 4;
  if (v7 <= a2)
  {
    v8 = a2 - v7 + 1;
    v48.__r_.__value_.__s.__data_[0] = 0;
    v48.__r_.__value_.__l.__size_ = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v48);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v48);
    if (v2 - v7 != -1)
    {
      v10 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (v8 > (v9 - v10) >> 4)
      {
        v11 = *v4;
        v12 = v8 + ((v10 - *v4) >> 4);
        if (v12 >> 60)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v11;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        v51 = v4;
        if (v14)
        {
          std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v14);
        }

        v34 = v2;
        v35 = (16 * ((v6 - v11) >> 4));
        v49.__r_.__value_.__r.__words[0] = 0;
        v49.__r_.__value_.__l.__size_ = v35;
        v49.__r_.__value_.__r.__words[2] = v35;
        v50 = 0;
        v36 = &v35[16 * (v2 - v7) + 16];
        v37 = 16 * v34 - 16 * v7 + 16;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v35, &v48);
          v35 += 16;
          v37 -= 16;
        }

        while (v37);
        v49.__r_.__value_.__r.__words[2] = v36;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v4, v6, *(v4 + 8), v36);
        v49.__r_.__value_.__r.__words[2] += *(v4 + 8) - v6;
        *(v4 + 8) = v6;
        v38 = v49.__r_.__value_.__l.__size_ + *v4 - v6;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v4, *v4, v6, v38);
        v39 = *v4;
        *v4 = v38;
        v49.__r_.__value_.__r.__words[0] = v39;
        v49.__r_.__value_.__l.__size_ = v39;
        *(v4 + 8) = *(&v49.__r_.__value_.__l + 2);
        v49.__r_.__value_.__r.__words[2] = v39;
        v40 = *(v4 + 16);
        *(v4 + 16) = v50;
        v50 = v40;
        std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v49);
        v2 = v34;
        goto LABEL_37;
      }

      v15 = v10 - v6;
      v46 = v2 - v7 + 1;
      if (v8 <= (v10 - v6) >> 4)
      {
        v47 = v2;
        v17 = *(v4 + 8);
        v16 = v2 - v7 + 1;
        goto LABEL_21;
      }

      v16 = v15 >> 4;
      v17 = v10 + 16 * (v8 - (v15 >> 4));
      v18 = 16 * v2 - 16 * (v7 + (v15 >> 4)) + 16;
      v19 = *(v4 + 8);
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v19, &v48);
        v19 += 16;
        v18 -= 16;
      }

      while (v18);
      *(v4 + 8) = v17;
      v8 = v2 - v7 + 1;
      if (v10 != v6)
      {
        v47 = v2;
LABEL_21:
        v45 = v3;
        v20 = v17 - 16 * v8;
        v21 = v17;
        if (v20 < v10)
        {
          v22 = v20;
          v21 = v17;
          do
          {
            *v21 = *v22;
            *(v21 + 8) = *(v22 + 8);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
            *v22 = 0;
            *(v22 + 8) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
            v22 += 16;
            v21 += 16;
          }

          while (v22 < v10);
        }

        *(v4 + 8) = v21;
        if (v20 != v6)
        {
          v23 = 0;
          v24 = v17 + 16 * v7 - 16 * v47;
          do
          {
            v49.__r_.__value_.__s.__data_[0] = *(v24 + v23 - 32);
            v25 = v49.__r_.__value_.__s.__data_[0];
            v49.__r_.__value_.__l.__size_ = *(v24 + v23 - 24);
            size = v49.__r_.__value_.__l.__size_;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v24 + v23 - 32));
            *(v24 + v23 - 32) = 0;
            *(v24 + v23 - 24) = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
            v27 = (v17 + v23 - 16);
            v28 = *v27;
            *v27 = v25;
            v49.__r_.__value_.__s.__data_[0] = v28;
            v29 = *(v17 + v23 - 8);
            *(v27 + 1) = size;
            v49.__r_.__value_.__l.__size_ = v29;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v49.__r_.__value_.__l.__size_, v28);
            v23 -= 16;
          }

          while (v24 + v23 - 16 != v6);
        }

        v30 = &v48;
        if (v6 <= &v48)
        {
          v31 = v46;
          if (*(v4 + 8) <= &v48)
          {
            v31 = 0;
          }

          v30 = (&v48 + 16 * v31);
        }

        v3 = v45;
        v2 = v47;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v49, v30);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
          v32 = *v6;
          *v6 = v49.__r_.__value_.__s.__data_[0];
          v49.__r_.__value_.__s.__data_[0] = v32;
          v33 = *(v6 + 8);
          *(v6 + 8) = v49.__r_.__value_.__l.__size_;
          v49.__r_.__value_.__l.__size_ = v33;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v49);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v49.__r_.__value_.__l.__size_, v49.__r_.__value_.__s.__data_[0]);
          v6 += 16;
          --v16;
        }

        while (v16);
      }
    }

LABEL_37:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v48);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v48.__r_.__value_.__l.__size_, v48.__r_.__value_.__s.__data_[0]);
    v5 = **(v3 + 1);
  }

  return &v5[16 * v2];
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[16],char [16],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::detail::type_error::create(uint64_t a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  std::operator+<char>();
  v6 = std::string::append(&v26, ".", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, a2);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v27, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v28, "] ", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::string::append(&v22, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24 = v17->__r_.__value_.__r.__words[2];
  *v23 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  *a1 = &unk_1F0336C18;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), v19);
  *a1 = &unk_1F0336BF0;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_18F77D130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::exception::~exception(v41);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::type_error::~type_error(std::runtime_error *this)
{
  this->__vftable = &unk_1F0336C18;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F0336C18;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

void nlohmann::detail::exception::~exception(std::runtime_error *this)
{
  this->__vftable = &unk_1F0336C18;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

{
  this->__vftable = &unk_1F0336C18;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          operator new();
        }

        goto LABEL_18;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_18;
    }

    v6 = *(a2 + 1);
    goto LABEL_17;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v9 = *(a2 + 1);
      operator new();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      operator new();
    }

    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v10 = *(a2 + 1);
    operator new();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_17:
    *(a1 + 1) = v6;
  }

LABEL_18:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    v8 = v6;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v9 = *v8;
      v8 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
      v6 = v8;
    }

    while (v8 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 16;
      v5 = v2 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
        v6 = *v5;
        v5 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v4 + 8, v6);
        v7 = v4 == v3;
        v4 = v5;
      }

      while (!v7);
    }
  }

  return a1;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v8 = *v7;
        v7 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v8);
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 64, a1[56]);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_18F77DC04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_18F77DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void APAC::MetadataJSON(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v2082[0] = 0;
  v2083 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2082);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2082);
  v3 = *a1;
  v2080[0] = 5;
  v2081 = v3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2080);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2080);
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "header");
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v4, "syncWords");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2080);
  v6 = *v5;
  *v5 = 5;
  v2080[0] = v6;
  v7 = *(v5 + 1);
  *(v5 + 1) = v3;
  v2081 = v7;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2080);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2081, v6);
  v8 = a1[1];
  v2078[0] = 5;
  v2079 = v8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2078);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2078);
  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "header");
  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v9, "chunkSize");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2078);
  v11 = *v10;
  *v10 = 5;
  v2078[0] = v11;
  v12 = *(v10 + 1);
  *(v10 + 1) = v8;
  v2079 = v12;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2078);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2079, v11);
  v13 = *(a1 + 4);
  v2076[0] = 5;
  v2077 = v13;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2076);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2076);
  v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "header");
  v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v14, "version");
  v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v15, "major");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2076);
  v17 = *v16;
  *v16 = 5;
  v2076[0] = v17;
  v18 = *(v16 + 1);
  *(v16 + 1) = v13;
  v2077 = v18;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2076);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2077, v17);
  v19 = *(a1 + 5);
  v2074[0] = 5;
  v2075 = v19;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2074);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2074);
  v20 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "header");
  v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v20, "version");
  v22 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v21, "minor");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2074);
  v23 = *v22;
  *v22 = 5;
  v2074[0] = v23;
  v24 = *(v22 + 1);
  *(v22 + 1) = v19;
  v2075 = v24;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2074);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2075, v23);
  v25 = *(a1 + 6);
  v2072[0] = 4;
  v2073 = v25;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2072);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2072);
  v26 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "header");
  v27 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v26, "informationFrame");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2072);
  v28 = *v27;
  *v27 = 4;
  v2072[0] = v28;
  v29 = *(v27 + 1);
  *(v27 + 1) = v25;
  v2073 = v29;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2072);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2073, v28);
  if (*(a1 + 4) != 1 || (v30 = *(a1 + 5), (v30 - 4) <= 0xFFFFFFFC))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "unsupported version";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v1638 = a1;
  if (v30 != 3)
  {
    if (v30 == 2)
    {
      v31 = a1 + 86582;
      if (*(a1 + 6) == 1)
      {
        v1650 = a1 + 86582;
        v32 = *(a1 + 8);
        v2070[0] = 4;
        v2071 = v32;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2070);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2070);
        v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "staticMetadata");
        v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v33, "refScreen");
        v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v34, "hasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2070);
        v36 = *v35;
        *v35 = 4;
        v2070[0] = v36;
        v37 = *(v35 + 1);
        *(v35 + 1) = v32;
        v2071 = v37;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v35);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2070);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2071, v36);
        v38 = *(a1 + 436);
        v2068[0] = 4;
        v2069 = v38;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2068);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2068);
        v39 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "staticMetadata");
        v40 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v39, "groupStaticData");
        v41 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v40, "hasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2068);
        v42 = *v41;
        *v41 = 4;
        v2068[0] = v42;
        v43 = *(v41 + 1);
        *(v41 + 1) = v38;
        v2069 = v43;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v41);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2068);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2069, v42);
        v44 = *(a1 + 27872);
        v2066[0] = 5;
        v2067 = v44;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2066);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2066);
        v45 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "staticMetadata");
        v46 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v45, "sceneComponentStaticData");
        v47 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v46, "ASCCount");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2066);
        v48 = *v47;
        *v47 = 5;
        v2066[0] = v48;
        v49 = *(v47 + 1);
        *(v47 + 1) = v44;
        v2067 = v49;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v47);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2066);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2067, v48);
        v1658 = *(a1 + 27872);
        if (*(a1 + 27872))
        {
          v50 = 0;
          v1654 = a1 + 13938;
          v51 = a1 + 13978;
          while (1)
          {
            v52 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "staticMetadata");
            v53 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v52, "sceneComponentStaticData");
            v54 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v53, "ASCData");
            v55 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v54, v50);
            v56 = &v1654[572 * v50];
            v57 = *v56;
            v2064[0] = 5;
            v2065 = v57;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2064);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2064);
            v58 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "sceneComponentID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2064);
            v59 = *v58;
            *v58 = 5;
            v2064[0] = v59;
            v60 = *(v58 + 1);
            *(v58 + 1) = v57;
            v2065 = v60;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2064);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2065, v59);
            v61 = *(v56 + 1);
            v2062[0] = 5;
            v2063 = v61;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2062);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2062);
            v62 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "sceneComponentType");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2062);
            v63 = *v62;
            *v62 = 5;
            v2062[0] = v63;
            v64 = *(v62 + 1);
            *(v62 + 1) = v61;
            v2063 = v64;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v62);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2062);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2063, v63);
            v65 = *(v56 + 2);
            v2060[0] = 5;
            v2061 = v65;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2060);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2060);
            v66 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "startChannelIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2060);
            v67 = *v66;
            *v66 = 5;
            v2060[0] = v67;
            v68 = *(v66 + 1);
            *(v66 + 1) = v65;
            v2061 = v68;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2060);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2061, v67);
            v69 = *(v56 + 3);
            v2058[0] = 5;
            v2059 = v69;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2058);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2058);
            v70 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "rendererSubType");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2058);
            v71 = *v70;
            *v70 = 5;
            v2058[0] = v71;
            v72 = *(v70 + 1);
            *(v70 + 1) = v69;
            v2059 = v72;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v70);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2058);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2059, v71);
            v73 = *(v56 + 4);
            v2056[0] = 5;
            v2057 = v73;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2056);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2056);
            v74 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "rendererVersion");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2056);
            v75 = *v74;
            *v74 = 5;
            v2056[0] = v75;
            v76 = *(v74 + 1);
            *(v74 + 1) = v73;
            v2057 = v76;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v74);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2056);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2057, v75);
            v77 = *(v56 + 2);
            v2054[0] = 5;
            v2055 = v77;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2054);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2054);
            v78 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "channelLayoutTag");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2054);
            v79 = *v78;
            *v78 = 5;
            v2054[0] = v79;
            v80 = *(v78 + 1);
            *(v78 + 1) = v77;
            v2055 = v80;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v78);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2054);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2055, v79);
            v81 = *(v56 + 12);
            v2052[0] = 5;
            v2053 = v81;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2052);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2052);
            v82 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "HOAOrder");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2052);
            v83 = *v82;
            *v82 = 5;
            v2052[0] = v83;
            v84 = *(v82 + 1);
            *(v82 + 1) = v81;
            v2053 = v84;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v82);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2052);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2053, v83);
            v85 = *(v56 + 13);
            v2050[0] = 5;
            v2051 = v85;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2050);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2050);
            v86 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "HOAOrdering");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2050);
            v87 = *v86;
            *v86 = 5;
            v2050[0] = v87;
            v88 = *(v86 + 1);
            *(v86 + 1) = v85;
            v2051 = v88;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v86);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2050);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2051, v87);
            v89 = *(v56 + 14);
            v2048[0] = 5;
            v2049 = v89;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2048);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2048);
            v90 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "HOANormalization");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2048);
            v91 = *v90;
            *v90 = 5;
            v2048[0] = v91;
            v92 = *(v90 + 1);
            *(v90 + 1) = v89;
            v2049 = v92;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v90);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2048);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2049, v91);
            v93 = *(v56 + 16);
            v2046[0] = 4;
            v2047 = v93;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2046);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2046);
            v94 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "NFCRefDist");
            v95 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v94, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2046);
            v96 = *v95;
            *v95 = 4;
            v2046[0] = v96;
            v97 = *(v95 + 1);
            *(v95 + 1) = v93;
            v2047 = v97;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v95);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2046);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2047, v96);
            v98 = *(v56 + 24);
            v2044[0] = 4;
            v2045 = v98;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2044);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2044);
            v99 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "screenRef");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2044);
            v100 = *v99;
            *v99 = 4;
            v2044[0] = v100;
            v101 = *(v99 + 1);
            *(v99 + 1) = v98;
            v2045 = v101;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2044);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2045, v100);
            v102 = *(v56 + 28);
            v2042[0] = 4;
            v2043 = v102;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2042);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2042);
            v103 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
            v104 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v103, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2042);
            v105 = *v104;
            *v104 = 4;
            v2042[0] = v105;
            v106 = *(v104 + 1);
            *(v104 + 1) = v102;
            v2043 = v106;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v104);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2042);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2043, v105);
            if (*(v56 + 28) == 1)
            {
              v107 = *(v56 + 29);
              v2040[0] = 5;
              v2041 = v107;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2040);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2040);
              v108 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
              v109 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v108, "numParameters");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2040);
              v110 = *v109;
              *v109 = 5;
              v2040[0] = v110;
              v111 = *(v109 + 1);
              *(v109 + 1) = v107;
              v2041 = v111;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v109);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2040);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2041, v110);
              if (*(v56 + 29))
              {
                break;
              }
            }

LABEL_39:
            v197 = *(v56 + 112);
            v2003[0] = 4;
            v2004 = v197;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2003);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2003);
            v198 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "dolbyStaticData");
            v199 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v198, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2003);
            v200 = *v199;
            *v199 = 4;
            v2003[0] = v200;
            v201 = *(v199 + 1);
            *(v199 + 1) = v197;
            v2004 = v201;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v199);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2003);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2004, v200);
            v202 = *(v56 + 114);
            v2001[0] = 4;
            v2002 = v202;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2001);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2001);
            v203 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "extASCStaticData");
            v204 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v203, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2001);
            v205 = *v204;
            *v204 = 4;
            v2001[0] = v205;
            v206 = *(v204 + 1);
            *(v204 + 1) = v202;
            v2002 = v206;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v204);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2001);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2002, v205);
            ++v50;
            v51 += 572;
            a1 = v1638;
            if (v50 == v1658)
            {
              goto LABEL_40;
            }
          }

          v112 = 0;
          while (1)
          {
            v113 = *(v51 + v112);
            v2038[0] = 5;
            v2039 = v113;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2038);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2038);
            v114 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
            v115 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v114, "paramIndexList");
            v116 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v115, v112);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2038);
            v117 = *v116;
            *v116 = 5;
            v2038[0] = v117;
            v118 = *(v116 + 1);
            *(v116 + 1) = v113;
            v2039 = v118;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v116);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2038);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2039, v117);
            v119 = *(v51 + v112);
            if (v119 <= 3)
            {
              if (*(v51 + v112) > 1u)
              {
                if (v119 == 2)
                {
                  v185 = *(v56 + 32);
                  v2032[0] = 5;
                  v2033 = v185;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2032);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2032);
                  v186 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v187 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v186, "productionCoordinate");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2032);
                  v141 = *v187;
                  *v187 = 5;
                  v2032[0] = v141;
                  v188 = *(v187 + 1);
                  *(v187 + 1) = v185;
                  v2033 = v188;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v187);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2032);
                  v143 = v2032;
                }

                else
                {
                  if (v119 != 3)
                  {
                    goto LABEL_29;
                  }

                  v144 = *(v56 + 34);
                  v2030[0] = 5;
                  v2031 = v144;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2030);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2030);
                  v145 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v146 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v145, "sceneReverb");
                  v147 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v146, "reverbProcIndex");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2030);
                  v148 = *v147;
                  *v147 = 5;
                  v2030[0] = v148;
                  v149 = *(v147 + 1);
                  *(v147 + 1) = v144;
                  v2031 = v149;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v147);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2030);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2031, v148);
                  v150 = *(v56 + 34);
                  if (v150 == 1)
                  {
                    v151 = *(v56 + 18);
                    v2028[0] = 5;
                    v2029 = v151;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2028);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2028);
                    v152 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                    v153 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v152, "sceneReverb");
                    v154 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v153, "reverbProcPreset");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2028);
                    v155 = *v154;
                    *v154 = 5;
                    v2028[0] = v155;
                    v156 = *(v154 + 1);
                    *(v154 + 1) = v151;
                    v2029 = v156;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v154);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2028);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2029, v155);
                    v157 = *(v56 + 38);
                    v2026[0] = 5;
                    v2027 = v157;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2026);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2026);
                    v158 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                    v159 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v158, "sceneReverb");
                    v160 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v159, "mixLevel");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2026);
                    v161 = *v160;
                    *v160 = 5;
                    v2026[0] = v161;
                    v162 = *(v160 + 1);
                    *(v160 + 1) = v157;
                    v2027 = v162;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v160);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2026);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2027, v161);
                    v150 = *(v56 + 34);
                  }

                  if (v150 != 2)
                  {
                    goto LABEL_38;
                  }

                  v163 = *(v56 + 39);
                  v2024[0] = 5;
                  v2025 = v163;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2024);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2024);
                  v164 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v165 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v164, "sceneReverb");
                  v166 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v165, "codeBookID");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2024);
                  v167 = *v166;
                  *v166 = 5;
                  v2024[0] = v167;
                  v168 = *(v166 + 1);
                  *(v166 + 1) = v163;
                  v2025 = v168;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v166);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2024);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2025, v167);
                  v169 = *(v56 + 20);
                  v2022[0] = 5;
                  v2023 = v169;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2022);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2022);
                  v170 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v171 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v170, "sceneReverb");
                  v172 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v171, "IRFilterID");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2022);
                  v173 = *v172;
                  *v172 = 5;
                  v2022[0] = v173;
                  v174 = *(v172 + 1);
                  *(v172 + 1) = v169;
                  v2023 = v174;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v172);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2022);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2023, v173);
                  v175 = *(v56 + 38);
                  v2020[0] = 5;
                  v2021 = v175;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2020);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2020);
                  v176 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v177 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v176, "sceneReverb");
                  v178 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v177, "mixLevel");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2020);
                  v141 = *v178;
                  *v178 = 5;
                  v2020[0] = v141;
                  v179 = *(v178 + 1);
                  *(v178 + 1) = v175;
                  v2021 = v179;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v178);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2020);
                  v143 = v2020;
                }
              }

              else if (*(v51 + v112))
              {
                v138 = *(v56 + 31);
                v2034[0] = 4;
                v2035 = v138;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2034);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2034);
                v139 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                v140 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v139, "isCSPhase");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2034);
                v141 = *v140;
                *v140 = 4;
                v2034[0] = v141;
                v142 = *(v140 + 1);
                *(v140 + 1) = v138;
                v2035 = v142;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v140);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2034);
                v143 = v2034;
              }

              else
              {
                v181 = *(v56 + 30);
                v2036[0] = 4;
                v2037 = v181;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2036);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2036);
                v182 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                v183 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v182, "isComplexSH");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2036);
                v141 = *v183;
                *v183 = 4;
                v2036[0] = v141;
                v184 = *(v183 + 1);
                *(v183 + 1) = v181;
                v2037 = v184;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v183);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2036);
                v143 = v2036;
              }
            }

            else if (*(v51 + v112) <= 5u)
            {
              if (v119 != 4)
              {
                if (v119 == 5)
                {
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v2017);
                }

LABEL_29:
                std::to_string(&v2006, v119);
                v180 = std::string::insert(&v2006, 0, "Unknown parameter id ", 0x15uLL);
                v2007 = *v180;
                v180->__r_.__value_.__l.__size_ = 0;
                v180->__r_.__value_.__r.__words[2] = 0;
                v180->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v2006.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v2006.__r_.__value_.__l.__data_);
                }

                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[16],char [16],0>(v2005);
              }

              v189 = *(v56 + 42);
              v2018[0] = 5;
              v2019 = v189;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2018);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2018);
              v190 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
              v191 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v190, "PostProcReverbIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2018);
              v141 = *v191;
              *v191 = 5;
              v2018[0] = v141;
              v192 = *(v191 + 1);
              *(v191 + 1) = v189;
              v2019 = v192;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v191);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2018);
              v143 = v2018;
            }

            else
            {
              if (v119 == 6)
              {
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v2016);
              }

              if (v119 != 7)
              {
                if (v119 == 8)
                {
                  v120 = v56[17];
                  v2012[0] = 7;
                  v2013 = v120;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2012);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2012);
                  v121 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v122 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v121, "hoaRotation");
                  v123 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v122, "pitch");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2012);
                  v124 = *v123;
                  *v123 = 7;
                  v2012[0] = v124;
                  v125 = *(v123 + 1);
                  *(v123 + 1) = v120;
                  v2013 = *&v125;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v123);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2012);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2013, v124);
                  v126 = v56[18];
                  v2010[0] = 7;
                  v2011 = v126;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2010);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2010);
                  v127 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v128 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v127, "hoaRotation");
                  v129 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v128, "yaw");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2010);
                  v130 = *v129;
                  *v129 = 7;
                  v2010[0] = v130;
                  v131 = *(v129 + 1);
                  *(v129 + 1) = v126;
                  v2011 = *&v131;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v129);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2010);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2011, v130);
                  v132 = v56[19];
                  v2008[0] = 7;
                  v2009 = v132;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2008);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2008);
                  v133 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
                  v134 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v133, "hoaRotation");
                  v135 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v134, "roll");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2008);
                  v136 = *v135;
                  *v135 = 7;
                  v2008[0] = v136;
                  v137 = *(v135 + 1);
                  *(v135 + 1) = v132;
                  v2009 = *&v137;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v135);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2008);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2009, v136);
                }

                goto LABEL_29;
              }

              v193 = *(v56 + 64);
              v2014[0] = 5;
              v2015 = v193;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2014);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2014);
              v194 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "proprietaryStaticData");
              v195 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v194, "HCFilterCodeBookID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2014);
              v141 = *v195;
              *v195 = 5;
              v2014[0] = v141;
              v196 = *(v195 + 1);
              *(v195 + 1) = v193;
              v2015 = v196;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v195);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2014);
              v143 = v2014;
            }

            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v143 + 1, v141);
LABEL_38:
            if (++v112 >= *(v56 + 29))
            {
              goto LABEL_39;
            }
          }
        }

LABEL_40:
        v31 = v1650;
        v207 = *v1650;
        v1999[0] = 4;
        v2000 = v207;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1999);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1999);
        v208 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "staticMetadata");
        v209 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v208, "extStaticData");
        v210 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v209, "hasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1999);
        v211 = *v210;
        *v210 = 4;
        v1999[0] = v211;
        v212 = *(v210 + 1);
        *(v210 + 1) = v207;
        v2000 = v212;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v210);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1999);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v2000, v211);
      }

      v213 = *(v31 + 1028);
      v1997[0] = 4;
      v1998 = v213;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1997);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1997);
      v214 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "dynamicMetadata");
      v215 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v214, "groupDynamicData");
      v216 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v215, "hasData");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1997);
      v217 = *v216;
      *v216 = 4;
      v1997[0] = v217;
      v218 = *(v216 + 1);
      *(v216 + 1) = v213;
      v1998 = v218;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v216);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1997);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1998, v217);
      v219 = *(a1 + 206708);
      v1995[0] = 5;
      v1996 = v219;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1995);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1995);
      v220 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "dynamicMetadata");
      v221 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v220, "sceneComponentDynamicData");
      v222 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v221, "ASCCount");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1995);
      v223 = *v222;
      *v222 = 5;
      v1995[0] = v223;
      v224 = *(v222 + 1);
      *(v222 + 1) = v219;
      v1996 = v224;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v222);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1995);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1996, v223);
      v1640 = *(a1 + 206708);
      if (*(a1 + 206708))
      {
        v225 = 0;
        v1639 = v1638 + 103356;
        v1641 = a1 + 103468;
        v1642 = v1638 + 103453;
        v226 = "dynamicMetadata";
        while (1)
        {
          v1645 = &v1639[4876 * v225];
          v227 = *v1645;
          v1993[0] = 5;
          v1994 = v227;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1993);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1993);
          v228 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
          v229 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v228, "sceneComponentDynamicData");
          v230 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v229, "ASCData");
          v231 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v230, v225);
          v232 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v231, "ASCType");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1993);
          v233 = *v232;
          *v232 = 5;
          v1993[0] = v233;
          v234 = *(v232 + 1);
          *(v232 + 1) = v227;
          v1994 = v234;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v232);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1993);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1994, v233);
          v235 = *v1645;
          if (!*v1645)
          {
            break;
          }

          if (v235 == 1)
          {
            v337 = *(v1645 + 68);
            v1951[0] = 5;
            v1952 = v337;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1951);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1951);
            v338 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
            v339 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v338, "sceneComponentDynamicData");
            v340 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v339, "ASCData");
            v341 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v340, v225);
            v342 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v341, "objectMetadata");
            v343 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v342, "objectID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1951);
            v344 = *v343;
            *v343 = 5;
            v1951[0] = v344;
            v345 = *(v343 + 1);
            *(v343 + 1) = v337;
            v1952 = v345;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v343);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1951);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1952, v344);
            v346 = *(v1645 + 69);
            v1949[0] = 5;
            v1950 = v346;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1949);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1949);
            v347 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
            v348 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v347, "sceneComponentDynamicData");
            v349 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v348, "ASCData");
            v350 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v349, v225);
            v351 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v350, "objectMetadata");
            v352 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v351, "numBlocks");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1949);
            v353 = *v352;
            *v352 = 5;
            v1949[0] = v353;
            v354 = *(v352 + 1);
            *(v352 + 1) = v346;
            v1950 = v354;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v352);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1949);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1950, v353);
            if (*(v1645 + 69))
            {
              v355 = 0;
              v1643 = v1641;
              v1647 = v1642;
              do
              {
                v1655 = &v1645[125 * v355 + 18];
                v1659 = v355;
                v356 = *v1655;
                v1947[0] = 4;
                v1948 = v356;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1947);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1947);
                v357 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                v358 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v357, "sceneComponentDynamicData");
                v359 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v358, "ASCData");
                v360 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v359, v225);
                v361 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v360, "objectMetadata");
                v362 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v361, "blockData");
                v363 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v362, v1659);
                v364 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v363, "isNewBlk");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1947);
                v365 = *v364;
                *v364 = 4;
                v1947[0] = v365;
                v366 = *(v364 + 1);
                *(v364 + 1) = v356;
                v1948 = v366;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v364);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1947);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1948, v365);
                if (v1659 && v1659 < *(v1645 + 69) - 1)
                {
                  v367 = *(v1655 + 1);
                  v1945[0] = 5;
                  v1946 = v367;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1945);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1945);
                  v368 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                  v369 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v368, "sceneComponentDynamicData");
                  v370 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v369, "ASCData");
                  v371 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v370, v225);
                  v372 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v371, "objectMetadata");
                  v373 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v372, "blockData");
                  v374 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v373, v1659);
                  v375 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v374, "rtime");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1945);
                  v376 = *v375;
                  *v375 = 5;
                  v1945[0] = v376;
                  v377 = *(v375 + 1);
                  *(v375 + 1) = v367;
                  v1946 = v377;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v375);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1945);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1946, v376);
                }

                if (*v1655 == 1)
                {
                  v378 = *(v1655 + 4);
                  v1943[0] = 4;
                  v1944 = v378;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1943);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1943);
                  v379 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                  v380 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v379, "sceneComponentDynamicData");
                  v381 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v380, "ASCData");
                  v382 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v381, v225);
                  v383 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v382, "objectMetadata");
                  v384 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v383, "blockData");
                  v385 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v384, v1659);
                  v386 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v385, "cartesian");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1943);
                  v387 = *v386;
                  *v386 = 4;
                  v1943[0] = v387;
                  v388 = *(v386 + 1);
                  *(v386 + 1) = v378;
                  v1944 = v388;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v386);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1943);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1944, v387);
                  v389 = v1655[2];
                  v390 = v389;
                  if (*(v1655 + 4) == 1)
                  {
                    v1941[0] = 7;
                    v1942 = v389;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1941);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1941);
                    v391 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v392 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v391, "sceneComponentDynamicData");
                    v393 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v392, "ASCData");
                    v394 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v393, v225);
                    v395 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v394, "objectMetadata");
                    v396 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v395, "blockData");
                    v397 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v396, v1659);
                    v398 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v397, "X");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1941);
                    v399 = *v398;
                    *v398 = 7;
                    v1941[0] = v399;
                    v400 = *(v398 + 1);
                    *(v398 + 1) = v390;
                    v1942 = *&v400;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v398);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1941);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1942, v399);
                    v401 = v1655[3];
                    v1939[0] = 7;
                    v1940 = v401;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1939);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1939);
                    v402 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v403 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v402, "sceneComponentDynamicData");
                    v404 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v403, "ASCData");
                    v405 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v404, v225);
                    v406 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v405, "objectMetadata");
                    v407 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v406, "blockData");
                    v408 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v407, v1659);
                    v409 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v408, "Y");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1939);
                    v410 = *v409;
                    *v409 = 7;
                    v1939[0] = v410;
                    v411 = *(v409 + 1);
                    *(v409 + 1) = v401;
                    v1940 = *&v411;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v409);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1939);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1940, v410);
                    v412 = v1655[4];
                    v1937[0] = 7;
                    v1938 = v412;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1937);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1937);
                    v413 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v414 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v413, "sceneComponentDynamicData");
                    v415 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v414, "ASCData");
                    v416 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v415, v225);
                    v417 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v416, "objectMetadata");
                    v418 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v417, "blockData");
                    v419 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v418, v1659);
                    v420 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v419, "Z");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1937);
                    v421 = *v420;
                    *v420 = 7;
                    v1937[0] = v421;
                    v422 = v420[1];
                    v420[1] = v412;
                    v1938 = v422;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v420);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1937);
                    v423 = v1937;
                  }

                  else
                  {
                    v1935[0] = 7;
                    v1936 = v389;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1935);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1935);
                    v424 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v425 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v424, "sceneComponentDynamicData");
                    v426 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v425, "ASCData");
                    v427 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v426, v225);
                    v428 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v427, "objectMetadata");
                    v429 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v428, "blockData");
                    v430 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v429, v1659);
                    v431 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v430, "azimuth");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1935);
                    v432 = *v431;
                    *v431 = 7;
                    v1935[0] = v432;
                    v433 = *(v431 + 1);
                    *(v431 + 1) = v390;
                    v1936 = *&v433;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v431);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1935);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1936, v432);
                    v434 = v1655[3];
                    v1933[0] = 7;
                    v1934 = v434;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1933);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1933);
                    v435 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v436 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v435, "sceneComponentDynamicData");
                    v437 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v436, "ASCData");
                    v438 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v437, v225);
                    v439 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v438, "objectMetadata");
                    v440 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v439, "blockData");
                    v441 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v440, v1659);
                    v442 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v441, "elevation");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1933);
                    v443 = *v442;
                    *v442 = 7;
                    v1933[0] = v443;
                    v444 = *(v442 + 1);
                    *(v442 + 1) = v434;
                    v1934 = *&v444;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v442);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1933);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1934, v443);
                    v445 = v1655[4];
                    v1931[0] = 7;
                    v1932 = v445;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1931);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1931);
                    v446 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v447 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v446, "sceneComponentDynamicData");
                    v448 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v447, "ASCData");
                    v449 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v448, v225);
                    v450 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v449, "objectMetadata");
                    v451 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v450, "blockData");
                    v452 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v451, v1659);
                    v453 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v452, "distance");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1931);
                    v421 = *v453;
                    *v453 = 7;
                    v1931[0] = v421;
                    v454 = v453[1];
                    v453[1] = v445;
                    v1932 = v454;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v453);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1931);
                    v423 = v1931;
                  }

                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v423 + 1, v421);
                  v455 = *(v1655 + 20);
                  v1929[0] = 4;
                  v1930 = v455;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1929);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1929);
                  v456 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                  v457 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v456, "sceneComponentDynamicData");
                  v458 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v457, "ASCData");
                  v459 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v458, v225);
                  v460 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v459, "objectMetadata");
                  v461 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v460, "blockData");
                  v462 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v461, v1659);
                  v463 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v462, "hasADMMetadata");
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1929);
                  v464 = *v463;
                  *v463 = 4;
                  v1929[0] = v464;
                  v465 = *(v463 + 1);
                  *(v463 + 1) = v455;
                  v1930 = v465;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v463);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1929);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1930, v464);
                  if (*(v1655 + 20) == 1)
                  {
                    v466 = *(v1655 + 24);
                    v1927[0] = 4;
                    v1928 = v466;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1927);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1927);
                    v467 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v468 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v467, "sceneComponentDynamicData");
                    v469 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v468, "ASCData");
                    v470 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v469, v225);
                    v471 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v470, "objectMetadata");
                    v472 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v471, "blockData");
                    v473 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v472, v1659);
                    v474 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v473, "absoluteDistance");
                    v475 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v474, "hasData");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1927);
                    v476 = *v475;
                    *v475 = 4;
                    v1927[0] = v476;
                    v477 = *(v475 + 1);
                    *(v475 + 1) = v466;
                    v1928 = v477;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v475);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1927);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1928, v476);
                    v478 = v1655;
                    if (*(v1655 + 24) == 1)
                    {
                      v479 = v1655[7];
                      v1925[0] = 7;
                      v1926 = v479;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1925);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1925);
                      v480 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v481 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v480, "sceneComponentDynamicData");
                      v482 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v481, "ASCData");
                      v483 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v482, v225);
                      v484 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v483, "objectMetadata");
                      v485 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v484, "blockData");
                      v486 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v485, v1659);
                      v487 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v486, "absoluteDistance");
                      v488 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v487, "distance");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1925);
                      v489 = *v488;
                      *v488 = 7;
                      v1925[0] = v489;
                      v490 = *(v488 + 1);
                      *(v488 + 1) = v479;
                      v1926 = *&v490;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v488);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1925);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1926, v489);
                      v478 = v1655;
                    }

                    v491 = *(v478 + 32);
                    v1923[0] = 4;
                    v1924 = v491;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1923);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1923);
                    v492 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v493 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v492, "sceneComponentDynamicData");
                    v494 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v493, "ASCData");
                    v495 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v494, v225);
                    v496 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v495, "objectMetadata");
                    v497 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v496, "blockData");
                    v498 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v497, v1659);
                    v499 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v498, "spread");
                    v500 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v499, "hasData");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1923);
                    v501 = *v500;
                    *v500 = 4;
                    v1923[0] = v501;
                    v502 = *(v500 + 1);
                    *(v500 + 1) = v491;
                    v1924 = v502;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v500);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1923);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1924, v501);
                    v503 = v1655;
                    if (*(v1655 + 32) == 1)
                    {
                      v504 = v1655[9];
                      v1921[0] = 7;
                      v1922 = v504;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1921);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1921);
                      v505 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v506 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v505, "sceneComponentDynamicData");
                      v507 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v506, "ASCData");
                      v508 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v507, v225);
                      v509 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v508, "objectMetadata");
                      v510 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v509, "blockData");
                      v511 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v510, v1659);
                      v512 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v511, "spread");
                      v513 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v512, "width");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1921);
                      v514 = *v513;
                      *v513 = 7;
                      v1921[0] = v514;
                      v515 = *(v513 + 1);
                      *(v513 + 1) = v504;
                      v1922 = *&v515;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v513);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1921);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1922, v514);
                      v516 = v1655[10];
                      v1919[0] = 7;
                      v1920 = v516;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1919);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1919);
                      v517 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v518 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v517, "sceneComponentDynamicData");
                      v519 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v518, "ASCData");
                      v520 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v519, v225);
                      v521 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v520, "objectMetadata");
                      v522 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v521, "blockData");
                      v523 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v522, v1659);
                      v524 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v523, "spread");
                      v525 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v524, "height");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1919);
                      v526 = *v525;
                      *v525 = 7;
                      v1919[0] = v526;
                      v527 = *(v525 + 1);
                      *(v525 + 1) = v516;
                      v1920 = *&v527;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v525);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1919);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1920, v526);
                      v528 = v1655[11];
                      v1917[0] = 7;
                      v1918 = v528;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1917);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1917);
                      v529 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v530 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v529, "sceneComponentDynamicData");
                      v531 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v530, "ASCData");
                      v532 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v531, v225);
                      v533 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v532, "objectMetadata");
                      v534 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v533, "blockData");
                      v535 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v534, v1659);
                      v536 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v535, "spread");
                      v537 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v536, "depth");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1917);
                      v538 = *v537;
                      *v537 = 7;
                      v1917[0] = v538;
                      v539 = *(v537 + 1);
                      *(v537 + 1) = v528;
                      v1918 = *&v539;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v537);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1917);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1918, v538);
                      v503 = v1655;
                    }

                    v540 = *(v503 + 48);
                    v1915[0] = 4;
                    v1916 = v540;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1915);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1915);
                    v541 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v542 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v541, "sceneComponentDynamicData");
                    v543 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v542, "ASCData");
                    v544 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v543, v225);
                    v545 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v544, "objectMetadata");
                    v546 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v545, "blockData");
                    v547 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v546, v1659);
                    v548 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v547, "gain");
                    v549 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v548, "hasData");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1915);
                    v550 = *v549;
                    *v549 = 4;
                    v1915[0] = v550;
                    v551 = *(v549 + 1);
                    *(v549 + 1) = v540;
                    v1916 = v551;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v549);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1915);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1916, v550);
                    v552 = v1655;
                    if (*(v1655 + 48) == 1)
                    {
                      v553 = *(v1655 + 49);
                      v1913[0] = 4;
                      v1914 = v553;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1913);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1913);
                      v554 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v555 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v554, "sceneComponentDynamicData");
                      v556 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v555, "ASCData");
                      v557 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v556, v225);
                      v558 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v557, "objectMetadata");
                      v559 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v558, "blockData");
                      v560 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v559, v1659);
                      v561 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v560, "gain");
                      v562 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v561, "isDB");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1913);
                      v563 = *v562;
                      *v562 = 4;
                      v1913[0] = v563;
                      v564 = *(v562 + 1);
                      *(v562 + 1) = v553;
                      v1914 = v564;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v562);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1913);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1914, v563);
                      v565 = v1655[13];
                      v1911[0] = 7;
                      v1912 = v565;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1911);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1911);
                      v566 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v567 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v566, "sceneComponentDynamicData");
                      v568 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v567, "ASCData");
                      v569 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v568, v225);
                      v570 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v569, "objectMetadata");
                      v571 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v570, "blockData");
                      v572 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v571, v1659);
                      v573 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v572, "gain");
                      v574 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v573, "gain");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1911);
                      v575 = *v574;
                      *v574 = 7;
                      v1911[0] = v575;
                      v576 = *(v574 + 1);
                      *(v574 + 1) = v565;
                      v1912 = *&v576;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v574);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1911);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1912, v575);
                      v552 = v1655;
                    }

                    v577 = *(v552 + 56);
                    v1909[0] = 4;
                    v1910 = v577;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1909);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1909);
                    v578 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v579 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v578, "sceneComponentDynamicData");
                    v580 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v579, "ASCData");
                    v581 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v580, v225);
                    v582 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v581, "objectMetadata");
                    v583 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v582, "blockData");
                    v584 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v583, v1659);
                    v585 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v584, "diffuse");
                    v586 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v585, "hasData");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1909);
                    v587 = *v586;
                    *v586 = 4;
                    v1909[0] = v587;
                    v588 = *(v586 + 1);
                    *(v586 + 1) = v577;
                    v1910 = v588;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v586);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1909);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1910, v587);
                    v589 = v1655;
                    if (*(v1655 + 56) == 1)
                    {
                      v590 = v1655[15];
                      v1907[0] = 7;
                      v1908 = v590;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1907);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1907);
                      v591 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v592 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v591, "sceneComponentDynamicData");
                      v593 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v592, "ASCData");
                      v594 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v593, v225);
                      v595 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v594, "objectMetadata");
                      v596 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v595, "blockData");
                      v597 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v596, v1659);
                      v598 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v597, "diffuse");
                      v599 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v598, "diffuse");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1907);
                      v600 = *v599;
                      *v599 = 7;
                      v1907[0] = v600;
                      v601 = *(v599 + 1);
                      *(v599 + 1) = v590;
                      v1908 = *&v601;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v599);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1907);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1908, v600);
                      v589 = v1655;
                    }

                    v602 = *(v589 + 64);
                    v1905[0] = 4;
                    v1906 = v602;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1905);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1905);
                    v603 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v604 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v603, "sceneComponentDynamicData");
                    v605 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v604, "ASCData");
                    v606 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v605, v225);
                    v607 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v606, "objectMetadata");
                    v608 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v607, "blockData");
                    v609 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v608, v1659);
                    v610 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v609, "channelLock");
                    v611 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v610, "channelLock");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1905);
                    v612 = *v611;
                    *v611 = 4;
                    v1905[0] = v612;
                    v613 = *(v611 + 1);
                    *(v611 + 1) = v602;
                    v1906 = v613;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v611);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1905);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1906, v612);
                    v614 = v1655;
                    if (*(v1655 + 64) == 1)
                    {
                      v615 = *(v1655 + 65);
                      v1903[0] = 4;
                      v1904 = v615;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1903);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1903);
                      v616 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v617 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v616, "sceneComponentDynamicData");
                      v618 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v617, "ASCData");
                      v619 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v618, v225);
                      v620 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v619, "objectMetadata");
                      v621 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v620, "blockData");
                      v622 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v621, v1659);
                      v623 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v622, "channelLock");
                      v624 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v623, "hasMaxDistance");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1903);
                      v625 = *v624;
                      *v624 = 4;
                      v1903[0] = v625;
                      v626 = *(v624 + 1);
                      *(v624 + 1) = v615;
                      v1904 = v626;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v624);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1903);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1904, v625);
                      v614 = v1655;
                      if (*(v1655 + 65) == 1)
                      {
                        v627 = v1655[17];
                        v1901[0] = 7;
                        v1902 = v627;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1901);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1901);
                        v628 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                        v629 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v628, "sceneComponentDynamicData");
                        v630 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v629, "ASCData");
                        v631 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v630, v225);
                        v632 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v631, "objectMetadata");
                        v633 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v632, "blockData");
                        v634 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v633, v1659);
                        v635 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v634, "channelLock");
                        v636 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v635, "maxDistance");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1901);
                        v637 = *v636;
                        *v636 = 7;
                        v1901[0] = v637;
                        v638 = *(v636 + 1);
                        *(v636 + 1) = v627;
                        v1902 = *&v638;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v636);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1901);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1902, v637);
                        v614 = v1655;
                      }
                    }

                    v639 = *(v614 + 72);
                    v1899[0] = 4;
                    v1900 = v639;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1899);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1899);
                    v640 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v641 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v640, "sceneComponentDynamicData");
                    v642 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v641, "ASCData");
                    v643 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v642, v225);
                    v644 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v643, "objectMetadata");
                    v645 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v644, "blockData");
                    v646 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v645, v1659);
                    v647 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v646, "objectDivergence");
                    v648 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v647, "hasData");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1899);
                    v649 = *v648;
                    *v648 = 4;
                    v1899[0] = v649;
                    v650 = *(v648 + 1);
                    *(v648 + 1) = v639;
                    v1900 = v650;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v648);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1899);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1900, v649);
                    v651 = v1655;
                    if (*(v1655 + 72) == 1)
                    {
                      v652 = v1655[19];
                      v1897[0] = 7;
                      v1898 = v652;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1897);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1897);
                      v653 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v654 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v653, "sceneComponentDynamicData");
                      v655 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v654, "ASCData");
                      v656 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v655, v225);
                      v657 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v656, "objectMetadata");
                      v658 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v657, "blockData");
                      v659 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v658, v1659);
                      v660 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v659, "objectDivergence");
                      v661 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v660, "objectDivergence");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1897);
                      v662 = *v661;
                      *v661 = 7;
                      v1897[0] = v662;
                      v663 = *(v661 + 1);
                      *(v661 + 1) = v652;
                      v1898 = *&v663;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v661);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1897);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1898, v662);
                      if (*(v1655 + 4) == 1)
                      {
                        v664 = v1655[20];
                        v1895[0] = 7;
                        v1896 = v664;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1895);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1895);
                        v665 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                        v666 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v665, "sceneComponentDynamicData");
                        v667 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v666, "ASCData");
                        v668 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v667, v225);
                        v669 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v668, "objectMetadata");
                        v670 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v669, "blockData");
                        v671 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v670, v1659);
                        v672 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v671, "objectDivergence");
                        v673 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v672, "positionRange");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1895);
                        v674 = *v673;
                        *v673 = 7;
                        v1895[0] = v674;
                        v675 = v673[1];
                        v673[1] = v664;
                        v1896 = v675;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v673);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1895);
                        v676 = v1895;
                      }

                      else
                      {
                        v677 = v1655[21];
                        v1893[0] = 7;
                        v1894 = v677;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1893);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1893);
                        v678 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                        v679 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v678, "sceneComponentDynamicData");
                        v680 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v679, "ASCData");
                        v681 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v680, v225);
                        v682 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v681, "objectMetadata");
                        v683 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v682, "blockData");
                        v684 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v683, v1659);
                        v685 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v684, "objectDivergence");
                        v686 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v685, "azimuthRange");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1893);
                        v674 = *v686;
                        *v686 = 7;
                        v1893[0] = v674;
                        v687 = v686[1];
                        v686[1] = v677;
                        v1894 = v687;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v686);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1893);
                        v676 = v1893;
                      }

                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v676 + 1, v674);
                      v651 = v1655;
                    }

                    v688 = *(v651 + 92);
                    v1891[0] = 4;
                    v1892 = v688;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1891);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1891);
                    v689 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v690 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v689, "sceneComponentDynamicData");
                    v691 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v690, "ASCData");
                    v692 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v691, v225);
                    v693 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v692, "objectMetadata");
                    v694 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v693, "blockData");
                    v695 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v694, v1659);
                    v696 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v695, "screenRef");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1891);
                    v697 = *v696;
                    *v696 = 4;
                    v1891[0] = v697;
                    v698 = *(v696 + 1);
                    *(v696 + 1) = v688;
                    v1892 = v698;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v696);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1891);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1892, v697);
                    v699 = *(v1655 + 95);
                    v1889[0] = 4;
                    v1890 = v699;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1889);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1889);
                    v700 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v701 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v700, "sceneComponentDynamicData");
                    v702 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v701, "ASCData");
                    v703 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v702, v225);
                    v704 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v703, "objectMetadata");
                    v705 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v704, "blockData");
                    v706 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v705, v1659);
                    v707 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v706, "headLocked");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1889);
                    v708 = *v707;
                    *v707 = 4;
                    v1889[0] = v708;
                    v709 = *(v707 + 1);
                    *(v707 + 1) = v699;
                    v1890 = v709;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v707);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1889);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1890, v708);
                    v710 = *(v1655 + 96);
                    v1887[0] = 4;
                    v1888 = v710;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1887);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1887);
                    v711 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v712 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v711, "sceneComponentDynamicData");
                    v713 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v712, "ASCData");
                    v714 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v713, v225);
                    v715 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v714, "objectMetadata");
                    v716 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v715, "blockData");
                    v717 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v716, v1659);
                    v718 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v717, "headphoneVirtualize");
                    v719 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v718, "hasData");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1887);
                    v720 = *v719;
                    *v719 = 4;
                    v1887[0] = v720;
                    v721 = *(v719 + 1);
                    *(v719 + 1) = v710;
                    v1888 = v721;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v719);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1887);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1888, v720);
                    v722 = v1655;
                    if (*(v1655 + 96) == 1)
                    {
                      v723 = *(v1655 + 97);
                      v1885[0] = 4;
                      v1886 = v723;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1885);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1885);
                      v724 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v725 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v724, "sceneComponentDynamicData");
                      v726 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v725, "ASCData");
                      v727 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v726, v225);
                      v728 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v727, "objectMetadata");
                      v729 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v728, "blockData");
                      v730 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v729, v1659);
                      v731 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v730, "headphoneVirtualize");
                      v732 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v731, "bypass");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1885);
                      v733 = *v732;
                      *v732 = 4;
                      v1885[0] = v733;
                      v734 = *(v732 + 1);
                      *(v732 + 1) = v723;
                      v1886 = v734;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v732);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1885);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1886, v733);
                      v735 = v1655[25];
                      v1883[0] = 7;
                      v1884 = v735;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1883);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1883);
                      v736 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v737 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v736, "sceneComponentDynamicData");
                      v738 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v737, "ASCData");
                      v739 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v738, v225);
                      v740 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v739, "objectMetadata");
                      v741 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v740, "blockData");
                      v742 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v741, v1659);
                      v743 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v742, "headphoneVirtualize");
                      v744 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v743, "DRR");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1883);
                      v745 = *v744;
                      *v744 = 7;
                      v1883[0] = v745;
                      v746 = *(v744 + 1);
                      *(v744 + 1) = v735;
                      v1884 = *&v746;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v744);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1883);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1884, v745);
                      v722 = v1655;
                    }

                    v747 = *(v722 + 104);
                    v1881[0] = 4;
                    v1882 = v747;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1881);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1881);
                    v748 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                    v749 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v748, "sceneComponentDynamicData");
                    v750 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v749, "ASCData");
                    v751 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v750, v225);
                    v752 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v751, "objectMetadata");
                    v753 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v752, "blockData");
                    v754 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v753, v1659);
                    v755 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v754, "zoneExclusion");
                    v756 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v755, "isZoneDefined");
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1881);
                    v757 = *v756;
                    *v756 = 4;
                    v1881[0] = v757;
                    v758 = *(v756 + 1);
                    *(v756 + 1) = v747;
                    v1882 = v758;
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v756);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1881);
                    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1882, v757);
                    if (*(v1655 + 104) == 1)
                    {
                      v759 = *(v1655 + 105);
                      v1879[0] = 4;
                      v1880 = v759;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1879);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1879);
                      v760 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                      v761 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v760, "sceneComponentDynamicData");
                      v762 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v761, "ASCData");
                      v763 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v762, v225);
                      v764 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v763, "objectMetadata");
                      v765 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v764, "blockData");
                      v766 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v765, v1659);
                      v767 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v766, "zoneExclusion");
                      v768 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v767, "keepPreviousZone");
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1879);
                      v769 = *v768;
                      *v768 = 4;
                      v1879[0] = v769;
                      v770 = *(v768 + 1);
                      *(v768 + 1) = v759;
                      v1880 = v770;
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v768);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1879);
                      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1880, v769);
                      if (*(v1655 + 105) == 1)
                      {
                        v771 = *(v1655 + 106);
                        v1877[0] = 5;
                        v1878 = v771;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1877);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1877);
                        v772 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
                        v773 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v772, "sceneComponentDynamicData");
                        v774 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v773, "ASCData");
                        v775 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v774, v225);
                        v776 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v775, "objectMetadata");
                        v777 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v776, "blockData");
                        v778 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v777, v1659);
                        v779 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v778, "zoneExclusion");
                        v780 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v779, "numZones");
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1877);
                        v781 = *v780;
                        *v780 = 5;
                        v1877[0] = v781;
                        v782 = *(v780 + 1);
                        *(v780 + 1) = v771;
                        v1878 = v782;
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v780);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1877);
                        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1878, v781);
                        if (*(v1655 + 106))
                        {
                          v783 = 0;
                          v1651 = v1643;
                          do
                          {
                            v784 = v226;
                            v785 = *(v1647 + v783 - 15);
                            v1875[0] = 4;
                            v1876 = v785;
                            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1875);
                            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1875);
                            v786 = v784;
                            v787 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v784);
                            v788 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v787, "sceneComponentDynamicData");
                            v789 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v788, "ASCData");
                            v790 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v789, v225);
                            v791 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v790, "objectMetadata");
                            v792 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v791, "blockData");
                            v793 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v792, v1659);
                            v794 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v793, "zoneExclusion");
                            v795 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v794, "usePreDefinedZone");
                            v796 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v795, v783);
                            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1875);
                            LODWORD(v784) = *v796;
                            *v796 = 4;
                            v1875[0] = v784;
                            v797 = *(v796 + 1);
                            *(v796 + 1) = v785;
                            v1876 = v797;
                            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v796);
                            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1875);
                            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1876, v784);
                            if (*(v1647 + v783 - 15) == 1)
                            {
                              v798 = *(v1647 + v783);
                              v1873[0] = 5;
                              v1874 = v798;
                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1873);
                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1873);
                              v799 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                              v800 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v799, "sceneComponentDynamicData");
                              v801 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v800, "ASCData");
                              v802 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v801, v225);
                              v803 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v802, "objectMetadata");
                              v804 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v803, "blockData");
                              v805 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v804, v1659);
                              v806 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v805, "zoneExclusion");
                              v807 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v806, "zoneIndex");
                              v808 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v807, v783);
                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1873);
                              v809 = *v808;
                              *v808 = 5;
                              v1873[0] = v809;
                              v810 = *(v808 + 1);
                              *(v808 + 1) = v798;
                              v1874 = v810;
                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v808);
                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1873);
                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1874, v809);
                              v226 = v786;
                            }

                            else
                            {
                              v811 = *(v1651 - 3);
                              v812 = v811;
                              if (*(v1655 + 4) == 1)
                              {
                                v1871[0] = 7;
                                v1872 = v811;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1871);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1871);
                                v226 = v786;
                                v813 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v814 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v813, "sceneComponentDynamicData");
                                v815 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v814, "ASCData");
                                v816 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v815, v225);
                                v817 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v816, "objectMetadata");
                                v818 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v817, "blockData");
                                v819 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v818, v1659);
                                v820 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v819, "zoneExclusion");
                                v821 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v820, "zone");
                                v822 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v821, v783);
                                v823 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v822, "minX");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1871);
                                v824 = *v823;
                                *v823 = 7;
                                v1871[0] = v824;
                                v825 = *(v823 + 1);
                                *(v823 + 1) = v812;
                                v1872 = *&v825;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v823);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1871);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1872, v824);
                                v826 = *(v1651 - 2);
                                v1869[0] = 7;
                                v1870 = v826;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1869);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1869);
                                v827 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v828 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v827, "sceneComponentDynamicData");
                                v829 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v828, "ASCData");
                                v830 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v829, v225);
                                v831 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v830, "objectMetadata");
                                v832 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v831, "blockData");
                                v833 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v832, v1659);
                                v834 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v833, "zoneExclusion");
                                v835 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v834, "zone");
                                v836 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v835, v783);
                                v837 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v836, "maxX");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1869);
                                v838 = *v837;
                                *v837 = 7;
                                v1869[0] = v838;
                                v839 = *(v837 + 1);
                                *(v837 + 1) = v826;
                                v1870 = *&v839;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v837);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1869);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1870, v838);
                                v840 = *(v1651 - 1);
                                v1867[0] = 7;
                                v1868 = v840;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1867);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1867);
                                v841 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v842 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v841, "sceneComponentDynamicData");
                                v843 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v842, "ASCData");
                                v844 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v843, v225);
                                v845 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v844, "objectMetadata");
                                v846 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v845, "blockData");
                                v847 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v846, v1659);
                                v848 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v847, "zoneExclusion");
                                v849 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v848, "zone");
                                v850 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v849, v783);
                                v851 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v850, "minY");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1867);
                                v852 = *v851;
                                *v851 = 7;
                                v1867[0] = v852;
                                v853 = *(v851 + 1);
                                *(v851 + 1) = v840;
                                v1868 = *&v853;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v851);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1867);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1868, v852);
                                v854 = *v1651;
                                v1865[0] = 7;
                                v1866 = v854;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1865);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1865);
                                v855 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v856 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v855, "sceneComponentDynamicData");
                                v857 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v856, "ASCData");
                                v858 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v857, v225);
                                v859 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v858, "objectMetadata");
                                v860 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v859, "blockData");
                                v861 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v860, v1659);
                                v862 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v861, "zoneExclusion");
                                v863 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v862, "zone");
                                v864 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v863, v783);
                                v865 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v864, "maxY");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1865);
                                v866 = *v865;
                                *v865 = 7;
                                v1865[0] = v866;
                                v867 = *(v865 + 1);
                                *(v865 + 1) = v854;
                                v1866 = *&v867;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v865);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1865);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1866, v866);
                                v868 = v1651[1];
                                v1863[0] = 7;
                                v1864 = v868;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1863);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1863);
                                v869 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v870 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v869, "sceneComponentDynamicData");
                                v871 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v870, "ASCData");
                                v872 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v871, v225);
                                v873 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v872, "objectMetadata");
                                v874 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v873, "blockData");
                                v875 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v874, v1659);
                                v876 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v875, "zoneExclusion");
                                v877 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v876, "zone");
                                v878 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v877, v783);
                                v879 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v878, "minZ");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1863);
                                v880 = *v879;
                                *v879 = 7;
                                v1863[0] = v880;
                                v881 = *(v879 + 1);
                                *(v879 + 1) = v868;
                                v1864 = *&v881;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v879);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1863);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1864, v880);
                                v882 = v1651[2];
                                v1861[0] = 7;
                                v1862 = v882;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1861);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1861);
                                v883 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v884 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v883, "sceneComponentDynamicData");
                                v885 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v884, "ASCData");
                                v886 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v885, v225);
                                v887 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v886, "objectMetadata");
                                v888 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v887, "blockData");
                                v889 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v888, v1659);
                                v890 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v889, "zoneExclusion");
                                v891 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v890, "zone");
                                v892 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v891, v783);
                                v893 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v892, "maxZ");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1861);
                                v894 = *v893;
                                *v893 = 7;
                                v1861[0] = v894;
                                v895 = v893[1];
                                v893[1] = v882;
                                v1862 = v895;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v893);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1861);
                                v896 = v1861;
                              }

                              else
                              {
                                v1859[0] = 7;
                                v1860 = v811;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1859);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1859);
                                v226 = v786;
                                v897 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v898 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v897, "sceneComponentDynamicData");
                                v899 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v898, "ASCData");
                                v900 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v899, v225);
                                v901 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v900, "objectMetadata");
                                v902 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v901, "blockData");
                                v903 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v902, v1659);
                                v904 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v903, "zoneExclusion");
                                v905 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v904, "zone");
                                v906 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v905, v783);
                                v907 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v906, "minAzimuth");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1859);
                                v908 = *v907;
                                *v907 = 7;
                                v1859[0] = v908;
                                v909 = *(v907 + 1);
                                *(v907 + 1) = v812;
                                v1860 = *&v909;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v907);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1859);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1860, v908);
                                v910 = *(v1651 - 2);
                                v1857[0] = 7;
                                v1858 = v910;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1857);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1857);
                                v911 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v912 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v911, "sceneComponentDynamicData");
                                v913 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v912, "ASCData");
                                v914 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v913, v225);
                                v915 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v914, "objectMetadata");
                                v916 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v915, "blockData");
                                v917 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v916, v1659);
                                v918 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v917, "zoneExclusion");
                                v919 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v918, "zone");
                                v920 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v919, v783);
                                v921 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v920, "maxAzimuth");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1857);
                                v922 = *v921;
                                *v921 = 7;
                                v1857[0] = v922;
                                v923 = *(v921 + 1);
                                *(v921 + 1) = v910;
                                v1858 = *&v923;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v921);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1857);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1858, v922);
                                v924 = *(v1651 - 1);
                                v1855[0] = 7;
                                v1856 = v924;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1855);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1855);
                                v925 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v926 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v925, "sceneComponentDynamicData");
                                v927 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v926, "ASCData");
                                v928 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v927, v225);
                                v929 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v928, "objectMetadata");
                                v930 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v929, "blockData");
                                v931 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v930, v1659);
                                v932 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v931, "zoneExclusion");
                                v933 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v932, "zone");
                                v934 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v933, v783);
                                v935 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v934, "minElevation");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1855);
                                v936 = *v935;
                                *v935 = 7;
                                v1855[0] = v936;
                                v937 = *(v935 + 1);
                                *(v935 + 1) = v924;
                                v1856 = *&v937;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v935);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1855);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1856, v936);
                                v938 = *v1651;
                                v1853[0] = 7;
                                v1854 = v938;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1853);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1853);
                                v939 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v786);
                                v940 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v939, "sceneComponentDynamicData");
                                v941 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v940, "ASCData");
                                v942 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v941, v225);
                                v943 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v942, "objectMetadata");
                                v944 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v943, "blockData");
                                v945 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v944, v1659);
                                v946 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v945, "zoneExclusion");
                                v947 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v946, "zone");
                                v948 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v947, v783);
                                v949 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v948, "maxElevation");
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1853);
                                v894 = *v949;
                                *v949 = 7;
                                v1853[0] = v894;
                                v950 = v949[1];
                                v949[1] = v938;
                                v1854 = v950;
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v949);
                                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1853);
                                v896 = v1853;
                              }

                              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v896 + 1, v894);
                            }

                            ++v783;
                            v1651 += 6;
                          }

                          while (v783 < *(v1655 + 106));
                        }
                      }
                    }
                  }
                }

                v355 = v1659 + 1;
                v1647 += 250;
                v1643 += 125;
              }

              while (v1659 + 1 < *(v1645 + 69));
            }

            goto LABEL_105;
          }

          if (v235 != 2)
          {
            std::to_string(&v2006, v235);
            v1050 = std::string::insert(&v2006, 0, "Unknown ASC type ", 0x11uLL);
            v2007 = *v1050;
            v1050->__r_.__value_.__l.__size_ = 0;
            v1050->__r_.__value_.__r.__words[2] = 0;
            v1050->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v2006.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v2006.__r_.__value_.__l.__data_);
            }

            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[16],char [16],0>(v1852);
          }

          v236 = *(v1645 + 36);
          v1971[0] = 4;
          v1972 = v236;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1971);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1971);
          v237 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
          v238 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v237, "sceneComponentDynamicData");
          v239 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v238, "ASCData");
          v240 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v239, v225);
          v241 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v240, "HOAMetadata");
          v242 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v241, "hasADMMetadata");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1971);
          v243 = *v242;
          *v242 = 4;
          v1971[0] = v243;
          v244 = *(v242 + 1);
          *(v242 + 1) = v236;
          v1972 = v244;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v242);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1971);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1972, v243);
          if (*(v1645 + 36) == 1)
          {
            v245 = *(v1645 + 40);
            v1969[0] = 4;
            v1970 = v245;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1969);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1969);
            v246 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
            v247 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v246, "sceneComponentDynamicData");
            v248 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v247, "ASCData");
            v249 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v248, v225);
            v250 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v249, "HOAMetadata");
            v251 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v250, "absoluteDistance");
            v252 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v251, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1969);
            v253 = *v252;
            *v252 = 4;
            v1969[0] = v253;
            v254 = *(v252 + 1);
            *(v252 + 1) = v245;
            v1970 = v254;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v252);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1969);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1970, v253);
            v255 = &v1639[4876 * v225];
            if (*(v1645 + 40) == 1)
            {
              v256 = v1645[11];
              v1967[0] = 7;
              v1968 = v256;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1967);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1967);
              v257 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
              v258 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v257, "sceneComponentDynamicData");
              v259 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v258, "ASCData");
              v260 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v259, v225);
              v261 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v260, "HOAMetadata");
              v262 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v261, "absoluteDistance");
              v263 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v262, "distance");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1967);
              v264 = *v263;
              *v263 = 7;
              v1967[0] = v264;
              v265 = *(v263 + 1);
              *(v263 + 1) = v256;
              v1968 = *&v265;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v263);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1967);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1968, v264);
              v255 = &v1639[4876 * v225];
            }

            v266 = *(v255 + 48);
            v1965[0] = 4;
            v1966 = v266;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1965);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1965);
            v267 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
            v268 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v267, "sceneComponentDynamicData");
            v269 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v268, "ASCData");
            v270 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v269, v225);
            v271 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v270, "HOAMetadata");
            v272 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v271, "gain");
            v273 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v272, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1965);
            v274 = *v273;
            *v273 = 4;
            v1965[0] = v274;
            v275 = *(v273 + 1);
            *(v273 + 1) = v266;
            v1966 = v275;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v273);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1965);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1966, v274);
            v276 = &v1639[4876 * v225];
            if (*(v1645 + 48) == 1)
            {
              v277 = *(v1645 + 49);
              v1963[0] = 4;
              v1964 = v277;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1963);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1963);
              v278 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
              v279 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v278, "sceneComponentDynamicData");
              v280 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v279, "ASCData");
              v281 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v280, v225);
              v282 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v281, "HOAMetadata");
              v283 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v282, "gain");
              v284 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v283, "isDB");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1963);
              v285 = *v284;
              *v284 = 4;
              v1963[0] = v285;
              v286 = *(v284 + 1);
              *(v284 + 1) = v277;
              v1964 = v286;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v284);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1963);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1964, v285);
              v287 = v1645[13];
              v1961[0] = 7;
              v1962 = v287;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1961);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1961);
              v288 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
              v289 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v288, "sceneComponentDynamicData");
              v290 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v289, "ASCData");
              v291 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v290, v225);
              v292 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v291, "HOAMetadata");
              v293 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v292, "gain");
              v294 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v293, "gain");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1961);
              v295 = *v294;
              *v294 = 7;
              v1961[0] = v295;
              v296 = *(v294 + 1);
              *(v294 + 1) = v287;
              v1962 = *&v296;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v294);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1961);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1962, v295);
              v276 = &v1639[4876 * v225];
            }

            v297 = *(v276 + 58);
            v1959[0] = 4;
            v1960 = v297;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1959);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1959);
            v298 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
            v299 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v298, "sceneComponentDynamicData");
            v300 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v299, "ASCData");
            v301 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v300, v225);
            v302 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v301, "HOAMetadata");
            v303 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v302, "headLocked");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1959);
            v304 = *v303;
            *v303 = 4;
            v1959[0] = v304;
            v305 = *(v303 + 1);
            *(v303 + 1) = v297;
            v1960 = v305;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v303);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1959);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1960, v304);
            v306 = *(v1645 + 60);
            v1957[0] = 4;
            v1958 = v306;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1957);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1957);
            v307 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
            v308 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v307, "sceneComponentDynamicData");
            v309 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v308, "ASCData");
            v310 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v309, v225);
            v311 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v310, "HOAMetadata");
            v312 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v311, "headphoneVirtualize");
            v313 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v312, "hasData");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1957);
            v314 = *v313;
            *v313 = 4;
            v1957[0] = v314;
            v315 = *(v313 + 1);
            *(v313 + 1) = v306;
            v1958 = v315;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v313);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1957);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1958, v314);
            if (*(v1645 + 60) == 1)
            {
              v316 = *(v1645 + 61);
              v1955[0] = 4;
              v1956 = v316;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1955);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1955);
              v317 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
              v318 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v317, "sceneComponentDynamicData");
              v319 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v318, "ASCData");
              v320 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v319, v225);
              v321 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v320, "HOAMetadata");
              v322 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v321, "headphoneVirtualize");
              v323 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v322, "bypass");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1955);
              v324 = *v323;
              *v323 = 4;
              v1955[0] = v324;
              v325 = *(v323 + 1);
              *(v323 + 1) = v316;
              v1956 = v325;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v323);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1955);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1956, v324);
              v326 = v1645[16];
              v1953[0] = 7;
              v1954 = v326;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1953);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1953);
              v327 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
              v328 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v327, "sceneComponentDynamicData");
              v329 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v328, "ASCData");
              v330 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v329, v225);
              v331 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v330, "HOAMetadata");
              v332 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v331, "headphoneVirtualize");
              v333 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v332, "DRR");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1953);
              v334 = *v333;
              *v333 = 7;
              v1953[0] = v334;
              v335 = v333[1];
              v333[1] = v326;
              v1954 = v335;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v333);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1953);
              v336 = v1953;
LABEL_101:
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v336 + 1, v334);
            }
          }

LABEL_105:
          ++v225;
          v1642 += 4876;
          v1641 += 4876;
          if (v225 == v1640)
          {
            goto LABEL_106;
          }
        }

        v951 = *(v1645 + 4);
        v1991[0] = 4;
        v1992 = v951;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1991);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1991);
        v952 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v953 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v952, "sceneComponentDynamicData");
        v954 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v953, "ASCData");
        v955 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v954, v225);
        v956 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v955, "channelMetadata");
        v957 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v956, "hasADMMetadata");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1991);
        v958 = *v957;
        *v957 = 4;
        v1991[0] = v958;
        v959 = *(v957 + 1);
        *(v957 + 1) = v951;
        v1992 = v959;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v957);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1991);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1992, v958);
        if (*(v1645 + 4) != 1)
        {
          goto LABEL_105;
        }

        v960 = *(v1645 + 8);
        v1989[0] = 4;
        v1990 = v960;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1989);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1989);
        v961 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v962 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v961, "sceneComponentDynamicData");
        v963 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v962, "ASCData");
        v964 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v963, v225);
        v965 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v964, "channelMetadata");
        v966 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v965, "absoluteDistance");
        v967 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v966, "hasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1989);
        v968 = *v967;
        *v967 = 4;
        v1989[0] = v968;
        v969 = *(v967 + 1);
        *(v967 + 1) = v960;
        v1990 = v969;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v967);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1989);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1990, v968);
        v970 = &v1639[4876 * v225];
        if (*(v1645 + 8) == 1)
        {
          v971 = v1645[3];
          v1987[0] = 7;
          v1988 = v971;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1987);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1987);
          v972 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
          v973 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v972, "sceneComponentDynamicData");
          v974 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v973, "ASCData");
          v975 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v974, v225);
          v976 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v975, "channelMetadata");
          v977 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v976, "absoluteDistance");
          v978 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v977, "distance");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1987);
          v979 = *v978;
          *v978 = 7;
          v1987[0] = v979;
          v980 = *(v978 + 1);
          *(v978 + 1) = v971;
          v1988 = *&v980;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v978);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1987);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1988, v979);
          v970 = &v1639[4876 * v225];
        }

        v981 = *(v970 + 16);
        v1985[0] = 4;
        v1986 = v981;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1985);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1985);
        v982 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v983 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v982, "sceneComponentDynamicData");
        v984 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v983, "ASCData");
        v985 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v984, v225);
        v986 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v985, "channelMetadata");
        v987 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v986, "gain");
        v988 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v987, "hasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1985);
        v989 = *v988;
        *v988 = 4;
        v1985[0] = v989;
        v990 = *(v988 + 1);
        *(v988 + 1) = v981;
        v1986 = v990;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v988);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1985);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1986, v989);
        v991 = &v1639[4876 * v225];
        if (*(v1645 + 16) == 1)
        {
          v992 = *(v1645 + 17);
          v1983[0] = 4;
          v1984 = v992;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1983);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1983);
          v993 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
          v994 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v993, "sceneComponentDynamicData");
          v995 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v994, "ASCData");
          v996 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v995, v225);
          v997 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v996, "channelMetadata");
          v998 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v997, "gain");
          v999 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v998, "isDB");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1983);
          v1000 = *v999;
          *v999 = 4;
          v1983[0] = v1000;
          v1001 = *(v999 + 1);
          *(v999 + 1) = v992;
          v1984 = v1001;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v999);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1983);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1984, v1000);
          v1002 = v1645[5];
          v1981[0] = 7;
          v1982 = v1002;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1981);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1981);
          v1003 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
          v1004 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1003, "sceneComponentDynamicData");
          v1005 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1004, "ASCData");
          v1006 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1005, v225);
          v1007 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1006, "channelMetadata");
          v1008 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1007, "gain");
          v1009 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1008, "gain");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1981);
          v1010 = *v1009;
          *v1009 = 7;
          v1981[0] = v1010;
          v1011 = *(v1009 + 1);
          *(v1009 + 1) = v1002;
          v1982 = *&v1011;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1009);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1981);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1982, v1010);
          v991 = &v1639[4876 * v225];
        }

        v1012 = *(v991 + 26);
        v1979[0] = 4;
        v1980 = v1012;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1979);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1979);
        v1013 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v1014 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1013, "sceneComponentDynamicData");
        v1015 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1014, "ASCData");
        v1016 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1015, v225);
        v1017 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1016, "channelMetadata");
        v1018 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1017, "headLocked");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1979);
        v1019 = *v1018;
        *v1018 = 4;
        v1979[0] = v1019;
        v1020 = *(v1018 + 1);
        *(v1018 + 1) = v1012;
        v1980 = v1020;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1018);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1979);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1980, v1019);
        v1021 = *(v1645 + 28);
        v1977[0] = 4;
        v1978 = v1021;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1977);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1977);
        v1022 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v1023 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1022, "sceneComponentDynamicData");
        v1024 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1023, "ASCData");
        v1025 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1024, v225);
        v1026 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1025, "channelMetadata");
        v1027 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1026, "headphoneVirtualize");
        v1028 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1027, "hasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1977);
        v1029 = *v1028;
        *v1028 = 4;
        v1977[0] = v1029;
        v1030 = *(v1028 + 1);
        *(v1028 + 1) = v1021;
        v1978 = v1030;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1028);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1977);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1978, v1029);
        if (*(v1645 + 28) != 1)
        {
          goto LABEL_105;
        }

        v1031 = *(v1645 + 29);
        v1975[0] = 4;
        v1976 = v1031;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1975);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1975);
        v1032 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v1033 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1032, "sceneComponentDynamicData");
        v1034 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1033, "ASCData");
        v1035 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1034, v225);
        v1036 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1035, "channelMetadata");
        v1037 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1036, "headphoneVirtualize");
        v1038 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1037, "bypass");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1975);
        v1039 = *v1038;
        *v1038 = 4;
        v1975[0] = v1039;
        v1040 = *(v1038 + 1);
        *(v1038 + 1) = v1031;
        v1976 = v1040;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1038);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1975);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1976, v1039);
        v1041 = v1645[8];
        v1973[0] = 7;
        v1974 = v1041;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1973);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1973);
        v1042 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v226);
        v1043 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1042, "sceneComponentDynamicData");
        v1044 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1043, "ASCData");
        v1045 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1044, v225);
        v1046 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1045, "channelMetadata");
        v1047 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1046, "headphoneVirtualize");
        v1048 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1047, "DRR");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1973);
        v334 = *v1048;
        *v1048 = 7;
        v1973[0] = v334;
        v1049 = v1048[1];
        v1048[1] = v1041;
        v1974 = v1049;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1048);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1973);
        v336 = v1973;
        goto LABEL_101;
      }

LABEL_106:
      v1051 = *(v1638 + 1445216);
      v1850[0] = 4;
      v1851 = v1051;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1850);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1850);
      v1052 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "dynamicMetadata");
      v1053 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1052, "extDynamicData");
      v1054 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1053, "hasData");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1850);
      v1055 = *v1054;
      *v1054 = 4;
      v1850[0] = v1055;
      v1056 = *(v1054 + 1);
      *(v1054 + 1) = v1051;
      v1851 = v1056;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1054);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1850);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1851, v1055);
    }

LABEL_202:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(a2);
  }

  v1057 = *(a1 + 1451081);
  v1848[0] = 4;
  v1849 = v1057;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1848);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1848);
  v1058 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
  v1059 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1058, "mRendererMetadataPresent");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1848);
  v1060 = *v1059;
  *v1059 = 4;
  v1848[0] = v1060;
  v1061 = *(v1059 + 1);
  *(v1059 + 1) = v1057;
  v1849 = v1061;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1059);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1848);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1849, v1060);
  if (*(a1 + 1451081) != 1)
  {
    goto LABEL_202;
  }

  v1644 = a1 + 727598;
  v1646 = a1 + 1451081;
  if (*(a1 + 6) != 1)
  {
    goto LABEL_193;
  }

  v1062 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
  v1063 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1062, "mRendererMetadata");
  v1064 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1063, "mGlobalConfig");
  v1065 = *(a1 + 1451096);
  v1846[0] = 4;
  v1847 = v1065;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1846);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1846);
  v1066 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mHasData");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1846);
  v1067 = *v1066;
  *v1066 = 4;
  v1846[0] = v1067;
  v1068 = *(v1066 + 1);
  *(v1066 + 1) = v1065;
  v1847 = v1068;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1066);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1846);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1847, v1067);
  v1069 = a1 + 727598;
  if (*(a1 + 1451096) == 1)
  {
    v1070 = a1[725549];
    v1844[0] = 5;
    v1845 = v1070;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1844);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1844);
    v1071 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mNumParameters");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1844);
    v1072 = *v1071;
    *v1071 = 5;
    v1844[0] = v1072;
    v1073 = *(v1071 + 1);
    *(v1071 + 1) = v1070;
    v1845 = v1073;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1071);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1844);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1845, v1072);
    v1069 = a1 + 727598;
    v1652 = a1[725549];
    if (a1[725549])
    {
      v1074 = 0;
      v1648 = a1 + 727898;
      v1075 = a1 + 1455255;
      v1660 = v1638 + 725550;
      while (1)
      {
        v1076 = v1660[v1074];
        v1842[0] = 5;
        v1843 = v1076;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1842);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1842);
        v1077 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mParamIndexList");
        v1078 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1077, v1074);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1842);
        v1079 = *v1078;
        *v1078 = 5;
        v1842[0] = v1079;
        v1080 = *(v1078 + 1);
        *(v1078 + 1) = v1076;
        v1843 = v1080;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1078);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1842);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1843, v1079);
        switch(v1660[v1074])
        {
          case 0u:
            v1081 = *v1069;
            v1840[0] = 4;
            v1841 = v1081;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1840);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1840);
            v1082 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mApplyPostProcReverb");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1840);
            v1083 = *v1082;
            *v1082 = 4;
            v1840[0] = v1083;
            v1084 = *(v1082 + 1);
            *(v1082 + 1) = v1081;
            v1841 = v1084;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1082);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1840);
            v1085 = v1840;
            goto LABEL_133;
          case 1u:
            v1226 = *(v1069 + 1);
            v1838[0] = 4;
            v1839 = v1226;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1838);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1838);
            v1227 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mIs6DoF");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1838);
            v1083 = *v1227;
            *v1227 = 4;
            v1838[0] = v1083;
            v1228 = *(v1227 + 1);
            *(v1227 + 1) = v1226;
            v1839 = v1228;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1227);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1838);
            v1085 = v1838;
            goto LABEL_133;
          case 2u:
            v1180 = *(v1069 + 2);
            v1836[0] = 4;
            v1837 = v1180;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1836);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1836);
            v1181 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mHasSceneRadiationPattern");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1836);
            v1083 = *v1181;
            *v1181 = 4;
            v1836[0] = v1083;
            v1182 = *(v1181 + 1);
            *(v1181 + 1) = v1180;
            v1837 = v1182;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1181);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1836);
            v1085 = v1836;
LABEL_133:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v1085 + 1, v1083);
            v1075 = v1638 + 1455255;
            goto LABEL_157;
          case 3u:
            v1183 = *(v1069 + 3);
            v1834[0] = 5;
            v1835 = v1183;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1834);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1834);
            v1184 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mTargetPlaybackSystemIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1834);
            v1152 = *v1184;
            *v1184 = 5;
            v1834[0] = v1152;
            v1185 = *(v1184 + 1);
            *(v1184 + 1) = v1183;
            v1835 = v1185;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1184);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1834);
            v1154 = v1834;
            goto LABEL_153;
          case 4u:
            v1108 = *(v1069 + 6);
            v1832[0] = 5;
            v1833 = v1108;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1832);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1832);
            v1109 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1110 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1109, "mAuthoringToolNameIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1832);
            v1111 = *v1110;
            *v1110 = 5;
            v1832[0] = v1111;
            v1112 = *(v1110 + 1);
            *(v1110 + 1) = v1108;
            v1833 = v1112;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1110);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1832);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1833, v1111);
            v1113 = *(v1069 + 7);
            v1830[0] = 5;
            v1831 = v1113;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1830);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1830);
            v1114 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1115 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1114, "mAuthoringToolVersion");
            v1116 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1115, "mMajor");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1830);
            v1117 = *v1116;
            *v1116 = 5;
            v1830[0] = v1117;
            v1118 = *(v1116 + 1);
            *(v1116 + 1) = v1113;
            v1831 = v1118;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1116);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1830);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1831, v1117);
            v1119 = *(v1069 + 8);
            v1828[0] = 5;
            v1829 = v1119;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1828);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1828);
            v1120 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1121 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1120, "mAuthoringToolVersion");
            v1122 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1121, "mMinor");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1828);
            v1123 = *v1122;
            *v1122 = 5;
            v1828[0] = v1123;
            v1124 = *(v1122 + 1);
            *(v1122 + 1) = v1119;
            v1829 = v1124;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1122);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1828);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1829, v1123);
            v1125 = *(v1069 + 9);
            v1826[0] = 5;
            v1827 = v1125;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1826);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1826);
            v1126 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1127 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1126, "mAuthoringToolVersion");
            v1128 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1127, "mPatch");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1826);
            v1129 = *v1128;
            *v1128 = 5;
            v1826[0] = v1129;
            v1130 = *(v1128 + 1);
            *(v1128 + 1) = v1125;
            v1827 = v1130;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1128);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1826);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1827, v1129);
            v1131 = *(v1069 + 10);
            v1824[0] = 5;
            v1825 = v1131;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1824);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1824);
            v1132 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1133 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1132, "mRendererNameIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1824);
            v1134 = *v1133;
            *v1133 = 5;
            v1824[0] = v1134;
            v1135 = *(v1133 + 1);
            *(v1133 + 1) = v1131;
            v1825 = v1135;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1133);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1824);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1825, v1134);
            v1136 = *(v1069 + 11);
            v1822[0] = 5;
            v1823 = v1136;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1822);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1822);
            v1137 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1138 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1137, "mRendererVersion");
            v1139 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1138, "mMajor");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1822);
            v1140 = *v1139;
            *v1139 = 5;
            v1822[0] = v1140;
            v1141 = *(v1139 + 1);
            *(v1139 + 1) = v1136;
            v1823 = v1141;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1139);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1822);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1823, v1140);
            v1142 = *(v1069 + 12);
            v1820[0] = 5;
            v1821 = v1142;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1820);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1820);
            v1143 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1144 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1143, "mRendererVersion");
            v1145 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1144, "mMinor");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1820);
            v1146 = *v1145;
            *v1145 = 5;
            v1820[0] = v1146;
            v1147 = *(v1145 + 1);
            *(v1145 + 1) = v1142;
            v1821 = v1147;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1145);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1820);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1821, v1146);
            v1148 = *(v1069 + 13);
            v1818[0] = 5;
            v1819 = v1148;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1818);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1818);
            v1149 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mAuthoringInformation");
            v1150 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1149, "mRendererVersion");
            v1151 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1150, "mPatch");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1818);
            v1152 = *v1151;
            *v1151 = 5;
            v1818[0] = v1152;
            v1153 = *(v1151 + 1);
            *(v1151 + 1) = v1148;
            v1819 = v1153;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1151);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1818);
            v1154 = v1818;
            goto LABEL_153;
          case 5u:
            v1229 = *(v1069 + 4);
            v1816[0] = 7;
            v1817 = v1229;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1816);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1816);
            v1230 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
            v1231 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1230, "mAspectRatio");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1816);
            v1232 = *v1231;
            *v1231 = 7;
            v1816[0] = v1232;
            v1233 = *(v1231 + 1);
            *(v1231 + 1) = v1229;
            v1817 = *&v1233;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1231);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1816);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1817, v1232);
            v1234 = *(v1069 + 20);
            v1814[0] = 4;
            v1815 = v1234;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1814);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1814);
            v1235 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
            v1236 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1235, "mIsCartesian");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1814);
            v1237 = *v1236;
            *v1236 = 4;
            v1814[0] = v1237;
            v1238 = *(v1236 + 1);
            *(v1236 + 1) = v1234;
            v1815 = v1238;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1236);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1814);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1815, v1237);
            if (*(v1069 + 20) == 1)
            {
              v1239 = *(v1069 + 6);
              v1812[0] = 7;
              v1813 = v1239;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1812);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1812);
              v1240 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1241 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1240, "mScreenCentrePosition");
              v1242 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1241, "mX");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1812);
              v1243 = *v1242;
              *v1242 = 7;
              v1812[0] = v1243;
              v1244 = *(v1242 + 1);
              *(v1242 + 1) = v1239;
              v1813 = *&v1244;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1242);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1812);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1813, v1243);
              v1245 = *(v1069 + 7);
              v1810[0] = 7;
              v1811 = v1245;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1810);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1810);
              v1246 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1247 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1246, "mScreenCentrePosition");
              v1248 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1247, "mY");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1810);
              v1249 = *v1248;
              *v1248 = 7;
              v1810[0] = v1249;
              v1250 = *(v1248 + 1);
              *(v1248 + 1) = v1245;
              v1811 = *&v1250;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1248);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1810);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1811, v1249);
              v1251 = *(v1069 + 8);
              v1808[0] = 7;
              v1809 = v1251;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1808);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1808);
              v1252 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1253 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1252, "mScreenCentrePosition");
              v1254 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1253, "mZ");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1808);
              v1255 = *v1254;
              *v1254 = 7;
              v1808[0] = v1255;
              v1256 = *(v1254 + 1);
              *(v1254 + 1) = v1251;
              v1809 = *&v1256;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1254);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1808);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1809, v1255);
              v1257 = *(v1069 + 12);
              v1806[0] = 7;
              v1807 = v1257;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1806);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1806);
              v1258 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1259 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1258, "mScreenWidth");
              v1260 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1259, "mX");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1806);
              v1152 = *v1260;
              *v1260 = 7;
              v1806[0] = v1152;
              v1261 = v1260[1];
              v1260[1] = v1257;
              v1807 = v1261;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1260);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1806);
              v1154 = v1806;
            }

            else
            {
              v1393 = *(v1069 + 9);
              v1804[0] = 7;
              v1805 = v1393;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1804);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1804);
              v1394 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1395 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1394, "mScreenCentrePosition");
              v1396 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1395, "mAzimuth");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1804);
              v1397 = *v1396;
              *v1396 = 7;
              v1804[0] = v1397;
              v1398 = *(v1396 + 1);
              *(v1396 + 1) = v1393;
              v1805 = *&v1398;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1396);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1804);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1805, v1397);
              v1399 = *(v1069 + 10);
              v1802[0] = 7;
              v1803 = v1399;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1802);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1802);
              v1400 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1401 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1400, "mScreenCentrePosition");
              v1402 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1401, "mElevation");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1802);
              v1403 = *v1402;
              *v1402 = 7;
              v1802[0] = v1403;
              v1404 = *(v1402 + 1);
              *(v1402 + 1) = v1399;
              v1803 = *&v1404;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1402);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1802);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1803, v1403);
              v1405 = *(v1069 + 11);
              v1800[0] = 7;
              v1801 = v1405;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1800);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1800);
              v1406 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1407 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1406, "mScreenCentrePosition");
              v1408 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1407, "mRadius");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1800);
              v1409 = *v1408;
              *v1408 = 7;
              v1800[0] = v1409;
              v1410 = *(v1408 + 1);
              *(v1408 + 1) = v1405;
              v1801 = *&v1410;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1408);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1800);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1801, v1409);
              v1411 = *(v1069 + 12);
              v1798[0] = 7;
              v1799 = v1411;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1798);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1798);
              v1412 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mRefScreen");
              v1413 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1412, "mScreenWidth");
              v1414 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1413, "mAzimuth");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1798);
              v1152 = *v1414;
              *v1414 = 7;
              v1798[0] = v1152;
              v1415 = v1414[1];
              v1414[1] = v1411;
              v1799 = v1415;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1414);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1798);
              v1154 = v1798;
            }

LABEL_153:
            v1416 = (v1154 + 8);
            v1417 = v1152;
            goto LABEL_156;
          case 6u:
            v1265 = *(v1069 + 56);
            v1796[0] = 5;
            v1797 = v1265;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1796);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1796);
            v1266 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
            v1267 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1266, "mSurroundDownmix");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1796);
            v1268 = *v1267;
            *v1267 = 5;
            v1796[0] = v1268;
            v1269 = *(v1267 + 1);
            *(v1267 + 1) = v1265;
            v1797 = v1269;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1267);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1796);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1797, v1268);
            v1270 = *(v1069 + 57);
            v1794[0] = 5;
            v1795 = v1270;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1794);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1794);
            v1271 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
            v1272 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1271, "mSurroundToStereoDownmix");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1794);
            v1273 = *v1272;
            *v1272 = 5;
            v1794[0] = v1273;
            v1274 = *(v1272 + 1);
            *(v1272 + 1) = v1270;
            v1795 = v1274;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1272);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1794);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1795, v1273);
            v1275 = *(v1069 + 58);
            v1792[0] = 5;
            v1793 = v1275;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1792);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1792);
            v1276 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
            v1277 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1276, "mPositionAdjustment");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1792);
            v1278 = *v1277;
            *v1277 = 5;
            v1792[0] = v1278;
            v1279 = *(v1277 + 1);
            *(v1277 + 1) = v1275;
            v1793 = v1279;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1277);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1792);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1793, v1278);
            v1280 = 0;
            v1281 = (v1644 + 36);
            do
            {
              v1282 = v1075[v1280];
              v1790[0] = 4;
              v1791 = v1282;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1790);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1790);
              v1283 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
              v1284 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1283, "mIsAutoTrim");
              v1285 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1284, v1280);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1790);
              v1286 = *v1285;
              *v1285 = 4;
              v1790[0] = v1286;
              v1287 = *(v1285 + 1);
              *(v1285 + 1) = v1282;
              v1791 = v1287;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1285);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1790);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1791, v1286);
              if ((v1075[v1280] & 1) == 0)
              {
                v1288 = *(v1281 - 1);
                v1788[0] = 7;
                v1789 = v1288;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1788);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1788);
                v1289 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
                v1290 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1289, "mMixingGains");
                v1291 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1290, v1280);
                v1292 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1291, "mFrontGain");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1788);
                v1293 = *v1292;
                *v1292 = 7;
                v1788[0] = v1293;
                v1294 = *(v1292 + 1);
                *(v1292 + 1) = v1288;
                v1789 = *&v1294;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1292);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1788);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1789, v1293);
                v1295 = *v1281;
                v1786[0] = 7;
                v1787 = v1295;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1786);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1786);
                v1296 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
                v1297 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1296, "mMixingGains");
                v1298 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1297, v1280);
                v1299 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1298, "mBackGain");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1786);
                v1300 = *v1299;
                *v1299 = 7;
                v1786[0] = v1300;
                v1301 = *(v1299 + 1);
                *(v1299 + 1) = v1295;
                v1787 = *&v1301;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1299);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1786);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1787, v1300);
                v1302 = v1281[1];
                v1784[0] = 7;
                v1785 = v1302;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1784);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1784);
                v1303 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
                v1304 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1303, "mMixingGains");
                v1305 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1304, v1280);
                v1306 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1305, "mTopGain");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1784);
                v1307 = *v1306;
                *v1306 = 7;
                v1784[0] = v1307;
                v1308 = *(v1306 + 1);
                *(v1306 + 1) = v1302;
                v1785 = *&v1308;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1306);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1784);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1785, v1307);
                v1309 = v1281[2];
                v1782[0] = 7;
                v1783 = v1309;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1782);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1782);
                v1310 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
                v1311 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1310, "mMixingGains");
                v1312 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1311, v1280);
                v1313 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1312, "mEarLevelBalance");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1782);
                v1314 = *v1313;
                *v1313 = 7;
                v1782[0] = v1314;
                v1315 = *(v1313 + 1);
                *(v1313 + 1) = v1309;
                v1783 = *&v1315;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1313);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1782);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1783, v1314);
                v1316 = v1281[3];
                v1780[0] = 7;
                v1781 = v1316;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1780);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1780);
                v1317 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
                v1318 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1317, "mMixingGains");
                v1319 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1318, v1280);
                v1320 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1319, "mHeightBalance");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1780);
                v1321 = *v1320;
                *v1320 = 7;
                v1780[0] = v1321;
                v1322 = *(v1320 + 1);
                *(v1320 + 1) = v1316;
                v1781 = *&v1322;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1320);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1780);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1781, v1321);
              }

              ++v1280;
              v1281 += 5;
            }

            while (v1280 != 9);
            v1069 = v1644;
            v1323 = *(v1644 + 248);
            v1778[0] = 5;
            v1779 = v1323;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1778);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1778);
            v1324 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
            v1325 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1324, "mNumChannels");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1778);
            v1326 = *v1325;
            *v1325 = 5;
            v1778[0] = v1326;
            v1327 = *(v1325 + 1);
            *(v1325 + 1) = v1323;
            v1779 = v1327;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1325);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1778);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1779, v1326);
            if (*(v1644 + 248))
            {
              v1328 = 0;
              do
              {
                v1329 = *(v1638 + v1328 + 1455445);
                v1776[0] = 4;
                v1777 = v1329;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1776);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1776);
                v1330 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSupplementaryProductionMetadata");
                v1331 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1330, "mIsPerChTrimEnabled");
                v1332 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1331, v1328);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1776);
                v1333 = *v1332;
                *v1332 = 4;
                v1776[0] = v1333;
                v1334 = *(v1332 + 1);
                *(v1332 + 1) = v1329;
                v1777 = v1334;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1332);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1776);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1777, v1333);
                ++v1328;
              }

              while (v1328 < *(v1644 + 248));
            }

            goto LABEL_157;
          case 7u:
            v1186 = *(v1069 + 380);
            v1774[0] = 4;
            v1775 = v1186;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1774);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1774);
            v1187 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
            v1188 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1187, "mIsDirectBinauralization");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1774);
            v1189 = *v1188;
            *v1188 = 4;
            v1774[0] = v1189;
            v1190 = *(v1188 + 1);
            *(v1188 + 1) = v1186;
            v1775 = v1190;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1188);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1774);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1775, v1189);
            if (*(v1069 + 380) == 1)
            {
              v1191 = *(v1069 + 96);
              v1772[0] = 5;
              v1773 = v1191;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1772);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1772);
              v1192 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1193 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1192, "mChannelLayoutTag");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1772);
              v1194 = *v1193;
              *v1193 = 5;
              v1772[0] = v1194;
              v1195 = *(v1193 + 1);
              *(v1193 + 1) = v1191;
              v1773 = v1195;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1193);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1772);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1773, v1194);
            }

            v1196 = *(v1069 + 388);
            v1770[0] = 5;
            v1771 = v1196;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1770);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1770);
            v1197 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
            v1198 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1197, "mHRTFType");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1770);
            v1199 = *v1198;
            *v1198 = 5;
            v1770[0] = v1199;
            v1200 = *(v1198 + 1);
            *(v1198 + 1) = v1196;
            v1771 = v1200;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1198);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1770);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1771, v1199);
            v1201 = *(v1069 + 388);
            if (v1201 == 1)
            {
              v1418 = *(v1069 + 389);
              v1768[0] = 5;
              v1769 = v1418;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1768);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1768);
              v1419 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1420 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1419, "mPredefinedIR_ID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1768);
              v1163 = *v1420;
              *v1420 = 5;
              v1768[0] = v1163;
              v1421 = *(v1420 + 1);
              *(v1420 + 1) = v1418;
              v1769 = v1421;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1420);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1768);
              v1165 = v1768;
LABEL_155:
              v1416 = (v1165 + 8);
              v1417 = v1163;
LABEL_156:
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v1416, v1417);
              goto LABEL_157;
            }

            if (v1201 == 2)
            {
              v1202 = *(v1069 + 389);
              v1766[0] = 5;
              v1767 = v1202;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1766);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1766);
              v1203 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1204 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1203, "mPredefinedIR_ID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1766);
              v1205 = *v1204;
              *v1204 = 5;
              v1766[0] = v1205;
              v1206 = *(v1204 + 1);
              *(v1204 + 1) = v1202;
              v1767 = v1206;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1204);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1766);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1767, v1205);
              v1207 = *(v1069 + 394);
              v1764[0] = 5;
              v1765 = v1207;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1764);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1764);
              v1208 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1209 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1208, "mDataLocationIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1764);
              v1210 = *v1209;
              *v1209 = 5;
              v1764[0] = v1210;
              v1211 = *(v1209 + 1);
              *(v1209 + 1) = v1207;
              v1765 = v1211;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1209);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1764);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1765, v1210);
              v1212 = v1069[195];
              v1762[0] = 5;
              v1763 = v1212;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1762);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1762);
              v1213 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1214 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1213, "mCustomData_TableID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1762);
              v1215 = *v1214;
              *v1214 = 5;
              v1762[0] = v1215;
              v1216 = *(v1214 + 1);
              *(v1214 + 1) = v1212;
              v1763 = v1216;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1214);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1762);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1763, v1215);
              v1217 = v1069[196];
              v1760[0] = 5;
              v1761 = v1217;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1760);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1760);
              v1218 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1219 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1218, "mCustomData_EntryID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1760);
              v1220 = *v1219;
              *v1219 = 5;
              v1760[0] = v1220;
              v1221 = *(v1219 + 1);
              *(v1219 + 1) = v1217;
              v1761 = v1221;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1219);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1760);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1761, v1220);
              v1222 = *(v1069 + 388);
              v1758[0] = 5;
              v1759 = v1222;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1758);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1758);
              v1223 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mBinauralization");
              v1224 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1223, "mHRTFType");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1758);
              v1163 = *v1224;
              *v1224 = 5;
              v1758[0] = v1163;
              v1225 = *(v1224 + 1);
              *(v1224 + 1) = v1222;
              v1759 = v1225;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1224);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1758);
              v1165 = v1758;
              goto LABEL_155;
            }

LABEL_157:
            if (++v1074 == v1652)
            {
              goto LABEL_164;
            }

            break;
          case 8u:
            v1354 = *(v1069 + 396);
            v1756[0] = 5;
            v1757 = v1354;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1756);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1756);
            v1355 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mHCFilter");
            v1356 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1355, "mDataLocationIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1756);
            v1357 = *v1356;
            *v1356 = 5;
            v1756[0] = v1357;
            v1358 = *(v1356 + 1);
            *(v1356 + 1) = v1354;
            v1757 = v1358;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1356);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1756);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1757, v1357);
            v1359 = v1069[199];
            v1754[0] = 5;
            v1755 = v1359;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1754);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1754);
            v1360 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mHCFilter");
            v1361 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1360, "mCustomData_TableID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1754);
            v1362 = *v1361;
            *v1361 = 5;
            v1754[0] = v1362;
            v1363 = *(v1361 + 1);
            *(v1361 + 1) = v1359;
            v1755 = v1363;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1361);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1754);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1755, v1362);
            v1364 = v1069[200];
            v1752[0] = 5;
            v1753 = v1364;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1752);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1752);
            v1365 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mHCFilter");
            v1366 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1365, "mCustomData_EntryID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1752);
            v1163 = *v1366;
            *v1366 = 5;
            v1752[0] = v1163;
            v1367 = *(v1366 + 1);
            *(v1366 + 1) = v1364;
            v1753 = v1367;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1366);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1752);
            v1165 = v1752;
            goto LABEL_155;
          case 9u:
            v1166 = *(v1069 + 404);
            v1750[0] = 5;
            v1751 = v1166;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1750);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1750);
            v1167 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSPAD");
            v1168 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1167, "mDataLocationIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1750);
            v1169 = *v1168;
            *v1168 = 5;
            v1750[0] = v1169;
            v1170 = *(v1168 + 1);
            *(v1168 + 1) = v1166;
            v1751 = v1170;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1168);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1750);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1751, v1169);
            v1171 = v1069[203];
            v1748[0] = 5;
            v1749 = v1171;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1748);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1748);
            v1172 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSPAD");
            v1173 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1172, "mCustomData_TableID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1748);
            v1174 = *v1173;
            *v1173 = 5;
            v1748[0] = v1174;
            v1175 = *(v1173 + 1);
            *(v1173 + 1) = v1171;
            v1749 = v1175;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1173);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1748);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1749, v1174);
            v1176 = v1069[204];
            v1746[0] = 5;
            v1747 = v1176;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1746);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1746);
            v1177 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mSPAD");
            v1178 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1177, "mCustomData_EntryID");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1746);
            v1163 = *v1178;
            *v1178 = 5;
            v1746[0] = v1163;
            v1179 = *(v1178 + 1);
            *(v1178 + 1) = v1176;
            v1747 = v1179;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1178);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1746);
            v1165 = v1746;
            goto LABEL_155;
          case 0xAu:
            v1335 = *(v1069 + 548);
            v1744[0] = 5;
            v1745 = v1335;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1744);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1744);
            v1336 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mDistanceAttenuation");
            v1337 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1336, "mAttnLawIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1744);
            v1338 = *v1337;
            *v1337 = 5;
            v1744[0] = v1338;
            v1339 = *(v1337 + 1);
            *(v1337 + 1) = v1335;
            v1745 = v1339;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1337);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1744);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1745, v1338);
            v1340 = *(v1069 + 139);
            v1742[0] = 7;
            v1743 = v1340;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1742);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1742);
            v1341 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mDistanceAttenuation");
            v1342 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1341, "mRefDistance");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1742);
            v1343 = *v1342;
            *v1342 = 7;
            v1742[0] = v1343;
            v1344 = *(v1342 + 1);
            *(v1342 + 1) = v1340;
            v1743 = *&v1344;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1342);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1742);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1743, v1343);
            v1345 = *(v1069 + 140);
            v1740[0] = 7;
            v1741 = v1345;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1740);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1740);
            v1346 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mDistanceAttenuation");
            v1347 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1346, "mMaxDistance");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1740);
            v1348 = *v1347;
            *v1347 = 7;
            v1740[0] = v1348;
            v1349 = *(v1347 + 1);
            *(v1347 + 1) = v1345;
            v1741 = *&v1349;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1347);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1740);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1741, v1348);
            v1350 = *(v1069 + 564);
            v1738[0] = 4;
            v1739 = v1350;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1738);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1738);
            v1351 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mDistanceAttenuation");
            v1352 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1351, "mAttnNormIndex");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1738);
            v1088 = *v1352;
            *v1352 = 4;
            v1738[0] = v1088;
            v1353 = *(v1352 + 1);
            *(v1352 + 1) = v1350;
            v1739 = v1353;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1352);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1738);
            v1090 = v1738;
            goto LABEL_146;
          case 0xBu:
            v1091 = *(v1069 + 568);
            v1736[0] = 4;
            v1737 = v1091;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1736);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1736);
            v1092 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
            v1093 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1092, "mPositionPresent");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1736);
            v1094 = *v1093;
            *v1093 = 4;
            v1736[0] = v1094;
            v1095 = *(v1093 + 1);
            *(v1093 + 1) = v1091;
            v1737 = v1095;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1093);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1736);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1737, v1094);
            if (*(v1069 + 568) == 1)
            {
              v1096 = *(v1069 + 569);
              v1734[0] = 4;
              v1735 = v1096;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1734);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1734);
              v1097 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
              v1098 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1097, "mIsCartesian");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1734);
              v1099 = *v1098;
              *v1098 = 4;
              v1734[0] = v1099;
              v1100 = *(v1098 + 1);
              *(v1098 + 1) = v1096;
              v1735 = v1100;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1098);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1734);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1735, v1099);
              if (*(v1069 + 569) == 1)
              {
                for (i = 0; i != 3; ++i)
                {
                  v1102 = *&v1638[2 * i + 727892];
                  v1732[0] = 7;
                  v1733 = v1102;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1732);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1732);
                  v1103 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
                  v1104 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1103, "mCoordinate");
                  v1105 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1104, i);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1732);
                  v1106 = *v1105;
                  *v1105 = 7;
                  v1732[0] = v1106;
                  v1107 = *(v1105 + 1);
                  *(v1105 + 1) = v1102;
                  v1733 = *&v1107;
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1105);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1732);
                  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1733, v1106);
                }
              }

              else
              {
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<float const&,float,0>(v1731, v1638 + 363942);
                v1422 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
                v1423 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1422, "mAzimuth");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(v1423, v1731);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v1731);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<float const&,float,0>(v1730, v1638 + 363943);
                v1424 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
                v1425 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1424, "mElevation");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(v1425, v1730);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v1730);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<float const&,float,0>(v1729, v1638 + 363944);
                v1426 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
                v1427 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1426, "mRadius");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(v1427, v1729);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v1729);
              }
            }

            v1428 = *(v1069 + 584);
            v1727[0] = 4;
            v1728 = v1428;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1727);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1727);
            v1429 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
            v1430 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1429, "mRotationPresent");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1727);
            v1431 = *v1430;
            *v1430 = 4;
            v1727[0] = v1431;
            v1432 = *(v1430 + 1);
            *(v1430 + 1) = v1428;
            v1728 = v1432;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1430);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1727);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1728, v1431);
            if (*(v1069 + 584) == 1)
            {
              for (j = 0; j != 4; ++j)
              {
                v1434 = *&v1648[2 * j];
                v1725[0] = 7;
                v1726 = v1434;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1725);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1725);
                v1435 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mCameraPerspective");
                v1436 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1435, "mQuaternion");
                v1437 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1436, j);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1725);
                v1438 = *v1437;
                *v1437 = 7;
                v1725[0] = v1438;
                v1439 = *(v1437 + 1);
                *(v1437 + 1) = v1434;
                v1726 = *&v1439;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1437);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1725);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1726, v1438);
              }
            }

            goto LABEL_157;
          case 0xCu:
            v1155 = *(v1069 + 616);
            v1723[0] = 4;
            v1724 = v1155;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1723);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1723);
            v1156 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
            v1157 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1156, "mHasPreset");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1723);
            v1158 = *v1157;
            *v1157 = 4;
            v1723[0] = v1158;
            v1159 = *(v1157 + 1);
            *(v1157 + 1) = v1155;
            v1724 = v1159;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1157);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1723);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1724, v1158);
            if (*(v1069 + 616) == 1)
            {
              v1160 = v1069[309];
              v1721[0] = 5;
              v1722 = v1160;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1721);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1721);
              v1161 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
              v1162 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1161, "mPresetIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1721);
              v1163 = *v1162;
              *v1162 = 5;
              v1721[0] = v1163;
              v1164 = *(v1162 + 1);
              *(v1162 + 1) = v1160;
              v1722 = v1164;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1162);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1721);
              v1165 = v1721;
            }

            else
            {
              v1369 = *(v1069 + 620);
              v1719[0] = 5;
              v1720 = v1369;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1719);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1719);
              v1370 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
              v1371 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1370, "mDataLocationIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1719);
              v1372 = *v1371;
              *v1371 = 5;
              v1719[0] = v1372;
              v1373 = *(v1371 + 1);
              *(v1371 + 1) = v1369;
              v1720 = v1373;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1371);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1719);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1720, v1372);
              v1374 = v1069[311];
              v1717[0] = 5;
              v1718 = v1374;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1717);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1717);
              v1375 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
              v1376 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1375, "mCustomData_TableID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1717);
              v1377 = *v1376;
              *v1376 = 5;
              v1717[0] = v1377;
              v1378 = *(v1376 + 1);
              *(v1376 + 1) = v1374;
              v1718 = v1378;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1376);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1717);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1718, v1377);
              v1379 = v1069[312];
              v1715[0] = 5;
              v1716 = v1379;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1715);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1715);
              v1380 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
              v1381 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1380, "mCustomData_EntryID");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1715);
              v1382 = *v1381;
              *v1381 = 5;
              v1715[0] = v1382;
              v1383 = *(v1381 + 1);
              *(v1381 + 1) = v1379;
              v1716 = v1383;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1381);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1715);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1716, v1382);
              v1384 = v1069[313];
              v1713[0] = 5;
              v1714 = v1384;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1713);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1713);
              v1385 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
              v1386 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1385, "mFallbackIndex");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1713);
              v1387 = *v1386;
              *v1386 = 5;
              v1713[0] = v1387;
              v1388 = *(v1386 + 1);
              *(v1386 + 1) = v1384;
              v1714 = v1388;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1386);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1713);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1714, v1387);
              v1389 = *(v1069 + 157);
              v1711[0] = 5;
              v1712 = v1389;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1711);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1711);
              v1390 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mGenericRenderingConfig");
              v1391 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1390, "mDataByteSize");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1711);
              v1163 = *v1391;
              *v1391 = 5;
              v1711[0] = v1163;
              v1392 = *(v1391 + 1);
              *(v1391 + 1) = v1389;
              v1712 = v1392;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1391);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1711);
              v1165 = v1711;
            }

            goto LABEL_155;
          case 0xDu:
            v1262 = *(v1069 + 4);
            v1709[0] = 5;
            v1710 = v1262;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1709);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1709);
            v1263 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mContentKind");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1709);
            v1088 = *v1263;
            *v1263 = 5;
            v1709[0] = v1088;
            v1264 = *(v1263 + 1);
            *(v1263 + 1) = v1262;
            v1710 = v1264;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1263);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1709);
            v1090 = v1709;
            goto LABEL_146;
          case 0xEu:
            v1086 = *(v1069 + 5);
            v1707[0] = 5;
            v1708 = v1086;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1707);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1707);
            v1087 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1064, "mMaxNumBlocks");
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1707);
            v1088 = *v1087;
            *v1087 = 5;
            v1707[0] = v1088;
            v1089 = *(v1087 + 1);
            *(v1087 + 1) = v1086;
            v1708 = v1089;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1087);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1707);
            v1090 = v1707;
LABEL_146:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v1090 + 1, v1088);
            goto LABEL_157;
          case 0xFu:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[21],char [21],0>(v1706);
          default:
            std::to_string(&v2006, v1660[v1074]);
            v1368 = std::string::insert(&v2006, 0, "Unknown parameter id ", 0x15uLL);
            v2007 = *v1368;
            v1368->__r_.__value_.__l.__size_ = 0;
            v1368->__r_.__value_.__r.__words[2] = 0;
            v1368->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v2006.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v2006.__r_.__value_.__l.__data_);
            }

            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[16],char [16],0>(v1705);
        }
      }
    }
  }

LABEL_164:
  v1656 = (v1069 + 334);
  v1440 = *(v1069 + 334);
  v1441 = -1431655765 * ((*(v1069 + 338) - v1440) >> 4);
  v1661 = *(v1646 + 7);
  if (v1441 >= v1661)
  {
    v1441 = *(v1646 + 7);
  }

  if (!v1441)
  {
LABEL_193:
    v1564 = *(v1646 + 7);
    v1675[0] = 5;
    v1676 = v1564;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1675);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1675);
    v1565 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
    v1566 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1565, "mRendererMetadata");
    v1567 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1566, "mGroupCount");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1675);
    v1568 = *v1567;
    *v1567 = 5;
    v1675[0] = v1568;
    v1569 = *(v1567 + 1);
    *(v1567 + 1) = v1564;
    v1676 = v1569;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1567);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1675);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1676, v1568);
    v1653 = *(v1646 + 7);
    if (*(v1646 + 7))
    {
      v1570 = 0;
      v1649 = (v1644 + 346);
      v1657 = 16;
      do
      {
        v1571 = *v1649;
        v1572 = (*v1649 + 40200 * v1570);
        v1573 = *v1572;
        v1673[0] = 4;
        v1674 = v1573;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1673);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1673);
        v1574 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
        v1575 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1574, "mRendererMetadata");
        v1576 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1575, "mGroupData");
        v1577 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1576, v1570);
        v1578 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1577, "mHasData");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1673);
        v1579 = *v1578;
        *v1578 = 4;
        v1673[0] = v1579;
        v1580 = *(v1578 + 1);
        *(v1578 + 1) = v1573;
        v1674 = v1580;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1578);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1673);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1674, v1579);
        if (*v1572 == 1)
        {
          v1581 = *(v1572 + 1);
          v1671[0] = 5;
          v1672 = v1581;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1671);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1671);
          v1582 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
          v1583 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1582, "mRendererMetadata");
          v1584 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1583, "mGroupData");
          v1585 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1584, v1570);
          v1586 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1585, "mGroupID");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1671);
          v1587 = *v1586;
          *v1586 = 5;
          v1671[0] = v1587;
          v1588 = *(v1586 + 1);
          *(v1586 + 1) = v1581;
          v1672 = v1588;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1586);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1671);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1672, v1587);
          v1589 = v1572[4];
          v1669[0] = 5;
          v1670 = v1589;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1669);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1669);
          v1590 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
          v1591 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1590, "mRendererMetadata");
          v1592 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1591, "mGroupData");
          v1593 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1592, v1570);
          v1594 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1593, "mNumBlocks");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1669);
          v1595 = *v1594;
          *v1594 = 5;
          v1669[0] = v1595;
          v1596 = *(v1594 + 1);
          *(v1594 + 1) = v1589;
          v1670 = v1596;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1594);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1669);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1670, v1595);
          v1662 = v1572[4];
          if (v1572[4])
          {
            v1597 = 0;
            v1598 = (v1571 + v1657);
            do
            {
              v1599 = *(v1598 - 4);
              v1667[0] = 5;
              v1668 = v1599;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1667);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1667);
              v1600 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
              v1601 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1600, "mRendererMetadata");
              v1602 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1601, "mGroupData");
              v1603 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1602, v1570);
              v1604 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1603, "mBlockData");
              v1605 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1604, v1597);
              v1606 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1605, "mRtime");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1667);
              v1607 = *v1606;
              *v1606 = 5;
              v1667[0] = v1607;
              v1608 = *(v1606 + 1);
              *(v1606 + 1) = v1599;
              v1668 = v1608;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1606);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1667);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1668, v1607);
              v1609 = *(v1598 - 6);
              v1665[0] = 4;
              v1666 = v1609;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1665);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1665);
              v1610 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
              v1611 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1610, "mRendererMetadata");
              v1612 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1611, "mGroupData");
              v1613 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1612, v1570);
              v1614 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1613, "mBlockData");
              v1615 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1614, v1597);
              v1616 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1615, "mHasInterpolationLength");
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1665);
              v1617 = *v1616;
              *v1616 = 4;
              v1665[0] = v1617;
              v1618 = *(v1616 + 1);
              *(v1616 + 1) = v1609;
              v1666 = v1618;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1616);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1665);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1666, v1617);
              if (*(v1598 - 6) == 1)
              {
                v1619 = *(v1598 - 2);
                v1663[0] = 5;
                v1664 = v1619;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1663);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1663);
                v1620 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
                v1621 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1620, "mRendererMetadata");
                v1622 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1621, "mGroupData");
                v1623 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1622, v1570);
                v1624 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1623, "mBlockData");
                v1625 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1624, v1597);
                v1626 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1625, "mInterpolationLength");
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1663);
                v1627 = *v1626;
                *v1626 = 5;
                v1663[0] = v1627;
                v1628 = *(v1626 + 1);
                *(v1626 + 1) = v1619;
                v1664 = v1628;
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1626);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1663);
                nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1664, v1627);
              }

              v1629 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, "mMetadataFrame");
              v1630 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1629, "mRendererMetadata");
              v1631 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1630, "mGroupData");
              v1632 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1631, v1570);
              v1633 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1632, "mBlockData");
              v1634 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1633, v1597);
              v1635 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1634, "mRendererData");
              APAC::RendererDataJSON(v1635, v1598, 0);
              ++v1597;
              v1598 += 314;
            }

            while (v1662 != v1597);
          }
        }

        ++v1570;
        v1657 += 40200;
      }

      while (v1570 != v1653);
    }

    goto LABEL_202;
  }

  v1442 = 0;
  v1443 = "mMetadataFrame";
  while (1)
  {
    v1444 = (v1440 + 48 * v1442);
    v1445 = *v1444;
    v1703[0] = 5;
    v1704 = v1445;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1703);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1703);
    v1446 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
    v1447 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1446, "mRendererMetadata");
    v1448 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1447, "mGroupConfig");
    v1449 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1448, v1442);
    v1450 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1449, "mGroupID");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1703);
    v1451 = *v1450;
    *v1450 = 5;
    v1703[0] = v1451;
    v1452 = *(v1450 + 1);
    *(v1450 + 1) = v1445;
    v1704 = v1452;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1450);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1703);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1704, v1451);
    v1453 = *(v1444 + 2);
    v1701[0] = 4;
    v1702 = v1453;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1701);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1701);
    v1454 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
    v1455 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1454, "mRendererMetadata");
    v1456 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1455, "mGroupConfig");
    v1457 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1456, v1442);
    v1458 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1457, "mIsGlobal");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1701);
    v1459 = *v1458;
    *v1458 = 4;
    v1701[0] = v1459;
    v1460 = *(v1458 + 1);
    *(v1458 + 1) = v1453;
    v1702 = v1460;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1458);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1701);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1702, v1459);
    if ((v1444[1] & 1) == 0)
    {
      v1461 = v1444[2];
      v1699[0] = 5;
      v1700 = v1461;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1699);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1699);
      v1462 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
      v1463 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1462, "mRendererMetadata");
      v1464 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1463, "mGroupConfig");
      v1465 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1464, v1442);
      v1466 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1465, "mASCID");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1699);
      v1467 = *v1466;
      *v1466 = 5;
      v1699[0] = v1467;
      v1468 = *(v1466 + 1);
      *(v1466 + 1) = v1461;
      v1700 = v1468;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1466);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1699);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1700, v1467);
      v1469 = *(v1444 + 3);
      v1697[0] = 4;
      v1698 = v1469;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1697);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1697);
      v1470 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
      v1471 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1470, "mRendererMetadata");
      v1472 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1471, "mGroupConfig");
      v1473 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1472, v1442);
      v1474 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1473, "mIsPerASC");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1697);
      v1475 = *v1474;
      *v1474 = 4;
      v1697[0] = v1475;
      v1476 = *(v1474 + 1);
      *(v1474 + 1) = v1469;
      v1698 = v1476;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1474);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1697);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1698, v1475);
      if (*(v1444 + 3) != 1)
      {
        v1495 = v1444[9];
        v1683[0] = 5;
        v1684 = v1495;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1683);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1683);
        v1496 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1497 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1496, "mRendererMetadata");
        v1498 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1497, "mGroupConfig");
        v1499 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1498, v1442);
        v1500 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1499, "mMemberCount");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1683);
        v1501 = *v1500;
        *v1500 = 5;
        v1683[0] = v1501;
        v1502 = *(v1500 + 1);
        *(v1500 + 1) = v1495;
        v1684 = v1502;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1500);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1683);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1684, v1501);
        v1503 = v1444[9];
        v1504 = *(v1444 + 20);
        v1681[0] = 4;
        v1682 = v1504;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1681);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1681);
        v1505 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1506 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1505, "mRendererMetadata");
        v1507 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1506, "mGroupConfig");
        v1508 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1507, v1442);
        v1509 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1508, "mHasConjunctMembers");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1681);
        v1510 = *v1509;
        *v1509 = 4;
        v1681[0] = v1510;
        v1511 = *(v1509 + 1);
        *(v1509 + 1) = v1504;
        v1682 = v1511;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1509);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1681);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1682, v1510);
        if ((v1444[10] & 1) == 0)
        {
          v1519 = *(v1444 + 3);
          v1520 = (*(v1444 + 4) - v1519) >> 1;
          if (v1520 >= v1503)
          {
            LODWORD(v1520) = v1503;
          }

          if (v1520)
          {
            v1521 = 0;
            do
            {
              v1522 = *(v1519 + 2 * v1521);
              v1677[0] = 5;
              v1678 = v1522;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1677);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1677);
              v1523 = v1443;
              v1524 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
              v1525 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1524, "mRendererMetadata");
              v1526 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1525, "mGroupConfig");
              v1527 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1526, v1442);
              v1528 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1527, "mASCIDList");
              v1529 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1528, v1521);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1677);
              v1530 = *v1529;
              *v1529 = 5;
              v1677[0] = v1530;
              v1531 = *(v1529 + 1);
              *(v1529 + 1) = v1522;
              v1678 = v1531;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1529);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1677);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1678, v1530);
              ++v1521;
              v1519 = *(v1444 + 3);
              v1532 = (*(v1444 + 4) - v1519) >> 1;
              if (v1532 >= v1503)
              {
                v1532 = v1503;
              }

              else
              {
                v1532 = v1532;
              }

              v1443 = v1523;
            }

            while (v1521 < v1532);
          }

          goto LABEL_189;
        }

        v1512 = v1444[11];
        v1679[0] = 5;
        v1680 = v1512;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1679);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1679);
        v1513 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1514 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1513, "mRendererMetadata");
        v1515 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1514, "mGroupConfig");
        v1516 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1515, v1442);
        v1517 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1516, "mStartASCID");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1679);
        v1492 = *v1517;
        *v1517 = 5;
        v1679[0] = v1492;
        v1518 = *(v1517 + 1);
        *(v1517 + 1) = v1512;
        v1680 = v1518;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1517);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1679);
        v1494 = v1679;
        goto LABEL_188;
      }

      v1477 = *(v1444 + 6);
      v1695[0] = 5;
      v1696 = v1477;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1695);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1695);
      v1478 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
      v1479 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1478, "mRendererMetadata");
      v1480 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1479, "mGroupConfig");
      v1481 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1480, v1442);
      v1482 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1481, "mASCType");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1695);
      v1483 = *v1482;
      *v1482 = 5;
      v1695[0] = v1483;
      v1484 = *(v1482 + 1);
      *(v1482 + 1) = v1477;
      v1696 = v1484;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1482);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1695);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1696, v1483);
      v1485 = *(v1444 + 6);
      if (!*(v1444 + 6))
      {
        v1556 = v1444[8];
        v1693[0] = 5;
        v1694 = v1556;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1693);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1693);
        v1557 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1558 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1557, "mRendererMetadata");
        v1559 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1558, "mGroupConfig");
        v1560 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1559, v1442);
        v1561 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1560, "mChBedID");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1693);
        v1492 = *v1561;
        *v1561 = 5;
        v1693[0] = v1492;
        v1562 = *(v1561 + 1);
        *(v1561 + 1) = v1556;
        v1694 = v1562;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1561);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1693);
        v1494 = v1693;
        goto LABEL_188;
      }

      if (v1485 == 1)
      {
        v1533 = v1444[4];
        v1691[0] = 5;
        v1692 = v1533;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1691);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1691);
        v1534 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1535 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1534, "mRendererMetadata");
        v1536 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1535, "mGroupConfig");
        v1537 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1536, v1442);
        v1538 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1537, "mObjectID");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1691);
        v1539 = *v1538;
        *v1538 = 5;
        v1691[0] = v1539;
        v1540 = *(v1538 + 1);
        *(v1538 + 1) = v1533;
        v1692 = v1540;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1538);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1691);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1692, v1539);
        v1541 = *(v1444 + 10);
        v1689[0] = 4;
        v1690 = v1541;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1689);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1689);
        v1542 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1543 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1542, "mRendererMetadata");
        v1544 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1543, "mGroupConfig");
        v1545 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1544, v1442);
        v1546 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1545, "mIsObjectInBed");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1689);
        v1547 = *v1546;
        *v1546 = 4;
        v1689[0] = v1547;
        v1548 = *(v1546 + 1);
        *(v1546 + 1) = v1541;
        v1690 = v1548;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1546);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1689);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v1690, v1547);
        if (*(v1444 + 10) == 1)
        {
          v1549 = v1444[6];
          v1687[0] = 5;
          v1688 = v1549;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1687);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1687);
          v1550 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
          v1551 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1550, "mRendererMetadata");
          v1552 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1551, "mGroupConfig");
          v1553 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1552, v1442);
          v1554 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1553, "mBedASCID");
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1687);
          v1492 = *v1554;
          *v1554 = 5;
          v1687[0] = v1492;
          v1555 = *(v1554 + 1);
          *(v1554 + 1) = v1549;
          v1688 = v1555;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1554);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1687);
          v1494 = v1687;
          goto LABEL_188;
        }
      }

      else if (v1485 == 2)
      {
        v1486 = v1444[7];
        v1685[0] = 5;
        v1686 = v1486;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1685);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1685);
        v1487 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v2082, v1443);
        v1488 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1487, "mRendererMetadata");
        v1489 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1488, "mGroupConfig");
        v1490 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v1489, v1442);
        v1491 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v1490, "mHOAID");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1685);
        v1492 = *v1491;
        *v1491 = 5;
        v1685[0] = v1492;
        v1493 = *(v1491 + 1);
        *(v1491 + 1) = v1486;
        v1686 = v1493;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1491);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1685);
        v1494 = v1685;
LABEL_188:
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v1494 + 1, v1492);
      }
    }

LABEL_189:
    ++v1442;
    v1440 = *v1656;
    LODWORD(v1563) = -1431655765 * ((*(v1069 + 338) - *v1656) >> 4);
    if (v1563 >= v1661)
    {
      v1563 = v1661;
    }

    else
    {
      v1563 = v1563;
    }

    if (v1442 >= v1563)
    {
      goto LABEL_193;
    }
  }
}