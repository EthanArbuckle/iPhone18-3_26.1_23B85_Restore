uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (v44 + v28 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 2 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Tone_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v11 = result;
  v12 = 2 * *result;
  v223 = *(result + 44) + 2 * (*(result + 28) * a2 / v12);
  v224 = *(result + 36);
  v13 = result[14];
  v15 = result[12];
  v14 = result[13];
  v16 = v14 * a2 / v12;
  v17 = result[15] + 2 * v16;
  v18 = 2 * ((v14 + v14 * a2) / v12 - v16);
  v20 = result[7];
  v19 = result[8];
  v21 = result[16];
  v22 = result[17];
  v23 = v19[2];
  v225 = v20[2];
  v24 = v22[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v17 + v13);
  if (v18 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = v15 & 0xFFFFFFFE;
    v30 = *v19;
    v31 = v19[1];
    v32 = *v22;
    v33 = v22[1];
    LOWORD(a4) = *(v28 + 140);
    LOWORD(a6) = *(v28 + 142);
    LOWORD(v6) = *(v28 + 144);
    LOWORD(v7) = *(v28 + 146);
    v34 = 8191.0 / *(v28 + 128);
    v35 = LODWORD(a4);
    v36 = LODWORD(a6);
    v37 = v34 * *v28;
    v252 = v34 * *(v28 + 16);
    v253 = v34 * *(v28 + 8);
    v38 = v34 * *(v28 + 20);
    *&v39 = v34 * *(v28 + 28);
    v250 = *&v39;
    v251 = v38;
    v40 = v6;
    LOWORD(v39) = *(v28 + 150);
    v41 = v39;
    LOWORD(v39) = *(v28 + 152);
    v42 = v39;
    v44 = *(v28 + 36);
    v43 = *(v28 + 40);
    v45 = *(v28 + 44);
    v243 = *(v28 + 76);
    v244 = *(v28 + 72);
    v241 = *(v28 + 84);
    v242 = *(v28 + 80);
    v239 = *(v28 + 88);
    v237 = *(v28 + 92);
    v235 = *(v28 + 96);
    v233 = *(v28 + 100);
    v231 = *(v28 + 104);
    result = (v28 + 164);
    v46 = v28 + 16548;
    v47 = v21[1];
    _ZF = v47 == 0;
    v49 = (v47 + v33 * v17 + v13);
    v50 = (*v21 + v32 * v17 + v13);
    v51 = *v20;
    v52 = v20[1] + v31 * (v223 / 2);
    v53 = v28 + 32932;
    if (_ZF)
    {
      v54 = 0;
    }

    else
    {
      v54 = v49;
    }

    v55 = (v51 + v30 * v223 + v224);
    v56 = v52 + v224;
    v57 = *(v28 + 108);
    _S0 = *(v28 + 120);
    v227 = *(v28 + 116);
    v228 = *(v28 + 112);
    v226 = _S0;
    v254 = LODWORD(a6);
    v248 = *(v28 + 56);
    v249 = v7;
    v246 = *(v28 + 64);
    v247 = *(v28 + 60);
    v245 = *(v28 + 68);
    v240 = v35;
    v238 = v41;
    v236 = v37;
    v234 = *(v28 + 52);
    v232 = *(v28 + 48);
    v229 = v57;
    LOWORD(v8) = *(v28 + 148);
    v230 = v8;
    do
    {
      v59 = &v55[v30];
      v60 = &v50[v32];
      v61 = &v54[v33];
      if (v29 >= 1)
      {
        v62 = 0;
        v63 = &v55[v30];
        v64 = &v54[v33];
        v65 = &v50[v32];
        do
        {
          LOBYTE(_S0) = *(v56 + v62 + 1);
          v66 = LODWORD(_S0) - v36;
          v67 = LODWORD(v253);
          v68 = v253 * v66;
          LOBYTE(v67) = *v55;
          v69 = v37 * (v67 - v35);
          v70 = (v253 * v66) + v69;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = (v253 * v66) + v69;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          LOBYTE(v70) = *(v56 + v62);
          v72 = LODWORD(v70) - v36;
          v73 = (v251 * v66) + (v72 * v252);
          v74 = 8191.0;
          if ((v69 + v73) <= 8191.0)
          {
            v74 = v69 + v73;
            if ((v69 + v73) < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v250 * v72;
          v76 = (v250 * v72) + v69;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOBYTE(v76) = v55[1];
          v78 = v37 * (LODWORD(v76) - v35);
          v79 = 8191.0;
          if ((v68 + v78) <= 8191.0)
          {
            v79 = v68 + v78;
            if ((v68 + v78) < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = 8191.0;
          if ((v73 + v78) <= 8191.0)
          {
            v80 = v73 + v78;
            if ((v73 + v78) < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v75 + v78;
          v82 = (v75 + v78) <= 8191.0;
          v83 = 8191.0;
          if (v82)
          {
            v83 = v81;
            if (v81 < 0.0)
            {
              v83 = 0.0;
            }
          }

          LOBYTE(v81) = *v63;
          v84 = v37 * (LODWORD(v81) - v35);
          v85 = 8191.0;
          if ((v68 + v84) <= 8191.0)
          {
            v85 = v68 + v84;
            if ((v68 + v84) < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = 8191.0;
          if ((v73 + v84) <= 8191.0)
          {
            v86 = v73 + v84;
            if ((v73 + v84) < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v75 + v84;
          v82 = (v75 + v84) <= 8191.0;
          v88 = 8191.0;
          if (v82)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          LOBYTE(v9) = v63[1];
          v89 = v37 * (LODWORD(v9) - v35);
          v90 = v68 + v89;
          v82 = (v68 + v89) <= 8191.0;
          v91 = 8191.0;
          if (v82)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v73 + v89;
          v82 = (v73 + v89) <= 8191.0;
          v93 = 8191.0;
          if (v82)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v75 + v89;
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S9, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H27 = *(result + llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H19 = *(result + llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          _H8 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          _H29 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H23 = *(result + llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          _H30 = *(result + llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          _H21 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H22 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H26 = *(result + llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v114 = (((v228 * _S24) + (v57 * _S9)) + (v227 * _S25)) + (v226 * fmaxf(_S9, fmaxf(_S24, _S25)));
          v115 = 8191.0;
          if (v114 <= 8191.0)
          {
            v115 = v114;
            if (v114 < 0.0)
            {
              v115 = 0.0;
            }
          }

          __asm
          {
            FCVT            S1, H27
            FCVT            S3, H19
            FCVT            S19, H8
          }

          _H27 = *(v46 + 2 * llroundf(v115));
          v120 = (((v228 * _S3) + (v57 * _S1)) + (v227 * _S19)) + (v226 * fmaxf(_S1, fmaxf(_S3, _S19)));
          v121 = 8191.0;
          if (v120 <= 8191.0)
          {
            v121 = v120;
            if (v120 < 0.0)
            {
              v121 = 0.0;
            }
          }

          v122 = v45;
          __asm
          {
            FCVT            S28, H29
            FCVT            S23, H23
            FCVT            S29, H30
          }

          _H30 = *(v46 + 2 * llroundf(v121));
          v127 = (((v228 * _S23) + (v57 * _S28)) + (v227 * _S29)) + (v226 * fmaxf(_S28, fmaxf(_S23, _S29)));
          v128 = 8191.0;
          if (v127 <= 8191.0)
          {
            v128 = v127;
            if (v127 < 0.0)
            {
              v128 = 0.0;
            }
          }

          v129 = v43;
          __asm
          {
            FCVT            S21, H21
            FCVT            S22, H22
            FCVT            S26, H26
          }

          _H31 = *(v46 + 2 * llroundf(v128));
          v134 = (((v228 * _S22) + (v57 * _S21)) + (v227 * _S26)) + (v226 * fmaxf(_S21, fmaxf(_S22, _S26)));
          v135 = 8191.0;
          if (v134 <= 8191.0)
          {
            v135 = v134;
            if (v134 < 0.0)
            {
              v135 = 0.0;
            }
          }

          __asm { FCVT            S27, H27 }

          v137 = _S9 * _S27;
          v138 = _S24 * _S27;
          v139 = _S25 * _S27;
          __asm { FCVT            S27, H30 }

          v141 = _S1 * _S27;
          v142 = _S3 * _S27;
          v143 = _S19 * _S27;
          __asm { FCVT            S27, H31 }

          v145 = _S28 * _S27;
          v146 = _S23 * _S27;
          v147 = _S29 * _S27;
          _H0 = *(v46 + 2 * llroundf(v135));
          __asm { FCVT            S0, H0 }

          v150 = _S21 * _S0;
          v151 = _S22 * _S0;
          _S0 = _S26 * _S0;
          v153 = ((v243 * v138) + (v137 * v244)) + (v139 * v242);
          v154 = ((v239 * v138) + (v137 * v241)) + (v139 * v237);
          v155 = ((v233 * v138) + (v137 * v235)) + (v139 * v231);
          v156 = ((v243 * v142) + (v141 * v244)) + (v143 * v242);
          v157 = ((v239 * v142) + (v141 * v241)) + (v143 * v237);
          v158 = ((v233 * v142) + (v141 * v235)) + (v143 * v231);
          v159 = ((v243 * v146) + (v145 * v244)) + (v147 * v242);
          v160 = ((v239 * v146) + (v145 * v241)) + (v147 * v237);
          v161 = ((v233 * v146) + (v145 * v235)) + (v147 * v231);
          v162 = ((v243 * v151) + (v150 * v244)) + (_S0 * v242);
          v163 = ((v239 * v151) + (v150 * v241)) + (_S0 * v237);
          v164 = ((v233 * v151) + (v150 * v235)) + (_S0 * v231);
          LOWORD(_S0) = *(v53 + 2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          LOWORD(_S0) = *(v53 + 2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          LOWORD(_S0) = *(v53 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H1 = *(v53 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          _H3 = *(v53 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          _H19 = *(v53 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          _H26 = *(v53 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          _H27 = *(v53 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          _H28 = *(v53 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0)));
          _H24 = *(v53 + 2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0)));
          _H25 = *(v53 + 2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0)));
          v43 = v129;
          v177 = (v129 * _S22) + (v44 * _S21);
          v45 = v122;
          v178 = (v177 + (v122 * _S29)) + v40;
          v9 = v230;
          if (v178 <= v230)
          {
            v9 = v178;
            if (v178 < v40)
            {
              v9 = v40;
            }
          }

          *v50 = llroundf(v9);
          v35 = v240;
          v37 = v236;
          if (v54)
          {
            v180 = v248;
            v179 = v7;
            v181 = v234;
            v182 = ((v249 + (_S21 * v232)) + (_S22 * v234)) + (_S29 * v248);
            v9 = v42;
            v183 = v246;
            if (v182 <= v42)
            {
              v9 = ((v249 + (_S21 * v232)) + (_S22 * v234)) + (_S29 * v248);
              if (v182 < v238)
              {
                v9 = v238;
              }
            }

            v184 = v247;
            v185 = ((v249 + (_S21 * v247)) + (_S22 * v246)) + (_S29 * v245);
            v186 = v245;
            *v54 = llroundf(v9);
            v187 = v42;
            v57 = v229;
            if (v185 <= v42)
            {
              v187 = v185;
              if (v185 < v238)
              {
                v187 = v238;
              }
            }

            v54[1] = llroundf(v187);
            v54 += 2;
          }

          else
          {
            v181 = v234;
            v180 = v248;
            v179 = v7;
            v183 = v246;
            v184 = v247;
            v186 = v245;
            v57 = v229;
          }

          __asm
          {
            FCVT            S1, H1
            FCVT            S3, H3
            FCVT            S19, H19
          }

          v191 = (((v43 * _S3) + (v44 * _S1)) + (v122 * _S19)) + v40;
          v192 = v230;
          if (v191 <= v230)
          {
            v192 = (((v43 * _S3) + (v44 * _S1)) + (v122 * _S19)) + v40;
            if (v191 < v40)
            {
              v192 = v40;
            }
          }

          v50[1] = llroundf(v192);
          if (v54)
          {
            v193 = ((v179 + (_S1 * v232)) + (_S3 * v181)) + (_S19 * v180);
            v194 = v42;
            if (v193 <= v42)
            {
              v194 = ((v179 + (_S1 * v232)) + (_S3 * v181)) + (_S19 * v180);
              if (v193 < v238)
              {
                v194 = v238;
              }
            }

            v195 = ((v179 + (_S1 * v184)) + (_S3 * v183)) + (_S19 * v186);
            *v54 = llroundf(v194);
            v196 = v42;
            if (v195 <= v42)
            {
              v196 = v195;
              if (v195 < v238)
              {
                v196 = v238;
              }
            }

            v54[1] = llroundf(v196);
            v54 += 2;
          }

          __asm
          {
            FCVT            S1, H26
            FCVT            S3, H27
            FCVT            S19, H28
          }

          v200 = (((v43 * _S3) + (v44 * _S1)) + (v122 * _S19)) + v40;
          v201 = v230;
          if (v200 <= v230)
          {
            v201 = (((v43 * _S3) + (v44 * _S1)) + (v122 * _S19)) + v40;
            if (v200 < v40)
            {
              v201 = v40;
            }
          }

          *v65 = llroundf(v201);
          if (v64)
          {
            v202 = ((v179 + (_S1 * v232)) + (_S3 * v181)) + (_S19 * v180);
            v203 = v42;
            if (v202 <= v42)
            {
              v203 = ((v179 + (_S1 * v232)) + (_S3 * v181)) + (_S19 * v180);
              if (v202 < v238)
              {
                v203 = v238;
              }
            }

            v204 = ((v179 + (_S1 * v184)) + (_S3 * v183)) + (_S19 * v186);
            *v64 = llroundf(v203);
            v205 = v42;
            if (v204 <= v42)
            {
              v205 = v204;
              if (v204 < v238)
              {
                v205 = v238;
              }
            }

            v64[1] = llroundf(v205);
            v64 += 2;
          }

          __asm
          {
            FCVT            S1, H0
            FCVT            S0, H24
            FCVT            S3, H25
          }

          v208 = (((v43 * _S0) + (v44 * _S1)) + (v122 * _S3)) + v40;
          v209 = v230;
          if (v208 <= v230)
          {
            v209 = (((v43 * _S0) + (v44 * _S1)) + (v122 * _S3)) + v40;
            if (v208 < v40)
            {
              v209 = v40;
            }
          }

          v65[1] = llroundf(v209);
          if (v64)
          {
            v210 = ((v179 + (_S1 * v232)) + (_S0 * v181)) + (_S3 * v180);
            v211 = v42;
            if (v210 <= v42)
            {
              v211 = ((v179 + (_S1 * v232)) + (_S0 * v181)) + (_S3 * v180);
              if (v210 < v238)
              {
                v211 = v238;
              }
            }

            v212 = ((v179 + (_S1 * v184)) + (_S0 * v183)) + (_S3 * v186);
            *v64 = llroundf(v211);
            _S0 = v42;
            v36 = v254;
            if (v212 <= v42)
            {
              _S0 = v212;
              if (v212 < v238)
              {
                _S0 = v238;
              }
            }

            v64[1] = llroundf(_S0);
            v64 += 2;
          }

          else
          {
            v36 = v254;
          }

          v55 += 2;
          v63 += 2;
          v50 += 2;
          v65 += 2;
          v62 += 2;
        }

        while (v62 < v29);
      }

      v55 = &v59[v30];
      v56 += v31;
      v50 = &v60[v32];
      v54 = &v61[v33];
      v27 += 2;
    }

    while (v27 < v18);
  }

  if (v225 && v25)
  {
    if (v18 >= 1)
    {
      v213 = 0;
      v214 = (v225 + v23 * v223 + v224);
      do
      {
        result = memcpy(v26, v214, v15);
        v214 += v23;
        v26 += v24;
        ++v213;
      }

      while (v18 > v213);
    }
  }

  else if (v25 && v18 >= 1)
  {
    v215 = 0;
    v216 = vdupq_n_s64(v15 - 1);
    do
    {
      if (v15 >= 1)
      {
        v217 = 0;
        do
        {
          v218 = vdupq_n_s64(v217);
          v219 = vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v219, *v216.i8), *v216.i8).u8[0])
          {
            v26[v217] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v219, *&v216), *&v216).i8[1])
          {
            v26[v217 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v216, vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDDA0)))), *&v216).i8[2])
          {
            v26[v217 + 2] = -1;
            v26[v217 + 3] = -1;
          }

          v220 = vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v216, vuzp1_s16(v220, *&v216)).i32[1])
          {
            v26[v217 + 4] = -1;
          }

          if (vuzp1_s8(*&v216, vuzp1_s16(v220, *&v216)).i8[5])
          {
            v26[v217 + 5] = -1;
          }

          if (vuzp1_s8(*&v216, vuzp1_s16(*&v216, vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDD80))))).i8[6])
          {
            v26[v217 + 6] = -1;
            v26[v217 + 7] = -1;
          }

          v221 = vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v221, *v216.i8), *v216.i8).u8[0])
          {
            v26[v217 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v221, *&v216), *&v216).i8[1])
          {
            v26[v217 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v216, vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDD60)))), *&v216).i8[2])
          {
            v26[v217 + 10] = -1;
            v26[v217 + 11] = -1;
          }

          v222 = vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v216, vuzp1_s16(v222, *&v216)).i32[1])
          {
            v26[v217 + 12] = -1;
          }

          if (vuzp1_s8(*&v216, vuzp1_s16(v222, *&v216)).i8[5])
          {
            v26[v217 + 13] = -1;
          }

          if (vuzp1_s8(*&v216, vuzp1_s16(*&v216, vmovn_s64(vcgeq_u64(v216, vorrq_s8(v218, xmmword_18FECDD40))))).i8[6])
          {
            v26[v217 + 14] = -1;
            v26[v217 + 15] = -1;
          }

          v217 += 16;
        }

        while (((v15 + 15) & 0xFFFFFFFFFFFFFFF0) != v217);
      }

      v26 += v24;
      ++v215;
    }

    while (v18 > v215);
  }

  *(v11 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (v44 + v28 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 2 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

float32x2_t *vt_Copy_420vf_TRC_Mat_TRC_444vf_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, int16x4_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v7 = 2 * result->u8[0];
  v271 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v7);
  v272 = *(&result[4] + 4);
  v8 = result[14];
  v10 = result[12];
  v9 = result[13];
  v277 = result;
  v11 = *&v9 * a2 / v7;
  v12 = *&result[15] + 2 * v11;
  v13 = 2 * ((*&v9 + *&v9 * a2) / v7 - v11);
  v14 = result[7];
  v15 = result[8];
  v16 = result[16];
  v17 = result[17];
  v270 = v15[2];
  v274 = v14[2];
  v275 = v17[2];
  v273 = v16[2];
  v18 = (v273 + v275 * v12 + *&v8);
  if (v13 >= 1)
  {
    v19 = 0;
    v20 = result[19];
    v21 = *v15;
    v22 = v15[1];
    v23 = *v17;
    v24 = v17[1];
    v25 = v20[17].u16[2];
    v26 = v20[17].u16[3];
    a4.i32[0] = v20->i32[0];
    a5.i32[0] = v20[3].i32[1];
    v27 = v20[18].u16[0];
    v28 = v20[18].u16[1];
    v29 = v20[18].u16[2];
    v30 = v20[18].u16[3];
    v31 = v20[19].u16[0];
    _S26 = v20[4].f32[1];
    _S27 = v20[5].f32[0];
    _S28 = v20[5].f32[1];
    _S8 = v20[6].i32[0];
    _S9 = v20[6].i32[1];
    _S10 = v20[7].i32[0];
    _S12 = v20[7].i32[1];
    _S15 = v20[8].i32[0];
    v40 = v25;
    v41 = 8191.0 / v20[16].u32[0];
    v42 = v26;
    _S18 = v41 * v20->f32[0];
    v44 = v27;
    v45 = v28;
    v46 = v29;
    v47 = v30;
    v48 = v31;
    *a4.i16 = v25;
    v314 = vdupq_lane_s16(a4, 0);
    a5.i32[1] = v20[1].i32[0];
    *a7.f32 = vmul_n_f32(*a5.f32, v41);
    v49 = -v26;
    *a5.f32 = vmul_n_f32(v20[2], v41);
    _S6 = v20[8].i32[1];
    _S7 = v20[9].i32[0];
    result = (v20 + 164);
    v312 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v310 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v52 = vmulq_n_f16(v310, v49);
    v307 = v52;
    v308 = vmulq_n_f16(v312, v49);
    *v52.i16 = v27;
    v53 = &v20[2068] + 4;
    v54 = vdupq_lane_s16(*v52.i8, 0);
    *v52.i16 = v28;
    v55 = vdupq_lane_s16(*v52.i8, 0);
    v326 = v55;
    *v55.i16 = v29;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    v332 = v56;
    *v56.i16 = v30;
    v57 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v31;
    v324 = vdupq_lane_s16(*v56.i8, 0);
    v325 = v57;
    v60 = v16;
    v58 = *v16;
    v59 = v60[1];
    if (v59)
    {
      v61 = (v59 + v24 * v12 + *&v8);
    }

    else
    {
      v61 = 0;
    }

    v62 = (v58 + v23 * v12 + *&v8);
    v63 = (v14[1] + v22 * (v271 / 2) + v272);
    v64 = (*v14 + v21 * v271 + v272);
    _S19 = v20[11].f32[1];
    __asm { FCVT            H11, S18 }

    v296 = _H11;
    __asm { FCVT            H11, S26 }

    v331 = _H11;
    __asm { FCVT            H11, S27 }

    v330 = _H11;
    __asm { FCVT            H11, S28 }

    v329 = _H11;
    __asm { FCVT            H11, S8 }

    v323 = _H11;
    __asm { FCVT            H11, S9 }

    v322 = _H11;
    __asm { FCVT            H11, S10 }

    v321 = _H11;
    __asm { FCVT            H11, S12 }

    v320 = _H11;
    __asm { FCVT            H11, S15 }

    v319 = _H11;
    v334 = v20[8].f32[1];
    __asm { FCVT            H6, S6 }

    v318 = _H6;
    v309 = v20[9].f32[0];
    __asm { FCVT            H6, S7 }

    v306 = v20[9].f32[1];
    __asm { FCVT            H0, S0 }

    v294 = _H0;
    v295 = _H6;
    v305 = v20[10].f32[0];
    __asm { FCVT            H1, S1 }

    v289 = _H1;
    v303 = v20[10].f32[1];
    __asm { FCVT            H1, S5 }

    v288 = _H1;
    v301 = v20[11].f32[0];
    __asm { FCVT            H1, S17 }

    v287 = _H1;
    v299 = _S19;
    __asm { FCVT            H1, S19 }

    v286 = _H1;
    v297 = v20[12].f32[0];
    __asm { FCVT            H1, S23 }

    v328 = _H1;
    v293 = v20[12].f32[1];
    __asm { FCVT            H0, S0 }

    v285 = _H0;
    v291 = v20[13].f32[0];
    __asm { FCVT            H0, S3 }

    v284 = _H0;
    v313 = a7.f32[0];
    a7.f32[0] = v42;
    _Q0.i32[0] = a5.i32[1];
    v282 = a5.f32[1];
    v311 = a5.f32[0];
    v283 = a7.f32[1];
    v278 = v24;
    v333 = LODWORD(v42);
    v317 = v20[8].f32[0];
    v316 = v20[7].f32[1];
    v315 = v47;
    v304 = v54;
    v302 = v45;
    v300 = v20[7].f32[0];
    v298 = v20[6].f32[1];
    v327 = v48;
    v292 = v40;
    v290 = _S18;
    v280 = v20[5].f32[0];
    v281 = v20[4].f32[1];
    v279 = v20[6].f32[0];
    do
    {
      v90 = v64 + v21;
      v91 = v62 + v23;
      v92 = &v61[v24];
      if (v10 < 8)
      {
        v141 = 0;
        v96 = &v61[v24];
        v95 = (v62 + v23);
        v140 = v63;
        v94 = (v64 + v21);
      }

      else
      {
        v93 = 0;
        v94 = (v64 + v21);
        v95 = (v62 + v23);
        v96 = &v61[v24];
        do
        {
          v97 = *&v63[v93];
          *v98.i8 = vzip1_s8(v97, 0);
          v98.u64[1] = vzip2_s8(v97, 0);
          v99 = vcvtq_f16_u16(v98);
          v100 = vmlaq_f16(v308, v312, v99);
          v101 = vmlaq_f16(v307, v310, v99);
          v102 = vtrn2q_s16(v100, v100);
          v103 = vtrn1q_s16(v100, v100);
          v104 = vuzp1q_s16(v101, v99);
          v105 = *v64++;
          *v106.i8 = vzip1_s8(v105, 0);
          v106.u64[1] = vzip2_s8(v105, 0);
          v100.i64[0] = vuzp2q_s16(v101, v104).u64[0];
          v107 = *v94++;
          *v108.i8 = vzip1_s8(v107, 0);
          v108.u64[1] = vzip2_s8(v107, 0);
          _S19 = *v314.i32;
          v109 = vsubq_f16(vcvtq_f16_u16(v106), v314);
          v110.i64[0] = 0x9000900090009000;
          v110.i64[1] = 0x9000900090009000;
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v109, v296), 0), v110));
          v106.i16[0] = result->i16[v111.u16[0]];
          *v104.i8 = vadd_f16(*v104.i8, *v100.i8);
          v112 = vzip1q_s16(v104, v104);
          v106.i16[1] = result->i16[v111.u16[1]];
          v106.i16[2] = result->i16[v111.u16[2]];
          v106.i16[3] = result->i16[v111.u16[3]];
          v106.i16[4] = result->i16[v111.u16[4]];
          v106.i16[5] = result->i16[v111.u16[5]];
          v106.i16[6] = result->i16[v111.u16[6]];
          v106.i16[7] = result->i16[v111.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v109, v296), 0), v110));
          v114.i16[0] = result->i16[v113.u16[0]];
          v114.i16[1] = result->i16[v113.u16[1]];
          v114.i16[2] = result->i16[v113.u16[2]];
          v114.i16[3] = result->i16[v113.u16[3]];
          v114.i16[4] = result->i16[v113.u16[4]];
          v114.i16[5] = result->i16[v113.u16[5]];
          v114.i16[6] = result->i16[v113.u16[6]];
          v114.i16[7] = result->i16[v113.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v109, v296), 0), v110));
          v116.i16[0] = result->i16[v115.u16[0]];
          v117 = vsubq_f16(vcvtq_f16_u16(v108), v314);
          v116.i16[1] = result->i16[v115.u16[1]];
          v116.i16[2] = result->i16[v115.u16[2]];
          v116.i16[3] = result->i16[v115.u16[3]];
          v116.i16[4] = result->i16[v115.u16[4]];
          v116.i16[5] = result->i16[v115.u16[5]];
          v116.i16[6] = result->i16[v115.u16[6]];
          v116.i16[7] = result->i16[v115.u16[7]];
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v117, v296), 0), v110));
          v102.i16[0] = result->i16[v118.u16[0]];
          v102.i16[1] = result->i16[v118.u16[1]];
          v102.i16[2] = result->i16[v118.u16[2]];
          v102.i16[3] = result->i16[v118.u16[3]];
          v102.i16[4] = result->i16[v118.u16[4]];
          v102.i16[5] = result->i16[v118.u16[5]];
          v102.i16[6] = result->i16[v118.u16[6]];
          v102.i16[7] = result->i16[v118.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v117, v296), 0), v110));
          v112.i16[0] = result->i16[v119.u16[0]];
          v112.i16[1] = result->i16[v119.u16[1]];
          v112.i16[2] = result->i16[v119.u16[2]];
          v112.i16[3] = result->i16[v119.u16[3]];
          v112.i16[4] = result->i16[v119.u16[4]];
          v112.i16[5] = result->i16[v119.u16[5]];
          v112.i16[6] = result->i16[v119.u16[6]];
          v112.i16[7] = result->i16[v119.u16[7]];
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v117, v296), 0), v110));
          v109.i16[0] = result->i16[v120.u16[0]];
          v109.i16[1] = result->i16[v120.u16[1]];
          v109.i16[2] = result->i16[v120.u16[2]];
          v109.i16[3] = result->i16[v120.u16[3]];
          v109.i16[4] = result->i16[v120.u16[4]];
          v109.i16[5] = result->i16[v120.u16[5]];
          v109.i16[6] = result->i16[v120.u16[6]];
          v109.i16[7] = result->i16[v120.u16[7]];
          v121 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v295), v114, v294), v116, v289);
          v122 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v288), v114, v287), v116, v286);
          v123 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v284), v114, v285), v106, v328);
          v124 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v295), v112, v294), v109, v289);
          v125 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v288), v112, v287), v109, v286);
          v126 = vmulq_n_f16(v109, v284);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, 0), v110));
          v128.i16[0] = *&v53[2 * v127.u16[0]];
          v128.i16[1] = *&v53[2 * v127.u16[1]];
          v128.i16[2] = *&v53[2 * v127.u16[2]];
          v128.i16[3] = *&v53[2 * v127.u16[3]];
          v128.i16[4] = *&v53[2 * v127.u16[4]];
          v128.i16[5] = *&v53[2 * v127.u16[5]];
          v128.i16[6] = *&v53[2 * v127.u16[6]];
          v128.i16[7] = *&v53[2 * v127.u16[7]];
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, 0), v110));
          v130.i16[0] = *&v53[2 * v129.u16[0]];
          v130.i16[1] = *&v53[2 * v129.u16[1]];
          v130.i16[2] = *&v53[2 * v129.u16[2]];
          v130.i16[3] = *&v53[2 * v129.u16[3]];
          v130.i16[4] = *&v53[2 * v129.u16[4]];
          v130.i16[5] = *&v53[2 * v129.u16[5]];
          v130.i16[6] = *&v53[2 * v129.u16[6]];
          v130.i16[7] = *&v53[2 * v129.u16[7]];
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v123, 0), v110));
          v132.i16[0] = *&v53[2 * v131.u16[0]];
          v132.i16[1] = *&v53[2 * v131.u16[1]];
          v132.i16[2] = *&v53[2 * v131.u16[2]];
          v132.i16[3] = *&v53[2 * v131.u16[3]];
          v132.i16[4] = *&v53[2 * v131.u16[4]];
          v132.i16[5] = *&v53[2 * v131.u16[5]];
          v132.i16[6] = *&v53[2 * v131.u16[6]];
          v132.i16[7] = *&v53[2 * v131.u16[7]];
          v133 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, 0), v110));
          v134.i16[0] = *&v53[2 * v133.u16[0]];
          v134.i16[1] = *&v53[2 * v133.u16[1]];
          v134.i16[2] = *&v53[2 * v133.u16[2]];
          v134.i16[3] = *&v53[2 * v133.u16[3]];
          v134.i16[4] = *&v53[2 * v133.u16[4]];
          v134.i16[5] = *&v53[2 * v133.u16[5]];
          v134.i16[6] = *&v53[2 * v133.u16[6]];
          v134.i16[7] = *&v53[2 * v133.u16[7]];
          v135 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v125, 0), v110));
          v136.i16[0] = *&v53[2 * v135.u16[0]];
          v136.i16[1] = *&v53[2 * v135.u16[1]];
          v136.i16[2] = *&v53[2 * v135.u16[2]];
          v136.i16[3] = *&v53[2 * v135.u16[3]];
          v136.i16[4] = *&v53[2 * v135.u16[4]];
          v136.i16[5] = *&v53[2 * v135.u16[5]];
          v136.i16[6] = *&v53[2 * v135.u16[6]];
          v136.i16[7] = *&v53[2 * v135.u16[7]];
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v126, v112, v285), v102, v328), 0), v110));
          _Q0.i16[0] = *&v53[2 * v137.u16[0]];
          _Q0.i16[1] = *&v53[2 * v137.u16[1]];
          _Q0.i16[2] = *&v53[2 * v137.u16[2]];
          _Q0.i16[3] = *&v53[2 * v137.u16[3]];
          _Q0.i16[4] = *&v53[2 * v137.u16[4]];
          _Q0.i16[5] = *&v53[2 * v137.u16[5]];
          _Q0.i16[6] = *&v53[2 * v137.u16[6]];
          _Q0.i16[7] = *&v53[2 * v137.u16[7]];
          *v62++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v128, v331), v130, v330), v132, v329), v54), v332)));
          if (v61)
          {
            v335.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v326, v128, v323), v130, v322), v132, v321), v325), v324), v325), v324)));
            v335.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v326, v128, v320), v130, v319), v132, v318)));
            vst2_s8(v61, v335);
            v61 += 16;
          }

          *v95++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v134, v331), v136, v330), _Q0, v329), v54), v332)));
          _S27 = v280;
          _S26 = v281;
          if (v96)
          {
            v138 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v326, v134, v320), v136, v319), _Q0, v318);
            *_Q0.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v326, v134, v323), v136, v322), _Q0, v321), v325), v324), v325), v324)));
            v139 = vmovn_s16(vcvtq_u16_f16(v138));
            vst2_s8(v96, _Q0);
            v96 += 16;
          }

          a7.i32[0] = v333;
          v93 += 8;
        }

        while (v93 < v10 - 7);
        v140 = &v63[v93];
        v141 = v10 & 0xFFFFFFF8;
        v24 = v278;
      }

      while (v141 < (v10 & 0xFFFFFFFE))
      {
        _Q0.i8[0] = v140[1];
        v142 = _Q0.u32[0] - a7.f32[0];
        v143 = LODWORD(v283);
        v144 = v283 * v142;
        LOBYTE(v143) = v64->i8[0];
        v145 = _S18 * (v143 - v40);
        v146 = (v283 * v142) + v145;
        v147 = 8191.0;
        if (v146 <= 8191.0)
        {
          v147 = (v283 * v142) + v145;
          if (v146 < 0.0)
          {
            v147 = 0.0;
          }
        }

        LOBYTE(v146) = *v140;
        v148 = LODWORD(v146) - a7.f32[0];
        v149 = (v282 * v142) + (v148 * v311);
        v150 = 8191.0;
        if ((v145 + v149) <= 8191.0)
        {
          v150 = v145 + v149;
          if ((v145 + v149) < 0.0)
          {
            v150 = 0.0;
          }
        }

        v151 = v313 * v148;
        v152 = (v313 * v148) + v145;
        v153 = 8191.0;
        if (v152 <= 8191.0)
        {
          v153 = v152;
          if (v152 < 0.0)
          {
            v153 = 0.0;
          }
        }

        LOBYTE(v152) = v64->i8[1];
        v154 = _S18 * (LODWORD(v152) - v40);
        v155 = 8191.0;
        if ((v144 + v154) <= 8191.0)
        {
          v155 = v144 + v154;
          if ((v144 + v154) < 0.0)
          {
            v155 = 0.0;
          }
        }

        v156 = 8191.0;
        if ((v149 + v154) <= 8191.0)
        {
          v156 = v149 + v154;
          if ((v149 + v154) < 0.0)
          {
            v156 = 0.0;
          }
        }

        v157 = v151 + v154;
        v158 = (v151 + v154) <= 8191.0;
        v159 = 8191.0;
        if (v158)
        {
          v159 = v157;
          if (v157 < 0.0)
          {
            v159 = 0.0;
          }
        }

        LOBYTE(v157) = v94->i8[0];
        v160 = _S18 * (LODWORD(v157) - v40);
        v161 = 8191.0;
        if ((v144 + v160) <= 8191.0)
        {
          v161 = v144 + v160;
          if ((v144 + v160) < 0.0)
          {
            v161 = 0.0;
          }
        }

        v162 = 8191.0;
        if ((v149 + v160) <= 8191.0)
        {
          v162 = v149 + v160;
          if ((v149 + v160) < 0.0)
          {
            v162 = 0.0;
          }
        }

        v163 = v151 + v160;
        v158 = (v151 + v160) <= 8191.0;
        v164 = 8191.0;
        if (v158)
        {
          v164 = v163;
          if (v163 < 0.0)
          {
            v164 = 0.0;
          }
        }

        LOBYTE(_S19) = v94->i8[1];
        v165 = _S18 * (LODWORD(_S19) - v40);
        v166 = v144 + v165;
        v158 = (v144 + v165) <= 8191.0;
        v167 = 8191.0;
        if (v158)
        {
          v167 = v166;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        v168 = _S28;
        v169 = v149 + v165;
        v158 = (v149 + v165) <= 8191.0;
        v170 = 8191.0;
        if (v158)
        {
          v170 = v169;
          if (v169 < 0.0)
          {
            v170 = 0.0;
          }
        }

        v171 = _S27;
        v172 = _S26;
        v173 = v151 + v165;
        v158 = (v151 + v165) <= 8191.0;
        v174 = 8191.0;
        if (v158)
        {
          v174 = v173;
          if (v173 < 0.0)
          {
            v174 = 0.0;
          }
        }

        _H2 = result->i16[llroundf(fminf(fmaxf(v147, 0.0), 8191.0))];
        __asm { FCVT            S5, H2 }

        _H2 = result->i16[llroundf(fminf(fmaxf(v150, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H6 = result->i16[llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H7 = result->i16[llroundf(fminf(fmaxf(v155, 0.0), 8191.0))];
        _H19 = result->i16[llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
        __asm
        {
          FCVT            S7, H7
          FCVT            S19, H19
        }

        _H0 = result->i16[llroundf(fminf(fmaxf(v159, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = result->i16[llroundf(fminf(fmaxf(v161, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H30 = result->i16[llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        __asm { FCVT            S30, H30 }

        _H17 = result->i16[llroundf(fminf(fmaxf(v164, 0.0), 8191.0))];
        __asm { FCVT            S17, H17 }

        _H23 = result->i16[llroundf(fminf(fmaxf(v167, 0.0), 8191.0))];
        _H31 = result->i16[llroundf(fminf(fmaxf(v170, 0.0), 8191.0))];
        __asm
        {
          FCVT            S23, H23
          FCVT            S31, H31
        }

        _H11 = result->i16[llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        __asm { FCVT            S11, H11 }

        v199 = ((v306 * _S2) + (_S5 * v309)) + (_S6 * v305);
        v200 = ((v301 * _S2) + (_S5 * v303)) + (_S6 * v299);
        v201 = ((v293 * _S2) + (_S5 * v297)) + (_S6 * v291);
        v202 = ((v306 * _S19) + (_S7 * v309)) + (_S0 * v305);
        v203 = ((v301 * _S19) + (_S7 * v303)) + (_S0 * v299);
        v204 = ((v293 * _S19) + (_S7 * v297)) + (_S0 * v291);
        v205 = ((v306 * _S30) + (_S1 * v309)) + (_S17 * v305);
        v206 = ((v301 * _S30) + (_S1 * v303)) + (_S17 * v299);
        v207 = ((v293 * _S30) + (_S1 * v297)) + (_S17 * v291);
        v208 = ((v306 * _S31) + (_S23 * v309)) + (_S11 * v305);
        v209 = ((v301 * _S31) + (_S23 * v303)) + (_S11 * v299);
        v210 = ((v293 * _S31) + (_S23 * v297)) + (_S11 * v291);
        LOWORD(_S0) = *&v53[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        __asm { FCVT            S17, H0 }

        LOWORD(_S0) = *&v53[2 * llroundf(fminf(fmaxf(v200, 0.0), 8191.0))];
        __asm { FCVT            S13, H0 }

        LOWORD(_S0) = *&v53[2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0))];
        __asm { FCVT            S14, H0 }

        _H0 = *&v53[2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0))];
        _H1 = *&v53[2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0))];
        _H2 = *&v53[2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0))];
        _H23 = *&v53[2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0))];
        _H30 = *&v53[2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0))];
        _H11 = *&v53[2 * llroundf(fminf(fmaxf(v207, 0.0), 8191.0))];
        _H5 = *&v53[2 * llroundf(fminf(fmaxf(v208, 0.0), 8191.0))];
        _H6 = *&v53[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        _H7 = *&v53[2 * llroundf(fminf(fmaxf(v210, 0.0), 8191.0))];
        _S27 = v171;
        _S26 = v172;
        v223 = (v171 * _S13) + (v172 * _S17);
        _S28 = v168;
        v224 = (v223 + (v168 * _S14)) + v44;
        v225 = v46;
        if (v224 <= v46)
        {
          v225 = v224;
          if (v224 < v44)
          {
            v225 = v27;
          }
        }

        v62->i8[0] = llroundf(v225);
        v40 = v292;
        if (v61)
        {
          v226 = v302;
          v227 = v298;
          v228 = v300;
          v229 = ((v302 + (_S17 * v279)) + (_S13 * v298)) + (_S14 * v300);
          v230 = v327;
          v231 = v315;
          if (v229 <= v327)
          {
            v230 = ((v302 + (_S17 * v279)) + (_S13 * v298)) + (_S14 * v300);
            if (v229 < v315)
            {
              v230 = v315;
            }
          }

          v232 = v316;
          v233 = v317;
          v234 = ((v302 + (_S17 * v316)) + (_S13 * v317)) + (_S14 * v334);
          *v61 = llroundf(v230);
          v235 = v327;
          v236 = v327;
          _S18 = v290;
          if (v234 <= v327)
          {
            v236 = v234;
            if (v234 < v315)
            {
              v236 = v315;
            }
          }

          v61[1] = llroundf(v236);
          v61 += 2;
          a7.i32[0] = v333;
        }

        else
        {
          v227 = v298;
          v228 = v300;
          v232 = v316;
          v233 = v317;
          a7.i32[0] = v333;
          _S18 = v290;
          v226 = v302;
          v231 = v315;
          v235 = v327;
        }

        v54 = v304;
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S2, H2
        }

        v240 = (((_S27 * _S1) + (_S26 * _S0)) + (v168 * _S2)) + v44;
        v241 = v46;
        if (v240 <= v46)
        {
          v241 = (((_S27 * _S1) + (_S26 * _S0)) + (v168 * _S2)) + v44;
          if (v240 < v44)
          {
            v241 = v27;
          }
        }

        v62->i8[1] = llroundf(v241);
        if (v61)
        {
          v242 = ((v226 + (_S0 * v279)) + (_S1 * v227)) + (_S2 * v228);
          v243 = v235;
          if (v242 <= v235)
          {
            v243 = ((v226 + (_S0 * v279)) + (_S1 * v227)) + (_S2 * v228);
            if (v242 < v231)
            {
              v243 = v231;
            }
          }

          v244 = ((v226 + (_S0 * v232)) + (_S1 * v233)) + (_S2 * v334);
          *v61 = llroundf(v243);
          v245 = v235;
          if (v244 <= v235)
          {
            v245 = v244;
            if (v244 < v231)
            {
              v245 = v231;
            }
          }

          v61[1] = llroundf(v245);
          v61 += 2;
        }

        __asm
        {
          FCVT            S0, H23
          FCVT            S1, H30
          FCVT            S2, H11
        }

        _S19 = (((_S27 * _S1) + (_S26 * _S0)) + (v168 * _S2)) + v44;
        v249 = v46;
        if (_S19 <= v46)
        {
          v249 = (((_S27 * _S1) + (_S26 * _S0)) + (v168 * _S2)) + v44;
          if (_S19 < v44)
          {
            v249 = v27;
          }
        }

        v95->i8[0] = llroundf(v249);
        if (v96)
        {
          _S19 = ((v226 + (_S0 * v279)) + (_S1 * v227)) + (_S2 * v228);
          v250 = v235;
          if (_S19 <= v235)
          {
            v250 = ((v226 + (_S0 * v279)) + (_S1 * v227)) + (_S2 * v228);
            if (_S19 < v231)
            {
              v250 = v231;
            }
          }

          v251 = ((v226 + (_S0 * v232)) + (_S1 * v233)) + (_S2 * v334);
          *v96 = llroundf(v250);
          v252 = v235;
          if (v251 <= v235)
          {
            v252 = v251;
            if (v251 < v231)
            {
              v252 = v231;
            }
          }

          v96[1] = llroundf(v252);
          v96 += 2;
        }

        __asm
        {
          FCVT            S0, H5
          FCVT            S1, H6
          FCVT            S2, H7
        }

        v255 = (((_S27 * _S1) + (_S26 * *_Q0.i32)) + (v168 * _S2)) + v44;
        v256 = v46;
        if (v255 <= v46)
        {
          v256 = (((_S27 * _S1) + (_S26 * *_Q0.i32)) + (v168 * _S2)) + v44;
          if (v255 < v44)
          {
            v256 = v27;
          }
        }

        v95->i8[1] = llroundf(v256);
        if (v96)
        {
          v257 = ((v226 + (*_Q0.i32 * v279)) + (_S1 * v227)) + (_S2 * v228);
          v258 = v235;
          if (v257 <= v235)
          {
            v258 = ((v226 + (*_Q0.i32 * v279)) + (_S1 * v227)) + (_S2 * v228);
            if (v257 < v231)
            {
              v258 = v231;
            }
          }

          *_Q0.i32 = ((v226 + (*_Q0.i32 * v232)) + (_S1 * v233)) + (_S2 * v334);
          *v96 = llroundf(v258);
          v259 = v235;
          if (*_Q0.i32 <= v235)
          {
            v259 = *_Q0.i32;
            if (*_Q0.i32 < v231)
            {
              v259 = v231;
            }
          }

          v96[1] = llroundf(v259);
          v96 += 2;
        }

        v141 += 2;
        v140 += 2;
        v64 = (v64 + 2);
        v94 = (v94 + 2);
        v62 = (v62 + 2);
        v95 = (v95 + 2);
      }

      v64 = &v90[v21];
      v63 += v22;
      v62 = &v91[v23];
      v61 = &v92[v24];
      v19 += 2;
    }

    while (v19 < v13);
  }

  if (v274 && v273)
  {
    if (v13 >= 1)
    {
      v260 = 0;
      v261 = (v274 + v270 * v271 + v272);
      do
      {
        result = memcpy(v18, v261, v10);
        v261 += v270;
        v18 += v275;
        ++v260;
      }

      while (v13 > v260);
    }
  }

  else if (v273 && v13 >= 1)
  {
    v262 = 0;
    v263 = vdupq_n_s64(v10 - 1);
    do
    {
      if (v10 >= 1)
      {
        v264 = 0;
        do
        {
          v265 = vdupq_n_s64(v264);
          v266 = vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v266, *v263.i8), *v263.i8).u8[0])
          {
            v18[v264] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v266, *&v263), *&v263).i8[1])
          {
            v18[v264 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v263, vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDDA0)))), *&v263).i8[2])
          {
            v18[v264 + 2] = -1;
            v18[v264 + 3] = -1;
          }

          v267 = vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v263, vuzp1_s16(v267, *&v263)).i32[1])
          {
            v18[v264 + 4] = -1;
          }

          if (vuzp1_s8(*&v263, vuzp1_s16(v267, *&v263)).i8[5])
          {
            v18[v264 + 5] = -1;
          }

          if (vuzp1_s8(*&v263, vuzp1_s16(*&v263, vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDD80))))).i8[6])
          {
            v18[v264 + 6] = -1;
            v18[v264 + 7] = -1;
          }

          v268 = vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v268, *v263.i8), *v263.i8).u8[0])
          {
            v18[v264 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v268, *&v263), *&v263).i8[1])
          {
            v18[v264 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v263, vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDD60)))), *&v263).i8[2])
          {
            v18[v264 + 10] = -1;
            v18[v264 + 11] = -1;
          }

          v269 = vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v263, vuzp1_s16(v269, *&v263)).i32[1])
          {
            v18[v264 + 12] = -1;
          }

          if (vuzp1_s8(*&v263, vuzp1_s16(v269, *&v263)).i8[5])
          {
            v18[v264 + 13] = -1;
          }

          if (vuzp1_s8(*&v263, vuzp1_s16(*&v263, vmovn_s64(vcgeq_u64(v263, vorrq_s8(v265, xmmword_18FECDD40))))).i8[6])
          {
            v18[v264 + 14] = -1;
            v18[v264 + 15] = -1;
          }

          v264 += 16;
        }

        while (((v10 + 15) & 0xFFFFFFFFFFFFFFF0) != v264);
      }

      v18 += v275;
      ++v262;
    }

    while (v13 > v262);
  }

  v277[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (v44 + v28 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 2 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = result;
  v198 = *(result + 36);
  v11 = 2 * *result;
  v12 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v13 = result[14];
  v15 = result[12];
  v14 = result[13];
  v16 = v14 * a2 / v11;
  v17 = result[15] + 2 * v16;
  v18 = 2 * ((v14 + v14 * a2) / v11 - v16);
  v19 = result[7];
  v20 = result[8];
  v21 = result[16];
  v22 = result[17];
  v23 = v20[2];
  v199 = v19[2];
  v24 = v22[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v17 + v13);
  if (v18 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = v15 & 0xFFFFFFFE;
    v30 = *v20;
    v31 = v20[1];
    v32 = *v22;
    v33 = v22[1];
    LOWORD(a5) = *(v28 + 140);
    LOWORD(a6) = *(v28 + 142);
    LOWORD(v6) = *(v28 + 144);
    LOWORD(v7) = *(v28 + 146);
    LOWORD(v8) = *(v28 + 148);
    v34 = 8191.0 / *(v28 + 128);
    v35 = LODWORD(a5);
    v36 = LODWORD(a6);
    v37 = v34 * *v28;
    v215 = v34 * *(v28 + 16);
    v216 = v34 * *(v28 + 8);
    v38 = v34 * *(v28 + 20);
    *&v39 = v34 * *(v28 + 28);
    v213 = *&v39;
    v214 = v38;
    v40 = v6;
    v41 = v7;
    v42 = v8;
    LOWORD(v39) = *(v28 + 150);
    v43 = v39;
    LOWORD(v39) = *(v28 + 152);
    v44 = v39;
    v45 = *(v28 + 36);
    v46 = *(v28 + 40);
    v48 = *(v28 + 44);
    v47 = *(v28 + 48);
    v49 = *(v28 + 52);
    v222 = *(v28 + 60);
    v223 = *(v28 + 56);
    v50 = *(v28 + 72);
    v220 = *(v28 + 68);
    v221 = *(v28 + 64);
    v210 = *(v28 + 76);
    v211 = v50;
    v208 = *(v28 + 84);
    v209 = *(v28 + 80);
    v207 = *(v28 + 88);
    v205 = *(v28 + 92);
    v203 = *(v28 + 96);
    _S1 = *(v28 + 104);
    v200 = _S1;
    v201 = *(v28 + 100);
    result = (v28 + 164);
    v52 = v28 + 16548;
    v55 = v21;
    v53 = *v21;
    v54 = v55[1];
    _ZF = v54 == 0;
    v57 = (v54 + v33 * v17 + v13);
    if (_ZF)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57;
    }

    v59 = (v53 + v32 * v17 + v13);
    v60 = v19[1];
    v61 = (*v19 + v30 * v12 + v198);
    v62 = v60 + v31 * (v12 / 2) + v198;
    v212 = v49;
    v218 = v46;
    v219 = v45;
    v206 = v37;
    v204 = v36;
    v202 = v35;
    v217 = v48;
    do
    {
      v63 = &v61[v30];
      v64 = &v59[v32];
      v65 = &v58[v33];
      if (v29 >= 1)
      {
        v66 = 0;
        v67 = &v61[v30];
        v68 = &v58[v33];
        v69 = &v59[v32];
        do
        {
          LOBYTE(_S1) = *(v62 + v66 + 1);
          v70 = LODWORD(_S1) - v36;
          v71 = LODWORD(v216);
          v72 = v216 * v70;
          LOBYTE(v71) = *v61;
          v73 = v37 * (v71 - v35);
          v74 = (v216 * v70) + v73;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = (v216 * v70) + v73;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          LOBYTE(v50) = *(v62 + v66);
          v76 = LODWORD(v50) - v36;
          v77 = (v214 * v70) + (v76 * v215);
          v78 = 8191.0;
          if ((v73 + v77) <= 8191.0)
          {
            v78 = v73 + v77;
            if ((v73 + v77) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v213 * v76;
          v80 = (v213 * v76) + v73;
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          LOBYTE(v80) = v61[1];
          v82 = v37 * (LODWORD(v80) - v35);
          v83 = 8191.0;
          if ((v72 + v82) <= 8191.0)
          {
            v83 = v72 + v82;
            if ((v72 + v82) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = 8191.0;
          if ((v77 + v82) <= 8191.0)
          {
            v84 = v77 + v82;
            if ((v77 + v82) < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v79 + v82;
          v86 = 8191.0;
          if (v85 <= 8191.0)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          LOBYTE(v85) = *v67;
          v87 = LODWORD(v85) - v35;
          v88 = v37 * v87;
          v89 = 8191.0;
          if ((v72 + (v37 * v87)) <= 8191.0)
          {
            v89 = v72 + (v37 * v87);
            if (v89 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = 8191.0;
          if ((v77 + v88) <= 8191.0)
          {
            v90 = v77 + v88;
            if ((v77 + v88) < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v79 + v88;
          v92 = (v79 + v88) <= 8191.0;
          v93 = 8191.0;
          if (v92)
          {
            v93 = v91;
            if (v91 < 0.0)
            {
              v93 = 0.0;
            }
          }

          LOBYTE(v87) = v67[1];
          v94 = v37 * (LODWORD(v87) - v35);
          v95 = v72 + v94;
          v92 = (v72 + v94) <= 8191.0;
          v96 = 8191.0;
          if (v92)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          v97 = v47;
          v98 = v77 + v94;
          v92 = (v77 + v94) <= 8191.0;
          v99 = 8191.0;
          if (v92)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          v100 = v43;
          v101 = v79 + v94;
          v102 = 8191.0;
          if (v101 <= 8191.0)
          {
            v102 = v101;
            if (v101 < 0.0)
            {
              v102 = 0.0;
            }
          }

          _H1 = *(result + llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          _H1 = *(result + llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H5 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H2 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          _H6 = *(result + llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S6, H6
          }

          _H26 = *(result + llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H3 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H19 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H7 = *(result + llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          _H24 = *(result + llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm
          {
            FCVT            S7, H7
            FCVT            S24, H24
          }

          _H25 = *(result + llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v130 = ((v210 * _S1) + (_S4 * v211)) + (_S5 * v209);
          v131 = ((v207 * _S1) + (_S4 * v208)) + (_S5 * v205);
          _S1 = ((v201 * _S1) + (_S4 * v203)) + (_S5 * v200);
          v133 = ((v210 * _S6) + (_S2 * v211)) + (_S26 * v209);
          v134 = ((v207 * _S6) + (_S2 * v208)) + (_S26 * v205);
          v135 = ((v201 * _S6) + (_S2 * v203)) + (_S26 * v200);
          v136 = ((v210 * _S3) + (_S27 * v211)) + (_S19 * v209);
          v137 = ((v207 * _S3) + (_S27 * v208)) + (_S19 * v205);
          v138 = ((v201 * _S3) + (_S27 * v203)) + (_S19 * v200);
          v139 = ((v210 * _S24) + (_S7 * v211)) + (_S25 * v209);
          v140 = ((v207 * _S24) + (_S7 * v208)) + (_S25 * v205);
          v141 = ((v201 * _S24) + (_S7 * v203)) + (_S25 * v200);
          LOWORD(_S7) = *(v52 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S27, H7 }

          LOWORD(_S7) = *(v52 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S28, H7 }

          LOWORD(_S1) = *(v52 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S29, H1 }

          _H19 = *(v52 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          _H25 = *(v52 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          _H26 = *(v52 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          _H7 = *(v52 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          _H2 = *(v52 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          _H24 = *(v52 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          _H4 = *(v52 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          _H5 = *(v52 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          _H6 = *(v52 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          v154 = (((v218 * _S28) + (v219 * _S27)) + (v217 * _S29)) + v40;
          v155 = v42;
          if (v154 <= v42)
          {
            v155 = (((v218 * _S28) + (v219 * _S27)) + (v217 * _S29)) + v40;
            if (v154 < v40)
            {
              v155 = v40;
            }
          }

          *v59 = llroundf(v155);
          v43 = v100;
          if (v58)
          {
            v47 = v97;
            v156 = v41 + (_S27 * v97);
            v157 = v212;
            v158 = (v156 + (_S28 * v212)) + (_S29 * v223);
            v159 = v44;
            if (v158 <= v44)
            {
              v159 = v158;
              if (v158 < v43)
              {
                v159 = v43;
              }
            }

            v160 = ((v41 + (_S27 * v222)) + (_S28 * v221)) + (_S29 * v220);
            *v58 = llroundf(v159);
            v161 = v44;
            v35 = v202;
            v36 = v204;
            v37 = v206;
            if (v160 <= v44)
            {
              v161 = v160;
              if (v160 < v43)
              {
                v161 = v43;
              }
            }

            v58[1] = llroundf(v161);
            v58 += 2;
            v163 = v217;
            v162 = v218;
          }

          else
          {
            v35 = v202;
            v36 = v204;
            v37 = v206;
            v163 = v217;
            v162 = v218;
            v47 = v97;
            v157 = v212;
          }

          __asm
          {
            FCVT            S1, H19
            FCVT            S19, H25
            FCVT            S25, H26
          }

          v167 = (((v162 * _S19) + (v219 * _S1)) + (v163 * _S25)) + v40;
          v168 = v42;
          if (v167 <= v42)
          {
            v168 = (((v162 * _S19) + (v219 * _S1)) + (v163 * _S25)) + v40;
            if (v167 < v40)
            {
              v168 = v40;
            }
          }

          v59[1] = llroundf(v168);
          if (v58)
          {
            v169 = ((v41 + (_S1 * v47)) + (_S19 * v157)) + (_S25 * v223);
            v170 = v44;
            if (v169 <= v44)
            {
              v170 = ((v41 + (_S1 * v47)) + (_S19 * v157)) + (_S25 * v223);
              if (v169 < v43)
              {
                v170 = v43;
              }
            }

            v171 = ((v41 + (_S1 * v222)) + (_S19 * v221)) + (_S25 * v220);
            *v58 = llroundf(v170);
            v172 = v44;
            if (v171 <= v44)
            {
              v172 = v171;
              if (v171 < v43)
              {
                v172 = v43;
              }
            }

            v58[1] = llroundf(v172);
            v58 += 2;
          }

          __asm
          {
            FCVT            S1, H7
            FCVT            S2, H2
            FCVT            S7, H24
          }

          v176 = (((v162 * _S2) + (v219 * _S1)) + (v163 * _S7)) + v40;
          v177 = v42;
          if (v176 <= v42)
          {
            v177 = (((v162 * _S2) + (v219 * _S1)) + (v163 * _S7)) + v40;
            if (v176 < v40)
            {
              v177 = v40;
            }
          }

          *v69 = llroundf(v177);
          if (v68)
          {
            v178 = ((v41 + (_S1 * v47)) + (_S2 * v157)) + (_S7 * v223);
            v179 = v44;
            if (v178 <= v44)
            {
              v179 = ((v41 + (_S1 * v47)) + (_S2 * v157)) + (_S7 * v223);
              if (v178 < v43)
              {
                v179 = v43;
              }
            }

            v180 = ((v41 + (_S1 * v222)) + (_S2 * v221)) + (_S7 * v220);
            *v68 = llroundf(v179);
            v181 = v44;
            if (v180 <= v44)
            {
              v181 = v180;
              if (v180 < v43)
              {
                v181 = v43;
              }
            }

            v68[1] = llroundf(v181);
            v68 += 2;
          }

          __asm
          {
            FCVT            S1, H4
            FCVT            S2, H5
            FCVT            S4, H6
          }

          v50 = (((v162 * _S2) + (v219 * _S1)) + (v163 * _S4)) + v40;
          v184 = v42;
          if (v50 <= v42)
          {
            v184 = (((v162 * _S2) + (v219 * _S1)) + (v163 * _S4)) + v40;
            if (v50 < v40)
            {
              v184 = v40;
            }
          }

          v69[1] = llroundf(v184);
          if (v68)
          {
            v185 = ((v41 + (_S1 * v47)) + (_S2 * v157)) + (_S4 * v223);
            v186 = v44;
            if (v185 <= v44)
            {
              v186 = ((v41 + (_S1 * v47)) + (_S2 * v157)) + (_S4 * v223);
              if (v185 < v43)
              {
                v186 = v43;
              }
            }

            v50 = v221;
            _S1 = ((v41 + (_S1 * v222)) + (_S2 * v221)) + (_S4 * v220);
            *v68 = llroundf(v186);
            v187 = v44;
            if (_S1 <= v44)
            {
              v187 = _S1;
              if (_S1 < v43)
              {
                v187 = v43;
              }
            }

            v68[1] = llroundf(v187);
            v68 += 2;
          }

          v61 += 2;
          v67 += 2;
          v59 += 2;
          v69 += 2;
          v66 += 2;
        }

        while (v66 < v29);
      }

      v61 = &v63[v30];
      v62 += v31;
      v59 = &v64[v32];
      v58 = &v65[v33];
      v27 += 2;
    }

    while (v27 < v18);
  }

  if (v199 && v25)
  {
    if (v18 >= 1)
    {
      v188 = 0;
      v189 = (v199 + v23 * v12 + v198);
      do
      {
        result = memcpy(v26, v189, v15);
        v189 += v23;
        v26 += v24;
        ++v188;
      }

      while (v18 > v188);
    }
  }

  else if (v25 && v18 >= 1)
  {
    v190 = 0;
    v191 = vdupq_n_s64(v15 - 1);
    do
    {
      if (v15 >= 1)
      {
        v192 = 0;
        do
        {
          v193 = vdupq_n_s64(v192);
          v194 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v194, *v191.i8), *v191.i8).u8[0])
          {
            v26[v192] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v194, *&v191), *&v191).i8[1])
          {
            v26[v192 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDDA0)))), *&v191).i8[2])
          {
            v26[v192 + 2] = -1;
            v26[v192 + 3] = -1;
          }

          v195 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v191, vuzp1_s16(v195, *&v191)).i32[1])
          {
            v26[v192 + 4] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(v195, *&v191)).i8[5])
          {
            v26[v192 + 5] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD80))))).i8[6])
          {
            v26[v192 + 6] = -1;
            v26[v192 + 7] = -1;
          }

          v196 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v196, *v191.i8), *v191.i8).u8[0])
          {
            v26[v192 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v196, *&v191), *&v191).i8[1])
          {
            v26[v192 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD60)))), *&v191).i8[2])
          {
            v26[v192 + 10] = -1;
            v26[v192 + 11] = -1;
          }

          v197 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v191, vuzp1_s16(v197, *&v191)).i32[1])
          {
            v26[v192 + 12] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(v197, *&v191)).i8[5])
          {
            v26[v192 + 13] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD40))))).i8[6])
          {
            v26[v192 + 14] = -1;
            v26[v192 + 15] = -1;
          }

          v192 += 16;
        }

        while (((v15 + 15) & 0xFFFFFFFFFFFFFFF0) != v192);
      }

      v26 += v24;
      ++v190;
    }

    while (v18 > v190);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (v44 + v28 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 2 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

void *vt_Copy_420vf_rgb_444vf_neon_fp16_GCD(void *result, uint64_t a2, int16x8_t _Q0, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v14 = result;
  v15 = 2 * *result;
  v170 = *(result + 44) + 2 * (*(result + 28) * a2 / v15);
  v171 = *(result + 36);
  v16 = result[14];
  v18 = result[12];
  v17 = result[13];
  v19 = v17 * a2;
  v20 = v17 * a2 / v15;
  v21 = result[15] + 2 * v20;
  v22 = 2 * ((v17 + v19) / v15 - v20);
  v23 = result[7];
  v24 = result[8];
  v25 = result[16];
  v26 = result[17];
  v27 = v24[2];
  v172 = v23[2];
  v28 = v26[2];
  v29 = v25[2];
  v30 = (v29 + v28 * v21 + v16);
  if (v22 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = *v24;
    v34 = v24[1];
    v35 = *v26;
    v36 = v26[1];
    v37 = v32[17].u16[2];
    v38 = v32[17].u16[3];
    v11.i32[0] = v32[3].i32[1];
    v39 = v32[18].u16[0];
    v40 = v32[18].u16[1];
    v41 = v32[18].u16[2];
    v42 = v32[18].u16[3];
    v43 = v32[19].u16[0];
    _S1 = v32[4].f32[1];
    _S28 = v32[5].f32[0];
    _S2 = v32[5].f32[1];
    _S4 = v32[6].f32[0];
    _S5 = v32[6].f32[1];
    _Q26.i32[0] = v32[7].i32[0];
    _Q27.i32[0] = v32[7].i32[1];
    _Q0.i32[0] = v32[8].i32[0];
    _S13 = v32[8].f32[1];
    v52 = v37;
    *v12.i16 = v37;
    result = (v18 & 0xFFFFFFFE);
    v53 = v32[17].u32[0] / v32[16].u32[0];
    v181 = v38;
    _S19 = v53 * v32->f32[0];
    v55 = v39;
    v56 = v40;
    v57 = v41;
    v58 = v42;
    v59 = v43;
    v60 = vdupq_lane_s16(v12, 0);
    __asm { FCVT            H8, S19 }

    v66 = -v38;
    v11.i32[1] = v32[1].i32[0];
    *a9.f32 = vmul_n_f32(*v11.f32, v53);
    *v11.f32 = vmul_n_f32(v32[2], v53);
    v67 = vcvt_f16_f32(v11);
    v179 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    v176 = vmulq_n_f16(v179, v66);
    v177 = vdupq_lane_s32(v67, 0);
    _Q7 = vmulq_n_f16(v177, v66);
    v175 = _Q7;
    __asm
    {
      FCVT            H10, S1
      FCVT            H7, S28
    }

    *v67.i16 = v39;
    v69 = vdupq_lane_s16(v67, 0);
    *v67.i16 = v40;
    v188 = vdupq_lane_s16(v67, 0);
    *v67.i16 = v41;
    v70 = vdupq_lane_s16(v67, 0);
    *v67.i16 = v42;
    v71 = vdupq_lane_s16(v67, 0);
    *v67.i16 = v43;
    v186 = vdupq_lane_s16(v67, 0);
    v187 = v71;
    v74 = v25;
    v72 = *v25;
    v73 = v74[1];
    if (v73)
    {
      v75 = (v73 + v36 * v21 + v16);
    }

    else
    {
      v75 = 0;
    }

    v76 = (v72 + v35 * v21 + v16);
    v77 = *v23;
    v78 = (v23[1] + v34 * (v170 / 2) + v171);
    v79 = (v77 + v33 * v170 + v171);
    __asm { FCVT            H12, S2 }

    v189 = _S12;
    v194 = _S4;
    __asm { FCVT            H4, S4 }

    v185 = _H4;
    v193 = _S5;
    __asm { FCVT            H4, S5 }

    v184 = _H4;
    v192 = *_Q26.i32;
    __asm { FCVT            H4, S26 }

    v183 = _H4;
    v191 = *_Q27.i32;
    __asm { FCVT            H4, S27 }

    v182 = _H4;
    v190 = *_Q0.i32;
    __asm
    {
      FCVT            H12, S0
      FCVT            H0, S13
    }

    v85.i32[0] = a9.i32[1];
    v180 = a9.f32[0];
    v86.i32[0] = v11.i32[1];
    v173 = v11.f32[1];
    v178 = v11.f32[0];
    v174 = a9.f32[1];
    do
    {
      v87 = v79 + v33;
      v88 = v76 + v35;
      v89 = &v75[v36];
      if (v18 < 8)
      {
        v113 = 0;
        v93 = &v75[v36];
        v92 = v76 + v35;
        v112 = v78;
        v91 = (v79 + v33);
      }

      else
      {
        v90 = 0;
        v91 = (v79 + v33);
        v92 = v76 + v35;
        v93 = &v75[v36];
        do
        {
          v94 = *&v78[v90];
          *v95.i8 = vzip1_s8(v94, 0);
          v95.u64[1] = vzip2_s8(v94, 0);
          v96 = vcvtq_f16_u16(v95);
          v97 = vmlaq_f16(v176, v179, v96);
          v98 = vmlaq_f16(v175, v177, v96);
          v99 = vtrn2q_s16(v97, v97);
          v100 = vtrn1q_s16(v97, v97);
          v101 = vuzp1q_s16(v98, _Q0);
          *v101.i8 = vadd_f16(*v101.i8, *&vuzp2q_s16(v98, _Q0));
          v102 = vzip1q_s16(v101, v101);
          v103 = *v79++;
          *v97.i8 = vzip1_s8(v103, 0);
          v97.u64[1] = vzip2_s8(v103, 0);
          v104 = *v91++;
          v105 = v104;
          v106 = vsubq_f16(vcvtq_f16_u16(v97), v60);
          v107 = vmlaq_n_f16(v99, v106, _H8);
          v108 = vmlaq_n_f16(v102, v106, _H8);
          v109 = vmlaq_n_f16(v100, v106, _H8);
          *v76++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, v107, *&_Q10), v108, *_Q7.i16), v109, *&v189), v69), v70)));
          if (v75)
          {
            v195.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v188, v107, v185), v108, v184), v109, v183), v187), v186), v187), v186)));
            v195.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v188, v107, v182), v108, _H12), v109, *_Q0.i16)));
            vst2_s8(v75, v195);
            v75 += 16;
          }

          *v110.i8 = vzip1_s8(v105, 0);
          v110.u64[1] = vzip2_s8(v105, 0);
          v86 = vsubq_f16(vcvtq_f16_u16(v110), v60);
          _Q27 = vmlaq_n_f16(v99, v86, _H8);
          v111 = vmlaq_n_f16(v102, v86, _H8);
          _Q26 = vmlaq_n_f16(v100, v86, _H8);
          v85.i32[0] = v189;
          *v86.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, _Q27, *&_Q10), v111, *_Q7.i16), _Q26, *&v189), v69), v70)));
          *v92 = v86.i64[0];
          v92 += 8;
          if (v93)
          {
            v85 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v188, _Q27, v182), v111, _H12), _Q26, *_Q0.i16);
            v196.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v188, _Q27, v185), v111, v184), _Q26, v183), v187), v186), v187), v186)));
            v86 = vcvtq_u16_f16(v85);
            v196.val[1] = vmovn_s16(v86);
            vst2_s8(v93, v196);
            v93 += 16;
          }

          v90 += 8;
        }

        while (v90 < v18 - 7);
        v112 = &v78[v90];
        v113 = v18 & 0xFFFFFFF8;
      }

      while (v113 < result)
      {
        v114 = v70;
        v115 = _Q7;
        v116 = _Q10;
        v117 = v60;
        v118 = _S13;
        v86.i8[0] = *v112;
        *&v119 = v86.u32[0] - v181;
        v85.i8[0] = v112[1];
        v120 = v85.u32[0] - v181;
        v121 = v174 * v120;
        v122 = (v173 * v120) + (*&v119 * v178);
        *v85.i32 = v180;
        v123 = v180 * *&v119;
        LOBYTE(v119) = v79->i8[0];
        *v86.i32 = _S19 * (v119 - v52);
        v124 = v121 + *v86.i32;
        v125 = *v86.i32 + v122;
        v126 = v123 + *v86.i32;
        v127 = (((_S28 * (*v86.i32 + v122)) + (_S1 * (v121 + *v86.i32))) + (_S2 * (v123 + *v86.i32))) + v55;
        v128 = v57;
        if (v127 <= v57)
        {
          v128 = (((_S28 * (*v86.i32 + v122)) + (_S1 * (v121 + *v86.i32))) + (_S2 * (v123 + *v86.i32))) + v55;
          if (v127 < v55)
          {
            v128 = v55;
          }
        }

        LOBYTE(v127) = v79->i8[1];
        _Q27.i8[0] = v91->i8[0];
        _Q26.i8[0] = v91->i8[1];
        v76->i8[0] = llroundf(v128);
        if (v75)
        {
          v129 = ((v56 + (v124 * v194)) + (v125 * v193)) + (v126 * v192);
          v130 = v59;
          if (v129 <= v59)
          {
            v130 = ((v56 + (v124 * v194)) + (v125 * v193)) + (v126 * v192);
            if (v129 < v58)
            {
              v130 = v58;
            }
          }

          *v85.i32 = v190;
          v131 = ((v56 + (v124 * v191)) + (v125 * v190)) + (v126 * v118);
          _S13 = v118;
          *v75 = llroundf(v130);
          v132 = v59;
          if (v131 <= v59)
          {
            if (v131 < v58)
            {
              v132 = v58;
            }

            else
            {
              v132 = v131;
            }
          }

          v75[1] = llroundf(v132);
          v75 += 2;
        }

        else
        {
          _S13 = v118;
        }

        v60 = v117;
        v133 = _S19 * (LODWORD(v127) - v52);
        v134 = v121 + v133;
        v135 = v122 + v133;
        v136 = v123 + v133;
        v137 = (((_S28 * (v122 + v133)) + (_S1 * (v121 + v133))) + (_S2 * (v123 + v133))) + v55;
        v138 = v57;
        if (v137 <= v57)
        {
          v138 = (((_S28 * (v122 + v133)) + (_S1 * (v121 + v133))) + (_S2 * (v123 + v133))) + v55;
          if (v137 < v55)
          {
            v138 = v55;
          }
        }

        v76->i8[1] = llroundf(v138);
        if (v75)
        {
          v139 = ((v56 + (v134 * v194)) + (v135 * v193)) + (v136 * v192);
          v140 = v59;
          if (v139 <= v59)
          {
            v140 = ((v56 + (v134 * v194)) + (v135 * v193)) + (v136 * v192);
            if (v139 < v58)
            {
              v140 = v58;
            }
          }

          *v85.i32 = v190;
          v141 = ((v56 + (v134 * v191)) + (v135 * v190)) + (v136 * _S13);
          *v75 = llroundf(v140);
          v142 = v59;
          if (v141 <= v59)
          {
            if (v141 < v58)
            {
              v142 = v58;
            }

            else
            {
              v142 = v141;
            }
          }

          v75[1] = llroundf(v142);
          v75 += 2;
        }

        _Q10 = v116;
        v143 = _S19 * (_Q27.u32[0] - v52);
        v144 = v121 + v143;
        v145 = v122 + v143;
        *_Q27.i32 = v123 + v143;
        v146 = (((_S28 * (v122 + v143)) + (_S1 * (v121 + v143))) + (_S2 * (v123 + v143))) + v55;
        v147 = v57;
        _Q7 = v115;
        if (v146 <= v57)
        {
          v147 = (((_S28 * (v122 + v143)) + (_S1 * (v121 + v143))) + (_S2 * (v123 + v143))) + v55;
          if (v146 < v55)
          {
            v147 = v55;
          }
        }

        *v92 = llroundf(v147);
        v70 = v114;
        if (v93)
        {
          v148 = ((v56 + (v144 * v194)) + (v145 * v193)) + (*_Q27.i32 * v192);
          v149 = v59;
          if (v148 <= v59)
          {
            v149 = ((v56 + (v144 * v194)) + (v145 * v193)) + (*_Q27.i32 * v192);
            if (v148 < v58)
            {
              v149 = v58;
            }
          }

          *v85.i32 = v190;
          v150 = ((v56 + (v144 * v191)) + (v145 * v190)) + (*_Q27.i32 * _S13);
          *v93 = llroundf(v149);
          v151 = v59;
          if (v150 <= v59)
          {
            if (v150 < v58)
            {
              v151 = v58;
            }

            else
            {
              v151 = v150;
            }
          }

          v93[1] = llroundf(v151);
          v93 += 2;
        }

        v152 = _S19 * (_Q26.u32[0] - v52);
        v153 = v121 + v152;
        v154 = v122 + v152;
        *_Q26.i32 = v123 + v152;
        *v86.i32 = ((_S28 * (v122 + v152)) + (_S1 * (v121 + v152))) + (_S2 * (v123 + v152));
        v155 = v57;
        if ((*v86.i32 + v55) <= v57)
        {
          v155 = *v86.i32 + v55;
          if ((*v86.i32 + v55) < v55)
          {
            v155 = v55;
          }
        }

        v92[1] = llroundf(v155);
        if (v93)
        {
          v156 = ((v56 + (v153 * v194)) + (v154 * v193)) + (*_Q26.i32 * v192);
          v157 = v59;
          if (v156 <= v59)
          {
            v157 = ((v56 + (v153 * v194)) + (v154 * v193)) + (*_Q26.i32 * v192);
            if (v156 < v58)
            {
              v157 = v58;
            }
          }

          *v85.i32 = v190;
          *v86.i32 = (v56 + (v153 * v191)) + (v154 * v190);
          v158 = *v86.i32 + (*_Q26.i32 * _S13);
          *v93 = llroundf(v157);
          v159 = v59;
          if (v158 <= v59)
          {
            v159 = *v86.i32 + (*_Q26.i32 * _S13);
            if (v158 < v58)
            {
              v159 = v58;
            }
          }

          v93[1] = llroundf(v159);
          v93 += 2;
        }

        v113 += 2;
        v112 += 2;
        v79 = (v79 + 2);
        v91 = (v91 + 2);
        v76 = (v76 + 2);
        v92 += 2;
      }

      v79 = &v87[v33];
      v78 += v34;
      v76 = &v88[v35];
      v75 = &v89[v36];
      v31 += 2;
    }

    while (v31 < v22);
  }

  if (v172 && v29)
  {
    if (v22 >= 1)
    {
      v160 = 0;
      v161 = (v172 + v27 * v170 + v171);
      do
      {
        result = memcpy(v30, v161, v18);
        v161 += v27;
        v30 += v28;
        ++v160;
      }

      while (v22 > v160);
    }
  }

  else if (v29 && v22 >= 1)
  {
    v162 = 0;
    v163 = vdupq_n_s64(v18 - 1);
    do
    {
      if (v18 >= 1)
      {
        v164 = 0;
        do
        {
          v165 = vdupq_n_s64(v164);
          v166 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v166, *v163.i8), *v163.i8).u8[0])
          {
            v30[v164] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v166, *&v163), *&v163).i8[1])
          {
            v30[v164 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDDA0)))), *&v163).i8[2])
          {
            v30[v164 + 2] = -1;
            v30[v164 + 3] = -1;
          }

          v167 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v163, vuzp1_s16(v167, *&v163)).i32[1])
          {
            v30[v164 + 4] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(v167, *&v163)).i8[5])
          {
            v30[v164 + 5] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD80))))).i8[6])
          {
            v30[v164 + 6] = -1;
            v30[v164 + 7] = -1;
          }

          v168 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v168, *v163.i8), *v163.i8).u8[0])
          {
            v30[v164 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v168, *&v163), *&v163).i8[1])
          {
            v30[v164 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD60)))), *&v163).i8[2])
          {
            v30[v164 + 10] = -1;
            v30[v164 + 11] = -1;
          }

          v169 = vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v163, vuzp1_s16(v169, *&v163)).i32[1])
          {
            v30[v164 + 12] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(v169, *&v163)).i8[5])
          {
            v30[v164 + 13] = -1;
          }

          if (vuzp1_s8(*&v163, vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, vorrq_s8(v165, xmmword_18FECDD40))))).i8[6])
          {
            v30[v164 + 14] = -1;
            v30[v164 + 15] = -1;
          }

          v164 += 16;
        }

        while (((v18 + 15) & 0xFFFFFFFFFFFFFFF0) != v164);
      }

      v30 += v28;
      ++v162;
    }

    while (v22 > v162);
  }

  *(v14 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (v44 + v28 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 2 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

_BYTE *vt_Copy_420vf_rgb_444vf_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v16 = *(a1 + 36);
  v17 = 2 * *a1;
  v18 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v17);
  result = a1[14];
  v20 = a1[16];
  v22 = a1[12];
  v21 = a1[13];
  v23 = v21 * a2 / v17;
  v24 = a1[15] + 2 * v23;
  v25 = 2 * ((v21 + v21 * a2) / v17 - v23);
  v26 = a1[7];
  v27 = a1[8];
  v28 = a1[17];
  v29 = v27[2];
  v30 = v26[2];
  v31 = v28[2];
  v32 = v20[2];
  v33 = &result[v32 + v31 * v24];
  if (v25 >= 1)
  {
    v34 = 0;
    v35 = a1[19];
    v36 = v22 & 0xFFFFFFFE;
    v37 = *v27;
    v38 = v27[1];
    v39 = *v28;
    v40 = v28[1];
    LOWORD(a5) = *(v35 + 140);
    LOWORD(a6) = *(v35 + 142);
    v41 = *(v35 + 136) / *(v35 + 128);
    v42 = LODWORD(a5);
    v43 = LODWORD(a6);
    v44 = v41 * *v35;
    v45 = v41 * *(v35 + 8);
    v46 = v41 * *(v35 + 16);
    v47 = v41 * *(v35 + 20);
    v48 = *(v35 + 28);
    v49 = v41 * v48;
    LOWORD(v48) = *(v35 + 144);
    v50 = LODWORD(v48);
    LOWORD(v9) = *(v35 + 146);
    v51 = v9;
    LOWORD(v10) = *(v35 + 148);
    v52 = v10;
    LOWORD(v11) = *(v35 + 150);
    v53 = v11;
    LOWORD(v12) = *(v35 + 152);
    v54 = v12;
    v55 = *(v35 + 36);
    v56 = *(v35 + 40);
    v57 = *(v35 + 44);
    v58 = *(v35 + 48);
    v59 = *(v35 + 52);
    v60 = *(v35 + 56);
    v61 = *(v35 + 60);
    v62 = *(v35 + 64);
    v63 = *(v35 + 68);
    v64 = *v20;
    v65 = *(a1[16] + 8);
    v66 = v65 == 0;
    v67 = &result[v65 + v40 * v24];
    if (v66)
    {
      v68 = 0;
    }

    else
    {
      v68 = v67;
    }

    result += v64 + v39 * v24;
    v69 = v26[1];
    v70 = (*v26 + v37 * v18 + v16);
    v71 = v69 + v38 * (v18 / 2) + v16;
    do
    {
      v72 = &v70[v37];
      v73 = &result[v39];
      v74 = &v68[v40];
      if (v36 >= 1)
      {
        v75 = 0;
        v76 = &v70[v37];
        v77 = &result[v39];
        v78 = &v68[v40];
        do
        {
          LOBYTE(v13) = *(v71 + v75);
          *&v79 = LODWORD(v13);
          v80 = *&v79 - v43;
          LOBYTE(v79) = *(v71 + v75 + 1);
          v81 = v79 - v43;
          v82 = v45 * v81;
          v83 = (v47 * v81) + (v80 * v46);
          v84 = v49 * v80;
          LOBYTE(v6) = *v70;
          v85 = v44 * (LODWORD(v6) - v42);
          v86 = v82 + v85;
          v87 = v85 + v83;
          v88 = v84 + v85;
          v89 = (((v56 * (v85 + v83)) + (v55 * (v82 + v85))) + (v57 * (v84 + v85))) + v50;
          v90 = v52;
          if (v89 <= v52)
          {
            v90 = v89;
            if (v89 < v50)
            {
              v90 = v50;
            }
          }

          LOBYTE(v8) = v70[1];
          LOBYTE(v7) = *v76;
          LOBYTE(v89) = v76[1];
          *result = llroundf(v90);
          if (v68)
          {
            v91 = ((v51 + (v86 * v58)) + (v87 * v59)) + (v88 * v60);
            v92 = v54;
            if (v91 <= v54)
            {
              v92 = ((v51 + (v86 * v58)) + (v87 * v59)) + (v88 * v60);
              if (v91 < v53)
              {
                v92 = v53;
              }
            }

            v93 = ((v51 + (v86 * v61)) + (v87 * v62)) + (v88 * v63);
            *v68 = llroundf(v92);
            v94 = v54;
            if (v93 <= v54)
            {
              if (v93 < v53)
              {
                v94 = v53;
              }

              else
              {
                v94 = v93;
              }
            }

            v68[1] = llroundf(v94);
            v68 += 2;
          }

          v95 = v44 * (LODWORD(v8) - v42);
          v96 = v82 + v95;
          v97 = v83 + v95;
          v98 = v84 + v95;
          v99 = (((v56 * v97) + (v55 * v96)) + (v57 * v98)) + v50;
          v100 = v52;
          if (v99 <= v52)
          {
            v100 = (((v56 * v97) + (v55 * v96)) + (v57 * v98)) + v50;
            if (v99 < v50)
            {
              v100 = v50;
            }
          }

          result[1] = llroundf(v100);
          if (v68)
          {
            v101 = ((v51 + (v96 * v58)) + (v97 * v59)) + (v98 * v60);
            v102 = v54;
            if (v101 <= v54)
            {
              v102 = ((v51 + (v96 * v58)) + (v97 * v59)) + (v98 * v60);
              if (v101 < v53)
              {
                v102 = v53;
              }
            }

            v103 = ((v51 + (v96 * v61)) + (v97 * v62)) + (v98 * v63);
            *v68 = llroundf(v102);
            v104 = v54;
            if (v103 <= v54)
            {
              if (v103 < v53)
              {
                v104 = v53;
              }

              else
              {
                v104 = v103;
              }
            }

            v68[1] = llroundf(v104);
            v68 += 2;
          }

          v105 = v44 * (LODWORD(v7) - v42);
          v106 = v82 + v105;
          v8 = v83 + v105;
          v107 = v84 + v105;
          v108 = (((v56 * v8) + (v55 * v106)) + (v57 * v107)) + v50;
          v109 = v52;
          if (v108 <= v52)
          {
            v109 = (((v56 * v8) + (v55 * v106)) + (v57 * v107)) + v50;
            if (v108 < v50)
            {
              v109 = v50;
            }
          }

          *v77 = llroundf(v109);
          if (v78)
          {
            v110 = ((v51 + (v106 * v58)) + (v8 * v59)) + (v107 * v60);
            v111 = v54;
            if (v110 <= v54)
            {
              v111 = ((v51 + (v106 * v58)) + (v8 * v59)) + (v107 * v60);
              if (v110 < v53)
              {
                v111 = v53;
              }
            }

            v112 = ((v51 + (v106 * v61)) + (v8 * v62)) + (v107 * v63);
            *v78 = llroundf(v111);
            v8 = v54;
            if (v112 <= v54)
            {
              if (v112 < v53)
              {
                v8 = v53;
              }

              else
              {
                v8 = v112;
              }
            }

            v78[1] = llroundf(v8);
            v78 += 2;
          }

          v113 = v44 * (LODWORD(v89) - v42);
          v13 = v82 + v113;
          v114 = v83 + v113;
          v115 = v84 + v113;
          v7 = (((v56 * v114) + (v55 * v13)) + (v57 * v115)) + v50;
          v6 = v52;
          if (v7 <= v52)
          {
            v6 = (((v56 * v114) + (v55 * v13)) + (v57 * v115)) + v50;
            if (v7 < v50)
            {
              v6 = v50;
            }
          }

          v77[1] = llroundf(v6);
          if (v78)
          {
            v7 = ((v51 + (v13 * v58)) + (v114 * v59)) + (v115 * v60);
            v6 = v54;
            if (v7 <= v54)
            {
              v6 = ((v51 + (v13 * v58)) + (v114 * v59)) + (v115 * v60);
              if (v7 < v53)
              {
                v6 = v53;
              }
            }

            v13 = ((v51 + (v13 * v61)) + (v114 * v62)) + (v115 * v63);
            *v78 = llroundf(v6);
            v116 = v54;
            if (v13 <= v54)
            {
              v116 = v13;
              if (v13 < v53)
              {
                v116 = v53;
              }
            }

            v78[1] = llroundf(v116);
            v78 += 2;
          }

          v70 += 2;
          v76 += 2;
          result += 2;
          v77 += 2;
          v75 += 2;
        }

        while (v75 < v36);
      }

      v70 = &v72[v37];
      v71 += v38;
      result = &v73[v39];
      v68 = &v74[v40];
      v34 += 2;
    }

    while (v34 < v25);
  }

  if (v30 && v32)
  {
    if (v25 >= 1)
    {
      v117 = 0;
      v118 = (v30 + v29 * v18 + v16);
      do
      {
        result = memcpy(v33, v118, v22);
        v118 += v29;
        v33 += v31;
        ++v117;
      }

      while (v25 > v117);
    }
  }

  else if (v32 && v25 >= 1)
  {
    v119 = 0;
    v120 = vdupq_n_s64(v22 - 1);
    do
    {
      if (v22 >= 1)
      {
        v121 = 0;
        do
        {
          v122 = vdupq_n_s64(v121);
          v123 = vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v123, *v120.i8), *v120.i8).u8[0])
          {
            v33[v121] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v123, *&v120), *&v120).i8[1])
          {
            v33[v121 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDDA0)))), *&v120).i8[2])
          {
            v33[v121 + 2] = -1;
            v33[v121 + 3] = -1;
          }

          v124 = vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v120, vuzp1_s16(v124, *&v120)).i32[1])
          {
            v33[v121 + 4] = -1;
          }

          if (vuzp1_s8(*&v120, vuzp1_s16(v124, *&v120)).i8[5])
          {
            v33[v121 + 5] = -1;
          }

          if (vuzp1_s8(*&v120, vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDD80))))).i8[6])
          {
            v33[v121 + 6] = -1;
            v33[v121 + 7] = -1;
          }

          v125 = vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v125, *v120.i8), *v120.i8).u8[0])
          {
            v33[v121 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v125, *&v120), *&v120).i8[1])
          {
            v33[v121 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDD60)))), *&v120).i8[2])
          {
            v33[v121 + 10] = -1;
            v33[v121 + 11] = -1;
          }

          v126 = vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v120, vuzp1_s16(v126, *&v120)).i32[1])
          {
            v33[v121 + 12] = -1;
          }

          if (vuzp1_s8(*&v120, vuzp1_s16(v126, *&v120)).i8[5])
          {
            v33[v121 + 13] = -1;
          }

          if (vuzp1_s8(*&v120, vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v120, vorrq_s8(v122, xmmword_18FECDD40))))).i8[6])
          {
            v33[v121 + 14] = -1;
            v33[v121 + 15] = -1;
          }

          v121 += 16;
        }

        while (((v22 + 15) & 0xFFFFFFFFFFFFFFF0) != v121);
      }

      v33 += v31;
      ++v119;
    }

    while (v25 > v119);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = 2 * (v28 + v25) + 2, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (*a8 * v52 + 2 * (v44 + v28) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(void *result, uint64_t a2, float32x4_t a3, double a4, int16x4_t a5, float32x4_t a6)
{
  v6 = 2 * *result;
  v336 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
  v337 = *(result + 36);
  v7 = result[14];
  v9 = result[12];
  v8 = result[13];
  v343 = result;
  v10 = v8 * a2 / v6;
  v11 = result[15] + 2 * v10;
  v12 = 2 * ((v8 + v8 * a2) / v6 - v10);
  v13 = result[7];
  v14 = result[8];
  v15 = result[16];
  v16 = result[17];
  v335 = *(v14 + 16);
  v339 = v13[2];
  v341 = v16[2];
  v338 = v15[2];
  v340 = v338 + v341 * v11 + 2 * v7;
  if (v12 >= 1)
  {
    v17 = 0;
    v18 = result[19];
    v399 = v9 - 7;
    result = *v14;
    v19 = *(v14 + 8);
    v20 = *v16;
    v21 = v16[1];
    v22 = v18[17].u16[2];
    v23 = v18[17].u16[3];
    a5.i32[0] = v18->i32[0];
    a3.i32[0] = v18[3].i32[1];
    v24 = v18[18].u16[0];
    v25 = v18[18].u16[1];
    v26 = v18[18].u16[2];
    v27 = v18[18].u16[3];
    v28 = v18[19].u16[0];
    _S9 = v18[4].f32[1];
    _S12 = v18[5].f32[0];
    _S11 = v18[5].i32[1];
    _S4 = v18[6].f32[0];
    _S5 = v18[6].i32[1];
    _S14 = v18[7].i32[0];
    v35 = &v18[2068] + 4;
    v401 = v9 & 0xFFFFFFFE;
    v36 = 8191.0 / v18[16].u32[0];
    v37 = v22;
    v415 = v23;
    v38 = v24;
    v39 = v26;
    v40 = v27;
    _S28 = v36 * v18->f32[0];
    v42 = v28;
    v43 = &v18[20] + 4;
    *a5.i16 = v22;
    v44 = &v18[4116] + 4;
    __asm { FCVT            H6, S28 }

    v396 = vdupq_lane_s16(a5, 0);
    v397 = _H6;
    v50 = -v23;
    a3.i32[1] = v18[1].i32[0];
    *a3.f32 = vmul_n_f32(*a3.f32, v36);
    v400 = a3.i64[0];
    *a6.f32 = vmul_n_f32(v18[2], v36);
    v395 = vdupq_lane_s32(vcvt_f16_f32(a3), 0);
    v392 = vmulq_n_f16(v395, v50);
    v393 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    _Q0 = vmulq_n_f16(v393, v50);
    v391 = _Q0;
    __asm { FCVT            H0, S9 }

    v414 = *_Q0.i16;
    __asm { FCVT            H0, S12 }

    v413 = *_Q0.i16;
    __asm { FCVT            H0, S11 }

    v412 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v410 = *_Q0.i16;
    *_Q0.i16 = v24;
    v52 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v25;
    v53 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v26;
    v54 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v27;
    v55 = vdupq_lane_s16(*_Q0.i8, 0);
    v408 = v55;
    v409 = v53;
    *v55.i16 = v28;
    v407 = vdupq_lane_s16(*v55.i8, 0);
    v56 = v18[16].u8[4];
    if (v56 >= 0x11)
    {
      v57 = 0;
    }

    else
    {
      v57 = 16 - v56;
    }

    v60 = v15;
    v58 = *v15;
    v59 = v60[1];
    if (v59)
    {
      v61 = (v59 + v21 * v11 + 2 * v7);
    }

    else
    {
      v61 = 0;
    }

    v62 = (v58 + v20 * v11 + 2 * v7);
    v63 = (v13[1] + v19 * (v336 / 2) + v337);
    v64 = (*v13 + result * v336 + v337);
    v65 = v57;
    v344 = v9 & 0xFFFFFFF8;
    _S30 = v18[8].f32[1];
    _S15 = v18[13].f32[1];
    __asm { FCVT            H6, S5 }

    v406 = _H6;
    __asm { FCVT            H6, S14 }

    v405 = _H6;
    v417 = v18[7].f32[1];
    __asm { FCVT            H1, S1 }

    v404 = _H1;
    v416 = v18[8].f32[0];
    __asm { FCVT            H2, S2 }

    v403 = _H2;
    __asm { FCVT            H2, S30 }

    v402 = _H2;
    __asm { FCVT            H2, S15 }

    v373 = v18[14].f32[0];
    __asm { FCVT            H0, S0 }

    v369 = _H0;
    v370 = _H2;
    v372 = v18[14].f32[1];
    __asm { FCVT            H0, S1 }

    v368 = _H0;
    v371 = v18[15].f32[0];
    __asm { FCVT            H0, S6 }

    v367 = _H0;
    v387 = v18[9].f32[0];
    __asm { FCVT            H0, S7 }

    v366 = _H0;
    v386 = v18[9].f32[1];
    __asm { FCVT            H0, S16 }

    v365 = _H0;
    v385 = v18[10].f32[0];
    __asm { FCVT            H0, S20 }

    v364 = _H0;
    v383 = v18[10].f32[1];
    __asm { FCVT            H0, S21 }

    v363 = _H0;
    v382 = v18[11].f32[0];
    __asm { FCVT            H0, S13 }

    v362 = _H0;
    v380 = v18[11].f32[1];
    __asm { FCVT            H0, S25 }

    v361 = _H0;
    v378 = v18[12].f32[0];
    __asm { FCVT            H0, S26 }

    v360 = _H0;
    v376 = v18[12].f32[1];
    __asm { FCVT            H0, S27 }

    v359 = _H0;
    v411 = vdupq_n_s16(v57);
    v394 = a6.f32[0];
    _Q0.i16[1] = a6.i16[3];
    v358 = a6.f32[1];
    v375 = v18[13].f32[0];
    __asm { FCVT            H0, S8 }

    v86 = v415;
    v357 = *_Q0.i16;
    v350 = result;
    v351 = v9;
    v348 = v21;
    v349 = v20;
    v345 = v19;
    v346 = v12;
    v398 = v22;
    v389 = v54;
    v390 = v52;
    v388 = _S30;
    v384 = v18[7].f32[0];
    v381 = v40;
    v379 = v18[6].f32[1];
    v377 = v25;
    v374 = v18[5].f32[1];
    v355 = v18[5].i32[0];
    v356 = v18[4].i32[1];
    do
    {
      v87 = (result + v64);
      v88 = (v62 + v20);
      v89 = (v61 + v21);
      v353 = v61 + v21;
      v354 = &v62->i8[v20];
      v352 = result + v64;
      if (v9 < 8)
      {
        v178 = 0;
        v177 = v63;
      }

      else
      {
        v347 = v17;
        v90 = 0;
        do
        {
          v91 = *&v63[v90];
          *v92.i8 = vzip1_s8(v91, 0);
          v92.u64[1] = vzip2_s8(v91, 0);
          v93 = vcvtq_f16_u16(v92);
          v94 = vmlaq_f16(v392, v395, v93);
          v95 = vmlaq_f16(v391, v393, v93);
          v96 = vtrn2q_s16(v94, v94);
          v97 = vtrn1q_s16(v94, v94);
          v98 = vuzp1q_s16(v95, v93);
          *v98.i8 = vadd_f16(*v98.i8, *&vuzp2q_s16(v95, v98));
          v99 = vzip1q_s16(v98, v98);
          v100 = *v64++;
          *v95.i8 = vzip1_s8(v100, 0);
          v95.u64[1] = vzip2_s8(v100, 0);
          v101 = *v87++;
          *v102.i8 = vzip1_s8(v101, 0);
          v102.u64[1] = vzip2_s8(v101, 0);
          v103 = vsubq_f16(vcvtq_f16_u16(v95), v396);
          v104 = vsubq_f16(vcvtq_f16_u16(v102), v396);
          v105 = vmlaq_n_f16(v96, v103, v397);
          v106 = vmlaq_n_f16(v96, v104, v397);
          v107 = vmlaq_n_f16(v99, v103, v397);
          v108 = vmlaq_n_f16(v99, v104, v397);
          v109 = vmlaq_n_f16(v97, v103, v397);
          v110 = vmlaq_n_f16(v97, v104, v397);
          v111.i64[0] = 0x9000900090009000;
          v111.i64[1] = 0x9000900090009000;
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v111));
          v113.i16[0] = *&v43[2 * v112.u16[0]];
          v113.i16[1] = *&v43[2 * v112.u16[1]];
          v113.i16[2] = *&v43[2 * v112.u16[2]];
          v113.i16[3] = *&v43[2 * v112.u16[3]];
          v113.i16[4] = *&v43[2 * v112.u16[4]];
          v113.i16[5] = *&v43[2 * v112.u16[5]];
          v113.i16[6] = *&v43[2 * v112.u16[6]];
          v113.i16[7] = *&v43[2 * v112.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v111));
          v112.i16[0] = *&v43[2 * v114.u16[0]];
          v112.i16[1] = *&v43[2 * v114.u16[1]];
          v112.i16[2] = *&v43[2 * v114.u16[2]];
          v112.i16[3] = *&v43[2 * v114.u16[3]];
          v112.i16[4] = *&v43[2 * v114.u16[4]];
          v112.i16[5] = *&v43[2 * v114.u16[5]];
          v112.i16[6] = *&v43[2 * v114.u16[6]];
          v112.i16[7] = *&v43[2 * v114.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v111));
          v116.i16[0] = *&v43[2 * v115.u16[0]];
          v116.i16[1] = *&v43[2 * v115.u16[1]];
          v116.i16[2] = *&v43[2 * v115.u16[2]];
          v116.i16[3] = *&v43[2 * v115.u16[3]];
          v116.i16[4] = *&v43[2 * v115.u16[4]];
          v116.i16[5] = *&v43[2 * v115.u16[5]];
          v116.i16[6] = *&v43[2 * v115.u16[6]];
          v116.i16[7] = *&v43[2 * v115.u16[7]];
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v111));
          v106.i16[0] = *&v43[2 * v117.u16[0]];
          v106.i16[1] = *&v43[2 * v117.u16[1]];
          v106.i16[2] = *&v43[2 * v117.u16[2]];
          v106.i16[3] = *&v43[2 * v117.u16[3]];
          v106.i16[4] = *&v43[2 * v117.u16[4]];
          v106.i16[5] = *&v43[2 * v117.u16[5]];
          v106.i16[6] = *&v43[2 * v117.u16[6]];
          v106.i16[7] = *&v43[2 * v117.u16[7]];
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v111));
          v108.i16[0] = *&v43[2 * v118.u16[0]];
          v108.i16[1] = *&v43[2 * v118.u16[1]];
          v108.i16[2] = *&v43[2 * v118.u16[2]];
          v108.i16[3] = *&v43[2 * v118.u16[3]];
          v108.i16[4] = *&v43[2 * v118.u16[4]];
          v108.i16[5] = *&v43[2 * v118.u16[5]];
          v108.i16[6] = *&v43[2 * v118.u16[6]];
          v108.i16[7] = *&v43[2 * v118.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v111));
          v109.i16[0] = *&v43[2 * v119.u16[0]];
          v109.i16[1] = *&v43[2 * v119.u16[1]];
          v109.i16[2] = *&v43[2 * v119.u16[2]];
          v109.i16[3] = *&v43[2 * v119.u16[3]];
          v109.i16[4] = *&v43[2 * v119.u16[4]];
          v109.i16[5] = *&v43[2 * v119.u16[5]];
          v109.i16[6] = *&v43[2 * v119.u16[6]];
          v109.i16[7] = *&v43[2 * v119.u16[7]];
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v370), v112, v369), v116, v368), vmaxq_f16(vmaxq_f16(v113, v112), v116), v367), 0), v111));
          v105.i16[0] = *&v35[2 * v120.u16[0]];
          v105.i16[1] = *&v35[2 * v120.u16[1]];
          v105.i16[2] = *&v35[2 * v120.u16[2]];
          v105.i16[3] = *&v35[2 * v120.u16[3]];
          v105.i16[4] = *&v35[2 * v120.u16[4]];
          v105.i16[5] = *&v35[2 * v120.u16[5]];
          v105.i16[6] = *&v35[2 * v120.u16[6]];
          v105.i16[7] = *&v35[2 * v120.u16[7]];
          v121 = vmulq_f16(v113, v105);
          v122 = vmulq_f16(v112, v105);
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v370), v108, v369), v109, v368), vmaxq_f16(vmaxq_f16(v106, v108), v109), v367), 0), v111));
          v110.i16[0] = *&v35[2 * v123.u16[0]];
          v124 = vmulq_f16(v116, v105);
          v110.i16[1] = *&v35[2 * v123.u16[1]];
          v110.i16[2] = *&v35[2 * v123.u16[2]];
          v110.i16[3] = *&v35[2 * v123.u16[3]];
          v110.i16[4] = *&v35[2 * v123.u16[4]];
          v110.i16[5] = *&v35[2 * v123.u16[5]];
          v110.i16[6] = *&v35[2 * v123.u16[6]];
          v110.i16[7] = *&v35[2 * v123.u16[7]];
          v125 = vmulq_f16(v106, v110);
          v126 = vmulq_f16(v108, v110);
          v127 = vmulq_f16(v109, v110);
          v128 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v121, v363), v122, v362), v124, v361);
          v129 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v124, v357), v122, v359), v121, v360);
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v121, v366), v122, v365), v124, v364), 0), v111));
          v131 = v130.u16[0];
          v132 = v130.u16[1];
          v133 = v130.u16[2];
          v134 = v130.u16[3];
          v135 = v130.u16[4];
          v136 = v130.u16[5];
          v137 = v130.u16[6];
          v138 = v130.u16[7];
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v128, 0), v111));
          v140 = v139.u16[0];
          v141 = v139.u16[1];
          v142 = v139.u16[2];
          v143 = v139.u16[3];
          v144 = v139.u16[4];
          v145 = v139.u16[5];
          v146 = v139.u16[6];
          v147 = v139.u16[7];
          v148.i16[0] = *&v44[2 * v131];
          v148.i16[1] = *&v44[2 * v132];
          v148.i16[2] = *&v44[2 * v133];
          v148.i16[3] = *&v44[2 * v134];
          v148.i16[4] = *&v44[2 * v135];
          v148.i16[5] = *&v44[2 * v136];
          v148.i16[6] = *&v44[2 * v137];
          v148.i16[7] = *&v44[2 * v138];
          v149 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v129, 0), v111));
          v150 = v149.u16[0];
          v151 = v149.u16[1];
          v152 = v149.u16[2];
          v153 = v149.u16[3];
          v154 = v149.u16[4];
          v155 = v149.u16[5];
          v156 = v149.u16[6];
          v157 = v149.u16[7];
          v158.i16[0] = *&v44[2 * v140];
          v158.i16[1] = *&v44[2 * v141];
          v158.i16[2] = *&v44[2 * v142];
          v158.i16[3] = *&v44[2 * v143];
          v158.i16[4] = *&v44[2 * v144];
          v158.i16[5] = *&v44[2 * v145];
          v158.i16[6] = *&v44[2 * v146];
          v158.i16[7] = *&v44[2 * v147];
          v159 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v125, v366), v126, v365), v127, v364), 0), v111));
          v160.i16[0] = *&v44[2 * v150];
          v160.i16[1] = *&v44[2 * v151];
          v160.i16[2] = *&v44[2 * v152];
          v160.i16[3] = *&v44[2 * v153];
          v160.i16[4] = *&v44[2 * v154];
          v160.i16[5] = *&v44[2 * v155];
          v160.i16[6] = *&v44[2 * v156];
          v160.i16[7] = *&v44[2 * v157];
          v161 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v125, v363), v126, v362), v127, v361), 0), v111));
          v162 = v161.u16[0];
          v163 = v161.u16[1];
          v164 = v161.u16[2];
          v165 = v161.u16[3];
          v166 = v161.u16[4];
          v167 = v161.u16[5];
          v168 = v161.u16[6];
          v169 = v161.u16[7];
          v170.i16[0] = *&v44[2 * v159.u16[0]];
          v170.i16[1] = *&v44[2 * v159.u16[1]];
          v170.i16[2] = *&v44[2 * v159.u16[2]];
          v170.i16[3] = *&v44[2 * v159.u16[3]];
          v170.i16[4] = *&v44[2 * v159.u16[4]];
          v170.i16[5] = *&v44[2 * v159.u16[5]];
          v170.i16[6] = *&v44[2 * v159.u16[6]];
          v170.i16[7] = *&v44[2 * v159.u16[7]];
          v171 = vmlaq_n_f16(vmulq_n_f16(v127, v357), v126, v359);
          v172.i16[0] = *&v44[2 * v162];
          v172.i16[1] = *&v44[2 * v163];
          v172.i16[2] = *&v44[2 * v164];
          v172.i16[3] = *&v44[2 * v165];
          v172.i16[4] = *&v44[2 * v166];
          v172.i16[5] = *&v44[2 * v167];
          v172.i16[6] = *&v44[2 * v168];
          v172.i16[7] = *&v44[2 * v169];
          v173 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v171, v125, v360), 0), v111));
          v174.i16[0] = *&v44[2 * v173.u16[0]];
          v174.i16[1] = *&v44[2 * v173.u16[1]];
          v174.i16[2] = *&v44[2 * v173.u16[2]];
          v174.i16[3] = *&v44[2 * v173.u16[3]];
          v174.i16[4] = *&v44[2 * v173.u16[4]];
          v174.i16[5] = *&v44[2 * v173.u16[5]];
          v174.i16[6] = *&v44[2 * v173.u16[6]];
          v174.i16[7] = *&v44[2 * v173.u16[7]];
          v175 = v411;
          *v62++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v52, v148, v414), v158, v413), v160, v412), v52), v389)), v411);
          if (v61)
          {
            v175 = v411;
            v176 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v409, v148, v404), v158, v403), v160, v402);
            v418.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v409, v148, v410), v158, v406), v160, v405), v408), v407), v408), v407)), v411);
            v418.val[1] = vshlq_u16(vcvtq_u16_f16(v176), v411);
            vst2q_s16(v61, v418);
            v61 += 16;
          }

          _Q0 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v52, v170, v414), v172, v413), v174, v412), v52), v389)), v175);
          *v88++ = _Q0;
          _S12 = *&v355;
          _S9 = *&v356;
          v86 = v415;
          if (v89)
          {
            v419.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v409, v170, v410), v172, v406), v174, v405), v408), v407), v408), v407)), v175);
            _Q0 = vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v409, v170, v404), v172, v403), v174, v402));
            v419.val[1] = vshlq_u16(_Q0, v175);
            vst2q_s16(v89, v419);
            v89 += 16;
          }

          v90 += 8;
        }

        while (v90 < v399);
        v177 = &v63[v90];
        v178 = v344;
        v19 = v345;
        v12 = v346;
        v17 = v347;
      }

      while (v178 < v401)
      {
        _Q0.i8[0] = v177[1];
        v179 = _Q0.u32[0] - v86;
        v180 = HIDWORD(v400);
        v181 = *(&v400 + 1) * v179;
        LOBYTE(v180) = v64->i8[0];
        v182 = _S28 * (v180 - v37);
        v183 = (*(&v400 + 1) * v179) + v182;
        v184 = 8191.0;
        if (v183 <= 8191.0)
        {
          v184 = (*(&v400 + 1) * v179) + v182;
          if (v183 < 0.0)
          {
            v184 = 0.0;
          }
        }

        LOBYTE(v183) = *v177;
        v185 = LODWORD(v183) - v86;
        v186 = (v358 * v179) + (v185 * v394);
        v187 = 8191.0;
        if ((v182 + v186) <= 8191.0)
        {
          v187 = v182 + v186;
          if ((v182 + v186) < 0.0)
          {
            v187 = 0.0;
          }
        }

        v188 = *&v400 * v185;
        v189 = (*&v400 * v185) + v182;
        v190 = 8191.0;
        if (v189 <= 8191.0)
        {
          v190 = v189;
          if (v189 < 0.0)
          {
            v190 = 0.0;
          }
        }

        LOBYTE(v189) = v64->i8[1];
        v191 = _S28 * (LODWORD(v189) - v37);
        v192 = 8191.0;
        if ((v181 + v191) <= 8191.0)
        {
          v192 = v181 + v191;
          if ((v181 + v191) < 0.0)
          {
            v192 = 0.0;
          }
        }

        v193 = 8191.0;
        if ((v186 + v191) <= 8191.0)
        {
          v193 = v186 + v191;
          if ((v186 + v191) < 0.0)
          {
            v193 = 0.0;
          }
        }

        v194 = v188 + v191;
        v195 = 8191.0;
        if (v194 <= 8191.0)
        {
          v195 = v194;
          if (v194 < 0.0)
          {
            v195 = 0.0;
          }
        }

        LOBYTE(v194) = v87->i8[0];
        v196 = _S28;
        v197 = _S28 * (LODWORD(v194) - v37);
        v198 = v181 + v197;
        v199 = 8191.0;
        if ((v181 + v197) <= 8191.0)
        {
          v199 = v181 + v197;
          if (v198 < 0.0)
          {
            v199 = 0.0;
          }
        }

        v200 = 8191.0;
        if ((v186 + v197) <= 8191.0)
        {
          v200 = v186 + v197;
          if ((v186 + v197) < 0.0)
          {
            v200 = 0.0;
          }
        }

        v201 = v188 + v197;
        v202 = 8191.0;
        if (v201 <= 8191.0)
        {
          v202 = v201;
          if (v201 < 0.0)
          {
            v202 = 0.0;
          }
        }

        LOBYTE(v198) = v87->i8[1];
        v203 = v196 * (LODWORD(v198) - v37);
        v204 = v181 + v203;
        v205 = (v181 + v203) <= 8191.0;
        v206 = 8191.0;
        if (v205)
        {
          v206 = v204;
          if (v204 < 0.0)
          {
            v206 = 0.0;
          }
        }

        v207 = _S12;
        v208 = v186 + v203;
        v209 = 8191.0;
        if (v208 <= 8191.0)
        {
          v209 = v208;
          if (v208 < 0.0)
          {
            v209 = 0.0;
          }
        }

        v210 = _S9;
        v211 = v188 + v203;
        v212 = 8191.0;
        if (v211 <= 8191.0)
        {
          v212 = v211;
          if (v211 < 0.0)
          {
            v212 = 0.0;
          }
        }

        _H0 = *&v43[2 * llroundf(fminf(fmaxf(v184, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v43[2 * llroundf(fminf(fmaxf(v187, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v43[2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H20 = *&v43[2 * llroundf(fminf(fmaxf(v192, 0.0), 8191.0))];
        _H21 = *&v43[2 * llroundf(fminf(fmaxf(v193, 0.0), 8191.0))];
        _H9 = *&v43[2 * llroundf(fminf(fmaxf(v195, 0.0), 8191.0))];
        _H30 = *&v43[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        _H16 = *&v43[2 * llroundf(fminf(fmaxf(v200, 0.0), 8191.0))];
        _H29 = *&v43[2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0))];
        _H25 = *&v43[2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0))];
        _H26 = *&v43[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        _H27 = *&v43[2 * llroundf(fminf(fmaxf(v212, 0.0), 8191.0))];
        v228 = (((v373 * _S1) + (_S15 * _S0)) + (v372 * _S2)) + (v371 * fmaxf(_S0, fmaxf(_S1, _S2)));
        v229 = 8191.0;
        if (v228 <= 8191.0)
        {
          v229 = v228;
          if (v228 < 0.0)
          {
            v229 = 0.0;
          }
        }

        __asm
        {
          FCVT            S7, H20
          FCVT            S20, H21
          FCVT            S21, H9
        }

        _H28 = *&v35[2 * llroundf(v229)];
        v234 = fmaxf(_S7, fmaxf(_S20, _S21));
        v235 = (((v373 * _S20) + (_S15 * _S7)) + (v372 * _S21)) + (v371 * v234);
        v236 = 8191.0;
        if (v235 <= 8191.0)
        {
          v236 = (((v373 * _S20) + (_S15 * _S7)) + (v372 * _S21)) + (v371 * v234);
          if (v235 < 0.0)
          {
            v236 = 0.0;
          }
        }

        __asm
        {
          FCVT            S6, H30
          FCVT            S16, H16
          FCVT            S29, H29
        }

        _H30 = *&v35[2 * llroundf(v236)];
        v241 = (((v373 * _S16) + (_S15 * _S6)) + (v372 * _S29)) + (v371 * fmaxf(_S6, fmaxf(_S16, _S29)));
        v242 = 8191.0;
        if (v241 <= 8191.0)
        {
          v242 = v241;
          if (v241 < 0.0)
          {
            v242 = 0.0;
          }
        }

        __asm
        {
          FCVT            S25, H25
          FCVT            S26, H26
          FCVT            S27, H27
        }

        _H9 = *&v35[2 * llroundf(v242)];
        v247 = (((v373 * _S26) + (_S15 * _S25)) + (v372 * _S27)) + (v371 * fmaxf(_S25, fmaxf(_S26, _S27)));
        v248 = 8191.0;
        if (v247 <= 8191.0)
        {
          v248 = v247;
          if (v247 < 0.0)
          {
            v248 = 0.0;
          }
        }

        __asm { FCVT            S28, H28 }

        v250 = _S0 * _S28;
        v251 = _S1 * _S28;
        v252 = _S2 * _S28;
        __asm { FCVT            S28, H30 }

        v254 = _S7 * _S28;
        v255 = _S20 * _S28;
        _S21 = _S21 * _S28;
        __asm { FCVT            S28, H9 }

        v258 = _S6 * _S28;
        v259 = _S16 * _S28;
        v260 = _S29 * _S28;
        _H23 = *&v35[2 * llroundf(v248)];
        __asm { FCVT            S23, H23 }

        v263 = _S25 * _S23;
        v264 = _S26 * _S23;
        v265 = _S27 * _S23;
        v266 = ((v386 * v251) + (v250 * v387)) + (v252 * v385);
        v267 = ((v382 * v251) + (v250 * v383)) + (v252 * v380);
        _S0 = ((v376 * v251) + (v250 * v378)) + (v252 * v375);
        v269 = ((v386 * v255) + (v254 * v387)) + (_S21 * v385);
        v270 = ((v382 * v255) + (v254 * v383)) + (_S21 * v380);
        v271 = ((v376 * v255) + (v254 * v378)) + (_S21 * v375);
        v272 = ((v386 * v259) + (v258 * v387)) + (v260 * v385);
        v273 = ((v382 * v259) + (v258 * v383)) + (v260 * v380);
        v274 = ((v376 * v259) + (v258 * v378)) + (v260 * v375);
        v275 = ((v386 * v264) + (v263 * v387)) + (v265 * v385);
        v276 = ((v382 * v264) + (v263 * v383)) + (v265 * v380);
        v277 = ((v376 * v264) + (v263 * v378)) + (v265 * v375);
        LOWORD(_S21) = *&v44[2 * llroundf(fminf(fmaxf(v266, 0.0), 8191.0))];
        __asm { FCVT            S28, H21 }

        LOWORD(_S21) = *&v44[2 * llroundf(fminf(fmaxf(v267, 0.0), 8191.0))];
        __asm { FCVT            S29, H21 }

        LOWORD(_S0) = *&v44[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S30, H0 }

        _H21 = *&v44[2 * llroundf(fminf(fmaxf(v269, 0.0), 8191.0))];
        _H26 = *&v44[2 * llroundf(fminf(fmaxf(v270, 0.0), 8191.0))];
        _H27 = *&v44[2 * llroundf(fminf(fmaxf(v271, 0.0), 8191.0))];
        _H7 = *&v44[2 * llroundf(fminf(fmaxf(v272, 0.0), 8191.0))];
        _H20 = *&v44[2 * llroundf(fminf(fmaxf(v273, 0.0), 8191.0))];
        _H25 = *&v44[2 * llroundf(fminf(fmaxf(v274, 0.0), 8191.0))];
        _H0 = *&v44[2 * llroundf(fminf(fmaxf(v275, 0.0), 8191.0))];
        _H1 = *&v44[2 * llroundf(fminf(fmaxf(v276, 0.0), 8191.0))];
        _H2 = *&v44[2 * llroundf(fminf(fmaxf(v277, 0.0), 8191.0))];
        _S12 = v207;
        _S9 = v210;
        v290 = (((v207 * _S29) + (v210 * _S28)) + (v374 * _S30)) + v38;
        v291 = v39;
        if (v290 <= v39)
        {
          v291 = (((v207 * _S29) + (v210 * _S28)) + (v374 * _S30)) + v38;
          if (v290 < v38)
          {
            v291 = v38;
          }
        }

        v62->i16[0] = llroundf(v291) << v65;
        if (v61)
        {
          v292 = v379;
          v293 = v384;
          v294 = ((v377 + (_S28 * _S4)) + (_S29 * v379)) + (_S30 * v384);
          v295 = v42;
          v296 = v381;
          if (v294 <= v42)
          {
            v295 = ((v377 + (_S28 * _S4)) + (_S29 * v379)) + (_S30 * v384);
            if (v294 < v381)
            {
              v295 = v381;
            }
          }

          v297 = ((v377 + (_S28 * v417)) + (_S29 * v416)) + (_S30 * v388);
          v298 = v388;
          *v61 = llroundf(v295) << v65;
          v299 = v42;
          if (v297 <= v42)
          {
            v299 = v297;
            if (v297 < v381)
            {
              v299 = v381;
            }
          }

          v61[1] = llroundf(v299) << v65;
          v300 = v61 + 2;
          _S28 = v196;
        }

        else
        {
          v300 = 0;
          v292 = v379;
          v293 = v384;
          v296 = v381;
          _S28 = v196;
          v298 = v388;
        }

        __asm
        {
          FCVT            S6, H21
          FCVT            S16, H26
          FCVT            S21, H27
        }

        v304 = (((v207 * _S16) + (v210 * _S6)) + (v374 * _S21)) + v38;
        v305 = v39;
        v52 = v390;
        if (v304 <= v39)
        {
          v305 = (((v207 * _S16) + (v210 * _S6)) + (v374 * _S21)) + v38;
          if (v304 < v38)
          {
            v305 = v38;
          }
        }

        v62->i16[1] = llroundf(v305) << v65;
        if (v300)
        {
          v306 = ((v377 + (_S6 * _S4)) + (_S16 * v292)) + (_S21 * v293);
          v307 = v42;
          if (v306 <= v42)
          {
            v307 = ((v377 + (_S6 * _S4)) + (_S16 * v292)) + (_S21 * v293);
            if (v306 < v296)
            {
              v307 = v296;
            }
          }

          v308 = ((v377 + (_S6 * v417)) + (_S16 * v416)) + (_S21 * v298);
          *v300 = llroundf(v307) << v65;
          v309 = v42;
          v37 = v398;
          if (v308 <= v42)
          {
            v309 = v308;
            if (v308 < v296)
            {
              v309 = v296;
            }
          }

          v300[1] = llroundf(v309) << v65;
          v61 = v300 + 2;
        }

        else
        {
          v61 = 0;
          v37 = v398;
        }

        v86 = v415;
        __asm
        {
          FCVT            S6, H7
          FCVT            S7, H20
          FCVT            S16, H25
        }

        v313 = (((v207 * _S7) + (v210 * _S6)) + (v374 * _S16)) + v38;
        v314 = v39;
        if (v313 <= v39)
        {
          v314 = (((v207 * _S7) + (v210 * _S6)) + (v374 * _S16)) + v38;
          if (v313 < v38)
          {
            v314 = v38;
          }
        }

        v88->i16[0] = llroundf(v314) << v65;
        if (v89)
        {
          v315 = ((v377 + (_S6 * _S4)) + (_S7 * v292)) + (_S16 * v293);
          v316 = v42;
          if (v315 <= v42)
          {
            v316 = ((v377 + (_S6 * _S4)) + (_S7 * v292)) + (_S16 * v293);
            if (v315 < v296)
            {
              v316 = v296;
            }
          }

          v317 = ((v377 + (_S6 * v417)) + (_S7 * v416)) + (_S16 * v298);
          *v89 = llroundf(v316) << v65;
          v318 = v42;
          if (v317 <= v42)
          {
            v318 = v317;
            if (v317 < v296)
            {
              v318 = v296;
            }
          }

          v89[1] = llroundf(v318) << v65;
          v319 = v89 + 2;
        }

        else
        {
          v319 = 0;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S2, H2
        }

        v322 = (((v207 * _S1) + (v210 * *_Q0.i32)) + (v374 * _S2)) + v38;
        v323 = v39;
        if (v322 <= v39)
        {
          v323 = (((v207 * _S1) + (v210 * *_Q0.i32)) + (v374 * _S2)) + v38;
          if (v322 < v38)
          {
            v323 = v38;
          }
        }

        v88->i16[1] = llroundf(v323) << v65;
        if (v319)
        {
          v324 = ((v377 + (*_Q0.i32 * _S4)) + (_S1 * v292)) + (_S2 * v293);
          v325 = v42;
          if (v324 <= v42)
          {
            v325 = ((v377 + (*_Q0.i32 * _S4)) + (_S1 * v292)) + (_S2 * v293);
            if (v324 < v296)
            {
              v325 = v296;
            }
          }

          *_Q0.i32 = ((v377 + (*_Q0.i32 * v417)) + (_S1 * v416)) + (_S2 * v298);
          *v319 = llroundf(v325) << v65;
          v326 = v42;
          if (*_Q0.i32 <= v42)
          {
            v326 = *_Q0.i32;
            if (*_Q0.i32 < v296)
            {
              v326 = v296;
            }
          }

          v319[1] = llroundf(v326) << v65;
          v89 = v319 + 2;
        }

        else
        {
          v89 = 0;
        }

        v178 += 2;
        v177 += 2;
        v64 = (v64 + 2);
        v87 = (v87 + 2);
        v62 = (v62 + 4);
        v88 = (v88 + 4);
      }

      v20 = v349;
      result = v350;
      v9 = v351;
      v64 = (v350 + v352);
      v63 += v19;
      v62 = &v354[v349];
      v21 = v348;
      v61 = &v353[v348];
      v17 += 2;
    }

    while (v17 < v12);
  }

  if (v339 && v338)
  {
    v327 = v340;
    if (v12 >= 1)
    {
      v328 = 0;
      v329 = (v339 + v335 * v336 + v337);
      do
      {
        if (v9 >= 1)
        {
          v330 = v9;
          v331 = v327;
          v332 = v329;
          do
          {
            v333 = *v332++;
            *v331++ = v333 | (v333 << 8);
            --v330;
          }

          while (v330);
        }

        v329 += v335;
        v327 = (v327 + v341);
        ++v328;
      }

      while (v328 != v12);
    }
  }

  else
  {
    v334 = v340;
    if (v338 && v12 >= 1)
    {
      do
      {
        if (v9 >= 1)
        {
          result = memset(v334, 255, 2 * v9);
        }

        v334 += v341;
        --v12;
      }

      while (v12);
    }
  }

  *(v343 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = 2 * (v28 + v25) + 2, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (*a8 * v52 + 2 * (v44 + v28) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444_GCD(void *a1, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v12 = 2 * *a1;
  v221 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v12);
  v222 = *(a1 + 36);
  v13 = a1[14];
  v15 = a1[12];
  v14 = a1[13];
  v16 = v14 * a2 / v12;
  v17 = a1[15] + 2 * v16;
  v18 = 2 * ((v14 + v14 * a2) / v12 - v16);
  v19 = a1[7];
  v20 = a1[8];
  v22 = a1[16];
  result = a1[17];
  v23 = v20[2];
  v224 = v19[2];
  v24 = result[2];
  v223 = v22[2];
  v25 = (v223 + v24 * v17 + 2 * v13);
  if (v18 >= 1)
  {
    v26 = 0;
    v27 = a1[19];
    v28 = v15 & 0xFFFFFFFE;
    v29 = *v20;
    v30 = v20[1];
    v31 = *result;
    result = result[1];
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a6) = *(v27 + 142);
    LOWORD(v6) = *(v27 + 144);
    LOWORD(v7) = *(v27 + 146);
    v32 = 8191.0 / *(v27 + 128);
    v33 = LODWORD(a4);
    v34 = LODWORD(a6);
    v35 = v32 * *v27;
    v251 = v32 * *(v27 + 16);
    v252 = v32 * *(v27 + 8);
    v36 = v32 * *(v27 + 20);
    *&v37 = v32 * *(v27 + 28);
    v249 = *&v37;
    v250 = v36;
    v38 = v6;
    LOWORD(v37) = *(v27 + 150);
    v39 = v37;
    LOWORD(v37) = *(v27 + 152);
    v40 = v37;
    v42 = *(v27 + 36);
    v41 = *(v27 + 40);
    v43 = *(v27 + 44);
    v242 = *(v27 + 76);
    v243 = *(v27 + 72);
    v240 = *(v27 + 84);
    v241 = *(v27 + 80);
    v238 = *(v27 + 88);
    v236 = *(v27 + 92);
    v234 = *(v27 + 96);
    v232 = *(v27 + 100);
    v230 = *(v27 + 104);
    v44 = v27 + 164;
    v45 = v27 + 16548;
    v46 = *v22;
    v47 = v22[1];
    v48 = (v47 + result * v17 + 2 * v13);
    if (!v47)
    {
      v48 = 0;
    }

    v49 = (v46 + v31 * v17 + 2 * v13);
    v50 = *(v27 + 132);
    v51 = 16 - v50;
    _CF = v50 >= 0x11;
    v53 = *v19;
    v54 = v19[1] + v30 * (v221 / 2);
    v55 = v27 + 32932;
    v56 = (v53 + v29 * v221 + v222);
    if (_CF)
    {
      v57 = 0;
    }

    else
    {
      v57 = v51;
    }

    v58 = v54 + v222;
    v59 = *(v27 + 108);
    _S0 = *(v27 + 120);
    v226 = *(v27 + 116);
    v227 = *(v27 + 112);
    v225 = _S0;
    v253 = LODWORD(a6);
    v247 = *(v27 + 56);
    v248 = v7;
    v245 = *(v27 + 64);
    v246 = *(v27 + 60);
    v244 = *(v27 + 68);
    v239 = v33;
    v237 = v39;
    v235 = v35;
    v233 = *(v27 + 52);
    v231 = *(v27 + 48);
    v228 = v59;
    LOWORD(v8) = *(v27 + 148);
    v229 = v8;
    do
    {
      v61 = &v56[v29];
      v62 = &v49[v31];
      v63 = result + v48;
      if (v28 >= 1)
      {
        v64 = 0;
        v65 = &v56[v29];
        v66 = (result + v48);
        v67 = &v49[v31];
        do
        {
          LOBYTE(_S0) = *(v58 + v64 + 1);
          v68 = LODWORD(_S0) - v34;
          v69 = LODWORD(v252);
          v70 = v252 * v68;
          LOBYTE(v69) = *v56;
          v71 = v35 * (v69 - v33);
          v72 = (v252 * v68) + v71;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = (v252 * v68) + v71;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          LOBYTE(v72) = *(v58 + v64);
          v74 = LODWORD(v72) - v34;
          v75 = (v250 * v68) + (v74 * v251);
          v76 = 8191.0;
          if ((v71 + v75) <= 8191.0)
          {
            v76 = v71 + v75;
            if ((v71 + v75) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v249 * v74;
          v78 = (v249 * v74) + v71;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v78) = v56[1];
          v80 = v35 * (LODWORD(v78) - v33);
          v81 = 8191.0;
          if ((v70 + v80) <= 8191.0)
          {
            v81 = v70 + v80;
            if ((v70 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = 8191.0;
          if ((v75 + v80) <= 8191.0)
          {
            v82 = v75 + v80;
            if ((v75 + v80) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v77 + v80;
          v84 = (v77 + v80) <= 8191.0;
          v85 = 8191.0;
          if (v84)
          {
            v85 = v83;
            if (v83 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v83) = *v65;
          v86 = v35 * (LODWORD(v83) - v33);
          v87 = 8191.0;
          if ((v70 + v86) <= 8191.0)
          {
            v87 = v70 + v86;
            if ((v70 + v86) < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = 8191.0;
          if ((v75 + v86) <= 8191.0)
          {
            v88 = v75 + v86;
            if ((v75 + v86) < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v77 + v86;
          v84 = (v77 + v86) <= 8191.0;
          v90 = 8191.0;
          if (v84)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          LOBYTE(v9) = v65[1];
          v91 = v35 * (LODWORD(v9) - v33);
          v92 = v70 + v91;
          v84 = (v70 + v91) <= 8191.0;
          v93 = 8191.0;
          if (v84)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v75 + v91;
          v84 = (v75 + v91) <= 8191.0;
          v95 = 8191.0;
          if (v84)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          v96 = v77 + v91;
          v97 = 8191.0;
          if (v96 <= 8191.0)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          _H0 = *(v44 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S9, H0 }

          _H0 = *(v44 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v44 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H27 = *(v44 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H19 = *(v44 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          _H8 = *(v44 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H29 = *(v44 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H23 = *(v44 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          _H30 = *(v44 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H21 = *(v44 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H22 = *(v44 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H26 = *(v44 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v116 = (((v227 * _S24) + (v59 * _S9)) + (v226 * _S25)) + (v225 * fmaxf(_S9, fmaxf(_S24, _S25)));
          v117 = 8191.0;
          if (v116 <= 8191.0)
          {
            v117 = v116;
            if (v116 < 0.0)
            {
              v117 = 0.0;
            }
          }

          __asm
          {
            FCVT            S1, H27
            FCVT            S3, H19
            FCVT            S19, H8
          }

          _H27 = *(v45 + 2 * llroundf(v117));
          v122 = (((v227 * _S3) + (v59 * _S1)) + (v226 * _S19)) + (v225 * fmaxf(_S1, fmaxf(_S3, _S19)));
          v123 = 8191.0;
          if (v122 <= 8191.0)
          {
            v123 = v122;
            if (v122 < 0.0)
            {
              v123 = 0.0;
            }
          }

          v124 = v43;
          __asm
          {
            FCVT            S28, H29
            FCVT            S23, H23
            FCVT            S29, H30
          }

          _H30 = *(v45 + 2 * llroundf(v123));
          v129 = (((v227 * _S23) + (v59 * _S28)) + (v226 * _S29)) + (v225 * fmaxf(_S28, fmaxf(_S23, _S29)));
          v130 = 8191.0;
          if (v129 <= 8191.0)
          {
            v130 = v129;
            if (v129 < 0.0)
            {
              v130 = 0.0;
            }
          }

          v131 = v41;
          __asm
          {
            FCVT            S21, H21
            FCVT            S22, H22
            FCVT            S26, H26
          }

          _H31 = *(v45 + 2 * llroundf(v130));
          v136 = (((v227 * _S22) + (v59 * _S21)) + (v226 * _S26)) + (v225 * fmaxf(_S21, fmaxf(_S22, _S26)));
          v137 = 8191.0;
          if (v136 <= 8191.0)
          {
            v137 = v136;
            if (v136 < 0.0)
            {
              v137 = 0.0;
            }
          }

          __asm { FCVT            S27, H27 }

          v139 = _S9 * _S27;
          v140 = _S24 * _S27;
          v141 = _S25 * _S27;
          __asm { FCVT            S27, H30 }

          v143 = _S1 * _S27;
          v144 = _S3 * _S27;
          v145 = _S19 * _S27;
          __asm { FCVT            S27, H31 }

          v147 = _S28 * _S27;
          v148 = _S23 * _S27;
          v149 = _S29 * _S27;
          _H0 = *(v45 + 2 * llroundf(v137));
          __asm { FCVT            S0, H0 }

          v152 = _S21 * _S0;
          v153 = _S22 * _S0;
          _S0 = _S26 * _S0;
          v155 = ((v242 * v140) + (v139 * v243)) + (v141 * v241);
          v156 = ((v238 * v140) + (v139 * v240)) + (v141 * v236);
          v157 = ((v232 * v140) + (v139 * v234)) + (v141 * v230);
          v158 = ((v242 * v144) + (v143 * v243)) + (v145 * v241);
          v159 = ((v238 * v144) + (v143 * v240)) + (v145 * v236);
          v160 = ((v232 * v144) + (v143 * v234)) + (v145 * v230);
          v161 = ((v242 * v148) + (v147 * v243)) + (v149 * v241);
          v162 = ((v238 * v148) + (v147 * v240)) + (v149 * v236);
          v163 = ((v232 * v148) + (v147 * v234)) + (v149 * v230);
          v164 = ((v242 * v153) + (v152 * v243)) + (_S0 * v241);
          v165 = ((v238 * v153) + (v152 * v240)) + (_S0 * v236);
          v166 = ((v232 * v153) + (v152 * v234)) + (_S0 * v230);
          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          LOWORD(_S0) = *(v55 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H1 = *(v55 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          _H3 = *(v55 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          _H19 = *(v55 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          _H26 = *(v55 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          _H27 = *(v55 + 2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0)));
          _H28 = *(v55 + 2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0)));
          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0)));
          _H24 = *(v55 + 2 * llroundf(fminf(fmaxf(v165, 0.0), 8191.0)));
          _H25 = *(v55 + 2 * llroundf(fminf(fmaxf(v166, 0.0), 8191.0)));
          v41 = v131;
          v179 = (v131 * _S22) + (v42 * _S21);
          v43 = v124;
          v180 = (v179 + (v124 * _S29)) + v38;
          v9 = v229;
          if (v180 <= v229)
          {
            v9 = v180;
            if (v180 < v38)
            {
              v9 = v38;
            }
          }

          *v49 = llroundf(v9) << v57;
          v33 = v239;
          v35 = v235;
          if (v48)
          {
            v182 = v247;
            v181 = v7;
            v183 = v233;
            v184 = ((v248 + (_S21 * v231)) + (_S22 * v233)) + (_S29 * v247);
            v9 = v40;
            v185 = v245;
            if (v184 <= v40)
            {
              v9 = ((v248 + (_S21 * v231)) + (_S22 * v233)) + (_S29 * v247);
              if (v184 < v237)
              {
                v9 = v237;
              }
            }

            v186 = v246;
            v187 = ((v248 + (_S21 * v246)) + (_S22 * v245)) + (_S29 * v244);
            v188 = v244;
            *v48 = llroundf(v9) << v57;
            v189 = v40;
            v59 = v228;
            if (v187 <= v40)
            {
              v189 = v187;
              if (v187 < v237)
              {
                v189 = v237;
              }
            }

            v48[1] = llroundf(v189) << v57;
            v48 += 2;
          }

          else
          {
            v183 = v233;
            v182 = v247;
            v181 = v7;
            v185 = v245;
            v186 = v246;
            v188 = v244;
            v59 = v228;
          }

          __asm
          {
            FCVT            S1, H1
            FCVT            S3, H3
            FCVT            S19, H19
          }

          v193 = (((v41 * _S3) + (v42 * _S1)) + (v124 * _S19)) + v38;
          v194 = v229;
          if (v193 <= v229)
          {
            v194 = (((v41 * _S3) + (v42 * _S1)) + (v124 * _S19)) + v38;
            if (v193 < v38)
            {
              v194 = v38;
            }
          }

          *(v49 + 1) = llroundf(v194) << v57;
          if (v48)
          {
            v195 = ((v181 + (_S1 * v231)) + (_S3 * v183)) + (_S19 * v182);
            v196 = v40;
            if (v195 <= v40)
            {
              v196 = ((v181 + (_S1 * v231)) + (_S3 * v183)) + (_S19 * v182);
              if (v195 < v237)
              {
                v196 = v237;
              }
            }

            v197 = ((v181 + (_S1 * v186)) + (_S3 * v185)) + (_S19 * v188);
            *v48 = llroundf(v196) << v57;
            v198 = v40;
            if (v197 <= v40)
            {
              v198 = v197;
              if (v197 < v237)
              {
                v198 = v237;
              }
            }

            v48[1] = llroundf(v198) << v57;
            v48 += 2;
          }

          __asm
          {
            FCVT            S1, H26
            FCVT            S3, H27
            FCVT            S19, H28
          }

          v202 = (((v41 * _S3) + (v42 * _S1)) + (v124 * _S19)) + v38;
          v203 = v229;
          if (v202 <= v229)
          {
            v203 = (((v41 * _S3) + (v42 * _S1)) + (v124 * _S19)) + v38;
            if (v202 < v38)
            {
              v203 = v38;
            }
          }

          *v67 = llroundf(v203) << v57;
          if (v66)
          {
            v204 = ((v181 + (_S1 * v231)) + (_S3 * v183)) + (_S19 * v182);
            v205 = v40;
            if (v204 <= v40)
            {
              v205 = ((v181 + (_S1 * v231)) + (_S3 * v183)) + (_S19 * v182);
              if (v204 < v237)
              {
                v205 = v237;
              }
            }

            v206 = ((v181 + (_S1 * v186)) + (_S3 * v185)) + (_S19 * v188);
            *v66 = llroundf(v205) << v57;
            v207 = v40;
            if (v206 <= v40)
            {
              v207 = v206;
              if (v206 < v237)
              {
                v207 = v237;
              }
            }

            v66[1] = llroundf(v207) << v57;
            v66 += 2;
          }

          __asm
          {
            FCVT            S1, H0
            FCVT            S0, H24
            FCVT            S3, H25
          }

          v210 = (((v41 * _S0) + (v42 * _S1)) + (v124 * _S3)) + v38;
          v211 = v229;
          if (v210 <= v229)
          {
            v211 = (((v41 * _S0) + (v42 * _S1)) + (v124 * _S3)) + v38;
            if (v210 < v38)
            {
              v211 = v38;
            }
          }

          *(v67 + 1) = llroundf(v211) << v57;
          if (v66)
          {
            v212 = ((v181 + (_S1 * v231)) + (_S0 * v183)) + (_S3 * v182);
            v213 = v40;
            if (v212 <= v40)
            {
              v213 = ((v181 + (_S1 * v231)) + (_S0 * v183)) + (_S3 * v182);
              if (v212 < v237)
              {
                v213 = v237;
              }
            }

            v214 = ((v181 + (_S1 * v186)) + (_S0 * v185)) + (_S3 * v188);
            *v66 = llroundf(v213) << v57;
            _S0 = v40;
            v34 = v253;
            if (v214 <= v40)
            {
              _S0 = v214;
              if (v214 < v237)
              {
                _S0 = v237;
              }
            }

            v66[1] = llroundf(_S0) << v57;
            v66 += 2;
          }

          else
          {
            v34 = v253;
          }

          v56 += 2;
          v65 += 2;
          v49 += 4;
          v67 += 4;
          v64 += 2;
        }

        while (v64 < v28);
      }

      v56 = &v61[v29];
      v58 += v30;
      v49 = &v62[v31];
      v48 = (result + v63);
      v26 += 2;
    }

    while (v26 < v18);
  }

  if (v224 && v223)
  {
    if (v18 >= 1)
    {
      v215 = 0;
      v216 = (v224 + v23 * v221 + v222);
      do
      {
        if (v15 >= 1)
        {
          v217 = v15;
          v218 = v25;
          v219 = v216;
          do
          {
            v220 = *v219++;
            *v218++ = v220 | (v220 << 8);
            --v217;
          }

          while (v217);
        }

        v216 += v23;
        v25 += v24;
        ++v215;
      }

      while (v215 != v18);
    }
  }

  else if (v223 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v25, 255, 2 * v15);
      }

      v25 += v24;
      --v18;
    }

    while (v18);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = 2 * (v28 + v25) + 2, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (*a8 * v52 + 2 * (v44 + v28) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Mat_TRC_xf444_neon_fp16_GCD(void *a1, uint64_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6)
{
  v265 = *(a1 + 36);
  v6 = 2 * *a1;
  v264 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v6);
  v7 = a1[14];
  v9 = a1[12];
  v8 = a1[13];
  v10 = v8 * a2 / v6;
  v11 = a1[15] + 2 * v10;
  v12 = 2 * ((v8 + v8 * a2) / v6 - v10);
  v13 = a1[7];
  v14 = a1[8];
  v16 = a1[16];
  result = a1[17];
  v263 = v14[2];
  v267 = v13[2];
  v268 = result[2];
  v266 = v16[2];
  v17 = (v266 + v268 * v11 + 2 * v7);
  if (v12 >= 1)
  {
    v18 = 0;
    v19 = a1[19];
    v20 = v9 - 7;
    v22 = *v14;
    v21 = v14[1];
    v23 = result[1];
    result = *result;
    *&a3 = v19[16].u32[0];
    v24 = v19[17].u16[2];
    v272 = v9;
    v25 = v19[17].u16[3];
    a5.i32[0] = v19[3].i32[1];
    v26 = v19[18].u16[0];
    v27 = v19[18].u16[1];
    v28 = v19[18].u16[2];
    v29 = v19[18].u16[3];
    v30 = v19[19].u16[0];
    _S9 = v19[4].f32[1];
    _S29 = v19[5].f32[0];
    _S30 = v19[5].f32[1];
    _S28 = v19[6].i32[0];
    _S12 = v19[6].i32[1];
    _S4 = v19[7].f32[0];
    _S8 = v19[7].i32[1];
    _S14 = v19[8].i32[0];
    _S21 = v19[8].f32[1];
    _S5 = v19[9].i32[0];
    v41 = &v19[20] + 4;
    a6.f32[0] = 8191.0 / *&a3;
    v42 = v24;
    v43 = v25;
    _S24 = (8191.0 / *&a3) * v19->f32[0];
    v45 = v26;
    v46 = v28;
    v47 = v29;
    v48 = v30;
    *&a3 = v24;
    v49 = &v19[2068] + 4;
    __asm { FCVT            H1, S24 }

    v306 = vdupq_lane_s16(*&a3, 0);
    v307 = _H1;
    v55 = v25;
    LODWORD(v9) = v272;
    v56 = -v55;
    a5.i32[1] = v19[1].i32[0];
    *a5.f32 = vmul_n_f32(*a5.f32, a6.f32[0]);
    *a6.f32 = vmul_n_f32(v19[2], a6.f32[0]);
    v304 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v57 = vmulq_n_f16(v304, v56);
    v302 = v57;
    *v57.i16 = v26;
    v58 = vdupq_lane_s16(*v57.i8, 0);
    *v57.i16 = v27;
    v59 = vdupq_lane_s16(*v57.i8, 0);
    *v57.i16 = v28;
    v60 = vdupq_lane_s16(*v57.i8, 0);
    v324 = v60;
    *v60.i16 = v29;
    v319 = vdupq_lane_s16(*v60.i8, 0);
    v320 = v59;
    v303 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v61 = vmulq_n_f16(v303, v56);
    v300 = v61;
    *v61.i16 = v30;
    v318 = vdupq_lane_s16(*v61.i8, 0);
    v62 = v19[16].u8[4];
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v66 = v16;
    v64 = *v16;
    v65 = v66[1];
    if (v65)
    {
      v67 = (v65 + v23 * v11 + 2 * v7);
    }

    else
    {
      v67 = 0;
    }

    v68 = (v64 + result * v11 + 2 * v7);
    v69 = (v13[1] + v21 * (v264 / 2) + v265);
    v70 = (*v13 + v22 * v264 + v265);
    __asm { FCVT            H11, S9 }

    v323 = _H11;
    __asm { FCVT            H11, S29 }

    v322 = _H11;
    __asm { FCVT            H11, S30 }

    v321 = _H11;
    __asm { FCVT            H13, S28 }

    v317 = _H13;
    __asm { FCVT            H13, S12 }

    v316 = _H13;
    __asm { FCVT            H13, S4 }

    v315 = _H13;
    __asm { FCVT            H13, S8 }

    v314 = _H13;
    __asm { FCVT            H13, S14 }

    v313 = _H13;
    v325 = v19[8].f32[1];
    __asm { FCVT            H13, S21 }

    v312 = _H13;
    v310 = v19[9].f32[0];
    __asm { FCVT            H5, S5 }

    v299 = v19[9].f32[1];
    __asm { FCVT            H0, S0 }

    v283 = _H0;
    v284 = _H5;
    v298 = v19[10].f32[0];
    __asm { FCVT            H0, S1 }

    v282 = _H0;
    v296 = v19[10].f32[1];
    __asm { FCVT            H0, S7 }

    v281 = _H0;
    v294 = v19[11].f32[0];
    __asm { FCVT            H0, S16 }

    v280 = _H0;
    v292 = v19[11].f32[1];
    __asm { FCVT            H0, S17 }

    v279 = _H0;
    v290 = v19[12].f32[0];
    __asm { FCVT            H0, S19 }

    v278 = _H0;
    v288 = v19[12].f32[1];
    __asm { FCVT            H0, S25 }

    v277 = _H0;
    v286 = v19[13].f32[0];
    __asm { FCVT            H0, S11 }

    v275 = _H0;
    v276 = vdupq_n_s16(v63);
    v305 = a5.f32[0];
    _Q0.i32[0] = a6.i32[1];
    v274 = a5.f32[1];
    v271 = result;
    v311 = v43;
    v309 = v47;
    v308 = v48;
    v301 = v58;
    v297 = v19[8].f32[0];
    v295 = _S24;
    v293 = v19[6].f32[1];
    v291 = v27;
    v289 = v19[7].f32[1];
    v287 = v42;
    v285 = v19[6].f32[0];
    v273 = v19[4].f32[1];
    do
    {
      v90 = v70 + v22;
      v91 = result + v68;
      v92 = v67 + v23;
      if (v9 < 8)
      {
        v142 = 0;
        v96 = (v67 + v23);
        v95 = (result + v68);
        v141 = v69;
        v94 = (v70 + v22);
      }

      else
      {
        v93 = 0;
        v94 = (v70 + v22);
        v95 = (result + v68);
        v96 = (v67 + v23);
        do
        {
          v97 = *&v69[v93];
          _S21 = 0.0;
          *v98.i8 = vzip1_s8(v97, 0);
          v98.u64[1] = vzip2_s8(v97, 0);
          v99 = vcvtq_f16_u16(v98);
          v100 = vmlaq_f16(v302, v304, v99);
          v101 = vmlaq_f16(v300, v303, v99);
          v102 = vtrn2q_s16(v100, v100);
          v103 = vtrn1q_s16(v100, v100);
          v104 = vuzp1q_s16(v101, v99);
          v105 = *v70++;
          *v106.i8 = vzip1_s8(v105, 0);
          *v99.i8 = vzip2_s8(v105, 0);
          v106.i64[1] = v99.i64[0];
          v101.i64[0] = vuzp2q_s16(v101, v99).u64[0];
          v107 = *v94++;
          *v99.i8 = vzip1_s8(v107, 0);
          v99.u64[1] = vzip2_s8(v107, 0);
          v108 = vsubq_f16(vcvtq_f16_u16(v106), v306);
          v109.i64[0] = 0x9000900090009000;
          v109.i64[1] = 0x9000900090009000;
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v108, v307), 0), v109));
          v106.i16[0] = *&v41[2 * v110.u16[0]];
          *v104.i8 = vadd_f16(*v104.i8, *v101.i8);
          v111 = vzip1q_s16(v104, v104);
          v106.i16[1] = *&v41[2 * v110.u16[1]];
          v106.i16[2] = *&v41[2 * v110.u16[2]];
          v106.i16[3] = *&v41[2 * v110.u16[3]];
          v106.i16[4] = *&v41[2 * v110.u16[4]];
          v106.i16[5] = *&v41[2 * v110.u16[5]];
          v106.i16[6] = *&v41[2 * v110.u16[6]];
          v106.i16[7] = *&v41[2 * v110.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v111, v108, v307), 0), v109));
          v113.i16[0] = *&v41[2 * v112.u16[0]];
          v113.i16[1] = *&v41[2 * v112.u16[1]];
          v113.i16[2] = *&v41[2 * v112.u16[2]];
          v113.i16[3] = *&v41[2 * v112.u16[3]];
          v113.i16[4] = *&v41[2 * v112.u16[4]];
          v113.i16[5] = *&v41[2 * v112.u16[5]];
          v113.i16[6] = *&v41[2 * v112.u16[6]];
          v113.i16[7] = *&v41[2 * v112.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v108, v307), 0), v109));
          v115.i16[0] = *&v41[2 * v114.u16[0]];
          v116 = vsubq_f16(vcvtq_f16_u16(v99), v306);
          v115.i16[1] = *&v41[2 * v114.u16[1]];
          v115.i16[2] = *&v41[2 * v114.u16[2]];
          v115.i16[3] = *&v41[2 * v114.u16[3]];
          v115.i16[4] = *&v41[2 * v114.u16[4]];
          v117 = vmlaq_n_f16(v111, v116, v307);
          v118 = vmlaq_n_f16(v103, v116, v307);
          v115.i16[5] = *&v41[2 * v114.u16[5]];
          v115.i16[6] = *&v41[2 * v114.u16[6]];
          v115.i16[7] = *&v41[2 * v114.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v116, v307), 0), v109));
          v102.i16[0] = *&v41[2 * v119.u16[0]];
          v102.i16[1] = *&v41[2 * v119.u16[1]];
          v102.i16[2] = *&v41[2 * v119.u16[2]];
          v102.i16[3] = *&v41[2 * v119.u16[3]];
          v102.i16[4] = *&v41[2 * v119.u16[4]];
          v102.i16[5] = *&v41[2 * v119.u16[5]];
          v102.i16[6] = *&v41[2 * v119.u16[6]];
          v102.i16[7] = *&v41[2 * v119.u16[7]];
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v109));
          v117.i16[0] = *&v41[2 * v120.u16[0]];
          v117.i16[1] = *&v41[2 * v120.u16[1]];
          v117.i16[2] = *&v41[2 * v120.u16[2]];
          v117.i16[3] = *&v41[2 * v120.u16[3]];
          v117.i16[4] = *&v41[2 * v120.u16[4]];
          v117.i16[5] = *&v41[2 * v120.u16[5]];
          v117.i16[6] = *&v41[2 * v120.u16[6]];
          v117.i16[7] = *&v41[2 * v120.u16[7]];
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, 0), v109));
          v108.i16[0] = *&v41[2 * v121.u16[0]];
          v108.i16[1] = *&v41[2 * v121.u16[1]];
          v108.i16[2] = *&v41[2 * v121.u16[2]];
          v108.i16[3] = *&v41[2 * v121.u16[3]];
          v108.i16[4] = *&v41[2 * v121.u16[4]];
          v108.i16[5] = *&v41[2 * v121.u16[5]];
          v108.i16[6] = *&v41[2 * v121.u16[6]];
          v108.i16[7] = *&v41[2 * v121.u16[7]];
          v122 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v284), v113, v283), v115, v282);
          v123 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v281), v113, v280), v115, v279);
          v124 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v115, v275), v113, v277), v106, v278);
          v125 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v284), v117, v283), v108, v282);
          v126 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v281), v117, v280), v108, v279);
          v127 = vmulq_n_f16(v108, v275);
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, 0), v109));
          v129.i16[0] = *&v49[2 * v128.u16[0]];
          v129.i16[1] = *&v49[2 * v128.u16[1]];
          v129.i16[2] = *&v49[2 * v128.u16[2]];
          v129.i16[3] = *&v49[2 * v128.u16[3]];
          v129.i16[4] = *&v49[2 * v128.u16[4]];
          v129.i16[5] = *&v49[2 * v128.u16[5]];
          v129.i16[6] = *&v49[2 * v128.u16[6]];
          v129.i16[7] = *&v49[2 * v128.u16[7]];
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v123, 0), v109));
          v131.i16[0] = *&v49[2 * v130.u16[0]];
          v131.i16[1] = *&v49[2 * v130.u16[1]];
          v131.i16[2] = *&v49[2 * v130.u16[2]];
          v131.i16[3] = *&v49[2 * v130.u16[3]];
          v131.i16[4] = *&v49[2 * v130.u16[4]];
          v131.i16[5] = *&v49[2 * v130.u16[5]];
          v131.i16[6] = *&v49[2 * v130.u16[6]];
          v131.i16[7] = *&v49[2 * v130.u16[7]];
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, 0), v109));
          v133.i16[0] = *&v49[2 * v132.u16[0]];
          v133.i16[1] = *&v49[2 * v132.u16[1]];
          v133.i16[2] = *&v49[2 * v132.u16[2]];
          v133.i16[3] = *&v49[2 * v132.u16[3]];
          v133.i16[4] = *&v49[2 * v132.u16[4]];
          v133.i16[5] = *&v49[2 * v132.u16[5]];
          v133.i16[6] = *&v49[2 * v132.u16[6]];
          v133.i16[7] = *&v49[2 * v132.u16[7]];
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v125, 0), v109));
          v135.i16[0] = *&v49[2 * v134.u16[0]];
          v135.i16[1] = *&v49[2 * v134.u16[1]];
          v135.i16[2] = *&v49[2 * v134.u16[2]];
          v135.i16[3] = *&v49[2 * v134.u16[3]];
          v135.i16[4] = *&v49[2 * v134.u16[4]];
          v135.i16[5] = *&v49[2 * v134.u16[5]];
          v135.i16[6] = *&v49[2 * v134.u16[6]];
          v135.i16[7] = *&v49[2 * v134.u16[7]];
          v136 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v126, 0), v109));
          _Q0.i16[0] = *&v49[2 * v136.u16[0]];
          _Q0.i16[1] = *&v49[2 * v136.u16[1]];
          _Q0.i16[2] = *&v49[2 * v136.u16[2]];
          _Q0.i16[3] = *&v49[2 * v136.u16[3]];
          _Q0.i16[4] = *&v49[2 * v136.u16[4]];
          _Q0.i16[5] = *&v49[2 * v136.u16[5]];
          _Q0.i16[6] = *&v49[2 * v136.u16[6]];
          _Q0.i16[7] = *&v49[2 * v136.u16[7]];
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v127, v117, v277), v102, v278), 0), v109));
          v138.i16[0] = *&v49[2 * v137.u16[0]];
          v138.i16[1] = *&v49[2 * v137.u16[1]];
          v138.i16[2] = *&v49[2 * v137.u16[2]];
          v138.i16[3] = *&v49[2 * v137.u16[3]];
          v138.i16[4] = *&v49[2 * v137.u16[4]];
          v138.i16[5] = *&v49[2 * v137.u16[5]];
          v138.i16[6] = *&v49[2 * v137.u16[6]];
          v138.i16[7] = *&v49[2 * v137.u16[7]];
          *v68++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v129, v323), v131, v322), v133, v321), v58), v324)), v276);
          if (v67)
          {
            v326.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v320, v129, v317), v131, v316), v133, v315), v319), v318), v319), v318)), v276);
            v326.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v320, v129, v314), v131, v313), v133, v312)), v276);
            vst2q_s16(v67, v326);
            v67 += 16;
          }

          *v95++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v135, v323), _Q0, v322), v138, v321), v58), v324)), v276);
          _S9 = v273;
          if (v96)
          {
            v139 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v320, v135, v314), _Q0, v313), v138, v312);
            _Q0 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v320, v135, v317), _Q0, v316), v138, v315), v319), v318), v319), v318)), v276);
            v140 = vshlq_u16(vcvtq_u16_f16(v139), v276);
            vst2q_s16(v96, *_Q0.i8);
            v96 += 16;
          }

          v93 += 8;
        }

        while (v93 < v20);
        v141 = &v69[v93];
        v142 = v272 & 0xFFFFFFF8;
        result = v271;
        v43 = v311;
      }

      while (v142 < (v272 & 0xFFFFFFFE))
      {
        _Q0.i8[0] = v141[1];
        v143 = _Q0.u32[0] - v43;
        v144 = LODWORD(v274);
        v145 = v274 * v143;
        LOBYTE(v144) = v70->i8[0];
        v146 = _S24 * (v144 - v42);
        v147 = (v274 * v143) + v146;
        v148 = 8191.0;
        if (v147 <= 8191.0)
        {
          v148 = (v274 * v143) + v146;
          if (v147 < 0.0)
          {
            v148 = 0.0;
          }
        }

        LOBYTE(v147) = *v141;
        v149 = LODWORD(v147) - v43;
        v150 = (a6.f32[1] * v143) + (v149 * a6.f32[0]);
        v151 = 8191.0;
        if ((v146 + v150) <= 8191.0)
        {
          v151 = v146 + v150;
          if ((v146 + v150) < 0.0)
          {
            v151 = 0.0;
          }
        }

        v152 = v305 * v149;
        v153 = (v305 * v149) + v146;
        v154 = 8191.0;
        if (v153 <= 8191.0)
        {
          v154 = v153;
          if (v153 < 0.0)
          {
            v154 = 0.0;
          }
        }

        LOBYTE(v153) = v70->i8[1];
        v155 = _S24 * (LODWORD(v153) - v42);
        v156 = 8191.0;
        if ((v145 + v155) <= 8191.0)
        {
          v156 = v145 + v155;
          if ((v145 + v155) < 0.0)
          {
            v156 = 0.0;
          }
        }

        v157 = 8191.0;
        if ((v150 + v155) <= 8191.0)
        {
          v157 = v150 + v155;
          if ((v150 + v155) < 0.0)
          {
            v157 = 0.0;
          }
        }

        v158 = v152 + v155;
        v159 = (v152 + v155) <= 8191.0;
        v160 = 8191.0;
        if (v159)
        {
          v160 = v158;
          if (v158 < 0.0)
          {
            v160 = 0.0;
          }
        }

        LOBYTE(v158) = v94->i8[0];
        v161 = _S24 * (LODWORD(v158) - v42);
        v162 = 8191.0;
        if ((v145 + v161) <= 8191.0)
        {
          v162 = v145 + v161;
          if ((v145 + v161) < 0.0)
          {
            v162 = 0.0;
          }
        }

        v163 = 8191.0;
        if ((v150 + v161) <= 8191.0)
        {
          v163 = v150 + v161;
          if ((v150 + v161) < 0.0)
          {
            v163 = 0.0;
          }
        }

        v164 = v152 + v161;
        v159 = (v152 + v161) <= 8191.0;
        v165 = 8191.0;
        if (v159)
        {
          v165 = v164;
          if (v164 < 0.0)
          {
            v165 = 0.0;
          }
        }

        LOBYTE(_S21) = v94->i8[1];
        v166 = _S24 * (LODWORD(_S21) - v42);
        v167 = v145 + v166;
        v159 = (v145 + v166) <= 8191.0;
        v168 = 8191.0;
        if (v159)
        {
          v168 = v167;
          if (v167 < 0.0)
          {
            v168 = 0.0;
          }
        }

        v169 = v150 + v166;
        v159 = (v150 + v166) <= 8191.0;
        v170 = 8191.0;
        if (v159)
        {
          v170 = v169;
          if (v169 < 0.0)
          {
            v170 = 0.0;
          }
        }

        v171 = _S30;
        v172 = _S29;
        v173 = v152 + v166;
        v159 = (v152 + v166) <= 8191.0;
        v174 = 8191.0;
        if (v159)
        {
          v174 = v173;
          if (v173 < 0.0)
          {
            v174 = 0.0;
          }
        }

        _H0 = *&v41[2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H6 = *&v41[2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H7 = *&v41[2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        _H17 = *&v41[2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
        _H21 = *&v41[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm
        {
          FCVT            S17, H17
          FCVT            S21, H21
        }

        _H1 = *&v41[2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v41[2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H25 = *&v41[2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0))];
        __asm { FCVT            S25, H25 }

        _H19 = *&v41[2 * llroundf(fminf(fmaxf(v165, 0.0), 8191.0))];
        __asm { FCVT            S19, H19 }

        _H16 = *&v41[2 * llroundf(fminf(fmaxf(v168, 0.0), 8191.0))];
        _H10 = *&v41[2 * llroundf(fminf(fmaxf(v170, 0.0), 8191.0))];
        __asm
        {
          FCVT            S16, H16
          FCVT            S10, H10
        }

        _H11 = *&v41[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        __asm { FCVT            S11, H11 }

        v199 = ((v299 * _S6) + (_S0 * v310)) + (_S7 * v298);
        v200 = ((v294 * _S6) + (_S0 * v296)) + (_S7 * v292);
        _S0 = ((v288 * _S6) + (_S0 * v290)) + (_S7 * v286);
        v202 = ((v299 * _S21) + (_S17 * v310)) + (_S1 * v298);
        v203 = ((v294 * _S21) + (_S17 * v296)) + (_S1 * v292);
        v204 = ((v288 * _S21) + (_S17 * v290)) + (_S1 * v286);
        v205 = ((v299 * _S25) + (_S2 * v310)) + (_S19 * v298);
        v206 = ((v294 * _S25) + (_S2 * v296)) + (_S19 * v292);
        v207 = ((v288 * _S25) + (_S2 * v290)) + (_S19 * v286);
        v208 = ((v299 * _S10) + (_S16 * v310)) + (_S11 * v298);
        v209 = ((v294 * _S10) + (_S16 * v296)) + (_S11 * v292);
        v210 = ((v288 * _S10) + (_S16 * v290)) + (_S11 * v286);
        LOWORD(_S1) = *&v49[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        __asm { FCVT            S19, H1 }

        LOWORD(_S1) = *&v49[2 * llroundf(fminf(fmaxf(v200, 0.0), 8191.0))];
        __asm { FCVT            S13, H1 }

        LOWORD(_S0) = *&v49[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S15, H0 }

        _H1 = *&v49[2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0))];
        _H2 = *&v49[2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0))];
        _H17 = *&v49[2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0))];
        _H0 = *&v49[2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0))];
        _H25 = *&v49[2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0))];
        _H11 = *&v49[2 * llroundf(fminf(fmaxf(v207, 0.0), 8191.0))];
        _H6 = *&v49[2 * llroundf(fminf(fmaxf(v208, 0.0), 8191.0))];
        _H7 = *&v49[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        _H16 = *&v49[2 * llroundf(fminf(fmaxf(v210, 0.0), 8191.0))];
        _S29 = v172;
        _S30 = v171;
        v223 = (((v172 * _S13) + (_S9 * _S19)) + (v171 * _S15)) + v45;
        v224 = v46;
        if (v223 <= v46)
        {
          v224 = (((v172 * _S13) + (_S9 * _S19)) + (v171 * _S15)) + v45;
          if (v223 < v45)
          {
            v224 = v45;
          }
        }

        v68->i16[0] = llroundf(v224) << v63;
        v42 = v287;
        if (v67)
        {
          v225 = v293;
          v226 = ((v291 + (_S19 * v285)) + (_S13 * v293)) + (_S15 * _S4);
          v227 = v308;
          v228 = v308;
          v229 = v289;
          _S24 = v295;
          v230 = v309;
          if (v226 <= v308)
          {
            v228 = ((v291 + (_S19 * v285)) + (_S13 * v293)) + (_S15 * _S4);
            if (v226 < v309)
            {
              v228 = v309;
            }
          }

          v231 = v297;
          v232 = ((v291 + (_S19 * v289)) + (_S13 * v297)) + (_S15 * v325);
          *v67 = llroundf(v228) << v63;
          v233 = v308;
          v58 = v301;
          if (v232 <= v308)
          {
            v233 = v232;
            if (v232 < v309)
            {
              v233 = v309;
            }
          }

          v67[1] = llroundf(v233) << v63;
          v67 += 2;
        }

        else
        {
          v225 = v293;
          v229 = v289;
          v231 = v297;
          _S24 = v295;
          v230 = v309;
          v227 = v308;
          v58 = v301;
        }

        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H2
          FCVT            S17, H17
        }

        _S21 = (((_S29 * _S2) + (_S9 * _S1)) + (v171 * _S17)) + v45;
        v237 = v46;
        if (_S21 <= v46)
        {
          v237 = (((_S29 * _S2) + (_S9 * _S1)) + (v171 * _S17)) + v45;
          if (_S21 < v45)
          {
            v237 = v45;
          }
        }

        v68->i16[1] = llroundf(v237) << v63;
        if (v67)
        {
          _S21 = ((v291 + (_S1 * v285)) + (_S2 * v225)) + (_S17 * _S4);
          v238 = v227;
          if (_S21 <= v227)
          {
            v238 = ((v291 + (_S1 * v285)) + (_S2 * v225)) + (_S17 * _S4);
            if (_S21 < v230)
            {
              v238 = v230;
            }
          }

          v239 = ((v291 + (_S1 * v229)) + (_S2 * v231)) + (_S17 * v325);
          *v67 = llroundf(v238) << v63;
          v240 = v227;
          v43 = v311;
          if (v239 <= v227)
          {
            v240 = v239;
            if (v239 < v230)
            {
              v240 = v230;
            }
          }

          v67[1] = llroundf(v240) << v63;
          v67 += 2;
        }

        else
        {
          v43 = v311;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H25
          FCVT            S2, H11
        }

        v244 = (((_S29 * _S1) + (_S9 * _S0)) + (v171 * _S2)) + v45;
        v245 = v46;
        if (v244 <= v46)
        {
          v245 = (((_S29 * _S1) + (_S9 * _S0)) + (v171 * _S2)) + v45;
          if (v244 < v45)
          {
            v245 = v45;
          }
        }

        v95->i16[0] = llroundf(v245) << v63;
        if (v96)
        {
          v246 = ((v291 + (_S0 * v285)) + (_S1 * v225)) + (_S2 * _S4);
          v247 = v227;
          if (v246 <= v227)
          {
            v247 = ((v291 + (_S0 * v285)) + (_S1 * v225)) + (_S2 * _S4);
            if (v246 < v230)
            {
              v247 = v230;
            }
          }

          v248 = ((v291 + (_S0 * v229)) + (_S1 * v231)) + (_S2 * v325);
          *v96 = llroundf(v247) << v63;
          v249 = v227;
          if (v248 <= v227)
          {
            v249 = v248;
            if (v248 < v230)
            {
              v249 = v230;
            }
          }

          v96[1] = llroundf(v249) << v63;
          v96 += 2;
        }

        __asm
        {
          FCVT            S0, H6
          FCVT            S1, H7
          FCVT            S2, H16
        }

        v252 = (((_S29 * _S1) + (_S9 * *_Q0.i32)) + (v171 * _S2)) + v45;
        v253 = v46;
        if (v252 <= v46)
        {
          v253 = (((_S29 * _S1) + (_S9 * *_Q0.i32)) + (v171 * _S2)) + v45;
          if (v252 < v45)
          {
            v253 = v45;
          }
        }

        v95->i16[1] = llroundf(v253) << v63;
        if (v96)
        {
          v254 = ((v291 + (*_Q0.i32 * v285)) + (_S1 * v225)) + (_S2 * _S4);
          v255 = v227;
          if (v254 <= v227)
          {
            v255 = ((v291 + (*_Q0.i32 * v285)) + (_S1 * v225)) + (_S2 * _S4);
            if (v254 < v230)
            {
              v255 = v230;
            }
          }

          *_Q0.i32 = ((v291 + (*_Q0.i32 * v229)) + (_S1 * v231)) + (_S2 * v325);
          *v96 = llroundf(v255) << v63;
          v256 = v227;
          if (*_Q0.i32 <= v227)
          {
            v256 = *_Q0.i32;
            if (*_Q0.i32 < v230)
            {
              v256 = v230;
            }
          }

          v96[1] = llroundf(v256) << v63;
          v96 += 2;
        }

        v142 += 2;
        v141 += 2;
        v70 = (v70 + 2);
        v94 = (v94 + 2);
        v68 = (v68 + 4);
        v95 = (v95 + 4);
      }

      v70 = &v90[v22];
      v69 += v21;
      v68 = (result + v91);
      v67 = &v92[v23];
      v18 += 2;
      v9 = v272;
    }

    while (v18 < v12);
  }

  if (v267 && v266)
  {
    if (v12 >= 1)
    {
      v257 = 0;
      v258 = (v267 + v263 * v264 + v265);
      do
      {
        if (v9 >= 1)
        {
          v259 = v9;
          v260 = v17;
          v261 = v258;
          do
          {
            v262 = *v261++;
            *v260++ = v262 | (v262 << 8);
            --v259;
          }

          while (v259);
        }

        v258 += v263;
        v17 += v268;
        ++v257;
      }

      while (v257 != v12);
    }
  }

  else if (v266 && v12 >= 1)
  {
    do
    {
      if (v9 >= 1)
      {
        result = memset(v17, 255, 2 * v9);
      }

      v17 += v268;
      --v12;
    }

    while (v12);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = 2 * (v28 + v25) + 2, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (*a8 * v52 + 2 * (v44 + v28) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_TRC_Mat_TRC_xf444_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v8 = 2 * *a1;
  v200 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v8);
  v201 = *(a1 + 36);
  v9 = a1[14];
  v11 = a1[12];
  v10 = a1[13];
  v12 = v10 * a2 / v8;
  v13 = a1[15] + 2 * v12;
  v14 = 2 * ((v10 + v10 * a2) / v8 - v12);
  v15 = a1[7];
  v16 = a1[8];
  v18 = a1[16];
  result = a1[17];
  v19 = v16[2];
  v202 = v15[2];
  v20 = result[2];
  v21 = v18[2];
  v22 = (v21 + v20 * v13 + 2 * v9);
  if (v14 >= 1)
  {
    v23 = 0;
    v24 = a1[19];
    v25 = v11 & 0xFFFFFFFE;
    v26 = *v16;
    v27 = v16[1];
    v28 = *result;
    result = result[1];
    LOWORD(a5) = *(v24 + 140);
    LOWORD(a6) = *(v24 + 142);
    v29 = 8191.0 / *(v24 + 128);
    v30 = LODWORD(a5);
    v31 = LODWORD(a6);
    v32 = v29 * *v24;
    v223 = v29 * *(v24 + 16);
    v224 = v29 * *(v24 + 8);
    v33 = v29 * *(v24 + 20);
    *&v34 = v29 * *(v24 + 28);
    v221 = *&v34;
    v222 = v33;
    LOWORD(v34) = *(v24 + 144);
    v35 = v34;
    LOWORD(v34) = *(v24 + 146);
    v36 = v34;
    LOWORD(v34) = *(v24 + 148);
    v37 = v34;
    LOWORD(v34) = *(v24 + 150);
    v38 = v34;
    LOWORD(v34) = *(v24 + 152);
    v39 = v34;
    v41 = *(v24 + 36);
    v40 = *(v24 + 40);
    v43 = *(v24 + 44);
    v42 = *(v24 + 48);
    v44 = *(v24 + 52);
    v45 = *(v24 + 56);
    v46 = *(v24 + 60);
    v47 = *(v24 + 64);
    v48 = *(v24 + 68);
    v215 = *(v24 + 76);
    v216 = *(v24 + 72);
    v49 = *(v24 + 88);
    v213 = *(v24 + 84);
    v214 = *(v24 + 80);
    v210 = *(v24 + 92);
    v211 = v49;
    v208 = *(v24 + 96);
    _S1 = *(v24 + 104);
    v206 = *(v24 + 100);
    v204 = _S1;
    v51 = v24 + 164;
    v52 = v24 + 16548;
    v53 = *v18;
    v54 = v18[1];
    _ZF = v54 == 0;
    v56 = v54 + result * v13 + 2 * v9;
    if (_ZF)
    {
      v57 = 0;
    }

    else
    {
      v57 = v56;
    }

    v58 = (v53 + v28 * v13 + 2 * v9);
    v60 = *v15;
    v59 = v15[1];
    v61 = (v60 + v26 * v200 + v201);
    v62 = *(v24 + 132);
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v64 = v59 + v27 * (v200 / 2) + v201;
    v225 = v31;
    v226 = v40;
    v219 = v46;
    v220 = v36;
    v217 = v48;
    v218 = v47;
    v212 = v45;
    v209 = v44;
    v207 = v32;
    v205 = v30;
    v203 = v42;
    do
    {
      v65 = &v61[v26];
      v66 = &v58[v28];
      v67 = result + v57;
      if (v25 >= 1)
      {
        v68 = 0;
        v69 = &v61[v26];
        v70 = (result + v57);
        v71 = &v58[v28];
        do
        {
          LOBYTE(_S1) = *(v64 + v68 + 1);
          v72 = LODWORD(_S1) - v31;
          v73 = LODWORD(v224);
          v74 = v224 * v72;
          LOBYTE(v73) = *v61;
          v75 = v32 * (v73 - v30);
          v76 = (v224 * v72) + v75;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = (v224 * v72) + v75;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOBYTE(v49) = *(v64 + v68);
          v78 = LODWORD(v49) - v31;
          v79 = (v222 * v72) + (v78 * v223);
          v80 = 8191.0;
          if ((v75 + v79) <= 8191.0)
          {
            v80 = v75 + v79;
            if ((v75 + v79) < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v221 * v78;
          v82 = (v221 * v78) + v75;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          LOBYTE(v82) = v61[1];
          v84 = v32 * (LODWORD(v82) - v30);
          v85 = 8191.0;
          if ((v74 + v84) <= 8191.0)
          {
            v85 = v74 + v84;
            if ((v74 + v84) < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = 8191.0;
          if ((v79 + v84) <= 8191.0)
          {
            v86 = v79 + v84;
            if ((v79 + v84) < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v81 + v84;
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          LOBYTE(v87) = *v69;
          v89 = LODWORD(v87) - v30;
          v90 = v32 * v89;
          v91 = 8191.0;
          if ((v74 + (v32 * v89)) <= 8191.0)
          {
            v91 = v74 + (v32 * v89);
            if (v91 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = 8191.0;
          if ((v79 + v90) <= 8191.0)
          {
            v92 = v79 + v90;
            if ((v79 + v90) < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v81 + v90;
          v94 = (v81 + v90) <= 8191.0;
          v95 = 8191.0;
          if (v94)
          {
            v95 = v93;
            if (v93 < 0.0)
            {
              v95 = 0.0;
            }
          }

          LOBYTE(v89) = v69[1];
          v96 = v32 * (LODWORD(v89) - v30);
          v97 = v74 + v96;
          v94 = (v74 + v96) <= 8191.0;
          v98 = 8191.0;
          if (v94)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          v99 = v43;
          v100 = v79 + v96;
          v94 = (v79 + v96) <= 8191.0;
          v101 = 8191.0;
          if (v94)
          {
            v101 = v100;
            if (v100 < 0.0)
            {
              v101 = 0.0;
            }
          }

          v102 = v41;
          v103 = v38;
          v104 = v81 + v96;
          v105 = 8191.0;
          if (v104 <= 8191.0)
          {
            v105 = v104;
            if (v104 < 0.0)
            {
              v105 = 0.0;
            }
          }

          _H1 = *(v51 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          _H1 = *(v51 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H5 = *(v51 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H2 = *(v51 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H6 = *(v51 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S6, H6
          }

          _H26 = *(v51 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v51 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H3 = *(v51 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H19 = *(v51 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H7 = *(v51 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          _H24 = *(v51 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm
          {
            FCVT            S7, H7
            FCVT            S24, H24
          }

          _H25 = *(v51 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v133 = ((v215 * _S1) + (_S4 * v216)) + (_S5 * v214);
          v134 = ((v211 * _S1) + (_S4 * v213)) + (_S5 * v210);
          _S1 = ((v206 * _S1) + (_S4 * v208)) + (_S5 * v204);
          v136 = ((v215 * _S6) + (_S2 * v216)) + (_S26 * v214);
          v137 = ((v211 * _S6) + (_S2 * v213)) + (_S26 * v210);
          v138 = ((v206 * _S6) + (_S2 * v208)) + (_S26 * v204);
          v139 = ((v215 * _S3) + (_S27 * v216)) + (_S19 * v214);
          v140 = ((v211 * _S3) + (_S27 * v213)) + (_S19 * v210);
          v141 = ((v206 * _S3) + (_S27 * v208)) + (_S19 * v204);
          v142 = ((v215 * _S24) + (_S7 * v216)) + (_S25 * v214);
          v143 = ((v211 * _S24) + (_S7 * v213)) + (_S25 * v210);
          v144 = ((v206 * _S24) + (_S7 * v208)) + (_S25 * v204);
          LOWORD(_S7) = *(v52 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          __asm { FCVT            S27, H7 }

          LOWORD(_S7) = *(v52 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          __asm { FCVT            S28, H7 }

          LOWORD(_S1) = *(v52 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S29, H1 }

          _H25 = *(v52 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          _H19 = *(v52 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          _H26 = *(v52 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          _H7 = *(v52 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          _H2 = *(v52 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          _H24 = *(v52 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          _H4 = *(v52 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          _H5 = *(v52 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          _H6 = *(v52 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          v41 = v102;
          v157 = (v226 * _S28) + (v102 * _S27);
          v43 = v99;
          v158 = (v157 + (v99 * _S29)) + v35;
          v159 = v37;
          if (v158 <= v37)
          {
            v159 = v158;
            if (v158 < v35)
            {
              v159 = v35;
            }
          }

          *v58 = llroundf(v159) << v63;
          v38 = v103;
          if (v57)
          {
            v160 = v203;
            v161 = v220;
            v162 = v212;
            v163 = ((v220 + (_S27 * v203)) + (_S28 * v209)) + (_S29 * v212);
            v164 = v39;
            if (v163 <= v39)
            {
              v164 = ((v220 + (_S27 * v203)) + (_S28 * v209)) + (_S29 * v212);
              if (v163 < v38)
              {
                v164 = v38;
              }
            }

            v165 = v219;
            v166 = (v220 + (_S27 * v219)) + (_S28 * v218);
            v167 = v218;
            v168 = v166 + (_S29 * v217);
            v169 = v217;
            *v57 = llroundf(v164) << v63;
            v170 = v39;
            v30 = v205;
            v32 = v207;
            if (v168 <= v39)
            {
              v170 = v168;
              if (v168 < v38)
              {
                v170 = v38;
              }
            }

            v57[1] = llroundf(v170) << v63;
            v57 += 2;
          }

          else
          {
            v30 = v205;
            v32 = v207;
            v160 = v203;
            v162 = v212;
            v165 = v219;
            v161 = v220;
            v169 = v217;
            v167 = v218;
          }

          __asm
          {
            FCVT            S1, H25
            FCVT            S19, H19
            FCVT            S25, H26
          }

          v174 = (((v226 * _S19) + (v41 * _S1)) + (v99 * _S25)) + v35;
          v175 = v37;
          if (v174 <= v37)
          {
            v175 = (((v226 * _S19) + (v41 * _S1)) + (v99 * _S25)) + v35;
            if (v174 < v35)
            {
              v175 = v35;
            }
          }

          *(v58 + 1) = llroundf(v175) << v63;
          if (v57)
          {
            v176 = ((v161 + (_S1 * v160)) + (_S19 * v209)) + (_S25 * v162);
            v177 = v39;
            if (v176 <= v39)
            {
              v177 = ((v161 + (_S1 * v160)) + (_S19 * v209)) + (_S25 * v162);
              if (v176 < v38)
              {
                v177 = v38;
              }
            }

            v178 = ((v161 + (_S1 * v165)) + (_S19 * v167)) + (_S25 * v169);
            *v57 = llroundf(v177) << v63;
            v179 = v39;
            if (v178 <= v39)
            {
              v179 = v178;
              if (v178 < v38)
              {
                v179 = v38;
              }
            }

            v57[1] = llroundf(v179) << v63;
            v57 += 2;
          }

          __asm
          {
            FCVT            S1, H7
            FCVT            S2, H2
            FCVT            S7, H24
          }

          v183 = (((v226 * _S2) + (v41 * _S1)) + (v99 * _S7)) + v35;
          v184 = v37;
          if (v183 <= v37)
          {
            v184 = (((v226 * _S2) + (v41 * _S1)) + (v99 * _S7)) + v35;
            if (v183 < v35)
            {
              v184 = v35;
            }
          }

          *v71 = llroundf(v184) << v63;
          if (v70)
          {
            v185 = ((v161 + (_S1 * v160)) + (_S2 * v209)) + (_S7 * v162);
            v186 = v39;
            if (v185 <= v39)
            {
              v186 = ((v161 + (_S1 * v160)) + (_S2 * v209)) + (_S7 * v162);
              if (v185 < v38)
              {
                v186 = v38;
              }
            }

            v187 = ((v161 + (_S1 * v165)) + (_S2 * v167)) + (_S7 * v169);
            *v70 = llroundf(v186) << v63;
            v188 = v39;
            if (v187 <= v39)
            {
              v188 = v187;
              if (v187 < v38)
              {
                v188 = v38;
              }
            }

            v70[1] = llroundf(v188) << v63;
            v70 += 2;
          }

          v31 = v225;
          __asm
          {
            FCVT            S1, H4
            FCVT            S2, H5
            FCVT            S4, H6
          }

          v49 = (((v226 * _S2) + (v41 * _S1)) + (v99 * _S4)) + v35;
          v191 = v37;
          if (v49 <= v37)
          {
            v191 = (((v226 * _S2) + (v41 * _S1)) + (v99 * _S4)) + v35;
            if (v49 < v35)
            {
              v191 = v35;
            }
          }

          *(v71 + 1) = llroundf(v191) << v63;
          if (v70)
          {
            v49 = ((v161 + (_S1 * v160)) + (_S2 * v209)) + (_S4 * v162);
            v192 = v39;
            if (v49 <= v39)
            {
              v192 = ((v161 + (_S1 * v160)) + (_S2 * v209)) + (_S4 * v162);
              if (v49 < v38)
              {
                v192 = v38;
              }
            }

            _S1 = ((v161 + (_S1 * v165)) + (_S2 * v167)) + (_S4 * v169);
            *v70 = llroundf(v192) << v63;
            v193 = v39;
            if (_S1 <= v39)
            {
              v193 = _S1;
              if (_S1 < v38)
              {
                v193 = v38;
              }
            }

            v70[1] = llroundf(v193) << v63;
            v70 += 2;
          }

          v61 += 2;
          v69 += 2;
          v58 += 4;
          v71 += 4;
          v68 += 2;
        }

        while (v68 < v25);
      }

      v61 = &v65[v26];
      v64 += v27;
      v58 = &v66[v28];
      v57 = (result + v67);
      v23 += 2;
    }

    while (v23 < v14);
  }

  if (v202 && v21)
  {
    if (v14 >= 1)
    {
      v194 = 0;
      v195 = (v202 + v19 * v200 + v201);
      do
      {
        if (v11 >= 1)
        {
          v196 = v11;
          v197 = v22;
          v198 = v195;
          do
          {
            v199 = *v198++;
            *v197++ = v199 | (v199 << 8);
            --v196;
          }

          while (v196);
        }

        v195 += v19;
        v22 += v20;
        ++v194;
      }

      while (v194 != v14);
    }
  }

  else if (v21 && v14 >= 1)
  {
    do
    {
      if (v11 >= 1)
      {
        result = memset(v22, 255, 2 * v11);
      }

      v22 += v20;
      --v14;
    }

    while (v14);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v69 = a2[2];
  v70 = v17;
  v18 = a6[1];
  v71 = *a6;
  v72 = v16;
  v67 = a6[2];
  v68 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_76:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  if (v67.i8[0])
  {
    v26 = v70.i64[0] - 1;
    v27 = v69.i64[0] + 1;
  }

  else
  {
    v27 = v69.i64[0];
  }

  if (v67.i8[0])
  {
    v25 = v68.i64[0] - 1;
    v28 = v67.i64[0] + 1;
  }

  else
  {
    v28 = v67.i64[0];
  }

  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = 2 * (v28 + v25) + 2, v33 > *a8) || (v34 = a8[1], v34 < 2 * v33) && v34 || (v35 = a8[2], v33 > v35) && v35)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v71.i64[0] + 1;
      v30 = v72.i64[0] + 1;
      ++v26;
    }
  }

  v36 = v68.i64[1];
  v37 = v70.i64[1];
  if (v67.i8[8])
  {
    v37 = v70.i64[1] - 1;
    v38 = v69.i64[1] + 1;
  }

  else
  {
    v38 = v69.i64[1];
  }

  if (v67.i8[8])
  {
    v36 = v68.i64[1] - 1;
    v39 = v67.i64[1] + 1;
  }

  else
  {
    v39 = v67.i64[1];
  }

  v40 = v71.i64[1];
  v41 = v72.i64[1];
  v66 = a1;
  if (v36)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * v43 > a9[1] || a8[2] * v43 > a9[2])
    {
      --v36;
      --v37;
    }

    else
    {
      v40 = v71.i64[1] + 1;
      v41 = v72.i64[1] + 1;
      ++v37;
      ++v36;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v37 + v38 > v41)
  {
    v37 = v41 - v38;
  }

  if (v36 + v39 > v40)
  {
    v36 = v40 - v39;
  }

  if (v26 >= v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = v26;
  }

  if (v37 >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = v37;
  }

  v46 = v45 + v38 - 1;
  v47 = v44 + v27;
  v48 = v44 + v27 + v46 * *a4 > *a5;
  v64 = a9;
  v65 = a3;
  v62 = v28;
  v63 = v29;
  v60 = v30;
  v61 = v27;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  v52 = v39 + v45 - 1;
  v53 = v44 + v28;
  if (*a8 * v52 + 2 * (v44 + v28) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_69;
  }

  if (*(a7 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_69:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v23 = v64;
    a3 = v65;
    v28 = v62;
    v29 = v63;
    v30 = v60;
    v27 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_75;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v41;
  *(v19 + 20) = v44;
  *(v19 + 28) = v45;
  *(v19 + 36) = v27;
  *(v19 + 44) = v38;
  v19[11] = v40;
  v19[12] = v44;
  v19[13] = v45;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v55 = (v19 + 20);
  v56 = v15;
  while (1)
  {
    v57 = *v55++;
    v20 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v20 = 0;
      break;
    }
  }

LABEL_75:
  if (v15 == 255)
  {
    goto LABEL_76;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_rgb_xf444_neon_fp16_GCD(void *a1, uint64_t a2)
{
  v8 = 2 * *a1;
  v168 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v8);
  v169 = *(a1 + 36);
  v9 = a1[14];
  v11 = a1[12];
  v10 = a1[13];
  v12 = v10 * a2 / v8;
  v13 = a1[15] + 2 * v12;
  v14 = 2 * ((v10 + v10 * a2) / v8 - v12);
  v15 = a1[7];
  v16 = a1[8];
  v18 = a1[16];
  result = a1[17];
  v19 = v16[2];
  v20 = result[2];
  v170 = v18[2];
  v171 = v15[2];
  v21 = (v170 + v20 * v13 + 2 * v9);
  if (v14 >= 1)
  {
    v22 = 0;
    v23 = a1[19];
    v24 = *v16;
    v25 = v16[1];
    v26 = *result;
    result = result[1];
    v27 = v23[17].u16[2];
    v28 = v23[17].u16[3];
    v29.i32[0] = v23[3].i32[1];
    v30 = v23[18].u16[0];
    v31 = v23[18].u16[1];
    v32 = v23[18].u16[2];
    v33 = v23[18].u16[3];
    v34 = v23[19].u16[0];
    _Q28.i32[0] = v23[5].i32[1];
    _S5 = v23[6].f32[0];
    _Q6.i32[0] = v23[6].i32[1];
    _Q25.i32[0] = v23[7].i32[0];
    _S26 = v23[7].f32[1];
    _S15 = v23[8].f32[0];
    _S14 = v23[8].f32[1];
    v192 = v27;
    *v5.i16 = v27;
    v42 = v23[17].u32[0] / v23[16].u32[0];
    v178 = v28;
    _S19 = v42 * v23->f32[0];
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    __asm { FCVT            H8, S19 }

    v54 = vdupq_lane_s16(*v5.f32, 0);
    v29.i32[1] = v23[1].i32[0];
    *v4.f32 = vmul_n_f32(v29, v42);
    v55 = -v28;
    *v5.f32 = vmul_n_f32(v23[2], v42);
    v176 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v174 = vmulq_n_f16(v176, v55);
    v175 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v56 = vmulq_n_f16(v175, v55);
    v173 = v56;
    _S29 = v23[4].f32[1];
    __asm { FCVT            H12, S0 }

    *v56.i16 = v30;
    v58 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v31;
    _Q0 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v32;
    v60 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v33;
    v61 = vdupq_lane_s16(*v56.i8, 0);
    v186 = v61;
    v187 = _Q0;
    *v61.i16 = v34;
    v185 = vdupq_lane_s16(*v61.i8, 0);
    _S2 = v23[5].f32[0];
    __asm { FCVT            H11, S1 }

    v63 = v23[16].u8[4];
    if (v63 >= 0x11)
    {
      v64 = 0;
    }

    else
    {
      v64 = 16 - v63;
    }

    v67 = v18;
    v65 = *v18;
    v66 = v67[1];
    if (v66)
    {
      v68 = (v66 + result * v13 + 2 * v9);
    }

    else
    {
      v68 = 0;
    }

    v69 = (v65 + v26 * v13 + 2 * v9);
    v70 = (v15[1] + v25 * (v168 / 2) + v169);
    v71 = (*v15 + v24 * v168 + v169);
    v72 = v64;
    v73 = *_Q28.i32;
    __asm { FCVT            H0, S28 }

    v191 = _S5;
    __asm { FCVT            H1, S5 }

    v184 = _H1;
    v190 = *_Q6.i32;
    __asm { FCVT            H1, S6 }

    v183 = _H1;
    v189 = *_Q25.i32;
    __asm { FCVT            H1, S25 }

    v182 = _H1;
    v188 = _S26;
    __asm { FCVT            H1, S26 }

    v181 = _H1;
    __asm { FCVT            H1, S15 }

    v180 = _H1;
    __asm { FCVT            H1, S14 }

    v179 = _H1;
    v80 = vdupq_n_s16(v64);
    v81.i32[0] = v4.i32[1];
    v177 = v4.f32[0];
    v82 = v5.i64[0];
    v172 = v4.f32[1];
    do
    {
      v83 = v71 + v24;
      v84 = &v69->i8[v26];
      v85 = result + v68;
      if (v11 < 8)
      {
        v111 = 0;
        v89 = (result + v68);
        v88 = (v69 + v26);
        v110 = v70;
        v87 = (v71 + v24);
      }

      else
      {
        v86 = 0;
        v87 = (v71 + v24);
        v88 = (v69 + v26);
        v89 = (result + v68);
        do
        {
          v90 = *&v70[v86];
          *v91.i8 = vzip1_s8(v90, 0);
          v91.u64[1] = vzip2_s8(v90, 0);
          v92 = vcvtq_f16_u16(v91);
          v93 = vmlaq_f16(v174, v176, v92);
          v94 = vmlaq_f16(v173, v175, v92);
          v95 = vtrn2q_s16(v93, v93);
          v96 = vtrn1q_s16(v93, v93);
          v97 = vuzp1q_s16(v94, _Q0);
          *v97.i8 = vadd_f16(*v97.i8, *&vuzp2q_s16(v94, _Q0));
          v98 = vzip1q_s16(v97, v97);
          v99 = *v71++;
          *v94.i8 = vzip1_s8(v99, 0);
          v94.u64[1] = vzip2_s8(v99, 0);
          v100 = *v87++;
          v101 = v100;
          v102 = vsubq_f16(vcvtq_f16_u16(v94), v54);
          _Q25 = vmlaq_n_f16(v95, v102, _H8);
          v103 = vmlaq_n_f16(v98, v102, _H8);
          v104 = vmlaq_n_f16(v96, v102, _H8);
          *v69++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, _Q25, *&_Q12), v103, *&_Q11), v104, *_Q0.i16), v58), v60)), v80);
          if (v68)
          {
            v193.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v187, _Q25, v184), v103, v183), v104, v182), v186), v185), v186), v185)), v80);
            v193.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v187, _Q25, v181), v103, v180), v104, v179)), v80);
            vst2q_s16(v68, v193);
            v68 += 16;
          }

          *v105.i8 = vzip1_s8(v101, 0);
          *_Q6.i8 = vzip2_s8(v101, 0);
          v105.i64[1] = _Q6.i64[0];
          v106 = vsubq_f16(vcvtq_f16_u16(v105), v54);
          v107 = vmlaq_n_f16(v95, v106, _H8);
          _Q28 = vmlaq_n_f16(v98, v106, _H8);
          v108 = vmlaq_n_f16(v96, v106, _H8);
          v81 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v107, *&_Q12), _Q28, *&_Q11), v108, *_Q0.i16), v58), v60)), v80);
          *v88++ = v81;
          if (v89)
          {
            _Q6 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v187, v107, v181), _Q28, v180), v108, v179);
            v109 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v187, v107, v184), _Q28, v183), v108, v182), v186), v185), v186), v185)), v80);
            v81 = vcvtq_u16_f16(_Q6);
            _Q25 = vshlq_u16(v81, v80);
            vst2q_s16(v89, *(&_Q25 - 1));
            v89 += 16;
          }

          v86 += 8;
        }

        while (v86 < v11 - 7);
        v110 = &v70[v86];
        v111 = v11 & 0xFFFFFFF8;
      }

      while (v111 < (v11 & 0xFFFFFFFE))
      {
        v112 = _Q0;
        v113 = _Q11;
        v114 = v60;
        v115 = _Q12;
        v116 = v54;
        v117 = _S14;
        v118 = _S15;
        v81.i8[0] = *v110;
        *&v119 = v81.u32[0] - v178;
        _Q6.i8[0] = v110[1];
        v120 = _Q6.u32[0] - v178;
        v121 = v172 * v120;
        v122 = (*(&v82 + 1) * v120) + (*&v119 * *&v82);
        v123 = v177 * *&v119;
        LOBYTE(v119) = v71->i8[0];
        *v81.i32 = _S19 * (v119 - v192);
        v124 = (v172 * v120) + *v81.i32;
        v125 = *v81.i32 + v122;
        v126 = v123 + *v81.i32;
        v127 = (((_S2 * (*v81.i32 + v122)) + (_S29 * v124)) + (v73 * (v123 + *v81.i32))) + v44;
        v128 = v46;
        if (v127 <= v46)
        {
          v128 = (((_S2 * (*v81.i32 + v122)) + (_S29 * (v121 + *v81.i32))) + (v73 * (v123 + *v81.i32))) + v44;
          if (v127 < v44)
          {
            v128 = v44;
          }
        }

        _Q25.i8[0] = v71->i8[1];
        LOBYTE(v127) = v87->i8[0];
        _Q28.i8[0] = v87->i8[1];
        v69->i16[0] = llroundf(v128) << v72;
        if (v68)
        {
          v129 = ((v45 + (v124 * v191)) + (v125 * v190)) + (v126 * v189);
          v130 = v48;
          if (v129 <= v48)
          {
            v130 = ((v45 + (v124 * v191)) + (v125 * v190)) + (v126 * v189);
            if (v129 < v47)
            {
              v130 = v47;
            }
          }

          v131 = (v45 + (v124 * v188)) + (v125 * v118);
          _S15 = v118;
          _S14 = v117;
          v132 = v131 + (v126 * v117);
          *v68 = llroundf(v130) << v72;
          v133 = v48;
          if (v132 <= v48)
          {
            if (v132 < v47)
            {
              v133 = v47;
            }

            else
            {
              v133 = v132;
            }
          }

          v68[1] = llroundf(v133) << v72;
          v68 += 2;
        }

        else
        {
          _S15 = v118;
          _S14 = v117;
        }

        v54 = v116;
        v134 = _S19 * (_Q25.u32[0] - v192);
        v135 = v121 + v134;
        v136 = v122 + v134;
        v137 = v123 + v134;
        v138 = (((_S2 * (v122 + v134)) + (_S29 * (v121 + v134))) + (v73 * (v123 + v134))) + v44;
        v139 = v46;
        if (v138 <= v46)
        {
          v139 = (((_S2 * (v122 + v134)) + (_S29 * (v121 + v134))) + (v73 * (v123 + v134))) + v44;
          if (v138 < v44)
          {
            v139 = v44;
          }
        }

        v69->i16[1] = llroundf(v139) << v72;
        if (v68)
        {
          v140 = ((v45 + (v135 * v191)) + (v136 * v190)) + (v137 * v189);
          v141 = v48;
          if (v140 <= v48)
          {
            v141 = ((v45 + (v135 * v191)) + (v136 * v190)) + (v137 * v189);
            if (v140 < v47)
            {
              v141 = v47;
            }
          }

          v142 = ((v45 + (v135 * v188)) + (v136 * _S15)) + (v137 * _S14);
          *v68 = llroundf(v141) << v72;
          v143 = v48;
          if (v142 <= v48)
          {
            if (v142 < v47)
            {
              v143 = v47;
            }

            else
            {
              v143 = v142;
            }
          }

          v68[1] = llroundf(v143) << v72;
          v68 += 2;
        }

        _Q12 = v115;
        *_Q6.i32 = v27;
        v144 = _S19 * (LODWORD(v127) - v192);
        v145 = v121 + v144;
        v146 = v122 + v144;
        v147 = v123 + v144;
        v148 = (((_S2 * (v122 + v144)) + (_S29 * (v121 + v144))) + (v73 * (v123 + v144))) + v44;
        v149 = v46;
        v60 = v114;
        if (v148 <= v46)
        {
          v149 = (((_S2 * (v122 + v144)) + (_S29 * (v121 + v144))) + (v73 * (v123 + v144))) + v44;
          if (v148 < v44)
          {
            v149 = v44;
          }
        }

        v88->i16[0] = llroundf(v149) << v72;
        _Q11 = v113;
        if (v89)
        {
          *_Q6.i32 = v189;
          v150 = ((v45 + (v145 * v191)) + (v146 * v190)) + (v147 * v189);
          v151 = v48;
          _Q0 = v112;
          if (v150 <= v48)
          {
            v151 = ((v45 + (v145 * v191)) + (v146 * v190)) + (v147 * v189);
            if (v150 < v47)
            {
              v151 = v47;
            }
          }

          v152 = ((v45 + (v145 * v188)) + (v146 * _S15)) + (v147 * _S14);
          *v89 = llroundf(v151) << v72;
          v153 = v48;
          if (v152 <= v48)
          {
            if (v152 < v47)
            {
              v153 = v47;
            }

            else
            {
              v153 = v152;
            }
          }

          v89[1] = llroundf(v153) << v72;
          v89 += 2;
        }

        else
        {
          _Q0 = v112;
        }

        v154 = _S19 * (_Q28.u32[0] - v192);
        v155 = v121 + v154;
        *_Q25.i32 = v122 + v154;
        v156 = v123 + v154;
        *v81.i32 = ((_S2 * (v122 + v154)) + (_S29 * (v121 + v154))) + (v73 * v156);
        v157 = v46;
        if ((*v81.i32 + v44) <= v46)
        {
          v157 = *v81.i32 + v44;
          if ((*v81.i32 + v44) < v44)
          {
            v157 = v44;
          }
        }

        v88->i16[1] = llroundf(v157) << v72;
        if (v89)
        {
          *_Q6.i32 = v189;
          v158 = ((v45 + (v155 * v191)) + (*_Q25.i32 * v190)) + (v156 * v189);
          v159 = v48;
          if (v158 <= v48)
          {
            v159 = ((v45 + (v155 * v191)) + (*_Q25.i32 * v190)) + (v156 * v189);
            if (v158 < v47)
            {
              v159 = v47;
            }
          }

          *v81.i32 = (v45 + (v155 * v188)) + (*_Q25.i32 * _S15);
          v160 = *v81.i32 + (v156 * _S14);
          *v89 = llroundf(v159) << v72;
          v161 = v48;
          if (v160 <= v48)
          {
            v161 = *v81.i32 + (v156 * _S14);
            if (v160 < v47)
            {
              v161 = v47;
            }
          }

          v89[1] = llroundf(v161) << v72;
          v89 += 2;
        }

        v111 += 2;
        v110 += 2;
        v71 = (v71 + 2);
        v87 = (v87 + 2);
        v69 = (v69 + 4);
        v88 = (v88 + 4);
      }

      v71 = &v83[v24];
      v70 += v25;
      v69 = &v84[v26];
      v68 = (result + v85);
      v22 += 2;
    }

    while (v22 < v14);
  }

  if (v171 && v170)
  {
    if (v14 >= 1)
    {
      v162 = 0;
      v163 = (v171 + v19 * v168 + v169);
      do
      {
        if (v11 >= 1)
        {
          v164 = v11;
          v165 = v21;
          v166 = v163;
          do
          {
            v167 = *v166++;
            *v165++ = v167 | (v167 << 8);
            --v164;
          }

          while (v164);
        }

        v163 += v19;
        v21 += v20;
        ++v162;
      }

      while (v162 != v14);
    }
  }

  else if (v170 && v14 >= 1)
  {
    do
    {
      if (v11 >= 1)
      {
        result = memset(v21, 255, 2 * v11);
      }

      v21 += v20;
      --v14;
    }

    while (v14);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}