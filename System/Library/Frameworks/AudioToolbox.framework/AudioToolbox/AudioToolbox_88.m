uint64_t E_ACELP_indexing(unint64_t a1, unint64_t a2, int *a3, _DWORD *a4, unint64_t a5)
{
  *v197 = *MEMORY[0x1E69E9840];
  v183 = 0xAAAAAAAAAAAAAAAALL;
  v184 = 0xAAAAAAAAAAAAAAAALL;
  memset(v181, 170, sizeof(v181));
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v178 = v7;
  v179 = v7;
  v177[0] = v7;
  v177[1] = v7;
  v8 = *a3;
  v9 = ((*a3 + 15) >> 4);
  v173 = (v9 - 1);
  if (v9 >= 1)
  {
    v10 = v181;
    v11 = ((v8 + 15) >> 4);
    do
    {
      v12 = v10 + 1;
      if (v10 < v181 || v12 > v182 || v10 > v12)
      {
        goto LABEL_286;
      }

      *v10++ = 0;
      --v11;
    }

    while (v11);
  }

  if (v8 != 43)
  {
    v94 = 0;
    *&v95 = 0xAAAAAAAAAAAAAAAALL;
    *(&v95 + 1) = 0xAAAAAAAAAAAAAAAALL;
    while (1)
    {
      v96 = a1 + 4 * v94;
      if (v96 < a1)
      {
        goto LABEL_286;
      }

      v97 = v177 + 8 * v94;
      if (v97)
      {
        if (v97 < v177 || v97 + 8 > &v178 || v97 > v97 + 8)
        {
          goto LABEL_286;
        }
      }

      v98 = &v178 + v94;
      if (v98)
      {
        if (v98 < &v178 || v98 + 1 > &v180 || v98 > v98 + 1)
        {
          goto LABEL_286;
        }
      }

      v99 = &v183 + v94;
      if (v99)
      {
        if (v99 < &v183 || v99 + 1 > v185 || v99 > v99 + 1)
        {
          goto LABEL_286;
        }
      }

      v100 = v9;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v188 = v95;
      v189 = v95;
      LODWORD(v190[0]) = -1431655766;
      *v185 = v95;
      *&v185[16] = v95;
      v186 = -1431655766;
      while (1)
      {
        v104 = (v96 + 4 * v101);
        v105 = v104 + 1;
        if (v104 < v96 || v105 > a2 || v104 > v105)
        {
          goto LABEL_286;
        }

        v108 = *v104 > 0.0 ? 1 : -1;
        v109 = *v104 * v108;
        if (v109 > 0.0)
        {
          break;
        }

LABEL_170:
        v101 += 4;
        if (++v102 == 16)
        {
          goto LABEL_173;
        }
      }

      v110 = 0;
      v111 = 0;
      v112 = v103;
      if (v103 <= 8)
      {
        v113 = 8;
      }

      else
      {
        v113 = v103;
      }

      v114 = v113 - v103;
      v115 = &v185[4 * v103];
      v116 = &v188 + 4 * v103;
      while (1)
      {
        v117 = &v116[v110];
        if (&v116[v110] < &v188)
        {
          goto LABEL_286;
        }

        if (v117 + 4 > v190 + 4 || v117 > v117 + 4)
        {
          goto LABEL_286;
        }

        *&v116[4 * v111] = v102;
        v119 = &v115[v110];
        if (&v115[v110] < v185 || v119 + 4 > v187 || v119 > v119 + 4)
        {
          goto LABEL_286;
        }

        *&v115[4 * v111] = v108;
        if (v114 == v111)
        {
          break;
        }

        ++v111;
        v110 += 4;
        if (v109 <= v111)
        {
          v103 = v112 + v111;
          goto LABEL_170;
        }
      }

      v103 = v112 + v111 + 1;
LABEL_173:
      *v99 = v103;
      if (v103 < 1)
      {
        v121 = 0;
      }

      else
      {
        v120 = 0;
        v121 = 0;
        v122 = &pulsestostates;
        do
        {
          if (4 * (v103 - 1) == v120)
          {
            goto LABEL_190;
          }

          v123 = &v188 + v120;
          v124 = &v188 + v120 + 4;
          v126 = (&v188 + v120) < &v188 || v124 > v190 + 4 || v123 > v124;
          v127 = v123 + 8;
          if (v126 || v127 > v190 + 4 || v124 > v127)
          {
            goto LABEL_286;
          }

          if (*v123 != *(v123 + 1))
          {
LABEL_190:
            v130 = &v185[v120];
            v131 = &v185[v120 + 4];
            if (&v185[v120] < v185 || v131 > v187 || v130 > v131)
            {
              goto LABEL_286;
            }

            v121 = (*v130 >> 31) | (2 * v121);
          }

          v134 = (&v188 + v120);
          if ((&v188 + v120) < &v188 || v134 + 1 > v190 + 1 || v134 > v134 + 1)
          {
            goto LABEL_286;
          }

          v135 = 9 * *v134;
          v136 = &pulsestostates + 8 * v135;
          v137 = &v122[8 * v135];
          v138 = (v137 + 8);
          v139 = v137 < v136 || v138 > (v136 + 72);
          if (v139 || v137 > v138)
          {
            goto LABEL_286;
          }

          v121 += *v137;
          v120 += 4;
          v122 += 8;
        }

        while (4 * v103 != v120);
      }

      *v98 = v121;
      if (v103)
      {
        v141 = &byte_19B37A498[8 * v103];
        v142 = v141 - 8;
        if (v141 - 8 < byte_19B37A498 || v141 > bwd_start_bin || v142 > v141)
        {
          goto LABEL_286;
        }

        v143 = *v142;
      }

      else
      {
        v143 = 0;
      }

      *(v177 + v94) = v143;
      v88 = v94++ >= 3;
      v9 = v100;
      if (v88)
      {
        result = fcb_pulse_track_joint(v181, v182, v100, &v178, &v180, &v183, v185);
        goto LABEL_220;
      }
    }
  }

  v15 = 0;
  v16 = &v184;
  v17 = &v179;
  v18 = &v178;
  v19 = &v183;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v190[4] = v20;
  v190[5] = v20;
  v190[2] = v20;
  v190[3] = v20;
  v190[0] = v20;
  v190[1] = v20;
  v188 = v20;
  v189 = v20;
  v21 = 1;
  do
  {
    v22 = (a1 + 4 * v15);
    if (v22 < a1)
    {
      goto LABEL_286;
    }

    v23 = v21;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    memset(v192, 170, sizeof(v192));
    v27 = -4;
    v28 = v22;
    memset(v185, 170, 28);
    do
    {
      if (v28 < v22 || (v28 + 1) > a2 || v28 > v28 + 1)
      {
        goto LABEL_286;
      }

      v29 = *v28;
      if (*v28 != 0.0)
      {
        v30 = &v192[v25];
        if (v30 < v192)
        {
          goto LABEL_286;
        }

        if (v30 + 1 > v193)
        {
          goto LABEL_286;
        }

        if (v30 > v30 + 1)
        {
          goto LABEL_286;
        }

        v192[v25] = v24;
        v31 = &v185[4 * v25];
        if (v31 < v185 || v31 + 1 > &v185[28] || v31 > v31 + 1)
        {
          goto LABEL_286;
        }

        *v31 = fabsf(v29);
        v26 = (v29 <= 0.0) | (2 * v26);
        ++v25;
      }

      ++v24;
      v27 += 4;
      v28 += 4;
    }

    while (v27 < 0x3C);
    v32 = &dword_19B38CAE0[v25];
    if (v32 < dword_19B38CAE0 || v32 + 1 > dword_19B38CB00 || v32 > v32 + 1)
    {
      goto LABEL_286;
    }

    v33 = *v32 - 1;
    if (v25 <= 0)
    {
      v194 = 0;
      v195 = 0;
      v196 = 0;
    }

    else
    {
      v34 = 0;
      v35 = v192;
      v36 = &PI_select_table + 4 * v25;
      do
      {
        v37 = v35 + 1;
        if (v35 < v192 || v37 > v193 || v35 > v37)
        {
          goto LABEL_286;
        }

        v40 = *v35;
        v41 = &PI_select_table + 32 * (15 - v40);
        v42 = &v36[v34 - 32 * v40];
        v43 = (v42 + 480);
        v44 = (v42 + 484);
        v45 = v43 < v41 || v44 > (v41 + 32);
        if (v45 || v43 > v44)
        {
          goto LABEL_286;
        }

        v33 -= *&v36[v34 + 480 + -32 * v40];
        v34 -= 4;
        ++v35;
      }

      while (4 * v25 + v34);
      v194 = 0;
      v195 = 0;
      v196 = 0;
      if (v25 > 2)
      {
        v72 = 0;
        goto LABEL_88;
      }

      v47 = 0;
      v48 = &v194;
      do
      {
        if (*&v185[4 * v47] < 2)
        {
          v50 = v48;
        }

        else
        {
          v49 = 0;
          do
          {
            v50 = (v48 + 4);
            if (v48 < &v194 || v50 > v197 || v48 > v50)
            {
              goto LABEL_286;
            }

            *v48 = v47;
            ++v49;
            v48 = (v48 + 4);
          }

          while (v49 < *&v185[4 * v47] - 1);
        }

        ++v47;
        v48 = v50;
      }

      while (v47 != v25);
    }

    v53 = (3 - v25);
    v54 = &byte_19B38C920[4 * v53];
    if (v54 < byte_19B38C920 || v54 + 4 > byte_19B38C940 || v54 > v54 + 4)
    {
      goto LABEL_286;
    }

    v55 = 0;
    v56 = *(&PI_select_table + v53 + 16) - 1;
    v57 = 4 * v53;
    v58 = &v194;
    do
    {
      v59 = v58 + 1;
      if (v58 < &v194 || v59 > v197 || v58 > v59)
      {
        goto LABEL_286;
      }

      v62 = *v58;
      v63 = &PI_select_table + v55 - 32 * v62;
      v64 = v63 + 32;
      v65 = v63 + 64;
      v66 = &PI_select_table + v57 - 32 * v62;
      v67 = v66 + 32;
      v68 = v66 + 36;
      v69 = v67 < v64 || v68 > v65;
      if (v69 || v67 > v68)
      {
        goto LABEL_286;
      }

      v56 -= *(&PI_select_table + v57 + -32 * v62 + 32);
      v57 -= 36;
      ++v58;
      v55 -= 32;
      --v53;
    }

    while (v53);
    v71 = &PI_factor[v25];
    if (v71 < PI_factor || v71 + 1 > &word_19B38CBCE || v71 > v71 + 1)
    {
      goto LABEL_286;
    }

    v72 = v56 * *v71;
LABEL_88:
    v73 = &dword_19B38C840[4 - v25];
    if (v73 < dword_19B38C840)
    {
      goto LABEL_286;
    }

    if (v73 + 1 > dword_19B38C860)
    {
      goto LABEL_286;
    }

    if (v73 > v73 + 1)
    {
      goto LABEL_286;
    }

    if (v18 + 8 > &v180)
    {
      goto LABEL_286;
    }

    *v18 = ((v72 + v33) << v25) + v26 + *v73;
    if (v19 + 4 > v185)
    {
      goto LABEL_286;
    }

    v21 = 0;
    *v19 = 3;
    v18 = (&v178 + 8);
    v19 = (&v183 + 4);
    v15 = 1;
  }

  while ((v23 & 1) != 0);
  v74 = 0;
  v75 = 2;
  do
  {
    v76 = v74;
    v77 = 9 * v75;
    v78 = v75 >> 2;
    v79 = v75 - 4;
    v80 = (a1 + 4 * v75);
    v81 = (v75 >> 2) + 16;
    v82 = v77;
    while (1)
    {
      if (v80 < a1 || (v80 + 1) > a2 || v80 > v80 + 1)
      {
        goto LABEL_286;
      }

      if (*v80 != 0.0)
      {
        break;
      }

LABEL_115:
      LODWORD(v78) = v78 + 1;
      v79 += 4;
      v80 += 4;
      ++v81;
      if (v79 >= 0x3C)
      {
        goto LABEL_123;
      }
    }

    if (*v80 >= 0.0)
    {
      v83 = v78;
    }

    else
    {
      v83 = v81;
    }

    v84 = fabsf(*v80);
    v85 = &v188 + v82;
    v86 = v85 + 1;
    v88 = v85 + 1 <= &v191 && v85 <= v86 && v85 >= &v188;
    v89 = v88;
    if (v84 <= 1.0)
    {
      if (!v89)
      {
        goto LABEL_286;
      }

      *v85 = v83;
      ++v82;
      goto LABEL_115;
    }

    if (!v89)
    {
      goto LABEL_286;
    }

    *v85 = v83;
    v90 = v85 + 2;
    if (v90 > &v191 || v86 > v90)
    {
      goto LABEL_286;
    }

    *v86 = v83;
LABEL_123:
    if (v17 + 8 > &v180)
    {
      goto LABEL_286;
    }

    result = quant_2p_2N1(*(&v188 + 2 * v77), *(&v188 + 2 * v77 + 2), 4);
    *v17 = result;
    if (v16 + 4 > v185)
    {
      goto LABEL_286;
    }

    *v16 = 2;
    v74 = 1;
    v16 = (&v184 + 4);
    v17 = (&v179 + 8);
    v75 = 3;
  }

  while ((v76 & 1) == 0);
  v93 = DWORD2(v178) + 5472 * v178;
  if (v93 >= 3611648)
  {
    v93 += 3611648;
  }

  *v181 = WORD4(v179) + (v179 << 9);
  *&v181[2] = (v179 >> 7) + 4 * v93;
  *&v181[4] = v93 >> 14;
  v9 = 3;
LABEL_220:
  v144 = a3[18];
  if (v144 == 6)
  {
    for (i = 1; i != 4; ++i)
    {
      if (*(&v183 + i) < v183)
      {
        goto LABEL_238;
      }
    }

    LOWORD(i) = 0;
LABEL_238:
    if (v9 >= 0xA)
    {
      goto LABEL_286;
    }

    goto LABEL_239;
  }

  if (v144 == 4)
  {
    for (i = 1; i != 4; ++i)
    {
      if (*(&v183 + i) > v183)
      {
        goto LABEL_233;
      }
    }

    LOWORD(i) = 0;
LABEL_233:
    if (v9 > 9)
    {
      goto LABEL_286;
    }

LABEL_239:
    v146 = v173;
    if (v9 >= 2)
    {
      v147 = v173 + 1;
      v148 = &v181[2 * v173];
      do
      {
        v149 = v148 + 1;
        v151 = v148 < v181 || v149 > &v181[2 * v9] || v148 > v149;
        if (v151 || v148 - 1 < v181 || v148 - 1 > v148)
        {
          goto LABEL_286;
        }

        HIDWORD(v152) = *v148;
        LODWORD(v152) = *(v148 - 1) << 16;
        *v148 = v152 >> 30;
        --v147;
        --v148;
      }

      while (v147 > 1);
      v146 = 0;
    }

    v153 = &v181[2 * v146];
    if (v153 >= v181 && v153 + 1 <= &v181[2 * v9] && v153 <= v153 + 1)
    {
      *v153 *= 4;
      if (v9 > 0)
      {
        v154 = *v181;
        v155 = *v181 + i;
        *v181 = v155;
        if (v9 == 1)
        {
          goto LABEL_267;
        }

        v156 = v154 > v155;
        v157 = v9 - 1;
        v158 = &v181[2];
        while (1)
        {
          v159 = v158 + 1;
          v160 = v158 < v181 || v159 > &v181[2 * v9];
          if (v160 || v158 > v159)
          {
            break;
          }

          v162 = v156 + *v158;
          *v158++ = v162;
          v156 = v162 >> 16;
          if (!--v157)
          {
            goto LABEL_266;
          }
        }
      }
    }

LABEL_286:
    __break(0x5519u);
  }

  if (v144 == 3)
  {
    if (v183 == HIDWORD(v183))
    {
      LOWORD(i) = 2 * (v183 <= v184);
    }

    else if (v183 < SHIDWORD(v183))
    {
      LOWORD(i) = 1;
    }

    else
    {
      LOWORD(i) = 3;
    }

    goto LABEL_238;
  }

LABEL_266:
  if (v9 >= 1)
  {
LABEL_267:
    v163 = v181;
    for (j = a4; ; ++j)
    {
      v165 = v163 + 1;
      v166 = v163 < v181 || v165 > v182;
      v167 = v166 || v163 > v165;
      v168 = j + 1;
      v169 = !v167 && j >= a4;
      v170 = !v169 || v168 > a5;
      if (v170 || j > v168)
      {
        break;
      }

      v172 = *v163++;
      *j = v172;
      if (!--v9)
      {
        return result;
      }
    }

    goto LABEL_286;
  }

  return result;
}

_WORD *fcb_pulse_track_joint(_WORD *result, unint64_t a2, int a3, unint64_t a4, unint64_t a5, int *a6, unint64_t a7)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v94 = *MEMORY[0x1E69E9840];
  v91 = xmmword_19B0B3130;
  v92 = xmmword_19B0B3140;
  v93 = 0x800000008;
  do
  {
    v11 = &a6[v7];
    v12 = &a6[v7 + 1];
    if (&a6[v7] < a6 || v12 > a7 || v11 > v12)
    {
      goto LABEL_170;
    }

    v15 = *v11;
    v8 += v15 >> 2;
    v9 += v15 >> 1;
    v10 += v15 >> 3;
    ++v7;
  }

  while (v7 != 4);
  if (v10 < 1)
  {
    if (v8 > 3)
    {
      v16 = 0xFFFFLL;
    }

    else
    {
      LODWORD(v92) = 1;
      v16 = 255;
    }
  }

  else
  {
    HIDWORD(v92) = 9;
    v16 = 0xFFFFFFLL;
  }

  v17 = (a4 + 8);
  v19 = a4 + 8 <= a5 && v17 >= a4;
  if (v9 >= 4)
  {
    if (v19 && (a6 + 1) <= a7 && a6 + 1 >= a6)
    {
      v34 = *a6;
      v35 = &low_len[v34];
      if (v35 >= low_len && v35 + 1 <= indx_fact && v35 <= v35 + 1)
      {
        v36 = 0;
        v37 = 0;
        v38 = *a4 >> *v35;
        do
        {
          v39 = &a6[v37 + 1];
          v40 = &a6[v37 + 2];
          v42 = v39 < a6 || v40 > a7 || v39 > v40;
          v43 = (a4 + v36 + 8);
          v44 = a4 + v36 + 16;
          if (v42 || v43 < a4 || v44 > a5 || v43 > v44)
          {
            goto LABEL_170;
          }

          v48 = *v39;
          v49 = &low_len[v48];
          v50 = v49 + 1;
          v51 = v49 < low_len || v50 > indx_fact;
          v52 = v51 || v49 > v50;
          v53 = &indx_fact[v48];
          v54 = v53 + 1;
          v55 = !v52 && v53 >= indx_fact;
          v56 = !v55 || v54 > low_mask;
          if (v56 || v53 > v54)
          {
            goto LABEL_170;
          }

          v58 = &low_mask[v34];
          if (v58 < low_mask)
          {
            goto LABEL_170;
          }

          if (v58 + 4 > index_len)
          {
            goto LABEL_170;
          }

          if (v58 > v58 + 4)
          {
            goto LABEL_170;
          }

          v59 = &low_len[v34];
          if (v59 < low_len)
          {
            goto LABEL_170;
          }

          if (v59 + 4 > indx_fact)
          {
            goto LABEL_170;
          }

          if (v59 > v59 + 4)
          {
            goto LABEL_170;
          }

          v60 = v38 * *v53 + (*v43 >> *v49);
          *(a4 + v36) = ((v60 << low_len[v34]) & v16) + (*(a4 + v36) & low_mask[v34]);
          v34 = &v91 + 4 * v34;
          if (v34 < &v91 || v34 + 4 > &v94 || v34 > v34 + 4)
          {
            goto LABEL_170;
          }

          v38 = v60 >> *v34;
          ++v37;
          v36 += 8;
          LODWORD(v34) = v48;
        }

        while (v37 != 3);
        v61 = a6 + 3;
        if (a6 + 3 >= a6)
        {
          v62 = a6 + 4;
          if (v62 <= a7 && v61 <= v62)
          {
            v63 = (a4 + 24);
            if (a4 + 24 >= a4 && a4 + 32 <= a5 && v63 <= a4 + 32)
            {
              v64 = *v61;
              v65 = &low_mask[v64];
              if (v65 >= low_mask && v65 + 4 <= index_len && v65 <= v65 + 4)
              {
                v66 = &low_len[v64];
                if (v66 >= low_len && v66 + 4 <= indx_fact && v66 <= v66 + 4)
                {
                  v67 = ((v38 << low_len[v64]) + (*v63 & low_mask[v64])) & v16;
                  *v63 = v67;
                  v68 = (&v91 + 4 * v64);
                  if (v68 >= &v91 && v68 + 4 <= &v94 && v68 <= (v68 + 4))
                  {
                    v69 = v38 >> *v68;
                    if (v8 >= 4)
                    {
                      if (v10 <= 0)
                      {
                        v85 = 0;
                        v86 = a4;
                        do
                        {
                          if (v86 < a4)
                          {
                            goto LABEL_170;
                          }

                          if ((v86 + 1) > a5)
                          {
                            goto LABEL_170;
                          }

                          if (v86 > v86 + 1)
                          {
                            goto LABEL_170;
                          }

                          v87 = &result[v85];
                          if (&result[v85] < result || (v87 + 1) > a2 || v87 > v87 + 1)
                          {
                            goto LABEL_170;
                          }

                          v88 = *v86++;
                          *v87 = v88;
                          ++v85;
                        }

                        while (v85 != 4);
                        if (a3 < 5)
                        {
                          return result;
                        }

                        v89 = a3 - 4;
                        for (i = result + 4; i >= result && (i + 1) <= a2 && i <= i + 1; ++i)
                        {
                          *i = v69;
                          v69 >>= 16;
                          if (!--v89)
                          {
                            return result;
                          }
                        }
                      }

                      else
                      {
                        v73 = result + 1;
                        if ((result + 1) > a2)
                        {
                          goto LABEL_170;
                        }

                        if (v73 < result)
                        {
                          goto LABEL_170;
                        }

                        v76 = *a4;
                        v74 = (a4 + 16);
                        v75 = WORD1(v76);
                        *result = v76;
                        if (v74 > a5)
                        {
                          goto LABEL_170;
                        }

                        v77 = result + 2;
                        if ((result + 2) > a2)
                        {
                          goto LABEL_170;
                        }

                        if (v73 > v77)
                        {
                          goto LABEL_170;
                        }

                        v78 = *v17;
                        result[1] = (v78 << 8) + v75;
                        if (v77 < result)
                        {
                          goto LABEL_170;
                        }

                        v79 = result + 3;
                        if ((result + 3) > a2)
                        {
                          goto LABEL_170;
                        }

                        if (v77 > v79)
                        {
                          goto LABEL_170;
                        }

                        *v77 = v78 >> 8;
                        if (v63 > a5)
                        {
                          goto LABEL_170;
                        }

                        if (v79 < result)
                        {
                          goto LABEL_170;
                        }

                        v80 = result + 4;
                        if ((result + 4) > a2)
                        {
                          goto LABEL_170;
                        }

                        if (v79 > v80)
                        {
                          goto LABEL_170;
                        }

                        v81 = *v74;
                        result[3] = *v74;
                        if (v80 < result)
                        {
                          goto LABEL_170;
                        }

                        v82 = result + 5;
                        if ((result + 5) > a2)
                        {
                          goto LABEL_170;
                        }

                        if (v80 > v82)
                        {
                          goto LABEL_170;
                        }

                        result[4] = (v67 << 8) + WORD1(v81);
                        if (v82 < result)
                        {
                          goto LABEL_170;
                        }

                        v83 = result + 6;
                        if ((result + 6) > a2 || v82 > v83)
                        {
                          goto LABEL_170;
                        }

                        *v82 = v67 >> 8;
                        if (a3 < 7)
                        {
                          return result;
                        }

                        v84 = a3 - 6;
                        while (v83 >= result && (v83 + 1) <= a2 && v83 <= v83 + 1)
                        {
                          *v83++ = v69;
                          v69 >>= 16;
                          if (!--v84)
                          {
                            return result;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (a4 + 16 > a5)
                      {
                        goto LABEL_170;
                      }

                      v70 = result + 1;
                      if ((result + 1) > a2)
                      {
                        goto LABEL_170;
                      }

                      if (v70 < result)
                      {
                        goto LABEL_170;
                      }

                      *result = *(a4 + 8) + (*a4 << 8);
                      if (v63 > a5)
                      {
                        goto LABEL_170;
                      }

                      v71 = result + 2;
                      if ((result + 2) > a2 || v70 > v71)
                      {
                        goto LABEL_170;
                      }

                      *v70 = v67 + (*(a4 + 16) << 8);
                      if (a3 < 3)
                      {
                        return result;
                      }

                      v72 = a3 - 2;
                      while (v71 >= result && (v71 + 1) <= a2 && v71 <= v71 + 1)
                      {
                        *v71++ = v69;
                        v69 >>= 16;
                        if (!--v72)
                        {
                          return result;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_170:
    __break(0x5519u);
  }

  if (!v19)
  {
    goto LABEL_170;
  }

  v20 = 0;
  v21 = *a4;
  v22 = a6 + 1;
  do
  {
    if (v22 < a6 || (v22 + 1) > a7 || v22 > v22 + 1)
    {
      goto LABEL_170;
    }

    v23 = &index_len[4 * *v22];
    v24 = v23 + 4;
    v25 = v23 < index_len || v24 > &dword_19B37A014;
    v26 = v25 || v23 > v24;
    v27 = (a4 + v20 + 8);
    v28 = a4 + v20 + 16;
    v29 = !v26 && v27 >= a4;
    v30 = !v29 || v28 > a5;
    if (v30 || v27 > v28)
    {
      goto LABEL_170;
    }

    v21 = (v21 << *v23) + *v27;
    v20 += 8;
    ++v22;
  }

  while (v20 != 24);
  if (a3 >= 1)
  {
    v32 = a3;
    for (j = result; j >= result && (j + 1) <= a2 && j <= j + 1; ++j)
    {
      *j = v21;
      v21 >>= 16;
      if (!--v32)
      {
        return result;
      }
    }

    goto LABEL_170;
  }

  return result;
}

uint64_t quant_2p_2N1(int a1, int a2, char a3)
{
  v3 = (~(-1 << a3) & a1);
  v4 = (~(-1 << a3) & a2);
  v5 = (v3 << a3) + v4;
  v6 = 1 << (2 * a3);
  if ((a1 & 0x10) != 0)
  {
    LOWORD(v5) = v5 + v6;
  }

  if ((a2 & 0x10) != 0)
  {
    v7 = (v4 << a3) + v3 + v6;
  }

  else
  {
    v7 = (v4 << a3) + v3;
  }

  if (v3 > v4)
  {
    LOWORD(v7) = v5;
  }

  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  if (a1 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = ((v8 & ~(-1 << a3)) << a3) + (v9 & ~(-1 << a3));
  if ((a1 & 0x10) != 0)
  {
    LOWORD(v10) = v10 + v6;
  }

  if (((a2 ^ a1) & 0x10) != 0)
  {
    LOWORD(v10) = v7;
  }

  return v10;
}

float *acelp_pulsesign(float *result, unint64_t a2, float *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, float a9, unint64_t a10, unint64_t a11)
{
  v11 = (result + 1) <= a2 && result + 1 >= result;
  v12 = a3 + 1;
  if (v11 && v12 <= a4 && v12 >= a3)
  {
    v15 = 0;
    v16 = (*result * *result) + 1.0;
    v17 = (*a3 * *a3) + 1.0;
    while (1)
    {
      v18 = &result[v15 + 1];
      v19 = &result[v15 + 2];
      v20 = v18 < result || v19 > a2;
      v21 = v20 || v18 > v19;
      v22 = &a3[v15 + 1];
      v23 = &a3[v15 + 2];
      v24 = !v21 && v22 >= a3;
      v25 = !v24 || v23 > a4;
      if (v25 || v22 > v23)
      {
        break;
      }

      v16 = v16 + (*v18 * *v18);
      v17 = v17 + (*v22 * *v22);
      if (++v15 == 63)
      {
        v27 = 0;
        v28 = sqrtf(v17 / v16);
        while (1)
        {
          v29 = &result[v27 / 4];
          v30 = &result[v27 / 4 + 1];
          v31 = &result[v27 / 4] < result || v30 > a2;
          v32 = v31 || v29 > v30;
          v33 = &a3[v27 / 4];
          v34 = &a3[v27 / 4 + 1];
          v35 = !v32 && v33 >= a3;
          v36 = !v35 || v34 > a4;
          if (v36 || v33 > v34)
          {
            goto LABEL_74;
          }

          v38 = (*v33 * a9) + (v28 * *v29);
          v39 = (a7 + v27);
          v40 = a7 + v27 + 4;
          v43 = v40 <= a8 && v39 <= v40 && v39 >= a7;
          if (v38 >= 0.0)
          {
            if (!v43)
            {
              goto LABEL_74;
            }

            *v39 = 1065353216;
            v46 = (a10 + v27);
            if (a10 + v27 < a10)
            {
              goto LABEL_74;
            }

            if ((v46 + 1) > a11)
            {
              goto LABEL_74;
            }

            if (v46 > v46 + 1)
            {
              goto LABEL_74;
            }

            *v46 = -1082130432;
            v45 = (a5 + v27);
            if (a5 + v27 < a5 || (v45 + 1) > a6 || v45 > v45 + 1)
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (!v43)
            {
              goto LABEL_74;
            }

            *v39 = -1082130432;
            v44 = (a10 + v27);
            if (a10 + v27 < a10)
            {
              goto LABEL_74;
            }

            if ((v44 + 1) > a11)
            {
              goto LABEL_74;
            }

            if (v44 > v44 + 1)
            {
              goto LABEL_74;
            }

            *v44 = 1065353216;
            *v33 = -*v33;
            v45 = (a5 + v27);
            if (a5 + v27 < a5 || (v45 + 1) > a6 || v45 > v45 + 1)
            {
              goto LABEL_74;
            }

            v38 = -v38;
          }

          *v45 = v38;
          v27 += 4;
          if (v27 == 256)
          {
            return result;
          }
        }
      }
    }
  }

LABEL_74:
  __break(0x5519u);
  return result;
}

void acelp_findcandidates(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = 0;
  v11 = 0;
  while (2)
  {
    v12 = (a3 + 16 * (v10 >> 3));
    v13 = 67 - v11;
    if (67 - v11 < 0)
    {
      v13 = 70 - v11;
    }

    v14 = v13 >> 2;
    v15 = -8;
    do
    {
      __C = 0.0;
      __I = 0;
      vDSP_maxvi((a1 + 4 * v11), 4, &__C, &__I, v14);
      v16 = (a1 + 4 * v11 + 4 * __I);
      v17 = v16 + 1;
      if (v16 < a1 || v17 > a2 || v16 > v17)
      {
        goto LABEL_25;
      }

      *v16 = (v15 + 8) + -8.0;
      if (v12 < a3 || (v12 + 1) > a4 || v12 > v12 + 1)
      {
        goto LABEL_25;
      }

      *v12++ = (v16 - a1) >> 2;
    }

    while (!__CFADD__(v15++, 1));
    v21 = (a3 + 16 * v11);
    if (v21 < a3 || (v21 + 1) > a4 || v21 > v21 + 1 || (v22 = (a5 + 2 * v11), v22 < a5) || (v22 + 1) > a6 || v22 > v22 + 1)
    {
LABEL_25:
      __break(0x5519u);
      return;
    }

    *v22 = *v21;
    ++v11;
    v10 += 8;
    if (v11 != 4)
    {
      continue;
    }

    break;
  }
}

void acelp_h_vec_corr2(const float *__A, int a2, uint64_t a3, int a4, unsigned __int8 a5, unint64_t a6, unint64_t a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  v16 = 0;
  while (1)
  {
    v18 = (a11 + v16);
    vDSP_dotpr(__A, 1, (a3 + 4 * a5), 1, (a11 + v16), 64 - a5);
    v19 = (a6 + 4 * a5);
    if (v19 < a6)
    {
      break;
    }

    if ((v19 + 1) > a7)
    {
      break;
    }

    if (v19 > v19 + 1)
    {
      break;
    }

    if (v18 < a11)
    {
      break;
    }

    v20 = a11 + v16 + 4;
    if (v20 > a12 || v18 > v20)
    {
      break;
    }

    *v18 = *v19 * *v18;
    a5 += 4;
    v16 += 4;
    if (v16 == 64)
    {

LABEL_13:
      JUMPOUT(0x19EAE5DC0);
    }
  }

  __break(0x5519u);
  goto LABEL_13;
}

void adpt_enr(int a1, __int128 *a2, uint64_t a3, uint64_t a4, float *a5, unint64_t a6, int a7, float *a8, float *a9, unint64_t a10, __int16 a11, const float *a12, unint64_t a13, const float *a14, unint64_t a15, __int16 a16)
{
  v26 = *a2;
  v27 = *(a2 + 2);
  conv_evs(&v26, a3, a5, a7);
  if (a16)
  {
    v21 = *a8;
  }

  else
  {
    corr_xy1(a12, a13, a5, a6, a9, a10, a7, a1 == 2);
    if (v21 > 0.95 && a11 == 1)
    {
      v21 = 0.95;
    }

    if (v21 > 0.65 && a11 == 2)
    {
      v21 = 0.65;
    }

    *a8 = v21;
  }

  if (a6 < a5 || a7 > (a6 - a5) >> 2 || a15 < a14 || a13 < a12 || (a15 - a14) >> 2 < a7 || a7 > (a13 - a12) >> 2)
  {
    __break(0x5519u);
  }

  else
  {
    v24 = 0;
    v25 = -v21;
    do
    {
      a14[v24] = a12[v24] + (v25 * a5[v24]);
      ++v24;
    }

    while (a7 != v24);
    LODWORD(v26) = -1;
    vDSP_dotpr(a14, 1, a14, 1, &v26, a7);
  }
}

void conv_evs(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = 2 * a4 - 1;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - v9;
  memset(v22 - v9, 255, v11);
  if (v8 < a4 || (v12 = 4 * a4, bzero(v10, v12), v13 = *a1, v14 = *(a1 + 8), *a1 > v14) || ((v15 = &v10[4 * v8], v16 = &v10[4 * a4 - 4], v17 = v14 - v13, v10 <= v16) ? (v18 = *(a1 + 16) > v13) : (v18 = 1), !v18 ? (v19 = v12 > v17) : (v19 = 1), !v19 ? (v20 = v16 > v15) : (v20 = 1), !v20 ? (v21 = v12 > &v15[-v16]) : (v21 = 1), v21 || (memcpy(&v10[4 * a4 - 4], v13, 4 * a4), v16 > v16 + v12)))
  {
    __break(0x5519u);
  }

  vDSP_conv(v10, 1, (a2 + 4 * a4 - 4), -1, a3, 1, a4, a4);
}

void corr_xy1(const float *__A, unint64_t a2, const float *a3, unint64_t a4, float *a5, unint64_t a6, int a7, int a8)
{
  if (a4 < a3 || a2 < __A || (a4 - a3) >> 2 < a7 || a7 > (a2 - __A) >> 2 || (__C = NAN, v13 = a7, vDSP_dotpr(__A, 1, a3, 1, &__C, a7), v14 = __C, v19 = NAN, vDSP_dotpr(a3, 1, a3, 1, &v19, v13), v15 = a5 + 1, (a5 + 1) > a6) || v15 < a5 || ((*a5 = v19 + 0.01, v16 = a5 + 2, v16 <= a6) ? (v17 = v15 > v16) : (v17 = 1), v17))
  {
    __break(0x5519u);
  }

  else
  {
    *v15 = (v14 * -2.0) + 0.01;
    if (a8)
    {
      v20 = NAN;
      vDSP_dotpr(__A, 1, __A, 1, &v20, v13);
    }
  }
}

uint64_t limit_T0_voiced(uint64_t result, int a2, __int16 a3, int a4, int a5, int *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int a10, int a11)
{
  if (a5 <= 1 || a4 < (a5 >> 1))
  {
    v12 = a3;
  }

  else
  {
    v12 = a3 + 1;
  }

  v13 = ((-1 << (result - 1)) + v12 * a2);
  v14 = (v13 / a2);
  *a6 = v14;
  v15 = v13 - v14 * a2;
  *a7 = v15;
  v16 = *a6;
  if (*a6 < a10)
  {
    LOWORD(v15) = 0;
    *a6 = a10;
    *a7 = 0;
    v16 = *a6;
  }

  v17 = (v15 + (1 << result) + v16 * a2 - 1);
  v18 = (v17 / a2);
  *a8 = v18;
  *a9 = v17 - v18 * a2;
  if (*a8 > a11)
  {
    *a8 = a11;
    *a9 = a2 - 1;
    v19 = (a2 - (1 << result) + *a8 * a2);
    v20 = (v19 / a2);
    *a6 = v20;
    *a7 = v19 - v20 * a2;
  }

  return result;
}

uint64_t E_GAIN_closed_loop_search_11467(__int128 *a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int a8, int a9, int a10, int *a11, int *a12, int a13, int a14, int a15, int a16, int a17)
{
  *&v65[4] = *MEMORY[0x1E69E9840];
  v64 = -1;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v63[8] = v19;
  v63[9] = v19;
  v63[6] = v19;
  v63[7] = v19;
  v63[5] = v19;
  v63[3] = v19;
  v63[4] = v19;
  v63[1] = v19;
  v63[2] = v19;
  v63[0] = v19;
  if (a7 <= 0)
  {
    v20 = a6;
  }

  else
  {
    v20 = a6 + 1;
  }

  v21 = v63 + 4 * (4 - v20);
  v61 = *a1;
  v62 = *(a1 + 2);
  v60[0] = v21;
  v60[1] = v65;
  v60[2] = v63;
  norm_corr(&v61, a2, a3, a4, a5, (v20 - 4), (a8 + 4), v60, 64);
  v22 = &v21[4 * v20];
  if (v22 < v63)
  {
    goto LABEL_78;
  }

  v23 = v22 + 1;
  if (v22 + 1 > v65 || v22 > v23)
  {
    goto LABEL_78;
  }

  if (v20 < a8)
  {
    v24 = v20;
    v25 = *v22;
    LODWORD(v26) = v20;
    while (v23 >= v63 && v23 + 1 <= v65 && v23 <= v23 + 1)
    {
      v27 = *v23++;
      v28 = v27;
      v29 = v27 < v25;
      if (v27 >= v25)
      {
        v26 = (v24 + 1);
      }

      else
      {
        v26 = v26;
      }

      v30 = v24 + 1;
      if (!v29)
      {
        v25 = v28;
      }

      ++v24;
      if (v30 >= a8)
      {
        goto LABEL_20;
      }
    }

LABEL_78:
    __break(0x5519u);
  }

  v26 = v20;
LABEL_20:
  v31 = a12;
  if (a14 || v26 < a17)
  {
    v33 = a13 >> 1 == a10;
    v34 = a9 << v33;
    v35 = a7 << v33;
    if (a14)
    {
      v36 = 1;
    }

    else
    {
      v36 = v26 < a16;
    }

    v38 = !v36 || a16 <= a15;
    if (v38)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    if (v38)
    {
      v40 = -2;
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 + a13;
    v42 = v26 != v20 || v35 == 0;
    if (v35 == 0 && v26 == v20)
    {
      v43 = 0;
    }

    else
    {
      v43 = v39 - a13;
    }

    if (v39 >= v35)
    {
      v44 = v39 - a13;
    }

    else
    {
      v44 = v35 - a13;
    }

    if (v42)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    if (v26 == a8)
    {
      v46 = v34;
    }

    else
    {
      v46 = v41;
    }

    v47 = &v21[4 * v26];
    v48 = v45 + v39;
    if (a13 == 6)
    {
      *&v61 = v47;
      *(&v61 + 1) = v65;
      v62 = v63;
      E_GAIN_norm_corr_interpolate6(&v61, v45);
      if (v48 <= v46)
      {
        v50 = v49;
        do
        {
          *&v61 = v47;
          *(&v61 + 1) = v65;
          v62 = v63;
          E_GAIN_norm_corr_interpolate6(&v61, v48);
          if (v51 > v50)
          {
            v45 = v48;
            v50 = v51;
          }

          v48 += v39;
        }

        while (v48 <= v46);
      }
    }

    else
    {
      *&v61 = v47;
      *(&v61 + 1) = v65;
      v62 = v63;
      E_GAIN_norm_corr_interpolate(&v61, v45);
      if (v48 <= v46)
      {
        v53 = v52;
        do
        {
          *&v61 = v47;
          *(&v61 + 1) = v65;
          v62 = v63;
          E_GAIN_norm_corr_interpolate(&v61, v48);
          if (v54 > v53)
          {
            v45 = v48;
            v53 = v54;
          }

          v48 += v39;
        }

        while (v48 <= v46);
      }
    }

    v26 = (v26 + (v45 >> 31));
    if (a14)
    {
      v55 = 1;
    }

    else
    {
      v55 = v26 < a16;
    }

    v57 = !v55 || a16 <= a15;
    v58 = a13 >> 1;
    if (!v57)
    {
      v58 = a13;
    }

    v32 = ((a13 & (v45 >> 31)) + v45) >> v57;
    v31 = a11;
    *a12 = v58;
  }

  else
  {
    *a11 = 0;
    v32 = 1;
  }

  *v31 = v32;
  return v26;
}

uint64_t Mode2_abs_pit_enc(uint64_t result, int a2, unint64_t *a3, int a4, int a5, int a6, int a7)
{
  if (result >= a6)
  {
    v17 = a7 >> 1;
    if (result >= a5)
    {
      v27 = *a3;
      v8 = a3[2];
      v28 = *a3 + 24;
      if (v28 > a3[1] || v27 > v28 || v27 < v8)
      {
        goto LABEL_58;
      }

      v31 = *v27;
      v32 = v27[1];
      v33 = v27[2];
      v34 = (v31 + 1) > v32 || v31 > v31 + 1;
      if (v34 || v31 < v33)
      {
        goto LABEL_58;
      }

      *v31 = result - a5 + (a6 - a4) * a7 + (a5 - a6) * v17;
    }

    else
    {
      v18 = *a3;
      v8 = a3[2];
      v19 = *a3 + 24;
      if (v19 > a3[1] || v18 > v19 || v18 < v8)
      {
        goto LABEL_58;
      }

      v22 = *v18;
      v23 = *(v18 + 8);
      v24 = *(v18 + 16);
      v25 = (v22 + 1) > v23 || v22 > v22 + 1;
      if (v25 || v22 < v24)
      {
        goto LABEL_58;
      }

      *v22 = a2 + (a6 - a4) * a7 + (result - a6) * v17;
    }
  }

  else
  {
    v7 = *a3;
    v8 = a3[2];
    v9 = *a3 + 24;
    if (v9 > a3[1] || v7 > v9 || v7 < v8)
    {
      goto LABEL_58;
    }

    v12 = *v7;
    v13 = *(v7 + 8);
    v14 = *(v7 + 16);
    v15 = (v12 + 1) > v13 || v12 > v12 + 1;
    if (v15 || v12 < v14)
    {
      goto LABEL_58;
    }

    *v12 = a2 + (result - a4) * a7;
  }

  v36 = *a3;
  v37 = *a3 + 24;
  if (v37 <= a3[1] && v36 <= v37 && v36 >= v8)
  {
    *v36 += 4;
    return result;
  }

LABEL_58:
  __break(0x5519u);
  return result;
}

uint64_t Mode2_delta_pit_enc(uint64_t result, int a2, int a3, int a4, int a5, void *a6)
{
  v6 = *a6;
  v7 = a6[2];
  v8 = *a6 + 24;
  v10 = v8 <= a6[1] && v6 <= v8 && v6 >= v7;
  if (v10 && ((v11 = *v6, v12 = v6[1], v13 = v6[2], (v11 + 1) <= v12) ? (v14 = v11 >= v11 + 1) : (v14 = 1), !v14 ? (v15 = v11 >= v13) : (v15 = 0), v15 && ((*v11 = a2 - a5 + (result - a4) * a3, v16 = *a6, v17 = *a6 + 24, v17 <= a6[1]) ? (v18 = v16 > v17) : (v18 = 1), !v18 ? (v19 = v16 >= v7) : (v19 = 0), v19)))
  {
    *v16 += 4;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t limit_T0_voiced2(uint64_t result, __int16 *a2, unint64_t a3, int *a4, int *a5, int *a6, int *a7, int a8, __int16 a9, int a10)
{
  v10 = (a2 + 1);
  if (a10)
  {
    if (v10 < a2)
    {
      goto LABEL_27;
    }

    if ((a2 + 2) > a3)
    {
      goto LABEL_27;
    }

    v11 = a2 + 1;
    if (v10 > (a2 + 2))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v10 > a3)
    {
      goto LABEL_27;
    }

    v11 = a2;
    if (v10 < a2)
    {
      goto LABEL_27;
    }
  }

  if (v10 > a3 || v10 < a2 || (v14 = *a2, v12 = a2 + 2, v13 = v14, v12 > a3) || v10 > v12)
  {
LABEL_27:
    __break(0x5519u);
    return result;
  }

  v15 = *v11 * result - 32;
  LOWORD(v10) = *v10;
  if (v13 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16 * result - 16;
  if (v15 <= v17)
  {
    v15 = v17;
  }

  *a4 = v15 / result;
  v18 = v15 % result;
  *a5 = v18;
  v19 = *a4;
  if (*a4 < a8)
  {
    v18 = 0;
    *a4 = a8;
    *a5 = 0;
    v19 = *a4;
  }

  v20 = v18 + v19 * result + 63;
  if (v13 <= v10)
  {
    LODWORD(v10) = v10;
  }

  else
  {
    LODWORD(v10) = v13;
  }

  v21 = result + v10 * result;
  v22 = v21 + 16;
  v23 = v21 + 15;
  if (v20 < v22)
  {
    v23 = v20;
  }

  *a6 = v23 / result;
  *a7 = v23 % result;
  if (*a6 > a9)
  {
    *a6 = a9;
    *a7 = result - 1;
    v24 = result + *a6 * result - 64;
    *a4 = v24 / result;
    *a5 = v24 % result;
  }

  return result;
}

void norm_corr(uint64_t a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, void *a8, __int16 a9)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  __C = NAN;
  v26 = NAN;
  v15 = -a6;
  v23 = *a1 + 4 * -a6;
  v24 = *(a1 + 8);
  conv_evs(&v23, a4, __b, a9);
  if (a6 <= a7)
  {
    while (1)
    {
      vDSP_dotpr(a2, 1, __b, 1, &__C, a9);
      vDSP_svesq(__b, 1, &v26, a9);
      v16 = v26 + 0.01;
      v26 = v26 + 0.01;
      v17 = (*a8 + 4 * a6);
      v18 = (v17 + 1) > a8[1] || v17 > v17 + 1;
      if (v18 || v17 < a8[2])
      {
        break;
      }

      v20 = 1.0 / sqrt(v16);
      *v17 = __C * v20;
      if (a6 != a7)
      {
        v21 = __memmove_chk();
        if (v21 > v21 + 4 * a9 - 4)
        {
          break;
        }

        MEMORY[0x19EAE6050](a4, 1, *a1 + 4 * --v15, __b, 1, __b, 1, a9);
        v22 = (*a1 + 4 * v15);
        if ((v22 + 1) > *(a1 + 8) || v22 > v22 + 1 || v22 < *(a1 + 16))
        {
          break;
        }

        __b[0] = *v22;
      }

      a6 = (a6 + 1);
      if (a6 > a7)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

unint64_t *E_GAIN_norm_corr_interpolate6(unint64_t *result, int a2)
{
  v2 = *result;
  if (a2 < 0)
  {
    a2 += 6;
    v2 -= 4;
    *result = v2;
  }

  v3 = result[1];
  v4 = result[2];
  v5 = v2 + 4;
  v7 = v2 + 4 <= v3 && v2 < v5 && v2 >= v4;
  if (!v7 || (v8 = &E_ROM_inter6_1[4 * a2], v8 < E_ROM_inter6_1) || v8 + 4 > E_ROM_inter4_1_11466 || v8 > v8 + 4 || (v9 = v2 + 8, v2 + 8 > v3) || v5 > v9 || (v10 = &E_ROM_inter6_1[4 * (6 - a2)], v10 < E_ROM_inter6_1) || v10 + 4 > E_ROM_inter4_1_11466 || v10 > v10 + 4 || (v11 = v2 - 4, v2 < 4) || v11 < v4 || v8 + 24 < E_ROM_inter6_1 || (result = (v8 + 28), v8 + 28 > E_ROM_inter4_1_11466) || v8 + 24 > result || (v12 = v2 + 12, v2 + 12 > v3) || v9 > v12 || v10 + 24 < E_ROM_inter6_1 || (result = (v10 + 28), v10 + 28 > E_ROM_inter4_1_11466) || v10 + 24 > result || (result = (v2 - 8), v2 - 8 > v11) || result < v4 || v8 + 48 < E_ROM_inter6_1 || v8 + 52 > E_ROM_inter4_1_11466 || v8 + 48 > v8 + 52 || (v13 = v2 + 16, v2 + 16 > v3) || v12 > v13 || v10 + 48 < E_ROM_inter6_1 || v10 + 52 > E_ROM_inter4_1_11466 || v10 + 48 > v10 + 52 || v2 - 12 > result || v2 - 12 < v4 || v8 + 72 < E_ROM_inter6_1 || v8 + 76 > E_ROM_inter4_1_11466 || v8 + 72 > v8 + 76 || v2 + 20 > v3 || v13 > v2 + 20 || v10 + 72 < E_ROM_inter6_1 || v10 + 76 > E_ROM_inter4_1_11466 || v10 + 72 > v10 + 76)
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t *E_GAIN_norm_corr_interpolate(unint64_t *result, int a2)
{
  v2 = *result;
  if (a2 < 0)
  {
    a2 += 4;
    v2 -= 4;
    *result = v2;
  }

  v3 = result[1];
  v4 = result[2];
  v5 = v2 + 4;
  v7 = v2 + 4 <= v3 && v2 < v5 && v2 >= v4;
  if (!v7 || (v8 = &E_ROM_inter4_1_11466[4 * a2], v8 < E_ROM_inter4_1_11466) || v8 + 4 > Env_TR_Cdbk1 || v8 > v8 + 4 || (v9 = v2 + 8, v2 + 8 > v3) || v5 > v9 || (v10 = &E_ROM_inter4_1_11466[4 * (4 - a2)], v10 < E_ROM_inter4_1_11466) || v10 + 4 > Env_TR_Cdbk1 || v10 > v10 + 4 || (v11 = v2 - 4, v2 < 4) || v11 < v4 || v8 + 16 < E_ROM_inter4_1_11466 || (result = (v8 + 20), v8 + 20 > Env_TR_Cdbk1) || v8 + 16 > result || (v12 = v2 + 12, v2 + 12 > v3) || v9 > v12 || v10 + 16 < E_ROM_inter4_1_11466 || (result = (v10 + 20), v10 + 20 > Env_TR_Cdbk1) || v10 + 16 > result || (result = (v2 - 8), v2 - 8 > v11) || result < v4 || v8 + 32 < E_ROM_inter4_1_11466 || v8 + 36 > Env_TR_Cdbk1 || v8 + 32 > v8 + 36 || (v13 = v2 + 16, v2 + 16 > v3) || v12 > v13 || v10 + 32 < E_ROM_inter4_1_11466 || v10 + 36 > Env_TR_Cdbk1 || v10 + 32 > v10 + 36 || v2 - 12 > result || v2 - 12 < v4 || v8 + 48 < E_ROM_inter4_1_11466 || v8 + 52 > Env_TR_Cdbk1 || v8 + 48 > v8 + 52 || v2 + 20 > v3 || v13 > v2 + 20 || v10 + 48 < E_ROM_inter4_1_11466 || v10 + 52 > Env_TR_Cdbk1 || v10 + 48 > v10 + 52)
  {
    __break(0x5519u);
  }

  return result;
}

void deemph_opt(float *__X, const vDSP_biquad_SetupStruct **a2, int a3, _DWORD *a4, float a5)
{
  v15 = *MEMORY[0x1E69E9840];
  __Delay = 0;
  v14 = 0;
  if (a5 != 0.68)
  {
    if (a5 == 0.72)
    {
      ++a2;
    }

    else if (a5 == 0.9)
    {
      if (a2 + 2 > a2 + 3)
      {
        goto LABEL_16;
      }

      v11 = a2 + 2 >= a2;
      a2 += 2;
      if (!v11)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = *a2;
  HIDWORD(v14) = *a4;
  vDSP_biquad(v8, &__Delay, __X, 1, __X, 1, a3);
  v9 = &__X[a3];
  v10 = v9 - 1;
  v11 = v9 >= 4 && v10 >= __X;
  if (!v11)
  {
LABEL_16:
    __break(0x5519u);
  }

  v12 = *v10;
  if (fabsf(*v10) < 1.0e-10)
  {
    v12 = 0.0;
  }

  *a4 = v12;
}

unint64_t polezero_filter(unint64_t result, unint64_t a2, float *a3, unint64_t a4, int a5, unint64_t a6, unsigned int a7, unsigned int a8)
{
  v8 = 0;
  v9 = 0;
  v10 = result + 1024;
  v11 = &a3[a7];
  v13 = a3 + 1 < a3 || (a3 + 1) > v11;
  v14 = a2 + 1024;
  v15 = a5;
  LOWORD(v16) = -1;
  v17 = a5;
  v18 = a4 + 4 * a7;
  v19 = a6 + 4 * a8;
  while (1)
  {
    v20 = (result + 4 * v9);
    v21 = (v20 + 1) > v10 || v20 > v20 + 1;
    v22 = !v21 && v20 >= result;
    v23 = !v22;
    if (v23 || v13)
    {
      break;
    }

    v24 = (a2 + 4 * v9);
    if (v24 < a2 || (v24 + 1) > v14 || v24 > v24 + 1)
    {
      break;
    }

    v25 = *v20 * *a3;
    *v24 = v25;
    if (v9)
    {
      v26 = 0;
      v27 = v8;
      v28 = v9;
      do
      {
        v29 = result + v27;
        v30 = (result + v27 - 4);
        v31 = v30 < result || v29 > v10;
        if (v31 || v30 > v29)
        {
          goto LABEL_120;
        }

        v33 = &a3[v26 + 1];
        if (v33 < a3)
        {
          goto LABEL_120;
        }

        v34 = &a3[v26 + 2];
        if (v34 > v11)
        {
          goto LABEL_120;
        }

        if (v33 > v34)
        {
          goto LABEL_120;
        }

        v35 = a2 + v27;
        v36 = (a2 + v27 - 4);
        if (v36 < a2)
        {
          goto LABEL_120;
        }

        if (v35 > v14)
        {
          goto LABEL_120;
        }

        if (v36 > v35)
        {
          goto LABEL_120;
        }

        v37 = (a4 + v26 * 4 + 4);
        if (v37 < a4)
        {
          goto LABEL_120;
        }

        v38 = a4 + v26 * 4 + 8;
        if (v38 > v18 || v37 > v38)
        {
          goto LABEL_120;
        }

        v25 = v25 + ((*v30 * *v33) - (*v36 * *v37));
        *v24 = v25;
        ++v26;
        v27 -= 4;
      }

      while (--v28);
    }

    v16 = (v16 + 1);
    v39 = v8;
    v40 = v17;
    v41 = a5;
    if (v16 < a5)
    {
      do
      {
        v42 = (a6 + 4 * --v41);
        v43 = v42 + 1;
        v44 = v42 < a6 || v43 > v19;
        if (v44 || v42 > v43)
        {
          goto LABEL_120;
        }

        v46 = (a3 + v39 + 4);
        if (v46 < a3)
        {
          goto LABEL_120;
        }

        v47 = a3 + v39 + 8;
        if (v47 > v11)
        {
          goto LABEL_120;
        }

        if (v46 > v47)
        {
          goto LABEL_120;
        }

        v48 = (a6 + 4 * (a5 + v41));
        if (v48 < a6)
        {
          goto LABEL_120;
        }

        if ((v48 + 1) > v19)
        {
          goto LABEL_120;
        }

        if (v48 > v48 + 1)
        {
          goto LABEL_120;
        }

        v49 = (a4 + v39 + 4);
        if (v49 < a4)
        {
          goto LABEL_120;
        }

        v50 = a4 + v39 + 8;
        if (v50 > v18 || v49 > v50)
        {
          goto LABEL_120;
        }

        v25 = v25 + ((*v42 * *v46) - (*v48 * *v49));
        *v24 = v25;
        v39 += 4;
      }

      while (--v40);
    }

    ++v9;
    v8 += 4;
    --v17;
    if (v9 == a5)
    {
      v51 = 4 * a5;
      v52 = result;
      v53 = a2;
      v54 = a5;
LABEL_60:
      v55 = (result + 4 * v54);
      v56 = v55 + 1;
      v58 = v55 < result || v56 > v10 || v55 > v56;
      v59 = (a2 + 4 * v54);
      v60 = v59 + 1;
      if (!v58 && v59 >= a2 && v60 <= v14 && v59 <= v60)
      {
        v64 = 0;
        v65 = *v55 * *a3;
        *v59 = v65;
        v66 = v52;
        v67 = v53;
        v68 = a5;
        while (1)
        {
          v69 = v66 + v51;
          v70 = (v66 + v51 - 4);
          v71 = v70 < result || v69 > v10;
          if (v71 || v70 > v69)
          {
            break;
          }

          v73 = &a3[v64 + 1];
          if (v73 < a3)
          {
            break;
          }

          v74 = &a3[v64 + 2];
          if (v74 > v11)
          {
            break;
          }

          if (v73 > v74)
          {
            break;
          }

          v75 = v67 + v51;
          v76 = (v67 + v51 - 4);
          if (v76 < a2)
          {
            break;
          }

          if (v75 > v14)
          {
            break;
          }

          if (v76 > v75)
          {
            break;
          }

          v77 = (a4 + v64 * 4 + 4);
          if (v77 < a4)
          {
            break;
          }

          v78 = a4 + v64 * 4 + 8;
          if (v78 > v18 || v77 > v78)
          {
            break;
          }

          v65 = v65 + ((*v70 * *v73) - (*v76 * *v77));
          *v59 = v65;
          ++v64;
          v67 -= 4;
          v66 -= 4;
          if (!--v68)
          {
            v79 = v54++;
            v53 += 4;
            v52 += 4;
            if (v79 < 255)
            {
              goto LABEL_60;
            }

            v80 = 0;
            v81 = a6 + 4 * a5;
            v82 = a2 + 4 * (256 - a5);
            v83 = result + 4 * (256 - a5);
            while (1)
            {
              v84 = (v83 + v80);
              v85 = v83 + v80 + 4;
              v86 = v83 + v80 < result || v85 > v10;
              v87 = v86 || v84 > v85;
              v88 = (a6 + v80);
              v89 = a6 + v80 + 4;
              v90 = !v87 && v88 >= a6;
              v91 = !v90 || v89 > v19;
              if (v91 || v88 > v89)
              {
                break;
              }

              *v88 = *v84;
              v93 = (v82 + v80);
              if (v82 + v80 < a2)
              {
                break;
              }

              if ((v93 + 1) > v14)
              {
                break;
              }

              if (v93 > v93 + 1)
              {
                break;
              }

              v94 = (v81 + v80);
              if (v81 + v80 < a6 || (v94 + 1) > v19 || v94 > v94 + 1)
              {
                break;
              }

              *v94 = *v93;
              v80 += 4;
              if (!--v15)
              {
                return result;
              }
            }

            goto LABEL_120;
          }
        }
      }

      break;
    }
  }

LABEL_120:
  __break(0x5519u);
  return result;
}

void dequantize_uvg(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int16 a6)
{
  v7 = 0;
  v8 = 0;
  v9 = a6 - 1;
  v10 = v9 >= 2;
  if (v9 >= 2)
  {
    v11 = &UVG2CB2_NB;
  }

  else
  {
    v11 = &UVG2CB2_WB;
  }

  if (v9 >= 2)
  {
    v12 = &UVG2CB1_NB;
  }

  else
  {
    v12 = &UVG2CB1_WB;
  }

  v13 = &UVG1CB_WB;
  if (v10)
  {
    v13 = &UVG1CB_NB;
  }

  v46 = &v13[8 * a1];
  while (2)
  {
    v14 = 0;
    v15 = 0;
    v49 = v7;
    v16 = &v46[v8];
    v19 = v16 + 1 <= v46 + 2 && v16 < v16 + 1 && v16 >= v46;
    v20 = (a2 + 4 * v8);
    v23 = (v20 + 1) <= a3 && v20 < v20 + 1 && v20 >= a2;
    do
    {
      if (v8)
      {
        if (!v19)
        {
          goto LABEL_72;
        }

        v24 = __exp10(*v16);
        if (!v23)
        {
          goto LABEL_72;
        }

        v25 = &v11[5 * *v20];
        v26 = &v11[5 * *v20 + v14 / 4];
        v27 = (v26 + 1);
        v28 = v26 < v25 || v27 > (v25 + 5);
        v29 = v28 || v26 >= v27;
        v30 = (a4 + v14 + 20);
        v31 = a4 + v14 + 24;
        v32 = !v29 && v30 >= a4;
        v33 = !v32 || v31 > a5;
        if (v33 || v30 > v31)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (!v19 || (v24 = __exp10(*v16), !v23) || ((v35 = &v12[20 * *v20], v36 = &v12[20 * *v20 + v14], v37 = (v36 + 4), v36 >= v35) ? (v38 = v37 > (v35 + 20)) : (v38 = 1), !v38 ? (v39 = v36 >= v37) : (v39 = 1), (v40 = a4 + v14, v41 = a4 + v14 + 4, !v39) ? (v42 = v40 >= a4) : (v42 = 0), v42 ? (v43 = v41 > a5) : (v43 = 1), !v43 ? (v44 = v40 > v41) : (v44 = 1), v44))
        {
LABEL_72:
          __break(0x5519u);
          return;
        }

        v26 = &v35[4 * v15];
        v30 = (a4 + 4 * v15);
      }

      v45 = v24;
      *v30 = *v26 * v45;
      ++v15;
      v14 += 4;
    }

    while (v14 != 20);
    v7 = 1;
    v8 = 1;
    if ((v49 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

_WORD *generate_nelp_excitation(_WORD *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, float a6)
{
  v8 = 0;
  *&v83[12] = *MEMORY[0x1E69E9840];
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *&v82[12] = v9;
  v81[5] = v9;
  *v82 = v9;
  v81[3] = v9;
  v81[4] = v9;
  v81[1] = v9;
  v81[2] = v9;
  v81[0] = v9;
  *&v79[12] = v9;
  __C[5] = v9;
  *v79 = v9;
  __C[3] = v9;
  __C[4] = v9;
  __C[1] = v9;
  __C[2] = v9;
  __C[0] = v9;
  v76 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74 = v9;
  v75 = v9;
  v72 = v9;
  v73 = v9;
  v70 = v9;
  v71 = v9;
  v68 = v9;
  v69 = v9;
  v66 = v9;
  v67 = v9;
  v64 = v9;
  v65 = v9;
  v62 = v9;
  v63 = v9;
  v10 = a6;
  *__I = v9;
  v57 = result;
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *result;
    if (v8 == 9)
    {
      v15 = 31;
    }

    else
    {
      v15 = 25;
    }

    do
    {
      v14 = 521 * v14 + 259;
      v16 = v81 + v12 + 4;
      if ((v81 + v12) < v81 || v16 > v83 || v81 + v12 > v16)
      {
        goto LABEL_75;
      }

      v19 = vcvts_n_f32_s32(v14, 0xFuLL);
      *(v81 + v12) = v19;
      v20 = (__C + v12);
      if ((__C + v12) < __C || v20 + 1 > &v80 || v20 > v20 + 1)
      {
        goto LABEL_75;
      }

      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      *v20 = v19;
      v21 = &__I[v11];
      if (&__I[v11] < __I || v21 + 1 > &v77 || v21 > v21 + 1)
      {
LABEL_75:
        *result = v14;
        goto LABEL_76;
      }

      __I[v13] = v13;
      ++v13;
      v12 += 4;
      ++v11;
    }

    while (4 * v15 != v12);
    *result = v14;
    v22 = __I;
    v60 = v8;
    vDSP_vsorti(__C, __I, 0, v15, -1);
    v23 = 0;
    v24 = 0;
    v25 = vcvts_n_f32_u32(v15, 2uLL);
    v26 = (a2 + 4 * v60);
    v29 = (v26 + 1) <= a3 && v26 < v26 + 1 && v26 >= a2;
    v30 = a4 + 100 * v60;
    v31 = ceil(v25 + 0.5);
    v32 = floor(v25 + 0.5);
    v33 = ceil(v25);
    v34 = vcvtpd_s64_f64(v25);
    v35 = floor(v25);
    if ((v34 & 1) == 0)
    {
      v35 = v33;
    }

    if (v31 != v32)
    {
      v35 = v32;
    }

    v36 = v35;
    v37 = v15;
    while (v24 < v36)
    {
      if (!v29)
      {
        goto LABEL_76;
      }

      v38 = &__I[v23];
      if (&__I[v23] < __I || v38 + 1 > &v77 || v38 > v38 + 1)
      {
        goto LABEL_76;
      }

      v39 = __I[v24];
      v40 = v81 + v39;
      v41 = v40 + 1;
      v42 = v40 < v81 || v41 > v83;
      v43 = v42 || v40 >= v41;
      v44 = (v30 + 4 * v39);
      v45 = v44 + 1;
      v46 = !v43 && v44 >= a4;
      v47 = !v46 || v45 > a5;
      if (v47 || v44 >= v45)
      {
        goto LABEL_76;
      }

      v49 = *v26 * 1.73205081 * *v40 * v10;
      *v44 = v49;
      ++v24;
      ++v23;
      --v37;
      ++v22;
    }

    if (v15 > v24)
    {
      while (1)
      {
        v50 = v22 + 1;
        v51 = v22 < __I || v50 > &v77;
        if (v51 || v22 >= v50)
        {
          break;
        }

        v53 = (v30 + 4 * *v22);
        v54 = v53 + 1;
        v55 = v53 < a4 || v54 > a5;
        if (v55 || v53 >= v54)
        {
          break;
        }

        *v53 = 0;
        ++v22;
        if (!--v37)
        {
          goto LABEL_73;
        }
      }

LABEL_76:
      __break(0x5519u);
    }

LABEL_73:
    v8 = v60 + 1;
    result = v57;
  }

  while (v60 != 9);
  return result;
}

uint64_t E_LPC_f_lsp_pol_get(uint64_t result, unint64_t a2, int *a3, unint64_t a4, int a5, int a6)
{
  while (1)
  {
    v59 = a5;
    v6 = a4;
    v7 = a3;
    v60 = a2;
    v62 = result;
    v57 = a6;
    if (!a6)
    {
      v8 = 8;
      goto LABEL_5;
    }

    if (a6 >= 32760)
    {
      v8 = 0x7FFF;
LABEL_5:
      v65 = 0;
LABEL_6:
      v9 = 31 - v8;
      goto LABEL_7;
    }

    v8 = (a6 + 8);
    v65 = 0;
    if (v8 > -32737)
    {
      goto LABEL_6;
    }

    v65 = 1;
    v9 = 0x7FFF;
LABEL_7:
    v61 = a3 + 1;
    if ((a3 + 1) > a4)
    {
      goto LABEL_106;
    }

    if (v61 < a3)
    {
      goto LABEL_106;
    }

    result = L_shl(1, v9);
    *v7 = result;
    if ((v62 + 1) > v60 || v62 + 1 < v62)
    {
      goto LABEL_106;
    }

    v10 = *v62;
    if (v8 > -32753)
    {
      v11 = 15 - v8;
    }

    else
    {
      v65 = 1;
      v11 = 0x7FFF;
    }

    result = shl(4294967294, v11, &v65);
    v58 = result;
    if (result * v10 == 0x40000000)
    {
      v65 = 1;
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = 2 * result * v10;
    }

    if ((v7 + 2) > v6 || v61 > v7 + 2)
    {
      goto LABEL_106;
    }

    *v61 = v12;
    v13 = v65;
    if (v59 > 1)
    {
      break;
    }

LABEL_96:
    if (v13 < 1)
    {
      return v57;
    }

    if (v57 == 0x7FFF)
    {
      v56 = 0x7FFF;
    }

    else
    {
      v56 = v57 + 1;
    }

    a6 = v56;
    result = v62;
    a2 = v60;
    a3 = v7;
    a4 = v6;
    a5 = v59;
  }

  v64 = 2;
  v14 = v62;
  while (1)
  {
    v15 = v14 + 3;
    v14 += 2;
    v16 = v14 < v62 || v15 > v60;
    if (v16 || v14 > v15)
    {
      break;
    }

    v18 = *v14;
    v19 = v58 * v18 == 0x40000000 ? 1 : v13;
    v20 = v58 * v18 == 0x40000000 ? 0x7FFFFFFF : 2 * v58 * v18;
    v63 = v20;
    v21 = &v7[v64];
    if (v21 - 2 < v7)
    {
      break;
    }

    if ((v21 - 1) > v6)
    {
      break;
    }

    if (v21 - 2 > v21 - 1)
    {
      break;
    }

    v22 = v64 - 1;
    v23 = &v7[v64 - 1];
    if (v23 < v7 || (v23 + 1) > v6 || v23 > v23 + 1 || v21 < v7 || (v21 + 1) > v6 || v21 > v21 + 1)
    {
      break;
    }

    result = Mpy_32_16_1(*v23, v18);
    v24 = *(v21 - 2);
    v25 = result ^ v24;
    v26 = v24 - result;
    v27 = (v24 - result) ^ v24;
    v28 = (v24 >> 31) ^ 0x7FFFFFFF;
    if ((v25 & v27) < 0 != v29)
    {
      v19 = 1;
    }

    else
    {
      v28 = v26;
    }

    v30 = v28 - 0x40000000;
    v31 = 2 * v28;
    v32 = (v28 >> 31) ^ 0x7FFFFFFF;
    if (v30 < 0)
    {
      v32 = v31;
    }

    *v21 = v32;
    if (v22 >= 2)
    {
      do
      {
        v33 = &v7[v22];
        v34 = v33 + 1;
        v35 = v33 < v7 || v34 > v6;
        if (v35 || v33 >= v34)
        {
          goto LABEL_106;
        }

        v37 = (v33 - 1);
        v38 = *v33;
        v39 = v33 - 2 < v7 || v37 > v6;
        if (v39 || (v33 - 2) > v37)
        {
          goto LABEL_106;
        }

        v41 = &v7[(v22 - 1)];
        if (v41 < v7 || (v41 + 1) > v6 || v41 > v41 + 1)
        {
          goto LABEL_106;
        }

        v42 = *(v33 - 2);
        result = Mpy_32_16_1(*v41, v18);
        if (result - 0x40000000 >= 0)
        {
          v43 = (result >> 31) ^ 0x7FFFFFFF;
        }

        else
        {
          v43 = 2 * result;
        }

        v44 = v42 - v43;
        v45 = v43 ^ v42;
        v49 = (v45 & (v44 ^ v42)) < 0;
        v46 = (v45 & (v44 ^ v42)) >= 0;
        if (v49)
        {
          v44 = (v42 >> 31) ^ 0x7FFFFFFF;
        }

        v47 = v44 + v38;
        v49 = (v44 ^ v38) < 0;
        v48 = (v44 + v38) ^ v38;
        v49 = !v49 && v48 < 0;
        v50 = !v49;
        if ((v50 & v46) == 0)
        {
          v19 = 1;
        }

        if (v50)
        {
          v51 = v47;
        }

        else
        {
          v51 = (v38 >> 31) ^ 0x7FFFFFFF;
        }

        *v33 = v51;
        v52 = v22--;
      }

      while (v52 > 2);
    }

    v53 = v63 + *v61;
    v55 = (v63 ^ *v61) < 0 || (v53 ^ *v61) >= 0;
    if (v55)
    {
      v13 = v19;
    }

    else
    {
      v13 = 1;
    }

    if (!v55)
    {
      v53 = (*v61 >> 31) ^ 0x7FFFFFFF;
    }

    *v61 = v53;
    v64 = (v64 + 1);
    if (v64 > v59)
    {
      goto LABEL_96;
    }
  }

LABEL_106:
  __break(0x5519u);
  return result;
}

uint64_t lsf_ind_is_active(uint64_t result, __int16 a2, float *a3, int a4, int a5)
{
  v5 = *a3 * 1.28;
  v6 = (v5 + v5) * 0.000030518;
  v7 = v6;
  if (v6 < 0.0)
  {
    v8 = v7 * 32768.0 + -0.5;
    if (v8 <= -32768.0)
    {
      LOWORD(v9) = 0x8000;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v8 = v7 * 32768.0 + 0.5;
  if (v8 < 32767.0)
  {
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  LOWORD(v9) = 0x7FFF;
LABEL_7:
  v10 = v9 + result;
  if (v10 >= 0x7FFF)
  {
    v10 = 0x7FFF;
  }

  if (v10 <= -32768)
  {
    LOWORD(v10) = 0x8000;
  }

  v11 = a3[1] * 1.28;
  v12 = (v11 + v11) * 0.000030518;
  v13 = v12;
  if (v12 < 0.0)
  {
    v14 = v13 * 32768.0 + -0.5;
    if (v14 <= -32768.0)
    {
      LOWORD(v15) = 0x8000;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = v13 * 32768.0 + 0.5;
  if (v14 < 32767.0)
  {
LABEL_15:
    v15 = v14;
    goto LABEL_17;
  }

  LOWORD(v15) = 0x7FFF;
LABEL_17:
  v16 = v15 + a2;
  if (v16 >= -32768)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x8000;
  }

  if (v16 >= 0x8000)
  {
    v17 = 0x7FFF;
  }

  v18 = (&min_distance_thr + 4 * a4);
  v19 = &v18[a5];
  if (v19 < v18 || v19 + 1 > v18 + 2 || v19 > v19 + 1)
  {
    __break(0x5519u);
  }

  else
  {
    v20 = v17 - v10;
    if (v20 >= 0x7FFF)
    {
      v20 = 0x7FFF;
    }

    if (v20 <= -32768)
    {
      v20 = -32768;
    }

    v10 = v10;
    if (v10 >= v20)
    {
      v10 = v20;
    }

    v21 = v10 - *v19;
    if (v21 < 0x8000)
    {
      if (v21 >= -32768)
      {
        return (v21 >> 15) & 1;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t basop_reorder_lsf(unint64_t result)
{
  v1 = 0;
  v2 = 204;
  do
  {
    v3 = *(result + v1);
    v4 = *(result + v1) - v2;
    if (v4 < 0x8000 && v4 < 0)
    {
      *(result + v1) = v2;
      v3 = v2;
    }

    v2 = v3 + 204;
    if (v3 > 32563)
    {
      v2 = 0x7FFF;
    }

    v1 += 2;
  }

  while (v1 != 32);
  v5 = (result + 30);
  if (result + 30 < result || v5 > result + 32)
  {
LABEL_31:
    __break(0x5519u);
    return result;
  }

  if (*v5 >= 16185)
  {
    v6 = 16184;
    v7 = 15;
    while (1)
    {
      v8 = (result + 2 * v7);
      v9 = (v8 + 1);
      v10 = v8 < result || v9 > result + 32;
      if (v10 || v8 >= v9)
      {
        break;
      }

      v12 = *v8 - v6;
      if (v12 < 0x8000 && v12 < 1)
      {
        v6 = *v8;
      }

      else
      {
        *v8 = v6;
      }

      if (v6 >= -32564)
      {
        v6 -= 204;
      }

      else
      {
        v6 = 0x8000;
      }

      if (v7-- == 0)
      {
        return result;
      }
    }

    goto LABEL_31;
  }

  return result;
}

__int16 *basop_lsf2lsp(__int16 *result, unint64_t a2, _WORD *a3, unint64_t a4, _DWORD *a5)
{
  v9 = 0;
  while (1)
  {
    v10 = result + 1;
    if (result + 1 < result || v10 > a2)
    {
      break;
    }

    v12 = *result >> 4;
    v13 = (v12 & 0x3FF) >= 1024 - (v12 & 0x3FF) ? 1024 - (v12 & 0x3FF) : v12 & 0x3FF;
    v14 = 512 - v13 >= v13 ? v13 : 512 - v13;
    v15 = &SineTable512_fx[2 * v14];
    v16 = v15 + 2 > &word_19B39DA5A || v15 >= v15 + 2;
    v17 = !v16 && v15 >= SineTable512_fx;
    v18 = v17;
    if (v13 <= 512 - v13)
    {
      if (!v18)
      {
        break;
      }

      v19 = v15 + 1;
    }

    else
    {
      if (!v18)
      {
        break;
      }

      v19 = v15++;
    }

    v20 = v12 + 512;
    v21 = *v15;
    if (v21 == 0x8000)
    {
      LOWORD(v22) = 0x7FFF;
    }

    else
    {
      v22 = -v21;
    }

    v23 = (v20 & 0x400) != 0 ? v22 : v21;
    v24 = *v19;
    v25 = v24 == 0x8000 ? 0x7FFF : -v24;
    v26 = (*result & 0x4000) != 0 ? v25 : v24;
    if (v26 == 0x8000)
    {
      LOWORD(v27) = 0x7FFF;
    }

    else
    {
      v27 = -v26;
    }

    result = msu_r(2 * ((411776 * (*result & 0xFu) + 0x8000) >> 16) * v27, v23, -32768, a5);
    if (a3 + 1 < a3 || (a3 + 1) > a4)
    {
      break;
    }

    *a3 = result;
    result = v10;
    ++a3;
    v16 = v9++ >= 0xF;
    if (v16)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t dlpc_bfi(unint64_t result, __int128 *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int16 a6, unsigned __int16 a7, uint64_t a8, float *a9, unint64_t a10, _OWORD *a11, unint64_t a12, float *a13, unint64_t a14, unint64_t a15, int a16, __int128 *a17, __int128 *a18, int a19, unint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, float *a24, float *a25)
{
  if ((a3 - a2) < 61 || a3 < a2 || (a5 - a4) < 61 || a5 < a4 || (a15 - a14) < 61 || a15 < a14 || (a10 - a9) < 61 || a10 < a9 || a12 < a11 || (a12 - a11) <= 60)
  {
    goto LABEL_19;
  }

  v28 = result;
  result = lsf_dec_bfi(2, a2, a4, a14, a24, a25, a9, a11, *a13, 0, result, a6, a7, a19, a20, a21, a17, a18, a22, a23, 0, 0, 0);
  if (a16 != 2)
  {
    return result;
  }

  v29 = a2 + 4;
  if (a3 < (a2 + 4) || v29 < a2 || (a3 - (a2 + 4)) < 61)
  {
LABEL_19:
    __break(0x5519u);
    return result;
  }

  v30 = *a13;

  return lsf_dec_bfi(2, v29, a2, a14, a24, a25, a9, a11, v30, 0, v28, a6, a7 + 1, a19, a20, a21, a17, a18, a22, a23, 0, 0, 0);
}

unint64_t lsf_dec_bfi(int a1, __int128 *a2, uint64_t a3, uint64_t a4, float *a5, float *a6, float *a7, _OWORD *a8, float a9, __int16 a10, __int16 a11, unsigned __int16 a12, unsigned __int16 a13, int a14, unint64_t a15, unint64_t a16, __int128 *a17, __int128 *a18, unint64_t a19, unint64_t a20, __int16 a21, __int16 a22, __int16 a23)
{
  v62[1] = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v26 = v62;
    v27 = &GEWB2_Ave;
    v28 = &GEWB_Ave;
    if (a23)
    {
      v29 = &NumRatioBits;
    }

    else
    {
      v29 = &means_swb_cleanspeech_lsf32k0;
    }

    if (!a23)
    {
      v28 = &GENB_Ave;
    }

    if (a11 == 256)
    {
      v27 = v28;
    }

    else
    {
      v29 = &GEWB_Ave;
    }

    v30 = v61;
    if (a22)
    {
      v31 = &E_ROM_tipos;
    }

    else
    {
      v31 = v29;
    }

    if (a22)
    {
      v32 = &E_ROM_f_mean_isf;
    }

    else
    {
      v32 = v27;
    }
  }

  else
  {
    v26 = a6;
    v30 = a5;
    v32 = a17;
    v31 = a18;
    if (a14 == 0 || a17 == 0)
    {
      v31 = a6;
      v32 = a5;
    }
  }

  if (a13 > 3)
  {
    v33 = 1.0 / a13;
    goto LABEL_27;
  }

  v33 = 1.0;
  if (a10 != 1)
  {
    if (a10 == 5 || a12 == 6)
    {
      v58 = a21 <= 0 || a13 <= 1;
      v33 = 0.8;
      if (v58)
      {
        v33 = 0.995;
      }

      goto LABEL_27;
    }

    if (a12 == 1)
    {
      v33 = 0.8;
      goto LABEL_27;
    }

    if (a12)
    {
      if (a12 - 3 < 2)
      {
        goto LABEL_27;
      }

      v59 = a12 == 5;
    }

    else
    {
      if (a13 <= 1)
      {
        v33 = (a9 * 0.2) + 0.8;
        goto LABEL_27;
      }

      v59 = a13 == 2;
    }

    v60 = v59;
    v33 = flt_19B0AF930[v60];
  }

LABEL_27:
  v34 = 0;
  *&v35 = -1;
  *(&v35 + 1) = -1;
  v61[2] = v35;
  v61[3] = v35;
  v61[0] = v35;
  v61[1] = v35;
  v36 = 0.0;
  if (!a14)
  {
    v36 = 0.25;
  }

  if (a1 == 1)
  {
    v36 = 0.75;
  }

  v37 = fmaxf(v33, 0.8);
  do
  {
    v38 = (v32 + v34);
    v39 = v32 + v34 + 4;
    if ((v32 + v34) < v32 || v39 > v31 || v38 > v39)
    {
      goto LABEL_83;
    }

    v42 = ((1.0 - v36) * *(a4 + v34)) + (v36 * *v38);
    *(v61 + v34) = v42;
    *(a2 + v34) = ((1.0 - v33) * v42) + (v33 * *(a3 + v34));
    if (a15)
    {
      v43 = (a19 + v34);
      if (a19 + v34 < a19)
      {
        goto LABEL_83;
      }

      if ((v43 + 1) > a20)
      {
        goto LABEL_83;
      }

      if (v43 > v43 + 1)
      {
        goto LABEL_83;
      }

      v44 = (a15 + v34);
      if (a15 + v34 < a15 || (v44 + 1) > a16 || v44 > v44 + 1)
      {
        goto LABEL_83;
      }

      *v44 = ((1.0 - v37) * *v38) + (v37 * *v43);
    }

    v34 += 4;
  }

  while (v34 != 64);
  if (a22)
  {
    result = reorder_isf(a2);
    goto LABEL_62;
  }

  if (a11 != 256)
  {
    result = reorder_lsf(a2, 70.0, (50 * a11));
    if (!a15)
    {
      goto LABEL_62;
    }

    if (a16 >= a15 && (a16 - a15) >= 61)
    {
      v47 = 70.0;
      v49 = a15;
      v48 = (50 * a11);
      goto LABEL_61;
    }

LABEL_83:
    __break(0x5519u);
  }

  v46 = 50.0;
  if (a1 == 1)
  {
    v46 = 70.0;
  }

  result = reorder_lsf(a2, v46, 12800.0);
  if (a15)
  {
    if (a16 >= a15 && (a16 - a15) >= 61)
    {
      v47 = 50.0;
      v48 = 12800.0;
      v49 = a15;
LABEL_61:
      result = reorder_lsf(v49, v47, v48);
      goto LABEL_62;
    }

    goto LABEL_83;
  }

LABEL_62:
  v50 = *a2;
  v51 = a2[1];
  v52 = a2[3];
  a8[2] = a2[2];
  a8[3] = v52;
  *a8 = v50;
  a8[1] = v51;
  if (a8 + 4 < a8)
  {
    goto LABEL_83;
  }

  v53 = 16;
  v54 = v30;
  do
  {
    if (v54 < v30 || v54 + 1 > v26 || v54 > v54 + 1)
    {
      goto LABEL_83;
    }

    v55 = *a2;
    a2 = (a2 + 4);
    v56 = v55;
    v57 = *v54++;
    *a7 = ((v56 - v57) + (*a7 * -0.33333)) * 0.5;
    ++a7;
    --v53;
  }

  while (v53);
  return result;
}

unint64_t reorder_isf(unint64_t result)
{
  v1 = 0;
  v2 = result + 64;
  v3 = 50.0;
  while (1)
  {
    v4 = (result + 4 * v1);
    v5 = v4 + 1;
    v6 = v4 < result || v5 > v2;
    v7 = v6 || v4 >= v5;
    if (v7)
    {
      break;
    }

    v8 = *v4;
    if (*v4 < v3)
    {
      *v4 = v3;
      v8 = v3;
    }

    v3 = v8 + 50.0;
    v7 = v1++ >= 0xE;
    if (v7)
    {
      v9 = 6350.0;
      if (*(result + 56) <= 6350.0)
      {
        return result;
      }

      v10 = 14;
      while (1)
      {
        v11 = (result + 4 * v10);
        v12 = v11 + 1;
        v13 = v11 < result || v12 > v2;
        if (v13 || v11 >= v12)
        {
          break;
        }

        v15 = *v11;
        if (*v11 > v9)
        {
          *v11 = v9;
          v15 = v9;
        }

        v9 = v15 + -50.0;
        if (v10-- == 0)
        {
          return result;
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t modify_lsf(unint64_t result, unint64_t a2, int a3, int a4)
{
  v5 = 1900.0;
  if (!a4)
  {
    v5 = 800.0;
  }

  if (a3 == 16000)
  {
    v5 = v5 * 1.25;
  }

  if (result + 4 >= result)
  {
    v4 = result + 8;
    if (result + 8 <= a2 && result + 4 <= v4)
    {
      v4 = 1;
      do
      {
        if (v4 > 0xF)
        {
          goto LABEL_20;
        }

        v6 = (result + 4 * v4);
        if (*v6 >= v5)
        {
          goto LABEL_20;
        }

        ++v4;
        v7 = v6 + 2;
        v8 = v6 + 1;
      }

      while (v8 >= result && v7 <= a2 && v8 <= v7);
    }
  }

  while (1)
  {
    do
    {
      __break(0x5519u);
LABEL_20:
      v11 = v4 - 1;
      v12 = (result + 4 * v11);
      v13 = v12 + 1;
    }

    while (v12 < result || v13 > a2 || v12 >= v13);
    if (v4 < 2)
    {
      break;
    }

    v16 = 0;
    v17 = 0;
    v18 = *v12 / v4;
    while (1)
    {
      v4 = result + 4 * v17;
      v19 = v4 + 4;
      v20 = v4 < result || v19 > a2;
      if (v20 || v4 >= v19)
      {
        break;
      }

      *v4 = v18 * (v16 + 1);
      v16 = ++v17;
      if (v11 <= v17)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t prep_tbe_exc(int a1, int a2, float *a3, float *a4, void *a5, uint64_t a6, float a7, double a8, float a9, float a10)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v40[14] = v19;
  v40[15] = v19;
  v40[12] = v19;
  v40[13] = v19;
  v40[10] = v19;
  v40[11] = v19;
  v40[8] = v19;
  v40[9] = v19;
  v40[6] = v19;
  v40[7] = v19;
  v40[4] = v19;
  v40[5] = v19;
  v40[2] = v19;
  v40[3] = v19;
  v40[0] = v19;
  v40[1] = v19;
  v20 = ((a9 * 0.5) + 0.34) + ((a9 * 0.16) * a9);
  v21 = 0.000001;
  v22 = v20 < 0.000001;
  v23 = v20 < 1.0 || v20 < 0.000001;
  if (v20 >= 1.0)
  {
    v22 = 1;
  }

  if (!v23)
  {
    v21 = 1.0;
  }

  if (v22)
  {
    v20 = v21;
  }

  *a4 = v20;
  if (a1 == 256)
  {
    result = interp_code_5over2(a3, (a3 + 64), __b, &v43, 64);
    v25 = 0;
    v26 = a5[2];
    for (i = 5 * a2 / 2; ; ++i)
    {
      v28 = (*a5 + 4 * i);
      v29 = (v28 + 1) > a5[1] || v28 > v28 + 1;
      if (v29 || v28 < v26)
      {
        break;
      }

      *v28 = (__b[v25++] * *&a8) + (a7 * *v28);
      if (v25 == 160)
      {
        return result;
      }
    }

LABEL_35:
    __break(0x5519u);
  }

  v31 = 0;
  v32 = vdupq_lane_s32(*&a8, 0);
  do
  {
    v40[v31 / 4] = vmlaq_f32(vmulq_n_f32(*(a6 + v31 * 4), a10 + a10), *&a3[v31], v32);
    v31 += 4;
  }

  while (v31 != 64);
  result = interp_code_4over2(v40, &v41, __b, &v43, 64);
  v33 = 0;
  v34 = a5[2];
  v35 = 2 * a2;
  do
  {
    v36 = (*a5 + 4 * v35);
    if ((v36 + 1) > a5[1] || v36 > v36 + 1 || v36 < v34)
    {
      goto LABEL_35;
    }

    *v36 = __b[v33++] + (a7 * *v36);
    ++v35;
  }

  while (v33 != 128);
  return result;
}

float *interp_code_5over2(float *result, unint64_t a2, float *a3, unint64_t a4, int a5)
{
  v5 = result + 1;
  v6 = (result + 1) <= a2 && v5 >= result;
  v7 = (a3 + 1);
  if (v6 && v7 <= a4 && v7 >= a3)
  {
    v10 = *result;
    *a3 = *result;
    if ((result + 2) <= a2 && v5 <= result + 2)
    {
      v11 = a3 + 2;
      if ((a3 + 2) <= a4 && v7 <= v11)
      {
        a3[1] = (*v5 * 0.4) + (v10 * 0.6);
        if (v11 >= a3 && (a3 + 3) <= a4 && v11 <= a3 + 3)
        {
          *v11 = (result[1] * 0.8) + (*result * 0.2);
          v12 = 2;
          v13 = 1;
          v14 = 3;
          while (1)
          {
            v15 = &result[v13];
            v16 = v15 + 1;
            v17 = v15 < result || v16 > a2;
            if (v17 || v15 > v16)
            {
              break;
            }

            v19 = &result[v12];
            if (v19 < result)
            {
              break;
            }

            if ((v19 + 1) > a2)
            {
              break;
            }

            if (v19 > v19 + 1)
            {
              break;
            }

            v20 = &a3[v14];
            if (v20 < a3)
            {
              break;
            }

            v21 = v20 + 1;
            if ((v20 + 1) > a4 || v20 > v21)
            {
              break;
            }

            *v20 = (*v19 * 0.2) + (*v15 * 0.8);
            v22 = v20 + 2;
            if ((v20 + 2) > a4 || v21 > v22)
            {
              break;
            }

            v20[1] = (*v19 * 0.6) + (*v15 * 0.4);
            v24 = v20 + 3;
            if ((v20 + 3) > a4)
            {
              break;
            }

            if (v22 > v24)
            {
              break;
            }

            *v22 = *v19;
            v25 = &result[(v13 + 1)];
            if (v25 < result)
            {
              break;
            }

            if ((v25 + 1) > a2)
            {
              break;
            }

            if (v25 > v25 + 1)
            {
              break;
            }

            v26 = &result[v12];
            v27 = v26 + 1;
            if (v26 + 1 < result)
            {
              break;
            }

            v28 = (v26 + 2);
            if (v28 > a2)
            {
              break;
            }

            if (v27 > v28)
            {
              break;
            }

            v29 = v20 + 4;
            if ((v20 + 4) > a4)
            {
              break;
            }

            if (v24 > v29)
            {
              break;
            }

            v20[3] = (*v27 * 0.4) + (*v25 * 0.6);
            v30 = v20 + 5;
            if (v30 > a4 || v29 > v30)
            {
              break;
            }

            *v29 = (*v27 * 0.8) + (*v25 * 0.2);
            v14 += 5;
            v13 += 2;
            v12 += 2;
            if (((5 * a5 - 10) >> 1) <= v14)
            {
              v31 = &result[v13];
              if (v31 >= result && (v31 + 1) <= a2 && v31 <= v31 + 1)
              {
                v32 = &a3[v14];
                if (v32 >= a3)
                {
                  v33 = v32 + 1;
                  if ((v32 + 1) <= a4 && v32 <= v33)
                  {
                    *v32 = *v31 * 0.8;
                    v34 = v32 + 2;
                    if (v34 <= a4 && v33 <= v34)
                    {
                      *v33 = *v31 * 0.4;
                      return result;
                    }
                  }
                }
              }

              break;
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t interp_code_4over2(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a5 < 2)
  {
    v6 = 0;
    v5 = 0;
LABEL_26:
    v19 = (result + 4 * v5);
    if (v19 >= result)
    {
      v20 = (v19 + 1) > a2 || v19 > v19 + 1;
      v21 = (a3 + 4 * v6);
      v22 = v21 + 1;
      v23 = !v20 && v21 >= a3;
      v24 = !v23 || v22 > a4;
      if (!v24 && v21 <= v22)
      {
        v26 = *v19;
        *v21 = *v19;
        v27 = v21 + 2;
        if (v27 <= a4 && v22 <= v27)
        {
          *v22 = v26 * 0.5;
          return result;
        }
      }
    }
  }

  else
  {
    LOWORD(v5) = 0;
    LOWORD(v6) = 0;
    while (1)
    {
      v7 = (result + 4 * v5);
      v8 = v7 + 1;
      v9 = v7 < result || v8 > a2;
      v10 = v9 || v7 > v8;
      v11 = (a3 + 4 * v6);
      v12 = v11 + 1;
      v13 = !v10 && v11 >= a3;
      v14 = !v13 || v12 > a4;
      if (v14 || v11 > v12)
      {
        break;
      }

      v17 = *v7;
      v16 = v7 + 2;
      v18 = v17;
      *v11 = v17;
      if (v16 > a2 || v8 > v16 || (v11 + 2) > a4 || v12 > v11 + 2)
      {
        break;
      }

      *v12 = (*v8 * 0.5) + (v18 * 0.5);
      LOWORD(v5) = v5 + 1;
      LOWORD(v6) = v6 + 2;
      if (a5 - 1 <= v5)
      {
        v5 = v5;
        v6 = v6;
        goto LABEL_26;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void wb_tbe_extras_reset(float *__C, float *a2)
{
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 7uLL);
  v4 = 0.0;
  vDSP_vfill(&v4, a2, 1, 7uLL);
}

void swb_tbe_reset(float *__C, float *a2, float *a3, float *a4, float *a5, _DWORD *a6, _DWORD *a7, float *a8, _DWORD *a9)
{
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 2uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a2, 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a3, 1, 0xAuLL);
  __A = 0.0;
  vDSP_vfill(&__A, a4, 1, 0x14uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a5, 1, 0x14uLL);
  *a6 = 0;
  *a7 = 0;
  __A = 0.0;
  vDSP_vfill(&__A, a8, 1, 0xAuLL);
  *a9 = 1065353216;
}

void fb_tbe_reset_enc(float *__C, _DWORD *a2)
{
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, __C + 4, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, __C + 8, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, __C + 12, 1, 4uLL);
  *a2 = 0;
}

uint64_t pit_encode(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, __int16 *a6, uint64_t a7, uint64_t a8, __int16 a9, __int16 *a10, unint64_t a11, unsigned __int16 *a12, _WORD *a13, __int16 *a14, __int16 *a15, uint64_t a16, uint64_t a17, const float *a18, uint64_t a19)
{
  v23 = result;
  v24 = a18;
  v25 = a19;
  v26 = a16;
  v27 = a17;
  v28 = a15;
  v29 = a12;
  v30 = a13;
  if (a7 == 128)
  {
    v31 = 0;
  }

  else
  {
    v31 = a7;
  }

  v32 = a10;
  if (!a3)
  {
    v106 = result;
    if (a7)
    {
      if (a2 <= 13200 && a5 == 3 && a7 == 128 && *a14 >= 50)
      {
        *a6 = 0;
      }

      else
      {
        v38 = *a6;
        v39 = 1;
        if (a7 != 128)
        {
LABEL_39:
          v40 = v38;
          goto LABEL_51;
        }

        v40 = *a6;
        if (*a6)
        {
          goto LABEL_51;
        }
      }

      v41 = a10 + 1;
      if (a10 + 1 < a10 || (a10 + 2) > a11 || v41 > a10 + 2)
      {
        goto LABEL_263;
      }

      v38 = 0;
      if (*v41 > 33)
      {
        v39 = 1;
        goto LABEL_39;
      }
    }

    else
    {
      v39 = 1;
      if (a5 == 2)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      if (a2 == 7200 && a5 == 3)
      {
        v38 = 0;
      }

      else
      {
        v38 = v40;
      }

      *a6 = v38;
      if (a2 != 7200 || a5 != 3)
      {
LABEL_51:
        if (a5 == 5)
        {
          v42 = a9;
          if ((a4 + ((a4 & 0x8000) >> 15)) << 16 >> 17 != a9 || a7 == 0)
          {
            v44 = v31;
          }

          else
          {
            v44 = 64;
          }

          v45 = v44;
          if (v44)
          {
            v46 = 6;
          }

          else
          {
            v46 = 10;
          }

          if (a7)
          {
            if (a7 != 128 || v44)
            {
              goto LABEL_110;
            }

            v103 = a9;
            v105 = v46;
            if (a10 + 1 < a10 || (a10 + 2) > a11 || a10 + 1 > a10 + 2)
            {
              goto LABEL_263;
            }

            v47 = 0;
            v32 = a10 + 1;
          }

          else
          {
            v103 = a9;
            v105 = v46;
            if ((a10 + 1) > a11)
            {
              goto LABEL_263;
            }

            v47 = v44;
            if (a10 + 1 < a10)
            {
              goto LABEL_263;
            }
          }

          limit_T0(256, 4, v47, v40, *v32 * v39, 0, a12, a13);
          v24 = a18;
          v25 = a19;
          v26 = a16;
          v27 = a17;
          v29 = a12;
          v30 = a13;
          v28 = a15;
          v38 = *a6;
          v42 = v103;
          v46 = v105;
LABEL_110:
          v107 = *a8 + 4 * a7;
          v108 = *(a8 + 8);
          v68 = pitch_fr4(&v107, v24, v25, v26, v27, *v29, *v30, v28, v45, v38, 231, 231, 256, v42);
          *a14 = v68;
          return pit_Q_enc(v106, 0, v46, 4, v45, *a6, v68, *v28, v29, v30);
        }

LABEL_112:
        if (a4 == 256)
        {
          if (a2 > 24399)
          {
            if (a2 <= 30399)
            {
              if (a2 > 29199)
              {
                if (a2 == 29200)
                {
                  v69 = 110;
                  goto LABEL_191;
                }

                if (a2 == 30200)
                {
                  v69 = 120;
                  goto LABEL_191;
                }
              }

              else
              {
                if (a2 == 24400)
                {
                  v69 = 90;
                  goto LABEL_191;
                }

                if (a2 == 29000)
                {
                  v69 = 100;
                  goto LABEL_191;
                }
              }
            }

            else if (a2 <= 47999)
            {
              if (a2 == 30400)
              {
                v69 = 130;
                goto LABEL_191;
              }

              if (a2 == 32000)
              {
                v69 = 140;
                goto LABEL_191;
              }
            }

            else
            {
              switch(a2)
              {
                case 48000:
                  v69 = 150;
                  goto LABEL_191;
                case 64000:
                  v69 = 160;
                  goto LABEL_191;
                case 96000:
                  v69 = 170;
                  goto LABEL_191;
              }
            }
          }

          else if (a2 <= 12849)
          {
            if (a2 > 11599)
            {
              if (a2 == 11600)
              {
                v69 = 20;
                goto LABEL_191;
              }

              if (a2 == 12150)
              {
                v69 = 30;
                goto LABEL_191;
              }
            }

            else
            {
              if (a2 == 7200)
              {
                v69 = 0;
                goto LABEL_191;
              }

              if (a2 == 8000)
              {
                v69 = 10;
                goto LABEL_191;
              }
            }
          }

          else if (a2 <= 14799)
          {
            if (a2 == 12850)
            {
              v69 = 40;
              goto LABEL_191;
            }

            if (a2 == 13200)
            {
              v69 = 50;
              goto LABEL_191;
            }
          }

          else
          {
            switch(a2)
            {
              case 14800:
                v69 = 60;
                goto LABEL_191;
              case 16400:
                v69 = 70;
                goto LABEL_191;
              case 22600:
                v69 = 80;
                goto LABEL_191;
            }
          }

          if (a2 == 128000)
          {
            v69 = 180;
          }

          else
          {
            v69 = -10;
          }

LABEL_191:
          if (a5)
          {
            v76 = a5;
          }

          else
          {
            v76 = 3;
          }

          v73 = &ACB_bits_tbl[2 * ((v76 + v69 - 1) << (2 * (a7 != -1))) + 2 * ((a7 + ((a7 >> 25) & 0x3F)) >> 6)];
          if (v73 < ACB_bits_tbl)
          {
            goto LABEL_263;
          }

          v74 = v73 + 2;
          v75 = ACB_bits_16kHz_tbl;
LABEL_196:
          if (v74 > v75 || v73 > v74)
          {
            goto LABEL_263;
          }

          v77 = *v73;
          if (a5 == 2)
          {
            if (a7)
            {
              goto LABEL_210;
            }

            if ((a10 + 1) > a11 || a10 + 1 < a10)
            {
              goto LABEL_263;
            }

            v78 = *a10 * v39;
            if (v40)
            {
              if (v40 == 2)
              {
                v79 = 17;
              }

              else
              {
                v79 = 20;
              }

              v80 = (v78 - 4);
              if (v80 <= v79)
              {
                LOWORD(v80) = v79;
              }

              *a12 = v80;
              v81 = v80 + 7;
              *a13 = v81;
              if (v81 >= 232)
              {
LABEL_209:
                *a13 = 231;
                *a12 = 224;
              }
            }

            else
            {
              v96 = (v78 - 4);
              if (v96 <= 34)
              {
                LOWORD(v96) = 34;
              }

              *a12 = v96;
              v97 = v96 + 7;
              *a13 = v97;
              if (v97 > 231)
              {
                goto LABEL_209;
              }
            }

LABEL_210:
            if (v77 == 5 || v77 == 9)
            {
              v107 = *a8 + 4 * a7;
              v108 = *(a8 + 8);
              v83 = pitch_fr4(&v107, a18, a19, a16, a17, *a12, *a13, a15, a7, *a6, 112, 124, 256, 64);
              v84 = a14;
            }

            else
            {
              v84 = a14;
              if (v77 != 10)
              {
                v83 = *a14;
                goto LABEL_239;
              }

              v107 = *a8 + 4 * a7;
              v108 = *(a8 + 8);
              v83 = pitch_fr4(&v107, a18, a19, a16, a17, *a12, *a13, a15, a7, *a6, 231, 231, 256, 64);
            }

            *v84 = v83;
LABEL_239:
            v61 = *a6;
            v62 = *a15;
            v101 = a12;
            v102 = a13;
            v66 = v77;
            v51 = v83;
            v64 = v106;
            v65 = 0;
            v67 = 4;
            v63 = a7;
            return pit_Q_enc(v64, v65, v66, v67, v63, v61, v51, v62, v101, v102);
          }

          if (a7)
          {
            if (a7 != 128)
            {
              goto LABEL_228;
            }

            if (a10 + 1 < a10)
            {
              goto LABEL_263;
            }

            if ((a10 + 2) > a11)
            {
              goto LABEL_263;
            }

            v32 = a10 + 1;
            if (a10 + 1 > a10 + 2)
            {
              goto LABEL_263;
            }
          }

          else if ((a10 + 1) > a11 || a10 + 1 < a10)
          {
            goto LABEL_263;
          }

          v104 = a4;
          limit_T0(a4, 8, 0, v40, *v32 * v39, 0, a12, a13);
          LODWORD(a4) = v104;
          v24 = a18;
          v25 = a19;
          v26 = a16;
          v27 = a17;
          v29 = a12;
          v30 = a13;
          v28 = a15;
LABEL_228:
          if (a4 == 256)
          {
            if (v77 <= 7)
            {
              if (v77 != 5)
              {
                if (v77 != 6)
                {
                  goto LABEL_257;
                }

LABEL_245:
                v87 = *a6;
                if (*a6)
                {
                  v107 = *a8 + 4 * a7;
                  v108 = *(a8 + 8);
                  v85 = *v29;
                  v86 = *v30;
                  v88 = 8388724;
                  goto LABEL_247;
                }

                v107 = *a8 + 4 * a7;
                v108 = *(a8 + 8);
                v98 = *v29;
                v99 = *v30;
                v100 = 0xA000800000;
LABEL_260:
                v95 = pitch_fr4(&v107, v24, v25, v26, v27, v98, v99, v28, v31, v100, SWORD1(v100), (v100 & 0xFFFFFFFFFFFFLL | 0x100000000000000uLL) >> 32, (v100 & 0xFFFFFFFFFFFFLL | 0x100000000000000uLL) >> 48, 64);
                goto LABEL_261;
              }
            }

            else if (v77 != 8)
            {
              if (v77 != 9)
              {
                if (v77 == 10)
                {
                  v107 = *a8 + 4 * a7;
                  v108 = *(a8 + 8);
                  v85 = *v29;
                  v86 = *v30;
                  v87 = *a6;
                  v88 = 15139047;
LABEL_247:
                  v94 = v88 | 0x40010000000000;
LABEL_250:
                  v95 = pitch_fr4(&v107, v24, v25, v26, v27, v85, v86, v28, v31, v87, v94, SWORD1(v94), SWORD2(v94), SHIWORD(v94));
LABEL_261:
                  *a14 = v95;
                  goto LABEL_262;
                }

LABEL_257:
                v95 = *a14;
LABEL_262:
                v61 = *a6;
                v62 = *v28;
                v101 = v29;
                v102 = v30;
                v66 = v77;
                v63 = v31;
                v51 = v95;
                v64 = v106;
                v65 = 0;
                goto LABEL_106;
              }

              goto LABEL_245;
            }

            v87 = *a6;
            if (*a6)
            {
              v107 = *a8 + 4 * a7;
              v108 = *(a8 + 8);
              v85 = *v29;
              v86 = *v30;
              v94 = 0x40010000400014;
              goto LABEL_250;
            }

            v107 = *a8 + 4 * a7;
            v108 = *(a8 + 8);
            v98 = *v29;
            v99 = *v30;
            v100 = 0x5C00220000;
            goto LABEL_260;
          }

          if (v77 == 6 || v77 == 9)
          {
            v107 = *a8 + 4 * a7;
            v108 = *(a8 + 8);
            v89 = *v29;
            v90 = *v30;
            v91 = *a6;
            v92 = 8519768;
          }

          else
          {
            if (v77 != 10)
            {
              v93 = *a14;
              return pit16k_Q_enc(v106, v77, *a6, v93, *v28, v29, v30);
            }

            v107 = *a8 + 4 * a7;
            v108 = *(a8 + 8);
            v89 = *v29;
            v90 = *v30;
            v91 = *a6;
            v92 = 18940168;
          }

          v93 = pitch_fr4(&v107, v24, v25, v26, v27, v89, v90, v28, v31, v91, v92, SHIWORD(v92), 320, (v92 | 0x40014000000000uLL) >> 48);
          *a14 = v93;
          return pit16k_Q_enc(v106, v77, *a6, v93, *v28, v29, v30);
        }

        v70 = 5;
        if (a7 < 0)
        {
          v70 = 1;
        }

        if (a2 > 28999)
        {
          if (a2 > 30399)
          {
            switch(a2)
            {
              case 30400:
                v71 = 49;
                goto LABEL_174;
              case 32000:
                v71 = 56;
                goto LABEL_174;
              case 48000:
                v71 = 63;
                goto LABEL_174;
            }
          }

          else
          {
            switch(a2)
            {
              case 29000:
                v71 = 28;
                goto LABEL_174;
              case 29200:
                v71 = 35;
                goto LABEL_174;
              case 30200:
                v71 = 42;
LABEL_174:
                v72 = a5 == 3;
                if (a5 == 4)
                {
                  v72 = 2;
                }

                v73 = &ACB_bits_16kHz_tbl[2 * (v71 + v72) * v70 + 2 * (((a7 + ((a7 >> 25) & 0x3F)) << 16) >> 22)];
                if (v73 < ACB_bits_16kHz_tbl)
                {
                  goto LABEL_263;
                }

                v74 = v73 + 2;
                v75 = FCB_bits_16kHz_tbl;
                goto LABEL_196;
            }
          }

          goto LABEL_172;
        }

        if (a2 <= 16399)
        {
          if (a2 == 8000)
          {
            v71 = 0;
            goto LABEL_174;
          }

          if (a2 != 14800)
          {
            goto LABEL_172;
          }
        }

        else if (a2 != 16400)
        {
          if (a2 == 22600)
          {
            v71 = 14;
            goto LABEL_174;
          }

          if (a2 == 24400)
          {
            v71 = 21;
            goto LABEL_174;
          }

LABEL_172:
          v71 = 70;
          if (a2 != 64000)
          {
            v71 = -7;
          }

          goto LABEL_174;
        }

        v71 = 7;
        goto LABEL_174;
      }

      if ((a10 + 1) > a11 || a10 + 1 < a10)
      {
        goto LABEL_263;
      }

      if (*a10 >= 34)
      {
        v40 = 0;
        goto LABEL_112;
      }
    }

    v40 = 0;
    v39 = 2;
    goto LABEL_51;
  }

  *a6 = 0;
  if (a2 == 8850)
  {
    if (a7)
    {
      if (a7 != 128)
      {
        v34 = 5;
LABEL_96:
        v107 = *a8 + 4 * a7;
        v108 = *(a8 + 8);
        v56 = pitch_fr4(&v107, a18, a19, a16, a17, *a12, *a13, a15, v31, *a6, 34, 92, 256, 64);
LABEL_104:
        v51 = v56;
        goto LABEL_105;
      }

      v35 = (a10 + 2);
      v37 = a10 + 1 < a10 || v35 > a11 || (a10 + 1) > v35;
      v32 = a10 + 1;
      if (v37)
      {
        goto LABEL_263;
      }
    }

    else if ((a10 + 1) > a11 || a10 + 1 < a10)
    {
      goto LABEL_263;
    }

    v53 = (*v32 - 8);
    if (v53 <= 34)
    {
      LOWORD(v53) = 34;
    }

    *a12 = v53;
    v54 = v53 + 15;
    *a13 = v54;
    if (v54 >= 232)
    {
      *a13 = 231;
      *a12 = 216;
    }

    v34 = 8;
    goto LABEL_96;
  }

  if (a2 == 6600)
  {
    if (a7)
    {
      v33 = 0;
      v34 = 5;
LABEL_78:
      v107 = *a8 + 4 * a7;
      v108 = *(a8 + 8);
      v51 = pitch_fr4(&v107, a18, a19, a16, a17, *a12, *a13, a15, a7, v33, 34, 92, 256, 64);
      v31 = a7;
LABEL_105:
      *a14 = v51;
      v61 = *a6;
      v62 = *a15;
      v101 = a12;
      v102 = a13;
      v63 = v31;
      v64 = v23;
      v65 = 1;
      v66 = v34;
LABEL_106:
      v67 = 8;
      return pit_Q_enc(v64, v65, v66, v67, v63, v61, v51, v62, v101, v102);
    }

    if ((a10 + 1) <= a11 && a10 + 1 >= a10)
    {
      v49 = (*a10 - 8);
      if (v49 <= 34)
      {
        LOWORD(v49) = 34;
      }

      *a12 = v49;
      v50 = v49 + 15;
      *a13 = v50;
      if (v50 >= 232)
      {
        *a13 = 231;
        *a12 = 216;
      }

      v33 = *a6;
      v34 = 8;
      goto LABEL_78;
    }

    goto LABEL_263;
  }

  if (a7)
  {
    if (a7 != 128)
    {
      v34 = 6;
      v32 = a14;
      goto LABEL_98;
    }

    if (a10 + 1 >= a10 && (a10 + 2) <= a11 && a10 + 1 <= a10 + 2)
    {
      v34 = 9;
      v32 = a10 + 1;
LABEL_98:
      v57 = (*v32 - 8);
      if (v57 <= 34)
      {
        LOWORD(v57) = 34;
      }

      *a12 = v57;
      v58 = v57 + 15;
      v59 = (v57 + 15);
      *a13 = v58;
      if (v59 <= 231)
      {
        v60 = *a12;
      }

      else
      {
        *a13 = 231;
        v60 = 216;
        *a12 = 216;
        LOWORD(v59) = *a13;
      }

      v107 = *a8 + 4 * a7;
      v108 = *(a8 + 8);
      v56 = pitch_fr4(&v107, a18, a19, a16, a17, v60, v59, a15, v31, *a6, 128, 160, 256, 64);
      goto LABEL_104;
    }
  }

  else if ((a10 + 1) <= a11 && a10 + 1 >= a10)
  {
    v34 = 9;
    goto LABEL_98;
  }

LABEL_263:
  __break(0x5519u);
  return result;
}

float *inov_encode(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, unsigned __int16 a8, float a9, float a10, float a11, __int16 a12, unsigned __int16 a13, float *a14, unint64_t a15, char *a16, unint64_t a17, void *a18, const float *a19, unint64_t a20, const float *a21, unint64_t a22, float *a23, unint64_t a24, float *a25, unint64_t a26)
{
  v30 = a21;
  v117[1] = *MEMORY[0x1E69E9840];
  *&v31 = -1;
  *(&v31 + 1) = -1;
  v116[14] = v31;
  v116[15] = v31;
  v116[12] = v31;
  v116[13] = v31;
  v116[10] = v31;
  v116[11] = v31;
  v116[8] = v31;
  v116[9] = v31;
  v116[6] = v31;
  v116[7] = v31;
  v116[4] = v31;
  v116[5] = v31;
  v116[2] = v31;
  v116[3] = v31;
  v116[0] = v31;
  v116[1] = v31;
  __src[14] = v31;
  __src[15] = v31;
  __src[12] = v31;
  __src[13] = v31;
  __src[10] = v31;
  __src[11] = v31;
  __src[8] = v31;
  __src[9] = v31;
  __src[6] = v31;
  __src[7] = v31;
  __src[4] = v31;
  __src[5] = v31;
  __src[2] = v31;
  __src[3] = v31;
  __src[0] = v31;
  __src[1] = v31;
  __C[14] = v31;
  __C[15] = v31;
  __C[12] = v31;
  __C[13] = v31;
  __C[10] = v31;
  __C[11] = v31;
  __C[8] = v31;
  __C[9] = v31;
  __C[6] = v31;
  __C[7] = v31;
  __C[4] = v31;
  __C[5] = v31;
  __C[2] = v31;
  __C[3] = v31;
  if (a4 == 256)
  {
    v32 = 0.75;
  }

  else
  {
    v32 = 0.8;
  }

  __C[0] = v31;
  __C[1] = v31;
  v33 = flt_19B0B0068[a4 == 256];
  if (a2 >= 13201 && !a3)
  {
    if ((a15 - a14) < 65 || a15 < a14 || a20 < a19 || (a20 - a19) <= 252)
    {
      goto LABEL_288;
    }

    cb_shape(1, 1, 0, a8, 0, a14, a19, v32, v33, a10, a11);
    v34 = 64;
    v35 = __C;
    v36 = a19;
    do
    {
      vDSP_dotpr(v36++, 1, a19, 1, v35++, v34--);
    }

    while (v34);
    v37 = 0;
    v38 = a19;
    while (1)
    {
      v39 = &a21[v37];
      v40 = v39 + 1;
      v42 = v39 < a21 || v40 > a22 || v39 >= v40;
      if (v42)
      {
        goto LABEL_288;
      }

      v43 = *v39;
      *(__src + v37) = *v39;
      if (v37)
      {
        break;
      }

LABEL_26:
      ++v37;
      ++v38;
      if (v37 == 64)
      {
        E_ACELP_toeplitz_mul(__C, __src, __src, v116, v116, v117);
        if (a17 >= a16 && a17 - a16 > 0xFF)
        {
          memmove(a16, __src, 0x100uLL);
          if (a16 + 256 >= a16)
          {
            v108 = 1;
            goto LABEL_45;
          }
        }

LABEL_288:
        __break(0x5519u);
      }
    }

    v44 = 0;
    v45 = v38;
    while (v45 >= a19 && (v45 + 1) <= a20 && v45 <= v45 + 1)
    {
      v46 = *v45--;
      v43 = v43 - (*(__src + v44) * v46);
      *(__src + v37) = v43;
      if (v37 == ++v44)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_288;
  }

  v47 = a18[1];
  v48 = *a18 + 4 * a12;
  if (v48 > v47)
  {
    goto LABEL_288;
  }

  if ((a17 - a16) < 253)
  {
    goto LABEL_288;
  }

  if (a17 < a16)
  {
    goto LABEL_288;
  }

  if ((v47 - v48) < 253)
  {
    goto LABEL_288;
  }

  if (a18[2] > v48)
  {
    goto LABEL_288;
  }

  v49 = 0;
  v50 = -a9;
  do
  {
    *&a16[v49] = *&a16[v49] + (v50 * *(v48 + v49));
    v49 += 4;
  }

  while (v49 != 256);
  if ((a15 - a14) < 65 || a15 < a14 || a20 < a19 || (a20 - a19) < 253)
  {
    goto LABEL_288;
  }

  cb_shape(1, 1, 0, a8, 0, a14, a19, v32, v33, a10, a11);
  v51 = v116;
  v52 = 64;
  do
  {
    vDSP_dotpr(v30++, 1, a19, 1, v51++, v52--);
  }

  while (v52);
  v108 = 0;
LABEL_45:
  if (a4 != 256 || a6 != 4)
  {
    if (a4 != 320)
    {
      v55 = 0;
      goto LABEL_95;
    }

    if (a2 <= 32000)
    {
      v58 = 4;
      if (a6 != 4 || a7 < 2)
      {
        goto LABEL_92;
      }

      goto LABEL_89;
    }

    if (a2 > 0xBB80)
    {
      if (a6 == 4)
      {
LABEL_89:
        v61 = a12 < 65;
        v58 = 2;
LABEL_90:
        if (v61)
        {
          ++v58;
        }

        goto LABEL_92;
      }

      v58 = 4;
    }

    else
    {
      if (a6 == 4)
      {
        v61 = a12 < 65;
        v58 = 1;
        goto LABEL_90;
      }

      v58 = 3;
    }

LABEL_92:
    if (a6)
    {
      v55 = v58;
    }

    else
    {
      v55 = 4;
    }

LABEL_95:
    if (a2 >= 13201 && a4 != a5)
    {
      v64 = (a2 >> 8 < 0x7D || a7 == 1) && v55 > 1u;
      v55 -= v64;
    }

    goto LABEL_107;
  }

  if (a13 < 64 && a12 == 0 && a2 == 8000)
  {
    v55 = 3;
  }

  else
  {
    v55 = 0;
  }

  if (a2 != 13200 && a2 != 12150)
  {
    if (a2 == 11600)
    {
      if (a12)
      {
        v56 = 0;
      }

      else
      {
        v56 = a13 < 64;
      }

      v57 = v56;
      if (a13 == 1 || (v57 & 1) != 0 || a12 == 192 && a13 == 2)
      {
        v55 = 3;
      }

      goto LABEL_107;
    }

    goto LABEL_95;
  }

  if (a13 < 64 && a12 == 0 || a13 < 3)
  {
    v55 = 3;
  }

LABEL_107:
  v107 = v55;
  __A = 0.0;
  vDSP_vfill(&__A, a25, 1, 0x40uLL);
  if (!a3)
  {
    if (a4 == 256)
    {
      if (a2 > 24399)
      {
        if (a2 <= 30399)
        {
          if (a2 > 29199)
          {
            if (a2 == 29200)
            {
              v68 = 110;
            }

            else
            {
              if (a2 != 30200)
              {
                goto LABEL_213;
              }

              v68 = 120;
            }
          }

          else if (a2 == 24400)
          {
            v68 = 90;
          }

          else
          {
            if (a2 != 29000)
            {
              goto LABEL_213;
            }

            v68 = 100;
          }
        }

        else if (a2 <= 47999)
        {
          if (a2 == 30400)
          {
            v68 = 130;
          }

          else
          {
            if (a2 != 32000)
            {
              goto LABEL_213;
            }

            v68 = 140;
          }
        }

        else
        {
          switch(a2)
          {
            case 48000:
              v68 = 150;
              break;
            case 64000:
              v68 = 160;
              break;
            case 96000:
              v68 = 170;
              break;
            default:
              goto LABEL_213;
          }
        }
      }

      else if (a2 <= 12849)
      {
        if (a2 > 11599)
        {
          if (a2 == 11600)
          {
            v68 = 20;
          }

          else
          {
            if (a2 != 12150)
            {
              goto LABEL_213;
            }

            v68 = 30;
          }
        }

        else if (a2 == 7200)
        {
          v68 = 0;
        }

        else
        {
          if (a2 != 8000)
          {
            goto LABEL_213;
          }

          v68 = 10;
        }
      }

      else if (a2 <= 14799)
      {
        if (a2 == 12850)
        {
          v68 = 40;
        }

        else
        {
          if (a2 != 13200)
          {
            goto LABEL_213;
          }

          v68 = 50;
        }
      }

      else
      {
        switch(a2)
        {
          case 14800:
            v68 = 60;
            break;
          case 16400:
            v68 = 70;
            break;
          case 22600:
            v68 = 80;
            break;
          default:
LABEL_213:
            if (a2 == 128000)
            {
              v68 = 180;
            }

            else
            {
              v68 = -10;
            }

            break;
        }
      }

      if (a6)
      {
        v79 = a6;
      }

      else
      {
        v79 = 3;
      }

      if (a13 >= 2)
      {
        if (a13 > 63)
        {
          switch(a13)
          {
            case 0x40u:
              v80 = 4;
              goto LABEL_221;
            case 0x80u:
              v80 = 5;
              goto LABEL_221;
            case 0xC0u:
              v80 = 6;
              goto LABEL_221;
          }
        }

        else
        {
          switch(a13)
          {
            case 2u:
              v80 = 1;
              goto LABEL_221;
            case 3u:
              v80 = 2;
              goto LABEL_221;
            case 4u:
              v80 = 3;
              goto LABEL_221;
          }
        }

        if (a13 == 256)
        {
          v80 = 7;
        }

        else
        {
          v80 = 0;
        }
      }

      else
      {
        v80 = 0;
      }

LABEL_221:
      v81 = (v79 + v68 + v80 - 1) << (2 * (a12 != -1));
      v66 = a14;
      if (a12 == -1)
      {
        v82 = 0;
      }

      else
      {
        v82 = ((a12 + ((a12 >> 25) & 0x3F)) << 16) >> 22;
      }

      v76 = &FCB_bits_tbl[v82 + v81];
      if (v76 < FCB_bits_tbl)
      {
        goto LABEL_288;
      }

      v77 = v76 + 1;
      v78 = gain_bits_tbl;
      goto LABEL_231;
    }

    v69 = 5;
    if (a12 < 0)
    {
      v69 = 1;
    }

    if (a2 > 28999)
    {
      if (a2 > 30399)
      {
        switch(a2)
        {
          case 30400:
            v70 = 49;
            goto LABEL_193;
          case 32000:
            v70 = 56;
            goto LABEL_193;
          case 48000:
            v70 = 63;
            goto LABEL_193;
        }
      }

      else
      {
        switch(a2)
        {
          case 29000:
            v70 = 28;
            goto LABEL_193;
          case 29200:
            v70 = 35;
            goto LABEL_193;
          case 30200:
            v70 = 42;
LABEL_193:
            v71 = a6 == 3;
            if (a6 == 4)
            {
              v71 = 2;
            }

            v72 = v70 + v71;
            if ((a13 >> 6) & 0xFFFC | (a13 << 10))
            {
              v73 = 4 * (a13 == 256);
            }

            else
            {
              v73 = ((a13 >> 6) | (a13 << 10));
            }

            v74 = (v72 + v73) * v69;
            if (a12 == -1)
            {
              v75 = 0;
            }

            else
            {
              v75 = (a12 + ((a12 >> 25) & 0x3F)) >> 6;
            }

            v66 = a14;
            v76 = &FCB_bits_16kHz_tbl[v75 + v74];
            if (v76 < FCB_bits_16kHz_tbl)
            {
              goto LABEL_288;
            }

            v77 = v76 + 1;
            v78 = frac_4sf;
LABEL_231:
            if (v77 > v78 || v76 > v77)
            {
              goto LABEL_288;
            }

            v83 = *v76;
            if (v83 != 12)
            {
              if (v83 == 7)
              {
                v84 = 0;
                LOWORD(v85) = 0;
                v86 = 0.0;
                do
                {
                  if ((*(v116 + v84) * *(v116 + v84)) <= v86)
                  {
                    v87 = v85;
                  }

                  else
                  {
                    v86 = *(v116 + v84) * *(v116 + v84);
                    v87 = v84;
                  }

                  v85 = v87;
                  ++v84;
                }

                while (v84 != 64);
                v88 = v116 + 4 * v87;
                v89 = v88 + 4;
                if (v88 < v116 || v89 > v117 || v88 >= v89)
                {
                  goto LABEL_288;
                }

                v92 = *(v116 + v85) >= 0.0 ? 1.0 : -1.0;
                __A = 0.0;
                vDSP_vfill(&__A, a23, 1, 0x40uLL);
                v93 = &a23[v85];
                v94 = v93 + 1;
                v95 = v93 < a23 || v94 > a24;
                if (v95 || v93 >= v94)
                {
                  goto LABEL_288;
                }

                v97 = v92;
                *v93 = v92;
                __A = 0.0;
                vDSP_vfill(&__A, a25, 1, 0x40uLL);
                if (v85 <= 63)
                {
                  v98 = v85 - 64;
                  v99 = &a25[v85];
                  v100 = a19;
                  while (v100 >= a19 && (v100 + 1) <= a20 && v100 <= v100 + 1 && v99 >= a25 && (v99 + 1) <= a26 && v99 <= v99 + 1)
                  {
                    v101 = *v100++;
                    *v99++ = v101 * v97;
                    v42 = __CFADD__(v98++, 1);
                    if (v42)
                    {
                      goto LABEL_267;
                    }
                  }

                  goto LABEL_288;
                }

LABEL_267:
                v102 = v85 + 64;
                if (v97 <= 0)
                {
                  v102 = v85;
                }

                push_indice(a1, 95, v102, 7);
                v66 = a14;
              }

              else
              {
                acelp_4t64(a1, v116, v117, a16, a17, a19, a20, v65, __C, __src, v108, a23, a24, a25, a26, v83, v107, 0);
              }

              goto LABEL_271;
            }

            goto LABEL_270;
        }
      }

      goto LABEL_191;
    }

    if (a2 <= 16399)
    {
      if (a2 == 8000)
      {
        v70 = 0;
        goto LABEL_193;
      }

      if (a2 != 14800)
      {
        goto LABEL_191;
      }
    }

    else if (a2 != 16400)
    {
      if (a2 == 22600)
      {
        v70 = 14;
        goto LABEL_193;
      }

      if (a2 == 24400)
      {
        v70 = 21;
        goto LABEL_193;
      }

LABEL_191:
      v70 = 70;
      if (a2 != 64000)
      {
        v70 = -7;
      }

      goto LABEL_193;
    }

    v70 = 7;
    goto LABEL_193;
  }

  if (a2 > 15849)
  {
    v66 = a14;
    if (a2 <= 19849)
    {
      if (a2 == 15850)
      {
        HIWORD(v104) = 1;
        LOWORD(v104) = v107;
        v67 = 52;
        goto LABEL_155;
      }

      if (a2 == 18250)
      {
        HIWORD(v104) = 1;
        LOWORD(v104) = v107;
        v67 = 64;
        goto LABEL_155;
      }
    }

    else
    {
      if (a2 == 19850)
      {
        HIWORD(v104) = 1;
        LOWORD(v104) = v107;
        v67 = 72;
        goto LABEL_155;
      }

      if (a2 == 23050 || a2 == 23850)
      {
        HIWORD(v104) = 1;
        LOWORD(v104) = v107;
        v67 = 88;
LABEL_155:
        acelp_4t64(a1, v116, v117, a16, a17, a19, a20, v65, __C, __src, v108, a23, a24, a25, a26, v67, v104, SHIWORD(v104));
        goto LABEL_271;
      }
    }

    goto LABEL_271;
  }

  v66 = a14;
  if (a2 > 12649)
  {
    if (a2 == 12650)
    {
      HIWORD(v104) = 1;
      LOWORD(v104) = v107;
      v67 = 36;
      goto LABEL_155;
    }

    if (a2 == 14250)
    {
      HIWORD(v104) = 1;
      LOWORD(v104) = v107;
      v67 = 44;
      goto LABEL_155;
    }

    goto LABEL_271;
  }

  if (a2 == 6600)
  {
LABEL_270:
    acelp_2t32(a1, v116, v117, a19, a20, a23, a24, v65, a25, a26);
    goto LABEL_271;
  }

  if (a2 == 8850)
  {
    HIWORD(v104) = 1;
    LOWORD(v104) = v107;
    v67 = 20;
    goto LABEL_155;
  }

LABEL_271:
  if ((a15 - v66) < 65 || a15 < v66 || a24 < a23 || (a24 - a23) < 253)
  {
    goto LABEL_288;
  }

  return cb_shape(1, 1, 0, a8, 0, v66, a23, v32, v33, a10, a11);
}

void gain_enc_mless(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, const float *a7, unint64_t a8, float a9, const float *a10, unint64_t a11, const float *a12, unint64_t a13, const float *a14, unint64_t a15, float *a16, unint64_t a17, float *a18, unint64_t a19, float *a20, unint64_t a21, float *a22, unint64_t a23, float *a24, unint64_t a25, __int16 a26)
{
  E_corr_xy2(a7, a8, a10, a11, a12, a13, a24, a25);
  v99 = a24 + 2;
  if (a24 + 2 < a24)
  {
    goto LABEL_202;
  }

  v32 = (a24 + 3);
  if ((a24 + 3) > a25)
  {
    goto LABEL_202;
  }

  if (v99 > v32)
  {
    goto LABEL_202;
  }

  a24[2] = a24[2] + 0.01;
  if (v32 < a24)
  {
    goto LABEL_202;
  }

  v33 = a24 + 4;
  if ((a24 + 4) > a25)
  {
    goto LABEL_202;
  }

  if (v32 > v33)
  {
    goto LABEL_202;
  }

  a24[3] = a24[3] + -0.02;
  if (v33 < a24)
  {
    goto LABEL_202;
  }

  if ((a24 + 5) > a25)
  {
    goto LABEL_202;
  }

  if (v33 > a24 + 5)
  {
    goto LABEL_202;
  }

  *v33 = *v33 + 0.02;
  if (a15 < a14)
  {
    goto LABEL_202;
  }

  if ((a15 - a14) < 253)
  {
    goto LABEL_202;
  }

  __C[0] = NAN;
  vDSP_dotpr(a14, 1, a14, 1, __C, 0x40uLL);
  if ((a20 + 1) > a21 || a20 + 1 < a20)
  {
    goto LABEL_202;
  }

  v34 = (__C[0] + 0.01) * 0.015625;
  *a20 = 1.0 / sqrtf(v34);
  v35 = log10(v34);
  v36 = __exp10((a9 + (v35 * -10.0)) * 0.05);
  if (a3 == 256)
  {
    if (a2 <= 16399)
    {
      if (a2 <= 12149)
      {
        switch(a2)
        {
          case 7200:
            v37 = 0;
LABEL_92:
            if (a4)
            {
              v47 = a4;
            }

            else
            {
              v47 = 3;
            }

            if (a6 < 2)
            {
              v48 = 0;
              goto LABEL_97;
            }

            if (a6 > 63)
            {
              switch(a6)
              {
                case 64:
                  v48 = 4;
                  break;
                case 128:
                  v48 = 5;
                  break;
                case 192:
                  v48 = 6;
                  break;
                default:
                  goto LABEL_197;
              }
            }

            else
            {
              switch(a6)
              {
                case 2:
                  v48 = 1;
                  break;
                case 3:
                  v48 = 2;
                  break;
                case 4:
                  v48 = 3;
                  break;
                default:
LABEL_197:
                  if (a6 == 256)
                  {
                    v48 = 7;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  break;
              }
            }

LABEL_97:
            v49 = (v47 + v37 + v48 - 1) << (2 * (a5 != -1));
            if (a5 == -1)
            {
              v50 = 0;
            }

            else
            {
              v50 = ((a5 + ((a5 >> 25) & 0x3F)) << 16) >> 22;
            }

            v51 = &gain_bits_tbl[v50 + v49];
            if (v51 < gain_bits_tbl || v51 + 1 > &gaus_dico || v51 > v51 + 1)
            {
              goto LABEL_202;
            }

            v46 = *v51;
            if (a5 == 192 && a6 == 192)
            {
              goto LABEL_110;
            }

LABEL_128:
            v64 = &pow2[2 * v46];
            if (v64 < pow2 || v64 + 2 > tbl_mid_voi_wb_1b || v64 > v64 + 2)
            {
              goto LABEL_202;
            }

            v65 = *v64;
            if ((v46 - 5) > 2)
            {
              v68 = &gain_qua_mless_6b;
              v67 = &gain_qua_mless_5b;
              LOWORD(v66) = -14;
            }

            else
            {
              v66 = 0xFFE2FFF2FFFAuLL >> (16 * (v46 - 5));
              v67 = *(&off_1E752F9E0 + (v46 - 5));
              v68 = *(&off_1E752F9F8 + (v46 - 5));
            }

            if (a26 != 1)
            {
              LOWORD(v66) = 0;
            }

            v69 = v66 + v65;
            if (a26 == 2 && v46 == 6)
            {
              v70 = v69 - 36;
            }

            else
            {
              v70 = v69;
            }

            v71 = v70;
            if (v70 >= 1)
            {
              v72 = 0;
              LOWORD(v73) = 0;
              v74 = (v68 + 1);
              v75 = 3.4028e38;
              while (1)
              {
                v76 = v74 - 1 < v68 || v74 > v67;
                v77 = v76 || v74 - 1 > v74;
                v78 = v74 + 1;
                v79 = v77 || v78 > v67;
                if (v79 || v74 > v78)
                {
                  goto LABEL_202;
                }

                v81 = *(v74 - 1);
                v82 = ((((v81 * a24[1]) + ((v81 * v81) * *a24)) + (((*v74 * v36) * (*v74 * v36)) * a24[2])) + ((*v74 * v36) * a24[3])) + ((v81 * (*v74 * v36)) * a24[4]);
                if (v82 < v75)
                {
                  v75 = v82;
                  v72 = v73;
                }

                v73 = (v73 + 1);
                v74 += 2;
                if (v73 >= v71)
                {
                  goto LABEL_159;
                }
              }
            }

            v72 = 0;
LABEL_159:
            v83 = &v68[2 * v72];
            v84 = v83 + 1;
            v86 = v83 < v68 || v84 > v67 || v83 > v84;
            v87 = (a16 + 1);
            if (v86 || v87 > a17 || v87 < a16)
            {
              goto LABEL_202;
            }

            *a16 = *v83;
            v90 = &v68[2 * v72];
            v91 = (v90 + 1);
            v92 = (v90 + 2);
            v93 = v91 < v68 || v92 > v67;
            v94 = v93 || v91 > v92;
            v95 = (a18 + 1);
            v96 = v94 || v95 > a19;
            if (v96 || v95 < a18)
            {
              goto LABEL_202;
            }

            *a18 = *v91 * v36;
            push_indice(a1, 95, v72, v46 - (a26 == 2 && v46 == 6));
            goto LABEL_188;
          case 8000:
            v37 = 10;
            goto LABEL_92;
          case 11600:
            v37 = 20;
            goto LABEL_92;
        }
      }

      else if (a2 > 13199)
      {
        if (a2 == 13200)
        {
          v37 = 50;
          goto LABEL_92;
        }

        if (a2 == 14800)
        {
          v37 = 60;
          goto LABEL_92;
        }
      }

      else
      {
        if (a2 == 12150)
        {
          v37 = 30;
          goto LABEL_92;
        }

        if (a2 == 12850)
        {
          v37 = 40;
          goto LABEL_92;
        }
      }
    }

    else if (a2 > 29199)
    {
      if (a2 > 30399)
      {
        if (a2 == 30400)
        {
          v37 = 130;
          goto LABEL_92;
        }

        if (a2 == 32000)
        {
          v37 = 140;
          goto LABEL_92;
        }
      }

      else
      {
        if (a2 == 29200)
        {
          v37 = 110;
          goto LABEL_92;
        }

        if (a2 == 30200)
        {
          v37 = 120;
          goto LABEL_92;
        }
      }
    }

    else if (a2 > 24399)
    {
      if (a2 == 24400)
      {
        v37 = 90;
        goto LABEL_92;
      }

      if (a2 == 29000)
      {
        v37 = 100;
        goto LABEL_92;
      }
    }

    else
    {
      if (a2 == 16400)
      {
        v37 = 70;
        goto LABEL_92;
      }

      if (a2 == 22600)
      {
        v37 = 80;
        goto LABEL_92;
      }
    }

    v37 = -10;
    goto LABEL_92;
  }

  v38 = 5;
  if (a5 < 0)
  {
    v38 = 1;
  }

  if (a2 > 28999)
  {
    if (a2 <= 30199)
    {
      if (a2 == 29000)
      {
        v39 = 28;
        goto LABEL_68;
      }

      if (a2 == 29200)
      {
        v39 = 35;
        goto LABEL_68;
      }
    }

    else
    {
      switch(a2)
      {
        case 30200:
          v39 = 42;
          goto LABEL_68;
        case 30400:
          v39 = 49;
          goto LABEL_68;
        case 32000:
          v39 = 56;
          goto LABEL_68;
      }
    }
  }

  else
  {
    if (a2 > 16399)
    {
      if (a2 != 16400)
      {
        if (a2 == 22600)
        {
          v39 = 14;
          goto LABEL_68;
        }

        if (a2 == 24400)
        {
          v39 = 21;
          goto LABEL_68;
        }

        goto LABEL_67;
      }

LABEL_45:
      v39 = 7;
      goto LABEL_68;
    }

    if (a2 == 8000)
    {
      v39 = 0;
      goto LABEL_68;
    }

    if (a2 == 14800)
    {
      goto LABEL_45;
    }
  }

LABEL_67:
  v39 = -7;
LABEL_68:
  v40 = a4 == 3;
  if (a4 == 4)
  {
    v40 = 2;
  }

  v41 = v39 + v40;
  if ((a6 >> 6) & 0xFFFC | (a6 << 10))
  {
    v42 = 4 * (a6 == 256);
  }

  else
  {
    v42 = ((a6 >> 6) | (a6 << 10));
  }

  v43 = (v41 + v42) * v38;
  if (a5 == -1)
  {
    v44 = 0;
  }

  else
  {
    v44 = (a5 + ((a5 >> 25) & 0x3F)) >> 6;
  }

  v45 = &gain_bits_16kHz_tbl[v44 + v43];
  if (v45 < gain_bits_16kHz_tbl || v45 + 1 > &word_19B3773F2 || v45 > v45 + 1)
  {
    goto LABEL_202;
  }

  v46 = *v45;
  if (a5 != 256 || a3 != 320 || a6 != 256)
  {
    goto LABEL_128;
  }

LABEL_110:
  if ((a24 + 1) > a25)
  {
    goto LABEL_202;
  }

  if (v99 > a25)
  {
    goto LABEL_202;
  }

  if ((a16 + 1) > a17)
  {
    goto LABEL_202;
  }

  if (a16 + 1 < a16)
  {
    goto LABEL_202;
  }

  v52 = (*v33 * (*v33 * -0.25)) + (*a24 * *v99);
  v53 = (a24[1] * -0.5) / v52;
  v54 = (a24[3] * -0.5) / v52;
  *a16 = ((*v33 * -0.5) * v54) + (*v99 * v53);
  if ((a18 + 1) > a19 || a18 + 1 < a18)
  {
    goto LABEL_202;
  }

  *a18 = (v53 * (a24[4] * -0.5)) + (*a24 * v54);
  v55 = *a16;
  v56 = 0.95;
  v57 = *a16 >= 0.95 || *a16 < 0.1;
  if (*a16 < 0.95 && *a16 < 0.1)
  {
    v56 = 0.1;
  }

  if (v57)
  {
    v55 = v56;
  }

  v58 = v46 + 1;
  v59 = v46 >> 1;
  v60 = 0.85 / ~(-1 << v59);
  v61 = ((v55 + -0.1) / v60) + 0.5;
  if (v61 > ((0x10000 << v59 >> 16) - 1))
  {
    v61 = ((0x10000 << v59 >> 16) - 1);
  }

  if (v61 < 0.0)
  {
    v61 = 0.0;
  }

  *a16 = (v61 * v60) + 0.1;
  push_indice(a1, 95, v61, v59);
  *a18 = *a18 / v36;
  v62 = v58 >> 1;
  v63 = gain_quant(a18, v62, 0.6, 41.0);
  push_indice(a1, 95, v63, v62);
  *a18 = *a18 * v36;
LABEL_188:
  if ((a22 + 1) <= a23 && a22 + 1 >= a22)
  {
    *a22 = *a18 / *a20;
    return;
  }

LABEL_202:
  __break(0x5519u);
}

uint64_t acelp_2t32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v151 = v10;
  v159[1] = *MEMORY[0x1E69E9840];
  *&v23 = -1;
  *(&v23 + 1) = -1;
  v158[14] = v23;
  v158[15] = v23;
  v158[12] = v23;
  v158[13] = v23;
  v158[10] = v23;
  v158[11] = v23;
  v158[8] = v23;
  v158[9] = v23;
  v158[6] = v23;
  v158[7] = v23;
  v158[4] = v23;
  v158[5] = v23;
  v158[2] = v23;
  v158[3] = v23;
  v158[0] = v23;
  v158[1] = v23;
  v157[14] = v23;
  v157[15] = v23;
  v157[12] = v23;
  v157[13] = v23;
  v157[10] = v23;
  v157[11] = v23;
  v157[8] = v23;
  v157[9] = v23;
  v157[6] = v23;
  v157[7] = v23;
  v157[4] = v23;
  v157[5] = v23;
  v157[2] = v23;
  v157[3] = v23;
  v157[0] = v23;
  v157[1] = v23;
  v155[6] = v23;
  v156 = v23;
  v155[4] = v23;
  v155[5] = v23;
  v155[2] = v23;
  v155[3] = v23;
  v155[0] = v23;
  v155[1] = v23;
  v154[6] = v23;
  v154[7] = v23;
  v154[4] = v23;
  v154[5] = v23;
  v154[2] = v23;
  v154[3] = v23;
  v154[0] = v23;
  v154[1] = v23;
  memset(__b, 255, sizeof(__b));
  v24 = 0;
  v25 = 0;
  v26 = (v18 + 4);
  v27 = 0.0;
  do
  {
    v28 = v26 - 1;
    if ((v26 - 1) < v18)
    {
      goto LABEL_208;
    }

    if (v26 > v16)
    {
      goto LABEL_208;
    }

    if (v28 > v26)
    {
      goto LABEL_208;
    }

    if ((v157 + v24) > v157)
    {
      goto LABEL_208;
    }

    v29 = v154 + v24;
    v30 = (&v156 + v24 + 12);
    if (&v156 + v24 + 12 > v157 + v24)
    {
      goto LABEL_208;
    }

    if (v30 < v155)
    {
      goto LABEL_208;
    }

    v31 = v27 + (*v28 * *v28);
    *v30 = v31;
    if ((v26 + 1) > v16)
    {
      goto LABEL_208;
    }

    if (v26 > v26 + 1)
    {
      goto LABEL_208;
    }

    v32 = (v29 + 124);
    if (v29 + 124 < v154)
    {
      goto LABEL_208;
    }

    v33 = (&v154[8] + v24);
    if (v33 > v155 || v32 > v33)
    {
      goto LABEL_208;
    }

    v34 = *v26;
    v26 += 2;
    v27 = v31 + (v34 * v34);
    *v32 = v27;
    v24 -= 4;
    v64 = v25++ >= 0x1F;
  }

  while (!v64);
  v35 = 0;
  v36 = v154;
  do
  {
    *v36 = *v36 * 0.5;
    v36[32] = v36[32] * 0.5;
    ++v36;
    v64 = v35++ >= 0x1F;
  }

  while (!v64);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = (v18 + 4);
  v42 = 1023;
  do
  {
    if (v40 > 0x1E)
    {
      v58 = &__b[v42];
      v43 = 0.0;
      v59 = v41;
      v54 = v18;
    }

    else
    {
      v43 = 0.0;
      v44 = v38;
      v45 = v39;
      v46 = v40 + 1;
      v47 = v18;
      do
      {
        if (v47 < v18)
        {
          goto LABEL_208;
        }

        v48 = v47 + 1;
        if ((v47 + 1) > v16)
        {
          goto LABEL_208;
        }

        if (v47 > v48)
        {
          goto LABEL_208;
        }

        v49 = &v48[v37];
        if (&v48[v37] < v18)
        {
          goto LABEL_208;
        }

        v50 = &v47[v37 + 2];
        if (v50 > v16)
        {
          goto LABEL_208;
        }

        if (v49 > v50)
        {
          goto LABEL_208;
        }

        v51 = (&__b[1023] + v44);
        if (v51 < __b)
        {
          goto LABEL_208;
        }

        v52 = (&__b[1024] + v44);
        if (v52 > v154)
        {
          goto LABEL_208;
        }

        if (v51 > v52)
        {
          goto LABEL_208;
        }

        v53 = v43 + (*v47 * *v49);
        *v51 = v53;
        v54 = v47 + 2;
        if ((v47 + 2) > v16)
        {
          goto LABEL_208;
        }

        if (v48 > v54)
        {
          goto LABEL_208;
        }

        v55 = &v47[v37 + 3];
        if (v55 > v16)
        {
          goto LABEL_208;
        }

        if (v50 > v55)
        {
          goto LABEL_208;
        }

        v56 = (&__b[1022] + v45);
        if (v56 < __b)
        {
          goto LABEL_208;
        }

        v57 = (&__b[1023] + v45);
        if (v57 > v154 || v56 > v57)
        {
          goto LABEL_208;
        }

        v43 = v53 + (*v48 * *v50);
        *v56 = v43;
        v45 -= 132;
        v44 -= 132;
        v47 = v54;
        v64 = v46++ >= 0x1F;
      }

      while (!v64);
      v58 = (&__b[1023] + v44);
      v59 = &v54[v37 + 1];
    }

    if (v54 < v18 || (v54 + 1) > v16 || v54 > v54 + 1 || v59 < v18 || (v59 + 1) > v16 || v59 > v59 + 1 || v58 < __b || v58 + 1 > v154 || v58 > v58 + 1)
    {
      goto LABEL_208;
    }

    v42 -= 32;
    v41 += 2;
    v39 -= 4;
    *v58 = v43 + (*v54 * *v59);
    v38 -= 128;
    v37 += 2;
    v64 = v40++ >= 0x1F;
  }

  while (!v64);
  v60 = 0;
  v61 = 0;
  v62 = (v22 + 248);
  v64 = v22 + 252 <= v20 && v62 <= v22 + 252 && v62 >= v22;
  v65 = v64;
  v66 = (v22 + 4);
  v69 = v22 + 8 > v20 || v66 > v22 + 8 || v66 < v22;
  do
  {
    if (v61 == 63)
    {
      if (!v65)
      {
        goto LABEL_208;
      }

      v77 = (v22 + v60);
      if (v22 + v60 < v22 || (v77 + 1) > v20 || v77 > v77 + 1)
      {
        goto LABEL_208;
      }

      v76 = *v62;
      v75 = *v77;
LABEL_88:
      v78 = v75 + (v76 * -0.35);
      goto LABEL_97;
    }

    if (!v61)
    {
      v70 = (v22 + v60);
      v71 = v22 + v60 + 4;
      v74 = v71 > v20 || v70 > v71 || v70 < v22 || v69;
      if (v74)
      {
        goto LABEL_208;
      }

      v75 = *v70;
      v76 = *v66;
      goto LABEL_88;
    }

    v79 = (v22 + v60);
    v80 = v22 + v60 - 4;
    if (v80 < v22)
    {
      goto LABEL_208;
    }

    if (v79 > v20)
    {
      goto LABEL_208;
    }

    if (v80 > v79)
    {
      goto LABEL_208;
    }

    v81 = (v22 + v60 + 4);
    if (v81 > v20)
    {
      goto LABEL_208;
    }

    if (v79 > v81)
    {
      goto LABEL_208;
    }

    v82 = v22 + v60 + 8;
    if (v82 > v20 || v81 > v82)
    {
      goto LABEL_208;
    }

    v75 = *v79;
    v78 = (*v79 - (*(v79 - 1) * 0.35)) - (*v81 * 0.35);
LABEL_97:
    if (v78 >= 0.0)
    {
      v83 = 1.0;
    }

    else
    {
      v83 = -1.0;
    }

    *(v158 + v60) = v83;
    if (v22 + v60 < v22)
    {
      goto LABEL_208;
    }

    *(v157 + v60) = v75 * v83;
    ++v61;
    v60 += 4;
  }

  while (v60 != 256);
  v84 = 0;
  v85 = 0;
  v86 = 0;
  do
  {
    v87 = v158 + v85;
    v88 = v87 + 1;
    if (v87 < v158 || v88 > v159 || v87 > v88)
    {
      goto LABEL_208;
    }

    v91 = 0;
    v92 = v84;
    do
    {
      v93 = (v158 + v91 + 4);
      v94 = (v158 + v91 + 8);
      v96 = v93 < v158 || v94 > v159 || v93 > v94;
      v97 = (__b + v92);
      v98 = (&__b[1] + v92);
      if (v96 || v97 < __b || v98 > v154 || v97 > v98)
      {
        goto LABEL_208;
      }

      *(__b + v92) = *(__b + v92) * (*v87 * *v93);
      v91 += 8;
      v92 += 4;
    }

    while (v91 != 256);
    v85 += 2;
    v84 += 128;
    v64 = v86++ >= 0x1F;
  }

  while (!v64);
  v102 = 0;
  LOWORD(v103) = 0;
  v104 = __b;
  v105 = 1.0;
  v106 = -1.0;
  LOWORD(v107) = 1;
  v108 = v154;
  do
  {
    v109 = v157 + v102;
    v110 = v109 + 1;
    if (v109 < v157 || v110 > v158 || v109 > v110)
    {
      goto LABEL_208;
    }

    v113 = 0;
    v114 = *v109;
    v115 = *v108++;
    v116 = v115;
    v117 = v104 + 32;
    v118 = -1;
    v119 = 1;
    do
    {
      if ((v155 + v113 * 4 + 4) > v157 || &v104[v113 + 1] > v154)
      {
        goto LABEL_208;
      }

      if (((v105 * ((v114 + *(v157 + v119)) * (v114 + *(v157 + v119)))) - (v106 * ((v116 + *(&v154[8] + v113 * 4)) + v104[v113]))) > 0.0)
      {
        v105 = (v116 + *(&v154[8] + v113 * 4)) + v104[v113];
        v106 = (v114 + *(v157 + v119)) * (v114 + *(v157 + v119));
        v118 = v119;
      }

      ++v113;
      v64 = v119 >= 0x3E;
      v119 += 2;
    }

    while (!v64);
    if (v118 < 0)
    {
      v121 = v107;
    }

    else
    {
      v121 = v118;
    }

    v107 = v121;
    if (v118 < 0)
    {
      v122 = v103;
    }

    else
    {
      v122 = v102;
    }

    v103 = v122;
    v104 = v117;
    v64 = v102 >= 0x3E;
    v102 += 2;
  }

  while (!v64);
  v123 = v158 + v103;
  v124 = v123 + 1;
  v126 = v123 < v158 || v124 > v159 || v123 > v124;
  if (v126 || ((v127 = v158 + v107, v128 = v127 + 1, v127 >= v158) ? (v129 = v128 > v159) : (v129 = 1), !v129 ? (v130 = v127 > v128) : (v130 = 1), v130 || ((v131 = *v123, v132 = *v127, __A = 0.0, vDSP_vfill(&__A, v14, 1, 0x40uLL), v133 = &v14[v103], v134 = v133 + 1, v133 >= v14) ? (v135 = v134 > v12) : (v135 = 1), !v135 ? (v136 = v133 > v134) : (v136 = 1), v136 || ((*v133 = v131, v137 = &v14[v107], v138 = v137 + 1, v137 >= v14) ? (v139 = v138 > v12) : (v139 = 1), !v139 ? (v140 = v137 > v138) : (v140 = 1), v140))))
  {
LABEL_208:
    __break(0x5519u);
  }

  *v137 = v132;
  __A = 0.0;
  vDSP_vfill(&__A, a9, 1, 0x40uLL);
  if (v103 <= 63)
  {
    v141 = v103 - 64;
    v142 = &a9[v103];
    v143 = v18;
    while (v143 >= v18 && (v143 + 1) <= v16 && v143 <= v143 + 1 && v142 >= a9 && (v142 + 1) <= a10 && v142 <= v142 + 1)
    {
      v144 = *v143++;
      *v142++ = v131 * v144;
      v64 = __CFADD__(v141++, 1);
      if (v64)
      {
        goto LABEL_193;
      }
    }

    goto LABEL_208;
  }

LABEL_193:
  if (v107 <= 63)
  {
    v145 = v107 - 64;
    v146 = &a9[v107];
    v147 = v18;
    while (v147 >= v18 && (v147 + 1) <= v16 && v147 <= v147 + 1 && v146 >= a9 && (v146 + 1) <= a10 && v146 <= v146 + 1)
    {
      v148 = *v147++;
      *v146 = *v146 + (v132 * v148);
      ++v146;
      v64 = __CFADD__(v145++, 1);
      if (v64)
      {
        goto LABEL_203;
      }
    }

    goto LABEL_208;
  }

LABEL_203:
  v149 = ((32 * (v103 + ((v103 & 0x8000) >> 15))) & 0xFFFFFFC0) + ((v107 + ((v107 & 0x8000) >> 15)) >> 1);
  if (v131 < 0.0)
  {
    LOWORD(v149) = v149 + 2048;
  }

  if (v132 < 0.0)
  {
    LOWORD(v149) = v149 + 32;
  }

  return push_indice(v151, 95, v149, 12);
}

void acelp_4t64(uint64_t a1, float *a2, unint64_t a3, float *a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, int *a9, unint64_t a10, __int16 a11, float *a12, unint64_t a13, float *a14, unint64_t a15, __int16 a16, __int16 a17, __int16 a18)
{
  v92[1] = *MEMORY[0x1E69E9840];
  *v85 = xmmword_19B38C794;
  memset(&v85[16], 170, 56);
  memset(v86, 170, sizeof(v86));
  if (a16 <= 51)
  {
    if (a16 <= 42)
    {
      if (a16 == 20)
      {
        *&v85[4] = 0x4000000000000004;
        *&v85[12] = 4;
        v22 = &v85[24];
        *&v85[20] = 4;
      }

      else
      {
        if (a16 == 28)
        {
          *&v85[4] = 0x3F80000000000004;
          v21 = xmmword_19B0B31E0;
        }

        else
        {
          if (a16 != 36)
          {
            goto LABEL_27;
          }

          *&v85[4] = 0x3F80000000000004;
          v21 = xmmword_19B0B31D0;
        }

        *&v85[12] = v21;
        v22 = &v85[28];
      }

      goto LABEL_26;
    }

    if ((a16 - 43) < 2)
    {
      *&v85[4] = 0x3F80000000000004;
      v23 = xmmword_19B0B31C0;
LABEL_20:
      *&v85[12] = v23;
      *&v85[28] = 8;
      v22 = &v85[32];
      goto LABEL_26;
    }

    if (a16 != 50)
    {
      goto LABEL_27;
    }

LABEL_19:
    *&v85[4] = 0x3F80000000000004;
    v23 = xmmword_19B0B31B0;
    goto LABEL_20;
  }

  if (a16 > 71)
  {
    switch(a16)
    {
      case 'H':
        *&v85[4] = 0x3F40000000000003;
        *&v85[12] = xmmword_19B0B3190;
        *&v85[28] = xmmword_19B0B20C0;
        v22 = &v85[44];
        break;
      case 'W':
        *&v85[4] = 0x3F00000000000001;
        *&v85[12] = xmmword_19B0B3150;
        *&v85[28] = xmmword_19B0B3160;
        *&v24 = 0x800000008;
        *(&v24 + 1) = 0x800000008;
        *&v85[44] = v24;
        v22 = &v85[60];
        break;
      case 'X':
        *&v85[4] = 0x3F00000000000002;
        *&v85[12] = xmmword_19B0B3170;
        *&v85[28] = xmmword_19B0B3180;
        *&v85[44] = 0x800000007;
        *&v85[52] = 8;
        v22 = &v85[56];
        break;
      default:
        goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a16 == 52)
  {
    goto LABEL_19;
  }

  if (a16 == 62 || a16 == 64)
  {
    *&v85[4] = 0x3F4CCCCD00000003;
    *&v85[12] = xmmword_19B0B31A0;
    *&v85[28] = 0x600000006;
    *&v85[36] = 8;
    v22 = &v85[40];
LABEL_26:
    *v22 = 8;
  }

LABEL_27:
  if (a17 >= 1)
  {
    *&v85[4] = a17;
  }

  v91 = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90[3] = v25;
  v90[4] = v25;
  v90[1] = v25;
  v90[2] = v25;
  v89 = v25;
  v90[0] = v25;
  v87 = v25;
  v88 = v25;
  *&v85[72] = 0;
  *v85 = a16;
  if (a11)
  {
    E_ACELP_4tsearchx(a2, a3, a4, a5, a9, a10, a12, a13, v85, &v87, v92);
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, a14, 1, 0x40uLL);
    v26 = 0;
    while (1)
    {
      v27 = &a12[v26];
      v28 = v27 + 1;
      if (v27 < a12 || v28 > a13 || v27 > v28)
      {
        goto LABEL_116;
      }

      if (*v27 != 0.0)
      {
        break;
      }

LABEL_57:
      v39 = v26 >= 0x3F;
      v26 = (v26 + 1);
      if (v39)
      {
        goto LABEL_61;
      }
    }

    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = (a6 + 4 * v32);
      v34 = v33 + 1;
      v35 = v33 < a6 || v34 > a7;
      v36 = v35 || v33 > v34;
      v37 = &a14[v31 + v26];
      v38 = v37 + 1;
      v39 = !v36 && v37 >= a14;
      v40 = !v39 || v38 > a15;
      if (v40 || v37 > v38)
      {
        break;
      }

      *v37 = *v37 + (*v27 * *v33);
      v31 = ++v32;
      if ((64 - v26) <= v32)
      {
        goto LABEL_57;
      }
    }

LABEL_116:
    __break(0x5519u);
  }

  E_ACELP_4tsearch(a2, a3, a4, a5, a6, a7, a12, a13, v85, &v87, v92, a14, a15);
LABEL_61:
  if (!a18)
  {
    __A[2] = *&v85[32];
    v84[0] = *&v85[48];
    *(v84 + 12) = *&v85[60];
    __A[0] = *v85;
    __A[1] = *&v85[16];
    E_ACELP_indexing(a12, a13, __A, v86, &v87);
    if (a16 >> 4 < 1)
    {
      v53 = 0;
    }

    else
    {
      v48 = 0;
      do
      {
        v49 = v86 + 2 * v48;
        v50 = v49 + 2;
        if (v49 < v86 || v50 > &v87 || v49 > v50)
        {
          goto LABEL_116;
        }

        push_indice(a1, 95, *v49, 16);
        ++v48;
      }

      while (a16 >> 4 > v48);
      v53 = v48;
    }

    v65 = a16 & 0xF;
    if ((a16 & 0xF) == 0)
    {
      return;
    }

    v66 = v86 + 2 * v53;
    if (v66 < v86 || v66 + 2 > &v87 || v66 > v66 + 2)
    {
      goto LABEL_116;
    }

    v67 = *v66;
    v68 = a1;
LABEL_112:
    push_indice(v68, 95, v67, v65);
    return;
  }

  if (a16 <= 51)
  {
    switch(a16)
    {
      case 20:
        for (i = 0; i != 72; i += 18)
        {
          push_indice(a1, 95, *(&v87 + i) & 0x1F, 5);
        }

        break;
      case 36:
        v80 = &v87 + 1;
        v81 = 4;
        do
        {
          v82 = quant_2p_2N1(*(v80 - 1), *v80, 4);
          push_indice(a1, 95, v82, 9);
          v80 += 9;
          --v81;
        }

        while (v81);
        break;
      case 44:
        v54 = quant_3p_3N1(v87, SWORD1(v87), SWORD2(v87), 4);
        push_indice(a1, 95, v54, 13);
        v55 = quant_3p_3N1(SWORD1(v88), SWORD2(v88), SWORD3(v88), 4);
        push_indice(a1, 95, v55, 13);
        v56 = &v89 + 3;
        v57 = 2;
        do
        {
          v58 = quant_2p_2N1(*(v56 - 1), *v56, 4);
          push_indice(a1, 95, v58, 9);
          v56 += 9;
          --v57;
        }

        while (v57);
        break;
    }

    return;
  }

  if (a16 <= 71)
  {
    if (a16 == 52)
    {
      v70 = &v87 + 2;
      v71 = 4;
      do
      {
        v72 = quant_3p_3N1(*(v70 - 2), *(v70 - 1), *v70, 4);
        push_indice(a1, 95, v72, 13);
        v70 += 9;
        --v71;
      }

      while (v71);
    }

    else if (a16 == 64)
    {
      for (j = 0; j != 72; j += 18)
      {
        if ((&v87 + j) < &v87)
        {
          goto LABEL_116;
        }

        v43 = quant_4p_4N((&v87 + j), v92, 4);
        push_indice(a1, 95, v43 >> 14, 2);
      }

      v44 = 4;
      v45 = &v87;
      v46 = &v87;
      while (v45 >= &v87)
      {
        v47 = quant_4p_4N(v46, v92, 4);
        push_indice(a1, 95, v47 & 0x3FFF, 14);
        v46 += 9;
        v45 = (v45 + 18);
        if (!--v44)
        {
          return;
        }
      }

      goto LABEL_116;
    }

    return;
  }

  if (a16 == 72)
  {
    v73 = quant_5p_5N(&v87, v92, 4);
    push_indice(a1, 95, (v73 >> 10) & 0x3FF, 10);
    v74 = quant_5p_5N(&v88 + 1, v92, 4);
    push_indice(a1, 95, (v74 >> 10) & 0x3FF, 10);
    v75 = quant_4p_4N(&v89 + 2, v92, 4);
    push_indice(a1, 95, v75 >> 14, 2);
    v76 = quant_4p_4N(v90 + 3, v92, 4);
    push_indice(a1, 95, v76 >> 14, 2);
    v77 = quant_5p_5N(&v87, v92, 4);
    push_indice(a1, 95, v77 & 0x3FF, 10);
    v78 = quant_5p_5N(&v88 + 1, v92, 4);
    push_indice(a1, 95, v78 & 0x3FF, 10);
    v79 = quant_4p_4N(&v89 + 2, v92, 4);
    push_indice(a1, 95, v79 & 0x3FFF, 14);
    v67 = quant_4p_4N(v90 + 3, v92, 4) & 0x3FFF;
    v68 = a1;
    v65 = 14;
    goto LABEL_112;
  }

  if (a16 == 88)
  {
    for (k = 0; k != 72; k += 18)
    {
      if ((&v87 + k) < &v87)
      {
        goto LABEL_116;
      }

      v60 = quant_6p_6N_2((&v87 + k), v92);
      push_indice(a1, 95, (v60 >> 11) & 0x7FF, 11);
    }

    v61 = 4;
    v62 = &v87;
    v63 = &v87;
    while (v62 >= &v87)
    {
      v64 = quant_6p_6N_2(v63, v92);
      push_indice(a1, 95, v64 & 0x7FF, 11);
      v63 = (v63 + 18);
      v62 = (v62 + 18);
      if (!--v61)
      {
        return;
      }
    }

    goto LABEL_116;
  }
}

uint64_t quant_3p_3N1(__int16 a1, __int16 a2, __int16 a3, char a4)
{
  v7 = a1;
  v8 = a4 - 1;
  v9 = 1 << (a4 - 1);
  v10 = 1 << a4;
  v11 = (1 << a4) - 1;
  if ((v9 & (a2 ^ a1)) != 0)
  {
    v12 = 2 * a4;
    if (((a3 ^ a1) & v9) != 0)
    {
      v13 = quant_2p_2N1(a2, a3, v8);
      v14 = ((v11 & v7) + (v10 & ((v7 << 11) >> 15))) << v12;
      v7 = a2;
    }

    else
    {
      v13 = quant_2p_2N1(a1, a3, v8);
      v14 = ((v11 & a2) + (v10 & ((a2 << 11) >> 15))) << v12;
    }
  }

  else
  {
    v13 = quant_2p_2N1(a1, a2, a4 - 1);
    v14 = ((v11 & a3) + (v10 & ((a3 << 11) >> 15))) << (2 * a4);
  }

  return (v14 + ((v9 & v7) << a4) + v13);
}

uint64_t quant_4p_4N(__int16 *a1, unint64_t a2, char a3)
{
  v3 = 0;
  v4 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v5 = a3 - 1;
  v6 = (1 << (a3 - 1));
  v7 = 4;
  v8 = a1;
  do
  {
    if (v8 < a1 || (v8 + 1) > a2 || v8 > v8 + 1)
    {
LABEL_27:
      __break(0x5519u);
    }

    v9 = *v8;
    if ((v9 & v6) != 0)
    {
      v10 = &v17 + 2 * v4;
      if (v10 < &v17 || v10 + 2 > &v18 || v10 > v10 + 2)
      {
        goto LABEL_27;
      }

      ++v4;
    }

    else
    {
      v10 = &v18 + 2 * v3;
      if (v10 < &v18 || v10 + 2 > &v19 || v10 > v10 + 2)
      {
        goto LABEL_27;
      }

      ++v3;
    }

    *v10 = v9;
    ++v8;
    --v7;
  }

  while (v7);
  v11 = 0;
  v12 = 4 * a3;
  if (v3 <= 1u)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v13 = ((v6 & ((v18 << 11) >> 15)) + (v18 & (v6 - 1))) << (3 * v5 + 1);
        v11 = v13 + quant_3p_3N1(v17, SWORD1(v17), SWORD2(v17), v5);
      }
    }

    else
    {
      v11 = quant_4p_4N1(v17, SWORD1(v17), SWORD2(v17), SHIWORD(v17), v5) + (1 << (v12 - 3));
    }
  }

  else
  {
    switch(v3)
    {
      case 2u:
        v14 = a3 - 1;
        v15 = quant_2p_2N1(v18, SWORD1(v18), v5) << ((2 * v5) | 1);
        v11 = v15 + quant_2p_2N1(v17, SWORD1(v17), v14);
        break;
      case 3u:
        v11 = (quant_3p_3N1(v18, SWORD1(v18), SWORD2(v18), v5) << a3) + ((v6 & ((v17 << 11) >> 15)) + (v17 & (v6 - 1)));
        break;
      case 4u:
        v11 = quant_4p_4N1(v18, SWORD1(v18), SWORD2(v18), SHIWORD(v18), v5);
        break;
    }
  }

  return v11 + ((v3 & 3) << (v12 - 2));
}

uint64_t quant_5p_5N(unsigned __int16 *a1, unint64_t a2, char a3)
{
  v4 = 0;
  v5 = 0;
  *&v21[6] = *MEMORY[0x1E69E9840];
  v20 = -21846;
  v6 = a3 - 1;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 1 << (a3 - 1);
  v17 = -21846;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 5;
  v9 = a1;
  do
  {
    if (v9 < a1 || (v9 + 1) > a2 || v9 > v9 + 1)
    {
LABEL_29:
      __break(0x5519u);
    }

    v10 = *v9;
    if ((v7 & v10) != 0)
    {
      v11 = &v16 + 2 * v5;
      if (v11 < &v16 || v11 + 2 > v18 || v11 > v11 + 2)
      {
        goto LABEL_29;
      }

      ++v5;
    }

    else
    {
      v11 = &v19 + 2 * v4;
      if (v11 < &v19 || v11 + 2 > v21 || v11 > v11 + 2)
      {
        goto LABEL_29;
      }

      ++v4;
    }

    *v11 = v10;
    ++v9;
    --v8;
  }

  while (v8);
  result = 0;
  if (v4 > 2u)
  {
    switch(v4)
    {
      case 3u:
        v13 = quant_3p_3N1(v19, SWORD1(v19), SWORD2(v19), v6) << ((2 * a3) | 1);
        v14 = v16;
        v15 = SWORD1(v16);
        break;
      case 4u:
        v13 = quant_3p_3N1(v19, SWORD1(v19), SWORD2(v19), v6) << ((2 * a3) | 1);
        v14 = SHIWORD(v19);
        v15 = v16;
        break;
      case 5u:
        v13 = quant_3p_3N1(v19, SWORD1(v19), SWORD2(v19), v6) << ((2 * a3) | 1);
        v14 = SHIWORD(v19);
        v15 = v20;
        break;
      default:
        return result;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v13 = (quant_3p_3N1(v16, SWORD1(v16), SWORD2(v16), v6) << ((2 * a3) | 1)) + (1 << (5 * a3 - 1));
      v14 = SHIWORD(v16);
      v15 = v19;
    }

    else
    {
      v13 = (quant_3p_3N1(v16, SWORD1(v16), SWORD2(v16), v6) << ((2 * a3) | 1)) + (1 << (5 * a3 - 1));
      v14 = v19;
      v15 = SWORD1(v19);
    }
  }

  else
  {
    v13 = (quant_3p_3N1(v16, SWORD1(v16), SWORD2(v16), v6) << ((2 * a3) | 1)) + (1 << (5 * a3 - 1));
    v14 = SHIWORD(v16);
    v15 = v17;
  }

  return v13 + quant_2p_2N1(v14, v15, a3);
}

unint64_t quant_6p_6N_2(_WORD *a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  *&v21[4] = *MEMORY[0x1E69E9840];
  v20 = -1431655766;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v17 = -1431655766;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 6;
  v5 = a1;
  do
  {
    if (v5 < a1 || (v5 + 1) > a2 || v5 > v5 + 1)
    {
LABEL_34:
      __break(0x5519u);
    }

    if ((*v5 & 8) != 0)
    {
      v6 = &v16 + 2 * v3;
      if (v6 < &v16 || v6 + 2 > v18 || v6 > v6 + 2)
      {
        goto LABEL_34;
      }

      ++v3;
    }

    else
    {
      v6 = &v19 + 2 * v2;
      if (v6 < &v19 || v6 + 2 > v21 || v6 > v6 + 2)
      {
        goto LABEL_34;
      }

      ++v2;
    }

    *v6 = *v5++;
    --v4;
  }

  while (v4);
  v7 = 0;
  if (v2 > 2u)
  {
    if (v2 <= 4u)
    {
      if (v2 == 3)
      {
        LOBYTE(v2) = 3;
        v12 = quant_3p_3N1(v19, SWORD1(v19), SWORD2(v19), 3) << 10;
        v7 = v12 + quant_3p_3N1(v16, SWORD1(v16), SWORD2(v16), 3);
        return v7 + ((v2 & 3) << 20);
      }

      if (v2 == 4)
      {
        v8 = quant_4p_4N(&v19, v21, 3) << 7;
        v7 = v8 + quant_2p_2N1(v16, SWORD1(v16), 3);
LABEL_24:
        LOBYTE(v2) = 2;
        return v7 + ((v2 & 3) << 20);
      }

      return v7 + ((v2 & 3) << 20);
    }

    if (v2 != 5)
    {
      if (v2 == 6)
      {
        v10 = quant_5p_5N(&v19, v21, 3);
        LOBYTE(v2) = 0;
        v7 = BYTE2(v20) & 7 | (8 * ((HIWORD(v20) >> 4) & 1)) | (16 * v10);
      }

      return v7 + ((v2 & 3) << 20);
    }

    v13 = quant_5p_5N(&v19, v21, 3);
    v7 = v16 & 7 | (8 * ((v16 >> 4) & 1)) | (16 * v13);
LABEL_32:
    LOBYTE(v2) = 1;
    return v7 + ((v2 & 3) << 20);
  }

  switch(v2)
  {
    case 0u:
      v11 = quant_5p_5N(&v16, v18, 3);
      LOBYTE(v2) = 0;
      v7 = (BYTE2(v17) & 7 | (8 * ((HIWORD(v17) >> 4) & 1)) | (16 * v11)) + 0x80000;
      return v7 + ((v2 & 3) << 20);
    case 1u:
      v14 = quant_5p_5N(&v16, v18, 3);
      v7 = (v19 & 7 | (8 * ((v19 >> 4) & 1)) | (16 * v14)) + 0x80000;
      goto LABEL_32;
    case 2u:
      v9 = quant_4p_4N(&v16, v18, 3) << 7;
      v7 = v9 + quant_2p_2N1(v19, SWORD1(v19), 3) + 0x80000;
      goto LABEL_24;
  }

  return v7 + ((v2 & 3) << 20);
}

uint64_t quant_4p_4N1(int a1, int a2, int a3, int a4, char a5)
{
  v10 = a5 - 1;
  v11 = (1 << (a5 - 1));
  if ((v11 & (a2 ^ a1)) != 0)
  {
    v12 = 2 * a5;
    if ((v11 & (a3 ^ a1)) != 0)
    {
      v13 = ((v11 & a2) << a5) + quant_2p_2N1(a2, a3, v10);
      v14 = a1;
    }

    else
    {
      v13 = ((v11 & a1) << a5) + quant_2p_2N1(a1, a3, v10);
      v14 = a2;
    }

    v15 = quant_2p_2N1(v14, a4, a5) << v12;
  }

  else
  {
    v13 = ((v11 & a1) << a5) + quant_2p_2N1(a1, a2, a5 - 1);
    v15 = quant_2p_2N1(a3, a4, a5) << (2 * a5);
  }

  return v13 + v15;
}

uint64_t limit_T0(uint64_t result, __int16 a2, int a3, int a4, __int16 a5, int a6, _WORD *a7, _WORD *a8)
{
  if (!a4)
  {
    if (result == 256)
    {
      v13 = 34;
    }

    else
    {
      v13 = 42;
    }

    if (result == 256)
    {
      v10 = 231;
    }

    else
    {
      v10 = 289;
    }

    v11 = 2 * a2 - 1;
    v15 = a5 - a2;
    if (a6 > 1)
    {
      ++v15;
    }

    if (v15 > v13)
    {
      LOWORD(v13) = v15;
    }

    goto LABEL_29;
  }

  if (a4 == 2)
  {
    v8 = 17;
  }

  else
  {
    v8 = 20;
  }

  if (result == 256)
  {
    v9 = v8;
  }

  else
  {
    v9 = 21;
  }

  if (result == 256)
  {
    v10 = 231;
  }

  else
  {
    v10 = 289;
  }

  v11 = 2 * a2 - 1;
  if (a6 <= 1)
  {
    v12 = a5 - a2;
  }

  else
  {
    v12 = a5 - a2 + 1;
  }

  v13 = v12;
  *a7 = v12;
  if (a3)
  {
    v14 = v9 - 2;
    if (v14 > v12)
    {
      *a7 = v14;
      v13 = v14;
    }

    if (v13 <= 16)
    {
      LOWORD(v13) = 17;
LABEL_29:
      *a7 = v13;
    }
  }

  else if (v12 < v9)
  {
    *a7 = v9;
    LOWORD(v13) = v9;
  }

  v16 = v13 + v11;
  *a8 = v16;
  if (v10 < v16)
  {
    *a8 = v10;
    *a7 = v10 - v11;
  }

  return result;
}

uint64_t pitch_fr4(__int128 *a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, __int16 *a8, __int16 a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, __int16 a14)
{
  v15 = a6;
  *v61 = *MEMORY[0x1E69E9840];
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v60[4] = v16;
  v60[5] = v16;
  if (a10 == 2)
  {
    v17 = 17;
  }

  else
  {
    v17 = 20;
  }

  if (a13 == 256)
  {
    v18 = v17;
  }

  else
  {
    v18 = 21;
  }

  if (a13 == 256)
  {
    v19 = 34;
  }

  else
  {
    v19 = 42;
  }

  if (a10)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v60[2] = v16;
  v60[3] = v16;
  v60[0] = v16;
  v60[1] = v16;
  v58 = *a1;
  v21 = v60 - 4 * (a6 - 4);
  v59 = *(a1 + 2);
  v55 = v21;
  v56 = v61;
  v57 = v60;
  norm_corr(&v58, a2, a3, a4, a5, (a6 - 4), (a7 + 4), &v55, a14);
  v22 = &v21[4 * v15];
  if (v22 < v60 || v22 + 1 > v61 || v22 > v22 + 1)
  {
    goto LABEL_80;
  }

  v23 = (v15 + 1);
  v24 = v15;
  if (v23 <= a7)
  {
    v25 = *v22;
    v24 = v15;
    while (1)
    {
      v26 = &v21[4 * v23];
      v27 = v26 + 1;
      v28 = v26 < v60 || v27 > v61;
      if (v28 || v26 >= v27)
      {
        break;
      }

      if (*v26 >= v25)
      {
        v25 = *v26;
        v24 = v23;
      }

      v23 = (v23 + 1);
      if (v23 > a7)
      {
        goto LABEL_28;
      }
    }

LABEL_80:
    __break(0x5519u);
  }

LABEL_28:
  if (v20 != a12)
  {
    if (a9 || a12 > v24)
    {
      if (a9)
      {
        v40 = 1;
      }

      else
      {
        v40 = v24 < a11;
      }

      v41 = v40;
      v42 = v20 != a11;
      v43 = v42 & v41;
      if ((v42 & v41) != 0)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2;
      }

      if (v24 == v15)
      {
        *&v58 = &v21[4 * v15];
        *(&v58 + 1) = v61;
        v59 = v60;
        v55 = E_ROM_inter4_1_11466;
        v56 = Env_TR_Cdbk1;
        v57 = E_ROM_inter4_1_11466;
        interpolation(&v58, &v55, 0, 4, 4);
        v46 = v45;
        v30 = 0;
      }

      else
      {
        LOWORD(v15) = v24 - 1;
        *&v58 = &v21[4 * (v24 - 1)];
        *(&v58 + 1) = v61;
        v59 = v60;
        v55 = E_ROM_inter4_1_11466;
        v56 = Env_TR_Cdbk1;
        v57 = E_ROM_inter4_1_11466;
        interpolation(&v58, &v55, v44, 4, 4);
        v46 = v47;
        if (v43)
        {
          v30 = 1;
          LOWORD(v48) = 2;
          do
          {
            *&v58 = &v21[4 * (v24 - 1)];
            *(&v58 + 1) = v61;
            v59 = v60;
            v55 = E_ROM_inter4_1_11466;
            v56 = Env_TR_Cdbk1;
            v57 = E_ROM_inter4_1_11466;
            interpolation(&v58, &v55, v48, 4, 4);
            if (v49 > v46)
            {
              v46 = v49;
              v30 = v48;
            }

            v48 = (v48 + v44);
          }

          while (v48 < 4);
        }

        else
        {
          v30 = 2;
        }
      }

      LOWORD(v50) = 0;
      v51 = &v21[4 * v24];
      do
      {
        *&v58 = v51;
        *(&v58 + 1) = v61;
        v59 = v60;
        v55 = E_ROM_inter4_1_11466;
        v56 = Env_TR_Cdbk1;
        v57 = E_ROM_inter4_1_11466;
        interpolation(&v58, &v55, v50, 4, 4);
        if (v52 > v46)
        {
          v46 = v52;
          LOWORD(v15) = v24;
          v30 = v50;
        }

        v50 = (v50 + v44);
      }

      while (v50 < 4);
      goto LABEL_79;
    }

    v30 = 0;
LABEL_55:
    LOWORD(v15) = v24;
    goto LABEL_79;
  }

  v30 = 0;
  if (a9 || a11 > v24)
  {
    goto LABEL_55;
  }

  if ((v24 & 0xFFFE) <= 229)
  {
    LOWORD(v15) = v24 & 0xFFFE;
  }

  else
  {
    LOWORD(v15) = (v24 & 0xFFFE) - 2;
  }

  v31 = &v21[4 * v15];
  v32 = v31 + 1;
  v34 = v31 < v60 || v32 > v61 || v31 >= v32;
  v35 = &v21[4 * v15 + 8];
  v36 = v35 + 1;
  if (v34 || v35 < v60 || v36 > v61 || v35 >= v36)
  {
    goto LABEL_80;
  }

  v30 = 0;
  if (*v31 <= *v35)
  {
    LOWORD(v15) = v15 + 2;
  }

LABEL_79:
  *a8 = v30;
  return v15;
}

uint64_t pit_Q_enc(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, unsigned __int16 *a9, _WORD *a10)
{
  v11 = a7;
  v13 = a4;
  v14 = a3;
  if (a3 <= 7)
  {
    if (a3 == 5)
    {
      v25 = a7 - *a9;
      v26 = a8 + 4 * v25;
      v27 = 2 * v25 + (a8 >> 1);
      if (a4 == 8)
      {
        v21 = v27;
      }

      else
      {
        v21 = v26;
      }

      if (a2)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (a3 == 6)
    {
      v21 = a8 + 4 * (a7 - *a9);
      if (a2)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  switch(a3)
  {
    case 8:
      v22 = 2;
      break;
    case 9:
      v22 = 4;
      break;
    case 10:
      v17 = a8 + 4 * a7;
      v18 = v17 - 80;
      v19 = v17 - 68;
      v20 = v17 - 136;
      if (a6)
      {
        v20 = v19;
      }

      if (a6 == 1)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      if (!a2)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    default:
LABEL_31:
      if (a4 == 8)
      {
        v21 = a7 - *a9;
      }

      else
      {
        v21 = 2 * (a7 - *a9) + (a8 >> 1);
      }

      if (a2)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
  }

  v21 = abs_pit_enc(v22, a6, a7, a8);
  if (!a2)
  {
LABEL_27:
    limit_T0(256, v13, 64, a6, v11, a8, a9, a10);
    goto LABEL_28;
  }

  v23 = (v11 - v13);
  if (v23 <= 34)
  {
    LOWORD(v23) = 34;
  }

  *a9 = v23;
  v24 = v23 + 2 * v13 - 1;
  *a10 = v24;
  if (v24 >= 232)
  {
    *a10 = 231;
    *a9 = 232 - 2 * v13;
  }

LABEL_28:

  return push_indice(a1, 95, v21, v14);
}

uint64_t pit16k_Q_enc(uint64_t a1, int a2, int a3, int a4, int a5, _WORD *a6, _WORD *a7)
{
  v10 = a4;
  if (a2 == 9)
  {
    LOWORD(v12) = a4 + 222;
    if (a4 <= 0x81)
    {
      LOWORD(v12) = 2 * a4 + (a5 >> 1) + 92;
    }

    v13 = a5 + 4 * a4 - 84;
    v14 = a4 <= 87;
  }

  else
  {
    if (a2 != 10)
    {
      LOWORD(v12) = a5 + 4 * (a4 - *a6);
      goto LABEL_11;
    }

    v12 = 2 * a4 + (a5 >> 1) + 444;
    v13 = a5 + 4 * a4 - 84;
    v14 = a4 <= 263;
  }

  if (v14)
  {
    LOWORD(v12) = v13;
  }

LABEL_11:
  push_indice(a1, 95, v12, a2);

  return limit_T0(320, 8, 64, a3, v10, a5, a6, a7);
}

uint64_t abs_pit_enc(int a1, int a2, int a3, int a4)
{
  v4 = 2 * a3;
  v5 = a4 + 4 * a3;
  if (a2 == 1)
  {
    v12 = a3 + 280;
    v13 = v4 + (a4 >> 1);
    if (a3 <= 0x7F)
    {
      v12 = v13 + 152;
    }

    v10 = v5 - 80;
    if (a3 > 115)
    {
      v10 = v12;
    }

    v14 = v13 - 40;
    if (a3 > 63)
    {
      v14 = a3 + 24;
    }

    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1 != 4)
    {
      return v14;
    }
  }

  else
  {
    v6 = a3 + 280;
    v7 = v4 + (a4 >> 1);
    v8 = v7 + 156;
    if (a3 > 0x7B)
    {
      v8 = a3 + 280;
    }

    if (a3 <= 111)
    {
      v8 = v5 - 68;
    }

    v9 = v7 - 34;
    if (a3 > 57)
    {
      v9 = a3 + 24;
    }

    if (a1 != 2)
    {
      v9 = 0;
    }

    if (a1 != 4)
    {
      v8 = v9;
    }

    if (a3 <= 0x9F)
    {
      v6 = v7 + 120;
    }

    v10 = v5 - 136;
    if (a3 > 127)
    {
      v10 = v6;
    }

    v11 = v7 - 68;
    if (a3 > 91)
    {
      v11 = a3 + 24;
    }

    if (a1 != 2)
    {
      v11 = 0;
    }

    if (a1 != 4)
    {
      v10 = v11;
    }

    if (a2)
    {
      return v8;
    }
  }

  return v10;
}

void *interpolation(void *result, uint64_t *a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = 0;
    LOWORD(v7) = 0;
    v9 = a2[1];
    v8 = a2[2];
    v10 = *a2;
    v11 = 4 * a3;
    v12 = 4 * a4;
    v13 = v12 - v11;
    v14 = 0.0;
    v15 = result[1];
    v16 = result[2];
    result = *result;
    while (1)
    {
      v17 = (result + v6);
      v18 = result + v6 + 4;
      v19 = v18 > v15 || v17 > v18;
      if (v19 || v17 < v16)
      {
        break;
      }

      v21 = (v10 + v11);
      v22 = v10 + v11 + 4;
      if (v22 > v9)
      {
        break;
      }

      if (v21 > v22)
      {
        break;
      }

      if (v21 < v8)
      {
        break;
      }

      v23 = result + v5 + 8;
      if (v23 > v15)
      {
        break;
      }

      v24 = (result + v5 + 4);
      if (v24 > v23)
      {
        break;
      }

      if (v24 < v16)
      {
        break;
      }

      v25 = v10 + v13 + 4;
      if (v25 > v9)
      {
        break;
      }

      v26 = (v10 + v13);
      if (v10 + v13 > v25 || v26 < v8)
      {
        break;
      }

      v7 = (v7 + 1);
      v14 = v14 + ((*v24 * *v26) + (*v17 * *v21));
      v6 -= 4;
      v5 += 4;
      v10 += v12;
      if (v7 >= a5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void hq_lr_enc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v1709 = v4;
  v6 = v5;
  v1718 = v7;
  v8 = v1;
  v1848[1] = *MEMORY[0x1E69E9840];
  v1760 = -21846;
  v1758 = -21846;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1796[3] = v9;
  v1796[2] = v9;
  v1796[1] = v9;
  v1796[0] = v9;
  v1795 = v9;
  v1794 = v9;
  v1793 = v9;
  v1792 = v9;
  v1791[3] = v9;
  v1791[2] = v9;
  v1791[1] = v9;
  v1791[0] = v9;
  v1790[3] = v9;
  v1790[2] = v9;
  v1790[1] = v9;
  v1790[0] = v9;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v1789[7] = v10;
  v1789[6] = v10;
  v1789[5] = v10;
  v1789[4] = v10;
  v1789[3] = v10;
  v1789[2] = v10;
  v1789[1] = v10;
  v1789[0] = v10;
  v1788[7] = v10;
  v1788[6] = v10;
  v1788[5] = v10;
  v1788[4] = v10;
  v1788[3] = v10;
  v1788[2] = v10;
  v1788[1] = v10;
  v1788[0] = v10;
  v1787[7] = v9;
  v1787[6] = v9;
  v1787[5] = v9;
  v1787[4] = v9;
  v1787[3] = v9;
  v1787[2] = v9;
  v1787[1] = v9;
  v1787[0] = v9;
  v1786[3] = v9;
  v1786[2] = v9;
  v1786[1] = v9;
  v1786[0] = v9;
  v1785[7] = v9;
  v1785[6] = v9;
  v1785[5] = v9;
  v1785[4] = v9;
  v1785[3] = v9;
  v1785[2] = v9;
  v1785[1] = v9;
  v1785[0] = v9;
  memset(v1784, 170, sizeof(v1784));
  memset(v1783, 255, sizeof(v1783));
  memset(v1782, 255, sizeof(v1782));
  v1746 = -21846;
  memset(__b, 255, sizeof(__b));
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v1780[7] = v11;
  v1780[6] = v11;
  v1780[5] = v11;
  v1780[4] = v11;
  v1780[3] = v11;
  v1780[2] = v11;
  v1780[1] = v11;
  v1780[0] = v11;
  v1779[7] = v11;
  v1779[6] = v11;
  v1779[5] = v11;
  v1779[4] = v11;
  v1779[3] = v11;
  v1779[2] = v11;
  v1779[1] = v11;
  v1779[0] = v11;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1778[3] = v11;
  v1778[2] = v11;
  v1778[1] = v11;
  v1778[0] = v11;
  memset(v1777, 170, sizeof(v1777));
  memset(v1776, 170, sizeof(v1776));
  v1775 = 0xAAAAAAAAAAAAAAAALL;
  v1743 = -21846;
  v1773[7] = v11;
  v1773[6] = v11;
  v1773[5] = v11;
  v1773[4] = v11;
  v1773[3] = v11;
  v1773[2] = v11;
  v1773[1] = v11;
  v1773[0] = v11;
  v1772[7] = v11;
  v1772[6] = v11;
  v1772[5] = v11;
  v1772[4] = v11;
  v1772[3] = v11;
  v1772[2] = v11;
  v1772[1] = v11;
  v1772[0] = v11;
  v1771 = v11;
  v1770[6] = v11;
  v1770[5] = v11;
  v1770[4] = v11;
  v1770[3] = v11;
  v1770[2] = v11;
  v1770[0] = v11;
  v1770[1] = v11;
  v1769[6] = v11;
  v1769[7] = v11;
  v1769[4] = v11;
  v1769[5] = v11;
  v1769[2] = v11;
  v1769[3] = v11;
  v1769[0] = v11;
  v1769[1] = v11;
  LODWORD(v1847[0]) = 0;
  vDSP_vfill(v1847, v1783, 1, 0x3C0uLL);
  v1735 = v1785;
  if (v6 >= 1)
  {
    v12 = v6;
    v13 = v1784;
    v14 = v1735;
    do
    {
      v15 = v13 + 1;
      v16 = v13 < v1784 || v15 > v14;
      if (v16 || v13 > v15)
      {
        goto LABEL_3034;
      }

      *v13++ = 0;
      --v12;
    }

    while (v12);
  }

  v18 = 0;
  v1704 = v8 + 49152;
  do
  {
    v19 = &v1777[2] + v18 + 2;
    if ((&v1777[2] + v18) < &v1777[2] || v19 > v1778 || &v1777[2] + v18 > v19)
    {
      goto LABEL_3034;
    }

    *(&v1777[2] + v18) = 0;
    v18 += 2;
  }

  while (v18 != 8);
  v1742 = 0;
  v22 = *(v8 + 96);
  v23 = *(v8 + 130);
  v1726 = v8;
  *v1716 = v6;
  *v1713 = v3;
  *v1740 = v1784;
  *v1712 = v22;
  v1699 = v1778;
  if (v23 == 2 && (v22 == 16400 || v22 == 13200))
  {
    if (v3 == 1)
    {
      v24 = 1;
    }

    else
    {
      v27 = *v1718;
      v28 = v1718[1];
      if (*v1718 > v28)
      {
        goto LABEL_3034;
      }

      v29 = (v1726 + 52114);
      if (v1726 + 52114 > (v1726 + 52116) || (v28 - v27) < 2173 || v1718[2] > v27 || v1726 + 52112 > v29)
      {
        goto LABEL_3034;
      }

      v8 = v1726;
      v24 = peak_avrg_ratio(*(v1726 + 64), v27, 544, (v1726 + 52112), v29);
      v6 = *v1716;
      v3 = *v1713;
      v22 = *v1712;
    }

    push_indice(v8, 887, v24, 2);
    v26 = *v1709 - 2;
    *v1709 = v26;
    *v1711 = v24;
    LODWORD(v1702) = v24 == 0;
  }

  else
  {
    push_indice(v8, 887, v3, 1);
    LODWORD(v1702) = 0;
    *v1711 = 0;
    v26 = *v1709 - 1;
    *v1709 = v26;
  }

  v1759 = -1431655766;
  v1757 = -21846;
  v1756 = -21846;
  v1755 = -21846;
  v1754 = NAN;
  v1753 = -1;
  v1752 = -1;
  v1751 = NAN;
  v1750 = NAN;
  v1748 = -21846;
  v1747 = -21846;
  v1749 = -1431655766;
  v1721 = &v1792;
  v1741 = v1796;
  v1730 = v1791;
  hq2_core_configure(v6, v26, v3, &v1759 + 1, &v1759, v1790, v1791, v25, &v1792, v1796, v1791, &v1792, &v1749, &v1748, &v1747, &v1757, &v1756, &v1755, &v1754, &v1751, &v1750, &v1753, &v1752, v22);
  v1739 = HIWORD(v1759);
  v30 = v1791 + SHIWORD(v1759);
  v31 = v30 - 1;
  if (v30 - 1 < v1791 || v30 > v1721 || v31 > v30)
  {
    goto LABEL_3034;
  }

  v1745 = *v31;
  LODWORD(v1738) = v1739;
  v1744 = v1739;
  if (!*v1713 && *(v1726 + 130) == 2)
  {
    if (*v1712 != 16400 && *v1712 != 13200)
    {
      goto LABEL_65;
    }

    if ((*v1711 & 0xFFFFFFFD) == 0)
    {
      *v1709 -= get_usebit_npswb(*v1711);
    }
  }

  if ((*v1712 == 16400 || *v1712 == 13200) && *(v1726 + 130) == 2 && *(v1704 + 3018))
  {
    v32 = v1704 + 3020;
    v33 = v1726 + 52180;
    v34 = 4;
    v35 = (v1704 + 3020);
    do
    {
      if (v35 < v32 || (v35 + 1) > v33 || v35 > v35 + 1)
      {
        goto LABEL_3034;
      }

      *v35++ = 0;
      --v34;
    }

    while (v34);
  }

  if (*v1713)
  {
    v36 = v1759;
    if (v1759 < v1716[0])
    {
      v37 = v1759 & 0x7FFC;
      v38 = 3;
      v39 = v1716[0];
      v40 = v1759;
      do
      {
        v41 = v1718[2];
        v42 = (*v1718 + 4 * (v39 / 4));
        if (v42 < v41)
        {
          goto LABEL_3034;
        }

        v43 = v40 + 3;
        if (v40 >= 0)
        {
          v43 = v40;
        }

        v44 = *v1718 + (((v43 >> 2) << 48) >> 46);
        if (v44 < v41)
        {
          goto LABEL_3034;
        }

        if (v36 >= 4)
        {
          v45 = v1718[1];
          if (v45 < v44)
          {
            goto LABEL_3034;
          }

          if (v42 > v45)
          {
            goto LABEL_3034;
          }

          if (v45 - v42 < v37)
          {
            goto LABEL_3034;
          }

          if (v45 - v44 < v37)
          {
            goto LABEL_3034;
          }

          memmove((*v1718 + (((v43 >> 2) << 48) >> 46)), v42, v36 & 0x7FFC);
          if (v44 + v37 < v44)
          {
            goto LABEL_3034;
          }
        }

        v40 += v36;
        v39 += v1716[0];
        --v38;
      }

      while (v38);
    }
  }

LABEL_65:
  v46 = *v1718;
  if (*v1718 < v1718[2])
  {
    goto LABEL_3034;
  }

  v47 = v1718[1];
  v1727 = v1790;
  LODWORD(v1736) = v1749;
  v48 = v1748;
  LOWORD(v1798[0]) = -21846;
  *&v49 = 0xAAAAAAAAAAAAAAAALL;
  *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1847[7] = v49;
  v1847[6] = v49;
  v1847[5] = v49;
  v1847[4] = v49;
  v1847[3] = v49;
  v1847[2] = v49;
  v1847[1] = v49;
  v1847[0] = v49;
  v1846[7] = v49;
  v1846[6] = v49;
  v1846[5] = v49;
  v1846[4] = v49;
  v1846[3] = v49;
  v1846[2] = v49;
  v1846[1] = v49;
  v1846[0] = v49;
  memset(v1845, 0, 128);
  v1844[7] = v49;
  v1844[6] = v49;
  v1844[5] = v49;
  v1844[4] = v49;
  v1844[3] = v49;
  v1844[2] = v49;
  v1844[1] = v49;
  v1844[0] = v49;
  v1843[7] = v49;
  v1843[6] = v49;
  v1843[5] = v49;
  v1843[4] = v49;
  v1843[3] = v49;
  v1843[2] = v49;
  v1843[1] = v49;
  v1843[0] = v49;
  if (v1738 >= 1)
  {
    v50 = 0;
    do
    {
      v51 = &v1792 + v50;
      v52 = v51 + 1;
      v54 = v51 < &v1792 || v52 > v1741 || v51 > v52;
      v55 = v1791 + v50;
      v56 = v55 + 1;
      v57 = !v54 && v55 >= v1791;
      if (!v57 || v56 > v1721 || v55 > v56)
      {
        goto LABEL_3034;
      }

      v60 = *v51;
      v61 = *v55;
      v62 = 0.0179999992;
      if (v60 <= v61)
      {
        v63 = 0.0;
        do
        {
          v64 = (v46 + 4 * v60);
          v65 = v64 + 1;
          if (v64 < v46 || v65 > v47 || v64 > v65)
          {
            goto LABEL_3034;
          }

          v63 = v63 + (*v64 * *v64);
          v60 = (v60 + 1);
        }

        while (v60 <= v61);
        v62 = (v63 + 0.018);
      }

      v68 = v1789 + 4 * v50;
      if (v68 < v1789 || v68 + 4 > v1727 || v68 > v68 + 4)
      {
        goto LABEL_3034;
      }

      v69 = log(v62) / 0.693147181;
      *(v1789 + v50++) = v69;
    }

    while (v50 != v1739);
  }

  if (*v1713)
  {
    reverse_transient_frame_energies(v1789, v1727, v1738);
  }

  if (v1738 >= 1)
  {
    v70 = v1789;
    v71 = v1843;
    v72 = v1739;
    v73 = v1727;
    do
    {
      v74 = v70 + 1;
      v76 = v70 < v1789 || v74 > v73 || v70 > v74;
      v77 = v71 + 1;
      if (v76 || v71 < v1843 || v77 > &v1843[8] || v71 > v77)
      {
        goto LABEL_3034;
      }

      v81 = *v70++;
      *v71++ = vcvtd_n_s64_f64(v81, 0xEuLL);
      --v72;
    }

    while (v72);
  }

  if (v1736)
  {
    v82 = v1738;
    if (v1736 == -1)
    {
      v83 = 31;
    }

    else
    {
      v84 = v1736 ^ (v1736 >> 31);
      if (v84 > 0x3FFFFFFF)
      {
        v83 = 0;
      }

      else
      {
        v83 = 0;
        do
        {
          v85 = v84 >> 29;
          v84 *= 2;
          ++v83;
        }

        while (!v85);
      }
    }
  }

  else
  {
    v83 = 0;
    v82 = v1738;
  }

  v86 = L_shl(v1736, v83);
  v87 = ((v86 + 0x8000) ^ v86) > -1 || v86 < 0;
  v88 = (v86 + 0x8000) >> 16;
  if (!v87)
  {
    LOWORD(v88) = 0x7FFF;
  }

  v89 = div_s(0x4000, v88);
  v90 = v89;
  v91 = 16 - v83;
  if (v83 < -32751)
  {
    v91 = 0x7FFF;
  }

  v92 = v91;
  if (v89 * v48 == 0x40000000)
  {
    v93 = 0x7FFFFFFF;
  }

  else
  {
    v93 = 2 * v89 * v48;
  }

  v94 = 5 - v91;
  if (v92 < -32762)
  {
    v94 = 0x7FFF;
  }

  v95 = L_shl(v93, v94);
  v96 = ((v95 + 0x8000) ^ v95) > -1 || v95 < 0;
  v97 = (v95 + 0x8000) >> 16;
  if (!v96)
  {
    v97 = 0x7FFF;
  }

  LODWORD(v1737) = v97;
  if (v82 >= 1)
  {
    v98 = 17 - v92;
    if (v92 < -32750)
    {
      v98 = 0x7FFF;
    }

    v99 = v98;
    v100 = v1843;
    v101 = v1845;
    v102 = v1739;
    do
    {
      v103 = v100 + 1;
      v105 = v100 < v1843 || v103 > &v1843[8] || v100 > v103;
      v106 = v101 + 1;
      if (v105 || v101 < v1845 || v106 > &v1845[8] || v101 > v106)
      {
        goto LABEL_3034;
      }

      v111 = *v100++;
      v110 = v111;
      v112 = (v111 >> 16) * v90;
      if (v112 == 0x40000000)
      {
        v113 = 0x7FFFFFFF;
      }

      else
      {
        v113 = 2 * v112;
      }

      v114 = v110 * v90;
      v115 = v113 ^ (v114 >> 15);
      v116 = v113 + (v114 >> 15);
      v117 = (v116 ^ (v114 >> 15)) > -1 || v115 < 0;
      v118 = (v114 >> 31) ^ 0x7FFFFFFF;
      if (v117)
      {
        v119 = v116;
      }

      else
      {
        v119 = v118;
      }

      v120 = L_shl(v119, v99);
      v121 = ((v120 + 0x8000) ^ v120) > -1 || v120 < 0;
      v122 = (v120 + 0x8000) >> 16;
      if (!v121)
      {
        v122 = 0x7FFF;
      }

      *v101++ = v122;
      --v102;
    }

    while (v102);
  }

  v123 = v1738;
  if (!*v1713)
  {
    goto LABEL_214;
  }

  mvi2i(v1845, &v1845[8], v1847, &v1847[8], v1738);
  if (v1738 > 0x20)
  {
    goto LABEL_3034;
  }

  v123 = v1738;
  if (!v1738)
  {
    goto LABEL_3034;
  }

  LODWORD(v1846[0]) = LODWORD(v1847[0]) - v1737;
  if (LODWORD(v1847[0]) - v1737 >= 17)
  {
    LODWORD(v1846[0]) = 16;
    v124 = v1737 + 16;
LABEL_188:
    LODWORD(v1847[0]) = v124;
    goto LABEL_189;
  }

  if (LODWORD(v1847[0]) - v1737 <= -16)
  {
    LODWORD(v1846[0]) = -15;
    v124 = v1737 - 15;
    goto LABEL_188;
  }

LABEL_189:
  if (v1738 <= 1)
  {
    v139 = 0;
    LODWORD(v1844[0]) = LODWORD(v1845[0]) - v1737;
LABEL_236:
    v152 = v1844;
    v153 = v1739;
    while (1)
    {
      v154 = v152 + 1;
      if (v152 < v1844 || v154 > &v1844[8] || v152 > v154)
      {
        goto LABEL_3034;
      }

      if (*v152 > 255)
      {
        break;
      }

      if (*v152 <= -257)
      {
        v157 = -256;
        goto LABEL_248;
      }

LABEL_249:
      ++v152;
      if (!--v153)
      {
        v151 = v1738;
        goto LABEL_251;
      }
    }

    v157 = 255;
LABEL_248:
    *v152 = v157;
    goto LABEL_249;
  }

  v125 = v1847 + 4 * v1739;
  v126 = v1739 + 1;
  v127 = v125 - 8;
  do
  {
    if (v127 + 4 < v1847)
    {
      goto LABEL_3034;
    }

    if (v127 + 8 > v125)
    {
      goto LABEL_3034;
    }

    if (v127 + 4 > v127 + 8)
    {
      goto LABEL_3034;
    }

    if (v127 < v1847)
    {
      goto LABEL_3034;
    }

    v128 = *(v127 + 1);
    if (v127 + 4 > v125 || v127 > v127 + 4)
    {
      goto LABEL_3034;
    }

    if (v128 - *v127 <= -16)
    {
      *v127 = v128 + 15;
    }

    --v126;
    v127 -= 4;
  }

  while (v126 > 2);
  v129 = 0;
  v130 = 4 * v1739 - 4;
  do
  {
    v131 = v1847 + v129 + 4;
    v132 = v1847 + v129 + 8;
    if (v131 < v1847 || v132 > v125 || v131 > v132)
    {
      goto LABEL_3034;
    }

    v135 = *(v1847 + v129);
    v136 = *v131 - v135;
    if (v136 >= 17)
    {
      *v131 = v135 + 16;
      v136 = 16;
    }

    v137 = (v1846 + v129 + 4);
    if (v137 < v1846)
    {
      goto LABEL_3034;
    }

    v138 = v1846 + v129 + 8;
    if (v138 > &v1846[8] || v137 > v138)
    {
      goto LABEL_3034;
    }

    *v137 = v136;
    v129 += 4;
  }

  while (v130 != v129);
LABEL_214:
  LODWORD(v1844[0]) = LODWORD(v1845[0]) - v1737;
  v139 = v123 > 1;
  if (v123 > 1)
  {
    v140 = 0;
    v141 = 4 * v1739 - 4;
    do
    {
      v142 = v1845 + v140 + 4;
      v143 = v1845 + v140 + 8;
      v146 = v142 >= v1845 && v143 <= &v1845[8] && v142 <= v143 && (v1845 + v140) >= v1845;
      v147 = v1844 + v140 + 4;
      v148 = v1844 + v140 + 8;
      if (!v146 || v148 > &v1844[8] || v147 > v148)
      {
        goto LABEL_3034;
      }

      *v147 = *v142 - *(v1845 + v140);
      v140 += 4;
    }

    while (v141 != v140);
  }

  v151 = v1738;
  if (v1738 >= 1)
  {
    goto LABEL_236;
  }

LABEL_251:
  if (v151 > 0x20)
  {
    goto LABEL_3034;
  }

  v1799[0] = -21846;
  v158 = large_symbol_enc(v1726, v1844, v1738, v1799, 0);
  if (*v1713)
  {
    v159 = small_symbol_enc_tran(v1726, v1846, v1738, v1798, 0);
  }

  else
  {
    v159 = small_symbol_enc(v1726, v1844, v1738, v1798, 0);
  }

  v160 = v159;
  if (v158 < v159 || v159 == -1)
  {
    push_indice(v1726, 888, 0, 1);
    large_symbol_enc(v1726, v1844, v1738, v1799, 1);
    v160 = v158;
  }

  else
  {
    push_indice(v1726, 888, 1, 1);
    if (*v1713)
    {
      mvi2i(v1846, &v1846[8], v1844, &v1844[8], v1738);
      small_symbol_enc_tran(v1726, v1844, v1738, v1798, 1);
    }

    else
    {
      small_symbol_enc(v1726, v1844, v1738, v1798, 1);
    }
  }

  LODWORD(v1845[0]) = LODWORD(v1844[0]) + v1737;
  if (v139)
  {
    v161 = v1739 - 1;
    v162 = v1844 + 1;
    v163 = v1845 + 1;
    do
    {
      if (v163 - 1 < v1845 || v163 - 1 > v163)
      {
        goto LABEL_3034;
      }

      v165 = *v162++;
      *v163 = *(v163 - 1) + v165;
      ++v163;
      --v161;
    }

    while (v161);
  }

  if (v1738)
  {
    v166 = v1736;
    v167 = v1736 >> 16;
    v168 = v1789;
    v169 = v1843;
    v170 = v1845;
    v171 = v1739;
    do
    {
      v172 = *v170;
      v170 += 2;
      v173 = v166 * v172;
      v174 = 2 * v167 * v172;
      if (v167 * v172 == 0x40000000)
      {
        v175 = 0x7FFFFFFF;
      }

      else
      {
        v175 = v174;
      }

      v176 = v175 + (v173 >> 15);
      v177 = v175 ^ (v173 >> 15);
      v178 = (v176 ^ (v173 >> 15)) > -1 || v177 < 0;
      v179 = (v173 >> 31) ^ 0x7FFFFFFF;
      if (v178)
      {
        v179 = v176;
      }

      *v169 = v179;
      if (v168 + 1 > v1727 || v168 > v168 + 1)
      {
        goto LABEL_3034;
      }

      v180 = vcvtd_n_f64_s32(v179, 0xEuLL);
      *v168++ = v180;
      ++v169;
      --v171;
    }

    while (v171);
  }

  if (*v1713)
  {
    reverse_transient_frame_energies(v1789, v1727, v1738);
  }

  if (v1738 >= 1)
  {
    v181 = v1789;
    v182 = v1770;
    v183 = v1739;
    v184 = v1727;
    do
    {
      v185 = v181 + 1;
      v187 = v181 < v1789 || v185 > v184 || v181 > v185;
      v188 = v182 + 1;
      if (v187 || v182 < v1770 || v188 > v1772 || v182 > v188)
      {
        goto LABEL_3034;
      }

      v192 = *v181++;
      *v182++ = vcvtd_n_s64_f64(v192, 0xEuLL);
      --v183;
    }

    while (v183);
  }

  v194 = log(v1757) / 0.693147181;
  v195 = *v1709 + ~v160;
  LODWORD(v1715) = v194;
  v196 = v195 - v1756 * v194;
  v1760 = v195 - v1756 * v194;
  v197 = v1726;
  if (*(v1726 + 130) == 2 && (*v1712 == 16400 || *v1712 == 13200))
  {
    if (*v1711 == 2)
    {
      v198 = v1738;
      if (v1738 >= 1)
      {
        v199 = v1796;
        v200 = v1739;
        do
        {
          v201 = v199 + 1;
          if (v199 < v1796 || v201 > v1797 || v199 > v201)
          {
            goto LABEL_3034;
          }

          *v199++ = 1;
          --v200;
        }

        while (v200);
      }
    }

    else
    {
      if (*v1718 < v1718[2])
      {
        goto LABEL_3034;
      }

      v198 = v1738;
      v197 = v1726;
      p2a_threshold_quant(v1726, *v1718, v1718[1], &v1792, v1741, v1791, v1721, v1754, v193, v1790, v1730, v1738, v1755, v1796);
      v1760 = v196 - v288;
      if (!*v1711)
      {
        return_bits_normal2(&v1760, v1796, v1797, v1738);
      }
    }
  }

  else
  {
    if (*v1718 < v1718[2])
    {
      goto LABEL_3034;
    }

    v198 = v1738;
    v197 = v1726;
    p2a_threshold_quant(v1726, *v1718, v1718[1], &v1792, v1741, v1791, v1721, v1754, v193, v1790, v1730, v1738, v1755, v1796);
    v1760 = v196 - v204;
  }

  v1739 = v1739;
  if (v1702)
  {
    spt_shorten_domain_band_save(v198, &v1792, v1741, v1791, v1721, v1790, v1730, v193, &v1777[1], &v1777[2], v1777, &v1777[1], &v1776[2], v1777);
    v205 = v197 + 52172;
    v1733 = v1776;
    __src = &v1776[1];
    v1736 = &v1776[2];
    v1737 = v197 + 52180;
    spt_shorten_domain_pre(&v1792, v1741, v1791, v1721, v197 + 52172, v197 + 52180, v198, *v1712, &v1776[1], &v1776[2], v1776, &v1776[1], &v1775, v1776);
    v206 = *v1718;
    if (*v1718 < v1718[2])
    {
      goto LABEL_3034;
    }

    v207 = 0;
    v208 = v1718[1];
    *&v1847[0] = 0xAAAAAAAAAAAAAAAALL;
    v209 = v1739 - 4;
    v210 = v1760;
    do
    {
      v211 = v1796 + v209;
      v212 = v211 + 1;
      if (v211 < v1796 || v212 > v1797 || v211 > v212)
      {
        goto LABEL_3034;
      }

      if (*v211 == 1)
      {
        v215 = v1847 + v207;
        if (v215 < v1847)
        {
          goto LABEL_3034;
        }

        if (v215 + 1 > v1847 + 4)
        {
          goto LABEL_3034;
        }

        if (v215 > v215 + 1)
        {
          goto LABEL_3034;
        }

        *(v1847 + v207) = 0;
        v216 = (v205 + 2 * v207);
        if (v216 < v205 || (v216 + 1) > v1737 || v216 > v216 + 1)
        {
          goto LABEL_3034;
        }

        if (!*v216)
        {
          goto LABEL_364;
        }

        v217 = &v1792 + v209;
        if (v217 < &v1792)
        {
          goto LABEL_3034;
        }

        if (v217 + 1 > v1741)
        {
          goto LABEL_3034;
        }

        if (v217 > v217 + 1)
        {
          goto LABEL_3034;
        }

        v218 = v1791 + v209;
        if (v218 < v1791 || v218 + 1 > v1721 || v218 > v218 + 1)
        {
          goto LABEL_3034;
        }

        v219 = *v217;
        v220 = *v218;
        if (v219 <= v220)
        {
          v221 = 0;
          v222 = 0.0;
          do
          {
            v223 = (v206 + 4 * v219);
            v224 = v223 + 1;
            if (v223 < v206 || v224 > v208 || v223 > v224)
            {
              goto LABEL_3034;
            }

            v227 = fabsf(*v223);
            if (v222 < v227)
            {
              v221 = v219;
              v222 = v227;
            }

            v219 = (v219 + 1);
          }

          while (v219 <= v220);
        }

        else
        {
          v221 = 0;
        }

        v228 = &v1776[1] + v207;
        if (v228 < &v1776[1] || (v228 + 1) > v1736 || v228 > v228 + 1)
        {
          goto LABEL_3034;
        }

        v229 = *v228;
        if (v229 > v221)
        {
          goto LABEL_364;
        }

        v230 = v1776 + v207;
        if (v230 < v1776 || v230 + 1 > __src || v230 > v230 + 1)
        {
          goto LABEL_3034;
        }

        v231 = *v230;
        if (v231 >= v221)
        {
          *v217 = v229;
          *v218 = v231;
          v233 = (&v1776[-1] + 2 * v207);
          if (v233 < &v1775)
          {
            goto LABEL_3034;
          }

          if (v233 + 2 > v1733)
          {
            goto LABEL_3034;
          }

          if (v233 > (v233 + 2))
          {
            goto LABEL_3034;
          }

          v234 = v1790 + v209;
          if (v234 < v1790 || v234 + 1 > v1730 || v234 > v234 + 1)
          {
            goto LABEL_3034;
          }

          *v234 = *v233;
          v232 = 1;
          *v215 = 1;
        }

        else
        {
LABEL_364:
          v232 = 0;
        }

        push_indice(v1726, 1474, v232, 1);
        --v210;
      }

      ++v207;
      ++v209;
    }

    while (v207 != 4);
    v1760 = v210;
    v198 = v1738;
  }

  if (v198 >= 1)
  {
    v235 = 0;
    v236 = v1739;
    do
    {
      v237 = (v1770 + v235);
      v238 = v1770 + v235 + 4;
      if ((v1770 + v235) < v1770 || v238 > v1772 || v237 > v238)
      {
        goto LABEL_3034;
      }

      v241 = *v237;
      v242 = v241 - 0x20000000;
      v243 = 4 * v241;
      v244 = (v241 >> 31) ^ 0x7FFFFFFF;
      v245 = v242 >> 30 == 3 ? v243 : v244;
      v246 = Pow2_11469(30, v245 >> 1, &v1742);
      if (v245 >= -2145517568 && (v245 - 1966080) >> 16 > -32763)
      {
        v247 = ((v245 - 1966080) >> 16) - 6;
      }

      else
      {
        v1742 = 1;
        LOWORD(v247) = 0x8000;
      }

      v248 = L_shl(v246, v247);
      v249 = v1773 + v235;
      if ((v1773 + v235) < v1773)
      {
        goto LABEL_3034;
      }

      if (v249 + 4 > &v1774)
      {
        goto LABEL_3034;
      }

      if (v249 > v249 + 4)
      {
        goto LABEL_3034;
      }

      *(v1773 + v235) = v248;
      v250 = v1780 + v235;
      if ((v1780 + v235) < v1780 || v250 + 4 > __b || v250 > v250 + 4)
      {
        goto LABEL_3034;
      }

      v251 = v248 * 64.0;
      *(v1780 + v235) = v251;
      v235 += 4;
      --v236;
    }

    while (v236);
    v252 = 0;
    while (1)
    {
      v253 = v1773 + v252;
      v254 = v253 + 1;
      if (v253 < v1773 || v254 > &v1774 || v253 > v254)
      {
        goto LABEL_3034;
      }

      v257 = *v253;
      v258 = v257 <= 1 ? 1 : v257;
      if (v257 > 0x3FFFFFFF)
      {
        LOWORD(v259) = 0;
      }

      else
      {
        v259 = 0;
        v260 = v258;
        do
        {
          v261 = v260 >> 29;
          v260 *= 2;
          ++v259;
        }

        while (!v261);
      }

      v262 = v259;
      v263 = L_shl(v258, v259);
      v264 = v1790 + v252;
      if (v264 < v1790)
      {
        goto LABEL_3034;
      }

      if (v264 + 1 > v1730 || v264 > v264 + 1)
      {
        goto LABEL_3034;
      }

      v266 = v263;
      v267 = *v264;
      v268 = *v264;
      if (*v264)
      {
        if (v268 == 0xFFFF)
        {
          LOWORD(v268) = 31;
        }

        else
        {
          v269 = v267 ^ (v267 >> 31);
          if (v269 > 0x3FFFFFFF)
          {
            LOWORD(v268) = 0;
          }

          else
          {
            LOWORD(v268) = 0;
            do
            {
              v270 = v269 >> 29;
              v269 *= 2;
              LOWORD(v268) = v268 + 1;
            }

            while (!v270);
          }
        }
      }

      v271 = L_shl(v267, v268);
      v272 = v262 - v268;
      if (v272 < 0x8000)
      {
        if (v272 <= -32769)
        {
          v1742 = 1;
          LOWORD(v272) = 0x8000;
        }
      }

      else
      {
        v1742 = 1;
        LOWORD(v272) = 0x7FFF;
      }

      v1743 = v272;
      v273 = (v271 >> 16) - (v266 >> 16);
      if (v273 >= 0x8000)
      {
        break;
      }

      v274 = HIWORD(v271);
      if (v273 > -32769)
      {
        if (v273 >= 1)
        {
          goto LABEL_436;
        }
      }

      else
      {
        v1742 = 1;
      }

LABEL_440:
      v276 = div_s(v274, v266 >> 16);
      v277 = Isqrt_lc1((v276 << 16), &v1743, &v1742);
      if (v1743 > -32753)
      {
        v278 = 15 - v1743;
      }

      else
      {
        v1742 = 1;
        v278 = 0x7FFF;
      }

      v279 = v1772 + 4 * v252;
      if (v279 < v1772 || v279 + 4 > v1773 || v279 > v279 + 4)
      {
        goto LABEL_3034;
      }

      *(v1772 + v252++) = L_shr(v277, v278);
      if (v252 == v1739)
      {
        goto LABEL_447;
      }
    }

    v1742 = 1;
LABEL_436:
    if (v272 == 0x7FFF)
    {
      v1742 = 1;
      v275 = 0x7FFF;
    }

    else
    {
      v275 = v272 + 1;
    }

    v274 = v271 >> 17;
    v1743 = v275;
    goto LABEL_440;
  }

LABEL_447:
  if (v1716[0] != 160 || *v1713)
  {
    v280 = v1726;
    v282 = *v1712;
    v283 = *v1711;
    if (v1716[0] != 320 || *v1713)
    {
      goto LABEL_456;
    }

    if (v1760 > -32767)
    {
      v285 = v1760 - 2;
    }

    else
    {
      v1742 = 1;
      v285 = 0x8000;
    }

    v1760 = v285;
    v289 = SHIWORD(v1759);
    if (SHIWORD(v1759) >= 1)
    {
      v290 = v1772;
      v291 = SHIWORD(v1759);
      do
      {
        v292 = v290 + 1;
        if (v290 < v1772 || v292 > v1773 || v290 > v292)
        {
          goto LABEL_3034;
        }

        v295 = (*v290 >> 31) ^ 0x7FFFFFFF;
        if ((*v290 - 0x20000000) >> 30 == 3)
        {
          v295 = 4 * *v290;
        }

        *v290++ = v295;
        --v291;
      }

      while (v291);
    }

    if (*(v1726 + 96) == 13200)
    {
      v296 = SHIWORD(v1793) - v1793;
      if (v296 < 0x8000)
      {
        if (v296 <= -32769)
        {
          v1742 = 1;
          v296 = 0x8000;
        }
      }

      else
      {
        v1742 = 1;
        v296 = 0x7FFF;
      }

      LODWORD(v1701) = v296;
      if (v289 == -32768)
      {
        v1742 = 1;
        v306 = -32768;
      }

      else
      {
        v306 = (v289 - 1);
      }

      v308 = v1791 + 2 * v306;
      if (v308 < v1791 || v308 + 2 > v1721 || v308 > v308 + 2)
      {
        goto LABEL_3034;
      }

      v309 = HIWORD(v1793);
      v310 = -15;
    }

    else
    {
      v303 = v1794 - v1793;
      if (v303 < 0x8000)
      {
        if (v303 <= -32769)
        {
          v1742 = 1;
          v303 = 0x8000;
        }
      }

      else
      {
        v1742 = 1;
        v303 = 0x7FFF;
      }

      LODWORD(v1701) = v303;
      if (v289 == -32768)
      {
        v1742 = 1;
        v307 = -32768;
      }

      else
      {
        v307 = (v289 - 1);
      }

      v308 = v1791 + 2 * v307;
      if (v308 < v1791 || v308 + 2 > v1721 || v308 > v308 + 2)
      {
        goto LABEL_3034;
      }

      v309 = v1794;
      v310 = -16;
    }

    v311 = *v308;
    if (v311 == 0x7FFF)
    {
      v1742 = 1;
      v312 = 0x7FFF;
    }

    else
    {
      v312 = (v311 + 1);
    }

    v313 = v312 - v309;
    if (v313 < 0x8000)
    {
      if (v313 <= -32769)
      {
        v1742 = 1;
        v313 = 0x8000;
      }
    }

    else
    {
      v1742 = 1;
      v313 = 0x7FFF;
    }

    LODWORD(v1700) = v313;
    if (v289 > 0)
    {
      v314 = 0;
      v315 = 0;
      v316 = 0;
      LODWORD(v1738) = 0;
      v317 = 0;
      v318 = 0;
      while (1)
      {
        if (((v315 - 8) & 0x8000) != 0)
        {
          goto LABEL_551;
        }

        LOWORD(v319) = v315 - v289;
        if (v315 - v289 > -32769)
        {
          v319 = v319;
        }

        else
        {
          v1742 = 1;
          v319 = -32768;
        }

        v320 = v319 + v1755;
        if (v320 >= 0x8000)
        {
          goto LABEL_549;
        }

        if (v320 > -32769)
        {
          if ((v320 & 0x80000000) == 0)
          {
            goto LABEL_551;
          }
        }

        else
        {
          v1742 = 1;
        }

        v321 = v1772 + v314;
        if ((v1772 + v314) < v1772)
        {
          goto LABEL_3034;
        }

        if (v321 + 4 > v1773)
        {
          goto LABEL_3034;
        }

        if (v321 > v321 + 4)
        {
          goto LABEL_3034;
        }

        v322 = v1772 + v314;
        v324 = &v1771 + v314 + 12;
        v323 = *(v1772 + v314);
        if ((&v1771 + v314 + 12) < v1772 || v322 > v1773 || v324 > v322)
        {
          goto LABEL_3034;
        }

        v325 = *v324;
        v326 = v323 - *v324;
        if ((v325 ^ v323) < 0 && (v326 ^ v323) < 0)
        {
          v326 = (v323 >> 31) ^ 0x7FFFFFFF;
          v1742 = 1;
        }

        v327 = v326 >= 0 ? v326 : -v326;
        v328 = v326 == 0x80000000 ? 0x7FFFFFFF : v327;
        v318 += v328;
        if (((v323 ^ v317) & 0x80000000) == 0 && ((v323 + v317) ^ v317) < 0)
        {
          break;
        }

        v317 += v323;
LABEL_551:
        v329 = v310 + v315;
        if (v329 >= 0x8000)
        {
          v1742 = 1;
LABEL_556:
          v330 = (v1773 + v314);
          if ((v1773 + v314) < v1773 || v330 + 1 > &v1774 || v330 > v330 + 1)
          {
            goto LABEL_3034;
          }

          v331 = *v330;
          v332 = v331 - 0x20000000;
          v333 = 4 * v331;
          v334 = (v331 >> 31) ^ 0x7FFFFFFF;
          if (v332 >> 30 == 3)
          {
            v335 = v333;
          }

          else
          {
            v335 = v334;
          }

          if ((v335 ^ v316) < 0 || (((v335 + v316) ^ v316) & 0x80000000) == 0)
          {
            v316 += v335;
            goto LABEL_578;
          }

          v316 = (v316 >> 31) ^ 0x7FFFFFFF;
LABEL_575:
          v1742 = 1;
          goto LABEL_578;
        }

        if (v329 > -32769)
        {
          if ((v329 & 0x80000000) == 0)
          {
            goto LABEL_556;
          }
        }

        else
        {
          v1742 = 1;
        }

        if (((v315 - 8) & 0x80000000) == 0)
        {
          v336 = (v1773 + v314);
          if ((v1773 + v314) < v1773 || v336 + 1 > &v1774 || v336 > v336 + 1)
          {
            goto LABEL_3034;
          }

          v337 = *v336;
          v338 = v337 - 0x20000000;
          v339 = 4 * v337;
          v340 = (v337 >> 31) ^ 0x7FFFFFFF;
          if (v338 >> 30 == 3)
          {
            v341 = v339;
          }

          else
          {
            v341 = v340;
          }

          if (((v341 ^ v1738) & 0x80000000) != 0 || (((v341 + v1738) ^ v1738) & 0x80000000) == 0)
          {
            LODWORD(v1738) = v341 + v1738;
            goto LABEL_578;
          }

          LODWORD(v1738) = (v1738 >> 31) ^ 0x7FFFFFFF;
          goto LABEL_575;
        }

LABEL_578:
        ++v315;
        v314 += 4;
        if (4 * v289 == v314)
        {
          goto LABEL_581;
        }
      }

      v317 = (v317 >> 31) ^ 0x7FFFFFFF;
LABEL_549:
      v1742 = 1;
      goto LABEL_551;
    }

    v318 = 0;
    v317 = 0;
    LODWORD(v1738) = 0;
    v316 = 0;
LABEL_581:
    LODWORD(v1719) = v317;
    v1739 = v1770;
    mvi2i(v1770, v1772, v1769, v1770, v289);
    v342 = v1738;
    if (v316 > v1738)
    {
      v342 = v316;
    }

    v343 = v1701;
    if (v343 <= v1700)
    {
      v344 = v1700;
    }

    else
    {
      v344 = v1701;
    }

    if (v342)
    {
      if (v342 == -1)
      {
        LOWORD(v342) = 31;
      }

      else
      {
        v345 = v342 ^ (v342 >> 31);
        if (v345 > 0x3FFFFFFF)
        {
          LOWORD(v342) = 0;
        }

        else
        {
          v342 = 0;
          do
          {
            v346 = v345 >> 29;
            v345 *= 2;
            ++v342;
          }

          while (!v346);
        }
      }
    }

    if (v344)
    {
      if (v344 == 0xFFFF)
      {
        v344 = 15;
      }

      else
      {
        v370 = (v344 ^ (v344 >> 15));
        if (v370 >= 0x4000)
        {
          v344 = 0;
        }

        else
        {
          v344 = 0;
          do
          {
            v370 = (2 * v370);
            ++v344;
          }

          while (v370 < 0x4000);
        }
      }
    }

    v371 = v342;
    v372 = L_shl(v316, v342);
    v373 = v344;
    v374 = shl(v343, v344, &v1742);
    if (v372 == 0x80000000 && v374 == -32768)
    {
      v375 = 0x7FFFFFFF;
    }

    else
    {
      v375 = ((v372 * v374) >> 15) + 2 * v374 * (v372 >> 16);
    }

    v376 = L_shl(v1738, v371);
    v377 = shl(v1700, v373, &v1742);
    if (v376 == 0x80000000 && v377 == -32768)
    {
      v378 = 0x7FFFFFFF;
    }

    else
    {
      v378 = ((v376 * v377) >> 15) + 2 * v377 * (v376 >> 16);
    }

    v379 = v375 - v378;
    if ((v378 ^ v375) < 0 && (v379 ^ v375) < 0)
    {
      v379 = (v375 >> 31) ^ 0x7FFFFFFF;
      v1742 = 1;
    }

    LODWORD(v1733) = v1755;
    v380 = v289 - v1755;
    if (v380 >= 0x8000)
    {
      v1742 = 1;
      goto LABEL_840;
    }

    LODWORD(v1732) = v379;
    v381 = v289 - v1755;
    if (v380 > -32769)
    {
      v382 = v289 - v1755;
    }

    else
    {
      v1742 = 1;
      v382 = 0x8000;
    }

    if (v289 <= v382)
    {
LABEL_840:
      if (v289 >= 1)
      {
        v451 = 0;
        v452 = 0;
        v453 = 0;
        v454 = 0;
        if (SHIWORD(v1759) <= 1)
        {
          v455 = 1;
        }

        else
        {
          v455 = SHIWORD(v1759);
        }

        v456 = v1772;
        while (1)
        {
          if (v451 > -32763)
          {
            v460 = v456 + 1 <= v1773 && v456 <= v456 + 1 && v456 >= v1772;
            if (((v451 - 6) & 0x8000) == 0)
            {
              if (!v460)
              {
                goto LABEL_3034;
              }

              if (((*v456 ^ v452) & 0x80000000) != 0 || (((*v456 + v452) ^ v452) & 0x80000000) == 0)
              {
                v461 = v454;
                v462 = v453;
                v452 += *v456;
              }

              else
              {
                v452 = (v452 >> 31) ^ 0x7FFFFFFF;
                v1742 = 1;
                v461 = v454;
                v462 = v453;
              }

              goto LABEL_876;
            }

            if (!v460)
            {
              goto LABEL_3034;
            }

            v457 = v1772 + v451;
          }

          else
          {
            v1742 = 1;
            if (v456 < v1772)
            {
              goto LABEL_3034;
            }

            if (v456 + 1 > v1773)
            {
              goto LABEL_3034;
            }

            v457 = v456;
            if (v456 > v456 + 1)
            {
              goto LABEL_3034;
            }
          }

          v461 = *v457;
          v462 = (v461 + v453);
          if (((v461 ^ v453) & 0x80000000) == 0 && ((v462 ^ v453) & 0x80000000) != 0)
          {
            v462 = (v453 >> 31) ^ 0x7FFFFFFFu;
            v1742 = 1;
          }

          v463 = v461 - v454;
          if (((v454 ^ v461) & 0x80000000) != 0 && ((v463 ^ v461) & 0x80000000) != 0)
          {
            v1742 = 1;
            if ((v461 & 0x80000000) != 0)
            {
              goto LABEL_874;
            }
          }

          else if (v463 < 1)
          {
LABEL_874:
            v461 = v454;
          }

LABEL_876:
          ++v451;
          ++v456;
          v453 = v462;
          v454 = v461;
          if (v455 == v451)
          {
            goto LABEL_879;
          }
        }
      }

      LODWORD(v461) = 0;
      LODWORD(v462) = 0;
      v452 = 0;
LABEL_879:
      v1737 = v461;
      v1736 = SWORD1(v461);
      v464 = 49152 * SWORD1(v461) + ((24576 * v461) >> 15);
      v465 = v462 >> 1;
      v466 = (v462 >> 1) - v452;
      if ((v452 ^ (v462 >> 1)) < 0 && (v466 ^ (v462 >> 1)) < 0)
      {
        v1742 = 1;
        if (v465 < 0)
        {
          goto LABEL_894;
        }
      }

      else if (v466 < 1)
      {
        goto LABEL_894;
      }

      v467 = v464 - (v462 >> 2);
      if (((v464 ^ (v462 >> 2)) & 0x80000000) != 0 && ((v467 ^ v464) & 0x80000000) != 0)
      {
        v1742 = 1;
        if ((v464 & 0x80000000) != 0)
        {
          goto LABEL_894;
        }
      }

      else if (v467 < 1)
      {
        goto LABEL_894;
      }

      v468 = 39322 * v1736 + ((19661 * v1737) >> 15);
      v469 = v465 - v468;
      if ((v468 ^ v465) < 0 && (v469 ^ v465) < 0)
      {
        v1742 = 1;
        if (v465 < 0)
        {
          goto LABEL_910;
        }
      }

      else if (v469 < 0)
      {
        goto LABEL_910;
      }

LABEL_894:
      v470 = (v452 >> 1) - v462;
      if (((v462 ^ (v452 >> 1)) & 0x80000000) != 0 && (v470 ^ (v452 >> 1)) < 0)
      {
        v1742 = 1;
        if (v452 >> 1 < 0)
        {
          goto LABEL_904;
        }
      }

      else if (v470 < 1)
      {
        goto LABEL_904;
      }

      v471 = 49152 * (v462 >> 16) + ((24576 * v462) >> 15);
      v472 = (v452 >> 3) - v471;
      if (((v471 ^ (v452 >> 3)) & 0x80000000) != 0 && ((v472 ^ (v452 >> 3)) & 0x80000000) != 0)
      {
        v1742 = 1;
        if (((v452 >> 3) & 0x80000000) == 0)
        {
          goto LABEL_904;
        }
      }

      else if ((v472 & 0x80000000) == 0)
      {
        goto LABEL_904;
      }

      v473 = v464 - (v462 >> 2);
      if (((v464 ^ (v462 >> 2)) & 0x80000000) != 0 && ((v473 ^ v464) & 0x80000000) != 0)
      {
        v1742 = 1;
        if ((v464 & 0x80000000) != 0)
        {
          goto LABEL_904;
        }

        goto LABEL_910;
      }

      if (v473 >= 1)
      {
LABEL_910:
        v474 = 0;
        v475 = v462 - 0x40000000;
        v476 = 2 * v462;
        if (v462 >= 0)
        {
          v477 = 2147418112;
        }

        else
        {
          v477 = 0x80000000;
        }

        if (v475 >= 0)
        {
          v478 = v477;
        }

        else
        {
          v478 = v476;
        }

        v479 = ((v478 >> 31) ^ HIWORD(v478));
        while (v478 >= 0x10000)
        {
          v483 = v479;
          v484 = HIWORD(v478);
          if (HIWORD(v478))
          {
            if (v484 == 0xFFFF)
            {
              LOWORD(v484) = 15;
            }

            else if (v483 >= 0x4000)
            {
              LOWORD(v484) = 0;
            }

            else
            {
              LOWORD(v485) = v483;
              LOWORD(v484) = 0;
              do
              {
                v485 = (2 * v485);
                LOWORD(v484) = v484 + 1;
              }

              while (v485 < 0x4000);
            }
          }

          v486 = shl((v478 >> 16), v484, &v1742);
          v481 = div_s(0x4000, v486);
          if (v484 > -32739)
          {
            v480 = v484 - 1;
          }

          else
          {
            v1742 = 1;
            v480 = -32739;
          }

          v479 = v483;
          if (v461 != 0x80000000 || v481 != -32768)
          {
            goto LABEL_919;
          }

          v482 = 0x7FFFFFFF;
LABEL_934:
          v487 = v1769 + v474;
          if (v487 < v1769 || (v487 + 1) > v1739 || v487 > v487 + 1)
          {
            goto LABEL_3034;
          }

          v488 = L_shl(12 * (v482 >> 16) + ((6 * v482) >> 15), v480);
          if (v488 >= 19661)
          {
            v489 = 19661;
          }

          else
          {
            v489 = v488;
          }

          if (*v487 == 0x80000000 && v489 == 0x8000)
          {
            v490 = 0x7FFFFFFF;
          }

          else
          {
            v491 = 2 * v489 * (*v487 >> 16) + ((*v487 * v489) >> 15);
            v492 = v491 - 0x40000000;
            v493 = 2 * v491;
            v490 = (v491 >> 31) ^ 0x7FFFFFFF;
            if (v492 < 0)
            {
              v490 = v493;
            }
          }

          *(v1769 + v474++) = v490;
          if (v474 == 6)
          {
            v287 = 1;
            goto LABEL_947;
          }
        }

        v480 = 28;
        v481 = 0x7FFF;
LABEL_919:
        v482 = ((v1737 * v481) >> 15) + 2 * v481 * v1736;
        goto LABEL_934;
      }

LABEL_904:
      v287 = 0;
LABEL_947:
      v494 = SHIWORD(v1759);
      if (SHIWORD(v1759) >= 1)
      {
        v495 = v1769;
        v496 = v1779;
        v497 = SHIWORD(v1759);
        v498 = v1739;
        do
        {
          v499 = v495 + 1;
          v501 = v495 < v1769 || v499 > v498 || v495 > v499;
          v502 = v496 + 1;
          if (v501 || v496 < v1779 || v502 > v1780 || v496 > v502)
          {
            goto LABEL_3034;
          }

          v506 = *v495++;
          v507 = vcvtd_n_f64_s32(v506, 0xEuLL);
          *v496++ = v507;
          --v497;
        }

        while (v497);
      }

      v508 = v1738 * 16.0;
      v509 = v316 * 16.0;
      hq2_bit_alloc(v1779, v1780, v494, v1787, v1788, &v1760, v1796, v1797, v1747, v1790, v1730, *v1709, v1711[0], *(v1726 + 130), 0);
      v510 = 0;
      v511 = 1;
      do
      {
        v512 = v511;
        v513 = (v1726 + 52240 + 2 * v510);
        if ((v513 + 1) > v1726 + 52244 || v513 > v513 + 1)
        {
          goto LABEL_3034;
        }

        push_indice(v1726, 1055, *v513, 1);
        v511 = 0;
        v510 = 1;
      }

      while ((v512 & 1) != 0);
      goto LABEL_1286;
    }

    if ((v1719 & 0x80000000) == 0)
    {
      v383 = 2147418112;
    }

    else
    {
      v383 = 0x80000000;
    }

    if (v1719 - 0x40000000 < 0)
    {
      v383 = 2 * v1719;
    }

    __N = v1797;
    v1736 = v1773;
    v1737 = v1726 + 52240;
    v1728 = v1726 + 52244;
    v384 = v382;
    LODWORD(v1714) = v383 >> 16;
    LODWORD(__src) = (((v383 >> 16) >> 15) ^ HIWORD(v383));
    v1723 = HIWORD(v318);
    v1722 = v318;
    v385 = v383;
    v1710 = v1719;
    v1708 = SWORD1(v1719);
    LODWORD(v1720) = v381;
    v387 = v381 < -32768 || v381 < -32760;
    LODWORD(v1725) = v387;
    LODWORD(v1729) = v289 - v1755;
    LODWORD(v1724) = v381 - 8;
    LODWORD(v1717) = v383;
    while (1)
    {
      v388 = v1796 + v384;
      v389 = (v388 + 1);
      if (v388 < v1796 || v389 > __N || v388 > v389)
      {
        goto LABEL_3034;
      }

      v392 = *v388;
      if (v392 == 0x8000)
      {
        v1742 = 1;
        v393 = __src;
        if (v1732 <= 0)
        {
          goto LABEL_700;
        }
      }

      else
      {
        v397 = v392 != 1 && v1732 < 1;
        v393 = __src;
        if (v397)
        {
LABEL_700:
          LOWORD(v398) = 0x4000;
          goto LABEL_739;
        }
      }

      v394 = v1724;
      if (v1725)
      {
        v1742 = 1;
        v394 = 0x8000;
      }

      if (v385 >= 0x10000)
      {
        v399 = HIWORD(v385);
        if (v399)
        {
          if (v399 == 0xFFFF)
          {
            LOWORD(v399) = 15;
          }

          else if (v393 >= 0x4000)
          {
            LOWORD(v399) = 0;
          }

          else
          {
            LOWORD(v399) = 0;
            do
            {
              v393 = (2 * v393);
              LOWORD(v399) = v399 + 1;
            }

            while (v393 < 0x4000);
          }
        }

        v400 = shl(v1714, v399, &v1742);
        v396 = div_s(0x4000, v400);
        if (v399 > -32739)
        {
          v395 = (29 - v399);
        }

        else
        {
          v1742 = 1;
          v395 = 0x7FFF;
        }

        v385 = v1717;
      }

      else
      {
        v395 = 0;
        v396 = 0x7FFF;
      }

      v401 = v1772 + v384;
      if (v401 < v1772 || (v401 + 1) > v1736 || v401 > v401 + 1)
      {
        goto LABEL_3034;
      }

      v402 = *v401;
      if (v402 == 0x80000000 && v396 == -32768)
      {
        v403 = 0x7FFFFFFF;
      }

      else
      {
        v403 = ((v402 * v396) >> 15) + 2 * v396 * (v402 >> 16);
        if (v403 == 0x80000000 && v394 == 0x8000)
        {
          v404 = 0x7FFFFFFF;
          goto LABEL_723;
        }
      }

      v404 = ((v403 * v394) >> 15) + 2 * v394 * (v403 >> 16);
LABEL_723:
      if (v395 > -32736)
      {
        v405 = 32 - v395;
      }

      else
      {
        v1742 = 1;
        v405 = 0x7FFF;
      }

      v406 = L_shl((SHIWORD(v404) << 15) | (v404 >> 1), v405);
      if (v406 >= 6554)
      {
        v407 = 6554;
      }

      else
      {
        v407 = v406;
      }

      v408 = 2 * v1723 * v396 + ((v1722 * v396) >> 15);
      if (v408 == 0x80000000 && v407 == 0x8000)
      {
        v409 = 0x7FFFFFFF;
      }

      else
      {
        v409 = ((v408 * v407) >> 15) + 2 * v407 * (v408 >> 16);
      }

      v410 = L_shl(v409, (15 - v395));
      if (v410 >= 13107)
      {
        v411 = 13107;
      }

      else
      {
        v411 = v410;
      }

      if ((v411 >> 1) < 0x4000)
      {
        v398 = (v411 >> 1) + 0x4000;
      }

      else
      {
        v1742 = 1;
        LOWORD(v398) = 0x7FFF;
      }

LABEL_739:
      v412 = v384 - v289;
      if (v412 < 0x8000)
      {
        if (v412 > -32769)
        {
          v412 = v412;
        }

        else
        {
          v1742 = 1;
          v412 = -32768;
        }
      }

      else
      {
        v1742 = 1;
        v412 = 0x7FFF;
      }

      v413 = v412 + v1733;
      if (v413 >= 0x8000)
      {
        v1742 = 1;
LABEL_749:
        if (v1729 <= -32769)
        {
          v1742 = 1;
          v414 = -32768;
          goto LABEL_753;
        }

        v414 = v1720;
        if (v1720 < 0x7FFF)
        {
LABEL_753:
          v415 = (v414 + 1);
        }

        else
        {
          v1742 = 1;
          v415 = 0x7FFF;
          v414 = v1720;
        }

        LODWORD(v416) = v384 - v415;
        if (v416 < 0x8000)
        {
          if (v416 > -32769)
          {
            v416 = v416;
          }

          else
          {
            v1742 = 1;
            v416 = -32768;
          }
        }

        else
        {
          v1742 = 1;
          v416 = 0x7FFFLL;
        }

        v417 = (v1737 + 2 * v416);
        if ((v417 + 1) > v1728 || v417 > v417 + 1 || v417 < v1737)
        {
          goto LABEL_3034;
        }

        v418 = *v417;
        if (v418 == 0x8000)
        {
          v419 = 0;
          v1742 = 1;
        }

        else
        {
          v419 = v418 == 1;
        }

        if (v414 <= -32761)
        {
          v1742 = 1;
          v420 = 0x8000;
          if (!v419)
          {
            goto LABEL_767;
          }

LABEL_770:
          v423 = v1772 + v384;
          if (v423 < v1772 || (v423 + 1) > v1736 || v423 > v423 + 1)
          {
            goto LABEL_3034;
          }

          v424 = *v423;
          if (v424 == 0x80000000 && v420 == 0x8000)
          {
            LOWORD(v425) = 0x7FFF;
            goto LABEL_776;
          }

          v425 = ((v424 * v420) >> 15) + 2 * v420 * (v424 >> 16);
          if (v425)
          {
            if (v425 <= -32768)
            {
              v425 = -32768;
            }

            if (v425 >= 0x7FFF)
            {
              LOWORD(v425) = 0x7FFF;
            }

            if (v425 == 0xFFFF)
            {
              v427 = 15;
            }

            else
            {
LABEL_776:
              v426 = (v425 ^ (v425 >> 15));
              if (v426 >= 0x4000)
              {
                v427 = 0;
              }

              else
              {
                v427 = 0;
                do
                {
                  v426 = (2 * v426);
                  ++v427;
                }

                while (v426 < 0x4000);
              }
            }

            v432 = shl(v425, v427, &v1742);
            v431 = div_s(0x4000, v432);
            if (v427 > -32739)
            {
              v430 = v427 - 15;
            }

            else
            {
              v1742 = 1;
              v430 = -32753;
            }

            if (v1719 == 0x80000000 && v431 == -32768)
            {
              v433 = 0x7FFFFFFF;
              goto LABEL_803;
            }
          }

          else
          {
            v430 = 14;
            v431 = 0x7FFF;
          }

          v433 = ((v1710 * v431) >> 15) + 2 * v431 * v1708;
LABEL_803:
          v434 = L_shl(v433, v430);
          if (v434 <= 0x4000)
          {
            v435 = 0x4000;
          }

          else
          {
            v435 = v434;
          }

          v436 = v435 < 20480;
          v437 = 20480;
LABEL_826:
          if (!v436)
          {
            v435 = v437;
          }

          v444 = v435 * v398;
          if (v444 >= 0)
          {
            LOWORD(v398) = v444 >> 14;
          }

          else
          {
            LOWORD(v398) = v444 >> 14;
          }

          goto LABEL_831;
        }

        v420 = v414 - 8;
        if (v419)
        {
          goto LABEL_770;
        }

LABEL_767:
        if (v385 >= 0x10000)
        {
          v428 = HIWORD(v385);
          LOWORD(v429) = __src;
          if (v428)
          {
            if (v428 == 0xFFFF)
            {
              LOWORD(v428) = 15;
            }

            else if (__src >= 0x4000)
            {
              LOWORD(v428) = 0;
            }

            else
            {
              LOWORD(v428) = 0;
              do
              {
                v429 = (2 * v429);
                LOWORD(v428) = v428 + 1;
              }

              while (v429 < 0x4000);
            }
          }

          v438 = shl(v1714, v428, &v1742);
          v421 = div_s(0x4000, v438);
          if (v428 > -32739)
          {
            v422 = v428;
          }

          else
          {
            v1742 = 1;
            v422 = -32738;
          }

          v385 = v1717;
        }

        else
        {
          v421 = 0x7FFF;
          v422 = 29;
        }

        v439 = v1772 + v384;
        if (v439 < v1772 || (v439 + 1) > v1736 || v439 > v439 + 1)
        {
          goto LABEL_3034;
        }

        v440 = *v439;
        if (v440 == 0x80000000 && v421 == -32768)
        {
          v441 = 0x7FFFFFFF;
          goto LABEL_818;
        }

        v441 = ((v440 * v421) >> 15) + 2 * v421 * (v440 >> 16);
        if (v441 == 0x80000000 && v420 == 0x8000)
        {
          v442 = 0x7FFFFFFF;
        }

        else
        {
LABEL_818:
          v442 = ((v441 * v420) >> 15) + 2 * v420 * (v441 >> 16);
        }

        v443 = L_shl(v442, v422);
        if (v443 <= 13926)
        {
          v435 = 13926;
        }

        else
        {
          v435 = v443;
        }

        v436 = v435 < 0x4000;
        v437 = 0x4000;
        goto LABEL_826;
      }

      if (v413 > -32769)
      {
        if (v413 >= 1)
        {
          goto LABEL_749;
        }
      }

      else
      {
        v1742 = 1;
      }

LABEL_831:
      v445 = v1769 + v384;
      if (v445 < v1769 || (v445 + 1) > v1739 || v445 > v445 + 1)
      {
        goto LABEL_3034;
      }

      v446 = *v445;
      if (v446 == 0x80000000 && v398 == 0x8000)
      {
        v447 = 0x7FFFFFFF;
      }

      else
      {
        v448 = 2 * v398 * (v446 >> 16) + ((v446 * v398) >> 15);
        v449 = v448 - 0x40000000;
        v450 = 2 * v448;
        v447 = (v448 >> 31) ^ 0x7FFFFFFF;
        if (v449 < 0)
        {
          v447 = v450;
        }
      }

      *(v1769 + v384++) = v447;
      if (v384 == v289)
      {
        goto LABEL_840;
      }
    }
  }

  v280 = v1726;
  v281 = *(v1726 + 96);
  v282 = *v1712;
  v283 = *v1711;
  if (v281 > 13200)
  {
LABEL_456:
    v286 = *(v280 + 130);
    if (v283 == 2 && v286 == 2 && (v282 == 16400 || v282 == 13200))
    {
      hq2_bit_alloc_har(v1789, v1727, v1760, v1738, v1787, v1788, v1755, v282, v1796, v1797, v1790, v1730);
    }

    else
    {
      hq2_bit_alloc(v1789, v1727, v1738, v1787, v1788, &v1760, v1796, v1797, v1747, v1790, v1730, *v1709, v283, v286, v1713[0]);
    }

    v287 = 0;
    goto LABEL_1285;
  }

  if (v1760 > -32767)
  {
    v284 = v1760 - 2;
  }

  else
  {
    v1742 = 1;
    v284 = 0x8000;
  }

  v1760 = v284;
  v297 = &v1777[2] + 2 * SHIWORD(v1759) + 4;
  if (v297 < v1778)
  {
    goto LABEL_3034;
  }

  v298 = SHIWORD(v1759);
  v299 = 2;
  v300 = &v1777[2] + 2 * SHIWORD(v1759) + 4;
  do
  {
    if (v300 < v297 || v300 + 2 > v1779 || v300 > v300 + 2)
    {
      goto LABEL_3034;
    }

    *v300 = 0;
    v300 += 2;
    --v299;
  }

  while (v299);
  if (v281 == 13200)
  {
    if (v298 > -32767)
    {
      LOWORD(v302) = v298 - 2;
      v301 = v1796 + (v298 - 2);
      if (v301 < v1796)
      {
        goto LABEL_3034;
      }

      v302 = v302;
    }

    else
    {
      v1742 = 1;
      v301 = &v1796[-4096];
      if (&v1796[-4096] < v1796)
      {
        goto LABEL_3034;
      }

      v1742 = 1;
      v302 = -32768;
    }

    v347 = v1778 + v302;
    if (v347 < v1778)
    {
      goto LABEL_3034;
    }

    mvs2s(v301, v1797, v347, v1779, 2);
    v304 = 31130;
    v305 = 13107;
  }

  else
  {
    v304 = 27852;
    v305 = 17203;
  }

  LODWORD(v1732) = v305;
  if (v298 >= 1)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    v351 = 0;
    v352 = 0;
    v353 = v1772;
    while (1)
    {
      v356 = v353 + 1 <= v1773 && v353 <= v353 + 1 && v353 >= v1772;
      if (((v348 - 6) & 0x8000) == 0)
      {
        if (!v356)
        {
          goto LABEL_3034;
        }

        v357 = v353 - 1;
        v358 = *v353;
        if (v353 - 1 < v1772 || v353 > v1773 || v357 > v353)
        {
          goto LABEL_3034;
        }

        v359 = *v357;
        v360 = v358 - *v357;
        if (((v359 ^ v358) & 0x80000000) != 0 && (v360 ^ v358) < 0)
        {
          v360 = (v358 >> 31) ^ 0x7FFFFFFF;
          v1742 = 1;
        }

        if (v360 >= 0)
        {
          v361 = v360;
        }

        else
        {
          v361 = -v360;
        }

        if (v360 == 0x80000000)
        {
          v362 = 0x7FFFFFFF;
        }

        else
        {
          v362 = v361;
        }

        v350 += v362;
        if ((v358 ^ v349) < 0 || (((v358 + v349) ^ v349) & 0x80000000) == 0)
        {
          v363 = v352;
          v364 = v351;
          v349 += v358;
        }

        else
        {
          v349 = (v349 >> 31) ^ 0x7FFFFFFF;
          v1742 = 1;
          v363 = v352;
          v364 = v351;
        }

        goto LABEL_636;
      }

      if (!v356)
      {
        goto LABEL_3034;
      }

      v363 = *v353;
      v364 = (v363 + v351);
      if (((v363 ^ v351) & 0x80000000) == 0 && ((v364 ^ v351) & 0x80000000) != 0)
      {
        v364 = (v351 >> 31) ^ 0x7FFFFFFFu;
        v1742 = 1;
      }

      v365 = v363 - v352;
      if (((v352 ^ v363) & 0x80000000) != 0 && ((v365 ^ v363) & 0x80000000) != 0)
      {
        v1742 = 1;
        if ((v363 & 0x80000000) != 0)
        {
          goto LABEL_635;
        }
      }

      else if (v365 < 1)
      {
LABEL_635:
        v363 = v352;
      }

LABEL_636:
      ++v348;
      ++v353;
      v351 = v364;
      v352 = v363;
      if (v298 == v348)
      {
        goto LABEL_639;
      }
    }
  }

  LODWORD(v363) = 0;
  LODWORD(v364) = 0;
  v350 = 0;
  v349 = 0;
LABEL_639:
  v1739 = v1770;
  mvi2i(v1770, v1772, v1769, v1770, v298);
  v366 = 49152 * SWORD1(v363) + ((24576 * v363) >> 15);
  v367 = (v298 - 6);
  if (v298 > -32763)
  {
    v368 = v367 << 9;
    v369 = v1726;
    if (v367 << 9 != (v367 << 9))
    {
      v1742 = 1;
      if (v367 > 0)
      {
        v368 = 0x7FFF;
LABEL_977:
        v515 = ((v363 * v368) >> 15) + 2 * v368 * SWORD1(v363);
        goto LABEL_978;
      }

      v368 = 0x8000;
    }
  }

  else
  {
    v1742 = 1;
    v368 = 0x8000;
    v369 = v1726;
  }

  if (v363 != 0x80000000 || v368 != 0x8000)
  {
    goto LABEL_977;
  }

  v515 = 0x7FFFFFFF;
LABEL_978:
  v1720 = SHIWORD(v349);
  v516 = v366 - (v364 >> 1);
  if ((v366 ^ (v364 >> 1)) < 0 && (v516 ^ v366) < 0)
  {
    v516 = (v366 >> 31) ^ 0x7FFFFFFF;
    v1742 = 1;
  }

  v1719 = v349;
  v517 = *(v369 + 96);
  v518 = v517 == 13200 && v516 < 0;
  LODWORD(v1736) = (v298 - 6);
  if (v518 || v517 <= 13199)
  {
    v519 = 2252 * v1720 + ((1126 * v1719) >> 15);
    v520 = v515 - v519;
    if (((v519 ^ v515) & 0x80000000) != 0 && ((v520 ^ v515) & 0x80000000) != 0)
    {
      v1742 = 1;
      if ((v515 & 0x80000000) == 0)
      {
        goto LABEL_991;
      }
    }

    else if ((v520 & 0x80000000) == 0)
    {
      goto LABEL_991;
    }

    v577 = v515 - (v349 >> 7);
    if ((v515 ^ (v349 >> 7)) < 0 && (v577 ^ v515) < 0)
    {
      v1742 = 1;
      if (v515 < 0)
      {
        goto LABEL_991;
      }
    }

    else if (v577 < 1)
    {
      goto LABEL_991;
    }

    if (v298 < 7)
    {
      goto LABEL_1210;
    }

    v578 = 49152 * v1720 + ((24576 * v1719) >> 15);
    v579 = v363 == 0x80000000 && v1736 == -32768;
    v580 = v579;
    LODWORD(v1738) = v580;
    v581 = 2 * SWORD1(v363) * v1736 + ((v363 * v1736) >> 15);
    LODWORD(v1736) = v581 - 0x20000;
    LODWORD(__src) = (v581 >> 31) ^ 0x7FFF;
    v582 = v581 << 14;
    v583 = 6;
    LODWORD(v1737) = v581 << 14;
    while (1)
    {
      v584 = v1772 + v583;
      v585 = v584 + 1;
      if (v584 < v1772 || v585 > v1773 || v584 > v585)
      {
        goto LABEL_3034;
      }

      v588 = *v584;
      v589 = (*v584 >> 1) - v578;
      if (((v578 ^ (*v584 >> 1)) & 0x80000000) != 0 && ((v589 ^ (v588 >> 1)) & 0x80000000) != 0)
      {
        v1742 = 1;
        if (v588 >> 1 < 0)
        {
          goto LABEL_1176;
        }
      }

      else if ((v589 & 0x80000000) != 0)
      {
LABEL_1176:
        if (v1738)
        {
          LOWORD(v590) = 0x7FFF;
LABEL_1178:
          v591 = (v590 ^ (v590 >> 15));
          if (v591 >= 0x4000)
          {
            v592 = 0;
          }

          else
          {
            v592 = 0;
            do
            {
              v591 = (2 * v591);
              ++v592;
            }

            while (v591 < 0x4000);
          }

          goto LABEL_1191;
        }

        v590 = HIWORD(v582);
        if (v1736 < 0xFFFC0000)
        {
          LOWORD(v590) = __src;
          goto LABEL_1187;
        }

        if (v582 < 0x10000)
        {
          v593 = 13;
          v594 = 0x7FFF;
          goto LABEL_1197;
        }

LABEL_1187:
        if (v590)
        {
          if (v590 != 0xFFFF)
          {
            goto LABEL_1178;
          }

          v592 = 15;
        }

        else
        {
          v592 = v590;
        }

LABEL_1191:
        v595 = shl(v590, v592, &v1742);
        v594 = div_s(0x4000, v595);
        if (v592 > -32739)
        {
          v593 = v592 - 16;
        }

        else
        {
          v1742 = 1;
          v593 = -32754;
        }

        v582 = v1737;
        if (v349 == 0x80000000 && v594 == -32768)
        {
          v596 = 0x7FFFFFFF;
        }

        else
        {
LABEL_1197:
          v596 = ((v1719 * v594) >> 15) + 2 * v594 * v1720;
        }

        v597 = L_shl(v596, v593);
        v598 = v597 + 13107;
        if ((v597 & 0x80000000) == 0 && (v598 ^ v597) < 0)
        {
          v1742 = 1;
          v598 = 0x7FFFFFFF;
        }

        v599 = v1769 + v583;
        if (v599 < v1769 || (v599 + 1) > v1739 || v599 > v599 + 1)
        {
          goto LABEL_3034;
        }

        if (v598 <= 0x4000)
        {
          v598 = 0x4000;
        }

        if (v598 >= v304)
        {
          v598 = v304;
        }

        *v599 = 2 * v598 * (*v599 >> 16) + ((*v599 * v598) >> 15);
      }

      if (++v583 == v298)
      {
        goto LABEL_1210;
      }
    }
  }

LABEL_991:
  __src = HIWORD(v349);
  if (v298 > -32767)
  {
    v521 = v298 - 2;
  }

  else
  {
    v1742 = 1;
    v521 = 0x8000;
  }

  if (v298 > v521)
  {
    v522 = 0;
    v1738 = v1773;
    v523 = (v1726 + 52240);
    v1737 = v1726 + 52244;
    v524 = v521;
    __N = (6554 * HIWORD(v350) + ((3277 * v350) >> 15)) >> 16;
    v1729 = (6554 * HIWORD(v350) + ((3277 * v350) >> 15));
    LODWORD(v1733) = v349 >> 16;
    LODWORD(v1717) = (((v349 >> 16) >> 15) ^ HIWORD(v349));
    v1728 = (13108 * HIWORD(v350) + ((6554 * v350) >> 15)) >> 16;
    v1725 = (13108 * HIWORD(v350) + ((6554 * v350) >> 15));
    LODWORD(v1723) = v1736 << 9;
    LODWORD(v1722) = (v1736 << 9) + 0x8000;
    v1724 = (v1726 + 52240);
    while (1)
    {
      v525 = v1778 + v524;
      v526 = v525 + 1;
      if (v525 < v1778 || v526 > v1779 || v525 > v526)
      {
        goto LABEL_3034;
      }

      v529 = *v525;
      v530 = v1772 + v524;
      if (v529 != 1)
      {
        if (v529 == 0x8000)
        {
          v1742 = 1;
        }

        v531 = 0x4000;
        goto LABEL_1007;
      }

      if (v530 < v1772 || (v530 + 1) > v1738 || v530 > v530 + 1)
      {
        goto LABEL_3034;
      }

      v536 = v1736;
      if (v298 <= -32763)
      {
        v1742 = 1;
        v536 = 0x8000;
      }

      if (*v530 == 0x80000000 && v536 == 0x8000)
      {
        break;
      }

      v537 = 2 * v536 * (*v530 >> 16) + ((*v530 * v536) >> 15);
      if ((v537 - 0x20000) < 0xFFFC0000)
      {
        LODWORD(v537) = (v537 >> 31) ^ 0x7FFF;
        goto LABEL_1082;
      }

      if (v537 << 14 >= 0x10000u)
      {
        LOWORD(v537) = v537 >> 2;
LABEL_1082:
        if (!v537)
        {
          v539 = v537;
LABEL_1086:
          v557 = shl(v537, v539, &v1742);
          v546 = div_s(0x4000, v557);
          if (v539 > -32739)
          {
            v547 = v539 - 17;
          }

          else
          {
            v1742 = 1;
            v547 = -32755;
          }

          goto LABEL_1089;
        }

        if (v537 == 0xFFFF)
        {
          v539 = 15;
          goto LABEL_1086;
        }

LABEL_1023:
        v538 = (v537 ^ (v537 >> 15));
        if (v538 >= 0x4000)
        {
          v539 = 0;
        }

        else
        {
          v539 = 0;
          do
          {
            v538 = (2 * v538);
            ++v539;
          }

          while (v538 < 0x4000);
        }

        goto LABEL_1086;
      }

      v546 = 0x7FFF;
      v547 = 12;
LABEL_1089:
      v558 = L_shl(((v1729 * v546) >> 15) + 2 * v546 * __N, v547);
      if (v349 >= 0x10000)
      {
        if (__src)
        {
          if (__src == 0xFFFF)
          {
            v561 = 15;
          }

          else
          {
            LOWORD(v562) = v1717;
            if (v1717 >= 0x4000)
            {
              v561 = 0;
            }

            else
            {
              v561 = 0;
              do
              {
                v562 = (2 * v562);
                ++v561;
              }

              while (v562 < 0x4000);
            }
          }
        }

        else
        {
          v561 = 0;
        }

        v574 = shl(v1733, v561, &v1742);
        v559 = div_s(0x4000, v574);
        if (v561 > -32739)
        {
          v560 = v561 - 16;
        }

        else
        {
          v1742 = 1;
          v560 = -32754;
        }
      }

      else
      {
        v559 = 0x7FFF;
        v560 = 13;
      }

      v575 = L_shl(((v1725 * v559) >> 15) + 2 * v559 * v1728, v560);
      if (v558 >= v575)
      {
        v576 = v575;
      }

      else
      {
        v576 = v558;
      }

      if (v576 >= 13107)
      {
        LOWORD(v576) = 13107;
      }

      v523 = v1724;
      if (v576 < 0x4000)
      {
        v531 = (v576 + 0x4000);
      }

      else
      {
        v1742 = 1;
        v531 = 0x7FFF;
      }

LABEL_1007:
      v532 = &v523[v522];
      if (v532 < v523 || (v532 + 1) > v1737 || v532 > v532 + 1)
      {
        goto LABEL_3034;
      }

      v533 = *v532;
      if (v533 == 1)
      {
        if (v530 < v1772 || (v530 + 1) > v1738 || v530 > v530 + 1)
        {
          goto LABEL_3034;
        }

        v540 = v1736;
        if (v298 <= -32763)
        {
          v1742 = 1;
          v540 = 0x8000;
        }

        if (*v530 == 0x80000000 && v540 == 0x8000)
        {
          LOWORD(v541) = 0x7FFF;
LABEL_1035:
          v542 = (v541 ^ (v541 >> 15));
          if (v542 >= 0x4000)
          {
            v543 = 0;
          }

          else
          {
            v543 = 0;
            do
            {
              v542 = (2 * v542);
              ++v543;
            }

            while (v542 < 0x4000);
          }

          goto LABEL_1104;
        }

        v541 = 2 * v540 * (*v530 >> 16) + ((*v530 * v540) >> 15);
        if ((v541 - 0x20000) < 0xFFFC0000)
        {
          LODWORD(v541) = (v541 >> 31) ^ 0x7FFF;
          goto LABEL_1100;
        }

        if (v541 << 14 < 0x10000u)
        {
          v548 = 14;
          v549 = 0x7FFF;
          goto LABEL_1110;
        }

        LOWORD(v541) = v541 >> 2;
LABEL_1100:
        if (v541)
        {
          if (v541 != 0xFFFF)
          {
            goto LABEL_1035;
          }

          v543 = 15;
        }

        else
        {
          v543 = v541;
        }

LABEL_1104:
        v563 = shl(v541, v543, &v1742);
        v549 = div_s(0x4000, v563);
        if (v543 > -32739)
        {
          v548 = v543 - 15;
        }

        else
        {
          v1742 = 1;
          v548 = -32753;
        }

        if (v349 == 0x80000000 && v549 == -32768)
        {
          v564 = 0x7FFFFFFF;
        }

        else
        {
LABEL_1110:
          v564 = ((v1719 * v549) >> 15) + 2 * v549 * v1720;
        }

        v565 = L_shl(v564, v548);
        if (v565 <= 0x4000)
        {
          v554 = 0x4000;
        }

        else
        {
          v554 = v565;
        }

        v556 = v1732;
        v555 = v554 < v1732;
        goto LABEL_1115;
      }

      if (v533 == 0x8000)
      {
        v1742 = 1;
      }

      if (v349 >= 0x10000)
      {
        if (__src)
        {
          if (__src == 0xFFFF)
          {
            v544 = 15;
          }

          else
          {
            LOWORD(v545) = v1717;
            if (v1717 >= 0x4000)
            {
              v544 = 0;
            }

            else
            {
              v544 = 0;
              do
              {
                v545 = (2 * v545);
                ++v544;
              }

              while (v545 < 0x4000);
            }
          }
        }

        else
        {
          v544 = 0;
        }

        v550 = shl(v1733, v544, &v1742);
        v534 = div_s(0x4000, v550);
        if (v544 > -32739)
        {
          v535 = v544 - 10;
        }

        else
        {
          v1742 = 1;
          v535 = -32748;
        }
      }

      else
      {
        v534 = 0x7FFF;
        v535 = 19;
      }

      if (v530 < v1772 || (v530 + 1) > v1738 || v530 > v530 + 1)
      {
        goto LABEL_3034;
      }

      if (*v530 == 0x80000000 && v534 == -32768)
      {
        v551 = 0x7FFFFFFF;
      }

      else
      {
        v551 = ((*v530 * v534) >> 15) + 2 * v534 * (*v530 >> 16);
      }

      v552 = L_shl(v551, v535);
      if (v298 > -32763)
      {
        v553 = v1723;
        if (v1722 < 0x10000)
        {
          goto LABEL_1072;
        }

        v1742 = 1;
        if (v1736 > 0)
        {
          v553 = 0x7FFF;
LABEL_1077:
          v554 = ((v552 * v553) >> 15) + 2 * v553 * (v552 >> 16);
          goto LABEL_1078;
        }
      }

      else
      {
        v1742 = 1;
      }

      v553 = 0x8000;
LABEL_1072:
      if (v552 != 0x80000000 || v553 != 0x8000)
      {
        goto LABEL_1077;
      }

      v554 = 0x7FFFFFFF;
LABEL_1078:
      if (v554 <= 13926)
      {
        v554 = 13926;
      }

      v555 = v554 < 0x4000;
      v556 = 0x4000;
LABEL_1115:
      if (!v555)
      {
        v554 = v556;
      }

      v566 = (v554 * v531) >> 15;
      if ((v566 & 0x10000) != 0)
      {
        v566 |= 0xFFFF0000;
      }

      if (v566 >= 0x8000)
      {
        v1742 = 1;
LABEL_1121:
        v567 = 0x7FFF;
        goto LABEL_1127;
      }

      if (v566 <= -32769)
      {
        v1742 = 1;
LABEL_1124:
        v567 = 0x8000;
        goto LABEL_1127;
      }

      if (2 * v566 != (2 * v566))
      {
        v1742 = 1;
        if (v566 >= 1)
        {
          goto LABEL_1121;
        }

        goto LABEL_1124;
      }

      v567 = 2 * v566;
LABEL_1127:
      v568 = v1769 + v524;
      if (v568 < v1769 || (v568 + 1) > v1739 || v568 > v568 + 1)
      {
        goto LABEL_3034;
      }

      v569 = *v568;
      if (v569 == 0x80000000 && v567 == 0x8000)
      {
        v570 = 0x7FFFFFFF;
      }

      else
      {
        v571 = 2 * v567 * (v569 >> 16) + ((v569 * v567) >> 15);
        v572 = v571 - 0x40000000;
        v573 = 2 * v571;
        v570 = (v571 >> 31) ^ 0x7FFFFFFF;
        if (v572 < 0)
        {
          v570 = v573;
        }
      }

      ++v522;
      *(v1769 + v524++) = v570;
      if (v524 >= v298)
      {
        goto LABEL_1210;
      }
    }

    LOWORD(v537) = 0x7FFF;
    goto LABEL_1023;
  }

LABEL_1210:
  if (v298 >= 1)
  {
    v600 = 0;
    v601 = 0;
    v602 = 0;
    v603 = 0;
    if (SHIWORD(v1759) <= 1)
    {
      v604 = 1;
    }

    else
    {
      v604 = SHIWORD(v1759);
    }

    v605 = v1772;
    while (1)
    {
      if (v600 > -32766)
      {
        v609 = v605 + 1 <= v1773 && v605 <= v605 + 1 && v605 >= v1772;
        if (((v600 - 3) & 0x8000) == 0)
        {
          if (!v609)
          {
            goto LABEL_3034;
          }

          if (((*v605 ^ v601) & 0x80000000) != 0 || (((*v605 + v601) ^ v601) & 0x80000000) == 0)
          {
            v610 = v603;
            v611 = v602;
            v601 += *v605;
          }

          else
          {
            v601 = (v601 >> 31) ^ 0x7FFFFFFF;
            v1742 = 1;
            v610 = v603;
            v611 = v602;
          }

          goto LABEL_1246;
        }

        if (!v609)
        {
          goto LABEL_3034;
        }

        v606 = v1772 + v600;
      }

      else
      {
        v1742 = 1;
        if (v605 < v1772)
        {
          goto LABEL_3034;
        }

        if (v605 + 1 > v1773)
        {
          goto LABEL_3034;
        }

        v606 = v605;
        if (v605 > v605 + 1)
        {
          goto LABEL_3034;
        }
      }

      v610 = *v606;
      v611 = (v602 + (v610 >> 1));
      if (((v602 ^ (v610 >> 1)) & 0x80000000) == 0 && ((v611 ^ v602) & 0x80000000) != 0)
      {
        v611 = (v602 >> 31) ^ 0x7FFFFFFFu;
        v1742 = 1;
      }

      v612 = v610 - v603;
      if (((v603 ^ v610) & 0x80000000) != 0 && ((v612 ^ v610) & 0x80000000) != 0)
      {
        v1742 = 1;
        if ((v610 & 0x80000000) != 0)
        {
          goto LABEL_1244;
        }
      }

      else if (v612 < 1)
      {
LABEL_1244:
        v610 = v603;
      }

LABEL_1246:
      ++v600;
      ++v605;
      v602 = v611;
      v603 = v610;
      if (v604 == v600)
      {
        goto LABEL_1249;
      }
    }
  }

  LODWORD(v610) = 0;
  LODWORD(v611) = 0;
  v601 = 0;
LABEL_1249:
  LODWORD(v1738) = v611 >> 16;
  v613 = 49152 * (v611 >> 16) + ((24576 * v611) >> 15);
  v614 = (v601 >> 2) - v613;
  if (((v613 ^ (v601 >> 2)) & 0x80000000) != 0 && (v614 ^ (v601 >> 2)) < 0)
  {
    v1742 = 1;
    if (v601 >> 2 < 0)
    {
      goto LABEL_1259;
    }
  }

  else if (v614 < 1)
  {
    goto LABEL_1259;
  }

  v615 = (v601 >> 4) - v613;
  if (((v613 ^ (v601 >> 4)) & 0x80000000) != 0 && ((v615 ^ (v601 >> 4)) & 0x80000000) != 0)
  {
    v1742 = 1;
    if (((v601 >> 4) & 0x80000000) == 0)
    {
      goto LABEL_1259;
    }
  }

  else if ((v615 & 0x80000000) == 0)
  {
    goto LABEL_1259;
  }

  v1445 = 56524 * SWORD1(v610) + ((28262 * v610) >> 15);
  v1446 = v1445 - v611;
  if (((v611 ^ v1445) & 0x80000000) != 0 && ((v1446 ^ v1445) & 0x80000000) != 0)
  {
    v1742 = 1;
    if ((v1445 & 0x80000000) != 0)
    {
      goto LABEL_1259;
    }

    goto LABEL_3003;
  }

  if (v1446 < 1)
  {
LABEL_1259:
    v287 = 0;
    goto LABEL_1260;
  }

LABEL_3003:
  v1662 = 0;
  v1663 = ((v611 >> 31) ^ WORD1(v611));
  LODWORD(v1737) = v1663;
  do
  {
    if (v611 >= 0x10000)
    {
      v1667 = WORD1(v611);
      if (WORD1(v611))
      {
        if (v1667 == 0xFFFF)
        {
          LOWORD(v1667) = 15;
        }

        else if (v1663 >= 0x4000)
        {
          LOWORD(v1667) = 0;
        }

        else
        {
          LOWORD(v1667) = 0;
          LOWORD(v1668) = v1663;
          do
          {
            v1668 = (2 * v1668);
            LOWORD(v1667) = v1667 + 1;
          }

          while (v1668 < 0x4000);
        }
      }

      v1669 = shl(v1738, v1667, &v1742);
      v1665 = div_s(0x4000, v1669);
      if (v1667 > -32739)
      {
        v1664 = v1667 - 2;
      }

      else
      {
        v1742 = 1;
        v1664 = -32740;
      }

      v1663 = v1737;
      if (v610 == 0x80000000 && v1665 == -32768)
      {
        v1666 = 0x7FFFFFFF;
        goto LABEL_3021;
      }
    }

    else
    {
      v1664 = 27;
      v1665 = 0x7FFF;
    }

    v1666 = ((v610 * v1665) >> 15) + 2 * v1665 * SWORD1(v610);
LABEL_3021:
    v1670 = v1769 + v1662;
    if (v1670 < v1769 || (v1670 + 1) > v1739 || v1670 > v1670 + 1)
    {
      goto LABEL_3034;
    }

    v1671 = 6 * (v1666 >> 16) + ((3 * v1666) >> 15);
    v1672 = L_shl(37684 * (v1671 >> 16) + ((18842 * v1671) >> 15), v1664);
    if (v1672 >= 19661)
    {
      v1673 = 19661;
    }

    else
    {
      v1673 = v1672;
    }

    if (*v1670 == 0x80000000 && v1673 == 0x8000)
    {
      v1674 = 0x7FFFFFFF;
    }

    else
    {
      v1675 = 2 * v1673 * (*v1670 >> 16) + ((*v1670 * v1673) >> 15);
      v1676 = v1675 - 0x40000000;
      v1677 = 2 * v1675;
      v1674 = (v1675 >> 31) ^ 0x7FFFFFFF;
      if (v1676 < 0)
      {
        v1674 = v1677;
      }
    }

    *(v1769 + v1662++) = v1674;
  }

  while (v1662 != 3);
  v287 = 1;
LABEL_1260:
  v616 = SHIWORD(v1759);
  if (SHIWORD(v1759) >= 1)
  {
    v617 = v1769;
    v618 = v1779;
    v619 = SHIWORD(v1759);
    v620 = v1739;
    do
    {
      v621 = v617 + 1;
      v623 = v617 < v1769 || v621 > v620 || v617 > v621;
      v624 = v618 + 1;
      if (v623 || v618 < v1779 || v624 > v1780 || v618 > v624)
      {
        goto LABEL_3034;
      }

      v628 = *v617++;
      v629 = vcvtd_n_f64_s32(v628, 0xEuLL);
      *v618++ = v629;
      --v619;
    }

    while (v619);
  }

  v630 = v1726;
  hq2_bit_alloc(v1779, v1780, v616, v1787, v1788, &v1760, v1796, v1797, v1747, v1790, v1730, *v1709, v1711[0], *(v1726 + 130), 0);
  v631 = 0;
  v632 = v630 + 52240;
  v633 = v630 + 52244;
  v634 = 1;
  do
  {
    v635 = v634;
    v636 = (v632 + 2 * v631);
    if ((v636 + 1) > v633 || v636 > v636 + 1)
    {
      goto LABEL_3034;
    }

    push_indice(v1726, 1055, *v636, 1);
    v634 = 0;
    v631 = 1;
  }

  while ((v635 & 1) != 0);
LABEL_1285:
  LODWORD(v1701) = 0;
  v508 = 0.0;
  LODWORD(v1700) = 20;
  v509 = 0.0;
LABEL_1286:
  v638 = v1718[2];
  __src = *v1718;
  if (__src < v638)
  {
    goto LABEL_3034;
  }

  v1733 = v1718[1];
  LODWORD(v1707) = v1760;
  v1705 = SHIWORD(v1759);
  v639 = SHIWORD(v1759);
  v1737 = v1788;
  v1736 = v1786;
  v1728 = v1787;
  LODWORD(v1732) = v1755;
  v1714 = v1797;
  v1766 = -1431655766;
  *&v640 = -1;
  *(&v640 + 1) = -1;
  v1809[9] = v640;
  v641 = v1726 + 52240;
  v642 = v1726 + 52244;
  v1809[8] = v640;
  v1809[7] = v640;
  v1809[6] = v640;
  v1809[5] = v640;
  v1809[4] = v640;
  v1809[3] = v640;
  v1809[2] = v640;
  v1809[1] = v640;
  v1809[0] = v640;
  v1808 = v640;
  v1807[10] = v640;
  v1807[9] = v640;
  v1807[8] = v640;
  v1807[7] = v640;
  v1807[6] = v640;
  v1807[5] = v640;
  v1807[4] = v640;
  v1807[3] = v640;
  v1807[2] = v640;
  v1807[1] = v640;
  v1807[0] = v640;
  *&v640 = 0xAAAAAAAAAAAAAAAALL;
  *(&v640 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1806[10] = v640;
  v1806[9] = v640;
  v1806[8] = v640;
  v1806[7] = v640;
  v1806[6] = v640;
  v1806[5] = v640;
  v1806[4] = v640;
  v1806[3] = v640;
  v1806[2] = v640;
  v1806[1] = v640;
  v1806[0] = v640;
  memset(v1847, 255, sizeof(v1847));
  v1765 = NAN;
  *&v643 = 0xAAAAAAAAAAAAAAAALL;
  *(&v643 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1805[11] = v643;
  v1805[10] = v643;
  v1805[9] = v643;
  v1805[8] = v643;
  v1805[7] = v643;
  v1805[6] = v643;
  v1805[5] = v643;
  v1805[4] = v643;
  v1805[3] = v643;
  v1805[2] = v643;
  v1805[1] = v643;
  v1805[0] = v643;
  v1804[17] = v643;
  v1804[16] = v643;
  v1804[15] = v643;
  v1804[14] = v643;
  v1804[13] = v643;
  v1804[12] = v643;
  v1804[11] = v643;
  v1804[10] = v643;
  v1804[9] = v643;
  v1804[8] = v643;
  v1804[7] = v643;
  v1804[6] = v643;
  v1804[5] = v643;
  v1804[4] = v643;
  v1804[3] = v643;
  v1804[2] = v643;
  v1804[1] = v643;
  v1804[0] = v643;
  v1803 = v643;
  v1802 = v643;
  v1717 = &v1801;
  *(&v1801 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v1801 = 0xAAAAAAAAAAAAAAAALL;
  v1764 = -1431655766;
  v1739 = &v1764 + 2;
  v1768 = 0;
  memset(v1845, 255, 0x8C0uLL);
  memset(v1844, 255, 0x8C0uLL);
  memset(v1843, 255, 0x8C0uLL);
  memset(v1798, 170, sizeof(v1798));
  v644 = 0;
  *&v645 = 0xAAAAAAAAAAAAAAAALL;
  *(&v645 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1797[10] = v645;
  v1797[9] = v645;
  v1797[8] = v645;
  v1797[7] = v645;
  v1797[6] = v645;
  v1797[5] = v645;
  v1797[4] = v645;
  v1797[3] = v645;
  v1797[2] = v645;
  v1797[1] = v645;
  v1797[0] = v645;
  v1763 = -1431655766;
  v1762 = -1431655766;
  v1761 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v646 = v1798 + v644 + 2;
    if ((v1798 + v644) < v1798 || v646 > v1799 || v1798 + v644 > v646)
    {
      goto LABEL_3034;
    }

    *(v1798 + v644) = 0;
    v644 += 2;
  }

  while (v644 != 560);
  v1724 = &v1845[140];
  LODWORD(v1846[0]) = 0;
  vDSP_vfill(v1846, v1845, 1, 0x230uLL);
  v1729 = &v1844[140];
  LODWORD(v1846[0]) = 0;
  vDSP_vfill(v1846, v1844, 1, 0x230uLL);
  v1725 = &v1843[140];
  LODWORD(v1846[0]) = 2139095039;
  vDSP_vfill(v1846, v1843, 1, 0x230uLL);
  LODWORD(v1846[0]) = 0;
  vDSP_vfill(v1846, v1807, 1, 0x2CuLL);
  v649 = 0;
  __N = v1807;
  v650 = v1716[0];
  v651 = *v1713;
  do
  {
    v652 = v1806 + v649 + 4;
    if ((v1806 + v649) < v1806 || v652 > v1807 || v1806 + v649 > v652)
    {
      goto LABEL_3034;
    }

    *(v1806 + v649) = 0;
    v649 += 4;
  }

  while (v649 != 176);
  v1719 = v1799;
  LODWORD(v1846[0]) = 0;
  vDSP_vfill(v1846, v1847, 1, 0x280uLL);
  v1768 = 0;
  v656 = v650 > 320 || (v287 | v651) != 0;
  LODWORD(v1708) = v656;
  LOBYTE(v1801) = 7;
  *(&v1801 + 4) = 0;
  bzero(v1799, 0x400uLL);
  *&v1802 = v1799;
  *(&v1802 + 1) = 0xFFFF00000000;
  *(&v1803 + 4) = 0;
  HIDWORD(v1803) = v1707;
  __n = v641;
  v1706 = v642;
  v1722 = v639;
  if (v639 <= 0)
  {
    v658 = 0;
    v670 = 0;
  }

  else
  {
    v657 = 0;
    v658 = 0;
    v659 = v1790;
    do
    {
      v660 = v1787 + v657 + 4;
      v662 = (v1787 + v657) < v1787 || v660 > v1737 || v1787 + v657 > v660;
      v663 = v659 + 1;
      if (v662 || v659 < v1790 || v663 > v1730 || v659 > v663)
      {
        goto LABEL_3034;
      }

      v667 = *(v1787 + v657);
      v668 = ar_div(v667, *v659);
      v669 = v1806 + v657;
      if ((v1806 + v657) < v1806 || (v669 + 4) > __N || v669 > v669 + 4)
      {
        goto LABEL_3034;
      }

      *(v1806 + v657) = v668 >= 49152;
      if (v667 > 0)
      {
        ++v658;
      }

      v657 += 4;
      ++v659;
    }

    while (4 * v639 != v657);
    v670 = 0;
    v671 = v1787;
    v672 = v1722;
    do
    {
      v673 = (v671 + 1);
      if (v671 < v1787 || v673 > v1737 || v671 > v673)
      {
        goto LABEL_3034;
      }

      v676 = *v671++;
      if (v676 > 0)
      {
        ++v670;
      }

      --v672;
    }

    while (v672);
  }

  v677 = v1705 - 1;
  if (((v1705 - 1) & 0x8000) == 0)
  {
    if (v1708)
    {
      v678 = 788480;
    }

    else
    {
      v678 = 0;
    }

    v679 = (v677 & 0x7FFF) + 1;
    v680 = v1787 + (v677 & 0x7FFF);
    while (2)
    {
      v681 = (v680 + 1);
      if (v680 < v1787 || v681 > v1737 || v680 > v681)
      {
        goto LABEL_3034;
      }

      v684 = *v680;
      if (*v680 < 1)
      {
        goto LABEL_1373;
      }

      v685 = ar_div(v678, v670);
      v686 = v684 - v685;
      v687 = v678 >> 31;
      if ((v685 ^ v684) < 0 && (v686 ^ v684) < 0)
      {
        *v680 = 0x7FFFFFFF;
        goto LABEL_1365;
      }

      *v680 = v686;
      if (v686 < 0)
      {
        v689 = v686 ^ v685;
        v690 = (v685 ^ v684) > -1 || v689 < 0;
        v691 = (v685 >> 31) ^ 0x7FFFFFFF;
        if (v690)
        {
          v691 = v684;
        }

        v692 = v687 ^ 0x7FFFFFFF;
        if (((v691 ^ v678) & ((v678 - v691) ^ v678)) < 0)
        {
          v678 = v692;
        }

        else
        {
          v678 -= v691;
        }

        *v680 = 0;
      }

      else
      {
LABEL_1365:
        v688 = v687 ^ 0x7FFFFFFF;
        if (((v678 - v685) ^ v678) >= 0)
        {
          v688 = v678 - v685;
        }

        if ((v685 ^ v678) < 0)
        {
          v678 = v688;
        }

        else
        {
          v678 -= v685;
        }
      }

      if (v670 == 0x8000)
      {
        v670 = 0x8000;
      }

      else
      {
        --v670;
      }

LABEL_1373:
      --v680;
      v16 = v679-- <= 1;
      if (v16)
      {
        break;
      }

      continue;
    }
  }

  if (v1722 > 0x20)
  {
    goto LABEL_3034;
  }

  srt_vec_ind_fx(v1787, v1797, v1786, v1722);
  v1710 = v1791 + 2 * v677;
  if (v1710 < v1791)
  {
    goto LABEL_3034;
  }

  if (v1710 + 2 > v1721)
  {
    goto LABEL_3034;
  }

  if (v1710 > v1710 + 2)
  {
    goto LABEL_3034;
  }

  v693 = v1710;
  v694 = *v1710 + 1;
  LODWORD(v1846[0]) = 0;
  vDSP_vfill(v1846, v1783, 1, v694);
  v696 = *v693;
  v697 = v1716[0];
  v698 = __n;
  v699 = v1706;
  if (v696 <= 0x7FFE)
  {
    if (v1733 < __src)
    {
      goto LABEL_3034;
    }

    v700 = 4 * v696 + 4;
    if (v700 > v1733 - __src)
    {
      goto LABEL_3034;
    }

    if (v696 >= 0x3C0)
    {
      goto LABEL_3034;
    }

    memmove(v1783, __src, 4 * v696 + 4);
    if ((v1783 + v700) < v1783)
    {
      goto LABEL_3034;
    }
  }

  v701 = v1848;
  v1763 = 0;
  v702 = v1722;
  v1738 = v1848;
  if ((v1708 & 1) == 0)
  {
    v1762 = -131072;
    bit_allocation_second_fx(v1787, v1737, v1797, v1722, v1790, v1730, v1786, v695, &v1764, &v1765, v1796, v1714, v1732, v698, v699, v697);
    if (v702 >= 1)
    {
      v747 = 0;
      LODWORD(v1732) = 0;
      v748 = 0;
      v749 = 0;
      v750 = v1786;
      do
      {
        if (v747 - v1764 == (v747 - v1764) && v1764 == v747 || v747 - SHIWORD(v1764) == (v747 - HIWORD(v1764)) && SHIWORD(v1764) == v747)
        {
          if ((v750 + 1) > v1728 || v750 > v750 + 1)
          {
            goto LABEL_3034;
          }

          v751 = v1787 + *v750;
          v752 = (v751 + 1);
          v753 = v751 < v1787 || v752 > v1737;
          if (v753 || v751 > v752)
          {
            goto LABEL_3034;
          }

          v755 = *v751;
          v756 = *v751 + v749;
          if ((v755 ^ v749) < 0 || ((v756 ^ v749) & 0x80000000) == 0)
          {
            v749 = v756;
          }

          else
          {
            v749 = (v749 >> 31) ^ 0x7FFFFFFF;
          }
        }

        else
        {
          if ((v750 + 1) > v1728 || v750 > v750 + 1)
          {
            goto LABEL_3034;
          }

          v757 = v1787 + *v750;
          v758 = (v757 + 1);
          v759 = v757 < v1787 || v758 > v1737;
          if (v759 || v757 > v758)
          {
            goto LABEL_3034;
          }

          v761 = *v757;
          if (((v761 + v748) ^ v748) > -1 || (v761 ^ v748) < 0)
          {
            v748 += v761;
          }

          else
          {
            v748 = (v748 >> 31) ^ 0x7FFFFFFF;
          }

          v763 = v1732;
          v764 = (v1732 + 1);
          if (v1732 == 0x7FFF)
          {
            v764 = 0x7FFF;
          }

          if (v761 >= 1)
          {
            v763 = v764;
          }

          LODWORD(v1732) = v763;
        }

        v765 = v1722;
        ++v747;
        ++v750;
      }

      while (v1722 != v747);
      v766 = 0;
      v767 = 0;
      v1720 = v1810;
      v1723 = v1806;
      v768 = v1786;
      while (v766 == v1764 || v766 == HIWORD(v1764))
      {
LABEL_1673:
        ++v766;
        ++v768;
        if (!--v765)
        {
          goto LABEL_1674;
        }
      }

      if ((v768 + 1) > v1728 || v768 > v768 + 1)
      {
        goto LABEL_3034;
      }

      v770 = *v768;
      v771 = v1787 + v770;
      v772 = (v771 + 1);
      v773 = v771 < v1787 || v772 > v1737;
      if (v773 || v771 > v772)
      {
        goto LABEL_3034;
      }

      v775 = *v771;
      if (v775 >= 1)
      {
        v776 = v1806 + v770;
        if (v776 < v1806 || (v776 + 1) > __N || v776 > v776 + 1)
        {
          goto LABEL_3034;
        }

        v777 = *v776;
        if (!v777)
        {
          v806 = v1790 + 2 * v770;
          if (v806 < v1790)
          {
            goto LABEL_3034;
          }

          if (v806 + 2 > v1730)
          {
            goto LABEL_3034;
          }

          if (v806 > v806 + 2)
          {
            goto LABEL_3034;
          }

          v807 = &v1792 + 2 * v770;
          if (v807 < &v1792 || v807 + 2 > v1741 || v807 > v807 + 2)
          {
            goto LABEL_3034;
          }

          v808 = *(&v1792 + v770);
          v809 = ((v767 + v775) ^ v775) > -1 || (v767 ^ v775) < 0;
          v810 = v809 ? (v767 + v775) : 0x7FFFFFFFLL;
          v811 = v1847 + 4 * v808;
          if (v811 > v1738)
          {
            goto LABEL_3034;
          }

          if (v1847 > v811)
          {
            goto LABEL_3034;
          }

          v784 = *(v1790 + v770);
          v785 = *(v1790 + v770);
          v812 = &v1783[v808];
          if ((v785 & 0x80000000) != 0)
          {
            goto LABEL_3034;
          }

          v813 = 4 * v808;
          if ((2560 - v813) >> 2 < v785)
          {
            goto LABEL_3034;
          }

          if (v812 > *v1740)
          {
            goto LABEL_3034;
          }

          if (v812 < v1783)
          {
            goto LABEL_3034;
          }

          if (v785 > (3840 - v813) >> 2)
          {
            goto LABEL_3034;
          }

          v814 = &v1809[-1] + 4 * v770;
          if (v814)
          {
            if (v814 < &v1808 || v814 + 4 > v1720 || v814 > v814 + 4)
            {
              goto LABEL_3034;
            }
          }

          GetISCScale(v812, v784, v810, v811, v814, &v1762, &v1765, v746, v1804, v1723, 0, &v1766, 0, 0, 0, 0, 0, 0, 0);
          v815 = *v768;
          v816 = v1787 + 4 * v815;
          v817 = v1738;
          if (v816 < v1787 || (v816 + 4) > v1737 || v816 > v816 + 4)
          {
            goto LABEL_3034;
          }

          v818 = *(v1787 + v815);
          v819 = v767 + v818;
          v820 = ((v767 + v818) ^ v818) > -1 || (v767 ^ v818) < 0;
          v821 = (v818 >> 31) ^ 0x7FFFFFFF;
          if (v820)
          {
            v821 = v819;
          }

          if (((v821 ^ v748) & ((v748 - v821) ^ v748)) < 0)
          {
            v748 = (v748 >> 31) ^ 0x7FFFFFFF;
          }

          else
          {
            v748 -= v821;
          }

          v822 = v1785 + 4 * v815;
          if (v822 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v822 + 4) > v1736)
          {
            goto LABEL_3034;
          }

          if (v822 > v822 + 4)
          {
            goto LABEL_3034;
          }

          *(v1785 + v815) = v1765;
          v823 = &v1792 + v815;
          if (v823 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v823 + 1 > v1741)
          {
            goto LABEL_3034;
          }

          if (v823 > v823 + 1)
          {
            goto LABEL_3034;
          }

          v824 = v1847 + *v823;
          if (v824 < v1847)
          {
            goto LABEL_3034;
          }

          encode_position_ari_fx(&v1802, v824, v817, v785, &v1763);
          v825 = *v768;
          v826 = &v1792 + 2 * v825;
          if (v826 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v826 + 2 > v1741)
          {
            goto LABEL_3034;
          }

          if (v826 > v826 + 2)
          {
            goto LABEL_3034;
          }

          v827 = v1785 + v825;
          if (v827 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v827 + 1) > v1736)
          {
            goto LABEL_3034;
          }

          if (v827 > v827 + 1)
          {
            goto LABEL_3034;
          }

          v828 = *(&v1792 + v825);
          v829 = v1847 + 4 * v828;
          if (v785 > 0x78 || v829 > v1738 || v1847 > v829 || v785 > (2560 - 4 * v828) >> 2)
          {
            goto LABEL_3034;
          }

          v804 = v1766;
          encode_magnitude_tcq_fx(&v1802, v829, v785, *v827, v1766, v1804, &v1763);
          goto LABEL_1645;
        }

        if (v777 == 1)
        {
          v778 = v1790 + 2 * v770;
          if (v778 < v1790)
          {
            goto LABEL_3034;
          }

          if (v778 + 2 > v1730)
          {
            goto LABEL_3034;
          }

          if (v778 > v778 + 2)
          {
            goto LABEL_3034;
          }

          v779 = &v1792 + 2 * v770;
          if (v779 < &v1792 || v779 + 2 > v1741 || v779 > v779 + 2)
          {
            goto LABEL_3034;
          }

          v780 = *(&v1792 + v770);
          v781 = ((v767 + v775) ^ v775) > -1 || (v767 ^ v775) < 0;
          v782 = v781 ? (v767 + v775) : 0x7FFFFFFFLL;
          v783 = v1847 + 4 * v780;
          if (v783 > v1738)
          {
            goto LABEL_3034;
          }

          if (v1847 > v783)
          {
            goto LABEL_3034;
          }

          v784 = *(v1790 + v770);
          v785 = *(v1790 + v770);
          v786 = &v1783[v780];
          if ((v785 & 0x80000000) != 0)
          {
            goto LABEL_3034;
          }

          v787 = 4 * v780;
          if ((2560 - v787) >> 2 < v785)
          {
            goto LABEL_3034;
          }

          if (v786 > *v1740)
          {
            goto LABEL_3034;
          }

          if (v786 < v1783)
          {
            goto LABEL_3034;
          }

          if (v785 > (3840 - v787) >> 2)
          {
            goto LABEL_3034;
          }

          v788 = &v1809[-1] + 4 * v770;
          if (v788)
          {
            if (v788 < &v1808 || v788 + 4 > v1720 || v788 > v788 + 4)
            {
              goto LABEL_3034;
            }
          }

          GetISCScale(v786, v784, v782, v783, v788, &v1762, &v1765, v746, v1804, v1723, 1, &v1766, 0, 0, 0, 0, 0, 0, 0);
          v789 = *v768;
          v790 = v1787 + 4 * v789;
          v791 = v1738;
          if (v790 < v1787 || (v790 + 4) > v1737 || v790 > v790 + 4)
          {
            goto LABEL_3034;
          }

          v792 = *(v1787 + v789);
          v793 = v767 + v792;
          v794 = ((v767 + v792) ^ v792) > -1 || (v767 ^ v792) < 0;
          v795 = (v792 >> 31) ^ 0x7FFFFFFF;
          if (v794)
          {
            v795 = v793;
          }

          if (((v795 ^ v748) & ((v748 - v795) ^ v748)) < 0)
          {
            v748 = (v748 >> 31) ^ 0x7FFFFFFF;
          }

          else
          {
            v748 -= v795;
          }

          v796 = v1785 + 4 * v789;
          if (v796 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v796 + 4) > v1736)
          {
            goto LABEL_3034;
          }

          if (v796 > v796 + 4)
          {
            goto LABEL_3034;
          }

          *(v1785 + v789) = v1765;
          v797 = &v1792 + v789;
          if (v797 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v797 + 1 > v1741)
          {
            goto LABEL_3034;
          }

          if (v797 > v797 + 1)
          {
            goto LABEL_3034;
          }

          v798 = v1847 + *v797;
          if (v798 < v1847)
          {
            goto LABEL_3034;
          }

          encode_position_ari_fx(&v1802, v798, v791, v785, &v1763);
          v799 = *v768;
          v800 = &v1792 + 2 * v799;
          if (v800 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v800 + 2 > v1741)
          {
            goto LABEL_3034;
          }

          if (v800 > v800 + 2)
          {
            goto LABEL_3034;
          }

          v801 = v1785 + v799;
          if (v801 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v801 + 1) > v1736)
          {
            goto LABEL_3034;
          }

          if (v801 > v801 + 1)
          {
            goto LABEL_3034;
          }

          v802 = *(&v1792 + v799);
          v803 = v1847 + 4 * v802;
          if (v803 > v1738 || v1847 > v803 || v785 > (2560 - 4 * v802) >> 2)
          {
            goto LABEL_3034;
          }

          v804 = v1766;
          encode_magnitude_usq_fx(&v1802, v803, v785, *v801, v1766, &v1763);
LABEL_1645:
          v830 = &v1792 + *v768;
          if (v830 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v830 + 1 > v1741)
          {
            goto LABEL_3034;
          }

          if (v830 > v830 + 1)
          {
            goto LABEL_3034;
          }

          v831 = *v830;
          v832 = v1847 + v831;
          if (v832 > v1738 || v1847 > v832 || v785 > (2560 - 4 * v831) >> 2)
          {
            goto LABEL_3034;
          }

          encode_signs_fx(&v1802, v832, v784, v804, &v1763);
          LODWORD(v1732) = v1732 - 1;
          goto LABEL_1652;
        }
      }

      v805 = v1785 + v770;
      if (v805 < v1785 || (v805 + 1) > v1736 || v805 > v805 + 1)
      {
        goto LABEL_3034;
      }

      *v805 = 0;
LABEL_1652:
      v833 = v1787 + *v768;
      if (v833 < v1787 || (v833 + 1) > v1737 || v833 > v833 + 1)
      {
        goto LABEL_3034;
      }

      v767 = 0;
      if (*v833 < 1)
      {
        goto LABEL_1673;
      }

      v834 = v1762;
      if ((v1762 & 0x80000000) == 0)
      {
        goto LABEL_1673;
      }

      if (((v749 + v1762) ^ v1762) > -1 || (v749 ^ v1762) < 0)
      {
        v836 = v749 + v1762;
      }

      else
      {
        v836 = 0x80000000;
      }

      v838 = ar_div(v748, 2 * (v1732 > 1));
      v839 = v838 + v836;
      if (((v838 ^ v836) & 0x80000000) != 0 || ((v839 ^ v836) & 0x80000000) == 0)
      {
        if (v839 < 0)
        {
          goto LABEL_1666;
        }
      }

      else if ((v836 & 0x80000000) != 0)
      {
LABEL_1666:
        v767 = ar_div(v749 + v834, v1732);
LABEL_1669:
        v840 = v834 - v767;
        if (((v767 ^ v834) & ((v834 - v767) ^ v834)) < 0 != v837)
        {
          v840 = 0x80000000;
        }

        v1762 = v840;
        goto LABEL_1673;
      }

      v767 = 0;
      goto LABEL_1669;
    }

LABEL_1674:
    if (v1762 > 0x80000 && v1716[0] == 160 || v1762 > 786432 && v1716[0] == 320)
    {
      LODWORD(v1761) = 49152 * (v1762 >> 16) + ((24576 * v1762) >> 15);
      v841 = ((HIWORD(v1762) << 16) >> 2) & 0xFFFFC000 | (v1762 >> 2);
    }

    else
    {
      v841 = 0;
      LODWORD(v1761) = v1762;
    }

    v842 = v1738;
    HIDWORD(v1761) = v841;
    if (v1705 < 1)
    {
      goto LABEL_1795;
    }

    v843 = 0;
    v1720 = v1810;
    v1723 = v1806;
LABEL_1682:
    v844 = v1786 + v843;
    v847 = (v844 + 1) <= v1728 && v844 <= v844 + 1 && v844 >= v1786;
    LODWORD(v1732) = v847;
    v848 = &v1764;
    v849 = &v1761;
    v850 = 1;
    while (1)
    {
      v851 = v850;
      if (v843 == *v848)
      {
        if (!v1732)
        {
          goto LABEL_3034;
        }

        v852 = *v844;
        v853 = v1787 + v852;
        v854 = (v853 + 1);
        v855 = v853 < v1787 || v854 > v1737;
        if (v855 || v853 > v854)
        {
          goto LABEL_3034;
        }

        v857 = *v849;
        v858 = v857 + *v853;
        v859 = v857 ^ *v853;
        if ((v858 ^ *v853) > -1 || v859 < 0)
        {
          v861 = v858;
        }

        else
        {
          v861 = (*v853 >> 31) ^ 0x7FFFFFFFu;
        }

        *v853 = v861;
        if (v861 < 1)
        {
LABEL_1747:
          v884 = v1785 + v852;
          if (v884 < v1785 || (v884 + 1) > v1736 || v884 > v884 + 1)
          {
            goto LABEL_3034;
          }

          *v884 = 0;
          goto LABEL_1793;
        }

        v862 = v1806 + v852;
        if (v862 < v1806 || (v862 + 1) > __N || v862 > v862 + 1)
        {
          goto LABEL_3034;
        }

        v863 = *v862;
        if (v863)
        {
          if (v863 != 1)
          {
            goto LABEL_1747;
          }

          v864 = v1790 + 2 * v852;
          if (v864 < v1790)
          {
            goto LABEL_3034;
          }

          if (v864 + 2 > v1730)
          {
            goto LABEL_3034;
          }

          if (v864 > v864 + 2)
          {
            goto LABEL_3034;
          }

          v865 = &v1792 + 2 * v852;
          if (v865 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v865 + 2 > v1741)
          {
            goto LABEL_3034;
          }

          if (v865 > v865 + 2)
          {
            goto LABEL_3034;
          }

          v866 = *(&v1792 + v852);
          v867 = v1847 + 4 * v866;
          if (v867 > v842)
          {
            goto LABEL_3034;
          }

          if (v1847 > v867)
          {
            goto LABEL_3034;
          }

          v868 = *(v1790 + v852);
          v869 = *(v1790 + v852);
          v870 = &v1783[v866];
          if ((v869 & 0x80000000) != 0)
          {
            goto LABEL_3034;
          }

          v871 = 4 * v866;
          if ((2560 - v871) >> 2 < v869)
          {
            goto LABEL_3034;
          }

          if (v870 > *v1740)
          {
            goto LABEL_3034;
          }

          if (v870 < v1783)
          {
            goto LABEL_3034;
          }

          if (v869 > (3840 - v871) >> 2)
          {
            goto LABEL_3034;
          }

          v872 = &v1809[-1] + 4 * v852;
          if (v872)
          {
            if (v872 < &v1808 || v872 + 4 > v1720 || v872 > v872 + 4)
            {
              goto LABEL_3034;
            }
          }

          GetISCScale(v870, v868, v861, v867, v872, &v1762, &v1765, v746, v1804, v1723, 1, &v1766, 0, 0, 0, 0, 0, 0, 0);
          v873 = *v844;
          v874 = v1785 + 4 * v873;
          v875 = v1738;
          if (v874 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v874 + 4) > v1736)
          {
            goto LABEL_3034;
          }

          if (v874 > v874 + 4)
          {
            goto LABEL_3034;
          }

          *(v1785 + v873) = v1765;
          v876 = &v1792 + v873;
          if (v876 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v876 + 1 > v1741)
          {
            goto LABEL_3034;
          }

          if (v876 > v876 + 1)
          {
            goto LABEL_3034;
          }

          v877 = v1847 + *v876;
          if (v877 < v1847)
          {
            goto LABEL_3034;
          }

          encode_position_ari_fx(&v1802, v877, v875, v869, &v1763);
          v878 = *v844;
          v879 = &v1792 + 2 * v878;
          if (v879 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v879 + 2 > v1741)
          {
            goto LABEL_3034;
          }

          if (v879 > v879 + 2)
          {
            goto LABEL_3034;
          }

          v880 = v1785 + v878;
          if (v880 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v880 + 1) > v1736)
          {
            goto LABEL_3034;
          }

          if (v880 > v880 + 1)
          {
            goto LABEL_3034;
          }

          v881 = *(&v1792 + v878);
          v882 = v1847 + 4 * v881;
          if (v882 > v1738 || v1847 > v882 || v869 > (2560 - 4 * v881) >> 2)
          {
            goto LABEL_3034;
          }

          v883 = v1766;
          encode_magnitude_usq_fx(&v1802, v882, v869, *v880, v1766, &v1763);
        }

        else
        {
          v885 = v1790 + 2 * v852;
          if (v885 < v1790)
          {
            goto LABEL_3034;
          }

          if (v885 + 2 > v1730)
          {
            goto LABEL_3034;
          }

          if (v885 > v885 + 2)
          {
            goto LABEL_3034;
          }

          v886 = &v1792 + 2 * v852;
          if (v886 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v886 + 2 > v1741)
          {
            goto LABEL_3034;
          }

          if (v886 > v886 + 2)
          {
            goto LABEL_3034;
          }

          v887 = *(&v1792 + v852);
          v888 = v1847 + 4 * v887;
          if (v888 > v842)
          {
            goto LABEL_3034;
          }

          if (v1847 > v888)
          {
            goto LABEL_3034;
          }

          v889 = &v1783[v887];
          if (v889 < v1783)
          {
            goto LABEL_3034;
          }

          if (v889 > *v1740)
          {
            goto LABEL_3034;
          }

          v868 = *(v1790 + v852);
          v869 = *(v1790 + v852);
          if ((v869 & 0x80000000) != 0)
          {
            goto LABEL_3034;
          }

          v890 = 4 * v887;
          if ((2560 - v890) >> 2 < v869)
          {
            goto LABEL_3034;
          }

          if (v869 > (3840 - v890) >> 2)
          {
            goto LABEL_3034;
          }

          v891 = &v1809[-1] + 4 * v852;
          if (v891)
          {
            if (v891 < &v1808 || v891 + 4 > v1720 || v891 > v891 + 4)
            {
              goto LABEL_3034;
            }
          }

          GetISCScale(v889, v868, v861, v888, v891, &v1762, &v1765, v746, v1804, v1723, 0, &v1766, 0, 0, 0, 0, 0, 0, 0);
          v892 = *v844;
          v893 = v1785 + 4 * v892;
          v894 = v1738;
          if (v893 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v893 + 4) > v1736)
          {
            goto LABEL_3034;
          }

          if (v893 > v893 + 4)
          {
            goto LABEL_3034;
          }

          *(v1785 + v892) = v1765;
          v895 = &v1792 + v892;
          if (v895 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v895 + 1 > v1741)
          {
            goto LABEL_3034;
          }

          if (v895 > v895 + 1)
          {
            goto LABEL_3034;
          }

          v896 = v1847 + *v895;
          if (v896 < v1847)
          {
            goto LABEL_3034;
          }

          encode_position_ari_fx(&v1802, v896, v894, v869, &v1763);
          v897 = *v844;
          v898 = &v1792 + 2 * v897;
          if (v898 < &v1792)
          {
            goto LABEL_3034;
          }

          if (v898 + 2 > v1741)
          {
            goto LABEL_3034;
          }

          if (v898 > v898 + 2)
          {
            goto LABEL_3034;
          }

          v899 = v1785 + v897;
          if (v899 < v1785)
          {
            goto LABEL_3034;
          }

          if ((v899 + 1) > v1736)
          {
            goto LABEL_3034;
          }

          if (v899 > v899 + 1)
          {
            goto LABEL_3034;
          }

          v900 = *(&v1792 + v897);
          v901 = v1847 + 4 * v900;
          if (v869 > 0x78 || v901 > v1738 || v1847 > v901 || v869 > (2560 - 4 * v900) >> 2)
          {
            goto LABEL_3034;
          }

          v883 = v1766;
          encode_magnitude_tcq_fx(&v1802, v901, v869, *v899, v1766, v1804, &v1763);
        }

        v902 = &v1792 + *v844;
        if (v902 < &v1792)
        {
          goto LABEL_3034;
        }

        if (v902 + 1 > v1741)
        {
          goto LABEL_3034;
        }

        if (v902 > v902 + 1)
        {
          goto LABEL_3034;
        }

        v903 = *v902;
        v904 = v1847 + v903;
        if (v904 > v1738 || v1847 > v904 || v869 > (2560 - 4 * v903) >> 2)
        {
          goto LABEL_3034;
        }

        encode_signs_fx(&v1802, v904, v868, v883, &v1763);
        v842 = v1738;
      }

LABEL_1793:
      v850 = 0;
      v849 = (&v1761 + 4);
      v848 = v1739;
      if ((v851 & 1) == 0)
      {
        if (++v843 == v1722)
        {
          goto LABEL_1795;
        }

        goto LABEL_1682;
      }
    }
  }

  v1762 = 0;
  if (v1722 >= 1)
  {
    v703 = 0;
    v704 = 0;
    v1732 = v1810;
    v1739 = v1806;
    v705 = v1786;
    v706 = v1722;
    do
    {
      if ((v705 + 1) > v1728 || v705 > v705 + 1)
      {
        goto LABEL_3034;
      }

      v708 = *v705;
      v709 = v1787 + v708;
      v710 = (v709 + 1);
      v711 = v709 < v1787 || v710 > v1737;
      if (v711 || v709 > v710)
      {
        goto LABEL_3034;
      }

      v713 = *v709;
      if (v713 < 1)
      {
        v742 = v1785 + v708;
        v743 = (v742 + 1);
        if (v742 < v1785 || v743 > v1736 || v742 > v743)
        {
          goto LABEL_3034;
        }

        *v742 = 0;
      }

      else
      {
        v714 = v1790 + 2 * v708;
        v715 = v714 + 2;
        if (v714 < v1790 || v715 > v1730 || v714 > v715)
        {
          goto LABEL_3034;
        }

        v718 = &v1792 + 2 * v708;
        if (v718 < &v1792 || v718 + 2 > v1741 || v718 > v718 + 2)
        {
          goto LABEL_3034;
        }

        v719 = *(&v1792 + v708);
        v720 = ((v704 + v713) ^ v713) > -1 || (v704 ^ v713) < 0;
        v721 = v720 ? (v704 + v713) : 0x7FFFFFFFLL;
        v722 = v1847 + 4 * v719;
        if (v722 > v701)
        {
          goto LABEL_3034;
        }

        if (v1847 > v722)
        {
          goto LABEL_3034;
        }

        v723 = *(v1790 + v708);
        v724 = *(v1790 + v708);
        v725 = &v1783[v719];
        if ((v724 & 0x80000000) != 0)
        {
          goto LABEL_3034;
        }

        v726 = 4 * v719;
        if ((2560 - v726) >> 2 < v724)
        {
          goto LABEL_3034;
        }

        if (v725 > *v1740)
        {
          goto LABEL_3034;
        }

        if (v725 < v1783)
        {
          goto LABEL_3034;
        }

        if (v724 > (3840 - v726) >> 2)
        {
          goto LABEL_3034;
        }

        v727 = &v1809[-1] + 4 * v708;
        if (v727)
        {
          if (v727 < &v1808 || (v727 + 4) > v1732 || v727 > v727 + 4)
          {
            goto LABEL_3034;
          }
        }

        GetISCScale(v725, v723, v721, v722, v727, &v1762, &v1765, v695, v1804, v1739, 1, &v1766, &v1768, v1845, v1724, v1844, v1729, v1843, v1725);
        v728 = *v705;
        v729 = v1785 + 4 * v728;
        v730 = v1738;
        if (v729 < v1785)
        {
          goto LABEL_3034;
        }

        if ((v729 + 4) > v1736)
        {
          goto LABEL_3034;
        }

        if (v729 > v729 + 4)
        {
          goto LABEL_3034;
        }

        *(v1785 + v728) = v1765;
        v731 = &v1792 + v728;
        if (v731 < &v1792)
        {
          goto LABEL_3034;
        }

        if (v731 + 1 > v1741)
        {
          goto LABEL_3034;
        }

        if (v731 > v731 + 1)
        {
          goto LABEL_3034;
        }

        v732 = v1847 + *v731;
        if (v732 < v1847)
        {
          goto LABEL_3034;
        }

        encode_position_ari_fx(&v1802, v732, v730, v724, &v1763);
        v733 = *v705;
        v734 = &v1792 + 2 * v733;
        if (v734 < &v1792)
        {
          goto LABEL_3034;
        }

        if (v734 + 2 > v1741)
        {
          goto LABEL_3034;
        }

        if (v734 > v734 + 2)
        {
          goto LABEL_3034;
        }

        v735 = v1785 + v733;
        if (v735 < v1785)
        {
          goto LABEL_3034;
        }

        if ((v735 + 1) > v1736)
        {
          goto LABEL_3034;
        }

        if (v735 > v735 + 1)
        {
          goto LABEL_3034;
        }

        v736 = *(&v1792 + v733);
        v737 = v1847 + 4 * v736;
        if (v737 > v1738)
        {
          goto LABEL_3034;
        }

        if (v1847 > v737)
        {
          goto LABEL_3034;
        }

        if (v724 > (2560 - 4 * v736) >> 2)
        {
          goto LABEL_3034;
        }

        v738 = v1766;
        encode_magnitude_usq_fx(&v1802, v737, v724, *v735, v1766, &v1763);
        v739 = &v1792 + *v705;
        if (v739 < &v1792)
        {
          goto LABEL_3034;
        }

        if (v739 + 1 > v1741)
        {
          goto LABEL_3034;
        }

        if (v739 > v739 + 1)
        {
          goto LABEL_3034;
        }

        v740 = *v739;
        v741 = v1847 + v740;
        if (v741 > v1738 || v1847 > v741 || v724 > (2560 - 4 * v740) >> 2)
        {
          goto LABEL_3034;
        }

        encode_signs_fx(&v1802, v741, v723, v738, &v1763);
        if (v658 == 0x8000)
        {
          v658 = -32768;
        }

        else
        {
          v658 = (v658 - 1);
        }

        v703 = v1762;
      }

      if (v703 >= 1 && v658 >= 1)
      {
        v704 = ar_div(v703, v658);
        if (((v704 ^ v703) & ((v703 - v704) ^ v703)) < 0 != v837)
        {
          v703 = 0x7FFFFFFF;
        }

        else
        {
          v703 -= v704;
        }

        v1762 = v703;
      }

      ++v705;
      --v706;
      v701 = v1738;
    }

    while (v706);
  }

LABEL_1795:
  v905 = v1768;
  *&v906 = -1;
  *(&v906 + 1) = -1;
  v1842 = v906;
  v1841 = v906;
  v1840 = v906;
  v1839 = v906;
  v1838 = v906;
  v1837 = v906;
  v1836[1] = v906;
  v1836[0] = v906;
  v1835 = v906;
  v1834 = v906;
  v1833 = v906;
  v1832 = v906;
  v1831 = v906;
  v1830 = v906;
  v1829 = v906;
  v1828 = v906;
  v1827 = v906;
  v1826 = v906;
  v1825 = v906;
  v1824 = v906;
  v1823 = v906;
  v1822 = v906;
  v1821 = v906;
  v1820 = v906;
  *&v906 = 0xAAAAAAAAAAAAAAAALL;
  *(&v906 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1819[8] = v906;
  v1819[7] = v906;
  v1819[6] = v906;
  v1819[5] = v906;
  v1819[4] = v906;
  v1819[3] = v906;
  v1819[2] = v906;
  v1819[1] = v906;
  v1819[0] = v906;
  v1818[1] = v906;
  v1818[0] = v906;
  v1817 = v906;
  v1816[8] = v906;
  v1816[7] = v906;
  v1816[6] = v906;
  v1816[5] = v906;
  v1816[4] = v906;
  v1816[3] = v906;
  v1816[2] = v906;
  v1816[1] = v906;
  v1816[0] = v906;
  v1815[1] = v906;
  v1815[0] = v906;
  v1814 = v906;
  v1813[8] = v906;
  v1813[7] = v906;
  v1813[6] = v906;
  v1813[5] = v906;
  v1813[4] = v906;
  v1813[3] = v906;
  v1813[2] = v906;
  v1813[1] = v906;
  v1813[0] = v906;
  v1812[1] = v906;
  v1812[0] = v906;
  v1811 = v906;
  v1810[2] = v906;
  v1810[1] = v906;
  v1810[0] = v906;
  memset(v1846, 255, 0x8C0uLL);
  __A = 0.0;
  vDSP_vfill(&__A, &v1820, 1, 0x60uLL);
  for (i = 0; i != 192; i += 2)
  {
    v908 = &v1818[-1] + i + 2;
    if ((&v1818[-1] + i) < &v1817 || v908 > &v1820 || &v1818[-1] + i > v908)
    {
      goto LABEL_3034;
    }

    *(&v1818[-1] + i) = 0;
  }

  for (j = 0; j != 192; j += 2)
  {
    v912 = &v1815[-1] + j + 2;
    if ((&v1815[-1] + j) < &v1814 || v912 > &v1817 || &v1815[-1] + j > v912)
    {
      goto LABEL_3034;
    }

    *(&v1815[-1] + j) = 0;
  }

  for (k = 0; k != 192; k += 2)
  {
    v916 = &v1812[-1] + k + 2;
    if ((&v1812[-1] + k) < &v1811 || v916 > &v1814 || &v1812[-1] + k > v916)
    {
      goto LABEL_3034;
    }

    *(&v1812[-1] + k) = 0;
  }

  for (m = 0; m != 48; m += 2)
  {
    v920 = v1810 + m + 2;
    if ((v1810 + m) < v1810 || v920 > &v1811 || v1810 + m > v920)
    {
      goto LABEL_3034;
    }

    *(v1810 + m) = 0;
  }

  v1732 = &v1811;
  __N = v905;
  v1739 = &v1846[140];
  __A = 0.0;
  vDSP_vfill(&__A, v1846, 1, 0x230uLL);
  v923 = 0;
  LODWORD(v1826) = 1266679808;
  LODWORD(v1832) = 1266679808;
  LODWORD(v1837) = 1266679808;
  do
  {
    v924 = v1844 + 4 * v923;
    v925 = (v924 + 4);
    if (v924 < v1844 || v925 > v1729 || v924 > v925)
    {
      goto LABEL_3034;
    }

    v928 = v923 | 1;
    v929 = v1844 + (v923 | 1);
    if (v929 < v1844)
    {
      goto LABEL_3034;
    }

    if ((v929 + 1) > v1729)
    {
      goto LABEL_3034;
    }

    if (v929 > v929 + 1)
    {
      goto LABEL_3034;
    }

    v930 = v1843 + v923;
    if (v930 < v1843)
    {
      goto LABEL_3034;
    }

    if ((v930 + 1) > v1725)
    {
      goto LABEL_3034;
    }

    if (v930 > v930 + 1)
    {
      goto LABEL_3034;
    }

    v931 = v1843 + v928;
    if (v931 < v1843)
    {
      goto LABEL_3034;
    }

    if ((v931 + 1) > v1725)
    {
      goto LABEL_3034;
    }

    if (v931 > v931 + 1)
    {
      goto LABEL_3034;
    }

    v932 = v1845 + v923;
    if (v932 < v1845)
    {
      goto LABEL_3034;
    }

    if (v932 + 1 > v1724)
    {
      goto LABEL_3034;
    }

    if (v932 > v932 + 1)
    {
      goto LABEL_3034;
    }

    v933 = v1845 + v928;
    if (v933 < v1845 || v933 + 1 > v1724 || v933 > v933 + 1)
    {
      goto LABEL_3034;
    }

    v934 = 0;
    v935 = 0;
    v936 = 0;
    v937 = *(v1844 + v923);
    v938 = *v929;
    v939 = *v930;
    v940 = *v931;
    v941 = *v932;
    v942 = v923 >> 1;
    v943 = &v1812[-1] + 2 * (v923 >> 1);
    v944 = *v933;
    v945 = 4 * (v923 >> 1);
    v946 = &word_19B376EB8;
    v947 = &word_19B376EC8;
    v948 = &dqnt_LSB;
    v949 = &v1815[-1] + 2 * (v923 >> 1);
    v950 = &v1818[-1] + 2 * (v923 >> 1);
    do
    {
      v951 = *(v946 - 1);
      v952 = (&v1820 + 6 * v951);
      v953 = &v952[v942];
      v954 = (v953 + 1);
      if (v953 < v952 || v954 > (v952 + 24) || v953 > v954)
      {
        goto LABEL_3034;
      }

      v957 = (&v1820 + 6 * *v946);
      v958 = &v957[v942];
      v959 = (v958 + 1);
      v960 = v958 < v957 || v959 > (v957 + 24);
      if (v960 || v958 > v959)
      {
        goto LABEL_3034;
      }

      v962 = *(v947 - 1);
      if (v962)
      {
        v963 = 0.2;
      }

      else
      {
        v963 = -0.2;
      }

      if ((v962 & 2) != 0)
      {
        v964 = 0.2;
      }

      else
      {
        v964 = -0.2;
      }

      v965 = ((v944 - ((v938 + v964) / v940)) * (v944 - ((v938 + v964) / v940))) + ((v941 - ((v937 + v963) / v939)) * (v941 - ((v937 + v963) / v939)));
      if (*v947)
      {
        v966 = 0.2;
      }

      else
      {
        v966 = -0.2;
      }

      if ((*v947 & 2) != 0)
      {
        v967 = 0.2;
      }

      else
      {
        v967 = -0.2;
      }

      v968 = *v953 + v965;
      v969 = *v958 + (((v944 - ((v938 + v967) / v940)) * (v944 - ((v938 + v967) / v940))) + ((v941 - ((v937 + v966) / v939)) * (v941 - ((v937 + v966) / v939))));
      v970 = &v950[v935 * 16 + 2];
      v971 = &v950[v935 * 16 + 4];
      v974 = v971 <= &v1819[v935] && v970 <= v971 && v970 >= &v1818[v935 - 1];
      if (v968 >= v969)
      {
        if (!v974)
        {
          goto LABEL_3034;
        }

        *v970 = *v946;
        v983 = (&v1820 + v945);
        v984 = (&v1820 + v945 + 4);
        if (v984 < (&v1820 + v934))
        {
          goto LABEL_3034;
        }

        if (v983 + 2 > (&v1826 + v934))
        {
          goto LABEL_3034;
        }

        if (v984 > v983 + 2)
        {
          goto LABEL_3034;
        }

        *v984 = v969;
        v985 = &v949[v935 * 16];
        v986 = &v949[v935 * 16 + 2];
        if (v986 < &v1815[v935 - 1])
        {
          goto LABEL_3034;
        }

        if (v985 + 4 > &v1816[v935])
        {
          goto LABEL_3034;
        }

        if (v986 > v985 + 4)
        {
          goto LABEL_3034;
        }

        *v986 = 1;
        v987 = &dqnt_LSB + 8 * v951;
        v988 = &v948[8 * v951];
        if (v988 < v987)
        {
          goto LABEL_3034;
        }

        if (v988 + 2 > (v987 + 8))
        {
          goto LABEL_3034;
        }

        if (v988 > v988 + 2)
        {
          goto LABEL_3034;
        }

        v989 = &v943[v935 * 16];
        v990 = &v943[v935 * 16 + 2];
        if (v990 < &v1812[v935 - 1] || v989 + 4 > &v1813[v935] || v990 > v989 + 4)
        {
          goto LABEL_3034;
        }

        v980 = &v987[2 * v936];
        v982 = &v1812[3 * v936 - 1] + 2 * v942 + 2;
      }

      else
      {
        if (!v974)
        {
          goto LABEL_3034;
        }

        *v970 = v951;
        v975 = (&v1820 + v945);
        v976 = (&v1820 + v945 + 4);
        if (v976 < (&v1820 + v934))
        {
          goto LABEL_3034;
        }

        if (v975 + 2 > (&v1826 + v934))
        {
          goto LABEL_3034;
        }

        if (v976 > v975 + 2)
        {
          goto LABEL_3034;
        }

        *v976 = v968;
        v977 = &v949[v935 * 16];
        v978 = &v949[v935 * 16 + 2];
        if (v978 < &v1815[v935 - 1])
        {
          goto LABEL_3034;
        }

        if (v977 + 4 > &v1816[v935])
        {
          goto LABEL_3034;
        }

        if (v978 > v977 + 4)
        {
          goto LABEL_3034;
        }

        *v978 = 0;
        v979 = &dqnt_LSB + 8 * v951;
        v980 = &v948[8 * v951];
        if (v980 < v979)
        {
          goto LABEL_3034;
        }

        if (v980 + 2 > v979 + 8)
        {
          goto LABEL_3034;
        }

        if (v980 > v980 + 2)
        {
          goto LABEL_3034;
        }

        v981 = &v943[v935 * 16];
        v982 = &v943[v935 * 16 + 2];
        if (v982 < &v1812[v935 - 1] || v981 + 4 > &v1813[v935] || v982 > v981 + 4)
        {
          goto LABEL_3034;
        }
      }

      ++v936;
      v935 += 3;
      v948 += 2;
      v934 += 96;
      *v982 = *v980;
      v945 += 96;
      v947 += 2;
      v946 += 2;
    }

    while (v935 != 12);
    v57 = v923 >= 0x12;
    v923 += 2;
  }

  while (!v57);
  v991 = *(&v1822 + 2);
  v992 = *(&v1822 + 2) > *(&v1828 + 2);
  if (*(&v1822 + 2) > *(&v1828 + 2))
  {
    v991 = *(&v1828 + 2);
  }

  if (v991 > *(&v1834 + 2))
  {
    v992 = 2;
    v991 = *(&v1834 + 2);
  }

  if (v991 <= *(&v1839 + 2))
  {
    LOWORD(v993) = v992;
  }

  else
  {
    LOWORD(v993) = 3;
  }

  v994 = 20;
  do
  {
    v993 = v993;
    v995 = &v1815[3 * v993 - 1];
    v996 = v994 >> 1;
    v997 = (v996 + 1);
    v998 = &v995[v997];
    v999 = (v998 + 1);
    v1001 = v998 < v995 || v999 > (v995 + 24) || v998 > v999;
    v1002 = v1810 + (v994 >> 1);
    v1003 = v1002 + 1;
    if (v1001 || v1002 < v1810 || v1003 > v1732 || v1002 > v1003)
    {
      goto LABEL_3034;
    }

    v1007 = *v998;
    *v1002 = v1007;
    v1008 = &v1812[3 * v993 - 1];
    v1009 = v1008 + v997;
    if (v1009 < v1008)
    {
      goto LABEL_3034;
    }

    if (v1009 + 1 > v1008 + 24)
    {
      goto LABEL_3034;
    }

    if (v1009 > v1009 + 1)
    {
      goto LABEL_3034;
    }

    v1010 = v1798 + v996;
    if (v1010 < v1798)
    {
      goto LABEL_3034;
    }

    if ((v1010 + 1) > v1719)
    {
      goto LABEL_3034;
    }

    if (v1010 > v1010 + 1)
    {
      goto LABEL_3034;
    }

    *v1010 = *v1009;
    v1011 = &denc_LSB + 4 * v993;
    v1012 = &v1011[2 * v1007];
    if (v1012 < v1011)
    {
      goto LABEL_3034;
    }

    if (v1012 + 2 > v1011 + 4)
    {
      goto LABEL_3034;
    }

    if (v1012 > v1012 + 2)
    {
      goto LABEL_3034;
    }

    v1013 = v1846 + v994;
    if (v1013 < v1846)
    {
      goto LABEL_3034;
    }

    v1014 = v1013 + 1;
    if ((v1013 + 1) > v1739)
    {
      goto LABEL_3034;
    }

    if (v1013 > v1014)
    {
      goto LABEL_3034;
    }

    v1015 = *v1012;
    *v1013 = flt_19B0AF9D0[(v1015 & 1) == 0];
    v1016 = (v1013 + 2);
    if (v1014 < v1846)
    {
      goto LABEL_3034;
    }

    if (v1016 > v1739 || v1014 > v1016)
    {
      goto LABEL_3034;
    }

    *v1014 = flt_19B0AF9D0[(v1015 & 2) == 0];
    v1018 = &v1818[3 * v993 - 1];
    v993 = v1018 + 2 * v997;
    if (v993 < v1018 || v993 + 2 > (v1018 + 3) || v993 > v993 + 2)
    {
      goto LABEL_3034;
    }

    LOWORD(v993) = *v993;
    v579 = v994 == 0;
    v994 -= 2;
  }

  while (!v579);
  v1019 = __N;
  if (__N >= 1)
  {
    v1020 = v1846;
    v1021 = v1844;
    do
    {
      v1022 = v1019;
      v1023 = (v1020 + 1);
      v1025 = v1020 < v1846 || v1023 > v1739 || v1020 > v1023;
      v1026 = (v1021 + 1);
      if (v1025 || v1021 < v1844 || v1026 > v1729 || v1021 > v1026)
      {
        goto LABEL_3034;
      }

      v1030 = *v1020++;
      *v1021 = v1030 + *v1021;
      ++v1021;
      v1019 = v1022 - 1;
    }

    while (v1022 != 1);
  }

  if (v1708)
  {
    for (n = 0; n != 20; n += 2)
    {
      ar_encode(&v1802, uniform_model, &step_LSB, *(v1798 + n) & 1);
    }
  }

  v1768 = 0;
  ++DWORD1(v1803);
  transmission_bits(&v1802, (DWORD2(v1802) & 0xFFFFC000) != 0);
  v1032 = v1708 ^ 1;
  if (v1705 < 1)
  {
    v1032 = 1;
  }

  v1033 = v1738;
  if ((v1032 & 1) == 0)
  {
    v1034 = 0;
    v1035 = v1768;
    do
    {
      v1036 = v1786 + v1034;
      if ((v1036 + 1) > v1728 || v1036 > v1036 + 1)
      {
        goto LABEL_3034;
      }

      v1038 = *v1036;
      v1039 = v1787 + v1038;
      v1040 = (v1039 + 1);
      v1041 = v1039 < v1787 || v1040 > v1737;
      if (v1041 || v1039 > v1040)
      {
        goto LABEL_3034;
      }

      if (*v1039 < 1)
      {
        goto LABEL_2038;
      }

      v1043 = v1790 + 2 * v1038;
      v1044 = v1043 + 2;
      if (v1043 < v1790 || v1044 > v1730 || v1043 > v1044)
      {
        goto LABEL_3034;
      }

      v1047 = &v1792 + v1038;
      if (v1047 < &v1792)
      {
        goto LABEL_3034;
      }

      if (v1047 + 1 > v1741 || v1047 > v1047 + 1)
      {
        goto LABEL_3034;
      }

      v1049 = *v1047;
      v1050 = v1847 + v1049;
      if (v1050 > v1033)
      {
        goto LABEL_3034;
      }

      if (v1847 > v1050)
      {
        goto LABEL_3034;
      }

      v1051 = *(v1790 + v1038);
      if ((v1051 & 0x80000000) != 0 || (2560 - 4 * v1049) >> 2 < v1051)
      {
        goto LABEL_3034;
      }

      if (v1051 < 1)
      {
LABEL_2038:
        v1056 = v1722;
      }

      else
      {
        v1052 = 0;
        v1053 = 0;
        v1054 = v1050;
        v1055 = v1051;
        do
        {
          if (*v1054 != 0.0)
          {
            ++v1052;
            if (fabsf(*v1054) > 1.0)
            {
              v1053 = 1;
            }
          }

          ++v1054;
          --v1055;
        }

        while (v1055);
        v1056 = v1722;
        if (v1052 >= 2 && v1053)
        {
          do
          {
            if (v1035 > 19)
            {
              break;
            }

            if (*v1050 != 0.0)
            {
              v1057 = v1844 + v1035;
              if (v1057 < v1844 || (v1057 + 1) > v1729 || v1057 > v1057 + 1)
              {
                goto LABEL_3034;
              }

              *v1050 = *v1057;
              v1768 = ++v1035;
            }

            ++v1050;
            --v1051;
          }

          while (v1051);
        }
      }

      ++v1034;
    }

    while (v1034 != v1056);
  }

  v1058 = v1707 >> 3;
  if (v1707 >> 3 >= 1)
  {
    v1059 = v1058;
    v1060 = v1799;
    do
    {
      if (v1060 >= v1717 || v1060 < v1799)
      {
        goto LABEL_3034;
      }

      v1061 = *v1060++;
      push_indice(v1726, 1475, v1061, 8);
      --v1059;
    }

    while (v1059);
  }

  if ((v1707 & 7) != 0)
  {
    v1062 = v1799 + v1058;
    if (v1062 >= v1717 || v1062 < v1799)
    {
      goto LABEL_3034;
    }

    push_indice(v1726, 1475, *v1062 >> (8 - (v1707 & 7)), v1707 & 7);
  }

  v1063 = *v1710 + 1;
  LODWORD(v1846[0]) = 0;
  vDSP_vfill(v1846, v1783, 1, v1063);
  v1064 = v1738;
  if (v1722)
  {
    v1065 = 0;
    do
    {
      v1066 = v1786 + v1065;
      v1067 = v1066 + 1;
      if (v1066 < v1786 || v1067 > v1728 || v1066 > v1067)
      {
        goto LABEL_3034;
      }

      v1070 = *v1066;
      v1071 = v1787 + v1070;
      v1072 = (v1071 + 1);
      v1073 = v1071 < v1787 || v1072 > v1737;
      if (v1073 || v1071 > v1072)
      {
        goto LABEL_3034;
      }

      if (*v1071 >= 1)
      {
        v1075 = v1790 + 2 * v1070;
        v1076 = v1075 + 2;
        if (v1075 < v1790 || v1076 > v1730 || v1075 > v1076)
        {
          goto LABEL_3034;
        }

        v1079 = *(v1790 + v1070);
        v1080 = &v1792 + v1070;
        v1083 = v1080 + 1 <= v1741 && v1080 <= v1080 + 1 && v1080 >= &v1792;
        if (v1079 >= 1)
        {
          v1084 = 0;
          v1085 = v1079;
          v1086 = 0.0;
          v1087 = 1.0e-15;
          v1088 = v1079 & ~(v1079 >> 31);
          do
          {
            if (!v1083)
            {
              goto LABEL_3034;
            }

            v1089 = *v1080;
            v1090 = (__src + 4 * v1084 + 4 * v1089);
            v1091 = v1090 + 1;
            v1092 = v1090 < __src || v1091 > v1733;
            v1093 = v1092 || v1090 > v1091;
            v1094 = v1847 + v1084 + v1089;
            v1095 = v1094 + 1;
            v1096 = !v1093 && v1094 >= v1847;
            v1097 = !v1096 || v1095 > v1064;
            if (v1097 || v1094 > v1095)
            {
              goto LABEL_3034;
            }

            v1086 = v1086 + (*v1090 * *v1094);
            v1087 = v1087 + (*v1094 * *v1094);
            ++v1084;
          }

          while (v1088 != v1084);
          v1099 = 0;
          v1100 = v1086 / v1087;
          v1101 = 4 * v1085;
          v1102 = &v1783[v1089];
          if (v1100 == 0.0)
          {
            v1100 = 1.0e-10;
          }

          v1103 = &v1784[v1089];
          v1104 = v1847 + 4 * v1089;
          do
          {
            v1105 = &v1104[v1099];
            if (&v1104[v1099] < v1847)
            {
              goto LABEL_3034;
            }

            if ((v1105 + 1) > v1064 || v1105 > v1105 + 1)
            {
              goto LABEL_3034;
            }

            v1107 = *v1105;
            v1108 = *v1105 * 5.0;
            v1109 = ((*v1105 * -5.0) + 0.5);
            v1110 = v1108 <= 0.0 ? -v1109 : ((v1107 * 5.0) + 0.5);
            v1111 = &v1103[v1099 / 4];
            if (&v1103[v1099 / 4] < v1784)
            {
              goto LABEL_3034;
            }

            if (v1111 + 1 > v1735)
            {
              goto LABEL_3034;
            }

            if (v1111 > v1111 + 1)
            {
              goto LABEL_3034;
            }

            *v1111 = v1110;
            v1112 = &v1102[v1099 / 4];
            if (&v1102[v1099 / 4] < v1783 || (v1112 + 1) > *v1740 || v1112 > v1112 + 1)
            {
              goto LABEL_3034;
            }

            *v1112 = v1100 * v1107;
            v1099 += 4;
          }

          while (v1101 != v1099);
        }
      }

      ++v1065;
    }

    while (v1722 > v1065);
  }

  if (v1716[0] == 160)
  {
    v1113 = __n;
    v1114 = v1706;
    if (*(v1726 + 96) >= 13201)
    {
      goto LABEL_2143;
    }
  }

  else
  {
    v1113 = __n;
    v1114 = v1706;
    if (v1716[0] != 320)
    {
      goto LABEL_2143;
    }
  }

  v1115 = 0;
  v1116 = 0;
  v1117 = SHIWORD(v1759);
  v1118 = 2;
  v1119 = v1736;
  do
  {
    v1120 = v1115;
    v1121 = v1785 + v1117 - v1118;
    v1122 = v1121 + 1;
    v1124 = v1121 < v1785 || v1122 > v1119 || v1121 > v1122;
    v1125 = (v1113 + 2 * v1116);
    v1126 = v1125 + 1;
    if (v1124 || v1125 < v1113 || v1126 > v1114 || v1125 > v1126)
    {
      goto LABEL_3034;
    }

    *v1125 = *v1121 > 0;
    --v1118;
    v1115 = 1;
    v1116 = 1;
  }

  while ((v1120 & 1) == 0);
LABEL_2143:
  v1130 = SHIWORD(v1759);
  if (SHIWORD(v1759) >= 1)
  {
    v1131 = v1787;
    v1132 = v1788;
    v1133 = SHIWORD(v1759);
    v1134 = v1737;
    do
    {
      v1135 = v1131 + 1;
      v1137 = v1131 < v1787 || v1135 > v1134 || v1131 > v1135;
      v1138 = v1132 + 1;
      if (v1137 || v1132 < v1788 || v1138 > v1789 || v1132 > v1138)
      {
        goto LABEL_3034;
      }

      v1142 = *v1131++;
      *v1132++ = v1142 * 0.000015259;
      --v1133;
    }

    while (v1133);
  }

  mdct_spectrum_denorm(v1784, v1735, v1783, *v1740, &v1792, v1741, v1791, v1721, v1750, v1751, v1790, v1730, v1789, v1727, v1785, v1736, v1130);
  v1143 = *v1718;
  if (*v1718 < v1718[2])
  {
    goto LABEL_3034;
  }

  v1144 = v1718[1];
  v1145 = v1749;
  v1739 = v1757;
  LODWORD(v1737) = v1757;
  memset(v1847, 0, 128);
  *&v1146 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1146 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1846[3] = v1146;
  v1846[2] = v1146;
  v1846[1] = v1146;
  v1846[0] = v1146;
  LODWORD(v1735) = v1756;
  if (!v1749)
  {
    goto LABEL_2171;
  }

  if (v1749 == -1)
  {
    v1147 = 30;
    goto LABEL_2172;
  }

  v1148 = v1749 ^ (v1749 >> 31);
  if (v1148 <= 0x3FFFFFFF)
  {
    v1149 = 0;
    do
    {
      v1147 = v1149;
      v1150 = v1148 >> 29;
      v1148 *= 2;
      ++v1149;
    }

    while (!v1150);
    if (v1149 == 0x8000)
    {
      LODWORD(v1845[0]) = 1;
      v1147 = 0x8000;
    }
  }

  else
  {
LABEL_2171:
    v1147 = -1;
  }

LABEL_2172:
  v1151 = v1737;
  if (v1739)
  {
    if (v1739 == 0xFFFF)
    {
      v1151 = 15;
    }

    else
    {
      v1152 = v1737 ^ (v1737 >> 15);
      if (v1152 >= 0x4000)
      {
        v1151 = 0;
      }

      else
      {
        v1151 = 0;
        do
        {
          v1152 = (2 * v1152);
          ++v1151;
        }

        while (v1152 < 0x4000);
      }
    }
  }

  v1153 = v1147;
  v1154 = L_shl(v1749, v1147);
  v1155 = shl(v1737, v1151, v1845);
  v1156 = div_l(v1154, v1155, v1845);
  v1157 = v1153 - v1151;
  v1738 = v1130;
  if (v1157 < 0x8000)
  {
    if (v1157 > -32769)
    {
      if (v1157 >= 32740)
      {
        goto LABEL_2181;
      }

      v1397 = v1157 + 28;
      v1158 = v1156 << 16;
      if (v1397 >= -32754)
      {
        v1159 = 13 - v1397;
      }

      else
      {
        v1159 = 0x7FFF;
      }
    }

    else
    {
      v1158 = v1156 << 16;
      v1159 = 32753;
    }
  }

  else
  {
LABEL_2181:
    v1158 = v1156 << 16;
    v1159 = -32754;
  }

  v1160 = L_shl(v1158, v1159);
  if (v1737 >= 1)
  {
    v1162 = v1160;
    if (v1160 >= 0)
    {
      v1163 = 2147483646;
    }

    else
    {
      v1163 = 0x80000000;
    }

    if (((v1145 ^ v1160) & ((v1160 - v1145) ^ v1160)) < 0)
    {
      v1164 = v1163;
    }

    else
    {
      v1164 = v1160 - v1145;
    }

    v1165 = v1164 >> 1;
    v1166 = v1846;
    v1167 = v1847;
    v1168 = v1739;
    do
    {
      v1169 = Pow2_11469(14, (v1165 >> 15) & 0x7FFF, v1845);
      if (v1166 < v1846 || v1166 + 1 > &v1846[4] || v1166 > v1166 + 1)
      {
        goto LABEL_3034;
      }

      v1170 = v1162 + v1165;
      if (((v1162 ^ v1165) & 0x80000000) == 0 && (v1170 ^ v1165) < 0)
      {
        v1170 = (v1165 >> 31) ^ 0x7FFFFFFF;
        LODWORD(v1845[0]) = 1;
      }

      v1171 = shl(v1169, v1165 >> 30, v1845);
      *v1166 = v1171;
      if (v1167 < v1847 || v1167 + 1 > &v1847[8] || v1167 > v1167 + 1)
      {
        goto LABEL_3034;
      }

      v1172 = vcvtd_n_f64_s32(v1171, 0xEuLL);
      *v1167++ = v1172;
      ++v1166;
      v1165 = v1170;
      --v1168;
    }

    while (v1168);
  }

  if ((v1738 - v1735) < v1738)
  {
    v1173 = (v1738 - v1735);
    do
    {
      v1174 = v1786 + v1173;
      v1175 = v1174 + 1;
      v1177 = v1174 < v1786 || v1175 > v1728 || v1174 > v1175;
      v1178 = *v1740;
      if (v1177)
      {
        goto LABEL_3034;
      }

      v1179 = *v1174;
      v1180 = &v1792 + 2 * v1179;
      v1181 = v1180 + 2;
      v1182 = v1180 < &v1792 || v1181 > v1741;
      if (v1182 || v1180 > v1181)
      {
        goto LABEL_3034;
      }

      v1184 = v1791 + v1179;
      v1185 = v1184 + 1;
      v1186 = v1184 < v1791 || v1185 > v1721;
      if (v1186 || v1184 > v1185)
      {
        goto LABEL_3034;
      }

      v1188 = *(&v1792 + v1179);
      v1189 = *v1184;
      if (v1188 <= v1189)
      {
        v1191 = 0.0;
        v1192 = 0.0;
        LOWORD(v1193) = v1188;
        do
        {
          v1194 = v1193;
          v1195 = &v1783[v1193];
          v1196 = v1195 + 1;
          v1198 = v1195 < v1783 || v1196 > *v1740 || v1195 > v1196;
          v1199 = (v1143 + 4 * v1194);
          v1200 = v1199 + 1;
          if (v1198 || v1199 < v1143 || v1200 > v1144 || v1199 > v1200)
          {
            goto LABEL_3034;
          }

          v1204 = v1783[v1194];
          v1192 = v1192 + (v1204 * v1204);
          v1191 = v1191 + (*v1199 * v1204);
          v1193 = (v1194 + 1);
        }

        while (v1193 <= v1189);
        v1190 = 0;
        if (v1192 > 0.0 && v1191 > 0.0)
        {
          if (v1737 < 1)
          {
            v1190 = -1;
          }

          else
          {
            v1205 = 0;
            v1206 = 0;
            v1190 = -1;
            v1207 = 3.4028e38;
            v1208 = v1191 / v1192;
            do
            {
              v1209 = v1847 + v1205 + 4;
              if ((v1847 + v1205) < v1847 || v1209 > &v1847[8] || v1847 + v1205 > v1209)
              {
                goto LABEL_3034;
              }

              v1212 = vabds_f32(v1208, *(v1847 + v1206));
              if (v1212 < v1207)
              {
                v1207 = v1212;
                v1190 = v1206;
              }

              ++v1206;
              v1205 += 4;
            }

            while (v1739 != v1206);
          }

          v1213 = v1847 + v1190;
          v1214 = v1213 + 1;
          if (v1213 < v1847 || v1214 > &v1847[8] || v1213 > v1214)
          {
            goto LABEL_3034;
          }

          v1217 = *v1213;
          do
          {
            v1218 = &v1783[v1188];
            v1219 = v1218 + 1;
            if (v1218 < v1783 || v1219 > v1178 || v1218 > v1219)
            {
              goto LABEL_3034;
            }

            *v1218 = v1217 * *v1218;
            v1188 = (v1188 + 1);
          }

          while (v1188 <= v1189);
        }
      }

      else
      {
        v1190 = 0;
      }

      push_indice(v1726, 1575, v1190, v1715);
      ++v1173;
    }

    while (v1738 != v1173);
  }

  v1222 = v1738;
  if (v1702)
  {
    spt_shorten_domain_band_restore(v1738, &v1792, v1741, v1791, v1721, v1790, v1730, v1161, &v1777[1], &v1777[2], v1777, &v1777[1], &v1776[2], v1777);
  }

  v1223 = WORD2(v1785[0]) + LOWORD(v1785[0]) + WORD4(v1785[0]) + WORD6(v1785[0]);
  v1758 = v1223;
  v1224 = v1791 + v1222;
  v1225 = (v1224 - 1);
  v1226 = v1706;
  if (v1224 - 1 < v1791 || v1224 > v1721 || v1225 > v1224)
  {
LABEL_3034:
    __break(0x5519u);
  }

  v1227 = *v1225;
  if ((v1227 & 0x80000000) == 0)
  {
    v1228 = 0;
    v1229 = *v1740;
    do
    {
      v1230 = v1228;
      v1231 = &v1783[v1228];
      v1232 = v1231 + 1;
      v1234 = v1231 < v1783 || v1232 > v1229 || v1231 > v1232;
      v1235 = &v1782[v1230];
      v1236 = v1235 + 1;
      if (v1234 || v1235 < v1782 || v1236 > v1783 || v1235 > v1236)
      {
        goto LABEL_3034;
      }

      v1782[v1230] = v1783[v1230];
      v1228 = v1230 + 1;
    }

    while (v1227 >= (v1230 + 1));
  }

  v1240 = v1726;
  v1241 = v1755;
  v1242 = *(v1726 + 130);
  v1243 = v1711[0];
  v1717 = v1783;
  hq2_noise_inject(v1782, v1783, &v1792, v1741, v1791, v1721, v1790, v1730, v508, v509, v1780, __b, v1788, v1789, v1785, v1736, v1223, v1222, v1701, v1700, v1226, v1726 + 52372, (v1726 + 52372), v1726 + 52500, (v1726 + 52500), v1726 + 52502, v1796, v1714, v1755, v1711[0], v1242, *v1712);
  if (*(v1240 + 130) == 2 && (*v1712 == 16400 || *v1712 == 13200) && (v1243 | 2) == 2)
  {
    if (v1759 > 0x280u)
    {
      goto LABEL_3034;
    }

    preset_hq2_swb(*v1711, v1791, v1721, &v1744, v1241, v1759, v1222, &v1746, &v1745, __b);
    v1244 = *v1718;
    if (*v1718 < v1718[2])
    {
      goto LABEL_3034;
    }

    v1245 = (v1726 + 52218);
    v1720 = (v1704 + 3064);
    if (v1704 + 3064 > (v1726 + 52218))
    {
      goto LABEL_3034;
    }

    v1246 = (v1726 + 52220);
    if (v1245 > v1726 + 52220)
    {
      goto LABEL_3034;
    }

    v1247 = v1718[1];
    v1701 = v1744;
    LOWORD(v1764) = -21846;
    LOWORD(v1763) = -21846;
    *&v1810[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&v1814 + 1) = -1;
    *&v1814 = -1;
    LOWORD(v1762) = -21846;
    v1768 = -21846;
    *&v1808 = &subband_search_offsets_13p2kbps_Har;
    *(&v1808 + 1) = &subband_offsets_sub5_13p2kbps_Har;
    *&v1811 = &subband_offsets_sub5_13p2kbps_Har;
    *(&v1811 + 1) = &unk_19B3A0FF4;
    *&v1802 = 0;
    v1735 = (v1810 + 8);
    hf_parinitiz(*v1712, *v1711, v1746, v1745, v1810, v1810 + 8, &v1808, v1809, &v1811, v1812, &v1764, &v1763, &v1762, &v1768);
    v1248 = v1762;
    v1249 = v1762;
    if (v1762 >= 1)
    {
      if (v1762 >= 0x281u)
      {
        goto LABEL_3034;
      }

      memcpy(__b, v1783, 4 * v1762);
      if (&__b[v1249] < __b)
      {
        goto LABEL_3034;
      }
    }

    v1250 = (v1244 + 4 * v1248);
    v1251 = v1726;
    if (v1250 < v1244)
    {
      goto LABEL_3034;
    }

    v1252 = &__b[v1248];
    if (v1252 < __b)
    {
      goto LABEL_3034;
    }

    __N = v1248;
    v1253 = 4 * v1248;
    v1254 = v1768;
    if (v1768 >= 1)
    {
      if (v1252 > v1782)
      {
        goto LABEL_3034;
      }

      if (v1250 > v1247)
      {
        goto LABEL_3034;
      }

      v1255 = 4 * v1768;
      if (v1255 > v1247 - v1250)
      {
        goto LABEL_3034;
      }

      if (v1255 > 2560 - v1253)
      {
        goto LABEL_3034;
      }

      v1256 = v1252;
      memmove(v1252, v1250, 4 * v1768);
      v1252 = v1256;
      if (&v1256[v1255 / 4] < v1256)
      {
        goto LABEL_3034;
      }
    }

    v1681 = v1253;
    v1682 = v1252;
    v1706 = v1254;
    v1719 = v1251 + 52212;
    v1725 = v1764;
    v1732 = v1764;
    v1722 = v1763;
    v1739 = &v1802 + 8;
    v1715 = v1815;
    v1733 = *(&v1811 + 1);
    v1737 = v1811;
    v1723 = *(&v1808 + 1);
    v1724 = v1808;
    memcpy(v1799, &unk_19B3A0FF4, sizeof(v1799));
    memset(v1846, 255, sizeof(v1846));
    memset(v1845, 255, sizeof(v1845));
    memset(v1844, 255, sizeof(v1844));
    *&v1257 = -1;
    *(&v1257 + 1) = -1;
    v1798[19] = v1257;
    v1798[18] = v1257;
    v1798[17] = v1257;
    v1798[16] = v1257;
    v1798[15] = v1257;
    v1798[14] = v1257;
    v1798[13] = v1257;
    v1798[12] = v1257;
    v1798[11] = v1257;
    v1798[10] = v1257;
    v1798[9] = v1257;
    v1798[8] = v1257;
    v1798[7] = v1257;
    v1798[6] = v1257;
    v1798[5] = v1257;
    v1798[4] = v1257;
    v1798[3] = v1257;
    v1798[2] = v1257;
    v1798[1] = v1257;
    v1798[0] = v1257;
    memset(v1843, 255, sizeof(v1843));
    *(&v1817 + 1) = -1;
    *&v1817 = -1;
    v1700 = xmmword_19B3A1420;
    v1832 = xmmword_19B3A1420;
    v1698 = unk_19B3A1430;
    v1833 = unk_19B3A1430;
    v1696 = unk_19B3A1450;
    v1697 = xmmword_19B3A1440;
    v1834 = xmmword_19B3A1440;
    v1835 = unk_19B3A1450;
    v1694 = unk_19B3A13F0;
    v1695 = xmmword_19B3A13E0;
    v1828 = xmmword_19B3A13E0;
    v1829 = unk_19B3A13F0;
    v1692 = unk_19B3A1410;
    v1693 = xmmword_19B3A1400;
    v1830 = xmmword_19B3A1400;
    v1831 = unk_19B3A1410;
    v1690 = unk_19B3A13B0;
    v1691 = xmmword_19B3A13A0;
    v1824 = xmmword_19B3A13A0;
    v1825 = unk_19B3A13B0;
    v1688 = unk_19B3A13D0;
    v1689 = xmmword_19B3A13C0;
    v1826 = xmmword_19B3A13C0;
    v1827 = unk_19B3A13D0;
    v1686 = unk_19B3A1370;
    v1687 = xmmword_19B3A1360;
    v1820 = xmmword_19B3A1360;
    v1821 = unk_19B3A1370;
    v1684 = unk_19B3A1390;
    v1685 = xmmword_19B3A1380;
    v1822 = xmmword_19B3A1380;
    v1823 = unk_19B3A1390;
    *&v1797[0] = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(__A) = 0;
    LOWORD(v1766) = 0;
    LOWORD(v1765) = 1;
    LODWORD(v1847[0]) = 0;
    v1258 = __N;
    vDSP_vfill(v1847, v1846, 1, __N);
    __src = v1846;
    LODWORD(v1847[0]) = 0;
    vDSP_vfill(v1847, v1845, 1, v1258);
    v1708 = v1844;
    LODWORD(v1847[0]) = 0;
    vDSP_vfill(v1847, v1843, 1, 0x280uLL);
    for (ii = 0; ii != 8; ii += 2)
    {
      v1261 = v1797 + ii + 2;
      if ((v1797 + ii) < v1797 || v1261 > v1797 + 8 || v1797 + ii > v1261)
      {
        goto LABEL_3034;
      }

      *(v1797 + ii) = 0;
    }

    v1707 = v1249;
    if (*v1711 == 2)
    {
      v1683 = v1797 + 8;
      v1264 = har_est(__b, v1782, __N, &__A, &v1766, &v1765, v1720, v1259, v1724, v1723, v1810, v1245);
      v1265 = v1722;
      if (v1246 > v1251 + 52224)
      {
        goto LABEL_3034;
      }

      v1266 = v1264;
      v1267 = v1722;
      noise_extr_corcod(__b, v1782, v1782, v1717, v1846, v1847, v1844, v1845, v1845, __src, __N, *(v1704 + 3018), v1246);
      *&v1807[0] = 0xAAAAAAAAAAAAAAAALL;
      if (v1267 > 0)
      {
        v1680 = v1266;
        memcpy(v1804, word_19B3A1240, sizeof(v1804));
        LODWORD(v1806[0]) = -1431655766;
        LODWORD(v1761) = -1431655766;
        memset(v1847, 255, sizeof(v1847));
        v1268 = bits_lagIndices_mode0_Har;
        v1269 = &v1761;
        v1270 = v1265;
        do
        {
          v1271 = v1268 + 1;
          v1273 = v1268 < bits_lagIndices_mode0_Har || v1271 > bits_lagIndices_modeNormal || v1268 > v1271;
          v1274 = (v1269 + 2);
          if (v1273 || v1269 < &v1761 || v1274 > (&v1761 + 4) || v1269 > v1274)
          {
            goto LABEL_3034;
          }

          *v1269 = 2;
          v1269 = (v1269 + 2);
          v1268 = v1271;
          --v1270;
        }

        while (v1270);
        v1278 = 0;
        v1732 = v1807 + 8;
        v1729 = v1806 + 4;
        v1279 = 2 * v1722;
        v1280 = v1804;
        v1281 = v1804;
        v1728 = &__b[__N];
        v1725 = &v1761 + 4;
        do
        {
          v1282 = (v1737 + v1278);
          v1283 = (v1737 + v1278 + 2);
          if (v1737 + v1278 < v1737 || v1283 > v1733 || v1282 > v1283)
          {
            goto LABEL_3034;
          }

          v1286 = v1810 + v1278;
          if ((v1810 + v1278) < v1810)
          {
            goto LABEL_3034;
          }

          if (v1286 + 2 > v1735)
          {
            goto LABEL_3034;
          }

          if (v1286 > v1286 + 2)
          {
            goto LABEL_3034;
          }

          v1287 = (v1728 + 4 * *v1282);
          if (v1287 > v1782)
          {
            goto LABEL_3034;
          }

          if (v1287 < __b)
          {
            goto LABEL_3034;
          }

          if (v1280 < v1804)
          {
            goto LABEL_3034;
          }

          v1288 = *(v1810 + v1278);
          if ((v1288 & 0x80000000) != 0)
          {
            goto LABEL_3034;
          }

          if (v1782 - v1287 < v1288)
          {
            goto LABEL_3034;
          }

          v1289 = v1807 + v1278;
          if ((v1807 + v1278) < v1807)
          {
            goto LABEL_3034;
          }

          v1290 = v1807 + v1278 + 2;
          if (v1290 > v1732)
          {
            goto LABEL_3034;
          }

          if (v1289 > v1290)
          {
            goto LABEL_3034;
          }

          FindNBiggest2_simple(v1287, v1281, v1805, v1288, v1289, 18);
          v1291 = __src;
          v1292 = &v1724[v1278 / 2];
          if (&v1724[v1278 / 2] < v1724)
          {
            goto LABEL_3034;
          }

          if ((v1292 + 1) > v1723)
          {
            goto LABEL_3034;
          }

          if (v1292 > v1292 + 1)
          {
            goto LABEL_3034;
          }

          v1293 = v1806 + v1278;
          if ((v1806 + v1278) < v1806 || (v1293 + 2) > v1729 || v1293 > v1293 + 2)
          {
            goto LABEL_3034;
          }

          *(v1806 + v1278) = *v1292;
          v1281 += 9;
          v1280 += 9;
          v1278 += 2;
        }

        while (v1279 != v1278);
        v1294 = 0;
        v1295 = v1845 + 4 * SLOWORD(v1806[0]) + -4 * ((v1761 + (v1761 >> 15)) >> 1);
        v1296 = LOWORD(v1810[0]) + v1761;
        v1297 = 4 * (LOWORD(v1810[0]) + v1761) > v1291 - v1295 || (LOWORD(v1810[0]) + v1761) > 0x280u;
        v1715 = v1845 + 4 * SLOWORD(v1806[0]) + -4 * ((v1761 + (v1761 >> 15)) >> 1);
        v1299 = v1297 || v1291 < v1295;
        LODWORD(v1705) = v1299;
        v1702 = v1847 + 4 * v1296;
        __n = 4 * (LOWORD(v1810[0]) + v1761);
        v1300 = v1804 + 8;
        LODWORD(v1710) = v1296;
        while (1)
        {
          v1301 = v1810 + v1294;
          v1302 = (&v1761 + 2 * v1294);
          if (v1294)
          {
            v1303 = v1806 + v1294;
            v1304 = (v1303 + 1);
            v1306 = v1303 < v1806 || v1304 > v1729 || v1303 > v1304;
            v1307 = v1302 + 2;
            v1310 = v1306 || v1302 < &v1761 || v1307 > v1725 || v1302 > v1307;
            v1311 = v1301 + 1;
            if (v1310 || v1301 < v1810 || v1311 > v1735 || v1301 > v1311)
            {
              goto LABEL_3034;
            }

            v1315 = (*v1302 + (*v1302 >> 15));
            v1316 = *v1303;
            v1317 = v1316 + (v1315 >> 1);
            v1318 = v1316 - (v1315 >> 1) - *v1301;
            if (v1318 < v1317)
            {
              v1319 = 0;
              do
              {
                v1320 = v1845 + v1317;
                v1321 = v1320 + 1;
                v1323 = v1320 < v1845 || v1321 > v1291 || v1320 > v1321;
                v1324 = v1847 + v1319;
                v1325 = v1324 + 1;
                if (v1323 || v1324 < v1847 || v1325 > v1848 || v1324 > v1325)
                {
                  goto LABEL_3034;
                }

                *v1324 = *v1320;
                ++v1319;
                --v1317;
              }

              while (v1318 < v1317);
            }
          }

          else
          {
            if (v1715 < v1845)
            {
              goto LABEL_3034;
            }

            if (v1710 >= 1)
            {
              if (v1705)
              {
                goto LABEL_3034;
              }

              memcpy(v1847, v1715, __n);
              if (v1702 < v1847)
              {
                goto LABEL_3034;
              }
            }
          }

          v1329 = (v1737 + 2 * v1294);
          if (v1329 < v1737)
          {
            goto LABEL_3034;
          }

          if (v1329 + 1 > v1733)
          {
            goto LABEL_3034;
          }

          if (v1329 > v1329 + 1)
          {
            goto LABEL_3034;
          }

          if (v1301 < v1810)
          {
            goto LABEL_3034;
          }

          if (v1301 + 1 > v1735)
          {
            goto LABEL_3034;
          }

          if (v1301 > v1301 + 1)
          {
            goto LABEL_3034;
          }

          if (v1302 < &v1761)
          {
            goto LABEL_3034;
          }

          if (v1302 + 2 > v1725)
          {
            goto LABEL_3034;
          }

          if (v1302 > (v1302 + 2))
          {
            goto LABEL_3034;
          }

          v1330 = &v1804[9 * v1294];
          if (v1330 < v1804)
          {
            goto LABEL_3034;
          }

          v1331 = v1807 + v1294;
          if (v1331 < v1807)
          {
            goto LABEL_3034;
          }

          if ((v1331 + 1) > v1732)
          {
            goto LABEL_3034;
          }

          if (v1331 > v1331 + 1)
          {
            goto LABEL_3034;
          }

          v1332 = (v1719 + 2 * v1294);
          if (v1332 < v1719)
          {
            goto LABEL_3034;
          }

          v1333 = *v1329;
          v1334 = *(v1810 + v1294);
          v1335 = *(&v1761 + v1294);
          v1336 = *v1331;
          if (v1334 < 2)
          {
            v1339 = v1847;
          }

          else
          {
            v1337 = 0;
            v1338 = v1847;
            do
            {
              v1339 = (v1338 + 4);
              if (v1338 < v1847 || v1339 > v1848 || v1338 > v1339)
              {
                goto LABEL_3034;
              }

              ++v1337;
              v1338 = (v1338 + 4);
            }

            while (v1334 - 1 > v1337);
          }

          if (v1332 + 1 > v1720 || v1332 + 1 < v1332)
          {
            goto LABEL_3034;
          }

          v1342 = *v1332;
          v1343 = v1335 + ((v1335 & 0x8000) >> 15);
          if (v1342 < 0)
          {
            LOWORD(v1344) = v1335 - 1;
          }

          else
          {
            v1344 = v1342 + (v1343 >> 1);
            if (v1344 >= v1335)
            {
              LOWORD(v1344) = v1335 - 1;
            }
          }

          v1345 = (v1342 - (v1343 >> 1)) & ~((v1342 - (v1343 >> 1)) >> 31);
          if (v1344 < v1345)
          {
LABEL_2520:
            v1346 = v1342 & ~(v1342 >> 31);
            goto LABEL_2521;
          }

          LOWORD(v1346) = 0;
          v1347 = v1728 + 4 * v1333;
          v1348 = v1339 + 1 - v1334 + v1345;
          v1349 = 0.0;
          v1350 = 1.0e30;
          do
          {
            if (v1334 < 1)
            {
              v1374 = &v1348[-*(v1810 + v1294)];
              if (v1374 < v1847)
              {
                goto LABEL_3034;
              }

              v1348 = v1374 + 1;
              if (v1374 + 1 > v1848 || v1374 > v1348)
              {
                goto LABEL_3034;
              }
            }

            else
            {
              LOWORD(v1351) = 0;
              v1352 = &v1348[(v1334 - 1) + 1];
              v1353 = 0.0;
              do
              {
                v1354 = v1348 + 1;
                if (v1348 < v1847 || v1354 > v1848 || v1348 > v1354)
                {
                  goto LABEL_3034;
                }

                v1353 = v1353 + (*v1348 * *v1348);
                v1351 = (v1351 + 1);
                ++v1348;
              }

              while (v1351 < v1334);
              v1357 = v1352 - 4 * *(v1810 + v1294);
              if (v1357 < v1847)
              {
                goto LABEL_3034;
              }

              v1348 = (v1357 + 4);
              if (v1357 + 4 > v1848 || v1357 > v1348)
              {
                goto LABEL_3034;
              }

              if (v1353 != 0.0)
              {
                v1358 = 0.0;
                if (v1336 >= 1)
                {
                  v1359 = v1300;
                  v1360 = v1336;
                  do
                  {
                    v1361 = v1359 - 8 < v1330 || v1359 > v1805;
                    if (v1361 || v1359 - 8 > v1359)
                    {
                      goto LABEL_3034;
                    }

                    v1363 = *(v1359 - 2);
                    v1364 = (v1347 + 4 * v1363);
                    v1365 = v1364 + 1;
                    v1366 = v1364 < __b || v1365 > v1782;
                    v1367 = v1366 || v1364 > v1365;
                    v1368 = (v1357 + 4 * v1363);
                    v1369 = v1368 + 1;
                    v1370 = !v1367 && v1368 >= v1847;
                    v1371 = !v1370 || v1369 > v1848;
                    if (v1371 || v1368 > v1369)
                    {
                      goto LABEL_3034;
                    }

                    v1358 = v1358 + (*v1364 * *v1368);
                    v1359 += 8;
                  }

                  while (--v1360);
                }

                v1373 = v1358 * v1358;
                if (v1349 * v1353 < v1350 * v1373)
                {
                  v1350 = v1353;
                  v1349 = v1373;
                  LOWORD(v1346) = v1345;
                }
              }
            }

            v1345 = (v1345 + 1);
          }

          while (v1345 <= v1344);
          if (v1349 == 0.0)
          {
            goto LABEL_2520;
          }

LABEL_2521:
          *v1332 = v1346;
          v1376 = &v1802 + 2 * v1294;
          v1291 = __src;
          if (v1376 < &v1802 || (v1376 + 2) > v1739 || v1376 > v1376 + 2)
          {
            goto LABEL_3034;
          }

          *(&v1802 + v1294++) = v1346;
          v1300 += 144;
          if (v1294 == v1722)
          {
            v1377 = &v1802;
            v1378 = bits_lagIndices_mode0_Har;
            v1251 = v1726;
            v1379 = v1722;
            LOWORD(v1266) = v1680;
            while (1)
            {
              v1380 = (v1377 + 1);
              v1381 = v1377 < &v1802 || v1380 > v1739;
              v1382 = v1381 || v1377 > v1380;
              v1383 = v1378 + 1;
              v1384 = !v1382 && v1378 >= bits_lagIndices_mode0_Har;
              v1385 = !v1384 || v1383 > bits_lagIndices_modeNormal;
              if (v1385 || v1378 > v1383)
              {
                goto LABEL_3034;
              }

              v1387 = *v1377++;
              push_indice(v1251, 1596, v1387, 1);
              v1378 = v1383;
              if (!--v1379)
              {
                goto LABEL_2543;
              }
            }
          }
        }
      }

LABEL_2543:
      v1388 = v1766;
      v1389 = v1766;
      v1390 = v1706;
      if (!LOWORD(v1765))
      {
        if (v1766 == 80 && *v1720 == 80)
        {
          v1388 = 0;
          v1389 = 80;
        }

        else
        {
          v1389 = v1802 + v1766;
          v1388 = 0;
          LOWORD(v1766) = v1802 + v1766;
        }
      }

      LODWORD(__src) = v1388;
      v1804[12] = v1700;
      v1804[13] = v1698;
      v1804[14] = v1697;
      v1804[15] = v1696;
      v1804[8] = v1695;
      v1804[9] = v1694;
      v1804[10] = v1693;
      v1804[11] = v1692;
      v1804[4] = v1691;
      v1804[5] = v1690;
      v1804[6] = v1689;
      v1804[7] = v1688;
      v1804[0] = v1687;
      v1804[1] = v1686;
      v1804[2] = v1685;
      v1804[3] = v1684;
      LOWORD(v1807[0]) = -21846;
      memset(v1847, 255, sizeof(v1847));
      *&v1678[4] = v1739;
      v1739 = v1836;
      genhf_noise(v1844, v1845, v1843, v1708, v1846, v1847, v1738, v1701, v1389, v1266, v1797, v1683, &v1820, v1836, v1707, v1706, v1810, v1735, &v1802, *&v1678[4], v1737, v1733, v1724, v1723);
      if (v1390 < 1)
      {
        if (v1390)
        {
          goto LABEL_3034;
        }
      }

      else
      {
        if (v1682 > v1782)
        {
          goto LABEL_3034;
        }

        if (4 * v1390 > (2560 - v1681))
        {
          goto LABEL_3034;
        }

        if (v1390 >= 0x281)
        {
          goto LABEL_3034;
        }

        memcpy(v1847, v1682, 4 * v1390);
        if ((v1847 + 4 * v1390) < v1847)
        {
          goto LABEL_3034;
        }
      }

      FindNBiggest2_simple(v1847, v1804, &v1804[16], v1390, v1807, 32);
      v1582 = SLOWORD(v1807[0]);
      if (SLOWORD(v1807[0]) >= 1)
      {
        v1583 = v1804 + 8;
        do
        {
          v1584 = v1583 - 8 < v1804 || v1583 > &v1804[16];
          if (v1584 || v1583 - 8 > v1583)
          {
            goto LABEL_3034;
          }

          v1586 = v1847 + *(v1583 - 2);
          v1587 = v1586 + 1;
          v1588 = v1586 < v1847 || v1587 > v1848;
          if (v1588 || v1586 > v1587)
          {
            goto LABEL_3034;
          }

          *v1586 = 0;
          v1583 += 8;
        }

        while (--v1582);
      }

      if (v1390)
      {
        v1590 = 0.0;
        v1591 = v1847;
        v1592 = v1390;
        do
        {
          v1593 = *v1591++;
          v1590 = v1590 + (v1593 * v1593);
          --v1592;
        }

        while (v1592);
        v1594 = 0.0;
        v1595 = v1843;
        v1596 = v1390;
        do
        {
          v1597 = *v1595++;
          v1594 = v1594 + (v1597 * v1597);
          --v1596;
        }

        while (v1596);
        v1598 = 0;
        if (v1590 != 0.0 && v1594 != 0.0)
        {
          v1599 = log10(sqrt((v1590 / v1594)));
          v1600 = 0;
          v1598 = 0;
          v1601 = v1599;
          v1602 = 3.4028e38;
          do
          {
            v1603 = vabds_f32(v1601, gain_table_SWB_BWE[v1600]);
            if (v1603 < v1602)
            {
              v1602 = v1603;
              v1598 = v1600;
            }

            ++v1600;
          }

          while (v1600 != 4);
        }
      }

      else
      {
        v1598 = 0;
      }

      push_indice(v1251, 1597, v1598, 2);
      v1604 = &gain_table_SWB_BWE[v1598];
      v1605 = v1604 + 1;
      if (v1604 < gain_table_SWB_BWE || v1605 > subband_search_offsets || v1604 > v1605)
      {
        goto LABEL_3034;
      }

      v1608 = __exp10(*v1604);
      v1609 = v1683;
      v1610 = v1739;
      v1611 = v1701;
      v1612 = v1738;
      v1613 = v1721;
      v1614 = v1727;
      v1615 = v1741;
      ton_ene_est(v1843, v1798, &v1798[20], v1789, v1727, &v1792, v1741, v1608, v1616, v1791, v1721, v1790, v1730, __N, v1390, v1738, v1701, &v1820, v1739, v1797, v1683);
      v1679 = v1610;
      v1617 = v1708;
      Gettonl_scalfact(v1843, v1708, v1782, v1717, __N, v1706, v1611, v1612, v1789, v1614, &v1792, v1615, v1791, v1613, v1796, v1714, v1798, &v1798[20], &v1820, v1679, v1797, v1609);
      *v1720 = __src;
      if (v1611 < v1612)
      {
        v1618 = v1843 - 4 * __N;
        while (1)
        {
          v1619 = &v1792 + v1611;
          v1620 = v1619 + 1;
          v1622 = v1619 < &v1792 || v1620 > v1741 || v1619 > v1620;
          v1623 = v1791 + v1611;
          v1624 = v1623 + 1;
          if (v1622 || v1623 < v1791 || v1624 > v1721 || v1623 > v1624)
          {
            goto LABEL_3034;
          }

          v1628 = *v1619;
          if (v1628 <= *v1623)
          {
            break;
          }

LABEL_2963:
          if (++v1611 == v1738)
          {
            goto LABEL_2964;
          }
        }

        v1629 = *v1623 - *v1619 + 1;
        v1630 = v1628;
        v1631 = __b;
        v1632 = v1618;
        while (1)
        {
          v1633 = &v1632[v1630 * 4];
          if (&v1632[v1630 * 4] < v1843)
          {
            goto LABEL_3034;
          }

          v1634 = (v1633 + 1) > v1617 || v1633 > v1633 + 1;
          v1635 = &v1631[v1630];
          v1636 = &v1631[v1630 + 1];
          v1637 = !v1634 && v1635 >= __b;
          v1638 = !v1637 || v1636 > v1782;
          if (v1638 || v1635 > v1636)
          {
            goto LABEL_3034;
          }

          *v1635 = *v1633;
          ++v1631;
          v1632 += 4;
          if (!--v1629)
          {
            goto LABEL_2963;
          }
        }
      }
    }

    else
    {
      v1398 = spectrumsmooth_noiseton(__b, v1782, v1782, v1717, v1846, v1847, v1844, v1845, v1845, __src, __N, &v1758);
      if (v1733 < v1737 || v1725 > 4 || (v1733 - v1737) >> 1 < v1725)
      {
        goto LABEL_3034;
      }

      v1399 = v1398;
      v1733 = &__b[__N];
      *&v1804[0] = 0xAAAAAAAAAAAAAAAALL;
      *&v1807[0] = 0xAAAAAAAAAAAAAAAALL;
      *&v1806[0] = 0xAAAAAAAAAAAAAAAALL;
      memset(v1847, 255, sizeof(v1847));
      if (v1732)
      {
        v1400 = v1806;
        v1401 = v1810;
        v1402 = v1737;
        v1403 = v1799;
        v1404 = v1799;
        v1405 = v1732;
        do
        {
          v1406 = *v1402++;
          v1407 = &v1733[v1406];
          if (v1407 > v1782 || v1407 < __b)
          {
            goto LABEL_3034;
          }

          v1410 = *v1401++;
          v1409 = v1410;
          if ((v1410 & 0x80000000) != 0 || v1782 - v1407 < v1409 || v1403 < v1799 || v1400 + 1 > v1806 + 4 || v1400 > v1400 + 1)
          {
            goto LABEL_3034;
          }

          FindNBiggest2_simple(v1407, v1404, v1800, v1409, v1400++, 18);
          v1404 += 72;
          v1403 += 72;
          --v1405;
        }

        while (v1405);
        v1411 = v1807;
        v1412 = bits_lagIndices_modeNormal;
        v1413 = v1732;
        do
        {
          v1414 = v1412 + 1 > word_19B3A1240 || v1412 > v1412 + 1;
          v1415 = v1411 + 1;
          if (v1414 || v1415 > v1807 + 4 || v1411 > v1415)
          {
            goto LABEL_3034;
          }

          v1418 = *v1412++;
          *v1411++ = ldexp(1.0, v1418);
          --v1413;
        }

        while (v1413);
        v1419 = v1804;
        v1420 = subband_search_offsets;
        v1421 = v1732;
        do
        {
          v1422 = v1420 + 1 > &stable_LSP || v1420 > v1420 + 1;
          v1423 = v1419 + 1;
          if (v1422 || v1423 > v1804 + 4 || v1419 > v1423)
          {
            goto LABEL_3034;
          }

          v1426 = *v1420++;
          *v1419++ = v1426;
          --v1421;
        }

        while (v1421);
      }

      *v1847 = (*v1846 + *(v1846 + 1)) * 0.5;
      if (__N < 3)
      {
        v1444 = 1;
      }

      else
      {
        v1427 = __N - 1;
        v1428 = 1;
        do
        {
          v1429 = v1428;
          v1430 = v1846 + 4 * v1428;
          v1432 = v1430 - 4 < v1846 || v1430 > v1847 || v1430 - 4 > v1430;
          v1433 = v1430 + 4;
          v1435 = v1432 || v1433 > v1847 || v1430 > v1433;
          v1436 = v1430 + 8;
          v1438 = v1435 || v1436 > v1847 || v1433 > v1436;
          v1439 = v1847 + 4 * v1429;
          v1440 = v1439 + 4;
          if (v1438 || v1439 < v1847 || v1440 > v1848 || v1439 > v1440)
          {
            goto LABEL_3034;
          }

          *(v1847 + v1429) = ((*(v1430 - 1) + *(v1846 + v1429)) + *(v1430 + 1)) / 3.0;
          v1428 = v1429 + 1;
        }

        while (v1427 > (v1429 + 1));
        v1444 = v1428;
      }

      v1447 = v1846 + v1444;
      if (v1447 - 1 < v1846)
      {
        goto LABEL_3034;
      }

      if (v1447 > v1847)
      {
        goto LABEL_3034;
      }

      if (v1447 - 1 > v1447)
      {
        goto LABEL_3034;
      }

      if (v1447 + 1 > v1847)
      {
        goto LABEL_3034;
      }

      if (v1447 > v1447 + 1)
      {
        goto LABEL_3034;
      }

      v1448 = v1847 + v1444;
      if (v1448 < v1847 || v1448 + 1 > v1848 || v1448 > v1448 + 1)
      {
        goto LABEL_3034;
      }

      *v1448 = (*(v1447 - 1) + *v1447) * 0.5;
      if (v1732)
      {
        v1449 = 0;
        v1730 = v1804 + 8;
        v1729 = v1807 + 8;
        v1728 = v1806 + 8;
        v1450 = &v1799[4];
        do
        {
          v1451 = v1804 + 2 * v1449;
          if (v1451 + 2 > v1730 || v1451 > v1451 + 2)
          {
            goto LABEL_3034;
          }

          v1453 = v1807 + 2 * v1449;
          if ((v1453 + 2) > v1729)
          {
            goto LABEL_3034;
          }

          if (v1453 > v1453 + 2)
          {
            goto LABEL_3034;
          }

          v1454 = &v1799[72 * v1449];
          if (v1454 < v1799)
          {
            goto LABEL_3034;
          }

          v1455 = v1806 + v1449;
          if ((v1455 + 1) > v1728)
          {
            goto LABEL_3034;
          }

          if (v1455 > v1455 + 1)
          {
            goto LABEL_3034;
          }

          v1456 = *(v1804 + v1449);
          v1457 = v1846 + v1456;
          if (v1457 < v1846 || v1457 + 1 > v1847 || v1457 > v1457 + 1)
          {
            goto LABEL_3034;
          }

          v1458 = 0;
          v1459 = *(v1810 + v1449);
          v1460 = (__N - (v1459 + v1456));
          v1461 = v1847 + 4 * v1456;
          v1462 = *(v1807 + v1449);
          v1463 = *v1455;
          while (1)
          {
            v1464 = v1457 + 1;
            if (*v1457 != 0.0 || v1460 <= v1458)
            {
              break;
            }

            if (v1464 >= v1846)
            {
              v1465 = v1457 + 2;
              if (v1457 + 2 <= v1847)
              {
                ++v1458;
                ++v1457;
                if (v1464 <= v1465)
                {
                  continue;
                }
              }
            }

            goto LABEL_3034;
          }

          v1466 = 0x3FFFFFFFFFFFFFFFLL;
          if (v1458 != v1460)
          {
            v1466 = 0;
          }

          v1467 = &v1457[v1466];
          if (v1458 == v1460)
          {
            LOWORD(v1468) = v1460 - 1;
          }

          else
          {
            LOWORD(v1468) = v1458;
          }

          if (v1459 < 1)
          {
            v1471 = 0.0;
            v1470 = &v1457[v1466];
          }

          else
          {
            LOWORD(v1469) = 0;
            v1470 = &v1457[(v1458 != v1460) + (v1459 - 1)];
            v1471 = 0.0;
            v1472 = &v1457[v1466];
            do
            {
              v1473 = v1472 + 1;
              if (v1472 < v1846 || v1473 > v1847 || v1472 > v1473)
              {
                goto LABEL_3034;
              }

              v1471 = v1471 + (*v1472 * *v1472);
              v1469 = (v1469 + 1);
              ++v1472;
            }

            while (v1469 < v1459);
          }

          if (v1462 < 1)
          {
            LOWORD(v1479) = -1;
          }

          else
          {
            v1476 = 0;
            v1477 = (v1470 - 4 * v1459);
            v1478 = 0.0;
            v1479 = 0xFFFF;
            while (1)
            {
              if (v1459 < 1)
              {
                v1481 = v1477;
              }

              else
              {
                LOWORD(v1480) = 0;
                v1481 = &v1477[(v1459 - 1) + 1];
                v1482 = 0.0;
                do
                {
                  v1483 = v1477 + 1;
                  if (v1477 < v1846 || v1483 > v1847 || v1477 > v1483)
                  {
                    goto LABEL_3034;
                  }

                  v1482 = v1482 + (*v1477 * *v1477);
                  v1480 = (v1480 + 1);
                  ++v1477;
                }

                while (v1480 < v1459);
                if (v1482 != 0.0)
                {
                  v1486 = 0.0;
                  if (v1463 >= 1)
                  {
                    v1487 = v1450;
                    v1488 = v1463;
                    do
                    {
                      if (v1487 - 4 < v1454 || v1487 > v1800 || v1487 - 4 > v1487)
                      {
                        goto LABEL_3034;
                      }

                      v1491 = *(v1487 - 2);
                      v1492 = &v1733[*(v1737 + 2 * v1449) + v1491];
                      v1493 = v1492 + 1;
                      v1494 = v1492 < __b || v1493 > v1782;
                      v1495 = v1494 || v1492 > v1493;
                      v1496 = &v1461[4 * v1491];
                      v1497 = v1496 + 1;
                      v1498 = !v1495 && v1496 >= v1847;
                      v1499 = !v1498 || v1497 > v1848;
                      if (v1499 || v1496 > v1497)
                      {
                        goto LABEL_3034;
                      }

                      v1486 = v1486 + (*v1492 * *v1496);
                      v1487 += 4;
                      --v1488;
                    }

                    while (v1488);
                  }

                  v1501 = v1486 * v1486;
                  if (v1478 == 0.0 && v1501 == 0.0 || v1478 * v1482 < v1471 * v1501)
                  {
                    v1471 = v1482;
                    v1478 = v1501;
                    v1479 = v1476;
                  }
                }
              }

              v1477 = (v1481 - 4 * v1459);
              v1502 = v1467 + 1;
              do
              {
                v1503 = v1502 + 1;
                if (v1502 < v1846 || v1503 > v1847 || v1502 > v1503)
                {
                  goto LABEL_3034;
                }

                v1468 = (v1468 + 1);
                ++v1477;
              }

              while (*v1502++ == 0.0 && v1468 < v1460);
              if (v1468 >= v1460)
              {
                break;
              }

              v1467 = v1503 - 1;
              if (v1462 <= ++v1476)
              {
                goto LABEL_2752;
              }
            }

            if (v1479 == 0xFFFF)
            {
              LOWORD(v1479) = 0;
            }
          }

LABEL_2752:
          v1507 = &v1802 + 2 * v1449;
          if ((v1507 + 2) > v1739 || v1507 > v1507 + 2)
          {
            goto LABEL_3034;
          }

          *(&v1802 + v1449++) = v1479;
          v1450 += 72;
        }

        while (v1449 != v1732);
        v1508 = 0;
        v1509 = v1796 + 2 * v1738;
        v1510 = v1725;
        v1511 = v1726;
        v1512 = v1715;
        do
        {
          v1513 = &v1509[v1508 - 8];
          v1514 = &v1509[v1508 - 6];
          if (v1513 < v1796 || v1514 > v1714 || v1513 > v1514)
          {
            goto LABEL_3034;
          }

          v1517 = *v1513;
          v1518 = (&v1802 + v1508);
          v1519 = (&v1802 + v1508 + 2);
          v1522 = v1519 <= v1739 && v1518 <= v1519 && v1518 >= &v1802;
          if (v1517)
          {
            if (!v1522)
            {
              goto LABEL_3034;
            }

            *v1518 = 0;
          }

          else
          {
            v579 = !v1522;
            v1523 = &bits_lagIndices_modeNormal[v1508 / 2];
            v1524 = &bits_lagIndices_modeNormal[v1508 / 2 + 1];
            if (v579 || v1523 < bits_lagIndices_modeNormal || v1524 > word_19B3A1240 || v1523 > v1524)
            {
              goto LABEL_3034;
            }

            push_indice(v1511, 1596, *v1518, *v1523);
          }

          v1508 += 2;
          --v1510;
        }

        while (v1510);
        convert_lagIndices_pls2smp(&v1802, v1732, &v1802, v1846, v1847, v1810, v1707);
        v1528 = v1738;
      }

      else
      {
        v1511 = v1726;
        v1528 = v1738;
        v1512 = v1715;
      }

      v1529 = v1528 - 4;
      v1530 = &v1789[-1] + 4 * v1528;
      if (v1530 > v1727 || v1530 < v1789 || v1725 > (128 - 4 * v1529) >> 2)
      {
        goto LABEL_3034;
      }

      GetlagGains(v1845, __src, v1530, v1732, v1810, &v1802, __N, &v1814);
      v1532 = v1708;
      for (jj = 0; jj != 16; jj += 4)
      {
        v1534 = &v1815[-1] + jj + 4;
        if ((&v1815[-1] + jj) < &v1814 || v1534 > v1512 || &v1815[-1] + jj > v1534)
        {
          goto LABEL_3034;
        }

        *(&v1815[-1] + jj) = *(&v1815[-1] + jj) * 0.9;
      }

      v1537 = 0;
      v1538 = v1796 + v1529;
      do
      {
        *(&v1818[-1] + v1537) = 0;
        if (v1538 < v1796 || v1538 + 1 > v1714 || v1538 > v1538 + 1)
        {
          goto LABEL_3034;
        }

        if (!*v1538)
        {
          v1539 = &v1815[-1] + v1537;
          if ((&v1815[-1] + v1537) < &v1814 || v1539 + 4 > v1512 || v1539 > v1539 + 4)
          {
            goto LABEL_3034;
          }

          *(&v1818[-1] + v1537) = v1399 * *(&v1815[-1] + v1537);
        }

        v1537 += 4;
        ++v1538;
      }

      while (v1537 != 16);
      v1540 = __N;
      GetSynthesizedSpecThinOut(v1845, __src, v1843, v1532, v1725, v1810, v1735, v1531, &v1802, v1739, &v1814, v1512, __N);
      noiseinj_hf(v1843, v1708, &v1817, v1818, v1789, v1727, v1511 + 52224, __n, v1796, v1714, v1738, &v1792, v1741, v1791, v1721, v1707);
      v1541 = v1708;
      v1542 = v1717;
      do
      {
        v1543 = v1796 + 2 * v1529;
        v1544 = v1543 + 2;
        if (v1543 < v1796 || v1544 > v1714 || v1543 > v1544)
        {
          goto LABEL_3034;
        }

        v1547 = &v1792 + v1529;
        v1550 = v1547 + 1 <= v1741 && v1547 <= v1547 + 1 && v1547 >= &v1792;
        v1551 = v1791 + v1529;
        v579 = !v1550;
        v1552 = v1551 + 1;
        v1553 = !v579 && v1551 >= v1791;
        if (*(v1796 + v1529))
        {
          if (!v1553 || v1552 > v1721 || v1551 > v1552)
          {
            goto LABEL_3034;
          }

          v1556 = *v1547;
          if (v1556 <= *v1551)
          {
            v1557 = *v1551 - *v1547 + 1;
            v1558 = v1556;
            v1559 = __b;
            v1560 = v1782;
            do
            {
              v1561 = &v1560[v1558];
              if (&v1560[v1558] < v1782)
              {
                goto LABEL_3034;
              }

              v1562 = v1561 + 1 > v1542 || v1561 > v1561 + 1;
              v1563 = &v1559[v1558];
              v1564 = &v1559[v1558 + 1];
              v1565 = !v1562 && v1563 >= __b;
              v1566 = !v1565 || v1564 > v1782;
              if (v1566 || v1563 > v1564)
              {
                goto LABEL_3034;
              }

              *v1563 = *v1561;
              ++v1559;
              ++v1560;
              --v1557;
            }

            while (v1557);
          }
        }

        else
        {
          if (!v1553 || v1552 > v1721 || v1551 > v1552)
          {
            goto LABEL_3034;
          }

          v1570 = *v1547;
          if (v1570 <= *v1551)
          {
            v1571 = *v1551 - *v1547 + 1;
            v1572 = v1570;
            v1573 = __b;
            v1574 = v1843 - 4 * v1540;
            do
            {
              v1575 = &v1574[v1572 * 4];
              if (&v1574[v1572 * 4] < v1843)
              {
                goto LABEL_3034;
              }

              v1576 = (v1575 + 4) > v1541 || v1575 > v1575 + 4;
              v1577 = &v1573[v1572];
              v1578 = &v1573[v1572 + 1];
              v1579 = !v1576 && v1577 >= __b;
              v1580 = !v1579 || v1578 > v1782;
              if (v1580 || v1577 > v1578)
              {
                goto LABEL_3034;
              }

              *v1577 = *v1575;
              ++v1573;
              v1574 += 4;
              --v1571;
            }

            while (v1571);
          }
        }

        ++v1529;
      }

      while (v1529 != v1738);
    }

LABEL_2964:
    v1640 = __N;
    v1641 = v1707;
    v1642 = &__b[__N + v1706];
    v1643 = v1642 - 1;
    if (v1642 - 1 < __b)
    {
      goto LABEL_3034;
    }

    if (v1642 > v1782)
    {
      goto LABEL_3034;
    }

    if (v1643 > v1642)
    {
      goto LABEL_3034;
    }

    *(v1642 - 1) = *(v1642 - 1) * 0.0625;
    v1644 = v1642 - 2;
    if (v1642 - 2 < __b)
    {
      goto LABEL_3034;
    }

    if (v1644 > v1643)
    {
      goto LABEL_3034;
    }

    *(v1642 - 2) = *(v1642 - 2) * 0.125;
    v1645 = v1642 - 3;
    if (v1642 - 3 < __b)
    {
      goto LABEL_3034;
    }

    if (v1645 > v1644)
    {
      goto LABEL_3034;
    }

    *(v1642 - 3) = *(v1642 - 3) * 0.25;
    v1646 = v1642 - 4;
    if (v1646 < __b || v1646 > v1645)
    {
      goto LABEL_3034;
    }

    *v1646 = *v1646 * 0.5;
    if (!*v1711 && v1640 >= 1)
    {
      v1647 = __b;
      do
      {
        v1648 = v1647 + 1;
        v1649 = v1647 < __b || v1648 > v1782;
        if (v1649 || v1647 > v1648)
        {
          goto LABEL_3034;
        }

        *v1647++ = 0.0;
      }

      while (--v1641);
    }

    v1651 = HIWORD(v1759);
    if (HIWORD(v1759) > 0x20uLL)
    {
      goto LABEL_3034;
    }

    LODWORD(v1222) = SHIWORD(v1759);
    v1391 = v1746;
    v1652 = *v1740;
    v1653 = *v1711;
    post_hq2_swb(__b, v1782, v1746, v1745, *v1711, v1744, SHIWORD(v1759), v1796, &v1792, v1791, v1783, *v1740, v1785);
    if (!v1653)
    {
      spt_swb_peakpos_tmp_save(v1783, v1652, v1651, &v1792, v1741, v1791, v1721, v1654, &v1777[2], v1699);
      v1655 = 0;
      v1656 = (v1651 << 32) - 0x400000000;
      do
      {
        v1657 = (v1796 + (v1656 >> 31));
        v1658 = v1657 + 1;
        v1659 = v1657 < v1796 || v1658 > v1714;
        if (v1659 || v1657 > v1658)
        {
          goto LABEL_3034;
        }

        if (!*v1657)
        {
          goto LABEL_2999;
        }

        v1661 = v1785 + (v1656 >> 32);
        if (v1661 < v1785 || (v1661 + 1) > v1736 || v1661 > v1661 + 1)
        {
          goto LABEL_3034;
        }

        if (!*v1661)
        {
LABEL_2999:
          *(&v1777[2] + v1655) = 0;
        }

        v1655 += 2;
        v1656 += 0x100000000;
      }

      while (v1655 != 8);
    }
  }

  else
  {
    v1391 = *v1225 + 1;
  }

  if (v1391 >= 1)
  {
    if (v1391 >= 0x3C1u)
    {
      goto LABEL_3034;
    }

    v1392 = v1391 & 0x3FFF;
    memcpy(v1783, v1782, v1392 * 4);
    if (&v1783[v1392] < v1783)
    {
      goto LABEL_3034;
    }
  }

  if (*v1718 < v1718[2] || v1726 + 52170 > (v1726 + 52172) || v1726 + 52216 > (v1726 + 52218) || v1726 + 52218 > (v1726 + 52220))
  {
    goto LABEL_3034;
  }

  v1393 = v1726;
  v1394 = *v1711;
  v1395 = *v1712;
  updat_prev_frm(v1783, *v1740, *v1718, v1718[1], *v1712, v1759, v1716[0], v1222, *(v1726 + 130), v1713[0], v1711[0], (v1726 + 52170), v1726 + 52172, v1726 + 52180, &v1777[2], v1699, (v1726 + 52216), (v1726 + 52218), 0);
  v1396 = *(v1393 + 130);
  if (v1396 != 2)
  {
    *(v1704 + 2960) = 0;
  }

  if (v1394 != 2 && (v1395 == 16400 || v1395 == 13200) && v1396 == 2)
  {
    *(v1704 + 3060) = -1;
  }

  *v1709 = 0;
  *(v1704 + 3016) = 0;
}