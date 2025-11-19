_WORD *sub_239C84EBC(_WORD *result, uint64_t *a2, uint64_t a3, double a4, double a5, __n128 a6)
{
  v6 = a2;
  v7 = *(a3 + 8);
  v339 = *(a3 + 32);
  v8 = *(a3 + 56);
  v299 = *(a3 + 48);
  v9 = *(a3 + 64);
  v10 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v65 = *(a3 + 16);
    v66 = *(a3 + 40);
    v67 = *(a3 + 72);
    v68 = *(a3 + 80);
    if (v10)
    {
      if (v299 && v7 && v8 && v339 && v9)
      {
        v69 = 0;
        v70 = v9 * v65;
        v71 = v9 * v7 * v8;
        v72 = 8 * v9 * v8;
        v73 = 8 * v8;
        v341 = v8 * v66 * v70;
        v74 = 2 * v9 * v8;
        v345 = v70 * 8 * v8;
        do
        {
          v75 = 0;
          v76 = v339;
          v343 = v69;
          v348 = v69 * v339;
          v305 = v6;
          v77 = v6;
          v78 = result;
          do
          {
            v79 = v75 + v348;
            if ((v75 + v348) % v68 < v67)
            {
              v80 = 0;
              v81 = v77;
              v82 = v78;
              do
              {
                v83 = 0;
                v84 = v81;
                v85 = v82;
                do
                {
                  v86 = 0;
                  v87 = 0;
                  v88 = v84;
                  v89 = 1;
                  v90 = v85;
                  do
                  {
                    if (v7 >= v89)
                    {
                      v91 = v89;
                    }

                    else
                    {
                      v91 = v7;
                    }

                    v92 = v91 + v86;
                    v93 = v88;
                    v94 = v90;
                    do
                    {
                      *v94 = *v93;
                      v94 += 4;
                      v93 = (v93 + v74);
                      --v92;
                    }

                    while (v92);
                    ++v87;
                    v90 = (v90 + v72);
                    ++v89;
                    --v86;
                    v88 = (v88 + v74);
                  }

                  while (v87 != v7);
                  ++v83;
                  v85 += 4;
                  ++v84;
                }

                while (v83 != v8);
                ++v80;
                v82 = (v82 + v73);
                v81 += v8;
              }

              while (v80 != v9);
              v77 = (v77 + 2 * v71);
              v76 = v339;
            }

            if ((v75 | 1) < v76 && (v79 + 1) % v68 < v67)
            {
              v95 = 0;
              v96 = (v78 + 1);
              v97 = v77;
              do
              {
                v98 = 0;
                v99 = v97;
                v100 = v96;
                do
                {
                  v101 = 0;
                  v102 = 0;
                  v103 = v99;
                  v104 = 1;
                  v105 = v100;
                  do
                  {
                    v106 = 0;
                    if (v7 >= v104)
                    {
                      v107 = v104;
                    }

                    else
                    {
                      v107 = v7;
                    }

                    v108 = v107 + v101;
                    v109 = v103;
                    do
                    {
                      *&v105[v106] = *v109;
                      v109 = (v109 + v74);
                      v106 += 8;
                      --v108;
                    }

                    while (v108);
                    ++v102;
                    v105 += v72;
                    ++v104;
                    --v101;
                    v103 = (v103 + v74);
                  }

                  while (v102 != v7);
                  ++v98;
                  v100 += 8;
                  ++v99;
                }

                while (v98 != v8);
                ++v95;
                v96 += v73;
                v97 += v8;
              }

              while (v95 != v9);
              v77 = (v77 + 2 * v71);
              v76 = v339;
            }

            if ((v75 | 2) < v76 && (v79 + 2) % v68 < v67)
            {
              v110 = 0;
              v111 = (v78 + 2);
              v112 = v77;
              do
              {
                v113 = 0;
                v114 = v112;
                v115 = v111;
                do
                {
                  v116 = 0;
                  v117 = 0;
                  v118 = v114;
                  v119 = 1;
                  v120 = v115;
                  do
                  {
                    v121 = 0;
                    if (v7 >= v119)
                    {
                      v122 = v119;
                    }

                    else
                    {
                      v122 = v7;
                    }

                    v123 = v122 + v116;
                    v124 = v118;
                    do
                    {
                      *&v120[v121] = *v124;
                      v124 = (v124 + v74);
                      v121 += 8;
                      --v123;
                    }

                    while (v123);
                    ++v117;
                    v120 += v72;
                    ++v119;
                    --v116;
                    v118 = (v118 + v74);
                  }

                  while (v117 != v7);
                  ++v113;
                  v115 += 8;
                  ++v114;
                }

                while (v113 != v8);
                ++v110;
                v111 += v73;
                v112 += v8;
              }

              while (v110 != v9);
              v77 = (v77 + 2 * v71);
              v76 = v339;
            }

            if ((v75 | 3) < v76 && (v79 + 3) % v68 < v67)
            {
              v125 = 0;
              v126 = (v78 + 3);
              v127 = v77;
              do
              {
                v128 = 0;
                v129 = v127;
                v130 = v126;
                do
                {
                  v131 = 0;
                  v132 = 0;
                  v133 = v129;
                  v134 = 1;
                  v135 = v130;
                  do
                  {
                    v136 = 0;
                    if (v7 >= v134)
                    {
                      v137 = v134;
                    }

                    else
                    {
                      v137 = v7;
                    }

                    v138 = v137 + v131;
                    v139 = v133;
                    do
                    {
                      *&v135[v136] = *v139;
                      v139 = (v139 + v74);
                      v136 += 8;
                      --v138;
                    }

                    while (v138);
                    ++v132;
                    v135 += v72;
                    ++v134;
                    --v131;
                    v133 = (v133 + v74);
                  }

                  while (v132 != v7);
                  ++v128;
                  v130 += 8;
                  ++v129;
                }

                while (v128 != v8);
                ++v125;
                v126 += v73;
                v127 += v8;
              }

              while (v125 != v9);
              v77 = (v77 + 2 * v71);
              v76 = v339;
            }

            v75 += 4;
            v78 = (v78 + v345);
          }

          while (v75 < v76);
          ++v69;
          result += v341;
          v6 = (v305 + 2 * v8 * v339 * v9 * v7);
        }

        while (v343 + 1 != v299);
      }

      return result;
    }

    if (!v299)
    {
      return result;
    }

    v173 = 0;
    v174 = 0;
    v175 = *(a3 + 88);
    v176 = v9 * v65;
    v177 = v9 * v7 * v8;
    v178 = 8 * v9 * v8;
    v179 = v9 * v8 * v7;
    v180 = v7 - 3;
    v294 = v8 * v66 * v9 * v65;
    v181 = v9 * v8 * v65;
    v182 = result + v181 * (8 * ((v339 - 4) >> 2) + 8);
    v293 = 2 * v66 * v181;
    v302 = v176 * 8 * v8;
    v331 = 2 * v8 * v7;
    v333 = 4 * v8;
    v183 = 2 * v7;
    v184 = 2 * v179;
    v292 = 4 * v179;
    v349 = v179;
    v291 = 6 * v179;
LABEL_166:
    v185 = v339;
    v296 = v182;
    v298 = v173;
    v306 = v6;
    if (v339 < 4)
    {
      v232 = 0;
      v188 = result;
      v187 = v6;
      if (v339 > 0)
      {
        goto LABEL_231;
      }

      goto LABEL_165;
    }

    if (!v9)
    {
      goto LABEL_165;
    }

    v322 = v173 * v339;
    if (!v8)
    {
      goto LABEL_165;
    }

    v186 = 0;
    v187 = v6;
    v188 = result;
LABEL_171:
    v189 = 0;
    v325 = v186;
    v328 = v187;
    v190 = v186 + v322;
    v191 = v186 + v322 + 1;
    v192 = v186 + v322 + 2;
    v193 = v186 + v322 + 3;
    v194 = v187;
    v313 = v188;
LABEL_173:
    v334 = v194;
    v337 = v189;
    v195 = 0;
    v196 = v188;
LABEL_177:
    if (v7 < 4)
    {
      v208 = 0;
      v204 = v196;
      v203 = v194;
      if (v7 <= 0)
      {
        goto LABEL_176;
      }

      goto LABEL_197;
    }

    v199 = 6 * v177;
    v200 = 2 * v177;
    v201 = 4 * v177;
    v202 = v7 - 3;
    v203 = v194;
    v204 = v196;
    if (v175 == 1)
    {
      do
      {
        v205 = *v203;
        v203 = (v203 + 2);
        v206 = v205;
        a6.n128_u64[0] = *(v194 + v201);
        v207 = *(v194 + v200);
        a6.n128_u64[1] = *(v194 + v199);
        *v204 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3E0).u64[0];
        v204 = (v204 + v178);
        v199 += 2;
        v201 += 2;
        v200 += 2;
        --v202;
      }

      while (v202);
      v174 = 4;
      v208 = v7 - 3;
      if (v180 >= v7)
      {
        goto LABEL_176;
      }

LABEL_197:
      if (v175 == 1)
      {
        LOWORD(v198) = *v203;
        WORD1(v198) = *(v203 + v184);
        v197 = (v203 + v184 + v184);
        WORD2(v198) = *v197;
        HIWORD(v198) = v197[v184 / 2];
        v174 = 4;
        goto LABEL_175;
      }

      if (v190 % v68 >= v67)
      {
        v174 = 0;
        v221 = 0;
        if (v191 % v68 < v67)
        {
          goto LABEL_209;
        }
      }

      else
      {
        if (v208 + 1 >= v7)
        {
          v219 = 0;
          if (v208 + 2 < v7)
          {
            goto LABEL_207;
          }

LABEL_201:
          v220 = 0;
        }

        else
        {
          v219 = *(v203 + 1);
          if (v208 + 2 >= v7)
          {
            goto LABEL_201;
          }

LABEL_207:
          v220 = *(v203 + 2);
        }

        LOWORD(v221) = *v203;
        WORD1(v221) = v219;
        HIDWORD(v221) = v220;
        v203 = (v203 + 2 * v349);
        v174 = 1;
        if (v191 % v68 < v67)
        {
LABEL_209:
          if (v208 + 1 >= v7)
          {
            v225 = 0;
            if (v208 + 2 < v7)
            {
              goto LABEL_213;
            }

LABEL_211:
            v226 = 0;
          }

          else
          {
            v225 = *(v203 + 1);
            if (v208 + 2 >= v7)
            {
              goto LABEL_211;
            }

LABEL_213:
            v226 = *(v203 + 2);
          }

          LOWORD(v222) = *v203;
          WORD1(v222) = v225;
          HIDWORD(v222) = v226;
          v203 = (v203 + 2 * v349);
          ++v174;
          if (v192 % v68 < v67)
          {
LABEL_215:
            if (v208 + 1 >= v7)
            {
              v227 = 0;
              if (v208 + 2 < v7)
              {
                goto LABEL_219;
              }

LABEL_217:
              v228 = 0;
            }

            else
            {
              v227 = *(v203 + 1);
              if (v208 + 2 >= v7)
              {
                goto LABEL_217;
              }

LABEL_219:
              v228 = *(v203 + 2);
            }

            v223.n128_u16[0] = *v203;
            v223.n128_u16[1] = v227;
            v223.n128_u32[1] = v228;
            v203 = (v203 + 2 * v349);
            ++v174;
            if (v193 % v68 < v67)
            {
LABEL_221:
              if (v208 + 1 >= v7)
              {
                v229 = 0;
                if (v208 + 2 < v7)
                {
                  goto LABEL_225;
                }

LABEL_223:
                v230 = 0;
              }

              else
              {
                v229 = *(v203 + 1);
                if (v208 + 2 >= v7)
                {
                  goto LABEL_223;
                }

LABEL_225:
                v230 = *(v203 + 2);
              }

              LOWORD(v224) = *v203;
              WORD1(v224) = v229;
              HIDWORD(v224) = v230;
              ++v174;
LABEL_227:
              v231 = v222;
              v223.n128_u64[1] = v224;
              a6 = v223;
              v198 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3E0).u64[0];
LABEL_175:
              *v204 = v198;
              goto LABEL_176;
            }

LABEL_205:
            v224 = 0;
            goto LABEL_227;
          }

LABEL_204:
          v223.n128_u64[0] = 0;
          if (v193 % v68 < v67)
          {
            goto LABEL_221;
          }

          goto LABEL_205;
        }
      }

      v222 = 0;
      if (v192 % v68 < v67)
      {
        goto LABEL_215;
      }

      goto LABEL_204;
    }

    v209 = v191 % v68;
    v210 = v192 % v68;
    v211 = v193 % v68;
    v212 = v7 - 3;
    v203 = v194;
    v204 = v196;
    while (1)
    {
      if (v190 % v68 >= v67)
      {
        v174 = 0;
        v215 = 0;
        v216 = v203;
        if (v209 >= v67)
        {
LABEL_189:
          v217 = 0;
          if (v210 >= v67)
          {
            goto LABEL_190;
          }

          goto LABEL_194;
        }
      }

      else
      {
        v215 = *v203;
        v216 = (v203 + 2 * v177);
        v174 = 1;
        if (v209 >= v67)
        {
          goto LABEL_189;
        }
      }

      v217 = *v216;
      v216 = (v216 + 2 * v177);
      ++v174;
      if (v210 >= v67)
      {
LABEL_190:
        v218.n128_u64[0] = 0;
        if (v211 >= v67)
        {
          goto LABEL_195;
        }

        goto LABEL_185;
      }

LABEL_194:
      v218.n128_u64[0] = *v216;
      v216 = (v216 + 2 * v177);
      ++v174;
      if (v211 >= v67)
      {
LABEL_195:
        v213 = 0;
        goto LABEL_186;
      }

LABEL_185:
      v213 = *v216;
      ++v174;
LABEL_186:
      v214 = v217;
      v218.n128_u64[1] = v213;
      a6 = v218;
      *v204 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3E0).u64[0];
      v204 = (v204 + v178);
      v203 = (v203 + 2);
      if (!--v212)
      {
        v208 = v7 - 3;
        if (v180 < v7)
        {
          goto LABEL_197;
        }

LABEL_176:
        ++v195;
        ++v196;
        v194 = (v194 + v183);
        if (v195 != v8)
        {
          goto LABEL_177;
        }

        v189 = v337 + 1;
        v188 = (v188 + v333 * 2);
        v194 = (v334 + v331);
        if (v337 + 1 != v9)
        {
          goto LABEL_173;
        }

        v187 = (v328 + 2 * v174 * v349);
        v186 = v325 + 4;
        v188 = (v313 + v302);
        if (v325 + 4 < v339 - 3)
        {
          goto LABEL_171;
        }

        v232 = ((v339 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
        v185 = v339;
        v173 = v298;
        if (v232 >= v339)
        {
          goto LABEL_165;
        }

LABEL_231:
        if (!v9 || (v233 = v232 + v173 * v185, !v8))
        {
LABEL_165:
          v173 = v298 + 1;
          result += v294;
          v6 = (v306 + 2 * v8 * v339 * v9 * v7);
          v182 = &v296[v293];
          if (v298 + 1 == v299)
          {
            return result;
          }

          goto LABEL_166;
        }

        v234 = 0;
        v235 = 0;
        v236 = v232 | 1;
        v335 = v233 + 2;
        v338 = v233 + 1;
        v237 = v232 | 2;
        v238 = v232 | 3;
        v323 = v187 + v184;
        v326 = v233 + 3;
        v320 = v187 + v292;
        v316 = v233;
        v318 = v187 + v291;
        v239 = v187;
        v329 = v187;
LABEL_237:
        v310 = v235;
        v311 = v234;
        v240 = 0;
        v308 = v239;
        v314 = v188;
        v241 = v188;
LABEL_242:
        if (v7 < 4)
        {
          v264 = 0;
          v247 = v241;
          v253 = v239;
          if (v7 <= 0)
          {
            goto LABEL_241;
          }

          goto LABEL_279;
        }

        v245 = v234;
        v246 = v7 - 3;
        v247 = v241;
        if (v175 != 1)
        {
          v248 = v233 % v68;
          v249 = v338 % v68;
          v250 = v335 % v68;
          v251 = v326 % v68;
          v252 = v7 - 3;
          v253 = v239;
          v247 = v241;
          while (1)
          {
            if (v248 >= v67)
            {
              v174 = 0;
              v260 = 0;
              v261 = v253;
              if (v249 >= v67)
              {
LABEL_258:
                v262 = 0;
                if (v250 >= v67)
                {
                  goto LABEL_259;
                }

                goto LABEL_266;
              }
            }

            else
            {
              v260 = *v253;
              v261 = (v253 + 2 * v349);
              v174 = 1;
              if (v249 >= v67)
              {
                goto LABEL_258;
              }
            }

            if (v236 >= v339)
            {
              v262 = 0;
              v261 = (v261 + 2 * v349);
              ++v174;
              if (v250 >= v67)
              {
LABEL_259:
                v263.n128_u64[0] = 0;
                if (v251 < v67)
                {
                  goto LABEL_270;
                }

                goto LABEL_254;
              }
            }

            else
            {
              v262 = *v261;
              v261 = (v261 + 2 * v349);
              ++v174;
              if (v250 >= v67)
              {
                goto LABEL_259;
              }
            }

LABEL_266:
            if (v237 >= v339)
            {
              v263.n128_u64[0] = 0;
              v261 = (v261 + 2 * v349);
              ++v174;
              if (v251 < v67)
              {
LABEL_270:
                if (v238 >= v339)
                {
                  v258 = 0;
                }

                else
                {
                  v258 = *v261;
                }

                ++v174;
                goto LABEL_255;
              }
            }

            else
            {
              v263.n128_u64[0] = *v261;
              v261 = (v261 + 2 * v349);
              ++v174;
              if (v251 < v67)
              {
                goto LABEL_270;
              }
            }

LABEL_254:
            v258 = 0;
LABEL_255:
            v259 = v262;
            v263.n128_u64[1] = v258;
            a6 = v263;
            *v247 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3E0).u64[0];
            v247 = (v247 + v178);
            v253 = (v253 + 2);
            if (!--v252)
            {
              v264 = v7 - 3;
              v185 = v339;
              v187 = v329;
              v233 = v316;
              if (v180 < v7)
              {
                goto LABEL_279;
              }

LABEL_241:
              ++v240;
              ++v241;
              v239 = (v239 + 2 * v7);
              v234 += v183;
              if (v240 == v8)
              {
                v235 = v310 + 1;
                v188 = &v314[v333];
                v239 = (v308 + 2 * v8 * v7);
                v234 = v311 + v331;
                if (v310 + 1 == v9)
                {
                  goto LABEL_165;
                }

                goto LABEL_237;
              }

              goto LABEL_242;
            }
          }
        }

        while (2)
        {
          if (v236 >= v185)
          {
            v256 = 0;
            if (v237 < v185)
            {
              goto LABEL_252;
            }

LABEL_249:
            v257 = 0;
            if (v238 < v185)
            {
              goto LABEL_245;
            }

LABEL_253:
            v254 = 0;
          }

          else
          {
            v256 = *(v323 + v245);
            if (v237 >= v185)
            {
              goto LABEL_249;
            }

LABEL_252:
            v257 = *(v320 + v245);
            if (v238 >= v185)
            {
              goto LABEL_253;
            }

LABEL_245:
            v254 = *(v318 + v245);
          }

          a6.n128_u64[0] = *(v187 + v245);
          a6.n128_u64[1] = v256;
          v255 = v254;
          *v247 = vqtbl2q_s8(*a6.n128_u64, xmmword_239D7E3E0).u64[0];
          v247 = (v247 + v178);
          v245 += 2;
          if (!--v246)
          {
            v253 = (v187 + v245);
            v174 = 4;
            v264 = v7 - 3;
            if (v180 >= v7)
            {
              goto LABEL_241;
            }

LABEL_279:
            if (v175 == 1)
            {
              v265 = v264 + 1;
              v266 = v264 + 2;
              v267 = v253 + v177;
              if (v236 >= v185)
              {
                v272 = 0;
                v273 = &v267[v177];
                if (v237 < v185)
                {
                  goto LABEL_298;
                }
              }

              else
              {
                if (v265 >= v7)
                {
                  v268 = 0;
                  if (v266 < v7)
                  {
                    goto LABEL_296;
                  }

LABEL_283:
                  v269 = 0;
                }

                else
                {
                  v268 = v267[1];
                  if (v266 >= v7)
                  {
                    goto LABEL_283;
                  }

LABEL_296:
                  v269 = v267[2];
                }

                LOWORD(v272) = *v267;
                WORD1(v272) = v268;
                HIDWORD(v272) = v269;
                v187 = v329;
                v273 = &v267[v177];
                if (v237 < v185)
                {
LABEL_298:
                  if (v265 >= v7)
                  {
                    v279 = 0;
                    if (v266 < v7)
                    {
                      goto LABEL_309;
                    }

LABEL_300:
                    v280 = 0;
                  }

                  else
                  {
                    v279 = v273[1];
                    if (v266 >= v7)
                    {
                      goto LABEL_300;
                    }

LABEL_309:
                    v280 = v273[2];
                  }

                  LOWORD(v274) = *v273;
                  WORD1(v274) = v279;
                  HIDWORD(v274) = v280;
                  v187 = v329;
                  if (v238 < v185)
                  {
LABEL_311:
                    v283 = &v273[v177];
                    if (v265 >= v7)
                    {
                      v284 = 0;
                      if (v266 < v7)
                      {
                        goto LABEL_316;
                      }

LABEL_313:
                      v285 = 0;
                    }

                    else
                    {
                      v284 = v283[1];
                      if (v266 >= v7)
                      {
                        goto LABEL_313;
                      }

LABEL_316:
                      v285 = v283[2];
                    }

                    LOWORD(v242) = *v283;
                    WORD1(v242) = v284;
                    HIDWORD(v242) = v285;
LABEL_239:
                    a6.n128_u16[0] = *v253;
                    a6.n128_u64[1] = v272;
                    v243 = v242;
                    v244 = vqtbl2q_s8(*a6.n128_u64, xmmword_239D7E3E0).u64[0];
                    v174 = 4;
LABEL_240:
                    *v247 = v244;
                    goto LABEL_241;
                  }

LABEL_238:
                  v242 = 0;
                  goto LABEL_239;
                }
              }

              v274 = 0;
              if (v238 < v185)
              {
                goto LABEL_311;
              }

              goto LABEL_238;
            }

            if (v233 % v68 >= v67)
            {
              v174 = 0;
              v275 = 0;
              if (v338 % v68 < v67)
              {
                goto LABEL_304;
              }
            }

            else
            {
              if (v264 + 1 >= v7)
              {
                v270 = 0;
                if (v264 + 2 < v7)
                {
                  goto LABEL_302;
                }

LABEL_287:
                v271 = 0;
              }

              else
              {
                v270 = *(v253 + 1);
                if (v264 + 2 >= v7)
                {
                  goto LABEL_287;
                }

LABEL_302:
                v271 = *(v253 + 2);
              }

              LOWORD(v275) = *v253;
              WORD1(v275) = v270;
              HIDWORD(v275) = v271;
              v253 = (v253 + 2 * v177);
              v174 = 1;
              if (v338 % v68 < v67)
              {
LABEL_304:
                if (v236 >= v185)
                {
                  v276 = 0;
                }

                else
                {
                  if (v264 + 1 >= v7)
                  {
                    v281 = 0;
                    if (v264 + 2 < v7)
                    {
                      goto LABEL_319;
                    }

LABEL_307:
                    v282 = 0;
                  }

                  else
                  {
                    v281 = *(v253 + 1);
                    if (v264 + 2 >= v7)
                    {
                      goto LABEL_307;
                    }

LABEL_319:
                    v282 = *(v253 + 2);
                  }

                  LOWORD(v276) = *v253;
                  WORD1(v276) = v281;
                  HIDWORD(v276) = v282;
                }

                v253 = (v253 + 2 * v177);
                ++v174;
                if (v335 % v68 < v67)
                {
LABEL_322:
                  if (v237 >= v185)
                  {
                    v277.n128_u64[0] = 0;
                  }

                  else
                  {
                    if (v264 + 1 >= v7)
                    {
                      v286 = 0;
                      if (v264 + 2 < v7)
                      {
                        goto LABEL_328;
                      }

LABEL_325:
                      v287 = 0;
                    }

                    else
                    {
                      v286 = *(v253 + 1);
                      if (v264 + 2 >= v7)
                      {
                        goto LABEL_325;
                      }

LABEL_328:
                      v287 = *(v253 + 2);
                    }

                    v277.n128_u16[0] = *v253;
                    v277.n128_u16[1] = v286;
                    v277.n128_u32[1] = v287;
                  }

                  v253 = (v253 + 2 * v177);
                  ++v174;
                  if (v326 % v68 < v67)
                  {
LABEL_331:
                    if (v238 >= v185)
                    {
                      v278 = 0;
                    }

                    else
                    {
                      if (v264 + 1 >= v7)
                      {
                        v288 = 0;
                        if (v264 + 2 < v7)
                        {
                          goto LABEL_337;
                        }

LABEL_334:
                        v289 = 0;
                      }

                      else
                      {
                        v288 = *(v253 + 1);
                        if (v264 + 2 >= v7)
                        {
                          goto LABEL_334;
                        }

LABEL_337:
                        v289 = *(v253 + 2);
                      }

                      LOWORD(v278) = *v253;
                      WORD1(v278) = v288;
                      HIDWORD(v278) = v289;
                    }

                    ++v174;
LABEL_340:
                    v290 = v276;
                    v277.n128_u64[1] = v278;
                    a6 = v277;
                    v244 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3E0).u64[0];
                    goto LABEL_240;
                  }

LABEL_294:
                  v278 = 0;
                  goto LABEL_340;
                }

LABEL_293:
                v277.n128_u64[0] = 0;
                if (v326 % v68 < v67)
                {
                  goto LABEL_331;
                }

                goto LABEL_294;
              }
            }

            v276 = 0;
            if (v335 % v68 < v67)
            {
              goto LABEL_322;
            }

            goto LABEL_293;
          }

          continue;
        }
      }
    }
  }

  if (!v10)
  {
    if (!v299)
    {
      return result;
    }

    v140 = 0;
    v141 = v7 == 0;
    if (!v9)
    {
      v141 = 1;
    }

    v142 = v8 == 0;
    if (v8)
    {
      v143 = v141;
    }

    else
    {
      v143 = 1;
    }

    v144 = v9 * v8;
    if (!v9)
    {
      v142 = 1;
    }

    v145 = v339 * v7 * v144;
    v146 = v339 * (2 * v144 - 2);
    v147 = a2 + v146 + 4;
    v148 = v144 * v339;
    v149 = 2 * v148 * v7;
    v150 = 2 * v148;
    v151 = v146 + 6;
    while (1)
    {
      if (v339 < 4)
      {
        v163 = 0;
        v155 = v6;
        v152 = v6;
        if (!v7)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v152 = v6;
        if (v143)
        {
          goto LABEL_124;
        }

        v153 = 0;
        v154 = v147;
        v155 = v6;
        do
        {
          v156 = 0;
          v157 = v154;
          do
          {
            v158 = 0;
            v159 = v157;
            do
            {
              v160 = v8;
              v161 = v159;
              v162 = result;
              do
              {
                result = v162 + 4;
                *v162 = *(v161 - 2);
                v162[1] = *(v161 - 1);
                v162[2] = *v161;
                v162[3] = v161[1];
                v161 -= v339;
                v162 += 4;
                --v160;
              }

              while (v160);
              ++v158;
              v159 -= v8 * v339;
            }

            while (v158 != v9);
            ++v156;
            v157 = (v157 + v150);
          }

          while (v156 != v7);
          v153 += 4;
          ++v155;
          v154 += 8;
        }

        while (v153 < v339 - 3);
        v163 = v339 & 0xFFFFFFFFFFFFFFFCLL;
        if (!v7)
        {
          goto LABEL_124;
        }
      }

      v164 = __OFSUB__(v339, v163);
      v165 = v339 - v163;
      if (!((v165 < 0) ^ v164 | (v165 == 0)) && !v142)
      {
        v166 = 0;
        v167 = (v155 + v151);
        do
        {
          v168 = 0;
          v169 = v167;
          do
          {
            v170 = v8;
            v171 = v169;
            do
            {
              v172 = result;
              result += 4;
              if (v165 <= 3)
              {
                switch(v165)
                {
                  case 1:
                    goto LABEL_150;
                  case 2:
                    goto LABEL_149;
                  case 3:
                    goto LABEL_148;
                }
              }

              else
              {
                if (v165 <= 5)
                {
                  if (v165 != 4)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_147;
                }

                if (v165 == 6)
                {
                  goto LABEL_145;
                }

                if (v165 == 7)
                {
                  v172[6] = v171[3];
LABEL_145:
                  v172[5] = v171[2];
LABEL_146:
                  *result = v171[1];
LABEL_147:
                  v172[3] = *v171;
LABEL_148:
                  v172[2] = *(v171 - 1);
LABEL_149:
                  v172[1] = *(v171 - 2);
LABEL_150:
                  *v172 = *(v171 - 3);
                }
              }

              v171 -= v339;
              --v170;
            }

            while (v170);
            ++v168;
            v169 -= v8 * v339;
          }

          while (v168 != v9);
          ++v166;
          v167 = (v167 + v150);
        }

        while (v166 != v7);
      }

LABEL_124:
      ++v140;
      v6 = (v152 + 2 * v145);
      v147 += v149;
      if (v140 == v299)
      {
        return result;
      }
    }
  }

  if (v299)
  {
    v11 = 0;
    v12 = v7 == 0;
    if (!v9)
    {
      v12 = 1;
    }

    v13 = v8 == 0;
    if (!v8)
    {
      v12 = 1;
    }

    v315 = v12;
    v14 = v9 * v8;
    if (!v9)
    {
      v13 = 1;
    }

    v312 = v13;
    v319 = v339 * v7 * v14;
    v332 = 4 * v14;
    v309 = 8 * v14 - 2;
    v15 = (a2 + v309);
    v317 = v14 * v339 * v7;
    v16 = v14 * v339;
    v17 = 2 * v14 * v339;
    v307 = 6 * v14 - 2;
    v18 = (a2 + v307);
    v301 = 14 * v14 - 2;
    v303 = 4 * v14 - 2;
    v300 = 12 * v14 - 2;
    v19 = (a2 + v303);
    v295 = 2 * v14 - 2;
    v297 = 10 * v14 - 2;
    do
    {
      v20 = v339;
      v304 = v6;
      v327 = v15;
      v330 = v11;
      v321 = v19;
      v324 = v18;
      if (v339 < 4)
      {
        v45 = 0;
        v24 = v6;
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v315)
        {
          goto LABEL_11;
        }

        v21 = 0;
        v22 = v18;
        v23 = v15;
        v24 = v6;
        do
        {
          v342 = v19;
          v344 = v21;
          v25 = 0;
          v26 = v19;
          v340 = v22;
          v336 = v23;
          v346 = v24;
          do
          {
            v27 = 0;
            v28 = v26;
            v29 = v22;
            v30 = v23;
            v31 = v24 + 2 * (v9 - 1) * v8;
            do
            {
              v32 = v28;
              v33 = v29;
              v34 = v30;
              v35 = v8;
              v36 = (v31 + 2 * (v8 - 1));
              do
              {
                v38 = *v36--;
                v37 = v38;
                v40 = *v32--;
                v39 = v40;
                v42 = *v33--;
                v41 = v42;
                v43 = *v34--;
                LOWORD(v44) = v37;
                WORD1(v44) = v39;
                WORD2(v44) = v41;
                HIWORD(v44) = v43;
                *result = v44;
                result += 4;
                --v35;
              }

              while (v35);
              v31 -= 2 * v8;
              ++v27;
              v30 -= v8;
              v29 -= v8;
              v28 -= v8;
            }

            while (v27 != v9);
            v24 = (v24 + 2 * v16);
            ++v25;
            v23 = (v23 + v17);
            v22 = (v22 + v17);
            v26 = (v26 + v17);
          }

          while (v25 != v7);
          v21 = v344 + 4;
          v24 = &v346[v332 / 4];
          v23 = &v336[v332];
          v22 = &v340[v332];
          v19 = &v342[v332];
        }

        while (v344 + 4 < v339 - 3);
        v45 = v339 & 0xFFFFFFFFFFFFFFFCLL;
        v20 = v339;
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      v46 = v20 - v45;
      if (v20 > v45 && !v312)
      {
        v47 = 0;
        v48 = v24 + v301;
        v49 = v24 + v300;
        v50 = v24 + v297;
        v51 = v24 + v309;
        v52 = v24 + v307;
        v53 = v24 + v303;
        v54 = v24 + v295;
        do
        {
          v347 = v47;
          v55 = 0;
          v56 = v54;
          v57 = v53;
          v58 = v52;
          v59 = v51;
          v60 = v50;
          v61 = v49;
          v62 = v48;
          do
          {
            v63 = 0;
            do
            {
              v64 = result;
              result += 4;
              if (v46 <= 3)
              {
                switch(v46)
                {
                  case 1:
                    goto LABEL_37;
                  case 2:
                    goto LABEL_36;
                  case 3:
                    goto LABEL_35;
                }
              }

              else
              {
                if (v46 <= 5)
                {
                  if (v46 != 4)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_34;
                }

                if (v46 == 6)
                {
                  goto LABEL_32;
                }

                if (v46 == 7)
                {
                  v64[6] = *(v62 + 2 * v63);
LABEL_32:
                  v64[5] = *(v61 + 2 * v63);
LABEL_33:
                  *result = *(v60 + 2 * v63);
LABEL_34:
                  v64[3] = *(v59 + 2 * v63);
LABEL_35:
                  v64[2] = *(v58 + 2 * v63);
LABEL_36:
                  v64[1] = *(v57 + 2 * v63);
LABEL_37:
                  *v64 = *(v56 + 2 * v63);
                }
              }

              --v63;
            }

            while (-v8 != v63);
            ++v55;
            v62 -= 2 * v8;
            v61 -= 2 * v8;
            v60 -= 2 * v8;
            v59 -= 2 * v8;
            v58 -= 2 * v8;
            v57 -= 2 * v8;
            v56 -= 2 * v8;
          }

          while (v55 != v9);
          v47 = v347 + 1;
          v48 += v17;
          v49 += v17;
          v50 += v17;
          v51 += v17;
          v52 += v17;
          v53 += v17;
          v54 += v17;
        }

        while (v347 + 1 != v7);
      }

LABEL_11:
      v6 = (v304 + 2 * v319);
      v11 = v330 + 1;
      v15 = &v327[v317];
      v18 = &v324[v317];
      v19 = &v321[v317];
    }

    while (v330 + 1 != v299);
  }

  return result;
}

int8x16_t *sub_239C86500(int8x16_t *result, uint64_t *a2, uint64_t a3, double a4, double a5, __n128 a6)
{
  v383 = a2;
  v6 = *(a3 + 8);
  v425 = *(a3 + 32);
  v7 = *(a3 + 56);
  v379 = *(a3 + 48);
  v429 = *(a3 + 64);
  v8 = *(a3 + 108);
  if (*(a3 + 104) != 1)
  {
    v95 = *(a3 + 16);
    v96 = *(a3 + 40);
    v97 = *(a3 + 72);
    v98 = *(a3 + 80);
    if (v8)
    {
      if (v379 && v6 && v7 && v425 && v429)
      {
        v99 = 0;
        v100 = v429 * v95;
        v101 = 16 * v429 * v7;
        v102 = v429 * v6 * v7;
        v103 = 16 * v7;
        v420 = v7 * v96 * v100;
        v104 = 4 * v429 * v7;
        v423 = 8 * v7 * v100;
        v105 = 2 * v429 * v7;
        do
        {
          v106 = 0;
          v107 = v425;
          v421 = v99;
          v426 = v99 * v425;
          v108 = v383;
          v109 = result;
          do
          {
            v110 = v106 + v426;
            if ((v106 + v426) % v98 < v97)
            {
              v111 = 0;
              v112 = v108;
              v113 = v109;
              do
              {
                v114 = 0;
                v115 = v112;
                v116 = v113;
                do
                {
                  v117 = 0;
                  v118 = 0;
                  v119 = 2;
                  v120 = v115;
                  v121 = v116;
                  do
                  {
                    if (v6 >= v119)
                    {
                      v122 = v119;
                    }

                    else
                    {
                      v122 = v6;
                    }

                    v123 = v122 + v117;
                    v124 = v120;
                    v125 = v121;
                    do
                    {
                      v125->i16[0] = *v124;
                      v125 = (v125 + 8);
                      v124 = (v124 + v105);
                      --v123;
                    }

                    while (v123);
                    v118 += 2;
                    v121 = (v121 + v101);
                    v120 = (v120 + v104);
                    v119 += 2;
                    v117 -= 2;
                  }

                  while (v118 < v6);
                  ++v114;
                  ++v116;
                  ++v115;
                }

                while (v114 != v7);
                ++v111;
                v113 = (v113 + v103);
                v112 += v7;
              }

              while (v111 != v429);
              v108 = (v108 + 2 * v102);
              v107 = v425;
            }

            if ((v106 | 1) < v107 && (v110 + 1) % v98 < v97)
            {
              v126 = 0;
              v127 = &v109->i16[1];
              v128 = v108;
              do
              {
                v129 = 0;
                v130 = v128;
                v131 = v127;
                do
                {
                  v132 = 0;
                  v133 = 0;
                  v134 = 2;
                  v135 = v130;
                  v136 = v131;
                  do
                  {
                    v137 = 0;
                    if (v6 >= v134)
                    {
                      v138 = v134;
                    }

                    else
                    {
                      v138 = v6;
                    }

                    v139 = v138 + v132;
                    v140 = v135;
                    do
                    {
                      *&v136[v137] = *v140;
                      v140 = (v140 + v105);
                      v137 += 8;
                      --v139;
                    }

                    while (v139);
                    v133 += 2;
                    v136 += v101;
                    v135 = (v135 + v104);
                    v134 += 2;
                    v132 -= 2;
                  }

                  while (v133 < v6);
                  ++v129;
                  v131 += 8;
                  ++v130;
                }

                while (v129 != v7);
                ++v126;
                v127 = (v127 + v103);
                v128 += v7;
              }

              while (v126 != v429);
              v108 = (v108 + 2 * v102);
              v107 = v425;
            }

            if ((v106 | 2) < v107 && (v110 + 2) % v98 < v97)
            {
              v141 = 0;
              v142 = &v109->i16[2];
              v143 = v108;
              do
              {
                v144 = 0;
                v145 = v143;
                v146 = v142;
                do
                {
                  v147 = 0;
                  v148 = 0;
                  v149 = 2;
                  v150 = v145;
                  v151 = v146;
                  do
                  {
                    v152 = 0;
                    if (v6 >= v149)
                    {
                      v153 = v149;
                    }

                    else
                    {
                      v153 = v6;
                    }

                    v154 = v153 + v147;
                    v155 = v150;
                    do
                    {
                      *&v151[v152] = *v155;
                      v155 = (v155 + v105);
                      v152 += 8;
                      --v154;
                    }

                    while (v154);
                    v148 += 2;
                    v151 += v101;
                    v150 = (v150 + v104);
                    v149 += 2;
                    v147 -= 2;
                  }

                  while (v148 < v6);
                  ++v144;
                  v146 += 8;
                  ++v145;
                }

                while (v144 != v7);
                ++v141;
                v142 = (v142 + v103);
                v143 += v7;
              }

              while (v141 != v429);
              v108 = (v108 + 2 * v102);
              v107 = v425;
            }

            if ((v106 | 3) < v107 && (v110 + 3) % v98 < v97)
            {
              v156 = 0;
              v157 = &v109->i16[3];
              v158 = v108;
              do
              {
                v159 = 0;
                v160 = v158;
                v161 = v157;
                do
                {
                  v162 = 0;
                  v163 = 0;
                  v164 = 2;
                  v165 = v160;
                  v166 = v161;
                  do
                  {
                    v167 = 0;
                    if (v6 >= v164)
                    {
                      v168 = v164;
                    }

                    else
                    {
                      v168 = v6;
                    }

                    v169 = v168 + v162;
                    v170 = v165;
                    do
                    {
                      *&v166[v167] = *v170;
                      v170 = (v170 + v105);
                      v167 += 8;
                      --v169;
                    }

                    while (v169);
                    v163 += 2;
                    v166 += v101;
                    v165 = (v165 + v104);
                    v164 += 2;
                    v162 -= 2;
                  }

                  while (v163 < v6);
                  ++v159;
                  v161 += 8;
                  ++v160;
                }

                while (v159 != v7);
                ++v156;
                v157 = (v157 + v103);
                v158 += v7;
              }

              while (v156 != v429);
              v108 = (v108 + 2 * v102);
              v107 = v425;
            }

            v106 += 4;
            v109 = (v109 + v423);
          }

          while (v106 < v107);
          v99 = v421 + 1;
          result = (result + 2 * v420);
          v383 = (v383 + 2 * v7 * v425 * v429 * v6);
        }

        while (v421 + 1 != v379);
      }

      return result;
    }

    if (!v379)
    {
      return result;
    }

    v216 = 0;
    v217 = 0;
    v218 = *(a3 + 88);
    v219 = v429 * v6 * v7;
    v220 = 16 * v429 * v7;
    v221 = v429 * v7 * v6;
    v222 = v6 - 3;
    v406 = v7;
    v223 = v7 * v429 * v95;
    v374 = v223 * v96;
    v428 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
    v224 = v429 * v7 * v95;
    v225 = &result->i8[v224 * (8 * ((v425 - 4) >> 2) + 8)];
    v371 = 2 * v96 * v224;
    v381 = 8 * v223;
    v403 = 2 * v7 * v6;
    v226 = 2 * v6;
    v227 = 2 * v221;
LABEL_260:
    v228 = v425;
    v376 = v225;
    v378 = v216;
    if (v425 >= 4)
    {
      if (!v429)
      {
        goto LABEL_259;
      }

      v385 = v216 * v425;
      if (!v7)
      {
        goto LABEL_259;
      }

      v229 = 0;
      v230 = v383;
      v231 = result;
LABEL_265:
      v232 = 0;
      v399 = v229;
      v233 = v229 + v385;
      v234 = v229 + v385 + 1;
      v235 = v229 + v385 + 2;
      v236 = v229 + v385 + 3;
      v387 = v231;
      v391 = v230;
LABEL_267:
      v413 = v230;
      v417 = v232;
      v237 = 0;
      v409 = v231;
LABEL_272:
      if (v6 < 4)
      {
        v255 = 0;
        v251 = v231;
        v250 = v230;
        if (v6 <= 0)
        {
          goto LABEL_271;
        }

        goto LABEL_293;
      }

      if (v218 == 1)
      {
        v246 = 0;
        v248 = 6 * v219;
        v247 = 2 * v219;
        v249 = 4 * v219;
        v250 = v230;
        v251 = v231;
        do
        {
          v252 = *v250;
          v250 = (v250 + 4);
          v253 = v252;
          a6.n128_u64[0] = *(v230 + v249);
          v254 = *(v230 + v247);
          a6.n128_u64[1] = *(v230 + v248);
          v246 += 2;
          *v251 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3F0);
          v251 = (v251 + v220);
          v248 += 4;
          v249 += 4;
          v247 += 4;
        }

        while (v246 < v222);
        v217 = 4;
        v255 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
        if (v428 >= v6)
        {
          goto LABEL_271;
        }

LABEL_293:
        if (v218 == 1)
        {
          if ((v255 | 1) < v6)
          {
            v238 = *(v250 + 1);
            v239 = (v250 + v227);
            v240 = *(v250 + v227 + 2);
            v241 = (v250 + v227 + v227);
            v242 = v241[1];
            v243 = &v241[v227 / 2];
            v244 = v241[v227 / 2 + 1];
          }

          else
          {
            v242 = 0;
            v238 = 0;
            v240 = 0;
            v244 = 0;
            v239 = (v250 + v227);
            v241 = (v250 + v227 + v227);
            v243 = &v241[v227 / 2];
          }

          v245.i16[0] = *v250;
          v245.i16[1] = *v239;
          v245.i16[2] = *v241;
          v245.i16[3] = *v243;
          v245.i16[4] = v238;
          v245.i16[5] = v240;
          v245.i16[6] = v242;
          v245.i16[7] = v244;
          v217 = 4;
          v228 = v425;
          goto LABEL_270;
        }

        if (v233 % v98 >= v97)
        {
          v217 = 0;
          v269 = 0;
          if (v234 % v98 < v97)
          {
            goto LABEL_309;
          }
        }

        else
        {
          if ((v255 | 1) >= v6)
          {
            v266 = 0;
            if (v255 + 2 < v6)
            {
              goto LABEL_306;
            }

LABEL_299:
            v267 = 0;
            if (v255 + 3 >= v6)
            {
              goto LABEL_300;
            }

LABEL_307:
            v268 = *(v250 + 3);
          }

          else
          {
            v266 = *(v250 + 1);
            if (v255 + 2 >= v6)
            {
              goto LABEL_299;
            }

LABEL_306:
            v267 = *(v250 + 2);
            if (v255 + 3 < v6)
            {
              goto LABEL_307;
            }

LABEL_300:
            v268 = 0;
          }

          LOWORD(v269) = *v250;
          WORD1(v269) = v266;
          WORD2(v269) = v267;
          HIWORD(v269) = v268;
          v250 = (v250 + 2 * v221);
          v217 = 1;
          if (v234 % v98 < v97)
          {
LABEL_309:
            if ((v255 | 1) >= v6)
            {
              v273 = 0;
              if (v255 + 2 < v6)
              {
                goto LABEL_314;
              }

LABEL_311:
              v274 = 0;
              if (v255 + 3 >= v6)
              {
                goto LABEL_312;
              }

LABEL_315:
              v275 = *(v250 + 3);
            }

            else
            {
              v273 = *(v250 + 1);
              if (v255 + 2 >= v6)
              {
                goto LABEL_311;
              }

LABEL_314:
              v274 = *(v250 + 2);
              if (v255 + 3 < v6)
              {
                goto LABEL_315;
              }

LABEL_312:
              v275 = 0;
            }

            LOWORD(v270) = *v250;
            WORD1(v270) = v273;
            WORD2(v270) = v274;
            HIWORD(v270) = v275;
            v250 = (v250 + 2 * v221);
            ++v217;
            if (v235 % v98 < v97)
            {
LABEL_317:
              if ((v255 | 1) >= v6)
              {
                v276 = 0;
                if (v255 + 2 < v6)
                {
                  goto LABEL_322;
                }

LABEL_319:
                v277 = 0;
                if (v255 + 3 >= v6)
                {
                  goto LABEL_320;
                }

LABEL_323:
                v278 = *(v250 + 3);
              }

              else
              {
                v276 = *(v250 + 1);
                if (v255 + 2 >= v6)
                {
                  goto LABEL_319;
                }

LABEL_322:
                v277 = *(v250 + 2);
                if (v255 + 3 < v6)
                {
                  goto LABEL_323;
                }

LABEL_320:
                v278 = 0;
              }

              v271.n128_u16[0] = *v250;
              v271.n128_u16[1] = v276;
              v271.n128_u16[2] = v277;
              v271.n128_u16[3] = v278;
              v250 = (v250 + 2 * v221);
              ++v217;
              if (v236 % v98 < v97)
              {
LABEL_325:
                if ((v255 | 1) >= v6)
                {
                  v279 = 0;
                  if (v255 + 2 < v6)
                  {
                    goto LABEL_330;
                  }

LABEL_327:
                  v280 = 0;
                  if (v255 + 3 >= v6)
                  {
                    goto LABEL_328;
                  }

LABEL_331:
                  v281 = *(v250 + 3);
                }

                else
                {
                  v279 = *(v250 + 1);
                  if (v255 + 2 >= v6)
                  {
                    goto LABEL_327;
                  }

LABEL_330:
                  v280 = *(v250 + 2);
                  if (v255 + 3 < v6)
                  {
                    goto LABEL_331;
                  }

LABEL_328:
                  v281 = 0;
                }

                LOWORD(v272) = *v250;
                WORD1(v272) = v279;
                WORD2(v272) = v280;
                HIWORD(v272) = v281;
                ++v217;
LABEL_333:
                v282 = v270;
                v271.n128_u64[1] = v272;
                a6 = v271;
                v245 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3F0);
LABEL_270:
                *v251 = v245;
                goto LABEL_271;
              }

LABEL_304:
              v272 = 0;
              goto LABEL_333;
            }

LABEL_303:
            v271.n128_u64[0] = 0;
            if (v236 % v98 < v97)
            {
              goto LABEL_325;
            }

            goto LABEL_304;
          }
        }

        v270 = 0;
        if (v235 % v98 < v97)
        {
          goto LABEL_317;
        }

        goto LABEL_303;
      }

      v256 = 0;
      v257 = v234 % v98;
      v258 = v235 % v98;
      v259 = v236 % v98;
      v250 = v230;
      v251 = v231;
      while (1)
      {
        if (v233 % v98 >= v97)
        {
          v217 = 0;
          v262 = 0;
          v263 = v250;
          if (v257 >= v97)
          {
LABEL_285:
            v264 = 0;
            if (v258 >= v97)
            {
              goto LABEL_286;
            }

            goto LABEL_290;
          }
        }

        else
        {
          v262 = *v250;
          v263 = (v250 + 2 * v219);
          v217 = 1;
          if (v257 >= v97)
          {
            goto LABEL_285;
          }
        }

        v264 = *v263;
        v263 = (v263 + 2 * v219);
        ++v217;
        if (v258 >= v97)
        {
LABEL_286:
          v265.n128_u64[0] = 0;
          if (v259 >= v97)
          {
            goto LABEL_291;
          }

          goto LABEL_281;
        }

LABEL_290:
        v265.n128_u64[0] = *v263;
        v263 = (v263 + 2 * v219);
        ++v217;
        if (v259 >= v97)
        {
LABEL_291:
          v260 = 0;
          goto LABEL_282;
        }

LABEL_281:
        v260 = *v263;
        ++v217;
LABEL_282:
        v261 = v264;
        v265.n128_u64[1] = v260;
        a6 = v265;
        *v251 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3F0);
        v256 += 2;
        v251 = (v251 + v220);
        v250 = (v250 + 4);
        if (v256 >= v222)
        {
          v228 = v425;
          v255 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
          if (v428 < v6)
          {
            goto LABEL_293;
          }

LABEL_271:
          ++v237;
          ++v231;
          v230 = (v230 + v226);
          if (v237 != v7)
          {
            goto LABEL_272;
          }

          v232 = v417 + 1;
          v231 = &v409[v406];
          v230 = (v413 + v403);
          if (v417 + 1 != v429)
          {
            goto LABEL_267;
          }

          v230 = (v391 + 2 * v217 * v221);
          v229 = v399 + 4;
          v231 = (v387 + v381);
          if (v399 + 4 < v425 - 3)
          {
            goto LABEL_265;
          }

          v283 = ((v425 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
          v216 = v378;
          if (v283 < v228)
          {
            goto LABEL_337;
          }

LABEL_259:
          v216 = v378 + 1;
          result = (result + 2 * v374);
          v383 = (v383 + 2 * v7 * v425 * v429 * v6);
          v225 = &v376[v371];
          if (v378 + 1 == v379)
          {
            return result;
          }

          goto LABEL_260;
        }
      }
    }

    v283 = 0;
    v231 = result;
    v230 = v383;
    if (v425 <= 0)
    {
      goto LABEL_259;
    }

LABEL_337:
    if (!v429)
    {
      goto LABEL_259;
    }

    v418 = v283 + v216 * v228;
    if (!v7)
    {
      goto LABEL_259;
    }

    v284 = 0;
    v285 = v283 | 1;
    v410 = v418 + 2;
    v414 = v418 + 1;
    v286 = v283 | 2;
    v400 = v418 + 3;
    v287 = v283 | 3;
LABEL_343:
    v386 = v284;
    v388 = v231;
    v288 = 0;
    v392 = v230;
    v289 = v230;
LABEL_348:
    if (v6 < 4)
    {
      v304 = 0;
      v298 = v231;
      v297 = v289;
      if (v6 > 0)
      {
        goto LABEL_385;
      }

      goto LABEL_347;
    }

    if (v218 == 1)
    {
      v293 = 0;
      v295 = 6 * v221;
      v294 = 4 * v221;
      v296 = 2 * v221;
      v297 = v289;
      v298 = v231;
      while (1)
      {
        if (v285 >= v228)
        {
          v302 = 0;
          if (v286 >= v228)
          {
LABEL_355:
            v303 = 0;
            if (v287 >= v228)
            {
              goto LABEL_359;
            }

            goto LABEL_351;
          }
        }

        else
        {
          v302 = *(v289 + v296);
          if (v286 >= v228)
          {
            goto LABEL_355;
          }
        }

        v303 = *(v289 + v294);
        if (v287 >= v228)
        {
LABEL_359:
          v299 = 0;
          goto LABEL_352;
        }

LABEL_351:
        v299 = *(v289 + v295);
LABEL_352:
        v300 = *v297;
        v297 = (v297 + 4);
        a6.n128_u64[0] = v300;
        a6.n128_u64[1] = v302;
        v301 = v299;
        *v298 = vqtbl2q_s8(*a6.n128_u64, xmmword_239D7E3F0);
        v293 += 2;
        v298 = (v298 + v220);
        v296 += 4;
        v294 += 4;
        v295 += 4;
        if (v293 >= v222)
        {
          v217 = 4;
LABEL_384:
          v304 = (v6 & 0xFFFFFFFFFFFFFFFELL) - 2;
          if (v428 >= v6)
          {
            goto LABEL_347;
          }

LABEL_385:
          if (v218 == 1)
          {
            v315 = v304 | 1;
            if ((v304 | 1) >= v6)
            {
              v316 = 0;
              v317 = v304 + 2;
              v318 = v304 + 3;
              v319 = v297 + v219;
              if (v285 < v228)
              {
                goto LABEL_397;
              }

LABEL_388:
              v320 = 0;
              v321 = &v319[v219];
              if (v286 < v228)
              {
                goto LABEL_418;
              }

LABEL_389:
              v322 = 0;
              a6.n128_u16[0] = *v297;
              if (v287 < v228)
              {
                goto LABEL_427;
              }

LABEL_344:
              v290 = 0;
              goto LABEL_345;
            }

            v316 = *(v297 + 1);
            v317 = v304 + 2;
            v318 = v304 + 3;
            v319 = v297 + v219;
            if (v285 >= v228)
            {
              goto LABEL_388;
            }

LABEL_397:
            if (v315 >= v6)
            {
              v326 = 0;
              if (v317 < v6)
              {
                goto LABEL_415;
              }

LABEL_399:
              v327 = 0;
              if (v318 >= v6)
              {
                goto LABEL_400;
              }

LABEL_416:
              v328 = v319[3];
            }

            else
            {
              v326 = v319[1];
              if (v317 >= v6)
              {
                goto LABEL_399;
              }

LABEL_415:
              v327 = v319[2];
              if (v318 < v6)
              {
                goto LABEL_416;
              }

LABEL_400:
              v328 = 0;
            }

            LOWORD(v320) = *v319;
            WORD1(v320) = v326;
            WORD2(v320) = v327;
            HIWORD(v320) = v328;
            v228 = v425;
            v321 = &v319[v219];
            if (v286 >= v425)
            {
              goto LABEL_389;
            }

LABEL_418:
            if (v315 >= v6)
            {
              v336 = 0;
              if (v317 < v6)
              {
                goto LABEL_424;
              }

LABEL_420:
              v337 = 0;
              if (v318 >= v6)
              {
                goto LABEL_421;
              }

LABEL_425:
              v338 = v321[3];
            }

            else
            {
              v336 = v321[1];
              if (v317 >= v6)
              {
                goto LABEL_420;
              }

LABEL_424:
              v337 = v321[2];
              if (v318 < v6)
              {
                goto LABEL_425;
              }

LABEL_421:
              v338 = 0;
            }

            LOWORD(v322) = *v321;
            WORD1(v322) = v336;
            WORD2(v322) = v337;
            HIWORD(v322) = v338;
            v228 = v425;
            a6.n128_u16[0] = *v297;
            if (v287 >= v425)
            {
              goto LABEL_344;
            }

LABEL_427:
            v339 = &v321[v219];
            if (v315 >= v6)
            {
              v340 = 0;
              if (v317 < v6)
              {
                goto LABEL_432;
              }

LABEL_429:
              v341 = 0;
              if (v318 >= v6)
              {
                goto LABEL_430;
              }

LABEL_433:
              v342 = v339[3];
            }

            else
            {
              v340 = v339[1];
              if (v317 >= v6)
              {
                goto LABEL_429;
              }

LABEL_432:
              v341 = v339[2];
              if (v318 < v6)
              {
                goto LABEL_433;
              }

LABEL_430:
              v342 = 0;
            }

            LOWORD(v290) = *v339;
            WORD1(v290) = v340;
            WORD2(v290) = v341;
            HIWORD(v290) = v342;
LABEL_345:
            a6.n128_u16[1] = v316;
            a6.n128_u64[1] = v320;
            v291 = v290;
            v292 = vqtbl2q_s8(*a6.n128_u64, xmmword_239D7E3F0);
            v217 = 4;
LABEL_346:
            *v298 = v292;
LABEL_347:
            ++v288;
            ++v231;
            v289 = (v289 + v226);
            if (v288 == v7)
            {
              v284 = v386 + 1;
              v231 = &v388[v406];
              v230 = (v392 + v403);
              if (v386 + 1 == v429)
              {
                goto LABEL_259;
              }

              goto LABEL_343;
            }

            goto LABEL_348;
          }

          if (v418 % v98 >= v97)
          {
            v217 = 0;
            v329 = 0;
            if (v414 % v98 < v97)
            {
              goto LABEL_409;
            }
          }

          else
          {
            if ((v304 | 1) >= v6)
            {
              v323 = 0;
              if (v304 + 2 < v6)
              {
                goto LABEL_406;
              }

LABEL_394:
              v324 = 0;
              if (v304 + 3 >= v6)
              {
                goto LABEL_395;
              }

LABEL_407:
              v325 = *(v297 + 3);
            }

            else
            {
              v323 = *(v297 + 1);
              if (v304 + 2 >= v6)
              {
                goto LABEL_394;
              }

LABEL_406:
              v324 = *(v297 + 2);
              if (v304 + 3 < v6)
              {
                goto LABEL_407;
              }

LABEL_395:
              v325 = 0;
            }

            LOWORD(v329) = *v297;
            WORD1(v329) = v323;
            WORD2(v329) = v324;
            HIWORD(v329) = v325;
            v297 = (v297 + 2 * v219);
            v217 = 1;
            if (v414 % v98 < v97)
            {
LABEL_409:
              if (v285 >= v228)
              {
                v330 = 0;
              }

              else
              {
                if ((v304 | 1) >= v6)
                {
                  v333 = 0;
                  if (v304 + 2 < v6)
                  {
                    goto LABEL_436;
                  }

LABEL_412:
                  v334 = 0;
                  if (v304 + 3 >= v6)
                  {
                    goto LABEL_413;
                  }

LABEL_437:
                  v335 = *(v297 + 3);
                }

                else
                {
                  v333 = *(v297 + 1);
                  if (v304 + 2 >= v6)
                  {
                    goto LABEL_412;
                  }

LABEL_436:
                  v334 = *(v297 + 2);
                  if (v304 + 3 < v6)
                  {
                    goto LABEL_437;
                  }

LABEL_413:
                  v335 = 0;
                }

                LOWORD(v330) = *v297;
                WORD1(v330) = v333;
                WORD2(v330) = v334;
                HIWORD(v330) = v335;
              }

              v297 = (v297 + 2 * v219);
              ++v217;
              if (v410 % v98 < v97)
              {
LABEL_440:
                if (v286 >= v228)
                {
                  v331.n128_u64[0] = 0;
                }

                else
                {
                  if ((v304 | 1) >= v6)
                  {
                    v343 = 0;
                    if (v304 + 2 < v6)
                    {
                      goto LABEL_447;
                    }

LABEL_443:
                    v344 = 0;
                    if (v304 + 3 >= v6)
                    {
                      goto LABEL_444;
                    }

LABEL_448:
                    v345 = *(v297 + 3);
                  }

                  else
                  {
                    v343 = *(v297 + 1);
                    if (v304 + 2 >= v6)
                    {
                      goto LABEL_443;
                    }

LABEL_447:
                    v344 = *(v297 + 2);
                    if (v304 + 3 < v6)
                    {
                      goto LABEL_448;
                    }

LABEL_444:
                    v345 = 0;
                  }

                  v331.n128_u16[0] = *v297;
                  v331.n128_u16[1] = v343;
                  v331.n128_u16[2] = v344;
                  v331.n128_u16[3] = v345;
                }

                v297 = (v297 + 2 * v219);
                ++v217;
                if (v400 % v98 < v97)
                {
LABEL_451:
                  if (v287 >= v228)
                  {
                    v332 = 0;
                  }

                  else
                  {
                    if ((v304 | 1) >= v6)
                    {
                      v346 = 0;
                      if (v304 + 2 < v6)
                      {
                        goto LABEL_458;
                      }

LABEL_454:
                      v347 = 0;
                      if (v304 + 3 >= v6)
                      {
                        goto LABEL_455;
                      }

LABEL_459:
                      v348 = *(v297 + 3);
                    }

                    else
                    {
                      v346 = *(v297 + 1);
                      if (v304 + 2 >= v6)
                      {
                        goto LABEL_454;
                      }

LABEL_458:
                      v347 = *(v297 + 2);
                      if (v304 + 3 < v6)
                      {
                        goto LABEL_459;
                      }

LABEL_455:
                      v348 = 0;
                    }

                    LOWORD(v332) = *v297;
                    WORD1(v332) = v346;
                    WORD2(v332) = v347;
                    HIWORD(v332) = v348;
                  }

                  ++v217;
LABEL_462:
                  v349 = v330;
                  v331.n128_u64[1] = v332;
                  a6 = v331;
                  v292 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3F0);
                  goto LABEL_346;
                }

LABEL_404:
                v332 = 0;
                goto LABEL_462;
              }

LABEL_403:
              v331.n128_u64[0] = 0;
              if (v400 % v98 < v97)
              {
                goto LABEL_451;
              }

              goto LABEL_404;
            }
          }

          v330 = 0;
          if (v410 % v98 < v97)
          {
            goto LABEL_440;
          }

          goto LABEL_403;
        }
      }
    }

    v305 = 0;
    v306 = v414 % v98;
    v307 = v410 % v98;
    v308 = v400 % v98;
    v297 = v289;
    v298 = v231;
    while (1)
    {
      if (v418 % v98 >= v97)
      {
        v217 = 0;
        v311 = 0;
        v312 = v297;
        if (v306 >= v97)
        {
LABEL_367:
          v313 = 0;
          if (v307 < v97)
          {
            goto LABEL_368;
          }

          goto LABEL_378;
        }
      }

      else
      {
        v311 = *v297;
        v312 = (v297 + 2 * v221);
        v217 = 1;
        if (v306 >= v97)
        {
          goto LABEL_367;
        }
      }

      if (v285 >= v228)
      {
        v313 = 0;
        v312 = (v312 + 2 * v221);
        ++v217;
        if (v307 < v97)
        {
LABEL_368:
          if (v286 >= v228)
          {
            v314.n128_u64[0] = 0;
            v312 = (v312 + 2 * v221);
            ++v217;
            if (v308 < v97)
            {
              goto LABEL_379;
            }
          }

          else
          {
            v314.n128_u64[0] = *v312;
            v312 = (v312 + 2 * v221);
            ++v217;
            if (v308 < v97)
            {
              goto LABEL_379;
            }
          }

          goto LABEL_363;
        }
      }

      else
      {
        v313 = *v312;
        v312 = (v312 + 2 * v221);
        ++v217;
        if (v307 < v97)
        {
          goto LABEL_368;
        }
      }

LABEL_378:
      v314.n128_u64[0] = 0;
      if (v308 < v97)
      {
LABEL_379:
        if (v287 >= v228)
        {
          v309 = 0;
        }

        else
        {
          v309 = *v312;
        }

        ++v217;
        goto LABEL_364;
      }

LABEL_363:
      v309 = 0;
LABEL_364:
      v310 = v313;
      v314.n128_u64[1] = v309;
      a6 = v314;
      *v298 = vqtbl2q_s8(*(&a6 - 1), xmmword_239D7E3F0);
      v305 += 2;
      v298 = (v298 + v220);
      v297 = (v297 + 4);
      if (v305 >= v222)
      {
        goto LABEL_384;
      }
    }
  }

  if (!v8)
  {
    if (!v379)
    {
      return result;
    }

    v171 = 0;
    v172 = v6 == 0;
    if (!v429)
    {
      v172 = 1;
    }

    if (v7)
    {
      v173 = v172;
    }

    else
    {
      v173 = 1;
    }

    v174 = v429 * v7;
    if (v429)
    {
      v175 = v7 == 0;
    }

    else
    {
      v175 = 1;
    }

    v176 = 4 * v425 * v174;
    v177 = v425 * v174 * v6;
    v178 = v425 * (2 * v174 - 2);
    v179 = a2 + v178 + 4;
    v180 = 2 * v174 * v6 * v425;
    v181 = v425 * (4 * v174 - 2);
    v182 = a2 + v181 + 4;
    v427 = v178 + 6;
    v424 = v181 + 6;
    while (1)
    {
      v183 = v425;
      if (v425 < 4)
      {
        v201 = 0;
        v187 = v383;
        if (!v6)
        {
          goto LABEL_172;
        }
      }

      else
      {
        if (v173)
        {
          goto LABEL_172;
        }

        v184 = 0;
        v185 = v182;
        v186 = v179;
        v187 = v383;
        do
        {
          v188 = 0;
          v189 = v185;
          v190 = v186;
          do
          {
            if ((v188 | 1) >= v6)
            {
              v197 = 0;
              v198 = v190;
              do
              {
                v199 = v7;
                v200 = v198;
                do
                {
                  result->i16[0] = *(v200 - 2);
                  result->i16[1] = *(v200 - 1);
                  result->i16[2] = *v200;
                  result->i16[3] = v200[1];
                  ++result;
                  v200 -= v425;
                  --v199;
                }

                while (v199);
                ++v197;
                v198 -= v7 * v425;
              }

              while (v197 != v429);
            }

            else
            {
              v191 = 0;
              v192 = v189;
              v193 = v190;
              do
              {
                v194 = v192;
                v195 = v193;
                v196 = v7;
                do
                {
                  result->i16[0] = *(v195 - 2);
                  result->i16[1] = *(v195 - 1);
                  result->i16[2] = *v195;
                  result->i16[3] = v195[1];
                  result->i16[4] = *(v194 - 2);
                  result->i16[5] = *(v194 - 1);
                  result->i16[6] = *v194;
                  result->i16[7] = v194[1];
                  ++result;
                  v195 -= v425;
                  v194 -= v425;
                  --v196;
                }

                while (v196);
                ++v191;
                v193 -= v7 * v425;
                v192 -= v7 * v425;
              }

              while (v191 != v429);
            }

            v188 += 2;
            v190 = (v190 + v176);
            v189 = (v189 + v176);
          }

          while (v188 < v6);
          v184 += 4;
          ++v187;
          v186 += 8;
          v185 += 8;
        }

        while (v184 < v425 - 3);
        v201 = v425 & 0xFFFFFFFFFFFFFFFCLL;
        v183 = v425;
        if (!v6)
        {
          goto LABEL_172;
        }
      }

      v202 = v183 - v201;
      if (v183 > v201 && !v175)
      {
        v203 = 0;
        v204 = (v187 + v427);
        v205 = (v187 + v424);
LABEL_197:
        if ((v203 | 1) < v6)
        {
          v206 = 0;
          v207 = v204;
          v208 = v205;
          while (1)
          {
            v209 = v7;
            v210 = v207;
            v211 = v208;
            do
            {
              if (v202 > 3)
              {
                if (v202 > 5)
                {
                  if (v202 != 6)
                  {
                    if (v202 != 7)
                    {
                      goto LABEL_225;
                    }

                    result->i16[6] = v210[3];
                  }

                  result->i16[5] = v210[2];
LABEL_220:
                  result->i16[4] = v210[1];
                }

                else if (v202 != 4)
                {
                  goto LABEL_220;
                }

                result->i16[3] = *v210;
LABEL_222:
                result->i16[2] = *(v210 - 1);
LABEL_223:
                result->i16[1] = *(v210 - 2);
LABEL_224:
                result->i16[0] = *(v210 - 3);
                goto LABEL_225;
              }

              switch(v202)
              {
                case 1:
                  goto LABEL_224;
                case 2:
                  goto LABEL_223;
                case 3:
                  goto LABEL_222;
              }

LABEL_225:
              if (v202 <= 3)
              {
                switch(v202)
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
                if (v202 <= 5)
                {
                  if (v202 != 4)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_203;
                }

                if (v202 == 6)
                {
                  goto LABEL_201;
                }

                if (v202 == 7)
                {
                  result[1].i16[2] = v211[3];
LABEL_201:
                  result[1].i16[1] = v211[2];
LABEL_202:
                  result[1].i16[0] = v211[1];
LABEL_203:
                  result->i16[7] = *v211;
LABEL_204:
                  result->i16[6] = *(v211 - 1);
LABEL_205:
                  result->i16[5] = *(v211 - 2);
LABEL_206:
                  result->i16[4] = *(v211 - 3);
                }
              }

              ++result;
              v211 -= v425;
              v210 -= v425;
              --v209;
            }

            while (v209);
            ++v206;
            v208 -= v7 * v425;
            v207 -= v7 * v425;
            if (v206 == v429)
            {
              goto LABEL_196;
            }
          }
        }

        v212 = 0;
        v213 = v204;
        while (2)
        {
          v214 = v7;
          v215 = v213;
LABEL_246:
          if (v202 <= 3)
          {
            switch(v202)
            {
              case 1:
                goto LABEL_244;
              case 2:
                goto LABEL_243;
              case 3:
                goto LABEL_242;
            }
          }

          else
          {
            if (v202 > 5)
            {
              if (v202 != 6)
              {
                if (v202 != 7)
                {
                  goto LABEL_245;
                }

                result->i16[6] = v215[3];
              }

              result->i16[5] = v215[2];
              goto LABEL_240;
            }

            if (v202 != 4)
            {
LABEL_240:
              result->i16[4] = v215[1];
            }

            result->i16[3] = *v215;
LABEL_242:
            result->i16[2] = *(v215 - 1);
LABEL_243:
            result->i16[1] = *(v215 - 2);
LABEL_244:
            result->i16[0] = *(v215 - 3);
          }

LABEL_245:
          ++result;
          v215 -= v425;
          if (!--v214)
          {
            ++v212;
            v213 -= v7 * v425;
            if (v212 != v429)
            {
              continue;
            }

LABEL_196:
            v203 += 2;
            v204 = (v204 + v176);
            v205 = (v205 + v176);
            if (v203 >= v6)
            {
              break;
            }

            goto LABEL_197;
          }

          goto LABEL_246;
        }
      }

LABEL_172:
      ++v171;
      v383 = (v383 + 2 * v177);
      v179 += v180;
      v182 += v180;
      if (v171 == v379)
      {
        return result;
      }
    }
  }

  if (v379)
  {
    v9 = 0;
    v10 = v6 == 0;
    v11 = v429 * v7;
    if (!v429)
    {
      v10 = 1;
    }

    if (!v7)
    {
      v10 = 1;
    }

    v365 = v10;
    v367 = v425 * v6 * v11;
    v12 = 4 * v11;
    if (v429)
    {
      v13 = v7 == 0;
    }

    else
    {
      v13 = 1;
    }

    v364 = v13;
    v14 = -v7;
    v363 = 6 * v11 - 2;
    v384 = 8 * v11;
    v361 = 8 * v11 - 2;
    v15 = (a2 + v361);
    v366 = 2 * v11 * v6 * v425;
    v16 = (a2 + v363);
    v357 = v12 - 2;
    v17 = (a2 + v12 - 2);
    v356 = 14 * v11 - 2;
    v355 = 12 * v11 - 2;
    v354 = 10 * v11 - 2;
    v353 = v11 * (2 * v425 + 14) - 2;
    v352 = v11 * (2 * v425 + 12) - 2;
    v351 = v11 * (2 * v425 + 10) - 2;
    v362 = v11 * (2 * v425 + 8) - 2;
    v18 = a2 + v362;
    v422 = v12 * v425;
    v359 = v11 * (2 * v425 + 4) - 2;
    v360 = v11 * (2 * v425 + 6) - 2;
    v19 = a2 + v360;
    v20 = a2 + v359;
    v358 = v11 * (2 * v425 + 2) - 2;
    v21 = a2 + v358;
    v350 = 2 * v11 - 2;
    v22 = a2 + v350;
    do
    {
      v380 = v15;
      v382 = v9;
      v375 = v17;
      v377 = v16;
      v372 = v19;
      v373 = v18;
      v369 = v21;
      v370 = v20;
      v368 = v22;
      if (v425 < 4)
      {
        v64 = 0;
        v27 = v383;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v365)
        {
          goto LABEL_12;
        }

        v23 = 0;
        v24 = v20;
        v25 = v18;
        v26 = v16;
        v27 = v383;
        do
        {
          v411 = v22;
          v415 = v23;
          v28 = 0;
          v29 = v22;
          v404 = v24;
          v407 = v21;
          v30 = v21;
          v31 = v24;
          v397 = v25;
          v401 = v19;
          v393 = v26;
          v395 = v17;
          v32 = v17;
          v33 = v26;
          v389 = v15;
          v34 = v15;
          v419 = v27;
          do
          {
            if ((v28 | 1) >= v6)
            {
              v46 = 0;
              v47 = v32;
              v48 = v33;
              v49 = v34;
              v50 = v27 + 2 * (v429 - 1) * v7;
              do
              {
                v51 = v47;
                v52 = v48;
                v53 = v49;
                v54 = v7;
                v55 = (v50 + 2 * (v7 - 1));
                do
                {
                  v57 = *v55--;
                  v56 = v57;
                  v59 = *v51--;
                  v58 = v59;
                  v61 = *v52--;
                  v60 = v61;
                  v62 = *v53--;
                  LOWORD(v63) = v56;
                  WORD1(v63) = v58;
                  WORD2(v63) = v60;
                  HIWORD(v63) = v62;
                  result->i64[0] = v63;
                  ++result;
                  --v54;
                }

                while (v54);
                v50 -= 2 * v7;
                ++v46;
                v49 -= v7;
                v48 -= v7;
                v47 -= v7;
              }

              while (v46 != v429);
            }

            else
            {
              v35 = 0;
              v36 = v29;
              v37 = v32;
              v38 = v33;
              v39 = v34;
              v40 = v30;
              v41 = v31;
              v42 = v19;
              v43 = v25;
              do
              {
                v44 = 0;
                do
                {
                  LOWORD(v45) = *(v36 + 2 * v44);
                  WORD1(v45) = v37[v44];
                  WORD2(v45) = v38[v44];
                  HIWORD(v45) = v39[v44];
                  result->i64[0] = v45;
                  LOWORD(v45) = *(v40 + 2 * v44);
                  WORD1(v45) = *(v41 + 2 * v44);
                  WORD2(v45) = *(v42 + 2 * v44);
                  HIWORD(v45) = *(v43 + 2 * v44);
                  result->i64[1] = v45;
                  ++result;
                  --v44;
                }

                while (v14 != v44);
                ++v35;
                v43 -= 2 * v7;
                v42 -= 2 * v7;
                v41 -= 2 * v7;
                v40 -= 2 * v7;
                v39 -= v7;
                v38 -= v7;
                v37 -= v7;
                v36 -= 2 * v7;
              }

              while (v35 != v429);
            }

            v28 += 2;
            v27 = (v27 + v422);
            v34 = (v34 + v422);
            v33 = (v33 + v422);
            v32 = (v32 + v422);
            v25 += v422;
            v19 += v422;
            v31 += v422;
            v30 += v422;
            v29 += v422;
          }

          while (v28 < v6);
          v23 = v415 + 4;
          v27 = &v419[v384 / 8];
          v15 = &v389[v384 / 2];
          v26 = &v393[v384 / 2];
          v17 = &v395[v384 / 2];
          v25 = v397 + v384;
          v19 = v401 + v384;
          v24 = v404 + v384;
          v21 = v407 + v384;
          v22 = v411 + v384;
        }

        while (v415 + 4 < v425 - 3);
        v64 = v425 & 0xFFFFFFFFFFFFFFFCLL;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      v65 = v425 - v64;
      if (v425 > v64 && !v364)
      {
        v66 = 0;
        v67 = v27 + v356;
        v68 = v27 + v355;
        v69 = v27 + v354;
        v70 = v27 + v361;
        v71 = v27 + v363;
        v72 = v27 + v357;
        v73 = v27 + v350;
        v74 = v27 + v353;
        v75 = v27 + v352;
        v76 = v27 + v351;
        v77 = v27 + v362;
        v78 = v27 + v360;
        v79 = v27 + v359;
        v80 = v27 + v358;
LABEL_37:
        v416 = v70;
        v408 = v74;
        v412 = v71;
        v402 = v76;
        v405 = v75;
        v396 = v78;
        v398 = v77;
        v390 = v80;
        v394 = v79;
        if ((v66 | 1) < v6)
        {
          v81 = 0;
          v82 = v73;
          v83 = v72;
          v84 = v70;
          v85 = v69;
          v86 = v68;
          v87 = v67;
          while (1)
          {
            v88 = 0;
            do
            {
              if (v65 > 3)
              {
                if (v65 > 5)
                {
                  if (v65 != 6)
                  {
                    if (v65 != 7)
                    {
                      goto LABEL_65;
                    }

                    result->i16[6] = *(v67 + 2 * v88);
                  }

                  result->i16[5] = *(v68 + 2 * v88);
LABEL_60:
                  result->i16[4] = *(v85 + 2 * v88);
                }

                else if (v65 != 4)
                {
                  goto LABEL_60;
                }

                result->i16[3] = *(v84 + 2 * v88);
LABEL_62:
                result->i16[2] = *(v71 + 2 * v88);
LABEL_63:
                result->i16[1] = *(v83 + 2 * v88);
LABEL_64:
                result->i16[0] = *(v82 + 2 * v88);
                goto LABEL_65;
              }

              switch(v65)
              {
                case 1:
                  goto LABEL_64;
                case 2:
                  goto LABEL_63;
                case 3:
                  goto LABEL_62;
              }

LABEL_65:
              if (v65 <= 3)
              {
                switch(v65)
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
                if (v65 <= 5)
                {
                  if (v65 != 4)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_43;
                }

                if (v65 == 6)
                {
                  goto LABEL_41;
                }

                if (v65 == 7)
                {
                  result[1].i16[2] = *(v74 + 2 * v88);
LABEL_41:
                  result[1].i16[1] = *(v75 + 2 * v88);
LABEL_42:
                  result[1].i16[0] = *(v76 + 2 * v88);
LABEL_43:
                  result->i16[7] = *(v77 + 2 * v88);
LABEL_44:
                  result->i16[6] = *(v78 + 2 * v88);
LABEL_45:
                  result->i16[5] = *(v79 + 2 * v88);
LABEL_46:
                  result->i16[4] = *(v80 + 2 * v88);
                }
              }

              ++result;
              --v88;
            }

            while (v14 != v88);
            ++v81;
            v67 -= 2 * v7;
            v68 -= 2 * v7;
            v85 -= 2 * v7;
            v84 -= 2 * v7;
            v71 -= 2 * v7;
            v83 -= 2 * v7;
            v74 -= 2 * v7;
            v75 -= 2 * v7;
            v76 -= 2 * v7;
            v77 -= 2 * v7;
            v78 -= 2 * v7;
            v79 -= 2 * v7;
            v80 -= 2 * v7;
            v82 -= 2 * v7;
            if (v81 == v429)
            {
              goto LABEL_36;
            }
          }
        }

        v89 = 0;
        v90 = v73;
        v91 = v72;
        v92 = v69;
        v86 = v68;
        v93 = v68;
        v87 = v67;
        while (2)
        {
          v94 = 0;
LABEL_86:
          if (v65 <= 3)
          {
            switch(v65)
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
            if (v65 > 5)
            {
              if (v65 != 6)
              {
                if (v65 != 7)
                {
                  goto LABEL_85;
                }

                result->i16[6] = *(v67 + 2 * v94);
              }

              result->i16[5] = *(v93 + 2 * v94);
              goto LABEL_80;
            }

            if (v65 != 4)
            {
LABEL_80:
              result->i16[4] = *(v92 + 2 * v94);
            }

            result->i16[3] = *(v70 + 2 * v94);
LABEL_82:
            result->i16[2] = *(v71 + 2 * v94);
LABEL_83:
            result->i16[1] = *(v91 + 2 * v94);
LABEL_84:
            result->i16[0] = *(v90 + 2 * v94);
          }

LABEL_85:
          ++result;
          if (v14 == --v94)
          {
            ++v89;
            v67 -= 2 * v7;
            v93 -= 2 * v7;
            v92 -= 2 * v7;
            v70 -= 2 * v7;
            v71 -= 2 * v7;
            v91 -= 2 * v7;
            v90 -= 2 * v7;
            if (v89 != v429)
            {
              continue;
            }

LABEL_36:
            v66 += 2;
            v67 = v87 + v422;
            v68 = v86 + v422;
            v69 += v422;
            v70 = v416 + v422;
            v71 = v412 + v422;
            v72 += v422;
            v73 += v422;
            v74 = v408 + v422;
            v75 = v405 + v422;
            v76 = v402 + v422;
            v77 = v398 + v422;
            v78 = v396 + v422;
            v79 = v394 + v422;
            v80 = v390 + v422;
            if (v66 >= v6)
            {
              break;
            }

            goto LABEL_37;
          }

          goto LABEL_86;
        }
      }

LABEL_12:
      v383 = (v383 + 2 * v367);
      v9 = v382 + 1;
      v15 = &v380[v366 / 2];
      v16 = &v377[v366 / 2];
      v17 = &v375[v366 / 2];
      v18 = v373 + v366;
      v19 = v372 + v366;
      v20 = v370 + v366;
      v21 = v369 + v366;
      v22 = v368 + v366;
    }

    while (v382 + 1 != v379);
  }

  return result;
}

int8x16_t *sub_239C88310(int8x16_t *result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 32);
  v5 = *(a3 + 56);
  v476 = *(a3 + 48);
  v477 = a2;
  v583 = *(a3 + 64);
  v6 = *(a3 + 108);
  v579 = v4;
  if (*(a3 + 104) != 1)
  {
    v125 = *(a3 + 16);
    v126 = *(a3 + 40);
    v127 = *(a3 + 72);
    v128 = *(a3 + 80);
    if (v6)
    {
      if (v476 && v3 && v5 && v4 && v583)
      {
        v129 = 0;
        v130 = v583 * v125;
        v131 = 24 * v583 * v5;
        v132 = v583 * v3 * v5;
        v567 = v5 * v4 * v583 * v3;
        v133 = 24 * v5;
        v561 = v5 * v126 * v130;
        v134 = 6 * v583 * v5;
        v578 = 8 * v5 * v130;
        v135 = 2 * v583 * v5;
        do
        {
          v136 = 0;
          v573 = v129;
          v580 = v129 * v4;
          v137 = v477;
          v138 = result;
          do
          {
            v139 = v136 + v580;
            if ((v136 + v580) % v128 < v127)
            {
              v140 = 0;
              v141 = v137;
              v142 = v138;
              do
              {
                v143 = 0;
                v144 = v141;
                v145 = v142;
                do
                {
                  v146 = 0;
                  v147 = 0;
                  v148 = 3;
                  v149 = v144;
                  v150 = v145;
                  do
                  {
                    v151 = v147;
                    if (v3 >= v148)
                    {
                      v152 = v148;
                    }

                    else
                    {
                      v152 = v3;
                    }

                    v147 += 3;
                    if (v147 >= v3)
                    {
                      v153 = v3;
                    }

                    else
                    {
                      v153 = v147;
                    }

                    if (v151 < v153)
                    {
                      v154 = v152 + v146;
                      v155 = v149;
                      v156 = v150;
                      do
                      {
                        v156->i16[0] = *v155;
                        v156 = (v156 + 8);
                        v155 = (v155 + v135);
                        --v154;
                      }

                      while (v154);
                    }

                    v150 = (v150 + v131);
                    v149 = (v149 + v134);
                    v148 += 3;
                    v146 -= 3;
                  }

                  while (v147 < v3);
                  ++v143;
                  v145 = (v145 + 24);
                  ++v144;
                }

                while (v143 != v5);
                ++v140;
                v142 = (v142 + v133);
                v141 += v5;
              }

              while (v140 != v583);
              v137 += v132;
              v4 = v579;
            }

            if ((v136 | 1) < v4 && (v139 + 1) % v128 < v127)
            {
              v157 = 0;
              v158 = &v138->i16[1];
              v159 = v137;
              do
              {
                v160 = 0;
                v161 = v159;
                v162 = v158;
                do
                {
                  v163 = 0;
                  v164 = 0;
                  v165 = 3;
                  v166 = v161;
                  v167 = v162;
                  do
                  {
                    if (v3 >= v165)
                    {
                      v168 = v165;
                    }

                    else
                    {
                      v168 = v3;
                    }

                    v169 = v164 + 3;
                    if (v164 + 3 >= v3)
                    {
                      v170 = v3;
                    }

                    else
                    {
                      v170 = v164 + 3;
                    }

                    if (v164 < v170)
                    {
                      v171 = 0;
                      v172 = v168 + v163;
                      v173 = v166;
                      do
                      {
                        *&v167[v171] = *v173;
                        v173 = (v173 + v135);
                        v171 += 8;
                        --v172;
                      }

                      while (v172);
                    }

                    v167 += v131;
                    v166 = (v166 + v134);
                    v165 += 3;
                    v163 -= 3;
                    v164 = v169;
                  }

                  while (v169 < v3);
                  ++v160;
                  v162 += 12;
                  ++v161;
                }

                while (v160 != v5);
                ++v157;
                v158 = (v158 + v133);
                v159 += v5;
              }

              while (v157 != v583);
              v137 += v132;
              v4 = v579;
            }

            if ((v136 | 2) < v4 && (v139 + 2) % v128 < v127)
            {
              v174 = 0;
              v175 = &v138->i16[2];
              v176 = v137;
              do
              {
                v177 = 0;
                v178 = v176;
                v179 = v175;
                do
                {
                  v180 = 0;
                  v181 = 0;
                  v182 = 3;
                  v183 = v178;
                  v184 = v179;
                  do
                  {
                    if (v3 >= v182)
                    {
                      v185 = v182;
                    }

                    else
                    {
                      v185 = v3;
                    }

                    v186 = v181 + 3;
                    if (v181 + 3 >= v3)
                    {
                      v187 = v3;
                    }

                    else
                    {
                      v187 = v181 + 3;
                    }

                    if (v181 < v187)
                    {
                      v188 = 0;
                      v189 = v185 + v180;
                      v190 = v183;
                      do
                      {
                        *&v184[v188] = *v190;
                        v190 = (v190 + v135);
                        v188 += 8;
                        --v189;
                      }

                      while (v189);
                    }

                    v184 += v131;
                    v183 = (v183 + v134);
                    v182 += 3;
                    v180 -= 3;
                    v181 = v186;
                  }

                  while (v186 < v3);
                  ++v177;
                  v179 += 12;
                  ++v178;
                }

                while (v177 != v5);
                ++v174;
                v175 = (v175 + v133);
                v176 += v5;
              }

              while (v174 != v583);
              v137 += v132;
              v4 = v579;
            }

            if ((v136 | 3) < v4 && (v139 + 3) % v128 < v127)
            {
              v191 = 0;
              v192 = &v138->i16[3];
              v193 = v137;
              do
              {
                v194 = 0;
                v195 = v193;
                v196 = v192;
                do
                {
                  v197 = 0;
                  v198 = 0;
                  v199 = 3;
                  v200 = v195;
                  v201 = v196;
                  do
                  {
                    if (v3 >= v199)
                    {
                      v202 = v199;
                    }

                    else
                    {
                      v202 = v3;
                    }

                    v203 = v198 + 3;
                    if (v198 + 3 >= v3)
                    {
                      v204 = v3;
                    }

                    else
                    {
                      v204 = v198 + 3;
                    }

                    if (v198 < v204)
                    {
                      v205 = 0;
                      v206 = v202 + v197;
                      v207 = v200;
                      do
                      {
                        *&v201[v205] = *v207;
                        v207 = (v207 + v135);
                        v205 += 8;
                        --v206;
                      }

                      while (v206);
                    }

                    v201 += v131;
                    v200 = (v200 + v134);
                    v199 += 3;
                    v197 -= 3;
                    v198 = v203;
                  }

                  while (v203 < v3);
                  ++v194;
                  v196 += 12;
                  ++v195;
                }

                while (v194 != v5);
                ++v191;
                v192 = (v192 + v133);
                v193 += v5;
              }

              while (v191 != v583);
              v137 += v132;
              v4 = v579;
            }

            v136 += 4;
            v138 = (v138 + v578);
          }

          while (v136 < v4);
          v129 = v573 + 1;
          result = (result + 2 * v561);
          v477 += v567;
        }

        while (v573 + 1 != v476);
      }

      return result;
    }

    if (!v476)
    {
      return result;
    }

    v272 = 0;
    v273 = 0;
    v504 = v4 - 3;
    v274 = v583 * v3 * v5;
    v275 = *(a3 + 88);
    v276 = 24 * v583 * v5;
    v277 = v583 * v5 * v3;
    v278 = v3 - 3;
    v530 = 24 * v5;
    v279 = v5 * v583 * v125;
    v485 = v5 * v4 * v583 * v3;
    v487 = v279 * v126;
    v582 = 3 * ((v3 - 4) / 3) + 3;
    v280 = v583 * v5 * v125;
    v281 = &result->i8[v280 * (8 * ((v4 - 4) >> 2) + 8)];
    v483 = 2 * v126 * v280;
    v498 = v5 * v3;
    v501 = 8 * v279;
    v527 = v5 * v3;
    v479 = 2 * v277;
    v481 = v277;
    v475 = 3 * v277;
    v575 = v277;
    v489 = ((v4 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v553 = *(a3 + 56);
    v543 = *(a3 + 80);
LABEL_307:
    v492 = v281;
    v495 = v272;
    if (v4 < 4)
    {
      v355 = 0;
      v284 = result;
      v283 = v477;
      if (v4 > 0)
      {
        goto LABEL_407;
      }

      goto LABEL_306;
    }

    if (!v583)
    {
      goto LABEL_306;
    }

    v513 = v272 * v4;
    if (!v5)
    {
      goto LABEL_306;
    }

    v282 = 0;
    v283 = v477;
    v284 = result;
    v285 = 2 * v3;
LABEL_312:
    v286 = 0;
    v519 = v282;
    v523 = v283;
    v287 = v282 + v513;
    v288 = v282 + v513 + 1;
    v289 = v282 + v513 + 2;
    v290 = v282 + v513 + 3;
    v516 = v284;
    v291 = v284;
    v569 = v282 + v513;
    v563 = v288;
    v557 = v289;
LABEL_314:
    v535 = v283;
    v539 = v286;
    v292 = 0;
    v533 = v291;
LABEL_319:
    if (v3 < 4)
    {
      v303 = 0;
      v301 = v291;
      v300 = v283;
      if (v3 <= 0)
      {
        goto LABEL_318;
      }

      goto LABEL_340;
    }

    if (v275 == 1)
    {
      v296 = 0;
      v297 = v274;
      v298 = 2 * v274;
      v299 = 3 * v274;
      v300 = v283;
      v301 = v291;
      do
      {
        v302 = *v300;
        v300 += 3;
        v585.val[0].i64[0] = v302;
        v585.val[1].i64[0] = *&v283[v298];
        v585.val[0].i64[1] = *&v283[v297];
        v585.val[1].i64[1] = *&v283[v299];
        *v301 = vqtbl2q_s8(v585, xmmword_239D7E3F0);
        v296 += 3;
        v301[1].i64[0] = vqtbl2q_s8(v585, xmmword_239D7E400).u64[0];
        v301 = (v301 + v276);
        v299 += 3;
        v298 += 3;
        v297 += 3;
      }

      while (v296 < v278);
      v273 = 4;
      v303 = 3 * ((v3 - 4) / 3) + 3;
      if (v582 >= v3)
      {
        goto LABEL_318;
      }

LABEL_340:
      if (v275 == 1)
      {
        v315 = v303 + 1;
        if (v303 + 1 >= v3)
        {
          v316 = 0;
          v317 = v303 + 2;
          if (v303 + 2 < v3)
          {
            goto LABEL_360;
          }

LABEL_343:
          v318 = 0;
          v319 = v303 + 3;
          if (v303 + 3 >= v3)
          {
            goto LABEL_344;
          }

LABEL_361:
          v320 = v300[3];
          v321 = &v300[v277];
          if (v315 < v3)
          {
            goto LABEL_362;
          }

LABEL_345:
          v322 = 0;
          v323 = v290;
          if (v317 >= v3)
          {
            goto LABEL_346;
          }

LABEL_363:
          v324 = v321[2];
          if (v319 < v3)
          {
            goto LABEL_364;
          }

LABEL_347:
          v325 = 0;
          v326 = &v321[v277];
          if (v315 >= v3)
          {
            goto LABEL_348;
          }

LABEL_365:
          v327 = v326[1];
          if (v317 < v3)
          {
            goto LABEL_366;
          }

LABEL_349:
          v328 = 0;
          if (v319 >= v3)
          {
            goto LABEL_350;
          }

LABEL_367:
          v329 = v326[3];
          v330 = &v326[v277];
          if (v315 < v3)
          {
            goto LABEL_368;
          }

LABEL_351:
          v331 = 0;
          v332 = *v300;
          v333 = *v321;
          v334 = *v326;
          v335 = *v330;
          if (v317 >= v3)
          {
            goto LABEL_352;
          }

LABEL_369:
          v336 = v330[2];
          if (v319 < v3)
          {
            goto LABEL_315;
          }

LABEL_370:
          v293 = 0;
        }

        else
        {
          v316 = v300[1];
          v317 = v303 + 2;
          if (v303 + 2 >= v3)
          {
            goto LABEL_343;
          }

LABEL_360:
          v318 = v300[2];
          v319 = v303 + 3;
          if (v303 + 3 < v3)
          {
            goto LABEL_361;
          }

LABEL_344:
          v320 = 0;
          v321 = &v300[v277];
          if (v315 >= v3)
          {
            goto LABEL_345;
          }

LABEL_362:
          v322 = v321[1];
          v323 = v290;
          if (v317 < v3)
          {
            goto LABEL_363;
          }

LABEL_346:
          v324 = 0;
          if (v319 >= v3)
          {
            goto LABEL_347;
          }

LABEL_364:
          v325 = v321[3];
          v326 = &v321[v277];
          if (v315 < v3)
          {
            goto LABEL_365;
          }

LABEL_348:
          v327 = 0;
          if (v317 >= v3)
          {
            goto LABEL_349;
          }

LABEL_366:
          v328 = v326[2];
          if (v319 < v3)
          {
            goto LABEL_367;
          }

LABEL_350:
          v329 = 0;
          v330 = &v326[v277];
          if (v315 >= v3)
          {
            goto LABEL_351;
          }

LABEL_368:
          v331 = v330[1];
          v332 = *v300;
          v333 = *v321;
          v334 = *v326;
          v335 = *v330;
          if (v317 < v3)
          {
            goto LABEL_369;
          }

LABEL_352:
          v336 = 0;
          if (v319 >= v3)
          {
            goto LABEL_370;
          }

LABEL_315:
          v293 = v330[3];
        }

        v277 = v575;
        v584.val[0].i16[0] = v332;
        v584.val[0].i16[1] = v316;
        v584.val[0].i16[2] = v318;
        v584.val[0].i16[3] = v320;
        v584.val[0].i16[4] = v333;
        v584.val[0].i16[5] = v322;
        v584.val[0].i16[6] = v324;
        v584.val[0].i16[7] = v325;
        v584.val[1].i16[0] = v334;
        v584.val[1].i16[1] = v327;
        v584.val[1].i16[2] = v328;
        v584.val[1].i16[3] = v329;
        v584.val[1].i16[4] = v335;
        v584.val[1].i16[5] = v331;
        v584.val[1].i16[6] = v336;
        v584.val[1].i16[7] = v293;
        v294 = vqtbl2q_s8(v584, xmmword_239D7E3F0);
        v295 = vqtbl2q_s8(v584, xmmword_239D7E400).u64[0];
        v273 = 4;
        v4 = v579;
        v275 = 1;
        v128 = v543;
        v285 = 2 * v3;
        v287 = v569;
        v288 = v563;
        v289 = v557;
        v290 = v323;
        v5 = v553;
LABEL_317:
        *v301 = v294;
        v301[1].i64[0] = v295;
        goto LABEL_318;
      }

      if (v287 % v128 >= v127)
      {
        v273 = 0;
        v340 = 0;
        if (v288 % v128 < v127)
        {
          goto LABEL_379;
        }
      }

      else
      {
        if (v303 + 1 >= v3)
        {
          v337 = 0;
          if (v303 + 2 < v3)
          {
            goto LABEL_376;
          }

LABEL_357:
          v338 = 0;
          if (v303 + 3 >= v3)
          {
            goto LABEL_358;
          }

LABEL_377:
          v339 = v300[3];
        }

        else
        {
          v337 = v300[1];
          if (v303 + 2 >= v3)
          {
            goto LABEL_357;
          }

LABEL_376:
          v338 = v300[2];
          if (v303 + 3 < v3)
          {
            goto LABEL_377;
          }

LABEL_358:
          v339 = 0;
        }

        LOWORD(v340) = *v300;
        WORD1(v340) = v337;
        WORD2(v340) = v338;
        HIWORD(v340) = v339;
        v300 += v277;
        v273 = 1;
        if (v288 % v128 < v127)
        {
LABEL_379:
          if (v303 + 1 >= v3)
          {
            v344 = 0;
            if (v303 + 2 < v3)
            {
              goto LABEL_384;
            }

LABEL_381:
            v345 = 0;
            if (v303 + 3 >= v3)
            {
              goto LABEL_382;
            }

LABEL_385:
            v346 = v300[3];
          }

          else
          {
            v344 = v300[1];
            if (v303 + 2 >= v3)
            {
              goto LABEL_381;
            }

LABEL_384:
            v345 = v300[2];
            if (v303 + 3 < v3)
            {
              goto LABEL_385;
            }

LABEL_382:
            v346 = 0;
          }

          LOWORD(v341) = *v300;
          WORD1(v341) = v344;
          WORD2(v341) = v345;
          HIWORD(v341) = v346;
          v300 += v277;
          ++v273;
          if (v289 % v128 < v127)
          {
LABEL_387:
            if (v303 + 1 >= v3)
            {
              v347 = 0;
              if (v303 + 2 < v3)
              {
                goto LABEL_392;
              }

LABEL_389:
              v348 = 0;
              if (v303 + 3 >= v3)
              {
                goto LABEL_390;
              }

LABEL_393:
              v349 = v300[3];
            }

            else
            {
              v347 = v300[1];
              if (v303 + 2 >= v3)
              {
                goto LABEL_389;
              }

LABEL_392:
              v348 = v300[2];
              if (v303 + 3 < v3)
              {
                goto LABEL_393;
              }

LABEL_390:
              v349 = 0;
            }

            LOWORD(v342) = *v300;
            WORD1(v342) = v347;
            WORD2(v342) = v348;
            WORD3(v342) = v349;
            v300 += v277;
            ++v273;
            if (v290 % v128 < v127)
            {
LABEL_395:
              if (v303 + 1 >= v3)
              {
                v350 = 0;
                if (v303 + 2 < v3)
                {
                  goto LABEL_400;
                }

LABEL_397:
                v351 = 0;
                if (v303 + 3 >= v3)
                {
                  goto LABEL_398;
                }

LABEL_401:
                v352 = v300[3];
              }

              else
              {
                v350 = v300[1];
                if (v303 + 2 >= v3)
                {
                  goto LABEL_397;
                }

LABEL_400:
                v351 = v300[2];
                if (v303 + 3 < v3)
                {
                  goto LABEL_401;
                }

LABEL_398:
                v352 = 0;
              }

              LOWORD(v343) = *v300;
              WORD1(v343) = v350;
              WORD2(v343) = v351;
              HIWORD(v343) = v352;
              ++v273;
LABEL_403:
              v353 = v341;
              *(&v342 + 1) = v343;
              v354 = v342;
              v294 = vqtbl2q_s8(*&v340, xmmword_239D7E3F0);
              v295 = vqtbl2q_s8(*&v340, xmmword_239D7E400).u64[0];
              goto LABEL_317;
            }

LABEL_374:
            v343 = 0;
            goto LABEL_403;
          }

LABEL_373:
          *&v342 = 0;
          if (v290 % v128 < v127)
          {
            goto LABEL_395;
          }

          goto LABEL_374;
        }
      }

      v341 = 0;
      if (v289 % v128 < v127)
      {
        goto LABEL_387;
      }

      goto LABEL_373;
    }

    v304 = 0;
    v305 = v288 % v128;
    v306 = v289 % v128;
    v307 = v290 % v128;
    v300 = v283;
    v301 = v291;
    while (1)
    {
      if (v287 % v128 >= v127)
      {
        v273 = 0;
        v311 = 0;
        v312 = v300;
        if (v305 >= v127)
        {
LABEL_332:
          v313 = 0;
          if (v306 >= v127)
          {
            goto LABEL_333;
          }

          goto LABEL_337;
        }
      }

      else
      {
        v311 = *v300;
        v312 = &v300[v274];
        v273 = 1;
        if (v305 >= v127)
        {
          goto LABEL_332;
        }
      }

      v313 = *v312;
      v312 = (v312 + 2 * v274);
      ++v273;
      if (v306 >= v127)
      {
LABEL_333:
        *&v314 = 0;
        if (v307 >= v127)
        {
          goto LABEL_338;
        }

        goto LABEL_328;
      }

LABEL_337:
      *&v314 = *v312;
      v312 = (v312 + 2 * v274);
      ++v273;
      if (v307 >= v127)
      {
LABEL_338:
        v308 = 0;
        goto LABEL_329;
      }

LABEL_328:
      v308 = *v312;
      ++v273;
LABEL_329:
      v309 = v313;
      *(&v314 + 1) = v308;
      v310 = v314;
      *v301 = vqtbl2q_s8(*&v311, xmmword_239D7E3F0);
      v301[1].i64[0] = vqtbl2q_s8(*&v311, xmmword_239D7E400).u64[0];
      v304 += 3;
      v301 = (v301 + v276);
      v300 += 3;
      if (v304 >= v278)
      {
        v303 = 3 * ((v3 - 4) / 3) + 3;
        if (v582 < v3)
        {
          goto LABEL_340;
        }

LABEL_318:
        ++v292;
        v291 = (v291 + 24);
        v283 = (v283 + v285);
        if (v292 != v5)
        {
          goto LABEL_319;
        }

        v286 = v539 + 1;
        v291 = (v533 + v530);
        v283 = &v535[v527];
        if (v539 + 1 != v583)
        {
          goto LABEL_314;
        }

        v283 = &v523[v273 * v277];
        v282 = v519 + 4;
        v284 = (v516 + v501);
        if (v519 + 4 < v504)
        {
          goto LABEL_312;
        }

        v355 = v489;
        v272 = v495;
        if (v489 >= v4)
        {
          goto LABEL_306;
        }

LABEL_407:
        if (!v583 || (v570 = v355 + v272 * v4, v356 = 2 * v3, !v5))
        {
LABEL_306:
          v272 = v495 + 1;
          result = (result + 2 * v487);
          v477 += v485;
          v281 = &v492[v483];
          if (v495 + 1 == v476)
          {
            return result;
          }

          goto LABEL_307;
        }

        v357 = 0;
        v358 = 0;
        v564 = v570 + 1;
        v359 = v355 | 1;
        v558 = v570 + 2;
        v360 = v355 | 2;
        v361 = v355 | 3;
        v362 = &v283[v481];
        v363 = &v283[v479];
        v364 = &v283[v475];
        v365 = v283;
        v524 = v283;
        v536 = &v283[v481];
        v540 = v570 + 3;
        v534 = &v283[v479];
LABEL_413:
        v510 = v358;
        v514 = v357;
        v366 = 0;
        v507 = v365;
        v517 = v284;
LABEL_418:
        if (v3 < 4)
        {
          v385 = 0;
          v378 = v284;
          v386 = v365;
          if (v3 > 0)
          {
            goto LABEL_456;
          }

          goto LABEL_417;
        }

        if (v275 == 1)
        {
          v376 = 0;
          v377 = v357;
          v378 = v284;
          while (1)
          {
            if (v359 >= v4)
            {
              v383 = 0;
              if (v360 >= v4)
              {
LABEL_425:
                v384 = 0;
                if (v361 >= v4)
                {
                  goto LABEL_429;
                }

                goto LABEL_421;
              }
            }

            else
            {
              v383 = *(v362 + v377);
              if (v360 >= v4)
              {
                goto LABEL_425;
              }
            }

            v384 = *(v363 + v377);
            if (v361 >= v4)
            {
LABEL_429:
              v379 = 0;
              goto LABEL_422;
            }

LABEL_421:
            v379 = *(v364 + v377);
LABEL_422:
            v380 = *(v283 + v377);
            v381 = v383;
            v382 = v379;
            *v378 = vqtbl2q_s8(*(&v384 - 2), xmmword_239D7E3F0);
            v378[1].i64[0] = vqtbl2q_s8(*(&v384 - 2), xmmword_239D7E400).u64[0];
            v376 += 3;
            v378 = (v378 + v276);
            v377 += 6;
            if (v376 >= v278)
            {
              v386 = (v283 + v377);
              v273 = 4;
              v385 = 3 * ((v3 - 4) / 3) + 3;
              if (v582 >= v3)
              {
                goto LABEL_417;
              }

LABEL_456:
              if (v275 == 1)
              {
                v398 = v385 + 1;
                if (v385 + 1 >= v3)
                {
                  v399 = 0;
                  v400 = v385 + 2;
                  if (v385 + 2 < v3)
                  {
                    goto LABEL_470;
                  }

LABEL_459:
                  v401 = 0;
                  v402 = v385 + 3;
                  if (v402 >= v3)
                  {
                    goto LABEL_460;
                  }

LABEL_471:
                  v520 = v386[3];
                  v403 = &v386[v274];
                  if (v359 < v4)
                  {
                    goto LABEL_472;
                  }

LABEL_461:
                  v404 = 0;
                  v405 = *v386;
                  v406 = &v403[v274];
                  if (v360 < v4)
                  {
                    goto LABEL_493;
                  }

LABEL_462:
                  v407 = 0;
                  if (v361 < v4)
                  {
                    goto LABEL_502;
                  }

LABEL_414:
                  v367 = 0;
                  v363 = v534;
                  v368 = v520;
                  goto LABEL_415;
                }

                v399 = v386[1];
                v400 = v385 + 2;
                if (v385 + 2 >= v3)
                {
                  goto LABEL_459;
                }

LABEL_470:
                v401 = v386[2];
                v402 = v385 + 3;
                if (v402 < v3)
                {
                  goto LABEL_471;
                }

LABEL_460:
                v520 = 0;
                v403 = &v386[v274];
                if (v359 >= v4)
                {
                  goto LABEL_461;
                }

LABEL_472:
                if (v398 >= v3)
                {
                  v411 = 0;
                  if (v400 < v3)
                  {
                    goto LABEL_490;
                  }

LABEL_474:
                  v412 = 0;
                  if (v402 >= v3)
                  {
                    goto LABEL_475;
                  }

LABEL_491:
                  v413 = v403[3];
                }

                else
                {
                  v411 = v403[1];
                  if (v400 >= v3)
                  {
                    goto LABEL_474;
                  }

LABEL_490:
                  v412 = v403[2];
                  if (v402 < v3)
                  {
                    goto LABEL_491;
                  }

LABEL_475:
                  v413 = 0;
                }

                LOWORD(v404) = *v403;
                WORD1(v404) = v411;
                WORD2(v404) = v412;
                HIWORD(v404) = v413;
                v277 = v575;
                v356 = 2 * v3;
                v362 = v536;
                v405 = *v386;
                v406 = &v403[v274];
                if (v360 >= v4)
                {
                  goto LABEL_462;
                }

LABEL_493:
                if (v398 >= v3)
                {
                  v421 = 0;
                  if (v400 < v3)
                  {
                    goto LABEL_499;
                  }

LABEL_495:
                  v422 = 0;
                  if (v402 >= v3)
                  {
                    goto LABEL_496;
                  }

LABEL_500:
                  v423 = v406[3];
                }

                else
                {
                  v421 = v406[1];
                  if (v400 >= v3)
                  {
                    goto LABEL_495;
                  }

LABEL_499:
                  v422 = v406[2];
                  if (v402 < v3)
                  {
                    goto LABEL_500;
                  }

LABEL_496:
                  v423 = 0;
                }

                LOWORD(v407) = *v406;
                WORD1(v407) = v421;
                WORD2(v407) = v422;
                HIWORD(v407) = v423;
                v356 = 2 * v3;
                v362 = v536;
                if (v361 >= v4)
                {
                  goto LABEL_414;
                }

LABEL_502:
                v424 = &v406[v274];
                if (v398 >= v3)
                {
                  v425 = 0;
                  v363 = v534;
                  if (v400 < v3)
                  {
                    goto LABEL_507;
                  }

LABEL_504:
                  v426 = 0;
                  if (v402 >= v3)
                  {
                    goto LABEL_505;
                  }

LABEL_508:
                  v427 = v424[3];
                }

                else
                {
                  v425 = v424[1];
                  v363 = v534;
                  if (v400 >= v3)
                  {
                    goto LABEL_504;
                  }

LABEL_507:
                  v426 = v424[2];
                  if (v402 < v3)
                  {
                    goto LABEL_508;
                  }

LABEL_505:
                  v427 = 0;
                }

                v368 = v520;
                LOWORD(v367) = *v424;
                WORD1(v367) = v425;
                WORD2(v367) = v426;
                HIWORD(v367) = v427;
                v356 = 2 * v3;
LABEL_415:
                v369 = v399;
                v370 = v401;
                v371 = v368;
                v372 = v404;
                v373 = v367;
                v374 = vqtbl2q_s8(*&v405, xmmword_239D7E3F0);
                v375 = vqtbl2q_s8(*&v405, xmmword_239D7E400).u64[0];
                v273 = 4;
LABEL_416:
                *v378 = v374;
                v378[1].i64[0] = v375;
LABEL_417:
                ++v366;
                v284 = (v284 + 24);
                v365 += v3;
                v357 += v356;
                v283 = v524;
                if (v366 == v5)
                {
                  v358 = v510 + 1;
                  v284 = (v517 + v530);
                  v365 = &v507[v498];
                  v357 = v514 + v527 * 2;
                  if (v510 + 1 == v583)
                  {
                    goto LABEL_306;
                  }

                  goto LABEL_413;
                }

                goto LABEL_418;
              }

              if (v570 % v128 >= v127)
              {
                v273 = 0;
                v414 = 0;
                if (v564 % v128 < v127)
                {
                  goto LABEL_484;
                }
              }

              else
              {
                if (v385 + 1 >= v3)
                {
                  v408 = 0;
                  if (v385 + 2 < v3)
                  {
                    goto LABEL_481;
                  }

LABEL_467:
                  v409 = 0;
                  if (v385 + 3 >= v3)
                  {
                    goto LABEL_468;
                  }

LABEL_482:
                  v410 = v386[3];
                }

                else
                {
                  v408 = v386[1];
                  if (v385 + 2 >= v3)
                  {
                    goto LABEL_467;
                  }

LABEL_481:
                  v409 = v386[2];
                  if (v385 + 3 < v3)
                  {
                    goto LABEL_482;
                  }

LABEL_468:
                  v410 = 0;
                }

                LOWORD(v414) = *v386;
                WORD1(v414) = v408;
                WORD2(v414) = v409;
                HIWORD(v414) = v410;
                v386 += v274;
                v273 = 1;
                if (v564 % v128 < v127)
                {
LABEL_484:
                  if (v359 >= v4)
                  {
                    v415 = 0;
                  }

                  else
                  {
                    if (v385 + 1 >= v3)
                    {
                      v418 = 0;
                      if (v385 + 2 < v3)
                      {
                        goto LABEL_511;
                      }

LABEL_487:
                      v419 = 0;
                      if (v385 + 3 >= v3)
                      {
                        goto LABEL_488;
                      }

LABEL_512:
                      v420 = v386[3];
                    }

                    else
                    {
                      v418 = v386[1];
                      if (v385 + 2 >= v3)
                      {
                        goto LABEL_487;
                      }

LABEL_511:
                      v419 = v386[2];
                      if (v385 + 3 < v3)
                      {
                        goto LABEL_512;
                      }

LABEL_488:
                      v420 = 0;
                    }

                    LOWORD(v415) = *v386;
                    WORD1(v415) = v418;
                    WORD2(v415) = v419;
                    HIWORD(v415) = v420;
                  }

                  v386 += v274;
                  ++v273;
                  if (v558 % v128 < v127)
                  {
LABEL_515:
                    if (v360 >= v4)
                    {
                      *&v416 = 0;
                    }

                    else
                    {
                      if (v385 + 1 >= v3)
                      {
                        v428 = 0;
                        if (v385 + 2 < v3)
                        {
                          goto LABEL_522;
                        }

LABEL_518:
                        v429 = 0;
                        if (v385 + 3 >= v3)
                        {
                          goto LABEL_519;
                        }

LABEL_523:
                        v430 = v386[3];
                      }

                      else
                      {
                        v428 = v386[1];
                        if (v385 + 2 >= v3)
                        {
                          goto LABEL_518;
                        }

LABEL_522:
                        v429 = v386[2];
                        if (v385 + 3 < v3)
                        {
                          goto LABEL_523;
                        }

LABEL_519:
                        v430 = 0;
                      }

                      LOWORD(v416) = *v386;
                      WORD1(v416) = v428;
                      WORD2(v416) = v429;
                      WORD3(v416) = v430;
                    }

                    v386 += v274;
                    ++v273;
                    if (v540 % v128 < v127)
                    {
LABEL_526:
                      if (v361 >= v4)
                      {
                        v417 = 0;
                      }

                      else
                      {
                        if (v385 + 1 >= v3)
                        {
                          v431 = 0;
                          if (v385 + 2 < v3)
                          {
                            goto LABEL_533;
                          }

LABEL_529:
                          v432 = 0;
                          if (v385 + 3 >= v3)
                          {
                            goto LABEL_530;
                          }

LABEL_534:
                          v433 = v386[3];
                        }

                        else
                        {
                          v431 = v386[1];
                          if (v385 + 2 >= v3)
                          {
                            goto LABEL_529;
                          }

LABEL_533:
                          v432 = v386[2];
                          if (v385 + 3 < v3)
                          {
                            goto LABEL_534;
                          }

LABEL_530:
                          v433 = 0;
                        }

                        LOWORD(v417) = *v386;
                        WORD1(v417) = v431;
                        WORD2(v417) = v432;
                        HIWORD(v417) = v433;
                      }

                      ++v273;
LABEL_537:
                      v434 = v415;
                      *(&v416 + 1) = v417;
                      v435 = v416;
                      v374 = vqtbl2q_s8(*&v414, xmmword_239D7E3F0);
                      v375 = vqtbl2q_s8(*&v414, xmmword_239D7E400).u64[0];
                      goto LABEL_416;
                    }

LABEL_479:
                    v417 = 0;
                    goto LABEL_537;
                  }

LABEL_478:
                  *&v416 = 0;
                  if (v540 % v128 < v127)
                  {
                    goto LABEL_526;
                  }

                  goto LABEL_479;
                }
              }

              v415 = 0;
              if (v558 % v128 < v127)
              {
                goto LABEL_515;
              }

              goto LABEL_478;
            }
          }
        }

        v387 = 0;
        v388 = v564 % v128;
        v389 = v558 % v128;
        v390 = v540 % v128;
        v386 = v365;
        v378 = v284;
        while (2)
        {
          if (v570 % v128 >= v127)
          {
            v273 = 0;
            v394 = 0;
            v395 = v386;
            if (v388 < v127)
            {
              goto LABEL_441;
            }

LABEL_437:
            v396 = 0;
            if (v389 >= v127)
            {
              goto LABEL_438;
            }

LABEL_445:
            if (v360 >= v4)
            {
              *&v397 = 0;
              v395 = (v395 + 2 * v277);
              ++v273;
              if (v390 < v127)
              {
                goto LABEL_449;
              }
            }

            else
            {
              *&v397 = *v395;
              v395 = (v395 + 2 * v277);
              ++v273;
              if (v390 < v127)
              {
                goto LABEL_449;
              }
            }
          }

          else
          {
            v394 = *v386;
            v395 = &v386[v277];
            v273 = 1;
            if (v388 >= v127)
            {
              goto LABEL_437;
            }

LABEL_441:
            if (v359 >= v4)
            {
              v396 = 0;
              v395 = (v395 + 2 * v277);
              ++v273;
              if (v389 < v127)
              {
                goto LABEL_445;
              }
            }

            else
            {
              v396 = *v395;
              v395 = (v395 + 2 * v277);
              ++v273;
              if (v389 < v127)
              {
                goto LABEL_445;
              }
            }

LABEL_438:
            *&v397 = 0;
            if (v390 < v127)
            {
LABEL_449:
              if (v361 >= v4)
              {
                v391 = 0;
              }

              else
              {
                v391 = *v395;
              }

              ++v273;
LABEL_434:
              v392 = v396;
              *(&v397 + 1) = v391;
              v393 = v397;
              *v378 = vqtbl2q_s8(*&v394, xmmword_239D7E3F0);
              v378[1].i64[0] = vqtbl2q_s8(*&v394, xmmword_239D7E400).u64[0];
              v387 += 3;
              v378 = (v378 + v276);
              v386 += 3;
              if (v387 >= v278)
              {
                v385 = 3 * ((v3 - 4) / 3) + 3;
                v363 = v534;
                v362 = v536;
                if (v582 < v3)
                {
                  goto LABEL_456;
                }

                goto LABEL_417;
              }

              continue;
            }
          }

          break;
        }

        v391 = 0;
        goto LABEL_434;
      }
    }
  }

  if (!v6)
  {
    if (!v476)
    {
      return result;
    }

    v208 = 0;
    v209 = v3 == 0;
    if (!v583)
    {
      v209 = 1;
    }

    v210 = v5 == 0;
    if (v5)
    {
      v211 = v209;
    }

    else
    {
      v211 = 1;
    }

    v212 = v583 * v5;
    v213 = v583 * v5 * v4;
    if (!v583)
    {
      v210 = 1;
    }

    v562 = v210;
    v214 = v4 - 3;
    v215 = 6 * v213;
    v216 = v4 * v3 * v212;
    v549 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v217 = v4 * (2 * v212 - 2);
    v218 = a2 + v217 + 4;
    v568 = 2 * v213 * v3;
    v219 = -2 * v5 * v4;
    v220 = 2 * v4;
    v221 = -2 * v4;
    v222 = v4 * (4 * v212 - 2);
    v223 = a2 + v222 + 4;
    v224 = a2 + v217 + 6;
    v225 = v4 * (6 * v212 - 2);
    v226 = a2 + v225;
    v542 = v225 + 12;
    v546 = v217 + 6;
    v538 = v222 + 12;
    v556 = v211;
    v552 = v216;
    while (1)
    {
      v581 = v218;
      v574 = v224;
      if (v4 < 4)
      {
        v257 = 0;
        v230 = v477;
        if (!v3)
        {
          goto LABEL_205;
        }
      }

      else
      {
        if (v211)
        {
          goto LABEL_205;
        }

        v227 = 0;
        v228 = v226;
        v229 = v223;
        v230 = v477;
        do
        {
          v231 = 0;
          v232 = v228;
          v233 = v224;
          v234 = v229;
          v235 = v218;
          do
          {
            v236 = v231 + 3;
            if (v231 <= 0xFFFFFFFFFFFFFFFCLL)
            {
              if (v231 + 1 >= v236)
              {
                v243 = 0;
                v244 = v235;
                do
                {
                  v245 = v5;
                  v246 = v244;
                  do
                  {
                    result->i16[0] = *(v246 - 2);
                    result->i16[1] = *(v246 - 1);
                    result->i16[2] = *v246;
                    result->i16[3] = v246[1];
                    result = (result + 8);
                    v246 = (v246 + v221);
                    --v245;
                  }

                  while (v245);
                  ++v243;
                  v244 = (v244 + v219);
                }

                while (v243 != v583);
              }

              else if (v231 + 1 >= v3)
              {
                v247 = 0;
                v248 = v235;
                do
                {
                  v249 = v5;
                  v250 = v248;
                  do
                  {
                    result->i16[0] = *(v250 - 2);
                    result->i16[1] = *(v250 - 1);
                    result->i16[2] = *v250;
                    result->i16[3] = v250[1];
                    result = (result + 24);
                    v250 = (v250 + v221);
                    --v249;
                  }

                  while (v249);
                  ++v247;
                  v248 = (v248 + v219);
                }

                while (v247 != v583);
              }

              else if (v231 + 2 >= v3)
              {
                v251 = 0;
                v252 = v234;
                v253 = v235;
                do
                {
                  v254 = v252;
                  v255 = v253;
                  v256 = v5;
                  do
                  {
                    result->i16[0] = *(v255 - 2);
                    result->i16[1] = *(v255 - 1);
                    result->i16[2] = *v255;
                    result->i16[3] = v255[1];
                    result->i16[4] = *(v254 - 2);
                    result->i16[5] = *(v254 - 1);
                    result->i16[6] = *v254;
                    result->i16[7] = v254[1];
                    result = (result + 24);
                    v255 = (v255 + v221);
                    v254 = (v254 + v221);
                    --v256;
                  }

                  while (v256);
                  ++v251;
                  v253 = (v253 + v219);
                  v252 = (v252 + v219);
                }

                while (v251 != v583);
              }

              else
              {
                v237 = 0;
                v238 = v234;
                v239 = v232;
                v240 = v233;
                do
                {
                  v241 = 0;
                  v242 = v5;
                  do
                  {
                    result->i16[0] = *(v240 + v241 - 6);
                    result->i16[1] = *(v240 + v241 - 4);
                    result->i16[2] = *(v240 + v241 - 2);
                    result->i16[3] = *(v240 + v241);
                    result->i16[4] = *(v238 + v241 - 4);
                    result->i16[5] = *(v238 + v241 - 2);
                    result->i16[6] = *(v238 + v241);
                    result->i16[7] = *(v238 + v241 + 2);
                    result[1].i16[0] = *(v239 + v241);
                    result[1].i16[1] = *(v239 + v241 + 2);
                    result[1].i16[2] = *(v239 + v241 + 4);
                    result[1].i16[3] = *(v239 + v241 + 6);
                    result = (result + 24);
                    v241 -= v220;
                    --v242;
                  }

                  while (v242);
                  ++v237;
                  v240 += v219;
                  v239 += v219;
                  v238 = (v238 + v219);
                }

                while (v237 != v583);
              }
            }

            v235 += v215;
            v234 = (v234 + v215);
            v233 += v215;
            v232 += v215;
            v231 = v236;
          }

          while (v236 < v3);
          v227 += 4;
          v230 += 4;
          v218 += 8;
          v229 += 8;
          v224 += 8;
          v228 += 8;
        }

        while (v227 < v214);
        v257 = v549;
        v4 = v579;
        v211 = v556;
        v216 = v552;
        if (!v3)
        {
          goto LABEL_205;
        }
      }

      v258 = v4 - v257;
      if (v4 > v257 && !v562)
      {
        v259 = 0;
        v260 = v230 + v542;
        v261 = v230 + v538;
        v262 = v230 + v546;
        while (1)
        {
          v263 = v259 + 3;
          if (v259 <= 0xFFFFFFFFFFFFFFFCLL)
          {
            break;
          }

LABEL_242:
          v260 += v215;
          v261 += v215;
          v262 += v215;
          v259 = v263;
          if (v263 >= v3)
          {
            goto LABEL_205;
          }
        }

        v264 = 0;
        v265 = v259 + 1;
        v266 = v259 + 2;
        v267 = v262;
        v268 = v261;
        v269 = v260;
LABEL_246:
        v270 = 0;
        v271 = v5;
        while (v258 <= 3)
        {
          switch(v258)
          {
            case 1:
              goto LABEL_270;
            case 2:
              goto LABEL_269;
            case 3:
              goto LABEL_268;
          }

LABEL_271:
          if (v265 < v263)
          {
            if (v265 >= v3)
            {
              goto LABEL_292;
            }

            if (v258 <= 3)
            {
              switch(v258)
              {
                case 1:
                  goto LABEL_291;
                case 2:
                  goto LABEL_290;
                case 3:
                  goto LABEL_289;
              }
            }

            else
            {
              if (v258 > 5)
              {
                if (v258 != 6)
                {
                  if (v258 != 7)
                  {
                    goto LABEL_292;
                  }

                  result[1].i16[2] = *(v268 + v270);
                }

                result[1].i16[1] = *(v268 + v270 - 2);
                goto LABEL_287;
              }

              if (v258 != 4)
              {
LABEL_287:
                result[1].i16[0] = *(v268 + v270 - 4);
              }

              result->i16[7] = *(v268 + v270 - 6);
LABEL_289:
              result->i16[6] = *(v268 + v270 - 8);
LABEL_290:
              result->i16[5] = *(v268 + v270 - 10);
LABEL_291:
              result->i16[4] = *(v268 + v270 - 12);
            }

LABEL_292:
            if (v266 < v3)
            {
              if (v258 <= 3)
              {
                switch(v258)
                {
                  case 1:
                    goto LABEL_252;
                  case 2:
                    goto LABEL_251;
                  case 3:
                    goto LABEL_250;
                }
              }

              else
              {
                if (v258 > 5)
                {
                  if (v258 != 6)
                  {
                    if (v258 != 7)
                    {
                      goto LABEL_253;
                    }

                    result[1].i16[6] = *(v269 + v270);
                  }

                  result[1].i16[5] = *(v269 + v270 - 2);
                  goto LABEL_248;
                }

                if (v258 != 4)
                {
LABEL_248:
                  result[1].i16[4] = *(v269 + v270 - 4);
                }

                result[1].i16[3] = *(v269 + v270 - 6);
LABEL_250:
                result[1].i16[2] = *(v269 + v270 - 8);
LABEL_251:
                result[1].i16[1] = *(v269 + v270 - 10);
LABEL_252:
                result[1].i16[0] = *(v269 + v270 - 12);
              }
            }

LABEL_253:
            result = (result + 24);
            v270 -= v220;
            if (!--v271)
            {
              goto LABEL_245;
            }

            continue;
          }

          result = (result + 8);
          v270 -= v220;
          if (!--v271)
          {
LABEL_245:
            ++v264;
            v269 += v219;
            v268 += v219;
            v267 += v219;
            if (v264 == v583)
            {
              goto LABEL_242;
            }

            goto LABEL_246;
          }
        }

        if (v258 > 5)
        {
          if (v258 != 6)
          {
            if (v258 != 7)
            {
              goto LABEL_271;
            }

            result->i16[6] = *(v267 + v270 + 6);
          }

          result->i16[5] = *(v267 + v270 + 4);
LABEL_266:
          result->i16[4] = *(v267 + v270 + 2);
        }

        else if (v258 != 4)
        {
          goto LABEL_266;
        }

        result->i16[3] = *(v267 + v270);
LABEL_268:
        result->i16[2] = *(v267 + v270 - 2);
LABEL_269:
        result->i16[1] = *(v267 + v270 - 4);
LABEL_270:
        result->i16[0] = *(v267 + v270 - 6);
        goto LABEL_271;
      }

LABEL_205:
      v477 += v216;
      ++v208;
      v218 = v581 + v568;
      v223 += v568;
      v224 = v574 + v568;
      v226 += v568;
      v4 = v579;
      if (v208 == v476)
      {
        return result;
      }
    }
  }

  if (v476)
  {
    v469 = 0;
    v7 = v3 == 0;
    v8 = v583 * v5;
    if (!v583)
    {
      v7 = 1;
    }

    v9 = v8 * v4;
    v10 = v5 == 0;
    if (!v5)
    {
      v7 = 1;
    }

    v459 = v7;
    v11 = 2 * v4;
    v12 = v8;
    v13 = 6 * v8;
    if (!v583)
    {
      v10 = 1;
    }

    v458 = v10;
    v14 = v8 * (v11 + 4) - 2;
    v480 = v4 - 3;
    v15 = v8 * (v11 + 2) - 2;
    v541 = 6 * v9;
    v461 = 2 * v9 * v3;
    v448 = 14 * v8 - 2;
    v447 = 12 * v8 - 2;
    v446 = 10 * v8 - 2;
    v445 = v8 * (v11 + 14) - 2;
    v444 = v8 * (v11 + 12) - 2;
    v443 = v8 * (v11 + 10) - 2;
    v442 = v8 * (4 * v4 + 14) - 2;
    v441 = v8 * (4 * v4 + 12) - 2;
    v440 = v8 * (4 * v4 + 10) - 2;
    v460 = v4 * v3 * v8;
    v537 = v13 * v4;
    v16 = v5 - 1;
    v17 = -v5;
    v456 = v8 * (2 * v4 + 8) - 2;
    v457 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v478 = 8 * v8;
    v436 = 8 * v8 - 2;
    v437 = v12 * 2 - 2;
    v438 = 4 * v8 - 2;
    v439 = v13 - 2;
    v18 = (a2 + v438);
    v19 = a2 + v456;
    v454 = v14;
    v455 = v8 * (2 * v4 + 6) - 2;
    v20 = a2 + v455;
    v21 = a2 + v14;
    v452 = v8 * (4 * v4 + 8) - 2;
    v453 = v15;
    v22 = v477 + v15;
    v474 = &v477[v12 - 1];
    v473 = v477 + v452;
    v450 = v8 * (4 * v4 + 4) - 2;
    v451 = v8 * (4 * v4 + 6) - 2;
    v472 = v477 + v451;
    v23 = &v477[v13 / 2 - 1];
    v24 = (v477 + v436);
    v449 = v8 * ((4 * v4) | 2) - 2;
    v470 = v477 + v449;
    v471 = v477 + v450;
    do
    {
      v467 = v23;
      v468 = v24;
      v465 = v19;
      v466 = v18;
      v463 = v21;
      v464 = v20;
      v462 = v22;
      if (v4 < 4)
      {
        v98 = 0;
        v32 = v477;
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v459)
        {
          goto LABEL_11;
        }

        v25 = 0;
        v27 = v470;
        v26 = v471;
        v28 = v472;
        v29 = v473;
        v30 = v474;
        v31 = v19;
        v32 = v477;
        do
        {
          v525 = v27;
          v528 = v25;
          v33 = 0;
          v34 = v27;
          v518 = v28;
          v521 = v26;
          v35 = v26;
          v511 = v30;
          v515 = v29;
          v505 = v21;
          v508 = v22;
          v499 = v31;
          v502 = v20;
          v36 = v20;
          v493 = v23;
          v496 = v18;
          v37 = v18;
          v490 = v24;
          v38 = v24;
          v531 = v32;
          do
          {
            v576 = v34;
            v571 = v35;
            v565 = v28;
            v559 = v29;
            v554 = v30;
            v550 = v22;
            v547 = v21;
            v544 = v33 + 3;
            if (v33 <= 0xFFFFFFFFFFFFFFFCLL)
            {
              v39 = &v32[(v583 - 1) * v5];
              if (v33 + 1 >= v33 + 3)
              {
                v54 = 0;
                v55 = v37;
                v56 = v23;
                v57 = v38;
                do
                {
                  v58 = v55;
                  v59 = v56;
                  v60 = v57;
                  v61 = v5;
                  v62 = &v39[v16];
                  do
                  {
                    v64 = *v62--;
                    v63 = v64;
                    v66 = *v58--;
                    v65 = v66;
                    v68 = *v59--;
                    v67 = v68;
                    v69 = *v60--;
                    LOWORD(v70) = v63;
                    WORD1(v70) = v65;
                    WORD2(v70) = v67;
                    HIWORD(v70) = v69;
                    result->i64[0] = v70;
                    result = (result + 8);
                    --v61;
                  }

                  while (v61);
                  v39 -= v5;
                  ++v54;
                  v57 -= v5;
                  v56 -= v5;
                  v55 -= v5;
                }

                while (v54 != v583);
              }

              else if (v33 + 1 >= v3)
              {
                v71 = 0;
                v72 = v37;
                v73 = v23;
                v74 = v38;
                do
                {
                  v75 = v72;
                  v76 = v73;
                  v77 = v74;
                  v78 = v5;
                  v79 = &v39[v16];
                  do
                  {
                    v81 = *v79--;
                    v80 = v81;
                    v83 = *v75--;
                    v82 = v83;
                    v85 = *v76--;
                    v84 = v85;
                    v86 = *v77--;
                    LOWORD(v87) = v80;
                    WORD1(v87) = v82;
                    WORD2(v87) = v84;
                    HIWORD(v87) = v86;
                    result->i64[0] = v87;
                    result = (result + 24);
                    --v78;
                  }

                  while (v78);
                  v39 -= v5;
                  ++v71;
                  v74 -= v5;
                  v73 -= v5;
                  v72 -= v5;
                }

                while (v71 != v583);
              }

              else if (v33 + 2 >= v3)
              {
                v88 = 0;
                v89 = v30;
                v90 = v37;
                v91 = v23;
                v92 = v38;
                v93 = v22;
                v94 = v36;
                v95 = v31;
                do
                {
                  v96 = 0;
                  do
                  {
                    LOWORD(v97) = v89[v96];
                    WORD1(v97) = v90[v96];
                    WORD2(v97) = v91[v96];
                    HIWORD(v97) = v92[v96];
                    result->i64[0] = v97;
                    LOWORD(v97) = *(v93 + 2 * v96);
                    WORD1(v97) = *(v21 + 2 * v96);
                    WORD2(v97) = *(v94 + 2 * v96);
                    HIWORD(v97) = *(v95 + 2 * v96);
                    result->i64[1] = v97;
                    result = (result + 24);
                    --v96;
                  }

                  while (v17 != v96);
                  ++v88;
                  v95 -= 2 * v5;
                  v94 -= 2 * v5;
                  v21 -= 2 * v5;
                  v93 -= 2 * v5;
                  v92 -= v5;
                  v91 -= v5;
                  v90 -= v5;
                  v89 -= v5;
                }

                while (v88 != v583);
              }

              else
              {
                v40 = 0;
                v41 = v30;
                v42 = v37;
                v43 = v23;
                v44 = v38;
                v45 = v21;
                v46 = v36;
                v47 = v31;
                v48 = v34;
                v49 = v35;
                v50 = v28;
                v51 = v29;
                do
                {
                  v52 = 0;
                  do
                  {
                    LOWORD(v53) = v41[v52];
                    WORD1(v53) = v42[v52];
                    WORD2(v53) = v43[v52];
                    HIWORD(v53) = v44[v52];
                    result->i64[0] = v53;
                    LOWORD(v53) = *(v22 + 2 * v52);
                    WORD1(v53) = *(v45 + 2 * v52);
                    WORD2(v53) = *(v46 + 2 * v52);
                    HIWORD(v53) = *(v47 + 2 * v52);
                    result->i64[1] = v53;
                    LOWORD(v53) = *(v48 + 2 * v52);
                    WORD1(v53) = *(v49 + 2 * v52);
                    WORD2(v53) = *(v50 + 2 * v52);
                    HIWORD(v53) = *(v51 + 2 * v52);
                    result[1].i64[0] = v53;
                    result = (result + 24);
                    --v52;
                  }

                  while (v17 != v52);
                  ++v40;
                  v51 -= 2 * v5;
                  v50 -= 2 * v5;
                  v49 -= 2 * v5;
                  v48 -= 2 * v5;
                  v47 -= 2 * v5;
                  v46 -= 2 * v5;
                  v45 -= 2 * v5;
                  v22 -= 2 * v5;
                  v44 -= v5;
                  v43 -= v5;
                  v42 -= v5;
                  v41 -= v5;
                  v16 = v5 - 1;
                }

                while (v40 != v583);
              }
            }

            v32 = (v32 + v537);
            v38 = (v38 + v541);
            v23 = (v23 + v541);
            v37 = (v37 + v541);
            v31 += v541;
            v36 += v541;
            v21 = v547 + v541;
            v22 = v550 + v541;
            v30 = &v554[v541 / 2];
            v29 = v559 + v541;
            v28 = v565 + v541;
            v35 = v571 + v541;
            v34 = v576 + v541;
            v33 = v544;
            v4 = v579;
          }

          while (v544 < v3);
          v25 = v528 + 4;
          v32 = &v531[v478 / 2];
          v24 = &v490[v478 / 2];
          v23 = &v493[v478 / 2];
          v18 = &v496[v478 / 2];
          v31 = v499 + v478;
          v20 = v502 + v478;
          v21 = v505 + v478;
          v22 = v508 + v478;
          v30 = &v511[v478 / 2];
          v29 = v515 + v478;
          v28 = v518 + v478;
          v26 = v521 + v478;
          v27 = v525 + v478;
        }

        while (v528 + 4 < v480);
        v98 = v457;
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      v99 = v4 - v98;
      if (v4 > v98 && !v458)
      {
        v100 = 0;
        v101 = v32 + v448;
        v102 = v32 + v447;
        v103 = v32 + v446;
        v104 = v32 + v436;
        v105 = v32 + v439;
        v106 = v32 + v438;
        v107 = v32 + v445;
        v108 = v32 + v444;
        v109 = v32 + v443;
        v110 = v32 + v456;
        v111 = v32 + v455;
        v112 = v32 + v454;
        v551 = v32 + v442;
        v548 = v32 + v441;
        v113 = v32 + v440;
        v114 = v32 + v452;
        v115 = v32 + v453;
        v116 = v32 + v451;
        v117 = v32 + v450;
        v118 = v32 + v449;
        v119 = v32 + v437;
        while (1)
        {
          v120 = v100 + 3;
          v545 = v101;
          v529 = v103;
          v532 = v102;
          v522 = v105;
          v526 = v104;
          v509 = v109;
          v512 = v108;
          v503 = v111;
          v506 = v110;
          v497 = v115;
          v500 = v112;
          v491 = v114;
          v494 = v113;
          v486 = v117;
          v488 = v116;
          v482 = v119;
          v484 = v118;
          if (v100 <= 0xFFFFFFFFFFFFFFFCLL)
          {
            break;
          }

LABEL_48:
          v101 = v545 + v541;
          v102 = v532 + v541;
          v103 = v529 + v541;
          v104 = v526 + v541;
          v105 = v522 + v541;
          v106 += v541;
          v107 += v541;
          v108 = v512 + v541;
          v109 = v509 + v541;
          v110 = v506 + v541;
          v111 = v503 + v541;
          v112 = v500 + v541;
          v115 = v497 + v541;
          v551 += v541;
          v548 += v541;
          v113 = v494 + v541;
          v114 = v491 + v541;
          v116 = v488 + v541;
          v117 = v486 + v541;
          v118 = v484 + v541;
          v119 = v482 + v541;
          v100 = v120;
          if (v120 >= v3)
          {
            goto LABEL_11;
          }
        }

        v555 = 0;
        v121 = v100 + 1;
        v122 = v100 + 2;
        v577 = v548;
        v566 = v551;
        v572 = v108;
        v560 = v107;
        v123 = v106;
LABEL_52:
        v124 = 0;
        while (v99 <= 3)
        {
          switch(v99)
          {
            case 1:
              goto LABEL_77;
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_75;
          }

LABEL_78:
          if (v121 < v120)
          {
            if (v121 >= v3)
            {
              goto LABEL_99;
            }

            if (v99 <= 3)
            {
              switch(v99)
              {
                case 1:
                  goto LABEL_98;
                case 2:
                  goto LABEL_97;
                case 3:
                  goto LABEL_96;
              }
            }

            else
            {
              if (v99 > 5)
              {
                if (v99 != 6)
                {
                  if (v99 != 7)
                  {
                    goto LABEL_99;
                  }

                  result[1].i16[2] = *(v560 + 2 * v124);
                }

                result[1].i16[1] = *(v572 + 2 * v124);
                goto LABEL_94;
              }

              if (v99 != 4)
              {
LABEL_94:
                result[1].i16[0] = *(v109 + 2 * v124);
              }

              result->i16[7] = *(v110 + 2 * v124);
LABEL_96:
              result->i16[6] = *(v111 + 2 * v124);
LABEL_97:
              result->i16[5] = *(v112 + 2 * v124);
LABEL_98:
              result->i16[4] = *(v115 + 2 * v124);
            }

LABEL_99:
            if (v122 < v3)
            {
              if (v99 <= 3)
              {
                switch(v99)
                {
                  case 1:
                    goto LABEL_59;
                  case 2:
                    goto LABEL_58;
                  case 3:
                    goto LABEL_57;
                }
              }

              else
              {
                if (v99 > 5)
                {
                  if (v99 != 6)
                  {
                    if (v99 != 7)
                    {
                      goto LABEL_60;
                    }

                    result[1].i16[6] = *(v566 + 2 * v124);
                  }

                  result[1].i16[5] = *(v577 + 2 * v124);
                  goto LABEL_55;
                }

                if (v99 != 4)
                {
LABEL_55:
                  result[1].i16[4] = *(v113 + 2 * v124);
                }

                result[1].i16[3] = *(v114 + 2 * v124);
LABEL_57:
                result[1].i16[2] = *(v116 + 2 * v124);
LABEL_58:
                result[1].i16[1] = *(v117 + 2 * v124);
LABEL_59:
                result[1].i16[0] = *(v118 + 2 * v124);
              }
            }

LABEL_60:
            result = (result + 24);
            if (v17 == --v124)
            {
              goto LABEL_51;
            }

            continue;
          }

          result = (result + 8);
          if (v17 == --v124)
          {
LABEL_51:
            v101 -= 2 * v5;
            v102 -= 2 * v5;
            v103 -= 2 * v5;
            v104 -= 2 * v5;
            v105 -= 2 * v5;
            v123 -= 2 * v5;
            v560 -= 2 * v5;
            v572 -= 2 * v5;
            v109 -= 2 * v5;
            v110 -= 2 * v5;
            v111 -= 2 * v5;
            v112 -= 2 * v5;
            v115 -= 2 * v5;
            v566 -= 2 * v5;
            v577 -= 2 * v5;
            v113 -= 2 * v5;
            v114 -= 2 * v5;
            v116 -= 2 * v5;
            v117 -= 2 * v5;
            v118 -= 2 * v5;
            v119 -= 2 * v5;
            if (++v555 == v583)
            {
              goto LABEL_48;
            }

            goto LABEL_52;
          }
        }

        if (v99 > 5)
        {
          if (v99 != 6)
          {
            if (v99 != 7)
            {
              goto LABEL_78;
            }

            result->i16[6] = *(v101 + 2 * v124);
          }

          result->i16[5] = *(v102 + 2 * v124);
LABEL_73:
          result->i16[4] = *(v103 + 2 * v124);
        }

        else if (v99 != 4)
        {
          goto LABEL_73;
        }

        result->i16[3] = *(v104 + 2 * v124);
LABEL_75:
        result->i16[2] = *(v105 + 2 * v124);
LABEL_76:
        result->i16[1] = *(v123 + 2 * v124);
LABEL_77:
        result->i16[0] = *(v119 + 2 * v124);
        goto LABEL_78;
      }

LABEL_11:
      v477 += v460;
      v24 = &v468[v461 / 2];
      v23 = &v467[v461 / 2];
      v18 = &v466[v461 / 2];
      v19 = v465 + v461;
      v20 = v464 + v461;
      v21 = v463 + v461;
      v22 = v462 + v461;
      v474 = (v474 + v461);
      v473 += v461;
      v472 += v461;
      v471 += v461;
      ++v469;
      v470 += v461;
      v4 = v579;
      v16 = v5 - 1;
    }

    while (v469 != v476);
  }

  return result;
}

int8x16_t *sub_239C8A9B8(int8x16_t *result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 32);
  v5 = *(a3 + 56);
  v467 = *(a3 + 48);
  v611 = *(a3 + 64);
  v6 = *(a3 + 108);
  v580 = v4;
  if (*(a3 + 104) != 1)
  {
    v108 = *(a3 + 16);
    v109 = *(a3 + 40);
    v111 = *(a3 + 72);
    v110 = *(a3 + 80);
    if (v6)
    {
      if (v467 && v3 && v5 && v4 && v611)
      {
        v112 = 0;
        v113 = v611 * v108;
        v114 = 32 * v611 * v5;
        v115 = v611 * v3 * v5;
        v116 = 32 * v5;
        v593 = v5 * v109 * v113;
        v587 = v5 * v4 * v611 * v3;
        v117 = a2;
        v118 = 8 * v611 * v5;
        v603 = 8 * v5 * v113;
        v119 = 2 * v611 * v5;
        do
        {
          v120 = 0;
          v599 = v112;
          v608 = v112 * v4;
          v469 = v117;
          v121 = result;
          do
          {
            v122 = v120 + v608;
            if ((v120 + v608) % v110 < v111)
            {
              v123 = 0;
              v124 = v117;
              v125 = v121;
              do
              {
                v126 = 0;
                v127 = v124;
                v128 = v125;
                do
                {
                  v129 = 0;
                  v130 = 0;
                  v131 = 4;
                  v132 = v127;
                  v133 = v128;
                  do
                  {
                    if (v3 >= v131)
                    {
                      v134 = v131;
                    }

                    else
                    {
                      v134 = v3;
                    }

                    v135 = v134 + v129;
                    v136 = v132;
                    v137 = v133;
                    do
                    {
                      v137->i16[0] = *v136;
                      v137 = (v137 + 8);
                      v136 = (v136 + v119);
                      --v135;
                    }

                    while (v135);
                    v130 += 4;
                    v133 = (v133 + v114);
                    v132 = (v132 + v118);
                    v131 += 4;
                    v129 -= 4;
                  }

                  while (v130 < v3);
                  ++v126;
                  v128 += 2;
                  ++v127;
                }

                while (v126 != v5);
                ++v123;
                v125 = (v125 + v116);
                v124 += v5;
              }

              while (v123 != v611);
              v117 += v115;
              v4 = v580;
            }

            if ((v120 | 1) < v4 && (v122 + 1) % v110 < v111)
            {
              v138 = 0;
              v139 = &v121->i16[1];
              v140 = v117;
              do
              {
                v141 = 0;
                v142 = v140;
                v143 = v139;
                do
                {
                  v144 = 0;
                  v145 = 0;
                  v146 = 4;
                  v147 = v142;
                  v148 = v143;
                  do
                  {
                    v149 = 0;
                    if (v3 >= v146)
                    {
                      v150 = v146;
                    }

                    else
                    {
                      v150 = v3;
                    }

                    v151 = v150 + v144;
                    v152 = v147;
                    do
                    {
                      *&v148[v149] = *v152;
                      v152 = (v152 + v119);
                      v149 += 8;
                      --v151;
                    }

                    while (v151);
                    v145 += 4;
                    v148 += v114;
                    v147 = (v147 + v118);
                    v146 += 4;
                    v144 -= 4;
                  }

                  while (v145 < v3);
                  ++v141;
                  v143 += 16;
                  ++v142;
                }

                while (v141 != v5);
                ++v138;
                v139 = (v139 + v116);
                v140 += v5;
              }

              while (v138 != v611);
              v117 += v115;
              v4 = v580;
            }

            if ((v120 | 2) < v4 && (v122 + 2) % v110 < v111)
            {
              v153 = 0;
              v154 = &v121->i16[2];
              v155 = v117;
              do
              {
                v156 = 0;
                v157 = v155;
                v158 = v154;
                do
                {
                  v159 = 0;
                  v160 = 0;
                  v161 = 4;
                  v162 = v157;
                  v163 = v158;
                  do
                  {
                    v164 = 0;
                    if (v3 >= v161)
                    {
                      v165 = v161;
                    }

                    else
                    {
                      v165 = v3;
                    }

                    v166 = v165 + v159;
                    v167 = v162;
                    do
                    {
                      *&v163[v164] = *v167;
                      v167 = (v167 + v119);
                      v164 += 8;
                      --v166;
                    }

                    while (v166);
                    v160 += 4;
                    v163 += v114;
                    v162 = (v162 + v118);
                    v161 += 4;
                    v159 -= 4;
                  }

                  while (v160 < v3);
                  ++v156;
                  v158 += 16;
                  ++v157;
                }

                while (v156 != v5);
                ++v153;
                v154 = (v154 + v116);
                v155 += v5;
              }

              while (v153 != v611);
              v117 += v115;
              v4 = v580;
            }

            if ((v120 | 3) < v4 && (v122 + 3) % v110 < v111)
            {
              v168 = 0;
              v169 = &v121->i16[3];
              v170 = v117;
              do
              {
                v171 = 0;
                v172 = v170;
                v173 = v169;
                do
                {
                  v174 = 0;
                  v175 = 0;
                  v176 = 4;
                  v177 = v172;
                  v178 = v173;
                  do
                  {
                    v179 = 0;
                    if (v3 >= v176)
                    {
                      v180 = v176;
                    }

                    else
                    {
                      v180 = v3;
                    }

                    v181 = v180 + v174;
                    v182 = v177;
                    do
                    {
                      *&v178[v179] = *v182;
                      v182 = (v182 + v119);
                      v179 += 8;
                      --v181;
                    }

                    while (v181);
                    v175 += 4;
                    v178 += v114;
                    v177 = (v177 + v118);
                    v176 += 4;
                    v174 -= 4;
                  }

                  while (v175 < v3);
                  ++v171;
                  v173 += 16;
                  ++v172;
                }

                while (v171 != v5);
                ++v168;
                v169 = (v169 + v116);
                v170 += v5;
              }

              while (v168 != v611);
              v117 += v115;
              v4 = v580;
            }

            v120 += 4;
            v121 = (v121 + v603);
          }

          while (v120 < v4);
          ++v112;
          result = (result + 2 * v593);
          v117 = &v469[v587];
        }

        while (v599 + 1 != v467);
      }

      return result;
    }

    if (!v467)
    {
      return result;
    }

    v505 = 0;
    v254 = 0;
    v255 = *(a3 + 88);
    v514 = v4 - 3;
    v256 = v611 * v3 * v5;
    v257 = 32 * v611 * v5;
    v258 = v611 * v5 * v3;
    v259 = v3 - 3;
    v548 = 2 * v5;
    v260 = v5 * v611 * v108;
    v500 = v260 * v109;
    v497 = v5 * v4 * v611 * v3;
    v605 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v491 = ((v4 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v261 = v611 * v5 * v108;
    v503 = &result->i8[v261 * (8 * ((v4 - 4) >> 2) + 8)];
    v494 = 2 * v109 * v261;
    v511 = 8 * v260;
    v508 = v5 * v3;
    v545 = v5 * v3;
    v262 = 2 * v3;
    v485 = 2 * v258;
    v488 = v258;
    v482 = 3 * v258;
    v584 = v255;
    v610 = v258;
    v570 = v110;
    v566 = v5;
LABEL_301:
    v471 = a2;
    if (v4 < 4)
    {
      v336 = 0;
      v265 = result;
      v264 = a2;
      if (v4 > 0)
      {
        goto LABEL_401;
      }

      goto LABEL_300;
    }

    if (!v611)
    {
      goto LABEL_300;
    }

    v531 = v505 * v4;
    if (!v5)
    {
      goto LABEL_300;
    }

    v263 = 0;
    v264 = a2;
    v265 = result;
LABEL_306:
    v266 = 0;
    v535 = v263;
    v267 = v263 + v531;
    v268 = v263 + v531 + 1;
    v269 = v263 + v531 + 2;
    v270 = v263 + v531 + 3;
    v540 = v264;
    v271 = v264;
    v527 = v265;
    v595 = v268;
    v589 = v269;
LABEL_308:
    v561 = v266;
    v272 = 0;
    v556 = v271;
    v552 = v265;
LABEL_313:
    if (v3 < 4)
    {
      v283 = 0;
      v281 = v265;
      v280 = v271;
      if (v3 <= 0)
      {
        goto LABEL_312;
      }

      goto LABEL_334;
    }

    if (v255 == 1)
    {
      v276 = 0;
      v277 = v256;
      v278 = 2 * v256;
      v279 = 3 * v256;
      v280 = v271;
      v281 = v265;
      do
      {
        v282 = *v280;
        v280 += 4;
        v613.val[0].i64[0] = v282;
        v613.val[1].i64[0] = *&v271[v278];
        v613.val[0].i64[1] = *&v271[v277];
        v613.val[1].i64[1] = *&v271[v279];
        v276 += 4;
        *v281 = vqtbl2q_s8(v613, xmmword_239D7E3F0);
        v281[1] = vqtbl2q_s8(v613, xmmword_239D7E410);
        v281 = (v281 + v257);
        v279 += 4;
        v278 += 4;
        v277 += 4;
      }

      while (v276 < v259);
      v254 = 4;
      v283 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      if (v605 >= v3)
      {
        goto LABEL_312;
      }

LABEL_334:
      if (v255 == 1)
      {
        v295 = v283 | 1;
        if ((v283 | 1) >= v3)
        {
          v296 = 0;
          v297 = v283 | 2;
          if ((v283 | 2) < v3)
          {
            goto LABEL_354;
          }

LABEL_337:
          v298 = 0;
          v299 = v283 | 3;
          if ((v283 | 3) >= v3)
          {
            goto LABEL_338;
          }

LABEL_355:
          v300 = v280[3];
          v301 = &v280[v258];
          if (v295 < v3)
          {
            goto LABEL_356;
          }

LABEL_339:
          v302 = 0;
          v303 = v270;
          if (v297 >= v3)
          {
            goto LABEL_340;
          }

LABEL_357:
          v304 = v301[2];
          if (v299 < v3)
          {
            goto LABEL_358;
          }

LABEL_341:
          v305 = 0;
          v306 = &v301[v258];
          if (v295 >= v3)
          {
            goto LABEL_342;
          }

LABEL_359:
          v307 = v306[1];
          if (v297 < v3)
          {
            goto LABEL_360;
          }

LABEL_343:
          v308 = 0;
          v309 = v267;
          if (v299 >= v3)
          {
            goto LABEL_344;
          }

LABEL_361:
          v310 = v306[3];
          v311 = &v306[v610];
          if (v295 < v3)
          {
            goto LABEL_362;
          }

LABEL_345:
          v312 = 0;
          v313 = *v280;
          v314 = *v301;
          v315 = *v306;
          v316 = *v311;
          if (v297 >= v3)
          {
            goto LABEL_346;
          }

LABEL_363:
          v317 = v311[2];
          if (v299 < v3)
          {
            goto LABEL_309;
          }

LABEL_364:
          v273 = 0;
        }

        else
        {
          v296 = v280[1];
          v297 = v283 | 2;
          if ((v283 | 2) >= v3)
          {
            goto LABEL_337;
          }

LABEL_354:
          v298 = v280[2];
          v299 = v283 | 3;
          if ((v283 | 3) < v3)
          {
            goto LABEL_355;
          }

LABEL_338:
          v300 = 0;
          v301 = &v280[v258];
          if (v295 >= v3)
          {
            goto LABEL_339;
          }

LABEL_356:
          v302 = v301[1];
          v303 = v270;
          if (v297 < v3)
          {
            goto LABEL_357;
          }

LABEL_340:
          v304 = 0;
          if (v299 >= v3)
          {
            goto LABEL_341;
          }

LABEL_358:
          v305 = v301[3];
          v306 = &v301[v258];
          if (v295 < v3)
          {
            goto LABEL_359;
          }

LABEL_342:
          v307 = 0;
          if (v297 >= v3)
          {
            goto LABEL_343;
          }

LABEL_360:
          v308 = v306[2];
          v309 = v267;
          if (v299 < v3)
          {
            goto LABEL_361;
          }

LABEL_344:
          v310 = 0;
          v311 = &v306[v610];
          if (v295 >= v3)
          {
            goto LABEL_345;
          }

LABEL_362:
          v312 = v311[1];
          v313 = *v280;
          v314 = *v301;
          v315 = *v306;
          v316 = *v311;
          if (v297 < v3)
          {
            goto LABEL_363;
          }

LABEL_346:
          v317 = 0;
          if (v299 >= v3)
          {
            goto LABEL_364;
          }

LABEL_309:
          v273 = v311[3];
        }

        v262 = 2 * v3;
        v612.val[0].i16[0] = v313;
        v612.val[0].i16[1] = v296;
        v612.val[0].i16[2] = v298;
        v612.val[0].i16[3] = v300;
        v612.val[0].i16[4] = v314;
        v612.val[0].i16[5] = v302;
        v612.val[0].i16[6] = v304;
        v612.val[0].i16[7] = v305;
        v612.val[1].i16[0] = v315;
        v612.val[1].i16[1] = v307;
        v612.val[1].i16[2] = v308;
        v612.val[1].i16[3] = v310;
        v612.val[1].i16[4] = v316;
        v612.val[1].i16[5] = v312;
        v612.val[1].i16[6] = v317;
        v612.val[1].i16[7] = v273;
        v274 = vqtbl2q_s8(v612, xmmword_239D7E3F0);
        v275 = vqtbl2q_s8(v612, xmmword_239D7E410);
        v254 = 4;
        v4 = v580;
        v255 = v584;
        v258 = v610;
        v267 = v309;
        v110 = v570;
        v268 = v595;
        v269 = v589;
        v270 = v303;
        v5 = v566;
LABEL_311:
        *v281 = v274;
        v281[1] = v275;
        goto LABEL_312;
      }

      if (v267 % v110 >= v111)
      {
        v254 = 0;
        v321 = 0;
        if (v268 % v110 < v111)
        {
          goto LABEL_373;
        }
      }

      else
      {
        if ((v283 | 1) >= v3)
        {
          v318 = 0;
          if ((v283 | 2) < v3)
          {
            goto LABEL_370;
          }

LABEL_351:
          v319 = 0;
          if ((v283 | 3) >= v3)
          {
            goto LABEL_352;
          }

LABEL_371:
          v320 = v280[3];
        }

        else
        {
          v318 = v280[1];
          if ((v283 | 2) >= v3)
          {
            goto LABEL_351;
          }

LABEL_370:
          v319 = v280[2];
          if ((v283 | 3) < v3)
          {
            goto LABEL_371;
          }

LABEL_352:
          v320 = 0;
        }

        LOWORD(v321) = *v280;
        WORD1(v321) = v318;
        WORD2(v321) = v319;
        HIWORD(v321) = v320;
        v280 += v258;
        v254 = 1;
        if (v268 % v110 < v111)
        {
LABEL_373:
          if ((v283 | 1) >= v3)
          {
            v325 = 0;
            if ((v283 | 2) < v3)
            {
              goto LABEL_378;
            }

LABEL_375:
            v326 = 0;
            if ((v283 | 3) >= v3)
            {
              goto LABEL_376;
            }

LABEL_379:
            v327 = v280[3];
          }

          else
          {
            v325 = v280[1];
            if ((v283 | 2) >= v3)
            {
              goto LABEL_375;
            }

LABEL_378:
            v326 = v280[2];
            if ((v283 | 3) < v3)
            {
              goto LABEL_379;
            }

LABEL_376:
            v327 = 0;
          }

          LOWORD(v322) = *v280;
          WORD1(v322) = v325;
          WORD2(v322) = v326;
          HIWORD(v322) = v327;
          v280 += v258;
          ++v254;
          if (v269 % v110 < v111)
          {
LABEL_381:
            if ((v283 | 1) >= v3)
            {
              v328 = 0;
              if ((v283 | 2) < v3)
              {
                goto LABEL_386;
              }

LABEL_383:
              v329 = 0;
              if ((v283 | 3) >= v3)
              {
                goto LABEL_384;
              }

LABEL_387:
              v330 = v280[3];
            }

            else
            {
              v328 = v280[1];
              if ((v283 | 2) >= v3)
              {
                goto LABEL_383;
              }

LABEL_386:
              v329 = v280[2];
              if ((v283 | 3) < v3)
              {
                goto LABEL_387;
              }

LABEL_384:
              v330 = 0;
            }

            LOWORD(v323) = *v280;
            WORD1(v323) = v328;
            WORD2(v323) = v329;
            WORD3(v323) = v330;
            v280 += v258;
            ++v254;
            if (v270 % v110 < v111)
            {
LABEL_389:
              if ((v283 | 1) >= v3)
              {
                v331 = 0;
                if ((v283 | 2) < v3)
                {
                  goto LABEL_394;
                }

LABEL_391:
                v332 = 0;
                if ((v283 | 3) >= v3)
                {
                  goto LABEL_392;
                }

LABEL_395:
                v333 = v280[3];
              }

              else
              {
                v331 = v280[1];
                if ((v283 | 2) >= v3)
                {
                  goto LABEL_391;
                }

LABEL_394:
                v332 = v280[2];
                if ((v283 | 3) < v3)
                {
                  goto LABEL_395;
                }

LABEL_392:
                v333 = 0;
              }

              LOWORD(v324) = *v280;
              WORD1(v324) = v331;
              WORD2(v324) = v332;
              HIWORD(v324) = v333;
              ++v254;
LABEL_397:
              v334 = v322;
              *(&v323 + 1) = v324;
              v335 = v323;
              v274 = vqtbl2q_s8(*&v321, xmmword_239D7E3F0);
              v275 = vqtbl2q_s8(*&v321, xmmword_239D7E410);
              goto LABEL_311;
            }

LABEL_368:
            v324 = 0;
            goto LABEL_397;
          }

LABEL_367:
          *&v323 = 0;
          if (v270 % v110 < v111)
          {
            goto LABEL_389;
          }

          goto LABEL_368;
        }
      }

      v322 = 0;
      if (v269 % v110 < v111)
      {
        goto LABEL_381;
      }

      goto LABEL_367;
    }

    v284 = 0;
    v285 = v268 % v110;
    v286 = v269 % v110;
    v287 = v270 % v110;
    v280 = v271;
    v281 = v265;
    while (1)
    {
      if (v267 % v110 >= v111)
      {
        v254 = 0;
        v291 = 0;
        v292 = v280;
        if (v285 >= v111)
        {
LABEL_326:
          v293 = 0;
          if (v286 >= v111)
          {
            goto LABEL_327;
          }

          goto LABEL_331;
        }
      }

      else
      {
        v291 = *v280;
        v292 = &v280[v256];
        v254 = 1;
        if (v285 >= v111)
        {
          goto LABEL_326;
        }
      }

      v293 = *v292;
      v292 = (v292 + 2 * v256);
      ++v254;
      if (v286 >= v111)
      {
LABEL_327:
        *&v294 = 0;
        if (v287 >= v111)
        {
          goto LABEL_332;
        }

        goto LABEL_322;
      }

LABEL_331:
      *&v294 = *v292;
      v292 = (v292 + 2 * v256);
      ++v254;
      if (v287 >= v111)
      {
LABEL_332:
        v288 = 0;
        goto LABEL_323;
      }

LABEL_322:
      v288 = *v292;
      ++v254;
LABEL_323:
      v289 = v293;
      *(&v294 + 1) = v288;
      v290 = v294;
      *v281 = vqtbl2q_s8(*&v291, xmmword_239D7E3F0);
      v281[1] = vqtbl2q_s8(*&v291, xmmword_239D7E410);
      v284 += 4;
      v281 = (v281 + v257);
      v280 += 4;
      if (v284 >= v259)
      {
        v283 = v3 & 0xFFFFFFFFFFFFFFFCLL;
        if (v605 < v3)
        {
          goto LABEL_334;
        }

LABEL_312:
        ++v272;
        v265 += 2;
        v271 = (v271 + v262);
        if (v272 != v5)
        {
          goto LABEL_313;
        }

        v266 = v561 + 1;
        v265 = &v552[v548];
        v271 = &v556[v545];
        if (v561 + 1 != v611)
        {
          goto LABEL_308;
        }

        v264 = &v540[v254 * v258];
        v263 = v535 + 4;
        v265 = (v527 + v511);
        if (v535 + 4 < v514)
        {
          goto LABEL_306;
        }

        v336 = v491;
        if (v491 >= v4)
        {
          goto LABEL_300;
        }

LABEL_401:
        v337 = v265;
        if (!v611 || (v596 = v336 + v505 * v4, !v5))
        {
LABEL_300:
          result = (result + 2 * v500);
          a2 = &v471[v497];
          v503 += v494;
          if (++v505 == v467)
          {
            return result;
          }

          goto LABEL_301;
        }

        v338 = 0;
        v339 = 0;
        v590 = v596 + 1;
        v340 = v336 | 1;
        v562 = v596 + 2;
        v341 = v336 | 2;
        v557 = v596 + 3;
        v342 = v336 | 3;
        v553 = &v264[v488];
        v541 = &v264[v485];
        v536 = &v264[v482];
        v343 = v264;
LABEL_407:
        v520 = v339;
        v344 = 0;
        v523 = v338;
        v517 = v343;
        v528 = v337;
LABEL_412:
        if (v3 < 4)
        {
          v362 = 0;
          v355 = v337;
          v363 = v343;
          if (v3 > 0)
          {
            goto LABEL_450;
          }

          goto LABEL_411;
        }

        if (v255 == 1)
        {
          v353 = 0;
          v354 = v338;
          v355 = v337;
          while (1)
          {
            if (v340 >= v4)
            {
              v360 = 0;
              if (v341 >= v4)
              {
LABEL_419:
                v361 = 0;
                if (v342 >= v4)
                {
                  goto LABEL_423;
                }

                goto LABEL_415;
              }
            }

            else
            {
              v360 = *(v553 + v354);
              if (v341 >= v4)
              {
                goto LABEL_419;
              }
            }

            v361 = *(v541 + v354);
            if (v342 >= v4)
            {
LABEL_423:
              v356 = 0;
              goto LABEL_416;
            }

LABEL_415:
            v356 = *(v536 + v354);
LABEL_416:
            v357 = *(v264 + v354);
            v358 = v360;
            v359 = v356;
            *v355 = vqtbl2q_s8(*(&v361 - 2), xmmword_239D7E3F0);
            v355[1] = vqtbl2q_s8(*(&v361 - 2), xmmword_239D7E410);
            v353 += 4;
            v355 = (v355 + v257);
            v354 += 8;
            if (v353 >= v259)
            {
              v363 = (v264 + v354);
              v254 = 4;
              v362 = v3 & 0xFFFFFFFFFFFFFFFCLL;
              if (v605 >= v3)
              {
                goto LABEL_411;
              }

LABEL_450:
              if (v255 == 1)
              {
                v376 = v362 | 1;
                if ((v362 | 1) >= v3)
                {
                  v377 = 0;
                  v378 = v362 | 2;
                  if ((v362 | 2) < v3)
                  {
                    goto LABEL_464;
                  }

LABEL_453:
                  v379 = 0;
                  v380 = v362 | 3;
                  if ((v362 | 3) >= v3)
                  {
                    goto LABEL_454;
                  }

LABEL_465:
                  v381 = v363[3];
                  v382 = &v363[v256];
                  if (v340 < v4)
                  {
                    goto LABEL_466;
                  }

LABEL_455:
                  v383 = 0;
                  v384 = *v363;
                  v385 = &v382[v256];
                  if (v341 < v4)
                  {
                    goto LABEL_487;
                  }

LABEL_456:
                  v386 = 0;
                  if (v342 < v4)
                  {
                    goto LABEL_496;
                  }

LABEL_408:
                  v345 = 0;
                  goto LABEL_409;
                }

                v377 = v363[1];
                v378 = v362 | 2;
                if ((v362 | 2) >= v3)
                {
                  goto LABEL_453;
                }

LABEL_464:
                v379 = v363[2];
                v380 = v362 | 3;
                if ((v362 | 3) < v3)
                {
                  goto LABEL_465;
                }

LABEL_454:
                v381 = 0;
                v382 = &v363[v256];
                if (v340 >= v4)
                {
                  goto LABEL_455;
                }

LABEL_466:
                if (v376 >= v3)
                {
                  v390 = 0;
                  v532 = v381;
                  v391 = v379;
                  if (v378 < v3)
                  {
                    goto LABEL_484;
                  }

LABEL_468:
                  v392 = 0;
                  v393 = v377;
                  if (v380 >= v3)
                  {
                    goto LABEL_469;
                  }

LABEL_485:
                  v394 = v382[3];
                }

                else
                {
                  v390 = v382[1];
                  v532 = v381;
                  v391 = v379;
                  if (v378 >= v3)
                  {
                    goto LABEL_468;
                  }

LABEL_484:
                  v392 = v382[2];
                  v393 = v377;
                  if (v380 < v3)
                  {
                    goto LABEL_485;
                  }

LABEL_469:
                  v394 = 0;
                }

                LOWORD(v383) = *v382;
                WORD1(v383) = v390;
                WORD2(v383) = v392;
                HIWORD(v383) = v394;
                v258 = v610;
                v262 = 2 * v3;
                v377 = v393;
                v379 = v391;
                v381 = v532;
                v384 = *v363;
                v385 = &v382[v256];
                if (v341 >= v4)
                {
                  goto LABEL_456;
                }

LABEL_487:
                if (v376 >= v3)
                {
                  v402 = 0;
                  if (v378 < v3)
                  {
                    goto LABEL_493;
                  }

LABEL_489:
                  v403 = 0;
                  if (v380 >= v3)
                  {
                    goto LABEL_490;
                  }

LABEL_494:
                  v404 = v385[3];
                }

                else
                {
                  v402 = v385[1];
                  if (v378 >= v3)
                  {
                    goto LABEL_489;
                  }

LABEL_493:
                  v403 = v385[2];
                  if (v380 < v3)
                  {
                    goto LABEL_494;
                  }

LABEL_490:
                  v404 = 0;
                }

                LOWORD(v386) = *v385;
                WORD1(v386) = v402;
                WORD2(v386) = v403;
                HIWORD(v386) = v404;
                v258 = v610;
                v262 = 2 * v3;
                if (v342 >= v4)
                {
                  goto LABEL_408;
                }

LABEL_496:
                v405 = &v385[v256];
                if (v376 >= v3)
                {
                  v406 = 0;
                  if (v378 < v3)
                  {
                    goto LABEL_501;
                  }

LABEL_498:
                  v407 = 0;
                  if (v380 >= v3)
                  {
                    goto LABEL_499;
                  }

LABEL_502:
                  v408 = v405[3];
                }

                else
                {
                  v406 = v405[1];
                  if (v378 >= v3)
                  {
                    goto LABEL_498;
                  }

LABEL_501:
                  v407 = v405[2];
                  if (v380 < v3)
                  {
                    goto LABEL_502;
                  }

LABEL_499:
                  v408 = 0;
                }

                LOWORD(v345) = *v405;
                WORD1(v345) = v406;
                WORD2(v345) = v407;
                HIWORD(v345) = v408;
                v258 = v610;
LABEL_409:
                v346 = v377;
                v347 = v379;
                v348 = v381;
                v349 = v383;
                v350 = v345;
                v351 = vqtbl2q_s8(*&v384, xmmword_239D7E3F0);
                v352 = vqtbl2q_s8(*&v384, xmmword_239D7E410);
                v254 = 4;
LABEL_410:
                *v355 = v351;
                v355[1] = v352;
LABEL_411:
                ++v344;
                v337 += 2;
                v343 += v3;
                v338 += v262;
                if (v344 == v5)
                {
                  v339 = v520 + 1;
                  v337 = &v528[v548];
                  v343 = &v517[v508];
                  v338 = v523 + v545 * 2;
                  if (v520 + 1 == v611)
                  {
                    goto LABEL_300;
                  }

                  goto LABEL_407;
                }

                goto LABEL_412;
              }

              if (v596 % v110 >= v111)
              {
                v254 = 0;
                v395 = 0;
                if (v590 % v110 < v111)
                {
                  goto LABEL_478;
                }
              }

              else
              {
                if ((v362 | 1) >= v3)
                {
                  v387 = 0;
                  if ((v362 | 2) < v3)
                  {
                    goto LABEL_475;
                  }

LABEL_461:
                  v388 = 0;
                  if ((v362 | 3) >= v3)
                  {
                    goto LABEL_462;
                  }

LABEL_476:
                  v389 = v363[3];
                }

                else
                {
                  v387 = v363[1];
                  if ((v362 | 2) >= v3)
                  {
                    goto LABEL_461;
                  }

LABEL_475:
                  v388 = v363[2];
                  if ((v362 | 3) < v3)
                  {
                    goto LABEL_476;
                  }

LABEL_462:
                  v389 = 0;
                }

                LOWORD(v395) = *v363;
                WORD1(v395) = v387;
                WORD2(v395) = v388;
                HIWORD(v395) = v389;
                v363 += v256;
                v254 = 1;
                v258 = v610;
                if (v590 % v110 < v111)
                {
LABEL_478:
                  if (v340 >= v4)
                  {
                    v396 = 0;
                  }

                  else
                  {
                    if ((v362 | 1) >= v3)
                    {
                      v399 = 0;
                      if ((v362 | 2) < v3)
                      {
                        goto LABEL_505;
                      }

LABEL_481:
                      v400 = 0;
                      if ((v362 | 3) >= v3)
                      {
                        goto LABEL_482;
                      }

LABEL_506:
                      v401 = v363[3];
                    }

                    else
                    {
                      v399 = v363[1];
                      if ((v362 | 2) >= v3)
                      {
                        goto LABEL_481;
                      }

LABEL_505:
                      v400 = v363[2];
                      if ((v362 | 3) < v3)
                      {
                        goto LABEL_506;
                      }

LABEL_482:
                      v401 = 0;
                    }

                    LOWORD(v396) = *v363;
                    WORD1(v396) = v399;
                    WORD2(v396) = v400;
                    HIWORD(v396) = v401;
                    v258 = v610;
                  }

                  v363 += v256;
                  ++v254;
                  if (v562 % v110 < v111)
                  {
LABEL_509:
                    if (v341 >= v4)
                    {
                      *&v397 = 0;
                    }

                    else
                    {
                      if ((v362 | 1) >= v3)
                      {
                        v409 = 0;
                        if ((v362 | 2) < v3)
                        {
                          goto LABEL_516;
                        }

LABEL_512:
                        v410 = 0;
                        if ((v362 | 3) >= v3)
                        {
                          goto LABEL_513;
                        }

LABEL_517:
                        v411 = v363[3];
                      }

                      else
                      {
                        v409 = v363[1];
                        if ((v362 | 2) >= v3)
                        {
                          goto LABEL_512;
                        }

LABEL_516:
                        v410 = v363[2];
                        if ((v362 | 3) < v3)
                        {
                          goto LABEL_517;
                        }

LABEL_513:
                        v411 = 0;
                      }

                      LOWORD(v397) = *v363;
                      WORD1(v397) = v409;
                      WORD2(v397) = v410;
                      WORD3(v397) = v411;
                      v258 = v610;
                    }

                    v363 += v256;
                    ++v254;
                    if (v557 % v110 < v111)
                    {
LABEL_520:
                      if (v342 >= v4)
                      {
                        v398 = 0;
                      }

                      else
                      {
                        if ((v362 | 1) >= v3)
                        {
                          v412 = 0;
                          if ((v362 | 2) < v3)
                          {
                            goto LABEL_527;
                          }

LABEL_523:
                          v413 = 0;
                          if ((v362 | 3) >= v3)
                          {
                            goto LABEL_524;
                          }

LABEL_528:
                          v414 = v363[3];
                        }

                        else
                        {
                          v412 = v363[1];
                          if ((v362 | 2) >= v3)
                          {
                            goto LABEL_523;
                          }

LABEL_527:
                          v413 = v363[2];
                          if ((v362 | 3) < v3)
                          {
                            goto LABEL_528;
                          }

LABEL_524:
                          v414 = 0;
                        }

                        LOWORD(v398) = *v363;
                        WORD1(v398) = v412;
                        WORD2(v398) = v413;
                        HIWORD(v398) = v414;
                      }

                      ++v254;
LABEL_531:
                      v415 = v396;
                      *(&v397 + 1) = v398;
                      v416 = v397;
                      v351 = vqtbl2q_s8(*&v395, xmmword_239D7E3F0);
                      v352 = vqtbl2q_s8(*&v395, xmmword_239D7E410);
                      goto LABEL_410;
                    }

LABEL_473:
                    v398 = 0;
                    goto LABEL_531;
                  }

LABEL_472:
                  *&v397 = 0;
                  if (v557 % v110 < v111)
                  {
                    goto LABEL_520;
                  }

                  goto LABEL_473;
                }
              }

              v396 = 0;
              if (v562 % v110 < v111)
              {
                goto LABEL_509;
              }

              goto LABEL_472;
            }
          }
        }

        v364 = v264;
        v365 = 0;
        v366 = v590 % v110;
        v367 = v562 % v110;
        v368 = v557 % v110;
        v363 = v343;
        v355 = v337;
        while (2)
        {
          if (v596 % v110 >= v111)
          {
            v254 = 0;
            v372 = 0;
            v373 = v363;
            if (v366 < v111)
            {
              goto LABEL_435;
            }

LABEL_431:
            v374 = 0;
            if (v367 >= v111)
            {
              goto LABEL_432;
            }

LABEL_439:
            if (v341 >= v4)
            {
              *&v375 = 0;
              v373 = (v373 + 2 * v258);
              ++v254;
              if (v368 < v111)
              {
                goto LABEL_443;
              }
            }

            else
            {
              *&v375 = *v373;
              v373 = (v373 + 2 * v258);
              ++v254;
              if (v368 < v111)
              {
                goto LABEL_443;
              }
            }
          }

          else
          {
            v372 = *v363;
            v373 = &v363[v258];
            v254 = 1;
            if (v366 >= v111)
            {
              goto LABEL_431;
            }

LABEL_435:
            if (v340 >= v4)
            {
              v374 = 0;
              v373 = (v373 + 2 * v258);
              ++v254;
              if (v367 < v111)
              {
                goto LABEL_439;
              }
            }

            else
            {
              v374 = *v373;
              v373 = (v373 + 2 * v258);
              ++v254;
              if (v367 < v111)
              {
                goto LABEL_439;
              }
            }

LABEL_432:
            *&v375 = 0;
            if (v368 < v111)
            {
LABEL_443:
              if (v342 >= v4)
              {
                v369 = 0;
              }

              else
              {
                v369 = *v373;
              }

              ++v254;
LABEL_428:
              v370 = v374;
              *(&v375 + 1) = v369;
              v371 = v375;
              *v355 = vqtbl2q_s8(*&v372, xmmword_239D7E3F0);
              v355[1] = vqtbl2q_s8(*&v372, xmmword_239D7E410);
              v365 += 4;
              v355 = (v355 + v257);
              v363 += 4;
              if (v365 >= v259)
              {
                v362 = v3 & 0xFFFFFFFFFFFFFFFCLL;
                v262 = 2 * v3;
                v264 = v364;
                if (v605 < v3)
                {
                  goto LABEL_450;
                }

                goto LABEL_411;
              }

              continue;
            }
          }

          break;
        }

        v369 = 0;
        goto LABEL_428;
      }
    }
  }

  if (!v6)
  {
    if (!v467)
    {
      return result;
    }

    v183 = 0;
    v184 = v3 == 0;
    if (!v611)
    {
      v184 = 1;
    }

    v185 = v5 == 0;
    if (!v5)
    {
      v184 = 1;
    }

    v560 = v184;
    v186 = v611 * v5;
    v187 = v611 * v5 * v4;
    if (!v611)
    {
      v185 = 1;
    }

    v551 = v185;
    v594 = v4 - 3;
    v188 = 8 * v187;
    v189 = v4 * v3 * v186;
    v544 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v190 = v4 * (2 * v186 - 2);
    v191 = a2 + v190 + 4;
    v565 = 2 * v187 * v3;
    v192 = 2 * v5 * v4;
    v193 = -2 * v5 * v4;
    v194 = 2 * v4;
    v195 = -2 * v4;
    v196 = v4 * (4 * v186 - 2);
    v197 = a2 + v196 + 4;
    v198 = a2 + v190 + 6;
    v199 = v4 * (6 * v186 - 2);
    v200 = a2 + v199;
    v201 = v4 * (8 * v186 - 2);
    v202 = a2 + v201;
    v203 = a2 + v196 + 6;
    v204 = v189;
    v539 = v201 + 12;
    v534 = v199 + 12;
    v530 = v196 + 12;
    v526 = v190 + 12;
    v547 = v189;
    while (1)
    {
      v470 = a2;
      v588 = v191;
      v583 = v197;
      v579 = v198;
      v576 = v200;
      v573 = v202;
      v569 = v203;
      if (v4 < 4)
      {
        v241 = 0;
        v211 = a2;
        if (!v3)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v560)
        {
          goto LABEL_186;
        }

        v555 = v183;
        v205 = 0;
        v206 = v203;
        v207 = v202;
        v208 = v200;
        v209 = v198;
        v210 = v197;
        v211 = v470;
        do
        {
          v604 = v205;
          v609 = v211;
          v212 = 0;
          v600 = v206;
          v213 = v207;
          v214 = v208;
          v215 = v209;
          v216 = v210;
          v217 = v191;
          do
          {
            if ((v212 | 1) >= v3)
            {
              v225 = 0;
              v226 = v217;
              do
              {
                v227 = v5;
                v228 = v226;
                do
                {
                  result->i16[0] = *(v228 - 2);
                  result->i16[1] = *(v228 - 1);
                  result->i16[2] = *v228;
                  result->i16[3] = v228[1];
                  result += 2;
                  v228 = (v228 + v195);
                  --v227;
                }

                while (v227);
                ++v225;
                v226 = (v226 + v193);
              }

              while (v225 != v611);
            }

            else if ((v212 | 2) >= v3)
            {
              v229 = 0;
              v230 = v216;
              v231 = v217;
              do
              {
                v232 = v230;
                v233 = v231;
                v234 = v5;
                do
                {
                  result->i16[0] = *(v233 - 2);
                  result->i16[1] = *(v233 - 1);
                  result->i16[2] = *v233;
                  result->i16[3] = v233[1];
                  result->i16[4] = *(v232 - 2);
                  result->i16[5] = *(v232 - 1);
                  result->i16[6] = *v232;
                  result->i16[7] = v232[1];
                  result += 2;
                  v233 = (v233 + v195);
                  v232 = (v232 + v195);
                  --v234;
                }

                while (v234);
                ++v229;
                v231 = (v231 + v193);
                v230 = (v230 + v193);
              }

              while (v229 != v611);
            }

            else if ((v212 | 3) >= v3)
            {
              v235 = 0;
              v236 = v216;
              v237 = v214;
              v238 = v215;
              do
              {
                v239 = 0;
                v240 = v5;
                do
                {
                  result->i16[0] = *(v238 + v239 - 6);
                  result->i16[1] = *(v238 + v239 - 4);
                  result->i16[2] = *(v238 + v239 - 2);
                  result->i16[3] = *(v238 + v239);
                  result->i16[4] = *(v236 + v239 - 4);
                  result->i16[5] = *(v236 + v239 - 2);
                  result->i16[6] = *(v236 + v239);
                  result->i16[7] = *(v236 + v239 + 2);
                  result[1].i16[0] = *(v237 + v239);
                  result[1].i16[1] = *(v237 + v239 + 2);
                  result[1].i16[2] = *(v237 + v239 + 4);
                  result[1].i16[3] = *(v237 + v239 + 6);
                  result += 2;
                  v239 -= v194;
                  --v240;
                }

                while (v240);
                ++v235;
                v238 += v193;
                v237 += v193;
                v236 = (v236 + v193);
              }

              while (v235 != v611);
            }

            else
            {
              v218 = 0;
              v219 = v214;
              v220 = v206;
              v221 = v213;
              v222 = v215;
              do
              {
                v223 = 0;
                v224 = v5;
                do
                {
                  result->i16[0] = *(v222 + v223 - 6);
                  result->i16[1] = *(v222 + v223 - 4);
                  result->i16[2] = *(v222 + v223 - 2);
                  result->i16[3] = *(v222 + v223);
                  result->i16[4] = *(v220 + v223 - 6);
                  result->i16[5] = *(v220 + v223 - 4);
                  result->i16[6] = *(v220 + v223 - 2);
                  result->i16[7] = *(v220 + v223);
                  result[1].i16[0] = *(v219 + v223);
                  result[1].i16[1] = *(v219 + v223 + 2);
                  result[1].i16[2] = *(v219 + v223 + 4);
                  result[1].i16[3] = *(v219 + v223 + 6);
                  result[1].i16[4] = *(v221 + v223);
                  result[1].i16[5] = *(v221 + v223 + 2);
                  result[1].i16[6] = *(v221 + v223 + 4);
                  result[1].i16[7] = *(v221 + v223 + 6);
                  result += 2;
                  v223 -= v194;
                  --v224;
                }

                while (v224);
                ++v218;
                v222 += v193;
                v221 += v193;
                v220 += v193;
                v219 += v193;
              }

              while (v218 != v611);
            }

            v212 += 4;
            v217 += v188;
            v216 = (v216 + v188);
            v215 += v188;
            v214 += v188;
            v213 += v188;
            v206 += v188;
          }

          while (v212 < v3);
          v205 = v604 + 4;
          v211 = v609 + 4;
          v191 += 8;
          v210 += 8;
          v209 += 8;
          v208 += 8;
          v207 += 8;
          v206 = v600 + 8;
        }

        while (v604 + 4 < v594);
        v241 = v544;
        v4 = v580;
        v183 = v555;
        v204 = v547;
        if (!v3)
        {
          goto LABEL_186;
        }
      }

      v242 = __OFSUB__(v4, v241);
      v243 = v4 - v241;
      if (!((v243 < 0) ^ v242 | (v243 == 0)) && !v551)
      {
        v244 = 0;
        v245 = 0;
        v246 = v211 + v539;
        v247 = v211 + v534;
        v248 = v211 + v530;
        v249 = v211 + v526;
        do
        {
          v250 = 0;
          v251 = v244;
          do
          {
            v252 = v5;
            v253 = v251;
            do
            {
              if (v243 > 3)
              {
                if (v243 > 5)
                {
                  if (v243 != 6)
                  {
                    if (v243 != 7)
                    {
                      goto LABEL_250;
                    }

                    result->i16[6] = *(v249 + v253);
                  }

                  result->i16[5] = *(v249 + v253 - 2);
LABEL_245:
                  result->i16[4] = *(v249 + v253 - 4);
                }

                else if (v243 != 4)
                {
                  goto LABEL_245;
                }

                result->i16[3] = *(v249 + v253 - 6);
LABEL_247:
                result->i16[2] = *(v249 + v253 - 8);
LABEL_248:
                result->i16[1] = *(v249 + v253 - 10);
LABEL_249:
                result->i16[0] = *(v249 + v253 - 12);
                goto LABEL_250;
              }

              switch(v243)
              {
                case 1:
                  goto LABEL_249;
                case 2:
                  goto LABEL_248;
                case 3:
                  goto LABEL_247;
              }

LABEL_250:
              if ((v245 | 1) >= v3)
              {
                goto LABEL_268;
              }

              if (v243 > 3)
              {
                if (v243 > 5)
                {
                  if (v243 != 6)
                  {
                    if (v243 != 7)
                    {
                      goto LABEL_268;
                    }

                    result[1].i16[2] = *(v248 + v253);
                  }

                  result[1].i16[1] = *(v248 + v253 - 2);
LABEL_263:
                  result[1].i16[0] = *(v248 + v253 - 4);
                }

                else if (v243 != 4)
                {
                  goto LABEL_263;
                }

                result->i16[7] = *(v248 + v253 - 6);
LABEL_265:
                result->i16[6] = *(v248 + v253 - 8);
LABEL_266:
                result->i16[5] = *(v248 + v253 - 10);
LABEL_267:
                result->i16[4] = *(v248 + v253 - 12);
                goto LABEL_268;
              }

              switch(v243)
              {
                case 1:
                  goto LABEL_267;
                case 2:
                  goto LABEL_266;
                case 3:
                  goto LABEL_265;
              }

LABEL_268:
              if ((v245 | 2) >= v3)
              {
                goto LABEL_286;
              }

              if (v243 > 3)
              {
                if (v243 > 5)
                {
                  if (v243 != 6)
                  {
                    if (v243 != 7)
                    {
                      goto LABEL_286;
                    }

                    result[1].i16[6] = *(v247 + v253);
                  }

                  result[1].i16[5] = *(v247 + v253 - 2);
LABEL_281:
                  result[1].i16[4] = *(v247 + v253 - 4);
                }

                else if (v243 != 4)
                {
                  goto LABEL_281;
                }

                result[1].i16[3] = *(v247 + v253 - 6);
LABEL_283:
                result[1].i16[2] = *(v247 + v253 - 8);
LABEL_284:
                result[1].i16[1] = *(v247 + v253 - 10);
LABEL_285:
                result[1].i16[0] = *(v247 + v253 - 12);
                goto LABEL_286;
              }

              switch(v243)
              {
                case 1:
                  goto LABEL_285;
                case 2:
                  goto LABEL_284;
                case 3:
                  goto LABEL_283;
              }

LABEL_286:
              if ((v245 | 3) < v3)
              {
                if (v243 <= 3)
                {
                  switch(v243)
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
                  if (v243 <= 5)
                  {
                    if (v243 != 4)
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_228;
                  }

                  if (v243 == 6)
                  {
                    goto LABEL_226;
                  }

                  if (v243 == 7)
                  {
                    result[2].i16[2] = *(v246 + v253);
LABEL_226:
                    result[2].i16[1] = *(v246 + v253 - 2);
LABEL_227:
                    result[2].i16[0] = *(v246 + v253 - 4);
LABEL_228:
                    result[1].i16[7] = *(v246 + v253 - 6);
LABEL_229:
                    result[1].i16[6] = *(v246 + v253 - 8);
LABEL_230:
                    result[1].i16[5] = *(v246 + v253 - 10);
LABEL_231:
                    result[1].i16[4] = *(v246 + v253 - 12);
                  }
                }
              }

              result += 2;
              v253 -= v194;
              --v252;
            }

            while (v252);
            ++v250;
            v251 -= v192;
          }

          while (v250 != v611);
          v245 += 4;
          v244 += v188;
        }

        while (v245 < v3);
      }

LABEL_186:
      ++v183;
      a2 = &v470[v204];
      v191 = v588 + v565;
      v197 = v583 + v565;
      v198 = v579 + v565;
      v200 = v576 + v565;
      v202 = v573 + v565;
      v203 = v569 + v565;
      v4 = v580;
      if (v183 == v467)
      {
        return result;
      }
    }
  }

  if (v467)
  {
    v7 = 0;
    v8 = v3 == 0;
    v9 = v611 * v5;
    v10 = 2 * v4;
    if (!v611)
    {
      v8 = 1;
    }

    v11 = v9 * (v10 + 6) - 2;
    v12 = v9 * (v10 + 4) - 2;
    if (v5)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    v14 = v9 * (v10 + 2) - 2;
    if (v611)
    {
      v15 = v5 == 0;
    }

    else
    {
      v15 = 1;
    }

    v446 = v15;
    v447 = v13;
    v431 = 14 * v9 - 2;
    v430 = 12 * v9 - 2;
    v429 = 10 * v9 - 2;
    v428 = v9 * (v10 + 14) - 2;
    v426 = v9 * (v10 + 10) - 2;
    v427 = v9 * (v10 + 12) - 2;
    v425 = v9 * (4 * v4 + 14) - 2;
    v424 = v9 * (4 * v4 + 12) - 2;
    v422 = v9 * (6 * v4 + 14) - 2;
    v423 = v9 * (4 * v4 + 10) - 2;
    v420 = v9 * (6 * v4 + 10) - 2;
    v421 = v9 * (6 * v4 + 12) - 2;
    v16 = -v5;
    v17 = -2 * v5;
    v449 = v4 * v3 * v9;
    v448 = 2 * v9 * v3 * v4;
    v472 = v4 - 3;
    v444 = v611 * v5 * (2 * v4 + 8) - 2;
    v445 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = a2 + v444;
    v442 = v12;
    v443 = v11;
    v19 = a2 + v11;
    v20 = a2 + v12;
    v440 = v9 * (4 * v4 + 8) - 2;
    v441 = v14;
    v21 = a2 + v14;
    v22 = a2 + v440;
    v438 = v9 * (4 * v4 + 4) - 2;
    v439 = v9 * (4 * v4 + 6) - 2;
    v23 = a2 + v439;
    v24 = a2 + v438;
    v436 = v9 * (6 * v4 + 8) - 2;
    v437 = v9 * ((4 * v4) | 2) - 2;
    v25 = a2 + v437;
    v26 = a2 + v436;
    v434 = v9 * (6 * v4 + 4) - 2;
    v435 = v9 * (6 * v4 + 6) - 2;
    v27 = a2 + v435;
    v28 = a2 + v434;
    v432 = 6 * v9 - 2;
    v433 = v9 * (6 * v4 + 2) - 2;
    v29 = a2 + v433;
    v417 = 8 * v9 - 2;
    v418 = 2 * v9 - 2;
    v30 = a2 + v417;
    v31 = a2 + v432;
    v419 = 4 * v9 - 2;
    v32 = a2 + v419;
    v33 = a2 + v418;
    v473 = 8 * v9;
    v533 = 8 * v9 * v4;
    while (1)
    {
      v468 = a2;
      v465 = v18;
      v466 = v7;
      v463 = v20;
      v464 = v19;
      v461 = v22;
      v462 = v21;
      v459 = v24;
      v460 = v23;
      v457 = v26;
      v458 = v25;
      v455 = v28;
      v456 = v27;
      v453 = v30;
      v454 = v29;
      v451 = v32;
      v452 = v31;
      v450 = v33;
      if (v4 >= 4)
      {
        if (v447)
        {
          goto LABEL_13;
        }

        v34 = 0;
        v35 = v33;
        v36 = v30;
        v37 = a2;
LABEL_18:
        v524 = v34;
        v38 = 0;
        v521 = v35;
        v518 = v32;
        v515 = v31;
        v512 = v36;
        v509 = v29;
        v506 = v28;
        v504 = v27;
        v501 = v26;
        v498 = v25;
        v492 = v23;
        v495 = v24;
        v39 = v24;
        v40 = v23;
        v486 = v21;
        v489 = v22;
        v41 = v21;
        v480 = v19;
        v483 = v20;
        v42 = v20;
        v43 = v19;
        v478 = v18;
LABEL_20:
        v44 = 0;
        v45 = v38 | 1;
        v46 = v38 | 2;
        v606 = v38;
        v47 = v38 | 3;
        v601 = v35;
        v597 = v32;
        v591 = v31;
        v585 = v36;
        v581 = v29;
        v577 = v28;
        v574 = v27;
        v48 = v27;
        v571 = v26;
        v49 = v26;
        v567 = v25;
        v50 = v25;
        v563 = v39;
        v51 = v39;
        v558 = v40;
        v52 = v18;
        v53 = v40;
        v54 = v22;
        v549 = v41;
        v55 = v41;
        v56 = v42;
        v542 = v43;
        v57 = v43;
        v537 = v52;
        v58 = v52;
LABEL_22:
        v59 = 0;
        while (1)
        {
          LOWORD(v60) = *(v35 + 2 * v59);
          WORD1(v60) = *(v32 + 2 * v59);
          WORD2(v60) = *(v31 + 2 * v59);
          HIWORD(v60) = *(v36 + 2 * v59);
          result->i64[0] = v60;
          if (v45 < v3)
          {
            LOWORD(v61) = *(v55 + 2 * v59);
            WORD1(v61) = *(v56 + 2 * v59);
            WORD2(v61) = *(v57 + 2 * v59);
            HIWORD(v61) = *(v58 + 2 * v59);
            result->i64[1] = v61;
            if (v46 >= v3)
            {
LABEL_26:
              if (v47 < v3)
              {
                goto LABEL_30;
              }

              goto LABEL_23;
            }
          }

          else if (v46 >= v3)
          {
            goto LABEL_26;
          }

          LOWORD(v62) = *(v50 + 2 * v59);
          WORD1(v62) = *(v51 + 2 * v59);
          WORD2(v62) = *(v53 + 2 * v59);
          HIWORD(v62) = *(v54 + 2 * v59);
          result[1].i64[0] = v62;
          if (v47 < v3)
          {
LABEL_30:
            LOWORD(v63) = *(v29 + 2 * v59);
            WORD1(v63) = *(v28 + 2 * v59);
            WORD2(v63) = *(v48 + 2 * v59);
            HIWORD(v63) = *(v49 + 2 * v59);
            result[1].i64[1] = v63;
          }

LABEL_23:
          result += 2;
          if (v16 == --v59)
          {
            ++v44;
            v58 += v17;
            v57 += v17;
            v56 += v17;
            v55 += v17;
            v54 += v17;
            v53 += v17;
            v51 += v17;
            v50 += v17;
            v49 += v17;
            v48 += v17;
            v28 += v17;
            v29 += v17;
            v36 += v17;
            v31 += v17;
            v32 += v17;
            v35 += v17;
            if (v44 != v611)
            {
              goto LABEL_22;
            }

            v38 = v606 + 4;
            v18 = v537 + v533;
            v43 = v542 + v533;
            v42 += v533;
            v41 = v549 + v533;
            v22 += v533;
            v40 = v558 + v533;
            v39 = v563 + v533;
            v25 = v567 + v533;
            v26 = v571 + v533;
            v27 = v574 + v533;
            v28 = v577 + v533;
            v29 = v581 + v533;
            v36 = v585 + v533;
            v31 = v591 + v533;
            v32 = v597 + v533;
            v35 = v601 + v533;
            if (v606 + 4 < v3)
            {
              goto LABEL_20;
            }

            v34 = v524 + 4;
            v37 += v473;
            v18 = v478 + v473;
            v19 = v480 + v473;
            v20 = v483 + v473;
            v21 = v486 + v473;
            v22 = v489 + v473;
            v23 = v492 + v473;
            v24 = v495 + v473;
            v25 = v498 + v473;
            v26 = v501 + v473;
            v27 = v504 + v473;
            v28 = v506 + v473;
            v29 = v509 + v473;
            v36 = v512 + v473;
            v31 = v515 + v473;
            v32 = v518 + v473;
            v35 = v521 + v473;
            if (v524 + 4 < v472)
            {
              goto LABEL_18;
            }

            v64 = v445;
            v4 = v580;
            if (v3)
            {
              goto LABEL_34;
            }

            goto LABEL_13;
          }
        }
      }

      v64 = 0;
      v37 = a2;
      if (!v3)
      {
        goto LABEL_13;
      }

LABEL_34:
      v65 = v4 - v64;
      if (v4 > v64 && !v446)
      {
        break;
      }

LABEL_13:
      a2 = &v468[v449];
      v7 = v466 + 1;
      v18 = v465 + v448;
      v19 = v464 + v448;
      v20 = v463 + v448;
      v21 = v462 + v448;
      v22 = v461 + v448;
      v23 = v460 + v448;
      v24 = v459 + v448;
      v25 = v458 + v448;
      v26 = v457 + v448;
      v27 = v456 + v448;
      v28 = v455 + v448;
      v29 = v454 + v448;
      v30 = v453 + v448;
      v31 = v452 + v448;
      v32 = v451 + v448;
      v33 = v450 + v448;
      v4 = v580;
      if (v466 + 1 == v467)
      {
        return result;
      }
    }

    v66 = 0;
    v67 = &v37[v431];
    v68 = &v37[v430];
    v564 = &v37[v429];
    v559 = &v37[v417];
    v554 = &v37[v432];
    v550 = &v37[v419];
    v546 = &v37[v428];
    v543 = &v37[v427];
    v69 = &v37[v426];
    v70 = &v37[v444];
    v71 = &v37[v443];
    v72 = &v37[v442];
    v73 = &v37[v441];
    v74 = &v37[v425];
    v75 = &v37[v424];
    v76 = &v37[v423];
    v77 = &v37[v440];
    v78 = &v37[v439];
    v79 = &v37[v438];
    v80 = &v37[v437];
    v81 = &v37[v422];
    v82 = &v37[v421];
    v83 = &v37[v420];
    v84 = &v37[v436];
    v85 = &v37[v435];
    v86 = &v37[v434];
    v87 = &v37[v433];
    v88 = &v37[v418];
LABEL_38:
    v529 = v68;
    v538 = v67;
    v568 = 0;
    v89 = v66 | 1;
    v90 = v66 | 2;
    v525 = v66;
    v91 = v66 | 3;
    v92 = v86;
    v474 = v88;
    v475 = v87;
    v93 = v88;
    v94 = v85;
    v95 = v87;
    v96 = v82;
    v476 = v92;
    v477 = v94;
    v97 = v92;
    v98 = v81;
    v99 = v94;
    v479 = v84;
    v481 = v83;
    v607 = v83;
    v484 = v96;
    v487 = v98;
    v598 = v96;
    v578 = v98;
    v490 = v80;
    v493 = v79;
    v100 = v71;
    v496 = v78;
    v101 = v78;
    v499 = v77;
    v502 = v76;
    v602 = v76;
    v592 = v75;
    v507 = v74;
    v575 = v74;
    v510 = v73;
    v513 = v72;
    v516 = v100;
    v519 = v70;
    v522 = v69;
    v586 = v543;
    v572 = v546;
    v102 = v550;
    v103 = v554;
    v104 = v559;
    v105 = v564;
    v106 = v529;
    v582 = v538;
LABEL_40:
    v107 = 0;
    while (v65 <= 3)
    {
      switch(v65)
      {
        case 1:
          goto LABEL_64;
        case 2:
          goto LABEL_63;
        case 3:
          goto LABEL_62;
      }

LABEL_65:
      if (v89 >= v3)
      {
        goto LABEL_83;
      }

      if (v65 > 3)
      {
        if (v65 > 5)
        {
          if (v65 != 6)
          {
            if (v65 != 7)
            {
              goto LABEL_83;
            }

            result[1].i16[2] = *&v572[2 * v107];
          }

          result[1].i16[1] = *&v586[2 * v107];
LABEL_78:
          result[1].i16[0] = *&v69[2 * v107];
        }

        else if (v65 != 4)
        {
          goto LABEL_78;
        }

        result->i16[7] = *&v70[2 * v107];
LABEL_80:
        result->i16[6] = *&v100[2 * v107];
LABEL_81:
        result->i16[5] = *&v72[2 * v107];
LABEL_82:
        result->i16[4] = *&v73[2 * v107];
        goto LABEL_83;
      }

      switch(v65)
      {
        case 1:
          goto LABEL_82;
        case 2:
          goto LABEL_81;
        case 3:
          goto LABEL_80;
      }

LABEL_83:
      if (v90 >= v3)
      {
        goto LABEL_101;
      }

      if (v65 > 3)
      {
        if (v65 > 5)
        {
          if (v65 != 6)
          {
            if (v65 != 7)
            {
              goto LABEL_101;
            }

            result[1].i16[6] = *&v575[2 * v107];
          }

          result[1].i16[5] = *&v592[2 * v107];
LABEL_96:
          result[1].i16[4] = *&v602[2 * v107];
        }

        else if (v65 != 4)
        {
          goto LABEL_96;
        }

        result[1].i16[3] = *&v77[2 * v107];
LABEL_98:
        result[1].i16[2] = *&v101[2 * v107];
LABEL_99:
        result[1].i16[1] = *&v79[2 * v107];
LABEL_100:
        result[1].i16[0] = *&v80[2 * v107];
        goto LABEL_101;
      }

      switch(v65)
      {
        case 1:
          goto LABEL_100;
        case 2:
          goto LABEL_99;
        case 3:
          goto LABEL_98;
      }

LABEL_101:
      if (v91 >= v3)
      {
        goto LABEL_47;
      }

      if (v65 > 3)
      {
        if (v65 > 5)
        {
          if (v65 != 6)
          {
            if (v65 != 7)
            {
              goto LABEL_47;
            }

            result[2].i16[2] = *&v578[2 * v107];
          }

          result[2].i16[1] = *&v598[2 * v107];
LABEL_42:
          result[2].i16[0] = *&v607[2 * v107];
        }

        else if (v65 != 4)
        {
          goto LABEL_42;
        }

        result[1].i16[7] = *&v84[2 * v107];
LABEL_44:
        result[1].i16[6] = *&v99[2 * v107];
        goto LABEL_45;
      }

      if (v65 == 1)
      {
        goto LABEL_46;
      }

      if (v65 != 2)
      {
        if (v65 != 3)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

LABEL_45:
      result[1].i16[5] = *&v97[2 * v107];
LABEL_46:
      result[1].i16[4] = *&v95[2 * v107];
LABEL_47:
      result += 2;
      if (v16 == --v107)
      {
        v582 += v17;
        v106 += v17;
        v105 += v17;
        v104 += v17;
        v103 += v17;
        v102 += v17;
        v572 += v17;
        v586 += v17;
        v69 += v17;
        v70 += v17;
        v100 += v17;
        v72 += v17;
        v73 += v17;
        v575 += v17;
        v592 += v17;
        v602 += v17;
        v77 += v17;
        v101 += v17;
        v79 += v17;
        v80 += v17;
        v578 += v17;
        v598 += v17;
        v607 += v17;
        v84 += v17;
        v99 += v17;
        v97 += v17;
        v95 += v17;
        v93 += v17;
        if (++v568 == v611)
        {
          v66 = v525 + 4;
          v67 = &v538[v533];
          v68 = &v529[v533];
          v564 += v533;
          v559 += v533;
          v554 += v533;
          v550 += v533;
          v546 += v533;
          v543 += v533;
          v69 = &v522[v533];
          v70 = &v519[v533];
          v71 = &v516[v533];
          v72 = &v513[v533];
          v73 = &v510[v533];
          v74 = &v507[v533];
          v75 += v533;
          v76 = &v502[v533];
          v77 = &v499[v533];
          v78 = &v496[v533];
          v79 = &v493[v533];
          v80 = &v490[v533];
          v81 = &v487[v533];
          v82 = &v484[v533];
          v83 = &v481[v533];
          v84 = &v479[v533];
          v85 = &v477[v533];
          v86 = &v476[v533];
          v87 = &v475[v533];
          v88 = &v474[v533];
          if (v525 + 4 >= v3)
          {
            goto LABEL_13;
          }

          goto LABEL_38;
        }

        goto LABEL_40;
      }
    }

    if (v65 > 5)
    {
      if (v65 != 6)
      {
        if (v65 != 7)
        {
          goto LABEL_65;
        }

        result->i16[6] = *&v582[2 * v107];
      }

      result->i16[5] = *&v106[2 * v107];
    }

    else if (v65 == 4)
    {
      goto LABEL_61;
    }

    result->i16[4] = *&v105[2 * v107];
LABEL_61:
    result->i16[3] = *&v104[2 * v107];
LABEL_62:
    result->i16[2] = *&v103[2 * v107];
LABEL_63:
    result->i16[1] = *&v102[2 * v107];
LABEL_64:
    result->i16[0] = *&v93[2 * v107];
    goto LABEL_65;
  }

  return result;
}