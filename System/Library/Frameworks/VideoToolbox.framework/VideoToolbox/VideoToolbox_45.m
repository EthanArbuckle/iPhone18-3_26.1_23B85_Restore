uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v68 = a2[2];
  v69 = v17;
  v18 = a6[1];
  v70 = *a6;
  v71 = v16;
  v66 = a6[2];
  v67 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_75:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v58 - v21);
    bzero(&v58 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v66, v67), v70), vceqq_s64(vaddq_s64(v68, v69), v71))));
  v25 = v67.i64[0];
  v26 = v69.i64[0];
  if (v66.i8[0])
  {
    v26 = v69.i64[0] - 1;
    v27 = v68.i64[0] + 1;
  }

  else
  {
    v27 = v68.i64[0];
  }

  if (v66.i8[0])
  {
    v25 = v67.i64[0] - 1;
    v28 = v66.i64[0] + 1;
  }

  else
  {
    v28 = v66.i64[0];
  }

  v29 = v70.i64[0];
  v30 = v71.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v34 = a8[2], v33 > v34) && v34)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v70.i64[0] + 1;
      v30 = v71.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v35 = v67.i64[1];
  v36 = v69.i64[1];
  if (v66.i8[8])
  {
    v36 = v69.i64[1] - 1;
    v37 = v68.i64[1] + 1;
  }

  else
  {
    v37 = v68.i64[1];
  }

  if (v66.i8[8])
  {
    v35 = v67.i64[1] - 1;
    v38 = v66.i64[1] + 1;
  }

  else
  {
    v38 = v66.i64[1];
  }

  v39 = v70.i64[1];
  v40 = v71.i64[1];
  v65 = a1;
  if (v35)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v41 = v36 + 1 + v37, *a4 * v41 > *a5) || a4[1] * (v41 / 2) > a5[1] || a4[2] * v41 > a5[2] || (v42 = v35 + 1 + v38, *a8 * v42 > *a9) || a8[1] * (v42 / 2) > a9[1] || a8[2] * v42 > a9[2])
    {
      --v35;
      --v36;
    }

    else
    {
      v39 = v70.i64[1] + 1;
      v40 = v71.i64[1] + 1;
      ++v36;
      ++v35;
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

  if (v36 + v37 > v40)
  {
    v36 = v40 - v37;
  }

  if (v35 + v38 > v39)
  {
    v35 = v39 - v38;
  }

  if (v26 >= v25)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  if (v36 >= v35)
  {
    v44 = v35;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 + v37 - 1;
  v46 = v43 + v27;
  v47 = v43 + v27 + v45 * *a4 > *a5;
  v63 = a9;
  v64 = a3;
  v61 = v28;
  v62 = v29;
  v59 = v30;
  v60 = v27;
  v69.i64[0] = v38;
  v68.i64[0] = v37;
  v71.i64[0] = v39;
  v70.i64[0] = v40;
  if (v47)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v44 + v37 + 1) / 2 - 1) > a5[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v46 + a4[2] * v45 > a5[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  v51 = v44 + v38 - 1;
  v52 = v43 + v28;
  if (v43 + v28 + *a8 * v51 > *a9)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v44 + v38 + 1) / 2 - 1) > a9[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
LABEL_68:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v50;
    a8 = v49;
    a5 = v48;
    v23 = v63;
    a3 = v64;
    v28 = v61;
    v29 = v62;
    v30 = v59;
    v27 = v60;
    v38 = v69.i64[0];
    v37 = v68.i64[0];
    v39 = v71.i64[0];
    v40 = v70.i64[0];
    if (v20)
    {
      goto LABEL_74;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v40;
  *(v19 + 20) = v43;
  *(v19 + 28) = v44;
  *(v19 + 36) = v27;
  *(v19 + 44) = v37;
  v19[11] = v39;
  v19[12] = v43;
  v19[13] = v44;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v38;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v54 = (v19 + 20);
  v55 = v15;
  while (1)
  {
    v56 = *v54++;
    v20 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v20 = 0;
      break;
    }
  }

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v9 = result;
  v206 = *(result + 36);
  v10 = 2 * *result;
  v205 = *(result + 44) + 2 * (*(result + 28) * a2 / v10);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v14 = v12 * a2 / v10;
  v15 = result[15] + 2 * v14;
  v16 = 2 * ((v12 + v12 * a2) / v10 - v14);
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v21 = v18[2];
  v207 = v17[2];
  v22 = v20[2];
  v23 = v19[2];
  v24 = (v23 + v22 * v15 + v11);
  if (v16 >= 1)
  {
    v25 = 0;
    v26 = result[19];
    v27 = v13 & 0xFFFFFFFE;
    v28 = *v18;
    v29 = v18[1];
    v30 = *v20;
    v31 = v20[1];
    LOWORD(a5) = *(v26 + 140);
    LOWORD(a6) = *(v26 + 142);
    LOWORD(v6) = *(v26 + 144);
    LOWORD(v7) = *(v26 + 146);
    LOWORD(v8) = *(v26 + 148);
    v32 = 8191.0 / *(v26 + 128);
    v33 = LODWORD(a5);
    v34 = LODWORD(a6);
    v35 = v32 * *v26;
    v233 = v32 * *(v26 + 16);
    v234 = v32 * *(v26 + 8);
    v36 = v32 * *(v26 + 20);
    *&v37 = v32 * *(v26 + 28);
    v231 = *&v37;
    v232 = v36;
    v38 = v6;
    v39 = v7;
    v40 = v8;
    LOWORD(v37) = *(v26 + 150);
    *&v41 = v37;
    v237 = *&v41;
    LOWORD(v41) = *(v26 + 152);
    v42 = v41;
    v227 = *(v26 + 40);
    v228 = *(v26 + 36);
    v226 = *(v26 + 44);
    v224 = *(v26 + 52) * 0.25;
    v225 = *(v26 + 48) * 0.25;
    v222 = *(v26 + 60) * 0.25;
    v223 = *(v26 + 56) * 0.25;
    v220 = *(v26 + 72);
    v221 = *(v26 + 64) * 0.25;
    v218 = *(v26 + 76);
    v219 = *(v26 + 68) * 0.25;
    v216 = *(v26 + 84);
    v217 = *(v26 + 80);
    v214 = *(v26 + 92);
    v215 = *(v26 + 88);
    v43 = *(v26 + 104);
    v213 = *(v26 + 100);
    v212 = v43;
    result = (v26 + 164);
    v44 = v26 + 16548;
    v45 = v19[1];
    v46 = (*v19 + v30 * v15 + v11);
    v47 = v45 + v31 * (v15 / 2) + v11;
    v48 = *v17;
    v49 = v17[1] + v29 * (v205 / 2);
    v50 = v26 + 32932;
    v51 = (v48 + v28 * v205 + v206);
    v52 = v49 + v206;
    v53 = *(v26 + 108);
    v54 = *(v26 + 112);
    v55 = *(v26 + 116);
    v56 = *(v26 + 120);
    v235 = LODWORD(a6);
    v236 = v33;
    v229 = v42;
    v230 = v39;
    v210 = v54;
    v211 = v35;
    v209 = v53;
    v57 = *(v26 + 96);
    do
    {
      v58 = &v51[v28];
      v59 = &v46[v30];
      if (v27 >= 1)
      {
        v60 = 0;
        v61 = &v51[v28];
        v62 = &v46[v30];
        do
        {
          LOBYTE(v43) = *(v52 + v60 + 1);
          v63 = LODWORD(v43) - v34;
          v64 = LODWORD(v234);
          v65 = v234 * v63;
          LOBYTE(v64) = *v51;
          v66 = v35 * (v64 - v33);
          v67 = (v234 * v63) + v66;
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = (v234 * v63) + v66;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          LOBYTE(v67) = *(v52 + v60);
          v69 = LODWORD(v67) - v34;
          v70 = (v232 * v63) + (v69 * v233);
          v71 = 8191.0;
          if ((v66 + v70) <= 8191.0)
          {
            v71 = v66 + v70;
            if ((v66 + v70) < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v231 * v69;
          v73 = (v231 * v69) + v66;
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          LOBYTE(v73) = v51[1];
          v75 = v35 * (LODWORD(v73) - v33);
          v76 = 8191.0;
          if ((v65 + v75) <= 8191.0)
          {
            v76 = v65 + v75;
            if ((v65 + v75) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = 8191.0;
          if ((v70 + v75) <= 8191.0)
          {
            v77 = v70 + v75;
            if ((v70 + v75) < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = v72 + v75;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v78) = *v61;
          v80 = v35 * (LODWORD(v78) - v33);
          v81 = 8191.0;
          if ((v65 + v80) <= 8191.0)
          {
            v81 = v65 + v80;
            if ((v65 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = 8191.0;
          if ((v70 + v80) <= 8191.0)
          {
            v82 = v70 + v80;
            if ((v70 + v80) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v72 + v80;
          v84 = 8191.0;
          if (v83 <= 8191.0)
          {
            v84 = v83;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          LOBYTE(v42) = v61[1];
          v85 = v35 * (LODWORD(v42) - v33);
          v86 = v65 + v85;
          v87 = (v65 + v85) <= 8191.0;
          v88 = 8191.0;
          if (v87)
          {
            v88 = v86;
            if (v86 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v70 + v85;
          v87 = (v70 + v85) <= 8191.0;
          v90 = 8191.0;
          if (v87)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v72 + v85;
          v92 = 8191.0;
          if (v91 <= 8191.0)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H19 = *(result + llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(result + llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          _H20 = *(result + llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          _H28 = *(result + llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          _H23 = *(result + llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          _H20 = *(result + llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H17 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H26 = *(result + llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          _H21 = *(result + llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          _H1 = *(result + llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          _H2 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H3 = *(result + llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          v112 = (((v54 * _S24) + (v53 * _S19)) + (v55 * _S25)) + (v56 * fmaxf(_S19, fmaxf(_S24, _S25)));
          v113 = 8191.0;
          if (v112 <= 8191.0)
          {
            v113 = v112;
            if (v112 < 0.0)
            {
              v113 = 0.0;
            }
          }

          __asm
          {
            FCVT            S27, H28
            FCVT            S28, H23
            FCVT            S30, H20
          }

          _H22 = *(v44 + 2 * llroundf(v113));
          v118 = (((v54 * _S28) + (v53 * _S27)) + (v55 * _S30)) + (v56 * fmaxf(_S27, fmaxf(_S28, _S30)));
          v119 = 8191.0;
          if (v118 <= 8191.0)
          {
            v119 = v118;
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          __asm
          {
            FCVT            S8, H17
            FCVT            S9, H26
            FCVT            S10, H21
          }

          _H17 = *(v44 + 2 * llroundf(v119));
          v124 = fmaxf(_S8, fmaxf(_S9, _S10));
          v125 = (((v54 * _S9) + (v53 * _S8)) + (v55 * _S10)) + (v56 * v124);
          v126 = 8191.0;
          if (v125 <= 8191.0)
          {
            v126 = (((v54 * _S9) + (v53 * _S8)) + (v55 * _S10)) + (v56 * v124);
            if (v125 < 0.0)
            {
              v126 = 0.0;
            }
          }

          __asm
          {
            FCVT            S26, H1
            FCVT            S29, H2
            FCVT            S31, H3
            FCVT            S1, H22
          }

          v131 = _S19 * _S1;
          v132 = _S24 * _S1;
          v133 = _S25 * _S1;
          __asm { FCVT            S1, H17 }

          v135 = _S27 * _S1;
          v136 = _S28 * _S1;
          v137 = _S30 * _S1;
          LOWORD(_S1) = *(v44 + 2 * llroundf(v126));
          __asm { FCVT            S2, H1 }

          v139 = _S8 * _S2;
          v140 = _S9 * _S2;
          v141 = _S10 * _S2;
          v142 = (((v54 * _S29) + (v53 * _S26)) + (v55 * _S31)) + (v56 * fmaxf(_S26, fmaxf(_S29, _S31)));
          v143 = 8191.0;
          if (v142 <= 8191.0)
          {
            v143 = v142;
            if (v142 < 0.0)
            {
              v143 = 0.0;
            }
          }

          _H24 = *(v44 + 2 * llroundf(v143));
          __asm { FCVT            S24, H24 }

          v146 = _S26 * _S24;
          v147 = _S29 * _S24;
          v148 = _S31 * _S24;
          v149 = ((v218 * v132) + (v131 * v220)) + (v133 * v217);
          v150 = ((v215 * v132) + (v131 * v216)) + (v133 * v214);
          _S20 = ((v213 * v132) + (v131 * v57)) + (v133 * v212);
          _S22 = ((v218 * v136) + (v135 * v220)) + (v137 * v217);
          v153 = ((v215 * v136) + (v135 * v216)) + (v137 * v214);
          _S19 = ((v213 * v136) + (v135 * v57)) + (v137 * v212);
          v155 = ((v218 * v140) + (v139 * v220)) + (v141 * v217);
          v156 = ((v215 * v140) + (v139 * v216)) + (v141 * v214);
          v157 = ((v213 * v140) + (v139 * v57)) + (v141 * v212);
          v158 = ((v218 * v147) + (v146 * v220)) + (v148 * v217);
          v159 = ((v215 * v147) + (v146 * v216)) + (v148 * v214);
          v160 = ((v213 * v147) + (v146 * v57)) + (v148 * v212);
          _H1 = *(v50 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          _H1 = *(v50 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v50 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v50 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S20) = *(v50 + 2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0)));
          LOWORD(_S19) = *(v50 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S19, H19
          }

          LOWORD(_S20) = *(v50 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S26, H20 }

          LOWORD(_S20) = *(v50 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          LOWORD(_S20) = *(v50 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          LOWORD(_S20) = *(v50 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          __asm { FCVT            S28, H20 }

          LOWORD(_S20) = *(v50 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          LOWORD(_S22) = *(v50 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S27, H22
          }

          v177 = (((v227 * _S1) + (v228 * _S17)) + (v226 * _S2)) + v38;
          if (v177 < v38)
          {
            v178 = v38;
          }

          else
          {
            v178 = (((v227 * _S1) + (v228 * _S17)) + (v226 * _S2)) + v38;
          }

          v87 = v177 <= v40;
          v179 = (((v227 * _S21) + (v228 * _S3)) + (v226 * _S19)) + v38;
          if (!v87)
          {
            v178 = v40;
          }

          v180 = llroundf(v178);
          if (v179 < v38)
          {
            v181 = v38;
          }

          else
          {
            v181 = (((v227 * _S21) + (v228 * _S3)) + (v226 * _S19)) + v38;
          }

          v87 = v179 <= v40;
          v182 = (((v227 * _S25) + (v228 * _S26)) + (v226 * _S24)) + v38;
          if (!v87)
          {
            v181 = v40;
          }

          v183 = llroundf(v181);
          if (v182 < v38)
          {
            v184 = v38;
          }

          else
          {
            v184 = (((v227 * _S25) + (v228 * _S26)) + (v226 * _S24)) + v38;
          }

          v87 = v182 <= v40;
          v185 = (((v227 * _S20) + (v228 * _S28)) + (v226 * _S27)) + v38;
          if (!v87)
          {
            v184 = v40;
          }

          v186 = llroundf(v184);
          if (v185 < v38)
          {
            v187 = v38;
          }

          else
          {
            v187 = (((v227 * _S20) + (v228 * _S28)) + (v226 * _S27)) + v38;
          }

          if (v185 <= v40)
          {
            v188 = v187;
          }

          else
          {
            v188 = v40;
          }

          v189 = ((_S17 + _S3) + _S26) + _S28;
          v190 = ((_S1 + _S21) + _S25) + _S20;
          *v46 = v180;
          v46[1] = v183;
          *v62 = v186;
          v62[1] = llroundf(v188);
          v42 = v229;
          v191 = ((_S2 + _S19) + _S24) + _S27;
          v192 = ((v230 + (v189 * v225)) + (v190 * v224)) + (v191 * v223);
          v193 = v229;
          if (v192 <= v229)
          {
            v193 = ((v230 + (v189 * v225)) + (v190 * v224)) + (v191 * v223);
            if (v192 < v237)
            {
              v193 = v237;
            }
          }

          v194 = ((v230 + (v189 * v222)) + (v190 * v221)) + (v191 * v219);
          *(v47 + v60) = llroundf(v193);
          v43 = v229;
          v34 = v235;
          v33 = v236;
          v35 = v211;
          if (v194 <= v229)
          {
            v43 = v194;
            if (v194 < v237)
            {
              v43 = v237;
            }
          }

          v51 += 2;
          v61 += 2;
          v46 += 2;
          v62 += 2;
          *(v47 + v60 + 1) = llroundf(v43);
          v60 += 2;
          v53 = v209;
          v54 = v210;
        }

        while (v60 < v27);
      }

      v51 = &v58[v28];
      v52 += v29;
      v46 = &v59[v30];
      v47 += v31;
      v25 += 2;
    }

    while (v25 < v16);
  }

  if (v207 && v23)
  {
    if (v16 >= 1)
    {
      v195 = 0;
      v196 = (v207 + v21 * v205 + v206);
      do
      {
        result = memcpy(v24, v196, v13);
        v196 += v21;
        v24 += v22;
        ++v195;
      }

      while (v16 > v195);
    }
  }

  else if (v23 && v16 >= 1)
  {
    v197 = 0;
    v198 = vdupq_n_s64(v13 - 1);
    do
    {
      if (v13 >= 1)
      {
        v199 = 0;
        do
        {
          v200 = vdupq_n_s64(v199);
          v201 = vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v201, *v198.i8), *v198.i8).u8[0])
          {
            v24[v199] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v201, *&v198), *&v198).i8[1])
          {
            v24[v199 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v198, vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDDA0)))), *&v198).i8[2])
          {
            v24[v199 + 2] = -1;
            v24[v199 + 3] = -1;
          }

          v202 = vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v198, vuzp1_s16(v202, *&v198)).i32[1])
          {
            v24[v199 + 4] = -1;
          }

          if (vuzp1_s8(*&v198, vuzp1_s16(v202, *&v198)).i8[5])
          {
            v24[v199 + 5] = -1;
          }

          if (vuzp1_s8(*&v198, vuzp1_s16(*&v198, vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDD80))))).i8[6])
          {
            v24[v199 + 6] = -1;
            v24[v199 + 7] = -1;
          }

          v203 = vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v203, *v198.i8), *v198.i8).u8[0])
          {
            v24[v199 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v203, *&v198), *&v198).i8[1])
          {
            v24[v199 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v198, vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDD60)))), *&v198).i8[2])
          {
            v24[v199 + 10] = -1;
            v24[v199 + 11] = -1;
          }

          v204 = vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v198, vuzp1_s16(v204, *&v198)).i32[1])
          {
            v24[v199 + 12] = -1;
          }

          if (vuzp1_s8(*&v198, vuzp1_s16(v204, *&v198)).i8[5])
          {
            v24[v199 + 13] = -1;
          }

          if (vuzp1_s8(*&v198, vuzp1_s16(*&v198, vmovn_s64(vcgeq_u64(v198, vorrq_s8(v200, xmmword_18FECDD40))))).i8[6])
          {
            v24[v199 + 14] = -1;
            v24[v199 + 15] = -1;
          }

          v199 += 16;
        }

        while (((v13 + 15) & 0xFFFFFFFFFFFFFFF0) != v199);
      }

      v24 += v22;
      ++v197;
    }

    while (v16 > v197);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_420vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v68 = a2[2];
  v69 = v17;
  v18 = a6[1];
  v70 = *a6;
  v71 = v16;
  v66 = a6[2];
  v67 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_75:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v58 - v21);
    bzero(&v58 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v66, v67), v70), vceqq_s64(vaddq_s64(v68, v69), v71))));
  v25 = v67.i64[0];
  v26 = v69.i64[0];
  if (v66.i8[0])
  {
    v26 = v69.i64[0] - 1;
    v27 = v68.i64[0] + 1;
  }

  else
  {
    v27 = v68.i64[0];
  }

  if (v66.i8[0])
  {
    v25 = v67.i64[0] - 1;
    v28 = v66.i64[0] + 1;
  }

  else
  {
    v28 = v66.i64[0];
  }

  v29 = v70.i64[0];
  v30 = v71.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v34 = a8[2], v33 > v34) && v34)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v70.i64[0] + 1;
      v30 = v71.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v35 = v67.i64[1];
  v36 = v69.i64[1];
  if (v66.i8[8])
  {
    v36 = v69.i64[1] - 1;
    v37 = v68.i64[1] + 1;
  }

  else
  {
    v37 = v68.i64[1];
  }

  if (v66.i8[8])
  {
    v35 = v67.i64[1] - 1;
    v38 = v66.i64[1] + 1;
  }

  else
  {
    v38 = v66.i64[1];
  }

  v39 = v70.i64[1];
  v40 = v71.i64[1];
  v65 = a1;
  if (v35)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v41 = v36 + 1 + v37, *a4 * v41 > *a5) || a4[1] * (v41 / 2) > a5[1] || a4[2] * v41 > a5[2] || (v42 = v35 + 1 + v38, *a8 * v42 > *a9) || a8[1] * (v42 / 2) > a9[1] || a8[2] * v42 > a9[2])
    {
      --v35;
      --v36;
    }

    else
    {
      v39 = v70.i64[1] + 1;
      v40 = v71.i64[1] + 1;
      ++v36;
      ++v35;
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

  if (v36 + v37 > v40)
  {
    v36 = v40 - v37;
  }

  if (v35 + v38 > v39)
  {
    v35 = v39 - v38;
  }

  if (v26 >= v25)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  if (v36 >= v35)
  {
    v44 = v35;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 + v37 - 1;
  v46 = v43 + v27;
  v47 = v43 + v27 + v45 * *a4 > *a5;
  v63 = a9;
  v64 = a3;
  v61 = v28;
  v62 = v29;
  v59 = v30;
  v60 = v27;
  v69.i64[0] = v38;
  v68.i64[0] = v37;
  v71.i64[0] = v39;
  v70.i64[0] = v40;
  if (v47)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v44 + v37 + 1) / 2 - 1) > a5[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v46 + a4[2] * v45 > a5[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  v51 = v44 + v38 - 1;
  v52 = v43 + v28;
  if (v43 + v28 + *a8 * v51 > *a9)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v44 + v38 + 1) / 2 - 1) > a9[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
LABEL_68:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v50;
    a8 = v49;
    a5 = v48;
    v23 = v63;
    a3 = v64;
    v28 = v61;
    v29 = v62;
    v30 = v59;
    v27 = v60;
    v38 = v69.i64[0];
    v37 = v68.i64[0];
    v39 = v71.i64[0];
    v40 = v70.i64[0];
    if (v20)
    {
      goto LABEL_74;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v40;
  *(v19 + 20) = v43;
  *(v19 + 28) = v44;
  *(v19 + 36) = v27;
  *(v19 + 44) = v37;
  v19[11] = v39;
  v19[12] = v43;
  v19[13] = v44;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v38;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v54 = (v19 + 20);
  v55 = v15;
  while (1)
  {
    v56 = *v54++;
    v20 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v20 = 0;
      break;
    }
  }

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

float32x2_t *vt_Copy_420vf_TRC_Mat_TRC_420vf_neon_fp16_GCD(float32x2_t *result, uint64_t a2, int16x8_t a3, double a4, float32x4_t a5, __n128 _Q3, float32x4_t a7, __n128 _Q5, float32x4_t a9)
{
  v11 = 2 * result->u8[0];
  v252 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v11);
  v253 = *(&result[4] + 4);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v257 = result;
  v15 = *&v13 * a2 / v11;
  v16 = *&result[15] + 2 * v15;
  v17 = 2 * ((*&v13 + *&v13 * a2) / v11 - v15);
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v251 = v19[2];
  v22 = v21[2];
  v254 = v20[2];
  v255 = v18[2];
  v23 = (v254 + v22 * v16 + *&v12);
  if (v17 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = *v19;
    v27 = v19[1];
    v28 = *v21;
    v29 = v21[1];
    v30 = v25[17].u16[2];
    v31 = v25[17].u16[3];
    a5.i32[0] = v25->i32[0];
    _Q3.n128_u32[0] = v25[3].u32[1];
    v32 = v25[18].u16[0];
    v33 = v25[18].u16[1];
    v34 = v25[18].u16[2];
    a3.i32[0] = 1174403072;
    v35 = 8191.0 / v25[16].u32[0];
    v36 = v30;
    _S14 = v35 * v25->f32[0];
    v38 = v25[18].u16[3];
    v39 = v25[19].u16[0];
    *a5.i16 = v30;
    v40 = vdupq_lane_s16(*a5.f32, 0);
    *a5.i16 = -v31;
    _Q3.n128_u32[1] = v25[1].u32[0];
    *a9.f32 = vmul_n_f32(_Q3.n128_u64[0], v35);
    v297 = a9.i64[0];
    _Q3.n128_u32[0] = v25[6].u32[0];
    a7.i32[0] = v25[6].i32[1];
    _Q5.n128_u32[0] = v25[7].u32[0];
    v41 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    *v10.f32 = vmul_n_f32(v25[2], v35);
    v296 = v25[9].f32[0];
    v42 = vmulq_n_f16(v41, *a5.i16);
    v278 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    v43 = vmulq_n_f16(v278, *a5.i16);
    _Q3.n128_u32[1] = v25[7].u32[1];
    __asm { FMOV            V1.2S, #0.25 }

    *v9.f32 = vmul_f32(_Q3.n128_u64[0], _D1);
    v49 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    a7.i32[1] = v25[8].i32[0];
    *a7.f32 = vmul_f32(*a7.f32, _D1);
    _Q5.n128_u32[1] = v25[8].u32[1];
    *a5.f32 = vmul_f32(_Q5.n128_u64[0], _D1);
    _Q5.n128_u32[0] = v25[10].u32[0];
    _Q3.n128_u32[0] = v25[10].u32[1];
    v50 = vcvt_f16_f32(a5);
    v51 = vdupq_lane_s32(v50, 0);
    *v50.i16 = v32;
    _Q1 = vdupq_lane_s16(v50, 0);
    v260 = _Q1;
    *_Q1.i16 = v33;
    v52 = vdupq_lane_s16(*_Q1.i8, 0);
    result = (v25 + 164);
    v53 = v14 & 0xFFFFFFFE;
    v54 = &v25[2068] + 4;
    *_Q1.i16 = v34;
    v55 = vdupq_lane_s16(*_Q1.i8, 0);
    *_Q1.i16 = v38;
    v56 = vdupq_lane_s16(*_Q1.i8, 0);
    *_Q1.i16 = v39;
    v57 = *v20;
    v58 = (v20[1] + v29 * (v16 / 2) + *&v12);
    v59 = (v57 + v28 * v16 + *&v12);
    v60 = (v18[1] + v27 * (v252 / 2) + v253);
    v61 = (*v18 + v26 * v252 + v253);
    v62 = v32;
    v303 = v33;
    v304 = v31;
    v274 = v34;
    v298 = v38;
    v302 = v39;
    __asm { FCVT            H8, S14 }

    v273 = _H8;
    v295 = v25[4].f32[1];
    __asm { FCVT            H8, S19 }

    v294 = v25[5].f32[0];
    __asm { FCVT            H7, S9 }

    v271 = _H7;
    v293 = v25[5].f32[1];
    __asm { FCVT            H7, S23 }

    v67 = v55;
    _S17 = v296;
    __asm { FCVT            H9, S17 }

    v70 = v56;
    v292 = v25[9].f32[1];
    __asm { FCVT            H6, S6 }

    v269 = _H6;
    v290 = _Q5.n128_f32[0];
    __asm { FCVT            H5, S5 }

    v288 = _Q3.n128_f32[0];
    __asm { FCVT            H6, S3 }

    v73 = v52;
    v285 = v25[11].f32[0];
    __asm { FCVT            H3, S26 }

    v266 = *_Q3.n128_u16;
    v74 = vdupq_lane_s16(*_Q1.i8, 0);
    v283 = v25[11].f32[1];
    __asm { FCVT            H3, S27 }

    v263 = *_Q3.n128_u16;
    v280 = v25[12].f32[0];
    __asm { FCVT            H10, S10 }

    v279 = v25[12].f32[1];
    __asm { FCVT            H3, S13 }

    v300 = _Q3;
    v265 = v25[13].f32[0];
    __asm { FCVT            H1, S1 }

    v299 = *_Q1.i16;
    v76 = v10.i64[0];
    v77 = a7.i64[0];
    _Q1.i32[0] = a5.i32[1];
    v261 = a5.f32[1];
    v291 = a5.f32[0];
    v79.i64[0] = 0x9000900090009000;
    v79.i64[1] = 0x9000900090009000;
    v301 = _H9;
    v289 = v43;
    v286 = v51;
    v287 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v284 = v49;
    v281 = v52;
    v282 = v42;
    v276 = v70;
    v277 = v55;
    v275 = v74;
    v272 = _H8;
    v270 = _H7;
    v267 = _H6;
    v268 = _Q5;
    v264 = v41;
    v262 = _H10;
    v258 = _S14;
    v259 = v36;
    do
    {
      v80 = v61 + v26;
      v81 = v59 + v28;
      if (v14 < 8)
      {
        v140 = 0;
        v139 = v58;
        v84 = (v59 + v28);
        v138 = v60;
        v83 = (v61 + v26);
      }

      else
      {
        v82 = 0;
        v83 = (v61 + v26);
        v84 = (v59 + v28);
        do
        {
          v85 = *&v60[v82];
          WORD4(v86) = 0;
          *v87.i8 = vzip1_s8(v85, 0);
          v87.u64[1] = vzip2_s8(v85, 0);
          v88 = vcvtq_f16_u16(v87);
          v89 = vmlaq_f16(v42, v264, v88);
          v90 = vmlaq_f16(v43, v278, v88);
          v91 = vtrn2q_s16(v89, v89);
          v92 = vtrn1q_s16(v89, v89);
          v93 = vuzp1q_s16(v90, a3);
          *v93.i8 = vadd_f16(*v93.i8, *&vuzp2q_s16(v90, a3));
          v94 = vzip1q_s16(v93, v93);
          v95 = *v61++;
          *v89.i8 = vzip1_s8(v95, 0);
          v89.u64[1] = vzip2_s8(v95, 0);
          v96 = *v83++;
          *v90.i8 = vzip1_s8(v96, 0);
          v90.u64[1] = vzip2_s8(v96, 0);
          v97 = vsubq_f16(vcvtq_f16_u16(v89), v40);
          v98 = vsubq_f16(vcvtq_f16_u16(v90), v40);
          v99 = vmlaq_n_f16(v91, v97, v273);
          v100 = vmlaq_n_f16(v91, v98, v273);
          v101 = vmlaq_n_f16(v94, v97, v273);
          v102 = vmlaq_n_f16(v94, v98, v273);
          v103 = vmlaq_n_f16(v92, v97, v273);
          v104 = vmlaq_n_f16(v92, v98, v273);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v99, 0), v79));
          v98.i16[0] = result->i16[v105.u16[0]];
          v98.i16[1] = result->i16[v105.u16[1]];
          v98.i16[2] = result->i16[v105.u16[2]];
          v98.i16[3] = result->i16[v105.u16[3]];
          v98.i16[4] = result->i16[v105.u16[4]];
          v98.i16[5] = result->i16[v105.u16[5]];
          v98.i16[6] = result->i16[v105.u16[6]];
          v98.i16[7] = result->i16[v105.u16[7]];
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v79));
          v107.i16[0] = result->i16[v106.u16[0]];
          v107.i16[1] = result->i16[v106.u16[1]];
          v107.i16[2] = result->i16[v106.u16[2]];
          v107.i16[3] = result->i16[v106.u16[3]];
          v107.i16[4] = result->i16[v106.u16[4]];
          v107.i16[5] = result->i16[v106.u16[5]];
          v107.i16[6] = result->i16[v106.u16[6]];
          v107.i16[7] = result->i16[v106.u16[7]];
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v103, 0), v79));
          v109.i16[0] = result->i16[v108.u16[0]];
          v109.i16[1] = result->i16[v108.u16[1]];
          v109.i16[2] = result->i16[v108.u16[2]];
          v109.i16[3] = result->i16[v108.u16[3]];
          v109.i16[4] = result->i16[v108.u16[4]];
          v109.i16[5] = result->i16[v108.u16[5]];
          v109.i16[6] = result->i16[v108.u16[6]];
          v109.i16[7] = result->i16[v108.u16[7]];
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v79));
          v100.i16[0] = result->i16[v110.u16[0]];
          v100.i16[1] = result->i16[v110.u16[1]];
          v100.i16[2] = result->i16[v110.u16[2]];
          v100.i16[3] = result->i16[v110.u16[3]];
          v100.i16[4] = result->i16[v110.u16[4]];
          v100.i16[5] = result->i16[v110.u16[5]];
          v100.i16[6] = result->i16[v110.u16[6]];
          v100.i16[7] = result->i16[v110.u16[7]];
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v102, 0), v79));
          v112 = result->i16[v111.u16[0]];
          v113 = result->i16[v111.u16[1]];
          v114 = result->i16[v111.u16[2]];
          v115 = result->i16[v111.u16[3]];
          v116 = result->i16[v111.u16[4]];
          v117 = result->i16[v111.u16[5]];
          v118 = result->i16[v111.u16[6]];
          *&v86 = result->u16[v111.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, *(&v86 + 2)), v79));
          v102.i16[0] = result->i16[v119.u16[0]];
          v102.i16[1] = result->i16[v119.u16[1]];
          v102.i16[2] = result->i16[v119.u16[2]];
          v102.i16[3] = result->i16[v119.u16[3]];
          v102.i16[4] = result->i16[v119.u16[4]];
          v102.i16[5] = result->i16[v119.u16[5]];
          v102.i16[6] = result->i16[v119.u16[6]];
          v102.i16[7] = result->i16[v119.u16[7]];
          v104.i16[7] = v268.n128_i16[7];
          v120 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, _H9), v107, v269), v109, *v268.n128_u16);
          v121 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v267), v107, v266), v109, v263);
          v101.i64[0] = 0x9000900090009000;
          v101.i64[1] = 0x9000900090009000;
          v122 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v299), v107, *v300.n128_u16), v98, v262);
          v123 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v100, _H9), *(&v86 - 14), v269), v102, *v268.n128_u16);
          v124 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v100, v267), *(&v86 - 14), v266), v102, v263);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, *(&v86 + 2)), v101));
          v104.i16[0] = *&v54[2 * v125.u16[0]];
          v104.i16[1] = *&v54[2 * v125.u16[1]];
          v104.i16[2] = *&v54[2 * v125.u16[2]];
          v104.i16[3] = *&v54[2 * v125.u16[3]];
          v104.i16[4] = *&v54[2 * v125.u16[4]];
          v104.i16[5] = *&v54[2 * v125.u16[5]];
          v104.i16[6] = *&v54[2 * v125.u16[6]];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, *(&v86 + 2)), v101));
          v109.i16[0] = *&v54[2 * v126.u16[0]];
          v109.i16[1] = *&v54[2 * v126.u16[1]];
          v109.i16[2] = *&v54[2 * v126.u16[2]];
          v109.i16[3] = *&v54[2 * v126.u16[3]];
          v109.i16[4] = *&v54[2 * v126.u16[4]];
          v109.i16[5] = *&v54[2 * v126.u16[5]];
          v109.i16[6] = *&v54[2 * v126.u16[6]];
          v127 = vuzp1q_s16(v104, v109);
          v104.i16[7] = *&v54[2 * v125.u16[7]];
          v101.i16[7] = v300.n128_i16[7];
          _H9 = v301;
          v109.i16[7] = *&v54[2 * v126.u16[7]];
          v128 = vmaxq_f16(v122, *(&v86 + 2));
          v79.i64[0] = 0x9000900090009000;
          v79.i64[1] = 0x9000900090009000;
          v129 = vcvtq_u16_f16(vminq_f16(v128, v79));
          v130 = vmlaq_n_f16(vmulq_n_f16(v102, v299), *(&v86 - 14), *v300.n128_u16);
          v102.i16[0] = *&v54[2 * v129.u16[0]];
          v102.i16[1] = *&v54[2 * v129.u16[1]];
          v102.i16[2] = *&v54[2 * v129.u16[2]];
          v102.i16[3] = *&v54[2 * v129.u16[3]];
          v102.i16[4] = *&v54[2 * v129.u16[4]];
          v102.i16[5] = *&v54[2 * v129.u16[5]];
          v102.i16[6] = *&v54[2 * v129.u16[6]];
          *(&v86 - 14) = v102;
          LOWORD(v86) = *&v54[2 * v129.u16[7]];
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v123, *(&v86 + 2)), v79));
          v129.i16[0] = *&v54[2 * v131.u16[0]];
          v129.i16[1] = *&v54[2 * v131.u16[1]];
          v129.i16[2] = *&v54[2 * v131.u16[2]];
          v129.i16[3] = *&v54[2 * v131.u16[3]];
          v129.i16[4] = *&v54[2 * v131.u16[4]];
          v129.i16[5] = *&v54[2 * v131.u16[5]];
          v129.i16[6] = *&v54[2 * v131.u16[6]];
          v132 = &v54[2 * v131.u16[7]];
          v133 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v124, *(&v86 + 2)), v79));
          v101.i16[0] = *&v54[2 * v133.u16[0]];
          v101.i16[1] = *&v54[2 * v133.u16[1]];
          v101.i16[2] = *&v54[2 * v133.u16[2]];
          v101.i16[3] = *&v54[2 * v133.u16[3]];
          v101.i16[4] = *&v54[2 * v133.u16[4]];
          v101.i16[5] = *&v54[2 * v133.u16[5]];
          v101.i16[6] = *&v54[2 * v133.u16[6]];
          v134 = vuzp1q_s16(v129, v101);
          v129.i16[7] = *v132;
          v101.i16[7] = *&v54[2 * v133.u16[7]];
          v135 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v130, v100, v262), *(&v86 + 2)), v79));
          v133.i16[0] = *&v54[2 * v135.u16[0]];
          v133.i16[1] = *&v54[2 * v135.u16[1]];
          v133.i16[2] = *&v54[2 * v135.u16[2]];
          v133.i16[3] = *&v54[2 * v135.u16[3]];
          v133.i16[4] = *&v54[2 * v135.u16[4]];
          v133.i16[5] = *&v54[2 * v135.u16[5]];
          v133.i16[6] = *&v54[2 * v135.u16[6]];
          v136 = &v54[2 * v135.u16[7]];
          v137 = v133;
          v137.i16[7] = *v136;
          *v59++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v260, v104, v272), v109, v271), *(&v86 - 14), v270), v260), v67)));
          *v84++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v260, v129, v272), v101, v271), v137, v270), v260), v67)));
          _Q1 = vaddq_f16(vaddq_f16(vaddq_f16(v127, vuzp2q_s16(v104, v109)), v134), vuzp2q_s16(v129, v101));
          *_Q1.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v73, v49, vzip1q_s16(_Q1, _Q1)), v287, vzip2q_s16(_Q1, _Q1)), v286, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v102, v102), vtrn2q_s16(*(&v86 - 14), *(&v86 - 14))), vtrn1q_s16(v133, v133)), vtrn2q_s16(v137, v137))), v70), v74)));
          *&v58[v82] = _Q1.i64[0];
          v82 += 8;
        }

        while (v82 < v14 - 7);
        v138 = &v60[v82];
        v139 = &v58[v82];
        v140 = v14 & 0xFFFFFFF8;
        _S14 = v258;
        v36 = v259;
      }

      for (; v140 < v53; v49 = v284)
      {
        _Q1.i8[0] = v138[1];
        v141 = _Q1.u32[0] - v304;
        v142 = HIDWORD(v297);
        v143 = *(&v297 + 1) * v141;
        LOBYTE(v142) = v61->i8[0];
        v144 = _S14 * (v142 - v36);
        v145 = (*(&v297 + 1) * v141) + v144;
        v146 = 8191.0;
        if (v145 <= 8191.0)
        {
          v146 = (*(&v297 + 1) * v141) + v144;
          if (v145 < 0.0)
          {
            v146 = 0.0;
          }
        }

        LOBYTE(v145) = *v138;
        v147 = LODWORD(v145) - v304;
        v148 = v76;
        v149 = (*(&v76 + 1) * v141) + (v147 * *&v76);
        v150 = 8191.0;
        if ((v144 + v149) <= 8191.0)
        {
          v150 = v144 + v149;
          if ((v144 + v149) < 0.0)
          {
            v150 = 0.0;
          }
        }

        v151 = *&v297 * v147;
        v152 = (*&v297 * v147) + v144;
        v153 = 8191.0;
        if (v152 <= 8191.0)
        {
          v153 = v152;
          if (v152 < 0.0)
          {
            v153 = 0.0;
          }
        }

        LOBYTE(v152) = v61->i8[1];
        v154 = _S14 * (LODWORD(v152) - v36);
        v155 = 8191.0;
        if ((v143 + v154) <= 8191.0)
        {
          v155 = v143 + v154;
          if ((v143 + v154) < 0.0)
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

        LOBYTE(v157) = v83->i8[0];
        v160 = _S14 * (LODWORD(v157) - v36);
        v161 = 8191.0;
        if ((v143 + v160) <= 8191.0)
        {
          v161 = v143 + v160;
          if ((v143 + v160) < 0.0)
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

        LOBYTE(v148) = v83->i8[1];
        v165 = _S14 * (v148 - v36);
        v166 = v143 + v165;
        v158 = (v143 + v165) <= 8191.0;
        v167 = 8191.0;
        if (v158)
        {
          v167 = v166;
          if (v166 < 0.0)
          {
            v167 = 0.0;
          }
        }

        v168 = v149 + v165;
        v158 = (v149 + v165) <= 8191.0;
        v169 = 8191.0;
        if (v158)
        {
          v169 = v168;
          if (v168 < 0.0)
          {
            v169 = 0.0;
          }
        }

        v170 = v40;
        v171 = v36;
        v172 = v151 + v165;
        v158 = (v151 + v165) <= 8191.0;
        v173 = 8191.0;
        if (v158)
        {
          v173 = v172;
          if (v172 < 0.0)
          {
            v173 = 0.0;
          }
        }

        _H2 = result->i16[llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H3 = result->i16[llroundf(fminf(fmaxf(v150, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        _H5 = result->i16[llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        __asm { FCVT            S5, H5 }

        _H6 = result->i16[llroundf(fminf(fmaxf(v155, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H17 = result->i16[llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
        _H1 = result->i16[llroundf(fminf(fmaxf(v159, 0.0), 8191.0))];
        __asm
        {
          FCVT            S17, H17
          FCVT            S1, H1
        }

        _H27 = result->i16[llroundf(fminf(fmaxf(v161, 0.0), 8191.0))];
        v187 = llroundf(fminf(fmaxf(v162, 0.0), 8191.0));
        __asm { FCVT            S7, H27 }

        _H27 = result->i16[v187];
        __asm { FCVT            S27, H27 }

        _H4 = result->i16[llroundf(fminf(fmaxf(v164, 0.0), 8191.0))];
        __asm { FCVT            S4, H4 }

        _H25 = result->i16[llroundf(fminf(fmaxf(v167, 0.0), 8191.0))];
        __asm { FCVT            S25, H25 }

        _H30 = result->i16[llroundf(fminf(fmaxf(v169, 0.0), 8191.0))];
        _H10 = result->i16[llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
        __asm
        {
          FCVT            S30, H30
          FCVT            S10, H10
        }

        v199 = ((v292 * _S3) + (_S2 * v296)) + (_S5 * v290);
        v200 = ((v285 * _S3) + (_S2 * v288)) + (_S5 * v283);
        _S2 = ((v279 * _S3) + (_S2 * v280)) + (_S5 * v265);
        _S5 = ((v292 * _S17) + (_S6 * v296)) + (_S1 * v290);
        v203 = ((v285 * _S17) + (_S6 * v288)) + (_S1 * v283);
        _S6 = ((v279 * _S17) + (_S6 * v280)) + (_S1 * v265);
        v205 = ((v292 * _S27) + (_S7 * v296)) + (_S4 * v290);
        v206 = ((v285 * _S27) + (_S7 * v288)) + (_S4 * v283);
        _S7 = ((v279 * _S27) + (_S7 * v280)) + (_S4 * v265);
        v208 = ((v292 * _S30) + (_S25 * v296)) + (_S10 * v290);
        v209 = ((v285 * _S30) + (_S25 * v288)) + (_S10 * v283);
        v210 = ((v279 * _S30) + (_S25 * v280)) + (_S10 * v265);
        LOWORD(_S1) = *&v54[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        __asm { FCVT            S3, H1 }

        LOWORD(_S1) = *&v54[2 * llroundf(fminf(fmaxf(v200, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        LOWORD(_S2) = *&v54[2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        LOWORD(_S4) = *&v54[2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0))];
        __asm { FCVT            S4, H4 }

        LOWORD(_S5) = *&v54[2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0))];
        LOWORD(_S6) = *&v54[2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0))];
        __asm
        {
          FCVT            S17, H5
          FCVT            S6, H6
        }

        LOWORD(_S5) = *&v54[2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0))];
        __asm { FCVT            S30, H5 }

        LOWORD(_S5) = *&v54[2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0))];
        __asm { FCVT            S27, H5 }

        LOWORD(_S5) = *&v54[2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0))];
        __asm { FCVT            S25, H5 }

        LOWORD(_S5) = *&v54[2 * llroundf(fminf(fmaxf(v208, 0.0), 8191.0))];
        __asm { FCVT            S13, H5 }

        LOWORD(_S5) = *&v54[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        LOWORD(_S7) = *&v54[2 * llroundf(fminf(fmaxf(v210, 0.0), 8191.0))];
        __asm
        {
          FCVT            S5, H5
          FCVT            S10, H7
        }

        v223 = (((v294 * _S1) + (v295 * _S3)) + (v293 * _S2)) + v62;
        if (v223 < v62)
        {
          v224 = v62;
        }

        else
        {
          v224 = (((v294 * _S1) + (v295 * _S3)) + (v293 * _S2)) + v62;
        }

        v158 = v223 <= v274;
        v225 = (((v294 * _S17) + (v295 * _S4)) + (v293 * _S6)) + v62;
        if (!v158)
        {
          v224 = v274;
        }

        v226 = llroundf(v224);
        if (v225 < v62)
        {
          v227 = v62;
        }

        else
        {
          v227 = (((v294 * _S17) + (v295 * _S4)) + (v293 * _S6)) + v62;
        }

        v158 = v225 <= v274;
        v228 = (((v294 * _S27) + (v295 * _S30)) + (v293 * _S25)) + v62;
        if (!v158)
        {
          v227 = v274;
        }

        v229 = llroundf(v227);
        if (v228 < v62)
        {
          v230 = v62;
        }

        else
        {
          v230 = (((v294 * _S27) + (v295 * _S30)) + (v293 * _S25)) + v62;
        }

        v158 = v228 <= v274;
        v231 = (((v294 * _S5) + (v295 * _S13)) + (v293 * _S10)) + v62;
        if (!v158)
        {
          v230 = v274;
        }

        v232 = llroundf(v230);
        if (v231 < v62)
        {
          v233 = v62;
        }

        else
        {
          v233 = (((v294 * _S5) + (v295 * _S13)) + (v293 * _S10)) + v62;
        }

        if (v231 <= v274)
        {
          v234 = v233;
        }

        else
        {
          v234 = v274;
        }

        v235 = ((_S3 + _S4) + _S30) + _S13;
        v236 = ((_S1 + _S17) + _S27) + _S5;
        v59->i8[0] = v226;
        v59->i8[1] = v229;
        v84->i8[0] = v232;
        v84->i8[1] = llroundf(v234);
        v237 = ((_S2 + _S6) + _S25) + _S10;
        v238 = ((v303 + (v235 * v9.f32[0])) + (v236 * *&v77)) + (v237 * v291);
        v239 = v302;
        if (v238 <= v302)
        {
          v239 = ((v303 + (v235 * v9.f32[0])) + (v236 * *&v77)) + (v237 * v291);
          if (v238 < v298)
          {
            v239 = v298;
          }
        }

        *_Q1.i32 = ((v303 + (v235 * v9.f32[1])) + (v236 * *(&v77 + 1))) + (v237 * v261);
        *v139 = llroundf(v239);
        v240 = v302;
        v36 = v171;
        v40 = v170;
        v73 = v281;
        v70 = v276;
        v67 = v277;
        v74 = v275;
        _H9 = v301;
        v79.i64[0] = 0x9000900090009000;
        v79.i64[1] = 0x9000900090009000;
        if (*_Q1.i32 <= v302)
        {
          v240 = *_Q1.i32;
          if (*_Q1.i32 < v298)
          {
            v240 = v298;
          }
        }

        v140 += 2;
        v138 += 2;
        v61 = (v61 + 2);
        v83 = (v83 + 2);
        v139[1] = llroundf(v240);
        v59 = (v59 + 2);
        v84 = (v84 + 2);
        v139 += 2;
        v42 = v282;
        v43 = v289;
      }

      v61 = &v80[v26];
      v60 += v27;
      v59 = &v81[v28];
      v58 += v29;
      v24 += 2;
    }

    while (v24 < v17);
  }

  if (v255 && v254)
  {
    if (v17 >= 1)
    {
      v241 = 0;
      v242 = (v255 + v251 * v252 + v253);
      do
      {
        result = memcpy(v23, v242, v14);
        v242 += v251;
        v23 += v22;
        ++v241;
      }

      while (v17 > v241);
    }
  }

  else if (v254 && v17 >= 1)
  {
    v243 = 0;
    v244 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v245 = 0;
        do
        {
          v246 = vdupq_n_s64(v245);
          v247 = vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v247, *v244.i8), *v244.i8).u8[0])
          {
            v23[v245] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v247, *&v244), *&v244).i8[1])
          {
            v23[v245 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v244, vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDDA0)))), *&v244).i8[2])
          {
            v23[v245 + 2] = -1;
            v23[v245 + 3] = -1;
          }

          v248 = vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v244, vuzp1_s16(v248, *&v244)).i32[1])
          {
            v23[v245 + 4] = -1;
          }

          if (vuzp1_s8(*&v244, vuzp1_s16(v248, *&v244)).i8[5])
          {
            v23[v245 + 5] = -1;
          }

          if (vuzp1_s8(*&v244, vuzp1_s16(*&v244, vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDD80))))).i8[6])
          {
            v23[v245 + 6] = -1;
            v23[v245 + 7] = -1;
          }

          v249 = vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v249, *v244.i8), *v244.i8).u8[0])
          {
            v23[v245 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v249, *&v244), *&v244).i8[1])
          {
            v23[v245 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v244, vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDD60)))), *&v244).i8[2])
          {
            v23[v245 + 10] = -1;
            v23[v245 + 11] = -1;
          }

          v250 = vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v244, vuzp1_s16(v250, *&v244)).i32[1])
          {
            v23[v245 + 12] = -1;
          }

          if (vuzp1_s8(*&v244, vuzp1_s16(v250, *&v244)).i8[5])
          {
            v23[v245 + 13] = -1;
          }

          if (vuzp1_s8(*&v244, vuzp1_s16(*&v244, vmovn_s64(vcgeq_u64(v244, vorrq_s8(v246, xmmword_18FECDD40))))).i8[6])
          {
            v23[v245 + 14] = -1;
            v23[v245 + 15] = -1;
          }

          v245 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v245);
      }

      v23 += v22;
      ++v243;
    }

    while (v17 > v243);
  }

  v257[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_420vf(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v68 = a2[2];
  v69 = v17;
  v18 = a6[1];
  v70 = *a6;
  v71 = v16;
  v66 = a6[2];
  v67 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_75:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v58 - v21);
    bzero(&v58 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v66, v67), v70), vceqq_s64(vaddq_s64(v68, v69), v71))));
  v25 = v67.i64[0];
  v26 = v69.i64[0];
  if (v66.i8[0])
  {
    v26 = v69.i64[0] - 1;
    v27 = v68.i64[0] + 1;
  }

  else
  {
    v27 = v68.i64[0];
  }

  if (v66.i8[0])
  {
    v25 = v67.i64[0] - 1;
    v28 = v66.i64[0] + 1;
  }

  else
  {
    v28 = v66.i64[0];
  }

  v29 = v70.i64[0];
  v30 = v71.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v34 = a8[2], v33 > v34) && v34)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v70.i64[0] + 1;
      v30 = v71.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v35 = v67.i64[1];
  v36 = v69.i64[1];
  if (v66.i8[8])
  {
    v36 = v69.i64[1] - 1;
    v37 = v68.i64[1] + 1;
  }

  else
  {
    v37 = v68.i64[1];
  }

  if (v66.i8[8])
  {
    v35 = v67.i64[1] - 1;
    v38 = v66.i64[1] + 1;
  }

  else
  {
    v38 = v66.i64[1];
  }

  v39 = v70.i64[1];
  v40 = v71.i64[1];
  v65 = a1;
  if (v35)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v41 = v36 + 1 + v37, *a4 * v41 > *a5) || a4[1] * (v41 / 2) > a5[1] || a4[2] * v41 > a5[2] || (v42 = v35 + 1 + v38, *a8 * v42 > *a9) || a8[1] * (v42 / 2) > a9[1] || a8[2] * v42 > a9[2])
    {
      --v35;
      --v36;
    }

    else
    {
      v39 = v70.i64[1] + 1;
      v40 = v71.i64[1] + 1;
      ++v36;
      ++v35;
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

  if (v36 + v37 > v40)
  {
    v36 = v40 - v37;
  }

  if (v35 + v38 > v39)
  {
    v35 = v39 - v38;
  }

  if (v26 >= v25)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  if (v36 >= v35)
  {
    v44 = v35;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 + v37 - 1;
  v46 = v43 + v27;
  v47 = v43 + v27 + v45 * *a4 > *a5;
  v63 = a9;
  v64 = a3;
  v61 = v28;
  v62 = v29;
  v59 = v30;
  v60 = v27;
  v69.i64[0] = v38;
  v68.i64[0] = v37;
  v71.i64[0] = v39;
  v70.i64[0] = v40;
  if (v47)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v44 + v37 + 1) / 2 - 1) > a5[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v46 + a4[2] * v45 > a5[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  v51 = v44 + v38 - 1;
  v52 = v43 + v28;
  if (v43 + v28 + *a8 * v51 > *a9)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v44 + v38 + 1) / 2 - 1) > a9[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
LABEL_68:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v50;
    a8 = v49;
    a5 = v48;
    v23 = v63;
    a3 = v64;
    v28 = v61;
    v29 = v62;
    v30 = v59;
    v27 = v60;
    v38 = v69.i64[0];
    v37 = v68.i64[0];
    v39 = v71.i64[0];
    v40 = v70.i64[0];
    if (v20)
    {
      goto LABEL_74;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v40;
  *(v19 + 20) = v43;
  *(v19 + 28) = v44;
  *(v19 + 36) = v27;
  *(v19 + 44) = v37;
  v19[11] = v39;
  v19[12] = v43;
  v19[13] = v44;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v38;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_420vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v54 = (v19 + 20);
  v55 = v15;
  while (1)
  {
    v56 = *v54++;
    v20 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v20 = 0;
      break;
    }
  }

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Mat_TRC_420vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = result;
  v178 = *(result + 36);
  v11 = 2 * *result;
  v177 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v15 = v13 * a2 / v11;
  v16 = result[15] + 2 * v15;
  v17 = (v13 + v13 * a2) / v11 - v15;
  v18 = 2 * v17;
  v19 = result[7];
  v20 = result[8];
  v21 = result[16];
  v22 = result[17];
  v23 = v20[2];
  v179 = v19[2];
  v24 = v22[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v16 + v12);
  if (2 * v17 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = v14 & 0xFFFFFFFE;
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
    v202 = v34 * *(v28 + 16);
    v203 = v34 * *(v28 + 8);
    v38 = v34 * *(v28 + 20);
    *&v39 = v34 * *(v28 + 28);
    v200 = *&v39;
    v201 = v38;
    v40 = v6;
    v41 = v7;
    v42 = v8;
    LOWORD(v39) = *(v28 + 150);
    *&v43 = v39;
    v204 = *&v43;
    LOWORD(v43) = *(v28 + 152);
    v44 = v43;
    v196 = *(v28 + 40);
    v197 = *(v28 + 36);
    v195 = *(v28 + 44);
    v193 = *(v28 + 52) * 0.25;
    v194 = *(v28 + 48) * 0.25;
    v191 = *(v28 + 60) * 0.25;
    v192 = *(v28 + 56) * 0.25;
    v189 = *(v28 + 72);
    v190 = *(v28 + 64) * 0.25;
    v187 = *(v28 + 76);
    v188 = *(v28 + 68) * 0.25;
    v185 = *(v28 + 84);
    v186 = *(v28 + 80);
    v183 = *(v28 + 92);
    v184 = *(v28 + 88);
    v45 = *(v28 + 104);
    v181 = *(v28 + 100);
    v182 = *(v28 + 96);
    result = (v28 + 164);
    v46 = v28 + 16548;
    v47 = v21[1];
    v48 = (*v21 + v32 * v16 + v12);
    v49 = v47 + v33 * (v16 / 2);
    v50 = v19[1];
    v51 = (*v19 + v30 * v177 + v178);
    v52 = v49 + v12;
    v53 = v50 + v31 * (v177 / 2) + v178;
    v198 = v44;
    v199 = v41;
    v180 = v37;
    v54 = v45;
    do
    {
      v55 = &v51[v30];
      v56 = &v48[v32];
      if (v29 >= 1)
      {
        v57 = 0;
        v58 = &v51[v30];
        v59 = &v48[v32];
        do
        {
          LOBYTE(v45) = *(v53 + v57 + 1);
          v60 = LODWORD(v45) - v36;
          v61 = LODWORD(v203);
          v62 = v203 * v60;
          LOBYTE(v61) = *v51;
          v63 = v61 - v35;
          v64 = v37 * v63;
          v65 = (v203 * v60) + (v37 * v63);
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = (v203 * v60) + (v37 * v63);
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          LOBYTE(v63) = *(v53 + v57);
          v67 = LODWORD(v63) - v36;
          v68 = (v201 * v60) + (v67 * v202);
          v69 = 8191.0;
          if ((v64 + v68) <= 8191.0)
          {
            v69 = v64 + v68;
            if ((v64 + v68) < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = LODWORD(v200);
          v71 = v200 * v67;
          v72 = (v200 * v67) + v64;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          LOBYTE(v70) = v51[1];
          v74 = v70 - v35;
          v75 = v37 * v74;
          v76 = v62 + (v37 * v74);
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v62 + (v37 * v74);
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = v68 + v75;
          v79 = 8191.0;
          if ((v68 + v75) <= 8191.0)
          {
            v79 = v68 + v75;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v71 + v75;
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          LOBYTE(v74) = *v58;
          v82 = v37 * (LODWORD(v74) - v35);
          v83 = 8191.0;
          if ((v62 + v82) <= 8191.0)
          {
            v83 = v62 + v82;
            if ((v62 + v82) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = 8191.0;
          if ((v68 + v82) <= 8191.0)
          {
            v84 = v68 + v82;
            if ((v68 + v82) < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v71 + v82;
          v86 = (v71 + v82) <= 8191.0;
          v87 = 8191.0;
          if (v86)
          {
            v87 = v85;
            if (v85 < 0.0)
            {
              v87 = 0.0;
            }
          }

          LOBYTE(v78) = v58[1];
          v88 = v37 * (LODWORD(v78) - v35);
          v89 = v62 + v88;
          v86 = (v62 + v88) <= 8191.0;
          v90 = 8191.0;
          if (v86)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v68 + v88;
          v86 = (v68 + v88) <= 8191.0;
          v92 = 8191.0;
          if (v86)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v71 + v88;
          v94 = 8191.0;
          if (v93 <= 8191.0)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          _H4 = *(result + llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(result + llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(result + llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H17 = *(result + llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _H19 = *(result + llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H24 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H19
            FCVT            S24, H24
          }

          _H27 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          v112 = llroundf(fminf(fmaxf(v84, 0.0), 8191.0));
          __asm { FCVT            S1, H27 }

          _H27 = *(result + v112);
          __asm { FCVT            S27, H27 }

          _H2 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H7 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H25 = *(result + llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H26 = *(result + llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm
          {
            FCVT            S25, H25
            FCVT            S26, H26
          }

          v124 = ((v187 * _S5) + (_S4 * v189)) + (_S6 * v186);
          v125 = ((v184 * _S5) + (_S4 * v185)) + (_S6 * v183);
          v126 = ((v181 * _S5) + (_S4 * v182)) + (_S6 * v54);
          _S3 = ((v187 * _S19) + (_S17 * v189)) + (_S24 * v186);
          v128 = ((v184 * _S19) + (_S17 * v185)) + (_S24 * v183);
          v129 = ((v181 * _S19) + (_S17 * v182)) + (_S24 * v54);
          v130 = ((v187 * _S27) + (_S1 * v189)) + (_S2 * v186);
          v131 = ((v184 * _S27) + (_S1 * v185)) + (_S2 * v183);
          _S1 = ((v181 * _S27) + (_S1 * v182)) + (_S2 * v54);
          v133 = ((v187 * _S25) + (_S7 * v189)) + (_S26 * v186);
          v134 = ((v184 * _S25) + (_S7 * v185)) + (_S26 * v183);
          v135 = ((v181 * _S25) + (_S7 * v182)) + (_S26 * v54);
          LOWORD(_S2) = *(v46 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          __asm { FCVT            S6, H2 }

          LOWORD(_S2) = *(v46 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S4, H2 }

          LOWORD(_S2) = *(v46 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S5, H2 }

          LOWORD(_S2) = *(v46 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          LOWORD(_S7) = *(v46 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H3
            FCVT            S7, H7
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S26, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S25, H3 }

          LOWORD(_S1) = *(v46 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S24, H1 }

          LOWORD(_S1) = *(v46 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          __asm { FCVT            S28, H1 }

          LOWORD(_S1) = *(v46 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm
          {
            FCVT            S1, H1
            FCVT            S27, H3
          }

          v148 = (((v196 * _S4) + (v197 * _S6)) + (v195 * _S5)) + v40;
          if (v148 < v40)
          {
            v149 = v40;
          }

          else
          {
            v149 = (((v196 * _S4) + (v197 * _S6)) + (v195 * _S5)) + v40;
          }

          v86 = v148 <= v42;
          v150 = (((v196 * _S19) + (v197 * _S2)) + (v195 * _S7)) + v40;
          if (!v86)
          {
            v149 = v42;
          }

          v151 = llroundf(v149);
          if (v150 < v40)
          {
            v152 = v40;
          }

          else
          {
            v152 = (((v196 * _S19) + (v197 * _S2)) + (v195 * _S7)) + v40;
          }

          v86 = v150 <= v42;
          v153 = (((v196 * _S25) + (v197 * _S26)) + (v195 * _S24)) + v40;
          if (!v86)
          {
            v152 = v42;
          }

          v154 = llroundf(v152);
          if (v153 < v40)
          {
            v155 = v40;
          }

          else
          {
            v155 = (((v196 * _S25) + (v197 * _S26)) + (v195 * _S24)) + v40;
          }

          v86 = v153 <= v42;
          v156 = (((v196 * _S1) + (v197 * _S28)) + (v195 * _S27)) + v40;
          if (!v86)
          {
            v155 = v42;
          }

          v157 = llroundf(v155);
          if (v156 < v40)
          {
            v158 = v40;
          }

          else
          {
            v158 = (((v196 * _S1) + (v197 * _S28)) + (v195 * _S27)) + v40;
          }

          if (v156 <= v42)
          {
            v159 = v158;
          }

          else
          {
            v159 = v42;
          }

          v160 = ((_S6 + _S2) + _S26) + _S28;
          v161 = ((_S4 + _S19) + _S25) + _S1;
          *v48 = v151;
          v48[1] = v154;
          *v59 = v157;
          v59[1] = llroundf(v159);
          v162 = ((_S5 + _S7) + _S24) + _S27;
          v163 = ((v199 + (v160 * v194)) + (v161 * v193)) + (v162 * v192);
          v164 = v198;
          if (v163 <= v198)
          {
            v164 = ((v199 + (v160 * v194)) + (v161 * v193)) + (v162 * v192);
            if (v163 < v204)
            {
              v164 = v204;
            }
          }

          v45 = (v199 + (v160 * v191)) + (v161 * v190);
          v165 = v45 + (v162 * v188);
          *(v52 + v57) = llroundf(v164);
          v166 = v198;
          v37 = v180;
          if (v165 <= v198)
          {
            v45 = v204;
            v166 = v165;
            if (v165 < v204)
            {
              v166 = v204;
            }
          }

          v51 += 2;
          v58 += 2;
          v48 += 2;
          v59 += 2;
          *(v52 + v57 + 1) = llroundf(v166);
          v57 += 2;
        }

        while (v57 < v29);
      }

      v51 = &v55[v30];
      v53 += v31;
      v48 = &v56[v32];
      v52 += v33;
      v27 += 2;
    }

    while (v27 < v18);
  }

  if (v179 && v25)
  {
    if (v18 >= 1)
    {
      v167 = 0;
      v168 = (v179 + v23 * v177 + v178);
      do
      {
        result = memcpy(v26, v168, v14);
        v168 += v23;
        v26 += v24;
        ++v167;
      }

      while (v18 > v167);
    }
  }

  else if (v25 && v18 >= 1)
  {
    v169 = 0;
    v170 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v171 = 0;
        do
        {
          v172 = vdupq_n_s64(v171);
          v173 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v173, *v170.i8), *v170.i8).u8[0])
          {
            v26[v171] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v173, *&v170), *&v170).i8[1])
          {
            v26[v171 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDDA0)))), *&v170).i8[2])
          {
            v26[v171 + 2] = -1;
            v26[v171 + 3] = -1;
          }

          v174 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v170, vuzp1_s16(v174, *&v170)).i32[1])
          {
            v26[v171 + 4] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(v174, *&v170)).i8[5])
          {
            v26[v171 + 5] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD80))))).i8[6])
          {
            v26[v171 + 6] = -1;
            v26[v171 + 7] = -1;
          }

          v175 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v175, *v170.i8), *v170.i8).u8[0])
          {
            v26[v171 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v175, *&v170), *&v170).i8[1])
          {
            v26[v171 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD60)))), *&v170).i8[2])
          {
            v26[v171 + 10] = -1;
            v26[v171 + 11] = -1;
          }

          v176 = vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v170, vuzp1_s16(v176, *&v170)).i32[1])
          {
            v26[v171 + 12] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(v176, *&v170)).i8[5])
          {
            v26[v171 + 13] = -1;
          }

          if (vuzp1_s8(*&v170, vuzp1_s16(*&v170, vmovn_s64(vcgeq_u64(v170, vorrq_s8(v172, xmmword_18FECDD40))))).i8[6])
          {
            v26[v171 + 14] = -1;
            v26[v171 + 15] = -1;
          }

          v171 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v171);
      }

      v26 += v24;
      ++v169;
    }

    while (v18 > v169);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_420vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v68 = a2[2];
  v69 = v17;
  v18 = a6[1];
  v70 = *a6;
  v71 = v16;
  v66 = a6[2];
  v67 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_75:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v58 - v21);
    bzero(&v58 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v66, v67), v70), vceqq_s64(vaddq_s64(v68, v69), v71))));
  v25 = v67.i64[0];
  v26 = v69.i64[0];
  if (v66.i8[0])
  {
    v26 = v69.i64[0] - 1;
    v27 = v68.i64[0] + 1;
  }

  else
  {
    v27 = v68.i64[0];
  }

  if (v66.i8[0])
  {
    v25 = v67.i64[0] - 1;
    v28 = v66.i64[0] + 1;
  }

  else
  {
    v28 = v66.i64[0];
  }

  v29 = v70.i64[0];
  v30 = v71.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v34 = a8[2], v33 > v34) && v34)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v70.i64[0] + 1;
      v30 = v71.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v35 = v67.i64[1];
  v36 = v69.i64[1];
  if (v66.i8[8])
  {
    v36 = v69.i64[1] - 1;
    v37 = v68.i64[1] + 1;
  }

  else
  {
    v37 = v68.i64[1];
  }

  if (v66.i8[8])
  {
    v35 = v67.i64[1] - 1;
    v38 = v66.i64[1] + 1;
  }

  else
  {
    v38 = v66.i64[1];
  }

  v39 = v70.i64[1];
  v40 = v71.i64[1];
  v65 = a1;
  if (v35)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v41 = v36 + 1 + v37, *a4 * v41 > *a5) || a4[1] * (v41 / 2) > a5[1] || a4[2] * v41 > a5[2] || (v42 = v35 + 1 + v38, *a8 * v42 > *a9) || a8[1] * (v42 / 2) > a9[1] || a8[2] * v42 > a9[2])
    {
      --v35;
      --v36;
    }

    else
    {
      v39 = v70.i64[1] + 1;
      v40 = v71.i64[1] + 1;
      ++v36;
      ++v35;
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

  if (v36 + v37 > v40)
  {
    v36 = v40 - v37;
  }

  if (v35 + v38 > v39)
  {
    v35 = v39 - v38;
  }

  if (v26 >= v25)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  if (v36 >= v35)
  {
    v44 = v35;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 + v37 - 1;
  v46 = v43 + v27;
  v47 = v43 + v27 + v45 * *a4 > *a5;
  v63 = a9;
  v64 = a3;
  v61 = v28;
  v62 = v29;
  v59 = v30;
  v60 = v27;
  v69.i64[0] = v38;
  v68.i64[0] = v37;
  v71.i64[0] = v39;
  v70.i64[0] = v40;
  if (v47)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v44 + v37 + 1) / 2 - 1) > a5[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v46 + a4[2] * v45 > a5[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  v51 = v44 + v38 - 1;
  v52 = v43 + v28;
  if (v43 + v28 + *a8 * v51 > *a9)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v44 + v38 + 1) / 2 - 1) > a9[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
LABEL_68:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v50;
    a8 = v49;
    a5 = v48;
    v23 = v63;
    a3 = v64;
    v28 = v61;
    v29 = v62;
    v30 = v59;
    v27 = v60;
    v38 = v69.i64[0];
    v37 = v68.i64[0];
    v39 = v71.i64[0];
    v40 = v70.i64[0];
    if (v20)
    {
      goto LABEL_74;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v40;
  *(v19 + 20) = v43;
  *(v19 + 28) = v44;
  *(v19 + 36) = v27;
  *(v19 + 44) = v37;
  v19[11] = v39;
  v19[12] = v43;
  v19[13] = v44;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v38;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_420vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v54 = (v19 + 20);
  v55 = v15;
  while (1)
  {
    v56 = *v54++;
    v20 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v20 = 0;
      break;
    }
  }

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

void *vt_Copy_420vf_rgb_420vf_neon_fp16_GCD(void *result, uint64_t a2, int16x8_t _Q0)
{
  v10 = result;
  v156 = *(result + 36);
  v11 = 2 * *result;
  v155 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v15 = v13 * a2 / v11;
  v16 = result[15] + 2 * v15;
  v17 = 2 * ((v13 + v13 * a2) / v11 - v15);
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v22 = v19[2];
  v23 = v21[2];
  v157 = v20[2];
  v158 = v18[2];
  v24 = (v157 + v23 * v16 + v12);
  if (v17 >= 1)
  {
    v25 = 0;
    v26 = result[19];
    v27 = *v19;
    v28 = v19[1];
    v29 = *v21;
    v30 = v21[1];
    v31 = v26[17].u16[2];
    v32 = v26[17].u16[3];
    v33.i32[0] = v26[3].i32[1];
    v34 = v26[18].u16[0];
    v35 = v26[18].u16[1];
    v36 = v26[18].u16[2];
    v37 = v26[18].u16[3];
    v38 = v26[19].u16[0];
    _Q0.i32[0] = v26[4].i32[1];
    _S1 = v26[5].f32[0];
    _S2 = v26[5].f32[1];
    v5.i32[0] = v26[6].i32[0];
    v42.i32[0] = v26[6].i32[1];
    v41.i32[0] = v26[7].i32[0];
    v43 = v31;
    *v4.i16 = v31;
    result = (v14 & 0xFFFFFFFE);
    v44 = v32;
    v6.f32[0] = v26[17].u32[0] / v26[16].u32[0];
    _S5 = v6.f32[0] * v26->f32[0];
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v172 = v37;
    v49 = v38;
    __asm { FCVT            H8, S5 }

    v55 = vdupq_lane_s16(v4, 0);
    v33.i32[1] = v26[1].i32[0];
    v56 = -v32;
    *v3.f32 = vmul_n_f32(v33, v6.f32[0]);
    *v6.f32 = vmul_n_f32(v26[2], v6.f32[0]);
    v164 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v165 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v57 = vmulq_n_f16(v165, v56);
    v162 = vmulq_n_f16(v164, v56);
    v163 = v57;
    __asm
    {
      FCVT            H9, S0
      FCVT            H10, S1
    }

    v5.i32[1] = v26[7].i32[1];
    __asm { FMOV            V23.2S, #0.25 }

    *v57.f32 = vmul_f32(*v5.f32, _D23);
    v42.i32[1] = v26[8].i32[0];
    *v5.f32 = vmul_f32(v42, _D23);
    v61 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v160 = v61;
    v161 = vdupq_lane_s32(vcvt_f16_f32(v57), 0);
    v41.i32[1] = v26[8].i32[1];
    *v61.f32 = vmul_f32(v41, _D23);
    v62 = vcvt_f16_f32(v61);
    v63 = vdupq_lane_s32(v62, 0);
    *v62.i16 = v34;
    v64 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v35;
    v77 = vdupq_lane_s16(v62, 0);
    v168 = v77;
    v169 = v63;
    *v77.i16 = v36;
    v65 = vdupq_lane_s16(*v77.i8, 0);
    *v77.i16 = v37;
    v66 = vdupq_lane_s16(*v77.i8, 0);
    *v77.i16 = v38;
    v166 = vdupq_lane_s16(*v77.i8, 0);
    v167 = v66;
    v67 = *v20;
    v68 = (v20[1] + v30 * (v16 / 2) + v12);
    v69 = (v67 + v29 * v16 + v12);
    v70 = *v18;
    v71 = (v18[1] + v28 * (v155 / 2) + v156);
    v72 = (v70 + *v19 * v155 + v156);
    __asm { FCVT            H12, S2 }

    v74 = v3.i64[0];
    v75 = v6.i64[0];
    v76 = v57.i64[0];
    v77.i32[0] = v5.i32[1];
    v171 = v5.f32[0];
    v170 = v61.f32[0];
    do
    {
      v78 = v72 + v27;
      v79 = v69 + v29;
      if (v14 < 8)
      {
        v107 = 0;
        v106 = v68;
        v82 = (v69 + v29);
        v105 = v71;
        v81 = (v72 + v27);
      }

      else
      {
        v80 = 0;
        v81 = (v72 + v27);
        v82 = (v69 + v29);
        do
        {
          v83 = *&v71[v80];
          *v84.i8 = vzip1_s8(v83, 0);
          v84.u64[1] = vzip2_s8(v83, 0);
          v85 = vcvtq_f16_u16(v84);
          v86 = vmlaq_f16(v163, v165, v85);
          v87 = vmlaq_f16(v162, v164, v85);
          v88 = vtrn2q_s16(v86, v86);
          v89 = vtrn1q_s16(v86, v86);
          v90 = vuzp1q_s16(v87, _Q0);
          *v90.i8 = vadd_f16(*v90.i8, *&vuzp2q_s16(v87, _Q0));
          v91 = *v72++;
          *v92.i8 = vzip1_s8(v91, 0);
          v92.u64[1] = vzip2_s8(v91, 0);
          v93 = vzip1q_s16(v90, v90);
          v94 = *v81++;
          *v95.i8 = vzip1_s8(v94, 0);
          v95.u64[1] = vzip2_s8(v94, 0);
          v96 = vsubq_f16(vcvtq_f16_u16(v92), v55);
          v97 = vsubq_f16(vcvtq_f16_u16(v95), v55);
          v98 = vmlaq_n_f16(v88, v96, _H8);
          v99 = vmlaq_n_f16(v88, v97, _H8);
          v100 = vmlaq_n_f16(v93, v96, _H8);
          v101 = vmlaq_n_f16(v93, v97, _H8);
          v102 = vmlaq_n_f16(v89, v96, _H8);
          v103 = vmlaq_n_f16(v89, v97, _H8);
          v9 = vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v64, v99, _H9), v101, _H10), v103, _H12), v64), v65);
          *v69++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v64, v98, _H9), v100, _H10), v102, _H12), v64), v65)));
          *v82++ = vmovn_s16(vcvtq_u16_f16(v9));
          v77 = vaddq_f16(vuzp2q_s16(v99, v101), vaddq_f16(vuzp1q_s16(v99, v101), vpaddq_f16(v98, v100)));
          v8 = vzip1q_s16(v77, v77);
          v104 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v168, v161, v8), v160, vzip2q_s16(v77, v77)), v169, vaddq_f16(vtrn2q_s16(v103, v103), vaddq_f16(vtrn1q_s16(v103, v103), vaddq_f16(vtrn1q_s16(v102, v102), vtrn2q_s16(v102, v102)))));
          v7 = *v166.i32;
          *v77.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, v167), v166)));
          *&v68[v80] = v77.i64[0];
          v80 += 8;
        }

        while (v80 < v14 - 7);
        v105 = &v71[v80];
        v106 = &v68[v80];
        v107 = v14 & 0xFFFFFFF8;
      }

      while (v107 < result)
      {
        v77.i8[0] = *v105;
        v108 = v77.u32[0] - v44;
        LOBYTE(v7) = v105[1];
        v109 = LODWORD(v7) - v44;
        v110 = *(&v74 + 1) * v109;
        *&v111 = *(&v75 + 1) * v109;
        v112 = *&v111 + (v108 * *&v75);
        v113 = *&v74 * v108;
        LOBYTE(v111) = v72->i8[0];
        v114 = _S5 * (v111 - v43);
        v8.i8[0] = v72->i8[1];
        v115 = _S5 * (v8.u32[0] - v43);
        v9.i8[0] = v81->i8[0];
        *&v116 = v9.u32[0] - v43;
        v117 = _S5 * *&v116;
        LOBYTE(v116) = v81->i8[1];
        v118 = _S5 * (v116 - v43);
        v119 = v110 + v114;
        *v9.i32 = v114 + v112;
        v120 = v113 + v114;
        v121 = v110 + v115;
        v122 = v112 + v115;
        v123 = v113 + v115;
        v124 = v110 + v117;
        v125 = v112 + v117;
        *v8.i32 = v113 + v117;
        v126 = v110 + v118;
        v127 = v112 + v118;
        v128 = v113 + v118;
        *v77.i32 = (((_S1 * *v9.i32) + (*_Q0.i32 * v119)) + (_S2 * v120)) + v46;
        if (*v77.i32 < v46)
        {
          v129 = v46;
        }

        else
        {
          v129 = (((_S1 * *v9.i32) + (*_Q0.i32 * v119)) + (_S2 * v120)) + v46;
        }

        v130 = *v77.i32 <= v48;
        v131 = (((_S1 * v122) + (*_Q0.i32 * v121)) + (_S2 * v123)) + v46;
        if (!v130)
        {
          v129 = v48;
        }

        v132 = llroundf(v129);
        if (v131 < v46)
        {
          v133 = v46;
        }

        else
        {
          v133 = (((_S1 * v122) + (*_Q0.i32 * v121)) + (_S2 * v123)) + v46;
        }

        v130 = v131 <= v48;
        v134 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * *v8.i32)) + v46;
        if (!v130)
        {
          v133 = v48;
        }

        v135 = llroundf(v133);
        if (v134 < v46)
        {
          v136 = v46;
        }

        else
        {
          v136 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * *v8.i32)) + v46;
        }

        v130 = v134 <= v48;
        v137 = (((_S1 * v127) + (*_Q0.i32 * v126)) + (_S2 * v128)) + v46;
        if (!v130)
        {
          v136 = v48;
        }

        v138 = llroundf(v136);
        if (v137 < v46)
        {
          v139 = v46;
        }

        else
        {
          v139 = (((_S1 * v127) + (*_Q0.i32 * v126)) + (_S2 * v128)) + v46;
        }

        if (v137 <= v48)
        {
          v140 = v139;
        }

        else
        {
          v140 = v48;
        }

        v141 = llroundf(v140);
        v142 = ((v119 + v121) + v124) + v126;
        *v9.i32 = ((*v9.i32 + v122) + v125) + v127;
        v69->i8[0] = v132;
        v69->i8[1] = v135;
        v82->i8[0] = v138;
        v82->i8[1] = v141;
        v143 = ((v120 + v123) + *v8.i32) + v128;
        v144 = ((v47 + (v142 * *&v76)) + (*v9.i32 * v171)) + (v143 * v170);
        *v8.i32 = v49;
        if (v144 <= v49)
        {
          *v8.i32 = ((v47 + (v142 * *&v76)) + (*v9.i32 * v171)) + (v143 * v170);
          if (v144 < v172)
          {
            *v8.i32 = v172;
          }
        }

        *v77.i32 = ((v47 + (v142 * *(&v76 + 1))) + (*v9.i32 * v5.f32[1])) + (v143 * v61.f32[1]);
        *v106 = llroundf(*v8.i32);
        v7 = v49;
        if (*v77.i32 <= v49)
        {
          v7 = *v77.i32;
          if (*v77.i32 < v172)
          {
            v7 = v172;
          }
        }

        v107 += 2;
        v105 += 2;
        v72 = (v72 + 2);
        v81 = (v81 + 2);
        v106[1] = llroundf(v7);
        v69 = (v69 + 2);
        v82 = (v82 + 2);
        v106 += 2;
      }

      v72 = &v78[v27];
      v71 += v28;
      v69 = &v79[v29];
      v68 += v30;
      v25 += 2;
    }

    while (v25 < v17);
  }

  if (v158 && v157)
  {
    if (v17 >= 1)
    {
      v145 = 0;
      v146 = (v158 + v22 * v155 + v156);
      do
      {
        result = memcpy(v24, v146, v14);
        v146 += v22;
        v24 += v23;
        ++v145;
      }

      while (v17 > v145);
    }
  }

  else if (v157 && v17 >= 1)
  {
    v147 = 0;
    v148 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v149 = 0;
        do
        {
          v150 = vdupq_n_s64(v149);
          v151 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v151, *v148.i8), *v148.i8).u8[0])
          {
            v24[v149] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v151, *&v148), *&v148).i8[1])
          {
            v24[v149 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDDA0)))), *&v148).i8[2])
          {
            v24[v149 + 2] = -1;
            v24[v149 + 3] = -1;
          }

          v152 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v148, vuzp1_s16(v152, *&v148)).i32[1])
          {
            v24[v149 + 4] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(v152, *&v148)).i8[5])
          {
            v24[v149 + 5] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD80))))).i8[6])
          {
            v24[v149 + 6] = -1;
            v24[v149 + 7] = -1;
          }

          v153 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v153, *v148.i8), *v148.i8).u8[0])
          {
            v24[v149 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v153, *&v148), *&v148).i8[1])
          {
            v24[v149 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD60)))), *&v148).i8[2])
          {
            v24[v149 + 10] = -1;
            v24[v149 + 11] = -1;
          }

          v154 = vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v148, vuzp1_s16(v154, *&v148)).i32[1])
          {
            v24[v149 + 12] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(v154, *&v148)).i8[5])
          {
            v24[v149 + 13] = -1;
          }

          if (vuzp1_s8(*&v148, vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v148, vorrq_s8(v150, xmmword_18FECDD40))))).i8[6])
          {
            v24[v149 + 14] = -1;
            v24[v149 + 15] = -1;
          }

          v149 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v149);
      }

      v24 += v23;
      ++v147;
    }

    while (v17 > v147);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_420vf(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v68 = a2[2];
  v69 = v17;
  v18 = a6[1];
  v70 = *a6;
  v71 = v16;
  v66 = a6[2];
  v67 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_75:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v58 - v21);
    bzero(&v58 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v66, v67), v70), vceqq_s64(vaddq_s64(v68, v69), v71))));
  v25 = v67.i64[0];
  v26 = v69.i64[0];
  if (v66.i8[0])
  {
    v26 = v69.i64[0] - 1;
    v27 = v68.i64[0] + 1;
  }

  else
  {
    v27 = v68.i64[0];
  }

  if (v66.i8[0])
  {
    v25 = v67.i64[0] - 1;
    v28 = v66.i64[0] + 1;
  }

  else
  {
    v28 = v66.i64[0];
  }

  v29 = v70.i64[0];
  v30 = v71.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v34 = a8[2], v33 > v34) && v34)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v70.i64[0] + 1;
      v30 = v71.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v35 = v67.i64[1];
  v36 = v69.i64[1];
  if (v66.i8[8])
  {
    v36 = v69.i64[1] - 1;
    v37 = v68.i64[1] + 1;
  }

  else
  {
    v37 = v68.i64[1];
  }

  if (v66.i8[8])
  {
    v35 = v67.i64[1] - 1;
    v38 = v66.i64[1] + 1;
  }

  else
  {
    v38 = v66.i64[1];
  }

  v39 = v70.i64[1];
  v40 = v71.i64[1];
  v65 = a1;
  if (v35)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v41 = v36 + 1 + v37, *a4 * v41 > *a5) || a4[1] * (v41 / 2) > a5[1] || a4[2] * v41 > a5[2] || (v42 = v35 + 1 + v38, *a8 * v42 > *a9) || a8[1] * (v42 / 2) > a9[1] || a8[2] * v42 > a9[2])
    {
      --v35;
      --v36;
    }

    else
    {
      v39 = v70.i64[1] + 1;
      v40 = v71.i64[1] + 1;
      ++v36;
      ++v35;
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

  if (v36 + v37 > v40)
  {
    v36 = v40 - v37;
  }

  if (v35 + v38 > v39)
  {
    v35 = v39 - v38;
  }

  if (v26 >= v25)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  if (v36 >= v35)
  {
    v44 = v35;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 + v37 - 1;
  v46 = v43 + v27;
  v47 = v43 + v27 + v45 * *a4 > *a5;
  v63 = a9;
  v64 = a3;
  v61 = v28;
  v62 = v29;
  v59 = v30;
  v60 = v27;
  v69.i64[0] = v38;
  v68.i64[0] = v37;
  v71.i64[0] = v39;
  v70.i64[0] = v40;
  if (v47)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v44 + v37 + 1) / 2 - 1) > a5[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v46 + a4[2] * v45 > a5[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  v51 = v44 + v38 - 1;
  v52 = v43 + v28;
  if (v43 + v28 + *a8 * v51 > *a9)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v44 + v38 + 1) / 2 - 1) > a9[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
LABEL_68:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v50;
    a8 = v49;
    a5 = v48;
    v23 = v63;
    a3 = v64;
    v28 = v61;
    v29 = v62;
    v30 = v59;
    v27 = v60;
    v38 = v69.i64[0];
    v37 = v68.i64[0];
    v39 = v71.i64[0];
    v40 = v70.i64[0];
    if (v20)
    {
      goto LABEL_74;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v40;
  *(v19 + 20) = v43;
  *(v19 + 28) = v44;
  *(v19 + 36) = v27;
  *(v19 + 44) = v37;
  v19[11] = v39;
  v19[12] = v43;
  v19[13] = v44;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v38;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_420vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v54 = (v19 + 20);
  v55 = v15;
  while (1)
  {
    v56 = *v54++;
    v20 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v20 = 0;
      break;
    }
  }

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

char *vt_Copy_420vf_rgb_420vf_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v13 = *(a1 + 36);
  v14 = 2 * *a1;
  v15 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v14);
  v16 = a1[14];
  v18 = a1[12];
  v17 = a1[13];
  v19 = v17 * a2 / v14;
  v20 = a1[15] + 2 * v19;
  v21 = 2 * ((v17 + v17 * a2) / v14 - v19);
  v22 = a1[7];
  v23 = a1[8];
  result = a1[16];
  v25 = a1[17];
  v26 = v23[2];
  v27 = v22[2];
  v28 = v25[2];
  v29 = *(result + 2);
  v30 = (v29 + v28 * v20 + v16);
  if (v21 >= 1)
  {
    v31 = 0;
    v32 = a1[19];
    v33 = v18 & 0xFFFFFFFE;
    v34 = *v23;
    v35 = v23[1];
    v36 = *v25;
    v37 = v25[1];
    LOWORD(a5) = *(v32 + 140);
    LOWORD(a6) = *(v32 + 142);
    v38 = *(v32 + 136) / *(v32 + 128);
    v39 = LODWORD(a5);
    v40 = LODWORD(a6);
    v41 = v38 * *v32;
    v124 = v38 * *(v32 + 16);
    v125 = v38 * *(v32 + 8);
    v42 = *(v32 + 28);
    v122 = v38 * v42;
    v123 = v38 * *(v32 + 20);
    LOWORD(v42) = *(v32 + 144);
    v43 = LODWORD(v42);
    LOWORD(v7) = *(v32 + 146);
    v44 = v7;
    LOWORD(v8) = *(v32 + 148);
    v45 = v8;
    LOWORD(v9) = *(v32 + 150);
    v46 = v9;
    LOWORD(v10) = *(v32 + 152);
    v47 = v10;
    v48 = *(v32 + 36);
    v49 = *(v32 + 40);
    v50 = *(v32 + 44);
    v51 = *(v32 + 48) * 0.25;
    v52 = *(v32 + 52) * 0.25;
    v53 = *(v32 + 56) * 0.25;
    v54 = *(v32 + 60) * 0.25;
    v55 = *(v32 + 64) * 0.25;
    v56 = *(v32 + 68);
    v57 = v56 * 0.25;
    v58 = *(result + 1);
    result = (*result + v36 * v20 + v16);
    v59 = v58 + v37 * (v20 / 2);
    v60 = v22[1];
    v61 = (*v22 + v34 * v15 + v13);
    v62 = v59 + v16;
    v63 = v60 + v35 * (v15 / 2) + v13;
    do
    {
      v64 = &v61[v34];
      v65 = &result[v36];
      if (v33 >= 1)
      {
        v66 = 0;
        v67 = &v61[v34];
        v68 = &result[v36];
        do
        {
          LOBYTE(v56) = *(v63 + v66);
          *&v69 = LODWORD(v56) - v40;
          LOBYTE(v11) = *(v63 + v66 + 1);
          v70 = LODWORD(v11) - v40;
          v71 = v125 * v70;
          *&v72 = v123 * v70;
          v73 = *&v72 + (*&v69 * v124);
          v74 = v122 * *&v69;
          LOBYTE(v69) = *v61;
          v75 = v41 * (v69 - v39);
          LOBYTE(v72) = v61[1];
          v76 = v41 * (v72 - v39);
          LOBYTE(v6) = *v67;
          *&v77 = LODWORD(v6) - v39;
          v78 = v41 * *&v77;
          LOBYTE(v77) = v67[1];
          v79 = v41 * (v77 - v39);
          v80 = v71 + v75;
          v81 = v75 + v73;
          v82 = v74 + v75;
          v83 = v71 + v76;
          v84 = v73 + v76;
          v85 = v74 + v76;
          v86 = v71 + v78;
          v87 = v73 + v78;
          v88 = v74 + v78;
          v89 = v71 + v79;
          v90 = v73 + v79;
          v91 = v74 + v79;
          v92 = (((v49 * v81) + (v48 * v80)) + (v50 * v82)) + v43;
          if (v92 < v43)
          {
            v93 = v43;
          }

          else
          {
            v93 = (((v49 * v81) + (v48 * v80)) + (v50 * v82)) + v43;
          }

          v94 = v92 <= v45;
          v95 = (((v49 * v84) + (v48 * v83)) + (v50 * v85)) + v43;
          if (!v94)
          {
            v93 = v45;
          }

          v96 = llroundf(v93);
          if (v95 < v43)
          {
            v97 = v43;
          }

          else
          {
            v97 = (((v49 * v84) + (v48 * v83)) + (v50 * v85)) + v43;
          }

          v94 = v95 <= v45;
          v98 = (((v49 * v87) + (v48 * v86)) + (v50 * v88)) + v43;
          if (!v94)
          {
            v97 = v45;
          }

          v99 = llroundf(v97);
          if (v98 < v43)
          {
            v100 = v43;
          }

          else
          {
            v100 = (((v49 * v87) + (v48 * v86)) + (v50 * v88)) + v43;
          }

          v94 = v98 <= v45;
          v101 = (((v49 * v90) + (v48 * v89)) + (v50 * v91)) + v43;
          if (!v94)
          {
            v100 = v45;
          }

          v102 = llroundf(v100);
          if (v101 < v43)
          {
            v103 = v43;
          }

          else
          {
            v103 = (((v49 * v90) + (v48 * v89)) + (v50 * v91)) + v43;
          }

          if (v101 <= v45)
          {
            v104 = v103;
          }

          else
          {
            v104 = v45;
          }

          v105 = llroundf(v104);
          v106 = ((v80 + v83) + v86) + v89;
          v6 = ((v81 + v84) + v87) + v90;
          *result = v96;
          result[1] = v99;
          *v68 = v102;
          v68[1] = v105;
          v107 = (v44 + (v106 * v51)) + (v6 * v52);
          v108 = ((v82 + v85) + v88) + v91;
          v109 = v107 + (v108 * v53);
          v11 = v47;
          if (v109 <= v47)
          {
            v11 = v107 + (v108 * v53);
            if (v109 < v46)
            {
              v11 = v46;
            }
          }

          v110 = ((v44 + (v106 * v54)) + (v6 * v55)) + (v108 * v57);
          *(v62 + v66) = llroundf(v11);
          v56 = v47;
          if (v110 <= v47)
          {
            v56 = v110;
            if (v110 < v46)
            {
              v56 = v46;
            }
          }

          v61 += 2;
          v67 += 2;
          result += 2;
          v68 += 2;
          *(v62 + v66 + 1) = llroundf(v56);
          v66 += 2;
        }

        while (v66 < v33);
      }

      v61 = &v64[v34];
      v63 += v35;
      result = &v65[v36];
      v62 += v37;
      v31 += 2;
    }

    while (v31 < v21);
  }

  if (v27 && v29)
  {
    if (v21 >= 1)
    {
      v111 = 0;
      v112 = (v27 + v26 * v15 + v13);
      do
      {
        result = memcpy(v30, v112, v18);
        v112 += v26;
        v30 += v28;
        ++v111;
      }

      while (v21 > v111);
    }
  }

  else if (v29 && v21 >= 1)
  {
    v113 = 0;
    v114 = vdupq_n_s64(v18 - 1);
    do
    {
      if (v18 >= 1)
      {
        v115 = 0;
        do
        {
          v116 = vdupq_n_s64(v115);
          v117 = vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v117, *v114.i8), *v114.i8).u8[0])
          {
            v30[v115] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v117, *&v114), *&v114).i8[1])
          {
            v30[v115 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v114, vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDDA0)))), *&v114).i8[2])
          {
            v30[v115 + 2] = -1;
            v30[v115 + 3] = -1;
          }

          v118 = vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v114, vuzp1_s16(v118, *&v114)).i32[1])
          {
            v30[v115 + 4] = -1;
          }

          if (vuzp1_s8(*&v114, vuzp1_s16(v118, *&v114)).i8[5])
          {
            v30[v115 + 5] = -1;
          }

          if (vuzp1_s8(*&v114, vuzp1_s16(*&v114, vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDD80))))).i8[6])
          {
            v30[v115 + 6] = -1;
            v30[v115 + 7] = -1;
          }

          v119 = vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v119, *v114.i8), *v114.i8).u8[0])
          {
            v30[v115 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v119, *&v114), *&v114).i8[1])
          {
            v30[v115 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v114, vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDD60)))), *&v114).i8[2])
          {
            v30[v115 + 10] = -1;
            v30[v115 + 11] = -1;
          }

          v120 = vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v114, vuzp1_s16(v120, *&v114)).i32[1])
          {
            v30[v115 + 12] = -1;
          }

          if (vuzp1_s8(*&v114, vuzp1_s16(v120, *&v114)).i8[5])
          {
            v30[v115 + 13] = -1;
          }

          if (vuzp1_s8(*&v114, vuzp1_s16(*&v114, vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_18FECDD40))))).i8[6])
          {
            v30[v115 + 14] = -1;
            v30[v115 + 15] = -1;
          }

          v115 += 16;
        }

        while (((v18 + 15) & 0xFFFFFFFFFFFFFFF0) != v115);
      }

      v30 += v28;
      ++v113;
    }

    while (v21 > v113);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
LABEL_75:
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
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v34 = 2 * v33, 2 * v33 > *a8) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, (*a8 * v43) > *a9) || (a8[1] * (v43 / 2)) > a9[1] || (a8[2] * v43) > a9[2])
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
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v28;
  if ((*a8 * v52 + 2 * (v44 + v28)) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && a8[1] * ((v45 + v39 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_68:
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
      goto LABEL_74;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD);
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

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, double a8, float32x4_t a9)
{
  v338 = *(result + 36);
  v13 = 2 * *result;
  v337 = *(result + 44) + 2 * (*(result + 28) * a2 / v13);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v344 = result;
  v17 = v15 * a2 / v13;
  v18 = result[15] + 2 * v17;
  v19 = 2 * ((v15 + v15 * a2) / v13 - v17);
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v336 = v21[2];
  v340 = v20[2];
  v342 = v23[2];
  v339 = v22[2];
  v341 = v339 + v342 * v18 + 2 * v14;
  if (v19 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = *v21;
    v27 = v21[1];
    v29 = *v23;
    v28 = v23[1];
    v30 = v25[17].u16[2];
    v31 = v25[17].u16[3];
    v32.i32[0] = v25[3].i32[1];
    v33 = v25[18].u16[0];
    v34 = v25[18].u16[1];
    v35 = v25[18].u16[2];
    v36 = v25[18].u16[3];
    v37 = v25[19].u16[0];
    _S7 = v25[5].i32[0];
    _S29 = v25[5].f32[1];
    v39.i32[0] = v25[6].i32[0];
    v41 = 8191.0 / v25[16].u32[0];
    v42 = v30;
    v44.i32[0] = v25[6].i32[1];
    v43.i32[0] = v25[7].i32[0];
    v355 = v31;
    _S25 = v41 * v25->f32[0];
    v381 = v33;
    v46 = v34;
    v410 = v35;
    a7.f32[0] = v36;
    v416 = v36;
    v47 = v37;
    __asm { FCVT            H8, S25 }

    *a7.i16 = v30;
    v53 = &v25[2068] + 4;
    v54 = vdupq_lane_s16(*a7.f32, 0);
    *a7.i16 = -v31;
    v32.i32[1] = v25[1].i32[0];
    *v12.f32 = vmul_n_f32(v32, v41);
    v55 = &v25[20] + 4;
    v56 = &v25[4116] + 4;
    *v11.f32 = vmul_n_f32(v25[2], v41);
    v57 = vdupq_lane_s32(vcvt_f16_f32(v11), 0);
    v389 = vdupq_lane_s32(vcvt_f16_f32(v12), 0);
    v58 = vmulq_n_f16(v389, *a7.i16);
    v59 = vmulq_n_f16(v57, *a7.i16);
    v412 = v25[4].f32[1];
    __asm { FCVT            H11, S6 }

    v39.i32[1] = v25[7].i32[1];
    __asm { FMOV            V3.2S, #0.25 }

    *v10.f32 = vmul_f32(v39, _D3);
    v414 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    v44.i32[1] = v25[8].i32[0];
    *a9.f32 = vmul_f32(v44, _D3);
    v62 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    v43.i32[1] = v25[8].i32[1];
    *a7.f32 = vmul_f32(v43, _D3);
    v63 = vcvt_f16_f32(a7);
    v64 = vdupq_lane_s32(v63, 0);
    *v63.i16 = v33;
    v65 = vdupq_lane_s16(v63, 0);
    v401 = v65;
    v402 = v64;
    *v65.i16 = v34;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v35;
    v67 = vdupq_lane_s16(*v65.i8, 0);
    v399 = v67;
    v400 = v66;
    *v67.i16 = v36;
    _Q3 = vdupq_lane_s16(*v67.i8, 0);
    *v67.i16 = v37;
    _Q0 = vdupq_lane_s16(*v67.i8, 0);
    v397 = _Q0;
    v398 = _Q3;
    v70 = v25[16].u8[4];
    if (v70 >= 0x11)
    {
      v71 = 0;
    }

    else
    {
      v71 = 16 - v70;
    }

    v360 = v28;
    v72 = v22[1] + v28 * (v18 / 2) + 2 * v14;
    v73 = (*v22 + v29 * v18 + 2 * v14);
    v74 = (v20[1] + v27 * (v337 / 2) + v338);
    v75 = (*v20 + v26 * v337 + v338);
    v76 = v71;
    v77 = v16 & 0xFFFFFFFE;
    v347 = v16 & 0xFFFFFFF8;
    _Q3.i32[0] = v25[9].i32[1];
    _S22 = v25[10].u32[1];
    LODWORD(_Q12) = v25[11].i32[1];
    _S16 = v25[14].f32[0];
    v411 = v25[5].f32[0];
    __asm
    {
      FCVT            H7, S7
      FCVT            H5, S29
    }

    v382 = v25[13].f32[1];
    __asm { FCVT            H0, S0 }

    v377 = *_Q0.i16;
    v378 = _H5;
    _Q0.i32[0] = v25[15].i32[0];
    __asm { FCVT            H5, S16 }

    v375 = _H5;
    v83 = v58;
    v380 = v25[14].f32[1];
    __asm { FCVT            H1, S1 }

    v376 = *_Q0.i32;
    __asm { FCVT            H0, S0 }

    v373 = *_Q0.i16;
    v374 = _H1;
    v396 = v25[9].f32[0];
    __asm { FCVT            H0, S2 }

    v372 = *_Q0.i16;
    v395 = *_Q3.i32;
    __asm { FCVT            H0, S3 }

    v371 = _Q0;
    v394 = v25[10].f32[0];
    __asm { FCVT            H0, S21 }

    v370 = _H0;
    v392 = *&_S22;
    __asm { FCVT            H0, S22 }

    v369 = _H0;
    v390 = v25[11].f32[0];
    __asm { FCVT            H0, S9 }

    v368 = _H0;
    v388 = *&_Q12;
    __asm { FCVT            H12, S12 }

    v387 = v25[12].f32[0];
    __asm { FCVT            H2, S13 }

    v385 = v25[12].f32[1];
    __asm { FCVT            H3, S14 }

    v383 = v25[13].f32[0];
    __asm { FCVT            H13, S15 }

    v417 = vdupq_n_s16(v76);
    v90 = v12.i64[0];
    v91 = v11.i64[0];
    v92 = v414;
    v405 = a9.f32[0];
    v406 = v10.f32[0];
    v362 = a9.f32[1];
    v363 = v10.f32[1];
    v93.i32[0] = a7.i32[1];
    v403 = a7.f32[0];
    a7.f32[0] = v355;
    v361 = a7.f32[1];
    v353 = v19;
    v354 = v16;
    v413 = v16 - 7;
    v351 = v27;
    v352 = v26;
    v350 = v29;
    v348 = v76;
    v349 = v16 & 0xFFFFFFFE;
    v408 = v58;
    v409 = v54;
    v407 = _H11;
    v404 = v62;
    v393 = _H8;
    v391 = v57;
    v386 = v42;
    v384 = v47;
    v379 = _H7;
    v366 = _H2;
    v367 = _Q12;
    v364 = _H13;
    v365 = _Q3;
    v345 = _S25;
    v346 = v34;
    do
    {
      result = (v75 + v26);
      v94 = &v73->i8[v29];
      if (v16 < 8)
      {
        v199 = 0;
        v98 = v72;
        v97 = (v73 + v29);
        v198 = v74;
        v96 = (v75 + v26);
      }

      else
      {
        v359 = v24;
        v95 = 0;
        v356 = (v75 + v26);
        v357 = &v73->i8[v29];
        v96 = (v75 + v26);
        v97 = (v73 + v29);
        v358 = v72;
        v98 = v72;
        v99.i64[0] = 0x9000900090009000;
        v99.i64[1] = 0x9000900090009000;
        v415 = v74;
        do
        {
          v100 = *&v74[v95];
          *v101.i8 = vzip1_s8(v100, 0);
          v101.u64[1] = vzip2_s8(v100, 0);
          v102 = vcvtq_f16_u16(v101);
          v103 = vmlaq_f16(v83, v389, v102);
          v104 = vmlaq_f16(v59, v57, v102);
          v105 = vuzp1q_s16(v104, v102);
          v106 = *v75++;
          *v107.i8 = vzip1_s8(v106, 0);
          *v105.i8 = vadd_f16(*v105.i8, *&vuzp2q_s16(v104, v105));
          v107.u64[1] = vzip2_s8(v106, 0);
          v108 = vcvtq_f16_u16(v107);
          v109 = *v96++;
          v110 = vzip1q_s16(v105, v105);
          *v107.i8 = vzip1_s8(v109, 0);
          v107.u64[1] = vzip2_s8(v109, 0);
          v111 = vcvtq_f16_u16(v107);
          v112 = vtrn1q_s16(v103, v103);
          v113 = vsubq_f16(v108, v54);
          v114 = vsubq_f16(v111, v54);
          v115 = vtrn2q_s16(v103, v103);
          v116 = vmlaq_n_f16(v115, v114, _H8);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v115, v113, _H8), 0), v99));
          v118 = v117.u16[0];
          v119 = v117.u16[1];
          v120 = v117.u16[2];
          v121 = v117.u16[3];
          v122 = v117.u16[4];
          v123 = v117.u16[5];
          v124 = v117.u16[6];
          v125 = v117.u16[7];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v110, v113, _H8), 0), v99));
          v127.i16[0] = *&v55[2 * v118];
          v128 = &v55[2 * v119];
          v129 = &v55[2 * v123];
          v130 = &v55[2 * v124];
          v127.i16[1] = *v128;
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v113, _H8), 0), v99));
          v127.i16[2] = *&v55[2 * v120];
          v132.i16[0] = *&v55[2 * v131.u16[0]];
          v133.i16[0] = *&v55[2 * v126.u16[0]];
          v134 = &v55[2 * v125];
          v135 = &v55[2 * v131.u16[2]];
          v136 = &v55[2 * v131.u16[3]];
          v137 = &v55[2 * v131.u16[4]];
          v138 = v131.u16[6];
          v139 = &v55[2 * v131.u16[5]];
          v140 = v131.u16[7];
          v132.i16[1] = *&v55[2 * v131.u16[1]];
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v99));
          v116.i16[0] = *&v55[2 * v141.u16[0]];
          v116.i16[1] = *&v55[2 * v141.u16[1]];
          v132.i16[2] = *v135;
          v127.i16[3] = *&v55[2 * v121];
          v116.i16[2] = *&v55[2 * v141.u16[2]];
          v133.i16[1] = *&v55[2 * v126.u16[1]];
          v142 = &v55[2 * v141.u16[5]];
          v143 = &v55[2 * v141.u16[6]];
          v132.i16[3] = *v136;
          v116.i16[3] = *&v55[2 * v141.u16[3]];
          v127.i16[4] = *&v55[2 * v122];
          v144 = &v55[2 * v141.u16[7]];
          v116.i16[4] = *&v55[2 * v141.u16[4]];
          v133.i16[2] = *&v55[2 * v126.u16[2]];
          v145 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v110, v114, _H8), 0), v99));
          v132.i16[4] = *v137;
          v110.i16[0] = *&v55[2 * v145.u16[0]];
          v116.i16[5] = *v142;
          v127.i16[5] = *v129;
          v133.i16[3] = *&v55[2 * v126.u16[3]];
          v132.i16[5] = *v139;
          v146 = &v55[2 * v145.u16[5]];
          v147 = &v55[2 * v145.u16[6]];
          v116.i16[6] = *v143;
          v110.i16[1] = *&v55[2 * v145.u16[1]];
          v127.i16[6] = *v130;
          v110.i16[2] = *&v55[2 * v145.u16[2]];
          v110.i16[3] = *&v55[2 * v145.u16[3]];
          v133.i16[4] = *&v55[2 * v126.u16[4]];
          v148 = &v55[2 * v145.u16[7]];
          v110.i16[4] = *&v55[2 * v145.u16[4]];
          v132.i16[6] = *&v55[2 * v138];
          v149 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v114, _H8), 0), v99));
          v116.i16[7] = *v144;
          v112.i16[0] = *&v55[2 * v149.u16[0]];
          v110.i16[5] = *v146;
          v127.i16[7] = *v134;
          v133.i16[5] = *&v55[2 * v126.u16[5]];
          v132.i16[7] = *&v55[2 * v140];
          v133.i16[6] = *&v55[2 * v126.u16[6]];
          v112.i16[1] = *&v55[2 * v149.u16[1]];
          v133.i16[7] = *&v55[2 * v126.u16[7]];
          v112.i16[2] = *&v55[2 * v149.u16[2]];
          v112.i16[3] = *&v55[2 * v149.u16[3]];
          v110.i16[6] = *v147;
          v112.i16[4] = *&v55[2 * v149.u16[4]];
          v112.i16[5] = *&v55[2 * v149.u16[5]];
          v110.i16[7] = *v148;
          v112.i16[6] = *&v55[2 * v149.u16[6]];
          v112.i16[7] = *&v55[2 * v149.u16[7]];
          v150 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v127, v377), v133, v375), v132, v374), vmaxq_f16(vmaxq_f16(v127, v133), v132), v373), 0), v99));
          v149.i16[0] = *&v53[2 * v150.u16[0]];
          LOWORD(v147) = v150.i16[5];
          v151 = &v53[2 * v150.u16[1]];
          v152 = &v53[2 * v150.u16[2]];
          LOWORD(v136) = v150.i16[6];
          LOWORD(v129) = v150.i16[7];
          v153 = &v53[2 * v150.u16[3]];
          v154 = &v53[2 * v150.u16[4]];
          v155 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v377), v110, v375), v112, v374), vmaxq_f16(vmaxq_f16(v116, v110), v112), v373), 0), v99));
          v126.i16[0] = *&v53[2 * v155.u16[0]];
          v149.i16[1] = *v151;
          v149.i16[2] = *v152;
          v149.i16[3] = *v153;
          v149.i16[4] = *v154;
          v149.i16[5] = *&v53[2 * v147];
          v149.i16[6] = *&v53[2 * v136];
          v126.i16[1] = *&v53[2 * v155.u16[1]];
          v126.i16[2] = *&v53[2 * v155.u16[2]];
          v149.i16[7] = *&v53[2 * v129];
          v126.i16[3] = *&v53[2 * v155.u16[3]];
          v126.i16[4] = *&v53[2 * v155.u16[4]];
          v156 = vmulq_f16(v127, v149);
          v126.i16[5] = *&v53[2 * v155.u16[5]];
          v126.i16[6] = *&v53[2 * v155.u16[6]];
          v157 = vmulq_f16(v133, v149);
          v126.i16[7] = *&v53[2 * v155.u16[7]];
          v158 = vmulq_f16(v116, v126);
          v159 = vmulq_f16(v110, v126);
          v160 = vmulq_f16(v112, v126);
          v161 = vmulq_f16(v132, v149);
          v133.i16[7] = v371.i16[7];
          v162 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v156, v372), v157, *v371.i16), v161, v370);
          v132.i16[7] = HIWORD(v367);
          v163 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v156, v369), v157, v368), v161, *&v367);
          v127.i16[7] = v365.i16[7];
          v164 = v92;
          v165 = v62;
          v166 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v158, v372), v159, *v371.i16), v160, v370);
          v167 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v161, v364), v157, *v365.i16), v156, v366);
          v168 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v158, v369), v159, v368), v160, *&v367);
          v169 = vmlaq_n_f16(vmulq_n_f16(v160, v364), v159, *v365.i16);
          v170 = vmaxq_f16(v162, 0);
          _S22 = v399.u32[0];
          v171 = vcvtq_u16_f16(vminq_f16(v170, v99));
          v127.i16[0] = *&v56[2 * v171.u16[0]];
          v172 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v163, 0), v99));
          v132.i16[0] = *&v56[2 * v172.u16[0]];
          v173 = &v56[2 * v172.u16[1]];
          v174 = &v56[2 * v172.u16[2]];
          v175 = &v56[2 * v172.u16[3]];
          v176 = &v56[2 * v172.u16[4]];
          LOWORD(v154) = v172.i16[6];
          LOWORD(v151) = v172.i16[7];
          v177 = &v56[2 * v172.u16[5]];
          v178 = vmaxq_f16(v167, 0);
          v62 = v165;
          v92 = v164;
          v179 = vcvtq_u16_f16(vminq_f16(v178, v99));
          v180 = &v56[2 * v154];
          v181 = &v56[2 * v151];
          v133.i16[0] = *&v56[2 * v179.u16[0]];
          v182 = &v56[2 * v179.u16[4]];
          v127.i16[1] = *&v56[2 * v171.u16[1]];
          v183 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v166, 0), v99));
          v132.i16[1] = *v173;
          v166.i16[0] = *&v56[2 * v183.u16[0]];
          v133.i16[1] = *&v56[2 * v179.u16[1]];
          v184 = &v56[2 * v179.u16[5]];
          v127.i16[2] = *&v56[2 * v171.u16[2]];
          v166.i16[1] = *&v56[2 * v183.u16[1]];
          v132.i16[2] = *v174;
          v185 = &v56[2 * v179.u16[6]];
          v133.i16[2] = *&v56[2 * v179.u16[2]];
          v166.i16[2] = *&v56[2 * v183.u16[2]];
          v127.i16[3] = *&v56[2 * v171.u16[3]];
          v186 = &v56[2 * v179.u16[7]];
          v132.i16[3] = *v175;
          v166.i16[3] = *&v56[2 * v183.u16[3]];
          v133.i16[3] = *&v56[2 * v179.u16[3]];
          v166.i16[4] = *&v56[2 * v183.u16[4]];
          v187 = vminq_f16(vmaxq_f16(v168, 0), v99);
          v188 = vcvtq_u16_f16(v187);
          v127.i16[4] = *&v56[2 * v171.u16[4]];
          v187.i16[0] = *&v56[2 * v188.u16[0]];
          v132.i16[4] = *v176;
          v133.i16[4] = *v182;
          v187.i16[1] = *&v56[2 * v188.u16[1]];
          v166.i16[5] = *&v56[2 * v183.u16[5]];
          v127.i16[5] = *&v56[2 * v171.u16[5]];
          v187.i16[2] = *&v56[2 * v188.u16[2]];
          v132.i16[5] = *v177;
          v133.i16[5] = *v184;
          v187.i16[3] = *&v56[2 * v188.u16[3]];
          v166.i16[6] = *&v56[2 * v183.u16[6]];
          v187.i16[4] = *&v56[2 * v188.u16[4]];
          v74 = v415;
          v127.i16[6] = *&v56[2 * v171.u16[6]];
          v187.i16[5] = *&v56[2 * v188.u16[5]];
          v132.i16[6] = *v180;
          v187.i16[6] = *&v56[2 * v188.u16[6]];
          LOWORD(v151) = v188.i16[7];
          v133.i16[6] = *v185;
          v189 = &v56[2 * v183.u16[7]];
          v190 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v169, v158, v366), 0), v99));
          v191 = vuzp1q_s16(v166, v187);
          v171.i16[0] = *&v56[2 * v190.u16[0]];
          v166.i16[7] = *v189;
          v192 = vuzp1q_s16(v127, v132);
          v127.i16[7] = *&v56[2 * v171.u16[7]];
          v171.i16[1] = *&v56[2 * v190.u16[1]];
          v171.i16[2] = *&v56[2 * v190.u16[2]];
          v132.i16[7] = *v181;
          v171.i16[3] = *&v56[2 * v190.u16[3]];
          v171.i16[4] = *&v56[2 * v190.u16[4]];
          v187.i16[7] = *&v56[2 * v151];
          v193 = vmlaq_n_f16(vmlaq_n_f16(v401, v166, _H11), v187, _H7);
          v194 = vuzp2q_s16(v166, v187);
          v195 = v133;
          v171.i16[5] = *&v56[2 * v190.u16[5]];
          v171.i16[6] = *&v56[2 * v190.u16[6]];
          v195.i16[7] = *v186;
          v196 = v171;
          v196.i16[7] = *&v56[2 * v190.u16[7]];
          *v73++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v401, v127, _H11), v132, _H7), v195, v378), v401), v399)), v417);
          v197 = vaddq_f16(vaddq_f16(vaddq_f16(v192, vuzp2q_s16(v127, v132)), v191), v194);
          *v97++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v193, v196, v378), v401), v399)), v417);
          v93 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v400, v164, vzip1q_s16(v197, v197)), v62, vzip2q_s16(v197, v197)), v402, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v133, v133), vtrn2q_s16(v195, v195)), vtrn1q_s16(v171, v171)), vtrn2q_s16(v196, v196))), v398), v397)), v417);
          *v98++ = v93;
          v95 += 8;
        }

        while (v95 < v413);
        v198 = &v415[v95];
        v199 = v347;
        LOBYTE(v76) = v348;
        v19 = v353;
        v16 = v354;
        v24 = v359;
        v27 = v351;
        v26 = v352;
        v29 = v350;
        v77 = v349;
        v94 = v357;
        v72 = v358;
        result = v356;
        _S25 = v345;
        v46 = v346;
        a7.f32[0] = v355;
      }

      for (; v199 < v77; _H7 = v379)
      {
        v93.i8[0] = v198[1];
        v200 = v93.u32[0] - a7.f32[0];
        v201 = HIDWORD(v90);
        v202 = *(&v90 + 1) * v200;
        LOBYTE(v201) = v75->i8[0];
        v203 = _S25 * (v201 - v42);
        v204 = (*(&v90 + 1) * v200) + v203;
        v205 = 8191.0;
        if (v204 <= 8191.0)
        {
          v205 = (*(&v90 + 1) * v200) + v203;
          if (v204 < 0.0)
          {
            v205 = 0.0;
          }
        }

        LOBYTE(v204) = *v198;
        v206 = a7.i32[0];
        v207 = LODWORD(v204) - a7.f32[0];
        v208 = (*(&v91 + 1) * v200) + (v207 * *&v91);
        v209 = 8191.0;
        if ((v203 + v208) <= 8191.0)
        {
          v209 = v203 + v208;
          if ((v203 + v208) < 0.0)
          {
            v209 = 0.0;
          }
        }

        v210 = *&v90 * v207;
        v211 = (*&v90 * v207) + v203;
        v212 = 8191.0;
        if (v211 <= 8191.0)
        {
          v212 = v211;
          if (v211 < 0.0)
          {
            v212 = 0.0;
          }
        }

        LOBYTE(v211) = v75->i8[1];
        v213 = _S25 * (LODWORD(v211) - v42);
        v214 = 8191.0;
        if ((v202 + v213) <= 8191.0)
        {
          v214 = v202 + v213;
          if ((v202 + v213) < 0.0)
          {
            v214 = 0.0;
          }
        }

        v215 = 8191.0;
        if ((v208 + v213) <= 8191.0)
        {
          v215 = v208 + v213;
          if ((v208 + v213) < 0.0)
          {
            v215 = 0.0;
          }
        }

        v216 = v210 + v213;
        v217 = 8191.0;
        if (v216 <= 8191.0)
        {
          v217 = v216;
          if (v216 < 0.0)
          {
            v217 = 0.0;
          }
        }

        LOBYTE(v216) = v96->i8[0];
        v218 = _S25 * (LODWORD(v216) - v42);
        v219 = 8191.0;
        if ((v202 + v218) <= 8191.0)
        {
          v219 = v202 + v218;
          if ((v202 + v218) < 0.0)
          {
            v219 = 0.0;
          }
        }

        v220 = 8191.0;
        if ((v208 + v218) <= 8191.0)
        {
          v220 = v208 + v218;
          if ((v208 + v218) < 0.0)
          {
            v220 = 0.0;
          }
        }

        v221 = v210 + v218;
        v222 = 8191.0;
        if (v221 <= 8191.0)
        {
          v222 = v221;
          if (v221 < 0.0)
          {
            v222 = 0.0;
          }
        }

        LOBYTE(_S22) = v96->i8[1];
        v223 = _S25 * (_S22 - v42);
        v224 = v202 + v223;
        v225 = (v202 + v223) <= 8191.0;
        v226 = 8191.0;
        if (v225)
        {
          v226 = v224;
          if (v224 < 0.0)
          {
            v226 = 0.0;
          }
        }

        v227 = v208 + v223;
        v225 = (v208 + v223) <= 8191.0;
        v228 = 8191.0;
        if (v225)
        {
          v228 = v227;
          if (v227 < 0.0)
          {
            v228 = 0.0;
          }
        }

        v229 = v210 + v223;
        v230 = 8191.0;
        if (v229 <= 8191.0)
        {
          v230 = v229;
          if (v229 < 0.0)
          {
            v230 = 0.0;
          }
        }

        _H0 = *&v55[2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v55[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H4 = *&v55[2 * llroundf(fminf(fmaxf(v212, 0.0), 8191.0))];
        __asm { FCVT            S20, H4 }

        _H14 = *&v55[2 * llroundf(fminf(fmaxf(v214, 0.0), 8191.0))];
        _H22 = *&v55[2 * llroundf(fminf(fmaxf(v215, 0.0), 8191.0))];
        _H23 = *&v55[2 * llroundf(fminf(fmaxf(v217, 0.0), 8191.0))];
        _H12 = *&v55[2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0))];
        _H19 = *&v55[2 * llroundf(fminf(fmaxf(v220, 0.0), 8191.0))];
        _H11 = *&v55[2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0))];
        _H2 = *&v55[2 * llroundf(fminf(fmaxf(v226, 0.0), 8191.0))];
        _H21 = *&v55[2 * llroundf(fminf(fmaxf(v228, 0.0), 8191.0))];
        _H6 = *&v55[2 * llroundf(fminf(fmaxf(v230, 0.0), 8191.0))];
        v246 = (((_S16 * _S1) + (v382 * _S0)) + (v380 * _S20)) + (v376 * fmaxf(_S0, fmaxf(_S1, _S20)));
        v247 = 8191.0;
        if (v246 <= 8191.0)
        {
          v247 = v246;
          if (v246 < 0.0)
          {
            v247 = 0.0;
          }
        }

        v248 = v46;
        v249 = _S25;
        __asm
        {
          FCVT            S13, H14
          FCVT            S14, H22
          FCVT            S15, H23
        }

        _H3 = *&v53[2 * llroundf(v247)];
        v254 = (((_S16 * _S14) + (v382 * _S13)) + (v380 * _S15)) + (v376 * fmaxf(_S13, fmaxf(_S14, _S15)));
        v255 = 8191.0;
        if (v254 <= 8191.0)
        {
          v255 = v254;
          if (v254 < 0.0)
          {
            v255 = 0.0;
          }
        }

        __asm
        {
          FCVT            S24, H12
          FCVT            S28, H19
          FCVT            S25, H11
        }

        _H19 = *&v53[2 * llroundf(v255)];
        v260 = (((_S16 * _S28) + (v382 * _S24)) + (v380 * _S25)) + (v376 * fmaxf(_S24, fmaxf(_S28, _S25)));
        v261 = 8191.0;
        if (v260 <= 8191.0)
        {
          v261 = v260;
          if (v260 < 0.0)
          {
            v261 = 0.0;
          }
        }

        __asm
        {
          FCVT            S23, H2
          FCVT            S11, H21
          FCVT            S12, H6
          FCVT            S2, H3
        }

        v266 = _S0 * _S2;
        v267 = _S1 * _S2;
        v268 = _S20 * _S2;
        __asm { FCVT            S0, H19 }

        v270 = _S13 * _S0;
        v271 = _S14 * _S0;
        v272 = _S15 * _S0;
        LOWORD(_S0) = *&v53[2 * llroundf(v261)];
        __asm { FCVT            S1, H0 }

        v274 = _S24 * _S1;
        v275 = _S28 * _S1;
        v276 = _S25 * _S1;
        v277 = (((_S16 * _S11) + (v382 * _S23)) + (v380 * _S12)) + (v376 * fmaxf(_S23, fmaxf(_S11, _S12)));
        v278 = 8191.0;
        if (v277 <= 8191.0)
        {
          v278 = v277;
          if (v277 < 0.0)
          {
            v278 = 0.0;
          }
        }

        _H4 = *&v53[2 * llroundf(v278)];
        __asm { FCVT            S4, H4 }

        v281 = _S23 * _S4;
        v282 = _S11 * _S4;
        _S4 = _S12 * _S4;
        v284 = ((v395 * v267) + (v266 * v396)) + (v268 * v394);
        v285 = ((v390 * v267) + (v266 * v392)) + (v268 * v388);
        _S20 = ((v385 * v267) + (v266 * v387)) + (v268 * v383);
        _S21 = ((v395 * v271) + (v270 * v396)) + (v272 * v394);
        v288 = ((v390 * v271) + (v270 * v392)) + (v272 * v388);
        _S6 = ((v385 * v271) + (v270 * v387)) + (v272 * v383);
        v290 = ((v395 * v275) + (v274 * v396)) + (v276 * v394);
        v291 = ((v390 * v275) + (v274 * v392)) + (v276 * v388);
        v292 = ((v385 * v275) + (v274 * v387)) + (v276 * v383);
        _H0 = *&v56[2 * llroundf(fminf(fmaxf(v284, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v56[2 * llroundf(fminf(fmaxf(v285, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v56[2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0))];
        _H3 = *&v56[2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0))];
        __asm
        {
          FCVT            S2, H2
          FCVT            S3, H3
        }

        _H19 = *&v56[2 * llroundf(fminf(fmaxf(v288, 0.0), 8191.0))];
        __asm { FCVT            S19, H19 }

        LOWORD(_S6) = *&v56[2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        LOWORD(_S20) = *&v56[2 * llroundf(fminf(fmaxf(v290, 0.0), 8191.0))];
        __asm { FCVT            S11, H20 }

        LOWORD(_S20) = *&v56[2 * llroundf(fminf(fmaxf(v291, 0.0), 8191.0))];
        __asm { FCVT            S12, H20 }

        LOWORD(_S20) = *&v56[2 * llroundf(fminf(fmaxf(v292, 0.0), 8191.0))];
        LOWORD(_S21) = *&v56[2 * llroundf(fminf(fmaxf(((v395 * v282) + (v281 * v396)) + (_S4 * v394), 0.0), 8191.0))];
        __asm
        {
          FCVT            S20, H20
          FCVT            S14, H21
        }

        LOWORD(_S21) = *&v56[2 * llroundf(fminf(fmaxf(((v390 * v282) + (v281 * v392)) + (_S4 * v388), 0.0), 8191.0))];
        __asm { FCVT            S15, H21 }

        LOWORD(_S4) = *&v56[2 * llroundf(fminf(fmaxf(((v385 * v282) + (v281 * v387)) + (_S4 * v383), 0.0), 8191.0))];
        __asm { FCVT            S13, H4 }

        *&_S22 = v412;
        v310 = (((v411 * _S1) + (v412 * _S0)) + (_S29 * _S2)) + v381;
        if (v310 < v381)
        {
          v311 = v381;
        }

        else
        {
          v311 = (((v411 * _S1) + (v412 * _S0)) + (_S29 * _S2)) + v381;
        }

        v225 = v310 <= v410;
        v312 = (((v411 * _S19) + (v412 * _S3)) + (_S29 * _S6)) + v381;
        if (!v225)
        {
          v311 = v410;
        }

        v313 = llroundf(v311);
        if (v312 < v381)
        {
          v314 = v381;
        }

        else
        {
          v314 = (((v411 * _S19) + (v412 * _S3)) + (_S29 * _S6)) + v381;
        }

        v225 = v312 <= v410;
        v315 = (((v411 * _S12) + (v412 * _S11)) + (_S29 * _S20)) + v381;
        if (!v225)
        {
          v314 = v410;
        }

        v316 = llroundf(v314);
        if (v315 < v381)
        {
          v317 = v381;
        }

        else
        {
          v317 = (((v411 * _S12) + (v412 * _S11)) + (_S29 * _S20)) + v381;
        }

        v225 = v315 <= v410;
        v318 = (((v411 * _S15) + (v412 * _S14)) + (_S29 * _S13)) + v381;
        if (!v225)
        {
          v317 = v410;
        }

        v319 = llroundf(v317);
        if (v318 < v381)
        {
          v320 = v381;
        }

        else
        {
          v320 = (((v411 * _S15) + (v412 * _S14)) + (_S29 * _S13)) + v381;
        }

        if (v318 <= v410)
        {
          v321 = v320;
        }

        else
        {
          v321 = v410;
        }

        v322 = ((_S0 + _S3) + _S11) + _S14;
        v323 = ((_S1 + _S19) + _S12) + _S15;
        v73->i16[0] = v313 << v76;
        v73->i16[1] = v316 << v76;
        v97->i16[0] = v319 << v76;
        v97->i16[1] = llroundf(v321) << v76;
        v46 = v248;
        v324 = ((_S2 + _S6) + _S20) + _S13;
        v325 = ((v248 + (v322 * v406)) + (v323 * v405)) + (v324 * v403);
        v326 = v384;
        if (v325 <= v384)
        {
          v326 = ((v248 + (v322 * v406)) + (v323 * v405)) + (v324 * v403);
          if (v325 < v416)
          {
            v326 = v416;
          }
        }

        *v93.i32 = ((v248 + (v322 * v363)) + (v323 * v362)) + (v324 * v361);
        v98->i16[0] = llroundf(v326) << v76;
        v327 = v384;
        v42 = v386;
        a7.i32[0] = v206;
        _S25 = v249;
        _H11 = v407;
        if (*v93.i32 <= v384)
        {
          v327 = *v93.i32;
          if (*v93.i32 < v416)
          {
            v327 = v416;
          }
        }

        v199 += 2;
        v198 += 2;
        v75 = (v75 + 2);
        v96 = (v96 + 2);
        v98->i16[1] = llroundf(v327) << v76;
        v73 = (v73 + 4);
        v97 = (v97 + 4);
        v98 = (v98 + 4);
        v83 = v408;
        v54 = v409;
        _H8 = v393;
        v57 = v391;
        v92 = v414;
        v62 = v404;
      }

      v75 = (result + v26);
      v74 += v27;
      v73 = &v94[v29];
      v72 += v360;
      v24 += 2;
    }

    while (v24 < v19);
  }

  if (v340 && v339)
  {
    v328 = v341;
    if (v19 >= 1)
    {
      v329 = 0;
      v330 = (v340 + v336 * v337 + v338);
      do
      {
        if (v16 >= 1)
        {
          v331 = v16;
          v332 = v328;
          v333 = v330;
          do
          {
            v334 = *v333++;
            *v332++ = v334 | (v334 << 8);
            --v331;
          }

          while (v331);
        }

        v330 += v336;
        v328 = (v328 + v342);
        ++v329;
      }

      while (v329 != v19);
    }
  }

  else
  {
    v335 = v341;
    if (v339 && v19 >= 1)
    {
      do
      {
        if (v16 >= 1)
        {
          result = memset(v335, 255, 2 * v16);
        }

        v335 += v342;
        --v19;
      }

      while (v19);
    }
  }

  *(v344 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
LABEL_75:
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
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v34 = 2 * v33, 2 * v33 > *a8) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, (*a8 * v43) > *a9) || (a8[1] * (v43 / 2)) > a9[1] || (a8[2] * v43) > a9[2])
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
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v28;
  if ((*a8 * v52 + 2 * (v44 + v28)) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && a8[1] * ((v45 + v39 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_68:
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
      goto LABEL_74;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420_GCD);
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

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = 2 * *a1;
  v203 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v10);
  v204 = *(a1 + 36);
  v11 = a1[14];
  v13 = a1[12];
  v12 = a1[13];
  v14 = v12 * a2 / v10;
  v15 = a1[15] + 2 * v14;
  v16 = 2 * ((v12 + v12 * a2) / v10 - v14);
  v17 = a1[7];
  v18 = a1[8];
  v20 = a1[16];
  result = a1[17];
  v21 = v18[2];
  v206 = v17[2];
  v22 = result[2];
  v205 = v20[2];
  v23 = (v205 + v22 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v24 = 0;
    v25 = a1[19];
    v26 = v13 & 0xFFFFFFFE;
    v27 = *v18;
    v28 = v18[1];
    v29 = *result;
    result = result[1];
    LOWORD(a5) = *(v25 + 140);
    LOWORD(a6) = *(v25 + 142);
    LOWORD(v6) = *(v25 + 144);
    LOWORD(v7) = *(v25 + 146);
    LOWORD(v8) = *(v25 + 148);
    v30 = 8191.0 / *(v25 + 128);
    v31 = LODWORD(a5);
    v32 = LODWORD(a6);
    v33 = v30 * *v25;
    v232 = v30 * *(v25 + 16);
    v233 = v30 * *(v25 + 8);
    v34 = v30 * *(v25 + 20);
    *&v35 = v30 * *(v25 + 28);
    v230 = *&v35;
    v231 = v34;
    v36 = v6;
    v37 = v7;
    v38 = v8;
    LOWORD(v35) = *(v25 + 150);
    *&v39 = v35;
    v236 = *&v39;
    LOWORD(v39) = *(v25 + 152);
    v40 = v39;
    v226 = *(v25 + 40);
    v227 = *(v25 + 36);
    v225 = *(v25 + 44);
    v223 = *(v25 + 52) * 0.25;
    v224 = *(v25 + 48) * 0.25;
    v221 = *(v25 + 60) * 0.25;
    v222 = *(v25 + 56) * 0.25;
    v219 = *(v25 + 72);
    v220 = *(v25 + 64) * 0.25;
    v217 = *(v25 + 76);
    v218 = *(v25 + 68) * 0.25;
    v215 = *(v25 + 84);
    v216 = *(v25 + 80);
    v213 = *(v25 + 92);
    v214 = *(v25 + 88);
    v41 = *(v25 + 104);
    v211 = *(v25 + 100);
    v212 = *(v25 + 96);
    v210 = v41;
    v42 = v25 + 164;
    v43 = v25 + 16548;
    v44 = v25 + 32932;
    v45 = *(v25 + 132);
    v46 = 16 - v45;
    _CF = v45 >= 0x11;
    v48 = v20[1];
    v49 = (*v20 + v29 * v15 + 2 * v11);
    v50 = v48 + result * (v15 / 2);
    v51 = v17[1];
    v52 = (*v17 + v27 * v203 + v204);
    if (_CF)
    {
      v53 = 0;
    }

    else
    {
      v53 = v46;
    }

    v54 = v50 + 2 * v11;
    v55 = v51 + v28 * (v203 / 2) + v204;
    v56 = v53;
    v57 = *(v25 + 108);
    v58 = *(v25 + 112);
    v59 = *(v25 + 116);
    v60 = *(v25 + 120);
    v234 = LODWORD(a6);
    v235 = v31;
    v228 = v40;
    v229 = v37;
    v208 = v58;
    v209 = v33;
    do
    {
      v61 = &v52[v27];
      v62 = &v49[v29];
      if (v26 >= 1)
      {
        v63 = 0;
        v64 = &v52[v27];
        v65 = &v49[v29];
        do
        {
          LOBYTE(v41) = *(v55 + v63 + 1);
          v66 = LODWORD(v41) - v32;
          v67 = LODWORD(v233);
          v68 = v233 * v66;
          LOBYTE(v67) = *v52;
          v69 = v33 * (v67 - v31);
          v70 = (v233 * v66) + v69;
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = (v233 * v66) + v69;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          LOBYTE(v70) = *(v55 + v63);
          v72 = LODWORD(v70) - v32;
          v73 = (v231 * v66) + (v72 * v232);
          v74 = 8191.0;
          if ((v69 + v73) <= 8191.0)
          {
            v74 = v69 + v73;
            if ((v69 + v73) < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v230 * v72;
          v76 = (v230 * v72) + v69;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOBYTE(v76) = v52[1];
          v78 = v33 * (LODWORD(v76) - v31);
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
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          LOBYTE(v81) = *v64;
          v83 = v33 * (LODWORD(v81) - v31);
          v84 = 8191.0;
          if ((v68 + v83) <= 8191.0)
          {
            v84 = v68 + v83;
            if ((v68 + v83) < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = 8191.0;
          if ((v73 + v83) <= 8191.0)
          {
            v85 = v73 + v83;
            if ((v73 + v83) < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v75 + v83;
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          LOBYTE(v40) = v64[1];
          v88 = v33 * (LODWORD(v40) - v31);
          v89 = v68 + v88;
          v90 = (v68 + v88) <= 8191.0;
          v91 = 8191.0;
          if (v90)
          {
            v91 = v89;
            if (v89 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v73 + v88;
          v90 = (v73 + v88) <= 8191.0;
          v93 = 8191.0;
          if (v90)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v75 + v88;
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H19 = *(v42 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v42 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          _H20 = *(v42 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          _H28 = *(v42 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H23 = *(v42 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          _H20 = *(v42 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          _H17 = *(v42 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          _H26 = *(v42 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H21 = *(v42 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H1 = *(v42 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H2 = *(v42 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H3 = *(v42 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v114 = (((v58 * _S24) + (v57 * _S19)) + (v59 * _S25)) + (v60 * fmaxf(_S19, fmaxf(_S24, _S25)));
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
            FCVT            S27, H28
            FCVT            S28, H23
            FCVT            S30, H20
          }

          _H22 = *(v43 + 2 * llroundf(v115));
          v120 = (((v58 * _S28) + (v57 * _S27)) + (v59 * _S30)) + (v60 * fmaxf(_S27, fmaxf(_S28, _S30)));
          v121 = 8191.0;
          if (v120 <= 8191.0)
          {
            v121 = v120;
            if (v120 < 0.0)
            {
              v121 = 0.0;
            }
          }

          __asm
          {
            FCVT            S8, H17
            FCVT            S9, H26
            FCVT            S10, H21
          }

          _H17 = *(v43 + 2 * llroundf(v121));
          v126 = fmaxf(_S8, fmaxf(_S9, _S10));
          v127 = (((v58 * _S9) + (v57 * _S8)) + (v59 * _S10)) + (v60 * v126);
          v128 = 8191.0;
          if (v127 <= 8191.0)
          {
            v128 = (((v58 * _S9) + (v57 * _S8)) + (v59 * _S10)) + (v60 * v126);
            if (v127 < 0.0)
            {
              v128 = 0.0;
            }
          }

          __asm
          {
            FCVT            S26, H1
            FCVT            S29, H2
            FCVT            S31, H3
            FCVT            S1, H22
          }

          v133 = _S19 * _S1;
          v134 = _S24 * _S1;
          v135 = _S25 * _S1;
          __asm { FCVT            S1, H17 }

          v137 = _S27 * _S1;
          v138 = _S28 * _S1;
          v139 = _S30 * _S1;
          LOWORD(_S1) = *(v43 + 2 * llroundf(v128));
          __asm { FCVT            S2, H1 }

          v141 = _S8 * _S2;
          v142 = _S9 * _S2;
          v143 = _S10 * _S2;
          v144 = (((v58 * _S29) + (v57 * _S26)) + (v59 * _S31)) + (v60 * fmaxf(_S26, fmaxf(_S29, _S31)));
          v145 = 8191.0;
          if (v144 <= 8191.0)
          {
            v145 = v144;
            if (v144 < 0.0)
            {
              v145 = 0.0;
            }
          }

          _H24 = *(v43 + 2 * llroundf(v145));
          __asm { FCVT            S24, H24 }

          v148 = _S26 * _S24;
          v149 = _S29 * _S24;
          v150 = _S31 * _S24;
          v151 = ((v217 * v134) + (v133 * v219)) + (v135 * v216);
          v152 = ((v214 * v134) + (v133 * v215)) + (v135 * v213);
          _S20 = ((v211 * v134) + (v133 * v212)) + (v135 * v210);
          _S22 = ((v217 * v138) + (v137 * v219)) + (v139 * v216);
          v155 = ((v214 * v138) + (v137 * v215)) + (v139 * v213);
          _S19 = ((v211 * v138) + (v137 * v212)) + (v139 * v210);
          v157 = ((v217 * v142) + (v141 * v219)) + (v143 * v216);
          v158 = ((v214 * v142) + (v141 * v215)) + (v143 * v213);
          v159 = ((v211 * v142) + (v141 * v212)) + (v143 * v210);
          v160 = ((v217 * v149) + (v148 * v219)) + (v150 * v216);
          v161 = ((v214 * v149) + (v148 * v215)) + (v150 * v213);
          v162 = ((v211 * v149) + (v148 * v212)) + (v150 * v210);
          _H1 = *(v44 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v44 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v44 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm
          {
            FCVT            S17, H3
            FCVT            S3, H20
          }

          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          LOWORD(_S19) = *(v44 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          __asm { FCVT            S26, H20 }

          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          LOWORD(_S22) = *(v44 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S28, H22
          }

          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          __asm { FCVT            S30, H20 }

          LOWORD(_S20) = *(v44 + 2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0)));
          __asm { FCVT            S27, H20 }

          v178 = (((v226 * _S2) + (v227 * _S1)) + (v225 * _S17)) + v36;
          if (v178 < v36)
          {
            v179 = v36;
          }

          else
          {
            v179 = (((v226 * _S2) + (v227 * _S1)) + (v225 * _S17)) + v36;
          }

          v90 = v178 <= v38;
          v180 = (((v226 * _S24) + (v227 * _S3)) + (v225 * _S19)) + v36;
          if (!v90)
          {
            v179 = v38;
          }

          v181 = llroundf(v179);
          if (v180 < v36)
          {
            v182 = v36;
          }

          else
          {
            v182 = (((v226 * _S24) + (v227 * _S3)) + (v225 * _S19)) + v36;
          }

          v90 = v180 <= v38;
          v183 = (((v226 * _S26) + (v227 * _S25)) + (v225 * _S21)) + v36;
          if (!v90)
          {
            v182 = v38;
          }

          v184 = llroundf(v182);
          if (v183 < v36)
          {
            v185 = v36;
          }

          else
          {
            v185 = (((v226 * _S26) + (v227 * _S25)) + (v225 * _S21)) + v36;
          }

          v90 = v183 <= v38;
          v186 = (((v226 * _S30) + (v227 * _S28)) + (v225 * _S27)) + v36;
          if (!v90)
          {
            v185 = v38;
          }

          v187 = llroundf(v185);
          if (v186 < v36)
          {
            v188 = v36;
          }

          else
          {
            v188 = (((v226 * _S30) + (v227 * _S28)) + (v225 * _S27)) + v36;
          }

          if (v186 <= v38)
          {
            v189 = v188;
          }

          else
          {
            v189 = v38;
          }

          v190 = ((_S1 + _S3) + _S25) + _S28;
          v191 = ((_S2 + _S24) + _S26) + _S30;
          *v49 = v181 << v56;
          *(v49 + 1) = v184 << v56;
          *v65 = v187 << v56;
          *(v65 + 1) = llroundf(v189) << v56;
          v40 = v228;
          v192 = ((_S17 + _S19) + _S21) + _S27;
          v193 = ((v229 + (v190 * v224)) + (v191 * v223)) + (v192 * v222);
          v194 = v228;
          if (v193 <= v228)
          {
            v194 = ((v229 + (v190 * v224)) + (v191 * v223)) + (v192 * v222);
            if (v193 < v236)
            {
              v194 = v236;
            }
          }

          v195 = (v54 + 2 * v63);
          v196 = ((v229 + (v190 * v221)) + (v191 * v220)) + (v192 * v218);
          *v195 = llroundf(v194) << v56;
          v41 = v228;
          v32 = v234;
          v31 = v235;
          v33 = v209;
          if (v196 <= v228)
          {
            v41 = v196;
            if (v196 < v236)
            {
              v41 = v236;
            }
          }

          v52 += 2;
          v64 += 2;
          v49 += 4;
          v65 += 4;
          v195[1] = llroundf(v41) << v56;
          v63 += 2;
          v58 = v208;
        }

        while (v63 < v26);
      }

      v52 = &v61[v27];
      v55 += v28;
      v49 = &v62[v29];
      v54 += result;
      v24 += 2;
    }

    while (v24 < v16);
  }

  if (v206 && v205)
  {
    if (v16 >= 1)
    {
      v197 = 0;
      v198 = (v206 + v21 * v203 + v204);
      do
      {
        if (v13 >= 1)
        {
          v199 = v13;
          v200 = v23;
          v201 = v198;
          do
          {
            v202 = *v201++;
            *v200++ = v202 | (v202 << 8);
            --v199;
          }

          while (v199);
        }

        v198 += v21;
        v23 += v22;
        ++v197;
      }

      while (v197 != v16);
    }
  }

  else if (v205 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v23, 255, 2 * v13);
      }

      v23 += v22;
      --v16;
    }

    while (v16);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_xf420_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
LABEL_75:
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
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v34 = 2 * v33, 2 * v33 > *a8) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, (*a8 * v43) > *a9) || (a8[1] * (v43 / 2)) > a9[1] || (a8[2] * v43) > a9[2])
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
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v28;
  if ((*a8 * v52 + 2 * (v44 + v28)) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && a8[1] * ((v45 + v39 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_68:
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
      goto LABEL_74;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_xf420_neon_fp16_GCD);
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

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

void *vt_Copy_420vf_TRC_Mat_TRC_xf420_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, __n128 _Q4, float32x4_t a8, float32x4_t a9)
{
  v11 = 2 * *result;
  v299 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v300 = *(result + 36);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v306 = result;
  v15 = v13 * a2 / v11;
  v16 = result[15] + 2 * v15;
  v17 = 2 * ((v13 + v13 * a2) / v11 - v15);
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v298 = *(v19 + 16);
  v302 = v18[2];
  v304 = v21[2];
  v301 = v20[2];
  v303 = v301 + v304 * v16 + 2 * v12;
  if (v17 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    result = *v19;
    v24 = *(v19 + 8);
    v25 = *v21;
    v26 = v21[1];
    v27 = v23[17].u16[2];
    v28 = v23[17].u16[3];
    v29.i32[0] = v23[3].i32[1];
    v30 = v23[18].u16[0];
    v31 = v23[18].u16[1];
    v32 = v23[18].u16[2];
    v33 = v23[18].u16[3];
    v34 = v23[19].u16[0];
    _S7 = v23[4].i32[1];
    _S22 = v23[5].i32[0];
    v37 = 8191.0 / v23[16].u32[0];
    _S19 = v23[5].i32[1];
    v38.i32[0] = v23[6].i32[0];
    v40 = v27;
    _S10 = v37 * v23->f32[0];
    *a8.i16 = v27;
    a9.i32[0] = v23[6].i32[1];
    v42.i32[0] = v23[7].i32[0];
    v43 = vdupq_lane_s16(*a8.f32, 0);
    v29.i32[1] = v23[1].i32[0];
    *v9.f32 = vmul_n_f32(v29, v37);
    v44 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    *v10.f32 = vmul_n_f32(v23[2], v37);
    v45 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    _S8 = v23[9].i32[0];
    _S23 = v23[9].i32[1];
    _S31 = v23[10].i32[0];
    _S29 = v23[10].i32[1];
    _S30 = v23[11].i32[0];
    v362 = v23[11].f32[1];
    *&v37 = -v28;
    _Q3 = vmulq_n_f16(v44, *&v37);
    v363 = _Q3;
    v38.i32[1] = v23[7].i32[1];
    __asm { FMOV            V3.2S, #0.25 }

    *a8.f32 = vmul_f32(v38, *_Q3.f32);
    v55 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    a9.i32[1] = v23[8].i32[0];
    *a9.f32 = vmul_f32(*a9.f32, *_Q3.f32);
    _Q4.n128_u64[0] = vcvt_f16_f32(a9);
    v56 = vdupq_lane_s32(_Q4.n128_u64[0], 0);
    v42.i32[1] = v23[8].i32[1];
    _Q4.n128_u32[0] = v23[12].u32[0];
    _S11 = v23[12].i32[1];
    v58 = &v23[20] + 4;
    v59 = &v23[2068] + 4;
    *_Q3.f32 = vmul_f32(v42, *_Q3.f32);
    v61 = vcvt_f16_f32(_Q3);
    v62 = vdupq_lane_s32(v61, 0);
    *v61.i16 = v30;
    v63 = vdupq_lane_s16(v61, 0);
    v343 = v63;
    *v63.i16 = v31;
    v64 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v32;
    v65 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v33;
    v66 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v34;
    v339 = vdupq_lane_s16(*v63.i8, 0);
    _Q1 = vmulq_n_f16(v45, *&v37);
    v68 = v23[16].u8[4];
    if (v68 >= 0x11)
    {
      v69 = 0;
    }

    else
    {
      v69 = 16 - v68;
    }

    v70 = v20[1] + v26 * (v16 / 2) + 2 * v12;
    v71 = (*v20 + v25 * v16 + 2 * v12);
    v72 = (v18[1] + v24 * (v299 / 2) + v300);
    v73 = (*v18 + result * v299 + v300);
    v74 = v69;
    v75 = v14 & 0xFFFFFFFE;
    v309 = v14 & 0xFFFFFFF8;
    v76 = v30;
    v368 = v31;
    v369 = v28;
    v337 = v32;
    v365 = v33;
    v367 = v34;
    __asm { FCVT            H9, S10 }

    v336 = _H9;
    v359 = v23[5].f32[0];
    v360 = v23[4].f32[1];
    __asm
    {
      FCVT            H9, S7
      FCVT            H7, S22
    }

    v334 = _H7;
    v358 = v23[5].f32[1];
    __asm { FCVT            H7, S19 }

    v81 = v363;
    v366 = _H7;
    _Q0 = v62;
    v355 = v23[9].f32[0];
    __asm { FCVT            H7, S8 }

    v354 = v23[9].f32[1];
    __asm { FCVT            H12, S23 }

    v353 = v23[10].f32[0];
    __asm { FCVT            H8, S31 }

    v85 = _Q0;
    v331 = _H8;
    v86 = _Q1;
    v352 = v23[10].f32[1];
    __asm { FCVT            H8, S29 }

    v351 = v23[11].f32[0];
    __asm { FCVT            H0, S30 }

    v329 = *_Q0.i16;
    v88 = v65;
    _Q0.i32[0] = v23[11].i32[1];
    __asm { FCVT            H15, S0 }

    v347 = v23[12].f32[0];
    __asm { FCVT            H0, S4 }

    v345 = v23[12].f32[1];
    __asm { FCVT            H1, S11 }

    v335 = v23[13].f32[0];
    __asm { FCVT            H4, S17 }

    v324 = vdupq_n_s16(v74);
    v356 = v10.f32[0];
    v357 = v9.f32[0];
    v322 = v10.f32[1];
    v323 = v9.f32[1];
    v91 = a8.i64[0];
    v349 = a9.f32[0];
    v92 = _Q3.i64[0];
    v321 = a9.f32[1];
    v93.i64[0] = 0x9000900090009000;
    v93.i64[1] = 0x9000900090009000;
    v315 = v17;
    v316 = v14;
    v361 = v14 - 7;
    v313 = v24;
    v314 = result;
    v311 = v26;
    v312 = v25;
    v350 = v55;
    v348 = v56;
    v346 = v45;
    v344 = v44;
    v310 = v14 & 0xFFFFFFFE;
    v341 = v88;
    v342 = v64;
    v340 = v66;
    v338 = v86;
    v332 = _H12;
    v333 = _H7;
    v330 = _H8;
    v327 = *_Q0.i16;
    v328 = _H15;
    v325 = _Q4;
    v326 = _Q1;
    v307 = _S10;
    v308 = v40;
    do
    {
      v94 = result + v73;
      v95 = &v71->i8[v25];
      if (v14 < 8)
      {
        v189 = 0;
        v99 = v70;
        v98 = (v71 + v25);
        v188 = v72;
        v97 = (result + v73);
      }

      else
      {
        v320 = v22;
        v96 = 0;
        v317 = result + v73;
        v318 = &v71->i8[v25];
        v97 = (result + v73);
        v98 = (v71 + v25);
        v319 = v70;
        v99 = v70;
        v364 = v72;
        do
        {
          v100 = *&v72[v96];
          *v101.i8 = vzip1_s8(v100, 0);
          v101.u64[1] = vzip2_s8(v100, 0);
          v102 = vcvtq_f16_u16(v101);
          v103 = vmlaq_f16(v81, v44, v102);
          v104 = vmlaq_f16(v338, v45, v102);
          v105 = vtrn2q_s16(v103, v103);
          v106 = vtrn1q_s16(v103, v103);
          v107 = vuzp1q_s16(v104, v102);
          v108 = *v73++;
          *v109.i8 = vzip1_s8(v108, 0);
          v109.u64[1] = vzip2_s8(v108, 0);
          v110 = *v97++;
          *v107.i8 = vadd_f16(*v107.i8, *&vuzp2q_s16(v104, v107));
          v111 = vcvtq_f16_u16(v109);
          *v109.i8 = vzip1_s8(v110, 0);
          v109.u64[1] = vzip2_s8(v110, 0);
          v112 = vzip1q_s16(v107, v107);
          v113 = vsubq_f16(v111, v43);
          v114 = vsubq_f16(vcvtq_f16_u16(v109), v43);
          v115 = vmlaq_n_f16(v112, v113, v336);
          v116 = vmlaq_n_f16(v106, v113, v336);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v105, v113, v336), 0), v93));
          v118 = v117.u16[1];
          v119 = v117.u16[2];
          v120 = v117.u16[3];
          v121 = v117.u16[4];
          v122 = v117.u16[5];
          v123 = v117.u16[6];
          v124.i64[0] = 0x9000900090009000;
          v124.i64[1] = 0x9000900090009000;
          v125.i16[0] = *&v58[2 * v117.u16[0]];
          v126 = v117.u16[7];
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v124));
          v128 = &v58[2 * v120];
          v129 = &v58[2 * v121];
          v130 = &v58[2 * v123];
          v125.i16[1] = *&v58[2 * v118];
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v124));
          v125.i16[2] = *&v58[2 * v119];
          v132.i16[0] = *&v58[2 * v131.u16[0]];
          v115.i16[0] = *&v58[2 * v127.u16[0]];
          v133 = &v58[2 * v131.u16[2]];
          v134 = &v58[2 * v131.u16[3]];
          v135 = &v58[2 * v131.u16[4]];
          v136 = &v58[2 * v131.u16[5]];
          v137 = &v58[2 * v131.u16[6]];
          v138 = &v58[2 * v131.u16[7]];
          v132.i16[1] = *&v58[2 * v131.u16[1]];
          v139 = &v58[2 * v127.u16[5]];
          v140 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v105, v114, v336), 0), v124));
          v105.i16[0] = *&v58[2 * v140.u16[0]];
          v141 = &v58[2 * v127.u16[6]];
          v132.i16[2] = *v133;
          v142 = &v58[2 * v127.u16[7]];
          v105.i16[1] = *&v58[2 * v140.u16[1]];
          v125.i16[3] = *v128;
          v143 = &v58[2 * v140.u16[5]];
          v115.i16[1] = *&v58[2 * v127.u16[1]];
          v105.i16[2] = *&v58[2 * v140.u16[2]];
          v132.i16[3] = *v134;
          v105.i16[3] = *&v58[2 * v140.u16[3]];
          LOWORD(v134) = v140.i16[7];
          v125.i16[4] = *v129;
          v144 = &v58[2 * v140.u16[6]];
          v105.i16[4] = *&v58[2 * v140.u16[4]];
          v115.i16[2] = *&v58[2 * v127.u16[2]];
          v145 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v114, v336), 0), v124));
          v132.i16[4] = *v135;
          v146.i16[0] = *&v58[2 * v145.u16[0]];
          v105.i16[5] = *v143;
          v125.i16[5] = *&v58[2 * v122];
          v115.i16[3] = *&v58[2 * v127.u16[3]];
          v132.i16[5] = *v136;
          v105.i16[6] = *v144;
          v146.i16[1] = *&v58[2 * v145.u16[1]];
          v125.i16[6] = *v130;
          v146.i16[2] = *&v58[2 * v145.u16[2]];
          v146.i16[3] = *&v58[2 * v145.u16[3]];
          v115.i16[4] = *&v58[2 * v127.u16[4]];
          v146.i16[4] = *&v58[2 * v145.u16[4]];
          v132.i16[6] = *v137;
          v147 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v114, v336), 0), v124));
          v105.i16[7] = *&v58[2 * v134];
          v145.i16[0] = *&v58[2 * v147.u16[0]];
          v146.i16[5] = *&v58[2 * v145.u16[5]];
          v125.i16[7] = *&v58[2 * v126];
          v115.i16[5] = *v139;
          v132.i16[7] = *v138;
          v146.i16[6] = *&v58[2 * v145.u16[6]];
          v115.i16[6] = *v141;
          v145.i16[1] = *&v58[2 * v147.u16[1]];
          v145.i16[2] = *&v58[2 * v147.u16[2]];
          v115.i16[7] = *v142;
          v145.i16[3] = *&v58[2 * v147.u16[3]];
          v145.i16[4] = *&v58[2 * v147.u16[4]];
          v146.i16[7] = *&v58[2 * v145.u16[7]];
          v145.i16[5] = *&v58[2 * v147.u16[5]];
          v145.i16[6] = *&v58[2 * v147.u16[6]];
          v145.i16[7] = *&v58[2 * v147.u16[7]];
          v148 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v125, v333), v115, v332), v132, v331);
          v149 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v125, v330), v115, v329), v132, v328);
          v112.i16[7] = v325.n128_i16[7];
          v106.i16[7] = v326.i16[7];
          v150 = vmlaq_n_f16(vmulq_n_f16(v132, *v325.n128_u16), v115, *v326.i16);
          v151 = v64;
          v152 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v333), v146, v332), v145, v331);
          v153 = vmlaq_n_f16(v150, v125, v327);
          v154 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v330), v146, v329), v145, v328);
          v155 = vmlaq_n_f16(vmulq_n_f16(v145, *v325.n128_u16), v146, *v326.i16);
          v156 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v148, 0), v124));
          v106.i16[0] = *&v59[2 * v156.u16[0]];
          v157 = vmlaq_n_f16(v155, v105, v327);
          v158 = &v59[2 * v156.u16[1]];
          v159 = &v59[2 * v156.u16[2]];
          v160 = &v59[2 * v156.u16[3]];
          v161 = &v59[2 * v156.u16[4]];
          LOWORD(v136) = v156.i16[6];
          v162 = &v59[2 * v156.u16[5]];
          v163 = v156.u16[7];
          v164 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v149, 0), v124));
          v165 = &v59[2 * v136];
          v125.i16[0] = *&v59[2 * v164.u16[0]];
          v166 = &v59[2 * v163];
          v167 = &v59[2 * v164.u16[1]];
          v168 = &v59[2 * v164.u16[2]];
          v169 = &v59[2 * v164.u16[3]];
          v170 = &v59[2 * v164.u16[4]];
          v171 = v164.u16[6];
          LOWORD(v144) = v164.i16[7];
          v172 = &v59[2 * v164.u16[5]];
          v173 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v153, 0), v124));
          v112.i16[0] = *&v59[2 * v173.u16[0]];
          v174 = &v59[2 * v173.u16[4]];
          v175 = vmaxq_f16(v152, 0);
          v64 = v151;
          v106.i16[1] = *v158;
          v176 = vcvtq_u16_f16(vminq_f16(v175, v124));
          v125.i16[1] = *v167;
          v105.i16[0] = *&v59[2 * v176.u16[0]];
          v112.i16[1] = *&v59[2 * v173.u16[1]];
          v177 = &v59[2 * v173.u16[5]];
          v106.i16[2] = *v159;
          v72 = v364;
          v105.i16[1] = *&v59[2 * v176.u16[1]];
          v125.i16[2] = *v168;
          v178 = &v59[2 * v173.u16[6]];
          v112.i16[2] = *&v59[2 * v173.u16[2]];
          v105.i16[2] = *&v59[2 * v176.u16[2]];
          v106.i16[3] = *v160;
          v179 = &v59[2 * v173.u16[7]];
          v125.i16[3] = *v169;
          v105.i16[3] = *&v59[2 * v176.u16[3]];
          v112.i16[3] = *&v59[2 * v173.u16[3]];
          v105.i16[4] = *&v59[2 * v176.u16[4]];
          v180 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v154, 0), v124));
          v106.i16[4] = *v161;
          v154.i16[0] = *&v59[2 * v180.u16[0]];
          v125.i16[4] = *v170;
          v112.i16[4] = *v174;
          v154.i16[1] = *&v59[2 * v180.u16[1]];
          v105.i16[5] = *&v59[2 * v176.u16[5]];
          v106.i16[5] = *v162;
          v154.i16[2] = *&v59[2 * v180.u16[2]];
          v125.i16[5] = *v172;
          v112.i16[5] = *v177;
          v154.i16[3] = *&v59[2 * v180.u16[3]];
          v105.i16[6] = *&v59[2 * v176.u16[6]];
          v154.i16[4] = *&v59[2 * v180.u16[4]];
          v106.i16[6] = *v165;
          v154.i16[5] = *&v59[2 * v180.u16[5]];
          v125.i16[6] = *&v59[2 * v171];
          v154.i16[6] = *&v59[2 * v180.u16[6]];
          LOWORD(v162) = v180.i16[7];
          v112.i16[6] = *v178;
          v181 = &v59[2 * v176.u16[7]];
          v182 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v157, 0), v124));
          v183 = vuzp1q_s16(v105, v154);
          v148.i16[0] = *&v59[2 * v182.u16[0]];
          v105.i16[7] = *v181;
          v184 = vuzp1q_s16(v106, v125);
          v106.i16[7] = *v166;
          v148.i16[1] = *&v59[2 * v182.u16[1]];
          v148.i16[2] = *&v59[2 * v182.u16[2]];
          v125.i16[7] = *&v59[2 * v144];
          v148.i16[3] = *&v59[2 * v182.u16[3]];
          v148.i16[4] = *&v59[2 * v182.u16[4]];
          v154.i16[7] = *&v59[2 * v162];
          v185 = v112;
          v148.i16[5] = *&v59[2 * v182.u16[5]];
          v148.i16[6] = *&v59[2 * v182.u16[6]];
          v185.i16[7] = *v179;
          v186 = v148;
          v186.i16[7] = *&v59[2 * v182.u16[7]];
          *v71++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v343, v106, _H9), v125, v334), v185, v366), v343), v88)), v324);
          v187 = vaddq_f16(vaddq_f16(vaddq_f16(v184, vuzp2q_s16(v106, v125)), v183), vuzp2q_s16(v105, v154));
          v93.i64[0] = 0x9000900090009000;
          v93.i64[1] = 0x9000900090009000;
          *v98++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v343, v105, _H9), v154, v334), v186, v366), v343), v88)), v324);
          _Q0 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v64, v55, vzip1q_s16(v187, v187)), v56, vzip2q_s16(v187, v187)), v85, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v112, v112), vtrn2q_s16(v185, v185)), vtrn1q_s16(v148, v148)), vtrn2q_s16(v186, v186))), v66), v339)), v324);
          *v99++ = _Q0;
          v96 += 8;
        }

        while (v96 < v361);
        v188 = &v364[v96];
        v189 = v309;
        v75 = v310;
        v17 = v315;
        v14 = v316;
        v22 = v320;
        v24 = v313;
        result = v314;
        v26 = v311;
        v25 = v312;
        v95 = v318;
        v70 = v319;
        v94 = v317;
        _S10 = v307;
        v40 = v308;
      }

      for (; v189 < v75; v66 = v340)
      {
        _Q0.i8[0] = v188[1];
        v190 = _Q0.u32[0] - v369;
        v191 = LODWORD(v323);
        v192 = v323 * v190;
        LOBYTE(v191) = v73->i8[0];
        v193 = _S10 * (v191 - v40);
        v194 = (v323 * v190) + v193;
        v195 = 8191.0;
        if (v194 <= 8191.0)
        {
          v195 = (v323 * v190) + v193;
          if (v194 < 0.0)
          {
            v195 = 0.0;
          }
        }

        LOBYTE(v194) = *v188;
        v196 = LODWORD(v194) - v369;
        v197 = LODWORD(v356);
        v198 = (v322 * v190) + (v196 * v356);
        v199 = 8191.0;
        if ((v193 + v198) <= 8191.0)
        {
          v199 = v193 + v198;
          if ((v193 + v198) < 0.0)
          {
            v199 = 0.0;
          }
        }

        v200 = v357 * v196;
        v201 = (v357 * v196) + v193;
        v202 = 8191.0;
        if (v201 <= 8191.0)
        {
          v202 = v201;
          if (v201 < 0.0)
          {
            v202 = 0.0;
          }
        }

        LOBYTE(v201) = v73->i8[1];
        v203 = _S10 * (LODWORD(v201) - v40);
        v204 = 8191.0;
        if ((v192 + v203) <= 8191.0)
        {
          v204 = v192 + v203;
          if ((v192 + v203) < 0.0)
          {
            v204 = 0.0;
          }
        }

        v205 = 8191.0;
        if ((v198 + v203) <= 8191.0)
        {
          v205 = v198 + v203;
          if ((v198 + v203) < 0.0)
          {
            v205 = 0.0;
          }
        }

        v206 = v200 + v203;
        v207 = 8191.0;
        if (v206 <= 8191.0)
        {
          v207 = v206;
          if (v206 < 0.0)
          {
            v207 = 0.0;
          }
        }

        LOBYTE(v206) = v97->i8[0];
        v208 = _S10 * (LODWORD(v206) - v40);
        v209 = 8191.0;
        if ((v192 + v208) <= 8191.0)
        {
          v209 = v192 + v208;
          if ((v192 + v208) < 0.0)
          {
            v209 = 0.0;
          }
        }

        v210 = 8191.0;
        if ((v198 + v208) <= 8191.0)
        {
          v210 = v198 + v208;
          if ((v198 + v208) < 0.0)
          {
            v210 = 0.0;
          }
        }

        v211 = v200 + v208;
        v212 = (v200 + v208) <= 8191.0;
        v213 = 8191.0;
        if (v212)
        {
          v213 = v211;
          if (v211 < 0.0)
          {
            v213 = 0.0;
          }
        }

        LOBYTE(v197) = v97->i8[1];
        v214 = _S10 * (v197 - v40);
        v215 = v192 + v214;
        v212 = (v192 + v214) <= 8191.0;
        v216 = 8191.0;
        if (v212)
        {
          v216 = v215;
          if (v215 < 0.0)
          {
            v216 = 0.0;
          }
        }

        v217 = v198 + v214;
        v212 = (v198 + v214) <= 8191.0;
        v218 = 8191.0;
        if (v212)
        {
          v218 = v217;
          if (v217 < 0.0)
          {
            v218 = 0.0;
          }
        }

        v219 = v81;
        v220 = v40;
        v221 = v200 + v214;
        v212 = (v200 + v214) <= 8191.0;
        v222 = 8191.0;
        if (v212)
        {
          v222 = v221;
          if (v221 < 0.0)
          {
            v222 = 0.0;
          }
        }

        _H1 = *&v58[2 * llroundf(fminf(fmaxf(v195, 0.0), 8191.0))];
        __asm { FCVT            S6, H1 }

        _H1 = *&v58[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H4 = *&v58[2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0))];
        _H7 = *&v58[2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0))];
        __asm
        {
          FCVT            S4, H4
          FCVT            S7, H7
        }

        _H8 = *&v58[2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0))];
        v232 = llroundf(fminf(fmaxf(v207, 0.0), 8191.0));
        __asm { FCVT            S26, H8 }

        _H8 = *&v58[2 * v232];
        __asm { FCVT            S8, H8 }

        _H0 = *&v58[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H5 = *&v58[2 * llroundf(fminf(fmaxf(v210, 0.0), 8191.0))];
        __asm { FCVT            S5, H5 }

        _H3 = *&v58[2 * llroundf(fminf(fmaxf(v213, 0.0), 8191.0))];
        _H11 = *&v58[2 * llroundf(fminf(fmaxf(v216, 0.0), 8191.0))];
        __asm
        {
          FCVT            S3, H3
          FCVT            S11, H11
        }

        _H12 = *&v58[2 * llroundf(fminf(fmaxf(v218, 0.0), 8191.0))];
        __asm { FCVT            S12, H12 }

        _H13 = *&v58[2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0))];
        __asm { FCVT            S13, H13 }

        v248 = ((v354 * _S1) + (_S6 * v355)) + (_S4 * v353);
        v249 = ((v351 * _S1) + (_S6 * v352)) + (_S4 * v362);
        _S1 = ((v345 * _S1) + (_S6 * v347)) + (_S4 * v335);
        _S4 = ((v354 * _S26) + (_S7 * v355)) + (_S8 * v353);
        v252 = ((v351 * _S26) + (_S7 * v352)) + (_S8 * v362);
        v253 = ((v345 * _S26) + (_S7 * v347)) + (_S8 * v335);
        v254 = ((v354 * _S5) + (_S0 * v355)) + (_S3 * v353);
        v255 = ((v351 * _S5) + (_S0 * v352)) + (_S3 * v362);
        _S5 = ((v345 * _S5) + (_S0 * v347)) + (_S3 * v335);
        v257 = ((v354 * _S12) + (_S11 * v355)) + (_S13 * v353);
        v258 = ((v351 * _S12) + (_S11 * v352)) + (_S13 * v362);
        v259 = ((v345 * _S12) + (_S11 * v347)) + (_S13 * v335);
        LOWORD(_S0) = *&v59[2 * llroundf(fminf(fmaxf(v248, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        LOWORD(_S3) = *&v59[2 * llroundf(fminf(fmaxf(v249, 0.0), 8191.0))];
        __asm { FCVT            S6, H3 }

        LOWORD(_S1) = *&v59[2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0))];
        LOWORD(_S3) = *&v59[2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0))];
        __asm
        {
          FCVT            S1, H1
          FCVT            S3, H3
        }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(v252, 0.0), 8191.0))];
        __asm { FCVT            S26, H4 }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(v253, 0.0), 8191.0))];
        __asm { FCVT            S7, H4 }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(v254, 0.0), 8191.0))];
        __asm { FCVT            S11, H4 }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(v255, 0.0), 8191.0))];
        __asm { FCVT            S12, H4 }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0))];
        LOWORD(_S5) = *&v59[2 * llroundf(fminf(fmaxf(v257, 0.0), 8191.0))];
        __asm
        {
          FCVT            S8, H4
          FCVT            S14, H5
        }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(v258, 0.0), 8191.0))];
        __asm { FCVT            S15, H4 }

        LOWORD(_S4) = *&v59[2 * llroundf(fminf(fmaxf(v259, 0.0), 8191.0))];
        __asm { FCVT            S13, H4 }

        v272 = (((v359 * _S6) + (v360 * _S0)) + (v358 * _S1)) + v76;
        if (v272 < v76)
        {
          v273 = v76;
        }

        else
        {
          v273 = (((v359 * _S6) + (v360 * _S0)) + (v358 * _S1)) + v76;
        }

        v212 = v272 <= v337;
        v274 = (((v359 * _S26) + (v360 * _S3)) + (v358 * _S7)) + v76;
        if (!v212)
        {
          v273 = v337;
        }

        v275 = llroundf(v273);
        if (v274 < v76)
        {
          v276 = v76;
        }

        else
        {
          v276 = (((v359 * _S26) + (v360 * _S3)) + (v358 * _S7)) + v76;
        }

        v212 = v274 <= v337;
        v277 = (((v359 * _S12) + (v360 * _S11)) + (v358 * _S8)) + v76;
        if (!v212)
        {
          v276 = v337;
        }

        v278 = llroundf(v276);
        if (v277 < v76)
        {
          v279 = v76;
        }

        else
        {
          v279 = (((v359 * _S12) + (v360 * _S11)) + (v358 * _S8)) + v76;
        }

        v212 = v277 <= v337;
        v280 = (((v359 * _S15) + (v360 * _S14)) + (v358 * _S13)) + v76;
        if (!v212)
        {
          v279 = v337;
        }

        v281 = llroundf(v279);
        if (v280 < v76)
        {
          v282 = v76;
        }

        else
        {
          v282 = (((v359 * _S15) + (v360 * _S14)) + (v358 * _S13)) + v76;
        }

        if (v280 <= v337)
        {
          v283 = v282;
        }

        else
        {
          v283 = v337;
        }

        v284 = ((_S0 + _S3) + _S11) + _S14;
        v285 = ((_S6 + _S26) + _S12) + _S15;
        v71->i16[0] = v275 << v74;
        v71->i16[1] = v278 << v74;
        v98->i16[0] = v281 << v74;
        v98->i16[1] = llroundf(v283) << v74;
        v286 = ((_S1 + _S7) + _S8) + _S13;
        v287 = ((v368 + (v284 * *&v91)) + (v285 * v349)) + (v286 * *&v92);
        v288 = v367;
        if (v287 <= v367)
        {
          v288 = ((v368 + (v284 * *&v91)) + (v285 * v349)) + (v286 * *&v92);
          if (v287 < v365)
          {
            v288 = v365;
          }
        }

        *_Q0.i32 = ((v368 + (v284 * *(&v91 + 1))) + (v285 * v321)) + (v286 * *(&v92 + 1));
        v99->i16[0] = llroundf(v288) << v74;
        v289 = v367;
        v40 = v220;
        v81 = v219;
        v88 = v341;
        v64 = v342;
        if (*_Q0.i32 <= v367)
        {
          v289 = *_Q0.i32;
          if (*_Q0.i32 < v365)
          {
            v289 = v365;
          }
        }

        v189 += 2;
        v188 += 2;
        v73 = (v73 + 2);
        v97 = (v97 + 2);
        v99->i16[1] = llroundf(v289) << v74;
        v71 = (v71 + 4);
        v98 = (v98 + 4);
        v99 = (v99 + 4);
        v44 = v344;
        v45 = v346;
        v55 = v350;
        v56 = v348;
      }

      v73 = (result + v94);
      v72 += v24;
      v71 = &v95[v25];
      v70 += v26;
      v22 += 2;
      v93.i64[0] = 0x9000900090009000;
      v93.i64[1] = 0x9000900090009000;
    }

    while (v22 < v17);
  }

  if (v302 && v301)
  {
    v290 = v303;
    if (v17 >= 1)
    {
      v291 = 0;
      v292 = (v302 + v298 * v299 + v300);
      do
      {
        if (v14 >= 1)
        {
          v293 = v14;
          v294 = v290;
          v295 = v292;
          do
          {
            v296 = *v295++;
            *v294++ = v296 | (v296 << 8);
            --v293;
          }

          while (v293);
        }

        v292 += v298;
        v290 = (v290 + v304);
        ++v291;
      }

      while (v291 != v17);
    }
  }

  else
  {
    v297 = v303;
    if (v301 && v17 >= 1)
    {
      do
      {
        if (v14 >= 1)
        {
          result = memset(v297, 255, 2 * v14);
        }

        v297 += v304;
        --v17;
      }

      while (v17);
    }
  }

  *(v306 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_TRC_Mat_TRC_xf420(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
LABEL_75:
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
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v34 = 2 * v33, 2 * v33 > *a8) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, (*a8 * v43) > *a9) || (a8[1] * (v43 / 2)) > a9[1] || (a8[2] * v43) > a9[2])
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
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v28;
  if ((*a8 * v52 + 2 * (v44 + v28)) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && a8[1] * ((v45 + v39 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_68:
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
      goto LABEL_74;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Mat_TRC_xf420_GCD);
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

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_TRC_Mat_TRC_xf420_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v11 = 2 * *a1;
  v172 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v11);
  v173 = *(a1 + 36);
  v12 = a1[14];
  v14 = a1[12];
  v13 = a1[13];
  v15 = v13 * a2 / v11;
  v16 = a1[15] + 2 * v15;
  v17 = 2 * ((v13 + v13 * a2) / v11 - v15);
  v18 = a1[7];
  v19 = a1[8];
  v21 = a1[16];
  result = a1[17];
  v22 = v19[2];
  v23 = result[2];
  v174 = v21[2];
  v175 = v18[2];
  v24 = (v174 + v23 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v25 = 0;
    v26 = a1[19];
    v27 = v14 & 0xFFFFFFFE;
    v28 = *v19;
    v29 = v19[1];
    v30 = *result;
    result = result[1];
    LOWORD(a5) = *(v26 + 140);
    LOWORD(a6) = *(v26 + 142);
    LOWORD(v6) = *(v26 + 144);
    LOWORD(v7) = *(v26 + 146);
    LOWORD(v8) = *(v26 + 148);
    v31 = 8191.0 / *(v26 + 128);
    v32 = LODWORD(a5);
    v33 = LODWORD(a6);
    v34 = v31 * *v26;
    v198 = v31 * *(v26 + 16);
    v199 = v31 * *(v26 + 8);
    v35 = v31 * *(v26 + 20);
    *&v36 = v31 * *(v26 + 28);
    v196 = *&v36;
    v197 = v35;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    LOWORD(v36) = *(v26 + 150);
    *&v40 = v36;
    v200 = *&v40;
    LOWORD(v40) = *(v26 + 152);
    v41 = v40;
    v192 = *(v26 + 40);
    v193 = *(v26 + 36);
    v191 = *(v26 + 44);
    v189 = *(v26 + 52) * 0.25;
    v190 = *(v26 + 48) * 0.25;
    v187 = *(v26 + 60) * 0.25;
    v188 = *(v26 + 56) * 0.25;
    v185 = *(v26 + 72);
    v186 = *(v26 + 64) * 0.25;
    v183 = *(v26 + 76);
    v184 = *(v26 + 68) * 0.25;
    v181 = *(v26 + 84);
    v182 = *(v26 + 80);
    v179 = *(v26 + 92);
    v180 = *(v26 + 88);
    v42 = *(v26 + 104);
    v177 = *(v26 + 100);
    v178 = *(v26 + 96);
    v176 = v42;
    v43 = v26 + 164;
    v44 = v26 + 16548;
    v45 = v21[1];
    v46 = (*v21 + v30 * v16 + 2 * v12);
    v47 = *(v26 + 132);
    v48 = v18[1];
    v49 = (*v18 + v28 * v172 + v173);
    if (v47 >= 0x11)
    {
      v50 = 0;
    }

    else
    {
      v50 = 16 - v47;
    }

    v51 = v45 + result * (v16 / 2) + 2 * v12;
    v52 = v48 + v29 * (v172 / 2) + v173;
    v53 = v50;
    v194 = v41;
    v195 = v38;
    do
    {
      v54 = &v49[v28];
      v55 = &v46[v30];
      if (v27 >= 1)
      {
        v56 = 0;
        v57 = &v49[v28];
        v58 = &v46[v30];
        do
        {
          LOBYTE(v42) = *(v52 + v56 + 1);
          v59 = LODWORD(v42) - v33;
          v60 = LODWORD(v199);
          v61 = v199 * v59;
          LOBYTE(v60) = *v49;
          v62 = v60 - v32;
          v63 = v34 * v62;
          v64 = (v199 * v59) + (v34 * v62);
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = (v199 * v59) + (v34 * v62);
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          LOBYTE(v62) = *(v52 + v56);
          v66 = LODWORD(v62) - v33;
          v67 = (v197 * v59) + (v66 * v198);
          v68 = 8191.0;
          if ((v63 + v67) <= 8191.0)
          {
            v68 = v63 + v67;
            if ((v63 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = LODWORD(v196);
          v70 = v196 * v66;
          v71 = (v196 * v66) + v63;
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          LOBYTE(v69) = v49[1];
          v73 = v69 - v32;
          v74 = v34 * v73;
          v75 = v61 + (v34 * v73);
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v61 + (v34 * v73);
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v67 + v74;
          v78 = 8191.0;
          if ((v67 + v74) <= 8191.0)
          {
            v78 = v67 + v74;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v70 + v74;
          v80 = 8191.0;
          if (v79 <= 8191.0)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          LOBYTE(v73) = *v57;
          v81 = v34 * (LODWORD(v73) - v32);
          v82 = 8191.0;
          if ((v61 + v81) <= 8191.0)
          {
            v82 = v61 + v81;
            if ((v61 + v81) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = 8191.0;
          if ((v67 + v81) <= 8191.0)
          {
            v83 = v67 + v81;
            if ((v67 + v81) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v70 + v81;
          v85 = (v70 + v81) <= 8191.0;
          v86 = 8191.0;
          if (v85)
          {
            v86 = v84;
            if (v84 < 0.0)
            {
              v86 = 0.0;
            }
          }

          LOBYTE(v77) = v57[1];
          v87 = v34 * (LODWORD(v77) - v32);
          v88 = v61 + v87;
          v85 = (v61 + v87) <= 8191.0;
          v89 = 8191.0;
          if (v85)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v67 + v87;
          v85 = (v67 + v87) <= 8191.0;
          v91 = 8191.0;
          if (v85)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v70 + v87;
          v93 = 8191.0;
          if (v92 <= 8191.0)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          _H4 = *(v43 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v43 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v43 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          _H17 = *(v43 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S17, H17
          }

          _H19 = *(v43 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H24 = *(v43 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H27 = *(v43 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H1 = *(v43 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v43 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          _H7 = *(v43 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S7, H7
          }

          _H25 = *(v43 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v43 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          v122 = ((v183 * _S5) + (_S4 * v185)) + (_S6 * v182);
          v123 = ((v180 * _S5) + (_S4 * v181)) + (_S6 * v179);
          v124 = ((v177 * _S5) + (_S4 * v178)) + (_S6 * v176);
          _S3 = ((v183 * _S19) + (_S17 * v185)) + (_S24 * v182);
          v126 = ((v180 * _S19) + (_S17 * v181)) + (_S24 * v179);
          v127 = ((v177 * _S19) + (_S17 * v178)) + (_S24 * v176);
          v128 = ((v183 * _S1) + (_S27 * v185)) + (_S2 * v182);
          v129 = ((v180 * _S1) + (_S27 * v181)) + (_S2 * v179);
          _S1 = ((v177 * _S1) + (_S27 * v178)) + (_S2 * v176);
          v131 = ((v183 * _S25) + (_S7 * v185)) + (_S26 * v182);
          v132 = ((v180 * _S25) + (_S7 * v181)) + (_S26 * v179);
          v133 = ((v177 * _S25) + (_S7 * v178)) + (_S26 * v176);
          LOWORD(_S2) = *(v44 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S4, H2 }

          LOWORD(_S2) = *(v44 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S5, H2 }

          LOWORD(_S2) = *(v44 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          LOWORD(_S3) = *(v44 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H2
            FCVT            S2, H3
          }

          LOWORD(_S3) = *(v44 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v44 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          __asm { FCVT            S7, H3 }

          LOWORD(_S3) = *(v44 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm { FCVT            S25, H3 }

          LOWORD(_S3) = *(v44 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S26, H3 }

          LOWORD(_S1) = *(v44 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          LOWORD(_S3) = *(v44 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H1
            FCVT            S28, H3
          }

          LOWORD(_S1) = *(v44 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S30, H1 }

          LOWORD(_S1) = *(v44 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          __asm { FCVT            S27, H1 }

          v146 = (((v192 * _S5) + (v193 * _S4)) + (v191 * _S6)) + v37;
          if (v146 < v37)
          {
            v147 = v37;
          }

          else
          {
            v147 = (((v192 * _S5) + (v193 * _S4)) + (v191 * _S6)) + v37;
          }

          v85 = v146 <= v39;
          v148 = (((v192 * _S19) + (v193 * _S2)) + (v191 * _S7)) + v37;
          if (!v85)
          {
            v147 = v39;
          }

          v149 = llroundf(v147);
          if (v148 < v37)
          {
            v150 = v37;
          }

          else
          {
            v150 = (((v192 * _S19) + (v193 * _S2)) + (v191 * _S7)) + v37;
          }

          v85 = v148 <= v39;
          v151 = (((v192 * _S26) + (v193 * _S25)) + (v191 * _S24)) + v37;
          if (!v85)
          {
            v150 = v39;
          }

          v152 = llroundf(v150);
          if (v151 < v37)
          {
            v153 = v37;
          }

          else
          {
            v153 = (((v192 * _S26) + (v193 * _S25)) + (v191 * _S24)) + v37;
          }

          v85 = v151 <= v39;
          v154 = (((v192 * _S30) + (v193 * _S28)) + (v191 * _S27)) + v37;
          if (!v85)
          {
            v153 = v39;
          }

          v155 = llroundf(v153);
          if (v154 < v37)
          {
            v156 = v37;
          }

          else
          {
            v156 = (((v192 * _S30) + (v193 * _S28)) + (v191 * _S27)) + v37;
          }

          if (v154 <= v39)
          {
            v157 = v156;
          }

          else
          {
            v157 = v39;
          }

          v158 = ((_S4 + _S2) + _S25) + _S28;
          v159 = ((_S5 + _S19) + _S26) + _S30;
          *v46 = v149 << v53;
          *(v46 + 1) = v152 << v53;
          *v58 = v155 << v53;
          *(v58 + 1) = llroundf(v157) << v53;
          v160 = ((_S6 + _S7) + _S24) + _S27;
          v161 = ((v195 + (v158 * v190)) + (v159 * v189)) + (v160 * v188);
          v162 = v194;
          if (v161 <= v194)
          {
            v162 = ((v195 + (v158 * v190)) + (v159 * v189)) + (v160 * v188);
            if (v161 < v200)
            {
              v162 = v200;
            }
          }

          v163 = (v51 + 2 * v56);
          v42 = (v195 + (v158 * v187)) + (v159 * v186);
          v164 = v42 + (v160 * v184);
          *v163 = llroundf(v162) << v53;
          v165 = v194;
          if (v164 <= v194)
          {
            v42 = v200;
            v165 = v164;
            if (v164 < v200)
            {
              v165 = v200;
            }
          }

          v49 += 2;
          v57 += 2;
          v46 += 4;
          v58 += 4;
          v163[1] = llroundf(v165) << v53;
          v56 += 2;
        }

        while (v56 < v27);
      }

      v49 = &v54[v28];
      v52 += v29;
      v46 = &v55[v30];
      v51 += result;
      v25 += 2;
    }

    while (v25 < v17);
  }

  if (v175 && v174)
  {
    if (v17 >= 1)
    {
      v166 = 0;
      v167 = (v175 + v22 * v172 + v173);
      do
      {
        if (v14 >= 1)
        {
          v168 = v14;
          v169 = v24;
          v170 = v167;
          do
          {
            v171 = *v170++;
            *v169++ = v171 | (v171 << 8);
            --v168;
          }

          while (v168);
        }

        v167 += v22;
        v24 += v23;
        ++v166;
      }

      while (v166 != v17);
    }
  }

  else if (v174 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v24, 255, 2 * v14);
      }

      v24 += v23;
      --v17;
    }

    while (v17);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_xf420_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
LABEL_75:
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
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v34 = 2 * v33, 2 * v33 > *a8) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, (*a8 * v43) > *a9) || (a8[1] * (v43 / 2)) > a9[1] || (a8[2] * v43) > a9[2])
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
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v28;
  if ((*a8 * v52 + 2 * (v44 + v28)) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && a8[1] * ((v45 + v39 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_68:
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
      goto LABEL_74;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_xf420_neon_fp16_GCD);
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

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_rgb_xf420_neon_fp16_GCD(void *a1, uint64_t a2)
{
  v161 = *(a1 + 36);
  v8 = 2 * *a1;
  v160 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v8);
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
  v20 = v15[2];
  v21 = result[2];
  v162 = v18[2];
  v22 = (v162 + v21 * v13 + 2 * v9);
  if (v14 >= 1)
  {
    v23 = 0;
    v24 = a1[19];
    v25 = *v16;
    v26 = v16[1];
    v27 = *result;
    result = result[1];
    v28 = v24[17].u16[2];
    v29 = v24[17].u16[3];
    v2.i32[0] = v24[3].i32[1];
    v30 = v24[18].u16[0];
    v31 = v24[18].u16[1];
    v32 = v24[18].u16[2];
    v33 = v24[18].u16[3];
    v34 = v24[19].u16[0];
    _S1 = v24[4].f32[1];
    _S21 = v24[5].f32[0];
    _S2 = v24[5].f32[1];
    v4.i32[0] = v24[6].i32[0];
    v38.i32[0] = v24[6].i32[1];
    v39.i32[0] = v24[7].i32[0];
    v40 = v28;
    *v3.i16 = v28;
    v41 = v24[17].u32[0] / v24[16].u32[0];
    v177 = v29;
    _S5 = v41 * v24->f32[0];
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v178 = v33;
    v46 = v34;
    v47 = vdupq_lane_s16(*v3.f32, 0);
    __asm { FCVT            H8, S5 }

    v53 = -v29;
    v2.i32[1] = v24[1].i32[0];
    *v3.f32 = vmul_n_f32(*v2.f32, v41);
    v59 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    *v5.i8 = vmul_n_f32(v24[2], v41);
    v54 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v176 = v59;
    v166 = vmulq_n_f16(v59, v53);
    v55 = vmulq_n_f16(v54, v53);
    v4.i32[1] = v24[7].i32[1];
    __asm
    {
      FCVT            H9, S1
      FMOV            V4.2S, #0.25
    }

    *v4.f32 = vmul_f32(*v4.f32, _D4);
    v58 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v38.i32[1] = v24[8].i32[0];
    *v59.i8 = vmul_f32(v38, _D4);
    v60 = vdupq_lane_s32(vcvt_f16_f32(v59), 0);
    v39.i32[1] = v24[8].i32[1];
    *v2.f32 = vmul_f32(v39, _D4);
    v61 = vcvt_f16_f32(v2);
    v62 = vdupq_lane_s32(v61, 0);
    *v61.i16 = v30;
    v63 = vdupq_lane_s16(v61, 0);
    *v61.i16 = v31;
    v64 = vdupq_lane_s16(v61, 0);
    *v61.i16 = v32;
    v65 = vdupq_lane_s16(v61, 0);
    *v61.i16 = v33;
    _Q4 = vdupq_lane_s16(v61, 0);
    v174 = _Q4;
    __asm { FCVT            H4, S21 }

    v165 = *_Q4.i16;
    *_Q4.i16 = v34;
    v173 = vdupq_lane_s16(*_Q4.i8, 0);
    v67 = v24[16].u8[4];
    if (v67 >= 0x11)
    {
      v68 = 0;
    }

    else
    {
      v68 = 16 - v67;
    }

    v69 = *v18;
    v70 = v18[1] + result * (v13 / 2) + 2 * v9;
    v71 = (v69 + v27 * v13 + 2 * v9);
    v72 = *v15;
    v73 = (v15[1] + v26 * (v160 / 2) + v161);
    v74 = (v72 + v25 * v160 + v161);
    __asm { FCVT            H0, S2 }

    v164 = _H0;
    v76 = vdupq_n_s16(v68);
    v77 = v3.i64[0];
    v78 = v5.i64[0];
    v79 = v4.i64[0];
    v80 = v59.i64[0];
    v81.i32[0] = v2.i32[1];
    v172 = v2.f32[1];
    v175 = v2.f32[0];
    v170 = v55;
    v171 = v54;
    v168 = v62;
    v169 = _H9;
    v167 = v65;
    v163 = _S1;
    do
    {
      v82 = v74 + v25;
      v83 = &v71->i8[v27];
      if (v11 < 8)
      {
        v116 = 0;
        v87 = v70;
        v86 = &v71->i8[v27];
        v115 = v73;
        v85 = (v74 + v25);
      }

      else
      {
        v84 = 0;
        v85 = (v74 + v25);
        v86 = &v71->i8[v27];
        v87 = v70;
        do
        {
          v88 = *&v73[v84];
          *v89.i8 = vzip1_s8(v88, 0);
          v89.u64[1] = vzip2_s8(v88, 0);
          v90 = vcvtq_f16_u16(v89);
          v91 = vmlaq_f16(v166, v176, v90);
          v92 = vmlaq_f16(v55, v54, v90);
          v93 = vtrn2q_s16(v91, v91);
          v94 = v55;
          v95 = vtrn1q_s16(v91, v91);
          v96 = *v74++;
          *v97.i8 = vzip1_s8(v96, 0);
          v97.u64[1] = vzip2_s8(v96, 0);
          *v90.i8 = vadd_f16(*&vuzp1q_s16(v92, v76), *&vuzp2q_s16(v92, v76));
          v98 = vcvtq_f16_u16(v97);
          v99 = *v85++;
          *v97.i8 = vzip1_s8(v99, 0);
          v100 = vzip1q_s16(v90, v90);
          v97.u64[1] = vzip2_s8(v99, 0);
          v101 = vsubq_f16(v98, v47);
          v102 = vsubq_f16(vcvtq_f16_u16(v97), v47);
          v103 = vmlaq_n_f16(v93, v101, _H8);
          v104 = vmlaq_n_f16(v93, v102, _H8);
          v105 = vmlaq_n_f16(v100, v101, _H8);
          v106 = vmlaq_n_f16(v100, v102, _H8);
          v5 = vmlaq_n_f16(v95, v101, _H8);
          v107 = vmlaq_n_f16(v95, v102, _H8);
          v108 = vmlaq_n_f16(vmlaq_n_f16(v63, v104, _H9), v106, v165);
          v109 = vuzp1q_s16(v104, v106);
          v110 = vuzp2q_s16(v104, v106);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v63, v103, _H9), v105, v165), v5, v164), v63), v65));
          v112 = vaddq_f16(v110, vaddq_f16(v109, vpaddq_f16(v103, v105)));
          v2 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v108, v107, v164), v63), v65)), v76);
          v113 = vaddq_f16(vtrn1q_s16(v107, v107), vaddq_f16(vtrn1q_s16(v5, v5), vtrn2q_s16(v5, v5)));
          v114 = vtrn2q_s16(v107, v107);
          v55 = v94;
          *v71++ = vshlq_u16(v111, v76);
          *v86++ = v2;
          v81 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v64, v58, vzip1q_s16(v112, v112)), v60, vzip2q_s16(v112, v112)), v62, vaddq_f16(v114, v113)), v174), v173)), v76);
          *v87++ = v81;
          v84 += 8;
        }

        while (v84 < v11 - 7);
        v115 = &v73[v84];
        v116 = v11 & 0xFFFFFFF8;
        _S1 = v163;
      }

      while (v116 < (v11 & 0xFFFFFFFE))
      {
        v117 = v64;
        v118 = v60;
        v119 = v58;
        v120 = v47;
        v121 = v44;
        v81.i8[0] = *v115;
        *&v122 = v81.u32[0] - v177;
        v2.i8[0] = v115[1];
        v123 = v2.u32[0] - v177;
        v124 = *(&v77 + 1) * v123;
        v125 = v78;
        v126 = (*(&v78 + 1) * v123) + (*&v122 * *&v78);
        v127 = *&v77 * *&v122;
        LOBYTE(v122) = v74->i8[0];
        v128 = _S5 * (v122 - v40);
        v129 = (*(&v77 + 1) * v123) + v128;
        v130 = v128 + v126;
        v131 = v127 + v128;
        *v81.i32 = (((_S21 * (v128 + v126)) + (_S1 * v129)) + (_S2 * (v127 + v128))) + v43;
        v132 = v45;
        if (*v81.i32 <= v45)
        {
          v132 = *v81.i32;
          if (*v81.i32 < v43)
          {
            v132 = v43;
          }
        }

        v81.i8[0] = v74->i8[1];
        v133 = _S5 * (v81.u32[0] - v40);
        v5.i8[0] = v85->i8[0];
        LOBYTE(v125) = v85->i8[1];
        v134 = v124 + v133;
        v135 = v126 + v133;
        v136 = v127 + v133;
        v137 = (((_S21 * (v126 + v133)) + (_S1 * (v124 + v133))) + (_S2 * (v127 + v133))) + v43;
        v71->i16[0] = llroundf(v132) << v68;
        *v81.i32 = v45;
        if (v137 <= v45)
        {
          *v81.i32 = v137;
          if (v137 < v43)
          {
            *v81.i32 = v43;
          }
        }

        v138 = _S5 * (v5.u32[0] - v40);
        v139 = v124 + v138;
        v140 = v126 + v138;
        *v5.i32 = v127 + v138;
        v141 = (((_S21 * (v126 + v138)) + (_S1 * (v124 + v138))) + (_S2 * (v127 + v138))) + v43;
        v71->i16[1] = llroundf(*v81.i32) << v68;
        v142 = v45;
        if (v141 <= v45)
        {
          v142 = v141;
          if (v141 < v43)
          {
            v142 = v43;
          }
        }

        v143 = _S5 * (v125 - v40);
        v144 = v124 + v143;
        v145 = v126 + v143;
        v146 = v127 + v143;
        v147 = (((_S21 * v145) + (_S1 * v144)) + (_S2 * (v127 + v143))) + v43;
        v86->i16[0] = llroundf(v142) << v68;
        v148 = v45;
        if (v147 <= v45)
        {
          v148 = v147;
          if (v147 < v43)
          {
            v148 = v43;
          }
        }

        v86->i16[1] = llroundf(v148) << v68;
        v149 = ((v129 + v134) + v139) + v144;
        v44 = v121;
        v150 = ((v130 + v135) + v140) + v145;
        v151 = ((v131 + v136) + *v5.i32) + v146;
        v152 = ((v121 + (v149 * *&v79)) + (v150 * *&v80)) + (v151 * v175);
        v153 = v46;
        v58 = v119;
        if (v152 <= v46)
        {
          v153 = ((v121 + (v149 * *&v79)) + (v150 * *&v80)) + (v151 * v175);
          if (v152 < v178)
          {
            v153 = v33;
          }
        }

        *v81.i32 = ((v121 + (v149 * *(&v79 + 1))) + (v150 * *(&v80 + 1))) + (v151 * v172);
        v87->i16[0] = llroundf(v153) << v68;
        v2.f32[0] = v46;
        v47 = v120;
        v60 = v118;
        v64 = v117;
        if (*v81.i32 <= v46)
        {
          v2.i32[0] = v81.i32[0];
          if (*v81.i32 < v178)
          {
            v2.f32[0] = v33;
          }
        }

        v116 += 2;
        v115 += 2;
        v74 = (v74 + 2);
        v85 = (v85 + 2);
        v87->i16[1] = llroundf(v2.f32[0]) << v68;
        v71 = (v71 + 4);
        v86 = (v86 + 4);
        v87 = (v87 + 4);
      }

      v74 = &v82[v25];
      v73 += v26;
      v71 = &v83[v27];
      v70 += result;
      v23 += 2;
      v55 = v170;
      v54 = v171;
      v62 = v168;
      _H9 = v169;
      v65 = v167;
    }

    while (v23 < v14);
  }

  if (v20 && v162)
  {
    if (v14 >= 1)
    {
      v154 = 0;
      v155 = (v20 + v19 * v160 + v161);
      do
      {
        if (v11 >= 1)
        {
          v156 = v11;
          v157 = v22;
          v158 = v155;
          do
          {
            v159 = *v158++;
            *v157++ = v159 | (v159 << 8);
            --v156;
          }

          while (v156);
        }

        v155 += v19;
        v22 += v21;
        ++v154;
      }

      while (v154 != v14);
    }
  }

  else if (v162 && v14 >= 1)
  {
    do
    {
      if (v11 >= 1)
      {
        result = memset(v22, 255, 2 * v11);
      }

      v22 += v21;
      --v14;
    }

    while (v14);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_xf420(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
LABEL_75:
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
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v34 = 2 * v33, 2 * v33 > *a8) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v42 = v37 + 1 + v38, *a4 * v42 > *a5) || a4[1] * (v42 / 2) > a5[1] || a4[2] * v42 > a5[2] || (v43 = v36 + 1 + v39, (*a8 * v43) > *a9) || (a8[1] * (v43 / 2)) > a9[1] || (a8[2] * v43) > a9[2])
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
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v45 + v38 + 1) / 2 - 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v47 + a4[2] * v46 > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v28;
  if ((*a8 * v52 + 2 * (v44 + v28)) > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && a8[1] * ((v45 + v39 + 1) / 2 - 1) + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_68:
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
      goto LABEL_74;
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_xf420_GCD);
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

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

uint64_t *vt_Copy_420vf_rgb_xf420_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v8 = *(a1 + 36);
  v9 = 2 * *a1;
  v10 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v9);
  v11 = a1[14];
  v13 = a1[12];
  v12 = a1[13];
  v14 = v12 * a2 / v9;
  v15 = a1[15] + 2 * v14;
  v16 = 2 * ((v12 + v12 * a2) / v9 - v14);
  v17 = a1[7];
  v18 = a1[8];
  v20 = a1[16];
  result = a1[17];
  v21 = v18[2];
  v22 = v17[2];
  v23 = result[2];
  v24 = v20[2];
  v25 = (v24 + v23 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v26 = 0;
    v27 = a1[19];
    v28 = v13 & 0xFFFFFFFE;
    v29 = *v18;
    v30 = v18[1];
    v31 = *result;
    result = result[1];
    LOWORD(a5) = *(v27 + 140);
    LOWORD(a6) = *(v27 + 142);
    v32 = *(v27 + 136) / *(v27 + 128);
    v33 = LODWORD(a5);
    v34 = LODWORD(a6);
    v35 = v32 * *v27;
    v111 = v32 * *(v27 + 16);
    v112 = v32 * *(v27 + 8);
    v109 = v32 * *(v27 + 28);
    *&v36 = v109;
    v110 = v32 * *(v27 + 20);
    LOWORD(v36) = *(v27 + 144);
    v37 = v36;
    LOWORD(v36) = *(v27 + 146);
    v38 = v36;
    LOWORD(v36) = *(v27 + 148);
    v39 = v36;
    LOWORD(v36) = *(v27 + 150);
    v40 = v36;
    LOWORD(v36) = *(v27 + 152);
    v41 = v36;
    v42 = *(v27 + 36);
    v43 = *(v27 + 40);
    v44 = *(v27 + 44);
    v45 = 0.25;
    v108 = *(v27 + 48) * 0.25;
    v46 = *(v27 + 52) * 0.25;
    v47 = *(v27 + 56) * 0.25;
    v48 = *(v27 + 60) * 0.25;
    v49 = *(v27 + 64) * 0.25;
    v50 = *(v27 + 68);
    v51 = v50 * 0.25;
    v52 = v20[1];
    v53 = (*v20 + v31 * v15 + 2 * v11);
    v54 = *(v27 + 132);
    v55 = v17[1];
    v56 = (*v17 + v29 * v10 + v8);
    if (v54 >= 0x11)
    {
      v57 = 0;
    }

    else
    {
      v57 = 16 - v54;
    }

    v58 = v52 + result * (v15 / 2) + 2 * v11;
    v59 = v55 + v30 * (v10 / 2) + v8;
    do
    {
      v60 = &v56[v29];
      v61 = &v53[v31];
      if (v28 >= 1)
      {
        v62 = 0;
        v63 = &v56[v29];
        v64 = &v53[v31];
        do
        {
          LOBYTE(v50) = *(v59 + v62);
          *&v65 = LODWORD(v50) - v34;
          LOBYTE(v45) = *(v59 + v62 + 1);
          v66 = LODWORD(v45) - v34;
          v67 = v112 * v66;
          v68 = (v110 * v66) + (*&v65 * v111);
          v69 = LODWORD(v109);
          v70 = v109 * *&v65;
          LOBYTE(v65) = *v56;
          v71 = v35 * (v65 - v33);
          v72 = v67 + v71;
          v73 = v71 + v68;
          v74 = v70 + v71;
          v75 = (((v43 * (v71 + v68)) + (v42 * (v67 + v71))) + (v44 * (v70 + v71))) + v37;
          v76 = v39;
          if (v75 <= v39)
          {
            v76 = v75;
            if (v75 < v37)
            {
              v76 = v37;
            }
          }

          LOBYTE(v75) = v56[1];
          v78 = LODWORD(v75) - v33;
          v77 = v35 * v78;
          LOBYTE(v78) = *v63;
          LOBYTE(v69) = v63[1];
          v79 = v67 + v77;
          v80 = v68 + v77;
          v81 = v70 + v77;
          v82 = (((v43 * (v68 + v77)) + (v42 * (v67 + v77))) + (v44 * (v70 + v77))) + v37;
          *v53 = llroundf(v76) << v57;
          v83 = v39;
          if (v82 <= v39)
          {
            v83 = (((v43 * (v68 + v77)) + (v42 * (v67 + v77))) + (v44 * (v70 + v77))) + v37;
            if (v82 < v37)
            {
              v83 = v37;
            }
          }

          v84 = v35 * (LODWORD(v78) - v33);
          v85 = v67 + v84;
          v86 = v68 + v84;
          v87 = v70 + v84;
          v88 = (((v43 * (v68 + v84)) + (v42 * (v67 + v84))) + (v44 * (v70 + v84))) + v37;
          *(v53 + 1) = llroundf(v83) << v57;
          v89 = v39;
          if (v88 <= v39)
          {
            v89 = v88;
            if (v88 < v37)
            {
              v89 = v37;
            }
          }

          v90 = v35 * (v69 - v33);
          v91 = v67 + v90;
          v92 = v68 + v90;
          v93 = v70 + v90;
          v94 = (((v43 * v92) + (v42 * v91)) + (v44 * v93)) + v37;
          *v64 = llroundf(v89) << v57;
          v95 = v39;
          if (v94 <= v39)
          {
            v95 = (((v43 * v92) + (v42 * v91)) + (v44 * v93)) + v37;
            if (v94 < v37)
            {
              v95 = v37;
            }
          }

          *(v64 + 1) = llroundf(v95) << v57;
          v96 = ((v72 + v79) + v85) + v91;
          v97 = ((v73 + v80) + v86) + v92;
          v98 = ((v74 + v81) + v87) + v93;
          v99 = ((v38 + (v96 * v108)) + (v97 * v46)) + (v98 * v47);
          v100 = v41;
          if (v99 <= v41)
          {
            v100 = ((v38 + (v96 * v108)) + (v97 * v46)) + (v98 * v47);
            if (v99 < v40)
            {
              v100 = v40;
            }
          }

          v101 = (v58 + 2 * v62);
          v45 = ((v38 + (v96 * v48)) + (v97 * v49)) + (v98 * v51);
          *v101 = llroundf(v100) << v57;
          v50 = v41;
          if (v45 <= v41)
          {
            v50 = v45;
            if (v45 < v40)
            {
              v50 = v40;
            }
          }

          v56 += 2;
          v63 += 2;
          v53 += 4;
          v64 += 4;
          v101[1] = llroundf(v50) << v57;
          v62 += 2;
        }

        while (v62 < v28);
      }

      v56 = &v60[v29];
      v59 += v30;
      v53 = &v61[v31];
      v58 += result;
      v26 += 2;
    }

    while (v26 < v16);
  }

  if (v22 && v24)
  {
    if (v16 >= 1)
    {
      v102 = 0;
      v103 = (v22 + v21 * v10 + v8);
      do
      {
        if (v13 >= 1)
        {
          v104 = v13;
          v105 = v25;
          v106 = v103;
          do
          {
            v107 = *v106++;
            *v105++ = v107 | (v107 << 8);
            --v104;
          }

          while (v104);
        }

        v103 += v21;
        v25 += v23;
        ++v102;
      }

      while (v102 != v16);
    }
  }

  else if (v24 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v25, 255, 2 * v13);
      }

      v25 += v23;
      --v16;
    }

    while (v16);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}