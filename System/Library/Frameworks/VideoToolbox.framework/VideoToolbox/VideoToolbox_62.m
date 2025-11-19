uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v7 = *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = (v8 + v8 * a2) / v7 - v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 24);
    v13 = *(result + 19);
    v14 = *(result + 7);
    v15 = *(result + 8);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = **(result + 17);
    *&v20 = *(v13 + 128);
    v21 = 8191.0 / *&v20;
    LOWORD(v20) = *(v13 + 140);
    v22 = v20;
    LOWORD(a5) = *(v13 + 142);
    v23 = LODWORD(a5);
    v24 = v21 * *v13;
    v25 = v21 * *(v13 + 8);
    v26 = v21 * *(v13 + 16);
    v27 = v21 * *(v13 + 20);
    v28 = v21 * *(v13 + 28);
    v29 = *(v13 + 72);
    v30 = *(v13 + 76);
    v31 = *(v13 + 80);
    v32 = *(v13 + 84);
    v33 = *(v13 + 88);
    v34 = *(v13 + 92);
    v35 = *(v13 + 96);
    v36 = *(v13 + 100);
    v37 = v13 + 164;
    v38 = v13 + 16548;
    v39 = v13 + 32932;
    v40 = *(v13 + 104);
    v41 = *(v13 + 108);
    v42 = *(v13 + 112);
    v43 = *(v13 + 116);
    v44 = *(v13 + 120);
    v45 = *(result + 28) * a2 / v7 + *(result + 44);
    v46 = *(result + 36);
    v47 = **(result + 16) + v19 * (v9 + *(result + 15)) + 16 * *(result + 14);
    v48 = v14[2];
    if (v48)
    {
      v49 = (v48 + v45 * v18 + v46);
    }

    else
    {
      v49 = 0;
    }

    v51 = *v14;
    v50 = *(*(result + 7) + 8);
    _ZF = v50 == 0;
    v53 = (v50 + v45 * v17 + v46);
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = (v51 + v45 * v16 + v46);
    do
    {
      if (v12 >= 1)
      {
        v55 = v12;
        v56 = v54;
        v57 = v47;
        v58 = v49;
        v59 = v53;
        do
        {
          if (v59)
          {
            LOBYTE(v5) = *v59;
            v60 = LODWORD(v5) - v23;
            LOBYTE(_S9) = v59[1];
            v61 = _S9 - v23;
            v59 += 2;
            v62 = v25 * v61;
            v63 = (v27 * v61) + (v60 * v26);
            v64 = v28 * v60;
          }

          else
          {
            v64 = 0.0;
            v63 = 0.0;
            v62 = 0.0;
          }

          v65 = *v56++;
          v66 = v24 * (v65 - v22);
          v67 = v62 + v66;
          v68 = (v62 + v66) <= 8191.0;
          v69 = 8191.0;
          if (v68)
          {
            v69 = v67;
            if (v67 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v63 + v66;
          v68 = (v63 + v66) <= 8191.0;
          v71 = 8191.0;
          if (v68)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v64 + v66;
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          if (v58)
          {
            v74 = *v58++;
            v5 = v74 * 0.0039216;
          }

          else
          {
            v5 = 0.0;
          }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v37 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v84 = (((v42 * _S10) + (v41 * _S9)) + (v43 * _S11)) + (v44 * fmaxf(_S9, fmaxf(_S10, _S11)));
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          _H12 = *(v38 + 2 * llroundf(v85));
          __asm { FCVT            S12, H12 }

          v88 = _S9 * _S12;
          _S10 = _S10 * _S12;
          _S11 = _S11 * _S12;
          v91 = ((v30 * _S10) + (v88 * v29)) + (_S11 * v31);
          v92 = ((v33 * _S10) + (v88 * v32)) + (_S11 * v34);
          v93 = (v36 * _S10) + (v88 * v35);
          LOWORD(_S10) = *(v39 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          v94 = v93 + (_S11 * v40);
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v39 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          v96 = llroundf(fminf(fmaxf(v94, 0.0), 8191.0));
          __asm { FCVT            S9, H11 }

          LOWORD(_S11) = *(v39 + 2 * v96);
          __asm { FCVT            S11, H11 }

          *v57 = _S10;
          *(v57 + 4) = _S9;
          if (!v58)
          {
            v5 = 1.0;
          }

          *(v57 + 8) = _S11;
          *(v57 + 12) = v5;
          v57 += 16;
          --v55;
        }

        while (v55);
      }

      v54 += v16;
      v53 += v17;
      v49 += v18;
      v47 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

int vt_Copy_444vf_TRC_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double _D0)
{
  v3 = *a1;
  v144 = a1;
  v4 = *(a1 + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 24);
    v9 = *(a1 + 19);
    v10 = *(a1 + 7);
    v11 = *(a1 + 8);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = **(a1 + 17);
    v16 = *(v9 + 140);
    v17 = *(v9 + 142);
    _S6 = *(v9 + 72);
    _S7 = *(v9 + 76);
    _S16 = *(v9 + 80);
    _S21 = *(v9 + 84);
    _S22 = *(v9 + 88);
    _S23 = *(v9 + 92);
    _S24 = *(v9 + 96);
    _S27 = *(v9 + 100);
    _S29 = *(v9 + 104);
    v27 = v9 + 164;
    v28 = 8191.0 / *(v9 + 128);
    v29 = v17;
    *&_D0 = v28 * *v9;
    _S1 = v28 * *(v9 + 8);
    _Q2.f32[0] = v28 * *(v9 + 16);
    _S3 = v28 * *(v9 + 20);
    _S4 = v28 * *(v9 + 28);
    v34 = v9 + 16548;
    v160 = *&_D0;
    v161 = v16;
    __asm { FCVT            H8, S0 }

    *&_D0 = v16;
    v40 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v17;
    v41 = vdupq_lane_s16(*&_D0, 0);
    v149 = _S4;
    v150 = _S3;
    __asm { FCVT            H0, S4 }

    v148 = _H0;
    v151 = _Q2.f32[0];
    v152 = _S1;
    __asm { FCVT            H0, S2 }

    v147 = _H0;
    __asm { FCVT            H0, S3 }

    v146 = _H0;
    __asm { FCVT            H0, S1 }

    v145 = _H0;
    v46 = _S6;
    __asm { FCVT            H0, S6 }

    v158 = _H0;
    v159 = v40;
    v48 = _S7;
    __asm { FCVT            H0, S7 }

    v157 = _H0;
    v50 = _S16;
    __asm { FCVT            H0, S16 }

    v156 = _H0;
    v52 = _S21;
    __asm { FCVT            H0, S21 }

    v155 = _H0;
    v54 = _S22;
    __asm { FCVT            H0, S22 }

    v154 = _H0;
    v56 = _S23;
    __asm { FCVT            H0, S23 }

    v153 = _H0;
    v58 = _S24;
    __asm { FCVT            H12, S24 }

    v60 = _S27;
    __asm { FCVT            H0, S27 }

    v62 = v10[2];
    v63 = *(a1 + 28) * a2 / v3 + *(a1 + 44);
    v64 = *(a1 + 36);
    v65 = (v62 + v14 * v63 + v64);
    v67 = *v10;
    v66 = v10[1];
    v68 = v66 + v13 * v63 + v64;
    v69 = **(a1 + 16) + v15 * (v5 + *(a1 + 15)) + 16 * *(a1 + 14);
    if (!v62)
    {
      v65 = 0;
    }

    if (!v66)
    {
      v68 = 0;
    }

    v70 = (v67 + v12 * v63 + v64);
    LODWORD(a1) = v8 & 0xFFFFFFF8;
    __asm { FCVT            H1, S29 }

    v72.i64[0] = 0x9000900090009000;
    v72.i64[1] = 0x9000900090009000;
    do
    {
      if (v8 < 8)
      {
        v113 = 0;
        v77 = v68;
        v76 = v65;
        v75 = v69;
        v74 = v70;
      }

      else
      {
        v73 = 0;
        v74 = v70;
        v75 = v69;
        v76 = v65;
        v77 = v68;
        do
        {
          if (v77)
          {
            v162 = vld2_s8(v77);
            v77 += 16;
            *v78.i8 = vzip1_s8(*v162.i8, 0);
            v78.u64[1] = vzip2_s8(*v162.i8, 0);
            *v79.i8 = vzip1_s8(v162.u64[1], 0);
            v79.u64[1] = vzip2_s8(v162.u64[1], 0);
            *(&v162 + 8) = vaddq_f16(v41, vcvtq_f16_u16(v78));
            v162 = vaddq_f16(v41, vcvtq_f16_u16(v79));
            v80 = vmulq_n_f16(v162, v145);
            v81 = vmlaq_n_f16(vmulq_n_f16(*(&v162 + 8), v147), v162, v146);
            v82 = vmulq_n_f16(*(&v162 + 8), v148);
          }

          else
          {
            v82 = 0uLL;
            v81 = 0uLL;
            v80 = 0uLL;
          }

          v83 = *v74++;
          v84 = v83;
          if (v76)
          {
            v85 = *v76++;
            v86 = v85;
          }

          else
          {
            v86 = 0;
          }

          *v87.i8 = vzip1_s8(v84, 0);
          v87.u64[1] = vzip2_s8(v84, 0);
          v88 = vsubq_f16(vcvtq_f16_u16(v87), v159);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v80, v88, _H8), 0), v72));
          v90.i16[0] = *(v27 + 2 * v89.u16[0]);
          v90.i16[1] = *(v27 + 2 * v89.u16[1]);
          v90.i16[2] = *(v27 + 2 * v89.u16[2]);
          v90.i16[3] = *(v27 + 2 * v89.u16[3]);
          v90.i16[4] = *(v27 + 2 * v89.u16[4]);
          v90.i16[5] = *(v27 + 2 * v89.u16[5]);
          v90.i16[6] = *(v27 + 2 * v89.u16[6]);
          v90.i16[7] = *(v27 + 2 * v89.u16[7]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v81, v88, _H8), 0), v72));
          v92.i16[0] = *(v27 + 2 * v91.u16[0]);
          v92.i16[1] = *(v27 + 2 * v91.u16[1]);
          v92.i16[2] = *(v27 + 2 * v91.u16[2]);
          v92.i16[3] = *(v27 + 2 * v91.u16[3]);
          v92.i16[4] = *(v27 + 2 * v91.u16[4]);
          v92.i16[5] = *(v27 + 2 * v91.u16[5]);
          v92.i16[6] = *(v27 + 2 * v91.u16[6]);
          v92.i16[7] = *(v27 + 2 * v91.u16[7]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v82, v88, _H8), 0), v72));
          v94.i16[0] = *(v27 + 2 * v93.u16[0]);
          v94.i16[1] = *(v27 + 2 * v93.u16[1]);
          v94.i16[2] = *(v27 + 2 * v93.u16[2]);
          v94.i16[3] = *(v27 + 2 * v93.u16[3]);
          v94.i16[4] = *(v27 + 2 * v93.u16[4]);
          v94.i16[5] = *(v27 + 2 * v93.u16[5]);
          v94.i16[6] = *(v27 + 2 * v93.u16[6]);
          v94.i16[7] = *(v27 + 2 * v93.u16[7]);
          v95 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v90, v155), v92, v154), v94, v153);
          v102 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, _H1), v92, _H0), v90, _H12);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v90, v158), v92, v157), v94, v156), 0), v72));
          v97.i16[0] = *(v34 + 2 * v96.u16[0]);
          v97.i16[1] = *(v34 + 2 * v96.u16[1]);
          v97.i16[2] = *(v34 + 2 * v96.u16[2]);
          v97.i16[3] = *(v34 + 2 * v96.u16[3]);
          v97.i16[4] = *(v34 + 2 * v96.u16[4]);
          v97.i16[5] = *(v34 + 2 * v96.u16[5]);
          v97.i16[6] = *(v34 + 2 * v96.u16[6]);
          v97.i16[7] = *(v34 + 2 * v96.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v72));
          v99.i16[0] = *(v34 + 2 * v98.u16[0]);
          v99.i16[1] = *(v34 + 2 * v98.u16[1]);
          v99.i16[2] = *(v34 + 2 * v98.u16[2]);
          v99.i16[3] = *(v34 + 2 * v98.u16[3]);
          v99.i16[4] = *(v34 + 2 * v98.u16[4]);
          v99.i16[5] = *(v34 + 2 * v98.u16[5]);
          v99.i16[6] = *(v34 + 2 * v98.u16[6]);
          v99.i16[7] = *(v34 + 2 * v98.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v102, 0), v72));
          v102.i16[0] = *(v34 + 2 * v100.u16[0]);
          v101 = (v34 + 2 * v100.u16[7]);
          v102.i16[1] = *(v34 + 2 * v100.u16[1]);
          v102.i16[2] = *(v34 + 2 * v100.u16[2]);
          v102.i16[3] = *(v34 + 2 * v100.u16[3]);
          v102.i16[4] = *(v34 + 2 * v100.u16[4]);
          v102.i16[5] = *(v34 + 2 * v100.u16[5]);
          v102.i16[6] = *(v34 + 2 * v100.u16[6]);
          if (v76)
          {
            *v103.i8 = vzip1_s8(v86, 0);
            v103.u64[1] = vzip2_s8(v86, 0);
            v104 = vmulq_f16(vcvtq_f16_u16(v103), vdupq_n_s16(0x1C04u));
            _Q16 = vcvtq_f32_f16(*v104.i8);
            v106 = vcvtq_f32_f16(*&vextq_s8(v104, v104, 8uLL));
          }

          else
          {
            __asm { FMOV            V16.4S, #1.0 }

            v106 = _Q16;
          }

          v107 = vcvtq_f32_f16(*v97.i8);
          v108 = vcvtq_f32_f16(*v99.i8);
          v102.i16[7] = *v101;
          v109 = vcvtq_f32_f16(*v102.i8);
          _Q2 = vcvtq_f32_f16(*&vextq_s8(v97, v97, 8uLL));
          v110 = vcvtq_f32_f16(*&vextq_s8(v99, v99, 8uLL));
          v111 = vcvtq_f32_f16(*&vextq_s8(v102, v102, 8uLL));
          a1 = v75 + 128;
          vst4q_f32(v75, *(&_Q16 - 3));
          v112 = (v75 + 64);
          vst4q_f32(v112, *_Q2.f32);
          v75 = a1;
          v73 += 8;
        }

        while (v73 < v8 - 7);
        v113 = v8 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v8, v113);
      v114 = v8 - v113;
      if (!((v114 < 0) ^ _VF | (v114 == 0)))
      {
        do
        {
          if (v77)
          {
            _Q2.i8[0] = *v77;
            *&v115 = _Q2.u32[0];
            v116 = *&v115 - v29;
            LOBYTE(v115) = *(v77 + 1);
            v117 = v115 - v29;
            v77 += 2;
            v118 = v152 * v117;
            _Q2.f32[0] = (v150 * v117) + (v116 * v151);
            v119 = v149 * v116;
          }

          else
          {
            v119 = 0.0;
            _Q2.i32[0] = 0;
            v118 = 0.0;
          }

          v120 = v74->u8[0];
          v74 = (v74 + 1);
          v121 = v160 * (v120 - v161);
          v122 = v118 + v121;
          v123 = 8191.0;
          if (v122 <= 8191.0)
          {
            v123 = v122;
            if (v122 < 0.0)
            {
              v123 = 0.0;
            }
          }

          v124 = _Q2.f32[0] + v121;
          v125 = 8191.0;
          if (v124 <= 8191.0)
          {
            v125 = v124;
            if (v124 < 0.0)
            {
              v125 = 0.0;
            }
          }

          v126 = 8191.0;
          if ((v119 + v121) <= 8191.0)
          {
            v126 = v119 + v121;
            if ((v119 + v121) < 0.0)
            {
              v126 = 0.0;
            }
          }

          if (v76)
          {
            v127 = v76->u8[0];
            v76 = (v76 + 1);
            v128 = v127 * 0.0039216;
          }

          else
          {
            v128 = 0.0;
          }

          _H2 = *(v27 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H4 = *(v27 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v27 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v135 = ((v48 * _S4) + (_S2 * v46)) + (_S5 * v50);
          v136 = ((v54 * _S4) + (_S2 * v52)) + (_S5 * v56);
          v137 = (v60 * _S4) + (_S2 * v58);
          LOWORD(_S4) = *(v34 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          v138 = v137 + (_S5 * _S29);
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0)));
          LODWORD(a1) = llroundf(fminf(fmaxf(v138, 0.0), 8191.0));
          __asm { FCVT            S2, H5 }

          _H3 = *(v34 + 2 * a1);
          __asm { FCVT            S3, H3 }

          *v75 = _S4;
          *(v75 + 1) = _S2;
          _Q2.i32[0] = 1.0;
          if (v76)
          {
            _Q2.f32[0] = v128;
          }

          *(v75 + 2) = _S3;
          *(v75 + 3) = _Q2.i32[0];
          v75 += 16;
          --v114;
        }

        while (v114);
      }

      v70 = (v70 + v12);
      v68 += v13;
      v65 = (v65 + v14);
      v69 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&v144[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_444vf_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_TRC_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 24);
    v12 = *(result + 19);
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v12 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v12 + 140);
    v21 = v19;
    LOWORD(a5) = *(v12 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v12;
    v24 = v20 * *(v12 + 8);
    v25 = v20 * *(v12 + 16);
    v26 = v20 * *(v12 + 20);
    v27 = v20 * *(v12 + 28);
    v28 = *(v12 + 72);
    v29 = *(v12 + 76);
    v30 = *(v12 + 80);
    v31 = *(v12 + 84);
    v32 = *(v12 + 88);
    v33 = *(v12 + 92);
    v34 = *(v12 + 96);
    v35 = *(v12 + 100);
    v36 = *(v12 + 104);
    v37 = v12 + 164;
    v38 = v12 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 16 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = (v44 + v39 * v16 + v40);
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v11 >= 1)
      {
        v48 = v11;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        v52 = v46;
        do
        {
          if (v52)
          {
            LOBYTE(v5) = *v52;
            *&v53 = LODWORD(v5);
            v54 = *&v53 - v22;
            LOBYTE(v53) = v52[1];
            v55 = v53 - v22;
            v52 += 2;
            v56 = v24 * v55;
            v57 = (v26 * v55) + (v54 * v25);
            v58 = v27 * v54;
          }

          else
          {
            v58 = 0.0;
            v57 = 0.0;
            v56 = 0.0;
          }

          v59 = *v49++;
          v60 = v23 * (v59 - v21);
          v61 = v56 + v60;
          v62 = (v56 + v60) <= 8191.0;
          v63 = 8191.0;
          if (v62)
          {
            v63 = v61;
            if (v61 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v57 + v60;
          v62 = (v57 + v60) <= 8191.0;
          v65 = 8191.0;
          if (v62)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          v66 = v58 + v60;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          if (v51)
          {
            v68 = *v51++;
            v69 = v68 * 0.0039216;
          }

          else
          {
            v69 = 0.0;
          }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H30 = *(v37 + 2 * llroundf(fminf(fmaxf(v65, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v80 = ((v29 * _S30) + (_S28 * v28)) + (_S31 * v30);
          v81 = ((v32 * _S30) + (_S28 * v31)) + (_S31 * v33);
          v82 = (v35 * _S30) + (_S28 * v34);
          LOWORD(_S30) = *(v38 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          v83 = v82 + (_S31 * v36);
          __asm { FCVT            S30, H30 }

          LOWORD(_S31) = *(v38 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          v85 = llroundf(fminf(fmaxf(v83, 0.0), 8191.0));
          __asm { FCVT            S28, H31 }

          LOWORD(_S31) = *(v38 + 2 * v85);
          __asm { FCVT            S31, H31 }

          *v50 = _S30;
          *(v50 + 4) = _S28;
          if (v51)
          {
            v5 = v69;
          }

          else
          {
            v5 = 1.0;
          }

          *(v50 + 8) = _S31;
          *(v50 + 12) = v5;
          v50 += 16;
          --v48;
        }

        while (v48);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 24);
    v12 = *(result + 19);
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    v19 = *(v12 + 140);
    v20 = *(v12 + 142);
    v21 = v19;
    v22 = v20;
    *v2.i32 = 1.0 / *(v12 + 128);
    _S3 = *v2.i32 * *v12;
    _S4 = *v2.i32 * *(v12 + 8);
    _S5 = *v2.i32 * *(v12 + 16);
    _S6 = *v2.i32 * *(v12 + 20);
    _S7 = *v2.i32 * *(v12 + 28);
    __asm { FCVT            H8, S3 }

    *v2.i16 = v19;
    v33 = vdupq_lane_s16(v2, 0);
    *v3.i16 = -v20;
    v34 = vdupq_lane_s16(v3, 0);
    __asm
    {
      FCVT            H9, S7
      FCVT            H10, S5
      FCVT            H11, S6
      FCVT            H12, S4
    }

    v39 = v13[2];
    v40 = *(result + 28) * a2 / v6 + *(result + 44);
    v41 = *(result + 36);
    v42 = (v39 + v17 * v40 + v41);
    v44 = *v13;
    v43 = v13[1];
    v45 = v43 + v16 * v40 + v41;
    v46 = **(result + 16) + v18 * (v8 + *(result + 15)) + 16 * *(result + 14);
    if (!v39)
    {
      v42 = 0;
    }

    if (!v43)
    {
      v45 = 0;
    }

    v47 = (v44 + v15 * v40 + v41);
    __asm { FMOV            V19.4S, #1.0 }

    while (1)
    {
      if (v11 < 8)
      {
        v80 = 0;
        v53 = v45;
        v52 = v42;
        v51 = v46;
        v50 = v47;
      }

      else
      {
        v49 = 0;
        v50 = v47;
        v51 = v46;
        v52 = v42;
        v53 = v45;
        do
        {
          if (v53)
          {
            v89 = vld2_s8(v53);
            v53 += 16;
            *v54.i8 = vzip1_s8(*v89.i8, 0);
            v54.u64[1] = vzip2_s8(*v89.i8, 0);
            *v55.i8 = vzip1_s8(v89.u64[1], 0);
            v55.u64[1] = vzip2_s8(v89.u64[1], 0);
            v89 = vcvtq_f16_u16(v55);
            v56 = vaddq_f16(v34, vcvtq_f16_u16(v54));
            v89 = vaddq_f16(v34, v89);
            v57 = vmulq_n_f16(v89, _H12);
            v58 = vmlaq_n_f16(vmulq_n_f16(v56, _H10), v89, _H11);
            v59 = vmulq_n_f16(v56, _H9);
          }

          else
          {
            v59 = 0uLL;
            v58 = 0uLL;
            v57 = 0uLL;
          }

          v60 = *v50++;
          v61 = v60;
          if (v52)
          {
            v62 = *v52++;
            *v63.i8 = vzip1_s8(v62, 0);
            v63.u64[1] = vzip2_s8(v62, 0);
            v64 = vmulq_f16(vcvtq_f16_u16(v63), vdupq_n_s16(0x1C04u));
            v65 = vcvtq_f32_f16(*v64.i8);
            v66 = vcvtq_f32_f16(*&vextq_s8(v64, v64, 8uLL));
          }

          else
          {
            v65 = _Q19;
            v66 = _Q19;
          }

          *v67.i8 = vzip1_s8(v61, 0);
          v67.u64[1] = vzip2_s8(v61, 0);
          v68 = vsubq_f16(vcvtq_f16_u16(v67), v33);
          v69 = vmlaq_n_f16(v57, v68, _H8);
          v70 = vmlaq_n_f16(v58, v68, _H8);
          v71 = vmlaq_n_f16(v59, v68, _H8);
          v72 = vcvtq_f32_f16(*v69.i8);
          v73 = vcvtq_f32_f16(*v70.i8);
          v74 = vcvtq_f32_f16(*v71.i8);
          v5 = vextq_s8(v69, v69, 8uLL).u64[0];
          v75 = vcvtq_f32_f16(v5);
          v4 = vextq_s8(v70, v70, 8uLL).u64[0];
          v76 = vcvtq_f32_f16(v4);
          v77 = vcvtq_f32_f16(*&vextq_s8(v71, v71, 8uLL));
          v78 = v51 + 128;
          vst4q_f32(v51, *(&v65 - 3));
          v79 = (v51 + 64);
          vst4q_f32(v79, *(&v66 - 3));
          v51 = v78;
          v49 += 8;
        }

        while (v49 < v11 - 7);
        v80 = v11 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v11, v80);
      v81 = v11 - v80;
      if (!((v81 < 0) ^ _VF | (v81 == 0)))
      {
        break;
      }

LABEL_28:
      v47 = (v47 + v15);
      v45 += v16;
      v42 = (v42 + v17);
      v46 += v18;
      if (++v10 == v9)
      {
        goto LABEL_29;
      }
    }

    while (1)
    {
      v82 = 0.0;
      if (!v53)
      {
        break;
      }

      v4.i8[0] = *v53;
      v83 = v4.u32[0] - v22;
      v5.i8[0] = *(v53 + 1);
      v84 = v5.u32[0] - v22;
      v53 += 2;
      v85 = _S4 * v84;
      *v5.i32 = (_S6 * v84) + (v83 * _S5);
      *v4.i32 = _S7 * v83;
      if (v52)
      {
        goto LABEL_21;
      }

LABEL_22:
      v87 = v50->u8[0];
      v50 = (v50 + 1);
      v88 = _S3 * (v87 - v21);
      *v5.i32 = *v5.i32 + v88;
      *v4.i32 = *v4.i32 + v88;
      *v51 = v85 + v88;
      *(v51 + 4) = v5.i32[0];
      if (!v52)
      {
        v82 = 1.0;
      }

      *(v51 + 8) = v4.i32[0];
      *(v51 + 12) = v82;
      v51 += 16;
      if (!--v81)
      {
        goto LABEL_28;
      }
    }

    v4.i32[0] = 0;
    v5.i32[0] = 0;
    v85 = 0.0;
    if (!v52)
    {
      goto LABEL_22;
    }

LABEL_21:
    v86 = v52->u8[0];
    v52 = (v52 + 1);
    v82 = v86 * 0.0039216;
    goto LABEL_22;
  }

LABEL_29:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_444vf_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v42 = a2[1];
  v43 = v16;
  v18 = *a6;
  v17 = a6[1];
  v44 = a2[2];
  v45 = v18;
  v41 = v17;
  v46 = a6[2];
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_19:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v39 - v21;
    bzero(&v39 - v21, v22);
  }

  v23 = a9;
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v43), vsubq_s64(v43, v44), v42);
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v45), vsubq_s64(v45, v46), v41);
  v26 = vbslq_s8(vcgtq_s64(v25, v24), v24, v25);
  v27 = v44.i64[1];
  v28 = vaddq_s64((*&v44 + __PAIR128__(-1, 0)), v26);
  if ((v28.i64[0] + *a4 * v28.i64[1] > *a5 || *(a3 + 8) && (a4[1] * v28.i64[1] + 2 * v28.i64[0]) > a5[1] || *(a3 + 16) && v28.i64[0] + a4[2] * v28.i64[1] > a5[2] || (v29.i64[0] = v26.i64[0], v29.i64[1] = -1, v30 = vaddq_s64(v46, v29), (*a8 * (v30.i64[1] + v26.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v40 = v44.i64[1], v41 = v26, v42.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v23 = v42.i64[0], v26 = v41, v27 = v40, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v44.i64[0];
    *(v19 + 4) = v43;
    *(v19 + 20) = v26;
    *(v19 + 36) = v32;
    *(v19 + 44) = v27;
    v33 = v46;
    *(v19 + 5) = v45;
    *(v19 + 6) = v26;
    *(v19 + 7) = v33;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_444vf_rgb_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v19 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v20 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_444vf_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v7 = *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = (v8 + v8 * a2) / v7 - v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 24);
    v13 = *(result + 19);
    v14 = *(result + 7);
    v15 = *(result + 8);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = **(result + 17);
    *&v20 = *(v13 + 128);
    v21 = 1.0 / *&v20;
    LOWORD(v20) = *(v13 + 140);
    v22 = v20;
    LOWORD(a5) = *(v13 + 142);
    v23 = LODWORD(a5);
    v24 = v21 * *v13;
    v25 = v21 * *(v13 + 8);
    v26 = v21 * *(v13 + 16);
    v27 = v21 * *(v13 + 20);
    v28 = v21 * *(v13 + 28);
    v29 = *(result + 28) * a2 / v7 + *(result + 44);
    v30 = *(result + 36);
    v31 = **(result + 16) + v19 * (v9 + *(result + 15)) + 16 * *(result + 14);
    v32 = v14[2];
    if (v32)
    {
      v33 = (v32 + v29 * v18 + v30);
    }

    else
    {
      v33 = 0;
    }

    v34 = *v14;
    v35 = *(*(result + 7) + 8);
    v36 = v35 == 0;
    v37 = (v35 + v29 * v17 + v30);
    if (v36)
    {
      v37 = 0;
    }

    v38 = (v34 + v29 * v16 + v30);
    while (v12 < 1)
    {
LABEL_19:
      v38 += v16;
      v37 += v17;
      v33 += v18;
      v31 += v19;
      if (++v11 == v10)
      {
        goto LABEL_20;
      }
    }

    v39 = v12;
    v40 = v38;
    v41 = v31;
    v42 = v33;
    v43 = v37;
    while (1)
    {
      v44 = 0.0;
      if (!v43)
      {
        break;
      }

      LOBYTE(v5) = *v43;
      v45 = LODWORD(v5) - v23;
      LOBYTE(v6) = v43[1];
      v46 = LODWORD(v6) - v23;
      v43 += 2;
      v47 = v25 * v46;
      v48 = (v27 * v46) + (v45 * v26);
      v49 = v28 * v45;
      if (v42)
      {
        goto LABEL_12;
      }

LABEL_13:
      v51 = *v40++;
      v52 = v24 * (v51 - v22);
      v6 = v48 + v52;
      v5 = v49 + v52;
      *v41 = v47 + v52;
      v41[1] = v6;
      if (!v42)
      {
        v44 = 1.0;
      }

      v41[2] = v5;
      v41[3] = v44;
      v41 += 4;
      if (!--v39)
      {
        goto LABEL_19;
      }
    }

    v49 = 0.0;
    v48 = 0.0;
    v47 = 0.0;
    if (!v42)
    {
      goto LABEL_13;
    }

LABEL_12:
    v50 = *v42++;
    v44 = v50 * 0.0039216;
    goto LABEL_13;
  }

LABEL_20:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t jpeg_predecompress(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, int a6)
{
  v10 = 0;
  LODWORD(result) = marker_detect(a1, a2, &v10 + 1, &v10, a5, a6);
  if (a3 && SHIDWORD(v10) < *a3)
  {
    *a3 = HIDWORD(v10);
  }

  if (a4 && v10 < *a4)
  {
    *a4 = v10;
  }

  if (result == -12904 || result == 0)
  {
    return result;
  }

  else
  {
    return 4294954387;
  }
}

uint64_t jpeg_decompress(uint64_t a1, uint64_t a2, CVPixelBufferRef pixelBuffer, int a4, int a5, int a6)
{
  v32[25] = *MEMORY[0x1E69E9840];
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v14 = BytesPerRow;
  if (a6 == 2)
  {
    v15 = BytesPerRow;
  }

  else
  {
    v15 = 0;
  }

  v16 = (a6 - 1) < 2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  extraRowsOnBottom = 0;
  CVPixelBufferGetExtendedPixels(pixelBuffer, 0, 0, 0, &extraRowsOnBottom);
  v18 = *(a1 + 4096);
  result = 4294954394;
  if (v18 > 0x20)
  {
    if (v18 == 34)
    {
      v28 = a4;
      v29 = a5;
      v21 = 16;
      v20 = 16;
    }

    else
    {
      if (v18 != 33)
      {
        return result;
      }

      v28 = a4;
      v29 = a5;
      v20 = 8;
      v21 = 16;
    }
  }

  else if (v18 == 17)
  {
    v28 = a4;
    v29 = a5;
    v21 = 8;
    v20 = 8;
  }

  else
  {
    if (v18 != 18)
    {
      return result;
    }

    v28 = a4;
    v29 = a5;
    v20 = 16;
    v21 = 8;
  }

  result = GetConversionRoutine(a1, (a1 + 3192), a1 + 3200, BaseAddress + v15, v14 << v16, *(a1 + 3274), (a1 + 3405), *(a1 + 3276), PixelFormatType, 1);
  if (!result)
  {
    v22 = (v29 + v20 - 1) & -v20;
    jpegPlanarOutput_setup(PixelFormatType, v21, v20, pixelBuffer, v31);
    if (v22 < 1)
    {
      return 0;
    }

    else
    {
      LOWORD(v23) = 0;
      v24 = (((v28 + v21 - 1) & -v21) / v21);
      while (!getyuvMB(a1, a2, a1 + 3176, v31, PixelFormatType, v24))
      {
        v25 = v32;
        v26 = 3;
        do
        {
          v27 = *(v25 - 4) + *v25;
          *(v25 - 4) = v27;
          *(v25 - 3) = v27;
          v25 += 10;
          --v26;
        }

        while (v26);
        v23 = (v23 + v20);
        if (v23 >= v22)
        {
          return 0;
        }
      }

      return 4294954387;
    }
  }

  return result;
}

void jpegPlanarOutput_setup(signed int a1, unint64_t a2, uint64_t a3, CVPixelBufferRef pixelBuffer, _OWORD *a5)
{
  extraRowsOnBottom = 0;
  *a5 = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[7] = 0u;
  a5[8] = 0u;
  a5[9] = 0u;
  a5[10] = 0u;
  a5[11] = 0u;
  a5[12] = 0u;
  a5[13] = 0u;
  a5[14] = 0u;
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
    HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
    PlaneCount = 1;
  }

  CVPixelBufferGetExtendedPixels(pixelBuffer, 0, 0, 0, &extraRowsOnBottom);
  if (a1 <= 1278555700)
  {
    if (a1 == 32)
    {
LABEL_12:
      v13 = 4 * a2;
LABEL_14:
      a2 = v13;
      goto LABEL_15;
    }

    if (a1 != 846624121)
    {
      v12 = 1111970369;
      goto LABEL_11;
    }

LABEL_13:
    v13 = 2 * a2;
    goto LABEL_14;
  }

  if (a1 == 1278555701 || a1 == 2037741171)
  {
    goto LABEL_13;
  }

  v12 = 1983131704;
LABEL_11:
  if (a1 == v12)
  {
    goto LABEL_12;
  }

LABEL_15:
  v14 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], a1);
  v15 = 0;
  key = *MEMORY[0x1E69662D8];
  if (PlaneCount <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = PlaneCount;
  }

  v22 = v16;
  v17 = a5 + 40;
  do
  {
    v18 = a1 == 2033463856;
    v19 = v15 != 0;
    if (!v15)
    {
      v18 = 0;
    }

    *(v17 - 5) = BaseAddressOfPlane;
    *(v17 - 1) = BytesPerRowOfPlane;
    *v17 = (BytesPerRowOfPlane * a3) >> v19;
    *(v17 + 1) = a2 >> v18;
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      Value = CFDictionaryGetValue(v14, key);
      CFArrayGetValueAtIndex(Value, v15);
      FigCFDictionaryGetInt32IfPresent();
    }

    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    *(v17 + 2) = 0;
    *(v17 + 3) = (8 * BytesPerRowOfPlane) >> v19;
    *(v17 - 4) = BaseAddressOfPlane;
    *(v17 - 3) = BaseAddressOfPlane;
    *(v17 - 2) = &BaseAddressOfPlane[((extraRowsOnBottom >> v19) + HeightOfPlane) * BytesPerRowOfPlane];
    v17[32] = v15++ != 0;
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v15);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v15);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, v15);
    v17 += 80;
  }

  while (v22 != v15);
  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t jpeg_decompressProgressive(uint64_t a1, uint64_t a2, CVPixelBufferRef pixelBuffer, int a4, int a5)
{
  v50[25] = *MEMORY[0x1E69E9840];
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  extraRowsOnBottom = 0;
  CVPixelBufferGetExtendedPixels(pixelBuffer, 0, 0, 0, &extraRowsOnBottom);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *(a1 + 5984) = &BaseAddress[(extraRowsOnBottom + Height) * BytesPerRow];
  v13 = *(a1 + 4096);
  v14 = -12902;
  if (v13 > 0x20)
  {
    if (v13 == 34)
    {
      v16 = 16;
      v15 = 16;
    }

    else
    {
      if (v13 != 33)
      {
        goto LABEL_44;
      }

      v15 = 8;
      v16 = 16;
    }
  }

  else if (v13 == 17)
  {
    v16 = 8;
    v15 = 8;
  }

  else
  {
    if (v13 != 18)
    {
      goto LABEL_44;
    }

    v15 = 16;
    v16 = 8;
  }

  result = GetConversionRoutine(a1, (a1 + 3192), a1 + 3200, BaseAddress, BytesPerRow, *(a1 + 3274), (a1 + 3405), *(a1 + 3276), PixelFormatType, 1);
  if (result)
  {
    return result;
  }

  v18 = (a5 + v15 - 1) & -v15;
  jpegPlanarOutput_setup(PixelFormatType, v16, v15, pixelBuffer, v49);
  v19 = a1 + 4200;
  *(a1 + 4216) = 0;
  *(a1 + 4200) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0u;
  *(a1 + 4136) = *(a1 + 3400);
  *(a1 + 4140) = *(a1 + 3401);
  *(a1 + 4144) = *(a1 + 3402);
  *(a1 + 4148) = *(a1 + 3405);
  *(a1 + 4152) = *(a1 + 3406);
  *(a1 + 4156) = *(a1 + 3407);
  v46 = (a4 + v16 - 1) & -v16;
  *(a1 + 4384) = (v16 + v46 - 1) / v16;
  *(a1 + 4388) = (v15 + v18 - 1) / v15;
  if (*(a1 + 4132) >= 1)
  {
    v20 = 0;
    v21 = a1 + 4160;
    v22 = v46 | 7;
    if (v46 < 0)
    {
      v22 = v46 + 14;
    }

    v23 = v22 >> 3;
    if (v23 >= 0)
    {
      v24 = v23 & 1;
    }

    else
    {
      v24 = -(v23 & 1);
    }

    v25 = v18 | 7;
    if (v18 < 0)
    {
      v25 = v18 + 14;
    }

    v26 = a1 + 4172;
    v27 = v25 >> 3;
    v28 = v27 < 0;
    v29 = v27 & 1;
    if (v28)
    {
      v30 = -v29;
    }

    else
    {
      v30 = v29;
    }

    do
    {
      *(v21 + 4 * v20) = 0;
      v31 = *(a1 + 4148 + 4 * v20);
      if (v31 >> 4 != 1)
      {
        if (v31 >> 4 != 2)
        {
          goto LABEL_43;
        }

        *(v21 + 4 * v20) = v24;
      }

      *(v26 + 4 * v20) = 0;
      v32 = v31 & 0xF;
      if (v32 != 1)
      {
        if (v32 != 2)
        {
          goto LABEL_43;
        }

        *(v26 + 4 * v20) = v30;
      }

      ++v20;
      v33 = *(a1 + 4132);
    }

    while (v33 > v20);
    if (v33 >= 1)
    {
      v34 = 0;
      do
      {
        v35 = v34;
        v36 = *(a1 + 4136 + 4 * v34);
        if (v36 >= 1)
        {
          v37 = (v36 * *(a1 + 4384) * *(a1 + 4388)) << 7;
          *(a1 + 4272 + 8 * v35) = 0;
          *(v19 + 8 * v35) = 0;
          *(a1 + 4224 + 8 * v35) = v37;
          v38 = malloc_type_calloc(1uLL, v37, 0x1000040BDFB0063uLL);
          *(v19 + 8 * v35) = v38;
          if (!v38)
          {
            v14 = -12904;
            goto LABEL_44;
          }

          *(a1 + 4248 + 8 * v35) = v38;
          v33 = *(a1 + 4132);
        }

        v34 = v35 + 1;
      }

      while (v33 > (v35 + 1));
    }
  }

  v14 = consume_progressive_mode_markers(a1, a2);
  if (!v14)
  {
    *(a1 + 4360) = *(a1 + 3280);
    *(a1 + 4376) = *(a1 + 3296);
    if (v18 < 1)
    {
LABEL_42:
      v14 = 0;
    }

    else
    {
      LOWORD(v39) = 0;
      while (!getyuvMB(a1, a2, a1 + 3176, v49, PixelFormatType, (v46 / v16)))
      {
        v40 = v50;
        v41 = 3;
        do
        {
          v42 = *(v40 - 4) + *v40;
          *(v40 - 4) = v42;
          *(v40 - 3) = v42;
          v40 += 10;
          --v41;
        }

        while (v41);
        v39 = (v39 + v15);
        if (v39 >= v18)
        {
          goto LABEL_42;
        }
      }

LABEL_43:
      v14 = -12909;
    }
  }

LABEL_44:
  v43 = 0;
  v44 = a1 + 4200;
  do
  {
    v45 = *(v44 + v43);
    if (v45)
    {
      free(v45);
      *(v44 + v43) = 0;
    }

    v43 += 8;
  }

  while (v43 != 24);
  return v14;
}

intptr_t VTMotionEstimationSessionCompleteFrames(_BYTE *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
    if (v2 == qword_1EAD31D80)
    {
      if (a1[16])
      {
        VTMotionEstimationSessionCompleteFrames_cold_2(&v5);
        return v5;
      }

      else
      {

        return vtMotionEstimationSessionCompleteFramesInternal(a1);
      }
    }

    else
    {
      VTMotionEstimationSessionCompleteFrames_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    VTMotionEstimationSessionCompleteFrames_cold_3(&v6);
    return v6;
  }
}

uint64_t RegisterVTMotionEstimationSession()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1EAD31D80 = v0;
  sVTMotionEstimationSessionPropertyCallbacks = 0;
  *algn_1EAD31D48 = VTMotionEstimationSessionCopySupportedPropertyDictionary;
  qword_1EAD31D50 = VTMotionEstimationSessionSetProperty;
  qword_1EAD31D58 = VTMotionEstimationSessionCopyProperty;
  qword_1EAD31D60 = VTMotionEstimationSessionSetProperties;
  qword_1EAD31D68 = VTMotionEstimationSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTMotionEstimationSessionPropertyCallbacks, v0);
}

uint64_t VTMotionEstimationProcessorSelectAndCreateInstance()
{
  cf = 0;
  v4 = 0;
  InstanceFunction = vtMotionEstimationSessionGetProcessorCreateInstanceFunction();
  if (InstanceFunction)
  {
    v1 = InstanceFunction;
    VTMotionEstimationProcessorSelectAndCreateInstance_cold_1();
  }

  else
  {
    VTMotionEstimationProcessorSelectAndCreateInstance_cold_4();
    return 0;
  }

  return v1;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes(void *a1, CFDictionaryRef *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
    if (v4 == qword_1EAD31D80)
    {
      if (a2)
      {
        v5 = a1[20];
        if (v5)
        {

          return VTCompressionSessionRemote_CopySourcePixelBufferAttributes(v5);
        }

        else
        {
          FigSimpleMutexLock();
          v7 = a1[9];
          if (v7)
          {
            Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v7);
          }

          else
          {
            Copy = 0;
          }

          *a2 = Copy;
          FigSimpleMutexUnlock();
          return 0;
        }
      }

      else
      {
        VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_3(&v11);
    return v11;
  }
}

void *VTMotionEstimationSessionInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return VTMotionEstimationSessionInvalidate_cold_2();
  }

  v2 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
  if (v2 != qword_1EAD31D80)
  {
    return VTMotionEstimationSessionInvalidate_cold_1();
  }

  result = *(a1 + 160);
  if (result)
  {
    result = VTCompressionSessionRemote_Invalidate(result);
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 8);
      result = (VTable + 8);
      v7 = *(v6 + 24);
      if (v7)
      {
        result = v7(v4);
      }
    }
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors(char *cf, CVPixelBufferRef a2, CVPixelBufferRef a3, uint64_t a4, uint64_t a5, const void *a6)
{
  if (!a2)
  {
    VTMotionEstimationSessionEstimateMotionVectors_cold_14(&value);
    return value;
  }

  v12 = *(cf + 20);
  if (!v12)
  {
    v41 = 0;
    value = 0u;
    v40 = 0u;
    destinationBuffer = 0;
    pixelBufferOut = 0;
    v14 = CFGetTypeID(cf);
    MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
    if (v14 == qword_1EAD31D80)
    {
      if (cf[16])
      {
        VTMotionEstimationSessionEstimateMotionVectors_cold_2(&valueCallBacks);
      }

      else if (*(cf + 6))
      {
        v15 = CFGetTypeID(a2);
        if (v15 == CVPixelBufferGetTypeID())
        {
          if (a3)
          {
            v16 = CFGetTypeID(a3);
            if (v16 == CVPixelBufferGetTypeID())
            {
              if (a6)
              {
                FigSimpleMutexLock();
                v17 = *(cf + 17) + 1;
                *(cf + 17) = v17;
                if (CVPixelBufferIsCompatibleWithAttributes())
                {
                  v18 = CFRetain(a2);
                  pixelBufferOut = v18;
                }

                else
                {
                  v18 = 0;
                }

                v35 = v17;
                if (CVPixelBufferIsCompatibleWithAttributes())
                {
                  v19 = CFRetain(a3);
                  destinationBuffer = v19;
                  if (v19 && v18)
                  {
LABEL_29:
                    if (pixelBufferOut && pixelBufferOut != a2 && (v25 = VTPixelTransferSessionTransferImage(*(cf + 12), a2, pixelBufferOut), v25))
                    {
                      version_low = v25;
                      VTMotionEstimationSessionEstimateMotionVectors_cold_9();
                    }

                    else
                    {
                      if (!destinationBuffer || destinationBuffer == a3 || (v26 = VTPixelTransferSessionTransferImage(*(cf + 12), a3, destinationBuffer), !v26))
                      {
                        v27 = *(cf + 8);
                        if (!v27)
                        {
                          valueCallBacks.version = 0;
                          valueCallBacks.retain = vtCloneFrameTrackingInfo;
                          valueCallBacks.copyDescription = 0;
                          valueCallBacks.equal = 0;
                          valueCallBacks.release = vtFreeFrameTrackingInfo;
                          v27 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
                          *(cf + 8) = v27;
                        }

                        v28 = *(cf + 17);
                        *(&v40 + 1) = a5;
                        v41 = a6;
                        *(&value + 1) = pixelBufferOut;
                        *&v40 = destinationBuffer;
                        *&value = v28;
                        CFDictionarySetValue(v27, v28, &value);
                        FigSimpleMutexUnlock();
                        dispatch_group_enter(*(cf + 16));
                        v29 = *(cf + 6);
                        v31 = destinationBuffer;
                        v30 = pixelBufferOut;
                        v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                        if (v32)
                        {
                          return v32(v29, v35, v30, v31, a4, a5);
                        }

                        else
                        {
                          return 4294954514;
                        }
                      }

                      version_low = v26;
                      VTMotionEstimationSessionEstimateMotionVectors_cold_10();
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
                  v19 = 0;
                }

                v20 = (cf + 88);
                if (!*(cf + 11) && (v21 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, *(cf + 9), cf + 11), v21))
                {
                  version_low = v21;
                  VTMotionEstimationSessionEstimateMotionVectors_cold_5();
                }

                else if (!*(cf + 12) && (v22 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], cf + 12), v22))
                {
                  version_low = v22;
                  VTMotionEstimationSessionEstimateMotionVectors_cold_6();
                }

                else if (!v18 && (v23 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *v20, &pixelBufferOut), v23))
                {
                  version_low = v23;
                  VTMotionEstimationSessionEstimateMotionVectors_cold_7();
                }

                else
                {
                  if (v19)
                  {
                    goto LABEL_29;
                  }

                  v24 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *v20, &destinationBuffer);
                  if (!v24)
                  {
                    goto LABEL_29;
                  }

                  version_low = v24;
                  VTMotionEstimationSessionEstimateMotionVectors_cold_8();
                }

LABEL_56:
                v34 = v35;
                FigSimpleMutexUnlock();
                goto LABEL_57;
              }

              VTMotionEstimationSessionEstimateMotionVectors_cold_11(&valueCallBacks);
            }

            else
            {
              VTMotionEstimationSessionEstimateMotionVectors_cold_4(&valueCallBacks);
            }
          }

          else
          {
            VTMotionEstimationSessionEstimateMotionVectors_cold_12(&valueCallBacks);
          }
        }

        else
        {
          VTMotionEstimationSessionEstimateMotionVectors_cold_3(&valueCallBacks);
        }
      }

      else
      {
        VTMotionEstimationSessionEstimateMotionVectors_cold_13(&valueCallBacks);
      }
    }

    else
    {
      VTMotionEstimationSessionEstimateMotionVectors_cold_1(&valueCallBacks);
    }

    v34 = 0;
    version_low = LODWORD(valueCallBacks.version);
LABEL_57:
    VTMotionEstimationProcessorSessionEmitMotionVectors((cf + 64), v34, version_low, 0, 0, 0);
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    return version_low;
  }

  return VTCompressionSessionRemote_EstimateMotionVectors(v12, a2, a3, a4, a5, a6);
}

uint64_t VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes_cold_3();
    return 0;
  }

  if (!cf)
  {
    VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes_cold_2();
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes_cold_1();
    return 0;
  }

  v7 = a1[11];
  if (!v7)
  {
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v9 = a1[1];
      a1[1] = cf;
      CFRetain(cf);
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = a1[3];
      if (v10)
      {
        CFRelease(v10);
        a1[3] = 0;
      }
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return VTParavirtualizationHostMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(v7, cf, v5, v6);
}

uint64_t VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes_cold_4();
    return 0;
  }

  if (!cf)
  {
    VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes_cold_3();
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes_cold_1();
    return 0;
  }

  v7 = *(a1 + 88);
  if (!v7)
  {
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v9 = *(a1 + 40);
      *(a1 + 40) = cf;
      CFRetain(cf);
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(a1 + 56);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 56) = 0;
      }

      if (CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], *(a1 + 48), cf, (a1 + 56)))
      {
        VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes_cold_2();
      }
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return VTParavirtualizationHostMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(v7, cf, v5, v6);
}

uint64_t VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v6 = *(a1 + 88);
  if (v6)
  {

    return VTParavirtualizationHostMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions(v6, a2, a3, a4);
  }

  else
  {
    v10 = 0;
    FigSimpleMutexLock();
    v8 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(a1 + 56), &v10);
    if (v8)
    {
      v9 = v8;
      VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions_cold_1();
    }

    else if (v10)
    {
      v9 = 0;
      *a4 = v10;
    }

    else
    {
      VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions_cold_2(&v11);
      v9 = v11;
    }

    FigSimpleMutexUnlock();
    return v9;
  }
}

uint64_t VTMotionEstimationProcessorSessionEmitMotionVectors(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __CVBuffer *a6)
{
  if (a1)
  {
    v8 = *(a1 + 88);
    if (v8)
    {

      return VTParavirtualizationHostMotionEstimationProcessorSessionEmitMotionVectors(v8, a2, a3, a4, a5, a6);
    }

    else
    {
      if (*a1)
      {
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(*a1, a2);
        FigSimpleMutexUnlock();
        if (Value)
        {
          v11 = objc_autoreleasePoolPush();
          (*(Value[4] + 16))();
          objc_autoreleasePoolPop(v11);
          v12 = Value[1];
          if (v12)
          {
            CFRelease(v12);
          }

          v13 = Value[2];
          if (v13)
          {
            CFRelease(v13);
          }

          FigSimpleMutexLock();
          CFDictionaryRemoveValue(*a1, a2);
          FigSimpleMutexUnlock();
        }
      }

      dispatch_group_leave(*(a1 + 64));
      return 0;
    }
  }

  else
  {
    VTMotionEstimationProcessorSessionEmitMotionVectors_cold_1(&v14);
    return v14;
  }
}

uint64_t VTMotionEstimationProcessorSessionCleanUpAfterProcessing(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return VTParavirtualizationHostMotionEstimationProcessorSessionCleanUpAfterProcessing(result);
  }

  return result;
}

uint64_t RegisterVTMotionEstimationProcessorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t VTMotionEstimationProcessorGetTypeID()
{
  MEMORY[0x193AE3010](&VTMotionEstimationProcessorGetClassID_sRegisterVTMotionEstimationProcessorTypeOnce, RegisterVTMotionEstimationProcessorType);

  return CMBaseClassGetCFTypeID();
}

void __vtLoadParavirtualizedMotionEstimationProcessors_block_invoke()
{
  v0 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  xmmword_1EAD31D98 = CFUUIDGetUUIDBytes(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtUnregisterParavirtualizedMotionEstimationProcessors()
{
  if (_MergedGlobals_56)
  {
    v0 = FigRegistryCopyFilteredItemList();
    if (v0)
    {
      return v0;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  cf = 0;
  v16[0] = 0;
  v16[1] = 0;
  if (!a1)
  {
    VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_7(&v15);
    goto LABEL_25;
  }

  v4 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
  if (v4 != qword_1EAD31D80)
  {
    VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_1(&v15);
    goto LABEL_25;
  }

  if (*(a1 + 16))
  {
    VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_2(&v15);
    goto LABEL_25;
  }

  if (!a2)
  {
    VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_6(&v15);
    goto LABEL_25;
  }

  v5 = *(a1 + 160);
  if (v5)
  {

    return VTCompressionSessionRemote_CopySupportedPropertyDictionary(v5);
  }

  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_0, vtMotionEstimationSessionCreateSupportedPropertyDictionary);
  if (!sVTMotionEstimationSessionSupportedPropertyDictionary)
  {
    VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_5(&v15);
    goto LABEL_25;
  }

  v8 = (a1 + 56);
  v7 = *(a1 + 56);
  if (!v7)
  {
    v9 = *(a1 + 48);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v10 && !v10(v9, &cf))
    {
      v11 = sVTMotionEstimationSessionSupportedPropertyDictionary;
      if (sVTMotionEstimationSessionSupportedPropertyDictionary)
      {
        v16[0] = sVTMotionEstimationSessionSupportedPropertyDictionary;
        v11 = 1;
      }

      if (cf)
      {
        v16[v11] = cf;
      }

      v12 = FigCFCreateCombinedDictionary();
      if (v12)
      {
        v13 = v12;
        VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_3();
        goto LABEL_21;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_4(&v15);
LABEL_25:
    v13 = v15;
    goto LABEL_21;
  }

LABEL_19:
  v7 = CFRetain(v7);
LABEL_20:
  v13 = 0;
  *a2 = v7;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t VTMotionEstimationSessionSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  if (!a1)
  {
    VTMotionEstimationSessionSetProperty_cold_5(&v12);
    return v12;
  }

  v6 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
  if (v6 != qword_1EAD31D80)
  {
    VTMotionEstimationSessionSetProperty_cold_1(&v12);
    return v12;
  }

  if (*(a1 + 16))
  {
    VTMotionEstimationSessionSetProperty_cold_2(&v12);
    return v12;
  }

  if (!a2)
  {
    VTMotionEstimationSessionSetProperty_cold_4(&v12);
    return v12;
  }

  v7 = *(a1 + 160);
  if (v7)
  {

    return VTCompressionSessionRemote_SetProperty(v7, a2, a3);
  }

  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_0, vtMotionEstimationSessionCreateSupportedPropertyDictionary);
  if (!sVTMotionEstimationSessionSupportedPropertyDictionary)
  {
    VTMotionEstimationSessionSetProperty_cold_3(&v12);
    return v12;
  }

  if (!CFDictionaryContainsKey(sVTMotionEstimationSessionSupportedPropertyDictionary, a2))
  {
    goto LABEL_15;
  }

  if (!CFEqual(a2, @"ClientPID"))
  {
    return 4294954396;
  }

  if (!a3 || (v9 = CFGetTypeID(a3), v9 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 168));
LABEL_15:
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, a2, a3);
      }
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t VTMotionEstimationSessionCopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, void *a4)
{
  if (!a1)
  {
    VTMotionEstimationSessionCopyProperty_cold_5(&v20);
    return v20;
  }

  v8 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
  if (v8 != qword_1EAD31D80)
  {
    VTMotionEstimationSessionCopyProperty_cold_1(&v20);
    return v20;
  }

  if (*(a1 + 16))
  {
    VTMotionEstimationSessionCopyProperty_cold_2(&v20);
    return v20;
  }

  if (!a2)
  {
    VTMotionEstimationSessionCopyProperty_cold_4(&v20);
    return v20;
  }

  if (!a4)
  {
    VTMotionEstimationSessionCopyProperty_cold_3(&v20);
    return v20;
  }

  v9 = *(a1 + 160);
  if (v9)
  {

    return VTCompressionSessionRemote_CopyProperty(v9);
  }

  if (FigCFEqual())
  {
    v12 = *(a1 + 40);
    v11 = (a1 + 40);
    if (v12)
    {
      v13 = *MEMORY[0x1E695E480];
      v14 = v11;
LABEL_13:
      Copy = CFNumberCreate(v13, kCFNumberSInt32Type, v14);
LABEL_14:
      v16 = Copy;
      result = 0;
LABEL_26:
      *a4 = v16;
      return result;
    }

    goto LABEL_30;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (*(a1 + 44))
    {
LABEL_18:
      result = 0;
      v17 = MEMORY[0x1E695E4D0];
LABEL_25:
      v16 = *v17;
      goto LABEL_26;
    }

LABEL_24:
    result = 0;
    v17 = MEMORY[0x1E695E4C0];
    goto LABEL_25;
  }

  if (FigCFEqual())
  {
    v18 = *(a1 + 24);
    if (v18)
    {
      Copy = CFStringCreateCopy(a3, v18);
      goto LABEL_14;
    }

    goto LABEL_30;
  }

  if (FigCFEqual())
  {
    if (*(a1 + 45))
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  if (FigCFEqual())
  {
    if (*(a1 + 24))
    {
      v13 = *MEMORY[0x1E695E480];
      v14 = (a1 + 168);
      goto LABEL_13;
    }

LABEL_30:
    result = 0;
    *a4 = 0;
    return result;
  }

  v19 = *(a1 + 48);
  if (!v19)
  {
    return 4294954396;
  }

  return VTVideoEncoderCopyProperty(v19, a2, a3, a4);
}

uint64_t VTMotionEstimationSessionSetProperties(uint64_t a1, const void *a2)
{
  context = a1;
  if (!a1)
  {
    VTMotionEstimationSessionSetProperties_cold_5(&v10);
    return v10;
  }

  v4 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
  if (v4 != qword_1EAD31D80)
  {
    VTMotionEstimationSessionSetProperties_cold_1(&v10);
    return v10;
  }

  if (*(a1 + 16))
  {
    VTMotionEstimationSessionSetProperties_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    VTMotionEstimationSessionSetProperties_cold_4(&v10);
    return v10;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != CFDictionaryGetTypeID())
  {
    VTMotionEstimationSessionSetProperties_cold_3(&v10);
    return v10;
  }

  v6 = *(a1 + 160);
  if (v6)
  {

    return VTCompressionSessionRemote_SetProperties(v6, a2);
  }

  else
  {
    v9 = 0;
    CFDictionaryApplyFunction(a2, vtMotionEstimationSessionSetOneProperty, &context);
    return v9;
  }
}

uint64_t VTMotionEstimationSessionCopySerializableProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
    if (v5 == qword_1EAD31D80)
    {
      if (*(a1 + 16))
      {
        VTMotionEstimationSessionCopySerializableProperties_cold_2(&v8);
      }

      else if (a3)
      {
        v6 = *(a1 + 160);
        if (v6)
        {

          return VTCompressionSessionRemote_CopySerializableProperties(v6);
        }
      }

      else
      {
        VTMotionEstimationSessionCopySerializableProperties_cold_3(&v8);
      }
    }

    else
    {
      VTMotionEstimationSessionCopySerializableProperties_cold_1(&v8);
    }
  }

  else
  {
    VTMotionEstimationSessionCopySerializableProperties_cold_4(&v8);
  }

  return FigSignalErrorAtGM();
}

double vtMotionEstimationSessionInit(_OWORD *a1)
{
  if (a1)
  {
    result = 0.0;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
  }

  return result;
}

void vtMotionEstimationSessionFinalize(void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    MEMORY[0x193AE3010](&unk_1ED6D3BE8, RegisterVTMotionEstimationSession);
    if (v2 == qword_1EAD31D80)
    {
      vtMotionEstimationSessionFinalize_cold_2(a1);
    }

    else
    {
      vtMotionEstimationSessionFinalize_cold_1();
    }
  }

  else
  {
    vtMotionEstimationSessionFinalize_cold_3();
  }
}

void vtMotionEstimationSessionCreateSupportedPropertyDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  sVTMotionEstimationSessionSupportedPropertyDictionary = CFDictionaryCreateMutable(v0, 0, v1, v2);
  CFDictionarySetValue(Mutable, @"ReadWriteStatus", @"ReadOnly");
  CFDictionarySetValue(v4, @"ReadWriteStatus", @"ReadWrite");
  CFDictionarySetValue(sVTMotionEstimationSessionSupportedPropertyDictionary, @"MotionVectorSize", Mutable);
  CFDictionarySetValue(sVTMotionEstimationSessionSupportedPropertyDictionary, @"UseMultiPassSearch", Mutable);
  CFDictionarySetValue(sVTMotionEstimationSessionSupportedPropertyDictionary, @"Label", Mutable);
  CFDictionarySetValue(sVTMotionEstimationSessionSupportedPropertyDictionary, @"IncludeMotionConfidence", Mutable);
  CFDictionarySetValue(sVTMotionEstimationSessionSupportedPropertyDictionary, @"ClientPID", v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t vtMotionEstimationSessionSetOneProperty(const void *a1, const __CFNumber *a2, uint64_t a3)
{
  result = VTMotionEstimationSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t vtCloneFrameTrackingInfo(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = MEMORY[0x193AE0CD0](a1, 40, 0x10E004033271262, 0);
  v5 = *a2;
  v4 = a2[1];
  *(v3 + 32) = *(a2 + 4);
  *v3 = v5;
  *(v3 + 16) = v4;
  *(v3 + 32) = _Block_copy(*(a2 + 4));
  v6 = *(a2 + 3);
  if (v6)
  {
    *(v3 + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v6);
  }

  return v3;
}

void vtFreeFrameTrackingInfo(const __CFAllocator *a1, uint64_t a2)
{
  if (a2)
  {
    _Block_release(*(a2 + 32));
    v4 = *(a2 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    CFAllocatorDeallocate(a1, a2);
  }
}

void OUTLINED_FUNCTION_0_13()
{

  JUMPOUT(0x193AE3010);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_6_7()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

uint64_t init_decode_table(_WORD *a1, int a2, int a3, uint64_t a4, uint64_t a5, __int16 a6, __int16 a7, _WORD *a8, _WORD *a9)
{
  v10 = 1 << a7;
  v11 = (1 << a7) - 1;
  v12 = *a9;
  if (a2 > a3)
  {
    v13 = 0;
LABEL_3:
    *a9 = v12;
    if ((v10 & v12) != 0)
    {
      v14 = 0;
      v15 = 1 << a7;
      do
      {
        v16 = v15 << 16;
        LODWORD(v15) = v15 >> 1;
        ++v14;
      }

      while ((v12 & (v16 >> 17)) != 0);
      if (!a8)
      {
LABEL_8:
        if (v13 < v10)
        {
          memset_pattern16(a1, &unk_18FECF180, 2 * (v11 - v13) + 2);
        }

        return a6;
      }
    }

    else
    {
      v14 = 0;
      if (!a8)
      {
        goto LABEL_8;
      }
    }

    *a8 = v14;
    goto LABEL_8;
  }

  v18 = 0;
  v13 = 0;
  v19 = &a1[v10];
  v42 = a4;
  v43 = a8;
  while (1)
  {
    v20 = *(a4 + a2);
    if (*(a4 + a2))
    {
      break;
    }

LABEL_45:
    v12 *= 2;
    a2 = (a2 + 1);
    a4 = v42;
    a8 = v43;
    if (a2 > a3)
    {
      goto LABEL_3;
    }
  }

  v21 = a3 - a2;
  v22 = a7 - (a3 - a2);
  while (1)
  {
    v23 = *(a5 + a6);
    v24 = v23 & 0xF;
    v28 = a3 != 12 || (v23 & 0xFu) - 8 < 0xFFFFFFF9 || (v23 & 0x80u) != 0 || 12 - a2 < v24;
    v29 = (v13 >> (12 - (v24 + v22))) & ~(-1 << v24);
    v30 = 1 << (v24 - 1);
    v31 = 2 * v30 - 1;
    if (v29 >= v30)
    {
      v31 = 0;
    }

    v32 = (16 * v23) & 0x700 | ((v24 + v22) << 11) | (v29 - v31) | 0x8000;
    if (v28)
    {
      v33 = ((a7 - (a3 - a2)) << 8) | v23;
    }

    else
    {
      v33 = v32;
    }

    if (!v28)
    {
      v18 = a7 - (a3 - a2);
    }

    if (a1 >= v19)
    {
      return 4294954387;
    }

    *a1++ = v33;
    v34 = (++v12 << v21) & v11;
    if (++v13 < v34)
    {
      v35 = a7 - (v24 + v18);
      v36 = ~(-1 << v24);
      v37 = (0x8000 << v24) >> 16;
      v38 = (0x7FFFFFFF << v24) | 1;
      while (1)
      {
        if (!v28)
        {
          v39 = (v13 >> v35) & v36;
          if (v37 <= v39)
          {
            v40 = 0;
          }

          else
          {
            v40 = v38;
          }

          v33 = v33 & 0xFF00 | (v40 + v39);
        }

        if (a1 >= v19)
        {
          return 4294954387;
        }

        *a1++ = v33;
        if (v34 == ++v13)
        {
          v13 = (v12 << v21) & v11;
          break;
        }
      }
    }

    ++a6;
    v41 = v20--;
    if (v41 <= 1)
    {
      goto LABEL_45;
    }
  }
}

uint64_t MakeDecodeTable(_WORD *a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  v20 = 0;
  a4[3] = 1;
  *a4 = a1;
  v7 = 16;
  do
  {
    v8 = v7 - 1;
    if (v7 < 0)
    {
      break;
    }
  }

  while (!*(a2 + v7--));
  v10 = v8 + 1;
  if (v8 + 1 < 1)
  {
    return -12909;
  }

  v11 = v10;
  if (v10 < a1)
  {
    *a4 = v10;
    LOWORD(a1) = v8 + 1;
  }

  v12 = *(a4 + 1);
  if (!v12)
  {
    a1 = malloc_type_malloc(2 * (1 << a1), 0x1000040BDFB0063uLL);
    *(a4 + 1) = a1;
    if (!a1)
    {
      return -12904;
    }

    v12 = a1;
    LOWORD(a1) = *a4;
  }

  inited = init_decode_table(v12, 1, a1, a2, a3, 0, a1, a4 + 2, &v20);
  if ((inited & 0x8000) == 0)
  {
    v14 = inited;
    v15 = v11 - a4[2];
    v16 = *a4;
    if (v16 >= v11)
    {
      v15 = 1;
    }

    a4[1] = v15;
    v17 = *(a4 + 2);
    if (v17)
    {
LABEL_16:
      if (v11 <= v16)
      {
        *v17 = -2147450880;
      }

      else if ((init_decode_table(v17, (v16 + 1), v11, a2, a3, v14, a4[1], 0, &v20) & 0x80000000) != 0)
      {
        return -12909;
      }

      return 0;
    }

    v17 = malloc_type_malloc(2 * (1 << v15), 0x1000040BDFB0063uLL);
    *(a4 + 2) = v17;
    if (v17)
    {
      LOWORD(v16) = *a4;
      goto LABEL_16;
    }

    free(*(a4 + 1));
    *(a4 + 1) = 0;
    return -12904;
  }

  return -12909;
}

uint64_t InitDecodeTables(__int16 *a1)
{
  DecodeTable = MakeDecodeTable(0xC, &unk_18FECF018, &byte_18FECF03A, a1 + 24);
  if (DecodeTable || (DecodeTable = MakeDecodeTable(0xC, &unk_18FECF029, &byte_18FECF0DC, a1 + 36), DecodeTable) || (DecodeTable = MakeDecodeTable(5, &unk_18FECEFF6, &unk_18FECEFEA, a1), DecodeTable))
  {
    v3 = DecodeTable;
  }

  else
  {
    v3 = MakeDecodeTable(5, &unk_18FECF007, &unk_18FECEFEA, a1 + 12);
    if (!v3)
    {
      a1[3] = 0;
      a1[39] = 0;
      a1[27] = 0;
      a1[15] = 0;
      return v3;
    }
  }

  DisposeDecodeTable((a1 + 24));
  DisposeDecodeTable((a1 + 36));
  DisposeDecodeTable(a1);
  DisposeDecodeTable((a1 + 12));
  return v3;
}

void DisposeDecodeTable(uint64_t a1)
{
  if (*(a1 + 6))
  {
    free(*(a1 + 8));
    *(a1 + 8) = 0;
    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t MuxedAlphaDecoder_CreateInstance()
{
  VTVideoDecoderGetClassID();
  v0 = CMDerivedObjectCreate();
  MuxedAlphaDecoder_CreateInstance_cold_1();
  return v0;
}

uint64_t MuxedAlphaDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    VTDecompressionSessionInvalidate(*(DerivedStorage + 40));
    VTDecompressionSessionInvalidate(*(v1 + 72));
  }

  return 0;
}

void MuxedAlphaDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[2] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[6] = 0;
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[7] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[8];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[8] = 0;
  }

  v8 = DerivedStorage[9];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[9] = 0;
  }

  v9 = DerivedStorage[10];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[10] = 0;
  }

  v10 = DerivedStorage[11];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[11] = 0;
  }

  v11 = DerivedStorage[16];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[16] = 0;
  }

  v12 = DerivedStorage[18];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[18] = 0;
  }

  v13 = DerivedStorage[13];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[13] = 0;
  }

  v14 = DerivedStorage[14];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[14] = 0;
  }

  v15 = DerivedStorage[12];
  if (v15)
  {
    dispatch_release(v15);
    DerivedStorage[12] = 0;
  }
}

__CFString *MuxedAlphaDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<MuxedAlphaDecoder %p>", a1);
  return Mutable;
}

uint64_t MuxedAlphaDecoder_FinishDelayedFrames(uint64_t a1)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = VTDecompressionSessionFinishDelayedFrames(*(DerivedStorage + 40));
  VTDecompressionSessionFinishDelayedFrames(*(DerivedStorage + 72));
  if (*(DerivedStorage + 104))
  {
    v3 = 2;
    do
    {
      v4 = *(DerivedStorage + 104);
      v5 = dispatch_time(0, 1000000000 * v3);
      v3 *= 2;
    }

    while (dispatch_group_wait(v4, v5));
  }

  return v2;
}

uint64_t alphadecoder_createPixelBufferAttributesDictionary(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __CFDictionary **a5)
{
  LODWORD(v6) = a4;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    if (v11)
    {
      v12 = v11;
      if (v6 >= 1)
      {
        v6 = v6;
        do
        {
          a3 += 4;
          FigCFArrayAppendInt32();
          --v6;
        }

        while (v6);
      }

      CFDictionarySetValue(v10, *MEMORY[0x1E6966130], v12);
      CFRelease(v12);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      v13 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v10, *MEMORY[0x1E69660D8], v13);
      *a5 = v10;
      if (v13)
      {
        CFRelease(v13);
      }

      return 0;
    }

    else
    {
      alphadecoder_createPixelBufferAttributesDictionary_cold_1(v10, &v15);
      return v15;
    }
  }

  else
  {
    alphadecoder_createPixelBufferAttributesDictionary_cold_2(&v16);
    return v16;
  }
}

uint64_t alphadecoder_createDerivedSampleBuffer(opaqueCMSampleBuffer *a1, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription *a3, CMSampleBufferRef *a4)
{
  sampleBufferOut = 0;
  *&timingInfoOut.duration.value = *MEMORY[0x1E6960C70];
  timingInfoOut.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
  result = CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
  if (result)
  {
    if (result != -12736)
    {
      return result;
    }

    v9 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], theBuffer, a3, 1, 0, 0, 1, &sampleSizeArray, &sampleBufferOut);
  }

  else
  {
    v9 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], theBuffer, a3, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &sampleBufferOut);
  }

  if (v9)
  {
    v14 = v9;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    return v14;
  }

  else
  {
    CMPropagateAttachments(a1, sampleBufferOut);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (SampleAttachmentsArray)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      v12 = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
      v13 = CFArrayGetValueAtIndex(v12, 0);
      CFDictionaryApplyFunction(ValueAtIndex, alphadecoder_dictionarySetValue, v13);
    }

    FigSampleBufferGetDecryptor();
    FigSampleBufferSetDecryptor();
    result = 0;
    *a4 = sampleBufferOut;
  }

  return result;
}

uint64_t alphadecoder_mergeBaseAndAlpha(__CVBuffer *a1, int a2, CVPixelBufferRef pixelBuffer)
{
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1982882104 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 2016436536 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 1983013176 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 2016567608 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 1983144248 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 2016698680)
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
    CVPixelBufferGetPixelFormatType(a1);
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (DescriptionWithPixelFormatType)
    {
      Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
      if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFArrayGetTypeID()))
      {
        if (CFArrayGetCount(v7) > 1)
        {
          CFArrayGetValueAtIndex(v7, 0);
          FigCFDictionaryGetInt32IfPresent();
          CFArrayGetValueAtIndex(v7, 1);
          FigCFDictionaryGetInt32IfPresent();
          goto LABEL_18;
        }

        v11 = 1122;
      }

      else
      {
        v11 = 1121;
      }
    }

    else
    {
      v11 = 1118;
    }

    if (!alphadecoder_mergeBaseAndAlpha_cold_2(v11, &v12))
    {
      return v12;
    }

LABEL_18:
    alphadecoder_mergeBaseAndAlpha_cold_3(&v12);
    return v12;
  }

  return 4294954394;
}

void alphadecoder_emitDecodedFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTDecoderSessionEmitDecodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 120);
  dispatch_semaphore_signal(*(DerivedStorage + 112));
  v10 = *(DerivedStorage + 104);

  dispatch_group_leave(v10);
}

uint64_t alphadecoder_transferPlane(__CVBuffer *a1, size_t a2, __CVBuffer *a3, size_t a4, uint64_t a5)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  if (CVPixelBufferGetWidthOfPlane(a3, a4) != WidthOfPlane)
  {
    v19 = 1088;
LABEL_12:
    alphadecoder_transferPlane_cold_1(v19, &v20);
    return v20;
  }

  if (CVPixelBufferGetHeightOfPlane(a3, a4) != HeightOfPlane)
  {
    v19 = 1089;
    goto LABEL_12;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  v14 = CVPixelBufferGetBaseAddressOfPlane(a3, a4);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a3, a4);
  v16 = WidthOfPlane * a5;
  if (v16 > BytesPerRowOfPlane)
  {
    v19 = 1096;
    goto LABEL_12;
  }

  v17 = v15;
  if (v16 > v15)
  {
    v19 = 1097;
    goto LABEL_12;
  }

  for (; HeightOfPlane; --HeightOfPlane)
  {
    memcpy(v14, BaseAddressOfPlane, v16);
    BaseAddressOfPlane += BytesPerRowOfPlane;
    v14 += v17;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_1_12@<X0>(size_t dataLength@<X2>, CMBlockBufferRef *a2@<X8>, CMBlockBufferRef *blockBufferOut, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFAllocatorRef blockAllocator)
{

  return CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, dataLength, blockAllocator, 0, 0, dataLength, 1u, a2);
}

uint64_t OUTLINED_FUNCTION_6_8()
{
  v4 = *(v1 + 72);

  return VTSessionSetProperty(v4, v2, v0);
}

uint64_t registerVTHDRImageStatisticsGenerationSession()
{
  result = _CFRuntimeRegisterClass();
  sVTHDRImageStatisticsGenerationSessionID = result;
  return result;
}

uint64_t VTHDRImageStatisticsGenerationSessionCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (!a3)
  {
    VTHDRImageStatisticsGenerationSessionCreate_cold_3(&v15);
    return v15;
  }

  MEMORY[0x193AE3010](&VTHDRImageStatisticsGenerationSessionGetTypeID_sRegisterVTHDRImageStatisticsGenerationSessionOnce, registerVTHDRImageStatisticsGenerationSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTHDRImageStatisticsGenerationSessionCreate_cold_2(&v14);
    return v14;
  }

  v6 = Instance;
  v7 = MTLCreateSystemDefaultDevice();
  *(v6 + 200) = v7;
  if (!v7)
  {
    v12 = 684;
LABEL_20:
    VTHDRImageStatisticsGenerationSessionCreate_cold_1(v12, v6, &v13);
    return v13;
  }

  v8 = [v7 newCommandQueue];
  *(v6 + 208) = v8;
  if (!v8)
  {
    v12 = 687;
    goto LABEL_20;
  }

  *(v6 + 184) = 0;
  if (a2)
  {
    v9 = CFGetTypeID(a2);
    if (v9 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetValue();
      if (FigCFEqual())
      {
        v10 = 1;
      }

      else
      {
        if (!FigCFEqual())
        {
          goto LABEL_12;
        }

        v10 = 2;
      }

      *(v6 + 184) = v10;
    }
  }

LABEL_12:
  CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, *(v6 + 200), 0, (v6 + 32));
  if (!*(v6 + 32))
  {
    v12 = 700;
    goto LABEL_20;
  }

  result = 0;
  *a3 = v6;
  return result;
}

double vtHDRImageStatisticsGenerationSessionInit(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void vtHDRImageStatisticsGenerationSessionFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  free(*(a1 + 40));
  free(*(a1 + 56));
  free(*(a1 + 48));
  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(*(a1 + 104));
  free(*(a1 + 96));
  free(*(a1 + 112));
  free(*(a1 + 120));
  free(*(a1 + 128));
  free(*(a1 + 136));
  free(*(a1 + 152));
  free(*(a1 + 144));
  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 176));

  v5 = *(a1 + 224);
}

__CFString *vtHDRImageStatisticsGenerationSessionCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTHDRImageStatisticsGenerationSession %p [%p]>{}", a1, v4);
  return Mutable;
}

void *OUTLINED_FUNCTION_4_12()
{

  return malloc_type_calloc(v1, 4uLL, v0);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_6_9()
{

  return CFDictionaryCreateMutable(v2, 0, v1, v0);
}

uint64_t getVectorCapabilities()
{
  if ((getVectorCapabilities_didCheck & 1) == 0)
  {
    v2 = 0;
    v1 = 0;
    sysctlbyname("hw.optional.neon_fp16", 0, &v2, 0, 0);
    if (v2 == 4)
    {
      sysctlbyname("hw.optional.neon_fp16", &v1, &v2, 0, 0);
      if (v1)
      {
        getVectorCapabilities_options |= 2u;
      }
    }

    getVectorCapabilities_didCheck = 1;
  }

  return getVectorCapabilities_options;
}

float vtptsPixelOpTrcType0(float *a1, int8x16_t a2, int8x16_t a3)
{
  *a2.i32 = -(a1[3] - (*a2.i32 * a1[2]));
  a3.i32[0] = 1.0;
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v7 = *vbslq_s8(v4, a3, a2).i32;
  v5 = pow(fabsf(*a2.i32), a1[6]);
  return a1[5] + ((v7 * v5) * a1[4]);
}

float vtptsPixelOpTrcType1(float *a1, float a2, int8x16_t a3, double a4, int8x16_t a5)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[7];
  v8 = a1[8];
  *a5.i32 = -(a1[3] - (a2 * a1[2]));
  v9 = fabsf(*a5.i32);
  if (v9 >= (v8 / v7))
  {
    v14 = a5;
    v11 = pow((v8 + (v7 * v9)), a1[6]);
    a5 = v14;
    v10 = v11 + 0.0;
  }

  else
  {
    v10 = (v9 * 0.0) + 0.0;
  }

  a3.i64[0] = COERCE_UNSIGNED_INT(1.0);
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  return v6 + ((*vbslq_s8(v12, a3, a5).i32 * v10) * v5);
}

float vtptsPixelOpTrcType2(float *a1, float a2, int8x16_t a3, double a4, int8x16_t a5)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[7];
  v8 = a1[8];
  *a5.i32 = -(a1[3] - (a2 * a1[2]));
  v9 = fabsf(*a5.i32);
  if (v9 >= (v8 / v7))
  {
    v14 = a5;
    v11 = pow((v8 + (v7 * v9)), a1[6]);
    a5 = v14;
    a3.i32[1] = 0;
    v10 = v11 + 0.0;
  }

  else
  {
    v10 = -(a1[9] - (v9 * 0.0));
  }

  a3.i32[0] = 1.0;
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  return v6 + ((*vbslq_s8(v12, a3, a5).i32 * v10) * v5);
}

float vtptsPixelOpTrcType3(float *a1, float a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = a1[4];
  v7 = a1[5];
  *a6.i32 = -(a1[3] - (a2 * a1[2]));
  v8 = fabsf(*a6.i32);
  if (v8 >= a1[10])
  {
    v13 = a6;
    v10 = pow((a1[8] + (a1[7] * v8)), a1[6]);
    a6 = v13;
    a3.i32[1] = 0;
    v9 = v10 + 0.0;
  }

  else
  {
    v9 = (a1[9] * v8) + 0.0;
  }

  a3.i32[0] = 1.0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  return v7 + ((*vbslq_s8(v11, a3, a6).i32 * v9) * v6);
}

float vtptsPixelOpTrcType4(float *a1, float a2, int8x16_t a3, double a4, int8x16_t a5)
{
  *a5.i32 = -(a1[3] - (a2 * a1[2]));
  v6 = fabsf(*a5.i32);
  if (v6 >= a1[10])
  {
    v11 = a5;
    v8 = pow((a1[8] + (a1[7] * v6)), a1[6]);
    a5 = v11;
    *a3.i64 = a1[11];
    v7 = v8 + *a3.i64;
  }

  else
  {
    v7 = a1[12] + (a1[9] * v6);
  }

  a3.i32[0] = 1.0;
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  return a1[5] + ((*vbslq_s8(v9, a3, a5).i32 * v7) * a1[4]);
}

float vtptsPixelOpPQEOTF(float *a1, int8x16_t a2)
{
  *a2.i32 = -(a1[3] - (*a2.i32 * a1[2]));
  v7 = a2;
  v3 = powf(fabsf(*a2.i32), a1[7]);
  v4.i64[0] = COERCE_UNSIGNED_INT(1.0);
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  return a1[5] + ((*vbslq_s8(v5, v4, v7).i32 * powf(fmaxf(v3 - a1[9], 0.0) / (a1[10] - (a1[11] * v3)), a1[8])) * a1[4]);
}

float vtptsPixelOpPQInvEOTF(float *a1, int8x16_t a2, int8x16_t a3)
{
  *a2.i32 = -(a1[3] - (*a2.i32 * a1[2]));
  a3.i32[0] = 1.0;
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v8 = *vbslq_s8(v4, a3, a2).i32;
  v5 = powf(a1[12] * fabsf(*a2.i32), a1[7]);
  v6 = (a1[9] + (a1[10] * v5)) / ((v5 * a1[11]) + 1.0);
  return a1[5] + ((v8 * powf(v6, a1[8])) * a1[4]);
}

float vtptsPixelOpHLGInvOETF(float *a1, float a2)
{
  v3 = (a1[2] * a2) - a1[3];
  if (v3 >= 0.5)
  {
    v4 = (exp(((v3 + -0.55991) / 0.17883)) + 0.284668922) * 0.0833333358;
  }

  else
  {
    v4 = (v3 * v3) * 0.33333;
  }

  return a1[5] + (v4 * a1[4]);
}

float vtptsPixelOpHLGOETF(float *a1, float a2, int8x16_t a3, double a4, int8x16_t a5)
{
  *a5.i32 = -(a1[3] - (a2 * a1[2]));
  v6 = a1[11] * fabsf(*a5.i32);
  if (v6 <= a1[10])
  {
    a3.i64[0] = 3.0;
    v9 = sqrt(v6 * 3.0);
  }

  else
  {
    v7 = a1[7];
    v13 = a5;
    v8 = log(-(a1[8] - v6 * 12.0));
    a5 = v13;
    *a3.i64 = a1[9];
    v9 = *a3.i64 + v7 * v8;
  }

  v10 = v9;
  a3.i32[0] = 1.0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  return a1[5] + ((*vbslq_s8(v11, a3, a5).i32 * v10) * a1[4]);
}

float vtptsLumaScalingPow(float *a1, float a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = -(v3 - (a2 * v2));
  if (v4 == 0.0)
  {
    v4 = -(v3 - v2 * 0.5);
  }

  v5 = a1[7];
  return a1[5] + pow(v4, a1[6]) * v5 * a1[4];
}

float vtptsPQToneMappingPow(float *a1, float a2)
{
  v3 = -(a1[3] - (a2 * a1[2]));
  v4 = a1[14];
  v6 = a1[15];
  v5 = a1[16];
  v7 = a1[18];
  v8 = a1[19];
  v9 = a1[17];
  v10 = a1[22];
  v19 = a1[21];
  v18 = a1[13];
  v11 = powf(v3 / 8191.0, v18);
  v12 = (powf((v6 + (v5 * v11)) / ((v9 * v11) + 1.0), v4) - v8) / (v7 - v8);
  if (v12 >= v10)
  {
    v13 = (v12 - v10) * a1[23];
    v12 = (1.0 - v10) * (v13 - ((v13 * (v13 + v13)) - ((v13 * v13) * v13))) + (-((v13 * (v13 * 3.0)) - ((v13 * (v13 + v13)) * v13)) + 1.0) * v10 + (a1[20] * ((v13 * (v13 * 3.0)) + ((v13 * (v13 * -2.0)) * v13)));
  }

  if (v12 >= 0.0)
  {
    if (v12 >= 1.0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 + (((1.0 - v12) * ((1.0 - v12) * (v19 * (1.0 - v12)))) * (1.0 - v12));
    }
  }

  else
  {
    v14 = v19;
  }

  v15 = 0.0;
  if (v3 != 0.0)
  {
    v16 = powf(v8 + (v14 * (v7 - v8)), 1.0 / v4);
    v15 = ((powf(fmaxf(v16 - v6, 0.0) / (v5 - (v9 * v16)), 1.0 / v18) * 10000.0) / v3) * 8191.0;
  }

  return a1[5] + (v15 * a1[4]);
}

uint64_t VTPixelBlitterSetupAssignBlitter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, void *a8)
{
  v10 = 0;
  result = 4294954396;
  if (a1 <= 1936077875)
  {
    if (a1 <= 1380401728)
    {
      if (a1 > 875836533)
      {
        if (a1 > 1278226735)
        {
          if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
          {
            goto LABEL_7007;
          }

          goto LABEL_82;
        }

        if (a1 == 875836534)
        {
LABEL_52:
          v10 = 0;
          if (a2 > 1937125937)
          {
            if (a2 > 1983013175)
            {
              if (a2 > 2016687155)
              {
                if (a2 > 2019963441)
                {
                  if (a2 > 2037741157)
                  {
                    if (a2 == 2037741158 || a2 == 2037741171)
                    {
                      if (a3)
                      {
                        v491 = a4 == 0;
                      }

                      else
                      {
                        v491 = 1;
                      }

                      v492 = !v491;
                      v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_yuvsf;
                      if (!v491 && a5 && a6)
                      {
                        goto LABEL_7006;
                      }

                      if (a5)
                      {
                        v492 = 0;
                      }

                      v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_yuvsf;
                      if (v492 == 1)
                      {
                        if (a6)
                        {
                          goto LABEL_7006;
                        }
                      }

                      v493 = a3 && a4 == 0;
                      v494 = !v493;
                      v10 = vt_Copy_444vf_TRC_Mat_TRC_yuvsf;
                      if (a6)
                      {
                        if (!v494 && !a5)
                        {
                          goto LABEL_7006;
                        }
                      }

                      v10 = vt_Copy_444vf_TRC_Mat_TRC_yuvsf;
                      if (a5)
                      {
                        if (!v494 && a6)
                        {
                          goto LABEL_7006;
                        }
                      }

                      result = 0;
                      v47 = (a4 | a3 | a5 | a6) == 0;
                      v10 = vt_Copy_444vf_rgb_yuvsf;
                      goto LABEL_6145;
                    }

                    goto LABEL_7007;
                  }

                  if (a2 != 2019963442)
                  {
                    if (a2 != 2019963956)
                    {
                      goto LABEL_7007;
                    }

                    goto LABEL_1843;
                  }

LABEL_1784:
                  if (a3)
                  {
                    v250 = a4 == 0;
                  }

                  else
                  {
                    v250 = 1;
                  }

                  v251 = !v250;
                  if (!v250 && a5 && a6)
                  {
                    goto LABEL_1797;
                  }

                  if (a5)
                  {
                    v251 = 0;
                  }

                  if (v251 == 1 && a6)
                  {
LABEL_1797:
                    v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    VectorCapabilities = getVectorCapabilities();
                    result = 0;
                    v31 = VectorCapabilities >= 2;
                    v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422_neon_fp16;
                    v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422;
                    goto LABEL_7033;
                  }

                  if (a3)
                  {
                    v529 = a4 == 0;
                  }

                  else
                  {
                    v529 = 0;
                  }

                  v530 = !v529;
                  if (a6 && !v530 && !a5 || a5 && v530 != 1 && a6)
                  {
                    v10 = vt_Copy_444vf_TRC_Mat_TRC_xf422;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v531 = getVectorCapabilities();
                    result = 0;
                    v31 = v531 >= 2;
                    v32 = vt_Copy_444vf_TRC_Mat_TRC_xf422_neon_fp16;
                    v10 = vt_Copy_444vf_TRC_Mat_TRC_xf422;
                    goto LABEL_7033;
                  }

                  if (!(a4 | a3 | a5 | a6))
                  {
                    v10 = vt_Copy_444vf_rgb_xf422;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v968 = getVectorCapabilities();
                    result = 0;
                    v31 = v968 >= 2;
                    v32 = vt_Copy_444vf_rgb_xf422_neon_fp16;
                    v10 = vt_Copy_444vf_rgb_xf422;
                    goto LABEL_7033;
                  }

                  goto LABEL_6906;
                }

                if (a2 != 2016687156 && a2 != 2016698739)
                {
                  if (a2 != 2019963440)
                  {
                    goto LABEL_7007;
                  }

                  goto LABEL_1799;
                }

LABEL_1843:
                if (a3)
                {
                  v260 = a4 == 0;
                }

                else
                {
                  v260 = 1;
                }

                v261 = !v260;
                if (!v260 && a5 && a6)
                {
                  goto LABEL_1856;
                }

                if (a5)
                {
                  v261 = 0;
                }

                if (v261 == 1 && a6)
                {
LABEL_1856:
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf444;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v262 = getVectorCapabilities();
                  result = 0;
                  v31 = v262 >= 2;
                  v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf444_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf444;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v519 = a4 == 0;
                }

                else
                {
                  v519 = 0;
                }

                v520 = !v519;
                if (a6 && !v520 && !a5 || a5 && v520 != 1 && a6)
                {
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_xf444;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v521 = getVectorCapabilities();
                  result = 0;
                  v31 = v521 >= 2;
                  v32 = vt_Copy_444vf_TRC_Mat_TRC_xf444_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_xf444;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_444vf_rgb_xf444;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v967 = getVectorCapabilities();
                  result = 0;
                  v31 = v967 >= 2;
                  v32 = vt_Copy_444vf_rgb_xf444_neon_fp16;
                  v10 = vt_Copy_444vf_rgb_xf444;
                  goto LABEL_7033;
                }

                goto LABEL_6906;
              }

              if (a2 <= 2016567666)
              {
                if (a2 != 1983013176)
                {
                  if (a2 != 1983144248)
                  {
                    v36 = 1999843442;
LABEL_1074:
                    if (a2 != v36)
                    {
                      goto LABEL_7007;
                    }

LABEL_1983:
                    if (a3)
                    {
                      v284 = a4 == 0;
                    }

                    else
                    {
                      v284 = 1;
                    }

                    v285 = !v284;
                    v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_l10r;
                    if (!v284 && a5 && a6)
                    {
                      goto LABEL_7006;
                    }

                    if (a5)
                    {
                      v285 = 0;
                    }

                    v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_l10r;
                    if (v285 == 1)
                    {
                      if (a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v286 = a3 && a4 == 0;
                    v287 = !v286;
                    v10 = vt_Copy_444vf_TRC_Mat_TRC_l10r;
                    if (a6)
                    {
                      if (!v287 && !a5)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v10 = vt_Copy_444vf_TRC_Mat_TRC_l10r;
                    if (a5)
                    {
                      if (!v287 && a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    result = 0;
                    v47 = (a4 | a3 | a5 | a6) == 0;
                    v10 = vt_Copy_444vf_rgb_l10r;
                    goto LABEL_6145;
                  }

LABEL_1938:
                  if (a3)
                  {
                    v275 = a4 == 0;
                  }

                  else
                  {
                    v275 = 1;
                  }

                  v276 = !v275;
                  if (!v275 && a5 && a6)
                  {
                    goto LABEL_1951;
                  }

                  if (a5)
                  {
                    v276 = 0;
                  }

                  if (v276 == 1 && a6)
                  {
LABEL_1951:
                    v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_444vf;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v277 = getVectorCapabilities();
                    result = 0;
                    v31 = v277 >= 2;
                    v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                    v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_444vf;
                    goto LABEL_7033;
                  }

                  if (a3)
                  {
                    v640 = a4 == 0;
                  }

                  else
                  {
                    v640 = 0;
                  }

                  v641 = !v640;
                  if (a6 && !v641 && !a5 || a5 && v641 != 1 && a6)
                  {
                    v10 = vt_Copy_444vf_TRC_Mat_TRC_444vf;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v642 = getVectorCapabilities();
                    result = 0;
                    v31 = v642 >= 2;
                    v32 = vt_Copy_444vf_TRC_Mat_TRC_444vf_neon_fp16;
                    v10 = vt_Copy_444vf_TRC_Mat_TRC_444vf;
                    goto LABEL_7033;
                  }

                  if (!(a4 | a3 | a5 | a6))
                  {
                    v10 = vt_Copy_444vf_rgb_444vf;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v1060 = getVectorCapabilities();
                    result = 0;
                    v31 = v1060 >= 2;
                    v32 = vt_Copy_444vf_rgb_444vf_neon_fp16;
                    v10 = vt_Copy_444vf_rgb_444vf;
                    goto LABEL_7033;
                  }

                  goto LABEL_6906;
                }

                goto LABEL_1681;
              }

              if (a2 == 2016567667)
              {
                goto LABEL_1784;
              }

              if (a2 == 2016686640)
              {
LABEL_1799:
                if (a3)
                {
                  v253 = a4 == 0;
                }

                else
                {
                  v253 = 1;
                }

                v254 = !v253;
                if (!v253 && a5 && a6)
                {
                  goto LABEL_1812;
                }

                if (a5)
                {
                  v254 = 0;
                }

                if (v254 == 1 && a6)
                {
LABEL_1812:
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf420;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v255 = getVectorCapabilities();
                  result = 0;
                  v31 = v255 >= 2;
                  v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf420_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf420;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v628 = a4 == 0;
                }

                else
                {
                  v628 = 0;
                }

                v629 = !v628;
                if (a6 && !v629 && !a5 || a5 && v629 != 1 && a6)
                {
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_xf420;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v630 = getVectorCapabilities();
                  result = 0;
                  v31 = v630 >= 2;
                  v32 = vt_Copy_444vf_TRC_Mat_TRC_xf420_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_xf420;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_444vf_rgb_xf420;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v992 = getVectorCapabilities();
                  result = 0;
                  v31 = v992 >= 2;
                  v32 = vt_Copy_444vf_rgb_xf420_neon_fp16;
                  v10 = vt_Copy_444vf_rgb_xf420;
                  goto LABEL_7033;
                }

                goto LABEL_6982;
              }

              v37 = 2016686642;
LABEL_1783:
              if (a2 != v37)
              {
                goto LABEL_7007;
              }

              goto LABEL_1784;
            }

            if (a2 <= 1952855091)
            {
              if (a2 > 1949589874)
              {
                if (a2 == 1949589875)
                {
                  goto LABEL_1843;
                }

                if (a2 == 1952854576)
                {
                  goto LABEL_1799;
                }

                v37 = 1952854578;
                goto LABEL_1783;
              }

              if (a2 != 1937125938)
              {
                if (a2 != 1937126452)
                {
                  v37 = 1949458803;
                  goto LABEL_1783;
                }

LABEL_1912:
                if (a3)
                {
                  v271 = a4 == 0;
                }

                else
                {
                  v271 = 1;
                }

                v272 = !v271;
                v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf444;
                if (!v271 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v272 = 0;
                }

                v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf444;
                if (v272 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v273 = a3 && a4 == 0;
                v274 = !v273;
                v10 = vt_Copy_444vf_TRC_Mat_TRC_xf444;
                if (a6)
                {
                  if (!v274 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_444vf_TRC_Mat_TRC_xf444;
                if (a5)
                {
                  if (!v274 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_444vf_rgb_xf444;
                goto LABEL_6145;
              }

LABEL_2064:
              if (a3)
              {
                v298 = a4 == 0;
              }

              else
              {
                v298 = 1;
              }

              v299 = !v298;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422;
              if (!v298 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v299 = 0;
              }

              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf422;
              if (v299 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v300 = a3 && a4 == 0;
              v301 = !v300;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_xf422;
              if (a6)
              {
                if (!v301 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_444vf_TRC_Mat_TRC_xf422;
              if (a5)
              {
                if (!v301 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_444vf_rgb_xf422;
              goto LABEL_6145;
            }

            if (a2 <= 1953903667)
            {
              if (a2 == 1952855092)
              {
                goto LABEL_1843;
              }

              if (a2 == 1953903152)
              {
                goto LABEL_1799;
              }

              v37 = 1953903154;
              goto LABEL_1783;
            }

            if (a2 == 1953903668)
            {
              goto LABEL_1843;
            }

            if (a2 != 1982882104)
            {
              if (a2 != 1983000886)
              {
                goto LABEL_7007;
              }

              if (a3)
              {
                v256 = a4 == 0;
              }

              else
              {
                v256 = 1;
              }

              v257 = !v256;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_v216;
              if (!v256 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v257 = 0;
              }

              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_v216;
              if (v257 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v258 = a3 && a4 == 0;
              v259 = !v258;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_v216;
              if (a6)
              {
                if (!v259 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_444vf_TRC_Mat_TRC_v216;
              if (a5)
              {
                if (!v259 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_444vf_rgb_v216;
              goto LABEL_6145;
            }

LABEL_1968:
            if (a3)
            {
              v281 = a4 == 0;
            }

            else
            {
              v281 = 1;
            }

            v282 = !v281;
            if (!v281 && a5 && a6)
            {
              goto LABEL_1981;
            }

            if (a5)
            {
              v282 = 0;
            }

            if (v282 == 1 && a6)
            {
LABEL_1981:
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_420vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v283 = getVectorCapabilities();
              result = 0;
              v31 = v283 >= 2;
              v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_420vf_neon_fp16;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_420vf;
              goto LABEL_7033;
            }

            if (a3)
            {
              v646 = a4 == 0;
            }

            else
            {
              v646 = 0;
            }

            v647 = !v646;
            if (a6 && !v647 && !a5 || a5 && v647 != 1 && a6)
            {
              v10 = vt_Copy_444vf_TRC_Mat_TRC_420vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v648 = getVectorCapabilities();
              result = 0;
              v31 = v648 >= 2;
              v32 = vt_Copy_444vf_TRC_Mat_TRC_420vf_neon_fp16;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_420vf;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_444vf_rgb_420vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1065 = getVectorCapabilities();
              result = 0;
              v31 = v1065 >= 2;
              v32 = vt_Copy_444vf_rgb_420vf_neon_fp16;
              v10 = vt_Copy_444vf_rgb_420vf;
              goto LABEL_7033;
            }

            goto LABEL_6982;
          }

          if (a2 <= 1380411456)
          {
            if (a2 > 875704949)
            {
              if (a2 <= 1111970368)
              {
                if (a2 != 875704950)
                {
                  if (a2 != 875836518 && a2 != 875836534)
                  {
                    goto LABEL_7007;
                  }

                  goto LABEL_1938;
                }

LABEL_1681:
                if (a3)
                {
                  v236 = a4 == 0;
                }

                else
                {
                  v236 = 1;
                }

                v237 = !v236;
                if (!v236 && a5 && a6)
                {
                  goto LABEL_1694;
                }

                if (a5)
                {
                  v237 = 0;
                }

                if (v237 == 1 && a6)
                {
LABEL_1694:
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v238 = getVectorCapabilities();
                  result = 0;
                  v31 = v238 >= 2;
                  v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_422vf;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v662 = a4 == 0;
                }

                else
                {
                  v662 = 0;
                }

                v663 = !v662;
                if (a6 && !v663 && !a5 || a5 && v663 != 1 && a6)
                {
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_422vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v664 = getVectorCapabilities();
                  result = 0;
                  v31 = v664 >= 2;
                  v32 = vt_Copy_444vf_TRC_Mat_TRC_422vf_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_422vf;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_444vf_rgb_422vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1068 = getVectorCapabilities();
                  result = 0;
                  v31 = v1068 >= 2;
                  v32 = vt_Copy_444vf_rgb_422vf_neon_fp16;
                  v10 = vt_Copy_444vf_rgb_422vf;
                  goto LABEL_7033;
                }

                goto LABEL_6982;
              }

              if (a2 != 1111970369 && a2 != 1380401729)
              {
                if (a2 != 1380410945)
                {
                  goto LABEL_7007;
                }

                if (a3)
                {
                  v243 = a4 == 0;
                }

                else
                {
                  v243 = 1;
                }

                v244 = !v243;
                if (!v243 && a5 && a6)
                {
                  goto LABEL_1741;
                }

                if (a5)
                {
                  v244 = 0;
                }

                if (v244 == 1 && a6)
                {
LABEL_1741:
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v245 = getVectorCapabilities();
                  result = 0;
                  v31 = v245 >= 2;
                  v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_RGfA;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v986 = a4 == 0;
                }

                else
                {
                  v986 = 0;
                }

                v987 = !v986;
                if (a6 && !v987 && !a5 || a5 && v987 != 1 && a6)
                {
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_RGfA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v988 = getVectorCapabilities();
                  result = 0;
                  v31 = v988 >= 2;
                  v32 = vt_Copy_444vf_TRC_Mat_TRC_RGfA_neon_fp16;
                  v10 = vt_Copy_444vf_TRC_Mat_TRC_RGfA;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_444vf_rgb_RGfA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1117 = getVectorCapabilities();
                  result = 0;
                  v31 = v1117 >= 2;
                  v32 = vt_Copy_444vf_rgb_RGfA_neon_fp16;
                  v10 = vt_Copy_444vf_rgb_RGfA;
                  goto LABEL_7033;
                }

                goto LABEL_6906;
              }
            }

            else
            {
              if (a2 > 875704421)
              {
                if (a2 != 875704422 && a2 != 875704438)
                {
                  if (a2 != 875704934)
                  {
                    goto LABEL_7007;
                  }

                  goto LABEL_1681;
                }

                goto LABEL_1968;
              }

              if (a2 != 32)
              {
                if (a2 != 846624102 && a2 != 846624121)
                {
                  goto LABEL_7007;
                }

                goto LABEL_1886;
              }
            }

            if (a3)
            {
              v278 = a4 == 0;
            }

            else
            {
              v278 = 1;
            }

            v279 = !v278;
            if (!v278 && a5 && a6)
            {
              goto LABEL_1966;
            }

            if (a5)
            {
              v279 = 0;
            }

            if (v279 == 1 && a6)
            {
LABEL_1966:
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v280 = getVectorCapabilities();
              result = 0;
              v31 = v280 >= 2;
              v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_BGRA;
              goto LABEL_7033;
            }

            if (a3)
            {
              v643 = a4 == 0;
            }

            else
            {
              v643 = 0;
            }

            v644 = !v643;
            if (a6 && !v644 && !a5 || a5 && v644 != 1 && a6)
            {
              v10 = vt_Copy_444vf_TRC_Mat_TRC_BGRA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v645 = getVectorCapabilities();
              result = 0;
              v31 = v645 >= 2;
              v32 = vt_Copy_444vf_TRC_Mat_TRC_BGRA_neon_fp16;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_BGRA;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_444vf_rgb_BGRA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1064 = getVectorCapabilities();
              result = 0;
              v31 = v1064 >= 2;
              v32 = vt_Copy_444vf_rgb_BGRA_neon_fp16;
              v10 = vt_Copy_444vf_rgb_BGRA;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          if (a2 > 1932681586)
          {
            if (a2 > 1936077361)
            {
              if (a2 == 1936077362)
              {
                goto LABEL_2064;
              }

              if (a2 == 1936077876)
              {
                goto LABEL_1912;
              }

              v151 = 1937125936;
            }

            else
            {
              if (a2 == 1932681587)
              {
                goto LABEL_2064;
              }

              if (a2 == 1932812659)
              {
                goto LABEL_1912;
              }

              v151 = 1936077360;
            }

            if (a2 != v151)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v246 = a4 == 0;
            }

            else
            {
              v246 = 1;
            }

            v247 = !v246;
            v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf420;
            if (!v246 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v247 = 0;
            }

            v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_xf420;
            if (v247 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v248 = a3 && a4 == 0;
            v249 = !v248;
            v10 = vt_Copy_444vf_TRC_Mat_TRC_xf420;
            if (a6)
            {
              if (!v249 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_444vf_TRC_Mat_TRC_xf420;
            if (a5)
            {
              if (!v249 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_444vf_rgb_xf420;
            goto LABEL_6145;
          }

          if (a2 > 1647719520)
          {
            if (a2 == 1647719521)
            {
              if (a3)
              {
                v634 = a4 == 0;
              }

              else
              {
                v634 = 1;
              }

              v635 = !v634;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_b64a;
              if (!v634 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v635 = 0;
              }

              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_b64a;
              if (v635 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v636 = a3 && a4 == 0;
              v637 = !v636;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_b64a;
              if (a6)
              {
                if (!v637 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_444vf_TRC_Mat_TRC_b64a;
              if (a5)
              {
                if (!v637 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_444vf_rgb_b64a;
              goto LABEL_6145;
            }

            if (a2 != 1815162994)
            {
              if (a2 != 1815491698)
              {
                goto LABEL_7007;
              }

              if (a3)
              {
                v239 = a4 == 0;
              }

              else
              {
                v239 = 1;
              }

              v240 = !v239;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_l64r;
              if (!v239 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v240 = 0;
              }

              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_l64r;
              if (v240 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v241 = a3 && a4 == 0;
              v242 = !v241;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_l64r;
              if (a6)
              {
                if (!v242 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_444vf_TRC_Mat_TRC_l64r;
              if (a5)
              {
                if (!v242 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_444vf_rgb_l64r;
              goto LABEL_6145;
            }

            goto LABEL_1983;
          }

          if (a2 == 1380411457)
          {
            if (a3)
            {
              v631 = a4 == 0;
            }

            else
            {
              v631 = 1;
            }

            v632 = !v631;
            if (!v631 && a5 && a6)
            {
              goto LABEL_4134;
            }

            if (a5)
            {
              v632 = 0;
            }

            if (v632 == 1 && a6)
            {
LABEL_4134:
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v633 = getVectorCapabilities();
              result = 0;
              v31 = v633 >= 2;
              v32 = vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
              v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_RGhA;
              goto LABEL_7033;
            }

            if (a3)
            {
              v989 = a4 == 0;
            }

            else
            {
              v989 = 0;
            }

            v990 = !v989;
            if (a6 && !v990 && !a5 || a5 && v990 != 1 && a6)
            {
              v10 = vt_Copy_444vf_TRC_Mat_TRC_RGhA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v991 = getVectorCapabilities();
              result = 0;
              v31 = v991 >= 2;
              v32 = vt_Copy_444vf_TRC_Mat_TRC_RGhA_neon_fp16;
              v10 = vt_Copy_444vf_TRC_Mat_TRC_RGhA;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_444vf_rgb_RGhA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1144 = getVectorCapabilities();
              result = 0;
              v31 = v1144 >= 2;
              v32 = vt_Copy_444vf_rgb_RGhA_neon_fp16;
              v10 = vt_Copy_444vf_rgb_RGhA;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          if (a2 != 1630697081)
          {
            v36 = 1647534392;
            goto LABEL_1074;
          }

LABEL_1886:
          if (a3)
          {
            v267 = a4 == 0;
          }

          else
          {
            v267 = 1;
          }

          v268 = !v267;
          v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_2vuyf;
          if (!v267 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v268 = 0;
          }

          v10 = vt_Copy_444vf_TRC_Tone_Mat_TRC_2vuyf;
          if (v268 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v269 = a3 && a4 == 0;
          v270 = !v269;
          v10 = vt_Copy_444vf_TRC_Mat_TRC_2vuyf;
          if (a6)
          {
            if (!v270 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_444vf_TRC_Mat_TRC_2vuyf;
          if (a5)
          {
            if (!v270 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_444vf_rgb_2vuyf;
          goto LABEL_6145;
        }

        if (a1 == 1111970369)
        {
          goto LABEL_179;
        }

        v13 = 1278226488;
      }

      else
      {
        if (a1 <= 875704933)
        {
          if (a1 != 32)
          {
            if (a1 != 875704422 && a1 != 875704438)
            {
              goto LABEL_7007;
            }

            goto LABEL_128;
          }

LABEL_179:
          v10 = 0;
          if (a2 > 1936077875)
          {
            if (a2 > 1983000885)
            {
              if (a2 <= 2016687155)
              {
                if (a2 > 1999843441)
                {
                  if (a2 <= 2016686639)
                  {
                    if (a2 != 1999843442)
                    {
                      v22 = 2016567667;
                      goto LABEL_3720;
                    }

LABEL_3025:
                    if (a3)
                    {
                      v452 = a4 == 0;
                    }

                    else
                    {
                      v452 = 1;
                    }

                    v453 = !v452;
                    v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_l10r;
                    if (!v452 && a5 && a6)
                    {
                      goto LABEL_7006;
                    }

                    if (a5)
                    {
                      v453 = 0;
                    }

                    v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_l10r;
                    if (v453 == 1)
                    {
                      if (a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v454 = a3 && a4 == 0;
                    v455 = !v454;
                    v10 = vt_Copy_BGRA_TRC_Mat_TRC_l10r;
                    if (a6)
                    {
                      if (!v455 && !a5)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v10 = vt_Copy_BGRA_TRC_Mat_TRC_l10r;
                    if (a5)
                    {
                      if (!v455 && a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    result = 0;
                    v47 = (a4 | a3 | a5 | a6) == 0;
                    v10 = vt_Copy_BGRA_rgb_l10r;
                    goto LABEL_6145;
                  }

                  if (a2 != 2016686640)
                  {
                    v22 = 2016686642;
LABEL_3720:
                    if (a2 != v22)
                    {
                      goto LABEL_7007;
                    }

                    goto LABEL_3721;
                  }

                  goto LABEL_3736;
                }

                if (a2 == 1983000886)
                {
                  if (a3)
                  {
                    v775 = a4 == 0;
                  }

                  else
                  {
                    v775 = 1;
                  }

                  v776 = !v775;
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_v216;
                  if (!v775 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v776 = 0;
                  }

                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_v216;
                  if (v776 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v777 = a3 && a4 == 0;
                  v778 = !v777;
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_v216;
                  if (a6)
                  {
                    if (!v778 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_v216;
                  if (a5)
                  {
                    if (!v778 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_BGRA_rgb_v216;
                  goto LABEL_6145;
                }

                if (a2 != 1983013176)
                {
                  v23 = 1983144248;
                  goto LABEL_2981;
                }

                goto LABEL_3007;
              }

              if (a2 > 2019963441)
              {
                if (a2 > 2037741157)
                {
                  if (a2 == 2037741158 || a2 == 2037741171)
                  {
                    if (a3)
                    {
                      v566 = a4 == 0;
                    }

                    else
                    {
                      v566 = 1;
                    }

                    v567 = !v566;
                    v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_yuvsf;
                    if (!v566 && a5 && a6)
                    {
                      goto LABEL_7006;
                    }

                    if (a5)
                    {
                      v567 = 0;
                    }

                    v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_yuvsf;
                    if (v567 == 1)
                    {
                      if (a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v568 = a3 && a4 == 0;
                    v569 = !v568;
                    v10 = vt_Copy_BGRA_TRC_Mat_TRC_yuvsf;
                    if (a6)
                    {
                      if (!v569 && !a5)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v10 = vt_Copy_BGRA_TRC_Mat_TRC_yuvsf;
                    if (a5)
                    {
                      if (!v569 && a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    result = 0;
                    v47 = (a4 | a3 | a5 | a6) == 0;
                    v10 = vt_Copy_BGRA_rgb_yuvsf;
                    goto LABEL_6145;
                  }

                  goto LABEL_7007;
                }

                if (a2 == 2019963442)
                {
                  goto LABEL_3721;
                }

                v156 = 2019963956;
                goto LABEL_3673;
              }

              if (a2 != 2016687156 && a2 != 2016698739)
              {
                if (a2 != 2019963440)
                {
                  goto LABEL_7007;
                }

                goto LABEL_3736;
              }

LABEL_3674:
              if (a3)
              {
                v553 = a4 == 0;
              }

              else
              {
                v553 = 1;
              }

              v554 = !v553;
              if (!v553 && a5 && a6)
              {
                goto LABEL_3687;
              }

              if (a5)
              {
                v554 = 0;
              }

              if (v554 == 1 && a6)
              {
LABEL_3687:
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v555 = getVectorCapabilities();
                result = 0;
                v31 = v555 >= 2;
                v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444;
                goto LABEL_7033;
              }

              if (a3)
              {
                v589 = a4 == 0;
              }

              else
              {
                v589 = 0;
              }

              v590 = !v589;
              if (a6 && !v590 && !a5 || a5 && v590 != 1 && a6)
              {
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v591 = getVectorCapabilities();
                result = 0;
                v31 = v591 >= 2;
                v32 = vt_Copy_BGRA_TRC_Mat_TRC_xf444_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf444;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_BGRA_rgb_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v975 = getVectorCapabilities();
                result = 0;
                v31 = v975 >= 2;
                v32 = vt_Copy_BGRA_rgb_xf444_neon_fp16;
                v10 = vt_Copy_BGRA_rgb_xf444;
                goto LABEL_7033;
              }

              goto LABEL_7005;
            }

            if (a2 > 1952854575)
            {
              if (a2 > 1953903151)
              {
                if (a2 <= 1953903667)
                {
                  if (a2 != 1953903152)
                  {
                    v22 = 1953903154;
                    goto LABEL_3720;
                  }

LABEL_3736:
                  if (a3)
                  {
                    v563 = a4 == 0;
                  }

                  else
                  {
                    v563 = 1;
                  }

                  v564 = !v563;
                  if (!v563 && a5 && a6)
                  {
                    goto LABEL_3749;
                  }

                  if (a5)
                  {
                    v564 = 0;
                  }

                  if (v564 == 1 && a6)
                  {
LABEL_3749:
                    v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v565 = getVectorCapabilities();
                    result = 0;
                    v31 = v565 >= 2;
                    v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420_neon_fp16;
                    v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420;
                    goto LABEL_7033;
                  }

                  if (a3)
                  {
                    v751 = a4 == 0;
                  }

                  else
                  {
                    v751 = 0;
                  }

                  v752 = !v751;
                  if (a6 && !v752 && !a5 || a5 && v752 != 1 && a6)
                  {
                    v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf420;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v753 = getVectorCapabilities();
                    result = 0;
                    v31 = v753 >= 2;
                    v32 = vt_Copy_BGRA_TRC_Mat_TRC_xf420_neon_fp16;
                    v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf420;
                    goto LABEL_7033;
                  }

                  if (!(a4 | a3 | a5 | a6))
                  {
                    v10 = vt_Copy_BGRA_rgb_xf420;
                    if (a7)
                    {
                      goto LABEL_7006;
                    }

                    v1071 = getVectorCapabilities();
                    result = 0;
                    v31 = v1071 >= 2;
                    v32 = vt_Copy_BGRA_rgb_xf420_neon_fp16;
                    v10 = vt_Copy_BGRA_rgb_xf420;
                    goto LABEL_7033;
                  }

                  goto LABEL_7005;
                }

                if (a2 == 1953903668)
                {
                  goto LABEL_3674;
                }

                if (a2 != 1982882104)
                {
                  goto LABEL_7007;
                }

LABEL_3656:
                if (a3)
                {
                  v550 = a4 == 0;
                }

                else
                {
                  v550 = 1;
                }

                v551 = !v550;
                if (!v550 && a5 && a6)
                {
                  goto LABEL_3669;
                }

                if (a5)
                {
                  v551 = 0;
                }

                if (v551 == 1 && a6)
                {
LABEL_3669:
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v552 = getVectorCapabilities();
                  result = 0;
                  v31 = v552 >= 2;
                  v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf_neon_fp16;
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v850 = a4 == 0;
                }

                else
                {
                  v850 = 0;
                }

                v851 = !v850;
                if (a6 && !v851 && !a5 || a5 && v851 != 1 && a6)
                {
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_420vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v852 = getVectorCapabilities();
                  result = 0;
                  v31 = v852 >= 2;
                  v32 = vt_Copy_BGRA_TRC_Mat_TRC_420vf_neon_fp16;
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_420vf;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_BGRA_rgb_420vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1107 = getVectorCapabilities();
                  result = 0;
                  v31 = v1107 >= 2;
                  v32 = vt_Copy_BGRA_rgb_420vf_neon_fp16;
                  v10 = vt_Copy_BGRA_rgb_420vf;
                  goto LABEL_7033;
                }

                goto LABEL_7005;
              }

              if (a2 == 1952854576)
              {
                goto LABEL_3736;
              }

              if (a2 != 1952854578)
              {
                v156 = 1952855092;
                goto LABEL_3673;
              }

LABEL_3721:
              if (a3)
              {
                v560 = a4 == 0;
              }

              else
              {
                v560 = 1;
              }

              v561 = !v560;
              if (!v560 && a5 && a6)
              {
                goto LABEL_3734;
              }

              if (a5)
              {
                v561 = 0;
              }

              if (v561 == 1 && a6)
              {
LABEL_3734:
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v562 = getVectorCapabilities();
                result = 0;
                v31 = v562 >= 2;
                v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422;
                goto LABEL_7033;
              }

              if (a3)
              {
                v625 = a4 == 0;
              }

              else
              {
                v625 = 0;
              }

              v626 = !v625;
              if (a6 && !v626 && !a5 || a5 && v626 != 1 && a6)
              {
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf422;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v627 = getVectorCapabilities();
                result = 0;
                v31 = v627 >= 2;
                v32 = vt_Copy_BGRA_TRC_Mat_TRC_xf422_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf422;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_BGRA_rgb_xf422;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v985 = getVectorCapabilities();
                result = 0;
                v31 = v985 >= 2;
                v32 = vt_Copy_BGRA_rgb_xf422_neon_fp16;
                v10 = vt_Copy_BGRA_rgb_xf422;
                goto LABEL_7033;
              }

              goto LABEL_7005;
            }

            if (a2 <= 1937126451)
            {
              if (a2 != 1936077876)
              {
                if (a2 != 1937125936)
                {
                  v222 = 1937125938;
                  goto LABEL_3691;
                }

                goto LABEL_3935;
              }

              goto LABEL_2920;
            }

            if (a2 == 1937126452)
            {
              goto LABEL_2920;
            }

            if (a2 == 1949458803)
            {
              goto LABEL_3721;
            }

            v156 = 1949589875;
LABEL_3673:
            if (a2 != v156)
            {
              goto LABEL_7007;
            }

            goto LABEL_3674;
          }

          if (a2 > 1278226741)
          {
            if (a2 > 1647719520)
            {
              if (a2 <= 1932681586)
              {
                if (a2 == 1647719521)
                {
                  if (a3)
                  {
                    v771 = a4 == 0;
                  }

                  else
                  {
                    v771 = 1;
                  }

                  v772 = !v771;
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_b64a;
                  if (!v771 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v772 = 0;
                  }

                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_b64a;
                  if (v772 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v773 = a3 && a4 == 0;
                  v774 = !v773;
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_b64a;
                  if (a6)
                  {
                    if (!v774 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_b64a;
                  if (a5)
                  {
                    if (!v774 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_BGRA_rgb_b64a;
                  goto LABEL_6145;
                }

                if (a2 != 1815162994)
                {
                  if (a2 != 1815491698)
                  {
                    goto LABEL_7007;
                  }

                  if (a3)
                  {
                    v442 = a4 == 0;
                  }

                  else
                  {
                    v442 = 1;
                  }

                  v443 = !v442;
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_l64r;
                  if (!v442 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v443 = 0;
                  }

                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_l64r;
                  if (v443 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v444 = a3 && a4 == 0;
                  v445 = !v444;
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_l64r;
                  if (a6)
                  {
                    if (!v445 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_l64r;
                  if (a5)
                  {
                    if (!v445 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_BGRA_rgb_l64r;
                  goto LABEL_6145;
                }

                goto LABEL_3025;
              }

              if (a2 > 1936077359)
              {
                if (a2 != 1936077360)
                {
                  v222 = 1936077362;
LABEL_3691:
                  if (a2 != v222)
                  {
                    goto LABEL_7007;
                  }

                  goto LABEL_3692;
                }

LABEL_3935:
                if (a3)
                {
                  v592 = a4 == 0;
                }

                else
                {
                  v592 = 1;
                }

                v593 = !v592;
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420;
                if (!v592 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v593 = 0;
                }

                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf420;
                if (v593 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v594 = a3 && a4 == 0;
                v595 = !v594;
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf420;
                if (a6)
                {
                  if (!v595 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf420;
                if (a5)
                {
                  if (!v595 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_BGRA_rgb_xf420;
                goto LABEL_6145;
              }

              if (a2 == 1932681587)
              {
LABEL_3692:
                if (a3)
                {
                  v556 = a4 == 0;
                }

                else
                {
                  v556 = 1;
                }

                v557 = !v556;
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422;
                if (!v556 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v557 = 0;
                }

                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf422;
                if (v557 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v558 = a3 && a4 == 0;
                v559 = !v558;
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf422;
                if (a6)
                {
                  if (!v559 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf422;
                if (a5)
                {
                  if (!v559 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_BGRA_rgb_xf422;
                goto LABEL_6145;
              }

              if (a2 != 1932812659)
              {
                goto LABEL_7007;
              }

LABEL_2920:
              if (a3)
              {
                v438 = a4 == 0;
              }

              else
              {
                v438 = 1;
              }

              v439 = !v438;
              v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444;
              if (!v438 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v439 = 0;
              }

              v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_xf444;
              if (v439 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v440 = a3 && a4 == 0;
              v441 = !v440;
              v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf444;
              if (a6)
              {
                if (!v441 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_BGRA_TRC_Mat_TRC_xf444;
              if (a5)
              {
                if (!v441 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_BGRA_rgb_xf444;
              goto LABEL_6145;
            }

            if (a2 <= 1380411456)
            {
              if (a2 == 1278226742)
              {
                goto LABEL_2920;
              }

              if (a2 != 1380401729)
              {
                if (a2 != 1380410945)
                {
                  goto LABEL_7007;
                }

                if (a3)
                {
                  v223 = a4 == 0;
                }

                else
                {
                  v223 = 1;
                }

                v224 = !v223;
                if (!v223 && a5 && a6)
                {
                  goto LABEL_1565;
                }

                if (a5)
                {
                  v224 = 0;
                }

                if (v224 == 1 && a6)
                {
LABEL_1565:
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v225 = getVectorCapabilities();
                  result = 0;
                  v31 = v225 >= 2;
                  v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGfA;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v1085 = a4 == 0;
                }

                else
                {
                  v1085 = 0;
                }

                v1086 = !v1085;
                if (a6 && !v1086 && !a5 || a5 && v1086 != 1 && a6)
                {
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_RGfA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1087 = getVectorCapabilities();
                  result = 0;
                  v31 = v1087 >= 2;
                  v32 = vt_Copy_BGRA_TRC_Mat_TRC_RGfA_neon_fp16;
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_RGfA;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_BGRA_rgb_RGfA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1141 = getVectorCapabilities();
                  result = 0;
                  v31 = v1141 >= 2;
                  v32 = vt_Copy_BGRA_rgb_RGfA_neon_fp16;
                  v10 = vt_Copy_BGRA_rgb_RGfA;
                  goto LABEL_7033;
                }

                goto LABEL_7005;
              }

              goto LABEL_3201;
            }

            if (a2 == 1380411457)
            {
              if (a3)
              {
                v779 = a4 == 0;
              }

              else
              {
                v779 = 1;
              }

              v780 = !v779;
              if (!v779 && a5 && a6)
              {
                goto LABEL_5088;
              }

              if (a5)
              {
                v780 = 0;
              }

              if (v780 == 1 && a6)
              {
LABEL_5088:
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v781 = getVectorCapabilities();
                result = 0;
                v31 = v781 >= 2;
                v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_RGhA;
                goto LABEL_7033;
              }

              if (a3)
              {
                v1091 = a4 == 0;
              }

              else
              {
                v1091 = 0;
              }

              v1092 = !v1091;
              if (a6 && !v1092 && !a5 || a5 && v1092 != 1 && a6)
              {
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_RGhA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1093 = getVectorCapabilities();
                result = 0;
                v31 = v1093 >= 2;
                v32 = vt_Copy_BGRA_TRC_Mat_TRC_RGhA_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_RGhA;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_BGRA_rgb_RGhA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1146 = getVectorCapabilities();
                result = 0;
                v31 = v1146 >= 2;
                v32 = vt_Copy_BGRA_rgb_RGhA_neon_fp16;
                v10 = vt_Copy_BGRA_rgb_RGhA;
                goto LABEL_7033;
              }

              goto LABEL_7005;
            }

            if (a2 != 1630697081)
            {
              if (a2 != 1647534392)
              {
                goto LABEL_7007;
              }

              goto LABEL_3025;
            }
          }

          else
          {
            if (a2 > 875704949)
            {
              if (a2 <= 1111970368)
              {
                if (a2 != 875704950)
                {
                  if (a2 == 875836518)
                  {
LABEL_2982:
                    if (a3)
                    {
                      v446 = a4 == 0;
                    }

                    else
                    {
                      v446 = 1;
                    }

                    v447 = !v446;
                    if (!v446 && a5 && a6)
                    {
                      goto LABEL_2995;
                    }

                    if (a5)
                    {
                      v447 = 0;
                    }

                    if (v447 == 1 && a6)
                    {
LABEL_2995:
                      v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf;
                      if (a7)
                      {
                        goto LABEL_7006;
                      }

                      v448 = getVectorCapabilities();
                      result = 0;
                      v31 = v448 >= 2;
                      v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                      v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_444vf;
                      goto LABEL_7033;
                    }

                    if (a3)
                    {
                      v754 = a4 == 0;
                    }

                    else
                    {
                      v754 = 0;
                    }

                    v755 = !v754;
                    if (a6 && !v755 && !a5 || a5 && v755 != 1 && a6)
                    {
                      v10 = vt_Copy_BGRA_TRC_Mat_TRC_444vf;
                      if (a7)
                      {
                        goto LABEL_7006;
                      }

                      v756 = getVectorCapabilities();
                      result = 0;
                      v31 = v756 >= 2;
                      v32 = vt_Copy_BGRA_TRC_Mat_TRC_444vf_neon_fp16;
                      v10 = vt_Copy_BGRA_TRC_Mat_TRC_444vf;
                      goto LABEL_7033;
                    }

                    if (!(a4 | a3 | a5 | a6))
                    {
                      v10 = vt_Copy_BGRA_rgb_444vf;
                      if (a7)
                      {
                        goto LABEL_7006;
                      }

                      v1081 = getVectorCapabilities();
                      result = 0;
                      v31 = v1081 >= 2;
                      v32 = vt_Copy_BGRA_rgb_444vf_neon_fp16;
                      v10 = vt_Copy_BGRA_rgb_444vf;
                      goto LABEL_7033;
                    }

                    goto LABEL_7005;
                  }

                  v23 = 875836534;
LABEL_2981:
                  if (a2 != v23)
                  {
                    goto LABEL_7007;
                  }

                  goto LABEL_2982;
                }

LABEL_3007:
                if (a3)
                {
                  v449 = a4 == 0;
                }

                else
                {
                  v449 = 1;
                }

                v450 = !v449;
                if (!v449 && a5 && a6)
                {
                  goto LABEL_3020;
                }

                if (a5)
                {
                  v450 = 0;
                }

                if (v450 == 1 && a6)
                {
LABEL_3020:
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v451 = getVectorCapabilities();
                  result = 0;
                  v31 = v451 >= 2;
                  v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf_neon_fp16;
                  v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_422vf;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v856 = a4 == 0;
                }

                else
                {
                  v856 = 0;
                }

                v857 = !v856;
                if (a6 && !v857 && !a5 || a5 && v857 != 1 && a6)
                {
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_422vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v858 = getVectorCapabilities();
                  result = 0;
                  v31 = v858 >= 2;
                  v32 = vt_Copy_BGRA_TRC_Mat_TRC_422vf_neon_fp16;
                  v10 = vt_Copy_BGRA_TRC_Mat_TRC_422vf;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_BGRA_rgb_422vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1109 = getVectorCapabilities();
                  result = 0;
                  v31 = v1109 >= 2;
                  v32 = vt_Copy_BGRA_rgb_422vf_neon_fp16;
                  v10 = vt_Copy_BGRA_rgb_422vf;
                  goto LABEL_7033;
                }

                goto LABEL_7005;
              }

              if (a2 > 1278226735)
              {
                if (a2 == 1278226736)
                {
                  goto LABEL_3674;
                }

                v156 = 1278226738;
                goto LABEL_3673;
              }

              if (a2 != 1111970369)
              {
                v23 = 1278226488;
                goto LABEL_2981;
              }

LABEL_3201:
              if (a3)
              {
                v476 = a4 == 0;
              }

              else
              {
                v476 = 1;
              }

              v477 = !v476;
              if (!v476 && a5 && a6)
              {
                goto LABEL_3214;
              }

              if (a5)
              {
                v477 = 0;
              }

              if (v477 == 1 && a6)
              {
LABEL_3214:
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v478 = getVectorCapabilities();
                result = 0;
                v31 = v478 >= 2;
                v32 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_BGRA;
                goto LABEL_7033;
              }

              if (a3)
              {
                v853 = a4 == 0;
              }

              else
              {
                v853 = 0;
              }

              v854 = !v853;
              if (a6 && !v854 && !a5 || a5 && v854 != 1 && a6)
              {
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_BGRA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v855 = getVectorCapabilities();
                result = 0;
                v31 = v855 >= 2;
                v32 = vt_Copy_BGRA_TRC_Mat_TRC_BGRA_neon_fp16;
                v10 = vt_Copy_BGRA_TRC_Mat_TRC_BGRA;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_BGRA_rgb_BGRA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1108 = getVectorCapabilities();
                result = 0;
                v31 = v1108 >= 2;
                v32 = vt_Copy_BGRA_rgb_BGRA_neon_fp16;
                v10 = vt_Copy_BGRA_rgb_BGRA;
                goto LABEL_7033;
              }

              goto LABEL_7005;
            }

            if (a2 > 875704421)
            {
              if (a2 != 875704422 && a2 != 875704438)
              {
                if (a2 != 875704934)
                {
                  goto LABEL_7007;
                }

                goto LABEL_3007;
              }

              goto LABEL_3656;
            }

            if (a2 == 32)
            {
              goto LABEL_3201;
            }

            if (a2 != 846624102 && a2 != 846624121)
            {
              goto LABEL_7007;
            }
          }

          if (a3)
          {
            v483 = a4 == 0;
          }

          else
          {
            v483 = 1;
          }

          v484 = !v483;
          v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_2vuyf;
          if (!v483 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v484 = 0;
          }

          v10 = vt_Copy_BGRA_TRC_Tone_Mat_TRC_2vuyf;
          if (v484 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v485 = a3 && a4 == 0;
          v486 = !v485;
          v10 = vt_Copy_BGRA_TRC_Mat_TRC_2vuyf;
          if (a6)
          {
            if (!v486 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_BGRA_TRC_Mat_TRC_2vuyf;
          if (a5)
          {
            if (!v486 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_BGRA_rgb_2vuyf;
          goto LABEL_6145;
        }

        if (a1 == 875704934 || a1 == 875704950)
        {
          goto LABEL_120;
        }

        v13 = 875836518;
      }

LABEL_51:
      if (a1 != v13)
      {
        goto LABEL_7007;
      }

      goto LABEL_52;
    }

    if (a1 > 1815162993)
    {
      if (a1 > 1932812658)
      {
        if (a1 == 1932812659)
        {
          goto LABEL_82;
        }

        if (a1 == 1936077360)
        {
          goto LABEL_98;
        }

        v12 = 1936077362;
LABEL_66:
        if (a1 != v12)
        {
          goto LABEL_7007;
        }

        goto LABEL_90;
      }

      if (a1 == 1815162994)
      {
        goto LABEL_136;
      }

      if (a1 != 1815491698)
      {
        v12 = 1932681587;
        goto LABEL_66;
      }

      v10 = 0;
      if (a2 > 1936077875)
      {
        if (a2 > 1983000885)
        {
          if (a2 <= 2016687155)
          {
            if (a2 > 1999843441)
            {
              if (a2 <= 2016686639)
              {
                if (a2 != 1999843442)
                {
                  v35 = 2016567667;
                  goto LABEL_5881;
                }

LABEL_4829:
                if (a3)
                {
                  v739 = a4 == 0;
                }

                else
                {
                  v739 = 1;
                }

                v740 = !v739;
                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_l10r;
                if (!v739 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v740 = 0;
                }

                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_l10r;
                if (v740 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v741 = a3 && a4 == 0;
                v742 = !v741;
                v10 = vt_Copy_l64r_TRC_Mat_TRC_l10r;
                if (a6)
                {
                  if (!v742 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_l64r_TRC_Mat_TRC_l10r;
                if (a5)
                {
                  if (!v742 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_l64r_rgb_l10r;
                goto LABEL_6145;
              }

              if (a2 != 2016686640)
              {
                v35 = 2016686642;
LABEL_5881:
                if (a2 != v35)
                {
                  goto LABEL_7007;
                }

LABEL_5882:
                if (a3)
                {
                  v917 = a4 == 0;
                }

                else
                {
                  v917 = 1;
                }

                v911 = !v917;
                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf422;
                if (!v917 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                goto LABEL_5891;
              }

              goto LABEL_5908;
            }

            if (a2 == 1983000886)
            {
              if (a3)
              {
                v1035 = a4 == 0;
              }

              else
              {
                v1035 = 1;
              }

              v1036 = !v1035;
              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_v216;
              if (!v1035 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v1036 = 0;
              }

              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_v216;
              if (v1036 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v1037 = a3 && a4 == 0;
              v1038 = !v1037;
              v10 = vt_Copy_l64r_TRC_Mat_TRC_v216;
              if (a6)
              {
                if (!v1038 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_l64r_TRC_Mat_TRC_v216;
              if (a5)
              {
                if (!v1038 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_l64r_rgb_v216;
              goto LABEL_6145;
            }

            if (a2 != 1983013176)
            {
              v149 = 1983144248;
              goto LABEL_4732;
            }

            goto LABEL_4800;
          }

          if (a2 > 2019963441)
          {
            if (a2 > 2037741157)
            {
              if (a2 == 2037741158 || a2 == 2037741171)
              {
                if (a3)
                {
                  v922 = a4 == 0;
                }

                else
                {
                  v922 = 1;
                }

                v923 = !v922;
                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_yuvsf;
                if (!v922 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v923 = 0;
                }

                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_yuvsf;
                if (v923 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v924 = a3 && a4 == 0;
                v925 = !v924;
                v10 = vt_Copy_l64r_TRC_Mat_TRC_yuvsf;
                if (a6)
                {
                  if (!v925 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_l64r_TRC_Mat_TRC_yuvsf;
                if (a5)
                {
                  if (!v925 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_l64r_rgb_yuvsf;
                goto LABEL_6145;
              }

              goto LABEL_7007;
            }

            if (a2 == 2019963442)
            {
              goto LABEL_5882;
            }

            v506 = 2019963956;
            goto LABEL_5797;
          }

          if (a2 == 2016687156 || a2 == 2016698739)
          {
            goto LABEL_5798;
          }

          if (a2 != 2019963440)
          {
            goto LABEL_7007;
          }

LABEL_5908:
          if (a3)
          {
            v920 = a4 == 0;
          }

          else
          {
            v920 = 1;
          }

          v921 = !v920;
          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf420;
          if (!v920 && a5 && a6)
          {
            goto LABEL_7006;
          }

          goto LABEL_6102;
        }

        if (a2 > 1952854575)
        {
          if (a2 <= 1953903151)
          {
            if (a2 != 1952854576)
            {
              if (a2 == 1952854578)
              {
                goto LABEL_5882;
              }

              v506 = 1952855092;
              goto LABEL_5797;
            }

            goto LABEL_5908;
          }

          if (a2 <= 1953903667)
          {
            if (a2 != 1953903152)
            {
              v35 = 1953903154;
              goto LABEL_5881;
            }

            goto LABEL_5908;
          }

          if (a2 == 1953903668)
          {
            goto LABEL_5798;
          }

          if (a2 != 1982882104)
          {
            goto LABEL_7007;
          }

LABEL_5525:
          if (a3)
          {
            v865 = a4 == 0;
          }

          else
          {
            v865 = 1;
          }

          v866 = !v865;
          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_420vf;
          if (!v865 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v866 = 0;
          }

          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_420vf;
          if (v866 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v867 = a3 && a4 == 0;
          v868 = !v867;
          v10 = vt_Copy_l64r_TRC_Mat_TRC_420vf;
          if (a6)
          {
            if (!v868 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l64r_TRC_Mat_TRC_420vf;
          if (a5)
          {
            if (!v868 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l64r_rgb_420vf;
          goto LABEL_6145;
        }

        if (a2 > 1937126451)
        {
          if (a2 != 1937126452)
          {
            if (a2 == 1949458803)
            {
              goto LABEL_5882;
            }

            v506 = 1949589875;
            goto LABEL_5797;
          }
        }

        else if (a2 != 1936077876)
        {
          if (a2 != 1937125936)
          {
            v534 = 1937125938;
            goto LABEL_5826;
          }

          goto LABEL_6093;
        }

        goto LABEL_4470;
      }

      if (a2 > 1278226741)
      {
        if (a2 > 1647719520)
        {
          if (a2 <= 1932681586)
          {
            if (a2 == 1647719521)
            {
              if (a3)
              {
                v1024 = a4 == 0;
              }

              else
              {
                v1024 = 1;
              }

              v1025 = !v1024;
              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_b64a;
              if (!v1024 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v1025 = 0;
              }

              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_b64a;
              if (v1025 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v1026 = a3 && a4 == 0;
              v1027 = !v1026;
              v10 = vt_Copy_l64r_TRC_Mat_TRC_b64a;
              if (a6)
              {
                if (!v1027 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_l64r_TRC_Mat_TRC_b64a;
              if (a5)
              {
                if (!v1027 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_l64r_rgb_b64a;
              goto LABEL_6145;
            }

            if (a2 != 1815162994)
            {
              if (a2 != 1815491698)
              {
                goto LABEL_7007;
              }

              if (a3)
              {
                v712 = a4 == 0;
              }

              else
              {
                v712 = 1;
              }

              v713 = !v712;
              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_l64r;
              if (!v712 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v713 = 0;
              }

              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_l64r;
              if (v713 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v714 = a3 && a4 == 0;
              v715 = !v714;
              v10 = vt_Copy_l64r_TRC_Mat_TRC_l64r;
              if (a6)
              {
                if (!v715 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_l64r_TRC_Mat_TRC_l64r;
              if (a5)
              {
                if (!v715 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_l64r_rgb_l64r;
              goto LABEL_6145;
            }

            goto LABEL_4829;
          }

          if (a2 > 1936077359)
          {
            if (a2 != 1936077360)
            {
              v534 = 1936077362;
LABEL_5826:
              if (a2 != v534)
              {
                goto LABEL_7007;
              }

LABEL_5827:
              if (a3)
              {
                v910 = a4 == 0;
              }

              else
              {
                v910 = 1;
              }

              v911 = !v910;
              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf422;
              if (!v910 && a5 && a6)
              {
                goto LABEL_7006;
              }

LABEL_5891:
              if (a5)
              {
                v911 = 0;
              }

              v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf422;
              if (v911 == 1 && a6)
              {
                goto LABEL_7006;
              }

              v918 = a3 && a4 == 0;
              v919 = !v918;
              v10 = vt_Copy_l64r_TRC_Mat_TRC_xf422;
              if (a6)
              {
                if (!v919 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_l64r_TRC_Mat_TRC_xf422;
              if (a5)
              {
                if (!v919 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_l64r_rgb_xf422;
              goto LABEL_6145;
            }

LABEL_6093:
            if (a3)
            {
              v949 = a4 == 0;
            }

            else
            {
              v949 = 1;
            }

            v921 = !v949;
            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf420;
            if (!v949 && a5 && a6)
            {
              goto LABEL_7006;
            }

LABEL_6102:
            if (a5)
            {
              v921 = 0;
            }

            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf420;
            if (v921 == 1 && a6)
            {
              goto LABEL_7006;
            }

            v950 = a3 && a4 == 0;
            v951 = !v950;
            v10 = vt_Copy_l64r_TRC_Mat_TRC_xf420;
            if (a6)
            {
              if (!v951 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l64r_TRC_Mat_TRC_xf420;
            if (a5)
            {
              if (!v951 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l64r_rgb_xf420;
            goto LABEL_6145;
          }

          if (a2 == 1932681587)
          {
            goto LABEL_5827;
          }

          if (a2 != 1932812659)
          {
            goto LABEL_7007;
          }

LABEL_4470:
          if (a3)
          {
            v691 = a4 == 0;
          }

          else
          {
            v691 = 1;
          }

          v692 = !v691;
          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf444;
          if (!v691 && a5 && a6)
          {
            goto LABEL_7006;
          }

LABEL_5807:
          if (a5)
          {
            v692 = 0;
          }

          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf444;
          if (v692 == 1 && a6)
          {
            goto LABEL_7006;
          }

          v908 = a3 && a4 == 0;
          v909 = !v908;
          v10 = vt_Copy_l64r_TRC_Mat_TRC_xf444;
          if (a6)
          {
            if (!v909 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l64r_TRC_Mat_TRC_xf444;
          if (a5)
          {
            if (!v909 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l64r_rgb_xf444;
          goto LABEL_6145;
        }

        if (a2 > 1380411456)
        {
          if (a2 == 1380411457)
          {
            if (a3)
            {
              v1043 = a4 == 0;
            }

            else
            {
              v1043 = 1;
            }

            v1044 = !v1043;
            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_RGhA;
            if (!v1043 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v1044 = 0;
            }

            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_RGhA;
            if (v1044 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v1045 = a3 && a4 == 0;
            v1046 = !v1045;
            v10 = vt_Copy_l64r_TRC_Mat_TRC_RGhA;
            if (a6)
            {
              if (!v1046 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l64r_TRC_Mat_TRC_RGhA;
            if (a5)
            {
              if (!v1046 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l64r_rgb_RGhA;
            goto LABEL_6145;
          }

          if (a2 != 1630697081)
          {
            if (a2 != 1647534392)
            {
              goto LABEL_7007;
            }

            goto LABEL_4829;
          }

LABEL_5142:
          if (a3)
          {
            v790 = a4 == 0;
          }

          else
          {
            v790 = 1;
          }

          v791 = !v790;
          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_2vuyf;
          if (!v790 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v791 = 0;
          }

          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_2vuyf;
          if (v791 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v792 = a3 && a4 == 0;
          v793 = !v792;
          v10 = vt_Copy_l64r_TRC_Mat_TRC_2vuyf;
          if (a6)
          {
            if (!v793 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l64r_TRC_Mat_TRC_2vuyf;
          if (a5)
          {
            if (!v793 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l64r_rgb_2vuyf;
          goto LABEL_6145;
        }

        if (a2 == 1278226742)
        {
          goto LABEL_4470;
        }

        if (a2 != 1380401729)
        {
          if (a2 != 1380410945)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v542 = a4 == 0;
          }

          else
          {
            v542 = 1;
          }

          v543 = !v542;
          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_RGfA;
          if (!v542 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v543 = 0;
          }

          v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_RGfA;
          if (v543 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v544 = a3 && a4 == 0;
          v545 = !v544;
          v10 = vt_Copy_l64r_TRC_Mat_TRC_RGfA;
          if (a6)
          {
            if (!v545 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l64r_TRC_Mat_TRC_RGfA;
          if (a5)
          {
            if (!v545 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l64r_rgb_RGfA;
          goto LABEL_6145;
        }
      }

      else
      {
        if (a2 > 875704949)
        {
          if (a2 <= 1111970368)
          {
            if (a2 != 875704950)
            {
              if (a2 == 875836518)
              {
LABEL_4733:
                if (a3)
                {
                  v727 = a4 == 0;
                }

                else
                {
                  v727 = 1;
                }

                v728 = !v727;
                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_444vf;
                if (!v727 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v728 = 0;
                }

                v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_444vf;
                if (v728 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v729 = a3 && a4 == 0;
                v730 = !v729;
                v10 = vt_Copy_l64r_TRC_Mat_TRC_444vf;
                if (a6)
                {
                  if (!v730 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_l64r_TRC_Mat_TRC_444vf;
                if (a5)
                {
                  if (!v730 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_l64r_rgb_444vf;
                goto LABEL_6145;
              }

              v149 = 875836534;
LABEL_4732:
              if (a2 != v149)
              {
                goto LABEL_7007;
              }

              goto LABEL_4733;
            }

LABEL_4800:
            if (a3)
            {
              v735 = a4 == 0;
            }

            else
            {
              v735 = 1;
            }

            v736 = !v735;
            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_422vf;
            if (!v735 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v736 = 0;
            }

            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_422vf;
            if (v736 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v737 = a3 && a4 == 0;
            v738 = !v737;
            v10 = vt_Copy_l64r_TRC_Mat_TRC_422vf;
            if (a6)
            {
              if (!v738 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l64r_TRC_Mat_TRC_422vf;
            if (a5)
            {
              if (!v738 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l64r_rgb_422vf;
            goto LABEL_6145;
          }

          if (a2 > 1278226735)
          {
            if (a2 == 1278226736)
            {
              goto LABEL_5798;
            }

            v506 = 1278226738;
LABEL_5797:
            if (a2 != v506)
            {
              goto LABEL_7007;
            }

LABEL_5798:
            if (a3)
            {
              v907 = a4 == 0;
            }

            else
            {
              v907 = 1;
            }

            v692 = !v907;
            v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_xf444;
            if (!v907 && a5 && a6)
            {
              goto LABEL_7006;
            }

            goto LABEL_5807;
          }

          if (a2 != 1111970369)
          {
            v149 = 1278226488;
            goto LABEL_4732;
          }

          goto LABEL_4971;
        }

        if (a2 > 875704421)
        {
          if (a2 != 875704422 && a2 != 875704438)
          {
            if (a2 != 875704934)
            {
              goto LABEL_7007;
            }

            goto LABEL_4800;
          }

          goto LABEL_5525;
        }

        if (a2 != 32)
        {
          if (a2 != 846624102 && a2 != 846624121)
          {
            goto LABEL_7007;
          }

          goto LABEL_5142;
        }
      }

LABEL_4971:
      if (a3)
      {
        v763 = a4 == 0;
      }

      else
      {
        v763 = 1;
      }

      v764 = !v763;
      v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_BGRA;
      if (!v763 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v764 = 0;
      }

      v10 = vt_Copy_l64r_TRC_Tone_Mat_TRC_BGRA;
      if (v764 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v765 = a3 && a4 == 0;
      v766 = !v765;
      v10 = vt_Copy_l64r_TRC_Mat_TRC_BGRA;
      if (a6)
      {
        if (!v766 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_l64r_TRC_Mat_TRC_BGRA;
      if (a5)
      {
        if (!v766 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_l64r_rgb_BGRA;
      goto LABEL_6145;
    }

    if (a1 > 1380411456)
    {
      if (a1 != 1380411457)
      {
        if (a1 == 1647534392)
        {
          goto LABEL_136;
        }

        if (a1 != 1647719521)
        {
          goto LABEL_7007;
        }

        v10 = 0;
        if (a2 > 1936077875)
        {
          if (a2 > 1983000885)
          {
            if (a2 <= 2016687155)
            {
              if (a2 > 1999843441)
              {
                if (a2 <= 2016686639)
                {
                  if (a2 != 1999843442)
                  {
                    v15 = 2016567667;
                    goto LABEL_5948;
                  }

LABEL_4887:
                  if (a3)
                  {
                    v747 = a4 == 0;
                  }

                  else
                  {
                    v747 = 1;
                  }

                  v748 = !v747;
                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_l10r;
                  if (!v747 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v748 = 0;
                  }

                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_l10r;
                  if (v748 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v749 = a3 && a4 == 0;
                  v750 = !v749;
                  v10 = vt_Copy_b64a_TRC_Mat_TRC_l10r;
                  if (a6)
                  {
                    if (!v750 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_b64a_TRC_Mat_TRC_l10r;
                  if (a5)
                  {
                    if (!v750 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_b64a_rgb_l10r;
                  goto LABEL_6145;
                }

                if (a2 != 2016686640)
                {
                  v15 = 2016686642;
LABEL_5948:
                  if (a2 != v15)
                  {
                    goto LABEL_7007;
                  }

LABEL_5949:
                  if (a3)
                  {
                    v926 = a4 == 0;
                  }

                  else
                  {
                    v926 = 1;
                  }

                  v916 = !v926;
                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf422;
                  if (!v926 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  goto LABEL_5958;
                }

                goto LABEL_5975;
              }

              if (a2 == 1983000886)
              {
                if (a3)
                {
                  v1039 = a4 == 0;
                }

                else
                {
                  v1039 = 1;
                }

                v1040 = !v1039;
                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_v216;
                if (!v1039 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v1040 = 0;
                }

                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_v216;
                if (v1040 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v1041 = a3 && a4 == 0;
                v1042 = !v1041;
                v10 = vt_Copy_b64a_TRC_Mat_TRC_v216;
                if (a6)
                {
                  if (!v1042 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_b64a_TRC_Mat_TRC_v216;
                if (a5)
                {
                  if (!v1042 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_b64a_rgb_v216;
                goto LABEL_6145;
              }

              if (a2 != 1983013176)
              {
                v150 = 1983144248;
                goto LABEL_4766;
              }

              goto LABEL_4858;
            }

            if (a2 > 2019963441)
            {
              if (a2 > 2037741157)
              {
                if (a2 == 2037741158 || a2 == 2037741171)
                {
                  if (a3)
                  {
                    v931 = a4 == 0;
                  }

                  else
                  {
                    v931 = 1;
                  }

                  v932 = !v931;
                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_yuvsf;
                  if (!v931 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v932 = 0;
                  }

                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_yuvsf;
                  if (v932 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v933 = a3 && a4 == 0;
                  v934 = !v933;
                  v10 = vt_Copy_b64a_TRC_Mat_TRC_yuvsf;
                  if (a6)
                  {
                    if (!v934 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_b64a_TRC_Mat_TRC_yuvsf;
                  if (a5)
                  {
                    if (!v934 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_b64a_rgb_yuvsf;
                  goto LABEL_6145;
                }

                goto LABEL_7007;
              }

              if (a2 == 2019963442)
              {
                goto LABEL_5949;
              }

              v507 = 2019963956;
              goto LABEL_5839;
            }

            if (a2 == 2016687156 || a2 == 2016698739)
            {
              goto LABEL_5840;
            }

            if (a2 != 2019963440)
            {
              goto LABEL_7007;
            }

LABEL_5975:
            if (a3)
            {
              v929 = a4 == 0;
            }

            else
            {
              v929 = 1;
            }

            v930 = !v929;
            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf420;
            if (!v929 && a5 && a6)
            {
              goto LABEL_7006;
            }

            goto LABEL_6128;
          }

          if (a2 > 1952854575)
          {
            if (a2 <= 1953903151)
            {
              if (a2 != 1952854576)
              {
                if (a2 == 1952854578)
                {
                  goto LABEL_5949;
                }

                v507 = 1952855092;
                goto LABEL_5839;
              }

              goto LABEL_5975;
            }

            if (a2 <= 1953903667)
            {
              if (a2 != 1953903152)
              {
                v15 = 1953903154;
                goto LABEL_5948;
              }

              goto LABEL_5975;
            }

            if (a2 == 1953903668)
            {
              goto LABEL_5840;
            }

            if (a2 != 1982882104)
            {
              goto LABEL_7007;
            }

LABEL_5553:
            if (a3)
            {
              v869 = a4 == 0;
            }

            else
            {
              v869 = 1;
            }

            v870 = !v869;
            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_420vf;
            if (!v869 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v870 = 0;
            }

            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_420vf;
            if (v870 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v871 = a3 && a4 == 0;
            v872 = !v871;
            v10 = vt_Copy_b64a_TRC_Mat_TRC_420vf;
            if (a6)
            {
              if (!v872 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_b64a_TRC_Mat_TRC_420vf;
            if (a5)
            {
              if (!v872 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_b64a_rgb_420vf;
            goto LABEL_6145;
          }

          if (a2 > 1937126451)
          {
            if (a2 != 1937126452)
            {
              if (a2 == 1949458803)
              {
                goto LABEL_5949;
              }

              v507 = 1949589875;
              goto LABEL_5839;
            }
          }

          else if (a2 != 1936077876)
          {
            if (a2 != 1937125936)
            {
              v535 = 1937125938;
              goto LABEL_5868;
            }

            goto LABEL_6119;
          }

          goto LABEL_4483;
        }

        if (a2 > 1278226741)
        {
          if (a2 > 1647719520)
          {
            if (a2 <= 1932681586)
            {
              if (a2 == 1647719521)
              {
                if (a3)
                {
                  v1028 = a4 == 0;
                }

                else
                {
                  v1028 = 1;
                }

                v1029 = !v1028;
                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_b64a;
                if (!v1028 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v1029 = 0;
                }

                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_b64a;
                if (v1029 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v1030 = a3 && a4 == 0;
                v1031 = !v1030;
                v10 = vt_Copy_b64a_TRC_Mat_TRC_b64a;
                if (a6)
                {
                  if (!v1031 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_b64a_TRC_Mat_TRC_b64a;
                if (a5)
                {
                  if (!v1031 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_b64a_rgb_b64a;
                goto LABEL_6145;
              }

              if (a2 != 1815162994)
              {
                if (a2 != 1815491698)
                {
                  goto LABEL_7007;
                }

                if (a3)
                {
                  v716 = a4 == 0;
                }

                else
                {
                  v716 = 1;
                }

                v717 = !v716;
                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_l64r;
                if (!v716 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v717 = 0;
                }

                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_l64r;
                if (v717 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v718 = a3 && a4 == 0;
                v719 = !v718;
                v10 = vt_Copy_b64a_TRC_Mat_TRC_l64r;
                if (a6)
                {
                  if (!v719 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_b64a_TRC_Mat_TRC_l64r;
                if (a5)
                {
                  if (!v719 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_b64a_rgb_l64r;
                goto LABEL_6145;
              }

              goto LABEL_4887;
            }

            if (a2 > 1936077359)
            {
              if (a2 != 1936077360)
              {
                v535 = 1936077362;
LABEL_5868:
                if (a2 != v535)
                {
                  goto LABEL_7007;
                }

LABEL_5869:
                if (a3)
                {
                  v915 = a4 == 0;
                }

                else
                {
                  v915 = 1;
                }

                v916 = !v915;
                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf422;
                if (!v915 && a5 && a6)
                {
                  goto LABEL_7006;
                }

LABEL_5958:
                if (a5)
                {
                  v916 = 0;
                }

                v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf422;
                if (v916 == 1 && a6)
                {
                  goto LABEL_7006;
                }

                v927 = a3 && a4 == 0;
                v928 = !v927;
                v10 = vt_Copy_b64a_TRC_Mat_TRC_xf422;
                if (a6)
                {
                  if (!v928 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_b64a_TRC_Mat_TRC_xf422;
                if (a5)
                {
                  if (!v928 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_b64a_rgb_xf422;
                goto LABEL_6145;
              }

LABEL_6119:
              if (a3)
              {
                v952 = a4 == 0;
              }

              else
              {
                v952 = 1;
              }

              v930 = !v952;
              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf420;
              if (!v952 && a5 && a6)
              {
                goto LABEL_7006;
              }

LABEL_6128:
              if (a5)
              {
                v930 = 0;
              }

              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf420;
              if (v930 == 1 && a6)
              {
                goto LABEL_7006;
              }

              v953 = a3 && a4 == 0;
              v954 = !v953;
              v10 = vt_Copy_b64a_TRC_Mat_TRC_xf420;
              if (a6)
              {
                if (!v954 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_b64a_TRC_Mat_TRC_xf420;
              if (a5)
              {
                if (!v954 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_b64a_rgb_xf420;
              goto LABEL_6145;
            }

            if (a2 == 1932681587)
            {
              goto LABEL_5869;
            }

            if (a2 != 1932812659)
            {
              goto LABEL_7007;
            }

LABEL_4483:
            if (a3)
            {
              v693 = a4 == 0;
            }

            else
            {
              v693 = 1;
            }

            v694 = !v693;
            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf444;
            if (!v693 && a5 && a6)
            {
              goto LABEL_7006;
            }

LABEL_5849:
            if (a5)
            {
              v694 = 0;
            }

            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf444;
            if (v694 == 1 && a6)
            {
              goto LABEL_7006;
            }

            v913 = a3 && a4 == 0;
            v914 = !v913;
            v10 = vt_Copy_b64a_TRC_Mat_TRC_xf444;
            if (a6)
            {
              if (!v914 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_b64a_TRC_Mat_TRC_xf444;
            if (a5)
            {
              if (!v914 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_b64a_rgb_xf444;
            goto LABEL_6145;
          }

          if (a2 > 1380411456)
          {
            if (a2 == 1380411457)
            {
              if (a3)
              {
                v1047 = a4 == 0;
              }

              else
              {
                v1047 = 1;
              }

              v1048 = !v1047;
              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_RGhA;
              if (!v1047 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v1048 = 0;
              }

              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_RGhA;
              if (v1048 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v1049 = a3 && a4 == 0;
              v1050 = !v1049;
              v10 = vt_Copy_b64a_TRC_Mat_TRC_RGhA;
              if (a6)
              {
                if (!v1050 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_b64a_TRC_Mat_TRC_RGhA;
              if (a5)
              {
                if (!v1050 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_b64a_rgb_RGhA;
              goto LABEL_6145;
            }

            if (a2 != 1630697081)
            {
              if (a2 != 1647534392)
              {
                goto LABEL_7007;
              }

              goto LABEL_4887;
            }

LABEL_5168:
            if (a3)
            {
              v794 = a4 == 0;
            }

            else
            {
              v794 = 1;
            }

            v795 = !v794;
            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_2vuyf;
            if (!v794 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v795 = 0;
            }

            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_2vuyf;
            if (v795 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v796 = a3 && a4 == 0;
            v797 = !v796;
            v10 = vt_Copy_b64a_TRC_Mat_TRC_2vuyf;
            if (a6)
            {
              if (!v797 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_b64a_TRC_Mat_TRC_2vuyf;
            if (a5)
            {
              if (!v797 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_b64a_rgb_2vuyf;
            goto LABEL_6145;
          }

          if (a2 == 1278226742)
          {
            goto LABEL_4483;
          }

          if (a2 != 1380401729)
          {
            if (a2 != 1380410945)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v546 = a4 == 0;
            }

            else
            {
              v546 = 1;
            }

            v547 = !v546;
            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_RGfA;
            if (!v546 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v547 = 0;
            }

            v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_RGfA;
            if (v547 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v548 = a3 && a4 == 0;
            v549 = !v548;
            v10 = vt_Copy_b64a_TRC_Mat_TRC_RGfA;
            if (a6)
            {
              if (!v549 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_b64a_TRC_Mat_TRC_RGfA;
            if (a5)
            {
              if (!v549 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_b64a_rgb_RGfA;
            goto LABEL_6145;
          }
        }

        else
        {
          if (a2 > 875704949)
          {
            if (a2 <= 1111970368)
            {
              if (a2 != 875704950)
              {
                if (a2 == 875836518)
                {
LABEL_4767:
                  if (a3)
                  {
                    v731 = a4 == 0;
                  }

                  else
                  {
                    v731 = 1;
                  }

                  v732 = !v731;
                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_444vf;
                  if (!v731 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v732 = 0;
                  }

                  v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_444vf;
                  if (v732 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v733 = a3 && a4 == 0;
                  v734 = !v733;
                  v10 = vt_Copy_b64a_TRC_Mat_TRC_444vf;
                  if (a6)
                  {
                    if (!v734 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_b64a_TRC_Mat_TRC_444vf;
                  if (a5)
                  {
                    if (!v734 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_b64a_rgb_444vf;
                  goto LABEL_6145;
                }

                v150 = 875836534;
LABEL_4766:
                if (a2 != v150)
                {
                  goto LABEL_7007;
                }

                goto LABEL_4767;
              }

LABEL_4858:
              if (a3)
              {
                v743 = a4 == 0;
              }

              else
              {
                v743 = 1;
              }

              v744 = !v743;
              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_422vf;
              if (!v743 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v744 = 0;
              }

              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_422vf;
              if (v744 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v745 = a3 && a4 == 0;
              v746 = !v745;
              v10 = vt_Copy_b64a_TRC_Mat_TRC_422vf;
              if (a6)
              {
                if (!v746 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_b64a_TRC_Mat_TRC_422vf;
              if (a5)
              {
                if (!v746 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_b64a_rgb_422vf;
              goto LABEL_6145;
            }

            if (a2 > 1278226735)
            {
              if (a2 == 1278226736)
              {
                goto LABEL_5840;
              }

              v507 = 1278226738;
LABEL_5839:
              if (a2 != v507)
              {
                goto LABEL_7007;
              }

LABEL_5840:
              if (a3)
              {
                v912 = a4 == 0;
              }

              else
              {
                v912 = 1;
              }

              v694 = !v912;
              v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_xf444;
              if (!v912 && a5 && a6)
              {
                goto LABEL_7006;
              }

              goto LABEL_5849;
            }

            if (a2 != 1111970369)
            {
              v150 = 1278226488;
              goto LABEL_4766;
            }

            goto LABEL_4997;
          }

          if (a2 > 875704421)
          {
            if (a2 != 875704422 && a2 != 875704438)
            {
              if (a2 != 875704934)
              {
                goto LABEL_7007;
              }

              goto LABEL_4858;
            }

            goto LABEL_5553;
          }

          if (a2 != 32)
          {
            if (a2 != 846624102 && a2 != 846624121)
            {
              goto LABEL_7007;
            }

            goto LABEL_5168;
          }
        }

LABEL_4997:
        if (a3)
        {
          v767 = a4 == 0;
        }

        else
        {
          v767 = 1;
        }

        v768 = !v767;
        v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_BGRA;
        if (!v767 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v768 = 0;
        }

        v10 = vt_Copy_b64a_TRC_Tone_Mat_TRC_BGRA;
        if (v768 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v769 = a3 && a4 == 0;
        v770 = !v769;
        v10 = vt_Copy_b64a_TRC_Mat_TRC_BGRA;
        if (a6)
        {
          if (!v770 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_b64a_TRC_Mat_TRC_BGRA;
        if (a5)
        {
          if (!v770 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_b64a_rgb_BGRA;
        goto LABEL_6145;
      }

      v10 = 0;
      if (a2 > 1936077875)
      {
        if (a2 > 1983000885)
        {
          if (a2 <= 2016687155)
          {
            if (a2 > 1999843441)
            {
              if (a2 <= 2016686639)
              {
                if (a2 != 1999843442)
                {
                  v34 = 2016567667;
                  goto LABEL_5628;
                }

LABEL_4569:
                if (a3)
                {
                  v705 = a4 == 0;
                }

                else
                {
                  v705 = 1;
                }

                v706 = !v705;
                v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_l10r;
                if (!v705 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v706 = 0;
                }

                v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_l10r;
                if (v706 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v707 = a3 && a4 == 0;
                v708 = !v707;
                v10 = vt_Copy_RGhA_TRC_Mat_TRC_l10r;
                if (a6)
                {
                  if (!v708 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_RGhA_TRC_Mat_TRC_l10r;
                if (a5)
                {
                  if (!v708 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_RGhA_rgb_l10r;
                goto LABEL_6145;
              }

              if (a2 != 2016686640)
              {
                v34 = 2016686642;
LABEL_5628:
                if (a2 != v34)
                {
                  goto LABEL_7007;
                }

                goto LABEL_5629;
              }

              goto LABEL_5644;
            }

            if (a2 == 1983000886)
            {
              if (a3)
              {
                v1009 = a4 == 0;
              }

              else
              {
                v1009 = 1;
              }

              v1010 = !v1009;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_v216;
              if (!v1009 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v1010 = 0;
              }

              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_v216;
              if (v1010 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v1011 = a3 && a4 == 0;
              v1012 = !v1011;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_v216;
              if (a6)
              {
                if (!v1012 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_RGhA_TRC_Mat_TRC_v216;
              if (a5)
              {
                if (!v1012 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_RGhA_rgb_v216;
              goto LABEL_6145;
            }

            if (a2 != 1983013176)
            {
              v147 = 1983144248;
              goto LABEL_4496;
            }

            goto LABEL_4551;
          }

          if (a2 <= 2019963441)
          {
            if (a2 != 2016687156 && a2 != 2016698739)
            {
              if (a2 != 2019963440)
              {
                goto LABEL_7007;
              }

              goto LABEL_5644;
            }

            goto LABEL_5582;
          }

          if (a2 > 2037741157)
          {
            if (a2 == 2037741158 || a2 == 2037741171)
            {
              if (a3)
              {
                v886 = a4 == 0;
              }

              else
              {
                v886 = 1;
              }

              v887 = !v886;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_yuvsf;
              if (!v886 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v887 = 0;
              }

              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_yuvsf;
              if (v887 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v888 = a3 && a4 == 0;
              v889 = !v888;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_yuvsf;
              if (a6)
              {
                if (!v889 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_RGhA_TRC_Mat_TRC_yuvsf;
              if (a5)
              {
                if (!v889 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_RGhA_rgb_yuvsf;
              goto LABEL_6145;
            }

            goto LABEL_7007;
          }

          if (a2 == 2019963442)
          {
            goto LABEL_5629;
          }

          v504 = 2019963956;
          goto LABEL_5581;
        }

        if (a2 > 1952854575)
        {
          if (a2 > 1953903151)
          {
            if (a2 <= 1953903667)
            {
              if (a2 != 1953903152)
              {
                v34 = 1953903154;
                goto LABEL_5628;
              }

LABEL_5644:
              if (a3)
              {
                v883 = a4 == 0;
              }

              else
              {
                v883 = 1;
              }

              v884 = !v883;
              if (!v883 && a5 && a6)
              {
                goto LABEL_5657;
              }

              if (a5)
              {
                v884 = 0;
              }

              if (v884 == 1 && a6)
              {
LABEL_5657:
                v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf420;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v885 = getVectorCapabilities();
                result = 0;
                v31 = v885 >= 2;
                v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf420_neon_fp16;
                v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf420;
                goto LABEL_7033;
              }

              if (a3)
              {
                v993 = a4 == 0;
              }

              else
              {
                v993 = 0;
              }

              v994 = !v993;
              if (a6 && !v994 && !a5 || a5 && v994 != 1 && a6)
              {
                v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf420;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v995 = getVectorCapabilities();
                result = 0;
                v31 = v995 >= 2;
                v32 = vt_Copy_RGhA_TRC_Mat_TRC_xf420_neon_fp16;
                v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf420;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_RGhA_rgb_xf420;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1118 = getVectorCapabilities();
                result = 0;
                v31 = v1118 >= 2;
                v32 = vt_Copy_RGhA_rgb_xf420_neon_fp16;
                v10 = vt_Copy_RGhA_rgb_xf420;
                goto LABEL_7033;
              }

              goto LABEL_7026;
            }

            if (a2 == 1953903668)
            {
              goto LABEL_5582;
            }

            if (a2 != 1982882104)
            {
              goto LABEL_7007;
            }

LABEL_5491:
            if (a3)
            {
              v859 = a4 == 0;
            }

            else
            {
              v859 = 1;
            }

            v860 = !v859;
            if (!v859 && a5 && a6)
            {
              goto LABEL_5504;
            }

            if (a5)
            {
              v860 = 0;
            }

            if (v860 == 1 && a6)
            {
LABEL_5504:
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v861 = getVectorCapabilities();
              result = 0;
              v31 = v861 >= 2;
              v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf_neon_fp16;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_420vf;
              goto LABEL_7033;
            }

            if (a3)
            {
              v1072 = a4 == 0;
            }

            else
            {
              v1072 = 0;
            }

            v1073 = !v1072;
            if (a6 && !v1073 && !a5 || a5 && v1073 != 1 && a6)
            {
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_420vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1074 = getVectorCapabilities();
              result = 0;
              v31 = v1074 >= 2;
              v32 = vt_Copy_RGhA_TRC_Mat_TRC_420vf_neon_fp16;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_420vf;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_RGhA_rgb_420vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1137 = getVectorCapabilities();
              result = 0;
              v31 = v1137 >= 2;
              v32 = vt_Copy_RGhA_rgb_420vf_neon_fp16;
              v10 = vt_Copy_RGhA_rgb_420vf;
              goto LABEL_7033;
            }

            goto LABEL_7026;
          }

          if (a2 == 1952854576)
          {
            goto LABEL_5644;
          }

          if (a2 != 1952854578)
          {
            v504 = 1952855092;
            goto LABEL_5581;
          }

LABEL_5629:
          if (a3)
          {
            v880 = a4 == 0;
          }

          else
          {
            v880 = 1;
          }

          v881 = !v880;
          if (!v880 && a5 && a6)
          {
            goto LABEL_5642;
          }

          if (a5)
          {
            v881 = 0;
          }

          if (v881 == 1 && a6)
          {
LABEL_5642:
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422;
            if (a7)
            {
              goto LABEL_7006;
            }

            v882 = getVectorCapabilities();
            result = 0;
            v31 = v882 >= 2;
            v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422_neon_fp16;
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422;
            goto LABEL_7033;
          }

          if (a3)
          {
            v969 = a4 == 0;
          }

          else
          {
            v969 = 0;
          }

          v970 = !v969;
          if (a6 && !v970 && !a5 || a5 && v970 != 1 && a6)
          {
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf422;
            if (a7)
            {
              goto LABEL_7006;
            }

            v971 = getVectorCapabilities();
            result = 0;
            v31 = v971 >= 2;
            v32 = vt_Copy_RGhA_TRC_Mat_TRC_xf422_neon_fp16;
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf422;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_RGhA_rgb_xf422;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1115 = getVectorCapabilities();
            result = 0;
            v31 = v1115 >= 2;
            v32 = vt_Copy_RGhA_rgb_xf422_neon_fp16;
            v10 = vt_Copy_RGhA_rgb_xf422;
            goto LABEL_7033;
          }

          goto LABEL_7026;
        }

        if (a2 <= 1937126451)
        {
          if (a2 != 1936077876)
          {
            if (a2 != 1937125936)
            {
              v532 = 1937125938;
              goto LABEL_5599;
            }

            goto LABEL_6041;
          }

          goto LABEL_4374;
        }

        if (a2 == 1937126452)
        {
          goto LABEL_4374;
        }

        if (a2 == 1949458803)
        {
          goto LABEL_5629;
        }

        v504 = 1949589875;
LABEL_5581:
        if (a2 != v504)
        {
          goto LABEL_7007;
        }

        goto LABEL_5582;
      }

      if (a2 > 1278226741)
      {
        if (a2 > 1647719520)
        {
          if (a2 <= 1932681586)
          {
            if (a2 == 1647719521)
            {
              if (a3)
              {
                v1005 = a4 == 0;
              }

              else
              {
                v1005 = 1;
              }

              v1006 = !v1005;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_b64a;
              if (!v1005 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v1006 = 0;
              }

              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_b64a;
              if (v1006 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v1007 = a3 && a4 == 0;
              v1008 = !v1007;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_b64a;
              if (a6)
              {
                if (!v1008 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_RGhA_TRC_Mat_TRC_b64a;
              if (a5)
              {
                if (!v1008 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_RGhA_rgb_b64a;
              goto LABEL_6145;
            }

            if (a2 != 1815162994)
            {
              if (a2 != 1815491698)
              {
                goto LABEL_7007;
              }

              if (a3)
              {
                v687 = a4 == 0;
              }

              else
              {
                v687 = 1;
              }

              v688 = !v687;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_l64r;
              if (!v687 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v688 = 0;
              }

              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_l64r;
              if (v688 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v689 = a3 && a4 == 0;
              v690 = !v689;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_l64r;
              if (a6)
              {
                if (!v690 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_RGhA_TRC_Mat_TRC_l64r;
              if (a5)
              {
                if (!v690 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_RGhA_rgb_l64r;
              goto LABEL_6145;
            }

            goto LABEL_4569;
          }

          if (a2 > 1936077359)
          {
            if (a2 != 1936077360)
            {
              v532 = 1936077362;
LABEL_5599:
              if (a2 != v532)
              {
                goto LABEL_7007;
              }

              goto LABEL_5600;
            }

LABEL_6041:
            if (a3)
            {
              v941 = a4 == 0;
            }

            else
            {
              v941 = 1;
            }

            v942 = !v941;
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf420;
            if (!v941 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v942 = 0;
            }

            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf420;
            if (v942 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v943 = a3 && a4 == 0;
            v944 = !v943;
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf420;
            if (a6)
            {
              if (!v944 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf420;
            if (a5)
            {
              if (!v944 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_RGhA_rgb_xf420;
            goto LABEL_6145;
          }

          if (a2 == 1932681587)
          {
LABEL_5600:
            if (a3)
            {
              v876 = a4 == 0;
            }

            else
            {
              v876 = 1;
            }

            v877 = !v876;
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422;
            if (!v876 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v877 = 0;
            }

            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422;
            if (v877 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v878 = a3 && a4 == 0;
            v879 = !v878;
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf422;
            if (a6)
            {
              if (!v879 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf422;
            if (a5)
            {
              if (!v879 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_RGhA_rgb_xf422;
            goto LABEL_6145;
          }

          if (a2 != 1932812659)
          {
            goto LABEL_7007;
          }

LABEL_4374:
          if (a3)
          {
            v679 = a4 == 0;
          }

          else
          {
            v679 = 1;
          }

          v680 = !v679;
          v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444;
          if (!v679 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v680 = 0;
          }

          v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444;
          if (v680 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v681 = a3 && a4 == 0;
          v682 = !v681;
          v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf444;
          if (a6)
          {
            if (!v682 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf444;
          if (a5)
          {
            if (!v682 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_RGhA_rgb_xf444;
          goto LABEL_6145;
        }

        if (a2 <= 1380411456)
        {
          if (a2 == 1278226742)
          {
            goto LABEL_4374;
          }

          if (a2 != 1380401729)
          {
            if (a2 != 1380410945)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v536 = a4 == 0;
            }

            else
            {
              v536 = 1;
            }

            v537 = !v536;
            if (!v536 && a5 && a6)
            {
              goto LABEL_3558;
            }

            if (a5)
            {
              v537 = 0;
            }

            if (v537 == 1 && a6)
            {
LABEL_3558:
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v538 = getVectorCapabilities();
              result = 0;
              v31 = v538 >= 2;
              v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA;
              goto LABEL_7033;
            }

            if (a3)
            {
              v1122 = a4 == 0;
            }

            else
            {
              v1122 = 0;
            }

            v1123 = !v1122;
            if (a6 && !v1123 && !a5 || a5 && v1123 != 1 && a6)
            {
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1124 = getVectorCapabilities();
              result = 0;
              v31 = v1124 >= 2;
              v32 = vt_Copy_RGhA_TRC_Mat_TRC_RGfA_neon_fp16;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_RGfA;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_RGhA_rgb_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1147 = getVectorCapabilities();
              result = 0;
              v31 = v1147 >= 2;
              v32 = vt_Copy_RGhA_rgb_RGfA_neon_fp16;
              v10 = vt_Copy_RGhA_rgb_RGfA;
              goto LABEL_7033;
            }

LABEL_7026:
            v10 = 0;
            goto LABEL_7006;
          }

          goto LABEL_4941;
        }

        if (a2 == 1380411457)
        {
          if (a3)
          {
            v1017 = a4 == 0;
          }

          else
          {
            v1017 = 1;
          }

          v1018 = !v1017;
          if (!v1017 && a5 && a6)
          {
            goto LABEL_6445;
          }

          if (a5)
          {
            v1018 = 0;
          }

          if (v1018 == 1 && a6)
          {
LABEL_6445:
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1019 = getVectorCapabilities();
            result = 0;
            v31 = v1019 >= 2;
            v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA;
            goto LABEL_7033;
          }

          if (a3)
          {
            v1128 = a4 == 0;
          }

          else
          {
            v1128 = 0;
          }

          v1129 = !v1128;
          if (a6 && !v1129 && !a5 || a5 && v1129 != 1 && a6)
          {
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_RGhA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1130 = getVectorCapabilities();
            result = 0;
            v31 = v1130 >= 2;
            v32 = vt_Copy_RGhA_TRC_Mat_TRC_RGhA_neon_fp16;
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_RGhA;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_RGhA_rgb_RGhA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1149 = getVectorCapabilities();
            result = 0;
            v31 = v1149 >= 2;
            v32 = vt_Copy_RGhA_rgb_RGhA_neon_fp16;
            v10 = vt_Copy_RGhA_rgb_RGhA;
            goto LABEL_7033;
          }

          goto LABEL_7026;
        }

        if (a2 != 1630697081)
        {
          if (a2 != 1647534392)
          {
            goto LABEL_7007;
          }

          goto LABEL_4569;
        }
      }

      else
      {
        if (a2 > 875704949)
        {
          if (a2 <= 1111970368)
          {
            if (a2 != 875704950)
            {
              if (a2 == 875836518)
              {
LABEL_4497:
                if (a3)
                {
                  v695 = a4 == 0;
                }

                else
                {
                  v695 = 1;
                }

                v696 = !v695;
                if (!v695 && a5 && a6)
                {
                  goto LABEL_4510;
                }

                if (a5)
                {
                  v696 = 0;
                }

                if (v696 == 1 && a6)
                {
LABEL_4510:
                  v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v697 = getVectorCapabilities();
                  result = 0;
                  v31 = v697 >= 2;
                  v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                  v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v999 = a4 == 0;
                }

                else
                {
                  v999 = 0;
                }

                v1000 = !v999;
                if (a6 && !v1000 && !a5 || a5 && v1000 != 1 && a6)
                {
                  v10 = vt_Copy_RGhA_TRC_Mat_TRC_444vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1001 = getVectorCapabilities();
                  result = 0;
                  v31 = v1001 >= 2;
                  v32 = vt_Copy_RGhA_TRC_Mat_TRC_444vf_neon_fp16;
                  v10 = vt_Copy_RGhA_TRC_Mat_TRC_444vf;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_RGhA_rgb_444vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1120 = getVectorCapabilities();
                  result = 0;
                  v31 = v1120 >= 2;
                  v32 = vt_Copy_RGhA_rgb_444vf_neon_fp16;
                  v10 = vt_Copy_RGhA_rgb_444vf;
                  goto LABEL_7033;
                }

                goto LABEL_7026;
              }

              v147 = 875836534;
LABEL_4496:
              if (a2 != v147)
              {
                goto LABEL_7007;
              }

              goto LABEL_4497;
            }

LABEL_4551:
            if (a3)
            {
              v702 = a4 == 0;
            }

            else
            {
              v702 = 1;
            }

            v703 = !v702;
            if (!v702 && a5 && a6)
            {
              goto LABEL_4564;
            }

            if (a5)
            {
              v703 = 0;
            }

            if (v703 == 1 && a6)
            {
LABEL_4564:
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_422vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v704 = getVectorCapabilities();
              result = 0;
              v31 = v704 >= 2;
              v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_422vf_neon_fp16;
              v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_422vf;
              goto LABEL_7033;
            }

            if (a3)
            {
              v1088 = a4 == 0;
            }

            else
            {
              v1088 = 0;
            }

            v1089 = !v1088;
            if (a6 && !v1089 && !a5 || a5 && v1089 != 1 && a6)
            {
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_422vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1090 = getVectorCapabilities();
              result = 0;
              v31 = v1090 >= 2;
              v32 = vt_Copy_RGhA_TRC_Mat_TRC_422vf_neon_fp16;
              v10 = vt_Copy_RGhA_TRC_Mat_TRC_422vf;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_RGhA_rgb_422vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1142 = getVectorCapabilities();
              result = 0;
              v31 = v1142 >= 2;
              v32 = vt_Copy_RGhA_rgb_422vf_neon_fp16;
              v10 = vt_Copy_RGhA_rgb_422vf;
              goto LABEL_7033;
            }

            goto LABEL_7026;
          }

          if (a2 > 1278226735)
          {
            if (a2 == 1278226736)
            {
LABEL_5582:
              if (a3)
              {
                v873 = a4 == 0;
              }

              else
              {
                v873 = 1;
              }

              v874 = !v873;
              if (!v873 && a5 && a6)
              {
                goto LABEL_5595;
              }

              if (a5)
              {
                v874 = 0;
              }

              if (v874 == 1 && a6)
              {
LABEL_5595:
                v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v875 = getVectorCapabilities();
                result = 0;
                v31 = v875 >= 2;
                v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444_neon_fp16;
                v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444;
                goto LABEL_7033;
              }

              if (a3)
              {
                v935 = a4 == 0;
              }

              else
              {
                v935 = 0;
              }

              v936 = !v935;
              if (a6 && !v936 && !a5 || a5 && v936 != 1 && a6)
              {
                v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v937 = getVectorCapabilities();
                result = 0;
                v31 = v937 >= 2;
                v32 = vt_Copy_RGhA_TRC_Mat_TRC_xf444_neon_fp16;
                v10 = vt_Copy_RGhA_TRC_Mat_TRC_xf444;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_RGhA_rgb_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1110 = getVectorCapabilities();
                result = 0;
                v31 = v1110 >= 2;
                v32 = vt_Copy_RGhA_rgb_xf444_neon_fp16;
                v10 = vt_Copy_RGhA_rgb_xf444;
                goto LABEL_7033;
              }

              goto LABEL_7026;
            }

            v504 = 1278226738;
            goto LABEL_5581;
          }

          if (a2 != 1111970369)
          {
            v147 = 1278226488;
            goto LABEL_4496;
          }

LABEL_4941:
          if (a3)
          {
            v757 = a4 == 0;
          }

          else
          {
            v757 = 1;
          }

          v758 = !v757;
          if (!v757 && a5 && a6)
          {
            goto LABEL_4954;
          }

          if (a5)
          {
            v758 = 0;
          }

          if (v758 == 1 && a6)
          {
LABEL_4954:
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v759 = getVectorCapabilities();
            result = 0;
            v31 = v759 >= 2;
            v32 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
            v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA;
            goto LABEL_7033;
          }

          if (a3)
          {
            v1075 = a4 == 0;
          }

          else
          {
            v1075 = 0;
          }

          v1076 = !v1075;
          if (a6 && !v1076 && !a5 || a5 && v1076 != 1 && a6)
          {
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_BGRA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1077 = getVectorCapabilities();
            result = 0;
            v31 = v1077 >= 2;
            v32 = vt_Copy_RGhA_TRC_Mat_TRC_BGRA_neon_fp16;
            v10 = vt_Copy_RGhA_TRC_Mat_TRC_BGRA;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_RGhA_rgb_BGRA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1138 = getVectorCapabilities();
            result = 0;
            v31 = v1138 >= 2;
            v32 = vt_Copy_RGhA_rgb_BGRA_neon_fp16;
            v10 = vt_Copy_RGhA_rgb_BGRA;
            goto LABEL_7033;
          }

          goto LABEL_7026;
        }

        if (a2 > 875704421)
        {
          if (a2 != 875704422 && a2 != 875704438)
          {
            if (a2 != 875704934)
            {
              goto LABEL_7007;
            }

            goto LABEL_4551;
          }

          goto LABEL_5491;
        }

        if (a2 == 32)
        {
          goto LABEL_4941;
        }

        if (a2 != 846624102 && a2 != 846624121)
        {
          goto LABEL_7007;
        }
      }

      if (a3)
      {
        v782 = a4 == 0;
      }

      else
      {
        v782 = 1;
      }

      v783 = !v782;
      v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_2vuyf;
      if (!v782 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v783 = 0;
      }

      v10 = vt_Copy_RGhA_TRC_Tone_Mat_TRC_2vuyf;
      if (v783 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v784 = a3 && a4 == 0;
      v785 = !v784;
      v10 = vt_Copy_RGhA_TRC_Mat_TRC_2vuyf;
      if (a6)
      {
        if (!v785 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_RGhA_TRC_Mat_TRC_2vuyf;
      if (a5)
      {
        if (!v785 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_RGhA_rgb_2vuyf;
      goto LABEL_6145;
    }

    if (a1 == 1380401729)
    {
      goto LABEL_179;
    }

    if (a1 != 1380410945)
    {
      goto LABEL_7007;
    }

    v10 = 0;
    if (a2 > 1936077875)
    {
      if (a2 > 1983000885)
      {
        if (a2 <= 2016687155)
        {
          if (a2 > 1999843441)
          {
            if (a2 <= 2016686639)
            {
              if (a2 != 1999843442)
              {
                v21 = 2016567667;
                goto LABEL_5736;
              }

LABEL_4703:
              if (a3)
              {
                v723 = a4 == 0;
              }

              else
              {
                v723 = 1;
              }

              v724 = !v723;
              v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_l10r;
              if (!v723 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v724 = 0;
              }

              v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_l10r;
              if (v724 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v725 = a3 && a4 == 0;
              v726 = !v725;
              v10 = vt_Copy_RGfA_TRC_Mat_TRC_l10r;
              if (a6)
              {
                if (!v726 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_RGfA_TRC_Mat_TRC_l10r;
              if (a5)
              {
                if (!v726 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_RGfA_rgb_l10r;
              goto LABEL_6145;
            }

            if (a2 != 2016686640)
            {
              v21 = 2016686642;
LABEL_5736:
              if (a2 != v21)
              {
                goto LABEL_7007;
              }

              goto LABEL_5737;
            }

            goto LABEL_5752;
          }

          if (a2 == 1983000886)
          {
            if (a3)
            {
              v1020 = a4 == 0;
            }

            else
            {
              v1020 = 1;
            }

            v1021 = !v1020;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_v216;
            if (!v1020 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v1021 = 0;
            }

            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_v216;
            if (v1021 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v1022 = a3 && a4 == 0;
            v1023 = !v1022;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_v216;
            if (a6)
            {
              if (!v1023 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_RGfA_TRC_Mat_TRC_v216;
            if (a5)
            {
              if (!v1023 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_RGfA_rgb_v216;
            goto LABEL_6145;
          }

          if (a2 != 1983013176)
          {
            v148 = 1983144248;
            goto LABEL_4598;
          }

          goto LABEL_4685;
        }

        if (a2 <= 2019963441)
        {
          if (a2 != 2016687156 && a2 != 2016698739)
          {
            if (a2 != 2019963440)
            {
              goto LABEL_7007;
            }

            goto LABEL_5752;
          }

          goto LABEL_5690;
        }

        if (a2 > 2037741157)
        {
          if (a2 == 2037741158 || a2 == 2037741171)
          {
            if (a3)
            {
              v903 = a4 == 0;
            }

            else
            {
              v903 = 1;
            }

            v904 = !v903;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_yuvsf;
            if (!v903 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v904 = 0;
            }

            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_yuvsf;
            if (v904 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v905 = a3 && a4 == 0;
            v906 = !v905;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_yuvsf;
            if (a6)
            {
              if (!v906 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_RGfA_TRC_Mat_TRC_yuvsf;
            if (a5)
            {
              if (!v906 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_RGfA_rgb_yuvsf;
            goto LABEL_6145;
          }

          goto LABEL_7007;
        }

        if (a2 == 2019963442)
        {
          goto LABEL_5737;
        }

        v505 = 2019963956;
        goto LABEL_5689;
      }

      if (a2 > 1952854575)
      {
        if (a2 > 1953903151)
        {
          if (a2 <= 1953903667)
          {
            if (a2 != 1953903152)
            {
              v21 = 1953903154;
              goto LABEL_5736;
            }

LABEL_5752:
            if (a3)
            {
              v900 = a4 == 0;
            }

            else
            {
              v900 = 1;
            }

            v901 = !v900;
            if (!v900 && a5 && a6)
            {
              goto LABEL_5765;
            }

            if (a5)
            {
              v901 = 0;
            }

            if (v901 == 1 && a6)
            {
LABEL_5765:
              v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v902 = getVectorCapabilities();
              result = 0;
              v31 = v902 >= 2;
              v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            if (a3)
            {
              v996 = a4 == 0;
            }

            else
            {
              v996 = 0;
            }

            v997 = !v996;
            if (a6 && !v997 && !a5 || a5 && v997 != 1 && a6)
            {
              v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v998 = getVectorCapabilities();
              result = 0;
              v31 = v998 >= 2;
              v32 = vt_Copy_RGfA_TRC_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_RGfA_rgb_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1119 = getVectorCapabilities();
              result = 0;
              v31 = v1119 >= 2;
              v32 = vt_Copy_RGfA_rgb_xf420_neon_fp16;
              v10 = vt_Copy_RGfA_rgb_xf420;
              goto LABEL_7033;
            }

            goto LABEL_7026;
          }

          if (a2 == 1953903668)
          {
            goto LABEL_5690;
          }

          if (a2 != 1982882104)
          {
            goto LABEL_7007;
          }

LABEL_5508:
          if (a3)
          {
            v862 = a4 == 0;
          }

          else
          {
            v862 = 1;
          }

          v863 = !v862;
          if (!v862 && a5 && a6)
          {
            goto LABEL_5521;
          }

          if (a5)
          {
            v863 = 0;
          }

          if (v863 == 1 && a6)
          {
LABEL_5521:
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v864 = getVectorCapabilities();
            result = 0;
            v31 = v864 >= 2;
            v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf_neon_fp16;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf;
            goto LABEL_7033;
          }

          if (a3)
          {
            v1078 = a4 == 0;
          }

          else
          {
            v1078 = 0;
          }

          v1079 = !v1078;
          if (a6 && !v1079 && !a5 || a5 && v1079 != 1 && a6)
          {
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1080 = getVectorCapabilities();
            result = 0;
            v31 = v1080 >= 2;
            v32 = vt_Copy_RGfA_TRC_Mat_TRC_420vf_neon_fp16;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_420vf;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_RGfA_rgb_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1139 = getVectorCapabilities();
            result = 0;
            v31 = v1139 >= 2;
            v32 = vt_Copy_RGfA_rgb_420vf_neon_fp16;
            v10 = vt_Copy_RGfA_rgb_420vf;
            goto LABEL_7033;
          }

          goto LABEL_7026;
        }

        if (a2 == 1952854576)
        {
          goto LABEL_5752;
        }

        if (a2 != 1952854578)
        {
          v505 = 1952855092;
          goto LABEL_5689;
        }

LABEL_5737:
        if (a3)
        {
          v897 = a4 == 0;
        }

        else
        {
          v897 = 1;
        }

        v898 = !v897;
        if (!v897 && a5 && a6)
        {
          goto LABEL_5750;
        }

        if (a5)
        {
          v898 = 0;
        }

        if (v898 == 1 && a6)
        {
LABEL_5750:
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422;
          if (a7)
          {
            goto LABEL_7006;
          }

          v899 = getVectorCapabilities();
          result = 0;
          v31 = v899 >= 2;
          v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422_neon_fp16;
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422;
          goto LABEL_7033;
        }

        if (a3)
        {
          v972 = a4 == 0;
        }

        else
        {
          v972 = 0;
        }

        v973 = !v972;
        if (a6 && !v973 && !a5 || a5 && v973 != 1 && a6)
        {
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf422;
          if (a7)
          {
            goto LABEL_7006;
          }

          v974 = getVectorCapabilities();
          result = 0;
          v31 = v974 >= 2;
          v32 = vt_Copy_RGfA_TRC_Mat_TRC_xf422_neon_fp16;
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf422;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_RGfA_rgb_xf422;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1116 = getVectorCapabilities();
          result = 0;
          v31 = v1116 >= 2;
          v32 = vt_Copy_RGfA_rgb_xf422_neon_fp16;
          v10 = vt_Copy_RGfA_rgb_xf422;
          goto LABEL_7033;
        }

        goto LABEL_7026;
      }

      if (a2 <= 1937126451)
      {
        if (a2 != 1936077876)
        {
          if (a2 != 1937125936)
          {
            v533 = 1937125938;
            goto LABEL_5707;
          }

          goto LABEL_6067;
        }

        goto LABEL_4409;
      }

      if (a2 == 1937126452)
      {
        goto LABEL_4409;
      }

      if (a2 == 1949458803)
      {
        goto LABEL_5737;
      }

      v505 = 1949589875;
LABEL_5689:
      if (a2 != v505)
      {
        goto LABEL_7007;
      }

      goto LABEL_5690;
    }

    if (a2 > 1278226741)
    {
      if (a2 > 1647719520)
      {
        if (a2 <= 1932681586)
        {
          if (a2 == 1647719521)
          {
            if (a3)
            {
              v1013 = a4 == 0;
            }

            else
            {
              v1013 = 1;
            }

            v1014 = !v1013;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_b64a;
            if (!v1013 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v1014 = 0;
            }

            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_b64a;
            if (v1014 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v1015 = a3 && a4 == 0;
            v1016 = !v1015;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_b64a;
            if (a6)
            {
              if (!v1016 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_RGfA_TRC_Mat_TRC_b64a;
            if (a5)
            {
              if (!v1016 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_RGfA_rgb_b64a;
            goto LABEL_6145;
          }

          if (a2 != 1815162994)
          {
            if (a2 != 1815491698)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v698 = a4 == 0;
            }

            else
            {
              v698 = 1;
            }

            v699 = !v698;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_l64r;
            if (!v698 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v699 = 0;
            }

            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_l64r;
            if (v699 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v700 = a3 && a4 == 0;
            v701 = !v700;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_l64r;
            if (a6)
            {
              if (!v701 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_RGfA_TRC_Mat_TRC_l64r;
            if (a5)
            {
              if (!v701 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_RGfA_rgb_l64r;
            goto LABEL_6145;
          }

          goto LABEL_4703;
        }

        if (a2 > 1936077359)
        {
          if (a2 != 1936077360)
          {
            v533 = 1936077362;
LABEL_5707:
            if (a2 != v533)
            {
              goto LABEL_7007;
            }

            goto LABEL_5708;
          }

LABEL_6067:
          if (a3)
          {
            v945 = a4 == 0;
          }

          else
          {
            v945 = 1;
          }

          v946 = !v945;
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf420;
          if (!v945 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v946 = 0;
          }

          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf420;
          if (v946 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v947 = a3 && a4 == 0;
          v948 = !v947;
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf420;
          if (a6)
          {
            if (!v948 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf420;
          if (a5)
          {
            if (!v948 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_RGfA_rgb_xf420;
          goto LABEL_6145;
        }

        if (a2 == 1932681587)
        {
LABEL_5708:
          if (a3)
          {
            v893 = a4 == 0;
          }

          else
          {
            v893 = 1;
          }

          v894 = !v893;
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422;
          if (!v893 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v894 = 0;
          }

          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422;
          if (v894 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v895 = a3 && a4 == 0;
          v896 = !v895;
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf422;
          if (a6)
          {
            if (!v896 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf422;
          if (a5)
          {
            if (!v896 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_RGfA_rgb_xf422;
          goto LABEL_6145;
        }

        if (a2 != 1932812659)
        {
          goto LABEL_7007;
        }

LABEL_4409:
        if (a3)
        {
          v683 = a4 == 0;
        }

        else
        {
          v683 = 1;
        }

        v684 = !v683;
        v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444;
        if (!v683 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v684 = 0;
        }

        v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444;
        if (v684 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v685 = a3 && a4 == 0;
        v686 = !v685;
        v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf444;
        if (a6)
        {
          if (!v686 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf444;
        if (a5)
        {
          if (!v686 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_RGfA_rgb_xf444;
        goto LABEL_6145;
      }

      if (a2 <= 1380411456)
      {
        if (a2 == 1278226742)
        {
          goto LABEL_4409;
        }

        if (a2 != 1380401729)
        {
          if (a2 != 1380410945)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v539 = a4 == 0;
          }

          else
          {
            v539 = 1;
          }

          v540 = !v539;
          if (!v539 && a5 && a6)
          {
            goto LABEL_3582;
          }

          if (a5)
          {
            v540 = 0;
          }

          if (v540 == 1 && a6)
          {
LABEL_3582:
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v541 = getVectorCapabilities();
            result = 0;
            v31 = v541 >= 2;
            v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGfA;
            goto LABEL_7033;
          }

          if (a3)
          {
            v1125 = a4 == 0;
          }

          else
          {
            v1125 = 0;
          }

          v1126 = !v1125;
          if (a6 && !v1126 && !a5 || a5 && v1126 != 1 && a6)
          {
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_RGfA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1127 = getVectorCapabilities();
            result = 0;
            v31 = v1127 >= 2;
            v32 = vt_Copy_RGfA_TRC_Mat_TRC_RGfA_neon_fp16;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_RGfA;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_RGfA_rgb_RGfA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1148 = getVectorCapabilities();
            result = 0;
            v31 = v1148 >= 2;
            v32 = vt_Copy_RGfA_rgb_RGfA_neon_fp16;
            v10 = vt_Copy_RGfA_rgb_RGfA;
            goto LABEL_7033;
          }

LABEL_7028:
          v10 = 0;
          goto LABEL_7006;
        }

        goto LABEL_4956;
      }

      if (a2 == 1380411457)
      {
        if (a3)
        {
          v1032 = a4 == 0;
        }

        else
        {
          v1032 = 1;
        }

        v1033 = !v1032;
        if (!v1032 && a5 && a6)
        {
          goto LABEL_6538;
        }

        if (a5)
        {
          v1033 = 0;
        }

        if (v1033 == 1 && a6)
        {
LABEL_6538:
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1034 = getVectorCapabilities();
          result = 0;
          v31 = v1034 >= 2;
          v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_RGhA;
          goto LABEL_7033;
        }

        if (a3)
        {
          v1131 = a4 == 0;
        }

        else
        {
          v1131 = 0;
        }

        v1132 = !v1131;
        if (a6 && !v1132 && !a5 || a5 && v1132 != 1 && a6)
        {
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1133 = getVectorCapabilities();
          result = 0;
          v31 = v1133 >= 2;
          v32 = vt_Copy_RGfA_TRC_Mat_TRC_RGhA_neon_fp16;
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_RGhA;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_RGfA_rgb_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1150 = getVectorCapabilities();
          result = 0;
          v31 = v1150 >= 2;
          v32 = vt_Copy_RGfA_rgb_RGhA_neon_fp16;
          v10 = vt_Copy_RGfA_rgb_RGhA;
          goto LABEL_7033;
        }

        goto LABEL_7028;
      }

      if (a2 != 1630697081)
      {
        if (a2 != 1647534392)
        {
          goto LABEL_7007;
        }

        goto LABEL_4703;
      }
    }

    else
    {
      if (a2 > 875704949)
      {
        if (a2 <= 1111970368)
        {
          if (a2 != 875704950)
          {
            if (a2 == 875836518)
            {
LABEL_4599:
              if (a3)
              {
                v709 = a4 == 0;
              }

              else
              {
                v709 = 1;
              }

              v710 = !v709;
              if (!v709 && a5 && a6)
              {
                goto LABEL_4612;
              }

              if (a5)
              {
                v710 = 0;
              }

              if (v710 == 1 && a6)
              {
LABEL_4612:
                v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v711 = getVectorCapabilities();
                result = 0;
                v31 = v711 >= 2;
                v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              if (a3)
              {
                v1002 = a4 == 0;
              }

              else
              {
                v1002 = 0;
              }

              v1003 = !v1002;
              if (a6 && !v1003 && !a5 || a5 && v1003 != 1 && a6)
              {
                v10 = vt_Copy_RGfA_TRC_Mat_TRC_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1004 = getVectorCapabilities();
                result = 0;
                v31 = v1004 >= 2;
                v32 = vt_Copy_RGfA_TRC_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_RGfA_TRC_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_RGfA_rgb_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1121 = getVectorCapabilities();
                result = 0;
                v31 = v1121 >= 2;
                v32 = vt_Copy_RGfA_rgb_444vf_neon_fp16;
                v10 = vt_Copy_RGfA_rgb_444vf;
                goto LABEL_7033;
              }

              goto LABEL_7028;
            }

            v148 = 875836534;
LABEL_4598:
            if (a2 != v148)
            {
              goto LABEL_7007;
            }

            goto LABEL_4599;
          }

LABEL_4685:
          if (a3)
          {
            v720 = a4 == 0;
          }

          else
          {
            v720 = 1;
          }

          v721 = !v720;
          if (!v720 && a5 && a6)
          {
            goto LABEL_4698;
          }

          if (a5)
          {
            v721 = 0;
          }

          if (v721 == 1 && a6)
          {
LABEL_4698:
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_422vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v722 = getVectorCapabilities();
            result = 0;
            v31 = v722 >= 2;
            v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_422vf_neon_fp16;
            v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_422vf;
            goto LABEL_7033;
          }

          if (a3)
          {
            v1094 = a4 == 0;
          }

          else
          {
            v1094 = 0;
          }

          v1095 = !v1094;
          if (a6 && !v1095 && !a5 || a5 && v1095 != 1 && a6)
          {
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_422vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1096 = getVectorCapabilities();
            result = 0;
            v31 = v1096 >= 2;
            v32 = vt_Copy_RGfA_TRC_Mat_TRC_422vf_neon_fp16;
            v10 = vt_Copy_RGfA_TRC_Mat_TRC_422vf;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_RGfA_rgb_422vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1143 = getVectorCapabilities();
            result = 0;
            v31 = v1143 >= 2;
            v32 = vt_Copy_RGfA_rgb_422vf_neon_fp16;
            v10 = vt_Copy_RGfA_rgb_422vf;
            goto LABEL_7033;
          }

          goto LABEL_7026;
        }

        if (a2 > 1278226735)
        {
          if (a2 == 1278226736)
          {
LABEL_5690:
            if (a3)
            {
              v890 = a4 == 0;
            }

            else
            {
              v890 = 1;
            }

            v891 = !v890;
            if (!v890 && a5 && a6)
            {
              goto LABEL_5703;
            }

            if (a5)
            {
              v891 = 0;
            }

            if (v891 == 1 && a6)
            {
LABEL_5703:
              v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v892 = getVectorCapabilities();
              result = 0;
              v31 = v892 >= 2;
              v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            if (a3)
            {
              v938 = a4 == 0;
            }

            else
            {
              v938 = 0;
            }

            v939 = !v938;
            if (a6 && !v939 && !a5 || a5 && v939 != 1 && a6)
            {
              v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v940 = getVectorCapabilities();
              result = 0;
              v31 = v940 >= 2;
              v32 = vt_Copy_RGfA_TRC_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_RGfA_TRC_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_RGfA_rgb_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1111 = getVectorCapabilities();
              result = 0;
              v31 = v1111 >= 2;
              v32 = vt_Copy_RGfA_rgb_xf444_neon_fp16;
              v10 = vt_Copy_RGfA_rgb_xf444;
              goto LABEL_7033;
            }

            goto LABEL_7028;
          }

          v505 = 1278226738;
          goto LABEL_5689;
        }

        if (a2 != 1111970369)
        {
          v148 = 1278226488;
          goto LABEL_4598;
        }

LABEL_4956:
        if (a3)
        {
          v760 = a4 == 0;
        }

        else
        {
          v760 = 1;
        }

        v761 = !v760;
        if (!v760 && a5 && a6)
        {
          goto LABEL_4969;
        }

        if (a5)
        {
          v761 = 0;
        }

        if (v761 == 1 && a6)
        {
LABEL_4969:
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v762 = getVectorCapabilities();
          result = 0;
          v31 = v762 >= 2;
          v32 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
          v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_BGRA;
          goto LABEL_7033;
        }

        if (a3)
        {
          v1082 = a4 == 0;
        }

        else
        {
          v1082 = 0;
        }

        v1083 = !v1082;
        if (a6 && !v1083 && !a5 || a5 && v1083 != 1 && a6)
        {
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1084 = getVectorCapabilities();
          result = 0;
          v31 = v1084 >= 2;
          v32 = vt_Copy_RGfA_TRC_Mat_TRC_BGRA_neon_fp16;
          v10 = vt_Copy_RGfA_TRC_Mat_TRC_BGRA;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_RGfA_rgb_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1140 = getVectorCapabilities();
          result = 0;
          v31 = v1140 >= 2;
          v32 = vt_Copy_RGfA_rgb_BGRA_neon_fp16;
          v10 = vt_Copy_RGfA_rgb_BGRA;
          goto LABEL_7033;
        }

        goto LABEL_7028;
      }

      if (a2 > 875704421)
      {
        if (a2 != 875704422 && a2 != 875704438)
        {
          if (a2 != 875704934)
          {
            goto LABEL_7007;
          }

          goto LABEL_4685;
        }

        goto LABEL_5508;
      }

      if (a2 == 32)
      {
        goto LABEL_4956;
      }

      if (a2 != 846624102 && a2 != 846624121)
      {
        goto LABEL_7007;
      }
    }

    if (a3)
    {
      v786 = a4 == 0;
    }

    else
    {
      v786 = 1;
    }

    v787 = !v786;
    v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_2vuyf;
    if (!v786 && a5 && a6)
    {
      goto LABEL_7006;
    }

    if (a5)
    {
      v787 = 0;
    }

    v10 = vt_Copy_RGfA_TRC_Tone_Mat_TRC_2vuyf;
    if (v787 == 1)
    {
      if (a6)
      {
        goto LABEL_7006;
      }
    }

    v788 = a3 && a4 == 0;
    v789 = !v788;
    v10 = vt_Copy_RGfA_TRC_Mat_TRC_2vuyf;
    if (a6)
    {
      if (!v789 && !a5)
      {
        goto LABEL_7006;
      }
    }

    v10 = vt_Copy_RGfA_TRC_Mat_TRC_2vuyf;
    if (a5)
    {
      if (!v789 && a6)
      {
        goto LABEL_7006;
      }
    }

    result = 0;
    v47 = (a4 | a3 | a5 | a6) == 0;
    v10 = vt_Copy_RGfA_rgb_2vuyf;
    goto LABEL_6145;
  }

  if (a1 > 1982882103)
  {
    if (a1 > 2016686641)
    {
      if (a1 <= 2019963439)
      {
        if (a1 != 2016686642)
        {
          if (a1 == 2016687156)
          {
            goto LABEL_82;
          }

          v14 = 2016698739;
          goto LABEL_81;
        }

        goto LABEL_90;
      }

      if (a1 == 2019963440)
      {
        goto LABEL_98;
      }

      if (a1 == 2019963442)
      {
        goto LABEL_90;
      }

      v14 = 2019963956;
      goto LABEL_81;
    }

    if (a1 <= 1999843441)
    {
      if (a1 != 1982882104)
      {
        if (a1 != 1983013176)
        {
          v13 = 1983144248;
          goto LABEL_51;
        }

LABEL_120:
        v10 = 0;
        if (a2 > 1937125937)
        {
          if (a2 > 1983013175)
          {
            if (a2 > 2016687155)
            {
              if (a2 > 2019963441)
              {
                if (a2 > 2037741157)
                {
                  if (a2 == 2037741158 || a2 == 2037741171)
                  {
                    if (a3)
                    {
                      v508 = a4 == 0;
                    }

                    else
                    {
                      v508 = 1;
                    }

                    v509 = !v508;
                    v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_yuvsf;
                    if (!v508 && a5 && a6)
                    {
                      goto LABEL_7006;
                    }

                    if (a5)
                    {
                      v509 = 0;
                    }

                    v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_yuvsf;
                    if (v509 == 1)
                    {
                      if (a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v510 = a3 && a4 == 0;
                    v511 = !v510;
                    v10 = vt_Copy_422vf_TRC_Mat_TRC_yuvsf;
                    if (a6)
                    {
                      if (!v511 && !a5)
                      {
                        goto LABEL_7006;
                      }
                    }

                    v10 = vt_Copy_422vf_TRC_Mat_TRC_yuvsf;
                    if (a5)
                    {
                      if (!v511 && a6)
                      {
                        goto LABEL_7006;
                      }
                    }

                    result = 0;
                    v47 = (a4 | a3 | a5 | a6) == 0;
                    v10 = vt_Copy_422vf_rgb_yuvsf;
                    goto LABEL_6145;
                  }

                  goto LABEL_7007;
                }

                if (a2 != 2019963442)
                {
                  if (a2 != 2019963956)
                  {
                    goto LABEL_7007;
                  }

                  goto LABEL_2357;
                }

LABEL_2298:
                if (a3)
                {
                  v330 = a4 == 0;
                }

                else
                {
                  v330 = 1;
                }

                v331 = !v330;
                if (!v330 && a5 && a6)
                {
                  goto LABEL_2311;
                }

                if (a5)
                {
                  v331 = 0;
                }

                if (v331 == 1 && a6)
                {
LABEL_2311:
                  v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v332 = getVectorCapabilities();
                  result = 0;
                  v31 = v332 >= 2;
                  v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422_neon_fp16;
                  v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v608 = a4 == 0;
                }

                else
                {
                  v608 = 0;
                }

                v609 = !v608;
                if (a6 && !v609 && !a5 || a5 && v609 != 1 && a6)
                {
                  v10 = vt_Copy_422vf_TRC_Mat_TRC_xf422;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v610 = getVectorCapabilities();
                  result = 0;
                  v31 = v610 >= 2;
                  v32 = vt_Copy_422vf_TRC_Mat_TRC_xf422_neon_fp16;
                  v10 = vt_Copy_422vf_TRC_Mat_TRC_xf422;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_422vf_rgb_xf422;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v980 = getVectorCapabilities();
                  result = 0;
                  v31 = v980 >= 2;
                  v32 = vt_Copy_422vf_rgb_xf422_neon_fp16;
                  v10 = vt_Copy_422vf_rgb_xf422;
                  goto LABEL_7033;
                }

                goto LABEL_6906;
              }

              if (a2 != 2016687156 && a2 != 2016698739)
              {
                if (a2 != 2019963440)
                {
                  goto LABEL_7007;
                }

                goto LABEL_2313;
              }

LABEL_2357:
              if (a3)
              {
                v340 = a4 == 0;
              }

              else
              {
                v340 = 1;
              }

              v341 = !v340;
              if (!v340 && a5 && a6)
              {
                goto LABEL_2370;
              }

              if (a5)
              {
                v341 = 0;
              }

              if (v341 == 1 && a6)
              {
LABEL_2370:
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v342 = getVectorCapabilities();
                result = 0;
                v31 = v342 >= 2;
                v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444;
                goto LABEL_7033;
              }

              if (a3)
              {
                v611 = a4 == 0;
              }

              else
              {
                v611 = 0;
              }

              v612 = !v611;
              if (a6 && !v612 && !a5 || a5 && v612 != 1 && a6)
              {
                v10 = vt_Copy_422vf_TRC_Mat_TRC_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v613 = getVectorCapabilities();
                result = 0;
                v31 = v613 >= 2;
                v32 = vt_Copy_422vf_TRC_Mat_TRC_xf444_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Mat_TRC_xf444;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_422vf_rgb_xf444;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v981 = getVectorCapabilities();
                result = 0;
                v31 = v981 >= 2;
                v32 = vt_Copy_422vf_rgb_xf444_neon_fp16;
                v10 = vt_Copy_422vf_rgb_xf444;
                goto LABEL_7033;
              }

              goto LABEL_6906;
            }

            if (a2 <= 2016567666)
            {
              if (a2 != 1983013176)
              {
                if (a2 != 1983144248)
                {
                  v38 = 1999843442;
LABEL_1138:
                  if (a2 != v38)
                  {
                    goto LABEL_7007;
                  }

LABEL_2628:
                  if (a3)
                  {
                    v387 = a4 == 0;
                  }

                  else
                  {
                    v387 = 1;
                  }

                  v388 = !v387;
                  v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_l10r;
                  if (!v387 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v388 = 0;
                  }

                  v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_l10r;
                  if (v388 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v389 = a3 && a4 == 0;
                  v390 = !v389;
                  v10 = vt_Copy_422vf_TRC_Mat_TRC_l10r;
                  if (a6)
                  {
                    if (!v390 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_422vf_TRC_Mat_TRC_l10r;
                  if (a5)
                  {
                    if (!v390 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_422vf_rgb_l10r;
                  goto LABEL_6145;
                }

LABEL_2528:
                if (a3)
                {
                  v368 = a4 == 0;
                }

                else
                {
                  v368 = 1;
                }

                v369 = !v368;
                if (!v368 && a5 && a6)
                {
                  goto LABEL_2541;
                }

                if (a5)
                {
                  v369 = 0;
                }

                if (v369 == 1 && a6)
                {
LABEL_2541:
                  v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v370 = getVectorCapabilities();
                  result = 0;
                  v31 = v370 >= 2;
                  v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                  v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf;
                  goto LABEL_7033;
                }

                if (a3)
                {
                  v810 = a4 == 0;
                }

                else
                {
                  v810 = 0;
                }

                v811 = !v810;
                if (a6 && !v811 && !a5 || a5 && v811 != 1 && a6)
                {
                  v10 = vt_Copy_422vf_TRC_Mat_TRC_444vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v812 = getVectorCapabilities();
                  result = 0;
                  v31 = v812 >= 2;
                  v32 = vt_Copy_422vf_TRC_Mat_TRC_444vf_neon_fp16;
                  v10 = vt_Copy_422vf_TRC_Mat_TRC_444vf;
                  goto LABEL_7033;
                }

                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_422vf_rgb_444vf;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v1097 = getVectorCapabilities();
                  result = 0;
                  v31 = v1097 >= 2;
                  v32 = vt_Copy_422vf_rgb_444vf_neon_fp16;
                  v10 = vt_Copy_422vf_rgb_444vf;
                  goto LABEL_7033;
                }

                goto LABEL_6906;
              }

              goto LABEL_2093;
            }

            if (a2 == 2016567667)
            {
              goto LABEL_2298;
            }

            if (a2 != 2016686640)
            {
              v56 = 2016686642;
              goto LABEL_2297;
            }

            goto LABEL_2313;
          }

          if (a2 <= 1952855091)
          {
            if (a2 > 1949589874)
            {
              if (a2 == 1949589875)
              {
                goto LABEL_2357;
              }

              if (a2 != 1952854576)
              {
                v56 = 1952854578;
LABEL_2297:
                if (a2 != v56)
                {
                  goto LABEL_7007;
                }

                goto LABEL_2298;
              }

LABEL_2313:
              if (a3)
              {
                v333 = a4 == 0;
              }

              else
              {
                v333 = 1;
              }

              v334 = !v333;
              if (!v333 && a5 && a6)
              {
                goto LABEL_2326;
              }

              if (a5)
              {
                v334 = 0;
              }

              if (v334 == 1 && a6)
              {
LABEL_2326:
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf420;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v335 = getVectorCapabilities();
                result = 0;
                v31 = v335 >= 2;
                v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf420_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf420;
                goto LABEL_7033;
              }

              if (a3)
              {
                v649 = a4 == 0;
              }

              else
              {
                v649 = 0;
              }

              v650 = !v649;
              if (a6 && !v650 && !a5 || a5 && v650 != 1 && a6)
              {
                v10 = vt_Copy_422vf_TRC_Mat_TRC_xf420;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v651 = getVectorCapabilities();
                result = 0;
                v31 = v651 >= 2;
                v32 = vt_Copy_422vf_TRC_Mat_TRC_xf420_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Mat_TRC_xf420;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_422vf_rgb_xf420;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1066 = getVectorCapabilities();
                result = 0;
                v31 = v1066 >= 2;
                v32 = vt_Copy_422vf_rgb_xf420_neon_fp16;
                v10 = vt_Copy_422vf_rgb_xf420;
                goto LABEL_7033;
              }

              goto LABEL_6906;
            }

            if (a2 != 1937125938)
            {
              if (a2 != 1937126452)
              {
                v56 = 1949458803;
                goto LABEL_2297;
              }

LABEL_2502:
              if (a3)
              {
                v364 = a4 == 0;
              }

              else
              {
                v364 = 1;
              }

              v365 = !v364;
              v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444;
              if (!v364 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v365 = 0;
              }

              v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444;
              if (v365 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v366 = a3 && a4 == 0;
              v367 = !v366;
              v10 = vt_Copy_422vf_TRC_Mat_TRC_xf444;
              if (a6)
              {
                if (!v367 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_422vf_TRC_Mat_TRC_xf444;
              if (a5)
              {
                if (!v367 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_422vf_rgb_xf444;
              goto LABEL_6145;
            }

LABEL_2779:
            if (a3)
            {
              v414 = a4 == 0;
            }

            else
            {
              v414 = 1;
            }

            v415 = !v414;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422;
            if (!v414 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v415 = 0;
            }

            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf422;
            if (v415 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v416 = a3 && a4 == 0;
            v417 = !v416;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_xf422;
            if (a6)
            {
              if (!v417 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_422vf_TRC_Mat_TRC_xf422;
            if (a5)
            {
              if (!v417 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_422vf_rgb_xf422;
            goto LABEL_6145;
          }

          if (a2 <= 1953903667)
          {
            if (a2 == 1952855092)
            {
              goto LABEL_2357;
            }

            if (a2 != 1953903152)
            {
              v56 = 1953903154;
              goto LABEL_2297;
            }

            goto LABEL_2313;
          }

          if (a2 == 1953903668)
          {
            goto LABEL_2357;
          }

          if (a2 != 1982882104)
          {
            if (a2 != 1983000886)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v336 = a4 == 0;
            }

            else
            {
              v336 = 1;
            }

            v337 = !v336;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_v216;
            if (!v336 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v337 = 0;
            }

            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_v216;
            if (v337 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v338 = a3 && a4 == 0;
            v339 = !v338;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_v216;
            if (a6)
            {
              if (!v339 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_422vf_TRC_Mat_TRC_v216;
            if (a5)
            {
              if (!v339 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_422vf_rgb_v216;
            goto LABEL_6145;
          }

LABEL_2613:
          if (a3)
          {
            v384 = a4 == 0;
          }

          else
          {
            v384 = 1;
          }

          v385 = !v384;
          if (!v384 && a5 && a6)
          {
            goto LABEL_2626;
          }

          if (a5)
          {
            v385 = 0;
          }

          if (v385 == 1 && a6)
          {
LABEL_2626:
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v386 = getVectorCapabilities();
            result = 0;
            v31 = v386 >= 2;
            v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_420vf_neon_fp16;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_420vf;
            goto LABEL_7033;
          }

          if (a3)
          {
            v819 = a4 == 0;
          }

          else
          {
            v819 = 0;
          }

          v820 = !v819;
          if (a6 && !v820 && !a5 || a5 && v820 != 1 && a6)
          {
            v10 = vt_Copy_422vf_TRC_Mat_TRC_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v821 = getVectorCapabilities();
            result = 0;
            v31 = v821 >= 2;
            v32 = vt_Copy_422vf_TRC_Mat_TRC_420vf_neon_fp16;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_420vf;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_422vf_rgb_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1100 = getVectorCapabilities();
            result = 0;
            v31 = v1100 >= 2;
            v32 = vt_Copy_422vf_rgb_420vf_neon_fp16;
            v10 = vt_Copy_422vf_rgb_420vf;
            goto LABEL_7033;
          }

          goto LABEL_6906;
        }

        if (a2 <= 1380411456)
        {
          if (a2 > 875704949)
          {
            if (a2 <= 1111970368)
            {
              if (a2 != 875704950)
              {
                if (a2 != 875836518 && a2 != 875836534)
                {
                  goto LABEL_7007;
                }

                goto LABEL_2528;
              }

LABEL_2093:
              if (a3)
              {
                v302 = a4 == 0;
              }

              else
              {
                v302 = 1;
              }

              v303 = !v302;
              if (!v302 && a5 && a6)
              {
                goto LABEL_2106;
              }

              if (a5)
              {
                v303 = 0;
              }

              if (v303 == 1 && a6)
              {
LABEL_2106:
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_422vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v304 = getVectorCapabilities();
                result = 0;
                v31 = v304 >= 2;
                v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_422vf_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_422vf;
                goto LABEL_7033;
              }

              if (a3)
              {
                v828 = a4 == 0;
              }

              else
              {
                v828 = 0;
              }

              v829 = !v828;
              if (a6 && !v829 && !a5 || a5 && v829 != 1 && a6)
              {
                v10 = vt_Copy_422vf_TRC_Mat_TRC_422vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v830 = getVectorCapabilities();
                result = 0;
                v31 = v830 >= 2;
                v32 = vt_Copy_422vf_TRC_Mat_TRC_422vf_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Mat_TRC_422vf;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_422vf_rgb_422vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1103 = getVectorCapabilities();
                result = 0;
                v31 = v1103 >= 2;
                v32 = vt_Copy_422vf_rgb_422vf_neon_fp16;
                v10 = vt_Copy_422vf_rgb_422vf;
                goto LABEL_7033;
              }

              goto LABEL_6906;
            }

            if (a2 != 1111970369 && a2 != 1380401729)
            {
              if (a2 != 1380410945)
              {
                goto LABEL_7007;
              }

              if (a3)
              {
                v309 = a4 == 0;
              }

              else
              {
                v309 = 1;
              }

              v310 = !v309;
              if (!v309 && a5 && a6)
              {
                goto LABEL_2153;
              }

              if (a5)
              {
                v310 = 0;
              }

              if (v310 == 1 && a6)
              {
LABEL_2153:
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v311 = getVectorCapabilities();
                result = 0;
                v31 = v311 >= 2;
                v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA;
                goto LABEL_7033;
              }

              if (a3)
              {
                v1051 = a4 == 0;
              }

              else
              {
                v1051 = 0;
              }

              v1052 = !v1051;
              if (a6 && !v1052 && !a5 || a5 && v1052 != 1 && a6)
              {
                v10 = vt_Copy_422vf_TRC_Mat_TRC_RGfA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1053 = getVectorCapabilities();
                result = 0;
                v31 = v1053 >= 2;
                v32 = vt_Copy_422vf_TRC_Mat_TRC_RGfA_neon_fp16;
                v10 = vt_Copy_422vf_TRC_Mat_TRC_RGfA;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_422vf_rgb_RGfA;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1134 = getVectorCapabilities();
                result = 0;
                v31 = v1134 >= 2;
                v32 = vt_Copy_422vf_rgb_RGfA_neon_fp16;
                v10 = vt_Copy_422vf_rgb_RGfA;
                goto LABEL_7033;
              }

              goto LABEL_6982;
            }
          }

          else
          {
            if (a2 > 875704421)
            {
              if (a2 != 875704422 && a2 != 875704438)
              {
                if (a2 != 875704934)
                {
                  goto LABEL_7007;
                }

                goto LABEL_2093;
              }

              goto LABEL_2613;
            }

            if (a2 != 32)
            {
              if (a2 != 846624102 && a2 != 846624121)
              {
                goto LABEL_7007;
              }

              goto LABEL_2450;
            }
          }

          if (a3)
          {
            v378 = a4 == 0;
          }

          else
          {
            v378 = 1;
          }

          v379 = !v378;
          if (!v378 && a5 && a6)
          {
            goto LABEL_2597;
          }

          if (a5)
          {
            v379 = 0;
          }

          if (v379 == 1 && a6)
          {
LABEL_2597:
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v380 = getVectorCapabilities();
            result = 0;
            v31 = v380 >= 2;
            v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA;
            goto LABEL_7033;
          }

          if (a3)
          {
            v816 = a4 == 0;
          }

          else
          {
            v816 = 0;
          }

          v817 = !v816;
          if (a6 && !v817 && !a5 || a5 && v817 != 1 && a6)
          {
            v10 = vt_Copy_422vf_TRC_Mat_TRC_BGRA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v818 = getVectorCapabilities();
            result = 0;
            v31 = v818 >= 2;
            v32 = vt_Copy_422vf_TRC_Mat_TRC_BGRA_neon_fp16;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_BGRA;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_422vf_rgb_BGRA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1099 = getVectorCapabilities();
            result = 0;
            v31 = v1099 >= 2;
            v32 = vt_Copy_422vf_rgb_BGRA_neon_fp16;
            v10 = vt_Copy_422vf_rgb_BGRA;
            goto LABEL_7033;
          }

          goto LABEL_6982;
        }

        if (a2 > 1932681586)
        {
          if (a2 > 1936077361)
          {
            if (a2 == 1936077362)
            {
              goto LABEL_2779;
            }

            if (a2 == 1936077876)
            {
              goto LABEL_2502;
            }

            v158 = 1937125936;
          }

          else
          {
            if (a2 == 1932681587)
            {
              goto LABEL_2779;
            }

            if (a2 == 1932812659)
            {
              goto LABEL_2502;
            }

            v158 = 1936077360;
          }

          if (a2 != v158)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v312 = a4 == 0;
          }

          else
          {
            v312 = 1;
          }

          v313 = !v312;
          v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf420;
          if (!v312 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v313 = 0;
          }

          v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_xf420;
          if (v313 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v314 = a3 && a4 == 0;
          v315 = !v314;
          v10 = vt_Copy_422vf_TRC_Mat_TRC_xf420;
          if (a6)
          {
            if (!v315 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_422vf_TRC_Mat_TRC_xf420;
          if (a5)
          {
            if (!v315 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_422vf_rgb_xf420;
          goto LABEL_6145;
        }

        if (a2 > 1647719520)
        {
          if (a2 == 1647719521)
          {
            if (a3)
            {
              v658 = a4 == 0;
            }

            else
            {
              v658 = 1;
            }

            v659 = !v658;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_b64a;
            if (!v658 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v659 = 0;
            }

            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_b64a;
            if (v659 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v660 = a3 && a4 == 0;
            v661 = !v660;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_b64a;
            if (a6)
            {
              if (!v661 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_422vf_TRC_Mat_TRC_b64a;
            if (a5)
            {
              if (!v661 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_422vf_rgb_b64a;
            goto LABEL_6145;
          }

          if (a2 != 1815162994)
          {
            if (a2 != 1815491698)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v305 = a4 == 0;
            }

            else
            {
              v305 = 1;
            }

            v306 = !v305;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_l64r;
            if (!v305 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v306 = 0;
            }

            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_l64r;
            if (v306 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v307 = a3 && a4 == 0;
            v308 = !v307;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_l64r;
            if (a6)
            {
              if (!v308 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_422vf_TRC_Mat_TRC_l64r;
            if (a5)
            {
              if (!v308 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_422vf_rgb_l64r;
            goto LABEL_6145;
          }

          goto LABEL_2628;
        }

        if (a2 == 1380411457)
        {
          if (a3)
          {
            v655 = a4 == 0;
          }

          else
          {
            v655 = 1;
          }

          v656 = !v655;
          if (!v655 && a5 && a6)
          {
            goto LABEL_4251;
          }

          if (a5)
          {
            v656 = 0;
          }

          if (v656 == 1 && a6)
          {
LABEL_4251:
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v657 = getVectorCapabilities();
            result = 0;
            v31 = v657 >= 2;
            v32 = vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
            v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_RGhA;
            goto LABEL_7033;
          }

          if (a3)
          {
            v1057 = a4 == 0;
          }

          else
          {
            v1057 = 0;
          }

          v1058 = !v1057;
          if (a6 && !v1058 && !a5 || a5 && v1058 != 1 && a6)
          {
            v10 = vt_Copy_422vf_TRC_Mat_TRC_RGhA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1059 = getVectorCapabilities();
            result = 0;
            v31 = v1059 >= 2;
            v32 = vt_Copy_422vf_TRC_Mat_TRC_RGhA_neon_fp16;
            v10 = vt_Copy_422vf_TRC_Mat_TRC_RGhA;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_422vf_rgb_RGhA;
            if (a7)
            {
              goto LABEL_7006;
            }

            v1145 = getVectorCapabilities();
            result = 0;
            v31 = v1145 >= 2;
            v32 = vt_Copy_422vf_rgb_RGhA_neon_fp16;
            v10 = vt_Copy_422vf_rgb_RGhA;
            goto LABEL_7033;
          }

          goto LABEL_6982;
        }

        if (a2 != 1630697081)
        {
          v38 = 1647534392;
          goto LABEL_1138;
        }

LABEL_2450:
        if (a3)
        {
          v356 = a4 == 0;
        }

        else
        {
          v356 = 1;
        }

        v357 = !v356;
        v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_2vuyf;
        if (!v356 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v357 = 0;
        }

        v10 = vt_Copy_422vf_TRC_Tone_Mat_TRC_2vuyf;
        if (v357 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v358 = a3 && a4 == 0;
        v359 = !v358;
        v10 = vt_Copy_422vf_TRC_Mat_TRC_2vuyf;
        if (a6)
        {
          if (!v359 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_422vf_TRC_Mat_TRC_2vuyf;
        if (a5)
        {
          if (!v359 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_422vf_rgb_2vuyf;
        goto LABEL_6145;
      }

LABEL_128:
      v10 = 0;
      if (a2 > 1937125937)
      {
        if (a2 > 1983013175)
        {
          if (a2 > 2016687155)
          {
            if (a2 > 2019963441)
            {
              if (a2 > 2037741157)
              {
                if (a2 == 2037741158 || a2 == 2037741171)
                {
                  if (a3)
                  {
                    v512 = a4 == 0;
                  }

                  else
                  {
                    v512 = 1;
                  }

                  v513 = !v512;
                  v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_yuvsf;
                  if (!v512 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v513 = 0;
                  }

                  v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_yuvsf;
                  if (v513 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v514 = a3 && a4 == 0;
                  v515 = !v514;
                  v10 = vt_Copy_420vf_TRC_Mat_TRC_yuvsf;
                  if (a6)
                  {
                    if (!v515 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_420vf_TRC_Mat_TRC_yuvsf;
                  if (a5)
                  {
                    if (!v515 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_420vf_rgb_yuvsf;
                  goto LABEL_6145;
                }

                goto LABEL_7007;
              }

              if (a2 != 2019963442)
              {
                if (a2 != 2019963956)
                {
                  goto LABEL_7007;
                }

                goto LABEL_2435;
              }

LABEL_2376:
              if (a3)
              {
                v343 = a4 == 0;
              }

              else
              {
                v343 = 1;
              }

              v344 = !v343;
              if (!v343 && a5 && a6)
              {
                goto LABEL_2389;
              }

              if (a5)
              {
                v344 = 0;
              }

              if (v344 == 1 && a6)
              {
LABEL_2389:
                v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf422;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v345 = getVectorCapabilities();
                result = 0;
                v31 = v345 >= 2;
                v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf422_neon_fp16;
                v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf422;
                goto LABEL_7033;
              }

              if (a3)
              {
                v614 = a4 == 0;
              }

              else
              {
                v614 = 0;
              }

              v615 = !v614;
              if (a6 && !v615 && !a5 || a5 && v615 != 1 && a6)
              {
                v10 = vt_Copy_420vf_TRC_Mat_TRC_xf422;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v616 = getVectorCapabilities();
                result = 0;
                v31 = v616 >= 2;
                v32 = vt_Copy_420vf_TRC_Mat_TRC_xf422_neon_fp16;
                v10 = vt_Copy_420vf_TRC_Mat_TRC_xf422;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_420vf_rgb_xf422;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v982 = getVectorCapabilities();
                result = 0;
                v31 = v982 >= 2;
                v32 = vt_Copy_420vf_rgb_xf422_neon_fp16;
                v10 = vt_Copy_420vf_rgb_xf422;
                goto LABEL_7033;
              }

              goto LABEL_7005;
            }

            if (a2 != 2016687156 && a2 != 2016698739)
            {
              if (a2 != 2019963440)
              {
                goto LABEL_7007;
              }

              goto LABEL_2391;
            }

LABEL_2435:
            if (a3)
            {
              v353 = a4 == 0;
            }

            else
            {
              v353 = 1;
            }

            v354 = !v353;
            if (!v353 && a5 && a6)
            {
              goto LABEL_2448;
            }

            if (a5)
            {
              v354 = 0;
            }

            if (v354 == 1 && a6)
            {
LABEL_2448:
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v355 = getVectorCapabilities();
              result = 0;
              v31 = v355 >= 2;
              v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            if (a3)
            {
              v617 = a4 == 0;
            }

            else
            {
              v617 = 0;
            }

            v618 = !v617;
            if (a6 && !v618 && !a5 || a5 && v618 != 1 && a6)
            {
              v10 = vt_Copy_420vf_TRC_Mat_TRC_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v619 = getVectorCapabilities();
              result = 0;
              v31 = v619 >= 2;
              v32 = vt_Copy_420vf_TRC_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_420vf_rgb_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v983 = getVectorCapabilities();
              result = 0;
              v31 = v983 >= 2;
              v32 = vt_Copy_420vf_rgb_xf444_neon_fp16;
              v10 = vt_Copy_420vf_rgb_xf444;
              goto LABEL_7033;
            }

            goto LABEL_7005;
          }

          if (a2 <= 2016567666)
          {
            if (a2 != 1983013176)
            {
              if (a2 != 1983144248)
              {
                v39 = 1999843442;
LABEL_1239:
                if (a2 != v39)
                {
                  goto LABEL_7007;
                }

LABEL_2684:
                if (a3)
                {
                  v397 = a4 == 0;
                }

                else
                {
                  v397 = 1;
                }

                v398 = !v397;
                v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_l10r;
                if (!v397 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v398 = 0;
                }

                v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_l10r;
                if (v398 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v399 = a3 && a4 == 0;
                v400 = !v399;
                v10 = vt_Copy_420vf_TRC_Mat_TRC_l10r;
                if (a6)
                {
                  if (!v400 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_420vf_TRC_Mat_TRC_l10r;
                if (a5)
                {
                  if (!v400 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_420vf_rgb_l10r;
                goto LABEL_6145;
              }

LABEL_2569:
              if (a3)
              {
                v375 = a4 == 0;
              }

              else
              {
                v375 = 1;
              }

              v376 = !v375;
              if (!v375 && a5 && a6)
              {
                goto LABEL_2582;
              }

              if (a5)
              {
                v376 = 0;
              }

              if (v376 == 1 && a6)
              {
LABEL_2582:
                v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v377 = getVectorCapabilities();
                result = 0;
                v31 = v377 >= 2;
                v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              if (a3)
              {
                v813 = a4 == 0;
              }

              else
              {
                v813 = 0;
              }

              v814 = !v813;
              if (a6 && !v814 && !a5 || a5 && v814 != 1 && a6)
              {
                v10 = vt_Copy_420vf_TRC_Mat_TRC_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v815 = getVectorCapabilities();
                result = 0;
                v31 = v815 >= 2;
                v32 = vt_Copy_420vf_TRC_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_420vf_TRC_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_420vf_rgb_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v1098 = getVectorCapabilities();
                result = 0;
                v31 = v1098 >= 2;
                v32 = vt_Copy_420vf_rgb_444vf_neon_fp16;
                v10 = vt_Copy_420vf_rgb_444vf;
                goto LABEL_7033;
              }

              goto LABEL_7005;
            }

            goto LABEL_2188;
          }

          if (a2 == 2016567667)
          {
            goto LABEL_2376;
          }

          if (a2 != 2016686640)
          {
            v57 = 2016686642;
            goto LABEL_2375;
          }

          goto LABEL_2391;
        }

        if (a2 <= 1952855091)
        {
          if (a2 > 1949589874)
          {
            if (a2 == 1949589875)
            {
              goto LABEL_2435;
            }

            if (a2 != 1952854576)
            {
              v57 = 1952854578;
LABEL_2375:
              if (a2 != v57)
              {
                goto LABEL_7007;
              }

              goto LABEL_2376;
            }

LABEL_2391:
            if (a3)
            {
              v346 = a4 == 0;
            }

            else
            {
              v346 = 1;
            }

            v347 = !v346;
            if (!v346 && a5 && a6)
            {
              goto LABEL_2404;
            }

            if (a5)
            {
              v347 = 0;
            }

            if (v347 == 1 && a6)
            {
LABEL_2404:
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v348 = getVectorCapabilities();
              result = 0;
              v31 = v348 >= 2;
              v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            if (a3)
            {
              v652 = a4 == 0;
            }

            else
            {
              v652 = 0;
            }

            v653 = !v652;
            if (a6 && !v653 && !a5 || a5 && v653 != 1 && a6)
            {
              v10 = vt_Copy_420vf_TRC_Mat_TRC_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v654 = getVectorCapabilities();
              result = 0;
              v31 = v654 >= 2;
              v32 = vt_Copy_420vf_TRC_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_420vf_rgb_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1067 = getVectorCapabilities();
              result = 0;
              v31 = v1067 >= 2;
              v32 = vt_Copy_420vf_rgb_xf420_neon_fp16;
              v10 = vt_Copy_420vf_rgb_xf420;
              goto LABEL_7033;
            }

            goto LABEL_7005;
          }

          if (a2 != 1937125938)
          {
            if (a2 != 1937126452)
            {
              v57 = 1949458803;
              goto LABEL_2375;
            }

LABEL_2543:
            if (a3)
            {
              v371 = a4 == 0;
            }

            else
            {
              v371 = 1;
            }

            v372 = !v371;
            v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444;
            if (!v371 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v372 = 0;
            }

            v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf444;
            if (v372 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v373 = a3 && a4 == 0;
            v374 = !v373;
            v10 = vt_Copy_420vf_TRC_Mat_TRC_xf444;
            if (a6)
            {
              if (!v374 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_420vf_TRC_Mat_TRC_xf444;
            if (a5)
            {
              if (!v374 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_420vf_rgb_xf444;
            goto LABEL_6145;
          }

LABEL_2819:
          if (a3)
          {
            v421 = a4 == 0;
          }

          else
          {
            v421 = 1;
          }

          v422 = !v421;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf422;
          if (!v421 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v422 = 0;
          }

          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf422;
          if (v422 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v423 = a3 && a4 == 0;
          v424 = !v423;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_xf422;
          if (a6)
          {
            if (!v424 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_420vf_TRC_Mat_TRC_xf422;
          if (a5)
          {
            if (!v424 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_420vf_rgb_xf422;
          goto LABEL_6145;
        }

        if (a2 <= 1953903667)
        {
          if (a2 == 1952855092)
          {
            goto LABEL_2435;
          }

          if (a2 != 1953903152)
          {
            v57 = 1953903154;
            goto LABEL_2375;
          }

          goto LABEL_2391;
        }

        if (a2 == 1953903668)
        {
          goto LABEL_2435;
        }

        if (a2 != 1982882104)
        {
          if (a2 != 1983000886)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v349 = a4 == 0;
          }

          else
          {
            v349 = 1;
          }

          v350 = !v349;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_v216;
          if (!v349 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v350 = 0;
          }

          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_v216;
          if (v350 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v351 = a3 && a4 == 0;
          v352 = !v351;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_v216;
          if (a6)
          {
            if (!v352 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_420vf_TRC_Mat_TRC_v216;
          if (a5)
          {
            if (!v352 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_420vf_rgb_v216;
          goto LABEL_6145;
        }

LABEL_2669:
        if (a3)
        {
          v394 = a4 == 0;
        }

        else
        {
          v394 = 1;
        }

        v395 = !v394;
        if (!v394 && a5 && a6)
        {
          goto LABEL_2682;
        }

        if (a5)
        {
          v395 = 0;
        }

        if (v395 == 1 && a6)
        {
LABEL_2682:
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v396 = getVectorCapabilities();
          result = 0;
          v31 = v396 >= 2;
          v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf_neon_fp16;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf;
          goto LABEL_7033;
        }

        if (a3)
        {
          v825 = a4 == 0;
        }

        else
        {
          v825 = 0;
        }

        v826 = !v825;
        if (a6 && !v826 && !a5 || a5 && v826 != 1 && a6)
        {
          v10 = vt_Copy_420vf_TRC_Mat_TRC_420vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v827 = getVectorCapabilities();
          result = 0;
          v31 = v827 >= 2;
          v32 = vt_Copy_420vf_TRC_Mat_TRC_420vf_neon_fp16;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_420vf;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_420vf_rgb_420vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1102 = getVectorCapabilities();
          result = 0;
          v31 = v1102 >= 2;
          v32 = vt_Copy_420vf_rgb_420vf_neon_fp16;
          v10 = vt_Copy_420vf_rgb_420vf;
          goto LABEL_7033;
        }

        goto LABEL_7005;
      }

      if (a2 <= 1380411456)
      {
        if (a2 > 875704949)
        {
          if (a2 <= 1111970368)
          {
            if (a2 != 875704950)
            {
              if (a2 != 875836518 && a2 != 875836534)
              {
                goto LABEL_7007;
              }

              goto LABEL_2569;
            }

LABEL_2188:
            if (a3)
            {
              v316 = a4 == 0;
            }

            else
            {
              v316 = 1;
            }

            v317 = !v316;
            if (!v316 && a5 && a6)
            {
              goto LABEL_2201;
            }

            if (a5)
            {
              v317 = 0;
            }

            if (v317 == 1 && a6)
            {
LABEL_2201:
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_422vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v318 = getVectorCapabilities();
              result = 0;
              v31 = v318 >= 2;
              v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_422vf_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_422vf;
              goto LABEL_7033;
            }

            if (a3)
            {
              v831 = a4 == 0;
            }

            else
            {
              v831 = 0;
            }

            v832 = !v831;
            if (a6 && !v832 && !a5 || a5 && v832 != 1 && a6)
            {
              v10 = vt_Copy_420vf_TRC_Mat_TRC_422vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v833 = getVectorCapabilities();
              result = 0;
              v31 = v833 >= 2;
              v32 = vt_Copy_420vf_TRC_Mat_TRC_422vf_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Mat_TRC_422vf;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_420vf_rgb_422vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1104 = getVectorCapabilities();
              result = 0;
              v31 = v1104 >= 2;
              v32 = vt_Copy_420vf_rgb_422vf_neon_fp16;
              v10 = vt_Copy_420vf_rgb_422vf;
              goto LABEL_7033;
            }

            goto LABEL_7005;
          }

          if (a2 != 1111970369 && a2 != 1380401729)
          {
            if (a2 != 1380410945)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v323 = a4 == 0;
            }

            else
            {
              v323 = 1;
            }

            v324 = !v323;
            if (!v323 && a5 && a6)
            {
              goto LABEL_2248;
            }

            if (a5)
            {
              v324 = 0;
            }

            if (v324 == 1 && a6)
            {
LABEL_2248:
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v325 = getVectorCapabilities();
              result = 0;
              v31 = v325 >= 2;
              v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_RGfA;
              goto LABEL_7033;
            }

            if (a3)
            {
              v1054 = a4 == 0;
            }

            else
            {
              v1054 = 0;
            }

            v1055 = !v1054;
            if (a6 && !v1055 && !a5 || a5 && v1055 != 1 && a6)
            {
              v10 = vt_Copy_420vf_TRC_Mat_TRC_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1056 = getVectorCapabilities();
              result = 0;
              v31 = v1056 >= 2;
              v32 = vt_Copy_420vf_TRC_Mat_TRC_RGfA_neon_fp16;
              v10 = vt_Copy_420vf_TRC_Mat_TRC_RGfA;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_420vf_rgb_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1135 = getVectorCapabilities();
              result = 0;
              v31 = v1135 >= 2;
              v32 = vt_Copy_420vf_rgb_RGfA_neon_fp16;
              v10 = vt_Copy_420vf_rgb_RGfA;
              goto LABEL_7033;
            }

            goto LABEL_7005;
          }
        }

        else
        {
          if (a2 > 875704421)
          {
            if (a2 != 875704422 && a2 != 875704438)
            {
              if (a2 != 875704934)
              {
                goto LABEL_7007;
              }

              goto LABEL_2188;
            }

            goto LABEL_2669;
          }

          if (a2 != 32)
          {
            if (a2 != 846624102 && a2 != 846624121)
            {
              goto LABEL_7007;
            }

            goto LABEL_2476;
          }
        }

        if (a3)
        {
          v391 = a4 == 0;
        }

        else
        {
          v391 = 1;
        }

        v392 = !v391;
        if (!v391 && a5 && a6)
        {
          goto LABEL_2667;
        }

        if (a5)
        {
          v392 = 0;
        }

        if (v392 == 1 && a6)
        {
LABEL_2667:
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v393 = getVectorCapabilities();
          result = 0;
          v31 = v393 >= 2;
          v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_BGRA;
          goto LABEL_7033;
        }

        if (a3)
        {
          v822 = a4 == 0;
        }

        else
        {
          v822 = 0;
        }

        v823 = !v822;
        if (a6 && !v823 && !a5 || a5 && v823 != 1 && a6)
        {
          v10 = vt_Copy_420vf_TRC_Mat_TRC_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v824 = getVectorCapabilities();
          result = 0;
          v31 = v824 >= 2;
          v32 = vt_Copy_420vf_TRC_Mat_TRC_BGRA_neon_fp16;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_BGRA;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_420vf_rgb_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1101 = getVectorCapabilities();
          result = 0;
          v31 = v1101 >= 2;
          v32 = vt_Copy_420vf_rgb_BGRA_neon_fp16;
          v10 = vt_Copy_420vf_rgb_BGRA;
          goto LABEL_7033;
        }

        goto LABEL_7005;
      }

      if (a2 > 1932681586)
      {
        if (a2 > 1936077361)
        {
          if (a2 == 1936077362)
          {
            goto LABEL_2819;
          }

          if (a2 == 1936077876)
          {
            goto LABEL_2543;
          }

          v159 = 1937125936;
        }

        else
        {
          if (a2 == 1932681587)
          {
            goto LABEL_2819;
          }

          if (a2 == 1932812659)
          {
            goto LABEL_2543;
          }

          v159 = 1936077360;
        }

        if (a2 != v159)
        {
          goto LABEL_7007;
        }

        if (a3)
        {
          v326 = a4 == 0;
        }

        else
        {
          v326 = 1;
        }

        v327 = !v326;
        v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420;
        if (!v326 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v327 = 0;
        }

        v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_xf420;
        if (v327 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v328 = a3 && a4 == 0;
        v329 = !v328;
        v10 = vt_Copy_420vf_TRC_Mat_TRC_xf420;
        if (a6)
        {
          if (!v329 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_420vf_TRC_Mat_TRC_xf420;
        if (a5)
        {
          if (!v329 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_420vf_rgb_xf420;
        goto LABEL_6145;
      }

      if (a2 > 1647719520)
      {
        if (a2 == 1647719521)
        {
          if (a3)
          {
            v671 = a4 == 0;
          }

          else
          {
            v671 = 1;
          }

          v672 = !v671;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_b64a;
          if (!v671 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v672 = 0;
          }

          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_b64a;
          if (v672 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v673 = a3 && a4 == 0;
          v674 = !v673;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_b64a;
          if (a6)
          {
            if (!v674 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_420vf_TRC_Mat_TRC_b64a;
          if (a5)
          {
            if (!v674 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_420vf_rgb_b64a;
          goto LABEL_6145;
        }

        if (a2 != 1815162994)
        {
          if (a2 != 1815491698)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v319 = a4 == 0;
          }

          else
          {
            v319 = 1;
          }

          v320 = !v319;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_l64r;
          if (!v319 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v320 = 0;
          }

          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_l64r;
          if (v320 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v321 = a3 && a4 == 0;
          v322 = !v321;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_l64r;
          if (a6)
          {
            if (!v322 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_420vf_TRC_Mat_TRC_l64r;
          if (a5)
          {
            if (!v322 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_420vf_rgb_l64r;
          goto LABEL_6145;
        }

        goto LABEL_2684;
      }

      if (a2 == 1380411457)
      {
        if (a3)
        {
          v668 = a4 == 0;
        }

        else
        {
          v668 = 1;
        }

        v669 = !v668;
        if (!v668 && a5 && a6)
        {
          goto LABEL_4320;
        }

        if (a5)
        {
          v669 = 0;
        }

        if (v669 == 1 && a6)
        {
LABEL_4320:
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v670 = getVectorCapabilities();
          result = 0;
          v31 = v670 >= 2;
          v32 = vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
          v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_RGhA;
          goto LABEL_7033;
        }

        if (a3)
        {
          v1061 = a4 == 0;
        }

        else
        {
          v1061 = 0;
        }

        v1062 = !v1061;
        if (a6 && !v1062 && !a5 || a5 && v1062 != 1 && a6)
        {
          v10 = vt_Copy_420vf_TRC_Mat_TRC_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1063 = getVectorCapabilities();
          result = 0;
          v31 = v1063 >= 2;
          v32 = vt_Copy_420vf_TRC_Mat_TRC_RGhA_neon_fp16;
          v10 = vt_Copy_420vf_TRC_Mat_TRC_RGhA;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_420vf_rgb_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1136 = getVectorCapabilities();
          result = 0;
          v31 = v1136 >= 2;
          v32 = vt_Copy_420vf_rgb_RGhA_neon_fp16;
          v10 = vt_Copy_420vf_rgb_RGhA;
          goto LABEL_7033;
        }

        goto LABEL_7005;
      }

      if (a2 != 1630697081)
      {
        v39 = 1647534392;
        goto LABEL_1239;
      }

LABEL_2476:
      if (a3)
      {
        v360 = a4 == 0;
      }

      else
      {
        v360 = 1;
      }

      v361 = !v360;
      v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_2vuyf;
      if (!v360 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v361 = 0;
      }

      v10 = vt_Copy_420vf_TRC_Tone_Mat_TRC_2vuyf;
      if (v361 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v362 = a3 && a4 == 0;
      v363 = !v362;
      v10 = vt_Copy_420vf_TRC_Mat_TRC_2vuyf;
      if (a6)
      {
        if (!v363 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_420vf_TRC_Mat_TRC_2vuyf;
      if (a5)
      {
        if (!v363 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_420vf_rgb_2vuyf;
      goto LABEL_6145;
    }

    if (a1 != 1999843442)
    {
      if (a1 != 2016567667)
      {
        if (a1 != 2016686640)
        {
          goto LABEL_7007;
        }

        goto LABEL_98;
      }

      goto LABEL_90;
    }

LABEL_136:
    v10 = 0;
    if (a2 > 1936077875)
    {
      if (a2 > 1983000885)
      {
        if (a2 <= 2016687155)
        {
          if (a2 > 1999843441)
          {
            if (a2 <= 2016686639)
            {
              if (a2 != 1999843442)
              {
                v16 = 2016567667;
                goto LABEL_3840;
              }

LABEL_3175:
              if (a3)
              {
                v472 = a4 == 0;
              }

              else
              {
                v472 = 1;
              }

              v473 = !v472;
              v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_l10r;
              if (!v472 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v473 = 0;
              }

              v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_l10r;
              if (v473 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v474 = a3 && a4 == 0;
              v475 = !v474;
              v10 = vt_Copy_l10r_TRC_Mat_TRC_l10r;
              if (a6)
              {
                if (!v475 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_l10r_TRC_Mat_TRC_l10r;
              if (a5)
              {
                if (!v475 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_l10r_rgb_l10r;
              goto LABEL_6145;
            }

            if (a2 != 2016686640)
            {
              v16 = 2016686642;
LABEL_3840:
              if (a2 != v16)
              {
                goto LABEL_7007;
              }

              goto LABEL_3841;
            }

            goto LABEL_3867;
          }

          if (a2 == 1983000886)
          {
            if (a3)
            {
              v802 = a4 == 0;
            }

            else
            {
              v802 = 1;
            }

            v803 = !v802;
            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_v216;
            if (!v802 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v803 = 0;
            }

            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_v216;
            if (v803 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v804 = a3 && a4 == 0;
            v805 = !v804;
            v10 = vt_Copy_l10r_TRC_Mat_TRC_v216;
            if (a6)
            {
              if (!v805 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l10r_TRC_Mat_TRC_v216;
            if (a5)
            {
              if (!v805 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l10r_rgb_v216;
            goto LABEL_6145;
          }

          if (a2 != 1983013176)
          {
            v24 = 1983144248;
            goto LABEL_3112;
          }

          goto LABEL_3146;
        }

        if (a2 <= 2019963441)
        {
          if (a2 != 2016687156 && a2 != 2016698739)
          {
            if (a2 != 2019963440)
            {
              goto LABEL_7007;
            }

            goto LABEL_3867;
          }

          goto LABEL_3810;
        }

        if (a2 > 2037741157)
        {
          if (a2 == 2037741158 || a2 == 2037741171)
          {
            if (a3)
            {
              v585 = a4 == 0;
            }

            else
            {
              v585 = 1;
            }

            v586 = !v585;
            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_yuvsf;
            if (!v585 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v586 = 0;
            }

            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_yuvsf;
            if (v586 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v587 = a3 && a4 == 0;
            v588 = !v587;
            v10 = vt_Copy_l10r_TRC_Mat_TRC_yuvsf;
            if (a6)
            {
              if (!v588 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l10r_TRC_Mat_TRC_yuvsf;
            if (a5)
            {
              if (!v588 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l10r_rgb_yuvsf;
            goto LABEL_6145;
          }

          goto LABEL_7007;
        }

        if (a2 != 2019963442)
        {
          v157 = 2019963956;
          goto LABEL_3809;
        }

LABEL_3841:
        if (a3)
        {
          v577 = a4 == 0;
        }

        else
        {
          v577 = 1;
        }

        v578 = !v577;
        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf422;
        if (!v577 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v578 = 0;
        }

        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf422;
        if (v578 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v579 = a3 && a4 == 0;
        v580 = !v579;
        v10 = vt_Copy_l10r_TRC_Mat_TRC_xf422;
        if (a6)
        {
          if (!v580 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_l10r_TRC_Mat_TRC_xf422;
        if (a5)
        {
          if (!v580 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_l10r_rgb_xf422;
        goto LABEL_6145;
      }

      if (a2 > 1952854575)
      {
        if (a2 > 1953903151)
        {
          if (a2 <= 1953903667)
          {
            if (a2 != 1953903152)
            {
              v16 = 1953903154;
              goto LABEL_3840;
            }

            goto LABEL_3867;
          }

          if (a2 == 1953903668)
          {
            goto LABEL_3810;
          }

          if (a2 != 1982882104)
          {
            goto LABEL_7007;
          }

LABEL_3781:
          if (a3)
          {
            v570 = a4 == 0;
          }

          else
          {
            v570 = 1;
          }

          v571 = !v570;
          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_420vf;
          if (!v570 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v571 = 0;
          }

          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_420vf;
          if (v571 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v572 = a3 && a4 == 0;
          v573 = !v572;
          v10 = vt_Copy_l10r_TRC_Mat_TRC_420vf;
          if (a6)
          {
            if (!v573 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l10r_TRC_Mat_TRC_420vf;
          if (a5)
          {
            if (!v573 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l10r_rgb_420vf;
          goto LABEL_6145;
        }

        if (a2 == 1952854576)
        {
          goto LABEL_3867;
        }

        if (a2 == 1952854578)
        {
          goto LABEL_3841;
        }

        v157 = 1952855092;
LABEL_3809:
        if (a2 != v157)
        {
          goto LABEL_7007;
        }

LABEL_3810:
        if (a3)
        {
          v574 = a4 == 0;
        }

        else
        {
          v574 = 1;
        }

        v575 = !v574;
        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444;
        if (!v574 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v575 = 0;
        }

        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444;
        if (v575 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v576 = a3 && a4 == 0;
        v459 = !v576;
        v10 = vt_Copy_l10r_TRC_Mat_TRC_xf444;
        if (a6)
        {
          if (!v459 && !a5)
          {
            goto LABEL_7006;
          }
        }

        goto LABEL_3832;
      }

      if (a2 > 1937126451)
      {
        if (a2 != 1937126452)
        {
          if (a2 == 1949458803)
          {
            goto LABEL_3841;
          }

          v157 = 1949589875;
          goto LABEL_3809;
        }
      }

      else if (a2 != 1936077876)
      {
        if (a2 != 1937125936)
        {
          v16 = 1937125938;
          goto LABEL_3840;
        }

        goto LABEL_3867;
      }

LABEL_3054:
      if (a3)
      {
        v456 = a4 == 0;
      }

      else
      {
        v456 = 1;
      }

      v457 = !v456;
      v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444;
      if (!v456 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v457 = 0;
      }

      v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444;
      if (v457 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v458 = a3 && a4 == 0;
      v459 = !v458;
      v10 = vt_Copy_l10r_TRC_Mat_TRC_xf444;
      if (a6)
      {
        if (!v459 && !a5)
        {
          goto LABEL_7006;
        }
      }

LABEL_3832:
      v10 = vt_Copy_l10r_TRC_Mat_TRC_xf444;
      if (a5 && !v459 && a6)
      {
        goto LABEL_7006;
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_l10r_rgb_xf444;
      goto LABEL_6145;
    }

    if (a2 > 1278226741)
    {
      if (a2 > 1647719520)
      {
        if (a2 <= 1932681586)
        {
          if (a2 == 1647719521)
          {
            if (a3)
            {
              v798 = a4 == 0;
            }

            else
            {
              v798 = 1;
            }

            v799 = !v798;
            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_b64a;
            if (!v798 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v799 = 0;
            }

            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_b64a;
            if (v799 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v800 = a3 && a4 == 0;
            v801 = !v800;
            v10 = vt_Copy_l10r_TRC_Mat_TRC_b64a;
            if (a6)
            {
              if (!v801 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l10r_TRC_Mat_TRC_b64a;
            if (a5)
            {
              if (!v801 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l10r_rgb_b64a;
            goto LABEL_6145;
          }

          if (a2 != 1815162994)
          {
            if (a2 != 1815491698)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v460 = a4 == 0;
            }

            else
            {
              v460 = 1;
            }

            v461 = !v460;
            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_l64r;
            if (!v460 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v461 = 0;
            }

            v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_l64r;
            if (v461 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v462 = a3 && a4 == 0;
            v463 = !v462;
            v10 = vt_Copy_l10r_TRC_Mat_TRC_l64r;
            if (a6)
            {
              if (!v463 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_l10r_TRC_Mat_TRC_l64r;
            if (a5)
            {
              if (!v463 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_l10r_rgb_l64r;
            goto LABEL_6145;
          }

          goto LABEL_3175;
        }

        if (a2 > 1936077359)
        {
          if (a2 != 1936077360)
          {
            v16 = 1936077362;
            goto LABEL_3840;
          }

LABEL_3867:
          if (a3)
          {
            v581 = a4 == 0;
          }

          else
          {
            v581 = 1;
          }

          v582 = !v581;
          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf420;
          if (!v581 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v582 = 0;
          }

          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_xf420;
          if (v582 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v583 = a3 && a4 == 0;
          v584 = !v583;
          v10 = vt_Copy_l10r_TRC_Mat_TRC_xf420;
          if (a6)
          {
            if (!v584 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l10r_TRC_Mat_TRC_xf420;
          if (a5)
          {
            if (!v584 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l10r_rgb_xf420;
          goto LABEL_6145;
        }

        if (a2 == 1932681587)
        {
          goto LABEL_3841;
        }

        if (a2 != 1932812659)
        {
          goto LABEL_7007;
        }

        goto LABEL_3054;
      }

      if (a2 <= 1380411456)
      {
        if (a2 == 1278226742)
        {
          goto LABEL_3054;
        }

        if (a2 != 1380401729)
        {
          if (a2 != 1380410945)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v226 = a4 == 0;
          }

          else
          {
            v226 = 1;
          }

          v227 = !v226;
          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_RGfA;
          if (!v226 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v227 = 0;
          }

          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_RGfA;
          if (v227 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v228 = a3 && a4 == 0;
          v229 = !v228;
          v10 = vt_Copy_l10r_TRC_Mat_TRC_RGfA;
          if (a6)
          {
            if (!v229 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l10r_TRC_Mat_TRC_RGfA;
          if (a5)
          {
            if (!v229 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l10r_rgb_RGfA;
          goto LABEL_6145;
        }

LABEL_3216:
        if (a3)
        {
          v479 = a4 == 0;
        }

        else
        {
          v479 = 1;
        }

        v480 = !v479;
        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_BGRA;
        if (!v479 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v480 = 0;
        }

        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_BGRA;
        if (v480 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v481 = a3 && a4 == 0;
        v482 = !v481;
        v10 = vt_Copy_l10r_TRC_Mat_TRC_BGRA;
        if (a6)
        {
          if (!v482 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_l10r_TRC_Mat_TRC_BGRA;
        if (a5)
        {
          if (!v482 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_l10r_rgb_BGRA;
        goto LABEL_6145;
      }

      if (a2 == 1380411457)
      {
        if (a3)
        {
          v806 = a4 == 0;
        }

        else
        {
          v806 = 1;
        }

        v807 = !v806;
        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_RGhA;
        if (!v806 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v807 = 0;
        }

        v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_RGhA;
        if (v807 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v808 = a3 && a4 == 0;
        v809 = !v808;
        v10 = vt_Copy_l10r_TRC_Mat_TRC_RGhA;
        if (a6)
        {
          if (!v809 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_l10r_TRC_Mat_TRC_RGhA;
        if (a5)
        {
          if (!v809 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_l10r_rgb_RGhA;
        goto LABEL_6145;
      }

      if (a2 != 1630697081)
      {
        if (a2 != 1647534392)
        {
          goto LABEL_7007;
        }

        goto LABEL_3175;
      }
    }

    else
    {
      if (a2 > 875704949)
      {
        if (a2 <= 1111970368)
        {
          if (a2 != 875704950)
          {
            if (a2 == 875836518)
            {
LABEL_3113:
              if (a3)
              {
                v464 = a4 == 0;
              }

              else
              {
                v464 = 1;
              }

              v465 = !v464;
              v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_444vf;
              if (!v464 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v465 = 0;
              }

              v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_444vf;
              if (v465 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v466 = a3 && a4 == 0;
              v467 = !v466;
              v10 = vt_Copy_l10r_TRC_Mat_TRC_444vf;
              if (a6)
              {
                if (!v467 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_l10r_TRC_Mat_TRC_444vf;
              if (a5)
              {
                if (!v467 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_l10r_rgb_444vf;
              goto LABEL_6145;
            }

            v24 = 875836534;
LABEL_3112:
            if (a2 != v24)
            {
              goto LABEL_7007;
            }

            goto LABEL_3113;
          }

LABEL_3146:
          if (a3)
          {
            v468 = a4 == 0;
          }

          else
          {
            v468 = 1;
          }

          v469 = !v468;
          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_422vf;
          if (!v468 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v469 = 0;
          }

          v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_422vf;
          if (v469 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v470 = a3 && a4 == 0;
          v471 = !v470;
          v10 = vt_Copy_l10r_TRC_Mat_TRC_422vf;
          if (a6)
          {
            if (!v471 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_l10r_TRC_Mat_TRC_422vf;
          if (a5)
          {
            if (!v471 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_l10r_rgb_422vf;
          goto LABEL_6145;
        }

        if (a2 > 1278226735)
        {
          if (a2 == 1278226736)
          {
            goto LABEL_3810;
          }

          v157 = 1278226738;
          goto LABEL_3809;
        }

        if (a2 != 1111970369)
        {
          v24 = 1278226488;
          goto LABEL_3112;
        }

        goto LABEL_3216;
      }

      if (a2 > 875704421)
      {
        if (a2 != 875704422 && a2 != 875704438)
        {
          if (a2 != 875704934)
          {
            goto LABEL_7007;
          }

          goto LABEL_3146;
        }

        goto LABEL_3781;
      }

      if (a2 == 32)
      {
        goto LABEL_3216;
      }

      if (a2 != 846624102 && a2 != 846624121)
      {
        goto LABEL_7007;
      }
    }

    if (a3)
    {
      v487 = a4 == 0;
    }

    else
    {
      v487 = 1;
    }

    v488 = !v487;
    v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_2vuyf;
    if (!v487 && a5 && a6)
    {
      goto LABEL_7006;
    }

    if (a5)
    {
      v488 = 0;
    }

    v10 = vt_Copy_l10r_TRC_Tone_Mat_TRC_2vuyf;
    if (v488 == 1)
    {
      if (a6)
      {
        goto LABEL_7006;
      }
    }

    v489 = a3 && a4 == 0;
    v490 = !v489;
    v10 = vt_Copy_l10r_TRC_Mat_TRC_2vuyf;
    if (a6)
    {
      if (!v490 && !a5)
      {
        goto LABEL_7006;
      }
    }

    v10 = vt_Copy_l10r_TRC_Mat_TRC_2vuyf;
    if (a5)
    {
      if (!v490 && a6)
      {
        goto LABEL_7006;
      }
    }

    result = 0;
    v47 = (a4 | a3 | a5 | a6) == 0;
    v10 = vt_Copy_l10r_rgb_2vuyf;
    goto LABEL_6145;
  }

  if (a1 > 1952854575)
  {
    if (a1 <= 1953903151)
    {
      if (a1 == 1952854576)
      {
        goto LABEL_98;
      }

      if (a1 != 1952854578)
      {
        v14 = 1952855092;
        goto LABEL_81;
      }

      goto LABEL_90;
    }

    if (a1 == 1953903152)
    {
      goto LABEL_98;
    }

    if (a1 == 1953903154)
    {
      goto LABEL_90;
    }

    v14 = 1953903668;
LABEL_81:
    if (a1 != v14)
    {
      goto LABEL_7007;
    }

    goto LABEL_82;
  }

  if (a1 <= 1937126451)
  {
    if (a1 != 1936077876)
    {
      if (a1 != 1937125936)
      {
        v12 = 1937125938;
        goto LABEL_66;
      }

LABEL_98:
      v10 = 0;
      if (a2 > 1937125937)
      {
        if (a2 > 1983013175)
        {
          if (a2 > 2016687155)
          {
            if (a2 > 2019963441)
            {
              if (a2 > 2037741157)
              {
                if (a2 == 2037741158 || a2 == 2037741171)
                {
                  if (a3)
                  {
                    v263 = a4 == 0;
                  }

                  else
                  {
                    v263 = 1;
                  }

                  v264 = !v263;
                  v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_yuvsf;
                  if (!v263 && a5 && a6)
                  {
                    goto LABEL_7006;
                  }

                  if (a5)
                  {
                    v264 = 0;
                  }

                  v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_yuvsf;
                  if (v264 == 1)
                  {
                    if (a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v265 = a3 && a4 == 0;
                  v266 = !v265;
                  v10 = vt_Copy_xf420_TRC_Mat_TRC_yuvsf;
                  if (a6)
                  {
                    if (!v266 && !a5)
                    {
                      goto LABEL_7006;
                    }
                  }

                  v10 = vt_Copy_xf420_TRC_Mat_TRC_yuvsf;
                  if (a5)
                  {
                    if (!v266 && a6)
                    {
                      goto LABEL_7006;
                    }
                  }

                  result = 0;
                  v47 = (a4 | a3 | a5 | a6) == 0;
                  v10 = vt_Copy_xf420_rgb_yuvsf;
                  goto LABEL_6145;
                }

                goto LABEL_7007;
              }

              if (a2 != 2019963442)
              {
                if (a2 != 2019963956)
                {
                  goto LABEL_7007;
                }

                goto LABEL_1319;
              }

              goto LABEL_1260;
            }

            if (a2 != 2016687156 && a2 != 2016698739)
            {
              if (a2 != 2019963440)
              {
                goto LABEL_7007;
              }

              goto LABEL_1275;
            }

LABEL_1319:
            if (a3)
            {
              v184 = a4 == 0;
            }

            else
            {
              v184 = 1;
            }

            v185 = !v184;
            if (!v184 && a5 && a6)
            {
              goto LABEL_1332;
            }

            if (a5)
            {
              v185 = 0;
            }

            if (v185 == 1 && a6)
            {
LABEL_1332:
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v186 = getVectorCapabilities();
              result = 0;
              v31 = v186 >= 2;
              v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            if (a3)
            {
              v435 = a4 == 0;
            }

            else
            {
              v435 = 0;
            }

            v436 = !v435;
            if (a6 && !v436 && !a5 || a5 && v436 != 1 && a6)
            {
              v10 = vt_Copy_xf420_TRC_Mat_TRC_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v437 = getVectorCapabilities();
              result = 0;
              v31 = v437 >= 2;
              v32 = vt_Copy_xf420_TRC_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf420_rgb_xf444;
              if (a7)
              {
                goto LABEL_7006;
              }

              v849 = getVectorCapabilities();
              result = 0;
              v31 = v849 >= 2;
              v32 = vt_Copy_xf420_rgb_xf444_neon_fp16;
              v10 = vt_Copy_xf420_rgb_xf444;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          if (a2 <= 2016567666)
          {
            if (a2 != 1983013176)
            {
              if (a2 != 1983144248)
              {
                v26 = 1999843442;
LABEL_457:
                if (a2 != v26)
                {
                  goto LABEL_7007;
                }

LABEL_1414:
                if (a3)
                {
                  v199 = a4 == 0;
                }

                else
                {
                  v199 = 1;
                }

                v200 = !v199;
                v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_l10r;
                if (!v199 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v200 = 0;
                }

                v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_l10r;
                if (v200 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v201 = a3 && a4 == 0;
                v202 = !v201;
                v10 = vt_Copy_xf420_TRC_Mat_TRC_l10r;
                if (a6)
                {
                  if (!v202 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_xf420_TRC_Mat_TRC_l10r;
                if (a5)
                {
                  if (!v202 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_xf420_rgb_l10r;
                goto LABEL_6145;
              }

LABEL_1440:
              if (a3)
              {
                v203 = a4 == 0;
              }

              else
              {
                v203 = 1;
              }

              v204 = !v203;
              if (!v203 && a5 && a6)
              {
                goto LABEL_1453;
              }

              if (a5)
              {
                v204 = 0;
              }

              if (v204 == 1 && a6)
              {
LABEL_1453:
                v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v205 = getVectorCapabilities();
                result = 0;
                v31 = v205 >= 2;
                v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              if (a3)
              {
                v599 = a4 == 0;
              }

              else
              {
                v599 = 0;
              }

              v600 = !v599;
              if (a6 && !v600 && !a5 || a5 && v600 != 1 && a6)
              {
                v10 = vt_Copy_xf420_TRC_Mat_TRC_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v601 = getVectorCapabilities();
                result = 0;
                v31 = v601 >= 2;
                v32 = vt_Copy_xf420_TRC_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_xf420_TRC_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_xf420_rgb_444vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v977 = getVectorCapabilities();
                result = 0;
                v31 = v977 >= 2;
                v32 = vt_Copy_xf420_rgb_444vf_neon_fp16;
                v10 = vt_Copy_xf420_rgb_444vf;
                goto LABEL_7033;
              }

              goto LABEL_6906;
            }

            goto LABEL_1143;
          }

          if (a2 == 2016567667)
          {
LABEL_1260:
            if (a3)
            {
              v174 = a4 == 0;
            }

            else
            {
              v174 = 1;
            }

            v175 = !v174;
            if (!v174 && a5 && a6)
            {
              goto LABEL_1273;
            }

            if (a5)
            {
              v175 = 0;
            }

            if (v175 == 1 && a6)
            {
LABEL_1273:
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v176 = getVectorCapabilities();
              result = 0;
              v31 = v176 >= 2;
              v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf422_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf422;
              goto LABEL_7033;
            }

            if (a3)
            {
              v432 = a4 == 0;
            }

            else
            {
              v432 = 0;
            }

            v433 = !v432;
            if (a6 && !v433 && !a5 || a5 && v433 != 1 && a6)
            {
              v10 = vt_Copy_xf420_TRC_Mat_TRC_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v434 = getVectorCapabilities();
              result = 0;
              v31 = v434 >= 2;
              v32 = vt_Copy_xf420_TRC_Mat_TRC_xf422_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Mat_TRC_xf422;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf420_rgb_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v848 = getVectorCapabilities();
              result = 0;
              v31 = v848 >= 2;
              v32 = vt_Copy_xf420_rgb_xf422_neon_fp16;
              v10 = vt_Copy_xf420_rgb_xf422;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          if (a2 != 2016686640)
          {
            v27 = 2016686642;
            goto LABEL_1259;
          }

          goto LABEL_1275;
        }

        if (a2 <= 1952855091)
        {
          if (a2 > 1949589874)
          {
            if (a2 == 1949589875)
            {
              goto LABEL_1319;
            }

            if (a2 != 1952854576)
            {
              v27 = 1952854578;
LABEL_1259:
              if (a2 != v27)
              {
                goto LABEL_7007;
              }

              goto LABEL_1260;
            }

LABEL_1275:
            if (a3)
            {
              v177 = a4 == 0;
            }

            else
            {
              v177 = 1;
            }

            v178 = !v177;
            if (!v177 && a5 && a6)
            {
              goto LABEL_1288;
            }

            if (a5)
            {
              v178 = 0;
            }

            if (v178 == 1 && a6)
            {
LABEL_1288:
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v179 = getVectorCapabilities();
              result = 0;
              v31 = v179 >= 2;
              v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            if (a3)
            {
              v516 = a4 == 0;
            }

            else
            {
              v516 = 0;
            }

            v517 = !v516;
            if (a6 && !v517 && !a5 || a5 && v517 != 1 && a6)
            {
              v10 = vt_Copy_xf420_TRC_Mat_TRC_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v518 = getVectorCapabilities();
              result = 0;
              v31 = v518 >= 2;
              v32 = vt_Copy_xf420_TRC_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf420_rgb_xf420;
              if (a7)
              {
                goto LABEL_7006;
              }

              v966 = getVectorCapabilities();
              result = 0;
              v31 = v966 >= 2;
              v32 = vt_Copy_xf420_rgb_xf420_neon_fp16;
              v10 = vt_Copy_xf420_rgb_xf420;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          if (a2 != 1937125938)
          {
            if (a2 != 1937126452)
            {
              v27 = 1949458803;
              goto LABEL_1259;
            }

LABEL_1388:
            if (a3)
            {
              v195 = a4 == 0;
            }

            else
            {
              v195 = 1;
            }

            v196 = !v195;
            v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444;
            if (!v195 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v196 = 0;
            }

            v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf444;
            if (v196 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v197 = a3 && a4 == 0;
            v198 = !v197;
            v10 = vt_Copy_xf420_TRC_Mat_TRC_xf444;
            if (a6)
            {
              if (!v198 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_xf420_TRC_Mat_TRC_xf444;
            if (a5)
            {
              if (!v198 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_xf420_rgb_xf444;
            goto LABEL_6145;
          }

LABEL_1513:
          if (a3)
          {
            v218 = a4 == 0;
          }

          else
          {
            v218 = 1;
          }

          v219 = !v218;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf422;
          if (!v218 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v219 = 0;
          }

          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf422;
          if (v219 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v220 = a3 && a4 == 0;
          v221 = !v220;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_xf422;
          if (a6)
          {
            if (!v221 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf420_TRC_Mat_TRC_xf422;
          if (a5)
          {
            if (!v221 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf420_rgb_xf422;
          goto LABEL_6145;
        }

        if (a2 <= 1953903667)
        {
          if (a2 == 1952855092)
          {
            goto LABEL_1319;
          }

          if (a2 != 1953903152)
          {
            v27 = 1953903154;
            goto LABEL_1259;
          }

          goto LABEL_1275;
        }

        if (a2 == 1953903668)
        {
          goto LABEL_1319;
        }

        if (a2 != 1982882104)
        {
          if (a2 != 1983000886)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v180 = a4 == 0;
          }

          else
          {
            v180 = 1;
          }

          v181 = !v180;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_v216;
          if (!v180 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v181 = 0;
          }

          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_v216;
          if (v181 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v182 = a3 && a4 == 0;
          v183 = !v182;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_v216;
          if (a6)
          {
            if (!v183 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf420_TRC_Mat_TRC_v216;
          if (a5)
          {
            if (!v183 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf420_rgb_v216;
          goto LABEL_6145;
        }

LABEL_1470:
        if (a3)
        {
          v209 = a4 == 0;
        }

        else
        {
          v209 = 1;
        }

        v210 = !v209;
        if (!v209 && a5 && a6)
        {
          goto LABEL_1483;
        }

        if (a5)
        {
          v210 = 0;
        }

        if (v210 == 1 && a6)
        {
LABEL_1483:
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v211 = getVectorCapabilities();
          result = 0;
          v31 = v211 >= 2;
          v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf_neon_fp16;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf;
          goto LABEL_7033;
        }

        if (a3)
        {
          v605 = a4 == 0;
        }

        else
        {
          v605 = 0;
        }

        v606 = !v605;
        if (a6 && !v606 && !a5 || a5 && v606 != 1 && a6)
        {
          v10 = vt_Copy_xf420_TRC_Mat_TRC_420vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v607 = getVectorCapabilities();
          result = 0;
          v31 = v607 >= 2;
          v32 = vt_Copy_xf420_TRC_Mat_TRC_420vf_neon_fp16;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_420vf;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_xf420_rgb_420vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v979 = getVectorCapabilities();
          result = 0;
          v31 = v979 >= 2;
          v32 = vt_Copy_xf420_rgb_420vf_neon_fp16;
          v10 = vt_Copy_xf420_rgb_420vf;
          goto LABEL_7033;
        }

        goto LABEL_6906;
      }

      if (a2 <= 1380411456)
      {
        if (a2 > 875704949)
        {
          if (a2 <= 1111970368)
          {
            if (a2 != 875704950)
            {
              if (a2 != 875836518 && a2 != 875836534)
              {
                goto LABEL_7007;
              }

              goto LABEL_1440;
            }

            goto LABEL_1143;
          }

          if (a2 != 1111970369 && a2 != 1380401729)
          {
            if (a2 != 1380410945)
            {
              goto LABEL_7007;
            }

            if (a3)
            {
              v167 = a4 == 0;
            }

            else
            {
              v167 = 1;
            }

            v168 = !v167;
            if (!v167 && a5 && a6)
            {
              goto LABEL_1203;
            }

            if (a5)
            {
              v168 = 0;
            }

            if (v168 == 1 && a6)
            {
LABEL_1203:
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v169 = getVectorCapabilities();
              result = 0;
              v31 = v169 >= 2;
              v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_RGfA;
              goto LABEL_7033;
            }

            if (a3)
            {
              v960 = a4 == 0;
            }

            else
            {
              v960 = 0;
            }

            v961 = !v960;
            if (a6 && !v961 && !a5 || a5 && v961 != 1 && a6)
            {
              v10 = vt_Copy_xf420_TRC_Mat_TRC_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v962 = getVectorCapabilities();
              result = 0;
              v31 = v962 >= 2;
              v32 = vt_Copy_xf420_TRC_Mat_TRC_RGfA_neon_fp16;
              v10 = vt_Copy_xf420_TRC_Mat_TRC_RGfA;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf420_rgb_RGfA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v1113 = getVectorCapabilities();
              result = 0;
              v31 = v1113 >= 2;
              v32 = vt_Copy_xf420_rgb_RGfA_neon_fp16;
              v10 = vt_Copy_xf420_rgb_RGfA;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }
        }

        else
        {
          if (a2 > 875704421)
          {
            if (a2 != 875704422 && a2 != 875704438)
            {
              if (a2 != 875704934)
              {
                goto LABEL_7007;
              }

LABEL_1143:
              if (a3)
              {
                v160 = a4 == 0;
              }

              else
              {
                v160 = 1;
              }

              v161 = !v160;
              if (!v160 && a5 && a6)
              {
                goto LABEL_1156;
              }

              if (a5)
              {
                v161 = 0;
              }

              if (v161 == 1 && a6)
              {
LABEL_1156:
                v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v162 = getVectorCapabilities();
                result = 0;
                v31 = v162 >= 2;
                v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf_neon_fp16;
                v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_422vf;
                goto LABEL_7033;
              }

              if (a3)
              {
                v620 = a4 == 0;
              }

              else
              {
                v620 = 0;
              }

              v621 = !v620;
              if (a6 && !v621 && !a5 || a5 && v621 != 1 && a6)
              {
                v10 = vt_Copy_xf420_TRC_Mat_TRC_422vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v622 = getVectorCapabilities();
                result = 0;
                v31 = v622 >= 2;
                v32 = vt_Copy_xf420_TRC_Mat_TRC_422vf_neon_fp16;
                v10 = vt_Copy_xf420_TRC_Mat_TRC_422vf;
                goto LABEL_7033;
              }

              if (!(a4 | a3 | a5 | a6))
              {
                v10 = vt_Copy_xf420_rgb_422vf;
                if (a7)
                {
                  goto LABEL_7006;
                }

                v984 = getVectorCapabilities();
                result = 0;
                v31 = v984 >= 2;
                v32 = vt_Copy_xf420_rgb_422vf_neon_fp16;
                v10 = vt_Copy_xf420_rgb_422vf;
                goto LABEL_7033;
              }

LABEL_6906:
              v10 = 0;
              goto LABEL_7006;
            }

            goto LABEL_1470;
          }

          if (a2 != 32)
          {
            if (a2 != 846624102 && a2 != 846624121)
            {
              goto LABEL_7007;
            }

            goto LABEL_1362;
          }
        }

        if (a3)
        {
          v206 = a4 == 0;
        }

        else
        {
          v206 = 1;
        }

        v207 = !v206;
        if (!v206 && a5 && a6)
        {
          goto LABEL_1468;
        }

        if (a5)
        {
          v207 = 0;
        }

        if (v207 == 1 && a6)
        {
LABEL_1468:
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v208 = getVectorCapabilities();
          result = 0;
          v31 = v208 >= 2;
          v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_BGRA;
          goto LABEL_7033;
        }

        if (a3)
        {
          v602 = a4 == 0;
        }

        else
        {
          v602 = 0;
        }

        v603 = !v602;
        if (a6 && !v603 && !a5 || a5 && v603 != 1 && a6)
        {
          v10 = vt_Copy_xf420_TRC_Mat_TRC_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v604 = getVectorCapabilities();
          result = 0;
          v31 = v604 >= 2;
          v32 = vt_Copy_xf420_TRC_Mat_TRC_BGRA_neon_fp16;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_BGRA;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_xf420_rgb_BGRA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v978 = getVectorCapabilities();
          result = 0;
          v31 = v978 >= 2;
          v32 = vt_Copy_xf420_rgb_BGRA_neon_fp16;
          v10 = vt_Copy_xf420_rgb_BGRA;
          goto LABEL_7033;
        }

        goto LABEL_6906;
      }

      if (a2 > 1932681586)
      {
        if (a2 > 1936077361)
        {
          if (a2 == 1936077362)
          {
            goto LABEL_1513;
          }

          if (a2 == 1936077876)
          {
            goto LABEL_1388;
          }

          v55 = 1937125936;
        }

        else
        {
          if (a2 == 1932681587)
          {
            goto LABEL_1513;
          }

          if (a2 == 1932812659)
          {
            goto LABEL_1388;
          }

          v55 = 1936077360;
        }

        if (a2 != v55)
        {
          goto LABEL_7007;
        }

        if (a3)
        {
          v170 = a4 == 0;
        }

        else
        {
          v170 = 1;
        }

        v171 = !v170;
        v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420;
        if (!v170 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v171 = 0;
        }

        v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_xf420;
        if (v171 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v172 = a3 && a4 == 0;
        v173 = !v172;
        v10 = vt_Copy_xf420_TRC_Mat_TRC_xf420;
        if (a6)
        {
          if (!v173 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf420_TRC_Mat_TRC_xf420;
        if (a5)
        {
          if (!v173 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf420_rgb_xf420;
        goto LABEL_6145;
      }

      if (a2 > 1647719520)
      {
        if (a2 == 1647719521)
        {
          if (a3)
          {
            v525 = a4 == 0;
          }

          else
          {
            v525 = 1;
          }

          v526 = !v525;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_b64a;
          if (!v525 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v526 = 0;
          }

          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_b64a;
          if (v526 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v527 = a3 && a4 == 0;
          v528 = !v527;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_b64a;
          if (a6)
          {
            if (!v528 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf420_TRC_Mat_TRC_b64a;
          if (a5)
          {
            if (!v528 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf420_rgb_b64a;
          goto LABEL_6145;
        }

        if (a2 != 1815162994)
        {
          if (a2 != 1815491698)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v163 = a4 == 0;
          }

          else
          {
            v163 = 1;
          }

          v164 = !v163;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_l64r;
          if (!v163 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v164 = 0;
          }

          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_l64r;
          if (v164 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v165 = a3 && a4 == 0;
          v166 = !v165;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_l64r;
          if (a6)
          {
            if (!v166 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf420_TRC_Mat_TRC_l64r;
          if (a5)
          {
            if (!v166 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf420_rgb_l64r;
          goto LABEL_6145;
        }

        goto LABEL_1414;
      }

      if (a2 == 1380411457)
      {
        if (a3)
        {
          v522 = a4 == 0;
        }

        else
        {
          v522 = 1;
        }

        v523 = !v522;
        if (!v522 && a5 && a6)
        {
          goto LABEL_3478;
        }

        if (a5)
        {
          v523 = 0;
        }

        if (v523 == 1 && a6)
        {
LABEL_3478:
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v524 = getVectorCapabilities();
          result = 0;
          v31 = v524 >= 2;
          v32 = vt_Copy_xf420_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
          v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_RGhA;
          goto LABEL_7033;
        }

        if (a3)
        {
          v963 = a4 == 0;
        }

        else
        {
          v963 = 0;
        }

        v964 = !v963;
        if (a6 && !v964 && !a5 || a5 && v964 != 1 && a6)
        {
          v10 = vt_Copy_xf420_TRC_Mat_TRC_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v965 = getVectorCapabilities();
          result = 0;
          v31 = v965 >= 2;
          v32 = vt_Copy_xf420_TRC_Mat_TRC_RGhA_neon_fp16;
          v10 = vt_Copy_xf420_TRC_Mat_TRC_RGhA;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_xf420_rgb_RGhA;
          if (a7)
          {
            goto LABEL_7006;
          }

          v1114 = getVectorCapabilities();
          result = 0;
          v31 = v1114 >= 2;
          v32 = vt_Copy_xf420_rgb_RGhA_neon_fp16;
          v10 = vt_Copy_xf420_rgb_RGhA;
          goto LABEL_7033;
        }

        goto LABEL_6906;
      }

      if (a2 != 1630697081)
      {
        v26 = 1647534392;
        goto LABEL_457;
      }

LABEL_1362:
      if (a3)
      {
        v191 = a4 == 0;
      }

      else
      {
        v191 = 1;
      }

      v192 = !v191;
      v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_2vuyf;
      if (!v191 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v192 = 0;
      }

      v10 = vt_Copy_xf420_TRC_Tone_Mat_TRC_2vuyf;
      if (v192 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v193 = a3 && a4 == 0;
      v194 = !v193;
      v10 = vt_Copy_xf420_TRC_Mat_TRC_2vuyf;
      if (a6)
      {
        if (!v194 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_xf420_TRC_Mat_TRC_2vuyf;
      if (a5)
      {
        if (!v194 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_xf420_rgb_2vuyf;
      goto LABEL_6145;
    }

LABEL_82:
    v10 = 0;
    if (a2 > 1937125937)
    {
      if (a2 > 1983013175)
      {
        if (a2 > 2016687155)
        {
          if (a2 > 2019963441)
          {
            if (a2 > 2037741157)
            {
              if (a2 == 2037741158 || a2 == 2037741171)
              {
                if (a3)
                {
                  v152 = a4 == 0;
                }

                else
                {
                  v152 = 1;
                }

                v153 = !v152;
                v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_yuvsf;
                if (!v152 && a5 && a6)
                {
                  goto LABEL_7006;
                }

                if (a5)
                {
                  v153 = 0;
                }

                v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_yuvsf;
                if (v153 == 1)
                {
                  if (a6)
                  {
                    goto LABEL_7006;
                  }
                }

                v154 = a3 && a4 == 0;
                v155 = !v154;
                v10 = vt_Copy_xf444_TRC_Mat_TRC_yuvsf;
                if (a6)
                {
                  if (!v155 && !a5)
                  {
                    goto LABEL_7006;
                  }
                }

                v10 = vt_Copy_xf444_TRC_Mat_TRC_yuvsf;
                if (a5)
                {
                  if (!v155 && a6)
                  {
                    goto LABEL_7006;
                  }
                }

                result = 0;
                v47 = (a4 | a3 | a5 | a6) == 0;
                v10 = vt_Copy_xf444_rgb_yuvsf;
                goto LABEL_6145;
              }

              goto LABEL_7007;
            }

            if (a2 != 2019963442)
            {
              if (a2 != 2019963956)
              {
                goto LABEL_7007;
              }

              goto LABEL_527;
            }

LABEL_468:
            if (a3)
            {
              v58 = a4 == 0;
            }

            else
            {
              v58 = 1;
            }

            v59 = !v58;
            if (!v58 && a5 && a6)
            {
              goto LABEL_481;
            }

            if (a5)
            {
              v59 = 0;
            }

            if (v59 == 1 && a6)
            {
LABEL_481:
              v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422;
              if (!a7)
              {
                v60 = getVectorCapabilities();
                result = 0;
                v31 = v60 >= 2;
                v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422_neon_fp16;
                v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422;
                goto LABEL_7033;
              }

              goto LABEL_7006;
            }

            if (a3)
            {
              v212 = a4 == 0;
            }

            else
            {
              v212 = 0;
            }

            v213 = !v212;
            if (a6 && !v213 && !a5 || a5 && v213 != 1 && a6)
            {
              v10 = vt_Copy_xf444_TRC_Mat_TRC_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v214 = getVectorCapabilities();
              result = 0;
              v31 = v214 >= 2;
              v32 = vt_Copy_xf444_TRC_Mat_TRC_xf422_neon_fp16;
              v10 = vt_Copy_xf444_TRC_Mat_TRC_xf422;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf444_rgb_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v623 = getVectorCapabilities();
              result = 0;
              v31 = v623 >= 2;
              v32 = vt_Copy_xf444_rgb_xf422_neon_fp16;
              v10 = vt_Copy_xf444_rgb_xf422;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          if (a2 != 2016687156 && a2 != 2016698739)
          {
            if (a2 != 2019963440)
            {
              goto LABEL_7007;
            }

            goto LABEL_483;
          }

LABEL_527:
          if (a3)
          {
            v68 = a4 == 0;
          }

          else
          {
            v68 = 1;
          }

          v69 = !v68;
          if (!v68 && a5 && a6)
          {
            goto LABEL_540;
          }

          if (a5)
          {
            v69 = 0;
          }

          if (v69 == 1 && a6)
          {
LABEL_540:
            v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444;
            if (!a7)
            {
              v70 = getVectorCapabilities();
              result = 0;
              v31 = v70 >= 2;
              v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444_neon_fp16;
              v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444;
              goto LABEL_7033;
            }

            goto LABEL_7006;
          }

          if (a3)
          {
            v215 = a4 == 0;
          }

          else
          {
            v215 = 0;
          }

          v216 = !v215;
          if (a6 && !v216 && !a5 || a5 && v216 != 1 && a6)
          {
            v10 = vt_Copy_xf444_TRC_Mat_TRC_xf444;
            if (a7)
            {
              goto LABEL_7006;
            }

            v217 = getVectorCapabilities();
            result = 0;
            v31 = v217 >= 2;
            v32 = vt_Copy_xf444_TRC_Mat_TRC_xf444_neon_fp16;
            v10 = vt_Copy_xf444_TRC_Mat_TRC_xf444;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_xf444_rgb_xf444;
            if (a7)
            {
              goto LABEL_7006;
            }

            v624 = getVectorCapabilities();
            result = 0;
            v31 = v624 >= 2;
            v32 = vt_Copy_xf444_rgb_xf444_neon_fp16;
            v10 = vt_Copy_xf444_rgb_xf444;
            goto LABEL_7033;
          }

          goto LABEL_6906;
        }

        if (a2 <= 2016567666)
        {
          if (a2 != 1983013176)
          {
            if (a2 != 1983144248)
            {
              v17 = 1999843442;
LABEL_237:
              if (a2 != v17)
              {
                goto LABEL_7007;
              }

LABEL_598:
              if (a3)
              {
                v79 = a4 == 0;
              }

              else
              {
                v79 = 1;
              }

              v80 = !v79;
              v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_l10r;
              if (!v79 && a5 && a6)
              {
                goto LABEL_7006;
              }

              if (a5)
              {
                v80 = 0;
              }

              v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_l10r;
              if (v80 == 1)
              {
                if (a6)
                {
                  goto LABEL_7006;
                }
              }

              v81 = a3 && a4 == 0;
              v82 = !v81;
              v10 = vt_Copy_xf444_TRC_Mat_TRC_l10r;
              if (a6)
              {
                if (!v82 && !a5)
                {
                  goto LABEL_7006;
                }
              }

              v10 = vt_Copy_xf444_TRC_Mat_TRC_l10r;
              if (a5)
              {
                if (!v82 && a6)
                {
                  goto LABEL_7006;
                }
              }

              result = 0;
              v47 = (a4 | a3 | a5 | a6) == 0;
              v10 = vt_Copy_xf444_rgb_l10r;
              goto LABEL_6145;
            }

LABEL_624:
            if (a3)
            {
              v83 = a4 == 0;
            }

            else
            {
              v83 = 1;
            }

            v84 = !v83;
            if (!v83 && a5 && a6)
            {
              goto LABEL_637;
            }

            if (a5)
            {
              v84 = 0;
            }

            if (v84 == 1 && a6)
            {
LABEL_637:
              v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf;
              if (!a7)
              {
                v85 = getVectorCapabilities();
                result = 0;
                v31 = v85 >= 2;
                v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf_neon_fp16;
                v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_444vf;
                goto LABEL_7033;
              }

              goto LABEL_7006;
            }

            if (a3)
            {
              v381 = a4 == 0;
            }

            else
            {
              v381 = 0;
            }

            v382 = !v381;
            if (a6 && !v382 && !a5 || a5 && v382 != 1 && a6)
            {
              v10 = vt_Copy_xf444_TRC_Mat_TRC_444vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v383 = getVectorCapabilities();
              result = 0;
              v31 = v383 >= 2;
              v32 = vt_Copy_xf444_TRC_Mat_TRC_444vf_neon_fp16;
              v10 = vt_Copy_xf444_TRC_Mat_TRC_444vf;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf444_rgb_444vf;
              if (a7)
              {
                goto LABEL_7006;
              }

              v834 = getVectorCapabilities();
              result = 0;
              v31 = v834 >= 2;
              v32 = vt_Copy_xf444_rgb_444vf_neon_fp16;
              v10 = vt_Copy_xf444_rgb_444vf;
              goto LABEL_7033;
            }

            goto LABEL_6906;
          }

          goto LABEL_340;
        }

        if (a2 == 2016567667)
        {
          goto LABEL_468;
        }

        if (a2 != 2016686640)
        {
          v18 = 2016686642;
          goto LABEL_467;
        }

        goto LABEL_483;
      }

      if (a2 <= 1952855091)
      {
        if (a2 > 1949589874)
        {
          if (a2 == 1949589875)
          {
            goto LABEL_527;
          }

          if (a2 != 1952854576)
          {
            v18 = 1952854578;
LABEL_467:
            if (a2 != v18)
            {
              goto LABEL_7007;
            }

            goto LABEL_468;
          }

LABEL_483:
          if (a3)
          {
            v61 = a4 == 0;
          }

          else
          {
            v61 = 1;
          }

          v62 = !v61;
          if (!v61 && a5 && a6)
          {
            goto LABEL_496;
          }

          if (a5)
          {
            v62 = 0;
          }

          if (v62 == 1 && a6)
          {
LABEL_496:
            v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420;
            if (!a7)
            {
              v63 = getVectorCapabilities();
              result = 0;
              v31 = v63 >= 2;
              v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            goto LABEL_7006;
          }

          if (a3)
          {
            v288 = a4 == 0;
          }

          else
          {
            v288 = 0;
          }

          v289 = !v288;
          if (a6 && !v289 && !a5 || a5 && v289 != 1 && a6)
          {
            v10 = vt_Copy_xf444_TRC_Mat_TRC_xf420;
            if (a7)
            {
              goto LABEL_7006;
            }

            v290 = getVectorCapabilities();
            result = 0;
            v31 = v290 >= 2;
            v32 = vt_Copy_xf444_TRC_Mat_TRC_xf420_neon_fp16;
            v10 = vt_Copy_xf444_TRC_Mat_TRC_xf420;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_xf444_rgb_xf420;
            if (a7)
            {
              goto LABEL_7006;
            }

            v678 = getVectorCapabilities();
            result = 0;
            v31 = v678 >= 2;
            v32 = vt_Copy_xf444_rgb_xf420_neon_fp16;
            v10 = vt_Copy_xf444_rgb_xf420;
            goto LABEL_7033;
          }

          goto LABEL_6906;
        }

        if (a2 != 1937125938)
        {
          if (a2 != 1937126452)
          {
            v18 = 1949458803;
            goto LABEL_467;
          }

LABEL_572:
          if (a3)
          {
            v75 = a4 == 0;
          }

          else
          {
            v75 = 1;
          }

          v76 = !v75;
          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444;
          if (!v75 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v76 = 0;
          }

          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf444;
          if (v76 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v77 = a3 && a4 == 0;
          v78 = !v77;
          v10 = vt_Copy_xf444_TRC_Mat_TRC_xf444;
          if (a6)
          {
            if (!v78 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf444_TRC_Mat_TRC_xf444;
          if (a5)
          {
            if (!v78 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf444_rgb_xf444;
          goto LABEL_6145;
        }

LABEL_683:
        if (a3)
        {
          v93 = a4 == 0;
        }

        else
        {
          v93 = 1;
        }

        v94 = !v93;
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422;
        if (!v93 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v94 = 0;
        }

        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf422;
        if (v94 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v95 = a3 && a4 == 0;
        v96 = !v95;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_xf422;
        if (a6)
        {
          if (!v96 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf444_TRC_Mat_TRC_xf422;
        if (a5)
        {
          if (!v96 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf444_rgb_xf422;
        goto LABEL_6145;
      }

      if (a2 <= 1953903667)
      {
        if (a2 == 1952855092)
        {
          goto LABEL_527;
        }

        if (a2 != 1953903152)
        {
          v18 = 1953903154;
          goto LABEL_467;
        }

        goto LABEL_483;
      }

      if (a2 == 1953903668)
      {
        goto LABEL_527;
      }

      if (a2 != 1982882104)
      {
        if (a2 != 1983000886)
        {
          goto LABEL_7007;
        }

        if (a3)
        {
          v64 = a4 == 0;
        }

        else
        {
          v64 = 1;
        }

        v65 = !v64;
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_v216;
        if (!v64 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v65 = 0;
        }

        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_v216;
        if (v65 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v66 = a3 && a4 == 0;
        v67 = !v66;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_v216;
        if (a6)
        {
          if (!v67 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf444_TRC_Mat_TRC_v216;
        if (a5)
        {
          if (!v67 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf444_rgb_v216;
        goto LABEL_6145;
      }

LABEL_668:
      if (a3)
      {
        v90 = a4 == 0;
      }

      else
      {
        v90 = 1;
      }

      v91 = !v90;
      if (!v90 && a5 && a6)
      {
        goto LABEL_681;
      }

      if (a5)
      {
        v91 = 0;
      }

      if (v91 == 1 && a6)
      {
LABEL_681:
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf;
        if (!a7)
        {
          v92 = getVectorCapabilities();
          result = 0;
          v31 = v92 >= 2;
          v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf_neon_fp16;
          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_420vf;
          goto LABEL_7033;
        }

        goto LABEL_7006;
      }

      if (a3)
      {
        v401 = a4 == 0;
      }

      else
      {
        v401 = 0;
      }

      v402 = !v401;
      if (a6 && !v402 && !a5 || a5 && v402 != 1 && a6)
      {
        v10 = vt_Copy_xf444_TRC_Mat_TRC_420vf;
        if (a7)
        {
          goto LABEL_7006;
        }

        v403 = getVectorCapabilities();
        result = 0;
        v31 = v403 >= 2;
        v32 = vt_Copy_xf444_TRC_Mat_TRC_420vf_neon_fp16;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_420vf;
        goto LABEL_7033;
      }

      if (!(a4 | a3 | a5 | a6))
      {
        v10 = vt_Copy_xf444_rgb_420vf;
        if (a7)
        {
          goto LABEL_7006;
        }

        v842 = getVectorCapabilities();
        result = 0;
        v31 = v842 >= 2;
        v32 = vt_Copy_xf444_rgb_420vf_neon_fp16;
        v10 = vt_Copy_xf444_rgb_420vf;
        goto LABEL_7033;
      }

      goto LABEL_6906;
    }

    if (a2 > 1380411456)
    {
      if (a2 > 1932681586)
      {
        if (a2 > 1936077361)
        {
          if (a2 == 1936077362)
          {
            goto LABEL_683;
          }

          if (a2 == 1936077876)
          {
            goto LABEL_572;
          }

          v25 = 1937125936;
        }

        else
        {
          if (a2 == 1932681587)
          {
            goto LABEL_683;
          }

          if (a2 == 1932812659)
          {
            goto LABEL_572;
          }

          v25 = 1936077360;
        }

        if (a2 != v25)
        {
          goto LABEL_7007;
        }

        if (a3)
        {
          v51 = a4 == 0;
        }

        else
        {
          v51 = 1;
        }

        v52 = !v51;
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420;
        if (!v51 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v52 = 0;
        }

        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_xf420;
        if (v52 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v53 = a3 && a4 == 0;
        v54 = !v53;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_xf420;
        if (a6)
        {
          if (!v54 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf444_TRC_Mat_TRC_xf420;
        if (a5)
        {
          if (!v54 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf444_rgb_xf420;
        goto LABEL_6145;
      }

      if (a2 > 1647719520)
      {
        if (a2 == 1647719521)
        {
          if (a3)
          {
            v294 = a4 == 0;
          }

          else
          {
            v294 = 1;
          }

          v295 = !v294;
          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_b64a;
          if (!v294 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v295 = 0;
          }

          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_b64a;
          if (v295 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v296 = a3 && a4 == 0;
          v297 = !v296;
          v10 = vt_Copy_xf444_TRC_Mat_TRC_b64a;
          if (a6)
          {
            if (!v297 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf444_TRC_Mat_TRC_b64a;
          if (a5)
          {
            if (!v297 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf444_rgb_b64a;
          goto LABEL_6145;
        }

        if (a2 != 1815162994)
        {
          if (a2 != 1815491698)
          {
            goto LABEL_7007;
          }

          if (a3)
          {
            v43 = a4 == 0;
          }

          else
          {
            v43 = 1;
          }

          v44 = !v43;
          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_l64r;
          if (!v43 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v44 = 0;
          }

          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_l64r;
          if (v44 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v45 = a3 && a4 == 0;
          v46 = !v45;
          v10 = vt_Copy_xf444_TRC_Mat_TRC_l64r;
          if (a6)
          {
            if (!v46 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf444_TRC_Mat_TRC_l64r;
          if (a5)
          {
            if (!v46 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf444_rgb_l64r;
          goto LABEL_6145;
        }

        goto LABEL_598;
      }

      if (a2 != 1380411457)
      {
        if (a2 != 1630697081)
        {
          v17 = 1647534392;
          goto LABEL_237;
        }

LABEL_546:
        if (a3)
        {
          v71 = a4 == 0;
        }

        else
        {
          v71 = 1;
        }

        v72 = !v71;
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_2vuyf;
        if (!v71 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v72 = 0;
        }

        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_2vuyf;
        if (v72 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v73 = a3 && a4 == 0;
        v74 = !v73;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_2vuyf;
        if (a6)
        {
          if (!v74 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf444_TRC_Mat_TRC_2vuyf;
        if (a5)
        {
          if (!v74 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf444_rgb_2vuyf;
        goto LABEL_6145;
      }

      if (a3)
      {
        v291 = a4 == 0;
      }

      else
      {
        v291 = 1;
      }

      v292 = !v291;
      if (!v291 && a5 && a6)
      {
        goto LABEL_2036;
      }

      if (a5)
      {
        v292 = 0;
      }

      if (v292 == 1 && a6)
      {
LABEL_2036:
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v293 = getVectorCapabilities();
        result = 0;
        v31 = v293 >= 2;
        v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA;
        goto LABEL_7033;
      }

      if (a3)
      {
        v675 = a4 == 0;
      }

      else
      {
        v675 = 0;
      }

      v676 = !v675;
      if (a6 && !v676 && !a5 || a5 && v676 != 1 && a6)
      {
        v10 = vt_Copy_xf444_TRC_Mat_TRC_RGhA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v677 = getVectorCapabilities();
        result = 0;
        v31 = v677 >= 2;
        v32 = vt_Copy_xf444_TRC_Mat_TRC_RGhA_neon_fp16;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_RGhA;
        goto LABEL_7033;
      }

      if (!(a4 | a3 | a5 | a6))
      {
        v10 = vt_Copy_xf444_rgb_RGhA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v1070 = getVectorCapabilities();
        result = 0;
        v31 = v1070 >= 2;
        v32 = vt_Copy_xf444_rgb_RGhA_neon_fp16;
        v10 = vt_Copy_xf444_rgb_RGhA;
        goto LABEL_7033;
      }
    }

    else
    {
      if (a2 <= 875704949)
      {
        if (a2 > 875704421)
        {
          if (a2 != 875704422 && a2 != 875704438)
          {
            if (a2 != 875704934)
            {
              goto LABEL_7007;
            }

            goto LABEL_340;
          }

          goto LABEL_668;
        }

        if (a2 != 32)
        {
          if (a2 != 846624102 && a2 != 846624121)
          {
            goto LABEL_7007;
          }

          goto LABEL_546;
        }

LABEL_639:
        if (a1 == 1932812659 || a1 == 2016698739 || a1 == 1949589875)
        {
          if (a3)
          {
            v86 = a4 == 0;
          }

          else
          {
            v86 = 1;
          }

          v87 = !v86;
          if (v86 || !a5 || !a6)
          {
            if (a5)
            {
              v87 = 0;
            }

            if (v87 != 1 || !a6)
            {
              if (a3)
              {
                v88 = a4 == 0;
              }

              else
              {
                v88 = 0;
              }

              v89 = !v88;
              if ((!a6 || v89 || a5) && (!a5 || v89 == 1 || !a6))
              {
                goto LABEL_5415;
              }

              goto LABEL_5399;
            }
          }
        }

        else
        {
          if (a3)
          {
            v408 = a4 == 0;
          }

          else
          {
            v408 = 1;
          }

          v409 = !v408;
          if (v408 || !a5 || !a6)
          {
            if (a5)
            {
              v409 = 0;
            }

            if (v409 != 1 || !a6)
            {
              if (a3)
              {
                v835 = a4 == 0;
              }

              else
              {
                v835 = 0;
              }

              v836 = !v835;
              if ((!a6 || v836 || a5) && (!a5 || v836 == 1 || !a6))
              {
LABEL_5415:
                if (!(a4 | a3 | a5 | a6))
                {
                  v10 = vt_Copy_xf444_rgb_BGRA;
                  if (a7)
                  {
                    goto LABEL_7006;
                  }

                  v841 = getVectorCapabilities();
                  result = 0;
                  v31 = v841 >= 2;
                  v32 = vt_Copy_xf444_rgb_BGRA_neon_fp16;
                  v10 = vt_Copy_xf444_rgb_BGRA;
                  goto LABEL_7033;
                }

                goto LABEL_6906;
              }

LABEL_5399:
              v10 = vt_Copy_xf444_TRC_Mat_TRC_BGRA;
              if (a7)
              {
                goto LABEL_7006;
              }

              v837 = getVectorCapabilities();
              result = 0;
              v31 = v837 >= 2;
              v32 = vt_Copy_xf444_TRC_Mat_TRC_BGRA_neon_fp16;
              v10 = vt_Copy_xf444_TRC_Mat_TRC_BGRA;
              goto LABEL_7033;
            }
          }
        }

        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v410 = getVectorCapabilities();
        result = 0;
        v31 = v410 >= 2;
        v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_BGRA;
        goto LABEL_7033;
      }

      if (a2 <= 1111970368)
      {
        if (a2 != 875704950)
        {
          if (a2 != 875836518 && a2 != 875836534)
          {
            goto LABEL_7007;
          }

          goto LABEL_624;
        }

LABEL_340:
        if (a3)
        {
          v40 = a4 == 0;
        }

        else
        {
          v40 = 1;
        }

        v41 = !v40;
        if (!v40 && a5 && a6)
        {
          goto LABEL_353;
        }

        if (a5)
        {
          v41 = 0;
        }

        if (v41 == 1 && a6)
        {
LABEL_353:
          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_422vf;
          if (!a7)
          {
            v42 = getVectorCapabilities();
            result = 0;
            v31 = v42 >= 2;
            v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_422vf_neon_fp16;
            v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_422vf;
            goto LABEL_7033;
          }

          goto LABEL_7006;
        }

        if (a3)
        {
          v411 = a4 == 0;
        }

        else
        {
          v411 = 0;
        }

        v412 = !v411;
        if (a6 && !v412 && !a5 || a5 && v412 != 1 && a6)
        {
          v10 = vt_Copy_xf444_TRC_Mat_TRC_422vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v413 = getVectorCapabilities();
          result = 0;
          v31 = v413 >= 2;
          v32 = vt_Copy_xf444_TRC_Mat_TRC_422vf_neon_fp16;
          v10 = vt_Copy_xf444_TRC_Mat_TRC_422vf;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_xf444_rgb_422vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v846 = getVectorCapabilities();
          result = 0;
          v31 = v846 >= 2;
          v32 = vt_Copy_xf444_rgb_422vf_neon_fp16;
          v10 = vt_Copy_xf444_rgb_422vf;
          goto LABEL_7033;
        }

        goto LABEL_6906;
      }

      if (a2 == 1111970369 || a2 == 1380401729)
      {
        goto LABEL_639;
      }

      if (a2 != 1380410945)
      {
        goto LABEL_7007;
      }

      if (a3)
      {
        v48 = a4 == 0;
      }

      else
      {
        v48 = 1;
      }

      v49 = !v48;
      if (!v48 && a5 && a6)
      {
        goto LABEL_400;
      }

      if (a5)
      {
        v49 = 0;
      }

      if (v49 == 1 && a6)
      {
LABEL_400:
        v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA;
        if (!a7)
        {
          v50 = getVectorCapabilities();
          result = 0;
          v31 = v50 >= 2;
          v32 = vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
          v10 = vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA;
          goto LABEL_7033;
        }

        goto LABEL_7006;
      }

      if (a3)
      {
        v665 = a4 == 0;
      }

      else
      {
        v665 = 0;
      }

      v666 = !v665;
      if (a6 && !v666 && !a5 || a5 && v666 != 1 && a6)
      {
        v10 = vt_Copy_xf444_TRC_Mat_TRC_RGfA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v667 = getVectorCapabilities();
        result = 0;
        v31 = v667 >= 2;
        v32 = vt_Copy_xf444_TRC_Mat_TRC_RGfA_neon_fp16;
        v10 = vt_Copy_xf444_TRC_Mat_TRC_RGfA;
        goto LABEL_7033;
      }

      if (!(a4 | a3 | a5 | a6))
      {
        v10 = vt_Copy_xf444_rgb_RGfA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v1069 = getVectorCapabilities();
        result = 0;
        v31 = v1069 >= 2;
        v32 = vt_Copy_xf444_rgb_RGfA_neon_fp16;
        v10 = vt_Copy_xf444_rgb_RGfA;
        goto LABEL_7033;
      }
    }

LABEL_7005:
    v10 = 0;
    goto LABEL_7006;
  }

  if (a1 == 1937126452)
  {
    goto LABEL_82;
  }

  if (a1 != 1949458803)
  {
    v14 = 1949589875;
    goto LABEL_81;
  }

LABEL_90:
  v10 = 0;
  if (a2 > 1937125937)
  {
    if (a2 > 1983013175)
    {
      if (a2 > 2016687155)
      {
        if (a2 > 2019963441)
        {
          if (a2 <= 2037741157)
          {
            if (a2 != 2019963442)
            {
              if (a2 != 2019963956)
              {
                goto LABEL_7007;
              }

              goto LABEL_874;
            }

LABEL_815:
            if (a3)
            {
              v111 = a4 == 0;
            }

            else
            {
              v111 = 1;
            }

            v112 = !v111;
            if (!v111 && a5 && a6)
            {
              goto LABEL_828;
            }

            if (a5)
            {
              v112 = 0;
            }

            if (v112 == 1 && a6)
            {
LABEL_828:
              v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf422;
              if (!a7)
              {
                v113 = getVectorCapabilities();
                result = 0;
                v31 = v113 >= 2;
                v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf422_neon_fp16;
                v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf422;
                goto LABEL_7033;
              }

              goto LABEL_7006;
            }

            if (a3)
            {
              v233 = a4 == 0;
            }

            else
            {
              v233 = 0;
            }

            v234 = !v233;
            if (a6 && !v234 && !a5 || a5 && v234 != 1 && a6)
            {
              v10 = vt_Copy_xf422_TRC_Mat_TRC_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v235 = getVectorCapabilities();
              result = 0;
              v31 = v235 >= 2;
              v32 = vt_Copy_xf422_TRC_Mat_TRC_xf422_neon_fp16;
              v10 = vt_Copy_xf422_TRC_Mat_TRC_xf422;
              goto LABEL_7033;
            }

            if (!(a4 | a3 | a5 | a6))
            {
              v10 = vt_Copy_xf422_rgb_xf422;
              if (a7)
              {
                goto LABEL_7006;
              }

              v639 = getVectorCapabilities();
              result = 0;
              v31 = v639 >= 2;
              v32 = vt_Copy_xf422_rgb_xf422_neon_fp16;
              v10 = vt_Copy_xf422_rgb_xf422;
              goto LABEL_7033;
            }

            goto LABEL_6982;
          }

          if (a2 == 2037741158 || a2 == 2037741171)
          {
            if (a3)
            {
              v187 = a4 == 0;
            }

            else
            {
              v187 = 1;
            }

            v188 = !v187;
            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_yuvsf;
            if (!v187 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v188 = 0;
            }

            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_yuvsf;
            if (v188 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v189 = a3 && a4 == 0;
            v190 = !v189;
            v10 = vt_Copy_xf422_TRC_Mat_TRC_yuvsf;
            if (a6)
            {
              if (!v190 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_xf422_TRC_Mat_TRC_yuvsf;
            if (a5)
            {
              if (!v190 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_xf422_rgb_yuvsf;
            goto LABEL_6145;
          }

LABEL_7007:
          if (!a8)
          {
            return result;
          }

          goto LABEL_7008;
        }

        if (a2 != 2016687156 && a2 != 2016698739)
        {
          if (a2 != 2019963440)
          {
            goto LABEL_7007;
          }

LABEL_830:
          if (a3)
          {
            v114 = a4 == 0;
          }

          else
          {
            v114 = 1;
          }

          v115 = !v114;
          if (!v114 && a5 && a6)
          {
            goto LABEL_843;
          }

          if (a5)
          {
            v115 = 0;
          }

          if (v115 == 1 && a6)
          {
LABEL_843:
            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf420;
            if (!a7)
            {
              v116 = getVectorCapabilities();
              result = 0;
              v31 = v116 >= 2;
              v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf420_neon_fp16;
              v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf420;
              goto LABEL_7033;
            }

            goto LABEL_7006;
          }

          if (a3)
          {
            v418 = a4 == 0;
          }

          else
          {
            v418 = 0;
          }

          v419 = !v418;
          if (a6 && !v419 && !a5 || a5 && v419 != 1 && a6)
          {
            v10 = vt_Copy_xf422_TRC_Mat_TRC_xf420;
            if (a7)
            {
              goto LABEL_7006;
            }

            v420 = getVectorCapabilities();
            result = 0;
            v31 = v420 >= 2;
            v32 = vt_Copy_xf422_TRC_Mat_TRC_xf420_neon_fp16;
            v10 = vt_Copy_xf422_TRC_Mat_TRC_xf420;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_xf422_rgb_xf420;
            if (a7)
            {
              goto LABEL_7006;
            }

            v847 = getVectorCapabilities();
            result = 0;
            v31 = v847 >= 2;
            v32 = vt_Copy_xf422_rgb_xf420_neon_fp16;
            v10 = vt_Copy_xf422_rgb_xf420;
            goto LABEL_7033;
          }

          goto LABEL_6982;
        }

LABEL_874:
        if (a3)
        {
          v121 = a4 == 0;
        }

        else
        {
          v121 = 1;
        }

        v122 = !v121;
        if (!v121 && a5 && a6)
        {
          goto LABEL_887;
        }

        if (a5)
        {
          v122 = 0;
        }

        if (v122 == 1 && a6)
        {
LABEL_887:
          v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444;
          if (!a7)
          {
            v123 = getVectorCapabilities();
            result = 0;
            v31 = v123 >= 2;
            v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444_neon_fp16;
            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444;
            goto LABEL_7033;
          }

LABEL_7006:
          result = 0;
          goto LABEL_7007;
        }

        if (a3)
        {
          v230 = a4 == 0;
        }

        else
        {
          v230 = 0;
        }

        v231 = !v230;
        if (a6 && !v231 && !a5 || a5 && v231 != 1 && a6)
        {
          v10 = vt_Copy_xf422_TRC_Mat_TRC_xf444;
          if (a7)
          {
            goto LABEL_7006;
          }

          v232 = getVectorCapabilities();
          result = 0;
          v31 = v232 >= 2;
          v32 = vt_Copy_xf422_TRC_Mat_TRC_xf444_neon_fp16;
          v10 = vt_Copy_xf422_TRC_Mat_TRC_xf444;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_xf422_rgb_xf444;
          if (a7)
          {
            goto LABEL_7006;
          }

          v638 = getVectorCapabilities();
          result = 0;
          v31 = v638 >= 2;
          v32 = vt_Copy_xf422_rgb_xf444_neon_fp16;
          v10 = vt_Copy_xf422_rgb_xf444;
          goto LABEL_7033;
        }

LABEL_6982:
        v10 = 0;
        goto LABEL_7006;
      }

      if (a2 <= 2016567666)
      {
        if (a2 != 1983013176)
        {
          if (a2 == 1983144248)
          {
            if (a3)
            {
              v404 = a4 == 0;
            }

            else
            {
              v404 = 1;
            }

            v405 = !v404;
            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_444vf;
            if (!v404 && a5 && a6)
            {
              goto LABEL_7006;
            }

            if (a5)
            {
              v405 = 0;
            }

            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_444vf;
            if (v405 == 1)
            {
              if (a6)
              {
                goto LABEL_7006;
              }
            }

            v406 = a3 && a4 == 0;
            v407 = !v406;
            v10 = vt_Copy_xf422_TRC_Mat_TRC_444vf;
            if (a6)
            {
              if (!v407 && !a5)
              {
                goto LABEL_7006;
              }
            }

            v10 = vt_Copy_xf422_TRC_Mat_TRC_444vf;
            if (a5)
            {
              if (!v407 && a6)
              {
                goto LABEL_7006;
              }
            }

            result = 0;
            v47 = (a4 | a3 | a5 | a6) == 0;
            v10 = vt_Copy_xf422_rgb_444vf;
            goto LABEL_6145;
          }

          v19 = 1999843442;
LABEL_275:
          if (a2 != v19)
          {
            goto LABEL_7007;
          }

LABEL_985:
          if (a3)
          {
            v139 = a4 == 0;
          }

          else
          {
            v139 = 1;
          }

          v140 = !v139;
          v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_l10r;
          if (!v139 && a5 && a6)
          {
            goto LABEL_7006;
          }

          if (a5)
          {
            v140 = 0;
          }

          v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_l10r;
          if (v140 == 1)
          {
            if (a6)
            {
              goto LABEL_7006;
            }
          }

          v141 = a3 && a4 == 0;
          v142 = !v141;
          v10 = vt_Copy_xf422_TRC_Mat_TRC_l10r;
          if (a6)
          {
            if (!v142 && !a5)
            {
              goto LABEL_7006;
            }
          }

          v10 = vt_Copy_xf422_TRC_Mat_TRC_l10r;
          if (a5)
          {
            if (!v142 && a6)
            {
              goto LABEL_7006;
            }
          }

          result = 0;
          v47 = (a4 | a3 | a5 | a6) == 0;
          v10 = vt_Copy_xf422_rgb_l10r;
          goto LABEL_6145;
        }

LABEL_712:
        if (a3)
        {
          v97 = a4 == 0;
        }

        else
        {
          v97 = 1;
        }

        v98 = !v97;
        if (!v97 && a5 && a6)
        {
          goto LABEL_725;
        }

        if (a5)
        {
          v98 = 0;
        }

        if (v98 == 1 && a6)
        {
LABEL_725:
          v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_422vf;
          if (!a7)
          {
            v99 = getVectorCapabilities();
            result = 0;
            v31 = v99 >= 2;
            v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_422vf_neon_fp16;
            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_422vf;
            goto LABEL_7033;
          }

          goto LABEL_7006;
        }

        if (a3)
        {
          v501 = a4 == 0;
        }

        else
        {
          v501 = 0;
        }

        v502 = !v501;
        if (a6 && !v502 && !a5 || a5 && v502 != 1 && a6)
        {
          v10 = vt_Copy_xf422_TRC_Mat_TRC_422vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v503 = getVectorCapabilities();
          result = 0;
          v31 = v503 >= 2;
          v32 = vt_Copy_xf422_TRC_Mat_TRC_422vf_neon_fp16;
          v10 = vt_Copy_xf422_TRC_Mat_TRC_422vf;
          goto LABEL_7033;
        }

        if (!(a4 | a3 | a5 | a6))
        {
          v10 = vt_Copy_xf422_rgb_422vf;
          if (a7)
          {
            goto LABEL_7006;
          }

          v959 = getVectorCapabilities();
          result = 0;
          v31 = v959 >= 2;
          v32 = vt_Copy_xf422_rgb_422vf_neon_fp16;
          v10 = vt_Copy_xf422_rgb_422vf;
          goto LABEL_7033;
        }

        goto LABEL_6982;
      }

      if (a2 == 2016567667)
      {
        goto LABEL_815;
      }

      if (a2 == 2016686640)
      {
        goto LABEL_830;
      }

      v20 = 2016686642;
LABEL_814:
      if (a2 != v20)
      {
        goto LABEL_7007;
      }

      goto LABEL_815;
    }

    if (a2 <= 1952855091)
    {
      if (a2 > 1949589874)
      {
        if (a2 == 1949589875)
        {
          goto LABEL_874;
        }

        if (a2 == 1952854576)
        {
          goto LABEL_830;
        }

        v20 = 1952854578;
        goto LABEL_814;
      }

      if (a2 != 1937125938)
      {
        if (a2 != 1937126452)
        {
          v20 = 1949458803;
          goto LABEL_814;
        }

LABEL_915:
        if (a3)
        {
          v128 = a4 == 0;
        }

        else
        {
          v128 = 1;
        }

        v129 = !v128;
        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444;
        if (!v128 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v129 = 0;
        }

        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444;
        if (v129 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v130 = a3 && a4 == 0;
        v131 = !v130;
        v10 = vt_Copy_xf422_TRC_Mat_TRC_xf444;
        if (a6)
        {
          if (!v131 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf422_TRC_Mat_TRC_xf444;
        if (a5)
        {
          if (!v131 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf422_rgb_xf444;
        goto LABEL_6145;
      }

LABEL_1011:
      if (a3)
      {
        v143 = a4 == 0;
      }

      else
      {
        v143 = 1;
      }

      v144 = !v143;
      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf422;
      if (!v143 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v144 = 0;
      }

      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf422;
      if (v144 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v145 = a3 && a4 == 0;
      v146 = !v145;
      v10 = vt_Copy_xf422_TRC_Mat_TRC_xf422;
      if (a6)
      {
        if (!v146 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_xf422_TRC_Mat_TRC_xf422;
      if (a5)
      {
        if (!v146 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_xf422_rgb_xf422;
      goto LABEL_6145;
    }

    if (a2 <= 1953903667)
    {
      if (a2 == 1952855092)
      {
        goto LABEL_874;
      }

      if (a2 == 1953903152)
      {
        goto LABEL_830;
      }

      v20 = 1953903154;
      goto LABEL_814;
    }

    if (a2 == 1953903668)
    {
      goto LABEL_874;
    }

    if (a2 != 1982882104)
    {
      if (a2 != 1983000886)
      {
        goto LABEL_7007;
      }

      if (a3)
      {
        v117 = a4 == 0;
      }

      else
      {
        v117 = 1;
      }

      v118 = !v117;
      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_v216;
      if (!v117 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v118 = 0;
      }

      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_v216;
      if (v118 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v119 = a3 && a4 == 0;
      v120 = !v119;
      v10 = vt_Copy_xf422_TRC_Mat_TRC_v216;
      if (a6)
      {
        if (!v120 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_xf422_TRC_Mat_TRC_v216;
      if (a5)
      {
        if (!v120 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_xf422_rgb_v216;
      goto LABEL_6145;
    }

    goto LABEL_970;
  }

  if (a2 > 1380411456)
  {
    if (a2 > 1932681586)
    {
      if (a2 > 1936077361)
      {
        if (a2 == 1936077362)
        {
          goto LABEL_1011;
        }

        if (a2 == 1936077876)
        {
          goto LABEL_915;
        }

        v33 = 1937125936;
      }

      else
      {
        if (a2 == 1932681587)
        {
          goto LABEL_1011;
        }

        if (a2 == 1932812659)
        {
          goto LABEL_915;
        }

        v33 = 1936077360;
      }

      if (a2 != v33)
      {
        goto LABEL_7007;
      }

      if (a3)
      {
        v107 = a4 == 0;
      }

      else
      {
        v107 = 1;
      }

      v108 = !v107;
      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf420;
      if (!v107 && a5 && a6)
      {
        goto LABEL_7006;
      }

      if (a5)
      {
        v108 = 0;
      }

      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_xf420;
      if (v108 == 1)
      {
        if (a6)
        {
          goto LABEL_7006;
        }
      }

      v109 = a3 && a4 == 0;
      v110 = !v109;
      v10 = vt_Copy_xf422_TRC_Mat_TRC_xf420;
      if (a6)
      {
        if (!v110 && !a5)
        {
          goto LABEL_7006;
        }
      }

      v10 = vt_Copy_xf422_TRC_Mat_TRC_xf420;
      if (a5)
      {
        if (!v110 && a6)
        {
          goto LABEL_7006;
        }
      }

      result = 0;
      v47 = (a4 | a3 | a5 | a6) == 0;
      v10 = vt_Copy_xf422_rgb_xf420;
      goto LABEL_6145;
    }

    if (a2 > 1647719520)
    {
      if (a2 == 1647719521)
      {
        if (a3)
        {
          v428 = a4 == 0;
        }

        else
        {
          v428 = 1;
        }

        v429 = !v428;
        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_b64a;
        if (!v428 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v429 = 0;
        }

        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_b64a;
        if (v429 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v430 = a3 && a4 == 0;
        v431 = !v430;
        v10 = vt_Copy_xf422_TRC_Mat_TRC_b64a;
        if (a6)
        {
          if (!v431 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf422_TRC_Mat_TRC_b64a;
        if (a5)
        {
          if (!v431 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf422_rgb_b64a;
        goto LABEL_6145;
      }

      if (a2 != 1815162994)
      {
        if (a2 != 1815491698)
        {
          goto LABEL_7007;
        }

        if (a3)
        {
          v100 = a4 == 0;
        }

        else
        {
          v100 = 1;
        }

        v101 = !v100;
        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_l64r;
        if (!v100 && a5 && a6)
        {
          goto LABEL_7006;
        }

        if (a5)
        {
          v101 = 0;
        }

        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_l64r;
        if (v101 == 1)
        {
          if (a6)
          {
            goto LABEL_7006;
          }
        }

        v102 = a3 && a4 == 0;
        v103 = !v102;
        v10 = vt_Copy_xf422_TRC_Mat_TRC_l64r;
        if (a6)
        {
          if (!v103 && !a5)
          {
            goto LABEL_7006;
          }
        }

        v10 = vt_Copy_xf422_TRC_Mat_TRC_l64r;
        if (a5)
        {
          if (!v103 && a6)
          {
            goto LABEL_7006;
          }
        }

        result = 0;
        v47 = (a4 | a3 | a5 | a6) == 0;
        v10 = vt_Copy_xf422_rgb_l64r;
        goto LABEL_6145;
      }

      goto LABEL_985;
    }

    if (a2 == 1380411457)
    {
      if (a3)
      {
        v425 = a4 == 0;
      }

      else
      {
        v425 = 1;
      }

      v426 = !v425;
      if (!v425 && a5 && a6)
      {
        goto LABEL_2858;
      }

      if (a5)
      {
        v426 = 0;
      }

      if (v426 == 1 && a6)
      {
LABEL_2858:
        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v427 = getVectorCapabilities();
        result = 0;
        v31 = v427 >= 2;
        v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA_neon_fp16;
        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_RGhA;
        goto LABEL_7033;
      }

      if (a3)
      {
        v843 = a4 == 0;
      }

      else
      {
        v843 = 0;
      }

      v844 = !v843;
      if (a6 && !v844 && !a5 || a5 && v844 != 1 && a6)
      {
        v10 = vt_Copy_xf422_TRC_Mat_TRC_RGhA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v845 = getVectorCapabilities();
        result = 0;
        v31 = v845 >= 2;
        v32 = vt_Copy_xf422_TRC_Mat_TRC_RGhA_neon_fp16;
        v10 = vt_Copy_xf422_TRC_Mat_TRC_RGhA;
        goto LABEL_7033;
      }

      if (!(a4 | a3 | a5 | a6))
      {
        v10 = vt_Copy_xf422_rgb_RGhA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v1106 = getVectorCapabilities();
        result = 0;
        v31 = v1106 >= 2;
        v32 = vt_Copy_xf422_rgb_RGhA_neon_fp16;
        v10 = vt_Copy_xf422_rgb_RGhA;
        goto LABEL_7033;
      }

      goto LABEL_6982;
    }

    if (a2 != 1630697081)
    {
      v19 = 1647534392;
      goto LABEL_275;
    }

LABEL_889:
    if (a3)
    {
      v124 = a4 == 0;
    }

    else
    {
      v124 = 1;
    }

    v125 = !v124;
    v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_2vuyf;
    if (!v124 && a5 && a6)
    {
      goto LABEL_7006;
    }

    if (a5)
    {
      v125 = 0;
    }

    v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_2vuyf;
    if (v125 == 1)
    {
      if (a6)
      {
        goto LABEL_7006;
      }
    }

    v126 = a3 && a4 == 0;
    v127 = !v126;
    v10 = vt_Copy_xf422_TRC_Mat_TRC_2vuyf;
    if (a6)
    {
      if (!v127 && !a5)
      {
        goto LABEL_7006;
      }
    }

    v10 = vt_Copy_xf422_TRC_Mat_TRC_2vuyf;
    if (a5)
    {
      if (!v127 && a6)
      {
        goto LABEL_7006;
      }
    }

    result = 0;
    v47 = (a4 | a3 | a5 | a6) == 0;
    v10 = vt_Copy_xf422_rgb_2vuyf;
    goto LABEL_6145;
  }

  if (a2 > 875704949)
  {
    if (a2 <= 1111970368)
    {
      if (a2 != 875704950)
      {
        if (a2 == 875836518 || a2 == 875836534)
        {
          if (a3)
          {
            v28 = a4 == 0;
          }

          else
          {
            v28 = 1;
          }

          v29 = !v28;
          if (!v28 && a5 && a6)
          {
            goto LABEL_265;
          }

          if (a5)
          {
            v29 = 0;
          }

          if (v29 == 1 && a6)
          {
LABEL_265:
            v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_444vf;
            if (!a7)
            {
              v30 = getVectorCapabilities();
              result = 0;
              v31 = v30 >= 2;
              v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_444vf_neon_fp16;
              v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_444vf;
              goto LABEL_7033;
            }

            goto LABEL_7006;
          }

          if (a3)
          {
            v596 = a4 == 0;
          }

          else
          {
            v596 = 0;
          }

          v597 = !v596;
          if (a6 && !v597 && !a5 || a5 && v597 != 1 && a6)
          {
            v10 = vt_Copy_xf422_TRC_Mat_TRC_444vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v598 = getVectorCapabilities();
            result = 0;
            v31 = v598 >= 2;
            v32 = vt_Copy_xf422_TRC_Mat_TRC_444vf_neon_fp16;
            v10 = vt_Copy_xf422_TRC_Mat_TRC_444vf;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_xf422_rgb_444vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v976 = getVectorCapabilities();
            result = 0;
            v31 = v976 >= 2;
            v32 = vt_Copy_xf422_rgb_444vf_neon_fp16;
            v10 = vt_Copy_xf422_rgb_444vf;
            goto LABEL_7033;
          }

          goto LABEL_6982;
        }

        goto LABEL_7007;
      }

      goto LABEL_712;
    }

    if (a2 != 1111970369 && a2 != 1380401729)
    {
      if (a2 != 1380410945)
      {
        goto LABEL_7007;
      }

      if (a3)
      {
        v104 = a4 == 0;
      }

      else
      {
        v104 = 1;
      }

      v105 = !v104;
      if (!v104 && a5 && a6)
      {
        goto LABEL_772;
      }

      if (a5)
      {
        v105 = 0;
      }

      if (v105 == 1 && a6)
      {
LABEL_772:
        v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA;
        if (!a7)
        {
          v106 = getVectorCapabilities();
          result = 0;
          v31 = v106 >= 2;
          v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA_neon_fp16;
          v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_RGfA;
          goto LABEL_7033;
        }

        goto LABEL_7006;
      }

      if (a3)
      {
        v838 = a4 == 0;
      }

      else
      {
        v838 = 0;
      }

      v839 = !v838;
      if (a6 && !v839 && !a5 || a5 && v839 != 1 && a6)
      {
        v10 = vt_Copy_xf422_TRC_Mat_TRC_RGfA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v840 = getVectorCapabilities();
        result = 0;
        v31 = v840 >= 2;
        v32 = vt_Copy_xf422_TRC_Mat_TRC_RGfA_neon_fp16;
        v10 = vt_Copy_xf422_TRC_Mat_TRC_RGfA;
        goto LABEL_7033;
      }

      if (!(a4 | a3 | a5 | a6))
      {
        v10 = vt_Copy_xf422_rgb_RGfA;
        if (a7)
        {
          goto LABEL_7006;
        }

        v1105 = getVectorCapabilities();
        result = 0;
        v31 = v1105 >= 2;
        v32 = vt_Copy_xf422_rgb_RGfA_neon_fp16;
        v10 = vt_Copy_xf422_rgb_RGfA;
        goto LABEL_7033;
      }

      goto LABEL_6982;
    }
  }

  else
  {
    if (a2 > 875704421)
    {
      if (a2 != 875704422 && a2 != 875704438)
      {
        if (a2 != 875704934)
        {
          goto LABEL_7007;
        }

        goto LABEL_712;
      }

LABEL_970:
      if (a3)
      {
        v136 = a4 == 0;
      }

      else
      {
        v136 = 1;
      }

      v137 = !v136;
      if (v136 || !a5 || !a6)
      {
        if (a5)
        {
          v137 = 0;
        }

        if (v137 != 1 || !a6)
        {
          if (a3)
          {
            v495 = a4 == 0;
          }

          else
          {
            v495 = 0;
          }

          v496 = !v495;
          if (a6 && !v496 && !a5 || a5 && v496 != 1 && a6)
          {
            v10 = vt_Copy_xf422_TRC_Mat_TRC_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v497 = getVectorCapabilities();
            result = 0;
            v31 = v497 >= 2;
            v32 = vt_Copy_xf422_TRC_Mat_TRC_420vf_neon_fp16;
            v10 = vt_Copy_xf422_TRC_Mat_TRC_420vf;
            goto LABEL_7033;
          }

          if (!(a4 | a3 | a5 | a6))
          {
            v10 = vt_Copy_xf422_rgb_420vf;
            if (a7)
            {
              goto LABEL_7006;
            }

            v958 = getVectorCapabilities();
            result = 0;
            v31 = v958 >= 2;
            v32 = vt_Copy_xf422_rgb_420vf_neon_fp16;
            v10 = vt_Copy_xf422_rgb_420vf;
            goto LABEL_7033;
          }

          goto LABEL_6982;
        }
      }

      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_420vf;
      if (a7)
      {
        goto LABEL_7006;
      }

      v138 = getVectorCapabilities();
      result = 0;
      v31 = v138 >= 2;
      v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_420vf_neon_fp16;
      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_420vf;
LABEL_7033:
      if (v31)
      {
        v10 = v32;
      }

      if (!a8)
      {
        return result;
      }

LABEL_7008:
      *a8 = v10;
      return result;
    }

    if (a2 != 32)
    {
      if (a2 != 846624102 && a2 != 846624121)
      {
        goto LABEL_7007;
      }

      goto LABEL_889;
    }
  }

  if (a1 != 1932681587 && a1 != 2016567667 && a1 != 1949458803)
  {
    if (a3)
    {
      v498 = a4 == 0;
    }

    else
    {
      v498 = 1;
    }

    v499 = !v498;
    if (!v498 && a5 && a6)
    {
      goto LABEL_3349;
    }

    if (a5)
    {
      v499 = 0;
    }

    if (v499 == 1 && a6)
    {
LABEL_3349:
      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA;
      if (a7)
      {
        goto LABEL_7006;
      }

      v500 = getVectorCapabilities();
      result = 0;
      v31 = v500 >= 2;
      v32 = vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA_neon_fp16;
      v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA;
      goto LABEL_7033;
    }

    if (a3)
    {
      v955 = a4 == 0;
    }

    else
    {
      v955 = 0;
    }

    v956 = !v955;
    if (a6 && !v956 && !a5 || a5 && v956 != 1 && a6)
    {
      v10 = vt_Copy_xf422_TRC_Mat_TRC_BGRA;
      if (a7)
      {
        goto LABEL_7006;
      }

      v957 = getVectorCapabilities();
      result = 0;
      v31 = v957 >= 2;
      v32 = vt_Copy_xf422_TRC_Mat_TRC_BGRA_neon_fp16;
      v10 = vt_Copy_xf422_TRC_Mat_TRC_BGRA;
      goto LABEL_7033;
    }

    if (!(a4 | a3 | a5 | a6))
    {
      v10 = vt_Copy_xf422_rgb_BGRA;
      if (a7)
      {
        goto LABEL_7006;
      }

      v1112 = getVectorCapabilities();
      result = 0;
      v31 = v1112 >= 2;
      v32 = vt_Copy_xf422_rgb_BGRA_neon_fp16;
      v10 = vt_Copy_xf422_rgb_BGRA;
      goto LABEL_7033;
    }

    goto LABEL_6982;
  }

  if (a3)
  {
    v132 = a4 == 0;
  }

  else
  {
    v132 = 1;
  }

  v133 = !v132;
  v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA;
  if (!v132 && a5 && a6)
  {
    goto LABEL_7006;
  }

  if (a5)
  {
    v133 = 0;
  }

  v10 = vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA;
  if (v133 == 1)
  {
    if (a6)
    {
      goto LABEL_7006;
    }
  }

  v134 = a3 && a4 == 0;
  v135 = !v134;
  v10 = vt_Copy_xf422_TRC_Mat_TRC_BGRA;
  if (a6)
  {
    if (!v135 && !a5)
    {
      goto LABEL_7006;
    }
  }

  v10 = vt_Copy_xf422_TRC_Mat_TRC_BGRA;
  if (a5)
  {
    if (!v135 && a6)
    {
      goto LABEL_7006;
    }
  }

  result = 0;
  v47 = (a4 | a3 | a5 | a6) == 0;
  v10 = vt_Copy_xf422_rgb_BGRA;
LABEL_6145:
  if (!v47)
  {
    v10 = 0;
  }

  if (a8)
  {
    goto LABEL_7008;
  }

  return result;
}