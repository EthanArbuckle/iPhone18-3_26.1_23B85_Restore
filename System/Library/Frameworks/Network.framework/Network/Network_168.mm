uint64_t ZSTD_compressBlock_doubleFast_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = a4;
  if ((*(a1 + 272) - 5) >= 3)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 272);
  }

  v8 = &a4[a5];
  v9 = *(a1 + 8);
  v10 = a4 + a5 - v9;
  v11 = 1 << *(a1 + 256);
  v13 = *(a1 + 24);
  v12 = *(a1 + 28);
  v14 = v10 - v12 > v11;
  LODWORD(v15) = v10 - v11;
  if (v14 && *(a1 + 40) == 0)
  {
    v15 = v15;
  }

  else
  {
    v15 = v12;
  }

  if (v13 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  if (v15 >= v13)
  {

    return ZSTD_compressBlock_doubleFast(a1, a2, a3, a4, a5);
  }

  v18 = v8 - 8;
  v19 = *a3;
  v20 = a3[1];
  if (v8 - 8 <= a4)
  {
    goto LABEL_454;
  }

  v258 = a3;
  v263 = (v9 + v17);
  v21 = *(a1 + 16);
  v22 = *(a1 + 112);
  v23 = *(a1 + 264);
  v24 = *(a1 + 260);
  v264 = 64 - v24;
  v25 = *(a1 + 128);
  v262 = 32 - v24;
  v266 = 64 - v23;
  v265 = v17 - 1;
  v26 = v8 - 7;
  v261 = v8 - 3;
  v260 = v8 - 1;
  v27 = (v8 - 32);
  v28 = v17 + v9 + 8;
  while (2)
  {
    v29 = v20;
    v30 = v19;
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v31 = *v6;
        v32 = -1157627904;
        goto LABEL_28;
      }

      if (v7 == 6)
      {
        v31 = *v6;
        v32 = -1080360960;
LABEL_28:
        v33 = v31 * (v32 | 0xCF1BBCDC00000000);
        goto LABEL_29;
      }

LABEL_25:
      v34 = (-1640531535 * *v6) >> v262;
      v31 = *v6;
      goto LABEL_30;
    }

    if (v7 == 7)
    {
      v31 = *v6;
      v32 = -1079680256;
      goto LABEL_28;
    }

    if (v7 != 8)
    {
      goto LABEL_25;
    }

    v31 = *v6;
    v33 = 0xCF1BBCDCB7A56463 * *v6;
LABEL_29:
    v34 = v33 >> v264;
LABEL_30:
    v35 = *(v25 + 4 * v34);
    if (v35 >= v17)
    {
      v36 = v9;
    }

    else
    {
      v36 = v21;
    }

    v37 = (0xCF1BBCDCB7A56463 * v31) >> v266;
    v38 = *(v22 + 4 * v37);
    if (v38 >= v17)
    {
      v39 = v9;
    }

    else
    {
      v39 = v21;
    }

    v40 = v6 - v9;
    v41 = v6 - v9 + 1;
    v42 = (v41 - v30);
    if (v42 >= v17)
    {
      v43 = v9;
    }

    else
    {
      v43 = v21;
    }

    *(v22 + 4 * v37) = v40;
    *(v25 + 4 * v34) = v40;
    if (v30 > v41 - v15 || (v265 - v42) < 3 || (v44 = v43 + v42, v45 = v6 + 1, v27 = (v8 - 32), *(v43 + v42) != *(v6 + 1)))
    {
      if (v38 > v15)
      {
        v56 = v39 + v38;
        if (*(v39 + v38) == v31)
        {
          if (v38 >= v17)
          {
            v57 = v8;
          }

          else
          {
            v57 = (v21 + v17);
          }

          v58 = v21 + v15;
          if (v38 >= v17)
          {
            v58 = v9 + v17;
          }

          v59 = (v6 + 8);
          v60 = (v56 + 8);
          if ((v57 + v6 - v56) >= v8)
          {
            v61 = v8;
          }

          else
          {
            v61 = v57 + v6 - v56;
          }

          if (v61 - 7 <= v59)
          {
            v62 = (v56 + 8);
            v64 = (v6 + 8);
          }

          else
          {
            if (*v60 != *v59)
            {
              v67 = __clz(__rbit64(*v59 ^ *v60)) >> 3;
              goto LABEL_141;
            }

            v62 = (v39 + v38 + 16);
            v63 = (v6 + 16);
            while (1)
            {
              v64 = v63;
              if (v63 >= (v61 - 7))
              {
                break;
              }

              v66 = *v62;
              v62 += 4;
              v65 = v66;
              v63 += 8;
              if (v66 != *v64)
              {
                v67 = &v64[__clz(__rbit64(*v64 ^ v65)) >> 3] - v59;
                v27 = (v8 - 32);
                goto LABEL_141;
              }
            }

            v27 = (v8 - 32);
          }

          if (v64 < v61 - 3 && *v62 == *v64)
          {
            v62 += 2;
            v64 += 4;
          }

          if (v64 < v61 - 1 && *v62 == *v64)
          {
            ++v62;
            v64 += 2;
          }

          if (v64 < v61 && *v62 == *v64)
          {
            ++v64;
          }

          v67 = v64 - v59;
LABEL_141:
          if ((v60 + v67) != v57)
          {
            v18 = v8 - 8;
LABEL_224:
            v145 = v67 + 8;
            if (v56 > v58 && v6 > a4)
            {
              v146 = v6 - 1;
              v147 = (v39 + v38 - 1);
              while (*v146 == *v147)
              {
                ++v145;
                v148 = v146 - 1;
                if (v147 > v58)
                {
                  --v147;
                  v14 = v146-- > a4;
                  if (v14)
                  {
                    continue;
                  }
                }

                v6 = v148 + 1;
                goto LABEL_232;
              }

              v6 = v146 + 1;
            }

LABEL_232:
            v45 = v6;
            v149 = v6 - a4;
            v150 = *(a2 + 24);
            if (v6 <= v27)
            {
              *v150 = *a4;
              v157 = *(a2 + 24);
              if (v149 <= 0x10)
              {
                *(a2 + 24) = v157 + v149;
                v134 = *(a2 + 8);
                v162 = (v40 - v38);
                goto LABEL_362;
              }

              *(v157 + 16) = *(a4 + 1);
              if (v149 >= 33)
              {
                v158 = v157 + v149;
                v159 = (v157 + 32);
                v160 = (a4 + 48);
                do
                {
                  *v159 = *(v160 - 1);
                  v161 = *v160;
                  v160 += 2;
                  v159[1] = v161;
                  v159 += 2;
                }

                while (v159 < v158);
              }

              goto LABEL_308;
            }

            if (a4 <= v27)
            {
              v151 = (v150 + v27 - a4);
              *v150 = *a4;
              if (v27 - a4 >= 17)
              {
                v152 = v150 + 1;
                v153 = (a4 + 32);
                do
                {
                  *v152 = *(v153 - 1);
                  v154 = *v153;
                  v153 += 2;
                  v152[1] = v154;
                  v152 += 2;
                }

                while (v152 < v151);
              }

              a4 = v27;
              v150 = v151;
            }

            if (a4 >= v6)
            {
LABEL_308:
              *(a2 + 24) += v149;
              v134 = *(a2 + 8);
              if (v149 >= 0x10000)
              {
                v190 = (v134 - *a2) >> 3;
                *(a2 + 72) = 1;
                *(a2 + 76) = v190;
              }

              v162 = (v40 - v38);
              goto LABEL_362;
            }

            v155 = v6 - a4;
            if ((v6 - a4) < 8)
            {
              v163 = v150;
            }

            else if ((v150 - a4) < 0x20)
            {
              v163 = v150;
            }

            else
            {
              if (v155 < 0x20)
              {
                v156 = 0;
LABEL_255:
                v168 = v155 & 0xFFFFFFFFFFFFFFF8;
                v163 = v150 + (v155 & 0xFFFFFFFFFFFFFFF8);
                v169 = v156 - (v155 & 0xFFFFFFFFFFFFFFF8);
                v170 = &a4[v156];
                v171 = (v150 + v156);
                do
                {
                  v172 = *v170;
                  v170 += 8;
                  *v171++ = v172;
                  v169 += 8;
                }

                while (v169);
                if (v155 == v168)
                {
                  goto LABEL_308;
                }

                a4 += v168;
                goto LABEL_307;
              }

              v156 = v155 & 0xFFFFFFFFFFFFFFE0;
              v164 = (a4 + 16);
              v165 = v150 + 1;
              v166 = v155 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v167 = *v164;
                *(v165 - 1) = *(v164 - 1);
                *v165 = v167;
                v164 += 2;
                v165 += 2;
                v166 -= 32;
              }

              while (v166);
              if (v155 == v156)
              {
                goto LABEL_308;
              }

              if ((v155 & 0x18) != 0)
              {
                goto LABEL_255;
              }

              a4 += v156;
              v163 = v150 + v156;
            }

            do
            {
LABEL_307:
              v189 = *a4++;
              *v163++ = v189;
            }

            while (a4 != v6);
            goto LABEL_308;
          }

          v105 = &v59[v67];
          if (v26 <= &v59[v67])
          {
            v107 = (v9 + v17);
            v108 = &v59[v67];
            v18 = v8 - 8;
          }

          else
          {
            if (*v263 != *v105)
            {
              v111 = __clz(__rbit64(*v105 ^ *v263)) >> 3;
              v18 = v8 - 8;
LABEL_223:
              v67 += v111;
              goto LABEL_224;
            }

            v106 = &v6[v67 + 16];
            v107 = (v17 + v9 + 8);
            v18 = v8 - 8;
            while (1)
            {
              v108 = v106;
              if (v106 >= v26)
              {
                break;
              }

              v110 = *v107;
              v107 += 4;
              v109 = v110;
              v106 += 8;
              if (v110 != *v108)
              {
                v111 = &v108[__clz(__rbit64(*v108 ^ v109)) >> 3] - v105;
                v27 = (v8 - 32);
                goto LABEL_223;
              }
            }

            v27 = (v8 - 32);
          }

          if (v108 < v261 && *v107 == *v108)
          {
            v107 += 2;
            v108 += 4;
          }

          if (v108 < v260 && *v107 == *v108)
          {
            ++v107;
            v108 += 2;
          }

          if (v108 < v8 && *v107 == *v108)
          {
            ++v108;
          }

          v111 = v108 - v105;
          goto LABEL_223;
        }
      }

      if (v35 <= v15 || (v68 = v36 + v35, *(v36 + v35) != *v6))
      {
        v6 += ((v6 - a4) >> 8) + 1;
        v20 = v29;
        v19 = v30;
        goto LABEL_17;
      }

      v45 = v6 + 1;
      v69 = *(v6 + 1);
      v70 = (0xCF1BBCDCB7A56463 * v69) >> v266;
      v71 = *(v22 + 4 * v70);
      if (v71 >= v17)
      {
        v72 = v9;
      }

      else
      {
        v72 = v21;
      }

      *(v22 + 4 * v70) = v41;
      if (v71 > v15)
      {
        v73 = v72 + v71;
        if (*(v72 + v71) == v69)
        {
          v257 = v72;
          if (v71 >= v17)
          {
            v74 = v8;
          }

          else
          {
            v74 = (v21 + v17);
          }

          v75 = v21 + v15;
          if (v71 >= v17)
          {
            v75 = v9 + v17;
          }

          v76 = (v6 + 9);
          v259 = v72 + v71;
          v77 = (v73 + 8);
          if ((v74 + (v6 + 9) - v73 - 8) >= v8)
          {
            v78 = v8;
          }

          else
          {
            v78 = v74 + (v6 + 9) - v73 - 8;
          }

          if (v78 - 7 <= v76)
          {
            v79 = (v73 + 8);
            v81 = v6 + 9;
          }

          else
          {
            if (*v77 != *v76)
            {
              v84 = __clz(__rbit64(*v76 ^ *v77)) >> 3;
              goto LABEL_291;
            }

            v79 = (v257 + v71 + 16);
            v80 = (v6 + 17);
            while (1)
            {
              v81 = v80;
              if (v80 >= v78 - 7)
              {
                break;
              }

              v83 = *v79;
              v79 += 4;
              v82 = v83;
              v80 += 8;
              if (v83 != *v81)
              {
                v84 = v81 + (__clz(__rbit64(*v81 ^ v82)) >> 3) - v76;
                v18 = v8 - 8;
                v27 = (v8 - 32);
                goto LABEL_291;
              }
            }

            v18 = v8 - 8;
          }

          if (v81 < v78 - 3 && *v79 == *v81)
          {
            v79 += 2;
            v81 = (v81 + 4);
          }

          if (v81 < v78 - 1 && *v79 == *v81)
          {
            ++v79;
            v81 = (v81 + 2);
          }

          v27 = (v8 - 32);
          if (v81 < v78 && *v79 == *v81)
          {
            v81 = (v81 + 1);
          }

          v84 = v81 - v76;
LABEL_291:
          if ((v77 + v84) != v74)
          {
LABEL_323:
            v145 = v84 + 8;
            v162 = (v41 - v71);
            if (v259 > v75 && v45 > a4)
            {
              v191 = (v257 + v71 - 1);
              while (*v6 == *v191)
              {
                ++v145;
                v173 = v6 - 1;
                if (v191 > v75)
                {
                  --v191;
                  v14 = v6-- > a4;
                  if (v14)
                  {
                    continue;
                  }
                }

                goto LABEL_329;
              }

              v45 = v6 + 1;
            }

            goto LABEL_331;
          }

          v176 = &v76[v84];
          if (v26 <= v176)
          {
            v183 = (v9 + v17);
            v184 = v176;
          }

          else
          {
            if (*v263 != *v176)
            {
              v182 = __clz(__rbit64(*v176 ^ *v263)) >> 3;
LABEL_322:
              v84 += v182;
              goto LABEL_323;
            }

            v177 = 0;
            v178 = &v6[v84];
            while (1)
            {
              v179 = &v178[v177 + 17];
              if (v179 >= v26)
              {
                break;
              }

              v180 = *(v28 + v177);
              v181 = *v179;
              v177 += 8;
              if (v180 != v181)
              {
                v182 = &v178[v177 + 9 + (__clz(__rbit64(v181 ^ v180)) >> 3)] - v176;
                goto LABEL_322;
              }
            }

            v183 = (v28 + v177);
            v184 = &v6[v84 + 17 + v177];
          }

          if (v184 < v261 && *v183 == *v184)
          {
            ++v183;
            v184 += 4;
          }

          if (v184 < v260 && *v183 == *v184)
          {
            v183 = (v183 + 2);
            v184 += 2;
          }

          if (v184 < v8 && *v183 == *v184)
          {
            ++v184;
          }

          v182 = v184 - v176;
          goto LABEL_322;
        }
      }

      if (v35 >= v17)
      {
        v85 = v8;
      }

      else
      {
        v85 = (v21 + v17);
      }

      v86 = v21 + v15;
      if (v35 >= v17)
      {
        v86 = v9 + v17;
      }

      v87 = (v6 + 4);
      v88 = (v68 + 4);
      if ((v85 + v6 - v68) >= v8)
      {
        v89 = v8;
      }

      else
      {
        v89 = v85 + v6 - v68;
      }

      if (v89 - 7 <= v87)
      {
        v90 = (v68 + 4);
        v92 = (v6 + 4);
      }

      else
      {
        if (*v88 != *v87)
        {
          v95 = __clz(__rbit64(*v87 ^ *v88)) >> 3;
          goto LABEL_164;
        }

        v90 = (v36 + v35 + 12);
        v91 = (v6 + 12);
        while (1)
        {
          v92 = v91;
          if (v91 >= (v89 - 7))
          {
            break;
          }

          v94 = *v90;
          v90 += 4;
          v93 = v94;
          v91 += 8;
          if (v94 != *v92)
          {
            v95 = &v92[__clz(__rbit64(*v92 ^ v93)) >> 3] - v87;
            v18 = v8 - 8;
            v27 = (v8 - 32);
            goto LABEL_164;
          }
        }

        v18 = v8 - 8;
      }

      if (v92 < v89 - 3 && *v90 == *v92)
      {
        v90 += 2;
        v92 += 4;
      }

      if (v92 < v89 - 1 && *v90 == *v92)
      {
        ++v90;
        v92 += 2;
      }

      v27 = (v8 - 32);
      if (v92 < v89 && *v90 == *v92)
      {
        ++v92;
      }

      v95 = v92 - v87;
LABEL_164:
      if ((v88 + v95) != v85)
      {
LABEL_272:
        v145 = v95 + 4;
        v162 = (v40 - v35);
        if (v68 <= v86 || v6 <= a4)
        {
          v45 = v6;
        }

        else
        {
          v173 = v6 - 1;
          v174 = (v36 + v35 - 1);
          while (*v173 == *v174)
          {
            ++v145;
            v175 = v173 - 1;
            if (v174 > v86)
            {
              --v174;
              v14 = v173-- > a4;
              if (v14)
              {
                continue;
              }
            }

            v45 = v175 + 1;
            goto LABEL_331;
          }

LABEL_329:
          v45 = v173 + 1;
        }

LABEL_331:
        v149 = v45 - a4;
        v192 = *(a2 + 24);
        if (v45 <= v27)
        {
          *v192 = *a4;
          v199 = *(a2 + 24);
          if (v149 <= 0x10)
          {
            *(a2 + 24) = v199 + v149;
            v134 = *(a2 + 8);
            goto LABEL_362;
          }

          *(v199 + 16) = *(a4 + 1);
          if (v149 >= 33)
          {
            v200 = v199 + v149;
            v201 = (v199 + 32);
            v202 = (a4 + 48);
            do
            {
              *v201 = *(v202 - 1);
              v203 = *v202;
              v202 += 2;
              v201[1] = v203;
              v201 += 2;
            }

            while (v201 < v200);
          }

          goto LABEL_360;
        }

        if (a4 <= v27)
        {
          v193 = (v192 + v27 - a4);
          *v192 = *a4;
          if (v27 - a4 >= 17)
          {
            v194 = v192 + 1;
            v195 = (a4 + 32);
            do
            {
              *v194 = *(v195 - 1);
              v196 = *v195;
              v195 += 2;
              v194[1] = v196;
              v194 += 2;
            }

            while (v194 < v193);
          }

          a4 = v27;
          v192 = v193;
        }

        if (a4 < v45)
        {
          v197 = v45 - a4;
          if ((v45 - a4) < 8)
          {
            v204 = v192;
            goto LABEL_359;
          }

          if ((v192 - a4) < 0x20)
          {
            v204 = v192;
            goto LABEL_359;
          }

          if (v197 >= 0x20)
          {
            v198 = v197 & 0xFFFFFFFFFFFFFFE0;
            v205 = (a4 + 16);
            v206 = v192 + 1;
            v207 = v197 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v208 = *v205;
              *(v206 - 1) = *(v205 - 1);
              *v206 = v208;
              v205 += 2;
              v206 += 2;
              v207 -= 32;
            }

            while (v207);
            if (v197 == v198)
            {
              goto LABEL_360;
            }

            if ((v197 & 0x18) == 0)
            {
              a4 += v198;
              v204 = v192 + v198;
              do
              {
LABEL_359:
                v214 = *a4++;
                *v204++ = v214;
              }

              while (a4 != v45);
              goto LABEL_360;
            }
          }

          else
          {
            v198 = 0;
          }

          v209 = v197 & 0xFFFFFFFFFFFFFFF8;
          v204 = v192 + (v197 & 0xFFFFFFFFFFFFFFF8);
          v210 = v198 - (v197 & 0xFFFFFFFFFFFFFFF8);
          v211 = &a4[v198];
          v212 = (v192 + v198);
          do
          {
            v213 = *v211;
            v211 += 8;
            *v212++ = v213;
            v210 += 8;
          }

          while (v210);
          if (v197 != v209)
          {
            a4 += v209;
            goto LABEL_359;
          }
        }

LABEL_360:
        *(a2 + 24) += v149;
        v134 = *(a2 + 8);
        if (v149 >= 0x10000)
        {
          v215 = (v134 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v215;
        }

LABEL_362:
        *(v134 + 4) = v149;
        *v134 = v162 + 3;
        v187 = v145 - 3;
        v29 = v30;
        v30 = v162;
        if (!((v145 - 3) >> 16))
        {
          goto LABEL_364;
        }

        goto LABEL_363;
      }

      v112 = &v87[v95];
      if (v26 <= v112)
      {
        v119 = (v9 + v17);
        v120 = v112;
      }

      else
      {
        if (*v263 != *v112)
        {
          v118 = __clz(__rbit64(*v112 ^ *v263)) >> 3;
LABEL_271:
          v95 += v118;
          goto LABEL_272;
        }

        v113 = 0;
        v114 = &v6[v95];
        while (1)
        {
          v115 = &v114[v113 + 12];
          if (v115 >= v26)
          {
            break;
          }

          v116 = *(v28 + v113);
          v117 = *v115;
          v113 += 8;
          if (v116 != v117)
          {
            v118 = &v114[v113 + 4 + (__clz(__rbit64(v117 ^ v116)) >> 3)] - v112;
            goto LABEL_271;
          }
        }

        v119 = (v28 + v113);
        v120 = &v6[v95 + 12 + v113];
      }

      if (v120 < v261 && *v119 == *v120)
      {
        ++v119;
        v120 += 4;
      }

      if (v120 < v260 && *v119 == *v120)
      {
        v119 = (v119 + 2);
        v120 += 2;
      }

      if (v120 < v8 && *v119 == *v120)
      {
        ++v120;
      }

      v118 = v120 - v112;
      goto LABEL_271;
    }

    if (v42 >= v17)
    {
      v46 = v8;
    }

    else
    {
      v46 = (v21 + v17);
    }

    v47 = (v6 + 5);
    v48 = (v44 + 4);
    if ((v46 + (v6 + 5) - v44 - 4) >= v8)
    {
      v49 = v8;
    }

    else
    {
      v49 = v46 + (v6 + 5) - v44 - 4;
    }

    if (v49 - 7 <= v47)
    {
      v50 = (v44 + 4);
      v52 = v6 + 5;
    }

    else
    {
      if (*v48 != *v47)
      {
        v55 = __clz(__rbit64(*v47 ^ *v48)) >> 3;
        goto LABEL_121;
      }

      v50 = (v43 + v42 + 12);
      v51 = (v6 + 13);
      while (1)
      {
        v52 = v51;
        if (v51 >= v49 - 7)
        {
          break;
        }

        v54 = *v50;
        v50 += 4;
        v53 = v54;
        v51 += 8;
        if (v54 != *v52)
        {
          v55 = v52 + (__clz(__rbit64(*v52 ^ v53)) >> 3) - v47;
          v27 = (v8 - 32);
          goto LABEL_121;
        }
      }

      v27 = (v8 - 32);
    }

    if (v52 < v49 - 3 && *v50 == *v52)
    {
      v50 += 2;
      v52 = (v52 + 4);
    }

    if (v52 < v49 - 1 && *v50 == *v52)
    {
      ++v50;
      v52 = (v52 + 2);
    }

    if (v52 < v49 && *v50 == *v52)
    {
      v52 = (v52 + 1);
    }

    v55 = v52 - v47;
LABEL_121:
    if ((v48 + v55) != v46)
    {
      goto LABEL_184;
    }

    v96 = &v47[v55];
    if (v26 <= v96)
    {
      v103 = (v9 + v17);
      v104 = v96;
LABEL_173:
      if (v104 < v261 && *v103 == *v104)
      {
        ++v103;
        v104 += 4;
      }

      if (v104 < v260 && *v103 == *v104)
      {
        v103 = (v103 + 2);
        v104 += 2;
      }

      if (v104 < v8 && *v103 == *v104)
      {
        ++v104;
      }

      v102 = v104 - v96;
      goto LABEL_183;
    }

    if (*v263 == *v96)
    {
      v97 = 0;
      v98 = &v6[v55];
      while (1)
      {
        v99 = &v98[v97 + 13];
        if (v99 >= v26)
        {
          break;
        }

        v100 = *(v28 + v97);
        v101 = *v99;
        v97 += 8;
        if (v100 != v101)
        {
          v102 = &v98[v97 + 5 + (__clz(__rbit64(v101 ^ v100)) >> 3)] - v96;
          goto LABEL_183;
        }
      }

      v103 = (v28 + v97);
      v104 = &v6[v55 + 13 + v97];
      goto LABEL_173;
    }

    v102 = __clz(__rbit64(*v96 ^ *v263)) >> 3;
LABEL_183:
    v55 += v102;
LABEL_184:
    v121 = v45 - a4;
    v122 = *(a2 + 24);
    if (v45 <= v27)
    {
      *v122 = *a4;
      v129 = *(a2 + 24);
      if (v121 <= 0x10)
      {
        *(a2 + 24) = v129 + v121;
        v134 = *(a2 + 8);
        goto LABEL_304;
      }

      *(v129 + 16) = *(a4 + 1);
      if (v121 >= 33)
      {
        v130 = v129 + v121;
        v131 = (v129 + 32);
        v132 = (a4 + 48);
        do
        {
          *v131 = *(v132 - 1);
          v133 = *v132;
          v132 += 2;
          v131[1] = v133;
          v131 += 2;
        }

        while (v131 < v130);
      }
    }

    else
    {
      if (a4 <= v27)
      {
        v123 = (v122 + v27 - a4);
        *v122 = *a4;
        if (v27 - a4 >= 17)
        {
          v124 = v122 + 1;
          v125 = (a4 + 32);
          do
          {
            *v124 = *(v125 - 1);
            v126 = *v125;
            v125 += 2;
            v124[1] = v126;
            v124 += 2;
          }

          while (v124 < v123);
        }

        a4 = v27;
        v122 = v123;
      }

      if (a4 >= v45)
      {
        goto LABEL_302;
      }

      v127 = v45 - a4;
      if ((v45 - a4) < 8)
      {
        v135 = v122;
        goto LABEL_301;
      }

      if ((v122 - a4) < 0x20)
      {
        v135 = v122;
        goto LABEL_301;
      }

      if (v127 >= 0x20)
      {
        v128 = v127 & 0xFFFFFFFFFFFFFFE0;
        v136 = (a4 + 16);
        v137 = v122 + 1;
        v138 = v127 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v139 = *v136;
          *(v137 - 1) = *(v136 - 1);
          *v137 = v139;
          v136 += 2;
          v137 += 2;
          v138 -= 32;
        }

        while (v138);
        if (v127 == v128)
        {
          goto LABEL_302;
        }

        if ((v127 & 0x18) == 0)
        {
          a4 += v128;
          v135 = v122 + v128;
          do
          {
LABEL_301:
            v185 = *a4++;
            *v135++ = v185;
          }

          while (a4 != v45);
          goto LABEL_302;
        }
      }

      else
      {
        v128 = 0;
      }

      v140 = v127 & 0xFFFFFFFFFFFFFFF8;
      v135 = v122 + (v127 & 0xFFFFFFFFFFFFFFF8);
      v141 = v128 - (v127 & 0xFFFFFFFFFFFFFFF8);
      v142 = &a4[v128];
      v143 = (v122 + v128);
      do
      {
        v144 = *v142;
        v142 += 8;
        *v143++ = v144;
        v141 += 8;
      }

      while (v141);
      if (v127 != v140)
      {
        a4 += v140;
        goto LABEL_301;
      }
    }

LABEL_302:
    *(a2 + 24) += v121;
    v134 = *(a2 + 8);
    if (v121 >= 0x10000)
    {
      v186 = (v134 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v186;
    }

LABEL_304:
    v145 = v55 + 4;
    *(v134 + 4) = v121;
    *v134 = 1;
    v187 = v55 + 1;
    v188 = (v55 + 1) >> 16;
    v162 = v30;
    if (v188)
    {
LABEL_363:
      v216 = (v134 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v216;
      v30 = v162;
    }

LABEL_364:
    *(v134 + 6) = v187;
    v217 = v134 + 8;
    *(a2 + 8) = v134 + 8;
    a4 = &v45[v145];
    if (&v45[v145] > v18)
    {
      v20 = v29;
      v19 = v30;
      v6 = &v45[v145];
      goto LABEL_17;
    }

    v218 = v40 + 2;
    v219 = *(v9 + (v40 + 2));
    v220 = 0xCF1BBCDCB7A56463 * v219;
    *(v22 + 4 * ((0xCF1BBCDCB7A56463 * v219) >> v266)) = v40 + 2;
    *(v22 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v266)) = a4 - 2 - v9;
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v221 = -1079680256;
        goto LABEL_376;
      }

      if (v7 == 8)
      {
        v222 = v264;
        *(v25 + 4 * (v220 >> v264)) = v218;
        v223 = a4 - 1;
        v224 = 0xCF1BBCDCB7A56463 * *(a4 - 1);
LABEL_377:
        v225 = v224 >> v222;
        goto LABEL_378;
      }
    }

    else
    {
      if (v7 == 5)
      {
        v221 = -1157627904;
        goto LABEL_376;
      }

      if (v7 == 6)
      {
        v221 = -1080360960;
LABEL_376:
        v226 = v221 | 0xCF1BBCDC00000000;
        v227 = v219 * v226;
        v222 = v264;
        *(v25 + 4 * (v227 >> v264)) = v218;
        v223 = a4 - 1;
        v224 = *(a4 - 1) * v226;
        goto LABEL_377;
      }
    }

    *(v25 + 4 * ((-1640531535 * *(v9 + v218)) >> v262)) = v218;
    v223 = a4 - 1;
    v225 = (-1640531535 * *(a4 - 1)) >> v262;
LABEL_378:
    *(v25 + 4 * v225) = v223 - v9;
    while (1)
    {
      v19 = v29;
      v29 = v30;
      v230 = a4 - v9;
      v231 = (a4 - v9 - v19);
      v232 = v231 >= v17 ? v9 : v21;
      if (v19 > v230 - v15)
      {
        break;
      }

      if ((v265 - v231) < 3)
      {
        break;
      }

      v233 = v232 + v231;
      if (*(v232 + v231) != *a4)
      {
        break;
      }

      if (v231 >= v17)
      {
        v234 = v8;
      }

      else
      {
        v234 = (v21 + v17);
      }

      v235 = (a4 + 4);
      v236 = (v233 + 4);
      if ((v234 + a4 - v233) >= v8)
      {
        v237 = v8;
      }

      else
      {
        v237 = v234 + a4 - v233;
      }

      if (v237 - 7 <= v235)
      {
        v238 = v236;
        v240 = a4 + 4;
      }

      else
      {
        if (*v236 != *v235)
        {
          v243 = __clz(__rbit64(*v235 ^ *v236)) >> 3;
          v27 = (v8 - 32);
          goto LABEL_412;
        }

        v238 = (v232 + v231 + 12);
        v239 = (a4 + 12);
        while (1)
        {
          v240 = v239;
          if (v239 >= (v237 - 7))
          {
            break;
          }

          v242 = *v238;
          v238 += 4;
          v241 = v242;
          v239 += 8;
          if (v242 != *v240)
          {
            v243 = v240 + (__clz(__rbit64(*v240 ^ v241)) >> 3) - v235;
            v27 = (v8 - 32);
            goto LABEL_412;
          }
        }

        v27 = (v8 - 32);
      }

      if (v240 < (v237 - 3) && *v238 == *v240)
      {
        v238 += 2;
        v240 = (v240 + 4);
      }

      if (v240 < (v237 - 1) && *v238 == *v240)
      {
        ++v238;
        v240 = (v240 + 2);
      }

      if (v240 < v237 && *v238 == *v240)
      {
        v240 = (v240 + 1);
      }

      v243 = v240 - v235;
LABEL_412:
      if ((v236 + v243) != v234)
      {
        if (a4 > v27)
        {
          goto LABEL_415;
        }

LABEL_414:
        **(a2 + 24) = *a4;
        v217 = *(a2 + 8);
        goto LABEL_415;
      }

      v247 = &v235[v243];
      if (v26 <= v247)
      {
        v254 = (v9 + v17);
        v255 = v247;
      }

      else
      {
        if (*v263 != *v247)
        {
          v253 = __clz(__rbit64(*v247 ^ *v263)) >> 3;
          goto LABEL_447;
        }

        v248 = 0;
        v249 = &a4[v243];
        while (1)
        {
          v250 = &v249[v248 + 12];
          if (v250 >= v26)
          {
            break;
          }

          v251 = *(v28 + v248);
          v252 = *v250;
          v248 += 8;
          if (v251 != v252)
          {
            v253 = &v249[v248 + 4 + (__clz(__rbit64(v252 ^ v251)) >> 3)] - v247;
            goto LABEL_447;
          }
        }

        v254 = (v28 + v248);
        v255 = &a4[v243 + 12 + v248];
      }

      if (v255 < v261 && *v254 == *v255)
      {
        ++v254;
        v255 += 4;
      }

      if (v255 < v260 && *v254 == *v255)
      {
        v254 = (v254 + 2);
        v255 += 2;
      }

      if (v255 < v8 && *v254 == *v255)
      {
        ++v255;
      }

      v253 = v255 - v247;
LABEL_447:
      v243 += v253;
      if (a4 <= v27)
      {
        goto LABEL_414;
      }

LABEL_415:
      *(v217 + 4) = 0;
      *v217 = 1;
      if (v243 + 1 >= 0x10000)
      {
        v244 = (v217 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v244;
      }

      *(v217 + 6) = v243 + 1;
      v217 += 8;
      *(a2 + 8) = v217;
      if (v7 > 6)
      {
        if (v7 == 7)
        {
          v229 = *a4;
          v245 = -1079680256;
          goto LABEL_432;
        }

        if (v7 == 8)
        {
          v229 = *a4;
          v246 = 0xCF1BBCDCB7A56463 * *a4;
LABEL_433:
          v228 = v246 >> v264;
          goto LABEL_380;
        }
      }

      else
      {
        if (v7 == 5)
        {
          v229 = *a4;
          v245 = -1157627904;
          goto LABEL_432;
        }

        if (v7 == 6)
        {
          v229 = *a4;
          v245 = -1080360960;
LABEL_432:
          v246 = v229 * (v245 | 0xCF1BBCDC00000000);
          goto LABEL_433;
        }
      }

      v228 = (-1640531535 * *a4) >> v262;
      v229 = *a4;
LABEL_380:
      *(v25 + 4 * v228) = v230;
      *(v22 + 4 * ((0xCF1BBCDCB7A56463 * v229) >> v266)) = v230;
      a4 += v243 + 4;
      v30 = v19;
      v20 = v29;
      v6 = a4;
      if (a4 > v18)
      {
        goto LABEL_17;
      }
    }

    v20 = v19;
    v19 = v30;
    v6 = a4;
LABEL_17:
    if (v6 < v18)
    {
      continue;
    }

    break;
  }

  v6 = a4;
  a3 = v258;
LABEL_454:
  *a3 = v19;
  a3[1] = v20;
  return v8 - v6;
}

uint64_t HIST_count_simple(uint32x4_t *a1, unsigned int *a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = *a2;
  bzero(a1, 4 * (*a2 + 1));
  if (!a4)
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (a4 >= 1)
  {
    v9 = &a3[a4];
    do
    {
      v10 = *a3++;
      ++a1->i32[v10];
    }

    while (a3 < v9);
  }

  do
  {
    v11 = v8;
  }

  while (!a1->i32[v8--]);
  *a2 = v11;
  v13 = v8 + 1;
  if (v11 >= 7)
  {
    v16 = v11 + 1;
    v14 = v16 & 0x1FFFFFFF8;
    v17 = (v13 + 1) & 0x1FFFFFFF8;
    v18 = a1 + 1;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v19 = vmaxq_u32(v18[-1], v19);
      v20 = vmaxq_u32(*v18, v20);
      v18 += 2;
      v17 -= 8;
    }

    while (v17);
    result = vmaxvq_u32(vmaxq_u32(v19, v20));
    if (v16 == v14)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    LODWORD(result) = 0;
  }

  v21 = v13 >= v14;
  v22 = v13 - v14;
  if (!v21)
  {
    v22 = 0;
  }

  v23 = v22 + 1;
  v24 = a1 + v14;
  do
  {
    v26 = *v24++;
    v25 = v26;
    if (v26 <= result)
    {
      result = result;
    }

    else
    {
      result = v25;
    }

    --v23;
  }

  while (v23);
  return result;
}

uint64_t HIST_count_parallel_wksp(void *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, int a5, char *a6)
{
  v7 = 4 * (*a2 + 1);
  if (a4)
  {
    v13 = (a3 + a4);
    bzero(a6, 0x1000uLL);
    v14 = a3;
    if (a4 >= 20)
    {
      v15 = a6 + 1024;
      v16 = a6 + 2048;
      v17 = a6 + 3072;
      v18 = *a3;
      v14 = a3;
      do
      {
        v19 = v14[1];
        ++*&a6[4 * v18];
        ++*&v15[4 * BYTE1(v18)];
        ++*&v16[4 * BYTE2(v18)];
        ++*&v17[4 * HIBYTE(v18)];
        v20 = v14[2];
        ++*&a6[4 * v19];
        ++*&v15[4 * BYTE1(v19)];
        ++*&v16[4 * BYTE2(v19)];
        ++*&v17[(v19 >> 22) & 0x3FC];
        v21 = v14[3];
        ++*&a6[4 * v20];
        ++*&v15[4 * BYTE1(v20)];
        ++*&v16[4 * BYTE2(v20)];
        ++*&v17[(v20 >> 22) & 0x3FC];
        v22 = v14[4];
        v14 += 4;
        v18 = v22;
        ++*&a6[4 * v21];
        ++*&v15[4 * BYTE1(v21)];
        ++*&v16[4 * BYTE2(v21)];
        ++*&v17[(v21 >> 22) & 0x3FC];
      }

      while (v14 + 1 < (v13 - 15));
    }

    if (v14 < v13)
    {
      v23 = a3 + a4 - v14;
      do
      {
        v24 = *v14;
        v14 = (v14 + 1);
        ++*&a6[4 * v24];
        --v23;
      }

      while (v23);
    }

    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    do
    {
      v28 = &a6[v25];
      v29 = vaddq_s32(vaddq_s32(*&a6[v25 + 2048], *&a6[v25 + 1024]), vaddq_s32(*&a6[v25 + 3072], *&a6[v25]));
      v30 = vaddq_s32(vaddq_s32(*&a6[v25 + 2064], *&a6[v25 + 1040]), vaddq_s32(*&a6[v25 + 3088], *&a6[v25 + 16]));
      *v28 = v29;
      v28[1] = v30;
      v26 = vmaxq_u32(v29, v26);
      v27 = vmaxq_u32(v30, v27);
      v25 += 32;
    }

    while (v25 != 1024);
    v31 = vmaxq_u32(v26, v27);
    v32 = 256;
    do
    {
      --v32;
    }

    while (!*&a6[4 * v32]);
    if (a5 && v32 > *a2)
    {
      return -48;
    }

    else
    {
      v33 = vmaxvq_u32(v31);
      *a2 = v32;
      memmove(a1, a6, v7);
    }
  }

  else
  {
    bzero(a1, 4 * (*a2 + 1));
    v33 = 0;
    *a2 = 0;
  }

  return v33;
}

uint64_t HIST_count_wksp(uint32x4_t *a1, unsigned int *a2, unsigned int *a3, unint64_t a4, char *a5)
{
  if ((a5 & 3) != 0)
  {
    return -1;
  }

  if (*a2 > 0xFE)
  {
    *a2 = 255;
    if (a4 > 0x5DB)
    {
      v7 = 0;
      goto LABEL_14;
    }

    bzero(a1, 0x400uLL);
    if (!a4)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    v12 = a3;
    do
    {
      v13 = *v12;
      v12 = (v12 + 1);
      ++a1->i32[v13];
    }

    while (v12 < (a3 + a4));
    LODWORD(v14) = 256;
    do
    {
      v14 = (v14 - 1);
    }

    while (!a1->i32[v14]);
    *a2 = v14;
    if (v14 >= 7)
    {
      v15 = (v14 + 1) & 0x1FFFFFFF8;
      v17 = v15;
      v18 = a1 + 1;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v19 = vmaxq_u32(v18[-1], v19);
        v20 = vmaxq_u32(*v18, v20);
        v18 += 2;
        v17 -= 8;
      }

      while (v17);
      v16 = vmaxvq_u32(vmaxq_u32(v19, v20));
      if (v14 + 1 == v15)
      {
        return v16;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v21 = v14 - v15 + 1;
    v22 = a1 + v15;
    do
    {
      v24 = *v22++;
      v23 = v24;
      if (v24 > v16)
      {
        v16 = v23;
      }

      --v21;
    }

    while (v21);
    return v16;
  }

  v7 = 1;
LABEL_14:

  return HIST_count_parallel_wksp(a1, a2, a3, a4, v7, a5);
}

int *ZSTD_buildFSETable(int *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = result + 2;
  v8 = (1 << a6);
  v9 = (v8 - 1);
  v10 = (a3 + 1);
  if (a3 != -1)
  {
    v12 = 0;
    v13 = a7 + 106;
    v14 = 1;
    v15 = v8 - 1;
    do
    {
      v17 = *(a2 + 2 * v12);
      if (v17 == -1)
      {
        v18 = &v7[2 * v15--];
        v18[1] = v12;
        v16 = 1;
      }

      else
      {
        v16 = *(a2 + 2 * v12);
        if (0x8000 << a6 >> 16 <= v17)
        {
          v14 = 0;
        }
      }

      *(a7 + 2 * v12++) = v16;
    }

    while (v10 != v12);
    *result = v14;
    result[1] = a6;
    v19 = v8 >> 3;
    if (v15 != v9)
    {
      v31 = 0;
      v32 = 0;
      v33 = v19 + (v8 >> 1) + 3;
      do
      {
        v34 = *(a2 + 2 * v31);
        if (v34 >= 1)
        {
          for (i = 0; i != v34; ++i)
          {
            v7[2 * v32 + 1] = v31;
            do
            {
              v32 = (v33 + v32) & v9;
            }

            while (v32 > v15);
          }
        }

        ++v31;
      }

      while (v31 != v10);
      goto LABEL_35;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = *(a2 + 2 * v20);
      *(v13 + v21) = v22;
      if (v23 >= 9)
      {
        if (v23 <= 0x10)
        {
          v24 = 16;
        }

        else
        {
          v24 = v23;
        }

        v25 = v24 - 9;
        if (v25 >= 0x18)
        {
          v27 = (v25 >> 3) + 1;
          v28 = vdupq_n_s64(v22);
          v29 = (a7 + 130 + v21);
          v30 = v27 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v29[-1] = v28;
            *v29 = v28;
            v29 += 2;
            v30 -= 4;
          }

          while (v30);
          if (v27 == (v27 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_11;
          }

          v26 = (8 * (v27 & 0x3FFFFFFFFFFFFFFCLL)) | 8;
        }

        else
        {
          v26 = 8;
        }

        do
        {
          *(v13 + v21 + v26) = v22;
          v26 += 8;
        }

        while (v26 < v23);
      }

LABEL_11:
      v21 += v23;
      ++v20;
      v22 += 0x101010101010101;
      if (v20 == v10)
      {
        v11 = v19 + (v8 >> 1);
        goto LABEL_33;
      }
    }
  }

  *result = 1;
  result[1] = a6;
  v11 = (v8 >> 3) + (v8 >> 1);
LABEL_33:
  v36 = v11 + 3;
  v37 = 0;
  v38 = 0;
  do
  {
    v7[2 * (v38 & v9) + 1] = *(a7 + v37 + 106);
    v7[2 * ((v38 + v36) & v9) + 1] = *(a7 + v37 + 107);
    v38 = (v38 + 2 * v36) & v9;
    v37 += 2;
  }

  while (v37 < v8);
LABEL_35:
  v39 = result + 3;
  v40 = (1 << a6);
  do
  {
    v41 = *v39;
    v42 = *(a7 + 2 * v41);
    *(a7 + 2 * v41) = v42 + 1;
    v43 = a6 - 31 + __clz(v42);
    *(v39 - 1) = v43;
    *(v39 - 2) = (v42 << v43) - v8;
    *(v39 - 2) = *(a5 + v41);
    *v39 = *(a4 + 4 * v41);
    v39 += 2;
    --v40;
  }

  while (v40);
  return result;
}

uint64_t ZSTD_buildSeqTable(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, _DWORD *a6, size_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, uint64_t a14)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a4;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v30 = 0;
      v19 = FSE_readNCount_bmi2(v32, &v31, &v30, a6, a7);
      if (v19 <= 0xFFFFFFFFFFFFFF88 && v30 <= a5)
      {
        v20 = v19;
        ZSTD_buildFSETable(a1, v32, v31, a8, a9, v30, a14);
        result = v20;
        *a2 = a1;
        return result;
      }
    }

    else if (a11)
    {
      result = 0;
      if (a12 && a13 >= 25)
      {
        v23 = 0;
        do
        {
          _X11 = *a2 + v23;
          __asm { PRFM            #2, [X11] }

          v23 += 64;
        }

        while (v23 < 8 * ((1 << a5) + 1));
        return 0;
      }

      return result;
    }

    return -20;
  }

  if (!a3)
  {
    result = 0;
    *a2 = a10;
    return result;
  }

  if (a7)
  {
    if (*a6 <= a4)
    {
      v21 = *(a8 + 4 * *a6);
      v22 = *(a9 + *a6);
      *a1 = 0;
      *(a1 + 11) = 0;
      *(a1 + 8) = 0;
      *(a1 + 10) = v22;
      *(a1 + 12) = v21;
      *a2 = a1;
      return 1;
    }

    return -20;
  }

  return -72;
}

uint64_t ZSTD_decompressBlock_internal(uint64_t a1, char *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v490[22] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 26684);
  v7 = *(a1 + 30176);
  if (v7)
  {
    if (*(a1 + 29944) < a5)
    {
      return -72;
    }
  }

  else if (a5 > 0x20000)
  {
    return -72;
  }

  if (a5 < 2)
  {
    return -20;
  }

  v10 = *a4;
  v11 = v10 & 3;
  if (v7)
  {
    v12 = *(a1 + 29944);
    if ((v10 & 3) <= 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0x20000;
    if ((v10 & 3) <= 1)
    {
LABEL_11:
      if ((v10 & 3) == 0)
      {
        v13 = (v10 >> 2) & 3;
        if (v12 >= a3)
        {
          v14 = a3;
        }

        else
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v15 = *a4 >> 4;
          v16 = 2;
        }

        else if (v13 == 3)
        {
          if (a5 == 2)
          {
            return -20;
          }

          v15 = (*a4 | (a4[2] << 16)) >> 4;
          v16 = 3;
        }

        else
        {
          v15 = v10 >> 3;
          v16 = 1;
        }

        if (a2 || !v15)
        {
          if (v15 > v12)
          {
            return -20;
          }

          if (v15 <= a3)
          {
            if (v7)
            {
              v28 = *(a1 + 29944);
            }

            else
            {
              v28 = 0x20000;
            }

            if (a6 || v15 + v28 + 64 >= a3)
            {
              if (v15 > 0x10000)
              {
                v35 = &a2[v14 - v15 + 65504];
                v36 = &v35[v15 - 0x10000];
                *(a1 + 30352) = v35;
                v37 = 2;
                v34 = 1;
              }

              else
              {
                v34 = 0;
                v37 = 0;
                v35 = (a1 + 30372);
                *(a1 + 30352) = a1 + 30372;
                v36 = a1 + 30372 + v15;
              }
            }

            else
            {
              v34 = 0;
              v35 = &a2[v28 + 32];
              *(a1 + 30352) = v35;
              v36 = &v35[v15];
              v37 = 1;
            }

            *(a1 + 30360) = v36;
            *(a1 + 30368) = v37;
            v32 = v16 + v15;
            if (v16 + v15 + 32 <= a5)
            {
              *(a1 + 30120) = &a4[v16];
              *(a1 + 30152) = v15;
              *(a1 + 30360) = &a4[v16 + v15];
              *(a1 + 30368) = 0;
              goto LABEL_93;
            }

            if (v32 > a5)
            {
              return -20;
            }

            v38 = a5;
            v39 = a3;
            v40 = a1;
            v41 = a2;
            v42 = a4;
            v43 = &a4[v16];
            if (v34)
            {
              memcpy(v35, &a4[v16], v15 - 0x10000);
              v44 = v40 + 30372;
              v45 = &v43[v15 - 0x10000];
              v46 = 0x10000;
            }

            else
            {
              v44 = v35;
              v45 = &a4[v16];
              v46 = v15;
            }

            memcpy(v44, v45, v46);
            a1 = v40;
            v40[3765] = v40[3794];
            v40[3769] = v15;
            a2 = v41;
            a3 = v39;
            a5 = v38;
            goto LABEL_92;
          }
        }

        return -70;
      }

      v24 = (v10 >> 2) & 3;
      if (v12 >= a3)
      {
        v25 = a3;
      }

      else
      {
        v25 = v12;
      }

      if (v24 == 1)
      {
        if (a5 == 2)
        {
          return -20;
        }

        v26 = *a4 >> 4;
        v27 = 2;
      }

      else if (v24 == 3)
      {
        if (a5 < 4)
        {
          return -20;
        }

        v26 = (*a4 | (a4[2] << 16)) >> 4;
        v27 = 3;
      }

      else
      {
        v26 = v10 >> 3;
        v27 = 1;
      }

      if (!a2 && v26)
      {
        return -70;
      }

      if (v26 > v12)
      {
        return -20;
      }

      if (v26 > a3)
      {
        return -70;
      }

      if (v7)
      {
        v29 = *(a1 + 29944);
      }

      else
      {
        v29 = 0x20000;
      }

      if (a6 || v26 + v29 + 64 >= a3)
      {
        v47 = a5;
        v48 = a3;
        if (v26 > 0x10000)
        {
          v49 = a2;
          v57 = &a2[v25 - v26 + 65504];
          *(a1 + 30352) = v57;
          *(a1 + 30360) = &a2[v25 - 32];
          *(a1 + 30368) = 2;
          v58 = a1;
          v59 = a4;
          memset(v57, a4[v27], v26 - 0x10000);
          v53 = v59;
          v54 = v59[v27];
          v52 = v58;
          v55 = v58 + 30372;
          v56 = 0x10000;
          goto LABEL_89;
        }

        v49 = a2;
        v51 = 0;
        v50 = a1 + 30372;
      }

      else
      {
        v47 = a5;
        v48 = a3;
        v49 = a2;
        v50 = &a2[v29 + 32];
        v51 = 1;
      }

      *(a1 + 30352) = v50;
      v52 = a1;
      *(a1 + 30360) = v50 + v26;
      *(a1 + 30368) = v51;
      v53 = a4;
      v54 = a4[v27];
      v55 = v50;
      v56 = v26;
LABEL_89:
      memset(v55, v54, v56);
      a1 = v52;
      v52[3765] = v52[3794];
      v52[3769] = v26;
      v32 = v27 + 1;
      a2 = v49;
      a3 = v48;
      a5 = v47;
      a4 = v53;
      goto LABEL_93;
    }
  }

  if (v11 != 2 && !*(a1 + 30000))
  {
    return -30;
  }

  if (a5 < 5)
  {
    return -20;
  }

  v17 = (v10 >> 2) & 3;
  v18 = *a4;
  if (v12 >= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v12;
  }

  if (v17 == 2)
  {
    v20 = (v18 >> 4) & 0x3FFF;
    v21 = v18 >> 18;
    v22 = 1;
    v23 = 4;
  }

  else if (v17 == 3)
  {
    v20 = (v18 >> 4) & 0x3FFFF;
    v21 = (v18 >> 22) | (a4[4] << 10);
    v22 = 1;
    v23 = 5;
  }

  else
  {
    v22 = v17 != 0;
    v20 = (v18 >> 4) & 0x3FF;
    v21 = (v18 >> 14) & 0x3FF;
    v23 = 3;
  }

  if (!a2 && v20)
  {
    return -70;
  }

  v30 = v20;
  if (v12 < v20)
  {
    return -20;
  }

  if (v20 < 6 && v22)
  {
    return -24;
  }

  v32 = v23 + v21;
  if (v23 + v21 > a5)
  {
    return -20;
  }

  if (v19 < v20)
  {
    return -70;
  }

  if (v7)
  {
    v33 = *(a1 + 29944);
  }

  else
  {
    v33 = 0x20000;
  }

  if (a6 || v20 + v33 + 64 >= a3)
  {
    if (v20 > 0x10000)
    {
      v94 = &a2[v19];
      v93 = (v94 - v20);
      *(a1 + 30352) = v93;
      v95 = 2;
    }

    else
    {
      v95 = 0;
      v93 = (a1 + 30372);
      *(a1 + 30352) = a1 + 30372;
      v94 = a1 + 30372 + v20;
    }
  }

  else
  {
    v93 = &a2[v33 + 32];
    *(a1 + 30352) = v93;
    v94 = &v93[v20];
    v95 = 1;
  }

  *(a1 + 30360) = v94;
  *(a1 + 30368) = v95;
  if (v20 >= 0x301 && *(a1 + 30204))
  {
    v96 = 0;
    do
    {
      _X14 = *(a1 + 24) + v96;
      __asm { PRFM            #2, [X14] }

      v102 = v96 >> 2;
      v96 += 64;
    }

    while (v102 < 0xFF1);
  }

  v103 = a5;
  v104 = a3;
  v105 = a2;
  if (v11 == 3)
  {
    v106 = a1;
    v107 = *(a1 + 24);
    v42 = a4;
    v108 = &a4[v23];
    if (v22)
    {
      v109 = HUF_decompress4X_usingDTable(v93, v30, v108, v21, v107);
    }

    else
    {
      v109 = HUF_decompress1X_usingDTable(v93, v30, v108, v21, v107);
    }
  }

  else
  {
    v42 = a4;
    v106 = a1;
    if (v22)
    {
      v109 = HUF_decompress4X_hufOnly_wksp((a1 + 10296), v93, v30, &a4[v23], v21, a1 + 27324);
    }

    else
    {
      v109 = HUF_decompress1X1_DCtx_wksp((a1 + 10296), v93, v30, &a4[v23], v21, a1 + 27324);
    }
  }

  v110 = v109;
  a1 = v106;
  if (v6[921] == 2)
  {
    memcpy((v106 + 30372), (*(v106 + 30360) - 0x10000), 0x10000uLL);
    memmove((*(v106 + 30352) + 65504), *(v106 + 30352), v30 - 0x10000);
    a1 = v106;
    *(v106 + 30352) = vaddq_s64(*(v106 + 30352), xmmword_182B08DB0);
  }

  if (v110 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  a2 = v105;
  a3 = v104;
  a5 = v103;
  *(a1 + 30120) = *(a1 + 30352);
  *(a1 + 30152) = v30;
  v6[829] = 1;
  if (v11 == 2)
  {
    *(a1 + 24) = a1 + 10296;
  }

LABEL_92:
  a4 = v42;
LABEL_93:
  if (!v6[873])
  {
    v61 = a3;
    if (a3 < 0x20000)
    {
      goto LABEL_99;
    }

    v60 = 0x20000;
    goto LABEL_98;
  }

  v60 = v6[815];
  v61 = a3;
  if (v60 <= a3)
  {
LABEL_98:
    v61 = v60;
  }

LABEL_99:
  if (a5 == v32)
  {
    return -72;
  }

  v62 = &a4[v32];
  v63 = a5 - v32;
  v64 = *(a1 + 29904);
  v65 = v6[880];
  v66 = &a4[a5];
  v67 = v62 + 1;
  v68 = *v62;
  if (*v62 < 0)
  {
    if (v68 == 255)
    {
      if (v63 < 3)
      {
        return -72;
      }

      v67 = v62 + 3;
      v68 = *(v62 + 1) + 32512;
      goto LABEL_102;
    }

    if (v63 < 2)
    {
      return -72;
    }

    v79 = v62[1] | (v68 << 8);
    v67 = v62 + 2;
    v68 = v79 - 0x8000;
    if (v79 != 0x8000)
    {
      goto LABEL_102;
    }
  }

  else if (*v62)
  {
LABEL_102:
    v69 = v67 + 1;
    if ((v67 + 1) <= v66)
    {
      v70 = *v67;
      if ((v70 & 3) != 0)
      {
        return -20;
      }

      v465 = a3;
      __dst = a2;
      v71 = a1 + 27324;
      v469 = a1;
      v471 = v68;
      v72 = ZSTD_buildSeqTable(a1 + 32, a1, v70 >> 6, 0x23u, 9u, v69, v66 - v69, &LL_base_36082, &LL_bits_36083, &LL_defaultDTable, v6[830], v65, v68, a1 + 27324);
      if (v72 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

      v73 = (v69 + v72);
      v74 = ZSTD_buildSeqTable(v469 + 4136, (v469 + 16), (v70 >> 4) & 3, 0x1Fu, 8u, v73, v66 - v73, &OF_base_36084, &OF_bits_36085, &OF_defaultDTable, v6[830], v6[880], v471, v71);
      if (v74 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

      v75 = (v73 + v74);
      v76 = ZSTD_buildSeqTable(v469 + 6192, (v469 + 8), (v70 >> 2) & 3, 0x34u, 9u, v75, v66 - v75, &ML_base_36086, &ML_bits_36087, &ML_defaultDTable, v6[830], v6[880], v471, v71);
      if (v76 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

      v77 = v75 + v76 - v62;
      a2 = __dst;
      a1 = v469;
      a3 = v465;
      v78 = v471;
      if (v77 > 0xFFFFFFFFFFFFFF88)
      {
        return v77;
      }

      goto LABEL_114;
    }

    return -72;
  }

  if (v67 != v66)
  {
    return -20;
  }

  v78 = 0;
  v77 = v63;
  if (v63 > 0xFFFFFFFFFFFFFF88)
  {
    return v77;
  }

LABEL_114:
  if (a2)
  {
    _ZF = a3 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v81 = !_ZF || v78 <= 0;
  v82 = !v81;
  v8 = -70;
  if (a2 > 0xFFFFFFFFFFEFFFFFLL || (v82 & 1) != 0)
  {
    return v8;
  }

  v83 = &v62[v77];
  v84 = v63 - v77;
  if (!v65 && &a2[v61 - v64] >= 0x1000001 && v78 >= 9)
  {
    v85 = 0;
    v86 = *(a1 + 16);
    v87 = *(v86 + 4);
    v88 = v86 + 8;
    v89 = 1;
    do
    {
      if (*(v88 + 8 * (v89 - 1) + 2) > 0x16u)
      {
        ++v85;
      }
    }

    while (!(v89++ >> v87));
    v65 = (v85 << (8 - v87)) > 6;
  }

  v6[880] = 0;
  v91 = v6[921];
  v472 = v78;
  if (!v65)
  {
    if (v91 == 2)
    {

      return ZSTD_decompressSequencesSplitLitBuffer(a1, a2, a3, v83, v84, v78);
    }

    else
    {

      return ZSTD_decompressSequences(a1, a2, a3, v83, v84, v78);
    }
  }

  __dsta = a2;
  if (v91 == 1)
  {
    v92 = *(a1 + 30352);
  }

  else
  {
    v92 = &a2[a3 & ~(a3 >> 63)];
  }

  v456 = v92;
  v111 = *(a1 + 30120);
  v485 = v111;
  v457 = *(a1 + 30360);
  v470 = a1;
  if (!v78)
  {
    v117 = __dsta;
    if (v91 != 2)
    {
LABEL_179:
      v119 = v457 - v111;
      if (v457 - v111 <= v456 - v117)
      {
        if (v117)
        {
          memmove(v117, v111, v457 - v111);
          v120 = (v117 + v119);
        }

        else
        {
          v120 = 0;
        }

        return v120 - __dsta;
      }

      return -70;
    }

LABEL_175:
    v118 = v457 - v111;
    if (v457 - v111 > v456 - v117)
    {
      return -70;
    }

    if (v117)
    {
      memmove(v117, v111, v457 - v111);
      v117 += v118;
    }

    v111 = (v470 + 30372);
    v457 = v470 + 95908;
    goto LABEL_179;
  }

  v455 = *(a1 + 29904);
  v464 = *(a1 + 29912);
  v466 = *(a1 + 29896);
  v6[830] = 1;
  v112 = *v6;
  *v484 = v112;
  v113 = *(a1 + 26688);
  *&v114 = v113;
  *(&v114 + 1) = HIDWORD(v113);
  *&v484[8] = v114;
  if (v78 >= 8)
  {
    v115 = 8;
  }

  else
  {
    v115 = v78;
  }

  v454 = v115;
  if (v63 == v77)
  {
    return -20;
  }

  v476 = &v62[v77];
  v477 = v83 + 8;
  v458 = v83 + 8;
  v121 = v84 - 8;
  if (v84 >= 8)
  {
    v122 = *&v83[v121];
    v475 = &v83[v121];
    v473 = v122;
    if (HIBYTE(v122) && v84 <= 0xFFFFFFFFFFFFFF88)
    {
      v123 = 8 - (__clz(HIBYTE(v122)) ^ 0x1F);
      goto LABEL_204;
    }

    return -20;
  }

  v122 = *v83;
  v475 = &v62[v77];
  v473 = v122;
  if (v84 > 4)
  {
    if (v84 != 5)
    {
      if (v84 != 6)
      {
        v122 |= v83[6] << 48;
      }

      v122 += v83[5] << 40;
    }

    v122 += v83[4] << 32;
    goto LABEL_199;
  }

  switch(v84)
  {
    case 2:
LABEL_201:
      v122 += v83[1] << 8;
      v473 = v122;
      break;
    case 3:
LABEL_200:
      v122 += v83[2] << 16;
      goto LABEL_201;
    case 4:
LABEL_199:
      v122 += v83[3] << 24;
      goto LABEL_200;
  }

  if (!*(v66 - 1))
  {
    return -20;
  }

  v121 = 0;
  v123 = __clz(*(v66 - 1)) - 8 * v84 + 41;
LABEL_204:
  v124 = *a1;
  v125 = *(*a1 + 4);
  v126 = v125 + v123;
  v127 = (v122 >> -v126) & BIT_mask_36272[v125];
  v478 = v127;
  if (v126 >= 0x41)
  {
    v129 = &BIT_reloadDStream_zeroFilled;
    v475 = &BIT_reloadDStream_zeroFilled;
  }

  else
  {
    v128 = &v83[v121];
    if (v121 >= 8)
    {
      v129 = &v128[-(v126 >> 3)];
      v475 = v129;
      v126 &= 7u;
    }

    else
    {
      v129 = v83;
      if (!v121)
      {
        goto LABEL_213;
      }

      v130 = v126 >> 3;
      if (&v128[-v130] >= v83)
      {
        v130 = v130;
      }

      else
      {
        v130 = v121;
      }

      v129 = &v128[-v130];
      v475 = &v128[-v130];
      v126 -= 8 * v130;
    }

    v122 = *v129;
    v473 = *v129;
  }

LABEL_213:
  v463 = v124 + 8;
  v479 = v124 + 8;
  v131 = *(a1 + 16);
  v132 = *(v131 + 4);
  v133 = v132 + v126;
  v134 = (v122 >> -v133) & BIT_mask_36272[v132];
  v480 = v134;
  if (v133 >= 0x41)
  {
    v129 = &BIT_reloadDStream_zeroFilled;
    v475 = &BIT_reloadDStream_zeroFilled;
  }

  else
  {
    if (v129 >= v458)
    {
      v129 -= v133 >> 3;
      v122 = *v129;
      v133 &= 7u;
    }

    else
    {
      if (v129 == v83)
      {
        goto LABEL_222;
      }

      v135 = v133 >> 3;
      if (&v129[-v135] >= v83)
      {
        v136 = v135;
      }

      else
      {
        v136 = (v129 - v83);
      }

      v129 -= v136;
      v122 = *v129;
      v133 -= 8 * v136;
    }

    v475 = v129;
    v473 = v122;
  }

LABEL_222:
  v137 = __dsta - v466;
  v460 = v131 + 8;
  v481 = v131 + 8;
  v138 = *(a1 + 8);
  v139 = *(v138 + 4);
  v140 = v139 + v133;
  v141 = (v122 >> -(v139 + v133)) & BIT_mask_36272[v139];
  v474 = v140;
  v482 = v141;
  if (v140 >= 0x41)
  {
    v129 = &BIT_reloadDStream_zeroFilled;
    v475 = &BIT_reloadDStream_zeroFilled;
    goto LABEL_231;
  }

  if (v129 >= v458)
  {
    v129 -= v140 >> 3;
    v475 = v129;
    v140 &= 7u;
LABEL_230:
    v474 = v140;
    v122 = *v129;
    v473 = *v129;
    goto LABEL_231;
  }

  if (v129 != v83)
  {
    v142 = v140 >> 3;
    if (&v129[-v142] >= v83)
    {
      v142 = v142;
    }

    else
    {
      v142 = (v129 - v83);
    }

    v129 -= v142;
    v475 = v129;
    v140 -= 8 * v142;
    goto LABEL_230;
  }

LABEL_231:
  v143 = v138 + 8;
  v483 = v143;
  if (v472 >= 1)
  {
    v144 = v113;
    v145 = v490;
    v147 = v454;
    v146 = (v472 - 1);
    while (1)
    {
      v153 = (v463 + 8 * v127);
      v154 = (v143 + 8 * v141);
      v155 = *(v154 + 1);
      v156 = *(v153 + 1);
      v157 = (v460 + 8 * v134);
      v158 = *(v157 + 1);
      v159 = *(v153 + 2);
      v160 = *(v154 + 2);
      v161 = *(v157 + 2);
      v162 = *v153;
      v163 = *v154;
      v164 = *v157;
      v165 = *(v153 + 3);
      v166 = *(v154 + 3);
      v167 = *(v157 + 3);
      if (v161 >= 2)
      {
        v168 = v122 << v140 >> -v161;
        v140 += v161;
        v474 = v140;
        *&v484[16] = v144;
        v144 = v112;
        v112 = v168 + v158;
        *v484 = v168 + v158;
        *&v484[8] = v144;
        if (!v160)
        {
          goto LABEL_241;
        }

LABEL_238:
        v169 = v122 << v140 >> -v160;
        v140 += v160;
        v474 = v140;
        v155 += v169;
        goto LABEL_241;
      }

      if (!*(v157 + 2))
      {
        v112 = *&v484[8 * (v156 == 0)];
        v144 = *&v484[8 * (v156 != 0)];
        *v484 = v112;
        *&v484[8] = v144;
        if (v160)
        {
          goto LABEL_238;
        }

        goto LABEL_241;
      }

      v174 = v156 ? v158 : (v158 + 1);
      v175 = v122 << v140++;
      v474 = v140;
      v176 = v174 + (v175 >> 63);
      if (v176 == 3)
      {
        break;
      }

      v177 = *&v484[8 * v176];
      if (!v177)
      {
        v177 = -1;
      }

      if (v176 != 1)
      {
        goto LABEL_274;
      }

LABEL_275:
      v144 = v112;
      v112 = v177;
      *v484 = v177;
      *&v484[8] = v144;
      if (v160)
      {
        goto LABEL_238;
      }

LABEL_241:
      if ((v160 + v159 + v161) < 0x1Fu)
      {
        goto LABEL_242;
      }

      if (v140 >= 0x41)
      {
        v129 = &BIT_reloadDStream_zeroFilled;
        v475 = &BIT_reloadDStream_zeroFilled;
      }

      else
      {
        if (v129 >= v458)
        {
          v129 -= v140 >> 3;
          v475 = v129;
          v140 &= 7u;
        }

        else
        {
          if (v129 == v83)
          {
            goto LABEL_242;
          }

          v173 = v140 >> 3;
          if (&v129[-v173] >= v83)
          {
            v173 = v173;
          }

          else
          {
            v173 = (v129 - v83);
          }

          v129 -= v173;
          v475 = v129;
          v140 -= 8 * v173;
        }

        v474 = v140;
        v122 = *v129;
        v473 = *v129;
      }

LABEL_242:
      if (v159)
      {
        v170 = v122 << v140 >> -v159;
        v140 += v159;
        v474 = v140;
        v156 += v170;
      }

      if (!v146)
      {
        goto LABEL_233;
      }

      v127 = ((v122 >> -(v140 + v165)) & BIT_mask_36272[v165]) + v162;
      v171 = v140 + v165 + v166;
      v141 = ((v122 >> -v171) & BIT_mask_36272[v166]) + v163;
      v482 = v141;
      v140 = v171 + v167;
      v474 = v171 + v167;
      v134 = ((v122 >> -(v171 + v167)) & BIT_mask_36272[v167]) + v164;
      v478 = v127;
      v480 = v134;
      if ((v171 + v167) >= 0x41)
      {
        v129 = &BIT_reloadDStream_zeroFilled;
        v475 = &BIT_reloadDStream_zeroFilled;
        goto LABEL_233;
      }

      if (v129 >= v458)
      {
        v129 -= v140 >> 3;
        v475 = v129;
        v140 &= 7u;
LABEL_253:
        v474 = v140;
        v122 = *v129;
        v473 = *v129;
        goto LABEL_233;
      }

      if (v129 != v83)
      {
        v172 = v140 >> 3;
        if (&v129[-v172] >= v83)
        {
          v172 = v172;
        }

        else
        {
          v172 = (v129 - v83);
        }

        v129 -= v172;
        v475 = v129;
        v140 -= 8 * v172;
        goto LABEL_253;
      }

LABEL_233:
      v148 = v156 + v137;
      v149 = v466;
      if (v112 > v156 + v137)
      {
        v149 = v464;
      }

      _X13 = v149 + v148 - v112;
      __asm
      {
        PRFM            #0, [X13]
        PRFM            #0, [X13,#0x40]
      }

      v137 = v148 + v155;
      *(v145 - 2) = v156;
      *(v145 - 1) = v155;
      *v145 = v112;
      v145 += 3;
      --v146;
      if (!--v147)
      {
        v178 = v454;
        goto LABEL_282;
      }
    }

    v177 = v112 - 1;
    if (v112 == 1)
    {
      v177 = -1;
    }

LABEL_274:
    *&v484[16] = v144;
    goto LABEL_275;
  }

  v178 = 0;
LABEL_282:
  if (v178 >= v472)
  {
    v117 = __dsta;
LABEL_477:
    v462 = -20;
    if (v129 != v83 || v140 != 64)
    {
      return v462;
    }

    v336 = v178 - v454;
    if (v178 - v454 < v472)
    {
      v337 = v456 - 32;
      v338 = v6 + 922;
      do
      {
        v339 = &v489[3 * (v336 & 7)];
        if (v6[921] == 2)
        {
          v340 = v485;
          v341 = *v339;
          v342 = &v485[*v339];
          v343 = *(v470 + 30360);
          if (v342 > v343)
          {
            v344 = v343 - v485;
            if (v343 == v485)
            {
              goto LABEL_565;
            }

            if (v344 > v456 - v117)
            {
              return -70;
            }

            v345 = v117 - v485;
            v346 = (v117 + v344);
            if ((v117 - v485) <= -8 && v344 > 7)
            {
              v347 = 0;
              if (v345 > 0xFFFFFFFFFFFFFFEFLL || (v348 = (v346 - 32), v349 = v344 - 32, (v346 - 32) < v117))
              {
                v348 = v117;
              }

              else
              {
                *v117 = *v485;
                if (v349 >= 17)
                {
                  v350 = (v117 + 16);
                  v351 = (v340 + 32);
                  do
                  {
                    *v350 = *(v351 - 1);
                    v352 = *v351;
                    v351 += 2;
                    v350[1] = v352;
                    v350 += 2;
                  }

                  while (v350 < v348);
                }

                v340 += v349;
                v347 = v348 - v340 < 0x20;
              }

              v381 = v344 + v117 - v348;
              if (v381 < 8 || v347)
              {
                v383 = v348;
              }

              else
              {
                if (v381 < 0x20)
                {
                  v382 = 0;
LABEL_545:
                  v388 = v381 & 0xFFFFFFFFFFFFFFF8;
                  v383 = (v348 + (v381 & 0xFFFFFFFFFFFFFFF8));
                  v389 = v382 - (v381 & 0xFFFFFFFFFFFFFFF8);
                  v390 = &v340[v382];
                  v391 = (v348 + v382);
                  do
                  {
                    v392 = *v390;
                    v390 += 8;
                    *v391++ = v392;
                    v389 += 8;
                  }

                  while (v389);
                  if (v381 != v388)
                  {
                    v340 += v388;
                    goto LABEL_560;
                  }

LABEL_564:
                  v341 = *v339 - v344;
                  *v339 = v341;
                  v117 += v344;
LABEL_565:
                  v485 = (v6 + 922);
                  v6[921] = 0;
                  v405 = v339[1];
                  v406 = v339[2];
                  v407 = (v117 + v341);
                  _X8 = (v117 + v341 - v406);
                  __asm { PRFM            #0, [X8] }

                  v462 = v405 + v341;
                  if (v341 > 0x10000 || v117 + v405 + v341 > v337)
                  {
                    v486 = v341;
                    v487 = v405;
                    v488 = v406;
                    v462 = ZSTD_execSequenceEnd(v117, v456, &v486, &v485, v470 + 95908, v466, v455, v464);
                  }

                  else
                  {
                    *v117 = *v338;
                    if (v341 > 0x10)
                    {
                      *(v117 + 16) = *(v6 + 926);
                      if (v341 - 16 >= 17)
                      {
                        v424 = (v117 + 32);
                        v425 = (v6 + 934);
                        do
                        {
                          *v424 = *(v425 - 1);
                          v426 = *v425;
                          v425 += 2;
                          *(v424 + 1) = v426;
                          v424 += 32;
                        }

                        while (v424 < v407);
                      }
                    }

                    v485 = v338 + v341;
                    if (v406 <= v407 - v466)
                    {
LABEL_574:
                      if (v406 < 0x10)
                      {
                        if (v406 > 7)
                        {
                          *v407 = *_X8;
                        }

                        else
                        {
                          v433 = ZSTD_overlapCopy8_dec64table[v406];
                          *v407 = *_X8;
                          v407[1] = _X8[1];
                          v407[2] = _X8[2];
                          v407[3] = _X8[3];
                          v434 = &_X8[ZSTD_overlapCopy8_dec32table[v406]];
                          *(v407 + 1) = *v434;
                          _X8 = &v434[-v433];
                        }

                        if (v405 >= 9)
                        {
                          v442 = _X8 + 8;
                          v443 = v407 + 8;
                          v444 = &v407[v405];
                          if (v407 - _X8 > 15)
                          {
                            *v443 = *v442;
                            if (v405 >= 25)
                            {
                              v449 = v407 + 24;
                              v450 = (_X8 + 40);
                              do
                              {
                                *v449 = *(v450 - 1);
                                v451 = *v450;
                                v450 += 2;
                                v449[1] = v451;
                                v449 += 2;
                              }

                              while (v449 < v444);
                            }
                          }

                          else
                          {
                            do
                            {
                              v445 = *v442;
                              v442 = (v442 + 8);
                              *v443 = v445;
                              v443 = (v443 + 8);
                            }

                            while (v443 < v444);
                          }
                        }
                      }

                      else
                      {
                        *v407 = *_X8;
                        if (v405 >= 17)
                        {
                          v413 = v407 + 16;
                          v414 = (_X8 + 32);
                          do
                          {
                            *v413 = *(v414 - 1);
                            v415 = *v414;
                            v414 += 2;
                            *(v413 + 1) = v415;
                            v413 += 32;
                          }

                          while (v413 < &v407[v405]);
                        }
                      }
                    }

                    else
                    {
                      if (v406 > &v407[-v455])
                      {
                        return -20;
                      }

                      v411 = _X8 - v466;
                      v412 = (v464 + _X8 - v466);
                      if (v412 + v405 > v464)
                      {
                        memmove((v117 + v341), v412, v466 - _X8);
                        v407 -= v411;
                        v405 += v411;
                        _X8 = v466;
                        goto LABEL_574;
                      }

                      memmove((v117 + v341), v412, v405);
                    }
                  }

                  if (v462 >= 0xFFFFFFFFFFFFFF89)
                  {
                    return v462;
                  }

                  v117 += v462;
                  v457 = v470 + 95908;
                  goto LABEL_484;
                }

                v382 = v381 & 0xFFFFFFFFFFFFFFE0;
                v384 = (v340 + 16);
                v385 = (v348 + 16);
                v386 = v381 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v387 = *v384;
                  *(v385 - 1) = *(v384 - 1);
                  *v385 = v387;
                  v384 += 2;
                  v385 += 2;
                  v386 -= 32;
                }

                while (v386);
                if (v381 == v382)
                {
                  goto LABEL_564;
                }

                if ((v381 & 0x18) != 0)
                {
                  goto LABEL_545;
                }

                v340 += v382;
                v383 = (v348 + v382);
              }

              do
              {
LABEL_560:
                v403 = *v340++;
                *v383++ = v403;
              }

              while (v383 != (v344 + v117));
              goto LABEL_564;
            }

            if (v344 < 1)
            {
              goto LABEL_564;
            }

            v378 = &v343[v117] - v485;
            if (v378 <= v117 + 1)
            {
              v378 = v117 + 1;
            }

            v379 = v378 - v117;
            if (v379 < 8)
            {
              v393 = v117;
            }

            else if (v345 < 0x20)
            {
              v393 = v117;
            }

            else
            {
              if (v379 < 0x20)
              {
                v380 = 0;
                goto LABEL_555;
              }

              v380 = v379 & 0xFFFFFFFFFFFFFFE0;
              v394 = v485 + 16;
              v395 = (v117 + 16);
              v396 = v379 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v397 = *v394;
                *(v395 - 1) = *(v394 - 1);
                *v395 = v397;
                v394 += 32;
                v395 += 2;
                v396 -= 32;
              }

              while (v396);
              if (v379 == v380)
              {
                goto LABEL_564;
              }

              if ((v379 & 0x18) != 0)
              {
LABEL_555:
                v398 = v379 & 0xFFFFFFFFFFFFFFF8;
                v393 = (v117 + (v379 & 0xFFFFFFFFFFFFFFF8));
                v399 = v380 - (v379 & 0xFFFFFFFFFFFFFFF8);
                v400 = &v340[v380];
                v401 = (v117 + v380);
                do
                {
                  v402 = *v400;
                  v400 += 8;
                  *v401++ = v402;
                  v399 += 8;
                }

                while (v399);
                if (v379 == v398)
                {
                  goto LABEL_564;
                }

                v340 += v398;
              }

              else
              {
                v340 += v380;
                v393 = (v117 + v380);
              }
            }

            do
            {
              v404 = *v340++;
              *v393++ = v404;
            }

            while (v393 < v346);
            goto LABEL_564;
          }

          v370 = v342 - 32;
          v354 = v339[1];
          v371 = v339[2];
          v462 = v354 + v341;
          if (v342 > v457 || v117 + v354 + v341 > v370)
          {
            v486 = *v339;
            v487 = v354;
            v488 = v371;
            v462 = ZSTD_execSequenceEndSplitLitBuffer(v117, v456, v370, &v486, &v485, v457, v466, v455, v464);
            goto LABEL_526;
          }

          v356 = (v117 + v341);
          *v117 = *v485;
          if (v341 > 0x10)
          {
            *(v117 + 16) = *(v340 + 1);
            if (v341 - 16 >= 17)
            {
              v421 = (v117 + 32);
              v422 = (v340 + 48);
              do
              {
                *v421 = *(v422 - 1);
                v423 = *v422;
                v422 += 2;
                *(v421 + 1) = v423;
                v421 += 32;
              }

              while (v421 < v356);
            }
          }

          v373 = &v356[-v371];
          v485 = v342;
          if (v371 <= v356 - v466)
          {
            goto LABEL_520;
          }

          if (v371 > &v356[-v455])
          {
            return -20;
          }

          v374 = v373 - v466;
          v366 = (v464 + v373 - v466);
          if (v366 + v354 > v464)
          {
            memmove((v117 + v341), v366, v466 - v373);
            v356 -= v374;
            v354 += v374;
            v373 = v466;
LABEL_520:
            if (v371 < 0x10)
            {
              if (v371 > 7)
              {
                *v356 = *v373;
              }

              else
              {
                v427 = ZSTD_overlapCopy8_dec64table[v371];
                *v356 = *v373;
                v356[1] = v373[1];
                v356[2] = v373[2];
                v356[3] = v373[3];
                v428 = &v373[ZSTD_overlapCopy8_dec32table[v371]];
                *(v356 + 1) = *v428;
                v373 = &v428[-v427];
              }

              if (v354 >= 9)
              {
                v435 = v373 + 8;
                v436 = v356 + 8;
                v437 = &v356[v354];
                if (v356 - v373 > 15)
                {
                  *v436 = *v435;
                  if (v354 >= 25)
                  {
                    v446 = v356 + 24;
                    v447 = (v373 + 40);
                    do
                    {
                      *v446 = *(v447 - 1);
                      v448 = *v447;
                      v447 += 2;
                      v446[1] = v448;
                      v446 += 2;
                    }

                    while (v446 < v437);
                  }
                }

                else
                {
                  do
                  {
                    v438 = *v435;
                    v435 = (v435 + 8);
                    *v436 = v438;
                    v436 = (v436 + 8);
                  }

                  while (v436 < v437);
                }
              }
            }

            else
            {
              *v356 = *v373;
              if (v354 >= 17)
              {
                v375 = v356 + 16;
                v376 = (v373 + 32);
                do
                {
                  *v375 = *(v376 - 1);
                  v377 = *v376;
                  v376 += 2;
                  *(v375 + 1) = v377;
                  v375 += 32;
                }

                while (v375 < &v356[v354]);
              }
            }

            goto LABEL_526;
          }
        }

        else
        {
          v353 = *v339;
          v354 = v339[1];
          v355 = v339[2];
          v356 = (v117 + *v339);
          v357 = v354 + *v339;
          v358 = v485;
          v359 = &v485[*v339];
          _X8 = &v356[-v355];
          __asm { PRFM            #0, [X8] }

          v462 = v357;
          v362 = (v117 + v357);
          if (v359 > v457 || v362 > v337)
          {
            v486 = v353;
            v487 = v354;
            v488 = v355;
            v462 = ZSTD_execSequenceEnd(v117, v456, &v486, &v485, v457, v466, v455, v464);
            goto LABEL_526;
          }

          *v117 = *v485;
          v81 = v353 > 0x10;
          v364 = v353 - 16;
          if (v81)
          {
            *(v117 + 16) = *(v358 + 1);
            if (v364 >= 17)
            {
              v416 = (v117 + 32);
              v417 = (v358 + 48);
              do
              {
                *v416 = *(v417 - 1);
                v418 = *v417;
                v417 += 2;
                *(v416 + 1) = v418;
                v416 += 32;
              }

              while (v416 < v356);
            }
          }

          v485 = v359;
          if (v355 <= v356 - v466)
          {
            goto LABEL_506;
          }

          if (v355 > &v356[-v455])
          {
            return -20;
          }

          v365 = _X8 - v466;
          v366 = (v464 + _X8 - v466);
          if (v366 + v354 > v464)
          {
            memmove(v356, v366, v466 - _X8);
            v356 -= v365;
            v354 += v365;
            _X8 = v466;
LABEL_506:
            if (v355 < 0x10)
            {
              if (v355 > 7)
              {
                *v356 = *_X8;
              }

              else
              {
                v419 = ZSTD_overlapCopy8_dec64table[v355];
                *v356 = *_X8;
                v356[1] = _X8[1];
                v356[2] = _X8[2];
                v356[3] = _X8[3];
                v420 = &_X8[ZSTD_overlapCopy8_dec32table[v355]];
                *(v356 + 1) = *v420;
                _X8 = &v420[-v419];
              }

              if (v354 >= 9)
              {
                v429 = _X8 + 8;
                v430 = v356 + 8;
                v431 = &v356[v354];
                if (v356 - _X8 > 15)
                {
                  *v430 = *v429;
                  if (v354 >= 25)
                  {
                    v439 = v356 + 24;
                    v440 = (_X8 + 40);
                    do
                    {
                      *v439 = *(v440 - 1);
                      v441 = *v440;
                      v440 += 2;
                      v439[1] = v441;
                      v439 += 2;
                    }

                    while (v439 < v431);
                  }
                }

                else
                {
                  do
                  {
                    v432 = *v429;
                    v429 = (v429 + 8);
                    *v430 = v432;
                    v430 = (v430 + 8);
                  }

                  while (v430 < v431);
                }
              }
            }

            else
            {
              *v356 = *_X8;
              if (v354 >= 17)
              {
                v367 = v356 + 16;
                v368 = (_X8 + 32);
                do
                {
                  *v367 = *(v368 - 1);
                  v369 = *v368;
                  v368 += 2;
                  *(v367 + 1) = v369;
                  v367 += 32;
                }

                while (v367 < &v356[v354]);
              }
            }

            goto LABEL_526;
          }
        }

        memmove(v356, v366, v354);
LABEL_526:
        if (v462 > 0xFFFFFFFFFFFFFF88)
        {
          return v462;
        }

        v117 += v462;
LABEL_484:
        ++v336;
      }

      while (v336 != v472);
    }

    *v6 = vmovn_s64(*v484);
    v111 = v485;
    v6[2] = *&v484[16];
    if (v6[921] != 2)
    {
      goto LABEL_179;
    }

    goto LABEL_175;
  }

  v452 = v6 + 922;
  v453 = v456 - 32;
  v117 = __dsta;
  while (1)
  {
    v188 = (v479 + 8 * v478);
    v189 = (v483 + 8 * v482);
    v190 = (v481 + 8 * v480);
    v459 = *(v189 + 1);
    v461 = *(v188 + 1);
    v191 = *(v190 + 1);
    v192 = *(v188 + 2);
    v193 = *(v189 + 2);
    v194 = *(v190 + 2);
    v195 = *v188;
    v196 = *v189;
    v197 = *v190;
    v198 = *(v188 + 3);
    v199 = *(v189 + 3);
    v200 = *(v190 + 3);
    if (v194 >= 2)
    {
      v201 = v473 << v474 >> -v194;
      v474 += v194;
      v202 = v201 + v191;
LABEL_293:
      *&v484[16] = *&v484[8];
      v203 = v484;
      goto LABEL_296;
    }

    if (*(v190 + 2))
    {
      if (v461)
      {
        v191 = v191;
      }

      else
      {
        v191 = (v191 + 1);
      }

      v298 = v473 << v474++;
      v299 = v191 + (v298 >> 63);
      if (v299 == 3)
      {
        if (*v484 == 1)
        {
          v202 = -1;
        }

        else
        {
          v202 = *v484 - 1;
        }

        goto LABEL_293;
      }

      if (*&v484[8 * v299])
      {
        v202 = *&v484[8 * v299];
      }

      else
      {
        v202 = -1;
      }

      v203 = v484;
      if (v299 != 1)
      {
        goto LABEL_293;
      }
    }

    else
    {
      v202 = *&v484[8 * (v461 == 0)];
      v203 = &v484[8 * (v461 != 0)];
    }

LABEL_296:
    v204 = *v203;
    *v484 = v202;
    *&v484[8] = v204;
    if (v193)
    {
      v205 = v473 << v474 >> -v193;
      v474 += v193;
      v459 += v205;
    }

    if ((v193 + v192 + v194) >= 0x1Fu)
    {
      if (v474 >= 0x41)
      {
        v475 = &BIT_reloadDStream_zeroFilled;
      }

      else
      {
        if (v475 >= v477)
        {
          v296 = &v475[-(v474 >> 3)];
          v475 = v296;
          v297 = v474 & 7;
        }

        else
        {
          if (v475 == v476)
          {
            goto LABEL_299;
          }

          v294 = v474 >> 3;
          if (&v475[-v294] >= v476)
          {
            v295 = v294;
          }

          else
          {
            v295 = (v475 - v476);
          }

          v296 = &v475[-v295];
          v475 -= v295;
          v297 = v474 - 8 * v295;
        }

        v474 = v297;
        v473 = *v296;
      }
    }

LABEL_299:
    if (v192)
    {
      v206 = v473 << v474 >> -v192;
      v474 += v192;
      v461 += v206;
    }

    if (v178 != v472 - 1)
    {
      v207 = ((v473 >> -(v474 + v198)) & BIT_mask_36272[v198]) + v195;
      v208 = v474 + v198 + v199;
      v482 = ((v473 >> -v208) & BIT_mask_36272[v199]) + v196;
      v209 = v208 + v200;
      v474 = v208 + v200;
      v478 = v207;
      v480 = ((v473 >> -(v208 + v200)) & BIT_mask_36272[v200]) + v197;
      if ((v208 + v200) >= 0x41)
      {
        v475 = &BIT_reloadDStream_zeroFilled;
      }

      else
      {
        if (v475 >= v477)
        {
          v212 = &v475[-(v209 >> 3)];
          v475 = v212;
          v213 = v209 & 7;
        }

        else
        {
          if (v475 == v476)
          {
            goto LABEL_311;
          }

          v210 = v209 >> 3;
          if (&v475[-v210] >= v476)
          {
            v211 = v210;
          }

          else
          {
            v211 = (v475 - v476);
          }

          v212 = &v475[-v211];
          v475 -= v211;
          v213 = v209 - 8 * v211;
        }

        v474 = v213;
        v473 = *v212;
      }
    }

LABEL_311:
    if (v6[921] == 2)
    {
      break;
    }

    v228 = &v489[3 * (v178 & 7)];
    v229 = *v228;
    v230 = v228[1];
    v231 = v228[2];
    v232 = (v117 + *v228);
    v233 = v485;
    v234 = &v485[*v228];
    _X8 = v232 - v231;
    __asm { PRFM            #0, [X8] }

    if (v234 > v457 || (v462 = v230 + v229, v117 + v230 + v229 > v453))
    {
      v486 = v229;
      v487 = v230;
      v488 = v231;
      v462 = ZSTD_execSequenceEnd(v117, v456, &v486, &v485, v457, v466, v455, v464);
      goto LABEL_286;
    }

    *v117 = *v485;
    v81 = v229 > 0x10;
    v237 = v229 - 16;
    if (v81)
    {
      *(v117 + 16) = *(v233 + 1);
      if (v237 >= 17)
      {
        v300 = (v117 + 32);
        v301 = (v233 + 48);
        do
        {
          *v300 = *(v301 - 1);
          v302 = *v301;
          v301 += 2;
          v300[1] = v302;
          v300 += 2;
        }

        while (v300 < v232);
      }
    }

    v485 = v234;
    if (v231 <= v232 - v466)
    {
      goto LABEL_330;
    }

    if (v231 > v232 - v455)
    {
      return -20;
    }

    v238 = _X8 - v466;
    v239 = (v464 + _X8 - v466);
    if (v239 + v230 > v464)
    {
      memmove(v232, v239, v466 - _X8);
      v232 = (v232 - v238);
      v230 += v238;
      _X8 = v466;
LABEL_330:
      if (v231 < 0x10)
      {
        if (v231 > 7)
        {
          *v232 = *_X8;
        }

        else
        {
          v303 = ZSTD_overlapCopy8_dec64table[v231];
          *v232 = *_X8;
          *(v232 + 1) = _X8[1];
          *(v232 + 2) = _X8[2];
          *(v232 + 3) = _X8[3];
          v304 = &_X8[ZSTD_overlapCopy8_dec32table[v231]];
          *(v232 + 1) = *v304;
          _X8 = &v304[-v303];
        }

        if (v230 >= 9)
        {
          v313 = _X8 + 8;
          v314 = (v232 + 1);
          v315 = v232 + v230;
          if (v232 - _X8 > 15)
          {
            *v314 = *v313;
            if (v230 >= 25)
            {
              v323 = (v232 + 3);
              v324 = (_X8 + 40);
              do
              {
                *v323 = *(v324 - 1);
                v325 = *v324;
                v324 += 2;
                *(v323 + 1) = v325;
                v323 += 32;
              }

              while (v323 < v315);
            }
          }

          else
          {
            do
            {
              v316 = *v313;
              v313 = (v313 + 8);
              *v314 = v316;
              v314 += 8;
            }

            while (v314 < v315);
          }
        }
      }

      else
      {
        *v232 = *_X8;
        if (v230 >= 17)
        {
          v240 = v232 + 2;
          v241 = (_X8 + 32);
          do
          {
            *v240 = *(v241 - 1);
            v242 = *v241;
            v241 += 2;
            v240[1] = v242;
            v240 += 2;
          }

          while (v240 < (v232 + v230));
        }
      }

      goto LABEL_286;
    }

    v179 = v232;
    v180 = v230;
LABEL_285:
    memmove(v179, v239, v180);
LABEL_286:
    if (v462 > 0xFFFFFFFFFFFFFF88)
    {
      return v462;
    }

    v181 = v461 + v137;
    v182 = v466;
    if (v202 > v461 + v137)
    {
      v182 = v464;
    }

    _X10 = v182 + v181 - v202;
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X10,#0x40]
    }

    v186 = &v489[3 * (v178 & 7)];
    v187 = v459;
    *v186 = v461;
    v186[1] = v459;
    v186[2] = v202;
    v117 += v462;
LABEL_290:
    v137 = v181 + v187;
    if (++v178 == v472)
    {
      v83 = v476;
      v129 = v475;
      v178 = v472;
      v140 = v474;
      goto LABEL_477;
    }
  }

  v214 = v485;
  v215 = &v489[3 * (v178 & 7)];
  v216 = *v215;
  v217 = &v485[*v215];
  v218 = *(v470 + 30360);
  if (v217 <= v218)
  {
    v243 = v217 - 32;
    v245 = v215[1];
    v244 = v215[2];
    if (v217 > v457 || (v462 = v245 + v216, v117 + v245 + v216 > v243))
    {
      v486 = *v215;
      v487 = v245;
      v488 = v244;
      v462 = ZSTD_execSequenceEndSplitLitBuffer(v117, v456, v243, &v486, &v485, v457, v466, v455, v464);
      goto LABEL_286;
    }

    v246 = (v117 + v216);
    *v117 = *v485;
    if (v216 > 0x10)
    {
      *(v117 + 16) = *(v214 + 1);
      if (v216 - 16 >= 17)
      {
        v305 = (v117 + 32);
        v306 = (v214 + 48);
        do
        {
          *v305 = *(v306 - 1);
          v307 = *v306;
          v306 += 2;
          *(v305 + 1) = v307;
          v305 += 32;
        }

        while (v305 < v246);
      }
    }

    v247 = &v246[-v244];
    v485 = v217;
    if (v244 <= v246 - v466)
    {
      goto LABEL_342;
    }

    if (v244 > &v246[-v455])
    {
      return -20;
    }

    v248 = v247 - v466;
    v239 = (v464 + v247 - v466);
    if (v239 + v245 > v464)
    {
      memmove((v117 + v216), v239, v466 - v247);
      v246 -= v248;
      v245 += v248;
      v247 = v466;
LABEL_342:
      if (v244 < 0x10)
      {
        if (v244 > 7)
        {
          *v246 = *v247;
        }

        else
        {
          v311 = ZSTD_overlapCopy8_dec64table[v244];
          *v246 = *v247;
          v246[1] = v247[1];
          v246[2] = v247[2];
          v246[3] = v247[3];
          v312 = &v247[ZSTD_overlapCopy8_dec32table[v244]];
          *(v246 + 1) = *v312;
          v247 = &v312[-v311];
        }

        if (v245 >= 9)
        {
          v319 = v247 + 8;
          v320 = v246 + 8;
          v321 = &v246[v245];
          if (v246 - v247 > 15)
          {
            *v320 = *v319;
            if (v245 >= 25)
            {
              v330 = v246 + 24;
              v331 = (v247 + 40);
              do
              {
                *v330 = *(v331 - 1);
                v332 = *v331;
                v331 += 2;
                v330[1] = v332;
                v330 += 2;
              }

              while (v330 < v321);
            }
          }

          else
          {
            do
            {
              v322 = *v319;
              v319 = (v319 + 8);
              *v320 = v322;
              v320 = (v320 + 8);
            }

            while (v320 < v321);
          }
        }
      }

      else
      {
        *v246 = *v247;
        if (v245 >= 17)
        {
          v249 = v246 + 16;
          v250 = (v247 + 32);
          do
          {
            *v249 = *(v250 - 1);
            v251 = *v250;
            v250 += 2;
            *(v249 + 1) = v251;
            v249 += 32;
          }

          while (v249 < &v246[v245]);
        }
      }

      goto LABEL_286;
    }

    v179 = (v117 + v216);
    v180 = v245;
    goto LABEL_285;
  }

  v219 = v218 - v485;
  if (v218 == v485)
  {
    goto LABEL_385;
  }

  if (v219 <= v456 - v117)
  {
    v220 = v117 - v485;
    v221 = (v117 + v219);
    if ((v117 - v485) <= -8 && v219 > 7)
    {
      v222 = 0;
      if (v220 > 0xFFFFFFFFFFFFFFEFLL || (v223 = (v221 - 32), v224 = v219 - 32, (v221 - 32) < v117))
      {
        v223 = v117;
      }

      else
      {
        *v117 = *v485;
        if (v224 >= 17)
        {
          v225 = (v117 + 16);
          v226 = (v214 + 32);
          do
          {
            *v225 = *(v226 - 1);
            v227 = *v226;
            v226 += 2;
            v225[1] = v227;
            v225 += 2;
          }

          while (v225 < v223);
        }

        v214 += v224;
        v222 = v223 - v214 < 0x20;
      }

      v255 = v219 + v117 - v223;
      if (v255 < 8 || v222)
      {
        v257 = v223;
      }

      else
      {
        if (v255 < 0x20)
        {
          v256 = 0;
LABEL_365:
          v262 = v255 & 0xFFFFFFFFFFFFFFF8;
          v257 = (v223 + (v255 & 0xFFFFFFFFFFFFFFF8));
          v263 = v256 - (v255 & 0xFFFFFFFFFFFFFFF8);
          v264 = &v214[v256];
          v265 = (v223 + v256);
          do
          {
            v266 = *v264;
            v264 += 8;
            *v265++ = v266;
            v263 += 8;
          }

          while (v263);
          if (v255 != v262)
          {
            v214 += v262;
            goto LABEL_380;
          }

LABEL_384:
          v216 = *v215 - v219;
          *v215 = v216;
          v117 += v219;
LABEL_385:
          v485 = (v6 + 922);
          v6[921] = 0;
          v280 = v215[1];
          v279 = v215[2];
          v281 = (v117 + v216);
          _X8 = (v117 + v216 - v279);
          __asm { PRFM            #0, [X8] }

          v462 = v280 + v216;
          if (v216 > 0x10000 || v117 + v280 + v216 > v453)
          {
            v486 = v216;
            v487 = v280;
            v488 = v279;
            v462 = ZSTD_execSequenceEnd(v117, v456, &v486, &v485, v470 + 95908, v466, v455, v464);
          }

          else
          {
            *v117 = *v452;
            if (v216 > 0x10)
            {
              *(v117 + 16) = *(v6 + 926);
              if (v216 - 16 >= 17)
              {
                v308 = (v117 + 32);
                v309 = (v6 + 934);
                do
                {
                  *v308 = *(v309 - 1);
                  v310 = *v309;
                  v309 += 2;
                  *(v308 + 1) = v310;
                  v308 += 32;
                }

                while (v308 < v281);
              }
            }

            v485 = v452 + v216;
            if (v279 <= v281 - v466)
            {
LABEL_394:
              if (v279 < 0x10)
              {
                if (v279 > 7)
                {
                  *v281 = *_X8;
                }

                else
                {
                  v317 = ZSTD_overlapCopy8_dec64table[v279];
                  *v281 = *_X8;
                  v281[1] = _X8[1];
                  v281[2] = _X8[2];
                  v281[3] = _X8[3];
                  v318 = &_X8[ZSTD_overlapCopy8_dec32table[v279]];
                  *(v281 + 1) = *v318;
                  _X8 = &v318[-v317];
                }

                if (v280 >= 9)
                {
                  v326 = _X8 + 8;
                  v327 = v281 + 8;
                  v328 = &v281[v280];
                  if (v281 - _X8 > 15)
                  {
                    *v327 = *v326;
                    if (v280 >= 25)
                    {
                      v333 = v281 + 24;
                      v334 = (_X8 + 40);
                      do
                      {
                        *v333 = *(v334 - 1);
                        v335 = *v334;
                        v334 += 2;
                        v333[1] = v335;
                        v333 += 2;
                      }

                      while (v333 < v328);
                    }
                  }

                  else
                  {
                    do
                    {
                      v329 = *v326;
                      v326 = (v326 + 8);
                      *v327 = v329;
                      v327 = (v327 + 8);
                    }

                    while (v327 < v328);
                  }
                }
              }

              else
              {
                *v281 = *_X8;
                if (v280 >= 17)
                {
                  v287 = v281 + 16;
                  v288 = (_X8 + 32);
                  do
                  {
                    *v287 = *(v288 - 1);
                    v289 = *v288;
                    v288 += 2;
                    *(v287 + 1) = v289;
                    v287 += 32;
                  }

                  while (v287 < &v281[v280]);
                }
              }
            }

            else
            {
              if (v279 > &v281[-v455])
              {
                return -20;
              }

              v285 = _X8 - v466;
              v286 = (v464 + _X8 - v466);
              if (v286 + v280 > v464)
              {
                memmove((v117 + v216), v286, v466 - _X8);
                v281 -= v285;
                v280 += v285;
                _X8 = v466;
                goto LABEL_394;
              }

              memmove((v117 + v216), v286, v280);
            }
          }

          if (v462 > 0xFFFFFFFFFFFFFF88)
          {
            return v462;
          }

          v181 = v461 + v137;
          v290 = v466;
          if (v202 > v461 + v137)
          {
            v290 = v464;
          }

          _X9 = v290 + v181 - v202;
          __asm
          {
            PRFM            #0, [X9]
            PRFM            #0, [X9,#0x40]
          }

          *v215 = v461;
          v187 = v459;
          v215[1] = v459;
          v215[2] = v202;
          v117 += v462;
          v457 = v470 + 95908;
          goto LABEL_290;
        }

        v256 = v255 & 0xFFFFFFFFFFFFFFE0;
        v258 = (v214 + 16);
        v259 = (v223 + 16);
        v260 = v255 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v261 = *v258;
          *(v259 - 1) = *(v258 - 1);
          *v259 = v261;
          v258 += 2;
          v259 += 2;
          v260 -= 32;
        }

        while (v260);
        if (v255 == v256)
        {
          goto LABEL_384;
        }

        if ((v255 & 0x18) != 0)
        {
          goto LABEL_365;
        }

        v214 += v256;
        v257 = (v223 + v256);
      }

      do
      {
LABEL_380:
        v277 = *v214++;
        *v257++ = v277;
      }

      while (v257 != (v219 + v117));
      goto LABEL_384;
    }

    if (v219 < 1)
    {
      goto LABEL_384;
    }

    v252 = &v218[v117] - v485;
    if (v252 <= v117 + 1)
    {
      v252 = v117 + 1;
    }

    v253 = v252 - v117;
    if (v253 < 8)
    {
      v267 = v117;
    }

    else if (v220 < 0x20)
    {
      v267 = v117;
    }

    else
    {
      if (v253 < 0x20)
      {
        v254 = 0;
        goto LABEL_375;
      }

      v254 = v253 & 0xFFFFFFFFFFFFFFE0;
      v268 = v485 + 16;
      v269 = (v117 + 16);
      v270 = v253 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v271 = *v268;
        *(v269 - 1) = *(v268 - 1);
        *v269 = v271;
        v268 += 32;
        v269 += 2;
        v270 -= 32;
      }

      while (v270);
      if (v253 == v254)
      {
        goto LABEL_384;
      }

      if ((v253 & 0x18) != 0)
      {
LABEL_375:
        v272 = v253 & 0xFFFFFFFFFFFFFFF8;
        v267 = (v117 + (v253 & 0xFFFFFFFFFFFFFFF8));
        v273 = v254 - (v253 & 0xFFFFFFFFFFFFFFF8);
        v274 = &v214[v254];
        v275 = (v117 + v254);
        do
        {
          v276 = *v274;
          v274 += 8;
          *v275++ = v276;
          v273 += 8;
        }

        while (v273);
        if (v253 == v272)
        {
          goto LABEL_384;
        }

        v214 += v272;
      }

      else
      {
        v214 += v254;
        v267 = (v117 + v254);
      }
    }

    do
    {
      v278 = *v214++;
      *v267++ = v278;
    }

    while (v267 < v221);
    goto LABEL_384;
  }

  return -70;
}

uint64_t ZSTD_decompressSequencesSplitLitBuffer(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v6 = __dst;
  v8 = a1 + 26684;
  v9 = &__dst[a3 & ~(a3 >> 63)];
  v10 = *(a1 + 30120);
  v239 = v10;
  v11 = *(a1 + 30360);
  if (!a6)
  {
    v223 = v6;
    goto LABEL_8;
  }

  v12 = *(a1 + 29896);
  v224 = *(a1 + 29912);
  v225 = *(a1 + 29904);
  *(a1 + 30004) = 1;
  v13.i64[0] = *v8;
  v13.i64[1] = HIDWORD(*v8);
  v237 = v13;
  v238 = *(a1 + 26692);
  if (!a5)
  {
    return -20;
  }

  v14 = a6;
  v222 = v9;
  v15 = a4 + 8;
  v230 = a4 + 8;
  v16 = a5 - 8;
  if (a5 >= 8)
  {
    v17 = *&a4[v16];
    v228 = &a4[v16];
    v226 = v17;
    if (!HIBYTE(v17) || a5 > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }

    v18 = 8 - (__clz(HIBYTE(v17)) ^ 0x1F);
    goto LABEL_32;
  }

  v17 = *a4;
  v228 = a4;
  v226 = v17;
  if (a5 > 4)
  {
    if (a5 != 5)
    {
      if (a5 != 6)
      {
        v17 |= a4[6] << 48;
      }

      v17 += a4[5] << 40;
    }

    v17 += a4[4] << 32;
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    if (a5 == 3)
    {
LABEL_28:
      v17 += a4[2] << 16;
      goto LABEL_29;
    }

    if (a5 != 4)
    {
      goto LABEL_30;
    }

LABEL_27:
    v17 += a4[3] << 24;
    goto LABEL_28;
  }

LABEL_29:
  v17 += a4[1] << 8;
  v226 = v17;
LABEL_30:
  if (!a4[a5 - 1])
  {
    return -20;
  }

  v16 = 0;
  v18 = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_32:
  v24 = *(*a1 + 4);
  v25 = v24 + v18;
  v231 = (v17 >> -(v24 + v18)) & BIT_mask_36272[v24];
  if (v24 + v18 >= 0x41)
  {
    v27 = &BIT_reloadDStream_zeroFilled;
    v228 = &BIT_reloadDStream_zeroFilled;
  }

  else
  {
    v26 = &a4[v16];
    if (v16 >= 8)
    {
      v27 = &v26[-(v25 >> 3)];
      v228 = v27;
      v25 &= 7u;
    }

    else
    {
      v27 = a4;
      if (!v16)
      {
        goto LABEL_41;
      }

      v28 = v25 >> 3;
      if (&v26[-v28] >= a4)
      {
        v28 = v28;
      }

      else
      {
        v28 = v16;
      }

      v27 = &v26[-v28];
      v228 = &v26[-v28];
      v25 -= 8 * v28;
    }

    v17 = *v27;
    v226 = *v27;
  }

LABEL_41:
  v232 = *a1 + 8;
  v29 = *(a1 + 16);
  v30 = *(v29 + 4);
  v31 = v30 + v25;
  v233 = (v17 >> -v31) & BIT_mask_36272[v30];
  if (v31 >= 0x41)
  {
    v27 = &BIT_reloadDStream_zeroFilled;
    v228 = &BIT_reloadDStream_zeroFilled;
  }

  else
  {
    if (v27 >= v15)
    {
      v27 -= v31 >> 3;
      v17 = *v27;
      v31 &= 7u;
    }

    else
    {
      if (v27 == a4)
      {
        goto LABEL_50;
      }

      v32 = v31 >> 3;
      if (&v27[-v32] >= a4)
      {
        v33 = v32;
      }

      else
      {
        v33 = (v27 - a4);
      }

      v27 -= v33;
      v17 = *v27;
      v31 -= 8 * v33;
    }

    v228 = v27;
    v226 = v17;
  }

LABEL_50:
  v234 = v29 + 8;
  v34 = *(a1 + 8);
  v35 = *(v34 + 4);
  v36 = v35 + v31;
  v227 = v36;
  v235 = (v17 >> -v36) & BIT_mask_36272[v35];
  v221 = a1 + 26684;
  if (v36 >= 0x41)
  {
    v228 = &BIT_reloadDStream_zeroFilled;
    goto LABEL_59;
  }

  if (v27 >= v15)
  {
    v228 = &v27[-(v36 >> 3)];
    v227 = v36 & 7;
    v38 = *v228;
LABEL_58:
    v226 = v38;
    goto LABEL_59;
  }

  if (v27 != a4)
  {
    v37 = v36 >> 3;
    if (&v27[-v37] >= a4)
    {
      v37 = v37;
    }

    else
    {
      v37 = (v27 - a4);
    }

    v228 = &v27[-v37];
    v227 = v36 - 8 * v37;
    v38 = *&v27[-v37];
    goto LABEL_58;
  }

LABEL_59:
  v236 = v34 + 8;
  v223 = v6;
  do
  {
    v39 = (v232 + 8 * v231);
    v40 = (v236 + 8 * v235);
    v41 = (v234 + 8 * v233);
    v42 = *(v40 + 1);
    v43 = *(v39 + 1);
    v44 = *(v41 + 1);
    v45 = *(v39 + 2);
    v46 = *(v40 + 2);
    v47 = *(v41 + 2);
    v48 = *v39;
    v49 = *v40;
    v50 = *v41;
    v51 = *(v39 + 3);
    v52 = *(v40 + 3);
    v53 = *(v41 + 3);
    if (v47 >= 2)
    {
      v54 = v226 << v227 >> -v47;
      v227 += v47;
      v55 = v54 + v44;
LABEL_62:
      v238 = v237.i64[1];
      v56 = &v237;
      goto LABEL_65;
    }

    if (*(v41 + 2))
    {
      if (v43)
      {
        v44 = v44;
      }

      else
      {
        v44 = (v44 + 1);
      }

      v88 = v226 << v227++;
      v89 = v44 + (v88 >> 63);
      if (v89 == 3)
      {
        if (v237.i64[0] == 1)
        {
          v55 = -1;
        }

        else
        {
          v55 = v237.i64[0] - 1;
        }

        goto LABEL_62;
      }

      if (v237.i64[v89])
      {
        v55 = v237.u64[v89];
      }

      else
      {
        v55 = -1;
      }

      v56 = &v237;
      if (v89 != 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v55 = v237.u64[v43 == 0];
      v56 = (&v237 + 8 * (v43 != 0));
    }

LABEL_65:
    v57 = v56->i64[0];
    v237.i64[0] = v55;
    v237.i64[1] = v57;
    if (v46)
    {
      v58 = v226 << v227 >> -v46;
      v227 += v46;
      v42 += v58;
    }

    if ((v46 + v45 + v47) >= 0x1Fu)
    {
      if (v227 >= 0x41)
      {
        v228 = &BIT_reloadDStream_zeroFilled;
      }

      else
      {
        if (v228 >= v230)
        {
          v81 = &v228[-(v227 >> 3)];
          v228 = v81;
          v82 = v227 & 7;
        }

        else
        {
          if (v228 == a4)
          {
            goto LABEL_68;
          }

          if (&v228[-(v227 >> 3)] >= a4)
          {
            v80 = v227 >> 3;
          }

          else
          {
            v80 = (v228 - a4);
          }

          v81 = &v228[-v80];
          v228 -= v80;
          v82 = v227 - 8 * v80;
        }

        v227 = v82;
        v226 = *v81;
      }
    }

LABEL_68:
    if (v45)
    {
      v59 = v226 << v227 >> -v45;
      v227 += v45;
      v43 += v59;
    }

    if (v14 == 1)
    {
      v60 = v239;
      v61 = &v239[v43];
      v62 = *(a1 + 30360);
      if (&v239[v43] > v62)
      {
        v97 = 1;
        goto LABEL_144;
      }

      goto LABEL_83;
    }

    v63 = ((v226 >> -(v227 + v51)) & BIT_mask_36272[v51]) + v48;
    v64 = v227 + v51 + v52;
    v235 = ((v226 >> -v64) & BIT_mask_36272[v52]) + v49;
    v65 = v64 + v53;
    v227 = v64 + v53;
    v231 = v63;
    v233 = ((v226 >> -(v64 + v53)) & BIT_mask_36272[v53]) + v50;
    if ((v64 + v53) >= 0x41)
    {
      v228 = &BIT_reloadDStream_zeroFilled;
    }

    else
    {
      if (v228 >= v230)
      {
        v68 = &v228[-(v65 >> 3)];
        v228 = v68;
        v69 = v65 & 7;
      }

      else
      {
        if (v228 == a4)
        {
          goto LABEL_82;
        }

        v66 = v65 >> 3;
        if (&v228[-v66] >= a4)
        {
          v67 = v66;
        }

        else
        {
          v67 = (v228 - a4);
        }

        v68 = &v228[-v67];
        v228 -= v67;
        v69 = v65 - 8 * v67;
      }

      v227 = v69;
      v226 = *v68;
    }

LABEL_82:
    v60 = v239;
    v61 = &v239[v43];
    v62 = *(a1 + 30360);
    if (&v239[v43] > v62)
    {
      v97 = v14;
      if (v14 < 1)
      {
        return -20;
      }

LABEL_144:
      v98 = v62 - v60;
      if (v62 == v60)
      {
        goto LABEL_191;
      }

      if (v98 > (v222 - v6))
      {
        return -70;
      }

      v99 = v6 - v60;
      v100 = &v6[v98];
      if (v6 - v60 <= -8 && v98 > 7)
      {
        v101 = 0;
        if (v99 > 0xFFFFFFFFFFFFFFEFLL || (v102 = v100 - 32, v103 = v98 - 32, v100 - 32 < v6))
        {
          v102 = v6;
        }

        else
        {
          *v6 = *v60;
          if (v103 >= 17)
          {
            v104 = v6 + 16;
            v105 = (v60 + 32);
            do
            {
              *v104 = *(v105 - 1);
              v106 = *v105;
              v105 += 2;
              *(v104 + 1) = v106;
              v104 += 32;
            }

            while (v104 < v102);
          }

          v60 += v103;
          v101 = (v102 - v60) < 0x20;
        }

        v110 = &v6[v98] - v102;
        if (v110 < 8 || v101)
        {
          v112 = v102;
        }

        else
        {
          if (v110 < 0x20)
          {
            v111 = 0;
LABEL_171:
            v117 = v110 & 0xFFFFFFFFFFFFFFF8;
            v112 = &v102[v110 & 0xFFFFFFFFFFFFFFF8];
            v118 = v111 - (v110 & 0xFFFFFFFFFFFFFFF8);
            v119 = &v60[v111];
            v120 = &v102[v111];
            do
            {
              v121 = *v119;
              v119 += 8;
              *v120 = v121;
              v120 += 8;
              v118 += 8;
            }

            while (v118);
            if (v110 == v117)
            {
              goto LABEL_190;
            }

            v60 += v117;
            goto LABEL_186;
          }

          v111 = v110 & 0xFFFFFFFFFFFFFFE0;
          v113 = (v60 + 16);
          v114 = v102 + 16;
          v115 = v110 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v116 = *v113;
            *(v114 - 1) = *(v113 - 1);
            *v114 = v116;
            v113 += 2;
            v114 += 2;
            v115 -= 32;
          }

          while (v115);
          if (v110 == v111)
          {
            goto LABEL_190;
          }

          if ((v110 & 0x18) != 0)
          {
            goto LABEL_171;
          }

          v60 += v111;
          v112 = &v102[v111];
        }

        do
        {
LABEL_186:
          v132 = *v60++;
          *v112++ = v132;
        }

        while (v112 != &v6[v98]);
        goto LABEL_190;
      }

      if (v98 < 1)
      {
LABEL_190:
        v43 -= v98;
        v6 += v98;
LABEL_191:
        v239 = (v221 + 3688);
        v11 = a1 + 95908;
        *(v221 + 3684) = 0;
        v134 = &v6[v43];
        _X9 = &v6[v43 - v55];
        __asm { PRFM            #0, [X9] }

        v141 = v222 - 32;
        if (v43 > 0x10000 || (v22 = v43 + v42, &v6[v43 + v42] > v141))
        {
          v240 = v43;
          v241 = v42;
          v242 = v55;
          v206 = v97;
          v207 = ZSTD_execSequenceEnd(v6, v222, &v240, &v239, a1 + 95908, v12, v225, v224);
          v97 = v206;
          v22 = v207;
          v8 = v221;
          goto LABEL_204;
        }

        v142 = (a1 + v43 + 30372);
        *v6 = *(v221 + 3688);
        v72 = v43 > 0x10;
        v143 = v43 - 16;
        if (v72)
        {
          *(v6 + 1) = *(v221 + 3704);
          if (v143 >= 17)
          {
            v208 = v6 + 32;
            v209 = (v221 + 3736);
            do
            {
              *v208 = *(v209 - 1);
              v210 = *v209;
              v209 += 2;
              *(v208 + 1) = v210;
              v208 += 32;
            }

            while (v208 < v134);
          }
        }

        v239 = v142;
        if (v55 <= v134 - v12)
        {
          goto LABEL_198;
        }

        if (v55 <= &v134[-v225])
        {
          v220 = v97;
          v144 = _X9 - v12;
          v145 = (v224 + _X9 - v12);
          if (v145 + v42 > v224)
          {
            memmove(v134, v145, v12 - _X9);
            v134 -= v144;
            v42 += v144;
            _X9 = v12;
            v141 = v222 - 32;
            v97 = v220;
LABEL_198:
            if (v55 < 0x10)
            {
              if (v55 > 7)
              {
                *v134 = *_X9;
              }

              else
              {
                v211 = ZSTD_overlapCopy8_dec64table[v55];
                *v134 = *_X9;
                v134[1] = _X9[1];
                v134[2] = _X9[2];
                v134[3] = _X9[3];
                v212 = &_X9[ZSTD_overlapCopy8_dec32table[v55]];
                *(v134 + 1) = *v212;
                _X9 = &v212[-v211];
              }

              if (v42 >= 9)
              {
                v213 = _X9 + 8;
                v214 = v134 + 8;
                v215 = &v134[v42];
                if (v134 - _X9 > 15)
                {
                  *v214 = *v213;
                  if (v42 >= 25)
                  {
                    v217 = v134 + 24;
                    v218 = (_X9 + 40);
                    do
                    {
                      *v217 = *(v218 - 1);
                      v219 = *v218;
                      v218 += 2;
                      *(v217 + 1) = v219;
                      v217 += 32;
                    }

                    while (v217 < v215);
                  }
                }

                else
                {
                  do
                  {
                    v216 = *v213;
                    v213 = (v213 + 8);
                    *v214 = v216;
                    v214 = (v214 + 8);
                  }

                  while (v214 < v215);
                }
              }

              v141 = v222 - 32;
              v8 = v221;
            }

            else
            {
              *v134 = *_X9;
              if (v42 >= 17)
              {
                v146 = v134 + 16;
                v147 = (_X9 + 32);
                do
                {
                  *v146 = *(v147 - 1);
                  v148 = *v147;
                  v147 += 2;
                  *(v146 + 1) = v148;
                  v146 += 32;
                }

                while (v146 < &v134[v42]);
              }

              v8 = v221;
            }

            goto LABEL_204;
          }

          memmove(v134, v145, v42);
          v141 = v222 - 32;
          v8 = v221;
          v97 = v220;
LABEL_204:
          if (v22 > 0xFFFFFFFFFFFFFF88)
          {
            return v22;
          }

          v6 += v22;
          if (v14 == 1)
          {
            goto LABEL_140;
          }

          v149 = v97 - 1;
          while (1)
          {
            v150 = (v232 + 8 * v231);
            v151 = (v236 + 8 * v235);
            v152 = (v234 + 8 * v233);
            v153 = *(v151 + 1);
            v154 = *(v150 + 1);
            v155 = *(v152 + 1);
            v156 = *(v150 + 2);
            v157 = *(v151 + 2);
            v158 = *(v152 + 2);
            v159 = *v150;
            v160 = *v151;
            v161 = *v152;
            v162 = *(v150 + 3);
            v163 = *(v151 + 3);
            v164 = *(v152 + 3);
            if (v158 >= 2)
            {
              break;
            }

            if (*(v152 + 2))
            {
              if (v154)
              {
                v155 = v155;
              }

              else
              {
                v155 = (v155 + 1);
              }

              v196 = v226 << v227++;
              v197 = v155 + (v196 >> 63);
              if (v197 == 3)
              {
                if (v237.i64[0] == 1)
                {
                  v166 = -1;
                }

                else
                {
                  v166 = v237.i64[0] - 1;
                }

                v141 = v222 - 32;
                goto LABEL_209;
              }

              if (v237.i64[v197])
              {
                v166 = v237.u64[v197];
              }

              else
              {
                v166 = -1;
              }

              v167 = &v237;
              v141 = v222 - 32;
              if (v197 != 1)
              {
                goto LABEL_209;
              }
            }

            else
            {
              v166 = v237.u64[v154 == 0];
              v167 = (&v237 + 8 * (v154 != 0));
            }

LABEL_212:
            v168 = v167->i64[0];
            v237.i64[0] = v166;
            v237.i64[1] = v168;
            if (v157)
            {
              v169 = v226 << v227 >> -v157;
              v227 += v157;
              v153 += v169;
            }

            if ((v157 + v156 + v158) >= 0x1Fu)
            {
              if (v227 >= 0x41)
              {
                v228 = &BIT_reloadDStream_zeroFilled;
                v141 = v222 - 32;
              }

              else if (v228 >= v230)
              {
                v228 -= v227 >> 3;
                v227 &= 7u;
                v226 = *v228;
                v141 = v222 - 32;
              }

              else
              {
                v141 = v222 - 32;
                if (v228 != a4)
                {
                  if (&v228[-(v227 >> 3)] >= a4)
                  {
                    v190 = v227 >> 3;
                  }

                  else
                  {
                    v190 = (v228 - a4);
                  }

                  v228 -= v190;
                  v227 -= 8 * v190;
                  v226 = *v228;
                }
              }
            }

            if (v156)
            {
              v170 = v226 << v227 >> -v156;
              v227 += v156;
              v154 += v170;
            }

            if (v149 != 1)
            {
              v171 = ((v226 >> -(v227 + v162)) & BIT_mask_36272[v162]) + v159;
              v172 = v227 + v162 + v163;
              v235 = ((v226 >> -v172) & BIT_mask_36272[v163]) + v160;
              v173 = v172 + v164;
              v227 = v172 + v164;
              v231 = v171;
              v233 = ((v226 >> -(v172 + v164)) & BIT_mask_36272[v164]) + v161;
              if ((v172 + v164) >= 0x41)
              {
                v228 = &BIT_reloadDStream_zeroFilled;
                goto LABEL_227;
              }

              if (v228 >= v230)
              {
                v176 = &v228[-(v173 >> 3)];
                v228 = v176;
                v177 = v173 & 7;
LABEL_226:
                v227 = v177;
                v226 = *v176;
                goto LABEL_227;
              }

              if (v228 != a4)
              {
                v174 = v173 >> 3;
                if (&v228[-v174] >= a4)
                {
                  v175 = v174;
                }

                else
                {
                  v175 = (v228 - a4);
                }

                v176 = &v228[-v175];
                v228 -= v175;
                v177 = v173 - 8 * v175;
                goto LABEL_226;
              }
            }

LABEL_227:
            v178 = &v6[v154];
            v179 = v239;
            v180 = &v239[v154];
            _X9 = &v6[v154 - v166];
            __asm { PRFM            #0, [X9] }

            if (&v239[v154] > v11 || (v22 = v154 + v153, &v6[v154 + v153] > v141))
            {
              v240 = v154;
              v241 = v153;
              v242 = v166;
              v22 = ZSTD_execSequenceEnd(v6, v222, &v240, &v239, a1 + 95908, v12, v225, v224);
            }

            else
            {
              *v6 = *v239;
              v72 = v154 > 0x10;
              v183 = v154 - 16;
              if (v72)
              {
                *(v6 + 1) = *(v179 + 1);
                if (v183 >= 17)
                {
                  v191 = v6 + 32;
                  v192 = (v179 + 48);
                  do
                  {
                    *v191 = *(v192 - 1);
                    v193 = *v192;
                    v192 += 2;
                    *(v191 + 1) = v193;
                    v191 += 32;
                  }

                  while (v191 < v178);
                }
              }

              v239 = v180;
              if (v166 > v178 - v12)
              {
                if (v166 > &v178[-v225])
                {
                  return -20;
                }

                v184 = _X9 - v12;
                v185 = (v224 + _X9 - v12);
                if (v185 + v153 <= v224)
                {
                  memmove(v178, v185, v153);
                  goto LABEL_242;
                }

                memmove(v178, v185, v12 - _X9);
                v178 -= v184;
                v153 += v184;
                _X9 = v12;
                v141 = v222 - 32;
              }

              if (v166 < 0x10)
              {
                if (v166 > 7)
                {
                  *v178 = *_X9;
                }

                else
                {
                  v194 = ZSTD_overlapCopy8_dec64table[v166];
                  *v178 = *_X9;
                  v178[1] = _X9[1];
                  v178[2] = _X9[2];
                  v178[3] = _X9[3];
                  v195 = &_X9[ZSTD_overlapCopy8_dec32table[v166]];
                  *(v178 + 1) = *v195;
                  _X9 = &v195[-v194];
                }

                if (v153 >= 9)
                {
                  v198 = _X9 + 8;
                  v199 = v178 + 8;
                  v200 = &v178[v153];
                  if (v178 - _X9 > 15)
                  {
                    *v199 = *v198;
                    if (v153 >= 25)
                    {
                      v202 = v178 + 24;
                      v203 = (_X9 + 40);
                      do
                      {
                        *v202 = *(v203 - 1);
                        v204 = *v203;
                        v203 += 2;
                        *(v202 + 1) = v204;
                        v202 += 32;
                      }

                      while (v202 < v200);
                    }
                  }

                  else
                  {
                    do
                    {
                      v201 = *v198;
                      v198 = (v198 + 8);
                      *v199 = v201;
                      v199 = (v199 + 8);
                    }

                    while (v199 < v200);
                  }
                }

LABEL_242:
                v141 = v222 - 32;
                v8 = v221;
LABEL_243:
                if (v22 > 0xFFFFFFFFFFFFFF88)
                {
                  return v22;
                }

                goto LABEL_244;
              }

              *v178 = *_X9;
              if (v153 >= 17)
              {
                v186 = &v178[v153];
                v187 = v178 + 16;
                v188 = (_X9 + 32);
                v8 = v221;
                do
                {
                  *v187 = *(v188 - 1);
                  v189 = *v188;
                  v188 += 2;
                  *(v187 + 1) = v189;
                  v187 += 32;
                }

                while (v187 < v186);
                goto LABEL_243;
              }
            }

            v8 = v221;
            if (v22 > 0xFFFFFFFFFFFFFF88)
            {
              return v22;
            }

LABEL_244:
            v6 += v22;
            if (!--v149)
            {
              goto LABEL_140;
            }
          }

          v165 = v226 << v227 >> -v158;
          v227 += v158;
          v166 = v165 + v155;
LABEL_209:
          v238 = v237.i64[1];
          v167 = &v237;
          goto LABEL_212;
        }

        return -20;
      }

      v107 = &v62[v6] - v60;
      if (v107 <= (v6 + 1))
      {
        v107 = (v6 + 1);
      }

      v108 = v107 - v6;
      if (v108 < 8)
      {
        v122 = v6;
      }

      else if (v99 < 0x20)
      {
        v122 = v6;
      }

      else
      {
        if (v108 < 0x20)
        {
          v109 = 0;
LABEL_181:
          v127 = v108 & 0xFFFFFFFFFFFFFFF8;
          v122 = &v6[v108 & 0xFFFFFFFFFFFFFFF8];
          v128 = v109 - (v108 & 0xFFFFFFFFFFFFFFF8);
          v129 = &v60[v109];
          v130 = &v6[v109];
          do
          {
            v131 = *v129;
            v129 += 8;
            *v130 = v131;
            v130 += 8;
            v128 += 8;
          }

          while (v128);
          if (v108 == v127)
          {
            goto LABEL_190;
          }

          v60 += v127;
          goto LABEL_189;
        }

        v109 = v108 & 0xFFFFFFFFFFFFFFE0;
        v123 = (v60 + 16);
        v124 = v6 + 16;
        v125 = v108 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v126 = *v123;
          *(v124 - 1) = *(v123 - 1);
          *v124 = v126;
          v123 += 2;
          v124 += 2;
          v125 -= 32;
        }

        while (v125);
        if (v108 == v109)
        {
          goto LABEL_190;
        }

        if ((v108 & 0x18) != 0)
        {
          goto LABEL_181;
        }

        v60 += v109;
        v122 = &v6[v109];
      }

      do
      {
LABEL_189:
        v133 = *v60++;
        *v122++ = v133;
      }

      while (v122 < v100);
      goto LABEL_190;
    }

LABEL_83:
    v70 = v61 - 32;
    if (v61 > v11 || (v22 = v43 + v42, &v6[v43 + v42] > v70))
    {
      v240 = v43;
      v241 = v42;
      v242 = v55;
      v22 = ZSTD_execSequenceEndSplitLitBuffer(v6, v222, v70, &v240, &v239, v11, v12, v225, v224);
    }

    else
    {
      v71 = &v6[v43];
      *v6 = *v60;
      v72 = v43 > 0x10;
      v73 = v43 - 16;
      if (v72)
      {
        *(v6 + 1) = *(v60 + 1);
        if (v73 >= 17)
        {
          v83 = v6 + 32;
          v84 = (v60 + 48);
          do
          {
            *v83 = *(v84 - 1);
            v85 = *v84;
            v84 += 2;
            *(v83 + 1) = v85;
            v83 += 32;
          }

          while (v83 < v71);
        }
      }

      v74 = &v71[-v55];
      v239 = v61;
      if (v55 > v71 - v12)
      {
        if (v55 > &v71[-v225])
        {
          return -20;
        }

        v75 = v74 - v12;
        v76 = (v224 + v74 - v12);
        if (v76 + v42 <= v224)
        {
          memmove(v71, v76, v42);
          goto LABEL_96;
        }

        memmove(v71, v76, v12 - v74);
        v71 -= v75;
        v42 += v75;
        v74 = v12;
      }

      if (v55 < 0x10)
      {
        if (v55 > 7)
        {
          *v71 = *v74;
        }

        else
        {
          v86 = ZSTD_overlapCopy8_dec64table[v55];
          *v71 = *v74;
          v71[1] = v74[1];
          v71[2] = v74[2];
          v71[3] = v74[3];
          v87 = &v74[ZSTD_overlapCopy8_dec32table[v55]];
          *(v71 + 1) = *v87;
          v74 = &v87[-v86];
        }

        if (v42 >= 9)
        {
          v90 = v74 + 8;
          v91 = v71 + 8;
          v92 = &v71[v42];
          if (v71 - v74 > 15)
          {
            *v91 = *v90;
            if (v42 >= 25)
            {
              v94 = v71 + 24;
              v95 = (v74 + 40);
              do
              {
                *v94 = *(v95 - 1);
                v96 = *v95;
                v95 += 2;
                *(v94 + 1) = v96;
                v94 += 32;
              }

              while (v94 < v92);
            }
          }

          else
          {
            do
            {
              v93 = *v90;
              v90 = (v90 + 8);
              *v91 = v93;
              v91 = (v91 + 8);
            }

            while (v91 < v92);
          }
        }
      }

      else
      {
        *v71 = *v74;
        if (v42 >= 17)
        {
          v77 = v71 + 16;
          v78 = (v74 + 32);
          do
          {
            *v77 = *(v78 - 1);
            v79 = *v78;
            v78 += 2;
            *(v77 + 1) = v79;
            v77 += 32;
          }

          while (v77 < &v71[v42]);
        }
      }
    }

LABEL_96:
    if (v22 > 0xFFFFFFFFFFFFFF88)
    {
      return v22;
    }

    v6 += v22;
    --v14;
  }

  while (v14);
  v8 = v221;
LABEL_140:
  v22 = -20;
  if (v228 == a4 && v227 == 64)
  {
    *v8 = vmovn_s64(v237);
    *(v8 + 8) = v238;
    v10 = v239;
    v9 = v222;
LABEL_8:
    if (*(v8 + 3684) == 2)
    {
      v19 = v11 - v10;
      if (v11 - v10 <= v9 - v6)
      {
        if (v6)
        {
          v20 = v9;
          memmove(v6, v10, v11 - v10);
          v9 = v20;
          v6 += v19;
        }

        v10 = (a1 + 30372);
        v11 = a1 + 95908;
        *(v8 + 3684) = 0;
        goto LABEL_13;
      }

      return -70;
    }

    else
    {
LABEL_13:
      v21 = v11 - v10;
      if (v11 - v10 > v9 - v6)
      {
        return -70;
      }

      if (v6)
      {
        memcpy(v6, v10, v11 - v10);
        v23 = &v6[v21];
      }

      else
      {
        v23 = 0;
      }

      return v23 - v223;
    }
  }

  return v22;
}

uint64_t ZSTD_decompressSequences(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v7 = __dst;
  v8 = (a1 + 26684);
  if (*(a1 + 30368))
  {
    v9 = *(a1 + 30352);
  }

  else
  {
    v9 = &__dst[a3 & ~(a3 >> 63)];
  }

  v10 = *(a1 + 30120);
  v118 = v10;
  v104 = &v10[*(a1 + 30152)];
  if (a6)
  {
    v11 = *(a1 + 29896);
    v102 = *(a1 + 29912);
    v103 = *(a1 + 29904);
    *(a1 + 30004) = 1;
    v12.i64[0] = *v8;
    v12.i64[1] = HIDWORD(*v8);
    v116 = v12;
    v117 = *(a1 + 26692);
    if (!a5)
    {
      return -20;
    }

    v13 = a4 + 8;
    v109 = a4 + 8;
    v14 = a5 - 8;
    if (a5 >= 8)
    {
      v15 = *&a4[v14];
      v107 = &a4[v14];
      v105 = v15;
      if (HIBYTE(v15) && a5 <= 0xFFFFFFFFFFFFFF88)
      {
        v16 = 8 - (__clz(HIBYTE(v15)) ^ 0x1F);
        goto LABEL_30;
      }

      return -20;
    }

    v15 = *a4;
    v107 = a4;
    v105 = v15;
    if (a5 > 4)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          v15 |= a4[6] << 48;
        }

        v15 += a4[5] << 40;
      }

      v15 += a4[4] << 32;
    }

    else
    {
      if (a5 == 2)
      {
LABEL_27:
        v15 += a4[1] << 8;
        v105 = v15;
        goto LABEL_28;
      }

      if (a5 == 3)
      {
LABEL_26:
        v15 += a4[2] << 16;
        goto LABEL_27;
      }

      if (a5 != 4)
      {
LABEL_28:
        if (a4[a5 - 1])
        {
          v14 = 0;
          v16 = __clz(a4[a5 - 1]) - 8 * a5 + 41;
LABEL_30:
          v21 = *(*a1 + 4);
          v22 = v21 + v16;
          v110 = (v15 >> -(v21 + v16)) & BIT_mask_36272[v21];
          if (v21 + v16 >= 0x41)
          {
            v24 = &BIT_reloadDStream_zeroFilled;
            v107 = &BIT_reloadDStream_zeroFilled;
          }

          else
          {
            v23 = &a4[v14];
            if (v14 >= 8)
            {
              v24 = &v23[-(v22 >> 3)];
              v107 = v24;
              v22 &= 7u;
            }

            else
            {
              v24 = a4;
              if (!v14)
              {
                goto LABEL_39;
              }

              v25 = v22 >> 3;
              if (&v23[-v25] >= a4)
              {
                v25 = v25;
              }

              else
              {
                v25 = v14;
              }

              v24 = &v23[-v25];
              v107 = &v23[-v25];
              v22 -= 8 * v25;
            }

            v15 = *v24;
            v105 = *v24;
          }

LABEL_39:
          v26 = *(a1 + 16);
          v27 = *(v26 + 4);
          v28 = v27 + v22;
          v111 = *a1 + 8;
          v112 = (v15 >> -v28) & BIT_mask_36272[v27];
          v101 = v7;
          v99 = (a1 + 26684);
          if (v28 >= 0x41)
          {
            v24 = &BIT_reloadDStream_zeroFilled;
            v107 = &BIT_reloadDStream_zeroFilled;
          }

          else
          {
            if (v24 >= v13)
            {
              v24 -= v28 >> 3;
              v15 = *v24;
              v28 &= 7u;
            }

            else
            {
              if (v24 == a4)
              {
                goto LABEL_48;
              }

              v29 = v28 >> 3;
              if (&v24[-v29] >= a4)
              {
                v30 = v29;
              }

              else
              {
                v30 = (v24 - a4);
              }

              v24 -= v30;
              v15 = *v24;
              v28 -= 8 * v30;
            }

            v107 = v24;
            v105 = v15;
          }

LABEL_48:
          v31 = *(a1 + 8);
          v32 = *(v31 + 4);
          v33 = v32 + v28;
          v106 = v33;
          v113 = v26 + 8;
          v114 = (v15 >> -v33) & BIT_mask_36272[v32];
          if (v33 >= 0x41)
          {
            v107 = &BIT_reloadDStream_zeroFilled;
            goto LABEL_57;
          }

          if (v24 >= v13)
          {
            v107 = &v24[-(v33 >> 3)];
            v106 = v33 & 7;
            v35 = *v107;
          }

          else
          {
            if (v24 == a4)
            {
LABEL_57:
              v115 = v31 + 8;
              v100 = v9;
              v36 = v9 - 32;
              v17 = v7;
              while (1)
              {
                v37 = (v111 + 8 * v110);
                v38 = (v115 + 8 * v114);
                v39 = (v113 + 8 * v112);
                v40 = *(v38 + 1);
                v41 = *(v37 + 1);
                v42 = *(v39 + 1);
                v43 = *(v37 + 2);
                v44 = *(v38 + 2);
                v45 = *(v39 + 2);
                v46 = *v37;
                v47 = *v38;
                v48 = *v39;
                v49 = *(v37 + 3);
                v50 = *(v38 + 3);
                v51 = *(v39 + 3);
                if (v45 >= 2)
                {
                  break;
                }

                if (*(v39 + 2))
                {
                  if (v41)
                  {
                    v42 = v42;
                  }

                  else
                  {
                    v42 = (v42 + 1);
                  }

                  v89 = v105 << v106++;
                  v90 = v42 + (v89 >> 63);
                  if (v90 == 3)
                  {
                    if (v116.i64[0] == 1)
                    {
                      v53 = -1;
                    }

                    else
                    {
                      v53 = v116.i64[0] - 1;
                    }

                    goto LABEL_60;
                  }

                  if (v116.i64[v90])
                  {
                    v53 = v116.u64[v90];
                  }

                  else
                  {
                    v53 = -1;
                  }

                  v54 = &v116;
                  if (v90 != 1)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v53 = v116.u64[v41 == 0];
                  v54 = (&v116 + 8 * (v41 != 0));
                }

LABEL_63:
                v55 = v54->i64[0];
                v116.i64[0] = v53;
                v116.i64[1] = v55;
                if (v44)
                {
                  v56 = v105 << v106 >> -v44;
                  v106 += v44;
                  v40 += v56;
                }

                if ((v44 + v43 + v45) >= 0x1Fu)
                {
                  if (v106 >= 0x41)
                  {
                    v107 = &BIT_reloadDStream_zeroFilled;
                  }

                  else
                  {
                    if (v107 >= v109)
                    {
                      v82 = &v107[-(v106 >> 3)];
                      v107 = v82;
                      v83 = v106 & 7;
                    }

                    else
                    {
                      if (v107 == a4)
                      {
                        goto LABEL_66;
                      }

                      if (&v107[-(v106 >> 3)] >= a4)
                      {
                        v81 = v106 >> 3;
                      }

                      else
                      {
                        v81 = (v107 - a4);
                      }

                      v82 = &v107[-v81];
                      v107 -= v81;
                      v83 = v106 - 8 * v81;
                    }

                    v106 = v83;
                    v105 = *v82;
                  }
                }

LABEL_66:
                if (v43)
                {
                  v57 = v105 << v106 >> -v43;
                  v106 += v43;
                  v41 += v57;
                }

                if (a6 != 1)
                {
                  v58 = ((v105 >> -(v106 + v49)) & BIT_mask_36272[v49]) + v46;
                  v59 = v106 + v49 + v50;
                  v114 = ((v105 >> -v59) & BIT_mask_36272[v50]) + v47;
                  v60 = v59 + v51;
                  v106 = v59 + v51;
                  v110 = v58;
                  v112 = ((v105 >> -(v59 + v51)) & BIT_mask_36272[v51]) + v48;
                  if ((v59 + v51) >= 0x41)
                  {
                    v107 = &BIT_reloadDStream_zeroFilled;
                    goto LABEL_78;
                  }

                  if (v107 >= v109)
                  {
                    v63 = &v107[-(v60 >> 3)];
                    v107 = v63;
                    v64 = v60 & 7;
LABEL_77:
                    v106 = v64;
                    v105 = *v63;
                    goto LABEL_78;
                  }

                  if (v107 != a4)
                  {
                    v61 = v60 >> 3;
                    if (&v107[-v61] >= a4)
                    {
                      v62 = v61;
                    }

                    else
                    {
                      v62 = (v107 - a4);
                    }

                    v63 = &v107[-v62];
                    v107 -= v62;
                    v64 = v60 - 8 * v62;
                    goto LABEL_77;
                  }
                }

LABEL_78:
                v65 = &v17[v41];
                v66 = v118;
                v67 = &v118[v41];
                _X9 = &v17[v41 - v53];
                __asm { PRFM            #0, [X9] }

                if (&v118[v41] > v104 || (v19 = v41 + v40, &v17[v41 + v40] > v36))
                {
                  v119[0] = v41;
                  v119[1] = v40;
                  v119[2] = v53;
                  v19 = ZSTD_execSequenceEnd(v17, v100, v119, &v118, v104, v11, v103, v102);
                }

                else
                {
                  *v17 = *v118;
                  v74 = v41 > 0x10;
                  v75 = v41 - 16;
                  if (v74)
                  {
                    *(v17 + 1) = *(v66 + 1);
                    if (v75 >= 17)
                    {
                      v84 = v17 + 32;
                      v85 = (v66 + 48);
                      do
                      {
                        *v84 = *(v85 - 1);
                        v86 = *v85;
                        v85 += 2;
                        *(v84 + 1) = v86;
                        v84 += 32;
                      }

                      while (v84 < v65);
                    }
                  }

                  v118 = v67;
                  if (v53 <= v65 - v11)
                  {
                    goto LABEL_85;
                  }

                  if (v53 > &v65[-v103])
                  {
                    return -20;
                  }

                  v76 = _X9 - v11;
                  v77 = (v102 + _X9 - v11);
                  if (v77 + v40 > v102)
                  {
                    memmove(v65, v77, v11 - _X9);
                    v65 -= v76;
                    v40 += v76;
                    _X9 = v11;
LABEL_85:
                    if (v53 < 0x10)
                    {
                      if (v53 > 7)
                      {
                        *v65 = *_X9;
                      }

                      else
                      {
                        v87 = ZSTD_overlapCopy8_dec64table[v53];
                        *v65 = *_X9;
                        v65[1] = _X9[1];
                        v65[2] = _X9[2];
                        v65[3] = _X9[3];
                        v88 = &_X9[ZSTD_overlapCopy8_dec32table[v53]];
                        *(v65 + 1) = *v88;
                        _X9 = &v88[-v87];
                      }

                      if (v40 >= 9)
                      {
                        v91 = _X9 + 8;
                        v92 = v65 + 8;
                        v93 = &v65[v40];
                        if (v65 - _X9 > 15)
                        {
                          *v92 = *v91;
                          if (v40 >= 25)
                          {
                            v95 = v65 + 24;
                            v96 = (_X9 + 40);
                            do
                            {
                              *v95 = *(v96 - 1);
                              v97 = *v96;
                              v96 += 2;
                              *(v95 + 1) = v97;
                              v95 += 32;
                            }

                            while (v95 < v93);
                          }
                        }

                        else
                        {
                          do
                          {
                            v94 = *v91;
                            v91 = (v91 + 8);
                            *v92 = v94;
                            v92 += 8;
                          }

                          while (v92 < v93);
                        }
                      }
                    }

                    else
                    {
                      *v65 = *_X9;
                      if (v40 >= 17)
                      {
                        v78 = v65 + 16;
                        v79 = (_X9 + 32);
                        do
                        {
                          *v78 = *(v79 - 1);
                          v80 = *v79;
                          v79 += 2;
                          *(v78 + 1) = v80;
                          v78 += 32;
                        }

                        while (v78 < &v65[v40]);
                      }
                    }

                    goto LABEL_91;
                  }

                  memmove(v65, v77, v40);
                }

LABEL_91:
                if (v19 > 0xFFFFFFFFFFFFFF88)
                {
                  return v19;
                }

                v17 += v19;
                if (!--a6)
                {
                  v19 = -20;
                  if (v107 == a4 && v106 == 64)
                  {
                    v9 = v100;
                    *v99 = vmovn_s64(v116);
                    v99[1].i32[0] = v117;
                    v10 = v118;
                    v7 = v101;
                    goto LABEL_11;
                  }

                  return v19;
                }
              }

              v52 = v105 << v106 >> -v45;
              v106 += v45;
              v53 = v52 + v42;
LABEL_60:
              v117 = v116.i64[1];
              v54 = &v116;
              goto LABEL_63;
            }

            v34 = v33 >> 3;
            if (&v24[-v34] >= a4)
            {
              v34 = v34;
            }

            else
            {
              v34 = (v24 - a4);
            }

            v107 = &v24[-v34];
            v106 = v33 - 8 * v34;
            v35 = *&v24[-v34];
          }

          v105 = v35;
          goto LABEL_57;
        }

        return -20;
      }
    }

    v15 += a4[3] << 24;
    goto LABEL_26;
  }

  v17 = v7;
LABEL_11:
  v18 = v104 - v10;
  if (v104 - v10 > (v9 - v17))
  {
    return -70;
  }

  if (v17)
  {
    memcpy(v17, v10, v104 - v10);
    v20 = &v17[v18];
  }

  else
  {
    v20 = 0;
  }

  return v20 - v7;
}

uint64_t ZSTD_execSequenceEnd(char *a1, uint64_t a2, uint64_t *a3, char **a4, uint64_t a5, char *a6, uint64_t a7, unint64_t a8)
{
  v8 = *a3;
  v9 = a3[1] + *a3;
  if (v9 > a2 - a1)
  {
    return -70;
  }

  v11 = *a4;
  if (v8 > (a5 - *a4))
  {
    return -20;
  }

  v12 = a1;
  v13 = &a1[v8];
  v14 = &v11[v8];
  v15 = a3[2];
  v16 = (a2 - 32);
  if (v8 > 7)
  {
    if (v13 <= v16)
    {
      *v12 = *v11;
      if (v8 >= 0x11)
      {
        v23 = v12 + 16;
        v24 = (v11 + 32);
        do
        {
          *v23 = *(v24 - 1);
          v25 = *v24;
          v24 += 2;
          *(v23 + 1) = v25;
          v23 += 32;
        }

        while (v23 < v13);
      }

      goto LABEL_55;
    }

    v20 = v16 - v12;
    if (v16 >= v12)
    {
      *v12 = *v11;
      if (v20 >= 17)
      {
        v26 = v12 + 16;
        v27 = (v11 + 32);
        do
        {
          *v26 = *(v27 - 1);
          v28 = *v27;
          v27 += 2;
          *(v26 + 1) = v28;
          v26 += 32;
        }

        while (v26 < v16);
      }

      v22 = &v11[v20];
      v21 = v16;
    }

    else
    {
      v21 = v12;
      v22 = *a4;
    }

    if (v21 >= v13)
    {
      goto LABEL_55;
    }

    v29 = &v12[v8];
    if (v12 <= v16)
    {
      v30 = v16;
    }

    else
    {
      v30 = v12;
    }

    v31 = v29 - v30;
    if (v31 >= 8 && (v12 - v11) >= 0x20)
    {
      if (v31 >= 0x20)
      {
        v32 = v31 & 0xFFFFFFFFFFFFFFE0;
        v43 = v30 + 16;
        v44 = &v11[v30 + 16 - v12];
        v45 = v31 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v46 = *v44;
          *(v43 - 1) = *(v44 - 1);
          *v43 = v46;
          v44 += 2;
          v43 += 2;
          v45 -= 32;
        }

        while (v45);
        if (v31 == v32)
        {
          goto LABEL_55;
        }

        if ((v31 & 0x18) == 0)
        {
          v21 += v32;
          v22 += v32;
          goto LABEL_54;
        }
      }

      else
      {
        v32 = 0;
      }

      v47 = v31 & 0xFFFFFFFFFFFFFFF8;
      v22 += v31 & 0xFFFFFFFFFFFFFFF8;
      v48 = v32 - (v31 & 0xFFFFFFFFFFFFFFF8);
      v49 = &v30[v32];
      v50 = &v11[v49 - v12];
      do
      {
        v51 = *v50++;
        *v49 = v51;
        v49 += 8;
        v48 += 8;
      }

      while (v48);
      if (v31 == v47)
      {
        goto LABEL_55;
      }

      v21 += v47;
    }

    do
    {
LABEL_54:
      v53 = *v22++;
      *v21++ = v53;
    }

    while (v21 < v13);
    goto LABEL_55;
  }

  if (v8 < 1)
  {
    goto LABEL_55;
  }

  v17 = &v12[v8];
  if (&v12[v8] <= v12 + 1)
  {
    v17 = v12 + 1;
  }

  v18 = v17 - v12;
  if (v18 < 8)
  {
    v33 = *a4;
    goto LABEL_51;
  }

  if ((v12 - v11) < 0x20)
  {
    v33 = *a4;
    goto LABEL_51;
  }

  if (v18 >= 0x20)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFE0;
    v34 = v12 + 16;
    v35 = (v11 + 16);
    v36 = v18 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v37 = *v35;
      *(v34 - 1) = *(v35 - 1);
      *v34 = v37;
      v34 += 2;
      v35 += 2;
      v36 -= 32;
    }

    while (v36);
    if (v18 == v19)
    {
      goto LABEL_55;
    }

    if ((v18 & 0x18) == 0)
    {
      v12 += v19;
      v33 = &v11[v19];
      do
      {
LABEL_51:
        v52 = *v33++;
        *v12++ = v52;
      }

      while (v12 < v13);
      goto LABEL_55;
    }
  }

  else
  {
    v19 = 0;
  }

  v38 = v18 & 0xFFFFFFFFFFFFFFF8;
  v33 = &v11[v18 & 0xFFFFFFFFFFFFFFF8];
  v39 = v19 - (v18 & 0xFFFFFFFFFFFFFFF8);
  v40 = &v12[v19];
  v41 = &v11[v19];
  do
  {
    v42 = *v41++;
    *v40 = v42;
    v40 += 8;
    v39 += 8;
  }

  while (v39);
  if (v18 != v38)
  {
    v12 += v38;
    goto LABEL_51;
  }

LABEL_55:
  v54 = &v13[-v15];
  *a4 = v14;
  v55 = a3[2];
  if (v55 <= v13 - a6)
  {
    v56 = v9;
    v57 = a3[1];
    v58 = &v13[-v15];
  }

  else
  {
    if (v55 > &v13[-a7])
    {
      return -20;
    }

    v56 = v9;
    v59 = v54 - a6;
    v60 = (a8 + v54 - a6);
    if (v60 + a3[1] <= a8)
    {
      memmove(v13, v60, a3[1]);
      return v56;
    }

    v61 = v13;
    v62 = v16;
    memmove(v13, v60, -v59);
    v16 = v62;
    v58 = a6;
    v13 = &v61[-v59];
    v57 = a3[1] + v59;
    a3[1] = v57;
  }

  ZSTD_safecopy(v13, v16, v58, v57);
  return v56;
}

_BYTE *ZSTD_safecopy(_BYTE *result, _BYTE *a2, char *a3, uint64_t a4)
{
  v4 = result - a3;
  v5 = &result[a4];
  if (a4 > 7)
  {
    if (v4 > 7)
    {
      *result = *a3;
    }

    else
    {
      v9 = ZSTD_overlapCopy8_dec64table[v4];
      *result = *a3;
      result[1] = a3[1];
      result[2] = a3[2];
      result[3] = a3[3];
      v10 = &a3[ZSTD_overlapCopy8_dec32table[v4]];
      *(result + 1) = *v10;
      a3 = &v10[-v9];
    }

    v11 = a3 + 8;
    v12 = result + 8;
    if (v5 <= a2)
    {
      if (v12 - v11 > 15)
      {
        *v12 = *v11;
        if ((a4 - 8) >= 0x11)
        {
          v20 = result + 24;
          v21 = (a3 + 40);
          do
          {
            *v20 = *(v21 - 1);
            v22 = *v21;
            v21 += 2;
            v20[1] = v22;
            v20 += 2;
          }

          while (v20 < v5);
        }
      }

      else
      {
        do
        {
          v15 = *v11;
          v11 = (v11 + 8);
          *v12 = v15;
          v12 = (v12 + 8);
        }

        while (v12 < v5);
      }

      return result;
    }

    if (v12 <= a2)
    {
      v16 = a2 - v12;
      if (v12 - v11 >= 16)
      {
        *v12 = *v11;
        if (v16 > 16)
        {
          v33 = result + 24;
          v34 = (a3 + 40);
          do
          {
            *v33 = *(v34 - 1);
            v35 = *v34;
            v34 += 2;
            v33[1] = v35;
            v33 += 2;
          }

          while (v33 < a2);
        }
      }

      else
      {
        v17 = result + 8;
        v18 = (a3 + 8);
        do
        {
          v19 = *v18++;
          *v17++ = v19;
        }

        while (v17 < a2);
      }

      v14 = v11 + v16;
      v13 = a2;
      if (a2 >= v5)
      {
        return result;
      }
    }

    else
    {
      v13 = result + 8;
      v14 = a3 + 8;
      if (v12 >= v5)
      {
        return result;
      }
    }

    if (v12 <= a2)
    {
      v36 = a2;
    }

    else
    {
      v36 = result + 8;
    }

    v37 = &result[a4] - v36;
    if (v37 >= 8 && (v12 - v11) >= 0x20)
    {
      if (v37 >= 0x20)
      {
        v38 = v37 & 0xFFFFFFFFFFFFFFE0;
        v39 = v36 + 16;
        v40 = &a3[v36 + 16 - result];
        v41 = v37 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v42 = *v40;
          *(v39 - 1) = *(v40 - 1);
          *v39 = v42;
          v40 += 32;
          v39 += 2;
          v41 -= 32;
        }

        while (v41);
        if (v37 == v38)
        {
          return result;
        }

        if ((v37 & 0x18) == 0)
        {
          v13 += v38;
          v14 += v38;
          goto LABEL_60;
        }
      }

      else
      {
        v38 = 0;
      }

      v43 = v37 & 0xFFFFFFFFFFFFFFF8;
      v14 += v37 & 0xFFFFFFFFFFFFFFF8;
      v44 = v38 - (v37 & 0xFFFFFFFFFFFFFFF8);
      v45 = &v36[v38];
      v46 = &a3[v45 - result];
      do
      {
        v47 = *v46;
        v46 += 8;
        *v45 = v47;
        v45 += 8;
        v44 += 8;
      }

      while (v44);
      if (v37 == v43)
      {
        return result;
      }

      v13 += v43;
    }

    do
    {
LABEL_60:
      v49 = *v14++;
      *v13++ = v49;
    }

    while (v13 < v5);
    return result;
  }

  if (a4 < 1)
  {
    return result;
  }

  v6 = &result[a4];
  if (&result[a4] <= result + 1)
  {
    v6 = result + 1;
  }

  v7 = v6 - result;
  if (v7 < 8)
  {
    v23 = a3;
    goto LABEL_57;
  }

  if (v4 < 0x20)
  {
    v23 = a3;
    goto LABEL_57;
  }

  if (v7 >= 0x20)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFE0;
    v24 = result + 16;
    v25 = (a3 + 16);
    v26 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 2;
      v25 += 2;
      v26 -= 32;
    }

    while (v26);
    if (v7 == v8)
    {
      return result;
    }

    if ((v7 & 0x18) == 0)
    {
      result += v8;
      v23 = &a3[v8];
      do
      {
LABEL_57:
        v48 = *v23++;
        *result++ = v48;
      }

      while (result < v5);
      return result;
    }
  }

  else
  {
    v8 = 0;
  }

  v28 = v7 & 0xFFFFFFFFFFFFFFF8;
  v23 = &a3[v7 & 0xFFFFFFFFFFFFFFF8];
  v29 = v8 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v30 = &result[v8];
  v31 = &a3[v8];
  do
  {
    v32 = *v31;
    v31 += 8;
    *v30++ = v32;
    v29 += 8;
  }

  while (v29);
  if (v7 != v28)
  {
    result += v28;
    goto LABEL_57;
  }

  return result;
}

uint64_t ZSTD_execSequenceEndSplitLitBuffer(char *a1, uint64_t a2, _BYTE *a3, uint64_t *a4, char **a5, uint64_t a6, char *a7, uint64_t a8, unint64_t a9)
{
  v9 = *a4;
  v10 = a4[1] + *a4;
  if (v10 > a2 - a1)
  {
    return -70;
  }

  v12 = *a5;
  if (v9 > (a6 - *a5))
  {
    return -20;
  }

  v13 = &v12[v9];
  v14 = a4[2];
  if (v12 < a1 && v13 > a1)
  {
    return -70;
  }

  v16 = &a1[v9];
  v17 = a1;
  v18 = a1 - v12;
  if (v9 < 8 || v18 >= -7)
  {
    if (v9 < 1)
    {
      goto LABEL_50;
    }

    v25 = &a1[v9];
    if (v25 <= (a1 + 1))
    {
      v25 = (a1 + 1);
    }

    v26 = v25 - a1;
    if (v25 - v17 < 8 || v18 < 0x20)
    {
      goto LABEL_49;
    }

    if (v26 >= 0x20)
    {
      v27 = v26 & 0xFFFFFFFFFFFFFFE0;
      v40 = (v12 + 16);
      v41 = v17 + 1;
      v42 = v26 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v43 = *v40;
        *(v41 - 1) = *(v40 - 1);
        *v41 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 32;
      }

      while (v42);
      if (v26 == v27)
      {
        goto LABEL_50;
      }

      if ((v26 & 0x18) == 0)
      {
        v12 += v27;
        v17 = (v17 + v27);
        goto LABEL_49;
      }
    }

    else
    {
      v27 = 0;
    }

    v44 = v26 & 0xFFFFFFFFFFFFFFF8;
    v45 = v17;
    v17 = (v17 + (v26 & 0xFFFFFFFFFFFFFFF8));
    v46 = v27 - (v26 & 0xFFFFFFFFFFFFFFF8);
    v47 = &v12[v27];
    v48 = (v45 + v27);
    do
    {
      v49 = *v47++;
      *v48++ = v49;
      v46 += 8;
    }

    while (v46);
    if (v26 == v44)
    {
      goto LABEL_50;
    }

    v12 += v44;
    do
    {
LABEL_49:
      v52 = *v12++;
      *v17 = v52;
      v17 = (v17 + 1);
    }

    while (v17 < v16);
    goto LABEL_50;
  }

  v19 = 0;
  v20 = v16 - 32;
  v21 = v16 - 32 - v17;
  if (v16 - 32 < v17 || v18 > 0xFFFFFFFFFFFFFFEFLL)
  {
    v20 = v17;
  }

  else
  {
    *v17 = *v12;
    if (v21 >= 17)
    {
      v22 = (v17 + 1);
      v23 = (v12 + 32);
      do
      {
        *v22 = *(v23 - 1);
        v24 = *v23;
        v23 += 2;
        *(v22 + 1) = v24;
        v22 += 32;
      }

      while (v22 < v20);
    }

    v12 += v21;
    v19 = (v20 - v12) < 0x20;
  }

  v28 = v17 + v9 - v20;
  if (v28 < 8 || v19)
  {
    v30 = v20;
    goto LABEL_45;
  }

  if (v28 >= 0x20)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFE0;
    v31 = (v12 + 16);
    v32 = v20 + 16;
    v33 = v28 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v34 = *v31;
      *(v32 - 1) = *(v31 - 1);
      *v32 = v34;
      v31 += 2;
      v32 += 2;
      v33 -= 32;
    }

    while (v33);
    if (v28 == v29)
    {
      goto LABEL_50;
    }

    if ((v28 & 0x18) == 0)
    {
      v12 += v29;
      v30 = &v20[v29];
LABEL_45:
      v50 = &v20[v28];
      do
      {
        v51 = *v12++;
        *v30++ = v51;
      }

      while (v30 != v50);
      goto LABEL_50;
    }
  }

  else
  {
    v29 = 0;
  }

  v35 = v28 & 0xFFFFFFFFFFFFFFF8;
  v30 = &v20[v28 & 0xFFFFFFFFFFFFFFF8];
  v36 = v29 - (v28 & 0xFFFFFFFFFFFFFFF8);
  v37 = &v12[v29];
  v38 = &v20[v29];
  do
  {
    v39 = *v37++;
    *v38 = v39;
    v38 += 8;
    v36 += 8;
  }

  while (v36);
  if (v28 != v35)
  {
    v12 += v35;
    goto LABEL_45;
  }

LABEL_50:
  v53 = &v16[-v14];
  *a5 = v13;
  v54 = a4[2];
  if (v54 <= v16 - a7)
  {
    v55 = v10;
    v56 = a4[1];
    v57 = &v16[-v14];
  }

  else
  {
    if (v54 > &v16[-a8])
    {
      return -20;
    }

    v55 = v10;
    v58 = v53 - a7;
    v59 = (a9 + v53 - a7);
    if (v59 + a4[1] <= a9)
    {
      memmove(v16, v59, a4[1]);
      return v55;
    }

    v60 = v16;
    v61 = a3;
    memmove(v16, v59, a7 - v53);
    v57 = a7;
    a3 = v61;
    v16 = &v60[-v58];
    v56 = a4[1] + v58;
    a4[1] = v56;
  }

  ZSTD_safecopy(v16, a3, v57, v56);
  return v55;
}

unint64_t FSE_readNCount_bmi2(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, size_t a5)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (a5 > 7)
  {
    v12 = (*a2 + 1);
    bzero(a1, 2 * v12);
    v13 = *a4 & 0xF;
    if (v13 > 0xA)
    {
      return -44;
    }

    v14 = 0;
    v15 = *a4 >> 4;
    *a3 = v13 + 5;
    v16 = 32 << v13;
    v17 = (32 << v13) | 1;
    v18 = v13 + 6;
    v19 = a4 + a5 - 7;
    v20 = a4 + a5 - 4;
    v21 = 4;
    v22 = a4;
    while (1)
    {
      v28 = 2 * v16 - 1;
      v29 = v28 - v17;
      v30 = v15 & (v16 - 1);
      v31 = v15 & v28;
      if (v31 >= v16)
      {
        v32 = v28 - v17;
      }

      else
      {
        v32 = 0;
      }

      v33 = v31 - v32;
      v34 = v18 - 1;
      if (v30 < v29)
      {
        v33 = v30;
      }

      else
      {
        v34 = v18;
      }

      v26 = v34 + v21;
      v35 = v33 - 1;
      if (v33 <= 0)
      {
        v36 = v33 - 1;
      }

      else
      {
        v36 = 1 - v33;
      }

      v17 += v36;
      *(a1 + v14++) = v35;
      v37 = v35 != 0;
      if (v17 < v16)
      {
        if (v17 < 2)
        {
          goto LABEL_41;
        }

        v38 = __clz(v17);
        v18 = 32 - v38;
        v16 = 1 << (v38 ^ 0x1F);
      }

      if (v14 >= v12)
      {
        break;
      }

      v39 = v26 >> 3;
      if (v22 <= v19 || v22 + v39 <= v20)
      {
        v22 = (v22 + v39);
        v21 = v26 & 7;
      }

      else
      {
        v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
        v22 = (a4 + a5 - 4);
      }

      v15 = *v22 >> v21;
      if (!v37)
      {
        v23 = __clz(__rbit32(~v15 | 0x80000000));
        if (v23 >= 0x18)
        {
          do
          {
            if (v22 <= v19)
            {
              v22 = (v22 + 3);
            }

            else
            {
              v21 = (v21 + 8 * (v22 - v19)) & 0x1F;
              v22 = (a4 + a5 - 4);
            }

            v15 = *v22 >> v21;
            v23 = __clz(__rbit32(~v15 | 0x80000000));
            v14 += 36;
          }

          while (v23 > 0x17);
        }

        v24 = 3 * (v23 >> 1);
        v25 = v23 & 0x1E;
        v14 += v24 + ((v15 >> v25) & 3);
        v26 = v21 + v25 + 2;
        if (v14 >= v12)
        {
          goto LABEL_41;
        }

        v27 = v26 >> 3;
        if (v22 <= v19 || v22 + v27 <= v20)
        {
          v22 = (v22 + v27);
          v21 = v26 & 7;
        }

        else
        {
          v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
          v22 = (a4 + a5 - 4);
        }

        v15 = *v22 >> v21;
      }
    }

    if (v17 != 1)
    {
      return -20;
    }

LABEL_41:
    if (v14 > v12)
    {
      return -48;
    }

    if (v26 <= 32)
    {
      *a2 = v14 - 1;
      return v22 + ((v26 + 7) >> 3) - a4;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    v40[0] = 0;
    memcpy(v40, a4, a5);
    result = FSE_readNCount_bmi2(a1, a2, a3, v40, 8);
    if (result > a5 && result < 0xFFFFFFFFFFFFFF89)
    {
      return -20;
    }
  }

  return result;
}

uint64_t HUF_readStats_wksp(unint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *a5, unint64_t a6, unsigned __int16 *a7)
{
  if (!a6)
  {
    return -72;
  }

  v7 = *a5;
  if (*a5 < 0)
  {
    if ((v7 - 126) >> 1 >= a6)
    {
      return -72;
    }

    v17 = v7 - 127;
    if (v7 - 127 > 0xFF)
    {
      return -20;
    }

    if (v7 == 127)
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return -20;
    }

    v18 = v7 - 128;
    if (v7 - 128 <= 0xD || ((v19 = (a5 + 1), &a5[(v18 >> 1) + 2] > a1) ? (v20 = v19 >= a1 + (v7 & 0x7E) + 2) : (v20 = 1), !v20))
    {
      v23 = 0;
      goto LABEL_22;
    }

    v21 = (v18 >> 1) + 1;
    if (v18 >= 0x3E)
    {
      v73 = 0;
      v22 = v21 & 0x60;
      v74 = (a1 + 32);
      v75.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v75.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      do
      {
        v76 = v19 + (v73 & 0x7FFFFFFFFFFFFFE0);
        v77 = *(v76 + 16);
        v208.val[0] = vshrq_n_u8(*v76, 4uLL);
        v208.val[1] = vandq_s8(*v76, v75);
        v78 = v74 - 32;
        vst2q_s8(v78, v208);
        v208.val[0] = vshrq_n_u8(v77, 4uLL);
        v208.val[1] = vandq_s8(v77, v75);
        vst2q_s8(v74, v208);
        v73 += 32;
        v74 += 64;
      }

      while (v22 != v73);
      if (v21 == v22)
      {
        goto LABEL_24;
      }

      if ((v21 & 0x18) == 0)
      {
        v23 = 2 * v22;
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    v79 = v21 & 0x78;
    v80 = (a1 + 2 * v22);
    do
    {
      v81 = *(v19 + (v22 & 0x7FFFFFFFFFFFFFF8));
      v207.val[0] = vshr_n_u8(v81, 4uLL);
      v207.val[1] = vand_s8(v81, 0xF0F0F0F0F0F0F0FLL);
      vst2_s8(v80, v207);
      v80 += 16;
      v22 += 8;
    }

    while (v79 != v22);
    if (v21 == v79)
    {
      goto LABEL_24;
    }

    v23 = 2 * v79;
LABEL_22:
    v24 = &a5[(v23 >> 1) + 1];
    do
    {
      v25 = (a1 + v23);
      *v25 = *v24 >> 4;
      v26 = *v24++;
      v25[1] = v26 & 0xF;
      v23 += 2;
    }

    while (v23 < v17);
LABEL_24:
    v7 = (v7 - 126) >> 1;
    goto LABEL_25;
  }

  if (v7 >= a6)
  {
    return -72;
  }

  v194 = a2;
  v195 = a4;
  v192 = a1;
  v193 = a3;
  v8 = (a5 + 1);
  v196 = 255;
  v197 = 0;
  v10 = FSE_readNCount_bmi2(a7, &v196, &v197, a5 + 1, v7);
  v11 = v10;
  if (v10 > 0xFFFFFFFFFFFFFF88)
  {
    return v11;
  }

  v12 = v197;
  if (v197 > 6)
  {
    return -44;
  }

  v13 = v196;
  v14 = v196 + 1;
  v15 = 4 << v197;
  if ((((4 << v197) + (1 << v197) + 2 * v14 + 19) & 0x7FFFFFFFFFFFFFFCuLL) > 0x168)
  {
    return -44;
  }

  v11 = -46;
  if (v196 <= 0xFF)
  {
    v36 = (v15 + 4);
    if ((1 << v197) + 2 * v14 + 8 <= (364 - v36))
    {
      v37 = 0;
      v38 = a7;
      v39 = a7 + 256;
      v40 = &v8[v10];
      v17 = v7 - v10;
      v41 = a7 + v36 + 512;
      v42 = (a7 + 258);
      v43 = &v41[2 * v196 + 2];
      v44 = 1 << v197;
      v45 = (1 << v197) - 1;
      v46 = (0x8000 << v197) >> 16;
      v47 = 1;
      v48 = (1 << v197) - 1;
      a3 = v193;
      a2 = v194;
      a1 = v192;
      a4 = v195;
      do
      {
        v50 = v38[v37];
        if (v50 == -1)
        {
          v51 = &v42[4 * v48--];
          v51[2] = v37;
          v49 = 1;
        }

        else
        {
          v49 = v38[v37];
          if (v46 <= v50)
          {
            v47 = 0;
          }
        }

        *&v41[2 * v37++] = v49;
      }

      while (v14 != v37);
      v38[256] = v12;
      v38[257] = v47;
      v52 = (v44 >> 3) + (v44 >> 1) + 3;
      if (v48 == v45)
      {
        v191 = v39;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v190 = 2 * v13 + v15;
        while (1)
        {
          v56 = v38[v53];
          *(v43 + v54) = v55;
          if (v56 >= 9)
          {
            if (v56 <= 0x10)
            {
              v57 = 16;
            }

            else
            {
              v57 = v56;
            }

            v58 = v57 - 9;
            if (v58 >= 0x18)
            {
              v60 = (v58 >> 3) + 1;
              v61 = vdupq_n_s64(v55);
              v62 = (v38 + v190 + v54 + 526);
              v63 = v60 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                *v62 = v61;
                v62[1] = v61;
                v62 += 2;
                v63 -= 4;
              }

              while (v63);
              if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_47;
              }

              v59 = (8 * (v60 & 0x3FFFFFFFFFFFFFFCLL)) | 8;
            }

            else
            {
              v59 = 8;
            }

            v64 = (v38 + v190 + v54 + v59 + 518);
            do
            {
              *v64++ = v55;
              v59 += 8;
            }

            while (v59 < v56);
          }

LABEL_47:
          v54 += v56;
          ++v53;
          v55 += 0x101010101010101;
          if (v53 == v14)
          {
            v69 = 0;
            v70 = 0;
            v71 = v38 + v190;
            do
            {
              v42[4 * (v70 & v45) + 2] = v71[v69 + 518];
              v42[4 * ((v70 + v52) & v45) + 2] = v71[v69 + 519];
              v70 = (v70 + 2 * v52) & v45;
              v69 += 2;
            }

            while (v69 < v44);
            v72 = 1 << v12;
            v39 = v191;
            goto LABEL_83;
          }
        }
      }

      v65 = 0;
      v66 = 0;
      do
      {
        v67 = v38[v65];
        if (v67 >= 1)
        {
          for (i = 0; i != v67; ++i)
          {
            v42[4 * v66 + 2] = v65;
            do
            {
              v66 = (v52 + v66) & v45;
            }

            while (v66 > v48);
          }
        }

        ++v65;
      }

      while (v65 != v14);
      if (v66)
      {
        return -1;
      }

      v72 = v44;
LABEL_83:
      v82 = v12 - 31;
      v83 = v38 + 519;
      do
      {
        v84 = *(v83 - 1);
        v85 = *&v41[2 * v84];
        *&v41[2 * v84] = v85 + 1;
        LOBYTE(v84) = v82 + __clz(v85);
        *v83 = v84;
        *(v83 - 3) = (v85 << v84) - v44;
        v83 += 4;
        --v72;
      }

      while (v72);
      if (v47)
      {
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v200 = 0;
        v201 = 0;
        v198 = 0;
        v199 = 0;
        if (v17)
        {
          v205 = v40;
          v206 = v40 + 8;
          if (v17 >= 8)
          {
            v86 = *&v8[v7 - 8];
            v204 = &v8[v7 - 8];
            v202 = v86;
            if (HIBYTE(v86))
            {
              LODWORD(v203) = 8 - (__clz(HIBYTE(v86)) ^ 0x1F);
              if (v17 > 0xFFFFFFFFFFFFFF88)
              {
                goto LABEL_178;
              }

              goto LABEL_117;
            }

LABEL_94:
            v17 = -1;
            goto LABEL_178;
          }

          v88 = *v40;
          v204 = v40;
          v202 = v88;
          if (v17 > 4)
          {
            if (v17 != 5)
            {
              if (v17 != 6)
              {
                v88 |= v40[6] << 48;
              }

              v88 += v40[5] << 40;
            }

            v88 += v40[4] << 32;
          }

          else
          {
            if (v17 == 2)
            {
LABEL_114:
              v202 = v88 + (v40[1] << 8);
              goto LABEL_115;
            }

            if (v17 == 3)
            {
LABEL_113:
              v88 += v40[2] << 16;
              goto LABEL_114;
            }

            if (v17 != 4)
            {
LABEL_115:
              if (v8[v7 - 1])
              {
                LODWORD(v203) = __clz(v8[v7 - 1]) - 8 * v17 + 41;
LABEL_117:
                FSE_initDState(&v200, &v202, v39);
                FSE_initDState(&v198, &v202, v39);
                v90 = v203;
                v91 = v201;
                v92 = v202;
                v94 = v205;
                v93 = v206;
                v95 = v199;
                v96 = v200;
                v97 = v198;
                if (v203 > 0x40)
                {
                  v98 = 0;
                  v99 = &BIT_reloadDStream_zeroFilled_36125;
                  a3 = v193;
                  a2 = v194;
                  a1 = v192;
                  a4 = v195;
                  goto LABEL_134;
                }

                v98 = 0;
                v99 = v204;
                a3 = v193;
                a2 = v194;
                a1 = v192;
                a4 = v195;
                do
                {
                  if (v99 >= v93)
                  {
                    LODWORD(v100) = v90 >> 3;
                    v90 &= 7u;
                    v101 = 1;
                  }

                  else
                  {
                    if (v99 == v94)
                    {
                      goto LABEL_129;
                    }

                    v100 = v90 >> 3;
                    v101 = &v99[-v100] >= v94;
                    if (&v99[-v100] < v94)
                    {
                      LODWORD(v100) = v99 - v94;
                    }

                    v90 -= 8 * v100;
                  }

                  v99 -= v100;
                  v92 = *v99;
                  if (v98 > 0xFB || !v101)
                  {
                    goto LABEL_129;
                  }

                  v102 = (v91 + 4 * v96);
                  v103 = *v102;
                  v104 = *(v102 + 2);
                  LODWORD(v102) = *(v102 + 3);
                  v105 = (v92 << v90) >> -v102;
                  LODWORD(v102) = v90 + v102;
                  v106 = (v192 + v98);
                  *v106 = v104;
                  v107 = (v95 + 4 * v97);
                  v108 = *v107;
                  v109 = *(v107 + 2);
                  LODWORD(v107) = *(v107 + 3);
                  v110 = (v92 << v102) >> -v107;
                  LODWORD(v102) = v102 + v107;
                  v106[1] = v109;
                  v111 = v91 + 4 * v105 + 4 * v103;
                  v112 = *v111;
                  v113 = *(v111 + 2);
                  LODWORD(v111) = *(v111 + 3);
                  v114 = (v92 << v102) >> -v111;
                  LODWORD(v111) = v102 + v111;
                  v96 = v114 + v112;
                  v106[2] = v113;
                  v115 = (v95 + 4 * v110 + 4 * v108);
                  v116 = *v115;
                  v117 = *(v115 + 2);
                  LODWORD(v115) = *(v115 + 3);
                  v118 = (v92 << v111) >> -v115;
                  v90 = v111 + v115;
                  v97 = v118 + v116;
                  v106[3] = v117;
                  v98 += 4;
                }

                while (v90 <= 0x40);
                v99 = &BIT_reloadDStream_zeroFilled_36125;
LABEL_129:
                if (v98 <= 253)
                {
                  while (1)
                  {
LABEL_134:
                    v120 = a1 + v98;
                    v121 = (v91 + 4 * v96);
                    v122 = *v121;
                    v123 = *(v121 + 2);
                    v124 = *(v121 + 3);
                    v125 = v90 + v124;
                    *(a1 + v98) = v123;
                    v126 = (a1 + v98 + 1);
                    if (v90 + v124 > 0x40)
                    {
                      v185 = (v95 + 4 * v97 + 2);
                      v186 = 2;
                      goto LABEL_204;
                    }

                    if (v99 >= v93)
                    {
                      break;
                    }

                    if (v99 != v94)
                    {
                      v127 = v125 >> 3;
                      if (&v99[-v127] < v94)
                      {
                        LODWORD(v127) = v99 - v94;
                      }

                      v125 -= 8 * v127;
LABEL_141:
                      v99 -= v127;
                      v128 = *v99;
                      if (v98 > 0xFC)
                      {
                        goto LABEL_176;
                      }

                      goto LABEL_142;
                    }

                    v128 = v92;
                    if (v98 > 0xFC)
                    {
                      goto LABEL_176;
                    }

LABEL_142:
                    v96 = ((v92 << v90) >> -v124) + v122;
                    v129 = (v95 + 4 * v97);
                    v130 = *v129;
                    v131 = *(v129 + 3);
                    v90 = v125 + v131;
                    v132 = v98 + 2;
                    *v126 = *(v129 + 2);
                    if (v125 + v131 > 0x40)
                    {
                      v120 = a1 + v98;
                      v126 = (a1 + v132);
                      v185 = (v91 + 4 * v96 + 2);
                      v186 = 3;
LABEL_204:
                      v187 = v120 + v186;
                      *v126 = *v185;
LABEL_208:
                      a1 = v192;
                      a3 = v193;
                      v17 = v187 - v192;
                      a2 = v194;
                      a4 = v195;
LABEL_178:
                      v11 = v17;
                      if (v17 > 0xFFFFFFFFFFFFFF88)
                      {
                        return v11;
                      }

LABEL_25:
                      *(a2 + 48) = 0;
                      *(a2 + 16) = 0u;
                      *(a2 + 32) = 0u;
                      *a2 = 0u;
                      if (v17)
                      {
                        v27 = 0;
                        v28 = 0;
                        v29 = 1;
                        while (1)
                        {
                          v30 = *(a1 + v27);
                          if (v30 > 0xC)
                          {
                            break;
                          }

                          ++*(a2 + 4 * v30);
                          v28 += 1 << *(a1 + v27) >> 1;
                          v27 = v29++;
                          if (v17 <= v27)
                          {
                            if (v28 - 4096 < 0xFFFFF001)
                            {
                              return -20;
                            }

                            v31 = __clz(v28);
                            *a4 = 32 - v31;
                            v32 = (1 << -v31) - v28;
                            v33 = __clz(v32);
                            if (0x80000000 >> v33 != v32)
                            {
                              return -20;
                            }

                            v34 = 32 - v33;
                            *(a1 + v17) = v34;
                            ++*(a2 + 4 * v34);
                            v35 = *(a2 + 4);
                            v11 = -20;
                            if (v35 >= 2 && (v35 & 1) == 0)
                            {
                              *a3 = v17 + 1;
                              return v7 + 1;
                            }

                            return v11;
                          }
                        }
                      }

                      return -20;
                    }

                    if (v99 >= v93)
                    {
                      LODWORD(v119) = v90 >> 3;
                      v90 &= 7u;
                    }

                    else
                    {
                      if (v99 == v94)
                      {
                        v92 = v128;
                        goto LABEL_133;
                      }

                      v119 = v90 >> 3;
                      if (&v99[-v119] < v94)
                      {
                        LODWORD(v119) = v99 - v94;
                      }

                      v90 -= 8 * v119;
                    }

                    v99 -= v119;
                    v92 = *v99;
LABEL_133:
                    v97 = ((v128 << v125) >> -v131) + v130;
                    v98 = v132;
                    if (v132 == 254)
                    {
                      goto LABEL_176;
                    }
                  }

                  LODWORD(v127) = v125 >> 3;
                  v125 &= 7u;
                  goto LABEL_141;
                }

LABEL_176:
                v17 = -70;
                goto LABEL_178;
              }

LABEL_177:
              v17 = -20;
              goto LABEL_178;
            }
          }

          v88 += v40[3] << 24;
          goto LABEL_113;
        }

LABEL_95:
        v17 = -72;
        goto LABEL_178;
      }

      v202 = 0;
      v203 = 0;
      v204 = 0;
      v200 = 0;
      v201 = 0;
      v198 = 0;
      v199 = 0;
      if (!v17)
      {
        goto LABEL_95;
      }

      v205 = v40;
      v206 = v40 + 8;
      if (v17 >= 8)
      {
        v87 = *&v8[v7 - 8];
        v204 = &v8[v7 - 8];
        v202 = v87;
        if (!HIBYTE(v87))
        {
          goto LABEL_94;
        }

        LODWORD(v203) = 8 - (__clz(HIBYTE(v87)) ^ 0x1F);
        if (v17 > 0xFFFFFFFFFFFFFF88)
        {
          goto LABEL_178;
        }

LABEL_163:
        FSE_initDState(&v200, &v202, v39);
        FSE_initDState(&v198, &v202, v39);
        v133 = v203;
        v134 = v201;
        v135 = v202;
        v137 = v205;
        v136 = v206;
        v138 = v199;
        v139 = v200;
        v140 = v198;
        if (v203 <= 0x40)
        {
          v141 = 0;
          v142 = v204;
          a3 = v193;
          a2 = v194;
          a1 = v192;
          a4 = v195;
          do
          {
            if (v142 >= v136)
            {
              LODWORD(v143) = v133 >> 3;
              v133 &= 7u;
              v144 = 1;
            }

            else
            {
              if (v142 == v137)
              {
                goto LABEL_175;
              }

              v143 = v133 >> 3;
              v144 = &v142[-v143] >= v137;
              if (&v142[-v143] < v137)
              {
                LODWORD(v143) = v142 - v137;
              }

              v133 -= 8 * v143;
            }

            v142 -= v143;
            v135 = *v142;
            if (v141 > 0xFB || !v144)
            {
              goto LABEL_175;
            }

            v145 = (v134 + 4 * v139);
            v146 = *v145;
            v147 = *(v145 + 2);
            v148 = *(v145 + 3);
            v149 = v133 + v148;
            v150 = (v135 >> -v149) & BIT_mask_36272[v148];
            v151 = (v192 + v141);
            *v151 = v147;
            v152 = (v138 + 4 * v140);
            v153 = *v152;
            v154 = *(v152 + 2);
            v155 = *(v152 + 3);
            v156 = v149 + v155;
            v157 = (v135 >> -v156) & BIT_mask_36272[v155];
            v151[1] = v154;
            v158 = (v134 + 4 * v150 + 4 * v146);
            v159 = *v158;
            v160 = *(v158 + 2);
            v161 = *(v158 + 3);
            v162 = v156 + v161;
            v139 = ((v135 >> -v162) & BIT_mask_36272[v161]) + v159;
            v151[2] = v160;
            v163 = (v138 + 4 * v157 + 4 * v153);
            v164 = *v163;
            LOBYTE(v153) = *(v163 + 2);
            v165 = *(v163 + 3);
            v133 = v162 + v165;
            v140 = ((v135 >> -v133) & BIT_mask_36272[v165]) + v164;
            v151[3] = v153;
            v141 += 4;
          }

          while (v133 <= 0x40);
          v142 = &BIT_reloadDStream_zeroFilled_36125;
LABEL_175:
          if (v141 <= 253)
          {
            goto LABEL_185;
          }

          goto LABEL_176;
        }

        v141 = 0;
        v142 = &BIT_reloadDStream_zeroFilled_36125;
        a3 = v193;
        a2 = v194;
        a1 = v192;
        a4 = v195;
        while (1)
        {
LABEL_185:
          v167 = a1 + v141;
          v168 = (v134 + 4 * v139);
          v169 = *v168;
          v170 = *(v168 + 2);
          v171 = *(v168 + 3);
          v172 = v133 + v171;
          v173 = BIT_mask_36272[v171];
          *(a1 + v141) = v170;
          v174 = (a1 + v141 + 1);
          if (v172 > 0x40)
          {
            v188 = (v138 + 4 * v140 + 2);
            v189 = 2;
LABEL_207:
            v187 = v167 + v189;
            *v174 = *v188;
            goto LABEL_208;
          }

          if (v142 >= v136)
          {
            break;
          }

          if (v142 != v137)
          {
            v175 = v172 >> 3;
            if (&v142[-v175] < v137)
            {
              LODWORD(v175) = v142 - v137;
            }

            v176 = v172 - 8 * v175;
LABEL_192:
            v142 -= v175;
            v177 = *v142;
            if (v141 > 0xFC)
            {
              goto LABEL_176;
            }

            goto LABEL_193;
          }

          v176 = v172;
          v177 = v135;
          if (v141 > 0xFC)
          {
            goto LABEL_176;
          }

LABEL_193:
          v139 = ((v135 >> -v172) & v173) + v169;
          v178 = (v138 + 4 * v140);
          v179 = *v178;
          v180 = *(v178 + 2);
          v181 = *(v178 + 3);
          v182 = v176 + v181;
          v183 = BIT_mask_36272[v181];
          v184 = v141 + 2;
          *v174 = v180;
          if (v182 > 0x40)
          {
            v167 = a1 + v141;
            v174 = (a1 + v184);
            v188 = (v134 + 4 * v139 + 2);
            v189 = 3;
            goto LABEL_207;
          }

          if (v142 >= v136)
          {
            LODWORD(v166) = v182 >> 3;
            v133 = v182 & 7;
          }

          else
          {
            if (v142 == v137)
            {
              v133 = v182;
              v135 = v177;
              goto LABEL_184;
            }

            v166 = v182 >> 3;
            if (&v142[-v166] < v137)
            {
              LODWORD(v166) = v142 - v137;
            }

            v133 = v182 - 8 * v166;
          }

          v142 -= v166;
          v135 = *v142;
LABEL_184:
          v140 = ((v177 >> -v182) & v183) + v179;
          v141 = v184;
          if (v184 == 254)
          {
            goto LABEL_176;
          }
        }

        LODWORD(v175) = v172 >> 3;
        v176 = v172 & 7;
        goto LABEL_192;
      }

      v89 = *v40;
      v204 = v40;
      v202 = v89;
      if (v17 > 4)
      {
        if (v17 != 5)
        {
          if (v17 != 6)
          {
            v89 |= v40[6] << 48;
          }

          v89 += v40[5] << 40;
        }

        v89 += v40[4] << 32;
      }

      else
      {
        if (v17 == 2)
        {
LABEL_160:
          v202 = v89 + (v40[1] << 8);
LABEL_161:
          if (!v8[v7 - 1])
          {
            goto LABEL_177;
          }

          LODWORD(v203) = __clz(v8[v7 - 1]) - 8 * v17 + 41;
          goto LABEL_163;
        }

        if (v17 == 3)
        {
LABEL_159:
          v89 += v40[2] << 16;
          goto LABEL_160;
        }

        if (v17 != 4)
        {
          goto LABEL_161;
        }
      }

      v89 += v40[3] << 24;
      goto LABEL_159;
    }
  }

  return v11;
}

__n128 ZSTD_adjustCParams_internal(uint64_t a1, unsigned int *a2, unint64_t a3, unint64_t a4, int a5, unsigned int a6)
{
  if (a4)
  {
    v6 = a3 == -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 513;
  if (!v6)
  {
    v7 = a3;
  }

  if (a5 != 2)
  {
    v7 = a3;
  }

  if (a5 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (a5 == 1)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (v8 >= 0x40000001 || v9 >= 0x40000001)
  {
    v11 = *a2;
    if (v9 == -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v10 = 32 - __clz(v9 + v8 - 1);
    if (v9 + v8 < 0x40)
    {
      v10 = 6;
    }

    v11 = *a2;
    if (*a2 > v10)
    {
      *a2 = v10;
      v11 = v10;
    }
  }

  v12 = (1 << v11) + v8;
  v13 = v9 + v8;
  v14 = v12 >> 31;
  v15 = 32 - __clz(v12 - 1);
  if (v14)
  {
    v15 = 31;
  }

  if (1 << v11 < v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = a2[1];
  v19 = v18 - (a2[6] > 5);
  if (a2[2] > v17 + 1)
  {
    a2[2] = v17 + 1;
  }

  if (v19 > v17)
  {
    a2[1] = v18 + v17 - v19;
  }

LABEL_33:
  if (v11 <= 9)
  {
    *a2 = 10;
  }

  v20 = a2[6];
  if (a5 == 2 && v20 - 3 >= 0xFFFFFFFE)
  {
    if (a2[2] >= 0x19)
    {
      a2[2] = 24;
    }

    if (a2[1] >= 0x19)
    {
      a2[1] = 24;
    }
  }

  else if (a6 <= 1 && v20 - 6 >= 0xFFFFFFFD)
  {
    v21 = a2[3];
    v22 = v21 | 0x18;
    if (v21 >= 6)
    {
      v22 = 30;
    }

    if (v21 >= 4)
    {
      v23 = v22;
    }

    else
    {
      v23 = 28;
    }

    if (a2[2] > v23)
    {
      a2[2] = v23;
    }
  }

  *a1 = *a2;
  result = *(a2 + 3);
  *(a1 + 12) = result;
  return result;
}

size_t ZSTD_resetCCtx_internal(uint64_t a1, __int128 *a2, unint64_t a3, unint64_t a4, int a5)
{
  *(a1 + 944) = 1;
  v6 = *a2;
  *(a1 + 248) = a2[1];
  *(a1 + 232) = v6;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[5];
  *(a1 + 296) = a2[4];
  *(a1 + 312) = v9;
  *(a1 + 264) = v7;
  *(a1 + 280) = v8;
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[9];
  *(a1 + 360) = a2[8];
  *(a1 + 376) = v12;
  *(a1 + 328) = v10;
  *(a1 + 344) = v11;
  v13 = a2[10];
  v14 = a2[11];
  v15 = a2[12];
  *(a1 + 440) = *(a2 + 26);
  *(a1 + 408) = v14;
  *(a1 + 424) = v15;
  *(a1 + 392) = v13;
  v17 = a1 + 236;
  v16 = *(a1 + 236);
  v18 = *(a1 + 328);
  if (v18 == 1)
  {
    *(a1 + 348) = v16;
    if (*(a1 + 340))
    {
      v19 = *(a1 + 332);
      if (v19)
      {
LABEL_4:
        v20 = *(a1 + 336);
        if (!*(a1 + 344))
        {
          v21 = v16 - v19;
          if (v16 < v19)
          {
            v21 = 0;
          }

          *(a1 + 344) = v21;
        }

        if (!v20)
        {
          v20 = 3;
        }

        if (v20 < v19)
        {
          v19 = v20;
        }

        *(a1 + 336) = v19;
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 340) = 64;
      v19 = *(a1 + 332);
      if (v19)
      {
        goto LABEL_4;
      }
    }

    v19 = v16 - 7;
    if (v16 - 7 <= 6)
    {
      v19 = 6;
    }

    *(a1 + 332) = v19;
    goto LABEL_4;
  }

LABEL_13:
  v22 = 1 << v16;
  if (1 << v16 >= a3)
  {
    v22 = a3;
  }

  if (a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(a1 + 424);
  v25 = *(a1 + 432);
  if (v25 >= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = *(a1 + 432);
  }

  v27 = *(a1 + 252);
  if (v24)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27 == 3;
  }

  if (v28)
  {
    v29 = 3;
  }

  else
  {
    v29 = 4;
  }

  if (*(a1 + 360))
  {
    v30 = 0;
  }

  else
  {
    if (v26 > 0xFF00FF00FF00FEFFLL)
    {
      goto LABEL_33;
    }

    v31 = (0x20000 - v26) >> 11;
    if (v26 >= 0x20000)
    {
      v31 = 0;
    }

    v32 = v26 + (v26 >> 8) + v31;
    if (!v32)
    {
LABEL_33:
      v32 = -72;
    }

    v30 = v32 + 1;
  }

  v33 = 0;
  if (*(a1 + 356))
  {
    v34 = 0;
  }

  else
  {
    v34 = v26 + v23;
  }

  v35 = *(a1 + 340);
  if (v18 == 1)
  {
    v33 = v26 / v35;
  }

  v36 = 1;
  if (!(a4 >> 29) && *(a1 + 3216) - *(a1 + 3224) <= 0xDF000000uLL)
  {
    v36 = *(a1 + 948) == 0;
  }

  v37 = *(a1 + 376);
  v38 = *(a1 + 260);
  if (v38 == 1 || v37 == 1 && v38 - 3 < 3)
  {
    v39 = 0;
  }

  else
  {
    v39 = 4 << *(a1 + 240);
  }

  v40 = 0;
  v41 = *(a1 + 904);
  if (!v25)
  {
    v25 = 0x20000;
  }

  if (v25 >= v23)
  {
    v25 = v23;
  }

  v42 = *(a1 + 244);
  if (v16 >= 0x11)
  {
    v16 = 17;
  }

  if (v27 == 3)
  {
    v43 = v16;
  }

  else
  {
    v43 = 0;
  }

  v44 = 128;
  if (v38 > 6)
  {
    v44 = 149376;
  }

  v45 = v38 - 6 >= 0xFFFFFFFD && v37 == 1;
  v46 = ((1 << v42) + 63) & 0xFFFFFFFFFFFFFFC0;
  if (!v45)
  {
    v46 = 0;
  }

  v47 = 4 << v42;
  v48 = 4 << v43;
  if (!v43)
  {
    v48 = 0;
  }

  v49 = *(a1 + 332);
  v50 = *(a1 + 336);
  if (v50 >= v49)
  {
    LOBYTE(v50) = *(a1 + 332);
  }

  v51 = (1 << (v49 - v50)) + (8 << v49);
  v52 = v18 == 1;
  if (v18 == 1)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v40 = (12 * (v25 / v35) + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (v24)
  {
    v54 = (16 * ((v25 >> 10) + v25 / 3) + 95) & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
    v54 = 0;
  }

  v55 = 25424;
  if (!v41)
  {
    v55 = 20184;
  }

  result = v34 + v55 + v30 + v44 + v25 + v48 + v39 + v54 + 3 * (v25 / v29) + ((8 * (v25 / v29) + 63) & 0xFFFFFFFFFFFFFFC0) + v47 + v53 + v46 + v40 + 32;
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (!v41)
    {
      ++*(a1 + 740);
    }

    v57 = *(a1 + 680);
    v58 = *(a1 + 688);
    v59 = *(a1 + 720) - *(a1 + 704) >= 3 * result && *(a1 + 740) > 128;
    if (v58 - v57 >= result && !v59)
    {
      v61 = (a1 + 744);
      v62 = *(a1 + 744);
      *(a1 + 704) = *(a1 + 696);
      *(a1 + 720) = v58 & 0xFFFFFFFFFFFFFFC0;
      v63 = (a1 + 736);
      *(a1 + 736) = 0;
      if (v62 >= 2)
      {
        *v61 = 1;
      }
    }

    else
    {
      if (v41)
      {
        return -64;
      }

      v116 = v29;
      v68 = *(a1 + 880);
      v69 = *(a1 + 888);
      *(v17 + 444) = 0u;
      *(v17 + 460) = 0u;
      *(v17 + 476) = 0u;
      *(v17 + 492) = 0u;
      *(v17 + 508) = 0;
      v70 = a5;
      v71 = a3;
      v72 = result;
      if (v57)
      {
        if (v68)
        {
          v68(v69);
        }

        else
        {
          free(v57);
        }

        result = v72;
      }

      v84 = *(a1 + 872);
      if (v84)
      {
        v85 = v84(*(a1 + 888), result);
        if (!v85)
        {
          return -64;
        }
      }

      else
      {
        v85 = malloc_type_malloc(result, 0xB2223D72uLL);
        if (!v85)
        {
          return -64;
        }
      }

      *(a1 + 680) = v85;
      *(a1 + 688) = &v85[v72];
      *(a1 + 696) = v85;
      *(a1 + 712) = v85;
      v86 = &v85[v72] & 0xFFFFFFFFFFFFFFC0;
      *(a1 + 728) = v86;
      *(a1 + 744) = 0;
      *(a1 + 704) = v85;
      *(a1 + 720) = v86;
      *(a1 + 736) = 0;
      *(a1 + 740) = 0;
      if (v72 <= 5631)
      {
        *(a1 + 736) = 1;
        *(a1 + 3200) = 0;
        return -64;
      }

      *(a1 + 696) = v85 + 5632;
      *(a1 + 704) = v85 + 5632;
      *(a1 + 712) = v85 + 5632;
      *(a1 + 3200) = v85;
      if (v72 >> 10 <= 0xA)
      {
        *(a1 + 736) = 1;
        *(a1 + 3208) = 0;
        return -64;
      }

      *(a1 + 696) = v85 + 11264;
      *(a1 + 704) = v85 + 11264;
      *(a1 + 712) = v85 + 11264;
      *(a1 + 3208) = v85 + 5632;
      if (v72 >> 3 <= 0x9DA)
      {
        *(a1 + 736) = 1;
        *(a1 + 3520) = 0;
        return -64;
      }

      a5 = v70;
      a3 = v71;
      *(a1 + 696) = v85 + 20184;
      v61 = (a1 + 744);
      *(a1 + 712) = v85 + 20184;
      v63 = (a1 + 736);
      *(a1 + 3520) = v85 + 11264;
      *(a1 + 704) = v85 + 20184;
      v36 = 1;
      v29 = v116;
    }

    *(a1 + 3472) = *v17;
    *(a1 + 3484) = *(v17 + 12);
    *(a1 + 3512) = *(a1 + 408) == 1;
    *(a1 + 768) = 0u;
    *(a1 + 760) = a3 + 1;
    if (a3 == -1)
    {
      *(a1 + 264) = 0;
    }

    *(a1 + 752) = v26;
    *(a1 + 784) = 0uLL;
    *(a1 + 800) = 0uLL;
    *(a1 + 864) = 0;
    *(a1 + 832) = 0uLL;
    *(a1 + 848) = 0uLL;
    *(a1 + 816) = 0uLL;
    *(a1 + 792) = xmmword_182B08D10;
    *(a1 + 816) = 0x61C8864E7A143579;
    *a1 = 1;
    *(a1 + 664) = 0;
    *(a1 + 672) = 0;
    v64 = *(a1 + 3200);
    *(v64 + 5616) = 0x400000001;
    *(v64 + 5624) = 8;
    *(v64 + 2056) = 0;
    *(v64 + 5604) = 0;
    *(v64 + 5608) = 0;
    result = ZSTD_reset_matchState(a1 + 3216, v17 + 444, v17, *(a1 + 376), a5, v36, 1);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v65 = *v61;
      v66 = v26 / v29;
      if (*v61 <= 1)
      {
        if (!v65)
        {
          v73 = *(a1 + 696);
          *(a1 + 712) = v73;
          v74 = *(a1 + 688);
          *(a1 + 728) = v74 & 0xFFFFFFFFFFFFFFC0;
          v75 = -v73 & 0x3FLL;
          v76 = v73 + v75;
          if (v76 > v74)
          {
            v65 = 0;
            v67 = 0;
            goto LABEL_114;
          }

          *(a1 + 696) = v76;
          *(a1 + 704) = v76;
          if (v75)
          {
            *(a1 + 712) = v76;
          }
        }

        v65 = 2;
        *v61 = 2;
      }

      v67 = (8 * v66 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v67)
      {
        v67 = *(a1 + 720) - v67;
        if (v67 >= *(a1 + 704))
        {
          if (v67 < *(a1 + 712))
          {
            *(a1 + 712) = v67;
          }

          *(a1 + 720) = v67;
        }

        else
        {
          v67 = 0;
          *v63 = 1;
        }
      }

LABEL_114:
      *(a1 + 952) = v67;
      if (*(a1 + 328) != 1)
      {
        goto LABEL_153;
      }

      v77 = 8 << *(a1 + 332);
      if (v65 <= 1)
      {
        v78 = *(a1 + 696);
        *(a1 + 712) = v78;
        v79 = *(a1 + 688);
        *(a1 + 728) = v79 & 0xFFFFFFFFFFFFFFC0;
        v80 = -v78 & 0x3FLL;
        v81 = v78 + v80;
        if (v81 > v79)
        {
          goto LABEL_123;
        }

        *(a1 + 696) = v81;
        *(a1 + 704) = v81;
        if (v80)
        {
          *(a1 + 712) = v81;
        }

        *v61 = 2;
      }

      v82 = (v77 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v82)
      {
        v83 = (*(a1 + 720) - v82);
        if (v83 >= *(a1 + 704))
        {
          if (v83 < *(a1 + 712))
          {
            *(a1 + 712) = v83;
          }

          *(a1 + 720) = v83;
        }

        else
        {
          v83 = 0;
          *v63 = 1;
        }

LABEL_137:
        *(a1 + 1072) = v83;
        bzero(v83, v77);
        v65 = *(a1 + 744);
        if (v65 <= 1)
        {
          if (!v65)
          {
            v88 = *(a1 + 696);
            *(a1 + 712) = v88;
            v89 = *(a1 + 688);
            *(a1 + 728) = v89 & 0xFFFFFFFFFFFFFFC0;
            v90 = -v88 & 0x3FLL;
            v91 = v88 + v90;
            if (v91 > v89)
            {
              v65 = 0;
              v87 = 0;
LABEL_152:
              *(a1 + 3144) = v87;
              *(a1 + 3152) = v33;
              *(a1 + 1064) = 0;
              *(a1 + 1040) = " ";
              *(a1 + 1048) = " ";
              *(a1 + 1056) = 0x200000002;
              *(a1 + 1032) = "nw_utilities_get_self_is_daemon_block_invoke";
              *(a1 + 1080) = 0;
LABEL_153:
              if (!*(a1 + 424))
              {
                goto LABEL_167;
              }

              v92 = (v26 >> 10) + v26 / 3 + 2;
              *(a1 + 5232) = v92;
              if (v65 <= 1)
              {
                v93 = *(a1 + 696);
                *(a1 + 712) = v93;
                v94 = *(a1 + 688);
                *(a1 + 728) = v94 & 0xFFFFFFFFFFFFFFC0;
                v95 = -v93 & 0x3FLL;
                v96 = v93 + v95;
                if (v96 > v94)
                {
                  v65 = 0;
                  v97 = 0;
LABEL_166:
                  *(a1 + 5224) = v97;
LABEL_167:
                  if (v65 <= 2)
                  {
                    if (!v65)
                    {
                      v101 = *(a1 + 696);
                      *(a1 + 712) = v101;
                      v102 = *(a1 + 688);
                      *(a1 + 728) = v102 & 0xFFFFFFFFFFFFFFC0;
                      v103 = -v101 & 0x3FLL;
                      v104 = v101 + v103;
                      if (v104 > v102)
                      {
                        v65 = 0;
                        v100 = 0;
                        *(a1 + 968) = 0;
                        *(a1 + 1016) = v26;
                        *(a1 + 3528) = 1;
                        *(a1 + 3544) = v34;
                        *(a1 + 728) = v102 & 0xFFFFFFFFFFFFFFC0;
                        *(a1 + 3536) = 0;
                        *(a1 + 3584) = v30;
                        goto LABEL_193;
                      }

                      *(a1 + 696) = v104;
                      *(a1 + 704) = v104;
                      if (v103)
                      {
                        *(a1 + 712) = v104;
                      }
                    }

                    v65 = 3;
                    *v61 = 3;
                  }

                  if (v26 == -32)
                  {
                    v98 = 0;
                  }

                  else
                  {
                    v98 = *(a1 + 720) - v26 - 32;
                    if (v98 >= *(a1 + 704))
                    {
                      if (v98 < *(a1 + 712))
                      {
                        *(a1 + 712) = v98;
                      }

                      *(a1 + 720) = v98;
                    }

                    else
                    {
                      v98 = 0;
                      *v63 = 1;
                    }
                  }

                  *(a1 + 968) = v98;
                  *(a1 + 1016) = v26;
                  *(a1 + 3528) = 1;
                  *(a1 + 3544) = v34;
                  if (v34)
                  {
                    v99 = *(a1 + 720) - v34;
                    if (v99 >= *(a1 + 704))
                    {
                      if (v99 < *(a1 + 712))
                      {
                        *(a1 + 712) = v99;
                      }

                      *(a1 + 720) = v99;
                    }

                    else
                    {
                      v99 = 0;
                      *v63 = 1;
                    }
                  }

                  else
                  {
                    v99 = 0;
                  }

                  *(a1 + 3536) = v99;
                  *(a1 + 3584) = v30;
                  if (v30)
                  {
                    v100 = *(a1 + 720) - v30;
                    if (v100 >= *(a1 + 704))
                    {
                      if (v100 < *(a1 + 712))
                      {
                        *(a1 + 712) = v100;
                      }

                      *(a1 + 720) = v100;
                    }

                    else
                    {
                      v100 = 0;
                      *v63 = 1;
                    }
                  }

                  else
                  {
                    v100 = 0;
                  }

LABEL_193:
                  *(a1 + 3576) = v100;
                  if (*(a1 + 328) == 1)
                  {
                    v105 = 1 << (*(a1 + 332) - *(a1 + 336));
                    if (v65 <= 2)
                    {
                      v106 = *(a1 + 696);
                      *(a1 + 712) = v106;
                      *(a1 + 728) = *(a1 + 688) & 0xFFFFFFFFFFFFFFC0;
                      v28 = (-v106 & 0x3FLL) == 0;
                      v107 = v106 + (-v106 & 0x3FLL);
                      *(a1 + 696) = v107;
                      *(a1 + 704) = v107;
                      if (!v28)
                      {
                        *(a1 + 712) = v107;
                      }

                      *v61 = 3;
                    }

                    v108 = (*(a1 + 720) - v105);
                    if (v108 < *(a1 + 712))
                    {
                      *(a1 + 712) = v108;
                    }

                    *(a1 + 720) = v108;
                    *(a1 + 1088) = v108;
                    bzero(v108, v105);
                    v65 = *(a1 + 744);
                  }

                  *(a1 + 3192) = 0;
                  *(a1 + 3160) = 0u;
                  *(a1 + 3176) = 0u;
                  *(a1 + 1008) = v66;
                  if (v65 <= 2)
                  {
                    if (!v65)
                    {
                      v112 = *(a1 + 696);
                      *(a1 + 712) = v112;
                      v113 = *(a1 + 688);
                      *(a1 + 728) = v113 & 0xFFFFFFFFFFFFFFC0;
                      v114 = -v112 & 0x3FLL;
                      v115 = v112 + v114;
                      if (v115 > v113)
                      {
                        v109 = 0;
                        *(a1 + 984) = 0uLL;
                        *(a1 + 728) = v113 & 0xFFFFFFFFFFFFFFC0;
LABEL_223:
                        result = 0;
                        *(a1 + 1000) = v109;
                        *(a1 + 948) = 1;
                        return result;
                      }

                      *(a1 + 696) = v115;
                      *(a1 + 704) = v115;
                      if (v114)
                      {
                        *(a1 + 712) = v115;
                      }
                    }

                    *v61 = 3;
                  }

                  if (v29 <= v26)
                  {
                    v110 = *(a1 + 720) - v66;
                    if (v110 >= *(a1 + 704))
                    {
                      if (v110 < *(a1 + 712))
                      {
                        *(a1 + 712) = v110;
                      }

                      *(a1 + 720) = v110;
                    }

                    else
                    {
                      v110 = 0;
                      *v63 = 1;
                    }

                    *(a1 + 984) = v110;
                    v111 = *(a1 + 720) - v66;
                    if (v111 >= *(a1 + 704))
                    {
                      if (v111 < *(a1 + 712))
                      {
                        *(a1 + 712) = v111;
                      }

                      *(a1 + 720) = v111;
                    }

                    else
                    {
                      v111 = 0;
                      *v63 = 1;
                    }

                    *(a1 + 992) = v111;
                    v109 = *(a1 + 720) - v66;
                    if (v109 >= *(a1 + 704))
                    {
                      if (v109 < *(a1 + 712))
                      {
                        *(a1 + 712) = v109;
                      }

                      *(a1 + 720) = v109;
                    }

                    else
                    {
                      v109 = 0;
                      *v63 = 1;
                    }
                  }

                  else
                  {
                    v109 = 0;
                    *(a1 + 984) = 0uLL;
                  }

                  goto LABEL_223;
                }

                *(a1 + 696) = v96;
                *(a1 + 704) = v96;
                if (v95)
                {
                  *(a1 + 712) = v96;
                }

                v65 = 2;
                *v61 = 2;
              }

              v97 = (16 * v92 + 63) & 0xFFFFFFFFFFFFFFC0;
              if (v97)
              {
                v97 = *(a1 + 720) - v97;
                if (v97 >= *(a1 + 704))
                {
                  if (v97 < *(a1 + 712))
                  {
                    *(a1 + 712) = v97;
                  }

                  *(a1 + 720) = v97;
                }

                else
                {
                  v97 = 0;
                  *v63 = 1;
                }
              }

              goto LABEL_166;
            }

            *(a1 + 696) = v91;
            *(a1 + 704) = v91;
            if (v90)
            {
              *(a1 + 712) = v91;
            }
          }

          v65 = 2;
          *v61 = 2;
        }

        v87 = (12 * v33 + 63) & 0xFFFFFFFFFFFFFFC0;
        if (v87)
        {
          v87 = *(a1 + 720) - v87;
          if (v87 >= *(a1 + 704))
          {
            if (v87 < *(a1 + 712))
            {
              *(a1 + 712) = v87;
            }

            *(a1 + 720) = v87;
          }

          else
          {
            v87 = 0;
            *v63 = 1;
          }
        }

        goto LABEL_152;
      }

LABEL_123:
      v83 = 0;
      goto LABEL_137;
    }
  }

  return result;
}