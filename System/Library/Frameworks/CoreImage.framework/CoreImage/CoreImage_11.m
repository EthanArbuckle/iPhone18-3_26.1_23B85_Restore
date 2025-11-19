void freeArcs(void **a1)
{
  free(*a1);
  free(a1[2]);

  free(a1);
}

int *computePupilAlphaMap(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v273[319] = *MEMORY[0x1E69E9840];
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v265 = 0u;
  v266 = 0u;
  v264 = 0;
  memset(v263, 0, sizeof(v263));
  v270 = 0;
  v271 = 0;
  histogramBitmap(a1, a2, &v272, &v271 + 1, &v271);
  v10 = v271;
  v11 = HIDWORD(v271);
  v14 = closestConnectedComponent(a1, (v271 + 2 * HIDWORD(v271)) / 3, v12, v13, &v270, &v270 + 1);
  if (!v14)
  {
    return 0;
  }

  v220 = a5;
  v221 = a6;
  termBitmask(v14);
  v15 = 0;
  v16 = 0;
  v244 = 0;
  v17 = (v11 + v10) >> 1;
  v18 = sqrt(a3 / 3.14159265);
  v222 = v270;
  v242 = v270;
  v240 = SHIDWORD(v270);
  if (v17 >= 20)
  {
    v17 = 20;
  }

  v19 = (v17 << 6);
  v20 = v18 * 0.5;
  v21 = 1.0;
  do
  {
    v247 = v16;
    v236 = v15;
    v22 = flt_19CF2B824[v15] + v242;
    v23 = v22;
    v24 = flt_19CF2B810[v15] + v240;
    v25 = v24;
    v256 = v22;
    v26 = v22 - (*(a1 + 8) - 1);
    v28 = v25 * v25 + v23 * v23;
    v232 = v22;
    v29 = (v26 * v26) + v25 * v25;
    if (v29 > v28)
    {
      v28 = (v26 * v26) + v25 * v25;
    }

    v27 = v24 - (*(a1 + 12) - 1);
    v30 = v27 * v27;
    v31 = v30 + v23 * v23;
    if (v28 < v31)
    {
      v28 = v30 + v23 * v23;
    }

    v32 = v30 + (v26 * v26);
    if (v32 <= v28)
    {
      v32 = v28;
    }

    if (*a1)
    {
      v244 = 0;
      v33 = 0;
      v225 = &v273[2 * v16];
      v34 = vcvtpd_s64_f64(sqrt(v32));
      v35 = 0.0;
      do
      {
        v36 = malloc_type_calloc(2 * v34, 2uLL, 0x1000040BDFB0063uLL);
        if (v36)
        {
          v37 = v36;
          v38 = v35 * 0.03125 * 6.28318531;
          v39 = __sincos_stret(v38);
          if (v34 < 1)
          {
            goto LABEL_35;
          }

          v40 = 0;
          cosval = v39.__cosval;
          sinval = v39.__sinval;
          v43 = v24;
          v44 = v256;
          v45 = &v37[v34];
          do
          {
            v37[v40] = bilinearLookupAccurate(a1, v44, v43);
            v44 = v44 + cosval;
            v43 = v43 + sinval;
            ++v40;
          }

          while (v34 != v40);
          v46 = v37 + 1;
          *v45 = (*v37 - v37[1]) & ~((*v37 - v37[1]) >> 31);
          v21 = 1.0;
          if (v34 < 3)
          {
LABEL_35:
            free(v37);
          }

          else
          {
            v47 = v34 - 2;
            do
            {
              v48 = v46;
              v49 = v46[1];
              ++v46;
              v48[v34] = (*(v48 - 1) - v49) & ~((*(v48 - 1) - v49) >> 31);
              --v47;
            }

            while (v47);
            v50 = 0;
            v46[v34] = (*(v46 - 1) - *v46) & ~((*(v46 - 1) - *v46) >> 31);
            HIDWORD(v271) = 0;
            v51 = v37[v34];
            LOWORD(v52) = v45[1];
            while (1)
            {
              v53 = v51;
              v51 = v52;
              v54 = v52;
              v52 = v37[v34 + 2 + v50];
              v55 = v52;
              v56 = v54 < v53 || v54 < v55;
              if (!v56 && v54 > v19 && (v53 != v54 || v54 != v55))
              {
                if (maximumPointWithSamples(&v271 + 1, &v271, v53, v54, v55))
                {
                  v59 = *(&v271 + 1) + v50;
                  if (v20 < v59)
                  {
                    break;
                  }
                }
              }

              if ((v34 - 1) - 1 == ++v50)
              {
                goto LABEL_35;
              }
            }

            free(v37);
            v60 = &v225[2 * v244];
            *v60 = v232 + (v59 * cosval);
            v60[1] = v24 + (v59 * sinval);
            ++v244;
          }
        }

        v35 = v35 + v21;
        ++v33;
      }

      while (v33 != 32);
    }

    v16 = v244 + v247;
    v15 = v236 + 1;
  }

  while (v236 != 4);
  if (!v16)
  {
    return 0;
  }

  if (v16 <= 0)
  {
    v68 = 0.0 / v16;
    v75 = sqrtf(0.0 / (v16 - 1));
  }

  else
  {
    v61 = v242;
    v62 = v240;
    v63 = v273;
    v64 = 0.0;
    v65 = (v244 + v247);
    do
    {
      v66 = *(v63 - 1) - v61;
      v67 = *v63 - v62;
      v64 = v64 + sqrtf((v67 * v67) + (v66 * v66));
      v63 += 2;
      --v65;
    }

    while (v65);
    v68 = v64 / v16;
    v69 = v273;
    v70 = 0.0;
    v71 = (v244 + v247);
    do
    {
      v72 = *(v69 - 1) - v61;
      v73 = *v69 - v62;
      v74 = sqrtf((v73 * v73) + (v72 * v72)) - v68;
      v70 = v70 + (v74 * v74);
      v69 += 2;
      --v71;
    }

    while (v71);
    v75 = sqrtf(v70 / (v16 - 1));
    if (v16 == 1)
    {
      v75 = 0.0;
    }
  }

  v76 = v68;
  v77 = v68 * 6.28318531;
  v78 = rintf(v77);
  v79 = v76 + v75 * 2.5;
  v80 = rintf(v79);
  initBitmap(v263, v78, v80 + 1, 1, 2, 100.0);
  v233 = v80 + 1;
  initBitmap(&v265, v78, v80 + 1, 1, 2, 100.0);
  v255 = v78;
  if (v78 >= 1)
  {
    v81 = 0;
    v82 = 0;
    v248 = v266;
    v83 = v265;
    v226 = v80 - 1;
    v252 = SHIDWORD(v266);
    v237 = 2 * SHIDWORD(v266);
    v84 = 2 * v266;
    v85 = 4 * v266;
    v86 = v84;
    v229 = v80;
    do
    {
      v87 = v82 / v255 * 6.28318531;
      v88 = __sincos_stret(v87);
      if ((v80 & 0x80000000) != 0)
      {
        v104 = (v83 + 2 * v82 * v252);
        v98 = *v104;
        v99 = &v104[v248];
        *v104 = (v98 - *v99) & ~((v98 - *v99) >> 31);
      }

      else
      {
        v91 = *&v263[0];
        v92 = v81;
        v93 = v233;
        count = v92;
        v94 = v240;
        v95 = v242;
        do
        {
          v96 = bilinearLookupAccurate(a1, v95, v94);
          *(v83 + v92) = v96;
          *(v91 + v92) = v96;
          v89 = v88.__cosval;
          v95 = v95 + v89;
          v90 = v88.__sinval;
          v94 = v94 + v90;
          v92 += v84;
          --v93;
        }

        while (v93);
        v83 = v265;
        v97 = (v265 + 2 * v82 * v252);
        v98 = *v97;
        v99 = &v97[v248];
        *v97 = (v98 - *v99) & ~((v98 - *v99) >> 31);
        LODWORD(v80) = v229;
        if (v229 < 2)
        {
          v81 = count;
        }

        else
        {
          v99 = (v83 + v86);
          v100 = v226;
          v101 = v85;
          v81 = count;
          do
          {
            v102 = v98 - *(v83 + v101);
            v98 = *v99;
            v103 = (2 * v102) & ~((2 * v102) >> 31);
            if (v103 >= 0xFFFF)
            {
              LOWORD(v103) = -1;
            }

            *v99 = v103;
            v99 = (v99 + v84);
            v101 += v84;
            --v100;
          }

          while (v100);
        }
      }

      *v99 = (v98 - *v99) & ~((v98 - *v99) >> 31);
      ++v82;
      v81 += v237;
      v86 += v237;
      v85 += v237;
    }

    while (v82 != (v255 & 0x7FFFFFFF));
  }

  v105 = malloc_type_calloc(v255, 0xA8uLL, 0x10000407D2148B3uLL);
  v106 = v105;
  if (!v105)
  {
    termBitmap(v263);
    termBitmap(&v265);
    return v106;
  }

  v272 = 0.0;
  HIDWORD(v271) = 0;
  v107 = DWORD2(v265);
  if (SDWORD2(v265) < 1)
  {
    v152 = 0;
  }

  else
  {
    v108 = 0;
    v109 = 0;
    counta = 0;
    v110 = HIDWORD(v265);
    v111 = DWORD2(v265);
    v227 = 4 * v266;
    v230 = v266;
    v112 = 2 * SHIDWORD(v266);
    v113 = v105;
    v114 = 2 - HIDWORD(v265);
    v115 = (v105 + 12);
    __asm { FMOV            V3.2D, #0.5 }

    v219 = v105;
    v238 = DWORD2(v265);
    v234 = HIDWORD(v265);
    v224 = v112;
    v257 = 2 * v266;
    v223 = _Q3;
    do
    {
      *v113 = 0;
      v120 = v109 / v111 * 6.28318531;
      v121 = __sincos_stret(v120);
      if (v110 >= 3)
      {
        v245 = v115;
        v249 = v109;
        LOBYTE(v122) = 0;
        v123 = v121.__cosval;
        v124 = v121.__sinval;
        v125 = v265;
        v126 = v265 + 2 * v230;
        v127 = *&v263[0] + v227;
        v128 = v265 + v227;
        v129 = 1;
        v253 = v108;
        v130 = v257;
        do
        {
          v131 = *(v126 + v108);
          v132 = *(v128 + v108);
          v133 = *(v127 + v108);
          if (v122)
          {
            if (v131 == v132)
            {
              LOBYTE(v122) = 1;
            }

            else
            {
              if (v131 > v132)
              {
                v272 = vcvts_n_f32_s32(counta + v129, 1uLL);
                hopperInsert(v113, v131, v272, (v242 + (v123 * v272)), (v240 + (v124 * v272)), v133 * 0.000061275);
                v130 = v257;
              }

              LOBYTE(v122) = 0;
            }
          }

          else
          {
            v134 = *(v125 + v108);
            if (v131 > v134 && v131 > v132)
            {
              if (maximumPointWithSamples(&v272, &v271 + 1, v134, v131, v132))
              {
                v272 = v272 + (v129 - 1);
                hopperInsert(v113, *(&v271 + 1), v272, (v242 + (v123 * v272)), (v240 + (v124 * v272)), v133 * 0.000061275);
              }

              LOBYTE(v122) = 0;
              v130 = v257;
            }

            else
            {
              v122 = *(v126 + v108) > v134 && *(v126 + v108) == v132;
              v136 = counta;
              if (v122)
              {
                v136 = v129;
              }

              counta = v136;
            }
          }

          v108 += v130;
          ++v129;
        }

        while (v114 + v129 != 1);
        v137 = *v113;
        v107 = v238;
        v112 = v224;
        v115 = v245;
        if (*v113 < 1)
        {
          v109 = v249;
          v108 = v253;
          v110 = v234;
        }

        else
        {
          v138 = 0;
          v139 = v113 + 2;
          v109 = v249;
          v108 = v253;
          v110 = v234;
          do
          {
            if (v137 >= 1)
            {
              v140 = 0;
              v141 = 0;
              v142 = v245;
              v143 = v113 + 2;
              v144 = v137;
              do
              {
                if (v138 < v141)
                {
                  v145 = *(v139 + 1);
                  v146 = *(v143 + 1);
                  if (vabds_f32(v145, v146) < 2.6)
                  {
                    v147 = (v145 + v146) * 0.5;
                    *(v139 + 1) = v147;
                    *v139 = (*v139 + *v143) * 0.5;
                    if (v147 <= *(v143 + 1))
                    {
                      v148 = v143;
                    }

                    else
                    {
                      v148 = v139;
                    }

                    v139[2] = v148[2];
                    *(v139 + 1) = vmulq_f64(vaddq_f64(*(v139 + 1), *(v143 + 1)), v223);
                    v137 = v144 - 1;
                    if (v141 + 1 < v144)
                    {
                      v149 = v140 + v137;
                      v150 = v142;
                      do
                      {
                        v151 = *(v150 + 1);
                        *(v150 - 40) = *v150;
                        *(v150 - 24) = v151;
                        *(v150 - 1) = *(v150 + 4);
                        v150 += 40;
                        --v149;
                      }

                      while (v149);
                    }

                    *v113 = v137;
                    v144 = v137;
                  }
                }

                ++v141;
                v143 += 10;
                --v140;
                v142 += 40;
              }

              while (v144 > v141);
            }

            ++v138;
            v139 += 10;
          }

          while (v138 < v137);
        }
      }

      ++v109;
      v113 += 42;
      v108 += v112;
      v115 += 168;
    }

    while (v109 != v107);
    LODWORD(v152) = 0;
    v106 = v219;
    v153 = v219;
    do
    {
      v154 = *v153;
      v153 += 42;
      v152 = (v154 + v152);
      LODWORD(v107) = v107 - 1;
    }

    while (v107);
  }

  termBitmap(v263);
  termBitmap(&v265);
  v156 = computeOutlineByTracingSnake(v106, v255, v152, &v268, &v269, v155);
  free(v106);
  if (!v156)
  {
    return 0;
  }

  v157 = v269;
  v158 = v268;
  if (v269 < 1)
  {
    v165 = 0.0;
    v167 = 0.0;
    v163 = 0.0;
    v162 = 0.0;
    v161 = 0.0;
  }

  else
  {
    v159 = 0;
    v160 = (v268 + 8);
    v161 = 0.0;
    v162 = 0.0;
    v163 = 0.0;
    v164 = 0.0;
    v165 = 0.0;
    do
    {
      v166 = *(v160 - 1);
      v167 = v166;
      if (v159)
      {
        if (v166 > v162)
        {
          v168 = v166;
        }

        else
        {
          v168 = v162;
        }

        if (v166 >= v164)
        {
          v167 = v164;
          v162 = v168;
        }

        if (*v160 > v161)
        {
          v169 = *v160;
        }

        else
        {
          v169 = v161;
        }

        if (*v160 >= v163)
        {
          v161 = v169;
        }

        else
        {
          v163 = *v160;
        }
      }

      else
      {
        v163 = *v160;
        v162 = v166;
        v161 = v163;
      }

      v165 = v165 + *(v160 + 2);
      ++v159;
      v160 += 6;
      v164 = v167;
    }

    while (v269 != v159);
  }

  countb = v162;
  v250 = v163;
  v170 = (1.0 / v269) * v165;
  v171 = v170;
  if (v170 <= 4.0)
  {
    v172 = v170;
  }

  else
  {
    v172 = 4.0;
  }

  if (v170 > 3.0)
  {
    v170 = 3.0;
  }

  v173 = v171 * 0.5;
  if (v173 < v170)
  {
    v170 = v173;
  }

  v231 = v170;
  if (v269 >= 1)
  {
    v174 = -v170;
    v175 = v268;
    do
    {
      v176 = *v175;
      v177 = v175[1];
      v178 = v176 - v242;
      v179 = v177 - v240;
      v180 = (v179 * v179) + (v178 * v178);
      if (v180 > 0.0)
      {
        v181 = 1.0 / sqrt(v180);
        v178 = v178 * v181;
        v179 = v179 * v181;
      }

      v182 = *v175;
      *(v175 + 6) = bilinearLookup(a1, v182, v177);
      *(v175 + 9) = bilinearLookup(a1, v176 + (v172 * v178), v177 + (v172 * v179));
      *(v175 + 8) = bilinearLookup(a1, v176 + (v174 * v178), v177 + (v174 * v179));
      v175 += 6;
      --v157;
    }

    while (v157);
  }

  v183 = vcvtms_s32_f32(v172 + v161);
  v184 = vcvtms_s32_f32(v172 + countb);
  v186 = *(a1 + 8);
  v185 = *(a1 + 12);
  if ((v183 + 1) < v185)
  {
    v187 = v183 + 1;
  }

  else
  {
    v187 = v185 - 1;
  }

  countc = v187;
  v188 = v186 - 1;
  if ((v184 + 1) < v186)
  {
    v188 = v184 + 1;
  }

  v258 = v188;
  v254 = *(a1 + 16);
  v189 = *(a1 + 28);
  v190 = malloc_type_malloc(0x28uLL, 0x1010040829CE571uLL);
  v106 = v190;
  if (!v190)
  {
    free(v158);
    return v106;
  }

  initBitmap(v190, *(a1 + 8), *(a1 + 12), 1, 1, 100.0);
  if (!*v106)
  {
    free(v158);
    free(v106);
    return 0;
  }

  v191 = vcvtms_s32_f32(v250 - v172);
  v192 = v191 & ~(v191 >> 31);
  bzero(*v106, v106[6]);
  if (v192 >= countc)
  {
    goto LABEL_166;
  }

  v193 = vcvtms_s32_f32(v167 - v172);
  v194 = v193 & ~(v193 >> 31);
  v246 = v106[4];
  v195 = *v106 + v246 * v192;
  v196 = *a1 + v254 * v192;
  v228 = v106;
  v197 = v106[7];
  v241 = v197 * v194;
  v243 = v189 * v194;
  v239 = v258 - v194;
  v251 = v194;
  v235 = v194 - v222;
  do
  {
    if (v258 > v251)
    {
      v198 = (v192 - HIDWORD(v222));
      v199 = v198 * v198;
      v200 = v198;
      v201 = v235;
      v202 = v239;
      v204 = v241;
      v203 = v243;
      do
      {
        v205 = sqrtf(v199 + (v201 * v201));
        v206 = atan2(v200, v201) * v255 / 6.28318531;
        v207 = vcvtms_s32_f32(v206);
        v208 = v206 - floorf(v206);
        v209 = (v255 & (v207 >> 31)) + v207;
        if (v209 + 1 == v255)
        {
          v210 = 0;
        }

        else
        {
          v210 = v209 + 1;
        }

        v211 = &v268[48 * v209];
        v212 = &v268[48 * v210];
        v213 = v211[4] + ((v212[4] - v211[4]) * v208);
        if (v205 <= (v172 + v213))
        {
          if (v205 < (v213 - v231))
          {
            LOBYTE(v214) = -1;
            goto LABEL_163;
          }

          v215 = v211[8];
          v216 = v211[9] + ((v212[9] - v211[9]) * v208);
          v217 = v215 + ((v212[8] - v215) * v208);
          if (v216 >= v217)
          {
            LOBYTE(v214) = 0x80;
            goto LABEL_163;
          }

          LOBYTE(v215) = *(v196 + v203);
          v214 = 2 * rintf(((LODWORD(v215) - v216) * 255.0) / (v217 - v216));
          if ((v214 & 0x80000000) == 0)
          {
            if (v214 >= 0xFF)
            {
              LOBYTE(v214) = -1;
            }

            goto LABEL_163;
          }
        }

        LOBYTE(v214) = 0;
LABEL_163:
        *(v195 + v204) = v214;
        v204 += v197;
        v203 += v189;
        ++v201;
        --v202;
      }

      while (v202);
    }

    ++v192;
    v196 += v254;
    v195 += v246;
  }

  while (v192 != countc);
  v158 = v268;
  v106 = v228;
LABEL_166:
  free(v158);
  *v220 = v222;
  *v221 = HIDWORD(v222);
  return v106;
}

uint64_t computeOutlineByTracingSnake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6);
  v180 = v7;
  v181 = v8;
  v10 = v9;
  v11 = v6;
  *&v218[4788] = *MEMORY[0x1E69E9840];
  v212 = 0u;
  memset(v213, 0, 496);
  v211 = 0;
  v13 = v12;
  memset(v210, 0, sizeof(v210));
  result = malloc_type_calloc(v12, 0x30uLL, 0x100004064842E6AuLL);
  if (!result)
  {
    return result;
  }

  v16 = result;
  v202 = v13;
  v203 = result;
  v17 = 0;
  LODWORD(v18) = 0;
  v187 = v10;
  v188 = (v11 + 40);
  v185 = v11 + 16;
  v186 = v11;
  __asm { FMOV            V0.2D, #0.5 }

  v207 = _Q0;
  v23 = v10;
  v182 = v10;
  while (1)
  {
    v24 = v10 - 1;
    v189 = v10 - 1;
    if (v10 < 1)
    {
      break;
    }

    v25 = 0;
    v26 = v188;
    while (1)
    {
      v27 = *(v11 + 168 * v25);
      v28 = v26;
      if (v27 >= 1)
      {
        break;
      }

LABEL_8:
      ++v25;
      v26 += 168;
      if (v25 == v23)
      {
        goto LABEL_43;
      }
    }

    while ((*v28 & 1) != 0)
    {
      v28 += 40;
      if (!--v27)
      {
        goto LABEL_8;
      }
    }

    v29 = 0;
    v30 = &v216[16 * v17];
    *v30 = v18;
    v183 = v30;
    v184 = v17 + 1;
    v30[8] = 0;
    v31 = &v16[48 * v18];
    v18 = v18;
    v32 = v28 - 32;
    v33 = -1.0;
    v34 = 0.0;
    v35 = v25;
    while (1)
    {
      v36 = &v16[48 * v18];
      *v36->i8 = *(v32 + 1);
      v37 = vrev64_s32(*v32);
      v204 = *v32;
      v206 = v37.i32[1];
      v36[2] = v37;
      v37.i32[0] = *(v32 + 2);
      v36[3].i32[0] = v37.i32[0];
      *&v36[3].i32[1] = v33;
      v36[5].i32[0] = v35;
      ++v18;
      *(v32 + 8) |= 1u;
      ++v29;
      v34 = *v204.i32 + v34;
      v38 = v35 + 1 == v10 ? 0 : v35 + 1;
      if (v38 == v25)
      {
        break;
      }

      v39 = (v11 + 168 * v38);
      if (v38 + 1 == v10)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38 + 1;
      }

      LODWORD(v210[0]) = 0;
      v43 = *v39;
      v41 = v39 + 2;
      v42 = v43;
      if (v43 < 1)
      {
        goto LABEL_39;
      }

      v192 = v38;
      v194 = v29;
      v44 = 0;
      v45 = v40;
      v46 = (v11 + 168 * v40);
      v200 = &v188[168 * v40];
      v190 = v41;
      v47 = v41;
      v196 = v18;
      v198 = v185 + 168 * v40;
      do
      {
        if ((v47[8] & 1) == 0)
        {
          v208 = *v47;
          v48 = vabds_f32(*v204.i32, *v47) / ((*v204.i32 + *v47) * 0.5);
          v49 = vabds_f32(*(v32 + 1), v47[1]) / ((*(v32 + 1) + v47[1]) * 0.5);
          v50 = vabds_f32(*(v32 + 2), v47[2]) + (v49 + v48);
          v51 = *v46;
          if (v45 == v25)
          {
            if (v51 >= 1)
            {
              v52 = *(v31 + 4);
              v53.i32[1] = v204.i32[1];
              v15.i32[0] = *v47;
              v54 = vzip1_s32(v15, v204);
              v55 = v198;
              do
              {
                v53.i32[0] = *(v55 - 4);
                if (*v53.i32 == v52 && *(v55 + 8) == *v31)
                {
                  v56 = *(v55 + 16);
                  if (v56 == *(v31 + 1))
                  {
                    LODWORD(v56) = *(v55 - 8);
                    if (*&v56 == *(v31 + 5))
                    {
                      v57.f32[0] = v47[1];
                      v58.f32[0] = v47[2];
                      v59 = vdup_lane_s32(*&v56, 0);
                      v57.i32[1] = *(v32 + 1);
                      v60 = vdup_lane_s32(v53, 0);
                      v61 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(v57, v60)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v60, v57)), v207)));
                      v58.i32[1] = *(v32 + 2);
                      v62 = vld1_dup_f32(v55);
                      v63 = vadd_f32(vabd_f32(v58, v62), vadd_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(v54, v59)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v54, v59)), v207))), v61));
                      minEnergyHopperInsert(v210, v44, (v50 + v63.f32[0]) + v63.f32[1]);
                    }
                  }
                }

                v55 += 40;
                --v51;
              }

              while (v51);
            }
          }

          else if (v51 >= 1)
          {
            v64 = v200;
            do
            {
              if ((*v64 & 1) == 0)
              {
                v65.f32[0] = v47[2];
                v66 = (v64 - 24);
                v67 = *(v64 - 32);
                v68 = vrev64_s32(v67);
                v69.i32[1] = v206;
                v69.f32[0] = v47[1];
                v70 = vdivq_f64(vcvtq_f64_f32(vabd_f32(v69, v68)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v69, v68)), v207));
                v69.f32[0] = v208;
                v69.i32[1] = *(v32 + 1);
                v71 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(v69, v67)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v69, v67)), v207)));
                v65.i32[1] = *(v32 + 2);
                v72 = vld1_dup_f32(v66);
                v73 = vadd_f32(vabd_f32(v65, v72), vadd_f32(vcvt_f32_f64(v70), v71));
                minEnergyHopperInsert(v210, v44, (v50 + v73.f32[0]) + v73.f32[1]);
              }

              v64 += 40;
              --v51;
            }

            while (v51);
          }
        }

        ++v44;
        v47 += 10;
      }

      while (v44 != v42);
      v11 = v186;
      v10 = v187;
      v16 = v203;
      v18 = v196;
      v29 = v194;
      v35 = v192;
      if (!LODWORD(v210[0]))
      {
LABEL_39:
        *(v183 + 1) = v29;
        *(v183 + 3) = v34;
        v24 = v189;
        goto LABEL_41;
      }

      v32 = &v190[10 * SDWORD2(v210[0])];
      v33 = *(v210 + 1);
      v24 = v189;
    }

    *(v183 + 1) = v29;
    *(v183 + 3) = v34;
    v183[8] = 1;
    v74.i32[0] = *(v31 + 18);
    v75 = *(v31 + 64);
    v76 = vdup_lane_s32(v204, 0);
    v77.i32[1] = HIDWORD(*(v31 + 2));
    v77.i32[0] = v75.i32[1];
    v78 = vabds_f32(*(v31 + 6), v74.f32[0]) + vaddv_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(*(v31 + 16), v75)), vmulq_f64(vcvtq_f64_f32(vadd_f32(*(v31 + 16), v75)), v207))));
    v15 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(v76, v77)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v76, v77)), v207)));
    v79 = vdup_lane_s32(v204, 1);
    v75.i32[1] = *(v31 + 2);
    v74.i32[1] = *(v31 + 6);
    v80 = vadd_f32(vabd_f32(vdup_lane_s32(v37, 0), v74), vadd_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(v79, v75)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v79, v75)), v207))), v15));
    *(v31 + 7) = v80.f32[0] + (v80.f32[1] + v78);
LABEL_41:
    v17 = v184;
    v23 = v182;
    if (v184 == 300)
    {
      goto LABEL_44;
    }
  }

LABEL_43:
  if (!v17)
  {
    goto LABEL_131;
  }

LABEL_44:
  v81 = 0;
  v82 = v218;
  v83 = -1;
  v84 = 0.0;
  do
  {
    if (*(v82 - 4) == 1 && *v82 > v84)
    {
      v83 = v81;
      v84 = *v82;
    }

    v82 += 4;
    ++v81;
  }

  while (v17 != v81);
  if (v83 != -1)
  {
    v85 = &v216[16 * v83];
    v86 = *v85;
    if (v10 >= 1)
    {
      v87 = 48 * v86 + 28;
      v88 = 0.0;
      v89 = *v85;
      do
      {
        if (*&v16[v87] > v88)
        {
          v88 = *&v16[v87];
        }

        ++v89;
        v87 += 48;
      }

      while (v89 < v86 + v10);
      if (v88 > 1.5)
      {
        goto LABEL_131;
      }
    }

    if (v85[1] != v10)
    {
      puts("incorrect number of points");
    }

    v90 = malloc_type_calloc(v10, 0x30uLL, 0x100004064842E6AuLL);
    memmove(v90, &v16[48 * v86], 48 * v10);
    free(v16);
    *v180 = v90;
    *v181 = v10;
    return 1;
  }

  v91 = 0;
  v215 = 0;
  memset(v214, 0, sizeof(v214));
  LODWORD(v214[0]) = 0;
  v193 = v216;
  v205 = v17;
  do
  {
    v92 = v193;
    v199 = v91;
    v193 += 4;
    v191 = v91 + 1;
    if (v91 + 1 < v17)
    {
      v93 = &v16[48 * *v92];
      v94 = v193;
      v95 = v91 + 1;
      v195 = v93;
      v197 = v92;
      do
      {
        v96 = &v93[48 * v92[1]];
        v97 = *v94;
        v98 = &v16[48 * v97];
        v99 = *(v98 + 10);
        v100 = *(v96 - 2);
        if (v99 <= v100 + 1)
        {
          v101 = v94[1];
          v102 = *&v98[48 * v101 - 8];
          if (v102 >= v100)
          {
            v201 = v102;
            v209 = v99;
            if (v101 < 1)
            {
              v108 = 1000000000.0;
            }

            else
            {
              v103 = v96 - 48;
              v104 = v99;
              v105 = ~v100;
              v106 = v101 + v99;
              v107 = 48 * v97;
              v108 = 1000000000.0;
              do
              {
                if (checkPointAddress(&v103[48 * v105 + 48 * v104], v203, v202) && checkPointAddress(v203 + v107, v203, v202))
                {
                  v109 = vabds_f32(*&v103[48 * v105 + 24 + 48 * v104], *(v203 + v107 + 24)) + vaddv_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(*&v103[48 * v105 + 16 + 48 * v104], *(v203 + v107 + 16))), vmulq_f64(vcvtq_f64_f32(vadd_f32(*&v103[48 * v105 + 16 + 48 * v104], *(v203 + v107 + 16))), v207))));
                  if (v109 < v108)
                  {
                    v209 = v104;
                    v108 = v109;
                  }
                }

                if (v104 > v100)
                {
                  break;
                }

                ++v104;
                v107 += 48;
              }

              while (v104 < v106);
            }

            v93 = v195;
            snakeHopperInsert(v214, v199, v95, v209, v201 - *(v195 + 10) + 1, v108);
            v16 = v203;
            v24 = v189;
            LODWORD(v17) = v205;
            v92 = v197;
          }
        }

        ++v95;
        v94 += 4;
      }

      while (v95 != v17);
    }

    v91 = v191;
  }

  while (v191 != v17);
  v110 = 0;
  v111 = v216;
  do
  {
    v112 = 0;
    v113 = &v16[48 * *v111];
    v114 = &v217;
    do
    {
      v115 = v111[1];
      v116 = &v113[48 * v115];
      if (*(v116 - 2) == v24)
      {
        v117 = &v16[48 * *(v114 - 1)];
        if (!v117[5].i32[0])
        {
          v118 = vabds_f32(*(v116 - 6), v117[3].f32[0]) + vaddv_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(*(v116 - 32), v117[2])), vmulq_f64(vcvtq_f64_f32(vadd_f32(*(v116 - 32), v117[2])), v207))));
          v119 = v117[6 * *v114 - 1].i32[0];
          v120 = *(v113 + 10);
          if (v119 >= v120)
          {
            v121 = v120 + ~v119;
          }

          else
          {
            v121 = 0;
          }

          snakeHopperInsert(v214, v110, v112, 0, *v114 + v115 + v121, v118);
          LODWORD(v17) = v205;
        }
      }

      ++v112;
      v114 += 4;
    }

    while (v17 != v112);
    ++v110;
    v111 += 4;
  }

  while (v110 != v17);
  v122 = v214[0];
  if (SLODWORD(v214[0]) < 1)
  {
    goto LABEL_131;
  }

  v123 = (v214 | 0xC);
  v124 = v214[0];
  do
  {
    if (v123[2] == v187)
    {
      v150 = *(v123 - 1);
      v151 = *v123;
      printf("winning snake = connection of snakes %d and %d\n", *(v123 - 1), *v123);
      v152 = &v216[16 * v150];
      v153 = *&v216[16 * v151];
      if (*&v16[48 * v153 + 40])
      {
        v153 = *v152;
        v154 = v207;
        if (*&v16[48 * *v152 + 40])
        {
          goto LABEL_130;
        }

        v155 = v152;
        v152 = &v216[16 * v151];
      }

      else
      {
        v155 = &v216[16 * v151];
        v154 = v207;
      }

      v156 = v155[1];
      v157 = &v16[48 * *v152];
      v158 = *&v16[48 * v153 - 8 + 48 * v156];
      v159 = *(v157 + 10);
      if (v158 <= v159 + 1)
      {
        v161 = &v16[48 * v156 - 32 + 48 * v153];
        v162 = -v159;
        v160 = -1000;
        v163 = 1000000000.0;
        do
        {
          v164 = &v157[48 * v162 - 48 + 48 * v158];
          v165 = *(v161 + 8);
          v166 = *v161;
          v161 += 48;
          v167 = vabds_f32(v164[3].f32[0], v165) + vaddv_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vabd_f32(v164[2], v166)), vmulq_f64(vcvtq_f64_f32(vadd_f32(v164[2], v166)), v154))));
          if (v167 < v163)
          {
            v160 = v158;
            v163 = v167;
          }

          ++v158;
        }

        while (v162 + v158 != 2);
      }

      else
      {
        v160 = -1000;
      }

      v168 = malloc_type_calloc(v187, 0x30uLL, 0x100004064842E6AuLL);
      memmove(v168, &v16[48 * *v155], 48 * v160);
      v169 = &v168[48 * v160];
      v170 = &v16[48 * *v152];
      v171 = 48 * (v187 - v160);
LABEL_142:
      memmove(v169, v170, v171);
      free(v16);
      *v180 = v168;
      *v181 = v187;
      return 1;
    }

    v123 += 5;
    --v124;
  }

  while (v124);
  LODWORD(v212) = 0;
  v125 = 0;
  v126 = v214 + 4;
  do
  {
    v127 = 0;
    v128 = v214 + 4;
    do
    {
      if (v127 == v125)
      {
        goto LABEL_121;
      }

      v130 = *(v126 + 1);
      v129 = *(v126 + 2);
      v131 = *(v128 + 1);
      if (v129 == v131)
      {
        v132 = v126;
        v131 = *(v126 + 1);
        v130 = *(v126 + 2);
        v129 = *(v128 + 2);
      }

      else
      {
        v132 = v128;
        if (v130 != *(v128 + 2))
        {
          goto LABEL_121;
        }
      }

      v133 = *(v132 + 4);
      v134 = &v216[16 * v129];
      v135 = *&v16[48 * *&v216[16 * v130] - 8 + 48 * *&v216[16 * v130 + 4]];
      v136 = v134[1];
      v137 = *&v16[48 * *v134 + 40];
      if (v137)
      {
        _ZF = 0;
      }

      else
      {
        _ZF = v135 == v24;
      }

      v139 = v137 + ~v135;
      if (_ZF)
      {
        v139 = 0;
      }

      v140 = *v126 + *v128;
      v141 = v212;
      if (v212 < 1)
      {
        LODWORD(v142) = 0;
LABEL_117:
        v145 = v139 + v133 + v136;
        v146 = &v212 + 28 * v142 + 4;
        *v146 = v140;
        *(v146 + 1) = v131;
        *(v146 + 2) = v130;
        *(v146 + 3) = v129;
        *(v146 + 6) = v145;
        if (v141 < 20)
        {
          v147 = v141 + 1;
        }

        else
        {
          v147 = 20;
        }

        LODWORD(v212) = v147;
        goto LABEL_121;
      }

      v142 = 0;
      v143 = 4;
      while (*(&v213[-1] + v143) <= v140)
      {
        ++v142;
        v143 += 28;
        if (v212 == v142)
        {
          v142 = v212;
          goto LABEL_115;
        }
      }

      if (v212 > v142)
      {
        v144 = (&v212 + 28 * v212 + 4);
        do
        {
          if (v141 <= 19)
          {
            *v144 = *(v144 - 28);
            *(v144 + 12) = *(v144 - 1);
          }

          --v141;
          v144 = (v144 - 28);
        }

        while (v141 > v142);
      }

      v142 = v142;
LABEL_115:
      if (v142 <= 0x13)
      {
        LODWORD(v141) = v212;
        goto LABEL_117;
      }

LABEL_121:
      ++v127;
      v128 += 20;
    }

    while (v127 != v122);
    ++v125;
    v126 += 20;
  }

  while (v125 != v122);
  v148 = v212;
  if (v212 >= 1)
  {
    v149 = v213;
    while (v149[3] < v187)
    {
      v149 += 7;
      if (!--v148)
      {
        goto LABEL_131;
      }
    }

    v172 = *v149;
    v173 = &v216[16 * *(v149 - 2)];
    v174 = &v216[16 * *(v149 - 1)];
    v175 = &v216[16 * v172];
    if (!*&v16[48 * *v175 + 40])
    {
      v176 = &v216[16 * v172];
      v177 = v173;
      v175 = v174;
      goto LABEL_149;
    }

    if (!*&v16[48 * *v174 + 40])
    {
      v176 = v174;
      v177 = &v216[16 * v172];
      v175 = v173;
      goto LABEL_149;
    }

    v176 = v173;
    v177 = v174;
    if (!*&v16[48 * *v173 + 40])
    {
LABEL_149:
      v178 = *&v16[48 * *v177 + 40];
      v179 = *&v16[48 * *v175 + 40];
      v168 = malloc_type_calloc(v187, 0x30uLL, 0x100004064842E6AuLL);
      memmove(v168, &v16[48 * *v176], 48 * v178);
      memmove(&v168[48 * v178], &v16[48 * *v177], 48 * (v179 - v178));
      v169 = &v168[48 * v179];
      v170 = &v16[48 * *v175];
      v171 = 48 * v175[1];
      goto LABEL_142;
    }

LABEL_130:
    puts("error - impossible connect arrangement");
  }

LABEL_131:
  free(v16);
  return 0;
}

uint64_t computeBorderForAlpha(uint64_t result, uint64_t a2, _BYTE *a3, int *a4)
{
  v4 = *(a2 + 12);
  if (v4 < 3)
  {
    v6 = 0;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = *(result + 16);
    v9 = *(result + 28);
    v10 = *a2;
    v11 = *(a2 + 28);
    result = (v11 + v7);
    v58 = v4 - 2;
    v12 = v7 + v11 + v11 - v7;
    v48 = *(a2 + 8);
    v57 = v48 - 2;
    v54 = -v8 - v9;
    v55 = -v9;
    v53 = v9 - v8;
    v56 = v9;
    v51 = v9 + v8;
    v52 = v8 - v9;
    v13 = v11 + 2 * v7;
    v59 = 1;
    v14 = v7 + v11 + result;
    v50 = v14;
    do
    {
      v49 = v10;
      if (v48 >= 3)
      {
        v15 = 1;
        v16 = v48 - 2;
        v17 = v10;
        do
        {
          v18 = &v17[v11];
          if (v17[v7 + v11])
          {
            result = v17[v7];
            v19 = v17[2 * v11 + v7];
            v20 = v17[v13];
            v21 = !*v18 || result == 0;
            v22 = v21 || v19 == 0;
            if (v22 || v20 == 0)
            {
              v24 = v17[v7 - v7];
              v25 = v17[v12];
              v26 = v17[2 * v7];
              v27 = v17[v14];
              v28 = v25 - (v24 + v26) + 2 * (v19 - result) + v27;
              v29 = v26 - (v25 + v24) + v27 + 2 * (v20 - *v18);
              result = (v28 * v28 + v29 * v29);
              if (result)
              {
                if (v6 <= 399)
                {
                  v30 = 1.0 / sqrtf(result);
                  v31 = v30 * v29;
                  v32 = v59 - rintf(v31 * 3.0);
                  if (v32 <= 1)
                  {
                    v32 = 1;
                  }

                  if (v32 >= v58)
                  {
                    v33 = v4 - 2;
                  }

                  else
                  {
                    v33 = v32;
                  }

                  v34 = v30 * v28;
                  v35 = v15 - rintf(v34 * 3.0);
                  if (v35 <= 1)
                  {
                    v35 = 1;
                  }

                  if (v35 >= v57)
                  {
                    v36 = v48 - 2;
                  }

                  else
                  {
                    v36 = v35;
                  }

                  v37 = v59 + rintf(v31 + v31);
                  if (v37 <= 1)
                  {
                    v37 = 1;
                  }

                  if (v37 >= v58)
                  {
                    v37 = v4 - 2;
                  }

                  v38 = v15 + rintf(v34 + v34);
                  if (v38 <= 1)
                  {
                    v38 = 1;
                  }

                  if (v38 >= v57)
                  {
                    v39 = v48 - 2;
                  }

                  else
                  {
                    v39 = v38;
                  }

                  v40 = (*v5 + v33 * v8 + v36 * v56);
                  v60 = a3;
                  v41 = v5;
                  v42 = (*v5 + v37 * v8 + v39 * v56);
                  LODWORD(v40) = (v40[v54] + 4 * *v40 + 2 * (v40[v55] + v40[-v8] + v40[v56] + v40[v8]) + v40[v53] + v40[v52] + v40[v51] + 8) >> 4;
                  v13 = v11 + 2 * v7;
                  v43 = v42[v53];
                  v44 = v42[v52];
                  v45 = v42[v51];
                  LODWORD(v42) = v42[v54] + 4 * *v42 + 2 * (v42[v55] + v42[-v8] + v42[v56] + v42[v8]);
                  v46 = v43 + v44;
                  v5 = v41;
                  v14 = v50;
                  v12 = v7 + v11 + v11 - v7;
                  *v60 = v15;
                  v60[1] = v59;
                  result = (v42 + v46 + v45);
                  v60[2] = v39;
                  v60[3] = v37;
                  v60[4] = v36;
                  v60[5] = v33;
                  v60[6] = (result + 8) >> 4;
                  v60[7] = v40;
                  a3 = v60 + 8;
                  ++v6;
                }
              }
            }
          }

          ++v15;
          v17 = v18;
          --v16;
        }

        while (v16);
      }

      v10 = &v49[v7];
      v21 = v59++ == v58;
    }

    while (!v21);
  }

  *a4 = v6;
  return result;
}

uint64_t buildTransferTable(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = -((HIDWORD(a3) - a3) * result);
  v7 = -((240 - HIDWORD(a3)) * HIDWORD(result));
  do
  {
    v8 = a3;
    if (v5 >= result)
    {
      if (v5 >= result >> 32)
      {
        if (v5 >= 0xF0)
        {
          v8 = v5;
        }

        else
        {
          v8 = rintf(v7 / (240 - HIDWORD(result))) + BYTE4(a3);
        }
      }

      else
      {
        v8 = rintf(v6 / (HIDWORD(result) - result)) + a3;
      }
    }

    *(a5 + v5++) = v8;
    v6 += HIDWORD(a3) - a3;
    v7 += 240 - HIDWORD(a3);
  }

  while (v5 != 256);
  return result;
}

void examineAlpha(unsigned __int8 **a1, unsigned __int8 **a2, char **a3, _DWORD *a4, float *a5, float *a6, _DWORD *a7, float *a8)
{
  v136 = *MEMORY[0x1E69E9840];
  if (*(a1 + 7) != 1 || (*(a3 + 7) == 1 ? (v10 = *(a2 + 7) == 2) : (v10 = 0), !v10))
  {
    v11 = "examineAlpha: bitmaps are the wrong number of samples per pixel";
LABEL_129:

    puts(v11);
    return;
  }

  v13 = *(a1 + 2);
  if (v13 != *(a3 + 2) || (v129 = *(a1 + 3), v129 != *(a3 + 3)) || (v128 = *(a1 + 4), v128 != *(a3 + 4)) || v13 != 2 * *(a2 + 2) || v129 != 2 * *(a2 + 3))
  {
    v11 = "examineAlpha: bitmaps don't match";
    goto LABEL_129;
  }

  v14 = *(a2 + 4);
  bzero(v135, 0x400uLL);
  v133 = 0;
  v15 = 0uLL;
  memset(v132, 0, sizeof(v132));
  memset(v134, 0, sizeof(v134));
  v16 = 0;
  if (v129 >= 1)
  {
    v17 = 0;
    v18 = *a2;
    v19 = *a3;
    v125 = -v14;
    v126 = v14;
    v20 = v13 - 2;
    v21 = *a1;
    v127 = v13;
    do
    {
      if (v17 == v129 - 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = v14;
      }

      v23 = v125;
      if (!v17)
      {
        v23 = 0;
      }

      v131 = v17;
      v130 = v17 & 1;
      if ((v17 & 1) == 0)
      {
        v22 = v23;
      }

      v24 = &v18[v22];
      v25 = *v18;
      v26 = v18[1];
      v27 = *v24;
      v28 = v24[1];
      if (v13 < 3)
      {
        v33 = *v18;
        v32 = v18[1];
        v31 = *v24;
        v30 = v24[1];
        v59 = v21;
        v61 = v19;
        v60 = v18;
      }

      else
      {
        v29 = 0;
        v30 = v24[1];
        v31 = *v24;
        v32 = v18[1];
        v33 = *v18;
        do
        {
          v34 = v27 + v33;
          v33 = v25;
          v35 = v21[v29];
          v36 = (9 * v25 + v31 + 3 * v34 + 8) >> 4;
          v37 = ((9 * v26 + v30 + 3 * (v28 + v32) + 8) >> 4) - 128;
          v38 = v35 + ((22970 * v37 + 0x2000) >> 14);
          v39 = v35 + ((-11700 * v37 - 5638 * (v36 - 128) + 0x2000) >> 14);
          if (v38 >= 255)
          {
            v38 = 255;
          }

          if (v39 >= 255)
          {
            v39 = 255;
          }

          if (v35 + ((29032 * (v36 - 128) + 0x2000) >> 14) >= 255)
          {
            v40 = 255;
          }

          else
          {
            v40 = v35 + ((29032 * (v36 - 128) + 0x2000) >> 14);
          }

          if (v19[v29] < 0)
          {
            v41 = v39 & ~(v39 >> 31);
            v42 = v40 & ~(v40 >> 31);
            if (v40 <= v41)
            {
              v43 = (v38 & ~(v38 >> 31)) - v42;
              if (v43 >= 1)
              {
                v44 = (((v41 - v42) << 6) / (v43 + v41 - v42) + 2) >> 2;
                if (v44 >= 8)
                {
                  v44 = 8;
                }

                ++*(v132 + v44);
              }
            }

            else
            {
              ++LODWORD(v132[0]);
            }

            if (v42 < v41)
            {
              v41 = v40 & ~(v40 >> 31);
            }

            ++v135[v41];
            ++*(v134 + (v41 >> 5));
            ++v16;
          }

          v45 = v21[v29 + 1];
          v32 = v18[v29 + 1];
          v25 = v18[v29 + 2];
          v26 = v18[v29 + 3];
          v31 = v24[v29];
          v30 = v24[v29 + 1];
          v27 = v24[v29 + 2];
          v28 = v24[v29 + 3];
          v46 = ((9 * v33 + v27 + 3 * (v31 + v25) + 8) >> 4) - 128;
          v47 = ((9 * v32 + v28 + 3 * (v30 + v26) + 8) >> 4) - 128;
          v48 = v45 + ((22970 * v47 + 0x2000) >> 14);
          v49 = v45 + ((-11700 * v47 - 5638 * v46 + 0x2000) >> 14);
          v50 = v45 + ((29032 * v46 + 0x2000) >> 14);
          if (v48 >= 255)
          {
            v51 = 255;
          }

          else
          {
            v51 = v48;
          }

          if (v49 >= 255)
          {
            v52 = 255;
          }

          else
          {
            v52 = v49;
          }

          if (v50 >= 255)
          {
            v53 = 255;
          }

          else
          {
            v53 = v50;
          }

          if (v19[v29 + 1] < 0)
          {
            v54 = v52 & ~(v52 >> 31);
            v55 = v53 & ~(v53 >> 31);
            if (v53 <= v54)
            {
              v56 = (v51 & ~(v51 >> 31)) - v55;
              if (v56 >= 1)
              {
                v57 = (((v54 - v55) << 6) / (v56 + v54 - v55) + 2) >> 2;
                if (v57 >= 8)
                {
                  v57 = 8;
                }

                ++*(v132 + v57);
              }
            }

            else
            {
              ++LODWORD(v132[0]);
            }

            if (v55 >= v54)
            {
              v58 = v54;
            }

            else
            {
              v58 = v53 & ~(v53 >> 31);
            }

            ++v135[v58];
            ++*(v134 + (v58 >> 5));
            ++v16;
          }

          v29 += 2;
        }

        while (v29 < v20);
        v24 += v29;
        v59 = &v21[v29];
        v60 = &v18[v29];
        v61 = &v19[v29];
      }

      v62 = *v59;
      v63 = (9 * v25 + v31 + 3 * (v27 + v33) + 8) >> 4;
      v64 = ((9 * v26 + v30 + 3 * (v28 + v32) + 8) >> 4) - 128;
      v65 = v62 + ((22970 * v64 + 0x2000) >> 14);
      v66 = v62 + ((-11700 * v64 - 5638 * (v63 - 128) + 0x2000) >> 14);
      v67 = v62 + ((29032 * (v63 - 128) + 0x2000) >> 14);
      if (v65 >= 255)
      {
        v65 = 255;
      }

      if (v66 >= 255)
      {
        v66 = 255;
      }

      if (v67 >= 255)
      {
        v68 = 255;
      }

      else
      {
        v68 = v67;
      }

      if (*v61 < 0)
      {
        v69 = v66 & ~(v66 >> 31);
        v70 = v68 & ~(v68 >> 31);
        v14 = v126;
        if (v68 <= v69)
        {
          v71 = (v65 & ~(v65 >> 31)) - v70;
          if (v71 >= 1)
          {
            v72 = (((v69 - v70) << 6) / (v71 + v69 - v70) + 2) >> 2;
            if (v72 >= 8)
            {
              v72 = 8;
            }

            ++*(v132 + v72);
          }
        }

        else
        {
          ++LODWORD(v132[0]);
        }

        if (v70 < v69)
        {
          v69 = v68 & ~(v68 >> 31);
        }

        ++v135[v69];
        ++*(v134 + (v69 >> 5));
        ++v16;
        v25 = *v60;
      }

      else
      {
        v14 = v126;
      }

      v73 = v59[1];
      v74 = ((9 * v25 + *v24 + 3 * (*v24 + v25) + 8) >> 4) - 128;
      v75 = ((9 * v60[1] + v24[1] + 3 * (v24[1] + v60[1]) + 8) >> 4) - 128;
      v76 = v73 + ((22970 * v75 + 0x2000) >> 14);
      v77 = v73 + ((-11700 * v75 - 5638 * v74 + 0x2000) >> 14);
      v78 = v73 + ((29032 * v74 + 0x2000) >> 14);
      if (v76 >= 255)
      {
        v79 = 255;
      }

      else
      {
        v79 = v76;
      }

      if (v77 >= 255)
      {
        v80 = 255;
      }

      else
      {
        v80 = v77;
      }

      if (v78 >= 255)
      {
        v81 = 255;
      }

      else
      {
        v81 = v78;
      }

      if (v61[1] < 0)
      {
        v82 = v80 & ~(v80 >> 31);
        v83 = v81 & ~(v81 >> 31);
        v13 = v127;
        if (v81 <= v82)
        {
          v84 = (v79 & ~(v79 >> 31)) - v83;
          if (v84 >= 1)
          {
            v85 = (((v82 - v83) << 6) / (v84 + v82 - v83) + 2) >> 2;
            if (v85 >= 8)
            {
              v85 = 8;
            }

            ++*(v132 + v85);
          }
        }

        else
        {
          ++LODWORD(v132[0]);
        }

        if (v83 < v82)
        {
          v82 = v81 & ~(v81 >> 31);
        }

        ++v135[v82];
        ++*(v134 + (v82 >> 5));
        ++v16;
      }

      else
      {
        v13 = v127;
      }

      v18 += v130 * v14;
      v17 = v131 + 1;
      v21 += v128;
      v19 += v128;
    }

    while (v131 + 1 != v129);
  }

  v86 = 0;
  v87 = xmmword_19CF22EA0;
  v88 = 0.0;
  v89.i64[0] = 0x400000004;
  v89.i64[1] = 0x400000004;
  do
  {
    v90 = v134[v86];
    v91 = vmulq_f32(vcvtq_f32_s32(v90), vcvtq_f32_u32(v87));
    v15 = vaddq_s32(v90, v15);
    v88 = (((v88 + v91.f32[0]) + v91.f32[1]) + v91.f32[2]) + v91.f32[3];
    v87 = vaddq_s32(v87, v89);
    ++v86;
  }

  while (v86 != 2);
  v92 = 0;
  v93 = vaddvq_s32(v15);
  *v15.i32 = v88 / v93;
  v94 = vdupq_lane_s32(*v15.i8, 0);
  v95 = xmmword_19CF22EA0;
  v96 = 0.0;
  v97.i64[0] = 0x400000004;
  v97.i64[1] = 0x400000004;
  do
  {
    v98 = vsubq_f32(vcvtq_f32_u32(v95), v94);
    v99 = vmulq_f32(vmulq_f32(v98, v98), vcvtq_f32_s32(v134[v92]));
    v96 = (((v96 + v99.f32[0]) + v99.f32[1]) + v99.f32[2]) + v99.f32[3];
    v95 = vaddq_s32(v95, v97);
    ++v92;
  }

  while (v92 != 2);
  v100 = 0.0;
  if (v93 != 1)
  {
    v100 = sqrtf(v96 / (v93 - 1));
  }

  v101 = 0;
  *a7 = v15.i32[0];
  *a8 = v100;
  do
  {
    if (v135[v101])
    {
      break;
    }

    ++v101;
  }

  while (v101 != 256);
  v102 = 0;
  for (i = 255; i != -1; --i)
  {
    v102 += v135[i];
    if (v102 > (5 * v16 + 50) / 100)
    {
      break;
    }
  }

  v104 = 0;
  v105 = 0;
  v106 = (v16 + 1) >> 1;
  do
  {
    v105 += v135[v104];
    if (v105 > v106)
    {
      break;
    }

    ++v104;
  }

  while (v104 != 256);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  *a4 = v101;
  a4[1] = v104;
  a4[2] = i;
  do
  {
    if (v107 <= 0xC7)
    {
      v110 = v135[v107];
      v109 += v110 * v107;
      v108 += v110;
    }

    ++v107;
  }

  while (v107 != 256);
  v111 = 0;
  v112 = 0;
  a4[3] = (v109 / v108);
  v113 = 0.0;
  do
  {
    v114 = *(v132 + v111);
    v113 = v113 + (v114 * v111);
    v112 += v114;
    ++v111;
  }

  while (v111 != 9);
  v115 = 0;
  v116 = v113 / v112;
  v117 = 0.0;
  do
  {
    v117 = v117 + (((v115 - v116) * (v115 - v116)) * *(v132 + v115));
    ++v115;
  }

  while (v115 != 9);
  v118 = 0.0;
  v119 = v112 - 1;
  if (v119)
  {
    v118 = sqrtf(v117 / v119);
  }

  *a5 = v116;
  *a6 = v118;
}

uint64_t redEyeDiscernment(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, float a5, float a6)
{
  memset(v155, 0, 48);
  v11 = *a1;
  v134 = a2;
  if (*a1)
  {
    v12 = a3[2];
    v13 = *a3;
    *(&v155[1] + 8) = *(a2 + 36);
    v14 = *(a2 + 16);
    v15 = 1;
  }

  else
  {
    BitmapRect = makeBitmapRect(0, 0, 0, 0);
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *(&v155[1] + 1) = BitmapRect;
    *&v155[2] = v17;
    a2 = v134;
  }

  memset(v154, 0, sizeof(v154));
  LOBYTE(v155[0]) = v15;
  *(&v155[0] + 1) = v11;
  *&v155[1] = __PAIR64__(v13, v12);
  DWORD2(v155[2]) = v14;
  v18 = a1[1];
  if (v18)
  {
    v19 = a3[6];
    v20 = a3[4];
    *(&v154[1] + 8) = *(a2 + 132);
    v21 = *(a2 + 112);
    v22 = 1;
  }

  else
  {
    v23 = makeBitmapRect(0, 0, 0, 0);
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(&v154[1] + 1) = v23;
    *&v154[2] = v24;
    a2 = v134;
  }

  memset(v153, 0, sizeof(v153));
  LOBYTE(v154[0]) = v22;
  *(&v154[0] + 1) = v18;
  *&v154[1] = __PAIR64__(v20, v19);
  DWORD2(v154[2]) = v21;
  v25 = a1[2];
  v132 = a3;
  if (v25)
  {
    v26 = a3[10];
    v27 = a3[8];
    *(&v153[1] + 8) = *(a2 + 228);
    v28 = *(a2 + 208);
    v29 = 1;
  }

  else
  {
    v30 = v20;
    v31 = makeBitmapRect(0, 0, 0, 0);
    v20 = v30;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    *(&v153[1] + 1) = v31;
    *&v153[2] = v32;
    a2 = v134;
  }

  LOBYTE(v153[0]) = v29;
  *(&v153[0] + 1) = v25;
  *&v153[1] = __PAIR64__(v27, v26);
  DWORD2(v153[2]) = v28;
  if (a4 != -1)
  {
    return a4;
  }

  if (v15)
  {
    if (!v22)
    {
      if (v29)
      {
        return 2 * (*(a2 + 16) <= 3 * *(a2 + 208));
      }

      else
      {
        return 0;
      }
    }

    if (!v29)
    {
      return *(a2 + 16) <= 2 * *(a2 + 112);
    }

    v144 = 0;
    v145 = 0;
    v143 = 0;
    v140 = 0;
    v137 = 0;
    v34 = v20;
    v35 = offsetBitmapRect(*(&v153[1] + 1), *&v153[2], v26, v27);
    v37 = v36;
    v121 = v34;
    v38 = offsetBitmapRect(*(&v154[1] + 1), *&v154[2], v19, v34);
    v39 = unionBitmapRects(v35, v37, v38);
    v41 = v40;
    v42 = HIDWORD(v40) - v40;
    inited = initBitmask(HIDWORD(v40) - v40, HIDWORD(v39) - v39);
    v128 = v39;
    v44 = offsetBitmapRect(v39, v41, -v41, -v39);
    v123 = v45;
    v125 = v44;
    v130 = HIDWORD(v39) - v39;
    v135 = inited;
    if (HIDWORD(v39) - v39 >= 1)
    {
      v46 = 0;
      v47 = v41 - v26;
      v48 = v128 - v27;
      v49 = v41 - v19;
      do
      {
        if (v42 >= 1)
        {
          for (i = 0; i != v42; ++i)
          {
            v51 = bitValueFromBitmask(v25, v47 + i, v48 + v46);
            v52 = bitValueFromBitmask(v18, v49 + i, v128 - v121 + v46) | v51;
            inited = v135;
            setBitInBitmask(v135, i, v46, v52);
          }
        }

        ++v46;
      }

      while (v46 != v130);
    }

    v146[0] = 1;
    memset(&v146[1], 0, 7);
    v147 = inited;
    v148 = v41;
    v149 = v128;
    v150 = v125;
    v151 = v123;
    v152 = bitmaskArea(inited);
    comparePlacedBitmasks(v153, v154, &v145 + 1, &v145, &v144 + 1);
    v53 = HIDWORD(v144);
    v54 = v145 + HIDWORD(v145) + HIDWORD(v144);
    comparePlacedBitmasks(v153, v155, &v144, &v143 + 1, &v143);
    v56 = HIDWORD(v143);
    v55 = v144;
    v57 = v143;
    comparePlacedBitmasks(v154, v155, &v142, &v141, &v140);
    comparePlacedBitmasks(v155, v146, &v139, &v138, &v137);
    v120 = *(v134 + 16);
    v58 = *(v134 + 112);
    v59 = *(v134 + 208);
    v60 = *(v134 + 20);
    v61 = *(v134 + 24);
    v62 = *(v134 + 116);
    v63 = *(v134 + 212);
    v64 = v132[2];
    v131 = *v132;
    v65 = v132[6];
    v66 = v132[4];
    v126 = v132[10];
    v127 = v132[8];
    v68 = *v134;
    v67 = *(v134 + 8);
    v129 = *(v134 + 96);
    v133 = *(v134 + 104);
    v122 = *(v134 + 192);
    v124 = *(v134 + 200);
    v69 = offsetBitmapRect(*(v134 + 132), *(v134 + 140), v65, v66);
    if (v60 <= v62)
    {
      v71 = v62;
    }

    else
    {
      v71 = v60;
    }

    if (v71 <= v63)
    {
      v71 = v63;
    }

    v72 = v71 * 0.5;
    if (v61 > 30.0 && v72 <= v60 || v61 > 90.0)
    {
      if (v54 >= 1)
      {
        v75 = v53;
        v76 = v54;
        v77 = v76 * 0.8;
        v78 = v76 * 1.25;
        v79 = v77 >= v75 || v78 <= v75;
        v80 = v135;
        if (!v79)
        {
          v81 = SDWORD2(v155[2]);
          if (v81 * 0.6 < v75 && (v61 <= 100.0 || v81 * 10.0 >= v75))
          {
            a4 = v81 * 0.5 <= v140;
LABEL_111:
            termBitmask(v80);
            return a4;
          }
        }

LABEL_107:
        a4 = 0;
        goto LABEL_111;
      }

      a4 = 0;
LABEL_87:
      v80 = v135;
      goto LABEL_111;
    }

    if (v54 < 1 || ((v83 = v53, v84 = v54, v85 = v84 * 1.25, v84 * 0.8 < v83) ? (v86 = v85 <= v83) : (v86 = 1), v86))
    {
      if (SDWORD2(v154[2]) >= 1)
      {
        v87 = (v56 + v55 + v57);
        v88 = DWORD2(v154[2]);
        v89 = v88 * 0.8;
        v90 = v88 * 1.25;
        if (v89 < v87 && v90 > v87)
        {
          goto LABEL_86;
        }
      }

      if (SDWORD2(v153[2]) >= 1 && SDWORD2(v154[2]) >= 1)
      {
        v92 = v53;
        v93 = DWORD2(v153[2]);
        if (v93 * 0.8 < v92 && v93 * 1.25 > v92)
        {
          v94 = v140;
          v95 = DWORD2(v154[2]);
          if (v95 * 0.8 < v94 && v95 * 1.25 > v94)
          {
            v96 = DWORD2(v155[2]);
            if (SDWORD2(v155[2]) >= SDWORD2(v153[2]))
            {
              v96 = DWORD2(v153[2]);
            }

            a4 = v96 * 0.2 <= v57;
            goto LABEL_87;
          }
        }
      }

      v97 = v58;
      v98 = DWORD2(v155[2]);
      v80 = v135;
      if (SDWORD2(v155[2]) >= 1)
      {
        v99 = v140;
        v100 = DWORD2(v155[2]);
        if (v100 * 0.8 < v99 && DWORD2(v155[2]) != 1 && v100 * 1.25 > v99 && 3 * DWORD2(v155[2]) > SDWORD2(v154[2]))
        {
          goto LABEL_107;
        }
      }
    }

    else
    {
      v98 = DWORD2(v155[2]);
      v101 = SDWORD2(v155[2]);
      if (v84 * 0.1 > v101)
      {
LABEL_86:
        a4 = 1;
        goto LABEL_87;
      }

      v97 = v58;
      v102 = v137;
      v80 = v135;
      if (SDWORD2(v155[2]) >= 1 && (v103 = DWORD2(v155[2]), v103 * 0.8 < v102) && v103 * 1.25 > v102 || v101 * 0.6 < v84 && (v84 * 0.8 < v102 ? (v104 = v85 <= v102) : (v104 = 1), !v104))
      {
LABEL_110:
        a4 = 1;
        goto LABEL_111;
      }
    }

    v105 = v68 + v64;
    v106 = v67 + v131;
    v107 = sqrt(v59 / 3.14159265);
    v108 = sqrt(v97 / 3.14159265);
    v109 = v129 + v65 - v105;
    v110 = v133 + v66 - v106;
    v111 = sqrtf((v110 * v110) + (v109 * v109));
    if (v111 <= v108 || v111 <= v107)
    {
      v136 = v122 + v126;
      v113 = v124 + v127;
      v114 = v69;
      v115 = v70;
      if (!pointInsideBitmapRect(v69, v70, v105, v106) || !pointInsideBitmapRect(v114, v115, v136, v113) || SDWORD2(v154[2]) >= 4 * v98)
      {
        if (v120 > 3 * v59 && v120 > 2 * v97)
        {
          goto LABEL_107;
        }

        if (v62 <= v63 || v97 <= v59)
        {
          if (v61 <= 10.0 || (v116 = v105 - a5, v117 = v106 - a6, v118 = v136 - a5, v119 = v113 - a6, sqrtf((v117 * v117) + (v116 * v116)) * 3.0 >= sqrtf((v119 * v119) + (v118 * v118))))
          {
            if (*(v134 + 248))
            {
              a4 = 1;
            }

            else
            {
              a4 = 2;
            }

            goto LABEL_111;
          }

          goto LABEL_107;
        }
      }
    }

    goto LABEL_110;
  }

  if (v29)
  {
    if (!v22)
    {
      return 2;
    }
  }

  else if (v22)
  {
    return 1;
  }

  if (v21 <= v28 || *(a2 + 116) <= *(a2 + 212))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t comparePlacedBitmasks(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v6 = a1;
  v7 = offsetBitmapRect(*(a1 + 24), *(a1 + 32), *(a1 + 16), *(a1 + 20));
  v9 = v8;
  v10 = offsetBitmapRect(*(a2 + 24), *(a2 + 32), *(a2 + 16), *(a2 + 20));
  result = unionBitmapRects(v7, v9, v10);
  v34 = HIDWORD(result) - result;
  if (HIDWORD(result) - result < 1)
  {
    v35 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v35 = 0;
    v15 = HIDWORD(v12) - v12;
    v32 = v12 - *(v6 + 16);
    v33 = HIDWORD(v12) - v12;
    v16 = result - *(v6 + 20);
    v17 = a2;
    v31 = v12 - *(a2 + 16);
    v18 = result - *(a2 + 20);
    do
    {
      if (v15 >= 1)
      {
        v20 = v31;
        v19 = v32;
        do
        {
          v21 = v6;
          v22 = bitValueFromBitmask(*(v6 + 8), v19, v16 + v13);
          result = bitValueFromBitmask(*(v17 + 8), v20, v18 + v13);
          if (v22 == 1 && result == 0)
          {
            LODWORD(v35) = v35 + 1;
          }

          else
          {
            if (v22 == 1 && result == 1)
            {
              v25 = v14 + 1;
            }

            else
            {
              v25 = v14;
            }

            if (v22)
            {
              v26 = 0;
            }

            else
            {
              v26 = result == 1;
            }

            v27 = HIDWORD(v35);
            if (v26)
            {
              v27 = HIDWORD(v35) + 1;
            }

            HIDWORD(v35) = v27;
            if (!v26)
            {
              v14 = v25;
            }
          }

          ++v20;
          ++v19;
          --v15;
          v6 = v21;
        }

        while (v15);
      }

      ++v13;
      v15 = v33;
    }

    while (v13 != v34);
  }

  *a3 = v35;
  *a4 = HIDWORD(v35);
  *a5 = v14;
  return result;
}

unsigned __int8 **snapToPupil(unsigned __int8 **result, int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *(result + 7);
  v10 = *(result + 3);
  v11 = *(result + 4);
  v12 = -2;
  do
  {
    v13 = a2;
    v14 = a3;
    v15 = (*result)[v11 * a3 + v9 * a2];
    if (v10 >= 1)
    {
      v16 = 0;
      v17 = *(result + 2);
      v18 = *result;
      v20 = -a3;
      v19 = -(*result)[v11 * a3 + v9 * a2];
      v15 = (*result)[v11 * a3 + v9 * a2];
      v14 = a3;
      v13 = a2;
      do
      {
        if (v17 >= 1)
        {
          v21 = 0;
          v22 = v18;
          v23 = -a2;
          do
          {
            v24 = v20 * v20 + v23 * v23;
            v25 = (v24 + (1 << (v12 - 1))) >> v12;
            v26 = v24 << -v12;
            if (v12 <= 0)
            {
              v25 = v26;
            }

            v27 = v25 - *v22;
            if (v27 < v19)
            {
              v13 = v21;
              v14 = v16;
              v15 = *v22;
              v19 = v27;
            }

            ++v21;
            v22 += v9;
            ++v23;
          }

          while (v17 != v21);
        }

        ++v16;
        v18 += v11;
        ++v20;
      }

      while (v16 != v10);
    }

    if (v12 >= -1 && sqrtf(((a3 - v8) * (a3 - v8) + (a2 - v7) * (a2 - v7))) * 4.0 < sqrtf(((a2 - v13) * (a2 - v13) + (a3 - v14) * (a3 - v14))))
    {
      break;
    }

    ++v12;
    v6 = v15;
    v7 = v13;
    v8 = v14;
  }

  while (v12 != 7);
  *a4 = v7;
  *a5 = v8;
  *a6 = v6;
  return result;
}

_DWORD *computeSkinMask(_DWORD *result, unsigned __int8 **a2, uint64_t a3, uint64_t a4)
{
  v4 = result[3];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 == v5)
  {
    v7 = 0;
    v8 = *(a2 + 4);
    v9 = *a3;
    v10 = *a2;
    v11 = *(a2 + 7);
    v12 = result[4];
    v13 = 2 * *(a3 + 28);
    do
    {
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8;
      }

      if (v7)
      {
        v15 = -v8;
      }

      else
      {
        v15 = 0;
      }

      if ((v7 & 1) == 0)
      {
        v14 = v15;
      }

      v16 = &v10[v14];
      v17 = *v10;
      v18 = v10[1];
      v19 = *v16;
      v20 = v16[1];
      if (result[2] < 3)
      {
        v28 = *v10;
        v27 = v10[1];
        v26 = *v16;
        v25 = v16[1];
        v24 = v10;
        v23 = v9;
      }

      else
      {
        v21 = 0;
        v22 = v14;
        v23 = v9;
        v24 = v10;
        v25 = v20;
        v26 = v19;
        v27 = v10[1];
        v28 = *v10;
        do
        {
          *v23 = *(a4 + ((16 * (v26 + 9 * v17 + 3 * (v19 + v28)) + 128) & 0x7FFFFF00) + ((9 * v18 + v25 + 3 * (v20 + v27) + 8) >> 4));
          v28 = *v24;
          v27 = v24[1];
          v17 = v24[2];
          v18 = v24[3];
          v26 = v24[v22];
          v25 = v24[v22 + 1];
          v19 = v24[v22 + 2];
          v20 = v24[v22 + 3];
          v23[1] = *(a4 + ((16 * (3 * (v26 + v17) + 9 * v28 + v19) + 128) & 0x7FFFFF00) + ((9 * v27 + v20 + 3 * (v25 + v18) + 8) >> 4));
          v24 += v11;
          v21 += 2;
          v23 += v13;
        }

        while (v21 < result[2] - 2);
        v16 = &v24[v22];
      }

      *v23 = *(a4 + ((16 * (v26 + 9 * v17 + 3 * (v19 + v28)) + 128) & 0x7FF00) + ((9 * v18 + v25 + 3 * (v20 + v27) + 8) >> 4));
      v23[1] = *(a4 + ((16 * (9 * *v24 + *v16 + 3 * (*v16 + *v24)) + 128) & 0x7FF00) + ((9 * v24[1] + v16[1] + 3 * (v16[1] + v24[1]) + 8) >> 4));
      v10 += (v7++ & 1) * v8;
      v9 += v12;
    }

    while (v7 < result[3]);
  }

  return result;
}

uint64_t examineBitmask(unsigned __int8 **a1, unsigned __int8 **a2, uint64_t a3, int *a4)
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 7);
  v8 = *(a2 + 7);
  v9 = *(a2 + 4);
  *a4 = 0;
  if (v7 != 1 || v8 != 2)
  {
    v11 = "examineBitmask: bitmaps are the wrong number of samples per pixel";
LABEL_139:
    puts(v11);
    return 0xFFFFFFFFLL;
  }

  v12 = a3;
  if (v4 != *(a3 + 8) || v5 != *(a3 + 12) || v4 != 2 * *(a2 + 2) || v5 != 2 * *(a2 + 3))
  {
    v11 = "examineBitmask: bitmaps don't match";
    goto LABEL_139;
  }

  v13 = 0uLL;
  memset(v136, 0, sizeof(v136));
  if (v5 > 0)
  {
    v14 = 0;
    v15 = *a2;
    v120 = -v9;
    v121 = v5 - 1;
    v126 = v4 - 2;
    v129 = *a1;
    v119 = v5;
    v124 = v4;
    v123 = v6;
    v122 = v9;
    do
    {
      v16 = v120;
      if (v14 == v121)
      {
        v17 = 0;
      }

      else
      {
        v17 = v9;
      }

      if (!v14)
      {
        v16 = 0;
      }

      v134 = v14;
      v125 = v14 & 1;
      if ((v14 & 1) == 0)
      {
        v17 = v16;
      }

      v18 = &v15[v17];
      v19 = *v15;
      v20 = v15[1];
      v21 = *v18;
      v127 = v15;
      v128 = v18;
      v22 = v18[1];
      if (v4 < 3)
      {
        LODWORD(v60) = 0;
        v27 = *v15;
        v26 = v15[1];
        v25 = *v18;
        v24 = v18[1];
        v61 = v129;
      }

      else
      {
        v23 = 0;
        v24 = v22;
        v25 = v21;
        v26 = v15[1];
        v27 = *v15;
        do
        {
          v28 = v23;
          v29 = &v129[v23];
          v30 = v129[v23];
          v31 = ((9 * v27 + v21 + 3 * (v25 + v19) + 8) >> 4) - 128;
          v32 = ((9 * v26 + v22 + 3 * (v24 + v20) + 8) >> 4) - 128;
          v33 = v30 + ((22970 * v32 + 0x2000) >> 14);
          v34 = v30 + ((-11700 * v32 - 5638 * v31 + 0x2000) >> 14);
          v35 = v30 + ((29032 * v31 + 0x2000) >> 14);
          if (v33 >= 255)
          {
            v36 = 255;
          }

          else
          {
            v36 = v33;
          }

          if (v34 >= 255)
          {
            v37 = 255;
          }

          else
          {
            v37 = v34;
          }

          if (v35 >= 255)
          {
            v38 = 255;
          }

          else
          {
            v38 = v35;
          }

          if (bitValueFromBitmask(v12, v28, v134))
          {
            v39 = v37 & ~(v37 >> 31);
            v40 = v38 & ~(v38 >> 31);
            if (v38 > v39 || (v41 = (v36 & ~(v36 >> 31)) - v40, v41 < 1))
            {
              v43 = 0;
            }

            else
            {
              v42 = (((v39 - v40) << 6) / (v41 + v39 - v40) + 2) >> 2;
              if (v42 >= 8)
              {
                v42 = 8;
              }

              v43 = 8 * v42;
            }

            if (v40 < v39)
            {
              v39 = v38 & ~(v38 >> 31);
            }

            ++*(v136 + (v43 + (v39 >> 5)));
          }

          v44 = v29[1];
          v25 = v128[v28 + 2];
          v131 = v128[v28];
          v132 = v127[v28];
          v130 = v127[v28 + 2];
          v20 = v127[v28 + 1];
          v45 = v128[v28 + 1];
          v26 = v127[v28 + 3];
          v46 = v128[v28 + 3];
          v47 = ((9 * v132 + v25 + 3 * (v131 + v130) + 8) >> 4) - 128;
          v48 = ((9 * v20 + v46 + 3 * (v45 + v26) + 8) >> 4) - 128;
          v49 = v44 + ((22970 * v48 + 0x2000) >> 14);
          v50 = v44 + ((-11700 * v48 - 5638 * v47 + 0x2000) >> 14);
          v51 = v44 + ((29032 * v47 + 0x2000) >> 14);
          if (v49 >= 255)
          {
            v52 = 255;
          }

          else
          {
            v52 = v49;
          }

          if (v50 >= 255)
          {
            v53 = 255;
          }

          else
          {
            v53 = v50;
          }

          if (v51 >= 255)
          {
            v54 = 255;
          }

          else
          {
            v54 = v51;
          }

          if (bitValueFromBitmask(a3, v28 + 1, v134))
          {
            v55 = v53 & ~(v53 >> 31);
            v56 = v54 & ~(v54 >> 31);
            if (v54 > v55 || (v57 = (v52 & ~(v52 >> 31)) - v56, v57 < 1))
            {
              v59 = 0;
            }

            else
            {
              v58 = (((v55 - v56) << 6) / (v57 + v55 - v56) + 2) >> 2;
              if (v58 >= 8)
              {
                v58 = 8;
              }

              v59 = 8 * v58;
            }

            if (v56 < v55)
            {
              v55 = v54 & ~(v54 >> 31);
            }

            ++*(v136 + (v59 + (v55 >> 5)));
          }

          v23 = v28 + 2;
          v12 = a3;
          v22 = v45;
          v21 = v131;
          v19 = v132;
          v24 = v46;
          v27 = v130;
        }

        while (v28 + 2 < v126);
        v60 = v28 + 2;
        v128 += v60;
        v61 = &v129[v60];
        v15 = &v127[v60];
        v5 = v119;
      }

      v62 = *v61;
      v63 = ((9 * v27 + v21 + 3 * (v25 + v19) + 8) >> 4) - 128;
      v64 = ((9 * v26 + v22 + 3 * (v24 + v20) + 8) >> 4) - 128;
      v65 = v62 + ((22970 * v64 + 0x2000) >> 14);
      v66 = v62 + ((-11700 * v64 - 5638 * v63 + 0x2000) >> 14);
      v67 = v62 + ((29032 * v63 + 0x2000) >> 14);
      if (v65 >= 255)
      {
        v68 = 255;
      }

      else
      {
        v68 = v65;
      }

      if (v66 >= 255)
      {
        v69 = 255;
      }

      else
      {
        v69 = v66;
      }

      if (v67 >= 255)
      {
        v70 = 255;
      }

      else
      {
        v70 = v67;
      }

      if (bitValueFromBitmask(v12, v60, v134))
      {
        v71 = v69 & ~(v69 >> 31);
        v72 = v70 & ~(v70 >> 31);
        if (v70 > v71 || (v73 = (v68 & ~(v68 >> 31)) - v72, v73 < 1))
        {
          v75 = 0;
        }

        else
        {
          v74 = (((v71 - v72) << 6) / (v73 + v71 - v72) + 2) >> 2;
          if (v74 >= 8)
          {
            v74 = 8;
          }

          v75 = 8 * v74;
        }

        if (v72 < v71)
        {
          v71 = v70 & ~(v70 >> 31);
        }

        ++*(v136 + (v75 + (v71 >> 5)));
      }

      v76 = v61[1];
      v77 = ((9 * *v15 + *v128 + 3 * (*v128 + *v15) + 8) >> 4) - 128;
      v78 = ((9 * v15[1] + v128[1] + 3 * (v128[1] + v15[1]) + 8) >> 4) - 128;
      v79 = v76 + ((22970 * v78 + 0x2000) >> 14);
      v80 = v76 + ((-11700 * v78 - 5638 * v77 + 0x2000) >> 14);
      v81 = v76 + ((29032 * v77 + 0x2000) >> 14);
      if (v79 >= 255)
      {
        v82 = 255;
      }

      else
      {
        v82 = v79;
      }

      if (v80 >= 255)
      {
        v83 = 255;
      }

      else
      {
        v83 = v80;
      }

      if (v81 >= 255)
      {
        v84 = 255;
      }

      else
      {
        v84 = v81;
      }

      v85 = bitValueFromBitmask(v12, v60 | 1, v134);
      v9 = v122;
      v13 = 0uLL;
      if (v85)
      {
        v86 = v83 & ~(v83 >> 31);
        v87 = v84 & ~(v84 >> 31);
        if (v84 > v86 || (v88 = (v82 & ~(v82 >> 31)) - v87, v88 < 1))
        {
          v90 = 0;
        }

        else
        {
          v89 = (((v86 - v87) << 6) / (v88 + v86 - v87) + 2) >> 2;
          if (v89 >= 8)
          {
            v89 = 8;
          }

          v90 = 8 * v89;
        }

        if (v87 < v86)
        {
          v86 = v84 & ~(v84 >> 31);
        }

        ++*(v136 + (v90 + (v86 >> 5)));
      }

      v4 = v124;
      v15 = &v127[v125 * v122];
      v14 = v134 + 1;
      v129 += v123;
    }

    while (v134 + 1 != v5);
  }

  for (i = 0; i != 18; ++i)
  {
    v13 = vmaxq_u32(v136[i], v13);
  }

  v92 = vmaxvq_u32(v13);
  v93 = v92 - 1;
  if (v92 <= 1)
  {
    return 0xFFFFFFFFLL;
  }

  v94 = 0;
  v95 = v92 / 3u;
  v96 = v136;
  do
  {
    v97 = 0;
    do
    {
      v98 = *(v96 + v97);
      if (v98 <= v95)
      {
        v99 = 0;
      }

      else
      {
        v99 = (8 * v98 - 8) / v93 + 1;
      }

      *(v96 + v97) = v99;
      v97 += 4;
    }

    while (v97 != 32);
    ++v94;
    v96 += 2;
  }

  while (v94 != 9);
  v100 = 0;
  v101 = 0;
  do
  {
    v102 = 0;
    v103 = &v135[v101 * 4];
    v104 = &v136[v101];
    v101 += 2;
    do
    {
      if (v102)
      {
        v105 = *&v104[v102];
      }

      else
      {
        v105 = 0;
      }

      v103[v102 / 4] = v105;
      v102 += 4;
    }

    while (v102 != 32);
    ++v100;
  }

  while (v100 != 9);
  v106 = 0;
  v107 = 0;
  v108 = 10;
  v109 = -1;
  v110 = v135;
  v111 = -1;
  do
  {
    v112 = 0;
    do
    {
      if (v107 >= v108)
      {
        v113 = v108;
      }

      else
      {
        v113 = v107;
      }

      if (v107 <= v111)
      {
        v114 = v111;
      }

      else
      {
        v114 = v107;
      }

      if (v112 <= v109)
      {
        v115 = v109;
      }

      else
      {
        v115 = v112;
      }

      v116 = v112 + 1;
      if (v110[v112])
      {
        v108 = v113;
        v111 = v114;
        v109 = v115;
        ++v106;
      }

      ++v112;
    }

    while (v116 != 8);
    ++v107;
    v110 += 8;
  }

  while (v107 != 9);
  if (v106 && (v109 > 1 || v111 >= 2))
  {
    if (v111)
    {
      if (v109 == 1)
      {
        result = 1;
      }

      else if ((v108 - 1) > 1 || v111 <= 2)
      {
        if (v108 == 3 && v111 == 3)
        {
          result = 4;
        }

        else if (v111 >= 5)
        {
          result = 5;
        }

        else
        {
          result = 6;
        }
      }

      else
      {
        result = 2;
      }
    }

    else
    {
      result = 3;
    }
  }

  else
  {
    result = 0;
  }

  *a4 = v109;
  return result;
}

float f2AndPixelValueFromBorderPixelsAt(uint64_t a1, int a2, float *a3, float a4)
{
  if (a2 < 1)
  {
LABEL_6:
    *a3 = *(a1 - 8);
    return *(a1 - 4);
  }

  v4 = 0;
  v5 = (a1 + 8);
  while (1)
  {
    v6 = *(v5 - 2);
    if (v6 >= a4)
    {
      break;
    }

    ++v4;
    v5 += 3;
    if (a2 == v4)
    {
      a1 += 12 * (a2 - 1) + 12;
      goto LABEL_6;
    }
  }

  if (!v4)
  {
    *a3 = *(v5 - 1);
    return *v5;
  }

  v9 = (a4 - *(v5 - 5)) / (v6 - *(v5 - 5));
  v10 = 0.0;
  if (v9 >= 0.0)
  {
    v10 = v9;
    if (v9 > 1.0)
    {
      v10 = 1.0;
    }
  }

  v11 = *(v5 - 1);
  v12 = *(v5 - 4);
  if (v11 != v12)
  {
    v11 = v12 + ((v11 - v12) * v10);
  }

  *a3 = v11;
  return *(v5 - 3) + ((*v5 - *(v5 - 3)) * v10);
}

uint64_t crossingCompare(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t maximumPointWithSamples(float *a1, float *a2, float a3, float a4, float a5)
{
  v5 = a4;
  v6 = a5;
  v7 = (a3 + a4 * -2.0 + v6) * 0.5;
  if (v7 == 0.0)
  {
    return 0;
  }

  v8 = v5 + v5 + a3 * -1.5 + v6 * -0.5;
  v9 = -v8 / (v7 + v7);
  if (v9 <= 0.0 || v9 >= 2.0)
  {
    return 0;
  }

  *a1 = v9;
  *a2 = (a3 + (v8 * v9)) + ((v7 * v9) * v9);
  return 1;
}

int *hopperInsert(int *result, float a2, float a3, double a4, double a5, float a6)
{
  v6 = *result;
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
LABEL_13:
    v11 = &result[10 * v7 + 2];
    *v11 = a2;
    *(v11 + 4) = a3;
    *(v11 + 8) = a6;
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    *(v11 + 32) = 0;
    if (*result < 4)
    {
      v12 = *result + 1;
    }

    else
    {
      v12 = 4;
    }

    *result = v12;
    return result;
  }

  v7 = 0;
  v8 = (result + 2);
  while (*v8 >= a2)
  {
    ++v7;
    v8 += 10;
    if (v6 == v7)
    {
      LODWORD(v7) = *result;
      goto LABEL_12;
    }
  }

  if (v6 > v7)
  {
    v9 = &result[10 * v6 + 2];
    do
    {
      if (v6 <= 3)
      {
        v10 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v10;
        *(v9 + 32) = *(v9 - 8);
      }

      --v6;
      v9 -= 40;
    }

    while (v6 > v7);
  }

LABEL_12:
  if (v7 <= 3)
  {
    goto LABEL_13;
  }

  return result;
}

int *minEnergyHopperInsert(int *result, int a2, float a3)
{
  v3 = *result;
  if (v3 < 1)
  {
    LODWORD(v4) = 0;
LABEL_12:
    v6 = &result[2 * v4 + 1];
    *v6 = a3;
    *(v6 + 4) = a2;
    if (*result < 4)
    {
      v7 = *result + 1;
    }

    else
    {
      v7 = 4;
    }

    *result = v7;
    return result;
  }

  v4 = 0;
  v5 = (result + 1);
  while (*v5 <= a3)
  {
    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
      LODWORD(v4) = *result;
      goto LABEL_11;
    }
  }

  if (v3 > v4)
  {
    do
    {
      if (v3 <= 3)
      {
        *&result[2 * v3 + 1] = *&result[2 * v3 - 1];
      }

      --v3;
    }

    while (v3 > v4);
  }

LABEL_11:
  if (v4 <= 3)
  {
    goto LABEL_12;
  }

  return result;
}

int *snakeHopperInsert(int *result, int a2, int a3, int a4, int a5, float a6)
{
  v6 = *result;
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
LABEL_13:
    v10 = &result[5 * v7 + 1];
    *v10 = a6;
    *(v10 + 4) = a2;
    *(v10 + 8) = a3;
    *(v10 + 12) = a4;
    *(v10 + 16) = a5;
    if (*result < 20)
    {
      v11 = *result + 1;
    }

    else
    {
      v11 = 20;
    }

    *result = v11;
    return result;
  }

  v7 = 0;
  v8 = (result + 1);
  while (*v8 <= a6)
  {
    ++v7;
    v8 += 5;
    if (v6 == v7)
    {
      LODWORD(v7) = *result;
      goto LABEL_12;
    }
  }

  if (v6 > v7)
  {
    v9 = &result[5 * v6 + 1];
    do
    {
      if (v6 <= 19)
      {
        *v9 = *(v9 - 20);
        *(v9 + 16) = *(v9 - 4);
      }

      --v6;
      v9 -= 20;
    }

    while (v6 > v7);
  }

LABEL_12:
  if (v7 <= 0x13)
  {
    goto LABEL_13;
  }

  return result;
}

BOOL seedFill(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v38 = 0;
  v37 = 0;
  if ((a3 & 0x80000000) == 0 && (a4 & 0x80000000) == 0 && *(a2 + 8) > a3)
  {
    v9 = *(a2 + 12);
    if (v9 > a4)
    {
      bzero(*a2, *(a2 + 16) * v9);
      v13 = allocSpanStack();
      if (!v13)
      {
        puts("seedFill: can not allocate span stack");
        return 0;
      }

      v14 = v13;
      v40 = 0;
      v39 = 0;
      spanSearch(a1, a2, a3, a4, &v39, a5, a6);
      v15 = HIWORD(v39);
      if (HIWORD(v39) <= v40)
      {
        v16 = v39;
        v17 = v40 + 1;
        do
        {
          setBitInBitmask(a2, v15++, v16, 1);
        }

        while (v17 != v15);
      }

      pushSpan(v14, &v39);
      v35 = v14;
      v36 = a6;
      while (1)
      {
LABEL_10:
        v19 = *(v14 + 8);
        v18 = *(v14 + 16);
        if (v18 == v19 + 16)
        {
          v20 = *(v19 + 8);
          if (!v20)
          {
            freeSpanStack(v14);
            return 1;
          }

          *(v14 + 8) = v20;
          v18 = v20 + 316;
        }

        *(v14 + 16) = v18 - 6;
        v39 = *(v18 - 6);
        v40 = *(v18 - 2);
        v21 = v39;
        if (v39)
        {
          v22 = HIWORD(v39);
          v23 = v40;
          if (HIWORD(v39) <= v40)
          {
            break;
          }
        }

LABEL_23:
        v14 = v35;
        if (*(a2 + 12) - 1 > v21)
        {
          v28 = HIWORD(v39);
          v29 = v40;
          if (HIWORD(v39) <= v40)
          {
            while (1)
            {
              if (!bitValueFromBitmask(a2, v28, v21 + 1) && a6(a5, a1, v28, (v21 + 1)))
              {
                spanSearch(a1, a2, v28, (v21 + 1), &v37, a5, a6);
                v30 = HIWORD(v37);
                v31 = v38;
                if (HIWORD(v37) <= v38)
                {
                  v32 = v37;
                  do
                  {
                    setBitInBitmask(a2, v30++, v32, 1);
                  }

                  while (v31 + 1 != v30);
                }

                if (!pushSpan(v35, &v37))
                {
                  goto LABEL_39;
                }

                LODWORD(v28) = v31 + 2;
                a6 = v36;
              }

              v27 = v28 < v29;
              v28 = (v28 + 1);
              if (!v27)
              {
                goto LABEL_10;
              }
            }
          }
        }
      }

      while (1)
      {
        if (!bitValueFromBitmask(a2, v22, v21 - 1) && a6(a5, a1, v22, (v21 - 1)))
        {
          spanSearch(a1, a2, v22, (v21 - 1), &v37, a5, a6);
          v24 = HIWORD(v37);
          v25 = v38;
          if (HIWORD(v37) <= v38)
          {
            v26 = v37;
            do
            {
              setBitInBitmask(a2, v24++, v26, 1);
            }

            while (v25 + 1 != v24);
          }

          if (!pushSpan(v35, &v37))
          {
LABEL_39:
            puts("seedFill: can not push span onto stack");
            freeSpanStack(v35);
            return 0;
          }

          LODWORD(v22) = v25 + 2;
          a6 = v36;
        }

        v27 = v22 < v23;
        v22 = (v22 + 1);
        if (!v27)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v33 = ci_logger_render();
  result = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    seedFill_cold_1(v33);
    return 0;
  }

  return result;
}

void *allocSpanStack()
{
  v0 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
  if (v0)
  {
    v1 = malloc_type_malloc(0x140uLL, 0x1020040FF14E95CuLL);
    *v0 = v1;
    v0[1] = v1;
    if (v1)
    {
      *v1 = 0;
      v1[1] = 0;
      v0[2] = v1 + 2;
    }

    else
    {
      puts("allocSpanStack: span stack firstChunk could not be allocated");
      free(v0);
      return 0;
    }
  }

  else
  {
    puts("allocSpanStack: span stack could not be allocated");
  }

  return v0;
}

uint64_t spanSearch(uint64_t result, uint64_t a2, int a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a3;
  v13 = result;
  *a5 = a4;
  LODWORD(v14) = a3;
  do
  {
    v15 = v14;
    v16 = __OFSUB__(v14, 1);
    v14 = (v14 - 1);
    if (v14 < 0 != v16)
    {
      break;
    }

    result = bitValueFromBitmask(a2, v14, a4);
    if (result == 1)
    {
      break;
    }

    result = a7(a6, v13, v14, a4);
  }

  while (result);
  a5[1] = v15;
  do
  {
    v17 = v11;
    v18 = (v11 + 1);
    if (v18 >= *(a2 + 8))
    {
      break;
    }

    result = bitValueFromBitmask(a2, v18, a4);
    if (result == 1)
    {
      break;
    }

    result = a7(a6, v13, v18, a4);
    v11 = v17 + 1;
  }

  while (result);
  a5[2] = v17;
  if (a5[1] > v17)
  {

    return puts("spanSearch: empty span");
  }

  return result;
}

uint64_t pushSpan(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 - 16 >= 295)
  {
    v6 = *v5;
    if (!v6)
    {
      result = malloc_type_malloc(0x140uLL, 0x1020040FF14E95CuLL);
      v8 = *(a1 + 8);
      *v8 = result;
      if (!result)
      {
        return result;
      }

      *result = 0;
      v6 = *v8;
      *(*v8 + 8) = v8;
    }

    v4 = v6 + 16;
    *(a1 + 8) = v6;
    *(a1 + 16) = v6 + 16;
  }

  v9 = *a2;
  *(v4 + 4) = *(a2 + 2);
  *v4 = v9;
  *(a1 + 16) += 6;
  return 1;
}

void freeSpanStack(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t incrementalSeedFill(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v60 = 0;
  v59 = 0;
  v12 = allocSpanStack();
  if (v12)
  {
    v13 = v12;
    v58 = a5;
    v62 = 0;
    v61 = 0;
    v14 = bitmaskBoundingBitmapRectWithSeedPoint(a2, a3, a4);
    v16 = insetBitmapRect(v14, v15, 0xFFFFFFFFLL, -1);
    v18 = v16 & ~(v16 >> 31);
    if (*(a2 + 12) >= SHIDWORD(v16))
    {
      v19 = HIDWORD(v16);
    }

    else
    {
      v19 = *(a2 + 12);
    }

    v56 = v13;
    v57 = a6;
    if (v18 < v19)
    {
      v20 = *(a2 + 8);
      v21 = v17 & 0xFFFFFFFF00000000;
      if ((v17 & 0x80000000) == 0)
      {
        v21 = v17;
      }

      if (v20 >= SHIDWORD(v21))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 | (v20 << 32);
      }

      v23 = HIDWORD(v22);
      v54 = v19;
      v53 = v22;
      do
      {
        if (v22 >= v23)
        {
          v36 = (v18 + 1);
        }

        else
        {
          v55 = v18 + 1;
          v24 = v22;
          v25 = a5;
          do
          {
            v26 = *a2;
            v27 = *(a2 + 16);
            v28 = *a2 + v27 * v18;
            if ((v24 & 0x80000000) == 0)
            {
              v29 = v24;
            }

            else
            {
              v29 = v24 + 7;
            }

            v30 = 1 << (v24 & 7);
            if ((v30 & *(v28 + (v29 >> 3))) == 0)
            {
              if (v24 >= 1 && ((*(v28 + ((v24 - 1) >> 3)) >> ((v24 - 1) & 7)) & 1) != 0)
              {
                goto LABEL_67;
              }

              if (v24 < *(a2 + 8) - 1)
              {
                v31 = v24 + 8;
                if (v24 >= -1)
                {
                  v31 = v24 + 1;
                }

                if ((*(v28 + (v31 >> 3)) >> ((v24 + 1) & 7)))
                {
                  goto LABEL_67;
                }
              }

              if ((v32 = v29 >> 3, v18) && (v30 & *(v26 + v27 * (v18 - 1) + v32)) != 0 || v18 < *(a2 + 12) - 1 && (v30 & *(v26 + v27 * v55 + v32)) != 0)
              {
LABEL_67:
                if (a6(v25, a1, v24, v18))
                {
                  spanSearch(a1, a2, v24, v18, &v61, v25, a6);
                  v33 = HIWORD(v61);
                  if (HIWORD(v61) <= v62)
                  {
                    v34 = v61;
                    v35 = v62 + 1;
                    do
                    {
                      setBitInBitmask(a2, v33++, v34, 1);
                    }

                    while (v35 != v33);
                  }

                  v13 = v56;
                  pushSpan(v56, &v61);
                  a6 = v57;
                  v25 = a5;
                }
              }
            }

            v24 = (v24 + 1);
          }

          while (v24 != v23);
          v19 = v54;
          v36 = v55;
          v22 = v53;
        }

        v18 = v36;
      }

      while (v36 != v19);
    }

    while (1)
    {
LABEL_37:
      v38 = *(v13 + 8);
      v37 = *(v13 + 16);
      if (v37 == v38 + 16)
      {
        v39 = *(v38 + 8);
        if (!v39)
        {
          freeSpanStack(v13);
          return 1;
        }

        *(v13 + 8) = v39;
        v37 = v39 + 316;
      }

      *(v13 + 16) = v37 - 6;
      v61 = *(v37 - 6);
      v62 = *(v37 - 2);
      v40 = v61;
      if (v61)
      {
        v41 = HIWORD(v61);
        v42 = v62;
        if (HIWORD(v61) <= v62)
        {
          do
          {
            if (!bitValueFromBitmask(a2, v41, v40 - 1) && a6(v58, a1, v41, (v40 - 1)))
            {
              spanSearch(a1, a2, v41, (v40 - 1), &v59, v58, a6);
              v43 = HIWORD(v59);
              v44 = v60;
              if (HIWORD(v59) <= v60)
              {
                v45 = v59;
                do
                {
                  setBitInBitmask(a2, v43++, v45, 1);
                }

                while (v44 + 1 != v43);
              }

              v13 = v56;
              if (!pushSpan(v56, &v59))
              {
LABEL_61:
                puts("seedFill: can not push span onto stack");
                freeSpanStack(v13);
                return 0;
              }

              LODWORD(v41) = v44 + 2;
              a6 = v57;
            }

            v46 = v41 < v42;
            v41 = (v41 + 1);
          }

          while (v46);
        }
      }

      if (*(a2 + 12) - 1 > v40)
      {
        v47 = HIWORD(v61);
        v48 = v62;
        if (HIWORD(v61) <= v62)
        {
          while (1)
          {
            if (!bitValueFromBitmask(a2, v47, v40 + 1) && a6(v58, a1, v47, (v40 + 1)))
            {
              spanSearch(a1, a2, v47, (v40 + 1), &v59, v58, a6);
              v49 = HIWORD(v59);
              v50 = v60;
              if (HIWORD(v59) <= v60)
              {
                v51 = v59;
                do
                {
                  setBitInBitmask(a2, v49++, v51, 1);
                }

                while (v50 + 1 != v49);
              }

              if (!pushSpan(v13, &v59))
              {
                goto LABEL_61;
              }

              LODWORD(v47) = v50 + 2;
              a6 = v57;
            }

            v46 = v47 < v48;
            v47 = (v47 + 1);
            if (!v46)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

  puts("seedFill: can not allocate span stack");
  return 0;
}

void CI::PixelBufferImage::PixelBufferImage(uint64_t a1, void *a2, uint64_t a3, int a4, __int32 PixelBufferYCCMatrix, const void *a6, int a7, int a8, float a9, float a10, char a11, char a12)
{
  v47 = *MEMORY[0x1E69E9840];
  CI::Image::Image(a1);
  *(v22 + 120) = &unk_1F1033890;
  *(v22 + 128) = a2;
  atomic_fetch_add(&dword_1ED7C47BC[19], 1u);
  *v22 = &unk_1F1033670;
  *(v22 + 136) = a3;
  *(v22 + 208) = 0;
  *(v22 + 204) = 0;
  *(v22 + 184) = 0;
  *(v22 + 192) = 0;
  *(v22 + 176) = 0;
  *(v22 + 120) = &unk_1F1033800;
  CFRetain(a2);
  *(a1 + 160) = 0;
  *(a1 + 200) = a4;
  *(a1 + 216) = a7;
  if (a6)
  {
    v23 = CFRetain(a6);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 168) = v23;
  *(a1 + 220) = a8;
  *(a1 + 224) = a11;
  *(a1 + 225) = a12;
  *(a1 + 212) = 0;
  v24 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EE8], 0);
  v25 = v24;
  if (v24 && (v26 = CFGetTypeID(v24), v26 == CFDataGetTypeID()) && CFDataGetLength(v25) == 24)
  {
    v27 = *(CFDataGetBytePtr(v25) + 4);
  }

  else
  {
    v27 = 0;
  }

  v28 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965DE0], 0);
  v29 = v28;
  if (v28)
  {
    v30 = CFGetTypeID(v28);
    if (v30 == CFDataGetTypeID() && CFDataGetLength(v29) == 4)
    {
      BytePtr = CFDataGetBytePtr(v29);
      v32 = *BytePtr;
      v33 = *(BytePtr + 1);
LABEL_15:
      v34 = __rev16(v32);
      v35 = bswap32(v27) * 0.0001;
      v36 = fminf(v34, v35);
      if (v25)
      {
        v34 = v36;
      }

      else
      {
        v35 = 0.0;
      }

      if (v29)
      {
        v37 = v34;
      }

      else
      {
        v37 = v35;
      }

      v38 = __rev16(v33);
      if (v25)
      {
        CFRelease(v25);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      v39 = v38 / 203.0;
      if (a9 != 0.0)
      {
        goto LABEL_30;
      }

      v40 = v37 / 203.0;
      if ((v37 / 203.0) != 0.0)
      {
        goto LABEL_33;
      }

LABEL_29:
      if ((CI::format_is_extended(a4) & 1) == 0)
      {
        is_float = CI::format_is_float(a4);
        v40 = 1.0;
        if (is_float)
        {
          v40 = a9;
        }

LABEL_33:
        if (a10 == 0.0)
        {
          v42 = v39;
        }

        else
        {
          v42 = a10;
        }

        *(a1 + 204) = v40;
        *(a1 + 208) = v42;
        if (CI::format_is_ycc_or_ycca(*(a1 + 200)))
        {
          if (!PixelBufferYCCMatrix)
          {
            PixelBufferYCCMatrix = GetPixelBufferYCCMatrix(a2);
            if (!PixelBufferYCCMatrix)
            {
              PixelBufferYCCMatrix = CI::format_get_default_ycc_color_matrix(a4);
              v43 = ci_logger_api();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                buf[0].i32[0] = 67109120;
                buf[0].i32[1] = PixelBufferYCCMatrix;
                _os_log_impl(&dword_19CC36000, v43, OS_LOG_TYPE_INFO, "CIImage will use Rec. %d YCC Matrix because the CVPixelBuffer was not tagged with a supported kCVImageBufferYCbCrMatrixKey.", buf, 8u);
              }
            }
          }

          *(a1 + 212) = PixelBufferYCCMatrix;
        }

        XXH64_reset(buf, 0);
        LODWORD(__src) = (*(*a1 + 16))(a1);
        XXH64_update(buf, &__src, 4uLL);
        if (*(a1 + 136))
        {
          __src = *(a1 + 136);
          XXH64_update(buf, &__src, 8uLL);
          __src = CVPixelBufferGetWidth(a2);
          XXH64_update(buf, &__src, 8uLL);
          __src = CVPixelBufferGetHeight(a2);
          XXH64_update(buf, &__src, 8uLL);
          LODWORD(__src) = CVPixelBufferGetPixelFormatType(a2);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 200);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 212);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 216);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 220);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 224);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 204);
          XXH64_update(buf, &__src, 4uLL);
          LODWORD(__src) = *(a1 + 208);
        }

        else
        {
          LODWORD(__src) = *(a1 + 116);
        }

        XXH64_update(buf, &__src, 4uLL);
        *(a1 + 96) = XXH64_digest(buf);
        XXH64_reset(buf, 0);
        LODWORD(__src) = (*(*a1 + 16))(a1);
        XXH64_update(buf, &__src, 4uLL);
        __src = CVPixelBufferGetWidth(a2);
        XXH64_update(buf, &__src, 8uLL);
        __src = CVPixelBufferGetHeight(a2);
        XXH64_update(buf, &__src, 8uLL);
        LODWORD(__src) = CVPixelBufferGetPixelFormatType(a2);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 200);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 212);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 216);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 220);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 224);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 204);
        XXH64_update(buf, &__src, 4uLL);
        LODWORD(__src) = *(a1 + 208);
        XXH64_update(buf, &__src, 4uLL);
        *(a1 + 104) = XXH64_digest(buf);
        v44 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        *(a1 + 152) = dispatch_queue_create("PixelBufferImage_SurfaceCacheQueue", v44);
        CFRetain(a2);
        CI::SharedCVPixelBuffer::SharedCVPixelBuffer(&__src, a2);
      }

LABEL_30:
      v40 = a9;
      goto LABEL_33;
    }
  }

  else if (!v25)
  {
    v39 = 0.0;
    if (a9 != 0.0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v33 = 0;
  v32 = 0;
  goto LABEL_15;
}

{
  CI::PixelBufferImage::PixelBufferImage(a1, a2, a3, a4, PixelBufferYCCMatrix, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t ___ZN2CI16PixelBufferImageC2EP10__CVBufferNS_22ImageLeafContentDigestENS_11PixelFormatEffiPKvNS_9AlphaModeENS_8EdgeModeEbb_block_invoke(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CI::format_is_packed(*(a1 + 48));
  v16 = *(a1 + 32);
  v17 = CI::format_bytes_for_width_of_plane(*(a1 + 48), a5, a3);
  v18 = CI::format_bytes_for_width_of_plane(*(a1 + 48), a7, a3);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN2CI16PixelBufferImageC2EP10__CVBufferNS_22ImageLeafContentDigestENS_11PixelFormatEffiPKvNS_9AlphaModeENS_8EdgeModeEbb_block_invoke_2;
  v20[3] = &__block_descriptor_tmp_3;
  v20[4] = a6;
  v20[5] = v17;
  v20[6] = a8;
  v20[7] = a2;
  v20[8] = a4;
  v20[9] = v18;
  return PixelBufferApplyOnePlaneReadOnlyBlock(v16, a3, v20);
}

void *___ZN2CI16PixelBufferImageC2EP10__CVBufferNS_22ImageLeafContentDigestENS_11PixelFormatEffiPKvNS_9AlphaModeENS_8EdgeModeEbb_block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result[6])
  {
    v7 = result;
    v8 = 0;
    v9 = (a2 + result[4] * a6 + result[5]);
    do
    {
      result = memcpy((v7[7] + v7[8] * v8++), v9, v7[9]);
      v9 += a6;
    }

    while (v8 < v7[6]);
  }

  return result;
}

uint64_t __copy_helper_block_8_32c30_ZTSN2CI19SharedCVPixelBufferE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_8_32c30_ZTSN2CI19SharedCVPixelBufferE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void CI::PixelBufferImage::~PixelBufferImage(CI::PixelBufferImage *this)
{
  *this = &unk_1F1033670;
  *(this + 15) = &unk_1F1033800;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
    *(this + 16) = 0;
    v3 = *(this + 21);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 21) = 0;
    v4 = *(this + 20);
    if (v4)
    {
      CFRelease(v4);
      *(this + 20) = 0;
    }
  }

  v5 = *(this + 18);
  if (v5)
  {
    _Block_release(v5);
  }

  *(this + 18) = 0;
  v6 = *(this + 19);
  if (v6)
  {
    dispatch_release(v6);
  }

  *(this + 19) = 0;
  v7 = *(this + 22);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 22) = 0;
  v8 = *(this + 23);
  if (v8)
  {
    CFRelease(v8);
  }

  *(this + 23) = 0;
  v9 = *(this + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 24) = 0;
  *(this + 15) = &unk_1F1033890;
  atomic_fetch_add(&dword_1ED7C47BC[19], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::PixelBufferImage::~PixelBufferImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::PixelBufferImage::~PixelBufferImage(CI::PixelBufferImage *this)
{
  CI::PixelBufferImage::~PixelBufferImage((this - 120));
}

{
  CI::PixelBufferImage::~PixelBufferImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::PixelBufferImage::print_for_graph_core(CI::PixelBufferImage *this, __sFILE *__stream)
{
  fwrite("CVPixelBuffer", 0xDuLL, 1uLL, __stream);
  if (*(this + 17))
  {
    fprintf(__stream, " content:%016llX");
  }

  else if (*(this + 16))
  {
    fprintf(__stream, " %p", *(this + 16));
    if (CVPixelBufferGetIOSurface(*(this + 16)))
    {
      IOSurface = CVPixelBufferGetIOSurface(*(this + 16));
      IOSurfaceGetSeed(IOSurface);
      fprintf(__stream, " seed:%d");
    }
  }

  v4 = CI::name_for_format(*(this + 50));
  fprintf(__stream, " %s", v4);
  result = *(this + 16);
  if (result)
  {
    result = CVPixelBufferGetPixelFormatType(result);
    v6 = result >> 24;
    if ((result & 0xFD000000) == 0x2D000000)
    {
      if (v6 <= 46)
      {
        if (v6 != 38)
        {
          if (v6 == 45)
          {
            v7 = "lossy75";
LABEL_21:
            result = fprintf(__stream, "-%s", v7);
            goto LABEL_22;
          }

LABEL_19:
          v7 = "";
          goto LABEL_21;
        }

LABEL_15:
        v7 = "compressed";
        goto LABEL_21;
      }

      if (v6 == 47)
      {
        v7 = "lossy62";
        goto LABEL_21;
      }

      if (v6 != 124)
      {
        goto LABEL_19;
      }

LABEL_18:
      v7 = "lossy50";
      goto LABEL_21;
    }

    if (v6 == 38)
    {
      goto LABEL_15;
    }

    if (v6 == 124)
    {
      goto LABEL_18;
    }
  }

LABEL_22:
  if (*(this + 53))
  {
    result = fprintf(__stream, " %d", *(this + 53));
  }

  v9 = *(this + 54);
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_36;
    }

    if (v9 == 1)
    {
      v10 = "alpha_one";
      goto LABEL_35;
    }

LABEL_34:
    v10 = "alpha_unknown";
    goto LABEL_35;
  }

  if (v9 == 6)
  {
    v10 = "alpha_unpremul-clear-edges";
    goto LABEL_35;
  }

  if (v9 == 4)
  {
    v10 = "alpha_premul-clear-edges";
    goto LABEL_35;
  }

  if (v9 != 2)
  {
    goto LABEL_34;
  }

  v10 = "alpha_unpremul";
LABEL_35:
  result = fprintf(__stream, " %s", v10);
LABEL_36:
  v11 = *(this + 55);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = "edge_clamp";
    }

    else
    {
      v12 = "edge_unknown";
    }

    result = fprintf(__stream, " %s", v12);
  }

  if (*(this + 224) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(this + 225) == 1)
  {

    return fwrite(" cache", 6uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::PixelBufferImage::matrix_bias(CI::PixelBufferImage *this, double *a2, float64x2_t *a3, double *a4, float64x2_t *a5)
{
  if (!*(this + 53))
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(*(this + 16));
  v11 = equivalent_uncompressed_format(PixelFormatType);
  v12 = 0;
  if (v11 <= 1937126451)
  {
    if (v11 <= 1882468911)
    {
      if (v11 > 875704949)
      {
        v13 = v11 == 875704950;
        v14 = 875836534;
      }

      else
      {
        v13 = v11 == 846624121;
        v14 = 875704438;
      }
    }

    else if (v11 <= 1882469427)
    {
      v13 = v11 == 1882468912;
      v14 = 1882468914;
    }

    else
    {
      v13 = v11 == 1882469428 || v11 == 1937125936;
      v14 = 1937125938;
    }
  }

  else if (v11 > 2016686639)
  {
    if (v11 <= 2016687155)
    {
      v13 = v11 == 2016686640;
      v14 = 2016686642;
    }

    else
    {
      v13 = v11 == 2016687156 || v11 == 2033463352;
      v14 = 2037741171;
    }
  }

  else if (v11 <= 1953903153)
  {
    v13 = v11 == 1937126452;
    v14 = 1953903152;
  }

  else
  {
    v13 = v11 == 1953903154 || v11 == 1953903668;
    v14 = 1983000886;
  }

  if (!v13 && v11 != v14)
  {
    v12 = 1;
  }

  v17 = 8;
  if (v11 <= 1936077875)
  {
    if (v11 > 1751527985)
    {
      if (v11 > 1885745711)
      {
        if (v11 > 1885746227)
        {
          if (v11 != 1885746228)
          {
            if (v11 != 1936077360)
            {
              v24 = 1936077362;
              goto LABEL_72;
            }

LABEL_76:
            v17 = 16;
            goto LABEL_100;
          }

LABEL_99:
          v17 = 10;
          goto LABEL_100;
        }

        if (v11 == 1885745712)
        {
          goto LABEL_99;
        }

        v19 = 1885745714;
LABEL_98:
        if (v11 != v19)
        {
          goto LABEL_103;
        }

        goto LABEL_99;
      }

      if (v11 > 1882468911)
      {
        if (v11 == 1882468912 || v11 == 1882468914)
        {
          goto LABEL_99;
        }

        v19 = 1882469428;
        goto LABEL_98;
      }

      if (v11 == 1751527986)
      {
LABEL_95:
        v17 = 0;
        goto LABEL_100;
      }

      v21 = 13364;
LABEL_94:
      if (v11 != (v21 | 0x68660000))
      {
        goto LABEL_103;
      }

      goto LABEL_95;
    }

    if (v11 <= 875704933)
    {
      if (v11 <= 875704421)
      {
        if (v11 == 846624102)
        {
          goto LABEL_100;
        }

        v23 = 846624121;
LABEL_90:
        if (v11 == v23)
        {
          goto LABEL_100;
        }

        goto LABEL_103;
      }

      if (v11 == 875704422)
      {
        goto LABEL_100;
      }

      v25 = 12406;
    }

    else
    {
      if (v11 > 875836517)
      {
        if (v11 == 875836518 || v11 == 875836534)
        {
          goto LABEL_100;
        }

        v21 = 12848;
        goto LABEL_94;
      }

      if (v11 == 875704934)
      {
        goto LABEL_100;
      }

      v25 = 12918;
    }

    v23 = v25 | 0x34320000;
    goto LABEL_90;
  }

  if (v11 <= 1983000885)
  {
    if (v11 > 1952854577)
    {
      if (v11 > 1953903151)
      {
        if (v11 == 1953903152 || v11 == 1953903154)
        {
          goto LABEL_81;
        }

        v22 = 1953903668;
LABEL_80:
        if (v11 == v22)
        {
          goto LABEL_81;
        }

LABEL_103:
        v17 = -1;
        goto LABEL_100;
      }

      if (v11 == 1952854578)
      {
LABEL_81:
        v17 = 12;
        goto LABEL_100;
      }

      v18 = 13364;
LABEL_79:
      v22 = v18 | 0x74660000;
      goto LABEL_80;
    }

    if (v11 > 1937125937)
    {
      if (v11 != 1937125938 && v11 != 1937126452)
      {
        v18 = 12848;
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v11 != 1936077876)
    {
      v24 = 1937125936;
LABEL_72:
      if (v11 != v24)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }

    goto LABEL_76;
  }

  if (v11 <= 2019963441)
  {
    if (v11 <= 2016686641)
    {
      if (v11 == 1983000886)
      {
        goto LABEL_76;
      }

      v19 = 2016686640;
      goto LABEL_98;
    }

    if (v11 == 2016686642 || v11 == 2016687156)
    {
      goto LABEL_99;
    }

    v20 = 12848;
    goto LABEL_84;
  }

  if (v11 <= 2033463351)
  {
    if (v11 == 2019963442)
    {
      goto LABEL_99;
    }

    v20 = 13364;
LABEL_84:
    v19 = v20 | 0x78660000;
    goto LABEL_98;
  }

  if (v11 != 2033463352 && v11 != 2037741158)
  {
    v23 = 2037741171;
    goto LABEL_90;
  }

LABEL_100:
  v26 = *(this + 53);

  return get_ycc_to_rgb_matrix(v26, v12, v17, a2, a3, a4, a5);
}

uint64_t CI::PixelBufferImage::add_args_to_hash(uint64_t a1, uint64_t a2)
{
  __src = *(a1 + 200);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 212);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 216);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 220);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 224);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 204);
  XXH64_update(a2, &__src, 4uLL);
  __src = CVPixelBufferGetPixelFormatType(*(a1 + 128));
  XXH64_update(a2, &__src, 4uLL);
  __src = CVPixelBufferGetIOSurface(*(a1 + 128)) != 0;
  return XXH64_update(a2, &__src, 4uLL);
}

void CI::PixelBufferImage::render_graph_core(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  IOSurface = CVPixelBufferGetIOSurface(*(a1 + 128));
  v8 = *(a1 + 200);
  if (!IOSurface)
  {
    v8 = CI::ProviderNode::FormatConversion(*(a1 + 200));
  }

  if (*(a1 + 220) != 1 && (*(a1 + 216) | 2) != 6)
  {
    if ((*(*a2 + 2))(a2) == 82 || (v20 = CI::Image::lookup_union_roi(a1, a4), v22 = v21, v24 = v23, v26 = v25, v30.origin.x = (*(*a1 + 88))(a1), v31.origin.x = v20, v31.origin.y = v22, v31.size.width = v24, v31.size.height = v26, !CGRectContainsRect(v30, v31)))
    {
      if ((*(*a2 + 71))(a2, 0))
      {
        CI::format_has_alpha(v8);
      }
    }
  }

  v10 = CI::Context::swizzler_for_input(a2, v8);
  if (v10)
  {
    v11 = v9;
    if ((*(a1 + 224) & 1) == 0)
    {
      (*(*a2 + 72))(a2, 1, v10);
    }

    v13 = v10;
    if (v11)
    {
      v13 = CI::input_format_for_conversion(v11);
    }

    if ((*(*a2 + 2))(a2) == 85 && IOSurface && (v14 = a2[234]) != 0 && ((CI::format_is_ycc_biplanar(*(a1 + 200)), v15 = CIMetalFormatForFormat(*(a1 + 200), 0), v15) || CVPixelBufferGetPlaneCount(*(a1 + 128)) <= 1 && (v15 = CIMetalFormatForFormat(v13, 0), v15)) && (v16 = v15, CI::MetalContext::formatIsReadable(a2, v15)) && (width = CVPixelBufferGetWidthOfPlane(*(a1 + 128), 0), HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(a1 + 128), 0), v18 = *(a1 + 128), image[0] = 0, CVMetalTextureCacheCreateTextureFromImage(0, v14, v18, 0, v16, width, HeightOfPlane, 0, image), (v19 = image[0]) != 0))
    {
      if (CVMetalTextureGetTexture(image[0]))
      {
        operator new();
      }

      CFRelease(v19);
    }

    else if (!IOSurface)
    {
      operator new();
    }

    operator new();
  }

  v12 = ci_logger_render();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    CI::PixelBufferImage::render_graph_core(v8, v12);
  }

  operator new();
}

double CI::Image::lookup_union_roi(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  v5 = MEMORY[0x1E695F050];
  if (v4)
  {
    v6 = *(a1 + 96);
    v7 = v2;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v2 && v6 >= *(v7 + 32))
    {
      v5 = v7 + 40;
    }
  }

  return *v5;
}

void *CI::PixelBufferImage::node_for_graphviz(uint64_t a1, void *a2)
{
  v3 = CI::Image::node_for_graphviz(a1, a2);
  if (CI_PRINT_TREE_dump_inputs())
  {
    IOSurface = CVPixelBufferGetIOSurface(*(a1 + 128));
    if (IOSurface)
    {
      CGImage = SurfaceCreateCGImage(IOSurface, 0, 1);
      if (CGImage)
      {
        CIGVNodeAddImage(v3, CGImage);
      }
    }

    else
    {
      CGImage = 0;
    }

    CGImageRelease(CGImage);
  }

  return v3;
}

void CI::PixelBufferImage::restore_resources(CVPixelBufferRef *this, CI::Node *a2)
{
  if ((*(*a2 + 16))(a2) == 54)
  {
    IOSurface = CVPixelBufferGetIOSurface(this[16]);
    if (*(a2 + 7) != IOSurface)
    {
      v5 = *(this + 29);
      v6 = this[17];

      CI::SurfaceNode::set_surface(a2, v5, v6, IOSurface);
    }
  }

  else if ((*(*a2 + 16))(a2) == 52)
  {
    v7 = *(this + 29);
    v8 = this[17];
    v9 = this[18];
    v10 = this[19];

    CI::ProviderNode::set_provider(a2, v7, v8, v9, v10);
  }

  else
  {
    v11 = *(*a2 + 16);

    v11(a2);
  }
}

_DWORD *CI::PixelBufferImage::extent(_DWORD *this)
{
  if (!this[55])
  {
    return (*(*this + 96))(this);
  }

  return this;
}

double CI::PixelBufferImage::extent_unclamped(CVPixelBufferRef *this)
{
  CVPixelBufferGetWidth(this[16]);
  CVPixelBufferGetHeight(this[16]);
  return 0.0;
}

size_t CI::PixelBufferImage::max_dimension(CVPixelBufferRef *this)
{
  Width = CVPixelBufferGetWidth(this[16]);
  Height = CVPixelBufferGetHeight(this[16]);
  v4 = this[16];
  if (Width <= Height)
  {
    return CVPixelBufferGetHeight(v4);
  }

  else
  {
    return CVPixelBufferGetWidth(v4);
  }
}

void CI::PixelBufferImage::set_avdepthdata(CI::PixelBufferImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 22);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 22) = cf;
}

void CI::PixelBufferImage::set_avmatte(CI::PixelBufferImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 23);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 23) = cf;
}

void CI::PixelBufferImage::set_ssmatte(CI::PixelBufferImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 24) = cf;
}

void CI::SharedCVPixelBuffer::SharedCVPixelBuffer(CI::SharedCVPixelBuffer *this, __CVBuffer *a2)
{
  *this = 0;
  *(this + 1) = 0;
  operator new();
}

void std::__shared_ptr_pointer<void *,CI::SharedCVPixelBuffer::SharedCVPixelBuffer(__CVBuffer *)::{lambda(void *)#1},std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF5590);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *CI::InstanceCounted<(CI::Type)21>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033890;
  atomic_fetch_add(&dword_1ED7C47BC[19], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)21>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033890;
  atomic_fetch_add(&dword_1ED7C47BC[19], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

double iosurface_limits@<D0>(uint64_t a1@<X8>)
{
  if (iosurface_limits_once != -1)
  {
    iosurface_limits_cold_1();
  }

  result = *&iosurface_limits_limits;
  *a1 = iosurface_limits_limits;
  *(a1 + 16) = qword_1ED7C43D8;
  return result;
}

uint64_t __iosurface_limits_block_invoke()
{
  *&iosurface_limits_limits = MEMORY[0x19EAF5180](*MEMORY[0x1E696D130]);
  *(&iosurface_limits_limits + 1) = MEMORY[0x19EAF5180](*MEMORY[0x1E696CF58]);
  result = MEMORY[0x19EAF5180](*MEMORY[0x1E696CE58]);
  qword_1ED7C43D8 = result;
  return result;
}

uint64_t SurfaceApplyPlaneBlock(__IOSurface *a1, uint64_t a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (IOSurfaceGetCompressionTypeOfPlane())
    {
      x_log("Error: a compressed surface cannot be accessed via its base address.\n");
      return 3758097084;
    }

    PlaneCount = IOSurfaceGetPlaneCount(a1);
    if (PlaneCount <= 1)
    {
      result = IOSurfaceLock(a1, 0, 0);
      if (result)
      {
        return result;
      }

      BaseAddress = IOSurfaceGetBaseAddress(a1);
      BytesPerRow = IOSurfaceGetBytesPerRow(a1);
      Width = IOSurfaceGetWidth(a1);
      Height = IOSurfaceGetHeight(a1);
      if (BaseAddress && BytesPerRow && Width)
      {
        if (Height)
        {
          (*(a2 + 16))(a2, BaseAddress, 0, Width, Height, BytesPerRow);
        }
      }

      IOSurfaceUnlock(a1, 0, 0);
      return 0;
    }

    v10 = PlaneCount;
    if ((PlaneCount & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      return 0;
    }

    for (i = 0; i != v10; ++i)
    {
      result = IOSurfaceLockPlane();
      if (result)
      {
        break;
      }

      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, i);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, i);
      WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, i);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, i);
      if (BaseAddressOfPlane && BytesPerRowOfPlane && WidthOfPlane && HeightOfPlane)
      {
        (*(a2 + 16))(a2, BaseAddressOfPlane, i, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
      }

      IOSurfaceUnlockPlane();
      result = 0;
    }
  }

  return result;
}

uint64_t SurfaceApplyPlaneReadOnlyBlock(__IOSurface *a1, uint64_t a2)
{
  PlaneCount = IOSurfaceGetPlaneCount(a1);
  if (IOSurfaceGetCompressionTypeOfPlane())
  {
    x_log("Error: a compressed surface cannot be accessed via its base address.\n");
    return 3758097084;
  }

  if (PlaneCount <= 1)
  {
    result = IOSurfaceLock(a1, 1u, 0);
    if (result)
    {
      return result;
    }

    BaseAddress = IOSurfaceGetBaseAddress(a1);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    if (BaseAddress && BytesPerRow && Width)
    {
      if (Height)
      {
        (*(a2 + 16))(a2, BaseAddress, 0, Width, Height, BytesPerRow);
      }
    }

    IOSurfaceUnlock(a1, 1u, 0);
    return 0;
  }

  if ((PlaneCount & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    result = IOSurfaceLockPlane();
    if (result)
    {
      break;
    }

    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, v10);
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, v10);
    WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, v10);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, v10);
    if (BaseAddressOfPlane && BytesPerRowOfPlane && WidthOfPlane && HeightOfPlane)
    {
      (*(a2 + 16))(a2, BaseAddressOfPlane, v10, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
    }

    IOSurfaceUnlockPlane();
    if (PlaneCount == ++v10)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SurfaceGetMemorySize(__IOSurface *a1)
{
  PlaneCount = IOSurfaceGetPlaneCount(a1);
  if (PlaneCount >= 2)
  {
    v3 = PlaneCount;
    v4 = 0;
    do
    {
      v4 += IOSurfaceGetSizeOfPlane();
      --v3;
    }

    while (v3);
    return v4;
  }

  else
  {

    return IOSurfaceGetSizeOfPlane();
  }
}

uint64_t CopyYCC444_to_Y_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v9 = (a5 + a6 + (i + a7) * a8);
        v10 = (result + i * a4);
        v11 = a2;
        do
        {
          v12 = *v10;
          v10 += 4;
          *v9++ = v12;
          --v11;
        }

        while (v11);
      }
    }
  }

  return result;
}

unsigned __int8 *CopyYCC444_to_CbCr_8(unsigned __int8 *result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = a3 >> 1;
    v10 = a3 - 1;
    v11 = result + 5;
    v12 = 2 * a4;
    v13 = result + 6;
    do
    {
      if (a2 >= 2)
      {
        v14 = (a5 + 2 * a6 + (v8 + a7) * a8);
        if (v10 <= 2 * v8)
        {
          v15 = 0;
        }

        else
        {
          v15 = a4;
        }

        v16 = &v13[v15];
        result = v11;
        v17 = a2 >> 1;
        do
        {
          *v14 = (*(result - 4) + *result + *(v16 - 5) + *(v16 - 1) + 2) >> 2;
          v18 = *(v16 - 4);
          v19 = *v16;
          v16 += 8;
          v14[1] = (*(result - 3) + result[1] + v18 + v19 + 2) >> 2;
          v14 += 2;
          result += 8;
          --v17;
        }

        while (v17);
      }

      ++v8;
      v11 += v12;
      v13 += v12;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr422_8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = (result + 5);
    v10 = a8 * a7 + 2 * a6 + a5 + 1;
    do
    {
      v11 = a2 >> 1;
      v12 = v10;
      v13 = v9;
      if (a2 >= 2)
      {
        do
        {
          *(v12 - 1) = (*(v13 - 4) + *v13 + 1) >> 1;
          *v12 = (*(v13 - 3) + v13[1] + 1) >> 1;
          v12 += 2;
          v13 += 8;
          --v11;
        }

        while (v11);
      }

      ++v8;
      v9 += a4;
      v10 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr444_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7 + 2 * a6 + a5 + 1;
    v10 = (result + 2);
    do
    {
      v11 = v10;
      v12 = v9;
      for (i = a2; i; --i)
      {
        *(v12 - 1) = *(v11 - 1);
        v14 = *v11;
        v11 += 4;
        *v12 = v14;
        v12 += 2;
      }

      ++v8;
      v9 += a8;
      v10 += a4;
    }

    while (v8 != a3);
  }

  return result;
}

__int16 *CopyYCC444_to_Y_16(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v9 = (a5 + 2 * a6 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFELL));
        v10 = a2;
        v11 = result;
        do
        {
          v12 = *v11;
          v11 += 4;
          *v9++ = v12;
          --v10;
        }

        while (v10);
      }

      result = (result + a4);
    }
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr_16(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = a3 >> 1;
    v10 = result + a4;
    v11 = a3 - 1;
    v12 = 2 * a4;
    v13 = (result + 10);
    do
    {
      if (a2 >= 2)
      {
        v14 = (a5 + 4 * a6 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFELL));
        if (v11 <= 2 * v8)
        {
          v15 = result;
        }

        else
        {
          v15 = v10;
        }

        v16 = (v15 + 12);
        v17 = v13;
        v18 = a2 >> 1;
        do
        {
          *v14 = (*(v17 - 4) + *v17 + *(v16 - 5) + *(v16 - 1) + 2) >> 2;
          v19 = *(v16 - 4);
          v20 = *v16;
          v16 += 8;
          v14[1] = (*(v17 - 3) + v17[1] + v19 + v20 + 2) >> 2;
          v14 += 2;
          v17 += 8;
          --v18;
        }

        while (v18);
      }

      ++v8;
      result += v12;
      v10 += v12;
      v13 = (v13 + v12);
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr422_16(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7;
    v10 = (result + 10);
    do
    {
      v11 = v10;
      v12 = 4 * a6;
      v13 = a2 >> 1;
      if (a2 >= 2)
      {
        do
        {
          v14 = (v9 + v12);
          *v14 = (*(v11 - 4) + *v11 + 1) >> 1;
          result = v11[1];
          v14[1] = (*(v11 - 3) + result + 1) >> 1;
          v12 += 4;
          v11 += 8;
          --v13;
        }

        while (v13);
      }

      ++v8;
      v9 += a8;
      v10 = (v10 + a4);
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr444_16(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7 + 4 * a6 + a5 + 2;
    v10 = (result + 4);
    do
    {
      v11 = v10;
      v12 = v9;
      for (i = a2; i; --i)
      {
        *(v12 - 1) = *(v11 - 1);
        v14 = *v11;
        v11 += 4;
        *v12 = v14;
        v12 += 2;
      }

      ++v8;
      v9 += a8;
      v10 = (v10 + a4);
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_Y_10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7;
    do
    {
      if (a2)
      {
        for (i = 0; i != a2; ++i)
        {
          *(a5 + 2 * a6 + (v9 & 0xFFFFFFFFFFFFFFFELL) + 2 * i) = *(result + 4 * i) << 6;
        }
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_CbCr_10(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = a3 >> 1;
    v10 = result + a4;
    v11 = a3 - 1;
    v12 = 2 * a4;
    v13 = a8 * a7;
    v14 = a5 + 4 * a6;
    do
    {
      if (a2 >= 2)
      {
        v15 = 0;
        if (v11 <= 2 * v8)
        {
          v16 = result;
        }

        else
        {
          v16 = v10;
        }

        v17 = a2 >> 1;
        do
        {
          v18 = (result + 4 * v15);
          v19 = (v16 + 4 * v15);
          v20 = (v14 + (v13 & 0xFFFFFFFFFFFFFFFELL) + 2 * v15);
          v21 = *v18;
          LODWORD(v18) = v18[1];
          v22 = *v19;
          LODWORD(v19) = v19[1];
          *v20 = (((v18 >> 4) & 0xFFC0) + ((v21 >> 4) & 0xFFC0) + ((v22 >> 4) & 0xFFC0) + ((v19 >> 4) & 0xFFC0)) >> 2;
          v20[1] = (((v18 >> 14) & 0xFFC0) + ((v21 >> 14) & 0xFFC0) + ((v22 >> 14) & 0xFFC0) + ((v19 >> 14) & 0xFFC0)) >> 2;
          v15 += 2;
          --v17;
        }

        while (v17);
      }

      ++v8;
      result += v12;
      v10 += v12;
      v13 += a8;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_CbCr422_10(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7 + 4 * a6;
    do
    {
      if (a2 >= 2)
      {
        v10 = 0;
        v11 = a2 >> 1;
        do
        {
          v12 = (v9 + 2 * v10);
          v13 = (result + 4 * v10);
          v14 = *v13;
          LODWORD(v13) = v13[1];
          *v12 = (((v13 >> 4) & 0xFFC0) + ((v14 >> 4) & 0xFFC0)) >> 1;
          v12[1] = (((v13 >> 14) & 0xFFC0) + ((v14 >> 14) & 0xFFC0)) >> 1;
          v10 += 2;
          --v11;
        }

        while (v11);
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_CbCr444_10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7 + 4 * a6 + a5 + 2;
    do
    {
      if (a2)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          v12 = *(result + 4 * v10);
          *(v11 - 1) = (v12 >> 4) & 0xFFC0;
          *v11 = (v12 >> 14) & 0xFFC0;
          v11 += 2;
          ++v10;
        }

        while (a2 != v10);
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_Y_10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7;
    do
    {
      if (a2)
      {
        for (i = 0; i != a2; ++i)
        {
          *(a5 + 2 * a6 + (v9 & 0xFFFFFFFFFFFFFFFELL) + 2 * i) = (*(result + 4 * i) >> 14) & 0xFFC0;
        }
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_CbCr_10(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = a3 >> 1;
    v10 = result + a4;
    v11 = a3 - 1;
    v12 = 2 * a4;
    v13 = a8 * a7;
    v14 = a5 + 4 * a6;
    do
    {
      if (a2 >= 2)
      {
        v15 = 0;
        if (v11 <= 2 * v8)
        {
          v16 = result;
        }

        else
        {
          v16 = v10;
        }

        v17 = a2 >> 1;
        do
        {
          v18 = (result + 4 * v15);
          v19 = (v16 + 4 * v15);
          v20 = (v14 + (v13 & 0xFFFFFFFFFFFFFFFELL) + 2 * v15);
          v21 = *v18;
          LODWORD(v18) = v18[1];
          v22 = *v19;
          LODWORD(v19) = v19[1];
          *v20 = (((v18 >> 4) & 0xFFC0) + ((v21 >> 4) & 0xFFC0) + ((v22 >> 4) & 0xFFC0) + ((v19 >> 4) & 0xFFC0)) >> 2;
          v20[1] = (((v18 & 0x3FF) << 6) + ((v21 & 0x3FF) << 6) + ((v22 & 0x3FF) << 6) + ((v19 & 0x3FF) << 6)) >> 2;
          v15 += 2;
          --v17;
        }

        while (v17);
      }

      ++v8;
      result += v12;
      v10 += v12;
      v13 += a8;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_CbCr422_10(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7 + 4 * a6;
    do
    {
      if (a2 >= 2)
      {
        v10 = 0;
        v11 = a2 >> 1;
        do
        {
          v12 = (v9 + 2 * v10);
          v13 = (result + 4 * v10);
          v14 = *v13;
          LODWORD(v13) = v13[1];
          *v12 = (((v13 >> 4) & 0xFFC0) + ((v14 >> 4) & 0xFFC0)) >> 1;
          v12[1] = (((v13 & 0x3FF) << 6) + ((v14 & 0x3FF) << 6)) >> 1;
          v10 += 2;
          --v11;
        }

        while (v11);
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_CbCr444_10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7 + 4 * a6 + a5 + 2;
    do
    {
      if (a2)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          v12 = *(result + 4 * v10);
          *(v11 - 1) = (v12 >> 4) & 0xFFC0;
          *v11 = v12 << 6;
          v11 += 2;
          ++v10;
        }

        while (a2 != v10);
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

unsigned __int16 *CopyYCC444_to_Y_10packed(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v9 = a2;
        v10 = a6;
        v11 = result;
        do
        {
          v12 = *v11;
          v11 += 4;
          v13 = llroundf((v12 * 1023.0) / 65535.0);
          if (v13 >= 1023)
          {
            v13 = 1023;
          }

          *(a5 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * (v10 / 3)) = ((v13 & ~(v13 >> 63)) << (10 * (v10 % 3))) | dword_19CF2B950[v10 % 3] & *(a5 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * (v10 / 3));
          ++v10;
          --v9;
        }

        while (v9);
      }

      result = (result + a4);
    }
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr_10packed(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = result + a4;
    v10 = 2 * a4;
    v11 = 2 * a6;
    v12 = (result + 10);
    do
    {
      if (a2 >= 2)
      {
        v13 = a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL);
        if (a3 - 1 <= 2 * v8)
        {
          v14 = result;
        }

        else
        {
          v14 = v9;
        }

        v15 = (v14 + 12);
        v16 = v12;
        v17 = a2 >> 1;
        v18 = v11;
        do
        {
          v19 = llroundf((((*(v16 - 4) + *v16 + *(v15 - 5) + *(v15 - 1) + 2) >> 2) * 1023.0) / 65535.0);
          if (v19 >= 1023)
          {
            v19 = 1023;
          }

          v20 = *(v15 - 4);
          v21 = *v15;
          v15 += 8;
          v22 = ((v19 & ~(v19 >> 63)) << (10 * (v18 % 3))) | dword_19CF2B950[v18 % 3] & *(v13 + 4 * (v18 / 3));
          v23 = *(v16 - 3) + v16[1] + v20 + v21 + 2;
          *(v13 + 4 * (v18 / 3)) = v22;
          v24 = llroundf(((v23 >> 2) * 1023.0) / 65535.0);
          if (v24 >= 1023)
          {
            v24 = 1023;
          }

          *(v13 + 4 * ((v18 + 1) / 3)) = ((v24 & ~(v24 >> 63)) << (10 * ((v18 + 1) % 3))) | dword_19CF2B950[(v18 + 1) % 3] & *(v13 + 4 * ((v18 + 1) / 3));
          v18 += 2;
          v16 += 8;
          --v17;
        }

        while (v17);
      }

      ++v8;
      result += v10;
      v9 += v10;
      v12 = (v12 + v10);
    }

    while (v8 != a3 >> 1);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr422_10packed(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7;
    v10 = (result + 10);
    do
    {
      v11 = v10;
      v12 = a2 >> 1;
      result = 2 * a6;
      if (a2 >= 2)
      {
        do
        {
          v13 = llroundf((((*(v11 - 4) + *v11 + 1) >> 1) * 1023.0) / 65535.0);
          if (v13 >= 1023)
          {
            v13 = 1023;
          }

          v14 = ((v13 & ~(v13 >> 63)) << (10 * (result % 3))) | dword_19CF2B950[result % 3] & *(v9 + 4 * (result / 3));
          v15 = llroundf((((*(v11 - 3) + v11[1] + 1) >> 1) * 1023.0) / 65535.0);
          *(v9 + 4 * (result / 3)) = v14;
          if (v15 >= 1023)
          {
            v16 = 1023;
          }

          else
          {
            v16 = v15;
          }

          *(v9 + 4 * ((result + 1) / 3)) = ((v16 & ~(v16 >> 63)) << (10 * ((result + 1) % 3))) | dword_19CF2B950[(result + 1) % 3] & *(v9 + 4 * ((result + 1) / 3));
          result += 2;
          v11 += 8;
          --v12;
        }

        while (v12);
      }

      ++v8;
      v9 += a8;
      v10 = (v10 + a4);
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr444_10packed(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float a11)
{
  if (a3)
  {
    v11 = 0;
    v12 = a5 + a8 * a7;
    v13 = 2 * a6;
    v14 = (result + 4);
    do
    {
      v15 = a2;
      v16 = v14;
      for (i = v13; v15; --v15)
      {
        LOWORD(a11) = *(v16 - 1);
        v18 = (LODWORD(a11) * 1023.0) / 65535.0;
        v19 = llroundf(v18);
        if (v19 >= 1023)
        {
          v19 = 1023;
        }

        LOWORD(v18) = *v16;
        a11 = (LODWORD(v18) * 1023.0) / 65535.0;
        v20 = llroundf(a11);
        *(v12 + 4 * (i / 3)) = ((v19 & ~(v19 >> 63)) << (10 * (i % 3))) | dword_19CF2B950[i % 3] & *(v12 + 4 * (i / 3));
        if (v20 >= 1023)
        {
          v21 = 1023;
        }

        else
        {
          v21 = v20;
        }

        result = ((v21 & ~(v21 >> 63)) << (10 * ((i + 1) % 3))) | dword_19CF2B950[(i + 1) % 3] & *(v12 + 4 * ((i + 1) / 3));
        *(v12 + 4 * ((i + 1) / 3)) = result;
        i += 2;
        v16 += 4;
      }

      ++v11;
      v12 += a8;
      v14 = (v14 + a4);
    }

    while (v11 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_Y_10p(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v9 = 0;
        v10 = a6;
        do
        {
          v11 = v10 / 3;
          *(a5 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v11) = dword_19CF2B950[v10 - 3 * v11] & *(a5 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v11) | ((*(result + 4 * v9++) & 0x3FF) << (10 * (v10 - 3 * v11)));
          ++v10;
        }

        while (a2 != v9);
      }

      result += a4;
    }
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_CbCr_10p(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = result + a4;
    v10 = 2 * a4;
    v11 = 2 * a6;
    do
    {
      if (a2 >= 2)
      {
        v12 = 0;
        if (a3 - 1 <= 2 * v8)
        {
          v13 = result;
        }

        else
        {
          v13 = v9;
        }

        v14 = a2 >> 1;
        v15 = v11;
        do
        {
          v17 = *(result + v12);
          v16 = *(result + v12 + 4);
          v19 = *(v13 + v12);
          v18 = *(v13 + v12 + 4);
          v20 = v15 / 3;
          *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v20) = ((((v17 >> 10) & 0x3FF) + ((v16 >> 10) & 0x3FF) + ((v19 >> 10) & 0x3FF) + ((v18 >> 10) & 0x3FF) + 2) >> 2 << (10 * (v15 - 3 * v20))) | dword_19CF2B950[v15 - 3 * v20] & *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v20);
          *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v15 + 1) / 3)) = dword_19CF2B950[(v15 + 1) % 3] & *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v15 + 1) / 3)) | ((((v17 >> 20) & 0x3FF) + ((v16 >> 20) & 0x3FF) + ((v19 >> 20) & 0x3FF) + ((v18 >> 20) & 0x3FF) + 2) >> 2 << (10 * ((v15 + 1) % 3)));
          v15 += 2;
          v12 += 8;
          --v14;
        }

        while (v14);
      }

      ++v8;
      result += v10;
      v9 += v10;
    }

    while (v8 != a3 >> 1);
  }

  return result;
}

unsigned int *CopyYCC_A2BGR10_to_CbCr422_10p(unsigned int *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7;
    do
    {
      v10 = a2 >> 1;
      v11 = 2 * a6;
      v12 = result;
      if (a2 >= 2)
      {
        do
        {
          v14 = *v12;
          v13 = v12[1];
          v12 += 2;
          *(v9 + 4 * (v11 / 3)) = ((((v14 >> 10) & 0x3FF) + ((v13 >> 10) & 0x3FF) + 1) >> 1 << (10 * (v11 % 3))) | dword_19CF2B950[v11 % 3] & *(v9 + 4 * (v11 / 3));
          *(v9 + 4 * ((v11 + 1) / 3)) = dword_19CF2B950[(v11 + 1) % 3] & *(v9 + 4 * ((v11 + 1) / 3)) | ((((v14 >> 20) & 0x3FF) + ((v13 >> 20) & 0x3FF) + 1) >> 1 << (10 * ((v11 + 1) % 3)));
          v11 += 2;
          --v10;
        }

        while (v10);
      }

      ++v8;
      result = (result + a4);
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2BGR10_to_CbCr444_10p(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7;
    do
    {
      if (a2)
      {
        v10 = 0;
        v11 = 2 * a6;
        do
        {
          v12 = *(result + 4 * v10);
          *(v9 + 4 * (v11 / 3)) = dword_19CF2B950[v11 % 3] & *(v9 + 4 * (v11 / 3)) | (((v12 >> 10) & 0x3FF) << (10 * (v11 % 3)));
          *(v9 + 4 * ((v11 + 1) / 3)) = dword_19CF2B950[(v11 + 1) % 3] & *(v9 + 4 * ((v11 + 1) / 3)) | (((v12 >> 20) & 0x3FF) << (10 * ((v11 + 1) % 3)));
          ++v10;
          v11 += 2;
        }

        while (a2 != v10);
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_Y_10p(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v9 = 0;
        v10 = a6;
        do
        {
          v11 = v10 / 3;
          *(a5 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v11) = dword_19CF2B950[v10 - 3 * v11] & *(a5 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v11) | (((*(result + 4 * v9++) >> 20) & 0x3FF) << (10 * (v10 - 3 * v11)));
          ++v10;
        }

        while (a2 != v9);
      }

      result += a4;
    }
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_CbCr_10p(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = result + a4;
    v10 = 2 * a4;
    v11 = 2 * a6;
    do
    {
      if (a2 >= 2)
      {
        v12 = 0;
        if (a3 - 1 <= 2 * v8)
        {
          v13 = result;
        }

        else
        {
          v13 = v9;
        }

        v14 = a2 >> 1;
        v15 = v11;
        do
        {
          v17 = *(result + v12);
          v16 = *(result + v12 + 4);
          v19 = *(v13 + v12);
          v18 = *(v13 + v12 + 4);
          v20 = v15 / 3;
          *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v20) = ((((v17 >> 10) & 0x3FF) + ((v16 >> 10) & 0x3FF) + ((v19 >> 10) & 0x3FF) + ((v18 >> 10) & 0x3FF) + 2) >> 2 << (10 * (v15 - 3 * v20))) | dword_19CF2B950[v15 - 3 * v20] & *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * v20);
          *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v15 + 1) / 3)) = dword_19CF2B950[(v15 + 1) % 3] & *(a5 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v15 + 1) / 3)) | (((v17 & 0x3FF) + (v16 & 0x3FF) + (v19 & 0x3FF) + (v18 & 0x3FF) + 2) >> 2 << (10 * ((v15 + 1) % 3)));
          v15 += 2;
          v12 += 8;
          --v14;
        }

        while (v14);
      }

      ++v8;
      result += v10;
      v9 += v10;
    }

    while (v8 != a3 >> 1);
  }

  return result;
}

unsigned int *CopyYCC_A2RGB10_to_CbCr422_10p(unsigned int *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7;
    do
    {
      v10 = a2 >> 1;
      v11 = 2 * a6;
      v12 = result;
      if (a2 >= 2)
      {
        do
        {
          v14 = *v12;
          v13 = v12[1];
          v12 += 2;
          *(v9 + 4 * (v11 / 3)) = ((((v14 >> 10) & 0x3FF) + ((v13 >> 10) & 0x3FF) + 1) >> 1 << (10 * (v11 % 3))) | dword_19CF2B950[v11 % 3] & *(v9 + 4 * (v11 / 3));
          *(v9 + 4 * ((v11 + 1) / 3)) = dword_19CF2B950[(v11 + 1) % 3] & *(v9 + 4 * ((v11 + 1) / 3)) | (((v14 & 0x3FF) + (v13 & 0x3FF) + 1) >> 1 << (10 * ((v11 + 1) % 3)));
          v11 += 2;
          --v10;
        }

        while (v10);
      }

      ++v8;
      result = (result + a4);
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC_A2RGB10_to_CbCr444_10p(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a5 + a8 * a7;
    do
    {
      if (a2)
      {
        v10 = 0;
        v11 = 2 * a6;
        do
        {
          v12 = *(result + 4 * v10);
          *(v9 + 4 * (v11 / 3)) = dword_19CF2B950[v11 % 3] & *(v9 + 4 * (v11 / 3)) | (((v12 >> 10) & 0x3FF) << (10 * (v11 % 3)));
          *(v9 + 4 * ((v11 + 1) / 3)) = dword_19CF2B950[(v11 + 1) % 3] & *(v9 + 4 * ((v11 + 1) / 3)) | ((v12 & 0x3FF) << (10 * ((v11 + 1) % 3)));
          ++v10;
          v11 += 2;
        }

        while (a2 != v10);
      }

      ++v8;
      result += a4;
      v9 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC444_to_Y_half(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a2)
      {
        v9 = (a5 + 2 * a6 + (((i + a7) * a8) & 0xFFFFFFFFFFFFFFFELL));
        v10 = (result + ((i * a4) & 0xFFFFFFFFFFFFFFFELL));
        v11 = a2;
        do
        {
          v12 = *v10;
          v10 += 4;
          *v9++ = v12;
          --v11;
        }

        while (v11);
      }
    }
  }

  return result;
}

short float *CopyYCC444_to_CbCr_half(short float *result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 2)
  {
    v8 = 0;
    v9 = a3 >> 1;
    v10 = a3 - 1;
    v11 = result + 5;
    LOWORD(v12) = COERCE_UNSIGNED_INT(0.25);
    do
    {
      if (a2 >= 2)
      {
        v13 = (a5 + 4 * a6 + (((v8 + a7) * a8) & 0xFFFFFFFFFFFFFFFELL));
        if (v10 <= 2 * v8)
        {
          v14 = 0;
        }

        else
        {
          v14 = a4 >> 1;
        }

        v15 = v14;
        result = v11;
        v16 = a2 >> 1;
        do
        {
          *v13 = (((*(result - 4) + *result) + result[v15 - 4]) + result[v15]) * v12;
          v13[1] = (((*(result - 3) + result[1]) + result[v15 - 3]) + result[v15 + 1]) * v12;
          v13 += 2;
          result += 8;
          --v16;
        }

        while (v16);
      }

      ++v8;
      v11 += a4;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr422_half(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = (result + 10);
    v10 = a8 * a7 + 4 * a6 + a5 + 2;
    LOWORD(v11) = COERCE_UNSIGNED_INT(0.5);
    do
    {
      v12 = a2 >> 1;
      v13 = v10;
      v14 = v9;
      if (a2 >= 2)
      {
        do
        {
          *(v13 - 1) = (*(v14 - 4) + *v14) * v11;
          *v13 = (*(v14 - 3) + v14[1]) * v11;
          v14 += 8;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      ++v8;
      v9 = (v9 + a4);
      v10 += a8;
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t CopyYCC444_to_CbCr444_half(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = a8 * a7 + 4 * a6 + a5 + 2;
    v10 = (result + 4);
    do
    {
      v11 = v10;
      v12 = v9;
      for (i = a2; i; --i)
      {
        *(v12 - 1) = *(v11 - 1);
        *v12 = *v11;
        v12 += 2;
        v11 += 4;
      }

      ++v8;
      v9 += a8;
      v10 = (v10 + a4);
    }

    while (v8 != a3);
  }

  return result;
}

uint64_t ClearSurface(__IOSurface *a1)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v3 = PixelFormat;
  if (PixelFormat <= 875704949)
  {
    v5 = 0;
    if (PixelFormat != 875704422)
    {
      if (PixelFormat == 875704438)
      {
        goto LABEL_12;
      }

      if (PixelFormat != 875704934)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = __ClearSurface_block_invoke;
    v28[3] = &__block_descriptor_tmp_3_1;
    v29 = v5;
    v6 = v28;
    return SurfaceApplyPlaneBlock(a1, v6);
  }

  if (PixelFormat <= 875836533)
  {
    if (PixelFormat != 875704950)
    {
      v4 = 13414;
      goto LABEL_11;
    }

LABEL_12:
    v5 = 16 * (PixelFormat != 875836518);
    goto LABEL_13;
  }

  if (PixelFormat != 1983000886)
  {
    v4 = 13430;
LABEL_11:
    if (PixelFormat == (v4 | 0x34340000))
    {
      goto LABEL_12;
    }

LABEL_15:
    v8 = equivalent_uncompressed_format(PixelFormat);
    if (v8 <= 1983000885)
    {
      if (v8 != 846624102)
      {
        v9 = 846624121;
LABEL_25:
        if (v8 == v9)
        {
          goto LABEL_26;
        }

        v13 = 0;
        if (v3 > 1952854575)
        {
          if (v3 > 2016686639)
          {
            if (v3 <= 2019963439)
            {
              if (v3 != 2016686640 && v3 != 2016686642 && v3 != 2016687156)
              {
                goto LABEL_80;
              }
            }

            else
            {
              if (v3 <= 2019963955)
              {
                if (v3 != 2019963440 && v3 != 2019963442)
                {
                  goto LABEL_80;
                }

LABEL_79:
                v23[0] = MEMORY[0x1E69E9820];
                v23[1] = 0x40000000;
                v23[2] = __ClearSurface_block_invoke_5;
                v23[3] = &__block_descriptor_tmp_11_1;
                v24 = v13;
                v6 = v23;
                return SurfaceApplyPlaneBlock(a1, v6);
              }

              if (v3 != 2019963956)
              {
                if (v3 == 2033463352)
                {
                  v10 = &__block_literal_global_10_0;
                  goto LABEL_20;
                }

LABEL_80:
                v10 = &__block_literal_global_17_2;
                goto LABEL_20;
              }
            }

            v13 = (v3 != 2019963956) << 6;
            goto LABEL_79;
          }

          if (v3 > 1953903151)
          {
            if (v3 == 1953903152 || v3 == 1953903154)
            {
LABEL_69:
              v13 = (v3 != 1952855092) << 8;
LABEL_70:
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 0x40000000;
              v21[2] = __ClearSurface_block_invoke_6;
              v21[3] = &__block_descriptor_tmp_12;
              v22 = v13;
              v6 = v21;
              return SurfaceApplyPlaneBlock(a1, v6);
            }

            v16 = 1953903668;
          }

          else
          {
            if (v3 == 1952854576 || v3 == 1952854578)
            {
              goto LABEL_70;
            }

            v16 = 1952855092;
          }

          if (v3 != v16)
          {
            goto LABEL_80;
          }

          goto LABEL_69;
        }

        if (v3 <= 1936077359)
        {
          if (v3 > 1885745711)
          {
            if (v3 == 1885745712 || v3 == 1885745714)
            {
              goto LABEL_58;
            }

            v14 = 1885746228;
          }

          else
          {
            if (v3 == 1882468912 || v3 == 1882468914)
            {
LABEL_57:
              v13 = (v3 != 1885746228) << 6;
LABEL_58:
              v17[0] = MEMORY[0x1E69E9820];
              v17[1] = 0x40000000;
              v17[2] = __ClearSurface_block_invoke_8;
              v17[3] = &__block_descriptor_tmp_14;
              v18 = v13;
              v6 = v17;
              return SurfaceApplyPlaneBlock(a1, v6);
            }

            v14 = 1882469428;
          }

          if (v3 != v14)
          {
            goto LABEL_80;
          }

          goto LABEL_57;
        }

        if (v3 > 1937125935)
        {
          if (v3 == 1937125936 || v3 == 1937125938)
          {
LABEL_63:
            v13 = (v3 != 1936077876) << 12;
LABEL_64:
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 0x40000000;
            v19[2] = __ClearSurface_block_invoke_7;
            v19[3] = &__block_descriptor_tmp_13;
            v20 = v13;
            v6 = v19;
            return SurfaceApplyPlaneBlock(a1, v6);
          }

          v15 = 1937126452;
        }

        else
        {
          if (v3 == 1936077360 || v3 == 1936077362)
          {
            goto LABEL_64;
          }

          v15 = 1936077876;
        }

        if (v3 != v15)
        {
          goto LABEL_80;
        }

        goto LABEL_63;
      }
    }

    else if (v8 != 1983000886 && v8 != 2037741171)
    {
      v9 = 2037741158;
      goto LABEL_25;
    }

LABEL_26:
    v11 = v3 == 2037741171 || v3 == 846624121;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = __ClearSurface_block_invoke_3;
    v25[3] = &__block_descriptor_tmp_7_4;
    if (v11)
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    v26 = v12;
    v27 = v3;
    v6 = v25;
    return SurfaceApplyPlaneBlock(a1, v6);
  }

  v10 = &__block_literal_global_6;
LABEL_20:

  return SurfaceApplyPlaneBlock(a1, v10);
}

void *__ClearSurface_block_invoke(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v7 = 128;
  }

  else
  {
    v7 = *(a1 + 32);
  }

  return memset(__b, v7, a6 * a5);
}

void __ClearSurface_block_invoke_3(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __pattern4 = 0x80;
  v12 = *(a1 + 32);
  v13 = 0x80;
  v14 = v12;
  v10[0] = v12;
  v10[1] = 0x80;
  v10[2] = v12;
  v10[3] = 0x80;
  v6 = *(a1 + 36);
  if (v6 <= 2037741157)
  {
    if (v6 != 846624102 && v6 != 846624121)
    {
      return;
    }

    p_pattern4 = &__pattern4;
LABEL_14:
    memset_pattern4(__b, p_pattern4, a6 * a5);
    return;
  }

  if (v6 == 2037741171 || v6 == 2037741158)
  {
    p_pattern4 = v10;
    goto LABEL_14;
  }
}

void __ClearSurface_block_invoke_5(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = -2147450880;
  }

  else
  {
    v8 = ((*(a1 + 32) & 0x3FF) << 6) | (*(a1 + 32) << 22);
  }

  v10 = v6;
  v11 = v7;
  v9 = v8;
  memset_pattern4(__b, &v9, a6 * a5);
}

void __ClearSurface_block_invoke_6(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = -2147450880;
  }

  else
  {
    v8 = (16 * (*(a1 + 32) & 0xFFF)) | (*(a1 + 32) << 20);
  }

  v10 = v6;
  v11 = v7;
  v9 = v8;
  memset_pattern4(__b, &v9, a6 * a5);
}

void __ClearSurface_block_invoke_7(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = -2147450880;
  }

  else
  {
    v8 = *(a1 + 32) | (*(a1 + 32) << 16);
  }

  v10 = v6;
  v11 = v7;
  v9 = v8;
  memset_pattern4(__b, &v9, a6 * a5);
}

void __ClearSurface_block_invoke_8(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = 537395712;
  }

  else
  {
    v8 = (*(a1 + 32) << 10) | (*(a1 + 32) << 20) | *(a1 + 32);
  }

  v10 = v6;
  v11 = v7;
  v9 = v8;
  memset_pattern4(__b, &v9, a6 * a5);
}

unint64_t CreateSurfaceMemorySize(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = equivalent_uncompressed_format(a4);
  result = 0;
  if (!a1 || !a2 || !v7)
  {
    return result;
  }

  if (is_biplanar(v7))
  {
    v9 = equivalent_uncompressed_format(v7);
    if (v9 <= 1936077875)
    {
      if (v9 <= 1751528499)
      {
        v10 = a1;
        if (v9 == 875836518)
        {
          goto LABEL_24;
        }

        v11 = 875836534;
      }

      else
      {
        v10 = a1;
        if (v9 == 1751528500)
        {
          goto LABEL_24;
        }

        v10 = a1;
        if (v9 == 1882469428)
        {
          goto LABEL_24;
        }

        v11 = 1885746228;
      }
    }

    else if (v9 > 1953903667)
    {
      v10 = a1;
      if (v9 == 1953903668)
      {
        goto LABEL_24;
      }

      v10 = a1;
      if (v9 == 2016687156)
      {
        goto LABEL_24;
      }

      v11 = 2019963956;
    }

    else
    {
      v10 = a1;
      if (v9 == 1936077876)
      {
        goto LABEL_24;
      }

      v10 = a1;
      if (v9 == 1937126452)
      {
        goto LABEL_24;
      }

      v11 = 1952855092;
    }

    v10 = a1;
    if (v9 != v11)
    {
      v10 = (a1 + 1) >> 1;
    }

LABEL_24:
    if (v9 <= 1936077359)
    {
      if (v9 <= 1751527983)
      {
        if (v9 == 875704422)
        {
          goto LABEL_39;
        }

        v14 = 875704438;
      }

      else
      {
        if (v9 == 1751527984 || v9 == 1882468912)
        {
          goto LABEL_39;
        }

        v14 = 1885745712;
      }
    }

    else if (v9 > 1953903151)
    {
      if (v9 == 1953903152 || v9 == 2019963440)
      {
        goto LABEL_39;
      }

      v14 = 2016686640;
    }

    else
    {
      if (v9 == 1936077360 || v9 == 1937125936)
      {
        goto LABEL_39;
      }

      v14 = 1952854576;
    }

    v15 = a2;
    if (v9 != v14)
    {
LABEL_40:
      v16 = format_for_plane(v7, 0);
      v17 = format_for_plane(v7, 1);
      v18 = min_bytes_per_row(v16, a1);
      v19 = min_bytes_per_row(v17, v10);
      v20 = 32;
      if (a3)
      {
        v20 = a3;
      }

      return (v20 - 1 + v18) / v20 * v20 * a2 + (v20 - 1 + v19) / v20 * v20 * v15;
    }

LABEL_39:
    v15 = (a2 + 1) >> 1;
    goto LABEL_40;
  }

  v12 = min_bytes_per_row(v7, a1);
  v13 = 32;
  if (a3)
  {
    v13 = a3;
  }

  return (v13 + v12 - 1) / v13 * v13 * a2;
}

uint64_t is_biplanar(uint64_t a1)
{
  v1 = equivalent_uncompressed_format(a1);
  v2 = equivalent_uncompressed_format(v1);
  result = 1;
  if (v2 > 1936077359)
  {
    if (v2 <= 1953903151)
    {
      if (v2 <= 1937125937)
      {
        if (v2 <= 1936077875)
        {
          if (v2 == 1936077360)
          {
            return result;
          }

          v4 = 1936077362;
          goto LABEL_56;
        }

        if (v2 == 1936077876)
        {
          return result;
        }

        v6 = 12848;
      }

      else
      {
        if (v2 > 1952854575)
        {
          if (v2 == 1952854576 || v2 == 1952854578)
          {
            return result;
          }

          v4 = 1952855092;
          goto LABEL_56;
        }

        if (v2 == 1937125938)
        {
          return result;
        }

        v6 = 13364;
      }

      v4 = v6 | 0x73760000;
      goto LABEL_56;
    }

    if (v2 <= 2016686641)
    {
      if (v2 <= 1953903667)
      {
        if (v2 == 1953903152)
        {
          return result;
        }

        v4 = 1953903154;
        goto LABEL_56;
      }

      if (v2 == 1953903668)
      {
        return result;
      }

      v8 = 12848;
    }

    else
    {
      if (v2 > 2019963439)
      {
        if (v2 == 2019963440 || v2 == 2019963442)
        {
          return result;
        }

        v4 = 2019963956;
LABEL_56:
        if (v2 != v4)
        {
          return 0;
        }

        return result;
      }

      if (v2 == 2016686642)
      {
        return result;
      }

      v8 = 13364;
    }

    v4 = v8 | 0x78340000;
    goto LABEL_56;
  }

  if (v2 > 1751527983)
  {
    if (v2 <= 1882468913)
    {
      if (v2 <= 1751528499)
      {
        if (v2 == 1751527984)
        {
          return result;
        }

        v4 = 1751527986;
        goto LABEL_56;
      }

      if (v2 == 1751528500)
      {
        return result;
      }

      v7 = 12848;
    }

    else
    {
      if (v2 > 1885745711)
      {
        if (v2 == 1885745712 || v2 == 1885745714)
        {
          return result;
        }

        v4 = 1885746228;
        goto LABEL_56;
      }

      if (v2 == 1882468914)
      {
        return result;
      }

      v7 = 13364;
    }

    v4 = v7 | 0x70340000;
    goto LABEL_56;
  }

  if (v2 <= 875836517)
  {
    if (v2 > 875704933)
    {
      if (v2 == 875704934)
      {
        return result;
      }

      v5 = 12918;
    }

    else
    {
      if (v2 == 875704422)
      {
        return result;
      }

      v5 = 12406;
    }

    v4 = v5 | 0x34320000;
    goto LABEL_56;
  }

  if (v2 <= 1647534391)
  {
    if (v2 == 875836518)
    {
      return result;
    }

    v4 = 875836534;
    goto LABEL_56;
  }

  if (v2 != 1647534392 && v2 != 1667838776)
  {
    v4 = 1714643256;
    goto LABEL_56;
  }

  return result;
}

uint64_t format_for_plane(uint64_t a1, int a2)
{
  result = equivalent_uncompressed_format(a1);
  if (result > 1919365991)
  {
    if (result > 1952855091)
    {
      if (result > 2016686641)
      {
        if (result <= 2019963439)
        {
          if (result != 2016686642)
          {
            v5 = 13364;
            goto LABEL_71;
          }
        }

        else if (result != 2019963440 && result != 2019963442)
        {
          v9 = 2019963956;
          goto LABEL_72;
        }

LABEL_73:
        v14 = 826487088;
        v15 = 843264304;
LABEL_74:
        if (a2)
        {
          return v15;
        }

        else
        {
          return v14;
        }
      }

      if (result > 1953903153)
      {
        if (result != 1953903154 && result != 1953903668)
        {
          v5 = 12848;
LABEL_71:
          v9 = v5 | 0x78340000;
LABEL_72:
          if (result != v9)
          {
            return result;
          }

          goto LABEL_73;
        }

LABEL_62:
        v14 = 826487090;
        v15 = 843264306;
        goto LABEL_74;
      }

      if (result == 1952855092)
      {
        goto LABEL_62;
      }

      v8 = 1953903152;
LABEL_61:
      if (result != v8)
      {
        return result;
      }

      goto LABEL_62;
    }

    if (result <= 1937125935)
    {
      if (result > 1936077361)
      {
        if (result == 1936077362)
        {
          goto LABEL_55;
        }

        v11 = 13364;
      }

      else
      {
        if (result == 1919365992)
        {
          return 826486888;
        }

        v11 = 12848;
      }

      v13 = v11 | 0x73660000;
    }

    else
    {
      if (result > 1937126451)
      {
        if (result != 1937126452)
        {
          if (result == 1952854576)
          {
            goto LABEL_62;
          }

          v8 = 1952854578;
          goto LABEL_61;
        }

LABEL_55:
        v14 = 826487094;
        v15 = 843264310;
        goto LABEL_74;
      }

      if (result == 1937125936)
      {
        goto LABEL_55;
      }

      v13 = 1937125938;
    }

    if (result != v13)
    {
      return result;
    }

    goto LABEL_55;
  }

  if (result <= 1751527983)
  {
    if (result > 875836517)
    {
      if (result > 1647534391)
      {
        switch(result)
        {
          case 0x62336138:
            v6 = a2 == 0;
            v7 = 1999843442;
            break;
          case 0x63693338:
            v6 = a2 == 0;
            v7 = 1667838768;
            break;
          case 0x66336138:
            v6 = a2 == 0;
            v7 = 1815162994;
            break;
          default:
            return result;
        }

        if (v6)
        {
          return v7;
        }

        else
        {
          return 826486840;
        }
      }

      if (result != 875836518)
      {
        v12 = 875836534;
LABEL_48:
        if (result != v12)
        {
          return result;
        }
      }

LABEL_49:
      if (a2)
      {
        return 843264056;
      }

      else
      {
        return 826486840;
      }
    }

    if (result > 875704933)
    {
      if (result == 875704934)
      {
        goto LABEL_49;
      }

      v10 = 12918;
    }

    else
    {
      if (result == 875704422)
      {
        goto LABEL_49;
      }

      v10 = 12406;
    }

    v12 = v10 | 0x34320000;
    goto LABEL_48;
  }

  if (result > 1882469427)
  {
    if (result <= 1885745713)
    {
      if (result != 1882469428)
      {
        v4 = 1885745712;
LABEL_65:
        if (result != v4)
        {
          return result;
        }
      }

LABEL_66:
      if (a2)
      {
        return 845361456;
      }

      else
      {
        return 828584240;
      }
    }

    if (result == 1885745714 || result == 1885746228)
    {
      goto LABEL_66;
    }

    if (result == 1919365990)
    {
      return 826486886;
    }
  }

  else
  {
    if (result > 1751528499)
    {
      if (result != 1751528500)
      {
        if (result != 1882468912)
        {
          v4 = 1882468914;
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      goto LABEL_58;
    }

    if (result == 1751527984 || result == 1751527986)
    {
LABEL_58:
      v14 = 826486888;
      v15 = 843264104;
      goto LABEL_74;
    }
  }

  return result;
}

uint64_t min_bytes_per_row(uint64_t a1, uint64_t a2)
{
  if ((equivalent_uncompressed_format(a1) - 1919365990) & 0xFFFFFFFD) == 0 || (is_biplanar(a1))
  {
    return 0;
  }

  v5 = 0;
  v6 = 1;
  if (a1 > 1279340599)
  {
    if (a1 > 1667844407)
    {
      if (a1 <= 1815361649)
      {
        if (a1 <= 1717856626)
        {
          if (a1 <= 1667844455)
          {
            if (a1 != 1667844408)
            {
              v7 = 18790;
LABEL_22:
              v9 = v7 | 0x63690000;
              goto LABEL_87;
            }

LABEL_95:
            v5 = v6;
            return v5 * a2;
          }

          if (a1 != 1667844456)
          {
            v9 = 1717855600;
            goto LABEL_87;
          }

LABEL_94:
          v6 = 2;
          goto LABEL_95;
        }

        if (a1 <= 1751411058)
        {
          if (a1 != 1717856627)
          {
            v11 = 1751410032;
            goto LABEL_93;
          }

LABEL_88:
          v6 = 4;
          goto LABEL_95;
        }

        if (a1 == 1751411059)
        {
          goto LABEL_94;
        }

        v9 = 1815162994;
LABEL_87:
        if (a1 == v9)
        {
          goto LABEL_88;
        }

        return v5 * a2;
      }

      if (a1 <= 1999908960)
      {
        if (a1 > 1983000885)
        {
          if (a1 == 1983000886)
          {
            goto LABEL_88;
          }

          v9 = 1999843442;
          goto LABEL_87;
        }

        if (a1 != 1815361650)
        {
          v10 = 1815491698;
          goto LABEL_79;
        }

LABEL_98:
        v6 = 6;
        goto LABEL_95;
      }

      if (a1 > 2037741157)
      {
        if (a1 == 2037741158)
        {
          goto LABEL_94;
        }

        v11 = 2037741171;
        goto LABEL_93;
      }

      if (a1 != 1999908961)
      {
        v9 = 2033463352;
        goto LABEL_87;
      }

LABEL_80:
      v6 = 8;
      goto LABEL_95;
    }

    if (a1 <= 1664496753)
    {
      if (a1 <= 1279340853)
      {
        if (a1 == 1279340600)
        {
          goto LABEL_94;
        }

        if (a1 != 1279340646)
        {
          v9 = 1279340648;
          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (a1 <= 1380410944)
      {
        if (a1 != 1279340854)
        {
          v9 = 1380401729;
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (a1 != 1380410945)
      {
        v10 = 1380411457;
        goto LABEL_79;
      }
    }

    else
    {
      if (a1 <= 1667838823)
      {
        if (a1 > 1667838767)
        {
          if (a1 != 1667838768)
          {
            if (a1 != 1667838822)
            {
              return v5 * a2;
            }

            v6 = 12;
            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (a1 != 1664496754)
        {
          v7 = 12592;
          goto LABEL_22;
        }

        goto LABEL_80;
      }

      if (a1 <= 1667839077)
      {
        if (a1 == 1667838824)
        {
          goto LABEL_98;
        }

        v10 = 1667839024;
LABEL_79:
        if (a1 != v10)
        {
          return v5 * a2;
        }

        goto LABEL_80;
      }

      if (a1 != 1667839078)
      {
        v11 = 1667844406;
        goto LABEL_93;
      }
    }

    v6 = 16;
    goto LABEL_95;
  }

  if (a1 > 845361455)
  {
    if (a1 > 1094862673)
    {
      if (a1 <= 1278226533)
      {
        if (a1 == 1094862674 || a1 == 1111970369)
        {
          goto LABEL_88;
        }

        v8 = 1278226488;
LABEL_28:
        if (a1 != v8)
        {
          return v5 * a2;
        }

        goto LABEL_95;
      }

      if ((a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
      {
        goto LABEL_94;
      }

      if (a1 == 1278226534)
      {
        goto LABEL_88;
      }

      v11 = 1278226536;
LABEL_93:
      if (a1 != v11)
      {
        return v5 * a2;
      }

      goto LABEL_94;
    }

    if (a1 > 1093677111)
    {
      if (a1 > 1093677159)
      {
        if (a1 == 1093677160)
        {
          goto LABEL_94;
        }

        v11 = 1093677366;
        goto LABEL_93;
      }

      if (a1 == 1093677112)
      {
        goto LABEL_95;
      }

      v9 = 1093677158;
      goto LABEL_87;
    }

    if (a1 != 845361456)
    {
      if (a1 == 846624102)
      {
        goto LABEL_94;
      }

      v11 = 846624121;
      goto LABEL_93;
    }

    a2 *= 2;
  }

  else
  {
    if (a1 <= 828584239)
    {
      if (a1 <= 826486885)
      {
        if (a1 == 24)
        {
          v6 = 3;
          goto LABEL_95;
        }

        if (a1 == 32)
        {
          goto LABEL_88;
        }

        v8 = 826486840;
        goto LABEL_28;
      }

      if ((a1 - 826487088) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
      {
        goto LABEL_94;
      }

      if (a1 == 826486886)
      {
        goto LABEL_88;
      }

      v11 = 826486888;
      goto LABEL_93;
    }

    if (a1 > 843264103)
    {
      if ((a1 - 843264304) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
      {
        goto LABEL_88;
      }

      v9 = 843264104;
      goto LABEL_87;
    }

    if (a1 != 828584240)
    {
      if (a1 == 843264056)
      {
        goto LABEL_94;
      }

      v10 = 843264102;
      goto LABEL_79;
    }
  }

  return (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
}

void SurfaceSetYCCMatrix(__IOSurface *a1, int a2)
{
  if (a1)
  {
    PixelFormat = IOSurfaceGetPixelFormat(a1);
    if ((IOSurfaceGetPlaneCount(a1) == 2 || PixelFormat == 2033463352) && (a2 == 709 || a2 == 601))
    {
      if (a2 == 601)
      {
        v5 = MEMORY[0x1E696D148];
      }

      else
      {
        v5 = MEMORY[0x1E696D150];
      }

      IOSurfaceSetBulkAttachments2();
      IOSurfaceSetValue(a1, *MEMORY[0x1E696D138], *v5);
    }
  }
}

__IOSurface *CreateCachedSurface(__CVBuffer *a1, size_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = a4;
  v174 = *MEMORY[0x1E69E9840];
  v12 = equivalent_uncompressed_format(a4);
  IOSurface = 0;
  if (a1 && a2 && v8)
  {
    v14 = v12;
    v15 = min_bytes_per_row(v12, a1);
    if (((v14 - 1919365990) & 0xFFFFFFFD) == 0 || (v16 = is_biplanar(v8), v15) || v16)
    {
      v158 = v15;
      v161 = a3;
      v164 = a6;
      v165 = a5;
      v17 = MEMORY[0x1E696D0F0];
      v18 = MEMORY[0x1E696CE38];
      if ((v8 & 0xFD000000) != 0x2D000000 && v8 >> 24 != 38 && v8 >> 24 != 124)
      {
        v23 = *MEMORY[0x1E696D0F0];
        v25 = *MEMORY[0x1E696CE38];
        goto LABEL_18;
      }

      pixelBufferOut = 0;
      v19 = MEMORY[0x1E695E9D8];
      v20 = MEMORY[0x1E695E9E8];
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v22 = CFDictionaryCreateMutable(0, 0, v19, v20);
      v23 = *v17;
      *&valuePtr[0] = *(v165 + 8);
      v24 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      CFDictionarySetValue(v22, v23, v24);
      CFRelease(v24);
      v25 = *v18;
      *&valuePtr[0] = *(v165 + 16);
      v26 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      CFDictionarySetValue(v22, v25, v26);
      CFRelease(v26);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v22);
      CFDictionarySetValue(Mutable, @"IOSurfacePurgeable", *MEMORY[0x1E695E4D0]);
      CVPixelBufferCreate(0, a1, a2, v8, Mutable, &pixelBufferOut);
      CFRelease(v22);
      CFRelease(Mutable);
      if (pixelBufferOut)
      {
        IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
        if (IOSurface)
        {
          nameSurface(*(v165 + 16), IOSurface);
          CFRetain(IOSurface);
        }

        v27 = pixelBufferOut;
        goto LABEL_127;
      }

      if (v14)
      {
        v8 = v14;
LABEL_18:
        v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v29 = *MEMORY[0x1E696D130];
        *&valuePtr[0] = a1;
        v30 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
        CFDictionarySetValue(v28, v29, v30);
        CFRelease(v30);
        v31 = *MEMORY[0x1E696CF58];
        v156 = a2;
        *&valuePtr[0] = a2;
        v32 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
        CFDictionarySetValue(v28, v31, v32);
        CFRelease(v32);
        v33 = *MEMORY[0x1E696CFC0];
        LODWORD(valuePtr[0]) = v8;
        v34 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        CFDictionarySetValue(v28, v33, v34);
        CFRelease(v34);
        v35 = *MEMORY[0x1E696CE60];
        LODWORD(valuePtr[0]) = *v165;
        v36 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
        CFDictionarySetValue(v28, v35, v36);
        CFRelease(v36);
        *&valuePtr[0] = *(v165 + 8);
        v37 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
        CFDictionarySetValue(v28, v23, v37);
        CFRelease(v37);
        *&valuePtr[0] = *(v165 + 16);
        v38 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
        CFDictionarySetValue(v28, v25, v38);
        CFRelease(v38);
        v39 = equivalent_uncompressed_format(v14);
        v40 = v39;
        if (v39 == 1647534392 || v39 == 1714643256 || v39 == 1667838776)
        {
          v41 = format_for_plane(v14, 0);
          v42 = format_for_plane(v14, 1);
          if (((equivalent_uncompressed_format(v41) - 1919365990) & 0xFFFFFFFD) != 0)
          {
            if (is_biplanar(v41))
            {
              v43 = 0;
            }

            else
            {
              v43 = 2;
              if (v41 <= 846624120)
              {
                if (v41 == 828584240 || v41 == 845361456)
                {
                  v43 = 3;
                  goto LABEL_49;
                }

                v46 = 846624102;
              }

              else if (v41 > 2037741157)
              {
                if (v41 == 2037741158)
                {
                  goto LABEL_49;
                }

                v46 = 2037741171;
              }

              else
              {
                if (v41 == 846624121)
                {
                  goto LABEL_49;
                }

                v46 = 1983000886;
              }

              if (v41 != v46)
              {
                v43 = 1;
              }
            }
          }

          else
          {
            v43 = 0;
          }

LABEL_49:
          v159 = v43;
          v153 = v40;
          if ((equivalent_uncompressed_format(v42) - 1919365990) & 0xFFFFFFFD) == 0 || (is_biplanar(v42))
          {
            v51 = 0;
LABEL_52:
            v157 = v51;
            v151 = bytes_per_element(v42);
            v147 = bytes_per_element(v41);
            v52 = min_bytes_per_row(v41, a1);
            v53 = min_bytes_per_row(v42, a1);
            v54 = 32;
            if (v161)
            {
              v54 = v161;
            }

            v55 = ((v52 + v54 - 1) / v54 * v54);
            v162 = ((v53 + v54 - 1) / v54 * v54);
            v149 = v162 * a2;
            v141 = v55 * a2;
            v56 = *MEMORY[0x1E696CE58];
            *&valuePtr[0] = (v162 * a2 + v55 * a2) / a2;
            v57 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
            CFDictionarySetValue(v28, v56, v57);
            CFRelease(v57);
            v58 = *MEMORY[0x1E696CE30];
            *&valuePtr[0] = v162 * a2 + v55 * a2;
            v59 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
            CFDictionarySetValue(v28, v58, v59);
            CFRelease(v59);
            theDicta = v28;
            v60 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *&valuePtr[0] = v60;
            v61 = *MEMORY[0x1E696D0C8];
            key = *MEMORY[0x1E696D0C8];
            pixelBufferOut = a1;
            v62 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v60, v61, v62);
            CFRelease(v62);
            v63 = *MEMORY[0x1E696D090];
            v143 = *MEMORY[0x1E696D090];
            pixelBufferOut = a2;
            v64 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v60, v63, v64);
            CFRelease(v64);
            v65 = *MEMORY[0x1E696D0B0];
            pixelBufferOut = 0;
            v66 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v60, v65, v66);
            CFRelease(v66);
            v67 = *MEMORY[0x1E696D0B8];
            pixelBufferOut = (v55 * a2);
            v68 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v60, v67, v68);
            CFRelease(v68);
            v69 = *MEMORY[0x1E696CFE8];
            pixelBufferOut = v55;
            v70 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v60, v69, v70);
            CFRelease(v70);
            v71 = *MEMORY[0x1E696CFE0];
            LODWORD(pixelBufferOut) = v147;
            v72 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            CFDictionarySetValue(v60, v71, v72);
            CFRelease(v72);
            v73 = *MEMORY[0x1E696D060];
            LODWORD(pixelBufferOut) = v159;
            v74 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            CFDictionarySetValue(v60, v73, v74);
            CFRelease(v74);
            v75 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(&valuePtr[0] + 1) = v75;
            pixelBufferOut = a1;
            v76 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v75, key, v76);
            CFRelease(v76);
            pixelBufferOut = a2;
            v77 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v75, v143, v77);
            CFRelease(v77);
            pixelBufferOut = v141;
            v78 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v75, v65, v78);
            CFRelease(v78);
            pixelBufferOut = v149;
            v79 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v75, v67, v79);
            CFRelease(v79);
            pixelBufferOut = v162;
            v80 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v75, v69, v80);
            CFRelease(v80);
            LODWORD(pixelBufferOut) = v151;
            v81 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            CFDictionarySetValue(v75, v71, v81);
            CFRelease(v81);
            LODWORD(pixelBufferOut) = v157;
            v82 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            v83 = v75;
            v28 = theDicta;
LABEL_55:
            CFDictionarySetValue(v83, v73, v82);
            CFRelease(v82);
            v84 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
            CFDictionarySetValue(v28, *MEMORY[0x1E696D0A8], v84);
            CFRelease(v84);
            CFRelease(*&valuePtr[0]);
            CFRelease(*(&valuePtr[0] + 1));
            v47 = v165;
            v40 = v153;
            goto LABEL_56;
          }

          if (v42 <= 846624120)
          {
            if (v42 == 828584240 || v42 == 845361456)
            {
              v51 = 3;
              goto LABEL_52;
            }

            v89 = 846624102;
          }

          else
          {
            if (v42 <= 2037741157)
            {
              if (v42 != 846624121)
              {
                v89 = 1983000886;
                goto LABEL_135;
              }

LABEL_138:
              v51 = 2;
              goto LABEL_52;
            }

            if (v42 == 2037741158)
            {
              goto LABEL_138;
            }

            v89 = 2037741171;
          }

LABEL_135:
          v100 = v42 == v89;
          v51 = 2;
          if (!v100)
          {
            v51 = 1;
          }

          goto LABEL_52;
        }

        if (!is_biplanar(v14))
        {
          v47 = v165;
          if (((equivalent_uncompressed_format(v8) - 1919365990) & 0xFFFFFFFD) != 0)
          {
            v48 = 32;
            if (v161)
            {
              v48 = v161;
            }

            setLongValue(v28, *MEMORY[0x1E696CE58], (v48 + v158 - 1) / v48 * v48);
            v49 = element_width(v14);
            if (v49 >= 2)
            {
              setIntValue(v28, *MEMORY[0x1E696CF10], v49);
            }

            v50 = bytes_per_element(v14);
            setIntValue(v28, *MEMORY[0x1E696CE50], v50);
          }

          else
          {
            add_triplanar_props(v28, v14, a1, a2, v161);
          }

LABEL_56:
          IOSurface = IOSurfaceCreate(v28);
          nameSurface(*(v47 + 16), IOSurface);
          if (v164)
          {
            if ((v8 & 0xFD000000) == 0x2D000000 || v8 >> 24 == 124 || v8 >> 24 == 38)
            {
              x_log("Error: a compressed surface cannot be cleared using ClearSurface().\n", v140);
            }

            else
            {
              ClearSurface(IOSurface);
            }
          }

          if (v40 > 1937126451)
          {
            if (v40 > 2016686639)
            {
              if (v40 > 2016687155)
              {
                if (v40 == 2033463352)
                {
                  goto LABEL_92;
                }

                v88 = 13364;
              }

              else
              {
                if (v40 == 2016686640)
                {
                  goto LABEL_92;
                }

                v88 = 12850;
              }

              v85 = v88 | 0x78340000;
            }

            else
            {
              if (v40 > 1953903153)
              {
                if (v40 == 1953903154)
                {
                  goto LABEL_92;
                }

                v86 = 13364;
              }

              else
              {
                if (v40 == 1937126452)
                {
                  goto LABEL_92;
                }

                v86 = 12848;
              }

              v85 = v86 | 0x74760000;
            }
          }

          else
          {
            if (v40 > 1882468913)
            {
              if (v40 > 1937125935)
              {
                if (v40 == 1937125936)
                {
                  goto LABEL_92;
                }

                v85 = 1937125938;
                goto LABEL_91;
              }

              if (v40 == 1882468914)
              {
                goto LABEL_92;
              }

              v87 = 13364;
            }

            else
            {
              if (v40 <= 875836533)
              {
                if (v40 == 875704438)
                {
                  goto LABEL_92;
                }

                v85 = 875704950;
                goto LABEL_91;
              }

              if (v40 == 875836534)
              {
                goto LABEL_92;
              }

              v87 = 12848;
            }

            v85 = v87 | 0x70340000;
          }

LABEL_91:
          if (v40 != v85)
          {
            v95 = 0;
            v96 = 6;
            v94 = 1;
            goto LABEL_121;
          }

LABEL_92:
          if (v40 > 1937126451)
          {
            if (v40 <= 1983000885)
            {
              if (v40 > 1953903153)
              {
                if (v40 == 1953903154)
                {
                  goto LABEL_120;
                }

                v92 = 13364;
              }

              else
              {
                if (v40 == 1937126452)
                {
                  goto LABEL_120;
                }

                v92 = 12848;
              }

              v91 = v92 | 0x74760000;
              goto LABEL_119;
            }

            if (v40 <= 2016686641)
            {
              if (v40 != 1983000886)
              {
                v90 = 12848;
                goto LABEL_118;
              }
            }

            else if (v40 != 2016686642 && v40 != 2033463352)
            {
              v90 = 13364;
LABEL_118:
              v91 = v90 | 0x78340000;
LABEL_119:
              if (v40 != v91)
              {
LABEL_126:
                v27 = v28;
LABEL_127:
                CFRelease(v27);
                return IOSurface;
              }
            }

LABEL_120:
            v94 = 0;
            v95 = 1;
            v96 = 1;
LABEL_121:
            v173 = 0;
            v171 = 0u;
            v172 = 0u;
            v169 = 0u;
            v170 = 0u;
            v168 = 0u;
            memset(valuePtr, 0, sizeof(valuePtr));
            BYTE10(v168) = v96;
            IOSurfaceSetBulkAttachments2();
            v97 = MEMORY[0x1E696D148];
            v98 = MEMORY[0x1E696D150];
            if (!v95)
            {
              v98 = MEMORY[0x1E696D140];
            }

            if (!v94)
            {
              v97 = v98;
            }

            IOSurfaceSetValue(IOSurface, *MEMORY[0x1E696D138], *v97);
            goto LABEL_126;
          }

          if (v40 > 1882468913)
          {
            if (v40 > 1937125935)
            {
              if (v40 != 1937125936)
              {
                v91 = 1937125938;
                goto LABEL_119;
              }

              goto LABEL_120;
            }

            if (v40 == 1882468914)
            {
              goto LABEL_120;
            }

            v93 = 13364;
          }

          else
          {
            if (v40 <= 875836533)
            {
              if (v40 != 875704438)
              {
                v91 = 875704950;
                goto LABEL_119;
              }

              goto LABEL_120;
            }

            if (v40 == 875836534)
            {
              goto LABEL_120;
            }

            v93 = 12848;
          }

          v91 = v93 | 0x70340000;
          goto LABEL_119;
        }

        if (v40 <= 1936077875)
        {
          if (v40 <= 1751528499)
          {
            v44 = a1;
            if (v40 == 875836518)
            {
              goto LABEL_152;
            }

            v45 = 875836534;
          }

          else
          {
            v44 = a1;
            if (v40 == 1751528500)
            {
              goto LABEL_152;
            }

            v44 = a1;
            if (v40 == 1882469428)
            {
              goto LABEL_152;
            }

            v45 = 1885746228;
          }
        }

        else if (v40 > 1953903667)
        {
          v44 = a1;
          if (v40 == 1953903668)
          {
            goto LABEL_152;
          }

          v44 = a1;
          if (v40 == 2016687156)
          {
            goto LABEL_152;
          }

          v45 = 2019963956;
        }

        else
        {
          v44 = a1;
          if (v40 == 1936077876)
          {
            goto LABEL_152;
          }

          v44 = a1;
          if (v40 == 1937126452)
          {
            goto LABEL_152;
          }

          v45 = 1952855092;
        }

        v44 = a1;
        if (v40 != v45)
        {
          v44 = (a1 + 1) >> 1;
        }

LABEL_152:
        if (v40 <= 1936077359)
        {
          if (v40 <= 1751527983)
          {
            if (v40 == 875704422)
            {
              goto LABEL_167;
            }

            v101 = 875704438;
          }

          else
          {
            if (v40 == 1751527984 || v40 == 1882468912)
            {
              goto LABEL_167;
            }

            v101 = 1885745712;
          }
        }

        else if (v40 > 1953903151)
        {
          if (v40 == 1953903152 || v40 == 2019963440)
          {
            goto LABEL_167;
          }

          v101 = 2016686640;
        }

        else
        {
          if (v40 == 1936077360 || v40 == 1937125936)
          {
            goto LABEL_167;
          }

          v101 = 1952854576;
        }

        v102 = a2;
        if (v40 != v101)
        {
LABEL_168:
          v103 = format_for_plane(v14, 0);
          v104 = format_for_plane(v14, 1);
          if (((equivalent_uncompressed_format(v103) - 1919365990) & 0xFFFFFFFD) != 0 && (is_biplanar(v103) & 1) == 0)
          {
            v105 = 2;
            if (v103 <= 846624120)
            {
              if (v103 == 828584240 || v103 == 845361456)
              {
                v105 = 3;
                goto LABEL_171;
              }

              v138 = 846624102;
            }

            else if (v103 > 2037741157)
            {
              if (v103 == 2037741158)
              {
                goto LABEL_171;
              }

              v138 = 2037741171;
            }

            else
            {
              if (v103 == 846624121)
              {
                goto LABEL_171;
              }

              v138 = 1983000886;
            }

            if (v103 != v138)
            {
              v105 = 1;
            }
          }

          else
          {
            v105 = 0;
          }

LABEL_171:
          v160 = v105;
          theDict = v28;
          v153 = v40;
          if ((equivalent_uncompressed_format(v104) - 1919365990) & 0xFFFFFFFD) == 0 || (is_biplanar(v104))
          {
            v106 = 0;
LABEL_174:
            v107 = v161;
LABEL_175:
            v163 = v106;
            v152 = bytes_per_element(v104);
            v142 = bytes_per_element(v103);
            v108 = min_bytes_per_row(v103, a1);
            v109 = min_bytes_per_row(v104, v44);
            v110 = 32;
            if (v107)
            {
              v110 = v107;
            }

            v144 = v44;
            keya = v102;
            v111 = ((v108 + v110 - 1) / v110 * v110);
            v150 = ((v109 + v110 - 1) / v110 * v110);
            v148 = (v150 * v102);
            v140 = (v111 * a2);
            v112 = *MEMORY[0x1E696CE58];
            *&valuePtr[0] = (v150 * v102 + v111 * a2) / a2;
            v113 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
            CFDictionarySetValue(v28, v112, v113);
            CFRelease(v113);
            v114 = *MEMORY[0x1E696CE30];
            *&valuePtr[0] = v150 * v102 + v111 * a2;
            v115 = CFNumberCreate(0, kCFNumberLongType, valuePtr);
            CFDictionarySetValue(v28, v114, v115);
            CFRelease(v115);
            v116 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *&valuePtr[0] = v116;
            v117 = *MEMORY[0x1E696D0C8];
            pixelBufferOut = a1;
            v118 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v116, v117, v118);
            CFRelease(v118);
            v119 = *MEMORY[0x1E696D090];
            pixelBufferOut = a2;
            v120 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v116, v119, v120);
            CFRelease(v120);
            v121 = *MEMORY[0x1E696D0B0];
            pixelBufferOut = 0;
            v122 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v116, v121, v122);
            CFRelease(v122);
            v123 = *MEMORY[0x1E696D0B8];
            pixelBufferOut = (v111 * v156);
            v124 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v116, v123, v124);
            CFRelease(v124);
            v125 = *MEMORY[0x1E696CFE8];
            pixelBufferOut = v111;
            v126 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v116, v125, v126);
            CFRelease(v126);
            v127 = *MEMORY[0x1E696CFE0];
            LODWORD(pixelBufferOut) = v142;
            v128 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            CFDictionarySetValue(v116, v127, v128);
            CFRelease(v128);
            v73 = *MEMORY[0x1E696D060];
            LODWORD(pixelBufferOut) = v160;
            v129 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            CFDictionarySetValue(v116, v73, v129);
            CFRelease(v129);
            v130 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(&valuePtr[0] + 1) = v130;
            pixelBufferOut = v144;
            v131 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v130, v117, v131);
            CFRelease(v131);
            pixelBufferOut = keya;
            v132 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v130, v119, v132);
            v133 = v132;
            v28 = theDict;
            CFRelease(v133);
            pixelBufferOut = v140;
            v134 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v130, v121, v134);
            CFRelease(v134);
            pixelBufferOut = v148;
            v135 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v130, v123, v135);
            CFRelease(v135);
            pixelBufferOut = v150;
            v136 = CFNumberCreate(0, kCFNumberLongType, &pixelBufferOut);
            CFDictionarySetValue(v130, v125, v136);
            CFRelease(v136);
            LODWORD(pixelBufferOut) = v152;
            v137 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            CFDictionarySetValue(v130, v127, v137);
            CFRelease(v137);
            LODWORD(pixelBufferOut) = v163;
            v82 = CFNumberCreate(0, kCFNumberIntType, &pixelBufferOut);
            v83 = v130;
            goto LABEL_55;
          }

          if (v104 <= 846624120)
          {
            if (v104 == 828584240 || v104 == 845361456)
            {
              v106 = 3;
              goto LABEL_174;
            }

            v139 = 846624102;
          }

          else
          {
            if (v104 <= 2037741157)
            {
              if (v104 != 846624121)
              {
                v139 = 1983000886;
                goto LABEL_198;
              }

LABEL_200:
              v107 = v161;
              v106 = 2;
              goto LABEL_175;
            }

            if (v104 == 2037741158)
            {
              goto LABEL_200;
            }

            v139 = 2037741171;
          }

LABEL_198:
          v100 = v104 == v139;
          v107 = v161;
          v106 = 2;
          if (!v100)
          {
            v106 = 1;
          }

          goto LABEL_175;
        }

LABEL_167:
        v102 = (a2 + 1) >> 1;
        goto LABEL_168;
      }
    }

    return 0;
  }

  return IOSurface;
}

__IOSurface *nameSurface(uint64_t a1, __IOSurface *a2)
{
  if (CI_NAME_SURFACES())
  {
    if (a1)
    {
      v4 = @"CoreImagePool";
    }

    else
    {
      v4 = @"CoreImage";
    }

    IOSurfaceSetValue(a2, *MEMORY[0x1E696CF98], v4);
  }

  return a2;
}

void setLongValue(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void setIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void add_triplanar_props(__CFDictionary *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v10 = format_for_plane(a2, 0);
  v11 = format_for_plane(a2, 1);
  v12 = format_for_plane(a2, 2);
  if (((equivalent_uncompressed_format(v10) - 1919365990) & 0xFFFFFFFD) != 0 && (is_biplanar(v10) & 1) == 0)
  {
    v13 = 2;
    if (v10 <= 846624120)
    {
      if (v10 == 828584240 || v10 == 845361456)
      {
        v13 = 3;
        goto LABEL_4;
      }

      v62 = 846624102;
    }

    else if (v10 > 2037741157)
    {
      if (v10 == 2037741158)
      {
        goto LABEL_4;
      }

      v62 = 2037741171;
    }

    else
    {
      if (v10 == 846624121)
      {
        goto LABEL_4;
      }

      v62 = 1983000886;
    }

    if (v10 != v62)
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_4:
  if (((equivalent_uncompressed_format(v11) - 1919365990) & 0xFFFFFFFD) != 0 && (is_biplanar(v11) & 1) == 0)
  {
    v14 = 2;
    if (v11 <= 846624120)
    {
      if (v11 == 828584240 || v11 == 845361456)
      {
        v14 = 3;
        goto LABEL_7;
      }

      v63 = 846624102;
    }

    else if (v11 > 2037741157)
    {
      if (v11 == 2037741158)
      {
        goto LABEL_7;
      }

      v63 = 2037741171;
    }

    else
    {
      if (v11 == 846624121)
      {
        goto LABEL_7;
      }

      v63 = 1983000886;
    }

    if (v11 != v63)
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_7:
  v79 = v14;
  if ((equivalent_uncompressed_format(v12) - 1919365990) & 0xFFFFFFFD) == 0 || (is_biplanar(v12))
  {
    v15 = 0;
    goto LABEL_10;
  }

  if (v12 <= 846624120)
  {
    if (v12 == 828584240 || v12 == 845361456)
    {
      v15 = 3;
      goto LABEL_10;
    }

    v64 = 846624102;
  }

  else
  {
    if (v12 <= 2037741157)
    {
      if (v12 != 846624121)
      {
        v64 = 1983000886;
        goto LABEL_44;
      }

LABEL_46:
      v15 = 2;
      goto LABEL_10;
    }

    if (v12 == 2037741158)
    {
      goto LABEL_46;
    }

    v64 = 2037741171;
  }

LABEL_44:
  v65 = v12 == v64;
  v15 = 2;
  if (!v65)
  {
    v15 = 1;
  }

LABEL_10:
  v78 = v15;
  v77 = bytes_per_element(v12);
  v74 = bytes_per_element(v11);
  v71 = bytes_per_element(v10);
  v16 = min_bytes_per_row(v10, a3);
  v17 = min_bytes_per_row(v11, a3);
  v18 = min_bytes_per_row(v12, a3);
  v19 = 32;
  if (a5)
  {
    v19 = a5;
  }

  v20 = (v19 - 1 + v16) / v19 * v19;
  v21 = (v19 - 1 + v17) / v19 * v19;
  v76 = (v19 - 1 + v18) / v19 * v19;
  v22 = v20 * a4;
  v72 = v21 * a4;
  v73 = v21;
  v75 = v76 * a4;
  v23 = v76 * a4 + 2 * v21 * a4;
  v24 = *MEMORY[0x1E696CE58];
  valuePtr = v23 / a4;
  v25 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(a1, v24, v25);
  CFRelease(v25);
  v26 = *MEMORY[0x1E696CE30];
  valuePtr = v23;
  v27 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(a1, v26, v27);
  CFRelease(v27);
  v83 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = Mutable;
  v29 = *MEMORY[0x1E696D0C8];
  v80 = a3;
  v30 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(Mutable, v29, v30);
  CFRelease(v30);
  v31 = *MEMORY[0x1E696D090];
  key = *MEMORY[0x1E696D090];
  v80 = a4;
  v32 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(Mutable, v31, v32);
  CFRelease(v32);
  v33 = *MEMORY[0x1E696D0B0];
  v69 = *MEMORY[0x1E696D0B0];
  v80 = 0;
  v34 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(Mutable, v33, v34);
  CFRelease(v34);
  v35 = a4;
  v66 = a4;
  v36 = *MEMORY[0x1E696D0B8];
  v68 = *MEMORY[0x1E696D0B8];
  v80 = v22;
  v37 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(Mutable, v36, v37);
  CFRelease(v37);
  v38 = *MEMORY[0x1E696CFE8];
  v80 = v20;
  v39 = CFNumberCreate(0, kCFNumberLongType, &v80);
  v40 = v38;
  CFDictionarySetValue(Mutable, v38, v39);
  CFRelease(v39);
  v41 = *MEMORY[0x1E696CFE0];
  v67 = *MEMORY[0x1E696CFE0];
  LODWORD(v80) = v71;
  v42 = CFNumberCreate(0, kCFNumberIntType, &v80);
  CFDictionarySetValue(Mutable, v41, v42);
  CFRelease(v42);
  v43 = *MEMORY[0x1E696D060];
  LODWORD(v80) = v13;
  v44 = CFNumberCreate(0, kCFNumberIntType, &v80);
  CFDictionarySetValue(Mutable, v43, v44);
  CFRelease(v44);
  v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v82 = v45;
  v80 = a3;
  v46 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v45, v29, v46);
  CFRelease(v46);
  v80 = v35;
  v47 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v45, key, v47);
  CFRelease(v47);
  v80 = v22;
  v48 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v45, v69, v48);
  CFRelease(v48);
  v80 = v72;
  v49 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v45, v68, v49);
  CFRelease(v49);
  v80 = v73;
  v50 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v45, v40, v50);
  CFRelease(v50);
  LODWORD(v80) = v74;
  v51 = CFNumberCreate(0, kCFNumberIntType, &v80);
  CFDictionarySetValue(v45, v67, v51);
  CFRelease(v51);
  LODWORD(v80) = v79;
  v52 = CFNumberCreate(0, kCFNumberIntType, &v80);
  CFDictionarySetValue(v45, v43, v52);
  CFRelease(v52);
  v53 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v83 = v53;
  v80 = a3;
  v54 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v53, v29, v54);
  CFRelease(v54);
  v80 = v66;
  v55 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v53, key, v55);
  CFRelease(v55);
  v80 = v72 + v22;
  v56 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v53, v69, v56);
  CFRelease(v56);
  v80 = v75;
  v57 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v53, v68, v57);
  CFRelease(v57);
  v80 = v76;
  v58 = CFNumberCreate(0, kCFNumberLongType, &v80);
  CFDictionarySetValue(v53, v40, v58);
  CFRelease(v58);
  LODWORD(v80) = v77;
  v59 = CFNumberCreate(0, kCFNumberIntType, &v80);
  CFDictionarySetValue(v53, v67, v59);
  CFRelease(v59);
  LODWORD(v80) = v78;
  v60 = CFNumberCreate(0, kCFNumberIntType, &v80);
  CFDictionarySetValue(v53, v43, v60);
  CFRelease(v60);
  v61 = CFArrayCreate(0, &valuePtr, 3, MEMORY[0x1E695E9C0]);
  CFDictionarySetValue(a1, *MEMORY[0x1E696D0A8], v61);
  CFRelease(v61);
  CFRelease(valuePtr);
  CFRelease(v82);
  CFRelease(v83);
}

uint64_t element_width(uint64_t a1)
{
  if ((equivalent_uncompressed_format(a1) - 1919365990) & 0xFFFFFFFD) == 0 || (is_biplanar(a1))
  {
    return 0;
  }

  result = 2;
  if (a1 <= 846624120)
  {
    if (a1 == 828584240 || a1 == 845361456)
    {
      return 3;
    }

    v3 = 846624102;
  }

  else if (a1 > 2037741157)
  {
    if (a1 == 2037741158)
    {
      return result;
    }

    v3 = 2037741171;
  }

  else
  {
    if (a1 == 846624121)
    {
      return result;
    }

    v3 = 1983000886;
  }

  if (a1 != v3)
  {
    return 1;
  }

  return result;
}

uint64_t bytes_per_element(uint64_t a1)
{
  if ((equivalent_uncompressed_format(a1) - 1919365990) & 0xFFFFFFFD) == 0 || (is_biplanar(a1))
  {
    return 0;
  }

  result = 0;
  v3 = 1;
  if (a1 <= 1279340645)
  {
    if (a1 > 845361455)
    {
      if (a1 <= 1111970368)
      {
        if (a1 <= 1093677157)
        {
          if (a1 <= 846624120)
          {
            if (a1 != 845361456)
            {
              v4 = 846624102;
              goto LABEL_95;
            }

            return 8;
          }

          if (a1 != 846624121)
          {
            v6 = 1093677112;
            goto LABEL_83;
          }

          return 4;
        }

        if (a1 <= 1093677365)
        {
          if (a1 == 1093677158)
          {
            return 4;
          }

          v8 = 1093677160;
          goto LABEL_75;
        }

        if (a1 != 1093677366)
        {
          v4 = 1094862674;
          goto LABEL_95;
        }

        return 2;
      }

      if (a1 <= 1278226535)
      {
        if (a1 == 1111970369)
        {
          return 4;
        }

        if (a1 != 1278226488)
        {
          v4 = 1278226534;
          goto LABEL_95;
        }

        return v3;
      }

      if ((a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0 || a1 == 1278226536)
      {
        return 2;
      }

      v8 = 1279340600;
LABEL_75:
      if (a1 != v8)
      {
        return result;
      }

      return 2;
    }

    if (a1 <= 828584239)
    {
      if (a1 <= 826486885)
      {
        if (a1 == 24)
        {
          return 3;
        }

        if (a1 == 32)
        {
          return 4;
        }

        v6 = 826486840;
LABEL_83:
        if (a1 != v6)
        {
          return result;
        }

        return v3;
      }

      if ((a1 - 826487088) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
      {
        return 2;
      }

      if (a1 == 826486886)
      {
        return 4;
      }

      v8 = 826486888;
      goto LABEL_75;
    }

    if (a1 > 843264103)
    {
      if ((a1 - 843264304) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
      {
        return 4;
      }

      v4 = 843264104;
      goto LABEL_95;
    }

    if (a1 == 828584240)
    {
      return 4;
    }

    if (a1 == 843264056)
    {
      return 2;
    }

    v7 = 843264102;
    goto LABEL_79;
  }

  if (a1 <= 1667844407)
  {
    if (a1 <= 1664496753)
    {
      if (a1 <= 1279342647)
      {
        if (a1 != 1279340646)
        {
          if (a1 == 1279340648)
          {
            return 4;
          }

          v4 = 1279340854;
          goto LABEL_95;
        }

        return 8;
      }

      if (a1 <= 1380410944)
      {
        if (a1 != 1279342648)
        {
          v4 = 1380401729;
          goto LABEL_95;
        }

        return 2;
      }

      if (a1 != 1380410945)
      {
        v7 = 1380411457;
        goto LABEL_79;
      }
    }

    else
    {
      if (a1 <= 1667838823)
      {
        if (a1 > 1667838767)
        {
          if (a1 != 1667838768)
          {
            if (a1 != 1667838822)
            {
              return result;
            }

            return 12;
          }

          return 4;
        }

        if (a1 == 1664496754)
        {
          return 8;
        }

        v5 = 12592;
LABEL_27:
        v4 = v5 | 0x63690000;
        goto LABEL_95;
      }

      if (a1 <= 1667839077)
      {
        if (a1 == 1667838824)
        {
          return 6;
        }

        v7 = 1667839024;
LABEL_79:
        if (a1 != v7)
        {
          return result;
        }

        return 8;
      }

      if (a1 != 1667839078)
      {
        v8 = 1667844406;
        goto LABEL_75;
      }
    }

    return 16;
  }

  if (a1 > 1815361649)
  {
    if (a1 > 1999908960)
    {
      if (a1 > 2037741157)
      {
        if (a1 == 2037741158)
        {
          return 4;
        }

        v4 = 2037741171;
        goto LABEL_95;
      }

      if (a1 != 1999908961)
      {
        v4 = 2033463352;
        goto LABEL_95;
      }
    }

    else
    {
      if (a1 <= 1983000885)
      {
        if (a1 != 1815361650)
        {
          v7 = 1815491698;
          goto LABEL_79;
        }

        return 6;
      }

      if (a1 != 1983000886)
      {
        v4 = 1999843442;
        goto LABEL_95;
      }
    }

    return 8;
  }

  if (a1 > 1717856626)
  {
    if (a1 <= 1751411058)
    {
      if (a1 == 1717856627)
      {
        return 4;
      }

      v8 = 1751410032;
      goto LABEL_75;
    }

    if (a1 == 1751411059)
    {
      return 2;
    }

    v4 = 1815162994;
LABEL_95:
    if (a1 != v4)
    {
      return result;
    }

    return 4;
  }

  if (a1 > 1667844455)
  {
    if (a1 != 1667844456)
    {
      v4 = 1717855600;
      goto LABEL_95;
    }

    return 2;
  }

  if (a1 != 1667844408)
  {
    v5 = 18790;
    goto LABEL_27;
  }

  return v3;
}