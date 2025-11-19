uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v40 = a2[2];
  v41 = v16;
  v18 = *a6;
  v36 = a6[1];
  v37 = v17;
  v38 = a6[2];
  v39 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v36.i8[-v21];
    bzero(&v36 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v37), v41), vsubq_s64(v41, v40), v37);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v38, v36), v39), vsubq_s64(v39, v38), v36);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v40, v23);
  v27 = v26.i64[1] + v25.i64[1];
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 2 * v26.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && (a4[1] * v27 + 4 * v26.i64[0]) > a5[1])
    {
      v37 = v25;
    }

    else
    {
      if (!*(a3 + 16) || (2 * v26.i64[0] + a4[2] * v27) <= a5[2])
      {
        goto LABEL_14;
      }

      v37 = v25;
    }
  }

  else
  {
    v37 = v25;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v25 = v37;
  if (v28)
  {
    v20 = v28;
    goto LABEL_19;
  }

LABEL_14:
  *v19 = v15;
  v29 = v40;
  *(v19 + 4) = v41;
  *(v19 + 20) = v25;
  *(v19 + 36) = v29;
  v30 = v38;
  *(v19 + 5) = v39;
  *(v19 + 6) = v25;
  *(v19 + 7) = v30;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf444_TRC_Tone_Mat_TRC_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v32 = (v19 + 160);
  v33 = v15;
  while (1)
  {
    v34 = *v32++;
    v20 = v34;
    if (v34)
    {
      break;
    }

    if (!--v33)
    {
      v20 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v20;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_yuvsf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v175 = *(result + 36);
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v11 = result[14];
  v12 = result[12];
  v13 = result[13];
  v14 = v13 * a2 / v9;
  v15 = v14 + result[15];
  v16 = (v13 + v13 * a2) / v9 - v14;
  v18 = result[7];
  v17 = result[8];
  v20 = result[16];
  v19 = result[17];
  v21 = v17[2];
  v176 = v18[2];
  v22 = v19[1];
  v23 = v20[1];
  v24 = (v23 + v22 * v15 + v11);
  if (v23)
  {
    v25 = (v23 + v22 * v15 + v11);
  }

  else
  {
    v25 = 0;
  }

  if (v16 >= 1)
  {
    v26 = 0;
    v27 = result[19];
    v28 = v12 & 0xFFFFFFFE;
    v29 = *v17;
    v30 = v17[1];
    v31 = *v19;
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a5) = *(v27 + 142);
    LOWORD(v5) = *(v27 + 144);
    LOWORD(v6) = *(v27 + 146);
    LOWORD(v7) = *(v27 + 148);
    LOWORD(v8) = *(v27 + 150);
    v32 = 8191.0 / *(v27 + 128);
    v33 = LODWORD(a4);
    v34 = LODWORD(a5);
    v189 = v32 * *v27;
    v187 = v32 * *(v27 + 16);
    v188 = v32 * *(v27 + 8);
    v35 = v32 * *(v27 + 20);
    *&v36 = v32 * *(v27 + 28);
    v185 = *&v36;
    v186 = v35;
    v37 = v5;
    v38 = v6;
    v39 = v7;
    v40 = v8;
    LOWORD(v36) = *(v27 + 152);
    v41 = v36;
    v42 = *(v27 + 40);
    v183 = *(v27 + 36);
    v184 = v38;
    v43 = *(v27 + 44);
    v181 = *(v27 + 52) * 0.5;
    v182 = *(v27 + 48) * 0.5;
    v179 = *(v27 + 60) * 0.5;
    v180 = *(v27 + 56) * 0.5;
    v44 = *(v27 + 72);
    v177 = *(v27 + 68) * 0.5;
    v178 = *(v27 + 64) * 0.5;
    v46 = *(v27 + 76);
    v45 = *(v27 + 80);
    v47 = *(v27 + 84);
    v48 = *(v27 + 88);
    v49 = *(v27 + 92);
    v50 = *(v27 + 96);
    v51 = *(v27 + 100);
    v52 = *(v27 + 104);
    v53 = v27 + 164;
    v54 = *(v27 + 124);
    v55 = 16 - v54;
    _CF = v54 >= 0x11;
    v57 = v27 + 16548;
    v58 = *v20 + v31 * v15;
    v59 = v27 + 32932;
    if (_CF)
    {
      v55 = 0;
    }

    v60 = (v58 + v11);
    v62 = *v18;
    v61 = v18[1];
    v63 = v61 + v30 * v10 + 2 * v175;
    if (!v61)
    {
      v63 = 0;
    }

    v64 = v62 + v29 * v10 + 2 * v175;
    v65 = *(v27 + 108);
    v66 = *(v27 + 112);
    v67 = *(v27 + 116);
    v68 = *(v27 + 120);
    do
    {
      if (v28 >= 1)
      {
        v69 = 0;
        v70 = v64;
        v71 = v63;
        v72 = v25;
        v73 = v60;
        do
        {
          if (v71)
          {
            v74 = (*v71 >> v55) - v34;
            v75 = (v71[1] >> v55) - v34;
            v71 += 2;
            v76 = v188 * v75;
            v77 = (v186 * v75) + (v74 * v187);
            v78 = v185 * v74;
          }

          else
          {
            v78 = 0.0;
            v77 = 0.0;
            v76 = 0.0;
          }

          v79 = v189 * ((*v70 >> v55) - v33);
          v80 = v76 + v79;
          v81 = (v76 + v79) <= 8191.0;
          v82 = 8191.0;
          if (v81)
          {
            v82 = v80;
            if (v80 < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v77 + v79;
          v84 = 8191.0;
          if (v83 <= 8191.0)
          {
            v84 = v83;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v78 + v79;
          v81 = (v78 + v79) <= 8191.0;
          v86 = 8191.0;
          if (v81)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          if (v71)
          {
            v87 = (*v71 >> v55) - v34;
            v88 = (v71[1] >> v55) - v34;
            v71 += 2;
            v89 = v188 * v88;
            v90 = (v186 * v88) + (v87 * v187);
            v91 = v185 * v87;
          }

          else
          {
            v91 = 0.0;
            v90 = 0.0;
            v89 = 0.0;
          }

          v92 = v189 * ((v70[1] >> v55) - v33);
          v93 = v89 + v92;
          v81 = (v89 + v92) <= 8191.0;
          v94 = 8191.0;
          if (v81)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          v95 = v90 + v92;
          v81 = (v90 + v92) <= 8191.0;
          v96 = 8191.0;
          if (v81)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          v97 = v91 + v92;
          v98 = 8191.0;
          if (v97 <= 8191.0)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          _H0 = *(v53 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H7 = *(v53 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          v105 = llroundf(fminf(fmaxf(v86, 0.0), 8191.0));
          __asm { FCVT            S4, H7 }

          _H7 = *(v53 + 2 * v105);
          __asm { FCVT            S7, H7 }

          _H6 = *(v53 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H1 = *(v53 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          _H30 = *(v53 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          v112 = (((v66 * _S4) + (v65 * _S0)) + (v67 * _S7)) + (v68 * fmaxf(_S0, fmaxf(_S4, _S7)));
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
            FCVT            S3, H6
            FCVT            S6, H1
            FCVT            S30, H30
          }

          _H1 = *(v57 + 2 * llroundf(v113));
          __asm { FCVT            S1, H1 }

          v119 = _S0 * _S1;
          v120 = _S4 * _S1;
          v121 = _S7 * _S1;
          v122 = (((v66 * _S6) + (v65 * _S3)) + (v67 * _S30)) + (v68 * fmaxf(_S3, fmaxf(_S6, _S30)));
          v123 = 8191.0;
          if (v122 <= 8191.0)
          {
            v123 = v122;
            if (v122 < 0.0)
            {
              v123 = 0.0;
            }
          }

          _H7 = *(v57 + 2 * llroundf(v123));
          __asm { FCVT            S7, H7 }

          v126 = _S3 * _S7;
          _S6 = _S6 * _S7;
          v128 = _S30 * _S7;
          v129 = ((v46 * v120) + (v119 * v44)) + (v121 * v45);
          v130 = ((v48 * v120) + (v119 * v47)) + (v121 * v49);
          _S0 = ((v51 * v120) + (v119 * v50)) + (v121 * v52);
          _S1 = (v46 * _S6) + (v126 * v44);
          _S4 = (v48 * _S6) + (v126 * v47);
          v134 = ((v51 * _S6) + (v126 * v50)) + (v128 * v52);
          LOWORD(_S6) = *(v59 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          v135 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(v59 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S0, H0
          }

          LOWORD(_S1) = *(v59 + 2 * llroundf(fminf(fmaxf(_S1 + (v128 * v45), 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S4) = *(v59 + 2 * llroundf(fminf(fmaxf(_S4 + (v128 * v49), 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v140 = llroundf(fminf(fmaxf(v134, 0.0), 8191.0));
          v141 = (v42 * _S0) + (v183 * _S6);
          v142 = (v42 * _S4) + (v183 * _S1);
          v143 = _S6 + _S1;
          LOWORD(_S6) = *(v59 + 2 * v135);
          v144 = _S0 + _S4;
          LOWORD(_S4) = *(v59 + 2 * v140);
          __asm
          {
            FCVT            S6, H6
            FCVT            S4, H4
          }

          v147 = (v141 + (v43 * _S6)) + v37;
          v148 = v142 + (v43 * _S4);
          v149 = _S6 + _S4;
          v150 = (v184 + (v143 * v182)) + (v144 * v181);
          v151 = (v184 + (v143 * v179)) + (v144 * v178);
          if (v147 < v37)
          {
            v152 = v37;
          }

          else
          {
            v152 = v147;
          }

          v81 = v147 <= v39;
          v153 = v150 + (v149 * v180);
          if (!v81)
          {
            v152 = v39;
          }

          v154 = llroundf(v152);
          if (v153 < v40)
          {
            v155 = v40;
          }

          else
          {
            v155 = v150 + (v149 * v180);
          }

          if (v153 > v41)
          {
            v155 = v41;
          }

          v156 = llroundf(v155);
          v157 = v151 + (v149 * v177);
          if ((v148 + v37) < v37)
          {
            v158 = v37;
          }

          else
          {
            v158 = v148 + v37;
          }

          *v73 = v154;
          v73[1] = v156;
          if ((v148 + v37) <= v39)
          {
            v159 = v158;
          }

          else
          {
            v159 = v39;
          }

          v73[2] = llroundf(v159);
          v160 = v41;
          if (v157 <= v41)
          {
            v160 = v157;
            if (v157 < v40)
            {
              v160 = v40;
            }
          }

          v73[3] = llroundf(v160);
          if (v72)
          {
            *v72++ = 0;
          }

          v69 += 2;
          v70 += 2;
          v73 += 4;
        }

        while (v69 < v28);
      }

      v64 += v29;
      v63 += v30;
      v60 += v31;
      ++v26;
    }

    while (v26 != v16);
  }

  if (v176 && v25)
  {
    if (v16 >= 1)
    {
      v161 = 0;
      v162 = v176 + v21 * v10 + 2 * v175;
      do
      {
        if (v12 >= 1)
        {
          v163 = v12;
          v164 = v24;
          v165 = v162;
          do
          {
            v166 = *v165++;
            *v164++ = llroundf(v166 * 0.0038911);
            --v163;
          }

          while (v163);
        }

        v162 += v21;
        v24 += v22;
        ++v161;
      }

      while (v16 > v161);
    }
  }

  else if (v25 && v16 >= 1)
  {
    v167 = 0;
    v168 = vdupq_n_s64(v12 - 1);
    do
    {
      if (v12 >= 1)
      {
        v169 = 0;
        do
        {
          v170 = vdupq_n_s64(v169);
          v171 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v171, *v168.i8), *v168.i8).u8[0])
          {
            v24[v169] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v171, *&v168), *&v168).i8[1])
          {
            v24[v169 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDDA0)))), *&v168).i8[2])
          {
            v24[v169 + 2] = -1;
            v24[v169 + 3] = -1;
          }

          v172 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v168, vuzp1_s16(v172, *&v168)).i32[1])
          {
            v24[v169 + 4] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(v172, *&v168)).i8[5])
          {
            v24[v169 + 5] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD80))))).i8[6])
          {
            v24[v169 + 6] = -1;
            v24[v169 + 7] = -1;
          }

          v173 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v173, *v168.i8), *v168.i8).u8[0])
          {
            v24[v169 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v173, *&v168), *&v168).i8[1])
          {
            v24[v169 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD60)))), *&v168).i8[2])
          {
            v24[v169 + 10] = -1;
            v24[v169 + 11] = -1;
          }

          v174 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v168, vuzp1_s16(v174, *&v168)).i32[1])
          {
            v24[v169 + 12] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(v174, *&v168)).i8[5])
          {
            v24[v169 + 13] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD40))))).i8[6])
          {
            v24[v169 + 14] = -1;
            v24[v169 + 15] = -1;
          }

          v169 += 16;
        }

        while (((v12 + 15) & 0xFFFFFFFFFFFFFFF0) != v169);
      }

      v24 += v22;
      ++v167;
    }

    while (v16 > v167);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v40 = a2[2];
  v41 = v16;
  v18 = *a6;
  v36 = a6[1];
  v37 = v17;
  v38 = a6[2];
  v39 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v36.i8[-v21];
    bzero(&v36 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v37), v41), vsubq_s64(v41, v40), v37);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v38, v36), v39), vsubq_s64(v39, v38), v36);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v40, v23);
  v27 = v26.i64[1] + v25.i64[1];
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 2 * v26.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && (a4[1] * v27 + 4 * v26.i64[0]) > a5[1])
    {
      v37 = v25;
    }

    else
    {
      if (!*(a3 + 16) || (2 * v26.i64[0] + a4[2] * v27) <= a5[2])
      {
        goto LABEL_14;
      }

      v37 = v25;
    }
  }

  else
  {
    v37 = v25;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v25 = v37;
  if (v28)
  {
    v20 = v28;
    goto LABEL_19;
  }

LABEL_14:
  *v19 = v15;
  v29 = v40;
  *(v19 + 4) = v41;
  *(v19 + 20) = v25;
  *(v19 + 36) = v29;
  v30 = v38;
  *(v19 + 5) = v39;
  *(v19 + 6) = v25;
  *(v19 + 7) = v30;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf444_TRC_Mat_TRC_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v32 = (v19 + 160);
  v33 = v15;
  while (1)
  {
    v34 = *v32++;
    v20 = v34;
    if (v34)
    {
      break;
    }

    if (!--v33)
    {
      v20 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v20;
}

void *vt_Copy_xf444_TRC_Mat_TRC_yuvsf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v8 = *(result + 36);
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v11 = result[14];
  v12 = result[12];
  v13 = result[13];
  v14 = v13 * a2 / v9;
  v15 = v14 + result[15];
  v16 = (v13 + v13 * a2) / v9 - v14;
  v18 = result[7];
  v17 = result[8];
  v20 = result[16];
  v19 = result[17];
  v21 = v17[2];
  v158 = v18[2];
  v22 = v19[1];
  v23 = v20[1];
  v24 = (v23 + v22 * v15 + v11);
  if (v23)
  {
    v25 = (v23 + v22 * v15 + v11);
  }

  else
  {
    v25 = 0;
  }

  if (v16 >= 1)
  {
    v26 = 0;
    v27 = result[19];
    v28 = v12 & 0xFFFFFFFE;
    v29 = *v17;
    v30 = v17[1];
    v31 = *v19;
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a5) = *(v27 + 142);
    LOWORD(v5) = *(v27 + 144);
    LOWORD(v6) = *(v27 + 146);
    LOWORD(v7) = *(v27 + 148);
    *&v32 = 8191.0 / *(v27 + 128);
    v33 = LODWORD(a4);
    v34 = LODWORD(a5);
    v35 = *&v32 * *v27;
    v167 = *&v32 * *(v27 + 8);
    v166 = *&v32 * *(v27 + 16);
    v36 = *&v32 * *(v27 + 20);
    v37 = *&v32 * *(v27 + 28);
    v38 = v5;
    v39 = v6;
    v40 = v7;
    LOWORD(v32) = *(v27 + 150);
    v41 = v32;
    LOWORD(v32) = *(v27 + 152);
    v42 = v32;
    v43 = *(v27 + 36);
    v44 = *(v27 + 40);
    v45 = *(v27 + 44);
    v164 = *(v27 + 48) * 0.5;
    v165 = v36;
    v162 = *(v27 + 56) * 0.5;
    v163 = *(v27 + 52) * 0.5;
    v160 = *(v27 + 64) * 0.5;
    v161 = *(v27 + 60) * 0.5;
    v46 = *(v27 + 72);
    v159 = *(v27 + 68) * 0.5;
    v48 = *(v27 + 76);
    v47 = *(v27 + 80);
    v49 = *(v27 + 84);
    v50 = *(v27 + 88);
    v51 = *(v27 + 92);
    v52 = *(v27 + 96);
    v53 = *(v27 + 100);
    v54 = *(v27 + 104);
    v55 = *(v27 + 124);
    v56 = 16 - v55;
    _CF = v55 >= 0x11;
    v58 = v27 + 16548;
    v59 = v27 + 164;
    if (_CF)
    {
      v56 = 0;
    }

    v60 = (*v20 + v31 * v15 + v11);
    v62 = *v18;
    v61 = v18[1];
    v63 = v61 + v30 * v10 + 2 * v8;
    if (!v61)
    {
      v63 = 0;
    }

    v64 = v62 + v29 * v10 + 2 * v8;
    v65 = v56;
    do
    {
      if (v28 >= 1)
      {
        v66 = 0;
        v67 = v64;
        v68 = v63;
        v69 = v25;
        v70 = v60;
        do
        {
          if (v68)
          {
            v71 = (*v68 >> v65) - v34;
            v72 = (v68[1] >> v65) - v34;
            v68 += 2;
            v73 = v167 * v72;
            v74 = (v165 * v72) + (v71 * v166);
            v75 = v37 * v71;
          }

          else
          {
            v75 = 0.0;
            v74 = 0.0;
            v73 = 0.0;
          }

          v76 = v35 * ((*v67 >> v65) - v33);
          v77 = v73 + v76;
          v78 = (v73 + v76) <= 8191.0;
          v79 = 8191.0;
          if (v78)
          {
            v79 = v77;
            if (v77 < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v74 + v76;
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = v80;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = 8191.0;
          if ((v75 + v76) <= 8191.0)
          {
            v82 = v75 + v76;
            if ((v75 + v76) < 0.0)
            {
              v82 = 0.0;
            }
          }

          if (v68)
          {
            v83 = (*v68 >> v65) - v34;
            v84 = (v68[1] >> v65) - v34;
            v68 += 2;
            v85 = v167 * v84;
            v86 = (v165 * v84) + (v83 * v166);
            v87 = v37 * v83;
          }

          else
          {
            v87 = 0.0;
            v86 = 0.0;
            v85 = 0.0;
          }

          v88 = v35 * ((v67[1] >> v65) - v33);
          v89 = 8191.0;
          if ((v85 + v88) <= 8191.0)
          {
            v89 = v85 + v88;
            if ((v85 + v88) < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v86 + v88;
          v78 = (v86 + v88) <= 8191.0;
          v91 = 8191.0;
          if (v78)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v87 + v88;
          v93 = 8191.0;
          if (v92 <= 8191.0)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          _H0 = *(v59 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v59 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H25 = *(v59 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H6 = *(v59 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H4 = *(v59 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v107 = ((v48 * _S5) + (_S0 * v46)) + (_S25 * v47);
          v108 = ((v50 * _S5) + (_S0 * v49)) + (_S25 * v51);
          _S0 = ((v53 * _S5) + (_S0 * v52)) + (_S25 * v54);
          v110 = (v48 * _S4) + (_S6 * v46);
          v111 = (v50 * _S4) + (_S6 * v49);
          v112 = (v53 * _S4) + (_S6 * v52);
          LOWORD(_S6) = *(v59 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _S5 = v110 + (_S6 * v47);
          _S25 = v111 + (_S6 * v51);
          v116 = v112 + (_S6 * v54);
          LOWORD(_S6) = *(v58 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          v117 = llroundf(fminf(fmaxf(_S0, 0.0), 8191.0));
          LOWORD(_S0) = *(v58 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S0, H0
          }

          LOWORD(_S5) = *(v58 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S25) = *(v58 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v122 = llroundf(fminf(fmaxf(v116, 0.0), 8191.0));
          v123 = (v44 * _S0) + (v43 * _S6);
          v124 = (v44 * _S25) + (v43 * _S5);
          v125 = _S6 + _S5;
          LOWORD(_S6) = *(v58 + 2 * v117);
          v126 = _S0 + _S25;
          LOWORD(_S25) = *(v58 + 2 * v122);
          __asm
          {
            FCVT            S6, H6
            FCVT            S25, H25
          }

          v129 = (v123 + (v45 * _S6)) + v38;
          v130 = v124 + (v45 * _S25);
          v131 = _S6 + _S25;
          v132 = (v39 + (v125 * v164)) + (v126 * v163);
          v133 = (v39 + (v125 * v161)) + (v126 * v160);
          if (v129 < v38)
          {
            v134 = v38;
          }

          else
          {
            v134 = v129;
          }

          v78 = v129 <= v40;
          v135 = v132 + (v131 * v162);
          if (!v78)
          {
            v134 = v40;
          }

          v136 = llroundf(v134);
          if (v135 < v41)
          {
            v137 = v41;
          }

          else
          {
            v137 = v132 + (v131 * v162);
          }

          if (v135 <= v42)
          {
            v138 = v137;
          }

          else
          {
            v138 = v42;
          }

          v139 = llroundf(v138);
          v140 = v133 + (v131 * v159);
          if ((v130 + v38) < v38)
          {
            v141 = v38;
          }

          else
          {
            v141 = v130 + v38;
          }

          *v70 = v136;
          v70[1] = v139;
          if ((v130 + v38) <= v40)
          {
            v142 = v141;
          }

          else
          {
            v142 = v40;
          }

          v70[2] = llroundf(v142);
          v143 = v42;
          if (v140 <= v42)
          {
            v143 = v140;
            if (v140 < v41)
            {
              v143 = v41;
            }
          }

          v70[3] = llroundf(v143);
          if (v69)
          {
            *v69++ = 0;
          }

          v66 += 2;
          v67 += 2;
          v70 += 4;
        }

        while (v66 < v28);
      }

      v64 += v29;
      v63 += v30;
      v60 += v31;
      ++v26;
    }

    while (v26 != v16);
  }

  if (v158 && v25)
  {
    if (v16 >= 1)
    {
      v144 = 0;
      v145 = v158 + v21 * v10 + 2 * v8;
      do
      {
        if (v12 >= 1)
        {
          v146 = v12;
          v147 = v24;
          v148 = v145;
          do
          {
            v149 = *v148++;
            *v147++ = llroundf(v149 * 0.0038911);
            --v146;
          }

          while (v146);
        }

        v145 += v21;
        v24 += v22;
        ++v144;
      }

      while (v16 > v144);
    }
  }

  else if (v25 && v16 >= 1)
  {
    v150 = 0;
    v151 = vdupq_n_s64(v12 - 1);
    do
    {
      if (v12 >= 1)
      {
        v152 = 0;
        do
        {
          v153 = vdupq_n_s64(v152);
          v154 = vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v154, *v151.i8), *v151.i8).u8[0])
          {
            v24[v152] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v154, *&v151), *&v151).i8[1])
          {
            v24[v152 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v151, vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDDA0)))), *&v151).i8[2])
          {
            v24[v152 + 2] = -1;
            v24[v152 + 3] = -1;
          }

          v155 = vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v151, vuzp1_s16(v155, *&v151)).i32[1])
          {
            v24[v152 + 4] = -1;
          }

          if (vuzp1_s8(*&v151, vuzp1_s16(v155, *&v151)).i8[5])
          {
            v24[v152 + 5] = -1;
          }

          if (vuzp1_s8(*&v151, vuzp1_s16(*&v151, vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDD80))))).i8[6])
          {
            v24[v152 + 6] = -1;
            v24[v152 + 7] = -1;
          }

          v156 = vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v156, *v151.i8), *v151.i8).u8[0])
          {
            v24[v152 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v156, *&v151), *&v151).i8[1])
          {
            v24[v152 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v151, vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDD60)))), *&v151).i8[2])
          {
            v24[v152 + 10] = -1;
            v24[v152 + 11] = -1;
          }

          v157 = vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v151, vuzp1_s16(v157, *&v151)).i32[1])
          {
            v24[v152 + 12] = -1;
          }

          if (vuzp1_s8(*&v151, vuzp1_s16(v157, *&v151)).i8[5])
          {
            v24[v152 + 13] = -1;
          }

          if (vuzp1_s8(*&v151, vuzp1_s16(*&v151, vmovn_s64(vcgeq_u64(v151, vorrq_s8(v153, xmmword_18FECDD40))))).i8[6])
          {
            v24[v152 + 14] = -1;
            v24[v152 + 15] = -1;
          }

          v152 += 16;
        }

        while (((v12 + 15) & 0xFFFFFFFFFFFFFFF0) != v152);
      }

      v24 += v22;
      ++v150;
    }

    while (v16 > v150);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v40 = a2[2];
  v41 = v16;
  v18 = *a6;
  v36 = a6[1];
  v37 = v17;
  v38 = a6[2];
  v39 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v36.i8[-v21];
    bzero(&v36 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v37), v41), vsubq_s64(v41, v40), v37);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v38, v36), v39), vsubq_s64(v39, v38), v36);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v40, v23);
  v27 = v26.i64[1] + v25.i64[1];
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 2 * v26.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && (a4[1] * v27 + 4 * v26.i64[0]) > a5[1])
    {
      v37 = v25;
    }

    else
    {
      if (!*(a3 + 16) || (2 * v26.i64[0] + a4[2] * v27) <= a5[2])
      {
        goto LABEL_14;
      }

      v37 = v25;
    }
  }

  else
  {
    v37 = v25;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v25 = v37;
  if (v28)
  {
    v20 = v28;
    goto LABEL_19;
  }

LABEL_14:
  *v19 = v15;
  v29 = v40;
  *(v19 + 4) = v41;
  *(v19 + 20) = v25;
  *(v19 + 36) = v29;
  v30 = v38;
  *(v19 + 5) = v39;
  *(v19 + 6) = v25;
  *(v19 + 7) = v30;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf444_rgb_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v32 = (v19 + 160);
  v33 = v15;
  while (1)
  {
    v34 = *v32++;
    v20 = v34;
    if (v34)
    {
      break;
    }

    if (!--v33)
    {
      v20 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v20;
}

void *vt_Copy_xf444_rgb_yuvsf_GCD(void *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v12 = *(result + 36);
  v13 = *result;
  v14 = *(result + 28) * a2 / v13 + *(result + 44);
  v15 = result[14];
  v16 = result[12];
  v17 = result[13];
  v18 = v17 * a2 / v13;
  v19 = v18 + result[15];
  v20 = (v17 + v17 * a2) / v13 - v18;
  v22 = result[7];
  v21 = result[8];
  v24 = result[16];
  v23 = result[17];
  v25 = v21[2];
  v26 = v22[2];
  v27 = v23[1];
  v28 = v24[1];
  v29 = (v28 + v27 * v19 + v15);
  if (v28)
  {
    v30 = (v28 + v27 * v19 + v15);
  }

  else
  {
    v30 = 0;
  }

  if (v20 >= 1)
  {
    v31 = 0;
    v32 = result[19];
    v33 = v16 & 0xFFFFFFFE;
    LOWORD(a6) = *(v32 + 140);
    LOWORD(a7) = *(v32 + 142);
    v34 = *v32;
    v35 = *(v32 + 8);
    v36 = *(v32 + 136) / *(v32 + 128);
    v37 = *(v32 + 16);
    v38 = *(v32 + 20);
    v39 = *(v32 + 28);
    LOWORD(v7) = *(v32 + 144);
    LOWORD(v8) = *(v32 + 146);
    LOWORD(v9) = *(v32 + 148);
    LOWORD(v10) = *(v32 + 150);
    LOWORD(v11) = *(v32 + 152);
    v40 = *(v32 + 36);
    v41 = *(v32 + 40);
    v42 = *(v32 + 44);
    v43 = *(v32 + 48);
    v44 = *(v32 + 52);
    v45 = *(v32 + 56);
    v46 = *(v32 + 60);
    v47 = *(v32 + 64);
    v48 = *(v32 + 68);
    LODWORD(v32) = *(v32 + 124);
    v49 = 16 - v32;
    v50 = v32 >= 0x11;
    v51 = *v21;
    v52 = v21[1];
    v53 = *v23;
    v54 = LODWORD(a6);
    v55 = LODWORD(a7);
    v56 = v36 * v34;
    v57 = v36 * v35;
    v58 = v36 * v37;
    v59 = v36 * v38;
    v60 = v36 * v39;
    v61 = v7;
    v62 = v8;
    v63 = v9;
    v64 = v10;
    v65 = v11;
    v66 = v43 * 0.5;
    v67 = v44 * 0.5;
    v68 = v45 * 0.5;
    v69 = v46 * 0.5;
    v70 = v47 * 0.5;
    v71 = v48 * 0.5;
    if (v50)
    {
      v49 = 0;
    }

    v72 = (*v24 + v53 * v19 + v15);
    v74 = *v22;
    v73 = v22[1];
    v75 = v73 + v52 * v14 + 2 * v12;
    if (!v73)
    {
      v75 = 0;
    }

    v76 = v74 + v51 * v14 + 2 * v12;
    v77 = v49;
    while (v33 < 1)
    {
LABEL_40:
      v76 += v51;
      v75 += v52;
      v72 += v53;
      if (++v31 == v20)
      {
        goto LABEL_41;
      }
    }

    v78 = 0;
    v79 = v76;
    v80 = v75;
    v81 = v30;
    v82 = v72;
    while (1)
    {
      v83 = 0.0;
      if (!v80)
      {
        break;
      }

      v84 = (*v80 >> v77) - v55;
      v85 = (v80[1] >> v77) - v55;
      v80 += 2;
      v86 = v57 * v85;
      v87 = (v59 * v85) + (v84 * v58);
      v88 = v60 * v84;
      if (!v80)
      {
        goto LABEL_17;
      }

      v89 = (*v80 >> v77) - v55;
      v90 = (v80[1] >> v77) - v55;
      v80 += 2;
      v91 = v57 * v90;
      v92 = (v59 * v90) + (v89 * v58);
      v83 = v60 * v89;
LABEL_18:
      v93 = v56 * ((*v79 >> v77) - v54);
      v94 = v86 + v93;
      v95 = v87 + v93;
      v96 = v88 + v93;
      v97 = v56 * ((v79[1] >> v77) - v54);
      v98 = v91 + v97;
      v99 = v92 + v97;
      v100 = v83 + v97;
      v101 = (((v41 * v95) + (v40 * v94)) + (v42 * v96)) + v61;
      v102 = (((v41 * v99) + (v40 * v98)) + (v42 * v100)) + v61;
      v103 = v94 + v98;
      v104 = v95 + v99;
      v105 = v96 + v100;
      v106 = ((v62 + (v103 * v66)) + (v104 * v67)) + (v105 * v68);
      v107 = (v62 + (v103 * v69)) + (v104 * v70);
      if (v101 < v61)
      {
        v108 = v61;
      }

      else
      {
        v108 = v101;
      }

      if (v101 > v63)
      {
        v108 = v63;
      }

      v109 = v107 + (v105 * v71);
      *v82 = llroundf(v108);
      if (v106 < v64)
      {
        v110 = v64;
      }

      else
      {
        v110 = v106;
      }

      if (v106 <= v65)
      {
        v111 = v110;
      }

      else
      {
        v111 = v65;
      }

      v82[1] = llroundf(v111);
      if (v102 < v61)
      {
        v112 = v61;
      }

      else
      {
        v112 = v102;
      }

      if (v102 > v63)
      {
        v112 = v63;
      }

      v82[2] = llroundf(v112);
      v113 = v65;
      if (v109 <= v65)
      {
        v113 = v109;
        if (v109 < v64)
        {
          v113 = v64;
        }
      }

      v82[3] = llroundf(v113);
      if (v81)
      {
        *v81++ = 0;
      }

      v78 += 2;
      v79 += 2;
      v82 += 4;
      if (v78 >= v33)
      {
        goto LABEL_40;
      }
    }

    v88 = 0.0;
    v87 = 0.0;
    v86 = 0.0;
LABEL_17:
    v92 = 0.0;
    v91 = 0.0;
    goto LABEL_18;
  }

LABEL_41:
  if (v26 && v30)
  {
    if (v20 >= 1)
    {
      v114 = 0;
      v115 = v26 + v25 * v14 + 2 * v12;
      do
      {
        if (v16 >= 1)
        {
          v116 = v16;
          v117 = v29;
          v118 = v115;
          do
          {
            v119 = *v118++;
            *v117++ = llroundf(v119 * 0.0038911);
            --v116;
          }

          while (v116);
        }

        v115 += v25;
        v29 += v27;
        ++v114;
      }

      while (v20 > v114);
    }
  }

  else if (v30 && v20 >= 1)
  {
    v120 = 0;
    v121 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v122 = 0;
        do
        {
          v123 = vdupq_n_s64(v122);
          v124 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v124, *v121.i8), *v121.i8).u8[0])
          {
            v29[v122] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v124, *&v121), *&v121).i8[1])
          {
            v29[v122 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDDA0)))), *&v121).i8[2])
          {
            v29[v122 + 2] = -1;
            v29[v122 + 3] = -1;
          }

          v125 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v121, vuzp1_s16(v125, *&v121)).i32[1])
          {
            v29[v122 + 4] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(v125, *&v121)).i8[5])
          {
            v29[v122 + 5] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD80))))).i8[6])
          {
            v29[v122 + 6] = -1;
            v29[v122 + 7] = -1;
          }

          v126 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v126, *v121.i8), *v121.i8).u8[0])
          {
            v29[v122 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v126, *&v121), *&v121).i8[1])
          {
            v29[v122 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD60)))), *&v121).i8[2])
          {
            v29[v122 + 10] = -1;
            v29[v122 + 11] = -1;
          }

          v127 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v121, vuzp1_s16(v127, *&v121)).i32[1])
          {
            v29[v122 + 12] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(v127, *&v121)).i8[5])
          {
            v29[v122 + 13] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD40))))).i8[6])
          {
            v29[v122 + 14] = -1;
            v29[v122 + 15] = -1;
          }

          v122 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v122);
      }

      v29 += v27;
      ++v120;
    }

    while (v20 > v120);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v69;
    if (v22 || (v33 = 2 * (v30 + v29) + 2, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v29;
      ++v73;
      ++v74;
      ++v28;
    }
  }

  else
  {
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = *v32 * v43 + 2 * (v41 + v30);
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 4 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && 2 * v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v10 = *result;
  v224 = *(result + 28) * a2 / v10 + *(result + 44);
  v225 = *(result + 36);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v230 = result;
  v14 = v12 * a2 / v10;
  v15 = v14 + result[15];
  v16 = (v12 + v12 * a2) / v10 - v14;
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v223 = v18[2];
  v227 = v17[2];
  v228 = v20[2];
  v226 = v19[2];
  v21 = (v226 + v228 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v25 = *v18;
    v24 = v18[1];
    v26 = *v20;
    v27 = v20[1];
    v28 = *(v23 + 140);
    v29 = *(v23 + 142);
    v30 = *(v23 + 144);
    v31 = *(v23 + 146);
    v32 = *(v23 + 148);
    v33 = *(v23 + 150);
    v34 = *(v23 + 152);
    _S12 = *(v23 + 44);
    v35.i32[0] = *(v23 + 48);
    v38.i32[0] = *(v23 + 52);
    v37.i32[0] = *(v23 + 56);
    result = (v23 + 16548);
    v39 = 8191.0 / *(v23 + 128);
    v40 = v28;
    v271 = v29;
    _S24 = v39 * *v23;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    *&a8 = v33;
    v276 = v33;
    v45 = v34;
    v46 = v23 + 164;
    *&a8 = v28;
    v47 = v23 + 32932;
    __asm { FCVT            H3, S24 }

    v254 = _H3;
    _Q5 = vdupq_lane_s16(*&a8, 0);
    v270 = _Q5;
    *_Q5.i16 = -v29;
    v235 = vdupq_lane_s16(*_Q5.i8, 0);
    v272 = v39 * *(v23 + 28);
    __asm { FCVT            H5, S17 }

    v234 = *_Q5.i16;
    v274 = v39 * *(v23 + 16);
    __asm { FCVT            H5, S7 }

    v233 = *_Q5.i16;
    v273 = v39 * *(v23 + 20);
    __asm { FCVT            H5, S19 }

    v35.i32[1] = *(v23 + 60);
    *a10.f32 = vmul_f32(v35, 0x3F0000003F000000);
    v55 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v269 = v55;
    v38.i32[1] = *(v23 + 64);
    *v55.f32 = vmul_f32(v38, 0x3F0000003F000000);
    _Q2 = vdupq_lane_s32(vcvt_f16_f32(v55), 0);
    v267 = _Q2;
    v37.i32[1] = *(v23 + 68);
    v275 = v39 * *(v23 + 8);
    __asm { FCVT            H2, S6 }

    v232 = *_Q2.i16;
    *_Q2.f32 = vmul_f32(v37, 0x3F0000003F000000);
    v57 = vcvt_f16_f32(_Q2);
    v58 = vdupq_lane_s32(v57, 0);
    *v57.i16 = v30;
    v59 = vdupq_lane_s16(v57, 0);
    v265 = v59;
    v266 = v58;
    *v59.i16 = v31;
    v60 = vdupq_lane_s16(*v59.i8, 0);
    *v59.i16 = v32;
    v61 = vdupq_lane_s16(*v59.i8, 0);
    v263 = v61;
    v264 = v60;
    *v61.i16 = v33;
    v62 = vdupq_lane_s16(*v61.i8, 0);
    *v61.i16 = v34;
    v262 = vdupq_lane_s16(*v61.i8, 0);
    v63 = *(v23 + 132);
    if (v63 >= 0x11)
    {
      v64 = 0;
    }

    else
    {
      v64 = 16 - v63;
    }

    v65 = *(v23 + 124);
    v66 = 16 - v65;
    if (v65 >= 0x11)
    {
      v66 = 0;
    }

    v68 = *v19;
    v67 = v19[1];
    v69 = v67 + v27 * v15 + 2 * v11;
    if (!v67)
    {
      v69 = 0;
    }

    v70 = v68 + v26 * v15 + 2 * v11;
    v73 = v17;
    v71 = *v17;
    v72 = v73[1];
    v231 = v24;
    if (v72)
    {
      v74 = v72 + v24 * v224 + 2 * v225;
    }

    else
    {
      v74 = 0;
    }

    v75 = v71 + v25 * v224 + 2 * v225;
    v76 = v66;
    v77 = v64;
    _S21 = *(v23 + 88);
    _S27 = *(v23 + 100);
    _S29 = *(v23 + 108);
    _S31 = *(v23 + 112);
    _S13 = *(v23 + 116);
    v278 = *(v23 + 36);
    __asm { FCVT            H0, S0 }

    v253 = _H0;
    v277 = *(v23 + 40);
    __asm { FCVT            H0, S5 }

    v252 = _H0;
    __asm { FCVT            H0, S12 }

    v251 = _H0;
    _S14 = *(v23 + 120);
    __asm { FCVT            H0, S29 }

    v250 = _H0;
    __asm { FCVT            H0, S31 }

    v249 = _H0;
    __asm { FCVT            H0, S13 }

    v248 = _H0;
    __asm { FCVT            H0, S14 }

    v247 = _H0;
    v261 = *(v23 + 72);
    __asm { FCVT            H0, S6 }

    v246 = _H0;
    v260 = *(v23 + 76);
    __asm { FCVT            H0, S17 }

    v245 = _H0;
    v259 = *(v23 + 80);
    __asm { FCVT            H0, S18 }

    v244 = _H0;
    v258 = *(v23 + 84);
    __asm { FCVT            H0, S19 }

    v243 = _H0;
    __asm { FCVT            H0, S21 }

    v242 = _H0;
    v257 = *(v23 + 92);
    __asm { FCVT            H0, S23 }

    v241 = _H0;
    v256 = *(v23 + 96);
    __asm { FCVT            H0, S26 }

    v240 = _H0;
    __asm { FCVT            H0, S27 }

    v239 = _H0;
    v255 = *(v23 + 104);
    __asm { FCVT            H0, S28 }

    v238 = _H0;
    v100 = a10.i64[0];
    v268 = v55.f32[0];
    v101 = _Q2.i64[0];
    v237 = v55.f32[1];
    v102 = vdupq_n_s16(-v66);
    v236 = vdupq_n_s16(v64);
    v103 = _S27;
    do
    {
      if (v13 < 8)
      {
        v139 = 0;
        v108 = v69;
        v107 = v70;
        v106 = v74;
        v105 = v75;
      }

      else
      {
        v104 = 0;
        v105 = v75;
        v106 = v74;
        v107 = v70;
        v108 = v69;
        do
        {
          if (v106)
          {
            v279 = vld2q_s16(v106);
            v106 += 16;
            v279.val[0] = vaddq_f16(v235, vcvtq_f16_u16(vshlq_u16(v279.val[0], v102)));
            v109 = vaddq_f16(v235, vcvtq_f16_u16(vshlq_u16(v279.val[1], v102)));
            v110 = vmulq_n_f16(v109, v232);
            v111 = vmlaq_n_f16(vmulq_n_f16(v279.val[0], v233), v109, _H5);
            v112 = vmulq_n_f16(v279.val[0], v234);
          }

          else
          {
            v112 = 0uLL;
            v111 = 0uLL;
            v110 = 0uLL;
          }

          v113 = *v105++;
          v114 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v113, v102)), v270);
          v115.i64[0] = 0x9000900090009000;
          v115.i64[1] = 0x9000900090009000;
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v110, v114, v254), 0), v115));
          v117.i16[0] = *(v46 + 2 * v116.u16[0]);
          v117.i16[1] = *(v46 + 2 * v116.u16[1]);
          v117.i16[2] = *(v46 + 2 * v116.u16[2]);
          v117.i16[3] = *(v46 + 2 * v116.u16[3]);
          v117.i16[4] = *(v46 + 2 * v116.u16[4]);
          v117.i16[5] = *(v46 + 2 * v116.u16[5]);
          v117.i16[6] = *(v46 + 2 * v116.u16[6]);
          v117.i16[7] = *(v46 + 2 * v116.u16[7]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v111, v114, v254), 0), v115));
          v119.i16[0] = *(v46 + 2 * v118.u16[0]);
          v119.i16[1] = *(v46 + 2 * v118.u16[1]);
          v119.i16[2] = *(v46 + 2 * v118.u16[2]);
          v119.i16[3] = *(v46 + 2 * v118.u16[3]);
          v119.i16[4] = *(v46 + 2 * v118.u16[4]);
          v119.i16[5] = *(v46 + 2 * v118.u16[5]);
          v119.i16[6] = *(v46 + 2 * v118.u16[6]);
          v119.i16[7] = *(v46 + 2 * v118.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v114, v254), 0), v115));
          v118.i16[0] = *(v46 + 2 * v120.u16[0]);
          v118.i16[1] = *(v46 + 2 * v120.u16[1]);
          v118.i16[2] = *(v46 + 2 * v120.u16[2]);
          v118.i16[3] = *(v46 + 2 * v120.u16[3]);
          v118.i16[4] = *(v46 + 2 * v120.u16[4]);
          v118.i16[5] = *(v46 + 2 * v120.u16[5]);
          v118.i16[6] = *(v46 + 2 * v120.u16[6]);
          v118.i16[7] = *(v46 + 2 * v120.u16[7]);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v250), v119, v249), v118, v248), vmaxq_f16(vmaxq_f16(v117, v119), v118), v247), 0), v115));
          v114.i16[0] = *(result + v121.u16[0]);
          v114.i16[1] = *(result + v121.u16[1]);
          v114.i16[2] = *(result + v121.u16[2]);
          v114.i16[3] = *(result + v121.u16[3]);
          v114.i16[4] = *(result + v121.u16[4]);
          v114.i16[5] = *(result + v121.u16[5]);
          v114.i16[6] = *(result + v121.u16[6]);
          v114.i16[7] = *(result + v121.u16[7]);
          v122 = vmulq_f16(v117, v114);
          v123 = vmulq_f16(v119, v114);
          v124 = vmulq_f16(v118, v114);
          v125 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v243), v123, v242), v124, v241);
          v126 = vmulq_n_f16(v124, v238);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v246), v123, v245), v124, v244), 0), v115));
          v128 = vmlaq_n_f16(v126, v123, v239);
          v117.i16[0] = *(v47 + 2 * v127.u16[0]);
          v117.i16[1] = *(v47 + 2 * v127.u16[1]);
          v117.i16[2] = *(v47 + 2 * v127.u16[2]);
          v117.i16[3] = *(v47 + 2 * v127.u16[3]);
          v117.i16[4] = *(v47 + 2 * v127.u16[4]);
          v117.i16[5] = *(v47 + 2 * v127.u16[5]);
          v117.i16[6] = *(v47 + 2 * v127.u16[6]);
          v129 = v117;
          v129.i16[7] = *(v47 + 2 * v127.u16[7]);
          v130 = vminq_f16(vmaxq_f16(v125, 0), v115);
          v131 = vcvtq_u16_f16(v130);
          v130.i16[0] = *(v47 + 2 * v131.u16[0]);
          v130.i16[1] = *(v47 + 2 * v131.u16[1]);
          v130.i16[2] = *(v47 + 2 * v131.u16[2]);
          v130.i16[3] = *(v47 + 2 * v131.u16[3]);
          v130.i16[4] = *(v47 + 2 * v131.u16[4]);
          v130.i16[5] = *(v47 + 2 * v131.u16[5]);
          v130.i16[6] = *(v47 + 2 * v131.u16[6]);
          v132 = vmlaq_n_f16(v128, v122, v240);
          v133 = v130;
          v133.i16[7] = *(v47 + 2 * v131.u16[7]);
          v134 = vminq_f16(vmaxq_f16(v132, 0), v115);
          v135 = vcvtq_u16_f16(v134);
          v134.i16[0] = *(v47 + 2 * v135.u16[0]);
          v134.i16[1] = *(v47 + 2 * v135.u16[1]);
          v134.i16[2] = *(v47 + 2 * v135.u16[2]);
          v134.i16[3] = *(v47 + 2 * v135.u16[3]);
          v134.i16[4] = *(v47 + 2 * v135.u16[4]);
          v134.i16[5] = *(v47 + 2 * v135.u16[5]);
          v134.i16[6] = *(v47 + 2 * v135.u16[6]);
          v136 = (v47 + 2 * v135.u16[7]);
          v137 = v134;
          v137.i16[7] = *v136;
          *v107++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v265, v129, v253), v133, v252), v137, v251), v265), v263)), v236);
          v138 = vaddq_f16(vuzp1q_s16(v117, v130), vuzp2q_s16(v129, v133));
          *v108++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v264, v269, vzip1q_s16(v138, v138)), v267, vzip2q_s16(v138, v138)), v266, vaddq_f16(vtrn1q_s16(v134, v134), vtrn2q_s16(v137, v137))), v62), v262)), v236);
          v104 += 8;
        }

        while (v104 < v13 - 7);
        v139 = v13 & 0xFFFFFFF8;
      }

      while (v139 < (v13 & 0xFFFFFFFE))
      {
        if (v106)
        {
          v140 = (*v106 >> v76) - v271;
          v141 = (*(v106 + 1) >> v76) - v271;
          v106 += 2;
          v142 = v275 * v141;
          v143 = (v273 * v141) + (v140 * v274);
          v144 = v272 * v140;
        }

        else
        {
          v144 = 0.0;
          v143 = 0.0;
          v142 = 0.0;
        }

        v145 = _S24 * ((v105->u16[0] >> v76) - v40);
        v146 = v142 + v145;
        v147 = (v142 + v145) <= 8191.0;
        v148 = 8191.0;
        if (v147)
        {
          v148 = v146;
          if (v146 < 0.0)
          {
            v148 = 0.0;
          }
        }

        v149 = v143 + v145;
        v147 = (v143 + v145) <= 8191.0;
        v150 = 8191.0;
        if (v147)
        {
          v150 = v149;
          if (v149 < 0.0)
          {
            v150 = 0.0;
          }
        }

        v151 = v144 + v145;
        v152 = 8191.0;
        if (v151 <= 8191.0)
        {
          v152 = v151;
          if (v151 < 0.0)
          {
            v152 = 0.0;
          }
        }

        v153 = v43;
        if (v106)
        {
          v154 = (*v106 >> v76) - v271;
          v155 = (*(v106 + 1) >> v76) - v271;
          v106 += 2;
          v156 = v275 * v155;
          v157 = (v273 * v155) + (v154 * v274);
          v158 = v272 * v154;
        }

        else
        {
          v158 = 0.0;
          v157 = 0.0;
          v156 = 0.0;
        }

        v159 = _S24 * ((v105->u16[1] >> v76) - v40);
        v160 = v156 + v159;
        v147 = (v156 + v159) <= 8191.0;
        v161 = 8191.0;
        if (v147)
        {
          v161 = v160;
          if (v160 < 0.0)
          {
            v161 = 0.0;
          }
        }

        v162 = v157 + v159;
        v147 = (v157 + v159) <= 8191.0;
        v163 = 8191.0;
        if (v147)
        {
          v163 = v162;
          if (v162 < 0.0)
          {
            v163 = 0.0;
          }
        }

        v164 = v158 + v159;
        v147 = (v158 + v159) <= 8191.0;
        v165 = 8191.0;
        if (v147)
        {
          v165 = v164;
          if (v164 < 0.0)
          {
            v165 = 0.0;
          }
        }

        v166 = _S24;
        v167 = _S12;
        _H0 = *(v46 + 2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0)));
        __asm { FCVT            S0, H0 }

        _H2 = *(v46 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        _H4 = *(v46 + 2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H17 = *(v46 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
        _H9 = *(v46 + 2 * llroundf(fminf(fmaxf(v163, 0.0), 8191.0)));
        _H10 = *(v46 + 2 * llroundf(fminf(fmaxf(v165, 0.0), 8191.0)));
        v177 = (((_S31 * _S2) + (_S29 * _S0)) + (_S13 * _S4)) + (_S14 * fmaxf(_S0, fmaxf(_S2, _S4)));
        v178 = 8191.0;
        if (v177 <= 8191.0)
        {
          v178 = v177;
          if (v177 < 0.0)
          {
            v178 = 0.0;
          }
        }

        v179 = v40;
        __asm
        {
          FCVT            S17, H17
          FCVT            S30, H9
          FCVT            S9, H10
        }

        _H10 = *(result + llroundf(v178));
        v184 = (((_S31 * _S30) + (_S29 * _S17)) + (_S13 * _S9)) + (_S14 * fmaxf(_S17, fmaxf(_S30, _S9)));
        v185 = 8191.0;
        if (v184 <= 8191.0)
        {
          v185 = v184;
          if (v184 < 0.0)
          {
            v185 = 0.0;
          }
        }

        __asm { FCVT            S18, H10 }

        _S0 = _S0 * _S18;
        _S2 = _S2 * _S18;
        v189 = _S4 * _S18;
        LOWORD(_S18) = *(result + llroundf(v185));
        __asm { FCVT            S18, H18 }

        v191 = _S17 * _S18;
        v192 = _S30 * _S18;
        v193 = _S9 * _S18;
        v194 = ((v260 * _S2) + (_S0 * v261)) + (v189 * v259);
        v195 = ((_S21 * _S2) + (_S0 * v258)) + (v189 * v257);
        _S4 = ((v103 * _S2) + (_S0 * v256)) + (v189 * v255);
        v197 = ((v260 * v192) + (v191 * v261)) + (v193 * v259);
        v198 = ((_S21 * v192) + (v191 * v258)) + (v193 * v257);
        v199 = ((v103 * v192) + (v191 * v256)) + (v193 * v255);
        LOWORD(_S0) = *(v47 + 2 * llroundf(fminf(fmaxf(v194, 0.0), 8191.0)));
        __asm { FCVT            S0, H0 }

        LOWORD(_S2) = *(v47 + 2 * llroundf(fminf(fmaxf(v195, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        LOWORD(_S4) = *(v47 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
        __asm { FCVT            S4, H4 }

        _H17 = *(v47 + 2 * llroundf(fminf(fmaxf(v197, 0.0), 8191.0)));
        _H9 = *(v47 + 2 * llroundf(fminf(fmaxf(v198, 0.0), 8191.0)));
        _H10 = *(v47 + 2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0)));
        _S12 = v167;
        v206 = (((v277 * _S2) + (v278 * _S0)) + (v167 * _S4)) + v42;
        v207 = v44;
        if (v206 <= v44)
        {
          v207 = (((v277 * _S2) + (v278 * _S0)) + (v167 * _S4)) + v42;
          if (v206 < v42)
          {
            v207 = v42;
          }
        }

        __asm
        {
          FCVT            S30, H17
          FCVT            S19, H9
          FCVT            S17, H10
        }

        v211 = (((v277 * _S19) + (v278 * _S30)) + (v167 * _S17)) + v42;
        v107->i16[0] = llroundf(v207) << v77;
        v212 = v44;
        v43 = v153;
        if (v211 <= v44)
        {
          v212 = v211;
          if (v211 < v42)
          {
            v212 = v42;
          }
        }

        v107->i16[1] = llroundf(v212) << v77;
        v213 = _S0 + _S30;
        v214 = _S2 + _S19;
        v215 = _S4 + _S17;
        v216 = ((v153 + (v213 * *&v100)) + (v214 * v268)) + (v215 * *&v101);
        v217 = v45;
        v40 = v179;
        if (v216 <= v45)
        {
          v217 = ((v153 + (v213 * *&v100)) + (v214 * v268)) + (v215 * *&v101);
          if (v216 < v276)
          {
            v217 = v276;
          }
        }

        v218 = ((v153 + (v213 * *(&v100 + 1))) + (v214 * v237)) + (v215 * *(&v101 + 1));
        v108->i16[0] = llroundf(v217) << v77;
        v219 = v45;
        _S24 = v166;
        if (v218 <= v45)
        {
          v219 = v218;
          if (v218 < v276)
          {
            v219 = v276;
          }
        }

        v108->i16[1] = llroundf(v219) << v77;
        v108 = (v108 + 4);
        v139 += 2;
        v105 = (v105 + 4);
        v107 = (v107 + 4);
      }

      v75 += v25;
      v74 += v231;
      v70 += v26;
      v69 += v27;
      ++v22;
    }

    while (v22 != v16);
  }

  if (v227 && v226)
  {
    if (v16 >= 1)
    {
      v220 = 0;
      v221 = (v227 + v223 * v224 + 2 * v225);
      v222 = 2 * v13;
      do
      {
        result = memcpy(v21, v221, v222);
        v221 += v223;
        v21 += v228;
        ++v220;
      }

      while (v16 > v220);
    }
  }

  else if (v226 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v21, 255, 2 * v13);
      }

      v21 += v228;
      --v16;
    }

    while (v16);
  }

  *(v230 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v69;
    if (v22 || (v33 = 2 * (v30 + v29) + 2, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v29;
      ++v73;
      ++v74;
      ++v28;
    }
  }

  else
  {
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = *v32 * v43 + 2 * (v41 + v30);
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 4 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && 2 * v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422_GCD(uint64_t *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v10 = *result;
  v157 = *(result + 28) * a2 / v10 + *(result + 44);
  v158 = *(result + 36);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v14 = v12 * a2 / v10;
  v15 = v14 + result[15];
  v16 = (v12 + v12 * a2) / v10 - v14;
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v21 = v18[2];
  v160 = v17[2];
  v22 = v20[2];
  v159 = v19[2];
  v23 = (v159 + v22 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = v13 & 0xFFFFFFFE;
    v27 = *v18;
    v28 = v18[1];
    v29 = *v20;
    v30 = v20[1];
    result = &qword_18FECD000;
    LOWORD(a4) = *(v25 + 140);
    LOWORD(a5) = *(v25 + 142);
    LOWORD(v5) = *(v25 + 144);
    LOWORD(v6) = *(v25 + 146);
    LOWORD(v7) = *(v25 + 148);
    v31 = 8191.0 / *(v25 + 128);
    v32 = LODWORD(a4);
    v33 = LODWORD(a5);
    v34 = v31 * *v25;
    v178 = v31 * *(v25 + 16);
    v179 = v31 * *(v25 + 8);
    v35 = v31 * *(v25 + 20);
    *&v36 = v31 * *(v25 + 28);
    v176 = *&v36;
    v177 = v35;
    v37 = v5;
    v38 = v6;
    v39 = v7;
    LOWORD(v36) = *(v25 + 150);
    v40 = v36;
    LOWORD(v36) = *(v25 + 152);
    v41 = v36;
    v42 = *(v25 + 36);
    v180 = v40;
    v181 = *(v25 + 40);
    v43 = *(v25 + 44);
    v174 = *(v25 + 52) * 0.5;
    v175 = *(v25 + 48) * 0.5;
    v172 = *(v25 + 60) * 0.5;
    v173 = *(v25 + 56) * 0.5;
    v170 = *(v25 + 72);
    v171 = *(v25 + 64) * 0.5;
    v168 = *(v25 + 76);
    v169 = *(v25 + 68) * 0.5;
    v166 = *(v25 + 84);
    v167 = *(v25 + 80);
    v164 = *(v25 + 92);
    v165 = *(v25 + 88);
    v162 = *(v25 + 100);
    v163 = *(v25 + 96);
    v161 = *(v25 + 104);
    v44 = v25 + 164;
    v45 = v25 + 16548;
    v46 = *(v25 + 132);
    if (v46 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v46;
    }

    v48 = *(v25 + 124);
    if (v48 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v48;
    }

    v50 = v19[1];
    _ZF = v50 == 0;
    v52 = v50 + v30 * v15;
    v53 = *v19 + v29 * v15;
    v54 = v25 + 32932;
    v55 = v52 + 2 * v11;
    if (_ZF)
    {
      v55 = 0;
    }

    v56 = (v53 + 2 * v11);
    v59 = v17;
    v57 = *v17;
    v58 = v59[1];
    _ZF = v58 == 0;
    v60 = v58 + v28 * v157 + 2 * v158;
    if (_ZF)
    {
      v60 = 0;
    }

    v61 = v57 + v27 * v157 + 2 * v158;
    v62 = v47;
    v63 = *(v25 + 108);
    v64 = *(v25 + 112);
    v65 = *(v25 + 116);
    v66 = *(v25 + 120);
    do
    {
      if (v26 >= 1)
      {
        v67 = 0;
        v68 = v61;
        v69 = v60;
        v70 = v56;
        do
        {
          if (v69)
          {
            v71 = (*v69 >> v49) - v33;
            v72 = (v69[1] >> v49) - v33;
            v69 += 2;
            v73 = v179 * v72;
            v74 = (v177 * v72) + (v71 * v178);
            v75 = v176 * v71;
          }

          else
          {
            v75 = 0.0;
            v74 = 0.0;
            v73 = 0.0;
          }

          v76 = v34 * ((*v68 >> v49) - v32);
          v77 = v73 + v76;
          v78 = (v73 + v76) <= 8191.0;
          v79 = 8191.0;
          if (v78)
          {
            v79 = v77;
            if (v77 < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = 8191.0;
          if ((v74 + v76) <= 8191.0)
          {
            v80 = v74 + v76;
            if ((v74 + v76) < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v75 + v76;
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          if (v69)
          {
            v83 = (*v69 >> v49) - v33;
            v84 = (v69[1] >> v49) - v33;
            v69 += 2;
            v85 = v179 * v84;
            v86 = (v177 * v84) + (v83 * v178);
            v87 = v176 * v83;
          }

          else
          {
            v87 = 0.0;
            v86 = 0.0;
            v85 = 0.0;
          }

          v88 = v34 * ((v68[1] >> v49) - v32);
          v89 = v85 + v88;
          v78 = (v85 + v88) <= 8191.0;
          v90 = 8191.0;
          if (v78)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v86 + v88;
          v78 = (v86 + v88) <= 8191.0;
          v92 = 8191.0;
          if (v78)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v42;
          v94 = v87 + v88;
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H0 = *(v44 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v44 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          v102 = llroundf(fminf(fmaxf(v82, 0.0), 8191.0));
          __asm { FCVT            S4, H1 }

          _H1 = *(v44 + 2 * v102);
          __asm { FCVT            S30, H1 }

          _H1 = *(v44 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          _H6 = *(v44 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H7 = *(v44 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v109 = fmaxf(_S0, fmaxf(_S4, _S30));
          v110 = (((v64 * _S4) + (v63 * _S0)) + (v65 * _S30)) + (v66 * v109);
          v111 = 8191.0;
          if (v110 <= 8191.0)
          {
            v111 = (((v64 * _S4) + (v63 * _S0)) + (v65 * _S30)) + (v66 * v109);
            if (v110 < 0.0)
            {
              v111 = 0.0;
            }
          }

          __asm
          {
            FCVT            S1, H1
            FCVT            S6, H6
            FCVT            S7, H7
          }

          _H19 = *(v45 + 2 * llroundf(v111));
          v116 = (((v64 * _S6) + (v63 * _S1)) + (v65 * _S7)) + (v66 * fmaxf(_S1, fmaxf(_S6, _S7)));
          v117 = 8191.0;
          if (v116 <= 8191.0)
          {
            v117 = v116;
            if (v116 < 0.0)
            {
              v117 = 0.0;
            }
          }

          __asm { FCVT            S3, H19 }

          _S0 = _S0 * _S3;
          v120 = _S4 * _S3;
          v121 = _S30 * _S3;
          _H17 = *(v45 + 2 * llroundf(v117));
          __asm { FCVT            S17, H17 }

          _S1 = _S1 * _S17;
          v125 = _S6 * _S17;
          v126 = _S7 * _S17;
          v127 = ((v168 * v120) + (_S0 * v170)) + (v121 * v167);
          v128 = ((v165 * v120) + (_S0 * v166)) + (v121 * v164);
          v129 = ((v162 * v120) + (_S0 * v163)) + (v121 * v161);
          v130 = ((v168 * v125) + (_S1 * v170)) + (v126 * v167);
          v131 = ((v165 * v125) + (_S1 * v166)) + (v126 * v164);
          v132 = ((v162 * v125) + (_S1 * v163)) + (v126 * v161);
          LOWORD(_S0) = *(v54 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v54 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          LOWORD(_S1) = *(v54 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S30, H1 }

          _H1 = *(v54 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          _H6 = *(v54 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          _H19 = *(v54 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          v42 = v93;
          v139 = (((v181 * _S4) + (v93 * _S0)) + (v43 * _S30)) + v37;
          v140 = v39;
          if (v139 <= v39)
          {
            v140 = (((v181 * _S4) + (v93 * _S0)) + (v43 * _S30)) + v37;
            if (v139 < v37)
            {
              v140 = v37;
            }
          }

          __asm
          {
            FCVT            S7, H1
            FCVT            S6, H6
            FCVT            S1, H19
          }

          v144 = (((v181 * _S6) + (v93 * _S7)) + (v43 * _S1)) + v37;
          *v70 = llroundf(v140) << v62;
          v145 = v39;
          if (v144 <= v39)
          {
            v145 = (((v181 * _S6) + (v93 * _S7)) + (v43 * _S1)) + v37;
            if (v144 < v37)
            {
              v145 = v37;
            }
          }

          v70[1] = llroundf(v145) << v62;
          v146 = _S0 + _S7;
          v147 = _S4 + _S6;
          v148 = _S30 + _S1;
          v149 = ((v38 + (v146 * v175)) + (v147 * v174)) + (v148 * v173);
          v150 = v41;
          if (v149 <= v41)
          {
            v150 = ((v38 + (v146 * v175)) + (v147 * v174)) + (v148 * v173);
            if (v149 < v180)
            {
              v150 = v180;
            }
          }

          v151 = (v55 + 2 * v67);
          v152 = ((v38 + (v146 * v172)) + (v147 * v171)) + (v148 * v169);
          *v151 = llroundf(v150) << v62;
          v153 = v41;
          if (v152 <= v41)
          {
            v153 = v152;
            if (v152 < v180)
            {
              v153 = v180;
            }
          }

          v151[1] = llroundf(v153) << v62;
          v67 += 2;
          v68 += 2;
          v70 += 2;
        }

        while (v67 < v26);
      }

      v61 += v27;
      v60 += v28;
      v56 = (v56 + v29);
      v55 += v30;
      ++v24;
    }

    while (v24 != v16);
  }

  if (v160 && v159)
  {
    if (v16 >= 1)
    {
      v154 = 0;
      v155 = (v160 + v21 * v157 + 2 * v158);
      v156 = 2 * v13;
      do
      {
        result = memcpy(v23, v155, v156);
        v155 += v21;
        v23 += v22;
        ++v154;
      }

      while (v16 > v154);
    }
  }

  else if (v159 && v16 >= 1)
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

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v69;
    if (v22 || (v33 = 2 * (v30 + v29) + 2, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v29;
      ++v73;
      ++v74;
      ++v28;
    }
  }

  else
  {
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = *v32 * v43 + 2 * (v41 + v30);
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 4 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && 2 * v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf444_TRC_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_xf444_TRC_Mat_TRC_xf422_neon_fp16_GCD(uint64_t *result, uint64_t a2, double a3)
{
  v6 = *result;
  v197 = *(result + 28) * a2 / v6 + *(result + 44);
  v198 = *(result + 36);
  v7 = result[14];
  v9 = result[12];
  v8 = result[13];
  v203 = result;
  v10 = v8 * a2 / v6;
  v11 = v10 + result[15];
  v12 = (v8 + v8 * a2) / v6 - v10;
  v13 = result[7];
  v14 = result[8];
  v15 = result[16];
  v16 = result[17];
  v196 = v14[2];
  v200 = v13[2];
  v201 = v16[2];
  v199 = v15[2];
  v17 = (v199 + v201 * v11 + 2 * v7);
  if (v12 >= 1)
  {
    v18 = 0;
    v19 = result[19];
    v21 = *v14;
    v20 = v14[1];
    v22 = *v16;
    v23 = v16[1];
    v24 = *(v19 + 140);
    v25 = *(v19 + 142);
    v26 = *(v19 + 144);
    v27 = *(v19 + 146);
    v28 = *(v19 + 148);
    v29 = *(v19 + 150);
    v30 = *(v19 + 152);
    _S6 = *(v19 + 36);
    _S7 = *(v19 + 40);
    _S16 = *(v19 + 44);
    v4.i32[0] = *(v19 + 48);
    v3.i32[0] = *(v19 + 52);
    v34.i32[0] = *(v19 + 56);
    result = &qword_18FECD000;
    *&a3 = 8191.0 / *(v19 + 128);
    v35 = v24;
    v241 = v25;
    _S24 = *(v19 + 72);
    _S26 = *(v19 + 76);
    _S10 = *&a3 * *v19;
    _S2 = *&a3 * *(v19 + 8);
    _S4 = *&a3 * *(v19 + 16);
    v41 = v19 + 164;
    _S20 = *&a3 * *(v19 + 20);
    _S27 = *&a3 * *(v19 + 28);
    v44 = v26;
    v238 = v27;
    v45 = v28;
    *&a3 = v29;
    v246 = v29;
    v46 = v30;
    *&a3 = v24;
    v47 = vdupq_lane_s16(*&a3, 0);
    v237 = v47;
    *v47.i16 = -v25;
    v207 = vdupq_lane_s16(*v47.i8, 0);
    v4.i32[1] = *(v19 + 60);
    v48 = v19 + 16548;
    *v4.f32 = vmul_f32(*v4.f32, 0x3F0000003F000000);
    v236 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v3.i32[1] = *(v19 + 64);
    *v3.f32 = vmul_f32(*v3.f32, 0x3F0000003F000000);
    v49 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v234 = v49;
    v34.i32[1] = *(v19 + 68);
    *v49.f32 = vmul_f32(v34, 0x3F0000003F000000);
    *v47.i8 = vcvt_f16_f32(v49);
    v50 = vdupq_lane_s32(*v47.i8, 0);
    *v47.i16 = v26;
    v51 = vdupq_lane_s16(*v47.i8, 0);
    v232 = v51;
    v233 = v50;
    *v51.i16 = v27;
    v52 = vdupq_lane_s16(*v51.i8, 0);
    *v51.i16 = v28;
    v53 = vdupq_lane_s16(*v51.i8, 0);
    v230 = v53;
    v231 = v52;
    *v53.i16 = v29;
    v54 = vdupq_lane_s16(*v53.i8, 0);
    __asm { FCVT            H14, S10 }

    *v53.i16 = v30;
    v229 = vdupq_lane_s16(*v53.i8, 0);
    v60 = *(v19 + 132);
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v62 = *(v19 + 124);
    v63 = 16 - v62;
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    v65 = *v15;
    v64 = v15[1];
    v66 = v64 + v23 * v11 + 2 * v7;
    if (!v64)
    {
      v66 = 0;
    }

    v67 = v65 + v22 * v11 + 2 * v7;
    v68 = *v13;
    v69 = v13[1];
    v70 = v20;
    v71 = v69 + v20 * v197 + 2 * v198;
    if (!v69)
    {
      v71 = 0;
    }

    v72 = v68 + v21 * v197 + 2 * v198;
    v73 = v63;
    v74 = v61;
    v242 = _S27;
    __asm { FCVT            H8, S27 }

    v244 = _S4;
    __asm { FCVT            H4, S4 }

    v206 = _H4;
    v243 = _S20;
    __asm { FCVT            H4, S20 }

    v205 = _H4;
    v245 = _S2;
    __asm { FCVT            H2, S2 }

    v204 = _H2;
    __asm { FCVT            H2, S6 }

    v221 = _H2;
    __asm { FCVT            H2, S7 }

    v220 = _H2;
    __asm { FCVT            H2, S16 }

    v219 = _H2;
    v240 = *(v19 + 72);
    __asm { FCVT            H2, S24 }

    v218 = _H2;
    v239 = *(v19 + 76);
    __asm { FCVT            H2, S26 }

    v228 = *(v19 + 80);
    __asm { FCVT            H0, S0 }

    v216 = _H0;
    v217 = _H2;
    v227 = *(v19 + 84);
    __asm { FCVT            H0, S17 }

    v215 = _H0;
    v226 = *(v19 + 88);
    __asm { FCVT            H0, S28 }

    v214 = _H0;
    v225 = *(v19 + 92);
    __asm { FCVT            H0, S29 }

    v213 = _H0;
    v224 = *(v19 + 96);
    __asm { FCVT            H0, S30 }

    v212 = _H0;
    v223 = *(v19 + 100);
    __asm { FCVT            H0, S31 }

    v211 = _H0;
    v222 = *(v19 + 104);
    __asm { FCVT            H0, S4 }

    v210 = _H0;
    v91 = vdupq_n_s16(-v63);
    v209 = vdupq_n_s16(v61);
    v92 = v4.i64[0];
    v235 = v3.f32[0];
    v93 = v49.i64[0];
    v208 = v3.f32[1];
    v94.i64[0] = 0x9000900090009000;
    v94.i64[1] = 0x9000900090009000;
    do
    {
      if (v9 < 8)
      {
        v124 = 0;
        v99 = v66;
        v98 = v67;
        v97 = v71;
        v96 = v72;
      }

      else
      {
        v95 = 0;
        v96 = v72;
        v97 = v71;
        v98 = v67;
        v99 = v66;
        do
        {
          if (v97)
          {
            v247 = vld2q_s16(v97);
            v97 += 16;
            v100 = vcvtq_f16_u16(vshlq_u16(v247.val[0], v91));
            v247.val[0] = vcvtq_f16_u16(vshlq_u16(v247.val[1], v91));
            v247.val[1] = vaddq_f16(v207, v100);
            v101 = vaddq_f16(v207, v247.val[0]);
            v102 = vmulq_n_f16(v101, v204);
            v103 = vmlaq_n_f16(vmulq_n_f16(v247.val[1], v206), v101, v205);
            v104 = vmulq_n_f16(v247.val[1], _H8);
          }

          else
          {
            v104 = 0uLL;
            v103 = 0uLL;
            v102 = 0uLL;
          }

          v105 = *v96++;
          v106 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v105, v91)), v237);
          v107 = vmlaq_n_f16(v104, v106, _H14);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v106, _H14), 0), v94));
          v109.i16[0] = *(v41 + 2 * v108.u16[0]);
          v109.i16[1] = *(v41 + 2 * v108.u16[1]);
          v109.i16[2] = *(v41 + 2 * v108.u16[2]);
          v109.i16[3] = *(v41 + 2 * v108.u16[3]);
          v109.i16[4] = *(v41 + 2 * v108.u16[4]);
          v109.i16[5] = *(v41 + 2 * v108.u16[5]);
          v109.i16[6] = *(v41 + 2 * v108.u16[6]);
          v109.i16[7] = *(v41 + 2 * v108.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v106, _H14), 0), v94));
          v111.i16[0] = *(v41 + 2 * v110.u16[0]);
          v111.i16[1] = *(v41 + 2 * v110.u16[1]);
          v111.i16[2] = *(v41 + 2 * v110.u16[2]);
          v111.i16[3] = *(v41 + 2 * v110.u16[3]);
          v111.i16[4] = *(v41 + 2 * v110.u16[4]);
          v111.i16[5] = *(v41 + 2 * v110.u16[5]);
          v111.i16[6] = *(v41 + 2 * v110.u16[6]);
          v111.i16[7] = *(v41 + 2 * v110.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v94));
          v106.i16[0] = *(v41 + 2 * v112.u16[0]);
          v106.i16[1] = *(v41 + 2 * v112.u16[1]);
          v106.i16[2] = *(v41 + 2 * v112.u16[2]);
          v106.i16[3] = *(v41 + 2 * v112.u16[3]);
          v106.i16[4] = *(v41 + 2 * v112.u16[4]);
          v106.i16[5] = *(v41 + 2 * v112.u16[5]);
          v106.i16[6] = *(v41 + 2 * v112.u16[6]);
          v106.i16[7] = *(v41 + 2 * v112.u16[7]);
          v113 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v215), v111, v214), v106, v213);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v218), v111, v217), v106, v216), 0), v94));
          v115 = vmlaq_n_f16(vmulq_n_f16(v106, v210), v111, v211);
          v107.i16[0] = *(v48 + 2 * v114.u16[0]);
          v107.i16[1] = *(v48 + 2 * v114.u16[1]);
          v107.i16[2] = *(v48 + 2 * v114.u16[2]);
          v107.i16[3] = *(v48 + 2 * v114.u16[3]);
          v107.i16[4] = *(v48 + 2 * v114.u16[4]);
          v107.i16[5] = *(v48 + 2 * v114.u16[5]);
          v107.i16[6] = *(v48 + 2 * v114.u16[6]);
          v116 = v107;
          v116.i16[7] = *(v48 + 2 * v114.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, 0), v94));
          v5.i16[0] = *(v48 + 2 * v117.u16[0]);
          v5.i16[1] = *(v48 + 2 * v117.u16[1]);
          v5.i16[2] = *(v48 + 2 * v117.u16[2]);
          v5.i16[3] = *(v48 + 2 * v117.u16[3]);
          v5.i16[4] = *(v48 + 2 * v117.u16[4]);
          v5.i16[5] = *(v48 + 2 * v117.u16[5]);
          v5.i16[6] = *(v48 + 2 * v117.u16[6]);
          v118 = vmlaq_n_f16(v115, v109, v212);
          v119 = v5;
          v119.i16[7] = *(v48 + 2 * v117.u16[7]);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, 0), v94));
          v118.i16[0] = *(v48 + 2 * v120.u16[0]);
          v118.i16[1] = *(v48 + 2 * v120.u16[1]);
          v118.i16[2] = *(v48 + 2 * v120.u16[2]);
          v118.i16[3] = *(v48 + 2 * v120.u16[3]);
          v118.i16[4] = *(v48 + 2 * v120.u16[4]);
          v118.i16[5] = *(v48 + 2 * v120.u16[5]);
          v118.i16[6] = *(v48 + 2 * v120.u16[6]);
          v121 = (v48 + 2 * v120.u16[7]);
          v122 = v118;
          v122.i16[7] = *v121;
          *v98++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v232, v116, v221), v119, v220), v122, v219), v232), v230)), v209);
          v123 = vaddq_f16(vuzp1q_s16(v107, v5), vuzp2q_s16(v116, v119));
          *v99++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v231, v236, vzip1q_s16(v123, v123)), v234, vzip2q_s16(v123, v123)), v233, vaddq_f16(vtrn1q_s16(v118, v118), vtrn2q_s16(v122, v122))), v54), v229)), v209);
          v95 += 8;
        }

        while (v95 < v9 - 7);
        v124 = v9 & 0xFFFFFFF8;
      }

      while (v124 < (v9 & 0xFFFFFFFE))
      {
        if (v97)
        {
          v125 = (*v97 >> v73) - v241;
          v126 = (*(v97 + 1) >> v73) - v241;
          v97 += 2;
          v127 = v245 * v126;
          v128 = (v243 * v126) + (v125 * v244);
          v129 = v242 * v125;
        }

        else
        {
          v129 = 0.0;
          v128 = 0.0;
          v127 = 0.0;
        }

        v130 = _S10 * ((v96->u16[0] >> v73) - v35);
        v131 = v127 + v130;
        v132 = (v127 + v130) <= 8191.0;
        v133 = 8191.0;
        if (v132)
        {
          v133 = v131;
          if (v131 < 0.0)
          {
            v133 = 0.0;
          }
        }

        v134 = v128 + v130;
        v135 = 8191.0;
        if (v134 <= 8191.0)
        {
          v135 = v134;
          if (v134 < 0.0)
          {
            v135 = 0.0;
          }
        }

        v136 = v129 + v130;
        v137 = 8191.0;
        if (v136 <= 8191.0)
        {
          v137 = v136;
          if (v136 < 0.0)
          {
            v137 = 0.0;
          }
        }

        if (v97)
        {
          v138 = (*v97 >> v73) - v241;
          v139 = (*(v97 + 1) >> v73) - v241;
          v97 += 2;
          v140 = v245 * v139;
          v141 = (v243 * v139) + (v138 * v244);
          v142 = v242 * v138;
        }

        else
        {
          v142 = 0.0;
          v141 = 0.0;
          v140 = 0.0;
        }

        v143 = _S10;
        v144 = _S10 * ((v96->u16[1] >> v73) - v35);
        v145 = 8191.0;
        if ((v140 + v144) <= 8191.0)
        {
          v145 = v140 + v144;
          if ((v140 + v144) < 0.0)
          {
            v145 = 0.0;
          }
        }

        v146 = v35;
        v147 = _S16;
        v148 = v141 + v144;
        v132 = (v141 + v144) <= 8191.0;
        v149 = 8191.0;
        if (v132)
        {
          v149 = v148;
          if (v148 < 0.0)
          {
            v149 = 0.0;
          }
        }

        v150 = _S7;
        v151 = _S6;
        v152 = v142 + v144;
        v153 = 8191.0;
        if (v152 <= 8191.0)
        {
          v153 = v152;
          if (v152 < 0.0)
          {
            v153 = 0.0;
          }
        }

        _H2 = *(v41 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
        __asm { FCVT            S2, H2 }

        _H18 = *(v41 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
        __asm { FCVT            S18, H18 }

        _H20 = *(v41 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
        __asm { FCVT            S20, H20 }

        _H4 = *(v41 + 2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0)));
        _H1 = *(v41 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
        __asm
        {
          FCVT            S4, H4
          FCVT            S1, H1
        }

        _H0 = *(v41 + 2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0)));
        __asm { FCVT            S0, H0 }

        v166 = ((v239 * _S18) + (_S2 * v240)) + (_S20 * v228);
        v167 = ((v226 * _S18) + (_S2 * v227)) + (_S20 * v225);
        v168 = ((v223 * _S18) + (_S2 * v224)) + (_S20 * v222);
        v169 = ((v239 * _S1) + (_S4 * v240)) + (_S0 * v228);
        v170 = ((v226 * _S1) + (_S4 * v227)) + (_S0 * v225);
        v171 = ((v223 * _S1) + (_S4 * v224)) + (_S0 * v222);
        LOWORD(_S0) = *(v48 + 2 * llroundf(fminf(fmaxf(v166, 0.0), 8191.0)));
        __asm { FCVT            S18, H0 }

        LOWORD(_S0) = *(v48 + 2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0)));
        __asm { FCVT            S20, H0 }

        LOWORD(_S0) = *(v48 + 2 * llroundf(fminf(fmaxf(v168, 0.0), 8191.0)));
        __asm { FCVT            S24, H0 }

        _H0 = *(v48 + 2 * llroundf(fminf(fmaxf(v169, 0.0), 8191.0)));
        _H1 = *(v48 + 2 * llroundf(fminf(fmaxf(v170, 0.0), 8191.0)));
        _H19 = *(v48 + 2 * llroundf(fminf(fmaxf(v171, 0.0), 8191.0)));
        _S7 = v150;
        _S6 = v151;
        v178 = (v150 * _S20) + (v151 * _S18);
        _S16 = v147;
        v179 = (v178 + (v147 * _S24)) + v44;
        v180 = v45;
        if (v179 <= v45)
        {
          v180 = v179;
          if (v179 < v44)
          {
            v180 = v44;
          }
        }

        __asm
        {
          FCVT            S2, H0
          FCVT            S1, H1
          FCVT            S0, H19
        }

        v184 = (((v150 * _S1) + (_S6 * _S2)) + (v147 * _S0)) + v44;
        v98->i16[0] = llroundf(v180) << v74;
        v185 = v45;
        v35 = v146;
        _S10 = v143;
        if (v184 <= v45)
        {
          v185 = (((_S7 * _S1) + (_S6 * _S2)) + (_S16 * _S0)) + v44;
          if (v184 < v44)
          {
            v185 = v44;
          }
        }

        v98->i16[1] = llroundf(v185) << v74;
        v186 = _S18 + _S2;
        v187 = _S20 + _S1;
        v188 = _S24 + _S0;
        v189 = ((v238 + (v186 * *&v92)) + (v187 * v235)) + (v188 * *&v93);
        v190 = v46;
        if (v189 <= v46)
        {
          v190 = ((v238 + (v186 * *&v92)) + (v187 * v235)) + (v188 * *&v93);
          if (v189 < v246)
          {
            v190 = v246;
          }
        }

        v191 = ((v238 + (v186 * *(&v92 + 1))) + (v187 * v208)) + (v188 * *(&v93 + 1));
        v99->i16[0] = llroundf(v190) << v74;
        v192 = v46;
        if (v191 <= v46)
        {
          v192 = v191;
          if (v191 < v246)
          {
            v192 = v246;
          }
        }

        v99->i16[1] = llroundf(v192) << v74;
        v99 = (v99 + 4);
        v124 += 2;
        v96 = (v96 + 4);
        v98 = (v98 + 4);
      }

      v72 += v21;
      v71 += v70;
      v67 += v22;
      v66 += v23;
      ++v18;
    }

    while (v18 != v12);
  }

  if (v200 && v199)
  {
    if (v12 >= 1)
    {
      v193 = 0;
      v194 = (v200 + v196 * v197 + 2 * v198);
      v195 = 2 * v9;
      do
      {
        result = memcpy(v17, v194, v195);
        v194 += v196;
        v17 += v201;
        ++v193;
      }

      while (v12 > v193);
    }
  }

  else if (v199 && v12 >= 1)
  {
    do
    {
      if (v9 >= 1)
      {
        result = memset(v17, 255, 2 * v9);
      }

      v17 += v201;
      --v12;
    }

    while (v12);
  }

  *(v203 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v69;
    if (v22 || (v33 = 2 * (v30 + v29) + 2, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v29;
      ++v73;
      ++v74;
      ++v28;
    }
  }

  else
  {
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = *v32 * v43 + 2 * (v41 + v30);
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 4 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && 2 * v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf444_TRC_Mat_TRC_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_xf444_TRC_Mat_TRC_xf422_GCD(uint64_t *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v10 = *result;
  v144 = *(result + 28) * a2 / v10 + *(result + 44);
  v145 = *(result + 36);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v14 = v12 * a2 / v10;
  v15 = v14 + result[15];
  v16 = (v12 + v12 * a2) / v10 - v14;
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v21 = v18[2];
  v146 = v17[2];
  v22 = v20[2];
  v23 = v19[2];
  v24 = (v23 + v22 * v15 + 2 * v11);
  if (v16 >= 1)
  {
    v25 = 0;
    v26 = result[19];
    v27 = v13 & 0xFFFFFFFE;
    v28 = *v18;
    v29 = v18[1];
    v30 = *v20;
    v31 = v20[1];
    result = &qword_18FECD000;
    LOWORD(a4) = *(v26 + 140);
    LOWORD(a5) = *(v26 + 142);
    LOWORD(v5) = *(v26 + 144);
    LOWORD(v6) = *(v26 + 146);
    LOWORD(v7) = *(v26 + 148);
    v32 = 8191.0 / *(v26 + 128);
    v33 = LODWORD(a4);
    v34 = LODWORD(a5);
    v35 = v32 * *v26;
    v156 = v32 * *(v26 + 8);
    v155 = v32 * *(v26 + 16);
    v36 = v32 * *(v26 + 20);
    *&v37 = v32 * *(v26 + 28);
    v153 = *&v37;
    v154 = v36;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    LOWORD(v37) = *(v26 + 150);
    *&v41 = v37;
    v157 = *&v41;
    LOWORD(v41) = *(v26 + 152);
    v42 = v41;
    v43 = *(v26 + 36);
    v44 = *(v26 + 40);
    v45 = *(v26 + 44);
    v151 = *(v26 + 52) * 0.5;
    v152 = *(v26 + 48) * 0.5;
    v149 = *(v26 + 60) * 0.5;
    v150 = *(v26 + 56) * 0.5;
    v46 = *(v26 + 72);
    v147 = *(v26 + 68) * 0.5;
    v148 = *(v26 + 64) * 0.5;
    v48 = *(v26 + 76);
    v47 = *(v26 + 80);
    v49 = *(v26 + 84);
    v50 = *(v26 + 88);
    v51 = *(v26 + 92);
    v52 = *(v26 + 96);
    v53 = *(v26 + 100);
    v54 = *(v26 + 104);
    v55 = v26 + 164;
    v56 = v26 + 16548;
    v57 = *(v26 + 132);
    _CF = v57 >= 0x11;
    v59 = 16 - v57;
    if (_CF)
    {
      v59 = 0;
    }

    v60 = *(v26 + 124);
    v61 = 16 - v60;
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    v63 = *v19;
    v62 = v19[1];
    v64 = v62 + v31 * v15 + 2 * v11;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v30 * v15 + 2 * v11;
    v68 = v17;
    v66 = *v17;
    v67 = v68[1];
    if (v67)
    {
      v69 = v67 + v29 * v144 + 2 * v145;
    }

    else
    {
      v69 = 0;
    }

    v70 = v66 + v28 * v144 + 2 * v145;
    v71 = v59;
    do
    {
      if (v27 >= 1)
      {
        v72 = 0;
        v73 = v70;
        v74 = v69;
        v75 = v65;
        do
        {
          if (v74)
          {
            v76 = (*v74 >> v61) - v34;
            v77 = (v74[1] >> v61) - v34;
            v74 += 2;
            v78 = v156 * v77;
            v79 = (v154 * v77) + (v76 * v155);
            v80 = v153 * v76;
          }

          else
          {
            v80 = 0.0;
            v79 = 0.0;
            v78 = 0.0;
          }

          v81 = v35 * ((*v73 >> v61) - v33);
          v82 = v78 + v81;
          v83 = (v78 + v81) <= 8191.0;
          v84 = 8191.0;
          if (v83)
          {
            v84 = v82;
            if (v82 < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v79 + v81;
          v86 = 8191.0;
          if (v85 <= 8191.0)
          {
            v86 = v85;
            if (v85 < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = 8191.0;
          if ((v80 + v81) <= 8191.0)
          {
            v87 = v80 + v81;
            if ((v80 + v81) < 0.0)
            {
              v87 = 0.0;
            }
          }

          if (v74)
          {
            v88 = (*v74 >> v61) - v34;
            v89 = (v74[1] >> v61) - v34;
            v74 += 2;
            v90 = v156 * v89;
            v91 = (v154 * v89) + (v88 * v155);
            v92 = v153 * v88;
          }

          else
          {
            v92 = 0.0;
            v91 = 0.0;
            v90 = 0.0;
          }

          v93 = v35 * ((v73[1] >> v61) - v33);
          v94 = 8191.0;
          if ((v90 + v93) <= 8191.0)
          {
            v94 = v90 + v93;
            if ((v90 + v93) < 0.0)
            {
              v94 = 0.0;
            }
          }

          v95 = v91 + v93;
          v83 = (v91 + v93) <= 8191.0;
          v96 = 8191.0;
          if (v83)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          v97 = v92 + v93;
          v98 = 8191.0;
          if (v97 <= 8191.0)
          {
            v98 = v97;
            if (v97 < 0.0)
            {
              v98 = 0.0;
            }
          }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v55 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H24 = *(v55 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H6 = *(v55 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H4 = *(v55 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S4, H4
          }

          _H26 = *(v55 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          v114 = ((v48 * _S5) + (_S0 * v46)) + (_S24 * v47);
          v115 = ((v50 * _S5) + (_S0 * v49)) + (_S24 * v51);
          v116 = ((v53 * _S5) + (_S0 * v52)) + (_S24 * v54);
          v117 = ((v48 * _S4) + (_S6 * v46)) + (_S26 * v47);
          v118 = ((v50 * _S4) + (_S6 * v49)) + (_S26 * v51);
          v119 = ((v53 * _S4) + (_S6 * v52)) + (_S26 * v54);
          LOWORD(_S0) = *(v56 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S4) = *(v56 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          __asm { FCVT            S24, H4 }

          LOWORD(_S4) = *(v56 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          __asm { FCVT            S26, H4 }

          _H4 = *(v56 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          _H5 = *(v56 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          _H28 = *(v56 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          v126 = (((v44 * _S24) + (v43 * _S0)) + (v45 * _S26)) + v38;
          v127 = v40;
          if (v126 <= v40)
          {
            v127 = (((v44 * _S24) + (v43 * _S0)) + (v45 * _S26)) + v38;
            if (v126 < v38)
            {
              v127 = v38;
            }
          }

          __asm
          {
            FCVT            S25, H4
            FCVT            S5, H5
            FCVT            S4, H28
          }

          v131 = (((v44 * _S5) + (v43 * _S25)) + (v45 * _S4)) + v38;
          *v75 = llroundf(v127) << v71;
          v132 = v40;
          if (v131 <= v40)
          {
            v132 = (((v44 * _S5) + (v43 * _S25)) + (v45 * _S4)) + v38;
            if (v131 < v38)
            {
              v132 = v38;
            }
          }

          v75[1] = llroundf(v132) << v71;
          v133 = _S0 + _S25;
          v134 = _S24 + _S5;
          v135 = _S26 + _S4;
          v136 = ((v39 + (v133 * v152)) + (v134 * v151)) + (v135 * v150);
          v137 = v42;
          if (v136 <= v42)
          {
            v137 = ((v39 + (v133 * v152)) + (v134 * v151)) + (v135 * v150);
            if (v136 < v157)
            {
              v137 = v157;
            }
          }

          v138 = (v64 + 2 * v72);
          v139 = ((v39 + (v133 * v149)) + (v134 * v148)) + (v135 * v147);
          *v138 = llroundf(v137) << v71;
          v140 = v42;
          if (v139 <= v42)
          {
            v140 = v139;
            if (v139 < v157)
            {
              v140 = v157;
            }
          }

          v138[1] = llroundf(v140) << v71;
          v72 += 2;
          v73 += 2;
          v75 += 2;
        }

        while (v72 < v27);
      }

      v70 += v28;
      v69 += v29;
      v65 += v30;
      v64 += v31;
      ++v25;
    }

    while (v25 != v16);
  }

  if (v146 && v23)
  {
    if (v16 >= 1)
    {
      v141 = 0;
      v142 = (v146 + v21 * v144 + 2 * v145);
      v143 = 2 * v13;
      do
      {
        result = memcpy(v24, v142, v143);
        v142 += v21;
        v24 += v22;
        ++v141;
      }

      while (v16 > v141);
    }
  }

  else if (v23 && v16 >= 1)
  {
    do
    {
      if (v13 >= 1)
      {
        result = memset(v24, 255, 2 * v13);
      }

      v24 += v22;
      --v16;
    }

    while (v16);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v69;
    if (v22 || (v33 = 2 * (v30 + v29) + 2, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v29;
      ++v73;
      ++v74;
      ++v28;
    }
  }

  else
  {
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = *v32 * v43 + 2 * (v41 + v30);
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 4 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && 2 * v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf444_rgb_xf422_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_xf444_rgb_xf422_neon_fp16_GCD(void *result, uint64_t a2)
{
  v6 = result;
  v7 = *result;
  v132 = *(result + 28) * a2 / v7 + *(result + 44);
  v133 = *(result + 36);
  v8 = result[14];
  v10 = result[12];
  v9 = result[13];
  v11 = v9 * a2 / v7;
  v12 = v11 + result[15];
  v13 = (v9 + v9 * a2) / v7 - v11;
  v14 = result[7];
  v15 = result[8];
  v16 = result[16];
  v17 = result[17];
  v18 = v15[2];
  v134 = v14[2];
  v19 = v17[2];
  v20 = v16[2];
  v21 = (v20 + v19 * v12 + 2 * v8);
  if (v13 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v24 = *v15;
    v25 = v15[1];
    v26 = *v17;
    v27 = v17[1];
    v28 = *(v23 + 140);
    v29 = *(v23 + 142);
    v30 = *(v23 + 144);
    v31 = *(v23 + 146);
    v32 = *(v23 + 148);
    v33 = *(v23 + 150);
    v34 = *(v23 + 152);
    _S0 = *(v23 + 36);
    _S1 = *(v23 + 40);
    _S2 = *(v23 + 44);
    v3.i32[0] = *(v23 + 48);
    v39.i32[0] = *(v23 + 52);
    v38.i32[0] = *(v23 + 56);
    v40 = v28;
    *v2.i16 = v28;
    result = (v10 & 0xFFFFFFFE);
    v41 = *(v23 + 136) / *(v23 + 128);
    v42 = v29;
    _S5 = v41 * *v23;
    _S27 = v41 * *(v23 + 8);
    _Q28.f32[0] = v41 * *(v23 + 16);
    _S16 = v41 * *(v23 + 20);
    _S17 = v41 * *(v23 + 28);
    v47 = v30;
    v48 = v31;
    v49 = v32;
    v50 = v33;
    v51 = v34;
    _Q7 = vdupq_lane_s16(*v2.f32, 0);
    v149 = _Q7;
    *_Q7.i16 = -v29;
    v139 = vdupq_lane_s16(*_Q7.i8, 0);
    __asm
    {
      FCVT            H8, S5
      FCVT            H7, S17
    }

    v138 = *_Q7.i16;
    v150 = _Q28.f32[0];
    __asm { FCVT            H7, S28 }

    v137 = *_Q7.i16;
    v3.i32[1] = *(v23 + 60);
    *v3.f32 = vmul_f32(*v3.f32, 0x3F0000003F000000);
    v39.i32[1] = *(v23 + 64);
    *_Q28.f32 = vmul_f32(v39, 0x3F0000003F000000);
    v147 = vdupq_lane_s32(vcvt_f16_f32(_Q28), 0);
    v148 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v38.i32[1] = *(v23 + 68);
    __asm { FCVT            H9, S16 }

    v136 = _H9;
    *v2.f32 = vmul_f32(v38, 0x3F0000003F000000);
    v59 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    v146 = v59;
    *v59.i16 = v30;
    v60 = vdupq_lane_s16(*v59.i8, 0);
    *v59.i16 = v31;
    v61 = vdupq_lane_s16(*v59.i8, 0);
    v145 = v61;
    *v61.i16 = v32;
    v62 = vdupq_lane_s16(*v61.i8, 0);
    v144 = v62;
    *v62.i16 = v33;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    v143 = v63;
    *v63.i16 = v34;
    v142 = vdupq_lane_s16(*v63.i8, 0);
    v64 = *(v23 + 132);
    if (v64 >= 0x11)
    {
      v65 = 0;
    }

    else
    {
      v65 = 16 - v64;
    }

    v66 = *(v23 + 124);
    v67 = 16 - v66;
    if (v66 >= 0x11)
    {
      v67 = 0;
    }

    v69 = *v16;
    v68 = v16[1];
    v70 = v68 + v27 * v12 + 2 * v8;
    if (!v68)
    {
      v70 = 0;
    }

    v71 = v69 + v26 * v12 + 2 * v8;
    v72 = *v14;
    v73 = v14[1];
    v74 = v73 + v25 * v132 + 2 * v133;
    if (!v73)
    {
      v74 = 0;
    }

    v75 = v72 + v24 * v132 + 2 * v133;
    __asm { FCVT            H7, S27 }

    v135 = _H7;
    __asm { FCVT            H7, S0 }

    v141 = _H7;
    __asm { FCVT            H7, S1 }

    v140 = _H7;
    v79 = vdupq_n_s16(-v67);
    __asm { FCVT            H13, S2 }

    v81 = vdupq_n_s16(v65);
    v82 = _Q28.f32[0];
    _Q28.i32[0] = v2.i32[1];
    v83 = v2.f32[0];
    do
    {
      if (v10 < 8)
      {
        v100 = 0;
        v88 = v70;
        v87 = v71;
        v86 = v74;
        v85 = v75;
      }

      else
      {
        v84 = 0;
        v85 = v75;
        v86 = v74;
        v87 = v71;
        v88 = v70;
        do
        {
          if (v86)
          {
            v151 = vld2q_s16(v86);
            v86 += 16;
            v89 = vaddq_f16(v139, vcvtq_f16_u16(vshlq_u16(v151.val[0], v79)));
            v90 = vaddq_f16(v139, vcvtq_f16_u16(vshlq_u16(v151.val[1], v79)));
            v91 = vmulq_n_f16(v90, v135);
            v92 = vmlaq_n_f16(vmulq_n_f16(v89, v137), v90, v136);
            v93 = vmulq_n_f16(v89, v138);
          }

          else
          {
            v93 = 0uLL;
            v92 = 0uLL;
            v91 = 0uLL;
          }

          v94 = *v85++;
          v95 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v94, v79)), v149);
          v96 = vmlaq_n_f16(v91, v95, _H8);
          v97 = vmlaq_n_f16(v92, v95, _H8);
          v98 = vmlaq_n_f16(v93, v95, _H8);
          *v87++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v60, v96, v141), v97, v140), v98, _H13), v60), v144)), v81);
          v99 = vpaddq_f16(v96, v97);
          *v88++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v145, v148, vzip1q_s16(v99, v99)), v147, vzip2q_s16(v99, v99)), v146, vaddq_f16(vtrn1q_s16(v98, v98), vtrn2q_s16(v98, v98))), v143), v142)), v81);
          v84 += 8;
        }

        while (v84 < v10 - 7);
        v100 = v10 & 0x7FFFFFF8;
      }

      while (v100 < result)
      {
        v101 = 0.0;
        if (!v86)
        {
          v106 = 0.0;
          v105 = 0.0;
          v104 = 0.0;
LABEL_24:
          v86 = 0;
          v110 = 0.0;
          v109 = 0.0;
          goto LABEL_25;
        }

        v102 = (*v86 >> v67) - v42;
        v103 = (*(v86 + 1) >> v67) - v42;
        v104 = _S27 * v103;
        v105 = (_S16 * v103) + (v102 * v150);
        v106 = _S17 * v102;
        if (v86 == -4)
        {
          goto LABEL_24;
        }

        v107 = (*(v86 + 2) >> v67) - v42;
        v108 = (*(v86 + 3) >> v67) - v42;
        v86 += 4;
        v109 = _S27 * v108;
        v110 = (_S16 * v108) + (v107 * v150);
        v101 = _S17 * v107;
LABEL_25:
        v111 = _S5 * ((v85->u16[0] >> v67) - v40);
        v112 = v104 + v111;
        v113 = v105 + v111;
        v114 = v106 + v111;
        v115 = (((_S1 * v113) + (_S0 * v112)) + (_S2 * v114)) + v47;
        v116 = v49;
        if (v115 <= v49)
        {
          v116 = (((_S1 * v113) + (_S0 * v112)) + (_S2 * v114)) + v47;
          if (v115 < v47)
          {
            v116 = v47;
          }
        }

        v117 = _S5 * ((v85->u16[1] >> v67) - v40);
        v118 = v109 + v117;
        v119 = v110 + v117;
        v120 = v101 + v117;
        v121 = (((_S1 * v119) + (_S0 * v118)) + (_S2 * v120)) + v47;
        v87->i16[0] = llroundf(v116) << v65;
        v122 = v49;
        if (v121 <= v49)
        {
          v122 = (((_S1 * v119) + (_S0 * v118)) + (_S2 * v120)) + v47;
          if (v121 < v47)
          {
            v122 = v47;
          }
        }

        v87->i16[1] = llroundf(v122) << v65;
        v123 = v113 + v119;
        v124 = v114 + v120;
        v125 = ((v48 + ((v112 + v118) * v3.f32[0])) + (v123 * v82)) + (v124 * v83);
        v126 = v51;
        if (v125 <= v51)
        {
          v126 = ((v48 + ((v112 + v118) * v3.f32[0])) + (v123 * v82)) + (v124 * v83);
          if (v125 < v50)
          {
            v126 = v33;
          }
        }

        v127 = ((v48 + ((v112 + v118) * v3.f32[1])) + (v123 * _Q28.f32[1])) + (v124 * _Q28.f32[0]);
        v88->i16[0] = llroundf(v126) << v65;
        v128 = v51;
        if (v127 <= v51)
        {
          v128 = ((v48 + ((v112 + v118) * v3.f32[1])) + (v123 * _Q28.f32[1])) + (v124 * _Q28.f32[0]);
          if (v127 < v50)
          {
            v128 = v33;
          }
        }

        v88->i16[1] = llroundf(v128) << v65;
        v88 = (v88 + 4);
        v100 += 2;
        v85 = (v85 + 4);
        v87 = (v87 + 4);
      }

      v75 += v24;
      v74 += v25;
      v71 += v26;
      v70 += v27;
      ++v22;
    }

    while (v22 != v13);
  }

  if (v134 && v20)
  {
    if (v13 >= 1)
    {
      v129 = 0;
      v130 = (v134 + v18 * v132 + 2 * v133);
      v131 = 2 * v10;
      do
      {
        result = memcpy(v21, v130, v131);
        v130 += v18;
        v21 += v19;
        ++v129;
      }

      while (v13 > v129);
    }
  }

  else if (v20 && v13 >= 1)
  {
    do
    {
      if (v10 >= 1)
      {
        result = memset(v21, 255, 2 * v10);
      }

      v21 += v19;
      --v13;
    }

    while (v13);
  }

  *(v6 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v67 = a7;
  v68 = a3;
  v76 = a5;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v66 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v12;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v69;
    if (v22 || (v33 = 2 * (v30 + v29) + 2, v33 > *v69) || (v34 = v69[1], v34 < 2 * v33) && v34 || (v35 = v69[2], v33 > v35) && v35 || (v36 = v28 + 1 + v31, v37 = 2 * v36, 2 * v36 > *a8) || ((2 * (v36 + (v36 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a8[1] || (v38 = a8[2], v37 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v29;
      ++v73;
      ++v74;
      ++v28;
    }
  }

  else
  {
    v32 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v66 <= v72)
  {
    v39 = v66;
  }

  else
  {
    v39 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v40 = v18;
  }

  else
  {
    v40 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v41 = v28;
  }

  else
  {
    v41 = v29;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v43 = v71 + v42 - 1;
  v44 = v41 + v30;
  v45 = *v32 * v43 + 2 * (v41 + v30);
  v46 = *v76;
  v47 = v67;
  v64 = v30;
  if (v45 > v46)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 8) && v32[1] * v43 + 4 * v44 > v76[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v68 + 16) && 2 * v44 + v32[2] * v43 > v76[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  v52 = v75 + v42 - 1;
  v53 = v41 + v31;
  if ((*a8 * v52 + 2 * (v41 + v31)) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * ((v53 + 1 + ((v53 + 1) >> 63)) >> 1) > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && (2 * v53 + a8[2] * v52) > a9[2])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v69;
    v27 = v51;
    a8 = v50;
    v31 = v49;
    v11 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v41;
  *(v23 + 28) = v42;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v41;
  v23[13] = v42;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v32;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v47;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf444_rgb_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v11;
  while (1)
  {
    v61 = *v59++;
    v24 = v61;
    if (v61)
    {
      break;
    }

    if (!--v60)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_xf444_rgb_xf422_GCD(void *a1, uint64_t a2, double a3, double a4, float a5)
{
  v11 = *(a1 + 36);
  v12 = *a1;
  v13 = *(a1 + 28) * a2 / v12 + *(a1 + 44);
  v14 = a1[14];
  v16 = a1[12];
  v15 = a1[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + a1[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = a1[7];
  v21 = a1[8];
  result = a1[16];
  v23 = a1[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[2];
  v27 = result[2];
  v28 = (v27 + v26 * v18 + 2 * v14);
  if (v19 >= 1)
  {
    v29 = 0;
    v30 = a1[19];
    v31 = v16 & 0xFFFFFFFE;
    v32 = *v21;
    v33 = v21[1];
    v34 = *v23;
    v35 = v23[1];
    *&v36 = *(v30 + 136);
    LOWORD(a5) = *(v30 + 140);
    v37 = *&v36 / *(v30 + 128);
    v38 = LODWORD(a5);
    LOWORD(v36) = *(v30 + 142);
    v39 = v36;
    v40 = v37 * *v30;
    v41 = v37 * *(v30 + 8);
    v42 = v37 * *(v30 + 16);
    v43 = v37 * *(v30 + 20);
    v44 = *(v30 + 28);
    v45 = v37 * v44;
    LOWORD(v44) = *(v30 + 144);
    v46 = LODWORD(v44);
    LOWORD(v5) = *(v30 + 146);
    v47 = v5;
    LOWORD(v6) = *(v30 + 148);
    v48 = v6;
    LOWORD(v7) = *(v30 + 150);
    v49 = v7;
    LOWORD(v8) = *(v30 + 152);
    v50 = v8;
    v51 = *(v30 + 36);
    v52 = *(v30 + 40);
    v53 = *(v30 + 44);
    v54 = *(v30 + 48) * 0.5;
    v55 = *(v30 + 52) * 0.5;
    v56 = *(v30 + 56) * 0.5;
    v57 = *(v30 + 60) * 0.5;
    v58 = *(v30 + 64) * 0.5;
    v59 = *(v30 + 68) * 0.5;
    v60 = *(v30 + 132);
    v61 = v60 >= 0x11;
    v62 = 16 - v60;
    if (v61)
    {
      v62 = 0;
    }

    v63 = *(v30 + 124);
    if (v63 >= 0x11)
    {
      v64 = 0;
    }

    else
    {
      v64 = 16 - v63;
    }

    v66 = *result;
    v65 = result[1];
    result = (v65 + v35 * v18 + 2 * v14);
    if (!v65)
    {
      result = 0;
    }

    v67 = v66 + v34 * v18 + 2 * v14;
    v69 = *v20;
    v68 = v20[1];
    v70 = v68 + v33 * v13 + 2 * v11;
    if (!v68)
    {
      v70 = 0;
    }

    v71 = v69 + v32 * v13 + 2 * v11;
    while (v31 < 1)
    {
LABEL_33:
      v71 += v32;
      v70 += v33;
      v67 += v34;
      result = (result + v35);
      if (++v29 == v19)
      {
        goto LABEL_34;
      }
    }

    v72 = 0;
    v73 = v71;
    v74 = v70;
    v75 = v67;
    while (1)
    {
      v76 = 0.0;
      if (v74)
      {
        v77 = (*v74 >> v64) - v39;
        v78 = (v74[1] >> v64) - v39;
        v74 += 2;
        v79 = v41 * v78;
        v80 = (v43 * v78) + (v77 * v42);
        v81 = v45 * v77;
        if (v74)
        {
          v82 = (*v74 >> v64) - v39;
          v83 = (v74[1] >> v64) - v39;
          v74 += 2;
          v84 = v41 * v83;
          v85 = (v43 * v83) + (v82 * v42);
          v76 = v45 * v82;
          goto LABEL_20;
        }
      }

      else
      {
        v81 = 0.0;
        v80 = 0.0;
        v79 = 0.0;
      }

      v85 = 0.0;
      v84 = 0.0;
LABEL_20:
      v86 = v40 * ((*v73 >> v64) - v38);
      v87 = v79 + v86;
      v88 = v80 + v86;
      v89 = v81 + v86;
      v90 = (((v52 * v88) + (v51 * v87)) + (v53 * v89)) + v46;
      v91 = v48;
      if (v90 <= v48)
      {
        v91 = (((v52 * v88) + (v51 * v87)) + (v53 * v89)) + v46;
        if (v90 < v46)
        {
          v91 = v46;
        }
      }

      v92 = v40 * ((v73[1] >> v64) - v38);
      v93 = v84 + v92;
      v94 = v85 + v92;
      v95 = v76 + v92;
      v96 = (((v52 * v94) + (v51 * v93)) + (v53 * v95)) + v46;
      *v75 = llroundf(v91) << v62;
      v97 = v48;
      if (v96 <= v48)
      {
        v97 = (((v52 * v94) + (v51 * v93)) + (v53 * v95)) + v46;
        if (v96 < v46)
        {
          v97 = v46;
        }
      }

      v75[1] = llroundf(v97) << v62;
      v98 = v87 + v93;
      v99 = v88 + v94;
      v100 = v89 + v95;
      v101 = ((v47 + (v98 * v54)) + (v99 * v55)) + (v100 * v56);
      v102 = v50;
      if (v101 <= v50)
      {
        v102 = ((v47 + (v98 * v54)) + (v99 * v55)) + (v100 * v56);
        if (v101 < v49)
        {
          v102 = v49;
        }
      }

      v103 = result + v72;
      v104 = ((v47 + (v98 * v57)) + (v99 * v58)) + (v100 * v59);
      *v103 = llroundf(v102) << v62;
      v105 = v50;
      if (v104 <= v50)
      {
        v105 = v104;
        if (v104 < v49)
        {
          v105 = v49;
        }
      }

      v103[1] = llroundf(v105) << v62;
      v72 += 2;
      v73 += 2;
      v75 += 2;
      if (v72 >= v31)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  if (v25 && v27)
  {
    if (v19 >= 1)
    {
      v106 = 0;
      v107 = (v25 + v24 * v13 + 2 * v11);
      v108 = 2 * v16;
      do
      {
        result = memcpy(v28, v107, v108);
        v107 += v24;
        v28 += v26;
        ++v106;
      }

      while (v19 > v106);
    }
  }

  else if (v27 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v28, 255, 2 * v16);
      }

      v28 += v26;
      --v19;
    }

    while (v19);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v40 = a2[2];
  v41 = v16;
  v18 = *a6;
  v36 = a6[1];
  v37 = v17;
  v38 = a6[2];
  v39 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v36.i8[-v21];
    bzero(&v36 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v37), v41), vsubq_s64(v41, v40), v37);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v38, v36), v39), vsubq_s64(v39, v38), v36);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v40, v23);
  v27 = v26.i64[1] + v25.i64[1];
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 2 * v26.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && (a4[1] * v27 + 4 * v26.i64[0]) > a5[1])
    {
      v37 = v25;
    }

    else
    {
      if (!*(a3 + 16) || (2 * v26.i64[0] + a4[2] * v27) <= a5[2])
      {
        goto LABEL_14;
      }

      v37 = v25;
    }
  }

  else
  {
    v37 = v25;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v25 = v37;
  if (v28)
  {
    v20 = v28;
    goto LABEL_19;
  }

LABEL_14:
  *v19 = v15;
  v29 = v40;
  *(v19 + 4) = v41;
  *(v19 + 20) = v25;
  *(v19 + 36) = v29;
  v30 = v38;
  *(v19 + 5) = v39;
  *(v19 + 6) = v25;
  *(v19 + 7) = v30;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf444_TRC_Tone_Mat_TRC_v216_GCD);
  if (!v15)
  {
    return 0;
  }

  v32 = (v19 + 160);
  v33 = v15;
  while (1)
  {
    v34 = *v32++;
    v20 = v34;
    if (v34)
    {
      break;
    }

    if (!--v33)
    {
      v20 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v20;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_v216_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v157 = v20[2];
  v25 = v23[1];
  v26 = v22[1];
  v27 = (v26 + v25 * v18 + 2 * v14);
  if (v26)
  {
    v28 = v26 + v25 * v18 + 2 * v14;
  }

  else
  {
    v28 = 0;
  }

  if (v19 >= 1)
  {
    v29 = 0;
    v30 = result[19];
    v31 = v16 & 0xFFFFFFFE;
    v32 = *v21;
    v33 = v21[1];
    v34 = *v23;
    LOWORD(a4) = *(v30 + 140);
    LOWORD(a5) = *(v30 + 142);
    LOWORD(v5) = *(v30 + 144);
    LOWORD(v6) = *(v30 + 146);
    LOWORD(v7) = *(v30 + 148);
    LOWORD(v8) = *(v30 + 150);
    v35 = 8191.0 / *(v30 + 128);
    v36 = LODWORD(a4);
    v173 = LODWORD(a5);
    v177 = v35 * *(v30 + 8);
    v178 = v35 * *v30;
    v175 = v35 * *(v30 + 20);
    v176 = v35 * *(v30 + 16);
    *&v37 = v35 * *(v30 + 28);
    v174 = *&v37;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    v41 = v8;
    LOWORD(v37) = *(v30 + 152);
    v42 = v37;
    v43 = *(v30 + 36);
    v44 = *(v30 + 40);
    v45 = *(v30 + 44);
    v172 = *(v30 + 48) * 0.5;
    v170 = *(v30 + 56) * 0.5;
    v171 = *(v30 + 52) * 0.5;
    v168 = *(v30 + 64) * 0.5;
    v169 = *(v30 + 60) * 0.5;
    v166 = *(v30 + 68) * 0.5;
    v167 = *(v30 + 72);
    v164 = *(v30 + 80);
    v165 = *(v30 + 76);
    v162 = *(v30 + 88);
    v163 = *(v30 + 84);
    v160 = *(v30 + 96);
    v161 = *(v30 + 92);
    v158 = *(v30 + 104);
    v159 = *(v30 + 100);
    result = (v30 + 164);
    v46 = *(v30 + 124);
    v47 = 16 - v46;
    _CF = v46 >= 0x11;
    v49 = v30 + 16548;
    v50 = *v22 + v34 * v18;
    v51 = v30 + 32932;
    if (_CF)
    {
      v47 = 0;
    }

    v52 = (v50 + 2 * v14);
    v54 = *v20;
    v53 = v20[1];
    v55 = v53 + v33 * v13 + 2 * v11;
    if (!v53)
    {
      v55 = 0;
    }

    v56 = v54 + v32 * v13 + 2 * v11;
    v58 = *(v30 + 108);
    v57 = *(v30 + 112);
    v59 = *(v30 + 116);
    v60 = *(v30 + 120);
    do
    {
      if (v31 >= 1)
      {
        v61 = 0;
        v62 = v56;
        v63 = v55;
        v64 = v28;
        v65 = v52;
        do
        {
          if (v63)
          {
            v66 = (*v63 >> v47) - v173;
            v67 = (v63[1] >> v47) - v173;
            v63 += 2;
            v68 = v177 * v67;
            v69 = (v175 * v67) + (v66 * v176);
            v70 = v174 * v66;
          }

          else
          {
            v70 = 0.0;
            v69 = 0.0;
            v68 = 0.0;
          }

          v71 = v178 * ((*v62 >> v47) - v36);
          v72 = v68 + v71;
          v73 = (v68 + v71) <= 8191.0;
          v74 = 8191.0;
          if (v73)
          {
            v74 = v72;
            if (v72 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = v69 + v71;
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          v77 = v70 + v71;
          v73 = (v70 + v71) <= 8191.0;
          v78 = 8191.0;
          if (v73)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          if (v63)
          {
            v79 = (*v63 >> v47) - v173;
            v80 = (v63[1] >> v47) - v173;
            v63 += 2;
            v81 = v177 * v80;
            v82 = (v175 * v80) + (v79 * v176);
            v83 = v174 * v79;
          }

          else
          {
            v83 = 0.0;
            v82 = 0.0;
            v81 = 0.0;
          }

          v84 = v36;
          v85 = v178 * ((v62[1] >> v47) - v36);
          v86 = v81 + v85;
          v73 = (v81 + v85) <= 8191.0;
          v87 = 8191.0;
          if (v73)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v82 + v85;
          v73 = (v82 + v85) <= 8191.0;
          v89 = 8191.0;
          if (v73)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v83 + v85;
          v91 = 8191.0;
          if (v90 <= 8191.0)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H7 = *(result + llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          v98 = llroundf(fminf(fmaxf(v78, 0.0), 8191.0));
          __asm { FCVT            S4, H7 }

          _H7 = *(result + v98);
          __asm { FCVT            S7, H7 }

          _H6 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          _H1 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H30 = *(result + llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          v105 = (((v57 * _S4) + (v58 * _S0)) + (v59 * _S7)) + (v60 * fmaxf(_S0, fmaxf(_S4, _S7)));
          v106 = 8191.0;
          if (v105 <= 8191.0)
          {
            v106 = v105;
            if (v105 < 0.0)
            {
              v106 = 0.0;
            }
          }

          __asm
          {
            FCVT            S3, H6
            FCVT            S6, H1
            FCVT            S30, H30
          }

          _H1 = *(v49 + 2 * llroundf(v106));
          __asm { FCVT            S1, H1 }

          v112 = _S0 * _S1;
          v113 = _S4 * _S1;
          v114 = _S7 * _S1;
          v115 = (((v57 * _S6) + (v58 * _S3)) + (v59 * _S30)) + (v60 * fmaxf(_S3, fmaxf(_S6, _S30)));
          v116 = 8191.0;
          if (v115 <= 8191.0)
          {
            v116 = v115;
            if (v115 < 0.0)
            {
              v116 = 0.0;
            }
          }

          _H7 = *(v49 + 2 * llroundf(v116));
          __asm { FCVT            S7, H7 }

          v119 = _S3 * _S7;
          _S6 = _S6 * _S7;
          _S7 = _S30 * _S7;
          v122 = ((v165 * v113) + (v112 * v167)) + (v114 * v164);
          v123 = ((v162 * v113) + (v112 * v163)) + (v114 * v161);
          _S0 = ((v159 * v113) + (v112 * v160)) + (v114 * v158);
          v125 = (v165 * _S6) + (v119 * v167);
          v126 = (v162 * _S6) + (v119 * v163);
          v127 = (v159 * _S6) + (v119 * v160);
          _S1 = v125 + (_S7 * v164);
          v129 = v126 + (_S7 * v161);
          LOWORD(_S6) = *(v51 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          v130 = v127 + (_S7 * v158);
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v51 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S17, H0 }

          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v51 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S4, H1 }

          v136 = llroundf(fminf(fmaxf(v130, 0.0), 8191.0));
          v137 = (v44 * _S7) + (v43 * _S6);
          _S1 = _S6 + _S0;
          v139 = _S7 + _S4;
          v140 = (v39 + ((_S6 + _S0) * v172)) + (v139 * v171);
          v141 = (v39 + (_S1 * v169)) + (v139 * v168);
          LOWORD(_S1) = *(v51 + 2 * v136);
          __asm { FCVT            S1, H1 }

          v143 = v137 + (v45 * _S17);
          v144 = v140 + ((_S17 + _S1) * v170);
          v145 = v141 + ((_S17 + _S1) * v166);
          if (v144 < v38)
          {
            v146 = v38;
          }

          else
          {
            v146 = v144;
          }

          v73 = v144 <= v40;
          v147 = v143 + v38;
          if (!v73)
          {
            v146 = v40;
          }

          v148 = llroundf(v146);
          if (v147 < v41)
          {
            v149 = v41;
          }

          else
          {
            v149 = v143 + v38;
          }

          *v65 = v148;
          if (v147 <= v42)
          {
            v150 = v149;
          }

          else
          {
            v150 = v42;
          }

          v65[1] = llroundf(v150);
          v151 = v40;
          if (v145 <= v40)
          {
            v151 = v145;
            if (v145 < v38)
            {
              v151 = v38;
            }
          }

          v152 = (((v44 * _S4) + (v43 * _S0)) + (v45 * _S1)) + v38;
          v65[2] = llroundf(v151);
          v153 = v42;
          v36 = v84;
          if (v152 <= v42)
          {
            v153 = v152;
            if (v152 < v41)
            {
              v153 = v41;
            }
          }

          v65[3] = llroundf(v153);
          if (v64)
          {
            *v64++ = 0;
          }

          v61 += 2;
          v62 += 2;
          v65 += 4;
        }

        while (v61 < v31);
      }

      v56 += v32;
      v55 += v33;
      v52 = (v52 + v34);
      ++v29;
    }

    while (v29 != v19);
  }

  if (v157 && v28)
  {
    if (v19 >= 1)
    {
      v154 = 0;
      v155 = (v157 + v24 * v13 + 2 * v11);
      v156 = 2 * v16;
      do
      {
        result = memcpy(v27, v155, v156);
        v155 += v24;
        v27 += v25;
        ++v154;
      }

      while (v19 > v154);
    }
  }

  else if (v28 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v27, 255, 2 * v16);
      }

      v27 += v25;
      --v19;
    }

    while (v19);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v40 = a2[2];
  v41 = v16;
  v18 = *a6;
  v36 = a6[1];
  v37 = v17;
  v38 = a6[2];
  v39 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v36.i8[-v21];
    bzero(&v36 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v37), v41), vsubq_s64(v41, v40), v37);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v38, v36), v39), vsubq_s64(v39, v38), v36);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v40, v23);
  v27 = v26.i64[1] + v25.i64[1];
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 2 * v26.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && (a4[1] * v27 + 4 * v26.i64[0]) > a5[1])
    {
      v37 = v25;
    }

    else
    {
      if (!*(a3 + 16) || (2 * v26.i64[0] + a4[2] * v27) <= a5[2])
      {
        goto LABEL_14;
      }

      v37 = v25;
    }
  }

  else
  {
    v37 = v25;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v25 = v37;
  if (v28)
  {
    v20 = v28;
    goto LABEL_19;
  }

LABEL_14:
  *v19 = v15;
  v29 = v40;
  *(v19 + 4) = v41;
  *(v19 + 20) = v25;
  *(v19 + 36) = v29;
  v30 = v38;
  *(v19 + 5) = v39;
  *(v19 + 6) = v25;
  *(v19 + 7) = v30;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf444_TRC_Mat_TRC_v216_GCD);
  if (!v15)
  {
    return 0;
  }

  v32 = (v19 + 160);
  v33 = v15;
  while (1)
  {
    v34 = *v32++;
    v20 = v34;
    if (v34)
    {
      break;
    }

    if (!--v33)
    {
      v20 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v20;
}

void *vt_Copy_xf444_TRC_Mat_TRC_v216_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v9 = result;
  v10 = *(result + 36);
  v11 = *result;
  v12 = *(result + 28) * a2 / v11 + *(result + 44);
  v13 = result[14];
  v15 = result[12];
  v14 = result[13];
  v16 = v14 * a2 / v11;
  v17 = v16 + result[15];
  v18 = (v14 + v14 * a2) / v11 - v16;
  v19 = result[7];
  v20 = result[8];
  v21 = result[16];
  v22 = result[17];
  v23 = v20[2];
  v24 = v19[2];
  v25 = v22[1];
  v26 = v21[1];
  v27 = (v26 + v25 * v17 + 2 * v13);
  if (v26)
  {
    v28 = v26 + v25 * v17 + 2 * v13;
  }

  else
  {
    v28 = 0;
  }

  if (v18 >= 1)
  {
    v29 = 0;
    v30 = result[19];
    v31 = v15 & 0xFFFFFFFE;
    v32 = *v20;
    v33 = v20[1];
    v34 = *v22;
    LOWORD(a4) = *(v30 + 140);
    LOWORD(a5) = *(v30 + 142);
    LOWORD(v5) = *(v30 + 144);
    LOWORD(v6) = *(v30 + 146);
    LOWORD(v7) = *(v30 + 148);
    *&v35 = 8191.0 / *(v30 + 128);
    v36 = LODWORD(a4);
    v37 = LODWORD(a5);
    v38 = *&v35 * *v30;
    v152 = *&v35 * *(v30 + 8);
    v151 = *&v35 * *(v30 + 16);
    v39 = *&v35 * *(v30 + 20);
    v40 = *&v35 * *(v30 + 28);
    v41 = v5;
    v42 = v6;
    v43 = v7;
    LOWORD(v35) = *(v30 + 150);
    v44 = v35;
    LOWORD(v35) = *(v30 + 152);
    v45 = v35;
    v46 = *(v30 + 36);
    v47 = *(v30 + 40);
    v48 = *(v30 + 44);
    v149 = *(v30 + 48) * 0.5;
    v150 = v39;
    v147 = *(v30 + 56) * 0.5;
    v148 = *(v30 + 52) * 0.5;
    v145 = *(v30 + 64) * 0.5;
    v146 = *(v30 + 60) * 0.5;
    v49 = *(v30 + 72);
    v144 = *(v30 + 68) * 0.5;
    v51 = *(v30 + 76);
    v50 = *(v30 + 80);
    v52 = *(v30 + 84);
    v53 = *(v30 + 88);
    v54 = *(v30 + 92);
    v55 = *(v30 + 96);
    v56 = *(v30 + 100);
    v57 = *(v30 + 104);
    v58 = *(v30 + 124);
    v59 = 16 - v58;
    _CF = v58 >= 0x11;
    result = (v30 + 16548);
    v61 = v30 + 164;
    if (_CF)
    {
      v59 = 0;
    }

    v62 = *v21 + v34 * v17 + 2 * v13;
    v64 = *v19;
    v63 = v19[1];
    v65 = v63 + v33 * v12 + 2 * v10;
    if (!v63)
    {
      v65 = 0;
    }

    v66 = v64 + v32 * v12 + 2 * v10;
    v67 = v59;
    do
    {
      if (v31 >= 1)
      {
        v68 = 0;
        v69 = v66;
        v70 = v65;
        v71 = v28;
        v72 = v62;
        do
        {
          if (v70)
          {
            v73 = (*v70 >> v67) - v37;
            v74 = (v70[1] >> v67) - v37;
            v70 += 2;
            v75 = v152 * v74;
            v76 = (v150 * v74) + (v73 * v151);
            v77 = v40 * v73;
          }

          else
          {
            v77 = 0.0;
            v76 = 0.0;
            v75 = 0.0;
          }

          v78 = v38 * ((*v69 >> v67) - v36);
          v79 = v75 + v78;
          v80 = (v75 + v78) <= 8191.0;
          v81 = 8191.0;
          if (v80)
          {
            v81 = v79;
            if (v79 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v76 + v78;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = v82;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = 8191.0;
          if ((v77 + v78) <= 8191.0)
          {
            v84 = v77 + v78;
            if ((v77 + v78) < 0.0)
            {
              v84 = 0.0;
            }
          }

          if (v70)
          {
            v85 = (*v70 >> v67) - v37;
            v86 = (v70[1] >> v67) - v37;
            v70 += 2;
            v87 = v152 * v86;
            v88 = (v150 * v86) + (v85 * v151);
            v89 = v40 * v85;
          }

          else
          {
            v89 = 0.0;
            v88 = 0.0;
            v87 = 0.0;
          }

          v90 = v38 * ((v69[1] >> v67) - v36);
          v91 = 8191.0;
          if ((v87 + v90) <= 8191.0)
          {
            v91 = v87 + v90;
            if ((v87 + v90) < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v88 + v90;
          v80 = (v88 + v90) <= 8191.0;
          v93 = 8191.0;
          if (v80)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v89 + v90;
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H0 = *(v61 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v61 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H25 = *(v61 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H6 = *(v61 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H4 = *(v61 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _S26 = ((v51 * _S5) + (_S0 * v49)) + (_S25 * v50);
          v110 = ((v53 * _S5) + (_S0 * v52)) + (_S25 * v54);
          _S0 = ((v56 * _S5) + (_S0 * v55)) + (_S25 * v57);
          v112 = (v51 * _S4) + (_S6 * v49);
          v113 = (v53 * _S4) + (_S6 * v52);
          v114 = (v56 * _S4) + (_S6 * v55);
          LOWORD(_S6) = *(v61 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _S5 = v112 + (_S6 * v50);
          v117 = v113 + (_S6 * v54);
          LOWORD(_S26) = *(result + llroundf(fminf(fmaxf(_S26, 0.0), 8191.0)));
          v118 = v114 + (_S6 * v57);
          __asm { FCVT            S6, H26 }

          LOWORD(_S26) = *(result + llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          LOWORD(_S0) = *(result + llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S28, H0 }

          LOWORD(_S0) = *(result + llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S5) = *(result + llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          __asm { FCVT            S25, H5 }

          v124 = llroundf(fminf(fmaxf(v118, 0.0), 8191.0));
          v125 = (v47 * _S26) + (v46 * _S6);
          _S4 = _S6 + _S0;
          v127 = (v42 + ((_S6 + _S0) * v149)) + ((_S26 + _S25) * v148);
          v128 = (v42 + (_S4 * v146)) + ((_S26 + _S25) * v145);
          LOWORD(_S4) = *(result + v124);
          __asm { FCVT            S4, H4 }

          v130 = v125 + (v48 * _S28);
          v131 = v127 + ((_S28 + _S4) * v147);
          v132 = v128 + ((_S28 + _S4) * v144);
          if (v131 < v41)
          {
            v133 = v41;
          }

          else
          {
            v133 = v131;
          }

          v80 = v131 <= v43;
          v134 = v130 + v41;
          if (!v80)
          {
            v133 = v43;
          }

          v135 = llroundf(v133);
          if (v134 < v44)
          {
            v136 = v44;
          }

          else
          {
            v136 = v130 + v41;
          }

          *v72 = v135;
          if (v134 <= v45)
          {
            v137 = v136;
          }

          else
          {
            v137 = v45;
          }

          v72[1] = llroundf(v137);
          v138 = v43;
          if (v132 <= v43)
          {
            v138 = v132;
            if (v132 < v41)
            {
              v138 = v41;
            }
          }

          v139 = (((v47 * _S25) + (v46 * _S0)) + (v48 * _S4)) + v41;
          v72[2] = llroundf(v138);
          v140 = v45;
          if (v139 <= v45)
          {
            v140 = v139;
            if (v139 < v44)
            {
              v140 = v44;
            }
          }

          v72[3] = llroundf(v140);
          if (v71)
          {
            *v71++ = 0;
          }

          v68 += 2;
          v69 += 2;
          v72 += 4;
        }

        while (v68 < v31);
      }

      v66 += v32;
      v65 += v33;
      v62 += v34;
      ++v29;
    }

    while (v29 != v18);
  }

  if (v24 && v28)
  {
    if (v18 >= 1)
    {
      v141 = 0;
      v142 = (v24 + v23 * v12 + 2 * v10);
      v143 = 2 * v15;
      do
      {
        result = memcpy(v27, v142, v143);
        v142 += v23;
        v27 += v25;
        ++v141;
      }

      while (v18 > v141);
    }
  }

  else if (v28 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v27, 255, 2 * v15);
      }

      v27 += v25;
      --v18;
    }

    while (v18);
  }

  *(v9 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v40 = a2[2];
  v41 = v16;
  v18 = *a6;
  v36 = a6[1];
  v37 = v17;
  v38 = a6[2];
  v39 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_20:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v36.i8[-v21];
    bzero(&v36 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v37), v41), vsubq_s64(v41, v40), v37);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v38, v36), v39), vsubq_s64(v39, v38), v36);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v40, v23);
  v27 = v26.i64[1] + v25.i64[1];
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 2 * v26.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && (a4[1] * v27 + 4 * v26.i64[0]) > a5[1])
    {
      v37 = v25;
    }

    else
    {
      if (!*(a3 + 16) || (2 * v26.i64[0] + a4[2] * v27) <= a5[2])
      {
        goto LABEL_14;
      }

      v37 = v25;
    }
  }

  else
  {
    v37 = v25;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v25 = v37;
  if (v28)
  {
    v20 = v28;
    goto LABEL_19;
  }

LABEL_14:
  *v19 = v15;
  v29 = v40;
  *(v19 + 4) = v41;
  *(v19 + 20) = v25;
  *(v19 + 36) = v29;
  v30 = v38;
  *(v19 + 5) = v39;
  *(v19 + 6) = v25;
  *(v19 + 7) = v30;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf444_rgb_v216_GCD);
  if (!v15)
  {
    return 0;
  }

  v32 = (v19 + 160);
  v33 = v15;
  while (1)
  {
    v34 = *v32++;
    v20 = v34;
    if (v34)
    {
      break;
    }

    if (!--v33)
    {
      v20 = 0;
      break;
    }
  }

LABEL_19:
  if (v15 == 255)
  {
    goto LABEL_20;
  }

  return v20;
}

unsigned __int16 *vt_Copy_xf444_rgb_v216_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v14 = *(a1 + 36);
  v15 = *a1;
  v16 = *(a1 + 28) * a2 / v15 + *(a1 + 44);
  v17 = a1[14];
  v19 = a1[12];
  v18 = a1[13];
  v20 = v18 * a2;
  v21 = v18 * a2 / v15;
  v22 = v21 + a1[15];
  v23 = (v18 + v20) / v15 - v21;
  result = a1[7];
  v25 = a1[8];
  v26 = a1[16];
  v27 = a1[17];
  v28 = v25[2];
  v29 = *(result + 2);
  v30 = v27[1];
  v31 = v26[1];
  v32 = (v31 + v30 * v22 + 2 * v17);
  if (v31)
  {
    v33 = v31 + v30 * v22 + 2 * v17;
  }

  else
  {
    v33 = 0;
  }

  if (v23 >= 1)
  {
    v34 = 0;
    v35 = a1[19];
    v36 = v19 & 0xFFFFFFFE;
    LOWORD(a6) = *(v35 + 140);
    LOWORD(a7) = *(v35 + 142);
    v37 = *v35;
    v38 = *(v35 + 8);
    v39 = *(v35 + 136) / *(v35 + 128);
    v40 = *(v35 + 16);
    v41 = *(v35 + 20);
    v42 = *(v35 + 28);
    LOWORD(v7) = *(v35 + 144);
    LOWORD(v8) = *(v35 + 146);
    LOWORD(v9) = *(v35 + 148);
    LOWORD(v10) = *(v35 + 150);
    LOWORD(v11) = *(v35 + 152);
    v43 = *(v35 + 36);
    v44 = *(v35 + 40);
    v45 = *(v35 + 44);
    v46 = *(v35 + 48);
    v47 = *(v35 + 52);
    v48 = *(v35 + 56);
    v49 = *(v35 + 60);
    v50 = *(v35 + 64);
    v51 = *(v35 + 68);
    LODWORD(v35) = *(v35 + 124);
    v52 = 16 - v35;
    v53 = v35 >= 0x11;
    v54 = *v25;
    v55 = v25[1];
    v56 = *v27;
    v57 = LODWORD(a6);
    v58 = LODWORD(a7);
    v59 = v39 * v37;
    v60 = v39 * v38;
    v61 = v39 * v40;
    v62 = v39 * v41;
    v63 = v39 * v42;
    v64 = v7;
    v65 = v8;
    v66 = v9;
    v67 = v10;
    v68 = v11;
    v69 = v46 * 0.5;
    v70 = v47 * 0.5;
    v71 = v48 * 0.5;
    v72 = v49 * 0.5;
    v73 = v50 * 0.5;
    v74 = v51 * 0.5;
    if (v53)
    {
      v52 = 0;
    }

    v75 = *v26 + v56 * v22 + 2 * v17;
    v77 = *result;
    v76 = *(result + 1);
    result = (v76 + v55 * v16 + 2 * v14);
    if (!v76)
    {
      result = 0;
    }

    v78 = v77 + v54 * v16 + 2 * v14;
    v79 = v52;
    while (v36 < 1)
    {
LABEL_39:
      v78 += v54;
      result = (result + v55);
      v75 += v56;
      if (++v34 == v23)
      {
        goto LABEL_40;
      }
    }

    v80 = 0;
    v81 = v78;
    v82 = result;
    v83 = v33;
    v84 = v75;
    while (1)
    {
      v85 = 0.0;
      if (!v82)
      {
        break;
      }

      v86 = (*v82 >> v79) - v58;
      v87 = (v82[1] >> v79) - v58;
      v82 += 2;
      v88 = v60 * v87;
      v89 = (v62 * v87) + (v86 * v61);
      v90 = v63 * v86;
      if (!v82)
      {
        goto LABEL_17;
      }

      v91 = (*v82 >> v79) - v58;
      v92 = (v82[1] >> v79) - v58;
      v82 += 2;
      v93 = v60 * v92;
      v94 = (v62 * v92) + (v91 * v61);
      v85 = v63 * v91;
LABEL_18:
      v95 = v59 * ((*v81 >> v79) - v57);
      v96 = v88 + v95;
      v97 = v89 + v95;
      v98 = v90 + v95;
      v99 = v59 * ((v81[1] >> v79) - v57);
      v100 = v93 + v99;
      v101 = v94 + v99;
      v102 = v85 + v99;
      v103 = (((v44 * v97) + (v43 * v96)) + (v45 * v98)) + v64;
      v104 = v96 + (v93 + v99);
      v105 = v97 + v101;
      v106 = v98 + v102;
      v107 = ((v65 + (v104 * v69)) + (v105 * v70)) + (v106 * v71);
      v108 = ((v65 + (v104 * v72)) + (v105 * v73)) + (v106 * v74);
      if (v107 < v64)
      {
        v109 = v64;
      }

      else
      {
        v109 = v107;
      }

      if (v107 <= v66)
      {
        v110 = v109;
      }

      else
      {
        v110 = v66;
      }

      *v84 = llroundf(v110);
      if (v103 < v67)
      {
        v111 = v67;
      }

      else
      {
        v111 = v103;
      }

      if (v103 <= v68)
      {
        v112 = v111;
      }

      else
      {
        v112 = v68;
      }

      v84[1] = llroundf(v112);
      v113 = v66;
      if (v108 <= v66)
      {
        v113 = v108;
        if (v108 < v64)
        {
          v113 = v64;
        }
      }

      v114 = (((v44 * v101) + (v43 * v100)) + (v45 * v102)) + v64;
      v84[2] = llroundf(v113);
      v115 = v68;
      if (v114 <= v68)
      {
        v115 = v114;
        if (v114 < v67)
        {
          v115 = v67;
        }
      }

      v84[3] = llroundf(v115);
      if (v83)
      {
        *v83++ = 0;
      }

      v80 += 2;
      v81 += 2;
      v84 += 4;
      if (v80 >= v36)
      {
        goto LABEL_39;
      }
    }

    v90 = 0.0;
    v89 = 0.0;
    v88 = 0.0;
LABEL_17:
    v94 = 0.0;
    v93 = 0.0;
    goto LABEL_18;
  }

LABEL_40:
  if (v29 && v33)
  {
    if (v23 >= 1)
    {
      v116 = 0;
      v117 = (v29 + v28 * v16 + 2 * v14);
      v118 = 2 * v19;
      do
      {
        result = memcpy(v32, v117, v118);
        v117 += v28;
        v32 += v30;
        ++v116;
      }

      while (v23 > v116);
    }
  }

  else if (v33 && v23 >= 1)
  {
    do
    {
      if (v19 >= 1)
      {
        result = memset(v32, 255, 2 * v19);
      }

      v32 += v30;
      --v23;
    }

    while (v23);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v48, v25);
  v29 = v28.i64[1] + v27.i64[1];
  v30 = (*v12 * (v28.i64[1] + v27.i64[1]) + 2 * v28.i64[0]) > *a5;
  v44 = v12;
  v46 = v27;
  if (v30)
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v29 + 4 * v28.i64[0]) > a5[1])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 16) && (2 * v28.i64[0] + v12[2] * v29) > a5[2])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v35 = vaddq_s64((*&v50 + __PAIR128__(-1, 0)), v27);
    if (v35.i64[0] + *a8 * v35.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35.i64[1] + 2 * v35.i64[0]) > a9[1])
      {
        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v35.i64[0] + a8[2] * v35.i64[1] <= a9[2])
        {
          goto LABEL_23;
        }

        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }
    }

    else
    {
      v31 = a9;
      v32 = v14;
      v33 = a8;
      v34 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v34;
  a8 = v33;
  v14 = v32;
  v24 = v31;
  v12 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v184 = *(result + 28) * a2 / v3 + *(result + 44);
  v185 = *(result + 36);
  v4 = *(result + 14);
  v5 = *(result + 12);
  v6 = *(result + 13);
  v189 = result;
  v7 = v6 * a2 / v3;
  v8 = v7 + *(result + 15);
  v9 = (v6 + v6 * a2) / v3 - v7;
  v11 = *(result + 7);
  v10 = *(result + 8);
  v13 = *(result + 16);
  v12 = *(result + 17);
  v183 = v10[2];
  v187 = v11[2];
  v188 = v12[2];
  v186 = v13[2];
  v14 = (v186 + v188 * v8 + v4);
  if (v9 >= 1)
  {
    v15 = 0;
    v16 = *(result + 19);
    v17 = *v10;
    v18 = v10[1];
    v19 = *v12;
    v20 = v12[1];
    v21 = *(v16 + 140);
    v22 = *(v16 + 142);
    v23 = *(v16 + 144);
    v24 = *(v16 + 146);
    v25 = *(v16 + 148);
    v26 = *(v16 + 150);
    v27 = *(v16 + 152);
    _S17 = *(v16 + 40);
    _S27 = *(v16 + 44);
    _S31 = *(v16 + 48);
    _S9 = *(v16 + 52);
    _S24 = *(v16 + 56);
    v33 = v16 + 16548;
    *&_D0 = 8191.0 / *(v16 + 128);
    v233 = v21;
    v34 = v22;
    _S1 = *&_D0 * *v16;
    _S2 = *&_D0 * *(v16 + 8);
    _S3 = *&_D0 * *(v16 + 16);
    _S4 = *&_D0 * *(v16 + 20);
    v39 = v23;
    v40 = v24;
    v41 = v25;
    _S5 = *&_D0 * *(v16 + 28);
    *&_D0 = v26;
    v209 = v26;
    v43 = v27;
    v44 = v16 + 164;
    *&_D0 = v21;
    v45 = v16 + 32932;
    v232 = _S1;
    __asm { FCVT            H8, S1 }

    v51 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v22;
    v52 = vdupq_lane_s16(*&_D0, 0);
    v203 = _S5;
    __asm { FCVT            H0, S5 }

    v202 = *&_D0;
    v205 = _S3;
    __asm { FCVT            H0, S3 }

    v201 = *&_D0;
    v204 = _S4;
    __asm { FCVT            H0, S4 }

    v200 = *&_D0;
    v206 = _S2;
    __asm { FCVT            H0, S2 }

    v199 = *&_D0;
    v236 = *(v16 + 36);
    __asm { FCVT            H0, S7 }

    v230 = *&_D0;
    v231 = v51;
    *&_D0 = v23;
    v53 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = v24;
    v54 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = v25;
    v55 = vdupq_lane_s16(*&_D0, 0);
    v229 = v55;
    *v55.i16 = v26;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    *v55.i16 = v27;
    v57 = vdupq_lane_s16(*v55.i8, 0);
    v58 = *(v16 + 124);
    if (v58 >= 0x11)
    {
      v59 = 0;
    }

    else
    {
      v59 = 16 - v58;
    }

    v61 = *v13;
    v60 = v13[1];
    v62 = (v60 + v20 * v8 + v4);
    if (!v60)
    {
      v62 = 0;
    }

    v63 = (v61 + v19 * v8 + v4);
    v65 = *v11;
    v64 = v11[1];
    v66 = v64 + v18 * v184 + 2 * v185;
    if (!v64)
    {
      v66 = 0;
    }

    v67 = v65 + v17 * v184 + 2 * v185;
    v235 = *(v16 + 40);
    __asm { FCVT            H0, S17 }

    v228 = _H0;
    v234 = *(v16 + 44);
    __asm { FCVT            H11, S27 }

    v222 = _H11;
    __asm { FCVT            H11, S31 }

    v208 = *(v16 + 52);
    __asm { FCVT            H9, S9 }

    v194 = _H9;
    v195 = _H11;
    v207 = *(v16 + 56);
    __asm { FCVT            H9, S24 }

    v197 = *(v16 + 64);
    v198 = *(v16 + 60);
    __asm { FCVT            H0, S0 }

    v192 = _H0;
    v193 = _H9;
    __asm { FCVT            H0, S1 }

    v191 = _H0;
    v196 = *(v16 + 68);
    __asm { FCVT            H0, S2 }

    v190 = _H0;
    v224 = *(v16 + 108);
    __asm { FCVT            H0, S17 }

    v219 = _H0;
    v223 = *(v16 + 112);
    __asm { FCVT            H0, S10 }

    v218 = _H0;
    v221 = *(v16 + 116);
    __asm { FCVT            H0, S27 }

    v217 = _H0;
    v220 = *(v16 + 120);
    __asm { FCVT            H0, S31 }

    v216 = _H0;
    v227 = *(v16 + 72);
    __asm { FCVT            H0, S3 }

    v215 = _H0;
    v226 = *(v16 + 76);
    __asm { FCVT            H0, S4 }

    v213 = _H0;
    v225 = *(v16 + 80);
    __asm { FCVT            H0, S5 }

    v212 = _H0;
    v214 = *(v16 + 84);
    __asm { FCVT            H0, S7 }

    v211 = _H0;
    v84 = vdupq_n_s16(-v59);
    v85.i64[0] = 0x9000900090009000;
    v85.i64[1] = 0x9000900090009000;
    _S4 = *(v16 + 88);
    __asm { FCVT            H0, S25 }

    v210 = _H0;
    _S9 = *(v16 + 92);
    __asm { FCVT            H0, S13 }

    _S10 = *(v16 + 96);
    __asm { FCVT            H1, S18 }

    _S11 = *(v16 + 100);
    __asm { FCVT            H2, S19 }

    _S5 = *(v16 + 104);
    __asm { FCVT            H7, S20 }

    do
    {
      if (v5 < 8)
      {
        v128 = 0;
        v100 = v62;
        v99 = v63;
        v98 = v66;
        v97 = v67;
      }

      else
      {
        v96 = 0;
        v97 = v67;
        v98 = v66;
        v99 = v63;
        v100 = v62;
        do
        {
          if (v98)
          {
            v238 = vld2q_s16(v98);
            v98 += 16;
            v101 = vaddq_f16(v52, vcvtq_f16_u16(vshlq_u16(v238.val[0], v84)));
            v102 = vaddq_f16(v52, vcvtq_f16_u16(vshlq_u16(v238.val[1], v84)));
            v103 = vmulq_n_f16(v102, v199);
            v104 = vmlaq_n_f16(vmulq_n_f16(v101, v201), v102, v200);
            v105 = vmulq_n_f16(v101, v202);
          }

          else
          {
            v105 = 0uLL;
            v104 = 0uLL;
            v103 = 0uLL;
          }

          v106 = *v97++;
          v107 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v106, v84)), v231);
          v108 = vmlaq_n_f16(v104, v107, _H8);
          v109 = vmlaq_n_f16(v105, v107, _H8);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v107, _H8), 0), v85));
          v111.i16[0] = *(v44 + 2 * v110.u16[0]);
          v111.i16[1] = *(v44 + 2 * v110.u16[1]);
          v111.i16[2] = *(v44 + 2 * v110.u16[2]);
          v111.i16[3] = *(v44 + 2 * v110.u16[3]);
          v111.i16[4] = *(v44 + 2 * v110.u16[4]);
          v111.i16[5] = *(v44 + 2 * v110.u16[5]);
          v111.i16[6] = *(v44 + 2 * v110.u16[6]);
          v111.i16[7] = *(v44 + 2 * v110.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v85));
          v110.i16[0] = *(v44 + 2 * v112.u16[0]);
          v110.i16[1] = *(v44 + 2 * v112.u16[1]);
          v110.i16[2] = *(v44 + 2 * v112.u16[2]);
          v110.i16[3] = *(v44 + 2 * v112.u16[3]);
          v110.i16[4] = *(v44 + 2 * v112.u16[4]);
          v110.i16[5] = *(v44 + 2 * v112.u16[5]);
          v110.i16[6] = *(v44 + 2 * v112.u16[6]);
          v110.i16[7] = *(v44 + 2 * v112.u16[7]);
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v85));
          v109.i16[0] = *(v44 + 2 * v113.u16[0]);
          v109.i16[1] = *(v44 + 2 * v113.u16[1]);
          v109.i16[2] = *(v44 + 2 * v113.u16[2]);
          v109.i16[3] = *(v44 + 2 * v113.u16[3]);
          v109.i16[4] = *(v44 + 2 * v113.u16[4]);
          v109.i16[5] = *(v44 + 2 * v113.u16[5]);
          v109.i16[6] = *(v44 + 2 * v113.u16[6]);
          v109.i16[7] = *(v44 + 2 * v113.u16[7]);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v219), v110, v218), v109, v217), vmaxq_f16(vmaxq_f16(v111, v110), v109), v216), 0), v85));
          v115.i16[0] = *(v33 + 2 * v114.u16[0]);
          v115.i16[1] = *(v33 + 2 * v114.u16[1]);
          v115.i16[2] = *(v33 + 2 * v114.u16[2]);
          v115.i16[3] = *(v33 + 2 * v114.u16[3]);
          v115.i16[4] = *(v33 + 2 * v114.u16[4]);
          v115.i16[5] = *(v33 + 2 * v114.u16[5]);
          v115.i16[6] = *(v33 + 2 * v114.u16[6]);
          v115.i16[7] = *(v33 + 2 * v114.u16[7]);
          v116 = vmulq_f16(v111, v115);
          v117 = vmulq_f16(v110, v115);
          v118 = vmulq_f16(v109, v115);
          v119 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v211), v117, v210), v118, _H0);
          v120 = vmulq_n_f16(v118, _H7);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v215), v117, v213), v118, v212), 0), v85));
          v122.i16[0] = *(v45 + 2 * v121.u16[0]);
          v122.i16[1] = *(v45 + 2 * v121.u16[1]);
          v122.i16[2] = *(v45 + 2 * v121.u16[2]);
          v122.i16[3] = *(v45 + 2 * v121.u16[3]);
          v122.i16[4] = *(v45 + 2 * v121.u16[4]);
          v122.i16[5] = *(v45 + 2 * v121.u16[5]);
          v122.i16[6] = *(v45 + 2 * v121.u16[6]);
          v122.i16[7] = *(v45 + 2 * v121.u16[7]);
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v85));
          v124.i16[0] = *(v45 + 2 * v123.u16[0]);
          v124.i16[1] = *(v45 + 2 * v123.u16[1]);
          v124.i16[2] = *(v45 + 2 * v123.u16[2]);
          v124.i16[3] = *(v45 + 2 * v123.u16[3]);
          v124.i16[4] = *(v45 + 2 * v123.u16[4]);
          v124.i16[5] = *(v45 + 2 * v123.u16[5]);
          v124.i16[6] = *(v45 + 2 * v123.u16[6]);
          v124.i16[7] = *(v45 + 2 * v123.u16[7]);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v120, v117, _H2), v116, _H1), 0), v85));
          v126.i16[0] = *(v45 + 2 * v125.u16[0]);
          result = (v45 + 2 * v125.u16[5]);
          v126.i16[1] = *(v45 + 2 * v125.u16[1]);
          v126.i16[2] = *(v45 + 2 * v125.u16[2]);
          v126.i16[3] = *(v45 + 2 * v125.u16[3]);
          v126.i16[4] = *(v45 + 2 * v125.u16[4]);
          v126.i16[5] = *result;
          v126.i16[6] = *(v45 + 2 * v125.u16[6]);
          v126.i16[7] = *(v45 + 2 * v125.u16[7]);
          *v99++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v53, v122, v230), v124, v228), v126, v222), v53), v229)));
          if (v100)
          {
            v127 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v122, v192), v124, v191), v126, v190);
            v237.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v122, v195), v124, v194), v126, v193), v56), v57), v56), v57)));
            v237.val[1] = vmovn_s16(vcvtq_u16_f16(v127));
            vst2_s8(v100, v237);
            v100 += 16;
          }

          v96 += 8;
        }

        while (v96 < v5 - 7);
        v128 = v5 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v5, v128);
      v129 = v5 - v128;
      if (!((v129 < 0) ^ _VF | (v129 == 0)))
      {
        do
        {
          if (v98)
          {
            v130 = (*v98 >> v59) - v34;
            v131 = (*(v98 + 1) >> v59) - v34;
            v98 += 2;
            v132 = v206 * v131;
            v133 = (v204 * v131) + (v130 * v205);
            v134 = v203 * v130;
          }

          else
          {
            v134 = 0.0;
            v133 = 0.0;
            v132 = 0.0;
          }

          v135 = v97->u16[0];
          v97 = (v97 + 2);
          v136 = v232 * ((v135 >> v59) - v233);
          v137 = v132 + v136;
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = v137;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          v139 = v133 + v136;
          v140 = (v133 + v136) <= 8191.0;
          v141 = 8191.0;
          if (v140)
          {
            v141 = v139;
            if (v139 < 0.0)
            {
              v141 = 0.0;
            }
          }

          v142 = v134 + v136;
          v143 = 8191.0;
          if (v142 <= 8191.0)
          {
            v143 = v142;
            if (v142 < 0.0)
            {
              v143 = 0.0;
            }
          }

          _H3 = *(v44 + 2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          _H3 = *(v44 + 2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          _H3 = *(v44 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          v150 = (((v223 * _S19) + (v224 * _S18)) + (v221 * _S20)) + (v220 * fmaxf(_S18, fmaxf(_S19, _S20)));
          v151 = 8191.0;
          if (v150 <= 8191.0)
          {
            v151 = v150;
            if (v150 < 0.0)
            {
              v151 = 0.0;
            }
          }

          _H3 = *(v33 + 2 * llroundf(v151));
          __asm { FCVT            S3, H3 }

          _S18 = _S18 * _S3;
          _S19 = _S19 * _S3;
          v156 = _S20 * _S3;
          v157 = ((v226 * _S19) + (_S18 * v227)) + (v156 * v225);
          v158 = ((_S4 * _S19) + (_S18 * v214)) + (v156 * _S9);
          _S3 = ((_S11 * _S19) + (_S18 * _S10)) + (v156 * _S5);
          LOWORD(_S18) = *(v45 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S19) = *(v45 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S3) = *(v45 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          v163 = (((v235 * _S19) + (v236 * _S18)) + (v234 * _S20)) + v39;
          v164 = v41;
          if (v163 <= v41)
          {
            v164 = (((v235 * _S19) + (v236 * _S18)) + (v234 * _S20)) + v39;
            if (v163 < v39)
            {
              v164 = v39;
            }
          }

          v99->i8[0] = llroundf(v164);
          v99 = (v99 + 1);
          if (v100)
          {
            v165 = ((v40 + (_S18 * _S31)) + (_S19 * v208)) + (_S20 * v207);
            v166 = v43;
            if (v165 <= v43)
            {
              v166 = ((v40 + (_S18 * _S31)) + (_S19 * v208)) + (_S20 * v207);
              if (v165 < v209)
              {
                v166 = v209;
              }
            }

            v167 = ((v40 + (_S18 * v198)) + (_S19 * v197)) + (_S20 * v196);
            *v100 = llroundf(v166);
            v168 = v43;
            if (v167 <= v43)
            {
              v168 = v167;
              if (v167 < v209)
              {
                v168 = v209;
              }
            }

            v100[1] = llroundf(v168);
            v100 += 2;
          }

          --v129;
        }

        while (v129);
      }

      v67 += v17;
      v66 += v18;
      v63 = (v63 + v19);
      v62 += v20;
      ++v15;
    }

    while (v15 != v9);
  }

  if (v187 && v186)
  {
    result = v183;
    if (v9 >= 1)
    {
      v169 = 0;
      v170 = v187 + v183 * v184 + 2 * v185;
      do
      {
        if (v5 >= 1)
        {
          v171 = v5;
          v172 = v14;
          v173 = v170;
          do
          {
            v174 = *v173++;
            *v172++ = llroundf(v174 * 0.0038911);
            --v171;
          }

          while (v171);
        }

        v170 += v183;
        v14 += v188;
        ++v169;
      }

      while (v9 > v169);
    }
  }

  else if (v186 && v9 >= 1)
  {
    v175 = 0;
    v176 = vdupq_n_s64(v5 - 1);
    do
    {
      if (v5 >= 1)
      {
        v177 = 0;
        do
        {
          v178 = vdupq_n_s64(v177);
          v179 = vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v179, *v176.i8), *v176.i8).u8[0])
          {
            v14[v177] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v179, *&v176), *&v176).i8[1])
          {
            v14[v177 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v176, vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDDA0)))), *&v176).i8[2])
          {
            v14[v177 + 2] = -1;
            v14[v177 + 3] = -1;
          }

          v180 = vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v176, vuzp1_s16(v180, *&v176)).i32[1])
          {
            v14[v177 + 4] = -1;
          }

          if (vuzp1_s8(*&v176, vuzp1_s16(v180, *&v176)).i8[5])
          {
            v14[v177 + 5] = -1;
          }

          if (vuzp1_s8(*&v176, vuzp1_s16(*&v176, vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDD80))))).i8[6])
          {
            v14[v177 + 6] = -1;
            v14[v177 + 7] = -1;
          }

          v181 = vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v181, *v176.i8), *v176.i8).u8[0])
          {
            v14[v177 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v181, *&v176), *&v176).i8[1])
          {
            v14[v177 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v176, vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDD60)))), *&v176).i8[2])
          {
            v14[v177 + 10] = -1;
            v14[v177 + 11] = -1;
          }

          v182 = vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v176, vuzp1_s16(v182, *&v176)).i32[1])
          {
            v14[v177 + 12] = -1;
          }

          if (vuzp1_s8(*&v176, vuzp1_s16(v182, *&v176)).i8[5])
          {
            v14[v177 + 13] = -1;
          }

          if (vuzp1_s8(*&v176, vuzp1_s16(*&v176, vmovn_s64(vcgeq_u64(v176, vorrq_s8(v178, xmmword_18FECDD40))))).i8[6])
          {
            v14[v177 + 14] = -1;
            v14[v177 + 15] = -1;
          }

          v177 += 16;
        }

        while (((v5 + 15) & 0xFFFFFFFFFFFFFFF0) != v177);
      }

      v14 += v188;
      ++v175;
    }

    while (v9 > v175);
  }

  *&v189[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v48, v25);
  v29 = v28.i64[1] + v27.i64[1];
  v30 = (*v12 * (v28.i64[1] + v27.i64[1]) + 2 * v28.i64[0]) > *a5;
  v44 = v12;
  v46 = v27;
  if (v30)
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v29 + 4 * v28.i64[0]) > a5[1])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 16) && (2 * v28.i64[0] + v12[2] * v29) > a5[2])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v35 = vaddq_s64((*&v50 + __PAIR128__(-1, 0)), v27);
    if (v35.i64[0] + *a8 * v35.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35.i64[1] + 2 * v35.i64[0]) > a9[1])
      {
        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v35.i64[0] + a8[2] * v35.i64[1] <= a9[2])
        {
          goto LABEL_23;
        }

        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }
    }

    else
    {
      v31 = a9;
      v32 = v14;
      v33 = a8;
      v34 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v34;
  a8 = v33;
  v14 = v32;
  v24 = v31;
  v12 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

void *vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v8 = *(result + 36);
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v11 = result[14];
  v12 = result[12];
  v13 = result[13];
  v14 = v13 * a2 / v9;
  v15 = v14 + result[15];
  v16 = (v13 + v13 * a2) / v9 - v14;
  v18 = result[7];
  v17 = result[8];
  v20 = result[16];
  v19 = result[17];
  v21 = v17[2];
  v136 = v18[2];
  v22 = v19[2];
  v23 = v20[2];
  v24 = (v23 + v22 * v15 + v11);
  if (v16 >= 1)
  {
    v25 = 0;
    v26 = result[19];
    v27 = *v17;
    v28 = v17[1];
    v29 = *v19;
    v30 = v19[1];
    LOWORD(a4) = *(v26 + 140);
    LOWORD(a5) = *(v26 + 142);
    LOWORD(v5) = *(v26 + 144);
    LOWORD(v6) = *(v26 + 146);
    LOWORD(v7) = *(v26 + 148);
    v31 = 8191.0 / *(v26 + 128);
    v32 = LODWORD(a4);
    v33 = LODWORD(a5);
    v34 = v31 * *v26;
    v145 = v31 * *(v26 + 8);
    v144 = v31 * *(v26 + 16);
    v35 = v31 * *(v26 + 20);
    *&v36 = v31 * *(v26 + 28);
    v142 = *&v36;
    v143 = v35;
    v37 = v5;
    v38 = v6;
    v39 = v7;
    LOWORD(v36) = *(v26 + 150);
    v40 = v36;
    LOWORD(v36) = *(v26 + 152);
    v41 = v36;
    v42 = *(v26 + 36);
    v43 = *(v26 + 40);
    v44 = *(v26 + 44);
    v140 = *(v26 + 52);
    v141 = *(v26 + 48);
    v138 = *(v26 + 60);
    v139 = *(v26 + 56);
    v137 = *(v26 + 64);
    v45 = *(v26 + 68);
    v46 = *(v26 + 72);
    v48 = *(v26 + 76);
    v47 = *(v26 + 80);
    v49 = *(v26 + 84);
    v50 = *(v26 + 88);
    v51 = *(v26 + 92);
    v52 = *(v26 + 96);
    v53 = *(v26 + 100);
    v54 = *(v26 + 104);
    v55 = v26 + 164;
    v56 = v26 + 16548;
    v57 = *(v26 + 124);
    v58 = 16 - v57;
    if (v57 >= 0x11)
    {
      v58 = 0;
    }

    v59 = v20[1];
    _ZF = v59 == 0;
    v61 = v59 + v30 * v15;
    v62 = *v20 + v29 * v15;
    v63 = v26 + 32932;
    v64 = (v61 + v11);
    if (_ZF)
    {
      v64 = 0;
    }

    v65 = (v62 + v11);
    v67 = *v18;
    v66 = v18[1];
    v68 = v66 + v28 * v10 + 2 * v8;
    if (!v66)
    {
      v68 = 0;
    }

    v69 = v67 + v27 * v10 + 2 * v8;
    v71 = *(v26 + 108);
    v70 = *(v26 + 112);
    v72 = *(v26 + 116);
    v73 = *(v26 + 120);
    do
    {
      v74 = v12;
      v75 = v69;
      v76 = v68;
      v77 = v64;
      v78 = v65;
      if (v12 >= 1)
      {
        do
        {
          if (v76)
          {
            v79 = (*v76 >> v58) - v33;
            v80 = (v76[1] >> v58) - v33;
            v76 += 2;
            v81 = v145 * v80;
            v82 = (v143 * v80) + (v79 * v144);
            v83 = v142 * v79;
          }

          else
          {
            v83 = 0.0;
            v82 = 0.0;
            v81 = 0.0;
          }

          v84 = *v75++;
          v85 = v34 * ((v84 >> v58) - v32);
          v86 = v81 + v85;
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v82 + v85;
          v89 = (v82 + v85) <= 8191.0;
          v90 = 8191.0;
          if (v89)
          {
            v90 = v88;
            if (v88 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v83 + v85;
          v92 = 8191.0;
          if (v91 <= 8191.0)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          v102 = (((v70 * _S25) + (v71 * _S24)) + (v72 * _S26)) + (v73 * fmaxf(_S24, fmaxf(_S25, _S26)));
          v103 = 8191.0;
          if (v102 <= 8191.0)
          {
            v103 = v102;
            if (v102 < 0.0)
            {
              v103 = 0.0;
            }
          }

          _H0 = *(v56 + 2 * llroundf(v103));
          __asm { FCVT            S0, H0 }

          _S24 = _S24 * _S0;
          _S25 = _S25 * _S0;
          v108 = _S26 * _S0;
          v109 = ((v48 * _S25) + (_S24 * v46)) + (v108 * v47);
          v110 = ((v50 * _S25) + (_S24 * v49)) + (v108 * v51);
          _S0 = ((v53 * _S25) + (_S24 * v52)) + (v108 * v54);
          LOWORD(_S24) = *(v63 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          LOWORD(_S25) = *(v63 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          LOWORD(_S0) = *(v63 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          v115 = (((v43 * _S25) + (v42 * _S24)) + (v44 * _S26)) + v37;
          v116 = v39;
          if (v115 <= v39)
          {
            v116 = (((v43 * _S25) + (v42 * _S24)) + (v44 * _S26)) + v37;
            if (v115 < v37)
            {
              v116 = v37;
            }
          }

          *v78++ = llroundf(v116);
          if (v77)
          {
            v117 = ((v38 + (_S24 * v141)) + (_S25 * v140)) + (_S26 * v139);
            v118 = v41;
            if (v117 <= v41)
            {
              v118 = ((v38 + (_S24 * v141)) + (_S25 * v140)) + (_S26 * v139);
              if (v117 < v40)
              {
                v118 = v40;
              }
            }

            v119 = (v38 + (_S24 * v138)) + (_S25 * v137);
            v120 = v119 + (_S26 * v45);
            *v77 = llroundf(v118);
            v121 = v41;
            if (v120 <= v41)
            {
              v121 = v119 + (_S26 * v45);
              if (v120 < v40)
              {
                v121 = v40;
              }
            }

            v77[1] = llroundf(v121);
            v77 += 2;
          }

          --v74;
        }

        while (v74);
      }

      v69 += v27;
      v68 += v28;
      v65 += v29;
      v64 += v30;
      ++v25;
    }

    while (v25 != v16);
  }

  if (v136 && v23)
  {
    if (v16 >= 1)
    {
      v122 = 0;
      v123 = v136 + v21 * v10 + 2 * v8;
      do
      {
        if (v12 >= 1)
        {
          v124 = v12;
          v125 = v24;
          v126 = v123;
          do
          {
            v127 = *v126++;
            *v125++ = llroundf(v127 * 0.0038911);
            --v124;
          }

          while (v124);
        }

        v123 += v21;
        v24 += v22;
        ++v122;
      }

      while (v16 > v122);
    }
  }

  else if (v23 && v16 >= 1)
  {
    v128 = 0;
    v129 = vdupq_n_s64(v12 - 1);
    do
    {
      if (v12 >= 1)
      {
        v130 = 0;
        do
        {
          v131 = vdupq_n_s64(v130);
          v132 = vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v132, *v129.i8), *v129.i8).u8[0])
          {
            v24[v130] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v132, *&v129), *&v129).i8[1])
          {
            v24[v130 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v129, vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDDA0)))), *&v129).i8[2])
          {
            v24[v130 + 2] = -1;
            v24[v130 + 3] = -1;
          }

          v133 = vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v129, vuzp1_s16(v133, *&v129)).i32[1])
          {
            v24[v130 + 4] = -1;
          }

          if (vuzp1_s8(*&v129, vuzp1_s16(v133, *&v129)).i8[5])
          {
            v24[v130 + 5] = -1;
          }

          if (vuzp1_s8(*&v129, vuzp1_s16(*&v129, vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDD80))))).i8[6])
          {
            v24[v130 + 6] = -1;
            v24[v130 + 7] = -1;
          }

          v134 = vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v134, *v129.i8), *v129.i8).u8[0])
          {
            v24[v130 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v134, *&v129), *&v129).i8[1])
          {
            v24[v130 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v129, vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDD60)))), *&v129).i8[2])
          {
            v24[v130 + 10] = -1;
            v24[v130 + 11] = -1;
          }

          v135 = vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v129, vuzp1_s16(v135, *&v129)).i32[1])
          {
            v24[v130 + 12] = -1;
          }

          if (vuzp1_s8(*&v129, vuzp1_s16(v135, *&v129)).i8[5])
          {
            v24[v130 + 13] = -1;
          }

          if (vuzp1_s8(*&v129, vuzp1_s16(*&v129, vmovn_s64(vcgeq_u64(v129, vorrq_s8(v131, xmmword_18FECDD40))))).i8[6])
          {
            v24[v130 + 14] = -1;
            v24[v130 + 15] = -1;
          }

          v130 += 16;
        }

        while (((v12 + 15) & 0xFFFFFFFFFFFFFFF0) != v130);
      }

      v24 += v22;
      ++v128;
    }

    while (v16 > v128);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v48, v25);
  v29 = v28.i64[1] + v27.i64[1];
  v30 = (*v12 * (v28.i64[1] + v27.i64[1]) + 2 * v28.i64[0]) > *a5;
  v44 = v12;
  v46 = v27;
  if (v30)
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v29 + 4 * v28.i64[0]) > a5[1])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 16) && (2 * v28.i64[0] + v12[2] * v29) > a5[2])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v35 = vaddq_s64((*&v50 + __PAIR128__(-1, 0)), v27);
    if (v35.i64[0] + *a8 * v35.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35.i64[1] + 2 * v35.i64[0]) > a9[1])
      {
        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v35.i64[0] + a8[2] * v35.i64[1] <= a9[2])
        {
          goto LABEL_23;
        }

        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }
    }

    else
    {
      v31 = a9;
      v32 = v14;
      v33 = a8;
      v34 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v34;
  a8 = v33;
  v14 = v32;
  v24 = v31;
  v12 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v176 = *(result + 28) * a2 / v3 + *(result + 44);
  v177 = *(result + 36);
  v4 = *(result + 14);
  v5 = *(result + 12);
  v6 = *(result + 13);
  v180 = result;
  v7 = v6 * a2 / v3;
  v8 = v7 + *(result + 15);
  v9 = (v6 + v6 * a2) / v3 - v7;
  v11 = *(result + 7);
  v10 = *(result + 8);
  v13 = *(result + 16);
  v12 = *(result + 17);
  v175 = v10[2];
  v179 = v11[2];
  v14 = v12[2];
  v178 = v13[2];
  v15 = (v178 + v14 * v8 + v4);
  if (v9 >= 1)
  {
    v16 = 0;
    v17 = *(result + 19);
    v18 = *v10;
    v19 = v10[1];
    v20 = *v12;
    v21 = v12[1];
    v22 = *(v17 + 140);
    v23 = *(v17 + 142);
    v24 = *(v17 + 144);
    v25 = *(v17 + 146);
    v26 = *(v17 + 148);
    v27 = *(v17 + 150);
    v28 = *(v17 + 152);
    _S7 = *(v17 + 36);
    _S11 = *(v17 + 40);
    _S17 = *(v17 + 44);
    _S19 = *(v17 + 48);
    _S20 = *(v17 + 52);
    _S21 = *(v17 + 56);
    *&_D0 = 8191.0 / *(v17 + 128);
    _S22 = *(v17 + 60);
    _S23 = *(v17 + 64);
    v218 = v22;
    v37 = v23;
    _S1 = *&_D0 * *v17;
    v39 = v17 + 164;
    _S2 = *&_D0 * *(v17 + 8);
    _S3 = *&_D0 * *(v17 + 16);
    _S4 = *&_D0 * *(v17 + 20);
    _S5 = *&_D0 * *(v17 + 28);
    v44 = v24;
    v45 = v25;
    v46 = v26;
    *&_D0 = v27;
    v201 = v27;
    v47 = v28;
    *&_D0 = v22;
    v48 = v17 + 16548;
    v217 = _S1;
    __asm { FCVT            H8, S1 }

    v54 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v23;
    v55 = vdupq_lane_s16(*&_D0, 0);
    v192 = _S5;
    __asm { FCVT            H0, S5 }

    v191 = *&_D0;
    *&_D0 = v24;
    v56 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = v25;
    v57 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = v26;
    _Q0 = vdupq_lane_s16(*&_D0, 0);
    v215 = _Q0;
    v216 = v54;
    *_Q0.i16 = v27;
    v59 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v28;
    v60 = vdupq_lane_s16(*_Q0.i8, 0);
    v194 = _S3;
    __asm { FCVT            H0, S3 }

    v190 = *_Q0.i16;
    v61 = *(v17 + 124);
    v62 = 16 - v61;
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    v64 = *v13;
    v63 = v13[1];
    v65 = (v63 + v21 * v8 + v4);
    if (!v63)
    {
      v65 = 0;
    }

    v66 = (v64 + v20 * v8 + v4);
    v68 = *v11;
    v67 = v11[1];
    v69 = v67 + v19 * v176 + 2 * v177;
    if (!v67)
    {
      v69 = 0;
    }

    v70 = v68 + v18 * v176 + 2 * v177;
    v193 = _S4;
    __asm { FCVT            H4, S4 }

    v195 = _S2;
    __asm { FCVT            H2, S2 }

    v187 = _H2;
    v188 = _H4;
    __asm { FCVT            H2, S7 }

    v213 = _H2;
    v219 = *(v17 + 40);
    __asm { FCVT            H2, S11 }

    v211 = _H2;
    v214 = *(v17 + 44);
    __asm { FCVT            H2, S17 }

    v210 = _H2;
    v200 = *(v17 + 48);
    __asm { FCVT            H2, S19 }

    v186 = _H2;
    v199 = *(v17 + 52);
    __asm { FCVT            H2, S20 }

    v185 = _H2;
    v198 = *(v17 + 56);
    __asm { FCVT            H2, S21 }

    v184 = _H2;
    v197 = *(v17 + 60);
    __asm { FCVT            H2, S22 }

    v183 = _H2;
    v196 = *(v17 + 64);
    __asm { FCVT            H2, S23 }

    v189 = *(v17 + 68);
    __asm { FCVT            H0, S0 }

    v181 = _H0;
    v182 = _H2;
    v212 = *(v17 + 72);
    __asm { FCVT            H0, S1 }

    v209 = _H0;
    _S14 = *(v17 + 76);
    __asm { FCVT            H0, S3 }

    v208 = _H0;
    _S1 = *(v17 + 80);
    __asm { FCVT            H0, S5 }

    v207 = _H0;
    _S2 = *(v17 + 84);
    __asm { FCVT            H0, S27 }

    v206 = _H0;
    _S11 = *(v17 + 88);
    __asm { FCVT            H0, S29 }

    v205 = _H0;
    _S3 = *(v17 + 92);
    __asm { FCVT            H0, S9 }

    v204 = _H0;
    _S4 = *(v17 + 96);
    __asm { FCVT            H0, S15 }

    v203 = _H0;
    _S5 = *(v17 + 100);
    __asm { FCVT            H0, S7 }

    v202 = _H0;
    v97 = vdupq_n_s16(-v62);
    v98.i64[0] = 0x9000900090009000;
    v98.i64[1] = 0x9000900090009000;
    _S0 = *(v17 + 104);
    __asm { FCVT            H15, S16 }

    do
    {
      if (v5 < 8)
      {
        v127 = 0;
        v105 = v65;
        v104 = v66;
        v103 = v69;
        v102 = v70;
      }

      else
      {
        v101 = 0;
        v102 = v70;
        v103 = v69;
        v104 = v66;
        v105 = v65;
        do
        {
          if (v103)
          {
            v221 = vld2q_s16(v103);
            v103 += 16;
            v106 = vcvtq_f16_u16(vshlq_u16(v221.val[0], v97));
            v221.val[0] = vcvtq_f16_u16(vshlq_u16(v221.val[1], v97));
            v221.val[1] = vaddq_f16(v55, v106);
            v107 = vaddq_f16(v55, v221.val[0]);
            v108 = vmulq_n_f16(v107, v187);
            v109 = vmlaq_n_f16(vmulq_n_f16(v221.val[1], v190), v107, v188);
            v110 = vmulq_n_f16(v221.val[1], v191);
          }

          else
          {
            v110 = 0uLL;
            v109 = 0uLL;
            v108 = 0uLL;
          }

          v111 = *v102++;
          v112 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v111, v97)), v216);
          v113 = vmlaq_n_f16(v109, v112, _H8);
          v114 = vmlaq_n_f16(v110, v112, _H8);
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v108, v112, _H8), 0), v98));
          v116.i16[0] = *(v39 + 2 * v115.u16[0]);
          v116.i16[1] = *(v39 + 2 * v115.u16[1]);
          v116.i16[2] = *(v39 + 2 * v115.u16[2]);
          v116.i16[3] = *(v39 + 2 * v115.u16[3]);
          v116.i16[4] = *(v39 + 2 * v115.u16[4]);
          v116.i16[5] = *(v39 + 2 * v115.u16[5]);
          v116.i16[6] = *(v39 + 2 * v115.u16[6]);
          v116.i16[7] = *(v39 + 2 * v115.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, 0), v98));
          v113.i16[0] = *(v39 + 2 * v117.u16[0]);
          v113.i16[1] = *(v39 + 2 * v117.u16[1]);
          v113.i16[2] = *(v39 + 2 * v117.u16[2]);
          v113.i16[3] = *(v39 + 2 * v117.u16[3]);
          v113.i16[4] = *(v39 + 2 * v117.u16[4]);
          v113.i16[5] = *(v39 + 2 * v117.u16[5]);
          v113.i16[6] = *(v39 + 2 * v117.u16[6]);
          v113.i16[7] = *(v39 + 2 * v117.u16[7]);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v114, 0), v98));
          v117.i16[0] = *(v39 + 2 * v118.u16[0]);
          v117.i16[1] = *(v39 + 2 * v118.u16[1]);
          v117.i16[2] = *(v39 + 2 * v118.u16[2]);
          v117.i16[3] = *(v39 + 2 * v118.u16[3]);
          v117.i16[4] = *(v39 + 2 * v118.u16[4]);
          v117.i16[5] = *(v39 + 2 * v118.u16[5]);
          v117.i16[6] = *(v39 + 2 * v118.u16[6]);
          v117.i16[7] = *(v39 + 2 * v118.u16[7]);
          v119 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v206), v113, v205), v117, v204);
          v120 = vmulq_n_f16(v117, _H15);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v209), v113, v208), v117, v207), 0), v98));
          v122.i16[0] = *(v48 + 2 * v121.u16[0]);
          v122.i16[1] = *(v48 + 2 * v121.u16[1]);
          v122.i16[2] = *(v48 + 2 * v121.u16[2]);
          v122.i16[3] = *(v48 + 2 * v121.u16[3]);
          v122.i16[4] = *(v48 + 2 * v121.u16[4]);
          v122.i16[5] = *(v48 + 2 * v121.u16[5]);
          v122.i16[6] = *(v48 + 2 * v121.u16[6]);
          v122.i16[7] = *(v48 + 2 * v121.u16[7]);
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v98));
          v124.i16[0] = *(v48 + 2 * v123.u16[0]);
          v124.i16[1] = *(v48 + 2 * v123.u16[1]);
          v124.i16[2] = *(v48 + 2 * v123.u16[2]);
          v124.i16[3] = *(v48 + 2 * v123.u16[3]);
          v124.i16[4] = *(v48 + 2 * v123.u16[4]);
          v124.i16[5] = *(v48 + 2 * v123.u16[5]);
          v124.i16[6] = *(v48 + 2 * v123.u16[6]);
          v124.i16[7] = *(v48 + 2 * v123.u16[7]);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v120, v113, v202), v116, v203), 0), v98));
          v126.i16[0] = *(v48 + 2 * v125.u16[0]);
          result = (v48 + 2 * v125.u16[5]);
          v126.i16[1] = *(v48 + 2 * v125.u16[1]);
          v126.i16[2] = *(v48 + 2 * v125.u16[2]);
          v126.i16[3] = *(v48 + 2 * v125.u16[3]);
          v126.i16[4] = *(v48 + 2 * v125.u16[4]);
          v126.i16[5] = *result;
          v126.i16[6] = *(v48 + 2 * v125.u16[6]);
          v126.i16[7] = *(v48 + 2 * v125.u16[7]);
          *v104++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v56, v122, v213), v124, v211), v126, v210), v56), v215)));
          if (v105)
          {
            v220.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v122, v186), v124, v185), v126, v184), v59), v60), v59), v60)));
            v220.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v122, v183), v124, v182), v126, v181)));
            vst2_s8(v105, v220);
            v105 += 16;
          }

          v101 += 8;
        }

        while (v101 < v5 - 7);
        v127 = v5 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v5, v127);
      v128 = v5 - v127;
      if (!((v128 < 0) ^ _VF | (v128 == 0)))
      {
        do
        {
          if (v103)
          {
            v129 = (*v103 >> v62) - v37;
            v130 = (*(v103 + 1) >> v62) - v37;
            v103 += 2;
            v131 = v195 * v130;
            v132 = (v193 * v130) + (v129 * v194);
            v133 = v192 * v129;
          }

          else
          {
            v133 = 0.0;
            v132 = 0.0;
            v131 = 0.0;
          }

          v134 = v102->u16[0];
          v102 = (v102 + 2);
          v135 = v217 * ((v134 >> v62) - v218);
          v136 = v131 + v135;
          v137 = 8191.0;
          if (v136 <= 8191.0)
          {
            v137 = v136;
            if (v136 < 0.0)
            {
              v137 = 0.0;
            }
          }

          v138 = v132 + v135;
          v139 = (v132 + v135) <= 8191.0;
          v140 = 8191.0;
          if (v139)
          {
            v140 = v138;
            if (v138 < 0.0)
            {
              v140 = 0.0;
            }
          }

          v141 = v133 + v135;
          v142 = 8191.0;
          if (v141 <= 8191.0)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          _H20 = *(v39 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          _H21 = *(v39 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H16 = *(v39 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          v149 = ((_S14 * _S21) + (_S20 * v212)) + (_S16 * _S1);
          v150 = ((_S11 * _S21) + (_S20 * _S2)) + (_S16 * _S3);
          _S21 = ((_S5 * _S21) + (_S20 * _S4)) + (_S16 * _S0);
          LOWORD(_S16) = *(v48 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          LOWORD(_S20) = *(v48 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S21) = *(v48 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          v155 = (((v219 * _S20) + (_S7 * _S16)) + (v214 * _S21)) + v44;
          v156 = v46;
          if (v155 <= v46)
          {
            v156 = (((v219 * _S20) + (_S7 * _S16)) + (v214 * _S21)) + v44;
            if (v155 < v44)
            {
              v156 = v44;
            }
          }

          v104->i8[0] = llroundf(v156);
          v104 = (v104 + 1);
          if (v105)
          {
            v157 = ((v45 + (_S16 * v200)) + (_S20 * v199)) + (_S21 * v198);
            v158 = v47;
            if (v157 <= v47)
            {
              v158 = ((v45 + (_S16 * v200)) + (_S20 * v199)) + (_S21 * v198);
              if (v157 < v201)
              {
                v158 = v201;
              }
            }

            v159 = ((v45 + (_S16 * v197)) + (_S20 * v196)) + (_S21 * v189);
            *v105 = llroundf(v158);
            v160 = v47;
            if (v159 <= v47)
            {
              v160 = v159;
              if (v159 < v201)
              {
                v160 = v201;
              }
            }

            v105[1] = llroundf(v160);
            v105 += 2;
          }

          --v128;
        }

        while (v128);
      }

      v70 += v18;
      v69 += v19;
      v66 = (v66 + v20);
      v65 += v21;
      ++v16;
    }

    while (v16 != v9);
  }

  if (v179 && v178)
  {
    result = v175;
    if (v9 >= 1)
    {
      v161 = 0;
      v162 = v179 + v175 * v176 + 2 * v177;
      do
      {
        if (v5 >= 1)
        {
          v163 = v5;
          v164 = v15;
          v165 = v162;
          do
          {
            v166 = *v165++;
            *v164++ = llroundf(v166 * 0.0038911);
            --v163;
          }

          while (v163);
        }

        v162 += v175;
        v15 += v14;
        ++v161;
      }

      while (v9 > v161);
    }
  }

  else if (v178 && v9 >= 1)
  {
    v167 = 0;
    v168 = vdupq_n_s64(v5 - 1);
    do
    {
      if (v5 >= 1)
      {
        v169 = 0;
        do
        {
          v170 = vdupq_n_s64(v169);
          v171 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v171, *v168.i8), *v168.i8).u8[0])
          {
            v15[v169] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v171, *&v168), *&v168).i8[1])
          {
            v15[v169 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDDA0)))), *&v168).i8[2])
          {
            v15[v169 + 2] = -1;
            v15[v169 + 3] = -1;
          }

          v172 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v168, vuzp1_s16(v172, *&v168)).i32[1])
          {
            v15[v169 + 4] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(v172, *&v168)).i8[5])
          {
            v15[v169 + 5] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD80))))).i8[6])
          {
            v15[v169 + 6] = -1;
            v15[v169 + 7] = -1;
          }

          v173 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v173, *v168.i8), *v168.i8).u8[0])
          {
            v15[v169 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v173, *&v168), *&v168).i8[1])
          {
            v15[v169 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD60)))), *&v168).i8[2])
          {
            v15[v169 + 10] = -1;
            v15[v169 + 11] = -1;
          }

          v174 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v168, vuzp1_s16(v174, *&v168)).i32[1])
          {
            v15[v169 + 12] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(v174, *&v168)).i8[5])
          {
            v15[v169 + 13] = -1;
          }

          if (vuzp1_s8(*&v168, vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v170, xmmword_18FECDD40))))).i8[6])
          {
            v15[v169 + 14] = -1;
            v15[v169 + 15] = -1;
          }

          v169 += 16;
        }

        while (((v5 + 15) & 0xFFFFFFFFFFFFFFF0) != v169);
      }

      v15 += v14;
      ++v167;
    }

    while (v9 > v167);
  }

  *&v180[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_29:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v48, v25);
  v29 = v28.i64[1] + v27.i64[1];
  v30 = (*v12 * (v28.i64[1] + v27.i64[1]) + 2 * v28.i64[0]) > *a5;
  v44 = v12;
  v46 = v27;
  if (v30)
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 8) && (v12[1] * v29 + 4 * v28.i64[0]) > a5[1])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else if (*(a3 + 16) && (2 * v28.i64[0] + v12[2] * v29) > a5[2])
  {
    v31 = a9;
    v32 = v14;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v35 = vaddq_s64((*&v50 + __PAIR128__(-1, 0)), v27);
    if (v35.i64[0] + *a8 * v35.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35.i64[1] + 2 * v35.i64[0]) > a9[1])
      {
        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v35.i64[0] + a8[2] * v35.i64[1] <= a9[2])
        {
          goto LABEL_23;
        }

        v31 = a9;
        v32 = v14;
        v33 = a8;
        v34 = a7;
      }
    }

    else
    {
      v31 = a9;
      v32 = v14;
      v33 = a8;
      v34 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v34;
  a8 = v33;
  v14 = v32;
  v24 = v31;
  v12 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_28;
  }

LABEL_23:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = v12;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_28:
  if (v15 == 255)
  {
    goto LABEL_29;
  }

  return v21;
}

void *vt_Copy_xf444_TRC_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, float a4, float a5)
{
  v8 = *(result + 36);
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v11 = result[14];
  v12 = result[12];
  v13 = result[13];
  v14 = v13 * a2 / v9;
  v15 = v14 + result[15];
  v16 = (v13 + v13 * a2) / v9 - v14;
  v18 = result[7];
  v17 = result[8];
  v20 = result[16];
  v19 = result[17];
  v21 = v17[2];
  v22 = v18[2];
  v23 = v19[2];
  v24 = v20[2];
  v25 = (v24 + v23 * v15 + v11);
  if (v16 >= 1)
  {
    v26 = 0;
    v27 = result[19];
    v28 = *v17;
    v29 = v17[1];
    v30 = *v19;
    v31 = v19[1];
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a5) = *(v27 + 142);
    LOWORD(v5) = *(v27 + 144);
    LOWORD(v6) = *(v27 + 146);
    LOWORD(v7) = *(v27 + 148);
    v32 = 8191.0 / *(v27 + 128);
    v33 = LODWORD(a4);
    v34 = LODWORD(a5);
    v35 = v32 * *v27;
    v132 = v32 * *(v27 + 8);
    v131 = v32 * *(v27 + 16);
    v36 = v32 * *(v27 + 20);
    *&v37 = v32 * *(v27 + 28);
    v129 = *&v37;
    v130 = v36;
    v38 = v5;
    v39 = v6;
    v40 = v7;
    LOWORD(v37) = *(v27 + 150);
    v41 = v37;
    LOWORD(v37) = *(v27 + 152);
    v42 = v37;
    v43 = *(v27 + 36);
    v44 = *(v27 + 40);
    v45 = *(v27 + 44);
    v128 = *(v27 + 48);
    v46 = *(v27 + 52);
    v47 = *(v27 + 56);
    v48 = *(v27 + 60);
    v49 = *(v27 + 64);
    v50 = *(v27 + 68);
    v51 = *(v27 + 72);
    v53 = *(v27 + 76);
    v52 = *(v27 + 80);
    v54 = *(v27 + 84);
    v55 = *(v27 + 88);
    v56 = *(v27 + 92);
    v57 = *(v27 + 96);
    v58 = *(v27 + 100);
    v59 = *(v27 + 104);
    v60 = v27 + 164;
    v61 = v27 + 16548;
    v62 = *(v27 + 124);
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v62;
    }

    v65 = *v20;
    v64 = v20[1];
    v66 = (v64 + v31 * v15 + v11);
    if (!v64)
    {
      v66 = 0;
    }

    v67 = (v65 + v30 * v15 + v11);
    v69 = *v18;
    v68 = v18[1];
    v70 = v68 + v29 * v10 + 2 * v8;
    if (!v68)
    {
      v70 = 0;
    }

    v71 = v69 + v28 * v10 + 2 * v8;
    do
    {
      v72 = v12;
      v73 = v71;
      v74 = v70;
      v75 = v66;
      v76 = v67;
      if (v12 >= 1)
      {
        do
        {
          if (v74)
          {
            v77 = (*v74 >> v63) - v34;
            v78 = (v74[1] >> v63) - v34;
            v74 += 2;
            v79 = v132 * v78;
            v80 = (v130 * v78) + (v77 * v131);
            v81 = v129 * v77;
          }

          else
          {
            v81 = 0.0;
            v80 = 0.0;
            v79 = 0.0;
          }

          v82 = *v73++;
          v83 = v35 * ((v82 >> v63) - v33);
          v84 = v79 + v83;
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v80 + v83;
          v87 = (v80 + v83) <= 8191.0;
          v88 = 8191.0;
          if (v87)
          {
            v88 = v86;
            if (v86 < 0.0)
            {
              v88 = 0.0;
            }
          }

          v89 = v81 + v83;
          v87 = (v81 + v83) <= 8191.0;
          v90 = 8191.0;
          if (v87)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          _H0 = *(v60 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H5 = *(v60 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H4 = *(v60 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v101 = ((v53 * _S5) + (_S0 * v51)) + (_S4 * v52);
          v102 = ((v55 * _S5) + (_S0 * v54)) + (_S4 * v56);
          _S0 = ((v58 * _S5) + (_S0 * v57)) + (_S4 * v59);
          LOWORD(_S4) = *(v61 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v61 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S0) = *(v61 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S6, H0 }

          v107 = (((v44 * _S5) + (v43 * _S4)) + (v45 * _S6)) + v38;
          v108 = v40;
          if (v107 <= v40)
          {
            v108 = (((v44 * _S5) + (v43 * _S4)) + (v45 * _S6)) + v38;
            if (v107 < v38)
            {
              v108 = v38;
            }
          }

          *v76++ = llroundf(v108);
          if (v75)
          {
            v109 = ((v39 + (_S4 * v128)) + (_S5 * v46)) + (_S6 * v47);
            v110 = v42;
            if (v109 <= v42)
            {
              v110 = ((v39 + (_S4 * v128)) + (_S5 * v46)) + (_S6 * v47);
              if (v109 < v41)
              {
                v110 = v41;
              }
            }

            v111 = (v39 + (_S4 * v48)) + (_S5 * v49);
            v112 = v111 + (_S6 * v50);
            *v75 = llroundf(v110);
            v113 = v42;
            if (v112 <= v42)
            {
              v113 = v111 + (_S6 * v50);
              if (v112 < v41)
              {
                v113 = v41;
              }
            }

            v75[1] = llroundf(v113);
            v75 += 2;
          }

          --v72;
        }

        while (v72);
      }

      v71 += v28;
      v70 += v29;
      v67 += v30;
      v66 += v31;
      ++v26;
    }

    while (v26 != v16);
  }

  if (v22 && v24)
  {
    if (v16 >= 1)
    {
      v114 = 0;
      v115 = v22 + v21 * v10 + 2 * v8;
      do
      {
        if (v12 >= 1)
        {
          v116 = v12;
          v117 = v25;
          v118 = v115;
          do
          {
            v119 = *v118++;
            *v117++ = llroundf(v119 * 0.0038911);
            --v116;
          }

          while (v116);
        }

        v115 += v21;
        v25 += v23;
        ++v114;
      }

      while (v16 > v114);
    }
  }

  else if (v24 && v16 >= 1)
  {
    v120 = 0;
    v121 = vdupq_n_s64(v12 - 1);
    do
    {
      if (v12 >= 1)
      {
        v122 = 0;
        do
        {
          v123 = vdupq_n_s64(v122);
          v124 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v124, *v121.i8), *v121.i8).u8[0])
          {
            v25[v122] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v124, *&v121), *&v121).i8[1])
          {
            v25[v122 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDDA0)))), *&v121).i8[2])
          {
            v25[v122 + 2] = -1;
            v25[v122 + 3] = -1;
          }

          v125 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v121, vuzp1_s16(v125, *&v121)).i32[1])
          {
            v25[v122 + 4] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(v125, *&v121)).i8[5])
          {
            v25[v122 + 5] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD80))))).i8[6])
          {
            v25[v122 + 6] = -1;
            v25[v122 + 7] = -1;
          }

          v126 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v126, *v121.i8), *v121.i8).u8[0])
          {
            v25[v122 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v126, *&v121), *&v121).i8[1])
          {
            v25[v122 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD60)))), *&v121).i8[2])
          {
            v25[v122 + 10] = -1;
            v25[v122 + 11] = -1;
          }

          v127 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v121, vuzp1_s16(v127, *&v121)).i32[1])
          {
            v25[v122 + 12] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(v127, *&v121)).i8[5])
          {
            v25[v122 + 13] = -1;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, vmovn_s64(vcgeq_u64(v121, vorrq_s8(v123, xmmword_18FECDD40))))).i8[6])
          {
            v25[v122 + 14] = -1;
            v25[v122 + 15] = -1;
          }

          v122 += 16;
        }

        while (((v12 + 15) & 0xFFFFFFFFFFFFFFF0) != v122);
      }

      v25 += v23;
      ++v120;
    }

    while (v16 > v120);
  }

  *(result + a2 + 40) = 0;
  return result;
}