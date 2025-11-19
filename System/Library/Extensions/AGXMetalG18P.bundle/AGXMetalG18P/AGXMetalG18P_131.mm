uint64_t agxsTwiddle3DAddressCompressed<false,4u,2u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 2, a10 >> 1, (a12 + 3) >> 2, (a13 + 1) >> 1, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
      v227 = 0;
      do
      {
        v228 = a9;
        v229 = a2;
        v230 = v47;
        do
        {
          *v229++ = *(result + 16 * (v230 + v54));
          v230 = (v230 - v31) & v31;
          --v228;
        }

        while (v228);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v227;
      }

      while (v227 != v15);
    }

    return result;
  }

  v257 = result;
  v258 = a7;
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

    v263 = 1 << v66;
    v76 = v69 - 1;
    v259 = a10 + a8;
    v261 = a8 >> v66;
    v254 = (v69 - 1 + a10 + a8) >> v66;
    v256 = v66;
    if (a8 >> v66 >= v254)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v277 = a9 + a7;
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
    v271 = a7 >> v67;
    v275 = (v77 + a9 + a7) >> v67;
    if (result >= v275)
    {
      return result;
    }

    v252 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v273 = v77 & v277;
    v249 = v76 & v259;
    v251 = v76 & a8;
    v86 = v261;
    v245 = a2;
LABEL_92:
    v87 = v86 << v256;
    v88 = v86 - v261;
    v269 = v86 * v252;
    v265 = v86 + 1;
    v64 = v259 >= (v86 + 1) << v256;
    v89 = v263;
    v90 = v263 - v251;
    if (!v64)
    {
      v89 = v249;
      v90 = v15;
    }

    v91 = v88 << v256;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v251;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v267 = (v92 + v91 - v251) * a11;
    v94 = v271;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v277 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v273;
      if (v277 >= v96 << v67)
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
      a7 = v258;
      if (v96 == v275)
      {
        v86 = v265;
        v15 = a10;
        if (v265 == v254)
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
      v132 = (&v245[v99 + ((v94 - v271) << v67) - v85] + v267);
      v133 = (v94 + v269) * a12[3] * *(a12 + 9) + v257;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          *v135++ = *(v133 + 16 * (v136 + v123));
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
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v280);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v244 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v137 = a6 >> v19;
    v138 = 1 << v20;
    v139 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v139 = 0;
    }

    v140 = v138 >= a5;
    if (v138 < a5)
    {
      v141 = v20 + v19 + v139;
    }

    else
    {
      v141 = *(a12 + 12);
    }

    if (v140)
    {
      LOBYTE(v142) = *(a12 + 13);
    }

    else
    {
      v142 = -v139;
    }

    if (!v137)
    {
      v20 = v141;
    }

    v238 = v20;
    if (v137)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v142;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v238 = v21;
    v22 = v20 + v19 - v21;
  }

  v143 = v257;
  v144 = a10;
  v145 = a8;
  v236 = v286;
  if (v286)
  {
    v146 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v147 = a6;
    }

    else
    {
      v147 = 1 << v22;
    }

    v148 = 32 - __clz(v147 - 1);
    v149 = v147 > 1;
    if (v147 <= 1)
    {
      v150 = 0;
    }

    else
    {
      v150 = v148;
    }

    v237 = 1 << v238;
    if (1 << v238 >= a5)
    {
      v151 = a5;
    }

    else
    {
      v151 = 1 << v238;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v287;
    v154 = v151 > 1;
    if (v151 <= 1)
    {
      v152 = 0;
    }

    v270 = v284;
    v272 = v152;
    v266 = v284 != 0;
    v268 = v285;
    v264 = v285 != 0;
    if (v287)
    {
      v155 = 0;
      v156 = 0;
      v235 = a7 >> v238;
      v253 = a8 >> v22;
      v278 = v288;
      v279 = v283;
      v276 = v285 | v284;
      v234 = a9 + a7;
      v233 = (v237 - 1) & (a9 + a7);
      v232 = v281;
      v274 = v282;
      v231 = (v237 - 1) & a7;
      v248 = (v146 - 1) & a8;
      v250 = (v146 - 1) & (a10 + a8);
      v247 = v146 - v248;
      v157 = ~(-1 << v152);
      v246 = v150 | v152;
      v260 = v154;
      v240 = 1 << v22;
      v241 = v22;
      v255 = v287;
      do
      {
        v239 = v156;
        v158 = 0;
        v159 = 0;
        v160 = (v155 + v235) << v238;
        v161 = a9;
        if (v234 >= (v155 + v235 + 1) << v238)
        {
          v161 = v237 - v231;
        }

        v162 = 1 << v238;
        if (v234 < (v155 + v235 + 1) << v238)
        {
          v162 = v233;
        }

        v163 = v232 + v155;
        v164 = v155 << v238;
        if (v160 >= a7)
        {
          v165 = v162;
        }

        else
        {
          v165 = v161;
        }

        if (v160 >= a7)
        {
          v166 = 0;
        }

        else
        {
          v166 = v231;
        }

        v242 = &v244[v166 + v164];
        v167 = v144;
        v262 = v165;
        do
        {
          v168 = v274 + v158;
          if (v278)
          {
            v169 = v276;
            if (v276)
            {
              v170 = 0;
              v169 = 0;
              v171 = 1;
              v172 = v264;
              v173 = v266;
              v174 = v270;
              v175 = v268;
              do
              {
                --v174;
                if (v173)
                {
                  v169 |= (v171 & v163) << v170;
                }

                else
                {
                  v174 = 0;
                }

                if (v173)
                {
                  ++v170;
                }

                --v175;
                if (v172)
                {
                  v169 |= (v171 & v168) << v170;
                }

                else
                {
                  v175 = 0;
                }

                if (v172)
                {
                  ++v170;
                }

                v171 *= 2;
                --v170;
                v172 = v175 != 0;
                v173 = v174 != 0;
              }

              while (v175 | v174);
            }
          }

          else
          {
            v169 = v276;
            if (v276)
            {
              v176 = 0;
              v169 = 0;
              v177 = 1;
              v179 = v264;
              v178 = v266;
              v180 = v268;
              v181 = v270;
              do
              {
                --v180;
                if (v179)
                {
                  v169 |= (v177 & v168) << v176;
                }

                else
                {
                  v180 = 0;
                }

                if (v179)
                {
                  ++v176;
                }

                --v181;
                if (v178)
                {
                  v169 |= (v177 & v163) << v176;
                }

                else
                {
                  v181 = 0;
                }

                if (v178)
                {
                  ++v176;
                }

                v177 *= 2;
                --v176;
                v178 = v181 != 0;
                v179 = v180 != 0;
              }

              while (v181 | v180);
            }
          }

          v182 = *(v143 + 4 * ((v169 + v279) | ((v169 + v279) >> 8 << 9)));
          if (v182 < 0)
          {
            v183 = v143 - *(a13 + 3) + ((v182 & 0x1FFFFFFF) << 14);
            result = *a13;
            v184 = a13[2];
            if (result > v184)
            {
              v185 = v158;
              result = get_level_offset_within_tail(result, v184, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v154 = v260;
              v165 = v262;
              v158 = v185;
              v146 = v240;
              v22 = v241;
              v14 = a11;
              v145 = a8;
              v167 = a10;
              v143 = v257;
              v183 += result;
            }

            v186 = (v158 + v253) << v22;
            v187 = v247;
            if (a10 + a8 >= (v158 + v253 + 1) << v22)
            {
              v188 = v146;
            }

            else
            {
              v187 = v167;
              v188 = v250;
            }

            if (v186 >= v145)
            {
              v189 = 0;
            }

            else
            {
              v189 = v248;
            }

            if (v186 >= v145)
            {
              v187 = v188;
            }

            if (!v246)
            {
              v208 = 0;
              v192 = 0;
              v199 = 0;
              v215 = 0;
              v153 = v255;
              if (!v187)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v165)
              {
                v222 = 0;
                v223 = (v242 + (v189 + (v158 << v22)) * v14);
                do
                {
                  v224 = v165;
                  v225 = v223;
                  v226 = v208;
                  do
                  {
                    result = v226 + v215;
                    *v225++ = *(v183 + 16 * (v226 + v215));
                    v226 = (v226 - v192) & v192;
                    --v224;
                  }

                  while (v224);
                  v215 = (v215 - v199) & v199;
                  v223 = (v223 + v14);
                  ++v222;
                }

                while (v222 != v187);
              }

              goto LABEL_192;
            }

            v190 = v158;
            v191 = 0;
            v192 = 0;
            v193 = 1;
            v194 = v154;
            v195 = v149;
            v196 = v272;
            v197 = v150;
            do
            {
              --v196;
              if (v194)
              {
                v192 |= (v193 & v157) << v191++;
              }

              else
              {
                v196 = 0;
              }

              --v197;
              if (!v195)
              {
                v197 = 0;
              }

              v193 *= 2;
              v191 = (__PAIR64__(v191, v195) - 1) >> 32;
              v195 = v197 != 0;
              v194 = v196 != 0;
            }

            while (v197 | v196);
            v198 = 0;
            v199 = 0;
            v200 = 1;
            v201 = v154;
            v202 = v149;
            v203 = v272;
            v204 = v150;
            do
            {
              --v203;
              v205 = v201;
              if (!v205)
              {
                v203 = 0;
              }

              v206 = v198 + v205;
              --v204;
              if (v202)
              {
                v199 |= (v200 & ~(-1 << v150)) << v206++;
              }

              else
              {
                v204 = 0;
              }

              v200 *= 2;
              v198 = v206 - 1;
              v202 = v204 != 0;
              v201 = v203 != 0;
            }

            while (v204 | v203);
            v207 = 0;
            v208 = 0;
            v209 = 1;
            v210 = v154;
            v211 = v149;
            v212 = v272;
            v213 = v150;
            do
            {
              --v212;
              if (v210)
              {
                v208 |= (v209 & v166) << v207++;
              }

              else
              {
                v212 = 0;
              }

              --v213;
              if (!v211)
              {
                v213 = 0;
              }

              v209 *= 2;
              v207 = (__PAIR64__(v207, v211) - 1) >> 32;
              v211 = v213 != 0;
              v210 = v212 != 0;
            }

            while (v213 | v212);
            v214 = 0;
            v215 = 0;
            v216 = 1;
            v217 = v154;
            LOBYTE(result) = v149;
            v218 = v272;
            v219 = v150;
            do
            {
              --v218;
              v220 = v217;
              if (!v220)
              {
                v218 = 0;
              }

              v221 = v214 + v220;
              --v219;
              if (result)
              {
                v215 |= (v216 & v189) << v221++;
              }

              else
              {
                v219 = 0;
              }

              v216 *= 2;
              v214 = v221 - 1;
              result = v219 != 0;
              v217 = v218 != 0;
            }

            while (v219 | v218);
            v153 = v255;
            v158 = v190;
            v154 = v260;
            v165 = v262;
            if (v187)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v158 = ++v159;
        }

        while (v153 > v159);
        v144 = v167;
        v156 = v239 + 1;
        v155 = (v239 + 1);
        a7 = v258;
      }

      while (v236 > v155);
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
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
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
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

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
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
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 8 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
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
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
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
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
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
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
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
        v109 |= (v110 & ~(-1 << v81)) << v115;
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
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
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
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
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
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 8 * (v137 + v125));
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

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
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
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
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

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 8 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
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
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
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
                v195 |= (v196 & ~(-1 << v151)) << v202++;
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
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
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
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
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
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
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
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,1u,(TwiddleOrder)1>>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 4 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
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
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
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
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
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
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
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
        v109 |= (v110 & ~(-1 << v81)) << v115;
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
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
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
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
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
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 4 * (v137 + v125));
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

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
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
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
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

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 4 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
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
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
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
                v195 |= (v196 & ~(-1 << v151)) << v202++;
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
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
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
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
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
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
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
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 2 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
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
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
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
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
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
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
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
        v109 |= (v110 & ~(-1 << v81)) << v115;
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
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
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
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
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
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 2 * (v137 + v125));
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

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
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
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
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

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 2 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
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
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
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
                v195 |= (v196 & ~(-1 << v151)) << v202++;
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
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
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
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
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
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,1u,(TwiddleOrder)1>,(AGXTextureMemoryLayout)4>(uint64_t result, _BYTE *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, uint64_t a18)
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
            result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,1u,(TwiddleOrder)1>>(v30 + v28, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, a18);
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,1u,(TwiddleOrder)1>>(v30 + a11 * a8, v18, a3, a4, a6, a7, v26, a10, v24, v22, v21, v20, 0);
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,1u,(TwiddleOrder)1>>(uint64_t result, _BYTE *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
        v220 = a9;
        v221 = a2;
        v222 = v44;
        do
        {
          *v221++ = *(v51 + result + v222);
          v222 = (v222 - v28) & v28;
          --v220;
        }

        while (v220);
        v51 = (v51 - v35) & v35;
        a2 += a11;
      }
    }

    return result;
  }

  v249 = result;
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

    v253 = 1 << v63;
    v73 = v66 - 1;
    v246 = v63;
    v248 = a10 + a8;
    v250 = a8 >> v63;
    v245 = (v66 - 1 + a10 + a8) >> v63;
    if (a8 >> v63 >= v245)
    {
      return result;
    }

    result = a7 >> v64;
    v74 = (1 << v64) - 1;
    v266 = a9 + a7;
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
    v264 = (v74 + a9 + a7) >> v64;
    if (result >= v264)
    {
      return result;
    }

    v243 = (v72 + ~(-1 << v64)) >> v64;
    v82 = v74 & a7;
    v262 = v74 & v266;
    v83 = (1 << v64) - (v74 & a7);
    v239 = v73 & v248;
    v241 = v73 & a8;
    v84 = v250;
    v85 = v82;
    v236 = &a2[-v82];
LABEL_93:
    v86 = v84;
    v87 = v84 << v246;
    v88 = v86 - v250;
    v259 = v86 * v243;
    v255 = v86 + 1;
    v61 = v248 >= (v86 + 1) << v246;
    v89 = v253;
    v90 = v253 - v241;
    if (!v61)
    {
      v89 = v239;
      v90 = v13;
    }

    v91 = v88 << v246;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v241;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v257 = &v236[(v92 + v91 - v241) * a11];
    v94 = a7 >> v64;
    while (1)
    {
      v95 = v94 << v64;
      v96 = v94 + 1;
      if (v266 >= (v94 + 1) << v64)
      {
        v97 = v83;
      }

      else
      {
        v97 = a9;
      }

      v98 = v262;
      if (v266 >= v96 << v64)
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
      if (v96 == v264)
      {
        v84 = v255;
        v13 = a10;
        if (v255 == v245)
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
      v132 = &v257[v99 + ((v94 - (a7 >> v64)) << v64)];
      v133 = (v94 + v259) * a12[3] * *(a12 + 9) + v249;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          *v135++ = *(v133 + v123 + v136);
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

  v227 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v269);
  v17 = *(a12 + 13);
  v18 = *(a12 + 12);
  if (1 << v17 >= a6 || a5 >> v18)
  {
    v137 = a6 >> v17;
    v138 = 1 << v18;
    v139 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v139 = 0;
    }

    v140 = v138 >= a5;
    if (v138 < a5)
    {
      v141 = v18 + v17 + v139;
    }

    else
    {
      v141 = *(a12 + 12);
    }

    if (v140)
    {
      LOBYTE(v142) = *(a12 + 13);
    }

    else
    {
      v142 = -v139;
    }

    if (!v137)
    {
      v18 = v141;
    }

    v229 = v18;
    if (v137)
    {
      v20 = *(a12 + 13);
    }

    else
    {
      v20 = v142;
    }
  }

  else
  {
    v19 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v19) = 0;
    }

    v229 = v19;
    v20 = v18 + v17 - v19;
  }

  v143 = v249;
  v144 = a10;
  v145 = a8;
  v226 = v275;
  if (v275)
  {
    v146 = 1 << v20;
    if (1 << v20 >= a6)
    {
      v147 = a6;
    }

    else
    {
      v147 = 1 << v20;
    }

    v148 = 32 - __clz(v147 - 1);
    v149 = v147 > 1;
    if (v147 <= 1)
    {
      v150 = 0;
    }

    else
    {
      v150 = v148;
    }

    v228 = 1 << v229;
    if (1 << v229 >= a5)
    {
      v151 = a5;
    }

    else
    {
      v151 = 1 << v229;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v276;
    v237 = v151 > 1;
    if (v151 <= 1)
    {
      v152 = 0;
    }

    v260 = v273;
    v261 = v152;
    v256 = v273 != 0;
    v258 = v274;
    v254 = v274 != 0;
    if (v276)
    {
      v154 = 0;
      v225 = a7 >> v229;
      v247 = a8 >> v20;
      v268 = v272;
      v267 = v274 | v273;
      v265 = v277;
      v224 = a9 + a7;
      v223 = v270;
      v263 = v271;
      v244 = (v146 - 1) & (a10 + a8);
      v242 = (v146 - 1) & a8;
      v240 = v146 - v242;
      v155 = ~(-1 << v152);
      v238 = v150 | v152;
      v251 = v276;
      v232 = v149;
      v233 = v20;
      v231 = 1 << v20;
      do
      {
        v156 = 0;
        v157 = v223 + v154;
        v158 = (v154 + v225) << v229;
        v159 = a9;
        if (v224 >= (v154 + v225 + 1) << v229)
        {
          v159 = v228 - ((v228 - 1) & a7);
        }

        v160 = 1 << v229;
        if (v224 < (v154 + v225 + 1) << v229)
        {
          v160 = (v228 - 1) & (a9 + a7);
        }

        v230 = v154;
        if (v158 >= v14)
        {
          v161 = v160;
        }

        else
        {
          v161 = v159;
        }

        if (v158 >= v14)
        {
          v162 = 0;
        }

        else
        {
          v162 = (v228 - 1) & a7;
        }

        v234 = &v227[v162 + (v154 << v229)];
        do
        {
          v163 = v263 + v156;
          if (v265)
          {
            v164 = v267;
            if (v267)
            {
              v165 = 0;
              v164 = 0;
              v166 = 1;
              v167 = v254;
              v168 = v256;
              v169 = v260;
              v170 = v258;
              do
              {
                --v169;
                if (v168)
                {
                  v164 |= (v166 & v157) << v165;
                }

                else
                {
                  v169 = 0;
                }

                if (v168)
                {
                  ++v165;
                }

                --v170;
                if (v167)
                {
                  v164 |= (v166 & v163) << v165;
                }

                else
                {
                  v170 = 0;
                }

                if (v167)
                {
                  ++v165;
                }

                v166 *= 2;
                --v165;
                v167 = v170 != 0;
                v168 = v169 != 0;
              }

              while (v170 | v169);
            }
          }

          else
          {
            v164 = v267;
            if (v267)
            {
              v171 = 0;
              v164 = 0;
              v172 = 1;
              v174 = v254;
              v173 = v256;
              v175 = v258;
              v176 = v260;
              do
              {
                --v175;
                if (v174)
                {
                  v164 |= (v172 & v163) << v171;
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
                  v164 |= (v172 & v157) << v171;
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

          v177 = *(v143 + 4 * ((v164 + v268) | ((v164 + v268) >> 8 << 9)));
          if (v177 < 0)
          {
            v178 = v143 - *(a13 + 3) + ((v177 & 0x1FFFFFFF) << 14);
            result = *a13;
            v179 = a13[2];
            if (result > v179)
            {
              result = get_level_offset_within_tail(result, v179, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v153 = v251;
              v146 = v231;
              v149 = v232;
              v20 = v233;
              v144 = a10;
              v145 = a8;
              v143 = v249;
              v178 += result;
            }

            v180 = (v156 + v247) << v20;
            v181 = v240;
            if (a10 + a8 >= (v156 + v247 + 1) << v20)
            {
              v182 = v146;
            }

            else
            {
              v181 = v144;
              v182 = v244;
            }

            if (v180 >= v145)
            {
              v183 = 0;
            }

            else
            {
              v183 = v242;
            }

            if (v180 >= v145)
            {
              v181 = v182;
            }

            if (!v238)
            {
              v201 = 0;
              v185 = 0;
              v192 = 0;
              v208 = 0;
              if (!v181)
              {
                goto LABEL_191;
              }

LABEL_263:
              if (v161)
              {
                v215 = 0;
                v216 = &v234[(v183 + (v156 << v20)) * a11];
                do
                {
                  v217 = v161;
                  v218 = v216;
                  result = v201;
                  do
                  {
                    *v218++ = *(v208 + v178 + result);
                    result = (result - v185) & v185;
                    --v217;
                  }

                  while (v217);
                  v208 = (v208 - v192) & v192;
                  v216 += a11;
                  ++v215;
                }

                while (v215 != v181);
              }

              goto LABEL_191;
            }

            v184 = 0;
            v185 = 0;
            v186 = 1;
            v187 = v237;
            v188 = v149;
            v189 = v261;
            v190 = v150;
            do
            {
              --v189;
              if (v187)
              {
                v185 |= (v186 & v155) << v184++;
              }

              else
              {
                v189 = 0;
              }

              --v190;
              if (!v188)
              {
                v190 = 0;
              }

              v186 *= 2;
              v184 = (__PAIR64__(v184, v188) - 1) >> 32;
              v188 = v190 != 0;
              v187 = v189 != 0;
            }

            while (v190 | v189);
            v191 = 0;
            v192 = 0;
            v193 = 1;
            v194 = v237;
            v195 = v149;
            v196 = v261;
            v197 = v150;
            do
            {
              --v196;
              v198 = v194;
              if (!v198)
              {
                v196 = 0;
              }

              v199 = v191 + v198;
              --v197;
              if (v195)
              {
                v192 |= (v193 & ~(-1 << v150)) << v199++;
              }

              else
              {
                v197 = 0;
              }

              v193 *= 2;
              v191 = v199 - 1;
              v195 = v197 != 0;
              v194 = v196 != 0;
            }

            while (v197 | v196);
            v200 = 0;
            v201 = 0;
            v202 = 1;
            v203 = v237;
            v204 = v149;
            v205 = v261;
            v206 = v150;
            do
            {
              --v205;
              if (v203)
              {
                v201 |= (v202 & v162) << v200++;
              }

              else
              {
                v205 = 0;
              }

              --v206;
              if (!v204)
              {
                v206 = 0;
              }

              v202 *= 2;
              v200 = (__PAIR64__(v200, v204) - 1) >> 32;
              v204 = v206 != 0;
              v203 = v205 != 0;
            }

            while (v206 | v205);
            v207 = 0;
            v208 = 0;
            v209 = 1;
            v210 = v237;
            LOBYTE(result) = v149;
            v211 = v261;
            v212 = v150;
            do
            {
              --v211;
              v213 = v210;
              if (!v213)
              {
                v211 = 0;
              }

              v214 = v207 + v213;
              --v212;
              if (result)
              {
                v208 |= (v209 & v183) << v214++;
              }

              else
              {
                v212 = 0;
              }

              v209 *= 2;
              v207 = v214 - 1;
              result = v212 != 0;
              v210 = v211 != 0;
            }

            while (v212 | v211);
            v153 = v251;
            if (v181)
            {
              goto LABEL_263;
            }
          }

LABEL_191:
          ++v156;
        }

        while (v153 > v156);
        v154 = v230 + 1;
        v14 = a7;
      }

      while (v226 > (v230 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,4u,4u,8ul,(TwiddleOrder)1>(uint64_t result, void *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 2, a10 >> 2, (a12 + 3) >> 2, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,12u,12u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xC, a10 / 0xC, (a12 + 11) / 0xCu, (a13 + 11) / 0xCu, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,12u,10u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xC, a10 / 0xA, (a12 + 11) / 0xCu, (a13 + 9) / 0xAu, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,10u,10u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 / 0xA, (a12 + 9) / 0xAu, (a13 + 9) / 0xAu, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,10u,8u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 >> 3, (a12 + 9) / 0xAu, (a13 + 7) >> 3, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,10u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 / 6, (a12 + 9) / 0xAu, (a13 + 5) / 6u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,10u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 0xA, a10 / 5, (a12 + 9) / 0xAu, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,8u,8u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 >> 3, (a12 + 7) >> 3, (a13 + 7) >> 3, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,8u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 / 6, (a12 + 7) >> 3, (a13 + 5) / 6u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,8u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 / 5, (a12 + 7) >> 3, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,8u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 3, a10 >> 2, (a12 + 7) >> 3, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,6u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 6, a10 / 6, (a12 + 5) / 6u, (a13 + 5) / 6u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,6u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 6, a10 / 5, (a12 + 5) / 6u, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,5u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 5, a10 / 5, (a12 + 4) / 5u, (a13 + 4) / 5u, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,5u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 / 5, a10 >> 2, (a12 + 4) / 5u, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddle3DAddressCompressed<false,4u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned __int16 *a17, unsigned int *a18)
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
          result = agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(v23 + a11++ * a8, v18, v26, v25, a6, a7, a9 >> 2, a10 >> 2, (a12 + 3) >> 2, (a13 + 3) >> 2, a15, a17, a18);
          v18 = (v18 + a16);
          --v19;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v144 = v15;
  v17 = v16;
  v19 = v18;
  v139 = v20;
  v140 = v21;
  v126 = v22;
  v23 = v12;
  v166 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v143 = v14;
  v24 = v14 >> 4;
  v125 = v14 + a10 - 1;
  v127 = v125 >> 4;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v147 = v23;
  if (*(v23 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = (v27 & 0xD00) == 0 || v27 == 768;
  v29 = v27 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v138 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v137 = result;
  if (v24 <= v127)
  {
    v136 = v144 + a9 - 1;
    if (v144 >> 4 <= v136 >> 4)
    {
      result = v23;
      v33 = a11;
      v146 = (v19 - 1) >> 4;
      v122 = v19 - 1;
      v130 = (v19 - 1) & 0xF;
      v123 = (v17 - 1) & 0xF;
      v124 = (v17 - 1) >> 4;
      v128 = 8 * a11;
      v129 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v134 = v35;
      v121 = 8 * v26 * v25;
      do
      {
        v36 = (16 * v24) | 0xF;
        if (16 * v24 <= v143)
        {
          v37 = v143;
        }

        else
        {
          v37 = 16 * v24;
        }

        if (v125 < v36)
        {
          v36 = v125;
        }

        v142 = 16 * v24;
        v133 = v37 - 16 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v123;
        v132 = v39;
        v41 = v39 != 16;
        v42 = v144 >> 4;
        v43 = v123 + 1;
        if (v24 != v124)
        {
          v43 = 16;
        }

        v145 = v43;
        if (v24 != v124)
        {
          v40 = v41;
        }

        v131 = v40;
        v141 = v126 + (v37 - v143) * v33;
        v44 = v144;
        do
        {
          v56 = 16 * v42;
          v57 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v44)
          {
            v58 = v44;
          }

          else
          {
            v58 = 16 * v42;
          }

          if (v136 < v57)
          {
            v57 = v144 + a9 - 1;
          }

          v59 = v57 - v58;
          v60 = v59 + 1;
          if (v42 == v146)
          {
            v61 = v130 + 1;
          }

          else
          {
            v61 = 16;
          }

          v62 = 1;
          if (v142 >= v143 && v56 >= v44)
          {
            v63 = v59 != v130;
            if (v42 != v146)
            {
              v63 = v60 != 16;
            }

            v62 = v63 || v131;
          }

          if (v137)
          {
            v84 = 0;
            v85 = v121 >> (*(result + 57) != 0);
            v86 = 1;
            if (v85 <= 63)
            {
              if (v85 > 15)
              {
                if (v85 == 16)
                {
                  v86 = 0;
                  v87 = 0;
                  v88 = 64;
                  v84 = 128;
                }

                else
                {
                  v87 = 1;
                  v88 = 0;
                  if (v85 == 32)
                  {
                    v86 = 0;
                    v87 = 0;
                    v84 = 64;
                    v88 = 64;
                  }
                }
              }

              else if (v85 == 4)
              {
                v86 = 0;
                v87 = 0;
                v88 = 128;
                v84 = 256;
              }

              else
              {
                v87 = 1;
                v88 = 0;
                if (v85 == 8)
                {
                  v86 = 0;
                  v87 = 0;
                  v84 = 128;
                  v88 = 128;
                }
              }
            }

            else if (v85 <= 255)
            {
              if (v85 == 64)
              {
                v86 = 0;
                v87 = 0;
                v88 = 32;
                v84 = 64;
              }

              else
              {
                v87 = 1;
                v88 = 0;
                if (v85 == 128)
                {
                  v86 = 0;
                  v87 = 0;
                  v84 = 32;
                  v88 = 32;
                }
              }
            }

            else if (v85 == 256)
            {
              v86 = 0;
              v88 = 16;
              v87 = 1;
              v84 = 32;
            }

            else if (v85 == 512)
            {
              v84 = 16;
              v87 = 1;
              v88 = 16;
            }

            else
            {
              v87 = 1;
              v88 = 0;
              if (v85 == 1024)
              {
                v88 = 8;
                v84 = 16;
              }
            }

            v111 = (v84 >> 4) - 1;
            if (v86)
            {
              v112 = 0;
              if (v87)
              {
                goto LABEL_123;
              }

LABEL_112:
              v113 = 32 - __clz(~(-1 << -__clz(((v88 + 15) >> 4) - 1)));
              if (v113 | v112)
              {
                goto LABEL_113;
              }

LABEL_124:
              v120 = 0;
            }

            else
            {
              v112 = 32 - __clz(~(-1 << -__clz(v111)));
              if ((v87 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v113 = 0;
              if (!v112)
              {
                goto LABEL_124;
              }

LABEL_113:
              v114 = 0;
              v115 = 0;
              v116 = v42 & v111;
              v117 = v112 != 0;
              v118 = v113 != 0;
              v119 = 1;
              do
              {
                --v112;
                if (v117)
                {
                  v115 |= (v119 & v116) << v114++;
                }

                else
                {
                  v112 = 0;
                }

                --v113;
                if (v118)
                {
                  v115 |= (v119 & v24 & ((v88 >> 4) - 1)) << v114++;
                }

                else
                {
                  v113 = 0;
                }

                v119 *= 2;
                --v114;
                v118 = v113 != 0;
                v117 = v112 != 0;
              }

              while (v113 | v112);
              v120 = v115 << 10;
              result = v147;
            }

            v71 = v120 + ((v56 / v84 + v142 / v88 * ((v84 + v122) / v84)) << 14);
            goto LABEL_56;
          }

          if (v135)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v67 = v134.i8[0];
            v68 = v134.i8[4];
            v70 = v135.i32[0];
            v69 = v135.i32[1];
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v42) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v24) << v64++;
              }

              else
              {
                v70 = 0;
              }

              v66 *= 2;
              --v64;
              v67 = v70 != 0;
              v68 = v69 != 0;
            }

            while (v70 | v69);
            v71 = v65 << 10;
          }

          else
          {
            v71 = 0;
          }

LABEL_56:
          v72 = *(result + 128) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
          }

          v75 = *(result + 132) >> (*(result + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 15;
          if (v76 < 0x20)
          {
            v77 = 0;
            if (!v74)
            {
LABEL_81:
              v83 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 4) - 1)));
            if (!(v77 | v74))
            {
              goto LABEL_81;
            }
          }

          v78 = 0;
          v79 = 0;
          v80 = v74 != 0;
          v81 = v77 != 0;
          v82 = 1;
          do
          {
            --v74;
            if (v80)
            {
              v79 |= (v82 & v42) << v78++;
            }

            else
            {
              v74 = 0;
            }

            --v77;
            if (v81)
            {
              v79 |= (v82 & v24) << v78++;
            }

            else
            {
              v77 = 0;
            }

            v82 *= 2;
            --v78;
            v81 = v77 != 0;
            v80 = v74 != 0;
          }

          while (v77 | v74);
          v83 = 8 * v79;
LABEL_82:
          v89 = (v139 + v71);
          if (v138)
          {
            v90 = v60;
            v91 = v33;
            v92 = v61;
            v93 = v58;
            v94 = v62;
            memcpy(__dst, (v139 + v71), sizeof(__dst));
            v62 = v94;
            v58 = v93;
            v56 = 16 * v42;
            v61 = v92;
            v33 = v91;
            v60 = v90;
            result = v147;
            v89 = __dst;
          }

          v95 = (v140 + v83);
          v96 = v141 + 8 * (v58 - v44);
          if (!(v62 & 1 | (v61 < 0x10u)) && v145 > 0xF)
          {
            v45 = *(*(result + 208) + 52);
            v46 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v141 + 8 * (v58 - v44)), v33, v89, *v95, v45)];
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + v129), v33, v46, v95[1], v45);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + 64), v33, v47, v95[2], v45);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + v129 + 64), v33, v48, v95[3], v45);
            v50 = v96 + v128;
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v96 + v128), v33, v49, v95[4], v45);
            v52 = (v96 + 12 * a11);
            v53 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v52, v33, v51, v95[5], v45);
            v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock((v50 + 64), v33, v53, v95[6], v45);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v52 + 4, v33, v53 + v54, v95[7], v45);
LABEL_29:
            v44 = v144;
            v55 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v89;
          v155 = v61;
          v156 = v145;
          v151 = v133;
          v152 = v58 - v56;
          block[6] = v95;
          v149 = v141 + 8 * (v58 - v44);
          v150 = v33;
          v153 = v132;
          v154 = v60;
          if (v62)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v97 = *(*(result + 208) + 52);
          v98 = &v89[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v158, 128, v89, *v95, v97)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v160, 128, v98, v95[1], v97);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v159, 128, v99, v95[2], v97);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v161, 128, v100, v95[3], v97);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v162, 128, v101, v95[4], v97);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v164, 128, v102, v95[5], v97);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v163, 128, v103, v95[6], v97);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(v165, 128, v103 + v104, v95[7], v97);
          v105 = v153;
          v44 = v144;
          v55 = v42 + 1;
          if (v153)
          {
            v106 = 0;
            v107 = &v158[8 * v151] + 8 * v152;
            v108 = v154;
            do
            {
              if (v108)
              {
                v109 = 0;
                v110 = v149 + v150 * v106;
                do
                {
                  *(v110 + v109) = v107[v109];
                  ++v109;
                  v108 = v154;
                }

                while (8 * v154 > v109);
                v105 = v153;
              }

              ++v106;
              v107 += 128;
            }

            while (v106 < v105);
          }

LABEL_30:
          v28 = v42 == v136 >> 4;
          v42 = v55;
          result = v147;
        }

        while (!v28);
        v28 = v24++ == v127;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v284 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v238 = a8;
  v17 = a8 >> 4;
  v219 = a8 + a10 - 1;
  v221 = v219 >> 4;
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
  v233 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v221)
  {
    v231 = a7 + a9 - 1;
    if (a7 >> 4 <= v231 >> 4)
    {
      v240 = (a5 - 1) >> 4;
      v216 = a5 - 1;
      v224 = (a5 - 1) & 0xF;
      v217 = (a6 - 1) & 0xF;
      v218 = (a6 - 1) >> 4;
      v222 = a11;
      v223 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *&v26 = vcgt_u32(v25, 0x1F0000001FLL);
      *&v27 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *&v26);
      v229 = v27;
      v230 = v27 | DWORD1(v27);
      v228 = v26;
      v215 = 8 * v19 * v18;
      v241 = 2 * a11;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v238)
        {
          v29 = v238;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v219 < v28)
        {
          v28 = v219;
        }

        v237 = 16 * v17;
        v227 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v217;
        v226 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v217 + 1;
        if (v17 != v218)
        {
          v35 = 16;
        }

        v239 = v35;
        if (v17 != v218)
        {
          v32 = v33;
        }

        v225 = v32;
        v236 = a2 + (v29 - v238) * a11;
        do
        {
          v37 = 16 * v34;
          v38 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 16 * v34;
          }

          if (v231 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v34 == v240)
          {
            v42 = v224 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v237 >= v238 && v37 >= a7)
          {
            v44 = v40 != v224;
            if (v34 != v240)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v225;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v215 >> (*(a1 + 57) != 0);
            v67 = 1;
            if (v66 <= 63)
            {
              if (v66 > 15)
              {
                if (v66 == 16)
                {
                  v67 = 0;
                  v68 = 0;
                  v69 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 1;
                  v69 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v68 = 0;
                    v65 = 64;
                    v69 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 0;
                v69 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 1;
                v69 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v68 = 0;
                  v65 = 128;
                  v69 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 0;
                v69 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 1;
                v69 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v68 = 0;
                  v65 = 32;
                  v69 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
              v69 = 16;
            }

            else
            {
              v68 = 1;
              v69 = 0;
              if (v66 == 1024)
              {
                v69 = 8;
                v65 = 16;
              }
            }

            v205 = (v65 >> 4) - 1;
            if (v67)
            {
              v206 = 0;
              if (v68)
              {
                goto LABEL_269;
              }

LABEL_258:
              v207 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v207 | v206)
              {
                goto LABEL_259;
              }

LABEL_270:
              v214 = 0;
            }

            else
            {
              v206 = 32 - __clz(~(-1 << -__clz(v205)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_258;
              }

LABEL_269:
              v207 = 0;
              if (!v206)
              {
                goto LABEL_270;
              }

LABEL_259:
              v208 = 0;
              v209 = 0;
              v210 = v34 & v205;
              v211 = v206 != 0;
              v212 = v207 != 0;
              v213 = 1;
              do
              {
                --v206;
                if (v211)
                {
                  v209 |= (v213 & v210) << v208++;
                }

                else
                {
                  v206 = 0;
                }

                --v207;
                if (v212)
                {
                  v209 |= (v213 & v17 & ((v69 >> 4) - 1)) << v208++;
                }

                else
                {
                  v207 = 0;
                }

                v213 *= 2;
                --v208;
                v212 = v207 != 0;
                v211 = v206 != 0;
              }

              while (v207 | v206);
              v214 = v209 << 7;
            }

            v52 = v214 + ((v37 / v65 + v237 / v69 * ((v65 + v216) / v65)) << 14);
            goto LABEL_56;
          }

          if (v230)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v228;
            v49 = BYTE4(v228);
            v51 = v229;
            v50 = HIDWORD(v229);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v34) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v48 = v51 != 0;
              v49 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 7;
          }

          else
          {
            v52 = 0;
          }

LABEL_56:
          v53 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
          }

          v56 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_81:
              v64 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_81;
            }
          }

          v59 = 0;
          v60 = 0;
          v61 = v55 != 0;
          v62 = v58 != 0;
          v63 = 1;
          do
          {
            --v55;
            if (v61)
            {
              v60 |= (v63 & v34) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v17) << v59++;
            }

            else
            {
              v58 = 0;
            }

            v63 *= 2;
            --v59;
            v62 = v58 != 0;
            v61 = v55 != 0;
          }

          while (v58 | v55);
          v64 = 8 * v60;
LABEL_82:
          v70 = (a3 + v52);
          if (v233)
          {
            v71 = v70[13];
            v251[12] = v70[12];
            v251[13] = v71;
            v72 = v70[15];
            v251[14] = v70[14];
            v251[15] = v72;
            v73 = v70[9];
            v251[8] = v70[8];
            v251[9] = v73;
            v74 = v70[11];
            v251[10] = v70[10];
            v251[11] = v74;
            v75 = v70[5];
            v251[4] = v70[4];
            v251[5] = v75;
            v76 = v70[7];
            v251[6] = v70[6];
            v251[7] = v76;
            v77 = v70[1];
            v251[0] = *v70;
            v251[1] = v77;
            v27 = v70[2];
            v26 = v70[3];
            v70 = v251;
            v251[2] = v27;
            v251[3] = v26;
          }

          v78 = (a4 + v64);
          v79 = (v236 + v39 - a7);
          if (!(v43 & 1 | (v42 < 0x10u)) && v239 > 0xF)
          {
            v80 = *(a1 + 208);
            v81 = *(v80 + 52);
            v82 = *v78;
            if (*v78)
            {
              if (v82 < 0xF0)
              {
                if (v82 == 31)
                {
                  v88 = *v70;
                  *&v26 = *(v70 + 1);
                  v89 = v70[1];
                  v90 = *(v70 + 24);
                  *v79 = vuzp1_s16(*v70, v89);
                  *(v79 + a11) = vuzp2_s16(v88, v89);
                  v91 = (v79 + v241);
                  *v91 = vuzp1_s16(*&v26, v90);
                  *&v27 = vuzp2_s16(*&v26, v90);
                  *(v91 + a11) = v27;
                  v83 = 32;
                }

                else if (v82 == 96)
                {
                  *&v27 = vdup_lane_s8(*v70, 0);
                  *v79 = v27;
                  *(v79 + a11) = v27;
                  *(v79 + 2 * a11) = v27;
                  *(v79 + 3 * a11) = v27;
                  v83 = 1;
                }

                else
                {
                  v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v236 + v39 - a7), a11, v70, v82, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v236 + v39 - a7), a11, v70, v82, *(v80 + 52));
                v83 = 16;
              }
            }

            else
            {
              v83 = 0;
              *v79 = 0;
              *(v79 + a11) = 0;
              *(v79 + 2 * a11) = 0;
              *(v79 + 3 * a11) = 0;
            }

            v92 = (v70 + v83);
            v93 = (v79 + v223);
            v94 = v78[1];
            if (v78[1])
            {
              if (v94 < 0xF0)
              {
                if (v94 == 31)
                {
                  v96 = *v92;
                  *&v26 = v92[1];
                  v97 = v92[2];
                  v98 = v92[3];
                  *v93 = vuzp1_s16(*v92, v97);
                  *(v93 + a11) = vuzp2_s16(v96, v97);
                  v99 = (v93 + v241);
                  *v99 = vuzp1_s16(*&v26, v98);
                  *&v27 = vuzp2_s16(*&v26, v98);
                  *(v99 + a11) = v27;
                  v95 = 32;
                }

                else if (v94 == 96)
                {
                  *&v27 = vdup_lane_s8(*v92, 0);
                  *v93 = v27;
                  *(v93 + a11) = v27;
                  *(v93 + 2 * a11) = v27;
                  *(v93 + 3 * a11) = v27;
                  v95 = 1;
                }

                else
                {
                  v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v79 + v223), a11, v92, v94, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v79 + v223), a11, v92, v94, v81);
                v95 = 16;
              }
            }

            else
            {
              v95 = 0;
              *v93 = 0;
              *(v93 + a11) = 0;
              *(v93 + 2 * a11) = 0;
              *(v93 + 3 * a11) = 0;
            }

            v100 = (v92 + v95);
            v101 = v79 + 1;
            v102 = v78[2];
            if (v78[2])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 31)
                {
                  v104 = *v100;
                  *&v26 = v100[1];
                  v105 = v100[2];
                  v106 = v100[3];
                  *v101 = vuzp1_s16(*v100, v105);
                  *(v101 + a11) = vuzp2_s16(v104, v105);
                  v107 = (v101 + v241);
                  *v107 = vuzp1_s16(*&v26, v106);
                  *&v27 = vuzp2_s16(*&v26, v106);
                  *(v107 + a11) = v27;
                  v103 = 32;
                }

                else if (v102 == 96)
                {
                  *&v27 = vdup_lane_s8(*v100, 0);
                  *v101 = v27;
                  *(v101 + a11) = v27;
                  *(v101 + 2 * a11) = v27;
                  *(v101 + 3 * a11) = v27;
                  v103 = 1;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v101, a11, v100, v102, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v101, a11, v100, v102, v81);
                v103 = 16;
              }
            }

            else
            {
              v103 = 0;
              *v101 = 0;
              *(v101 + a11) = 0;
              *(v101 + 2 * a11) = 0;
              *(v101 + 3 * a11) = 0;
            }

            v108 = (v100 + v103);
            v109 = v93 + 1;
            v110 = v78[3];
            if (v78[3])
            {
              if (v110 < 0xF0)
              {
                if (v110 == 31)
                {
                  v112 = *v108;
                  *&v26 = v108[1];
                  v113 = v108[2];
                  v114 = v108[3];
                  *v109 = vuzp1_s16(*v108, v113);
                  *(v109 + a11) = vuzp2_s16(v112, v113);
                  v115 = (v109 + v241);
                  *v115 = vuzp1_s16(*&v26, v114);
                  *&v27 = vuzp2_s16(*&v26, v114);
                  *(v115 + a11) = v27;
                  v111 = 32;
                }

                else if (v110 == 96)
                {
                  *&v27 = vdup_lane_s8(*v108, 0);
                  *v109 = v27;
                  *(v109 + a11) = v27;
                  *(v109 + 2 * a11) = v27;
                  *(v109 + 3 * a11) = v27;
                  v111 = 1;
                }

                else
                {
                  v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v109, a11, v108, v110, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v109, a11, v108, v110, v81);
                v111 = 16;
              }
            }

            else
            {
              v111 = 0;
              *v109 = 0;
              *(v109 + a11) = 0;
              *(v109 + 2 * a11) = 0;
              *(v109 + 3 * a11) = 0;
            }

            v116 = (v108 + v111);
            v117 = &v79[v222];
            v118 = v78[4];
            if (v78[4])
            {
              if (v118 < 0xF0)
              {
                if (v118 == 31)
                {
                  v120 = *v116;
                  *&v26 = v116[1];
                  v121 = v116[2];
                  v122 = v116[3];
                  *v117 = vuzp1_s16(*v116, v121);
                  *(v117 + a11) = vuzp2_s16(v120, v121);
                  v123 = (v117 + v241);
                  *v123 = vuzp1_s16(*&v26, v122);
                  *&v27 = vuzp2_s16(*&v26, v122);
                  *(v123 + a11) = v27;
                  v119 = 32;
                }

                else if (v118 == 96)
                {
                  *&v27 = vdup_lane_s8(*v116, 0);
                  *v117 = v27;
                  *(v117 + a11) = v27;
                  *(v117 + 2 * a11) = v27;
                  *(v117 + 3 * a11) = v27;
                  v119 = 1;
                }

                else
                {
                  v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v79[v222], a11, v116, v118, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v79[v222], a11, v116, v118, v81);
                v119 = 16;
              }
            }

            else
            {
              v119 = 0;
              *v117 = 0;
              *(v117 + a11) = 0;
              *(v117 + 2 * a11) = 0;
              *(v117 + 3 * a11) = 0;
            }

            v124 = (v116 + v119);
            v125 = (v79 + 12 * a11);
            v126 = v78[5];
            if (v78[5])
            {
              if (v126 < 0xF0)
              {
                if (v126 == 31)
                {
                  v128 = *v124;
                  *&v26 = v124[1];
                  v129 = v124[2];
                  v130 = v124[3];
                  *v125 = vuzp1_s16(*v124, v129);
                  *(v125 + a11) = vuzp2_s16(v128, v129);
                  v131 = (v125 + v241);
                  *v131 = vuzp1_s16(*&v26, v130);
                  *&v27 = vuzp2_s16(*&v26, v130);
                  *(v131 + a11) = v27;
                  v127 = 32;
                }

                else if (v126 == 96)
                {
                  *&v27 = vdup_lane_s8(*v124, 0);
                  *v125 = v27;
                  *(v125 + a11) = v27;
                  *(v125 + 2 * a11) = v27;
                  *(v125 + 3 * a11) = v27;
                  v127 = 1;
                }

                else
                {
                  v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v125, a11, v124, v126, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v125, a11, v124, v126, v81);
                v127 = 16;
              }
            }

            else
            {
              v127 = 0;
              *v125 = 0;
              *(v125 + a11) = 0;
              *(v125 + 2 * a11) = 0;
              *(v125 + 3 * a11) = 0;
            }

            v132 = (v124 + v127);
            v133 = v117 + 1;
            v134 = v78[6];
            if (v78[6])
            {
              if (v134 < 0xF0)
              {
                if (v134 == 31)
                {
                  v136 = *v132;
                  *&v26 = v132[1];
                  v137 = v132[2];
                  v138 = v132[3];
                  *v133 = vuzp1_s16(*v132, v137);
                  *(v133 + a11) = vuzp2_s16(v136, v137);
                  v139 = (v133 + v241);
                  *v139 = vuzp1_s16(*&v26, v138);
                  *&v27 = vuzp2_s16(*&v26, v138);
                  *(v139 + a11) = v27;
                  v135 = 32;
                }

                else if (v134 == 96)
                {
                  *&v27 = vdup_lane_s8(*v132, 0);
                  *v133 = v27;
                  *(v133 + a11) = v27;
                  *(v133 + 2 * a11) = v27;
                  *(v133 + 3 * a11) = v27;
                  v135 = 1;
                }

                else
                {
                  v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v133, a11, v132, v134, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v133, a11, v132, v134, v81);
                v135 = 16;
              }
            }

            else
            {
              v135 = 0;
              *v133 = 0;
              *(v133 + a11) = 0;
              *(v133 + 2 * a11) = 0;
              *(v133 + 3 * a11) = 0;
            }

            v140 = v125 + 1;
            v141 = v78[7];
            if (v78[7])
            {
              v142 = (v132 + v135);
              if (v141 < 0xF0)
              {
                if (v141 == 31)
                {
                  v143 = *v142;
                  *&v26 = v142[1];
                  v144 = v142[2];
                  v145 = v142[3];
                  *v140 = vuzp1_s16(*v142, v144);
                  *(v140 + a11) = vuzp2_s16(v143, v144);
                  v146 = (v140 + v241);
                  *v146 = vuzp1_s16(*&v26, v145);
                  *&v27 = vuzp2_s16(*&v26, v145);
                  *(v146 + a11) = v27;
                }

                else if (v141 == 96)
                {
                  *&v27 = vdup_lane_s8(*v142, 0);
                  *v140 = v27;
                  *(v140 + a11) = v27;
                  *(v140 + 2 * a11) = v27;
                  *(v140 + 3 * a11) = v27;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v140, a11, v142, v141, *&v27, *&v26);
                }
              }

              else
              {
                *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v140, a11, v142, v141, v81);
              }
            }

            else
            {
              *v140 = 0;
              *(v140 + a11) = 0;
              *(v140 + 2 * a11) = 0;
              *(v140 + 3 * a11) = 0;
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          block[5] = v70;
          v249 = v42;
          v250 = v239;
          v245 = v227;
          v246 = v39 - v37;
          block[6] = a4 + v64;
          v243 = v236 + v39 - a7;
          v244 = a11;
          v247 = v226;
          v248 = v41;
          if (v43)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_29:
            v36 = v34 + 1;
            goto LABEL_30;
          }

          v84 = *(a1 + 208);
          v85 = *(v84 + 52);
          v86 = *v78;
          if (*v78)
          {
            if (v86 < 0xF0)
            {
              if (v86 == 31)
              {
                v147 = *(v70 + 8);
                v148 = v70[1];
                v149 = *(v70 + 24);
                v150 = vuzp2_s16(*v70, v148);
                v252 = vuzp1_s16(*v70, v148);
                v254 = v150;
                *&v27 = vuzp1_s16(v147, v149);
                *&v26 = vuzp2_s16(v147, v149);
                v256 = v27;
                v258 = v26;
                v87 = 32;
              }

              else if (v86 == 96)
              {
                *&v27 = vdup_lane_s8(*v70, 0);
                v252 = v27;
                v254 = v27;
                v256 = v27;
                v258 = v27;
                v87 = 1;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v252, 16, v70, v86, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v252, 16, v70, v86, *(v84 + 52));
              v87 = 16;
            }
          }

          else
          {
            v87 = 0;
            v252 = 0;
            v254 = 0;
            v256 = 0;
            v258 = 0;
          }

          v151 = (v70 + v87);
          v152 = v78[1];
          if (v78[1])
          {
            if (v152 < 0xF0)
            {
              if (v152 == 31)
              {
                v154 = v151[1];
                v155 = v151[2];
                v156 = v151[3];
                v157 = vuzp2_s16(*v151, v155);
                v260 = vuzp1_s16(*v151, v155);
                v262 = v157;
                *&v27 = vuzp1_s16(v154, v156);
                *&v26 = vuzp2_s16(v154, v156);
                v264 = v27;
                v266 = v26;
                v153 = 32;
              }

              else if (v152 == 96)
              {
                *&v27 = vdup_lane_s8(*v151, 0);
                v260 = v27;
                v262 = v27;
                v264 = v27;
                v266 = v27;
                v153 = 1;
              }

              else
              {
                v153 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v260, 16, v151, v152, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v260, 16, v151, v152, v85);
              v153 = 16;
            }
          }

          else
          {
            v153 = 0;
            v260 = 0;
            v262 = 0;
            v264 = 0;
            v266 = 0;
          }

          v158 = (v151 + v153);
          v159 = v78[2];
          if (v78[2])
          {
            if (v159 < 0xF0)
            {
              if (v159 == 31)
              {
                v161 = v158[1];
                v162 = v158[2];
                v163 = v158[3];
                v164 = vuzp2_s16(*v158, v162);
                v253 = vuzp1_s16(*v158, v162);
                v255 = v164;
                *&v27 = vuzp1_s16(v161, v163);
                *&v26 = vuzp2_s16(v161, v163);
                v257 = v27;
                v259 = v26;
                v160 = 32;
              }

              else if (v159 == 96)
              {
                *&v27 = vdup_lane_s8(*v158, 0);
                v253 = v27;
                v255 = v27;
                v257 = v27;
                v259 = v27;
                v160 = 1;
              }

              else
              {
                v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v253, 16, v158, v159, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v253, 16, v158, v159, v85);
              v160 = 16;
            }
          }

          else
          {
            v160 = 0;
            v253 = 0;
            v255 = 0;
            v257 = 0;
            v259 = 0;
          }

          v165 = (v158 + v160);
          v166 = v78[3];
          if (v78[3])
          {
            if (v166 < 0xF0)
            {
              if (v166 == 31)
              {
                v168 = v165[1];
                v169 = v165[2];
                v170 = v165[3];
                v171 = vuzp2_s16(*v165, v169);
                v261 = vuzp1_s16(*v165, v169);
                v263 = v171;
                *&v27 = vuzp1_s16(v168, v170);
                *&v26 = vuzp2_s16(v168, v170);
                v265 = v27;
                v267 = v26;
                v167 = 32;
              }

              else if (v166 == 96)
              {
                *&v27 = vdup_lane_s8(*v165, 0);
                v261 = v27;
                v263 = v27;
                v265 = v27;
                v267 = v27;
                v167 = 1;
              }

              else
              {
                v167 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v261, 16, v165, v166, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v261, 16, v165, v166, v85);
              v167 = 16;
            }
          }

          else
          {
            v167 = 0;
            v261 = 0;
            v263 = 0;
            v265 = 0;
            v267 = 0;
          }

          v172 = (v165 + v167);
          v173 = v78[4];
          if (v78[4])
          {
            if (v173 < 0xF0)
            {
              if (v173 == 31)
              {
                v175 = v172[1];
                v176 = v172[2];
                v177 = v172[3];
                v178 = vuzp2_s16(*v172, v176);
                v268 = vuzp1_s16(*v172, v176);
                v270 = v178;
                *&v27 = vuzp1_s16(v175, v177);
                *&v26 = vuzp2_s16(v175, v177);
                v272 = v27;
                v274 = v26;
                v174 = 32;
              }

              else if (v173 == 96)
              {
                *&v27 = vdup_lane_s8(*v172, 0);
                v268 = v27;
                v270 = v27;
                v272 = v27;
                v274 = v27;
                v174 = 1;
              }

              else
              {
                v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v268, 16, v172, v173, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v268, 16, v172, v173, v85);
              v174 = 16;
            }
          }

          else
          {
            v174 = 0;
            v268 = 0;
            v270 = 0;
            v272 = 0;
            v274 = 0;
          }

          v179 = (v172 + v174);
          v180 = v78[5];
          if (v78[5])
          {
            if (v180 < 0xF0)
            {
              if (v180 == 31)
              {
                v182 = v179[1];
                v183 = v179[2];
                v184 = v179[3];
                v185 = vuzp2_s16(*v179, v183);
                v276 = vuzp1_s16(*v179, v183);
                v278 = v185;
                *&v27 = vuzp1_s16(v182, v184);
                *&v26 = vuzp2_s16(v182, v184);
                v280 = v27;
                v282 = v26;
                v181 = 32;
              }

              else if (v180 == 96)
              {
                *&v27 = vdup_lane_s8(*v179, 0);
                v276 = v27;
                v278 = v27;
                v280 = v27;
                v282 = v27;
                v181 = 1;
              }

              else
              {
                v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v276, 16, v179, v180, *&v27, *&v26);
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v276, 16, v179, v180, v85);
              v181 = 16;
            }
          }

          else
          {
            v181 = 0;
            v276 = 0;
            v278 = 0;
            v280 = 0;
            v282 = 0;
          }

          v186 = (v179 + v181);
          v187 = v78[6];
          if (v78[6])
          {
            if (v187 < 0xF0)
            {
              if (v187 == 31)
              {
                v197 = v186[1];
                v198 = v186[2];
                v199 = v186[3];
                v200 = vuzp2_s16(*v186, v198);
                v269 = vuzp1_s16(*v186, v198);
                v271 = v200;
                *&v27 = vuzp1_s16(v197, v199);
                *&v26 = vuzp2_s16(v197, v199);
                v273 = v27;
                v275 = v26;
                v188 = 32;
                v189 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_216;
                }
              }

              else if (v187 == 96)
              {
                *&v27 = vdup_lane_s8(*v186, 0);
                v269 = v27;
                v271 = v27;
                v273 = v27;
                v275 = v27;
                v188 = 1;
                v189 = v78[7];
                if (!v78[7])
                {
                  goto LABEL_216;
                }
              }

              else
              {
                v188 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v269, 16, v186, v187, *&v27, *&v26);
                v189 = v78[7];
                if (!v78[7])
                {
LABEL_216:
                  v277 = 0;
                  v279 = 0;
                  v281 = 0;
                  v283 = 0;
                  goto LABEL_220;
                }
              }
            }

            else
            {
              *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v269, 16, v186, v187, v85);
              v188 = 16;
              v189 = v78[7];
              if (!v78[7])
              {
                goto LABEL_216;
              }
            }
          }

          else
          {
            v188 = 0;
            v269 = 0;
            v271 = 0;
            v273 = 0;
            v275 = 0;
            v189 = v78[7];
            if (!v78[7])
            {
              goto LABEL_216;
            }
          }

          v190 = (v186 + v188);
          if (v189 < 0xF0)
          {
            if (v189 == 31)
            {
              v201 = v190[1];
              v202 = v190[2];
              v203 = v190[3];
              v204 = vuzp2_s16(*v190, v202);
              v277 = vuzp1_s16(*v190, v202);
              v279 = v204;
              *&v27 = vuzp1_s16(v201, v203);
              *&v26 = vuzp2_s16(v201, v203);
              v281 = v27;
              v283 = v26;
            }

            else if (v189 == 96)
            {
              *&v27 = vdup_lane_s8(*v190, 0);
              v277 = v27;
              v279 = v27;
              v281 = v27;
              v283 = v27;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v277, 16, v190, v189, *&v27, *&v26);
            }
          }

          else
          {
            *&v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v277, 16, v190, v189, v85);
          }

LABEL_220:
          v36 = v34 + 1;
          v191 = v247;
          if (v247 && v248)
          {
            v192 = 0;
            v193 = &v252 + 16 * v245 + v246;
            v194 = 1;
            do
            {
              if (v194)
              {
                v195 = 0;
                v196 = v243 + v244 * v192;
                do
                {
                  *(v196 + v195) = v193[v195];
                  v194 = v248;
                  ++v195;
                }

                while (v248 > v195);
                v191 = v247;
              }

              ++v192;
              v193 += 16;
            }

            while (v192 < v191);
          }

LABEL_30:
          v21 = v34 == v231 >> 4;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v221;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v157[28] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v135 = a8;
  v16 = a8 >> 4;
  v117 = a8 + a10 - 1;
  v119 = v117 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v139 = a1;
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v130 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v129 = result;
  if (v16 <= v119)
  {
    v128 = a7 + a9 - 1;
    if (a7 >> 4 <= v128 >> 4)
    {
      result = a1;
      v25 = a11;
      v138 = (a5 - 1) >> 4;
      v114 = a5 - 1;
      v122 = (a5 - 1) & 0xF;
      v115 = (a6 - 1) & 0xF;
      v116 = (a6 - 1) >> 4;
      v120 = 8 * a11;
      v121 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v127 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v126 = v27;
      v113 = 8 * v18 * v17;
      do
      {
        v28 = (16 * v16) | 0xF;
        if (16 * v16 <= v135)
        {
          v29 = v135;
        }

        else
        {
          v29 = 16 * v16;
        }

        if (v117 < v28)
        {
          v28 = v117;
        }

        v134 = 16 * v16;
        v125 = v29 - 16 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v115;
        v124 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v115 + 1;
        if (v16 != v116)
        {
          v35 = 16;
        }

        v137 = v35;
        if (v16 != v116)
        {
          v32 = v33;
        }

        v123 = v32;
        v133 = a2 + (v29 - v135) * v25;
        v36 = a7;
        do
        {
          v48 = 16 * v34;
          v49 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v50 = v36;
          }

          else
          {
            v50 = 16 * v34;
          }

          if (v128 < v49)
          {
            v49 = a7 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v34 == v138)
          {
            v53 = v122 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (v134 >= v135 && v48 >= v36)
          {
            v55 = v51 != v122;
            if (v34 != v138)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v123;
          }

          if (v129)
          {
            v76 = 0;
            v77 = v113 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 0;
                  v80 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 1;
                  v80 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v79 = 0;
                    v76 = 64;
                    v80 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 0;
                v80 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 128;
                  v80 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 0;
                v80 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 1;
                v80 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v79 = 0;
                  v76 = 32;
                  v80 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v80 = 16;
              v79 = 1;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v76 = 16;
              v79 = 1;
              v80 = 16;
            }

            else
            {
              v79 = 1;
              v80 = 0;
              if (v77 == 1024)
              {
                v80 = 8;
                v76 = 16;
              }
            }

            v103 = (v76 >> 4) - 1;
            if (v78)
            {
              v104 = 0;
              if (v79)
              {
                goto LABEL_123;
              }

LABEL_112:
              v105 = 32 - __clz(~(-1 << -__clz(((v80 + 15) >> 4) - 1)));
              if (v105 | v104)
              {
                goto LABEL_113;
              }

LABEL_124:
              v112 = 0;
            }

            else
            {
              v104 = 32 - __clz(~(-1 << -__clz(v103)));
              if ((v79 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v105 = 0;
              if (!v104)
              {
                goto LABEL_124;
              }

LABEL_113:
              v106 = 0;
              v107 = 0;
              v108 = v34 & v103;
              v109 = v104 != 0;
              v110 = v105 != 0;
              v111 = 1;
              do
              {
                --v104;
                if (v109)
                {
                  v107 |= (v111 & v108) << v106++;
                }

                else
                {
                  v104 = 0;
                }

                --v105;
                if (v110)
                {
                  v107 |= (v111 & v16 & ((v80 >> 4) - 1)) << v106++;
                }

                else
                {
                  v105 = 0;
                }

                v111 *= 2;
                --v106;
                v110 = v105 != 0;
                v109 = v104 != 0;
              }

              while (v105 | v104);
              v112 = v107 << 9;
              result = v139;
            }

            v63 = v112 + ((v48 / v76 + v134 / v80 * ((v76 + v114) / v76)) << 14);
            goto LABEL_56;
          }

          if (v127)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v59 = v126.i8[0];
            v60 = v126.i8[4];
            v62 = v127.i32[0];
            v61 = v127.i32[1];
            do
            {
              --v61;
              if (v60)
              {
                v57 |= (v58 & v34) << v56++;
              }

              else
              {
                v61 = 0;
              }

              --v62;
              if (v59)
              {
                v57 |= (v58 & v16) << v56++;
              }

              else
              {
                v62 = 0;
              }

              v58 *= 2;
              --v56;
              v59 = v62 != 0;
              v60 = v61 != 0;
            }

            while (v62 | v61);
            v63 = v57 << 9;
          }

          else
          {
            v63 = 0;
          }

LABEL_56:
          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 15;
          if (v65 < 0x20)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 4) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 15;
          if (v68 < 0x20)
          {
            v69 = 0;
            if (!v66)
            {
LABEL_81:
              v75 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 4) - 1)));
            if (!(v69 | v66))
            {
              goto LABEL_81;
            }
          }

          v70 = 0;
          v71 = 0;
          v72 = v66 != 0;
          v73 = v69 != 0;
          v74 = 1;
          do
          {
            --v66;
            if (v72)
            {
              v71 |= (v74 & v34) << v70++;
            }

            else
            {
              v66 = 0;
            }

            --v69;
            if (v73)
            {
              v71 |= (v74 & v16) << v70++;
            }

            else
            {
              v69 = 0;
            }

            v74 *= 2;
            --v70;
            v73 = v69 != 0;
            v72 = v66 != 0;
          }

          while (v69 | v66);
          v75 = 8 * v71;
LABEL_82:
          v81 = (a3 + v63);
          if (v130)
          {
            v82 = v52;
            v83 = v25;
            v84 = v53;
            v85 = v50;
            v86 = v54;
            memcpy(__dst, (a3 + v63), sizeof(__dst));
            v54 = v86;
            v50 = v85;
            v48 = 16 * v34;
            v53 = v84;
            v25 = v83;
            v52 = v82;
            result = v139;
            v81 = __dst;
          }

          v87 = (a4 + v75);
          v88 = v133 + 4 * (v50 - v36);
          if (!(v54 & 1 | (v53 < 0x10u)) && v137 > 0xF)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v133 + 4 * (v50 - v36), v25, v81, *v87, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v121, v25, v38, v87[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + 32, v25, v39, v87[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v121 + 32, v25, v40, v87[3], v37);
            v42 = v88 + v120;
            v43 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v88 + v120, v25, v41, v87[4], v37);
            v44 = v88 + 12 * a11;
            v45 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44, v25, v43, v87[5], v37);
            v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v42 + 32, v25, v45, v87[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v44 + 32, v25, v45 + v46, v87[7], v37);
LABEL_29:
            v36 = a7;
            v47 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v81;
          v147 = v53;
          v148 = v137;
          v143 = v125;
          v144 = v50 - v48;
          block[6] = v87;
          v141 = v133 + 4 * (v50 - v36);
          v142 = v25;
          v145 = v124;
          v146 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v89 = *(*(result + 208) + 52);
          v90 = &v81[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v150, 64, v81, *v87, v89)];
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v152, 64, v90, v87[1], v89);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v151, 64, v91, v87[2], v89);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 64, v92, v87[3], v89);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 64, v93, v87[4], v89);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v156, 64, v94, v87[5], v89);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v155, 64, v95, v87[6], v89);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v157, 64, v95 + v96, v87[7], v89);
          v97 = v145;
          v36 = a7;
          v47 = v34 + 1;
          if (v145)
          {
            v98 = 0;
            v99 = &v150[64 * v143 + 4 * v144];
            v100 = v146;
            do
            {
              if (v100)
              {
                v101 = 0;
                v102 = v141 + v142 * v98;
                do
                {
                  *(v102 + v101) = v99[v101];
                  ++v101;
                  v100 = v146;
                }

                while (4 * v146 > v101);
                v97 = v145;
              }

              ++v98;
              v99 += 64;
            }

            while (v98 < v97);
          }

LABEL_30:
          v20 = v34 == v128 >> 4;
          v34 = v47;
          result = v139;
        }

        while (!v20);
        v20 = v16++ == v119;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v382 = a8;
  v16 = a8 >> 4;
  v363 = a8 + a10 - 1;
  v365 = v363 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v386 = a1;
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v377 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v376 = result;
  if (v16 <= v365)
  {
    v375 = a7 + a9 - 1;
    if (a7 >> 4 <= v375 >> 4)
    {
      result = a1;
      v25 = a11;
      v385 = (a5 - 1) >> 4;
      v360 = a5 - 1;
      v369 = (a5 - 1) & 0xF;
      v361 = (a6 - 1) & 0xF;
      v362 = (a6 - 1) >> 4;
      v367 = 8 * a11;
      v368 = 4 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v374 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v373 = v27;
      v359 = 8 * v18 * v17;
      v387 = 3 * a11;
      v366 = 2 * a11;
      do
      {
        v28 = (16 * v16) | 0xF;
        if (16 * v16 <= v382)
        {
          v29 = v382;
        }

        else
        {
          v29 = 16 * v16;
        }

        if (v363 < v28)
        {
          v28 = v363;
        }

        v381 = 16 * v16;
        v372 = v29 - 16 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v361;
        v371 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v361 + 1;
        if (v16 != v362)
        {
          v35 = 16;
        }

        v384 = v35;
        if (v16 != v362)
        {
          v32 = v33;
        }

        v370 = v32;
        v380 = a2 + (v29 - v382) * v25;
        v36 = a7;
        do
        {
          v38 = 16 * v34;
          v39 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v40 = v36;
          }

          else
          {
            v40 = 16 * v34;
          }

          if (v375 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v34 == v385)
          {
            v43 = v369 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v381 >= v382 && v38 >= v36)
          {
            v45 = v41 != v369;
            if (v34 != v385)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v370;
          }

          if (v376)
          {
            v66 = 0;
            v67 = v359 >> (*(result + 57) != 0);
            v68 = 1;
            if (v67 <= 63)
            {
              if (v67 > 15)
              {
                if (v67 == 16)
                {
                  v68 = 0;
                  v69 = 0;
                  v70 = 64;
                  v66 = 128;
                }

                else
                {
                  v69 = 1;
                  v70 = 0;
                  if (v67 == 32)
                  {
                    v68 = 0;
                    v69 = 0;
                    v66 = 64;
                    v70 = 64;
                  }
                }
              }

              else if (v67 == 4)
              {
                v68 = 0;
                v69 = 0;
                v70 = 128;
                v66 = 256;
              }

              else
              {
                v69 = 1;
                v70 = 0;
                if (v67 == 8)
                {
                  v68 = 0;
                  v69 = 0;
                  v66 = 128;
                  v70 = 128;
                }
              }
            }

            else if (v67 <= 255)
            {
              if (v67 == 64)
              {
                v68 = 0;
                v69 = 0;
                v70 = 32;
                v66 = 64;
              }

              else
              {
                v69 = 1;
                v70 = 0;
                if (v67 == 128)
                {
                  v68 = 0;
                  v69 = 0;
                  v66 = 32;
                  v70 = 32;
                }
              }
            }

            else if (v67 == 256)
            {
              v68 = 0;
              v70 = 16;
              v69 = 1;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v66 = 16;
              v69 = 1;
              v70 = 16;
            }

            else
            {
              v69 = 1;
              v70 = 0;
              if (v67 == 1024)
              {
                v70 = 8;
                v66 = 16;
              }
            }

            v349 = (v66 >> 4) - 1;
            if (v68)
            {
              v350 = 0;
              if (v69)
              {
                goto LABEL_270;
              }

LABEL_259:
              v351 = 32 - __clz(~(-1 << -__clz(((v70 + 15) >> 4) - 1)));
              if (v351 | v350)
              {
                goto LABEL_260;
              }

LABEL_271:
              v358 = 0;
            }

            else
            {
              v350 = 32 - __clz(~(-1 << -__clz(v349)));
              if ((v69 & 1) == 0)
              {
                goto LABEL_259;
              }

LABEL_270:
              v351 = 0;
              if (!v350)
              {
                goto LABEL_271;
              }

LABEL_260:
              v352 = 0;
              v353 = 0;
              v354 = v34 & v349;
              v355 = v350 != 0;
              v356 = v351 != 0;
              v357 = 1;
              do
              {
                --v350;
                if (v355)
                {
                  v353 |= (v357 & v354) << v352++;
                }

                else
                {
                  v350 = 0;
                }

                --v351;
                if (v356)
                {
                  v353 |= (v357 & v16 & ((v70 >> 4) - 1)) << v352++;
                }

                else
                {
                  v351 = 0;
                }

                v357 *= 2;
                --v352;
                v356 = v351 != 0;
                v355 = v350 != 0;
              }

              while (v351 | v350);
              v358 = v353 << 9;
              result = v386;
            }

            v53 = v358 + ((v38 / v66 + v381 / v70 * ((v66 + v360) / v66)) << 14);
            goto LABEL_57;
          }

          if (v374)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v373.i8[4];
            v50 = v373.i8[0];
            v51 = v374.i32[1];
            v52 = v374.i32[0];
            do
            {
              --v51;
              if (v49)
              {
                v47 |= (v48 & v34) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v50)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v52 = 0;
              }

              v48 *= 2;
              --v46;
              v50 = v52 != 0;
              v49 = v51 != 0;
            }

            while (v52 | v51);
            v53 = v47 << 9;
          }

          else
          {
            v53 = 0;
          }

LABEL_57:
          v54 = *(result + 128) >> (*(result + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 15;
          if (v55 < 0x20)
          {
            v56 = 0;
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 4) - 1)));
          }

          v57 = *(result + 132) >> (*(result + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 15;
          if (v58 < 0x20)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_82:
              v65 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 4) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_82;
            }
          }

          v60 = 0;
          v61 = 0;
          v62 = v56 != 0;
          v63 = v59 != 0;
          v64 = 1;
          do
          {
            --v56;
            if (v62)
            {
              v61 |= (v64 & v34) << v60++;
            }

            else
            {
              v56 = 0;
            }

            --v59;
            if (v63)
            {
              v61 |= (v64 & v16) << v60++;
            }

            else
            {
              v59 = 0;
            }

            v64 *= 2;
            --v60;
            v63 = v59 != 0;
            v62 = v56 != 0;
          }

          while (v59 | v56);
          v65 = 8 * v61;
LABEL_83:
          v71 = (a3 + v53);
          if (v377)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v386;
            v71 = __dst;
          }

          v72 = (a4 + v65);
          v73 = (v380 + 4 * (v40 - v36));
          if (!(v44 & 1 | (v43 < 0x10u)) && v384 > 0xF)
          {
            v74 = *(result + 208);
            v75 = *(v74 + 52);
            v76 = *v72;
            if (*v72)
            {
              v25 = a11;
              v77 = 2 * a11;
              if (v76 < 0xF0)
              {
                if (v76 == 127)
                {
                  v91 = *v71;
                  v92 = v71[1];
                  v93 = v71[2];
                  v94 = v71[3];
                  v95 = v71[4];
                  v96 = v71[5];
                  v97 = v71[6];
                  v98 = v71[7];
                  *v73 = vzip1q_s64(*v71, v92);
                  v73[1] = vzip1q_s64(v95, v96);
                  v99 = (v73 + v366);
                  v100 = (v73 + a11);
                  *v100 = vzip2q_s64(v91, v92);
                  v100[1] = vzip2q_s64(v95, v96);
                  *v99 = vzip1q_s64(v93, v94);
                  v99[1] = vzip1q_s64(v97, v98);
                  v101 = (v73 + v366 + a11);
                  *v101 = vzip2q_s64(v93, v94);
                  v101[1] = vzip2q_s64(v97, v98);
                  v78 = 128;
                }

                else if (v76 == 3)
                {
                  v86 = vld1q_dup_f32(v71->i32);
                  *v73 = v86;
                  v73[1] = v86;
                  v87 = &v73->i8[a11];
                  *v87 = v86;
                  v87[1] = v86;
                  v88 = &v73->i8[v366];
                  *v88 = v86;
                  v88[1] = v86;
                  v89 = &v73->i8[v387];
                  *v89 = v86;
                  v89[1] = v86;
                  v78 = 4;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v73, a11, v71, v76);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v73, a11, v71, v76, *(v74 + 52));
                v78 = 64;
              }
            }

            else
            {
              v78 = 0;
              *v73 = 0u;
              v73[1] = 0u;
              v25 = a11;
              v83 = &v73->i8[a11];
              *v83 = 0u;
              *(v83 + 1) = 0u;
              v77 = 2 * a11;
              v84 = &v73->i8[v366];
              *v84 = 0u;
              *(v84 + 1) = 0u;
              v85 = &v73->i8[v387];
              *v85 = 0u;
              *(v85 + 1) = 0u;
            }

            v102 = v71->i64 + v78;
            v103 = (v73 + v368);
            v104 = v72[1];
            if (v72[1])
            {
              if (v104 < 0xF0)
              {
                if (v104 == 127)
                {
                  v113 = *v102;
                  v114 = *(v102 + 16);
                  v115 = *(v102 + 32);
                  v116 = *(v102 + 48);
                  v117 = *(v102 + 64);
                  v118 = *(v102 + 80);
                  v119 = *(v102 + 96);
                  v120 = *(v102 + 112);
                  *v103 = vzip1q_s64(*v102, v114);
                  v103[1] = vzip1q_s64(v117, v118);
                  v121 = (v103 + v77);
                  v122 = (v103 + v25);
                  *v122 = vzip2q_s64(v113, v114);
                  v122[1] = vzip2q_s64(v117, v118);
                  *v121 = vzip1q_s64(v115, v116);
                  v121[1] = vzip1q_s64(v119, v120);
                  v123 = (v103 + v77 + v25);
                  *v123 = vzip2q_s64(v115, v116);
                  v123[1] = vzip2q_s64(v119, v120);
                  v105 = 128;
                }

                else if (v104 == 3)
                {
                  v109 = vld1q_dup_f32(v102);
                  *v103 = v109;
                  v103[1] = v109;
                  v110 = &v103->i8[v25];
                  *v110 = v109;
                  v110[1] = v109;
                  v111 = &v103->i8[v77];
                  *v111 = v109;
                  v111[1] = v109;
                  v112 = &v103->i8[v387];
                  *v112 = v109;
                  v112[1] = v109;
                  v105 = 4;
                }

                else
                {
                  v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v368), v25, v102, v104);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v73->i8[v368], v25, v102, v104, v75);
                v105 = 64;
              }
            }

            else
            {
              v105 = 0;
              *v103 = 0u;
              v103[1] = 0u;
              v106 = &v103->i8[v25];
              *v106 = 0u;
              *(v106 + 1) = 0u;
              v107 = &v103->i8[v77];
              *v107 = 0u;
              *(v107 + 1) = 0u;
              v108 = &v103->i8[v387];
              *v108 = 0u;
              *(v108 + 1) = 0u;
            }

            v124 = v102 + v105;
            v125 = v73 + 2;
            v126 = v72[2];
            if (v72[2])
            {
              if (v126 < 0xF0)
              {
                if (v126 == 127)
                {
                  v135 = *v124;
                  v136 = *(v124 + 16);
                  v137 = *(v124 + 32);
                  v138 = *(v124 + 48);
                  v139 = *(v124 + 64);
                  v140 = *(v124 + 80);
                  v141 = *(v124 + 96);
                  v142 = *(v124 + 112);
                  *v125 = vzip1q_s64(*v124, v136);
                  v73[3] = vzip1q_s64(v139, v140);
                  v143 = (v125 + v77);
                  v144 = (v125 + v25);
                  *v144 = vzip2q_s64(v135, v136);
                  v144[1] = vzip2q_s64(v139, v140);
                  *v143 = vzip1q_s64(v137, v138);
                  v143[1] = vzip1q_s64(v141, v142);
                  v145 = (v125 + v77 + v25);
                  *v145 = vzip2q_s64(v137, v138);
                  v145[1] = vzip2q_s64(v141, v142);
                  v127 = 128;
                }

                else if (v126 == 3)
                {
                  v131 = vld1q_dup_f32(v124);
                  v73[2] = v131;
                  v73[3] = v131;
                  v132 = &v125->i8[v25];
                  *v132 = v131;
                  v132[1] = v131;
                  v133 = &v125->i8[v77];
                  *v133 = v131;
                  v133[1] = v131;
                  v134 = &v125->i8[v387];
                  *v134 = v131;
                  v134[1] = v131;
                  v127 = 4;
                }

                else
                {
                  v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v125, v25, v124, v126);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v125, v25, v124, v126, v75);
                v127 = 64;
              }
            }

            else
            {
              v127 = 0;
              *v125 = 0u;
              v73[3] = 0u;
              v128 = &v125->i8[v25];
              *v128 = 0u;
              *(v128 + 1) = 0u;
              v129 = &v125->i8[v77];
              *v129 = 0u;
              *(v129 + 1) = 0u;
              v130 = &v125->i8[v387];
              *v130 = 0u;
              *(v130 + 1) = 0u;
            }

            v146 = v124 + v127;
            v147 = v103 + 2;
            v148 = v72[3];
            if (v72[3])
            {
              if (v148 < 0xF0)
              {
                if (v148 == 127)
                {
                  v157 = *v146;
                  v158 = *(v146 + 16);
                  v159 = *(v146 + 32);
                  v160 = *(v146 + 48);
                  v161 = *(v146 + 64);
                  v162 = *(v146 + 80);
                  v163 = *(v146 + 96);
                  v164 = *(v146 + 112);
                  *v147 = vzip1q_s64(*v146, v158);
                  v103[3] = vzip1q_s64(v161, v162);
                  v165 = (v147 + v77);
                  v166 = (v147 + v25);
                  *v166 = vzip2q_s64(v157, v158);
                  v166[1] = vzip2q_s64(v161, v162);
                  *v165 = vzip1q_s64(v159, v160);
                  v165[1] = vzip1q_s64(v163, v164);
                  v167 = (v147 + v77 + v25);
                  *v167 = vzip2q_s64(v159, v160);
                  v167[1] = vzip2q_s64(v163, v164);
                  v149 = 128;
                }

                else if (v148 == 3)
                {
                  v153 = vld1q_dup_f32(v146);
                  v103[2] = v153;
                  v103[3] = v153;
                  v154 = &v147->i8[v25];
                  *v154 = v153;
                  v154[1] = v153;
                  v155 = &v147->i8[v77];
                  *v155 = v153;
                  v155[1] = v153;
                  v156 = &v147->i8[v387];
                  *v156 = v153;
                  v156[1] = v153;
                  v149 = 4;
                }

                else
                {
                  v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v147, v25, v146, v148);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v147, v25, v146, v148, v75);
                v149 = 64;
              }
            }

            else
            {
              v149 = 0;
              *v147 = 0u;
              v103[3] = 0u;
              v150 = &v147->i8[v25];
              *v150 = 0u;
              *(v150 + 1) = 0u;
              v151 = &v147->i8[v77];
              *v151 = 0u;
              *(v151 + 1) = 0u;
              v152 = &v147->i8[v387];
              *v152 = 0u;
              *(v152 + 1) = 0u;
            }

            v168 = v146 + v149;
            v169 = (v73 + v367);
            v170 = v72[4];
            if (v72[4])
            {
              if (v170 < 0xF0)
              {
                if (v170 == 127)
                {
                  v179 = *v168;
                  v180 = *(v168 + 16);
                  v181 = *(v168 + 32);
                  v182 = *(v168 + 48);
                  v183 = *(v168 + 64);
                  v184 = *(v168 + 80);
                  v185 = *(v168 + 96);
                  v186 = *(v168 + 112);
                  *v169 = vzip1q_s64(*v168, v180);
                  v169[1] = vzip1q_s64(v183, v184);
                  v187 = (v169 + v77);
                  v188 = (v169 + v25);
                  *v188 = vzip2q_s64(v179, v180);
                  v188[1] = vzip2q_s64(v183, v184);
                  *v187 = vzip1q_s64(v181, v182);
                  v187[1] = vzip1q_s64(v185, v186);
                  v189 = (v169 + v77 + v25);
                  *v189 = vzip2q_s64(v181, v182);
                  v189[1] = vzip2q_s64(v185, v186);
                  v171 = 128;
                }

                else if (v170 == 3)
                {
                  v175 = vld1q_dup_f32(v168);
                  *v169 = v175;
                  v169[1] = v175;
                  v176 = &v169->i8[v25];
                  *v176 = v175;
                  v176[1] = v175;
                  v177 = &v169->i8[v77];
                  *v177 = v175;
                  v177[1] = v175;
                  v178 = &v169->i8[v387];
                  *v178 = v175;
                  v178[1] = v175;
                  v171 = 4;
                }

                else
                {
                  v171 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v367), v25, v168, v170);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v73->i8[v367], v25, v168, v170, v75);
                v171 = 64;
              }
            }

            else
            {
              v171 = 0;
              *v169 = 0u;
              v169[1] = 0u;
              v172 = &v169->i8[v25];
              *v172 = 0u;
              *(v172 + 1) = 0u;
              v173 = &v169->i8[v77];
              *v173 = 0u;
              *(v173 + 1) = 0u;
              v174 = &v169->i8[v387];
              *v174 = 0u;
              *(v174 + 1) = 0u;
            }

            v190 = v168 + v171;
            v191 = (v73 + 12 * a11);
            v192 = v72[5];
            if (v72[5])
            {
              if (v192 < 0xF0)
              {
                if (v192 == 127)
                {
                  v201 = *v190;
                  v202 = *(v190 + 16);
                  v203 = *(v190 + 32);
                  v204 = *(v190 + 48);
                  v205 = *(v190 + 64);
                  v206 = *(v190 + 80);
                  v207 = *(v190 + 96);
                  v208 = *(v190 + 112);
                  *v191 = vzip1q_s64(*v190, v202);
                  v191[1] = vzip1q_s64(v205, v206);
                  v209 = (v191 + v77);
                  v210 = (v191 + v25);
                  *v210 = vzip2q_s64(v201, v202);
                  v210[1] = vzip2q_s64(v205, v206);
                  *v209 = vzip1q_s64(v203, v204);
                  v209[1] = vzip1q_s64(v207, v208);
                  v211 = (v191 + v77 + v25);
                  *v211 = vzip2q_s64(v203, v204);
                  v211[1] = vzip2q_s64(v207, v208);
                  v193 = 128;
                }

                else if (v192 == 3)
                {
                  v197 = vld1q_dup_f32(v190);
                  *v191 = v197;
                  v191[1] = v197;
                  v198 = &v191->i8[v25];
                  *v198 = v197;
                  v198[1] = v197;
                  v199 = &v191->i8[v77];
                  *v199 = v197;
                  v199[1] = v197;
                  v200 = &v191->i8[v387];
                  *v200 = v197;
                  v200[1] = v197;
                  v193 = 4;
                }

                else
                {
                  v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v191, v25, v190, v192);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v191, v25, v190, v192, v75);
                v193 = 64;
              }
            }

            else
            {
              v193 = 0;
              *v191 = 0u;
              v191[1] = 0u;
              v194 = &v191->i8[v25];
              *v194 = 0u;
              *(v194 + 1) = 0u;
              v195 = &v191->i8[v77];
              *v195 = 0u;
              *(v195 + 1) = 0u;
              v196 = &v191->i8[v387];
              *v196 = 0u;
              *(v196 + 1) = 0u;
            }

            v212 = v190 + v193;
            v213 = v169 + 2;
            v214 = v72[6];
            if (v72[6])
            {
              if (v214 < 0xF0)
              {
                if (v214 == 127)
                {
                  v223 = *v212;
                  v224 = *(v212 + 16);
                  v225 = *(v212 + 32);
                  v226 = *(v212 + 48);
                  v227 = *(v212 + 64);
                  v228 = *(v212 + 80);
                  v229 = *(v212 + 96);
                  v230 = *(v212 + 112);
                  *v213 = vzip1q_s64(*v212, v224);
                  v169[3] = vzip1q_s64(v227, v228);
                  v231 = (v213 + v77);
                  v232 = (v213 + v25);
                  *v232 = vzip2q_s64(v223, v224);
                  v232[1] = vzip2q_s64(v227, v228);
                  *v231 = vzip1q_s64(v225, v226);
                  v231[1] = vzip1q_s64(v229, v230);
                  v233 = (v213 + v77 + v25);
                  *v233 = vzip2q_s64(v225, v226);
                  v233[1] = vzip2q_s64(v229, v230);
                  v215 = 128;
                }

                else if (v214 == 3)
                {
                  v219 = vld1q_dup_f32(v212);
                  v169[2] = v219;
                  v169[3] = v219;
                  v220 = &v213->i8[v25];
                  *v220 = v219;
                  v220[1] = v219;
                  v221 = &v213->i8[v77];
                  *v221 = v219;
                  v221[1] = v219;
                  v222 = &v213->i8[v387];
                  *v222 = v219;
                  v222[1] = v219;
                  v215 = 4;
                }

                else
                {
                  v215 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v213, v25, v212, v214);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v213, v25, v212, v214, v75);
                v215 = 64;
              }
            }

            else
            {
              v215 = 0;
              *v213 = 0u;
              v169[3] = 0u;
              v216 = &v213->i8[v25];
              *v216 = 0u;
              *(v216 + 1) = 0u;
              v217 = &v213->i8[v77];
              *v217 = 0u;
              *(v217 + 1) = 0u;
              v218 = &v213->i8[v387];
              *v218 = 0u;
              *(v218 + 1) = 0u;
            }

            v234 = v191 + 2;
            v235 = v72[7];
            if (v72[7])
            {
              v236 = v212 + v215;
              if (v235 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v234, v25, v236, v235, v75);
              }

              else if (v235 == 127)
              {
                v241 = *v236;
                v242 = *(v236 + 16);
                v243 = *(v236 + 32);
                v244 = *(v236 + 48);
                v245 = *(v236 + 64);
                v246 = *(v236 + 80);
                v247 = *(v236 + 96);
                v248 = *(v236 + 112);
                *v234 = vzip1q_s64(*v236, v242);
                v191[3] = vzip1q_s64(v245, v246);
                v249 = (v234 + v77);
                v250 = (v234 + v25);
                *v250 = vzip2q_s64(v241, v242);
                v250[1] = vzip2q_s64(v245, v246);
                *v249 = vzip1q_s64(v243, v244);
                v249[1] = vzip1q_s64(v247, v248);
                v251 = (v234 + v77 + v25);
                *v251 = vzip2q_s64(v243, v244);
                v251[1] = vzip2q_s64(v247, v248);
              }

              else
              {
                if (v235 == 3)
                {
                  v237 = vld1q_dup_f32(v236);
                  v191[2] = v237;
                  v191[3] = v237;
                  goto LABEL_165;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v234, v25, v236, v235);
              }
            }

            else
            {
              v237 = 0uLL;
              *v234 = 0u;
              v191[3] = 0u;
LABEL_165:
              v238 = &v234->i8[v25];
              *v238 = v237;
              v238[1] = v237;
              v239 = &v234->i8[v77];
              *v239 = v237;
              v239[1] = v237;
              v240 = &v234->i8[v387];
              *v240 = v237;
              v240[1] = v237;
            }

            v36 = a7;
            result = v386;
LABEL_30:
            v37 = v34 + 1;
            goto LABEL_31;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v395 = v43;
          v396 = v384;
          v391 = v372;
          v392 = v40 - v38;
          block[6] = v72;
          v389 = v73;
          v25 = a11;
          v390 = a11;
          v393 = v371;
          v394 = v42;
          if (v44)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v386;
            v36 = a7;
            goto LABEL_30;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v72;
          v36 = a7;
          if (*v72)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 127)
              {
                v252 = *v71;
                v253 = v71[1];
                v254 = v71[2];
                v255 = v71[3];
                v256 = v71[4];
                v257 = v71[5];
                v258 = v71[6];
                v259 = v71[7];
                v398 = vzip1q_s64(*v71, v253);
                v399 = vzip1q_s64(v256, v257);
                v402 = vzip2q_s64(v252, v253);
                v403 = vzip2q_s64(v256, v257);
                v406 = vzip1q_s64(v254, v255);
                v407 = vzip1q_s64(v258, v259);
                v410 = vzip2q_s64(v254, v255);
                v411 = vzip2q_s64(v258, v259);
                v82 = 128;
              }

              else if (v81 == 3)
              {
                v90 = vld1q_dup_f32(v71->i32);
                v398 = v90;
                v399 = v90;
                v402 = v90;
                v403 = v90;
                v406 = v90;
                v407 = v90;
                v410 = v90;
                v411 = v90;
                v82 = 4;
              }

              else
              {
                v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v398, 64, v71, v81);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v398, 64, v71, v81, *(v79 + 52));
              v82 = 64;
            }
          }

          else
          {
            v82 = 0;
            v399 = 0u;
            v398 = 0u;
            v402 = 0u;
            v403 = 0u;
            v406 = 0u;
            v407 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v260 = v71->i64 + v82;
          v261 = v72[1];
          if (v72[1])
          {
            if (v261 < 0xF0)
            {
              if (v261 == 127)
              {
                v264 = *v260;
                v265 = *(v260 + 16);
                v266 = *(v260 + 32);
                v267 = *(v260 + 48);
                v268 = *(v260 + 64);
                v269 = *(v260 + 80);
                v270 = *(v260 + 96);
                v271 = *(v260 + 112);
                v414 = vzip1q_s64(*v260, v265);
                v415 = vzip1q_s64(v268, v269);
                v418 = vzip2q_s64(v264, v265);
                v419 = vzip2q_s64(v268, v269);
                v422 = vzip1q_s64(v266, v267);
                v423 = vzip1q_s64(v270, v271);
                v426 = vzip2q_s64(v266, v267);
                v427 = vzip2q_s64(v270, v271);
                v262 = 128;
              }

              else if (v261 == 3)
              {
                v263 = vld1q_dup_f32(v260);
                v414 = v263;
                v415 = v263;
                v418 = v263;
                v419 = v263;
                v422 = v263;
                v423 = v263;
                v426 = v263;
                v427 = v263;
                v262 = 4;
              }

              else
              {
                v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v414, 64, v260, v261);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v414, 64, v260, v261, v80);
              v262 = 64;
            }
          }

          else
          {
            v262 = 0;
            v414 = 0u;
            v415 = 0u;
            v418 = 0u;
            v419 = 0u;
            v422 = 0u;
            v423 = 0u;
            v426 = 0u;
            v427 = 0u;
          }

          v272 = v260 + v262;
          v273 = v72[2];
          if (v72[2])
          {
            if (v273 < 0xF0)
            {
              if (v273 == 127)
              {
                v276 = *v272;
                v277 = *(v272 + 16);
                v278 = *(v272 + 32);
                v279 = *(v272 + 48);
                v280 = *(v272 + 64);
                v281 = *(v272 + 80);
                v282 = *(v272 + 96);
                v283 = *(v272 + 112);
                v400 = vzip1q_s64(*v272, v277);
                v401 = vzip1q_s64(v280, v281);
                v404 = vzip2q_s64(v276, v277);
                v405 = vzip2q_s64(v280, v281);
                v408 = vzip1q_s64(v278, v279);
                v409 = vzip1q_s64(v282, v283);
                v412 = vzip2q_s64(v278, v279);
                v413 = vzip2q_s64(v282, v283);
                v274 = 128;
              }

              else if (v273 == 3)
              {
                v275 = vld1q_dup_f32(v272);
                v400 = v275;
                v401 = v275;
                v404 = v275;
                v405 = v275;
                v408 = v275;
                v409 = v275;
                v412 = v275;
                v413 = v275;
                v274 = 4;
              }

              else
              {
                v274 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v400, 64, v272, v273);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v400, 64, v272, v273, v80);
              v274 = 64;
            }
          }

          else
          {
            v274 = 0;
            v400 = 0u;
            v401 = 0u;
            v404 = 0u;
            v405 = 0u;
            v408 = 0u;
            v409 = 0u;
            v412 = 0u;
            v413 = 0u;
          }

          v284 = v272 + v274;
          v285 = v72[3];
          if (v72[3])
          {
            if (v285 < 0xF0)
            {
              if (v285 == 127)
              {
                v288 = *v284;
                v289 = *(v284 + 16);
                v290 = *(v284 + 32);
                v291 = *(v284 + 48);
                v292 = *(v284 + 64);
                v293 = *(v284 + 80);
                v294 = *(v284 + 96);
                v295 = *(v284 + 112);
                v416 = vzip1q_s64(*v284, v289);
                v417 = vzip1q_s64(v292, v293);
                v420 = vzip2q_s64(v288, v289);
                v421 = vzip2q_s64(v292, v293);
                v424 = vzip1q_s64(v290, v291);
                v425 = vzip1q_s64(v294, v295);
                v428 = vzip2q_s64(v290, v291);
                v429 = vzip2q_s64(v294, v295);
                v286 = 128;
              }

              else if (v285 == 3)
              {
                v287 = vld1q_dup_f32(v284);
                v416 = v287;
                v417 = v287;
                v420 = v287;
                v421 = v287;
                v424 = v287;
                v425 = v287;
                v428 = v287;
                v429 = v287;
                v286 = 4;
              }

              else
              {
                v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v416, 64, v284, v285);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v416, 64, v284, v285, v80);
              v286 = 64;
            }
          }

          else
          {
            v286 = 0;
            v416 = 0u;
            v417 = 0u;
            v420 = 0u;
            v421 = 0u;
            v424 = 0u;
            v425 = 0u;
            v428 = 0u;
            v429 = 0u;
          }

          v296 = v284 + v286;
          v297 = v72[4];
          if (v72[4])
          {
            if (v297 < 0xF0)
            {
              if (v297 == 127)
              {
                v300 = *v296;
                v301 = *(v296 + 16);
                v302 = *(v296 + 32);
                v303 = *(v296 + 48);
                v304 = *(v296 + 64);
                v305 = *(v296 + 80);
                v306 = *(v296 + 96);
                v307 = *(v296 + 112);
                v430 = vzip1q_s64(*v296, v301);
                v431 = vzip1q_s64(v304, v305);
                v434 = vzip2q_s64(v300, v301);
                v435 = vzip2q_s64(v304, v305);
                v438 = vzip1q_s64(v302, v303);
                v439 = vzip1q_s64(v306, v307);
                v442 = vzip2q_s64(v302, v303);
                v443 = vzip2q_s64(v306, v307);
                v298 = 128;
              }

              else if (v297 == 3)
              {
                v299 = vld1q_dup_f32(v296);
                v430 = v299;
                v431 = v299;
                v434 = v299;
                v435 = v299;
                v438 = v299;
                v439 = v299;
                v442 = v299;
                v443 = v299;
                v298 = 4;
              }

              else
              {
                v298 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v430, 64, v296, v297);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v430, 64, v296, v297, v80);
              v298 = 64;
            }
          }

          else
          {
            v298 = 0;
            v430 = 0u;
            v431 = 0u;
            v434 = 0u;
            v435 = 0u;
            v438 = 0u;
            v439 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v308 = v296 + v298;
          v309 = v72[5];
          if (v72[5])
          {
            if (v309 < 0xF0)
            {
              if (v309 == 127)
              {
                v312 = *v308;
                v313 = *(v308 + 16);
                v314 = *(v308 + 32);
                v315 = *(v308 + 48);
                v316 = *(v308 + 64);
                v317 = *(v308 + 80);
                v318 = *(v308 + 96);
                v319 = *(v308 + 112);
                v446 = vzip1q_s64(*v308, v313);
                v447 = vzip1q_s64(v316, v317);
                v450 = vzip2q_s64(v312, v313);
                v451 = vzip2q_s64(v316, v317);
                v454 = vzip1q_s64(v314, v315);
                v455 = vzip1q_s64(v318, v319);
                v458 = vzip2q_s64(v314, v315);
                v459 = vzip2q_s64(v318, v319);
                v310 = 128;
              }

              else if (v309 == 3)
              {
                v311 = vld1q_dup_f32(v308);
                v446 = v311;
                v447 = v311;
                v450 = v311;
                v451 = v311;
                v454 = v311;
                v455 = v311;
                v458 = v311;
                v459 = v311;
                v310 = 4;
              }

              else
              {
                v310 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v446, 64, v308, v309);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v446, 64, v308, v309, v80);
              v310 = 64;
            }
          }

          else
          {
            v310 = 0;
            v446 = 0u;
            v447 = 0u;
            v450 = 0u;
            v451 = 0u;
            v454 = 0u;
            v455 = 0u;
            v458 = 0u;
            v459 = 0u;
          }

          v320 = v308 + v310;
          v321 = v72[6];
          if (v72[6])
          {
            if (v321 < 0xF0)
            {
              if (v321 == 127)
              {
                v327 = *v320;
                v328 = *(v320 + 16);
                v329 = *(v320 + 32);
                v330 = *(v320 + 48);
                v331 = *(v320 + 64);
                v332 = *(v320 + 80);
                v333 = *(v320 + 96);
                v334 = *(v320 + 112);
                v432 = vzip1q_s64(*v320, v328);
                v433 = vzip1q_s64(v331, v332);
                v436 = vzip2q_s64(v327, v328);
                v437 = vzip2q_s64(v331, v332);
                v440 = vzip1q_s64(v329, v330);
                v441 = vzip1q_s64(v333, v334);
                v444 = vzip2q_s64(v329, v330);
                v445 = vzip2q_s64(v333, v334);
                v322 = 128;
                v323 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v321 == 3)
              {
                v325 = vld1q_dup_f32(v320);
                v432 = v325;
                v433 = v325;
                v436 = v325;
                v437 = v325;
                v440 = v325;
                v441 = v325;
                v444 = v325;
                v445 = v325;
                v322 = 4;
                v323 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v322 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v432, 64, v320, v321);
                v323 = v72[7];
                if (!v72[7])
                {
LABEL_218:
                  v448 = 0u;
                  v449 = 0u;
                  v452 = 0u;
                  v453 = 0u;
                  v456 = 0u;
                  v457 = 0u;
                  v460 = 0u;
                  v461 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v432, 64, v320, v321, v80);
              v322 = 64;
              v323 = v72[7];
              if (!v72[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v322 = 0;
            v432 = 0u;
            v433 = 0u;
            v436 = 0u;
            v437 = 0u;
            v440 = 0u;
            v441 = 0u;
            v444 = 0u;
            v445 = 0u;
            v323 = v72[7];
            if (!v72[7])
            {
              goto LABEL_218;
            }
          }

          v324 = v320 + v322;
          if (v323 < 0xF0)
          {
            if (v323 == 127)
            {
              v335 = *v324;
              v336 = *(v324 + 16);
              v337 = *(v324 + 32);
              v338 = *(v324 + 48);
              v339 = *(v324 + 64);
              v340 = *(v324 + 80);
              v341 = *(v324 + 96);
              v342 = *(v324 + 112);
              v448 = vzip1q_s64(*v324, v336);
              v449 = vzip1q_s64(v339, v340);
              v452 = vzip2q_s64(v335, v336);
              v453 = vzip2q_s64(v339, v340);
              v456 = vzip1q_s64(v337, v338);
              v457 = vzip1q_s64(v341, v342);
              v460 = vzip2q_s64(v337, v338);
              v461 = vzip2q_s64(v341, v342);
            }

            else if (v323 == 3)
            {
              v326 = vld1q_dup_f32(v324);
              v448 = v326;
              v449 = v326;
              v452 = v326;
              v453 = v326;
              v456 = v326;
              v457 = v326;
              v460 = v326;
              v461 = v326;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v448, 64, v324, v323);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v448, 64, v324, v323, v80);
          }

LABEL_235:
          result = v386;
          v37 = v34 + 1;
          v343 = v393;
          if (v393)
          {
            v344 = 0;
            v345 = &v398.i8[64 * v391 + 4 * v392];
            v346 = v394;
            do
            {
              if (v346)
              {
                v347 = 0;
                v348 = v389->i64 + v390 * v344;
                do
                {
                  *(v348 + v347) = v345[v347];
                  ++v347;
                  v346 = v394;
                }

                while (4 * v394 > v347);
                v343 = v393;
              }

              ++v344;
              v345 += 64;
            }

            while (v344 < v343);
          }

LABEL_31:
          v20 = v34 == v375 >> 4;
          v34 = v37;
        }

        while (!v20);
        v20 = v16++ == v365;
      }

      while (!v20);
    }
  }

  return result;
}