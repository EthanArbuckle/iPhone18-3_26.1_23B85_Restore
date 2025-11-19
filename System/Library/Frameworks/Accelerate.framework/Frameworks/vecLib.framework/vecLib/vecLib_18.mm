uint64_t sub_236793B94(uint64_t a1, char *__b, float *a3, float *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a1 + 28);
  v9 = (*a1 * v8);
  v10 = (*(a1 + 4) * v8);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v15 = *(a1 + 32);
  v12 = sub_236793C50(0, v14, __b, v9, a3, v9, a4, v10, a5, a6);
  if (v9)
  {
    do
    {
      *v7 = expf(*v7);
      ++v7;
      --v9;
    }

    while (v9);
  }

  if (v10)
  {
    do
    {
      *v6 = expf(*v6);
      ++v6;
      --v10;
    }

    while (v10);
  }

  return v12;
}

uint64_t sub_236793C50(int a1, signed int *a2, char *__b, uint64_t a4, float *a5, unint64_t a6, float *a7, unint64_t a8, uint64_t *a9, uint64_t a10)
{
  v12 = __b;
  v13 = *(a2 + 28);
  v14 = a2[1];
  v15 = *a2 * v13;
  v16 = v14 * v13;
  v269 = *(a2 + 1);
  v283 = (v13 * v13);
  v17 = (*(v269 + 8 * v14) * v283) << a1;
  v259 = v16 + 1;
  v18 = a9;
  v19 = 8 * (v16 + 1);
  v20 = v17;
  v21 = 4 * v17 + 7;
  v291 = a9 + v19 + (v21 & 0xFFFFFFFFFFFFFFF8);
  v294 = a9 + v19;
  v22 = (20 * v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v285 = (v291 + (v21 & 0xFFFFFFFFFFFFFFF8));
  v244 = 4 * v16;
  v243 = v244 + 7;
  v23 = (v244 + 7) & 0xFFFFFFFFFFFFFFF8;
  v253 = v22;
  v254 = (4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v261 = v15;
  v258 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  v24 = v16;
  v257 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  v265 = &v285[v22 + v254];
  v266 = &v285[v22];
  v25 = v265 + v23;
  v255 = v23;
  v268 = v265 + v23 + v23;
  v26 = &a9[v16];
  v272 = a5;
  v275 = v16;
  v260 = v19;
  v256 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (v16 < 1)
  {
    *v26 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_66;
    }

    v251 = a4;
    v252 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v55 = 0;
  }

  else
  {
    v247 = &a9[v16];
    v248 = 4 * v17 + 7;
    v251 = a4;
    v252 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = 0;
    v28 = 0;
    v267 = a9 + (v21 & 0xFFFFFFFFFFFFFFF8) + v19;
    v29 = 0;
    do
    {
      v277 = v28;
      v281 = v27;
      v18[v27] = v28;
      v30 = v27 / v13;
      v31 = (v269 + 8 * (v27 / v13));
      v33 = *v31;
      v32 = v31[1];
      if (*v31 < v32)
      {
        v34 = *(a2 + 2);
        v29 = v28;
        do
        {
          v35 = *(v34 + 4 * v33);
          if ((v35 & 0x80000000) == 0)
          {
            v36 = a1;
            if (v35 >= v30)
            {
              v36 = 0;
            }

            if ((v36 & 1) == 0 && v35 < *a2)
            {
              if (a1)
              {
                v37 = (v281 - v30 * v13);
              }

              else
              {
                v37 = 0;
              }

              v38 = *(a2 + 4) + 8 * v33 * v283 + 8 * ((v281 - v30 * v13) * v13);
              v39 = v37 + v35 * v13;
              do
              {
                v40 = (v38 + 8 * v37);
                v41 = *v40;
                v42 = v40[1];
                if (*v40 != 0.0 || v42 != 0.0)
                {
                  *(v294 + 4 * v29) = v39;
                  *(v291 + 4 * v29++) = hypotf(v41, v42);
                }

                ++v37;
                ++v39;
              }

              while (v37 < v13);
            }
          }

          ++v33;
        }

        while (v33 != v32);
      }

      v43 = v29 - v277;
      if (v29 > v277)
      {
        v44 = &v267[4 * v277];
        do
        {
          *v44 = logf(*v44);
          ++v44;
          --v43;
        }

        while (v43);
      }

      v27 = v281 + 1;
      v28 = v29;
      v24 = v275;
      v18 = a9;
    }

    while (v281 + 1 != v275);
    v21 = v248;
    *v247 = v29;
    a5 = v272;
    v19 = v260;
    v12 = __b;
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }

    v45 = v29 + 1;
    bzero(v285, 4 * v275);
    v46 = 0;
    v47 = 0;
    v48 = *a9;
    do
    {
      v49 = v46 + 1;
      v50 = a9[v46 + 1];
      *&v285[4 * v46] += v50 - v48;
      v51 = v50 - v48;
      if (v50 > v48)
      {
        v52 = (a9 + 4 * v48 + v260);
        do
        {
          v54 = *v52++;
          v53 = v54;
          if (v46 == v54)
          {
            ++v47;
          }

          else
          {
            ++*&v285[4 * v53];
          }

          --v51;
        }

        while (v51);
      }

      v48 = v50;
      ++v46;
    }

    while (v49 != v275);
    v55 = 2 * v29 - v47;
    v56 = v55 + 1;
    v57 = a9 + v260 - 8;
    v58 = v275;
    v26 = v247;
    do
    {
      v59 = v58 - 1;
      v60 = a9[v58 - 1] + 1;
      v61 = v56;
      if (v45 > v60)
      {
        v62 = 0;
        do
        {
          *(v57 + v256 + 4 * v56 + 4 * v62) = *(v57 + v256 + 4 * v45 + 4 * v62);
          *(v57 + 4 * v56 + 4 * v62) = *(v57 + 4 * v45 + 4 * v62);
          --v62;
        }

        while (v45 + v62 > v60);
        v61 = v56 + v62;
      }

      a9[v59] = v61 - 1;
      v56 -= *&v285[4 * v59];
      *&v285[4 * v59] = v45 - v60;
      v45 = v60;
      v131 = v58-- <= 1;
    }

    while (!v131);
    v63 = v275;
    v12 = __b;
    do
    {
      v64 = v63--;
      v65 = *&v285[4 * v63];
      if (v65 >= 1)
      {
        v66 = a9[v63];
        v67 = v66 + v65;
        do
        {
          v68 = *(v294 + 4 * v66);
          if (v63 != v68)
          {
            v69 = a9[v68] - 1;
            a9[v68] = v69;
            *(v291 + 4 * v69) = *(a9 + 4 * v66 + v256 + v260);
            *(v294 + 4 * v69) = v63;
          }

          ++v66;
        }

        while (v66 < v67);
      }
    }

    while (v64 >= 2);
  }

  *v26 = v55;
LABEL_50:
  a4 = v251;
  v20 = v252;
  if (v24 >= 1)
  {
    v70 = 0;
    v71 = *v18;
    do
    {
      v72 = v70 + 1;
      v73 = v18[v70 + 1];
      v74 = v73 - v71;
      if (v73 - v71 == -1)
      {
        v75 = v252 - v71;
      }

      else
      {
        v75 = v73 - v71;
      }

      if (v75)
      {
        v76 = (v291 + 4 * v71);
        v77 = *v76;
        v78 = 4 * v75;
        do
        {
          v79 = *v76++;
          v80 = v79;
          if (v77 < v79)
          {
            v77 = v80;
          }

          v78 -= 4;
        }

        while (v78);
      }

      else
      {
        v77 = NAN;
      }

      *&v25[4 * v70] = v77;
      if (v73 > v71)
      {
        v81 = (v18 + 4 * v71 + v256 + v19);
        do
        {
          *v81 = v77 - *v81;
          ++v81;
          --v74;
        }

        while (v74);
      }

      v71 = v73;
      ++v70;
    }

    while (v72 != v24);
  }

LABEL_66:
  v82 = v20;
  v83 = sub_2366FE790(v261[0], v24, v18, v259, v294, v20, v291, v20, v12, a4, v266, v258, v265, v257, v268);
  v84 = v83;
  if (!a1 || v83 == v24)
  {
    v150 = v21 >> 3;
    v151 = *v261;
    if (v261[0] >= 1)
    {
      v152 = (&v18[2 * v150] + v19 + v253);
      v153 = a5;
      do
      {
        v154 = *v152++;
        *v153++ = v154;
        --v151;
      }

      while (v151);
    }

    v155 = a7;
    if (v24 >= 1)
    {
      v156 = (&v18[2 * v150] + v254 + v19 + v253);
      v157 = a7;
      do
      {
        v158 = *(v156 + v255);
        v159 = *v156++;
        *v157++ = v159 - v158;
        --v24;
      }

      while (v24);
    }

    v160 = *a2;
    v161 = *(a2 + 28);
    v296 = *a2;
    v162 = *a2 * v161;
    v163 = a2[1] * v161;
    if (v162 == v163)
    {
      v164 = a6;
      if (v162 != -1)
      {
        v164 = v160 * *(a2 + 28);
      }

      v165 = 0.0;
      v166 = 0.0;
      if (v164)
      {
        v167 = 4 * v164;
        v168 = a5;
        do
        {
          v169 = *v168++;
          v166 = v166 + v169;
          v167 -= 4;
        }

        while (v167);
      }

      v170 = a8;
      if (v162 != -1)
      {
        v170 = v160 * *(a2 + 28);
      }

      if (v170)
      {
        v171 = 4 * v170;
        v165 = 0.0;
        v172 = a7;
        do
        {
          v173 = *v172++;
          v165 = v165 + v173;
          v171 -= 4;
        }

        while (v171);
      }

      if (v162 >= 1)
      {
        v174 = ((v166 / v162) - (v165 / v162)) * 0.5;
        v175 = v162;
        v176 = v162;
        do
        {
          *a5 = *a5 - v174;
          ++a5;
          --v176;
        }

        while (v176);
        do
        {
          *v155 = v174 + *v155;
          ++v155;
          --v175;
        }

        while (v175);
      }
    }

    else
    {
      v271 = v83;
      v177 = *(a2 + 2);
      v282 = a2[1] * v161;
      v284 = *(a2 + 1);
      v288 = v161 * v161;
      v290 = *(a2 + 4);
      v293 = v161;
      if (v162 >= v163)
      {
        if (v163 >= v162)
        {
          return v271;
        }

        v280 = v160 * v161;
        if (v162 <= 0)
        {
          v195 = ((0.0 / v83) - (0.0 / v83)) * 0.5;
        }

        else
        {
          v188 = 0.0;
          v189 = v12;
          v190 = a5;
          v191 = v162;
          v192 = 0.0;
          do
          {
            v194 = *v189;
            v189 += 4;
            v193 = v194;
            if (v194 != -1)
            {
              v192 = v192 + *v190;
              v188 = v188 + a7[v193];
            }

            ++v190;
            --v191;
          }

          while (v191);
          v195 = ((v192 / v83) - (v188 / v83)) * 0.5;
          v196 = v162;
          do
          {
            *a5 = *a5 - v195;
            ++a5;
            --v196;
          }

          while (v196);
        }

        v250 = v21;
        v264 = v12;
        v276 = v162;
        if (v163 <= 0)
        {
          bzero(v268, 4 * v162);
        }

        else
        {
          v223 = a7;
          v224 = v163;
          do
          {
            *v223 = v195 + *v223;
            ++v223;
            --v224;
          }

          while (v224);
          bzero(v268, 4 * v162);
          v225 = 0;
          v226 = v161 <= 1 ? 1 : v161;
          v286 = v226;
          do
          {
            v227 = v225 / v161;
            v228 = (v284 + 8 * (v225 / v161));
            v229 = *v228;
            v230 = v228[1];
            if (*v228 < v230)
            {
              do
              {
                v231 = *(v177 + 4 * v229);
                if ((v231 & 0x80000000) == 0 && v231 < v296)
                {
                  v232 = 0;
                  v233 = v286;
                  v235 = &v268[4 * v231 * v293];
                  do
                  {
                    v234 = v290 + 8 * v229 * v288 + 8 * (v225 - v227 * v293) * v293;
                    v236 = hypotf(*(v234 + 8 * v232), *(v234 + 8 * v232 + 4));
                    v237 = v236 * expf(a7[v225]);
                    if (*v235 >= v237)
                    {
                      v237 = *v235;
                    }

                    *v235++ = v237;
                    ++v232;
                    --v233;
                  }

                  while (v233);
                }

                ++v229;
              }

              while (v229 != v230);
            }

            ++v225;
            v161 = v293;
          }

          while (v225 != v282);
        }

        if (v280 < 1)
        {
          return v271;
        }

        else
        {
          v238 = v272;
          v239 = (&a9[2 * (v243 >> 3)] + v253 + v254 + v260 + ((2 * v250) & 0xFFFFFFFFFFFFFFF0));
          v84 = v271;
          v240 = v276;
          do
          {
            v241 = *v264;
            v264 += 4;
            if (v241 == -1)
            {
              v242 = 0.0;
              if (*v239 != 0.0)
              {
                v242 = logf(1.0 / *v239);
              }

              *v238 = v242;
            }

            ++v238;
            ++v239;
            --v240;
          }

          while (v240);
        }
      }

      else
      {
        v263 = v12;
        v249 = v21;
        v279 = v160 * v161;
        if (v162 <= 0)
        {
          v186 = ((0.0 / v83) - (0.0 / v83)) * 0.5;
        }

        else
        {
          v178 = v162;
          v179 = 0.0;
          v180 = v12;
          v181 = a5;
          v182 = v162;
          v183 = 0.0;
          do
          {
            v185 = *v180;
            v180 += 4;
            v184 = v185;
            if (v185 != -1)
            {
              v179 = v179 + *v181;
              v183 = v183 + a7[v184];
            }

            ++v181;
            --v182;
          }

          while (v182);
          v186 = ((v179 / v83) - (v183 / v83)) * 0.5;
          do
          {
            *a5 = *a5 - v186;
            ++a5;
            --v178;
          }

          while (v178);
        }

        if (v163 >= 1)
        {
          v197 = a7;
          v198 = v163;
          do
          {
            *v197 = v186 + *v197;
            ++v197;
            --v198;
          }

          while (v198);
          v199 = 0;
          if (v161 <= 1)
          {
            v200 = 1;
          }

          else
          {
            v200 = v161;
          }

          do
          {
            v201 = v199 / v161;
            v202 = (v284 + 8 * (v199 / v161));
            v204 = *v202;
            v203 = v202[1];
            v205 = 0.0;
            if (*v202 < v203)
            {
              v206 = 0.0;
              v207 = (v199 - v201 * v293) * v293;
              do
              {
                v208 = *(v177 + 4 * v204);
                if ((v208 & 0x80000000) == 0 && v208 < v296)
                {
                  v209 = 0;
                  v211 = &v272[v208 * v293];
                  v212 = v200;
                  do
                  {
                    v210 = v290 + 8 * v204 * v288 + 8 * v207;
                    v213 = hypotf(*(v210 + 8 * v209), *(v210 + 8 * v209 + 4));
                    v214 = *v211++;
                    v215 = v213 * expf(v214);
                    if (v206 < v215)
                    {
                      v206 = v215;
                    }

                    ++v209;
                    --v212;
                  }

                  while (v212);
                }

                ++v204;
              }

              while (v204 != v203);
              v205 = 0.0;
              v163 = v282;
              if (v206 != 0.0)
              {
                v205 = logf(1.0 / v206);
              }
            }

            *&v268[4 * v199++] = v205;
            v161 = v293;
          }

          while (v199 != v163);
        }

        v216 = a7;
        v217 = v263;
        v84 = v271;
        if (v279 >= 1)
        {
          v218 = v279;
          do
          {
            v220 = *v217;
            v217 += 4;
            v219 = v220;
            if (v220 != -1)
            {
              *&v268[4 * v219] = a7[v219];
            }

            --v218;
          }

          while (v218);
        }

        if (v163 >= 1)
        {
          v221 = (&a9[2 * (v243 >> 3)] + v253 + v254 + v260 + ((2 * v249) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            v222 = *v221++;
            *v216++ = v222;
            --v163;
          }

          while (v163);
        }
      }
    }
  }

  else
  {
    v85 = 2 * v24;
    if (v24 == -1)
    {
      v86 = 0x3FFFFFFFFFFFFFFDLL;
    }

    else
    {
      v86 = v24;
    }

    v87 = &v285[4 * v85];
    if (v261[0] >= 1)
    {
      v88 = 0;
      v89 = 0;
      v90 = v83 + 1;
      v91 = &v18[2 * (v21 >> 3)] + v19;
      do
      {
        if (*&v12[4 * v88] > -2)
        {
          *&v91[4 * v88] = v89;
          *&v285[4 * v24 + 4 * v89++] = v88;
        }

        else
        {
          *&v91[4 * v88] = ~v90++;
        }

        ++v88;
      }

      while (*v261 != v88);
    }

    *v18 = 0;
    if (v24 <= 0)
    {
      return sub_2366FE790(0, 0, v18, v259, v294, v82, v291, v82, v87, v86, v266, v258, v265, v257, v268);
    }

    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = v85;
    do
    {
      v97 = v92 + 1;
      v98 = v18[v92 + 1];
      if (*&v12[4 * v92] >= -1)
      {
        v99 = v98 - v95;
        if (v98 > v95)
        {
          v100 = v18 + 4 * v95 + v19;
          v101 = v100;
          do
          {
            v103 = *v101++;
            v102 = v103;
            if (*&v12[4 * v103] >= -1)
            {
              *(v294 + 4 * v93) = *&v285[4 * v102];
              *(v291 + 4 * v93++) = *(v100 + v256);
            }

            v100 = v101;
            --v99;
          }

          while (v99);
        }

        v18[++v94] = v93;
      }

      v92 = v97;
      v95 = v98;
    }

    while (v97 != v275);
    v104 = v12;
    v105 = sub_2366FE790(v94, v94, v18, v259, v294, v82, v291, v82, v87, v86, v266, v258, v265, v257, v268);
    v106 = v18;
    v107 = v260 + 16 * (v21 >> 3);
    v108 = (v106 + v107);
    v109 = v275;
    v110 = a5;
    v111 = (v106 + v107);
    do
    {
      v113 = *v111++;
      v112 = v113;
      if (v113 >= -1)
      {
        v114 = ((*&v266[4 * v112] + v265[v112]) - *(v108 + v253 + v254 + v255)) * 0.5;
      }

      else
      {
        v114 = -INFINITY;
      }

      *v110++ = v114;
      v108 = v111;
      --v109;
    }

    while (v109);
    memset_pattern16(v12, &unk_23681FAD0, 4 * v275);
    if (v94 > 0)
    {
      v115 = v94;
      v116 = (a9 + 4 * v96 + v107);
      v117 = (a9 + v244 + v107);
      do
      {
        v119 = *v116++;
        v118 = v119;
        v120 = *v117++;
        *&v12[4 * v120] = v118;
        --v115;
      }

      while (v115);
    }

    v121 = (a9 + v107);
    v122 = v275;
    do
    {
      if (*v104 == -2)
      {
        *v104 = *v121;
      }

      v104 += 4;
      ++v121;
      --v122;
    }

    while (v122);
    v270 = v105;
    v273 = v253 + 16 * (v21 >> 3);
    v123 = (a9 + v255 + v254 + v260 + v273);
    v124 = v275;
    v125 = a5;
    do
    {
      v126 = *v125++;
      *v123++ = v126;
      --v124;
    }

    while (v124);
    v127 = 0;
    v278 = *(a2 + 1);
    do
    {
      v128 = (v278 + 8 * (v127 / v13));
      v129 = *v128;
      v295 = v128[1];
      if (*v128 < v295)
      {
        v292 = *(a2 + 2);
        do
        {
          v130 = *(v292 + 4 * v129);
          if ((v130 & 0x80000000) == 0)
          {
            v131 = v130 >= (v127 / v13) && v130 < *a2;
            if (v131)
            {
              v132 = v127 % v13;
              v133 = (v130 * v13);
              v134 = *(a2 + 4) + 8 * v129 * v283 + 8 * v127 % v13 * v13;
              do
              {
                v135 = v132 + v133;
                v136 = (v134 + 8 * v132);
                v137 = *v136;
                v138 = v136[1];
                if (*&v25[4 * v127] == -INFINITY && *&v25[4 * v135] != -INFINITY)
                {
                  v139 = hypotf(*v136, v136[1]);
                  v140 = logf(v139) + a5[v135];
                  if (a5[v127] >= v140)
                  {
                    v140 = a5[v127];
                  }

                  a5[v127] = v140;
                }

                if (*&v25[4 * v135] == -INFINITY && *&v25[4 * v127] != -INFINITY)
                {
                  v141 = hypotf(v137, v138);
                  v142 = logf(v141) + a5[v127];
                  if (a5[v135] >= v142)
                  {
                    v142 = a5[v135];
                  }

                  a5[v135] = v142;
                }

                ++v132;
              }

              while (v132 < v13);
            }
          }

          ++v129;
        }

        while (v129 != v295);
      }

      ++v127;
      v143 = v275;
    }

    while (v127 != v275);
    v144 = (a9 + v255 + v254 + v260 + v273);
    v145 = v275;
    v146 = a5;
    v147 = a7;
    v84 = v270;
    do
    {
      if (*v144 == -INFINITY)
      {
        if (*v146 == -INFINITY)
        {
          v148 = 0.0;
        }

        else
        {
          v148 = -*v146;
        }

        *v146 = v148;
      }

      ++v144;
      ++v146;
      --v145;
    }

    while (v145);
    do
    {
      v149 = *a5++;
      *v147++ = v149;
      --v143;
    }

    while (v143);
  }

  return v84;
}

uint64_t sub_236794CB4(uint64_t a1, char *__b, float *a3, float *a4, uint64_t a5)
{
  v7 = *(a1 + 4) * *(a1 + 28);
  v8 = (4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = *(a1 + 32);
  v10 = sub_236793C50(1, v12, __b, v7, a4, v7 & 0x3FFFFFFFFFFFFFFFLL, (a4 + v8), v7 & 0x3FFFFFFFFFFFFFFFLL, (a4 + v8 + v8), a5 - 2 * v8);
  if (v7)
  {
    do
    {
      *a3++ = expf((*a4 + *(a4 + v8)) * 0.5);
      ++a4;
      --v7;
    }

    while (v7);
  }

  return v10;
}

void sub_236794D84(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v8 = *a1;
  v7 = a1[1];
  *a3 = v7;
  *(a3 + 4) = v8;
  v9 = a1[6];
  v10 = (&a2[v8 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 24) = v9;
  *(a3 + 28) = v5;
  v11 = *(a1 + 1);
  v12 = v10 + 8 * v6 * v11[v7];
  *(a3 + 8) = a2;
  *(a3 + 16) = v12;
  *(a3 + 24) = v9 ^ 2;
  v13 = a2 + 2;
  if (v8 >= 1)
  {
    bzero(v13, 8 * v8);
  }

  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *v11;
    do
    {
      v16 = v11[++v14];
      if (v15 < v16)
      {
        v17 = *(a1 + 2);
        do
        {
          v18 = *(v17 + 4 * v15);
          if ((v18 & 0x80000000) == 0 && v18 < v8)
          {
            ++*(v13 + v18);
            v16 = v11[v14];
          }

          ++v15;
        }

        while (v15 < v16);
      }

      v15 = v16;
    }

    while (v14 != v7);
  }

  a2[1] = 0;
  v19 = a2 + 1;
  *a2 = 0;
  if (v8 > 1)
  {
    v20 = 0;
    v21 = v8 - 1;
    v22 = a2 + 2;
    do
    {
      v20 += *v22;
      *v22++ = v20;
      --v21;
    }

    while (v21);
  }

  if (v7 >= 1)
  {
    v23 = 0;
    v24 = *v11;
    v25 = 8 * v5;
    v26 = 8 * v6;
    do
    {
      v27 = v23++;
      v28 = v11[v23];
      if (v24 < v28)
      {
        v29 = *(a1 + 2);
        v30 = v26 * v24;
        do
        {
          v31 = *(v29 + 4 * v24);
          if ((v31 & 0x80000000) == 0 && v31 < *a1)
          {
            v32 = v19[v31];
            v19[v31] = v32 + 1;
            *(v12 + 4 * v32) = v27;
            if (v5)
            {
              v33 = 0;
              v34 = (v10 + 8 * v32 * v6);
              v35 = (*(a1 + 4) + v30);
              do
              {
                v36 = v5;
                v37 = v35;
                v38 = v34;
                do
                {
                  *v38++ = *v37;
                  v37 = (v37 + v25);
                  --v36;
                }

                while (v36);
                ++v33;
                v34 = (v34 + v25);
                ++v35;
              }

              while (v33 != v5);
            }
          }

          ++v24;
          v28 = v11[v23];
          v30 += v26;
        }

        while (v24 < v28);
        LODWORD(v7) = a1[1];
      }

      v24 = v28;
    }

    while (v23 < v7);
  }
}

SparseOpaqueSymbolicFactorization *__cdecl _SparseSymbolicFactorQR(SparseOpaqueSymbolicFactorization *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrixStructure *Matrix, const SparseSymbolicFactorOptions *options)
{
  v100 = *MEMORY[0x277D85DE8];
  *&retstr->columnCount = 0;
  retstr->factorization = 0;
  rowCount = Matrix->rowCount;
  columnCount = Matrix->columnCount;
  retstr->status = SparseInternalError;
  retstr->rowCount = rowCount;
  v9 = columnCount;
  retstr->columnCount = columnCount;
  attributes = Matrix->attributes;
  retstr->attributes = (*&Matrix->attributes & 0xD);
  v11 = *(&Matrix->blockSize + 2);
  LOBYTE(retstr->factorization) = v11;
  v94 = factorType;
  BYTE1(retstr->factorization) = factorType;
  *&retstr->factorSize_Float = 0u;
  *&retstr->workspaceSize_Float = 0u;
  *&retstr[1].status = 0;
  v97 = 0u;
  v98 = 0u;
  v12 = (attributes >> 2) & 3;
  if (v12 < 2)
  {
    columnStarts = Matrix->columnStarts;
    rowIndices = Matrix->rowIndices;
    v93 = *&Matrix->attributes;
    v15 = (options->malloc)(4 * rowCount);
    bzero(v15, 4 * rowCount);
    v16 = (options->malloc)(4 * columnStarts[columnCount] + 8 * columnCount + 8);
    v17 = v16;
    v92 = v93 | (v11 << 32);
    v18 = (v16 + 8 * columnCount);
    v19 = v18 + 1;
    if (columnCount < 1)
    {
      v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = v20;
        *(v16 + 8 * v20) = v21;
        v23 = columnStarts[v20++];
        v24 = columnStarts[v20];
        v48 = v24 <= v23;
        v25 = v24 - v23;
        if (!v48)
        {
          v26 = &rowIndices[v23];
          do
          {
            v28 = *v26++;
            v27 = v28;
            if ((v28 & 0x80000000) == 0 && v27 < rowCount && v22 >= v15[v27])
            {
              *(v19 + v21++) = v27;
              v15[v27] = v20;
            }

            --v25;
          }

          while (v25);
        }
      }

      while (v20 != columnCount);
    }

    *v18 = v21;
    (options->free)(v15);
    *&v97 = __PAIR64__(columnCount, rowCount);
    *(&v97 + 1) = v17;
    *&v98 = v19;
    v9 = columnCount;
    *(&v98 + 1) = v92;
    goto LABEL_54;
  }

  if (v12 != 2)
  {
    v49 = Matrix->columnStarts[columnCount];
    v50 = columnCount;
    v51 = (options->malloc)(8 * (columnCount + v49) + 16);
    if (v51)
    {
      v52 = v51;
      v53 = (options->malloc)(16 * v49);
      if (v53)
      {
        v54 = v53;
        v55 = *&Matrix->rowIndices;
        if ((*&Matrix->attributes & 2) != 0)
        {
          *__str = *&Matrix->rowCount;
          *&__str[16] = v55;
          sub_2367861D0(__str, 0, v52, v53, 0, &v97);
        }

        else
        {
          v95 = *&Matrix->rowCount;
          v96 = v55;
          sub_236785FB0(&v95, 0, v52, v53, 0, __str);
          v97 = *__str;
          v98 = *&__str[16];
        }

        v9 = v50;
        (options->free)(v54);
        v17 = *(&v97 + 1);
        goto LABEL_54;
      }

      if (options->reportError)
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", 16 * v49);
        goto LABEL_47;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_122:
        sub_23672EEB0();
      }
    }

    else
    {
      if (options->reportError)
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", 8 * (columnCount + v49) + 16);
LABEL_47:
        result = (options->reportError)(__str);
        goto LABEL_73;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_122;
      }
    }

    _SparseTrap();
  }

  v29 = *&Matrix->attributes & 0xFFFF0000 | (v11 << 32) | *&Matrix->attributes & 0xFFF3;
  v30 = 4 * (Matrix->columnStarts[columnCount] + columnCount) + 8 * columnCount + 8;
  v31 = (options->malloc)(v30);
  v17 = v31;
  if (v31)
  {
    v32 = (v31 + 8 * columnCount);
    v33 = v32 + 1;
    if (columnCount < 1)
    {
      v35 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = Matrix->columnStarts;
      do
      {
        *(v17 + 8 * v34) = v35;
        *(v33 + v35++) = v34;
        v37 = v36[v34];
        v38 = v34 + 1;
        v39 = v36[v34 + 1];
        v48 = v39 <= v37;
        v40 = v39 - v37;
        if (!v48)
        {
          v41 = &Matrix->rowIndices[v37];
          do
          {
            v43 = *v41++;
            v42 = v43;
            v44 = Matrix->attributes;
            v45 = v43;
            if ((*&v44 & 2) == 0 || v34 < v45)
            {
              v46 = *&v44 & 2;
              v47 = v34 <= v45 && v46 == 0;
              v48 = v47 || v42 > columnCount;
              if (!v48)
              {
                *(v33 + v35++) = v42;
              }
            }

            --v40;
          }

          while (v40);
        }

        ++v34;
      }

      while (v38 != columnCount);
    }

    *v32 = v35;
  }

  else
  {
    if (!options->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v30);
    (options->reportError)(__str);
    v33 = 0;
  }

  *&v97 = __PAIR64__(columnCount, rowCount);
  *(&v97 + 1) = v17;
  *&v98 = v33;
  *(&v98 + 1) = v29;
LABEL_54:
  v57 = 4 * *(v17 + 8 * v9) + 8 * rowCount + 16;
  v58 = (options->malloc)(v57);
  if (v58)
  {
    v59 = v58;
    v95 = 0u;
    v96 = 0u;
    sub_236795734(&v97, v58, &v95);
    v60 = sub_2367958B0(v94, &v97, &v95, options, retstr);
    (options->free)(v59);
    if (v60)
    {
      v61 = Matrix->rowCount;
      v62 = Matrix->columnCount;
      v63 = *(&Matrix->blockSize + 2);
      if (!sub_236796BCC(v94, &v97, v60, &retstr->workspaceSize_Double, &retstr->factorSize_Float))
      {
        if (v61 >= v62)
        {
          v65 = v62;
        }

        else
        {
          v65 = v61;
        }

        if (v94 == 40)
        {
          v66 = (v60 + 72);
          v67 = *(v60 + 88);
          v68 = *(*(v60 + 104) + 8 * v67);
        }

        else
        {
          v68 = 0;
          v66 = (v60 + 80);
          LODWORD(v67) = *(v60 + 88);
        }

        v70 = v67 + 1;
        v71 = v67 + 1;
        if (v67 >= -1)
        {
          v72 = v70;
        }

        else
        {
          v72 = -v70;
        }

        v73 = 8 * v72;
        if (v67 < -1)
        {
          v73 = -8 * v72;
        }

        v74 = __CFADD__(v73, 96);
        v75 = v73 + 96;
        v76 = v74;
        if (v67 >= -1 && !(v72 >> 61) && !v76)
        {
          v77 = 8 * v71 + 96;
          if ((8 * v71) < 0xFFFFFFFFFFFFFFA0)
          {
            v78 = v63 * v65;
            v79 = *v66;
            v74 = __CFADD__(v79, v68);
            v80 = v79 + v68;
            v81 = v74;
            v74 = __CFADD__(v78, v80);
            v82 = v78 + v80;
            v83 = v74;
            if (!v81 && !v83)
            {
              v84 = *(v60 + 176);
              if (v84 >= 0)
              {
                v85 = *(v60 + 176);
              }

              else
              {
                v85 = -v84;
              }

              v86 = 2 * v85;
              if (v84 < 0)
              {
                v86 = -v86;
              }

              v74 = __CFADD__(v82, v86);
              v87 = v82 + v86;
              v88 = v74;
              if ((v84 & 0x80000000) == 0 && !v88)
              {
                v89 = __CFADD__(v75, 4 * v87);
                retstr->factorSize_Double = v75 + 4 * v87;
                if (!(v87 >> 62) && !v89)
                {
                  v90 = __CFADD__(v77, 8 * v87);
                  *&retstr[1].status = v77 + 8 * v87;
                  if (!(v87 >> 61) && !v90)
                  {
                    retstr->workspaceSize_Float = v60;
                    retstr->status = SparseStatusOK;
                    v91 = *(&v97 + 1);
                    if ((*&Matrix->attributes & 0xC) == 0 && *(*(&v97 + 1) + 8 * SDWORD1(v97)) != Matrix->columnStarts[Matrix->columnCount])
                    {
                      *(v60 + 53) = 1;
                    }

                    result = (options->free)(v91);
                    goto LABEL_73;
                  }
                }
              }
            }
          }
        }
      }

      reportError = options->reportError;
      if (!reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672ED88();
        }

        _SparseTrap();
      }

      memset(&__str[70], 0, 186);
      strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
      (reportError)(__str);
      (options->free)(v60);
    }

    result = (options->free)(*(&v97 + 1));
    goto LABEL_73;
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EDD0();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.", v57);
  (options->reportError)(__str);
  result = (options->free)(v17);
LABEL_73:
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_236795734(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v6 = *a1;
  *a3 = v5;
  *(a3 + 4) = v6;
  v7 = &a2[v6 + 1];
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;
  *(a3 + 24) = 0;
  *(a3 + 24) = a1[6];
  *(a3 + 28) = *(a1 + 28);
  v8 = a2 + 2;
  if (v6 >= 1)
  {
    bzero(v8, 8 * v6);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 1);
    v11 = *v10;
    do
    {
      v12 = v10[++v9];
      if (v11 < v12)
      {
        v13 = *(a1 + 2);
        do
        {
          v14 = *(v13 + 4 * v11);
          if ((v14 & 0x80000000) == 0 && v14 < v6)
          {
            ++*(v8 + v14);
            v12 = v10[v9];
          }

          ++v11;
        }

        while (v11 < v12);
      }

      v11 = v12;
    }

    while (v9 != v5);
  }

  a2[1] = 0;
  v15 = a2 + 1;
  *a2 = 0;
  if (v6 > 1)
  {
    v16 = 0;
    v17 = v6 - 1;
    v18 = a2 + 2;
    do
    {
      v16 += *v18;
      *v18++ = v16;
      --v17;
    }

    while (v17);
  }

  if (v5 >= 1)
  {
    v19 = 0;
    v20 = *(a1 + 1);
    v21 = *v20;
    do
    {
      v22 = v19++;
      v23 = v20[v19];
      if (v21 < v23)
      {
        v24 = *(a1 + 2);
        do
        {
          v25 = *(v24 + 4 * v21);
          if ((v25 & 0x80000000) == 0 && v25 < *a1)
          {
            v26 = v15[v25];
            v15[v25] = v26 + 1;
            *(v7 + 4 * v26) = v22;
            v23 = v20[v19];
          }

          ++v21;
        }

        while (v21 < v23);
        LODWORD(v5) = a1[1];
      }

      v21 = v23;
    }

    while (v19 < v5);
  }
}

uint64_t sub_2367958B0(int a1, size_t a2, size_t a3, uint64_t a4, _DWORD *a5)
{
  v308 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 28);
  v9 = *(a2 + 24);
  v10 = 4;
  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 + v11);
  if (v9)
  {
    v10 = 0;
  }

  v13 = v12 * *(a2 + 28);
  v14 = *(a2 + v10) * *(a2 + 28);
  if (!*(a4 + 16))
  {
    v275 = a5;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
    v20 = 0;
    v18 = 0;
    goto LABEL_113;
  }

  *v287 = *(a2 + v10);
  v16 = v14 + v13 + 4 * (v14 + v13 + *a2 + *(a2 + 4) + 2) + 48;
  v17 = (*(a4 + 24))(v16);
  if (v17)
  {
    v18 = v17;
    v19 = &v17[v16];
    v20 = (&v17[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v19 < v20)
    {
      goto LABEL_300;
    }

    v275 = a5;
    v21 = (v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v21)
    {
      goto LABEL_300;
    }

    v22 = (v21 + 4 * v13 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v22)
    {
      goto LABEL_300;
    }

    v23 = (v22 + 4 * v14 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v23)
    {
      goto LABEL_300;
    }

    v24 = (v23 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v24 || v19 < ((v24 + 4 * *v287 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_300;
    }

    v14 = *(a2 + 28);
    v9 = *(a2 + 24);
    v25 = 4;
    if (v9)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    if (v9)
    {
      v25 = 0;
    }

    v27 = *(a2 + v26);
    v28 = *(a2 + v25);
    if (*(a4 + 16))
    {
      *v278 = *(a2 + v25);
      v280 = *(a4 + 16);
      v284 = v27 * v14;
      *v288 = v23;
      v29 = v28 * *(a2 + 28);
      __src = v27;
      bzero(v17, v27 * *(a2 + 28));
      v282 = v29;
      bzero(v20, v29);
      v23 = *v288;
      if (__src >= 1)
      {
        v30 = (__src + 3) & 0xFFFFFFFC;
        v31 = vdupq_n_s64(__src - 1);
        v32 = xmmword_23681F910;
        v33 = xmmword_23681F920;
        v34 = (*v288 + 8);
        v35 = vdupq_n_s64(4uLL);
        do
        {
          v36 = vmovn_s64(vcgeq_u64(v31, v33));
          if (vuzp1_s16(v36, *v31.i8).u8[0])
          {
            *(v34 - 2) = v14;
          }

          if (vuzp1_s16(v36, *&v31).i8[2])
          {
            *(v34 - 1) = v14;
          }

          if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
          {
            *v34 = v14;
            v34[1] = v14;
          }

          v32 = vaddq_s64(v32, v35);
          v33 = vaddq_s64(v33, v35);
          v34 += 4;
          v30 -= 4;
        }

        while (v30);
      }

      if (v278[0] >= 1)
      {
        v37 = (v278[0] + 3) & 0xFFFFFFFC;
        v38 = vdupq_n_s64(*v278 - 1);
        v39 = xmmword_23681F910;
        v40 = xmmword_23681F920;
        v41 = (v24 + 8);
        v42 = vdupq_n_s64(4uLL);
        do
        {
          v43 = vmovn_s64(vcgeq_u64(v38, v40));
          if (vuzp1_s16(v43, *v38.i8).u8[0])
          {
            *(v41 - 2) = v14;
          }

          if (vuzp1_s16(v43, *&v38).i8[2])
          {
            *(v41 - 1) = v14;
          }

          if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, *&v39))).i32[1])
          {
            *v41 = v14;
            v41[1] = v14;
          }

          v39 = vaddq_s64(v39, v42);
          v40 = vaddq_s64(v40, v42);
          v41 += 4;
          v37 -= 4;
        }

        while (v37);
      }

      v44 = *v280;
      if (*v280 < 0)
      {
        v46 = 0;
        v45 = 0;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = v280 + 1;
        do
        {
          v48 = v44 - v284;
          if (v44 >= v284)
          {
            *(v22 + 4 * v46++) = v48;
            *(v20 + v48) = 1;
            v49 = (v24 + 4 * (v48 / v14));
          }

          else
          {
            *(v21 + 4 * v45++) = v44;
            v18[v44] = 1;
            v49 = (*v288 + 4 * (v44 / v14));
          }

          --*v49;
          v50 = *v47++;
          v44 = v50;
        }

        while ((v50 & 0x80000000) == 0);
      }

      if (*(a2 + 24))
      {
        if (*(a3 + 4) >= 1)
        {
          v51 = 0;
          v52 = 0;
          do
          {
            if (*(v24 + 4 * v52))
            {
              v53 = (*(a3 + 8) + 8 * v52);
              v55 = *v53;
              v54 = v53[1];
              v95 = v54 <= v55;
              v56 = v54 - v55;
              if (v95)
              {
LABEL_60:
                *(v24 + 4 * v52) = 0;
                if (v14)
                {
                  v60 = v51;
                  v61 = v14;
                  do
                  {
                    if ((*(v20 + v60) & 1) == 0)
                    {
                      *(v22 + 4 * v46++) = v60;
                    }

                    *(v20 + v60++) = 1;
                    --v61;
                  }

                  while (v61);
                }
              }

              else
              {
                v57 = (*(a3 + 16) + 4 * v55);
                while (1)
                {
                  v59 = *v57++;
                  v58 = v59;
                  if ((v59 & 0x80000000) == 0 && v58 < *a3 && *(*v288 + 4 * v58))
                  {
                    break;
                  }

                  if (!--v56)
                  {
                    goto LABEL_60;
                  }
                }
              }
            }

            ++v52;
            v51 += v14;
          }

          while (v52 < *(a3 + 4));
        }

        if (*(a2 + 4) >= 1)
        {
          v62 = 0;
          v63 = 0;
          do
          {
            if (*(*v288 + 4 * v63))
            {
              v64 = (*(a2 + 8) + 8 * v63);
              v66 = *v64;
              v65 = v64[1];
              v95 = v65 <= v66;
              v67 = v65 - v66;
              if (v95)
              {
LABEL_75:
                *(*v288 + 4 * v63) = 0;
                if (v14)
                {
                  v71 = v62;
                  v72 = v14;
                  do
                  {
                    if ((v18[v71] & 1) == 0)
                    {
                      *(v21 + 4 * v45++) = v71;
                    }

                    v18[v71++] = 1;
                    --v72;
                  }

                  while (v72);
                }
              }

              else
              {
                v68 = (*(a2 + 16) + 4 * v66);
                while (1)
                {
                  v70 = *v68++;
                  v69 = v70;
                  if ((v70 & 0x80000000) == 0 && v69 < *a2 && *(v24 + 4 * v69))
                  {
                    break;
                  }

                  if (!--v67)
                  {
                    goto LABEL_75;
                  }
                }
              }
            }

            ++v63;
            v62 += v14;
          }

          while (v63 < *(a2 + 4));
        }
      }

      else
      {
        if (*(a2 + 4) >= 1)
        {
          v73 = 0;
          v74 = 0;
          do
          {
            if (*(v24 + 4 * v74))
            {
              v75 = (*(a2 + 8) + 8 * v74);
              v77 = *v75;
              v76 = v75[1];
              v95 = v76 <= v77;
              v78 = v76 - v77;
              if (v95)
              {
LABEL_91:
                *(v24 + 4 * v74) = 0;
                if (v14)
                {
                  v82 = v73;
                  v83 = v14;
                  do
                  {
                    if ((*(v20 + v82) & 1) == 0)
                    {
                      *(v22 + 4 * v46++) = v82;
                    }

                    *(v20 + v82++) = 1;
                    --v83;
                  }

                  while (v83);
                }
              }

              else
              {
                v79 = (*(a2 + 16) + 4 * v77);
                while (1)
                {
                  v81 = *v79++;
                  v80 = v81;
                  if ((v81 & 0x80000000) == 0 && v80 < *a2 && *(*v288 + 4 * v80))
                  {
                    break;
                  }

                  if (!--v78)
                  {
                    goto LABEL_91;
                  }
                }
              }
            }

            ++v74;
            v73 += v14;
          }

          while (v74 < *(a2 + 4));
        }

        if (*(a3 + 4) >= 1)
        {
          v84 = 0;
          v85 = 0;
          do
          {
            if (*(*v288 + 4 * v85))
            {
              v86 = (*(a3 + 8) + 8 * v85);
              v88 = *v86;
              v87 = v86[1];
              v95 = v87 <= v88;
              v89 = v87 - v88;
              if (v95)
              {
LABEL_106:
                *(*v288 + 4 * v85) = 0;
                if (v14)
                {
                  v93 = v84;
                  v94 = v14;
                  do
                  {
                    if ((v18[v93] & 1) == 0)
                    {
                      *(v21 + 4 * v45++) = v93;
                    }

                    v18[v93++] = 1;
                    --v94;
                  }

                  while (v94);
                }
              }

              else
              {
                v90 = (*(a3 + 16) + 4 * v88);
                while (1)
                {
                  v92 = *v90++;
                  v91 = v92;
                  if ((v92 & 0x80000000) == 0 && v91 < *a3 && *(v24 + 4 * v91))
                  {
                    break;
                  }

                  if (!--v89)
                  {
                    goto LABEL_106;
                  }
                }
              }
            }

            ++v85;
            v84 += v14;
          }

          while (v85 < *(a3 + 4));
        }
      }

      LODWORD(v13) = v284 - v45;
      LODWORD(v14) = v282 - v46;
      *(v21 + 4 * v45) = -1;
      *(v22 + 4 * v46) = -1;
      v9 = *(a2 + 24);
    }

    else
    {
      LODWORD(v13) = v27 * v14;
      LODWORD(v14) = v28 * v14;
    }

LABEL_113:
    v95 = v13 < v14;
    v96 = ((v13 < v14) ^ v9) & 1;
    if (v13 < v14)
    {
      v97 = v14;
    }

    else
    {
      v97 = v13;
    }

    if (v13 < v14)
    {
      v98 = v13;
    }

    else
    {
      v98 = v14;
    }

    if (v13 < v14)
    {
      v99 = v18;
    }

    else
    {
      v99 = v20;
    }

    __srca = v99;
    if (v13 < v14)
    {
      v100 = v24;
    }

    else
    {
      v100 = v23;
    }

    v272 = v100;
    if (v13 < v14)
    {
      v101 = v23;
    }

    else
    {
      v101 = v24;
    }

    if (v95)
    {
      v102 = v21;
    }

    else
    {
      v102 = v22;
    }

    v270 = v102;
    if (v95)
    {
      v103 = v22;
    }

    else
    {
      v103 = v21;
    }

    v269 = v103;
    if (v96)
    {
      v104 = a2;
    }

    else
    {
      v104 = a3;
    }

    if (v96)
    {
      v105 = a3;
    }

    else
    {
      v105 = a2;
    }

    v283 = v97;
    v285 = v98;
    if (v97 < v98)
    {
      goto LABEL_300;
    }

    v106 = v96;
    v281 = *v105;
    *v289 = v105[1];
    v107 = v289[0] * v8;
    v108 = v107 + 8;
    v109 = a4;
    if (!*(a4 + 16))
    {
      v108 = 0;
    }

    v110 = v108 + 4 * v107 + 224;
    v111 = (*(a4 + 24))(v110);
    if (!v111)
    {
      if (!*(a4 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672EC38();
        }

        _SparseTrap();
      }

      v306 = 0u;
      v307 = 0u;
      v304 = 0u;
      v305 = 0u;
      v302 = 0u;
      v303 = 0u;
      v300 = 0u;
      v301 = 0u;
      v298 = 0u;
      v299 = 0u;
      v296 = 0u;
      v297 = 0u;
      v294 = 0u;
      v295 = 0u;
      *__str = 0u;
      v293 = 0u;
      snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v110);
      (*(a4 + 40))(__str);
      v141 = 0;
      *v275 = -3;
LABEL_297:
      if (*(v109 + 16))
      {
        (*(v109 + 32))(v18);
      }

      goto LABEL_299;
    }

    v141 = v111;
    v112 = v111 + v110;
    v113 = (v111 + 215) & 0xFFFFFFFFFFFFFFF8;
    if (v111 + v110 < v113)
    {
      goto LABEL_300;
    }

    v114 = (v113 + 4 * v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v112 < v114)
    {
      goto LABEL_300;
    }

    v279 = v105;
    v267 = v104;
    __n = v289[0] * v8;
    if (*(a4 + 16))
    {
      if (v112 < ((v114 + v107 + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_300;
      }
    }

    else
    {
      v114 = 0;
    }

    v115 = *a4;
    v116 = *(a4 + 32);
    *(v111 + 16) = *(a4 + 16);
    *(v111 + 32) = v116;
    *v111 = v115;
    *(v111 + 48) = 1;
    *(v111 + 52) = v106;
    *(v111 + 53) = 0;
    *(v111 + 56) = v283;
    *(v111 + 60) = v285;
    *(v111 + 96) = 0u;
    v266 = (v111 + 96);
    *(v111 + 72) = 0;
    *(v111 + 80) = 0;
    *(v111 + 64) = v113;
    *(v111 + 88) = 0;
    v117 = 5 * v289[0] + 2 * v281;
    *(v111 + 112) = 0u;
    v118 = v281 - v289[0] + 8 * v289[0];
    v119 = v118 + 5;
    v120 = v118 + 2;
    *(v111 + 128) = 0;
    *(v111 + 136) = v281 * v8;
    v121 = v117 <= v119;
    if (v117 > v119)
    {
      v122 = v117 + 1;
    }

    else
    {
      v122 = v120;
    }

    v123 = 56;
    if (!v121)
    {
      v123 = 40;
    }

    *(v111 + 144) = 0uLL;
    v265 = (v111 + 144);
    *(v111 + 160) = 0uLL;
    *(v111 + 176) = 0;
    *(v111 + 184) = 0;
    *(v111 + 192) = 0;
    *(v111 + 200) = v114;
    v271 = v123 + 4 * v122;
    v124 = *v289;
    v125 = (*(a4 + 24))(v271 + 12 * v289[0] + 24);
    if (!v125)
    {
      goto LABEL_174;
    }

    v126 = v125;
    v127 = v125 + v271 + 12 * v289[0] + 24;
    v128 = (v125 + 4 * *v289 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v127 < v128)
    {
      goto LABEL_300;
    }

    v129 = (v128 + 4 * *v289 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v127 < v129)
    {
      goto LABEL_300;
    }

    v264 = ((v128 + 4 * *v289 + 7) & 0xFFFFFFFFFFFFFFF8);
    v130 = ((v129 + 4 * *v289 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v127 < v130 || v127 < (&v130[v271 + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_300;
    }

    if (*(a4 + 16))
    {
      memcpy(*(v141 + 200), __srca, __n);
      v124 = *v289;
    }

    v131 = 1 << *(a4 + 4);
    v263 = (v141 + 184);
    if ((v131 & 0x2C) != 0)
    {
      *__str = 0u;
      v293 = 0u;
      sub_236752DB4(0, v105, a4, __str);
      v132 = *(v141 + 64);
      v291[0] = *__str;
      v291[1] = v293;
      v133 = sub_2367E3E64(a1, v291, 0, v126, v132, a4);
      (*(a4 + 32))(*&__str[8]);
      if (!v133)
      {
        v134 = *(v141 + 64);
        v135 = v267;
        v124 = *v289;
LABEL_199:
        v152 = *(v279 + 16);
        *__str = *v279;
        v293 = v152;
        sub_236768978(__str, v272, v101, v126, v134, v264, v130, &v130[4 * v124]);
        sub_236750DDC(*v289, v264, v126, *(v141 + 64), v130);
        v153 = *(v141 + 64);
        v154 = v135[1];
        *__str = *v135;
        v293 = v154;
        sub_2366EE0E8(__str, v272, v101, v126, v153, v264, v128, v130, &v130[16 * *v289]);
        v155 = sub_236768200(v279, v272, v101, v126, *(v141 + 64), v264, v128, v130, a4, &v130[4 * v124 + 4]);
        v156 = *v289;
        *(v141 + 88) = v155;
        *(v141 + 80) = 0;
        if (v289[0] < 1)
        {
          v157 = 0;
          v159 = v283;
        }

        else
        {
          v157 = 0;
          v158 = v128;
          v159 = v283;
          do
          {
            v160 = *v158++;
            v157 += v160;
            --v156;
          }

          while (v156);
          *(v141 + 80) = v157;
        }

        if (v155 < 1)
        {
          v169 = a4;
          v161 = 0;
        }

        else
        {
          v161 = 0;
          v162 = v155;
          v163 = (v130 + 4);
          v164 = *v130;
          v165 = v128;
          do
          {
            v167 = *v165++;
            v166 = v167;
            v168 = *v163++;
            v161 += v166 * v8;
            v157 += v166 * (v168 - v164);
            v164 = v168;
            --v162;
          }

          while (v162);
          v169 = a4;
          *(v141 + 80) = v157;
        }

        v277 = v159;
        v286 = 8 * (v159 - v285 + v161);
        v170 = v286 + 12 * v155 + 8 * (v161 + 2 * v155 + 2) + 44;
        v171 = (*(v169 + 24))(v170);
        if (v171)
        {
          v172 = v171 + v170;
          v173 = *(v141 + 88);
          v174 = v173 + 1;
          v175 = (v171 + 4 * (v173 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v171 + v170 >= v175)
          {
            *v266 = v171;
            v176 = v175 + 8 * v174;
            if (v176 <= v172)
            {
              *(v141 + 104) = v175;
              v177 = (v176 + 4 * v161 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (v172 >= v177)
              {
                *(v141 + 112) = v176;
                v178 = (v177 + 4 * v161 + 7) & 0xFFFFFFFFFFFFFFF8;
                if (v172 >= v178)
                {
                  *v265 = v177;
                  v179 = v178 + 8 * v174;
                  if (v179 <= v172)
                  {
                    *(v141 + 120) = v178;
                    v180 = v179 + v286;
                    if (v179 + v286 <= v172)
                    {
                      *(v141 + 128) = v179;
                      v181 = (v180 + 4 * v173 + 15) & 0xFFFFFFFFFFFFFFF8;
                      if (v172 >= v181)
                      {
                        *(v141 + 152) = v180;
                        if (v172 >= ((v181 + 4 * v173 + 7) & 0xFFFFFFFFFFFFFFF8))
                        {
                          *(v141 + 160) = v181;
                          if ((v173 & 0x80000000) == 0)
                          {
                            v182 = 0;
                            do
                            {
                              *(v171 + 4 * v182) = *&v130[4 * v182];
                              v95 = v182++ < *(v141 + 88);
                            }

                            while (v95);
                            v173 = *(v141 + 88);
                          }

                          sub_236812888(v173, v264, v180, v181);
                          v183 = *(v141 + 88);
                          if (v183 < 1)
                          {
                            v185 = 0;
                            v188 = *v289;
                          }

                          else
                          {
                            v184 = 0;
                            v185 = 0;
                            v186 = *(v141 + 152);
                            v187 = *v186;
                            v188 = *v289;
                            do
                            {
                              v189 = v186[++v184];
                              v190 = v277;
                              if (v187 < v189)
                              {
                                v191 = (*(v141 + 160) + 4 * v187);
                                v192 = v189 - v187;
                                v193 = v283;
                                do
                                {
                                  v194 = *v191++;
                                  v193 += (*(v128 + 4 * v194) - *(*(v141 + 96) + 4 * v194 + 4) + *(*(v141 + 96) + 4 * v194)) * v8;
                                  --v192;
                                }

                                while (v192);
                                v190 = v193;
                              }

                              if (v185 <= v190)
                              {
                                v185 = v190;
                              }

                              v187 = v186[v184];
                            }

                            while (v184 != v183);
                          }

                          v195 = *(a4 + 16);
                          if (v195)
                          {
                            if ((v183 & 0x80000000) == 0)
                            {
                              v196 = 0;
                              v197 = *v266;
                              do
                              {
                                *&v130[4 * v196] = v197[v196];
                                v198 = *(v141 + 88);
                                v95 = v196++ < v198;
                              }

                              while (v95);
                              if ((v198 & 0x80000000) == 0)
                              {
                                v199 = 0;
                                v200 = 0;
                                v201 = *v266;
                                do
                                {
                                  *(v201 + 4 * v199) = v200;
                                  v202 = *&v130[4 * v199];
                                  v203 = *&v130[4 * v199 + 4];
                                  if (v202 < v203)
                                  {
                                    v204 = (*(v141 + 64) + 4 * v202);
                                    v205 = v203 - v202;
                                    do
                                    {
                                      v206 = *v204++;
                                      v200 += v101[v206];
                                      --v205;
                                    }

                                    while (v205);
                                  }

                                  v95 = v199++ < *(v141 + 88);
                                }

                                while (v95);
                              }
                            }

                            if (v188 >= 1)
                            {
                              v207 = *(v141 + 64);
                              v208 = v188;
                              v209 = v130;
                              do
                              {
                                v210 = *v207++;
                                *v209 = v210;
                                v209 += 4;
                                --v208;
                              }

                              while (v208);
                              v211 = 0;
                              v212 = __n - 1;
                              do
                              {
                                if (v8)
                                {
                                  v213 = 0;
                                  v214 = *(v141 + 200);
                                  v215 = *(v141 + 64);
                                  do
                                  {
                                    v216 = *&v130[4 * v211] * v8;
                                    v217 = v213 + v216;
                                    v218 = *(v214 + v216);
                                    if (v218)
                                    {
                                      v219 = v212;
                                    }

                                    else
                                    {
                                      v219 = v208;
                                    }

                                    v212 -= v218;
                                    LODWORD(v208) = v208 + (v218 ^ 1);
                                    *(v215 + 4 * v219) = v217;
                                    ++v213;
                                    ++v214;
                                  }

                                  while (v8 != v213);
                                }

                                v211 = v211 + 1;
                              }

                              while (v211 != v188);
                            }
                          }

                          else
                          {
                            if (v8 < 2)
                            {
LABEL_268:
                              if (v195)
                              {
                                v230 = v281 * v8 + 8;
                              }

                              else
                              {
                                v230 = 0;
                              }

                              __b = v130;
                              if (v271 < 8 * v185 + 4 * (v185 + v281 + 2 * v8 * v188) + v230 + 32)
                              {
                                __b = (*(a4 + 24))();
                              }

                              sub_23679A9A8(v279, v267, v141, *(v141 + 152), *(v141 + 160), v185, v269, v270, __b);
                              v109 = a4;
                              if (__b != v130)
                              {
                                (*(a4 + 32))(__b);
                              }

                              *(v141 + 168) = 0;
                              *(v141 + 176) = 0;
                              *(v141 + 72) = 0;
                              *v263 = 0;
                              *(v141 + 192) = 0;
                              v232 = *(v141 + 88);
                              if (v232 >= 1)
                              {
                                v233 = 0;
                                v234 = 0;
                                v235 = 0;
                                v236 = 0;
                                v237 = 0;
                                v238 = 0;
                                v239 = 0;
                                v240 = 0;
                                v241 = *(v141 + 96);
                                v242 = *(v141 + 104);
                                v243 = *(v141 + 120);
                                while (1)
                                {
                                  v244 = v238 + 1;
                                  v245 = *(v241 + 4 * (v238 + 1)) - *(v241 + 4 * v238);
                                  v246 = *(v243 + 8 * (v238 + 1)) - *(v243 + 8 * v238);
                                  if (v246 < v245)
                                  {
                                    break;
                                  }

                                  v247 = *(v242 + 8 * v244) - *(v242 + 8 * v238);
                                  v248 = v247;
                                  v249 = v246 * v247;
                                  if (v249 > v237)
                                  {
                                    *(v141 + 168) = v249;
                                    v237 = v246 * v247;
                                  }

                                  if (v236 < v247)
                                  {
                                    *(v141 + 176) = v247;
                                    v236 = v247;
                                  }

                                  v235 += v249;
                                  *(v141 + 72) = v235;
                                  v250 = *(v141 + 152);
                                  v251 = *(v250 + 4 * v238);
                                  v252 = *(v250 + 4 * v244);
                                  if (v251 < v252)
                                  {
                                    v253 = (*(v141 + 160) + 4 * v251);
                                    v254 = v252 - v251;
                                    do
                                    {
                                      v255 = *v253++;
                                      v256 = *(v241 + 4 * (v255 + 1)) - *(v241 + 4 * v255);
                                      v257 = *(v242 + 8 * (v255 + 1)) - *(v242 + 8 * v255);
                                      v258 = *(v243 + 8 * (v255 + 1)) - *(v243 + 8 * v255);
                                      if (v258 >= v257)
                                      {
                                        v258 = v257;
                                      }

                                      v259 = v258 - v256;
                                      v240 += v259 * (v256 - v257);
                                      v239 -= v259;
                                      --v254;
                                    }

                                    while (v254);
                                  }

                                  if (v246 >= v248)
                                  {
                                    v246 = v248;
                                  }

                                  v260 = v246 - v245;
                                  v240 += v260 * (v248 - v245);
                                  if (v240 > v234)
                                  {
                                    *v263 = v240;
                                    v234 = v240;
                                  }

                                  v239 += v260;
                                  if (v239 > v233)
                                  {
                                    *(v141 + 192) = v239;
                                    v233 = v239;
                                  }

                                  v238 = v244;
                                  if (v244 == v232)
                                  {
                                    goto LABEL_296;
                                  }
                                }

                                *v275 = -2;
                                (*(a4 + 32))();
                                (*(a4 + 32))(v141);
                                v141 = 0;
                              }

LABEL_296:
                              (*(a4 + 32))(v126);
                              goto LABEL_297;
                            }

                            if (v188 >= 1)
                            {
                              v220 = *(v141 + 64);
                              v221 = v188;
                              v222 = v126;
                              do
                              {
                                v223 = *v220++;
                                *v222++ = v223;
                                --v221;
                              }

                              while (v221);
                              v224 = 0;
                              LODWORD(v225) = 0;
                              v226 = *(v141 + 64);
                              do
                              {
                                v227 = 0;
                                v225 = v225;
                                do
                                {
                                  *(v226 + 4 * v225++) = v227++ + v126[v224] * v8;
                                }

                                while (v8 != v227);
                                v224 = v224 + 1;
                              }

                              while (v224 != v188);
                            }

                            if ((*(v141 + 88) & 0x80000000) == 0)
                            {
                              v228 = *v266;
                              v229 = -1;
                              do
                              {
                                *v228++ *= v8;
                                ++v229;
                              }

                              while (v229 < *(v141 + 88));
                            }
                          }

                          *(v141 + 80) *= (v8 * v8);
                          goto LABEL_268;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_300:
          __break(1u);
        }

        (*(v169 + 32))(v126);
        (*(v169 + 32))(v141);
LABEL_175:
        v141 = 0;
        goto LABEL_299;
      }

      goto LABEL_173;
    }

    if ((v131 & 0x11) != 0)
    {
      v136 = v124;
      v137 = _SparseCOLAMDWorkspaceSize(v281, v124, *(*(v279 + 8) + 8 * v124), v285);
      v138 = (*(a4 + 24))(v137);
      if (!v138)
      {
LABEL_173:
        (*(a4 + 32))(v126);
LABEL_174:
        (*(a4 + 32))(v141);
        goto LABEL_175;
      }

      v139 = v138;
      _SparseCOLAMD(v279, v267, v101, 0, *(v141 + 64), v138);
      (*(a4 + 32))(v139);
      v134 = *(v141 + 64);
      v124 = v136;
      if (v136 >= 1)
      {
        for (i = 0; i != v136; i = i + 1)
        {
          v126[*(v134 + 4 * i)] = i;
        }
      }

LABEL_198:
      v135 = v267;
      goto LABEL_199;
    }

    v142 = *(a4 + 8);
    v134 = *(v141 + 64);
    if (v142)
    {
      if (v124 < 1)
      {
        goto LABEL_198;
      }

      for (j = 0; j != v124; j = j + 1)
      {
        *(v134 + 4 * *(v142 + 4 * j)) = j;
      }
    }

    else
    {
      if (v124 < 1)
      {
        goto LABEL_198;
      }

      v144 = 0;
      v145 = vdupq_n_s64(v124 - 1);
      v146 = xmmword_23681F910;
      v147 = xmmword_23681F920;
      v148 = (v134 + 8);
      v149 = vdupq_n_s64(4uLL);
      do
      {
        v150 = vmovn_s64(vcgeq_u64(v145, v147));
        if (vuzp1_s16(v150, *v145.i8).u8[0])
        {
          *(v148 - 2) = v144;
        }

        if (vuzp1_s16(v150, *&v145).i8[2])
        {
          *(v148 - 1) = v144 + 1;
        }

        if (vuzp1_s16(*&v145, vmovn_s64(vcgeq_u64(v145, *&v146))).i32[1])
        {
          *v148 = v144 + 2;
          v148[1] = v144 + 3;
        }

        v144 += 4;
        v146 = vaddq_s64(v146, v149);
        v147 = vaddq_s64(v147, v149);
        v148 += 4;
      }

      while (((v124 + 3) & 0xFFFFFFFC) != v144);
    }

    for (k = 0; k != v124; k = k + 1)
    {
      v126[*(v134 + 4 * k)] = k;
    }

    goto LABEL_198;
  }

  if (!*(a4 + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23672EC38();
    }

    _SparseTrap();
  }

  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  *__str = 0u;
  v293 = 0u;
  snprintf(__str, 0x100uLL, "Memory allocation of size %ld failed\n", v16);
  (*(a4 + 40))(__str);
  v141 = 0;
  *a5 = -3;
LABEL_299:
  v261 = *MEMORY[0x277D85DE8];
  return v141;
}

BOOL sub_236796BCC(int a1, int *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a2;
  v10 = *(a2 + 28);
  if (*(a3 + 52))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v14 = 8 * (v9 + 2);
    v15 = v14 + 8;
    v16 = v14 >= 0xFFFFFFFFFFFFFFF8;
    v17 = 1;
    if ((v9 + 2) >> 61 || v16)
    {
      return v17;
    }

    v9 = a2[1];
    v18 = *(*(a2 + 1) + 8 * v9);
    v12 = v15 + 4 * v18;
    v19 = __CFADD__(v15, 4 * v18);
    if (v18 >> 62 || v19 || !is_mul_ok(v18, (8 * v10 * v10)))
    {
      return v17;
    }

    v11 = v18 * (8 * v10 * v10);
  }

  if (a1 == 40)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 168);
  }

  v20 = *(a3 + 184);
  v17 = 1;
  v21 = v20 + v13;
  if (!__CFADD__(v20, v13))
  {
    v23 = ilaenv_NEWLAPACK();
    v24 = v23;
    if (a1 != 40)
    {
      v24 = v23 + 1;
    }

    v25 = *(a3 + 176);
    v26 = !is_mul_ok(v24, v25);
    v27 = v24 * v25;
    v28 = __CFADD__(v21, v27);
    v29 = v21 + v27;
    v30 = v28;
    if (!v26 && (v30 & 1) == 0)
    {
      v28 = __CFADD__(v29, v11);
      v31 = v29 + v11;
      if (!v28)
      {
        v32 = v9 * v10;
        v33 = v12 + 4 * v32;
        v34 = __CFADD__(v12, 4 * v32);
        if (!(v32 >> 62) && !v34)
        {
          v35 = *(a3 + 88);
          v28 = __CFADD__(v33, 8 * v35);
          v36 = v33 + 8 * v35;
          v37 = v28;
          if ((v35 & 0x80000000) == 0 && !v37)
          {
            v28 = __CFADD__(v36, 40);
            v38 = v36 + 40;
            if (!v28)
            {
              if ((v25 & 0x80000000) == 0)
              {
                v39 = *(a3 + 176);
              }

              else
              {
                v39 = -v25;
              }

              v40 = 2 * v39;
              if ((v25 & 0x80000000) != 0)
              {
                v40 = -v40;
              }

              v28 = __CFADD__(v38, v40);
              v41 = v38 + v40;
              v42 = v28;
              if ((v25 & 0x80000000) == 0 && (v42 & 1) == 0)
              {
                v43 = __CFADD__(v41, 4 * v31);
                *a4 = v41 + 4 * v31;
                if (!(v31 >> 62) && !v43)
                {
                  *a5 = v41 + 8 * v31;
                  return __CFADD__(v41, 8 * v31) || v31 >> 61 != 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v17;
}

SparseOpaqueFactorization_Double *__cdecl _SparseNumericFactorQR_Double(SparseOpaqueFactorization_Double *__return_ptr retstr, SparseOpaqueSymbolicFactorization *symbolicFactor, const SparseMatrix_Double *Matrix, const SparseNumericFactorOptions *options, void *factorStorage, void *workspace)
{
  v6 = workspace;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  *&retstr->userFactorStorage = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->status = 0u;
  v12 = *&symbolicFactor->workspaceSize_Double;
  *&retstr->symbolicFactorization.factorSize_Double = *&symbolicFactor->factorSize_Double;
  *&retstr->symbolicFactorization.workspaceSize_Double = v12;
  v13 = *&symbolicFactor->status;
  *&retstr->symbolicFactorization.factorization = *&symbolicFactor->factorization;
  v14 = BYTE1(symbolicFactor->factorization);
  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  v17 = *(&Matrix->structure.blockSize + 2);
  retstr->status = SparseInternalError;
  *&retstr->symbolicFactorization.status = v13;
  LOBYTE(retstr->numericFactorization) = 1;
  retstr->solveWorkspaceRequiredPerRHS = 0;
  p_solveWorkspaceRequiredPerRHS = &retstr->solveWorkspaceRequiredPerRHS;
  *&retstr[1].status = 0;
  v19 = retstr + 1;
  retstr->solveWorkspaceRequiredStatic = 0;
  workspaceSize_Float = symbolicFactor->workspaceSize_Float;
  atomic_fetch_add((workspaceSize_Float + 48), 1u);
  if (BYTE1(symbolicFactor->factorization) == 40)
  {
    if (Matrix->structure.columnCount <= Matrix->structure.rowCount)
    {
      v21 = Matrix->structure.rowCount;
    }

    else
    {
      v21 = Matrix->structure.columnCount;
    }

    v27 = columnCount;
    v28 = v14;
    sub_23678B078(v21 * *(&Matrix->structure.blockSize + 2), symbolicFactor->workspaceSize_Float, p_solveWorkspaceRequiredPerRHS, v19);
    columnCount = v27;
    v14 = v28;
    v22 = 2 * v21;
    v6 = workspace;
    v23 = *&v19->status + 8 * *(&Matrix->structure.blockSize + 2) * v22;
  }

  else
  {
    *p_solveWorkspaceRequiredPerRHS = 0;
    v23 = 16 * Matrix->structure.columnCount * *(&Matrix->structure.blockSize + 2);
  }

  if (rowCount >= columnCount)
  {
    v24 = columnCount;
  }

  else
  {
    v24 = rowCount;
  }

  *&retstr[1].status = v23;
  retstr->solveWorkspaceRequiredStatic = sub_236796F24(v14, v24 * v17, workspaceSize_Float, *&symbolicFactor[1].status, workspaceSize_Float, options, factorStorage);

  _SparseRefactorQR_Double(Matrix, retstr, v25, v6);
  return result;
}

uint64_t sub_236796F24(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  if (!a7)
  {
    a7 = (*(a5 + 24))(a4);
    if (!a7)
    {
      return a7;
    }
  }

  v14 = a7 + a4;
  v15 = (a7 + 71);
  v16 = (a7 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (a7 + a4 < v16)
  {
    goto LABEL_8;
  }

  v17 = a6[1];
  *a7 = *a6;
  *(a7 + 16) = v17;
  *(a7 + 40) = 0;
  v15 = (a7 + 40);
  *(a7 + 32) = 1;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  v7 = *(a3 + 88);
  v18 = v16 + 8 * v7;
  if (v18 > v14 || (*v15 = v16, v8 = v18 + 8 * a2, v8 > v14))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 48) = v18;
  if (a1 == 40)
  {
    v19 = (v8 + 8 * *(*(a3 + 104) + 8 * v7)) & 0xFFFFFFFFFFFFFFF8;
    if (v14 >= v19)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:
  v19 = v8;
  v8 = 0;
LABEL_10:
  *(a7 + 56) = v8;
  if (v7 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = (*(a3 + 120) + 8 * v20);
      v22 = (*(a3 + 104) + 8 * v20);
      v23 = (*(a3 + 96) + 4 * v20);
      *(*v15 + 8 * v20) = v19;
      v24 = v20 + 1;
      v25 = v22[1] - *v22;
      v26 = v23[1] - *v23;
      v27 = v21[1] - *v21;
      if (a1 != 40)
      {
        v27 = v26;
      }

      v19 += 8 * v25 * v27;
      v20 = v24;
    }

    while (v7 != v24);
  }

  return a7;
}

void _SparseRefactorQR_Double(const SparseMatrix_Double *Matrix, SparseOpaqueFactorization_Double *Factorization, const SparseNumericFactorOptions *nfoptions, void *workspace)
{
  v6 = Matrix;
  Factorization->status = SparseInternalError;
  workspaceSize_Float = Factorization->symbolicFactorization.workspaceSize_Float;
  v8 = (*&Matrix->structure.attributes >> 2) & 3;
  if (v8 > 1)
  {
    v11 = Factorization->symbolicFactorization.workspaceSize_Float;
    if (v8 == 2)
    {
      v10 = sub_236797E48(Matrix, v11);
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = sub_2367982B4(&Matrix->structure.rowCount, v11);
      if (!v10)
      {
        return;
      }
    }
  }

  else if (v8)
  {
    v10 = sub_236797AE4(Matrix, Factorization->symbolicFactorization.workspaceSize_Float);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    if (*(workspaceSize_Float + 53) != 1)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v9 = *&Matrix->structure.rowIndices;
    v16 = *&Matrix->structure.rowCount;
    v17 = v9;
    data = Matrix->data;
    v10 = sub_2367977D0(&v16, workspaceSize_Float);
    if (!v10)
    {
      return;
    }
  }

  v6 = v10;
  v12 = 1;
LABEL_13:
  data = 0;
  v16 = 0u;
  v17 = 0u;
  if (*(workspaceSize_Float + 52))
  {
    v13 = *&v6->structure.rowIndices;
    v16 = *&v6->structure.rowCount;
    v17 = v13;
    data = v6->data;
    v14 = workspace;
  }

  else
  {
    sub_236794D84(&v6->structure.rowCount, workspace, &v16);
    v15 = v6->structure.columnStarts[v6->structure.columnCount];
    v14 = (workspace + 8 * v6->structure.rowCount + 8 * v15 * BYTE12(v17) * BYTE12(v17) + 4 * v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  }

  Factorization->status = sub_2367986DC(BYTE1(Factorization->symbolicFactorization.factorization), &v16, workspaceSize_Float, Factorization->solveWorkspaceRequiredStatic, v14, workspace + Factorization->symbolicFactorization.factorSize_Float - v14);
  if (v12)
  {
    (*(workspaceSize_Float + 32))(v6);
  }
}

SparseOpaqueFactorization_Double *__cdecl _SparseFactorQR_Double(SparseOpaqueFactorization_Double *__return_ptr retstr, SparseFactorization_t factorType, const SparseMatrix_Double *Matrix, const SparseSymbolicFactorOptions *sfoptions, const SparseNumericFactorOptions *nfoptions)
{
  v8 = factorType;
  v67 = *MEMORY[0x277D85DE8];
  *&retstr->status = 0u;
  *&retstr->symbolicFactorization.columnCount = 0u;
  *&retstr[1].status = 0;
  *&retstr->userFactorStorage = 0u;
  *&retstr->solveWorkspaceRequiredStatic = 0u;
  *&retstr->symbolicFactorization.workspaceSize_Float = 0u;
  *&retstr->symbolicFactorization.factorSize_Float = 0u;
  retstr->status = SparseInternalError;
  rowCount = Matrix->structure.rowCount;
  columnCount = Matrix->structure.columnCount;
  retstr->symbolicFactorization.status = SparseInternalError;
  retstr->symbolicFactorization.rowCount = rowCount;
  retstr->symbolicFactorization.columnCount = columnCount;
  attributes = Matrix->structure.attributes;
  retstr->symbolicFactorization.attributes = (*&Matrix->structure.attributes & 1);
  LOBYTE(retstr->symbolicFactorization.factorization) = *(&Matrix->structure.blockSize + 2);
  BYTE1(retstr->symbolicFactorization.factorization) = factorType;
  v13 = (attributes >> 2) & 3;
  if (v13 <= 1)
  {
    if (v13)
    {
      result = sub_236797AE4(Matrix, sfoptions);
      if (!result)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&Matrix->structure.rowIndices;
      *__str = *&Matrix->structure.rowCount;
      *&__str[16] = v14;
      *&__str[32] = Matrix->data;
      result = sub_2367977D0(__str, sfoptions);
      if (!result)
      {
        goto LABEL_28;
      }
    }

LABEL_11:
    v16 = result;
    v17 = 8 * rowCount + 16;
    v18 = (sfoptions->malloc)(v17 + 4 * *(*&result->symbolicFactorization.status + 8 * columnCount));
    if (v18)
    {
      v19 = v18;
      memset(v65, 0, sizeof(v65));
      sub_236795734(v16, v18, v65);
      v20 = sub_2367958B0(v8, v16, v65, sfoptions, retstr);
      (sfoptions->free)(v19);
      if (!v20)
      {
LABEL_27:
        result = (sfoptions->free)(v16);
        goto LABEL_28;
      }

      v60 = BYTE4(v16->symbolicFactorization.factorization);
      if (v16->status >= *&v16->attributes)
      {
        status = *&v16->attributes;
      }

      else
      {
        status = v16->status;
      }

      if (sub_236796BCC(v8, v16, v20, &retstr->symbolicFactorization.workspaceSize_Double, &retstr->symbolicFactorization.factorSize_Float))
      {
        goto LABEL_17;
      }

      if (v8 == 40)
      {
        v23 = (v20 + 72);
        v24 = *(v20 + 88);
        v25 = *(*(v20 + 104) + 8 * v24);
      }

      else
      {
        v25 = 0;
        v23 = (v20 + 80);
        LODWORD(v24) = *(v20 + 88);
      }

      v27 = v24 + 1;
      v28 = v24 + 1;
      if (v24 >= -1)
      {
        v29 = v27;
      }

      else
      {
        v29 = -v27;
      }

      v30 = 8 * v29;
      if (v24 < -1)
      {
        v30 = -8 * v29;
      }

      v31 = __CFADD__(v30, 96);
      v32 = v30 + 96;
      v33 = v31;
      if (v24 < -1)
      {
        goto LABEL_17;
      }

      if (v29 >> 61)
      {
        goto LABEL_17;
      }

      if (v33)
      {
        goto LABEL_17;
      }

      v34 = 8 * v28 + 96;
      if ((8 * v28) >= 0xFFFFFFFFFFFFFFA0)
      {
        goto LABEL_17;
      }

      v35 = v60 * status;
      v36 = *v23;
      v31 = __CFADD__(v36, v25);
      v37 = v36 + v25;
      v38 = v31;
      v31 = __CFADD__(v35, v37);
      v39 = v35 + v37;
      v40 = v31;
      if (v38 || v40)
      {
        goto LABEL_17;
      }

      v41 = *(v20 + 176);
      if (v41 >= 0)
      {
        v42 = *(v20 + 176);
      }

      else
      {
        v42 = -v41;
      }

      v43 = 2 * v42;
      if (v41 < 0)
      {
        v43 = -v43;
      }

      v31 = __CFADD__(v39, v43);
      v44 = v39 + v43;
      v45 = v31;
      if (v41 < 0 || v45 || ((v31 = __CFADD__(v32, 4 * v44), v46 = v32 + 4 * v44, !v31) ? (v47 = 0) : (v47 = 1), (retstr->symbolicFactorization.factorSize_Double = v46, v44 >> 62) || (v47 & 1) != 0 || (!__CFADD__(v34, 8 * v44) ? (v48 = 0) : (v48 = 1), (*&retstr->userFactorStorage = v34 + 8 * v44, v44 >> 61) || v48)))
      {
LABEL_17:
        reportError = sfoptions->reportError;
        if (!reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23672ED88();
          }

          _SparseTrap();
        }

        memset(&__str[70], 0, 186);
        strcpy(__str, "Overflow calculating workspace required for numeric QR factorization.");
        (reportError)(__str);
        (sfoptions->free)(v20);
        goto LABEL_27;
      }

      retstr->symbolicFactorization.workspaceSize_Float = v20;
      retstr->symbolicFactorization.status = SparseStatusOK;
      factorSize_Float = retstr->symbolicFactorization.factorSize_Float;
      v61 = v34 + 8 * v44;
      v49 = (sfoptions->malloc)();
      if (v49)
      {
        workspaceSize_Float = 0;
        v62 = 0u;
        v63 = 0u;
        if (*(v20 + 52))
        {
          v50 = *&v16->symbolicFactorization.columnCount;
          v62 = *&v16->status;
          v63 = v50;
          workspaceSize_Float = v16->symbolicFactorization.workspaceSize_Float;
          v51 = v49;
          v52 = v49;
        }

        else
        {
          v58 = v49;
          sub_236794D84(v16, v49, &v62);
          v53 = *(*&v16->symbolicFactorization.status + 8 * columnCount);
          v54 = v58 + v17;
          v51 = v58;
          v52 = &v54[8 * v53 * BYTE12(v63) * BYTE12(v63) + 15 + 4 * v53] & 0xFFFFFFFFFFFFFFF8;
        }

        v55 = sub_236796F24(v8, v35, v20, v61, v20, nfoptions, 0);
        retstr->solveWorkspaceRequiredStatic = v55;
        if (v55)
        {
          retstr->status = sub_2367986DC(v8, &v62, v20, v55, v52, v51 + factorSize_Float - v52);
          if (v8 == 40)
          {
            if (*&v16->attributes <= v16->status)
            {
              v56 = v16->status;
            }

            else
            {
              v56 = *&v16->attributes;
            }

            sub_23678B078(v56 * BYTE4(v16->symbolicFactorization.factorization), v20, &retstr->solveWorkspaceRequiredPerRHS, &retstr[1]);
            v57 = *&retstr[1].status + 8 * *(&Matrix->structure.blockSize + 2) * (2 * v56);
          }

          else
          {
            retstr->solveWorkspaceRequiredPerRHS = 0;
            v57 = 8 * *&v16->attributes * BYTE4(v16->symbolicFactorization.factorization);
          }

          *&retstr[1].status = v57;
        }

        else
        {
          if (!sfoptions->reportError)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_23672ECA8();
            }

            _SparseTrap();
          }

          memset(__str, 0, 256);
          snprintf(__str, 0x100uLL, "Failed to allocate space for QR factors of size %ld.", v61);
          (sfoptions->reportError)(__str);
        }

        (sfoptions->free)(v51);
        goto LABEL_27;
      }

      if (sfoptions->reportError)
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld for QR Numeric factorization.");
        goto LABEL_21;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672ED18();
      }
    }

    else
    {
      if (sfoptions->reportError)
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld.");
LABEL_21:
        (sfoptions->reportError)(__str);
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EDD0();
      }
    }

    _SparseTrap();
  }

  if (v13 == 2)
  {
    result = sub_236797E48(Matrix, sfoptions);
    if (!result)
    {
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  result = sub_2367982B4(&Matrix->structure.rowCount, sfoptions);
  if (result)
  {
    goto LABEL_11;
  }

LABEL_28:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367977D0(int *a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v39 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v8 = *(*(a1 + 1) + 8 * v7);
  v38 = *(a1 + 28);
  v9 = v38 * v38;
  v10 = 8 * v7 + 8;
  v11 = v10 + 4 * v8 + 8 * v8 * v9 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v36 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v10, v15 + v10 > v14) || (v17 = (v16 + 4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v17 + 8 * v8 * v9 > v14)
    {
      __break(1u);
    }

    v18 = *(a1 + 28);
    v19 = a1[6];
    *v12 = __n;
    *(v12 + 4) = v7;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = v19;
    *(v12 + 28) = v18;
    *(v12 + 32) = v17;
    v20 = a1[1];
    if (v20 < 1)
    {
      v22 = 0;
      v33 = v7;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 1);
      v24 = 8 * v38 * v38;
      do
      {
        v25 = v21;
        *(*(v13 + 8) + 8 * v21) = v22;
        v26 = *(v23 + 8 * v21++);
        if (v26 < *(v23 + 8 * v21))
        {
          v27 = v24 * v26;
          do
          {
            v28 = *(*(a1 + 2) + 4 * v26);
            if ((v28 & 0x80000000) == 0 && v28 < *a1)
            {
              if (v25 >= v6[v28])
              {
                *(*(v13 + 16) + 4 * v22) = v28;
                v6[v28] = v21;
                *(v39 + 8 * v28) = v22;
                memcpy((*(v13 + 32) + 8 * v22 * v9), (*(a1 + 4) + 8 * v26 * v9), 8 * v9);
                ++v22;
                v23 = *(a1 + 1);
              }

              else if (v38)
              {
                v29 = (*(v13 + 32) + 8 * *(v39 + 8 * v28) * v9);
                v30 = (*(a1 + 4) + v27);
                v31 = v38 * v38;
                do
                {
                  v32 = *v30++;
                  *v29 = v32 + *v29;
                  ++v29;
                  --v31;
                }

                while (v31);
              }
            }

            ++v26;
            v27 += v24;
          }

          while (v26 < *(v23 + 8 * v21));
          v20 = a1[1];
        }
      }

      while (v21 < v20);
      v15 = *(v13 + 8);
      v33 = *(v13 + 4);
    }

    *(v15 + 8 * v33) = v22;
    (*(v36 + 32))(v39);
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *__str = 0u;
    v41 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v10 + 4 * v8 + 8 * v8 * v9 + 64);
    (*(a2 + 40))(__str);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_236797AE4(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(a1 + 28);
  v7 = 8 * v4 + 8;
  v42 = (v6 * v6);
  v43 = v4;
  v8 = v7 + 4 * v5 + 8 * v5 * v42 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v7, v11 + v7 > v10) || (v13 = (v12 + 4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v13 + 8 * v5 * v42 > v10)
    {
      __break(1u);
    }

    v14 = *(a1 + 24);
    v15 = v43;
    *result = v43;
    *(result + 4) = v43;
    *(result + 8) = v11;
    *(result + 16) = v12;
    *(result + 24) = v14;
    *(result + 28) = v6;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFF3;
    if (v43 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v6 * v6);
      __n = 8 * v42;
      v41 = result;
      v19 = *(a1 + 8);
      v20 = 8 * v6;
      v21 = 8 * v6 + 8;
      v22 = 8 * v6 * v6;
      while (1)
      {
        v23 = v16;
        *(*(result + 8) + 8 * v16) = v17;
        v24 = *(v19 + 8 * v16++);
        if (v24 < *(v19 + 8 * v16))
        {
          break;
        }

LABEL_35:
        if (v16 == v15)
        {
          v11 = *(result + 8);
          goto LABEL_40;
        }
      }

      v25 = v22 * v24;
      v44 = v23;
      while (1)
      {
        v26 = *(*(a1 + 16) + 4 * v24);
        v27 = *(a1 + 24);
        if ((v27 & 2) != 0 && v23 > v26)
        {
          goto LABEL_34;
        }

        v28 = (v27 >> 1) & 1;
        if (v23 >= v26)
        {
          v28 = 1;
        }

        if (v28 != 1 || v26 >= v15)
        {
          goto LABEL_34;
        }

        *(*(result + 16) + 4 * v17) = v26;
        v30 = *(a1 + 32);
        v31 = (*(result + 32) + 8 * v17 * v18);
        v45 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v6)
            {
              v36 = 0;
              v37 = v30 + v25;
              result = v41;
              v15 = v43;
              v23 = v44;
              v17 = v45;
              do
              {
                v38 = 0;
                do
                {
                  *&v31[8 * v38] = *(v37 + 8 * v38);
                  ++v38;
                }

                while (v36 + v38 < v6);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v6);
              goto LABEL_33;
            }
          }

          else if (v6)
          {
            v32 = 0;
            v33 = v30 + v25;
            v34 = 1;
            result = v41;
            v15 = v43;
            v23 = v44;
            v17 = v45;
            do
            {
              v35 = 0;
              do
              {
                *&v31[8 * v35] = *(v33 + 8 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v6);
LABEL_33:
            v18 = (v6 * v6);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 8 * v24 * v18), __n);
        }

        result = v41;
        v18 = (v6 * v6);
        v15 = v43;
        v23 = v44;
        v17 = v45;
LABEL_34:
        ++v24;
        v19 = *(a1 + 8);
        v25 += v22;
        if (v24 >= *(v19 + 8 * v16))
        {
          goto LABEL_35;
        }
      }
    }

    v17 = 0;
LABEL_40:
    *(v11 + 8 * v15) = v17;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *__str = 0u;
    v47 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
    result = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_236797E48(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v83 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v64 = v4;
  v65 = (v5 * v5);
  v7 = *(*(a1 + 8) + 8 * v4) + v4;
  v8 = v6 + 4 * v7 + 8 * v7 * v65 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v64, v12 + v6 > v11) || (v15 = (v13 + 4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v15 + 8 * v7 * v65 > v11)
    {
      __break(1u);
    }

    v16 = *(v3 + 24);
    *v9 = v64;
    *(v9 + 4) = v64;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFF3;
    if (v64 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 8 * v65;
      v19 = 8 * v5;
      v20 = 16 * v5 + 16;
      v21 = 8 * v5 * v5;
      v22 = 8 * v5 + 8;
      v66 = v10;
      v62 = vdupq_n_s64(v5 - 1);
      v61 = vdupq_n_s64(2uLL);
      do
      {
        v23 = v17;
        v24 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v24 + 4 * v18) = v17;
        v25 = v10[4];
        v26 = v18;
        bzero((v25 + 8 * v18 * v65), __n);
        if (v5)
        {
          v27 = (v5 + 1) & 0x1FE;
          v28 = xmmword_23681F920;
          do
          {
            v29 = vmovn_s64(vcgeq_u64(v62, v28));
            if (v29.i8[0])
            {
              *(v25 + v21 * v26) = 0x3FF0000000000000;
            }

            if (v29.i8[4])
            {
              *(v25 + v5 * (v19 * v26 + 8) + 8) = 0x3FF0000000000000;
            }

            v28 = vaddq_s64(v28, v61);
            v25 += v20;
            v27 -= 2;
          }

          while (v27);
        }

        v18 = v26 + 1;
        v30 = *(v3 + 8);
        v31 = *(v30 + 8 * v23);
        v17 = v23 + 1;
        if (v31 >= *(v30 + 8 * (v23 + 1)))
        {
          v14 = v64;
        }

        else
        {
          v32 = v21 * v31;
          v33 = v21 * v31 + 8;
          v14 = v64;
          do
          {
            v34 = *(*(v3 + 16) + 4 * v31);
            v35 = *(v3 + 24);
            if ((v35 & 2) == 0 || v23 <= v34)
            {
              v36 = v23 >= v34 || (v35 >> 1) & 1;
              if (v36 && v34 < v14)
              {
                v38 = *(v3 + 32);
                if (v23 == v34)
                {
                  v39 = v66[4];
                  v40 = *(v66[1] + 8 * v23);
                  if ((v35 & 2) != 0)
                  {
                    if (v5)
                    {
                      v41 = 0;
                      v42 = v39 + v21 * v40 + 8;
                      v43 = (v38 + v33);
                      v44 = v5 - 1;
                      do
                      {
                        if (++v41 < v5)
                        {
                          v45 = v44;
                          v46 = v43;
                          v47 = v42;
                          do
                          {
                            v48 = *v46++;
                            *v47++ = v48;
                            --v45;
                          }

                          while (v45);
                        }

                        v42 += v22;
                        v43 = (v43 + v22);
                        --v44;
                      }

                      while (v41 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v55 = 0;
                    v56 = v39 + 8 * v40 * v65;
                    v57 = v38 + v32;
                    do
                    {
                      if (v55)
                      {
                        for (i = 0; i != v55; ++i)
                        {
                          *(v56 + 8 * i) = *(v57 + 8 * i);
                        }
                      }

                      ++v55;
                      v56 += v19;
                      v57 += v19;
                    }

                    while (v55 != v5);
                  }
                }

                else
                {
                  *(v66[2] + 4 * v18) = v34;
                  v49 = v22;
                  v50 = v23;
                  v51 = v21;
                  v52 = v3;
                  v53 = v17;
                  v54 = v18;
                  memcpy((v66[4] + 8 * v18 * v65), (v38 + 8 * v31 * v65), __n);
                  v17 = v53;
                  v3 = v52;
                  v21 = v51;
                  v23 = v50;
                  v22 = v49;
                  v19 = 8 * v5;
                  v14 = v64;
                  v18 = v54 + 1;
                  v30 = *(v3 + 8);
                }
              }
            }

            ++v31;
            v32 += v21;
            v33 += v21;
          }

          while (v31 < *(v30 + 8 * v17));
        }

        v10 = v66;
        v20 = 16 * v5 + 16;
      }

      while (v17 != v14);
      v12 = v66[1];
    }

    *(v12 + 8 * v14) = v18;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    *__str = 0u;
    v68 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  v59 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2367982B4(__int128 *a1, uint64_t a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v8 = 8 * (v4 + v7) + 16;
  v9 = 16 * v7;
  v10 = 16 * v7 * v6;
  v11 = v10 + v8 + 72;
  v12 = (*(a2 + 24))(v11);
  if (!v12)
  {
    if (*(a2 + 40))
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *__str = 0u;
      v67 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v10 + v8 + 72);
LABEL_12:
      (*(a2 + 40))(__str);
      v13 = 0;
      goto LABEL_56;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v13 = v12;
  v62 = v9;
  v63 = a2;
  v14 = v12 + v11;
  v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v12 + v11 < v15)
  {
    goto LABEL_57;
  }

  v16 = (v15 + v10);
  if (v16 > v14)
  {
    goto LABEL_57;
  }

  v17 = *(a1 + 28);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v12 + 28) = v17;
  *(v12 + 29) = 0;
  *(v12 + 31) = 0;
  *(v12 + 32) = v15;
  v18 = (*(a2 + 24))(v62);
  if (!v18)
  {
    if (*(a2 + 40))
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *__str = 0u;
      v67 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v62);
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_54:
      sub_23672EEB0();
    }

LABEL_55:
    _SparseTrap();
  }

  v19 = v18;
  v20 = v16 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    if (v20 <= v14)
    {
      v22 = a1[1];
      v64 = *a1;
      v65 = v22;
      sub_2367861D0(&v64, 0, v16, v18, 0, __str);
      goto LABEL_15;
    }

LABEL_57:
    __break(1u);
  }

  if (v20 > v14)
  {
    goto LABEL_57;
  }

  v21 = a1[1];
  v64 = *a1;
  v65 = v21;
  sub_236785FB0(&v64, 0, v16, v18, 0, __str);
LABEL_15:
  v23 = v67;
  *v13 = *__str;
  *(v13 + 16) = v23;
  if (v4 >= 1)
  {
    v24 = 0;
    v25 = *(v13 + 8);
    v26 = *v25;
    v27 = 8 * v5 * v5;
    v28 = 8 * v5;
    v29 = 8 * v5 + 8;
    do
    {
      v30 = v24 + 1;
      v31 = v25[v24 + 1];
      if (v26 < v31)
      {
        v32 = *(v13 + 16);
        v33 = *(a1 + 4);
        v34 = *(v13 + 32) + v27 * v26;
        do
        {
          v35 = *(v19 + 8 * v26);
          if (v35 >= 0)
          {
            v36 = *(v19 + 8 * v26);
          }

          else
          {
            v36 = -v35;
          }

          if (v24 == *(v32 + 4 * v26))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v54 = 0;
                if (((v35 & 0x4000000000000000) != 0) ^ __OFSUB__(v35, -v35) | (v35 == -v35))
                {
                  v35 = -v35;
                }

                v55 = v33 + v27 * (v35 - 1);
                v56 = v34;
                do
                {
                  v57 = 0;
                  v58 = 0;
                  do
                  {
                    v59 = *(v55 + 8 * v57);
                    *(v56 + 8 * v57) = v59;
                    *(v56 + v58) = v59;
                    v58 += v28;
                    ++v57;
                  }

                  while (v54 + v57 < v5);
                  ++v54;
                  v56 += v29;
                  v55 += v29;
                }

                while (v54 != v5);
              }
            }

            else if (v5)
            {
              v37 = 0;
              if (((v35 & 0x4000000000000000) != 0) ^ __OFSUB__(v35, -v35) | (v35 == -v35))
              {
                v35 = -v35;
              }

              v38 = v33 + v27 * (v35 - 1);
              v39 = v34;
              v40 = v34;
              v41 = 1;
              do
              {
                v42 = 0;
                v43 = v40;
                do
                {
                  v44 = *(v38 + 8 * v42);
                  *v43 = v44;
                  *(v39 + 8 * v42++) = v44;
                  v43 = (v43 + v28);
                }

                while (v41 != v42);
                ++v37;
                ++v41;
                ++v40;
                v39 += v28;
                v38 += v28;
              }

              while (v37 != v5);
            }
          }

          else if (v5)
          {
            v45 = 0;
            v46 = 0;
            v47 = v33 + 8 * (v36 - 1) * v6;
            v48 = v34;
            do
            {
              v49 = v5;
              v50 = v46;
              v51 = v45;
              v52 = v48;
              do
              {
                if (v35 >= 0)
                {
                  v53 = v51;
                }

                else
                {
                  v53 = v50;
                }

                *v52++ = *(v47 + 8 * v53);
                ++v51;
                v50 += v5;
                --v49;
              }

              while (v49);
              ++v46;
              v48 = (v48 + v28);
              v45 += v5;
            }

            while (v46 != v5);
          }

          ++v26;
          v34 += v27;
        }

        while (v26 != v31);
      }

      v26 = v31;
      ++v24;
    }

    while (v30 != v4);
  }

  (*(v63 + 32))(v19);
LABEL_56:
  v60 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_2367986DC(int a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a2 + 28);
  v13 = ilaenv_NEWLAPACK();
  if (a1 == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = a5 + a6;
  v17 = *(a3 + 88);
  v18 = (a5 + 8 * (*(a3 + 184) + v17) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v18 || (v14 = (v18 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v120 = 8 * v15 * *(a3 + 176), v126 = (v14 + v120), v14 + v120 > v16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (&v126[8 * *(a3 + 168)] <= v16)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v126 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v118 = v14;
  v19 = 0;
  v20 = (a5 + 8 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = a5;
  v119 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v126 = *(*(a4 + 40) + 8 * v19);
    }

    v22 = *(a3 + 96);
    v21 = *(a3 + 104);
    v23 = *(v21 + 8 * (v19 + 1));
    v24 = *(v21 + 8 * v19);
    v25 = *(a3 + 120);
    v26 = *(v25 + 8 * (v19 + 1));
    v27 = *(v25 + 8 * v19);
    v127 = v19 + 1;
    v122 = *(v22 + 4 * v19);
    v123 = *(v22 + 4 * (v19 + 1));
    v28 = *(a2 + 28);
    v29 = *a2;
    if (v23 > v24)
    {
      v30 = 0;
      v31 = *(a3 + 112) + 4 * v24;
      do
      {
        *(v18 + 4 * *(v31 + 4 * v30)) = v30;
        ++v30;
      }

      while (v23 - v24 != v30);
    }

    v32 = v23 - v24;
    v33 = v32;
    v124 = v26 - v27;
    v125 = v32;
    bzero(v126, (v26 - v27) * 8 * v32);
    v34 = *(a3 + 120);
    v35 = *(v34 + 8 * v19);
    v36 = *(v34 + 8 * v127);
    if (v35 < v36)
    {
      v37 = *(a3 + 128);
      v38 = *(a3 + 136);
      if (v28 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v28;
      }

      v40 = 8 * (v28 * v28);
      v41 = v126;
      do
      {
        v42 = *(v37 + 8 * v35);
        v43 = v42 / v38;
        v44 = v42 % v38;
        if ((v42 / v38))
        {
          v45 = (v43 << 32) - 0x100000000;
          v46 = *(a3 + 104);
          v47 = *(v46 + 8 * v43);
          v48 = v45 >> 29;
          v49 = *(v46 + (v45 >> 29));
          v50 = *(*(a3 + 96) + 4 * v43) - *(*(a3 + 96) + (v45 >> 30));
          v51 = v49 + v44 + v50;
          if (v51 < v47)
          {
            v52 = *(a3 + 112);
            v53 = (*(v128 + v48) + (8 * (v47 - v49) - 8 * v50 + 8) * v44);
            do
            {
              v54 = *v53++;
              *&v41[8 * *(v18 + 4 * *(v52 + 4 * v51++))] = v54;
            }

            while (v51 < v47);
          }
        }

        else
        {
          v55 = v44 / v28;
          v56 = (*(a2 + 1) + 8 * (v44 / v28));
          v57 = *v56;
          v58 = v56[1];
          if ((a2[6] & 0xC) == 4)
          {
            if (v57 < v58)
            {
              v59 = *(a2 + 2);
              v60 = (v55 * v28);
              v61 = v40 * v57;
              do
              {
                v62 = *(v59 + 4 * v57);
                if ((v62 & 0x80000000) == 0 && v62 < v29)
                {
                  v63 = a2[6];
                  v64 = v63 & 2;
                  if ((v55 <= v62 || v64 == 0) && (v55 >= v62 || v64 != 0))
                  {
                    v67 = *(a2 + 4);
                    v68 = v44 % v28;
                    v69 = v44 % v28 * v28;
                    v70 = *(a3 + 200);
                    if (v55 == v62)
                    {
                      if (v70)
                      {
                        v71 = (v70 + v60);
                        v72 = (v18 + 4 * v60);
                        v73 = v39;
                        v74 = v67 + 8 * v69;
                        do
                        {
                          v75 = *v71++;
                          if ((v75 & 1) == 0)
                          {
                            *&v41[8 * *v72] = *(v74 + v61);
                          }

                          ++v72;
                          v74 += 8;
                          --v73;
                        }

                        while (v73);
                      }

                      else if ((v63 & 2) != 0)
                      {
                        v82 = v68;
                        v83 = v67 + 8 * v69 + 8 * v68;
                        do
                        {
                          *&v41[8 * *(v18 + 4 * v60 + 4 * v82++)] = *(v83 + v61);
                          v83 += 8;
                        }

                        while (v82 < v28);
                      }

                      else if ((v68 & 0x80000000) == 0)
                      {
                        v87 = (v68 + 1);
                        v88 = v67 + 8 * v69;
                        v89 = (v18 + 4 * v60);
                        do
                        {
                          v90 = *v89++;
                          *&v41[8 * v90] = *(v88 + v61);
                          v88 += 8;
                          --v87;
                        }

                        while (v87);
                      }
                    }

                    else
                    {
                      v76 = (v62 * v28);
                      v77 = (v18 + 4 * v76);
                      if (v70)
                      {
                        v78 = (v70 + v76);
                        v79 = (v67 + v61 + 8 * v69);
                        v80 = v39;
                        do
                        {
                          v81 = *v78++;
                          if ((v81 & 1) == 0)
                          {
                            *&v41[8 * *v77] = *v79;
                          }

                          ++v77;
                          ++v79;
                          --v80;
                        }

                        while (v80);
                      }

                      else
                      {
                        v84 = v67 + 8 * v69;
                        v85 = v39;
                        do
                        {
                          v86 = *v77++;
                          *&v41[8 * v86] = *(v84 + v61);
                          v84 += 8;
                          --v85;
                        }

                        while (v85);
                      }
                    }
                  }
                }

                ++v57;
                v61 += v40;
              }

              while (v57 != v58);
            }
          }

          else if (v57 < v58)
          {
            v91 = *(a2 + 2);
            v92 = v40 * v57 + 8 * v28 * (v44 % v28);
            do
            {
              v93 = *(v91 + 4 * v57);
              if ((v93 & 0x80000000) == 0 && v93 < v29)
              {
                v94 = *(a2 + 4);
                v95 = *(a3 + 200);
                v96 = (v93 * v28);
                v97 = (v18 + 4 * v96);
                if (v95)
                {
                  v98 = (v95 + v96);
                  v99 = (v94 + v92);
                  v100 = v39;
                  do
                  {
                    v101 = *v98++;
                    if ((v101 & 1) == 0)
                    {
                      *&v41[8 * *v97] = *v99;
                    }

                    ++v97;
                    ++v99;
                    --v100;
                  }

                  while (v100);
                }

                else
                {
                  v102 = v39;
                  do
                  {
                    v103 = *v97++;
                    *&v41[8 * v103] = *(v94 + v92);
                    v94 += 8;
                    --v102;
                  }

                  while (v102);
                }
              }

              ++v57;
              v92 += v40;
            }

            while (v57 != v58);
          }
        }

        v41 += 8 * v33;
        ++v35;
      }

      while (v35 != v36);
    }

    v104 = *(a3 + 152);
    v105 = *(v104 + 4 * v127);
    if (v105 > *(v104 + 4 * v19))
    {
      do
      {
        v106 = v105 - 1;
        v107 = *(*(a3 + 160) + 4 * v105 - 4);
        v108 = *(*(a3 + 96) + 4 * (v107 + 1)) - *(*(a3 + 96) + 4 * v107);
        v109 = *(*(a3 + 104) + 8 * (v107 + 1)) - *(*(a3 + 104) + 8 * v107);
        v110 = *(*(a3 + 120) + 8 * (v107 + 1)) - *(*(a3 + 120) + 8 * v107);
        if (v109 < v110)
        {
          v110 = *(*(a3 + 104) + 8 * (v107 + 1)) - *(*(a3 + 104) + 8 * v107);
        }

        *(v128 + 8 * v107) = 0;
        v20 += 8 * (v110 - v108) * (v108 - v109);
        v105 = v106;
      }

      while (v106 > *(*(a3 + 152) + 4 * v19));
    }

    v111 = v123 - v122;
    a1 = v119;
    if (v125 <= v123 - v122)
    {
      v113 = v20;
      v20 = 0;
    }

    else
    {
      v112 = v125 >= v124 ? v124 : v125;
      *(v128 + 8 * v19) = v20;
      v113 = v20 + 8 * (v112 - v111) * (v125 - (v123 - v122));
    }

    v114 = *(*(a3 + 104) + 8 * v19);
    v115 = *(a3 + 144) + 4 * v114;
    if (v119 == 40 ? sub_23670590C(v124, v125, v111, v115, v126, v125, 0, v33, *(a4 + 56) + 8 * v114, v20, v118, v120) : sub_23670590C(v124, v125, v111, v115, v126, v125, *(*(a4 + 40) + 8 * v19), v33, 0, v20, v118, v120))
    {
      break;
    }

    ++v19;
    v20 = v113;
    if (v127 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

uint64_t sub_236798D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, int *a7, _DWORD *a8)
{
  *a6 = 0;
  *a7 = 0;
  v8 = *(a2 + 4);
  if (v8 >= 1)
  {
    v9 = *(a2 + 8);
    v10 = 0x7FFFFFFF;
    do
    {
      v11 = v8--;
      v12 = (v9 + 8 * *(a4 + 4 * v8));
      v14 = *v12;
      v13 = v12[1];
      v15 = v13 <= v14;
      v16 = v13 - v14;
      if (!v15)
      {
        v17 = (*(a2 + 16) + 4 * v14);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if ((v19 & 0x80000000) == 0 && v18 < *a2)
          {
            v20 = *(a3 + 4 * v18);
            if (v10 >= v20)
            {
              v10 = v20;
            }
          }

          --v16;
        }

        while (v16);
      }

      if (v11 > *(a2 + 4) + ~*a6 && v8 == v10)
      {
        ++*a6;
      }

      else if (v8 == v10)
      {
        v22 = *a7 + 1;
        *a7 = v22;
        a8[v22] = v8;
      }
    }

    while (v11 > 1);
    LODWORD(v8) = *(a2 + 4);
  }

  *a8 = v8 - *a6;
  *a5 = 0;
  v23 = *a7;
  if (*a7 < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    do
    {
      v25 = v23 - 1;
      if (a8[v23 - 1] - a8[v23] > 1)
      {
        break;
      }

      *a5 = ++v24;
      --v23;
    }

    while ((v25 + 1) > 1);
    v23 = *a7;
  }

  v26 = v23 - v24;
  *a7 = v26;
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = a8[v28];
      v30 = v27 + v26;
      a8[v28] = a8[v30];
      a8[v30] = v29;
      ++v28;
      v26 = *a7;
      --v27;
    }

    while (v28 < (*a7 + 1) / 2);
  }

  return 0;
}

SparseOpaquePreconditioner_Double *__cdecl _SparseCreatePreconditioner_Double(SparseOpaquePreconditioner_Double *__return_ptr retstr, SparsePreconditioner_t type, SparseMatrix_Double *A)
{
  if (type <= SparsePreconditionerUser)
  {
    if (type)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_236799B98();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236799BE0();
    }

    _SparseTrap();
  }

  if (type == SparsePreconditionerDiagonal)
  {
    v5 = *(&A->structure.blockSize + 2);
    v6 = A->structure.rowCount * v5;
    v7 = A->structure.columnCount * v5;
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *&retstr->type = 2;
    result = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    v10 = result;
    retstr->mem = result;
    retstr->apply = sub_236799AD8;
    if (v8 >= 1)
    {
      memset_pattern16(result, &unk_23681FAF0, 8 * v8);
    }

    if ((*&A->structure.attributes & 0xC) != 8)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = *(&A->structure.blockSize + 2);
        columnStarts = A->structure.columnStarts;
        v16 = *columnStarts;
        v17 = 8 * (v14 * v14);
        do
        {
          v18 = v12 + 1;
          v19 = columnStarts[v12 + 1];
          if (v16 < v19)
          {
            result = (v10 + 8 * v13);
            rowIndices = A->structure.rowIndices;
            v21 = v17 * v16;
            do
            {
              if (v12 == rowIndices[v16] && v14 != 0)
              {
                v23 = (A->data + v21);
                v24 = (v10 + 8 * v13);
                v25 = v14;
                do
                {
                  if (*v23 != 0.0)
                  {
                    *v24 = 1.0 / *v23;
                  }

                  v23 += v14 + 1;
                  ++v24;
                  --v25;
                }

                while (v25);
              }

              ++v16;
              v21 += v17;
            }

            while (v16 != v19);
          }

          v13 += v14;
          v16 = v19;
          ++v12;
        }

        while (v18 != columnCount);
      }
    }
  }

  else
  {

    sub_236799078(A, retstr);
  }

  return result;
}

void sub_236799078(uint64_t a1@<X0>, void *a2@<X8>)
{
  v179[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 28);
  v5 = (*(a1 + 4) * v4);
  *a2 = 0;
  *a2 = 3;
  v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  v7 = v6;
  a2[1] = v6;
  a2[2] = sub_236799AD8;
  v8 = (v4 * v4);
  v9 = (*(a1 + 24) >> 2) & 3;
  if ((v9 - 1) >= 2)
  {
    if (v9 != 3)
    {
      if (*(a1 + 24))
      {
        bzero(v6, 8 * v5);
        v138 = *(a1 + 4);
        if (v138 >= 1)
        {
          v139 = 0;
          v140 = *(a1 + 8);
          v141 = *v140;
          v142 = 8 * (v4 * v4);
          do
          {
            v143 = v140[++v139];
            if (v141 < v143)
            {
              v144 = *(a1 + 16);
              v145 = v142 * v141;
              do
              {
                v146 = *(v144 + 4 * v141);
                if ((v146 & 0x80000000) == 0 && v146 < *a1 && v4)
                {
                  v147 = 0;
                  v148 = &v7[(v146 * v4)];
                  v149 = (*(a1 + 32) + v145);
                  do
                  {
                    v150 = v4;
                    v151 = v149;
                    v152 = v148;
                    do
                    {
                      v153 = *v151++;
                      *v152 = *v152 + v153 * v153;
                      ++v152;
                      --v150;
                    }

                    while (v150);
                    ++v147;
                    v149 += v4;
                  }

                  while (v147 != v4);
                }

                ++v141;
                v145 += v142;
              }

              while (v141 != v143);
            }

            v141 = v143;
          }

          while (v139 != v138);
        }

        if (v5 >= 1)
        {
          do
          {
            v154 = fabs(*v7);
            v155 = 1.0;
            if (v154 >= 2.22044605e-16)
            {
              v155 = 1.0 / sqrt(v154);
            }

            *v7++ = v155;
            --v5;
          }

          while (v5);
        }
      }

      else if (*(a1 + 4) >= 1)
      {
        v158 = 0;
        v159 = 8 * v4;
        v160 = 8 * (v4 * v4);
        v161 = (8 * v4 + 15) & 0xFF0;
        do
        {
          v6 = MEMORY[0x28223BE20](v6);
          v162 = (v179 - v161);
          if (v4)
          {
            bzero(v179 - v161, 8 * v4);
          }

          v163 = *(a1 + 8);
          v164 = *(v163 + 8 * v158++);
          v165 = *(v163 + 8 * v158);
          if (v164 < v165)
          {
            v166 = *(a1 + 16);
            v167 = v160 * v164;
            do
            {
              v168 = *(v166 + 4 * v164);
              if ((v168 & 0x80000000) == 0 && v168 < *a1 && v4)
              {
                v169 = 0;
                v170 = (*(a1 + 32) + v167);
                do
                {
                  v171 = v162[v169];
                  v172 = v4;
                  v173 = v170;
                  do
                  {
                    v174 = *v173++;
                    v171 = v171 + v174 * v174;
                    --v172;
                  }

                  while (v172);
                  v162[v169++] = v171;
                  v170 = (v170 + v159);
                }

                while (v169 != v4);
              }

              ++v164;
              v167 += v160;
            }

            while (v164 != v165);
          }

          v175 = v4;
          v176 = v7;
          if (v4)
          {
            do
            {
              v177 = 1.0;
              if (*v162 >= 2.22044605e-16)
              {
                v177 = 1.0 / sqrt(*v162);
              }

              *v176++ = v177;
              ++v162;
              --v175;
            }

            while (v175);
          }

          v7 = (v7 + v159);
        }

        while (v158 < *(a1 + 4));
      }

      goto LABEL_186;
    }

    bzero(v6, 8 * v5);
    v47 = *(a1 + 4);
    if (v47 < 1)
    {
LABEL_82:
      if (v5 >= 1)
      {
        do
        {
          v86 = fabs(*v7);
          v87 = 1.0;
          if (v86 >= 2.22044605e-16)
          {
            v87 = 1.0 / sqrt(v86);
          }

          *v7++ = v87;
          --v5;
        }

        while (v5);
      }

      goto LABEL_186;
    }

    v48 = 0;
    v49 = *(a1 + 8);
    v50 = *v49;
    v51 = 8 * (v4 * v4);
    v52 = 8 * v4;
    v179[0] = v7 + 1;
    while (1)
    {
      v53 = v48 + 1;
      v54 = v49[v48 + 1];
      if (v50 < v54)
      {
        break;
      }

LABEL_81:
      v50 = v54;
      ++v48;
      if (v53 == v47)
      {
        goto LABEL_82;
      }
    }

    v55 = &v7[v48 * v4];
    v56 = *(a1 + 16);
    v57 = v51 * v50;
    v58 = v51 * v50 + 8;
    while (1)
    {
      v59 = *(v56 + 4 * v50);
      v60 = v59;
      if ((*(a1 + 24) & 2) != 0)
      {
        if (v48 <= v59 && v59 < *a1)
        {
          v68 = v59 * v4;
          v69 = *(a1 + 32);
          v63 = (v69 + 8 * v50 * v8);
          if (v48 == v60)
          {
            if (v4)
            {
              v70 = 0;
              v71 = (v69 + v58);
              v72 = v4 - 1;
              v73 = v179[0] + 8 * v68;
              do
              {
                v74 = v63[v70 + (v70 * v4)];
                v55[v70] = v55[v70] + v74 * v74;
                v75 = v70 + 1;
                if (v70 + 1 < v4)
                {
                  v76 = v72;
                  v77 = v73;
                  v78 = v71;
                  do
                  {
                    v55[v70] = v55[v70] + *v78 * *v78;
                    v79 = *v78++;
                    *v77 = *v77 + v79 * v79;
                    ++v77;
                    --v76;
                  }

                  while (v76);
                }

                v71 += v4 + 1;
                v73 += 8;
                --v72;
                ++v70;
              }

              while (v75 != v4);
            }

            goto LABEL_80;
          }

          goto LABEL_75;
        }
      }

      else if (v48 >= v59)
      {
        v61 = v59 * v4;
        v62 = *(a1 + 32);
        v63 = (v62 + 8 * v50 * v8);
        if (v48 != v60)
        {
          v68 = v61;
LABEL_75:
          if (v4)
          {
            v80 = 0;
            v81 = &v7[v68];
            do
            {
              v82 = v4;
              v83 = v81;
              v84 = v63;
              do
              {
                v55[v80] = v55[v80] + *v84 * *v84;
                v85 = *v84++;
                *v83 = *v83 + v85 * v85;
                ++v83;
                --v82;
              }

              while (v82);
              ++v80;
              v63 = (v63 + v52);
            }

            while (v80 != v4);
          }

          goto LABEL_80;
        }

        if (v4)
        {
          v64 = 0;
          v65 = &v7[v61];
          v66 = v62 + v57;
          do
          {
            if (v64)
            {
              for (i = 0; i != v64; ++i)
              {
                v55[v64] = v55[v64] + *(v66 + 8 * i) * *(v66 + 8 * i);
                v65[i] = v65[i] + *(v66 + 8 * i) * *(v66 + 8 * i);
              }
            }

            v55[v64] = v55[v64] + v63[v64 * (v4 + 1)] * v63[v64 * (v4 + 1)];
            ++v64;
            v66 += v52;
          }

          while (v64 != v4);
        }
      }

LABEL_80:
      ++v50;
      v58 += v51;
      v57 += v51;
      if (v50 == v54)
      {
        goto LABEL_81;
      }
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 4) < 1)
    {
      goto LABEL_186;
    }

    v88 = 0;
    while (1)
    {
      v89 = MEMORY[0x28223BE20](v88);
      v100 = (v179 - v99);
      if (v4)
      {
        if ((*(a1 + 24) & 0xC) == 8)
        {
          v101 = v97;
        }

        else
        {
          v101 = v98;
        }

        v102 = v100 + 1;
        v103 = v91;
        v104 = v95;
        do
        {
          v105 = vmovn_s64(vcgeq_u64(v94, v104));
          if (v105.i8[0])
          {
            *(v102 - 1) = v101;
          }

          if (v105.i8[4])
          {
            *v102 = v101;
          }

          v104 = vaddq_s64(v104, v96);
          v102 += 2;
          v103 -= 2;
        }

        while (v103);
      }

      v106 = *(a1 + 8);
      v107 = *(v106 + 8 * v89);
      v108 = v89 + 1;
      v109 = *(v106 + 8 * (v89 + 1));
      if (v107 < v109)
      {
        break;
      }

LABEL_137:
      v135 = v4;
      v136 = v7;
      if (v4)
      {
        do
        {
          v137 = 1.0;
          if (*v100 >= v93)
          {
            v137 = v97 / sqrt(*v100);
          }

          *v136++ = v137;
          ++v100;
          --v135;
        }

        while (v135);
      }

      v7 = (v7 + v90);
      v88 = v89 + 1;
      if (v108 >= *(a1 + 4))
      {
        goto LABEL_186;
      }
    }

    v110 = *(a1 + 16);
    v111 = *(a1 + 24);
    v112 = v111 & 0xC;
    v113 = v92 * v107;
    while (1)
    {
      v114 = *(v110 + 4 * v107);
      v115 = v114;
      if ((v111 & 2) != 0)
      {
        if (v89 <= v114 && v114 < *a1)
        {
          v121 = *(a1 + 32);
          if (v89 == v114)
          {
            if (v4)
            {
              v122 = 0;
              v123 = v121 + v113;
              do
              {
                if (v112 == 8)
                {
                  v124 = v122 + 1;
                }

                else
                {
                  v124 = v122;
                }

                if (v124 < v4)
                {
                  v125 = v100[v122];
                  v126 = (v123 + 8 * v124);
                  v127 = v4 - v124;
                  do
                  {
                    v128 = *v126++;
                    v125 = v125 + v128 * v128;
                    --v127;
                  }

                  while (v127);
                  v100[v122] = v125;
                }

                ++v122;
                v123 += v90;
              }

              while (v122 != v4);
            }

            goto LABEL_136;
          }

          v129 = (v121 + 8 * v107 * v8);
          if (v4)
          {
            goto LABEL_132;
          }
        }
      }

      else if (v89 >= v114)
      {
        v116 = *(a1 + 32);
        if (v89 == v115)
        {
          if (v4)
          {
            for (j = 0; j != v4; ++j)
            {
              if (v112 == 8)
              {
                LODWORD(v118) = j;
              }

              else
              {
                LODWORD(v118) = j + 1;
              }

              v118 = v118;
              if (v118)
              {
                v119 = v100[j];
                v120 = v116;
                do
                {
                  v119 = v119 + *(v120 + v113) * *(v120 + v113);
                  v120 += 8;
                  --v118;
                }

                while (v118);
                v100[j] = v119;
              }

              v116 += v90;
            }
          }

          goto LABEL_136;
        }

        v129 = (v116 + 8 * v107 * v8);
        if (v4)
        {
LABEL_132:
          for (k = 0; k != v4; ++k)
          {
            v131 = v100[k];
            v132 = v4;
            v133 = v129;
            do
            {
              v134 = *v133++;
              v131 = v131 + v134 * v134;
              --v132;
            }

            while (v132);
            v100[k] = v131;
            v129 = (v129 + v90);
          }
        }
      }

LABEL_136:
      ++v107;
      v113 += v92;
      if (v107 == v109)
      {
        goto LABEL_137;
      }
    }
  }

  bzero(v6, 8 * v5);
  v10 = *(a1 + 4);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 8);
    v13 = *v12;
    v14 = 8 * (v4 * v4);
    v15 = 8 * v4;
    while (1)
    {
      v16 = v11 + 1;
      v17 = v12[v11 + 1];
      if (v13 < v17)
      {
        break;
      }

LABEL_44:
      v13 = v17;
      ++v11;
      if (v16 == v10)
      {
        goto LABEL_45;
      }
    }

    v18 = *(a1 + 16);
    v19 = v14 * v13;
    while (1)
    {
      v20 = *(v18 + 4 * v13);
      v21 = *(v18 + 4 * v13);
      v22 = *(a1 + 24);
      if ((v22 & 2) != 0)
      {
        if (v11 <= v20 && v21 < *a1)
        {
          v31 = *(a1 + 32);
          if (v11 == v20)
          {
            if (v4)
            {
              v32 = 0;
              v33 = &v7[v21 * v4];
              v34 = v31 + v19;
              do
              {
                if ((*(a1 + 24) & 0xC) == 8)
                {
                  v35 = v32 + 1;
                }

                else
                {
                  v35 = v32;
                }

                if (v35 < v4)
                {
                  v36 = &v33[v35];
                  v37 = (v34 + 8 * v35);
                  v38 = v4 - v35;
                  do
                  {
                    v39 = *v37++;
                    *v36 = *v36 + v39 * v39;
                    ++v36;
                    --v38;
                  }

                  while (v38);
                }

                ++v32;
                v34 += v15;
              }

              while (v32 != v4);
            }

            goto LABEL_43;
          }

          v40 = (v31 + 8 * v13 * v8);
          if (v4)
          {
            goto LABEL_39;
          }
        }
      }

      else if (v11 >= v20)
      {
        v23 = *(a1 + 32);
        if (v11 == v20)
        {
          if (v4)
          {
            v24 = 0;
            v25 = &v7[v20 * v4];
            v26 = v23 + v19;
            do
            {
              v27 = v24 + 1;
              if ((v22 & 0xC) != 8 || v24 != 0)
              {
                v29 = 0;
                do
                {
                  v25[v29] = v25[v29] + *(v26 + 8 * v29) * *(v26 + 8 * v29);
                  ++v29;
                  v22 = *(a1 + 24);
                  if ((v22 & 0xC) == 8)
                  {
                    v30 = v24;
                  }

                  else
                  {
                    v30 = v24 + 1;
                  }
                }

                while (v29 < v30);
              }

              v26 += v15;
              ++v24;
            }

            while (v27 != v4);
          }

          goto LABEL_43;
        }

        v40 = (v23 + 8 * v13 * v8);
        if (v4)
        {
LABEL_39:
          v41 = 0;
          v42 = &v7[v21 * v4];
          do
          {
            v43 = v4;
            v44 = v40;
            v45 = v42;
            do
            {
              v46 = *v44++;
              *v45 = *v45 + v46 * v46;
              ++v45;
              --v43;
            }

            while (v43);
            ++v41;
            v40 = (v40 + v15);
          }

          while (v41 != v4);
        }
      }

LABEL_43:
      ++v13;
      v19 += v14;
      if (v13 == v17)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if ((*(a1 + 24) & 0xC) == 8)
  {
    if (v5 >= 1)
    {
      do
      {
        *v7 = 1.0 / sqrt(*v7 + 1.0);
        ++v7;
        --v5;
      }

      while (v5);
    }
  }

  else if (v5 >= 1)
  {
    do
    {
      v156 = fabs(*v7);
      v157 = 1.0;
      if (v156 >= 2.22044605e-16)
      {
        v157 = 1.0 / sqrt(v156);
      }

      *v7++ = v157;
      --v5;
    }

    while (v5);
  }

LABEL_186:
  v178 = *MEMORY[0x277D85DE8];
}

double *sub_236799AD8(double *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(a3 + v4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4;
    if ((*(a3 + 12) & 1) == 0)
    {
      v7 = 0;
    }

    v8 = *(a3 + v7);
    v9 = *(a3 + 16);
    v10 = *(a3 + 8);
    v11 = *(a4 + 16);
    v12 = *(a4 + 8);
    do
    {
      if (*(a3 + 12))
      {
        v13 = v6;
      }

      else
      {
        v13 = v10 * v6;
      }

      if (*(a3 + 12))
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      v15 = *(a4 + 12);
      if (v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v12 * v6;
      }

      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v8 >= 1)
      {
        v18 = (v9 + 8 * v13);
        v19 = 8 * v17;
        v20 = 8 * v14;
        v21 = v8;
        v22 = result;
        v23 = (v11 + 8 * v16);
        do
        {
          v24 = *v22++;
          *v23 = v24 * *v18;
          v23 = (v23 + v19);
          v18 = (v18 + v20);
          --v21;
        }

        while (v21);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t SparseWriteMatrix(__sFILE *a1, int a2, const char *a3, SparseMatrix_Double *a4)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *&a4->structure.rowIndices;
  v8[0] = *&a4->structure.rowCount;
  v8[1] = v7;
  data = a4->data;
  return sub_236700018(a1, a3, v8);
}

uint64_t SparseWriteBinaryMatrix(int a1, int a2, const char *a3, size_t a4, SparseMatrix_Double *a5, DenseMatrix_Double *a6, DenseMatrix_Double *a7)
{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *&a5->structure.rowIndices;
  v11[0] = *&a5->structure.rowCount;
  v11[1] = v9;
  data = a5->data;
  return sub_2367A5454(a1, a3, a4, v11, a6, a7);
}

int *SparseReadMatrix_Double(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_23670039C(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_236769998(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Double(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23673AC48(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Double(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F78D8(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23673AE54(a1, a2, a3, a5);
}

uint64_t SparseWriteMatrix(__sFILE *a1, int a2, const char *a3, SparseMatrix_Float *a4)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *&a4->structure.rowIndices;
  v8[0] = *&a4->structure.rowCount;
  v8[1] = v7;
  data = a4->data;
  return sub_23674ED2C(a1, a3, v8);
}

uint64_t SparseWriteBinaryMatrix(int a1, int a2, const char *a3, size_t a4, SparseMatrix_Float *a5, DenseMatrix_Float *a6, DenseMatrix_Float *a7)
{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *&a5->structure.rowIndices;
  v11[0] = *&a5->structure.rowCount;
  v11[1] = v9;
  data = a5->data;
  return sub_2366F76AC(a1, a3, a4, v11, a6, a7);
}

int *SparseReadMatrix_Float(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_23674F0B4(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_2366F7F80(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Float(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23674CB90(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Float(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F75B4(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23674CD8C(a1, a2, a3, a5);
}

uint64_t SparseWriteMatrix(FILE *a1, int a2, const char *a3, uint64_t a4)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v7;
  v9 = *(a4 + 32);
  return sub_2367502D8(a1, a3, v8);
}

{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v4;
  v11 = v5;
  v7 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v7;
  v9 = *(a4 + 32);
  return sub_23674F7C4(a1, a3, v8);
}

uint64_t SparseWriteBinaryMatrix(int a1, int a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *(a5 + 16);
  v11[0] = *a5;
  v11[1] = v9;
  v12 = *(a5 + 32);
  return sub_2366F7CF4(a1, a3, a4, v11, a6, a7);
}

{
  if (a2 != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v8;
  v9 = *(a5 + 16);
  v11[0] = *a5;
  v11[1] = v9;
  v12 = *(a5 + 32);
  return sub_2366F79D0(a1, a3, a4, v11, a6, a7);
}

int *SparseReadMatrix_Complex_Double(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_236750674(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_2366F89C4(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Complex_Double(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23674D068(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Complex_Double(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F7BFC(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23674D278(a1, a2, a3, a5);
}

int *SparseReadMatrix_Complex_Float(__sFILE *a1, uint64_t a2, size_t a3, char *a4)
{
  if ((a2 - 2) < 2)
  {
    fwrite("File format only supported with SparseReadBinaryMatrix_*\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return sub_23674FB68(a1, a2, a3, a4);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a2);
    return 0;
  }

  return sub_2366F843C(a1, 1, a3, a4);
}

int32x2_t *SparseReadBinaryMatrix_Complex_Float(int64x2_t *a1, unint64_t a2, uint64_t a3, char **a4, unint64_t *a5, int a6)
{
  if (a3 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return sub_2366F7434(a1, a2, a3, a4, a5, a6);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a3);
    return 0;
  }

  return sub_23674CE54(a1->i32);
}

_DWORD *SparseReadBinaryAuxilaryData_Complex_Float(int a1, char *a2, unint64_t a3, unsigned int a4, int a5)
{
  if (a4 < 2)
  {
    fwrite("File format only supported with SparseReadMatrix_*\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {

      return sub_2366F78D8(a1, a2, a3, a5);
    }

    fprintf(*MEMORY[0x277D85DF8], "Unrecognised sparse file format %d\n", a4);
    return 0;
  }

  return sub_23673AE54(a1, a2, a3, a5);
}

int *sub_23679A71C(int *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v11 = *(result + 28);
  if (*result * v11 >= 1)
  {
    v12 = 0;
    do
    {
      *(a6 + 4 * v12++) = -1;
    }

    while (v12 < *result * v11);
  }

  if (a4)
  {
    v13 = *a4;
    if ((v13 & 0x80000000) == 0)
    {
      v14 = a4 + 1;
      do
      {
        *(a6 + 4 * v13) = 0x7FFFFFFF;
        v15 = *v14++;
        v13 = v15;
      }

      while ((v15 & 0x80000000) == 0);
    }
  }

  v16 = *(a2 + 64);
  if (v16 <= 0)
  {
    v27 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    result = *(a2 + 96);
    v19 = *(a2 + 104);
    v21 = *(a2 + 72);
    v20 = *(a2 + 80);
    v52 = result;
    do
    {
      v22 = *(a2 + 120);
      *(v22 + 8 * v17) = v18;
      v23 = *(a3 + 4 * v17);
      v24 = v17 + 1;
      v25 = *(a3 + 4 * (v17 + 1));
      if (v23 >= v25)
      {
        v27 = v18;
      }

      else
      {
        v26 = *(v10 + 28);
        v27 = v18;
        do
        {
          if (v26)
          {
            v28 = 0;
            do
            {
              v29 = *(a5 + 4 * v23);
              v30 = v28 + v29 * v26;
              if (v17 > *(a6 + 4 * v30))
              {
                *(*(a2 + 128) + 4 * v27++) = v28 + v29 * v26;
                *(a6 + 4 * v30) = v17;
              }

              ++v28;
            }

            while (v26 != v28);
            v25 = *(a3 + 4 * v24);
          }

          ++v23;
        }

        while (v23 < v25);
      }

      v31 = result[v17];
      v32 = result[v24];
      if (v31 < v32)
      {
        do
        {
          v33 = (v22 + 8 * *(v19 + 4 * v31));
          v35 = *v33;
          v34 = v33[1];
          v36 = v34 <= v35;
          v37 = v34 - v35;
          if (!v36)
          {
            v38 = *(a2 + 128);
            v39 = (v38 + 4 * v35);
            do
            {
              v41 = *v39++;
              v40 = v41;
              if (v17 > *(a6 + 4 * v41) && *(v20 + 4 * v40) >= *(*(a2 + 88) + 4 * v17))
              {
                *(v38 + 4 * v27++) = v40;
                *(a6 + 4 * v40) = v17;
              }

              --v37;
            }

            while (v37);
            v32 = result[v24];
          }

          ++v31;
        }

        while (v31 < v32);
        v25 = *(a3 + 4 * v24);
      }

      v42 = *(a3 + 4 * v17);
      if (v42 < v25)
      {
        v43 = *(v10 + 1);
        do
        {
          v44 = (v43 + 8 * *(a5 + 4 * v42));
          v45 = *v44;
          v46 = v44[1];
          if (v45 < v46)
          {
            v47 = *(v10 + 2);
            do
            {
              v48 = *(v47 + 4 * v45);
              if (v42 <= *(v21 + 4 * v48))
              {
                v49 = *(v10 + 28);
                if (*(v10 + 28))
                {
                  v50 = v48 * v49;
                  v51 = (a6 + 4 * v50);
                  do
                  {
                    if (v17 > *v51)
                    {
                      *(*(a2 + 128) + 4 * v27++) = v50;
                      *v51 = v17;
                    }

                    ++v50;
                    ++v51;
                    --v49;
                  }

                  while (v49);
                }
              }

              ++v45;
            }

            while (v45 != v46);
            v25 = *(a3 + 4 * v24);
          }

          ++v42;
        }

        while (v42 < v25);
      }

      sub_23670DC88(*(a2 + 128) + 4 * v18, v27 - v18, v20);
      v16 = *(a2 + 64);
      v17 = v24;
      v18 = v27;
      result = v52;
    }

    while (v24 < v16);
  }

  *(*(a2 + 120) + 8 * v16) = v27;
  return result;
}

void sub_23679A9A8(int *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8, char *__b)
{
  v16 = *a1;
  v17 = a1[1] * *(a1 + 28);
  v18 = &__b[8 * v17 + 48 + 8 * a6 + 4 * v16 + 4 * a6];
  v19 = &v18[v16 * *(a1 + 28) + 8];
  if (a7)
  {
    v18 += v16 * *(a1 + 28) + 8;
  }

  v20 = &__b[4 * v17 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v18 < v20 || (v9 = (v20 + 4 * a6 + 7) & 0xFFFFFFFFFFFFFFF8, v18 < v9) || (v14 = (v9 + 4 * v16 + 7) & 0xFFFFFFFFFFFFFFF8, v18 < v14) || (v11 = (v14 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8, v18 < v11) || (v21 = (v11 + 8 * a6), v21 > v18))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = a8;
  v10 = a3;
  v12 = a2;
  v13 = a1;
  a2 = v16 * *(a1 + 28);
  if (a7)
  {
    if (v19 >= (&v21[a2 + 7] & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_11:
  v21 = 0;
LABEL_12:
  if (v17 >= 1)
  {
    v22 = 0;
    v23 = *(v10 + 64);
    do
    {
      *(v14 + 4 * *(v23 + 4 * v22)) = v22;
      ++v22;
    }

    while (v17 != v22);
  }

  v125 = v9;
  v120 = v11;
  if (a7)
  {
    v24 = v15;
    bzero(v21, a2);
    v26 = a7;
    v15 = v24;
    v27 = *v26;
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v26 + 1;
      do
      {
        v21[v27] = 1;
        v29 = *v28++;
        v27 = v29;
      }

      while ((v29 & 0x80000000) == 0);
    }
  }

  if (v17 >= 1)
  {
    memset(__b, 255, 4 * v17);
  }

  if (v15)
  {
    v30 = *v15;
    if ((v30 & 0x80000000) == 0)
    {
      v31 = *(v10 + 88);
      v32 = v15 + 1;
      do
      {
        *&__b[4 * v30] = v31;
        v33 = *v32++;
        v30 = v33;
      }

      while ((v33 & 0x80000000) == 0);
    }
  }

  v34 = a5;
  v35 = v125;
  if (v17 >= 1)
  {
    v36 = *(v10 + 64);
    v37 = *(v13 + 28);
    v38 = *(v13 + 1);
    do
    {
      v39 = v17--;
      v40 = (v38 + 8 * (*(v36 + 4 * v17) / v37));
      v42 = *v40;
      v41 = v40[1];
      v43 = v41 <= v42;
      v44 = v41 - v42;
      if (!v43)
      {
        v45 = (*(v13 + 2) + 4 * v42);
        do
        {
          v47 = *v45++;
          v46 = v47;
          if ((v47 & 0x80000000) == 0 && v46 < *v13)
          {
            *(v125 + 4 * v46) = v17;
          }

          --v44;
        }

        while (v44);
      }
    }

    while (v39 > 1);
  }

  v48 = *(v10 + 88);
  if (v48 <= 0)
  {
    v117 = 0;
    v50 = 0;
    v118 = *(v10 + 104);
    v119 = *(v10 + 120);
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = *(v10 + 120);
    v53 = *(v10 + 96);
    v121 = v52;
    v122 = *(v10 + 104);
    LODWORD(v54) = *v53;
    do
    {
      v55 = v49;
      *(v122 + 8 * v49) = v50;
      v56 = v51;
      *(v121 + 8 * v49) = v51;
      v57 = v49 + 1;
      v58 = v53[v49 + 1];
      v126 = v49 + 1;
      if (v54 < v58)
      {
        v59 = *(v10 + 64);
        v60 = *(v13 + 28);
        if (v60 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = *(v13 + 28);
        }

        v54 = v54;
        v62 = 0xFFFFFFFFLL;
        do
        {
          v63 = (*(v59 + 4 * v54) / v60);
          if (v63 == v62)
          {
            v63 = v62;
          }

          else
          {
            v64 = (*(v13 + 1) + 8 * v63);
            v65 = *v64;
            v66 = v64[1];
            if (v65 < v66)
            {
              v67 = *(v13 + 2);
              do
              {
                v68 = *(v67 + 4 * v65);
                if ((v68 & 0x80000000) == 0 && v68 < *v13)
                {
                  v69 = *(v35 + 4 * v68);
                  if (v69 == v54)
                  {
                    v70 = 0;
                    v71 = 0;
LABEL_49:
                    ++v70;
                    do
                    {
                      if (!v21 || v21[v68 * v60 - 1 + v70] != 1)
                      {
                        *(*(v10 + 128) + 8 * v51) = v68 * v60 + v70 - 1;
                        *(v20 + 4 * (v51++ - v56)) = v69;
                        v71 = 1;
                        if (v70 != v61)
                        {
                          goto LABEL_49;
                        }

                        goto LABEL_57;
                      }

                      ++v70;
                    }

                    while (v70 - v61 != 1);
                    if ((v71 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

LABEL_57:
                    v72 = (*(v12 + 8) + 8 * v68);
                    v73 = *v72;
                    v74 = v72[1];
                    if (*v72 < v74)
                    {
                      v75 = *(v12 + 16);
                      do
                      {
                        v76 = *(v75 + 4 * v73);
                        if ((v76 & 0x80000000) == 0 && v76 < *v12)
                        {
                          v77 = v76 * v60;
                          v78 = v61;
                          do
                          {
                            if (v55 > *&__b[4 * v77])
                            {
                              *(*(v10 + 112) + 4 * v50++) = v77;
                              *&__b[4 * v77] = v55;
                            }

                            ++v77;
                            --v78;
                          }

                          while (v78);
                        }

                        ++v73;
                      }

                      while (v73 != v74);
                    }

LABEL_66:
                    v35 = v125;
                    v57 = v126;
                  }
                }

                ++v65;
              }

              while (v65 != v66);
              v58 = v53[v57];
              v34 = a5;
            }
          }

          ++v54;
          v62 = v63;
        }

        while (v54 < v58);
      }

      v79 = *(a4 + 4 * v55);
      if (v79 >= *(a4 + 4 * v57))
      {
        v81 = v122;
      }

      else
      {
        v80 = v20 - 4 * v56;
        v81 = v122;
        do
        {
          v82 = *(v34 + 4 * v79);
          v83 = *(v122 + 8 * v82);
          v84 = v82 + 1;
          v85 = *(v122 + 8 * (v82 + 1));
          v86 = v85 - v83;
          if (v85 > v83)
          {
            v87 = *(v10 + 112);
            v88 = (v87 + 4 * v83);
            do
            {
              v90 = *v88++;
              v89 = v90;
              if (v55 > *&__b[4 * v90])
              {
                *(v87 + 4 * v50++) = v89;
                *&__b[4 * v89] = v55;
              }

              --v86;
            }

            while (v86);
          }

          v91 = v53[v84];
          v92 = v53[v82];
          if ((*(v121 + 8 * v84) - *(v121 + 8 * v82)) >= v85 - v83)
          {
            v93 = v85 - v83;
          }

          else
          {
            v93 = *(v121 + 8 * v84) - *(v121 + 8 * v82);
          }

          if (v91 - v92 < v93)
          {
            v94 = 0;
            v95 = *(v10 + 128) + 8 * v51;
            v96 = *(v10 + 112) + 4 * v83 + 4 * v91 - 4 * v92;
            v97 = v92 + v93 - v91;
            do
            {
              *(v95 + 8 * v94) = v94 + *(v10 + 136) * v84;
              *(v80 + 4 * v51 + 4 * v94) = *(v14 + 4 * *(v96 + 4 * v94));
              ++v94;
            }

            while (v97 != v94);
            v51 += v94;
          }

          ++v79;
        }

        while (v79 < *(a4 + 4 * v57));
      }

      sub_23670DC88(*(v10 + 112) + 4 * *(v81 + 8 * v55), v50 - *(v81 + 8 * v55), v14);
      v98 = *(*(v10 + 120) + 8 * v55);
      sub_23670DCD0(v51 - v98, *(v10 + 128) + 8 * v98, v20, v120);
      v121 = *(v10 + 120);
      v99 = (v51 - *(v121 + 8 * v55));
      v122 = *(v10 + 104);
      v100 = *(v122 + 8 * v55);
      if (v99 < 1)
      {
        v106 = *(v122 + 8 * v55);
        v34 = a5;
        v35 = v125;
        v49 = v126;
        v104 = xmmword_23681F920;
        v103 = xmmword_23681F910;
      }

      else
      {
        v101 = 0;
        v102 = *(v10 + 112);
        v34 = a5;
        v35 = v125;
        v49 = v126;
        v104 = xmmword_23681F920;
        v103 = xmmword_23681F910;
        do
        {
          if (*(v14 + 4 * *(v102 + 4 * v100)) >= *(v20 + 4 * v101))
          {
            v106 = v100;
          }

          else
          {
            v105 = *(v10 + 144);
            do
            {
              *(v105 + 4 * v100) = v101;
              v106 = v100 + 1;
              v107 = *(v14 + 4 * *(v102 + 4 + 4 * v100++));
            }

            while (v107 < *(v20 + 4 * v101));
          }

          ++v101;
          v100 = v106;
        }

        while (v101 != v99);
      }

      v108 = v50 - v106;
      if (v50 > v106)
      {
        v109 = 0;
        v110 = (v108 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v111 = vdupq_n_s64(v108 - 1);
        v112 = (*(v10 + 144) + 4 * v106 + 8);
        do
        {
          v113 = vdupq_n_s64(v109);
          v114 = vmovn_s64(vcgeq_u64(v111, vorrq_s8(v113, v104)));
          if (vuzp1_s16(v114, *v111.i8).u8[0])
          {
            *(v112 - 2) = v99;
          }

          if (vuzp1_s16(v114, *&v111).i8[2])
          {
            *(v112 - 1) = v99;
          }

          if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v111, vorrq_s8(v113, v103)))).i32[1])
          {
            *v112 = v99;
            v112[1] = v99;
          }

          v109 += 4;
          v112 += 4;
        }

        while (v110 != v109);
      }

      v53 = *(v10 + 96);
      v115 = v53[v55];
      LODWORD(v54) = v53[v49];
      if (v115 < v54)
      {
        v116 = *(v10 + 64);
        do
        {
          *&__b[4 * *(v116 + 4 * v115++)] = *(v10 + 88) + 1;
          v54 = v53[v49];
        }

        while (v115 < v54);
      }

      v48 = *(v10 + 88);
    }

    while (v49 < v48);
    v117 = v51;
    v119 = v121;
    v118 = v122;
  }

  *(v118 + 8 * v48) = v50;
  *(v119 + 8 * v48) = v117;
}

int64_t _SparseSpMV_Complex_Float(uint64_t a1, uint64_t a2, char a3, uint64_t a4, float a5, float a6)
{
  v11 = 4;
  if (*(a4 + 12))
  {
    v11 = 0;
  }

  v12 = *(a4 + v11);
  result = *(a1 + 28);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v772 = *(a1 + 32);
  if ((a3 & 1) == 0 && v12 >= 1)
  {
    v16 = 0;
    v17 = 4;
    if ((*(a1 + 24) & 1) == 0)
    {
      v17 = 0;
    }

    v18 = *(a1 + v17) * result;
    do
    {
      if (v18 >= 1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*(a4 + 12))
          {
            v20 = i;
          }

          else
          {
            v20 = v16;
          }

          if (*(a4 + 12))
          {
            v21 = v16;
          }

          else
          {
            v21 = i;
          }

          *(*(a4 + 16) + 8 * (v21 + *(a4 + 8) * v20)) = 0;
        }
      }

      ++v16;
    }

    while (v16 != v12);
  }

  v771 = (result * result);
  v22 = (*(a1 + 24) >> 2) & 7;
  v776 = v12;
  v787 = result;
  v775 = v14;
  v774 = v15;
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v475 = *(a1 + 4);
      if (v475 >= 1)
      {
        v476 = 0;
        v477 = 0;
        v478 = a5;
        v479 = a6;
        v480 = result + 1;
        v481 = 8 * v771;
        v482 = 8 * result;
        v483 = *v14;
        v778 = result - 1;
        v484 = 8 * result + 8;
        v780 = 1;
        do
        {
          result = v477++;
          v485 = v14[v477];
          if (v483 < v485)
          {
            v486 = result * v787;
            v487 = v772 + 4 + v481 * v483;
            v488 = v772 + 12 + v481 * v483;
            do
            {
              v489 = *(v15 + 4 * v483);
              v490 = *(a1 + 24);
              if ((v490 & 2) == 0 || result <= v489)
              {
                v491 = result < v489 && (*(a1 + 24) & 2) == 0;
                if (!v491 && (v489 & 0x80000000) == 0 && v489 < *a1)
                {
                  if (result == v489)
                  {
                    v492 = v772 + 8 * v483 * v771;
                    if ((v490 & 2) != 0)
                    {
                      if (v776 >= 1)
                      {
                        v493 = 0;
                        v494 = v489 * v787;
                        do
                        {
                          v495 = v787;
                          if (v787)
                          {
                            v496 = 0;
                            v497 = v778;
                            v498 = v780;
                            v499 = v494 + 1;
                            v792 = v488;
                            do
                            {
                              v783 = v496 + 1;
                              v786 = v496;
                              if (v496 + 1 < v495)
                              {
                                v500 = 0;
                                v501 = v496 + v486;
                                v502 = v494 + v496;
                                v503 = v792;
                                do
                                {
                                  v504 = *(v503 - 1);
                                  v505 = *v503;
                                  v506 = *(a1 + 24);
                                  if (v506 & 0x20) != 0 && (v506)
                                  {
                                    v507 = v504;
                                    v508 = v478 * v507 + v479 * v505;
                                    v509 = v479 * v507 - v478 * v505;
                                    if (*(a2 + 12))
                                    {
                                      v510 = v501;
                                    }

                                    else
                                    {
                                      v510 = v493;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v511 = v493;
                                    }

                                    else
                                    {
                                      v511 = v501;
                                    }

                                    v512 = (*(a2 + 16) + 8 * (v511 + *(a2 + 8) * v510));
                                    v513 = *v512;
                                    v514 = v512[1];
                                    v515 = v509 * v513 + v508 * v514;
                                    v516 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v517 = v493 + v516 * (v499 + v500);
                                    }

                                    else
                                    {
                                      v517 = v499 + v500 + v493 * v516;
                                    }

                                    v543 = (*(a4 + 16) + 8 * v517);
                                    v544 = v508 * v513 - v509 * v514 + *v543;
                                    v545 = v515 + v543[1];
                                    *v543 = v544;
                                    v543[1] = v545;
                                    v546 = *(v503 - 1);
                                    v547 = *v503;
                                    v548 = v478 * v546 + v479 * v547;
                                    v549 = v479 * v546 - v478 * v547;
                                    if (*(a2 + 12))
                                    {
                                      v550 = v493 + *(a2 + 8) * (v498 + v500);
                                    }

                                    else
                                    {
                                      v550 = v498 + v500 + v493 * *(a2 + 8);
                                    }

                                    v551 = (*(a2 + 16) + 8 * v550);
                                    v552 = *v551;
                                    v553 = v551[1];
                                    v554 = v549 * v552 + v548 * v553;
                                    if (*(a4 + 12))
                                    {
                                      v555 = v502;
                                    }

                                    else
                                    {
                                      v555 = v493;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v556 = v493;
                                    }

                                    else
                                    {
                                      v556 = v502;
                                    }

                                    v540 = (*(a4 + 16) + 8 * (v556 + *(a4 + 8) * v555));
                                    v541 = v548 * v552 - v549 * v553 + *v540;
                                    v542 = v554 + v540[1];
                                  }

                                  else
                                  {
                                    v518 = (a5 * v504) - (a6 * v505);
                                    v519 = (a6 * v504) + (a5 * v505);
                                    if (*(a2 + 12))
                                    {
                                      v520 = v501;
                                    }

                                    else
                                    {
                                      v520 = v493;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v521 = v493;
                                    }

                                    else
                                    {
                                      v521 = v501;
                                    }

                                    v522 = (*(a2 + 16) + 8 * (v521 + *(a2 + 8) * v520));
                                    v523 = v522[1];
                                    v524 = (v518 * *v522) - (v519 * v523);
                                    v525 = (v519 * *v522) + (v518 * v523);
                                    v526 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v527 = v493 + v526 * (v499 + v500);
                                    }

                                    else
                                    {
                                      v527 = v499 + v500 + v493 * v526;
                                    }

                                    v528 = (*(a4 + 16) + 8 * v527);
                                    v529 = v525 + v528[1];
                                    *v528 = v524 + *v528;
                                    v528[1] = v529;
                                    v530 = *(v503 - 1);
                                    v531 = (a5 * v530) - (a6 * *v503);
                                    v532 = (a6 * v530) + (a5 * *v503);
                                    if (*(a2 + 12))
                                    {
                                      v533 = v493 + *(a2 + 8) * (v498 + v500);
                                    }

                                    else
                                    {
                                      v533 = v498 + v500 + v493 * *(a2 + 8);
                                    }

                                    v534 = (*(a2 + 16) + 8 * v533);
                                    v535 = v534[1];
                                    v536 = (v531 * *v534) - (v532 * v535);
                                    v537 = (v532 * *v534) + (v531 * v535);
                                    if (*(a4 + 12))
                                    {
                                      v538 = v502;
                                    }

                                    else
                                    {
                                      v538 = v493;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v539 = v493;
                                    }

                                    else
                                    {
                                      v539 = v502;
                                    }

                                    v540 = (*(a4 + 16) + 8 * (v539 + *(a4 + 8) * v538));
                                    v541 = v536 + *v540;
                                    v542 = v537 + v540[1];
                                  }

                                  *v540 = v541;
                                  v540[1] = v542;
                                  ++v500;
                                  v503 += 2;
                                }

                                while (v497 != v500);
                              }

                              v557 = (v492 + 8 * v786 * v480);
                              v558 = *v557;
                              v559 = v557[1];
                              v560 = *(a1 + 24);
                              if (v560 & 0x20) != 0 && (v560)
                              {
                                v561 = v558;
                                v562 = v559;
                                v563 = v478 * v561 + v479 * v562;
                                v564 = v479 * v561 - v478 * v562;
                                if (*(a2 + 12))
                                {
                                  v565 = v493 + *(a2 + 8) * (v786 + v486);
                                }

                                else
                                {
                                  v565 = v786 + v486 + *(a2 + 8) * v493;
                                }

                                v578 = (*(a2 + 16) + 8 * v565);
                                v579 = *v578;
                                v580 = v578[1];
                                v581 = v564 * v579 + v563 * v580;
                                v582 = *(a4 + 8);
                                if (*(a4 + 12))
                                {
                                  v583 = v493 + v582 * (v494 + v786);
                                }

                                else
                                {
                                  v583 = v494 + v786 + v582 * v493;
                                }

                                v575 = (*(a4 + 16) + 8 * v583);
                                v576 = v563 * v579 - v564 * v580 + *v575;
                                v577 = v581 + v575[1];
                              }

                              else
                              {
                                v566 = (a5 * v558) - (a6 * v559);
                                v567 = (a6 * v558) + (a5 * v559);
                                if (*(a2 + 12))
                                {
                                  v568 = v493 + *(a2 + 8) * (v786 + v486);
                                }

                                else
                                {
                                  v568 = v786 + v486 + *(a2 + 8) * v493;
                                }

                                v569 = (*(a2 + 16) + 8 * v568);
                                v570 = v569[1];
                                v571 = (v566 * *v569) - (v567 * v570);
                                v572 = (v567 * *v569) + (v566 * v570);
                                v573 = *(a4 + 8);
                                if (*(a4 + 12))
                                {
                                  v574 = v493 + v573 * (v494 + v786);
                                }

                                else
                                {
                                  v574 = v494 + v786 + v573 * v493;
                                }

                                v575 = (*(a4 + 16) + 8 * v574);
                                v576 = v571 + *v575;
                                v577 = v572 + v575[1];
                              }

                              *v575 = v576;
                              v575[1] = v577;
                              --v497;
                              v792 = (v792 + v484);
                              ++v499;
                              ++v498;
                              v496 = v783;
                              v495 = v787;
                            }

                            while (v783 != v787);
                          }

                          ++v493;
                        }

                        while (v493 != v776);
                      }
                    }

                    else if (v776 >= 1)
                    {
                      v653 = 0;
                      v654 = v489 * v787;
                      do
                      {
                        if (v787)
                        {
                          v655 = 0;
                          v656 = v487;
                          do
                          {
                            if (v655)
                            {
                              v657 = v476;
                              v658 = v654;
                              v659 = v656;
                              v660 = v655;
                              do
                              {
                                v661 = *(v659 - 1);
                                v662 = *v659;
                                v663 = *(a1 + 24);
                                if (v663 & 0x20) != 0 && (v663)
                                {
                                  v664 = v661;
                                  v665 = v662;
                                  v666 = v478 * v664 + v479 * v665;
                                  v667 = v479 * v664 - v478 * v665;
                                  if (*(a2 + 12))
                                  {
                                    v668 = v655 + v486;
                                  }

                                  else
                                  {
                                    v668 = v653;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v669 = v653;
                                  }

                                  else
                                  {
                                    v669 = v655 + v486;
                                  }

                                  v670 = (*(a2 + 16) + 8 * (v669 + *(a2 + 8) * v668));
                                  v671 = *v670;
                                  v672 = v670[1];
                                  v673 = v667 * v671 + v666 * v672;
                                  v674 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v675 = v653 + v674 * v658;
                                  }

                                  else
                                  {
                                    v675 = v658 + v653 * v674;
                                  }

                                  v701 = (*(a4 + 16) + 8 * v675);
                                  v702 = v666 * v671 - v667 * v672 + *v701;
                                  v703 = v673 + v701[1];
                                  *v701 = v702;
                                  v701[1] = v703;
                                  v704 = *(v659 - 1);
                                  v705 = *v659;
                                  v706 = v478 * v704 + v479 * v705;
                                  v707 = v479 * v704 - v478 * v705;
                                  if (*(a2 + 12))
                                  {
                                    v708 = v653 + *(a2 + 8) * v657;
                                  }

                                  else
                                  {
                                    v708 = v657 + v653 * *(a2 + 8);
                                  }

                                  v709 = (*(a2 + 16) + 8 * v708);
                                  v710 = *v709;
                                  v711 = v709[1];
                                  v712 = v707 * v710 + v706 * v711;
                                  if (*(a4 + 12))
                                  {
                                    v713 = v654 + v655;
                                  }

                                  else
                                  {
                                    v713 = v653;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v714 = v653;
                                  }

                                  else
                                  {
                                    v714 = v654 + v655;
                                  }

                                  v698 = (*(a4 + 16) + 8 * (v714 + *(a4 + 8) * v713));
                                  v699 = v706 * v710 - v707 * v711 + *v698;
                                  v700 = v712 + v698[1];
                                }

                                else
                                {
                                  v676 = (a5 * v661) - (a6 * v662);
                                  v677 = (a6 * v661) + (a5 * v662);
                                  if (*(a2 + 12))
                                  {
                                    v678 = v655 + v486;
                                  }

                                  else
                                  {
                                    v678 = v653;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v679 = v653;
                                  }

                                  else
                                  {
                                    v679 = v655 + v486;
                                  }

                                  v680 = (*(a2 + 16) + 8 * (v679 + *(a2 + 8) * v678));
                                  v681 = v680[1];
                                  v682 = (v676 * *v680) - (v677 * v681);
                                  v683 = (v677 * *v680) + (v676 * v681);
                                  v684 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v685 = v653 + v684 * v658;
                                  }

                                  else
                                  {
                                    v685 = v658 + v653 * v684;
                                  }

                                  v686 = (*(a4 + 16) + 8 * v685);
                                  v687 = v683 + v686[1];
                                  *v686 = v682 + *v686;
                                  v686[1] = v687;
                                  v688 = *(v659 - 1);
                                  v689 = (a5 * v688) - (a6 * *v659);
                                  v690 = (a6 * v688) + (a5 * *v659);
                                  if (*(a2 + 12))
                                  {
                                    v691 = v653 + *(a2 + 8) * v657;
                                  }

                                  else
                                  {
                                    v691 = v657 + v653 * *(a2 + 8);
                                  }

                                  v692 = (*(a2 + 16) + 8 * v691);
                                  v693 = v692[1];
                                  v694 = (v689 * *v692) - (v690 * v693);
                                  v695 = (v690 * *v692) + (v689 * v693);
                                  if (*(a4 + 12))
                                  {
                                    v696 = v654 + v655;
                                  }

                                  else
                                  {
                                    v696 = v653;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v697 = v653;
                                  }

                                  else
                                  {
                                    v697 = v654 + v655;
                                  }

                                  v698 = (*(a4 + 16) + 8 * (v697 + *(a4 + 8) * v696));
                                  v699 = v694 + *v698;
                                  v700 = v695 + v698[1];
                                }

                                *v698 = v699;
                                v698[1] = v700;
                                v659 += 2;
                                ++v658;
                                ++v657;
                                --v660;
                              }

                              while (v660);
                            }

                            v715 = (v492 + 8 * v655 * v480);
                            v716 = *v715;
                            v717 = v715[1];
                            v718 = *(a1 + 24);
                            if (v718 & 0x20) != 0 && (v718)
                            {
                              v719 = v716;
                              v720 = v717;
                              v721 = v478 * v719 + v479 * v720;
                              v722 = v479 * v719 - v478 * v720;
                              if (*(a2 + 12))
                              {
                                v723 = v653 + *(a2 + 8) * (v655 + v486);
                              }

                              else
                              {
                                v723 = v655 + v486 + *(a2 + 8) * v653;
                              }

                              v736 = (*(a2 + 16) + 8 * v723);
                              v737 = *v736;
                              v738 = v736[1];
                              v739 = v722 * v737 + v721 * v738;
                              v740 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v741 = v653 + v740 * (v654 + v655);
                              }

                              else
                              {
                                v741 = v654 + v655 + v740 * v653;
                              }

                              v733 = (*(a4 + 16) + 8 * v741);
                              v734 = v721 * v737 - v722 * v738 + *v733;
                              v735 = v739 + v733[1];
                            }

                            else
                            {
                              v724 = (a5 * v716) - (a6 * v717);
                              v725 = (a6 * v716) + (a5 * v717);
                              if (*(a2 + 12))
                              {
                                v726 = v653 + *(a2 + 8) * (v655 + v486);
                              }

                              else
                              {
                                v726 = v655 + v486 + *(a2 + 8) * v653;
                              }

                              v727 = (*(a2 + 16) + 8 * v726);
                              v728 = v727[1];
                              v729 = (v724 * *v727) - (v725 * v728);
                              v730 = (v725 * *v727) + (v724 * v728);
                              v731 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v732 = v653 + v731 * (v654 + v655);
                              }

                              else
                              {
                                v732 = v654 + v655 + v731 * v653;
                              }

                              v733 = (*(a4 + 16) + 8 * v732);
                              v734 = v729 + *v733;
                              v735 = v730 + v733[1];
                            }

                            *v733 = v734;
                            v733[1] = v735;
                            ++v655;
                            v656 = (v656 + v482);
                          }

                          while (v655 != v787);
                        }

                        ++v653;
                      }

                      while (v653 != v776);
                    }
                  }

                  else if (v776 >= 1)
                  {
                    v584 = 0;
                    v585 = v489 * v787;
                    do
                    {
                      v586 = v787;
                      if (v787)
                      {
                        v587 = 0;
                        v588 = v487;
                        do
                        {
                          v589 = v585;
                          v590 = v588;
                          do
                          {
                            v591 = *(v590 - 1);
                            v592 = *v590;
                            v593 = *(a1 + 24);
                            if (v593 & 0x20) != 0 && (v593)
                            {
                              v594 = v591;
                              v595 = v592;
                              v596 = v478 * v594 + v479 * v595;
                              v597 = v479 * v594 - v478 * v595;
                              if (*(a2 + 12))
                              {
                                v598 = v587 + v486;
                              }

                              else
                              {
                                v598 = v584;
                              }

                              if (*(a2 + 12))
                              {
                                v599 = v584;
                              }

                              else
                              {
                                v599 = v587 + v486;
                              }

                              v600 = (*(a2 + 16) + 8 * (v599 + *(a2 + 8) * v598));
                              v601 = *v600;
                              v602 = v600[1];
                              v603 = v597 * v601 + v596 * v602;
                              v604 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v605 = v584 + v604 * v589;
                              }

                              else
                              {
                                v605 = v589 + v584 * v604;
                              }

                              v616 = (*(a4 + 16) + 8 * v605);
                              v617 = v596 * v601 - v597 * v602 + *v616;
                              v618 = v603 + v616[1];
                            }

                            else
                            {
                              v606 = (a5 * v591) - (a6 * v592);
                              v607 = (a6 * v591) + (a5 * v592);
                              if (*(a2 + 12))
                              {
                                v608 = v587 + v486;
                              }

                              else
                              {
                                v608 = v584;
                              }

                              if (*(a2 + 12))
                              {
                                v609 = v584;
                              }

                              else
                              {
                                v609 = v587 + v486;
                              }

                              v610 = (*(a2 + 16) + 8 * (v609 + *(a2 + 8) * v608));
                              v611 = v610[1];
                              v612 = (v606 * *v610) - (v607 * v611);
                              v613 = (v607 * *v610) + (v606 * v611);
                              v614 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v615 = v584 + v614 * v589;
                              }

                              else
                              {
                                v615 = v589 + v584 * v614;
                              }

                              v616 = (*(a4 + 16) + 8 * v615);
                              v617 = v612 + *v616;
                              v618 = v613 + v616[1];
                            }

                            *v616 = v617;
                            v616[1] = v618;
                            v590 += 2;
                            ++v589;
                            --v586;
                          }

                          while (v586);
                          ++v587;
                          v588 = (v588 + v482);
                          v586 = v787;
                        }

                        while (v587 != v787);
                      }

                      ++v584;
                    }

                    while (v584 != v776);
                    for (j = 0; j != v776; ++j)
                    {
                      v620 = v787;
                      if (v787)
                      {
                        v621 = 0;
                        v622 = v487;
                        do
                        {
                          v623 = v585;
                          v624 = v622;
                          do
                          {
                            v625 = *(v624 - 1);
                            v626 = *v624;
                            v627 = *(a1 + 24);
                            if (v627 & 0x20) != 0 && (v627)
                            {
                              v628 = v625;
                              v629 = v626;
                              v630 = v478 * v628 + v479 * v629;
                              v631 = v479 * v628 - v478 * v629;
                              v632 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v633 = j + v632 * v623;
                              }

                              else
                              {
                                v633 = v623 + j * v632;
                              }

                              v647 = (*(a2 + 16) + 8 * v633);
                              v648 = *v647;
                              v649 = v647[1];
                              v650 = v631 * v648 + v630 * v649;
                              if (*(a4 + 12))
                              {
                                v651 = v621 + v486;
                              }

                              else
                              {
                                v651 = j;
                              }

                              if (*(a4 + 12))
                              {
                                v652 = j;
                              }

                              else
                              {
                                v652 = v621 + v486;
                              }

                              v644 = (*(a4 + 16) + 8 * (v652 + *(a4 + 8) * v651));
                              v645 = v630 * v648 - v631 * v649 + *v644;
                              v646 = v650 + v644[1];
                            }

                            else
                            {
                              v634 = (a5 * v625) - (a6 * v626);
                              v635 = (a6 * v625) + (a5 * v626);
                              v636 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v637 = j + v636 * v623;
                              }

                              else
                              {
                                v637 = v623 + j * v636;
                              }

                              v638 = (*(a2 + 16) + 8 * v637);
                              v639 = v638[1];
                              v640 = (v634 * *v638) - (v635 * v639);
                              v641 = (v635 * *v638) + (v634 * v639);
                              if (*(a4 + 12))
                              {
                                v642 = v621 + v486;
                              }

                              else
                              {
                                v642 = j;
                              }

                              if (*(a4 + 12))
                              {
                                v643 = j;
                              }

                              else
                              {
                                v643 = v621 + v486;
                              }

                              v644 = (*(a4 + 16) + 8 * (v643 + *(a4 + 8) * v642));
                              v645 = v640 + *v644;
                              v646 = v641 + v644[1];
                            }

                            *v644 = v645;
                            v644[1] = v646;
                            v624 += 2;
                            ++v623;
                            --v620;
                          }

                          while (v620);
                          ++v621;
                          v622 = (v622 + v482);
                          v620 = v787;
                        }

                        while (v621 != v787);
                      }
                    }
                  }
                }
              }

              ++v483;
              v14 = v775;
              v485 = v775[v477];
              v487 += v481;
              v488 += v481;
              v15 = v774;
            }

            while (v483 < v485);
            v475 = *(a1 + 4);
          }

          v476 += v787;
          v780 += v787;
          v483 = v485;
        }

        while (v477 < v475);
      }

      return result;
    }

    if (v22 == 7)
    {
      v123 = *(a1 + 4);
      if (v123 >= 1)
      {
        v124 = 0;
        v125 = 0;
        v126 = a5;
        v127 = a6;
        v128 = result + 1;
        v129 = 8 * (result * result);
        v130 = 8 * result;
        v131 = *v14;
        v132 = result - 1;
        v133 = 8 * result + 8;
        v134 = 1;
        do
        {
          result = v125++;
          v135 = v14[v125];
          if (v131 < v135)
          {
            v136 = result * v787;
            v137 = v772 + 4 + v129 * v131;
            v138 = v772 + 12 + v129 * v131;
            do
            {
              v139 = *(v15 + 4 * v131);
              v140 = *(a1 + 24);
              if ((v140 & 2) == 0 || result <= v139)
              {
                v141 = result < v139 && (*(a1 + 24) & 2) == 0;
                if (!v141 && (v139 & 0x80000000) == 0 && v139 < *a1)
                {
                  if (result == v139)
                  {
                    v142 = v772 + 8 * v131 * v771;
                    if ((v140 & 2) != 0)
                    {
                      if (v776 >= 1)
                      {
                        v143 = 0;
                        v777 = v139 * v787;
                        v773 = v139 * v787 + 1;
                        do
                        {
                          v144 = v787;
                          if (v787)
                          {
                            v145 = 0;
                            v789 = v134;
                            v146 = v773;
                            v784 = v138;
                            v147 = v132;
                            do
                            {
                              v779 = v145 + 1;
                              v781 = v145;
                              if (v145 + 1 < v144)
                              {
                                v148 = 0;
                                v149 = v784;
                                v150 = v145 + v136;
                                v151 = v777 + v145;
                                do
                                {
                                  v152 = *(v149 - 1);
                                  v153 = *v149;
                                  v154 = *(a1 + 24);
                                  if ((v154 & 0x20) != 0 || (v154 & 1) == 0)
                                  {
                                    v166 = (a5 * v152) - (a6 * v153);
                                    v167 = (a6 * v152) + (a5 * v153);
                                    if (*(a2 + 12))
                                    {
                                      v168 = v150;
                                    }

                                    else
                                    {
                                      v168 = v143;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v169 = v143;
                                    }

                                    else
                                    {
                                      v169 = v150;
                                    }

                                    v170 = (*(a2 + 16) + 8 * (v169 + *(a2 + 8) * v168));
                                    v171 = v170[1];
                                    v172 = (v166 * *v170) - (v167 * v171);
                                    v173 = (v167 * *v170) + (v166 * v171);
                                    v174 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v175 = v143 + v174 * (v146 + v148);
                                    }

                                    else
                                    {
                                      v175 = v146 + v148 + v143 * v174;
                                    }

                                    v176 = (*(a4 + 16) + 8 * v175);
                                    v177 = v173 + v176[1];
                                    *v176 = v172 + *v176;
                                    v176[1] = v177;
                                    v178 = *(v149 - 1);
                                    v179 = *v149;
                                    v180 = v126 * v178 + v127 * v179;
                                    v181 = v127 * v178 - v126 * v179;
                                    if (*(a2 + 12))
                                    {
                                      v182 = v143 + *(a2 + 8) * (v789 + v148);
                                    }

                                    else
                                    {
                                      v182 = v789 + v148 + v143 * *(a2 + 8);
                                    }

                                    v183 = (*(a2 + 16) + 8 * v182);
                                    v184 = *v183;
                                    v185 = v183[1];
                                    v186 = v181 * v184 + v180 * v185;
                                    if (*(a4 + 12))
                                    {
                                      v187 = v151;
                                    }

                                    else
                                    {
                                      v187 = v143;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v188 = v143;
                                    }

                                    else
                                    {
                                      v188 = v151;
                                    }

                                    v189 = (*(a4 + 16) + 8 * (v188 + *(a4 + 8) * v187));
                                    v190 = v180 * v184 - v181 * v185 + *v189;
                                    v191 = v186 + v189[1];
                                  }

                                  else
                                  {
                                    v155 = v152;
                                    v156 = v126 * v155 + v127 * v153;
                                    v157 = v127 * v155 - v126 * v153;
                                    if (*(a2 + 12))
                                    {
                                      v158 = v150;
                                    }

                                    else
                                    {
                                      v158 = v143;
                                    }

                                    if (*(a2 + 12))
                                    {
                                      v159 = v143;
                                    }

                                    else
                                    {
                                      v159 = v150;
                                    }

                                    v160 = (*(a2 + 16) + 8 * (v159 + *(a2 + 8) * v158));
                                    v161 = *v160;
                                    v162 = v160[1];
                                    v163 = v157 * v161 + v156 * v162;
                                    v164 = *(a4 + 8);
                                    if (*(a4 + 12))
                                    {
                                      v165 = v143 + v164 * (v146 + v148);
                                    }

                                    else
                                    {
                                      v165 = v146 + v148 + v143 * v164;
                                    }

                                    v192 = (*(a4 + 16) + 8 * v165);
                                    v193 = v156 * v161 - v157 * v162 + *v192;
                                    v194 = v163 + v192[1];
                                    *v192 = v193;
                                    v192[1] = v194;
                                    v195 = *(v149 - 1);
                                    v196 = (a5 * v195) - (a6 * *v149);
                                    v197 = (a6 * v195) + (a5 * *v149);
                                    if (*(a2 + 12))
                                    {
                                      v198 = v143 + *(a2 + 8) * (v789 + v148);
                                    }

                                    else
                                    {
                                      v198 = v789 + v148 + v143 * *(a2 + 8);
                                    }

                                    v199 = (*(a2 + 16) + 8 * v198);
                                    v200 = v199[1];
                                    v201 = (v196 * *v199) - (v197 * v200);
                                    v202 = (v197 * *v199) + (v196 * v200);
                                    if (*(a4 + 12))
                                    {
                                      v203 = v151;
                                    }

                                    else
                                    {
                                      v203 = v143;
                                    }

                                    if (*(a4 + 12))
                                    {
                                      v204 = v143;
                                    }

                                    else
                                    {
                                      v204 = v151;
                                    }

                                    v189 = (*(a4 + 16) + 8 * (v204 + *(a4 + 8) * v203));
                                    v190 = v201 + *v189;
                                    v191 = v202 + v189[1];
                                  }

                                  *v189 = v190;
                                  v189[1] = v191;
                                  ++v148;
                                  v149 += 2;
                                }

                                while (v147 != v148);
                              }

                              v205 = (v142 + 8 * v781 * v128);
                              v206 = v205[1];
                              v207 = (a5 * *v205) - (a6 * v206);
                              v208 = (a6 * *v205) + (a5 * v206);
                              if (*(a2 + 12))
                              {
                                v209 = v143 + *(a2 + 8) * (v781 + v136);
                              }

                              else
                              {
                                v209 = v781 + v136 + *(a2 + 8) * v143;
                              }

                              v210 = (*(a2 + 16) + 8 * v209);
                              v211 = v210[1];
                              v212 = (v207 * *v210) - (v208 * v211);
                              v213 = (v208 * *v210) + (v207 * v211);
                              v214 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v215 = v143 + v214 * (v777 + v781);
                              }

                              else
                              {
                                v215 = v777 + v781 + v214 * v143;
                              }

                              v216 = (*(a4 + 16) + 8 * v215);
                              v217 = v213 + v216[1];
                              --v147;
                              v784 = (v784 + v133);
                              *v216 = v212 + *v216;
                              v216[1] = v217;
                              ++v146;
                              ++v789;
                              v145 = v779;
                              v144 = v787;
                            }

                            while (v779 != v787);
                          }

                          ++v143;
                        }

                        while (v143 != v776);
                      }
                    }

                    else if (v776 >= 1)
                    {
                      v287 = 0;
                      v782 = v139 * v787;
                      do
                      {
                        if (v787)
                        {
                          v288 = 0;
                          v790 = v137;
                          do
                          {
                            v785 = v288;
                            if (v288)
                            {
                              v289 = v288;
                              v290 = v288 + v136;
                              v291 = v782;
                              v292 = v124;
                              v293 = v790;
                              do
                              {
                                v294 = *(v293 - 1);
                                v295 = *v293;
                                v296 = *(a1 + 24);
                                if ((v296 & 0x20) != 0 || (v296 & 1) == 0)
                                {
                                  v309 = (a5 * v294) - (a6 * v295);
                                  v310 = (a6 * v294) + (a5 * v295);
                                  if (*(a2 + 12))
                                  {
                                    v311 = v290;
                                  }

                                  else
                                  {
                                    v311 = v287;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v312 = v287;
                                  }

                                  else
                                  {
                                    v312 = v290;
                                  }

                                  v313 = (*(a2 + 16) + 8 * (v312 + *(a2 + 8) * v311));
                                  v314 = v313[1];
                                  v315 = (v309 * *v313) - (v310 * v314);
                                  v316 = (v310 * *v313) + (v309 * v314);
                                  v317 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v318 = v287 + v317 * v291;
                                  }

                                  else
                                  {
                                    v318 = v291 + v287 * v317;
                                  }

                                  v319 = (*(a4 + 16) + 8 * v318);
                                  v320 = v316 + v319[1];
                                  *v319 = v315 + *v319;
                                  v319[1] = v320;
                                  v321 = *(v293 - 1);
                                  v322 = *v293;
                                  v323 = v126 * v321 + v127 * v322;
                                  v324 = v127 * v321 - v126 * v322;
                                  if (*(a2 + 12))
                                  {
                                    v325 = v287 + *(a2 + 8) * v292;
                                  }

                                  else
                                  {
                                    v325 = v292 + v287 * *(a2 + 8);
                                  }

                                  v326 = (*(a2 + 16) + 8 * v325);
                                  v327 = *v326;
                                  v328 = v326[1];
                                  v329 = v324 * v327 + v323 * v328;
                                  if (*(a4 + 12))
                                  {
                                    v330 = v782 + v785;
                                  }

                                  else
                                  {
                                    v330 = v287;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v331 = v287;
                                  }

                                  else
                                  {
                                    v331 = v782 + v785;
                                  }

                                  v332 = (*(a4 + 16) + 8 * (v331 + *(a4 + 8) * v330));
                                  v333 = v323 * v327 - v324 * v328 + *v332;
                                  v334 = v329 + v332[1];
                                }

                                else
                                {
                                  v297 = v294;
                                  v298 = v295;
                                  v299 = v126 * v297 + v127 * v298;
                                  v300 = v127 * v297 - v126 * v298;
                                  if (*(a2 + 12))
                                  {
                                    v301 = v290;
                                  }

                                  else
                                  {
                                    v301 = v287;
                                  }

                                  if (*(a2 + 12))
                                  {
                                    v302 = v287;
                                  }

                                  else
                                  {
                                    v302 = v290;
                                  }

                                  v303 = (*(a2 + 16) + 8 * (v302 + *(a2 + 8) * v301));
                                  v304 = *v303;
                                  v305 = v303[1];
                                  v306 = v300 * v304 + v299 * v305;
                                  v307 = *(a4 + 8);
                                  if (*(a4 + 12))
                                  {
                                    v308 = v287 + v307 * v291;
                                  }

                                  else
                                  {
                                    v308 = v291 + v287 * v307;
                                  }

                                  v335 = (*(a4 + 16) + 8 * v308);
                                  v336 = v299 * v304 - v300 * v305 + *v335;
                                  v337 = v306 + v335[1];
                                  *v335 = v336;
                                  v335[1] = v337;
                                  v338 = *(v293 - 1);
                                  v339 = (a5 * v338) - (a6 * *v293);
                                  v340 = (a6 * v338) + (a5 * *v293);
                                  if (*(a2 + 12))
                                  {
                                    v341 = v287 + *(a2 + 8) * v292;
                                  }

                                  else
                                  {
                                    v341 = v292 + v287 * *(a2 + 8);
                                  }

                                  v342 = (*(a2 + 16) + 8 * v341);
                                  v343 = v342[1];
                                  v344 = (v339 * *v342) - (v340 * v343);
                                  v345 = (v340 * *v342) + (v339 * v343);
                                  if (*(a4 + 12))
                                  {
                                    v346 = v782 + v785;
                                  }

                                  else
                                  {
                                    v346 = v287;
                                  }

                                  if (*(a4 + 12))
                                  {
                                    v347 = v287;
                                  }

                                  else
                                  {
                                    v347 = v782 + v785;
                                  }

                                  v332 = (*(a4 + 16) + 8 * (v347 + *(a4 + 8) * v346));
                                  v333 = v344 + *v332;
                                  v334 = v345 + v332[1];
                                }

                                *v332 = v333;
                                v332[1] = v334;
                                v293 += 2;
                                ++v291;
                                ++v292;
                                --v289;
                              }

                              while (v289);
                            }

                            v348 = (v142 + 8 * v785 * v128);
                            v349 = v348[1];
                            v350 = (a5 * *v348) - (a6 * v349);
                            v351 = (a6 * *v348) + (a5 * v349);
                            if (*(a2 + 12))
                            {
                              v352 = v287 + *(a2 + 8) * (v785 + v136);
                            }

                            else
                            {
                              v352 = v785 + v136 + *(a2 + 8) * v287;
                            }

                            v353 = (*(a2 + 16) + 8 * v352);
                            v354 = v353[1];
                            v355 = (v350 * *v353) - (v351 * v354);
                            v356 = (v351 * *v353) + (v350 * v354);
                            v357 = *(a4 + 8);
                            if (*(a4 + 12))
                            {
                              v358 = v287 + v357 * (v782 + v785);
                            }

                            else
                            {
                              v358 = v782 + v785 + v357 * v287;
                            }

                            v359 = (*(a4 + 16) + 8 * v358);
                            v360 = v356 + v359[1];
                            *v359 = v355 + *v359;
                            v359[1] = v360;
                            v288 = v785 + 1;
                            v790 = (v790 + v130);
                          }

                          while (v785 + 1 != v787);
                        }

                        ++v287;
                      }

                      while (v287 != v776);
                    }
                  }

                  else if (v776 >= 1)
                  {
                    v218 = 0;
                    v219 = v787;
                    v220 = v139 * v787;
                    do
                    {
                      if (v219)
                      {
                        v221 = 0;
                        v222 = v137;
                        do
                        {
                          v223 = v220;
                          v224 = v222;
                          do
                          {
                            v225 = *(v224 - 1);
                            v226 = *v224;
                            v227 = *(a1 + 24);
                            if ((v227 & 0x20) != 0 || (v227 & 1) == 0)
                            {
                              v240 = (a5 * v225) - (a6 * v226);
                              v241 = (a6 * v225) + (a5 * v226);
                              if (*(a2 + 12))
                              {
                                v242 = v221 + v136;
                              }

                              else
                              {
                                v242 = v218;
                              }

                              if (*(a2 + 12))
                              {
                                v243 = v218;
                              }

                              else
                              {
                                v243 = v221 + v136;
                              }

                              v244 = (*(a2 + 16) + 8 * (v243 + *(a2 + 8) * v242));
                              v245 = v244[1];
                              v246 = (v240 * *v244) - (v241 * v245);
                              v247 = (v241 * *v244) + (v240 * v245);
                              v248 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v249 = v218 + v248 * v223;
                              }

                              else
                              {
                                v249 = v223 + v218 * v248;
                              }

                              v250 = (*(a4 + 16) + 8 * v249);
                              v251 = v246 + *v250;
                              v252 = v247 + v250[1];
                            }

                            else
                            {
                              v228 = v225;
                              v229 = v226;
                              v230 = v126 * v228 + v127 * v229;
                              v231 = v127 * v228 - v126 * v229;
                              if (*(a2 + 12))
                              {
                                v232 = v221 + v136;
                              }

                              else
                              {
                                v232 = v218;
                              }

                              if (*(a2 + 12))
                              {
                                v233 = v218;
                              }

                              else
                              {
                                v233 = v221 + v136;
                              }

                              v234 = (*(a2 + 16) + 8 * (v233 + *(a2 + 8) * v232));
                              v235 = *v234;
                              v236 = v234[1];
                              v237 = v231 * v235 + v230 * v236;
                              v238 = *(a4 + 8);
                              if (*(a4 + 12))
                              {
                                v239 = v218 + v238 * v223;
                              }

                              else
                              {
                                v239 = v223 + v218 * v238;
                              }

                              v250 = (*(a4 + 16) + 8 * v239);
                              v251 = v230 * v235 - v231 * v236 + *v250;
                              v252 = v237 + v250[1];
                            }

                            *v250 = v251;
                            v250[1] = v252;
                            v224 += 2;
                            ++v223;
                            --v219;
                          }

                          while (v219);
                          ++v221;
                          v222 = (v222 + v130);
                          v219 = v787;
                        }

                        while (v221 != v787);
                      }

                      ++v218;
                    }

                    while (v218 != v776);
                    for (k = 0; k != v776; ++k)
                    {
                      v254 = v787;
                      if (v787)
                      {
                        v255 = 0;
                        v256 = v137;
                        do
                        {
                          v257 = v220;
                          v258 = v256;
                          do
                          {
                            v259 = *(v258 - 1);
                            v260 = *v258;
                            v261 = *(a1 + 24);
                            if ((v261 & 0x20) != 0 || (v261 & 1) == 0)
                            {
                              v266 = v259;
                              v267 = v260;
                              v268 = v126 * v266 + v127 * v267;
                              v269 = v127 * v266 - v126 * v267;
                              v270 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v271 = k + v270 * v257;
                              }

                              else
                              {
                                v271 = v257 + k * v270;
                              }

                              v272 = (*(a2 + 16) + 8 * v271);
                              v273 = *v272;
                              v274 = v272[1];
                              v275 = v269 * v273 + v268 * v274;
                              if (*(a4 + 12))
                              {
                                v276 = v255 + v136;
                              }

                              else
                              {
                                v276 = k;
                              }

                              if (*(a4 + 12))
                              {
                                v277 = k;
                              }

                              else
                              {
                                v277 = v255 + v136;
                              }

                              v278 = (*(a4 + 16) + 8 * (v277 + *(a4 + 8) * v276));
                              v279 = v268 * v273 - v269 * v274 + *v278;
                              v280 = v275 + v278[1];
                            }

                            else
                            {
                              v262 = (a5 * v259) - (a6 * v260);
                              v263 = (a6 * v259) + (a5 * v260);
                              v264 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v265 = k + v264 * v257;
                              }

                              else
                              {
                                v265 = v257 + k * v264;
                              }

                              v281 = (*(a2 + 16) + 8 * v265);
                              v282 = v281[1];
                              v283 = (v262 * *v281) - (v263 * v282);
                              v284 = (v263 * *v281) + (v262 * v282);
                              if (*(a4 + 12))
                              {
                                v285 = v255 + v136;
                              }

                              else
                              {
                                v285 = k;
                              }

                              if (*(a4 + 12))
                              {
                                v286 = k;
                              }

                              else
                              {
                                v286 = v255 + v136;
                              }

                              v278 = (*(a4 + 16) + 8 * (v286 + *(a4 + 8) * v285));
                              v279 = v283 + *v278;
                              v280 = v284 + v278[1];
                            }

                            *v278 = v279;
                            v278[1] = v280;
                            v258 += 2;
                            ++v257;
                            --v254;
                          }

                          while (v254);
                          ++v255;
                          v256 = (v256 + v130);
                          v254 = v787;
                        }

                        while (v255 != v787);
                      }
                    }
                  }
                }
              }

              ++v131;
              v14 = v775;
              v135 = v775[v125];
              v137 += v129;
              v138 += v129;
              v15 = v774;
            }

            while (v131 < v135);
            v123 = *(a1 + 4);
          }

          v124 += v787;
          v134 += v787;
          v131 = v135;
        }

        while (v125 < v123);
      }

      return result;
    }

LABEL_665:
    __break(1u);
    return result;
  }

  if (v22 - 1 >= 2)
  {
    if (!v22)
    {
      v361 = *(a1 + 4);
      if (*(a1 + 24))
      {
        if (v361 >= 1)
        {
          v362 = 0;
          v363 = a5;
          v364 = a6;
          v365 = *v14;
          v366 = 8 * (result * result);
          do
          {
            v367 = v362++;
            v368 = v14[v362];
            if (v365 < v368)
            {
              v369 = v367 * result;
              v370 = v772 + 4 + v366 * v365;
              do
              {
                v371 = *(v15 + 4 * v365);
                if ((v371 & 0x80000000) == 0 && v371 < *a1 && v12 >= 1)
                {
                  v373 = 0;
                  v374 = v371 * result;
                  do
                  {
                    if (result)
                    {
                      v375 = 0;
                      v376 = v370;
                      do
                      {
                        v377 = result;
                        v378 = v374;
                        v379 = v376;
                        do
                        {
                          v380 = *(v379 - 1);
                          v381 = *v379;
                          if ((*(a1 + 24) & 0x20) != 0)
                          {
                            v386 = v380;
                            v387 = v381;
                            v388 = v363 * v386 + v364 * v387;
                            v389 = v364 * v386 - v363 * v387;
                            v390 = *(a2 + 8);
                            if (*(a2 + 12))
                            {
                              v391 = v373 + v390 * v378;
                            }

                            else
                            {
                              v391 = v378 + v373 * v390;
                            }

                            v401 = (*(a2 + 16) + 8 * v391);
                            v402 = *v401;
                            v403 = v401[1];
                            v404 = v389 * v402 + v388 * v403;
                            if (*(a4 + 12))
                            {
                              v405 = v375 + v369;
                            }

                            else
                            {
                              v405 = v373;
                            }

                            if (*(a4 + 12))
                            {
                              v406 = v373;
                            }

                            else
                            {
                              v406 = v375 + v369;
                            }

                            v398 = (*(a4 + 16) + 8 * (v406 + *(a4 + 8) * v405));
                            v399 = v388 * v402 - v389 * v403 + *v398;
                            v400 = v404 + v398[1];
                          }

                          else
                          {
                            v382 = (a5 * v380) - (a6 * v381);
                            v383 = (a6 * v380) + (a5 * v381);
                            v384 = *(a2 + 8);
                            if (*(a2 + 12))
                            {
                              v385 = v373 + v384 * v378;
                            }

                            else
                            {
                              v385 = v378 + v373 * v384;
                            }

                            v392 = (*(a2 + 16) + 8 * v385);
                            v393 = v392[1];
                            v394 = (v382 * *v392) - (v383 * v393);
                            v395 = (v383 * *v392) + (v382 * v393);
                            if (*(a4 + 12))
                            {
                              v396 = v375 + v369;
                            }

                            else
                            {
                              v396 = v373;
                            }

                            if (*(a4 + 12))
                            {
                              v397 = v373;
                            }

                            else
                            {
                              v397 = v375 + v369;
                            }

                            v398 = (*(a4 + 16) + 8 * (v397 + *(a4 + 8) * v396));
                            v399 = v394 + *v398;
                            v400 = v395 + v398[1];
                          }

                          *v398 = v399;
                          v398[1] = v400;
                          v379 += 2;
                          ++v378;
                          --v377;
                        }

                        while (v377);
                        ++v375;
                        v376 += 2 * result;
                      }

                      while (v375 != result);
                    }

                    ++v373;
                  }

                  while (v373 != v12);
                  v368 = v14[v362];
                }

                ++v365;
                v370 += v366;
              }

              while (v365 < v368);
              v361 = *(a1 + 4);
            }

            v365 = v368;
          }

          while (v362 < v361);
        }
      }

      else if (v361 >= 1)
      {
        v742 = 0;
        v743 = *v14;
        v744 = 8 * (result * result);
        do
        {
          v745 = v742++;
          v746 = v14[v742];
          if (v743 < v746)
          {
            v748 = v772 + 4 + v744 * v743;
            do
            {
              v749 = *(v15 + 4 * v743);
              if ((v749 & 0x80000000) == 0 && v749 < *a1 && v12 >= 1)
              {
                v751 = 0;
                v752 = v749 * result;
                do
                {
                  if (result)
                  {
                    v753 = 0;
                    v754 = v748;
                    do
                    {
                      v747 = v745 * result;
                      v755 = result;
                      v756 = v752;
                      v757 = v754;
                      do
                      {
                        v758 = *(v757 - 1);
                        v759 = (a5 * v758) - (a6 * *v757);
                        v760 = (a6 * v758) + (a5 * *v757);
                        if (*(a2 + 12))
                        {
                          v761 = v753 + v747;
                        }

                        else
                        {
                          v761 = v751;
                        }

                        if (*(a2 + 12))
                        {
                          v762 = v751;
                        }

                        else
                        {
                          v762 = v753 + v747;
                        }

                        v763 = (*(a2 + 16) + 8 * (v762 + *(a2 + 8) * v761));
                        v764 = v763[1];
                        v765 = (v759 * *v763) - (v760 * v764);
                        v766 = (v760 * *v763) + (v759 * v764);
                        v767 = *(a4 + 8);
                        if (*(a4 + 12))
                        {
                          v768 = v751 + v767 * v756;
                        }

                        else
                        {
                          v768 = v756 + v751 * v767;
                        }

                        v769 = (*(a4 + 16) + 8 * v768);
                        v770 = v766 + v769[1];
                        *v769 = v765 + *v769;
                        v769[1] = v770;
                        v757 += 2;
                        ++v756;
                        --v755;
                      }

                      while (v755);
                      ++v753;
                      v754 += 2 * result;
                    }

                    while (v753 != result);
                  }

                  ++v751;
                }

                while (v751 != v12);
                v746 = v14[v742];
              }

              ++v743;
              v748 += v744;
            }

            while (v743 < v746);
            v361 = *(a1 + 4);
          }

          v743 = v746;
        }

        while (v742 < v361);
      }

      return result;
    }

    goto LABEL_665;
  }

  v23 = *(a1 + 4);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (v23 < 1)
    {
      return result;
    }

    v407 = 0;
    v408 = 0;
    v409 = 8 * (result * result);
    v410 = 8 * result;
    while (1)
    {
      v411 = v14[v408];
      v412 = v408 + 1;
      if (v411 < v14[v408 + 1])
      {
        break;
      }

LABEL_409:
      if ((*(a1 + 24) & 0x1C) == 8 && v12 >= 1)
      {
        v464 = 0;
        do
        {
          v465 = result;
          for (m = v407; v465; --v465)
          {
            if (*(a2 + 12))
            {
              v467 = v464 + *(a2 + 8) * m;
            }

            else
            {
              v467 = m + v464 * *(a2 + 8);
            }

            v468 = (*(a2 + 16) + 8 * v467);
            v469 = v468[1];
            v470 = (a5 * *v468) - (a6 * v469);
            v471 = (a6 * *v468) + (a5 * v469);
            if (*(a4 + 12))
            {
              v472 = v464 + *(a4 + 8) * m;
            }

            else
            {
              v472 = m + v464 * *(a4 + 8);
            }

            v473 = (*(a4 + 16) + 8 * v472);
            v474 = v471 + v473[1];
            *v473 = v470 + *v473;
            v473[1] = v474;
            ++m;
          }

          ++v464;
        }

        while (v464 != v12);
      }

      v407 += result;
      ++v408;
      if (v412 >= *(a1 + 4))
      {
        return result;
      }
    }

    v413 = v408 * result;
    v414 = v772 + 4 + v409 * v411;
    v415 = v772 + v409 * v411;
    while (1)
    {
      v416 = *(v15 + 4 * v411);
      v417 = *(a1 + 24);
      if (((v417 & 2) == 0 || v408 <= v416) && v416 < *a1)
      {
        if ((v417 & 2) != 0)
        {
          if ((v416 & 0x80000000) == 0)
          {
LABEL_364:
            if (v416 == v408)
            {
              if (v12 >= 1)
              {
                v418 = 0;
                v419 = (v417 & 0x1C) == 8;
                v420 = v416 * result;
                do
                {
                  if (result)
                  {
                    v421 = 0;
                    v422 = v415;
                    do
                    {
                      v423 = (v421 + v419) & (v417 << 30 >> 31);
                      v424 = v421 + 1;
                      v425 = v421 + 1 - v419;
                      if ((v417 & 2) != 0)
                      {
                        v426 = result;
                      }

                      else
                      {
                        v426 = v421 + 1 - v419;
                      }

                      if (v423 < v426)
                      {
                        v791 = v421 + 1;
                        v427 = v421 + v413;
                        v428 = (v422 + 8 * v423);
                        do
                        {
                          v429 = v428[1];
                          v430 = (a5 * *v428) - (a6 * v429);
                          v431 = (a6 * *v428) + (a5 * v429);
                          if (*(a2 + 12))
                          {
                            v432 = v427;
                          }

                          else
                          {
                            v432 = v418;
                          }

                          if (*(a2 + 12))
                          {
                            v433 = v418;
                          }

                          else
                          {
                            v433 = v427;
                          }

                          v434 = (*(a2 + 16) + 8 * (v433 + *(a2 + 8) * v432));
                          v435 = v434[1];
                          v436 = (v430 * *v434) - (v431 * v435);
                          v437 = (v431 * *v434) + (v430 * v435);
                          v438 = *(a4 + 8);
                          if (*(a4 + 12))
                          {
                            v439 = v418 + v438 * (v420 + v423);
                          }

                          else
                          {
                            v439 = v420 + v423 + v418 * v438;
                          }

                          v440 = (*(a4 + 16) + 8 * v439);
                          v441 = v437 + v440[1];
                          *v440 = v436 + *v440;
                          v440[1] = v441;
                          ++v423;
                          v417 = *(a1 + 24);
                          if ((v417 & 2) != 0)
                          {
                            v442 = result;
                          }

                          else
                          {
                            v442 = v425;
                          }

                          v428 += 2;
                        }

                        while (v423 < v442);
                        v424 = v791;
                      }

                      v422 += v410;
                      v421 = v424;
                    }

                    while (v424 != result);
                  }

                  ++v418;
                }

                while (v418 != v12);
              }
            }

            else if (v12 >= 1)
            {
              v443 = 0;
              v444 = v416 * result;
              do
              {
                if (result)
                {
                  v445 = 0;
                  v446 = v414;
                  do
                  {
                    v447 = result;
                    v448 = v444;
                    v449 = v446;
                    do
                    {
                      v450 = *(v449 - 1);
                      v451 = (a5 * v450) - (a6 * *v449);
                      v452 = (a6 * v450) + (a5 * *v449);
                      if (*(a2 + 12))
                      {
                        v453 = v445 + v413;
                      }

                      else
                      {
                        v453 = v443;
                      }

                      if (*(a2 + 12))
                      {
                        v454 = v443;
                      }

                      else
                      {
                        v454 = v445 + v413;
                      }

                      v455 = (*(a2 + 16) + 8 * (v454 + *(a2 + 8) * v453));
                      v456 = v455[1];
                      v457 = (v451 * *v455) - (v452 * v456);
                      v458 = (v452 * *v455) + (v451 * v456);
                      v459 = *(a4 + 8);
                      if (*(a4 + 12))
                      {
                        v460 = v443 + v459 * v448;
                      }

                      else
                      {
                        v460 = v448 + v443 * v459;
                      }

                      v461 = (*(a4 + 16) + 8 * v460);
                      v462 = v458 + v461[1];
                      *v461 = v457 + *v461;
                      v461[1] = v462;
                      v449 += 2;
                      ++v448;
                      --v447;
                    }

                    while (v447);
                    ++v445;
                    v446 = (v446 + v410);
                  }

                  while (v445 != result);
                }

                ++v443;
              }

              while (v443 != v12);
            }
          }
        }

        else if (v408 >= v416)
        {
          goto LABEL_364;
        }
      }

      ++v411;
      v414 += v409;
      v415 += v409;
      if (v411 >= v14[v412])
      {
        goto LABEL_409;
      }
    }
  }

  if (v23 >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = a5;
    v27 = a6;
    v28 = 8 * v771;
    v29 = 8 * result;
    while (1)
    {
      v30 = v14[v25];
      v31 = v25 + 1;
      if (v30 < v14[v25 + 1])
      {
        break;
      }

LABEL_101:
      if ((*(a1 + 24) & 0x1C) == 8 && v12 >= 1)
      {
        v112 = 0;
        do
        {
          v113 = result;
          for (n = v24; v113; --v113)
          {
            if (*(a2 + 12))
            {
              v115 = v112 + *(a2 + 8) * n;
            }

            else
            {
              v115 = n + v112 * *(a2 + 8);
            }

            v116 = (*(a2 + 16) + 8 * v115);
            v117 = v116[1];
            v118 = (a5 * *v116) - (a6 * v117);
            v119 = (a6 * *v116) + (a5 * v117);
            if (*(a4 + 12))
            {
              v120 = v112 + *(a4 + 8) * n;
            }

            else
            {
              v120 = n + v112 * *(a4 + 8);
            }

            v121 = (*(a4 + 16) + 8 * v120);
            v122 = v119 + v121[1];
            *v121 = v118 + *v121;
            v121[1] = v122;
            ++n;
          }

          ++v112;
        }

        while (v112 != v12);
      }

      v24 += result;
      ++v25;
      if (v31 >= *(a1 + 4))
      {
        return result;
      }
    }

    v32 = v25 * result;
    v33 = v772 + 4 + v28 * v30;
    v34 = v772 + v28 * v30;
    while (1)
    {
      v35 = *(v15 + 4 * v30);
      v36 = *(a1 + 24);
      if ((v36 & 2) == 0 || v25 <= v35)
      {
        v37 = *(v15 + 4 * v30);
        if (v35 < *a1)
        {
          if ((v36 & 2) != 0)
          {
            if ((v35 & 0x80000000) == 0)
            {
LABEL_32:
              if (v35 == v25)
              {
                if (v12 >= 1)
                {
                  v38 = 0;
                  v39 = *(a1 + 24);
                  v40 = (v36 & 0x1C) == 8;
                  v41 = v37 * result;
                  v788 = v40;
                  do
                  {
                    if (result)
                    {
                      v42 = 0;
                      v43 = v34;
                      do
                      {
                        v44 = (v42 + v40) & (v36 << 30 >> 31);
                        v45 = v42 + 1;
                        v46 = v42 + 1 - v40;
                        if ((v36 & 2) != 0)
                        {
                          v47 = result;
                        }

                        else
                        {
                          v47 = v42 + 1 - v40;
                        }

                        if (v44 < v47)
                        {
                          v48 = v42 + v32;
                          v49 = (v43 + 8 * v44);
                          do
                          {
                            v50 = *v49;
                            v51 = v49[1];
                            if ((v39 & 0x20) != 0)
                            {
                              v56 = v50;
                              v57 = v51;
                              v58 = v26 * v56 + v27 * v57;
                              v59 = v27 * v56 - v26 * v57;
                              v60 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v61 = v38 + v60 * (v41 + v44);
                              }

                              else
                              {
                                v61 = v41 + v44 + v38 * v60;
                              }

                              v71 = (*(a2 + 16) + 8 * v61);
                              v72 = *v71;
                              v73 = v71[1];
                              v74 = v59 * v72 + v58 * v73;
                              if (*(a4 + 12))
                              {
                                v75 = v48;
                              }

                              else
                              {
                                v75 = v38;
                              }

                              if (*(a4 + 12))
                              {
                                v76 = v38;
                              }

                              else
                              {
                                v76 = v48;
                              }

                              v68 = (*(a4 + 16) + 8 * (v76 + *(a4 + 8) * v75));
                              v69 = v58 * v72 - v59 * v73 + *v68;
                              v70 = v74 + v68[1];
                            }

                            else
                            {
                              v52 = (a5 * v50) - (a6 * v51);
                              v53 = (a6 * v50) + (a5 * v51);
                              v54 = *(a2 + 8);
                              if (*(a2 + 12))
                              {
                                v55 = v38 + v54 * (v41 + v44);
                              }

                              else
                              {
                                v55 = v41 + v44 + v38 * v54;
                              }

                              v62 = (*(a2 + 16) + 8 * v55);
                              v63 = v62[1];
                              v64 = (v52 * *v62) - (v53 * v63);
                              v65 = (v53 * *v62) + (v52 * v63);
                              if (*(a4 + 12))
                              {
                                v66 = v48;
                              }

                              else
                              {
                                v66 = v38;
                              }

                              if (*(a4 + 12))
                              {
                                v67 = v38;
                              }

                              else
                              {
                                v67 = v48;
                              }

                              v68 = (*(a4 + 16) + 8 * (v67 + *(a4 + 8) * v66));
                              v69 = v64 + *v68;
                              v70 = v65 + v68[1];
                            }

                            *v68 = v69;
                            v68[1] = v70;
                            ++v44;
                            v36 = *(a1 + 24);
                            if ((v36 & 2) != 0)
                            {
                              v77 = result;
                            }

                            else
                            {
                              v77 = v46;
                            }

                            v39 = *(a1 + 24);
                            v49 += 2;
                          }

                          while (v44 < v77);
                          v40 = v788;
                        }

                        v43 += v29;
                        v42 = v45;
                      }

                      while (v45 != result);
                    }

                    ++v38;
                  }

                  while (v38 != v12);
                }
              }

              else if (v12 >= 1)
              {
                for (ii = 0; ii != v12; ++ii)
                {
                  if (result)
                  {
                    v79 = 0;
                    v80 = v33;
                    do
                    {
                      v81 = result;
                      v82 = v37 * result;
                      v83 = v80;
                      do
                      {
                        v84 = *(v83 - 1);
                        v85 = *v83;
                        if ((*(a1 + 24) & 0x20) != 0)
                        {
                          v90 = v84;
                          v91 = v85;
                          v92 = v26 * v90 + v27 * v91;
                          v93 = v27 * v90 - v26 * v91;
                          v94 = *(a2 + 8);
                          if (*(a2 + 12))
                          {
                            v95 = ii + v94 * v82;
                          }

                          else
                          {
                            v95 = v82 + ii * v94;
                          }

                          v105 = (*(a2 + 16) + 8 * v95);
                          v106 = *v105;
                          v107 = v105[1];
                          v108 = v93 * v106 + v92 * v107;
                          if (*(a4 + 12))
                          {
                            v109 = v79 + v32;
                          }

                          else
                          {
                            v109 = ii;
                          }

                          if (*(a4 + 12))
                          {
                            v110 = ii;
                          }

                          else
                          {
                            v110 = v79 + v32;
                          }

                          v102 = (*(a4 + 16) + 8 * (v110 + *(a4 + 8) * v109));
                          v103 = v92 * v106 - v93 * v107 + *v102;
                          v104 = v108 + v102[1];
                        }

                        else
                        {
                          v86 = (a5 * v84) - (a6 * v85);
                          v87 = (a6 * v84) + (a5 * v85);
                          v88 = *(a2 + 8);
                          if (*(a2 + 12))
                          {
                            v89 = ii + v88 * v82;
                          }

                          else
                          {
                            v89 = v82 + ii * v88;
                          }

                          v96 = (*(a2 + 16) + 8 * v89);
                          v97 = v96[1];
                          v98 = (v86 * *v96) - (v87 * v97);
                          v99 = (v87 * *v96) + (v86 * v97);
                          if (*(a4 + 12))
                          {
                            v100 = v79 + v32;
                          }

                          else
                          {
                            v100 = ii;
                          }

                          if (*(a4 + 12))
                          {
                            v101 = ii;
                          }

                          else
                          {
                            v101 = v79 + v32;
                          }

                          v102 = (*(a4 + 16) + 8 * (v101 + *(a4 + 8) * v100));
                          v103 = v98 + *v102;
                          v104 = v99 + v102[1];
                        }

                        *v102 = v103;
                        v102[1] = v104;
                        v83 += 2;
                        ++v82;
                        --v81;
                      }

                      while (v81);
                      ++v79;
                      v80 = (v80 + v29);
                    }

                    while (v79 != result);
                  }
                }
              }
            }
          }

          else if (v25 >= v35)
          {
            goto LABEL_32;
          }
        }
      }

      ++v30;
      v33 += v28;
      v34 += v28;
      if (v30 >= v14[v31])
      {
        goto LABEL_101;
      }
    }
  }

  return result;
}