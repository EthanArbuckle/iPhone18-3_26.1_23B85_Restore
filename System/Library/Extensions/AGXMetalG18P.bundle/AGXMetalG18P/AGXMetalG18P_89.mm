uint64_t agxsTwiddle3DAddressCompressed<true,4u,2u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 1) >> 1;
        v26 = (a3 + 3) >> 2;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 2, a10 >> 1, (a12 + 3) >> 2, (a13 + 1) >> 1, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v229 = 0;
      do
      {
        v230 = a9;
        v231 = a2;
        v232 = v47;
        do
        {
          v233 = *v231++;
          *(result + 16 * (v232 + v54)) = v233;
          v232 = (v232 - v31) & v31;
          --v230;
        }

        while (v230);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v229;
      }

      while (v229 != v15);
    }

    return result;
  }

  v260 = result;
  v261 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v266 = 1 << v66;
    v76 = v69 - 1;
    v262 = a10 + a8;
    v264 = a8 >> v66;
    v257 = (v69 - 1 + a10 + a8) >> v66;
    v259 = v66;
    if (a8 >> v66 >= v257)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v280 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v274 = a7 >> v67;
    v278 = (v77 + a9 + a7) >> v67;
    if (result >= v278)
    {
      return result;
    }

    v255 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v276 = v77 & v280;
    v252 = v76 & v262;
    v254 = v76 & a8;
    v86 = v264;
    v248 = a2;
LABEL_92:
    v87 = v86 << v259;
    v88 = v86 - v264;
    v272 = v86 * v255;
    v268 = v86 + 1;
    v64 = v262 >= (v86 + 1) << v259;
    v89 = v266;
    v90 = v266 - v254;
    if (!v64)
    {
      v89 = v252;
      v90 = v15;
    }

    v91 = v88 << v259;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v254;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v270 = (v92 + v91 - v254) * a11;
    v94 = v274;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v280 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v276;
      if (v280 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v261;
      if (v96 == v278)
      {
        v86 = v268;
        v15 = a10;
        if (v268 == v257)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v248[v99 + ((v94 - v274) << v67) - v85] + v270);
      v133 = (v94 + v272) * a12[3] * *(a12 + 9) + v260;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = *v135++;
          *(v133 + 16 * (v136 + v123)) = v137;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v283);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v247 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v138 = a6 >> v19;
    v139 = 1 << v20;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v20 + v19 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v20 = v142;
    }

    v241 = v20;
    if (v138)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v143;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v241 = v21;
    v22 = v20 + v19 - v21;
  }

  v144 = v260;
  v145 = a10;
  v146 = a8;
  v239 = v289;
  if (v289)
  {
    v147 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v22;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    v240 = 1 << v241;
    if (1 << v241 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v241;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v290;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v273 = v287;
    v275 = v153;
    v269 = v287 != 0;
    v271 = v288;
    v267 = v288 != 0;
    if (v290)
    {
      v156 = 0;
      v157 = 0;
      v238 = a7 >> v241;
      v256 = a8 >> v22;
      v281 = v291;
      v282 = v286;
      v279 = v288 | v287;
      v237 = a9 + a7;
      v236 = (v240 - 1) & (a9 + a7);
      v235 = v284;
      v277 = v285;
      v234 = (v240 - 1) & a7;
      v251 = (v147 - 1) & a8;
      v253 = (v147 - 1) & (a10 + a8);
      v250 = v147 - v251;
      v158 = ~(-1 << v153);
      v249 = v151 | v153;
      v263 = v155;
      v243 = 1 << v22;
      v244 = v22;
      v258 = v290;
      do
      {
        v242 = v157;
        v159 = 0;
        v160 = 0;
        v161 = (v156 + v238) << v241;
        v162 = a9;
        if (v237 >= (v156 + v238 + 1) << v241)
        {
          v162 = v240 - v234;
        }

        v163 = 1 << v241;
        if (v237 < (v156 + v238 + 1) << v241)
        {
          v163 = v236;
        }

        v164 = v235 + v156;
        v165 = v156 << v241;
        if (v161 >= a7)
        {
          v166 = v163;
        }

        else
        {
          v166 = v162;
        }

        if (v161 >= a7)
        {
          v167 = 0;
        }

        else
        {
          v167 = v234;
        }

        v245 = &v247[v167 + v165];
        v168 = v145;
        v265 = v166;
        do
        {
          v169 = v277 + v159;
          if (v281)
          {
            v170 = v279;
            if (v279)
            {
              v171 = 0;
              v170 = 0;
              v172 = 1;
              v173 = v267;
              v174 = v269;
              v175 = v273;
              v176 = v271;
              do
              {
                --v175;
                if (v174)
                {
                  v170 |= (v172 & v164) << v171;
                }

                else
                {
                  v175 = 0;
                }

                if (v174)
                {
                  ++v171;
                }

                --v176;
                if (v173)
                {
                  v170 |= (v172 & v169) << v171;
                }

                else
                {
                  v176 = 0;
                }

                if (v173)
                {
                  ++v171;
                }

                v172 *= 2;
                --v171;
                v173 = v176 != 0;
                v174 = v175 != 0;
              }

              while (v176 | v175);
            }
          }

          else
          {
            v170 = v279;
            if (v279)
            {
              v177 = 0;
              v170 = 0;
              v178 = 1;
              v180 = v267;
              v179 = v269;
              v181 = v271;
              v182 = v273;
              do
              {
                --v181;
                if (v180)
                {
                  v170 |= (v178 & v169) << v177;
                }

                else
                {
                  v181 = 0;
                }

                if (v180)
                {
                  ++v177;
                }

                --v182;
                if (v179)
                {
                  v170 |= (v178 & v164) << v177;
                }

                else
                {
                  v182 = 0;
                }

                if (v179)
                {
                  ++v177;
                }

                v178 *= 2;
                --v177;
                v179 = v182 != 0;
                v180 = v181 != 0;
              }

              while (v182 | v181);
            }
          }

          v183 = *(v144 + 4 * ((v170 + v282) | ((v170 + v282) >> 8 << 9)));
          if (v183 < 0)
          {
            v184 = v144 - *(a13 + 3) + ((v183 & 0x1FFFFFFF) << 14);
            result = *a13;
            v185 = a13[2];
            if (result > v185)
            {
              v186 = v159;
              result = get_level_offset_within_tail(result, v185, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v263;
              v166 = v265;
              v159 = v186;
              v147 = v243;
              v22 = v244;
              v14 = a11;
              v146 = a8;
              v168 = a10;
              v144 = v260;
              v184 += result;
            }

            v187 = (v159 + v256) << v22;
            v188 = v250;
            if (a10 + a8 >= (v159 + v256 + 1) << v22)
            {
              v189 = v147;
            }

            else
            {
              v188 = v168;
              v189 = v253;
            }

            if (v187 >= v146)
            {
              v190 = 0;
            }

            else
            {
              v190 = v251;
            }

            if (v187 >= v146)
            {
              v188 = v189;
            }

            if (!v249)
            {
              v209 = 0;
              v193 = 0;
              v200 = 0;
              v216 = 0;
              v154 = v258;
              if (!v188)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v166)
              {
                v223 = 0;
                v224 = (v245 + (v190 + (v159 << v22)) * v14);
                do
                {
                  v225 = v166;
                  v226 = v224;
                  v227 = v209;
                  do
                  {
                    result = v227 + v216;
                    v228 = *v226++;
                    *(v184 + 16 * (v227 + v216)) = v228;
                    v227 = (v227 - v193) & v193;
                    --v225;
                  }

                  while (v225);
                  v216 = (v216 - v200) & v200;
                  v224 = (v224 + v14);
                  ++v223;
                }

                while (v223 != v188);
              }

              goto LABEL_192;
            }

            v191 = v159;
            v192 = 0;
            v193 = 0;
            v194 = 1;
            v195 = v155;
            v196 = v150;
            v197 = v275;
            v198 = v151;
            do
            {
              --v197;
              if (v195)
              {
                v193 |= (v194 & v158) << v192++;
              }

              else
              {
                v197 = 0;
              }

              --v198;
              if (!v196)
              {
                v198 = 0;
              }

              v194 *= 2;
              v192 = (__PAIR64__(v192, v196) - 1) >> 32;
              v196 = v198 != 0;
              v195 = v197 != 0;
            }

            while (v198 | v197);
            v199 = 0;
            v200 = 0;
            v201 = 1;
            v202 = v155;
            v203 = v150;
            v204 = v275;
            v205 = v151;
            do
            {
              --v204;
              v206 = v202;
              if (!v206)
              {
                v204 = 0;
              }

              v207 = v199 + v206;
              --v205;
              if (v203)
              {
                v200 |= (v201 & ~(-1 << v151)) << v207++;
              }

              else
              {
                v205 = 0;
              }

              v201 *= 2;
              v199 = v207 - 1;
              v203 = v205 != 0;
              v202 = v204 != 0;
            }

            while (v205 | v204);
            v208 = 0;
            v209 = 0;
            v210 = 1;
            v211 = v155;
            v212 = v150;
            v213 = v275;
            v214 = v151;
            do
            {
              --v213;
              if (v211)
              {
                v209 |= (v210 & v167) << v208++;
              }

              else
              {
                v213 = 0;
              }

              --v214;
              if (!v212)
              {
                v214 = 0;
              }

              v210 *= 2;
              v208 = (__PAIR64__(v208, v212) - 1) >> 32;
              v212 = v214 != 0;
              v211 = v213 != 0;
            }

            while (v214 | v213);
            v215 = 0;
            v216 = 0;
            v217 = 1;
            v218 = v155;
            LOBYTE(result) = v150;
            v219 = v275;
            v220 = v151;
            do
            {
              --v219;
              v221 = v218;
              if (!v221)
              {
                v219 = 0;
              }

              v222 = v215 + v221;
              --v220;
              if (result)
              {
                v216 |= (v217 & v190) << v222++;
              }

              else
              {
                v220 = 0;
              }

              v217 *= 2;
              v215 = v222 - 1;
              result = v220 != 0;
              v218 = v219 != 0;
            }

            while (v220 | v219);
            v154 = v258;
            v159 = v191;
            v155 = v263;
            v166 = v265;
            if (v188)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v159 = ++v160;
        }

        while (v154 > v160);
        v145 = v168;
        v157 = v242 + 1;
        v156 = (v242 + 1);
        a7 = v261;
      }

      while (v239 > v156);
    }
  }

  return result;
}

uint64_t get_level_offset_within_tail(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, char a8)
{
  v8 = (a5 - 1 + a3) / a5;
  v9 = (a6 - 1 + a4) / a6;
  v10 = 32 - __clz(~(-1 << -__clz(v8 - 1)));
  if (v8 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 < 2)
  {
    v12 = 0;
    v13 = a1 - a2;
    if (a1 > a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 32 - __clz(~(-1 << -__clz(v9 - 1)));
    v13 = a1 - a2;
    if (a1 > a2)
    {
LABEL_6:
      if (a8)
      {
        if (v13 >= 4)
        {
          v19 = v13 & 0xFFFFFFFC;
          v20 = vdup_n_s32(v11);
          v21 = vdup_n_s32(v12);
          v22 = vdupq_n_s64(a7);
          v23 = vadd_s32(vdup_n_s32(a2), 0x100000000);
          v24 = 0uLL;
          v25 = vdupq_n_s64(0x7FuLL);
          v26 = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
          v27 = v13 & 0xFFFFFFFC;
          v28 = 0uLL;
          do
          {
            v29 = vadd_s32(v23, 0x200000002);
            v30 = vadd_s32(vqsub_u32(v21, v23), vqsub_u32(v20, v23));
            v31 = vadd_s32(vqsub_u32(v21, v29), vqsub_u32(v20, v29));
            v32.i64[0] = v30.u32[0];
            v32.i64[1] = v30.u32[1];
            v33 = v32;
            v32.i64[0] = v31.u32[0];
            v32.i64[1] = v31.u32[1];
            v24 = vaddq_s64(vandq_s8(vaddq_s64(vshlq_u64(v22, v33), v25), v26), v24);
            v28 = vaddq_s64(vandq_s8(vaddq_s64(vshlq_u64(v22, v32), v25), v26), v28);
            v23 = vadd_s32(v23, 0x400000004);
            v27 -= 4;
          }

          while (v27);
          v14 = vaddvq_s64(vaddq_s64(v28, v24));
          if (v13 == v19)
          {
            return v14;
          }

          a2 += v19;
        }

        else
        {
          v14 = 0;
        }

        do
        {
          v34 = v11 - a2;
          if (v11 < a2)
          {
            v34 = 0;
          }

          v35 = v12 - a2;
          if (v12 < a2)
          {
            v35 = 0;
          }

          v14 += ((a7 << (v35 + v34)) + 127) & 0xFFFFFFFFFFFFFF80;
          ++a2;
        }

        while (a1 != a2);
        return v14;
      }

      v14 = 0;
      while (1)
      {
        v16 = a3 >> a2;
        if (!(a3 >> a2))
        {
          goto LABEL_15;
        }

        v17 = (a5 - 1 + v16) / a5;
        if (v17 >= 2)
        {
          break;
        }

        LOBYTE(v16) = 0;
        v15 = a4 >> a2;
        if (a4 >> a2)
        {
LABEL_16:
          v18 = (a6 - 1 + v15) / a6;
          if (v18 >= 2)
          {
            v15 = 32 - __clz(~(-1 << -__clz(v18 - 1)));
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

LABEL_11:
        v14 += ((a7 << (v15 + v16)) + 127) & 0x7FFFFFFFFFFFFF80;
        if (a1 == ++a2)
        {
          return v14;
        }
      }

      v16 = 32 - __clz(~(-1 << -__clz(v17 - 1)));
LABEL_15:
      v15 = a4 >> a2;
      if (a4 >> a2)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v20 = a17;
      v21 = a15;
      v22 = a13;
      v23 = a14;
      v24 = a12;
      v26 = a9;
      v34 = a7;
      v30 = result;
      if (a18)
      {
        if (a14)
        {
          v27 = *(a18 + 24);
          do
          {
            v28 = *(a18 + 20) * a11;
            *(a18 + 24) = v27 + v28;
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
            v26 = a9;
            v24 = a12;
            v22 = a13;
            v21 = a15;
            v20 = a17;
            a7 = v34;
            ++a11;
            v18 = (v18 + a16);
            --v23;
          }

          while (v23);
        }
      }

      else if (a14)
      {
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
          v26 = a9;
          v24 = a12;
          v22 = a13;
          v21 = a15;
          v20 = a17;
          a7 = v34;
          ++a11;
          v18 = (v18 + a16);
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v20 = a17;
      v21 = a15;
      v22 = a13;
      v23 = a14;
      v24 = a12;
      v26 = a9;
      v34 = a7;
      v30 = result;
      if (a18)
      {
        if (a14)
        {
          v27 = *(a18 + 24);
          do
          {
            v28 = *(a18 + 20) * a11;
            *(a18 + 24) = v27 + v28;
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
            v26 = a9;
            v24 = a12;
            v22 = a13;
            v21 = a15;
            v20 = a17;
            a7 = v34;
            ++a11;
            v18 = (v18 + a16);
            --v23;
          }

          while (v23);
        }
      }

      else if (a14)
      {
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
          v26 = a9;
          v24 = a12;
          v22 = a13;
          v21 = a15;
          v20 = a17;
          a7 = v34;
          ++a11;
          v18 = (v18 + a16);
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,1u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = result;
  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = a5 > 1;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        --v43;
        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        else
        {
          v43 = 0;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = a5 > 1;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
        result = v25 | v28;
      }

      while (result);
      a2 = v29;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v225 = a9;
        v226 = a2;
        v227 = v47;
        do
        {
          v228 = *v226++;
          *(v13 + 8 * (v227 + v54)) = v228;
          v227 = (v227 - v31) & v31;
          --v225;
        }

        while (v225);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v246 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v256 = a8 >> v66;
    v258 = 1 << v66;
    v76 = v69 - 1;
    v253 = v66;
    v255 = a10 + a8;
    v251 = (v69 - 1 + a10 + a8) >> v66;
    if (a8 >> v66 >= v251)
    {
      return result;
    }

    result = (1 << v67);
    v77 = result - 1;
    v274 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = result >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v265 = a7 >> v67;
    v272 = (result - 1 + a9 + a7) >> v67;
    if (a7 >> v67 >= v272)
    {
      return result;
    }

    v249 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v270 = v77 & v274;
    v268 = result - v85;
    v244 = v76 & v255;
    v247 = v76 & a8;
    v86 = v256;
    v243 = a2;
LABEL_90:
    v87 = v86 << v253;
    v88 = v86 - v256;
    v263 = v86 * v249;
    v259 = v86 + 1;
    v89 = v255 >= (v86 + 1) << v253;
    v90 = v258;
    if (!v89)
    {
      v90 = v244;
    }

    v91 = v258 - v247;
    if (!v89)
    {
      v91 = v15;
    }

    v92 = v88 << v253;
    if (v87 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v87 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v67;
      v97 = v95 + 1;
      v98 = a9;
      if (v274 >= (v95 + 1) << v67)
      {
        v98 = v268;
      }

      v99 = 1 << v67;
      if (v274 < v97 << v67)
      {
        v99 = v270;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v85;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v80 | v84)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_147;
      }

LABEL_101:
      v95 = v97;
      if (v97 == v272)
      {
        v86 = v259;
        v15 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v83;
    v105 = v79;
    v106 = v84;
    v107 = v80;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v84)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v83;
    v112 = v79;
    v113 = v84;
    v114 = v80;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v80)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v83;
    v121 = v79;
    v122 = v84;
    v123 = v80;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v83;
    v128 = v79;
    v129 = v84;
    v130 = v80;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v246;
    if (!v94)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v99)
    {
      v133 = 0;
      v134 = (&v243[v100 + ((v95 - v265) << v67) - v85] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v13;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          v138 = *v136++;
          *(v135 + 8 * (v137 + v125)) = v138;
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v277);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v139 = a6 >> v19;
    v140 = 1 << v20;
    v141 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v141 = 0;
    }

    v142 = v140 >= a5;
    if (v140 < a5)
    {
      v143 = v20 + v19 + v141;
    }

    else
    {
      v143 = *(a12 + 12);
    }

    if (v142)
    {
      LOBYTE(v144) = *(a12 + 13);
    }

    else
    {
      v144 = -v141;
    }

    if (!v139)
    {
      v20 = v143;
    }

    v236 = v20;
    if (v139)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v144;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v236 = v21;
    v22 = v20 + v19 - v21;
  }

  v145 = a10;
  v146 = a8;
  v235 = v283;
  if (v283)
  {
    v147 = 1 << v236;
    v148 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v149 = a6;
    }

    else
    {
      v149 = 1 << v22;
    }

    v150 = 32 - __clz(v149 - 1);
    v151 = v149 > 1;
    if (v149 <= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = v150;
    }

    if (v147 >= a5)
    {
      v153 = a5;
    }

    else
    {
      v153 = 1 << v236;
    }

    v154 = 32 - __clz(v153 - 1);
    v155 = v284;
    v245 = v153 > 1;
    if (v153 <= 1)
    {
      v154 = 0;
    }

    v267 = v281;
    v269 = v154;
    v264 = v281 != 0;
    v266 = v282;
    v262 = v282 != 0;
    if (v284)
    {
      v156 = 0;
      v234 = v246 >> v236;
      v257 = a8 >> v22;
      v275 = v282 | v281;
      v276 = v280;
      v273 = v285;
      v233 = a9 + v246;
      v232 = (v147 - 1) & (a9 + v246);
      v230 = v278;
      v271 = v279;
      v231 = (v147 - 1) & v246;
      v229 = v147 - v231;
      v252 = (v148 - 1) & a8;
      v254 = (v148 - 1) & (a10 + a8);
      v250 = v148 - v252;
      v157 = ~(-1 << v154);
      v248 = v152 | v154;
      v260 = v284;
      v240 = v13;
      v238 = 1 << v22;
      v239 = v22;
      do
      {
        v158 = 0;
        v159 = v230 + v156;
        v160 = (v156 + v234) << v236;
        v161 = a9;
        if (v233 >= (v156 + v234 + 1) << v236)
        {
          v161 = v229;
        }

        v162 = 1 << v236;
        if (v233 < (v156 + v234 + 1) << v236)
        {
          v162 = v232;
        }

        v237 = v156;
        if (v160 >= v246)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v246)
        {
          v164 = 0;
        }

        else
        {
          v164 = v231;
        }

        v241 = &v16[v164 + (v156 << v236)];
        do
        {
          v165 = v271 + v158;
          if (v273)
          {
            v166 = v275;
            if (v275)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v264;
              v170 = v262;
              v172 = v266;
              v171 = v267;
              do
              {
                --v171;
                if (v169)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                --v172;
                if (v170)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v170 = v172 != 0;
                v169 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v275;
            if (v275)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v175 = v262;
              v176 = v264;
              v177 = v266;
              v178 = v267;
              do
              {
                --v177;
                if (v175)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                --v178;
                if (v176)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v176 = v178 != 0;
                v175 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v13 + 4 * ((v166 + v276) | ((v166 + v276) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v13 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v151;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v260;
              v151 = v182;
              v148 = v238;
              v22 = v239;
              v13 = v240;
              v14 = a11;
              v146 = a8;
              v145 = a10;
              v180 += result;
            }

            v183 = (v158 + v257) << v22;
            v184 = v250;
            if (a10 + a8 >= (v158 + v257 + 1) << v22)
            {
              v185 = v148;
            }

            else
            {
              v184 = v145;
              v185 = v254;
            }

            if (v183 >= v146)
            {
              v186 = 0;
            }

            else
            {
              v186 = v252;
            }

            if (v183 >= v146)
            {
              v184 = v185;
            }

            if (!v248)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              if (!v184)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v163)
              {
                v218 = 0;
                v219 = (v241 + (v186 + (v158 << v22)) * v14);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    v223 = *v221++;
                    result = v223;
                    *(v180 + 8 * (v222 + v211)) = v223;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v14);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_192;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v245;
            v191 = v151;
            v192 = v269;
            v193 = v152;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v245;
            v198 = v151;
            v199 = v269;
            v200 = v152;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v152)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v245;
            v207 = v151;
            v208 = v269;
            v209 = v152;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v245;
            LOBYTE(result) = v151;
            v214 = v269;
            v215 = v152;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v155 = v260;
            if (v184)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          ++v158;
        }

        while (v155 > v158);
        v156 = v237 + 1;
      }

      while (v235 > (v237 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,4ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v20 = a17;
      v21 = a15;
      v22 = a13;
      v23 = a14;
      v24 = a12;
      v26 = a9;
      v34 = a7;
      v30 = result;
      if (a18)
      {
        if (a14)
        {
          v27 = *(a18 + 24);
          do
          {
            v28 = *(a18 + 20) * a11;
            *(a18 + 24) = v27 + v28;
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,4ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
            v26 = a9;
            v24 = a12;
            v22 = a13;
            v21 = a15;
            v20 = a17;
            a7 = v34;
            ++a11;
            v18 = (v18 + a16);
            --v23;
          }

          while (v23);
        }
      }

      else if (a14)
      {
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,4ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
          v26 = a9;
          v24 = a12;
          v22 = a13;
          v21 = a15;
          v20 = a17;
          a7 = v34;
          ++a11;
          v18 = (v18 + a16);
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,4ul,1u,(TwiddleOrder)1>>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = result;
  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = a5 > 1;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        --v43;
        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        else
        {
          v43 = 0;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = a5 > 1;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
        result = v25 | v28;
      }

      while (result);
      a2 = v29;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v225 = a9;
        v226 = a2;
        v227 = v47;
        do
        {
          v228 = *v226++;
          *(v13 + 4 * (v227 + v54)) = v228;
          v227 = (v227 - v31) & v31;
          --v225;
        }

        while (v225);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v246 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v256 = a8 >> v66;
    v258 = 1 << v66;
    v76 = v69 - 1;
    v253 = v66;
    v255 = a10 + a8;
    v251 = (v69 - 1 + a10 + a8) >> v66;
    if (a8 >> v66 >= v251)
    {
      return result;
    }

    result = (1 << v67);
    v77 = result - 1;
    v274 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = result >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v265 = a7 >> v67;
    v272 = (result - 1 + a9 + a7) >> v67;
    if (a7 >> v67 >= v272)
    {
      return result;
    }

    v249 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v270 = v77 & v274;
    v268 = result - v85;
    v244 = v76 & v255;
    v247 = v76 & a8;
    v86 = v256;
    v243 = a2;
LABEL_90:
    v87 = v86 << v253;
    v88 = v86 - v256;
    v263 = v86 * v249;
    v259 = v86 + 1;
    v89 = v255 >= (v86 + 1) << v253;
    v90 = v258;
    if (!v89)
    {
      v90 = v244;
    }

    v91 = v258 - v247;
    if (!v89)
    {
      v91 = v15;
    }

    v92 = v88 << v253;
    if (v87 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v87 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v67;
      v97 = v95 + 1;
      v98 = a9;
      if (v274 >= (v95 + 1) << v67)
      {
        v98 = v268;
      }

      v99 = 1 << v67;
      if (v274 < v97 << v67)
      {
        v99 = v270;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v85;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v80 | v84)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_147;
      }

LABEL_101:
      v95 = v97;
      if (v97 == v272)
      {
        v86 = v259;
        v15 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v83;
    v105 = v79;
    v106 = v84;
    v107 = v80;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v84)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v83;
    v112 = v79;
    v113 = v84;
    v114 = v80;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v80)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v83;
    v121 = v79;
    v122 = v84;
    v123 = v80;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v83;
    v128 = v79;
    v129 = v84;
    v130 = v80;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v246;
    if (!v94)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v99)
    {
      v133 = 0;
      v134 = (&v243[v100 + ((v95 - v265) << v67) - v85] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v13;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          v138 = *v136++;
          *(v135 + 4 * (v137 + v125)) = v138;
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v277);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v139 = a6 >> v19;
    v140 = 1 << v20;
    v141 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v141 = 0;
    }

    v142 = v140 >= a5;
    if (v140 < a5)
    {
      v143 = v20 + v19 + v141;
    }

    else
    {
      v143 = *(a12 + 12);
    }

    if (v142)
    {
      LOBYTE(v144) = *(a12 + 13);
    }

    else
    {
      v144 = -v141;
    }

    if (!v139)
    {
      v20 = v143;
    }

    v236 = v20;
    if (v139)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v144;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v236 = v21;
    v22 = v20 + v19 - v21;
  }

  v145 = a10;
  v146 = a8;
  v235 = v283;
  if (v283)
  {
    v147 = 1 << v236;
    v148 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v149 = a6;
    }

    else
    {
      v149 = 1 << v22;
    }

    v150 = 32 - __clz(v149 - 1);
    v151 = v149 > 1;
    if (v149 <= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = v150;
    }

    if (v147 >= a5)
    {
      v153 = a5;
    }

    else
    {
      v153 = 1 << v236;
    }

    v154 = 32 - __clz(v153 - 1);
    v155 = v284;
    v245 = v153 > 1;
    if (v153 <= 1)
    {
      v154 = 0;
    }

    v267 = v281;
    v269 = v154;
    v264 = v281 != 0;
    v266 = v282;
    v262 = v282 != 0;
    if (v284)
    {
      v156 = 0;
      v234 = v246 >> v236;
      v257 = a8 >> v22;
      v275 = v282 | v281;
      v276 = v280;
      v273 = v285;
      v233 = a9 + v246;
      v232 = (v147 - 1) & (a9 + v246);
      v230 = v278;
      v271 = v279;
      v231 = (v147 - 1) & v246;
      v229 = v147 - v231;
      v252 = (v148 - 1) & a8;
      v254 = (v148 - 1) & (a10 + a8);
      v250 = v148 - v252;
      v157 = ~(-1 << v154);
      v248 = v152 | v154;
      v260 = v284;
      v240 = v13;
      v238 = 1 << v22;
      v239 = v22;
      do
      {
        v158 = 0;
        v159 = v230 + v156;
        v160 = (v156 + v234) << v236;
        v161 = a9;
        if (v233 >= (v156 + v234 + 1) << v236)
        {
          v161 = v229;
        }

        v162 = 1 << v236;
        if (v233 < (v156 + v234 + 1) << v236)
        {
          v162 = v232;
        }

        v237 = v156;
        if (v160 >= v246)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v246)
        {
          v164 = 0;
        }

        else
        {
          v164 = v231;
        }

        v241 = &v16[v164 + (v156 << v236)];
        do
        {
          v165 = v271 + v158;
          if (v273)
          {
            v166 = v275;
            if (v275)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v264;
              v170 = v262;
              v172 = v266;
              v171 = v267;
              do
              {
                --v171;
                if (v169)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                --v172;
                if (v170)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v170 = v172 != 0;
                v169 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v275;
            if (v275)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v175 = v262;
              v176 = v264;
              v177 = v266;
              v178 = v267;
              do
              {
                --v177;
                if (v175)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                --v178;
                if (v176)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v176 = v178 != 0;
                v175 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v13 + 4 * ((v166 + v276) | ((v166 + v276) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v13 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v151;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v260;
              v151 = v182;
              v148 = v238;
              v22 = v239;
              v13 = v240;
              v14 = a11;
              v146 = a8;
              v145 = a10;
              v180 += result;
            }

            v183 = (v158 + v257) << v22;
            v184 = v250;
            if (a10 + a8 >= (v158 + v257 + 1) << v22)
            {
              v185 = v148;
            }

            else
            {
              v184 = v145;
              v185 = v254;
            }

            if (v183 >= v146)
            {
              v186 = 0;
            }

            else
            {
              v186 = v252;
            }

            if (v183 >= v146)
            {
              v184 = v185;
            }

            if (!v248)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              if (!v184)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v163)
              {
                v218 = 0;
                v219 = (v241 + (v186 + (v158 << v22)) * v14);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    v223 = *v221++;
                    result = v223;
                    *(v180 + 4 * (v222 + v211)) = v223;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v14);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_192;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v245;
            v191 = v151;
            v192 = v269;
            v193 = v152;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v245;
            v198 = v151;
            v199 = v269;
            v200 = v152;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v152)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v245;
            v207 = v151;
            v208 = v269;
            v209 = v152;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v245;
            LOBYTE(result) = v151;
            v214 = v269;
            v215 = v152;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v155 = v260;
            if (v184)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          ++v158;
        }

        while (v155 > v158);
        v156 = v237 + 1;
      }

      while (v235 > (v237 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v20 = a17;
      v21 = a15;
      v22 = a13;
      v23 = a14;
      v24 = a12;
      v26 = a9;
      v34 = a7;
      v30 = result;
      if (a18)
      {
        if (a14)
        {
          v27 = *(a18 + 24);
          do
          {
            v28 = *(a18 + 20) * a11;
            *(a18 + 24) = v27 + v28;
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
            v26 = a9;
            v24 = a12;
            v22 = a13;
            v21 = a15;
            v20 = a17;
            a7 = v34;
            ++a11;
            v18 = (v18 + a16);
            --v23;
          }

          while (v23);
        }
      }

      else if (a14)
      {
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
          v26 = a9;
          v24 = a12;
          v22 = a13;
          v21 = a15;
          v20 = a17;
          a7 = v34;
          ++a11;
          v18 = (v18 + a16);
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = result;
  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = a5 > 1;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        --v43;
        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        else
        {
          v43 = 0;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = a5 > 1;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
        result = v25 | v28;
      }

      while (result);
      a2 = v29;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v225 = a9;
        v226 = a2;
        v227 = v47;
        do
        {
          v228 = *v226++;
          *(v13 + 2 * (v227 + v54)) = v228;
          v227 = (v227 - v31) & v31;
          --v225;
        }

        while (v225);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v246 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v256 = a8 >> v66;
    v258 = 1 << v66;
    v76 = v69 - 1;
    v253 = v66;
    v255 = a10 + a8;
    v251 = (v69 - 1 + a10 + a8) >> v66;
    if (a8 >> v66 >= v251)
    {
      return result;
    }

    result = (1 << v67);
    v77 = result - 1;
    v274 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = result >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v265 = a7 >> v67;
    v272 = (result - 1 + a9 + a7) >> v67;
    if (a7 >> v67 >= v272)
    {
      return result;
    }

    v249 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v270 = v77 & v274;
    v268 = result - v85;
    v244 = v76 & v255;
    v247 = v76 & a8;
    v86 = v256;
    v243 = a2;
LABEL_90:
    v87 = v86 << v253;
    v88 = v86 - v256;
    v263 = v86 * v249;
    v259 = v86 + 1;
    v89 = v255 >= (v86 + 1) << v253;
    v90 = v258;
    if (!v89)
    {
      v90 = v244;
    }

    v91 = v258 - v247;
    if (!v89)
    {
      v91 = v15;
    }

    v92 = v88 << v253;
    if (v87 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v87 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v67;
      v97 = v95 + 1;
      v98 = a9;
      if (v274 >= (v95 + 1) << v67)
      {
        v98 = v268;
      }

      v99 = 1 << v67;
      if (v274 < v97 << v67)
      {
        v99 = v270;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v85;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v80 | v84)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_147;
      }

LABEL_101:
      v95 = v97;
      if (v97 == v272)
      {
        v86 = v259;
        v15 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v83;
    v105 = v79;
    v106 = v84;
    v107 = v80;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v84)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v83;
    v112 = v79;
    v113 = v84;
    v114 = v80;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v80)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v83;
    v121 = v79;
    v122 = v84;
    v123 = v80;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v83;
    v128 = v79;
    v129 = v84;
    v130 = v80;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v246;
    if (!v94)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v99)
    {
      v133 = 0;
      v134 = (&v243[v100 + ((v95 - v265) << v67) - v85] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v13;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          v138 = *v136++;
          *(v135 + 2 * (v137 + v125)) = v138;
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v277);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v139 = a6 >> v19;
    v140 = 1 << v20;
    v141 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v141 = 0;
    }

    v142 = v140 >= a5;
    if (v140 < a5)
    {
      v143 = v20 + v19 + v141;
    }

    else
    {
      v143 = *(a12 + 12);
    }

    if (v142)
    {
      LOBYTE(v144) = *(a12 + 13);
    }

    else
    {
      v144 = -v141;
    }

    if (!v139)
    {
      v20 = v143;
    }

    v236 = v20;
    if (v139)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v144;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v236 = v21;
    v22 = v20 + v19 - v21;
  }

  v145 = a10;
  v146 = a8;
  v235 = v283;
  if (v283)
  {
    v147 = 1 << v236;
    v148 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v149 = a6;
    }

    else
    {
      v149 = 1 << v22;
    }

    v150 = 32 - __clz(v149 - 1);
    v151 = v149 > 1;
    if (v149 <= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = v150;
    }

    if (v147 >= a5)
    {
      v153 = a5;
    }

    else
    {
      v153 = 1 << v236;
    }

    v154 = 32 - __clz(v153 - 1);
    v155 = v284;
    v245 = v153 > 1;
    if (v153 <= 1)
    {
      v154 = 0;
    }

    v267 = v281;
    v269 = v154;
    v264 = v281 != 0;
    v266 = v282;
    v262 = v282 != 0;
    if (v284)
    {
      v156 = 0;
      v234 = v246 >> v236;
      v257 = a8 >> v22;
      v275 = v282 | v281;
      v276 = v280;
      v273 = v285;
      v233 = a9 + v246;
      v232 = (v147 - 1) & (a9 + v246);
      v230 = v278;
      v271 = v279;
      v231 = (v147 - 1) & v246;
      v229 = v147 - v231;
      v252 = (v148 - 1) & a8;
      v254 = (v148 - 1) & (a10 + a8);
      v250 = v148 - v252;
      v157 = ~(-1 << v154);
      v248 = v152 | v154;
      v260 = v284;
      v240 = v13;
      v238 = 1 << v22;
      v239 = v22;
      do
      {
        v158 = 0;
        v159 = v230 + v156;
        v160 = (v156 + v234) << v236;
        v161 = a9;
        if (v233 >= (v156 + v234 + 1) << v236)
        {
          v161 = v229;
        }

        v162 = 1 << v236;
        if (v233 < (v156 + v234 + 1) << v236)
        {
          v162 = v232;
        }

        v237 = v156;
        if (v160 >= v246)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v246)
        {
          v164 = 0;
        }

        else
        {
          v164 = v231;
        }

        v241 = &v16[v164 + (v156 << v236)];
        do
        {
          v165 = v271 + v158;
          if (v273)
          {
            v166 = v275;
            if (v275)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v264;
              v170 = v262;
              v172 = v266;
              v171 = v267;
              do
              {
                --v171;
                if (v169)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                --v172;
                if (v170)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v170 = v172 != 0;
                v169 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v275;
            if (v275)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v175 = v262;
              v176 = v264;
              v177 = v266;
              v178 = v267;
              do
              {
                --v177;
                if (v175)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                --v178;
                if (v176)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v176 = v178 != 0;
                v175 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v13 + 4 * ((v166 + v276) | ((v166 + v276) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v13 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v151;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v260;
              v151 = v182;
              v148 = v238;
              v22 = v239;
              v13 = v240;
              v14 = a11;
              v146 = a8;
              v145 = a10;
              v180 += result;
            }

            v183 = (v158 + v257) << v22;
            v184 = v250;
            if (a10 + a8 >= (v158 + v257 + 1) << v22)
            {
              v185 = v148;
            }

            else
            {
              v184 = v145;
              v185 = v254;
            }

            if (v183 >= v146)
            {
              v186 = 0;
            }

            else
            {
              v186 = v252;
            }

            if (v183 >= v146)
            {
              v184 = v185;
            }

            if (!v248)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              if (!v184)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v163)
              {
                v218 = 0;
                v219 = (v241 + (v186 + (v158 << v22)) * v14);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    v223 = *v221++;
                    result = v223;
                    *(v180 + 2 * (v222 + v211)) = v223;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v14);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_192;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v245;
            v191 = v151;
            v192 = v269;
            v193 = v152;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v245;
            v198 = v151;
            v199 = v269;
            v200 = v152;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v152)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v245;
            v207 = v151;
            v208 = v269;
            v209 = v152;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v245;
            LOBYTE(result) = v151;
            v214 = v269;
            v215 = v152;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v155 = v260;
            if (v184)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          ++v158;
        }

        while (v155 > v158);
        v156 = v237 + 1;
      }

      while (v235 > (v237 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,1ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, char *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v20 = a17;
      v21 = a15;
      v22 = a13;
      v23 = a14;
      v24 = a12;
      v26 = a9;
      v34 = a7;
      v30 = result;
      if (a18)
      {
        if (a14)
        {
          v27 = *(a18 + 24);
          do
          {
            v28 = *(a18 + 20) * a11;
            *(a18 + 24) = v27 + v28;
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,1ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
            v26 = a9;
            v24 = a12;
            v22 = a13;
            v21 = a15;
            v20 = a17;
            a7 = v34;
            ++a11;
            v18 += a16;
            --v23;
          }

          while (v23);
        }
      }

      else if (a14)
      {
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,1ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
          v26 = a9;
          v24 = a12;
          v22 = a13;
          v21 = a15;
          v20 = a17;
          a7 = v34;
          ++a11;
          v18 += a16;
          --v23;
        }

        while (v23);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,1ul,1u,(TwiddleOrder)1>>(uint64_t result, char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a10;
  if (!a12)
  {
    v21 = 32 - __clz(a6 - 1);
    v22 = a6 > 1;
    if (a6 <= 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    v24 = 32 - __clz(a5 - 1);
    v25 = a5 > 1;
    if (a5 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    if (v23 | v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = a5 > 1;
      v30 = a6 > 1;
      v31 = 1;
      v32 = v26;
      v33 = v23;
      do
      {
        --v32;
        if (v29)
        {
          v28 |= (v31 & ~(-1 << v26)) << v27++;
        }

        else
        {
          v32 = 0;
        }

        if (v30)
        {
          --v33;
        }

        else
        {
          v33 = 0;
        }

        v31 *= 2;
        v27 = (__PAIR64__(v27, v30) - 1) >> 32;
        v30 = v33 != 0;
        v29 = v32 != 0;
      }

      while (v33 | v32);
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v37 = v25;
      v38 = v22;
      v39 = v26;
      v40 = v23;
      do
      {
        --v39;
        v41 = v37;
        if (!v41)
        {
          v39 = 0;
        }

        v42 = v34 + v41;
        if (v38)
        {
          --v40;
        }

        else
        {
          v40 = 0;
        }

        if (v38)
        {
          v35 |= (v36 & ~(-1 << v23)) << v42++;
        }

        v36 *= 2;
        v34 = v42 - 1;
        v38 = v40 != 0;
        v37 = v39 != 0;
      }

      while (v40 | v39);
      v43 = 0;
      v44 = 0;
      v45 = v25;
      v46 = v22;
      v47 = 1;
      v48 = v26;
      v49 = v23;
      do
      {
        --v48;
        if (v45)
        {
          v44 |= (v47 & a7) << v43++;
        }

        else
        {
          v48 = 0;
        }

        --v49;
        if (!v46)
        {
          v49 = 0;
        }

        v47 *= 2;
        v43 = (__PAIR64__(v43, v46) - 1) >> 32;
        v46 = v49 != 0;
        v45 = v48 != 0;
      }

      while (v49 | v48);
      v50 = 0;
      v51 = 0;
      v52 = 1;
      do
      {
        --v26;
        v53 = v25;
        if (!v53)
        {
          v26 = 0;
        }

        v54 = v50 + v53;
        --v23;
        if (v22)
        {
          v51 |= (v52 & a8) << v54;
          v55 = v54 + 1;
        }

        else
        {
          v23 = 0;
          v55 = v54;
        }

        v52 *= 2;
        v50 = v55 - 1;
        v22 = v23 != 0;
        v25 = v26 != 0;
      }

      while (v23 | v26);
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v44 = 0;
      v28 = 0;
      v35 = 0;
      v51 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v222 = a9;
        v223 = a2;
        v224 = v44;
        do
        {
          v225 = *v223++;
          *(v51 + result + v224) = v225;
          v224 = (v224 - v28) & v28;
          --v222;
        }

        while (v222);
        v51 = (v51 - v35) & v35;
        a2 += a11;
      }
    }

    return result;
  }

  v252 = result;
  v14 = a7;
  if (!*(a12 + 20))
  {
    v56 = *(a12 + 13);
    v57 = *(a12 + 12);
    v58 = 1 << v56;
    v59 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v59 = 0;
    }

    v60 = v57 + v56;
    result = v57 + v56 + v59;
    if (a6 >> v56)
    {
      v61 = 1;
    }

    else
    {
      v61 = 1 << v57 >= a5;
    }

    if (v61)
    {
      v62 = *(a12 + 12);
    }

    else
    {
      v62 = v57 + v56 + v59;
    }

    if (v61)
    {
      LOBYTE(v63) = *(a12 + 13);
    }

    else
    {
      v63 = -v59;
    }

    v64 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v64) = 0;
    }

    if (v58 < a6 && a5 >> v57 == 0)
    {
      LOBYTE(v63) = v60 - v64;
    }

    else
    {
      LOBYTE(v64) = v62;
    }

    v66 = 1 << v63;
    v67 = *(a12 + 15);
    v68 = 1 << v67;
    if (v67)
    {
      v69 = v68 > a3;
    }

    else
    {
      v69 = 1;
    }

    v70 = v69 || v68 > a4;
    v71 = (~(-1 << v67) + a3) & (-1 << v67);
    if (v70)
    {
      v72 = a3;
    }

    else
    {
      v72 = v71;
    }

    v256 = 1 << v63;
    v73 = v66 - 1;
    v249 = v63;
    v251 = a10 + a8;
    v253 = a8 >> v63;
    v248 = (v66 - 1 + a10 + a8) >> v63;
    if (a8 >> v63 >= v248)
    {
      return result;
    }

    result = a7 >> v64;
    v74 = (1 << v64) - 1;
    v269 = a9 + a7;
    if (v66 >= a6)
    {
      v66 = a6;
    }

    v75 = 32 - __clz(v66 - 1);
    v76 = v66 > 1;
    v77 = v66 <= 1 ? 0 : v75;
    v78 = 1 << v64 >= a5 ? a5 : 1 << v64;
    v79 = 32 - __clz(v78 - 1);
    v80 = v78 > 1;
    v81 = v78 <= 1 ? 0 : v79;
    v267 = (v74 + a9 + a7) >> v64;
    if (result >= v267)
    {
      return result;
    }

    v246 = (v72 + ~(-1 << v64)) >> v64;
    v82 = v74 & a7;
    v265 = v74 & v269;
    v83 = (1 << v64) - (v74 & a7);
    v242 = v73 & v251;
    v244 = v73 & a8;
    v84 = v253;
    v85 = v82;
    v239 = &a2[-v82];
LABEL_93:
    v86 = v84;
    v87 = v84 << v249;
    v88 = v86 - v253;
    v262 = v86 * v246;
    v258 = v86 + 1;
    v61 = v251 >= (v86 + 1) << v249;
    v89 = v256;
    v90 = v256 - v244;
    if (!v61)
    {
      v89 = v242;
      v90 = v13;
    }

    v91 = v88 << v249;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v244;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v260 = &v239[(v92 + v91 - v244) * a11];
    v94 = a7 >> v64;
    while (1)
    {
      v95 = v94 << v64;
      v96 = v94 + 1;
      if (v269 >= (v94 + 1) << v64)
      {
        v97 = v83;
      }

      else
      {
        v97 = a9;
      }

      v98 = v265;
      if (v269 >= v96 << v64)
      {
        v98 = 1 << v64;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v77 | v81)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_146;
      }

LABEL_102:
      v94 = v96;
      if (v96 == v267)
      {
        v84 = v258;
        v13 = a10;
        if (v258 == v248)
        {
          return result;
        }

        goto LABEL_93;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v80;
    v104 = v76;
    v105 = v81;
    v106 = v77;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v81)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v80;
    v111 = v76;
    v112 = v81;
    v113 = v77;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      --v113;
      if (v111)
      {
        v108 |= (v109 & ~(-1 << v77)) << v114++;
      }

      else
      {
        v113 = 0;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v80;
    v119 = v76;
    v120 = v81;
    v121 = v77;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v80;
    v126 = v76;
    v127 = v81;
    v128 = v77;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_102;
    }

LABEL_146:
    if (v98)
    {
      v131 = 0;
      v132 = &v260[v99 + ((v94 - (a7 >> v64)) << v64)];
      v133 = (v94 + v262) * a12[3] * *(a12 + 9) + v252;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = *v135++;
          *(v133 + v123 + v136) = v137;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 += a11;
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_102;
  }

  v230 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v272);
  v17 = *(a12 + 13);
  v18 = *(a12 + 12);
  if (1 << v17 >= a6 || a5 >> v18)
  {
    v138 = a6 >> v17;
    v139 = 1 << v18;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v18 + v17 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v18 = v142;
    }

    v232 = v18;
    if (v138)
    {
      v20 = *(a12 + 13);
    }

    else
    {
      v20 = v143;
    }
  }

  else
  {
    v19 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v19) = 0;
    }

    v232 = v19;
    v20 = v18 + v17 - v19;
  }

  v144 = v252;
  v145 = a10;
  v146 = a8;
  v229 = v278;
  if (v278)
  {
    v147 = 1 << v20;
    if (1 << v20 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v20;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    v231 = 1 << v232;
    if (1 << v232 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v232;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v279;
    v240 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v263 = v276;
    v264 = v153;
    v259 = v276 != 0;
    v261 = v277;
    v257 = v277 != 0;
    if (v279)
    {
      v155 = 0;
      v228 = a7 >> v232;
      v250 = a8 >> v20;
      v271 = v275;
      v270 = v277 | v276;
      v268 = v280;
      v227 = a9 + a7;
      v226 = v273;
      v266 = v274;
      v247 = (v147 - 1) & (a10 + a8);
      v245 = (v147 - 1) & a8;
      v243 = v147 - v245;
      v156 = ~(-1 << v153);
      v241 = v151 | v153;
      v254 = v279;
      v235 = v150;
      v236 = v20;
      v234 = 1 << v20;
      do
      {
        v157 = 0;
        v158 = v226 + v155;
        v159 = (v155 + v228) << v232;
        v160 = a9;
        if (v227 >= (v155 + v228 + 1) << v232)
        {
          v160 = v231 - ((v231 - 1) & a7);
        }

        v161 = 1 << v232;
        if (v227 < (v155 + v228 + 1) << v232)
        {
          v161 = (v231 - 1) & (a9 + a7);
        }

        v233 = v155;
        if (v159 >= v14)
        {
          v162 = v161;
        }

        else
        {
          v162 = v160;
        }

        if (v159 >= v14)
        {
          v163 = 0;
        }

        else
        {
          v163 = (v231 - 1) & a7;
        }

        v237 = &v230[v163 + (v155 << v232)];
        do
        {
          v164 = v266 + v157;
          if (v268)
          {
            v165 = v270;
            if (v270)
            {
              v166 = 0;
              v165 = 0;
              v167 = 1;
              v168 = v257;
              v169 = v259;
              v170 = v263;
              v171 = v261;
              do
              {
                --v170;
                if (v169)
                {
                  v165 |= (v167 & v158) << v166;
                }

                else
                {
                  v170 = 0;
                }

                if (v169)
                {
                  ++v166;
                }

                --v171;
                if (v168)
                {
                  v165 |= (v167 & v164) << v166;
                }

                else
                {
                  v171 = 0;
                }

                if (v168)
                {
                  ++v166;
                }

                v167 *= 2;
                --v166;
                v168 = v171 != 0;
                v169 = v170 != 0;
              }

              while (v171 | v170);
            }
          }

          else
          {
            v165 = v270;
            if (v270)
            {
              v172 = 0;
              v165 = 0;
              v173 = 1;
              v175 = v257;
              v174 = v259;
              v176 = v261;
              v177 = v263;
              do
              {
                --v176;
                if (v175)
                {
                  v165 |= (v173 & v164) << v172;
                }

                else
                {
                  v176 = 0;
                }

                if (v175)
                {
                  ++v172;
                }

                --v177;
                if (v174)
                {
                  v165 |= (v173 & v158) << v172;
                }

                else
                {
                  v177 = 0;
                }

                if (v174)
                {
                  ++v172;
                }

                v173 *= 2;
                --v172;
                v174 = v177 != 0;
                v175 = v176 != 0;
              }

              while (v177 | v176);
            }
          }

          v178 = *(v144 + 4 * ((v165 + v271) | ((v165 + v271) >> 8 << 9)));
          if (v178 < 0)
          {
            v179 = v144 - *(a13 + 3) + ((v178 & 0x1FFFFFFF) << 14);
            result = *a13;
            v180 = a13[2];
            if (result > v180)
            {
              result = get_level_offset_within_tail(result, v180, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v154 = v254;
              v147 = v234;
              v150 = v235;
              v20 = v236;
              v145 = a10;
              v146 = a8;
              v144 = v252;
              v179 += result;
            }

            v181 = (v157 + v250) << v20;
            v182 = v243;
            if (a10 + a8 >= (v157 + v250 + 1) << v20)
            {
              v183 = v147;
            }

            else
            {
              v182 = v145;
              v183 = v247;
            }

            if (v181 >= v146)
            {
              v184 = 0;
            }

            else
            {
              v184 = v245;
            }

            if (v181 >= v146)
            {
              v182 = v183;
            }

            if (!v241)
            {
              v202 = 0;
              v186 = 0;
              v193 = 0;
              v209 = 0;
              if (!v182)
              {
                goto LABEL_191;
              }

LABEL_263:
              if (v162)
              {
                v216 = 0;
                v217 = &v237[(v184 + (v157 << v20)) * a11];
                do
                {
                  v218 = v162;
                  v219 = v217;
                  result = v202;
                  do
                  {
                    v220 = *v219++;
                    *(v209 + v179 + result) = v220;
                    result = (result - v186) & v186;
                    --v218;
                  }

                  while (v218);
                  v209 = (v209 - v193) & v193;
                  v217 += a11;
                  ++v216;
                }

                while (v216 != v182);
              }

              goto LABEL_191;
            }

            v185 = 0;
            v186 = 0;
            v187 = 1;
            v188 = v240;
            v189 = v150;
            v190 = v264;
            v191 = v151;
            do
            {
              --v190;
              if (v188)
              {
                v186 |= (v187 & v156) << v185++;
              }

              else
              {
                v190 = 0;
              }

              --v191;
              if (!v189)
              {
                v191 = 0;
              }

              v187 *= 2;
              v185 = (__PAIR64__(v185, v189) - 1) >> 32;
              v189 = v191 != 0;
              v188 = v190 != 0;
            }

            while (v191 | v190);
            v192 = 0;
            v193 = 0;
            v194 = 1;
            v195 = v240;
            v196 = v150;
            v197 = v264;
            v198 = v151;
            do
            {
              --v197;
              v199 = v195;
              if (!v199)
              {
                v197 = 0;
              }

              v200 = v192 + v199;
              --v198;
              if (v196)
              {
                v193 |= (v194 & ~(-1 << v151)) << v200++;
              }

              else
              {
                v198 = 0;
              }

              v194 *= 2;
              v192 = v200 - 1;
              v196 = v198 != 0;
              v195 = v197 != 0;
            }

            while (v198 | v197);
            v201 = 0;
            v202 = 0;
            v203 = 1;
            v204 = v240;
            v205 = v150;
            v206 = v264;
            v207 = v151;
            do
            {
              --v206;
              if (v204)
              {
                v202 |= (v203 & v163) << v201++;
              }

              else
              {
                v206 = 0;
              }

              --v207;
              if (!v205)
              {
                v207 = 0;
              }

              v203 *= 2;
              v201 = (__PAIR64__(v201, v205) - 1) >> 32;
              v205 = v207 != 0;
              v204 = v206 != 0;
            }

            while (v207 | v206);
            v208 = 0;
            v209 = 0;
            v210 = 1;
            v211 = v240;
            LOBYTE(result) = v150;
            v212 = v264;
            v213 = v151;
            do
            {
              --v212;
              v214 = v211;
              if (!v214)
              {
                v212 = 0;
              }

              v215 = v208 + v214;
              --v213;
              if (result)
              {
                v209 |= (v210 & v184) << v215++;
              }

              else
              {
                v213 = 0;
              }

              v210 *= 2;
              v208 = v215 - 1;
              result = v213 != 0;
              v211 = v212 != 0;
            }

            while (v213 | v212);
            v154 = v254;
            if (v182)
            {
              goto LABEL_263;
            }
          }

LABEL_191:
          ++v157;
        }

        while (v154 > v157);
        v155 = v233 + 1;
        v14 = a7;
      }

      while (v229 > (v233 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,4u,4u,8ul,(TwiddleOrder)1>(uint64_t result, void *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 3) >> 2;
        v26 = (a3 + 3) >> 2;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 2, a10 >> 2, (a12 + 3) >> 2, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,12u,12u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 11) / 0xCu;
        v26 = (a3 + 11) / 0xCu;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xC, a10 / 0xC, (a12 + 11) / 0xCu, (a13 + 11) / 0xCu, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,12u,10u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 9) / 0xAu;
        v26 = (a3 + 11) / 0xCu;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xC, a10 / 0xA, (a12 + 11) / 0xCu, (a13 + 9) / 0xAu, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,10u,10u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 9) / 0xAu;
        v26 = (a3 + 9) / 0xAu;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 / 0xA, (a12 + 9) / 0xAu, (a13 + 9) / 0xAu, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,10u,8u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v26 = (a3 + 9) / 0xAu;
        v25 = (a4 + 7) >> 3;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 >> 3, (a12 + 9) / 0xAu, (a13 + 7) >> 3, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,10u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 5) / 6u;
        v26 = (a3 + 9) / 0xAu;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 / 6, (a12 + 9) / 0xAu, (a13 + 5) / 6u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,10u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 4) / 5u;
        v26 = (a3 + 9) / 0xAu;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 / 5, (a12 + 9) / 0xAu, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,8u,8u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 7) >> 3;
        v26 = (a3 + 7) >> 3;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 >> 3, (a12 + 7) >> 3, (a13 + 7) >> 3, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,8u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v26 = (a3 + 7) >> 3;
        v25 = (a4 + 5) / 6u;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 / 6, (a12 + 7) >> 3, (a13 + 5) / 6u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,8u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v26 = (a3 + 7) >> 3;
        v25 = (a4 + 4) / 5u;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 / 5, (a12 + 7) >> 3, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,8u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 3) >> 2;
        v26 = (a3 + 7) >> 3;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 >> 2, (a12 + 7) >> 3, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,6u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 5) / 6u;
        v26 = (a3 + 5) / 6u;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 6, a10 / 6, (a12 + 5) / 6u, (a13 + 5) / 6u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,6u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 4) / 5u;
        v26 = (a3 + 5) / 6u;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 6, a10 / 5, (a12 + 5) / 6u, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,5u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 4) / 5u;
        v26 = (a3 + 4) / 5u;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 5, a10 / 5, (a12 + 4) / 5u, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,5u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v26 = (a3 + 4) / 5u;
        v25 = (a4 + 3) >> 2;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 5, a10 >> 2, (a12 + 4) / 5u, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<true,4u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
{
  if (result)
  {
    v18 = a2;
    if (a2)
    {
      v19 = a14;
      if (a14)
      {
        v23 = result;
        v25 = (a4 + 3) >> 2;
        v26 = (a3 + 3) >> 2;
        do
        {
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 2, a10 >> 2, (a12 + 3) >> 2, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v152 = v21;
  v153 = v22;
  v141 = v23;
  v24 = v12;
  v182 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v158 = v14;
  v25 = v14 >> 4;
  v140 = v14 + a10 - 1;
  v142 = v140 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v160 = v24;
  if (*(v24 + 168))
  {
    v28 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 & 0xD00) == 0 || v28 == 768;
  v30 = v28 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v161 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v151 = result;
  if (v25 <= v142)
  {
    v150 = v16 + a9 - 1;
    v139 = v16 >> 4;
    if (v16 >> 4 <= v150 >> 4)
    {
      result = v24;
      v159 = (v20 - 1) >> 4;
      v136 = v20 - 1;
      v143 = (v20 - 1) & 0xF;
      v137 = (v18 - 1) & 0xF;
      v138 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v148 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v147 = v35;
      v135 = 8 * v27 * v26;
      v149 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v158)
        {
          v37 = v158;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v140 < v36)
        {
          v36 = v140;
        }

        v157 = 16 * v25;
        v146 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v137;
        v145 = v39;
        v41 = v39 != 16;
        v42 = v139;
        v43 = v137 + 1;
        if (v25 != v138)
        {
          v43 = 16;
          v40 = v41;
        }

        v144 = v40;
        v155 = v141 + (v37 - v158) * a11;
        v156 = v43;
        v154 = v43;
        do
        {
          v44 = 16 * v42;
          v45 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 16 * v42;
          }

          if (v150 < v45)
          {
            v45 = v150;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v159)
          {
            v49 = v143 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v157 >= v158 && v44 >= v16)
          {
            v51 = v47 != v143;
            if (v42 != v159)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v144;
          }

          if (v151)
          {
            v72 = 0;
            v73 = v135 >> (*(result + 57) != 0);
            v74 = 1;
            if (v73 <= 63)
            {
              if (v73 > 15)
              {
                if (v73 == 16)
                {
                  v74 = 0;
                  v75 = 0;
                  v76 = 64;
                  v72 = 128;
                }

                else
                {
                  v75 = 1;
                  v76 = 0;
                  if (v73 == 32)
                  {
                    v74 = 0;
                    v75 = 0;
                    v72 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v73 == 4)
              {
                v74 = 0;
                v75 = 0;
                v76 = 128;
                v72 = 256;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 8)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v73 <= 255)
            {
              if (v73 == 64)
              {
                v74 = 0;
                v75 = 0;
                v76 = 32;
                v72 = 64;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 128)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v73 == 256)
            {
              v74 = 0;
              v76 = 16;
              v75 = 1;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v72 = 16;
              v75 = 1;
              v76 = 16;
            }

            else
            {
              v75 = 1;
              v76 = 0;
              if (v73 == 1024)
              {
                v76 = 8;
                v72 = 16;
              }
            }

            v125 = (v72 >> 4) - 1;
            if (v74)
            {
              v126 = 0;
              if (v75)
              {
                goto LABEL_150;
              }

LABEL_139:
              v127 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v127 | v126)
              {
                goto LABEL_140;
              }

LABEL_151:
              v134 = 0;
            }

            else
            {
              v126 = 32 - __clz(~(-1 << -__clz(v125)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v127 = 0;
              if (!v126)
              {
                goto LABEL_151;
              }

LABEL_140:
              v128 = 0;
              v129 = 0;
              v130 = v42 & v125;
              v131 = v126 != 0;
              v132 = v127 != 0;
              v133 = 1;
              do
              {
                --v126;
                if (v131)
                {
                  v129 |= (v133 & v130) << v128++;
                }

                else
                {
                  v126 = 0;
                }

                --v127;
                if (v132)
                {
                  v129 |= (v133 & v25 & ((v76 >> 4) - 1)) << v128++;
                }

                else
                {
                  v127 = 0;
                }

                v133 *= 2;
                --v128;
                v132 = v127 != 0;
                v131 = v126 != 0;
              }

              while (v127 | v126);
              v134 = v129 << 10;
              result = v160;
            }

            v59 = v134 + ((v44 / v72 + v157 / v76 * ((v72 + v136) / v72)) << 14);
            goto LABEL_53;
          }

          if (v148)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v147.i8[0];
            v56 = v147.i8[4];
            v58 = v148.i32[0];
            v57 = v148.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v55 = v58 != 0;
              v56 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 10;
          }

          else
          {
            v59 = 0;
          }

LABEL_53:
          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 15;
          if (v61 < 0x20)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 4) - 1)));
          }

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
            if (!v62)
            {
LABEL_78:
              v71 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
            if (!(v65 | v62))
            {
              goto LABEL_78;
            }
          }

          v66 = 0;
          v67 = 0;
          v68 = v62 != 0;
          v69 = v65 != 0;
          v70 = 1;
          do
          {
            --v62;
            if (v68)
            {
              v67 |= (v70 & v42) << v66++;
            }

            else
            {
              v62 = 0;
            }

            --v65;
            if (v69)
            {
              v67 |= (v70 & v25) << v66++;
            }

            else
            {
              v65 = 0;
            }

            v70 *= 2;
            --v66;
            v69 = v65 != 0;
            v68 = v62 != 0;
          }

          while (v65 | v62);
          v71 = 8 * v67;
LABEL_79:
          v77 = (v153 + v71);
          v78 = v155 + 8 * (v46 - v16);
          v79 = (v152 + v59);
          if (v161)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v154 < 0x10)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v78, a11, v82, v77, v49, v156, *(*(result + 208) + 52));
LABEL_87:
              v16 = v149;
              if (v161)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v80 = v48;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v44 = 16 * v42;
            v82 = __dst;
            v48 = v80;
            result = v160;
          }

          else
          {
            v82 = (v152 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v154 < 0x10)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v163 = v82;
          v171 = v49;
          v172 = v156;
          v167 = v146;
          v168 = v46 - v44;
          v164 = v77;
          v165 = v78;
          v166 = a11;
          v169 = v145;
          v170 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v83 = *(*(result + 208) + 52);
          v84 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v174, 128, v82, *v77, v83)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v176, 128, v84, v77[1], v83);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v175, 128, v85, v77[2], v83);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v177, 128, v86, v77[3], v83);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v178, 128, v87, v77[4], v83);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v180, 128, v88, v77[5], v83);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v179, 128, v89, v77[6], v83);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v181, 128, v89 + v90, v77[7], v83);
          v91 = v169;
          v16 = v149;
          if (v169)
          {
            v92 = v170;
            if (v170)
            {
              v93 = 0;
              v94 = v167 << 7;
              v95 = 8 * v168;
              v96 = v174 + v94 + v95;
              v97 = v165;
              v98 = v166;
              v99 = 8 * v170;
              if (8 * v170)
              {
                v100 = (8 * v170 - 1) >> 32 == 0;
              }

              else
              {
                v100 = 0;
              }

              v101 = !v100;
              v103 = v96 < v165 + v166 * (v169 - 1) + 8 * v170 && v165 < &__dst[128 * v169 + 1920 + 128 * v167 + 8 * v170 + v95];
              v104 = v99 & 0x1FFFFFFE0;
              v105 = v101 | (v166 < 0) | v103;
              v106 = &v174[1] + v94 + v95;
              v107 = (v165 + 16);
              v108 = v96;
              v109 = v165;
              do
              {
                v110 = (v97 + v93 * v98);
                v111 = &v96[128 * v93];
                if (v105)
                {
                  v112 = 0;
                }

                else
                {
                  if (v92 < 4)
                  {
                    v116 = 0;
LABEL_116:
                    v121 = -8 * v92 + v116;
                    v122 = (v109 + v116);
                    v123 = &v108[v116];
                    do
                    {
                      v124 = *v122++;
                      *v123 = v124;
                      v123 += 8;
                      v121 += 8;
                    }

                    while (v121);
                    goto LABEL_104;
                  }

                  v117 = v107;
                  v118 = v106;
                  v119 = v99 & 0x1FFFFFFE0;
                  do
                  {
                    v120 = *v117;
                    *(v118 - 1) = *(v117 - 1);
                    *v118 = v120;
                    v118 += 2;
                    v117 += 2;
                    v119 -= 32;
                  }

                  while (v119);
                  if (v99 == v104)
                  {
                    goto LABEL_104;
                  }

                  v116 = v99 & 0x1FFFFFFE0;
                  if ((v92 & 3) != 0)
                  {
                    goto LABEL_116;
                  }

                  v110 += v104;
                  v111 += v104;
                  v112 = v99 & 0xFFFFFFE0;
                }

                v113 = v112 + 1;
                do
                {
                  v114 = *v110++;
                  *v111++ = v114;
                }

                while (v99 > v113++);
LABEL_104:
                ++v93;
                v106 += 128;
                v107 = (v107 + v98);
                v109 += v98;
                v108 += 128;
              }

              while (v93 != v91);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v174, 128, v163, v164, v171, v172, *(*(v160 + 208) + 52));
          if (v161)
          {
LABEL_26:
            memcpy(v79, v82, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v150 >> 4;
          result = v160;
        }

        while (!v29);
        v29 = v25++ == v142;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t getCompressionCodecConfig(__int16 a1)
{
  v1 = a1;
  result = HIBYTE(a1);
  if (result > 1)
  {
    if (result != 2 && result != 3)
    {
      return 4;
    }
  }

  else if (!result)
  {
    v3 = &qword_2A17A1000;
    {
      v5 = v1;
      v3 = &qword_2A17A1000;
      v1 = v5;
      if (v4)
      {
        getCompressionCodecConfig(AGXTextureCompressionSettings)::losslessCodecConfig = 1;
        v3 = &qword_2A17A1000;
        v1 = v5;
      }
    }

    if ((((v1 & 8) == 0) & v3[183]) != 0)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v263 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v200 = a8;
  v17 = a8 >> 4;
  v197 = a8 + a10 - 1;
  v199 = v197 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v217 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v199)
  {
    v208 = a7 + a9 - 1;
    if (a7 >> 4 <= v208 >> 4)
    {
      v216 = (a5 - 1) >> 4;
      v194 = a5 - 1;
      v201 = (a5 - 1) & 0xF;
      v195 = (a6 - 1) & 0xF;
      v196 = (a6 - 1) >> 4;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v26 = vcgt_u32(v25, 0x1F0000001FLL);
      *&v27 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *&v26);
      v206 = v27;
      v207 = v27 | DWORD1(v27);
      v205 = v26;
      v193 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        v29 = v200;
        if (16 * v17 <= v200)
        {
          v30 = v200;
        }

        else
        {
          v30 = 16 * v17;
        }

        if (v197 < v28)
        {
          v28 = v197;
        }

        v215 = 16 * v17;
        v204 = v30 - 16 * v17;
        v31 = v28 - v30;
        v32 = v31 + 1;
        v33 = v31 != v195;
        v203 = v32;
        v34 = v32 != 16;
        v35 = a7 >> 4;
        v36 = v195 + 1;
        if (v17 != v196)
        {
          v36 = 16;
          v33 = v34;
        }

        v202 = v33;
        v213 = a3 + (v30 - v200) * a11;
        v214 = v36;
        v212 = v36;
        do
        {
          v47 = 16 * v35;
          v48 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 16 * v35;
          }

          if (v208 < v48)
          {
            v48 = a7 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v48 - v49 + 1;
          if (v35 == v216)
          {
            v52 = v201 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (v215 >= v29 && v47 >= a7)
          {
            v54 = v50 != v201;
            if (v35 != v216)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v202;
          }

          if (isLevelTiled)
          {
            v75 = 0;
            v76 = v193 >> (*(a1 + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 0;
                  v79 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 1;
                  v79 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v78 = 0;
                    v75 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 0;
                v79 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 0;
                v79 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v79 = 16;
              v78 = 1;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v75 = 16;
              v78 = 1;
              v79 = 16;
            }

            else
            {
              v78 = 1;
              v79 = 0;
              if (v76 == 1024)
              {
                v79 = 8;
                v75 = 16;
              }
            }

            v183 = (v75 >> 4) - 1;
            if (v77)
            {
              v184 = 0;
              if (v78)
              {
                goto LABEL_221;
              }

LABEL_210:
              v185 = 32 - __clz(~(-1 << -__clz(((v79 + 15) >> 4) - 1)));
              if (v185 | v184)
              {
                goto LABEL_211;
              }

LABEL_222:
              v192 = 0;
            }

            else
            {
              v184 = 32 - __clz(~(-1 << -__clz(v183)));
              if ((v78 & 1) == 0)
              {
                goto LABEL_210;
              }

LABEL_221:
              v185 = 0;
              if (!v184)
              {
                goto LABEL_222;
              }

LABEL_211:
              v186 = 0;
              v187 = 0;
              v188 = v35 & v183;
              v189 = v184 != 0;
              v190 = v185 != 0;
              v191 = 1;
              do
              {
                --v184;
                if (v189)
                {
                  v187 |= (v191 & v188) << v186++;
                }

                else
                {
                  v184 = 0;
                }

                --v185;
                if (v190)
                {
                  v187 |= (v191 & v17 & ((v79 >> 4) - 1)) << v186++;
                }

                else
                {
                  v185 = 0;
                }

                v191 *= 2;
                --v186;
                v190 = v185 != 0;
                v189 = v184 != 0;
              }

              while (v185 | v184);
              v192 = v187 << 7;
            }

            v62 = v192 + ((v47 / v75 + v215 / v79 * ((v75 + v194) / v75)) << 14);
            goto LABEL_53;
          }

          if (v207)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v205;
            v58 = BYTE4(v205);
            v61 = v206;
            v60 = HIDWORD(v206);
            do
            {
              --v60;
              if (v58)
              {
                v56 |= (v57 & v35) << v55++;
              }

              else
              {
                v60 = 0;
              }

              --v61;
              if (v59)
              {
                v56 |= (v57 & v17) << v55++;
              }

              else
              {
                v61 = 0;
              }

              v57 *= 2;
              --v55;
              v59 = v61 != 0;
              v58 = v60 != 0;
            }

            while (v61 | v60);
            v62 = v56 << 7;
          }

          else
          {
            v62 = 0;
          }

LABEL_53:
          v63 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
          }

          v66 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 15;
          if (v67 < 0x20)
          {
            v68 = 0;
            if (!v65)
            {
LABEL_78:
              v74 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 4) - 1)));
            if (!(v68 | v65))
            {
              goto LABEL_78;
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = v65 != 0;
          v72 = v68 != 0;
          v73 = 1;
          do
          {
            --v65;
            if (v71)
            {
              v70 |= (v73 & v35) << v69++;
            }

            else
            {
              v65 = 0;
            }

            --v68;
            if (v72)
            {
              v70 |= (v73 & v17) << v69++;
            }

            else
            {
              v68 = 0;
            }

            v73 *= 2;
            --v69;
            v72 = v68 != 0;
            v71 = v65 != 0;
          }

          while (v68 | v65);
          v74 = 8 * v70;
LABEL_79:
          v80 = (a4 + v74);
          v81 = (v213 + v49 - a7);
          v82 = (a2 + v62);
          if (v217)
          {
            if (!(v53 & 1 | (v52 < 0x10u) | (v212 < 0x10)))
            {
              v90 = v229;
LABEL_87:
              v91 = *(*(a1 + 208) + 52);
              v92 = a11;
              v93 = v90;
              v94 = (a4 + v74);
              v95 = v214;
              goto LABEL_191;
            }

            v83 = v82[13];
            v229[12] = v82[12];
            v229[13] = v83;
            v84 = v82[15];
            v229[14] = v82[14];
            v230 = v84;
            v85 = v82[9];
            v229[8] = v82[8];
            v229[9] = v85;
            v86 = v82[11];
            v229[10] = v82[10];
            v229[11] = v86;
            v87 = v82[5];
            v229[4] = v82[4];
            v229[5] = v87;
            v88 = v82[7];
            v229[6] = v82[6];
            v229[7] = v88;
            v89 = v82[1];
            v229[0] = *v82;
            v229[1] = v89;
            v27 = v82[2];
            v26 = v82[3];
            v90 = v229;
            v229[2] = v27;
            v229[3] = v26;
          }

          else
          {
            v90 = (a2 + v62);
            if (!(v53 & 1 | (v52 < 0x10u) | (v212 < 0x10)))
            {
              goto LABEL_87;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v219 = v90;
          v227 = v52;
          v228 = v214;
          v223 = v204;
          v224 = v49 - v47;
          v220 = (a4 + v74);
          v221 = v213 + v49 - a7;
          v222 = a11;
          v225 = v203;
          v226 = v51;
          if (v53)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
            if (v217)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v96 = *(a1 + 208);
          v97 = *(v96 + 52);
          v98 = *v80;
          if (*v80)
          {
            if (v98 < 0xF0)
            {
              if (v98 == 31)
              {
                v100 = v90[1];
                v101 = v90[2];
                v102 = v90[3];
                v103 = vuzp2_s16(*v90, v101);
                v231 = vuzp1_s16(*v90, v101);
                v233 = v103;
                *&v27 = vuzp1_s16(v100, v102);
                *&v26 = vuzp2_s16(v100, v102);
                v235 = v27;
                v237 = v26;
                v99 = 32;
              }

              else if (v98 == 96)
              {
                *&v27 = vdup_lane_s8(*v90, 0);
                v231 = v27;
                v233 = v27;
                v235 = v27;
                v237 = v27;
                v99 = 1;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 16, v90, v98, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v231, 16, v90, v98, *(v96 + 52));
              v99 = 16;
            }
          }

          else
          {
            v99 = 0;
            v231 = 0;
            v233 = 0;
            v235 = 0;
            v237 = 0;
          }

          v104 = (v90 + v99);
          v105 = v80[1];
          if (v80[1])
          {
            if (v105 < 0xF0)
            {
              if (v105 == 31)
              {
                v107 = v104[1];
                v108 = v104[2];
                v109 = v104[3];
                v110 = vuzp2_s16(*v104, v108);
                v239 = vuzp1_s16(*v104, v108);
                v241 = v110;
                *&v27 = vuzp1_s16(v107, v109);
                *&v26 = vuzp2_s16(v107, v109);
                v243 = v27;
                v245 = v26;
                v106 = 32;
              }

              else if (v105 == 96)
              {
                *&v27 = vdup_lane_s8(*v104, 0);
                v239 = v27;
                v241 = v27;
                v243 = v27;
                v245 = v27;
                v106 = 1;
              }

              else
              {
                v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v239, 16, v104, v105, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v239, 16, v104, v105, v97);
              v106 = 16;
            }
          }

          else
          {
            v106 = 0;
            v239 = 0;
            v241 = 0;
            v243 = 0;
            v245 = 0;
          }

          v111 = (v104 + v106);
          v112 = v80[2];
          if (v80[2])
          {
            if (v112 < 0xF0)
            {
              if (v112 == 31)
              {
                v114 = v111[1];
                v115 = v111[2];
                v116 = v111[3];
                v117 = vuzp2_s16(*v111, v115);
                v232 = vuzp1_s16(*v111, v115);
                v234 = v117;
                *&v27 = vuzp1_s16(v114, v116);
                *&v26 = vuzp2_s16(v114, v116);
                v236 = v27;
                v238 = v26;
                v113 = 32;
              }

              else if (v112 == 96)
              {
                *&v27 = vdup_lane_s8(*v111, 0);
                v232 = v27;
                v234 = v27;
                v236 = v27;
                v238 = v27;
                v113 = 1;
              }

              else
              {
                v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v232, 16, v111, v112, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v232, 16, v111, v112, v97);
              v113 = 16;
            }
          }

          else
          {
            v113 = 0;
            v232 = 0;
            v234 = 0;
            v236 = 0;
            v238 = 0;
          }

          v118 = (v111 + v113);
          v119 = v80[3];
          if (v80[3])
          {
            if (v119 < 0xF0)
            {
              if (v119 == 31)
              {
                v121 = v118[1];
                v122 = v118[2];
                v123 = v118[3];
                v124 = vuzp2_s16(*v118, v122);
                v240 = vuzp1_s16(*v118, v122);
                v242 = v124;
                *&v27 = vuzp1_s16(v121, v123);
                *&v26 = vuzp2_s16(v121, v123);
                v244 = v27;
                v246 = v26;
                v120 = 32;
              }

              else if (v119 == 96)
              {
                *&v27 = vdup_lane_s8(*v118, 0);
                v240 = v27;
                v242 = v27;
                v244 = v27;
                v246 = v27;
                v120 = 1;
              }

              else
              {
                v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v240, 16, v118, v119, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v240, 16, v118, v119, v97);
              v120 = 16;
            }
          }

          else
          {
            v120 = 0;
            v240 = 0;
            v242 = 0;
            v244 = 0;
            v246 = 0;
          }

          v125 = (v118 + v120);
          v126 = v80[4];
          if (v80[4])
          {
            if (v126 < 0xF0)
            {
              if (v126 == 31)
              {
                v128 = v125[1];
                v129 = v125[2];
                v130 = v125[3];
                v131 = vuzp2_s16(*v125, v129);
                v247 = vuzp1_s16(*v125, v129);
                v249 = v131;
                *&v27 = vuzp1_s16(v128, v130);
                *&v26 = vuzp2_s16(v128, v130);
                v251 = v27;
                v253 = v26;
                v127 = 32;
              }

              else if (v126 == 96)
              {
                *&v27 = vdup_lane_s8(*v125, 0);
                v247 = v27;
                v249 = v27;
                v251 = v27;
                v253 = v27;
                v127 = 1;
              }

              else
              {
                v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v247, 16, v125, v126, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v247, 16, v125, v126, v97);
              v127 = 16;
            }
          }

          else
          {
            v127 = 0;
            v247 = 0;
            v249 = 0;
            v251 = 0;
            v253 = 0;
          }

          v132 = (v125 + v127);
          v133 = v80[5];
          if (v80[5])
          {
            if (v133 < 0xF0)
            {
              if (v133 == 31)
              {
                v135 = v132[1];
                v136 = v132[2];
                v137 = v132[3];
                v138 = vuzp2_s16(*v132, v136);
                v255 = vuzp1_s16(*v132, v136);
                v257 = v138;
                *&v27 = vuzp1_s16(v135, v137);
                *&v26 = vuzp2_s16(v135, v137);
                v259 = v27;
                v261 = v26;
                v134 = 32;
              }

              else if (v133 == 96)
              {
                *&v27 = vdup_lane_s8(*v132, 0);
                v255 = v27;
                v257 = v27;
                v259 = v27;
                v261 = v27;
                v134 = 1;
              }

              else
              {
                v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v255, 16, v132, v133, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v255, 16, v132, v133, v97);
              v134 = 16;
            }
          }

          else
          {
            v134 = 0;
            v255 = 0;
            v257 = 0;
            v259 = 0;
            v261 = 0;
          }

          v139 = (v132 + v134);
          v140 = v80[6];
          if (v80[6])
          {
            if (v140 < 0xF0)
            {
              if (v140 == 31)
              {
                v175 = v139[1];
                v176 = v139[2];
                v177 = v139[3];
                v178 = vuzp2_s16(*v139, v176);
                v248 = vuzp1_s16(*v139, v176);
                v250 = v178;
                *&v27 = vuzp1_s16(v175, v177);
                *&v26 = vuzp2_s16(v175, v177);
                v252 = v27;
                v254 = v26;
                v141 = 32;
                v142 = v80[7];
                if (!v80[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v140 == 96)
              {
                *&v27 = vdup_lane_s8(*v139, 0);
                v248 = v27;
                v250 = v27;
                v252 = v27;
                v254 = v27;
                v141 = 1;
                v142 = v80[7];
                if (!v80[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v248, 16, v139, v140, *&v27, *&v26);
                v142 = v80[7];
                if (!v80[7])
                {
LABEL_145:
                  v256 = 0;
                  v258 = 0;
                  v260 = 0;
                  v262 = 0;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v248, 16, v139, v140, v97);
              v141 = 16;
              v142 = v80[7];
              if (!v80[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v141 = 0;
            v248 = 0;
            v250 = 0;
            v252 = 0;
            v254 = 0;
            v142 = v80[7];
            if (!v80[7])
            {
              goto LABEL_145;
            }
          }

          v143 = (v139 + v141);
          if (v142 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v256, 16, v143, v142, v97);
LABEL_149:
            v29 = v200;
            v144 = v225;
            if (v225)
            {
              goto LABEL_150;
            }

            goto LABEL_190;
          }

          v29 = v200;
          if (v142 == 31)
          {
            v179 = v143[1];
            v180 = v143[2];
            v181 = v143[3];
            v182 = vuzp2_s16(*v143, v180);
            v256 = vuzp1_s16(*v143, v180);
            v258 = v182;
            v260 = vuzp1_s16(v179, v181);
            v262 = vuzp2_s16(v179, v181);
            v144 = v225;
            if (v225)
            {
              goto LABEL_150;
            }
          }

          else if (v142 == 96)
          {
            v256 = vdup_lane_s8(*v143, 0);
            v258 = v256;
            v260 = v256;
            v262 = v256;
            v144 = v225;
            if (v225)
            {
              goto LABEL_150;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 16, v143, v142, *&v27, *&v26);
            v144 = v225;
            if (v225)
            {
LABEL_150:
              v145 = v226;
              if (v226)
              {
                v146 = 0;
                v147 = 16 * v223;
                v148 = &v231 + v224 + v147;
                v149 = v221;
                v150 = v222;
                v151 = v226 - 1;
                v153 = v148 < v221 + v222 * (v144 - 1) + v151 + 1 && v221 < &v230 + 16 * v144 + 16 * v223 + v224 + v151 + 1;
                v154 = v226 & 0xFFFFFFE0;
                v155 = v226 & 0xFFFFFFF8;
                v156 = v226 < 8 || v222 < 0 || v153;
                v157 = &v233 + v147 + v224;
                v158 = (v221 + 16);
                v159 = v148;
                v160 = v221;
                do
                {
                  v161 = (v149 + v146 * v150);
                  v162 = &v148[16 * v146];
                  if (v156)
                  {
                    v163 = 0;
                    goto LABEL_172;
                  }

                  if (v145 >= 0x20)
                  {
                    v165 = v158;
                    v166 = v157;
                    v167 = v145 & 0xFFFFFFE0;
                    do
                    {
                      v168 = *v165;
                      *(v166 - 1) = *(v165 - 1);
                      *v166 = v168;
                      v166 += 2;
                      v165 += 2;
                      v167 -= 32;
                    }

                    while (v167);
                    if (v154 == v145)
                    {
                      goto LABEL_158;
                    }

                    v164 = v145 & 0xFFFFFFE0;
                    if ((v145 & 0x18) == 0)
                    {
                      v161 += v154;
                      v162 += v154;
                      v163 = v145 & 0xFFFFFFE0;
                      goto LABEL_172;
                    }
                  }

                  else
                  {
                    v164 = 0;
                  }

                  v162 += v155;
                  v169 = v164 - (v145 & 0xFFFFFFF8);
                  v170 = (v160 + v164);
                  v171 = &v159[v164];
                  do
                  {
                    v172 = *v170++;
                    *v171 = v172;
                    v171 += 8;
                    v169 += 8;
                  }

                  while (v169);
                  if (v155 == v145)
                  {
                    goto LABEL_158;
                  }

                  v161 += v155;
                  v163 = v145 & 0xFFFFFFF8;
LABEL_172:
                  v173 = v145 - v163;
                  do
                  {
                    v174 = *v161++;
                    *v162++ = v174;
                    --v173;
                  }

                  while (v173);
LABEL_158:
                  ++v146;
                  v157 += 16;
                  v158 = (v158 + v150);
                  v160 += v150;
                  v159 += 16;
                }

                while (v146 != v144);
              }
            }
          }

LABEL_190:
          v93 = v219;
          v94 = v220;
          v52 = v227;
          v95 = v228;
          v91 = *(*(a1 + 208) + 52);
          v81 = &v231;
          v92 = 16;
LABEL_191:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v81, v92, v93, v94, v52, v95, v91);
          if (v217)
          {
LABEL_26:
            v37 = *v90->i8;
            v38 = *v90[2].i8;
            v39 = *v90[6].i8;
            v82[2] = *v90[4].i8;
            v82[3] = v39;
            *v82 = v37;
            v82[1] = v38;
            v40 = *v90[8].i8;
            v41 = *v90[10].i8;
            v42 = *v90[14].i8;
            v82[6] = *v90[12].i8;
            v82[7] = v42;
            v82[4] = v40;
            v82[5] = v41;
            v43 = *v90[16].i8;
            v44 = *v90[18].i8;
            v45 = *v90[22].i8;
            v82[10] = *v90[20].i8;
            v82[11] = v45;
            v82[8] = v43;
            v82[9] = v44;
            v27 = *v90[24].i8;
            v26 = *v90[26].i8;
            v46 = *v90[30].i8;
            v82[14] = *v90[28].i8;
            v82[15] = v46;
            v82[12] = v27;
            v82[13] = v26;
          }

LABEL_27:
          v21 = v35++ == v208 >> 4;
        }

        while (!v21);
        v21 = v17++ == v199;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v176[28] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v153 = a8;
  v17 = a8 >> 4;
  v135 = a8 + a10 - 1;
  v137 = v135 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v155 = a1;
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v156 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v146 = result;
  if (v17 <= v137)
  {
    v145 = a7 + a9 - 1;
    v134 = a7 >> 4;
    if (a7 >> 4 <= v145 >> 4)
    {
      result = a1;
      v154 = (a5 - 1) >> 4;
      v131 = a5 - 1;
      v138 = (a5 - 1) & 0xF;
      v132 = (a6 - 1) & 0xF;
      v133 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v143 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v142 = v27;
      v130 = 8 * v19 * v18;
      v144 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v153)
        {
          v29 = v153;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v135 < v28)
        {
          v28 = v135;
        }

        v152 = 16 * v17;
        v141 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v132;
        v140 = v31;
        v33 = v31 != 16;
        v34 = v134;
        v35 = v132 + 1;
        if (v17 != v133)
        {
          v35 = 16;
          v32 = v33;
        }

        v139 = v32;
        v150 = a3 + (v29 - v153) * a11;
        v151 = v35;
        v149 = v35;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v145 < v37)
          {
            v37 = v145;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v154)
          {
            v41 = v138 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v152 >= v153 && v36 >= a7)
          {
            v43 = v39 != v138;
            if (v34 != v154)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v139;
          }

          if (v146)
          {
            v64 = 0;
            v65 = v130 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 1;
                  v68 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v67 = 0;
                    v64 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 0;
                v68 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 0;
                v68 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v68 = 8;
                v64 = 16;
              }
            }

            v120 = (v64 >> 4) - 1;
            if (v66)
            {
              v121 = 0;
              if (v67)
              {
                goto LABEL_150;
              }

LABEL_139:
              v122 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v122 | v121)
              {
                goto LABEL_140;
              }

LABEL_151:
              v129 = 0;
            }

            else
            {
              v121 = 32 - __clz(~(-1 << -__clz(v120)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v122 = 0;
              if (!v121)
              {
                goto LABEL_151;
              }

LABEL_140:
              v123 = 0;
              v124 = 0;
              v125 = v34 & v120;
              v126 = v121 != 0;
              v127 = v122 != 0;
              v128 = 1;
              do
              {
                --v121;
                if (v126)
                {
                  v124 |= (v128 & v125) << v123++;
                }

                else
                {
                  v121 = 0;
                }

                --v122;
                if (v127)
                {
                  v124 |= (v128 & v17 & ((v68 >> 4) - 1)) << v123++;
                }

                else
                {
                  v122 = 0;
                }

                v128 *= 2;
                --v123;
                v127 = v122 != 0;
                v126 = v121 != 0;
              }

              while (v122 | v121);
              v129 = v124 << 9;
              result = v155;
            }

            v51 = v129 + ((v36 / v64 + v152 / v68 * ((v64 + v131) / v64)) << 14);
            goto LABEL_52;
          }

          if (v143)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v142.i8[0];
            v48 = v142.i8[4];
            v50 = v143.i32[0];
            v49 = v143.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v47 = v50 != 0;
              v48 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 9;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 15;
          if (v56 < 0x20)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_77:
              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_77;
            }
          }

          v58 = 0;
          v59 = 0;
          v60 = v54 != 0;
          v61 = v57 != 0;
          v62 = 1;
          do
          {
            --v54;
            if (v60)
            {
              v59 |= (v62 & v34) << v58++;
            }

            else
            {
              v54 = 0;
            }

            --v57;
            if (v61)
            {
              v59 |= (v62 & v17) << v58++;
            }

            else
            {
              v57 = 0;
            }

            v62 *= 2;
            --v58;
            v61 = v57 != 0;
            v60 = v54 != 0;
          }

          while (v57 | v54);
          v63 = 8 * v59;
LABEL_78:
          v69 = (a4 + v63);
          v70 = v150 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          if (v156)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v149 < 0x10)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v75, v69, v41, v151, *(*(result + 208) + 52));
              goto LABEL_86;
            }

            v72 = v41;
            v73 = (a2 + v51);
            v74 = v40;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            v75 = __dst;
            v40 = v74;
            v71 = v73;
            LOBYTE(v41) = v72;
            result = v155;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v149 < 0x10)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v75;
          v166 = v41;
          v167 = v151;
          v162 = v141;
          v163 = v38 - v36;
          v159 = v69;
          v160 = v70;
          v161 = a11;
          v164 = v140;
          v165 = v40;
          if ((v42 & 1) == 0)
          {
            v76 = *(*(result + 208) + 52);
            v77 = &v75[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v169, 64, v75, *v69, v76)];
            v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v171, 64, v77, v69[1], v76);
            v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v170, 64, v78, v69[2], v76);
            v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v172, 64, v79, v69[3], v76);
            v81 = v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v173, 64, v80, v69[4], v76);
            v82 = v81 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v175, 64, v81, v69[5], v76);
            v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v174, 64, v82, v69[6], v76);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v176, 64, v82 + v83, v69[7], v76);
            v84 = v164;
            a7 = v144;
            if (!v164 || (v85 = v165) == 0)
            {
LABEL_120:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v169, 64, v158, v159, v166, v167, *(*(v155 + 208) + 52));
              if (!v156)
              {
                goto LABEL_26;
              }

              goto LABEL_121;
            }

            v86 = 0;
            v87 = v162 << 6;
            v88 = 4 * v163;
            v89 = &v169[v87 + v88];
            v90 = v160;
            v91 = v161;
            v92 = 4 * v165;
            if (4 * v165)
            {
              v93 = (4 * v165 - 1) >> 32 == 0;
            }

            else
            {
              v93 = 0;
            }

            v94 = !v93;
            v96 = v89 < v160 + v161 * (v164 - 1) + 4 * v165 && v160 < &__dst[64 * v164 + 960 + 64 * v162 + 4 * v165 + v88];
            v97 = v96 || v161 < 0;
            v98 = v92 & 0x1FFFFFFE0;
            v99 = v92 & 0x1FFFFFFF8;
            v100 = (v165 == 1) | v94 | v97;
            v101 = &v169[v87 + 16 + v88];
            v102 = (v160 + 16);
            v103 = v89;
            v104 = v160;
            while (2)
            {
              v105 = (v90 + v86 * v91);
              v106 = &v89[64 * v86];
              if (v100)
              {
                v107 = 0;
LABEL_117:
                v117 = v107 + 1;
                do
                {
                  v118 = *v105++;
                  *v106++ = v118;
                }

                while (v92 > v117++);
              }

              else
              {
                if (v85 >= 8)
                {
                  v109 = v102;
                  v110 = v101;
                  v111 = v92 & 0x1FFFFFFE0;
                  do
                  {
                    v112 = *v109;
                    *(v110 - 1) = *(v109 - 1);
                    *v110 = v112;
                    v110 += 2;
                    v109 += 2;
                    v111 -= 32;
                  }

                  while (v111);
                  if (v92 == v98)
                  {
                    goto LABEL_103;
                  }

                  v108 = v92 & 0x1FFFFFFE0;
                  if ((v85 & 6) == 0)
                  {
                    v105 += v98;
                    v106 += v98;
                    v107 = v92 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v108 = 0;
                }

                v106 += v99;
                v113 = -8 * ((v85 >> 1) & 0x3FFFFFFF) + v108;
                v114 = (v104 + v108);
                v115 = &v103[v108];
                do
                {
                  v116 = *v114++;
                  *v115++ = v116;
                  v113 += 8;
                }

                while (v113);
                if (v92 != v99)
                {
                  v105 += v99;
                  v107 = v92 & 0xFFFFFFF8;
                  goto LABEL_117;
                }
              }

LABEL_103:
              ++v86;
              v101 += 64;
              v102 = (v102 + v91);
              v104 += v91;
              v103 += 64;
              if (v86 == v84)
              {
                goto LABEL_120;
              }

              continue;
            }
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v144;
          if (!v156)
          {
            goto LABEL_26;
          }

LABEL_121:
          memcpy(v71, v75, 0x400uLL);
LABEL_26:
          v21 = v34++ == v145 >> 4;
          result = v155;
        }

        while (!v21);
        v21 = v17++ == v137;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v317 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v236 = a8;
  v17 = a8 >> 4;
  v218 = a8 + a10 - 1;
  v220 = v218 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v238 = a1;
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v240 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v229 = result;
  if (v17 <= v220)
  {
    v228 = a7 + a9 - 1;
    v217 = a7 >> 4;
    if (a7 >> 4 <= v228 >> 4)
    {
      result = a1;
      v237 = (a5 - 1) >> 4;
      v214 = a5 - 1;
      v221 = (a5 - 1) & 0xF;
      v215 = (a6 - 1) & 0xF;
      v216 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v226 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v225 = v27;
      v213 = 8 * v19 * v18;
      v227 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v236)
        {
          v29 = v236;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v218 < v28)
        {
          v28 = v218;
        }

        v235 = 16 * v17;
        v224 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v215;
        v223 = v31;
        v33 = v31 != 16;
        v34 = v217;
        v35 = v215 + 1;
        if (v17 != v216)
        {
          v35 = 16;
          v32 = v33;
        }

        v222 = v32;
        v233 = a3 + (v29 - v236) * a11;
        v234 = v35;
        v232 = v35;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v228 < v37)
          {
            v37 = v228;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v237)
          {
            v41 = v221 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v235 >= v236 && v36 >= a7)
          {
            v43 = v39 != v221;
            if (v34 != v237)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v222;
          }

          if (v229)
          {
            v64 = 0;
            v65 = v213 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 1;
                  v68 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v67 = 0;
                    v64 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 0;
                v68 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 0;
                v68 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v68 = 8;
                v64 = 16;
              }
            }

            v203 = (v64 >> 4) - 1;
            if (v66)
            {
              v204 = 0;
              if (v67)
              {
                goto LABEL_226;
              }

LABEL_215:
              v205 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v205 | v204)
              {
                goto LABEL_216;
              }

LABEL_227:
              v212 = 0;
            }

            else
            {
              v204 = 32 - __clz(~(-1 << -__clz(v203)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_215;
              }

LABEL_226:
              v205 = 0;
              if (!v204)
              {
                goto LABEL_227;
              }

LABEL_216:
              v206 = 0;
              v207 = 0;
              v208 = v34 & v203;
              v209 = v204 != 0;
              v210 = v205 != 0;
              v211 = 1;
              do
              {
                --v204;
                if (v209)
                {
                  v207 |= (v211 & v208) << v206++;
                }

                else
                {
                  v204 = 0;
                }

                --v205;
                if (v210)
                {
                  v207 |= (v211 & v17 & ((v68 >> 4) - 1)) << v206++;
                }

                else
                {
                  v205 = 0;
                }

                v211 *= 2;
                --v206;
                v210 = v205 != 0;
                v209 = v204 != 0;
              }

              while (v205 | v204);
              v212 = v207 << 9;
              result = v238;
            }

            v51 = v212 + ((v36 / v64 + v235 / v68 * ((v64 + v214) / v64)) << 14);
            goto LABEL_53;
          }

          if (v226)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v225.i8[4];
            v48 = v225.i8[0];
            v49 = v226.i32[1];
            v50 = v226.i32[0];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v48 = v50 != 0;
              v47 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 9;
          }

          else
          {
            v51 = 0;
          }

LABEL_53:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 15;
          if (v56 < 0x20)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
            }
          }

          v58 = 0;
          v59 = 0;
          v60 = v54 != 0;
          v61 = v57 != 0;
          v62 = 1;
          do
          {
            --v54;
            if (v60)
            {
              v59 |= (v62 & v34) << v58++;
            }

            else
            {
              v54 = 0;
            }

            --v57;
            if (v61)
            {
              v59 |= (v62 & v17) << v58++;
            }

            else
            {
              v57 = 0;
            }

            v62 *= 2;
            --v58;
            v61 = v57 != 0;
            v60 = v54 != 0;
          }

          while (v57 | v54);
          v63 = 8 * v59;
LABEL_79:
          v69 = (a4 + v63);
          v70 = v233 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          __dst = (a2 + v51);
          if (v240)
          {
            v71 = v252;
            if (!(v42 & 1 | (v41 < 0x10u) | (v232 < 0x10)))
            {
              goto LABEL_85;
            }

            memcpy(v252, __dst, sizeof(v252));
            result = v238;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v232 < 0x10)))
          {
LABEL_85:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, a11, v71, v69, v41, v234, *(*(result + 208) + 52));
LABEL_86:
            a7 = v227;
            if (v240)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v242 = v71;
          v250 = v41;
          v251 = v234;
          v246 = v224;
          v247 = v38 - v36;
          v243 = v69;
          v244 = v70;
          v245 = a11;
          v248 = v223;
          v249 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_86;
          }

          v72 = *(result + 208);
          v73 = *(v72 + 52);
          v74 = *v69;
          if (*v69)
          {
            if (v74 < 0xF0)
            {
              if (v74 == 127)
              {
                v77 = *v71;
                v78 = v71[1];
                v79 = v71[2];
                v80 = v71[3];
                v81 = v71[4];
                v82 = v71[5];
                v83 = v71[6];
                v84 = v71[7];
                v253 = vzip1q_s64(*v71, v78);
                v254 = vzip1q_s64(v81, v82);
                v257 = vzip2q_s64(v77, v78);
                v258 = vzip2q_s64(v81, v82);
                v261 = vzip1q_s64(v79, v80);
                v262 = vzip1q_s64(v83, v84);
                v265 = vzip2q_s64(v79, v80);
                v266 = vzip2q_s64(v83, v84);
                v75 = 128;
              }

              else if (v74 == 3)
              {
                v76 = vld1q_dup_f32(v71->i32);
                v253 = v76;
                v254 = v76;
                v257 = v76;
                v258 = v76;
                v261 = v76;
                v262 = v76;
                v265 = v76;
                v266 = v76;
                v75 = 4;
              }

              else
              {
                v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v253, 64, v71, v74);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v253, 64, v71, v74, *(v72 + 52));
              v75 = 64;
            }
          }

          else
          {
            v75 = 0;
            v254 = 0u;
            v253 = 0u;
            v257 = 0u;
            v258 = 0u;
            v261 = 0u;
            v262 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v85 = v71->i64 + v75;
          v86 = v69[1];
          if (v69[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 127)
              {
                v89 = *v85;
                v90 = *(v85 + 16);
                v91 = *(v85 + 32);
                v92 = *(v85 + 48);
                v93 = *(v85 + 64);
                v94 = *(v85 + 80);
                v95 = *(v85 + 96);
                v96 = *(v85 + 112);
                v269 = vzip1q_s64(*v85, v90);
                v270 = vzip1q_s64(v93, v94);
                v273 = vzip2q_s64(v89, v90);
                v274 = vzip2q_s64(v93, v94);
                v277 = vzip1q_s64(v91, v92);
                v278 = vzip1q_s64(v95, v96);
                v281 = vzip2q_s64(v91, v92);
                v282 = vzip2q_s64(v95, v96);
                v87 = 128;
              }

              else if (v86 == 3)
              {
                v88 = vld1q_dup_f32(v85);
                v269 = v88;
                v270 = v88;
                v273 = v88;
                v274 = v88;
                v277 = v88;
                v278 = v88;
                v281 = v88;
                v282 = v88;
                v87 = 4;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v269, 64, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v269, 64, v85, v86, v73);
              v87 = 64;
            }
          }

          else
          {
            v87 = 0;
            v269 = 0u;
            v270 = 0u;
            v273 = 0u;
            v274 = 0u;
            v277 = 0u;
            v278 = 0u;
            v281 = 0u;
            v282 = 0u;
          }

          v97 = v85 + v87;
          v98 = v69[2];
          if (v69[2])
          {
            if (v98 < 0xF0)
            {
              if (v98 == 127)
              {
                v101 = *v97;
                v102 = *(v97 + 16);
                v103 = *(v97 + 32);
                v104 = *(v97 + 48);
                v105 = *(v97 + 64);
                v106 = *(v97 + 80);
                v107 = *(v97 + 96);
                v108 = *(v97 + 112);
                v255 = vzip1q_s64(*v97, v102);
                v256 = vzip1q_s64(v105, v106);
                v259 = vzip2q_s64(v101, v102);
                v260 = vzip2q_s64(v105, v106);
                v263 = vzip1q_s64(v103, v104);
                v264 = vzip1q_s64(v107, v108);
                v267 = vzip2q_s64(v103, v104);
                v268 = vzip2q_s64(v107, v108);
                v99 = 128;
              }

              else if (v98 == 3)
              {
                v100 = vld1q_dup_f32(v97);
                v255 = v100;
                v256 = v100;
                v259 = v100;
                v260 = v100;
                v263 = v100;
                v264 = v100;
                v267 = v100;
                v268 = v100;
                v99 = 4;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v255, 64, v97, v98);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v255, 64, v97, v98, v73);
              v99 = 64;
            }
          }

          else
          {
            v99 = 0;
            v255 = 0u;
            v256 = 0u;
            v259 = 0u;
            v260 = 0u;
            v263 = 0u;
            v264 = 0u;
            v267 = 0u;
            v268 = 0u;
          }

          v109 = v97 + v99;
          v110 = v69[3];
          if (v69[3])
          {
            if (v110 < 0xF0)
            {
              if (v110 == 127)
              {
                v113 = *v109;
                v114 = *(v109 + 16);
                v115 = *(v109 + 32);
                v116 = *(v109 + 48);
                v117 = *(v109 + 64);
                v118 = *(v109 + 80);
                v119 = *(v109 + 96);
                v120 = *(v109 + 112);
                v271 = vzip1q_s64(*v109, v114);
                v272 = vzip1q_s64(v117, v118);
                v275 = vzip2q_s64(v113, v114);
                v276 = vzip2q_s64(v117, v118);
                v279 = vzip1q_s64(v115, v116);
                v280 = vzip1q_s64(v119, v120);
                v283 = vzip2q_s64(v115, v116);
                v284 = vzip2q_s64(v119, v120);
                v111 = 128;
              }

              else if (v110 == 3)
              {
                v112 = vld1q_dup_f32(v109);
                v271 = v112;
                v272 = v112;
                v275 = v112;
                v276 = v112;
                v279 = v112;
                v280 = v112;
                v283 = v112;
                v284 = v112;
                v111 = 4;
              }

              else
              {
                v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 64, v109, v110);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v271, 64, v109, v110, v73);
              v111 = 64;
            }
          }

          else
          {
            v111 = 0;
            v271 = 0u;
            v272 = 0u;
            v275 = 0u;
            v276 = 0u;
            v279 = 0u;
            v280 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v121 = v109 + v111;
          v122 = v69[4];
          if (v69[4])
          {
            if (v122 < 0xF0)
            {
              if (v122 == 127)
              {
                v125 = *v121;
                v126 = *(v121 + 16);
                v127 = *(v121 + 32);
                v128 = *(v121 + 48);
                v129 = *(v121 + 64);
                v130 = *(v121 + 80);
                v131 = *(v121 + 96);
                v132 = *(v121 + 112);
                v285 = vzip1q_s64(*v121, v126);
                v286 = vzip1q_s64(v129, v130);
                v289 = vzip2q_s64(v125, v126);
                v290 = vzip2q_s64(v129, v130);
                v293 = vzip1q_s64(v127, v128);
                v294 = vzip1q_s64(v131, v132);
                v297 = vzip2q_s64(v127, v128);
                v298 = vzip2q_s64(v131, v132);
                v123 = 128;
              }

              else if (v122 == 3)
              {
                v124 = vld1q_dup_f32(v121);
                v285 = v124;
                v286 = v124;
                v289 = v124;
                v290 = v124;
                v293 = v124;
                v294 = v124;
                v297 = v124;
                v298 = v124;
                v123 = 4;
              }

              else
              {
                v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v285, 64, v121, v122);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v285, 64, v121, v122, v73);
              v123 = 64;
            }
          }

          else
          {
            v123 = 0;
            v285 = 0u;
            v286 = 0u;
            v289 = 0u;
            v290 = 0u;
            v293 = 0u;
            v294 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v133 = v121 + v123;
          v134 = v69[5];
          if (v69[5])
          {
            if (v134 < 0xF0)
            {
              if (v134 == 127)
              {
                v137 = *v133;
                v138 = *(v133 + 16);
                v139 = *(v133 + 32);
                v140 = *(v133 + 48);
                v141 = *(v133 + 64);
                v142 = *(v133 + 80);
                v143 = *(v133 + 96);
                v144 = *(v133 + 112);
                v301 = vzip1q_s64(*v133, v138);
                v302 = vzip1q_s64(v141, v142);
                v305 = vzip2q_s64(v137, v138);
                v306 = vzip2q_s64(v141, v142);
                v309 = vzip1q_s64(v139, v140);
                v310 = vzip1q_s64(v143, v144);
                v313 = vzip2q_s64(v139, v140);
                v314 = vzip2q_s64(v143, v144);
                v135 = 128;
              }

              else if (v134 == 3)
              {
                v136 = vld1q_dup_f32(v133);
                v301 = v136;
                v302 = v136;
                v305 = v136;
                v306 = v136;
                v309 = v136;
                v310 = v136;
                v313 = v136;
                v314 = v136;
                v135 = 4;
              }

              else
              {
                v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v301, 64, v133, v134);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v301, 64, v133, v134, v73);
              v135 = 64;
            }
          }

          else
          {
            v135 = 0;
            v301 = 0u;
            v302 = 0u;
            v305 = 0u;
            v306 = 0u;
            v309 = 0u;
            v310 = 0u;
            v313 = 0u;
            v314 = 0u;
          }

          v145 = v133 + v135;
          v146 = v69[6];
          if (v69[6])
          {
            if (v146 < 0xF0)
            {
              if (v146 == 127)
              {
                v187 = *v145;
                v188 = *(v145 + 16);
                v189 = *(v145 + 32);
                v190 = *(v145 + 48);
                v191 = *(v145 + 64);
                v192 = *(v145 + 80);
                v193 = *(v145 + 96);
                v194 = *(v145 + 112);
                v287 = vzip1q_s64(*v145, v188);
                v288 = vzip1q_s64(v191, v192);
                v291 = vzip2q_s64(v187, v188);
                v292 = vzip2q_s64(v191, v192);
                v295 = vzip1q_s64(v189, v190);
                v296 = vzip1q_s64(v193, v194);
                v299 = vzip2q_s64(v189, v190);
                v300 = vzip2q_s64(v193, v194);
                v147 = 128;
                v148 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else if (v146 == 3)
              {
                v185 = vld1q_dup_f32(v145);
                v287 = v185;
                v288 = v185;
                v291 = v185;
                v292 = v185;
                v295 = v185;
                v296 = v185;
                v299 = v185;
                v300 = v185;
                v147 = 4;
                v148 = v69[7];
                if (!v69[7])
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v287, 64, v145, v146);
                v148 = v69[7];
                if (!v69[7])
                {
LABEL_145:
                  v303 = 0u;
                  v304 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v311 = 0u;
                  v312 = 0u;
                  v315 = 0u;
                  v316 = 0u;
                  goto LABEL_149;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v287, 64, v145, v146, v73);
              v147 = 64;
              v148 = v69[7];
              if (!v69[7])
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v147 = 0;
            v287 = 0u;
            v288 = 0u;
            v291 = 0u;
            v292 = 0u;
            v295 = 0u;
            v296 = 0u;
            v299 = 0u;
            v300 = 0u;
            v148 = v69[7];
            if (!v69[7])
            {
              goto LABEL_145;
            }
          }

          v149 = v145 + v147;
          if (v148 >= 0xF0)
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v303, 64, v149, v148, v73);
LABEL_149:
            a7 = v227;
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }

            goto LABEL_150;
          }

          a7 = v227;
          if (v148 == 127)
          {
            v195 = *v149;
            v196 = *(v149 + 16);
            v197 = *(v149 + 32);
            v198 = *(v149 + 48);
            v199 = *(v149 + 64);
            v200 = *(v149 + 80);
            v201 = *(v149 + 96);
            v202 = *(v149 + 112);
            v303 = vzip1q_s64(*v149, v196);
            v304 = vzip1q_s64(v199, v200);
            v307 = vzip2q_s64(v195, v196);
            v308 = vzip2q_s64(v199, v200);
            v311 = vzip1q_s64(v197, v198);
            v312 = vzip1q_s64(v201, v202);
            v315 = vzip2q_s64(v197, v198);
            v316 = vzip2q_s64(v201, v202);
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }
          }

          else if (v148 == 3)
          {
            v186 = vld1q_dup_f32(v149);
            v303 = v186;
            v304 = v186;
            v307 = v186;
            v308 = v186;
            v311 = v186;
            v312 = v186;
            v315 = v186;
            v316 = v186;
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v303, 64, v149, v148);
            v150 = v248;
            if (!v248)
            {
              goto LABEL_196;
            }
          }

LABEL_150:
          v151 = v249;
          if (v249)
          {
            v152 = 0;
            v153 = 4 * v247;
            v154 = &v253.i8[64 * v246 + v153];
            v155 = v244;
            v156 = v245;
            v157 = 4 * v249;
            if (4 * v249)
            {
              v158 = (4 * v249 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < v244 + v245 * (v150 - 1) + 4 * v249 && v244 < &v252[64 * v150 + 960 + 64 * v246 + 4 * v249 + v153];
            v162 = v161 || v245 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v249 == 1) | v159 | v162;
            v166 = &v254.i8[64 * v246 + v153];
            v167 = (v244 + 16);
            v168 = v154;
            v169 = v244;
            do
            {
              v170 = (v155 + v152 * v156);
              v171 = &v154[64 * v152];
              if (v165)
              {
                v172 = 0;
                goto LABEL_178;
              }

              if (v151 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = *(v174 - 1);
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_164;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v151 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_178;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v151 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_164;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_178:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_164:
              ++v152;
              v166 += 64;
              v167 = (v167 + v156);
              v169 += v156;
              v168 += 64;
            }

            while (v152 != v150);
          }

LABEL_196:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v253, 64, v242, v243, v250, v251, *(*(v238 + 208) + 52));
          if (v240)
          {
LABEL_26:
            memcpy(__dst, v71, 0x400uLL);
          }

LABEL_27:
          v21 = v34++ == v228 >> 4;
          result = v238;
        }

        while (!v21);
        v21 = v17++ == v220;
      }

      while (!v21);
    }
  }

  return result;
}