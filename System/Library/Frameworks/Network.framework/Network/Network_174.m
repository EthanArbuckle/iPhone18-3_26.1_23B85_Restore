unint64_t ZSTD_compressBlock_lazy2_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  v205 = v14;
  if (v14 >= 6)
  {
    v14 = 6;
  }

  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = *(a1 + 248);
  v19 = *(v18 + 24);
  v217 = *(v18 + 8);
  v211 = (v10 + v11);
  v202 = (v217 + v19);
  v213 = *v18;
  if (a4 - (v10 + v11) - (v217 + v19) + *v18)
  {
    v20 = a4;
  }

  else
  {
    v20 = (a4 + 1);
  }

  *(a1 + 300) = 0;
  v21 = *(a1 + 44);
  v22 = v9 - (v10 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v219 = v9;
  if (v9 >= v10 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 112);
    v27 = *(a1 + 56);
    v28 = *(a1 + 52);
    v29 = *(a1 + 96);
    v30 = 56 - v28;
    v31 = 24 - v28;
    v32 = a1 + 64;
    if (v205 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v33 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v34) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_25;
          }

          v33 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v34 = (v33 ^ v29) >> v30;
LABEL_25:
        v35 = v34 >> 8 << v15;
        _X3 = v26 + 4 * v35;
        __asm { PRFM            #0, [X3] }

        _X2 = v27 + v35;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v34;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v205 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v44 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v45) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_34;
          }

          v44 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v45 = (v44 ^ v29) >> v30;
LABEL_34:
        v46 = v45 >> 8 << v15;
        _X3 = v26 + 4 * v46;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v27 + v46;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v45;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v60 = ((0xCF1BBCDCBF9B0000 * *(v10 + v21)) ^ v29) >> v30;
        v61 = v60 >> 8 << v15;
        _X0 = v26 + 4 * v61;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v61;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v60;
      }

      while (v25 != v21);
    }

    else if (v13 == 5)
    {
      do
      {
        v52 = ((0xCF1BBCDCBB000000 * *(v10 + v21)) ^ v29) >> v30;
        v53 = v52 >> 8 << v15;
        _X0 = v26 + 4 * v53;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v53;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v52;
      }

      while (v25 != v21);
    }

    else
    {
      do
      {
        v68 = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
        v69 = v68 >> 8 << v15;
        _X0 = v26 + 4 * v69;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v69;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v68;
      }

      while (v25 != v21);
    }
  }

LABEL_46:
  if (v20 < v219)
  {
    v210 = v8 - 7;
    v206 = v8 - 1;
    v207 = v8 - 3;
    v203 = v7 + 64;
    v214 = v11 + v217 - v213;
    v215 = v11;
    v216 = v7;
    v218 = v15;
    v204 = a2;
    v208 = v8 - 32;
    v209 = v11 + v10 + 8;
    while (1)
    {
      v212 = v17;
      v77 = (v20 - v10 - v16 + 1);
      v78 = v217 + v77 - v214;
      if (v77 >= v11)
      {
        v78 = v10 + v77;
      }

      if ((v77 - v11) <= 0xFFFFFFFC && *v78 == *(v20 + 1))
      {
        if (v77 >= v11)
        {
          v79 = v8;
        }

        else
        {
          v79 = v213;
        }

        v80 = ZSTD_count_2segments((v20 + 5), (v78 + 4), v8, v79, v211);
        v15 = v218;
        v81 = v80 + 4;
      }

      else
      {
        v81 = 0;
      }

      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v7, v20, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v7, v20, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v7, v20, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v7, v20, v8, v220);
      }

      else
      {
        BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v7, v20, v8, v220);
      }

      if (BestMatch_dictMatchState_6_6 <= v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = BestMatch_dictMatchState_6_6;
      }

      LODWORD(v11) = v215;
      if (v83 < 4)
      {
        v76 = v20 - v5;
        v20 += ((v20 - v5) >> 8) + 1;
        v7 = v216;
        *(v216 + 300) = v76 > 0x7FF;
        v15 = v218;
LABEL_49:
        v17 = v212;
        goto LABEL_50;
      }

      v84 = BestMatch_dictMatchState_6_6 > v81;
      v85 = BestMatch_dictMatchState_6_6 <= v81 ? 1 : *v220;
      v86 = (v84 ? v20 : v20 + 1);
      v87 = v86;
      v88 = v85;
      BestMatch_dictMatchState_6_5 = v83;
      v15 = v218;
      if (v20 < v219)
      {
        break;
      }

LABEL_196:
      if (v88 <= 3)
      {
        v7 = v216;
        v120 = v205;
        v123 = v8 - 7;
        v119 = v203;
      }

      else
      {
        v116 = v87 - (v88 + v10) + 3;
        v117 = v211;
        if (v11 > v116)
        {
          v117 = v202;
        }

        v118 = v217 - v214;
        v119 = v203;
        if (v11 <= v87 - (v88 + v10) + 3)
        {
          v118 = v10;
        }

        v120 = v205;
        if (v87 <= v5 || v118 + v116 <= v117)
        {
          v7 = v216;
          v123 = v8 - 7;
        }

        else
        {
          v121 = (v118 + v116 - 1);
          v122 = v87 - 1;
          v7 = v216;
          v123 = v8 - 7;
          while (*v122 == *v121)
          {
            ++BestMatch_dictMatchState_6_5;
            v124 = (v122 - 1);
            if (v122 > v5)
            {
              --v122;
              v84 = v121-- > v117;
              if (v84)
              {
                continue;
              }
            }

            v87 = (v124 + 1);
            goto LABEL_211;
          }

          v87 = v122 + 1;
        }

LABEL_211:
        v212 = v16;
        v16 = (v88 - 3);
      }

      v125 = v87 - v5;
      v126 = *(v204 + 24);
      if (v87 > v208)
      {
        if (v5 <= v208)
        {
          v127 = (v126 + v208 - v5);
          *v126 = *v5;
          if ((v208 - v5) >= 17)
          {
            v134 = v126 + 1;
            v135 = (v5 + 32);
            do
            {
              *v134 = *(v135 - 1);
              v136 = *v135;
              v135 += 2;
              v134[1] = v136;
              v134 += 2;
            }

            while (v134 < v127);
            v5 = (v8 - 32);
          }

          else
          {
            v5 = (v8 - 32);
          }

          v126 = v127;
        }

        if (v5 >= v87)
        {
          goto LABEL_243;
        }

        v137 = v87 - v5;
        if ((v87 - v5) < 8)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if ((v126 - v5) < 0x20)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if (v137 >= 0x20)
        {
          v138 = v137 & 0xFFFFFFFFFFFFFFE0;
          v140 = (v5 + 16);
          v141 = v126 + 1;
          v142 = v137 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v143 = *v140;
            *(v141 - 1) = *(v140 - 1);
            *v141 = v143;
            v140 += 2;
            v141 += 2;
            v142 -= 32;
          }

          while (v142);
          if (v137 == v138)
          {
            goto LABEL_243;
          }

          if ((v137 & 0x18) == 0)
          {
            v5 += v138;
            v139 = v126 + v138;
            do
            {
LABEL_242:
              v149 = *v5++;
              *v139++ = v149;
            }

            while (v5 != v87);
            goto LABEL_243;
          }
        }

        else
        {
          v138 = 0;
        }

        v144 = v137 & 0xFFFFFFFFFFFFFFF8;
        v139 = v126 + (v137 & 0xFFFFFFFFFFFFFFF8);
        v145 = v138 - (v137 & 0xFFFFFFFFFFFFFFF8);
        v146 = &v5[v138];
        v147 = (v126 + v138);
        do
        {
          v148 = *v146;
          v146 += 8;
          *v147++ = v148;
          v145 += 8;
        }

        while (v145);
        if (v137 != v144)
        {
          v5 += v144;
          goto LABEL_242;
        }

LABEL_243:
        *(v204 + 24) += v125;
        v133 = *(v204 + 8);
        if (v125 >= 0x10000)
        {
          v150 = (v133 - *v204) >> 3;
          *(v204 + 72) = 1;
          *(v204 + 76) = v150;
        }

        goto LABEL_245;
      }

      *v126 = *v5;
      v128 = *(v204 + 24);
      if (v125 > 0x10)
      {
        *(v128 + 16) = *(v5 + 1);
        if (v125 >= 33)
        {
          v129 = v128 + v125;
          v130 = (v128 + 32);
          v131 = (v5 + 48);
          do
          {
            *v130 = *(v131 - 1);
            v132 = *v131;
            v131 += 2;
            v130[1] = v132;
            v130 += 2;
          }

          while (v130 < v129);
        }

        goto LABEL_243;
      }

      *(v204 + 24) = v128 + v125;
      v133 = *(v204 + 8);
LABEL_245:
      *(v133 + 4) = v125;
      *v133 = v88;
      if (BestMatch_dictMatchState_6_5 - 3 >= 0x10000)
      {
        v151 = (v133 - *v204) >> 3;
        *(v204 + 72) = 2;
        *(v204 + 76) = v151;
      }

      *(v133 + 6) = BestMatch_dictMatchState_6_5 - 3;
      v152 = v133 + 8;
      *(v204 + 8) = v133 + 8;
      if (*(v7 + 300))
      {
        v153 = *(v7 + 44);
        v154 = v219 - (v10 + v153);
        if ((v154 + 1) < 8)
        {
          v155 = v154 + 1;
        }

        else
        {
          v155 = 8;
        }

        if (v219 >= v10 + v153)
        {
          v156 = v155;
        }

        else
        {
          v156 = 0;
        }

        v157 = (v156 + v153);
        if (v153 < v157)
        {
          v158 = *(v7 + 112);
          v159 = *(v7 + 56);
          v160 = *(v7 + 52);
          v161 = *(v7 + 96);
          v162 = 56 - v160;
          v163 = 24 - v160;
          do
          {
            if (v13 == 5)
            {
              v166 = 0xCF1BBCDCBB000000 * *(v10 + v153);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v167) = ((-1640531535 * *(v10 + v153)) ^ v161) >> v163;
                goto LABEL_264;
              }

              v166 = 0xCF1BBCDCBF9B0000 * *(v10 + v153);
            }

            v167 = (v166 ^ v161) >> v162;
LABEL_264:
            v168 = v167 >> 8 << v15;
            _X1 = v158 + 4 * v168;
            __asm { PRFM            #0, [X1] }

            if (v120 <= 4)
            {
              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }

              if (v120 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v119 + 4 * (v153++ & 7)) = v167;
          }

          while (v157 != v153);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v87[BestMatch_dictMatchState_6_5];
      if (&v87[BestMatch_dictMatchState_6_5] > v219)
      {
        v20 = &v87[BestMatch_dictMatchState_6_5];
        goto LABEL_49;
      }

      v175 = v16;
      v176 = v212;
      while (1)
      {
        v16 = v176;
        v176 = v175;
        v177 = (v5 - v10 - v16);
        v178 = v177 >= v11 ? v10 : v217 - v214;
        if ((v177 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v179 = v178 + v177;
        if (*(v178 + v177) != *v5)
        {
          break;
        }

        if (v177 >= v11)
        {
          v180 = v8;
        }

        else
        {
          v180 = v213;
        }

        v181 = v5 + 4;
        v182 = (v179 + 4);
        v183 = v180 + v5 - v179;
        if (v183 >= v8)
        {
          v183 = v8;
        }

        if (v183 - 7 <= v181)
        {
          v184 = v182;
          v186 = v5 + 4;
        }

        else
        {
          if (*v182 != *v181)
          {
            v189 = __clz(__rbit64(*v181 ^ *v182)) >> 3;
            goto LABEL_300;
          }

          v184 = (v178 + v177 + 12);
          v185 = (v5 + 12);
          while (1)
          {
            v186 = v185;
            if (v185 >= (v183 - 7))
            {
              break;
            }

            v188 = *v184;
            v184 += 4;
            v187 = v188;
            v185 += 8;
            if (v188 != *v186)
            {
              v189 = v186 + (__clz(__rbit64(*v186 ^ v187)) >> 3) - v181;
              goto LABEL_300;
            }
          }
        }

        if (v186 < (v183 - 3) && *v184 == *v186)
        {
          v184 += 2;
          v186 = (v186 + 4);
        }

        if (v186 < (v183 - 1) && *v184 == *v186)
        {
          ++v184;
          v186 = (v186 + 2);
        }

        if (v186 < v183 && *v184 == *v186)
        {
          v186 = (v186 + 1);
        }

        v189 = v186 - v181;
LABEL_300:
        if ((v182 + v189) == v180)
        {
          v191 = &v181[v189];
          if (v123 > v191)
          {
            if (*v211 == *v191)
            {
              v192 = 0;
              v193 = &v5[v189];
              while (1)
              {
                v194 = &v193[v192 + 12];
                if (v194 >= v123)
                {
                  break;
                }

                v195 = *(v209 + v192);
                v196 = *v194;
                v192 += 8;
                if (v195 != v196)
                {
                  v197 = &v193[v192 + 4 + (__clz(__rbit64(v196 ^ v195)) >> 3)];
                  goto LABEL_323;
                }
              }

              v198 = (v209 + v192);
              v197 = &v5[v189 + 12 + v192];
LABEL_314:
              if (v197 < v207 && *v198 == *v197)
              {
                v198 = (v198 + 4);
                v197 += 4;
              }

              if (v197 < v206 && *v198 == *v197)
              {
                v198 = (v198 + 2);
                v197 += 2;
              }

              if (v197 < v8 && *v198 == *v197)
              {
                ++v197;
              }

LABEL_323:
              v199 = v197 - v191;
            }

            else
            {
              v199 = __clz(__rbit64(*v191 ^ *v211)) >> 3;
            }

            v189 += v199;
            if (v5 > v208)
            {
              goto LABEL_303;
            }

LABEL_302:
            **(v204 + 24) = *v5;
            v152 = *(v204 + 8);
            goto LABEL_303;
          }

          v198 = v211;
          v197 = v191;
          goto LABEL_314;
        }

        if (v5 <= v208)
        {
          goto LABEL_302;
        }

LABEL_303:
        *(v152 + 4) = 0;
        *v152 = 1;
        if (v189 + 1 >= 0x10000)
        {
          v190 = (v152 - *v204) >> 3;
          *(v204 + 72) = 2;
          *(v204 + 76) = v190;
        }

        *(v152 + 6) = v189 + 1;
        v152 += 8;
        v5 += v189 + 4;
        *(v204 + 8) = v152;
        v175 = v16;
        v17 = v176;
        v20 = v5;
        if (v5 > v219)
        {
          goto LABEL_50;
        }
      }

      v17 = v16;
      v16 = v175;
      v20 = v5;
LABEL_50:
      if (v20 >= v219)
      {
        goto LABEL_327;
      }
    }

    while (1)
    {
      v87 = (v20 + 1);
      v90 = (v20 + 1 - v10 - v16);
      if (v90 >= v11)
      {
        v91 = (v10 + v90);
      }

      else
      {
        v91 = (v217 + v90 - v214);
      }

      if ((v90 - v11) > 0xFFFFFFFC || *v91 != *v87)
      {
        goto LABEL_143;
      }

      if (v90 >= v11)
      {
        v92 = v8;
      }

      else
      {
        v92 = v213;
      }

      v93 = (v20 + 5);
      v94 = v91 + 1;
      v95 = v20 + 5 + v92 - (v91 + 1);
      if (v95 >= v8)
      {
        v95 = v8;
      }

      if (v95 - 7 <= v93)
      {
        v96 = (v91 + 1);
        v98 = (v20 + 5);
      }

      else
      {
        if (*v94 != *v93)
        {
          v101 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
          goto LABEL_118;
        }

        v96 = (v91 + 3);
        v97 = v20 + 13;
        while (1)
        {
          v98 = v97;
          if (v97 >= v95 - 7)
          {
            break;
          }

          v100 = *v96;
          v96 += 4;
          v99 = v100;
          v97 += 8;
          if (v100 != *v98)
          {
            v101 = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - v93;
            goto LABEL_118;
          }
        }
      }

      if (v98 < v95 - 3 && *v96 == *v98)
      {
        v96 += 2;
        v98 = (v98 + 4);
      }

      if (v98 < v95 - 1 && *v96 == *v98)
      {
        ++v96;
        v98 = (v98 + 2);
      }

      if (v98 < v95 && *v96 == *v98)
      {
        v98 = (v98 + 1);
      }

      v101 = v98 - v93;
LABEL_118:
      if (v94 + v101 != v92)
      {
        if (v101 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_143;
        }

        goto LABEL_141;
      }

      v102 = &v93[v101];
      if (v210 <= v102)
      {
        v109 = v211;
        v108 = v102;
      }

      else
      {
        if (*v211 != *v102)
        {
          v110 = __clz(__rbit64(*v102 ^ *v211)) >> 3;
          goto LABEL_140;
        }

        v103 = 0;
        v104 = v20 + v101;
        while (1)
        {
          v105 = (v104 + v103 + 13);
          if (v105 >= v210)
          {
            break;
          }

          v106 = *(v209 + v103);
          v107 = *v105;
          v103 += 8;
          if (v106 != v107)
          {
            v108 = (v104 + v103 + 5 + (__clz(__rbit64(v107 ^ v106)) >> 3));
            goto LABEL_139;
          }
        }

        v109 = (v209 + v103);
        v108 = (v20 + v101 + v103 + 13);
      }

      if (v108 < v207 && *v109 == *v108)
      {
        v109 = (v109 + 4);
        ++v108;
      }

      if (v108 < v206 && *v109 == *v108)
      {
        v109 = (v109 + 2);
        v108 = (v108 + 2);
      }

      if (v108 < v8 && *v109 == *v108)
      {
        v108 = (v108 + 1);
      }

LABEL_139:
      v110 = v108 - v102;
LABEL_140:
      v101 += v110;
      if (v101 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_143;
      }

LABEL_141:
      v111 = v101 + 4;
      if (3 * v111 > (__clz(v85) + 3 * v83 - 30))
      {
        v86 = (v20 + 1);
        v85 = 1;
        v83 = v111;
      }

LABEL_143:
      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v216, v20 + 1, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v216, v20 + 1, v8, v220);
      }

      else
      {
        BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v216, v20 + 1, v8, v220);
      }

      LODWORD(v11) = v215;
      v15 = v218;
      if (BestMatch_dictMatchState_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dictMatchState_6_5 - 31) <= (__clz(v85) + 4 * v83 - 27)))
      {
        if (v87 >= v219)
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dictMatchState_6_5 = v83;
          goto LABEL_196;
        }

        v87 = (v20 + 2);
        v112 = (v20 + 2 - v10 - v16);
        v113 = v217 + v112 - v214;
        if (v112 >= v215)
        {
          v113 = v10 + v112;
        }

        if (v112 - v215 <= 0xFFFFFFFC && *v113 == *v87)
        {
          if (v112 >= v215)
          {
            v114 = v8;
          }

          else
          {
            v114 = v213;
          }

          v115 = ZSTD_count_2segments((v20 + 6), (v113 + 4), v8, v114, v211);
          if (v115 > 0xFFFFFFFFFFFFFFFBLL)
          {
            v15 = v218;
          }

          else
          {
            v15 = v218;
            if ((__clz(v85) + 4 * v83 - 30) < 4 * (v115 + 4))
            {
              v86 = (v20 + 2);
              v85 = 1;
              v83 = v115 + 4;
            }
          }
        }

        *v220 = 999999999;
        if (v13 == 6)
        {
          if (v15 == 6)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v13 == 5)
        {
          if (v15 == 6)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v15 == 6)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v216, v20 + 2, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v216, v20 + 2, v8, v220);
        }

        else
        {
          BestMatch_dictMatchState_6_5 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v216, v20 + 2, v8, v220);
        }

        LODWORD(v11) = v215;
        if (BestMatch_dictMatchState_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dictMatchState_6_5 - 31) <= (__clz(v85) + 4 * v83 - 24)))
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dictMatchState_6_5 = v83;
          v15 = v218;
          goto LABEL_196;
        }

        v15 = v218;
      }

      v20 = v87;
      v83 = BestMatch_dictMatchState_6_5;
      v85 = v88;
      v86 = v87;
      if (v87 >= v219)
      {
        goto LABEL_196;
      }
    }
  }

LABEL_327:
  *a3 = v16;
  a3[1] = v17;
  return v8 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 272);
  if (v12 >= 6)
  {
    v12 = 6;
  }

  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 268);
  v205 = v14;
  if (v14 >= 6)
  {
    v14 = 6;
  }

  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = *(a1 + 248);
  v19 = *(v18 + 24);
  v217 = *(v18 + 8);
  v211 = (v10 + v11);
  v202 = (v217 + v19);
  v213 = *v18;
  if (a4 - (v10 + v11) - (v217 + v19) + *v18)
  {
    v20 = a4;
  }

  else
  {
    v20 = (a4 + 1);
  }

  *(a1 + 300) = 0;
  v21 = *(a1 + 44);
  v22 = v9 - (v10 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v219 = v9;
  if (v9 >= v10 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 112);
    v27 = *(a1 + 56);
    v28 = *(a1 + 52);
    v29 = *(a1 + 96);
    v30 = 56 - v28;
    v31 = 24 - v28;
    v32 = a1 + 64;
    if (v205 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v33 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v34) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_25;
          }

          v33 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v34 = (v33 ^ v29) >> v30;
LABEL_25:
        v35 = v34 >> 8 << v15;
        _X3 = v26 + 4 * v35;
        __asm { PRFM            #0, [X3] }

        _X2 = v27 + v35;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v34;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v205 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v44 = 0xCF1BBCDCBF9B0000 * *(v10 + v21);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v45) = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
            goto LABEL_34;
          }

          v44 = 0xCF1BBCDCBB000000 * *(v10 + v21);
        }

        v45 = (v44 ^ v29) >> v30;
LABEL_34:
        v46 = v45 >> 8 << v15;
        _X3 = v26 + 4 * v46;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v27 + v46;
        __asm { PRFM            #0, [X2] }

        *(v32 + 4 * (v21++ & 7)) = v45;
        if (v25 == v21)
        {
          goto LABEL_46;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v60 = ((0xCF1BBCDCBF9B0000 * *(v10 + v21)) ^ v29) >> v30;
        v61 = v60 >> 8 << v15;
        _X0 = v26 + 4 * v61;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v61;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v60;
      }

      while (v25 != v21);
    }

    else if (v13 == 5)
    {
      do
      {
        v52 = ((0xCF1BBCDCBB000000 * *(v10 + v21)) ^ v29) >> v30;
        v53 = v52 >> 8 << v15;
        _X0 = v26 + 4 * v53;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v53;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v52;
      }

      while (v25 != v21);
    }

    else
    {
      do
      {
        v68 = ((-1640531535 * *(v10 + v21)) ^ v29) >> v31;
        v69 = v68 >> 8 << v15;
        _X0 = v26 + 4 * v69;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v27 + v69;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v32 + 4 * (v21++ & 7)) = v68;
      }

      while (v25 != v21);
    }
  }

LABEL_46:
  if (v20 < v219)
  {
    v210 = v8 - 7;
    v206 = v8 - 1;
    v207 = v8 - 3;
    v203 = v7 + 64;
    v214 = v11 + v217 - v213;
    v215 = v11;
    v216 = v7;
    v218 = v15;
    v204 = a2;
    v208 = v8 - 32;
    v209 = v11 + v10 + 8;
    while (1)
    {
      v212 = v17;
      v77 = (v20 - v10 - v16 + 1);
      v78 = v217 + v77 - v214;
      if (v77 >= v11)
      {
        v78 = v10 + v77;
      }

      if ((v77 - v11) <= 0xFFFFFFFC && *v78 == *(v20 + 1))
      {
        if (v77 >= v11)
        {
          v79 = v8;
        }

        else
        {
          v79 = v213;
        }

        v80 = ZSTD_count_2segments((v20 + 5), (v78 + 4), v8, v79, v211);
        v15 = v218;
        v81 = v80 + 4;
      }

      else
      {
        v81 = 0;
      }

      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v7, v20, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v7, v20, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v7, v20, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v7, v20, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v7, v20, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v7, v20, v8, v220);
      }

      else
      {
        BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v7, v20, v8, v220);
      }

      if (BestMatch_dedicatedDictSearch_6_6 <= v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = BestMatch_dedicatedDictSearch_6_6;
      }

      LODWORD(v11) = v215;
      if (v83 < 4)
      {
        v76 = v20 - v5;
        v20 += ((v20 - v5) >> 8) + 1;
        v7 = v216;
        *(v216 + 300) = v76 > 0x7FF;
        v15 = v218;
LABEL_49:
        v17 = v212;
        goto LABEL_50;
      }

      v84 = BestMatch_dedicatedDictSearch_6_6 > v81;
      v85 = BestMatch_dedicatedDictSearch_6_6 <= v81 ? 1 : *v220;
      v86 = (v84 ? v20 : v20 + 1);
      v87 = v86;
      v88 = v85;
      BestMatch_dedicatedDictSearch_6_5 = v83;
      v15 = v218;
      if (v20 < v219)
      {
        break;
      }

LABEL_196:
      if (v88 <= 3)
      {
        v7 = v216;
        v120 = v205;
        v123 = v8 - 7;
        v119 = v203;
      }

      else
      {
        v116 = v87 - (v88 + v10) + 3;
        v117 = v211;
        if (v11 > v116)
        {
          v117 = v202;
        }

        v118 = v217 - v214;
        v119 = v203;
        if (v11 <= v87 - (v88 + v10) + 3)
        {
          v118 = v10;
        }

        v120 = v205;
        if (v87 <= v5 || v118 + v116 <= v117)
        {
          v7 = v216;
          v123 = v8 - 7;
        }

        else
        {
          v121 = (v118 + v116 - 1);
          v122 = v87 - 1;
          v7 = v216;
          v123 = v8 - 7;
          while (*v122 == *v121)
          {
            ++BestMatch_dedicatedDictSearch_6_5;
            v124 = (v122 - 1);
            if (v122 > v5)
            {
              --v122;
              v84 = v121-- > v117;
              if (v84)
              {
                continue;
              }
            }

            v87 = (v124 + 1);
            goto LABEL_211;
          }

          v87 = v122 + 1;
        }

LABEL_211:
        v212 = v16;
        v16 = (v88 - 3);
      }

      v125 = v87 - v5;
      v126 = *(v204 + 24);
      if (v87 > v208)
      {
        if (v5 <= v208)
        {
          v127 = (v126 + v208 - v5);
          *v126 = *v5;
          if ((v208 - v5) >= 17)
          {
            v134 = v126 + 1;
            v135 = (v5 + 32);
            do
            {
              *v134 = *(v135 - 1);
              v136 = *v135;
              v135 += 2;
              v134[1] = v136;
              v134 += 2;
            }

            while (v134 < v127);
            v5 = (v8 - 32);
          }

          else
          {
            v5 = (v8 - 32);
          }

          v126 = v127;
        }

        if (v5 >= v87)
        {
          goto LABEL_243;
        }

        v137 = v87 - v5;
        if ((v87 - v5) < 8)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if ((v126 - v5) < 0x20)
        {
          v139 = v126;
          goto LABEL_242;
        }

        if (v137 >= 0x20)
        {
          v138 = v137 & 0xFFFFFFFFFFFFFFE0;
          v140 = (v5 + 16);
          v141 = v126 + 1;
          v142 = v137 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v143 = *v140;
            *(v141 - 1) = *(v140 - 1);
            *v141 = v143;
            v140 += 2;
            v141 += 2;
            v142 -= 32;
          }

          while (v142);
          if (v137 == v138)
          {
            goto LABEL_243;
          }

          if ((v137 & 0x18) == 0)
          {
            v5 += v138;
            v139 = v126 + v138;
            do
            {
LABEL_242:
              v149 = *v5++;
              *v139++ = v149;
            }

            while (v5 != v87);
            goto LABEL_243;
          }
        }

        else
        {
          v138 = 0;
        }

        v144 = v137 & 0xFFFFFFFFFFFFFFF8;
        v139 = v126 + (v137 & 0xFFFFFFFFFFFFFFF8);
        v145 = v138 - (v137 & 0xFFFFFFFFFFFFFFF8);
        v146 = &v5[v138];
        v147 = (v126 + v138);
        do
        {
          v148 = *v146;
          v146 += 8;
          *v147++ = v148;
          v145 += 8;
        }

        while (v145);
        if (v137 != v144)
        {
          v5 += v144;
          goto LABEL_242;
        }

LABEL_243:
        *(v204 + 24) += v125;
        v133 = *(v204 + 8);
        if (v125 >= 0x10000)
        {
          v150 = (v133 - *v204) >> 3;
          *(v204 + 72) = 1;
          *(v204 + 76) = v150;
        }

        goto LABEL_245;
      }

      *v126 = *v5;
      v128 = *(v204 + 24);
      if (v125 > 0x10)
      {
        *(v128 + 16) = *(v5 + 1);
        if (v125 >= 33)
        {
          v129 = v128 + v125;
          v130 = (v128 + 32);
          v131 = (v5 + 48);
          do
          {
            *v130 = *(v131 - 1);
            v132 = *v131;
            v131 += 2;
            v130[1] = v132;
            v130 += 2;
          }

          while (v130 < v129);
        }

        goto LABEL_243;
      }

      *(v204 + 24) = v128 + v125;
      v133 = *(v204 + 8);
LABEL_245:
      *(v133 + 4) = v125;
      *v133 = v88;
      if (BestMatch_dedicatedDictSearch_6_5 - 3 >= 0x10000)
      {
        v151 = (v133 - *v204) >> 3;
        *(v204 + 72) = 2;
        *(v204 + 76) = v151;
      }

      *(v133 + 6) = BestMatch_dedicatedDictSearch_6_5 - 3;
      v152 = v133 + 8;
      *(v204 + 8) = v133 + 8;
      if (*(v7 + 300))
      {
        v153 = *(v7 + 44);
        v154 = v219 - (v10 + v153);
        if ((v154 + 1) < 8)
        {
          v155 = v154 + 1;
        }

        else
        {
          v155 = 8;
        }

        if (v219 >= v10 + v153)
        {
          v156 = v155;
        }

        else
        {
          v156 = 0;
        }

        v157 = (v156 + v153);
        if (v153 < v157)
        {
          v158 = *(v7 + 112);
          v159 = *(v7 + 56);
          v160 = *(v7 + 52);
          v161 = *(v7 + 96);
          v162 = 56 - v160;
          v163 = 24 - v160;
          do
          {
            if (v13 == 5)
            {
              v166 = 0xCF1BBCDCBB000000 * *(v10 + v153);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v167) = ((-1640531535 * *(v10 + v153)) ^ v161) >> v163;
                goto LABEL_264;
              }

              v166 = 0xCF1BBCDCBF9B0000 * *(v10 + v153);
            }

            v167 = (v166 ^ v161) >> v162;
LABEL_264:
            v168 = v167 >> 8 << v15;
            _X1 = v158 + 4 * v168;
            __asm { PRFM            #0, [X1] }

            if (v120 <= 4)
            {
              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v159 + v168;
              __asm { PRFM            #0, [X17] }

              if (v120 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v119 + 4 * (v153++ & 7)) = v167;
          }

          while (v157 != v153);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v87[BestMatch_dedicatedDictSearch_6_5];
      if (&v87[BestMatch_dedicatedDictSearch_6_5] > v219)
      {
        v20 = &v87[BestMatch_dedicatedDictSearch_6_5];
        goto LABEL_49;
      }

      v175 = v16;
      v176 = v212;
      while (1)
      {
        v16 = v176;
        v176 = v175;
        v177 = (v5 - v10 - v16);
        v178 = v177 >= v11 ? v10 : v217 - v214;
        if ((v177 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v179 = v178 + v177;
        if (*(v178 + v177) != *v5)
        {
          break;
        }

        if (v177 >= v11)
        {
          v180 = v8;
        }

        else
        {
          v180 = v213;
        }

        v181 = v5 + 4;
        v182 = (v179 + 4);
        v183 = v180 + v5 - v179;
        if (v183 >= v8)
        {
          v183 = v8;
        }

        if (v183 - 7 <= v181)
        {
          v184 = v182;
          v186 = v5 + 4;
        }

        else
        {
          if (*v182 != *v181)
          {
            v189 = __clz(__rbit64(*v181 ^ *v182)) >> 3;
            goto LABEL_300;
          }

          v184 = (v178 + v177 + 12);
          v185 = (v5 + 12);
          while (1)
          {
            v186 = v185;
            if (v185 >= (v183 - 7))
            {
              break;
            }

            v188 = *v184;
            v184 += 4;
            v187 = v188;
            v185 += 8;
            if (v188 != *v186)
            {
              v189 = v186 + (__clz(__rbit64(*v186 ^ v187)) >> 3) - v181;
              goto LABEL_300;
            }
          }
        }

        if (v186 < (v183 - 3) && *v184 == *v186)
        {
          v184 += 2;
          v186 = (v186 + 4);
        }

        if (v186 < (v183 - 1) && *v184 == *v186)
        {
          ++v184;
          v186 = (v186 + 2);
        }

        if (v186 < v183 && *v184 == *v186)
        {
          v186 = (v186 + 1);
        }

        v189 = v186 - v181;
LABEL_300:
        if ((v182 + v189) == v180)
        {
          v191 = &v181[v189];
          if (v123 > v191)
          {
            if (*v211 == *v191)
            {
              v192 = 0;
              v193 = &v5[v189];
              while (1)
              {
                v194 = &v193[v192 + 12];
                if (v194 >= v123)
                {
                  break;
                }

                v195 = *(v209 + v192);
                v196 = *v194;
                v192 += 8;
                if (v195 != v196)
                {
                  v197 = &v193[v192 + 4 + (__clz(__rbit64(v196 ^ v195)) >> 3)];
                  goto LABEL_323;
                }
              }

              v198 = (v209 + v192);
              v197 = &v5[v189 + 12 + v192];
LABEL_314:
              if (v197 < v207 && *v198 == *v197)
              {
                v198 = (v198 + 4);
                v197 += 4;
              }

              if (v197 < v206 && *v198 == *v197)
              {
                v198 = (v198 + 2);
                v197 += 2;
              }

              if (v197 < v8 && *v198 == *v197)
              {
                ++v197;
              }

LABEL_323:
              v199 = v197 - v191;
            }

            else
            {
              v199 = __clz(__rbit64(*v191 ^ *v211)) >> 3;
            }

            v189 += v199;
            if (v5 > v208)
            {
              goto LABEL_303;
            }

LABEL_302:
            **(v204 + 24) = *v5;
            v152 = *(v204 + 8);
            goto LABEL_303;
          }

          v198 = v211;
          v197 = v191;
          goto LABEL_314;
        }

        if (v5 <= v208)
        {
          goto LABEL_302;
        }

LABEL_303:
        *(v152 + 4) = 0;
        *v152 = 1;
        if (v189 + 1 >= 0x10000)
        {
          v190 = (v152 - *v204) >> 3;
          *(v204 + 72) = 2;
          *(v204 + 76) = v190;
        }

        *(v152 + 6) = v189 + 1;
        v152 += 8;
        v5 += v189 + 4;
        *(v204 + 8) = v152;
        v175 = v16;
        v17 = v176;
        v20 = v5;
        if (v5 > v219)
        {
          goto LABEL_50;
        }
      }

      v17 = v16;
      v16 = v175;
      v20 = v5;
LABEL_50:
      if (v20 >= v219)
      {
        goto LABEL_327;
      }
    }

    while (1)
    {
      v87 = (v20 + 1);
      v90 = (v20 + 1 - v10 - v16);
      if (v90 >= v11)
      {
        v91 = (v10 + v90);
      }

      else
      {
        v91 = (v217 + v90 - v214);
      }

      if ((v90 - v11) > 0xFFFFFFFC || *v91 != *v87)
      {
        goto LABEL_143;
      }

      if (v90 >= v11)
      {
        v92 = v8;
      }

      else
      {
        v92 = v213;
      }

      v93 = (v20 + 5);
      v94 = v91 + 1;
      v95 = v20 + 5 + v92 - (v91 + 1);
      if (v95 >= v8)
      {
        v95 = v8;
      }

      if (v95 - 7 <= v93)
      {
        v96 = (v91 + 1);
        v98 = (v20 + 5);
      }

      else
      {
        if (*v94 != *v93)
        {
          v101 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
          goto LABEL_118;
        }

        v96 = (v91 + 3);
        v97 = v20 + 13;
        while (1)
        {
          v98 = v97;
          if (v97 >= v95 - 7)
          {
            break;
          }

          v100 = *v96;
          v96 += 4;
          v99 = v100;
          v97 += 8;
          if (v100 != *v98)
          {
            v101 = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - v93;
            goto LABEL_118;
          }
        }
      }

      if (v98 < v95 - 3 && *v96 == *v98)
      {
        v96 += 2;
        v98 = (v98 + 4);
      }

      if (v98 < v95 - 1 && *v96 == *v98)
      {
        ++v96;
        v98 = (v98 + 2);
      }

      if (v98 < v95 && *v96 == *v98)
      {
        v98 = (v98 + 1);
      }

      v101 = v98 - v93;
LABEL_118:
      if (v94 + v101 != v92)
      {
        if (v101 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_143;
        }

        goto LABEL_141;
      }

      v102 = &v93[v101];
      if (v210 <= v102)
      {
        v109 = v211;
        v108 = v102;
      }

      else
      {
        if (*v211 != *v102)
        {
          v110 = __clz(__rbit64(*v102 ^ *v211)) >> 3;
          goto LABEL_140;
        }

        v103 = 0;
        v104 = v20 + v101;
        while (1)
        {
          v105 = (v104 + v103 + 13);
          if (v105 >= v210)
          {
            break;
          }

          v106 = *(v209 + v103);
          v107 = *v105;
          v103 += 8;
          if (v106 != v107)
          {
            v108 = (v104 + v103 + 5 + (__clz(__rbit64(v107 ^ v106)) >> 3));
            goto LABEL_139;
          }
        }

        v109 = (v209 + v103);
        v108 = (v20 + v101 + v103 + 13);
      }

      if (v108 < v207 && *v109 == *v108)
      {
        v109 = (v109 + 4);
        ++v108;
      }

      if (v108 < v206 && *v109 == *v108)
      {
        v109 = (v109 + 2);
        v108 = (v108 + 2);
      }

      if (v108 < v8 && *v109 == *v108)
      {
        v108 = (v108 + 1);
      }

LABEL_139:
      v110 = v108 - v102;
LABEL_140:
      v101 += v110;
      if (v101 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_143;
      }

LABEL_141:
      v111 = v101 + 4;
      if (3 * v111 > (__clz(v85) + 3 * v83 - 30))
      {
        v86 = (v20 + 1);
        v85 = 1;
        v83 = v111;
      }

LABEL_143:
      *v220 = 999999999;
      if (v13 == 6)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v13 == 5)
      {
        if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v216, v20 + 1, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v216, v20 + 1, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v216, v20 + 1, v8, v220);
        }
      }

      else if (v15 == 6)
      {
        BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v216, v20 + 1, v8, v220);
      }

      else if (v15 == 5)
      {
        BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v216, v20 + 1, v8, v220);
      }

      else
      {
        BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v216, v20 + 1, v8, v220);
      }

      LODWORD(v11) = v215;
      v15 = v218;
      if (BestMatch_dedicatedDictSearch_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dedicatedDictSearch_6_5 - 31) <= (__clz(v85) + 4 * v83 - 27)))
      {
        if (v87 >= v219)
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dedicatedDictSearch_6_5 = v83;
          goto LABEL_196;
        }

        v87 = (v20 + 2);
        v112 = (v20 + 2 - v10 - v16);
        v113 = v217 + v112 - v214;
        if (v112 >= v215)
        {
          v113 = v10 + v112;
        }

        if (v112 - v215 <= 0xFFFFFFFC && *v113 == *v87)
        {
          if (v112 >= v215)
          {
            v114 = v8;
          }

          else
          {
            v114 = v213;
          }

          v115 = ZSTD_count_2segments((v20 + 6), (v113 + 4), v8, v114, v211);
          if (v115 > 0xFFFFFFFFFFFFFFFBLL)
          {
            v15 = v218;
          }

          else
          {
            v15 = v218;
            if ((__clz(v85) + 4 * v83 - 30) < 4 * (v115 + 4))
            {
              v86 = (v20 + 2);
              v85 = 1;
              v83 = v115 + 4;
            }
          }
        }

        *v220 = 999999999;
        if (v13 == 6)
        {
          if (v15 == 6)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v13 == 5)
        {
          if (v15 == 6)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v216, v20 + 2, v8, v220);
          }

          else if (v15 == 5)
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v216, v20 + 2, v8, v220);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v216, v20 + 2, v8, v220);
          }
        }

        else if (v15 == 6)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v216, v20 + 2, v8, v220);
        }

        else if (v15 == 5)
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v216, v20 + 2, v8, v220);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_5 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v216, v20 + 2, v8, v220);
        }

        LODWORD(v11) = v215;
        if (BestMatch_dedicatedDictSearch_6_5 < 4 || (v88 = *v220, (__clz(v220[0]) + 4 * BestMatch_dedicatedDictSearch_6_5 - 31) <= (__clz(v85) + 4 * v83 - 24)))
        {
          v87 = v86;
          v88 = v85;
          BestMatch_dedicatedDictSearch_6_5 = v83;
          v15 = v218;
          goto LABEL_196;
        }

        v15 = v218;
      }

      v20 = v87;
      v83 = BestMatch_dedicatedDictSearch_6_5;
      v85 = v88;
      v86 = v87;
      if (v87 >= v219)
      {
        goto LABEL_196;
      }
    }
  }

LABEL_327:
  *a3 = v16;
  a3[1] = v17;
  return v8 - v5;
}

unint64_t ZSTD_compressBlock_btlazy2(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = *a3;
  v13 = a3[1];
  v108 = v8 + v9;
  if (a4 == v8 + v9)
  {
    v14 = a4 + 1;
  }

  else
  {
    v14 = a4;
  }

  v15 = v14 - v8;
  v16 = 1 << *(a1 + 256);
  if (v15 - v9 > v16 && *(a1 + 40) == 0)
  {
    LODWORD(v9) = v15 - v16;
  }

  v18 = v15 - v9;
  if (v13 <= v15 - v9)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  if (v12 <= v18)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 300) = 0;
  v115 = &a4[a5 - 8];
  if (v14 < v115)
  {
    v21 = a1;
    v104 = v15 - v9;
    v105 = v13;
    v106 = v12;
    v107 = a3;
    v22 = &a4[a5];
    v23 = v7 - 7;
    v110 = v7 - 1;
    v111 = v7 - 3;
    v109 = (v7 - 32);
    v114 = &a4[a5];
    v113 = v11;
    while (1)
    {
      v25 = 0;
      if (!v20 || *&v14[-v20 + 1] != *(v14 + 1))
      {
        goto LABEL_45;
      }

      v26 = v14 + 5;
      v27 = &v14[-v20 + 5];
      if (v23 <= (v14 + 5))
      {
        break;
      }

      if (*v27 == *v26)
      {
        v28 = v14 + 13;
        v27 = &v14[-v20 + 13];
        while (1)
        {
          v29 = v28;
          if (v28 >= v23)
          {
            goto LABEL_33;
          }

          v31 = *v27;
          v27 += 8;
          v30 = v31;
          v28 += 8;
          if (v31 != *v29)
          {
            v29 = (v29 + (__clz(__rbit64(*v29 ^ v30)) >> 3));
            goto LABEL_42;
          }
        }
      }

      v32 = __clz(__rbit64(*v26 ^ *v27)) >> 3;
LABEL_44:
      v25 = v32 + 4;
LABEL_45:
      v116 = 999999999;
      if (v11 == 6)
      {
        BestMatch_noDict_6 = ZSTD_BtFindBestMatch_noDict_6(v21, v14, v22, &v116);
      }

      else if (v11 == 5)
      {
        BestMatch_noDict_6 = ZSTD_BtFindBestMatch_noDict_5(v21, v14, v22, &v116);
      }

      else
      {
        BestMatch_noDict_6 = ZSTD_BtFindBestMatch_noDict_4(v21, v14, v22, &v116);
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v34 = v25;
      }

      else
      {
        v34 = BestMatch_noDict_6;
      }

      if (v34 < 4)
      {
        v24 = v14 - v5;
        v14 += ((v14 - v5) >> 8) + 1;
        *(v21 + 300) = v24 > 0x7FF;
        v22 = v114;
        v11 = v113;
        goto LABEL_23;
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v35 = 1;
      }

      else
      {
        v35 = v116;
      }

      if (BestMatch_noDict_6 <= v25)
      {
        v36 = v14 + 1;
      }

      else
      {
        v36 = v14;
      }

      v37 = v36;
      v38 = v35;
      BestMatch_noDict_5 = v34;
      v22 = v114;
      v11 = v113;
      if (v14 < v115)
      {
        do
        {
          v37 = v14 + 1;
          if (!v35 || !v20 || *v37 != *&v37[-v20])
          {
            goto LABEL_87;
          }

          v40 = v14 + 5;
          v41 = &v14[-v20 + 5];
          if (v23 <= (v14 + 5))
          {
            v43 = v14 + 5;
          }

          else
          {
            if (*v41 != *v40)
            {
              v46 = __clz(__rbit64(*v40 ^ *v41)) >> 3;
LABEL_85:
              v47 = v46 + 4;
              if (3 * v47 > (3 * v34 + __clz(v35) - 30))
              {
                v36 = v14 + 1;
                v35 = 1;
                v34 = v47;
              }

              goto LABEL_87;
            }

            v42 = v14 + 13;
            v41 = &v14[-v20 + 13];
            while (1)
            {
              v43 = v42;
              if (v42 >= v23)
              {
                break;
              }

              v45 = *v41;
              v41 += 8;
              v44 = v45;
              v42 += 8;
              if (v45 != *v43)
              {
                v43 = (v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3));
                goto LABEL_82;
              }
            }
          }

          if (v43 < v111 && *v41 == *v43)
          {
            v41 += 4;
            v43 = (v43 + 4);
          }

          if (v43 < v110 && *v41 == *v43)
          {
            v41 += 2;
            v43 = (v43 + 2);
          }

          if (v43 < v22 && *v41 == *v43)
          {
            v43 = (v43 + 1);
          }

LABEL_82:
          v46 = v43 - v40;
          if (v46 <= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_85;
          }

LABEL_87:
          v116 = 999999999;
          if (v11 == 6)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_6(a1, v14 + 1, v22, &v116);
          }

          else if (v11 == 5)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_5(a1, v14 + 1, v22, &v116);
          }

          else
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_4(a1, v14 + 1, v22, &v116);
          }

          v22 = v114;
          if (BestMatch_noDict_5 >= 4)
          {
            v38 = v116;
            if ((__clz(v116) + 4 * BestMatch_noDict_5 - 31) > (__clz(v35) + 4 * v34 - 27))
            {
              goto LABEL_62;
            }
          }

          v11 = v113;
          if (v37 >= v115)
          {
            v37 = v36;
            v38 = v35;
            BestMatch_noDict_5 = v34;
            break;
          }

          v37 = v14 + 2;
          if (v35 && v20 && *v37 == *&v37[-v20])
          {
            v48 = v14 + 6;
            v49 = &v14[-v20 + 6];
            if (v23 <= (v14 + 6))
            {
              v51 = v14 + 6;
LABEL_105:
              if (v51 < v111 && *v49 == *v51)
              {
                ++v51;
                v49 += 4;
              }

              if (v51 < v110 && *v49 == *v51)
              {
                v51 = (v51 + 2);
                v49 += 2;
              }

              if (v51 < v114 && *v49 == *v51)
              {
                v51 = (v51 + 1);
              }

LABEL_114:
              v54 = v51 - v48;
              if (v54 > 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (*v49 == *v48)
              {
                v50 = v14 + 14;
                v49 = &v14[-v20 + 14];
                while (1)
                {
                  v51 = v50;
                  if (v50 >= v23)
                  {
                    goto LABEL_105;
                  }

                  v53 = *v49;
                  v49 += 8;
                  v52 = v53;
                  v50 += 8;
                  if (v53 != *v51)
                  {
                    v51 = (v51 + (__clz(__rbit64(*v51 ^ v52)) >> 3));
                    goto LABEL_114;
                  }
                }
              }

              v54 = __clz(__rbit64(*v48 ^ *v49)) >> 3;
            }

            v55 = v54 + 4;
            if ((__clz(v35) + 4 * v34 - 30) < 4 * v55)
            {
              v36 = v14 + 2;
              v35 = 1;
              v34 = v55;
            }
          }

LABEL_119:
          v116 = 999999999;
          if (v113 == 6)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_6(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          else if (v113 == 5)
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_5(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          else
          {
            BestMatch_noDict_5 = ZSTD_BtFindBestMatch_noDict_4(a1, v14 + 2, v114, &v116);
            if (BestMatch_noDict_5 < 4)
            {
              goto LABEL_128;
            }
          }

          v38 = v116;
          if ((__clz(v116) + 4 * BestMatch_noDict_5 - 31) <= (__clz(v35) + 4 * v34 - 24))
          {
LABEL_128:
            v37 = v36;
            v38 = v35;
            BestMatch_noDict_5 = v34;
            v22 = v114;
            v11 = v113;
            break;
          }

          v22 = v114;
LABEL_62:
          v11 = v113;
          v14 = v37;
          v34 = BestMatch_noDict_5;
          v35 = v38;
          v36 = v37;
        }

        while (v37 < v115);
      }

      if (v38 <= 3)
      {
        v21 = a1;
        v56 = v109;
      }

      else
      {
        v56 = v109;
        if (v37 <= v5 || &v37[-v38 + 3] <= v108)
        {
          v58 = v37;
          v21 = a1;
        }

        else
        {
          v57 = 2 - v38;
          v58 = v37;
          v21 = a1;
          while (1)
          {
            v59 = *--v58;
            if (v59 != v37[v57])
            {
              break;
            }

            ++BestMatch_noDict_5;
            if (v58 > v5)
            {
              v60 = &v37[v57];
              v37 = v58;
              if (v60 > v108)
              {
                continue;
              }
            }

            goto LABEL_141;
          }

          v58 = v37;
        }

LABEL_141:
        v19 = v20;
        v20 = (v38 - 3);
        v37 = v58;
      }

      v61 = v37 - v5;
      v62 = *(a2 + 24);
      if (v37 > v56)
      {
        if (v5 <= v56)
        {
          v63 = (v62 + v56 - v5);
          *v62 = *v5;
          if (v56 - v5 >= 17)
          {
            v64 = v62 + 1;
            v65 = (v5 + 32);
            do
            {
              *v64 = *(v65 - 1);
              v66 = *v65;
              v65 += 2;
              v64[1] = v66;
              v64 += 2;
            }

            while (v64 < v63);
          }

          v5 = v56;
          v62 = v63;
        }

        if (v5 >= v37)
        {
          goto LABEL_171;
        }

        v67 = v37 - v5;
        if ((v37 - v5) < 8)
        {
          v75 = v62;
          goto LABEL_170;
        }

        if ((v62 - v5) < 0x20)
        {
          v75 = v62;
          goto LABEL_170;
        }

        if (v67 >= 0x20)
        {
          v68 = v67 & 0xFFFFFFFFFFFFFFE0;
          v76 = (v5 + 16);
          v77 = v62 + 1;
          v78 = v67 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v79 = *v76;
            *(v77 - 1) = *(v76 - 1);
            *v77 = v79;
            v76 += 2;
            v77 += 2;
            v78 -= 32;
          }

          while (v78);
          if (v67 == v68)
          {
            goto LABEL_171;
          }

          if ((v67 & 0x18) == 0)
          {
            v5 += v68;
            v75 = v62 + v68;
            do
            {
LABEL_170:
              v85 = *v5++;
              *v75++ = v85;
            }

            while (v5 != v37);
            goto LABEL_171;
          }
        }

        else
        {
          v68 = 0;
        }

        v80 = v67 & 0xFFFFFFFFFFFFFFF8;
        v75 = v62 + (v67 & 0xFFFFFFFFFFFFFFF8);
        v81 = v68 - (v67 & 0xFFFFFFFFFFFFFFF8);
        v82 = &v5[v68];
        v83 = (v62 + v68);
        do
        {
          v84 = *v82;
          v82 += 8;
          *v83++ = v84;
          v81 += 8;
        }

        while (v81);
        if (v67 != v80)
        {
          v5 += v80;
          goto LABEL_170;
        }

LABEL_171:
        *(a2 + 24) += v61;
        v74 = *(a2 + 8);
        if (v61 >= 0x10000)
        {
          v86 = (v74 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v86;
        }

        goto LABEL_173;
      }

      *v62 = *v5;
      v69 = *(a2 + 24);
      if (v61 > 0x10)
      {
        *(v69 + 16) = *(v5 + 1);
        if (v61 >= 33)
        {
          v70 = v69 + v61;
          v71 = (v69 + 32);
          v72 = (v5 + 48);
          do
          {
            *v71 = *(v72 - 1);
            v73 = *v72;
            v72 += 2;
            v71[1] = v73;
            v71 += 2;
          }

          while (v71 < v70);
        }

        goto LABEL_171;
      }

      *(a2 + 24) = v69 + v61;
      v74 = *(a2 + 8);
LABEL_173:
      *(v74 + 4) = v61;
      *v74 = v38;
      if (BestMatch_noDict_5 - 3 >= 0x10000)
      {
        v87 = (v74 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v87;
      }

      *(v74 + 6) = BestMatch_noDict_5 - 3;
      v88 = v74 + 8;
      *(a2 + 8) = v74 + 8;
      if (*(v21 + 300))
      {
        *(v21 + 300) = 0;
      }

      v5 = &v37[BestMatch_noDict_5];
      if (!v19 || v5 > v115)
      {
LABEL_207:
        v14 = v5;
        goto LABEL_23;
      }

      v89 = v20;
      v90 = v19;
      while (1)
      {
        v20 = v90;
        v90 = v89;
        if (*v5 != *&v5[-v20])
        {
          v19 = v20;
          v20 = v89;
          goto LABEL_207;
        }

        v91 = v5 + 4;
        v92 = &v5[-v20 + 4];
        if (v23 <= (v5 + 4))
        {
          v95 = v5 + 4;
        }

        else
        {
          v93 = *v92;
          if (v93 != *v91)
          {
            v98 = __clz(__rbit64(*v91 ^ v93)) >> 3;
            if (v5 <= v56)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          }

          v94 = v5 + 12;
          v92 = &v5[-v20 + 12];
          while (1)
          {
            v95 = v94;
            if (v94 >= v23)
            {
              break;
            }

            v97 = *v92;
            v92 += 8;
            v96 = v97;
            ++v94;
            if (v97 != *v95)
            {
              v95 = (v95 + (__clz(__rbit64(*v95 ^ v96)) >> 3));
              goto LABEL_197;
            }
          }
        }

        if (v95 < v111 && *v92 == *v95)
        {
          v92 += 4;
          v95 = (v95 + 4);
        }

        if (v95 < v110 && *v92 == *v95)
        {
          v92 += 2;
          v95 = (v95 + 2);
        }

        if (v95 < v22 && *v92 == *v95)
        {
          v95 = (v95 + 1);
        }

LABEL_197:
        v98 = v95 - v91;
        if (v5 <= v56)
        {
LABEL_198:
          **(a2 + 24) = *v5;
          v88 = *(a2 + 8);
        }

LABEL_199:
        *(v88 + 4) = 0;
        *v88 = 1;
        if (v98 + 1 >= 0x10000)
        {
          v99 = (v88 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v99;
        }

        *(v88 + 6) = v98 + 1;
        v88 += 8;
        *(a2 + 8) = v88;
        v5 += v98 + 4;
        if (!v90)
        {
          break;
        }

        v89 = v20;
        v19 = v90;
        v14 = v5;
        if (v5 > v115)
        {
          goto LABEL_23;
        }
      }

      v19 = v90;
      v14 = v5;
LABEL_23:
      if (v14 >= v115)
      {
        v7 = v22;
        a3 = v107;
        v13 = v105;
        v12 = v106;
        v18 = v104;
        goto LABEL_210;
      }
    }

    v29 = v14 + 5;
LABEL_33:
    if (v29 < v111 && *v27 == *v29)
    {
      v27 += 4;
      v29 = (v29 + 4);
    }

    if (v29 < v110 && *v27 == *v29)
    {
      v27 += 2;
      v29 = (v29 + 2);
    }

    if (v29 < v22 && *v27 == *v29)
    {
      v29 = (v29 + 1);
    }

LABEL_42:
    v32 = v29 - v26;
    goto LABEL_44;
  }

LABEL_210:
  if (v12 <= v18)
  {
    v100 = 0;
  }

  else
  {
    v100 = v12;
  }

  if (v13 <= v18)
  {
    v101 = 0;
  }

  else
  {
    v101 = v13;
  }

  if (v20)
  {
    v100 = v20;
    v102 = v12 > v18;
  }

  else
  {
    v102 = 0;
  }

  if (v102)
  {
    v101 = v12;
  }

  if (v19)
  {
    v101 = v19;
  }

  *a3 = v100;
  a3[1] = v101;
  return v7 - v5;
}

unint64_t ZSTD_BtFindBestMatch_noDict_4(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 32 - *(a1 + 264);
    do
    {
      v12 = (-1640531535 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 0);
}

unint64_t ZSTD_BtFindBestMatch_noDict_5(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBB000000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 0);
}

unint64_t ZSTD_BtFindBestMatch_noDict_6(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBF9B0000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 0);
}

unint64_t ZSTD_DUBT_findBestMatch(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4, int a5, int a6)
{
  v6 = *(a1 + 112);
  v7 = *(a1 + 264);
  if (a5 == 5)
  {
    v8 = a2;
    v9 = *a2;
    v10 = -1157627904;
    goto LABEL_5;
  }

  if (a5 == 6)
  {
    v8 = a2;
    v9 = *a2;
    v10 = -1080360960;
LABEL_5:
    v11 = (v9 * (v10 | 0xCF1BBCDC00000000)) >> -v7;
    goto LABEL_7;
  }

  v8 = a2;
  v11 = (-1640531535 * *a2) >> -v7;
LABEL_7:
  v12 = *(a1 + 8);
  v13 = v8 - v12;
  v14 = 1 << *(a1 + 256);
  if (v8 - v12 - *(a1 + 28) > v14 && *(a1 + 40) == 0)
  {
    v16 = v8 - v12 - v14;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  v17 = *(a1 + 128);
  v137 = ~(-1 << (*(a1 + 260) - 1));
  v18 = v13 + (-1 << (*(a1 + 260) - 1)) + 1;
  if (v13 < v137)
  {
    v18 = 0;
  }

  v122 = v16;
  v120 = v8 - v12;
  v121 = v18;
  if (v18 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  v20 = 1 << *(a1 + 268);
  v21 = *(v6 + 4 * v11);
  v128 = a1;
  v129 = *(a1 + 128);
  v132 = *(a1 + 8);
  v131 = a6;
  if (v21 <= v19)
  {
    goto LABEL_88;
  }

  v22 = 0;
  v23 = 1 << *(a1 + 268);
  do
  {
    v24 = v21;
    v25 = (v17 + 8 * (v21 & v137));
    v26 = v25[1];
    v27 = v26 == 1 && v23 >= 2;
    if (!v27)
    {
      break;
    }

    v25[1] = v22;
    --v23;
    v21 = *v25;
    v22 = v24;
  }

  while (v21 > v19);
  if (v26 == 1)
  {
    *v25 = 0;
  }

  v24 = v22;
  if (!v22)
  {
LABEL_88:
    v28 = *(a1 + 16);
    goto LABEL_90;
  }

  v117 = v11;
  v118 = v6;
  v126 = v20;
  v124 = v17 + 4;
  v28 = *(a1 + 16);
  do
  {
    v30 = v24;
    v31 = *(v124 + 8 * (v24 & v137));
    v32 = -1 << (*(a1 + 260) - 1);
    v33 = *(a1 + 24);
    v34 = *(a1 + 28);
    if (v33 <= v24)
    {
      v35 = v12;
    }

    else
    {
      v35 = v28;
    }

    v139 = (v28 + v33);
    if (v33 <= v24)
    {
      v36 = a3;
    }

    else
    {
      v36 = v28 + v33;
    }

    v37 = (v17 + 8 * (v24 & ~v32));
    v29 = v37 + 1;
    v38 = *v37;
    v158[0] = 0;
    v39 = 1 << *(a1 + 256);
    if (v30 - v34 > v39)
    {
      v34 = v30 - v39;
    }

    v133 = v31;
    v134 = v23;
    if (v23 && v38 > v34)
    {
      v40 = 0;
      v41 = 0;
      v42 = ~v32;
      v43 = v36 - 7;
      v44 = v36 - 3;
      v45 = v36 - 1;
      v46 = v35 + v30;
      v148 = v34;
      v130 = v46;
      while (1)
      {
        if (v40 >= v41)
        {
          v47 = v41;
        }

        else
        {
          v47 = v40;
        }

        v48 = v12;
        v151 = v40;
        v154 = v41;
        if (a6 != 1)
        {
          goto LABEL_57;
        }

        v49 = v47 + v38;
        if (v33 > v30 || v49 >= v33)
        {
          break;
        }

        v141 = v28 + v38;
        v144 = v29;
        v50 = (v46 + v47);
        v146 = v37;
        v51 = v19;
        v52 = v28;
        v53 = v30;
        v54 = v33;
        v55 = ZSTD_count_2segments(v50, (v141 + v47), v36, v139, (v12 + v33));
        v33 = v54;
        v29 = v144;
        v37 = v146;
        v30 = v53;
        v45 = v36 - 1;
        v44 = v36 - 3;
        v19 = v51;
        v28 = v52;
        v17 = v129;
        v46 = v130;
        a6 = v131;
        v12 = v132;
        v56 = v55 + v47;
        v43 = v36 - 7;
        v57 = v141;
        if (v56 + v38 >= v33)
        {
          v57 = v132 + v38;
        }

LABEL_77:
        if (v46 + v56 == v36)
        {
          goto LABEL_32;
        }

        v67 = (v17 + 8 * (v38 & v42));
        if (*(v57 + v56) >= *(v46 + v56))
        {
          *v29 = v38;
          if (v38 <= v19)
          {
            v29 = v158;
            goto LABEL_32;
          }

          v29 = (v17 + 8 * (v38 & v42));
          v41 = v56;
          v40 = v151;
          if (!--v23)
          {
            goto LABEL_32;
          }
        }

        else
        {
          *v37 = v38;
          if (v38 <= v19)
          {
            v37 = v158;
            goto LABEL_32;
          }

          v37 = ++v67;
          v40 = v56;
          v41 = v154;
          if (!--v23)
          {
            goto LABEL_32;
          }
        }

        v38 = *v67;
        if (*v67 <= v148)
        {
          goto LABEL_32;
        }
      }

      if (v49 >= v33)
      {
        v48 = v12;
      }

      else
      {
        v48 = v28;
      }

LABEL_57:
      v57 = v48 + v38;
      v58 = (v46 + v47);
      v59 = (v57 + v47);
      if (v43 <= v46 + v47)
      {
        v63 = (v46 + v47);
        if (v58 >= v44)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v60 = *v59;
        if (v60 != *v58)
        {
          v66 = __clz(__rbit64(*v58 ^ v60)) >> 3;
          goto LABEL_76;
        }

        v61 = v48 + v38 + 8;
        v62 = v46;
        while (1)
        {
          v63 = (v62 + v47 + 8);
          if (v63 >= v43)
          {
            break;
          }

          v64 = *(v61 + v47);
          v65 = *v63;
          v61 += 8;
          v62 += 8;
          if (v64 != v65)
          {
            v63 = (v62 + v47 + (__clz(__rbit64(v65 ^ v64)) >> 3));
            goto LABEL_74;
          }
        }

        v59 = (v61 + v47);
        if (v63 >= v44)
        {
LABEL_66:
          if (v63 >= v45)
          {
            if (v63 >= v36)
            {
LABEL_74:
              v66 = v63 - v58;
LABEL_76:
              v56 = v66 + v47;
              goto LABEL_77;
            }
          }

          else
          {
            if (*v59 == *v63)
            {
              ++v59;
              ++v63;
            }

            if (v63 >= v36)
            {
              goto LABEL_74;
            }
          }

          if (*v59 == *v63)
          {
            v63 = (v63 + 1);
          }

          goto LABEL_74;
        }
      }

      if (*v59 == *v63)
      {
        v59 += 2;
        v63 += 2;
      }

      goto LABEL_66;
    }

LABEL_32:
    *v29 = 0;
    *v37 = 0;
    v24 = v133;
    v23 = v134 + 1;
    a1 = v128;
  }

  while (v133);
  v20 = v126;
  v11 = v117;
  v6 = v118;
LABEL_90:
  v68 = *(a1 + 24);
  v69 = (v17 + 8 * (v137 & v120));
  v70 = v69 + 1;
  v71 = (v120 + 9);
  v157 = 0;
  v72 = *(v6 + 4 * v11);
  *(v6 + 4 * v11) = v120;
  if (v72 <= v122)
  {
    v73 = 0;
    v77 = a2;
    goto LABEL_137;
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = a3 - 7;
  v142 = v12 + 8;
  v77 = a2;
  while (2)
  {
    v127 = v20;
    if (v75 >= v74)
    {
      v78 = v74;
    }

    else
    {
      v78 = v75;
    }

    v79 = v72;
    v80 = &v77[v78];
    if (a6 != 1 || v78 + v72 >= v68)
    {
      v89 = v12 + v72;
      v90 = (v89 + v78);
      if (v76 <= v80)
      {
        v93 = &v77[v78];
      }

      else
      {
        if (*v90 != *v80)
        {
          v96 = __clz(__rbit64(*v80 ^ *v90)) >> 3;
          goto LABEL_122;
        }

        v91 = v142 + v72;
        v92 = a2;
        while (1)
        {
          v93 = v92 + v78 + 8;
          if (v93 >= v76)
          {
            break;
          }

          v94 = *(v91 + v78);
          v95 = *v93;
          v91 += 8;
          ++v92;
          if (v94 != v95)
          {
            v93 = v92 + v78 + (__clz(__rbit64(v95 ^ v94)) >> 3);
            goto LABEL_121;
          }
        }

        v90 = (v91 + v78);
      }

      if (v93 < a3 - 3 && *v90 == *v93)
      {
        v90 = (v90 + 4);
        v93 += 4;
      }

      if (v93 < a3 - 1 && *v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 < a3 && *v90 == *v93)
      {
        ++v93;
      }

LABEL_121:
      v96 = v93 - v80;
LABEL_122:
      v88 = v96 + v78;
      v77 = a2;
      if (v88 <= v73)
      {
        goto LABEL_102;
      }

      break;
    }

    v149 = v72;
    v81 = v28 + v72;
    v155 = v69;
    v82 = v73;
    v152 = v74;
    v83 = v71;
    v84 = v28;
    v85 = v75;
    v86 = v68;
    v87 = ZSTD_count_2segments(v80, (v28 + v79 + v78), a3, (v28 + v68), (v12 + v68));
    v68 = v86;
    v75 = v85;
    v73 = v82;
    v28 = v84;
    v71 = v83;
    v74 = v152;
    v69 = v155;
    v17 = v129;
    v12 = v132;
    v88 = v87 + v78;
    if (v87 + v78 + v79 >= v68)
    {
      v89 = v132 + v79;
    }

    else
    {
      v89 = v81;
    }

    v72 = v149;
    v77 = a2;
    v20 = v127;
    if (v88 <= v82)
    {
LABEL_102:
      a6 = v131;
LABEL_129:
      v97 = (v17 + 8 * (v72 & v137));
      if (*(v89 + v88) >= v77[v88])
      {
        *v70 = v72;
        if (v72 <= v121)
        {
          v70 = &v157;
          goto LABEL_137;
        }

        v74 = v88;
        v70 = (v17 + 8 * (v72 & v137));
        if (!--v20)
        {
          goto LABEL_137;
        }
      }

      else
      {
        *v69 = v72;
        if (v72 <= v121)
        {
          v69 = &v157;
          goto LABEL_137;
        }

        v69 = v97 + 1;
        v75 = v88;
        ++v97;
        if (!--v20)
        {
          goto LABEL_137;
        }
      }

      v72 = *v97;
      if (*v97 <= v122)
      {
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  if (v88 <= v71 - v72)
  {
    v71 = v71;
  }

  else
  {
    v71 = v72 + v88;
  }

  a6 = v131;
  if ((__clz(*a4) - __clz(v120 - v72 + 1)) < 4 * (v88 - v73))
  {
    *a4 = v120 - v72 + 3;
    v73 = v88;
  }

  if (&v77[v88] != a3)
  {
    goto LABEL_129;
  }

  if (v131 == 2)
  {
    v20 = 0;
  }

LABEL_137:
  *v70 = 0;
  *v69 = 0;
  if (a6 == 2 && v20)
  {
    v98 = *(v128 + 248);
    v99 = *(v98 + 264);
    if (a5 == 5)
    {
      v100 = *v77;
      v101 = -1157627904;
LABEL_143:
      v102 = (v100 * (v101 | 0xCF1BBCDC00000000)) >> -v99;
    }

    else
    {
      if (a5 == 6)
      {
        v100 = *v77;
        v101 = -1080360960;
        goto LABEL_143;
      }

      v102 = (-1640531535 * *v77) >> -v99;
    }

    v153 = *v98;
    v156 = *(v98 + 8);
    v103 = *v98 - v156;
    v104 = *(v98 + 28);
    v150 = ~(-1 << (*(v98 + 260) - 1));
    if (v103 - v104 <= v150)
    {
      v105 = *(v98 + 28);
    }

    else
    {
      v105 = v103 + (-1 << (*(v98 + 260) - 1)) + 1;
    }

    v147 = v105;
    v106 = *(*(v98 + 112) + 4 * v102);
    if (v106 > v104)
    {
      v107 = 0;
      v108 = 0;
      v138 = *(v98 + 128);
      v145 = *(v128 + 24);
      v143 = v103;
      v135 = (*(v128 + 28) - v103);
      v140 = v12 + v135;
      v109 = v20 - 1;
      do
      {
        if (v108 >= v107)
        {
          v110 = v107;
        }

        else
        {
          v110 = v108;
        }

        v111 = ZSTD_count_2segments(&v77[v110], (v156 + v106 + v110), a3, v153, (v12 + v145));
        v112 = v111 + v110;
        if (v111 + v110 + v106 >= v143)
        {
          v113 = v140 + v106;
        }

        else
        {
          v113 = v156 + v106;
        }

        if (v112 <= v73)
        {
          v77 = a2;
          v12 = v132;
        }

        else
        {
          v114 = v120 - (v135 + v106);
          if ((__clz(*a4 + 1) - __clz(v114 + 1)) < 4 * (v112 - v73))
          {
            *a4 = (v114 + 3);
            v73 = v111 + v110;
          }

          v77 = a2;
          v12 = v132;
          if (&a2[v112] == a3)
          {
            break;
          }
        }

        v115 = (v138 + 8 * (v106 & v150));
        if (*(v113 + v112) >= v77[v112])
        {
          if (v106 <= v147)
          {
            break;
          }
        }

        else
        {
          if (v106 <= v147)
          {
            break;
          }

          ++v115;
          v108 = v111 + v110;
          v112 = v107;
        }

        v27 = v109-- != 0;
        if (!v27)
        {
          break;
        }

        v106 = *v115;
        v107 = v112;
      }

      while (*v115 > v104);
    }
  }

  *(v128 + 44) = v71 - 8;
  return v73;
}

unint64_t ZSTD_compressBlock_btlazy2_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v10 = 4;
  }

  v138 = v10;
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 248);
  v15 = *v13;
  v14 = *(v13 + 8);
  v132 = (v8 + v9);
  v125 = (v14 + *(v13 + 24));
  if (v5 - (v8 + v9) - v125 + *v13)
  {
    v16 = v5;
  }

  else
  {
    v16 = v5 + 1;
  }

  *(a1 + 300) = 0;
  v139 = v7;
  if (v16 < v7)
  {
    v18 = a1;
    v124 = a3;
    v127 = v6 - 1;
    v128 = v6 - 3;
    v129 = v9 + v8 + 8;
    v130 = v6 - 7;
    v135 = v9 + v14 - v15;
    v126 = v14 - v135;
    v136 = v14;
    v137 = v9;
    v131 = v15;
    while (1)
    {
      v20 = v16 + 1;
      v21 = (v16 - v8 - v12 + 1);
      v22 = v14 + v21 - v135;
      if (v21 >= v9)
      {
        v22 = v8 + v21;
      }

      v133 = v11;
      if ((v21 - v9) <= 0xFFFFFFFC && *v22 == *v20)
      {
        if (v21 >= v9)
        {
          v23 = v6;
        }

        else
        {
          v23 = v15;
        }

        v24 = ZSTD_count_2segments(v16 + 5, (v22 + 4), v6, v23, v132) + 4;
      }

      else
      {
        v24 = 0;
      }

      v140 = 999999999;
      if (v138 == 6)
      {
        BestMatch_dictMatchState_6 = ZSTD_BtFindBestMatch_dictMatchState_6(v18, v16, v6, &v140);
      }

      else if (v138 == 5)
      {
        BestMatch_dictMatchState_6 = ZSTD_BtFindBestMatch_dictMatchState_5(v18, v16, v6, &v140);
      }

      else
      {
        BestMatch_dictMatchState_6 = ZSTD_BtFindBestMatch_dictMatchState_4(v18, v16, v6, &v140);
      }

      if (BestMatch_dictMatchState_6 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = BestMatch_dictMatchState_6;
      }

      LODWORD(v9) = v137;
      if (v26 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        *(v18 + 300) = v19 > 0x7FF;
        v14 = v136;
        v15 = v131;
LABEL_11:
        v11 = v133;
        goto LABEL_12;
      }

      if (BestMatch_dictMatchState_6 <= v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = v140;
      }

      if (BestMatch_dictMatchState_6 > v24)
      {
        v20 = v16;
      }

      v28 = v20;
      v29 = v27;
      v30 = v26;
      if (v16 >= v139)
      {
LABEL_37:
        if (v29 <= 3)
        {
          goto LABEL_131;
        }

        goto LABEL_38;
      }

      while (1)
      {
        v28 = v16 + 1;
        v42 = (v16 + 1 - v8 - v12);
        if (v42 >= v9)
        {
          v43 = (v8 + v42);
        }

        else
        {
          v43 = (v136 + v42 - v135);
        }

        if ((v42 - v9) > 0xFFFFFFFC || *v43 != *v28)
        {
          v54 = v138;
          goto LABEL_66;
        }

        if (v42 >= v9)
        {
          v44 = v6;
        }

        else
        {
          v44 = v131;
        }

        v45 = v16 + 5;
        v46 = v43 + 1;
        v47 = &v16[v44 - (v43 + 1) + 5];
        if (v47 >= v6)
        {
          v47 = v6;
        }

        if (v47 - 7 <= v45)
        {
          v48 = (v43 + 1);
          v50 = v16 + 5;
        }

        else
        {
          if (*v46 != *v45)
          {
            v53 = __clz(__rbit64(*v45 ^ *v46)) >> 3;
            goto LABEL_105;
          }

          v48 = (v43 + 3);
          v49 = (v16 + 13);
          while (1)
          {
            v50 = v49;
            if (v49 >= v47 - 7)
            {
              break;
            }

            v52 = *v48;
            v48 += 4;
            v51 = v52;
            v49 += 8;
            if (v52 != *v50)
            {
              v53 = v50 + (__clz(__rbit64(*v50 ^ v51)) >> 3) - v45;
              goto LABEL_105;
            }
          }
        }

        if (v50 < v47 - 3 && *v48 == *v50)
        {
          v48 += 2;
          v50 = (v50 + 4);
        }

        if (v50 < v47 - 1 && *v48 == *v50)
        {
          ++v48;
          v50 = (v50 + 2);
        }

        if (v50 < v47 && *v48 == *v50)
        {
          v50 = (v50 + 1);
        }

        v53 = v50 - v45;
LABEL_105:
        if (v46 + v53 == v44)
        {
          v60 = &v45[v53];
          if (v130 > v60)
          {
            if (*v132 == *v60)
            {
              v61 = 0;
              v62 = &v16[v53];
              while (1)
              {
                v63 = &v62[v61 + 13];
                if (v63 >= v130)
                {
                  break;
                }

                v64 = *(v129 + v61);
                v65 = *v63;
                v61 += 8;
                if (v64 != v65)
                {
                  v66 = &v62[v61 + 5 + (__clz(__rbit64(v65 ^ v64)) >> 3)] - v60;
                  v54 = v138;
                  goto LABEL_127;
                }
              }

              v67 = (v129 + v61);
              v68 = &v16[v53 + 13 + v61];
LABEL_117:
              if (v68 < v128 && *v67 == *v68)
              {
                v67 = (v67 + 4);
                v68 += 4;
              }

              if (v68 < v127 && *v67 == *v68)
              {
                v67 = (v67 + 2);
                v68 += 2;
              }

              if (v68 < v6 && *v67 == *v68)
              {
                ++v68;
              }

              v54 = v138;
              v66 = v68 - v60;
            }

            else
            {
              v66 = __clz(__rbit64(*v60 ^ *v132)) >> 3;
              v54 = v138;
            }

LABEL_127:
            v53 += v66;
            if (v53 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_66;
            }

            goto LABEL_128;
          }

          v67 = v132;
          v68 = v60;
          goto LABEL_117;
        }

        v54 = v138;
        if (v53 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_66;
        }

LABEL_128:
        v69 = v53 + 4;
        if (3 * v69 > (__clz(v27) + 3 * v26 - 30))
        {
          v20 = v16 + 1;
          v27 = 1;
          v26 = v69;
        }

LABEL_66:
        v140 = 999999999;
        if (v54 == 6)
        {
          v30 = ZSTD_BtFindBestMatch_dictMatchState_6(a1, v16 + 1, v6, &v140);
        }

        else
        {
          v30 = v54 == 5 ? ZSTD_BtFindBestMatch_dictMatchState_5(a1, v16 + 1, v6, &v140) : ZSTD_BtFindBestMatch_dictMatchState_4(a1, v16 + 1, v6, &v140);
        }

        LODWORD(v9) = v137;
        if (v30 < 4 || (v29 = v140, (__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 27)))
        {
          if (v28 >= v139)
          {
            break;
          }

          v28 = v16 + 2;
          v55 = (v16 + 2 - v8 - v12);
          v56 = v136 + v55 - v135;
          if (v55 >= v137)
          {
            v56 = v8 + v55;
          }

          if (v55 - v137 <= 0xFFFFFFFC && *v56 == *v28 && (v55 >= v137 ? (v57 = v6) : (v57 = v131), v58 = ZSTD_count_2segments(v16 + 6, (v56 + 4), v6, v57, v132), v58 <= 0xFFFFFFFFFFFFFFFBLL))
          {
            v59 = v138;
            if ((__clz(v27) + 4 * v26 - 30) < 4 * (v58 + 4))
            {
              v20 = v16 + 2;
              v27 = 1;
              v26 = v58 + 4;
            }
          }

          else
          {
            v59 = v138;
          }

          v140 = 999999999;
          if (v59 == 6)
          {
            v30 = ZSTD_BtFindBestMatch_dictMatchState_6(a1, v16 + 2, v6, &v140);
          }

          else
          {
            v30 = v59 == 5 ? ZSTD_BtFindBestMatch_dictMatchState_5(a1, v16 + 2, v6, &v140) : ZSTD_BtFindBestMatch_dictMatchState_4(a1, v16 + 2, v6, &v140);
          }

          LODWORD(v9) = v137;
          if (v30 < 4)
          {
            break;
          }

          v29 = v140;
          if ((__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 24))
          {
            break;
          }
        }

        v16 = v28;
        v26 = v30;
        v27 = v29;
        v20 = v28;
        if (v28 >= v139)
        {
          goto LABEL_37;
        }
      }

      v28 = v20;
      LODWORD(v29) = v27;
      v30 = v26;
      if (v27 <= 3)
      {
LABEL_131:
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v33 = v126;
        v35 = (v6 - 32);
        v39 = v129;
        goto LABEL_135;
      }

LABEL_38:
      v31 = v28 - (v29 + v8) + 3;
      v32 = v132;
      v33 = v126;
      if (v9 <= v31)
      {
        v34 = v8;
      }

      else
      {
        v32 = v125;
        v34 = v126;
      }

      v35 = (v6 - 32);
      if (v28 <= v5 || v34 + v31 <= v32)
      {
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
      }

      else
      {
        v36 = (v34 + v31 - 1);
        v37 = v28 - 1;
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
        while (*v37 == *v36)
        {
          ++v30;
          v40 = (v37 - 1);
          if (v37 > v5)
          {
            --v37;
            if (v36-- > v32)
            {
              continue;
            }
          }

          v28 = (v40 + 1);
          goto LABEL_134;
        }

        v28 = v37 + 1;
      }

LABEL_134:
      v133 = v12;
      v12 = (v29 - 3);
LABEL_135:
      v70 = v28 - v5;
      v71 = *(a2 + 24);
      if (v28 > v35)
      {
        if (v5 <= v35)
        {
          v72 = (v71 + v35 - v5);
          *v71 = *v5;
          if (v35 - v5 >= 17)
          {
            v73 = v71 + 1;
            v74 = (v5 + 32);
            do
            {
              *v73 = *(v74 - 1);
              v75 = *v74;
              v74 += 2;
              v73[1] = v75;
              v73 += 2;
            }

            while (v73 < v72);
          }

          v5 = v35;
          v71 = v72;
        }

        if (v5 >= v28)
        {
          goto LABEL_164;
        }

        v76 = v28 - v5;
        if ((v28 - v5) < 8)
        {
          v84 = v71;
        }

        else if ((v71 - v5) < 0x20)
        {
          v84 = v71;
        }

        else
        {
          if (v76 < 0x20)
          {
            v77 = 0;
LABEL_158:
            v89 = v76 & 0xFFFFFFFFFFFFFFF8;
            v84 = v71 + (v76 & 0xFFFFFFFFFFFFFFF8);
            v90 = v77 - (v76 & 0xFFFFFFFFFFFFFFF8);
            v91 = &v5[v77];
            v92 = (v71 + v77);
            do
            {
              v93 = *v91;
              v91 += 8;
              *v92++ = v93;
              v90 += 8;
            }

            while (v90);
            if (v76 != v89)
            {
              v5 += v89;
              goto LABEL_163;
            }

LABEL_164:
            *(a2 + 24) += v70;
            v83 = *(a2 + 8);
            if (v70 >= 0x10000)
            {
              v95 = (v83 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v95;
            }

            goto LABEL_166;
          }

          v77 = v76 & 0xFFFFFFFFFFFFFFE0;
          v85 = (v5 + 16);
          v86 = v71 + 1;
          v87 = v76 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 2;
            v86 += 2;
            v87 -= 32;
          }

          while (v87);
          if (v76 == v77)
          {
            goto LABEL_164;
          }

          if ((v76 & 0x18) != 0)
          {
            goto LABEL_158;
          }

          v5 += v77;
          v84 = v71 + v77;
        }

        do
        {
LABEL_163:
          v94 = *v5++;
          *v84++ = v94;
        }

        while (v5 != v28);
        goto LABEL_164;
      }

      *v71 = *v5;
      v78 = *(a2 + 24);
      if (v70 > 0x10)
      {
        *(v78 + 16) = *(v5 + 1);
        if (v70 >= 33)
        {
          v79 = v78 + v70;
          v80 = (v78 + 32);
          v81 = (v5 + 48);
          do
          {
            *v80 = *(v81 - 1);
            v82 = *v81;
            v81 += 2;
            v80[1] = v82;
            v80 += 2;
          }

          while (v80 < v79);
        }

        goto LABEL_164;
      }

      *(a2 + 24) = v78 + v70;
      v83 = *(a2 + 8);
LABEL_166:
      *(v83 + 4) = v70;
      *v83 = v29;
      if (v30 - 3 >= 0x10000)
      {
        v96 = (v83 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v96;
      }

      *(v83 + 6) = v30 - 3;
      v97 = v83 + 8;
      *(a2 + 8) = v83 + 8;
      if (*(v18 + 300))
      {
        *(v18 + 300) = 0;
      }

      v5 = &v28[v30];
      if (&v28[v30] > v139)
      {
        v16 = &v28[v30];
        goto LABEL_11;
      }

      v98 = v12;
      v99 = v133;
      while (2)
      {
        v12 = v99;
        v99 = v98;
        v100 = (v5 - v8 - v12);
        if (v100 >= v9)
        {
          v101 = v8;
        }

        else
        {
          v101 = v33;
        }

        if ((v100 - v9) <= 0xFFFFFFFC)
        {
          v102 = v101 + v100;
          if (*(v101 + v100) == *v5)
          {
            if (v100 >= v9)
            {
              v103 = v6;
            }

            else
            {
              v103 = v15;
            }

            v104 = v5 + 4;
            v105 = (v102 + 4);
            v106 = v103 + v5 - v102;
            if (v106 >= v6)
            {
              v106 = v6;
            }

            if (v106 - 7 <= v104)
            {
              v107 = v105;
              v109 = v5 + 4;
              goto LABEL_191;
            }

            if (*v105 == *v104)
            {
              v107 = (v101 + v100 + 12);
              v108 = (v5 + 12);
              while (1)
              {
                v109 = v108;
                if (v108 >= (v106 - 7))
                {
                  break;
                }

                v111 = *v107;
                v107 += 4;
                v110 = v111;
                v108 += 8;
                if (v111 != *v109)
                {
                  v112 = v109 + (__clz(__rbit64(*v109 ^ v110)) >> 3) - v104;
                  goto LABEL_202;
                }
              }

LABEL_191:
              if (v109 < (v106 - 3) && *v107 == *v109)
              {
                v107 += 2;
                v109 = (v109 + 4);
              }

              if (v109 < (v106 - 1) && *v107 == *v109)
              {
                ++v107;
                v109 = (v109 + 2);
              }

              if (v109 < v106 && *v107 == *v109)
              {
                v109 = (v109 + 1);
              }

              v112 = v109 - v104;
            }

            else
            {
              v112 = __clz(__rbit64(*v104 ^ *v105)) >> 3;
            }

LABEL_202:
            if ((v105 + v112) != v103)
            {
              if (v5 <= v35)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            v114 = &v104[v112];
            if (v38 > v114)
            {
              if (*v132 == *v114)
              {
                v115 = 0;
                v116 = &v5[v112];
                while (1)
                {
                  v117 = &v116[v115 + 12];
                  if (v117 >= v38)
                  {
                    break;
                  }

                  v118 = *(v39 + v115);
                  v119 = *v117;
                  v115 += 8;
                  if (v118 != v119)
                  {
                    v120 = &v116[v115 + 4 + (__clz(__rbit64(v119 ^ v118)) >> 3)];
                    goto LABEL_225;
                  }
                }

                v121 = (v39 + v115);
                v120 = &v5[v112 + 12 + v115];
LABEL_216:
                if (v120 < v128 && *v121 == *v120)
                {
                  v121 = (v121 + 4);
                  v120 += 4;
                }

                if (v120 < v127 && *v121 == *v120)
                {
                  v121 = (v121 + 2);
                  v120 += 2;
                }

                if (v120 < v6 && *v121 == *v120)
                {
                  ++v120;
                }

LABEL_225:
                v122 = v120 - v114;
              }

              else
              {
                v122 = __clz(__rbit64(*v114 ^ *v132)) >> 3;
              }

              v112 += v122;
              if (v5 <= v35)
              {
LABEL_204:
                **(a2 + 24) = *v5;
                v97 = *(a2 + 8);
              }

LABEL_205:
              *(v97 + 4) = 0;
              *v97 = 1;
              if (v112 + 1 >= 0x10000)
              {
                v113 = (v97 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v113;
              }

              *(v97 + 6) = v112 + 1;
              v97 += 8;
              v5 += v112 + 4;
              *(a2 + 8) = v97;
              v98 = v12;
              v11 = v99;
              v16 = v5;
              if (v5 > v139)
              {
                goto LABEL_12;
              }

              continue;
            }

            v121 = v132;
            v120 = v114;
            goto LABEL_216;
          }
        }

        break;
      }

      v11 = v12;
      v12 = v98;
      v16 = v5;
LABEL_12:
      if (v16 >= v139)
      {
        a3 = v124;
        break;
      }
    }
  }

  *a3 = v12;
  a3[1] = v11;
  return v6 - v5;
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_4(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 32 - *(a1 + 264);
    do
    {
      v12 = (-1640531535 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 2);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_5(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBB000000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 2);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_6(uint64_t a1, char *a2, unint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBF9B0000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 2);
}

unint64_t ZSTD_compressBlock_greedy_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v14 = *a3;
  v15 = a3[1];
  *(a1 + 300) = 0;
  v110 = (v9 + v10);
  if ((v9 + v10) == v5)
  {
    v16 = v5 + 1;
  }

  else
  {
    v16 = v5;
  }

  if (v16 < v7)
  {
    v104 = v13;
    v19 = v8 + v10;
    v102 = (v8 + v11);
    v20 = 1 << v12;
    v21 = v10 - 1;
    v111 = v10 + v9 + 8;
    v108 = v8;
    v109 = v7;
    v106 = v8 + v10;
    v107 = v10;
    v105 = v10 - 1;
    v103 = v6 - 7;
    while (1)
    {
      v23 = v16 - v9 + 1;
      v24 = v23 - *(a1 + 28) > v20 && *(a1 + 40) == 0;
      v25 = v24 ? v23 - v20 : *(a1 + 28);
      v26 = (v23 - v14);
      v27 = v26 >= v10 ? v9 : v8;
      if ((v21 - v26) >= 3 && v14 <= v23 - v25 && (v28 = v16 + 1, *(v16 + 1) == *(v27 + v26)))
      {
        v29 = (v26 >= v10 ? v6 : v19);
        v30 = ZSTD_count_2segments(v16 + 5, (v27 + v26 + 4), v6, v29, v110);
        v31 = v111;
        v32 = (v6 - 32);
        v21 = v105;
        LODWORD(v10) = v107;
        v8 = v108;
        v33 = v109;
        BestMatch_extDict_6 = v30 + 4;
        v35 = 1;
      }

      else
      {
        v112 = 999999999;
        if (v104 == 6)
        {
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_6(a1, v16, v6, &v112);
        }

        else if (v104 == 5)
        {
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_5(a1, v16, v6, &v112);
        }

        else
        {
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_4(a1, v16, v6, &v112);
        }

        v8 = v108;
        v33 = v109;
        LODWORD(v10) = v107;
        v21 = v105;
        v32 = (v6 - 32);
        v31 = v111;
        if (BestMatch_extDict_6 <= 3)
        {
          v22 = v16 - v5;
          v16 += ((v16 - v5) >> 8) + 1;
          *(a1 + 300) = v22 > 0x8FF;
          v19 = v106;
          goto LABEL_11;
        }

        v35 = v112;
        if (v112 >= 4)
        {
          v36 = v16 - (v112 + v9) + 3;
          if (v107 <= v36)
          {
            v37 = v9;
          }

          else
          {
            v37 = v108;
          }

          v38 = v110;
          if (v107 > v36)
          {
            v38 = v102;
          }

          if (v16 > v5)
          {
            v39 = v36;
            if (v37 + v36 > v38)
            {
              v40 = v16 - 1;
              v41 = (v37 + v39 - 1);
              while (*v40 == *v41)
              {
                ++BestMatch_extDict_6;
                v42 = v40 - 1;
                if (v40 > v5)
                {
                  --v40;
                  if (v41-- > v38)
                  {
                    continue;
                  }
                }

                v16 = v42 + 1;
                goto LABEL_48;
              }

              v16 = v40 + 1;
            }
          }

LABEL_48:
          v15 = v14;
          v14 = (v112 - 3);
        }

        v28 = v16;
      }

      v44 = v28 - v5;
      v45 = *(a2 + 24);
      if (v28 > v32)
      {
        break;
      }

      *v45 = *v5;
      v52 = *(a2 + 24);
      v19 = v106;
      if (v44 > 0x10)
      {
        *(v52 + 16) = *(v5 + 1);
        if (v44 >= 33)
        {
          v53 = v52 + v44;
          v54 = (v52 + 32);
          v55 = (v5 + 48);
          do
          {
            *v54 = *(v55 - 1);
            v56 = *v55;
            v55 += 2;
            v54[1] = v56;
            v54 += 2;
          }

          while (v54 < v53);
        }

        goto LABEL_79;
      }

      *(a2 + 24) = v52 + v44;
      v57 = *(a2 + 8);
LABEL_81:
      *(v57 + 4) = v44;
      *v57 = v35;
      if (BestMatch_extDict_6 - 3 >= 0x10000)
      {
        v70 = (v57 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v70;
      }

      *(v57 + 6) = BestMatch_extDict_6 - 3;
      v71 = v57 + 8;
      *(a2 + 8) = v57 + 8;
      if (*(a1 + 300))
      {
        *(a1 + 300) = 0;
      }

      v5 = &v28[BestMatch_extDict_6];
      if (&v28[BestMatch_extDict_6] > v33)
      {
        v16 = &v28[BestMatch_extDict_6];
        goto LABEL_11;
      }

      v72 = v14;
      v73 = v15;
      while (1)
      {
        v14 = v73;
        v73 = v72;
        v74 = v5 - v9;
        v75 = *(a1 + 28);
        if (v5 - v9 - v75 > v20 && *(a1 + 40) == 0)
        {
          v75 = v5 - v9 - v20;
        }

        v77 = (v74 - v14);
        v78 = v77 >= v10 ? v9 : v8;
        if ((v21 - v77) < 3)
        {
          break;
        }

        if (v14 > v74 - v75)
        {
          break;
        }

        v79 = v78 + v77;
        if (*v5 != *(v78 + v77))
        {
          break;
        }

        if (v77 >= v10)
        {
          v80 = v6;
        }

        else
        {
          v80 = v19;
        }

        v81 = (v5 + 4);
        v82 = (v79 + 4);
        v83 = v80 + v5 - v79;
        if (v83 >= v6)
        {
          v83 = v6;
        }

        if (v83 - 7 <= v81)
        {
          v84 = v82;
          v86 = v5 + 4;
        }

        else
        {
          if (*v82 != *v81)
          {
            v89 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
            goto LABEL_124;
          }

          v84 = (v78 + v77 + 12);
          v85 = (v5 + 12);
          while (1)
          {
            v86 = v85;
            if (v85 >= (v83 - 7))
            {
              break;
            }

            v88 = *v84;
            v84 += 4;
            v87 = v88;
            v85 += 8;
            if (v88 != *v86)
            {
              v89 = v86 + (__clz(__rbit64(*v86 ^ v87)) >> 3) - v81;
              v31 = v111;
              goto LABEL_124;
            }
          }

          v31 = v111;
        }

        if (v86 < (v83 - 3) && *v84 == *v86)
        {
          v84 += 2;
          v86 = (v86 + 4);
        }

        if (v86 < (v83 - 1) && *v84 == *v86)
        {
          ++v84;
          v86 = (v86 + 2);
        }

        if (v86 < v83 && *v84 == *v86)
        {
          v86 = (v86 + 1);
        }

        v89 = v86 - v81;
LABEL_124:
        if ((v82 + v89) == v80)
        {
          v91 = &v81[v89];
          if (v103 > v91)
          {
            if (*v110 == *v91)
            {
              v92 = 0;
              v93 = &v5[v89];
              while (1)
              {
                v94 = &v93[v92 + 12];
                if (v94 >= v103)
                {
                  break;
                }

                v95 = *(v31 + v92);
                v96 = *v94;
                v92 += 8;
                if (v95 != v96)
                {
                  v97 = &v93[v92 + 4 + (__clz(__rbit64(v96 ^ v95)) >> 3)];
                  goto LABEL_147;
                }
              }

              v98 = (v31 + v92);
              v97 = &v5[v89 + 12 + v92];
LABEL_138:
              if (v97 < v6 - 3 && *v98 == *v97)
              {
                v98 = (v98 + 4);
                v97 += 4;
              }

              if (v97 < v6 - 1 && *v98 == *v97)
              {
                v98 = (v98 + 2);
                v97 += 2;
              }

              if (v97 < v6 && *v98 == *v97)
              {
                ++v97;
              }

LABEL_147:
              v99 = v97 - v91;
            }

            else
            {
              v99 = __clz(__rbit64(*v91 ^ *v110)) >> 3;
            }

            v89 += v99;
            if (v5 > v32)
            {
              goto LABEL_127;
            }

LABEL_126:
            **(a2 + 24) = *v5;
            v71 = *(a2 + 8);
            goto LABEL_127;
          }

          v98 = v110;
          v97 = v91;
          goto LABEL_138;
        }

        if (v5 <= v32)
        {
          goto LABEL_126;
        }

LABEL_127:
        *(v71 + 4) = 0;
        *v71 = 1;
        if (v89 + 1 >= 0x10000)
        {
          v90 = (v71 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v90;
        }

        *(v71 + 6) = v89 + 1;
        v71 += 8;
        v5 += v89 + 4;
        *(a2 + 8) = v71;
        v72 = v14;
        v15 = v73;
        v16 = v5;
        if (v5 > v33)
        {
          goto LABEL_11;
        }
      }

      v15 = v14;
      v14 = v72;
      v16 = v5;
LABEL_11:
      if (v16 >= v33)
      {
        goto LABEL_151;
      }
    }

    v19 = v106;
    if (v5 <= v32)
    {
      v46 = (v45 + v32 - v5);
      *v45 = *v5;
      if (v32 - v5 >= 17)
      {
        v47 = v45 + 1;
        v48 = (v5 + 32);
        do
        {
          *v47 = *(v48 - 1);
          v49 = *v48;
          v48 += 2;
          v47[1] = v49;
          v47 += 2;
        }

        while (v47 < v46);
      }

      v5 = v32;
      v45 = v46;
    }

    if (v5 < v28)
    {
      v50 = v28 - v5;
      if ((v28 - v5) < 8)
      {
        v58 = v45;
        goto LABEL_78;
      }

      if ((v45 - v5) < 0x20)
      {
        v58 = v45;
        goto LABEL_78;
      }

      if (v50 >= 0x20)
      {
        v51 = v50 & 0xFFFFFFFFFFFFFFE0;
        v59 = (v5 + 16);
        v60 = v45 + 1;
        v61 = v50 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v62 = *v59;
          *(v60 - 1) = *(v59 - 1);
          *v60 = v62;
          v59 += 2;
          v60 += 2;
          v61 -= 32;
        }

        while (v61);
        if (v50 == v51)
        {
          goto LABEL_79;
        }

        if ((v50 & 0x18) == 0)
        {
          v5 += v51;
          v58 = v45 + v51;
          do
          {
LABEL_78:
            v68 = *v5++;
            *v58++ = v68;
          }

          while (v5 != v28);
          goto LABEL_79;
        }
      }

      else
      {
        v51 = 0;
      }

      v63 = v50 & 0xFFFFFFFFFFFFFFF8;
      v58 = v45 + (v50 & 0xFFFFFFFFFFFFFFF8);
      v64 = v51 - (v50 & 0xFFFFFFFFFFFFFFF8);
      v65 = &v5[v51];
      v66 = (v45 + v51);
      do
      {
        v67 = *v65++;
        *v66++ = v67;
        v64 += 8;
      }

      while (v64);
      if (v50 != v63)
      {
        v5 += v63;
        goto LABEL_78;
      }
    }

LABEL_79:
    *(a2 + 24) += v44;
    v57 = *(a2 + 8);
    if (v44 >= 0x10000)
    {
      v69 = (v57 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v69;
    }

    goto LABEL_81;
  }

LABEL_151:
  *a3 = v14;
  a3[1] = v15;
  return v6 - v5;
}

unint64_t ZSTD_HcFindBestMatch_extDict_4(uint64_t a1, char *a2, unint64_t a3, void *a4)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 256);
  v14 = *(a1 + 24);
  v13 = *(a1 + 28);
  v15 = *(a1 + 44);
  if (a2 - v10 - v13 > v12 && *(a1 + 40) == 0)
  {
    v17 = a2 - v10 - v12;
  }

  else
  {
    v17 = v13;
  }

  if (v11 >= v8)
  {
    v18 = v11 - v8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 268);
  v20 = *(a1 + 112);
  v21 = ~(-1 << v7);
  v22 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v15 < v11)
    {
      v23 = (-1640531535 * *(v10 + v15)) >> v22;
      *(v6 + 4 * (v15 & v21)) = *(v20 + 4 * v23);
      *(v20 + 4 * v23) = v15;
    }
  }

  else if (v15 < v11)
  {
    do
    {
      v24 = (-1640531535 * *(v10 + v15)) >> v22;
      *(v6 + 4 * (v15 & v21)) = *(v20 + 4 * v24);
      *(v20 + 4 * v24) = v15++;
    }

    while (v11 != v15);
  }

  *(a1 + 44) = v11;
  v25 = *a2;
  v26 = *(v20 + 4 * ((-1640531535 * v25) >> v22));
  if (v26 < v17)
  {
    return 3;
  }

  v28 = 1 << v19;
  v29 = v8 - 1;
  v30 = a3 - 7;
  v47 = a3 - 1;
  v48 = a3 - 3;
  v50 = v11 + 3;
  v46 = v10 + 8;
  v31 = 3;
  v53 = v14;
  v54 = v10;
  v52 = v18;
  v51 = v6;
  v49 = a3 - 7;
  while (1)
  {
    v32 = v26;
    if (v26 < v14)
    {
      if (*(v9 + v26) != v25)
      {
        goto LABEL_44;
      }

      v33 = (v9 + v14);
      v34 = (v10 + v14);
      v35 = v9;
      v36 = v17;
      v37 = v25;
      v38 = v31;
      v39 = ZSTD_count_2segments(a2 + 4, (v9 + v26 + 4), a3, v33, v34);
      v31 = v38;
      v30 = v49;
      v25 = v37;
      v17 = v36;
      v6 = v51;
      v18 = v52;
      v9 = v35;
      v14 = v53;
      v10 = v54;
      result = v39 + 4;
      if (result <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v40 = (v10 + v26);
    if (*(v40 + v31 - 3) != *&a2[v31 - 3])
    {
      goto LABEL_44;
    }

    if (v30 <= a2)
    {
      v43 = a2;
      goto LABEL_31;
    }

    v41 = *v40;
    if (v41 == *a2)
    {
      v42 = (a2 + 8);
      v40 = (v46 + v26);
      while (1)
      {
        v43 = v42;
        if (v42 >= v30)
        {
          break;
        }

        v45 = *v40;
        v40 += 4;
        v44 = v45;
        v42 += 2;
        if (v45 != *v43)
        {
          result = v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3) - a2;
          if (result > v31)
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

LABEL_31:
      if (v43 < v48 && *v40 == *v43)
      {
        v40 += 2;
        v43 = (v43 + 4);
      }

      if (v43 < v47 && *v40 == *v43)
      {
        ++v40;
        v43 = (v43 + 2);
      }

      if (v43 < a3 && *v40 == *v43)
      {
        v43 = (v43 + 1);
      }

      result = v43 - a2;
      if (v43 - a2 <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = __clz(__rbit64(*a2 ^ v41)) >> 3;
    if (result <= v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a4 = v50 - v32;
    v31 = result;
    if (&a2[result] == a3)
    {
      return result;
    }

LABEL_44:
    if (v32 <= v18)
    {
      return v31;
    }

    if (!--v28)
    {
      return v31;
    }

    v26 = *(v6 + 4 * (v32 & v29));
    result = v31;
    if (v26 < v17)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_5(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = a2 - v9;
  v12 = 1 << *(a1 + 256);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v9 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v9 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 268);
  v19 = *(a1 + 112);
  v20 = ~(-1 << v7);
  v21 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v14 < v11)
    {
      v22 = (0xCF1BBCDCBB000000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v22);
      *(v19 + 4 * v22) = v14;
    }
  }

  else if (v14 < v11)
  {
    do
    {
      v23 = (0xCF1BBCDCBB000000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v23);
      *(v19 + 4 * v23) = v14++;
    }

    while (v11 != v14);
  }

  v25 = v5 - 3;
  v24 = *v5;
  *(a1 + 44) = v11;
  v26 = *(v19 + 4 * ((0xCF1BBCDCBB000000 * v24) >> v21));
  if (v26 < v16)
  {
    return 3;
  }

  v28 = 1 << v18;
  v29 = v8 - 1;
  v30 = a3 - 7;
  v48 = a3 - 1;
  v49 = a3 - 3;
  v51 = v11 + 3;
  v52 = v17;
  v46 = v5 + 1;
  v47 = v9 + 8;
  v31 = 3;
  v53 = v9;
  v54 = v5;
  v50 = v6;
  while (1)
  {
    v32 = v26;
    if (v26 < v13)
    {
      if (*(v10 + v26) != *v5)
      {
        goto LABEL_44;
      }

      v33 = v5 + 4;
      v34 = (v9 + v13);
      v35 = v13;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = ZSTD_count_2segments(v33, (v10 + v26 + 4), a3, (v10 + v13), v34);
      v31 = v38;
      v30 = v37;
      v29 = v36;
      v13 = v35;
      v6 = v50;
      v17 = v52;
      v9 = v53;
      v5 = v54;
      result = v39 + 4;
      if (result <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v40 = (v9 + v26);
    if (*(v40 + v31 - 3) != *&v25[v31])
    {
      goto LABEL_44;
    }

    if (v30 <= v5)
    {
      v43 = v5;
      goto LABEL_31;
    }

    v41 = *v40;
    if (v41 == *v5)
    {
      v42 = v46;
      v40 = (v47 + v26);
      while (1)
      {
        v43 = v42;
        if (v42 >= v30)
        {
          break;
        }

        v45 = *v40;
        v40 += 4;
        v44 = v45;
        ++v42;
        if (v45 != *v43)
        {
          result = v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3) - v5;
          if (result > v31)
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

LABEL_31:
      if (v43 < v49 && *v40 == *v43)
      {
        v40 += 2;
        v43 = (v43 + 4);
      }

      if (v43 < v48 && *v40 == *v43)
      {
        ++v40;
        v43 = (v43 + 2);
      }

      if (v43 < a3 && *v40 == *v43)
      {
        v43 = (v43 + 1);
      }

      result = v43 - v5;
      if (v43 - v5 <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = __clz(__rbit64(*v5 ^ v41)) >> 3;
    if (result <= v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a4 = v51 - v32;
    v31 = result;
    if ((v5 + result) == a3)
    {
      return result;
    }

LABEL_44:
    if (v32 <= v17)
    {
      return v31;
    }

    if (!--v28)
    {
      return v31;
    }

    v26 = *(v6 + 4 * (v32 & v29));
    result = v31;
    if (v26 < v16)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_6(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = a2 - v9;
  v12 = 1 << *(a1 + 256);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v9 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v9 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 268);
  v19 = *(a1 + 112);
  v20 = ~(-1 << v7);
  v21 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v14 < v11)
    {
      v22 = (0xCF1BBCDCBF9B0000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v22);
      *(v19 + 4 * v22) = v14;
    }
  }

  else if (v14 < v11)
  {
    do
    {
      v23 = (0xCF1BBCDCBF9B0000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v23);
      *(v19 + 4 * v23) = v14++;
    }

    while (v11 != v14);
  }

  v25 = v5 - 3;
  v24 = *v5;
  *(a1 + 44) = v11;
  v26 = *(v19 + 4 * ((0xCF1BBCDCBF9B0000 * v24) >> v21));
  if (v26 < v16)
  {
    return 3;
  }

  v28 = 1 << v18;
  v29 = v8 - 1;
  v30 = a3 - 7;
  v48 = a3 - 1;
  v49 = a3 - 3;
  v51 = v11 + 3;
  v52 = v17;
  v46 = v5 + 1;
  v47 = v9 + 8;
  v31 = 3;
  v53 = v9;
  v54 = v5;
  v50 = v6;
  while (1)
  {
    v32 = v26;
    if (v26 < v13)
    {
      if (*(v10 + v26) != *v5)
      {
        goto LABEL_44;
      }

      v33 = v5 + 4;
      v34 = (v9 + v13);
      v35 = v13;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = ZSTD_count_2segments(v33, (v10 + v26 + 4), a3, (v10 + v13), v34);
      v31 = v38;
      v30 = v37;
      v29 = v36;
      v13 = v35;
      v6 = v50;
      v17 = v52;
      v9 = v53;
      v5 = v54;
      result = v39 + 4;
      if (result <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v40 = (v9 + v26);
    if (*(v40 + v31 - 3) != *&v25[v31])
    {
      goto LABEL_44;
    }

    if (v30 <= v5)
    {
      v43 = v5;
      goto LABEL_31;
    }

    v41 = *v40;
    if (v41 == *v5)
    {
      v42 = v46;
      v40 = (v47 + v26);
      while (1)
      {
        v43 = v42;
        if (v42 >= v30)
        {
          break;
        }

        v45 = *v40;
        v40 += 4;
        v44 = v45;
        ++v42;
        if (v45 != *v43)
        {
          result = v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3) - v5;
          if (result > v31)
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

LABEL_31:
      if (v43 < v49 && *v40 == *v43)
      {
        v40 += 2;
        v43 = (v43 + 4);
      }

      if (v43 < v48 && *v40 == *v43)
      {
        ++v40;
        v43 = (v43 + 2);
      }

      if (v43 < a3 && *v40 == *v43)
      {
        v43 = (v43 + 1);
      }

      result = v43 - v5;
      if (v43 - v5 <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = __clz(__rbit64(*v5 ^ v41)) >> 3;
    if (result <= v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a4 = v51 - v32;
    v31 = result;
    if ((v5 + result) == a3)
    {
      return result;
    }

LABEL_44:
    if (v32 <= v17)
    {
      return v31;
    }

    if (!--v28)
    {
      return v31;
    }

    v26 = *(v6 + 4 * (v32 & v29));
    result = v31;
    if (v26 < v16)
    {
      return result;
    }
  }
}

unint64_t ZSTD_compressBlock_greedy_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = *(a1 + 28);
  v14 = *(a1 + 256);
  v15 = *(a1 + 272);
  if (v15 >= 6)
  {
    v15 = 6;
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 268);
  v182 = v17;
  if (v17 >= 6)
  {
    v17 = 6;
  }

  if (v17 <= 4)
  {
    v17 = 4;
  }

  v190 = v17;
  v18 = *a3;
  v19 = a3[1];
  *(a1 + 300) = 0;
  v189 = (v11 + v13);
  if ((v11 + v13) == a4)
  {
    v20 = (a4 + 1);
  }

  else
  {
    v20 = a4;
  }

  v21 = *(a1 + 44);
  v22 = v9 - (v11 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  if (v9 >= v11 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 112);
    v27 = *(a1 + 56);
    v28 = *(a1 + 52);
    v29 = *(a1 + 96);
    v30 = 56 - v28;
    v31 = 24 - v28;
    v32 = a1 + 64;
    if (v182 > 4)
    {
      if (v182 == 5)
      {
        do
        {
          if (v16 == 6)
          {
            v43 = ((0xCF1BBCDCBF9B0000 * *(v11 + v21)) ^ v29) >> v30;
            v44 = v190;
          }

          else
          {
            v44 = v190;
            if (v16 == 5)
            {
              v43 = ((0xCF1BBCDCBB000000 * *(v11 + v21)) ^ v29) >> v30;
            }

            else
            {
              LODWORD(v43) = ((-1640531535 * *(v11 + v21)) ^ v29) >> v31;
            }
          }

          v45 = v43 >> 8 << v44;
          _X5 = v26 + 4 * v45;
          __asm
          {
            PRFM            #0, [X5]
            PRFM            #0, [X5,#0x40]
          }

          _X4 = v27 + v45;
          __asm { PRFM            #0, [X4] }

          *(v32 + 4 * (v21++ & 7)) = v43;
        }

        while (v25 != v21);
      }

      else if (v16 == 6)
      {
        do
        {
          v59 = ((0xCF1BBCDCBF9B0000 * *(v11 + v21)) ^ v29) >> v30;
          v60 = v59 >> 8 << v190;
          _X2 = v26 + 4 * v60;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v27 + v60;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v32 + 4 * (v21++ & 7)) = v59;
        }

        while (v25 != v21);
      }

      else if (v16 == 5)
      {
        do
        {
          v51 = ((0xCF1BBCDCBB000000 * *(v11 + v21)) ^ v29) >> v30;
          v52 = v51 >> 8 << v190;
          _X2 = v26 + 4 * v52;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v27 + v52;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v32 + 4 * (v21++ & 7)) = v51;
        }

        while (v25 != v21);
      }

      else
      {
        do
        {
          v67 = ((-1640531535 * *(v11 + v21)) ^ v29) >> v31;
          v68 = v67 >> 8 << v190;
          _X2 = v26 + 4 * v68;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v27 + v68;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v32 + 4 * (v21++ & 7)) = v67;
        }

        while (v25 != v21);
      }
    }

    else
    {
      do
      {
        if (v16 == 6)
        {
          v33 = ((0xCF1BBCDCBF9B0000 * *(v11 + v21)) ^ v29) >> v30;
          v34 = v190;
        }

        else
        {
          v34 = v190;
          if (v16 == 5)
          {
            v33 = ((0xCF1BBCDCBB000000 * *(v11 + v21)) ^ v29) >> v30;
          }

          else
          {
            LODWORD(v33) = ((-1640531535 * *(v11 + v21)) ^ v29) >> v31;
          }
        }

        v35 = v33 >> 8 << v34;
        _X5 = v26 + 4 * v35;
        __asm { PRFM            #0, [X5] }

        _X4 = v27 + v35;
        __asm { PRFM            #0, [X4] }

        *(v32 + 4 * (v21++ & 7)) = v33;
      }

      while (v25 != v21);
    }
  }

  if (v20 < v9)
  {
    v75 = (v10 + v13);
    v181 = (v10 + v12);
    v76 = 1 << v14;
    v192 = v8 - 7;
    v191 = v13 + v11 + 8;
    v185 = v10;
    v186 = v9;
    v77 = v13 - 1;
    v183 = (v10 + v13);
    v184 = v13;
    v78 = v190;
    v187 = v13 - 1;
    v188 = 1 << v14;
    do
    {
      v80 = v20 - v11 + 1;
      if (v80 - *(a1 + 28) > v76 && *(a1 + 40) == 0)
      {
        v82 = v80 - v76;
      }

      else
      {
        v82 = *(a1 + 28);
      }

      v83 = (v80 - v18);
      if (v83 >= v13)
      {
        v84 = v11;
      }

      else
      {
        v84 = v10;
      }

      if ((v77 - v83) >= 3 && v18 <= v80 - v82)
      {
        v85 = (v20 + 1);
        if (*(v20 + 1) == *(v84 + v83))
        {
          if (v83 >= v13)
          {
            v86 = v8;
          }

          else
          {
            v86 = v75;
          }

          v87 = ZSTD_count_2segments((v20 + 5), (v84 + v83 + 4), v8, v86, v189);
          v75 = v183;
          LODWORD(v13) = v184;
          v10 = v185;
          v88 = v186;
          BestMatch_extDict_6_6 = v87 + 4;
          v90 = 1;
          v91 = (v8 - 32);
          goto LABEL_98;
        }
      }

      v193 = 999999999;
      if (v16 == 6)
      {
        if (v78 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v20, v8, &v193);
          goto LABEL_76;
        }

        if (v78 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v20, v8, &v193);
LABEL_76:
          v76 = v188;
          goto LABEL_81;
        }

        v76 = v188;
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v20, v8, &v193);
      }

      else if (v16 == 5)
      {
        if (v78 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v20, v8, &v193);
          goto LABEL_76;
        }

        v76 = v188;
        if (v78 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v20, v8, &v193);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v20, v8, &v193);
        }
      }

      else
      {
        v76 = v188;
        if (v78 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v20, v8, &v193);
        }

        else if (v78 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v20, v8, &v193);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v20, v8, &v193);
        }
      }

LABEL_81:
      v10 = v185;
      v88 = v186;
      v75 = v183;
      LODWORD(v13) = v184;
      v77 = v187;
      if (BestMatch_extDict_6_6 <= 3)
      {
        v79 = v20 - v5;
        v20 += ((v20 - v5) >> 8) + 1;
        *(a1 + 300) = v79 > 0x8FF;
        v78 = v190;
        continue;
      }

      v90 = v193;
      if (v193 < 4)
      {
        v85 = v20;
        v91 = (v8 - 32);
      }

      else
      {
        v92 = v20 - v11 - v193 + 3;
        if (v184 <= v92)
        {
          v93 = v11;
        }

        else
        {
          v93 = v185;
        }

        v94 = v189;
        if (v184 > v92)
        {
          v94 = v181;
        }

        v91 = (v8 - 32);
        if (v20 > v5)
        {
          v95 = v92;
          if (v93 + v92 > v94)
          {
            v96 = (v20 - 1);
            v97 = (v93 + v95 - 1);
            while (*v96 == *v97)
            {
              ++BestMatch_extDict_6_6;
              v98 = v96 - 1;
              if (v96 > v5)
              {
                --v96;
                if (v97-- > v94)
                {
                  continue;
                }
              }

              v20 = (v98 + 1);
              goto LABEL_97;
            }

            v20 = (v96 + 1);
          }
        }

LABEL_97:
        v19 = v18;
        v18 = (v193 - 3);
        v85 = v20;
      }

LABEL_98:
      v100 = v85 - v5;
      v101 = *(a2 + 24);
      if (v85 > v91)
      {
        v78 = v190;
        if (v5 <= v91)
        {
          v102 = (v101 + v91 - v5);
          *v101 = *v5;
          if (v91 - v5 >= 17)
          {
            v103 = v101 + 1;
            v104 = (v5 + 32);
            do
            {
              *v103 = *(v104 - 1);
              v105 = *v104;
              v104 += 2;
              v103[1] = v105;
              v103 += 2;
            }

            while (v103 < v102);
          }

          v5 = v91;
          v101 = v102;
        }

        if (v5 >= v85)
        {
          goto LABEL_127;
        }

        v106 = v85 - v5;
        if ((v85 - v5) < 8)
        {
          v115 = v101;
        }

        else if ((v101 - v5) < 0x20)
        {
          v115 = v101;
        }

        else
        {
          if (v106 < 0x20)
          {
            v107 = 0;
LABEL_121:
            v120 = v106 & 0xFFFFFFFFFFFFFFF8;
            v115 = v101 + (v106 & 0xFFFFFFFFFFFFFFF8);
            v121 = v107 - (v106 & 0xFFFFFFFFFFFFFFF8);
            v122 = &v5[v107];
            v123 = (v101 + v107);
            do
            {
              v124 = *v122++;
              *v123++ = v124;
              v121 += 8;
            }

            while (v121);
            if (v106 != v120)
            {
              v5 += v120;
              goto LABEL_126;
            }

LABEL_127:
            *(a2 + 24) += v100;
            v113 = *(a2 + 8);
            v114 = v182;
            if (v100 >= 0x10000)
            {
              v126 = (v113 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v126;
            }

            goto LABEL_129;
          }

          v107 = v106 & 0xFFFFFFFFFFFFFFE0;
          v116 = (v5 + 16);
          v117 = v101 + 1;
          v118 = v106 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v119 = *v116;
            *(v117 - 1) = *(v116 - 1);
            *v117 = v119;
            v116 += 2;
            v117 += 2;
            v118 -= 32;
          }

          while (v118);
          if (v106 == v107)
          {
            goto LABEL_127;
          }

          if ((v106 & 0x18) != 0)
          {
            goto LABEL_121;
          }

          v5 += v107;
          v115 = v101 + v107;
        }

        do
        {
LABEL_126:
          v125 = *v5++;
          *v115++ = v125;
        }

        while (v5 != v85);
        goto LABEL_127;
      }

      *v101 = *v5;
      v108 = *(a2 + 24);
      v78 = v190;
      if (v100 > 0x10)
      {
        *(v108 + 16) = *(v5 + 1);
        if (v100 >= 33)
        {
          v109 = v108 + v100;
          v110 = (v108 + 32);
          v111 = (v5 + 48);
          do
          {
            *v110 = *(v111 - 1);
            v112 = *v111;
            v111 += 2;
            v110[1] = v112;
            v110 += 2;
          }

          while (v110 < v109);
        }

        goto LABEL_127;
      }

      *(a2 + 24) = v108 + v100;
      v113 = *(a2 + 8);
      v114 = v182;
LABEL_129:
      *(v113 + 4) = v100;
      *v113 = v90;
      if (BestMatch_extDict_6_6 - 3 >= 0x10000)
      {
        v127 = (v113 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v127;
      }

      *(v113 + 6) = BestMatch_extDict_6_6 - 3;
      v128 = v113 + 8;
      *(a2 + 8) = v113 + 8;
      if (*(a1 + 300))
      {
        v129 = *(a1 + 44);
        v130 = v88 - (v11 + v129);
        if ((v130 + 1) < 8)
        {
          v131 = v130 + 1;
        }

        else
        {
          v131 = 8;
        }

        if (v88 >= v11 + v129)
        {
          v132 = v131;
        }

        else
        {
          v132 = 0;
        }

        v133 = (v132 + v129);
        if (v129 < v133)
        {
          v134 = *(a1 + 112);
          v135 = *(a1 + 56);
          v136 = *(a1 + 52);
          v137 = *(a1 + 96);
          v138 = 56 - v136;
          v139 = 24 - v136;
          do
          {
            if (v16 == 5)
            {
              v142 = 0xCF1BBCDCBB000000 * *(v11 + v129);
            }

            else
            {
              if (v16 != 6)
              {
                LODWORD(v143) = ((-1640531535 * *(v11 + v129)) ^ v137) >> v139;
                goto LABEL_148;
              }

              v142 = 0xCF1BBCDCBF9B0000 * *(v11 + v129);
            }

            v143 = (v142 ^ v137) >> v138;
LABEL_148:
            v144 = v143 >> 8 << v78;
            _X1 = v134 + 4 * v144;
            __asm { PRFM            #0, [X1] }

            if (v114 <= 4)
            {
              _X17 = v135 + v144;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v135 + v144;
              __asm { PRFM            #0, [X17] }

              if (v114 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(a1 + 64 + 4 * (v129++ & 7)) = v143;
          }

          while (v133 != v129);
        }

        *(a1 + 300) = 0;
      }

      v5 = &v85[BestMatch_extDict_6_6];
      if (&v85[BestMatch_extDict_6_6] > v88)
      {
        v20 = &v85[BestMatch_extDict_6_6];
        v77 = v187;
        v76 = v188;
        continue;
      }

      v151 = v18;
      v152 = v19;
      v77 = v187;
      v76 = v188;
      while (1)
      {
        v18 = v152;
        v152 = v151;
        v153 = v5 - v11;
        v154 = *(a1 + 28);
        if (v5 - v11 - v154 > v188 && *(a1 + 40) == 0)
        {
          v154 = v5 - v11 - v188;
        }

        v156 = (v153 - v18);
        v157 = v156 >= v184 ? v11 : v10;
        if ((v187 - v156) < 3)
        {
          break;
        }

        if (v18 > v153 - v154)
        {
          break;
        }

        v158 = v157 + v156;
        if (*v5 != *(v157 + v156))
        {
          break;
        }

        if (v156 >= v184)
        {
          v159 = v8;
        }

        else
        {
          v159 = v75;
        }

        v160 = (v5 + 4);
        v161 = (v158 + 4);
        v162 = v159 + v5 - v158;
        if (v162 >= v8)
        {
          v162 = v8;
        }

        if (v162 - 7 <= v160)
        {
          v163 = v161;
          v165 = v5 + 4;
        }

        else
        {
          if (*v161 != *v160)
          {
            v168 = __clz(__rbit64(*v160 ^ *v161)) >> 3;
            goto LABEL_190;
          }

          v163 = (v157 + v156 + 12);
          v164 = (v5 + 12);
          while (1)
          {
            v165 = v164;
            if (v164 >= (v162 - 7))
            {
              break;
            }

            v167 = *v163;
            v163 += 4;
            v166 = v167;
            v164 += 8;
            if (v167 != *v165)
            {
              v168 = v165 + (__clz(__rbit64(*v165 ^ v166)) >> 3) - v160;
              goto LABEL_190;
            }
          }
        }

        if (v165 < (v162 - 3) && *v163 == *v165)
        {
          v163 += 2;
          v165 = (v165 + 4);
        }

        if (v165 < (v162 - 1) && *v163 == *v165)
        {
          ++v163;
          v165 = (v165 + 2);
        }

        if (v165 < v162 && *v163 == *v165)
        {
          v165 = (v165 + 1);
        }

        v168 = v165 - v160;
LABEL_190:
        if ((v161 + v168) == v159)
        {
          v169 = &v160[v168];
          if (v192 > v169)
          {
            if (*v189 == *v169)
            {
              v170 = 0;
              v171 = &v5[v168];
              while (1)
              {
                v172 = &v171[v170 + 12];
                if (v172 >= v192)
                {
                  break;
                }

                v173 = *(v191 + v170);
                v174 = *v172;
                v170 += 8;
                if (v173 != v174)
                {
                  v175 = &v171[v170 + 4 + (__clz(__rbit64(v174 ^ v173)) >> 3)];
                  goto LABEL_209;
                }
              }

              v176 = (v191 + v170);
              v175 = &v5[v168 + 12 + v170];
LABEL_200:
              if (v175 < v8 - 3 && *v176 == *v175)
              {
                v176 = (v176 + 4);
                v175 += 4;
              }

              if (v175 < v8 - 1 && *v176 == *v175)
              {
                v176 = (v176 + 2);
                v175 += 2;
              }

              if (v175 < v8 && *v176 == *v175)
              {
                ++v175;
              }

LABEL_209:
              v177 = v175 - v169;
            }

            else
            {
              v177 = __clz(__rbit64(*v169 ^ *v189)) >> 3;
            }

            v168 += v177;
            goto LABEL_211;
          }

          v176 = v189;
          v175 = v169;
          goto LABEL_200;
        }

LABEL_211:
        if (v5 <= v8 - 32)
        {
          **(a2 + 24) = *v5;
          v128 = *(a2 + 8);
        }

        *(v128 + 4) = 0;
        *v128 = 1;
        if (v168 + 1 >= 0x10000)
        {
          v178 = (v128 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v178;
        }

        *(v128 + 6) = v168 + 1;
        v128 += 8;
        v5 += v168 + 4;
        *(a2 + 8) = v128;
        v151 = v18;
        v19 = v152;
        v20 = v5;
        if (v5 > v88)
        {
          goto LABEL_46;
        }
      }

      v19 = v18;
      v18 = v151;
      v20 = v5;
LABEL_46:
      ;
    }

    while (v20 < v88);
  }

  *a3 = v18;
  a3[1] = v19;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v107 = *(a1 + 8);
  if (*(a1 + 300))
  {
    v17 = ((-1640531535 * *a2) ^ v16) >> (24 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v41 = v19 + 96;
      do
      {
        v42 = ((-1640531535 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (24 - v7);
        v43 = (v42 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v43;
        __asm { PRFM            #0, [X19] }

        _X7 = v6 + v43;
        __asm { PRFM            #0, [X7] }

        v48 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v42;
        v49 = (v48 >> 4) & 0xFFFFFF0;
        v50 = v5 + 4 * v49;
        v51 = (v6 + v49);
        if (((*v51 - 1) & 0xF) != 0)
        {
          v52 = 0;
        }

        else
        {
          v52 = 15;
        }

        v53 = v52 + ((*v51 - 1) & 0xF);
        *v51 = v53;
        v51[v53] = v48;
        *(v50 + 4 * v53) = v19++;
      }

      while (v41 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v107;
    }

    v54 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v55 = a2 + 1 - (v8 + v54);
    if ((v55 + 1) < 8)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = 8;
    }

    if (a2 + 1 >= v8 + v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v54 < v57 + v54)
    {
      v58 = *(a1 + 96);
      v59 = 24 - *(a1 + 52);
      do
      {
        v60 = ((-1640531535 * *(v8 + v54)) ^ v58) >> v59;
        v61 = (v60 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v61;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v61;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v54++ & 7)) = v60;
        --v57;
      }

      while (v57);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 24 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((-1640531535 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v27;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v35 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0xF) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 15;
        }

        v40 = v39 + ((*v38 - 1) & 0xF);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v66 = ((-1640531535 * *(v8 + v25 + 8)) ^ v16) >> (24 - v7);
  v67 = (v66 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v67;
  __asm { PRFM            #0, [X17] }

  _X14 = v6 + v67;
  __asm { PRFM            #0, [X14] }

  v17 = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v66;
LABEL_38:
  *(a1 + 104) += v17;
  v72 = (v17 >> 4) & 0xFFFFFF0;
  v73 = v5 + 4 * v72;
  v74 = (v6 + v72);
  v75 = 4 * v74->i8[0];
  v76 = *v74;
  v77 = 0;
  v78 = __ROR8__(vshrn_n_s16(vceqq_s8(*v74, vdupq_n_s8(v17)), 4uLL), v75) & 0x8888888888888888;
  if (v78)
  {
    v79 = 1 << v15;
    do
    {
      v80 = ((__clz(__rbit64(v78)) + (v75 & 0xFC)) >> 2) & 0xF;
      if (v80)
      {
        v81 = *(v73 + 4 * v80);
        if (v81 < v14)
        {
          break;
        }

        if (v81 >= v12)
        {
          v82 = v8;
        }

        else
        {
          v82 = v9;
        }

        _X3 = v82 + v81;
        __asm { PRFM            #0, [X3] }

        v108[v77++] = v81;
        --v79;
      }

      v78 &= v78 - 1;
    }

    while (v78 && v79);
  }

  if (((v76 - 1) & 0xF) != 0)
  {
    v85 = 0;
  }

  else
  {
    v85 = 15;
  }

  v86 = v85 + ((v76 - 1) & 0xF);
  v74->i8[0] = v86;
  v74->i8[v86] = v17;
  v87 = *(a1 + 44);
  *(a1 + 44) = v87 + 1;
  *(v73 + 4 * v86) = v87;
  if (v77)
  {
    v88 = 0;
    v89 = a3 - 7;
    v103 = a3 - 1;
    v104 = a3 - 3;
    v105 = v10 + 3;
    v102 = v8 + 8;
    v90 = 3;
    while (1)
    {
      v92 = v108[v88];
      if (v92 >= v12)
      {
        v96 = (v8 + v92);
        if (*(v8 + v92 + v90 - 3) != *(a2 - 3 + v90))
        {
          goto LABEL_53;
        }

        if (v89 <= a2)
        {
          v99 = a2;
        }

        else
        {
          v97 = *v96;
          if (v97 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v97)) >> 3;
            if (result <= v90)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v98 = (a2 + 8);
          v96 = (v102 + v92);
          while (1)
          {
            v99 = v98;
            if (v98 >= v89)
            {
              break;
            }

            v101 = *v96;
            v96 += 4;
            v100 = v101;
            ++v98;
            if (v101 != *v99)
            {
              result = v99 + (__clz(__rbit64(*v99 ^ v100)) >> 3) - a2;
              if (result <= v90)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v99 < v104 && *v96 == *v99)
        {
          v96 += 2;
          v99 = (v99 + 4);
        }

        if (v99 < v103 && *v96 == *v99)
        {
          ++v96;
          v99 = (v99 + 2);
        }

        if (v99 < a3 && *v96 == *v99)
        {
          v99 = (v99 + 1);
        }

        result = v99 - a2;
        if (v99 - a2 <= v90)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v92) != *a2)
        {
          goto LABEL_53;
        }

        v93 = (v8 + v12);
        v94 = a3;
        v95 = ZSTD_count_2segments((a2 + 4), (v9 + v92 + 4), a3, (v9 + v12), v93);
        a3 = v94;
        v8 = v107;
        result = v95 + 4;
        if (result <= v90)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v105 - v92;
      v90 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v88;
      result = v90;
      if (v88 == v77)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v112 = *(a1 + 8);
  if (*(a1 + 300))
  {
    v17 = ((-1640531535 * *a2) ^ v16) >> (24 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v42 = v19 + 96;
      do
      {
        v43 = ((-1640531535 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (24 - v7);
        v44 = (v43 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v44;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v44;
        __asm { PRFM            #0, [X7] }

        v50 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v43;
        v51 = (v50 >> 3) & 0x1FFFFFE0;
        v52 = v5 + 4 * v51;
        v53 = (v6 + v51);
        if (((*v53 - 1) & 0x1F) != 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = 31;
        }

        v55 = v54 + ((*v53 - 1) & 0x1F);
        *v53 = v55;
        v53[v55] = v50;
        *(v52 + 4 * v55) = v19++;
      }

      while (v42 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v112;
    }

    v56 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v57 = a2 + 1 - (v8 + v56);
    if ((v57 + 1) < 8)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = 8;
    }

    if (a2 + 1 >= v8 + v56)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56 < v59 + v56)
    {
      v60 = *(a1 + 96);
      v61 = 24 - *(a1 + 52);
      do
      {
        v62 = ((-1640531535 * *(v8 + v56)) ^ v60) >> v61;
        v63 = (v62 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v63;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v63;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v56++ & 7)) = v62;
        --v59;
      }

      while (v59);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 24 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((-1640531535 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v36 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v37 = (v36 >> 3) & 0x1FFFFFE0;
        v38 = v21 + 4 * v37;
        v39 = (v20 + v37);
        if (((*v39 - 1) & 0x1F) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = 31;
        }

        v41 = v40 + ((*v39 - 1) & 0x1F);
        *v39 = v41;
        v39[v41] = v36;
        *(v38 + 4 * v41) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v69 = ((-1640531535 * *(v8 + v25 + 8)) ^ v16) >> (24 - v7);
  v70 = (v69 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v70;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v70;
  __asm { PRFM            #0, [X14] }

  v17 = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v69;
LABEL_38:
  *(a1 + 104) += v17;
  v76 = (v17 >> 3) & 0x1FFFFFE0;
  v77 = v5 + 4 * v76;
  v78 = (v6 + v76);
  v115 = vld2q_s16(v78);
  v79 = *v78;
  v80 = 2 * *v78;
  v81 = vdupq_n_s8(v17);
  v82 = 0;
  v83 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v81, v115.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v81, v115.val[1]), 6uLL), 4uLL), v80) & 0x5555555555555555;
  if (v83)
  {
    v84 = 1 << v15;
    do
    {
      v85 = ((__clz(__rbit64(v83)) + (v80 & 0xFE)) >> 1) & 0x1F;
      if (v85)
      {
        v86 = *(v77 + 4 * v85);
        if (v86 < v14)
        {
          break;
        }

        if (v86 >= v12)
        {
          v87 = v8;
        }

        else
        {
          v87 = v9;
        }

        _X3 = v87 + v86;
        __asm { PRFM            #0, [X3] }

        v113[v82++] = v86;
        --v84;
      }

      v83 &= v83 - 1;
    }

    while (v83 && v84);
  }

  if (((v79 - 1) & 0x1F) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = 31;
  }

  v91 = v90 + ((v79 - 1) & 0x1F);
  *v78 = v91;
  *(v78 + v91) = v17;
  v92 = *(a1 + 44);
  *(a1 + 44) = v92 + 1;
  *(v77 + 4 * v91) = v92;
  if (v82)
  {
    v93 = 0;
    v94 = a3 - 7;
    v108 = a3 - 1;
    v109 = a3 - 3;
    v110 = v10 + 3;
    v107 = v8 + 8;
    v95 = 3;
    while (1)
    {
      v97 = v113[v93];
      if (v97 >= v12)
      {
        v101 = (v8 + v97);
        if (*(v8 + v97 + v95 - 3) != *(a2 - 3 + v95))
        {
          goto LABEL_53;
        }

        if (v94 <= a2)
        {
          v104 = a2;
        }

        else
        {
          v102 = *v101;
          if (v102 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v102)) >> 3;
            if (result <= v95)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v103 = (a2 + 8);
          v101 = (v107 + v97);
          while (1)
          {
            v104 = v103;
            if (v103 >= v94)
            {
              break;
            }

            v106 = *v101;
            v101 += 4;
            v105 = v106;
            ++v103;
            if (v106 != *v104)
            {
              result = v104 + (__clz(__rbit64(*v104 ^ v105)) >> 3) - a2;
              if (result <= v95)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v104 < v109 && *v101 == *v104)
        {
          v101 += 2;
          v104 = (v104 + 4);
        }

        if (v104 < v108 && *v101 == *v104)
        {
          ++v101;
          v104 = (v104 + 2);
        }

        if (v104 < a3 && *v101 == *v104)
        {
          v104 = (v104 + 1);
        }

        result = v104 - a2;
        if (v104 - a2 <= v95)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v97) != *a2)
        {
          goto LABEL_53;
        }

        v98 = (v8 + v12);
        v99 = a3;
        v100 = ZSTD_count_2segments((a2 + 4), (v9 + v97 + 4), a3, (v9 + v12), v98);
        a3 = v99;
        v8 = v112;
        result = v100 + 4;
        if (result <= v95)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v110 - v97;
      v95 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v93;
      result = v95;
      if (v93 == v82)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v116 = *(a1 + 8);
  if (*(a1 + 300))
  {
    v17 = ((-1640531535 * *a2) ^ v16) >> (24 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v43 = v19 + 96;
      do
      {
        v44 = ((-1640531535 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (24 - v7);
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v45;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v45;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x20]
        }

        v52 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v44;
        v53 = (v52 >> 2) & 0x3FFFFFC0;
        v54 = v5 + 4 * v53;
        v55 = (v6 + v53);
        if (((*v55 - 1) & 0x3F) != 0)
        {
          v56 = 0;
        }

        else
        {
          v56 = 63;
        }

        v57 = v56 + ((*v55 - 1) & 0x3F);
        *v55 = v57;
        v55[v57] = v52;
        *(v54 + 4 * v57) = v19++;
      }

      while (v43 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v116;
    }

    v58 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v59 = a2 + 1 - (v8 + v58);
    if ((v59 + 1) < 8)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 8;
    }

    if (a2 + 1 >= v8 + v58)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v58 < v61 + v58)
    {
      v62 = *(a1 + 96);
      v63 = 24 - *(a1 + 52);
      do
      {
        v64 = ((-1640531535 * *(v8 + v58)) ^ v62) >> v63;
        v65 = (v64 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v65;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v65;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        *(v18 + 4 * (v58++ & 7)) = v64;
        --v61;
      }

      while (v61);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 24 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((-1640531535 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v37 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v38 = (v37 >> 2) & 0x3FFFFFC0;
        v39 = v21 + 4 * v38;
        v40 = (v20 + v38);
        if (((*v40 - 1) & 0x3F) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = 63;
        }

        v42 = v41 + ((*v40 - 1) & 0x3F);
        *v40 = v42;
        v40[v42] = v37;
        *(v39 + 4 * v42) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v72 = ((-1640531535 * *(v8 + v25 + 8)) ^ v16) >> (24 - v7);
  v73 = (v72 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v73;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v73;
  __asm
  {
    PRFM            #0, [X14]
    PRFM            #0, [X14,#0x20]
  }

  v17 = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v72;
LABEL_38:
  *(a1 + 104) += v17;
  v80 = (v17 >> 2) & 0x3FFFFFC0;
  v81 = v5 + 4 * v80;
  v82 = (v6 + v80);
  v83 = *v82;
  v119 = vld4q_s8(v82);
  v84 = vdupq_n_s8(v17);
  v119.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v119.val[3], v84), vceqq_s8(v119.val[2], v84), 1uLL), vsriq_n_s8(vceqq_s8(v119.val[1], v84), vceqq_s8(v119.val[0], v84), 1uLL), 2uLL);
  v85 = vshrn_n_s16(vsriq_n_s8(v119.val[0], v119.val[0], 4uLL), 4uLL);
  v86 = 0;
  if (v85)
  {
    v87 = 1 << v15;
    v88 = __ROR8__(*&v85, v83);
    do
    {
      v89 = (__clz(__rbit64(v88)) + v83) & 0x3F;
      if (v89)
      {
        v90 = *(v81 + 4 * v89);
        if (v90 < v14)
        {
          break;
        }

        if (v90 >= v12)
        {
          v91 = v8;
        }

        else
        {
          v91 = v9;
        }

        _X1 = v91 + v90;
        __asm { PRFM            #0, [X1] }

        v117[v86++] = v90;
        --v87;
      }

      v88 &= v88 - 1;
    }

    while (v88 && v87);
  }

  if (((v83 - 1) & 0x3F) != 0)
  {
    v94 = 0;
  }

  else
  {
    v94 = 63;
  }

  v95 = v94 + ((v83 - 1) & 0x3F);
  *v82 = v95;
  v82[v95] = v17;
  v96 = *(a1 + 44);
  *(a1 + 44) = v96 + 1;
  *(v81 + 4 * v95) = v96;
  if (v86)
  {
    v97 = 0;
    v98 = a3 - 7;
    v112 = a3 - 1;
    v113 = a3 - 3;
    v114 = v10 + 3;
    v111 = v8 + 8;
    v99 = 3;
    while (1)
    {
      v101 = v117[v97];
      if (v101 >= v12)
      {
        v105 = (v8 + v101);
        if (*(v8 + v101 + v99 - 3) != *(a2 - 3 + v99))
        {
          goto LABEL_53;
        }

        if (v98 <= a2)
        {
          v108 = a2;
        }

        else
        {
          v106 = *v105;
          if (v106 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v106)) >> 3;
            if (result <= v99)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v107 = (a2 + 8);
          v105 = (v111 + v101);
          while (1)
          {
            v108 = v107;
            if (v107 >= v98)
            {
              break;
            }

            v110 = *v105;
            v105 += 4;
            v109 = v110;
            ++v107;
            if (v110 != *v108)
            {
              result = v108 + (__clz(__rbit64(*v108 ^ v109)) >> 3) - a2;
              if (result <= v99)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v108 < v113 && *v105 == *v108)
        {
          v105 += 2;
          v108 = (v108 + 4);
        }

        if (v108 < v112 && *v105 == *v108)
        {
          ++v105;
          v108 = (v108 + 2);
        }

        if (v108 < a3 && *v105 == *v108)
        {
          v108 = (v108 + 1);
        }

        result = v108 - a2;
        if (v108 - a2 <= v99)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v101) != *a2)
        {
          goto LABEL_53;
        }

        v102 = (v8 + v12);
        v103 = a3;
        v104 = ZSTD_count_2segments((a2 + 4), (v9 + v101 + 4), a3, (v9 + v12), v102);
        a3 = v103;
        v8 = v116;
        result = v104 + 4;
        if (result <= v99)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v114 - v101;
      v99 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v97;
      result = v99;
      if (v97 == v86)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v106 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v41 = v19 + 96;
      do
      {
        v42 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v43 = (v42 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v43;
        __asm { PRFM            #0, [X19] }

        _X7 = v6 + v43;
        __asm { PRFM            #0, [X7] }

        v48 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v42;
        v49 = (v48 >> 4) & 0xFFFFFF0;
        v50 = v5 + 4 * v49;
        v51 = (v6 + v49);
        if (((*v51 - 1) & 0xF) != 0)
        {
          v52 = 0;
        }

        else
        {
          v52 = 15;
        }

        v53 = v52 + ((*v51 - 1) & 0xF);
        *v51 = v53;
        v51[v53] = v48;
        *(v50 + 4 * v53) = v19++;
      }

      while (v41 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v106;
    }

    v54 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v55 = a2 + 1 - (v8 + v54);
    if ((v55 + 1) < 8)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = 8;
    }

    if (a2 + 1 >= v8 + v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v54 < v57 + v54)
    {
      v58 = *(a1 + 96);
      v59 = 56 - *(a1 + 52);
      do
      {
        v60 = ((0xCF1BBCDCBB000000 * *(v8 + v54)) ^ v58) >> v59;
        v61 = (v60 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v61;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v61;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v54++ & 7)) = v60;
        --v57;
      }

      while (v57);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBB000000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v27;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v35 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0xF) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 15;
        }

        v40 = v39 + ((*v38 - 1) & 0xF);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v66 = ((0xCF1BBCDCBB000000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v67 = (v66 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v67;
  __asm { PRFM            #0, [X17] }

  _X14 = v6 + v67;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v66;
LABEL_38:
  *(a1 + 104) += _X14;
  v71 = (_X14 >> 4) & 0xFFFFFF0;
  v72 = v5 + 4 * v71;
  v73 = (v6 + v71);
  v74 = 4 * v73->i8[0];
  v75 = *v73;
  v76 = 0;
  v77 = __ROR8__(vshrn_n_s16(vceqq_s8(*v73, vdupq_n_s8(_X14)), 4uLL), v74) & 0x8888888888888888;
  if (v77)
  {
    v78 = 1 << v15;
    do
    {
      v79 = ((__clz(__rbit64(v77)) + (v74 & 0xFC)) >> 2) & 0xF;
      if (v79)
      {
        v80 = *(v72 + 4 * v79);
        if (v80 < v14)
        {
          break;
        }

        if (v80 >= v12)
        {
          v81 = v8;
        }

        else
        {
          v81 = v9;
        }

        _X3 = v81 + v80;
        __asm { PRFM            #0, [X3] }

        v107[v76++] = v80;
        --v78;
      }

      v77 &= v77 - 1;
    }

    while (v77 && v78);
  }

  if (((v75 - 1) & 0xF) != 0)
  {
    v84 = 0;
  }

  else
  {
    v84 = 15;
  }

  v85 = v84 + ((v75 - 1) & 0xF);
  v73->i8[0] = v85;
  v73->i8[v85] = _X14;
  v86 = *(a1 + 44);
  *(a1 + 44) = v86 + 1;
  *(v72 + 4 * v85) = v86;
  if (v76)
  {
    v87 = 0;
    v88 = a3 - 7;
    v102 = a3 - 1;
    v103 = a3 - 3;
    v104 = v10 + 3;
    v101 = v8 + 8;
    v89 = 3;
    while (1)
    {
      v91 = v107[v87];
      if (v91 >= v12)
      {
        v95 = (v8 + v91);
        if (*(v8 + v91 + v89 - 3) != *(a2 - 3 + v89))
        {
          goto LABEL_53;
        }

        if (v88 <= a2)
        {
          v98 = a2;
        }

        else
        {
          v96 = *v95;
          if (v96 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v96)) >> 3;
            if (result <= v89)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v97 = (a2 + 8);
          v95 = (v101 + v91);
          while (1)
          {
            v98 = v97;
            if (v97 >= v88)
            {
              break;
            }

            v100 = *v95;
            v95 += 4;
            v99 = v100;
            ++v97;
            if (v100 != *v98)
            {
              result = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - a2;
              if (result <= v89)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v98 < v103 && *v95 == *v98)
        {
          v95 += 2;
          v98 = (v98 + 4);
        }

        if (v98 < v102 && *v95 == *v98)
        {
          ++v95;
          v98 = (v98 + 2);
        }

        if (v98 < a3 && *v95 == *v98)
        {
          v98 = (v98 + 1);
        }

        result = v98 - a2;
        if (v98 - a2 <= v89)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v91) != *a2)
        {
          goto LABEL_53;
        }

        v92 = (v8 + v12);
        v93 = a3;
        v94 = ZSTD_count_2segments((a2 + 4), (v9 + v91 + 4), a3, (v9 + v12), v92);
        a3 = v93;
        v8 = v106;
        result = v94 + 4;
        if (result <= v89)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v104 - v91;
      v89 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v87;
      result = v89;
      if (v87 == v76)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v111 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v42 = v19 + 96;
      do
      {
        v43 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v44 = (v43 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v44;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v44;
        __asm { PRFM            #0, [X7] }

        v50 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v43;
        v51 = (v50 >> 3) & 0x1FFFFFE0;
        v52 = v5 + 4 * v51;
        v53 = (v6 + v51);
        if (((*v53 - 1) & 0x1F) != 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = 31;
        }

        v55 = v54 + ((*v53 - 1) & 0x1F);
        *v53 = v55;
        v53[v55] = v50;
        *(v52 + 4 * v55) = v19++;
      }

      while (v42 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v111;
    }

    v56 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v57 = a2 + 1 - (v8 + v56);
    if ((v57 + 1) < 8)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = 8;
    }

    if (a2 + 1 >= v8 + v56)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56 < v59 + v56)
    {
      v60 = *(a1 + 96);
      v61 = 56 - *(a1 + 52);
      do
      {
        v62 = ((0xCF1BBCDCBB000000 * *(v8 + v56)) ^ v60) >> v61;
        v63 = (v62 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v63;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v63;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v56++ & 7)) = v62;
        --v59;
      }

      while (v59);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBB000000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v36 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v37 = (v36 >> 3) & 0x1FFFFFE0;
        v38 = v21 + 4 * v37;
        v39 = (v20 + v37);
        if (((*v39 - 1) & 0x1F) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = 31;
        }

        v41 = v40 + ((*v39 - 1) & 0x1F);
        *v39 = v41;
        v39[v41] = v36;
        *(v38 + 4 * v41) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v69 = ((0xCF1BBCDCBB000000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v70 = (v69 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v70;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v70;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v69;
LABEL_38:
  *(a1 + 104) += _X14;
  v75 = (_X14 >> 3) & 0x1FFFFFE0;
  v76 = v5 + 4 * v75;
  v77 = (v6 + v75);
  v114 = vld2q_s16(v77);
  v78 = *v77;
  v79 = 2 * *v77;
  v80 = vdupq_n_s8(_X14);
  v81 = 0;
  v82 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v80, v114.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v80, v114.val[1]), 6uLL), 4uLL), v79) & 0x5555555555555555;
  if (v82)
  {
    v83 = 1 << v15;
    do
    {
      v84 = ((__clz(__rbit64(v82)) + (v79 & 0xFE)) >> 1) & 0x1F;
      if (v84)
      {
        v85 = *(v76 + 4 * v84);
        if (v85 < v14)
        {
          break;
        }

        if (v85 >= v12)
        {
          v86 = v8;
        }

        else
        {
          v86 = v9;
        }

        _X3 = v86 + v85;
        __asm { PRFM            #0, [X3] }

        v112[v81++] = v85;
        --v83;
      }

      v82 &= v82 - 1;
    }

    while (v82 && v83);
  }

  if (((v78 - 1) & 0x1F) != 0)
  {
    v89 = 0;
  }

  else
  {
    v89 = 31;
  }

  v90 = v89 + ((v78 - 1) & 0x1F);
  *v77 = v90;
  *(v77 + v90) = _X14;
  v91 = *(a1 + 44);
  *(a1 + 44) = v91 + 1;
  *(v76 + 4 * v90) = v91;
  if (v81)
  {
    v92 = 0;
    v93 = a3 - 7;
    v107 = a3 - 1;
    v108 = a3 - 3;
    v109 = v10 + 3;
    v106 = v8 + 8;
    v94 = 3;
    while (1)
    {
      v96 = v112[v92];
      if (v96 >= v12)
      {
        v100 = (v8 + v96);
        if (*(v8 + v96 + v94 - 3) != *(a2 - 3 + v94))
        {
          goto LABEL_53;
        }

        if (v93 <= a2)
        {
          v103 = a2;
        }

        else
        {
          v101 = *v100;
          if (v101 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v101)) >> 3;
            if (result <= v94)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v102 = (a2 + 8);
          v100 = (v106 + v96);
          while (1)
          {
            v103 = v102;
            if (v102 >= v93)
            {
              break;
            }

            v105 = *v100;
            v100 += 4;
            v104 = v105;
            ++v102;
            if (v105 != *v103)
            {
              result = v103 + (__clz(__rbit64(*v103 ^ v104)) >> 3) - a2;
              if (result <= v94)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v103 < v108 && *v100 == *v103)
        {
          v100 += 2;
          v103 = (v103 + 4);
        }

        if (v103 < v107 && *v100 == *v103)
        {
          ++v100;
          v103 = (v103 + 2);
        }

        if (v103 < a3 && *v100 == *v103)
        {
          v103 = (v103 + 1);
        }

        result = v103 - a2;
        if (v103 - a2 <= v94)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v96) != *a2)
        {
          goto LABEL_53;
        }

        v97 = (v8 + v12);
        v98 = a3;
        v99 = ZSTD_count_2segments((a2 + 4), (v9 + v96 + 4), a3, (v9 + v12), v97);
        a3 = v98;
        v8 = v111;
        result = v99 + 4;
        if (result <= v94)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v109 - v96;
      v94 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v92;
      result = v94;
      if (v92 == v81)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v115 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v43 = v19 + 96;
      do
      {
        v44 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v45;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v45;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x20]
        }

        v52 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v44;
        v53 = (v52 >> 2) & 0x3FFFFFC0;
        v54 = v5 + 4 * v53;
        v55 = (v6 + v53);
        if (((*v55 - 1) & 0x3F) != 0)
        {
          v56 = 0;
        }

        else
        {
          v56 = 63;
        }

        v57 = v56 + ((*v55 - 1) & 0x3F);
        *v55 = v57;
        v55[v57] = v52;
        *(v54 + 4 * v57) = v19++;
      }

      while (v43 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v115;
    }

    v58 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v59 = a2 + 1 - (v8 + v58);
    if ((v59 + 1) < 8)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 8;
    }

    if (a2 + 1 >= v8 + v58)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v58 < v61 + v58)
    {
      v62 = *(a1 + 96);
      v63 = 56 - *(a1 + 52);
      do
      {
        v64 = ((0xCF1BBCDCBB000000 * *(v8 + v58)) ^ v62) >> v63;
        v65 = (v64 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v65;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v65;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        *(v18 + 4 * (v58++ & 7)) = v64;
        --v61;
      }

      while (v61);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBB000000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v37 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v38 = (v37 >> 2) & 0x3FFFFFC0;
        v39 = v21 + 4 * v38;
        v40 = (v20 + v38);
        if (((*v40 - 1) & 0x3F) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = 63;
        }

        v42 = v41 + ((*v40 - 1) & 0x3F);
        *v40 = v42;
        v40[v42] = v37;
        *(v39 + 4 * v42) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v72 = ((0xCF1BBCDCBB000000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v73 = (v72 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v73;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v73;
  __asm
  {
    PRFM            #0, [X14]
    PRFM            #0, [X14,#0x20]
  }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v72;
LABEL_38:
  *(a1 + 104) += _X14;
  v79 = (_X14 >> 2) & 0x3FFFFFC0;
  v80 = v5 + 4 * v79;
  v81 = (v6 + v79);
  v82 = *v81;
  v118 = vld4q_s8(v81);
  v83 = vdupq_n_s8(_X14);
  v118.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v118.val[3], v83), vceqq_s8(v118.val[2], v83), 1uLL), vsriq_n_s8(vceqq_s8(v118.val[1], v83), vceqq_s8(v118.val[0], v83), 1uLL), 2uLL);
  v84 = vshrn_n_s16(vsriq_n_s8(v118.val[0], v118.val[0], 4uLL), 4uLL);
  v85 = 0;
  if (v84)
  {
    v86 = 1 << v15;
    v87 = __ROR8__(*&v84, v82);
    do
    {
      v88 = (__clz(__rbit64(v87)) + v82) & 0x3F;
      if (v88)
      {
        v89 = *(v80 + 4 * v88);
        if (v89 < v14)
        {
          break;
        }

        if (v89 >= v12)
        {
          v90 = v8;
        }

        else
        {
          v90 = v9;
        }

        _X1 = v90 + v89;
        __asm { PRFM            #0, [X1] }

        v116[v85++] = v89;
        --v86;
      }

      v87 &= v87 - 1;
    }

    while (v87 && v86);
  }

  if (((v82 - 1) & 0x3F) != 0)
  {
    v93 = 0;
  }

  else
  {
    v93 = 63;
  }

  v94 = v93 + ((v82 - 1) & 0x3F);
  *v81 = v94;
  v81[v94] = _X14;
  v95 = *(a1 + 44);
  *(a1 + 44) = v95 + 1;
  *(v80 + 4 * v94) = v95;
  if (v85)
  {
    v96 = 0;
    v97 = a3 - 7;
    v111 = a3 - 1;
    v112 = a3 - 3;
    v113 = v10 + 3;
    v110 = v8 + 8;
    v98 = 3;
    while (1)
    {
      v100 = v116[v96];
      if (v100 >= v12)
      {
        v104 = (v8 + v100);
        if (*(v8 + v100 + v98 - 3) != *(a2 - 3 + v98))
        {
          goto LABEL_53;
        }

        if (v97 <= a2)
        {
          v107 = a2;
        }

        else
        {
          v105 = *v104;
          if (v105 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v105)) >> 3;
            if (result <= v98)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v106 = (a2 + 8);
          v104 = (v110 + v100);
          while (1)
          {
            v107 = v106;
            if (v106 >= v97)
            {
              break;
            }

            v109 = *v104;
            v104 += 4;
            v108 = v109;
            ++v106;
            if (v109 != *v107)
            {
              result = v107 + (__clz(__rbit64(*v107 ^ v108)) >> 3) - a2;
              if (result <= v98)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v107 < v112 && *v104 == *v107)
        {
          v104 += 2;
          v107 = (v107 + 4);
        }

        if (v107 < v111 && *v104 == *v107)
        {
          ++v104;
          v107 = (v107 + 2);
        }

        if (v107 < a3 && *v104 == *v107)
        {
          v107 = (v107 + 1);
        }

        result = v107 - a2;
        if (v107 - a2 <= v98)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v100) != *a2)
        {
          goto LABEL_53;
        }

        v101 = (v8 + v12);
        v102 = a3;
        v103 = ZSTD_count_2segments((a2 + 4), (v9 + v100 + 4), a3, (v9 + v12), v101);
        a3 = v102;
        v8 = v115;
        result = v103 + 4;
        if (result <= v98)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v113 - v100;
      v98 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v96;
      result = v98;
      if (v96 == v85)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v106 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v41 = v19 + 96;
      do
      {
        v42 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v43 = (v42 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v43;
        __asm { PRFM            #0, [X19] }

        _X7 = v6 + v43;
        __asm { PRFM            #0, [X7] }

        v48 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v42;
        v49 = (v48 >> 4) & 0xFFFFFF0;
        v50 = v5 + 4 * v49;
        v51 = (v6 + v49);
        if (((*v51 - 1) & 0xF) != 0)
        {
          v52 = 0;
        }

        else
        {
          v52 = 15;
        }

        v53 = v52 + ((*v51 - 1) & 0xF);
        *v51 = v53;
        v51[v53] = v48;
        *(v50 + 4 * v53) = v19++;
      }

      while (v41 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v106;
    }

    v54 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v55 = a2 + 1 - (v8 + v54);
    if ((v55 + 1) < 8)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = 8;
    }

    if (a2 + 1 >= v8 + v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v54 < v57 + v54)
    {
      v58 = *(a1 + 96);
      v59 = 56 - *(a1 + 52);
      do
      {
        v60 = ((0xCF1BBCDCBF9B0000 * *(v8 + v54)) ^ v58) >> v59;
        v61 = (v60 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v61;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v61;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v54++ & 7)) = v60;
        --v57;
      }

      while (v57);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBF9B0000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v27;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v35 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0xF) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 15;
        }

        v40 = v39 + ((*v38 - 1) & 0xF);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v66 = ((0xCF1BBCDCBF9B0000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v67 = (v66 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v67;
  __asm { PRFM            #0, [X17] }

  _X14 = v6 + v67;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v66;
LABEL_38:
  *(a1 + 104) += _X14;
  v71 = (_X14 >> 4) & 0xFFFFFF0;
  v72 = v5 + 4 * v71;
  v73 = (v6 + v71);
  v74 = 4 * v73->i8[0];
  v75 = *v73;
  v76 = 0;
  v77 = __ROR8__(vshrn_n_s16(vceqq_s8(*v73, vdupq_n_s8(_X14)), 4uLL), v74) & 0x8888888888888888;
  if (v77)
  {
    v78 = 1 << v15;
    do
    {
      v79 = ((__clz(__rbit64(v77)) + (v74 & 0xFC)) >> 2) & 0xF;
      if (v79)
      {
        v80 = *(v72 + 4 * v79);
        if (v80 < v14)
        {
          break;
        }

        if (v80 >= v12)
        {
          v81 = v8;
        }

        else
        {
          v81 = v9;
        }

        _X3 = v81 + v80;
        __asm { PRFM            #0, [X3] }

        v107[v76++] = v80;
        --v78;
      }

      v77 &= v77 - 1;
    }

    while (v77 && v78);
  }

  if (((v75 - 1) & 0xF) != 0)
  {
    v84 = 0;
  }

  else
  {
    v84 = 15;
  }

  v85 = v84 + ((v75 - 1) & 0xF);
  v73->i8[0] = v85;
  v73->i8[v85] = _X14;
  v86 = *(a1 + 44);
  *(a1 + 44) = v86 + 1;
  *(v72 + 4 * v85) = v86;
  if (v76)
  {
    v87 = 0;
    v88 = a3 - 7;
    v102 = a3 - 1;
    v103 = a3 - 3;
    v104 = v10 + 3;
    v101 = v8 + 8;
    v89 = 3;
    while (1)
    {
      v91 = v107[v87];
      if (v91 >= v12)
      {
        v95 = (v8 + v91);
        if (*(v8 + v91 + v89 - 3) != *(a2 - 3 + v89))
        {
          goto LABEL_53;
        }

        if (v88 <= a2)
        {
          v98 = a2;
        }

        else
        {
          v96 = *v95;
          if (v96 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v96)) >> 3;
            if (result <= v89)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v97 = (a2 + 8);
          v95 = (v101 + v91);
          while (1)
          {
            v98 = v97;
            if (v97 >= v88)
            {
              break;
            }

            v100 = *v95;
            v95 += 4;
            v99 = v100;
            ++v97;
            if (v100 != *v98)
            {
              result = v98 + (__clz(__rbit64(*v98 ^ v99)) >> 3) - a2;
              if (result <= v89)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v98 < v103 && *v95 == *v98)
        {
          v95 += 2;
          v98 = (v98 + 4);
        }

        if (v98 < v102 && *v95 == *v98)
        {
          ++v95;
          v98 = (v98 + 2);
        }

        if (v98 < a3 && *v95 == *v98)
        {
          v98 = (v98 + 1);
        }

        result = v98 - a2;
        if (v98 - a2 <= v89)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v91) != *a2)
        {
          goto LABEL_53;
        }

        v92 = (v8 + v12);
        v93 = a3;
        v94 = ZSTD_count_2segments((a2 + 4), (v9 + v91 + 4), a3, (v9 + v12), v92);
        a3 = v93;
        v8 = v106;
        result = v94 + 4;
        if (result <= v89)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v104 - v91;
      v89 = result;
      if (a2 + result == a3)
      {
        return result;
      }

LABEL_53:
      ++v87;
      result = v89;
      if (v87 == v76)
      {
        return result;
      }
    }
  }

  return 3;
}