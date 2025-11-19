unint64_t ZSTD_compressBlock_greedy_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
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
  if (v14 >= 6)
  {
    v15 = 6;
  }

  else
  {
    v15 = *(a1 + 268);
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = *(a1 + 248);
  v20 = *v19;
  v181 = *(v19 + 8);
  v183 = (v10 + v11);
  v171 = (v181 + *(v19 + 24));
  if (a4 - (v10 + v11) - v171 + *v19)
  {
    v21 = a4;
  }

  else
  {
    v21 = (a4 + 1);
  }

  *(a1 + 300) = 0;
  v22 = *(a1 + 44);
  v23 = v9 - (v10 + v22);
  if ((v23 + 1) < 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 + v22);
  if (v22 < v26)
  {
    v27 = *(a1 + 112);
    v28 = *(a1 + 56);
    v29 = *(a1 + 52);
    v30 = *(a1 + 96);
    v31 = 56 - v29;
    v32 = 24 - v29;
    v33 = a1 + 64;
    if (v14 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v34 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v35) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_26;
          }

          v34 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v35 = (v34 ^ v30) >> v31;
LABEL_26:
        v36 = v35 >> 8 << v16;
        _X3 = v27 + 4 * v36;
        __asm { PRFM            #0, [X3] }

        _X2 = v28 + v36;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v35;
        if (v26 == v22)
        {
          goto LABEL_47;
        }
      }
    }

    if (v14 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v45 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v46) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_35;
          }

          v45 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v46 = (v45 ^ v30) >> v31;
LABEL_35:
        v47 = v46 >> 8 << v16;
        _X3 = v27 + 4 * v47;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v28 + v47;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v46;
        if (v26 == v22)
        {
          goto LABEL_47;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v61 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v30) >> v31;
        v62 = v61 >> 8 << v16;
        _X0 = v27 + 4 * v62;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v62;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v61;
      }

      while (v26 != v22);
    }

    else if (v13 == 5)
    {
      do
      {
        v53 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v30) >> v31;
        v54 = v53 >> 8 << v16;
        _X0 = v27 + 4 * v54;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v54;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v53;
      }

      while (v26 != v22);
    }

    else
    {
      do
      {
        v69 = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
        v70 = v69 >> 8 << v16;
        _X0 = v27 + 4 * v70;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v70;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v69;
      }

      while (v26 != v22);
    }
  }

LABEL_47:
  if (v21 < v9)
  {
    v182 = v8 - 32;
    v174 = v7 + 64;
    v172 = v11 + v10 + 8;
    v175 = v11 + v181 - v20;
    v179 = v9;
    v180 = v7;
    v178 = v11;
    v177 = v16;
    v176 = v20;
    v173 = v8 - 7;
    while (1)
    {
      v78 = (v21 - v10 - v17 + 1);
      v79 = v181 + v78 - v175;
      if (v78 >= v11)
      {
        v79 = v10 + v78;
      }

      if ((v78 - v11) <= 0xFFFFFFFC && (v80 = (v21 + 1), *v79 == *(v21 + 1)))
      {
        v81 = (v78 >= v11 ? v8 : v20);
        v82 = ZSTD_count_2segments((v21 + 5), (v79 + 4), v8, v81, v183);
        v83 = (v8 - 32);
        v20 = v176;
        LODWORD(v11) = v178;
        v84 = v179;
        BestMatch_dictMatchState_6_6 = v82 + 4;
        v86 = 1;
      }

      else
      {
        v184 = 999999999;
        if (v13 == 6)
        {
          if (v16 == 6)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_6(v7, v21, v8, &v184);
          }

          else if (v16 == 5)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_5(v7, v21, v8, &v184);
          }

          else
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_6_4(v7, v21, v8, &v184);
          }
        }

        else if (v13 == 5)
        {
          if (v16 == 6)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_6(v7, v21, v8, &v184);
          }

          else if (v16 == 5)
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_5(v7, v21, v8, &v184);
          }

          else
          {
            BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_5_4(v7, v21, v8, &v184);
          }
        }

        else if (v16 == 6)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_6(v7, v21, v8, &v184);
        }

        else if (v16 == 5)
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_5(v7, v21, v8, &v184);
        }

        else
        {
          BestMatch_dictMatchState_6_6 = ZSTD_RowFindBestMatch_dictMatchState_4_4(v7, v21, v8, &v184);
        }

        LODWORD(v11) = v178;
        v84 = v179;
        v20 = v176;
        v83 = (v8 - 32);
        if (BestMatch_dictMatchState_6_6 <= 3)
        {
          v77 = v21 - v5;
          v21 += ((v21 - v5) >> 8) + 1;
          v7 = v180;
          *(v180 + 300) = v77 > 0x7FF;
          v16 = v177;
          goto LABEL_50;
        }

        v86 = v184;
        if (v184 >= 4)
        {
          v87 = v21 - v10 - v184 + 3;
          v88 = v183;
          if (v178 > v87)
          {
            v88 = v171;
          }

          v89 = v181 - v175;
          if (v178 <= v21 - v10 - v184 + 3)
          {
            v89 = v10;
          }

          if (v21 > v5 && v89 + v87 > v88)
          {
            v90 = (v89 + v87 - 1);
            v91 = (v21 - 1);
            while (*v91 == *v90)
            {
              ++BestMatch_dictMatchState_6_6;
              v92 = v91 - 1;
              if (v91 > v5)
              {
                --v91;
                if (v90-- > v88)
                {
                  continue;
                }
              }

              v21 = (v92 + 1);
              goto LABEL_90;
            }

            v21 = (v91 + 1);
          }

LABEL_90:
          v18 = v17;
          v17 = (v184 - 3);
        }

        v80 = v21;
      }

      v94 = v80 - v5;
      v95 = *(a2 + 24);
      if (v80 > v83)
      {
        break;
      }

      *v95 = *v5;
      v102 = *(a2 + 24);
      v7 = v180;
      v16 = v177;
      if (v94 > 0x10)
      {
        *(v102 + 16) = *(v5 + 1);
        if (v94 >= 33)
        {
          v103 = v102 + v94;
          v104 = (v102 + 32);
          v105 = (v5 + 48);
          do
          {
            *v104 = *(v105 - 1);
            v106 = *v105;
            v105 += 2;
            v104[1] = v106;
            v104 += 2;
          }

          while (v104 < v103);
        }

        goto LABEL_121;
      }

      *(a2 + 24) = v102 + v94;
      v107 = *(a2 + 8);
LABEL_123:
      *(v107 + 4) = v94;
      *v107 = v86;
      if (BestMatch_dictMatchState_6_6 - 3 >= 0x10000)
      {
        v120 = (v107 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v120;
      }

      *(v107 + 6) = BestMatch_dictMatchState_6_6 - 3;
      v121 = v107 + 8;
      *(a2 + 8) = v107 + 8;
      if (*(v7 + 300))
      {
        v122 = *(v7 + 44);
        v123 = v84 - (v10 + v122);
        if ((v123 + 1) < 8)
        {
          v124 = v123 + 1;
        }

        else
        {
          v124 = 8;
        }

        if (v84 >= v10 + v122)
        {
          v125 = v124;
        }

        else
        {
          v125 = 0;
        }

        v126 = (v125 + v122);
        if (v122 < v126)
        {
          v127 = *(v7 + 112);
          v128 = *(v7 + 56);
          v129 = *(v7 + 52);
          v130 = *(v7 + 96);
          v131 = 56 - v129;
          v132 = 24 - v129;
          do
          {
            if (v13 == 5)
            {
              v135 = 0xCF1BBCDCBB000000 * *(v10 + v122);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v136) = ((-1640531535 * *(v10 + v122)) ^ v130) >> v132;
                goto LABEL_142;
              }

              v135 = 0xCF1BBCDCBF9B0000 * *(v10 + v122);
            }

            v136 = (v135 ^ v130) >> v131;
LABEL_142:
            v137 = v136 >> 8 << v16;
            _X1 = v127 + 4 * v137;
            __asm { PRFM            #0, [X1] }

            if (v14 <= 4)
            {
              _X17 = v128 + v137;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v128 + v137;
              __asm { PRFM            #0, [X17] }

              if (v14 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v174 + 4 * (v122++ & 7)) = v136;
          }

          while (v126 != v122);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v80[BestMatch_dictMatchState_6_6];
      if (&v80[BestMatch_dictMatchState_6_6] > v84)
      {
        v21 = &v80[BestMatch_dictMatchState_6_6];
        goto LABEL_50;
      }

      v144 = v17;
      v145 = v18;
      while (1)
      {
        v17 = v145;
        v145 = v144;
        v146 = (v5 - v10 - v17);
        v147 = v146 >= v11 ? v10 : v181 - v175;
        if ((v146 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v148 = v147 + v146;
        if (*(v147 + v146) != *v5)
        {
          break;
        }

        if (v146 >= v11)
        {
          v149 = v8;
        }

        else
        {
          v149 = v176;
        }

        v150 = (v5 + 4);
        v151 = (v148 + 4);
        v152 = v149 + v5 - v148;
        if (v152 >= v8)
        {
          v152 = v8;
        }

        if (v152 - 7 <= v150)
        {
          v153 = v151;
          v155 = v5 + 4;
        }

        else
        {
          if (*v151 != *v150)
          {
            v158 = __clz(__rbit64(*v150 ^ *v151)) >> 3;
            goto LABEL_178;
          }

          v153 = (v147 + v146 + 12);
          v154 = (v5 + 12);
          while (1)
          {
            v155 = v154;
            if (v154 >= (v152 - 7))
            {
              break;
            }

            v157 = *v153;
            v153 += 4;
            v156 = v157;
            v154 += 8;
            if (v157 != *v155)
            {
              v158 = v155 + (__clz(__rbit64(*v155 ^ v156)) >> 3) - v150;
              goto LABEL_178;
            }
          }
        }

        if (v155 < (v152 - 3) && *v153 == *v155)
        {
          v153 += 2;
          v155 = (v155 + 4);
        }

        if (v155 < (v152 - 1) && *v153 == *v155)
        {
          ++v153;
          v155 = (v155 + 2);
        }

        if (v155 < v152 && *v153 == *v155)
        {
          v155 = (v155 + 1);
        }

        v158 = v155 - v150;
LABEL_178:
        if ((v151 + v158) == v149)
        {
          v160 = &v150[v158];
          if (v173 > v160)
          {
            if (*v183 == *v160)
            {
              v161 = 0;
              v162 = &v5[v158];
              while (1)
              {
                v163 = &v162[v161 + 12];
                if (v163 >= v173)
                {
                  break;
                }

                v164 = *(v172 + v161);
                v165 = *v163;
                v161 += 8;
                if (v164 != v165)
                {
                  v166 = &v162[v161 + 4 + (__clz(__rbit64(v165 ^ v164)) >> 3)];
                  goto LABEL_201;
                }
              }

              v167 = (v172 + v161);
              v166 = &v5[v158 + 12 + v161];
LABEL_192:
              if (v166 < v8 - 3 && *v167 == *v166)
              {
                v167 = (v167 + 4);
                v166 += 4;
              }

              if (v166 < v8 - 1 && *v167 == *v166)
              {
                v167 = (v167 + 2);
                v166 += 2;
              }

              if (v166 < v8 && *v167 == *v166)
              {
                ++v166;
              }

LABEL_201:
              v168 = v166 - v160;
            }

            else
            {
              v168 = __clz(__rbit64(*v160 ^ *v183)) >> 3;
            }

            v158 += v168;
            if (v5 > v182)
            {
              goto LABEL_181;
            }

LABEL_180:
            **(a2 + 24) = *v5;
            v121 = *(a2 + 8);
            goto LABEL_181;
          }

          v167 = v183;
          v166 = v160;
          goto LABEL_192;
        }

        if (v5 <= v182)
        {
          goto LABEL_180;
        }

LABEL_181:
        *(v121 + 4) = 0;
        *v121 = 1;
        if (v158 + 1 >= 0x10000)
        {
          v159 = (v121 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v159;
        }

        *(v121 + 6) = v158 + 1;
        v121 += 8;
        v5 += v158 + 4;
        *(a2 + 8) = v121;
        v144 = v17;
        v18 = v145;
        v21 = v5;
        if (v5 > v84)
        {
          goto LABEL_50;
        }
      }

      v18 = v17;
      v17 = v144;
      v21 = v5;
LABEL_50:
      if (v21 >= v84)
      {
        goto LABEL_205;
      }
    }

    v7 = v180;
    v16 = v177;
    if (v5 <= v83)
    {
      v96 = (v95 + v83 - v5);
      *v95 = *v5;
      if (v83 - v5 >= 17)
      {
        v97 = v95 + 1;
        v98 = (v5 + 32);
        do
        {
          *v97 = *(v98 - 1);
          v99 = *v98;
          v98 += 2;
          v97[1] = v99;
          v97 += 2;
        }

        while (v97 < v96);
      }

      v5 = v83;
      v95 = v96;
    }

    if (v5 < v80)
    {
      v100 = v80 - v5;
      if ((v80 - v5) < 8)
      {
        v108 = v95;
        goto LABEL_120;
      }

      if ((v95 - v5) < 0x20)
      {
        v108 = v95;
        goto LABEL_120;
      }

      if (v100 >= 0x20)
      {
        v101 = v100 & 0xFFFFFFFFFFFFFFE0;
        v109 = (v5 + 16);
        v110 = v95 + 1;
        v111 = v100 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v112 = *v109;
          *(v110 - 1) = *(v109 - 1);
          *v110 = v112;
          v109 += 2;
          v110 += 2;
          v111 -= 32;
        }

        while (v111);
        if (v100 == v101)
        {
          goto LABEL_121;
        }

        if ((v100 & 0x18) == 0)
        {
          v5 += v101;
          v108 = v95 + v101;
          do
          {
LABEL_120:
            v118 = *v5++;
            *v108++ = v118;
          }

          while (v5 != v80);
          goto LABEL_121;
        }
      }

      else
      {
        v101 = 0;
      }

      v113 = v100 & 0xFFFFFFFFFFFFFFF8;
      v108 = v95 + (v100 & 0xFFFFFFFFFFFFFFF8);
      v114 = v101 - (v100 & 0xFFFFFFFFFFFFFFF8);
      v115 = &v5[v101];
      v116 = (v95 + v101);
      do
      {
        v117 = *v115++;
        *v116++ = v117;
        v114 += 8;
      }

      while (v114);
      if (v100 != v113)
      {
        v5 += v113;
        goto LABEL_120;
      }
    }

LABEL_121:
    *(a2 + 24) += v94;
    v107 = *(a2 + 8);
    if (v94 >= 0x10000)
    {
      v119 = (v107 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v119;
    }

    goto LABEL_123;
  }

LABEL_205:
  *a3 = v17;
  a3[1] = v18;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v134 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v132 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    v27 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v130 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    if (v9 - v29 >= 0x181)
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
      if (v29 <= 0xFFFFFF9F)
      {
        v100 = v29 + 96;
        v101 = *(a1 + 52);
        v102 = 24 - v7;
        do
        {
          v103 = ((-1640531535 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v102;
          v104 = (v103 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v104;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v104;
          __asm { PRFM            #0, [X22] }

          v109 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v103;
          v110 = (v109 >> 4) & 0xFFFFFF0;
          v111 = v5 + 4 * v110;
          v112 = (v6 + v110);
          if (((*v112 - 1) & 0xF) != 0)
          {
            v113 = 0;
          }

          else
          {
            v113 = 15;
          }

          v114 = v113 + ((*v112 - 1) & 0xF);
          *v112 = v114;
          v112[v114] = v109;
          *(v111 + 4 * v114) = v29++;
        }

        while (v100 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
        LOBYTE(v7) = v101;
      }

      v115 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v116 = a2 + 1 - (v8 + v115);
      if ((v116 + 1) < 8)
      {
        v117 = v116 + 1;
      }

      else
      {
        v117 = 8;
      }

      if (a2 + 1 >= v8 + v115)
      {
        v118 = v117;
      }

      else
      {
        v118 = 0;
      }

      if (v115 < v118 + v115)
      {
        v119 = v7;
        v120 = *(a1 + 96);
        v121 = 24 - *(a1 + 52);
        do
        {
          v122 = ((-1640531535 * *(v8 + v115)) ^ v120) >> v121;
          v123 = (v122 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v123;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v123;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v115++ & 7)) = v122;
          --v118;
        }

        while (v118);
        LOBYTE(v7) = v119;
      }
    }

    else
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
    }

    if (v29 >= v9)
    {
      v36 = v9;
    }

    else
    {
      v32 = v7;
      v33 = *(a1 + 8) + 8;
      v34 = 24 - *(a1 + 52);
      v35 = v29;
      v36 = v9;
      do
      {
        v37 = ((-1640531535 * *(v33 + v35)) ^ *(a1 + 96)) >> v34;
        v38 = (v37 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v38;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v38;
        __asm { PRFM            #0, [X24] }

        v43 = *(v28 + 4 * (v35 & 7));
        *(v28 + 4 * (v35 & 7)) = v37;
        v44 = (v43 >> 4) & 0xFFFFFF0;
        v45 = v31 + 4 * v44;
        v46 = (v30 + v44);
        if (((*v46 - 1) & 0xF) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 15;
        }

        v48 = v47 + ((*v46 - 1) & 0xF);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v35++;
      }

      while (v9 != v35);
      LOBYTE(v7) = v32;
    }

    *(a1 + 44) = v9;
    v49 = ((-1640531535 * *(v8 + v36 + 8)) ^ v14) >> (24 - v7);
    v50 = (v49 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v50;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v50;
    __asm { PRFM            #0, [X17] }

    v27 = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v49;
    a3 = v130;
  }

  *(a1 + 104) += v27;
  v55 = (v27 >> 4) & 0xFFFFFF0;
  v56 = v5 + 4 * v55;
  v57 = (v6 + v55);
  v58 = *v57;
  v59 = __ROR8__(vshrn_n_s16(vceqq_s8(*v57, vdupq_n_s8(v27)), 4uLL), 4 * v57->i8[0]) & 0x8888888888888888;
  if (v59)
  {
    v60 = 0;
    v61 = (4 * v57->i8[0]);
    do
    {
      v62 = ((__clz(__rbit64(v59)) + v61) >> 2) & 0xF;
      if (v62)
      {
        v63 = *(v56 + 4 * v62);
        if (v63 < v12)
        {
          break;
        }

        _X7 = v8 + v63;
        __asm { PRFM            #0, [X7] }

        v133[v60++] = v63;
        --v15;
      }

      v59 &= v59 - 1;
    }

    while (v59 && v15);
  }

  else
  {
    v60 = 0;
  }

  if (((v58 - 1) & 0xF) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = 15;
  }

  v67 = v66 + ((v58 - 1) & 0xF);
  v57->i8[0] = v67;
  v57->i8[v67] = v27;
  v68 = *(a1 + 44);
  *(a1 + 44) = v68 + 1;
  *(v56 + 4 * v67) = v68;
  if (v60)
  {
    v69 = 0;
    v70 = a3 - 7;
    v71 = a3 - 1;
    v72 = 3;
    while (1)
    {
      v74 = v133[v69];
      v75 = (v8 + v74);
      if (*(v8 + v74 + v72 - 3) != *(a2 - 3 + v72))
      {
        goto LABEL_36;
      }

      if (v70 <= a2)
      {
        v77 = a2;
        goto LABEL_46;
      }

      if (*v75 == *a2)
      {
        break;
      }

      v73 = __clz(__rbit64(*a2 ^ *v75)) >> 3;
      if (v73 <= v72)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v74;
      v72 = v73;
      if (a2 + v73 == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v69;
      v73 = v72;
      if (v69 == v60)
      {
        goto LABEL_64;
      }
    }

    v75 = (v8 + 8 + v74);
    v76 = (a2 + 8);
    while (1)
    {
      v77 = v76;
      if (v76 >= v70)
      {
        break;
      }

      v79 = *v75++;
      v78 = v79;
      ++v76;
      if (v79 != *v77)
      {
        v73 = v77 + (__clz(__rbit64(*v77 ^ v78)) >> 3) - a2;
        if (v73 <= v72)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v77 < a3 - 3)
    {
      if (*v75 == *v77)
      {
        v75 = (v75 + 4);
        v77 = (v77 + 4);
      }

      if (v77 >= v71)
      {
LABEL_48:
        if (v77 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v77 >= v71)
    {
      goto LABEL_48;
    }

    if (*v75 == *v77)
    {
      v75 = (v75 + 2);
      v77 = (v77 + 2);
    }

    if (v77 >= a3)
    {
LABEL_51:
      v73 = v77 - a2;
      if (v77 - a2 <= v72)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v75 == *v77)
    {
      v77 = (v77 + 1);
    }

    goto LABEL_51;
  }

  v73 = 3;
LABEL_64:
  v80 = 4 * _X13->i8[0];
  v81 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v80) & 0x8888888888888888;
  if (v81)
  {
    v82 = v15 == 0;
  }

  else
  {
    v82 = 1;
  }

  if (!v82)
  {
    v83 = 0;
    v84 = *(v16 + 24);
    v85 = *(v16 + 8);
    v131 = *v16;
    v86 = *v16 - v85;
    v87 = v80 & 0xFC;
    do
    {
      v88 = ((__clz(__rbit64(v81)) + v87) >> 2) & 0xF;
      if (v88)
      {
        v89 = *(_X10 + 4 * v88);
        if (v89 < v84)
        {
          break;
        }

        _X17 = v85 + v89;
        __asm { PRFM            #0, [X17] }

        v133[v83++] = v89;
        --v15;
      }

      v81 &= v81 - 1;
    }

    while (v81 && v15);
    if (v83)
    {
      v92 = *a2;
      v128 = v9 - v132 + v86 + 3;
      v93 = v133;
      do
      {
        v95 = *v93++;
        v94 = v95;
        v96 = v85 + v95;
        if (*v96 == v92)
        {
          v97 = a3;
          v98 = ZSTD_count_2segments((a2 + 4), (v96 + 4), a3, v131, (v8 + v132));
          a3 = v97;
          if (v98 + 4 > v73)
          {
            *a4 = v128 - v94;
            v73 = v98 + 4;
            if (a2 + v98 + 4 == v97)
            {
              break;
            }
          }
        }

        --v83;
      }

      while (v83);
    }
  }

  return v73;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v141 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v139 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    v28 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v137 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    if (v9 - v30 >= 0x181)
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
      if (v30 <= 0xFFFFFF9F)
      {
        v105 = v30 + 96;
        v106 = *(a1 + 52);
        v107 = 24 - v7;
        do
        {
          v108 = ((-1640531535 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v107;
          v109 = (v108 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v109;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v109;
          __asm { PRFM            #0, [X22] }

          v115 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v108;
          v116 = (v115 >> 3) & 0x1FFFFFE0;
          v117 = v5 + 4 * v116;
          v118 = (v6 + v116);
          if (((*v118 - 1) & 0x1F) != 0)
          {
            v119 = 0;
          }

          else
          {
            v119 = 31;
          }

          v120 = v119 + ((*v118 - 1) & 0x1F);
          *v118 = v120;
          v118[v120] = v115;
          *(v117 + 4 * v120) = v30++;
        }

        while (v105 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
        LOBYTE(v7) = v106;
      }

      v121 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v122 = a2 + 1 - (v8 + v121);
      if ((v122 + 1) < 8)
      {
        v123 = v122 + 1;
      }

      else
      {
        v123 = 8;
      }

      if (a2 + 1 >= v8 + v121)
      {
        v124 = v123;
      }

      else
      {
        v124 = 0;
      }

      if (v121 < v124 + v121)
      {
        v125 = v7;
        v126 = *(a1 + 96);
        v127 = 24 - *(a1 + 52);
        do
        {
          v128 = ((-1640531535 * *(v8 + v121)) ^ v126) >> v127;
          v129 = (v128 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v129;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v129;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v121++ & 7)) = v128;
          --v124;
        }

        while (v124);
        LOBYTE(v7) = v125;
      }
    }

    else
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
    }

    if (v30 >= v9)
    {
      v37 = v9;
    }

    else
    {
      v33 = v7;
      v34 = *(a1 + 8) + 8;
      v35 = 24 - *(a1 + 52);
      v36 = v30;
      v37 = v9;
      do
      {
        v38 = ((-1640531535 * *(v34 + v36)) ^ *(a1 + 96)) >> v35;
        v39 = (v38 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v39;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v39;
        __asm { PRFM            #0, [X24] }

        v45 = *(v29 + 4 * (v36 & 7));
        *(v29 + 4 * (v36 & 7)) = v38;
        v46 = (v45 >> 3) & 0x1FFFFFE0;
        v47 = v32 + 4 * v46;
        v48 = (v31 + v46);
        if (((*v48 - 1) & 0x1F) != 0)
        {
          v49 = 0;
        }

        else
        {
          v49 = 31;
        }

        v50 = v49 + ((*v48 - 1) & 0x1F);
        *v48 = v50;
        v48[v50] = v45;
        *(v47 + 4 * v50) = v36++;
      }

      while (v9 != v36);
      LOBYTE(v7) = v33;
    }

    *(a1 + 44) = v9;
    v51 = ((-1640531535 * *(v8 + v37 + 8)) ^ v14) >> (24 - v7);
    v52 = (v51 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v52;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v52;
    __asm { PRFM            #0, [X17] }

    v28 = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v51;
    a3 = v137;
  }

  *(a1 + 104) += v28;
  v58 = (v28 >> 3) & 0x1FFFFFE0;
  v59 = v5 + 4 * v58;
  v60 = (v6 + v58);
  v142 = vld2q_s16(v60);
  v61 = *v60;
  v62 = vdupq_n_s8(v28);
  v63 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v62, v142.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v62, v142.val[1]), 6uLL), 4uLL), 2 * *v60) & 0x5555555555555555;
  if (v63)
  {
    v64 = 0;
    v65 = (2 * *v60);
    do
    {
      v66 = ((__clz(__rbit64(v63)) + v65) >> 1) & 0x1F;
      if (v66)
      {
        v67 = *(v59 + 4 * v66);
        if (v67 < v12)
        {
          break;
        }

        _X7 = v8 + v67;
        __asm { PRFM            #0, [X7] }

        v140[v64++] = v67;
        --v15;
      }

      v63 &= v63 - 1;
    }

    while (v63 && v15);
  }

  else
  {
    v64 = 0;
  }

  if (((v61 - 1) & 0x1F) != 0)
  {
    v70 = 0;
  }

  else
  {
    v70 = 31;
  }

  v71 = v70 + ((v61 - 1) & 0x1F);
  *v60 = v71;
  *(v60 + v71) = v28;
  v72 = *(a1 + 44);
  *(a1 + 44) = v72 + 1;
  *(v59 + 4 * v71) = v72;
  if (v64)
  {
    v73 = 0;
    v74 = a3 - 7;
    v75 = a3 - 1;
    v76 = 3;
    while (1)
    {
      v78 = v140[v73];
      v79 = (v8 + v78);
      if (*(v8 + v78 + v76 - 3) != *(a2 - 3 + v76))
      {
        goto LABEL_36;
      }

      if (v74 <= a2)
      {
        v81 = a2;
        goto LABEL_46;
      }

      if (*v79 == *a2)
      {
        break;
      }

      v77 = __clz(__rbit64(*a2 ^ *v79)) >> 3;
      if (v77 <= v76)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v78;
      v76 = v77;
      if (a2 + v77 == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v73;
      v77 = v76;
      if (v73 == v64)
      {
        goto LABEL_64;
      }
    }

    v79 = (v8 + 8 + v78);
    v80 = (a2 + 8);
    while (1)
    {
      v81 = v80;
      if (v80 >= v74)
      {
        break;
      }

      v83 = *v79++;
      v82 = v83;
      ++v80;
      if (v83 != *v81)
      {
        v77 = v81 + (__clz(__rbit64(*v81 ^ v82)) >> 3) - a2;
        if (v77 <= v76)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v81 < a3 - 3)
    {
      if (*v79 == *v81)
      {
        v79 = (v79 + 4);
        v81 = (v81 + 4);
      }

      if (v81 >= v75)
      {
LABEL_48:
        if (v81 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v81 >= v75)
    {
      goto LABEL_48;
    }

    if (*v79 == *v81)
    {
      v79 = (v79 + 2);
      v81 = (v81 + 2);
    }

    if (v81 >= a3)
    {
LABEL_51:
      v77 = v81 - a2;
      if (v81 - a2 <= v76)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v79 == *v81)
    {
      v81 = (v81 + 1);
    }

    goto LABEL_51;
  }

  v77 = 3;
LABEL_64:
  v84 = 2 * *_X13;
  v143 = vld2q_s16(_X13);
  v85 = vdupq_n_s8(v18);
  v86 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v85, v143.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v85, v143.val[1]), 6uLL), 4uLL), v84) & 0x5555555555555555;
  if (v86)
  {
    v87 = v15 == 0;
  }

  else
  {
    v87 = 1;
  }

  if (!v87)
  {
    v88 = 0;
    v89 = *(v16 + 24);
    v90 = *(v16 + 8);
    v138 = *v16;
    v91 = *v16 - v90;
    v92 = v84 & 0xFE;
    do
    {
      v93 = ((__clz(__rbit64(v86)) + v92) >> 1) & 0x1F;
      if (v93)
      {
        v94 = *(_X10 + 4 * v93);
        if (v94 < v89)
        {
          break;
        }

        _X17 = v90 + v94;
        __asm { PRFM            #0, [X17] }

        v140[v88++] = v94;
        --v15;
      }

      v86 &= v86 - 1;
    }

    while (v86 && v15);
    if (v88)
    {
      v97 = *a2;
      v135 = v9 - v139 + v91 + 3;
      v98 = v140;
      do
      {
        v100 = *v98++;
        v99 = v100;
        v101 = v90 + v100;
        if (*v101 == v97)
        {
          v102 = a3;
          v103 = ZSTD_count_2segments((a2 + 4), (v101 + 4), a3, v138, (v8 + v139));
          a3 = v102;
          if (v103 + 4 > v77)
          {
            *a4 = v135 - v99;
            v77 = v103 + 4;
            if (a2 + v103 + 4 == v102)
            {
              break;
            }
          }
        }

        --v88;
      }

      while (v88);
    }
  }

  return v77;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v146 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v144 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = -1640531535 * *a2;
  v18 = v17 >> (24 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    v29 = (v17 ^ v14) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v142 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    if (v9 - v31 >= 0x181)
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
      if (v31 <= 0xFFFFFF9F)
      {
        v108 = v31 + 96;
        v109 = *(a1 + 52);
        v110 = 24 - v7;
        do
        {
          v111 = ((-1640531535 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v110;
          v112 = (v111 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v112;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v112;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v119 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v111;
          v120 = (v119 >> 2) & 0x3FFFFFC0;
          v121 = v5 + 4 * v120;
          v122 = (v6 + v120);
          if (((*v122 - 1) & 0x3F) != 0)
          {
            v123 = 0;
          }

          else
          {
            v123 = 63;
          }

          v124 = v123 + ((*v122 - 1) & 0x3F);
          *v122 = v124;
          v122[v124] = v119;
          *(v121 + 4 * v124) = v31++;
        }

        while (v108 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
        LOBYTE(v7) = v109;
      }

      v125 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v126 = a2 + 1 - (v8 + v125);
      if ((v126 + 1) < 8)
      {
        v127 = v126 + 1;
      }

      else
      {
        v127 = 8;
      }

      if (a2 + 1 >= v8 + v125)
      {
        v128 = v127;
      }

      else
      {
        v128 = 0;
      }

      if (v125 < v128 + v125)
      {
        v129 = v7;
        v130 = *(a1 + 96);
        v131 = 24 - *(a1 + 52);
        do
        {
          v132 = ((-1640531535 * *(v8 + v125)) ^ v130) >> v131;
          v133 = (v132 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v133;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v133;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v125++ & 7)) = v132;
          --v128;
        }

        while (v128);
        LOBYTE(v7) = v129;
      }
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
    }

    if (v31 >= v9)
    {
      v38 = v9;
    }

    else
    {
      v34 = v7;
      v35 = *(a1 + 8) + 8;
      v36 = 24 - *(a1 + 52);
      v37 = v31;
      v38 = v9;
      do
      {
        v39 = ((-1640531535 * *(v35 + v37)) ^ *(a1 + 96)) >> v36;
        v40 = (v39 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v40;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v40;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v47 = *(v30 + 4 * (v37 & 7));
        *(v30 + 4 * (v37 & 7)) = v39;
        v48 = (v47 >> 2) & 0x3FFFFFC0;
        v49 = v33 + 4 * v48;
        v50 = (v32 + v48);
        if (((*v50 - 1) & 0x3F) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = 63;
        }

        v52 = v51 + ((*v50 - 1) & 0x3F);
        *v50 = v52;
        v50[v52] = v47;
        *(v49 + 4 * v52) = v37++;
      }

      while (v9 != v37);
      LOBYTE(v7) = v34;
    }

    *(a1 + 44) = v9;
    v53 = ((-1640531535 * *(v8 + v38 + 8)) ^ v14) >> (24 - v7);
    v54 = (v53 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v54;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v54;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    v29 = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v53;
    a3 = v142;
  }

  *(a1 + 104) += v29;
  v61 = (v29 >> 2) & 0x3FFFFFC0;
  v62 = v5 + 4 * v61;
  v63 = (v6 + v61);
  v64 = *v63;
  v147 = vld4q_s8(v63);
  v65 = vdupq_n_s8(v29);
  v147.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v147.val[3], v65), vceqq_s8(v147.val[2], v65), 1uLL), vsriq_n_s8(vceqq_s8(v147.val[1], v65), vceqq_s8(v147.val[0], v65), 1uLL), 2uLL);
  v66 = vshrn_n_s16(vsriq_n_s8(v147.val[0], v147.val[0], 4uLL), 4uLL);
  v67 = 0;
  if (v66)
  {
    v68 = __ROR8__(*&v66, v64);
    do
    {
      v69 = (__clz(__rbit64(v68)) + v64) & 0x3F;
      if (v69)
      {
        v70 = *(v62 + 4 * v69);
        if (v70 < v12)
        {
          break;
        }

        _X6 = v8 + v70;
        __asm { PRFM            #0, [X6] }

        v145[v67++] = v70;
        --v15;
      }

      v68 &= v68 - 1;
    }

    while (v68 && v15);
  }

  if (((v64 - 1) & 0x3F) != 0)
  {
    v73 = 0;
  }

  else
  {
    v73 = 63;
  }

  v74 = v73 + ((v64 - 1) & 0x3F);
  *v63 = v74;
  v63[v74] = v29;
  v75 = *(a1 + 44);
  *(a1 + 44) = v75 + 1;
  *(v62 + 4 * v74) = v75;
  if (v67)
  {
    v76 = 0;
    v77 = a3 - 7;
    v78 = a3 - 1;
    v79 = 3;
    while (1)
    {
      v81 = v145[v76];
      v82 = (v8 + v81);
      if (*(v8 + v81 + v79 - 3) != *(a2 - 3 + v79))
      {
        goto LABEL_34;
      }

      if (v77 <= a2)
      {
        v84 = a2;
        goto LABEL_44;
      }

      if (*v82 == *a2)
      {
        break;
      }

      v80 = __clz(__rbit64(*a2 ^ *v82)) >> 3;
      if (v80 <= v79)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v9 + 3 - v81;
      v79 = v80;
      if (a2 + v80 == a3)
      {
        goto LABEL_62;
      }

LABEL_34:
      ++v76;
      v80 = v79;
      if (v76 == v67)
      {
        goto LABEL_62;
      }
    }

    v82 = (v8 + 8 + v81);
    v83 = (a2 + 8);
    while (1)
    {
      v84 = v83;
      if (v83 >= v77)
      {
        break;
      }

      v86 = *v82++;
      v85 = v86;
      ++v83;
      if (v86 != *v84)
      {
        v80 = v84 + (__clz(__rbit64(*v84 ^ v85)) >> 3) - a2;
        if (v80 <= v79)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v84 < a3 - 3)
    {
      if (*v82 == *v84)
      {
        v82 = (v82 + 4);
        v84 = (v84 + 4);
      }

      if (v84 >= v78)
      {
LABEL_46:
        if (v84 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v84 >= v78)
    {
      goto LABEL_46;
    }

    if (*v82 == *v84)
    {
      v82 = (v82 + 2);
      v84 = (v84 + 2);
    }

    if (v84 >= a3)
    {
LABEL_49:
      v80 = v84 - a2;
      if (v84 - a2 <= v79)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v82 == *v84)
    {
      v84 = (v84 + 1);
    }

    goto LABEL_49;
  }

  v80 = 3;
LABEL_62:
  v148 = vld4q_s8(_X12);
  v87 = vdupq_n_s8(v18);
  v148.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v148.val[3], v87), vceqq_s8(v148.val[2], v87), 1uLL), vsriq_n_s8(vceqq_s8(v148.val[1], v87), vceqq_s8(v148.val[0], v87), 1uLL), 2uLL);
  v88 = vshrn_n_s16(vsriq_n_s8(v148.val[0], v148.val[0], 4uLL), 4uLL);
  if (v88)
  {
    v89 = v15 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (!v89)
  {
    v90 = 0;
    v91 = *(v16 + 24);
    v92 = *(v16 + 8);
    v143 = *v16;
    v93 = *v16 - v92;
    v94 = *_X12;
    v95 = __ROR8__(*&v88, v94);
    do
    {
      v96 = (__clz(__rbit64(v95)) + v94) & 0x3F;
      if (v96)
      {
        v97 = *(_X10 + 4 * v96);
        if (v97 < v91)
        {
          break;
        }

        _X17 = v92 + v97;
        __asm { PRFM            #0, [X17] }

        v145[v90++] = v97;
        --v15;
      }

      v95 &= v95 - 1;
    }

    while (v95 && v15);
    if (v90)
    {
      v100 = *a2;
      v140 = v9 - v144 + v93 + 3;
      v101 = v145;
      do
      {
        v103 = *v101++;
        v102 = v103;
        v104 = v92 + v103;
        if (*v104 == v100)
        {
          v105 = a3;
          v106 = ZSTD_count_2segments((a2 + 4), (v104 + 4), a3, v143, (v8 + v144));
          a3 = v105;
          if (v106 + 4 > v80)
          {
            *a4 = v140 - v102;
            v80 = v106 + 4;
            if (a2 + v106 + 4 == v105)
            {
              break;
            }
          }
        }

        --v90;
      }

      while (v90);
    }
  }

  return v80;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v131 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v129 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    if (v9 - v29 >= 0x181)
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
      if (v29 <= 0xFFFFFF9F)
      {
        v99 = v29 + 96;
        v100 = *(a1 + 52);
        v101 = 56 - v7;
        do
        {
          v102 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v101;
          v103 = (v102 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v103;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v103;
          __asm { PRFM            #0, [X22] }

          v108 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v102;
          v109 = (v108 >> 4) & 0xFFFFFF0;
          v110 = v5 + 4 * v109;
          v111 = (v6 + v109);
          if (((*v111 - 1) & 0xF) != 0)
          {
            v112 = 0;
          }

          else
          {
            v112 = 15;
          }

          v113 = v112 + ((*v111 - 1) & 0xF);
          *v111 = v113;
          v111[v113] = v108;
          *(v110 + 4 * v113) = v29++;
        }

        while (v99 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
        LOBYTE(v7) = v100;
      }

      v114 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v115 = a2 + 1 - (v8 + v114);
      if ((v115 + 1) < 8)
      {
        v116 = v115 + 1;
      }

      else
      {
        v116 = 8;
      }

      if (a2 + 1 >= v8 + v114)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0;
      }

      if (v114 < v117 + v114)
      {
        v118 = v7;
        v119 = *(a1 + 96);
        v120 = 56 - *(a1 + 52);
        do
        {
          v121 = ((0xCF1BBCDCBB000000 * *(v8 + v114)) ^ v119) >> v120;
          v122 = (v121 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v122;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v122;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v114++ & 7)) = v121;
          --v117;
        }

        while (v117);
        LOBYTE(v7) = v118;
      }
    }

    else
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
    }

    if (v29 >= v9)
    {
      v36 = v9;
    }

    else
    {
      v32 = v7;
      v33 = *(a1 + 8) + 8;
      v34 = 56 - *(a1 + 52);
      v35 = v29;
      v36 = v9;
      do
      {
        v37 = ((0xCF1BBCDCBB000000 * *(v33 + v35)) ^ *(a1 + 96)) >> v34;
        v38 = (v37 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v38;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v38;
        __asm { PRFM            #0, [X24] }

        v43 = *(v28 + 4 * (v35 & 7));
        *(v28 + 4 * (v35 & 7)) = v37;
        v44 = (v43 >> 4) & 0xFFFFFF0;
        v45 = v31 + 4 * v44;
        v46 = (v30 + v44);
        if (((*v46 - 1) & 0xF) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 15;
        }

        v48 = v47 + ((*v46 - 1) & 0xF);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v35++;
      }

      while (v9 != v35);
      LOBYTE(v7) = v32;
    }

    *(a1 + 44) = v9;
    v49 = ((0xCF1BBCDCBB000000 * *(v8 + v36 + 8)) ^ v14) >> (56 - v7);
    v50 = (v49 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v50;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v50;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v49;
    a3 = v129;
  }

  *(a1 + 104) += _X17;
  v54 = (_X17 >> 4) & 0xFFFFFF0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v57 = *v56;
  v58 = __ROR8__(vshrn_n_s16(vceqq_s8(*v56, vdupq_n_s8(_X17)), 4uLL), 4 * v56->i8[0]) & 0x8888888888888888;
  if (v58)
  {
    v59 = 0;
    v60 = (4 * v56->i8[0]);
    do
    {
      v61 = ((__clz(__rbit64(v58)) + v60) >> 2) & 0xF;
      if (v61)
      {
        v62 = *(v55 + 4 * v61);
        if (v62 < v12)
        {
          break;
        }

        _X7 = v8 + v62;
        __asm { PRFM            #0, [X7] }

        v132[v59++] = v62;
        --v15;
      }

      v58 &= v58 - 1;
    }

    while (v58 && v15);
  }

  else
  {
    v59 = 0;
  }

  if (((v57 - 1) & 0xF) != 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = 15;
  }

  v66 = v65 + ((v57 - 1) & 0xF);
  v56->i8[0] = v66;
  v56->i8[v66] = _X17;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v55 + 4 * v66) = v67;
  if (v59)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = a3 - 1;
    v71 = 3;
    while (1)
    {
      v73 = v132[v68];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v71 - 3) != *(a2 - 3 + v71))
      {
        goto LABEL_36;
      }

      if (v69 <= a2)
      {
        v76 = a2;
        goto LABEL_46;
      }

      if (*v74 == *a2)
      {
        break;
      }

      v72 = __clz(__rbit64(*a2 ^ *v74)) >> 3;
      if (v72 <= v71)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v73;
      v71 = v72;
      if (a2 + v72 == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v68;
      v72 = v71;
      if (v68 == v59)
      {
        goto LABEL_64;
      }
    }

    v74 = (v8 + 8 + v73);
    v75 = (a2 + 8);
    while (1)
    {
      v76 = v75;
      if (v75 >= v69)
      {
        break;
      }

      v78 = *v74++;
      v77 = v78;
      ++v75;
      if (v78 != *v76)
      {
        v72 = v76 + (__clz(__rbit64(*v76 ^ v77)) >> 3) - a2;
        if (v72 <= v71)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v76 < a3 - 3)
    {
      if (*v74 == *v76)
      {
        v74 = (v74 + 4);
        v76 = (v76 + 4);
      }

      if (v76 >= v70)
      {
LABEL_48:
        if (v76 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v76 >= v70)
    {
      goto LABEL_48;
    }

    if (*v74 == *v76)
    {
      v74 = (v74 + 2);
      v76 = (v76 + 2);
    }

    if (v76 >= a3)
    {
LABEL_51:
      v72 = v76 - a2;
      if (v76 - a2 <= v71)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v74 == *v76)
    {
      v76 = (v76 + 1);
    }

    goto LABEL_51;
  }

  v72 = 3;
LABEL_64:
  v79 = 4 * _X13->i8[0];
  v80 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v79) & 0x8888888888888888;
  if (v80)
  {
    v81 = v15 == 0;
  }

  else
  {
    v81 = 1;
  }

  if (!v81)
  {
    v82 = 0;
    v83 = *(v16 + 24);
    v84 = *(v16 + 8);
    v130 = *v16;
    v85 = *v16 - v84;
    v86 = v79 & 0xFC;
    do
    {
      v87 = ((__clz(__rbit64(v80)) + v86) >> 2) & 0xF;
      if (v87)
      {
        v88 = *(_X10 + 4 * v87);
        if (v88 < v83)
        {
          break;
        }

        _X17 = v84 + v88;
        __asm { PRFM            #0, [X17] }

        v132[v82++] = v88;
        --v15;
      }

      v80 &= v80 - 1;
    }

    while (v80 && v15);
    if (v82)
    {
      v91 = *a2;
      v127 = v9 - v131 + v85 + 3;
      v92 = v132;
      do
      {
        v94 = *v92++;
        v93 = v94;
        v95 = v84 + v94;
        if (*v95 == v91)
        {
          v96 = a3;
          v97 = ZSTD_count_2segments((a2 + 4), (v95 + 4), a3, v130, (v8 + v131));
          a3 = v96;
          if (v97 + 4 > v72)
          {
            *a4 = v127 - v93;
            v72 = v97 + 4;
            if (a2 + v97 + 4 == v96)
            {
              break;
            }
          }
        }

        --v82;
      }

      while (v82);
    }
  }

  return v72;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v140 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v138 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v136 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    if (v9 - v30 >= 0x181)
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
      if (v30 <= 0xFFFFFF9F)
      {
        v104 = v30 + 96;
        v105 = *(a1 + 52);
        v106 = 56 - v7;
        do
        {
          v107 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v106;
          v108 = (v107 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v108;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v108;
          __asm { PRFM            #0, [X22] }

          v114 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v107;
          v115 = (v114 >> 3) & 0x1FFFFFE0;
          v116 = v5 + 4 * v115;
          v117 = (v6 + v115);
          if (((*v117 - 1) & 0x1F) != 0)
          {
            v118 = 0;
          }

          else
          {
            v118 = 31;
          }

          v119 = v118 + ((*v117 - 1) & 0x1F);
          *v117 = v119;
          v117[v119] = v114;
          *(v116 + 4 * v119) = v30++;
        }

        while (v104 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
        LOBYTE(v7) = v105;
      }

      v120 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v121 = a2 + 1 - (v8 + v120);
      if ((v121 + 1) < 8)
      {
        v122 = v121 + 1;
      }

      else
      {
        v122 = 8;
      }

      if (a2 + 1 >= v8 + v120)
      {
        v123 = v122;
      }

      else
      {
        v123 = 0;
      }

      if (v120 < v123 + v120)
      {
        v124 = v7;
        v125 = *(a1 + 96);
        v126 = 56 - *(a1 + 52);
        do
        {
          v127 = ((0xCF1BBCDCBB000000 * *(v8 + v120)) ^ v125) >> v126;
          v128 = (v127 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v128;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v128;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v120++ & 7)) = v127;
          --v123;
        }

        while (v123);
        LOBYTE(v7) = v124;
      }
    }

    else
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
    }

    if (v30 >= v9)
    {
      v37 = v9;
    }

    else
    {
      v33 = v7;
      v34 = *(a1 + 8) + 8;
      v35 = 56 - *(a1 + 52);
      v36 = v30;
      v37 = v9;
      do
      {
        v38 = ((0xCF1BBCDCBB000000 * *(v34 + v36)) ^ *(a1 + 96)) >> v35;
        v39 = (v38 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v39;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v39;
        __asm { PRFM            #0, [X24] }

        v45 = *(v29 + 4 * (v36 & 7));
        *(v29 + 4 * (v36 & 7)) = v38;
        v46 = (v45 >> 3) & 0x1FFFFFE0;
        v47 = v32 + 4 * v46;
        v48 = (v31 + v46);
        if (((*v48 - 1) & 0x1F) != 0)
        {
          v49 = 0;
        }

        else
        {
          v49 = 31;
        }

        v50 = v49 + ((*v48 - 1) & 0x1F);
        *v48 = v50;
        v48[v50] = v45;
        *(v47 + 4 * v50) = v36++;
      }

      while (v9 != v36);
      LOBYTE(v7) = v33;
    }

    *(a1 + 44) = v9;
    v51 = ((0xCF1BBCDCBB000000 * *(v8 + v37 + 8)) ^ v14) >> (56 - v7);
    v52 = (v51 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v52;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v52;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v51;
    a3 = v136;
  }

  *(a1 + 104) += _X17;
  v57 = (_X17 >> 3) & 0x1FFFFFE0;
  v58 = v5 + 4 * v57;
  v59 = (v6 + v57);
  v141 = vld2q_s16(v59);
  v60 = *v59;
  v61 = vdupq_n_s8(_X17);
  v62 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v61, v141.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v61, v141.val[1]), 6uLL), 4uLL), 2 * *v59) & 0x5555555555555555;
  if (v62)
  {
    v63 = 0;
    v64 = (2 * *v59);
    do
    {
      v65 = ((__clz(__rbit64(v62)) + v64) >> 1) & 0x1F;
      if (v65)
      {
        v66 = *(v58 + 4 * v65);
        if (v66 < v12)
        {
          break;
        }

        _X7 = v8 + v66;
        __asm { PRFM            #0, [X7] }

        v139[v63++] = v66;
        --v15;
      }

      v62 &= v62 - 1;
    }

    while (v62 && v15);
  }

  else
  {
    v63 = 0;
  }

  if (((v60 - 1) & 0x1F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 31;
  }

  v70 = v69 + ((v60 - 1) & 0x1F);
  *v59 = v70;
  *(v59 + v70) = _X17;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v58 + 4 * v70) = v71;
  if (v63)
  {
    v72 = 0;
    v73 = a3 - 7;
    v74 = a3 - 1;
    v75 = 3;
    while (1)
    {
      v77 = v139[v72];
      v78 = (v8 + v77);
      if (*(v8 + v77 + v75 - 3) != *(a2 - 3 + v75))
      {
        goto LABEL_36;
      }

      if (v73 <= a2)
      {
        v80 = a2;
        goto LABEL_46;
      }

      if (*v78 == *a2)
      {
        break;
      }

      v76 = __clz(__rbit64(*a2 ^ *v78)) >> 3;
      if (v76 <= v75)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v77;
      v75 = v76;
      if (a2 + v76 == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v72;
      v76 = v75;
      if (v72 == v63)
      {
        goto LABEL_64;
      }
    }

    v78 = (v8 + 8 + v77);
    v79 = (a2 + 8);
    while (1)
    {
      v80 = v79;
      if (v79 >= v73)
      {
        break;
      }

      v82 = *v78++;
      v81 = v82;
      ++v79;
      if (v82 != *v80)
      {
        v76 = v80 + (__clz(__rbit64(*v80 ^ v81)) >> 3) - a2;
        if (v76 <= v75)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v80 < a3 - 3)
    {
      if (*v78 == *v80)
      {
        v78 = (v78 + 4);
        v80 = (v80 + 4);
      }

      if (v80 >= v74)
      {
LABEL_48:
        if (v80 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v80 >= v74)
    {
      goto LABEL_48;
    }

    if (*v78 == *v80)
    {
      v78 = (v78 + 2);
      v80 = (v80 + 2);
    }

    if (v80 >= a3)
    {
LABEL_51:
      v76 = v80 - a2;
      if (v80 - a2 <= v75)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v78 == *v80)
    {
      v80 = (v80 + 1);
    }

    goto LABEL_51;
  }

  v76 = 3;
LABEL_64:
  v83 = 2 * *_X13;
  v142 = vld2q_s16(_X13);
  v84 = vdupq_n_s8(v18);
  v85 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v84, v142.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v84, v142.val[1]), 6uLL), 4uLL), v83) & 0x5555555555555555;
  if (v85)
  {
    v86 = v15 == 0;
  }

  else
  {
    v86 = 1;
  }

  if (!v86)
  {
    v87 = 0;
    v88 = *(v16 + 24);
    v89 = *(v16 + 8);
    v137 = *v16;
    v90 = *v16 - v89;
    v91 = v83 & 0xFE;
    do
    {
      v92 = ((__clz(__rbit64(v85)) + v91) >> 1) & 0x1F;
      if (v92)
      {
        v93 = *(_X10 + 4 * v92);
        if (v93 < v88)
        {
          break;
        }

        _X17 = v89 + v93;
        __asm { PRFM            #0, [X17] }

        v139[v87++] = v93;
        --v15;
      }

      v85 &= v85 - 1;
    }

    while (v85 && v15);
    if (v87)
    {
      v96 = *a2;
      v134 = v9 - v138 + v90 + 3;
      v97 = v139;
      do
      {
        v99 = *v97++;
        v98 = v99;
        v100 = v89 + v99;
        if (*v100 == v96)
        {
          v101 = a3;
          v102 = ZSTD_count_2segments((a2 + 4), (v100 + 4), a3, v137, (v8 + v138));
          a3 = v101;
          if (v102 + 4 > v76)
          {
            *a4 = v134 - v98;
            v76 = v102 + 4;
            if (a2 + v102 + 4 == v101)
            {
              break;
            }
          }
        }

        --v87;
      }

      while (v87);
    }
  }

  return v76;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_5_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v143 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v141 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    if (v9 - v31 >= 0x181)
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
      if (v31 <= 0xFFFFFF9F)
      {
        v107 = v31 + 96;
        v108 = *(a1 + 52);
        v109 = 56 - v7;
        do
        {
          v110 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v109;
          v111 = (v110 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v111;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v111;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v118 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v110;
          v119 = (v118 >> 2) & 0x3FFFFFC0;
          v120 = v5 + 4 * v119;
          v121 = (v6 + v119);
          if (((*v121 - 1) & 0x3F) != 0)
          {
            v122 = 0;
          }

          else
          {
            v122 = 63;
          }

          v123 = v122 + ((*v121 - 1) & 0x3F);
          *v121 = v123;
          v121[v123] = v118;
          *(v120 + 4 * v123) = v31++;
        }

        while (v107 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
        LOBYTE(v7) = v108;
      }

      v124 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v125 = a2 + 1 - (v8 + v124);
      if ((v125 + 1) < 8)
      {
        v126 = v125 + 1;
      }

      else
      {
        v126 = 8;
      }

      if (a2 + 1 >= v8 + v124)
      {
        v127 = v126;
      }

      else
      {
        v127 = 0;
      }

      if (v124 < v127 + v124)
      {
        v128 = v7;
        v129 = *(a1 + 96);
        v130 = 56 - *(a1 + 52);
        do
        {
          v131 = ((0xCF1BBCDCBB000000 * *(v8 + v124)) ^ v129) >> v130;
          v132 = (v131 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v132;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v132;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v124++ & 7)) = v131;
          --v127;
        }

        while (v127);
        LOBYTE(v7) = v128;
      }
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
    }

    if (v31 >= v9)
    {
      v38 = v9;
    }

    else
    {
      v34 = v7;
      v35 = *(a1 + 8) + 8;
      v36 = 56 - *(a1 + 52);
      v37 = v31;
      v38 = v9;
      do
      {
        v39 = ((0xCF1BBCDCBB000000 * *(v35 + v37)) ^ *(a1 + 96)) >> v36;
        v40 = (v39 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v40;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v40;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v47 = *(v30 + 4 * (v37 & 7));
        *(v30 + 4 * (v37 & 7)) = v39;
        v48 = (v47 >> 2) & 0x3FFFFFC0;
        v49 = v33 + 4 * v48;
        v50 = (v32 + v48);
        if (((*v50 - 1) & 0x3F) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = 63;
        }

        v52 = v51 + ((*v50 - 1) & 0x3F);
        *v50 = v52;
        v50[v52] = v47;
        *(v49 + 4 * v52) = v37++;
      }

      while (v9 != v37);
      LOBYTE(v7) = v34;
    }

    *(a1 + 44) = v9;
    v53 = ((0xCF1BBCDCBB000000 * *(v8 + v38 + 8)) ^ v14) >> (56 - v7);
    v54 = (v53 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v54;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v54;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    LODWORD(_X17) = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v53;
    a3 = v141;
  }

  *(a1 + 104) += _X17;
  v60 = (_X17 >> 2) & 0x3FFFFFC0;
  v61 = v5 + 4 * v60;
  v62 = (v6 + v60);
  v63 = *v62;
  v146 = vld4q_s8(v62);
  v64 = vdupq_n_s8(_X17);
  v146.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v146.val[3], v64), vceqq_s8(v146.val[2], v64), 1uLL), vsriq_n_s8(vceqq_s8(v146.val[1], v64), vceqq_s8(v146.val[0], v64), 1uLL), 2uLL);
  v65 = vshrn_n_s16(vsriq_n_s8(v146.val[0], v146.val[0], 4uLL), 4uLL);
  v66 = 0;
  if (v65)
  {
    v67 = __ROR8__(*&v65, v63);
    do
    {
      v68 = (__clz(__rbit64(v67)) + v63) & 0x3F;
      if (v68)
      {
        v69 = *(v61 + 4 * v68);
        if (v69 < v12)
        {
          break;
        }

        _X6 = v8 + v69;
        __asm { PRFM            #0, [X6] }

        v144[v66++] = v69;
        --v15;
      }

      v67 &= v67 - 1;
    }

    while (v67 && v15);
  }

  if (((v63 - 1) & 0x3F) != 0)
  {
    v72 = 0;
  }

  else
  {
    v72 = 63;
  }

  v73 = v72 + ((v63 - 1) & 0x3F);
  *v62 = v73;
  v62[v73] = _X17;
  v74 = *(a1 + 44);
  *(a1 + 44) = v74 + 1;
  *(v61 + 4 * v73) = v74;
  if (v66)
  {
    v75 = 0;
    v76 = a3 - 7;
    v77 = a3 - 1;
    v78 = 3;
    while (1)
    {
      v80 = v144[v75];
      v81 = (v8 + v80);
      if (*(v8 + v80 + v78 - 3) != *(a2 - 3 + v78))
      {
        goto LABEL_34;
      }

      if (v76 <= a2)
      {
        v83 = a2;
        goto LABEL_44;
      }

      if (*v81 == *a2)
      {
        break;
      }

      v79 = __clz(__rbit64(*a2 ^ *v81)) >> 3;
      if (v79 <= v78)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v9 + 3 - v80;
      v78 = v79;
      if (a2 + v79 == a3)
      {
        goto LABEL_62;
      }

LABEL_34:
      ++v75;
      v79 = v78;
      if (v75 == v66)
      {
        goto LABEL_62;
      }
    }

    v81 = (v8 + 8 + v80);
    v82 = (a2 + 8);
    while (1)
    {
      v83 = v82;
      if (v82 >= v76)
      {
        break;
      }

      v85 = *v81++;
      v84 = v85;
      ++v82;
      if (v85 != *v83)
      {
        v79 = v83 + (__clz(__rbit64(*v83 ^ v84)) >> 3) - a2;
        if (v79 <= v78)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v83 < a3 - 3)
    {
      if (*v81 == *v83)
      {
        v81 = (v81 + 4);
        v83 = (v83 + 4);
      }

      if (v83 >= v77)
      {
LABEL_46:
        if (v83 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v83 >= v77)
    {
      goto LABEL_46;
    }

    if (*v81 == *v83)
    {
      v81 = (v81 + 2);
      v83 = (v83 + 2);
    }

    if (v83 >= a3)
    {
LABEL_49:
      v79 = v83 - a2;
      if (v83 - a2 <= v78)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v81 == *v83)
    {
      v83 = (v83 + 1);
    }

    goto LABEL_49;
  }

  v79 = 3;
LABEL_62:
  v147 = vld4q_s8(_X12);
  v86 = vdupq_n_s8(v18);
  v147.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v147.val[3], v86), vceqq_s8(v147.val[2], v86), 1uLL), vsriq_n_s8(vceqq_s8(v147.val[1], v86), vceqq_s8(v147.val[0], v86), 1uLL), 2uLL);
  v87 = vshrn_n_s16(vsriq_n_s8(v147.val[0], v147.val[0], 4uLL), 4uLL);
  if (v87)
  {
    v88 = v15 == 0;
  }

  else
  {
    v88 = 1;
  }

  if (!v88)
  {
    v89 = 0;
    v90 = *(v16 + 24);
    v91 = *(v16 + 8);
    v142 = *v16;
    v92 = *v16 - v91;
    v93 = *_X12;
    v94 = __ROR8__(*&v87, v93);
    do
    {
      v95 = (__clz(__rbit64(v94)) + v93) & 0x3F;
      if (v95)
      {
        v96 = *(_X10 + 4 * v95);
        if (v96 < v90)
        {
          break;
        }

        _X17 = v91 + v96;
        __asm { PRFM            #0, [X17] }

        v144[v89++] = v96;
        --v15;
      }

      v94 &= v94 - 1;
    }

    while (v94 && v15);
    if (v89)
    {
      v99 = *a2;
      v139 = v9 - v143 + v92 + 3;
      v100 = v144;
      do
      {
        v102 = *v100++;
        v101 = v102;
        v103 = v91 + v102;
        if (*v103 == v99)
        {
          v104 = a3;
          v105 = ZSTD_count_2segments((a2 + 4), (v103 + 4), a3, v142, (v8 + v143));
          a3 = v104;
          if (v105 + 4 > v79)
          {
            *a4 = v139 - v101;
            v79 = v105 + 4;
            if (a2 + v105 + 4 == v104)
            {
              break;
            }
          }
        }

        --v89;
      }

      while (v89);
    }
  }

  return v79;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v131 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v129 = a3;
    v28 = a1 + 64;
    v29 = *(a1 + 44);
    if (v9 - v29 >= 0x181)
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
      if (v29 <= 0xFFFFFF9F)
      {
        v99 = v29 + 96;
        v100 = *(a1 + 52);
        v101 = 56 - v7;
        do
        {
          v102 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v29)) ^ *(a1 + 96)) >> v101;
          v103 = (v102 >> 4) & 0xFFFFFF0;
          _X23 = v5 + 4 * v103;
          __asm { PRFM            #0, [X23] }

          _X22 = v6 + v103;
          __asm { PRFM            #0, [X22] }

          v108 = *(v28 + 4 * (v29 & 7));
          *(v28 + 4 * (v29 & 7)) = v102;
          v109 = (v108 >> 4) & 0xFFFFFF0;
          v110 = v5 + 4 * v109;
          v111 = (v6 + v109);
          if (((*v111 - 1) & 0xF) != 0)
          {
            v112 = 0;
          }

          else
          {
            v112 = 15;
          }

          v113 = v112 + ((*v111 - 1) & 0xF);
          *v111 = v113;
          v111[v113] = v108;
          *(v110 + 4 * v113) = v29++;
        }

        while (v99 != v29);
        v31 = *(a1 + 112);
        v30 = *(a1 + 56);
        LOBYTE(v7) = v100;
      }

      v114 = v9 - 32;
      LODWORD(v29) = v9 - 32;
      v115 = a2 + 1 - (v8 + v114);
      if ((v115 + 1) < 8)
      {
        v116 = v115 + 1;
      }

      else
      {
        v116 = 8;
      }

      if (a2 + 1 >= v8 + v114)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0;
      }

      if (v114 < v117 + v114)
      {
        v118 = v7;
        v119 = *(a1 + 96);
        v120 = 56 - *(a1 + 52);
        do
        {
          v121 = ((0xCF1BBCDCBF9B0000 * *(v8 + v114)) ^ v119) >> v120;
          v122 = (v121 >> 4) & 0xFFFFFF0;
          _X26 = v31 + 4 * v122;
          __asm { PRFM            #0, [X26] }

          _X24 = v30 + v122;
          __asm { PRFM            #0, [X24] }

          *(v28 + 4 * (v114++ & 7)) = v121;
          --v117;
        }

        while (v117);
        LOBYTE(v7) = v118;
      }
    }

    else
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 112);
    }

    if (v29 >= v9)
    {
      v36 = v9;
    }

    else
    {
      v32 = v7;
      v33 = *(a1 + 8) + 8;
      v34 = 56 - *(a1 + 52);
      v35 = v29;
      v36 = v9;
      do
      {
        v37 = ((0xCF1BBCDCBF9B0000 * *(v33 + v35)) ^ *(a1 + 96)) >> v34;
        v38 = (v37 >> 4) & 0xFFFFFF0;
        _X26 = v31 + 4 * v38;
        __asm { PRFM            #0, [X26] }

        _X24 = v30 + v38;
        __asm { PRFM            #0, [X24] }

        v43 = *(v28 + 4 * (v35 & 7));
        *(v28 + 4 * (v35 & 7)) = v37;
        v44 = (v43 >> 4) & 0xFFFFFF0;
        v45 = v31 + 4 * v44;
        v46 = (v30 + v44);
        if (((*v46 - 1) & 0xF) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 15;
        }

        v48 = v47 + ((*v46 - 1) & 0xF);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v35++;
      }

      while (v9 != v35);
      LOBYTE(v7) = v32;
    }

    *(a1 + 44) = v9;
    v49 = ((0xCF1BBCDCBF9B0000 * *(v8 + v36 + 8)) ^ v14) >> (56 - v7);
    v50 = (v49 >> 4) & 0xFFFFFF0;
    _X2 = v5 + 4 * v50;
    __asm { PRFM            #0, [X2] }

    _X17 = v6 + v50;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v28 + 4 * (v9 & 7));
    *(v28 + 4 * (v9 & 7)) = v49;
    a3 = v129;
  }

  *(a1 + 104) += _X17;
  v54 = (_X17 >> 4) & 0xFFFFFF0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v57 = *v56;
  v58 = __ROR8__(vshrn_n_s16(vceqq_s8(*v56, vdupq_n_s8(_X17)), 4uLL), 4 * v56->i8[0]) & 0x8888888888888888;
  if (v58)
  {
    v59 = 0;
    v60 = (4 * v56->i8[0]);
    do
    {
      v61 = ((__clz(__rbit64(v58)) + v60) >> 2) & 0xF;
      if (v61)
      {
        v62 = *(v55 + 4 * v61);
        if (v62 < v12)
        {
          break;
        }

        _X7 = v8 + v62;
        __asm { PRFM            #0, [X7] }

        v132[v59++] = v62;
        --v15;
      }

      v58 &= v58 - 1;
    }

    while (v58 && v15);
  }

  else
  {
    v59 = 0;
  }

  if (((v57 - 1) & 0xF) != 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = 15;
  }

  v66 = v65 + ((v57 - 1) & 0xF);
  v56->i8[0] = v66;
  v56->i8[v66] = _X17;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v55 + 4 * v66) = v67;
  if (v59)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = a3 - 1;
    v71 = 3;
    while (1)
    {
      v73 = v132[v68];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v71 - 3) != *(a2 - 3 + v71))
      {
        goto LABEL_36;
      }

      if (v69 <= a2)
      {
        v76 = a2;
        goto LABEL_46;
      }

      if (*v74 == *a2)
      {
        break;
      }

      v72 = __clz(__rbit64(*a2 ^ *v74)) >> 3;
      if (v72 <= v71)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v73;
      v71 = v72;
      if (a2 + v72 == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v68;
      v72 = v71;
      if (v68 == v59)
      {
        goto LABEL_64;
      }
    }

    v74 = (v8 + 8 + v73);
    v75 = (a2 + 8);
    while (1)
    {
      v76 = v75;
      if (v75 >= v69)
      {
        break;
      }

      v78 = *v74++;
      v77 = v78;
      ++v75;
      if (v78 != *v76)
      {
        v72 = v76 + (__clz(__rbit64(*v76 ^ v77)) >> 3) - a2;
        if (v72 <= v71)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v76 < a3 - 3)
    {
      if (*v74 == *v76)
      {
        v74 = (v74 + 4);
        v76 = (v76 + 4);
      }

      if (v76 >= v70)
      {
LABEL_48:
        if (v76 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v76 >= v70)
    {
      goto LABEL_48;
    }

    if (*v74 == *v76)
    {
      v74 = (v74 + 2);
      v76 = (v76 + 2);
    }

    if (v76 >= a3)
    {
LABEL_51:
      v72 = v76 - a2;
      if (v76 - a2 <= v71)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v74 == *v76)
    {
      v76 = (v76 + 1);
    }

    goto LABEL_51;
  }

  v72 = 3;
LABEL_64:
  v79 = 4 * _X13->i8[0];
  v80 = __ROR8__(vshrn_n_s16(vceqq_s8(*_X13, vdupq_n_s8(v18)), 4uLL), v79) & 0x8888888888888888;
  if (v80)
  {
    v81 = v15 == 0;
  }

  else
  {
    v81 = 1;
  }

  if (!v81)
  {
    v82 = 0;
    v83 = *(v16 + 24);
    v84 = *(v16 + 8);
    v130 = *v16;
    v85 = *v16 - v84;
    v86 = v79 & 0xFC;
    do
    {
      v87 = ((__clz(__rbit64(v80)) + v86) >> 2) & 0xF;
      if (v87)
      {
        v88 = *(_X10 + 4 * v87);
        if (v88 < v83)
        {
          break;
        }

        _X17 = v84 + v88;
        __asm { PRFM            #0, [X17] }

        v132[v82++] = v88;
        --v15;
      }

      v80 &= v80 - 1;
    }

    while (v80 && v15);
    if (v82)
    {
      v91 = *a2;
      v127 = v9 - v131 + v85 + 3;
      v92 = v132;
      do
      {
        v94 = *v92++;
        v93 = v94;
        v95 = v84 + v94;
        if (*v95 == v91)
        {
          v96 = a3;
          v97 = ZSTD_count_2segments((a2 + 4), (v95 + 4), a3, v130, (v8 + v131));
          a3 = v96;
          if (v97 + 4 > v72)
          {
            *a4 = v127 - v93;
            v72 = v97 + 4;
            if (a2 + v97 + 4 == v96)
            {
              break;
            }
          }
        }

        --v82;
      }

      while (v82);
    }
  }

  return v72;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v140 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v138 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 3) & 0x1FFFFFE0;
  _X13 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X13]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v136 = a3;
    v29 = a1 + 64;
    v30 = *(a1 + 44);
    if (v9 - v30 >= 0x181)
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
      if (v30 <= 0xFFFFFF9F)
      {
        v104 = v30 + 96;
        v105 = *(a1 + 52);
        v106 = 56 - v7;
        do
        {
          v107 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v30)) ^ *(a1 + 96)) >> v106;
          v108 = (v107 >> 3) & 0x1FFFFFE0;
          _X23 = v5 + 4 * v108;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v108;
          __asm { PRFM            #0, [X22] }

          v114 = *(v29 + 4 * (v30 & 7));
          *(v29 + 4 * (v30 & 7)) = v107;
          v115 = (v114 >> 3) & 0x1FFFFFE0;
          v116 = v5 + 4 * v115;
          v117 = (v6 + v115);
          if (((*v117 - 1) & 0x1F) != 0)
          {
            v118 = 0;
          }

          else
          {
            v118 = 31;
          }

          v119 = v118 + ((*v117 - 1) & 0x1F);
          *v117 = v119;
          v117[v119] = v114;
          *(v116 + 4 * v119) = v30++;
        }

        while (v104 != v30);
        v32 = *(a1 + 112);
        v31 = *(a1 + 56);
        LOBYTE(v7) = v105;
      }

      v120 = v9 - 32;
      LODWORD(v30) = v9 - 32;
      v121 = a2 + 1 - (v8 + v120);
      if ((v121 + 1) < 8)
      {
        v122 = v121 + 1;
      }

      else
      {
        v122 = 8;
      }

      if (a2 + 1 >= v8 + v120)
      {
        v123 = v122;
      }

      else
      {
        v123 = 0;
      }

      if (v120 < v123 + v120)
      {
        v124 = v7;
        v125 = *(a1 + 96);
        v126 = 56 - *(a1 + 52);
        do
        {
          v127 = ((0xCF1BBCDCBF9B0000 * *(v8 + v120)) ^ v125) >> v126;
          v128 = (v127 >> 3) & 0x1FFFFFE0;
          _X26 = v32 + 4 * v128;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v31 + v128;
          __asm { PRFM            #0, [X24] }

          *(v29 + 4 * (v120++ & 7)) = v127;
          --v123;
        }

        while (v123);
        LOBYTE(v7) = v124;
      }
    }

    else
    {
      v31 = *(a1 + 56);
      v32 = *(a1 + 112);
    }

    if (v30 >= v9)
    {
      v37 = v9;
    }

    else
    {
      v33 = v7;
      v34 = *(a1 + 8) + 8;
      v35 = 56 - *(a1 + 52);
      v36 = v30;
      v37 = v9;
      do
      {
        v38 = ((0xCF1BBCDCBF9B0000 * *(v34 + v36)) ^ *(a1 + 96)) >> v35;
        v39 = (v38 >> 3) & 0x1FFFFFE0;
        _X26 = v32 + 4 * v39;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v31 + v39;
        __asm { PRFM            #0, [X24] }

        v45 = *(v29 + 4 * (v36 & 7));
        *(v29 + 4 * (v36 & 7)) = v38;
        v46 = (v45 >> 3) & 0x1FFFFFE0;
        v47 = v32 + 4 * v46;
        v48 = (v31 + v46);
        if (((*v48 - 1) & 0x1F) != 0)
        {
          v49 = 0;
        }

        else
        {
          v49 = 31;
        }

        v50 = v49 + ((*v48 - 1) & 0x1F);
        *v48 = v50;
        v48[v50] = v45;
        *(v47 + 4 * v50) = v36++;
      }

      while (v9 != v36);
      LOBYTE(v7) = v33;
    }

    *(a1 + 44) = v9;
    v51 = ((0xCF1BBCDCBF9B0000 * *(v8 + v37 + 8)) ^ v14) >> (56 - v7);
    v52 = (v51 >> 3) & 0x1FFFFFE0;
    _X2 = v5 + 4 * v52;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v52;
    __asm { PRFM            #0, [X17] }

    LODWORD(_X17) = *(v29 + 4 * (v9 & 7));
    *(v29 + 4 * (v9 & 7)) = v51;
    a3 = v136;
  }

  *(a1 + 104) += _X17;
  v57 = (_X17 >> 3) & 0x1FFFFFE0;
  v58 = v5 + 4 * v57;
  v59 = (v6 + v57);
  v141 = vld2q_s16(v59);
  v60 = *v59;
  v61 = vdupq_n_s8(_X17);
  v62 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v61, v141.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v61, v141.val[1]), 6uLL), 4uLL), 2 * *v59) & 0x5555555555555555;
  if (v62)
  {
    v63 = 0;
    v64 = (2 * *v59);
    do
    {
      v65 = ((__clz(__rbit64(v62)) + v64) >> 1) & 0x1F;
      if (v65)
      {
        v66 = *(v58 + 4 * v65);
        if (v66 < v12)
        {
          break;
        }

        _X7 = v8 + v66;
        __asm { PRFM            #0, [X7] }

        v139[v63++] = v66;
        --v15;
      }

      v62 &= v62 - 1;
    }

    while (v62 && v15);
  }

  else
  {
    v63 = 0;
  }

  if (((v60 - 1) & 0x1F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 31;
  }

  v70 = v69 + ((v60 - 1) & 0x1F);
  *v59 = v70;
  *(v59 + v70) = _X17;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v58 + 4 * v70) = v71;
  if (v63)
  {
    v72 = 0;
    v73 = a3 - 7;
    v74 = a3 - 1;
    v75 = 3;
    while (1)
    {
      v77 = v139[v72];
      v78 = (v8 + v77);
      if (*(v8 + v77 + v75 - 3) != *(a2 - 3 + v75))
      {
        goto LABEL_36;
      }

      if (v73 <= a2)
      {
        v80 = a2;
        goto LABEL_46;
      }

      if (*v78 == *a2)
      {
        break;
      }

      v76 = __clz(__rbit64(*a2 ^ *v78)) >> 3;
      if (v76 <= v75)
      {
        goto LABEL_36;
      }

LABEL_61:
      *a4 = v9 + 3 - v77;
      v75 = v76;
      if (a2 + v76 == a3)
      {
        goto LABEL_64;
      }

LABEL_36:
      ++v72;
      v76 = v75;
      if (v72 == v63)
      {
        goto LABEL_64;
      }
    }

    v78 = (v8 + 8 + v77);
    v79 = (a2 + 8);
    while (1)
    {
      v80 = v79;
      if (v79 >= v73)
      {
        break;
      }

      v82 = *v78++;
      v81 = v82;
      ++v79;
      if (v82 != *v80)
      {
        v76 = v80 + (__clz(__rbit64(*v80 ^ v81)) >> 3) - a2;
        if (v76 <= v75)
        {
          goto LABEL_36;
        }

        goto LABEL_61;
      }
    }

LABEL_46:
    if (v80 < a3 - 3)
    {
      if (*v78 == *v80)
      {
        v78 = (v78 + 4);
        v80 = (v80 + 4);
      }

      if (v80 >= v74)
      {
LABEL_48:
        if (v80 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }

    else if (v80 >= v74)
    {
      goto LABEL_48;
    }

    if (*v78 == *v80)
    {
      v78 = (v78 + 2);
      v80 = (v80 + 2);
    }

    if (v80 >= a3)
    {
LABEL_51:
      v76 = v80 - a2;
      if (v80 - a2 <= v75)
      {
        goto LABEL_36;
      }

      goto LABEL_61;
    }

LABEL_49:
    if (*v78 == *v80)
    {
      v80 = (v80 + 1);
    }

    goto LABEL_51;
  }

  v76 = 3;
LABEL_64:
  v83 = 2 * *_X13;
  v142 = vld2q_s16(_X13);
  v84 = vdupq_n_s8(v18);
  v85 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v84, v142.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v84, v142.val[1]), 6uLL), 4uLL), v83) & 0x5555555555555555;
  if (v85)
  {
    v86 = v15 == 0;
  }

  else
  {
    v86 = 1;
  }

  if (!v86)
  {
    v87 = 0;
    v88 = *(v16 + 24);
    v89 = *(v16 + 8);
    v137 = *v16;
    v90 = *v16 - v89;
    v91 = v83 & 0xFE;
    do
    {
      v92 = ((__clz(__rbit64(v85)) + v91) >> 1) & 0x1F;
      if (v92)
      {
        v93 = *(_X10 + 4 * v92);
        if (v93 < v88)
        {
          break;
        }

        _X17 = v89 + v93;
        __asm { PRFM            #0, [X17] }

        v139[v87++] = v93;
        --v15;
      }

      v85 &= v85 - 1;
    }

    while (v85 && v15);
    if (v87)
    {
      v96 = *a2;
      v134 = v9 - v138 + v90 + 3;
      v97 = v139;
      do
      {
        v99 = *v97++;
        v98 = v99;
        v100 = v89 + v99;
        if (*v100 == v96)
        {
          v101 = a3;
          v102 = ZSTD_count_2segments((a2 + 4), (v100 + 4), a3, v137, (v8 + v138));
          a3 = v101;
          if (v102 + 4 > v76)
          {
            *a4 = v134 - v98;
            v76 = v102 + 4;
            if (a2 + v102 + 4 == v101)
            {
              break;
            }
          }
        }

        --v87;
      }

      while (v87);
    }
  }

  return v76;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_6_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v143 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v12 = a2 - v8 - v10;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v14 = *(a1 + 96);
  v15 = 1 << v13;
  v16 = *(a1 + 248);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (56 - *(v16 + 52));
  v19 = (v18 >> 2) & 0x3FFFFFC0;
  _X12 = (*(v16 + 56) + v19);
  _X10 = *(v16 + 112) + 4 * v19;
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X10,#0x40]
    PRFM            #0, [X12]
    PRFM            #0, [X12,#0x20]
  }

  if (*(a1 + 300))
  {
    _X17 = (v17 ^ v14) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v141 = a3;
    v30 = a1 + 64;
    v31 = *(a1 + 44);
    if (v9 - v31 >= 0x181)
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
      if (v31 <= 0xFFFFFF9F)
      {
        v107 = v31 + 96;
        v108 = *(a1 + 52);
        v109 = 56 - v7;
        do
        {
          v110 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v31)) ^ *(a1 + 96)) >> v109;
          v111 = (v110 >> 2) & 0x3FFFFFC0;
          _X23 = v5 + 4 * v111;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v6 + v111;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          v118 = *(v30 + 4 * (v31 & 7));
          *(v30 + 4 * (v31 & 7)) = v110;
          v119 = (v118 >> 2) & 0x3FFFFFC0;
          v120 = v5 + 4 * v119;
          v121 = (v6 + v119);
          if (((*v121 - 1) & 0x3F) != 0)
          {
            v122 = 0;
          }

          else
          {
            v122 = 63;
          }

          v123 = v122 + ((*v121 - 1) & 0x3F);
          *v121 = v123;
          v121[v123] = v118;
          *(v120 + 4 * v123) = v31++;
        }

        while (v107 != v31);
        v33 = *(a1 + 112);
        v32 = *(a1 + 56);
        LOBYTE(v7) = v108;
      }

      v124 = v9 - 32;
      LODWORD(v31) = v9 - 32;
      v125 = a2 + 1 - (v8 + v124);
      if ((v125 + 1) < 8)
      {
        v126 = v125 + 1;
      }

      else
      {
        v126 = 8;
      }

      if (a2 + 1 >= v8 + v124)
      {
        v127 = v126;
      }

      else
      {
        v127 = 0;
      }

      if (v124 < v127 + v124)
      {
        v128 = v7;
        v129 = *(a1 + 96);
        v130 = 56 - *(a1 + 52);
        do
        {
          v131 = ((0xCF1BBCDCBF9B0000 * *(v8 + v124)) ^ v129) >> v130;
          v132 = (v131 >> 2) & 0x3FFFFFC0;
          _X26 = v33 + 4 * v132;
          __asm
          {
            PRFM            #0, [X26]
            PRFM            #0, [X26,#0x40]
          }

          _X24 = v32 + v132;
          __asm
          {
            PRFM            #0, [X24]
            PRFM            #0, [X24,#0x20]
          }

          *(v30 + 4 * (v124++ & 7)) = v131;
          --v127;
        }

        while (v127);
        LOBYTE(v7) = v128;
      }
    }

    else
    {
      v32 = *(a1 + 56);
      v33 = *(a1 + 112);
    }

    if (v31 >= v9)
    {
      v38 = v9;
    }

    else
    {
      v34 = v7;
      v35 = *(a1 + 8) + 8;
      v36 = 56 - *(a1 + 52);
      v37 = v31;
      v38 = v9;
      do
      {
        v39 = ((0xCF1BBCDCBF9B0000 * *(v35 + v37)) ^ *(a1 + 96)) >> v36;
        v40 = (v39 >> 2) & 0x3FFFFFC0;
        _X26 = v33 + 4 * v40;
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X26,#0x40]
        }

        _X24 = v32 + v40;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x20]
        }

        v47 = *(v30 + 4 * (v37 & 7));
        *(v30 + 4 * (v37 & 7)) = v39;
        v48 = (v47 >> 2) & 0x3FFFFFC0;
        v49 = v33 + 4 * v48;
        v50 = (v32 + v48);
        if (((*v50 - 1) & 0x3F) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = 63;
        }

        v52 = v51 + ((*v50 - 1) & 0x3F);
        *v50 = v52;
        v50[v52] = v47;
        *(v49 + 4 * v52) = v37++;
      }

      while (v9 != v37);
      LOBYTE(v7) = v34;
    }

    *(a1 + 44) = v9;
    v53 = ((0xCF1BBCDCBF9B0000 * *(v8 + v38 + 8)) ^ v14) >> (56 - v7);
    v54 = (v53 >> 2) & 0x3FFFFFC0;
    _X2 = v5 + 4 * v54;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X2,#0x40]
    }

    _X17 = v6 + v54;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x20]
    }

    LODWORD(_X17) = *(v30 + 4 * (v9 & 7));
    *(v30 + 4 * (v9 & 7)) = v53;
    a3 = v141;
  }

  *(a1 + 104) += _X17;
  v60 = (_X17 >> 2) & 0x3FFFFFC0;
  v61 = v5 + 4 * v60;
  v62 = (v6 + v60);
  v63 = *v62;
  v146 = vld4q_s8(v62);
  v64 = vdupq_n_s8(_X17);
  v146.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v146.val[3], v64), vceqq_s8(v146.val[2], v64), 1uLL), vsriq_n_s8(vceqq_s8(v146.val[1], v64), vceqq_s8(v146.val[0], v64), 1uLL), 2uLL);
  v65 = vshrn_n_s16(vsriq_n_s8(v146.val[0], v146.val[0], 4uLL), 4uLL);
  v66 = 0;
  if (v65)
  {
    v67 = __ROR8__(*&v65, v63);
    do
    {
      v68 = (__clz(__rbit64(v67)) + v63) & 0x3F;
      if (v68)
      {
        v69 = *(v61 + 4 * v68);
        if (v69 < v12)
        {
          break;
        }

        _X6 = v8 + v69;
        __asm { PRFM            #0, [X6] }

        v144[v66++] = v69;
        --v15;
      }

      v67 &= v67 - 1;
    }

    while (v67 && v15);
  }

  if (((v63 - 1) & 0x3F) != 0)
  {
    v72 = 0;
  }

  else
  {
    v72 = 63;
  }

  v73 = v72 + ((v63 - 1) & 0x3F);
  *v62 = v73;
  v62[v73] = _X17;
  v74 = *(a1 + 44);
  *(a1 + 44) = v74 + 1;
  *(v61 + 4 * v73) = v74;
  if (v66)
  {
    v75 = 0;
    v76 = a3 - 7;
    v77 = a3 - 1;
    v78 = 3;
    while (1)
    {
      v80 = v144[v75];
      v81 = (v8 + v80);
      if (*(v8 + v80 + v78 - 3) != *(a2 - 3 + v78))
      {
        goto LABEL_34;
      }

      if (v76 <= a2)
      {
        v83 = a2;
        goto LABEL_44;
      }

      if (*v81 == *a2)
      {
        break;
      }

      v79 = __clz(__rbit64(*a2 ^ *v81)) >> 3;
      if (v79 <= v78)
      {
        goto LABEL_34;
      }

LABEL_59:
      *a4 = v9 + 3 - v80;
      v78 = v79;
      if (a2 + v79 == a3)
      {
        goto LABEL_62;
      }

LABEL_34:
      ++v75;
      v79 = v78;
      if (v75 == v66)
      {
        goto LABEL_62;
      }
    }

    v81 = (v8 + 8 + v80);
    v82 = (a2 + 8);
    while (1)
    {
      v83 = v82;
      if (v82 >= v76)
      {
        break;
      }

      v85 = *v81++;
      v84 = v85;
      ++v82;
      if (v85 != *v83)
      {
        v79 = v83 + (__clz(__rbit64(*v83 ^ v84)) >> 3) - a2;
        if (v79 <= v78)
        {
          goto LABEL_34;
        }

        goto LABEL_59;
      }
    }

LABEL_44:
    if (v83 < a3 - 3)
    {
      if (*v81 == *v83)
      {
        v81 = (v81 + 4);
        v83 = (v83 + 4);
      }

      if (v83 >= v77)
      {
LABEL_46:
        if (v83 >= a3)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    else if (v83 >= v77)
    {
      goto LABEL_46;
    }

    if (*v81 == *v83)
    {
      v81 = (v81 + 2);
      v83 = (v83 + 2);
    }

    if (v83 >= a3)
    {
LABEL_49:
      v79 = v83 - a2;
      if (v83 - a2 <= v78)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }

LABEL_47:
    if (*v81 == *v83)
    {
      v83 = (v83 + 1);
    }

    goto LABEL_49;
  }

  v79 = 3;
LABEL_62:
  v147 = vld4q_s8(_X12);
  v86 = vdupq_n_s8(v18);
  v147.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v147.val[3], v86), vceqq_s8(v147.val[2], v86), 1uLL), vsriq_n_s8(vceqq_s8(v147.val[1], v86), vceqq_s8(v147.val[0], v86), 1uLL), 2uLL);
  v87 = vshrn_n_s16(vsriq_n_s8(v147.val[0], v147.val[0], 4uLL), 4uLL);
  if (v87)
  {
    v88 = v15 == 0;
  }

  else
  {
    v88 = 1;
  }

  if (!v88)
  {
    v89 = 0;
    v90 = *(v16 + 24);
    v91 = *(v16 + 8);
    v142 = *v16;
    v92 = *v16 - v91;
    v93 = *_X12;
    v94 = __ROR8__(*&v87, v93);
    do
    {
      v95 = (__clz(__rbit64(v94)) + v93) & 0x3F;
      if (v95)
      {
        v96 = *(_X10 + 4 * v95);
        if (v96 < v90)
        {
          break;
        }

        _X17 = v91 + v96;
        __asm { PRFM            #0, [X17] }

        v144[v89++] = v96;
        --v15;
      }

      v94 &= v94 - 1;
    }

    while (v94 && v15);
    if (v89)
    {
      v99 = *a2;
      v139 = v9 - v143 + v92 + 3;
      v100 = v144;
      do
      {
        v102 = *v100++;
        v101 = v102;
        v103 = v91 + v102;
        if (*v103 == v99)
        {
          v104 = a3;
          v105 = ZSTD_count_2segments((a2 + 4), (v103 + 4), a3, v142, (v8 + v143));
          a3 = v104;
          if (v105 + 4 > v79)
          {
            *a4 = v139 - v101;
            v79 = v105 + 4;
            if (a2 + v105 + 4 == v104)
            {
              break;
            }
          }
        }

        --v89;
      }

      while (v89);
    }
  }

  return v79;
}

unint64_t ZSTD_compressBlock_greedy_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
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
  if (v14 >= 6)
  {
    v15 = 6;
  }

  else
  {
    v15 = *(a1 + 268);
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = *(a1 + 248);
  v20 = *v19;
  v181 = *(v19 + 8);
  v183 = (v10 + v11);
  v171 = (v181 + *(v19 + 24));
  if (a4 - (v10 + v11) - v171 + *v19)
  {
    v21 = a4;
  }

  else
  {
    v21 = (a4 + 1);
  }

  *(a1 + 300) = 0;
  v22 = *(a1 + 44);
  v23 = v9 - (v10 + v22);
  if ((v23 + 1) < 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  if (v9 >= v10 + v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 + v22);
  if (v22 < v26)
  {
    v27 = *(a1 + 112);
    v28 = *(a1 + 56);
    v29 = *(a1 + 52);
    v30 = *(a1 + 96);
    v31 = 56 - v29;
    v32 = 24 - v29;
    v33 = a1 + 64;
    if (v14 <= 4)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v34 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v35) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_26;
          }

          v34 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v35 = (v34 ^ v30) >> v31;
LABEL_26:
        v36 = v35 >> 8 << v16;
        _X3 = v27 + 4 * v36;
        __asm { PRFM            #0, [X3] }

        _X2 = v28 + v36;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v35;
        if (v26 == v22)
        {
          goto LABEL_47;
        }
      }
    }

    if (v14 == 5)
    {
      while (1)
      {
        if (v13 == 6)
        {
          v45 = 0xCF1BBCDCBF9B0000 * *(v10 + v22);
        }

        else
        {
          if (v13 != 5)
          {
            LODWORD(v46) = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
            goto LABEL_35;
          }

          v45 = 0xCF1BBCDCBB000000 * *(v10 + v22);
        }

        v46 = (v45 ^ v30) >> v31;
LABEL_35:
        v47 = v46 >> 8 << v16;
        _X3 = v27 + 4 * v47;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X3,#0x40]
        }

        _X2 = v28 + v47;
        __asm { PRFM            #0, [X2] }

        *(v33 + 4 * (v22++ & 7)) = v46;
        if (v26 == v22)
        {
          goto LABEL_47;
        }
      }
    }

    if (v13 == 6)
    {
      do
      {
        v61 = ((0xCF1BBCDCBF9B0000 * *(v10 + v22)) ^ v30) >> v31;
        v62 = v61 >> 8 << v16;
        _X0 = v27 + 4 * v62;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v62;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v61;
      }

      while (v26 != v22);
    }

    else if (v13 == 5)
    {
      do
      {
        v53 = ((0xCF1BBCDCBB000000 * *(v10 + v22)) ^ v30) >> v31;
        v54 = v53 >> 8 << v16;
        _X0 = v27 + 4 * v54;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v54;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v53;
      }

      while (v26 != v22);
    }

    else
    {
      do
      {
        v69 = ((-1640531535 * *(v10 + v22)) ^ v30) >> v32;
        v70 = v69 >> 8 << v16;
        _X0 = v27 + 4 * v70;
        __asm
        {
          PRFM            #0, [X0]
          PRFM            #0, [X0,#0x40]
        }

        _X17 = v28 + v70;
        __asm
        {
          PRFM            #0, [X17]
          PRFM            #0, [X17,#0x20]
        }

        *(v33 + 4 * (v22++ & 7)) = v69;
      }

      while (v26 != v22);
    }
  }

LABEL_47:
  if (v21 < v9)
  {
    v182 = v8 - 32;
    v174 = v7 + 64;
    v172 = v11 + v10 + 8;
    v175 = v11 + v181 - v20;
    v179 = v9;
    v180 = v7;
    v178 = v11;
    v177 = v16;
    v176 = v20;
    v173 = v8 - 7;
    while (1)
    {
      v78 = (v21 - v10 - v17 + 1);
      v79 = v181 + v78 - v175;
      if (v78 >= v11)
      {
        v79 = v10 + v78;
      }

      if ((v78 - v11) <= 0xFFFFFFFC && (v80 = (v21 + 1), *v79 == *(v21 + 1)))
      {
        v81 = (v78 >= v11 ? v8 : v20);
        v82 = ZSTD_count_2segments((v21 + 5), (v79 + 4), v8, v81, v183);
        v83 = (v8 - 32);
        v20 = v176;
        LODWORD(v11) = v178;
        v84 = v179;
        BestMatch_dedicatedDictSearch_6_6 = v82 + 4;
        v86 = 1;
      }

      else
      {
        v184 = 999999999;
        if (v13 == 6)
        {
          if (v16 == 6)
          {
            BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(v7, v21, v8, &v184);
          }

          else if (v16 == 5)
          {
            BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(v7, v21, v8, &v184);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(v7, v21, v8, &v184);
          }
        }

        else if (v13 == 5)
        {
          if (v16 == 6)
          {
            BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(v7, v21, v8, &v184);
          }

          else if (v16 == 5)
          {
            BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(v7, v21, v8, &v184);
          }

          else
          {
            BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(v7, v21, v8, &v184);
          }
        }

        else if (v16 == 6)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(v7, v21, v8, &v184);
        }

        else if (v16 == 5)
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(v7, v21, v8, &v184);
        }

        else
        {
          BestMatch_dedicatedDictSearch_6_6 = ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(v7, v21, v8, &v184);
        }

        LODWORD(v11) = v178;
        v84 = v179;
        v20 = v176;
        v83 = (v8 - 32);
        if (BestMatch_dedicatedDictSearch_6_6 <= 3)
        {
          v77 = v21 - v5;
          v21 += ((v21 - v5) >> 8) + 1;
          v7 = v180;
          *(v180 + 300) = v77 > 0x7FF;
          v16 = v177;
          goto LABEL_50;
        }

        v86 = v184;
        if (v184 >= 4)
        {
          v87 = v21 - v10 - v184 + 3;
          v88 = v183;
          if (v178 > v87)
          {
            v88 = v171;
          }

          v89 = v181 - v175;
          if (v178 <= v21 - v10 - v184 + 3)
          {
            v89 = v10;
          }

          if (v21 > v5 && v89 + v87 > v88)
          {
            v90 = (v89 + v87 - 1);
            v91 = (v21 - 1);
            while (*v91 == *v90)
            {
              ++BestMatch_dedicatedDictSearch_6_6;
              v92 = v91 - 1;
              if (v91 > v5)
              {
                --v91;
                if (v90-- > v88)
                {
                  continue;
                }
              }

              v21 = (v92 + 1);
              goto LABEL_90;
            }

            v21 = (v91 + 1);
          }

LABEL_90:
          v18 = v17;
          v17 = (v184 - 3);
        }

        v80 = v21;
      }

      v94 = v80 - v5;
      v95 = *(a2 + 24);
      if (v80 > v83)
      {
        break;
      }

      *v95 = *v5;
      v102 = *(a2 + 24);
      v7 = v180;
      v16 = v177;
      if (v94 > 0x10)
      {
        *(v102 + 16) = *(v5 + 1);
        if (v94 >= 33)
        {
          v103 = v102 + v94;
          v104 = (v102 + 32);
          v105 = (v5 + 48);
          do
          {
            *v104 = *(v105 - 1);
            v106 = *v105;
            v105 += 2;
            v104[1] = v106;
            v104 += 2;
          }

          while (v104 < v103);
        }

        goto LABEL_121;
      }

      *(a2 + 24) = v102 + v94;
      v107 = *(a2 + 8);
LABEL_123:
      *(v107 + 4) = v94;
      *v107 = v86;
      if (BestMatch_dedicatedDictSearch_6_6 - 3 >= 0x10000)
      {
        v120 = (v107 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v120;
      }

      *(v107 + 6) = BestMatch_dedicatedDictSearch_6_6 - 3;
      v121 = v107 + 8;
      *(a2 + 8) = v107 + 8;
      if (*(v7 + 300))
      {
        v122 = *(v7 + 44);
        v123 = v84 - (v10 + v122);
        if ((v123 + 1) < 8)
        {
          v124 = v123 + 1;
        }

        else
        {
          v124 = 8;
        }

        if (v84 >= v10 + v122)
        {
          v125 = v124;
        }

        else
        {
          v125 = 0;
        }

        v126 = (v125 + v122);
        if (v122 < v126)
        {
          v127 = *(v7 + 112);
          v128 = *(v7 + 56);
          v129 = *(v7 + 52);
          v130 = *(v7 + 96);
          v131 = 56 - v129;
          v132 = 24 - v129;
          do
          {
            if (v13 == 5)
            {
              v135 = 0xCF1BBCDCBB000000 * *(v10 + v122);
            }

            else
            {
              if (v13 != 6)
              {
                LODWORD(v136) = ((-1640531535 * *(v10 + v122)) ^ v130) >> v132;
                goto LABEL_142;
              }

              v135 = 0xCF1BBCDCBF9B0000 * *(v10 + v122);
            }

            v136 = (v135 ^ v130) >> v131;
LABEL_142:
            v137 = v136 >> 8 << v16;
            _X1 = v127 + 4 * v137;
            __asm { PRFM            #0, [X1] }

            if (v14 <= 4)
            {
              _X17 = v128 + v137;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v128 + v137;
              __asm { PRFM            #0, [X17] }

              if (v14 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v174 + 4 * (v122++ & 7)) = v136;
          }

          while (v126 != v122);
        }

        *(v7 + 300) = 0;
      }

      v5 = &v80[BestMatch_dedicatedDictSearch_6_6];
      if (&v80[BestMatch_dedicatedDictSearch_6_6] > v84)
      {
        v21 = &v80[BestMatch_dedicatedDictSearch_6_6];
        goto LABEL_50;
      }

      v144 = v17;
      v145 = v18;
      while (1)
      {
        v17 = v145;
        v145 = v144;
        v146 = (v5 - v10 - v17);
        v147 = v146 >= v11 ? v10 : v181 - v175;
        if ((v146 - v11) > 0xFFFFFFFC)
        {
          break;
        }

        v148 = v147 + v146;
        if (*(v147 + v146) != *v5)
        {
          break;
        }

        if (v146 >= v11)
        {
          v149 = v8;
        }

        else
        {
          v149 = v176;
        }

        v150 = (v5 + 4);
        v151 = (v148 + 4);
        v152 = v149 + v5 - v148;
        if (v152 >= v8)
        {
          v152 = v8;
        }

        if (v152 - 7 <= v150)
        {
          v153 = v151;
          v155 = v5 + 4;
        }

        else
        {
          if (*v151 != *v150)
          {
            v158 = __clz(__rbit64(*v150 ^ *v151)) >> 3;
            goto LABEL_178;
          }

          v153 = (v147 + v146 + 12);
          v154 = (v5 + 12);
          while (1)
          {
            v155 = v154;
            if (v154 >= (v152 - 7))
            {
              break;
            }

            v157 = *v153;
            v153 += 4;
            v156 = v157;
            v154 += 8;
            if (v157 != *v155)
            {
              v158 = v155 + (__clz(__rbit64(*v155 ^ v156)) >> 3) - v150;
              goto LABEL_178;
            }
          }
        }

        if (v155 < (v152 - 3) && *v153 == *v155)
        {
          v153 += 2;
          v155 = (v155 + 4);
        }

        if (v155 < (v152 - 1) && *v153 == *v155)
        {
          ++v153;
          v155 = (v155 + 2);
        }

        if (v155 < v152 && *v153 == *v155)
        {
          v155 = (v155 + 1);
        }

        v158 = v155 - v150;
LABEL_178:
        if ((v151 + v158) == v149)
        {
          v160 = &v150[v158];
          if (v173 > v160)
          {
            if (*v183 == *v160)
            {
              v161 = 0;
              v162 = &v5[v158];
              while (1)
              {
                v163 = &v162[v161 + 12];
                if (v163 >= v173)
                {
                  break;
                }

                v164 = *(v172 + v161);
                v165 = *v163;
                v161 += 8;
                if (v164 != v165)
                {
                  v166 = &v162[v161 + 4 + (__clz(__rbit64(v165 ^ v164)) >> 3)];
                  goto LABEL_201;
                }
              }

              v167 = (v172 + v161);
              v166 = &v5[v158 + 12 + v161];
LABEL_192:
              if (v166 < v8 - 3 && *v167 == *v166)
              {
                v167 = (v167 + 4);
                v166 += 4;
              }

              if (v166 < v8 - 1 && *v167 == *v166)
              {
                v167 = (v167 + 2);
                v166 += 2;
              }

              if (v166 < v8 && *v167 == *v166)
              {
                ++v166;
              }

LABEL_201:
              v168 = v166 - v160;
            }

            else
            {
              v168 = __clz(__rbit64(*v160 ^ *v183)) >> 3;
            }

            v158 += v168;
            if (v5 > v182)
            {
              goto LABEL_181;
            }

LABEL_180:
            **(a2 + 24) = *v5;
            v121 = *(a2 + 8);
            goto LABEL_181;
          }

          v167 = v183;
          v166 = v160;
          goto LABEL_192;
        }

        if (v5 <= v182)
        {
          goto LABEL_180;
        }

LABEL_181:
        *(v121 + 4) = 0;
        *v121 = 1;
        if (v158 + 1 >= 0x10000)
        {
          v159 = (v121 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v159;
        }

        *(v121 + 6) = v158 + 1;
        v121 += 8;
        v5 += v158 + 4;
        *(a2 + 8) = v121;
        v144 = v17;
        v18 = v145;
        v21 = v5;
        if (v5 > v84)
        {
          goto LABEL_50;
        }
      }

      v18 = v17;
      v17 = v144;
      v21 = v5;
LABEL_50:
      if (v21 >= v84)
      {
        goto LABEL_205;
      }
    }

    v7 = v180;
    v16 = v177;
    if (v5 <= v83)
    {
      v96 = (v95 + v83 - v5);
      *v95 = *v5;
      if (v83 - v5 >= 17)
      {
        v97 = v95 + 1;
        v98 = (v5 + 32);
        do
        {
          *v97 = *(v98 - 1);
          v99 = *v98;
          v98 += 2;
          v97[1] = v99;
          v97 += 2;
        }

        while (v97 < v96);
      }

      v5 = v83;
      v95 = v96;
    }

    if (v5 < v80)
    {
      v100 = v80 - v5;
      if ((v80 - v5) < 8)
      {
        v108 = v95;
        goto LABEL_120;
      }

      if ((v95 - v5) < 0x20)
      {
        v108 = v95;
        goto LABEL_120;
      }

      if (v100 >= 0x20)
      {
        v101 = v100 & 0xFFFFFFFFFFFFFFE0;
        v109 = (v5 + 16);
        v110 = v95 + 1;
        v111 = v100 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v112 = *v109;
          *(v110 - 1) = *(v109 - 1);
          *v110 = v112;
          v109 += 2;
          v110 += 2;
          v111 -= 32;
        }

        while (v111);
        if (v100 == v101)
        {
          goto LABEL_121;
        }

        if ((v100 & 0x18) == 0)
        {
          v5 += v101;
          v108 = v95 + v101;
          do
          {
LABEL_120:
            v118 = *v5++;
            *v108++ = v118;
          }

          while (v5 != v80);
          goto LABEL_121;
        }
      }

      else
      {
        v101 = 0;
      }

      v113 = v100 & 0xFFFFFFFFFFFFFFF8;
      v108 = v95 + (v100 & 0xFFFFFFFFFFFFFFF8);
      v114 = v101 - (v100 & 0xFFFFFFFFFFFFFFF8);
      v115 = &v5[v101];
      v116 = (v95 + v101);
      do
      {
        v117 = *v115++;
        *v116++ = v117;
        v114 += 8;
      }

      while (v114);
      if (v100 != v113)
      {
        v5 += v113;
        goto LABEL_120;
      }
    }

LABEL_121:
    *(a2 + 24) += v94;
    v107 = *(a2 + 8);
    if (v94 >= 0x10000)
    {
      v119 = (v107 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v119;
    }

    goto LABEL_123;
  }

LABEL_205:
  *a3 = v17;
  a3[1] = v18;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v150 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v148 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 4;
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v147 = a3;
  v143 = v9;
  if (*(a1 + 300))
  {
    v26 = (v18 ^ v16) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v114 = v28 + 96;
        do
        {
          v115 = ((-1640531535 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (24 - v7);
          v116 = (v115 >> 4) & 0xFFFFFF0;
          _X20 = v5 + 4 * v116;
          __asm { PRFM            #0, [X20] }

          _X19 = v6 + v116;
          __asm { PRFM            #0, [X19] }

          v121 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v115;
          v122 = (v121 >> 4) & 0xFFFFFF0;
          v123 = v5 + 4 * v122;
          v124 = (v6 + v122);
          if (((*v124 - 1) & 0xF) != 0)
          {
            v125 = 0;
          }

          else
          {
            v125 = 15;
          }

          v126 = v125 + ((*v124 - 1) & 0xF);
          *v124 = v126;
          v124[v126] = v121;
          *(v123 + 4 * v126) = v28++;
        }

        while (v114 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v127 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v128 = a2 + 1 - (v8 + v127);
      if ((v128 + 1) < 8)
      {
        v129 = v128 + 1;
      }

      else
      {
        v129 = 8;
      }

      if (a2 + 1 >= v8 + v127)
      {
        v130 = v129;
      }

      else
      {
        v130 = 0;
      }

      if (v127 < v130 + v127)
      {
        v131 = *(a1 + 96);
        v132 = 24 - *(a1 + 52);
        do
        {
          v133 = ((-1640531535 * *(v8 + v127)) ^ v131) >> v132;
          v134 = (v133 >> 4) & 0xFFFFFF0;
          _X23 = v30 + 4 * v134;
          __asm { PRFM            #0, [X23] }

          _X22 = v29 + v134;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v127++ & 7)) = v133;
          --v130;
        }

        while (v130);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 24 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((-1640531535 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        _X23 = v30 + 4 * v36;
        __asm { PRFM            #0, [X23] }

        _X22 = v29 + v36;
        __asm { PRFM            #0, [X22] }

        v41 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v42 = (v41 >> 4) & 0xFFFFFF0;
        v43 = v30 + 4 * v42;
        v44 = (v29 + v42);
        if (((*v44 - 1) & 0xF) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = 15;
        }

        v46 = v45 + ((*v44 - 1) & 0xF);
        *v44 = v46;
        v44[v46] = v41;
        *(v43 + 4 * v46) = v33++;
      }

      while (v34 != v33);
      v9 = v143;
    }

    *(a1 + 44) = v9;
    v47 = ((-1640531535 * *(v8 + v34 + 8)) ^ v16) >> (24 - v7);
    v48 = (v47 >> 4) & 0xFFFFFF0;
    _X17 = v5 + 4 * v48;
    __asm { PRFM            #0, [X17] }

    _X15 = v6 + v48;
    __asm { PRFM            #0, [X15] }

    v26 = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v47;
  }

  *(a1 + 104) += v26;
  v53 = (v26 >> 4) & 0xFFFFFF0;
  v54 = v5 + 4 * v53;
  v55 = (v6 + v53);
  v56 = 4 * v55->i8[0];
  v57 = *v55;
  v58 = __ROR8__(vshrn_n_s16(vceqq_s8(*v55, vdupq_n_s8(v26)), 4uLL), v56) & 0x8888888888888888;
  if (v58)
  {
    v59 = 0;
    do
    {
      v60 = ((__clz(__rbit64(v58)) + (v56 & 0xFC)) >> 2) & 0xF;
      if (v60)
      {
        v61 = *(v54 + 4 * v60);
        if (v61 < v11)
        {
          break;
        }

        _X5 = v8 + v61;
        __asm { PRFM            #0, [X5] }

        v149[v59++] = v61;
        --v17;
      }

      v58 &= v58 - 1;
    }

    while (v58 && v17);
  }

  else
  {
    v59 = 0;
  }

  v64 = (v57 - 1) & 0xF;
  if (((v57 - 1) & 0xF) != 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = 15;
  }

  v66 = v65 + v64;
  v55->i8[0] = v66;
  v55->i8[v66] = v26;
  v67 = 4 * v19;
  v68 = *(a1 + 44);
  *(a1 + 44) = v68 + 1;
  *(v54 + 4 * v66) = v68;
  if (v59)
  {
    v69 = 0;
    v70 = a3 - 7;
    v71 = a3 - 1;
    v72 = 3;
    while (1)
    {
      v74 = v149[v69];
      v75 = (v8 + v74);
      if (*(v8 + v74 + v72 - 3) != *(a2 - 3 + v72))
      {
        goto LABEL_38;
      }

      if (v70 <= a2)
      {
        v78 = a2;
        goto LABEL_48;
      }

      v76 = *v75;
      if (v76 == *a2)
      {
        break;
      }

      v73 = __clz(__rbit64(*a2 ^ v76)) >> 3;
      if (v73 > v72)
      {
LABEL_37:
        *a4 = v9 + 3 - v74;
        v72 = v73;
        if (a2 + v73 == a3)
        {
          goto LABEL_65;
        }
      }

LABEL_38:
      ++v69;
      v73 = v72;
      if (v69 == v59)
      {
        goto LABEL_65;
      }
    }

    v75 = (v8 + 8 + v74);
    v77 = (a2 + 8);
    while (1)
    {
      v78 = v77;
      if (v77 >= v70)
      {
        break;
      }

      v80 = *v75;
      v75 += 4;
      v79 = v80;
      ++v77;
      if (v80 != *v78)
      {
        v73 = v78 + (__clz(__rbit64(*v78 ^ v79)) >> 3) - a2;
        if (v73 <= v72)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

LABEL_48:
    if (v78 >= a3 - 3)
    {
      if (v78 >= v71)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (*v75 == *v78)
      {
        v75 += 2;
        v78 = (v78 + 4);
      }

      if (v78 >= v71)
      {
LABEL_52:
        if (v78 >= a3)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    if (*v75 == *v78)
    {
      ++v75;
      v78 = (v78 + 2);
    }

    if (v78 >= a3)
    {
LABEL_55:
      v73 = v78 - a2;
      if (v78 - a2 > v72)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_53:
    if (*v75 == *v78)
    {
      v78 = (v78 + 1);
    }

    goto LABEL_55;
  }

  v73 = 3;
LABEL_65:
  v81 = *v14;
  v82 = *(v14 + 8);
  v83 = (*(v14 + 112) + 4 * v67);
  _X11 = v82 + *v83;
  __asm { PRFM            #0, [X11] }

  _X11 = v82 + v83[1];
  __asm { PRFM            #0, [X11] }

  v88 = v83[3];
  _X11 = v82 + v83[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v88 >> 8));
  v92 = *v14 - v82 - v148;
  __asm { PRFM            #0, [X19] }

  LODWORD(v94) = v17 + v25;
  if (v94)
  {
    v141 = v83[3];
    v140 = v94;
    if (v94 >= 3)
    {
      v94 = 3;
    }

    else
    {
      v94 = v94;
    }

    v142 = *v14 - v82 - v148;
    v144 = v9 + v92 + 3;
    v139 = v94;
    v95 = v94;
    while (1)
    {
      v97 = *v83++;
      v96 = v97;
      if (!v97)
      {
        return v73;
      }

      if (*(v82 + v96) == *a2)
      {
        v98 = ZSTD_count_2segments((a2 + 4), (v82 + v96 + 4), a3, v81, (v8 + v148));
        a3 = v147;
        v99 = v98 + 4;
        if (v98 + 4 > v73)
        {
          *a4 = (v144 - v96);
          v73 = v98 + 4;
          if (a2 + v99 == v147)
          {
            return v99;
          }
        }
      }

      if (!--v95)
      {
        v92 = v142;
        LOBYTE(v88) = v141;
        LODWORD(v94) = v140;
        v100 = v139;
        goto LABEL_78;
      }
    }
  }

  v100 = 0;
LABEL_78:
  v101 = v94 - v100;
  if (v101 >= v88)
  {
    v102 = v88;
  }

  else
  {
    v102 = v101;
  }

  if (!v102)
  {
    return v73;
  }

  v103 = 4 * v102;
  v104 = _X19;
  do
  {
    v105 = *v104++;
    _X10 = v82 + v105;
    __asm { PRFM            #0, [X10] }

    v103 -= 4;
  }

  while (v103);
  v108 = *a2;
  v145 = v143 + v92 + 3;
  v99 = v73;
  do
  {
    v110 = *_X19++;
    v109 = v110;
    v111 = v82 + v110;
    if (*v111 == v108)
    {
      v112 = ZSTD_count_2segments((a2 + 4), (v111 + 4), a3, v81, (v8 + v148));
      a3 = v147;
      if (v112 + 4 > v99)
      {
        *a4 = v145 - v109;
        v99 = v112 + 4;
        if (a2 + v112 + 4 == v147)
        {
          break;
        }
      }
    }

    --v102;
  }

  while (v102);
  return v99;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v155 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v153 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 5;
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v152 = a3;
  v148 = v9;
  if (*(a1 + 300))
  {
    v26 = (v18 ^ v16) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v117 = v28 + 96;
        do
        {
          v118 = ((-1640531535 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (24 - v7);
          v119 = (v118 >> 3) & 0x1FFFFFE0;
          _X20 = v5 + 4 * v119;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v119;
          __asm { PRFM            #0, [X19] }

          v125 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v118;
          v126 = (v125 >> 3) & 0x1FFFFFE0;
          v127 = v5 + 4 * v126;
          v128 = (v6 + v126);
          if (((*v128 - 1) & 0x1F) != 0)
          {
            v129 = 0;
          }

          else
          {
            v129 = 31;
          }

          v130 = v129 + ((*v128 - 1) & 0x1F);
          *v128 = v130;
          v128[v130] = v125;
          *(v127 + 4 * v130) = v28++;
        }

        while (v117 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v131 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v132 = a2 + 1 - (v8 + v131);
      if ((v132 + 1) < 8)
      {
        v133 = v132 + 1;
      }

      else
      {
        v133 = 8;
      }

      if (a2 + 1 >= v8 + v131)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0;
      }

      if (v131 < v134 + v131)
      {
        v135 = *(a1 + 96);
        v136 = 24 - *(a1 + 52);
        do
        {
          v137 = ((-1640531535 * *(v8 + v131)) ^ v135) >> v136;
          v138 = (v137 >> 3) & 0x1FFFFFE0;
          _X23 = v30 + 4 * v138;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v138;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v131++ & 7)) = v137;
          --v134;
        }

        while (v134);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 24 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((-1640531535 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 3) & 0x1FFFFFE0;
        _X23 = v30 + 4 * v36;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v36;
        __asm { PRFM            #0, [X22] }

        v42 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v43 = (v42 >> 3) & 0x1FFFFFE0;
        v44 = v30 + 4 * v43;
        v45 = (v29 + v43);
        if (((*v45 - 1) & 0x1F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 31;
        }

        v47 = v46 + ((*v45 - 1) & 0x1F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v33++;
      }

      while (v34 != v33);
      v9 = v148;
    }

    *(a1 + 44) = v9;
    v48 = ((-1640531535 * *(v8 + v34 + 8)) ^ v16) >> (24 - v7);
    v49 = (v48 >> 3) & 0x1FFFFFE0;
    _X17 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v49;
    __asm { PRFM            #0, [X15] }

    v26 = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v48;
  }

  *(a1 + 104) += v26;
  v55 = (v26 >> 3) & 0x1FFFFFE0;
  v56 = v5 + 4 * v55;
  v57 = (v6 + v55);
  v156 = vld2q_s16(v57);
  v58 = *v57;
  v59 = 2 * *v57;
  v60 = vdupq_n_s8(v26);
  v61 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v60, v156.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v60, v156.val[1]), 6uLL), 4uLL), v59) & 0x5555555555555555;
  if (v61)
  {
    v62 = 0;
    do
    {
      v63 = ((__clz(__rbit64(v61)) + (v59 & 0xFE)) >> 1) & 0x1F;
      if (v63)
      {
        v64 = *(v56 + 4 * v63);
        if (v64 < v11)
        {
          break;
        }

        _X5 = v8 + v64;
        __asm { PRFM            #0, [X5] }

        v154[v62++] = v64;
        --v17;
      }

      v61 &= v61 - 1;
    }

    while (v61 && v17);
  }

  else
  {
    v62 = 0;
  }

  v67 = (v58 - 1) & 0x1F;
  if (((v58 - 1) & 0x1F) != 0)
  {
    v68 = 0;
  }

  else
  {
    v68 = 31;
  }

  v69 = v68 + v67;
  *v57 = v69;
  *(v57 + v69) = v26;
  v70 = 4 * v19;
  v71 = *(a1 + 44);
  *(a1 + 44) = v71 + 1;
  *(v56 + 4 * v69) = v71;
  if (v62)
  {
    v72 = 0;
    v73 = a3 - 7;
    v74 = a3 - 1;
    v75 = 3;
    while (1)
    {
      v77 = v154[v72];
      v78 = (v8 + v77);
      if (*(v8 + v77 + v75 - 3) != *(a2 - 3 + v75))
      {
        goto LABEL_38;
      }

      if (v73 <= a2)
      {
        v81 = a2;
        goto LABEL_48;
      }

      v79 = *v78;
      if (v79 == *a2)
      {
        break;
      }

      v76 = __clz(__rbit64(*a2 ^ v79)) >> 3;
      if (v76 > v75)
      {
LABEL_37:
        *a4 = v9 + 3 - v77;
        v75 = v76;
        if (a2 + v76 == a3)
        {
          goto LABEL_65;
        }
      }

LABEL_38:
      ++v72;
      v76 = v75;
      if (v72 == v62)
      {
        goto LABEL_65;
      }
    }

    v78 = (v8 + 8 + v77);
    v80 = (a2 + 8);
    while (1)
    {
      v81 = v80;
      if (v80 >= v73)
      {
        break;
      }

      v83 = *v78;
      v78 += 4;
      v82 = v83;
      ++v80;
      if (v83 != *v81)
      {
        v76 = v81 + (__clz(__rbit64(*v81 ^ v82)) >> 3) - a2;
        if (v76 <= v75)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

LABEL_48:
    if (v81 >= a3 - 3)
    {
      if (v81 >= v74)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (*v78 == *v81)
      {
        v78 += 2;
        v81 = (v81 + 4);
      }

      if (v81 >= v74)
      {
LABEL_52:
        if (v81 >= a3)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    if (*v78 == *v81)
    {
      ++v78;
      v81 = (v81 + 2);
    }

    if (v81 >= a3)
    {
LABEL_55:
      v76 = v81 - a2;
      if (v81 - a2 > v75)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_53:
    if (*v78 == *v81)
    {
      v81 = (v81 + 1);
    }

    goto LABEL_55;
  }

  v76 = 3;
LABEL_65:
  v84 = *v14;
  v85 = *(v14 + 8);
  v86 = (*(v14 + 112) + 4 * v70);
  _X11 = v85 + *v86;
  __asm { PRFM            #0, [X11] }

  _X11 = v85 + v86[1];
  __asm { PRFM            #0, [X11] }

  v91 = v86[3];
  _X11 = v85 + v86[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v91 >> 8));
  v95 = *v14 - v85 - v153;
  __asm { PRFM            #0, [X19] }

  LODWORD(v97) = v17 + v25;
  if (v97)
  {
    v146 = v86[3];
    v145 = v97;
    if (v97 >= 3)
    {
      v97 = 3;
    }

    else
    {
      v97 = v97;
    }

    v147 = *v14 - v85 - v153;
    v149 = v9 + v95 + 3;
    v144 = v97;
    v98 = v97;
    while (1)
    {
      v100 = *v86++;
      v99 = v100;
      if (!v100)
      {
        return v76;
      }

      if (*(v85 + v99) == *a2)
      {
        v101 = ZSTD_count_2segments((a2 + 4), (v85 + v99 + 4), a3, v84, (v8 + v153));
        a3 = v152;
        v102 = v101 + 4;
        if (v101 + 4 > v76)
        {
          *a4 = (v149 - v99);
          v76 = v101 + 4;
          if (a2 + v102 == v152)
          {
            return v102;
          }
        }
      }

      if (!--v98)
      {
        v95 = v147;
        LOBYTE(v91) = v146;
        LODWORD(v97) = v145;
        v103 = v144;
        goto LABEL_78;
      }
    }
  }

  v103 = 0;
LABEL_78:
  v104 = v97 - v103;
  if (v104 >= v91)
  {
    v105 = v91;
  }

  else
  {
    v105 = v104;
  }

  if (!v105)
  {
    return v76;
  }

  v106 = 4 * v105;
  v107 = _X19;
  do
  {
    v108 = *v107++;
    _X10 = v85 + v108;
    __asm { PRFM            #0, [X10] }

    v106 -= 4;
  }

  while (v106);
  v111 = *a2;
  v150 = v148 + v95 + 3;
  v102 = v76;
  do
  {
    v113 = *_X19++;
    v112 = v113;
    v114 = v85 + v113;
    if (*v114 == v111)
    {
      v115 = ZSTD_count_2segments((a2 + 4), (v114 + 4), a3, v84, (v8 + v153));
      a3 = v152;
      if (v115 + 4 > v102)
      {
        *a4 = v150 - v112;
        v102 = v115 + 4;
        if (a2 + v115 + 4 == v152)
        {
          break;
        }
      }
    }

    --v105;
  }

  while (v105);
  return v102;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v159 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v157 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 6;
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v156 = a3;
  v152 = v9;
  if (*(a1 + 300))
  {
    v26 = (v18 ^ v16) >> (24 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v119 = v28 + 96;
        do
        {
          v120 = ((-1640531535 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (24 - v7);
          v121 = (v120 >> 2) & 0x3FFFFFC0;
          _X20 = v5 + 4 * v121;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v121;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x20]
          }

          v128 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v120;
          v129 = (v128 >> 2) & 0x3FFFFFC0;
          v130 = v5 + 4 * v129;
          v131 = (v6 + v129);
          if (((*v131 - 1) & 0x3F) != 0)
          {
            v132 = 0;
          }

          else
          {
            v132 = 63;
          }

          v133 = v132 + ((*v131 - 1) & 0x3F);
          *v131 = v133;
          v131[v133] = v128;
          *(v130 + 4 * v133) = v28++;
        }

        while (v119 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v134 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v135 = a2 + 1 - (v8 + v134);
      if ((v135 + 1) < 8)
      {
        v136 = v135 + 1;
      }

      else
      {
        v136 = 8;
      }

      if (a2 + 1 >= v8 + v134)
      {
        v137 = v136;
      }

      else
      {
        v137 = 0;
      }

      if (v134 < v137 + v134)
      {
        v138 = *(a1 + 96);
        v139 = 24 - *(a1 + 52);
        do
        {
          v140 = ((-1640531535 * *(v8 + v134)) ^ v138) >> v139;
          v141 = (v140 >> 2) & 0x3FFFFFC0;
          _X23 = v30 + 4 * v141;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v141;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          *(v27 + 4 * (v134++ & 7)) = v140;
          --v137;
        }

        while (v137);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 24 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((-1640531535 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 2) & 0x3FFFFFC0;
        _X23 = v30 + 4 * v36;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v36;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x20]
        }

        v43 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v44 = (v43 >> 2) & 0x3FFFFFC0;
        v45 = v30 + 4 * v44;
        v46 = (v29 + v44);
        if (((*v46 - 1) & 0x3F) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 63;
        }

        v48 = v47 + ((*v46 - 1) & 0x3F);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v33++;
      }

      while (v34 != v33);
      v9 = v152;
    }

    *(a1 + 44) = v9;
    v49 = ((-1640531535 * *(v8 + v34 + 8)) ^ v16) >> (24 - v7);
    v50 = (v49 >> 2) & 0x3FFFFFC0;
    _X17 = v5 + 4 * v50;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v50;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    v26 = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v49;
  }

  *(a1 + 104) += v26;
  v57 = (v26 >> 2) & 0x3FFFFFC0;
  v58 = v5 + 4 * v57;
  v59 = (v6 + v57);
  v60 = *v59;
  v160 = vld4q_s8(v59);
  v61 = vdupq_n_s8(v26);
  v160.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v160.val[3], v61), vceqq_s8(v160.val[2], v61), 1uLL), vsriq_n_s8(vceqq_s8(v160.val[1], v61), vceqq_s8(v160.val[0], v61), 1uLL), 2uLL);
  v62 = vshrn_n_s16(vsriq_n_s8(v160.val[0], v160.val[0], 4uLL), 4uLL);
  v63 = 0;
  if (v62)
  {
    v64 = __ROR8__(*&v62, v60);
    do
    {
      v65 = (__clz(__rbit64(v64)) + v60) & 0x3F;
      if (v65)
      {
        v66 = *(v58 + 4 * v65);
        if (v66 < v11)
        {
          break;
        }

        _X4 = v8 + v66;
        __asm { PRFM            #0, [X4] }

        v158[v63++] = v66;
        --v17;
      }

      v64 &= v64 - 1;
    }

    while (v64 && v17);
  }

  v69 = (v60 - 1) & 0x3F;
  if (((v60 - 1) & 0x3F) != 0)
  {
    v70 = 0;
  }

  else
  {
    v70 = 63;
  }

  v71 = v70 + v69;
  *v59 = v71;
  v59[v71] = v26;
  v72 = 4 * v19;
  v73 = *(a1 + 44);
  *(a1 + 44) = v73 + 1;
  *(v58 + 4 * v71) = v73;
  if (v63)
  {
    v74 = 0;
    v75 = a3 - 7;
    v76 = a3 - 1;
    v77 = 3;
    while (1)
    {
      v79 = v158[v74];
      v80 = (v8 + v79);
      if (*(v8 + v79 + v77 - 3) != *(a2 - 3 + v77))
      {
        goto LABEL_36;
      }

      if (v75 <= a2)
      {
        v83 = a2;
        goto LABEL_46;
      }

      v81 = *v80;
      if (v81 == *a2)
      {
        break;
      }

      v78 = __clz(__rbit64(*a2 ^ v81)) >> 3;
      if (v78 > v77)
      {
LABEL_35:
        *a4 = v9 + 3 - v79;
        v77 = v78;
        if (a2 + v78 == a3)
        {
          goto LABEL_63;
        }
      }

LABEL_36:
      ++v74;
      v78 = v77;
      if (v74 == v63)
      {
        goto LABEL_63;
      }
    }

    v80 = (v8 + 8 + v79);
    v82 = (a2 + 8);
    while (1)
    {
      v83 = v82;
      if (v82 >= v75)
      {
        break;
      }

      v85 = *v80;
      v80 += 4;
      v84 = v85;
      ++v82;
      if (v85 != *v83)
      {
        v78 = v83 + (__clz(__rbit64(*v83 ^ v84)) >> 3) - a2;
        if (v78 <= v77)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

LABEL_46:
    if (v83 >= a3 - 3)
    {
      if (v83 >= v76)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v80 == *v83)
      {
        v80 += 2;
        v83 = (v83 + 4);
      }

      if (v83 >= v76)
      {
LABEL_50:
        if (v83 >= a3)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    if (*v80 == *v83)
    {
      ++v80;
      v83 = (v83 + 2);
    }

    if (v83 >= a3)
    {
LABEL_53:
      v78 = v83 - a2;
      if (v83 - a2 > v77)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

LABEL_51:
    if (*v80 == *v83)
    {
      v83 = (v83 + 1);
    }

    goto LABEL_53;
  }

  v78 = 3;
LABEL_63:
  v86 = *v14;
  v87 = *(v14 + 8);
  v88 = (*(v14 + 112) + 4 * v72);
  _X11 = v87 + *v88;
  __asm { PRFM            #0, [X11] }

  _X11 = v87 + v88[1];
  __asm { PRFM            #0, [X11] }

  v93 = v88[3];
  _X11 = v87 + v88[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v93 >> 8));
  v97 = *v14 - v87 - v157;
  __asm { PRFM            #0, [X19] }

  LODWORD(v99) = v17 + v25;
  if (v99)
  {
    v150 = v88[3];
    v149 = v99;
    if (v99 >= 3)
    {
      v99 = 3;
    }

    else
    {
      v99 = v99;
    }

    v151 = *v14 - v87 - v157;
    v153 = v9 + v97 + 3;
    v148 = v99;
    v100 = v99;
    while (1)
    {
      v102 = *v88++;
      v101 = v102;
      if (!v102)
      {
        return v78;
      }

      if (*(v87 + v101) == *a2)
      {
        v103 = ZSTD_count_2segments((a2 + 4), (v87 + v101 + 4), a3, v86, (v8 + v157));
        a3 = v156;
        v104 = v103 + 4;
        if (v103 + 4 > v78)
        {
          *a4 = (v153 - v101);
          v78 = v103 + 4;
          if (a2 + v104 == v156)
          {
            return v104;
          }
        }
      }

      if (!--v100)
      {
        v97 = v151;
        LOBYTE(v93) = v150;
        LODWORD(v99) = v149;
        v105 = v148;
        goto LABEL_76;
      }
    }
  }

  v105 = 0;
LABEL_76:
  v106 = v99 - v105;
  if (v106 >= v93)
  {
    v107 = v93;
  }

  else
  {
    v107 = v106;
  }

  if (!v107)
  {
    return v78;
  }

  v108 = 4 * v107;
  v109 = _X19;
  do
  {
    v110 = *v109++;
    _X10 = v87 + v110;
    __asm { PRFM            #0, [X10] }

    v108 -= 4;
  }

  while (v108);
  v113 = *a2;
  v154 = v152 + v97 + 3;
  v104 = v78;
  do
  {
    v115 = *_X19++;
    v114 = v115;
    v116 = v87 + v115;
    if (*v116 == v113)
    {
      v117 = ZSTD_count_2segments((a2 + 4), (v116 + 4), a3, v86, (v8 + v157));
      a3 = v156;
      if (v117 + 4 > v104)
      {
        *a4 = v154 - v114;
        v104 = v117 + 4;
        if (a2 + v117 + 4 == v156)
        {
          break;
        }
      }
    }

    --v107;
  }

  while (v107);
  return v104;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v147 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 4;
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBB000000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v146 = a3;
  v142 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v113 = v28 + 96;
        do
        {
          v114 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v115 = (v114 >> 4) & 0xFFFFFF0;
          _X20 = v5 + 4 * v115;
          __asm { PRFM            #0, [X20] }

          _X19 = v6 + v115;
          __asm { PRFM            #0, [X19] }

          v120 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v114;
          v121 = (v120 >> 4) & 0xFFFFFF0;
          v122 = v5 + 4 * v121;
          v123 = (v6 + v121);
          if (((*v123 - 1) & 0xF) != 0)
          {
            v124 = 0;
          }

          else
          {
            v124 = 15;
          }

          v125 = v124 + ((*v123 - 1) & 0xF);
          *v123 = v125;
          v123[v125] = v120;
          *(v122 + 4 * v125) = v28++;
        }

        while (v113 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v126 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v127 = a2 + 1 - (v8 + v126);
      if ((v127 + 1) < 8)
      {
        v128 = v127 + 1;
      }

      else
      {
        v128 = 8;
      }

      if (a2 + 1 >= v8 + v126)
      {
        v129 = v128;
      }

      else
      {
        v129 = 0;
      }

      if (v126 < v129 + v126)
      {
        v130 = *(a1 + 96);
        v131 = 56 - *(a1 + 52);
        do
        {
          v132 = ((0xCF1BBCDCBB000000 * *(v8 + v126)) ^ v130) >> v131;
          v133 = (v132 >> 4) & 0xFFFFFF0;
          _X23 = v30 + 4 * v133;
          __asm { PRFM            #0, [X23] }

          _X22 = v29 + v133;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v126++ & 7)) = v132;
          --v129;
        }

        while (v129);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((0xCF1BBCDCBB000000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        _X23 = v30 + 4 * v36;
        __asm { PRFM            #0, [X23] }

        _X22 = v29 + v36;
        __asm { PRFM            #0, [X22] }

        v41 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v42 = (v41 >> 4) & 0xFFFFFF0;
        v43 = v30 + 4 * v42;
        v44 = (v29 + v42);
        if (((*v44 - 1) & 0xF) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = 15;
        }

        v46 = v45 + ((*v44 - 1) & 0xF);
        *v44 = v46;
        v44[v46] = v41;
        *(v43 + 4 * v46) = v33++;
      }

      while (v34 != v33);
      v9 = v142;
    }

    *(a1 + 44) = v9;
    v47 = ((0xCF1BBCDCBB000000 * *(v8 + v34 + 8)) ^ v16) >> (56 - v7);
    v48 = (v47 >> 4) & 0xFFFFFF0;
    _X17 = v5 + 4 * v48;
    __asm { PRFM            #0, [X17] }

    _X15 = v6 + v48;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v47;
  }

  *(a1 + 104) += _X15;
  v52 = (_X15 >> 4) & 0xFFFFFF0;
  v53 = v5 + 4 * v52;
  v54 = (v6 + v52);
  v55 = 4 * v54->i8[0];
  v56 = *v54;
  v57 = __ROR8__(vshrn_n_s16(vceqq_s8(*v54, vdupq_n_s8(_X15)), 4uLL), v55) & 0x8888888888888888;
  if (v57)
  {
    v58 = 0;
    do
    {
      v59 = ((__clz(__rbit64(v57)) + (v55 & 0xFC)) >> 2) & 0xF;
      if (v59)
      {
        v60 = *(v53 + 4 * v59);
        if (v60 < v11)
        {
          break;
        }

        _X5 = v8 + v60;
        __asm { PRFM            #0, [X5] }

        v148[v58++] = v60;
        --v17;
      }

      v57 &= v57 - 1;
    }

    while (v57 && v17);
  }

  else
  {
    v58 = 0;
  }

  v63 = (v56 - 1) & 0xF;
  if (((v56 - 1) & 0xF) != 0)
  {
    v64 = 0;
  }

  else
  {
    v64 = 15;
  }

  v65 = v64 + v63;
  v54->i8[0] = v65;
  v54->i8[v65] = _X15;
  v66 = 4 * v19;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v53 + 4 * v65) = v67;
  if (v58)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = a3 - 1;
    v71 = 3;
    while (1)
    {
      v73 = v148[v68];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v71 - 3) != *(a2 - 3 + v71))
      {
        goto LABEL_38;
      }

      if (v69 <= a2)
      {
        v77 = a2;
        goto LABEL_48;
      }

      v75 = *v74;
      if (v75 == *a2)
      {
        break;
      }

      v72 = __clz(__rbit64(*a2 ^ v75)) >> 3;
      if (v72 > v71)
      {
LABEL_37:
        *a4 = v9 + 3 - v73;
        v71 = v72;
        if (a2 + v72 == a3)
        {
          goto LABEL_65;
        }
      }

LABEL_38:
      ++v68;
      v72 = v71;
      if (v68 == v58)
      {
        goto LABEL_65;
      }
    }

    v74 = (v8 + 8 + v73);
    v76 = (a2 + 8);
    while (1)
    {
      v77 = v76;
      if (v76 >= v69)
      {
        break;
      }

      v79 = *v74;
      v74 += 4;
      v78 = v79;
      ++v76;
      if (v79 != *v77)
      {
        v72 = v77 + (__clz(__rbit64(*v77 ^ v78)) >> 3) - a2;
        if (v72 <= v71)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

LABEL_48:
    if (v77 >= a3 - 3)
    {
      if (v77 >= v70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (*v74 == *v77)
      {
        v74 += 2;
        v77 = (v77 + 4);
      }

      if (v77 >= v70)
      {
LABEL_52:
        if (v77 >= a3)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    if (*v74 == *v77)
    {
      ++v74;
      v77 = (v77 + 2);
    }

    if (v77 >= a3)
    {
LABEL_55:
      v72 = v77 - a2;
      if (v77 - a2 > v71)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_53:
    if (*v74 == *v77)
    {
      v77 = (v77 + 1);
    }

    goto LABEL_55;
  }

  v72 = 3;
LABEL_65:
  v80 = *v14;
  v81 = *(v14 + 8);
  v82 = (*(v14 + 112) + 4 * v66);
  _X11 = v81 + *v82;
  __asm { PRFM            #0, [X11] }

  _X11 = v81 + v82[1];
  __asm { PRFM            #0, [X11] }

  v87 = v82[3];
  _X11 = v81 + v82[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v87 >> 8));
  v91 = *v14 - v81 - v147;
  __asm { PRFM            #0, [X19] }

  LODWORD(v93) = v17 + v25;
  if (v93)
  {
    v140 = v82[3];
    v139 = v93;
    if (v93 >= 3)
    {
      v93 = 3;
    }

    else
    {
      v93 = v93;
    }

    v141 = *v14 - v81 - v147;
    v143 = v9 + v91 + 3;
    v138 = v93;
    v94 = v93;
    while (1)
    {
      v96 = *v82++;
      v95 = v96;
      if (!v96)
      {
        return v72;
      }

      if (*(v81 + v95) == *a2)
      {
        v97 = ZSTD_count_2segments((a2 + 4), (v81 + v95 + 4), a3, v80, (v8 + v147));
        a3 = v146;
        v98 = v97 + 4;
        if (v97 + 4 > v72)
        {
          *a4 = (v143 - v95);
          v72 = v97 + 4;
          if (a2 + v98 == v146)
          {
            return v98;
          }
        }
      }

      if (!--v94)
      {
        v91 = v141;
        LOBYTE(v87) = v140;
        LODWORD(v93) = v139;
        v99 = v138;
        goto LABEL_78;
      }
    }
  }

  v99 = 0;
LABEL_78:
  v100 = v93 - v99;
  if (v100 >= v87)
  {
    v101 = v87;
  }

  else
  {
    v101 = v100;
  }

  if (!v101)
  {
    return v72;
  }

  v102 = 4 * v101;
  v103 = _X19;
  do
  {
    v104 = *v103++;
    _X10 = v81 + v104;
    __asm { PRFM            #0, [X10] }

    v102 -= 4;
  }

  while (v102);
  v107 = *a2;
  v144 = v142 + v91 + 3;
  v98 = v72;
  do
  {
    v109 = *_X19++;
    v108 = v109;
    v110 = v81 + v109;
    if (*v110 == v107)
    {
      v111 = ZSTD_count_2segments((a2 + 4), (v110 + 4), a3, v80, (v8 + v147));
      a3 = v146;
      if (v111 + 4 > v98)
      {
        *a4 = v144 - v108;
        v98 = v111 + 4;
        if (a2 + v111 + 4 == v146)
        {
          break;
        }
      }
    }

    --v101;
  }

  while (v101);
  return v98;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v154 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v152 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 5;
  if (v13 >= 5)
  {
    LOBYTE(v13) = 5;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBB000000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v151 = a3;
  v147 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v116 = v28 + 96;
        do
        {
          v117 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v118 = (v117 >> 3) & 0x1FFFFFE0;
          _X20 = v5 + 4 * v118;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v118;
          __asm { PRFM            #0, [X19] }

          v124 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v117;
          v125 = (v124 >> 3) & 0x1FFFFFE0;
          v126 = v5 + 4 * v125;
          v127 = (v6 + v125);
          if (((*v127 - 1) & 0x1F) != 0)
          {
            v128 = 0;
          }

          else
          {
            v128 = 31;
          }

          v129 = v128 + ((*v127 - 1) & 0x1F);
          *v127 = v129;
          v127[v129] = v124;
          *(v126 + 4 * v129) = v28++;
        }

        while (v116 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v130 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v131 = a2 + 1 - (v8 + v130);
      if ((v131 + 1) < 8)
      {
        v132 = v131 + 1;
      }

      else
      {
        v132 = 8;
      }

      if (a2 + 1 >= v8 + v130)
      {
        v133 = v132;
      }

      else
      {
        v133 = 0;
      }

      if (v130 < v133 + v130)
      {
        v134 = *(a1 + 96);
        v135 = 56 - *(a1 + 52);
        do
        {
          v136 = ((0xCF1BBCDCBB000000 * *(v8 + v130)) ^ v134) >> v135;
          v137 = (v136 >> 3) & 0x1FFFFFE0;
          _X23 = v30 + 4 * v137;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v137;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v130++ & 7)) = v136;
          --v133;
        }

        while (v133);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((0xCF1BBCDCBB000000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 3) & 0x1FFFFFE0;
        _X23 = v30 + 4 * v36;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v36;
        __asm { PRFM            #0, [X22] }

        v42 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v43 = (v42 >> 3) & 0x1FFFFFE0;
        v44 = v30 + 4 * v43;
        v45 = (v29 + v43);
        if (((*v45 - 1) & 0x1F) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = 31;
        }

        v47 = v46 + ((*v45 - 1) & 0x1F);
        *v45 = v47;
        v45[v47] = v42;
        *(v44 + 4 * v47) = v33++;
      }

      while (v34 != v33);
      v9 = v147;
    }

    *(a1 + 44) = v9;
    v48 = ((0xCF1BBCDCBB000000 * *(v8 + v34 + 8)) ^ v16) >> (56 - v7);
    v49 = (v48 >> 3) & 0x1FFFFFE0;
    _X17 = v5 + 4 * v49;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v49;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v48;
  }

  *(a1 + 104) += _X15;
  v54 = (_X15 >> 3) & 0x1FFFFFE0;
  v55 = v5 + 4 * v54;
  v56 = (v6 + v54);
  v155 = vld2q_s16(v56);
  v57 = *v56;
  v58 = 2 * *v56;
  v59 = vdupq_n_s8(_X15);
  v60 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v59, v155.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v59, v155.val[1]), 6uLL), 4uLL), v58) & 0x5555555555555555;
  if (v60)
  {
    v61 = 0;
    do
    {
      v62 = ((__clz(__rbit64(v60)) + (v58 & 0xFE)) >> 1) & 0x1F;
      if (v62)
      {
        v63 = *(v55 + 4 * v62);
        if (v63 < v11)
        {
          break;
        }

        _X5 = v8 + v63;
        __asm { PRFM            #0, [X5] }

        v153[v61++] = v63;
        --v17;
      }

      v60 &= v60 - 1;
    }

    while (v60 && v17);
  }

  else
  {
    v61 = 0;
  }

  v66 = (v57 - 1) & 0x1F;
  if (((v57 - 1) & 0x1F) != 0)
  {
    v67 = 0;
  }

  else
  {
    v67 = 31;
  }

  v68 = v67 + v66;
  *v56 = v68;
  *(v56 + v68) = _X15;
  v69 = 4 * v19;
  v70 = *(a1 + 44);
  *(a1 + 44) = v70 + 1;
  *(v55 + 4 * v68) = v70;
  if (v61)
  {
    v71 = 0;
    v72 = a3 - 7;
    v73 = a3 - 1;
    v74 = 3;
    while (1)
    {
      v76 = v153[v71];
      v77 = (v8 + v76);
      if (*(v8 + v76 + v74 - 3) != *(a2 - 3 + v74))
      {
        goto LABEL_38;
      }

      if (v72 <= a2)
      {
        v80 = a2;
        goto LABEL_48;
      }

      v78 = *v77;
      if (v78 == *a2)
      {
        break;
      }

      v75 = __clz(__rbit64(*a2 ^ v78)) >> 3;
      if (v75 > v74)
      {
LABEL_37:
        *a4 = v9 + 3 - v76;
        v74 = v75;
        if (a2 + v75 == a3)
        {
          goto LABEL_65;
        }
      }

LABEL_38:
      ++v71;
      v75 = v74;
      if (v71 == v61)
      {
        goto LABEL_65;
      }
    }

    v77 = (v8 + 8 + v76);
    v79 = (a2 + 8);
    while (1)
    {
      v80 = v79;
      if (v79 >= v72)
      {
        break;
      }

      v82 = *v77;
      v77 += 4;
      v81 = v82;
      ++v79;
      if (v82 != *v80)
      {
        v75 = v80 + (__clz(__rbit64(*v80 ^ v81)) >> 3) - a2;
        if (v75 <= v74)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

LABEL_48:
    if (v80 >= a3 - 3)
    {
      if (v80 >= v73)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (*v77 == *v80)
      {
        v77 += 2;
        v80 = (v80 + 4);
      }

      if (v80 >= v73)
      {
LABEL_52:
        if (v80 >= a3)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    if (*v77 == *v80)
    {
      ++v77;
      v80 = (v80 + 2);
    }

    if (v80 >= a3)
    {
LABEL_55:
      v75 = v80 - a2;
      if (v80 - a2 > v74)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_53:
    if (*v77 == *v80)
    {
      v80 = (v80 + 1);
    }

    goto LABEL_55;
  }

  v75 = 3;
LABEL_65:
  v83 = *v14;
  v84 = *(v14 + 8);
  v85 = (*(v14 + 112) + 4 * v69);
  _X11 = v84 + *v85;
  __asm { PRFM            #0, [X11] }

  _X11 = v84 + v85[1];
  __asm { PRFM            #0, [X11] }

  v90 = v85[3];
  _X11 = v84 + v85[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v90 >> 8));
  v94 = *v14 - v84 - v152;
  __asm { PRFM            #0, [X19] }

  LODWORD(v96) = v17 + v25;
  if (v96)
  {
    v145 = v85[3];
    v144 = v96;
    if (v96 >= 3)
    {
      v96 = 3;
    }

    else
    {
      v96 = v96;
    }

    v146 = *v14 - v84 - v152;
    v148 = v9 + v94 + 3;
    v143 = v96;
    v97 = v96;
    while (1)
    {
      v99 = *v85++;
      v98 = v99;
      if (!v99)
      {
        return v75;
      }

      if (*(v84 + v98) == *a2)
      {
        v100 = ZSTD_count_2segments((a2 + 4), (v84 + v98 + 4), a3, v83, (v8 + v152));
        a3 = v151;
        v101 = v100 + 4;
        if (v100 + 4 > v75)
        {
          *a4 = (v148 - v98);
          v75 = v100 + 4;
          if (a2 + v101 == v151)
          {
            return v101;
          }
        }
      }

      if (!--v97)
      {
        v94 = v146;
        LOBYTE(v90) = v145;
        LODWORD(v96) = v144;
        v102 = v143;
        goto LABEL_78;
      }
    }
  }

  v102 = 0;
LABEL_78:
  v103 = v96 - v102;
  if (v103 >= v90)
  {
    v104 = v90;
  }

  else
  {
    v104 = v103;
  }

  if (!v104)
  {
    return v75;
  }

  v105 = 4 * v104;
  v106 = _X19;
  do
  {
    v107 = *v106++;
    _X10 = v84 + v107;
    __asm { PRFM            #0, [X10] }

    v105 -= 4;
  }

  while (v105);
  v110 = *a2;
  v149 = v147 + v94 + 3;
  v101 = v75;
  do
  {
    v112 = *_X19++;
    v111 = v112;
    v113 = v84 + v112;
    if (*v113 == v110)
    {
      v114 = ZSTD_count_2segments((a2 + 4), (v113 + 4), a3, v83, (v8 + v152));
      a3 = v151;
      if (v114 + 4 > v101)
      {
        *a4 = v149 - v111;
        v101 = v114 + 4;
        if (a2 + v114 + 4 == v151)
        {
          break;
        }
      }
    }

    --v104;
  }

  while (v104);
  return v101;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v156 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 6;
  if (v13 >= 6)
  {
    LOBYTE(v13) = 6;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBB000000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v155 = a3;
  v151 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v118 = v28 + 96;
        do
        {
          v119 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v120 = (v119 >> 2) & 0x3FFFFFC0;
          _X20 = v5 + 4 * v120;
          __asm
          {
            PRFM            #0, [X20]
            PRFM            #0, [X20,#0x40]
          }

          _X19 = v6 + v120;
          __asm
          {
            PRFM            #0, [X19]
            PRFM            #0, [X19,#0x20]
          }

          v127 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v119;
          v128 = (v127 >> 2) & 0x3FFFFFC0;
          v129 = v5 + 4 * v128;
          v130 = (v6 + v128);
          if (((*v130 - 1) & 0x3F) != 0)
          {
            v131 = 0;
          }

          else
          {
            v131 = 63;
          }

          v132 = v131 + ((*v130 - 1) & 0x3F);
          *v130 = v132;
          v130[v132] = v127;
          *(v129 + 4 * v132) = v28++;
        }

        while (v118 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v133 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v134 = a2 + 1 - (v8 + v133);
      if ((v134 + 1) < 8)
      {
        v135 = v134 + 1;
      }

      else
      {
        v135 = 8;
      }

      if (a2 + 1 >= v8 + v133)
      {
        v136 = v135;
      }

      else
      {
        v136 = 0;
      }

      if (v133 < v136 + v133)
      {
        v137 = *(a1 + 96);
        v138 = 56 - *(a1 + 52);
        do
        {
          v139 = ((0xCF1BBCDCBB000000 * *(v8 + v133)) ^ v137) >> v138;
          v140 = (v139 >> 2) & 0x3FFFFFC0;
          _X23 = v30 + 4 * v140;
          __asm
          {
            PRFM            #0, [X23]
            PRFM            #0, [X23,#0x40]
          }

          _X22 = v29 + v140;
          __asm
          {
            PRFM            #0, [X22]
            PRFM            #0, [X22,#0x20]
          }

          *(v27 + 4 * (v133++ & 7)) = v139;
          --v136;
        }

        while (v136);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((0xCF1BBCDCBB000000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 2) & 0x3FFFFFC0;
        _X23 = v30 + 4 * v36;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v29 + v36;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x20]
        }

        v43 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v44 = (v43 >> 2) & 0x3FFFFFC0;
        v45 = v30 + 4 * v44;
        v46 = (v29 + v44);
        if (((*v46 - 1) & 0x3F) != 0)
        {
          v47 = 0;
        }

        else
        {
          v47 = 63;
        }

        v48 = v47 + ((*v46 - 1) & 0x3F);
        *v46 = v48;
        v46[v48] = v43;
        *(v45 + 4 * v48) = v33++;
      }

      while (v34 != v33);
      v9 = v151;
    }

    *(a1 + 44) = v9;
    v49 = ((0xCF1BBCDCBB000000 * *(v8 + v34 + 8)) ^ v16) >> (56 - v7);
    v50 = (v49 >> 2) & 0x3FFFFFC0;
    _X17 = v5 + 4 * v50;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X17,#0x40]
    }

    _X15 = v6 + v50;
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X15,#0x20]
    }

    LODWORD(_X15) = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v49;
  }

  *(a1 + 104) += _X15;
  v56 = (_X15 >> 2) & 0x3FFFFFC0;
  v57 = v5 + 4 * v56;
  v58 = (v6 + v56);
  v59 = *v58;
  v159 = vld4q_s8(v58);
  v60 = vdupq_n_s8(_X15);
  v159.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v159.val[3], v60), vceqq_s8(v159.val[2], v60), 1uLL), vsriq_n_s8(vceqq_s8(v159.val[1], v60), vceqq_s8(v159.val[0], v60), 1uLL), 2uLL);
  v61 = vshrn_n_s16(vsriq_n_s8(v159.val[0], v159.val[0], 4uLL), 4uLL);
  v62 = 0;
  if (v61)
  {
    v63 = __ROR8__(*&v61, v59);
    do
    {
      v64 = (__clz(__rbit64(v63)) + v59) & 0x3F;
      if (v64)
      {
        v65 = *(v57 + 4 * v64);
        if (v65 < v11)
        {
          break;
        }

        _X4 = v8 + v65;
        __asm { PRFM            #0, [X4] }

        v157[v62++] = v65;
        --v17;
      }

      v63 &= v63 - 1;
    }

    while (v63 && v17);
  }

  v68 = (v59 - 1) & 0x3F;
  if (((v59 - 1) & 0x3F) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 63;
  }

  v70 = v69 + v68;
  *v58 = v70;
  v58[v70] = _X15;
  v71 = 4 * v19;
  v72 = *(a1 + 44);
  *(a1 + 44) = v72 + 1;
  *(v57 + 4 * v70) = v72;
  if (v62)
  {
    v73 = 0;
    v74 = a3 - 7;
    v75 = a3 - 1;
    v76 = 3;
    while (1)
    {
      v78 = v157[v73];
      v79 = (v8 + v78);
      if (*(v8 + v78 + v76 - 3) != *(a2 - 3 + v76))
      {
        goto LABEL_36;
      }

      if (v74 <= a2)
      {
        v82 = a2;
        goto LABEL_46;
      }

      v80 = *v79;
      if (v80 == *a2)
      {
        break;
      }

      v77 = __clz(__rbit64(*a2 ^ v80)) >> 3;
      if (v77 > v76)
      {
LABEL_35:
        *a4 = v9 + 3 - v78;
        v76 = v77;
        if (a2 + v77 == a3)
        {
          goto LABEL_63;
        }
      }

LABEL_36:
      ++v73;
      v77 = v76;
      if (v73 == v62)
      {
        goto LABEL_63;
      }
    }

    v79 = (v8 + 8 + v78);
    v81 = (a2 + 8);
    while (1)
    {
      v82 = v81;
      if (v81 >= v74)
      {
        break;
      }

      v84 = *v79;
      v79 += 4;
      v83 = v84;
      ++v81;
      if (v84 != *v82)
      {
        v77 = v82 + (__clz(__rbit64(*v82 ^ v83)) >> 3) - a2;
        if (v77 <= v76)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

LABEL_46:
    if (v82 >= a3 - 3)
    {
      if (v82 >= v75)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*v79 == *v82)
      {
        v79 += 2;
        v82 = (v82 + 4);
      }

      if (v82 >= v75)
      {
LABEL_50:
        if (v82 >= a3)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    if (*v79 == *v82)
    {
      ++v79;
      v82 = (v82 + 2);
    }

    if (v82 >= a3)
    {
LABEL_53:
      v77 = v82 - a2;
      if (v82 - a2 > v76)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

LABEL_51:
    if (*v79 == *v82)
    {
      v82 = (v82 + 1);
    }

    goto LABEL_53;
  }

  v77 = 3;
LABEL_63:
  v85 = *v14;
  v86 = *(v14 + 8);
  v87 = (*(v14 + 112) + 4 * v71);
  _X11 = v86 + *v87;
  __asm { PRFM            #0, [X11] }

  _X11 = v86 + v87[1];
  __asm { PRFM            #0, [X11] }

  v92 = v87[3];
  _X11 = v86 + v87[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v92 >> 8));
  v96 = *v14 - v86 - v156;
  __asm { PRFM            #0, [X19] }

  LODWORD(v98) = v17 + v25;
  if (v98)
  {
    v149 = v87[3];
    v148 = v98;
    if (v98 >= 3)
    {
      v98 = 3;
    }

    else
    {
      v98 = v98;
    }

    v150 = *v14 - v86 - v156;
    v152 = v9 + v96 + 3;
    v147 = v98;
    v99 = v98;
    while (1)
    {
      v101 = *v87++;
      v100 = v101;
      if (!v101)
      {
        return v77;
      }

      if (*(v86 + v100) == *a2)
      {
        v102 = ZSTD_count_2segments((a2 + 4), (v86 + v100 + 4), a3, v85, (v8 + v156));
        a3 = v155;
        v103 = v102 + 4;
        if (v102 + 4 > v77)
        {
          *a4 = (v152 - v100);
          v77 = v102 + 4;
          if (a2 + v103 == v155)
          {
            return v103;
          }
        }
      }

      if (!--v99)
      {
        v96 = v150;
        LOBYTE(v92) = v149;
        LODWORD(v98) = v148;
        v104 = v147;
        goto LABEL_76;
      }
    }
  }

  v104 = 0;
LABEL_76:
  v105 = v98 - v104;
  if (v105 >= v92)
  {
    v106 = v92;
  }

  else
  {
    v106 = v105;
  }

  if (!v106)
  {
    return v77;
  }

  v107 = 4 * v106;
  v108 = _X19;
  do
  {
    v109 = *v108++;
    _X10 = v86 + v109;
    __asm { PRFM            #0, [X10] }

    v107 -= 4;
  }

  while (v107);
  v112 = *a2;
  v153 = v151 + v96 + 3;
  v103 = v77;
  do
  {
    v114 = *_X19++;
    v113 = v114;
    v115 = v86 + v114;
    if (*v115 == v112)
    {
      v116 = ZSTD_count_2segments((a2 + 4), (v115 + 4), a3, v85, (v8 + v156));
      a3 = v155;
      if (v116 + 4 > v103)
      {
        *a4 = v153 - v113;
        v103 = v116 + 4;
        if (a2 + v116 + 4 == v155)
        {
          break;
        }
      }
    }

    --v106;
  }

  while (v106);
  return v103;
}

unint64_t ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 256);
  v147 = *(a1 + 24);
  v11 = a2 - v8 - v10;
  _ZF = a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0;
  if (!_ZF)
  {
    v11 = *(a1 + 28);
  }

  v13 = *(a1 + 268);
  v14 = *(a1 + 248);
  v15 = v13 - 4;
  if (v13 >= 4)
  {
    LOBYTE(v13) = 4;
  }

  v16 = *(a1 + 96);
  v17 = 1 << v13;
  v18 = 0xCF1BBCDCBF9B0000 * *a2;
  v19 = v18 >> (66 - *(v14 + 264));
  _X3 = *(v14 + 112) + 16 * v19;
  __asm { PRFM            #0, [X3] }

  v25 = 1 << v15;
  if (!(!_ZF & _CF))
  {
    v25 = 0;
  }

  v146 = a3;
  v142 = v9;
  if (*(a1 + 300))
  {
    _X15 = (v18 ^ v16) >> (56 - v7);
    *(a1 + 44) = v9;
  }

  else
  {
    v27 = a1 + 64;
    v28 = *(a1 + 44);
    if (v9 - v28 >= 0x181)
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
      if (v28 <= 0xFFFFFF9F)
      {
        v113 = v28 + 96;
        do
        {
          v114 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v28)) ^ *(a1 + 96)) >> (56 - v7);
          v115 = (v114 >> 4) & 0xFFFFFF0;
          _X20 = v5 + 4 * v115;
          __asm { PRFM            #0, [X20] }

          _X19 = v6 + v115;
          __asm { PRFM            #0, [X19] }

          v120 = *(v27 + 4 * (v28 & 7));
          *(v27 + 4 * (v28 & 7)) = v114;
          v121 = (v120 >> 4) & 0xFFFFFF0;
          v122 = v5 + 4 * v121;
          v123 = (v6 + v121);
          if (((*v123 - 1) & 0xF) != 0)
          {
            v124 = 0;
          }

          else
          {
            v124 = 15;
          }

          v125 = v124 + ((*v123 - 1) & 0xF);
          *v123 = v125;
          v123[v125] = v120;
          *(v122 + 4 * v125) = v28++;
        }

        while (v113 != v28);
        v30 = *(a1 + 112);
        v29 = *(a1 + 56);
      }

      v126 = v9 - 32;
      LODWORD(v28) = v9 - 32;
      v127 = a2 + 1 - (v8 + v126);
      if ((v127 + 1) < 8)
      {
        v128 = v127 + 1;
      }

      else
      {
        v128 = 8;
      }

      if (a2 + 1 >= v8 + v126)
      {
        v129 = v128;
      }

      else
      {
        v129 = 0;
      }

      if (v126 < v129 + v126)
      {
        v130 = *(a1 + 96);
        v131 = 56 - *(a1 + 52);
        do
        {
          v132 = ((0xCF1BBCDCBF9B0000 * *(v8 + v126)) ^ v130) >> v131;
          v133 = (v132 >> 4) & 0xFFFFFF0;
          _X23 = v30 + 4 * v133;
          __asm { PRFM            #0, [X23] }

          _X22 = v29 + v133;
          __asm { PRFM            #0, [X22] }

          *(v27 + 4 * (v126++ & 7)) = v132;
          --v129;
        }

        while (v129);
      }
    }

    else
    {
      v29 = *(a1 + 56);
      v30 = *(a1 + 112);
    }

    if (v28 >= v9)
    {
      v34 = v9;
    }

    else
    {
      v31 = *(a1 + 8) + 8;
      v32 = 56 - *(a1 + 52);
      v33 = v28;
      v34 = v9;
      do
      {
        v35 = ((0xCF1BBCDCBF9B0000 * *(v31 + v33)) ^ *(a1 + 96)) >> v32;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        _X23 = v30 + 4 * v36;
        __asm { PRFM            #0, [X23] }

        _X22 = v29 + v36;
        __asm { PRFM            #0, [X22] }

        v41 = *(v27 + 4 * (v33 & 7));
        *(v27 + 4 * (v33 & 7)) = v35;
        v42 = (v41 >> 4) & 0xFFFFFF0;
        v43 = v30 + 4 * v42;
        v44 = (v29 + v42);
        if (((*v44 - 1) & 0xF) != 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = 15;
        }

        v46 = v45 + ((*v44 - 1) & 0xF);
        *v44 = v46;
        v44[v46] = v41;
        *(v43 + 4 * v46) = v33++;
      }

      while (v34 != v33);
      v9 = v142;
    }

    *(a1 + 44) = v9;
    v47 = ((0xCF1BBCDCBF9B0000 * *(v8 + v34 + 8)) ^ v16) >> (56 - v7);
    v48 = (v47 >> 4) & 0xFFFFFF0;
    _X17 = v5 + 4 * v48;
    __asm { PRFM            #0, [X17] }

    _X15 = v6 + v48;
    __asm { PRFM            #0, [X15] }

    LODWORD(_X15) = *(v27 + 4 * (v9 & 7));
    *(v27 + 4 * (v9 & 7)) = v47;
  }

  *(a1 + 104) += _X15;
  v52 = (_X15 >> 4) & 0xFFFFFF0;
  v53 = v5 + 4 * v52;
  v54 = (v6 + v52);
  v55 = 4 * v54->i8[0];
  v56 = *v54;
  v57 = __ROR8__(vshrn_n_s16(vceqq_s8(*v54, vdupq_n_s8(_X15)), 4uLL), v55) & 0x8888888888888888;
  if (v57)
  {
    v58 = 0;
    do
    {
      v59 = ((__clz(__rbit64(v57)) + (v55 & 0xFC)) >> 2) & 0xF;
      if (v59)
      {
        v60 = *(v53 + 4 * v59);
        if (v60 < v11)
        {
          break;
        }

        _X5 = v8 + v60;
        __asm { PRFM            #0, [X5] }

        v148[v58++] = v60;
        --v17;
      }

      v57 &= v57 - 1;
    }

    while (v57 && v17);
  }

  else
  {
    v58 = 0;
  }

  v63 = (v56 - 1) & 0xF;
  if (((v56 - 1) & 0xF) != 0)
  {
    v64 = 0;
  }

  else
  {
    v64 = 15;
  }

  v65 = v64 + v63;
  v54->i8[0] = v65;
  v54->i8[v65] = _X15;
  v66 = 4 * v19;
  v67 = *(a1 + 44);
  *(a1 + 44) = v67 + 1;
  *(v53 + 4 * v65) = v67;
  if (v58)
  {
    v68 = 0;
    v69 = a3 - 7;
    v70 = a3 - 1;
    v71 = 3;
    while (1)
    {
      v73 = v148[v68];
      v74 = (v8 + v73);
      if (*(v8 + v73 + v71 - 3) != *(a2 - 3 + v71))
      {
        goto LABEL_38;
      }

      if (v69 <= a2)
      {
        v77 = a2;
        goto LABEL_48;
      }

      v75 = *v74;
      if (v75 == *a2)
      {
        break;
      }

      v72 = __clz(__rbit64(*a2 ^ v75)) >> 3;
      if (v72 > v71)
      {
LABEL_37:
        *a4 = v9 + 3 - v73;
        v71 = v72;
        if (a2 + v72 == a3)
        {
          goto LABEL_65;
        }
      }

LABEL_38:
      ++v68;
      v72 = v71;
      if (v68 == v58)
      {
        goto LABEL_65;
      }
    }

    v74 = (v8 + 8 + v73);
    v76 = (a2 + 8);
    while (1)
    {
      v77 = v76;
      if (v76 >= v69)
      {
        break;
      }

      v79 = *v74;
      v74 += 4;
      v78 = v79;
      ++v76;
      if (v79 != *v77)
      {
        v72 = v77 + (__clz(__rbit64(*v77 ^ v78)) >> 3) - a2;
        if (v72 <= v71)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

LABEL_48:
    if (v77 >= a3 - 3)
    {
      if (v77 >= v70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (*v74 == *v77)
      {
        v74 += 2;
        v77 = (v77 + 4);
      }

      if (v77 >= v70)
      {
LABEL_52:
        if (v77 >= a3)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    if (*v74 == *v77)
    {
      ++v74;
      v77 = (v77 + 2);
    }

    if (v77 >= a3)
    {
LABEL_55:
      v72 = v77 - a2;
      if (v77 - a2 > v71)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_53:
    if (*v74 == *v77)
    {
      v77 = (v77 + 1);
    }

    goto LABEL_55;
  }

  v72 = 3;
LABEL_65:
  v80 = *v14;
  v81 = *(v14 + 8);
  v82 = (*(v14 + 112) + 4 * v66);
  _X11 = v81 + *v82;
  __asm { PRFM            #0, [X11] }

  _X11 = v81 + v82[1];
  __asm { PRFM            #0, [X11] }

  v87 = v82[3];
  _X11 = v81 + v82[2];
  __asm { PRFM            #0, [X11] }

  _X19 = (*(v14 + 128) + 4 * (v87 >> 8));
  v91 = *v14 - v81 - v147;
  __asm { PRFM            #0, [X19] }

  LODWORD(v93) = v17 + v25;
  if (v93)
  {
    v140 = v82[3];
    v139 = v93;
    if (v93 >= 3)
    {
      v93 = 3;
    }

    else
    {
      v93 = v93;
    }

    v141 = *v14 - v81 - v147;
    v143 = v9 + v91 + 3;
    v138 = v93;
    v94 = v93;
    while (1)
    {
      v96 = *v82++;
      v95 = v96;
      if (!v96)
      {
        return v72;
      }

      if (*(v81 + v95) == *a2)
      {
        v97 = ZSTD_count_2segments((a2 + 4), (v81 + v95 + 4), a3, v80, (v8 + v147));
        a3 = v146;
        v98 = v97 + 4;
        if (v97 + 4 > v72)
        {
          *a4 = (v143 - v95);
          v72 = v97 + 4;
          if (a2 + v98 == v146)
          {
            return v98;
          }
        }
      }

      if (!--v94)
      {
        v91 = v141;
        LOBYTE(v87) = v140;
        LODWORD(v93) = v139;
        v99 = v138;
        goto LABEL_78;
      }
    }
  }

  v99 = 0;
LABEL_78:
  v100 = v93 - v99;
  if (v100 >= v87)
  {
    v101 = v87;
  }

  else
  {
    v101 = v100;
  }

  if (!v101)
  {
    return v72;
  }

  v102 = 4 * v101;
  v103 = _X19;
  do
  {
    v104 = *v103++;
    _X10 = v81 + v104;
    __asm { PRFM            #0, [X10] }

    v102 -= 4;
  }

  while (v102);
  v107 = *a2;
  v144 = v142 + v91 + 3;
  v98 = v72;
  do
  {
    v109 = *_X19++;
    v108 = v109;
    v110 = v81 + v109;
    if (*v110 == v107)
    {
      v111 = ZSTD_count_2segments((a2 + 4), (v110 + 4), a3, v80, (v8 + v147));
      a3 = v146;
      if (v111 + 4 > v98)
      {
        *a4 = v144 - v108;
        v98 = v111 + 4;
        if (a2 + v111 + 4 == v146)
        {
          break;
        }
      }
    }

    --v101;
  }

  while (v101);
  return v98;
}