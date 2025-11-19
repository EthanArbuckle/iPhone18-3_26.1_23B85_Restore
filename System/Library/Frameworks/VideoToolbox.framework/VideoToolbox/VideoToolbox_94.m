uint64_t vt_Copy_xf420_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (v45 + v24 + *a8 * v53 > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 2 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v8 = 2 * *result;
  v209 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
  v210 = *(result + 36);
  v9 = result[14];
  v10 = result[12];
  v11 = result[13];
  v12 = v11 * a2 / v8;
  v13 = result[15] + 2 * v12;
  v14 = 2 * ((v11 + v11 * a2) / v8 - v12);
  v15 = result[7];
  v16 = result[8];
  v18 = result[16];
  v17 = result[17];
  v19 = v16[2];
  v211 = v15[2];
  v20 = v17[2];
  v21 = v18[2];
  v22 = (v21 + v20 * v13 + v9);
  if (v14 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = v10 & 0xFFFFFFFE;
    v26 = *v16;
    v27 = v16[1];
    v28 = *v17;
    v29 = v17[1];
    LOWORD(a5) = *(v24 + 140);
    LOWORD(a6) = *(v24 + 142);
    LOWORD(v6) = *(v24 + 144);
    LOWORD(v7) = *(v24 + 146);
    v30 = 8191.0 / *(v24 + 128);
    v31 = LODWORD(a5);
    v32 = LODWORD(a6);
    v33 = v30 * *v24;
    v234 = v30 * *(v24 + 16);
    v235 = v30 * *(v24 + 8);
    v34 = v30 * *(v24 + 20);
    *&v35 = v30 * *(v24 + 28);
    v232 = *&v35;
    v233 = v34;
    v36 = v6;
    v37 = v7;
    LOWORD(v35) = *(v24 + 148);
    v38 = v35;
    LOWORD(v35) = *(v24 + 150);
    v39 = v35;
    LOWORD(v35) = *(v24 + 152);
    v40 = v35;
    v42 = *(v24 + 36);
    v41 = *(v24 + 40);
    v44 = *(v24 + 44);
    v43 = *(v24 + 48);
    v45 = *(v24 + 52);
    v46 = *(v24 + 56);
    v47 = *(v24 + 60);
    v48 = *(v24 + 64);
    v49 = *(v24 + 68);
    v226 = *(v24 + 76);
    v227 = *(v24 + 72);
    v225 = *(v24 + 80);
    v222 = *(v24 + 88);
    v223 = *(v24 + 84);
    v220 = *(v24 + 92);
    v218 = *(v24 + 96);
    v216 = *(v24 + 100);
    v214 = *(v24 + 104);
    v50 = v24 + 164;
    v51 = v24 + 16548;
    v53 = *v18;
    v52 = v18[1];
    _ZF = v52 == 0;
    v55 = (v52 + v29 * v13 + v9);
    if (_ZF)
    {
      v56 = 0;
    }

    else
    {
      v56 = v55;
    }

    v57 = (v53 + v28 * v13 + v9);
    v59 = *v15;
    v58 = v15[1];
    v60 = (v59 + v26 * v209 + 2 * v210);
    v61 = *(v24 + 124);
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    else
    {
      v62 = 16 - v61;
    }

    v63 = v58 + v27 * (v209 / 2) + 2 * v210;
    v64 = v62;
    v236 = LODWORD(a6);
    v237 = v41;
    v230 = v47;
    v231 = v37;
    v228 = v49;
    v229 = v48;
    v224 = v46;
    v221 = v45;
    v219 = v33;
    v217 = v31;
    v215 = v43;
    v213 = v39;
    do
    {
      v65 = &v60[v26];
      v66 = &v57[v28];
      v67 = &v56[v29];
      if (v25 >= 1)
      {
        v68 = 0;
        v69 = &v60[v26];
        v70 = &v56[v29];
        v71 = &v57[v28];
        do
        {
          v72 = (v63 + 2 * v68);
          v73 = (v72[1] >> v64) - v32;
          v74 = v235 * v73;
          v75 = v33 * ((*v60 >> v64) - v31);
          v76 = (v235 * v73) + v75;
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = (v235 * v73) + v75;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = (*v72 >> v64) - v32;
          v79 = (v233 * v73) + (v78 * v234);
          v80 = 8191.0;
          if ((v75 + v79) <= 8191.0)
          {
            v80 = v75 + v79;
            if ((v75 + v79) < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v232 * v78;
          v82 = (v232 * v78) + v75;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v33 * ((*(v60 + 1) >> v64) - v31);
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

          v87 = 8191.0;
          if ((v81 + v84) <= 8191.0)
          {
            v87 = v81 + v84;
            if ((v81 + v84) < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v33 * ((*v69 >> v64) - v31);
          v89 = 8191.0;
          if ((v74 + v88) <= 8191.0)
          {
            v89 = v74 + v88;
            if ((v74 + v88) < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = 8191.0;
          if ((v79 + v88) <= 8191.0)
          {
            v90 = v79 + v88;
            if ((v79 + v88) < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v81 + v88;
          v92 = (v81 + v88) <= 8191.0;
          v93 = 8191.0;
          if (v92)
          {
            v93 = v91;
            if (v91 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v33 * ((*(v69 + 1) >> v64) - v31);
          v95 = v74 + v94;
          v96 = 8191.0;
          if (v95 <= 8191.0)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          v97 = v44;
          v98 = v79 + v94;
          v92 = (v79 + v94) <= 8191.0;
          v99 = 8191.0;
          if (v92)
          {
            v99 = v98;
            if (v98 < 0.0)
            {
              v99 = 0.0;
            }
          }

          v100 = v42;
          v101 = v81 + v94;
          v102 = 8191.0;
          if (v101 <= 8191.0)
          {
            v102 = v101;
            if (v101 < 0.0)
            {
              v102 = 0.0;
            }
          }

          _H1 = *(v50 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          _H1 = *(v50 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H5 = *(v50 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H2 = *(v50 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H6 = *(v50 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S6, H6
          }

          _H7 = *(v50 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H26 = *(v50 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v50 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H19 = *(v50 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H3 = *(v50 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          _H24 = *(v50 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S24, H24
          }

          _H25 = *(v50 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v130 = ((v226 * _S1) + (_S4 * v227)) + (_S5 * v225);
          v131 = ((v222 * _S1) + (_S4 * v223)) + (_S5 * v220);
          _S1 = ((v216 * _S1) + (_S4 * v218)) + (_S5 * v214);
          v133 = ((v226 * _S6) + (_S2 * v227)) + (_S7 * v225);
          v134 = ((v222 * _S6) + (_S2 * v223)) + (_S7 * v220);
          v135 = ((v216 * _S6) + (_S2 * v218)) + (_S7 * v214);
          v136 = ((v226 * _S27) + (_S26 * v227)) + (_S19 * v225);
          v137 = ((v222 * _S27) + (_S26 * v223)) + (_S19 * v220);
          v138 = ((v216 * _S27) + (_S26 * v218)) + (_S19 * v214);
          v139 = ((v226 * _S24) + (_S3 * v227)) + (_S25 * v225);
          v140 = ((v222 * _S24) + (_S3 * v223)) + (_S25 * v220);
          v141 = ((v216 * _S24) + (_S3 * v218)) + (_S25 * v214);
          LOWORD(_S7) = *(v51 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S27, H7 }

          LOWORD(_S7) = *(v51 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S28, H7 }

          LOWORD(_S1) = *(v51 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S29, H1 }

          _H19 = *(v51 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          _H25 = *(v51 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          _H26 = *(v51 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          _H7 = *(v51 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          _H2 = *(v51 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          _H24 = *(v51 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          _H4 = *(v51 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          _H5 = *(v51 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          _H6 = *(v51 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          v42 = v100;
          v154 = (v237 * _S28) + (v100 * _S27);
          v44 = v97;
          v155 = (v154 + (v97 * _S29)) + v36;
          v156 = v38;
          if (v155 <= v38)
          {
            v156 = v155;
            if (v155 < v36)
            {
              v156 = v36;
            }
          }

          *v57 = llroundf(v156);
          if (v56)
          {
            v157 = v215;
            v158 = v231;
            v159 = v224;
            v160 = ((v231 + (_S27 * v215)) + (_S28 * v221)) + (_S29 * v224);
            v161 = v40;
            if (v160 <= v40)
            {
              v161 = ((v231 + (_S27 * v215)) + (_S28 * v221)) + (_S29 * v224);
              if (v160 < v213)
              {
                v161 = v213;
              }
            }

            v162 = v230;
            v163 = (v231 + (_S27 * v230)) + (_S28 * v229);
            v164 = v229;
            v165 = v163 + (_S29 * v228);
            v166 = v228;
            *v56 = llroundf(v161);
            v167 = v40;
            v31 = v217;
            v33 = v219;
            if (v165 <= v40)
            {
              v167 = v165;
              if (v165 < v213)
              {
                v167 = v213;
              }
            }

            v56[1] = llroundf(v167);
            v56 += 2;
          }

          else
          {
            v31 = v217;
            v33 = v219;
            v157 = v215;
            v159 = v224;
            v162 = v230;
            v158 = v231;
            v166 = v228;
            v164 = v229;
          }

          __asm
          {
            FCVT            S19, H19
            FCVT            S25, H25
            FCVT            S26, H26
          }

          v171 = (((v237 * _S25) + (v42 * _S19)) + (v97 * _S26)) + v36;
          v172 = v38;
          if (v171 <= v38)
          {
            v172 = (((v237 * _S25) + (v42 * _S19)) + (v97 * _S26)) + v36;
            if (v171 < v36)
            {
              v172 = v36;
            }
          }

          v57[1] = llroundf(v172);
          if (v56)
          {
            v173 = ((v158 + (_S19 * v157)) + (_S25 * v221)) + (_S26 * v159);
            v174 = v40;
            if (v173 <= v40)
            {
              v174 = ((v158 + (_S19 * v157)) + (_S25 * v221)) + (_S26 * v159);
              if (v173 < v213)
              {
                v174 = v213;
              }
            }

            v175 = ((v158 + (_S19 * v162)) + (_S25 * v164)) + (_S26 * v166);
            *v56 = llroundf(v174);
            v176 = v40;
            if (v175 <= v40)
            {
              v176 = v175;
              if (v175 < v213)
              {
                v176 = v213;
              }
            }

            v56[1] = llroundf(v176);
            v56 += 2;
          }

          __asm
          {
            FCVT            S7, H7
            FCVT            S2, H2
            FCVT            S19, H24
          }

          v180 = (((v237 * _S2) + (v42 * _S7)) + (v97 * _S19)) + v36;
          v181 = v38;
          if (v180 <= v38)
          {
            v181 = (((v237 * _S2) + (v42 * _S7)) + (v97 * _S19)) + v36;
            if (v180 < v36)
            {
              v181 = v36;
            }
          }

          *v71 = llroundf(v181);
          if (v70)
          {
            v182 = ((v158 + (_S7 * v157)) + (_S2 * v221)) + (_S19 * v159);
            v183 = v40;
            if (v182 <= v40)
            {
              v183 = ((v158 + (_S7 * v157)) + (_S2 * v221)) + (_S19 * v159);
              if (v182 < v213)
              {
                v183 = v213;
              }
            }

            v184 = ((v158 + (_S7 * v162)) + (_S2 * v164)) + (_S19 * v166);
            *v70 = llroundf(v183);
            v185 = v40;
            if (v184 <= v40)
            {
              v185 = v184;
              if (v184 < v213)
              {
                v185 = v213;
              }
            }

            v70[1] = llroundf(v185);
            v70 += 2;
          }

          v32 = v236;
          __asm
          {
            FCVT            S2, H4
            FCVT            S4, H5
            FCVT            S5, H6
          }

          v189 = (((v237 * _S4) + (v42 * _S2)) + (v97 * _S5)) + v36;
          v190 = v38;
          if (v189 <= v38)
          {
            v190 = (((v237 * _S4) + (v42 * _S2)) + (v97 * _S5)) + v36;
            if (v189 < v36)
            {
              v190 = v36;
            }
          }

          v71[1] = llroundf(v190);
          if (v70)
          {
            v191 = ((v158 + (_S2 * v157)) + (_S4 * v221)) + (_S5 * v159);
            v192 = v40;
            if (v191 <= v40)
            {
              v192 = ((v158 + (_S2 * v157)) + (_S4 * v221)) + (_S5 * v159);
              if (v191 < v213)
              {
                v192 = v213;
              }
            }

            v193 = ((v158 + (_S2 * v162)) + (_S4 * v164)) + (_S5 * v166);
            *v70 = llroundf(v192);
            v194 = v40;
            if (v193 <= v40)
            {
              v194 = v193;
              if (v193 < v213)
              {
                v194 = v213;
              }
            }

            v70[1] = llroundf(v194);
            v70 += 2;
          }

          v60 += 4;
          v69 += 4;
          v57 += 2;
          v71 += 2;
          v68 += 2;
        }

        while (v68 < v25);
      }

      v60 = &v65[v26];
      v63 += v27;
      v57 = &v66[v28];
      v56 = &v67[v29];
      v23 += 2;
    }

    while (v23 < v14);
  }

  if (v211 && v21)
  {
    if (v14 >= 1)
    {
      v195 = 0;
      v196 = v211 + v19 * v209 + 2 * v210;
      do
      {
        if (v10 >= 1)
        {
          v197 = v10;
          v198 = v22;
          v199 = v196;
          do
          {
            v200 = *v199++;
            *v198++ = llroundf(v200 * 0.0038911);
            --v197;
          }

          while (v197);
        }

        v196 += v19;
        v22 += v20;
        ++v195;
      }

      while (v14 > v195);
    }
  }

  else if (v21 && v14 >= 1)
  {
    v201 = 0;
    v202 = vdupq_n_s64(v10 - 1);
    do
    {
      if (v10 >= 1)
      {
        v203 = 0;
        do
        {
          v204 = vdupq_n_s64(v203);
          v205 = vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v205, *v202.i8), *v202.i8).u8[0])
          {
            v22[v203] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v205, *&v202), *&v202).i8[1])
          {
            v22[v203 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v202, vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDDA0)))), *&v202).i8[2])
          {
            v22[v203 + 2] = -1;
            v22[v203 + 3] = -1;
          }

          v206 = vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v202, vuzp1_s16(v206, *&v202)).i32[1])
          {
            v22[v203 + 4] = -1;
          }

          if (vuzp1_s8(*&v202, vuzp1_s16(v206, *&v202)).i8[5])
          {
            v22[v203 + 5] = -1;
          }

          if (vuzp1_s8(*&v202, vuzp1_s16(*&v202, vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDD80))))).i8[6])
          {
            v22[v203 + 6] = -1;
            v22[v203 + 7] = -1;
          }

          v207 = vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v207, *v202.i8), *v202.i8).u8[0])
          {
            v22[v203 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v207, *&v202), *&v202).i8[1])
          {
            v22[v203 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v202, vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDD60)))), *&v202).i8[2])
          {
            v22[v203 + 10] = -1;
            v22[v203 + 11] = -1;
          }

          v208 = vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v202, vuzp1_s16(v208, *&v202)).i32[1])
          {
            v22[v203 + 12] = -1;
          }

          if (vuzp1_s8(*&v202, vuzp1_s16(v208, *&v202)).i8[5])
          {
            v22[v203 + 13] = -1;
          }

          if (vuzp1_s8(*&v202, vuzp1_s16(*&v202, vmovn_s64(vcgeq_u64(v202, vorrq_s8(v204, xmmword_18FECDD40))))).i8[6])
          {
            v22[v203 + 14] = -1;
            v22[v203 + 15] = -1;
          }

          v203 += 16;
        }

        while (((v10 + 15) & 0xFFFFFFFFFFFFFFF0) != v203);
      }

      v22 += v20;
      ++v201;
    }

    while (v14 > v201);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (v45 + v24 + *a8 * v53 > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 2 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

int vt_Copy_xf420_rgb_444vf_neon_fp16_GCD(void *a1, uint64_t a2, int16x8_t _Q0)
{
  v7 = 2 * *a1;
  v183 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v7);
  v184 = *(a1 + 36);
  v8 = a1[14];
  v9 = a1[12];
  v10 = a1[13];
  v188 = a1;
  v11 = v10 * a2 / v7;
  v12 = a1[15] + 2 * v11;
  v13 = 2 * ((v10 + v10 * a2) / v7 - v11);
  v15 = a1[7];
  v14 = a1[8];
  v17 = a1[16];
  v16 = a1[17];
  v182 = v14[2];
  v186 = v15[2];
  v18 = v16[2];
  v185 = v17[2];
  v19 = (v185 + v18 * v12 + v8);
  if (v13 >= 1)
  {
    v20 = 0;
    v21 = a1[19];
    v22 = *v14;
    v23 = v14[1];
    v24 = *v16;
    v25 = v16[1];
    v26 = v21[17].u16[2];
    v27 = v21[17].u16[3];
    v4.i32[0] = v21[3].i32[1];
    v28 = v21[18].u16[0];
    v29 = v21[18].u16[1];
    v30 = v21[18].u16[2];
    v31 = v21[18].u16[3];
    v32 = v21[19].u16[0];
    _Q0.i32[0] = v21[4].i32[1];
    _S1 = v21[5].f32[0];
    _S2 = v21[5].f32[1];
    _S3 = v21[6].f32[0];
    _S4 = v21[6].f32[1];
    _S28 = v21[7].f32[0];
    _S29 = v21[7].f32[1];
    _S30 = v21[8].f32[0];
    _S31 = v21[8].f32[1];
    v41 = v26;
    *v5.i16 = v26;
    v42 = v21[17].u32[0] / v21[16].u32[0];
    v196 = v27;
    _S19 = v42 * v21->f32[0];
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    v48 = v32;
    __asm { FCVT            H8, S19 }

    v54 = vdupq_lane_s16(v5, 0);
    v4.i32[1] = v21[1].i32[0];
    *v6.f32 = vmul_n_f32(*v4.f32, v42);
    v55 = -v27;
    *v4.f32 = vmul_n_f32(v21[2], v42);
    v195 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v192 = vmulq_n_f16(v195, v55);
    v193 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v56 = vmulq_n_f16(v193, v55);
    v191 = v56;
    __asm { FCVT            H9, S0 }

    *v56.i16 = v28;
    v57 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v29;
    v58 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v30;
    v59 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v31;
    v60 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v32;
    v197 = vdupq_lane_s16(*v56.i8, 0);
    v198 = v58;
    __asm { FCVT            H5, S1 }

    v204 = _H5;
    v205 = v59;
    v62 = v21[15].u8[4];
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v65 = *v17;
    v64 = *(a1[16] + 8);
    if (v64)
    {
      v66 = (v64 + v25 * v12 + v8);
    }

    else
    {
      v66 = 0;
    }

    v67 = (v65 + v24 * v12 + v8);
    v68 = v15[1] + v23 * (v183 / 2) + 2 * v184;
    v69 = (*v15 + v22 * v183 + 2 * v184);
    v70 = v63;
    __asm
    {
      FCVT            H6, S2
      FCVT            H7, S3
    }

    v202 = _H7;
    v203 = _H6;
    __asm { FCVT            H13, S4 }

    v206 = _S28;
    __asm { FCVT            H15, S28 }

    v200 = _H15;
    v201 = _H13;
    v75 = v60;
    v76 = _S29;
    __asm { FCVT            H14, S29 }

    v199 = _H14;
    v78 = _S30;
    __asm { FCVT            H14, S30 }

    v80 = _S31;
    __asm { FCVT            H5, S31 }

    v82 = vdupq_n_s16(-v63);
    v83 = v6.i64[0];
    v194 = v4.f32[0];
    v189 = _S4;
    v190 = v4.f32[1];
    do
    {
      v84 = &v69->i8[v22];
      v85 = v67 + v24;
      v86 = &v66[v25];
      if (v9 < 8)
      {
        v117 = 0;
        v91 = &v66[v25];
        v90 = (v67 + v24);
        v89 = v68;
        v88 = (v69 + v22);
      }

      else
      {
        v87 = 0;
        v88 = (v69 + v22);
        v89 = v68;
        v90 = (v67 + v24);
        v91 = &v66[v25];
        do
        {
          v92 = _S3;
          v93 = *v89++;
          v94 = vcvtq_f16_u16(vshlq_u16(v93, v82));
          v95 = vmlaq_f16(v192, v195, v94);
          v96 = vmlaq_f16(v191, v193, v94);
          v97 = vtrn2q_s16(v95, v95);
          v98 = vtrn1q_s16(v95, v95);
          v99 = vuzp1q_s16(v96, _Q0);
          *v99.i8 = vadd_f16(*v99.i8, *&vuzp2q_s16(v96, _Q0));
          v100 = vzip1q_s16(v99, v99);
          v101 = *v69++;
          v102 = vshlq_u16(v101, v82);
          v103 = *v88++;
          v104 = v103;
          v105 = vsubq_f16(vcvtq_f16_u16(v102), v54);
          v106 = vmlaq_n_f16(v97, v105, _H8);
          v107 = vmlaq_n_f16(v100, v105, _H8);
          v108 = vmlaq_n_f16(v98, v105, _H8);
          *v67++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v106, *&_Q9), v107, v204), v108, v203), v57), v205)));
          if (v66)
          {
            v109 = _Q9;
            v110 = v54;
            v111 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v198, v106, v199), v107, _H14), v108, _H5);
            v208.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v198, v106, v202), v107, v201), v108, v200), v75), v197), v75), v197)));
            v112 = vcvtq_u16_f16(v111);
            v54 = v110;
            _Q9 = v109;
            v208.val[1] = vmovn_s16(v112);
            vst2_s8(v66, v208);
            v66 += 16;
          }

          v113 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v104, v82)), v54);
          v114 = vmlaq_n_f16(v97, v113, _H8);
          v115 = vmlaq_n_f16(v100, v113, _H8);
          v116 = vmlaq_n_f16(v98, v113, _H8);
          *v90++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v114, *&_Q9), v115, v204), v116, v203), v57), v205)));
          if (v91)
          {
            v207.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v198, v114, v202), v115, v201), v116, v200), v75), v197), v75), v197)));
            v207.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v198, v114, v199), v115, _H14), v116, _H5)));
            vst2_s8(v91, v207);
            v91 += 16;
          }

          _S3 = v92;
          v87 += 8;
        }

        while (v87 < v9 - 7);
        v117 = v9 & 0x7FFFFFF8;
        _S4 = v189;
      }

      while (v117 < (v9 & 0xFFFFFFFE))
      {
        v118 = (v89->u16[0] >> v70) - v196;
        v119 = (v89->u16[1] >> v70) - v196;
        v120 = *(&v83 + 1) * v119;
        v121 = (v190 * v119) + (v118 * v194);
        v122 = *&v83 * v118;
        v123 = _S19 * ((v69->u16[0] >> v70) - v41);
        v124 = (*(&v83 + 1) * v119) + v123;
        v125 = v123 + v121;
        v126 = v122 + v123;
        v127 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * v126)) + v44;
        v128 = v46;
        if (v127 <= v46)
        {
          v128 = (((_S1 * v125) + (*_Q0.i32 * v124)) + (_S2 * v126)) + v44;
          if (v127 < v44)
          {
            v128 = v44;
          }
        }

        v129 = v69->u16[1];
        v130 = v88->u16[0];
        v131 = v88->u16[1];
        LODWORD(a1) = llroundf(v128);
        v67->i8[0] = a1;
        if (v66)
        {
          v132 = ((v45 + (v124 * _S3)) + (v125 * _S4)) + (v126 * v206);
          v133 = v48;
          if (v132 <= v48)
          {
            v133 = ((v45 + (v124 * _S3)) + (v125 * _S4)) + (v126 * v206);
            if (v132 < v47)
            {
              v133 = v47;
            }
          }

          v134 = ((v45 + (v124 * v76)) + (v125 * v78)) + (v126 * v80);
          *v66 = llroundf(v133);
          v135 = v48;
          if (v134 <= v48)
          {
            if (v134 < v47)
            {
              v135 = v47;
            }

            else
            {
              v135 = v134;
            }
          }

          LODWORD(a1) = llroundf(v135);
          v66[1] = a1;
          v66 += 2;
        }

        v136 = _S19 * ((v129 >> v70) - v41);
        v137 = v120 + v136;
        v138 = v121 + v136;
        v139 = v122 + v136;
        v140 = (((_S1 * (v121 + v136)) + (*_Q0.i32 * (v120 + v136))) + (_S2 * (v122 + v136))) + v44;
        v141 = v46;
        if (v140 <= v46)
        {
          v141 = v140;
          if (v140 < v44)
          {
            v141 = v44;
          }
        }

        v67->i8[1] = llroundf(v141);
        if (v66)
        {
          v142 = ((v45 + (v137 * _S3)) + (v138 * _S4)) + (v139 * v206);
          v143 = v48;
          if (v142 <= v48)
          {
            v143 = ((v45 + (v137 * _S3)) + (v138 * _S4)) + (v139 * v206);
            if (v142 < v47)
            {
              v143 = v47;
            }
          }

          v144 = ((v45 + (v137 * v76)) + (v138 * v78)) + (v139 * v80);
          *v66 = llroundf(v143);
          v145 = v48;
          if (v144 <= v48)
          {
            if (v144 < v47)
            {
              v145 = v47;
            }

            else
            {
              v145 = v144;
            }
          }

          v66[1] = llroundf(v145);
          v66 += 2;
        }

        v146 = _S19 * ((v130 >> v70) - v41);
        v147 = v120 + v146;
        v148 = v121 + v146;
        v149 = v122 + v146;
        v150 = (((_S1 * (v121 + v146)) + (*_Q0.i32 * (v120 + v146))) + (_S2 * (v122 + v146))) + v44;
        v151 = v46;
        if (v150 <= v46)
        {
          v151 = v150;
          if (v150 < v44)
          {
            v151 = v44;
          }
        }

        v90->i8[0] = llroundf(v151);
        if (v91)
        {
          v152 = ((v45 + (v147 * _S3)) + (v148 * _S4)) + (v149 * v206);
          v153 = v48;
          if (v152 <= v48)
          {
            v153 = ((v45 + (v147 * _S3)) + (v148 * _S4)) + (v149 * v206);
            if (v152 < v47)
            {
              v153 = v47;
            }
          }

          v154 = ((v45 + (v147 * v76)) + (v148 * v78)) + (v149 * v80);
          *v91 = llroundf(v153);
          v155 = v48;
          if (v154 <= v48)
          {
            if (v154 < v47)
            {
              v155 = v47;
            }

            else
            {
              v155 = v154;
            }
          }

          v91[1] = llroundf(v155);
          v156 = v91 + 2;
        }

        else
        {
          v156 = 0;
        }

        v157 = _S19 * ((v131 >> v70) - v41);
        v158 = v120 + v157;
        v159 = v121 + v157;
        v160 = v122 + v157;
        v161 = (((_S1 * (v121 + v157)) + (*_Q0.i32 * (v120 + v157))) + (_S2 * (v122 + v157))) + v44;
        v162 = v46;
        if (v161 <= v46)
        {
          v162 = v161;
          if (v161 < v44)
          {
            v162 = v44;
          }
        }

        v90->i8[1] = llroundf(v162);
        if (v156)
        {
          v163 = ((v45 + (v158 * _S3)) + (v159 * _S4)) + (v160 * v206);
          v164 = v48;
          if (v163 <= v48)
          {
            v164 = ((v45 + (v158 * _S3)) + (v159 * _S4)) + (v160 * v206);
            if (v163 < v47)
            {
              v164 = v47;
            }
          }

          v165 = ((v45 + (v158 * v76)) + (v159 * v78)) + (v160 * v80);
          *v156 = llroundf(v164);
          v166 = v48;
          if (v165 <= v48)
          {
            v166 = v165;
            if (v165 < v47)
            {
              v166 = v47;
            }
          }

          v156[1] = llroundf(v166);
          v91 = v156 + 2;
        }

        else
        {
          v91 = 0;
        }

        v117 += 2;
        v89 = (v89 + 4);
        v69 = (v69 + 4);
        v88 = (v88 + 4);
        v67 = (v67 + 2);
        v90 = (v90 + 2);
      }

      v69 = &v84[v22];
      v68 += v23;
      v67 = &v85[v24];
      v66 = &v86[v25];
      v20 += 2;
    }

    while (v20 < v13);
  }

  if (v186 && v185)
  {
    LODWORD(a1) = v182;
    if (v13 >= 1)
    {
      v167 = 0;
      v168 = v186 + v182 * v183 + 2 * v184;
      do
      {
        if (v9 >= 1)
        {
          v169 = v9;
          v170 = v19;
          v171 = v168;
          do
          {
            v172 = *v171++;
            *v170++ = llroundf(v172 * 0.0038911);
            --v169;
          }

          while (v169);
        }

        v168 += v182;
        v19 += v18;
        ++v167;
      }

      while (v13 > v167);
    }
  }

  else if (v185 && v13 >= 1)
  {
    v173 = 0;
    v174 = vdupq_n_s64(v9 - 1);
    do
    {
      if (v9 >= 1)
      {
        v175 = 0;
        do
        {
          v176 = vdupq_n_s64(v175);
          v177 = vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v177, *v174.i8), *v174.i8).u8[0])
          {
            v19[v175] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v177, *&v174), *&v174).i8[1])
          {
            v19[v175 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v174, vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDDA0)))), *&v174).i8[2])
          {
            v19[v175 + 2] = -1;
            v19[v175 + 3] = -1;
          }

          v178 = vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v174, vuzp1_s16(v178, *&v174)).i32[1])
          {
            v19[v175 + 4] = -1;
          }

          if (vuzp1_s8(*&v174, vuzp1_s16(v178, *&v174)).i8[5])
          {
            v19[v175 + 5] = -1;
          }

          if (vuzp1_s8(*&v174, vuzp1_s16(*&v174, vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDD80))))).i8[6])
          {
            v19[v175 + 6] = -1;
            v19[v175 + 7] = -1;
          }

          v179 = vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v179, *v174.i8), *v174.i8).u8[0])
          {
            v19[v175 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v179, *&v174), *&v174).i8[1])
          {
            v19[v175 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v174, vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDD60)))), *&v174).i8[2])
          {
            v19[v175 + 10] = -1;
            v19[v175 + 11] = -1;
          }

          v180 = vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v174, vuzp1_s16(v180, *&v174)).i32[1])
          {
            v19[v175 + 12] = -1;
          }

          if (vuzp1_s8(*&v174, vuzp1_s16(v180, *&v174)).i8[5])
          {
            v19[v175 + 13] = -1;
          }

          if (vuzp1_s8(*&v174, vuzp1_s16(*&v174, vmovn_s64(vcgeq_u64(v174, vorrq_s8(v176, xmmword_18FECDD40))))).i8[6])
          {
            v19[v175 + 14] = -1;
            v19[v175 + 15] = -1;
          }

          v175 += 16;
        }

        while (((v9 + 15) & 0xFFFFFFFFFFFFFFF0) != v175);
      }

      v19 += v18;
      ++v173;
    }

    while (v13 > v173);
  }

  *(v188 + a2 + 40) = 0;
  return a1;
}

uint64_t vt_Copy_xf420_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (v45 + v24 + *a8 * v53 > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 2 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

void *vt_Copy_xf420_rgb_444vf_GCD(void *result, uint64_t a2)
{
  v6 = 2 * *result;
  v137 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
  v138 = *(result + 36);
  v7 = result[14];
  v8 = result[12];
  v9 = result[13];
  v10 = v9 * a2 / v6;
  v11 = result[15] + 2 * v10;
  v12 = 2 * ((v9 + v9 * a2) / v6 - v10);
  v13 = result[7];
  v14 = result[8];
  v16 = result[16];
  v15 = result[17];
  v17 = v14[2];
  v139 = v13[2];
  v18 = v15[2];
  v19 = v16[2];
  v20 = (v19 + v18 * v11 + v7);
  if (v12 >= 1)
  {
    v21 = 0;
    v22 = result[19];
    v23 = v8 & 0xFFFFFFFE;
    v24 = *v14;
    v25 = v14[1];
    v26 = *v15;
    v27 = v15[1];
    *&v28 = *(v22 + 128);
    *&v29 = *(v22 + 136);
    v30 = *&v29 / *&v28;
    LOWORD(v28) = *(v22 + 140);
    v31 = v28;
    LOWORD(v29) = *(v22 + 142);
    v32 = v29;
    v33 = v30 * *v22;
    v34 = v30 * *(v22 + 8);
    v35 = v30 * *(v22 + 16);
    v36 = v30 * *(v22 + 20);
    v37 = *(v22 + 28);
    v38 = v30 * v37;
    LOWORD(v37) = *(v22 + 144);
    v39 = LODWORD(v37);
    LOWORD(v2) = *(v22 + 146);
    v40 = v2;
    LOWORD(v3) = *(v22 + 148);
    v41 = v3;
    LOWORD(v4) = *(v22 + 150);
    v42 = v4;
    LOWORD(v5) = *(v22 + 152);
    v43 = v5;
    v44 = *(v22 + 36);
    v45 = *(v22 + 40);
    v46 = *(v22 + 44);
    v47 = *(v22 + 48);
    v48 = *(v22 + 52);
    v49 = *(v22 + 56);
    v50 = *(v22 + 60);
    v51 = *(v22 + 64);
    v52 = *(v22 + 68);
    v54 = *v16;
    v53 = *(result[16] + 8);
    v55 = v53 == 0;
    v56 = (v53 + v27 * v11 + v7);
    if (v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = v56;
    }

    v58 = (v54 + v26 * v11 + v7);
    v60 = *v13;
    v59 = v13[1];
    v61 = (v60 + v24 * v137 + 2 * v138);
    v62 = *(v22 + 124);
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v64 = v59 + v25 * (v137 / 2) + 2 * v138;
    v65 = v63;
    do
    {
      v66 = &v61[v24];
      v67 = &v58[v26];
      v68 = &v57[v27];
      if (v23 >= 1)
      {
        v69 = 0;
        v70 = &v61[v24];
        v71 = &v58[v26];
        v72 = &v57[v27];
        do
        {
          v73 = (v64 + 2 * v69);
          v74 = (*v73 >> v65) - v32;
          v75 = (v73[1] >> v65) - v32;
          v76 = v34 * v75;
          v77 = (v36 * v75) + (v74 * v35);
          v78 = v38 * v74;
          v79 = v33 * ((*v61 >> v65) - v31);
          v80 = v76 + v79;
          v81 = v79 + v77;
          v82 = v78 + v79;
          v83 = (((v45 * v81) + (v44 * v80)) + (v46 * v82)) + v39;
          v84 = v41;
          if (v83 <= v41)
          {
            v84 = (((v45 * v81) + (v44 * v80)) + (v46 * v82)) + v39;
            if (v83 < v39)
            {
              v84 = v39;
            }
          }

          v85 = *(v61 + 1);
          v86 = *v70;
          v87 = *(v70 + 1);
          *v58 = llroundf(v84);
          if (v57)
          {
            v88 = ((v40 + (v80 * v47)) + (v81 * v48)) + (v82 * v49);
            v89 = v43;
            if (v88 <= v43)
            {
              v89 = ((v40 + (v80 * v47)) + (v81 * v48)) + (v82 * v49);
              if (v88 < v42)
              {
                v89 = v42;
              }
            }

            v90 = ((v40 + (v80 * v50)) + (v81 * v51)) + (v82 * v52);
            *v57 = llroundf(v89);
            v91 = v43;
            if (v90 <= v43)
            {
              if (v90 < v42)
              {
                v91 = v42;
              }

              else
              {
                v91 = v90;
              }
            }

            v57[1] = llroundf(v91);
            v57 += 2;
          }

          v92 = v33 * ((v85 >> v65) - v31);
          v93 = v76 + v92;
          v94 = v77 + v92;
          v95 = v78 + v92;
          v96 = (((v45 * v94) + (v44 * v93)) + (v46 * v95)) + v39;
          v97 = v41;
          if (v96 <= v41)
          {
            v97 = (((v45 * v94) + (v44 * v93)) + (v46 * v95)) + v39;
            if (v96 < v39)
            {
              v97 = v39;
            }
          }

          v58[1] = llroundf(v97);
          if (v57)
          {
            v98 = ((v40 + (v93 * v47)) + (v94 * v48)) + (v95 * v49);
            v99 = v43;
            if (v98 <= v43)
            {
              v99 = ((v40 + (v93 * v47)) + (v94 * v48)) + (v95 * v49);
              if (v98 < v42)
              {
                v99 = v42;
              }
            }

            v100 = ((v40 + (v93 * v50)) + (v94 * v51)) + (v95 * v52);
            *v57 = llroundf(v99);
            v101 = v43;
            if (v100 <= v43)
            {
              if (v100 < v42)
              {
                v101 = v42;
              }

              else
              {
                v101 = v100;
              }
            }

            v57[1] = llroundf(v101);
            v57 += 2;
          }

          v102 = v33 * ((v86 >> v65) - v31);
          v103 = v76 + v102;
          v104 = v77 + v102;
          v105 = v78 + v102;
          v106 = (((v45 * v104) + (v44 * v103)) + (v46 * v105)) + v39;
          v107 = v41;
          if (v106 <= v41)
          {
            v107 = (((v45 * v104) + (v44 * v103)) + (v46 * v105)) + v39;
            if (v106 < v39)
            {
              v107 = v39;
            }
          }

          *v71 = llroundf(v107);
          if (v72)
          {
            v108 = ((v40 + (v103 * v47)) + (v104 * v48)) + (v105 * v49);
            v109 = v43;
            if (v108 <= v43)
            {
              v109 = ((v40 + (v103 * v47)) + (v104 * v48)) + (v105 * v49);
              if (v108 < v42)
              {
                v109 = v42;
              }
            }

            v110 = ((v40 + (v103 * v50)) + (v104 * v51)) + (v105 * v52);
            *v72 = llroundf(v109);
            v111 = v43;
            if (v110 <= v43)
            {
              if (v110 < v42)
              {
                v111 = v42;
              }

              else
              {
                v111 = v110;
              }
            }

            v72[1] = llroundf(v111);
            v112 = v72 + 2;
          }

          else
          {
            v112 = 0;
          }

          v113 = v33 * ((v87 >> v65) - v31);
          v114 = v76 + v113;
          v115 = v77 + v113;
          v116 = v78 + v113;
          v117 = (((v45 * v115) + (v44 * v114)) + (v46 * v116)) + v39;
          v118 = v41;
          if (v117 <= v41)
          {
            v118 = (((v45 * v115) + (v44 * v114)) + (v46 * v116)) + v39;
            if (v117 < v39)
            {
              v118 = v39;
            }
          }

          v71[1] = llroundf(v118);
          if (v112)
          {
            v119 = ((v40 + (v114 * v47)) + (v115 * v48)) + (v116 * v49);
            v120 = v43;
            if (v119 <= v43)
            {
              v120 = ((v40 + (v114 * v47)) + (v115 * v48)) + (v116 * v49);
              if (v119 < v42)
              {
                v120 = v42;
              }
            }

            v121 = ((v40 + (v114 * v50)) + (v115 * v51)) + (v116 * v52);
            *v112 = llroundf(v120);
            v122 = v43;
            if (v121 <= v43)
            {
              v122 = v121;
              if (v121 < v42)
              {
                v122 = v42;
              }
            }

            v112[1] = llroundf(v122);
            v72 = v112 + 2;
          }

          else
          {
            v72 = 0;
          }

          v61 += 4;
          v70 += 4;
          v58 += 2;
          v71 += 2;
          v69 += 2;
        }

        while (v69 < v23);
      }

      v61 = &v66[v24];
      v64 += v25;
      v58 = &v67[v26];
      v57 = &v68[v27];
      v21 += 2;
    }

    while (v21 < v12);
  }

  if (v139 && v19)
  {
    if (v12 >= 1)
    {
      v123 = 0;
      v124 = v139 + v17 * v137 + 2 * v138;
      do
      {
        if (v8 >= 1)
        {
          v125 = v8;
          v126 = v20;
          v127 = v124;
          do
          {
            v128 = *v127++;
            *v126++ = llroundf(v128 * 0.0038911);
            --v125;
          }

          while (v125);
        }

        v124 += v17;
        v20 += v18;
        ++v123;
      }

      while (v12 > v123);
    }
  }

  else if (v19 && v12 >= 1)
  {
    v129 = 0;
    v130 = vdupq_n_s64(v8 - 1);
    do
    {
      if (v8 >= 1)
      {
        v131 = 0;
        do
        {
          v132 = vdupq_n_s64(v131);
          v133 = vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v133, *v130.i8), *v130.i8).u8[0])
          {
            v20[v131] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v133, *&v130), *&v130).i8[1])
          {
            v20[v131 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v130, vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDDA0)))), *&v130).i8[2])
          {
            v20[v131 + 2] = -1;
            v20[v131 + 3] = -1;
          }

          v134 = vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v130, vuzp1_s16(v134, *&v130)).i32[1])
          {
            v20[v131 + 4] = -1;
          }

          if (vuzp1_s8(*&v130, vuzp1_s16(v134, *&v130)).i8[5])
          {
            v20[v131 + 5] = -1;
          }

          if (vuzp1_s8(*&v130, vuzp1_s16(*&v130, vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDD80))))).i8[6])
          {
            v20[v131 + 6] = -1;
            v20[v131 + 7] = -1;
          }

          v135 = vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v135, *v130.i8), *v130.i8).u8[0])
          {
            v20[v131 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v135, *&v130), *&v130).i8[1])
          {
            v20[v131 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v130, vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDD60)))), *&v130).i8[2])
          {
            v20[v131 + 10] = -1;
            v20[v131 + 11] = -1;
          }

          v136 = vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v130, vuzp1_s16(v136, *&v130)).i32[1])
          {
            v20[v131 + 12] = -1;
          }

          if (vuzp1_s8(*&v130, vuzp1_s16(v136, *&v130)).i8[5])
          {
            v20[v131 + 13] = -1;
          }

          if (vuzp1_s8(*&v130, vuzp1_s16(*&v130, vmovn_s64(vcgeq_u64(v130, vorrq_s8(v132, xmmword_18FECDD40))))).i8[6])
          {
            v20[v131 + 14] = -1;
            v20[v131 + 15] = -1;
          }

          v131 += 16;
        }

        while (((v8 + 15) & 0xFFFFFFFFFFFFFFF0) != v131);
      }

      v20 += v18;
      ++v129;
    }

    while (v12 > v129);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = 2 * (v24 + v25) + 2, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (*a8 * v53 + 2 * (v45 + v24) > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 4 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && 2 * v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

float32x2_t *vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(float32x2_t *result, uint64_t a2, float32x4_t a3, double a4, int16x4_t a5)
{
  v5 = 2 * result->u8[0];
  v326 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v5);
  v327 = *(&result[4] + 4);
  v6 = result[14];
  v7 = result[13];
  v343 = result[12];
  v333 = result;
  v8 = *&v7 * a2 / v5;
  v9 = *&result[15] + 2 * v8;
  v10 = 2 * ((*&v7 + *&v7 * a2) / v5 - v8);
  v11 = result[7];
  v12 = result[8];
  v13 = result[16];
  v14 = result[17];
  v325 = v12[2];
  v329 = v11[2];
  v331 = v14[2];
  v328 = v13[2];
  v330 = v328 + v331 * v9 + 2 * *&v6;
  if (v10 >= 1)
  {
    v15 = 0;
    v16 = result[19];
    v17 = *v12;
    v18 = v12[1];
    v19 = *v14;
    v20 = v14[1];
    v21 = v16[17].u16[2];
    v22 = v16[17].u16[3];
    a5.i32[0] = v16->i32[0];
    a3.i32[0] = v16[3].i32[1];
    v23 = v16[18].u16[0];
    v24 = v16[18].u16[1];
    v25 = v16[18].u16[2];
    v26 = v16[18].u16[3];
    v27 = v16[19].u16[0];
    _S11 = v16[4].f32[1];
    _S9 = v16[5].f32[0];
    _S3 = v16[5].f32[1];
    _S15 = v16[6].i32[0];
    _S5 = v16[6].i32[1];
    _S12 = v16[7].i32[0];
    result = (v16 + 16548);
    v34 = 8191.0 / v16[16].u32[0];
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    _S31 = v34 * v16->f32[0];
    v42 = &v16[20] + 4;
    *a5.i16 = v21;
    v43 = &v16[4116] + 4;
    __asm { FCVT            H6, S31 }

    v389 = vdupq_lane_s16(a5, 0);
    v390 = _H6;
    v49 = -v22;
    a3.i32[1] = v16[1].i32[0];
    *a3.f32 = vmul_n_f32(*a3.f32, v34);
    v393 = a3.i64[0];
    v50 = vdupq_lane_s32(vcvt_f16_f32(a3), 0);
    *a3.f32 = vmul_n_f32(v16[2], v34);
    v392 = a3.i64[0];
    v387 = vdupq_lane_s32(vcvt_f16_f32(a3), 0);
    v388 = v50;
    _Q0 = vmulq_n_f16(v387, v49);
    v385 = _Q0;
    v386 = vmulq_n_f16(v50, v49);
    __asm { FCVT            H0, S11 }

    v406 = *_Q0.i16;
    __asm { FCVT            H0, S9 }

    v405 = *_Q0.i16;
    __asm { FCVT            H0, S3 }

    v404 = *_Q0.i16;
    __asm { FCVT            H0, S15 }

    v403 = *_Q0.i16;
    *_Q0.i16 = v23;
    v52 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v24;
    v53 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v25;
    v54 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v26;
    v55 = vdupq_lane_s16(*_Q0.i8, 0);
    v401 = v55;
    v402 = v53;
    *v55.i16 = v27;
    v400 = vdupq_lane_s16(*v55.i8, 0);
    v56 = v16[16].u8[4];
    if (v56 >= 0x11)
    {
      v57 = 0;
    }

    else
    {
      v57 = 16 - v56;
    }

    v58 = v16[15].u8[4];
    v59 = 16 - v58;
    if (v58 >= 0x11)
    {
      v59 = 0;
    }

    v60 = v13[1];
    if (v60)
    {
      v61 = (v60 + v20 * v9 + 2 * *&v6);
    }

    else
    {
      v61 = 0;
    }

    v62 = (*v13 + v19 * v9 + 2 * *&v6);
    v63 = (v11[1] + v18 * (v326 / 2) + 2 * v327);
    v64 = (*v11 + v17 * v326 + 2 * v327);
    v65 = v59;
    v66 = v57;
    __asm { FCVT            H0, S5 }

    v399 = _H0;
    v382 = v16[7].f32[1];
    _S18 = v16[8].f32[1];
    v391 = v16[13].f32[0];
    __asm
    {
      FCVT            H6, S12
      FCVT            H1, S1
    }

    v397 = _H1;
    v398 = _H6;
    v407 = v16[8].f32[0];
    __asm { FCVT            H1, S4 }

    v396 = _H1;
    __asm { FCVT            H8, S18 }

    v395 = _H8;
    v366 = v16[13].f32[1];
    __asm { FCVT            H8, S14 }

    v365 = v16[14].f32[0];
    __asm { FCVT            H0, S0 }

    v361 = _H0;
    v362 = _H8;
    v364 = v16[14].f32[1];
    __asm { FCVT            H0, S1 }

    v360 = _H0;
    v363 = v16[15].f32[0];
    __asm { FCVT            H0, S6 }

    v359 = _H0;
    v379 = v16[9].f32[0];
    __asm { FCVT            H0, S2 }

    v358 = _H0;
    v378 = v16[9].f32[1];
    __asm { FCVT            H0, S7 }

    v357 = _H0;
    v377 = v16[10].f32[0];
    __asm { FCVT            H0, S16 }

    v356 = _H0;
    v376 = v16[10].f32[1];
    __asm { FCVT            H0, S20 }

    v355 = _H0;
    v375 = v16[11].f32[0];
    __asm { FCVT            H0, S22 }

    v354 = _H0;
    v373 = v16[11].f32[1];
    __asm { FCVT            H0, S25 }

    v353 = _H0;
    v371 = v16[12].f32[0];
    __asm { FCVT            H0, S26 }

    v352 = _H0;
    v369 = v16[12].f32[1];
    __asm { FCVT            H0, S27 }

    v351 = _H0;
    v349 = vdupq_n_s16(v57);
    v350 = vdupq_n_s16(-v59);
    _S0 = v391;
    __asm { FCVT            H0, S0 }

    v348 = *&_S0;
    v337 = v18;
    v338 = v10;
    v341 = v19;
    v342 = v17;
    v340 = v20;
    v394 = v36;
    v384 = v35;
    v383 = v54;
    v381 = v52;
    v380 = _S18;
    v374 = v39;
    v372 = v16[7].f32[0];
    v370 = v24;
    v368 = v16[6].f32[1];
    v367 = v16[6].f32[0];
    v335 = v16[4].f32[1];
    v336 = v16[5].f32[0];
    v334 = v16[5].f32[1];
    do
    {
      v86 = (v62 + v19);
      v87 = (v61 + v20);
      v346 = &v62->i8[v19];
      v347 = v63;
      v344 = &v64->i8[v17];
      v345 = v61 + v20;
      if (v343 < 8)
      {
        v172 = 0;
        v89 = (v64 + v17);
      }

      else
      {
        v339 = v15;
        v88 = 0;
        v89 = (v64 + v17);
        do
        {
          v90 = *v63++;
          v91 = vcvtq_f16_u16(vshlq_u16(v90, v350));
          v92 = vmlaq_f16(v386, v388, v91);
          v93 = vmlaq_f16(v385, v387, v91);
          v94 = vtrn2q_s16(v92, v92);
          v95 = vtrn1q_s16(v92, v92);
          v96 = vuzp1q_s16(v93, v91);
          *v96.i8 = vadd_f16(*v96.i8, *&vuzp2q_s16(v93, v96));
          v97 = vzip1q_s16(v96, v96);
          v98 = *v64++;
          v99 = vcvtq_f16_u16(vshlq_u16(v98, v350));
          v100 = *v89++;
          v101 = vsubq_f16(v99, v389);
          v102 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v100, v350)), v389);
          v103 = vmlaq_n_f16(v94, v101, v390);
          v104 = vmlaq_n_f16(v94, v102, v390);
          v105 = vmlaq_n_f16(v97, v101, v390);
          v106 = vmlaq_n_f16(v97, v102, v390);
          v107 = vmlaq_n_f16(v95, v101, v390);
          v108 = vmlaq_n_f16(v95, v102, v390);
          v109.i64[0] = 0x9000900090009000;
          v109.i64[1] = 0x9000900090009000;
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v103, 0), v109));
          v111.i16[0] = *&v42[2 * v110.u16[0]];
          v111.i16[1] = *&v42[2 * v110.u16[1]];
          v111.i16[2] = *&v42[2 * v110.u16[2]];
          v111.i16[3] = *&v42[2 * v110.u16[3]];
          v111.i16[4] = *&v42[2 * v110.u16[4]];
          v111.i16[5] = *&v42[2 * v110.u16[5]];
          v111.i16[6] = *&v42[2 * v110.u16[6]];
          v111.i16[7] = *&v42[2 * v110.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v109));
          v110.i16[0] = *&v42[2 * v112.u16[0]];
          v110.i16[1] = *&v42[2 * v112.u16[1]];
          v110.i16[2] = *&v42[2 * v112.u16[2]];
          v110.i16[3] = *&v42[2 * v112.u16[3]];
          v110.i16[4] = *&v42[2 * v112.u16[4]];
          v110.i16[5] = *&v42[2 * v112.u16[5]];
          v110.i16[6] = *&v42[2 * v112.u16[6]];
          v110.i16[7] = *&v42[2 * v112.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v109));
          v114.i16[0] = *&v42[2 * v113.u16[0]];
          v114.i16[1] = *&v42[2 * v113.u16[1]];
          v114.i16[2] = *&v42[2 * v113.u16[2]];
          v114.i16[3] = *&v42[2 * v113.u16[3]];
          v114.i16[4] = *&v42[2 * v113.u16[4]];
          v114.i16[5] = *&v42[2 * v113.u16[5]];
          v114.i16[6] = *&v42[2 * v113.u16[6]];
          v114.i16[7] = *&v42[2 * v113.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v109));
          v104.i16[0] = *&v42[2 * v115.u16[0]];
          v104.i16[1] = *&v42[2 * v115.u16[1]];
          v104.i16[2] = *&v42[2 * v115.u16[2]];
          v104.i16[3] = *&v42[2 * v115.u16[3]];
          v104.i16[4] = *&v42[2 * v115.u16[4]];
          v104.i16[5] = *&v42[2 * v115.u16[5]];
          v104.i16[6] = *&v42[2 * v115.u16[6]];
          v104.i16[7] = *&v42[2 * v115.u16[7]];
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v109));
          v106.i16[0] = *&v42[2 * v116.u16[0]];
          v106.i16[1] = *&v42[2 * v116.u16[1]];
          v106.i16[2] = *&v42[2 * v116.u16[2]];
          v106.i16[3] = *&v42[2 * v116.u16[3]];
          v106.i16[4] = *&v42[2 * v116.u16[4]];
          v106.i16[5] = *&v42[2 * v116.u16[5]];
          v106.i16[6] = *&v42[2 * v116.u16[6]];
          v106.i16[7] = *&v42[2 * v116.u16[7]];
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v109));
          v107.i16[0] = *&v42[2 * v117.u16[0]];
          v107.i16[1] = *&v42[2 * v117.u16[1]];
          v107.i16[2] = *&v42[2 * v117.u16[2]];
          v107.i16[3] = *&v42[2 * v117.u16[3]];
          v107.i16[4] = *&v42[2 * v117.u16[4]];
          v107.i16[5] = *&v42[2 * v117.u16[5]];
          v107.i16[6] = *&v42[2 * v117.u16[6]];
          v107.i16[7] = *&v42[2 * v117.u16[7]];
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v362), v110, v361), v114, v360), vmaxq_f16(vmaxq_f16(v111, v110), v114), v359), 0), v109));
          v103.i16[0] = result->i16[v118.u16[0]];
          v103.i16[1] = result->i16[v118.u16[1]];
          v103.i16[2] = result->i16[v118.u16[2]];
          v103.i16[3] = result->i16[v118.u16[3]];
          v103.i16[4] = result->i16[v118.u16[4]];
          v103.i16[5] = result->i16[v118.u16[5]];
          v103.i16[6] = result->i16[v118.u16[6]];
          v103.i16[7] = result->i16[v118.u16[7]];
          v119 = vmulq_f16(v111, v103);
          v120 = vmulq_f16(v110, v103);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v362), v106, v361), v107, v360), vmaxq_f16(vmaxq_f16(v104, v106), v107), v359), 0), v109));
          v108.i16[0] = result->i16[v121.u16[0]];
          v122 = vmulq_f16(v114, v103);
          v108.i16[1] = result->i16[v121.u16[1]];
          v108.i16[2] = result->i16[v121.u16[2]];
          v108.i16[3] = result->i16[v121.u16[3]];
          v108.i16[4] = result->i16[v121.u16[4]];
          v108.i16[5] = result->i16[v121.u16[5]];
          v108.i16[6] = result->i16[v121.u16[6]];
          v108.i16[7] = result->i16[v121.u16[7]];
          v123 = vmulq_f16(v104, v108);
          v124 = vmulq_f16(v106, v108);
          v125 = vmulq_f16(v107, v108);
          v126 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v119, v355), v120, v354), v122, v353);
          v127 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v348), v120, v351), v119, v352);
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v119, v358), v120, v357), v122, v356), 0), v109));
          v129 = v128.u16[0];
          v130 = v128.u16[1];
          v131 = v128.u16[2];
          v132 = v128.u16[3];
          v133 = v128.u16[4];
          v134 = v128.u16[5];
          v135 = v128.u16[6];
          v136 = v128.u16[7];
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v126, 0), v109));
          v138 = v137.u16[0];
          v139 = v137.u16[1];
          v140 = v137.u16[2];
          v141 = v137.u16[3];
          v142 = v137.u16[4];
          v143 = v137.u16[5];
          v144 = v137.u16[6];
          v145 = v137.u16[7];
          v146.i16[0] = *&v43[2 * v129];
          v146.i16[1] = *&v43[2 * v130];
          v146.i16[2] = *&v43[2 * v131];
          v146.i16[3] = *&v43[2 * v132];
          v146.i16[4] = *&v43[2 * v133];
          v146.i16[5] = *&v43[2 * v134];
          v146.i16[6] = *&v43[2 * v135];
          v146.i16[7] = *&v43[2 * v136];
          v147 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v127, 0), v109));
          v148 = v147.u16[0];
          v149 = v147.u16[1];
          v150 = v147.u16[2];
          LOWORD(v129) = v147.i16[3];
          v151 = v147.u16[4];
          v152 = v147.u16[5];
          v153 = v147.u16[6];
          v154 = v147.u16[7];
          v155.i16[0] = *&v43[2 * v138];
          v155.i16[1] = *&v43[2 * v139];
          v155.i16[2] = *&v43[2 * v140];
          v155.i16[3] = *&v43[2 * v141];
          v155.i16[4] = *&v43[2 * v142];
          v155.i16[5] = *&v43[2 * v143];
          v155.i16[6] = *&v43[2 * v144];
          v155.i16[7] = *&v43[2 * v145];
          v156 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v123, v358), v124, v357), v125, v356), 0), v109));
          v157.i16[0] = *&v43[2 * v148];
          v157.i16[1] = *&v43[2 * v149];
          v157.i16[2] = *&v43[2 * v150];
          v157.i16[3] = *&v43[2 * v129];
          v157.i16[4] = *&v43[2 * v151];
          v157.i16[5] = *&v43[2 * v152];
          v157.i16[6] = *&v43[2 * v153];
          v157.i16[7] = *&v43[2 * v154];
          v158 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v123, v355), v124, v354), v125, v353), 0), v109));
          v159 = v158.u16[0];
          v160 = v158.u16[1];
          v161 = v158.u16[2];
          v162 = v158.u16[3];
          v163 = v158.u16[4];
          v164 = v158.u16[5];
          v165 = v158.u16[6];
          LOWORD(v148) = v158.i16[7];
          v166.i16[0] = *&v43[2 * v156.u16[0]];
          v166.i16[1] = *&v43[2 * v156.u16[1]];
          v166.i16[2] = *&v43[2 * v156.u16[2]];
          v166.i16[3] = *&v43[2 * v156.u16[3]];
          v166.i16[4] = *&v43[2 * v156.u16[4]];
          v166.i16[5] = *&v43[2 * v156.u16[5]];
          v166.i16[6] = *&v43[2 * v156.u16[6]];
          v166.i16[7] = *&v43[2 * v156.u16[7]];
          v167 = vmlaq_n_f16(vmulq_n_f16(v125, v348), v124, v351);
          v168.i16[0] = *&v43[2 * v159];
          v168.i16[1] = *&v43[2 * v160];
          v168.i16[2] = *&v43[2 * v161];
          v168.i16[3] = *&v43[2 * v162];
          v168.i16[4] = *&v43[2 * v163];
          v168.i16[5] = *&v43[2 * v164];
          v168.i16[6] = *&v43[2 * v165];
          v168.i16[7] = *&v43[2 * v148];
          v169 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v167, v123, v352), 0), v109));
          v170.i16[0] = *&v43[2 * v169.u16[0]];
          v170.i16[1] = *&v43[2 * v169.u16[1]];
          v170.i16[2] = *&v43[2 * v169.u16[2]];
          v170.i16[3] = *&v43[2 * v169.u16[3]];
          v170.i16[4] = *&v43[2 * v169.u16[4]];
          v170.i16[5] = *&v43[2 * v169.u16[5]];
          v170.i16[6] = *&v43[2 * v169.u16[6]];
          v170.i16[7] = *&v43[2 * v169.u16[7]];
          *v62++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v52, v146, v406), v155, v405), v157, v404), v52), v383)), v349);
          if (v61)
          {
            v171 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v402, v146, v397), v155, v396), v157, v395);
            v408.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v402, v146, v403), v155, v399), v157, v398), v401), v400), v401), v400)), v349);
            v408.val[1] = vshlq_u16(vcvtq_u16_f16(v171), v349);
            vst2q_s16(v61, v408);
            v61 += 16;
          }

          *v86++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v52, v166, v406), v168, v405), v170, v404), v52), v383)), v349);
          if (v87)
          {
            v409.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v402, v166, v403), v168, v399), v170, v398), v401), v400), v401), v400)), v349);
            v409.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v402, v166, v397), v168, v396), v170, v395)), v349);
            vst2q_s16(v87, v409);
            v87 += 16;
          }

          v88 += 8;
        }

        while (v88 < v343 - 7);
        v172 = v343 & 0xFFFFFFF8;
        v18 = v337;
        v10 = v338;
        v15 = v339;
        _S11 = v335;
        _S9 = v336;
        _S3 = v334;
        v36 = v394;
      }

      while (v172 < (v343 & 0xFFFFFFFE))
      {
        v173 = (v63->u16[1] >> v65) - v36;
        v174 = *(&v393 + 1) * v173;
        v175 = _S31 * ((v64->u16[0] >> v65) - v35);
        v176 = (*(&v393 + 1) * v173) + v175;
        v177 = 8191.0;
        if (v176 <= 8191.0)
        {
          v177 = (*(&v393 + 1) * v173) + v175;
          if (v176 < 0.0)
          {
            v177 = 0.0;
          }
        }

        v178 = (v63->u16[0] >> v65) - v36;
        v179 = (*(&v392 + 1) * v173) + (v178 * *&v392);
        v180 = 8191.0;
        if ((v175 + v179) <= 8191.0)
        {
          v180 = v175 + v179;
          if ((v175 + v179) < 0.0)
          {
            v180 = 0.0;
          }
        }

        v181 = *&v393 * v178;
        v182 = (*&v393 * v178) + v175;
        v183 = 8191.0;
        if (v182 <= 8191.0)
        {
          v183 = v182;
          if (v182 < 0.0)
          {
            v183 = 0.0;
          }
        }

        v184 = _S31 * ((v64->u16[1] >> v65) - v35);
        v185 = 8191.0;
        if ((v174 + v184) <= 8191.0)
        {
          v185 = v174 + v184;
          if ((v174 + v184) < 0.0)
          {
            v185 = 0.0;
          }
        }

        v186 = 8191.0;
        if ((v179 + v184) <= 8191.0)
        {
          v186 = v179 + v184;
          if ((v179 + v184) < 0.0)
          {
            v186 = 0.0;
          }
        }

        v187 = v181 + v184;
        v188 = 8191.0;
        if (v187 <= 8191.0)
        {
          v188 = v187;
          if (v187 < 0.0)
          {
            v188 = 0.0;
          }
        }

        v189 = _S31 * ((v89->u16[0] >> v65) - v35);
        v190 = 8191.0;
        if ((v174 + v189) <= 8191.0)
        {
          v190 = v174 + v189;
          if ((v174 + v189) < 0.0)
          {
            v190 = 0.0;
          }
        }

        v191 = 8191.0;
        if ((v179 + v189) <= 8191.0)
        {
          v191 = v179 + v189;
          if ((v179 + v189) < 0.0)
          {
            v191 = 0.0;
          }
        }

        v192 = v181 + v189;
        v193 = 8191.0;
        if (v192 <= 8191.0)
        {
          v193 = v192;
          if (v192 < 0.0)
          {
            v193 = 0.0;
          }
        }

        v194 = _S31 * ((v89->u16[1] >> v65) - v35);
        v195 = v174 + v194;
        v196 = (v174 + v194) <= 8191.0;
        v197 = 8191.0;
        if (v196)
        {
          v197 = v195;
          if (v195 < 0.0)
          {
            v197 = 0.0;
          }
        }

        v198 = 8191.0;
        if ((v179 + v194) <= 8191.0)
        {
          v198 = v179 + v194;
          if ((v179 + v194) < 0.0)
          {
            v198 = 0.0;
          }
        }

        v199 = 8191.0;
        if ((v181 + v194) <= 8191.0)
        {
          v199 = v181 + v194;
          if ((v181 + v194) < 0.0)
          {
            v199 = 0.0;
          }
        }

        v200 = _S31;
        _H0 = *&v42[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v42[2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v42[2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H20 = *&v42[2 * llroundf(fminf(fmaxf(v185, 0.0), 8191.0))];
        _H22 = *&v42[2 * llroundf(fminf(fmaxf(v186, 0.0), 8191.0))];
        _H23 = *&v42[2 * llroundf(fminf(fmaxf(v188, 0.0), 8191.0))];
        _H30 = *&v42[2 * llroundf(fminf(fmaxf(v190, 0.0), 8191.0))];
        _H12 = *&v42[2 * llroundf(fminf(fmaxf(v191, 0.0), 8191.0))];
        _H14 = *&v42[2 * llroundf(fminf(fmaxf(v193, 0.0), 8191.0))];
        _H26 = *&v42[2 * llroundf(fminf(fmaxf(v197, 0.0), 8191.0))];
        _H27 = *&v42[2 * llroundf(fminf(fmaxf(v198, 0.0), 8191.0))];
        _H6 = *&v42[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        v216 = (((v365 * _S1) + (v366 * _S0)) + (v364 * _S2)) + (v363 * fmaxf(_S0, fmaxf(_S1, _S2)));
        v217 = 8191.0;
        if (v216 <= 8191.0)
        {
          v217 = v216;
          if (v216 < 0.0)
          {
            v217 = 0.0;
          }
        }

        v218 = v37;
        __asm
        {
          FCVT            S7, H20
          FCVT            S20, H22
          FCVT            S22, H23
        }

        _H29 = result->i16[llroundf(v217)];
        v223 = (((v365 * _S20) + (v366 * _S7)) + (v364 * _S22)) + (v363 * fmaxf(_S7, fmaxf(_S20, _S22)));
        v224 = 8191.0;
        if (v223 <= 8191.0)
        {
          v224 = v223;
          if (v223 < 0.0)
          {
            v224 = 0.0;
          }
        }

        v225 = _S9;
        __asm
        {
          FCVT            S30, H30
          FCVT            S12, H12
          FCVT            S14, H14
        }

        _H28 = result->i16[llroundf(v224)];
        v230 = (((v365 * _S12) + (v366 * _S30)) + (v364 * _S14)) + (v363 * fmaxf(_S30, fmaxf(_S12, _S14)));
        v231 = 8191.0;
        if (v230 <= 8191.0)
        {
          v231 = v230;
          if (v230 < 0.0)
          {
            v231 = 0.0;
          }
        }

        __asm
        {
          FCVT            S23, H26
          FCVT            S26, H27
          FCVT            S6, H6
        }

        _H27 = result->i16[llroundf(v231)];
        v236 = (((v365 * _S26) + (v366 * _S23)) + (v364 * _S6)) + (v363 * fmaxf(_S23, fmaxf(_S26, _S6)));
        v237 = 8191.0;
        if (v236 <= 8191.0)
        {
          v237 = v236;
          if (v236 < 0.0)
          {
            v237 = 0.0;
          }
        }

        __asm { FCVT            S16, H29 }

        v239 = _S0 * _S16;
        v240 = _S1 * _S16;
        v241 = _S2 * _S16;
        __asm { FCVT            S16, H28 }

        v243 = _S7 * _S16;
        v244 = _S20 * _S16;
        v245 = _S22 * _S16;
        __asm { FCVT            S22, H27 }

        v247 = _S30 * _S22;
        v248 = _S12 * _S22;
        v249 = _S14 * _S22;
        _H29 = result->i16[llroundf(v237)];
        __asm { FCVT            S29, H29 }

        v252 = _S23 * _S29;
        v253 = _S26 * _S29;
        _S6 = _S6 * _S29;
        v255 = ((v378 * v240) + (v239 * v379)) + (v241 * v377);
        v256 = ((v375 * v240) + (v239 * v376)) + (v241 * v373);
        _S0 = ((v369 * v240) + (v239 * v371)) + (v241 * v391);
        v258 = ((v378 * v244) + (v243 * v379)) + (v245 * v377);
        v259 = ((v375 * v244) + (v243 * v376)) + (v245 * v373);
        v260 = ((v369 * v244) + (v243 * v371)) + (v245 * v391);
        v261 = ((v378 * v248) + (v247 * v379)) + (v249 * v377);
        v262 = ((v375 * v248) + (v247 * v376)) + (v249 * v373);
        v263 = ((v369 * v248) + (v247 * v371)) + (v249 * v391);
        v264 = ((v378 * v253) + (v252 * v379)) + (_S6 * v377);
        v265 = ((v375 * v253) + (v252 * v376)) + (_S6 * v373);
        v266 = ((v369 * v253) + (v252 * v371)) + (_S6 * v391);
        LOWORD(_S6) = *&v43[2 * llroundf(fminf(fmaxf(v255, 0.0), 8191.0))];
        __asm { FCVT            S29, H6 }

        LOWORD(_S6) = *&v43[2 * llroundf(fminf(fmaxf(v256, 0.0), 8191.0))];
        __asm { FCVT            S30, H6 }

        LOWORD(_S0) = *&v43[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S14, H0 }

        _H22 = *&v43[2 * llroundf(fminf(fmaxf(v258, 0.0), 8191.0))];
        _H27 = *&v43[2 * llroundf(fminf(fmaxf(v259, 0.0), 8191.0))];
        _H6 = *&v43[2 * llroundf(fminf(fmaxf(v260, 0.0), 8191.0))];
        _H7 = *&v43[2 * llroundf(fminf(fmaxf(v261, 0.0), 8191.0))];
        _H20 = *&v43[2 * llroundf(fminf(fmaxf(v262, 0.0), 8191.0))];
        _H26 = *&v43[2 * llroundf(fminf(fmaxf(v263, 0.0), 8191.0))];
        _H0 = *&v43[2 * llroundf(fminf(fmaxf(v264, 0.0), 8191.0))];
        _H1 = *&v43[2 * llroundf(fminf(fmaxf(v265, 0.0), 8191.0))];
        _H2 = *&v43[2 * llroundf(fminf(fmaxf(v266, 0.0), 8191.0))];
        _S9 = v225;
        v279 = ((v225 * _S30) + (_S11 * _S29)) + (_S3 * _S14);
        v37 = v218;
        v280 = v279 + v218;
        v281 = v38;
        if (v280 <= v38)
        {
          v281 = v280;
          if (v280 < v218)
          {
            v281 = v218;
          }
        }

        v62->i16[0] = llroundf(v281) << v66;
        _S31 = v200;
        if (v61)
        {
          v282 = v368;
          v283 = v372;
          v284 = ((v370 + (_S29 * v367)) + (_S30 * v368)) + (_S14 * v372);
          v285 = v40;
          v286 = v374;
          v287 = v382;
          v288 = v367;
          if (v284 <= v40)
          {
            v285 = ((v370 + (_S29 * v367)) + (_S30 * v368)) + (_S14 * v372);
            if (v284 < v374)
            {
              v285 = v374;
            }
          }

          v289 = v380;
          v290 = ((v370 + (_S29 * v382)) + (_S30 * v407)) + (_S14 * v380);
          *v61 = llroundf(v285) << v66;
          v291 = v40;
          v52 = v381;
          if (v290 <= v40)
          {
            v291 = ((v370 + (_S29 * v382)) + (_S30 * v407)) + (_S14 * v380);
            if (v290 < v374)
            {
              v291 = v374;
            }
          }

          v61[1] = llroundf(v291) << v66;
          v292 = v61 + 2;
        }

        else
        {
          v292 = 0;
          v282 = v368;
          v283 = v372;
          v286 = v374;
          v52 = v381;
          v287 = v382;
          v289 = v380;
          v288 = v367;
        }

        __asm
        {
          FCVT            S22, H22
          FCVT            S23, H27
          FCVT            S6, H6
        }

        v296 = (((_S9 * _S23) + (_S11 * _S22)) + (_S3 * _S6)) + v37;
        v297 = v38;
        if (v296 <= v38)
        {
          v297 = (((_S9 * _S23) + (_S11 * _S22)) + (_S3 * _S6)) + v37;
          if (v296 < v37)
          {
            v297 = v37;
          }
        }

        v62->i16[1] = llroundf(v297) << v66;
        if (v292)
        {
          v298 = ((v370 + (_S22 * v288)) + (_S23 * v282)) + (_S6 * v283);
          v299 = v40;
          if (v298 <= v40)
          {
            v299 = ((v370 + (_S22 * v288)) + (_S23 * v282)) + (_S6 * v283);
            if (v298 < v286)
            {
              v299 = v286;
            }
          }

          v300 = ((v370 + (_S22 * v287)) + (_S23 * v407)) + (_S6 * v289);
          *v292 = llroundf(v299) << v66;
          v301 = v40;
          if (v300 <= v40)
          {
            v301 = v300;
            if (v300 < v286)
            {
              v301 = v286;
            }
          }

          v292[1] = llroundf(v301) << v66;
          v61 = v292 + 2;
        }

        else
        {
          v61 = 0;
        }

        v35 = v384;
        __asm
        {
          FCVT            S6, H7
          FCVT            S7, H20
          FCVT            S20, H26
        }

        v305 = (((_S9 * _S7) + (_S11 * _S6)) + (_S3 * _S20)) + v37;
        v306 = v38;
        v36 = v394;
        if (v305 <= v38)
        {
          v306 = (((_S9 * _S7) + (_S11 * _S6)) + (_S3 * _S20)) + v37;
          if (v305 < v37)
          {
            v306 = v37;
          }
        }

        v86->i16[0] = llroundf(v306) << v66;
        if (v87)
        {
          v307 = ((v370 + (_S6 * v288)) + (_S7 * v282)) + (_S20 * v283);
          v308 = v40;
          if (v307 <= v40)
          {
            v308 = ((v370 + (_S6 * v288)) + (_S7 * v282)) + (_S20 * v283);
            if (v307 < v286)
            {
              v308 = v286;
            }
          }

          v309 = ((v370 + (_S6 * v287)) + (_S7 * v407)) + (_S20 * v289);
          *v87 = llroundf(v308) << v66;
          v310 = v40;
          if (v309 <= v40)
          {
            v310 = v309;
            if (v309 < v286)
            {
              v310 = v286;
            }
          }

          v87[1] = llroundf(v310) << v66;
          v311 = v87 + 2;
        }

        else
        {
          v311 = 0;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S2, H2
        }

        v315 = (((_S9 * _S1) + (_S11 * _S0)) + (_S3 * _S2)) + v37;
        v316 = v38;
        if (v315 <= v38)
        {
          v316 = (((_S9 * _S1) + (_S11 * _S0)) + (_S3 * _S2)) + v37;
          if (v315 < v37)
          {
            v316 = v37;
          }
        }

        v86->i16[1] = llroundf(v316) << v66;
        if (v311)
        {
          v317 = ((v370 + (_S0 * v288)) + (_S1 * v282)) + (_S2 * v283);
          v318 = v40;
          if (v317 <= v40)
          {
            v318 = ((v370 + (_S0 * v288)) + (_S1 * v282)) + (_S2 * v283);
            if (v317 < v286)
            {
              v318 = v286;
            }
          }

          v319 = ((v370 + (_S0 * v287)) + (_S1 * v407)) + (_S2 * v289);
          *v311 = llroundf(v318) << v66;
          v320 = v40;
          if (v319 <= v40)
          {
            v320 = v319;
            if (v319 < v286)
            {
              v320 = v286;
            }
          }

          v311[1] = llroundf(v320) << v66;
          v87 = v311 + 2;
        }

        else
        {
          v87 = 0;
        }

        v172 += 2;
        v63 = (v63 + 4);
        v64 = (v64 + 4);
        v89 = (v89 + 4);
        v62 = (v62 + 4);
        v86 = (v86 + 4);
      }

      v19 = v341;
      v17 = v342;
      v64 = &v344[v342];
      v63 = (v347 + v18);
      v62 = &v346[v341];
      v20 = v340;
      v61 = &v345[v340];
      v15 += 2;
    }

    while (v15 < v10);
  }

  if (v329 && v328)
  {
    v321 = v330;
    if (v10 >= 1)
    {
      v322 = 0;
      v323 = (v329 + v325 * v326 + 2 * v327);
      do
      {
        result = memcpy(v321, v323, 2 * v343);
        v323 += v325;
        v321 += v331;
        ++v322;
      }

      while (v10 > v322);
    }
  }

  else
  {
    v324 = v330;
    if (v328 && v10 >= 1)
    {
      do
      {
        if (v343 >= 1)
        {
          result = memset(v324, 255, 2 * v343);
        }

        v324 += v331;
        --v10;
      }

      while (v10);
    }
  }

  v333[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = 2 * (v24 + v25) + 2, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (*a8 * v53 + 2 * (v45 + v24) > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 4 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && 2 * v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v9 = result;
  v10 = 2 * *result;
  v224 = *(result + 44) + 2 * (*(result + 28) * a2 / v10);
  v225 = *(result + 36);
  v11 = result[14];
  v229 = result[12];
  v12 = result[13];
  v13 = v12 * a2 / v10;
  v14 = result[15] + 2 * v13;
  v15 = 2 * ((v12 + v12 * a2) / v10 - v13);
  v16 = result[7];
  v17 = result[8];
  v18 = result[16];
  v19 = result[17];
  v20 = v17[2];
  v227 = v16[2];
  v21 = v19[2];
  v226 = v18[2];
  v22 = (v226 + v21 * v14 + 2 * v11);
  if (v15 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = v229 & 0xFFFFFFFE;
    v26 = *v17;
    v27 = v17[1];
    v28 = *v19;
    v29 = v19[1];
    LOWORD(a4) = *(v24 + 140);
    LOWORD(a6) = *(v24 + 142);
    LOWORD(v6) = *(v24 + 144);
    LOWORD(v7) = *(v24 + 146);
    LOWORD(v8) = *(v24 + 148);
    v30 = 8191.0 / *(v24 + 128);
    v31 = LODWORD(a4);
    v32 = LODWORD(a6);
    v33 = v30 * *v24;
    v254 = v30 * *(v24 + 16);
    v255 = v30 * *(v24 + 8);
    v34 = v30 * *(v24 + 20);
    *&v35 = v30 * *(v24 + 28);
    v252 = *&v35;
    v253 = v34;
    v36 = v6;
    v37 = v7;
    v38 = v8;
    LOWORD(v35) = *(v24 + 150);
    v39 = v35;
    LOWORD(v35) = *(v24 + 152);
    v40 = v35;
    v41 = *(v24 + 40);
    v245 = *(v24 + 76);
    v246 = *(v24 + 72);
    v243 = *(v24 + 84);
    v244 = *(v24 + 80);
    v241 = *(v24 + 88);
    v239 = *(v24 + 92);
    v237 = *(v24 + 96);
    v235 = *(v24 + 100);
    v233 = *(v24 + 104);
    result = (v24 + 164);
    v42 = v24 + 16548;
    v44 = *v18;
    v43 = v18[1];
    v45 = (v43 + v29 * v14 + 2 * v11);
    if (!v43)
    {
      v45 = 0;
    }

    v46 = (v44 + v28 * v14 + 2 * v11);
    v47 = *(v24 + 132);
    if (v47 >= 0x11)
    {
      v48 = 0;
    }

    else
    {
      v48 = 16 - v47;
    }

    v49 = *(v24 + 124);
    v50 = 16 - v49;
    _CF = v49 >= 0x11;
    v52 = *v16;
    v53 = v16[1] + v27 * (v224 / 2);
    v54 = v24 + 32932;
    v55 = (v52 + v26 * v224 + 2 * v225);
    if (_CF)
    {
      v56 = 0;
    }

    else
    {
      v56 = v50;
    }

    v57 = v53 + 2 * v225;
    v58 = v48;
    v59 = *(v24 + 108);
    v230 = *(v24 + 112);
    v60 = *(v24 + 116);
    v258 = *(v24 + 120);
    v256 = LODWORD(a6);
    v250 = v33;
    v251 = v31;
    v248 = v39;
    v249 = *(v24 + 56);
    v247 = *(v24 + 68);
    v242 = *(v24 + 52);
    v240 = *(v24 + 36);
    v238 = *(v24 + 64);
    v236 = *(v24 + 48);
    v234 = *(v24 + 60);
    v231 = v59;
    v232 = *(v24 + 44);
    do
    {
      v61 = &v55[v26];
      v62 = &v46[v28];
      v63 = &v45[v29];
      if (v25 >= 1)
      {
        v64 = 0;
        v65 = &v55[v26];
        v66 = &v45[v29];
        v67 = &v46[v28];
        do
        {
          v68 = (v57 + 2 * v64);
          v69 = (v68[1] >> v56) - v32;
          v70 = v255 * v69;
          v71 = v33 * ((*v55 >> v56) - v31);
          v72 = (v255 * v69) + v71;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = (v255 * v69) + v71;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = (*v68 >> v56) - v32;
          v75 = (v253 * v69) + (v74 * v254);
          v76 = 8191.0;
          if ((v71 + v75) <= 8191.0)
          {
            v76 = v71 + v75;
            if ((v71 + v75) < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v252 * v74;
          v78 = (v252 * v74) + v71;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v33 * ((*(v55 + 1) >> v56) - v31);
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

          v86 = v33 * ((*v65 >> v56) - v31);
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

          v91 = v33 * ((*(v65 + 1) >> v56) - v31);
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

          _H0 = *(result + llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S9, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H27 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          _H19 = *(result + llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          _H8 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H29 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H23 = *(result + llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          _H30 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H21 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H22 = *(result + llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H26 = *(result + llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v116 = (((v230 * _S24) + (v59 * _S9)) + (v60 * _S25)) + (v258 * fmaxf(_S9, fmaxf(_S24, _S25)));
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

          _H27 = *(v42 + 2 * llroundf(v117));
          v122 = (((v230 * _S3) + (v59 * _S1)) + (v60 * _S19)) + (v258 * fmaxf(_S1, fmaxf(_S3, _S19)));
          v123 = 8191.0;
          if (v122 <= 8191.0)
          {
            v123 = v122;
            if (v122 < 0.0)
            {
              v123 = 0.0;
            }
          }

          __asm
          {
            FCVT            S28, H29
            FCVT            S23, H23
            FCVT            S29, H30
          }

          _H30 = *(v42 + 2 * llroundf(v123));
          v128 = v60;
          v129 = (((v230 * _S23) + (v59 * _S28)) + (v60 * _S29)) + (v258 * fmaxf(_S28, fmaxf(_S23, _S29)));
          v130 = 8191.0;
          if (v129 <= 8191.0)
          {
            v130 = v129;
            if (v129 < 0.0)
            {
              v130 = 0.0;
            }
          }

          v131 = v37;
          v132 = v41;
          __asm
          {
            FCVT            S21, H21
            FCVT            S22, H22
            FCVT            S26, H26
          }

          _H31 = *(v42 + 2 * llroundf(v130));
          v137 = (((v230 * _S22) + (v59 * _S21)) + (v60 * _S26)) + (v258 * fmaxf(_S21, fmaxf(_S22, _S26)));
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = v137;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          __asm { FCVT            S27, H27 }

          v140 = _S9 * _S27;
          v141 = _S24 * _S27;
          v142 = _S25 * _S27;
          __asm { FCVT            S27, H30 }

          v144 = _S1 * _S27;
          v145 = _S3 * _S27;
          v146 = _S19 * _S27;
          __asm { FCVT            S27, H31 }

          v148 = _S28 * _S27;
          v149 = _S23 * _S27;
          v150 = _S29 * _S27;
          _H0 = *(v42 + 2 * llroundf(v138));
          __asm { FCVT            S0, H0 }

          v153 = _S21 * _S0;
          v154 = _S22 * _S0;
          _S0 = _S26 * _S0;
          v156 = ((v245 * v141) + (v140 * v246)) + (v142 * v244);
          v157 = ((v241 * v141) + (v140 * v243)) + (v142 * v239);
          v158 = ((v235 * v141) + (v140 * v237)) + (v142 * v233);
          v159 = ((v245 * v145) + (v144 * v246)) + (v146 * v244);
          v160 = ((v241 * v145) + (v144 * v243)) + (v146 * v239);
          v161 = ((v235 * v145) + (v144 * v237)) + (v146 * v233);
          v162 = ((v245 * v149) + (v148 * v246)) + (v150 * v244);
          v163 = ((v241 * v149) + (v148 * v243)) + (v150 * v239);
          v164 = ((v235 * v149) + (v148 * v237)) + (v150 * v233);
          v165 = ((v245 * v154) + (v153 * v246)) + (_S0 * v244);
          v166 = ((v241 * v154) + (v153 * v243)) + (_S0 * v239);
          v167 = ((v235 * v154) + (v153 * v237)) + (_S0 * v233);
          LOWORD(_S0) = *(v54 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          LOWORD(_S0) = *(v54 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm { FCVT            S22, H0 }

          LOWORD(_S0) = *(v54 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H1 = *(v54 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          _H3 = *(v54 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          _H19 = *(v54 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          _H26 = *(v54 + 2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0)));
          _H27 = *(v54 + 2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0)));
          _H28 = *(v54 + 2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0)));
          v257 = *(v54 + 2 * llroundf(fminf(fmaxf(v165, 0.0), 8191.0)));
          _H24 = *(v54 + 2 * llroundf(fminf(fmaxf(v166, 0.0), 8191.0)));
          _H25 = *(v54 + 2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0)));
          v41 = v132;
          v179 = (((v132 * _S22) + (v240 * _S21)) + (v232 * _S29)) + v36;
          v180 = v38;
          if (v179 <= v38)
          {
            v180 = (((v132 * _S22) + (v240 * _S21)) + (v232 * _S29)) + v36;
            if (v179 < v36)
            {
              v180 = v36;
            }
          }

          *v46 = llroundf(v180) << v58;
          v33 = v250;
          v37 = v131;
          if (v45)
          {
            v181 = v236;
            v182 = v242;
            v183 = v249;
            v184 = ((v37 + (_S21 * v236)) + (_S22 * v242)) + (_S29 * v249);
            v185 = v40;
            v186 = v128;
            if (v184 <= v40)
            {
              v185 = ((v37 + (_S21 * v236)) + (_S22 * v242)) + (_S29 * v249);
              if (v184 < v248)
              {
                v185 = v248;
              }
            }

            v187 = v238;
            v188 = ((v37 + (_S21 * v234)) + (_S22 * v238)) + (_S29 * v247);
            v189 = v247;
            *v45 = llroundf(v185) << v58;
            v190 = v40;
            v31 = v251;
            v59 = v231;
            if (v188 <= v40)
            {
              v190 = v188;
              if (v188 < v248)
              {
                v190 = v248;
              }
            }

            *(v45 + 1) = llroundf(v190) << v58;
            v45 += 4;
            v191 = v234;
          }

          else
          {
            v31 = v251;
            v182 = v242;
            v183 = v249;
            v191 = v234;
            v187 = v238;
            v189 = v247;
            v59 = v231;
            v186 = v128;
            v181 = v236;
          }

          __asm
          {
            FCVT            S1, H1
            FCVT            S3, H3
            FCVT            S19, H19
          }

          v195 = (((v132 * _S3) + (v240 * _S1)) + (v232 * _S19)) + v36;
          v196 = v38;
          if (v195 <= v38)
          {
            v196 = (((v132 * _S3) + (v240 * _S1)) + (v232 * _S19)) + v36;
            if (v195 < v36)
            {
              v196 = v36;
            }
          }

          *(v46 + 1) = llroundf(v196) << v58;
          v197 = v182;
          if (v45)
          {
            v198 = v183;
            v199 = ((v37 + (_S1 * v181)) + (_S3 * v197)) + (_S19 * v183);
            v200 = v40;
            if (v199 <= v40)
            {
              v200 = ((v37 + (_S1 * v181)) + (_S3 * v197)) + (_S19 * v183);
              if (v199 < v248)
              {
                v200 = v248;
              }
            }

            v201 = ((v37 + (_S1 * v191)) + (_S3 * v187)) + (_S19 * v189);
            *v45 = llroundf(v200) << v58;
            v202 = v40;
            v60 = v186;
            if (v201 <= v40)
            {
              v202 = v201;
              if (v201 < v248)
              {
                v202 = v248;
              }
            }

            *(v45 + 1) = llroundf(v202) << v58;
            v45 += 4;
          }

          else
          {
            v198 = v183;
            v60 = v186;
          }

          __asm
          {
            FCVT            S1, H26
            FCVT            S3, H27
            FCVT            S19, H28
          }

          v206 = (((v132 * _S3) + (v240 * _S1)) + (v232 * _S19)) + v36;
          v207 = v38;
          if (v206 <= v38)
          {
            v207 = (((v132 * _S3) + (v240 * _S1)) + (v232 * _S19)) + v36;
            if (v206 < v36)
            {
              v207 = v36;
            }
          }

          *v67 = llroundf(v207) << v58;
          if (v66)
          {
            v208 = ((v37 + (_S1 * v181)) + (_S3 * v197)) + (_S19 * v198);
            v209 = v40;
            if (v208 <= v40)
            {
              v209 = ((v37 + (_S1 * v181)) + (_S3 * v197)) + (_S19 * v198);
              if (v208 < v248)
              {
                v209 = v248;
              }
            }

            v210 = ((v37 + (_S1 * v191)) + (_S3 * v187)) + (_S19 * v189);
            *v66 = llroundf(v209) << v58;
            v211 = v40;
            if (v210 <= v40)
            {
              v211 = v210;
              if (v210 < v248)
              {
                v211 = v248;
              }
            }

            *(v66 + 1) = llroundf(v211) << v58;
            v66 += 4;
          }

          _H0 = v257;
          __asm
          {
            FCVT            S1, H0
            FCVT            S0, H24
            FCVT            S3, H25
          }

          v216 = (((v132 * _S0) + (v240 * _S1)) + (v232 * _S3)) + v36;
          v217 = v38;
          if (v216 <= v38)
          {
            v217 = (((v132 * _S0) + (v240 * _S1)) + (v232 * _S3)) + v36;
            if (v216 < v36)
            {
              v217 = v36;
            }
          }

          *(v67 + 1) = llroundf(v217) << v58;
          if (v66)
          {
            v218 = ((v37 + (_S1 * v181)) + (_S0 * v197)) + (_S3 * v198);
            v219 = v40;
            if (v218 <= v40)
            {
              v219 = ((v37 + (_S1 * v181)) + (_S0 * v197)) + (_S3 * v198);
              if (v218 < v248)
              {
                v219 = v248;
              }
            }

            v220 = ((v37 + (_S1 * v191)) + (_S0 * v187)) + (_S3 * v189);
            *v66 = llroundf(v219) << v58;
            v221 = v40;
            v32 = v256;
            if (v220 <= v40)
            {
              v221 = v220;
              if (v220 < v248)
              {
                v221 = v248;
              }
            }

            *(v66 + 1) = llroundf(v221) << v58;
            v66 += 4;
          }

          else
          {
            v32 = v256;
          }

          v55 += 4;
          v65 += 4;
          v46 += 4;
          v67 += 4;
          v64 += 2;
        }

        while (v64 < v25);
      }

      v55 = &v61[v26];
      v57 += v27;
      v46 = &v62[v28];
      v45 = &v63[v29];
      v23 += 2;
    }

    while (v23 < v15);
  }

  if (v227 && v226)
  {
    if (v15 >= 1)
    {
      v222 = 0;
      v223 = (v227 + v20 * v224 + 2 * v225);
      do
      {
        result = memcpy(v22, v223, 2 * v229);
        v223 += v20;
        v22 += v21;
        ++v222;
      }

      while (v15 > v222);
    }
  }

  else if (v226 && v15 >= 1)
  {
    do
    {
      if (v229 >= 1)
      {
        result = memset(v22, 255, 2 * v229);
      }

      v22 += v21;
      --v15;
    }

    while (v15);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = 2 * (v24 + v25) + 2, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (*a8 * v53 + 2 * (v45 + v24) > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 4 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && 2 * v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

float32x2_t *vt_Copy_xf420_TRC_Mat_TRC_xf444_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, int16x4_t a4, float32x4_t a5, double a6, double a7, double a8, double a9, float32x4_t _Q7)
{
  v10 = 2 * result->u8[0];
  v258 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v10);
  v259 = *(&result[4] + 4);
  v11 = result[14];
  v12 = result[13];
  v269 = result[12];
  v264 = result;
  v13 = *&v12 * a2 / v10;
  v14 = *&result[15] + 2 * v13;
  v15 = 2 * ((*&v12 + *&v12 * a2) / v10 - v13);
  v16 = result[7];
  v17 = result[8];
  v18 = result[16];
  v19 = result[17];
  v257 = v17[2];
  v261 = v16[2];
  v262 = v19[2];
  v260 = v18[2];
  v20 = (v260 + v262 * v14 + 2 * *&v11);
  if (v15 >= 1)
  {
    v21 = 0;
    v22 = result[19];
    v23 = *v17;
    v24 = v17[1];
    v25 = *v19;
    v26 = v19[1];
    v27 = v22[17].u16[2];
    v28 = v22[17].u16[3];
    a4.i32[0] = v22->i32[0];
    a5.i32[0] = v22[3].i32[1];
    v29 = v22[18].u16[0];
    v30 = v22[18].u16[1];
    v31 = v22[18].u16[2];
    v32 = v22[18].u16[3];
    v33 = v22[19].u16[0];
    _S6 = v22[4].f32[1];
    _S28 = v22[5].f32[0];
    _S18 = v22[5].f32[1];
    _S27 = v22[6].i32[0];
    _S3 = v22[6].f32[1];
    _S21 = v22[7].i32[0];
    _S11 = v22[7].i32[1];
    _S4 = v22[8].f32[0];
    result = (v22 + 164);
    v42 = v27;
    v43 = v28;
    v44 = 8191.0 / v22[16].u32[0];
    _S31 = v44 * v22->f32[0];
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v49 = v32;
    v50 = v33;
    *a4.i16 = v27;
    v51 = &v22[2068] + 4;
    __asm { FCVT            H7, S31 }

    v304 = vdupq_lane_s16(a4, 0);
    v305 = *_Q7.i16;
    a5.i32[1] = v22[1].i32[0];
    *_Q7.f32 = vmul_n_f32(*a5.f32, v44);
    *a5.f32 = vmul_n_f32(v22[2], v44);
    *&v44 = -v28;
    v302 = vdupq_lane_s32(vcvt_f16_f32(_Q7), 0);
    v300 = vmulq_n_f16(v302, *&v44);
    v301 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v56 = vmulq_n_f16(v301, *&v44);
    v299 = v56;
    *v56.i16 = v29;
    v57 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v30;
    v58 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v31;
    v59 = vdupq_lane_s16(*v56.i8, 0);
    v320 = v59;
    *v59.i16 = v32;
    _Q0 = vdupq_lane_s16(*v59.i8, 0);
    v315 = _Q0;
    v316 = v58;
    *_Q0.i16 = v33;
    v314 = vdupq_lane_s16(*_Q0.i8, 0);
    __asm { FCVT            H0, S6 }

    v319 = *_Q0.i16;
    v61 = v22[16].u8[4];
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    else
    {
      v62 = 16 - v61;
    }

    v63 = v22[15].u8[4];
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
      v68 = (v66 + v26 * v14 + 2 * *&v11);
    }

    else
    {
      v68 = 0;
    }

    v69 = (v65 + v25 * v14 + 2 * *&v11);
    v70 = v16[1] + v24 * (v258 / 2) + 2 * v259;
    v71 = (*v16 + v23 * v258 + 2 * v259);
    v72 = v64;
    v73 = -v64;
    v74 = v62;
    v297 = v22[8].f32[1];
    _S0 = v297;
    __asm { FCVT            H12, S28 }

    v318 = _H12;
    __asm { FCVT            H12, S18 }

    v317 = _H12;
    __asm { FCVT            H12, S27 }

    v313 = _H12;
    __asm { FCVT            H14, S3 }

    v312 = _H14;
    __asm { FCVT            H14, S21 }

    v311 = _H14;
    __asm { FCVT            H14, S11 }

    v310 = _H14;
    __asm
    {
      FCVT            H14, S4
      FCVT            H0, S0
    }

    v308 = *&_S0;
    v309 = _H14;
    v296 = v22[9].f32[0];
    __asm { FCVT            H0, S1 }

    v281 = *&_S0;
    v295 = v22[9].f32[1];
    __asm { FCVT            H0, S17 }

    v280 = *&_S0;
    v294 = v22[10].f32[0];
    __asm { FCVT            H0, S19 }

    v279 = *&_S0;
    v292 = v22[10].f32[1];
    __asm { FCVT            H0, S23 }

    v278 = *&_S0;
    v290 = v22[11].f32[0];
    __asm { FCVT            H0, S8 }

    v277 = *&_S0;
    v288 = v22[11].f32[1];
    __asm { FCVT            H0, S9 }

    v276 = *&_S0;
    v286 = v22[12].f32[0];
    __asm { FCVT            H0, S10 }

    v275 = *&_S0;
    v284 = v22[12].f32[1];
    __asm { FCVT            H0, S12 }

    v274 = *&_S0;
    v272 = vdupq_n_s16(v62);
    v273 = vdupq_n_s16(v73);
    v282 = v22[13].f32[0];
    __asm { FCVT            H0, S13 }

    v271 = *&_S0;
    v303 = _Q7.f32[0];
    v83 = a5.i64[0];
    v270 = _Q7.f32[1];
    v266 = v17[1];
    v267 = v19[1];
    v268 = *v17;
    v307 = v49;
    v306 = v50;
    v298 = v57;
    v293 = v22[7].f32[1];
    v291 = v47;
    v289 = v22[6].f32[0];
    v287 = v42;
    v285 = v22[7].f32[0];
    v283 = _S31;
    v265 = v22[4].f32[1];
    do
    {
      v84 = &v71->i8[v23];
      v85 = &v69->i8[v25];
      v86 = v68 + v26;
      if (v269 < 8)
      {
        v135 = 0;
        v91 = (v68 + v26);
        v90 = (v69 + v25);
        v89 = v70;
        v88 = (v71 + v23);
      }

      else
      {
        v87 = 0;
        v88 = (v71 + v23);
        v89 = v70;
        v90 = (v69 + v25);
        v91 = (v68 + v26);
        do
        {
          v92 = *v89++;
          v93 = vcvtq_f16_u16(vshlq_u16(v92, v273));
          v94 = vmlaq_f16(v300, v302, v93);
          v95 = vmlaq_f16(v299, v301, v93);
          v96 = vtrn2q_s16(v94, v94);
          v97 = vtrn1q_s16(v94, v94);
          v98 = vuzp1q_s16(v95, v96);
          v99 = *v71++;
          v100 = vcvtq_f16_u16(vshlq_u16(v99, v273));
          v101 = *v88++;
          v102 = vsubq_f16(v100, v304);
          v103.i64[0] = 0x9000900090009000;
          v103.i64[1] = 0x9000900090009000;
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v96, v102, v305), 0), v103));
          v105.i16[0] = result->i16[v104.u16[0]];
          *v98.i8 = vadd_f16(*v98.i8, *&vuzp2q_s16(v95, v96));
          v106 = vzip1q_s16(v98, v98);
          v105.i16[1] = result->i16[v104.u16[1]];
          v105.i16[2] = result->i16[v104.u16[2]];
          v105.i16[3] = result->i16[v104.u16[3]];
          v105.i16[4] = result->i16[v104.u16[4]];
          v105.i16[5] = result->i16[v104.u16[5]];
          v105.i16[6] = result->i16[v104.u16[6]];
          v105.i16[7] = result->i16[v104.u16[7]];
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v102, v305), 0), v103));
          v108.i16[0] = result->i16[v107.u16[0]];
          v108.i16[1] = result->i16[v107.u16[1]];
          v108.i16[2] = result->i16[v107.u16[2]];
          v108.i16[3] = result->i16[v107.u16[3]];
          v108.i16[4] = result->i16[v107.u16[4]];
          v108.i16[5] = result->i16[v107.u16[5]];
          v108.i16[6] = result->i16[v107.u16[6]];
          v108.i16[7] = result->i16[v107.u16[7]];
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v97, v102, v305), 0), v103));
          v110.i16[0] = result->i16[v109.u16[0]];
          v111 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v101, v273)), v304);
          v110.i16[1] = result->i16[v109.u16[1]];
          v110.i16[2] = result->i16[v109.u16[2]];
          v110.i16[3] = result->i16[v109.u16[3]];
          v110.i16[4] = result->i16[v109.u16[4]];
          v110.i16[5] = result->i16[v109.u16[5]];
          v110.i16[6] = result->i16[v109.u16[6]];
          v110.i16[7] = result->i16[v109.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v96, v111, v305), 0), v103));
          v113.i16[0] = result->i16[v112.u16[0]];
          v113.i16[1] = result->i16[v112.u16[1]];
          v113.i16[2] = result->i16[v112.u16[2]];
          v113.i16[3] = result->i16[v112.u16[3]];
          v113.i16[4] = result->i16[v112.u16[4]];
          v113.i16[5] = result->i16[v112.u16[5]];
          v113.i16[6] = result->i16[v112.u16[6]];
          v113.i16[7] = result->i16[v112.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v111, v305), 0), v103));
          v106.i16[0] = result->i16[v114.u16[0]];
          v106.i16[1] = result->i16[v114.u16[1]];
          v106.i16[2] = result->i16[v114.u16[2]];
          v106.i16[3] = result->i16[v114.u16[3]];
          v106.i16[4] = result->i16[v114.u16[4]];
          v106.i16[5] = result->i16[v114.u16[5]];
          v106.i16[6] = result->i16[v114.u16[6]];
          v106.i16[7] = result->i16[v114.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v97, v111, v305), 0), v103));
          v102.i16[0] = result->i16[v115.u16[0]];
          v102.i16[1] = result->i16[v115.u16[1]];
          v102.i16[2] = result->i16[v115.u16[2]];
          v102.i16[3] = result->i16[v115.u16[3]];
          v102.i16[4] = result->i16[v115.u16[4]];
          v102.i16[5] = result->i16[v115.u16[5]];
          v102.i16[6] = result->i16[v115.u16[6]];
          v102.i16[7] = result->i16[v115.u16[7]];
          v116 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v281), v108, v280), v110, v279);
          v117 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v278), v108, v277), v110, v276);
          v118 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v110, v271), v108, v274), v105, v275);
          v119 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v281), v106, v280), v102, v279);
          v120 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v278), v106, v277), v102, v276);
          v121 = vmulq_n_f16(v102, v271);
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v103));
          v123.i16[0] = *&v51[2 * v122.u16[0]];
          v123.i16[1] = *&v51[2 * v122.u16[1]];
          v123.i16[2] = *&v51[2 * v122.u16[2]];
          v123.i16[3] = *&v51[2 * v122.u16[3]];
          v123.i16[4] = *&v51[2 * v122.u16[4]];
          v123.i16[5] = *&v51[2 * v122.u16[5]];
          v123.i16[6] = *&v51[2 * v122.u16[6]];
          v123.i16[7] = *&v51[2 * v122.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v103));
          v125.i16[0] = *&v51[2 * v124.u16[0]];
          v125.i16[1] = *&v51[2 * v124.u16[1]];
          v125.i16[2] = *&v51[2 * v124.u16[2]];
          v125.i16[3] = *&v51[2 * v124.u16[3]];
          v125.i16[4] = *&v51[2 * v124.u16[4]];
          v125.i16[5] = *&v51[2 * v124.u16[5]];
          v125.i16[6] = *&v51[2 * v124.u16[6]];
          v125.i16[7] = *&v51[2 * v124.u16[7]];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, 0), v103));
          v127.i16[0] = *&v51[2 * v126.u16[0]];
          v127.i16[1] = *&v51[2 * v126.u16[1]];
          v127.i16[2] = *&v51[2 * v126.u16[2]];
          v127.i16[3] = *&v51[2 * v126.u16[3]];
          v127.i16[4] = *&v51[2 * v126.u16[4]];
          v127.i16[5] = *&v51[2 * v126.u16[5]];
          v127.i16[6] = *&v51[2 * v126.u16[6]];
          v127.i16[7] = *&v51[2 * v126.u16[7]];
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v103));
          v129.i16[0] = *&v51[2 * v128.u16[0]];
          v129.i16[1] = *&v51[2 * v128.u16[1]];
          v129.i16[2] = *&v51[2 * v128.u16[2]];
          v129.i16[3] = *&v51[2 * v128.u16[3]];
          v129.i16[4] = *&v51[2 * v128.u16[4]];
          v129.i16[5] = *&v51[2 * v128.u16[5]];
          v129.i16[6] = *&v51[2 * v128.u16[6]];
          v129.i16[7] = *&v51[2 * v128.u16[7]];
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v103));
          v131.i16[0] = *&v51[2 * v130.u16[0]];
          v131.i16[1] = *&v51[2 * v130.u16[1]];
          v131.i16[2] = *&v51[2 * v130.u16[2]];
          v131.i16[3] = *&v51[2 * v130.u16[3]];
          v131.i16[4] = *&v51[2 * v130.u16[4]];
          v131.i16[5] = *&v51[2 * v130.u16[5]];
          v131.i16[6] = *&v51[2 * v130.u16[6]];
          v131.i16[7] = *&v51[2 * v130.u16[7]];
          v132 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v121, v106, v274), v113, v275), 0), v103));
          v133.i16[0] = *&v51[2 * v132.u16[0]];
          v133.i16[1] = *&v51[2 * v132.u16[1]];
          v133.i16[2] = *&v51[2 * v132.u16[2]];
          v133.i16[3] = *&v51[2 * v132.u16[3]];
          v133.i16[4] = *&v51[2 * v132.u16[4]];
          v133.i16[5] = *&v51[2 * v132.u16[5]];
          v133.i16[6] = *&v51[2 * v132.u16[6]];
          v133.i16[7] = *&v51[2 * v132.u16[7]];
          *v69++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v123, v319), v125, v318), v127, v317), v57), v320)), v272);
          if (v68)
          {
            v322.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v316, v123, v313), v125, v312), v127, v311), v315), v314), v315), v314)), v272);
            v322.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v316, v123, v310), v125, v309), v127, v308)), v272);
            vst2q_s16(v68, v322);
            v68 += 16;
          }

          *v90++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v129, v319), v131, v318), v133, v317), v57), v320)), v272);
          if (v91)
          {
            v134 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v316, v129, v310), v131, v309), v133, v308);
            v321.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v316, v129, v313), v131, v312), v133, v311), v315), v314), v315), v314)), v272);
            v321.val[1] = vshlq_u16(vcvtq_u16_f16(v134), v272);
            vst2q_s16(v91, v321);
            v91 += 16;
          }

          v87 += 8;
        }

        while (v87 < v269 - 7);
        v135 = v269 & 0xFFFFFFF8;
        v24 = v266;
        _S6 = v265;
        v43 = v28;
      }

      while (v135 < (v269 & 0xFFFFFFFE))
      {
        v136 = (v89->u16[1] >> v72) - v43;
        v137 = v270 * v136;
        v138 = _S31 * ((v71->u16[0] >> v72) - v42);
        v139 = (v270 * v136) + v138;
        v140 = 8191.0;
        if (v139 <= 8191.0)
        {
          v140 = (v270 * v136) + v138;
          if (v139 < 0.0)
          {
            v140 = 0.0;
          }
        }

        v141 = (v89->u16[0] >> v72) - v43;
        v142 = (*(&v83 + 1) * v136) + (v141 * *&v83);
        v143 = 8191.0;
        if ((v138 + v142) <= 8191.0)
        {
          v143 = v138 + v142;
          if ((v138 + v142) < 0.0)
          {
            v143 = 0.0;
          }
        }

        v144 = v303 * v141;
        v145 = (v303 * v141) + v138;
        v146 = 8191.0;
        if (v145 <= 8191.0)
        {
          v146 = v145;
          if (v145 < 0.0)
          {
            v146 = 0.0;
          }
        }

        v147 = _S31 * ((v71->u16[1] >> v72) - v42);
        v148 = 8191.0;
        if ((v137 + v147) <= 8191.0)
        {
          v148 = v137 + v147;
          if ((v137 + v147) < 0.0)
          {
            v148 = 0.0;
          }
        }

        v149 = 8191.0;
        if ((v142 + v147) <= 8191.0)
        {
          v149 = v142 + v147;
          if ((v142 + v147) < 0.0)
          {
            v149 = 0.0;
          }
        }

        v150 = v144 + v147;
        v151 = (v144 + v147) <= 8191.0;
        v152 = 8191.0;
        if (v151)
        {
          v152 = v150;
          if (v150 < 0.0)
          {
            v152 = 0.0;
          }
        }

        v153 = _S31 * ((v88->u16[0] >> v72) - v42);
        v154 = 8191.0;
        if ((v137 + v153) <= 8191.0)
        {
          v154 = v137 + v153;
          if ((v137 + v153) < 0.0)
          {
            v154 = 0.0;
          }
        }

        v155 = 8191.0;
        if ((v142 + v153) <= 8191.0)
        {
          v155 = v142 + v153;
          if ((v142 + v153) < 0.0)
          {
            v155 = 0.0;
          }
        }

        v156 = v144 + v153;
        v151 = (v144 + v153) <= 8191.0;
        v157 = 8191.0;
        if (v151)
        {
          v157 = v156;
          if (v156 < 0.0)
          {
            v157 = 0.0;
          }
        }

        v158 = _S31 * ((v88->u16[1] >> v72) - v42);
        v159 = v137 + v158;
        v160 = 8191.0;
        if (v159 <= 8191.0)
        {
          v160 = v159;
          if (v159 < 0.0)
          {
            v160 = 0.0;
          }
        }

        v161 = _S18;
        v162 = v142 + v158;
        v151 = (v142 + v158) <= 8191.0;
        v163 = 8191.0;
        if (v151)
        {
          v163 = v162;
          if (v162 < 0.0)
          {
            v163 = 0.0;
          }
        }

        v164 = _S28;
        v165 = v144 + v158;
        v166 = 8191.0;
        if (v165 <= 8191.0)
        {
          v166 = v165;
          if (v165 < 0.0)
          {
            v166 = 0.0;
          }
        }

        _H0 = result->i16[llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H7 = result->i16[llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        _H23 = result->i16[llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        __asm { FCVT            S23, H23 }

        _H9 = result->i16[llroundf(fminf(fmaxf(v148, 0.0), 8191.0))];
        _H10 = result->i16[llroundf(fminf(fmaxf(v149, 0.0), 8191.0))];
        __asm
        {
          FCVT            S9, H9
          FCVT            S10, H10
        }

        _H1 = result->i16[llroundf(fminf(fmaxf(v152, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = result->i16[llroundf(fminf(fmaxf(v154, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H17 = result->i16[llroundf(fminf(fmaxf(v155, 0.0), 8191.0))];
        __asm { FCVT            S17, H17 }

        _H19 = result->i16[llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm { FCVT            S19, H19 }

        _H26 = result->i16[llroundf(fminf(fmaxf(v160, 0.0), 8191.0))];
        _H12 = result->i16[llroundf(fminf(fmaxf(v163, 0.0), 8191.0))];
        __asm
        {
          FCVT            S26, H26
          FCVT            S12, H12
        }

        _H13 = result->i16[llroundf(fminf(fmaxf(v166, 0.0), 8191.0))];
        __asm { FCVT            S13, H13 }

        v191 = ((v295 * _S7) + (_S0 * v296)) + (_S23 * v294);
        v192 = ((v290 * _S7) + (_S0 * v292)) + (_S23 * v288);
        _S0 = ((v284 * _S7) + (_S0 * v286)) + (_S23 * v282);
        v194 = ((v295 * _S10) + (_S9 * v296)) + (_S1 * v294);
        v195 = ((v290 * _S10) + (_S9 * v292)) + (_S1 * v288);
        v196 = ((v284 * _S10) + (_S9 * v286)) + (_S1 * v282);
        v197 = ((v295 * _S17) + (_S2 * v296)) + (_S19 * v294);
        v198 = ((v290 * _S17) + (_S2 * v292)) + (_S19 * v288);
        v199 = ((v284 * _S17) + (_S2 * v286)) + (_S19 * v282);
        v200 = ((v295 * _S12) + (_S26 * v296)) + (_S13 * v294);
        v201 = ((v290 * _S12) + (_S26 * v292)) + (_S13 * v288);
        v202 = ((v284 * _S12) + (_S26 * v286)) + (_S13 * v282);
        LOWORD(_S1) = *&v51[2 * llroundf(fminf(fmaxf(v191, 0.0), 8191.0))];
        __asm { FCVT            S19, H1 }

        LOWORD(_S1) = *&v51[2 * llroundf(fminf(fmaxf(v192, 0.0), 8191.0))];
        __asm { FCVT            S14, H1 }

        LOWORD(_S0) = *&v51[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S15, H0 }

        _H1 = *&v51[2 * llroundf(fminf(fmaxf(v194, 0.0), 8191.0))];
        _H2 = *&v51[2 * llroundf(fminf(fmaxf(v195, 0.0), 8191.0))];
        _H17 = *&v51[2 * llroundf(fminf(fmaxf(v196, 0.0), 8191.0))];
        _H0 = *&v51[2 * llroundf(fminf(fmaxf(v197, 0.0), 8191.0))];
        _H23 = *&v51[2 * llroundf(fminf(fmaxf(v198, 0.0), 8191.0))];
        _H13 = *&v51[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        _H7 = *&v51[2 * llroundf(fminf(fmaxf(v200, 0.0), 8191.0))];
        _H10 = *&v51[2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0))];
        _H12 = *&v51[2 * llroundf(fminf(fmaxf(v202, 0.0), 8191.0))];
        _S28 = v164;
        v215 = (v164 * _S14) + (_S6 * _S19);
        _S18 = v161;
        v216 = (v215 + (v161 * _S15)) + v46;
        v217 = v48;
        if (v216 <= v48)
        {
          v217 = v216;
          if (v216 < v46)
          {
            v217 = v46;
          }
        }

        v69->i16[0] = llroundf(v217) << v74;
        _S31 = v283;
        if (v68)
        {
          v218 = v291;
          v219 = v285;
          v220 = ((v291 + (_S19 * v289)) + (_S14 * _S3)) + (_S15 * v285);
          v221 = v306;
          v222 = v306;
          v42 = v287;
          v223 = v307;
          if (v220 <= v306)
          {
            v222 = ((v291 + (_S19 * v289)) + (_S14 * _S3)) + (_S15 * v285);
            if (v220 < v307)
            {
              v222 = v307;
            }
          }

          v224 = v293;
          v225 = v297;
          v226 = ((v291 + (_S19 * v293)) + (_S14 * _S4)) + (_S15 * v297);
          *v68 = llroundf(v222) << v74;
          v227 = v306;
          v43 = v28;
          if (v226 <= v306)
          {
            v227 = v226;
            if (v226 < v307)
            {
              v227 = v307;
            }
          }

          v68[1] = llroundf(v227) << v74;
          v68 += 2;
        }

        else
        {
          v219 = v285;
          v224 = v293;
          v42 = v287;
          v43 = v28;
          v218 = v291;
          v223 = v307;
          v221 = v306;
          v225 = v297;
        }

        __asm
        {
          FCVT            S1, H1
          FCVT            S2, H2
          FCVT            S17, H17
        }

        v231 = (((_S28 * _S2) + (_S6 * _S1)) + (_S18 * _S17)) + v46;
        v232 = v48;
        if (v231 <= v48)
        {
          v232 = (((_S28 * _S2) + (_S6 * _S1)) + (_S18 * _S17)) + v46;
          if (v231 < v46)
          {
            v232 = v46;
          }
        }

        v69->i16[1] = llroundf(v232) << v74;
        if (v68)
        {
          v233 = ((v218 + (_S1 * v289)) + (_S2 * _S3)) + (_S17 * v219);
          v234 = v221;
          if (v233 <= v221)
          {
            v234 = ((v218 + (_S1 * v289)) + (_S2 * _S3)) + (_S17 * v219);
            if (v233 < v223)
            {
              v234 = v223;
            }
          }

          v235 = ((v218 + (_S1 * v224)) + (_S2 * _S4)) + (_S17 * v225);
          *v68 = llroundf(v234) << v74;
          v236 = v221;
          v57 = v298;
          if (v235 <= v221)
          {
            v236 = v235;
            if (v235 < v223)
            {
              v236 = v223;
            }
          }

          v68[1] = llroundf(v236) << v74;
          v68 += 2;
        }

        else
        {
          v57 = v298;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H23
          FCVT            S2, H13
        }

        v240 = (((_S28 * _S1) + (_S6 * _S0)) + (_S18 * _S2)) + v46;
        v241 = v48;
        if (v240 <= v48)
        {
          v241 = (((_S28 * _S1) + (_S6 * _S0)) + (_S18 * _S2)) + v46;
          if (v240 < v46)
          {
            v241 = v46;
          }
        }

        v90->i16[0] = llroundf(v241) << v74;
        if (v91)
        {
          v242 = ((v218 + (_S0 * v289)) + (_S1 * _S3)) + (_S2 * v219);
          v243 = v221;
          if (v242 <= v221)
          {
            v243 = ((v218 + (_S0 * v289)) + (_S1 * _S3)) + (_S2 * v219);
            if (v242 < v223)
            {
              v243 = v223;
            }
          }

          v244 = ((v218 + (_S0 * v224)) + (_S1 * _S4)) + (_S2 * v225);
          *v91 = llroundf(v243) << v74;
          v245 = v221;
          if (v244 <= v221)
          {
            v245 = v244;
            if (v244 < v223)
            {
              v245 = v223;
            }
          }

          v91[1] = llroundf(v245) << v74;
          v91 += 2;
        }

        __asm
        {
          FCVT            S0, H7
          FCVT            S1, H10
          FCVT            S2, H12
        }

        v249 = (((_S28 * _S1) + (_S6 * _S0)) + (_S18 * _S2)) + v46;
        v250 = v48;
        if (v249 <= v48)
        {
          v250 = (((_S28 * _S1) + (_S6 * _S0)) + (_S18 * _S2)) + v46;
          if (v249 < v46)
          {
            v250 = v46;
          }
        }

        v90->i16[1] = llroundf(v250) << v74;
        if (v91)
        {
          v251 = ((v218 + (_S0 * v289)) + (_S1 * _S3)) + (_S2 * v219);
          v252 = v221;
          if (v251 <= v221)
          {
            v252 = ((v218 + (_S0 * v289)) + (_S1 * _S3)) + (_S2 * v219);
            if (v251 < v223)
            {
              v252 = v223;
            }
          }

          v253 = ((v218 + (_S0 * v224)) + (_S1 * _S4)) + (_S2 * v225);
          *v91 = llroundf(v252) << v74;
          v254 = v221;
          if (v253 <= v221)
          {
            v254 = v253;
            if (v253 < v223)
            {
              v254 = v223;
            }
          }

          v91[1] = llroundf(v254) << v74;
          v91 += 2;
        }

        v135 += 2;
        v89 = (v89 + 4);
        v71 = (v71 + 4);
        v88 = (v88 + 4);
        v69 = (v69 + 4);
        v90 = (v90 + 4);
      }

      v26 = v267;
      v23 = v268;
      v71 = &v84[v268];
      v70 += v24;
      v69 = &v85[v25];
      v68 = &v86[v267];
      v21 += 2;
    }

    while (v21 < v15);
  }

  if (v261 && v260)
  {
    if (v15 >= 1)
    {
      v255 = 0;
      v256 = (v261 + v257 * v258 + 2 * v259);
      do
      {
        result = memcpy(v20, v256, 2 * v269);
        v256 += v257;
        v20 += v262;
        ++v255;
      }

      while (v15 > v255);
    }
  }

  else if (v260 && v15 >= 1)
  {
    do
    {
      if (v269 >= 1)
      {
        result = memset(v20, 255, 2 * v269);
      }

      v20 += v262;
      --v15;
    }

    while (v15);
  }

  v264[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = 2 * (v24 + v25) + 2, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (*a8 * v53 + 2 * (v45 + v24) > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 4 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && 2 * v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v6 = result;
  v7 = 2 * *result;
  v196 = *(result + 44) + 2 * (*(result + 28) * a2 / v7);
  v197 = *(result + 36);
  v8 = result[14];
  v10 = result[12];
  v9 = result[13];
  v11 = v9 * a2 / v7;
  v12 = result[15] + 2 * v11;
  v13 = 2 * ((v9 + v9 * a2) / v7 - v11);
  v14 = result[7];
  v15 = result[8];
  v16 = result[16];
  v17 = result[17];
  v18 = v15[2];
  v199 = v14[2];
  v19 = v17[2];
  v198 = v16[2];
  v20 = (v198 + v19 * v12 + 2 * v8);
  if (v13 >= 1)
  {
    v21 = 0;
    v22 = result[19];
    v23 = v10 & 0xFFFFFFFE;
    v24 = *v15;
    v25 = v15[1];
    v26 = *v17;
    v27 = v17[1];
    LOWORD(a5) = *(v22 + 140);
    LOWORD(a6) = *(v22 + 142);
    v28 = 8191.0 / *(v22 + 128);
    v29 = LODWORD(a5);
    v30 = LODWORD(a6);
    v31 = v28 * *v22;
    v222 = v28 * *(v22 + 16);
    v223 = v28 * *(v22 + 8);
    v32 = v28 * *(v22 + 20);
    *&v33 = v28 * *(v22 + 28);
    v220 = *&v33;
    v221 = v32;
    LOWORD(v33) = *(v22 + 144);
    v34 = v33;
    LOWORD(v33) = *(v22 + 146);
    v35 = v33;
    LOWORD(v33) = *(v22 + 148);
    v36 = v33;
    LOWORD(v33) = *(v22 + 150);
    v37 = v33;
    LOWORD(v33) = *(v22 + 152);
    v38 = v33;
    v40 = *(v22 + 36);
    v39 = *(v22 + 40);
    v42 = *(v22 + 44);
    v41 = *(v22 + 48);
    v43 = *(v22 + 52);
    v44 = *(v22 + 56);
    v45 = *(v22 + 60);
    v46 = *(v22 + 64);
    v47 = *(v22 + 68);
    v214 = *(v22 + 76);
    v215 = *(v22 + 72);
    v213 = *(v22 + 80);
    v210 = *(v22 + 88);
    v211 = *(v22 + 84);
    v208 = *(v22 + 92);
    v206 = *(v22 + 96);
    v204 = *(v22 + 100);
    v202 = *(v22 + 104);
    result = (v22 + 164);
    v48 = v22 + 16548;
    v49 = *v16;
    v50 = v16[1];
    v51 = (v50 + v27 * v12 + 2 * v8);
    if (!v50)
    {
      v51 = 0;
    }

    v52 = (v49 + v26 * v12 + 2 * v8);
    v54 = *v14;
    v53 = v14[1];
    v55 = (v54 + v24 * v196 + 2 * v197);
    LODWORD(v54) = *(v22 + 132);
    _CF = v54 >= 0x11;
    v57 = 16 - v54;
    if (_CF)
    {
      v57 = 0;
    }

    v58 = *(v22 + 124);
    v59 = 16 - v58;
    if (v58 >= 0x11)
    {
      v59 = 0;
    }

    v60 = v53 + v25 * (v196 / 2) + 2 * v197;
    v61 = v59;
    v62 = v57;
    v224 = v30;
    v225 = v39;
    v218 = v45;
    v219 = v35;
    v216 = v47;
    v217 = v46;
    v212 = v44;
    v209 = v43;
    v207 = v31;
    v205 = LODWORD(a5);
    v203 = v41;
    v201 = v37;
    do
    {
      v63 = &v55[v24];
      v64 = &v52[v26];
      v65 = &v51[v27];
      if (v23 >= 1)
      {
        v66 = 0;
        v67 = &v55[v24];
        v68 = &v51[v27];
        v69 = &v52[v26];
        do
        {
          v70 = (v60 + 2 * v66);
          v71 = (v70[1] >> v61) - v30;
          v72 = v223 * v71;
          v73 = v31 * ((*v55 >> v61) - v29);
          v74 = (v223 * v71) + v73;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = (v223 * v71) + v73;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = (*v70 >> v61) - v30;
          v77 = (v221 * v71) + (v76 * v222);
          v78 = 8191.0;
          if ((v73 + v77) <= 8191.0)
          {
            v78 = v73 + v77;
            if ((v73 + v77) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v220 * v76;
          v80 = (v220 * v76) + v73;
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v31 * ((*(v55 + 1) >> v61) - v29);
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

          v85 = 8191.0;
          if ((v79 + v82) <= 8191.0)
          {
            v85 = v79 + v82;
            if ((v79 + v82) < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v31 * ((*v67 >> v61) - v29);
          v87 = 8191.0;
          if ((v72 + v86) <= 8191.0)
          {
            v87 = v72 + v86;
            if ((v72 + v86) < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = 8191.0;
          if ((v77 + v86) <= 8191.0)
          {
            v88 = v77 + v86;
            if ((v77 + v86) < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v79 + v86;
          v90 = (v79 + v86) <= 8191.0;
          v91 = 8191.0;
          if (v90)
          {
            v91 = v89;
            if (v89 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v31 * ((*(v67 + 1) >> v61) - v29);
          v93 = v72 + v92;
          v94 = 8191.0;
          if (v93 <= 8191.0)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          v95 = v42;
          v96 = v77 + v92;
          v90 = (v77 + v92) <= 8191.0;
          v97 = 8191.0;
          if (v90)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          v98 = v40;
          v99 = v79 + v92;
          v100 = 8191.0;
          if (v99 <= 8191.0)
          {
            v100 = v99;
            if (v99 < 0.0)
            {
              v100 = 0.0;
            }
          }

          _H1 = *(result + llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          _H1 = *(result + llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H5 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          _H6 = *(result + llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S6, H6
          }

          _H7 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H26 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(result + llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H19 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H3 = *(result + llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H24 = *(result + llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S24, H24
          }

          _H25 = *(result + llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v128 = ((v214 * _S1) + (_S4 * v215)) + (_S2 * v213);
          v129 = ((v210 * _S1) + (_S4 * v211)) + (_S2 * v208);
          _S1 = ((v204 * _S1) + (_S4 * v206)) + (_S2 * v202);
          v131 = ((v214 * _S6) + (_S5 * v215)) + (_S7 * v213);
          v132 = ((v210 * _S6) + (_S5 * v211)) + (_S7 * v208);
          v133 = ((v204 * _S6) + (_S5 * v206)) + (_S7 * v202);
          v134 = ((v214 * _S27) + (_S26 * v215)) + (_S19 * v213);
          v135 = ((v210 * _S27) + (_S26 * v211)) + (_S19 * v208);
          v136 = ((v204 * _S27) + (_S26 * v206)) + (_S19 * v202);
          v137 = ((v214 * _S24) + (_S3 * v215)) + (_S25 * v213);
          v138 = ((v210 * _S24) + (_S3 * v211)) + (_S25 * v208);
          v139 = ((v204 * _S24) + (_S3 * v206)) + (_S25 * v202);
          LOWORD(_S7) = *(v48 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm { FCVT            S27, H7 }

          LOWORD(_S7) = *(v48 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S28, H7 }

          LOWORD(_S1) = *(v48 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S29, H1 }

          _H25 = *(v48 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          _H19 = *(v48 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          _H26 = *(v48 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          _H7 = *(v48 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          _H2 = *(v48 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          _H24 = *(v48 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          _H4 = *(v48 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          _H5 = *(v48 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          _H6 = *(v48 + 2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0)));
          v40 = v98;
          v152 = (v225 * _S28) + (v98 * _S27);
          v42 = v95;
          v153 = (v152 + (v95 * _S29)) + v34;
          v154 = v36;
          if (v153 <= v36)
          {
            v154 = v153;
            if (v153 < v34)
            {
              v154 = v34;
            }
          }

          *v52 = llroundf(v154) << v62;
          if (v51)
          {
            v155 = v203;
            v156 = v219;
            v157 = v212;
            v158 = ((v219 + (_S27 * v203)) + (_S28 * v209)) + (_S29 * v212);
            v159 = v38;
            if (v158 <= v38)
            {
              v159 = ((v219 + (_S27 * v203)) + (_S28 * v209)) + (_S29 * v212);
              if (v158 < v201)
              {
                v159 = v201;
              }
            }

            v160 = v218;
            v161 = (v219 + (_S27 * v218)) + (_S28 * v217);
            v162 = v217;
            v163 = v161 + (_S29 * v216);
            v164 = v216;
            *v51 = llroundf(v159) << v62;
            v165 = v38;
            v29 = v205;
            v31 = v207;
            if (v163 <= v38)
            {
              v165 = v163;
              if (v163 < v201)
              {
                v165 = v201;
              }
            }

            *(v51 + 1) = llroundf(v165) << v62;
            v51 += 4;
          }

          else
          {
            v29 = v205;
            v31 = v207;
            v155 = v203;
            v157 = v212;
            v160 = v218;
            v156 = v219;
            v164 = v216;
            v162 = v217;
          }

          __asm
          {
            FCVT            S25, H25
            FCVT            S19, H19
            FCVT            S26, H26
          }

          v169 = (((v225 * _S19) + (v40 * _S25)) + (v95 * _S26)) + v34;
          v170 = v36;
          if (v169 <= v36)
          {
            v170 = (((v225 * _S19) + (v40 * _S25)) + (v95 * _S26)) + v34;
            if (v169 < v34)
            {
              v170 = v34;
            }
          }

          *(v52 + 1) = llroundf(v170) << v62;
          if (v51)
          {
            v171 = ((v156 + (_S25 * v155)) + (_S19 * v209)) + (_S26 * v157);
            v172 = v38;
            if (v171 <= v38)
            {
              v172 = ((v156 + (_S25 * v155)) + (_S19 * v209)) + (_S26 * v157);
              if (v171 < v201)
              {
                v172 = v201;
              }
            }

            v173 = ((v156 + (_S25 * v160)) + (_S19 * v162)) + (_S26 * v164);
            *v51 = llroundf(v172) << v62;
            v174 = v38;
            if (v173 <= v38)
            {
              v174 = v173;
              if (v173 < v201)
              {
                v174 = v201;
              }
            }

            *(v51 + 1) = llroundf(v174) << v62;
            v51 += 4;
          }

          __asm
          {
            FCVT            S7, H7
            FCVT            S2, H2
            FCVT            S19, H24
          }

          v178 = (((v225 * _S2) + (v40 * _S7)) + (v95 * _S19)) + v34;
          v179 = v36;
          if (v178 <= v36)
          {
            v179 = (((v225 * _S2) + (v40 * _S7)) + (v95 * _S19)) + v34;
            if (v178 < v34)
            {
              v179 = v34;
            }
          }

          *v69 = llroundf(v179) << v62;
          if (v68)
          {
            v180 = ((v156 + (_S7 * v155)) + (_S2 * v209)) + (_S19 * v157);
            v181 = v38;
            if (v180 <= v38)
            {
              v181 = ((v156 + (_S7 * v155)) + (_S2 * v209)) + (_S19 * v157);
              if (v180 < v201)
              {
                v181 = v201;
              }
            }

            v182 = ((v156 + (_S7 * v160)) + (_S2 * v162)) + (_S19 * v164);
            *v68 = llroundf(v181) << v62;
            v183 = v38;
            if (v182 <= v38)
            {
              v183 = v182;
              if (v182 < v201)
              {
                v183 = v201;
              }
            }

            *(v68 + 1) = llroundf(v183) << v62;
            v68 += 4;
          }

          v30 = v224;
          __asm
          {
            FCVT            S2, H4
            FCVT            S4, H5
            FCVT            S5, H6
          }

          v187 = (((v225 * _S4) + (v40 * _S2)) + (v95 * _S5)) + v34;
          v188 = v36;
          if (v187 <= v36)
          {
            v188 = (((v225 * _S4) + (v40 * _S2)) + (v95 * _S5)) + v34;
            if (v187 < v34)
            {
              v188 = v34;
            }
          }

          *(v69 + 1) = llroundf(v188) << v62;
          if (v68)
          {
            v189 = ((v156 + (_S2 * v155)) + (_S4 * v209)) + (_S5 * v157);
            v190 = v38;
            if (v189 <= v38)
            {
              v190 = ((v156 + (_S2 * v155)) + (_S4 * v209)) + (_S5 * v157);
              if (v189 < v201)
              {
                v190 = v201;
              }
            }

            v191 = ((v156 + (_S2 * v160)) + (_S4 * v162)) + (_S5 * v164);
            *v68 = llroundf(v190) << v62;
            v192 = v38;
            if (v191 <= v38)
            {
              v192 = v191;
              if (v191 < v201)
              {
                v192 = v201;
              }
            }

            *(v68 + 1) = llroundf(v192) << v62;
            v68 += 4;
          }

          v55 += 4;
          v67 += 4;
          v52 += 4;
          v69 += 4;
          v66 += 2;
        }

        while (v66 < v23);
      }

      v55 = &v63[v24];
      v60 += v25;
      v52 = &v64[v26];
      v51 = &v65[v27];
      v21 += 2;
    }

    while (v21 < v13);
  }

  if (v199 && v198)
  {
    if (v13 >= 1)
    {
      v193 = 0;
      v194 = (v199 + v18 * v196 + 2 * v197);
      v195 = 2 * v10;
      do
      {
        result = memcpy(v20, v194, v195);
        v194 += v18;
        v20 += v19;
        ++v193;
      }

      while (v13 > v193);
    }
  }

  else if (v198 && v13 >= 1)
  {
    do
    {
      if (v10 >= 1)
      {
        result = memset(v20, 255, 2 * v10);
      }

      v20 += v19;
      --v13;
    }

    while (v13);
  }

  *(v6 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = 2 * (v24 + v25) + 2, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (*a8 * v53 + 2 * (v45 + v24) > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 4 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && 2 * v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

void *vt_Copy_xf420_rgb_xf444_neon_fp16_GCD(void *result, uint64_t a2, int16x8_t _Q0)
{
  v171 = *(result + 36);
  v6 = 2 * *result;
  v170 = *(result + 44) + 2 * (*(result + 28) * a2 / v6);
  v7 = result[14];
  v9 = result[12];
  v8 = result[13];
  v175 = result;
  v10 = v8 * a2 / v6;
  v11 = result[15] + 2 * v10;
  v12 = 2 * ((v8 + v8 * a2) / v6 - v10);
  v13 = result[7];
  v14 = result[8];
  v15 = result[16];
  v16 = result[17];
  v169 = v14[2];
  v17 = v16[2];
  v172 = v15[2];
  v173 = v13[2];
  v18 = (v172 + v17 * v11 + 2 * v7);
  if (v12 >= 1)
  {
    v19 = 0;
    v20 = result[19];
    v21 = *v14;
    v22 = v14[1];
    v23 = *v16;
    v24 = v16[1];
    v25 = v20[17].u16[2];
    v26 = v20[17].u16[3];
    v4.i32[0] = v20[3].i32[1];
    v27 = v20[18].u16[0];
    v28 = v20[18].u16[1];
    v29 = v20[18].u16[2];
    v30 = v20[18].u16[3];
    v31 = v20[19].u16[0];
    _Q0.i32[0] = v20[4].i32[1];
    _S1 = v20[5].f32[0];
    _S2 = v20[5].f32[1];
    _S12 = v20[6].f32[0];
    _S5 = v20[6].f32[1];
    _S3 = v20[7].f32[0];
    _S4 = v20[7].f32[1];
    _S27 = v20[8].f32[0];
    v39 = v25;
    _S28 = v20[8].f32[1];
    *v5.i16 = v25;
    result = (v9 & 0xFFFFFFFE);
    v41 = v20[17].u32[0] / v20[16].u32[0];
    v183 = v26;
    v42 = v27;
    v43 = v28;
    v44 = v29;
    v45 = v30;
    v46 = v31;
    _S24 = v41 * v20->f32[0];
    __asm { FCVT            H8, S24 }

    v195 = vdupq_lane_s16(v5, 0);
    v53 = -v26;
    v4.i32[1] = v20[1].i32[0];
    *v4.f32 = vmul_n_f32(*v4.f32, v41);
    *v3.f32 = vmul_n_f32(v20[2], v41);
    v54 = vcvt_f16_f32(v3);
    v181 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v179 = vmulq_n_f16(v181, v53);
    v180 = vdupq_lane_s32(v54, 0);
    v178 = vmulq_n_f16(v180, v53);
    __asm { FCVT            H6, S0 }

    v194 = _H6;
    __asm { FCVT            H6, S1 }

    v193 = _H6;
    *v54.i16 = v27;
    v57 = vdupq_lane_s16(v54, 0);
    *v54.i16 = v28;
    v58 = vdupq_lane_s16(v54, 0);
    *v54.i16 = v29;
    v192 = vdupq_lane_s16(v54, 0);
    *v54.i16 = v30;
    v190 = vdupq_lane_s16(v54, 0);
    *v54.i16 = v31;
    v59 = vdupq_lane_s16(v54, 0);
    v60 = v20[16].u8[4];
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v62 = v20[15].u8[4];
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v66 = v15;
    v65 = *v15;
    v64 = v66[1];
    if (v64)
    {
      v67 = (v64 + v24 * v11 + 2 * v7);
    }

    else
    {
      v67 = 0;
    }

    v68 = (v65 + v23 * v11 + 2 * v7);
    v69 = v13[1] + v22 * (v170 / 2) + 2 * v171;
    v70 = (*v13 + v21 * v170 + 2 * v171);
    v71 = v63;
    v72 = -v63;
    v73 = v61;
    __asm { FCVT            H6, S2 }

    v191 = _H6;
    __asm { FCVT            H6, S12 }

    v189 = _H6;
    __asm { FCVT            H6, S5 }

    v188 = _H6;
    v77 = _S3;
    __asm { FCVT            H3, S3 }

    v187 = _H3;
    v79 = _S4;
    __asm { FCVT            H3, S4 }

    v186 = _H3;
    v81 = _S27;
    __asm { FCVT            H3, S27 }

    v185 = _H3;
    v83 = _S28;
    __asm { FCVT            H3, S28 }

    v184 = _H3;
    v85 = vdupq_n_s16(v72);
    v86 = vdupq_n_s16(v61);
    v182 = v4.f32[0];
    v87 = v3.i64[0];
    v177 = v4.f32[1];
    v176 = _S5;
    do
    {
      v88 = &v70->i8[v21];
      v89 = &v68->i8[v23];
      v90 = v67 + v24;
      if (v9 < 8)
      {
        v116 = 0;
        v95 = (v67 + v24);
        v94 = (v68 + v23);
        v93 = v69;
        v92 = (v70 + v21);
      }

      else
      {
        v91 = 0;
        v92 = (v70 + v21);
        v93 = v69;
        v94 = (v68 + v23);
        v95 = (v67 + v24);
        do
        {
          v96 = *v93++;
          v97 = vcvtq_f16_u16(vshlq_u16(v96, v85));
          v98 = vmlaq_f16(v179, v181, v97);
          v99 = vmlaq_f16(v178, v180, v97);
          v100 = vtrn2q_s16(v98, v98);
          v101 = vtrn1q_s16(v98, v98);
          v102 = vuzp1q_s16(v99, _Q0);
          *v102.i8 = vadd_f16(*v102.i8, *&vuzp2q_s16(v99, _Q0));
          v103 = vzip1q_s16(v102, v102);
          v104 = *v70++;
          v105 = vshlq_u16(v104, v85);
          v106 = *v92++;
          v107 = v106;
          v108 = vsubq_f16(vcvtq_f16_u16(v105), v195);
          v109 = vmlaq_n_f16(v100, v108, _H8);
          v110 = vmlaq_n_f16(v103, v108, _H8);
          v111 = vmlaq_n_f16(v101, v108, _H8);
          *v68++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v109, v194), v110, v193), v111, v191), v57), v192)), v86);
          if (v67)
          {
            v196.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v109, v189), v110, v188), v111, v187), v190), v59), v190), v59)), v86);
            v196.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v109, v186), v110, v185), v111, v184)), v86);
            vst2q_s16(v67, v196);
            v67 += 16;
          }

          v112 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v107, v85)), v195);
          v113 = vmlaq_n_f16(v100, v112, _H8);
          v114 = vmlaq_n_f16(v103, v112, _H8);
          v115 = vmlaq_n_f16(v101, v112, _H8);
          *v94++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v113, v194), v114, v193), v115, v191), v57), v192)), v86);
          if (v95)
          {
            v197.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v113, v189), v114, v188), v115, v187), v190), v59), v190), v59)), v86);
            v197.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v113, v186), v114, v185), v115, v184)), v86);
            vst2q_s16(v95, v197);
            v95 += 16;
          }

          v91 += 8;
        }

        while (v91 < v9 - 7);
        v116 = v9 & 0xFFFFFFF8;
        _S5 = v176;
      }

      while (v116 < result)
      {
        v117 = (v93->u16[0] >> v71) - v183;
        v118 = (v93->u16[1] >> v71) - v183;
        v119 = v177 * v118;
        v120 = (*(&v87 + 1) * v118) + (v117 * *&v87);
        v121 = v182 * v117;
        v122 = _S24 * ((v70->u16[0] >> v71) - v39);
        v123 = (v177 * v118) + v122;
        v124 = v122 + v120;
        v125 = v121 + v122;
        v126 = (((_S1 * (v122 + v120)) + (*_Q0.i32 * v123)) + (_S2 * (v121 + v122))) + v42;
        v127 = v44;
        if (v126 <= v44)
        {
          v127 = (((_S1 * (v122 + v120)) + (*_Q0.i32 * (v119 + v122))) + (_S2 * (v121 + v122))) + v42;
          if (v126 < v42)
          {
            v127 = v42;
          }
        }

        v128 = v70->u16[1];
        v129 = v92->u16[0];
        v130 = v92->u16[1];
        v68->i16[0] = llroundf(v127) << v73;
        if (v67)
        {
          v131 = ((v43 + (v123 * _S12)) + (v124 * _S5)) + (v125 * v77);
          v132 = v46;
          if (v131 <= v46)
          {
            v132 = ((v43 + (v123 * _S12)) + (v124 * _S5)) + (v125 * v77);
            if (v131 < v45)
            {
              v132 = v45;
            }
          }

          v133 = ((v43 + (v123 * v79)) + (v124 * v81)) + (v125 * v83);
          *v67 = llroundf(v132) << v73;
          v134 = v46;
          if (v133 <= v46)
          {
            if (v133 < v45)
            {
              v134 = v45;
            }

            else
            {
              v134 = v133;
            }
          }

          v67[1] = llroundf(v134) << v73;
          v67 += 2;
        }

        v135 = _S24 * ((v128 >> v71) - v39);
        v136 = v119 + v135;
        v137 = v120 + v135;
        v138 = v121 + v135;
        v139 = (((_S1 * (v120 + v135)) + (*_Q0.i32 * (v119 + v135))) + (_S2 * (v121 + v135))) + v42;
        v140 = v44;
        if (v139 <= v44)
        {
          v140 = (((_S1 * (v120 + v135)) + (*_Q0.i32 * (v119 + v135))) + (_S2 * (v121 + v135))) + v42;
          if (v139 < v42)
          {
            v140 = v42;
          }
        }

        v68->i16[1] = llroundf(v140) << v73;
        if (v67)
        {
          v141 = ((v43 + (v136 * _S12)) + (v137 * _S5)) + (v138 * v77);
          v142 = v46;
          if (v141 <= v46)
          {
            v142 = ((v43 + (v136 * _S12)) + (v137 * _S5)) + (v138 * v77);
            if (v141 < v45)
            {
              v142 = v45;
            }
          }

          v143 = ((v43 + (v136 * v79)) + (v137 * v81)) + (v138 * v83);
          *v67 = llroundf(v142) << v73;
          v144 = v46;
          if (v143 <= v46)
          {
            if (v143 < v45)
            {
              v144 = v45;
            }

            else
            {
              v144 = v143;
            }
          }

          v67[1] = llroundf(v144) << v73;
          v67 += 2;
        }

        v145 = _S24 * ((v129 >> v71) - v39);
        v146 = v119 + v145;
        v147 = v120 + v145;
        v148 = v121 + v145;
        v149 = (((_S1 * (v120 + v145)) + (*_Q0.i32 * (v119 + v145))) + (_S2 * (v121 + v145))) + v42;
        v150 = v44;
        if (v149 <= v44)
        {
          v150 = (((_S1 * (v120 + v145)) + (*_Q0.i32 * (v119 + v145))) + (_S2 * (v121 + v145))) + v42;
          if (v149 < v42)
          {
            v150 = v42;
          }
        }

        v94->i16[0] = llroundf(v150) << v73;
        if (v95)
        {
          v151 = ((v43 + (v146 * _S12)) + (v147 * _S5)) + (v148 * v77);
          v152 = v46;
          if (v151 <= v46)
          {
            v152 = ((v43 + (v146 * _S12)) + (v147 * _S5)) + (v148 * v77);
            if (v151 < v45)
            {
              v152 = v45;
            }
          }

          v153 = ((v43 + (v146 * v79)) + (v147 * v81)) + (v148 * v83);
          *v95 = llroundf(v152) << v73;
          v154 = v46;
          if (v153 <= v46)
          {
            if (v153 < v45)
            {
              v154 = v45;
            }

            else
            {
              v154 = v153;
            }
          }

          v95[1] = llroundf(v154) << v73;
          v95 += 2;
        }

        v155 = _S24 * ((v130 >> v71) - v39);
        v156 = v119 + v155;
        v157 = v120 + v155;
        v158 = v121 + v155;
        v159 = ((_S1 * (v120 + v155)) + (*_Q0.i32 * (v119 + v155))) + (_S2 * v158);
        v160 = v44;
        if ((v159 + v42) <= v44)
        {
          v160 = v159 + v42;
          if ((v159 + v42) < v42)
          {
            v160 = v42;
          }
        }

        v94->i16[1] = llroundf(v160) << v73;
        if (v95)
        {
          v161 = ((v43 + (v156 * _S12)) + (v157 * _S5)) + (v158 * v77);
          v162 = v46;
          if (v161 <= v46)
          {
            v162 = ((v43 + (v156 * _S12)) + (v157 * _S5)) + (v158 * v77);
            if (v161 < v45)
            {
              v162 = v45;
            }
          }

          v163 = (v43 + (v156 * v79)) + (v157 * v81);
          v164 = v163 + (v158 * v83);
          *v95 = llroundf(v162) << v73;
          v165 = v46;
          if (v164 <= v46)
          {
            v165 = v163 + (v158 * v83);
            if (v164 < v45)
            {
              v165 = v45;
            }
          }

          v95[1] = llroundf(v165) << v73;
          v95 += 2;
        }

        v116 += 2;
        v93 = (v93 + 4);
        v70 = (v70 + 4);
        v92 = (v92 + 4);
        v68 = (v68 + 4);
        v94 = (v94 + 4);
      }

      v70 = &v88[v21];
      v69 += v22;
      v68 = &v89[v23];
      v67 = &v90[v24];
      v19 += 2;
    }

    while (v19 < v12);
  }

  if (v173 && v172)
  {
    if (v12 >= 1)
    {
      v166 = 0;
      v167 = (v173 + v169 * v170 + 2 * v171);
      v168 = 2 * v9;
      do
      {
        result = memcpy(v18, v167, v168);
        v167 += v169;
        v18 += v17;
        ++v166;
      }

      while (v12 > v166);
    }
  }

  else if (v172 && v12 >= 1)
  {
    do
    {
      if (v9 >= 1)
      {
        result = memset(v18, 255, 2 * v9);
      }

      v18 += v17;
      --v12;
    }

    while (v12);
  }

  *(v175 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v18 = a6[1];
  v72 = *a6;
  v73 = v16;
  v68 = a6[2];
  v69 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_72:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v60 - v21);
    bzero(&v60 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v68, v69), v72), vceqq_s64(vaddq_s64(v70, v71), v73))));
  v24 = v68.i64[0];
  v25 = v69.i64[0];
  v26 = v71.i64[0];
  v27 = v70.i64[0];
  if (v68.i8[0])
  {
    v24 = v68.i64[0] + 1;
    v27 = v70.i64[0] + 1;
    v25 = v69.i64[0] - 1;
    v26 = v71.i64[0] - 1;
  }

  v28 = a9;
  v29 = v72.i64[0];
  v30 = v73.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = 2 * (v24 + v25) + 2, v34 > *a8) || (v35 = a8[1], v35 < 2 * v34) && v35 || (v36 = a8[2], v34 > v36) && v36)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v72.i64[0] + 1;
      v30 = v73.i64[0] + 1;
      ++v26;
    }
  }

  v37 = v69.i64[1];
  v38 = v71.i64[1];
  if (v68.i8[8])
  {
    v38 = v71.i64[1] - 1;
    v39 = v70.i64[1] + 1;
  }

  else
  {
    v39 = v70.i64[1];
  }

  if (v68.i8[8])
  {
    v37 = v69.i64[1] - 1;
    v40 = v68.i64[1] + 1;
  }

  else
  {
    v40 = v68.i64[1];
  }

  v41 = v72.i64[1];
  v42 = v73.i64[1];
  v67 = a1;
  if (v37)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v43 = v38 + 1 + v39, (*a4 * v43) > *a5) || (a4[1] * (v43 / 2)) > a5[1] || (a4[2] * v43) > a5[2] || (v44 = v37 + 1 + v40, *a8 * v44 > *a9) || a8[1] * v44 > a9[1] || a8[2] * v44 > a9[2])
    {
      --v37;
      --v38;
    }

    else
    {
      v41 = v72.i64[1] + 1;
      v42 = v73.i64[1] + 1;
      ++v38;
      ++v37;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v38 + v39 > v42)
  {
    v38 = v42 - v39;
  }

  if (v37 + v40 > v41)
  {
    v37 = v41 - v40;
  }

  if (v26 >= v25)
  {
    v45 = v25;
  }

  else
  {
    v45 = v26;
  }

  if (v38 >= v37)
  {
    v46 = v37;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 + v39 - 1;
  v48 = v45 + v27;
  v49 = (v47 * *a4 + 2 * (v45 + v27)) > *a5;
  v65 = v24;
  v66 = v13;
  v63 = a9;
  v64 = v27;
  v61 = v30;
  v62 = v29;
  v71.i64[0] = v40;
  v70.i64[0] = v39;
  v73.i64[0] = v41;
  v72.i64[0] = v42;
  if (v49)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 8) && a4[1] * ((v46 + v39 + 1) / 2 - 1) + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a5[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(v13 + 16) && (2 * v48 + a4[2] * v47) > a5[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  v53 = v40 + v46 - 1;
  v54 = v45 + v24;
  if (*a8 * v53 + 2 * (v45 + v24) > *a9)
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 8) && a8[1] * v53 + 4 * v54 > a9[1])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
    goto LABEL_65;
  }

  if (*(a7 + 16) && 2 * v54 + a8[2] * v53 > a9[2])
  {
    v50 = a5;
    v51 = a8;
    v52 = v15;
LABEL_65:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v52;
    a8 = v51;
    a5 = v50;
    v24 = v65;
    v13 = v66;
    v28 = v63;
    v27 = v64;
    v30 = v61;
    v29 = v62;
    v40 = v71.i64[0];
    v39 = v70.i64[0];
    v41 = v73.i64[0];
    v42 = v72.i64[0];
    if (v20)
    {
      goto LABEL_71;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v42;
  *(v19 + 20) = v45;
  *(v19 + 28) = v46;
  *(v19 + 36) = v27;
  *(v19 + 44) = v39;
  v19[11] = v41;
  v19[12] = v45;
  v19[13] = v46;
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v40;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v67;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_rgb_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v56 = (v19 + 20);
  v57 = v15;
  while (1)
  {
    v58 = *v56++;
    v20 = v58;
    if (v58)
    {
      break;
    }

    if (!--v57)
    {
      v20 = 0;
      break;
    }
  }

LABEL_71:
  if (v15 == 255)
  {
    goto LABEL_72;
  }

  return v20;
}

uint64_t vt_Copy_xf420_rgb_xf444_GCD(void *a1, uint64_t a2)
{
  v7 = 2 * *a1;
  v126 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v7);
  v127 = *(a1 + 36);
  v8 = a1[14];
  v10 = a1[12];
  v9 = a1[13];
  v11 = v9 * a2 / v7;
  result = a1[15] + 2 * v11;
  v13 = 2 * ((v9 + v9 * a2) / v7 - v11);
  v14 = a1[7];
  v15 = a1[8];
  v16 = a1[16];
  v17 = a1[17];
  v18 = v15[2];
  v129 = v14[2];
  v19 = v17[2];
  v128 = v16[2];
  v20 = (v128 + v19 * result + 2 * v8);
  if (v13 >= 1)
  {
    v21 = 0;
    v22 = a1[19];
    v23 = v10 & 0xFFFFFFFE;
    v24 = *v15;
    v25 = v15[1];
    v26 = *v17;
    v27 = v17[1];
    *&v28 = *(v22 + 128);
    *&v29 = *(v22 + 136);
    v30 = *&v29 / *&v28;
    LOWORD(v28) = *(v22 + 140);
    v31 = v28;
    LOWORD(v29) = *(v22 + 142);
    v32 = v29;
    v33 = v30 * *v22;
    v34 = v30 * *(v22 + 8);
    v35 = v30 * *(v22 + 16);
    v36 = v30 * *(v22 + 20);
    v37 = *(v22 + 28);
    v38 = v30 * v37;
    LOWORD(v37) = *(v22 + 144);
    v39 = LODWORD(v37);
    LOWORD(v2) = *(v22 + 146);
    v40 = v2;
    LOWORD(v3) = *(v22 + 148);
    v41 = v3;
    LOWORD(v4) = *(v22 + 150);
    v42 = v4;
    LOWORD(v5) = *(v22 + 152);
    v43 = v5;
    v44 = *(v22 + 36);
    v45 = *(v22 + 40);
    v46 = *(v22 + 44);
    v47 = *(v22 + 48);
    v48 = *(v22 + 52);
    v49 = *(v22 + 56);
    v50 = *(v22 + 60);
    v51 = *(v22 + 64);
    v52 = *(v22 + 68);
    v53 = *v16;
    v54 = *(a1[16] + 8);
    if (v54)
    {
      v55 = (v54 + v27 * result + 2 * v8);
    }

    else
    {
      v55 = 0;
    }

    result = v53 + v26 * result + 2 * v8;
    v57 = *v14;
    v56 = v14[1];
    v58 = (v57 + v24 * v126 + 2 * v127);
    LODWORD(v57) = *(v22 + 132);
    v59 = v57 >= 0x11;
    v60 = 16 - v57;
    if (v59)
    {
      v60 = 0;
    }

    v61 = *(v22 + 124);
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    else
    {
      v62 = 16 - v61;
    }

    v63 = v56 + v25 * (v126 / 2) + 2 * v127;
    v64 = v62;
    v65 = v60;
    do
    {
      v66 = &v58[v24];
      v67 = result + v26;
      v68 = &v55[v27];
      if (v23 >= 1)
      {
        v69 = 0;
        v70 = &v58[v24];
        v71 = (result + v26);
        v72 = &v55[v27];
        do
        {
          v73 = (v63 + 2 * v69);
          v74 = (*v73 >> v64) - v32;
          v75 = (v73[1] >> v64) - v32;
          v76 = v34 * v75;
          v77 = (v36 * v75) + (v74 * v35);
          v78 = v38 * v74;
          v79 = v33 * ((*v58 >> v64) - v31);
          v80 = v76 + v79;
          v81 = v79 + v77;
          v82 = v78 + v79;
          v83 = (((v45 * v81) + (v44 * v80)) + (v46 * v82)) + v39;
          v84 = v41;
          if (v83 <= v41)
          {
            v84 = (((v45 * v81) + (v44 * v80)) + (v46 * v82)) + v39;
            if (v83 < v39)
            {
              v84 = v39;
            }
          }

          v85 = *(v58 + 1);
          v86 = *v70;
          v87 = *(v70 + 1);
          *result = llroundf(v84) << v65;
          if (v55)
          {
            v88 = ((v40 + (v80 * v47)) + (v81 * v48)) + (v82 * v49);
            v89 = v43;
            if (v88 <= v43)
            {
              v89 = ((v40 + (v80 * v47)) + (v81 * v48)) + (v82 * v49);
              if (v88 < v42)
              {
                v89 = v42;
              }
            }

            v90 = ((v40 + (v80 * v50)) + (v81 * v51)) + (v82 * v52);
            *v55 = llroundf(v89) << v65;
            v91 = v43;
            if (v90 <= v43)
            {
              if (v90 < v42)
              {
                v91 = v42;
              }

              else
              {
                v91 = v90;
              }
            }

            *(v55 + 1) = llroundf(v91) << v65;
            v55 += 4;
          }

          v92 = v33 * ((v85 >> v64) - v31);
          v93 = v76 + v92;
          v94 = v77 + v92;
          v95 = v78 + v92;
          v96 = (((v45 * v94) + (v44 * v93)) + (v46 * v95)) + v39;
          v97 = v41;
          if (v96 <= v41)
          {
            v97 = (((v45 * v94) + (v44 * v93)) + (v46 * v95)) + v39;
            if (v96 < v39)
            {
              v97 = v39;
            }
          }

          *(result + 2) = llroundf(v97) << v65;
          if (v55)
          {
            v98 = ((v40 + (v93 * v47)) + (v94 * v48)) + (v95 * v49);
            v99 = v43;
            if (v98 <= v43)
            {
              v99 = ((v40 + (v93 * v47)) + (v94 * v48)) + (v95 * v49);
              if (v98 < v42)
              {
                v99 = v42;
              }
            }

            v100 = ((v40 + (v93 * v50)) + (v94 * v51)) + (v95 * v52);
            *v55 = llroundf(v99) << v65;
            v101 = v43;
            if (v100 <= v43)
            {
              if (v100 < v42)
              {
                v101 = v42;
              }

              else
              {
                v101 = v100;
              }
            }

            *(v55 + 1) = llroundf(v101) << v65;
            v55 += 4;
          }

          v102 = v33 * ((v86 >> v64) - v31);
          v103 = v76 + v102;
          v104 = v77 + v102;
          v105 = v78 + v102;
          v106 = (((v45 * v104) + (v44 * v103)) + (v46 * v105)) + v39;
          v107 = v41;
          if (v106 <= v41)
          {
            v107 = (((v45 * v104) + (v44 * v103)) + (v46 * v105)) + v39;
            if (v106 < v39)
            {
              v107 = v39;
            }
          }

          *v71 = llroundf(v107) << v65;
          if (v72)
          {
            v108 = ((v40 + (v103 * v47)) + (v104 * v48)) + (v105 * v49);
            v109 = v43;
            if (v108 <= v43)
            {
              v109 = ((v40 + (v103 * v47)) + (v104 * v48)) + (v105 * v49);
              if (v108 < v42)
              {
                v109 = v42;
              }
            }

            v110 = ((v40 + (v103 * v50)) + (v104 * v51)) + (v105 * v52);
            *v72 = llroundf(v109) << v65;
            v111 = v43;
            if (v110 <= v43)
            {
              if (v110 < v42)
              {
                v111 = v42;
              }

              else
              {
                v111 = v110;
              }
            }

            *(v72 + 1) = llroundf(v111) << v65;
            v112 = v72 + 4;
          }

          else
          {
            v112 = 0;
          }

          v113 = v33 * ((v87 >> v64) - v31);
          v114 = v76 + v113;
          v115 = v77 + v113;
          v116 = v78 + v113;
          v117 = (((v45 * v115) + (v44 * v114)) + (v46 * v116)) + v39;
          v118 = v41;
          if (v117 <= v41)
          {
            v118 = (((v45 * v115) + (v44 * v114)) + (v46 * v116)) + v39;
            if (v117 < v39)
            {
              v118 = v39;
            }
          }

          v71[1] = llroundf(v118) << v65;
          if (v112)
          {
            v119 = ((v40 + (v114 * v47)) + (v115 * v48)) + (v116 * v49);
            v120 = v43;
            if (v119 <= v43)
            {
              v120 = ((v40 + (v114 * v47)) + (v115 * v48)) + (v116 * v49);
              if (v119 < v42)
              {
                v120 = v42;
              }
            }

            v121 = ((v40 + (v114 * v50)) + (v115 * v51)) + (v116 * v52);
            *v112 = llroundf(v120) << v65;
            v122 = v43;
            if (v121 <= v43)
            {
              v122 = v121;
              if (v121 < v42)
              {
                v122 = v42;
              }
            }

            v112[1] = llroundf(v122) << v65;
            v72 = (v112 + 2);
          }

          else
          {
            v72 = 0;
          }

          v58 += 4;
          v70 += 4;
          result += 4;
          v71 += 2;
          v69 += 2;
        }

        while (v69 < v23);
      }

      v58 = &v66[v24];
      v63 += v25;
      result = v67 + v26;
      v55 = &v68[v27];
      v21 += 2;
    }

    while (v21 < v13);
  }

  if (v129 && v128)
  {
    if (v13 >= 1)
    {
      v123 = 0;
      v124 = (v129 + v18 * v126 + 2 * v127);
      v125 = 2 * v10;
      do
      {
        result = memcpy(v20, v124, v125);
        v124 += v18;
        v20 += v19;
        ++v123;
      }

      while (v13 > v123);
    }
  }

  else if (v128 && v13 >= 1)
  {
    do
    {
      if (v10 >= 1)
      {
        result = memset(v20, 255, 2 * v10);
      }

      v20 += v19;
      --v13;
    }

    while (v13);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v58 = a2[2];
  v59 = v17;
  v18 = a6[1];
  v60 = *a6;
  v61 = v16;
  v56 = a6[2];
  v57 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_56:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v50 - v21);
    bzero(&v50 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v56, v57), v60), vceqq_s64(vaddq_s64(v58, v59), v61))));
  v24 = v56.i64[0];
  v25 = v57.i64[0];
  v26 = v59.i64[0];
  v27 = v58.i64[0];
  if (v56.i8[0])
  {
    v24 = v56.i64[0] + 1;
    v27 = v58.i64[0] + 1;
    v25 = v57.i64[0] - 1;
    v26 = v59.i64[0] - 1;
  }

  v28 = a9;
  v29 = v60.i64[0];
  v30 = v61.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (4 * (v24 + v25) + 4) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v60.i64[0] + 1;
      v30 = v61.i64[0] + 1;
      ++v26;
    }
  }

  v34 = v57.i64[1];
  v35 = v59.i64[1];
  if (v56.i8[8])
  {
    v35 = v59.i64[1] - 1;
    v36 = v58.i64[1] + 1;
  }

  else
  {
    v36 = v58.i64[1];
  }

  if (v56.i8[8])
  {
    v34 = v57.i64[1] - 1;
    v37 = v56.i64[1] + 1;
  }

  else
  {
    v37 = v56.i64[1];
  }

  v38 = v60.i64[1];
  v39 = v61.i64[1];
  v55 = a1;
  if (v34)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v40 = v35 + 1 + v36, (*a4 * v40) > *a5) || (a4[1] * (v40 / 2)) > a5[1] || (a4[2] * v40) > a5[2] || (*a8 * (v34 + 1 + v37)) > *a9)
    {
      --v34;
      --v35;
    }

    else
    {
      v38 = v60.i64[1] + 1;
      v39 = v61.i64[1] + 1;
      ++v35;
      ++v34;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v35 + v36 > v39)
  {
    v35 = v39 - v36;
  }

  if (v34 + v37 > v38)
  {
    v34 = v38 - v37;
  }

  if (v26 >= v25)
  {
    v41 = v25;
  }

  else
  {
    v41 = v26;
  }

  if (v35 >= v34)
  {
    v42 = v34;
  }

  else
  {
    v42 = v35;
  }

  v43 = v42 + v36 - 1;
  v44 = v41 + v27;
  if ((v43 * *a4 + 2 * (v41 + v27)) <= *a5 && (!*(v13 + 8) || a4[1] * ((v42 + v36 + 1) / 2 - 1) + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) <= a5[1]) && (!*(v13 + 16) || (2 * v44 + a4[2] * v43) <= a5[2]) && (*a8 * (v37 + v42 - 1) + 4 * (v41 + v24)) <= *a9 || (v51 = v39, v52 = v38, v53 = v36, v54 = v37, v56.i64[0] = v30, v57.i64[0] = v29, v58.i64[0] = a9, v59.i64[0] = v27, v60.i64[0] = v24, v61.i64[0] = v13, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), v13 = v61.i64[0], v24 = v60.i64[0], v27 = v59.i64[0], v28 = v58.i64[0], v29 = v57.i64[0], v30 = v56.i64[0], v36 = v53, v37 = v54, v39 = v51, v38 = v52, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v39;
    *(v19 + 20) = v41;
    *(v19 + 28) = v42;
    *(v19 + 36) = v27;
    *(v19 + 44) = v36;
    v19[11] = v38;
    v19[12] = v41;
    v19[13] = v42;
    v19[14] = v24;
    v19[7] = v13;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v37;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v28;
    v19[19] = v55;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v46 = (v19 + 20);
    v47 = v15;
    while (1)
    {
      v48 = *v46++;
      v20 = v48;
      if (v48)
      {
        break;
      }

      if (!--v47)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_56;
  }

  return v20;
}

unint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, int16x4_t _D2, double a6, float32x4_t a7)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 36);
  v270 = *(a1 + 24);
  v11 = 2 * *a1;
  v12 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v11);
  v14 = *(a1 + 13);
  v13 = *(a1 + 14);
  v15 = *(a1 + 19);
  v17 = *(a1 + 7);
  v16 = *(a1 + 8);
  v18 = *v16;
  v19 = v16[1];
  v20 = *(a1 + 15) + 2 * (v14 * a2 / v11);
  v21 = *v17;
  v22 = v17[1];
  v23 = v16[2];
  v24 = v17[2];
  v25 = **(a1 + 17);
  v26 = **(a1 + 16);
  v27 = *(v15 + 128);
  v305 = *(v15 + 158);
  v28 = *(v15 + 140);
  v29 = *(v15 + 124);
  v30 = *(v15 + 142);
  v31 = *v15;
  v32 = *(v15 + 8);
  v33 = *(v15 + 16);
  v34 = (v14 + v14 * a2) / v11 - v14 * a2 / v11;
  v35.i32[0] = *(v15 + 28);
  v302 = *(v15 + 72);
  v301 = *(v15 + 76);
  v300 = *(v15 + 80);
  v299 = *(v15 + 84);
  v269 = v19;
  v36 = v19 * (v12 / 2);
  v298 = *(v15 + 88);
  v297 = *(v15 + 92);
  v37 = v25 * v20;
  v296 = *(v15 + 96);
  v295 = *(v15 + 100);
  _S18 = *(v15 + 108);
  v294 = *(v15 + 104);
  _S6 = *(v15 + 112);
  _S7 = *(v15 + 116);
  _S16 = *(v15 + 120);
  v42.i32[1] = 0;
  v42.i64[1] = 0;
  v303 = 0u;
  v304 = 0u;
  do
  {
    LODWORD(result) = 0;
    v44 = *(&v305 + v9);
    do
    {
      *((&v303 + ((v44 + 4 * result) & 0xF8)) | (v44 + 4 * result) & 7) = v8 + result;
      result = (result + 1);
    }

    while (result != 8);
    ++v9;
    v8 += 8;
  }

  while (v9 != 4);
  v268 = 2 * v34;
  if (2 * v34 >= 1)
  {
    v45 = 0;
    v46 = v27;
    v47 = v15 + 16548;
    v48 = v270 & 0xFFFFFFFE;
    v42.i32[0] = 1174403072;
    v49 = v28;
    v50 = v30;
    _S1 = 8191.0 / v46;
    _S19 = _S1 * v31;
    v53 = v15 + 32932;
    v54 = v15 + 164;
    __asm { FCVT            H2, S19 }

    v292 = *_D2.i16;
    *_D2.i16 = v28;
    v291 = vdupq_lane_s16(_D2, 0);
    v35.i32[1] = v32;
    v59 = -v30;
    *a7.f32 = vmul_n_f32(v35, _S1);
    *v7.f32 = vmul_n_f32(v33, _S1);
    v290 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v287 = vmulq_n_f16(v290, v59);
    v288 = vdupq_lane_s32(vcvt_f16_f32(v7), 0);
    __asm { FCVT            H1, S18 }

    v285 = *&_S1;
    v286 = vmulq_n_f16(v288, v59);
    __asm { FCVT            H1, S6 }

    v284 = *&_S1;
    __asm { FCVT            H1, S7 }

    v283 = *&_S1;
    __asm { FCVT            H1, S16 }

    v282 = *&_S1;
    _S1 = v302;
    __asm { FCVT            H1, S1 }

    v281 = *&_S1;
    _S1 = v301;
    __asm { FCVT            H1, S1 }

    v280 = *&_S1;
    _S1 = v300;
    __asm { FCVT            H1, S1 }

    v279 = *&_S1;
    _S1 = v299;
    __asm { FCVT            H1, S1 }

    v278 = *&_S1;
    _S1 = v298;
    __asm { FCVT            H1, S1 }

    v277 = *&_S1;
    _S1 = v297;
    __asm { FCVT            H1, S1 }

    v276 = *&_S1;
    _S1 = v296;
    __asm { FCVT            H1, S1 }

    v275 = *&_S1;
    _S1 = v295;
    __asm { FCVT            H1, S1 }

    v274 = *&_S1;
    _S1 = v294;
    __asm { FCVT            H1, S1 }

    v273 = *&_S1;
    v69 = 16 - v29;
    v70 = v22 + v36;
    if (v29 >= 0x11)
    {
      v69 = 0;
    }

    v71 = (v26 + v37 + 4 * v13);
    if (v24)
    {
      v72 = v24 + v23 * v12 + 2 * v10;
    }

    else
    {
      v72 = 0;
    }

    v73 = (v70 + 2 * v10);
    result = v21 + v18 * v12;
    v74 = (result + 2 * v10);
    v75 = v69;
    v272 = vdupq_n_s16(-v69);
    v289 = v7.f32[0];
    v76 = a7.i64[0];
    v271 = v7.f32[1];
    v77 = 0uLL;
    v293 = _S19;
    do
    {
      v78 = &v74->i8[v18];
      v79 = &v71->i8[v25];
      if (v270 < 8)
      {
        v130 = 0;
        v84 = &v71->i8[v25];
        v83 = v73;
        v82 = (v74 + v18);
      }

      else
      {
        v80 = 0;
        v81 = *(&v303 + 8);
        v82 = (v74 + v18);
        v83 = v73;
        v84 = &v71->i8[v25];
        do
        {
          if (v72)
          {
            v85 = vcvtq_u32_f32(v77);
            v86 = vmovn_s16(vuzp1q_s16(v85, v85));
          }

          else
          {
            v86 = -1;
          }

          v87 = *v83++;
          v88 = vcvtq_f16_u16(vshlq_u16(v87, v272));
          v89 = vmlaq_f16(v287, v290, v88);
          v90 = vmlaq_f16(v286, v288, v88);
          v91 = vtrn2q_s16(v89, v89);
          v92 = vtrn1q_s16(v89, v89);
          v93 = vuzp1q_s16(v90, v42);
          *v93.i8 = vadd_f16(*v93.i8, *&vuzp2q_s16(v90, v42));
          v94 = vzip1q_s16(v93, v93);
          v95 = *v74++;
          v96 = vcvtq_f16_u16(vshlq_u16(v95, v272));
          v97 = *v82++;
          v98 = vsubq_f16(v96, v291);
          v99 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v97, v272)), v291);
          v100 = vmlaq_n_f16(v94, v98, v292);
          v101 = vmlaq_n_f16(v92, v98, v292);
          v102.i64[0] = 0x9000900090009000;
          v102.i64[1] = 0x9000900090009000;
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v91, v98, v292), v77), v102));
          v104.i16[0] = *(v54 + 2 * v103.u16[0]);
          v104.i16[1] = *(v54 + 2 * v103.u16[1]);
          v104.i16[2] = *(v54 + 2 * v103.u16[2]);
          v104.i16[3] = *(v54 + 2 * v103.u16[3]);
          v104.i16[4] = *(v54 + 2 * v103.u16[4]);
          v104.i16[5] = *(v54 + 2 * v103.u16[5]);
          v104.i16[6] = *(v54 + 2 * v103.u16[6]);
          v104.i16[7] = *(v54 + 2 * v103.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, v77), v102));
          v106.i16[0] = *(v54 + 2 * v105.u16[0]);
          v106.i16[1] = *(v54 + 2 * v105.u16[1]);
          v106.i16[2] = *(v54 + 2 * v105.u16[2]);
          v106.i16[3] = *(v54 + 2 * v105.u16[3]);
          v106.i16[4] = *(v54 + 2 * v105.u16[4]);
          v106.i16[5] = *(v54 + 2 * v105.u16[5]);
          v106.i16[6] = *(v54 + 2 * v105.u16[6]);
          v106.i16[7] = *(v54 + 2 * v105.u16[7]);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, v77), v102));
          v101.i16[0] = *(v54 + 2 * v107.u16[0]);
          v101.i16[1] = *(v54 + 2 * v107.u16[1]);
          v101.i16[2] = *(v54 + 2 * v107.u16[2]);
          v101.i16[3] = *(v54 + 2 * v107.u16[3]);
          v101.i16[4] = *(v54 + 2 * v107.u16[4]);
          v101.i16[5] = *(v54 + 2 * v107.u16[5]);
          v101.i16[6] = *(v54 + 2 * v107.u16[6]);
          v101.i16[7] = *(v54 + 2 * v107.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v91, v99, v292), v77), v102));
          v91.i16[0] = *(v54 + 2 * v108.u16[0]);
          v91.i16[1] = *(v54 + 2 * v108.u16[1]);
          v91.i16[2] = *(v54 + 2 * v108.u16[2]);
          v91.i16[3] = *(v54 + 2 * v108.u16[3]);
          v91.i16[4] = *(v54 + 2 * v108.u16[4]);
          v91.i16[5] = *(v54 + 2 * v108.u16[5]);
          v91.i16[6] = *(v54 + 2 * v108.u16[6]);
          v91.i16[7] = *(v54 + 2 * v108.u16[7]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v94, v99, v292), v77), v102));
          v94.i16[0] = *(v54 + 2 * v109.u16[0]);
          v94.i16[1] = *(v54 + 2 * v109.u16[1]);
          v94.i16[2] = *(v54 + 2 * v109.u16[2]);
          v94.i16[3] = *(v54 + 2 * v109.u16[3]);
          v94.i16[4] = *(v54 + 2 * v109.u16[4]);
          v94.i16[5] = *(v54 + 2 * v109.u16[5]);
          v94.i16[6] = *(v54 + 2 * v109.u16[6]);
          v94.i16[7] = *(v54 + 2 * v109.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v92, v99, v292), v77), v102));
          v92.i16[0] = *(v54 + 2 * v110.u16[0]);
          v92.i16[1] = *(v54 + 2 * v110.u16[1]);
          v92.i16[2] = *(v54 + 2 * v110.u16[2]);
          v92.i16[3] = *(v54 + 2 * v110.u16[3]);
          v92.i16[4] = *(v54 + 2 * v110.u16[4]);
          v92.i16[5] = *(v54 + 2 * v110.u16[5]);
          v92.i16[6] = *(v54 + 2 * v110.u16[6]);
          v92.i16[7] = *(v54 + 2 * v110.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v285), v106, v284), v101, v283), vmaxq_f16(vmaxq_f16(v104, v106), v101), v282), v77), v102));
          v99.i16[0] = *(v47 + 2 * v111.u16[0]);
          v99.i16[1] = *(v47 + 2 * v111.u16[1]);
          v99.i16[2] = *(v47 + 2 * v111.u16[2]);
          v99.i16[3] = *(v47 + 2 * v111.u16[3]);
          v99.i16[4] = *(v47 + 2 * v111.u16[4]);
          v99.i16[5] = *(v47 + 2 * v111.u16[5]);
          v99.i16[6] = *(v47 + 2 * v111.u16[6]);
          v99.i16[7] = *(v47 + 2 * v111.u16[7]);
          v112 = vmulq_f16(v104, v99);
          v113 = vmulq_f16(v106, v99);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v91, v285), v94, v284), v92, v283), vmaxq_f16(vmaxq_f16(v91, v94), v92), v282), v77), v102));
          v115 = vmulq_f16(v101, v99);
          v90.i16[0] = *(v47 + 2 * v114.u16[0]);
          v90.i16[1] = *(v47 + 2 * v114.u16[1]);
          v90.i16[2] = *(v47 + 2 * v114.u16[2]);
          v90.i16[3] = *(v47 + 2 * v114.u16[3]);
          v90.i16[4] = *(v47 + 2 * v114.u16[4]);
          v90.i16[5] = *(v47 + 2 * v114.u16[5]);
          v90.i16[6] = *(v47 + 2 * v114.u16[6]);
          v90.i16[7] = *(v47 + 2 * v114.u16[7]);
          v116 = vmulq_f16(v91, v90);
          v117 = vmulq_f16(v94, v90);
          v118 = vmulq_f16(v92, v90);
          v307.val[1] = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v281), v113, v280), v115, v279);
          v119 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v278), v113, v277), v115, v276);
          v306.val[1] = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v115, v273), v113, v274), v112, v275);
          v120 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v281), v117, v280), v118, v279);
          v121 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v278), v117, v277), v118, v276);
          v122 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, v273), v117, v274), v116, v275);
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v307.val[1], v77), v102));
          v112.i16[0] = *(v53 + 2 * v123.u16[0]);
          v112.i16[1] = *(v53 + 2 * v123.u16[1]);
          v112.i16[2] = *(v53 + 2 * v123.u16[2]);
          v112.i16[3] = *(v53 + 2 * v123.u16[3]);
          v112.i16[4] = *(v53 + 2 * v123.u16[4]);
          v112.i16[5] = *(v53 + 2 * v123.u16[5]);
          v112.i16[6] = *(v53 + 2 * v123.u16[6]);
          v112.i16[7] = *(v53 + 2 * v123.u16[7]);
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, v77), v102));
          v101.i16[0] = *(v53 + 2 * v124.u16[0]);
          v101.i16[1] = *(v53 + 2 * v124.u16[1]);
          v101.i16[2] = *(v53 + 2 * v124.u16[2]);
          v101.i16[3] = *(v53 + 2 * v124.u16[3]);
          v101.i16[4] = *(v53 + 2 * v124.u16[4]);
          v101.i16[5] = *(v53 + 2 * v124.u16[5]);
          v101.i16[6] = *(v53 + 2 * v124.u16[6]);
          v101.i16[7] = *(v53 + 2 * v124.u16[7]);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v306.val[1], v77), v102));
          v306.val[1].i16[0] = *(v53 + 2 * v125.u16[0]);
          v306.val[1].i16[1] = *(v53 + 2 * v125.u16[1]);
          v306.val[1].i16[2] = *(v53 + 2 * v125.u16[2]);
          v306.val[1].i16[3] = *(v53 + 2 * v125.u16[3]);
          v306.val[1].i16[4] = *(v53 + 2 * v125.u16[4]);
          v306.val[1].i16[5] = *(v53 + 2 * v125.u16[5]);
          v306.val[1].i16[6] = *(v53 + 2 * v125.u16[6]);
          v306.val[1].i16[7] = *(v53 + 2 * v125.u16[7]);
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, v77), v102));
          v120.i16[0] = *(v53 + 2 * v126.u16[0]);
          v120.i16[1] = *(v53 + 2 * v126.u16[1]);
          v120.i16[2] = *(v53 + 2 * v126.u16[2]);
          v120.i16[3] = *(v53 + 2 * v126.u16[3]);
          v120.i16[4] = *(v53 + 2 * v126.u16[4]);
          v120.i16[5] = *(v53 + 2 * v126.u16[5]);
          v120.i16[6] = *(v53 + 2 * v126.u16[6]);
          v120.i16[7] = *(v53 + 2 * v126.u16[7]);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, v77), v102));
          v121.i16[0] = *(v53 + 2 * v127.u16[0]);
          v121.i16[1] = *(v53 + 2 * v127.u16[1]);
          v121.i16[2] = *(v53 + 2 * v127.u16[2]);
          v121.i16[3] = *(v53 + 2 * v127.u16[3]);
          v121.i16[4] = *(v53 + 2 * v127.u16[4]);
          v121.i16[5] = *(v53 + 2 * v127.u16[5]);
          v121.i16[6] = *(v53 + 2 * v127.u16[6]);
          v121.i16[7] = *(v53 + 2 * v127.u16[7]);
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, v77), v102));
          v122.i16[0] = *(v53 + 2 * v128.u16[0]);
          result = v53 + 2 * v128.u16[3];
          v122.i16[1] = *(v53 + 2 * v128.u16[1]);
          v122.i16[2] = *(v53 + 2 * v128.u16[2]);
          v122.i16[3] = *result;
          v122.i16[4] = *(v53 + 2 * v128.u16[4]);
          v122.i16[5] = *(v53 + 2 * v128.u16[5]);
          v122.i16[6] = *(v53 + 2 * v128.u16[6]);
          v122.i16[7] = *(v53 + 2 * v128.u16[7]);
          v129 = vdupq_n_s16(0x5BF8u);
          *v307.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v306.val[1], v77), v129)));
          v307.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, v77), v129)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, v77), v129)));
          v128.i64[0] = v303;
          v117.i64[0] = *(&v304 + 1);
          v118.i64[0] = v304;
          v307.val[1].u64[1] = v86;
          *v306.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v122, v77), v129)));
          v306.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, v77), v129)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, v77), v129)));
          *v129.i8 = vqtbl2_s8(v307, *&v303);
          v129.u64[1] = vqtbl2_s8(v307, v81);
          *v112.i8 = vqtbl2_s8(v307, *&v304);
          v112.u64[1] = vqtbl2_s8(v307, *(&v304 + 8));
          *v71 = v129;
          v71[1] = v112;
          v71 += 2;
          v306.val[1].u64[1] = v86;
          *v128.i8 = vqtbl2_s8(v306, *v128.i8);
          *v129.i8 = vqtbl2_s8(v306, *v118.i8);
          v128.u64[1] = vqtbl2_s8(v306, v81);
          v129.u64[1] = vqtbl2_s8(v306, *v117.i8);
          *v84 = v128;
          v84[1] = v129;
          v84 += 2;
          v80 += 8;
        }

        while (v80 < v270 - 7);
        v130 = v270 & 0xFFFFFFF8;
      }

      if (v130 < v48)
      {
        v131 = 0;
        if (v72)
        {
          v132 = 0;
        }

        else
        {
          v132 = -1;
        }

        v133 = &v71->i8[4];
        do
        {
          v134 = (v83->u16[1] >> v75) - v50;
          v135 = *(&v76 + 1) * v134;
          v136 = _S19 * ((v74->u16[0] >> v75) - v49);
          v137 = (*(&v76 + 1) * v134) + v136;
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = (*(&v76 + 1) * v134) + v136;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          v139 = (v83->u16[0] >> v75) - v50;
          v140 = (v271 * v134) + (v139 * v289);
          v141 = 8191.0;
          if ((v136 + v140) <= 8191.0)
          {
            v141 = v136 + v140;
            if ((v136 + v140) < 0.0)
            {
              v141 = 0.0;
            }
          }

          v142 = *&v76 * v139;
          v143 = (*&v76 * v139) + v136;
          v144 = 8191.0;
          if (v143 <= 8191.0)
          {
            v144 = v143;
            if (v143 < 0.0)
            {
              v144 = 0.0;
            }
          }

          v145 = _S19 * ((v74->u16[1] >> v75) - v49);
          v146 = 8191.0;
          if ((v135 + v145) <= 8191.0)
          {
            v146 = v135 + v145;
            if ((v135 + v145) < 0.0)
            {
              v146 = 0.0;
            }
          }

          v147 = 8191.0;
          if ((v140 + v145) <= 8191.0)
          {
            v147 = v140 + v145;
            if ((v140 + v145) < 0.0)
            {
              v147 = 0.0;
            }
          }

          v148 = v142 + v145;
          v149 = 8191.0;
          if (v148 <= 8191.0)
          {
            v149 = v148;
            if (v148 < 0.0)
            {
              v149 = 0.0;
            }
          }

          v150 = _S19 * ((v82->u16[0] >> v75) - v49);
          v151 = 8191.0;
          if ((v135 + v150) <= 8191.0)
          {
            v151 = v135 + v150;
            if ((v135 + v150) < 0.0)
            {
              v151 = 0.0;
            }
          }

          v152 = 8191.0;
          if ((v140 + v150) <= 8191.0)
          {
            v152 = v140 + v150;
            if ((v140 + v150) < 0.0)
            {
              v152 = 0.0;
            }
          }

          v153 = v142 + v150;
          v154 = 8191.0;
          if (v153 <= 8191.0)
          {
            v154 = v153;
            if (v153 < 0.0)
            {
              v154 = 0.0;
            }
          }

          v155 = _S19 * ((v82->u16[1] >> v75) - v49);
          v156 = v135 + v155;
          v157 = (v135 + v155) <= 8191.0;
          v158 = 8191.0;
          if (v157)
          {
            v158 = v156;
            if (v156 < 0.0)
            {
              v158 = 0.0;
            }
          }

          v159 = 8191.0;
          if ((v140 + v155) <= 8191.0)
          {
            v159 = v140 + v155;
            if ((v140 + v155) < 0.0)
            {
              v159 = 0.0;
            }
          }

          v160 = v142 + v155;
          v161 = 8191.0;
          if (v160 <= 8191.0)
          {
            v161 = v160;
            if (v160 < 0.0)
            {
              v161 = 0.0;
            }
          }

          _H2 = *(v54 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S23, H2 }

          _H2 = *(v54 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          __asm { FCVT            S25, H2 }

          _H1 = *(v54 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          __asm { FCVT            S2, H1 }

          _H9 = *(v54 + 2 * llroundf(fminf(fmaxf(v146, 0.0), 8191.0)));
          _H3 = *(v54 + 2 * llroundf(fminf(fmaxf(v147, 0.0), 8191.0)));
          _H4 = *(v54 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          _H15 = *(v54 + 2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0)));
          _H14 = *(v54 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
          _H1 = *(v54 + 2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0)));
          _H10 = *(v54 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          _H11 = *(v54 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          _H12 = *(v54 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          v177 = (((_S6 * _S25) + (_S18 * _S23)) + (_S7 * _S2)) + (_S16 * fmaxf(_S23, fmaxf(_S25, _S2)));
          v178 = 8191.0;
          if (v177 <= 8191.0)
          {
            v178 = v177;
            if (v177 < 0.0)
            {
              v178 = 0.0;
            }
          }

          __asm
          {
            FCVT            S26, H9
            FCVT            S28, H3
            FCVT            S9, H4
          }

          _H13 = *(v47 + 2 * llroundf(v178));
          v183 = (((_S6 * _S28) + (_S18 * _S26)) + (_S7 * _S9)) + (_S16 * fmaxf(_S26, fmaxf(_S28, _S9)));
          v184 = 8191.0;
          if (v183 <= 8191.0)
          {
            v184 = v183;
            if (v183 < 0.0)
            {
              v184 = 0.0;
            }
          }

          __asm
          {
            FCVT            S21, H15
            FCVT            S14, H14
            FCVT            S1, H1
          }

          _H3 = *(v47 + 2 * llroundf(v184));
          v189 = fmaxf(_S21, fmaxf(_S14, _S1));
          v190 = (((_S6 * _S14) + (_S18 * _S21)) + (_S7 * _S1)) + (_S16 * v189);
          v191 = 8191.0;
          if (v190 <= 8191.0)
          {
            v191 = (((_S6 * _S14) + (_S18 * _S21)) + (_S7 * _S1)) + (_S16 * v189);
            if (v190 < 0.0)
            {
              v191 = 0.0;
            }
          }

          __asm
          {
            FCVT            S4, H10
            FCVT            S27, H11
            FCVT            S10, H12
          }

          _H11 = *(v47 + 2 * llroundf(v191));
          v196 = _S6;
          v197 = (((_S6 * _S27) + (_S18 * _S4)) + (_S7 * _S10)) + (_S16 * fmaxf(_S4, fmaxf(_S27, _S10)));
          v198 = 8191.0;
          if (v197 <= 8191.0)
          {
            v198 = v197;
            if (v197 < 0.0)
            {
              v198 = 0.0;
            }
          }

          __asm { FCVT            S13, H13 }

          v200 = _S23 * _S13;
          v201 = _S25 * _S13;
          v202 = _S2 * _S13;
          __asm { FCVT            S3, H3 }

          v204 = _S26 * _S3;
          v205 = _S28 * _S3;
          v206 = _S9 * _S3;
          __asm { FCVT            S9, H11 }

          v208 = _S21 * _S9;
          v209 = _S14 * _S9;
          v210 = _S1 * _S9;
          LOWORD(_S9) = *(v47 + 2 * llroundf(v198));
          __asm { FCVT            S9, H9 }

          v212 = _S4 * _S9;
          v213 = _S27 * _S9;
          v214 = _S10 * _S9;
          v215 = ((v301 * v201) + (v200 * v302)) + (v202 * v300);
          v216 = ((v298 * v201) + (v200 * v299)) + (v202 * v297);
          v217 = ((v295 * v201) + (v200 * v296)) + (v202 * v294);
          v218 = ((v301 * v205) + (v204 * v302)) + (v206 * v300);
          v219 = ((v298 * v205) + (v204 * v299)) + (v206 * v297);
          v220 = ((v295 * v205) + (v204 * v296)) + (v206 * v294);
          v221 = ((v301 * v209) + (v208 * v302)) + (v210 * v300);
          v222 = ((v298 * v209) + (v208 * v299)) + (v210 * v297);
          v223 = ((v295 * v209) + (v208 * v296)) + (v210 * v294);
          v224 = ((v301 * v213) + (v212 * v302)) + (v214 * v300);
          v225 = ((v298 * v213) + (v212 * v299)) + (v214 * v297);
          v226 = ((v295 * v213) + (v212 * v296)) + (v214 * v294);
          LOWORD(v202) = *(v53 + 2 * llroundf(fminf(fmaxf(v215, 0.0), 8191.0)));
          v227 = *(v53 + 2 * llroundf(fminf(fmaxf(v216, 0.0), 8191.0)));
          v228 = *(v53 + 2 * llroundf(fminf(fmaxf(v217, 0.0), 8191.0)));
          v229 = *(v53 + 2 * llroundf(fminf(fmaxf(v218, 0.0), 8191.0)));
          v230 = *(v53 + 2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0)));
          v231 = *(v53 + 2 * llroundf(fminf(fmaxf(v220, 0.0), 8191.0)));
          v232 = *(v53 + 2 * llroundf(fminf(fmaxf(v221, 0.0), 8191.0)));
          v233 = *(v53 + 2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0)));
          v234 = *(v53 + 2 * llroundf(fminf(fmaxf(v223, 0.0), 8191.0)));
          v235 = *(v53 + 2 * llroundf(fminf(fmaxf(v224, 0.0), 8191.0)));
          v236 = *(v53 + 2 * llroundf(fminf(fmaxf(v225, 0.0), 8191.0)));
          v237 = *(v53 + 2 * llroundf(fminf(fmaxf(v226, 0.0), 8191.0)));
          if (*&v202 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H2, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H2 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          _S6 = v196;
          _S19 = v293;
          v240 = v305;
          v133[v131 - 4 + v305] = llroundf(_S2);
          v77 = 0uLL;
          if (v227 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H26, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H26 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v243 = BYTE1(v305);
          v133[v131 - 4 + BYTE1(v305)] = llroundf(_S2);
          if (v228 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H14, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H14 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v246 = BYTE2(v305);
          v133[v131 - 4 + BYTE2(v305)] = llroundf(_S2);
          result = HIBYTE(v305);
          v133[v131 - 4 + HIBYTE(v305)] = v132;
          if (v229 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H13, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H13 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v133[v131 + v240] = llroundf(_S2);
          if (v230 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H12, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H12 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v133[v131 + v243] = llroundf(_S2);
          if (v231 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H15, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H15 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v133[v131 + v246] = llroundf(_S2);
          v133[v131 + result] = v132;
          if (v232 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H11 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v84->i8[v240 + v131] = llroundf(_S2);
          if (v233 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H10 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v84->i8[BYTE1(v305) + v131] = llroundf(_S2);
          if (v234 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H9, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H9 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v84->i8[BYTE2(v305) + v131] = llroundf(_S2);
          v84->i8[HIBYTE(v305) + v131] = v132;
          if (v235 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H28, #0 }

            if (_NF)
            {
              _S2 = 0.0;
            }

            else
            {
              __asm { FCVT            S2, H28 }
            }
          }

          else
          {
            _S2 = 255.0;
          }

          v84->i8[v131 + 4 + v305] = llroundf(_S2);
          if (v236 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H1, #0 }

            if (_NF)
            {
              _S1 = 0.0;
            }

            else
            {
              __asm { FCVT            S1, H1 }
            }
          }

          else
          {
            _S1 = 255.0;
          }

          v84->i8[v131 + 4 + BYTE1(v305)] = llroundf(_S1);
          if (v237 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S1 = 0.0;
            }

            else
            {
              __asm { FCVT            S1, H23 }
            }
          }

          else
          {
            _S1 = 255.0;
          }

          v84->i8[v131 + 4 + BYTE2(v305)] = llroundf(_S1);
          v265 = &v84->i8[v131 + HIBYTE(v305)];
          v130 += 2;
          v131 += 8;
          v265[4] = v132;
          v83 = (v83 + 4);
          v74 = (v74 + 4);
          v82 = (v82 + 4);
        }

        while (v130 < v48);
      }

      v74 = &v78[v18];
      v73 = (v73 + v269);
      v72 += v23 + v23;
      v71 = &v79[v25];
      v45 += 2;
    }

    while (v45 < v268);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v58 = a2[2];
  v59 = v17;
  v18 = a6[1];
  v60 = *a6;
  v61 = v16;
  v56 = a6[2];
  v57 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_56:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v50 - v21);
    bzero(&v50 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v56, v57), v60), vceqq_s64(vaddq_s64(v58, v59), v61))));
  v24 = v56.i64[0];
  v25 = v57.i64[0];
  v26 = v59.i64[0];
  v27 = v58.i64[0];
  if (v56.i8[0])
  {
    v24 = v56.i64[0] + 1;
    v27 = v58.i64[0] + 1;
    v25 = v57.i64[0] - 1;
    v26 = v59.i64[0] - 1;
  }

  v28 = a9;
  v29 = v60.i64[0];
  v30 = v61.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (4 * (v24 + v25) + 4) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v60.i64[0] + 1;
      v30 = v61.i64[0] + 1;
      ++v26;
    }
  }

  v34 = v57.i64[1];
  v35 = v59.i64[1];
  if (v56.i8[8])
  {
    v35 = v59.i64[1] - 1;
    v36 = v58.i64[1] + 1;
  }

  else
  {
    v36 = v58.i64[1];
  }

  if (v56.i8[8])
  {
    v34 = v57.i64[1] - 1;
    v37 = v56.i64[1] + 1;
  }

  else
  {
    v37 = v56.i64[1];
  }

  v38 = v60.i64[1];
  v39 = v61.i64[1];
  v55 = a1;
  if (v34)
  {
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v40 = v35 + 1 + v36, (*a4 * v40) > *a5) || (a4[1] * (v40 / 2)) > a5[1] || (a4[2] * v40) > a5[2] || (*a8 * (v34 + 1 + v37)) > *a9)
    {
      --v34;
      --v35;
    }

    else
    {
      v38 = v60.i64[1] + 1;
      v39 = v61.i64[1] + 1;
      ++v35;
      ++v34;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
  }

  if (v35 + v36 > v39)
  {
    v35 = v39 - v36;
  }

  if (v34 + v37 > v38)
  {
    v34 = v38 - v37;
  }

  if (v26 >= v25)
  {
    v41 = v25;
  }

  else
  {
    v41 = v26;
  }

  if (v35 >= v34)
  {
    v42 = v34;
  }

  else
  {
    v42 = v35;
  }

  v43 = v42 + v36 - 1;
  v44 = v41 + v27;
  if ((v43 * *a4 + 2 * (v41 + v27)) <= *a5 && (!*(v13 + 8) || a4[1] * ((v42 + v36 + 1) / 2 - 1) + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) <= a5[1]) && (!*(v13 + 16) || (2 * v44 + a4[2] * v43) <= a5[2]) && (*a8 * (v37 + v42 - 1) + 4 * (v41 + v24)) <= *a9 || (v51 = v39, v52 = v38, v53 = v36, v54 = v37, v56.i64[0] = v30, v57.i64[0] = v29, v58.i64[0] = a9, v59.i64[0] = v27, v60.i64[0] = v24, v61.i64[0] = v13, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), v13 = v61.i64[0], v24 = v60.i64[0], v27 = v59.i64[0], v28 = v58.i64[0], v29 = v57.i64[0], v30 = v56.i64[0], v36 = v53, v37 = v54, v39 = v51, v38 = v52, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v39;
    *(v19 + 20) = v41;
    *(v19 + 28) = v42;
    *(v19 + 36) = v27;
    *(v19 + 44) = v36;
    v19[11] = v38;
    v19[12] = v41;
    v19[13] = v42;
    v19[14] = v24;
    v19[7] = v13;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v37;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v28;
    v19[19] = v55;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v46 = (v19 + 20);
    v47 = v15;
    while (1)
    {
      v48 = *v46++;
      v20 = v48;
      if (v48)
      {
        break;
      }

      if (!--v47)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_56;
  }

  return v20;
}