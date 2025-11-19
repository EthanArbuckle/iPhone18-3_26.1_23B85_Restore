void decod_audio(uint64_t a1, float **a2, float **a3, int a4, float *a5, uint64_t a6, uint64_t a7, unint64_t *a8, char **a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v17 = a1;
  v180[1] = *MEMORY[0x1E69E9840];
  v18 = (a1 + 21164);
  v165 = 0.0;
  next_indice = get_next_indice(a1, 1);
  v143 = a4;
  if (a4 && *(v17 + 5176) >= 13200)
  {
    v18[211] = get_next_indice(v17, 1);
  }

  v155 = v18;
  if (v18[211])
  {
    if (*(v17 + 5242) == 2)
    {
      v18[213] = 0;
      v18[246] = 14;
      v146 = 4;
      v20 = 1;
LABEL_18:
      v23 = v143;
      goto LABEL_19;
    }

    *(v17 + 5168) = 1;
    v18[211] = 0;
  }

  if (*(v17 + 5208) >= 8001)
  {
    v21 = 8;
  }

  else
  {
    v21 = 12;
  }

  if (*(v17 + 5208) < 8001)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  v18[246] = get_next_indice(v17, v22) + v21;
  v146 = 1;
  v18[213] = 1;
  if (*(v17 + 5208) < 9600)
  {
    v20 = 0;
    goto LABEL_18;
  }

  v146 = 1;
  v23 = v143;
  v20 = 0;
  if ((get_next_indice(v17, 1) & 1) == 0)
  {
    v155[213] = 0;
    v146 = 2;
  }

LABEL_19:
  *&v24 = -1;
  *(&v24 + 1) = -1;
  __C[14] = v24;
  __C[15] = v24;
  __C[12] = v24;
  __C[13] = v24;
  __C[10] = v24;
  __C[11] = v24;
  __C[8] = v24;
  __C[9] = v24;
  __C[6] = v24;
  __C[7] = v24;
  __C[4] = v24;
  __C[5] = v24;
  __C[2] = v24;
  __C[3] = v24;
  __C[0] = v24;
  __C[1] = v24;
  v164 = NAN;
  memset(__b, 255, sizeof(__b));
  v25 = *(v17 + 5208);
  if (v23 && v25 < 9600)
  {
    v26 = 10;
  }

  else
  {
    v27 = v25 < 9600 && v23 == 0;
    if (v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = 3;
    }

    if (v25 >= 11600)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    v30 = get_next_indice(v17, v29);
    if (!v30)
    {
      v155[794] = 0;
LABEL_51:
      *(v17 + 31120) = 1;
      v35 = *a2;
      if (*a2 < a2[2])
      {
        goto LABEL_304;
      }

      LODWORD(__A) = 0;
      vDSP_vfill(&__A, v35, 1, 0x100uLL);
      v36 = *a6;
      if (*a6 < *(a6 + 16))
      {
        goto LABEL_304;
      }

      LODWORD(__A) = 1115684864;
      vDSP_vfill(&__A, v36, 1, 4uLL);
      v37 = *a12;
      if (*a12 < *(a12 + 16))
      {
        goto LABEL_304;
      }

      LODWORD(__A) = 0;
      vDSP_vfill(&__A, v37, 1, 5uLL);
      v38 = 0;
      v145 = 0;
      *(v155 + 794) = 1115684864;
      v155[1590] = 256;
      *(v155 + 395) = 0;
      *v155 = 0;
      goto LABEL_274;
    }

    v25 = *(v17 + 5208);
    LOWORD(v26) = v30 + 3;
    if (v25 < 9600)
    {
      LOWORD(v26) = 10;
    }

    v26 = v26;
    if (v26 >= 14)
    {
      *(v17 + 5168) = 1;
      v26 = 13;
    }
  }

  v145 = v26;
  v31 = &mfreq_loc[v26];
  if (v31 < mfreq_loc || v31 + 1 > Es_pred_bits_tbl || v31 > v31 + 1)
  {
    goto LABEL_304;
  }

  v32 = *v31;
  v155[794] = v145;
  if (v145 < 4)
  {
    goto LABEL_51;
  }

  v33 = v20 ^ 1;
  if (!v155[211])
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    if (v25 > 24399)
    {
      if (v25 <= 30399)
      {
        if (v25 > 29199)
        {
          if (v25 == 29200)
          {
            v34 = 23;
          }

          else
          {
            if (v25 != 30200)
            {
              goto LABEL_91;
            }

            v34 = 25;
          }
        }

        else if (v25 == 24400)
        {
          v34 = 19;
        }

        else
        {
          if (v25 != 29000)
          {
            goto LABEL_91;
          }

          v34 = 21;
        }
      }

      else if (v25 <= 47999)
      {
        if (v25 == 30400)
        {
          v34 = 27;
        }

        else
        {
          if (v25 != 32000)
          {
            goto LABEL_91;
          }

          v34 = 29;
        }
      }

      else
      {
        switch(v25)
        {
          case 48000:
            v34 = 31;
            break;
          case 64000:
            v34 = 33;
            break;
          case 96000:
            v34 = 35;
            break;
          default:
            goto LABEL_91;
        }
      }
    }

    else if (v25 <= 12849)
    {
      if (v25 > 11599)
      {
        if (v25 == 11600)
        {
          v34 = 5;
        }

        else
        {
          if (v25 != 12150)
          {
            goto LABEL_91;
          }

          v34 = 7;
        }
      }

      else if (v25 == 7200)
      {
        v34 = 1;
      }

      else
      {
        if (v25 != 8000)
        {
          goto LABEL_91;
        }

        v34 = 3;
      }
    }

    else if (v25 <= 14799)
    {
      if (v25 == 12850)
      {
        v34 = 9;
      }

      else
      {
        if (v25 != 13200)
        {
          goto LABEL_91;
        }

        v34 = 11;
      }
    }

    else
    {
      switch(v25)
      {
        case 14800:
          v34 = 13;
          break;
        case 16400:
          v34 = 15;
          break;
        case 22600:
          v34 = 17;
          break;
        default:
LABEL_91:
          v27 = v25 == 128000;
          v34 = 37;
          if (!v27)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          break;
      }
    }

    v39 = &Es_pred_bits_tbl[v34];
    if (v39 < Es_pred_bits_tbl || v39 + 2 > &sm_table || v39 > (v39 + 2))
    {
      goto LABEL_304;
    }

    v40 = *v39;
    v41 = get_next_indice(v17, v40);
    Es_pred_dec(&v165, v41, v40, 0);
  }

  v149 = *a3;
  if (*a3 < a3[2])
  {
    goto LABEL_304;
  }

  v154 = *a6;
  if (*a6 < *(a6 + 16))
  {
    goto LABEL_304;
  }

  v153 = *a12;
  if (*a12 < *(a12 + 16))
  {
    goto LABEL_304;
  }

  v139 = a2;
  v43 = a8[1];
  v42 = a8[2];
  v140 = a7;
  if (v155[211])
  {
    v152 = 3;
    v151 = 7200;
  }

  else
  {
    v151 = *(v17 + 5208);
    v152 = 5;
  }

  v44 = 0;
  v148 = a3[1];
  v45 = v165;
  v157 = *(a12 + 8);
  v158 = *(a6 + 8);
  v46 = *(v17 + 5240) / v146;
  v141 = a8;
  v47 = *a8;
  v177 = -21846;
  v161 = (v46 + 1);
  v48 = v155;
  v176 = -21846;
  v175 = -21846;
  v156 = (v155 + 1580);
  v150 = (v155 + 1582);
  v49 = v155 + 1580 > v155 + 1582 || (v155 + 1582) > v17 + 24332;
  v174 = -21846;
  v173 = NAN;
  v171 = -1;
  v170 = -1;
  v169 = -1;
  v172 = 0.0;
  v168 = 1;
  v50 = v49;
  v147 = v50;
  v51 = v154;
  v162 = v149;
  v163 = v153;
  v159 = v17;
  do
  {
    pit_decode(v17, v151, 0, 256, v44, v152, &v168, &v177, &v176, &v175, &v174, v46);
    if (v51 < v154)
    {
      goto LABEL_304;
    }

    v160 = v51 + 4;
    if (v51 + 4 > v158)
    {
      goto LABEL_304;
    }

    if (v51 > v160)
    {
      goto LABEL_304;
    }

    *v51 = v52;
    v53 = &v47[v44];
    if (v53 > v43 || v42 > v53 || (v161 & 0x80000000) != 0 || (v43 - v53) >> 2 < v161)
    {
      goto LABEL_304;
    }

    *&__A = &v47[v44];
    *(&__A + 1) = v43;
    v167 = v42;
    pred_lt4(&__A, __A, v177, v176, v161, inter4_2, &post_dct_wind, 0x10u, 4);
    if (*(v48 + 211))
    {
      if (v162 < v149)
      {
        goto LABEL_304;
      }

      inov_decode(v159, 7200, 0, 256, 2, 1u, v44, -1, *v48, *v51, v162, v148, __C, v180);
      v48 = v155;
      gain_dec_mless(v159, 7200, 256, 2, v44, -1, __C, &v173, v45, &v172, &v170, &v171);
      if ((v43 - v53) < 253)
      {
        goto LABEL_304;
      }

      v54 = v172;
      v55 = v173;
      est_tilt(&v47[v44], __C, &v169, v173, v172);
      *v155 = v56;
    }

    else
    {
      LODWORD(__A) = 0;
      vDSP_vfill(&__A, __C, 1, 0x40uLL);
      v172 = 0.0;
      *v48 = 0.0;
      v57 = &dic_gp[get_next_indice(v159, 4)];
      if (v57 < dic_gp || v57 + 1 > lsf_dims || v57 > v57 + 1)
      {
        goto LABEL_304;
      }

      v55 = *v57 + 0.5853;
      v173 = v55;
      v54 = 0.0;
      if (*(v159 + 5168))
      {
        v55 = *v156;
        v173 = *v156;
      }
    }

    if (*(v48 + 211))
    {
      if (v46 >= 1)
      {
        v58 = 0;
        for (i = 0; i < v46; v58 = ++i)
        {
          v60 = &v47[v58 + v44];
          v61 = (v60 + 1) > v43 || v60 > v60 + 1;
          v62 = !v61 && v60 >= v42;
          v63 = __C + i;
          v64 = v63 + 1;
          v65 = v62 && v63 >= __C;
          v66 = !v65 || v64 > v180;
          if (v66 || v63 > v64)
          {
            goto LABEL_304;
          }

          *v60 = (v54 * *v63) + (v55 * *v60);
        }
      }
    }

    else if (v46 >= 1)
    {
      v68 = 0;
      v69 = 0;
      do
      {
        v70 = &v47[v68 + v44];
        v71 = (v70 + 1) > v43 || v70 > v70 + 1;
        if (v71 || v70 < v42)
        {
          goto LABEL_304;
        }

        *v70 = v55 * *v70;
        v68 = ++v69;
      }

      while (v46 > v69);
    }

    if (v46 == 256)
    {
      v77 = v51 + 8;
      if (v51 + 8 > v158)
      {
        goto LABEL_304;
      }

      if (v160 > v77)
      {
        goto LABEL_304;
      }

      v78 = *v51;
      *(v51 + 4) = *v51;
      v79 = (v51 + 12);
      if (v51 + 12 > v158)
      {
        goto LABEL_304;
      }

      if (v77 > v79)
      {
        goto LABEL_304;
      }

      *(v51 + 8) = v78;
      v73 = v51 + 16;
      if (v51 + 16 > v158)
      {
        goto LABEL_304;
      }

      if (v79 > v73)
      {
        goto LABEL_304;
      }

      *v79 = v78;
      if (v163 < v153)
      {
        goto LABEL_304;
      }

      v80 = v163 + 4;
      if (v163 + 4 > v157)
      {
        goto LABEL_304;
      }

      if (v163 > v80)
      {
        goto LABEL_304;
      }

      v81 = v173;
      *v163 = v173;
      v82 = v163 + 8;
      if (v163 + 8 > v157)
      {
        goto LABEL_304;
      }

      if (v80 > v82)
      {
        goto LABEL_304;
      }

      *(v163 + 4) = v81;
      v83 = (v163 + 12);
      if (v163 + 12 > v157)
      {
        goto LABEL_304;
      }

      if (v82 > v83)
      {
        goto LABEL_304;
      }

      *(v163 + 8) = v81;
      v163 += 16;
      if (v163 > v157 || v83 > v163)
      {
        goto LABEL_304;
      }

      *v83 = v81;
      v162 += 68;
      v76 = v173;
      goto LABEL_191;
    }

    if (v46 == 128)
    {
      v73 = v51 + 8;
      if (v51 + 8 > v158)
      {
        goto LABEL_304;
      }

      if (v160 > v73)
      {
        goto LABEL_304;
      }

      *(v51 + 4) = *v51;
      if (v163 < v153)
      {
        goto LABEL_304;
      }

      v74 = (v163 + 4);
      if (v163 + 4 > v157)
      {
        goto LABEL_304;
      }

      if (v163 > v74)
      {
        goto LABEL_304;
      }

      v75 = v173;
      *v163 = v173;
      v163 += 8;
      if (v163 > v157 || v74 > v163)
      {
        goto LABEL_304;
      }

      v162 += 34;
      *v74 = v75;
      if (v44)
      {
        v76 = v173 * 0.7;
      }

      else
      {
        v76 = v173 * 0.3;
      }

LABEL_191:
      *v156 = v76;
      *v150 = 0.0;
      goto LABEL_192;
    }

    if (v163 < v153)
    {
      goto LABEL_304;
    }

    if (v163 + 4 > v157)
    {
      goto LABEL_304;
    }

    if (v163 > v163 + 4)
    {
      goto LABEL_304;
    }

    *v163 = v55;
    if (v147)
    {
      goto LABEL_304;
    }

    v162 += 17;
    lp_gain_updt(v44, v156, v150, 256, v55, 0.0);
    v163 += 4;
    v73 = v51 + 4;
LABEL_192:
    v17 = v159;
    v44 = (v44 + v46);
    v51 = v73;
  }

  while (v44 < 256);
  a7 = v140;
  a8 = v141;
  a2 = v139;
  v23 = v143;
  if (*(v159 + 5208) <= 9599)
  {
    v84 = *a6;
    v85 = *(a6 + 8);
    if (*a6 <= v85 && (v85 - v84) >= 13 && *(a6 + 16) <= v84)
    {
      minimum(v84, 4, &v164);
      if (v164 >= 64.0)
      {
        v86 = v164 >= 128.0 ? 6 : 8;
      }

      else
      {
        v86 = *(v159 + 5242) ? 12 : 10;
      }

      v145 = v86;
      v87 = &mfreq_loc[v86];
      if (v87 >= mfreq_loc && v87 + 1 <= Es_pred_bits_tbl && v87 <= v87 + 1)
      {
        v32 = *v87;
        v155[794] = v145;
        goto LABEL_208;
      }
    }

LABEL_304:
    __break(0x5519u);
  }

LABEL_208:
  v88 = *v139;
  v89 = v139[1];
  if (*v139 > v89)
  {
    goto LABEL_304;
  }

  if ((v89 - v88) < 1021)
  {
    goto LABEL_304;
  }

  if (v139[2] > v88)
  {
    goto LABEL_304;
  }

  v90 = *v141;
  v91 = v141[1];
  if (*v141 > v91 || v141[2] > v90 || (v91 - v90) < 1021)
  {
    goto LABEL_304;
  }

  v92 = (v32 / 25.0);
  edct(v90);
  if (*(v159 + 5242))
  {
    v93 = 256;
  }

  else
  {
    v93 = 160;
  }

  LODWORD(v94) = (v93 - v92);
  if (v94 >= 80)
  {
    v95 = 80;
  }

  else
  {
    v95 = v94;
  }

  if (*(v159 + 5208) == 8000 && *(v159 + 5242))
  {
    if (v94 >= 1)
    {
      v96 = v139[2];
      v94 = v94;
      v97 = v92;
      do
      {
        v98 = &(*v139)[v97];
        v99 = v98 + 1 > v139[1] || v98 > v98 + 1;
        if (v99 || v98 < v96)
        {
          goto LABEL_304;
        }

        *v98 = 0.0;
        ++v97;
      }

      while (--v94);
    }
  }

  else
  {
    if (v94 >= 1)
    {
      v101 = 0;
      if (v95 <= 1)
      {
        v102 = 1;
      }

      else
      {
        v102 = v95;
      }

      v103 = v92;
      v104 = &sm_table;
      while (1)
      {
        v105 = v104 + 1;
        v106 = v104 < &sm_table || v105 > gsc_sfm_start;
        if (v106 || v104 > v105)
        {
          goto LABEL_304;
        }

        v108 = &(*v139)[v103];
        v109 = v108 + 1 > v139[1] || v108 > v108 + 1;
        if (v109 || v108 < v139[2])
        {
          goto LABEL_304;
        }

        v111 = *v104++;
        *v108 = v111 * *v108;
        ++v101;
        ++v103;
        if (v102 == v101)
        {
          goto LABEL_257;
        }
      }
    }

    LOWORD(v101) = 0;
LABEL_257:
    if (v94 > v101)
    {
      v112 = v139[2];
      v113 = v94 - v101;
      v114 = 4 * v92 + 4 * v101;
      do
      {
        v115 = (*v139 + v114);
        v116 = v115 + 1 > v139[1] || v115 > v115 + 1;
        if (v116 || v115 < v112)
        {
          goto LABEL_304;
        }

        *v115 = 0;
        v114 += 4;
      }

      while (--v113);
    }
  }

  v118 = *a6;
  v119 = *(a6 + 8);
  if (*a6 > v119)
  {
    goto LABEL_304;
  }

  if (*(a6 + 16) > v118)
  {
    goto LABEL_304;
  }

  v120 = v146;
  if (v146 > (v119 - v118) >> 2)
  {
    goto LABEL_304;
  }

  v121 = 0.0;
  do
  {
    v122 = *v118++;
    v121 = v121 + v122;
    --v120;
  }

  while (v120);
  *(v155 + 794) = ((v121 / v146) + 0.5);
  v155[1590] = 256;
  v38 = v92 + 1;
  *(v159 + 31120) = 0;
LABEL_274:
  v123 = *(v17 + 5160) - (*(v17 + 5232) > 0);
  if (!v23 && *(v17 + 5208) < 9601)
  {
    v123 += 5;
  }

  LOWORD(v173) = -21846;
  __A = *a2;
  v167 = a2[2];
  gsc_dec(v17, &__A, v145, v38, v123, v146, v23, &v173, a11, __b, __C, a5);
  v124 = *a8;
  v125 = a8[1];
  if (*a8 > v125)
  {
    goto LABEL_304;
  }

  if ((v125 - v124) < 1021)
  {
    goto LABEL_304;
  }

  if (a8[2] > v124)
  {
    goto LABEL_304;
  }

  v126 = *a2;
  v127 = a2[1];
  if (*a2 > v127)
  {
    goto LABEL_304;
  }

  if (a2[2] > v126)
  {
    goto LABEL_304;
  }

  if ((v127 - v126) < 1021)
  {
    goto LABEL_304;
  }

  edct(v126);
  edct(__b);
  v128 = *a8;
  v129 = a8[1];
  if (*a8 > v129)
  {
    goto LABEL_304;
  }

  if ((v129 - v128) < 1021)
  {
    goto LABEL_304;
  }

  if (a8[2] > v128)
  {
    goto LABEL_304;
  }

  if (v17 + 21724 > (v17 + 21728))
  {
    goto LABEL_304;
  }

  pre_echo_att((v17 + 21724), v128, next_indice, v155[194]);
  v130 = *a7;
  if (*a7 < *(a7 + 16))
  {
    goto LABEL_304;
  }

  LODWORD(__A) = 0;
  vDSP_vfill(&__A, v130, 1, 5uLL);
  if (*a8 < a8[2])
  {
    goto LABEL_304;
  }

  if (*a10 < *(a10 + 16))
  {
    goto LABEL_304;
  }

  interp_code_5over2(*a8, a8[1], *a10, *(a10 + 8), 256);
  v131 = *a8;
  if (*a8 < a8[2])
  {
    goto LABEL_304;
  }

  v132 = *a9;
  if (*a9 < a9[2])
  {
    goto LABEL_304;
  }

  v133 = a9[1];
  v62 = v133 >= v132;
  v134 = v133 - v132;
  if (!v62)
  {
    goto LABEL_304;
  }

  v135 = a8[1];
  if (v131 > v135)
  {
    goto LABEL_304;
  }

  if (v135 - v131 < 0x400)
  {
    goto LABEL_304;
  }

  if (v134 <= 0x3FF)
  {
    goto LABEL_304;
  }

  memmove(v132, v131, 0x400uLL);
  if (v132 + 1024 < v132)
  {
    goto LABEL_304;
  }

  v136 = *a8;
  if (*a8 < a8[2])
  {
    goto LABEL_304;
  }

  v137 = a8[1];
  v62 = v137 >= v136;
  v138 = v137 - v136;
  if (!v62)
  {
    goto LABEL_304;
  }

  if (v138 <= 0x3FF)
  {
    goto LABEL_304;
  }

  memmove(*a8, __b, 0x400uLL);
  if (v136 + 256 < v136)
  {
    goto LABEL_304;
  }

  LODWORD(__A) = 0;
  vDSP_vfill(&__A, (v17 + 36060), 1, 5uLL);
}

void decod_gen_voic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, size_t *a10, unint64_t *a11, void *a12, _WORD *a13, unint64_t a14)
{
  v14 = MEMORY[0x1EEE9AC00](a1);
  v17 = v16;
  v255 = v18;
  v281 = v15;
  v273 = v19;
  v275 = v20;
  v272 = v21;
  v23 = v22;
  v25 = v24;
  v26 = v14;
  next_indice = 0;
  v305 = *MEMORY[0x1E69E9840];
  v278 = (v14 + 21164);
  v294 = 34;
  v293 = 0;
  v290 = 0.0;
  v289 = 0;
  v288 = 0.0;
  v28 = *(v14 + 5208);
  if (v28 >= 24401)
  {
    next_indice = 0;
    if (v15 == 3 && v28 <= 0x7D00)
    {
      next_indice = get_next_indice(v14, 1);
    }
  }

  v292 = -21846;
  v291 = -21846;
  v287 = NAN;
  *&v29 = -1;
  *(&v29 + 1) = -1;
  __B[0] = v29;
  __B[1] = v29;
  __B[2] = v29;
  __B[3] = v29;
  __B[4] = v29;
  __B[5] = v29;
  __B[6] = v29;
  __B[7] = v29;
  __B[8] = v29;
  __B[9] = v29;
  __B[10] = v29;
  __B[11] = v29;
  __B[12] = v29;
  __B[13] = v29;
  __B[14] = v29;
  __B[15] = v29;
  __C[15] = v29;
  __C[14] = v29;
  __C[13] = v29;
  __C[12] = v29;
  __C[11] = v29;
  __C[10] = v29;
  __C[9] = v29;
  __C[8] = v29;
  __C[7] = v29;
  __C[6] = v29;
  __C[5] = v29;
  __C[4] = v29;
  __C[3] = v29;
  __C[2] = v29;
  __C[1] = v29;
  __C[0] = v29;
  v285 = -21846;
  v284 = NAN;
  memset(__b, 255, sizeof(__b));
  memset(v301, 255, sizeof(v301));
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v297 = v30;
  v298 = v30;
  v299 = v30;
  v300 = v30;
  v274 = (v17 + 5);
  v286 = 0;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, __C, 1, 0x40uLL);
  v283 = v26;
  v282 = v25;
  if (v25 >= 1)
  {
    LOWORD(v31) = 0;
    v276 = (v26 + 32472);
    v277 = 0;
    v271 = v26 + 32476;
    v268 = (v26 + 24328);
    v269 = (v26 + 24324);
    v33 = v26 + 24324 > (v26 + 24328) || v26 + 24328 > (v26 + 24332);
    v270 = v33;
    v262 = (v26 + 23800);
    v261 = v26 + 23832;
    v267 = v26 + 36060;
    v266 = v26 + 36080;
    if (v281)
    {
      v34 = v281;
    }

    else
    {
      v34 = 3;
    }

    v35 = 0.0;
    v263 = v34 - 1;
    v264 = next_indice;
    v258 = NAN;
    v259 = -1;
    v256 = NAN;
    v257 = -1;
    v36 = -1;
    v260 = NAN;
    v37 = 0.0;
    v279 = v275;
    v38 = v17;
    v265 = v17;
    while (1)
    {
      v280 = v31;
      v39 = v31;
      pit_decode(v26, *(v26 + 5208), 0, v25, v31, v281, &v285, &v294, &v293, &v292, &v291, 64);
      if (v38 < v17)
      {
        goto LABEL_319;
      }

      v41 = v38 + 1;
      if ((v38 + 1) > v274)
      {
        goto LABEL_319;
      }

      if (v38 > v41)
      {
        goto LABEL_319;
      }

      *v38 = v40;
      v42 = a10[1];
      v43 = *a10 + 4 * v280;
      if (v42 < v43)
      {
        goto LABEL_319;
      }

      v44 = a10[2];
      if (v44 > v43 || (v42 - v43) < 257)
      {
        goto LABEL_319;
      }

      v45 = v293;
      v46 = v294;
      *&__A[0] = *a10 + 4 * v280;
      *(&__A[0] + 1) = v42;
      *&__A[1] = v44;
      pred_lt4(__A, v43, v294, v293, 65, inter4_2, &post_dct_wind, 0x10u, 4);
      v47 = v45;
      if (v282 == 256)
      {
        v48 = (((vcvts_n_f32_s32(v45, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5;
        v49 = a12[2];
        v50 = 4 * ((5 * v277) >> 1);
        v51 = v37 + ((5 * v277) >> 1) - (v48 + 5 * v46 / 2 - 5);
        v52 = 160;
        do
        {
          v53 = a12[1];
          v54 = (*a12 + 4 * v51);
          v56 = (v54 + 1) <= v53 && v54 <= v54 + 1 && v54 >= v49;
          v57 = (*a12 + v50);
          v58 = v57 + 1;
          if (!v56 || v58 > v53 || v57 > v58 || v57 < v49)
          {
            goto LABEL_319;
          }

          *v57 = *v54;
          v50 += 4;
          ++v51;
          --v52;
        }

        while (v52);
        v62 = (v48 + 5 * v46 / 2 - 5) + ((v46 * -5.0) * 0.5);
        v63 = -0.625;
      }

      else
      {
        v64 = 2 * v280;
        v65 = 4 * v64;
        v66 = ((v47 * 0.5) + 4.0) + 0.5;
        v67 = a12[2];
        v68 = v37 + v64 - v66 - 2 * v46 + 4;
        v69 = 128;
        do
        {
          v70 = a12[1];
          v71 = (*a12 + 4 * v68);
          v73 = (v71 + 1) <= v70 && v71 <= v71 + 1 && v71 >= v67;
          v74 = (*a12 + v65);
          v75 = v74 + 1;
          if (!v73 || v75 > v70 || v74 > v75 || v74 < v67)
          {
            goto LABEL_319;
          }

          *v74 = *v71;
          v65 += 4;
          ++v68;
          --v69;
        }

        while (v69);
        v62 = (v66 + 2 * v46 - 4) + (v46 * -2.0);
        v63 = -0.5;
      }

      v79 = v62 + (v47 * v63);
      v80 = *(v283 + 5208);
      __A[0] = *a10;
      *&__A[1] = a10[2];
      lp_filt_exc_dec(v283, 1, v80, 0, v281, v39, v282, 0, __A);
      if (v281)
      {
        v81 = *(v283 + 5208);
        if (v81 >= 24401)
        {
          HIDWORD(v289) = 0;
          if (v276 > v271)
          {
            goto LABEL_319;
          }

          v35 = 0.0;
          transf_cdbk_dec(v283, v81, v281, v264, v39, -1, v276, &v286 + 1, v23, 0.0, &v286, __C, a13);
        }
      }

      if (v279 < v275)
      {
        goto LABEL_319;
      }

      inov_decode(v283, *(v283 + 5208), 0, v282, v281, v272, v39, -1, *v278, *v38, v279, v273, __B, &v305);
      v82 = *(v283 + 5208);
      if (v82 > 8000)
      {
        if (v82 < 0x7D01)
        {
          gain_dec_mless(v283, v82, v282, v281, v39, -1, __B, &v290, v23, &v289 + 1, &v288, &v289);
        }

        else
        {
          gain_dec_SQ(v283, v82, v281, v39, -1, __B, &v290, &v289 + 1, v23, &v288, &v289);
        }

        v89 = v280;
        goto LABEL_126;
      }

      LODWORD(__A[0]) = -1;
      vDSP_dotpr(__B, 1, __B, 1, __A, 0x40uLL);
      v83 = (*__A + 0.01) * 0.015625;
      v84 = 1.0 / sqrtf(v83);
      v288 = v84;
      if (v82 == 8000)
      {
        v85 = 10;
      }

      else
      {
        v85 = -10;
      }

      if (v82 == 7200)
      {
        v85 = 0;
      }

      *&v86 = -1;
      *(&v86 + 1) = -1;
      __A[0] = v86;
      __A[1] = v86;
      *&__A[2] = -1;
      v87 = &gain_bits_tbl[4 * v263 + 4 * v85 + (v39 >> 6)];
      if (v87 < gain_bits_tbl || v87 + 1 > &gaus_dico || v87 > v87 + 1)
      {
        goto LABEL_319;
      }

      v88 = *v87;
      v89 = v280;
      v90 = v280 >> 6;
      if (v90 > 1)
      {
        if (v90 == 2)
        {
          LODWORD(__A[0]) = 1065353216;
          *(__A + 1) = (2 * v281 - 2);
          v105 = log10(v260);
          *(__A + 2) = v105;
          v106 = log10(v258);
          *(__A + 3) = v106;
          *&__A[1] = __PAIR64__(v259, v36);
          v295 = NAN;
          vDSP_dotpr(b_3sfr, 1, __A, 1, &v295, 6uLL);
          v107 = __exp10(v295);
          v108 = get_next_indice(v283, v88);
          v109 = &gp_gamma_3sfr_6b[2 * v108];
          if (v109 < gp_gamma_3sfr_6b)
          {
            goto LABEL_319;
          }

          if (v109 + 1 > b_4sfr)
          {
            goto LABEL_319;
          }

          if (v109 > v109 + 1)
          {
            goto LABEL_319;
          }

          v257 = *v109;
          v290 = *v109;
          v110 = &gp_gamma_3sfr_6b[2 * v108];
          v111 = (v110 + 1);
          if (v110 + 1 < gp_gamma_3sfr_6b)
          {
            goto LABEL_319;
          }

          v112 = v110 + 2;
          if (v112 > b_4sfr || v111 > v112)
          {
            goto LABEL_319;
          }

          v113 = v107;
          v35 = *v111 * v113;
          *(&v289 + 1) = v35;
          v256 = v35;
          goto LABEL_124;
        }

        if (v90 == 3)
        {
          LODWORD(__A[0]) = 1065353216;
          *(__A + 1) = (2 * v281 - 2);
          v93 = log10(v260);
          *(__A + 2) = v93;
          v94 = log10(v258);
          *(__A + 3) = v94;
          *&v95 = log10(v256);
          *&__A[1] = __PAIR64__(v36, v95);
          *(&__A[1] + 1) = __PAIR64__(v257, v259);
          v295 = NAN;
          vDSP_dotpr(b_4sfr, 1, __A, 1, &v295, 8uLL);
          v96 = __exp10(v295);
          v97 = get_next_indice(v283, v88);
          v98 = &gp_gamma_4sfr_6b[2 * v97];
          if (v98 < gp_gamma_4sfr_6b)
          {
            goto LABEL_319;
          }

          if (v98 + 1 > hp20_8000)
          {
            goto LABEL_319;
          }

          if (v98 > v98 + 1)
          {
            goto LABEL_319;
          }

          v290 = *v98;
          v99 = &gp_gamma_4sfr_6b[2 * v97];
          v100 = (v99 + 1);
          if (v99 + 1 < gp_gamma_4sfr_6b)
          {
            goto LABEL_319;
          }

          v101 = v99 + 2;
          if (v101 > hp20_8000 || v100 > v101)
          {
            goto LABEL_319;
          }

          v102 = v96;
          v35 = *v100 * v102;
          *(&v289 + 1) = v35;
LABEL_124:
          v89 = v280;
        }
      }

      else
      {
        if (!(v280 >> 6))
        {
          if (v88 == 6)
          {
            v103 = &gp_gamma_1sfr_6b;
            v104 = b_2sfr;
          }

          else if (v88 == 7)
          {
            v103 = &gp_gamma_1sfr_7b;
            v104 = &gp_gamma_1sfr_6b;
          }

          else
          {
            v103 = &gp_gamma_1sfr_8b;
            v104 = b_1sfr;
          }

          v122 = v83;
          LODWORD(__A[0]) = 1065353216;
          *(__A + 1) = (2 * v281 - 2);
          v295 = NAN;
          vDSP_dotpr(b_1sfr, 1, __A, 1, &v295, 2uLL);
          v123 = v295;
          v124 = log10(v122);
          v125 = __exp10((v123 + (v124 * -0.5)));
          v126 = get_next_indice(v283, v88);
          v127 = &v103[2 * v126];
          if (v127 < v103)
          {
            goto LABEL_319;
          }

          if (v127 + 1 > v104)
          {
            goto LABEL_319;
          }

          if (v127 > v127 + 1)
          {
            goto LABEL_319;
          }

          v36 = *v127;
          v290 = *v127;
          v128 = &v103[2 * v126];
          v129 = (v128 + 1);
          if (v128 + 1 < v103)
          {
            goto LABEL_319;
          }

          v130 = (v128 + 2);
          if (v130 > v104 || v129 > v130)
          {
            goto LABEL_319;
          }

          v131 = v125;
          v35 = *v129 * v131;
          *(&v289 + 1) = v35;
          v260 = v35;
          goto LABEL_124;
        }

        if (v90 == 1)
        {
          if (v88 == 6)
          {
            v91 = &gp_gamma_2sfr_6b;
            v92 = b_3sfr;
          }

          else if (v88 == 7)
          {
            v91 = &gp_gamma_2sfr_7b;
            v92 = &gp_gamma_2sfr_6b;
          }

          else
          {
            v91 = &gp_gamma_1sfr_8b;
            v92 = b_1sfr;
          }

          LODWORD(__A[0]) = 1065353216;
          *(__A + 1) = (2 * v281 - 2);
          *&v114 = log10(v260);
          *(&__A[0] + 1) = __PAIR64__(v36, v114);
          v295 = NAN;
          vDSP_dotpr(b_2sfr, 1, __A, 1, &v295, 4uLL);
          v115 = __exp10(v295);
          v116 = get_next_indice(v283, v88);
          v117 = &v91[2 * v116];
          if (v117 < v91)
          {
            goto LABEL_319;
          }

          if (v117 + 1 > v92)
          {
            goto LABEL_319;
          }

          if (v117 > v117 + 1)
          {
            goto LABEL_319;
          }

          v259 = *v117;
          v290 = *v117;
          v118 = &v91[2 * v116];
          v119 = (v118 + 1);
          if (v118 + 1 < v91)
          {
            goto LABEL_319;
          }

          v120 = (v118 + 2);
          if (v120 > v92 || v119 > v120)
          {
            goto LABEL_319;
          }

          v121 = v115;
          v35 = *v119 * v121;
          *(&v289 + 1) = v35;
          v258 = v35;
          goto LABEL_124;
        }
      }

      *&v289 = v35 / v84;
LABEL_126:
      v132 = v89;
      v133 = a10[1];
      v134 = (*a10 + 4 * v89);
      if (v134 > v133 || (v133 - v134) < 253 || a10[2] > v134)
      {
        goto LABEL_319;
      }

      v135 = v290;
      v35 = *(&v289 + 1);
      est_tilt(v134, __B, &v287, v290, *(&v289 + 1));
      *v278 = v136;
      if (!v281)
      {
        v137 = *(v283 + 5208);
        if (v137 >= 24401)
        {
          if (v276 > v271)
          {
            goto LABEL_319;
          }

          transf_cdbk_dec(v283, v137, 0, 0, v39, -1, v276, &v286 + 1, v23, v35, &v286, __C, a13);
        }
      }

      if (v270)
      {
        goto LABEL_319;
      }

      v138 = 4 * v280;
      v38 = v41;
      v37 = v37 + v79;
      v139 = *&v289;
      lp_gain_updt(v39, v269, v268, v282, v135, *&v289 + *&v286);
      v141 = 0;
      v142 = a10[2];
      do
      {
        v143 = (*a10 + v138 + v141);
        if ((v143 + 1) > a10[1] || v143 > v143 + 1 || v143 < v142)
        {
          goto LABEL_319;
        }

        v146 = a11[2];
        v147 = (*a11 + v138 + v141);
        v148 = (v147 + 1) > a11[1] || v147 > v147 + 1;
        if (v148 || v147 < v146)
        {
          goto LABEL_319;
        }

        *v147 = v135 * *v143;
        v150 = (*a11 + v138 + v141);
        v151 = (v150 + 1) > a11[1] || v150 > v150 + 1;
        if (v151 || v150 < v146)
        {
          goto LABEL_319;
        }

        v153 = (*a10 + v138 + v141);
        if ((v153 + 1) > a10[1] || v153 > v153 + 1 || v153 < v142)
        {
          goto LABEL_319;
        }

        *v153 = *v150 + (v35 * *(__B + v141));
        v141 += 4;
      }

      while (v141 != 256);
      v154 = *(&v286 + 1);
      if (*(v283 + 5208) >= 24401)
      {
        v155 = 0;
        while (1)
        {
          v156 = (*a11 + v138 + v155);
          v157 = (v156 + 1) > a11[1] || v156 > v156 + 1;
          if (v157 || v156 < v146)
          {
            break;
          }

          *v156 = *v156 + (v154 * *(__C + v155));
          v159 = (*a10 + v138 + v155);
          v160 = (v159 + 1) > a10[1] || v159 > v159 + 1;
          if (v160 || v159 < v142)
          {
            break;
          }

          *v159 = *v159 + (v154 * *(__C + v155));
          v155 += 4;
          if (v155 == 256)
          {
            goto LABEL_182;
          }
        }

LABEL_319:
        __break(0x5519u);
      }

LABEL_182:
      v162 = v287;
      v163 = (a9 + 4 * (v277 >> 6));
      if (v163 && (v163 < a9 || (v163 + 1) > a9 + 20 || v163 > v163 + 1))
      {
        goto LABEL_319;
      }

      __A[0] = *a12;
      *&__A[1] = a12[2];
      *&v140 = v35;
      prep_tbe_exc(v282, v39, __B, v163, __A, __C, v135, v140, v287, v154);
      if (v281 && (v164 = *(v283 + 5208), v164 < 32001))
      {
        v165 = a11[1];
        v166 = (*a11 + 4 * v132);
        if (v166 > v165 || (v165 - v166) < 253 || a11[2] > v166)
        {
          goto LABEL_319;
        }

        enhancer(1, v164, -1, 0, v281, v282, (v283 + 23796), __B, v162, v278[95], v139, v288, v135, v166, v262, v261);
      }

      else
      {
        v167 = (*a10 + 4 * v132);
        if (v167 < a10[2])
        {
          goto LABEL_319;
        }

        v168 = (*a11 + 4 * v132);
        if (v168 < a11[2])
        {
          goto LABEL_319;
        }

        v169 = a11[1];
        v56 = v169 >= v168;
        v170 = v169 - v168;
        if (!v56)
        {
          goto LABEL_319;
        }

        v171 = a10[1];
        if (v167 > v171)
        {
          goto LABEL_319;
        }

        if (v171 - v167 < 0x100)
        {
          goto LABEL_319;
        }

        if (v170 <= 0xFF)
        {
          goto LABEL_319;
        }

        memmove(v168, v167, 0x100uLL);
        if (v168 + 256 < v168)
        {
          goto LABEL_319;
        }
      }

      v172 = v277 >> 6;
      v173 = (a14 + 4 * v172);
      if (v173 < a14)
      {
        goto LABEL_319;
      }

      if ((v173 + 1) > a14 + 20)
      {
        goto LABEL_319;
      }

      if (v173 > v173 + 1)
      {
        goto LABEL_319;
      }

      *v173 = v135;
      v174 = (v267 + 4 * v172);
      if (v174 < v267 || (v174 + 1) > v266 || v174 > v174 + 1)
      {
        goto LABEL_319;
      }

      v279 += 17;
      *v174 = *v278;
      v31 = (v280 + 64);
      v25 = v282;
      v277 = v31;
      v26 = v283;
      v17 = v265;
      if (v31 >= v282)
      {
        goto LABEL_209;
      }
    }
  }

  v135 = 0.0;
LABEL_209:
  if (v255)
  {
    v175 = v278[794];
    v176 = ceil(v175 + 0.5);
    v177 = floor(v175 + 0.5);
    v178 = vcvtpd_s64_f64(v175);
    v179 = ceil(v175);
    v180 = floor(v175);
    if (v178)
    {
      v181 = v180;
    }

    else
    {
      v181 = v179;
    }

    if (v176 == v177)
    {
      v182 = v26 + 24612 + 4 * (320 - v181);
    }

    else
    {
      v182 = v26 + 24612 + 4 * (320 - v177);
    }

    if (v176 == v177)
    {
      v183 = (320 - v181);
    }

    else
    {
      v183 = (320 - v177);
    }

    v184 = v26 + 25892;
    v185 = v26 + 24612;
    if (v176 != v177)
    {
      v181 = v177;
    }

    if (v182 > v184)
    {
      goto LABEL_319;
    }

    if (v185 > v182)
    {
      goto LABEL_319;
    }

    LODWORD(v186) = v181;
    if (v181 < 0 || (v184 - v182) >> 2 < v186)
    {
      goto LABEL_319;
    }

    if (v186 < 1)
    {
      v191 = 0.000001;
      v189 = v283;
    }

    else
    {
      v186 = v186;
      v187 = 0.0;
      v188 = v182;
      v189 = v283;
      do
      {
        v190 = *v188++;
        v187 = v187 + (v190 * v190);
        --v186;
      }

      while (v186);
      v191 = v187 + 0.000001;
    }

    v192 = v189 + 27172;
    v193 = (v184 + 4 * v183);
    if (v176 == v177)
    {
      if (v178)
      {
        v177 = v180;
      }

      else
      {
        v177 = v179;
      }
    }

    if (v193 > v192)
    {
      goto LABEL_319;
    }

    if (v184 > v193)
    {
      goto LABEL_319;
    }

    LODWORD(v194) = v177;
    if (v177 < 0 || (v192 - v193) >> 2 < v194)
    {
      goto LABEL_319;
    }

    if (v194 < 1)
    {
      v198 = 0.000001;
      v196 = v283;
    }

    else
    {
      v194 = v194;
      v195 = 0.0;
      v196 = v283;
      do
      {
        v197 = *v193++;
        v195 = v195 + (v197 * v197);
        --v194;
      }

      while (v194);
      v198 = v195 + 0.000001;
    }

    v199 = *(v196 + 21248);
    v297 = *(v196 + 21232);
    v298 = v199;
    v200 = *(v196 + 21280);
    v299 = *(v196 + 21264);
    v300 = v200;
    v201 = *(v196 + 5240);
    if (v201 > 0x140)
    {
      goto LABEL_319;
    }

    v202 = *a11;
    v203 = a11[1];
    if (*a11 > v203)
    {
      goto LABEL_319;
    }

    if (a11[2] > v202)
    {
      goto LABEL_319;
    }

    if (v201 > (v203 - v202) >> 2)
    {
      goto LABEL_319;
    }

    syn_12k8(v201, v275, v273, v202, v301);
    v204 = v17 + 4;
    if ((v17 + 4) > v274 || v204 < v17)
    {
      goto LABEL_319;
    }

    v205 = *(v283 + 5240);
    v206 = *v204;
    v207 = ceil(v206 + 0.5);
    v208 = floor(v206 + 0.5);
    v209 = ceil(v206);
    v210 = vcvtpd_s64_f64(v206);
    v211 = floor(v206);
    if (v207 == v208)
    {
      v212 = (v210 & 1) != 0 ? v211 : v209;
      v213 = a11[1];
      v214 = a11[2];
      v215 = (v205 - v212);
      v216 = (*a11 + 4 * v215);
    }

    else
    {
      v213 = a11[1];
      v214 = a11[2];
      v215 = (v205 - v208);
      v216 = (*a11 + 4 * v215);
      v212 = v208;
    }

    if (v216 > v213 || v214 > v216)
    {
      goto LABEL_319;
    }

    LODWORD(v218) = v212;
    if (v212 < 0 || (v213 - v216) >> 2 < v218)
    {
      goto LABEL_319;
    }

    if (v218 < 1)
    {
      v219 = 0.0;
    }

    else
    {
      v218 = v218;
      v219 = 0.0;
      do
      {
        v220 = *v216++;
        v219 = v219 + (v220 * v220);
        --v218;
      }

      while (v218);
    }

    v221 = &v301[v215];
    if (v207 == v208)
    {
      if (v210)
      {
        v208 = v211;
      }

      else
      {
        v208 = v209;
      }
    }

    if (v221 > __b)
    {
      goto LABEL_319;
    }

    if (v301 > v221)
    {
      goto LABEL_319;
    }

    LODWORD(v222) = v208;
    if (v208 < 0 || (1280 - 4 * v215) >> 2 < v222)
    {
      goto LABEL_319;
    }

    if (v222 < 1)
    {
      v223 = 0.0;
      v26 = v283;
    }

    else
    {
      v222 = v222;
      v223 = 0.0;
      v26 = v283;
      do
      {
        v224 = *v221++;
        v223 = v223 + (v224 * v224);
        --v222;
      }

      while (v222);
    }

    v225 = (v219 / v191) > 0.25 && (v219 / v191) < 15.0;
    if (v225 && (v223 / v198) > 0.15 && v278[794] < 150.0 && *v204 < 150.0)
    {
      v226 = DTFS_new();
      v227 = DTFS_new();
      *&__A[0] = v182;
      *(&__A[0] + 1) = v184;
      *&__A[1] = v185;
      if (v226 > v226 + 840)
      {
        goto LABEL_319;
      }

      v228 = v227;
      v229 = v278[794];
      v230 = floor(v229 + 0.5);
      if (ceil(v229 + 0.5) == v230)
      {
        v230 = ceil(v229);
        v231 = vcvtpd_s64_f64(v229);
        v232 = floor(v229);
        if (v231)
        {
          v230 = v232;
        }
      }

      v233 = v227 + 840;
      DTFS_to_fs(__A, v230, v226, *(v283 + 5172), 1);
      *&__A[0] = *a11 + 4 * v215;
      *(__A + 8) = *(a11 + 1);
      if (v228 > v233)
      {
        goto LABEL_319;
      }

      v234 = *v204;
      v235 = floor(v234 + 0.5);
      if (ceil(v234 + 0.5) == v235)
      {
        v235 = ceil(v234);
        v236 = vcvtpd_s64_f64(v234);
        v237 = floor(v234);
        if (v236)
        {
          v235 = v237;
        }
      }

      DTFS_to_fs(__A, v235, v228, *(v283 + 5172), 1);
      v284 = 0.0;
      v238 = *(v283 + 5240);
      memcpy(__A, v226, 0x348uLL);
      WIsyn(__A, v228, 0, &v284, __b, __C, v238, 1);
      v239 = *a11;
      v240 = a11[2];
      if (*a11 < v240)
      {
        goto LABEL_319;
      }

      v241 = *(v283 + 5240);
      if (v241 >= 1)
      {
        v242 = a11[1];
        v56 = v242 >= v239;
        v243 = v242 - v239;
        if (!v56)
        {
          goto LABEL_319;
        }

        if (v241 > 0x140)
        {
          goto LABEL_319;
        }

        v244 = 4 * v241;
        if (4 * v241 > v243)
        {
          goto LABEL_319;
        }

        memmove(*a11, __b, 4 * v241);
        if (&v239[v244] < v239)
        {
          goto LABEL_319;
        }

        v239 = *a11;
        v240 = a11[2];
      }

      if (v239 < v240)
      {
        goto LABEL_319;
      }

      v245 = *a10;
      if (*a10 < a10[2])
      {
        goto LABEL_319;
      }

      v246 = *(v283 + 5240);
      if (v246 >= 1)
      {
        v247 = a10[1];
        v56 = v247 >= v245;
        v248 = v247 - v245;
        if (!v56)
        {
          goto LABEL_319;
        }

        v249 = a11[1];
        if (v239 > v249)
        {
          goto LABEL_319;
        }

        v250 = 4 * v246;
        if (4 * v246 > v249 - v239)
        {
          goto LABEL_319;
        }

        if (v250 > v248)
        {
          goto LABEL_319;
        }

        memmove(*a10, v239, v250);
        if (v245 + v250 < v245)
        {
          goto LABEL_319;
        }
      }

      if (v282 >= 1)
      {
        v251 = 0;
        v252 = 0;
        do
        {
          v253 = *a10 + 4 * v251;
          if (v253 < a10[2])
          {
            goto LABEL_319;
          }

          v254 = *a12 + 4 * (v252 >> 15);
          if (v254 < a12[2])
          {
            goto LABEL_319;
          }

          interp_code_4over2(v253, a10[1], v254, a12[1], 64);
          v252 = (v251 << 16) + 0x400000;
          v251 = v252 >> 16;
        }

        while (v252 >> 16 < v282);
      }

      free(v226);
      free(v228);
      v26 = v283;
    }
  }

  *(v26 + 36048) = v135;
}

void inact_switch_ematch(unint64_t *a1, unint64_t *a2, float *a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, __int16 a10)
{
  v49[1] = *MEMORY[0x1E69E9840];
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v47 = v13;
  v48 = v13;
  v45 = v13;
  v46 = v13;
  if (a4 == 5 && !a8)
  {
LABEL_62:
    if (*a2 < a2[2])
    {
      goto LABEL_65;
    }

    Ener_per_band_comp(*a2, a2[1], &v45, v49, 16, 1);
    v42 = v46;
    *a3 = v45;
    *(a3 + 1) = v42;
    v43 = v48;
    *(a3 + 2) = v47;
    *(a3 + 3) = v43;
    return;
  }

  if (a4 == 4 || (a4 & 0xFFFE) == 2 || a9 || a10 != 1)
  {
    v36 = *a2;
    v37 = a2[1];
    if (*a2 > v37 || a2[2] > v36 || a5 < 0)
    {
      goto LABEL_65;
    }

    v38 = *a1;
    v39 = a1[1];
    v40 = (v37 - v36) >> 2 < a5 || v38 > v39;
    v41 = v40 || a1[2] > v38;
    if (v41 || a5 > (v39 - v38) >> 2)
    {
      goto LABEL_65;
    }

    edct(v38);
    goto LABEL_62;
  }

  if (!a4 && a7 <= 24400)
  {
    v14 = *a2;
    v15 = a2[1];
    if (*a2 > v15)
    {
      goto LABEL_65;
    }

    if (a2[2] > v14)
    {
      goto LABEL_65;
    }

    if (a5 < 0)
    {
      goto LABEL_65;
    }

    v44 = a5;
    if ((v15 - v14) >> 2 < a5)
    {
      goto LABEL_65;
    }

    v16 = *a1;
    v17 = a1[1];
    if (*a1 > v17)
    {
      goto LABEL_65;
    }

    if (a1[2] > v16)
    {
      goto LABEL_65;
    }

    if (a5 > (v17 - v16) >> 2)
    {
      goto LABEL_65;
    }

    edct(v16);
    if (*a2 < a2[2])
    {
      goto LABEL_65;
    }

    Ener_per_band_comp(*a2, a2[1], &v45, v49, 16, 1);
    v18 = 0;
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    while (1)
    {
      v22 = *(&v45 + v18);
      v23 = (v22 * 0.5) + (a3[v18] * 0.5);
      a3[v18] = v23;
      v24 = __exp10((v23 - v22));
      if (v18 < 2)
      {
        break;
      }

      v29 = 0;
      do
      {
        v26 = v19 + 1;
        if ((v19 + 1) > v20 || v19 >= v26 || v19 < v21)
        {
          goto LABEL_65;
        }

        *v19 = *v19 * v24;
        ++v19;
        v27 = v29++ >= 0xF;
      }

      while (!v27);
LABEL_42:
      ++v18;
      v19 = v26;
      if (v18 == 16)
      {
        v32 = *a1;
        v33 = a1[1];
        if (*a1 <= v33 && a1[2] <= v32 && v44 <= (v33 - v32) >> 2)
        {
          v34 = *a2;
          v35 = a2[1];
          if (*a2 <= v35 && v21 <= v34 && v44 <= (v35 - v34) >> 2)
          {
            edct(v34);
            return;
          }
        }

LABEL_65:
        __break(0x5519u);
      }
    }

    v25 = 0;
    while (1)
    {
      v26 = v19 + 1;
      v27 = (v19 + 1) > v20 || v19 >= v26;
      if (v27 || v19 < v21)
      {
        goto LABEL_65;
      }

      *v19 = *v19 * v24;
      ++v19;
      v27 = v25++ >= 7;
      if (v27)
      {
        goto LABEL_42;
      }
    }
  }
}

void Prep_music_postP(float **a1, int a2, float *__C, int a4, float *a5, float *a6)
{
  v6 = (a5 + 4);
  v7 = a5 + 3;
  v8 = a5 + 3 <= a5 + 4 && v7 >= a5;
  if (v8)
  {
    v10 = *v7;
    if (a4 == 3)
    {
      LODWORD(__A[0]) = 1065353216;
      vDSP_vfill(__A, __C, 1, 0x280uLL);
      LODWORD(__A[0]) = 1065353216;
      vDSP_vfill(__A, a6, 1, 0x280uLL);
      if ((a5 + 1) <= v6)
      {
        v13 = 0;
        v14 = a1[1];
        v15 = a1[2];
        v16 = *a1;
        v17 = (*a5 + 0.5);
        while (1)
        {
          v18 = (v16 + 191);
          v19 = &v16[v17 + 191];
          v20 = &v16[v17 + 192];
          v21 = v20 > v14 || v19 > v20;
          v22 = !v21 && v19 >= v15;
          v23 = (v16 + 192);
          v24 = !v22 || v23 > v14;
          v25 = v24 || v18 > v23;
          if (v25 || v18 < v15)
          {
            break;
          }

          v16[191] = *v19;
          --v16;
          v8 = v13++ >= 0xBF;
          if (v8)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      v15 = a1[2];
LABEL_30:
      v27 = a1[1];
      v28 = *a1 + 448;
      if (v27 >= v28 && v15 <= v28 && (v27 - v28) >= 765)
      {
        __A[0] = *a1 + 448;
        __A[1] = v27;
        __A[2] = v15;
        pred_lt4(__A, v28, v10, vcvts_n_s32_f32(v10 - v10, 2uLL), 192, inter4_2, &post_dct_wind, 0x10u, 4);
        v29 = 0;
        v30 = &unk_19B3A1CB0;
        while (1)
        {
          v31 = v28 + 1;
          v32 = v30 > mfreq_loc_LD || v31 > v27;
          v33 = v32 || v28 > v31;
          if (v33 || v28 < v15)
          {
            break;
          }

          v35 = v30 - 1;
          *v28 = *(v30++ - 1) * *v28;
          ++v28;
          v8 = v29++ >= 0xBF;
          if (v8)
          {
            v36 = 0;
            v38 = *a1;
            v37 = a1[1];
            v39 = a1[2];
            while (1)
            {
              v40 = v35 + 1;
              v41 = v35 < &post_dct_wind || v40 > mfreq_loc_LD;
              v42 = v41 || v35 > v40;
              v43 = v38 + 1;
              v44 = v42 || v43 > v37;
              v45 = v44 || v38 > v43;
              if (v45 || v38 < v39)
              {
                goto LABEL_72;
              }

              v47 = *v35--;
              *v38 = v47 * *v38;
              ++v38;
              v8 = v36++ >= 0xBF;
              if (v8)
              {
                v48 = *a1;
                v49 = a1[1];
                v8 = v49 >= *a1;
                v50 = v49 - *a1;
                if (v8 && v39 <= v48 && v50 >= 2557)
                {
                  edct(v48);
                  return;
                }

                goto LABEL_72;
              }
            }
          }
        }
      }
    }
  }

LABEL_72:
  __break(0x5519u);
}

void *LD_music_post_filter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, unint64_t a10, char *a11, float *a12, unint64_t a13, unint64_t a14, __int16 *a15, __int16 a16, __int16 a17)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v179 = v19;
  v180 = v18;
  v181 = v21;
  v182 = v20;
  v184 = v22;
  v186 = v23;
  v25 = v24;
  __dst = v26;
  v27 = v17;
  v28 = a14;
  *v195 = *MEMORY[0x1E69E9840];
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v190[4] = v29;
  v190[3] = v29;
  v190[2] = v29;
  v190[1] = v29;
  v190[0] = v29;
  memset(__b, 255, sizeof(__b));
  v187 = NAN;
  memset(v188, 255, sizeof(v188));
  v30 = v194;
  memset(v194, 255, sizeof(v194));
  memcpy(v191, v27, sizeof(v191));
  v31 = 0;
  v32 = 0.0;
  v33 = __b;
  v34 = v191;
  do
  {
    *(v190 + v31) = 0;
    v35 = mfreq_loc_LD[v31];
    if (v32 <= v35)
    {
      v37 = 0;
      do
      {
        v38 = v34 + 1;
        v39 = v34 < v191 || v38 > v192;
        v40 = v39 || v34 > v38;
        v41 = (v33 + 4);
        if (v40 || v41 > v190 || v33 > v41)
        {
          goto LABEL_227;
        }

        v44 = (*v34 * *v34) * 0.0015625;
        v33->f32[0] = v44;
        v45 = v30 + 1;
        if (v30 + 1 > v195 || v30 > v45)
        {
          goto LABEL_227;
        }

        *v30 = v44;
        v46 = v44 + *(v190 + v31);
        *(v190 + v31) = v46;
        v32 = v32 + 10.0;
        ++v37;
        v33 = (v33 + 4);
        ++v30;
        ++v34;
      }

      while (v32 <= v35);
      v36 = v46 / v37;
      v34 = v38;
      v30 = v45;
      v33 = v41;
    }

    else
    {
      v36 = NAN;
    }

    if (v36 < 0.0035)
    {
      v36 = 0.0035;
    }

    *(v190 + v31++) = v36;
  }

  while (v31 != 20);
  v47 = 0;
  v48 = 0.0;
  do
  {
    v48 = v48 + *(v190 + v47);
    v47 += 4;
  }

  while (v47 != 68);
  v49 = log10(v48);
  v50 = stab_est(v179, a9, v180, v181, v182, v184, 1, (v49 * 10.0) + -3.0103);
  if (a17 != 5 || v186 < 6600)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  if (v52 >= 4)
  {
    v55 = (*a15 + 1);
    if (v55 >= 51)
    {
      LOWORD(v55) = 51;
    }

    *a15 = v55;
    v54 = 6;
    v25 = 0.25119;
  }

  else
  {
    *a15 = 0;
    if ((v52 - 1) > 2u)
    {
      v54 = 4;
    }

    else
    {
      v53 = (v52 - 1);
      v25 = *(&unk_19B3A209C + v53);
      v54 = qword_19B3A20A8[v53];
    }
  }

  v56 = 0;
  v57 = 0;
  if (a16 == 5)
  {
    v58 = 3;
  }

  else
  {
    v58 = v54;
  }

  do
  {
    v59 = mfreq_bindiv_LD[v56];
    if (v59 < 1)
    {
      v67 = 0.0;
    }

    else
    {
      v60 = 0.0;
      v61 = v57;
      v62 = 0.0;
      do
      {
        v63 = __b + v61;
        v64 = v63 + 1;
        if (v63 < __b || v64 > v190 || v63 > v64)
        {
          v187 = v62;
          goto LABEL_227;
        }

        v62 = *v63 + v62;
        if (v60 <= *v63)
        {
          v60 = *v63;
        }

        ++v61;
      }

      while (v59 + v57 > v61);
      v67 = v62 - v60;
    }

    v68 = v67 / (v59 - 1);
    *(a10 + 4 * v56) = v68 * sc_qnoise[v56];
    v57 += v59;
    ++v56;
  }

  while (v56 != 20);
  v185 = v52;
  v187 = v68;
  v69 = __b + maximum(__b, 640, &v187);
  if (v69 < __b)
  {
    goto LABEL_227;
  }

  if (v69 + 1 > v190)
  {
    goto LABEL_227;
  }

  if (v69 > v69 + 1)
  {
    goto LABEL_227;
  }

  v70 = 0;
  v71 = 1.0 / *v69;
  v72 = vmla_n_f32(vdup_n_s32(0x3F6CCCCCu), __b[0], v71);
  v73 = vmul_f32(v72, v72);
  v74 = vmul_f32(v73, v73);
  __asm { FMOV            V2.2S, #5.0 }

  v79 = vminnm_f32(vmul_f32(v74, v74), _D2);
  v187 = v71;
  v188[0] = vmuls_lane_f32(0.5, v79, 1) + (v79.f32[0] * 0.5);
  do
  {
    v80 = v79.f32[1];
    v81 = (__b[1].f32[v70] * v71) + 0.925;
    v82 = fminf(((v81 * v81) * (v81 * v81)) * ((v81 * v81) * (v81 * v81)), 5.0);
    v188[v70 + 1] = (vmuls_lane_f32(0.333, v79, 1) + (v79.f32[0] * 0.333)) + (v82 * 0.333);
    v79.i32[0] = vdup_lane_s32(v79, 1).u32[0];
    v79.f32[1] = v82;
    ++v70;
  }

  while (v70 != 638);
  v83 = 0;
  v84 = ((__b[319].f32[1] * v71) + 0.925) * ((__b[319].f32[1] * v71) + 0.925);
  v188[639] = (fminf((v84 * v84) * (v84 * v84), 5.0) * 0.5) + (v80 * 0.5);
  v85 = vdupq_n_s32(0x3F733333u);
  v86 = vdupq_n_s32(0x3D4CCCCDu);
  do
  {
    *(a14 + v83 * 4) = vmlaq_f32(vmulq_f32(*(a14 + v83 * 4), v85), v86, *&v188[v83]);
    v83 += 4;
  }

  while (v83 != 400);
  v87 = vdupq_n_s32(0x3F59999Au);
  v88 = vdupq_n_s32(0x3E19999Au);
  do
  {
    *(a14 + v83 * 4) = vmlaq_f32(vmulq_f32(*(a14 + v83 * 4), v87), v88, *&v188[v83]);
    v83 += 4;
  }

  while (v83 != 640);
  v89 = 0;
  *&v90 = -1;
  *(&v90 + 1) = -1;
  v192[4] = v90;
  v192[3] = v90;
  v192[2] = v90;
  v192[1] = v90;
  v192[0] = v90;
  __asm { FMOV            V1.4S, #1.0 }

  do
  {
    v192[v89] = vdivq_f32(_Q1, *(a10 + v89 * 16));
    ++v89;
  }

  while (v89 != 5);
  v183 = _Q1;
  memset(v194, 255, sizeof(v194));
  v92 = 0;
  v93 = vdupq_n_s32(0x3F333333u);
  v94 = vdupq_n_s32(0x3E99999Au);
  do
  {
    *&v194[v92 * 8] = vmlaq_f32(vmulq_f32(*__b[v92].f32, v93), v94, *&a11[v92 * 8]);
    v92 += 2;
  }

  while (v92 != 320);
  v95 = a16 == 5 ? 16 : 20;
  memcpy(a11, __b, 0xA00uLL);
  if (a11 + 2560 < a11)
  {
    goto LABEL_227;
  }

  v100 = 0;
  v101 = 0.0;
  do
  {
    if (*(a10 + v100) > v101)
    {
      v101 = *(a10 + v100);
    }

    v100 += 4;
  }

  while (v100 != 80);
  if (v185)
  {
    v102 = 0;
    v39 = v101 > 10.0;
    v103 = 0.5625;
    if (v39)
    {
      v103 = v25 * v25;
    }

    v104 = v194;
    v105 = v191;
    v106 = 0.0;
    v107 = a12;
    while (1)
    {
      v108 = &mfreq_loc_LD[v102];
      v109 = v108 + 1;
      if (v108 < mfreq_loc_LD || v109 > INV_MAX_SNR_tab || v108 > v109)
      {
        goto LABEL_227;
      }

      v112 = *v108;
      if (v106 <= *v108)
      {
        break;
      }

LABEL_95:
      if (++v102 == v58)
      {
        v113 = 1.1;
        if (v186 > 9600)
        {
          v113 = 1.0;
        }

        while (1)
        {
          v114 = &INV_MAX_SNR_tab[v58];
          v115 = v114 + 4;
          if (v114 < INV_MAX_SNR_tab || v115 > &MAX_SNR_SNR1_tab || v114 > v115)
          {
            goto LABEL_227;
          }

          v118 = &MAX_SNR_SNR1_tab + 4 * v58;
          if (v118 < &MAX_SNR_SNR1_tab)
          {
            goto LABEL_227;
          }

          if (v118 + 4 > &unk_19B3A209C)
          {
            goto LABEL_227;
          }

          if (v118 > v118 + 4)
          {
            goto LABEL_227;
          }

          v119 = v192 + 4 * v58;
          if (v119 < v192)
          {
            goto LABEL_227;
          }

          if (v119 + 4 > &v193)
          {
            goto LABEL_227;
          }

          if (v119 > v119 + 4)
          {
            goto LABEL_227;
          }

          v120 = &mfreq_loc_LD[v58];
          if (v120 < mfreq_loc_LD || v120 + 1 > INV_MAX_SNR_tab || v120 > v120 + 1)
          {
            goto LABEL_227;
          }

          v121 = mfreq_loc_LD[v58];
          if (v106 <= v121)
          {
            break;
          }

          v122 = v107;
          v123 = v105;
LABEL_136:
          ++v58;
          v107 = v122;
          v105 = v123;
          if (v58 == v95)
          {
            goto LABEL_146;
          }
        }

        v124 = (a10 + 4 * v58);
        if (v124 >= a10 && (v124 + 1) <= a10 + 80 && v124 <= v124 + 1)
        {
          v125 = INV_MAX_SNR_tab[v58];
          v126 = v125 - (v125 * v103);
          v127 = (*(&MAX_SNR_SNR1_tab + v58) * v103) - v125;
          v128 = v126 * *(v192 + v58);
          while (1)
          {
            v129 = 1.0;
            if (*v124 >= 0.5)
            {
              if (v104 < v194 || v104 + 1 > v195 || v104 > v104 + 1)
              {
                goto LABEL_227;
              }

              v129 = v127 + (v128 * *v104);
            }

            if (v107 < a12)
            {
              break;
            }

            v122 = v107 + 1;
            if ((v107 + 1) > a13 || v107 > v122)
            {
              break;
            }

            if (v129 < v103)
            {
              v129 = v103;
            }

            if (v129 > v113)
            {
              v129 = v113;
            }

            v130 = v129 + ((1.0 - sqrtf(v129)) * *v107);
            *v107 = v130;
            if (v105 < v191)
            {
              break;
            }

            v123 = v105 + 1;
            if (v105 + 1 > v192 || v105 > v123)
            {
              break;
            }

            ++v104;
            *v105 = v130 * *v105;
            v106 = v106 + 10.0;
            ++v105;
            ++v107;
            if (v106 > v121)
            {
              goto LABEL_136;
            }
          }
        }

        goto LABEL_227;
      }
    }

    while (v107 >= a12 && (v107 + 1) <= a13 && v107 <= v107 + 1)
    {
      ++v105;
      ++v104;
      *v107 = 1.0;
      v106 = v106 + 10.0;
      ++v107;
      if (v106 > v112)
      {
        goto LABEL_95;
      }
    }

LABEL_227:
    __break(0x5519u);
  }

  v131 = 0;
  v132 = 10.0;
  v133 = a12;
  do
  {
    v134 = mfreq_loc_LD[v131];
    if (v132 <= v134)
    {
      do
      {
        if (v133 < a12)
        {
          goto LABEL_227;
        }

        v135 = v133 + 1;
        if ((v133 + 1) > a13 || v133 > v135)
        {
          goto LABEL_227;
        }

        *v133 = (*v133 * 0.9) + 0.1;
        v132 = v132 + 10.0;
        ++v133;
      }

      while (v132 <= v134);
    }

    else
    {
      v135 = v133;
    }

    ++v131;
    v133 = v135;
  }

  while (v131 != 20);
LABEL_146:
  if (v185)
  {
    v136 = 0;
    v137 = 100;
    v138 = a14;
    v97.i32[1] = v183.i32[1];
    do
    {
      v96 = *&v191[v136];
      *&v191[v136] = vmulq_f32(v96, vbslq_s8(vcgtq_f32(*(a14 + v136), v183), v183, *(a14 + v136)));
      v136 += 16;
    }

    while (v136 != 400);
  }

  else
  {
    v137 = 0;
    v138 = a14;
  }

  v139 = *a15;
  if (v139 < 41)
  {
    if (v139 >= 26)
    {
      v142 = 4 * v137;
      v143 = v137 | 0xFFFFFFFFFFFFFD80;
      v144 = v191;
      do
      {
        v145 = (v28 + v142);
        v146 = v28 + v142 + 4;
        v147 = v28 + v142 < v138 || v146 > v138 + 2560;
        v148 = v147 || v145 > v146;
        v149 = &v144[v142];
        v150 = &v144[v142 + 4];
        _CF = !v148 && v149 >= v191;
        v152 = !_CF || v150 > v192;
        if (v152 || v149 > v150)
        {
          goto LABEL_227;
        }

        v154 = *v145;
        if (*v145 > 1.0)
        {
          v154 = 1.0;
        }

        *v149 = *v149 * v154;
        v28 += 4;
        v144 += 4;
        _CF = __CFADD__(v143++, 1);
      }

      while (!_CF);
    }
  }

  else
  {
    if (a16 == 5)
    {
      if (v186 < 9601)
      {
        v99.i32[0] = 1.0;
        v141 = 1.25;
        v98.i32[0] = 0.75;
        v140 = 0.5;
        v96.i32[0] = 1066192077;
        v97.i32[0] = 0.5;
      }

      else
      {
        v96.i32[0] = 1.0;
        v140 = 0.75;
        v141 = 1.15;
        v98.i32[0] = 1064094925;
        v97.i32[0] = 1062417203;
        v99.i32[0] = 1.0;
      }
    }

    else
    {
      v99.i32[0] = 1.25;
      v96.i32[0] = 1.5;
      v97.i32[0] = 0.5;
      if (v186 >= 0x3DEB)
      {
        *v98.i32 = 0.75;
      }

      else
      {
        *v97.i32 = 0.0;
        *v98.i32 = 0.0;
      }

      if (v186 >= 0x3DEB)
      {
        v155 = 1.25;
      }

      else
      {
        v155 = 1.5;
      }

      if (v186 >= 0x3DEB)
      {
        v156 = 1.0;
      }

      else
      {
        v156 = 1.25;
      }

      if (v186 >= 12650)
      {
        v140 = *v97.i32;
      }

      else
      {
        v140 = 0.0;
      }

      if (v186 >= 12650)
      {
        v141 = v155;
      }

      else
      {
        *v97.i32 = 0.0;
        *v98.i32 = 0.0;
        v141 = 1.5;
      }

      if (v186 >= 12650)
      {
        v96.f32[0] = v156;
        *v99.i32 = 1.0;
      }
    }

    v157 = vdupq_lane_s32(v99, 0);
    v158 = vdupq_lane_s32(v98, 0);
    v159 = v137 - 200;
    v160 = 4 * v137;
    do
    {
      v161 = vbslq_s8(vcgtq_f32(*(a14 + v160), v157), v157, *(a14 + v160));
      *&v191[v160] = vmulq_f32(*&v191[v160], vbslq_s8(vcgtq_f32(v158, v161), v158, v161));
      v160 += 16;
      v159 += 4;
    }

    while (v159);
    v162 = vdupq_lane_s32(*v96.f32, 0);
    v163 = vdupq_lane_s32(v97, 0);
    for (i = 800; i != 1600; i += 16)
    {
      v165 = vbslq_s8(vcgtq_f32(*(a14 + i), v162), v162, *(a14 + i));
      *&v191[i] = vmulq_f32(*&v191[i], vbslq_s8(vcgtq_f32(v163, v165), v163, v165));
    }

    if (v186 > 8850 || a16 != 5)
    {
      v166 = -960;
      do
      {
        v167 = (v138 + v166 + 2560);
        v168 = v138 + v166 + 2564;
        v169 = v167 < v138 || v168 > v138 + 2560;
        v170 = v169 || v167 > v168;
        v171 = &v191[v166 + 2560];
        v172 = (v192 + v166 + 4);
        v173 = !v170 && v171 >= v191;
        v174 = !v173 || v172 > v192;
        if (v174 || v171 > v172)
        {
          goto LABEL_227;
        }

        v176 = *v167;
        if (v141 < *v167)
        {
          v176 = v141;
        }

        if (v140 > v176)
        {
          v176 = v140;
        }

        *v171 = *v171 * v176;
        v166 += 4;
      }

      while (v166);
    }
  }

  result = memcpy(__dst, v191, 0xA00uLL);
  if (__dst + 2560 < __dst)
  {
    goto LABEL_227;
  }

  return result;
}

void Post_music_postP(uint64_t a1, unint64_t a2, char *a3, __int128 *a4, _OWORD *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  edct(a1);
  if (a2 + 768 < a2 || (memmove(a3, (a2 + 768), 0x400uLL), a3 + 1024 < a3) || (v15 = *a4, v16 = a4[1], v17 = a4[3], a5[2] = a4[2], a5[3] = v17, *a5 = v15, a5[1] = v16, a5 + 4 < a5))
  {
    __break(0x5519u);
  }

  else
  {

    syn_12k8(0x100uLL, a6, a7, a3, a8);
  }
}

uint64_t FEC_pitch_estim(uint64_t result, int a2, unsigned int a3, int a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, _DWORD *a11, _WORD *a12, _WORD *a13, __int16 a14)
{
  if (a2 == 3)
  {
    v14 = a6 + 4 * (((a3 + ((a3 >> 25) & 0x3F)) << 16) >> 22);
    v15 = (v14 - 4);
    if (v14 - 4 < a6 || v14 > a7 || v15 > v14)
    {
      goto LABEL_50;
    }

    *a11 = *v15;
    *a12 = a3;
    *a13 = 5;
  }

  if (result)
  {
    v18 = 0;
  }

  else
  {
    v18 = a5 <= 1;
  }

  v19 = !v18;
  if (a4 == 3 && v19)
  {
    if (a6 + 12 >= a6 && a6 + 16 <= a7 && a6 + 12 <= a6 + 16 && a6 + 8 <= a7)
    {
      v20 = *(a6 + 12);
      v21 = *(a6 + 4);
      if (v20 >= (v21 * 1.4) || v20 <= (v21 * 0.7))
      {
LABEL_45:
        if (a14 != 4)
        {
          return result;
        }

        goto LABEL_46;
      }

      v23 = (a9 + 28);
      if (a9 + 28 >= a9 && a9 + 32 <= a10 && v23 <= a9 + 32)
      {
        if (v21 < (*v23 * 1.4) && a3 == 256 && v21 > (*v23 * 0.7))
        {
LABEL_46:
          v27 = a6 + 4 * (((a3 + ((a3 >> 25) & 0x3F)) << 16) >> 22);
          v28 = (v27 - 4);
          if (v27 - 4 >= a6 && v27 <= a7 && v28 <= v27)
          {
            *a11 = *v28;
            *a12 = a3;
            *a13 = 0;
            return result;
          }

          goto LABEL_50;
        }

        v24 = (a9 + 36);
        if (a9 + 36 >= a9 && a9 + 40 <= a10 && v24 <= a9 + 40)
        {
          if (v21 < (*v24 * 1.4))
          {
            v26 = v21 > (*v24 * 0.7) && a3 == 320;
            if (a14 != 4 && !v26)
            {
              return result;
            }

            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

void hf_synth_reset(__int16 *a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v10 = 0;
  v11 = *a1;
  do
  {
    v11 = 31821 * v11 + 13849;
  }

  while (v10++ < 0x13F);
  *a1 = v11;
  __A = 0.0;
  vDSP_vfill(&__A, a2, 1, 0x1EuLL);
  __A = 0.0;
  vDSP_vfill(&__A, a3, 1, 0x10uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a4, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a6, 1, 0x14uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a5, 1, 0xDuLL);
}

void updt_dec(uint64_t a1, int a2, unsigned __int16 a3, void *a4, uint64_t a5, void *a6, __int128 *a7, __int128 *a8, float a9, unint64_t a10, unint64_t a11, void *a12, _DWORD *a13)
{
  v14 = a4[1];
  v15 = (*a4 + 4 * a2);
  if (v15 > v14)
  {
    goto LABEL_90;
  }

  if (v14 - v15 < 0x780 || a4[2] > v15)
  {
    goto LABEL_90;
  }

  v23 = a1 + 5384;
  memcpy((a1 + 5384), v15, 0x780uLL);
  if (v23 > a1 + 7304)
  {
    goto LABEL_90;
  }

  v24 = *(a1 + 5244);
  if (!*(a1 + 5244))
  {
    v25 = a12[1];
    v26 = (*a12 + 2560);
    if (v26 > v25)
    {
      goto LABEL_90;
    }

    if (v25 - v26 < 0x908)
    {
      goto LABEL_90;
    }

    if (a12[2] > v26)
    {
      goto LABEL_90;
    }

    memcpy((a1 + 68892), v26, 0x908uLL);
    if (a1 + 68892 > (a1 + 71204))
    {
      goto LABEL_90;
    }
  }

  v27 = *a7;
  v28 = a7[1];
  v29 = a7[3];
  *(a1 + 11240) = a7[2];
  *(a1 + 11256) = v29;
  *(a1 + 11208) = v27;
  *(a1 + 11224) = v28;
  if (a1 + 11208 > (a1 + 11272))
  {
    goto LABEL_90;
  }

  v30 = (a1 + 71260);
  v31 = (a1 + 21552);
  v32 = *a8;
  v33 = a8[1];
  v34 = a8[3];
  *(a1 + 11176) = a8[2];
  *(a1 + 11192) = v34;
  *(a1 + 11144) = v32;
  *(a1 + 11160) = v33;
  v35 = a3;
  *(a1 + 21552) = a3;
  if (a3 && (a3 - 6 > 0xFFFFFFFD || *(a1 + 31120) != 1))
  {
    if (a3 == 5 && !*(a1 + 21588))
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v31 = 1;
  }

  if (*(a1 + 22752) >= 1)
  {
    *(a1 + 22752) = 0;
  }

  if (a3)
  {
LABEL_20:
    if (v24)
    {
LABEL_42:
      if (a3 != 5)
      {
        *(a1 + 21656) = 14;
        __A = 0.0;
        vDSP_vfill(&__A, (a1 + 21592), 1, 0x10uLL);
        v40 = (a1 + 21728);
        v41 = 256;
        while ((v40 + 1) <= a1 + 22752 && v40 <= v40 + 1)
        {
          *v40++ = vcvts_n_f32_s32((31821 * *(a1 + 21584) + 13849), 0xFuLL);
          if (!--v41)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_90;
      }

      goto LABEL_49;
    }

    goto LABEL_31;
  }

  if (*(a1 + 5176) >= 24401)
  {
    *v31 = 3;
  }

  if (v24)
  {
    v36 = *(a1 + 5208);
    if (v36 && v36 != 1750)
    {
      *v31 = 1;
      v37 = (a10 + 12);
      if (a10 + 12 < a10 || a10 + 16 > a11 || v37 > a10 + 16)
      {
        goto LABEL_90;
      }

      *v30 = *v37;
    }

    goto LABEL_49;
  }

LABEL_31:
  if (*(a1 + 5240) == 256)
  {
    v38 = (a10 + 12);
    if (a10 + 12 < a10)
    {
      goto LABEL_90;
    }

    v39 = a10 + 16;
  }

  else
  {
    v38 = (a10 + 16);
    if (a10 + 16 < a10)
    {
      goto LABEL_90;
    }

    v39 = a10 + 20;
  }

  if (v39 > a11 || v38 > v39)
  {
    goto LABEL_90;
  }

  *v30 = *v38;
  if (a3)
  {
    goto LABEL_42;
  }

LABEL_49:
  *(a1 + 21588) = *(a1 + 21586);
  v43 = (*(a1 + 24396) + 1);
  if (v43 >= 5)
  {
    LOWORD(v43) = 5;
  }

  *(a1 + 24396) = v43;
  v44 = (a1 + 24348 + 4 * ((a2 + ((a2 >> 25) & 0x3F)) >> 6));
  if (v44 < a1 + 24348)
  {
    goto LABEL_90;
  }

  v45 = a1 + 24396;
  v46 = (a2 + ((a2 >> 25) & 0x3F)) >> 6;
  if (a2 >= 64)
  {
    if (v45 < v44)
    {
      goto LABEL_90;
    }

    v47 = 4 * (v46 & 0x3FFF);
    if (v45 - v44 < v47 || v46 >= 0xD)
    {
      goto LABEL_90;
    }

    memmove((a1 + 24348), v44, v47);
  }

  v48 = *a5;
  v49 = *(a5 + 8);
  if (*a5 <= v49 && v45 >= v44 && *(a5 + 16) <= v48)
  {
    v50 = 4 * v46;
    if (4 * v46 <= v49 - v48 && v50 <= v45 - v44)
    {
      memcpy(v44, v48, 4 * v46);
      if (v44 <= &v44[v50])
      {
        v51 = (a1 + 138224);
        v52 = a1 + 138216;
        if (a1 + 138224 >= (a1 + 138216))
        {
          v53 = (v52 + 4 * v46 + 8);
          if (v53 >= v52)
          {
            if (a2 < 64)
            {
              goto LABEL_72;
            }

            if (a1 + 138264 < v53)
            {
              goto LABEL_90;
            }

            if (v46 > 0xA)
            {
              goto LABEL_90;
            }

            v54 = 4 * (v46 & 0x3FFF);
            if (a1 + 138264 - v53 < v54)
            {
              goto LABEL_90;
            }

            memmove(v53, (a1 + 138224), 4 * (v46 & 0x3FFF));
            if (&v53[v54] < v53)
            {
              goto LABEL_90;
            }

            if (a2 == 256)
            {
              *v51 = a13[3];
              *(a1 + 138228) = a13[2];
              *(a1 + 138232) = a13[1];
              *(a1 + 138236) = *a13;
            }

            else
            {
LABEL_72:
              v55 = (a13 + 5);
              if (a13 + 4 > a13 + 5)
              {
                goto LABEL_90;
              }

              if (a13 + 4 < a13)
              {
                goto LABEL_90;
              }

              *v51 = a13[4];
              *(a1 + 138228) = a13[3];
              if ((a13 + 3) > v55)
              {
                goto LABEL_90;
              }

              *(a1 + 138232) = a13[2];
              if ((a13 + 2) > v55)
              {
                goto LABEL_90;
              }

              *(a1 + 138236) = a13[1];
              if ((a13 + 1) > v55)
              {
                goto LABEL_90;
              }

              *(a1 + 138240) = *a13;
            }

            *(a1 + 24480) = *(a1 + 24416);
            *(a1 + 24496) = *(a1 + 24432);
            *(a1 + 24512) = *(a1 + 24448);
            *(a1 + 24528) = *(a1 + 24464);
            v56 = a7[2];
            v57 = a7[3];
            v58 = a7[1];
            *(a1 + 24416) = *a7;
            *(a1 + 24464) = v57;
            *(a1 + 24448) = v56;
            *(a1 + 24432) = v58;
            if (*(a1 + 58172) != 3)
            {
              v60 = v35 != 1 || *(a1 + 5244) != 0;
              *(a1 + 64220) = v60;
            }

            *(a1 + 179688) = *(a1 + 34716);
            *(a1 + 34716) = *(a1 + 34718);
            *(a1 + 34720) = *(a1 + 34722);
            *(a1 + 36058) = *(a1 + 36056);
            v61 = a6[1];
            v62 = *a6 + 68 * ((*(a1 + 5240) + ((*(a1 + 5240) >> 25) & 0x3F)) >> 6) - 68;
            if (v62 <= v61 && v61 - v62 >= 0x44 && a6[2] <= v62)
            {
              *(a1 + 64148) = *v62;
              v63 = *(v62 + 16);
              v64 = *(v62 + 32);
              v65 = *(v62 + 48);
              *(a1 + 64212) = *(v62 + 64);
              *(a1 + 64180) = v64;
              *(a1 + 64196) = v65;
              *(a1 + 64164) = v63;
              *(a1 + 64216) = a9;
              return;
            }
          }
        }
      }
    }
  }

LABEL_90:
  __break(0x5519u);
}

float *transf_cdbk_dec(unint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, float *a7, float *a8, float a9, float a10, float *a11, float *a12, _WORD *a13)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v20 = 5;
  if (a5 < 0)
  {
    v20 = 1;
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 > 30399)
  {
    switch(a2)
    {
      case 30400:
        v21 = 49;
        goto LABEL_19;
      case 32000:
        v21 = 56;
        goto LABEL_19;
      case 48000:
        v21 = 63;
        goto LABEL_19;
    }
  }

  else
  {
    switch(a2)
    {
      case 29000:
        v21 = 28;
        goto LABEL_19;
      case 29200:
        v21 = 35;
        goto LABEL_19;
      case 30200:
        v21 = 42;
        goto LABEL_19;
    }
  }

  v21 = 70;
  if (a2 != 64000)
  {
    v21 = -7;
  }

LABEL_19:
  v22 = a3 == 3;
  if (a3 == 4)
  {
    v22 = 2;
  }

  v23 = v21 + v22;
  if ((a6 >> 6) & 0xFFFC | (a6 << 10))
  {
    v24 = 4 * (a6 == 256);
  }

  else
  {
    v24 = ((a6 >> 6) | (a6 << 10));
  }

  v25 = (v23 + v24) * v20;
  v26 = (a5 + ((a5 >> 25) & 0x3F)) >> 6;
  if (a5 == -1)
  {
    v26 = 0;
  }

  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50[14] = v27;
  v50[15] = v27;
  v50[12] = v27;
  v50[13] = v27;
  v50[10] = v27;
  v50[11] = v27;
  v50[8] = v27;
  v50[9] = v27;
  v50[7] = v27;
  v50[5] = v27;
  v50[6] = v27;
  v50[3] = v27;
  v50[4] = v27;
  v50[1] = v27;
  v50[2] = v27;
  v50[0] = v27;
  v28 = &AVQ_bits_16kHz_tbl[v26 + v25];
  v29 = v28 + 1;
  if (v28 < AVQ_bits_16kHz_tbl || v29 > ip_edct2_64 || v28 >= v29)
  {
    __break(0x5519u);
  }

  v46 = *a13 + *v28;
  next_indice = get_next_indice(a1, 6);
  if (!a3)
  {
    v35 = next_indice;
    if (a2 == 48000)
    {
      v37 = 0.35;
      v38 = 0.038889;
    }

    else
    {
      if (a2 == 64000)
      {
        v36 = (v35 * 0.019841) + 0.25;
LABEL_43:
        v34 = v36 * a10;
        goto LABEL_44;
      }

      v37 = 0.7;
      v38 = 0.053968;
    }

    v36 = v37 + (v35 * v38);
    goto LABEL_43;
  }

  v33 = __exp10(((next_indice / flt_19B0B0300[(a2 - 24401) >> 4 < 0x1DB]) + flt_19B0B0308[(a2 - 24401) >> 4 < 0x1DB]));
  if (a9 >= 0.0)
  {
    v34 = v33 * a9;
  }

  else
  {
    v34 = fabsf(a9) * 0.25 * v33;
  }

LABEL_44:
  *a8 = v34;
  AVQ_demuxdec(a1, v50, v51, &v46, 8, &v48, v50);
  *a13 = v46;
  __A = 0.0;
  vDSP_vfill(&__A, a12, 1, 0x40uLL);
  for (i = 0; i != 256; i += 16)
  {
    *&a12[i / 4] = vcvtq_f32_s32(v50[i / 0x10]);
  }

  if (!a3 || a2 > 32000 || a4)
  {
    edct2(1, a12, (a12 + 64), a12, (a12 + 64));
  }

  v40 = HIWORD(v49);
  if (HIWORD(v49) && *(a1 + 32476) - v48 >= 8)
  {
    *a7 = *a7 * 0.0625;
  }

  *(a1 + 32476) = v40;
  result = preemph(a12, 64, a7, 0.3);
  v42 = 0;
  v43 = 0.0;
  do
  {
    v44 = vmulq_f32(*&a12[v42], *&a12[v42]);
    v43 = (((v43 + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3];
    v42 += 4;
  }

  while (v42 != 64);
  *a11 = (*a8 * 0.8) * sqrtf((v43 + 0.01) * 0.015625);
  *(a1 + 32478) = 1;
  return result;
}

void gain_dec_SQ(uint64_t a1, uint64_t a2, int a3, int a4, int a5, const float *a6, float *a7, float *a8, float a9, float *a10, float *a11)
{
  v15 = 5;
  if (a4 < 0)
  {
    v15 = 1;
  }

  v16 = 70;
  if (a2 != 64000)
  {
    v16 = -7;
  }

  if (a2 == 48000)
  {
    v16 = 63;
  }

  v17 = a3 == 3;
  if (a3 == 4)
  {
    v17 = 2;
  }

  v18 = v16 + v17;
  v19 = 4 * (a5 == 256);
  if (!((a5 >> 6) & 0xFFFC | (a5 << 10)))
  {
    v19 = ((a5 >> 6) | (a5 << 10));
  }

  v20 = (v18 + v19) * v15;
  v21 = (a4 + ((a4 >> 25) & 0x3F)) >> 6;
  if (a4 == -1)
  {
    v21 = 0;
  }

  v22 = &gain_bits_16kHz_tbl[v21 + v20];
  v23 = v22 + 1;
  if (v22 < gain_bits_16kHz_tbl || v23 > &word_19B3773F2 || v22 > v23)
  {
    __break(0x5519u);
  }

  else
  {
    v44 = v14;
    v45 = v13;
    v46 = v11;
    v47 = v12;
    v31 = *v22;
    next_indice = get_next_indice(a1, v31 >> 1);
    v33 = (9994 * div_s(1, ~(-1 << (v31 >> 1))) + 0x4000) >> 15;
    if ((v33 & 0x10000) != 0)
    {
      v34 = v33 | 0xFFFF0000;
    }

    else
    {
      v34 = v33;
    }

    v35 = vcvts_n_f32_s32(v34, 0xDuLL);
    if (v34 < -32768)
    {
      v35 = -4.0;
    }

    *a7 = (next_indice * v35) + 0.0;
    __C = NAN;
    vDSP_dotpr(a6, 1, a6, 1, &__C, 0x40uLL);
    v36 = (__C + 0.01) * 0.015625;
    *a10 = 1.0 / sqrtf(v36);
    v37 = log10(v36);
    v38 = __exp10((a9 + (v37 * -10.0)) * 0.05);
    v39 = get_next_indice(a1, (v31 + 1) >> 1);
    v40 = ((0x10000 << ((v31 + 1) >> 1) >> 16) - 1) / 2.39793996;
    v41 = __exp10(((v39 / v40) + -1.699));
    v42 = v41 * v38;
    *a8 = v42;
    *a11 = v42 / *a10;
  }
}

uint64_t lp_gain_updt(uint64_t result, float *a2, float *a3, int a4, float a5, float a6)
{
  if (a4 != 256)
  {
    v7 = ((result >> 6) | (result << 10));
    if (v7 > 1)
    {
      if (v7 == 2)
      {
LABEL_13:
        v8 = *a2;
        v9 = 0.2;
        goto LABEL_17;
      }

      if (v7 == 3)
      {
        v8 = *a2;
        v9 = 0.26667;
        goto LABEL_17;
      }
    }

    else
    {
      if (!((result >> 6) | (result << 10)))
      {
        v6 = 0.066667;
        goto LABEL_19;
      }

      if (v7 == 1)
      {
        v8 = *a2;
        v9 = 0.13333;
        goto LABEL_17;
      }
    }

    v8 = *a2;
    v9 = 0.33333;
    goto LABEL_17;
  }

  switch(result)
  {
    case 0x80:
      v8 = *a2;
      v9 = 0.3;
      goto LABEL_17;
    case 0x40:
      goto LABEL_13;
    case 0:
      v6 = 0.1;
LABEL_19:
      *a2 = a5 * v6;
      v10 = a6 * v6;
      goto LABEL_20;
  }

  v8 = *a2;
  v9 = 0.4;
LABEL_17:
  *a2 = v8 + (a5 * v9);
  v10 = *a3 + (a6 * v9);
LABEL_20:
  *a3 = v10;
  return result;
}

void gaus_dec(uint64_t a1, uint64_t a2, uint64_t a3, const float *a4, float *a5, float *a6, float *a7, uint64_t a8, float *a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, unint64_t a15, unint64_t a16, float *a17, unint64_t a18)
{
  *v73 = *MEMORY[0x1E69E9840];
  if (a2 == 7200)
  {
    v19 = a1;
    v20 = 0;
    goto LABEL_3;
  }

  if (a2 <= 24399)
  {
    if (a2 > 13199)
    {
      v19 = a1;
      if (a2 > 16399)
      {
        if (a2 == 16400)
        {
          v20 = 70;
        }

        else
        {
          if (a2 != 22600)
          {
            goto LABEL_130;
          }

          v20 = 80;
        }
      }

      else if (a2 == 13200)
      {
        v20 = 50;
      }

      else
      {
        if (a2 != 14800)
        {
          goto LABEL_130;
        }

        v20 = 60;
      }
    }

    else
    {
      v19 = a1;
      if (a2 > 12149)
      {
        if (a2 == 12150)
        {
          v20 = 30;
        }

        else
        {
          if (a2 != 12850)
          {
            goto LABEL_130;
          }

          v20 = 40;
        }
      }

      else if (a2 == 8000)
      {
        v20 = 10;
      }

      else
      {
        if (a2 != 11600)
        {
          goto LABEL_130;
        }

        v20 = 20;
      }
    }
  }

  else
  {
    v19 = a1;
    if (a2 <= 30399)
    {
      if (a2 > 29199)
      {
        if (a2 == 29200)
        {
          v20 = 110;
        }

        else
        {
          if (a2 != 30200)
          {
            goto LABEL_130;
          }

          v20 = 120;
        }
      }

      else if (a2 == 24400)
      {
        v20 = 90;
      }

      else
      {
        if (a2 != 29000)
        {
          goto LABEL_130;
        }

        v20 = 100;
      }
    }

    else if (a2 <= 47999)
    {
      if (a2 == 30400)
      {
        v20 = 130;
      }

      else
      {
        if (a2 != 32000)
        {
          goto LABEL_130;
        }

        v20 = 140;
      }
    }

    else
    {
      switch(a2)
      {
        case 48000:
          v20 = 150;
          break;
        case 64000:
          v20 = 160;
          break;
        case 96000:
          v20 = 170;
          break;
        default:
LABEL_130:
          if (a2 == 128000)
          {
            v20 = 180;
          }

          else
          {
            v20 = -10;
          }

          break;
      }
    }
  }

LABEL_3:
  v69 = 2 * (a3 != -1);
  v21 = a3 + ((a3 >> 25) & 0x3F);
  v22 = &FCB_bits_tbl[(v20 << v69) + ((a3 + ((a3 >> 25) & 0x3F)) >> 6)];
  v23 = v22 + 1;
  if (v22 < FCB_bits_tbl || v23 > gain_bits_tbl || v22 > v23)
  {
    goto LABEL_145;
  }

  v26 = *v22;
  v27 = v26 >> 1;
  v28 = &__dst[1];
  memset(&__dst[1], 255, 0x2F4uLL);
  v29 = 1 << (v26 >> 1);
  next_indice = get_next_indice(v19, v26 | 1u);
  v65 = v19;
  v31 = get_next_indice(v19, 3);
  if (next_indice)
  {
    v32 = -1.0;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = next_indice >> 1;
  v34 = (v33 / v29);
  v35 = v33 % v29;
  if (v34 <= v35)
  {
    v36 = v32;
  }

  else
  {
    v36 = -v32;
  }

  v37 = vcvts_n_f32_s32(v31, 4uLL);
  v38 = v21;
  if (v37 > 0.0)
  {
    __dst[0] = -0.0973;
    v39 = &unk_19B38AA48;
    v40 = 189;
    v41 = a3;
    while (v39 - 1 >= &gaus_dico && v39 - 1 <= v39)
    {
      *v28++ = (*v39 + (-v37 * *(v39 - 1))) / ((v37 * v37) + 1.0);
      ++v39;
      if (!--v40)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_145;
  }

  memcpy(__dst, &gaus_dico, sizeof(__dst));
  v41 = a3;
LABEL_32:
  v43 = 0;
  v44 = v41;
  v45 = &__dst[(0x80u >> v27) * v34];
  v46 = &__dst[(0x80u >> v27) * v35];
  do
  {
    v47 = &v45[v43];
    if (&v45[v43] < __dst)
    {
      goto LABEL_145;
    }

    v48 = v47 + 1 > v73 || v47 > v47 + 1;
    v49 = &v46[v43];
    v50 = &v46[v43 + 1];
    v51 = !v48 && v49 >= __dst;
    v52 = !v51 || v50 > v73;
    if (v52 || v49 > v50)
    {
      goto LABEL_145;
    }

    a4[v43++] = (v36 * *v49) + (*v47 * v32);
  }

  while (v43 != 64);
  __dst[0] = NAN;
  vDSP_dotpr(a4, 1, a4, 1, __dst, 0x40uLL);
  if ((a9 + 1) > a10 || a9 + 1 < a9)
  {
LABEL_145:
    __break(0x5519u);
  }

  *a9 = 1.0 / sqrtf((__dst[0] + 0.01) * 0.015625);
  if (a2 == 7200)
  {
    v54 = 0;
    v55 = v38 >> 6;
    goto LABEL_52;
  }

  v55 = v38 >> 6;
  if (a2 <= 24399)
  {
    if (a2 > 13199)
    {
      if (a2 > 16399)
      {
        if (a2 == 16400)
        {
          v54 = 70;
        }

        else
        {
          if (a2 != 22600)
          {
            goto LABEL_142;
          }

          v54 = 80;
        }
      }

      else if (a2 == 13200)
      {
        v54 = 50;
      }

      else
      {
        if (a2 != 14800)
        {
          goto LABEL_142;
        }

        v54 = 60;
      }
    }

    else if (a2 > 12149)
    {
      if (a2 == 12150)
      {
        v54 = 30;
      }

      else
      {
        if (a2 != 12850)
        {
          goto LABEL_142;
        }

        v54 = 40;
      }
    }

    else if (a2 == 8000)
    {
      v54 = 10;
    }

    else
    {
      if (a2 != 11600)
      {
        goto LABEL_142;
      }

      v54 = 20;
    }
  }

  else if (a2 <= 30399)
  {
    if (a2 > 29199)
    {
      if (a2 == 29200)
      {
        v54 = 110;
      }

      else
      {
        if (a2 != 30200)
        {
          goto LABEL_142;
        }

        v54 = 120;
      }
    }

    else if (a2 == 24400)
    {
      v54 = 90;
    }

    else
    {
      if (a2 != 29000)
      {
        goto LABEL_142;
      }

      v54 = 100;
    }
  }

  else if (a2 <= 47999)
  {
    if (a2 == 30400)
    {
      v54 = 130;
    }

    else
    {
      if (a2 != 32000)
      {
        goto LABEL_142;
      }

      v54 = 140;
    }
  }

  else
  {
    switch(a2)
    {
      case 48000:
        v54 = 150;
        break;
      case 64000:
        v54 = 160;
        break;
      case 96000:
        v54 = 170;
        break;
      default:
LABEL_142:
        if (a2 == 128000)
        {
          v54 = 180;
        }

        else
        {
          v54 = -10;
        }

        break;
    }
  }

LABEL_52:
  v56 = &gain_bits_tbl[(v54 << v69) + v55];
  if (v56 < gain_bits_tbl || v56 + 1 > &gaus_dico || v56 > v56 + 1)
  {
    goto LABEL_145;
  }

  v57 = *v56;
  v58 = get_next_indice(v65, *v56);
  if (v58 >= 79)
  {
    *(v65 + 5168) = 1;
    v58 = 78;
  }

  v59 = *a9;
  v60 = __exp10((((v58 * (220.0 / (1 << v57))) + -30.0) / 20.0));
  *a5 = v60 / v59;
  *a17 = v60;
  lp_gain_updt(a3, a6, a7, 256, 0.0, *a5);
  *a11 = 0;
  *a12 = -1082130432;
  *a13 = 0;
  *a14 = 1115684864;
  v61 = (a18 + 4 * v44);
  if (v61 < a18)
  {
    goto LABEL_145;
  }

  __dst[0] = 0.0;
  v62 = 64;
  vDSP_vfill(__dst, v61, 1, 0x40uLL);
  v63 = (a15 + 4 * v44);
  do
  {
    if (v63 < a15 || (v63 + 1) > a16 || v63 > v63 + 1)
    {
      goto LABEL_145;
    }

    v64 = *a4++;
    *v63++ = *a17 * v64;
    --v62;
  }

  while (v62);
}

void isf_dec_amr_wb(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __int128 *a5)
{
  v10 = 0;
  *&v31[2] = *MEMORY[0x1E69E9840];
  v11 = (a1 + 21544);
  memset(v30, 170, sizeof(v30));
  do
  {
    v12 = &v30[v10 + 2];
    if (&v30[v10] < v30 || v12 > v31 || &v30[v10] > v12)
    {
LABEL_27:
      __break(0x5519u);
    }

    *&v30[v10] = -1;
    v10 += 2;
  }

  while (v10 != 14);
  v15 = *(a1 + 5208);
  if (v15 == 1750)
  {
    *v30 = get_next_indice(a1, 6);
    *&v30[2] = get_next_indice(a1, 6);
    *&v30[4] = get_next_indice(a1, 6);
    *&v30[6] = get_next_indice(a1, 5);
    *&v30[8] = get_next_indice(a1, 5);
    disf_ns_28b(v30, v31, a4, a4 + 64);
    reorder_isf(a4);
    isf2isp(a4, a5);
  }

  else
  {
    if (v15 == 6600)
    {
      *v30 = get_next_indice(a1, 8);
      *&v30[2] = get_next_indice(a1, 8);
      *&v30[4] = get_next_indice(a1, 7);
      *&v30[6] = get_next_indice(a1, 7);
      *&v30[8] = get_next_indice(a1, 6);
      disf_2s_36b(v30, v31, a4, a1 + 21416, a1 + 21480);
    }

    else
    {
      *v30 = get_next_indice(a1, 8);
      *&v30[2] = get_next_indice(a1, 8);
      *&v30[4] = get_next_indice(a1, 6);
      *&v30[6] = get_next_indice(a1, 7);
      *&v30[8] = get_next_indice(a1, 7);
      *&v30[10] = get_next_indice(a1, 5);
      *&v30[12] = get_next_indice(a1, 5);
      disf_2s_46b(v30, v31, a4, a1 + 21416, a1 + 21480);
    }

    reorder_isf(a4);
    isf2isp(a4, a5);
    v16 = 0;
    v17 = a1 + 24416;
    v18 = a1 + 24484;
    v19 = a1 + 24548;
    do
    {
      if (v18 + v16 > (a1 + 24544))
      {
        goto LABEL_27;
      }

      if ((v18 + v16) < 4)
      {
        goto LABEL_27;
      }

      v20 = v18 + v16 - 64;
      if (v20 > a1 + 24480 || v17 + v16 > v20 || v19 + v16 > (a1 + 24608) || v18 + v16 + 60 > (v19 + v16))
      {
        goto LABEL_27;
      }

      *(v17 + v16 + 128) = ((*(v17 + v16 + 64) + *(v17 + v16)) + *(a4 + v16)) / 3.0;
      v16 += 4;
    }

    while (v16 != 64);
    if (*(a1 + 157364))
    {
      v21 = *a5;
      v22 = a5[1];
      v23 = a5[3];
      *(a1 + 11176) = a5[2];
      *(a1 + 11192) = v23;
      *(a1 + 11144) = v21;
      *(a1 + 11160) = v22;
      v24 = *a4;
      v25 = *(a4 + 16);
      v26 = *(a4 + 48);
      *(a1 + 11240) = *(a4 + 32);
      *(a1 + 11256) = v26;
      *(a1 + 11208) = v24;
      *(a1 + 11224) = v25;
    }

    int_lsp(256, a1 + 11144, a5, a2, a3, interpol_isp_amr_wb, interpol_frac_12k8, 1);
    v29[0] = a4;
    v29[1] = a4 + 64;
    v29[2] = a4;
    v28[0] = a1 + 11208;
    v28[1] = a1 + 11272;
    v28[2] = a1 + 11208;
    lsf_stab(v29, v28, 1);
    *v11 = v27;
  }
}

void hf_synth_amr_wb_reset(__int16 *a1, float *a2, float *a3, _DWORD *a4, _DWORD *a5, float *a6, _WORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, _WORD *a13, _WORD *a14, _WORD *a15, _DWORD *a16)
{
  v20 = 0;
  v21 = *a1;
  do
  {
    v21 = 31821 * v21 + 13849;
  }

  while (v20++ < 0x13F);
  *a1 = v21;
  __A = 0.0;
  vDSP_vfill(&__A, a2, 1, 0x10uLL);
  v26 = 0.0;
  vDSP_vfill(&v26, a6, 1, 0x14uLL);
  v27 = 0.0;
  vDSP_vfill(&v27, a3, 1, 0xDuLL);
  *a4 = 0;
  *a5 = 0;
  *a7 = 0;
  *a8 = -1041235968;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 1065353216;
  *a13 = 0;
  *a14 = 0;
  *a15 = 160;
  *a16 = 1065353216;
}

float *Ener_per_band(float *result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result;
  while (1)
  {
    v5 = crit_bins[v3];
    if (v5 >= 1)
    {
      break;
    }

    v8 = 0.01;
LABEL_10:
    *(a3 + 4 * v3++) = sqrtf(fmaxf(v8, 0.01));
    if (v3 == 23)
    {
      return result;
    }
  }

  LOWORD(v6) = 0;
  v7 = &v4[(v5 - 1) + 1];
  v8 = 0.01;
  while (v4 >= result && (v4 + 1) <= a2 && v4 <= v4 + 1)
  {
    v8 = v8 + (*v4 * *v4);
    v6 = (v6 + 1);
    ++v4;
    if (v6 >= v5)
    {
      v4 = v7;
      goto LABEL_10;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t get_indice_preview(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v25 = *MEMORY[0x1E69E9840];
  bzero(v23, 0x1420uLL);
  v7 = 0;
  v8 = *v6;
  v9 = v6[1];
  v10 = v24;
  v11 = v6[2];
  do
  {
    v12 = (v8 + (v7 >> 3));
    if (v12 >= v9 || v12 < v11 || v10 > &v25)
    {
LABEL_20:
      __break(0x5519u);
    }

    *(v10 - 1) = (*v12 >> (~v7++ & 7)) & 1;
    v10 = (v10 + 2);
  }

  while (v7 != 264);
  v15 = 0;
  v16 = v3;
  v17 = &v23[v5];
  do
  {
    v18 = (v17 + 1);
    if (v17 < v23 || v18 > &v25 || v17 > v18)
    {
      goto LABEL_20;
    }

    v21 = *v17++;
    v15 = v21 + 2 * v15;
    --v16;
  }

  while (v16);
  return v15;
}

uint64_t VerifyToCs(uint64_t result, unsigned int a2, _DWORD *a3, unsigned int *a4, BOOL *a5)
{
  if (!a2)
  {
    return 1;
  }

  v5 = result;
  v6 = a2;
  LODWORD(result) = 1;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = v8 & 0xF;
    if ((v8 & 0x20) != 0)
    {
      v10 = &AMRWB_IOmode2rate;
    }

    else
    {
      v10 = &PRIMARYmode2rate;
    }

    v11 = v10[v9];
    *a3++ = v11;
    result = result + ((v7 >> 6) & 1);
    *a4++ = (v11 / 0x32 + 7) >> 3;
    *a5++ = (v7 & 0x30) == 32;
    --v6;
  }

  while (v6);
  return result;
}

void **FLAC__stream_decoder_new()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v0)
  {
    return v0;
  }

  result = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (!result)
  {
LABEL_44:
    free(v0);
    return 0;
  }

  if (result < result + 4)
  {
    *v0 = result;
    result = malloc_type_calloc(1uLL, 0x1EB0uLL, 0x10F20408AD37E24uLL);
    if (!result)
    {
      v0[1] = 0;
LABEL_43:
      free(*v0);
      goto LABEL_44;
    }

    if (result < result + 982)
    {
      v0[1] = result;
      result = malloc_type_calloc(1uLL, 0x38uLL, 0x1090040DDDFCD0CuLL);
      if (result < result + 7)
      {
        v2 = v0[1];
        v2[14] = result;
        if (result)
        {
          v2[239] = 16;
          result = malloc_type_malloc(0x40uLL, 0x7F0ADAB0uLL);
          v3 = (result + 8);
          v2[235] = result;
          if (!result)
          {
            v3 = 0;
          }

          v2[236] = v3;
          v2[237] = result;
          if (result)
          {
            v4 = 0;
            while (1)
            {
              v5 = v0[1];
              v6 = (v5 + 312);
              v7 = &v5[v4];
              v8 = &v5[v4 + 120];
              v9 = (v7 + 144);
              if (v9 > v6 || v8 > v9)
              {
                goto LABEL_46;
              }

              *v8 = 0;
              *(v8 + 1) = 0;
              *(v8 + 2) = 0;
              v11 = v0[1];
              v12 = &v11[v4];
              v13 = &v11[v4 + 4752];
              v14 = &v11[v4 + 4776];
              v15 = v14 > (v11 + 4944) || v13 > v14;
              v16 = (v11 + 504);
              v17 = v12 + 312;
              v18 = (v12 + 336);
              v19 = v15 || v18 > v16;
              if (v19 || v17 > v18)
              {
                goto LABEL_46;
              }

              *v17 = 0;
              v17[1] = 0;
              v17[2] = 0;
              *(v13 + 1) = 0;
              *(v13 + 2) = 0;
              v4 += 24;
              *v13 = 0;
              if (v4 == 192)
              {
                v21 = v0[1];
                v21[119] = 0;
                *(v21 + 245) = 0;
                for (i = 504; i != 952; i += 56)
                {
                  v23 = v0[1];
                  v24 = &v23[i];
                  if (&v23[i])
                  {
                    v25 = (v23 + 952);
                    v26 = &v23[i + 56];
                    if (v26 > v25 || v24 > v26)
                    {
                      goto LABEL_46;
                    }

                    *(v24 + 48) = 0;
                    *(v24 + 16) = 0uLL;
                    *(v24 + 32) = 0uLL;
                    *v24 = 0uLL;
                  }

                  else
                  {
                    MEMORY[0] = 0uLL;
                    MEMORY[0x30] = 0;
                    MEMORY[0x20] = 0uLL;
                    MEMORY[0x10] = 0uLL;
                  }
                }

                v28 = v0[1];
                *(v28 + 13) = 0;
                if (v0 <= v0 + 2)
                {
                  *v28 = 0;
                  *(v28 + 12) = 0;
                  *(v28 + 8) = 0u;
                  *(v28 + 24) = 0u;
                  *(v28 + 40) = 0u;
                  *(v28 + 56) = 0u;
                  *(v28 + 1368) = 0u;
                  *(v28 + 1384) = 0u;
                  *(v28 + 1400) = 0u;
                  *(v28 + 1416) = 0u;
                  *(v28 + 1432) = 0u;
                  *(v28 + 1448) = 0u;
                  *(v28 + 1464) = 0u;
                  *(v28 + 1480) = 0u;
                  *(v28 + 1496) = 0u;
                  *(v28 + 1512) = 0u;
                  *(v28 + 1528) = 0u;
                  *(v28 + 1544) = 0u;
                  *(v28 + 1560) = 0u;
                  *(v28 + 1576) = 0u;
                  *(v28 + 1592) = 0u;
                  *(v28 + 1608) = 0u;
                  *(v28 + 1624) = 0u;
                  *(v28 + 1640) = 0u;
                  *(v28 + 1656) = 0u;
                  *(v28 + 1672) = 0u;
                  *(v28 + 1688) = 0u;
                  *(v28 + 1704) = 0u;
                  *(v28 + 1720) = 0u;
                  *(v28 + 1736) = 0u;
                  *(v28 + 1752) = 0u;
                  *(v28 + 1768) = 0u;
                  *(v28 + 1784) = 0u;
                  *(v28 + 1800) = 0u;
                  *(v28 + 1816) = 0u;
                  *(v28 + 1832) = 0u;
                  *(v28 + 1848) = 0u;
                  *(v28 + 1864) = 0u;
                  if (v28 + 1368 <= v28 + 1880)
                  {
                    v30 = *v0;
                    v29 = v0[1];
                    v29[342] = 1;
                    *(v29 + 238) = 0;
                    v30[7] = 0;
                    *v30 = 9;
                    return v0;
                  }
                }

                goto LABEL_46;
              }
            }
          }

          DeleteBitBuffer(*(v0[1] + 14));
          v31 = v0[1];
        }

        else
        {
          v31 = v2;
        }

        free(v31);
        goto LABEL_43;
      }
    }
  }

LABEL_46:
  __break(0x5519u);
  return result;
}

void FLAC__stream_decoder_delete(void **a1)
{
  FLAC__stream_decoder_finish(a1);
  v2 = a1[1];
  v3 = *(v2 + 235);
  if (v3)
  {
    free(v3);
    v2 = a1[1];
  }

  DeleteBitBuffer(*(v2 + 14));
  for (i = 504; i != 952; i += 56)
  {
    v5 = a1[1];
    v6 = &v5[i];
    if (&v5[i])
    {
      v7 = (v5 + 952);
      v8 = &v5[i + 56];
      if (v8 > v7 || v6 > v8)
      {
        __break(0x5519u);
        return;
      }
    }

    FLAC__format_entropy_coding_method_partitioned_rice_contents_clear(v6);
  }

  free(a1[1]);
  free(*a1);

  free(a1);
}

void FLAC__stream_decoder_finish(uint64_t a1)
{
  if (**a1 != 9)
  {
    v2 = *(a1 + 8);
    if (v2 + 4960 <= (v2 + 5080))
    {
      FLAC__MD5Final((v2 + 5080), v2 + 4960);
      free(*(*(a1 + 8) + 1200));
      v3 = *(a1 + 8);
      *(v3 + 1216) = 0;
      *(v3 + 1200) = 0u;
      v4 = *(a1 + 8);
      *(v4 + 980) = 0;
      v5 = *(v4 + 112);
      if (*v5)
      {
        free(*v5);
      }

      v6 = 0;
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 24) = 0;
      *(v5 + 16) = 0;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      while (1)
      {
        v7 = *(a1 + 8);
        v8 = (v7 + v6 + 120);
        v9 = v7 + v6 + 144;
        if (v9 > v7 + 312 || v8 > v9)
        {
          break;
        }

        v11 = *v8;
        if (v11)
        {
          free((v11 - 16));
          v12 = *(a1 + 8);
          v13 = v12 + 312;
          v14 = v12 + v6;
          v15 = (v12 + v6 + 120);
          v16 = v14 + 144;
          if (v16 > v13 || v15 > v16)
          {
            break;
          }

          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
          v7 = *(a1 + 8);
        }

        v18 = v7 + 4944;
        v19 = v7 + v6;
        if (v19 + 4776 > v18 || v19 + 4752 > (v19 + 4776))
        {
          break;
        }

        v21 = *(v19 + 4752);
        if (v21)
        {
          free(v21);
          v22 = *(a1 + 8);
          v23 = v22 + v6 + 4776;
          if (v23 > v22 + 4944)
          {
            break;
          }

          v24 = (v22 + v6 + 4752);
          if (v24 > v23)
          {
            break;
          }

          v25 = v22 + 504;
          v26 = v22 + v6;
          v27 = v26 + 336;
          if (v26 + 336 > v25)
          {
            break;
          }

          v28 = (v26 + 312);
          if (v28 > v27)
          {
            break;
          }

          *v28 = 0;
          v28[1] = 0;
          v28[2] = 0;
          v24[1] = 0;
          v24[2] = 0;
          *v24 = 0;
        }

        v6 += 24;
        if (v6 == 192)
        {
          v29 = *(a1 + 8);
          *(v29 + 952) = 0;
          v30 = *(v29 + 104);
          if (v30)
          {
            if (v30 != *MEMORY[0x1E69E9850])
            {
              fclose(v30);
              v29 = *(a1 + 8);
            }

            *(v29 + 104) = 0;
          }

          *(v29 + 4952) = 0;
          *v29 = 0;
          *(v29 + 96) = 0;
          *(v29 + 8) = 0u;
          *(v29 + 24) = 0u;
          *(v29 + 40) = 0u;
          *(v29 + 56) = 0u;
          *(v29 + 1368) = 0u;
          *(v29 + 1384) = 0u;
          *(v29 + 1400) = 0u;
          *(v29 + 1416) = 0u;
          *(v29 + 1432) = 0u;
          *(v29 + 1448) = 0u;
          *(v29 + 1464) = 0u;
          *(v29 + 1480) = 0u;
          *(v29 + 1496) = 0u;
          *(v29 + 1512) = 0u;
          *(v29 + 1528) = 0u;
          *(v29 + 1544) = 0u;
          *(v29 + 1560) = 0u;
          *(v29 + 1576) = 0u;
          *(v29 + 1592) = 0u;
          *(v29 + 1608) = 0u;
          *(v29 + 1624) = 0u;
          *(v29 + 1640) = 0u;
          *(v29 + 1656) = 0u;
          *(v29 + 1672) = 0u;
          *(v29 + 1688) = 0u;
          *(v29 + 1704) = 0u;
          *(v29 + 1720) = 0u;
          *(v29 + 1736) = 0u;
          *(v29 + 1752) = 0u;
          *(v29 + 1768) = 0u;
          *(v29 + 1784) = 0u;
          *(v29 + 1800) = 0u;
          *(v29 + 1816) = 0u;
          *(v29 + 1832) = 0u;
          *(v29 + 1848) = 0u;
          *(v29 + 1864) = 0u;
          v32 = *a1;
          v31 = *(a1 + 8);
          *(v31 + 1368) = 1;
          *(v31 + 1904) = 0;
          v32[7] = 0;
          *v32 = 9;
          return;
        }
      }
    }

    __break(0x5519u);
  }
}

double FLAC__format_entropy_coding_method_partitioned_rice_contents_clear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void FLAC__MD5Final(_OWORD *a1, unint64_t a2)
{
  v2 = *(a2 + 80) & 0x3F;
  v3 = (a2 + 64);
  v4 = (a2 + v2);
  if (a2 + v2 >= a2 + 64 || v4 < a2)
  {
    goto LABEL_24;
  }

  v8 = v4 + 1;
  *v4 = 0x80;
  if (v2 <= 0x37)
  {
    v10 = (55 - v2);
  }

  else
  {
    v9 = v2 ^ 0x3F;
    if (v3 - v8 < v9 || (bzero(v4 + 1, v9), v8 > &v8[v9]))
    {
LABEL_24:
      __break(0x5519u);
      return;
    }

    FLAC__MD5Transform(v3, a2);
    v10 = 56;
    v8 = a2;
  }

  if (v8 > v3 || v8 < a2 || v3 - v8 < v10)
  {
    goto LABEL_24;
  }

  bzero(v8, v10);
  if (v8 > &v8[v10])
  {
    goto LABEL_24;
  }

  *(a2 + 56) = 8 * *(a2 + 80);
  FLAC__MD5Transform(v3, a2);
  *a1 = *v3;
  if (a1 + 1 < a1)
  {
    goto LABEL_24;
  }

  v13 = *(a2 + 88);
  if (v13)
  {
    free(v13);
  }

  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a2 + 120 < a2)
  {
    goto LABEL_24;
  }
}

_DWORD *FLAC__MD5Transform(_DWORD *result, int *a2)
{
  v2 = result[1];
  v4 = result[2];
  v3 = result[3];
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = a2[9];
  v15 = a2[10];
  v16 = a2[11];
  v17 = a2[12];
  v18 = a2[13];
  HIDWORD(v19) = *result + *a2 - 680876936 + (v4 & v2 | v3 & ~v2);
  LODWORD(v19) = HIDWORD(v19);
  v20 = (v19 >> 25) + v2;
  HIDWORD(v19) = v3 + v5 - 389564586 + (v2 & v20 | v4 & ~v20);
  LODWORD(v19) = HIDWORD(v19);
  v21 = (v19 >> 20) + v20;
  HIDWORD(v19) = v4 + v8 + 606105819 + (v20 & v21 | v2 & ~v21);
  LODWORD(v19) = HIDWORD(v19);
  v22 = (v19 >> 15) + v21;
  HIDWORD(v19) = v2 + v7 - 1044525330 + (v21 & v22 | v20 & ~v22);
  LODWORD(v19) = HIDWORD(v19);
  v23 = (v19 >> 10) + v22;
  HIDWORD(v19) = v20 + v10 - 176418897 + (v22 & v23 | v21 & ~v23);
  LODWORD(v19) = HIDWORD(v19);
  v24 = (v19 >> 25) + v23;
  HIDWORD(v19) = v21 + v9 + 1200080426 + (v23 & v24 | v22 & ~v24);
  LODWORD(v19) = HIDWORD(v19);
  v25 = (v19 >> 20) + v24;
  HIDWORD(v19) = v22 + v11 - 1473231341 + (v24 & v25 | v23 & ~v25);
  LODWORD(v19) = HIDWORD(v19);
  v26 = (v19 >> 15) + v25;
  HIDWORD(v19) = v23 + v12 - 45705983 + (v25 & v26 | v24 & ~v26);
  LODWORD(v19) = HIDWORD(v19);
  v27 = (v19 >> 10) + v26;
  HIDWORD(v19) = v24 + v13 + 1770035416 + (v26 & v27 | v25 & ~v27);
  LODWORD(v19) = HIDWORD(v19);
  v28 = (v19 >> 25) + v27;
  HIDWORD(v19) = v25 + v14 - 1958414417 + (v27 & v28 | v26 & ~v28);
  LODWORD(v19) = HIDWORD(v19);
  v29 = (v19 >> 20) + v28;
  HIDWORD(v19) = v26 + v15 - 42063 + (v28 & v29 | v27 & ~v29);
  LODWORD(v19) = HIDWORD(v19);
  v30 = (v19 >> 15) + v29;
  HIDWORD(v19) = v27 + v16 - 1990404162 + (v29 & v30 | v28 & ~v30);
  LODWORD(v19) = HIDWORD(v19);
  v31 = (v19 >> 10) + v30;
  HIDWORD(v19) = v28 + v17 + 1804603682 + (v30 & v31 | v29 & ~v31);
  LODWORD(v19) = HIDWORD(v19);
  v32 = (v19 >> 25) + v31;
  HIDWORD(v19) = v29 + v18 - 40341101 + (v31 & v32 | v30 & ~v32);
  LODWORD(v19) = HIDWORD(v19);
  v33 = (v19 >> 20) + v32;
  v35 = a2[14];
  v34 = a2[15];
  HIDWORD(v19) = v30 + v35 - 1502002290 + (v32 & v33 | v31 & ~v33);
  LODWORD(v19) = HIDWORD(v19);
  v36 = (v19 >> 15) + v33;
  HIDWORD(v19) = v31 + v34 + 1236535329 + (v33 & v36 | v32 & ~v36);
  LODWORD(v19) = HIDWORD(v19);
  v37 = (v19 >> 10) + v36;
  HIDWORD(v19) = v5 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
  LODWORD(v19) = HIDWORD(v19);
  v38 = (v19 >> 27) + v37;
  HIDWORD(v19) = v11 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
  LODWORD(v19) = HIDWORD(v19);
  v39 = (v19 >> 23) + v38;
  HIDWORD(v19) = v16 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
  LODWORD(v19) = HIDWORD(v19);
  v40 = (v19 >> 18) + v39;
  HIDWORD(v19) = v6 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
  LODWORD(v19) = HIDWORD(v19);
  v41 = (v19 >> 12) + v40;
  HIDWORD(v19) = v9 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
  LODWORD(v19) = HIDWORD(v19);
  v42 = (v19 >> 27) + v41;
  HIDWORD(v19) = v15 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
  LODWORD(v19) = HIDWORD(v19);
  v43 = (v19 >> 23) + v42;
  HIDWORD(v19) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
  LODWORD(v19) = HIDWORD(v19);
  v44 = (v19 >> 18) + v43;
  HIDWORD(v19) = v10 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
  LODWORD(v19) = HIDWORD(v19);
  v45 = (v19 >> 12) + v44;
  HIDWORD(v19) = v14 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
  LODWORD(v19) = HIDWORD(v19);
  v46 = (v19 >> 27) + v45;
  HIDWORD(v19) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
  LODWORD(v19) = HIDWORD(v19);
  v47 = (v19 >> 23) + v46;
  HIDWORD(v19) = v7 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
  LODWORD(v19) = HIDWORD(v19);
  v48 = (v19 >> 18) + v47;
  HIDWORD(v19) = v13 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
  LODWORD(v19) = HIDWORD(v19);
  v49 = (v19 >> 12) + v48;
  HIDWORD(v19) = v18 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
  LODWORD(v19) = HIDWORD(v19);
  v50 = (v19 >> 27) + v49;
  HIDWORD(v19) = v8 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
  LODWORD(v19) = HIDWORD(v19);
  v51 = (v19 >> 23) + v50;
  HIDWORD(v19) = v12 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
  LODWORD(v19) = HIDWORD(v19);
  v52 = (v19 >> 18) + v51;
  HIDWORD(v19) = v17 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
  LODWORD(v19) = HIDWORD(v19);
  v53 = (v19 >> 12) + v52;
  HIDWORD(v19) = v9 + v50 - 378558 + (v52 ^ v51 ^ v53);
  LODWORD(v19) = HIDWORD(v19);
  v54 = (v19 >> 28) + v53;
  HIDWORD(v19) = v13 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
  LODWORD(v19) = HIDWORD(v19);
  v55 = (v19 >> 21) + v54;
  HIDWORD(v19) = v16 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
  LODWORD(v19) = HIDWORD(v19);
  v56 = (v19 >> 16) + v55;
  HIDWORD(v19) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
  LODWORD(v19) = HIDWORD(v19);
  v57 = (v19 >> 9) + v56;
  HIDWORD(v19) = v5 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
  LODWORD(v19) = HIDWORD(v19);
  v58 = (v19 >> 28) + v57;
  HIDWORD(v19) = v10 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
  LODWORD(v19) = HIDWORD(v19);
  v59 = (v19 >> 21) + v58;
  HIDWORD(v19) = v12 + v56 - 155497632 + (v58 ^ v57 ^ v59);
  LODWORD(v19) = HIDWORD(v19);
  v60 = (v19 >> 16) + v59;
  HIDWORD(v19) = v15 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
  LODWORD(v19) = HIDWORD(v19);
  v61 = (v19 >> 9) + v60;
  HIDWORD(v19) = v18 + v58 + 681279174 + (v60 ^ v59 ^ v61);
  LODWORD(v19) = HIDWORD(v19);
  v62 = (v19 >> 28) + v61;
  HIDWORD(v19) = v6 + v59 - 358537222 + (v61 ^ v60 ^ v62);
  LODWORD(v19) = HIDWORD(v19);
  v63 = (v19 >> 21) + v62;
  HIDWORD(v19) = v7 + v60 - 722521979 + (v62 ^ v61 ^ v63);
  LODWORD(v19) = HIDWORD(v19);
  v64 = (v19 >> 16) + v63;
  HIDWORD(v19) = v11 + v61 + 76029189 + (v63 ^ v62 ^ v64);
  LODWORD(v19) = HIDWORD(v19);
  v65 = (v19 >> 9) + v64;
  HIDWORD(v19) = v14 + v62 - 640364487 + (v64 ^ v63 ^ v65);
  LODWORD(v19) = HIDWORD(v19);
  v66 = (v19 >> 28) + v65;
  HIDWORD(v19) = v17 + v63 - 421815835 + (v65 ^ v64 ^ v66);
  LODWORD(v19) = HIDWORD(v19);
  v67 = (v19 >> 21) + v66;
  HIDWORD(v19) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
  LODWORD(v19) = HIDWORD(v19);
  v68 = (v19 >> 16) + v67;
  HIDWORD(v19) = v8 + v65 - 995338651 + (v67 ^ v66 ^ v68);
  LODWORD(v19) = HIDWORD(v19);
  v69 = (v19 >> 9) + v68;
  HIDWORD(v19) = v6 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
  LODWORD(v19) = HIDWORD(v19);
  v70 = (v19 >> 26) + v69;
  HIDWORD(v19) = v12 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
  LODWORD(v19) = HIDWORD(v19);
  v71 = (v19 >> 22) + v70;
  HIDWORD(v19) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
  LODWORD(v19) = HIDWORD(v19);
  v72 = (v19 >> 17) + v71;
  HIDWORD(v19) = v9 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
  LODWORD(v19) = HIDWORD(v19);
  v73 = (v19 >> 11) + v72;
  HIDWORD(v19) = v17 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
  LODWORD(v19) = HIDWORD(v19);
  v74 = (v19 >> 26) + v73;
  HIDWORD(v19) = v7 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
  LODWORD(v19) = HIDWORD(v19);
  v75 = (v19 >> 22) + v74;
  HIDWORD(v19) = v15 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
  LODWORD(v19) = HIDWORD(v19);
  v76 = (v19 >> 17) + v75;
  HIDWORD(v19) = v5 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
  LODWORD(v19) = HIDWORD(v19);
  v77 = (v19 >> 11) + v76;
  HIDWORD(v19) = v13 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
  LODWORD(v19) = HIDWORD(v19);
  v78 = (v19 >> 26) + v77;
  HIDWORD(v19) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
  LODWORD(v19) = HIDWORD(v19);
  v79 = (v19 >> 22) + v78;
  HIDWORD(v19) = v11 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
  LODWORD(v19) = HIDWORD(v19);
  v80 = (v19 >> 17) + v79;
  HIDWORD(v19) = v18 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
  LODWORD(v19) = HIDWORD(v19);
  v81 = (v19 >> 11) + v80;
  HIDWORD(v19) = v10 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
  LODWORD(v19) = HIDWORD(v19);
  v82 = (v19 >> 26) + v81;
  HIDWORD(v19) = v16 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
  LODWORD(v19) = HIDWORD(v19);
  v83 = (v19 >> 22) + v82;
  HIDWORD(v19) = v8 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
  LODWORD(v19) = HIDWORD(v19);
  v84 = (v19 >> 17) + v83;
  HIDWORD(v19) = v14 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
  LODWORD(v19) = HIDWORD(v19);
  *result += v82;
  result[1] = v84 + v2 + (v19 >> 11);
  result[2] = v84 + v4;
  result[3] = v83 + v3;
  return result;
}

uint64_t FLAC__stream_decoder_init_stream(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (**a1 != 9)
  {
    return 5;
  }

  result = 2;
  if (a2 && a3 && a5)
  {
    v11 = a1[1];
    v12 = (v11 + 4660);
    if (v11 + 4660 > (v11 + 4748))
    {
      goto LABEL_16;
    }

    *(v11 + 4740) = 0;
    *(v11 + 4708) = 0u;
    *(v11 + 4724) = 0u;
    *(v11 + 4676) = 0u;
    *(v11 + 4692) = 0u;
    *v12 = 0u;
    *v12 = 0x200000000;
    v15 = a1[1];
    v15[9] = FLAC__lpc_restore_signal;
    v15[10] = FLAC__lpc_restore_signal_wide;
    v15[11] = FLAC__lpc_restore_signal;
    v16 = v15[14];
    *(v16 + 20) = 0;
    *(v16 + 12) = 0;
    result = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
    v17 = result + 0x2000;
    if (!result)
    {
      v17 = 0;
    }

    if (v17 - result <= 8188)
    {
LABEL_16:
      __break(0x5519u);
    }

    else
    {
      *v16 = result;
      *(v16 + 8) = 2048;
      if (result)
      {
        *(v16 + 40) = read_callback_;
        *(v16 + 48) = a1;
        v18 = a1[1];
        *(v18 + 8) = a2;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
        *(v18 + 48) = a3;
        *(v18 + 56) = a4;
        *(v18 + 64) = a5;
        *(v18 + 96) = a6;
        *(v18 + 4656) = 0;
        *(v18 + 960) = 0u;
        *(v18 + 976) = 0;
        *(v18 + 4944) = *(*a1 + 28);
        *(v18 + 4952) = 0;
        *(v18 + 4948) = 1;
        FLAC__stream_decoder_reset(a1);
        if (v19)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        **a1 = 8;
        return 3;
      }
    }
  }

  return result;
}

void FLAC__stream_decoder_reset(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 4948) || **a1 != 9)
  {
    *(v2 + 968) = 0;
    *(v2 + 4944) = 0;
    v3 = *(v2 + 112);
    *(v3 + 20) = 0;
    *(v3 + 12) = 0;
    v5 = *a1;
    v4 = *(a1 + 8);
    **a1 = 2;
    if (*(v4 + 4948))
    {
      *(v4 + 4948) = 0;
    }

    else
    {
      if (*(v4 + 104) == *MEMORY[0x1E69E9850])
      {
        return;
      }

      v10 = *(v4 + 16);
      if (v10)
      {
        if (v10(a1, 0, *(v4 + 96)) == 1)
        {
          return;
        }

        v5 = *a1;
        v4 = *(a1 + 8);
      }
    }

    *v5 = 0;
    *(v4 + 976) = 0;
    free(*(v4 + 1200));
    v6 = *(a1 + 8);
    *(v6 + 1216) = 0;
    *(v6 + 1200) = 0u;
    v8 = *a1;
    v7 = *(a1 + 8);
    *(v7 + 980) = 0;
    *(v7 + 4944) = v8[7];
    *(v7 + 960) = 0;
    if (v7 + 4960 > (v7 + 5080))
    {
      __break(0x5519u);
    }

    else
    {
      *(v7 + 5024) = xmmword_19B0B27F0;
      *(v7 + 5040) = 0uLL;
      *(v7 + 5056) = 0uLL;
      *(v7 + 5072) = 0;
      v9 = *(a1 + 8);
      *(v9 + 7832) = 0;
      *(v9 + 7848) = 0;
    }
  }
}

uint64_t read_callback_(uint64_t result, void *a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 + 16;
  v7 = *(a3 + 8);
  v8 = *(v7 + 40);
  if (v8)
  {
    if (v6 < a3)
    {
LABEL_19:
      __break(0x5519u);
      return result;
    }

    result = v8(a3, *(v7 + 96));
    if (result)
    {
      *a2 = 0;
LABEL_5:
      v9 = 4;
LABEL_12:
      result = 0;
      **a3 = v9;
      return result;
    }
  }

  if (!*a2)
  {
    goto LABEL_11;
  }

  v10 = *(a3 + 8);
  if (*(v10 + 4952))
  {
    if (*(v10 + 7848) > 0x14u)
    {
      goto LABEL_11;
    }
  }

  if (v6 < a3)
  {
    goto LABEL_19;
  }

  v11 = *(v10 + 8);
  v12 = *(v10 + 96);
  v16 = *v5;
  v17 = *(v5 + 16);
  v13 = v11(a3, &v16, a2, v12);
  if (v13 == 2)
  {
LABEL_11:
    v9 = 7;
    goto LABEL_12;
  }

  if (!*a2)
  {
    if (v13 == 1)
    {
      goto LABEL_5;
    }

    v14 = *(a3 + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      if (v15(a3, *(v14 + 96)))
      {
        goto LABEL_5;
      }
    }
  }

  return 1;
}

unint64_t FLAC__lpc_restore_signal_wide(unint64_t result, int a2, int *a3, unsigned int a4, char a5, uint64_t *a6)
{
  v525 = result;
  v8 = a4 - 13;
  if (a4 >= 0xD)
  {
    if (a2 >= 1)
    {
      v41 = 0;
      v42 = &a3[a4];
      v43 = (a3 + 30);
      v46 = a3 + 30 <= a3 + 31 && (a3 + 31) <= v42 && v43 >= a3;
      v501 = v46;
      v47 = (a3 + 29);
      v50 = (a3 + 29) <= v43 && v43 <= v42 && v47 >= a3;
      v502 = v50;
      v51 = (a3 + 28);
      v54 = (a3 + 28) <= v47 && v47 <= v42 && v51 >= a3;
      v503 = v54;
      v55 = (a3 + 27);
      v58 = (a3 + 27) <= v51 && v51 <= v42 && v55 >= a3;
      v504 = v58;
      v59 = (a3 + 26);
      v62 = (a3 + 26) <= v55 && v55 <= v42 && v59 >= a3;
      v505 = v62;
      v63 = (a3 + 25);
      v66 = (a3 + 25) <= v59 && v59 <= v42 && v63 >= a3;
      v506 = v66;
      v67 = (a3 + 24);
      v70 = (a3 + 24) <= v63 && v63 <= v42 && v67 >= a3;
      v507 = v70;
      v71 = (a3 + 23);
      v74 = (a3 + 23) <= v67 && v67 <= v42 && v71 >= a3;
      v508 = v74;
      v75 = (a3 + 22);
      v78 = (a3 + 22) <= v71 && v71 <= v42 && v75 >= a3;
      v509 = v78;
      v79 = (a3 + 21);
      v82 = (a3 + 21) <= v75 && v75 <= v42 && v79 >= a3;
      v510 = v82;
      v83 = (a3 + 20);
      v86 = (a3 + 20) <= v79 && v79 <= v42 && v83 >= a3;
      v511 = v86;
      v87 = (a3 + 19);
      v90 = (a3 + 19) <= v83 && v83 <= v42 && v87 >= a3;
      v512 = v90;
      v91 = (a3 + 18);
      v94 = (a3 + 18) <= v87 && v87 <= v42 && v91 >= a3;
      v513 = v94;
      v95 = (a3 + 17);
      v98 = (a3 + 17) <= v91 && v91 <= v42 && v95 >= a3;
      v514 = v98;
      v99 = (a3 + 16);
      v102 = (a3 + 16) <= v95 && v95 <= v42 && v99 >= a3;
      v516 = v102;
      v103 = a3 + 15;
      v106 = (a3 + 15) <= v99 && v99 <= v42 && v103 >= a3;
      v518 = v106;
      v107 = a3 + 14;
      v110 = a3 + 14 <= v103 && v103 <= v42 && v107 >= a3;
      v520 = v110;
      v111 = a3 + 13 > v107 || v107 > v42;
      v113 = 4 * a2;
      v114 = !v111;
      v523 = v114;
      while (2)
      {
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v119 = 0;
        result = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        switch(v8)
        {
          case 0u:
            v132 = 0;
            v133 = *a6;
            v134 = a6[1];
            v135 = a6[2];
            goto LABEL_410;
          case 1u:
            goto LABEL_400;
          case 2u:
            goto LABEL_390;
          case 3u:
            goto LABEL_380;
          case 4u:
            goto LABEL_370;
          case 5u:
            goto LABEL_360;
          case 6u:
            goto LABEL_350;
          case 7u:
            goto LABEL_340;
          case 8u:
            goto LABEL_330;
          case 9u:
            goto LABEL_320;
          case 0xAu:
            goto LABEL_310;
          case 0xBu:
            goto LABEL_300;
          case 0xCu:
            goto LABEL_290;
          case 0xDu:
            goto LABEL_280;
          case 0xEu:
            goto LABEL_270;
          case 0xFu:
            goto LABEL_260;
          case 0x10u:
            goto LABEL_250;
          case 0x11u:
            goto LABEL_240;
          case 0x12u:
            goto LABEL_230;
          case 0x13u:
            v137 = *a6 + v41;
            v138 = (v137 - 128);
            v139 = v137 - 124;
            if (v139 > a6[1] || v138 > v139 || v138 < a6[2])
            {
              goto LABEL_839;
            }

            v115 = *v138 * a3[31];
LABEL_230:
            if (!v501)
            {
              goto LABEL_839;
            }

            v142 = *a6 + v41;
            v143 = (v142 - 124);
            v144 = v142 - 120;
            v145 = v144 > a6[1] || v143 > v144;
            if (v145 || v143 < a6[2])
            {
              goto LABEL_839;
            }

            v116 = v115 + *v143 * a3[30];
LABEL_240:
            if (!v502)
            {
              goto LABEL_839;
            }

            v147 = *a6 + v41;
            v148 = (v147 - 120);
            v149 = v147 - 116;
            v150 = v149 > a6[1] || v148 > v149;
            if (v150 || v148 < a6[2])
            {
              goto LABEL_839;
            }

            v117 = v116 + *v148 * a3[29];
LABEL_250:
            if (!v503)
            {
              goto LABEL_839;
            }

            v152 = *a6 + v41;
            v153 = (v152 - 116);
            v154 = v152 - 112;
            v155 = v154 > a6[1] || v153 > v154;
            if (v155 || v153 < a6[2])
            {
              goto LABEL_839;
            }

            v118 = v117 + *v153 * a3[28];
LABEL_260:
            if (!v504)
            {
              goto LABEL_839;
            }

            v157 = *a6 + v41;
            v158 = (v157 - 112);
            v159 = v157 - 108;
            v160 = v159 > a6[1] || v158 > v159;
            if (v160 || v158 < a6[2])
            {
              goto LABEL_839;
            }

            v119 = v118 + *v158 * a3[27];
LABEL_270:
            if (!v505)
            {
              goto LABEL_839;
            }

            v162 = *a6 + v41;
            v163 = (v162 - 108);
            v164 = v162 - 104;
            v165 = v164 > a6[1] || v163 > v164;
            if (v165 || v163 < a6[2])
            {
              goto LABEL_839;
            }

            result = v119 + *v163 * a3[26];
LABEL_280:
            if (!v506)
            {
              goto LABEL_839;
            }

            v167 = *a6 + v41;
            v168 = (v167 - 104);
            v169 = v167 - 100;
            v170 = v169 > a6[1] || v168 > v169;
            if (v170 || v168 < a6[2])
            {
              goto LABEL_839;
            }

            v120 = result + *v168 * a3[25];
LABEL_290:
            if (!v507)
            {
              goto LABEL_839;
            }

            v172 = *a6 + v41;
            v173 = (v172 - 100);
            v174 = v172 - 96;
            v175 = v174 > a6[1] || v173 > v174;
            if (v175 || v173 < a6[2])
            {
              goto LABEL_839;
            }

            v121 = v120 + *v173 * a3[24];
LABEL_300:
            if (!v508)
            {
              goto LABEL_839;
            }

            v177 = *a6 + v41;
            v178 = (v177 - 96);
            v179 = v177 - 92;
            v180 = v179 > a6[1] || v178 > v179;
            if (v180 || v178 < a6[2])
            {
              goto LABEL_839;
            }

            v122 = v121 + *v178 * a3[23];
LABEL_310:
            if (!v509)
            {
              goto LABEL_839;
            }

            v182 = *a6 + v41;
            v183 = (v182 - 92);
            v184 = v182 - 88;
            v185 = v184 > a6[1] || v183 > v184;
            if (v185 || v183 < a6[2])
            {
              goto LABEL_839;
            }

            v123 = v122 + *v183 * a3[22];
LABEL_320:
            if (!v510)
            {
              goto LABEL_839;
            }

            v187 = *a6 + v41;
            v188 = (v187 - 88);
            v189 = v187 - 84;
            v190 = v189 > a6[1] || v188 > v189;
            if (v190 || v188 < a6[2])
            {
              goto LABEL_839;
            }

            v124 = v123 + *v188 * a3[21];
LABEL_330:
            if (!v511)
            {
              goto LABEL_839;
            }

            v192 = *a6 + v41;
            v193 = (v192 - 84);
            v194 = v192 - 80;
            v195 = v194 > a6[1] || v193 > v194;
            if (v195 || v193 < a6[2])
            {
              goto LABEL_839;
            }

            v125 = v124 + *v193 * a3[20];
LABEL_340:
            if (!v512)
            {
              goto LABEL_839;
            }

            v197 = *a6 + v41;
            v198 = (v197 - 80);
            v199 = v197 - 76;
            v200 = v199 > a6[1] || v198 > v199;
            if (v200 || v198 < a6[2])
            {
              goto LABEL_839;
            }

            v126 = v125 + *v198 * a3[19];
LABEL_350:
            if (!v513)
            {
              goto LABEL_839;
            }

            v202 = *a6 + v41;
            v203 = (v202 - 76);
            v204 = v202 - 72;
            v205 = v204 > a6[1] || v203 > v204;
            if (v205 || v203 < a6[2])
            {
              goto LABEL_839;
            }

            v127 = v126 + *v203 * a3[18];
LABEL_360:
            if (!v514)
            {
              goto LABEL_839;
            }

            v207 = *a6 + v41;
            v208 = (v207 - 72);
            v209 = v207 - 68;
            v210 = v209 > a6[1] || v208 > v209;
            if (v210 || v208 < a6[2])
            {
              goto LABEL_839;
            }

            v128 = v127 + *v208 * a3[17];
LABEL_370:
            if (!v516)
            {
              goto LABEL_839;
            }

            v212 = *a6 + v41;
            v213 = (v212 - 68);
            v214 = v212 - 64;
            v215 = v214 > a6[1] || v213 > v214;
            if (v215 || v213 < a6[2])
            {
              goto LABEL_839;
            }

            v129 = v128 + *v213 * a3[16];
LABEL_380:
            if (!v518)
            {
              goto LABEL_839;
            }

            v217 = *a6 + v41;
            v218 = (v217 - 64);
            v219 = v217 - 60;
            v220 = v219 > a6[1] || v218 > v219;
            if (v220 || v218 < a6[2])
            {
              goto LABEL_839;
            }

            v130 = v129 + *v218 * *v103;
LABEL_390:
            if (!v520)
            {
              goto LABEL_839;
            }

            v222 = *a6 + v41;
            v223 = (v222 - 60);
            v224 = v222 - 56;
            v225 = v224 > a6[1] || v223 > v224;
            if (v225 || v223 < a6[2])
            {
              goto LABEL_839;
            }

            v131 = v130 + *v223 * *v107;
LABEL_400:
            if (!v523)
            {
              goto LABEL_839;
            }

            v133 = *a6;
            v134 = a6[1];
            v135 = a6[2];
            v227 = *a6 + v41;
            v228 = (v227 - 56);
            v229 = v227 - 52;
            v230 = v229 > v134 || v228 > v229;
            if (v230 || v228 < v135)
            {
              goto LABEL_839;
            }

            v132 = v131 + *v228 * a3[13];
LABEL_410:
            v232 = v133 + v41;
            v233 = (v133 + v41 - 52);
            v234 = (v133 + v41 - 48);
            v235 = v234 > v134 || v233 > v234;
            if (v235 || v233 < v135)
            {
              goto LABEL_839;
            }

            v237 = (v232 - 44);
            if (v232 - 44 > v134 || v234 > v237)
            {
              goto LABEL_839;
            }

            v239 = v133 + v41;
            v240 = (v133 + v41 - 40);
            if (v240 > v134 || v237 > v240)
            {
              goto LABEL_839;
            }

            v242 = (v239 - 36);
            if (v239 - 36 > v134)
            {
              goto LABEL_839;
            }

            if (v240 > v242)
            {
              goto LABEL_839;
            }

            result = v133 + v41 - 32;
            if (result > v134)
            {
              goto LABEL_839;
            }

            if (v242 > result)
            {
              goto LABEL_839;
            }

            v243 = (v133 + v41 - 28);
            if (v243 > v134)
            {
              goto LABEL_839;
            }

            if (result > v243)
            {
              goto LABEL_839;
            }

            v244 = (v133 + v41 - 24);
            if (v244 > v134)
            {
              goto LABEL_839;
            }

            if (v243 > v244)
            {
              goto LABEL_839;
            }

            v245 = (v133 + v41 - 20);
            if (v245 > v134)
            {
              goto LABEL_839;
            }

            if (v244 > v245)
            {
              goto LABEL_839;
            }

            v246 = (v133 + v41 - 16);
            if (v246 > v134)
            {
              goto LABEL_839;
            }

            if (v245 > v246)
            {
              goto LABEL_839;
            }

            v247 = (v133 + v41 - 12);
            if (v247 > v134)
            {
              goto LABEL_839;
            }

            if (v246 > v247)
            {
              goto LABEL_839;
            }

            v248 = (v133 + v41 - 8);
            if (v248 > v134)
            {
              goto LABEL_839;
            }

            if (v247 > v248)
            {
              goto LABEL_839;
            }

            v249 = (v133 + v41 - 4);
            if (v249 > v134 || v248 > v249 || v232 > v134 || v249 > v232)
            {
              goto LABEL_839;
            }

            v250 = v132 + *v233 * a3[12] + *v234 * a3[11] + *v237 * a3[10] + *v240 * a3[9] + *v242 * a3[8];
            v251 = *result;
            result = a3[6];
            v136 = v250 + v251 * a3[7] + *v243 * result + *v244 * a3[5] + *v245 * a3[4] + *v246 * a3[3] + *v247 * a3[2] + *v248 * a3[1] + *v249 * *a3;
LABEL_447:
            v252 = (v133 + v41);
            v253 = v133 + v41 + 4;
            if (v253 > v134 || v252 > v253 || v252 < v135)
            {
              goto LABEL_839;
            }

            *v252 = v525[v41 / 4] + (v136 >> a5);
            v41 += 4;
            if (v113 == v41)
            {
              return result;
            }

            continue;
          default:
            v136 = 0;
            v133 = *a6;
            v134 = a6[1];
            v135 = a6[2];
            goto LABEL_447;
        }
      }
    }
  }

  else if (a4 < 9)
  {
    if (a4 < 5)
    {
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          if (a2 >= 1)
          {
            v416 = a3 + 1;
            if (a3 + 1 <= a3 + 2 && v416 >= a3)
            {
              v417 = a6[2];
              v418 = -8;
              v419 = a2;
              while (1)
              {
                v420 = a6[1];
                v421 = (*a6 + v418);
                v422 = v421 + 1;
                v423 = (v421 + 1) > v420 || v421 > v422;
                if (v423 || v421 < v417)
                {
                  break;
                }

                v425 = v421 + 2;
                v426 = (v421 + 2) > v420 || v422 > v425;
                v427 = v421 + 3;
                v428 = v426 || v427 > v420;
                if (v428 || v425 > v427)
                {
                  break;
                }

                v430 = *v525++;
                *v425 = v430 + ((*v421 * *v416 + *v422 * *a3) >> a5);
                v418 += 4;
                if (!--v419)
                {
                  return result;
                }
              }
            }

            goto LABEL_839;
          }
        }

        else if (a2 >= 1)
        {
          if (a3 + 1 >= a3 && a3 + 1 <= &a3[a4])
          {
            v491 = 0;
            v492 = a6[2];
            while (1)
            {
              v493 = a6[1];
              v494 = (*a6 + v491);
              v495 = v494 - 1;
              v496 = v494 > v493 || v495 > v494;
              v497 = !v496 && v495 >= v492;
              v498 = v494 + 1;
              v499 = !v497 || v498 > v493;
              if (v499 || v494 > v498)
              {
                break;
              }

              *v494 = *(result + v491) + ((*(v494 - 1) * *a3) >> a5);
              v491 += 4;
              if (4 * a2 == v491)
              {
                return result;
              }
            }
          }

          goto LABEL_839;
        }
      }

      else if (a4 == 4)
      {
        if (a2 >= 1)
        {
          v313 = a3 + 4;
          v314 = a3 + 3;
          if (a3 + 3 <= a3 + 4 && v314 >= a3)
          {
            v315 = 0;
            v316 = a3 + 2;
            v317 = a3 + 1;
            v319 = a6[2];
            v320 = 4 * a2;
            while (1)
            {
              v322 = *a6;
              v321 = a6[1];
              v323 = (*a6 + v315);
              v324 = v323 - 4;
              v325 = v323 - 3;
              v326 = (v323 - 3) > v321 || v324 > v325;
              if (v326 || v324 < v319)
              {
                break;
              }

              result = (v323 - 2);
              v328 = (v323 - 2) > v321 || v325 > result;
              if (v328 || v316 > v313)
              {
                break;
              }

              v329 = (v322 + v315 - 4);
              if (v329 > v321 || result > v329)
              {
                break;
              }

              if (v317 > v313)
              {
                break;
              }

              if (v323 > v321)
              {
                break;
              }

              if (v329 > v323)
              {
                break;
              }

              v331 = v322 + v315 + 4;
              if (v331 > v321 || v323 > v331)
              {
                break;
              }

              v332 = *v324 * *v314 + *v325 * *v316 + *result * *v317;
              result = v525[v315 / 4];
              *v323 = result + ((v332 + *v329 * *a3) >> a5);
              v315 += 4;
              if (v320 == v315)
              {
                return result;
              }
            }
          }

          goto LABEL_839;
        }
      }

      else if (a2 >= 1)
      {
        v456 = a3 + 2;
        if (a3 + 2 <= a3 + 3 && v456 >= a3)
        {
          v457 = 0;
          v458 = a3 + 1;
          v459 = a6[2];
          v460 = 4 * a2;
          while (1)
          {
            v461 = a6[1];
            v462 = (*a6 + v457);
            result = (v462 - 3);
            v463 = v462 - 2;
            v464 = (v462 - 2) > v461 || result > v463;
            if (v464 || result < v459)
            {
              break;
            }

            v466 = v462 - 1;
            if ((v462 - 1) > v461 || v463 > v466)
            {
              break;
            }

            if (v458 > a3 + 3)
            {
              break;
            }

            if (v462 > v461)
            {
              break;
            }

            if (v466 > v462)
            {
              break;
            }

            v468 = *a6 + v457 + 4;
            if (v468 > v461 || v462 > v468)
            {
              break;
            }

            v469 = *result * *v456 + *v463 * *v458;
            result = v525[v457 / 4];
            *v462 = result + ((v469 + *v466 * *a3) >> a5);
            v457 += 4;
            if (v460 == v457)
            {
              return result;
            }
          }
        }

        goto LABEL_839;
      }
    }

    else if (a4 < 7)
    {
      if (a4 == 6)
      {
        if (a2 >= 1)
        {
          v365 = a3 + 6;
          v366 = a3 + 5;
          if (a3 + 5 <= a3 + 6 && v366 >= a3)
          {
            v367 = 0;
            v368 = a3 + 4;
            v369 = a3 + 3;
            v370 = a3 + 2;
            v371 = a3 + 1;
            v372 = a6[2];
            v373 = 4 * a2;
            while (1)
            {
              v376 = *a6;
              v375 = a6[1];
              result = *a6 + v367;
              v377 = (result - 24);
              v378 = (result - 20);
              v379 = result - 20 > v375 || v377 > v378;
              if (v379 || v377 < v372)
              {
                break;
              }

              v381 = (result - 16);
              v382 = result - 16 > v375 || v378 > v381;
              if (v382 || v368 > v365)
              {
                break;
              }

              v383 = (v376 + v367 - 12);
              if (v383 > v375 || v381 > v383)
              {
                break;
              }

              if (v369 > v365)
              {
                break;
              }

              v385 = (v376 + v367 - 8);
              if (v385 > v375)
              {
                break;
              }

              if (v383 > v385)
              {
                break;
              }

              if (v370 > v365)
              {
                break;
              }

              v386 = (v376 + v367 - 4);
              if (v386 > v375)
              {
                break;
              }

              if (v385 > v386)
              {
                break;
              }

              if (v371 > v365)
              {
                break;
              }

              if (result > v375)
              {
                break;
              }

              if (v386 > result)
              {
                break;
              }

              v387 = v376 + v367 + 4;
              if (v387 > v375 || result > v387)
              {
                break;
              }

              *result = v525[v367 / 4] + ((*v377 * *v366 + *v378 * *v368 + *v381 * *v369 + *v383 * *v370 + *v385 * *v371 + *v386 * *a3) >> a5);
              v367 += 4;
              if (v373 == v367)
              {
                return result;
              }
            }
          }

          goto LABEL_839;
        }
      }

      else if (a2 >= 1)
      {
        v470 = a3 + 5;
        v471 = a3 + 4;
        if (a3 + 4 <= a3 + 5 && v471 >= a3)
        {
          v472 = 0;
          v473 = a3 + 3;
          v474 = a3 + 2;
          v475 = a3 + 1;
          v477 = a6[2];
          v478 = 4 * a2;
          while (1)
          {
            v480 = *a6;
            v479 = a6[1];
            v481 = (*a6 + v472);
            v482 = v481 - 5;
            result = (v481 - 4);
            v483 = (v481 - 4) > v479 || v482 > result;
            if (v483 || v482 < v477)
            {
              break;
            }

            v485 = v481 - 3;
            v486 = (v481 - 3) > v479 || result > v485;
            if (v486 || v473 > v470)
            {
              break;
            }

            v487 = (v480 + v472 - 8);
            if (v487 > v479 || v485 > v487)
            {
              break;
            }

            if (v474 > v470)
            {
              break;
            }

            v489 = (v480 + v472 - 4);
            if (v489 > v479)
            {
              break;
            }

            if (v487 > v489)
            {
              break;
            }

            if (v475 > v470)
            {
              break;
            }

            if (v481 > v479)
            {
              break;
            }

            if (v489 > v481)
            {
              break;
            }

            v490 = v480 + v472 + 4;
            if (v490 > v479 || v481 > v490)
            {
              break;
            }

            result = v525[v472 / 4] + ((*v482 * *v471 + *result * *v473 + *v485 * *v474 + *v487 * *v475 + *v489 * *a3) >> a5);
            *v481 = result;
            v472 += 4;
            if (v478 == v472)
            {
              return result;
            }
          }
        }

        goto LABEL_839;
      }
    }

    else if (a4 == 8)
    {
      if (a2 >= 1)
      {
        v256 = a3 + 8;
        v257 = a3 + 7;
        if (a3 + 7 <= a3 + 8 && v257 >= a3)
        {
          v258 = 0;
          v259 = a3 + 6;
          v260 = a3 + 5;
          v261 = a3 + 4;
          v262 = a3 + 3;
          v263 = a3 + 2;
          v264 = a3 + 1;
          v265 = a6[2];
          v266 = 4 * a2;
          while (1)
          {
            v269 = *a6;
            v268 = a6[1];
            v270 = (*a6 + v258);
            v271 = v270 - 8;
            result = (v270 - 7);
            v272 = (v270 - 7) > v268 || v271 > result;
            if (v272 || v271 < v265)
            {
              break;
            }

            v274 = v270 - 6;
            v275 = (v270 - 6) > v268 || result > v274;
            if (v275 || v259 > v256)
            {
              break;
            }

            v276 = (v269 + v258 - 20);
            if (v276 > v268 || v274 > v276)
            {
              break;
            }

            if (v260 > v256)
            {
              break;
            }

            v278 = (v269 + v258 - 16);
            if (v278 > v268)
            {
              break;
            }

            if (v276 > v278)
            {
              break;
            }

            if (v261 > v256)
            {
              break;
            }

            v279 = (v269 + v258 - 12);
            if (v279 > v268)
            {
              break;
            }

            if (v278 > v279)
            {
              break;
            }

            if (v262 > v256)
            {
              break;
            }

            v280 = (v269 + v258 - 8);
            if (v280 > v268)
            {
              break;
            }

            if (v279 > v280)
            {
              break;
            }

            if (v263 > v256)
            {
              break;
            }

            v281 = (v269 + v258 - 4);
            if (v281 > v268)
            {
              break;
            }

            if (v280 > v281)
            {
              break;
            }

            if (v264 > v256)
            {
              break;
            }

            if (v270 > v268)
            {
              break;
            }

            if (v281 > v270)
            {
              break;
            }

            v282 = v269 + v258 + 4;
            if (v282 > v268 || v270 > v282)
            {
              break;
            }

            result = v525[v258 / 4] + ((*v271 * *v257 + *result * *v259 + *v274 * *v260 + *v276 * *v261 + *v278 * *v262 + *v279 * *v263 + *v280 * *v264 + *v281 * *a3) >> a5);
            *v270 = result;
            v258 += 4;
            if (v266 == v258)
            {
              return result;
            }
          }
        }

        goto LABEL_839;
      }
    }

    else if (a2 >= 1)
    {
      v431 = a3 + 7;
      v432 = a3 + 6;
      if (a3 + 6 <= a3 + 7 && v432 >= a3)
      {
        v433 = 0;
        v434 = a3 + 5;
        v435 = a3 + 4;
        v436 = a3 + 3;
        v437 = a3 + 2;
        v438 = a3 + 1;
        v439 = a6[2];
        v440 = 4 * a2;
        while (1)
        {
          v443 = *a6;
          v442 = a6[1];
          v444 = (*a6 + v433);
          v445 = v444 - 7;
          result = (v444 - 6);
          v446 = (v444 - 6) > v442 || v445 > result;
          if (v446 || v445 < v439)
          {
            break;
          }

          v448 = v444 - 5;
          v449 = (v444 - 5) > v442 || result > v448;
          if (v449 || v434 > v431)
          {
            break;
          }

          v450 = (v443 + v433 - 16);
          if (v450 > v442 || v448 > v450)
          {
            break;
          }

          if (v435 > v431)
          {
            break;
          }

          v452 = (v443 + v433 - 12);
          if (v452 > v442)
          {
            break;
          }

          if (v450 > v452)
          {
            break;
          }

          if (v436 > v431)
          {
            break;
          }

          v453 = (v443 + v433 - 8);
          if (v453 > v442)
          {
            break;
          }

          if (v452 > v453)
          {
            break;
          }

          if (v437 > v431)
          {
            break;
          }

          v454 = (v443 + v433 - 4);
          if (v454 > v442)
          {
            break;
          }

          if (v453 > v454)
          {
            break;
          }

          if (v438 > v431)
          {
            break;
          }

          if (v444 > v442)
          {
            break;
          }

          if (v454 > v444)
          {
            break;
          }

          v455 = v443 + v433 + 4;
          if (v455 > v442 || v444 > v455)
          {
            break;
          }

          result = v525[v433 / 4] + ((*v445 * *v432 + *result * *v434 + *v448 * *v435 + *v450 * *v436 + *v452 * *v437 + *v453 * *v438 + *v454 * *a3) >> a5);
          *v444 = result;
          v433 += 4;
          if (v440 == v433)
          {
            return result;
          }
        }
      }

      goto LABEL_839;
    }
  }

  else if (a4 < 0xB)
  {
    if (a4 == 10)
    {
      if (a2 >= 1)
      {
        v283 = a3 + 10;
        v284 = a3 + 9;
        if (a3 + 9 <= a3 + 10 && v284 >= a3)
        {
          v285 = 0;
          v286 = a3 + 8;
          v287 = a3 + 7;
          v288 = a3 + 6;
          v289 = a3 + 5;
          v290 = a3 + 4;
          v291 = a3 + 3;
          v292 = a3 + 2;
          v293 = a6[2];
          v294 = a3 + 1;
          v295 = 4 * a2;
          while (1)
          {
            v297 = *a6;
            v296 = a6[1];
            v298 = (*a6 + v285);
            v299 = v298 - 10;
            v300 = v298 - 9;
            v301 = (v298 - 9) > v296 || v299 > v300;
            if (v301 || v299 < v293)
            {
              break;
            }

            v303 = v298 - 8;
            v304 = (v298 - 8) > v296 || v300 > v303;
            if (v304 || v286 > v283)
            {
              break;
            }

            result = v297 + v285;
            v305 = (v297 + v285 - 28);
            if (v305 > v296 || v303 > v305)
            {
              break;
            }

            if (v287 > v283)
            {
              break;
            }

            result = v297 + v285 - 24;
            if (result > v296)
            {
              break;
            }

            if (v305 > result)
            {
              break;
            }

            if (v288 > v283)
            {
              break;
            }

            v307 = (v297 + v285 - 20);
            if (v307 > v296)
            {
              break;
            }

            if (result > v307)
            {
              break;
            }

            if (v289 > v283)
            {
              break;
            }

            v308 = (v297 + v285 - 16);
            if (v308 > v296)
            {
              break;
            }

            if (v307 > v308)
            {
              break;
            }

            if (v290 > v283)
            {
              break;
            }

            v309 = (v297 + v285 - 12);
            if (v309 > v296)
            {
              break;
            }

            if (v308 > v309)
            {
              break;
            }

            if (v291 > v283)
            {
              break;
            }

            v310 = (v297 + v285 - 8);
            if (v310 > v296)
            {
              break;
            }

            if (v309 > v310)
            {
              break;
            }

            if (v292 > v283)
            {
              break;
            }

            v311 = (v297 + v285 - 4);
            if (v311 > v296)
            {
              break;
            }

            if (v310 > v311)
            {
              break;
            }

            if (v294 > v283)
            {
              break;
            }

            if (v298 > v296)
            {
              break;
            }

            if (v311 > v298)
            {
              break;
            }

            v312 = v297 + v285 + 4;
            if (v312 > v296 || v298 > v312)
            {
              break;
            }

            result = v525[v285 / 4] + ((*v299 * *v284 + *v300 * *v286 + *v303 * *v287 + *v305 * *v288 + *result * *v289 + *v307 * *v290 + *v308 * *v291 + *v309 * *v292 + *v310 * *v294 + *v311 * *a3) >> a5);
            *v298 = result;
            v285 += 4;
            if (v295 == v285)
            {
              return result;
            }
          }
        }

        goto LABEL_839;
      }
    }

    else if (a2 >= 1)
    {
      v388 = a3 + 9;
      v389 = a3 + 8;
      if (a3 + 8 <= a3 + 9 && v389 >= a3)
      {
        v390 = 0;
        v391 = a3 + 7;
        v392 = a3 + 6;
        v393 = a3 + 5;
        v394 = a3 + 4;
        v395 = a3 + 3;
        v396 = a3 + 2;
        v397 = a3 + 1;
        v398 = a6[2];
        v399 = 4 * a2;
        while (1)
        {
          v401 = *a6;
          v400 = a6[1];
          v402 = (*a6 + v390);
          v403 = v402 - 9;
          result = (v402 - 8);
          v404 = (v402 - 8) > v400 || v403 > result;
          if (v404 || v403 < v398)
          {
            break;
          }

          v406 = v402 - 7;
          v407 = (v402 - 7) > v400 || result > v406;
          if (v407 || v391 > v388)
          {
            break;
          }

          v408 = (v401 + v390 - 24);
          if (v408 > v400 || v406 > v408)
          {
            break;
          }

          if (v392 > v388)
          {
            break;
          }

          v410 = (v401 + v390 - 20);
          if (v410 > v400)
          {
            break;
          }

          if (v408 > v410)
          {
            break;
          }

          if (v393 > v388)
          {
            break;
          }

          v411 = (v401 + v390 - 16);
          if (v411 > v400)
          {
            break;
          }

          if (v410 > v411)
          {
            break;
          }

          if (v394 > v388)
          {
            break;
          }

          v412 = (v401 + v390 - 12);
          if (v412 > v400)
          {
            break;
          }

          if (v411 > v412)
          {
            break;
          }

          if (v395 > v388)
          {
            break;
          }

          v413 = (v401 + v390 - 8);
          if (v413 > v400)
          {
            break;
          }

          if (v412 > v413)
          {
            break;
          }

          if (v396 > v388)
          {
            break;
          }

          v414 = (v401 + v390 - 4);
          if (v414 > v400)
          {
            break;
          }

          if (v413 > v414)
          {
            break;
          }

          if (v397 > v388)
          {
            break;
          }

          if (v402 > v400)
          {
            break;
          }

          if (v414 > v402)
          {
            break;
          }

          v415 = v401 + v390 + 4;
          if (v415 > v400 || v402 > v415)
          {
            break;
          }

          result = v525[v390 / 4] + ((*v403 * *v389 + *result * *v391 + *v406 * *v392 + *v408 * *v393 + *v410 * *v394 + *v411 * *v395 + *v412 * *v396 + *v413 * *v397 + *v414 * *a3) >> a5);
          *v402 = result;
          v390 += 4;
          if (v399 == v390)
          {
            return result;
          }
        }
      }

      goto LABEL_839;
    }
  }

  else if (a4 == 12)
  {
    if (a2 >= 1)
    {
      v9 = a3 + 12;
      v522 = a3 + 11;
      if (a3 + 11 <= a3 + 12 && v522 >= a3)
      {
        v10 = 0;
        v11 = a3 + 10;
        v12 = a3 + 9;
        v13 = a3 + 8;
        v14 = a3 + 7;
        v15 = a3 + 6;
        v16 = a3 + 5;
        v17 = a3 + 4;
        v519 = a6[2];
        v18 = a3 + 3;
        v19 = a3 + 2;
        v20 = a3 + 1;
        v517 = 4 * a2;
        while (1)
        {
          v22 = *a6;
          v21 = a6[1];
          v23 = (*a6 + v10);
          v24 = v23 - 12;
          v25 = v23 - 11;
          v26 = (v23 - 11) > v21 || v24 > v25;
          if (v26 || v24 < v519)
          {
            break;
          }

          v28 = v23 - 10;
          v29 = (v23 - 10) > v21 || v25 > v28;
          if (v29 || v11 > v9)
          {
            break;
          }

          v30 = (v22 + v10 - 36);
          if (v30 > v21 || v28 > v30)
          {
            break;
          }

          if (v12 > v9)
          {
            break;
          }

          v32 = (v22 + v10 - 32);
          if (v32 > v21)
          {
            break;
          }

          if (v30 > v32)
          {
            break;
          }

          if (v13 > v9)
          {
            break;
          }

          v33 = (v22 + v10 - 28);
          if (v33 > v21)
          {
            break;
          }

          if (v32 > v33)
          {
            break;
          }

          if (v14 > v9)
          {
            break;
          }

          v34 = (v22 + v10 - 24);
          if (v34 > v21)
          {
            break;
          }

          if (v33 > v34)
          {
            break;
          }

          if (v15 > v9)
          {
            break;
          }

          v35 = (v22 + v10 - 20);
          if (v35 > v21)
          {
            break;
          }

          if (v34 > v35)
          {
            break;
          }

          if (v16 > v9)
          {
            break;
          }

          result = v22 + v10 - 16;
          if (result > v21)
          {
            break;
          }

          if (v35 > result)
          {
            break;
          }

          if (v17 > v9)
          {
            break;
          }

          v36 = (v22 + v10 - 12);
          if (v36 > v21)
          {
            break;
          }

          if (result > v36)
          {
            break;
          }

          if (v18 > v9)
          {
            break;
          }

          v37 = (v22 + v10 - 8);
          if (v37 > v21)
          {
            break;
          }

          if (v36 > v37)
          {
            break;
          }

          if (v19 > v9)
          {
            break;
          }

          v38 = (v22 + v10 - 4);
          if (v38 > v21)
          {
            break;
          }

          if (v37 > v38)
          {
            break;
          }

          if (v20 > v9)
          {
            break;
          }

          if (v23 > v21)
          {
            break;
          }

          if (v38 > v23)
          {
            break;
          }

          v39 = v22 + v10 + 4;
          if (v39 > v21 || v23 > v39)
          {
            break;
          }

          v40 = *v24 * *v522 + *v25 * *v11 + *v28 * *v12 + *v30 * *v13 + *v32 * *v14 + *v33 * *v15 + *v34 * *v16 + *v35 * *v17 + *result * *v18 + *v36 * *v19 + *v37 * *v20;
          result = *a3;
          *v23 = v525[v10 / 4] + ((v40 + *v38 * result) >> a5);
          v10 += 4;
          if (v517 == v10)
          {
            return result;
          }
        }
      }

LABEL_839:
      __break(0x5519u);
    }
  }

  else if (a2 >= 1)
  {
    v333 = a3 + 11;
    v524 = a3 + 10;
    if (a3 + 10 <= a3 + 11 && v524 >= a3)
    {
      v334 = 0;
      v335 = a3 + 9;
      v336 = a3 + 8;
      v337 = a3 + 7;
      v338 = a3 + 6;
      v339 = a3 + 5;
      v340 = a3 + 4;
      v341 = a3 + 3;
      v521 = a6[2];
      v342 = a3 + 2;
      v343 = a3 + 1;
      v344 = 4 * a2;
      while (1)
      {
        v347 = *a6;
        v346 = a6[1];
        v348 = (*a6 + v334);
        v349 = v348 - 11;
        v350 = v348 - 10;
        v351 = (v348 - 10) > v346 || v349 > v350;
        if (v351 || v349 < v521)
        {
          break;
        }

        v353 = v348 - 9;
        v354 = (v348 - 9) > v346 || v350 > v353;
        if (v354 || v335 > v333)
        {
          break;
        }

        v355 = (v347 + v334 - 32);
        if (v355 > v346 || v353 > v355)
        {
          break;
        }

        if (v336 > v333)
        {
          break;
        }

        v357 = (v347 + v334 - 28);
        if (v357 > v346)
        {
          break;
        }

        if (v355 > v357)
        {
          break;
        }

        if (v337 > v333)
        {
          break;
        }

        v358 = (v347 + v334 - 24);
        if (v358 > v346)
        {
          break;
        }

        if (v357 > v358)
        {
          break;
        }

        if (v338 > v333)
        {
          break;
        }

        result = v347 + v334 - 20;
        if (result > v346)
        {
          break;
        }

        if (v358 > result)
        {
          break;
        }

        if (v339 > v333)
        {
          break;
        }

        v359 = (v347 + v334 - 16);
        if (v359 > v346)
        {
          break;
        }

        if (result > v359)
        {
          break;
        }

        if (v340 > v333)
        {
          break;
        }

        v360 = (v347 + v334 - 12);
        if (v360 > v346)
        {
          break;
        }

        if (v359 > v360)
        {
          break;
        }

        if (v341 > v333)
        {
          break;
        }

        v361 = (v347 + v334 - 8);
        if (v361 > v346)
        {
          break;
        }

        if (v360 > v361)
        {
          break;
        }

        if (v342 > v333)
        {
          break;
        }

        v362 = (v347 + v334 - 4);
        if (v362 > v346)
        {
          break;
        }

        if (v361 > v362)
        {
          break;
        }

        if (v343 > v333)
        {
          break;
        }

        if (v348 > v346)
        {
          break;
        }

        if (v362 > v348)
        {
          break;
        }

        v363 = v347 + v334 + 4;
        if (v363 > v346 || v348 > v363)
        {
          break;
        }

        v364 = *v349 * *v524 + *v350 * *v335 + *v353 * *v336 + *v355 * *v337 + *v357 * *v338 + *v358 * *v339 + *result * *v340 + *v359 * *v341 + *v360 * *v342 + *v361 * *v343;
        result = v525[v334 / 4];
        *v348 = result + ((v364 + *v362 * *a3) >> a5);
        v334 += 4;
        if (v344 == v334)
        {
          return result;
        }
      }
    }

    goto LABEL_839;
  }

  return result;
}

unint64_t FLAC__lpc_restore_signal(unint64_t result, int a2, unsigned int *a3, unsigned int a4, unsigned int a5, uint64_t *a6)
{
  v515 = result;
  v7 = a4 - 13;
  if (a4 >= 0xD)
  {
    if (a2 >= 1)
    {
      v39 = 0;
      v40 = &a3[a4];
      v41 = (a3 + 30);
      v44 = a3 + 30 <= a3 + 31 && (a3 + 31) <= v40 && v41 >= a3;
      v493 = v44;
      v45 = (a3 + 29);
      v48 = (a3 + 29) <= v41 && v41 <= v40 && v45 >= a3;
      v494 = v48;
      v49 = (a3 + 28);
      v52 = (a3 + 28) <= v45 && v45 <= v40 && v49 >= a3;
      v495 = v52;
      v53 = (a3 + 27);
      v56 = (a3 + 27) <= v49 && v49 <= v40 && v53 >= a3;
      v496 = v56;
      v57 = (a3 + 26);
      v60 = (a3 + 26) <= v53 && v53 <= v40 && v57 >= a3;
      v497 = v60;
      v61 = (a3 + 25);
      v64 = (a3 + 25) <= v57 && v57 <= v40 && v61 >= a3;
      v498 = v64;
      v65 = (a3 + 24);
      v68 = (a3 + 24) <= v61 && v61 <= v40 && v65 >= a3;
      v499 = v68;
      v69 = (a3 + 23);
      v72 = (a3 + 23) <= v65 && v65 <= v40 && v69 >= a3;
      v500 = v72;
      v73 = (a3 + 22);
      v76 = (a3 + 22) <= v69 && v69 <= v40 && v73 >= a3;
      v501 = v76;
      v77 = (a3 + 21);
      v80 = (a3 + 21) <= v73 && v73 <= v40 && v77 >= a3;
      v502 = v80;
      v81 = (a3 + 20);
      v84 = (a3 + 20) <= v77 && v77 <= v40 && v81 >= a3;
      v503 = v84;
      v85 = (a3 + 19);
      v88 = (a3 + 19) <= v81 && v81 <= v40 && v85 >= a3;
      v504 = v88;
      v89 = (a3 + 18);
      v92 = (a3 + 18) <= v85 && v85 <= v40 && v89 >= a3;
      v505 = v92;
      v93 = (a3 + 17);
      v96 = (a3 + 17) <= v89 && v89 <= v40 && v93 >= a3;
      v506 = v96;
      v97 = (a3 + 16);
      v100 = (a3 + 16) <= v93 && v93 <= v40 && v97 >= a3;
      v508 = v100;
      v101 = a3 + 15;
      v104 = (a3 + 15) <= v97 && v97 <= v40 && v101 >= a3;
      v510 = v104;
      v105 = a3 + 14;
      v108 = a3 + 14 <= v101 && v101 <= v40 && v105 >= a3;
      v512 = v108;
      v109 = a3 + 13 > v105 || v105 > v40;
      v110 = 4 * a2;
      v111 = !v109;
      while (2)
      {
        v112 = 0;
        v113 = 0;
        result = 0;
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        switch(v7)
        {
          case 0u:
            v129 = 0;
            v130 = *a6;
            v131 = a6[1];
            v132 = a6[2];
            goto LABEL_409;
          case 1u:
            goto LABEL_399;
          case 2u:
            goto LABEL_389;
          case 3u:
            goto LABEL_379;
          case 4u:
            goto LABEL_369;
          case 5u:
            goto LABEL_359;
          case 6u:
            goto LABEL_349;
          case 7u:
            goto LABEL_339;
          case 8u:
            goto LABEL_329;
          case 9u:
            goto LABEL_319;
          case 0xAu:
            goto LABEL_309;
          case 0xBu:
            goto LABEL_299;
          case 0xCu:
            goto LABEL_289;
          case 0xDu:
            goto LABEL_279;
          case 0xEu:
            goto LABEL_269;
          case 0xFu:
            goto LABEL_259;
          case 0x10u:
            goto LABEL_249;
          case 0x11u:
            goto LABEL_239;
          case 0x12u:
            goto LABEL_229;
          case 0x13u:
            v134 = *a6 + v39;
            v135 = (v134 - 128);
            v136 = v134 - 124;
            if (v136 > a6[1] || v135 > v136 || v135 < a6[2])
            {
              goto LABEL_838;
            }

            v112 = *v135 * a3[31];
LABEL_229:
            if (!v493)
            {
              goto LABEL_838;
            }

            v139 = *a6 + v39;
            v140 = (v139 - 124);
            v141 = v139 - 120;
            v142 = v141 > a6[1] || v140 > v141;
            if (v142 || v140 < a6[2])
            {
              goto LABEL_838;
            }

            v113 = v112 + *v140 * a3[30];
LABEL_239:
            if (!v494)
            {
              goto LABEL_838;
            }

            v144 = *a6 + v39;
            v145 = (v144 - 120);
            v146 = v144 - 116;
            v147 = v146 > a6[1] || v145 > v146;
            if (v147 || v145 < a6[2])
            {
              goto LABEL_838;
            }

            result = v113 + *v145 * a3[29];
LABEL_249:
            if (!v495)
            {
              goto LABEL_838;
            }

            v149 = *a6 + v39;
            v150 = (v149 - 116);
            v151 = v149 - 112;
            v152 = v151 > a6[1] || v150 > v151;
            if (v152 || v150 < a6[2])
            {
              goto LABEL_838;
            }

            v114 = result + *v150 * a3[28];
LABEL_259:
            if (!v496)
            {
              goto LABEL_838;
            }

            v154 = *a6 + v39;
            v155 = (v154 - 112);
            v156 = v154 - 108;
            v157 = v156 > a6[1] || v155 > v156;
            if (v157 || v155 < a6[2])
            {
              goto LABEL_838;
            }

            v115 = v114 + *v155 * a3[27];
LABEL_269:
            if (!v497)
            {
              goto LABEL_838;
            }

            v159 = *a6 + v39;
            v160 = (v159 - 108);
            v161 = v159 - 104;
            v162 = v161 > a6[1] || v160 > v161;
            if (v162 || v160 < a6[2])
            {
              goto LABEL_838;
            }

            v116 = v115 + *v160 * a3[26];
LABEL_279:
            if (!v498)
            {
              goto LABEL_838;
            }

            v164 = *a6 + v39;
            v165 = (v164 - 104);
            v166 = v164 - 100;
            v167 = v166 > a6[1] || v165 > v166;
            if (v167 || v165 < a6[2])
            {
              goto LABEL_838;
            }

            v117 = v116 + *v165 * a3[25];
LABEL_289:
            if (!v499)
            {
              goto LABEL_838;
            }

            v169 = *a6 + v39;
            v170 = (v169 - 100);
            v171 = v169 - 96;
            v172 = v171 > a6[1] || v170 > v171;
            if (v172 || v170 < a6[2])
            {
              goto LABEL_838;
            }

            v118 = v117 + *v170 * a3[24];
LABEL_299:
            if (!v500)
            {
              goto LABEL_838;
            }

            v174 = *a6 + v39;
            v175 = (v174 - 96);
            v176 = v174 - 92;
            v177 = v176 > a6[1] || v175 > v176;
            if (v177 || v175 < a6[2])
            {
              goto LABEL_838;
            }

            v119 = v118 + *v175 * a3[23];
LABEL_309:
            if (!v501)
            {
              goto LABEL_838;
            }

            v179 = *a6 + v39;
            v180 = (v179 - 92);
            v181 = v179 - 88;
            v182 = v181 > a6[1] || v180 > v181;
            if (v182 || v180 < a6[2])
            {
              goto LABEL_838;
            }

            v120 = v119 + *v180 * a3[22];
LABEL_319:
            if (!v502)
            {
              goto LABEL_838;
            }

            v184 = *a6 + v39;
            v185 = (v184 - 88);
            v186 = v184 - 84;
            v187 = v186 > a6[1] || v185 > v186;
            if (v187 || v185 < a6[2])
            {
              goto LABEL_838;
            }

            v121 = v120 + *v185 * a3[21];
LABEL_329:
            if (!v503)
            {
              goto LABEL_838;
            }

            v189 = *a6 + v39;
            v190 = (v189 - 84);
            v191 = v189 - 80;
            v192 = v191 > a6[1] || v190 > v191;
            if (v192 || v190 < a6[2])
            {
              goto LABEL_838;
            }

            v122 = v121 + *v190 * a3[20];
LABEL_339:
            if (!v504)
            {
              goto LABEL_838;
            }

            v194 = *a6 + v39;
            v195 = (v194 - 80);
            v196 = v194 - 76;
            v197 = v196 > a6[1] || v195 > v196;
            if (v197 || v195 < a6[2])
            {
              goto LABEL_838;
            }

            v123 = v122 + *v195 * a3[19];
LABEL_349:
            if (!v505)
            {
              goto LABEL_838;
            }

            v199 = *a6 + v39;
            v200 = (v199 - 76);
            v201 = v199 - 72;
            v202 = v201 > a6[1] || v200 > v201;
            if (v202 || v200 < a6[2])
            {
              goto LABEL_838;
            }

            v124 = v123 + *v200 * a3[18];
LABEL_359:
            if (!v506)
            {
              goto LABEL_838;
            }

            v204 = *a6 + v39;
            v205 = (v204 - 72);
            v206 = v204 - 68;
            v207 = v206 > a6[1] || v205 > v206;
            if (v207 || v205 < a6[2])
            {
              goto LABEL_838;
            }

            v125 = v124 + *v205 * a3[17];
LABEL_369:
            if (!v508)
            {
              goto LABEL_838;
            }

            v209 = *a6 + v39;
            v210 = (v209 - 68);
            v211 = v209 - 64;
            v212 = v211 > a6[1] || v210 > v211;
            if (v212 || v210 < a6[2])
            {
              goto LABEL_838;
            }

            v126 = v125 + *v210 * a3[16];
LABEL_379:
            if (!v510)
            {
              goto LABEL_838;
            }

            v214 = *a6 + v39;
            v215 = (v214 - 64);
            v216 = v214 - 60;
            v217 = v216 > a6[1] || v215 > v216;
            if (v217 || v215 < a6[2])
            {
              goto LABEL_838;
            }

            v127 = v126 + *v215 * *v101;
LABEL_389:
            if (!v512)
            {
              goto LABEL_838;
            }

            v219 = *a6 + v39;
            v220 = (v219 - 60);
            v221 = v219 - 56;
            v222 = v221 > a6[1] || v220 > v221;
            if (v222 || v220 < a6[2])
            {
              goto LABEL_838;
            }

            v128 = v127 + *v220 * *v105;
LABEL_399:
            if (!v111)
            {
              goto LABEL_838;
            }

            v130 = *a6;
            v131 = a6[1];
            v132 = a6[2];
            v224 = *a6 + v39;
            v225 = (v224 - 56);
            v226 = v224 - 52;
            v227 = v226 > v131 || v225 > v226;
            if (v227 || v225 < v132)
            {
              goto LABEL_838;
            }

            v129 = v128 + *v225 * a3[13];
LABEL_409:
            v229 = v130 + v39;
            v230 = (v130 + v39 - 52);
            v231 = v130 + v39 - 48;
            v232 = v231 > v131 || v230 > v231;
            if (v232 || v230 < v132)
            {
              goto LABEL_838;
            }

            v234 = v229 - 44;
            if (v229 - 44 > v131 || v231 > v234)
            {
              goto LABEL_838;
            }

            v236 = v130 + v39 - 40;
            if (v236 > v131 || v234 > v236)
            {
              goto LABEL_838;
            }

            v238 = v130 + v39 - 36;
            if (v238 > v131)
            {
              goto LABEL_838;
            }

            if (v236 > v238)
            {
              goto LABEL_838;
            }

            v239 = v130 + v39 - 32;
            if (v239 > v131)
            {
              goto LABEL_838;
            }

            if (v238 > v239)
            {
              goto LABEL_838;
            }

            v240 = v130 + v39 - 28;
            if (v240 > v131)
            {
              goto LABEL_838;
            }

            if (v239 > v240)
            {
              goto LABEL_838;
            }

            v241 = v130 + v39 - 24;
            if (v241 > v131)
            {
              goto LABEL_838;
            }

            if (v240 > v241)
            {
              goto LABEL_838;
            }

            result = v130 + v39 - 20;
            if (result > v131)
            {
              goto LABEL_838;
            }

            if (v241 > result)
            {
              goto LABEL_838;
            }

            v242 = v130 + v39 - 16;
            if (v242 > v131)
            {
              goto LABEL_838;
            }

            if (result > v242)
            {
              goto LABEL_838;
            }

            v243 = v130 + v39 - 12;
            if (v243 > v131)
            {
              goto LABEL_838;
            }

            if (v242 > v243)
            {
              goto LABEL_838;
            }

            v244 = v130 + v39 - 8;
            if (v244 > v131)
            {
              goto LABEL_838;
            }

            if (v243 > v244)
            {
              goto LABEL_838;
            }

            v245 = (v130 + v39 - 4);
            if (v245 > v131 || v244 > v245 || v229 > v131 || v245 > v229)
            {
              goto LABEL_838;
            }

            v246 = vrev64q_s32(*(a3 + 9));
            v247 = vrev64q_s32(*(a3 + 5));
            v248 = vrev64q_s32(*(a3 + 1));
            v133 = vaddvq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(*(v130 + v39 - 36), vextq_s8(v247, v247, 8uLL)), *v230, vextq_s8(v246, v246, 8uLL)), *result, vextq_s8(v248, v248, 8uLL))) + *v245 * *a3 + v129;
LABEL_446:
            v249 = (v130 + v39);
            v250 = v130 + v39 + 4;
            if (v250 > v131 || v249 > v250 || v249 < v132)
            {
              goto LABEL_838;
            }

            *v249 = v515[v39 / 4] + (v133 >> a5);
            v39 += 4;
            if (v110 == v39)
            {
              return result;
            }

            continue;
          default:
            v133 = 0;
            v130 = *a6;
            v131 = a6[1];
            v132 = a6[2];
            goto LABEL_446;
        }
      }
    }
  }

  else if (a4 < 9)
  {
    if (a4 < 5)
    {
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          if (a2 >= 1)
          {
            v410 = a3 + 1;
            if (a3 + 1 <= a3 + 2 && v410 >= a3)
            {
              v411 = a6[2];
              v412 = a2;
              for (i = -8; ; i += 4)
              {
                v414 = a6[1];
                v415 = (*a6 + i);
                v416 = v415 + 1;
                v417 = (v415 + 1) > v414 || v415 > v416;
                if (v417 || v415 < v411)
                {
                  break;
                }

                v419 = v415 + 2;
                v420 = (v415 + 2) > v414 || v416 > v419;
                v421 = v415 + 3;
                v422 = v420 || v421 > v414;
                if (v422 || v419 > v421)
                {
                  break;
                }

                v424 = *v515++;
                *v419 = ((*v415 * *v410 + *v416 * *a3) >> a5) + v424;
                if (!--v412)
                {
                  return result;
                }
              }
            }

            goto LABEL_838;
          }
        }

        else if (a2 >= 1)
        {
          if (a3 + 1 >= a3 && a3 + 1 <= &a3[a4])
          {
            v483 = 0;
            v484 = a6[2];
            while (1)
            {
              v485 = a6[1];
              v486 = (*a6 + v483);
              v487 = v486 - 1;
              v488 = v486 > v485 || v487 > v486;
              v489 = !v488 && v487 >= v484;
              v490 = v486 + 1;
              v491 = !v489 || v490 > v485;
              if (v491 || v486 > v490)
              {
                break;
              }

              *v486 = ((*(v486 - 1) * *a3) >> a5) + *(result + v483);
              v483 += 4;
              if (4 * a2 == v483)
              {
                return result;
              }
            }
          }

          goto LABEL_838;
        }
      }

      else if (a4 == 4)
      {
        if (a2 >= 1)
        {
          v309 = a3 + 4;
          v310 = a3 + 3;
          if (a3 + 3 <= a3 + 4 && v310 >= a3)
          {
            v311 = 0;
            v312 = a3 + 2;
            v313 = a3 + 1;
            v314 = a6[2];
            v315 = 4 * a2;
            while (1)
            {
              v317 = *a6;
              v316 = a6[1];
              v318 = (*a6 + v311);
              v319 = v318 - 4;
              v320 = v318 - 3;
              v321 = (v318 - 3) > v316 || v319 > v320;
              if (v321 || v319 < v314)
              {
                break;
              }

              result = (v318 - 2);
              v323 = (v318 - 2) > v316 || v320 > result;
              if (v323 || v312 > v309)
              {
                break;
              }

              v324 = (v317 + v311 - 4);
              if (v324 > v316 || result > v324)
              {
                break;
              }

              if (v313 > v309)
              {
                break;
              }

              if (v318 > v316)
              {
                break;
              }

              if (v324 > v318)
              {
                break;
              }

              v326 = v317 + v311 + 4;
              if (v326 > v316 || v318 > v326)
              {
                break;
              }

              v327 = *v319 * *v310 + *v320 * *v312 + *result * *v313;
              result = a5;
              *v318 = ((v327 + *v324 * *a3) >> a5) + v515[v311 / 4];
              v311 += 4;
              if (v315 == v311)
              {
                return result;
              }
            }
          }

          goto LABEL_838;
        }
      }

      else if (a2 >= 1)
      {
        v449 = a3 + 2;
        if (a3 + 2 <= a3 + 3 && v449 >= a3)
        {
          v450 = 0;
          v451 = a3 + 1;
          v452 = a6[2];
          v453 = 4 * a2;
          while (1)
          {
            result = a6[1];
            v454 = (*a6 + v450);
            v455 = v454 - 3;
            v456 = v454 - 2;
            v457 = (v454 - 2) > result || v455 > v456;
            if (v457 || v455 < v452)
            {
              break;
            }

            v459 = v454 - 1;
            if ((v454 - 1) > result || v456 > v459)
            {
              break;
            }

            if (v451 > a3 + 3)
            {
              break;
            }

            if (v454 > result)
            {
              break;
            }

            if (v459 > v454)
            {
              break;
            }

            v461 = *a6 + v450 + 4;
            if (v461 > result || v454 > v461)
            {
              break;
            }

            result = *a3;
            *v454 = ((*v455 * *v449 + *v456 * *v451 + *v459 * result) >> a5) + v515[v450 / 4];
            v450 += 4;
            if (v453 == v450)
            {
              return result;
            }
          }
        }

        goto LABEL_838;
      }
    }

    else if (a4 < 7)
    {
      if (a4 == 6)
      {
        if (a2 >= 1)
        {
          v360 = a3 + 6;
          v361 = a3 + 5;
          if (a3 + 5 <= a3 + 6 && v361 >= a3)
          {
            v362 = 0;
            v363 = a3 + 4;
            v364 = a3 + 3;
            v365 = a3 + 2;
            v366 = a3 + 1;
            v367 = a6[2];
            v368 = 4 * a2;
            while (1)
            {
              v370 = *a6;
              v369 = a6[1];
              v371 = (*a6 + v362);
              result = (v371 - 6);
              v372 = v371 - 5;
              v373 = (v371 - 5) > v369 || result > v372;
              if (v373 || result < v367)
              {
                break;
              }

              v375 = v371 - 4;
              v376 = (v371 - 4) > v369 || v372 > v375;
              if (v376 || v363 > v360)
              {
                break;
              }

              v377 = (v370 + v362 - 12);
              if (v377 > v369 || v375 > v377)
              {
                break;
              }

              if (v364 > v360)
              {
                break;
              }

              v379 = (v370 + v362 - 8);
              if (v379 > v369)
              {
                break;
              }

              if (v377 > v379)
              {
                break;
              }

              if (v365 > v360)
              {
                break;
              }

              v380 = (v370 + v362 - 4);
              if (v380 > v369)
              {
                break;
              }

              if (v379 > v380)
              {
                break;
              }

              if (v366 > v360)
              {
                break;
              }

              if (v371 > v369)
              {
                break;
              }

              if (v380 > v371)
              {
                break;
              }

              v381 = v370 + v362 + 4;
              if (v381 > v369 || v371 > v381)
              {
                break;
              }

              result = (((*result * *v361 + *v372 * *v363 + *v375 * *v364 + *v377 * *v365 + *v379 * *v366 + *v380 * *a3) >> a5) + v515[v362 / 4]);
              *v371 = result;
              v362 += 4;
              if (v368 == v362)
              {
                return result;
              }
            }
          }

          goto LABEL_838;
        }
      }

      else if (a2 >= 1)
      {
        v462 = a3 + 5;
        v463 = a3 + 4;
        if (a3 + 4 <= a3 + 5 && v463 >= a3)
        {
          v464 = 0;
          v465 = a3 + 3;
          v466 = a3 + 2;
          v467 = a3 + 1;
          v468 = a6[2];
          v469 = 4 * a2;
          while (1)
          {
            v471 = *a6;
            v470 = a6[1];
            v472 = (*a6 + v464);
            result = (v472 - 5);
            v473 = v472 - 4;
            v474 = (v472 - 4) > v470 || result > v473;
            if (v474 || result < v468)
            {
              break;
            }

            v476 = v472 - 3;
            v477 = (v472 - 3) > v470 || v473 > v476;
            if (v477 || v465 > v462)
            {
              break;
            }

            v478 = (v471 + v464 - 8);
            if (v478 > v470 || v476 > v478)
            {
              break;
            }

            if (v466 > v462)
            {
              break;
            }

            v480 = (v471 + v464 - 4);
            if (v480 > v470)
            {
              break;
            }

            if (v478 > v480)
            {
              break;
            }

            if (v467 > v462)
            {
              break;
            }

            if (v472 > v470)
            {
              break;
            }

            if (v480 > v472)
            {
              break;
            }

            v481 = v471 + v464 + 4;
            if (v481 > v470 || v472 > v481)
            {
              break;
            }

            v482 = *result * *v463 + *v473 * *v465 + *v476 * *v466 + *v478 * *v467;
            result = v515[v464 / 4];
            *v472 = ((v482 + *v480 * *a3) >> a5) + result;
            v464 += 4;
            if (v469 == v464)
            {
              return result;
            }
          }
        }

        goto LABEL_838;
      }
    }

    else if (a4 == 8)
    {
      if (a2 >= 1)
      {
        v253 = a3 + 8;
        v254 = a3 + 7;
        if (a3 + 7 <= a3 + 8 && v254 >= a3)
        {
          v255 = 0;
          v256 = a3 + 6;
          v257 = a3 + 5;
          v258 = a3 + 4;
          v259 = a3 + 3;
          v260 = a3 + 2;
          v261 = a3 + 1;
          v262 = a6[2];
          v263 = 4 * a2;
          while (1)
          {
            v265 = *a6;
            v264 = a6[1];
            v266 = (*a6 + v255);
            v267 = v266 - 8;
            v268 = v266 - 7;
            v269 = (v266 - 7) > v264 || v267 > v268;
            if (v269 || v267 < v262)
            {
              break;
            }

            v271 = v266 - 6;
            v272 = (v266 - 6) > v264 || v268 > v271;
            if (v272 || v256 > v253)
            {
              break;
            }

            result = v265 + v255;
            v273 = (v265 + v255 - 20);
            if (v273 > v264 || v271 > v273)
            {
              break;
            }

            if (v257 > v253)
            {
              break;
            }

            result = v265 + v255;
            v275 = (v265 + v255 - 16);
            if (v275 > v264)
            {
              break;
            }

            if (v273 > v275)
            {
              break;
            }

            if (v258 > v253)
            {
              break;
            }

            result = v265 + v255;
            v276 = (v265 + v255 - 12);
            if (v276 > v264)
            {
              break;
            }

            if (v275 > v276)
            {
              break;
            }

            if (v259 > v253)
            {
              break;
            }

            result = v265 + v255 - 8;
            if (result > v264)
            {
              break;
            }

            if (v276 > result)
            {
              break;
            }

            if (v260 > v253)
            {
              break;
            }

            v277 = (v265 + v255 - 4);
            if (v277 > v264)
            {
              break;
            }

            if (result > v277)
            {
              break;
            }

            if (v261 > v253)
            {
              break;
            }

            if (v266 > v264)
            {
              break;
            }

            if (v277 > v266)
            {
              break;
            }

            v278 = v265 + v255 + 4;
            if (v278 > v264 || v266 > v278)
            {
              break;
            }

            result = (((*v267 * *v254 + *v268 * *v256 + *v271 * *v257 + *v273 * *v258 + *v275 * *v259 + *v276 * *v260 + *result * *v261 + *v277 * *a3) >> a5) + v515[v255 / 4]);
            *v266 = result;
            v255 += 4;
            if (v263 == v255)
            {
              return result;
            }
          }
        }

        goto LABEL_838;
      }
    }

    else if (a2 >= 1)
    {
      v425 = a3 + 7;
      v426 = a3 + 6;
      if (a3 + 6 <= a3 + 7 && v426 >= a3)
      {
        v427 = 0;
        v428 = a3 + 5;
        v429 = a3 + 4;
        v430 = a3 + 3;
        v431 = a3 + 2;
        v432 = a3 + 1;
        v433 = a6[2];
        v434 = 4 * a2;
        while (1)
        {
          v436 = *a6;
          v435 = a6[1];
          v437 = (*a6 + v427);
          v438 = v437 - 7;
          v439 = v437 - 6;
          v440 = (v437 - 6) > v435 || v438 > v439;
          if (v440 || v438 < v433)
          {
            break;
          }

          v442 = v437 - 5;
          v443 = (v437 - 5) > v435 || v439 > v442;
          if (v443 || v428 > v425)
          {
            break;
          }

          result = v436 + v427;
          v444 = (v436 + v427 - 16);
          if (v444 > v435 || v442 > v444)
          {
            break;
          }

          if (v429 > v425)
          {
            break;
          }

          result = v436 + v427 - 12;
          if (result > v435)
          {
            break;
          }

          if (v444 > result)
          {
            break;
          }

          if (v430 > v425)
          {
            break;
          }

          v446 = (v436 + v427 - 8);
          if (v446 > v435)
          {
            break;
          }

          if (result > v446)
          {
            break;
          }

          if (v431 > v425)
          {
            break;
          }

          v447 = (v436 + v427 - 4);
          if (v447 > v435)
          {
            break;
          }

          if (v446 > v447)
          {
            break;
          }

          if (v432 > v425)
          {
            break;
          }

          if (v437 > v435)
          {
            break;
          }

          if (v447 > v437)
          {
            break;
          }

          v448 = v436 + v427 + 4;
          if (v448 > v435 || v437 > v448)
          {
            break;
          }

          result = (((*v438 * *v426 + *v439 * *v428 + *v442 * *v429 + *v444 * *v430 + *result * *v431 + *v446 * *v432 + *v447 * *a3) >> a5) + v515[v427 / 4]);
          *v437 = result;
          v427 += 4;
          if (v434 == v427)
          {
            return result;
          }
        }
      }

      goto LABEL_838;
    }
  }

  else if (a4 < 0xB)
  {
    if (a4 == 10)
    {
      if (a2 >= 1)
      {
        v279 = a3 + 10;
        v280 = a3 + 9;
        if (a3 + 9 <= a3 + 10 && v280 >= a3)
        {
          v281 = 0;
          v282 = a3 + 8;
          v283 = a3 + 7;
          v284 = a3 + 6;
          v285 = a3 + 5;
          v286 = a3 + 4;
          v287 = a3 + 3;
          v288 = a3 + 2;
          v289 = a6[2];
          v290 = a3 + 1;
          v291 = 4 * a2;
          while (1)
          {
            v293 = *a6;
            v292 = a6[1];
            v294 = (*a6 + v281);
            v295 = v294 - 10;
            v296 = v294 - 9;
            v297 = (v294 - 9) > v292 || v295 > v296;
            if (v297 || v295 < v289)
            {
              break;
            }

            v299 = v294 - 8;
            v300 = (v294 - 8) > v292 || v296 > v299;
            if (v300 || v282 > v279)
            {
              break;
            }

            result = v293 + v281;
            v301 = (v293 + v281 - 28);
            if (v301 > v292 || v299 > v301)
            {
              break;
            }

            if (v283 > v279)
            {
              break;
            }

            result = v293 + v281;
            v303 = (v293 + v281 - 24);
            if (v303 > v292)
            {
              break;
            }

            if (v301 > v303)
            {
              break;
            }

            if (v284 > v279)
            {
              break;
            }

            result = v293 + v281;
            v304 = (v293 + v281 - 20);
            if (v304 > v292)
            {
              break;
            }

            if (v303 > v304)
            {
              break;
            }

            if (v285 > v279)
            {
              break;
            }

            result = v293 + v281;
            v305 = (v293 + v281 - 16);
            if (v305 > v292)
            {
              break;
            }

            if (v304 > v305)
            {
              break;
            }

            if (v286 > v279)
            {
              break;
            }

            result = v293 + v281;
            v306 = (v293 + v281 - 12);
            if (v306 > v292)
            {
              break;
            }

            if (v305 > v306)
            {
              break;
            }

            if (v287 > v279)
            {
              break;
            }

            result = v293 + v281;
            v307 = (v293 + v281 - 8);
            if (v307 > v292)
            {
              break;
            }

            if (v306 > v307)
            {
              break;
            }

            if (v288 > v279)
            {
              break;
            }

            result = v293 + v281 - 4;
            if (result > v292)
            {
              break;
            }

            if (v307 > result)
            {
              break;
            }

            if (v290 > v279)
            {
              break;
            }

            if (v294 > v292)
            {
              break;
            }

            if (result > v294)
            {
              break;
            }

            v308 = v293 + v281 + 4;
            if (v308 > v292 || v294 > v308)
            {
              break;
            }

            result = (((*v295 * *v280 + *v296 * *v282 + *v299 * *v283 + *v301 * *v284 + *v303 * *v285 + *v304 * *v286 + *v305 * *v287 + *v306 * *v288 + *v307 * *v290 + *result * *a3) >> a5) + v515[v281 / 4]);
            *v294 = result;
            v281 += 4;
            if (v291 == v281)
            {
              return result;
            }
          }
        }

        goto LABEL_838;
      }
    }

    else if (a2 >= 1)
    {
      v382 = a3 + 9;
      v383 = a3 + 8;
      if (a3 + 8 <= a3 + 9 && v383 >= a3)
      {
        v384 = 0;
        v385 = a3 + 7;
        v386 = a3 + 6;
        v387 = a3 + 5;
        v388 = a3 + 4;
        v389 = a3 + 3;
        v390 = a3 + 2;
        v391 = a3 + 1;
        v392 = a6[2];
        v393 = 4 * a2;
        while (1)
        {
          v395 = *a6;
          v394 = a6[1];
          v396 = (*a6 + v384);
          v397 = v396 - 9;
          v398 = v396 - 8;
          v399 = (v396 - 8) > v394 || v397 > v398;
          if (v399 || v397 < v392)
          {
            break;
          }

          v401 = v396 - 7;
          v402 = (v396 - 7) > v394 || v398 > v401;
          if (v402 || v385 > v382)
          {
            break;
          }

          result = v395 + v384;
          v403 = (v395 + v384 - 24);
          if (v403 > v394 || v401 > v403)
          {
            break;
          }

          if (v386 > v382)
          {
            break;
          }

          result = v395 + v384;
          v405 = (v395 + v384 - 20);
          if (v405 > v394)
          {
            break;
          }

          if (v403 > v405)
          {
            break;
          }

          if (v387 > v382)
          {
            break;
          }

          result = v395 + v384;
          v406 = (v395 + v384 - 16);
          if (v406 > v394)
          {
            break;
          }

          if (v405 > v406)
          {
            break;
          }

          if (v388 > v382)
          {
            break;
          }

          result = v395 + v384;
          v407 = (v395 + v384 - 12);
          if (v407 > v394)
          {
            break;
          }

          if (v406 > v407)
          {
            break;
          }

          if (v389 > v382)
          {
            break;
          }

          result = v395 + v384 - 8;
          if (result > v394)
          {
            break;
          }

          if (v407 > result)
          {
            break;
          }

          if (v390 > v382)
          {
            break;
          }

          v408 = (v395 + v384 - 4);
          if (v408 > v394)
          {
            break;
          }

          if (result > v408)
          {
            break;
          }

          if (v391 > v382)
          {
            break;
          }

          if (v396 > v394)
          {
            break;
          }

          if (v408 > v396)
          {
            break;
          }

          v409 = v395 + v384 + 4;
          if (v409 > v394 || v396 > v409)
          {
            break;
          }

          result = (((*v397 * *v383 + *v398 * *v385 + *v401 * *v386 + *v403 * *v387 + *v405 * *v388 + *v406 * *v389 + *v407 * *v390 + *result * *v391 + *v408 * *a3) >> a5) + v515[v384 / 4]);
          *v396 = result;
          v384 += 4;
          if (v393 == v384)
          {
            return result;
          }
        }
      }

      goto LABEL_838;
    }
  }

  else if (a4 == 12)
  {
    if (a2 >= 1)
    {
      v8 = a3 + 12;
      v511 = a3 + 11;
      if (a3 + 11 <= a3 + 12 && v511 >= a3)
      {
        v9 = 0;
        result = (a3 + 10);
        v10 = a3 + 9;
        v11 = a3 + 8;
        v12 = a3 + 7;
        v13 = a3 + 6;
        v14 = a3 + 5;
        v15 = a3 + 4;
        v16 = a3 + 3;
        v17 = a3 + 2;
        v18 = a3 + 1;
        v507 = 4 * a2;
        v509 = a6[2];
        while (1)
        {
          v20 = *a6;
          v19 = a6[1];
          v21 = (*a6 + v9);
          v22 = v21 - 12;
          v23 = v21 - 11;
          v24 = (v21 - 11) > v19 || v22 > v23;
          if (v24 || v22 < v509)
          {
            break;
          }

          v26 = v21 - 10;
          v27 = (v21 - 10) > v19 || v23 > v26;
          if (v27 || result > v8)
          {
            break;
          }

          v28 = (v20 + v9 - 36);
          if (v28 > v19 || v26 > v28)
          {
            break;
          }

          if (v10 > v8)
          {
            break;
          }

          v30 = (v20 + v9 - 32);
          if (v30 > v19)
          {
            break;
          }

          if (v28 > v30)
          {
            break;
          }

          if (v11 > v8)
          {
            break;
          }

          v31 = (v20 + v9 - 28);
          if (v31 > v19)
          {
            break;
          }

          if (v30 > v31)
          {
            break;
          }

          if (v12 > v8)
          {
            break;
          }

          v32 = (v20 + v9 - 24);
          if (v32 > v19)
          {
            break;
          }

          if (v31 > v32)
          {
            break;
          }

          if (v13 > v8)
          {
            break;
          }

          v33 = (v20 + v9 - 20);
          if (v33 > v19)
          {
            break;
          }

          if (v32 > v33)
          {
            break;
          }

          if (v14 > v8)
          {
            break;
          }

          v34 = (v20 + v9 - 16);
          if (v34 > v19)
          {
            break;
          }

          if (v33 > v34)
          {
            break;
          }

          if (v15 > v8)
          {
            break;
          }

          v35 = (v20 + v9 - 12);
          if (v35 > v19)
          {
            break;
          }

          if (v34 > v35)
          {
            break;
          }

          if (v16 > v8)
          {
            break;
          }

          v36 = (v20 + v9 - 8);
          if (v36 > v19)
          {
            break;
          }

          if (v35 > v36)
          {
            break;
          }

          if (v17 > v8)
          {
            break;
          }

          v37 = (v20 + v9 - 4);
          if (v37 > v19)
          {
            break;
          }

          if (v36 > v37)
          {
            break;
          }

          if (v18 > v8)
          {
            break;
          }

          if (v21 > v19)
          {
            break;
          }

          if (v37 > v21)
          {
            break;
          }

          v38 = v20 + v9 + 4;
          if (v38 > v19 || v21 > v38)
          {
            break;
          }

          *v21 = ((*v22 * *v511 + *v23 * *result + *v26 * *v10 + *v28 * *v11 + *v30 * *v12 + *v31 * *v13 + *v32 * *v14 + *v33 * *v15 + *v34 * *v16 + *v35 * *v17 + *v36 * *v18 + *v37 * *a3) >> a5) + v515[v9 / 4];
          v9 += 4;
          if (v507 == v9)
          {
            return result;
          }
        }
      }

LABEL_838:
      __break(0x5519u);
    }
  }

  else if (a2 >= 1)
  {
    v328 = a3 + 11;
    v513 = a3 + 10;
    if (a3 + 10 <= a3 + 11 && v513 >= a3)
    {
      v329 = 0;
      v330 = a3 + 9;
      v331 = a3 + 8;
      v332 = a3 + 7;
      v333 = a3 + 6;
      v334 = a3 + 5;
      v335 = a3 + 4;
      v336 = a3 + 3;
      v337 = a3 + 2;
      v338 = a6[2];
      v339 = a3 + 1;
      v340 = 4 * a2;
      while (1)
      {
        v342 = *a6;
        v341 = a6[1];
        v343 = (*a6 + v329);
        v344 = v343 - 11;
        v345 = v343 - 10;
        v346 = (v343 - 10) > v341 || v344 > v345;
        if (v346 || v344 < v338)
        {
          break;
        }

        v348 = v343 - 9;
        v349 = (v343 - 9) > v341 || v345 > v348;
        if (v349 || v330 > v328)
        {
          break;
        }

        v350 = (v342 + v329 - 32);
        if (v350 > v341 || v348 > v350)
        {
          break;
        }

        if (v331 > v328)
        {
          break;
        }

        v352 = (v342 + v329 - 28);
        if (v352 > v341)
        {
          break;
        }

        if (v350 > v352)
        {
          break;
        }

        if (v332 > v328)
        {
          break;
        }

        v353 = (v342 + v329 - 24);
        if (v353 > v341)
        {
          break;
        }

        if (v352 > v353)
        {
          break;
        }

        if (v333 > v328)
        {
          break;
        }

        v354 = (v342 + v329 - 20);
        if (v354 > v341)
        {
          break;
        }

        if (v353 > v354)
        {
          break;
        }

        if (v334 > v328)
        {
          break;
        }

        v355 = (v342 + v329 - 16);
        if (v355 > v341)
        {
          break;
        }

        if (v354 > v355)
        {
          break;
        }

        if (v335 > v328)
        {
          break;
        }

        v356 = (v342 + v329 - 12);
        if (v356 > v341)
        {
          break;
        }

        if (v355 > v356)
        {
          break;
        }

        if (v336 > v328)
        {
          break;
        }

        v357 = (v342 + v329 - 8);
        if (v357 > v341)
        {
          break;
        }

        if (v356 > v357)
        {
          break;
        }

        if (v337 > v328)
        {
          break;
        }

        result = v342 + v329 - 4;
        if (result > v341)
        {
          break;
        }

        if (v357 > result)
        {
          break;
        }

        if (v339 > v328)
        {
          break;
        }

        if (v343 > v341)
        {
          break;
        }

        if (result > v343)
        {
          break;
        }

        v358 = v342 + v329 + 4;
        if (v358 > v341 || v343 > v358)
        {
          break;
        }

        v359 = *v344 * *v513 + *v345 * *v330 + *v348 * *v331 + *v350 * *v332 + *v352 * *v333 + *v353 * *v334 + *v354 * *v335 + *v355 * *v336 + *v356 * *v337 + *v357 * *v339 + *result * *a3;
        result = a5;
        *v343 = (v359 >> a5) + v515[v329 / 4];
        v329 += 4;
        if (v340 == v329)
        {
          return result;
        }
      }
    }

    goto LABEL_838;
  }

  return result;
}