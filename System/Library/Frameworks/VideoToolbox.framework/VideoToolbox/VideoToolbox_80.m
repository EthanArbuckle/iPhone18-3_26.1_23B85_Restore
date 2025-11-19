uint64_t vt_Copy_xf444_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v8 + 128);
    *&v16 = *(v8 + 136);
    v17 = *&v16 / *&v15;
    LOWORD(v15) = *(v8 + 140);
    v18 = v15;
    LOWORD(v16) = *(v8 + 142);
    v19 = v16;
    v20 = v17 * *v8;
    v21 = v17 * *(v8 + 8);
    v22 = v17 * *(v8 + 16);
    v23 = v17 * *(v8 + 20);
    v24 = v17 * *(v8 + 28);
    v25 = v4 + *(result + 15);
    v26 = *(result + 28) * a2 / v2 + *(result + 44);
    v27 = *(v8 + 124);
    v28 = *(result + 36);
    if (v27 >= 0x11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 16 - v27;
    }

    v30 = **(result + 16) + v14 * v25 + 8 * *(result + 14);
    v31 = v9[2];
    if (v31)
    {
      v32 = v31 + v26 * v13 + 2 * v28;
    }

    else
    {
      v32 = 0;
    }

    v33 = *v9;
    v34 = *(*(result + 7) + 8);
    v35 = v34 == 0;
    v36 = v34 + v26 * v12 + 2 * v28;
    if (v35)
    {
      v36 = 0;
    }

    v37 = v33 + v26 * v11 + 2 * v28;
    v38 = v29;
    while (v7 < 1)
    {
LABEL_31:
      v37 += v11;
      v36 += v12;
      v32 += v13;
      v30 += v14;
      if (++v6 == v5)
      {
        goto LABEL_32;
      }
    }

    v39 = v7;
    v40 = v37;
    v41 = v30;
    v42 = v32;
    v43 = v36;
    while (1)
    {
      if (v43)
      {
        v44 = (*v43 >> v38) - v19;
        v45 = (v43[1] >> v38) - v19;
        v43 += 2;
        v46 = v21 * v45;
        v47 = (v23 * v45) + (v44 * v22);
        v48 = v24 * v44;
        if (!v42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v48 = 0.0;
        v47 = 0.0;
        v46 = 0.0;
        if (!v42)
        {
LABEL_17:
          v49 = 0;
          goto LABEL_18;
        }
      }

      v50 = *v42++;
      v49 = v50;
LABEL_18:
      v51 = *v40++;
      v52 = v20 * ((v51 >> v38) - v18);
      v53 = v46 + v52;
      if (!v42)
      {
        v49 = -1;
      }

      v54 = 65535.0;
      if (v53 <= 65535.0)
      {
        v54 = v53;
        if (v53 < 0.0)
        {
          v54 = 0.0;
        }
      }

      v55 = v47 + v52;
      v56 = (v47 + v52) <= 65535.0;
      v57 = 65535.0;
      if (v56)
      {
        v57 = v55;
        if (v55 < 0.0)
        {
          v57 = 0.0;
        }
      }

      v58 = v48 + v52;
      v59 = 65535.0;
      if (v58 <= 65535.0)
      {
        v59 = v58;
        if (v58 < 0.0)
        {
          v59 = 0.0;
        }
      }

      *v41 = bswap32(v49) >> 16;
      v41[1] = __rev16(llroundf(v54));
      v41[2] = __rev16(llroundf(v57));
      v41[3] = __rev16(llroundf(v59));
      v41 += 4;
      if (!--v39)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v158 = result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v161 = (v4 + v4 * a2) / v3 - v5;
  if (v161 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    result = *v10;
    v11 = **(v158 + 17);
    v12 = *(v8 + 140);
    v13 = *(v8 + 142);
    _S6 = *(v8 + 72);
    _S7 = *(v8 + 76);
    _S16 = *(v8 + 80);
    _S17 = *(v8 + 84);
    _S18 = *(v8 + 88);
    _S19 = *(v8 + 92);
    _S20 = *(v8 + 96);
    _S25 = *(v8 + 100);
    _S26 = *(v8 + 104);
    v23 = v8 + 16548;
    v24 = 8191.0 / *(v8 + 128);
    v179 = v12;
    v25 = v13;
    *&_D0 = v24 * *v8;
    _S1 = v24 * *(v8 + 8);
    _S2 = v24 * *(v8 + 16);
    _S3 = v24 * *(v8 + 20);
    _S4 = v24 * *(v8 + 28);
    v30 = v8 + 164;
    v31 = v8 + 32932;
    v178 = *&_D0;
    __asm { FCVT            H8, S0 }

    *&_D0 = v12;
    v37 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v13;
    v38 = vdupq_lane_s16(*&_D0, 0);
    v166 = _S4;
    v167 = _S3;
    __asm { FCVT            H0, S4 }

    v165 = _H0;
    v168 = _S2;
    v169 = _S1;
    __asm { FCVT            H0, S2 }

    v164 = _H0;
    __asm { FCVT            H0, S3 }

    v163 = _H0;
    __asm { FCVT            H0, S1 }

    v162 = _H0;
    v183 = *(v8 + 108);
    __asm { FCVT            H0, S22 }

    v176 = _H0;
    v177 = v37;
    v182 = *(v8 + 112);
    __asm { FCVT            H0, S24 }

    v175 = _H0;
    v181 = *(v8 + 116);
    __asm { FCVT            H0, S27 }

    v174 = _H0;
    v180 = *(v8 + 120);
    __asm { FCVT            H0, S28 }

    v173 = _H0;
    LODWORD(v8) = *(v8 + 124);
    v47 = 16 - v8;
    v48 = v9[2];
    v49 = *(v158 + 28) * a2 / v3 + *(v158 + 44);
    v160 = v10[2];
    v50 = *(v158 + 36);
    v51 = v48 + v160 * v49 + 2 * v50;
    v52 = v5 + *(v158 + 15);
    v53 = *v9;
    v54 = *(*(v158 + 7) + 8);
    _CF = v8 >= 0x11;
    v55 = v10[1];
    v56 = v54 + v55 * v49 + 2 * v50;
    if (_CF)
    {
      v47 = 0;
    }

    v57 = **(v158 + 16) + v11 * v52 + 8 * *(v158 + 14);
    if (!v48)
    {
      v51 = 0;
    }

    if (!v54)
    {
      v56 = 0;
    }

    v58 = result;
    v59 = v53 + result * v49 + 2 * v50;
    v60 = _S6;
    __asm { FCVT            H0, S6 }

    v172 = _H0;
    v62 = _S7;
    __asm { FCVT            H0, S7 }

    v171 = _H0;
    v64 = _S16;
    __asm { FCVT            H0, S16 }

    v170 = _H0;
    v66 = _S17;
    __asm { FCVT            H0, S17 }

    v68 = _S18;
    __asm { FCVT            H1, S18 }

    v70 = _S19;
    __asm { FCVT            H2, S19 }

    v72 = _S20;
    __asm { FCVT            H3, S20 }

    v74 = _S25;
    __asm
    {
      FCVT            H4, S25
      FCVT            H5, S26
    }

    v77 = vdupq_n_s16(-v47);
    v78.i64[0] = 0x9000900090009000;
    v78.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v122 = 0;
        v83 = v56;
        v82 = v51;
        v81 = v57;
        v80 = v59;
      }

      else
      {
        v79 = 0;
        v80 = v59;
        v81 = v57;
        v82 = v51;
        v83 = v56;
        do
        {
          v84 = 0uLL;
          if (v83)
          {
            v184 = vld2q_s16(v83);
            v83 += 16;
            v85 = vcvtq_f16_u16(vshlq_u16(v184.val[0], v77));
            v184.val[0] = vcvtq_f16_u16(vshlq_u16(v184.val[1], v77));
            v184.val[1] = vaddq_f16(v38, v85);
            v86 = vaddq_f16(v38, v184.val[0]);
            v87 = vmulq_n_f16(v86, v162);
            v88 = vmlaq_n_f16(vmulq_n_f16(v184.val[1], v164), v86, v163);
            v89 = vmulq_n_f16(v184.val[1], v165);
          }

          else
          {
            v89 = 0uLL;
            v88 = 0uLL;
            v87 = 0uLL;
          }

          v90 = *v80++;
          v91 = v90;
          if (v82)
          {
            v92 = *v82++;
            v84 = v92;
          }

          v93 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v91, v77)), v177);
          v94 = vmlaq_n_f16(v88, v93, _H8);
          v95 = vmlaq_n_f16(v89, v93, _H8);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v87, v93, _H8), 0), v78));
          v97.i16[0] = *(v30 + 2 * v96.u16[0]);
          v97.i16[1] = *(v30 + 2 * v96.u16[1]);
          v97.i16[2] = *(v30 + 2 * v96.u16[2]);
          v97.i16[3] = *(v30 + 2 * v96.u16[3]);
          v97.i16[4] = *(v30 + 2 * v96.u16[4]);
          v97.i16[5] = *(v30 + 2 * v96.u16[5]);
          v97.i16[6] = *(v30 + 2 * v96.u16[6]);
          v97.i16[7] = *(v30 + 2 * v96.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v78));
          v94.i16[0] = *(v30 + 2 * v98.u16[0]);
          v94.i16[1] = *(v30 + 2 * v98.u16[1]);
          v94.i16[2] = *(v30 + 2 * v98.u16[2]);
          v94.i16[3] = *(v30 + 2 * v98.u16[3]);
          v94.i16[4] = *(v30 + 2 * v98.u16[4]);
          v94.i16[5] = *(v30 + 2 * v98.u16[5]);
          v94.i16[6] = *(v30 + 2 * v98.u16[6]);
          v94.i16[7] = *(v30 + 2 * v98.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v78));
          v95.i16[0] = *(v30 + 2 * v99.u16[0]);
          v95.i16[1] = *(v30 + 2 * v99.u16[1]);
          v95.i16[2] = *(v30 + 2 * v99.u16[2]);
          v95.i16[3] = *(v30 + 2 * v99.u16[3]);
          v95.i16[4] = *(v30 + 2 * v99.u16[4]);
          v95.i16[5] = *(v30 + 2 * v99.u16[5]);
          v95.i16[6] = *(v30 + 2 * v99.u16[6]);
          v95.i16[7] = *(v30 + 2 * v99.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v97, v176), v94, v175), v95, v174), vmaxq_f16(vmaxq_f16(v97, v94), v95), v173), 0), v78));
          v101.i16[0] = *(v23 + 2 * v100.u16[0]);
          v101.i16[1] = *(v23 + 2 * v100.u16[1]);
          v101.i16[2] = *(v23 + 2 * v100.u16[2]);
          v101.i16[3] = *(v23 + 2 * v100.u16[3]);
          v101.i16[4] = *(v23 + 2 * v100.u16[4]);
          v101.i16[5] = *(v23 + 2 * v100.u16[5]);
          v101.i16[6] = *(v23 + 2 * v100.u16[6]);
          v101.i16[7] = *(v23 + 2 * v100.u16[7]);
          v102 = vmulq_f16(v97, v101);
          v103 = vmulq_f16(v94, v101);
          v104 = vmulq_f16(v95, v101);
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v172), v103, v171), v104, v170);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, _H0), v103, _H1), v104, _H2);
          v107 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, _H5), v103, _H4), v102, _H3);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v78));
          LOWORD(v109) = *(v31 + 2 * v108.u16[0]);
          WORD1(v109) = *(v31 + 2 * v108.u16[1]);
          WORD2(v109) = *(v31 + 2 * v108.u16[2]);
          WORD3(v109) = *(v31 + 2 * v108.u16[3]);
          WORD4(v109) = *(v31 + 2 * v108.u16[4]);
          WORD5(v109) = *(v31 + 2 * v108.u16[5]);
          WORD6(v109) = *(v31 + 2 * v108.u16[6]);
          HIWORD(v109) = *(v31 + 2 * v108.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v78));
          LOWORD(v111) = *(v31 + 2 * v110.u16[0]);
          WORD1(v111) = *(v31 + 2 * v110.u16[1]);
          WORD2(v111) = *(v31 + 2 * v110.u16[2]);
          WORD3(v111) = *(v31 + 2 * v110.u16[3]);
          WORD4(v111) = *(v31 + 2 * v110.u16[4]);
          WORD5(v111) = *(v31 + 2 * v110.u16[5]);
          WORD6(v111) = *(v31 + 2 * v110.u16[6]);
          HIWORD(v111) = *(v31 + 2 * v110.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v78));
          *v114 = *(v31 + 2 * v112.u16[0]);
          result = (v31 + 2 * v112.u16[3]);
          v113 = (v31 + 2 * v112.u16[7]);
          *&v114[2] = *(v31 + 2 * v112.u16[1]);
          *&v114[4] = *(v31 + 2 * v112.u16[2]);
          *&v114[6] = *result;
          *&v114[8] = *(v31 + 2 * v112.u16[4]);
          *&v114[10] = *(v31 + 2 * v112.u16[5]);
          *&v114[12] = *(v31 + 2 * v112.u16[6]);
          if (v82)
          {
            *v116.i8 = vzip1_s16(*v84.i8, 0);
            v116.u64[1] = vzip2_s16(*v84.i8, 0);
            v117 = vextq_s8(v84, v84, 8uLL).u64[0];
            *v118.i8 = vzip1_s16(v117, 0);
            v118.u64[1] = vzip2_s16(v117, 0);
            v119 = vcvtq_f32_u32(v118);
            v120 = vdupq_n_s32(0x37800080u);
            v121 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v116), v120)), vmulq_f32(v119, v120));
          }

          else
          {
            v121.i64[0] = 0x3C003C003C003C00;
            v121.i64[1] = 0x3C003C003C003C00;
          }

          v115 = *v113;
          vst4q_s16(v81, *&v109);
          v81 += 32;
          v79 += 8;
        }

        while (v79 < v7 - 7);
        v122 = v7 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v7, v122);
      v123 = v7 - v122;
      if (!((v123 < 0) ^ _VF | (v123 == 0)))
      {
        do
        {
          if (v83)
          {
            v124 = (*v83 >> v47) - v25;
            v125 = (*(v83 + 1) >> v47) - v25;
            v83 += 2;
            v126 = v169 * v125;
            v127 = (v167 * v125) + (v124 * v168);
            v128 = v166 * v124;
          }

          else
          {
            v128 = 0.0;
            v127 = 0.0;
            v126 = 0.0;
          }

          v129 = v80->u16[0];
          v80 = (v80 + 2);
          v130 = v178 * ((v129 >> v47) - v179);
          v131 = v126 + v130;
          v132 = 8191.0;
          if (v131 <= 8191.0)
          {
            v132 = v131;
            if (v131 < 0.0)
            {
              v132 = 0.0;
            }
          }

          v133 = v127 + v130;
          v134 = (v127 + v130) <= 8191.0;
          v135 = 8191.0;
          if (v134)
          {
            v135 = v133;
            if (v133 < 0.0)
            {
              v135 = 0.0;
            }
          }

          v136 = v128 + v130;
          v137 = 8191.0;
          if (v136 <= 8191.0)
          {
            v137 = v136;
            if (v136 < 0.0)
            {
              v137 = 0.0;
            }
          }

          if (v82)
          {
            v138 = v82->u16[0];
            v82 = (v82 + 2);
            _S6 = v138 * 0.000015259;
            __asm { FCVT            H6, S6 }
          }

          else
          {
            _H6 = 0;
          }

          _H7 = *(v30 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S19, H7 }

          _H7 = *(v30 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm { FCVT            S17, H7 }

          _H7 = *(v30 + 2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0)));
          __asm { FCVT            S18, H7 }

          v147 = fmaxf(_S19, fmaxf(_S17, _S18));
          v148 = (((v182 * _S17) + (v183 * _S19)) + (v181 * _S18)) + (v180 * v147);
          v149 = 8191.0;
          if (v148 <= 8191.0)
          {
            v149 = (((v182 * _S17) + (v183 * _S19)) + (v181 * _S18)) + (v180 * v147);
            if (v148 < 0.0)
            {
              v149 = 0.0;
            }
          }

          _H7 = *(v23 + 2 * llroundf(v149));
          __asm { FCVT            S7, H7 }

          v152 = _S19 * _S7;
          v153 = _S17 * _S7;
          v154 = _S18 * _S7;
          v155 = ((v62 * v153) + (v152 * v60)) + (v154 * v64);
          v156 = ((v68 * v153) + (v152 * v66)) + (v154 * v70);
          v157 = ((v74 * v153) + (v152 * v72)) + (v154 * _S26);
          LOWORD(v153) = *(v31 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          LOWORD(v155) = *(v31 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          LOWORD(v157) = *(v31 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          *v81 = LOWORD(v153);
          v81[1] = LOWORD(v155);
          v81[2] = LOWORD(v157);
          if (!v82)
          {
            _H6 = COERCE_UNSIGNED_INT(1.0);
          }

          v81[3] = _H6;
          v81 += 4;
          --v123;
        }

        while (v123);
      }

      v59 += v58;
      v56 += v55;
      v51 += v160;
      v57 += v11;
      ++v6;
    }

    while (v6 != v161);
  }

  *&v158[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = v11 + 164;
    v36 = v11 + 16548;
    v37 = v11 + 32932;
    v38 = *(v11 + 104);
    v39 = *(v11 + 108);
    v40 = *(v11 + 112);
    v41 = *(v11 + 116);
    v42 = *(v11 + 120);
    v43 = v7 + *(result + 15);
    v44 = *(result + 28) * a2 / v5 + *(result + 44);
    v45 = *(v11 + 124);
    v46 = *(result + 36);
    if (v45 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v45;
    }

    v48 = **(result + 16) + v17 * v43 + 8 * *(result + 14);
    v49 = v12[2];
    if (v49)
    {
      v50 = v49 + v44 * v16 + 2 * v46;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v12;
    v51 = *(*(result + 7) + 8);
    _ZF = v51 == 0;
    v54 = v51 + v44 * v15 + 2 * v46;
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = v52 + v44 * v14 + 2 * v46;
    v56 = v47;
    do
    {
      if (v10 >= 1)
      {
        v57 = v10;
        v58 = v55;
        v59 = v48;
        v60 = v50;
        v61 = v54;
        do
        {
          if (v61)
          {
            v62 = (*v61 >> v56) - v21;
            v63 = (v61[1] >> v56) - v21;
            v61 += 2;
            v64 = v23 * v63;
            v65 = (v25 * v63) + (v62 * v24);
            v66 = v26 * v62;
          }

          else
          {
            v66 = 0.0;
            v65 = 0.0;
            v64 = 0.0;
          }

          v67 = *v58++;
          v68 = v22 * ((v67 >> v56) - v20);
          v69 = v64 + v68;
          v70 = (v64 + v68) <= 8191.0;
          v71 = 8191.0;
          if (v70)
          {
            v71 = v69;
            if (v69 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v65 + v68;
          v70 = (v65 + v68) <= 8191.0;
          v73 = 8191.0;
          if (v70)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v66 + v68;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v60)
          {
            v76 = *v60++;
            _S8 = v76 * 0.000015259;
            __asm { FCVT            H8, S8 }
          }

          else
          {
            _H8 = 0;
          }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H10 = *(v35 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v35 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v88 = (((v40 * _S10) + (v39 * _S9)) + (v41 * _S11)) + (v42 * fmaxf(_S9, fmaxf(_S10, _S11)));
          v89 = 8191.0;
          if (v88 <= 8191.0)
          {
            v89 = v88;
            if (v88 < 0.0)
            {
              v89 = 0.0;
            }
          }

          _H12 = *(v36 + 2 * llroundf(v89));
          __asm { FCVT            S12, H12 }

          v92 = _S9 * _S12;
          v93 = _S10 * _S12;
          v94 = _S11 * _S12;
          v95 = ((v28 * v93) + (v92 * v27)) + (v94 * v29);
          v96 = ((v31 * v93) + (v92 * v30)) + (v94 * v32);
          v97 = ((v34 * v93) + (v92 * v33)) + (v94 * v38);
          LOWORD(v94) = *(v37 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          LOWORD(v97) = *(v37 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          *v59 = *(v37 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v59[1] = LOWORD(v94);
          v59[2] = LOWORD(v97);
          if (!v60)
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          v59[3] = _H8;
          v59 += 4;
          --v57;
        }

        while (v57);
      }

      v55 += v14;
      v54 += v15;
      v50 += v16;
      v48 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v137 = result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v138 = (v4 + v4 * a2) / v3 - v5;
  if (v138 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    v15 = *(v8 + 140);
    v16 = *(v8 + 142);
    _S15 = *(v8 + 104);
    v18 = v8 + 164;
    v19 = 8191.0 / *(v8 + 128);
    v20 = v16;
    *&_D0 = v19 * *v8;
    _S1 = v19 * *(v8 + 8);
    _S2 = v19 * *(v8 + 16);
    _S3 = v19 * *(v8 + 20);
    _S4 = v19 * *(v8 + 28);
    v25 = v8 + 16548;
    v151 = *&_D0;
    v152 = v15;
    __asm { FCVT            H8, S0 }

    *&_D0 = v15;
    v31 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v16;
    v32 = vdupq_lane_s16(*&_D0, 0);
    v143 = _S4;
    v144 = _S3;
    __asm { FCVT            H0, S4 }

    v142 = _H0;
    v145 = _S2;
    v146 = _S1;
    __asm { FCVT            H0, S2 }

    v141 = _H0;
    __asm { FCVT            H0, S3 }

    v140 = _H0;
    __asm { FCVT            H0, S1 }

    v139 = _H0;
    _S28 = *(v8 + 72);
    __asm { FCVT            H0, S21 }

    v149 = _H0;
    v150 = v31;
    _S6 = *(v8 + 76);
    __asm { FCVT            H0, S22 }

    v148 = _H0;
    _S7 = *(v8 + 80);
    __asm { FCVT            H0, S23 }

    v147 = _H0;
    _S16 = *(v8 + 84);
    __asm { FCVT            H9, S24 }

    _S18 = *(v8 + 88);
    __asm { FCVT            H10, S27 }

    _S20 = *(v8 + 92);
    __asm { FCVT            H11, S29 }

    _S25 = *(v8 + 96);
    __asm { FCVT            H12, S30 }

    _S13 = *(v8 + 100);
    __asm { FCVT            H0, S31 }

    LODWORD(v8) = *(v8 + 124);
    v53 = 16 - v8;
    v54 = v9[2];
    v55 = *(result + 28) * a2 / v3 + *(result + 44);
    v56 = *(result + 36);
    v57 = v54 + v13 * v55 + 2 * v56;
    v58 = v5 + *(result + 15);
    v59 = *v9;
    v60 = *(*(result + 7) + 8);
    _CF = v8 >= 0x11;
    v61 = v60 + v12 * v55 + 2 * v56;
    if (_CF)
    {
      v53 = 0;
    }

    v62 = **(result + 16) + v14 * v58 + 8 * *(result + 14);
    if (!v54)
    {
      v57 = 0;
    }

    if (!v60)
    {
      v61 = 0;
    }

    v63 = v59 + v11 * v55 + 2 * v56;
    __asm { FCVT            H1, S15 }

    v65 = vdupq_n_s16(-v53);
    v66.i64[0] = 0x9000900090009000;
    v66.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v108 = 0;
        v71 = v61;
        v70 = v57;
        v69 = v62;
        v68 = v63;
      }

      else
      {
        v67 = 0;
        v68 = v63;
        v69 = v62;
        v70 = v57;
        v71 = v61;
        do
        {
          v72 = 0uLL;
          if (v71)
          {
            v153 = vld2q_s16(v71);
            v71 += 16;
            v73 = vcvtq_f16_u16(vshlq_u16(v153.val[0], v65));
            v153.val[0] = vcvtq_f16_u16(vshlq_u16(v153.val[1], v65));
            v153.val[1] = vaddq_f16(v32, v73);
            v74 = vaddq_f16(v32, v153.val[0]);
            v75 = vmulq_n_f16(v74, v139);
            v76 = vmlaq_n_f16(vmulq_n_f16(v153.val[1], v141), v74, v140);
            v77 = vmulq_n_f16(v153.val[1], v142);
          }

          else
          {
            v77 = 0uLL;
            v76 = 0uLL;
            v75 = 0uLL;
          }

          v78 = *v68++;
          v79 = v78;
          if (v70)
          {
            v80 = *v70++;
            v72 = v80;
          }

          v81 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v79, v65)), v150);
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v75, v81, _H8), 0), v66));
          v83.i16[0] = *(v18 + 2 * v82.u16[0]);
          v83.i16[1] = *(v18 + 2 * v82.u16[1]);
          v83.i16[2] = *(v18 + 2 * v82.u16[2]);
          v83.i16[3] = *(v18 + 2 * v82.u16[3]);
          v83.i16[4] = *(v18 + 2 * v82.u16[4]);
          v83.i16[5] = *(v18 + 2 * v82.u16[5]);
          v83.i16[6] = *(v18 + 2 * v82.u16[6]);
          v83.i16[7] = *(v18 + 2 * v82.u16[7]);
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v76, v81, _H8), 0), v66));
          v85.i16[0] = *(v18 + 2 * v84.u16[0]);
          v85.i16[1] = *(v18 + 2 * v84.u16[1]);
          v85.i16[2] = *(v18 + 2 * v84.u16[2]);
          v85.i16[3] = *(v18 + 2 * v84.u16[3]);
          v85.i16[4] = *(v18 + 2 * v84.u16[4]);
          v85.i16[5] = *(v18 + 2 * v84.u16[5]);
          v85.i16[6] = *(v18 + 2 * v84.u16[6]);
          v85.i16[7] = *(v18 + 2 * v84.u16[7]);
          v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v77, v81, _H8), 0), v66));
          v81.i16[0] = *(v18 + 2 * v86.u16[0]);
          v81.i16[1] = *(v18 + 2 * v86.u16[1]);
          v81.i16[2] = *(v18 + 2 * v86.u16[2]);
          v81.i16[3] = *(v18 + 2 * v86.u16[3]);
          v81.i16[4] = *(v18 + 2 * v86.u16[4]);
          v81.i16[5] = *(v18 + 2 * v86.u16[5]);
          v81.i16[6] = *(v18 + 2 * v86.u16[6]);
          v81.i16[7] = *(v18 + 2 * v86.u16[7]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v83, v149), v85, v148), v81, v147), 0), v66));
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v83, _H9), v85, _H10), v81, _H11), 0), v66));
          LOWORD(v97) = *(v25 + 2 * v96.u16[0]);
          WORD1(v97) = *(v25 + 2 * v96.u16[1]);
          WORD2(v97) = *(v25 + 2 * v96.u16[2]);
          WORD3(v97) = *(v25 + 2 * v96.u16[3]);
          WORD4(v97) = *(v25 + 2 * v96.u16[4]);
          WORD5(v97) = *(v25 + 2 * v96.u16[5]);
          WORD6(v97) = *(v25 + 2 * v96.u16[6]);
          HIWORD(v97) = *(v25 + 2 * v96.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v81, _H1), v85, _H0), v83, _H12), 0), v66));
          *v100 = *(v25 + 2 * v98.u16[0]);
          result = (v25 + 2 * v98.u16[2]);
          v99 = (v25 + 2 * v98.u16[7]);
          *&v100[2] = *(v25 + 2 * v98.u16[1]);
          *&v100[4] = *result;
          *&v100[6] = *(v25 + 2 * v98.u16[3]);
          *&v100[8] = *(v25 + 2 * v98.u16[4]);
          *&v100[10] = *(v25 + 2 * v98.u16[5]);
          *&v100[12] = *(v25 + 2 * v98.u16[6]);
          if (v70)
          {
            *v102.i8 = vzip1_s16(*v72.i8, 0);
            v102.u64[1] = vzip2_s16(*v72.i8, 0);
            v103 = vextq_s8(v72, v72, 8uLL).u64[0];
            *v104.i8 = vzip1_s16(v103, 0);
            v104.u64[1] = vzip2_s16(v103, 0);
            v105 = vcvtq_f32_u32(v104);
            v106 = vdupq_n_s32(0x37800080u);
            v107 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v102), v106)), vmulq_f32(v105, v106));
          }

          else
          {
            v107.i64[0] = 0x3C003C003C003C00;
            v107.i64[1] = 0x3C003C003C003C00;
          }

          v95 = *(v25 + 2 * v87.u16[7]);
          v101 = *v99;
          v94 = *(v25 + 2 * v87.u16[6]);
          v93 = *(v25 + 2 * v87.u16[5]);
          v92 = *(v25 + 2 * v87.u16[4]);
          v91 = *(v25 + 2 * v87.u16[3]);
          v90 = *(v25 + 2 * v87.u16[2]);
          v89 = *(v25 + 2 * v87.u16[1]);
          v88 = *(v25 + 2 * v87.u16[0]);
          vst4q_s16(v69, *(&v97 - 1));
          v69 += 64;
          v67 += 8;
        }

        while (v67 < v7 - 7);
        v108 = v7 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v7, v108);
      v109 = v7 - v108;
      if (!((v109 < 0) ^ _VF | (v109 == 0)))
      {
        do
        {
          if (v71)
          {
            v110 = (*v71 >> v53) - v20;
            v111 = (*(v71 + 1) >> v53) - v20;
            v71 += 2;
            v112 = v146 * v111;
            v113 = (v144 * v111) + (v110 * v145);
            v114 = v143 * v110;
          }

          else
          {
            v114 = 0.0;
            v113 = 0.0;
            v112 = 0.0;
          }

          v115 = v68->u16[0];
          v68 = (v68 + 2);
          v116 = v151 * ((v115 >> v53) - v152);
          v117 = v112 + v116;
          v118 = (v112 + v116) <= 8191.0;
          v119 = 8191.0;
          if (v118)
          {
            v119 = v117;
            if (v117 < 0.0)
            {
              v119 = 0.0;
            }
          }

          v120 = v113 + v116;
          v118 = (v113 + v116) <= 8191.0;
          v121 = 8191.0;
          if (v118)
          {
            v121 = v120;
            if (v120 < 0.0)
            {
              v121 = 0.0;
            }
          }

          v122 = v114 + v116;
          v123 = 8191.0;
          if (v122 <= 8191.0)
          {
            v123 = v122;
            if (v122 < 0.0)
            {
              v123 = 0.0;
            }
          }

          if (v70)
          {
            v124 = v70->u16[0];
            v70 = (v70 + 2);
            _S3 = v124 * 0.000015259;
            __asm { FCVT            H3, S3 }
          }

          else
          {
            LOWORD(_H3) = 0;
          }

          _H2 = *(v18 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H4 = *(v18 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v18 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v133 = ((_S6 * _S4) + (_S2 * _S28)) + (_S5 * _S7);
          v134 = ((_S18 * _S4) + (_S2 * _S16)) + (_S5 * _S20);
          v135 = ((_S13 * _S4) + (_S2 * _S25)) + (_S5 * _S15);
          LOWORD(_S5) = *(v25 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          LOWORD(v135) = *(v25 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          *v69 = *(v25 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          *(v69 + 2) = LOWORD(_S5);
          *(v69 + 4) = LOWORD(v135);
          LOWORD(v136) = COERCE_UNSIGNED_INT(1.0);
          if (v70)
          {
            v136 = _H3;
          }

          *(v69 + 6) = v136;
          v69 += 8;
          --v109;
        }

        while (v109);
      }

      v63 += v11;
      v61 += v12;
      v57 += v13;
      v62 += v14;
      ++v6;
    }

    while (v6 != v138);
  }

  *&v137[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = *(v11 + 104);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v11 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 8 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v10 >= 1)
      {
        v52 = v10;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        v56 = v49;
        do
        {
          if (v56)
          {
            v57 = (*v56 >> v51) - v21;
            v58 = (v56[1] >> v51) - v21;
            v56 += 2;
            v59 = v23 * v58;
            v60 = (v25 * v58) + (v57 * v24);
            v61 = v26 * v57;
          }

          else
          {
            v61 = 0.0;
            v60 = 0.0;
            v59 = 0.0;
          }

          v62 = *v53++;
          v63 = v22 * ((v62 >> v51) - v20);
          v64 = v59 + v63;
          v65 = (v59 + v63) <= 8191.0;
          v66 = 8191.0;
          if (v65)
          {
            v66 = v64;
            if (v64 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v60 + v63;
          v65 = (v60 + v63) <= 8191.0;
          v68 = 8191.0;
          if (v65)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v61 + v63;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          if (v55)
          {
            v71 = *v55++;
            _S29 = v71 * 0.000015259;
            __asm { FCVT            H29, S29 }
          }

          else
          {
            LOWORD(_H29) = 0;
          }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H30 = *(v36 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v83 = ((v28 * _S30) + (_S28 * v27)) + (_S31 * v29);
          v84 = ((v31 * _S30) + (_S28 * v30)) + (_S31 * v32);
          v85 = ((v34 * _S30) + (_S28 * v33)) + (_S31 * v35);
          LOWORD(_S31) = *(v37 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          LOWORD(v85) = *(v37 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          *v54 = *(v37 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          *(v54 + 2) = LOWORD(_S31);
          *(v54 + 4) = LOWORD(v85);
          if (v55)
          {
            v86 = _H29;
          }

          else
          {
            LOWORD(v86) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v54 + 6) = v86;
          v54 += 8;
          --v52;
        }

        while (v52);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    v17 = *(v10 + 140);
    v18 = *(v10 + 142);
    v19 = 1.0 / *(v10 + 128);
    v20 = v17;
    v21 = v18;
    _S2 = v19 * *v10;
    _S3 = v19 * *(v10 + 8);
    _S4 = v19 * *(v10 + 16);
    _S5 = v19 * *(v10 + 20);
    _S6 = v19 * *(v10 + 28);
    __asm { FCVT            H7, S2 }

    *v2.i16 = v17;
    v32 = vdupq_lane_s16(v2, 0);
    *v3.i16 = -v18;
    v33 = vdupq_lane_s16(v3, 0);
    __asm
    {
      FCVT            H8, S6
      FCVT            H9, S4
      FCVT            H10, S5
      FCVT            H11, S3
    }

    LODWORD(v10) = *(v10 + 124);
    v38 = 16 - v10;
    v39 = v11[2];
    v40 = *(result + 28) * a2 / v4 + *(result + 44);
    v41 = *(result + 36);
    v42 = v39 + v15 * v40 + 2 * v41;
    v43 = v6 + *(result + 15);
    v44 = *v11;
    v45 = *(*(result + 7) + 8);
    _CF = v10 >= 0x11;
    v46 = v45 + v14 * v40 + 2 * v41;
    if (_CF)
    {
      v38 = 0;
    }

    v47 = **(result + 16) + v16 * v43 + 8 * *(result + 14);
    if (!v39)
    {
      v42 = 0;
    }

    if (!v45)
    {
      v46 = 0;
    }

    v48 = v44 + v13 * v40 + 2 * v41;
    v49 = vdupq_n_s16(-v38);
    v50 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      if (v9 < 8)
      {
        v69 = 0;
        v55 = v46;
        v54 = v42;
        v53 = v47;
        v52 = v48;
      }

      else
      {
        v51 = 0;
        v52 = v48;
        v53 = v47;
        v54 = v42;
        v55 = v46;
        do
        {
          if (v55)
          {
            v85 = vld2q_s16(v55);
            v55 += 16;
            v56 = vaddq_f16(v33, vcvtq_f16_u16(vshlq_u16(v85.val[0], v49)));
            v57 = vaddq_f16(v33, vcvtq_f16_u16(vshlq_u16(v85.val[1], v49)));
            v58 = vmulq_n_f16(v57, _H11);
            v59 = vmlaq_n_f16(vmulq_n_f16(v56, _H9), v57, _H10);
            v60 = vmulq_n_f16(v56, _H8);
          }

          else
          {
            v60 = 0uLL;
            v59 = 0u;
            v58 = 0u;
          }

          v61 = *v52++;
          v62 = v61;
          if (v54)
          {
            v63 = *v54++;
            *v64.i8 = vzip1_s16(*v63.i8, 0);
            v64.u64[1] = vzip2_s16(*v63.i8, 0);
            v65 = vextq_s8(v63, v63, 8uLL).u64[0];
            *v66.i8 = vzip1_s16(v65, 0);
            v66.u64[1] = vzip2_s16(v65, 0);
            v67 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v64), v50)), vmulq_f32(vcvtq_f32_u32(v66), v50));
          }

          else
          {
            v67.i64[0] = 0x3C003C003C003C00;
            v67.i64[1] = 0x3C003C003C003C00;
          }

          v68 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v62, v49)), v32);
          v86.val[0] = vmlaq_n_f16(v58, v68, _H7);
          v86.val[1] = vmlaq_n_f16(v59, v68, _H7);
          v86.val[2] = vmlaq_n_f16(v60, v68, _H7);
          v86.val[3] = v67;
          vst4q_s16(v53, v86);
          v53 += 64;
          v51 += 8;
        }

        while (v51 < v9 - 7);
        v69 = v9 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v9, v69);
      v70 = v9 - v69;
      if (!((v70 < 0) ^ _VF | (v70 == 0)))
      {
        break;
      }

LABEL_31:
      v48 += v13;
      v46 += v14;
      v42 += v15;
      v47 += v16;
      if (++v8 == v7)
      {
        goto LABEL_32;
      }
    }

    while (1)
    {
      if (v55)
      {
        v71 = (*v55 >> v38) - v21;
        v72 = (*(v55 + 1) >> v38) - v21;
        v55 += 2;
        v73 = _S3 * v72;
        v74 = (_S5 * v72) + (v71 * _S4);
        v75 = _S6 * v71;
        if (!v54)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v75 = 0.0;
        v74 = 0.0;
        v73 = 0.0;
        if (!v54)
        {
LABEL_26:
          LOWORD(_H25) = 0;
          goto LABEL_27;
        }
      }

      v76 = v54->u16[0];
      v54 = (v54 + 2);
      _S25 = v76 * 0.000015259;
      __asm { FCVT            H25, S25 }

LABEL_27:
      v79 = v52->u16[0];
      v52 = (v52 + 2);
      v80 = _S2 * ((v79 >> v38) - v20);
      _S24 = v73 + v80;
      _S23 = v74 + v80;
      _S22 = v75 + v80;
      __asm { FCVT            H24, S24 }

      *v53 = LOWORD(_S24);
      __asm { FCVT            H23, S23 }

      *(v53 + 2) = LOWORD(_S23);
      __asm { FCVT            H22, S22 }

      *(v53 + 4) = LOWORD(_S22);
      if (v54)
      {
        v84 = _H25;
      }

      else
      {
        LOWORD(v84) = COERCE_UNSIGNED_INT(1.0);
      }

      *(v53 + 6) = v84;
      v53 += 8;
      if (!--v70)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 8 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    *&v15 = *(v8 + 128);
    v16 = 1.0;
    v17 = 1.0 / *&v15;
    LOWORD(v15) = *(v8 + 140);
    v18 = v15;
    LOWORD(v16) = *(v8 + 142);
    v19 = v16;
    v20 = v17 * *v8;
    v21 = v17 * *(v8 + 8);
    v22 = v17 * *(v8 + 16);
    v23 = v17 * *(v8 + 20);
    v24 = v17 * *(v8 + 28);
    v25 = v4 + *(result + 15);
    v26 = *(result + 28) * a2 / v2 + *(result + 44);
    v27 = *(v8 + 124);
    v28 = *(result + 36);
    if (v27 >= 0x11)
    {
      v29 = 0;
    }

    else
    {
      v29 = 16 - v27;
    }

    v30 = **(result + 16) + v14 * v25 + 8 * *(result + 14);
    v31 = v9[2];
    if (v31)
    {
      v32 = v31 + v26 * v13 + 2 * v28;
    }

    else
    {
      v32 = 0;
    }

    v33 = *v9;
    v34 = *(*(result + 7) + 8);
    _ZF = v34 == 0;
    v36 = v34 + v26 * v12 + 2 * v28;
    if (_ZF)
    {
      v36 = 0;
    }

    v37 = v33 + v26 * v11 + 2 * v28;
    v38 = v29;
    while (v7 < 1)
    {
LABEL_22:
      v37 += v11;
      v36 += v12;
      v32 += v13;
      v30 += v14;
      if (++v6 == v5)
      {
        goto LABEL_23;
      }
    }

    v39 = v7;
    v40 = v37;
    v41 = v30;
    v42 = v32;
    v43 = v36;
    while (1)
    {
      if (v43)
      {
        v44 = (*v43 >> v38) - v19;
        v45 = (v43[1] >> v38) - v19;
        v43 += 2;
        v46 = v21 * v45;
        v47 = (v23 * v45) + (v44 * v22);
        v48 = v24 * v44;
        if (!v42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v48 = 0.0;
        v47 = 0.0;
        v46 = 0.0;
        if (!v42)
        {
LABEL_17:
          LOWORD(_H20) = 0;
          goto LABEL_18;
        }
      }

      v49 = *v42++;
      _S20 = v49 * 0.000015259;
      __asm { FCVT            H20, S20 }

LABEL_18:
      v55 = *v40++;
      v56 = v20 * ((v55 >> v38) - v18);
      _S19 = v46 + v56;
      _S18 = v47 + v56;
      _S17 = v48 + v56;
      __asm { FCVT            H19, S19 }

      *v41 = LOWORD(_S19);
      __asm { FCVT            H18, S18 }

      *(v41 + 2) = LOWORD(_S18);
      __asm { FCVT            H17, S17 }

      *(v41 + 4) = LOWORD(_S17);
      if (v42)
      {
        v60 = _H20;
      }

      else
      {
        LOWORD(v60) = COERCE_UNSIGNED_INT(1.0);
      }

      *(v41 + 6) = v60;
      v41 += 8;
      if (!--v39)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 16 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v167 = result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v170 = (v4 + v4 * a2) / v3 - v5;
  if (v170 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    result = *v10;
    v11 = **(v167 + 17);
    v12 = *(v8 + 140);
    v13 = *(v8 + 142);
    _S6 = *(v8 + 72);
    _S7 = *(v8 + 76);
    _S16 = *(v8 + 80);
    _S17 = *(v8 + 84);
    _S18 = *(v8 + 88);
    _S19 = *(v8 + 92);
    _S20 = *(v8 + 96);
    _S25 = *(v8 + 100);
    _S26 = *(v8 + 104);
    v23 = v8 + 16548;
    v24 = 8191.0 / *(v8 + 128);
    v190 = v12;
    v25 = v13;
    *&_D0 = v24 * *v8;
    _S1 = v24 * *(v8 + 8);
    _S2 = v24 * *(v8 + 16);
    _S3 = v24 * *(v8 + 20);
    _S4 = v24 * *(v8 + 28);
    v30 = v8 + 164;
    v31 = v8 + 32932;
    v189 = *&_D0;
    __asm { FCVT            H8, S0 }

    *&_D0 = v12;
    v37 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v13;
    v38 = vdupq_lane_s16(*&_D0, 0);
    v175 = _S4;
    v176 = _S3;
    __asm { FCVT            H0, S4 }

    v174 = _H0;
    v177 = _S1;
    __asm { FCVT            H0, S2 }

    v173 = _H0;
    __asm { FCVT            H0, S3 }

    v172 = _H0;
    __asm { FCVT            H0, S1 }

    v171 = _H0;
    v194 = *(v8 + 108);
    __asm { FCVT            H0, S22 }

    v187 = _H0;
    v188 = v37;
    v193 = *(v8 + 112);
    __asm { FCVT            H0, S24 }

    v186 = _H0;
    v192 = *(v8 + 116);
    __asm { FCVT            H0, S27 }

    v185 = _H0;
    v191 = *(v8 + 120);
    __asm { FCVT            H0, S28 }

    v184 = _H0;
    LODWORD(v8) = *(v8 + 124);
    v47 = 16 - v8;
    v48 = v9[2];
    v49 = *(v167 + 28) * a2 / v3 + *(v167 + 44);
    v169 = v10[2];
    v50 = *(v167 + 36);
    v51 = v48 + v169 * v49 + 2 * v50;
    v52 = v5 + *(v167 + 15);
    v53 = *v9;
    v54 = *(*(v167 + 7) + 8);
    _CF = v8 >= 0x11;
    v55 = v10[1];
    v56 = v54 + v55 * v49 + 2 * v50;
    if (_CF)
    {
      v47 = 0;
    }

    v57 = **(v167 + 16) + v11 * v52 + 16 * *(v167 + 14);
    if (!v48)
    {
      v51 = 0;
    }

    if (!v54)
    {
      v56 = 0;
    }

    v58 = result;
    v59 = v53 + result * v49 + 2 * v50;
    v60 = _S6;
    __asm { FCVT            H0, S6 }

    v183 = _H0;
    v62 = _S7;
    __asm { FCVT            H0, S7 }

    v182 = _H0;
    v64 = _S16;
    __asm { FCVT            H0, S16 }

    v181 = _H0;
    v66 = _S17;
    __asm { FCVT            H0, S17 }

    v180 = _H0;
    v68 = _S18;
    __asm { FCVT            H0, S18 }

    v179 = _H0;
    v70 = _S19;
    __asm { FCVT            H0, S19 }

    v178 = _H0;
    v72 = _S20;
    __asm { FCVT            H3, S20 }

    v74 = _S25;
    __asm
    {
      FCVT            H4, S25
      FCVT            H5, S26
    }

    v77 = vdupq_n_s16(-v47);
    v78.i64[0] = 0x9000900090009000;
    v78.i64[1] = 0x9000900090009000;
    v79 = 1.0;
    do
    {
      if (v7 < 8)
      {
        v129 = 0;
        v84 = v56;
        v83 = v51;
        v82 = v57;
        v81 = v59;
      }

      else
      {
        v80 = 0;
        v81 = v59;
        v82 = v57;
        v83 = v51;
        v84 = v56;
        do
        {
          v85 = 0uLL;
          if (v84)
          {
            v195 = vld2q_s16(v84);
            v84 += 16;
            v86 = vaddq_f16(v38, vcvtq_f16_u16(vshlq_u16(v195.val[0], v77)));
            v87 = vaddq_f16(v38, vcvtq_f16_u16(vshlq_u16(v195.val[1], v77)));
            v88 = vmulq_n_f16(v87, v171);
            v89 = vmlaq_n_f16(vmulq_n_f16(v86, v173), v87, v172);
            v90 = vmulq_n_f16(v86, v174);
          }

          else
          {
            v90 = 0uLL;
            v89 = 0uLL;
            v88 = 0uLL;
          }

          v91 = *v81++;
          v92 = v91;
          if (v83)
          {
            v93 = *v83++;
            v85 = v93;
          }

          v94 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v92, v77)), v188);
          v95 = vmlaq_n_f16(v89, v94, _H8);
          v96 = vmlaq_n_f16(v90, v94, _H8);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v88, v94, _H8), 0), v78));
          v98.i16[0] = *(v30 + 2 * v97.u16[0]);
          v98.i16[1] = *(v30 + 2 * v97.u16[1]);
          v98.i16[2] = *(v30 + 2 * v97.u16[2]);
          v98.i16[3] = *(v30 + 2 * v97.u16[3]);
          v98.i16[4] = *(v30 + 2 * v97.u16[4]);
          v98.i16[5] = *(v30 + 2 * v97.u16[5]);
          v98.i16[6] = *(v30 + 2 * v97.u16[6]);
          v98.i16[7] = *(v30 + 2 * v97.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v78));
          v95.i16[0] = *(v30 + 2 * v99.u16[0]);
          v95.i16[1] = *(v30 + 2 * v99.u16[1]);
          v95.i16[2] = *(v30 + 2 * v99.u16[2]);
          v95.i16[3] = *(v30 + 2 * v99.u16[3]);
          v95.i16[4] = *(v30 + 2 * v99.u16[4]);
          v95.i16[5] = *(v30 + 2 * v99.u16[5]);
          v95.i16[6] = *(v30 + 2 * v99.u16[6]);
          v95.i16[7] = *(v30 + 2 * v99.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v78));
          v96.i16[0] = *(v30 + 2 * v100.u16[0]);
          v96.i16[1] = *(v30 + 2 * v100.u16[1]);
          v96.i16[2] = *(v30 + 2 * v100.u16[2]);
          v96.i16[3] = *(v30 + 2 * v100.u16[3]);
          v96.i16[4] = *(v30 + 2 * v100.u16[4]);
          v96.i16[5] = *(v30 + 2 * v100.u16[5]);
          v96.i16[6] = *(v30 + 2 * v100.u16[6]);
          v96.i16[7] = *(v30 + 2 * v100.u16[7]);
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v187), v95, v186), v96, v185), vmaxq_f16(vmaxq_f16(v98, v95), v96), v184), 0), v78));
          v102.i16[0] = *(v23 + 2 * v101.u16[0]);
          v102.i16[1] = *(v23 + 2 * v101.u16[1]);
          v102.i16[2] = *(v23 + 2 * v101.u16[2]);
          v102.i16[3] = *(v23 + 2 * v101.u16[3]);
          v102.i16[4] = *(v23 + 2 * v101.u16[4]);
          v102.i16[5] = *(v23 + 2 * v101.u16[5]);
          v102.i16[6] = *(v23 + 2 * v101.u16[6]);
          v102.i16[7] = *(v23 + 2 * v101.u16[7]);
          v103 = vmulq_f16(v98, v102);
          v104 = vmulq_f16(v95, v102);
          v105 = vmulq_f16(v96, v102);
          v106 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, v183), v104, v182), v105, v181);
          v107 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v103, v180), v104, v179), v105, v178);
          v114 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, _H5), v104, _H4), v103, _H3);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v78));
          v109.i16[0] = *(v31 + 2 * v108.u16[0]);
          v109.i16[1] = *(v31 + 2 * v108.u16[1]);
          v109.i16[2] = *(v31 + 2 * v108.u16[2]);
          v109.i16[3] = *(v31 + 2 * v108.u16[3]);
          v109.i16[4] = *(v31 + 2 * v108.u16[4]);
          v109.i16[5] = *(v31 + 2 * v108.u16[5]);
          v109.i16[6] = *(v31 + 2 * v108.u16[6]);
          v109.i16[7] = *(v31 + 2 * v108.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v78));
          v111.i16[0] = *(v31 + 2 * v110.u16[0]);
          v111.i16[1] = *(v31 + 2 * v110.u16[1]);
          v111.i16[2] = *(v31 + 2 * v110.u16[2]);
          v111.i16[3] = *(v31 + 2 * v110.u16[3]);
          v111.i16[4] = *(v31 + 2 * v110.u16[4]);
          v111.i16[5] = *(v31 + 2 * v110.u16[5]);
          v111.i16[6] = *(v31 + 2 * v110.u16[6]);
          v111.i16[7] = *(v31 + 2 * v110.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v114, 0), v78));
          v114.i16[0] = *(v31 + 2 * v112.u16[0]);
          result = (v31 + 2 * v112.u16[3]);
          v113 = (v31 + 2 * v112.u16[7]);
          v114.i16[1] = *(v31 + 2 * v112.u16[1]);
          v114.i16[2] = *(v31 + 2 * v112.u16[2]);
          v114.i16[3] = *result;
          v114.i16[4] = *(v31 + 2 * v112.u16[4]);
          v114.i16[5] = *(v31 + 2 * v112.u16[5]);
          v114.i16[6] = *(v31 + 2 * v112.u16[6]);
          if (v83)
          {
            *v115.i8 = vzip1_s16(*v85.i8, 0);
            v115.u64[1] = vzip2_s16(*v85.i8, 0);
            v116 = vextq_s8(v85, v85, 8uLL).u64[0];
            *v117.i8 = vzip1_s16(v116, 0);
            v117.u64[1] = vzip2_s16(v116, 0);
            v118 = vdupq_n_s32(0x37800080u);
            _Q20 = vmulq_f32(vcvtq_f32_u32(v115), v118);
            v120 = vmulq_f32(vcvtq_f32_u32(v117), v118);
          }

          else
          {
            __asm { FMOV            V20.4S, #1.0 }

            v120 = _Q20;
          }

          v121 = vcvtq_f32_f16(*v109.i8);
          v122 = vcvtq_f32_f16(*v111.i8);
          v114.i16[7] = *v113;
          v123 = vcvtq_f32_f16(*v114.i8);
          v124 = vcvtq_f32_f16(*&vextq_s8(v109, v109, 8uLL));
          v125 = vcvtq_f32_f16(*&vextq_s8(v111, v111, 8uLL));
          v126 = vcvtq_f32_f16(*&vextq_s8(v114, v114, 8uLL));
          v127 = v82 + 128;
          vst4q_f32(v82, *(&_Q20 - 3));
          v128 = (v82 + 64);
          vst4q_f32(v128, *(&v120 - 3));
          v82 = v127;
          v80 += 8;
        }

        while (v80 < v7 - 7);
        v129 = v7 & 0xFFFFFFF8;
        v79 = 1.0;
      }

      _VF = __OFSUB__(v7, v129);
      v130 = v7 - v129;
      if (!((v130 < 0) ^ _VF | (v130 == 0)))
      {
        do
        {
          if (v84)
          {
            v131 = (*v84 >> v47) - v25;
            v132 = (*(v84 + 1) >> v47) - v25;
            v84 += 2;
            v133 = v177 * v132;
            v134 = (v176 * v132) + (v131 * _S2);
            v135 = v175 * v131;
          }

          else
          {
            v135 = 0.0;
            v134 = 0.0;
            v133 = 0.0;
          }

          v136 = v81->u16[0];
          v81 = (v81 + 2);
          v137 = v189 * ((v136 >> v47) - v190);
          v138 = v133 + v137;
          v139 = (v133 + v137) <= 8191.0;
          v140 = 8191.0;
          if (v139)
          {
            v140 = v138;
            if (v138 < 0.0)
            {
              v140 = 0.0;
            }
          }

          v141 = v134 + v137;
          v139 = (v134 + v137) <= 8191.0;
          v142 = 8191.0;
          if (v139)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          v143 = v135 + v137;
          v144 = 8191.0;
          if (v143 <= 8191.0)
          {
            v144 = v143;
            if (v143 < 0.0)
            {
              v144 = 0.0;
            }
          }

          if (v83)
          {
            v145 = v83->u16[0];
            v83 = (v83 + 2);
            v146 = v145 * 0.000015259;
          }

          else
          {
            v146 = 0.0;
          }

          _H17 = *(v30 + 2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _H16 = *(v30 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          _H18 = *(v30 + 2 * llroundf(fminf(fmaxf(v144, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v153 = (((v193 * _S16) + (v194 * _S17)) + (v192 * _S18)) + (v191 * fmaxf(_S17, fmaxf(_S16, _S18)));
          v154 = 8191.0;
          if (v153 <= 8191.0)
          {
            v154 = v153;
            if (v153 < 0.0)
            {
              v154 = 0.0;
            }
          }

          _H19 = *(v23 + 2 * llroundf(v154));
          __asm { FCVT            S19, H19 }

          _S17 = _S17 * _S19;
          v158 = _S16 * _S19;
          _S18 = _S18 * _S19;
          v160 = ((v62 * v158) + (_S17 * v60)) + (_S18 * v64);
          v161 = ((v68 * v158) + (_S17 * v66)) + (_S18 * v70);
          v162 = (v74 * v158) + (_S17 * v72);
          LOWORD(_S17) = *(v31 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          _S16 = v162 + (_S18 * _S26);
          __asm { FCVT            S17, H17 }

          LOWORD(_S18) = *(v31 + 2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0)));
          __asm { FCVT            S7, H18 }

          LOWORD(_S16) = *(v31 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          *v82 = _S17;
          *(v82 + 4) = _S7;
          if (!v83)
          {
            v146 = v79;
          }

          *(v82 + 8) = _S16;
          *(v82 + 12) = v146;
          v82 += 16;
          --v130;
        }

        while (v130);
      }

      v59 += v58;
      v56 += v55;
      v51 += v169;
      v57 += v11;
      ++v6;
    }

    while (v6 != v170);
  }

  *&v167[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 16 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = v11 + 164;
    v36 = v11 + 16548;
    v37 = v11 + 32932;
    v38 = *(v11 + 104);
    v39 = *(v11 + 108);
    v40 = *(v11 + 112);
    v41 = *(v11 + 116);
    v42 = *(v11 + 120);
    v43 = v7 + *(result + 15);
    v44 = *(result + 28) * a2 / v5 + *(result + 44);
    v45 = *(v11 + 124);
    v46 = *(result + 36);
    if (v45 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v45;
    }

    v48 = **(result + 16) + v17 * v43 + 16 * *(result + 14);
    v49 = v12[2];
    if (v49)
    {
      v50 = v49 + v44 * v16 + 2 * v46;
    }

    else
    {
      v50 = 0;
    }

    v52 = *v12;
    v51 = *(*(result + 7) + 8);
    _ZF = v51 == 0;
    v54 = v51 + v44 * v15 + 2 * v46;
    if (_ZF)
    {
      v54 = 0;
    }

    v55 = v52 + v44 * v14 + 2 * v46;
    v56 = v47;
    do
    {
      if (v10 >= 1)
      {
        v57 = v10;
        v58 = v55;
        v59 = v48;
        v60 = v50;
        v61 = v54;
        do
        {
          if (v61)
          {
            v62 = (*v61 >> v56) - v21;
            v63 = (v61[1] >> v56) - v21;
            v61 += 2;
            v64 = v23 * v63;
            v65 = (v25 * v63) + (v62 * v24);
            v66 = v26 * v62;
          }

          else
          {
            v66 = 0.0;
            v65 = 0.0;
            v64 = 0.0;
          }

          v67 = *v58++;
          v68 = v22 * ((v67 >> v56) - v20);
          v69 = v64 + v68;
          v70 = (v64 + v68) <= 8191.0;
          v71 = 8191.0;
          if (v70)
          {
            v71 = v69;
            if (v69 < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v65 + v68;
          v70 = (v65 + v68) <= 8191.0;
          v73 = 8191.0;
          if (v70)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v66 + v68;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          if (v60)
          {
            v76 = *v60++;
            v77 = v76 * 0.000015259;
          }

          else
          {
            v77 = 0.0;
          }

          _H9 = *(v35 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          _H10 = *(v35 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v35 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v87 = (((v40 * _S10) + (v39 * _S9)) + (v41 * _S11)) + (v42 * fmaxf(_S9, fmaxf(_S10, _S11)));
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          _H12 = *(v36 + 2 * llroundf(v88));
          __asm { FCVT            S12, H12 }

          v91 = _S9 * _S12;
          _S10 = _S10 * _S12;
          _S11 = _S11 * _S12;
          v94 = ((v28 * _S10) + (v91 * v27)) + (_S11 * v29);
          v95 = ((v31 * _S10) + (v91 * v30)) + (_S11 * v32);
          v96 = (v34 * _S10) + (v91 * v33);
          LOWORD(_S10) = *(v37 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v97 = v96 + (_S11 * v38);
          __asm { FCVT            S10, H10 }

          LOWORD(_S11) = *(v37 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v99 = llroundf(fminf(fmaxf(v97, 0.0), 8191.0));
          __asm { FCVT            S9, H11 }

          LOWORD(_S11) = *(v37 + 2 * v99);
          __asm { FCVT            S11, H11 }

          *v59 = _S10;
          *(v59 + 4) = _S9;
          if (!v60)
          {
            v77 = 1.0;
          }

          *(v59 + 8) = _S11;
          *(v59 + 12) = v77;
          v59 += 16;
          --v57;
        }

        while (v57);
      }

      v55 += v14;
      v54 += v15;
      v50 += v16;
      v48 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 16 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double _D0)
{
  v3 = *result;
  v142 = result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v143 = (v4 + v4 * a2) / v3 - v5;
  if (v143 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = *(result + 19);
    v9 = *(result + 7);
    v10 = *(result + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = **(result + 17);
    v15 = *(v8 + 140);
    v16 = *(v8 + 142);
    _S29 = *(v8 + 104);
    v18 = v8 + 164;
    v19 = 8191.0 / *(v8 + 128);
    v20 = v16;
    *&_D0 = v19 * *v8;
    _S1 = v19 * *(v8 + 8);
    _S2 = v19 * *(v8 + 16);
    _S3 = v19 * *(v8 + 20);
    _S4 = v19 * *(v8 + 28);
    v25 = v8 + 16548;
    v160 = *&_D0;
    v161 = v15;
    __asm { FCVT            H8, S0 }

    *&_D0 = v15;
    v31 = vdupq_lane_s16(*&_D0, 0);
    *&_D0 = -v16;
    v32 = vdupq_lane_s16(*&_D0, 0);
    v148 = _S4;
    v149 = _S3;
    __asm { FCVT            H0, S4 }

    v147 = _H0;
    v150 = _S2;
    v151 = _S1;
    __asm { FCVT            H0, S2 }

    v146 = _H0;
    __asm { FCVT            H0, S3 }

    v145 = _H0;
    __asm { FCVT            H0, S1 }

    v144 = _H0;
    _S6 = *(v8 + 72);
    __asm { FCVT            H0, S7 }

    v158 = _H0;
    v159 = v31;
    _S18 = *(v8 + 76);
    __asm { FCVT            H0, S16 }

    v157 = _H0;
    _S20 = *(v8 + 80);
    __asm { FCVT            H0, S21 }

    v156 = _H0;
    _S25 = *(v8 + 84);
    __asm { FCVT            H0, S22 }

    v155 = _H0;
    _S7 = *(v8 + 88);
    __asm { FCVT            H0, S23 }

    v154 = _H0;
    _S9 = *(v8 + 92);
    __asm { FCVT            H0, S24 }

    v153 = _H0;
    _S10 = *(v8 + 96);
    __asm { FCVT            H0, S27 }

    v152 = _H0;
    _S11 = *(v8 + 100);
    __asm { FCVT            H0, S28 }

    LODWORD(v8) = *(v8 + 124);
    v53 = 16 - v8;
    v54 = v9[2];
    v55 = *(result + 28) * a2 / v3 + *(result + 44);
    v56 = *(result + 36);
    v57 = v54 + v13 * v55 + 2 * v56;
    v58 = v5 + *(result + 15);
    v59 = *v9;
    v60 = *(*(result + 7) + 8);
    _CF = v8 >= 0x11;
    v61 = v60 + v12 * v55 + 2 * v56;
    if (_CF)
    {
      v53 = 0;
    }

    v62 = **(result + 16) + v14 * v58 + 16 * *(result + 14);
    if (!v54)
    {
      v57 = 0;
    }

    if (!v60)
    {
      v61 = 0;
    }

    v63 = v59 + v11 * v55 + 2 * v56;
    v64 = _S29;
    __asm { FCVT            H1, S29 }

    v66 = vdupq_n_s16(-v53);
    v67.i64[0] = 0x9000900090009000;
    v67.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v110 = 0;
        v72 = v61;
        v71 = v57;
        v70 = v62;
        v69 = v63;
      }

      else
      {
        v68 = 0;
        v69 = v63;
        v70 = v62;
        v71 = v57;
        v72 = v61;
        do
        {
          v73 = 0uLL;
          if (v72)
          {
            v162 = vld2q_s16(v72);
            v72 += 16;
            v74 = vcvtq_f16_u16(vshlq_u16(v162.val[0], v66));
            v162.val[0] = vcvtq_f16_u16(vshlq_u16(v162.val[1], v66));
            v162.val[1] = vaddq_f16(v32, v74);
            v162.val[0] = vaddq_f16(v32, v162.val[0]);
            v75 = vmulq_n_f16(v162.val[0], v144);
            v76 = vmlaq_n_f16(vmulq_n_f16(v162.val[1], v146), v162.val[0], v145);
            v77 = vmulq_n_f16(v162.val[1], v147);
          }

          else
          {
            v77 = 0uLL;
            v76 = 0uLL;
            v75 = 0uLL;
          }

          v78 = *v69++;
          v79 = v78;
          if (v71)
          {
            v80 = *v71++;
            v73 = v80;
          }

          v81 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v79, v66)), v159);
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v75, v81, _H8), 0), v67));
          v83.i16[0] = *(v18 + 2 * v82.u16[0]);
          v83.i16[1] = *(v18 + 2 * v82.u16[1]);
          v83.i16[2] = *(v18 + 2 * v82.u16[2]);
          v83.i16[3] = *(v18 + 2 * v82.u16[3]);
          v83.i16[4] = *(v18 + 2 * v82.u16[4]);
          v83.i16[5] = *(v18 + 2 * v82.u16[5]);
          v83.i16[6] = *(v18 + 2 * v82.u16[6]);
          v83.i16[7] = *(v18 + 2 * v82.u16[7]);
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v76, v81, _H8), 0), v67));
          v85.i16[0] = *(v18 + 2 * v84.u16[0]);
          v85.i16[1] = *(v18 + 2 * v84.u16[1]);
          v85.i16[2] = *(v18 + 2 * v84.u16[2]);
          v85.i16[3] = *(v18 + 2 * v84.u16[3]);
          v85.i16[4] = *(v18 + 2 * v84.u16[4]);
          v85.i16[5] = *(v18 + 2 * v84.u16[5]);
          v85.i16[6] = *(v18 + 2 * v84.u16[6]);
          v85.i16[7] = *(v18 + 2 * v84.u16[7]);
          v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v77, v81, _H8), 0), v67));
          v87.i16[0] = *(v18 + 2 * v86.u16[0]);
          v87.i16[1] = *(v18 + 2 * v86.u16[1]);
          v87.i16[2] = *(v18 + 2 * v86.u16[2]);
          v87.i16[3] = *(v18 + 2 * v86.u16[3]);
          v87.i16[4] = *(v18 + 2 * v86.u16[4]);
          v87.i16[5] = *(v18 + 2 * v86.u16[5]);
          v87.i16[6] = *(v18 + 2 * v86.u16[6]);
          v87.i16[7] = *(v18 + 2 * v86.u16[7]);
          v88 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v83, v155), v85, v154), v87, v153);
          v95 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v87, _H1), v85, _H0), v83, v152);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v83, v158), v85, v157), v87, v156), 0), v67));
          v90.i16[0] = *(v25 + 2 * v89.u16[0]);
          v90.i16[1] = *(v25 + 2 * v89.u16[1]);
          v90.i16[2] = *(v25 + 2 * v89.u16[2]);
          v90.i16[3] = *(v25 + 2 * v89.u16[3]);
          v90.i16[4] = *(v25 + 2 * v89.u16[4]);
          v90.i16[5] = *(v25 + 2 * v89.u16[5]);
          v90.i16[6] = *(v25 + 2 * v89.u16[6]);
          v90.i16[7] = *(v25 + 2 * v89.u16[7]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v88, 0), v67));
          v92.i16[0] = *(v25 + 2 * v91.u16[0]);
          v92.i16[1] = *(v25 + 2 * v91.u16[1]);
          v92.i16[2] = *(v25 + 2 * v91.u16[2]);
          v92.i16[3] = *(v25 + 2 * v91.u16[3]);
          v92.i16[4] = *(v25 + 2 * v91.u16[4]);
          v92.i16[5] = *(v25 + 2 * v91.u16[5]);
          v92.i16[6] = *(v25 + 2 * v91.u16[6]);
          v92.i16[7] = *(v25 + 2 * v91.u16[7]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v67));
          v95.i16[0] = *(v25 + 2 * v93.u16[0]);
          result = (v25 + 2 * v93.u16[2]);
          v94 = (v25 + 2 * v93.u16[7]);
          v95.i16[1] = *(v25 + 2 * v93.u16[1]);
          v95.i16[2] = *result;
          v95.i16[3] = *(v25 + 2 * v93.u16[3]);
          v95.i16[4] = *(v25 + 2 * v93.u16[4]);
          v95.i16[5] = *(v25 + 2 * v93.u16[5]);
          v95.i16[6] = *(v25 + 2 * v93.u16[6]);
          if (v71)
          {
            *v96.i8 = vzip1_s16(*v73.i8, 0);
            v96.u64[1] = vzip2_s16(*v73.i8, 0);
            v97 = vextq_s8(v73, v73, 8uLL).u64[0];
            *v98.i8 = vzip1_s16(v97, 0);
            v98.u64[1] = vzip2_s16(v97, 0);
            v99 = vdupq_n_s32(0x37800080u);
            _Q5 = vmulq_f32(vcvtq_f32_u32(v96), v99);
            v101 = vmulq_f32(vcvtq_f32_u32(v98), v99);
          }

          else
          {
            __asm { FMOV            V5.4S, #1.0 }

            v101 = _Q5;
          }

          v102 = vcvtq_f32_f16(*v90.i8);
          v103 = vcvtq_f32_f16(*v92.i8);
          v95.i16[7] = *v94;
          v104 = vcvtq_f32_f16(*v95.i8);
          v105 = vcvtq_f32_f16(*&vextq_s8(v90, v90, 8uLL));
          v106 = vcvtq_f32_f16(*&vextq_s8(v92, v92, 8uLL));
          v107 = vcvtq_f32_f16(*&vextq_s8(v95, v95, 8uLL));
          v108 = v70 + 128;
          vst4q_f32(v70, *(&_Q5 - 3));
          v109 = (v70 + 64);
          vst4q_f32(v109, *(&v101 - 3));
          v70 = v108;
          v68 += 8;
        }

        while (v68 < v7 - 7);
        v110 = v7 & 0xFFFFFFF8;
      }

      _VF = __OFSUB__(v7, v110);
      v111 = v7 - v110;
      if (!((v111 < 0) ^ _VF | (v111 == 0)))
      {
        do
        {
          if (v72)
          {
            v112 = (*v72 >> v53) - v20;
            v113 = (*(v72 + 1) >> v53) - v20;
            v72 += 2;
            v114 = v151 * v113;
            v115 = (v149 * v113) + (v112 * v150);
            v116 = v148 * v112;
          }

          else
          {
            v116 = 0.0;
            v115 = 0.0;
            v114 = 0.0;
          }

          v117 = v69->u16[0];
          v69 = (v69 + 2);
          v118 = v160 * ((v117 >> v53) - v161);
          v119 = v114 + v118;
          v120 = 8191.0;
          if (v119 <= 8191.0)
          {
            v120 = v119;
            if (v119 < 0.0)
            {
              v120 = 0.0;
            }
          }

          v121 = v115 + v118;
          v122 = 8191.0;
          if (v121 <= 8191.0)
          {
            v122 = v121;
            if (v121 < 0.0)
            {
              v122 = 0.0;
            }
          }

          v123 = 8191.0;
          if ((v116 + v118) <= 8191.0)
          {
            v123 = v116 + v118;
            if ((v116 + v118) < 0.0)
            {
              v123 = 0.0;
            }
          }

          if (v71)
          {
            v124 = v71->u16[0];
            v71 = (v71 + 2);
            v125 = v124 * 0.000015259;
          }

          else
          {
            v125 = 0.0;
          }

          _H2 = *(v18 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H4 = *(v18 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v18 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v132 = ((_S18 * _S4) + (_S2 * _S6)) + (_S5 * _S20);
          v133 = ((_S7 * _S4) + (_S2 * _S25)) + (_S5 * _S9);
          v134 = (_S11 * _S4) + (_S2 * _S10);
          LOWORD(_S4) = *(v25 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          v135 = v134 + (_S5 * v64);
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v25 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          v137 = llroundf(fminf(fmaxf(v135, 0.0), 8191.0));
          __asm { FCVT            S2, H5 }

          _H3 = *(v25 + 2 * v137);
          __asm { FCVT            S3, H3 }

          *v70 = _S4;
          *(v70 + 4) = _S2;
          v141 = 1.0;
          if (v71)
          {
            v141 = v125;
          }

          *(v70 + 8) = _S3;
          *(v70 + 12) = v141;
          v70 += 16;
          --v111;
        }

        while (v111);
      }

      v63 += v11;
      v61 += v12;
      v57 += v13;
      v62 += v14;
      ++v6;
    }

    while (v6 != v143);
  }

  *&v142[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 16 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_TRC_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = *(v11 + 72);
    v28 = *(v11 + 76);
    v29 = *(v11 + 80);
    v30 = *(v11 + 84);
    v31 = *(v11 + 88);
    v32 = *(v11 + 92);
    v33 = *(v11 + 96);
    v34 = *(v11 + 100);
    v35 = *(v11 + 104);
    v36 = v11 + 164;
    v37 = v11 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(v11 + 124);
    v41 = *(result + 36);
    if (v40 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v40;
    }

    v43 = **(result + 16) + v17 * v38 + 16 * *(result + 14);
    v44 = v12[2];
    if (v44)
    {
      v45 = v44 + v39 * v16 + 2 * v41;
    }

    else
    {
      v45 = 0;
    }

    v47 = *v12;
    v46 = *(*(result + 7) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v39 * v15 + 2 * v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = v47 + v39 * v14 + 2 * v41;
    v51 = v42;
    do
    {
      if (v10 >= 1)
      {
        v52 = v10;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        v56 = v49;
        do
        {
          if (v56)
          {
            v57 = (*v56 >> v51) - v21;
            v58 = (v56[1] >> v51) - v21;
            v56 += 2;
            v59 = v23 * v58;
            v60 = (v25 * v58) + (v57 * v24);
            v61 = v26 * v57;
          }

          else
          {
            v61 = 0.0;
            v60 = 0.0;
            v59 = 0.0;
          }

          v62 = *v53++;
          v63 = v22 * ((v62 >> v51) - v20);
          v64 = v59 + v63;
          v65 = (v59 + v63) <= 8191.0;
          v66 = 8191.0;
          if (v65)
          {
            v66 = v64;
            if (v64 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v60 + v63;
          v65 = (v60 + v63) <= 8191.0;
          v68 = 8191.0;
          if (v65)
          {
            v68 = v67;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v61 + v63;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          if (v55)
          {
            v71 = *v55++;
            v72 = v71 * 0.000015259;
          }

          else
          {
            v72 = 0.0;
          }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H30 = *(v36 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          v82 = ((v28 * _S30) + (_S28 * v27)) + (_S31 * v29);
          v83 = ((v31 * _S30) + (_S28 * v30)) + (_S31 * v32);
          v84 = (v34 * _S30) + (_S28 * v33);
          LOWORD(_S30) = *(v37 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          v85 = v84 + (_S31 * v35);
          __asm { FCVT            S30, H30 }

          LOWORD(_S31) = *(v37 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          v87 = llroundf(fminf(fmaxf(v85, 0.0), 8191.0));
          __asm { FCVT            S28, H31 }

          LOWORD(_S31) = *(v37 + 2 * v87);
          __asm { FCVT            S31, H31 }

          *v54 = _S30;
          *(v54 + 4) = _S28;
          if (v55)
          {
            v90 = v72;
          }

          else
          {
            v90 = 1.0;
          }

          *(v54 + 8) = _S31;
          *(v54 + 12) = v90;
          v54 += 16;
          --v52;
        }

        while (v52);
      }

      v50 += v14;
      v49 += v15;
      v45 += v16;
      v43 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 16 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = *(result + 19);
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    v17 = *(v10 + 140);
    v18 = *(v10 + 142);
    *v2.i32 = 1.0 / *(v10 + 128);
    v19 = v17;
    v20 = v18;
    _S3 = *v2.i32 * *v10;
    _S4 = *v2.i32 * *(v10 + 8);
    _S5 = *v2.i32 * *(v10 + 16);
    _S6 = *v2.i32 * *(v10 + 20);
    _S7 = *v2.i32 * *(v10 + 28);
    *v2.i16 = v17;
    v26 = vdupq_lane_s16(v2, 0);
    __asm { FCVT            H8, S3 }

    *v3.i16 = -v18;
    v32 = vdupq_lane_s16(v3, 0);
    __asm
    {
      FCVT            H9, S7
      FCVT            H10, S5
      FCVT            H11, S6
      FCVT            H12, S4
    }

    LODWORD(v10) = *(v10 + 124);
    v37 = 16 - v10;
    v38 = v11[2];
    v39 = *(result + 28) * a2 / v4 + *(result + 44);
    v40 = *(result + 36);
    v41 = v38 + v15 * v39 + 2 * v40;
    v42 = v6 + *(result + 15);
    v43 = *v11;
    v44 = *(*(result + 7) + 8);
    _CF = v10 >= 0x11;
    v45 = v44 + v14 * v39 + 2 * v40;
    if (_CF)
    {
      v37 = 0;
    }

    v46 = **(result + 16) + v16 * v42 + 16 * *(result + 14);
    if (!v38)
    {
      v41 = 0;
    }

    if (!v44)
    {
      v45 = 0;
    }

    v47 = v43 + v13 * v39 + 2 * v40;
    v48 = vdupq_n_s16(-v37);
    __asm { FMOV            V19.4S, #1.0 }

    while (1)
    {
      if (v9 < 8)
      {
        v80 = 0;
        v54 = v45;
        v53 = v41;
        v52 = v46;
        v51 = v47;
      }

      else
      {
        v50 = 0;
        v51 = v47;
        v52 = v46;
        v53 = v41;
        v54 = v45;
        do
        {
          if (v54)
          {
            v92 = vld2q_s16(v54);
            v54 += 16;
            v55 = vaddq_f16(v32, vcvtq_f16_u16(vshlq_u16(v92.val[0], v48)));
            v92.val[0] = vaddq_f16(v32, vcvtq_f16_u16(vshlq_u16(v92.val[1], v48)));
            v56 = vmulq_n_f16(v92.val[0], _H12);
            v57 = vmlaq_n_f16(vmulq_n_f16(v55, _H10), v92.val[0], _H11);
            v58 = vmulq_n_f16(v55, _H9);
          }

          else
          {
            v58 = 0uLL;
            v57 = 0uLL;
            v56 = 0uLL;
          }

          v59 = *v51++;
          v60 = v59;
          if (v53)
          {
            v61 = *v53++;
            *v62.i8 = vzip1_s16(*v61.i8, 0);
            v62.u64[1] = vzip2_s16(*v61.i8, 0);
            v63 = vextq_s8(v61, v61, 8uLL).u64[0];
            *v64.i8 = vzip1_s16(v63, 0);
            v64.u64[1] = vzip2_s16(v63, 0);
            v65 = vdupq_n_s32(0x37800080u);
            v66 = vmulq_f32(vcvtq_f32_u32(v62), v65);
            v67 = vmulq_f32(vcvtq_f32_u32(v64), v65);
          }

          else
          {
            v66 = _Q19;
            v67 = _Q19;
          }

          v68 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v60, v48)), v26);
          v69 = vmlaq_n_f16(v56, v68, _H8);
          v70 = vmlaq_n_f16(v57, v68, _H8);
          v71 = vmlaq_n_f16(v58, v68, _H8);
          v72 = vcvtq_f32_f16(*v69.i8);
          v73 = vcvtq_f32_f16(*v70.i8);
          v74 = vcvtq_f32_f16(*v71.i8);
          v75 = vcvtq_f32_f16(*&vextq_s8(v69, v69, 8uLL));
          v76 = vcvtq_f32_f16(*&vextq_s8(v70, v70, 8uLL));
          v77 = vcvtq_f32_f16(*&vextq_s8(v71, v71, 8uLL));
          v78 = v52 + 32;
          vst4q_f32(v52, *(&v66 - 3));
          v79 = v52 + 16;
          vst4q_f32(v79, *(&v67 - 3));
          v52 = v78;
          v50 += 8;
        }

        while (v50 < v9 - 7);
        v80 = v9 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v9, v80);
      v81 = v9 - v80;
      if (!((v81 < 0) ^ _VF | (v81 == 0)))
      {
        break;
      }

LABEL_31:
      v47 += v13;
      v45 += v14;
      v41 += v15;
      v46 += v16;
      if (++v8 == v7)
      {
        goto LABEL_32;
      }
    }

    while (1)
    {
      v82 = 0.0;
      if (!v54)
      {
        break;
      }

      v83 = (*v54 >> v37) - v20;
      v84 = (*(v54 + 1) >> v37) - v20;
      v54 += 2;
      v85 = _S4 * v84;
      v86 = (_S6 * v84) + (v83 * _S5);
      v87 = _S7 * v83;
      if (v53)
      {
        goto LABEL_24;
      }

LABEL_25:
      v89 = v51->u16[0];
      v51 = (v51 + 2);
      v90 = _S3 * ((v89 >> v37) - v19);
      v91 = v87 + v90;
      *v52 = v85 + v90;
      v52[1] = v86 + v90;
      if (!v53)
      {
        v82 = 1.0;
      }

      v52[2] = v91;
      v52[3] = v82;
      v52 += 4;
      if (!--v81)
      {
        goto LABEL_31;
      }
    }

    v87 = 0.0;
    v86 = 0.0;
    v85 = 0.0;
    if (!v53)
    {
      goto LABEL_25;
    }

LABEL_24:
    v88 = v53->u16[0];
    v53 = (v53 + 2);
    v82 = v88 * 0.000015259;
    goto LABEL_25;
  }

LABEL_32:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf444_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v19 = *a6;
  v18 = a6[1];
  v40 = v17;
  v41 = v19;
  v39 = v18;
  v44 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_19:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v39.i8[-v22];
    bzero(&v39 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v39), v41), vsubq_s64(v41, v44), v39);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  v30 = v29.i64[1] + v27.i64[1];
  if (((*v12 * (v29.i64[1] + v27.i64[1]) + 2 * v29.i64[0]) > *a5 || *(a3 + 8) && (v12[1] * v30 + 4 * v29.i64[0]) > a5[1] || *(a3 + 16) && (2 * v29.i64[0] + v12[2] * v30) > a5[2] || (v31 = vaddq_s64(v44, v28), (*a8 * (v31.i64[1] + v27.i64[1]) + 16 * v31.i64[0]) > *a9)) && (v39 = v27, v40.i64[0] = v12, fig_log_get_emitter(), v32 = FigSignalErrorAtGM(), v24 = a9, v12 = v40.i64[0], v27 = v39, v32))
  {
    v21 = v32;
  }

  else
  {
    *v20 = v15;
    v33 = v42;
    *(v20 + 4) = v43;
    *(v20 + 20) = v27;
    *(v20 + 36) = v33;
    *(v20 + 5) = v41;
    *(v20 + 6) = v27;
    *(v20 + 7) = v44;
    *(v20 + 7) = a3;
    *(v20 + 8) = v12;
    *(v20 + 9) = a5;
    *(v20 + 16) = a7;
    *(v20 + 17) = a8;
    *(v20 + 18) = v24;
    *(v20 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v20, vt_Copy_xf444_rgb_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v35 = (v20 + 160);
    v36 = v15;
    while (1)
    {
      v37 = *v35++;
      v21 = v37;
      if (v37)
      {
        break;
      }

      if (!--v36)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_xf444_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v11 + 128);
    v19 = 1.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    v20 = v18;
    LOWORD(a5) = *(v11 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v11;
    v23 = v19 * *(v11 + 8);
    v24 = v19 * *(v11 + 16);
    v25 = v19 * *(v11 + 20);
    v26 = v19 * *(v11 + 28);
    v27 = v7 + *(result + 15);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = *(v11 + 124);
    v30 = *(result + 36);
    if (v29 >= 0x11)
    {
      v31 = 0;
    }

    else
    {
      v31 = 16 - v29;
    }

    v32 = **(result + 16) + v17 * v27 + 16 * *(result + 14);
    v33 = v12[2];
    if (v33)
    {
      v34 = v33 + v28 * v16 + 2 * v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = *v12;
    v36 = *(*(result + 7) + 8);
    v37 = v36 == 0;
    v38 = v36 + v28 * v15 + 2 * v30;
    if (v37)
    {
      v38 = 0;
    }

    v39 = v35 + v28 * v14 + 2 * v30;
    v40 = v31;
    while (v10 < 1)
    {
LABEL_22:
      v39 += v14;
      v38 += v15;
      v34 += v16;
      v32 += v17;
      if (++v9 == v8)
      {
        goto LABEL_23;
      }
    }

    v41 = v10;
    v42 = v39;
    v43 = v32;
    v44 = v34;
    v45 = v38;
    while (1)
    {
      v46 = 0.0;
      if (!v45)
      {
        break;
      }

      v47 = (*v45 >> v40) - v21;
      v48 = (v45[1] >> v40) - v21;
      v45 += 2;
      v49 = v23 * v48;
      v50 = (v25 * v48) + (v47 * v24);
      v51 = v26 * v47;
      if (v44)
      {
        goto LABEL_15;
      }

LABEL_16:
      v53 = *v42++;
      v54 = v22 * ((v53 >> v40) - v20);
      v55 = v51 + v54;
      *v43 = v49 + v54;
      v43[1] = v50 + v54;
      if (!v44)
      {
        v46 = 1.0;
      }

      v43[2] = v55;
      v43[3] = v46;
      v43 += 4;
      if (!--v41)
      {
        goto LABEL_22;
      }
    }

    v51 = 0.0;
    v50 = 0.0;
    v49 = 0.0;
    if (!v44)
    {
      goto LABEL_16;
    }

LABEL_15:
    v52 = *v44++;
    v46 = v52 * 0.000015259;
    goto LABEL_16;
  }

LABEL_23:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t MuxedAlphaEncoder_CreateInstance()
{
  VTVideoEncoderGetClassID();
  v0 = CMDerivedObjectCreate();
  if (v0)
  {
    return v0;
  }

  MuxedAlphaEncoder_CreateInstance_cold_1(&v3);
  return v3;
}

uint64_t MuxedAlphaEncoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    v2 = *(DerivedStorage + 64);
    if (v2)
    {
      VTCompressionSessionInvalidate(v2);
    }

    v3 = *(v1 + 112);
    if (v3)
    {
      VTCompressionSessionInvalidate(v3);
    }

    if (*(v1 + 160))
    {
      v4 = CMBaseObjectGetDerivedStorage();
      v5 = 2;
      do
      {
        v6 = *(v4 + 160);
        v7 = dispatch_time(0, 1000000000 * v5);
        v5 *= 2;
      }

      while (dispatch_group_wait(v6, v7));
    }
  }

  return 0;
}

void MuxedAlphaEncoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[6];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[6] = 0;
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[7] = 0;
  }

  v5 = DerivedStorage[8];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[8] = 0;
  }

  v6 = DerivedStorage[13];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[13] = 0;
  }

  v7 = DerivedStorage[14];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[14] = 0;
  }

  v8 = DerivedStorage[9];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[9] = 0;
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[15] = 0;
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }

  v11 = DerivedStorage[11];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[11] = 0;
  }

  v12 = DerivedStorage[12];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[12] = 0;
  }

  v13 = DerivedStorage[16];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[16] = 0;
  }

  v14 = DerivedStorage[17];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[17] = 0;
  }

  v15 = DerivedStorage[18];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[18] = 0;
  }

  v16 = DerivedStorage[20];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[20] = 0;
  }

  v17 = DerivedStorage[19];
  if (v17)
  {
    dispatch_release(v17);
    DerivedStorage[19] = 0;
  }
}

__CFString *MuxedAlphaEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<MuxedAlphaVideoEncoder %p>", a1);
  return Mutable;
}

uint64_t alphaencoder_setSessionPropertiesInListFromDictionaryIfPresent(const void *a1, CFDictionaryRef theDict)
{
  Count = CFDictionaryGetCount(theDict);
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *kMuxedAlphaEncoderSublayerCompressionPropertyKeyAllowList[v5];
    Value = CFDictionaryGetValue(theDict, v7);
    if (Value)
    {
      --Count;
      v9 = VTSessionSetProperty(a1, v7, Value);
      if (v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v9;
      }
    }

    ++v5;
  }

  while (v5 != 5);
  if (Count > 0)
  {
    v10 = FigCFCopyCompactDescription();
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return v6;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[10];
  if (!v1 || CFArrayGetCount(v1) != 2)
  {
    alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_3(&v10);
    return v10;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_2(&v10);
    return v10;
  }

  v4 = Mutable;
  FigCFArrayGetInt32AtIndex();
  FigCFArrayGetInt32AtIndex();
  FigCFArrayAppendInt32();
  FigCFArrayAppendInt32();
  v5 = DerivedStorage[16];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[16] = 0;
  }

  Copy = CFArrayCreateCopy(v2, v4);
  DerivedStorage[16] = Copy;
  if (Copy)
  {
    v7 = VTSessionSetProperty(DerivedStorage[8], @"MVHEVCVideoLayerIDs", DerivedStorage[10]);
    if (!v7)
    {
      v7 = VTSessionSetProperty(DerivedStorage[8], @"RequiredMVHEVCSequenceParameterSetIDs", DerivedStorage[10]);
      if (!v7)
      {
        v7 = VTSessionSetProperty(DerivedStorage[8], @"RequiredMVHEVCPictureParameterSetIDs", DerivedStorage[10]);
        if (!v7)
        {
          v7 = VTSessionSetProperty(DerivedStorage[8], @"RequiredMVHEVCVideoParameterSetAlphaVideoLayerIDs", DerivedStorage[16]);
          if (!v7)
          {
            v7 = VTSessionSetProperty(DerivedStorage[14], @"MVHEVCVideoLayerIDs", DerivedStorage[10]);
            if (!v7)
            {
              v7 = VTSessionSetProperty(DerivedStorage[14], @"RequiredMVHEVCSequenceParameterSetIDs", DerivedStorage[16]);
              if (!v7)
              {
                v7 = VTSessionSetProperty(DerivedStorage[14], @"RequiredMVHEVCPictureParameterSetIDs", DerivedStorage[16]);
              }
            }
          }
        }
      }
    }

    v8 = v7;
  }

  else
  {
    alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_1(&v10);
    v8 = v10;
  }

  CFRelease(v4);
  return v8;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 88);
  if (v1 && CFArrayGetCount(v1) == 2)
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = 0;
      v6 = 2;
      v7 = 1;
      do
      {
        while (FigCFArrayContainsInt())
        {
          ++v6;
          if (!v7)
          {
            goto LABEL_9;
          }
        }

        FigCFArrayAppendInt32();
        ++v6;
        v7 = v5++ == 0;
      }

      while (v5 != 2);
LABEL_9:
      v8 = *(DerivedStorage + 136);
      if (v8)
      {
        CFRelease(v8);
        *(DerivedStorage + 136) = 0;
      }

      Copy = CFArrayCreateCopy(v2, v4);
      *(DerivedStorage + 136) = Copy;
      if (Copy)
      {
        v10 = VTSessionSetProperty(*(DerivedStorage + 64), @"MVHEVCViewIDs", *(DerivedStorage + 88));
        if (v10 || (v10 = VTSessionSetProperty(*(DerivedStorage + 112), @"MVHEVCViewIDs", *(DerivedStorage + 136)), v10))
        {
          v11 = v10;
        }

        else
        {
          if (*(DerivedStorage + 96))
          {
            alphaencoder_setLeftAndRightViewIDsToMVHEVCColorAlphaEncoder();
          }

          v11 = 0;
        }
      }

      else
      {
        alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_1(&v13);
        v11 = v13;
      }

      CFRelease(v4);
    }

    else
    {
      alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_3(&v15);
    return v15;
  }

  return v11;
}

uint64_t alphaencoder_createPixelBufferAttributesDictionary(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __CFDictionary **a5)
{
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    alphaencoder_createPixelBufferAttributesDictionary_cold_2(&v18);
    return v18;
  }

  v10 = Mutable;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    if (a4 < 1)
    {
      v14 = 4294954392;
LABEL_9:
      CFDictionarySetValue(v10, *MEMORY[0x1E6966130], v11);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      v15 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v10, *MEMORY[0x1E69660D8], v15);
      *a5 = v10;
      goto LABEL_10;
    }

    v12 = a4;
    while (1)
    {
      a3 += 4;
      appended = FigCFArrayAppendInt32();
      if (appended)
      {
        break;
      }

      if (!--v12)
      {
        v14 = 0;
        goto LABEL_9;
      }
    }

    v14 = appended;
  }

  else
  {
    alphaencoder_createPixelBufferAttributesDictionary_cold_1(&v17);
    v14 = v17;
  }

  CFRelease(v10);
  v15 = 0;
  if (v11)
  {
LABEL_10:
    CFRelease(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t MuxedAlphaEncoder_EncodeFrame(uint64_t a1, uint64_t a2, __CVBuffer *a3, CMTime *a4, CMTime *a5, const __CFDictionary *a6, _DWORD *a7)
{
  v13 = a1;
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v73 = 0;
  v74 = &v73;
  v75 = 0x3800000000;
  v76 = 0u;
  v77 = 0u;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3800000000;
  v71 = 0u;
  v72 = 0u;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2000000000;
  v67 = 0;
  v15 = MEMORY[0x1E695E480];
  if (!a6)
  {
    goto LABEL_12;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v74[4] = MutableCopy;
  if (!MutableCopy)
  {
    v58 = 1857;
LABEL_41:
    MuxedAlphaEncoder_EncodeFrame_cold_1(v58, &presentationTimeStamp);
    v37 = 0;
    value_low = LODWORD(presentationTimeStamp.value);
    goto LABEL_42;
  }

  v17 = FigCFDictionaryCreateMutableCopy();
  v69[4] = v17;
  if (!v17)
  {
    v58 = 1860;
    goto LABEL_41;
  }

  v59 = a7;
  v18 = a4;
  v19 = a5;
  v20 = a3;
  v21 = v13;
  v22 = a2;
  Value = CFDictionaryGetValue(a6, @"BaseLayerOptions");
  if (Value)
  {
    v24 = Value;
    v25 = CFGetTypeID(Value);
    v26 = v25 == CFDictionaryGetTypeID();
    v15 = MEMORY[0x1E695E480];
    if (v26)
    {
      alphaencoder_setKeysInListFromDictionaryIfPresent(v24, kMuxedAlphaEncoderSublayerFrameOptionsKeyAllowList, 6, v74[4]);
      CFDictionaryRemoveValue(v74[4], @"BaseLayerOptions");
      CFDictionaryRemoveValue(v69[4], @"BaseLayerOptions");
    }
  }

  v27 = CFDictionaryGetValue(a6, @"AlphaLayerOptions");
  a2 = v22;
  v13 = v21;
  a3 = v20;
  a5 = v19;
  a4 = v18;
  a7 = v59;
  if (v27)
  {
    v28 = v27;
    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = v13;
    v33 = a2;
    v34 = v15;
    v35 = CFGetTypeID(v27);
    v26 = v35 == CFDictionaryGetTypeID();
    v15 = v34;
    a2 = v33;
    v13 = v32;
    a5 = v31;
    a4 = v30;
    a3 = v29;
    if (v26)
    {
      alphaencoder_setKeysInListFromDictionaryIfPresent(v28, kMuxedAlphaEncoderSublayerFrameOptionsKeyAllowList, 6, v69[4]);
      CFDictionaryRemoveValue(v74[4], @"AlphaLayerOptions");
      CFDictionaryRemoveValue(v69[4], @"AlphaLayerOptions");
    }
  }

LABEL_12:
  if (*a7)
  {
    *a7 = *(v65 + 6);
  }

  dispatch_group_enter(*(DerivedStorage + 160));
  ++*(DerivedStorage + 168);
  v36 = alphaencoder_validateThatPixelBufferUsesConsistentPremultiplicationMode(v13, a3);
  if (v36)
  {
    value_low = v36;
    v37 = 0;
    goto LABEL_42;
  }

  v37 = dispatch_group_create();
  v38 = *v15;
  PixelBufferPool = VTCompressionSessionGetPixelBufferPool(*(DerivedStorage + 64));
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v38, PixelBufferPool, v74 + 3);
  if (PixelBuffer || (v41 = VTCompressionSessionGetPixelBufferPool(*(DerivedStorage + 112)), PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v38, v41, v69 + 3), PixelBuffer) || (PixelBuffer = alphaencoder_demuxBaseAndAlpha(a3, v74[3], v69[3]), PixelBuffer) || ((dispatch_retain(v37), dispatch_group_enter(v37), v42 = v74, (v43 = v74[3]) == 0) ? (v44 = 0) : (CFRetain(v43), v42 = v74, v44 = v74[3]), v45 = *(DerivedStorage + 64), v46 = v42[4], outputHandler[0] = MEMORY[0x1E69E9820], outputHandler[1] = 0x40000000, outputHandler[2] = __MuxedAlphaEncoder_EncodeFrame_block_invoke, outputHandler[3] = &unk_1E72C8F20, outputHandler[4] = &v73, outputHandler[5] = v37, presentationTimeStamp = *a4, duration = *a5, PixelBuffer = VTCompressionSessionEncodeFrameWithOutputHandler(v45, v44, &presentationTimeStamp, &duration, v46, 0, outputHandler), PixelBuffer))
  {
    value_low = PixelBuffer;
LABEL_42:
    alphaencoder_emitEncodedFrame(v13, a2, value_low, 0, 0);
    goto LABEL_26;
  }

  dispatch_retain(v37);
  v47 = v69;
  v48 = v69[3];
  if (v48)
  {
    CFRetain(v48);
    v47 = v69;
    v49 = v69[3];
  }

  else
  {
    v49 = 0;
  }

  v50 = *(DerivedStorage + 112);
  v51 = v47[4];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 0x40000000;
  v60[2] = __MuxedAlphaEncoder_EncodeFrame_block_invoke_2;
  v60[3] = &unk_1E72C8F70;
  v60[4] = &v68;
  v60[5] = &v73;
  v60[8] = DerivedStorage;
  v60[9] = v13;
  v60[10] = a2;
  v60[6] = &v64;
  v60[7] = v37;
  presentationTimeStamp = *a4;
  duration = *a5;
  value_low = VTCompressionSessionEncodeFrameWithOutputHandler(v50, v49, &presentationTimeStamp, &duration, v51, 0, v60);
LABEL_26:
  v53 = v74[4];
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = v69[4];
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = v74[3];
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = v69[3];
  if (v56)
  {
    CFRelease(v56);
  }

  if (v37)
  {
    dispatch_release(v37);
  }

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v73, 8);
  return value_low;
}

uint64_t MuxedAlphaEncoder_CompleteFrames(uint64_t a1, CMTime *a2)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage[8];
  v13 = *a2;
  v6 = VTCompressionSessionCompleteFrames(v5, &v13);
  v7 = DerivedStorage[14];
  v13 = *a2;
  VTCompressionSessionCompleteFrames(v7, &v13);
  if (DerivedStorage[20])
  {
    VTVideoEncoderGetCMBaseObject(a1);
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = 2;
    do
    {
      v10 = *(v8 + 160);
      v11 = dispatch_time(0, 1000000000 * v9);
      v9 *= 2;
    }

    while (dispatch_group_wait(v10, v11));
  }

  return v6;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame(uint64_t a1, uint64_t a2, OpaqueCMTaggedBufferGroup *a3, CMTime *a4, CMTime *a5, const __CFDictionary *a6, _DWORD *a7)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v85 = 0;
  v86 = &v85;
  v87 = 0x3800000000;
  v88 = 0u;
  v89 = 0u;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3800000000;
  v83 = 0u;
  v84 = 0u;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2000000000;
  v79 = 0;
  pixelBufferOut = 0;
  newCollectionOut = 0;
  v69 = a1;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    MuxedAlphaEncoder_EncodeMultiImageFrame_cold_1(&tags);
LABEL_82:
    v29 = 0;
    Mutable = 0;
    v26 = 0;
    value_low = LODWORD(tags.value);
    goto LABEL_45;
  }

  v13 = MEMORY[0x1E695E480];
  if (!a6)
  {
    goto LABEL_11;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v86[4] = MutableCopy;
  if (!MutableCopy)
  {
    MuxedAlphaEncoder_EncodeMultiImageFrame_cold_3(&tags);
    goto LABEL_82;
  }

  v15 = FigCFDictionaryCreateMutableCopy();
  v81[4] = v15;
  if (!v15)
  {
    MuxedAlphaEncoder_EncodeMultiImageFrame_cold_2(&tags);
    goto LABEL_82;
  }

  Value = CFDictionaryGetValue(a6, @"BaseLayerOptions");
  if (Value)
  {
    v17 = Value;
    v18 = CFGetTypeID(Value);
    if (v18 == CFDictionaryGetTypeID())
    {
      alphaencoder_setKeysInListFromDictionaryIfPresent(v17, kMuxedAlphaEncoderSublayerFrameOptionsKeyAllowList, 6, v86[4]);
      CFDictionaryRemoveValue(v86[4], @"BaseLayerOptions");
      CFDictionaryRemoveValue(v81[4], @"BaseLayerOptions");
    }
  }

  v19 = CFDictionaryGetValue(a6, @"AlphaLayerOptions");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 == CFDictionaryGetTypeID())
    {
      alphaencoder_setKeysInListFromDictionaryIfPresent(v20, kMuxedAlphaEncoderSublayerFrameOptionsKeyAllowList, 6, v81[4]);
      CFDictionaryRemoveValue(v86[4], @"AlphaLayerOptions");
      CFDictionaryRemoveValue(v81[4], @"AlphaLayerOptions");
    }
  }

LABEL_11:
  v68 = a2;
  if (*a7)
  {
    *a7 = *(v77 + 6);
  }

  dispatch_group_enter(*(DerivedStorage + 160));
  ++*(DerivedStorage + 168);
  Count = CMTaggedBufferGroupGetCount(a3);
  if (Count >= 1)
  {
    v23 = 0;
    while (1)
    {
      CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(a3, v23);
      v25 = alphaencoder_validateThatPixelBufferUsesConsistentPremultiplicationMode(a1, CVPixelBufferAtIndex);
      if (v25)
      {
        break;
      }

      if (Count == ++v23)
      {
        goto LABEL_17;
      }
    }

    value_low = v25;
    v29 = 0;
    Mutable = 0;
    v26 = 0;
    goto LABEL_73;
  }

LABEL_17:
  v26 = dispatch_group_create();
  v27 = *v13;
  Mutable = CFArrayCreateMutable(*v13, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    MuxedAlphaEncoder_EncodeMultiImageFrame_cold_6(&tags);
    v29 = 0;
LABEL_78:
    value_low = LODWORD(tags.value);
    goto LABEL_73;
  }

  v29 = CFArrayCreateMutable(v27, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    v30 = 0;
    do
    {
      FigCFArrayGetValueAtIndex();
      tags.value = 0;
      *&tags.timescale = 0;
      UInt32 = FigCFNumberGetUInt32();
      v32 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, UInt32);
      tags.value = *&v32.category;
      *&tags.timescale = v32.value;
      v33 = CMTagCollectionCreate(v27, &tags, 1, &newCollectionOut);
      if (v33)
      {
        goto LABEL_71;
      }

      PixelBufferPool = VTCompressionSessionGetPixelBufferPool(*(DerivedStorage + 64));
      v33 = CVPixelBufferPoolCreatePixelBuffer(v27, PixelBufferPool, &pixelBufferOut);
      if (v33)
      {
        goto LABEL_71;
      }

      CFArrayAppendValue(Mutable, pixelBufferOut);
      CFArrayAppendValue(v29, newCollectionOut);
      if (newCollectionOut)
      {
        CFRelease(newCollectionOut);
        newCollectionOut = 0;
      }

      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }
    }

    while (Count != ++v30);
  }

  MEMORY[0x193AE1920](v27, v29, Mutable, v86 + 3);
  if (!v86[3])
  {
    MuxedAlphaEncoder_EncodeMultiImageFrame_cold_5(&tags);
    goto LABEL_78;
  }

  CFArrayRemoveAllValues(v29);
  CFArrayRemoveAllValues(Mutable);
  if (Count >= 1)
  {
    v35 = 0;
    while (1)
    {
      FigCFArrayGetValueAtIndex();
      tags.value = 0;
      *&tags.timescale = 0;
      v36 = FigCFNumberGetUInt32();
      v37 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v36);
      tags.value = *&v37.category;
      *&tags.timescale = v37.value;
      v33 = CMTagCollectionCreate(v27, &tags, 1, &newCollectionOut);
      if (v33)
      {
        break;
      }

      v38 = VTCompressionSessionGetPixelBufferPool(*(DerivedStorage + 112));
      v33 = CVPixelBufferPoolCreatePixelBuffer(v27, v38, &pixelBufferOut);
      if (v33)
      {
        break;
      }

      CFArrayAppendValue(Mutable, pixelBufferOut);
      CFArrayAppendValue(v29, newCollectionOut);
      if (newCollectionOut)
      {
        CFRelease(newCollectionOut);
        newCollectionOut = 0;
      }

      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (Count == ++v35)
      {
        goto LABEL_37;
      }
    }

LABEL_71:
    value_low = v33;
LABEL_73:
    a2 = v68;
LABEL_45:
    alphaencoder_emitEncodedFrame(v69, a2, value_low, 0, 0);
    goto LABEL_52;
  }

LABEL_37:
  MEMORY[0x193AE1920](v27, v29, Mutable, v81 + 3);
  v39 = v81[3];
  if (!v39)
  {
    MuxedAlphaEncoder_EncodeMultiImageFrame_cold_4(&tags);
    goto LABEL_78;
  }

  object = v26;
  v40 = v86[3];
  v41 = CMTaggedBufferGroupGetCount(a3);
  if (v41 >= 1)
  {
    v42 = v41;
    v43 = 0;
    while (1)
    {
      v44 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(a3, v43);
      v45 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v40, v43);
      v46 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v39, v43);
      v47 = alphaencoder_demuxBaseAndAlpha(v44, v45, v46);
      if (v47)
      {
        break;
      }

      if (v42 == ++v43)
      {
        goto LABEL_42;
      }
    }

    value_low = v47;
    v26 = object;
    a2 = v68;
    goto LABEL_45;
  }

LABEL_42:
  v26 = object;
  dispatch_retain(object);
  dispatch_group_enter(object);
  v48 = v86;
  v49 = v86[3];
  if (v49)
  {
    CFRetain(v49);
    v48 = v86;
    v50 = v86[3];
  }

  else
  {
    v50 = 0;
  }

  a2 = v68;
  v52 = *(DerivedStorage + 64);
  v53 = v48[4];
  outputHandler[0] = MEMORY[0x1E69E9820];
  outputHandler[1] = 0x40000000;
  outputHandler[2] = __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke;
  outputHandler[3] = &unk_1E72C8FE0;
  outputHandler[4] = &v85;
  outputHandler[5] = object;
  tags = *a4;
  duration = *a5;
  v54 = VTCompressionSessionEncodeMultiImageFrameWithOutputHandler(v52, v50, &tags, &duration, v53, 0, outputHandler);
  if (v54)
  {
    value_low = v54;
    goto LABEL_45;
  }

  dispatch_retain(object);
  v55 = v81;
  v56 = v81[3];
  if (v56)
  {
    CFRetain(v56);
    v55 = v81;
    v57 = v81[3];
  }

  else
  {
    v57 = 0;
  }

  v58 = *(DerivedStorage + 112);
  v59 = v55[4];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 0x40000000;
  v70[2] = __MuxedAlphaEncoder_EncodeMultiImageFrame_block_invoke_2;
  v70[3] = &unk_1E72C9030;
  v70[4] = &v80;
  v70[5] = &v85;
  v70[8] = DerivedStorage;
  v70[9] = v69;
  v70[10] = v68;
  v70[6] = &v76;
  v70[7] = object;
  tags = *a4;
  duration = *a5;
  value_low = VTCompressionSessionEncodeMultiImageFrameWithOutputHandler(v58, v57, &tags, &duration, v59, 0, v70);
LABEL_52:
  v60 = v86[4];
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = v81[4];
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = v86[3];
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = v81[3];
  if (v63)
  {
    CFRelease(v63);
  }

  if (newCollectionOut)
  {
    CFRelease(newCollectionOut);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v85, 8);
  return value_low;
}

void alphaencoder_setKeysInListFromDictionaryIfPresent(const __CFDictionary *a1, const void ***a2, uint64_t a3, __CFDictionary *a4)
{
  Count = CFDictionaryGetCount(a1);
  if (a3 >= 1)
  {
    do
    {
      v9 = **a2;
      Value = CFDictionaryGetValue(a1, v9);
      if (Value)
      {
        --Count;
        CFDictionarySetValue(a4, v9, Value);
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  if (Count > 0)
  {
    v11 = FigCFCopyCompactDescription();
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

uint64_t alphaencoder_validateThatPixelBufferUsesConsistentPremultiplicationMode(uint64_t a1, __CVBuffer *a2)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CC0], 0);
  if (v4)
  {
    v5 = v4;
    if (CFEqual(*MEMORY[0x1E6965CC8], v4))
    {
      v6 = 1;
    }

    else
    {
      if (!CFEqual(*MEMORY[0x1E6965CD0], v5))
      {
LABEL_10:
        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
LABEL_13:
        CFRelease(v5);
        return v7;
      }

      v6 = 0;
    }

    if (DerivedStorage[41] || DerivedStorage[40])
    {
      if (v6 != DerivedStorage[42])
      {
        goto LABEL_10;
      }
    }

    else
    {
      DerivedStorage[42] = v6;
    }

    v7 = 0;
    DerivedStorage[41] = 1;
    goto LABEL_13;
  }

  v7 = 0;
  DerivedStorage[41] = 1;
  return v7;
}

uint64_t alphaencoder_demuxBaseAndAlpha(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CVPixelBufferGetPixelFormatType(a2);
  CVPixelBufferGetPixelFormatType(a3);
  v7 = 4294954394;
  if (PixelFormatType <= 2016436535)
  {
    if (PixelFormatType != 1982882104 && PixelFormatType != 1983013176)
    {
      v8 = 1983144248;
      goto LABEL_8;
    }

LABEL_9:
    CVPixelBufferGetWidth(a1);
    CVPixelBufferGetHeight(a1);
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (DescriptionWithPixelFormatType)
    {
      Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
      if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFArrayGetTypeID()))
      {
        if (CFArrayGetCount(v11) > 1)
        {
          CFArrayGetValueAtIndex(v11, 0);
          FigCFDictionaryGetInt32IfPresent();
          CFArrayGetValueAtIndex(v11, 1);
          FigCFDictionaryGetInt32IfPresent();
          goto LABEL_19;
        }

        v14 = 1386;
      }

      else
      {
        v14 = 1385;
      }
    }

    else
    {
      v14 = 1382;
    }

    if (!alphaencoder_demuxBaseAndAlpha_cold_3(v14, &v15))
    {
      return v15;
    }

LABEL_19:
    alphaencoder_demuxBaseAndAlpha_cold_4(&v15);
    return v15;
  }

  if (PixelFormatType == 2016436536 || PixelFormatType == 2016698680)
  {
    goto LABEL_9;
  }

  v8 = 2016567608;
LABEL_8:
  if (PixelFormatType == v8)
  {
    goto LABEL_9;
  }

  return v7;
}

void alphaencoder_emitEncodedFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, opaqueCMSampleBuffer *a5)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTEncoderSessionEmitEncodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 168);
  v10 = *(DerivedStorage + 160);

  dispatch_group_leave(v10);
}

uint64_t alphaencoder_transferPlane(__CVBuffer *a1, size_t a2, __CVBuffer *a3, size_t a4, uint64_t a5)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  if (CVPixelBufferGetWidthOfPlane(a3, a4) != WidthOfPlane)
  {
    v19 = 1352;
LABEL_12:
    alphaencoder_transferPlane_cold_1(v19, &v20);
    return v20;
  }

  if (CVPixelBufferGetHeightOfPlane(a3, a4) != HeightOfPlane)
  {
    v19 = 1353;
    goto LABEL_12;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  v14 = CVPixelBufferGetBaseAddressOfPlane(a3, a4);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a3, a4);
  v16 = WidthOfPlane * a5;
  if (v16 > BytesPerRowOfPlane)
  {
    v19 = 1360;
    goto LABEL_12;
  }

  v17 = v15;
  if (v16 > v15)
  {
    v19 = 1361;
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

const __CFArray *alphaencoder_getSampleBufferSampleAttachment(opaqueCMSampleBuffer *a1, const void *a2)
{
  result = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);

    return CFDictionaryGetValue(ValueAtIndex, a2);
  }

  return result;
}

void OUTLINED_FUNCTION_4_15(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_7_8(const __CFAllocator *a1, int32_t a2, int32_t a3, uint64_t a4, const __CFDictionary *a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, void *a9, VTCompressionSessionRef *a10)
{

  return VTCompressionSessionCreate(a1, a2, a3, 0x68766331u, a5, a6, v10, 0, a9, a10);
}

CFDictionaryRef OUTLINED_FUNCTION_8_8(int a1, int a2, int a3, int a4, const CFDictionaryKeyCallBacks *a5, const CFDictionaryValueCallBacks *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *values, uint64_t a20, uint64_t a21, uint64_t a22, void *keys)
{

  return CFDictionaryCreate(v23, &keys, &values, 4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return CFEqual(v0, v1);
}

uint64_t VTPixelBufferAttributesMediatorGetTypeID()
{
  if (VTPixelBufferAttributesMediatorGetTypeID_sRegisterVTPixelBufferAtributesMediatorTypeOnce != -1)
  {
    VTPixelBufferAttributesMediatorGetTypeID_cold_1();
  }

  return sVTPixelBufferAtributesMediatorID;
}

uint64_t RegisterVTPixelBufferAtributesMediatorIDType()
{
  result = _CFRuntimeRegisterClass();
  sVTPixelBufferAtributesMediatorID = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCreate(const __CFAllocator *a1, uint64_t *a2)
{
  if (VTPixelBufferAttributesMediatorGetTypeID_sRegisterVTPixelBufferAtributesMediatorTypeOnce != -1)
  {
    VTPixelBufferAttributesMediatorGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    v6 = FigSimpleMutexCreate();
    *(v5 + 16) = v6;
    if (v6)
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(v5 + 24) = Mutable;
      if (Mutable)
      {
        v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        *(v5 + 32) = v8;
        if (v8)
        {
          v9 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(v5 + 40) = v9;
          if (v9)
          {
            *(v5 + 49) = 1;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterRegisterForBarrierSupport();
            result = 0;
            *a2 = v5;
            return result;
          }

          v11 = 233;
        }

        else
        {
          v11 = 230;
        }
      }

      else
      {
        v11 = 227;
      }
    }

    else
    {
      v11 = 224;
    }

    VTPixelBufferAttributesMediatorCreate_cold_2(v11, v5, &v12);
    return v12;
  }

  else
  {
    VTPixelBufferAttributesMediatorCreate_cold_3(&v13);
    return v13;
  }
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, __CFDictionary **a4)
{
  theDict[3] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (CFEqual(cf1, @"LayersAreSuppressed"))
  {
    FigSimpleMutexLock();
    v7 = MEMORY[0x1E695E4D0];
    v8 = *(a1 + 48);
LABEL_5:
    if (!v8)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v9 = *v7;
    if (*v7)
    {
      v9 = CFRetain(v9);
    }

    *a4 = v9;
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(cf1, @"AlwaysVendNonNULLAttributes"))
  {
    FigSimpleMutexLock();
    v7 = MEMORY[0x1E695E4D0];
    v8 = *(a1 + 49);
    goto LABEL_5;
  }

  if (!CFEqual(cf1, @"MediatedPixelBufferAttributes"))
  {
    return 4294954396;
  }

  resolvedDictionaryOut = 0;
  v12 = CFGetAllocator(a1);
  FigSimpleMutexLock();
  if (vtPixelBufferAttributesMediatorCopyMediatedPixelBufferAttributes_onceToken != -1)
  {
    VTPixelBufferAttributesMediatorCopyProperty_cold_1();
  }

  if (!vtPixelBufferAttributesMediatorCALayerDesiredAttributes)
  {
    VTPixelBufferAttributesMediatorCopyProperty_cold_9(theDict);
LABEL_95:
    v18 = 0;
    v10 = LODWORD(theDict[0]);
    goto LABEL_96;
  }

  v13 = *(a1 + 24);
  v14 = v13 && CFArrayGetCount(v13) >= 1 && *(a1 + 48) == 0;
  v15 = *(a1 + 32);
  if (!v15)
  {
    Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v18 = Mutable;
      goto LABEL_37;
    }

    goto LABEL_94;
  }

  Count = CFArrayGetCount(v15);
  v17 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  if (!v17)
  {
LABEL_94:
    VTPixelBufferAttributesMediatorCopyProperty_cold_8(theDict);
    goto LABEL_95;
  }

  v18 = v17;
  if (Count < 1)
  {
LABEL_37:
    v26 = 0;
LABEL_38:
    if (*(a1 + 49) && vtPixelBufferAttributesMediatorCALayerDesiredAttributes)
    {
      v22 = CFRetain(vtPixelBufferAttributesMediatorCALayerDesiredAttributes);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_84;
  }

  if (v14)
  {
    CFArrayAppendValue(v17, vtPixelBufferAttributesMediatorCALayerDesiredAttributes);
  }

  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
    v21 = CFDictionaryGetValue(*(a1 + 40), ValueAtIndex);
    CFArrayAppendValue(v18, v21);
  }

  CVPixelBufferCreateResolvedAttributesDictionary(v12, v18, &resolvedDictionaryOut);
  v22 = resolvedDictionaryOut;
  if (resolvedDictionaryOut)
  {
    if (!v14)
    {
      v26 = 0;
      goto LABEL_83;
    }

    v23 = *MEMORY[0x1E69660B8];
    theDict[0] = *MEMORY[0x1E6966208];
    theDict[1] = v23;
    theDict[2] = *MEMORY[0x1E6966060];
    MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, resolvedDictionaryOut);
    if (MutableCopy)
    {
      v22 = MutableCopy;
      for (j = 0; j != 3; ++j)
      {
        CFDictionaryRemoveValue(v22, theDict[j]);
      }

      if (resolvedDictionaryOut)
      {
        CFRelease(resolvedDictionaryOut);
      }

      v26 = 0;
      resolvedDictionaryOut = v22;
LABEL_72:
      if (v22)
      {
        goto LABEL_83;
      }

      goto LABEL_38;
    }

    VTPixelBufferAttributesMediatorCopyProperty_cold_2(theDict, &value);
    v10 = value;
LABEL_96:
    FigSimpleMutexUnlock();
    goto LABEL_87;
  }

  v52 = v18;
  CFArrayRemoveAllValues(v18);
  allocator = v12;
  theArray = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    VTPixelBufferAttributesMediatorCopyProperty_cold_7(theDict);
    v10 = LODWORD(theDict[0]);
    goto LABEL_96;
  }

  v28 = 0;
  v29 = *MEMORY[0x1E6966130];
  v30 = *MEMORY[0x1E695E480];
  v31 = MEMORY[0x1E695E9C0];
  v56 = v14;
  v53 = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E6966130];
  do
  {
    v32 = CFArrayGetValueAtIndex(*(a1 + 32), v28);
    v33 = CFDictionaryGetValue(*(a1 + 40), v32);
    value = 0;
    if (!CFDictionaryGetValueIfPresent(v33, v29, &value))
    {
      goto LABEL_65;
    }

    v34 = value;
    if (!v14)
    {
      if (value)
      {
        v34 = CFRetain(value);
        if (v34)
        {
LABEL_60:
          v41 = CFGetTypeID(v34);
          if (v41 == CFArrayGetTypeID())
          {
            v60.length = CFArrayGetCount(v34);
            v60.location = 0;
            CFArrayAppendArray(theArray, v34, v60);
          }

          else
          {
            v42 = CFGetTypeID(v34);
            if (v42 == CFNumberGetTypeID())
            {
              CFArrayAppendValue(theArray, v34);
            }
          }
        }
      }

      CFRelease(v34);
      goto LABEL_65;
    }

    v35 = vtPixelBufferAttributesMediatorCALayerDesiredAttributes;
    theDict[0] = 0;
    v36 = CFArrayCreateMutable(v30, 2, v31);
    if (!v36)
    {
      v14 = v56;
      goto LABEL_65;
    }

    v37 = v36;
    v38 = CFDictionaryCreateMutable(v30, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v38)
    {
      CFRelease(v37);
      v14 = v56;
      v29 = key;
      goto LABEL_65;
    }

    v39 = v38;
    CFDictionaryAddValue(v38, key, v34);
    CFArrayAppendValue(v37, v35);
    CFArrayAppendValue(v37, v39);
    CVPixelBufferCreateResolvedAttributesDictionary(v30, v37, theDict);
    if (theDict[0])
    {
      v40 = CFDictionaryGetValue(theDict[0], key);
      v34 = v40;
      if (v40)
      {
        CFRetain(v40);
      }

      v14 = v56;
      v31 = MEMORY[0x1E695E9C0];
      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }
    }

    else
    {
      v34 = 0;
      v14 = v56;
      v31 = MEMORY[0x1E695E9C0];
    }

    CFRelease(v39);
    CFRelease(v37);
    v30 = v53;
    v29 = key;
    if (v34)
    {
      goto LABEL_60;
    }

LABEL_65:
    ++v28;
  }

  while (Count != v28);
  v26 = theArray;
  if (CFArrayGetCount(theArray) <= 0)
  {
    v22 = resolvedDictionaryOut;
    v18 = v52;
    goto LABEL_72;
  }

  v18 = v52;
  if (v56)
  {
    v43 = CFDictionaryGetCount(vtPixelBufferAttributesMediatorCALayerDesiredAttributes);
    v44 = CFDictionaryCreateMutableCopy(allocator, v43 + 1, vtPixelBufferAttributesMediatorCALayerDesiredAttributes);
    if (!v44)
    {
      VTPixelBufferAttributesMediatorCopyProperty_cold_6(theDict);
      goto LABEL_92;
    }

LABEL_82:
    v22 = v44;
    CFDictionarySetValue(v44, v29, theArray);
LABEL_83:
    resolvedDictionaryOut = 0;
LABEL_84:
    v10 = 0;
    *a4 = v22;
  }

  else
  {
    for (k = 0; k != Count; ++k)
    {
      v46 = CFArrayGetValueAtIndex(*(a1 + 32), k);
      v47 = CFDictionaryGetValue(*(a1 + 40), v46);
      v48 = CFDictionaryCreateMutableCopy(allocator, 0, v47);
      if (!v48)
      {
        VTPixelBufferAttributesMediatorCopyProperty_cold_5(theDict);
        goto LABEL_92;
      }

      v49 = v48;
      CFDictionaryRemoveValue(v48, v29);
      CFArrayAppendValue(v52, v49);
      CFRelease(v49);
    }

    CVPixelBufferCreateResolvedAttributesDictionary(allocator, v52, &resolvedDictionaryOut);
    if (resolvedDictionaryOut)
    {
      v50 = CFDictionaryCreateMutableCopy(allocator, 0, resolvedDictionaryOut);
      if (v50)
      {
        v22 = v50;
        CFDictionarySetValue(v50, v29, theArray);
        if (resolvedDictionaryOut)
        {
          CFRelease(resolvedDictionaryOut);
        }

        goto LABEL_83;
      }

      VTPixelBufferAttributesMediatorCopyProperty_cold_3(theDict);
    }

    else
    {
      v44 = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v44)
      {
        goto LABEL_82;
      }

      VTPixelBufferAttributesMediatorCopyProperty_cold_4(theDict);
    }

LABEL_92:
    v10 = LODWORD(theDict[0]);
  }

  FigSimpleMutexUnlock();
  if (v26)
  {
    CFRelease(v26);
  }

LABEL_87:
  if (resolvedDictionaryOut)
  {
    CFRelease(resolvedDictionaryOut);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v10;
}

uint64_t VTPixelBufferAttributesMediatorSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (CFEqual(cf1, @"LayersAreSuppressed"))
  {
    if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFBooleanGetTypeID()))
    {
      VTPixelBufferAttributesMediatorSetProperty_cold_1(&v9);
      return v9;
    }

    FigSimpleMutexLock();
    *(a1 + 48) = CFBooleanGetValue(a3);
  }

  else
  {
    if (!CFEqual(cf1, @"AlwaysVendNonNULLAttributes"))
    {
      return 4294954396;
    }

    if (!a3 || (v7 = CFGetTypeID(a3), v7 != CFBooleanGetTypeID()))
    {
      VTPixelBufferAttributesMediatorSetProperty_cold_2(&v10);
      return v10;
    }

    FigSimpleMutexLock();
    *(a1 + 49) = CFBooleanGetValue(a3);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t VTPixelBufferAttributesMediatorNotificationBarrier(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return MEMORY[0x1EEDBB7F0](DefaultLocalCenter, a1);
}

uint64_t VTPixelBufferAttributesMediatorSetRequestedPixelBufferAttributesForKey(uint64_t a1, const void *a2, const void *a3)
{
  FigSimpleMutexLock();
  if (a2)
  {
    if (!CFDictionaryContainsKey(*(a1 + 40), a3))
    {
      CFArrayAppendValue(*(a1 + 32), a3);
    }

    CFDictionarySetValue(*(a1 + 40), a3, a2);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t VTPixelBufferAttributesMediatorAddLayer(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  CFArrayAppendValue(*(a1 + 24), a2);
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t VTPixelBufferAttributesMediatorRemoveRequestedPixelBufferAttributesForKey(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 32);
  v8.length = CFArrayGetCount(v4);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v8, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 32), FirstIndexOfValue);
  }

  CFDictionaryRemoveValue(*(a1 + 40), a2);
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t VTPixelBufferAttributesMediatorRemoveLayer(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  v8.length = CFArrayGetCount(v4);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v8, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 24), FirstIndexOfValue);
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

double vtPixelBufferAttributesMediatorInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t vtPixelBufferAttributesMediatorFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  FigSimpleMutexDestroy();
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return MEMORY[0x1EEDBB820](DefaultLocalCenter, a1);
}

__CFString *vtPixelBufferAttributesMediatorCopyDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock();
  if (*(a1 + 48))
  {
    v4 = "";
  }

  else
  {
    v4 = "not ";
  }

  CFStringAppendFormat(Mutable, 0, @"<VTPixelBufferAttributesMediatorRef %p, layers %ssuppressed", a1, v4);
  v5 = *(a1 + 24);
  if (v5 && (Count = CFArrayGetCount(v5)) != 0)
  {
    v7 = Count;
    v8 = "s";
    if (Count <= 1)
    {
      v8 = "";
    }

    CFStringAppendFormat(Mutable, 0, @", %lld layer%s: [", Count, v8);
    if (v7 < 1)
    {
      v10 = @"]";
    }

    else
    {
      v9 = 0;
      v10 = @"]";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v9);
        if (v9)
        {
          v12 = ", ";
        }

        else
        {
          v12 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%@", v12, ValueAtIndex);
        ++v9;
      }

      while (v7 != v9);
    }
  }

  else
  {
    v10 = @", no layers";
  }

  CFStringAppend(Mutable, v10);
  v13 = *(a1 + 32);
  if (v13 && (v14 = CFArrayGetCount(v13)) != 0)
  {
    v15 = v14;
    v16 = "s";
    if (v14 <= 1)
    {
      v16 = "";
    }

    CFStringAppendFormat(Mutable, 0, @", %lld stakeholder%s: {", v14, v16);
    if (v15 < 1)
    {
      v18 = @"}";
    }

    else
    {
      v17 = 0;
      v18 = @"}";
      do
      {
        v19 = CFArrayGetValueAtIndex(*(a1 + 32), v17);
        CFDictionaryGetValue(*(a1 + 40), v19);
        v20 = FigCFCopyCompactDescription();
        v21 = v20;
        if (v17)
        {
          v22 = ", ";
        }

        else
        {
          v22 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%@: %@", v22, v19, v20);
        if (v21)
        {
          CFRelease(v21);
        }

        ++v17;
      }

      while (v15 != v17);
    }
  }

  else
  {
    v18 = @", no stakeholders";
  }

  CFStringAppend(Mutable, v18);
  CFStringAppend(Mutable, @">");
  FigSimpleMutexUnlock();
  return Mutable;
}

void vtPixelBufferAttributesMediatorCreateCALayerDesiredAttributes()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D0], *MEMORY[0x1E695E4D0]);
  vtPixelBufferAttributesMediatorCALayerDesiredAttributes = Mutable;
}

CFBooleanRef VTGetOnePassScalingPropertyValue(const void *a1, uint64_t a2)
{
  if (a1)
  {
    propertyValueOut = 0;
    VTSessionCopyProperty(a1, @"AllowOnePassMetalScaling", *MEMORY[0x1E695E480], &propertyValueOut);
    result = propertyValueOut;
    if (propertyValueOut)
    {
      v3 = CFGetTypeID(propertyValueOut);
      if (v3 == CFBooleanGetTypeID())
      {
        return CFBooleanGetValue(propertyValueOut);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    return _os_feature_enabled_impl();
  }

  return result;
}

__CFString *vtCopyVTMTSRenderPassDescriptorFormattingDescWithTabCount(const void *a1, int a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  v6 = objc_autoreleasePoolPush();
  v7 = CFGetAllocator(a1);
  v8 = CFStringCreateMutable(v7, 0);
  if (a2 >= 1)
  {
    do
    {
      CFStringAppend(v8, @"\t");
      --a2;
    }

    while (a2);
  }

  v9 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTMTSRenderPassDescriptor %p [%p]>{", a1, v9);
  CFStringAppendFormat(Mutable, 0, @"%@}", v8);
  if (v8)
  {
    CFRelease(v8);
  }

  objc_autoreleasePoolPop(v6);
  return Mutable;
}

__CFString *vtCopyVTMTSRenderPassBarrierFormattingDescWithTabCount(const void *a1, int a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  v6 = CFGetAllocator(a1);
  v7 = CFStringCreateMutable(v6, 0);
  if (a2 >= 1)
  {
    do
    {
      CFStringAppend(v7, @"\t");
      --a2;
    }

    while (a2);
  }

  v8 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTMTSRenderPassBarrier %p [%p]>{}", a1, v8);
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

uint64_t VTMetalTransferSessionCopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  v3 = objc_autoreleasePoolPush();
  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_2, vtMetalTransferSessionCreateSupportedPropertyDictionary);
  if (a2 && sVTMetalTransferSessionSupportedPropertyDictionary)
  {
    v4 = 0;
    *a2 = CFRetain(sVTMetalTransferSessionSupportedPropertyDictionary);
  }

  else
  {
    v4 = FigSignalErrorAtGM();
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

void vtMetalTransferSessionCreateSupportedPropertyDictionary()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3 = @"ReadWriteStatus";
  v4[0] = @"ReadWrite";
  v1[0] = @"PreferRenderKernel";
  v1[1] = @"AllowLowQualityScaling";
  v2[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2[1] = v2[0];
  v1[2] = @"RequireDeviceRegistryID";
  v1[3] = @"ShouldWaitToComplete";
  v2[2] = v2[0];
  v2[3] = v2[0];
  v1[4] = @"WriteBlackPixelsOutsideDestRect";
  v1[5] = @"MetalSubmissionQueue";
  v2[4] = v2[0];
  v2[5] = v2[0];
  v1[6] = @"MetalCompletionQueue";
  v2[6] = v2[0];
  sVTMetalTransferSessionSupportedPropertyDictionary = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:{7), "copy"}];
  objc_autoreleasePoolPop(v0);
}

uint64_t VTMetalTransferSessionCopyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && (v9 = DerivedStorage, v10 = CFGetTypeID(a1), v10 == VTPixelTransferNodeGetTypeID()))
  {
    if (*(v9 + 20))
    {
      VTMetalTransferSessionCopyProperty_cold_1(&v13);
      return v13;
    }

    else if (a2 && (v11 = CFGetTypeID(a2), v11 == CFStringGetTypeID()))
    {

      return VTMetalTransferSessionCopyPropertyFromPropertyStruct(v9 + 1784, a2, a3, a4);
    }

    else
    {
      VTMetalTransferSessionCopyProperty_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    VTMetalTransferSessionCopyProperty_cold_3(&v15);
    return v15;
  }
}

uint64_t VTMetalTransferSessionCopyPropertyFromPropertyStruct(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  *a4 = 0;
  if (CFEqual(a2, @"PreferRenderKernel"))
  {
    v8 = MEMORY[0x1E695E4C0];
    v9 = *(a1 + 8);
LABEL_5:
    if (v9)
    {
      v8 = MEMORY[0x1E695E4D0];
    }

    UInt64 = CFRetain(*v8);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"AllowLowQualityScaling"))
  {
    v8 = MEMORY[0x1E695E4C0];
    v9 = *(a1 + 9);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"RequireDeviceRegistryID"))
  {
    UInt64 = FigCFNumberCreateUInt64();
    goto LABEL_9;
  }

  if (CFEqual(a2, @"MostRecentElapsedGPUTime") || FigCFEqual())
  {
    UInt64 = FigCFNumberCreateFloat64();
    goto LABEL_9;
  }

  if (CFEqual(a2, @"ShouldWaitToComplete"))
  {
    v8 = MEMORY[0x1E695E4C0];
    v9 = *(a1 + 24);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"WriteBlackPixelsOutsideDestRect"))
  {
    v8 = MEMORY[0x1E695E4C0];
    v9 = *(a1 + 10);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"PQEOTFOpticalScale"))
  {
    UInt64 = *(a1 + 32);
    if (!UInt64)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"PQInvEOTFOpticalScale"))
  {
    UInt64 = *(a1 + 40);
    if (!UInt64)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"HLGOETFOpticalScale"))
  {
    UInt64 = *(a1 + 48);
    if (!UInt64)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"HLGInvOETFOpticalScale"))
  {
    UInt64 = *(a1 + 56);
    if (!UInt64)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    UInt64 = *a1;
    if (!*a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    UInt64 = *(a1 + 128);
    if (!UInt64)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!FigCFEqual())
  {
    v11 = 4294954396;
    goto LABEL_10;
  }

  UInt64 = *(a1 + 136);
  if (UInt64)
  {
LABEL_8:
    UInt64 = CFRetain(UInt64);
  }

LABEL_9:
  v11 = 0;
  *a4 = UInt64;
LABEL_10:
  objc_autoreleasePoolPop(v7);
  return v11;
}

uint64_t VTMetalTransferSessionCopyDefaultProperty(const void *a1, uint64_t a2, void *a3)
{
  MEMORY[0x193AE3010](&sReadGlobalVTMTSPropertiesOnce_0, ReadGlobalVTMTSProperties_0);
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFStringGetTypeID()))
  {
    if (a3)
    {
      *a3 = 0;

      return VTMetalTransferSessionCopyPropertyFromPropertyStruct(&globalVTMTSProperties, a1, a2, a3);
    }

    else
    {
      VTMetalTransferSessionCopyDefaultProperty_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    VTMetalTransferSessionCopyDefaultProperty_cold_2(&v9);
    return v9;
  }
}

uint64_t ReadGlobalVTMTSProperties_0()
{
  xmmword_1ED6D4388 = 0uLL;
  unk_1ED6D439F = 0;
  unk_1ED6D4398 = 0;
  *&byte_1ED6D43A3 = 16842753;
  byte_1ED6D43A7 = 0;
  byte_1ED6D4300 = 1;
  byte_1ED6D42F2 = 0;
  result = _os_feature_enabled_impl();
  LOBYTE(xmmword_1ED6D4328) = result;
  return result;
}

uint64_t VTInitializeFunctionConstants(uint64_t result)
{
  v1 = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  do
  {
    v3 = result + v1;
    *v3 = 0;
    *(v3 + 4) = v2;
    *(v3 + 20) = v2;
    *(v3 + 36) = v2;
    *(v3 + 52) = v2;
    *(v3 + 68) = v2;
    *(v3 + 84) = v2;
    *(v3 + 96) = v2;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 124) = 0;
    *(v3 + 126) = 0;
    *(v3 + 140) = 0;
    *(v3 + 152) = 0;
    *(v3 + 148) = 0;
    *(v3 + 128) = 0;
    v1 += 160;
    *(v3 + 136) = 0;
  }

  while (v1 != 1280);
  *(result + 1280) = 0;
  *(result + 1352) = -1;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(result + 1288) = v4;
  *(result + 1304) = v4;
  *(result + 1320) = v4;
  *(result + 1336) = v4;
  *(result + 1376) = 0;
  *(result + 1380) = 0;
  *(result + 1384) = 0;
  *(result + 1360) = 0;
  *(result + 1366) = 0;
  v5 = (result + 1460);
  v6 = 9;
  *(result + 1392) = 0;
  *(result + 1400) = 0;
  do
  {
    *(v5 - 11) = -1;
    *(v5 - 4) = 0;
    *v5 = -2.84809454e-306;
    v5 = (v5 + 52);
    --v6;
  }

  while (v6);
  *(result + 1884) = 0;
  *(result + 1408) = 1000;
  return result;
}

uint64_t vtMetalTransferSessionCreatePixelBufferDescriptionWithOptions(__CVBuffer *a1, uint64_t a2, __CFDictionary **a3)
{
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (a3)
  {
    if (a1)
    {
      v6 = IOSurface;
      v34 = a3;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      FigCFDictionarySetInt32();
      CVPixelBufferGetWidth(a1);
      FigCFDictionarySetCFIndex();
      CVPixelBufferGetHeight(a1);
      FigCFDictionarySetCFIndex();
      if (FigCFDictionaryGetInt32IfPresent())
      {
        FigCFDictionarySetCFIndex();
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        FigCFDictionarySetCFIndex();
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        FigCFDictionarySetCFIndex();
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        FigCFDictionarySetCFIndex();
      }

      v8 = IOSurfaceCopyValue(v6, *MEMORY[0x1E696CEF8]);
      v9 = *MEMORY[0x1E696CFC8];
      cf = v8;
      if (FigCFDictionaryGetBooleanIfPresent())
      {
        CFDictionarySetValue(Mutable, v9, *MEMORY[0x1E695E4D0]);
      }

      v10 = *MEMORY[0x1E6965D88];
      v11 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D88], 0);
      v12 = *MEMORY[0x1E6965F30];
      v13 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
      v14 = v13;
      if (v11 && v13)
      {
        CFDictionarySetValue(Mutable, v10, v11);
        CFDictionarySetValue(Mutable, v12, v14);
      }

      v31 = v14;
      v15 = *MEMORY[0x1E6965CE8];
      v16 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CE8], 0);
      if (v16)
      {
        CFDictionarySetValue(Mutable, v15, v16);
      }

      v29 = v12;
      v17 = *MEMORY[0x1E6965EC8];
      v18 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965EC8], 0);
      if (v18)
      {
        CFDictionarySetValue(Mutable, v17, v18);
      }

      key = v10;
      v19 = *MEMORY[0x1E6965F98];
      v20 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F98], 0);
      if (v20)
      {
        CFDictionarySetValue(Mutable, v19, v20);
      }

      v21 = *MEMORY[0x1E6965CB8];
      v22 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CB8], 0);
      if (v22)
      {
        CFDictionarySetValue(Mutable, v21, v22);
      }

      v23 = *MEMORY[0x1E69661F8];
      v24 = CVBufferCopyAttachment(a1, *MEMORY[0x1E69661F8], 0);
      v25 = v24;
      if (PixelFormatType == 1651521076 || PixelFormatType == 1647392369)
      {
        if (v24)
        {
          LOBYTE(v35) = 0;
          CFDictionarySetValue(Mutable, v23, v24);
          CFDictionaryRemoveValue(Mutable, v15);
          CFDictionarySetValue(Mutable, key, *MEMORY[0x1E6965DB0]);
          CFDictionarySetValue(Mutable, v29, *MEMORY[0x1E6965F60]);
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F20], *MEMORY[0x1E695E4D0]);
          v27 = CVBufferCopyAttachment(a1, *MEMORY[0x1E69661B0], 0);
          parseProResRAWMetadataExtension(v27, 0, &v35);
          FigCFDictionarySetBoolean();
          if (v27)
          {
            CFRelease(v27);
          }
        }
      }

      *v34 = Mutable;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v25)
      {
        CFRelease(v25);
      }
    }

    return 0;
  }

  else
  {
    vtMetalTransferSessionCreatePixelBufferDescriptionWithOptions_cold_1(&v35);
    return v35;
  }
}

uint64_t VTMetalTransferSessionCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_autoreleasePoolPush();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x193AE3010](&sReadGlobalVTMTSPropertiesOnce_0, ReadGlobalVTMTSProperties_0);
  if (a3)
  {
    VTPixelTransferNodeGetClassID();
    v5 = CMDerivedObjectCreate();
    FigSignalErrorAtGM();
  }

  else
  {
    VTMetalTransferSessionCreate_cold_1(&v7);
    v5 = v7;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void *checkForDisableWriteCombine(void *result)
{
  if (result)
  {
    [objc_msgSend(result "vendorName")];
    v1 = FigCFEqual();
    return ((FigCFEqual() | v1) != 0);
  }

  return result;
}

void vtmtsCreateDefaultDevice(void *a1, _BYTE *a2)
{
  v4 = MTLCreateSystemDefaultDevice();
  v5 = v4;
  if (a2)
  {
    *a2 = checkForDisableWriteCombine(v4);
  }

  *a1 = v5;
}

void *vtmtsCacheSupportedPixelformats(void *result, BOOL *a2)
{
  if (result && a2)
  {
    v3 = result;
    v4 = [result name];
    v5 = v4 && ([v4 containsString:@"Intel"] & 1) != 0;
    *a2 = v5;
    a2[2] = [v3 supportsFamily:1006];
    MTLPixelFormatGetInfoForDevice();
    a2[3] = (v6 & 4) != 0;
    a2[4] = (v6 & 0x10) != 0;
    a2[5] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[6] = (v6 & 4) != 0;
    a2[7] = (v6 & 0x10) != 0;
    a2[8] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[9] = (v6 & 4) != 0;
    a2[10] = (v6 & 0x10) != 0;
    a2[11] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[12] = (v6 & 4) != 0;
    a2[13] = (v6 & 0x10) != 0;
    a2[14] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[15] = (v6 & 4) != 0;
    a2[16] = (v6 & 0x10) != 0;
    a2[17] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[18] = (v6 & 4) != 0;
    a2[19] = (v6 & 0x10) != 0;
    a2[20] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[21] = (v6 & 4) != 0;
    a2[22] = (v6 & 0x10) != 0;
    a2[23] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[24] = (v6 & 4) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[25] = (v6 & 4) != 0;
    a2[26] = (v6 & 0x10) != 0;
    a2[27] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[28] = (v6 & 4) != 0;
    a2[29] = (v6 & 0x10) != 0;
    a2[30] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[31] = (v6 & 4) != 0;
    a2[32] = (v6 & 0x10) != 0;
    a2[33] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[34] = (v6 & 4) != 0;
    a2[35] = (v6 & 0x10) != 0;
    a2[36] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[37] = (v6 & 4) != 0;
    a2[38] = (v6 & 0x10) != 0;
    a2[39] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[40] = (v6 & 4) != 0;
    a2[41] = (v6 & 0x10) != 0;
    a2[42] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[43] = (v6 & 4) != 0;
    a2[44] = (v6 & 0x10) != 0;
    a2[45] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[46] = (v6 & 4) != 0;
    a2[47] = (v6 & 0x10) != 0;
    a2[48] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[49] = (v6 & 0x10) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[50] = (v6 & 0x10) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[51] = (v6 & 0x10) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[52] = (v6 & 4) != 0;
    a2[53] = (v6 & 0x10) != 0;
    a2[54] = (v6 & 2) != 0;
    MTLPixelFormatGetInfoForDevice();
    a2[55] = (v6 & 4) != 0;
    a2[56] = (v6 & 0x10) != 0;
    a2[57] = (v6 & 2) != 0;
    result = MTLPixelFormatGetInfoForDevice();
    a2[58] = (v6 & 4) != 0;
    a2[59] = (v6 & 0x10) != 0;
    a2[60] = (v6 & 2) != 0;
  }

  return result;
}

void VTMetalTransferSessionInitializeDestinationArray(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1 && a1[22])
  {
    v3 = MEMORY[0x193AE0CD0](*MEMORY[0x1E695E480], 992, 0x1000040789AEA99, 0);
    a1[23] = v3;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *&sDstPixelFormatArray[v4];
        v7 = a1[22];
        v10 = 0;
        if (v7)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          getKernelTypeCapabilities_destination((DerivedStorage + 2161), v6, &v10 + 1, &v10);
          if (v10 | HIBYTE(v10))
          {
            v9 = a1[23] + 8 * v5;
            *v9 = v6;
            if (getPixelFormatCharacteristics(v6, (v9 + 4), (v9 + 5)))
            {
              ++v5;
            }
          }
        }

        v4 += 4;
      }

      while (v4 != 496);
    }

    else
    {
      v5 = 0;
    }

    a1[24] = v5;
  }

  objc_autoreleasePoolPop(v2);
}

void VTMetalTransferSessionCleanupDestinationArray(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = *(a1 + 184);
    if (v3)
    {
      CFAllocatorDeallocate(*MEMORY[0x1E695E480], v3);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t VTPixelTransferSessionGetNextDirectMetalBlitter(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *(a4 + 24);
  v10 = &VTPixelGraphMetalDirectBlitterTable[24 * v9];
  while (v9 <= 0x12)
  {
    *(a4 + 24) = ++v9;
    v11 = *v10;
    v10 += 24;
    if (v11 == *a1)
    {
      *a3 = vtPixelTransferAppendMetalNodeCallback;
      *(a3 + 40) = 2;
      *(a3 + 48) = vdupq_n_s64(0xC8uLL);
      *(a3 + 64) = 0;
      *a2 = *(v10 - 5);
      *(a2 + 4) = *(v10 - 1);
      *(a2 + 5) = 3072;
      *(a2 + 7) = 16;
      v12 = 1;
      goto LABEL_6;
    }
  }

  v12 = 0;
  *a2 = 0;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a4 + 32) = 0;
LABEL_6:
  objc_autoreleasePoolPop(v8);
  return v12;
}

uint64_t VTPixelTransferSessionGetNextMetalBlitter(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (*(a4 + 48) || *(a4 + 49))
  {
    v11 = *(a4 + 32);
    v12 = *(a5 + 192);
    if (v11 < v12)
    {
      v13 = *(a4 + 40) < 0x40uLL;
      while (!v13)
      {
LABEL_10:
        *(a4 + 32) = ++v11;
        *(a4 + 40) = 0;
        v13 = 1;
        if (v11 >= v12)
        {
          goto LABEL_11;
        }
      }

      while (1)
      {
        v14 = *(a5 + 184) + 8 * *(a4 + 32);
        v15 = *v14;
        v16 = *(v14 + 5);
        *a2 = v15;
        *(a2 + 6) = *(*(a5 + 184) + 8 * *(a4 + 32) + 4);
        *(a2 + 7) = *(*(a5 + 184) + 8 * *(a4 + 32) + 5);
        v17 = a1[4] & 0x1F;
        *(a2 + 4) = v17;
        v18 = *(a4 + 40);
        if ((v18 & ~*(a5 + 20)) == 0 && (v18 & a1[4]) == 0)
        {
          break;
        }

        *(a4 + 40) = v18 + 1;
        if ((v18 + 1) >= 0x40)
        {
          v11 = *(a4 + 32);
          v12 = *(a5 + 192);
          goto LABEL_10;
        }
      }

      if ((v18 & 1) != 0 && *(a4 + 49))
      {
        v17 |= 1u;
        *(a2 + 4) = v17;
        v18 = *(a4 + 40);
      }

      if ((v18 & 2) != 0)
      {
        v17 |= 2u;
        *(a2 + 4) = v17;
        v18 = *(a4 + 40);
        if ((v18 & 4) == 0)
        {
LABEL_17:
          if ((v18 & 8) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      else if ((v18 & 4) == 0)
      {
        goto LABEL_17;
      }

      v17 |= 4u;
      *(a2 + 4) = v17;
      v18 = *(a4 + 40);
      if ((v18 & 8) == 0)
      {
LABEL_18:
        if ((v18 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_24:
      v17 |= 8u;
      *(a2 + 4) = v17;
      v18 = *(a4 + 40);
      if ((v18 & 0x10) == 0)
      {
LABEL_20:
        *(a4 + 40) = v18 + 1;
        if ((v16 & 2) == 0)
        {
          v20 = 0;
LABEL_32:
          *(a2 + 5) = v20;
          *a3 = vtPixelTransferAppendMetalNodeCallback;
          *(a3 + 40) = 2;
          *(a3 + 48) = vdupq_n_s64(0xC8uLL);
          *(a3 + 64) = 0;
          v19 = 1;
          goto LABEL_33;
        }

        if ((*(a5 + 23) & 3) == 1)
        {
          if ((a1[7] & 2) == 0)
          {
            v20 = 1;
            goto LABEL_32;
          }

          v21 = a1 + 5;
        }

        else
        {
          v21 = (a5 + 21);
        }

        v20 = *v21;
        goto LABEL_32;
      }

LABEL_19:
      *(a2 + 4) = v17 | 0x10;
      v18 = *(a4 + 40);
      goto LABEL_20;
    }
  }

LABEL_11:
  v19 = 0;
  *a2 = 0;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a4 + 32) = 0;
LABEL_33:
  objc_autoreleasePoolPop(v10);
  return v19;
}

uint64_t loadMTLFunctionConstants(unsigned int *a1, id *a2)
{
  *a2 = 0;
  result = objc_opt_new();
  v5 = result;
  if (a1)
  {
    EquivalentUncompressedPixelFormat = getEquivalentUncompressedPixelFormat(*a1);
    v16 = getEquivalentUncompressedPixelFormat(a1[40]);
    v15 = getEquivalentUncompressedPixelFormat(a1[321]);
    [v5 setConstantValue:&EquivalentUncompressedPixelFormat type:33 atIndex:0];
    [v5 setConstantValue:&v16 type:33 atIndex:1];
    [v5 setConstantValue:&v15 type:33 atIndex:2];
    [v5 setConstantValue:a1 + 9 type:29 atIndex:3];
    [v5 setConstantValue:a1 + 10 type:29 atIndex:4];
    [v5 setConstantValue:a1 + 11 type:29 atIndex:5];
    [v5 setConstantValue:a1 + 12 type:29 atIndex:6];
    [v5 setConstantValue:a1 + 13 type:29 atIndex:7];
    [v5 setConstantValue:a1 + 14 type:29 atIndex:8];
    [v5 setConstantValue:a1 + 15 type:29 atIndex:9];
    [v5 setConstantValue:a1 + 16 type:29 atIndex:10];
    [v5 setConstantValue:a1 + 17 type:29 atIndex:11];
    [v5 setConstantValue:a1 + 18 type:29 atIndex:12];
    [v5 setConstantValue:a1 + 19 type:29 atIndex:13];
    [v5 setConstantValue:a1 + 20 type:29 atIndex:14];
    [v5 setConstantValue:a1 + 21 type:29 atIndex:15];
    [v5 setConstantValue:a1 + 22 type:29 atIndex:16];
    [v5 setConstantValue:a1 + 23 type:29 atIndex:17];
    [v5 setConstantValue:a1 + 24 type:29 atIndex:18];
    [v5 setConstantValue:a1 + 1 type:29 atIndex:19];
    [v5 setConstantValue:a1 + 2 type:29 atIndex:20];
    [v5 setConstantValue:a1 + 3 type:29 atIndex:21];
    [v5 setConstantValue:a1 + 4 type:29 atIndex:22];
    [v5 setConstantValue:a1 + 5 type:29 atIndex:23];
    [v5 setConstantValue:a1 + 6 type:29 atIndex:24];
    [v5 setConstantValue:a1 + 7 type:29 atIndex:25];
    [v5 setConstantValue:a1 + 8 type:29 atIndex:26];
    [v5 setConstantValue:a1 + 49 type:29 atIndex:27];
    [v5 setConstantValue:a1 + 50 type:29 atIndex:28];
    [v5 setConstantValue:a1 + 53 type:29 atIndex:29];
    [v5 setConstantValue:a1 + 54 type:29 atIndex:30];
    [v5 setConstantValue:a1 + 57 type:29 atIndex:31];
    [v5 setConstantValue:a1 + 58 type:29 atIndex:32];
    [v5 setConstantValue:a1 + 61 type:29 atIndex:33];
    [v5 setConstantValue:a1 + 62 type:29 atIndex:34];
    [v5 setConstantValue:a1 + 41 type:29 atIndex:35];
    [v5 setConstantValue:a1 + 42 type:29 atIndex:36];
    [v5 setConstantValue:a1 + 45 type:29 atIndex:37];
    [v5 setConstantValue:a1 + 46 type:29 atIndex:38];
    [v5 setConstantValue:a1 + 328 type:29 atIndex:39];
    [v5 setConstantValue:a1 + 329 type:29 atIndex:40];
    [v5 setConstantValue:a1 + 330 type:29 atIndex:41];
    [v5 setConstantValue:a1 + 331 type:29 atIndex:42];
    [v5 setConstantValue:a1 + 332 type:29 atIndex:43];
    [v5 setConstantValue:a1 + 333 type:29 atIndex:44];
    [v5 setConstantValue:a1 + 334 type:29 atIndex:45];
    [v5 setConstantValue:a1 + 335 type:29 atIndex:46];
    [v5 setConstantValue:a1 + 336 type:29 atIndex:47];
    [v5 setConstantValue:a1 + 337 type:29 atIndex:48];
    [v5 setConstantValue:a1 + 338 type:29 atIndex:49];
    [v5 setConstantValue:a1 + 339 type:29 atIndex:50];
    [v5 setConstantValue:a1 + 322 type:29 atIndex:51];
    [v5 setConstantValue:a1 + 323 type:29 atIndex:52];
    [v5 setConstantValue:a1 + 324 type:29 atIndex:53];
    [v5 setConstantValue:a1 + 325 type:29 atIndex:54];
    [v5 setConstantValue:a1 + 326 type:29 atIndex:55];
    [v5 setConstantValue:a1 + 327 type:29 atIndex:56];
    [v5 setConstantValue:a1 + 25 type:29 atIndex:57];
    [v5 setConstantValue:a1 + 26 type:29 atIndex:58];
    [v5 setConstantValue:a1 + 27 type:29 atIndex:59];
    [v5 setConstantValue:a1 + 67 type:29 atIndex:60];
    [v5 setConstantValue:a1 + 28 type:29 atIndex:61];
    [v5 setConstantValue:a1 + 68 type:29 atIndex:62];
    [v5 setConstantValue:a1 + 320 type:29 atIndex:63];
    [v5 setConstantValue:a1 + 340 type:29 atIndex:64];
    [v5 setConstantValue:a1 + 30 type:53 atIndex:65];
    [v5 setConstantValue:a1 + 121 type:53 atIndex:66];
    [v5 setConstantValue:a1 + 122 type:53 atIndex:67];
    [v5 setConstantValue:a1 + 123 type:53 atIndex:68];
    [v5 setConstantValue:a1 + 31 type:53 atIndex:69];
    [v5 setConstantValue:a1 + 125 type:53 atIndex:70];
    [v5 setConstantValue:a1 + 126 type:53 atIndex:71];
    if (a1[29])
    {
      [v5 setConstantValue:a1 + 29 type:29 atIndex:72];
    }

    [v5 setConstantValue:a1 + 70 type:53 atIndex:73];
    [v5 setConstantValue:a1 + 281 type:53 atIndex:74];
    [v5 setConstantValue:a1 + 282 type:53 atIndex:75];
    [v5 setConstantValue:a1 + 283 type:53 atIndex:76];
    [v5 setConstantValue:a1 + 71 type:53 atIndex:77];
    [v5 setConstantValue:a1 + 285 type:53 atIndex:78];
    [v5 setConstantValue:a1 + 286 type:53 atIndex:79];
    if (a1[69])
    {
      [v5 setConstantValue:a1 + 69 type:29 atIndex:80];
    }

    [v5 setConstantValue:a1 + 341 type:53 atIndex:81];
    [v5 setConstantValue:a1 + 1365 type:53 atIndex:82];
    [v5 setConstantValue:a1 + 32 type:29 atIndex:83];
    [v5 setConstantValue:a1 + 33 type:53 atIndex:84];
    [v5 setConstantValue:a1 + 133 type:53 atIndex:85];
    [v5 setConstantValue:a1 + 134 type:53 atIndex:86];
    [v5 setConstantValue:a1 + 135 type:53 atIndex:87];
    [v5 setConstantValue:a1 + 34 type:53 atIndex:88];
    [v5 setConstantValue:a1 + 137 type:53 atIndex:89];
    [v5 setConstantValue:a1 + 72 type:29 atIndex:90];
    [v5 setConstantValue:a1 + 73 type:53 atIndex:91];
    [v5 setConstantValue:a1 + 293 type:53 atIndex:92];
    [v5 setConstantValue:a1 + 294 type:53 atIndex:93];
    [v5 setConstantValue:a1 + 295 type:53 atIndex:94];
    [v5 setConstantValue:a1 + 74 type:53 atIndex:95];
    [v5 setConstantValue:a1 + 297 type:53 atIndex:96];
    [v5 setConstantValue:a1 + 1367 type:53 atIndex:97];
    [v5 setConstantValue:a1 + 342 type:53 atIndex:98];
    [v5 setConstantValue:a1 + 1369 type:53 atIndex:99];
    [v5 setConstantValue:a1 + 1371 type:53 atIndex:100];
    [v5 setConstantValue:a1 + 343 type:53 atIndex:101];
    [v5 setConstantValue:a1 + 1373 type:53 atIndex:102];
    [v5 setConstantValue:a1 + 1370 type:53 atIndex:103];
    [v5 setConstantValue:a1 + 344 type:29 atIndex:104];
    [v5 setConstantValue:a1 + 345 type:53 atIndex:105];
    [v5 setConstantValue:a1 + 35 type:29 atIndex:107];
    [v5 setConstantValue:a1 + 37 type:29 atIndex:108];
    [v5 setConstantValue:a1 + 38 type:29 atIndex:109];
    [v5 setConstantValue:a1 + 39 type:29 atIndex:110];
    [v5 setConstantValue:a1 + 75 type:29 atIndex:111];
    [v5 setConstantValue:a1 + 77 type:29 atIndex:112];
    [v5 setConstantValue:a1 + 78 type:29 atIndex:113];
    [v5 setConstantValue:a1 + 79 type:29 atIndex:114];
    [v5 setConstantValue:a1 + 346 type:29 atIndex:115];
    [v5 setConstantValue:a1 + 348 type:29 atIndex:116];
    [v5 setConstantValue:a1 + 349 type:29 atIndex:117];
    [v5 setConstantValue:a1 + 350 type:29 atIndex:118];
    [v5 setConstantValue:a1 + 351 type:33 atIndex:119];
    [v5 setConstantValue:a1 + 352 type:29 atIndex:106];
    [v5 setConstantValue:a1 + 353 type:53 atIndex:120];
    [v5 setConstantValue:a1 + 1413 type:53 atIndex:121];
    [v5 setConstantValue:a1 + 1414 type:53 atIndex:122];
    [v5 setConstantValue:a1 + 1415 type:53 atIndex:123];
    v6 = 0;
    v7 = a1 + 354;
    v14 = a1;
    v8 = a1 + 355;
    v9 = 128;
    do
    {
      v10 = &v7[13 * v6];
      [v5 setConstantValue:v10 type:29 atIndex:{13 * v6 + 124, v14}];
      [v5 setConstantValue:v10 + 10 type:53 atIndex:13 * v6 + 125];
      [v5 setConstantValue:v10 + 11 type:3 atIndex:13 * v6 + 126];
      [v5 setConstantValue:v10 + 12 type:3 atIndex:13 * v6 + 127];
      v11 = 9;
      v12 = v9;
      v13 = v8;
      do
      {
        [v5 setConstantValue:v13++ type:3 atIndex:v12++];
        --v11;
      }

      while (v11);
      ++v6;
      v8 += 13;
      v9 += 13;
    }

    while (v6 != 9);
    [v5 setConstantValue:v14 + 471 type:29 atIndex:241];
    result = [v5 setConstantValue:v14 + 472 type:29 atIndex:242];
  }

  *a2 = v5;
  return result;
}

unint64_t VTMetalTransferSessionConfigureForSourceAndDest(const void *a1, const void *a2, void *a3, const void *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if (!a1 || (v9 = CFGetTypeID(a1), v9 != VTPixelTransferNodeGetTypeID()))
  {
    VTMetalTransferSessionConfigureForSourceAndDest_cold_5(&v21);
LABEL_20:
    v19 = v21;
    goto LABEL_14;
  }

  if (!a2 || (v10 = CFGetTypeID(a2), v10 != CFDictionaryGetTypeID()))
  {
    VTMetalTransferSessionConfigureForSourceAndDest_cold_4(&v21);
    goto LABEL_20;
  }

  if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFDictionaryGetTypeID()))
  {
    VTMetalTransferSessionConfigureForSourceAndDest_cold_3(&v21);
    goto LABEL_20;
  }

  if (a4)
  {
    v12 = CFGetTypeID(a4);
    if (v12 != CFDictionaryGetTypeID())
    {
      VTMetalTransferSessionConfigureForSourceAndDest_cold_1(&v21);
      goto LABEL_20;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 22))
  {
    VTMetalTransferSessionConfigureForSourceAndDest_cold_2(&v21);
    goto LABEL_20;
  }

  v14 = DerivedStorage;
  values[0] = a2;
  v15 = *MEMORY[0x1E695E480];
  v16 = MEMORY[0x1E695E9C0];
  v17 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  v22 = a3;
  v18 = CFArrayCreate(v15, &v22, 1, v16);
  *(v14 + 24) = 1;
  v19 = vtMetalTransferSessionConfigureForManySourcesAndManyDests(a1, v17, v18, a4);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_14:
  objc_autoreleasePoolPop(v8);
  return v19;
}

uint64_t VTMetalTransferSessionTransferImageSync(const void *a1, void *a2, void *a3, const void *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v22 = a3;
  values[0] = a2;
  if (!a1 || (v9 = CFGetTypeID(a1), v9 != VTPixelTransferNodeGetTypeID()))
  {
    VTMetalTransferSessionTransferImageSync_cold_5(&v21);
LABEL_20:
    v19 = v21;
    goto LABEL_14;
  }

  if (!a2 || (v10 = CFGetTypeID(a2), v10 != CVPixelBufferGetTypeID()))
  {
    VTMetalTransferSessionTransferImageSync_cold_4(&v21);
    goto LABEL_20;
  }

  if (!a3 || (v11 = CFGetTypeID(a3), v11 != CVPixelBufferGetTypeID()))
  {
    VTMetalTransferSessionTransferImageSync_cold_3(&v21);
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 22))
  {
    VTMetalTransferSessionTransferImageSync_cold_1(&v21);
    goto LABEL_20;
  }

  v13 = DerivedStorage;
  if (a4)
  {
    v14 = CFGetTypeID(a4);
    if (v14 != CFDictionaryGetTypeID())
    {
      VTMetalTransferSessionTransferImageSync_cold_2(&v21);
      goto LABEL_20;
    }
  }

  v15 = *MEMORY[0x1E695E480];
  v16 = MEMORY[0x1E695E9C0];
  v17 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  v18 = CFArrayCreate(v15, &v22, 1, v16);
  *(v13 + 24) = 1;
  v19 = vtMetalTransferSessionTransferImageCommonSync(a1, v17, v18, a4);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_14:
  objc_autoreleasePoolPop(v8);
  return v19;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync(uint64_t a1, const __CFArray *a2, const __CFArray *a3, const __CFDictionary *a4)
{
  v248 = *MEMORY[0x1E69E9840];
  v241 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (*(DerivedStorage + 22))
  {
    vtMetalTransferSessionTransferImageCommonSync_cold_1(&v227);
LABEL_334:
    v32 = 0;
    v33 = 0;
    v31 = v227;
    goto LABEL_316;
  }

  if (!*(DerivedStorage + 24))
  {
    vtMetalTransferSessionTransferImageCommonSync_cold_13(&v227);
    goto LABEL_334;
  }

  v218 = DerivedStorage;
  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"SourceAmendments");
    v11 = CFDictionaryGetValue(a4, @"DestinationAmendments");
  }

  else
  {
    v11 = 0;
    Value = 0;
  }

  theArray = Mutable;
  allocator = v9;
  if (!a2)
  {
    v13 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_19;
  }

  Count = CFArrayGetCount(a2);
  v13 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    v223 = a1;
    v15 = 0;
    while (1)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
      if (!Value)
      {
        break;
      }

      v17 = CFGetTypeID(Value);
      TypeID = CFDictionaryGetTypeID();
      v19 = Value;
      if (v17 != TypeID)
      {
        v20 = CFGetTypeID(Value);
        if (v20 != CFArrayGetTypeID())
        {
          break;
        }

        v19 = CFArrayGetValueAtIndex(Value, v15);
      }

LABEL_17:
      vtMetalTransferSessionCreatePixelBufferDescriptionWithOptions(ValueAtIndex, v19, &cf);
      CFArrayAppendValue(v13, cf);
      if (Count == ++v15)
      {
        v9 = allocator;
        a1 = v223;
        goto LABEL_19;
      }
    }

    v19 = 0;
    goto LABEL_17;
  }

LABEL_19:
  if (a3)
  {
    v224 = a1;
    v24 = CFArrayGetCount(a3);
    v21 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    if (v24 < 1)
    {
LABEL_32:
      v22 = vtMetalTransferSessionConfigureForManySourcesAndManyDests(v224, v13, v21, a4);
      if (!v22)
      {
        if (v24 == 1)
        {
          LODWORD(textureOut) = 0;
          *&v227 = 0;
          *&v243[0] = 0;
          v23 = v218;
          if (*v218)
          {
            CFRelease(*v218);
            *v218 = 0;
          }

          v241 = CFArrayGetValueAtIndex(v21, 0);
          FigCFDictionaryGetInt32IfPresent();
          v9 = allocator;
          if (!FigCFDictionaryGetInt64IfPresent())
          {
            FigCFDictionaryGetInt64IfPresent();
          }

          if (!FigCFDictionaryGetInt64IfPresent())
          {
            FigCFDictionaryGetInt64IfPresent();
          }

          VTPixelTransferChainCreatePixelBufferPoolAttributes(textureOut, 1, v227, *&v243[0], v218);
        }

        else
        {
          v23 = v218;
          v9 = allocator;
        }

        goto LABEL_43;
      }

LABEL_33:
      v31 = v22;
      v32 = 0;
      v33 = 0;
      goto LABEL_311;
    }

    v25 = 0;
    while (1)
    {
      if (v241)
      {
        CFRelease(v241);
      }

      v26 = CFArrayGetValueAtIndex(a3, v25);
      if (!v11)
      {
        break;
      }

      v27 = CFGetTypeID(v11);
      v28 = CFDictionaryGetTypeID();
      v29 = v11;
      if (v27 != v28)
      {
        v30 = CFGetTypeID(v11);
        if (v30 != CFArrayGetTypeID())
        {
          break;
        }

        v29 = CFArrayGetValueAtIndex(v11, v25);
      }

LABEL_31:
      vtMetalTransferSessionCreatePixelBufferDescriptionWithOptions(v26, v29, &v241);
      CFArrayAppendValue(v21, v241);
      if (v24 == ++v25)
      {
        goto LABEL_32;
      }
    }

    v29 = 0;
    goto LABEL_31;
  }

  v21 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  v22 = vtMetalTransferSessionConfigureForManySourcesAndManyDests(a1, v13, v21, a4);
  if (v22)
  {
    goto LABEL_33;
  }

  v23 = v218;
LABEL_43:
  if (v23[269])
  {
    v240 = 0;
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    v227 = 0u;
    v204 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    v34 = v23[269];
    if (v34)
    {
      v35 = 0;
      v36 = 0;
      v199 = (v23 + 16);
      v197 = *MEMORY[0x1E69661E0];
      v198 = (v23 + 12);
      v195 = *MEMORY[0x1E69661A8];
      v196 = *MEMORY[0x1E6966198];
      v193 = *MEMORY[0x1E69661D8];
      v194 = *MEMORY[0x1E69661D0];
      v192 = *MEMORY[0x1E69661C8];
      key = *MEMORY[0x1E69661C0];
      v190 = *MEMORY[0x1E69661A0];
      v189 = *MEMORY[0x1E69661B0];
      __asm { FMOV            V8.2S, #1.0 }

      v188 = vdup_lane_s32(1101703851, 0).i32[1];
      do
      {
        if (CFArrayGetCount(v34) <= v35)
        {
          break;
        }

        v212 = v36;
        v41 = CFArrayGetValueAtIndex(v23[269], v35);
        if (v41)
        {
          v42 = v41;
          v43 = CFGetTypeID(v41);
          MEMORY[0x193AE3010](&_MergedGlobals_1, RegisterVTMTSRenderPassDescriptor);
          if (v43 == _MergedGlobals_393)
          {
            v32 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
            v208 = [*(v42 + 14) contents];
            v44 = *(v42 + 34);
            if (v44)
            {
              v45 = 0;
              v46 = 0;
              v205 = 0;
              v200 = -1;
              v210 = v32;
              pixelBuffer = v42;
              while (1)
              {
                if (CFArrayGetCount(v44) <= v45)
                {
                  goto LABEL_126;
                }

                v47 = CFArrayGetValueAtIndex(*(v42 + 34), v45);
                v48 = v47;
                v49 = *(v47 + 4);
                if (v49 == 2)
                {
                  break;
                }

                if (v49 == 1)
                {
                  v50 = CFArrayGetValueAtIndex(a3, *(v47 + 5));
                  if (CVPixelBufferGetIOSurface(v50) && IOSurfaceGetProhibitUseCount())
                  {
                    _ZF = *(v42 + 4) == 2;
                    v84 = 144;
                    v85 = 136;
                  }

                  else
                  {
                    _ZF = *(v42 + 4) == 2;
                    v84 = 112;
                    v85 = 104;
                  }

                  if (_ZF)
                  {
                    v84 = v85;
                  }

                  v221 = *(v23 + v84);
                  v225 = CFArrayGetValueAtIndex(v21, *(v48 + 5));
                  if (v50)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_96;
                }

                if (!v49)
                {
                  v50 = CFArrayGetValueAtIndex(a2, *(v47 + 5));
                  if (!CVPixelBufferGetIOSurface(v50) || (ProhibitUseCount = IOSurfaceGetProhibitUseCount(), v52 = v199, !ProhibitUseCount))
                  {
                    v52 = v198;
                  }

                  v221 = *v52;
                  v225 = CFArrayGetValueAtIndex(v13, *(v48 + 5));
                  if (v50)
                  {
                    PixelFormatType = CVPixelBufferGetPixelFormatType(v50);
                    if (PixelFormatType == 1651521076 || PixelFormatType == 1647392369)
                    {
                      if (v200 != -1 && v200 != *(v48 + 5))
                      {
                        vtMetalTransferSessionTransferImageCommonSync_cold_2(v243);
                        v31 = LODWORD(v243[0]);
                        goto LABEL_307;
                      }

                      v54 = [*(v42 + 16) contents];
                      v55 = v54;
                      if (v54)
                      {
                        vtGetBufferAttachmentInt32IfPresent(v50, v197, (v54 + 4));
                        vtGetBufferAttachmentInt32IfPresent(v50, v196, v55);
                        vtGetBufferAttachmentFloatIfPresent(v50, v195, (v55 + 44));
                        vtGetBufferAttachmentFloatIfPresent(v50, v194, (v55 + 56));
                        vtGetBufferAttachmentFloatIfPresent(v50, v193, (v55 + 48));
                        vtGetBufferAttachmentFloatIfPresent(v50, v192, (v55 + 52));
                        vtGetBufferAttachmentFloatIfPresent(v50, @"ProResRAW_LargestDCQSS", (v55 + 60));
                        v56 = CVBufferCopyAttachment(v50, key, 0);
                        v57 = v56;
                        if (v56)
                        {
                          v58 = CFGetTypeID(v56);
                          if (v58 == CFDataGetTypeID())
                          {
                            if (CFDataGetLength(v57) == 32)
                            {
                              v249.location = 0;
                              v249.length = 32;
                              CFDataGetBytes(v57, v249, buffer);
                              *(v55 + 92) = buffer[0];
                              *(v55 + 108) = buffer[1];
                            }

                            else
                            {
                              vtMetalTransferSessionTransferImageCommonSync_cold_3();
                            }
                          }
                        }

                        v59 = 0;
                        v60 = &v246;
                        do
                        {
                          *(v60 - 1) = vand_s8(_D8, vmovn_s64(vceqq_s64(vdupq_n_s64(v59), xmmword_18FECDDB0)));
                          if (v59 == 2)
                          {
                            v61 = 1.0;
                          }

                          else
                          {
                            v61 = 0.0;
                          }

                          *v60 = v61;
                          v60 += 3;
                          ++v59;
                        }

                        while (v59 != 3);
                        v206 = v57;
                        v62 = CVBufferCopyAttachment(v50, v190, 0);
                        v63 = v62;
                        if (v62)
                        {
                          v64 = CFGetTypeID(v62);
                          if (v64 == CFDataGetTypeID())
                          {
                            vtMetalTransferSessionTransferImageCommonSync_cold_4(v63, &textureOut);
                          }
                        }

                        v201 = v63;
                        v65 = v55 + 8;
                        matrixMultiply(setUpProResParametersForPixelBuffer_kXYZToRGB_2020, &textureOut, (v55 + 8));
                        v66 = 0;
                        v67 = *(v55 + 44) / 0.9;
                        *&v67 = v67;
                        do
                        {
                          for (i = 0; i != 12; i += 4)
                          {
                            *(v65 + i) = *(v65 + i) * *&v67;
                          }

                          ++v66;
                          v65 += 12;
                        }

                        while (v66 != 3);
                        v69 = *v55;
                        v70 = *(v55 + 4) - *v55;
                        *&v67 = v70;
                        if (!v70)
                        {
                          *&v67 = 65535.0;
                        }

                        *&v71 = ((*(v55 + 60) * *(v55 + 60)) * 5.0) + 21.333;
                        *(v55 + 64) = 1.0 / *&v67;
                        v72 = vdup_lane_s32(*&v67, 0);
                        v72.f32[0] = *&v67 * 256.0;
                        *(v55 + 76) = *&v71 / 150990000.0;
                        *(v55 + 80) = vdiv_f32(__PAIR64__(v188, v71), vmul_n_f32(v72, *&v67));
                        *(v55 + 68) = vbsl_s8(vceqz_f32(*(v55 + 48)), _D8, vdiv_f32(_D8, *(v55 + 48)));
                        *(v55 + 88) = v69 / *&v67;
                        memset(v243, 0, sizeof(v243));
                        *(v55 + 124) = 0;
                        v73 = CVBufferCopyAttachment(v50, v189, 0);
                        if (v73)
                        {
                          v187 = v46;
                          v74 = v73;
                          v75 = CFGetTypeID(v73);
                          if (v75 == CFDataGetTypeID())
                          {
                            parseProResRAWMetadataExtension(v74, v243, (v55 + 124));
                            if (*(v55 + 124) == 1)
                            {
                              Width = CVPixelBufferGetWidth(v50);
                              Height = CVPixelBufferGetHeight(v50);
                              v78 = (Width - 1);
                              v79 = (*v243 * v78) + 0.0;
                              v80 = (Height - 1);
                              v81 = (*(v243 + 1) * v80) + 0.0;
                              v82 = hypotf(fmaxf(fabsf(v79), vabds_f32(v78, v79)), fmaxf(fabsf(v81), vabds_f32(v80, v81)));
                              *(v55 + 128) = v79;
                              *(v55 + 132) = v81;
                              *(v55 + 136) = 1.0 / v82;
                              *(v55 + 140) = *(v243 + 8);
                              *(v55 + 156) = *(&v243[1] + 8);
                              *(v55 + 172) = *(&v243[2] + 8);
                              *(v55 + 184) = *(&v243[3] + 4);
                              *(v55 + 200) = *(&v243[4] + 4);
                              *(v55 + 208) = BYTE12(v243[4]) != 0;
                            }
                          }

                          CFRelease(v74);
                          v46 = v187;
                        }

                        if (v201)
                        {
                          CFRelease(v201);
                        }

                        v23 = v218;
                        if (v206)
                        {
                          CFRelease(v206);
                        }
                      }

                      v237 = *(v55 + 160);
                      v238 = *(v55 + 176);
                      v239 = *(v55 + 192);
                      v240 = *(v55 + 208);
                      v233 = *(v55 + 96);
                      v234 = *(v55 + 112);
                      v235 = *(v55 + 128);
                      v236 = *(v55 + 144);
                      v229 = *(v55 + 32);
                      v230 = *(v55 + 48);
                      v231 = *(v55 + 64);
                      v232 = *(v55 + 80);
                      v227 = *v55;
                      v228 = *(v55 + 16);
                      v200 = *(v48 + 5);
                      v205 = 1;
                    }

LABEL_109:
                    textureOut = 0;
                    v91 = CVPixelBufferGetWidthOfPlane(v50, *(v48 + 6)) / *(v48 + 10);
                    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v50, *(v48 + 6));
                    if (!*(v48 + 6) && *(v48 + 14) == 2 && *(v48 + 10) == 1)
                    {
                      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v50, 0);
                      _ZF = WidthOfPlane == CVPixelBufferGetWidth(v50);
                      v23 = v218;
                      if (_ZF)
                      {
                        v91 = CVPixelBufferGetWidthOfPlane(v50, *(v48 + 6)) >> 1;
                      }
                    }

                    if (*(v48 + 16) != 1)
                    {
                      setBufferExtents((v208 + 16 * *(v48 + 11)), v48, v225, v91, HeightOfPlane, *(v23 + 1794));
                    }

                    memset(v243, 0, 56);
                    MTLPixelFormatGetInfoForDevice();
                    IOSurface = CVPixelBufferGetIOSurface(v50);
                    BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(IOSurface, *(v48 + 6));
                    if (*(&v243[1] + 1) > BytesPerElementOfPlane * *(v48 + 10))
                    {
                      vtMetalTransferSessionTransferImageCommonSync_cold_5(v50, buffer);
                      v31 = LODWORD(buffer[0]);
                      goto LABEL_330;
                    }

                    CVMetalTextureCacheCreateTextureFromImage(allocator, v23[6], v50, v221, v48[4], v91, HeightOfPlane, *(v48 + 6), &textureOut);
                    if (!textureOut)
                    {
                      v31 = 4294954392;
LABEL_330:
                      v32 = v210;
LABEL_307:
                      v33 = v204;
                      goto LABEL_311;
                    }

                    CFArrayAppendValue(theArray, textureOut);
                    Texture = CVMetalTextureGetTexture(textureOut);
                    v32 = v210;
                    CFArrayAppendValue(v210, Texture);
                    if (textureOut)
                    {
                      CFRelease(textureOut);
                    }

                    v42 = pixelBuffer;
                    goto LABEL_122;
                  }

                  goto LABEL_96;
                }

                v225 = 0;
LABEL_98:
                if (v49 == 3)
                {
                  v86 = v23[11];
                  if (!v86 || (v87 = *(v48 + 5), CFArrayGetCount(v86) <= v87) || (v88 = CFArrayGetValueAtIndex(v86, v87)) == 0)
                  {
                    v31 = 4294954392;
                    goto LABEL_307;
                  }

                  v89 = v88;
                  CFArrayAppendValue(v32, v88);
                  setBufferExtents((v208 + 16 * *(v48 + 11)), v48, v225, [v89 width], objc_msgSend(v89, "height"), 0);
                  v42 = pixelBuffer;
                  if (*(pixelBuffer + 542))
                  {
                    v23 = v218;
                    if (!v205)
                    {
                      v90 = [*(pixelBuffer + 16) contents];
                      v205 = 0;
                      *(v90 + 160) = v237;
                      *(v90 + 176) = v238;
                      *(v90 + 192) = v239;
                      *(v90 + 208) = v240;
                      *(v90 + 96) = v233;
                      *(v90 + 112) = v234;
                      *(v90 + 128) = v235;
                      *(v90 + 144) = v236;
                      *(v90 + 32) = v229;
                      *(v90 + 48) = v230;
                      *(v90 + 64) = v231;
                      *(v90 + 80) = v232;
                      *v90 = v227;
                      *(v90 + 16) = v228;
                    }
                  }

                  else
                  {
                    v23 = v218;
                  }
                }

LABEL_122:
                v45 = (v46 + 1);
                v44 = *(v42 + 34);
                ++v46;
                if (!v44)
                {
                  goto LABEL_126;
                }
              }

              v50 = CFArrayGetValueAtIndex(a3, *(v47 + 5));
              v221 = 0;
              v225 = 0;
              if (v50)
              {
                goto LABEL_109;
              }

LABEL_96:
              v49 = *(v48 + 4);
              goto LABEL_98;
            }

LABEL_126:
            CFArrayAppendValue(v204, v32);
            v9 = allocator;
            if (v32)
            {
              CFRelease(v32);
            }
          }
        }

        v35 = (v212 + 1);
        v34 = v23[269];
        v36 = v212 + 1;
      }

      while (v34);
    }
  }

  else
  {
    v204 = 0;
  }

  if (!*(v23 + 72))
  {
    v31 = FigSignalErrorAtGM();
    v181 = 0.0;
    v33 = v204;
    goto LABEL_310;
  }

  v97 = objc_autoreleasePoolPush();
  v211 = [v23[252] commandBuffer];
  if (!v211)
  {
    context = v97;
    v31 = 4294954392;
LABEL_328:
    v33 = v204;
LABEL_304:
    objc_autoreleasePoolPop(context);
    v32 = 0;
    goto LABEL_311;
  }

  v98 = v23[269];
  if (!v98)
  {
    v181 = 0.0;
    v33 = v204;
    goto LABEL_309;
  }

  context = v97;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v213 = v23 + 19;
  v202 = *MEMORY[0x1E69662B8];
  v207 = *MEMORY[0x1E69661F8];
  while (CFArrayGetCount(v98) > v99)
  {
    v102 = CFArrayGetValueAtIndex(v23[269], v99);
    if (!v102)
    {
      goto LABEL_277;
    }

    v103 = v102;
    v104 = CFGetTypeID(v102);
    MEMORY[0x193AE3010](&_MergedGlobals_1, RegisterVTMTSRenderPassDescriptor);
    if (v104 != _MergedGlobals_393)
    {
      goto LABEL_277;
    }

    v222 = v101;
    v226 = v100;
    if (*(v103 + 4) == 4)
    {
      if (a2)
      {
        v105 = CFArrayGetCount(a2) == 1;
        if (!a3)
        {
          goto LABEL_327;
        }
      }

      else
      {
        v105 = 0;
        if (!a3)
        {
          goto LABEL_327;
        }
      }

      if (CFArrayGetCount(a3) != 1 || !v105)
      {
LABEL_327:
        v31 = 0;
        goto LABEL_328;
      }

      v124 = CFArrayGetValueAtIndex(a2, 0);
      v125 = CFArrayGetValueAtIndex(a3, 0);
      v126 = v23;
      v127 = v23[7];
      v128 = v126[223];
      textureOut = 0;
      *&buffer[0] = 0;
      valuePtr = 0;
      if (v127)
      {
        v129 = v125;
        v209 = v128;
        v130 = CFGetTypeID(v103);
        MEMORY[0x193AE3010](&_MergedGlobals_1, RegisterVTMTSRenderPassDescriptor);
        if (v130 != _MergedGlobals_393)
        {
          vtMetalTransferSessionTransferImageCommonSync_cold_8();
          goto LABEL_258;
        }

        if (!*(v103 + 12))
        {
          vtMetalTransferSessionTransferImageCommonSync_cold_11();
          goto LABEL_258;
        }

        v131 = [*(v103 + 18) contents];
        if (!v131)
        {
LABEL_258:
          v136 = 0;
          goto LABEL_268;
        }

        v132 = v131;
        pixelBufferb = v129;
        if (CVPixelBufferGetPixelFormatType(v124) == 1650946098)
        {
          valuePtr = 3;
          v133 = 1;
          v134 = 3;
          goto LABEL_245;
        }

        if (CVPixelBufferGetPixelFormatType(v124) != 1651798066)
        {
          v134 = 0;
          v133 = 0;
          goto LABEL_245;
        }

        valuePtr = 255;
        v135 = CVBufferCopyAttachment(v124, v207, 0);
        v136 = v135;
        if (v135)
        {
          v137 = CFGetTypeID(v135);
          if (v137 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v136, kCFNumberSInt32Type, &valuePtr);
            v133 = 1;
          }

          else
          {
            v133 = 0;
          }

          CFRelease(v136);
          v134 = valuePtr;
          if (valuePtr != 255)
          {
LABEL_245:
            if (*v132 && v134 <= 3)
            {
              v134 = dword_18FED0660[v134];
            }

            if (*(v132 + 1) && v134 <= 3)
            {
              v134 = dword_18FED0670[v134];
            }

            if (*(v132 + 2))
            {
              if (v134 != 2)
              {
                if (v134 == 1)
                {
                  v134 = 2;
                }

                goto LABEL_255;
              }

              v134 = 1;
              if (!v133)
              {
LABEL_260:
                LODWORD(v227) = v134;
                v176 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v227);
                CVBufferSetAttachment(pixelBufferb, v207, v176, kCVAttachmentMode_ShouldNotPropagate);
                if (v176)
                {
                  CFRelease(v176);
                }

                v177 = [(__CFArray *)v211 computeCommandEncoder];
                v136 = v177;
                if (v209)
                {
                  v178 = v209;
                }

                else
                {
                  v178 = @"com.apple.VideoToolbox.VTMetalTransferSession";
                }

                [(__CFNumber *)v177 setLabel:v178];
                [(__CFNumber *)v136 setComputePipelineState:*(v103 + 12)];
                CVMetalBufferCacheCreateBufferFromImage();
                if (textureOut)
                {
                  CVMetalBufferCacheCreateBufferFromImage();
                  if (*&buffer[0])
                  {
                    *(v132 + 12) = CVPixelBufferGetBytesPerRow(v124);
                    *(v132 + 16) = CVPixelBufferGetBytesPerRow(pixelBufferb);
                    [(__CFNumber *)v136 setBuffer:CVMetalBufferGetBuffer() offset:0 atIndex:0];
                    [(__CFNumber *)v136 setBuffer:CVMetalBufferGetBuffer() offset:0 atIndex:1];
                    [(__CFNumber *)v136 setBuffer:*(v103 + 18) offset:0 atIndex:2];
                    v227 = *(v103 + 200);
                    *&v228 = *(v103 + 27);
                    v243[0] = *(v103 + 14);
                    *&v243[1] = *(v103 + 30);
                    [(__CFNumber *)v136 dispatchThreads:&v227 threadsPerThreadgroup:v243];
                  }

                  else
                  {
                    vtMetalTransferSessionTransferImageCommonSync_cold_9();
                  }
                }

                else
                {
                  vtMetalTransferSessionTransferImageCommonSync_cold_10();
                }

                goto LABEL_268;
              }
            }

            else
            {
LABEL_255:
              if (!v133)
              {
                goto LABEL_260;
              }
            }

            v175 = CVPixelBufferGetPixelFormatType(pixelBufferb);
            if (v134 || v175 != 1650946098)
            {
              goto LABEL_260;
            }
          }

          goto LABEL_258;
        }

LABEL_268:
        v23 = v218;
        v101 = v222;
      }

      else
      {
        vtMetalTransferSessionTransferImageCommonSync_cold_12();
        v136 = 0;
        v23 = v218;
      }

      if (textureOut)
      {
        CFRelease(textureOut);
      }

      if (*&buffer[0])
      {
        CFRelease(*&buffer[0]);
      }

      if (v136)
      {
        [(__CFNumber *)v136 endEncoding];
      }

      v100 = v226;
      goto LABEL_276;
    }

    v106 = CFArrayGetValueAtIndex(v204, v101);
    if (*(v103 + 9))
    {
      pixelBuffera = v23[223];
      v107 = CFGetTypeID(v103);
      MEMORY[0x193AE3010](&_MergedGlobals_1, RegisterVTMTSRenderPassDescriptor);
      if (v107 != _MergedGlobals_393)
      {
        v179 = 17055;
        goto LABEL_286;
      }

      v108 = *(v103 + 34);
      if (!v108 || (v109 = CFGetTypeID(v108), v109 != CFArrayGetTypeID()))
      {
        v179 = 17056;
        goto LABEL_286;
      }

      if (!v106 || (v110 = CFGetTypeID(v106), v110 != CFArrayGetTypeID()))
      {
        v179 = 17057;
        goto LABEL_286;
      }

      v111 = CFArrayGetCount(v106);
      v112 = *(v103 + 34);
      if (v112)
      {
        v112 = CFArrayGetCount(v112);
      }

      if (v111 != v112)
      {
        v179 = 17059;
LABEL_286:
        if (!vtMetalTransferSessionTransferImageCommonSync_cold_6(v179, &v227))
        {
          goto LABEL_337;
        }

        goto LABEL_276;
      }

      v113 = [MEMORY[0x1E6974128] renderPassDescriptor];
      if (v103[65])
      {
        if (v103[66])
        {
          v114 = *(v103 + 414);
          DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
          if (!DescriptionWithPixelFormatType || (CFDictionaryGetValue(DescriptionWithPixelFormatType, v202), v116 = FigCFEqual(), v117 = 0.5, !v116))
          {
            v117 = 0.0;
          }

          v118 = v117;
          if (v114 == 2)
          {
            v119 = 1.0;
          }

          else
          {
            v119 = 0.0;
          }

          if (v114 == 2)
          {
            v120 = 0.0;
          }

          else
          {
            v120 = v117;
          }

          if (v114 != 2)
          {
            v118 = 1.0;
          }

          if (v114 == 3)
          {
            v119 = v117;
            v120 = 0.0;
            v118 = 1.0;
          }

          if (v114 == 1)
          {
            v119 = v117;
            v120 = v117;
            v117 = 0.0;
            v121 = 1.0;
          }

          else
          {
            v121 = v118;
          }

          [objc_msgSend(objc_msgSend(v113 "colorAttachments")];
          v122 = 2;
        }

        else
        {
          v122 = 1;
        }

        [objc_msgSend(objc_msgSend(v113 "colorAttachments")];
        [objc_msgSend(objc_msgSend(v113 "colorAttachments")];
      }

      v157 = *(v103 + 34);
      if (v157)
      {
        v158 = 0;
        v159 = 1;
        do
        {
          if (CFArrayGetCount(v157) <= v158)
          {
            break;
          }

          v160 = CFArrayGetValueAtIndex(*(v103 + 34), v158);
          if (v160[16] == 1)
          {
            [objc_msgSend(objc_msgSend(v113 "colorAttachments")];
          }

          v158 = v159;
          v157 = *(v103 + 34);
          ++v159;
        }

        while (v157);
      }

      v161 = [(__CFArray *)v211 renderCommandEncoderWithDescriptor:v113];
      [v161 setVertexBuffer:*(v103 + 10) offset:0 atIndex:0];
      [v161 setVertexBuffer:*(v103 + 11) offset:0 atIndex:1];
      [v161 setFragmentBuffer:*(v103 + 13) offset:0 atIndex:0];
      [v161 setFragmentBuffer:*(v103 + 14) offset:0 atIndex:1];
      [v161 setFragmentBuffer:*(v103 + 15) offset:0 atIndex:2];
      if (pixelBuffera)
      {
        v162 = pixelBuffera;
      }

      else
      {
        v162 = @"com.apple.VideoToolbox.VTMetalTransferSession";
      }

      pixelBufferc = v161;
      [v161 setLabel:v162];
      v163 = *(v103 + 34);
      if (v163)
      {
        v164 = 0;
        v165 = 1;
        do
        {
          if (CFArrayGetCount(v163) <= v164)
          {
            break;
          }

          v166 = CFArrayGetValueAtIndex(*(v103 + 34), v164);
          if (!v166[16])
          {
            v167 = v166;
            v168 = v106;
            v169 = v167[12];
            v170 = v168;
            v171 = CFArrayGetValueAtIndex(v168, v164);
            v172 = v167[11];
            if (v169)
            {
              [(__CVBuffer *)pixelBufferc setFragmentTexture:v171 atTextureIndex:v172 samplerState:v213[v167[12]] atSamplerIndex:v167[13]];
            }

            else
            {
              [(__CVBuffer *)pixelBufferc setFragmentTexture:v171 atIndex:v172];
            }

            v106 = v170;
          }

          v164 = v165;
          v163 = *(v103 + 34);
          ++v165;
        }

        while (v163);
      }

      v173 = *(v103 + 273);
      if (v173)
      {
        [(__CVBuffer *)pixelBufferc setFragmentTexture:v173 atIndex:*(v103 + 95)];
      }

      v174 = *(v103 + 274);
      v23 = v218;
      v101 = v222;
      v100 = v226;
      if (v174)
      {
        [(__CVBuffer *)pixelBufferc setFragmentTexture:v174 atIndex:*(v103 + 96)];
      }

      [(__CVBuffer *)pixelBufferc setRenderPipelineState:*(v103 + 9)];
      [(__CVBuffer *)pixelBufferc drawPrimitives:4 vertexStart:0 vertexCount:4];
      if (pixelBufferc)
      {
        v156 = pixelBufferc;
        goto LABEL_242;
      }
    }

    else if (*(v103 + 12))
    {
      v138 = v23[223];
      v139 = CFGetTypeID(v103);
      MEMORY[0x193AE3010](&_MergedGlobals_1, RegisterVTMTSRenderPassDescriptor);
      if (v139 != _MergedGlobals_393)
      {
        v180 = 17138;
        goto LABEL_293;
      }

      v140 = *(v103 + 34);
      if (!v140 || (v141 = CFGetTypeID(v140), v141 != CFArrayGetTypeID()))
      {
        v180 = 17139;
LABEL_293:
        v23 = v218;
        goto LABEL_294;
      }

      if (!v106 || (v142 = CFGetTypeID(v106), v142 != CFArrayGetTypeID()))
      {
        v180 = 17140;
        goto LABEL_293;
      }

      v143 = CFArrayGetCount(v106);
      v144 = *(v103 + 34);
      if (v144)
      {
        v144 = CFArrayGetCount(v144);
      }

      if (v143 != v144)
      {
        v180 = 17142;
        v23 = v218;
LABEL_294:
        if (!vtMetalTransferSessionTransferImageCommonSync_cold_6(v180, &v227))
        {
LABEL_337:
          v31 = v227;
          goto LABEL_328;
        }

        goto LABEL_276;
      }

      v145 = [(__CFArray *)v211 computeCommandEncoder];
      v146 = v145;
      if (v138)
      {
        v147 = v138;
      }

      else
      {
        v147 = @"com.apple.VideoToolbox.VTMetalTransferSession";
      }

      [v145 setLabel:v147];
      [v146 setComputePipelineState:*(v103 + 12)];
      [v146 setBuffer:*(v103 + 13) offset:0 atIndex:0];
      [v146 setBuffer:*(v103 + 14) offset:0 atIndex:1];
      [v146 setBuffer:*(v103 + 15) offset:0 atIndex:2];
      [v146 setBuffer:*(v103 + 16) offset:0 atIndex:3];
      v148 = *(v103 + 34);
      if (v148)
      {
        v149 = 0;
        v150 = 1;
        do
        {
          if (CFArrayGetCount(v148) <= v149)
          {
            break;
          }

          v151 = CFArrayGetValueAtIndex(*(v103 + 34), v149);
          if (!v151[16])
          {
            [v146 setTexture:CFArrayGetValueAtIndex(v106 atIndex:{v149), v151[11]}];
          }

          v152 = v151[12];
          if (v152)
          {
            [v146 setSamplerState:v213[v152] atIndex:v151[13]];
          }

          v149 = v150;
          v148 = *(v103 + 34);
          ++v150;
        }

        while (v148);
      }

      v153 = *(v103 + 273);
      if (v153)
      {
        [v146 setTexture:v153 atIndex:*(v103 + 95)];
      }

      v154 = *(v103 + 274);
      v23 = v218;
      v101 = v222;
      v100 = v226;
      if (v154)
      {
        [v146 setTexture:v154 atIndex:*(v103 + 96)];
      }

      v155 = *(v103 + 275);
      if (v155)
      {
        [v146 setTexture:v155 atIndex:*(v103 + 97)];
      }

      if (v103[64])
      {
        [v146 setThreadgroupMemoryLength:16 * *(v103 + 28) atIndex:0];
      }

      v227 = *(v103 + 248);
      *&v228 = *(v103 + 33);
      v243[0] = *(v103 + 14);
      *&v243[1] = *(v103 + 30);
      [v146 dispatchThreadgroups:&v227 threadsPerThreadgroup:v243];
      if (v146)
      {
        v156 = v146;
LABEL_242:
        [(__CVBuffer *)v156 endEncoding];
      }
    }

LABEL_276:
    ++v101;
LABEL_277:
    v99 = (v100 + 1);
    v98 = v23[269];
    ++v100;
    if (!v98)
    {
      break;
    }
  }

  if (([(__CFArray *)v211 commitAndWaitUntilSubmitted]& 1) == 0)
  {
    [(__CFArray *)v211 waitUntilScheduled];
  }

  v97 = context;
  v33 = v204;
  if (*(v23 + 1808))
  {
    [(__CFArray *)v211 waitUntilCompleted];
  }

  [(__CFArray *)v211 GPUEndTime];
  v183 = v182;
  [(__CFArray *)v211 GPUStartTime];
  v185 = v184;
  if ([(__CFArray *)v211 error])
  {
    v31 = 4294954394;
    goto LABEL_304;
  }

  v181 = v183 - v185 + 0.0;
LABEL_309:
  objc_autoreleasePoolPop(v97);
  v31 = 0;
LABEL_310:
  v32 = 0;
  *(v23 + 241) = v181;
LABEL_311:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  Mutable = theArray;
LABEL_316:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v241)
  {
    CFRelease(v241);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v31;
}

uint64_t VTMetalTransferSessionCompositeImageSync(const void *a1, const void *a2, void *a3, const void *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  values[0] = a3;
  if (!a1 || (v9 = CFGetTypeID(a1), v9 != VTPixelTransferNodeGetTypeID()))
  {
    VTMetalTransferSessionCompositeImageSync_cold_5(&v18);
LABEL_18:
    v16 = v18;
    goto LABEL_12;
  }

  if (!a2 || (v10 = CFGetTypeID(a2), v10 != CFArrayGetTypeID()))
  {
    VTMetalTransferSessionCompositeImageSync_cold_4(&v18);
    goto LABEL_18;
  }

  if (!a3 || (v11 = CFGetTypeID(a3), v11 != CVPixelBufferGetTypeID()))
  {
    VTMetalTransferSessionCompositeImageSync_cold_3(&v18);
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 22))
  {
    VTMetalTransferSessionCompositeImageSync_cold_1(&v18);
    goto LABEL_18;
  }

  v13 = DerivedStorage;
  if (a4)
  {
    v14 = CFGetTypeID(a4);
    if (v14 != CFDictionaryGetTypeID())
    {
      VTMetalTransferSessionCompositeImageSync_cold_2(&v18);
      goto LABEL_18;
    }
  }

  v15 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  *(v13 + 24) = 2;
  v16 = vtMetalTransferSessionTransferImageCommonSync(a1, a2, v15, a4);
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_12:
  objc_autoreleasePoolPop(v8);
  return v16;
}

uint64_t VTMetalTransferSessionGetRequiredAlignment(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v5 = *(DerivedStorage + 2000)) != 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = MTLCreateSystemDefaultDevice();
    v6 = v5;
    if (!v5)
    {
      v7 = 0;
      v8 = 4294954389;
      goto LABEL_7;
    }
  }

  v7 = [v5 iosurfaceTextureAlignmentBytes];
  v8 = 0;
LABEL_7:
  *a2 = v7;

  objc_autoreleasePoolPop(v3);
  return v8;
}

uint64_t VTMetalTransferSessionCanDoHighQualityScaling(uint64_t a1, int a2)
{
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x193AE3010](&sReadGlobalVTMTSPropertiesOnce_0, ReadGlobalVTMTSProperties_0);
  v5 = byte_1ED6D43A3;
  if (byte_1ED6D43A3)
  {
    if (vtmtsGetIntermediateScalingFormat((DerivedStorage + 2161), a2, 0, 0, 0, 0))
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

uint64_t vtmtsGetIntermediateScalingFormat(unsigned __int8 *a1, int a2, int *a3, uint64_t a4, int a5, int *a6)
{
  v30 = 0;
  if (a2 > 1380410944)
  {
    if (a2 > 1983013175)
    {
      if (a2 > 2021077551)
      {
        if (a2 > 2084070959)
        {
          if (a2 <= 2088265263)
          {
            if (a2 != 2084070960)
            {
              if (a2 != 2084075056)
              {
                v10 = 2084718401;
                goto LABEL_226;
              }

              goto LABEL_206;
            }

            goto LABEL_212;
          }

          if (a2 > 2088269359)
          {
            if (a2 != 2088269360)
            {
              v15 = 2088269362;
LABEL_237:
              if (a2 != v15)
              {
                goto LABEL_351;
              }

LABEL_268:
              getKernelTypeCapabilities_source(a1, a2, &v30 + 1, &v30);
              if (v30)
              {
LABEL_269:
                if (a4)
                {
                  *a4 = xmmword_18FED0590;
                  *(a4 + 16) = 0;
                  *(a4 + 24) = 0;
                }

                if (!a3 || a5 != 1)
                {
                  goto LABEL_347;
                }

                v22 = 2016686640;
                goto LABEL_274;
              }

              return 4294954391;
            }

            goto LABEL_239;
          }

          if (a2 != 2088265264)
          {
            v17 = 2088265266;
            goto LABEL_137;
          }

          goto LABEL_255;
        }

        if (a2 <= 2021078127)
        {
          if (a2 == 2021077552)
          {
            if (a4)
            {
              *a4 = xmmword_18FED0590;
              *(a4 + 16) = 0;
              *(a4 + 24) = 0;
            }

            if (!a3 || a5 != 1)
            {
              goto LABEL_347;
            }

            v26 = 1114112;
            v27 = 2019963440;
LABEL_202:
            v19 = v27 | v26;
            goto LABEL_346;
          }

          if (a2 == 2021077554)
          {
            if (a4)
            {
              *a4 = xmmword_18FED0590;
              *(a4 + 16) = 0;
              *(a4 + 24) = 0;
            }

            if (!a3 || a5 != 1)
            {
              goto LABEL_347;
            }

            v19 = 2021077554;
            goto LABEL_346;
          }

          if (a2 != 2021078068)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (a2 > 2037741157)
          {
            if (a2 == 2037741158)
            {
              goto LABEL_263;
            }

            v11 = 2037741171;
            goto LABEL_196;
          }

          if (a2 != 2021078128)
          {
            if (a2 != 2033463606)
            {
              goto LABEL_351;
            }

LABEL_29:
            if (a4)
            {
              *a4 = 110;
              *(a4 + 8) = 0;
              *(a4 + 16) = 0;
              *(a4 + 24) = 0;
            }

            if (!a3)
            {
              goto LABEL_305;
            }

            v12 = 2033463606;
            goto LABEL_304;
          }
        }

        if (a4)
        {
          *a4 = xmmword_18FED0590;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
        }

        if (!a3)
        {
          goto LABEL_347;
        }

        v19 = 2021078068;
        goto LABEL_346;
      }

      if (a2 <= 2016687155)
      {
        if (a2 > 2016567666)
        {
          if (a2 == 2016567667)
          {
            if (a4)
            {
              *a4 = xmmword_18FED0590;
              *(a4 + 16) = xmmword_18FED05C0;
            }

            if (!a3 || a5 != 1)
            {
              goto LABEL_347;
            }

            v19 = 2016567667;
            goto LABEL_346;
          }

          if (a2 != 2016686640)
          {
            if (a2 != 2016686642)
            {
              goto LABEL_351;
            }

            goto LABEL_269;
          }

          goto LABEL_240;
        }

        if (a2 == 1983013176)
        {
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = xmmword_18FED05C0;
          }

          if (!a3 || a5 != 1)
          {
            goto LABEL_347;
          }

          v19 = 1983013176;
          goto LABEL_346;
        }

        if (a2 == 1983144248)
        {
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = xmmword_18FED05C0;
          }

          if (!a3)
          {
            goto LABEL_347;
          }

          v19 = 1983144248;
          goto LABEL_346;
        }

        v10 = 1999843442;
        goto LABEL_226;
      }

      if (a2 > 2019963439)
      {
        if (a2 > 2019963955)
        {
          if (a2 != 2019963956 && a2 != 2019964016)
          {
            goto LABEL_351;
          }

LABEL_278:
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
          }

          if (!a3)
          {
            goto LABEL_347;
          }

          v24 = 2019963440;
          goto LABEL_345;
        }

        if (a2 != 2019963440)
        {
          if (a2 != 2019963442)
          {
            goto LABEL_351;
          }

LABEL_139:
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
          }

          if (!a3 || a5 != 1)
          {
            goto LABEL_347;
          }

          v22 = 2019963440;
          goto LABEL_274;
        }

LABEL_256:
        if (a4)
        {
          *a4 = xmmword_18FED0590;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
        }

        if (!a3 || a5 != 1)
        {
          goto LABEL_347;
        }

        v19 = 2019963440;
        goto LABEL_346;
      }

      if (a2 == 2016687156 || a2 == 2016687216)
      {
LABEL_175:
        if (a4)
        {
          *a4 = xmmword_18FED0590;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
        }

        if (!a3)
        {
          goto LABEL_347;
        }

        v24 = 2016686640;
        goto LABEL_345;
      }

      if (a2 != 2016698739)
      {
        goto LABEL_351;
      }

      if (a4)
      {
        *a4 = xmmword_18FED0590;
        *(a4 + 16) = xmmword_18FED05C0;
      }

      if (!a3)
      {
        goto LABEL_305;
      }

      v12 = 2016698739;
      goto LABEL_304;
    }

    if (a2 > 1885745713)
    {
      if (a2 <= 1937125935)
      {
        if (a2 > 1932812658)
        {
          if (a2 <= 1936077361)
          {
            if (a2 != 1932812659)
            {
              if (a2 != 1936077360)
              {
                goto LABEL_351;
              }

              goto LABEL_282;
            }

            goto LABEL_29;
          }

          if (a2 == 1936077362)
          {
LABEL_282:
            if (a4)
            {
              *a4 = xmmword_18FED05A0;
              *(a4 + 16) = 0;
              *(a4 + 24) = 0;
            }

            if (!a3 || a5 != 1)
            {
              goto LABEL_305;
            }

            v12 = 1936077362;
            goto LABEL_304;
          }

          if (a2 != 1936077876)
          {
            goto LABEL_351;
          }

          if (a4)
          {
            *a4 = xmmword_18FED05A0;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
          }

          if (a3)
          {
            v12 = 1936077876;
            goto LABEL_304;
          }

LABEL_305:
          result = 0;
          if (!a6)
          {
            return result;
          }

          v29 = 2;
          goto LABEL_349;
        }

        if (a2 == 1885745714)
        {
          goto LABEL_138;
        }

        if (a2 == 1915892016)
        {
          goto LABEL_227;
        }

        if (a2 != 1932681587)
        {
          goto LABEL_351;
        }

        if (a4)
        {
          *a4 = xmmword_18FED05A0;
          *(a4 + 16) = xmmword_18FED05B0;
        }

        if (!a3 || a5 != 1)
        {
          goto LABEL_305;
        }

        v12 = 1932681587;
LABEL_304:
        *a3 = v12;
        goto LABEL_305;
      }

      if (a2 <= 1949458802)
      {
        if (a2 != 1937125936 && a2 != 1937125938)
        {
          if (a2 != 1937126452)
          {
            goto LABEL_351;
          }

          if (a4)
          {
            *a4 = xmmword_18FED05A0;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
          }

          if (!a3)
          {
            goto LABEL_305;
          }

          v12 = 1937126452;
          goto LABEL_304;
        }
      }

      else
      {
        if (a2 <= 1982882103)
        {
          if (a2 == 1949458803)
          {
            if (a4)
            {
              *a4 = xmmword_18FED05A0;
              *(a4 + 16) = xmmword_18FED05B0;
            }

            if (!a3 || a5 != 1)
            {
              goto LABEL_305;
            }

            v12 = 1949458803;
            goto LABEL_304;
          }

          if (a2 != 1949589875)
          {
            goto LABEL_351;
          }

          if (a4)
          {
            *a4 = xmmword_18FED05A0;
            *(a4 + 16) = xmmword_18FED05B0;
          }

          if (!a3)
          {
            goto LABEL_305;
          }

          v12 = 1949589875;
          goto LABEL_304;
        }

        if (a2 == 1982882104)
        {
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = xmmword_18FED05C0;
          }

          if (!a3 || a5 != 1)
          {
            goto LABEL_347;
          }

          v19 = 1982882104;
          goto LABEL_346;
        }

        if (a2 != 1983000886)
        {
          goto LABEL_351;
        }
      }

      if (a4)
      {
        *a4 = xmmword_18FED05A0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
      }

      if (!a3 || a5 != 1)
      {
        goto LABEL_305;
      }

      v12 = 1937125938;
      goto LABEL_304;
    }

    if (a2 > 1751527985)
    {
      if (a2 <= 1815491697)
      {
        if (a2 == 1751527986)
        {
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
          }

          if (!a3 || a5 != 1)
          {
            goto LABEL_347;
          }

          v22 = 1751527984;
LABEL_274:
          v19 = v22 | 2;
          goto LABEL_346;
        }

        if (a2 != 1751528500)
        {
          v10 = 1815162994;
          goto LABEL_226;
        }

        if (a4)
        {
          *a4 = xmmword_18FED0590;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
        }

        if (!a3)
        {
          goto LABEL_347;
        }

        v24 = 1751527984;
LABEL_345:
        v19 = v24 + 516;
        goto LABEL_346;
      }

      if (a2 > 1882468913)
      {
        if (a2 == 1882468914)
        {
          goto LABEL_268;
        }

        v23 = 1885745712;
LABEL_254:
        if (a2 != v23)
        {
          goto LABEL_351;
        }

LABEL_255:
        getKernelTypeCapabilities_source(a1, a2, &v30 + 1, &v30);
        if (!v30)
        {
          return 4294954391;
        }

        goto LABEL_256;
      }

      if (a2 != 1815491698)
      {
        v14 = 1882468912;
LABEL_48:
        if (a2 != v14)
        {
          goto LABEL_351;
        }

        goto LABEL_239;
      }

      goto LABEL_287;
    }

    if (a2 > 1647534391)
    {
      if (a2 == 1647534392)
      {
        goto LABEL_227;
      }

      if (a2 != 1651521076)
      {
        if (a2 == 1751527984)
        {
          if (a4)
          {
            *a4 = xmmword_18FED0590;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
          }

          if (!a3 || a5 != 1)
          {
            goto LABEL_347;
          }

          v19 = 1751527984;
          goto LABEL_346;
        }

        goto LABEL_351;
      }
    }

    else
    {
      if (a2 == 1380410945)
      {
LABEL_287:
        if (a4)
        {
          *a4 = 125;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
        }

        if (!a3)
        {
          goto LABEL_305;
        }

        v12 = 1380410945;
        goto LABEL_304;
      }

      if (a2 == 1380411457)
      {
        goto LABEL_227;
      }

      if (a2 != 1647392369)
      {
        goto LABEL_351;
      }
    }

    if (a4)
    {
      *a4 = 115;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    if (!a3)
    {
      goto LABEL_305;
    }

    v12 = 1380411457;
    goto LABEL_304;
  }

  if (a2 <= 759318336)
  {
    if (a2 > 642527335)
    {
      if (a2 <= 645346161)
      {
        if (a2 > 642934848)
        {
          if (a2 <= 644232303)
          {
            if (a2 != 642934849)
            {
              v10 = 643969848;
              goto LABEL_226;
            }

LABEL_227:
            if (a4)
            {
              *a4 = 115;
              *(a4 + 8) = 0;
              *(a4 + 16) = 0;
              *(a4 + 24) = 0;
            }

            if (!a3)
            {
              goto LABEL_347;
            }

            v19 = 1380411457;
LABEL_346:
            *a3 = v19;
LABEL_347:
            result = 0;
            if (!a6)
            {
              return result;
            }

            v29 = 1;
            goto LABEL_349;
          }

          if (a2 != 644232304)
          {
            v10 = 644624754;
            goto LABEL_226;
          }

          goto LABEL_278;
        }

        if (a2 != 642527336 && a2 != 642527536)
        {
          v20 = 642527542;
          goto LABEL_154;
        }

        goto LABEL_248;
      }

      if (a2 > 645428783)
      {
        if (a2 <= 758670895)
        {
          if (a2 != 645428784)
          {
            v15 = 645428786;
            goto LABEL_237;
          }

          goto LABEL_239;
        }

        if (a2 != 758670896)
        {
          v21 = 758674992;
LABEL_205:
          if (a2 != v21)
          {
            goto LABEL_351;
          }

          goto LABEL_206;
        }

LABEL_212:
        if (a4)
        {
          *a4 = xmmword_18FED0590;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
        }

        if (!a3 || a5 != 1)
        {
          goto LABEL_347;
        }

        v19 = 875704422;
        goto LABEL_346;
      }

      if (a2 == 645346162)
      {
        goto LABEL_227;
      }

      if (a2 != 645424688)
      {
        v17 = 645424690;
LABEL_137:
        if (a2 != v17)
        {
          goto LABEL_351;
        }

LABEL_138:
        getKernelTypeCapabilities_source(a1, a2, &v30 + 1, &v30);
        if (!v30)
        {
          return 4294954391;
        }

        goto LABEL_139;
      }

      goto LABEL_255;
    }

    if (a2 > 641230385)
    {
      if (a2 > 641234481)
      {
        if (a2 <= 641877824)
        {
          if (a2 != 641234482)
          {
            v13 = 641234484;
LABEL_189:
            if (a2 != v13)
            {
              goto LABEL_351;
            }

            if (a4)
            {
              *a4 = xmmword_18FED0590;
              *(a4 + 16) = 0;
              *(a4 + 24) = 0;
            }

            if (!a3)
            {
              goto LABEL_347;
            }

            v25 = 875836518;
LABEL_211:
            v19 = v25 | 0x10;
            goto LABEL_346;
          }

          goto LABEL_197;
        }

        if (a2 == 641877825)
        {
          goto LABEL_227;
        }

        v16 = 642527288;
LABEL_247:
        if (a2 != v16)
        {
          goto LABEL_351;
        }

        goto LABEL_248;
      }

      if (a2 != 641230386)
      {
        if (a2 != 641230388)
        {
          v21 = 641234480;
          goto LABEL_205;
        }

        goto LABEL_291;
      }

      goto LABEL_263;
    }

    if (a2 <= 590902831)
    {
      if (a2 == 32)
      {
        goto LABEL_227;
      }

      if (a2 == 40)
      {
        goto LABEL_248;
      }

      v18 = 590898736;
      goto LABEL_107;
    }

    if (a2 != 590902832)
    {
      if (a2 != 640955504)
      {
        v18 = 641230384;
LABEL_107:
        if (a2 != v18)
        {
          goto LABEL_351;
        }

        goto LABEL_212;
      }

      goto LABEL_175;
    }

LABEL_206:
    if (a4)
    {
      *a4 = xmmword_18FED0590;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    if (!a3 || a5 != 1)
    {
      goto LABEL_347;
    }

    v25 = 875704422;
    goto LABEL_211;
  }

  if (a2 <= 846624120)
  {
    if (a2 <= 792229423)
    {
      if (a2 <= 762869295)
      {
        if (a2 == 759318337)
        {
          goto LABEL_227;
        }

        if (a2 != 762865200)
        {
          v17 = 762865202;
          goto LABEL_137;
        }

        goto LABEL_255;
      }

      if (a2 != 762869296)
      {
        if (a2 == 762869298)
        {
          goto LABEL_268;
        }

        v18 = 792225328;
        goto LABEL_107;
      }

LABEL_239:
      getKernelTypeCapabilities_source(a1, a2, &v30 + 1, &v30);
      if (!v30)
      {
        return 4294954391;
      }

LABEL_240:
      if (a4)
      {
        *a4 = xmmword_18FED0590;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
      }

      if (!a3 || a5 != 1)
      {
        goto LABEL_347;
      }

      v19 = 2016686640;
      goto LABEL_346;
    }

    if (a2 > 796419633)
    {
      if (a2 > 796423729)
      {
        if (a2 == 796423730)
        {
          goto LABEL_268;
        }

        if (a2 != 846624102)
        {
          goto LABEL_351;
        }

        goto LABEL_263;
      }

      if (a2 == 796419634)
      {
        goto LABEL_138;
      }

      v14 = 796423728;
      goto LABEL_48;
    }

    if (a2 == 792229424)
    {
      goto LABEL_206;
    }

    if (a2 == 792872769)
    {
      goto LABEL_227;
    }

    v23 = 796419632;
    goto LABEL_254;
  }

  if (a2 <= 1111970368)
  {
    if (a2 <= 875704933)
    {
      if (a2 != 846624121)
      {
        if (a2 != 875704422)
        {
          v21 = 875704438;
          goto LABEL_205;
        }

        goto LABEL_212;
      }

      goto LABEL_197;
    }

    if (a2 > 875836517)
    {
      if (a2 != 875836518)
      {
        v13 = 875836534;
        goto LABEL_189;
      }

LABEL_291:
      if (a4)
      {
        *a4 = xmmword_18FED0590;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
      }

      if (!a3)
      {
        goto LABEL_347;
      }

      v19 = 875836518;
      goto LABEL_346;
    }

    if (a2 == 875704934)
    {
LABEL_263:
      if (a4)
      {
        *a4 = xmmword_18FED0590;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
      }

      if (!a3 || a5 != 1)
      {
        goto LABEL_347;
      }

      v19 = 875704934;
      goto LABEL_346;
    }

    v11 = 875704950;
LABEL_196:
    if (a2 != v11)
    {
      goto LABEL_351;
    }

LABEL_197:
    if (a4)
    {
      *a4 = xmmword_18FED0590;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    if (!a3 || a5 != 1)
    {
      goto LABEL_347;
    }

    v26 = 528;
    v27 = 875704422;
    goto LABEL_202;
  }

  if (a2 <= 1278226535)
  {
    if (a2 == 1111970369)
    {
      goto LABEL_227;
    }

    if (a2 != 1278226488)
    {
      v20 = 1278226534;
LABEL_154:
      if (a2 != v20)
      {
        goto LABEL_351;
      }

      goto LABEL_231;
    }

LABEL_248:
    if (a4)
    {
      *a4 = 25;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    if (!a3)
    {
      goto LABEL_347;
    }

    v19 = 1278226536;
    goto LABEL_346;
  }

  if (a2 <= 1278226741)
  {
    if (a2 == 1278226536)
    {
      goto LABEL_248;
    }

    v16 = 1278226736;
    goto LABEL_247;
  }

  if (a2 == 1278226742)
  {
LABEL_231:
    if (a4)
    {
      *a4 = 55;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    if (!a3)
    {
      goto LABEL_305;
    }

    v12 = 1278226534;
    goto LABEL_304;
  }

  v10 = 1378955371;
LABEL_226:
  if (a2 == v10)
  {
    goto LABEL_227;
  }

LABEL_351:
  if (a4)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  if (a3)
  {
    *a3 = 0;
  }

  result = 4294954391;
  if (a6)
  {
    v29 = 0;
LABEL_349:
    *a6 = v29;
  }

  return result;
}