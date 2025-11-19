uint64_t vt_Copy_RGhA_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v18 = *a6;
  v40 = a6[1];
  v41 = v17;
  v42 = a6[2];
  v43 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v40.i8[-v21];
    bzero(&v40 - v21, v22);
  }

  v23 = a9;
  v24 = v42;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v41), v45), vsubq_s64(v45, v44), v41);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v40), v43), vsubq_s64(v43, v42), v40);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v44, v25);
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 8 * v28.i64[0]) <= *a5)
  {
    v32 = vaddq_s64((*&v42 + __PAIR128__(-1, 0)), v27);
    if (v32.i64[0] + *a8 * v32.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v32.i64[1] + 2 * v32.i64[0]) > a9[1])
      {
        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }

      else
      {
        if (!*(a7 + 16) || v32.i64[0] + a8[2] * v32.i64[1] <= a9[2])
        {
          goto LABEL_16;
        }

        v40 = v27;
        v41.i64[0] = a9;
        v29 = a5;
        v30 = a7;
        v31 = v13;
      }
    }

    else
    {
      v40 = v27;
      v41.i64[0] = a9;
      v29 = a5;
      v30 = a7;
      v31 = v13;
    }
  }

  else
  {
    v40 = v27;
    v41.i64[0] = a9;
    v29 = a5;
    v30 = a7;
    v31 = v13;
  }

  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  v13 = v31;
  a7 = v30;
  a5 = v29;
  v24 = v42;
  v23 = v41.i64[0];
  v27 = v40;
  if (v33)
  {
    v20 = v33;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v34 = v44;
  *(v19 + 4) = v45;
  *(v19 + 20) = v27;
  *(v19 + 36) = v34;
  *(v19 + 5) = v43;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v36 = (v19 + 160);
  v37 = v15;
  while (1)
  {
    v38 = *v36++;
    v20 = v38;
    if (v38)
    {
      break;
    }

    if (!--v37)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v14 + 136);
    LOWORD(a4) = *(v14 + 144);
    v22 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v30 = *(v14 + 48);
    v31 = *(v14 + 52);
    v32 = *(v14 + 56);
    v33 = *(v14 + 60);
    v34 = *(v14 + 64);
    v35 = *(v14 + 68);
    v36 = *(result + 14);
    v37 = v10 + *(result + 15);
    v38 = *(result + 28) * a2 / v8 + *(result + 44);
    v39 = *(v14 + 157);
    v40 = *(v14 + 156);
    v41 = *(v14 + 155);
    v42 = *(v14 + 154);
    v43 = v16[2];
    if (v43)
    {
      v44 = (v43 + v20 * v37 + v36);
    }

    else
    {
      v44 = 0;
    }

    v46 = *v16;
    v45 = v16[1];
    v47 = (v45 + v19 * v37 + v36);
    if (!v45)
    {
      v47 = 0;
    }

    v48 = (v46 + v18 * v37 + v36);
    v49 = **(result + 7) + v38 * v15 + 8 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v50 = v13;
        v51 = v49;
        v52 = v44;
        v53 = v47;
        v54 = v48;
        do
        {
          _H23 = *(v51 + 2 * v42);
          __asm { FCVT            S23, H23 }

          v61 = v21 * _S23;
          LOWORD(_S23) = *(v51 + 2 * v41);
          __asm { FCVT            S23, H23 }

          v63 = v21 * _S23;
          LOWORD(_S23) = *(v51 + 2 * v40);
          __asm { FCVT            S23, H23 }

          v65 = v21 * _S23;
          v66 = (((v28 * v63) + (v27 * v61)) + (v29 * (v21 * _S23))) + v22;
          v67 = v24;
          if (v66 <= v24)
          {
            v67 = v66;
            if (v66 < v22)
            {
              v67 = v22;
            }
          }

          _H23 = *(v51 + 2 * v39);
          *v54++ = llroundf(v67);
          if (v53)
          {
            v69 = ((v23 + (v61 * v30)) + (v63 * v31)) + (v65 * v32);
            v70 = v26;
            if (v69 <= v26)
            {
              v70 = ((v23 + (v61 * v30)) + (v63 * v31)) + (v65 * v32);
              if (v69 < v25)
              {
                v70 = v25;
              }
            }

            v71 = ((v23 + (v61 * v33)) + (v63 * v34)) + (v65 * v35);
            *v53 = llroundf(v70);
            v72 = v26;
            if (v71 <= v26)
            {
              v72 = v71;
              if (v71 < v25)
              {
                v72 = v25;
              }
            }

            v53[1] = llroundf(v72);
            v53 += 2;
          }

          if (v52)
          {
            __asm { FCVT            S23, H23 }

            *v52++ = llroundf(_S23 * 255.0);
          }

          v51 += 8;
          --v50;
        }

        while (v50);
      }

      v49 += v15;
      v48 += v18;
      v47 += v19;
      v44 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int16 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint16x8_t _Q7)
{
  v10 = 0;
  v159 = *(a1 + 36);
  v11 = *a1;
  v12 = *(a1 + 28) * a2 / v11 + *(a1 + 44);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  v16 = *(a1 + 12);
  v15 = *(a1 + 13);
  v17 = *(a1 + 19);
  v19 = *(a1 + 16);
  v18 = *(a1 + 17);
  v20 = **(a1 + 8);
  result = **(a1 + 7);
  v163 = *v18;
  v22 = v18[1];
  v23 = v18[2];
  v24 = v19[1];
  v156 = *v19;
  v25 = v19[2];
  v200 = *(v17 + 154);
  v26 = *(v17 + 144);
  v27 = *(v17 + 132);
  v28 = v15 * a2 / v11;
  v29 = v28 + v14;
  v30 = *(v17 + 146);
  v162 = v20;
  v31 = v24 + v22 * (v28 + v14);
  v32 = v25 + v23 * (v28 + v14);
  v33 = *(v17 + 148);
  v34 = *(v17 + 150);
  v35 = *(v17 + 152);
  _S14 = *(v17 + 36);
  _S15 = *(v17 + 40);
  v197 = *(v17 + 44);
  v174 = *(v17 + 52);
  v175 = *(v17 + 48);
  v172 = *(v17 + 60);
  v173 = *(v17 + 56);
  v170 = *(v17 + 68);
  v171 = *(v17 + 64);
  v196 = *(v17 + 72);
  v195 = *(v17 + 76);
  v194 = *(v17 + 80);
  v193 = *(v17 + 84);
  v192 = *(v17 + 88);
  v191 = *(v17 + 92);
  v190 = *(v17 + 96);
  v189 = *(v17 + 100);
  v188 = *(v17 + 104);
  v187 = *(v17 + 108);
  v186 = *(v17 + 112);
  v185 = *(v17 + 116);
  v184 = *(v17 + 120);
  memset(v199, 0, sizeof(v199));
  v38 = (v15 + v15 * a2) / v11;
  do
  {
    v39 = 0;
    v40 = *(&v200 + v10);
    v41 = *(v199 + v10);
    do
    {
      v198 = v41;
      *(&v198 | v39 & 7) = v40 + 4 * v39;
      v41 = v198;
      ++v39;
    }

    while (v39 != 8);
    *(v199 + v10++) = v198;
  }

  while (v10 != 4);
  v42 = v38 - v28;
  if (v38 - v28 >= 1)
  {
    v43 = 0;
    v44 = v26;
    v45 = v30;
    __asm { FCVT            H0, S14 }

    v183 = _H0;
    v51 = v33;
    __asm { FCVT            H0, S15 }

    v182 = _H0;
    v176 = v34;
    v53 = v35;
    _S0 = v197;
    __asm { FCVT            H0, S0 }

    v181 = *&_S0;
    v55 = v17 + 16548;
    _S0 = v175;
    __asm { FCVT            H0, S0 }

    v169 = *&_S0;
    _S0 = v174;
    __asm { FCVT            H0, S0 }

    v168 = *&_S0;
    v58 = 16 - v27;
    v59 = v17 + 32932;
    v60 = v17 + 164;
    _S0 = v173;
    __asm { FCVT            H0, S0 }

    v167 = *&_S0;
    _S0 = v172;
    __asm { FCVT            H0, S0 }

    v166 = *&_S0;
    _S0 = v171;
    __asm { FCVT            H0, S0 }

    v165 = *&_S0;
    _S0 = v170;
    __asm { FCVT            H0, S0 }

    v164 = *&_S0;
    _S0 = v187;
    __asm { FCVT            H0, S0 }

    v180 = *&_S0;
    _S0 = v186;
    __asm { FCVT            H0, S0 }

    v179 = *&_S0;
    _S0 = v185;
    __asm { FCVT            H0, S0 }

    v178 = *&_S0;
    _S0 = v184;
    __asm { FCVT            H0, S0 }

    v177 = *&_S0;
    _S0 = v196;
    __asm { FCVT            H4, S0 }

    _S0 = v195;
    __asm { FCVT            H5, S0 }

    _S0 = v194;
    __asm { FCVT            H6, S0 }

    v75 = (v31 + 2 * v13);
    _S0 = v193;
    __asm { FCVT            H0, S0 }

    _S1 = v192;
    __asm { FCVT            H1, S1 }

    _S2 = v191;
    __asm { FCVT            H2, S2 }

    _S3 = v190;
    __asm { FCVT            H11, S3 }

    *_Q7.i16 = v26;
    v84 = vdupq_lane_s16(*_Q7.i8, 0);
    *_Q7.i16 = v30;
    v85 = vdupq_lane_s16(*_Q7.i8, 0);
    *_Q7.i16 = v33;
    v86 = vdupq_lane_s16(*_Q7.i8, 0);
    if (_CF)
    {
      v58 = 0;
    }

    if (v25)
    {
      v87 = (v32 + 2 * v13);
    }

    else
    {
      v87 = 0;
    }

    *_Q7.i16 = v34;
    v88 = vdupq_lane_s16(*_Q7.i8, 0);
    if (v24)
    {
      v89 = v75;
    }

    else
    {
      v89 = 0;
    }

    *_Q7.i16 = v35;
    v90 = vdupq_lane_s16(*_Q7.i8, 0);
    _S3 = v189;
    __asm { FCVT            H8, S3 }

    v93 = v156 + v163 * v29 + 2 * v13;
    v94 = v58;
    v95 = vdupq_n_s16(v58);
    v96 = &result[4 * v159] + v20 * v12;
    _S3 = v188;
    __asm { FCVT            H10, S3 }

    v99.i64[0] = 0x7000700070007000;
    v99.i64[1] = 0x7000700070007000;
    v100.i64[0] = 0x9000900090009000;
    v100.i64[1] = 0x9000900090009000;
    v160 = _S15;
    v161 = _S14;
    do
    {
      if (v16 < 8)
      {
        v127 = 0;
        v105 = v93;
        v104 = v89;
        v103 = v87;
        v102 = v96;
      }

      else
      {
        v101 = 0;
        v102 = v96;
        v103 = v87;
        v104 = v89;
        v105 = v93;
        do
        {
          v202 = vld4q_s16(v102);
          v102 += 32;
          if (v103)
          {
            v106 = vdupq_n_s32(0x477FFF00u);
            v107 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*v202.val[3].i8), v106)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*&vextq_s8(v202.val[3], v202.val[3], 8uLL)), v106)));
          }

          else
          {
            v107 = 0uLL;
          }

          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v202.val[0], v99), 0), v100));
          v109.i16[0] = *(v60 + 2 * v108.u16[0]);
          v109.i16[1] = *(v60 + 2 * v108.u16[1]);
          v109.i16[2] = *(v60 + 2 * v108.u16[2]);
          v109.i16[3] = *(v60 + 2 * v108.u16[3]);
          v109.i16[4] = *(v60 + 2 * v108.u16[4]);
          v109.i16[5] = *(v60 + 2 * v108.u16[5]);
          v109.i16[6] = *(v60 + 2 * v108.u16[6]);
          v109.i16[7] = *(v60 + 2 * v108.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v202.val[1], v99), 0), v100));
          v111.i16[0] = *(v60 + 2 * v110.u16[0]);
          v111.i16[1] = *(v60 + 2 * v110.u16[1]);
          v111.i16[2] = *(v60 + 2 * v110.u16[2]);
          v111.i16[3] = *(v60 + 2 * v110.u16[3]);
          v111.i16[4] = *(v60 + 2 * v110.u16[4]);
          v111.i16[5] = *(v60 + 2 * v110.u16[5]);
          v111.i16[6] = *(v60 + 2 * v110.u16[6]);
          v111.i16[7] = *(v60 + 2 * v110.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v202.val[2], v99), 0), v100));
          v113.i16[0] = *(v60 + 2 * v112.u16[0]);
          v113.i16[1] = *(v60 + 2 * v112.u16[1]);
          v113.i16[2] = *(v60 + 2 * v112.u16[2]);
          v113.i16[3] = *(v60 + 2 * v112.u16[3]);
          v113.i16[4] = *(v60 + 2 * v112.u16[4]);
          v113.i16[5] = *(v60 + 2 * v112.u16[5]);
          v113.i16[6] = *(v60 + 2 * v112.u16[6]);
          v113.i16[7] = *(v60 + 2 * v112.u16[7]);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v180), v111, v179), v113, v178), vmaxq_f16(vmaxq_f16(v109, v111), v113), v177), 0), v100));
          v115.i16[0] = *(v55 + 2 * v114.u16[0]);
          v115.i16[1] = *(v55 + 2 * v114.u16[1]);
          v115.i16[2] = *(v55 + 2 * v114.u16[2]);
          v115.i16[3] = *(v55 + 2 * v114.u16[3]);
          v115.i16[4] = *(v55 + 2 * v114.u16[4]);
          v115.i16[5] = *(v55 + 2 * v114.u16[5]);
          v115.i16[6] = *(v55 + 2 * v114.u16[6]);
          v115.i16[7] = *(v55 + 2 * v114.u16[7]);
          v116 = vmulq_f16(v109, v115);
          v117 = vmulq_f16(v111, v115);
          v118 = vmulq_f16(v113, v115);
          v119 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, _H0), v117, _H1), v118, _H2);
          v120 = vmulq_n_f16(v118, _H10);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, _H4), v117, _H5), v118, _H6), 0), v100));
          v122.i16[0] = *(v59 + 2 * v121.u16[0]);
          v122.i16[1] = *(v59 + 2 * v121.u16[1]);
          v122.i16[2] = *(v59 + 2 * v121.u16[2]);
          v122.i16[3] = *(v59 + 2 * v121.u16[3]);
          v122.i16[4] = *(v59 + 2 * v121.u16[4]);
          v122.i16[5] = *(v59 + 2 * v121.u16[5]);
          v122.i16[6] = *(v59 + 2 * v121.u16[6]);
          v122.i16[7] = *(v59 + 2 * v121.u16[7]);
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v100));
          v124.i16[0] = *(v59 + 2 * v123.u16[0]);
          v124.i16[1] = *(v59 + 2 * v123.u16[1]);
          v124.i16[2] = *(v59 + 2 * v123.u16[2]);
          v124.i16[3] = *(v59 + 2 * v123.u16[3]);
          v124.i16[4] = *(v59 + 2 * v123.u16[4]);
          v124.i16[5] = *(v59 + 2 * v123.u16[5]);
          v124.i16[6] = *(v59 + 2 * v123.u16[6]);
          v124.i16[7] = *(v59 + 2 * v123.u16[7]);
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v120, v117, _H8), v116, _H11), 0), v100));
          _Q7.i16[0] = *(v59 + 2 * v125.u16[0]);
          result = (v59 + 2 * v125.u16[4]);
          _Q7.i16[1] = *(v59 + 2 * v125.u16[1]);
          _Q7.i16[2] = *(v59 + 2 * v125.u16[2]);
          _Q7.i16[3] = *(v59 + 2 * v125.u16[3]);
          _Q7.i16[4] = *result;
          _Q7.i16[5] = *(v59 + 2 * v125.u16[5]);
          _Q7.i16[6] = *(v59 + 2 * v125.u16[6]);
          _Q7.i16[7] = *(v59 + 2 * v125.u16[7]);
          *v105++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v84, v122, v183), v124, v182), _Q7, v181), v84), v86)), v95);
          if (v104)
          {
            v126 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v85, v122, v166), v124, v165), _Q7, v164);
            v201.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v85, v122, v169), v124, v168), _Q7, v167), v88), v90), v88), v90)), v95);
            _Q7 = vcvtq_u16_f16(v126);
            v201.val[1] = vshlq_u16(_Q7, v95);
            vst2q_s16(v104, v201);
            v104 += 16;
          }

          if (v103)
          {
            *v103++ = v107;
          }

          v101 += 8;
        }

        while (v101 < v16 - 7);
        v127 = v16 & 0xFFFFFFF8;
        _S15 = v160;
        _S14 = v161;
      }

      v128 = v16 - v127;
      if (v16 > v127)
      {
        do
        {
          _Q7.i16[0] = v102[v200];
          _H16 = v102[BYTE2(v200)];
          __asm { FCVT            S27, H16 }

          _Q7.i16[1] = v102[BYTE1(v200)];
          _D28 = vdup_n_s32(0x45FFF800u);
          *_Q7.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q7.i8), _D28), 0), _D28)));
          _Q7.i16[0] = *(v60 + 2 * _Q7.u32[0]);
          __asm { FCVT            S7, H7 }

          _D28.i16[0] = *(v60 + 2 * _Q7.u32[1]);
          v132 = llroundf(fminf(fmaxf(_S27 * 8191.0, 0.0), 8191.0));
          __asm { FCVT            S27, H28 }

          _D28.i16[0] = *(v60 + 2 * v132);
          __asm { FCVT            S28, H28 }

          v135 = (((v186 * _S27) + (v187 * *_Q7.i32)) + (v185 * _S28)) + (v184 * fmaxf(*_Q7.i32, fmaxf(_S27, _S28)));
          v136 = 8191.0;
          if (v135 <= 8191.0)
          {
            v136 = v135;
            if (v135 < 0.0)
            {
              v136 = 0.0;
            }
          }

          _H29 = *(v55 + 2 * llroundf(v136));
          __asm { FCVT            S29, H29 }

          v139 = *_Q7.i32 * _S29;
          _S27 = _S27 * _S29;
          _S28 = _S28 * _S29;
          v142 = ((v195 * _S27) + (v139 * v196)) + (_S28 * v194);
          v143 = ((v192 * _S27) + (v139 * v193)) + (_S28 * v191);
          _S7 = ((v189 * _S27) + (v139 * v190)) + (_S28 * v188);
          LOWORD(_S27) = *(v59 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          LOWORD(_S28) = *(v59 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          LOWORD(_S7) = *(v59 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S16, H7 }

          v148 = (((_S15 * _S28) + (_S14 * _S27)) + (v197 * _S16)) + v44;
          v149 = v51;
          if (v148 <= v51)
          {
            v149 = (((_S15 * _S28) + (_S14 * _S27)) + (v197 * _S16)) + v44;
            if (v148 < v44)
            {
              v149 = v26;
            }
          }

          _H7 = v102[HIBYTE(v200)];
          v105->i16[0] = llroundf(v149) << v94;
          v105 = (v105 + 2);
          if (v104)
          {
            v151 = ((v45 + (_S27 * v175)) + (_S28 * v174)) + (_S16 * v173);
            v152 = v35;
            if (v151 <= v53)
            {
              v152 = ((v45 + (_S27 * v175)) + (_S28 * v174)) + (_S16 * v173);
              if (v151 < v176)
              {
                v152 = v176;
              }
            }

            v153 = ((v45 + (_S27 * v172)) + (_S28 * v171)) + (_S16 * v170);
            *v104 = llroundf(v152) << v94;
            v154 = v35;
            if (v153 <= v53)
            {
              v154 = v153;
              if (v153 < v176)
              {
                v154 = v176;
              }
            }

            v104[1] = llroundf(v154) << v94;
            v104 += 2;
          }

          if (v103)
          {
            __asm { FCVT            S7, H7 }

            v103->i16[0] = llroundf(_S7 * 65535.0);
            v103 = (v103 + 2);
          }

          v102 += 4;
          --v128;
        }

        while (v128);
      }

      v96 += v162;
      v93 += v163;
      v89 = (v89 + v22);
      v87 = (v87 + v23);
      ++v43;
    }

    while (v43 != v42);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, double _D4)
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
    v14 = **(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 17);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    LOWORD(a3) = *(v13 + 144);
    v20 = LODWORD(a3);
    LOWORD(a4) = *(v13 + 146);
    v21 = LODWORD(a4);
    LOWORD(a5) = *(v13 + 148);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 150);
    v23 = LODWORD(a6);
    LOWORD(_D4) = *(v13 + 152);
    v24 = LODWORD(_D4);
    v25 = *(v13 + 36);
    v26 = *(v13 + 40);
    v27 = *(v13 + 44);
    v104 = *(v13 + 48);
    v103 = *(v13 + 52);
    v102 = *(v13 + 56);
    v101 = *(v13 + 60);
    v28 = *(v13 + 68);
    v100 = *(v13 + 64);
    v29 = *(v13 + 72);
    v30 = *(v13 + 76);
    v31 = *(v13 + 80);
    v32 = *(v13 + 84);
    v33 = *(v13 + 88);
    v34 = *(v13 + 92);
    v35 = *(v13 + 96);
    v36 = *(v13 + 100);
    v37 = *(v13 + 104);
    v38 = *(v13 + 108);
    v39 = v13 + 164;
    v40 = v13 + 16548;
    v41 = v13 + 32932;
    v42 = *(v13 + 112);
    v43 = *(v13 + 116);
    v44 = *(v13 + 120);
    v45 = *(result + 14);
    v46 = v9 + *(result + 15);
    v47 = *(result + 28) * a2 / v7 + *(result + 44);
    v48 = *(v13 + 132);
    if (v48 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v48;
    }

    v50 = *(v13 + 157);
    v51 = *(v13 + 156);
    v52 = *(v13 + 155);
    v53 = *(v13 + 154);
    v54 = v15[2];
    if (v54)
    {
      v55 = v54 + v19 * v46 + 2 * v45;
    }

    else
    {
      v55 = 0;
    }

    v57 = *v15;
    v56 = v15[1];
    v58 = v56 + v18 * v46 + 2 * v45;
    if (!v56)
    {
      v58 = 0;
    }

    v59 = v57 + v17 * v46 + 2 * v45;
    v60 = **(result + 7) + v47 * v14 + 8 * *(result + 36);
    v61 = v49;
    v62 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v12 >= 1)
      {
        v63 = v12;
        v64 = v55;
        v65 = v58;
        v66 = v59;
        v67 = v60;
        do
        {
          LOWORD(_D4) = *(v67 + 2 * v53);
          WORD1(_D4) = *(v67 + 2 * v52);
          _D4 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D4), v62), 0), v62))));
          LOWORD(_D4) = *(v39 + 2 * LODWORD(_D4));
          _H16 = *(v67 + 2 * v51);
          __asm { FCVT            S16, H16 }

          v74 = _S16 * 8191.0;
          __asm { FCVT            S16, H4 }

          LOWORD(_D4) = *(v39 + 2 * HIDWORD(_D4));
          v76 = llroundf(fminf(fmaxf(v74, 0.0), 8191.0));
          __asm { FCVT            S17, H4 }

          LOWORD(_D4) = *(v39 + 2 * v76);
          __asm { FCVT            S18, H4 }

          v79 = fmaxf(_S16, fmaxf(_S17, _S18));
          v80 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v79);
          LODWORD(_D4) = 1174403072;
          if (v80 <= 8191.0)
          {
            *&_D4 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v79);
            if (v80 < 0.0)
            {
              _D4 = 0.0;
            }
          }

          _H4 = *(v40 + 2 * llroundf(*&_D4));
          __asm { FCVT            S4, H4 }

          _S16 = _S16 * _S4;
          _S17 = _S17 * _S4;
          v85 = _S18 * _S4;
          v86 = ((v30 * _S17) + (_S16 * v29)) + (v85 * v31);
          v87 = ((v33 * _S17) + (_S16 * v32)) + (v85 * v34);
          _S4 = ((v36 * _S17) + (_S16 * v35)) + (v85 * v37);
          LOWORD(_S16) = *(v41 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = *(v41 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S4) = *(v41 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          v92 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
          v93 = v22;
          if (v92 <= v22)
          {
            v93 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
            if (v92 < v20)
            {
              v93 = v20;
            }
          }

          _H15 = *(v67 + 2 * v50);
          *v66++ = llroundf(v93) << v61;
          if (v65)
          {
            v95 = ((v21 + (_S16 * v104)) + (_S17 * v103)) + (_S18 * v102);
            v96 = v24;
            if (v95 <= v24)
            {
              v96 = ((v21 + (_S16 * v104)) + (_S17 * v103)) + (_S18 * v102);
              if (v95 < v23)
              {
                v96 = v23;
              }
            }

            v97 = ((v21 + (_S16 * v101)) + (_S17 * v100)) + (_S18 * v28);
            *v65 = llroundf(v96) << v61;
            v98 = v24;
            if (v97 <= v24)
            {
              v98 = v97;
              if (v97 < v23)
              {
                v98 = v23;
              }
            }

            v65[1] = llroundf(v98) << v61;
            v65 += 2;
          }

          if (v64)
          {
            __asm { FCVT            S4, H15 }

            *v64++ = llroundf(_S4 * 65535.0);
          }

          v67 += 8;
          --v63;
        }

        while (v63);
      }

      v60 += v14;
      v59 += v17;
      v58 += v18;
      v55 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

__int16 *vt_Copy_RGhA_TRC_Mat_TRC_xf444_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, int16x4_t _D1)
{
  v5 = 0;
  v130 = *(a1 + 36);
  v6 = *a1;
  v7 = *(a1 + 28) * a2 / v6 + *(a1 + 44);
  v8 = *(a1 + 14);
  v9 = *(a1 + 15);
  v11 = *(a1 + 12);
  v10 = *(a1 + 13);
  v12 = *(a1 + 19);
  v14 = *(a1 + 16);
  v13 = *(a1 + 17);
  v15 = **(a1 + 8);
  result = **(a1 + 7);
  v17 = v13[1];
  v131 = *v13;
  v18 = v13[2];
  v20 = *v14;
  v19 = v14[1];
  v21 = v14[2];
  v22 = v10 * a2 / v6;
  v23 = v22 + v9;
  v24 = v15 * v7;
  v25 = v19 + v17 * (v22 + v9);
  v26 = v21 + v18 * (v22 + v9);
  v160 = *(v12 + 154);
  v27 = *(v12 + 144);
  v28 = *(v12 + 132);
  v29 = *(v12 + 146);
  v30 = *(v12 + 148);
  v31 = *(v12 + 150);
  v32 = *(v12 + 152);
  v156 = *(v12 + 40);
  v157 = *(v12 + 36);
  v142 = *(v12 + 52);
  v143 = *(v12 + 48);
  v140 = *(v12 + 60);
  v141 = *(v12 + 56);
  v138 = *(v12 + 68);
  v139 = *(v12 + 64);
  v154 = *(v12 + 72);
  v155 = *(v12 + 44);
  v152 = *(v12 + 80);
  v153 = *(v12 + 76);
  v150 = *(v12 + 88);
  v151 = *(v12 + 84);
  v148 = *(v12 + 96);
  v149 = *(v12 + 92);
  v146 = *(v12 + 104);
  v147 = *(v12 + 100);
  memset(v159, 0, sizeof(v159));
  v33 = (v10 + v10 * a2) / v6;
  do
  {
    v34 = 0;
    v35 = *(&v160 + v5);
    _D0 = *(v159 + 8 * v5);
    do
    {
      v158 = _D0;
      *(&v158 | v34 & 7) = v35 + 4 * v34;
      _D0 = v158;
      ++v34;
    }

    while (v34 != 8);
    *(v159 + v5++) = v158;
  }

  while (v5 != 4);
  v37 = v33 - v22;
  if (v33 - v22 >= 1)
  {
    v38 = 0;
    v39 = v27;
    v40 = v29;
    v41 = v30;
    v144 = v31;
    _S0 = v157;
    __asm { FCVT            H0, S0 }

    v145 = *&_S0;
    v47 = v32;
    v48 = v12 + 164;
    v49 = v12 + 16548;
    v50 = 16 - v28;
    _S0 = v155;
    _S1 = v156;
    __asm
    {
      FCVT            H9, S1
      FCVT            H10, S0
    }

    _S0 = v143;
    __asm { FCVT            H0, S0 }

    v137 = *&_S0;
    _S0 = v142;
    __asm { FCVT            H0, S0 }

    v136 = *&_S0;
    _S0 = v141;
    __asm { FCVT            H0, S0 }

    v135 = *&_S0;
    _S0 = v140;
    __asm { FCVT            H0, S0 }

    v134 = *&_S0;
    _S0 = v139;
    __asm { FCVT            H0, S0 }

    v133 = *&_S0;
    _S0 = v138;
    __asm { FCVT            H0, S0 }

    v132 = *&_S0;
    _S0 = v153;
    _S1 = v154;
    __asm
    {
      FCVT            H4, S1
      FCVT            H5, S0
    }

    _S0 = v151;
    _S1 = v152;
    __asm
    {
      FCVT            H6, S1
      FCVT            H7, S0
    }

    _S0 = v149;
    _S1 = v150;
    __asm
    {
      FCVT            H11, S1
      FCVT            H12, S0
    }

    v73 = (v25 + 2 * v8);
    if (_CF)
    {
      v50 = 0;
    }

    if (v21)
    {
      v74 = (v26 + 2 * v8);
    }

    else
    {
      v74 = 0;
    }

    *_D0.i32 = v147;
    *_D1.i32 = v148;
    __asm
    {
      FCVT            H13, S1
      FCVT            H14, S0
    }

    *_D0.i32 = v146;
    __asm { FCVT            H15, S0 }

    *_D0.i16 = v27;
    v78 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v29;
    v79 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v30;
    v80 = vdupq_lane_s16(_D0, 0);
    if (v19)
    {
      v81 = v73;
    }

    else
    {
      v81 = 0;
    }

    *_D0.i16 = v31;
    v82 = vdupq_lane_s16(_D0, 0);
    *_D1.i16 = v32;
    v83 = v20 + v131 * v23 + 2 * v8;
    v84 = vdupq_lane_s16(_D1, 0);
    v85 = &result[4 * v130] + v24;
    v86 = v50;
    v87 = vdupq_n_s16(v50);
    v88.i64[0] = 0x7000700070007000;
    v88.i64[1] = 0x7000700070007000;
    v89.i64[0] = 0x9000900090009000;
    v89.i64[1] = 0x9000900090009000;
    do
    {
      if (v11 < 8)
      {
        v110 = 0;
        v94 = v81;
        v93 = v74;
        v92 = v83;
        v91 = v85;
      }

      else
      {
        v90 = 0;
        v91 = v85;
        v92 = v83;
        v93 = v74;
        v94 = v81;
        do
        {
          v162 = vld4q_s16(v91);
          v91 += 32;
          if (v93)
          {
            v95 = vdupq_n_s32(0x477FFF00u);
            _Q21 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*v162.val[3].i8), v95)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*&vextq_s8(v162.val[3], v162.val[3], 8uLL)), v95)));
          }

          else
          {
            _Q21 = 0uLL;
          }

          v96 = vmulq_f16(v162.val[1], v88);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v162.val[0], v88), 0), v89));
          v98.i16[0] = *(v48 + 2 * v97.u16[0]);
          v98.i16[1] = *(v48 + 2 * v97.u16[1]);
          v98.i16[2] = *(v48 + 2 * v97.u16[2]);
          v98.i16[3] = *(v48 + 2 * v97.u16[3]);
          v98.i16[4] = *(v48 + 2 * v97.u16[4]);
          v98.i16[5] = *(v48 + 2 * v97.u16[5]);
          v98.i16[6] = *(v48 + 2 * v97.u16[6]);
          v98.i16[7] = *(v48 + 2 * v97.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v89));
          v97.i16[0] = *(v48 + 2 * v99.u16[0]);
          v97.i16[1] = *(v48 + 2 * v99.u16[1]);
          v97.i16[2] = *(v48 + 2 * v99.u16[2]);
          v97.i16[3] = *(v48 + 2 * v99.u16[3]);
          v97.i16[4] = *(v48 + 2 * v99.u16[4]);
          v97.i16[5] = *(v48 + 2 * v99.u16[5]);
          v97.i16[6] = *(v48 + 2 * v99.u16[6]);
          v97.i16[7] = *(v48 + 2 * v99.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v162.val[2], v88), 0), v89));
          v99.i16[0] = *(v48 + 2 * v100.u16[0]);
          v99.i16[1] = *(v48 + 2 * v100.u16[1]);
          v99.i16[2] = *(v48 + 2 * v100.u16[2]);
          v99.i16[3] = *(v48 + 2 * v100.u16[3]);
          v99.i16[4] = *(v48 + 2 * v100.u16[4]);
          v99.i16[5] = *(v48 + 2 * v100.u16[5]);
          v99.i16[6] = *(v48 + 2 * v100.u16[6]);
          v99.i16[7] = *(v48 + 2 * v100.u16[7]);
          v101 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, _H7), v97, _H11), v99, _H12);
          v102 = vmulq_n_f16(v99, _H15);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, _H4), v97, _H5), v99, _H6), 0), v89));
          v104.i16[0] = *(v49 + 2 * v103.u16[0]);
          v104.i16[1] = *(v49 + 2 * v103.u16[1]);
          v104.i16[2] = *(v49 + 2 * v103.u16[2]);
          v104.i16[3] = *(v49 + 2 * v103.u16[3]);
          v104.i16[4] = *(v49 + 2 * v103.u16[4]);
          v104.i16[5] = *(v49 + 2 * v103.u16[5]);
          v104.i16[6] = *(v49 + 2 * v103.u16[6]);
          v104.i16[7] = *(v49 + 2 * v103.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v89));
          v106.i16[0] = *(v49 + 2 * v105.u16[0]);
          v106.i16[1] = *(v49 + 2 * v105.u16[1]);
          v106.i16[2] = *(v49 + 2 * v105.u16[2]);
          v106.i16[3] = *(v49 + 2 * v105.u16[3]);
          v106.i16[4] = *(v49 + 2 * v105.u16[4]);
          v106.i16[5] = *(v49 + 2 * v105.u16[5]);
          v106.i16[6] = *(v49 + 2 * v105.u16[6]);
          v106.i16[7] = *(v49 + 2 * v105.u16[7]);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v102, v97, _H14), v98, _H13), 0), v89));
          v108.i16[0] = *(v49 + 2 * v107.u16[0]);
          result = (v49 + 2 * v107.u16[3]);
          v108.i16[1] = *(v49 + 2 * v107.u16[1]);
          v108.i16[2] = *(v49 + 2 * v107.u16[2]);
          v108.i16[3] = *result;
          v108.i16[4] = *(v49 + 2 * v107.u16[4]);
          v108.i16[5] = *(v49 + 2 * v107.u16[5]);
          v108.i16[6] = *(v49 + 2 * v107.u16[6]);
          v108.i16[7] = *(v49 + 2 * v107.u16[7]);
          *v92++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v78, v104, v145), v106, _H9), v108, _H10), v78), v80)), v87);
          if (v94)
          {
            v109 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v79, v104, v134), v106, v133), v108, v132);
            v161.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v79, v104, v137), v106, v136), v108, v135), v82), v84), v82), v84)), v87);
            v161.val[1] = vshlq_u16(vcvtq_u16_f16(v109), v87);
            vst2q_s16(v94, v161);
            v94 += 16;
          }

          if (v93)
          {
            *v93++ = _Q21;
          }

          v90 += 8;
        }

        while (v90 < v11 - 7);
        v110 = v11 & 0xFFFFFFF8;
      }

      v111 = v11 - v110;
      if (v11 > v110)
      {
        do
        {
          _Q21.i16[0] = v91[v160];
          _H22 = v91[BYTE2(v160)];
          __asm { FCVT            S22, H22 }

          _Q21.i16[1] = v91[BYTE1(v160)];
          _D23 = vdup_n_s32(0x45FFF800u);
          *_Q21.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q21.i8), _D23), 0), _D23)));
          _Q21.i16[0] = *(v48 + 2 * _Q21.u32[0]);
          __asm { FCVT            S21, H21 }

          _D23.i16[0] = *(v48 + 2 * _Q21.u32[1]);
          __asm { FCVT            S23, H23 }

          LOWORD(_S22) = *(v48 + 2 * llroundf(fminf(fmaxf(_S22 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v116 = ((v153 * _D23.f32[0]) + (*_Q21.i32 * v154)) + (_S22 * v152);
          v117 = ((v150 * _D23.f32[0]) + (*_Q21.i32 * v151)) + (_S22 * v149);
          *_Q21.i32 = ((v147 * _D23.f32[0]) + (*_Q21.i32 * v148)) + (_S22 * v146);
          LOWORD(_S22) = *(v49 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _D23.i16[0] = *(v49 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          _Q21.i16[0] = *(v49 + 2 * llroundf(fminf(fmaxf(*_Q21.i32, 0.0), 8191.0)));
          __asm { FCVT            S24, H21 }

          *_Q21.i32 = (((v156 * _S23) + (v157 * _S22)) + (v155 * _S24)) + v39;
          v121 = v41;
          if (*_Q21.i32 <= v41)
          {
            v121 = (((v156 * _S23) + (v157 * _S22)) + (v155 * _S24)) + v39;
            if (*_Q21.i32 < v39)
            {
              v121 = v39;
            }
          }

          _H21 = v91[HIBYTE(v160)];
          v92->i16[0] = llroundf(v121) << v86;
          v92 = (v92 + 2);
          if (v94)
          {
            v123 = ((v40 + (_S22 * v143)) + (_S23 * v142)) + (_S24 * v141);
            v124 = v32;
            if (v123 <= v47)
            {
              v124 = ((v40 + (_S22 * v143)) + (_S23 * v142)) + (_S24 * v141);
              if (v123 < v144)
              {
                v124 = v31;
              }
            }

            v125 = ((v40 + (_S22 * v140)) + (_S23 * v139)) + (_S24 * v138);
            *v94 = llroundf(v124) << v86;
            v126 = v32;
            if (v125 <= v47)
            {
              v126 = v125;
              if (v125 < v144)
              {
                v126 = v31;
              }
            }

            v94[1] = llroundf(v126) << v86;
            v94 += 2;
          }

          if (v93)
          {
            __asm { FCVT            S21, H21 }

            v93->i16[0] = llroundf(_S21 * 65535.0);
            v93 = (v93 + 2);
          }

          v91 += 4;
          --v111;
        }

        while (v111);
      }

      v85 += v15;
      v83 += v131;
      v81 = (v81 + v17);
      v74 = (v74 + v18);
      ++v38;
    }

    while (v38 != v37);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, double _D4)
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
    v14 = **(result + 8);
    v15 = *(result + 16);
    v16 = *(result + 17);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    LOWORD(a3) = *(v13 + 144);
    v20 = LODWORD(a3);
    LOWORD(a4) = *(v13 + 146);
    v21 = LODWORD(a4);
    LOWORD(a5) = *(v13 + 148);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 150);
    v23 = LODWORD(a6);
    LOWORD(_D4) = *(v13 + 152);
    v24 = LODWORD(_D4);
    v25 = *(v13 + 36);
    v26 = *(v13 + 40);
    v27 = *(v13 + 44);
    v88 = *(v13 + 48);
    v28 = *(v13 + 56);
    v87 = *(v13 + 52);
    v29 = *(v13 + 60);
    v30 = *(v13 + 64);
    v31 = *(v13 + 68);
    v32 = *(v13 + 72);
    v33 = *(v13 + 76);
    v34 = *(v13 + 80);
    v35 = *(v13 + 84);
    v36 = *(v13 + 88);
    v37 = *(v13 + 92);
    v38 = *(v13 + 96);
    v39 = *(v13 + 100);
    v40 = *(v13 + 104);
    v41 = v13 + 164;
    v42 = v13 + 16548;
    v43 = *(result + 14);
    v44 = v9 + *(result + 15);
    v45 = *(result + 28) * a2 / v7 + *(result + 44);
    v46 = *(v13 + 132);
    if (v46 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v46;
    }

    v48 = *(v13 + 157);
    v49 = *(v13 + 156);
    v50 = *(v13 + 155);
    v51 = *(v13 + 154);
    v52 = v15[2];
    if (v52)
    {
      v53 = v52 + v19 * v44 + 2 * v43;
    }

    else
    {
      v53 = 0;
    }

    v55 = *v15;
    v54 = v15[1];
    v56 = v54 + v18 * v44 + 2 * v43;
    if (!v54)
    {
      v56 = 0;
    }

    v57 = v55 + v17 * v44 + 2 * v43;
    v58 = **(result + 7) + v45 * v14 + 8 * *(result + 36);
    v59 = v47;
    v60 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v12 >= 1)
      {
        v61 = v12;
        v62 = v58;
        v63 = v53;
        v64 = v56;
        v65 = v57;
        do
        {
          LOWORD(_D4) = *(v62 + 2 * v51);
          WORD1(_D4) = *(v62 + 2 * v50);
          _D4 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D4), v60), 0), v60))));
          LOWORD(_D4) = *(v41 + 2 * LODWORD(_D4));
          _H16 = *(v62 + 2 * v49);
          __asm
          {
            FCVT            S16, H16
            FCVT            S4, H4
          }

          _H12 = *(v41 + 2 * HIDWORD(_D4));
          __asm { FCVT            S12, H12 }

          LOWORD(_S16) = *(v41 + 2 * llroundf(fminf(fmaxf(_S16 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          v75 = ((v33 * _S12) + (*&_D4 * v32)) + (_S16 * v34);
          v76 = ((v36 * _S12) + (*&_D4 * v35)) + (_S16 * v37);
          *&_D4 = ((v39 * _S12) + (*&_D4 * v38)) + (_S16 * v40);
          LOWORD(_S16) = *(v42 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S13, H16 }

          LOWORD(_S16) = *(v42 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S14, H16 }

          LOWORD(_D4) = *(v42 + 2 * llroundf(fminf(fmaxf(*&_D4, 0.0), 8191.0)));
          __asm { FCVT            S15, H4 }

          v80 = (((v26 * _S14) + (v25 * _S13)) + (v27 * _S15)) + v20;
          *&_D4 = v22;
          if (v80 <= v22)
          {
            *&_D4 = (((v26 * _S14) + (v25 * _S13)) + (v27 * _S15)) + v20;
            if (v80 < v20)
            {
              *&_D4 = v20;
            }
          }

          _H12 = *(v62 + 2 * v48);
          *v65++ = llroundf(*&_D4) << v59;
          if (v64)
          {
            v82 = ((v21 + (_S13 * v88)) + (_S14 * v87)) + (_S15 * v28);
            v83 = v24;
            if (v82 <= v24)
            {
              v83 = ((v21 + (_S13 * v88)) + (_S14 * v87)) + (_S15 * v28);
              if (v82 < v23)
              {
                v83 = v23;
              }
            }

            v84 = ((v21 + (_S13 * v29)) + (_S14 * v30)) + (_S15 * v31);
            *v64 = llroundf(v83) << v59;
            v85 = v24;
            if (v84 <= v24)
            {
              v85 = v84;
              if (v84 < v23)
              {
                v85 = v23;
              }
            }

            v64[1] = llroundf(v85) << v59;
            v64 += 2;
          }

          if (v63)
          {
            __asm { FCVT            S4, H12 }

            *v63++ = llroundf(_S4 * 65535.0);
          }

          v62 += 8;
          --v61;
        }

        while (v61);
      }

      v58 += v14;
      v57 += v17;
      v56 += v18;
      v53 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_xf444_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_xf444_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_xf444_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, int16x4_t _D4)
{
  v7 = 0;
  v104 = *(result + 36);
  v8 = *result;
  v9 = *(result + 14);
  v10 = *(result + 12);
  v11 = *(result + 13);
  v12 = *(result + 19);
  v14 = *(result + 16);
  v13 = *(result + 17);
  v15 = v11 * a2 / v8;
  v16 = v15 + *(result + 15);
  v17 = **(result + 8);
  v18 = v11 + v11 * a2;
  v102 = v17 * (*(result + 28) * a2 / v8 + *(result + 44));
  v103 = **(result + 7);
  v19 = *v13;
  v20 = v13[1];
  v21 = v13[2];
  v22 = *v14;
  v23 = v14[1];
  v24 = v14[2];
  v25 = *(v12 + 136);
  v115 = *(v12 + 154);
  v26 = *(v12 + 144);
  v27 = *(v12 + 132);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S0 = *(v12 + 36);
  _S1 = *(v12 + 40);
  _S2 = *(v12 + 44);
  v111 = *(v12 + 52);
  v112 = *(v12 + 48);
  v109 = *(v12 + 60);
  v110 = *(v12 + 56);
  v108 = *(v12 + 64);
  _S16 = *(v12 + 68);
  memset(v114, 0, sizeof(v114));
  v36 = v18 / v8;
  do
  {
    v37 = 0;
    v38 = *(&v115 + v7);
    v39 = *(v114 + v7);
    do
    {
      v113 = v39;
      *(&v113 | v37 & 7) = v38 + 4 * v37;
      v39 = v113;
      ++v37;
    }

    while (v37 != 8);
    *(v114 + v7++) = v113;
  }

  while (v7 != 4);
  v40 = v36 - v15;
  if (v36 - v15 >= 1)
  {
    v41 = 0;
    _S17 = v25;
    v43 = v26;
    v44 = v28;
    v45 = v30;
    v46 = v31;
    __asm
    {
      FCVT            H8, S0
      FCVT            H9, S1
      FCVT            H10, S2
    }

    _S3 = v111;
    *_D4.i32 = v112;
    __asm
    {
      FCVT            H6, S4
      FCVT            H7, S3
    }

    _S3 = v110;
    __asm { FCVT            H3, S3 }

    v107 = *&_S3;
    _S3 = v109;
    __asm { FCVT            H3, S3 }

    v106 = *&_S3;
    _S3 = v108;
    __asm
    {
      FCVT            H15, S3
      FCVT            H3, S16
    }

    *_D4.i16 = v26;
    v62 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v28;
    v63 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v29;
    v64 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v30;
    v65 = vdupq_lane_s16(_D4, 0);
    *_D4.i16 = v31;
    v66 = vdupq_lane_s16(_D4, 0);
    v67 = 16 - v27;
    if (v27 >= 0x11)
    {
      v67 = 0;
    }

    if (v24)
    {
      v68 = v24 + v21 * v16 + 2 * v9;
    }

    else
    {
      v68 = 0;
    }

    if (v23)
    {
      v69 = v23 + v20 * v16 + 2 * v9;
    }

    else
    {
      v69 = 0;
    }

    v70 = v22 + v19 * v16 + 2 * v9;
    v71 = v103 + v102 + 8 * v104;
    __asm { FCVT            H4, S17 }

    v73 = v67;
    v74 = vdupq_n_s16(v67);
    do
    {
      if (v10 < 8)
      {
        v85 = 0;
        v79 = v69;
        v78 = v68;
        v77 = v70;
        v76 = v71;
      }

      else
      {
        v75 = 0;
        v76 = v71;
        v77 = v70;
        v78 = v68;
        v79 = v69;
        do
        {
          v117 = vld4q_s16(v76);
          v76 += 32;
          if (v78)
          {
            v80 = vdupq_n_s32(0x477FFF00u);
            v81 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*v117.val[3].i8), v80)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*&vextq_s8(v117.val[3], v117.val[3], 8uLL)), v80)));
          }

          else
          {
            v81 = 0uLL;
          }

          v82 = vmulq_n_f16(v117.val[0], _H4);
          v83 = vmulq_n_f16(v117.val[1], _H4);
          v84 = vmulq_n_f16(v117.val[2], _H4);
          *v77++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v82, _H8), v83, _H9), v84, _H10), v62), v64)), v74);
          if (v79)
          {
            v116.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v63, v82, _H6), v83, _H7), v84, v107), v65), v66), v65), v66)), v74);
            v116.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v63, v82, v106), v83, _H15), v84, _H3)), v74);
            vst2q_s16(v79, v116);
            v79 += 16;
          }

          if (v78)
          {
            *v78++ = v81;
          }

          v75 += 8;
        }

        while (v75 < v10 - 7);
        v85 = v10 & 0x7FFFFFF8;
      }

      v86 = v10 - v85;
      if (v10 > v85)
      {
        do
        {
          _H5 = v76[v115];
          __asm { FCVT            S5, H5 }

          v89 = _S17 * _S5;
          LOWORD(_S5) = v76[BYTE1(v115)];
          __asm { FCVT            S5, H5 }

          v91 = _S17 * _S5;
          LOWORD(_S5) = v76[BYTE2(v115)];
          __asm { FCVT            S5, H5 }

          v93 = _S17 * _S5;
          v94 = (((_S1 * v91) + (_S0 * v89)) + (_S2 * v93)) + v43;
          v95 = v29;
          if (v94 <= v29)
          {
            v95 = (((_S1 * v91) + (_S0 * v89)) + (_S2 * v93)) + v43;
            if (v94 < v43)
            {
              v95 = v26;
            }
          }

          _H31 = v76[HIBYTE(v115)];
          v77->i16[0] = llroundf(v95) << v73;
          v77 = (v77 + 2);
          if (v79)
          {
            v97 = ((v44 + (v89 * v112)) + (v91 * v111)) + (v93 * v110);
            v98 = v46;
            if (v97 <= v46)
            {
              v98 = ((v44 + (v89 * v112)) + (v91 * v111)) + (v93 * v110);
              if (v97 < v45)
              {
                v98 = v45;
              }
            }

            v99 = ((v44 + (v89 * v109)) + (v91 * v108)) + (v93 * _S16);
            *v79 = llroundf(v98) << v73;
            v100 = v46;
            if (v99 <= v46)
            {
              v100 = v99;
              if (v99 < v45)
              {
                v100 = v45;
              }
            }

            v79[1] = llroundf(v100) << v73;
            v79 += 2;
          }

          if (v78)
          {
            __asm { FCVT            S5, H31 }

            v78->i16[0] = llroundf(_S5 * 65535.0);
            v78 = (v78 + 2);
          }

          v76 += 4;
          --v86;
        }

        while (v86);
      }

      v71 += v17;
      v70 += v19;
      v69 += v20;
      v68 += v21;
      ++v41;
    }

    while (v41 != v40);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v18 = *a6;
  v42 = a6[1];
  v43 = v17;
  v44 = a6[2];
  v45 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_22:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v42.i8[-v21];
    bzero(&v42 - v21, v22);
  }

  v23 = a9;
  v24 = v44;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v43), v47), vsubq_s64(v47, v46), v43);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v46, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v44, v28);
    v34 = v33.i64[1] + v27.i64[1];
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 2 * v33.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v34 + 4 * v33.i64[0]) > a9[1])
      {
        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v33.i64[0] + a8[2] * v34) <= a9[2])
        {
          goto LABEL_16;
        }

        v42 = v27;
        v43.i64[0] = a9;
        v30 = a5;
        v31 = a7;
        v32 = v13;
      }
    }

    else
    {
      v42 = v27;
      v43.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v42 = v27;
    v43.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v35 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v44;
  v23 = v43.i64[0];
  v27 = v42;
  if (v35)
  {
    v20 = v35;
    goto LABEL_21;
  }

LABEL_16:
  *v19 = v15;
  v36 = v46;
  *(v19 + 4) = v47;
  *(v19 + 20) = v27;
  *(v19 + 36) = v36;
  *(v19 + 5) = v45;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v38 = (v19 + 160);
  v39 = v15;
  while (1)
  {
    v40 = *v38++;
    v20 = v40;
    if (v40)
    {
      break;
    }

    if (!--v39)
    {
      v20 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v14 + 136);
    LOWORD(a4) = *(v14 + 144);
    v22 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v30 = *(v14 + 48);
    v31 = *(v14 + 52);
    v32 = *(v14 + 56);
    v33 = *(v14 + 60);
    v34 = *(v14 + 64);
    v35 = *(v14 + 68);
    v36 = *(result + 14);
    v37 = v10 + *(result + 15);
    v38 = *(result + 28) * a2 / v8 + *(result + 44);
    v39 = *(v14 + 132);
    if (v39 >= 0x11)
    {
      v40 = 0;
    }

    else
    {
      v40 = 16 - v39;
    }

    v41 = *(v14 + 157);
    v42 = *(v14 + 156);
    v43 = *(v14 + 155);
    v44 = *(v14 + 154);
    v45 = v16[2];
    if (v45)
    {
      v46 = v45 + v20 * v37 + 2 * v36;
    }

    else
    {
      v46 = 0;
    }

    v48 = *v16;
    v47 = v16[1];
    v49 = v47 + v19 * v37 + 2 * v36;
    if (!v47)
    {
      v49 = 0;
    }

    v50 = v48 + v18 * v37 + 2 * v36;
    v51 = **(result + 7) + v38 * v15 + 8 * *(result + 36);
    v52 = v40;
    do
    {
      if (v13 >= 1)
      {
        v53 = v13;
        v54 = v51;
        v55 = v46;
        v56 = v49;
        v57 = v50;
        do
        {
          _H24 = *(v54 + 2 * v44);
          __asm { FCVT            S24, H24 }

          v64 = v21 * _S24;
          LOWORD(_S24) = *(v54 + 2 * v43);
          __asm { FCVT            S24, H24 }

          v66 = v21 * _S24;
          LOWORD(_S24) = *(v54 + 2 * v42);
          __asm { FCVT            S24, H24 }

          v68 = v21 * _S24;
          v69 = (((v28 * v66) + (v27 * v64)) + (v29 * (v21 * _S24))) + v22;
          v70 = v24;
          if (v69 <= v24)
          {
            v70 = v69;
            if (v69 < v22)
            {
              v70 = v22;
            }
          }

          _H24 = *(v54 + 2 * v41);
          *v57++ = llroundf(v70) << v52;
          if (v56)
          {
            v72 = ((v23 + (v64 * v30)) + (v66 * v31)) + (v68 * v32);
            v73 = v26;
            if (v72 <= v26)
            {
              v73 = ((v23 + (v64 * v30)) + (v66 * v31)) + (v68 * v32);
              if (v72 < v25)
              {
                v73 = v25;
              }
            }

            v74 = ((v23 + (v64 * v33)) + (v66 * v34)) + (v68 * v35);
            *v56 = llroundf(v73) << v52;
            v75 = v26;
            if (v74 <= v26)
            {
              v75 = v74;
              if (v74 < v25)
              {
                v75 = v25;
              }
            }

            v56[1] = llroundf(v75) << v52;
            v56 += 2;
          }

          if (v55)
          {
            __asm { FCVT            S24, H24 }

            *v55++ = llroundf(_S24 * 65535.0);
          }

          v54 += 8;
          --v53;
        }

        while (v53);
      }

      v51 += v15;
      v50 += v18;
      v49 += v19;
      v46 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

int vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, __n128 _Q5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 36);
  v11 = *a1;
  v12 = *(a1 + 28) * a2 / v11 + *(a1 + 44);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  v15 = *(a1 + 12);
  v16 = *(a1 + 13);
  v152 = a1;
  v17 = v16 * a2;
  v18 = *(a1 + 19);
  v19 = **(a1 + 8);
  v20 = **(a1 + 7);
  v21 = **(a1 + 17);
  v22 = **(a1 + 16);
  v23 = *(v18 + 154);
  v181[0] = *(v18 + 154);
  v24 = *(v18 + 155);
  v181[1] = *(v18 + 155);
  v25 = *(v18 + 156);
  v26 = v17 / v11;
  v27 = v17 / v11 + v14;
  v181[2] = *(v18 + 156);
  v28 = v16 + v17;
  v167 = v19;
  v29 = v19 * v12;
  v30 = *(v18 + 157);
  v181[3] = *(v18 + 157);
  v166 = *(v18 + 158);
  v180[0] = *(v18 + 158);
  v165 = *(v18 + 159);
  v180[1] = *(v18 + 159);
  v164 = *(v18 + 160);
  v180[2] = *(v18 + 160);
  v163 = *(v18 + 161);
  v180[3] = *(v18 + 161);
  _S23 = *(v18 + 72);
  _S24 = *(v18 + 76);
  _S25 = *(v18 + 80);
  _S29 = *(v18 + 84);
  _S31 = *(v18 + 88);
  v174 = *(v18 + 96);
  v175 = *(v18 + 92);
  v172 = *(v18 + 104);
  v173 = *(v18 + 100);
  v170 = *(v18 + 112);
  v171 = *(v18 + 108);
  v168 = *(v18 + 120);
  v169 = *(v18 + 116);
  memset(v179, 0, sizeof(v179));
  v177 = 0u;
  v178 = 0u;
  v36 = v28 / v11;
  do
  {
    v37 = 0;
    v38 = v181[v9];
    v39 = v180[v9];
    v40 = *(v179 + v9);
    do
    {
      v176 = v40;
      *(&v176 | v37 & 7) = v38 + 4 * v37;
      v40 = v176;
      *((&v177 + ((v39 + 4 * v37) & 0xF8)) | (v39 + 4 * v37) & 7) = v8 + v37;
      ++v37;
    }

    while (v37 != 8);
    *(v179 + v9++) = v40;
    v8 += 8;
  }

  while (v9 != 4);
  v41 = v36 - v26;
  if (v36 - v26 >= 1)
  {
    v42 = 0;
    v43 = v18 + 16548;
    _S0 = v170;
    _S1 = v171;
    __asm
    {
      FCVT            H8, S1
      FCVT            H9, S0
    }

    _S0 = v168;
    _S1 = v169;
    __asm { FCVT            H10, S1 }

    v55 = v18 + 32932;
    v56 = v18 + 164;
    __asm
    {
      FCVT            H11, S0
      FCVT            H12, S23
      FCVT            H13, S24
      FCVT            H14, S25
      FCVT            H15, S29
      FCVT            H0, S31
    }

    v63 = v22 + v21 * v27 + 4 * v13;
    _S2 = v174;
    _S1 = v175;
    __asm
    {
      FCVT            H1, S1
      FCVT            H2, S2
    }

    v68 = v20 + v29 + 8 * v10;
    _S4 = v172;
    _S3 = v173;
    __asm
    {
      FCVT            H3, S3
      FCVT            H4, S4
    }

    v157 = v30;
    v156 = v25;
    v155 = v24;
    v154 = v23;
    v73.i64[0] = 0x7000700070007000;
    v73.i64[1] = 0x7000700070007000;
    v74.i64[0] = 0x9000900090009000;
    v74.i64[1] = 0x9000900090009000;
    v161 = _S24;
    v162 = _S23;
    v159 = _S29;
    v160 = _S25;
    v158 = _S31;
    do
    {
      if (v15 < 8)
      {
        v115 = 0;
        v79 = v63;
        v78 = v68;
      }

      else
      {
        v75 = 0;
        v76 = *(&v177 + 8);
        v77 = v177;
        v78 = v68;
        v79 = v63;
        v81 = *(&v178 + 8);
        v80 = v178;
        do
        {
          v183 = vld4q_s16(v78);
          v78 += 32;
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v183.val[0], v73), 0), v74));
          v83.i16[0] = *(v56 + 2 * v82.u16[0]);
          v84 = (v56 + 2 * v82.u16[1]);
          v85 = (v56 + 2 * v82.u16[2]);
          v86 = (v56 + 2 * v82.u16[3]);
          v87 = (v56 + 2 * v82.u16[4]);
          v88 = (v56 + 2 * v82.u16[5]);
          v89 = (v56 + 2 * v82.u16[6]);
          v90 = v82.u16[7];
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v183.val[1], v73), 0), v74));
          v92.i16[0] = *(v56 + 2 * v91.u16[0]);
          v93 = (v56 + 2 * v91.u16[3]);
          v94 = (v56 + 2 * v91.u16[4]);
          v95 = (v56 + 2 * v91.u16[5]);
          v96 = (v56 + 2 * v91.u16[6]);
          v83.i16[1] = *v84;
          v92.i16[1] = *(v56 + 2 * v91.u16[1]);
          v83.i16[2] = *v85;
          v97 = (v56 + 2 * v91.u16[7]);
          v92.i16[2] = *(v56 + 2 * v91.u16[2]);
          v83.i16[3] = *v86;
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v183.val[2], v73), 0), v74));
          v92.i16[3] = *v93;
          v99.i16[0] = *(v56 + 2 * v98.u16[0]);
          v83.i16[4] = *v87;
          v92.i16[4] = *v94;
          v83.i16[5] = *v88;
          v92.i16[5] = *v95;
          v83.i16[6] = *v89;
          v99.i16[1] = *(v56 + 2 * v98.u16[1]);
          v92.i16[6] = *v96;
          v99.i16[2] = *(v56 + 2 * v98.u16[2]);
          v99.i16[3] = *(v56 + 2 * v98.u16[3]);
          v83.i16[7] = *(v56 + 2 * v90);
          v99.i16[4] = *(v56 + 2 * v98.u16[4]);
          v99.i16[5] = *(v56 + 2 * v98.u16[5]);
          v92.i16[7] = *v97;
          v99.i16[6] = *(v56 + 2 * v98.u16[6]);
          v99.i16[7] = *(v56 + 2 * v98.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v83, _H8), v92, _H9), v99, _H10), vmaxq_f16(vmaxq_f16(v83, v92), v99), _H11), 0), v74));
          v101.i16[0] = *(v43 + 2 * v100.u16[0]);
          v101.i16[1] = *(v43 + 2 * v100.u16[1]);
          v101.i16[2] = *(v43 + 2 * v100.u16[2]);
          v101.i16[3] = *(v43 + 2 * v100.u16[3]);
          v101.i16[4] = *(v43 + 2 * v100.u16[4]);
          v101.i16[5] = *(v43 + 2 * v100.u16[5]);
          v101.i16[6] = *(v43 + 2 * v100.u16[6]);
          v101.i16[7] = *(v43 + 2 * v100.u16[7]);
          v102 = vmulq_f16(v83, v101);
          v103 = vmulq_f16(v92, v101);
          v104 = vmulq_f16(v99, v101);
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, _H15), v103, _H0), v104, _H1);
          v106 = vmlaq_n_f16(vmulq_n_f16(v104, _H4), v103, _H3);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, _H12), v103, _H13), v104, _H14), 0), v74));
          v103.i16[0] = *(v55 + 2 * v107.u16[0]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v74));
          v107.i16[0] = *(v55 + 2 * v108.u16[0]);
          v109 = (v55 + 2 * v108.u16[3]);
          v103.i16[1] = *(v55 + 2 * v107.u16[1]);
          v110 = (v55 + 2 * v108.u16[4]);
          v111 = (v55 + 2 * v108.u16[5]);
          v103.i16[2] = *(v55 + 2 * v107.u16[2]);
          v107.i16[1] = *(v55 + 2 * v108.u16[1]);
          v107.i16[2] = *(v55 + 2 * v108.u16[2]);
          v112 = (v55 + 2 * v108.u16[6]);
          LOWORD(v95) = v108.i16[7];
          v103.i16[3] = *(v55 + 2 * v107.u16[3]);
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v102, _H2), 0), v74));
          v107.i16[3] = *v109;
          v106.i16[0] = *(v55 + 2 * v113.u16[0]);
          v103.i16[4] = *(v55 + 2 * v107.u16[4]);
          v107.i16[4] = *v110;
          v103.i16[5] = *(v55 + 2 * v107.u16[5]);
          v106.i16[1] = *(v55 + 2 * v113.u16[1]);
          v107.i16[5] = *v111;
          v103.i16[6] = *(v55 + 2 * v107.u16[6]);
          v106.i16[2] = *(v55 + 2 * v113.u16[2]);
          v107.i16[6] = *v112;
          a1 = (v55 + 2 * v113.u16[7]);
          v103.i16[7] = *(v55 + 2 * v107.u16[7]);
          v106.i16[3] = *(v55 + 2 * v113.u16[3]);
          v106.i16[4] = *(v55 + 2 * v113.u16[4]);
          v107.i16[7] = *(v55 + 2 * v95);
          v106.i16[5] = *(v55 + 2 * v113.u16[5]);
          v106.i16[6] = *(v55 + 2 * v113.u16[6]);
          v106.i16[7] = *a1;
          v114 = vdupq_n_s16(0x5BF8u);
          v182.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v103, 0), v114)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v114)));
          v182.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v114)), vcvtq_u16_f16(vmulq_f16(v183.val[3], v114)));
          _Q5.n128_u64[0] = vqtbl2_s8(v182, v77);
          *&_Q5.n128_i8[8] = vqtbl2_s8(v182, v76);
          *v183.val[0].i8 = vqtbl2_s8(v182, v80);
          v183.val[0].u64[1] = vqtbl2_s8(v182, v81);
          *v79 = _Q5;
          *(v79 + 16) = v183.val[0];
          v79 += 32;
          v75 += 8;
        }

        while (v75 < v15 - 7);
        v115 = v15 & 0xFFFFFFF8;
        _S24 = v161;
        _S23 = v162;
        _S29 = v159;
        _S25 = v160;
        _S31 = v158;
      }

      v116 = v15 - v115;
      if (v15 > v115)
      {
        v117 = 0;
        v118 = &v78[v157];
        v119 = &v78[v156];
        v120 = &v78[v155];
        v121 = &v78[v154];
        v122 = v79 + v163;
        v123 = v79 + v164;
        v124 = v79 + v165;
        v125 = v79 + v166;
        do
        {
          _Q5.n128_u16[0] = v121[v117];
          _Q5.n128_u16[1] = v120[v117];
          _D6 = vdup_n_s32(0x45FFF800u);
          _Q5.n128_u64[0] = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_Q5.n128_u64[0]), _D6), 0), _D6)));
          _Q5.n128_u16[0] = *(v56 + 2 * _Q5.n128_u32[0]);
          _D6.i16[0] = v119[v117];
          __asm { FCVT            S6, H6 }

          v127 = _D6.f32[0] * 8191.0;
          __asm { FCVT            S6, H5 }

          _Q5.n128_u16[0] = *(v56 + 2 * _Q5.n128_u32[1]);
          v129 = llroundf(fminf(fmaxf(v127, 0.0), 8191.0));
          __asm { FCVT            S16, H5 }

          _Q5.n128_u16[0] = *(v56 + 2 * v129);
          __asm { FCVT            S17, H5 }

          v132 = (((v170 * _S16) + (v171 * _S6)) + (v169 * _S17)) + (v168 * fmaxf(_S6, fmaxf(_S16, _S17)));
          v133 = 8191.0;
          if (v132 <= 8191.0)
          {
            v133 = v132;
            if (v132 < 0.0)
            {
              v133 = 0.0;
            }
          }

          _H5 = *(v43 + 2 * llroundf(v133));
          __asm { FCVT            S5, H5 }

          v136 = _S6 * _S5;
          v137 = _S16 * _S5;
          v138 = _S17 * _S5;
          _S22 = 255.0;
          if (*(v55 + 2 * llroundf(fminf(fmaxf(((_S24 * (_S16 * _S5)) + ((_S6 * _S5) * _S23)) + ((_S17 * _S5) * _S25), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H16, #0 }

            if (_NF)
            {
              _S22 = 0.0;
            }

            else
            {
              __asm { FCVT            S22, H16 }
            }
          }

          _H16 = v118[v117];
          v142 = ((_S31 * v137) + (v136 * _S29)) + (v138 * v175);
          v143 = ((v173 * v137) + (v136 * v174)) + (v138 * v172);
          v144 = *(v55 + 2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0)));
          v145 = *(v55 + 2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0)));
          *(v125 + v117) = llroundf(_S22);
          if (v144 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H18, #0 }

            if (_NF)
            {
              _S18 = 0.0;
            }

            else
            {
              __asm { FCVT            S18, H18 }
            }
          }

          else
          {
            _S18 = 255.0;
          }

          *(v124 + v117) = llroundf(_S18);
          if (v145 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H7, #0 }

            if (_NF)
            {
              _S7 = 0.0;
            }

            else
            {
              __asm { FCVT            S7, H7 }
            }
          }

          else
          {
            _S7 = 255.0;
          }

          __asm { FCVT            S5, H16 }

          LODWORD(a1) = llroundf(_S7);
          *(v123 + v117) = a1;
          *(v122 + v117) = llroundf(_S5 * 255.0);
          v117 += 4;
          --v116;
        }

        while (v116);
      }

      v68 += v167;
      v63 += v21;
      ++v42;
    }

    while (v42 != v41);
  }

  *&v152[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = v9 + 164;
    v21 = v9 + 16548;
    v22 = v9 + 32932;
    v23 = *(v9 + 104);
    v24 = *(v9 + 108);
    v25 = *(v9 + 112);
    v26 = *(v9 + 116);
    v27 = *(v9 + 120);
    v28 = v5 + *(result + 15);
    v29 = *(result + 28) * a2 / v3 + *(result + 44);
    v30 = *(v9 + 161);
    v31 = *(v9 + 160);
    v32 = *(v9 + 159);
    v33 = *(v9 + 158);
    v34 = *(v9 + 157);
    v35 = *(v9 + 156);
    v36 = *(v9 + 155);
    v37 = *(v9 + 154);
    v38 = **(result + 16) + v11 * v28 + 4 * *(result + 14);
    v39 = **(result + 7) + v29 * v10 + 8 * *(result + 36);
    v40 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v41 = v8;
        v42 = v39;
        v43 = v38;
        do
        {
          _D26.i16[0] = *(v42 + 2 * v37);
          _D26.i16[1] = *(v42 + 2 * v36);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D26), v40), 0), v40)));
          _D26.i16[0] = *(v20 + 2 * _D26.u32[0]);
          _H27 = *(v42 + 2 * v35);
          __asm
          {
            FCVT            S27, H27
            FCVT            S26, H26
          }

          _H28 = *(v20 + 2 * _D26.u32[1]);
          v51 = llroundf(fminf(fmaxf(_S27 * 8191.0, 0.0), 8191.0));
          __asm { FCVT            S27, H28 }

          _H28 = *(v20 + 2 * v51);
          __asm { FCVT            S29, H28 }

          v55 = (((v25 * _S27) + (v24 * *_D26.i32)) + (v26 * _S29)) + (v27 * fmaxf(*_D26.i32, fmaxf(_S27, _S29)));
          v56 = 8191.0;
          if (v55 <= 8191.0)
          {
            v56 = v55;
            if (v55 < 0.0)
            {
              v56 = 0.0;
            }
          }

          _H28 = *(v21 + 2 * llroundf(v56));
          __asm { FCVT            S31, H28 }

          v59 = *_D26.i32 * _S31;
          v60 = _S27 * _S31;
          v61 = _S29 * _S31;
          v62 = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * (_S27 * _S31)) + ((*_D26.i32 * _S31) * v12)) + (v61 * v14), 0.0), 8191.0)));
          _S31 = 255.0;
          if (v62 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H27, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H27 }
            }
          }

          _H27 = *(v42 + 2 * v34);
          v66 = ((v16 * v60) + (v59 * v15)) + (v61 * v17);
          v67 = ((v19 * v60) + (v59 * v18)) + (v61 * v23);
          v68 = *(v22 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          v69 = *(v22 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          *(v43 + v33) = llroundf(_S31);
          if (v68 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H29, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H29 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          *(v43 + v32) = llroundf(_S29);
          if (v69 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H28, #0 }

            if (_NF)
            {
              _S28 = 0.0;
            }

            else
            {
              __asm { FCVT            S28, H28 }
            }
          }

          else
          {
            _S28 = 255.0;
          }

          __asm { FCVT            S27, H27 }

          v42 += 8;
          *(v43 + v31) = llroundf(_S28);
          *(v43 + v30) = llroundf(_S27 * 255.0);
          v43 += 4;
          --v41;
        }

        while (v41);
      }

      v39 += v10;
      v38 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, __n128 _Q1)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 36);
  v7 = *a1;
  v8 = *(a1 + 28) * a2 / v7 + *(a1 + 44);
  v9 = *(a1 + 14);
  v10 = *(a1 + 15);
  v12 = *(a1 + 12);
  v11 = *(a1 + 13);
  v13 = *(a1 + 19);
  v14 = *(a1 + 7);
  v15 = *(a1 + 16);
  v16 = *(a1 + 17);
  result = **(a1 + 8);
  v18 = *v14;
  v19 = *v16;
  v20 = *v15;
  v21 = *(v13 + 154);
  v22 = v11 * a2 / v7;
  v156[0] = *(v13 + 154);
  v23 = v11 + v11 * a2;
  v24 = result * v8;
  v25 = v19 * (v22 + v10);
  v26 = *(v13 + 155);
  v156[1] = *(v13 + 155);
  v27 = *(v13 + 156);
  v156[2] = *(v13 + 156);
  v28 = *(v13 + 157);
  v156[3] = *(v13 + 157);
  v149 = *(v13 + 158);
  v155[0] = *(v13 + 158);
  v148 = *(v13 + 159);
  v155[1] = *(v13 + 159);
  v147 = *(v13 + 160);
  v155[2] = *(v13 + 160);
  v146 = *(v13 + 161);
  v155[3] = *(v13 + 161);
  _S29 = *(v13 + 72);
  _S30 = *(v13 + 76);
  _S31 = *(v13 + 80);
  v150 = *(v13 + 84);
  _S4 = *(v13 + 88);
  _S5 = *(v13 + 92);
  _S6 = *(v13 + 96);
  _S7 = *(v13 + 100);
  _S16 = *(v13 + 104);
  memset(v154, 0, sizeof(v154));
  v152 = 0u;
  v153 = 0u;
  v37 = v23 / v7;
  do
  {
    v38 = 0;
    v39 = v156[v5];
    v40 = v155[v5];
    v41 = *(v154 + v5);
    do
    {
      v151 = v41;
      *(&v151 | v38 & 7) = v39 + 4 * v38;
      v41 = v151;
      *((&v152 + ((v40 + 4 * v38) & 0xF8)) | (v40 + 4 * v38) & 7) = v4 + v38;
      ++v38;
    }

    while (v38 != 8);
    *(v154 + v5++) = v41;
    v4 += 8;
  }

  while (v5 != 4);
  v42 = v37 - v22;
  if (v37 - v22 >= 1)
  {
    v43 = 0;
    v44 = v13 + 164;
    v45 = v13 + 16548;
    __asm
    {
      FCVT            H8, S29
      FCVT            H9, S30
      FCVT            H10, S31
    }

    _S0 = v150;
    __asm
    {
      FCVT            H11, S0
      FCVT            H12, S4
      FCVT            H13, S5
      FCVT            H14, S6
    }

    v58 = v20 + v25 + 4 * v9;
    __asm
    {
      FCVT            H15, S7
      FCVT            H0, S16
    }

    v142 = v28;
    v141 = v27;
    v140 = v26;
    v139 = v21;
    v61 = v18 + v24 + 8 * v6;
    v62.i64[0] = 0x7000700070007000;
    v62.i64[1] = 0x7000700070007000;
    v63.i64[0] = 0x9000900090009000;
    v63.i64[1] = 0x9000900090009000;
    v64 = vdupq_n_s16(0x5BF8u);
    v144 = _S30;
    v145 = _S29;
    v143 = _S31;
    do
    {
      if (v12 < 8)
      {
        v110 = 0;
        v69 = v58;
        v68 = v61;
      }

      else
      {
        v65 = 0;
        v67 = *(&v152 + 8);
        v66 = v152;
        v68 = v61;
        v69 = v58;
        v71 = *(&v153 + 8);
        v70 = v153;
        do
        {
          v157 = vld4q_s16(v68);
          v68 += 32;
          v72 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v157.val[0], v62), 0), v63));
          v73.i16[0] = *(v44 + 2 * v72.u16[0]);
          v74 = (v44 + 2 * v72.u16[1]);
          v75 = (v44 + 2 * v72.u16[2]);
          v76 = (v44 + 2 * v72.u16[3]);
          v77 = (v44 + 2 * v72.u16[4]);
          v78 = v72.u16[6];
          v79 = (v44 + 2 * v72.u16[5]);
          v80 = v72.u16[7];
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v157.val[1], v62), 0), v63));
          v82 = (v44 + 2 * v78);
          v83.i16[0] = *(v44 + 2 * v81.u16[0]);
          v84 = (v44 + 2 * v80);
          v85 = (v44 + 2 * v81.u16[2]);
          v86 = (v44 + 2 * v81.u16[3]);
          v87 = (v44 + 2 * v81.u16[4]);
          v88 = (v44 + 2 * v81.u16[5]);
          v73.i16[1] = *v74;
          v83.i16[1] = *(v44 + 2 * v81.u16[1]);
          v89 = v81.u16[7];
          v73.i16[2] = *v75;
          v90 = (v44 + 2 * v81.u16[6]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v157.val[2], v62), 0), v63));
          v83.i16[2] = *v85;
          v92.i16[0] = *(v44 + 2 * v91.u16[0]);
          v73.i16[3] = *v76;
          v83.i16[3] = *v86;
          v73.i16[4] = *v77;
          v83.i16[4] = *v87;
          v73.i16[5] = *v79;
          v83.i16[5] = *v88;
          v92.i16[1] = *(v44 + 2 * v91.u16[1]);
          v73.i16[6] = *v82;
          v92.i16[2] = *(v44 + 2 * v91.u16[2]);
          v92.i16[3] = *(v44 + 2 * v91.u16[3]);
          v83.i16[6] = *v90;
          v92.i16[4] = *(v44 + 2 * v91.u16[4]);
          v92.i16[5] = *(v44 + 2 * v91.u16[5]);
          v73.i16[7] = *v84;
          v92.i16[6] = *(v44 + 2 * v91.u16[6]);
          v92.i16[7] = *(v44 + 2 * v91.u16[7]);
          v83.i16[7] = *(v44 + 2 * v89);
          v93 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v73, _H8), v83, _H9), v92, _H10);
          v94 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v73, _H11), v83, _H12), v92, _H13);
          v95 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v92, _H0), v83, _H15), v73, _H14);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v93, 0), v63));
          v73.i16[0] = *(v45 + 2 * v96.u16[0]);
          v97 = (v45 + 2 * v96.u16[1]);
          v98 = (v45 + 2 * v96.u16[2]);
          v99 = (v45 + 2 * v96.u16[3]);
          v100 = (v45 + 2 * v96.u16[4]);
          v101 = (v45 + 2 * v96.u16[5]);
          LOWORD(v77) = v96.i16[7];
          v102 = (v45 + 2 * v96.u16[6]);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v94, 0), v63));
          v83.i16[0] = *(v45 + 2 * v103.u16[0]);
          v104 = (v45 + 2 * v103.u16[3]);
          v105 = (v45 + 2 * v103.u16[4]);
          v73.i16[1] = *v97;
          v106 = (v45 + 2 * v103.u16[5]);
          v107 = (v45 + 2 * v103.u16[6]);
          v73.i16[2] = *v98;
          v83.i16[1] = *(v45 + 2 * v103.u16[1]);
          v83.i16[2] = *(v45 + 2 * v103.u16[2]);
          v108 = (v45 + 2 * v103.u16[7]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v63));
          v73.i16[3] = *v99;
          v95.i16[0] = *(v45 + 2 * v109.u16[0]);
          v83.i16[3] = *v104;
          v73.i16[4] = *v100;
          v83.i16[4] = *v105;
          v73.i16[5] = *v101;
          v95.i16[1] = *(v45 + 2 * v109.u16[1]);
          v83.i16[5] = *v106;
          v73.i16[6] = *v102;
          v95.i16[2] = *(v45 + 2 * v109.u16[2]);
          v83.i16[6] = *v107;
          v95.i16[3] = *(v45 + 2 * v109.u16[3]);
          v95.i16[4] = *(v45 + 2 * v109.u16[4]);
          v73.i16[7] = *(v45 + 2 * v77);
          v95.i16[5] = *(v45 + 2 * v109.u16[5]);
          v95.i16[6] = *(v45 + 2 * v109.u16[6]);
          v83.i16[7] = *v108;
          v95.i16[7] = *(v45 + 2 * v109.u16[7]);
          v157.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v73, 0), v64)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v83, 0), v64)));
          v157.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v95, 0), v64)), vcvtq_u16_f16(vmulq_f16(v157.val[3], v64)));
          _Q1.n128_u64[0] = vqtbl2_s8(*v157.val[0].i8, v66);
          *&_Q1.n128_i8[8] = vqtbl2_s8(*v157.val[0].i8, v67);
          *v109.i8 = vqtbl2_s8(*v157.val[0].i8, v70);
          v109.u64[1] = vqtbl2_s8(*v157.val[0].i8, v71);
          *v69 = _Q1;
          *(v69 + 16) = v109;
          v69 += 32;
          v65 += 8;
        }

        while (v65 < v12 - 7);
        v110 = v12 & 0xFFFFFFF8;
        _S30 = v144;
        _S29 = v145;
        _S31 = v143;
      }

      v111 = v12 - v110;
      if (v12 > v110)
      {
        v112 = 0;
        v113 = &v68[v142];
        v114 = &v68[v141];
        v115 = &v68[v140];
        v116 = &v68[v139];
        v117 = v69 + v146;
        v118 = v69 + v147;
        v119 = v69 + v148;
        v120 = v69 + v149;
        do
        {
          _Q1.n128_u16[0] = v116[v112];
          _Q1.n128_u16[1] = v115[v112];
          _D2 = vdup_n_s32(0x45FFF800u);
          _Q1.n128_u64[0] = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_Q1.n128_u64[0]), _D2), 0), _D2)));
          _Q1.n128_u16[0] = *(v44 + 2 * _Q1.n128_u32[0]);
          _D2.i16[0] = v114[v112];
          __asm { FCVT            S2, H2 }

          _H3 = *(v44 + 2 * _Q1.n128_u32[1]);
          __asm
          {
            FCVT            S25, H1
            FCVT            S26, H3
          }

          _Q1.n128_u16[0] = *(v44 + 2 * llroundf(fminf(fmaxf(_D2.f32[0] * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S27, H1 }

          _S28 = 255.0;
          if (*(v45 + 2 * llroundf(fminf(fmaxf(((_S30 * _S26) + (_S25 * _S29)) + (_S27 * _S31), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H17, #0 }

            if (_NF)
            {
              _S28 = 0.0;
            }

            else
            {
              __asm { FCVT            S28, H17 }
            }
          }

          _H17 = v113[v112];
          v129 = ((_S7 * _S26) + (_S25 * _S6)) + (_S27 * _S16);
          v130 = *(v45 + 2 * llroundf(fminf(fmaxf(((_S4 * _S26) + (_S25 * v150)) + (_S27 * _S5), 0.0), 8191.0)));
          v131 = *(v45 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          *(v120 + v112) = llroundf(_S28);
          if (v130 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H25, #0 }

            if (_NF)
            {
              _S25 = 0.0;
            }

            else
            {
              __asm { FCVT            S25, H25 }
            }
          }

          else
          {
            _S25 = 255.0;
          }

          *(v119 + v112) = llroundf(_S25);
          if (v131 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H24, #0 }

            if (_NF)
            {
              _S22 = 0.0;
            }

            else
            {
              __asm { FCVT            S22, H24 }
            }
          }

          else
          {
            _S22 = 255.0;
          }

          __asm { FCVT            S2, H17 }

          *(v118 + v112) = llroundf(_S22);
          *(v117 + v112) = llroundf(_S2 * 255.0);
          v112 += 4;
          --v111;
        }

        while (v111);
      }

      v61 += result;
      v58 += v19;
      ++v43;
    }

    while (v43 != v42);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = *(v9 + 104);
    v21 = v9 + 164;
    v22 = v9 + 16548;
    v23 = v5 + *(result + 15);
    v24 = *(result + 28) * a2 / v3 + *(result + 44);
    v25 = *(v9 + 161);
    v26 = *(v9 + 160);
    v27 = *(v9 + 159);
    v28 = *(v9 + 158);
    v29 = *(v9 + 157);
    v30 = *(v9 + 156);
    v31 = *(v9 + 155);
    v32 = *(v9 + 154);
    v33 = **(result + 16) + v11 * v23 + 4 * *(result + 14);
    v34 = **(result + 7) + v24 * v10 + 8 * *(result + 36);
    v35 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v36 = v8;
        v37 = v34;
        v38 = v33;
        do
        {
          _D22.i16[0] = *(v37 + 2 * v32);
          _D22.i16[1] = *(v37 + 2 * v31);
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D22), v35), 0), v35)));
          _D22.i16[0] = *(v21 + 2 * _D22.u32[0]);
          _H23 = *(v37 + 2 * v30);
          __asm
          {
            FCVT            S23, H23
            FCVT            S24, H22
          }

          _D22.i16[0] = *(v21 + 2 * _D22.u32[1]);
          __asm { FCVT            S25, H22 }

          _D22.i16[0] = *(v21 + 2 * llroundf(fminf(fmaxf(_S23 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S26, H22 }

          _S27 = 255.0;
          if (*(v22 + 2 * llroundf(fminf(fmaxf(((v13 * _S25) + (_S24 * v12)) + (_S26 * v14), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S27 = 0.0;
            }

            else
            {
              __asm { FCVT            S27, H23 }
            }
          }

          _H23 = *(v37 + 2 * v29);
          v51 = ((v16 * _S25) + (_S24 * v15)) + (_S26 * v17);
          v52 = ((v19 * _S25) + (_S24 * v18)) + (_S26 * v20);
          v53 = *(v22 + 2 * llroundf(fminf(fmaxf(v51, 0.0), 8191.0)));
          v54 = *(v22 + 2 * llroundf(fminf(fmaxf(v52, 0.0), 8191.0)));
          *(v38 + v28) = llroundf(_S27);
          if (v53 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H25, #0 }

            if (_NF)
            {
              _S25 = 0.0;
            }

            else
            {
              __asm { FCVT            S25, H25 }
            }
          }

          else
          {
            _S25 = 255.0;
          }

          *(v38 + v27) = llroundf(_S25);
          if (v54 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H24, #0 }

            if (_NF)
            {
              _S24 = 0.0;
            }

            else
            {
              __asm { FCVT            S24, H24 }
            }
          }

          else
          {
            _S24 = 255.0;
          }

          __asm { FCVT            S23, H23 }

          v37 += 8;
          *(v38 + v26) = llroundf(_S24);
          *(v38 + v25) = llroundf(_S23 * 255.0);
          v38 += 4;
          --v36;
        }

        while (v36);
      }

      v34 += v10;
      v33 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_BGRA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_BGRA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *result;
  v75 = *(result + 14);
  v76 = *(result + 36);
  v5 = *(result + 12);
  v6 = *(result + 13);
  v7 = *(result + 19);
  v8 = v6 * a2 / v4;
  v9 = **(result + 8);
  v73 = v9 * (*(result + 28) * a2 / v4 + *(result + 44));
  v74 = **(result + 7);
  v10 = **(result + 17);
  v11 = **(result + 16);
  v12 = v10 * (v8 + *(result + 15));
  v13 = *(v7 + 136);
  v14 = *(v7 + 154);
  v84[0] = *(v7 + 154);
  v15 = *(v7 + 155);
  v84[1] = *(v7 + 155);
  v16 = *(v7 + 156);
  v84[2] = *(v7 + 156);
  v17 = *(v7 + 157);
  v84[3] = *(v7 + 157);
  v78 = *(v7 + 158);
  v83[0] = *(v7 + 158);
  v18 = *(v7 + 159);
  v83[1] = *(v7 + 159);
  v19 = *(v7 + 160);
  v83[2] = *(v7 + 160);
  v20 = *(v7 + 161);
  v83[3] = v20;
  memset(v82, 0, sizeof(v82));
  v80 = 0u;
  v81 = 0u;
  v21 = (v6 + v6 * a2) / v4;
  do
  {
    v22 = 0;
    v23 = v84[v3];
    v24 = v83[v3];
    v25 = *(v82 + v3);
    do
    {
      v79 = v25;
      *(&v79 | v22 & 7) = v23 + 4 * v22;
      v25 = v79;
      *((&v80 + ((v24 + 4 * v22) & 0xF8)) | (v24 + 4 * v22) & 7) = v2 + v22;
      ++v22;
    }

    while (v22 != 8);
    *(v82 + v3++) = v25;
    v2 += 8;
  }

  while (v3 != 4);
  v26 = v21 - v8;
  if (v21 - v8 >= 1)
  {
    v27 = 0;
    _S0 = v13;
    v29 = v11 + v12 + 4 * v75;
    v30 = v74 + v73 + 8 * v76;
    __asm { FCVT            H1, S0 }

    v36 = v17;
    v37 = v16;
    v38 = v15;
    v39 = v14;
    v40 = vdupq_n_s16(0x5BF8u);
    do
    {
      if (v5 < 8)
      {
        v48 = 0;
        v45 = v29;
        v44 = v30;
      }

      else
      {
        v41 = 0;
        v43 = *(&v80 + 8);
        v42 = v80;
        v44 = v30;
        v45 = v29;
        v47 = *(&v81 + 8);
        v46 = v81;
        do
        {
          v85 = vld4q_s16(v44);
          v44 += 32;
          v85.val[1] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v85.val[0], _H1), 0), v40)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v85.val[1], _H1), 0), v40)));
          v85.val[2] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v85.val[2], _H1), 0), v40)), vcvtq_u16_f16(vmulq_f16(v85.val[3], v40)));
          *v85.val[0].i8 = vqtbl2_s8(*v85.val[1].i8, v42);
          v85.val[0].u64[1] = vqtbl2_s8(*v85.val[1].i8, v43);
          *v85.val[3].i8 = vqtbl2_s8(*v85.val[1].i8, v46);
          v85.val[3].u64[1] = vqtbl2_s8(*v85.val[1].i8, v47);
          *v45 = v85.val[0];
          v45[1] = v85.val[3];
          v45 += 2;
          v41 += 8;
        }

        while (v41 < v5 - 7);
        v48 = v5 & 0x7FFFFFF8;
      }

      v49 = v5 - v48;
      if (v5 > v48)
      {
        v50 = 0;
        v51 = &v44[v36];
        v52 = &v44[v37];
        v53 = &v44[v38];
        v54 = &v44[v39];
        v55 = &v45->i8[v20];
        v56 = &v45->i8[v19];
        v57 = &v45->i8[v18];
        v58 = &v45->i8[v78];
        do
        {
          _H4 = v54[v50];
          __asm { FCVT            S4, H4 }

          v61 = 255.0;
          if ((_S0 * _S4) <= 255.0)
          {
            v61 = _S0 * _S4;
            if ((_S0 * _S4) < 0.0)
            {
              v61 = 0.0;
            }
          }

          _H5 = v53[v50];
          __asm { FCVT            S16, H5 }

          _H6 = v52[v50];
          _H5 = v51[v50];
          v66 = _S0 * _S16;
          v58[v50] = llroundf(v61);
          v67 = 255.0;
          if (v66 <= 255.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          __asm { FCVT            S6, H6 }

          v69 = llroundf(v67);
          v70 = _S0 * _S6;
          v57[v50] = v69;
          v71 = 255.0;
          if (v70 <= 255.0)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          __asm { FCVT            S5, H5 }

          v56[v50] = llroundf(v71);
          v55[v50] = llroundf(_S5 * 255.0);
          v50 += 4;
          --v49;
        }

        while (v49);
      }

      v30 += v9;
      v29 += v10;
      ++v27;
    }

    while (v27 != v26);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 4 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_BGRA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 161);
    v15 = *(v8 + 160);
    v16 = *(v8 + 159);
    v17 = *(v8 + 158);
    v18 = *(v8 + 157);
    v19 = *(v8 + 156);
    v20 = *(v8 + 155);
    v21 = *(v8 + 154);
    v22 = **(result + 16) + v10 * v12 + 4 * *(result + 14);
    v23 = **(result + 7) + v13 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v24 = v7;
        v25 = v23;
        v26 = v22;
        do
        {
          _H1 = *(v25 + 2 * v21);
          __asm { FCVT            S1, H1 }

          v33 = 255.0;
          if ((v11 * _S1) <= 255.0)
          {
            v33 = v11 * _S1;
            if ((v11 * _S1) < 0.0)
            {
              v33 = 0.0;
            }
          }

          _H2 = *(v25 + 2 * v20);
          __asm { FCVT            S5, H2 }

          _H3 = *(v25 + 2 * v19);
          _H2 = *(v25 + 2 * v18);
          v38 = v11 * _S5;
          *(v26 + v17) = llroundf(v33);
          v39 = 255.0;
          if (v38 <= 255.0)
          {
            v39 = v38;
            if (v38 < 0.0)
            {
              v39 = 0.0;
            }
          }

          __asm { FCVT            S3, H3 }

          v41 = llroundf(v39);
          v42 = v11 * _S3;
          *(v26 + v16) = v41;
          v43 = 255.0;
          if (v42 <= 255.0)
          {
            v43 = v42;
            if (v42 < 0.0)
            {
              v43 = 0.0;
            }
          }

          __asm { FCVT            S2, H2 }

          v25 += 8;
          *(v26 + v15) = llroundf(v43);
          *(v26 + v14) = llroundf(_S2 * 255.0);
          v26 += 4;
          --v24;
        }

        while (v24);
      }

      v23 += v9;
      v22 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
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
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, float a3)
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
    v11 = **(result + 8);
    v12 = **(result + 17);
    LOWORD(a3) = *(v10 + 144);
    v13 = LODWORD(a3);
    v14 = *(v10 + 72);
    v15 = *(v10 + 76);
    v16 = *(v10 + 80);
    v17 = *(v10 + 84);
    v18 = *(v10 + 88);
    v19 = *(v10 + 92);
    v20 = *(v10 + 96);
    v21 = *(v10 + 100);
    v22 = v10 + 164;
    v23 = v10 + 16548;
    v24 = v10 + 32932;
    v25 = *(v10 + 104);
    v26 = *(v10 + 108);
    v27 = *(v10 + 112);
    v28 = *(v10 + 116);
    v29 = *(v10 + 120);
    v30 = v6 + *(result + 15);
    v31 = *(result + 28) * a2 / v4 + *(result + 44);
    v32 = *(v10 + 157);
    v33 = *(v10 + 156);
    v34 = *(v10 + 155);
    v35 = *(v10 + 154);
    v36 = **(result + 16) + v12 * v30 + 16 * *(result + 14);
    v37 = **(result + 7) + v31 * v11 + 8 * *(result + 36);
    v38 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v9 >= 1)
      {
        v39 = v9;
        v40 = v36;
        v41 = v37;
        do
        {
          _D28.i16[0] = *(v41 + 2 * v35);
          _D28.i16[1] = *(v41 + 2 * v34);
          _D28 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D28), v38), 0), v38)));
          _D28.i16[0] = *(v22 + 2 * _D28.u32[0]);
          _H29 = *(v41 + 2 * v33);
          __asm
          {
            FCVT            S29, H29
            FCVT            S28, H28
          }

          _H30 = *(v22 + 2 * _D28.u32[1]);
          __asm { FCVT            S30, H30 }

          LOWORD(_S29) = *(v22 + 2 * llroundf(fminf(fmaxf(_S29 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S8, H29 }

          v51 = (((v27 * _S30) + (v26 * *_D28.i32)) + (v28 * _S8)) + (v29 * fmaxf(*_D28.i32, fmaxf(_S30, _S8)));
          v52 = 8191.0;
          if (v51 <= 8191.0)
          {
            v52 = v51;
            if (v51 < 0.0)
            {
              v52 = 0.0;
            }
          }

          _H29 = *(v23 + 2 * llroundf(v52));
          __asm { FCVT            S9, H29 }

          v55 = *_D28.i32 * _S9;
          v56 = _S30 * _S9;
          v57 = _S8 * _S9;
          _H28 = *(v24 + 2 * llroundf(fminf(fmaxf(((v21 * v56) + ((*_D28.i32 * _S9) * v20)) + ((_S8 * _S9) * v25), 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          v60 = v13 + _S28;
          v61 = (v13 + _S28) <= 1023.0;
          _D28.i32[0] = 1149222912;
          if (v61)
          {
            *_D28.i32 = v60;
            if (v60 < 0.0)
            {
              _D28 = 0;
            }
          }

          _H8 = *(v24 + 2 * llroundf(fminf(fmaxf(((v18 * v56) + (v55 * v17)) + (v57 * v19), 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          v64 = v13 + _S8;
          v61 = (v13 + _S8) <= 1023.0;
          v65 = 1023.0;
          if (v61)
          {
            v65 = v64;
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          _H29 = *(v24 + 2 * llroundf(fminf(fmaxf(((v15 * v56) + (v55 * v14)) + (v57 * v16), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v68 = v13 + _S29;
          v61 = (v13 + _S29) <= 1023.0;
          v69 = 1023.0;
          if (v61)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          _H30 = *(v41 + 2 * v32);
          __asm { FCVT            S30, H30 }

          v72 = llroundf(*_D28.i32);
          v41 += 8;
          v73 = llroundf(v65) << 10;
          v74 = llroundf(v69);
          v75 = llroundf(_S30 * 3.0);
          if (v75 > 3.0)
          {
            v75 = 3.0;
          }

          *v40++ = v73 | v72 | (llroundf(v75) << 30) | (v74 << 20);
          --v39;
        }

        while (v39);
      }

      v37 += v11;
      v36 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
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
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, float a3)
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
    v11 = **(result + 8);
    v12 = **(result + 17);
    LOWORD(a3) = *(v10 + 144);
    v13 = LODWORD(a3);
    v14 = *(v10 + 72);
    v15 = *(v10 + 76);
    v16 = *(v10 + 80);
    v17 = *(v10 + 84);
    v18 = *(v10 + 88);
    v19 = *(v10 + 92);
    v20 = *(v10 + 96);
    v21 = *(v10 + 100);
    v22 = *(v10 + 104);
    v23 = v10 + 164;
    v24 = v10 + 16548;
    v25 = v6 + *(result + 15);
    v26 = *(result + 28) * a2 / v4 + *(result + 44);
    v27 = *(v10 + 157);
    v28 = *(v10 + 156);
    v29 = *(v10 + 155);
    v30 = *(v10 + 154);
    v31 = **(result + 16) + v12 * v25 + 16 * *(result + 14);
    v32 = **(result + 7) + v26 * v11 + 8 * *(result + 36);
    v33 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v9 >= 1)
      {
        v34 = v9;
        v35 = v32;
        v36 = v31;
        do
        {
          _D24.i16[0] = *(v35 + 2 * v30);
          _D24.i16[1] = *(v35 + 2 * v29);
          _D24 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D24), v33), 0), v33)));
          _D24.i16[0] = *(v23 + 2 * _D24.u32[0]);
          _H25 = *(v35 + 2 * v28);
          __asm { FCVT            S25, H25 }

          v43 = _S25 * 8191.0;
          __asm { FCVT            S25, H24 }

          _D24.i16[0] = *(v23 + 2 * _D24.u32[1]);
          __asm { FCVT            S26, H24 }

          _D24.i16[0] = *(v23 + 2 * llroundf(fminf(fmaxf(v43, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          _D24.i16[0] = *(v24 + 2 * llroundf(fminf(fmaxf(((v21 * _S26) + (_S25 * v20)) + (_S27 * v22), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          v47 = v13 + *_D24.i32;
          v48 = (v13 + *_D24.i32) <= 1023.0;
          _D24.i32[0] = 1149222912;
          if (v48)
          {
            *_D24.i32 = v47;
            if (v47 < 0.0)
            {
              _D24 = 0;
            }
          }

          _H28 = *(v24 + 2 * llroundf(fminf(fmaxf(((v18 * _S26) + (_S25 * v17)) + (_S27 * v19), 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          v51 = v13 + _S28;
          v48 = (v13 + _S28) <= 1023.0;
          v52 = 1023.0;
          if (v48)
          {
            v52 = v51;
            if (v51 < 0.0)
            {
              v52 = 0.0;
            }
          }

          _H25 = *(v24 + 2 * llroundf(fminf(fmaxf(((v15 * _S26) + (_S25 * v14)) + (_S27 * v16), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v55 = v13 + _S25;
          v48 = (v13 + _S25) <= 1023.0;
          v56 = 1023.0;
          if (v48)
          {
            v56 = v55;
            if (v55 < 0.0)
            {
              v56 = 0.0;
            }
          }

          _H26 = *(v35 + 2 * v27);
          __asm { FCVT            S26, H26 }

          v59 = llroundf(*_D24.i32);
          v35 += 8;
          v60 = llroundf(v52) << 10;
          v61 = llroundf(v56);
          v62 = llroundf(_S26 * 3.0);
          if (v62 > 3.0)
          {
            v62 = 3.0;
          }

          *v36++ = v60 | v59 | (llroundf(v62) << 30) | (v61 << 20);
          --v34;
        }

        while (v34);
      }

      v32 += v11;
      v31 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v45 = a2[2];
  v46 = v16;
  v18 = *a6;
  v41 = a6[1];
  v42 = v17;
  v43 = a6[2];
  v44 = v18;
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
    v19 = &v41.i8[-v21];
    bzero(&v41 - v21, v22);
  }

  v23 = a9;
  v24 = v43;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v45, v42), v46), vsubq_s64(v46, v45), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v43, v41), v44), vsubq_s64(v44, v43), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v45, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) <= *a5)
  {
    v33 = vaddq_s64(v43, v28);
    if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
    {
      if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }

    else
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = a5;
      v31 = a7;
      v32 = v13;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = a5;
    v31 = a7;
    v32 = v13;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  v13 = v32;
  a7 = v31;
  a5 = v30;
  v24 = v43;
  v23 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v20 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v19 = v15;
  v35 = v45;
  *(v19 + 4) = v46;
  *(v19 + 20) = v27;
  *(v19 + 36) = v35;
  *(v19 + 5) = v44;
  *(v19 + 6) = v27;
  *(v19 + 7) = v24;
  *(v19 + 7) = v13;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = v23;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v19 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v20 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v20 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4)
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
    v11 = **(result + 8);
    v12 = **(result + 17);
    v13 = *(v10 + 136);
    LOWORD(a4) = *(v10 + 144);
    v14 = LODWORD(a4);
    v15 = v6 + *(result + 15);
    v16 = *(result + 28) * a2 / v4 + *(result + 44);
    v17 = *(v10 + 157);
    v18 = *(v10 + 156);
    v19 = *(v10 + 155);
    v20 = *(v10 + 154);
    v21 = **(result + 16) + v12 * v15 + 16 * *(result + 14);
    v22 = **(result + 7) + v16 * v11 + 8 * *(result + 36);
    do
    {
      if (v9 >= 1)
      {
        v23 = v9;
        v24 = v22;
        v25 = v21;
        do
        {
          _H5 = *(v24 + 2 * v20);
          _H6 = *(v24 + 2 * v19);
          __asm { FCVT            S5, H5 }

          v33 = v13 * _S5;
          __asm { FCVT            S6, H6 }

          _H7 = *(v24 + 2 * v18);
          __asm { FCVT            S7, H7 }

          v37 = v13 * _S6;
          _H16 = *(v24 + 2 * v17);
          __asm { FCVT            S16, H16 }

          v40 = llroundf(_S16 * 3.0);
          v41 = (v13 * _S7) + v14;
          if (v41 < 0.0)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = v41;
          }

          if (v41 <= 1023.0)
          {
            v43 = v42;
          }

          else
          {
            v43 = 1023.0;
          }

          v44 = llroundf(v43);
          v45 = v37 + v14;
          if (v45 < 0.0)
          {
            v46 = 0.0;
          }

          else
          {
            v46 = v45;
          }

          if (v45 <= 1023.0)
          {
            v47 = v46;
          }

          else
          {
            v47 = 1023.0;
          }

          v48 = llroundf(v47);
          v49 = v33 + v14;
          if (v49 < 0.0)
          {
            v50 = 0.0;
          }

          else
          {
            v50 = v49;
          }

          if (v49 <= 1023.0)
          {
            v51 = v50;
          }

          else
          {
            v51 = 1023.0;
          }

          v52 = v40;
          v53 = llroundf(v51);
          v24 += 8;
          if (v52 <= 3.0)
          {
            v54 = v52;
          }

          else
          {
            v54 = 3.0;
          }

          *v25++ = (v48 << 10) | v44 | (llroundf(v54) << 30) | (v53 << 20);
          --v23;
        }

        while (v23);
      }

      v22 += v11;
      v21 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = v9 + 164;
    v21 = v9 + 16548;
    v22 = v9 + 32932;
    v23 = *(v9 + 104);
    v24 = *(v9 + 108);
    v25 = *(v9 + 112);
    v26 = *(v9 + 116);
    v27 = *(v9 + 120);
    v28 = v5 + *(result + 15);
    v29 = *(result + 28) * a2 / v3 + *(result + 44);
    v30 = *(v9 + 157);
    v31 = *(v9 + 156);
    v32 = *(v9 + 155);
    v33 = *(v9 + 154);
    v34 = **(result + 16) + v11 * v28 + 8 * *(result + 14);
    v35 = **(result + 7) + v29 * v10 + 8 * *(result + 36);
    v36 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v37 = v8;
        v38 = v35;
        v39 = v34;
        do
        {
          _D26.i16[0] = *(v38 + 2 * v33);
          _D26.i16[1] = *(v38 + 2 * v32);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D26), v36), 0), v36)));
          _D26.i16[0] = *(v20 + 2 * _D26.u32[0]);
          _H27 = *(v38 + 2 * v31);
          __asm
          {
            FCVT            S27, H27
            FCVT            S26, H26
          }

          _H28 = *(v20 + 2 * _D26.u32[1]);
          __asm { FCVT            S28, H28 }

          LOWORD(_S27) = *(v20 + 2 * llroundf(fminf(fmaxf(_S27 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S30, H27 }

          v49 = (((v25 * _S28) + (v24 * *_D26.i32)) + (v26 * _S30)) + (v27 * fmaxf(*_D26.i32, fmaxf(_S28, _S30)));
          v50 = 8191.0;
          if (v49 <= 8191.0)
          {
            v50 = v49;
            if (v49 < 0.0)
            {
              v50 = 0.0;
            }
          }

          _H27 = *(v21 + 2 * llroundf(v50));
          __asm { FCVT            S31, H27 }

          v53 = *_D26.i32 * _S31;
          v54 = _S28 * _S31;
          v55 = _S30 * _S31;
          _H26 = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * v54) + ((*_D26.i32 * _S31) * v12)) + ((_S30 * _S31) * v14), 0.0), 8191.0)));
          __asm { FCVT            S31, H26 }

          v58 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v58 = _S31;
            if (_NF)
            {
              v58 = 0.0;
            }
          }

          _H26 = *(v38 + 2 * v30);
          v61 = ((v16 * v54) + (v53 * v15)) + (v55 * v17);
          v62 = ((v19 * v54) + (v53 * v18)) + (v55 * v23);
          _H28 = *(v22 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          _H27 = *(v22 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          __asm { FCVT            S31, H28 }

          *v39 = llroundf(v58);
          v66 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v66 = _S31;
            if (_NF)
            {
              v66 = 0.0;
            }
          }

          __asm { FCVT            S30, H27 }

          v39[1] = llroundf(v66);
          v69 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v69 = _S30;
            if (_NF)
            {
              v69 = 0.0;
            }
          }

          __asm { FCVT            S26, H26 }

          v38 += 8;
          v39[2] = llroundf(v69);
          v39[3] = llroundf(_S26 * 65535.0);
          v39 += 4;
          --v37;
        }

        while (v37);
      }

      v35 += v10;
      v34 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = *(v9 + 104);
    v21 = v9 + 164;
    v22 = v9 + 16548;
    v23 = v5 + *(result + 15);
    v24 = *(result + 28) * a2 / v3 + *(result + 44);
    v25 = *(v9 + 157);
    v26 = *(v9 + 156);
    v27 = *(v9 + 155);
    v28 = *(v9 + 154);
    v29 = **(result + 16) + v11 * v23 + 8 * *(result + 14);
    v30 = **(result + 7) + v24 * v10 + 8 * *(result + 36);
    v31 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v32 = v8;
        v33 = v30;
        v34 = v29;
        do
        {
          _D22.i16[0] = *(v33 + 2 * v28);
          _D22.i16[1] = *(v33 + 2 * v27);
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D22), v31), 0), v31)));
          _D22.i16[0] = *(v21 + 2 * _D22.u32[0]);
          _H23 = *(v33 + 2 * v26);
          __asm { FCVT            S23, H23 }

          v41 = _S23 * 8191.0;
          __asm { FCVT            S23, H22 }

          _D22.i16[0] = *(v21 + 2 * _D22.u32[1]);
          __asm { FCVT            S24, H22 }

          _D22.i16[0] = *(v21 + 2 * llroundf(fminf(fmaxf(v41, 0.0), 8191.0)));
          __asm { FCVT            S25, H22 }

          _D22.i16[0] = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * _S24) + (_S23 * v12)) + (_S25 * v14), 0.0), 8191.0)));
          __asm { FCVT            S27, H22 }

          v46 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H22, #0 }

            v46 = _S27;
            if (_NF)
            {
              v46 = 0.0;
            }
          }

          _H22 = *(v33 + 2 * v25);
          v49 = ((v16 * _S24) + (_S23 * v15)) + (_S25 * v17);
          v50 = ((v19 * _S24) + (_S23 * v18)) + (_S25 * v20);
          _H24 = *(v22 + 2 * llroundf(fminf(fmaxf(v49, 0.0), 8191.0)));
          _H23 = *(v22 + 2 * llroundf(fminf(fmaxf(v50, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          *v34 = llroundf(v46);
          v54 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H24, #0 }

            v54 = _S27;
            if (_NF)
            {
              v54 = 0.0;
            }
          }

          __asm { FCVT            S26, H23 }

          v34[1] = llroundf(v54);
          v57 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H23, #0 }

            v57 = _S26;
            if (_NF)
            {
              v57 = 0.0;
            }
          }

          __asm { FCVT            S22, H22 }

          v33 += 8;
          v34[2] = llroundf(v57);
          v34[3] = llroundf(_S22 * 65535.0);
          v34 += 4;
          --v32;
        }

        while (v32);
      }

      v30 += v10;
      v29 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_l64r_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 8 * *(result + 14);
    v19 = **(result + 7) + v13 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          _H2 = *(v21 + 2 * v17);
          __asm { FCVT            S2, H2 }

          v29 = v11 * _S2;
          v30 = 65535.0;
          if (v29 <= 65535.0)
          {
            v30 = v29;
            if (v29 < 0.0)
            {
              v30 = 0.0;
            }
          }

          _H2 = *(v21 + 2 * v16);
          __asm { FCVT            S5, H2 }

          _H3 = *(v21 + 2 * v15);
          _H2 = *(v21 + 2 * v14);
          v35 = v11 * _S5;
          *v22 = llroundf(v30);
          v36 = 65535.0;
          if (v35 <= 65535.0)
          {
            v36 = v35;
            if (v35 < 0.0)
            {
              v36 = 0.0;
            }
          }

          __asm { FCVT            S3, H3 }

          v38 = v11 * _S3;
          v22[1] = llroundf(v36);
          v39 = (v11 * _S3) <= 65535.0;
          v40 = 65535.0;
          if (v39)
          {
            v40 = v38;
            if (v38 < 0.0)
            {
              v40 = 0.0;
            }
          }

          __asm { FCVT            S2, H2 }

          v21 += 8;
          v22[2] = llroundf(v40);
          v22[3] = llroundf(_S2 * 65535.0);
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = v9 + 164;
    v21 = v9 + 16548;
    v22 = v9 + 32932;
    v23 = *(v9 + 104);
    v24 = *(v9 + 108);
    v25 = *(v9 + 112);
    v26 = *(v9 + 116);
    v27 = *(v9 + 120);
    v28 = v5 + *(result + 15);
    v29 = *(result + 28) * a2 / v3 + *(result + 44);
    v30 = *(v9 + 157);
    v31 = *(v9 + 156);
    v32 = *(v9 + 155);
    v33 = *(v9 + 154);
    v34 = **(result + 16) + v11 * v28 + 8 * *(result + 14);
    v35 = **(result + 7) + v29 * v10 + 8 * *(result + 36);
    v36 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v37 = v8;
        v38 = v35;
        v39 = v34;
        do
        {
          _D26.i16[0] = *(v38 + 2 * v33);
          _D26.i16[1] = *(v38 + 2 * v32);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D26), v36), 0), v36)));
          _D26.i16[0] = *(v20 + 2 * _D26.u32[0]);
          _H27 = *(v38 + 2 * v31);
          __asm
          {
            FCVT            S27, H27
            FCVT            S26, H26
          }

          _H28 = *(v20 + 2 * _D26.u32[1]);
          __asm { FCVT            S28, H28 }

          LOWORD(_S27) = *(v20 + 2 * llroundf(fminf(fmaxf(_S27 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S30, H27 }

          v49 = (((v25 * _S28) + (v24 * *_D26.i32)) + (v26 * _S30)) + (v27 * fmaxf(*_D26.i32, fmaxf(_S28, _S30)));
          v50 = 8191.0;
          if (v49 <= 8191.0)
          {
            v50 = v49;
            if (v49 < 0.0)
            {
              v50 = 0.0;
            }
          }

          _H27 = *(v21 + 2 * llroundf(v50));
          __asm { FCVT            S31, H27 }

          v53 = *_D26.i32 * _S31;
          v54 = _S28 * _S31;
          v55 = _S30 * _S31;
          _H30 = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * v54) + ((*_D26.i32 * _S31) * v12)) + ((_S30 * _S31) * v14), 0.0), 8191.0)));
          __asm { FCVT            S31, H30 }

          _D26.i32[0] = 1199570688;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            *_D26.i32 = _S31;
            if (_NF)
            {
              _D26 = 0;
            }
          }

          _H31 = *(v22 + 2 * llroundf(fminf(fmaxf(((v16 * v54) + (v53 * v15)) + (v55 * v17), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          v61 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v61 = _S8;
            if (_NF)
            {
              v61 = 0.0;
            }
          }

          _H28 = *(v22 + 2 * llroundf(fminf(fmaxf(((v19 * v54) + (v53 * v18)) + (v55 * v23), 0.0), 8191.0)));
          __asm { FCVT            S29, H28 }

          v65 = 65535.0;
          if (_S29 <= 65535.0)
          {
            __asm { FCMP            H28, #0 }

            v65 = _S29;
            if (_NF)
            {
              v65 = 0.0;
            }
          }

          _H28 = *(v38 + 2 * v30);
          __asm { FCVT            S28, H28 }

          v38 += 8;
          *v39 = __rev16(llroundf(_S28 * 65535.0));
          v39[1] = __rev16(llroundf(*_D26.i32));
          v39[2] = __rev16(llroundf(v61));
          v39[3] = __rev16(llroundf(v65));
          v39 += 4;
          --v37;
        }

        while (v37);
      }

      v35 += v10;
      v34 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = *(v9 + 104);
    v21 = v9 + 164;
    v22 = v9 + 16548;
    v23 = v5 + *(result + 15);
    v24 = *(result + 28) * a2 / v3 + *(result + 44);
    v25 = *(v9 + 157);
    v26 = *(v9 + 156);
    v27 = *(v9 + 155);
    v28 = *(v9 + 154);
    v29 = **(result + 16) + v11 * v23 + 8 * *(result + 14);
    v30 = **(result + 7) + v24 * v10 + 8 * *(result + 36);
    v31 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v32 = v8;
        v33 = v30;
        v34 = v29;
        do
        {
          _D22.i16[0] = *(v33 + 2 * v28);
          _D22.i16[1] = *(v33 + 2 * v27);
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D22), v31), 0), v31)));
          _D22.i16[0] = *(v21 + 2 * _D22.u32[0]);
          _H23 = *(v33 + 2 * v26);
          __asm { FCVT            S23, H23 }

          v41 = _S23 * 8191.0;
          __asm { FCVT            S23, H22 }

          _D22.i16[0] = *(v21 + 2 * _D22.u32[1]);
          __asm { FCVT            S24, H22 }

          _D22.i16[0] = *(v21 + 2 * llroundf(fminf(fmaxf(v41, 0.0), 8191.0)));
          __asm { FCVT            S25, H22 }

          _H26 = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * _S24) + (_S23 * v12)) + (_S25 * v14), 0.0), 8191.0)));
          __asm { FCVT            S27, H26 }

          _D22.i32[0] = 1199570688;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            *_D22.i32 = _S27;
            if (_NF)
            {
              _D22 = 0;
            }
          }

          _H27 = *(v22 + 2 * llroundf(fminf(fmaxf(((v16 * _S24) + (_S23 * v15)) + (_S25 * v17), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v50 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v50 = _S28;
            if (_NF)
            {
              v50 = 0.0;
            }
          }

          _H24 = *(v22 + 2 * llroundf(fminf(fmaxf(((v19 * _S24) + (_S23 * v18)) + (_S25 * v20), 0.0), 8191.0)));
          __asm { FCVT            S25, H24 }

          v54 = 65535.0;
          if (_S25 <= 65535.0)
          {
            __asm { FCMP            H24, #0 }

            v54 = _S25;
            if (_NF)
            {
              v54 = 0.0;
            }
          }

          _H24 = *(v33 + 2 * v25);
          __asm { FCVT            S24, H24 }

          v33 += 8;
          *v34 = __rev16(llroundf(_S24 * 65535.0));
          v34[1] = __rev16(llroundf(*_D22.i32));
          v34[2] = __rev16(llroundf(v50));
          v34[3] = __rev16(llroundf(v54));
          v34 += 4;
          --v32;
        }

        while (v32);
      }

      v30 += v10;
      v29 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_b64a_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v9 = **(result + 8);
    v10 = **(result + 17);
    v11 = *(v8 + 136);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 8 * *(result + 14);
    v19 = **(result + 7) + v13 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          _H2 = *(v21 + 2 * v17);
          __asm { FCVT            S2, H2 }

          v29 = v11 * _S2;
          v30 = (v11 * _S2) <= 65535.0;
          v31 = 65535.0;
          if (v30)
          {
            v31 = v29;
            if (v29 < 0.0)
            {
              v31 = 0.0;
            }
          }

          _H3 = *(v21 + 2 * v16);
          __asm { FCVT            S3, H3 }

          v34 = v11 * _S3;
          v30 = (v11 * _S3) <= 65535.0;
          v35 = 65535.0;
          if (v30)
          {
            v35 = v34;
            if (v34 < 0.0)
            {
              v35 = 0.0;
            }
          }

          _H4 = *(v21 + 2 * v15);
          __asm { FCVT            S4, H4 }

          v38 = v11 * _S4;
          v30 = (v11 * _S4) <= 65535.0;
          v39 = 65535.0;
          if (v30)
          {
            v39 = v38;
            if (v38 < 0.0)
            {
              v39 = 0.0;
            }
          }

          _H5 = *(v21 + 2 * v14);
          __asm { FCVT            S5, H5 }

          v21 += 8;
          *v22 = __rev16(llroundf(_S5 * 65535.0));
          v22[1] = __rev16(llroundf(v31));
          v22[2] = __rev16(llroundf(v35));
          v22[3] = __rev16(llroundf(v39));
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint16x8_t _Q5)
{
  v8 = 0;
  v9 = *(result + 36);
  v10 = *result;
  v11 = *(result + 14);
  v12 = *(result + 12);
  v13 = *(result + 13);
  v14 = *(result + 19);
  v15 = v13 * a2 / v10;
  v16 = **(result + 8);
  v17 = **(result + 7);
  v18 = v16 * (*(result + 28) * a2 / v10 + *(result + 44));
  v19 = **(result + 17);
  v20 = **(result + 16);
  v21 = v19 * (v15 + *(result + 15));
  v22 = *(v14 + 154);
  v132[0] = *(v14 + 154);
  v23 = *(v14 + 155);
  v132[1] = *(v14 + 155);
  v24 = *(v14 + 156);
  v132[2] = *(v14 + 156);
  v25 = *(v14 + 157);
  v132[3] = *(v14 + 157);
  _S31 = *(v14 + 72);
  v128 = *(v14 + 80);
  v129 = *(v14 + 76);
  v126 = *(v14 + 88);
  v127 = *(v14 + 84);
  v124 = *(v14 + 96);
  v125 = *(v14 + 92);
  v123 = *(v14 + 100);
  _S16 = *(v14 + 104);
  _S17 = *(v14 + 108);
  _S18 = *(v14 + 112);
  _S19 = *(v14 + 116);
  _S20 = *(v14 + 120);
  memset(v131, 0, sizeof(v131));
  v32 = (v13 + v13 * a2) / v10;
  do
  {
    v33 = 0;
    v34 = v132[v8];
    v35 = *(v131 + v8);
    do
    {
      v130 = v35;
      *(&v130 | v33 & 7) = v34 + 4 * v33;
      v35 = v130;
      ++v33;
    }

    while (v33 != 8);
    *(v131 + v8++) = v130;
  }

  while (v8 != 4);
  v36 = v32 - v15;
  if (v32 - v15 >= 1)
  {
    v37 = 0;
    v38 = v14 + 16548;
    __asm
    {
      FCVT            H8, S17
      FCVT            H9, S18
      FCVT            H10, S19
    }

    v46 = v14 + 32932;
    v47 = v14 + 164;
    __asm
    {
      FCVT            H11, S20
      FCVT            H12, S31
    }

    _S0 = v128;
    _S1 = v129;
    __asm
    {
      FCVT            H13, S1
      FCVT            H14, S0
    }

    _S0 = v126;
    _S1 = v127;
    __asm
    {
      FCVT            H15, S1
      FCVT            H0, S0
    }

    v58 = v20 + v21 + 8 * v11;
    _S2 = v124;
    _S1 = v125;
    __asm
    {
      FCVT            H1, S1
      FCVT            H2, S2
    }

    v63 = v17 + v18 + 8 * v9;
    _S3 = v123;
    __asm
    {
      FCVT            H3, S3
      FCVT            H4, S16
    }

    v120 = v22;
    v121 = v23;
    v67.i64[0] = 0x7000700070007000;
    v67.i64[1] = 0x7000700070007000;
    v68.i64[0] = 0x9000900090009000;
    v68.i64[1] = 0x9000900090009000;
    v122 = _S31;
    do
    {
      if (v12 < 8)
      {
        v97 = 0;
        v71 = v58;
        v70 = v63;
      }

      else
      {
        v69 = 0;
        v70 = v63;
        v71 = v58;
        do
        {
          v133 = vld4q_s16(v70);
          v70 += 32;
          v72 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v133.val[0], v67), 0), v68));
          v73.i16[0] = *(v47 + 2 * v72.u16[0]);
          v74 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v133.val[1], v67), 0), v68));
          v72.i16[0] = *(v47 + 2 * v74.u16[0]);
          v75 = (v47 + 2 * v74.u16[3]);
          v76 = (v47 + 2 * v74.u16[4]);
          v73.i16[1] = *(v47 + 2 * v72.u16[1]);
          v72.i16[1] = *(v47 + 2 * v74.u16[1]);
          v73.i16[2] = *(v47 + 2 * v72.u16[2]);
          v77 = (v47 + 2 * v74.u16[5]);
          v78 = (v47 + 2 * v74.u16[6]);
          v72.i16[2] = *(v47 + 2 * v74.u16[2]);
          v79 = (v47 + 2 * v74.u16[7]);
          v73.i16[3] = *(v47 + 2 * v72.u16[3]);
          v80 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v133.val[2], v67), 0), v68));
          v72.i16[3] = *v75;
          v81.i16[0] = *(v47 + 2 * v80.u16[0]);
          v73.i16[4] = *(v47 + 2 * v72.u16[4]);
          v72.i16[4] = *v76;
          v73.i16[5] = *(v47 + 2 * v72.u16[5]);
          v72.i16[5] = *v77;
          v73.i16[6] = *(v47 + 2 * v72.u16[6]);
          v81.i16[1] = *(v47 + 2 * v80.u16[1]);
          v72.i16[6] = *v78;
          v81.i16[2] = *(v47 + 2 * v80.u16[2]);
          v81.i16[3] = *(v47 + 2 * v80.u16[3]);
          v73.i16[7] = *(v47 + 2 * v72.u16[7]);
          v81.i16[4] = *(v47 + 2 * v80.u16[4]);
          v81.i16[5] = *(v47 + 2 * v80.u16[5]);
          v72.i16[7] = *v79;
          v81.i16[6] = *(v47 + 2 * v80.u16[6]);
          v81.i16[7] = *(v47 + 2 * v80.u16[7]);
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v73, _H8), v72, _H9), v81, _H10), vmaxq_f16(vmaxq_f16(v73, v72), v81), _H11), 0), v68));
          v83.i16[0] = *(v38 + 2 * v82.u16[0]);
          v83.i16[1] = *(v38 + 2 * v82.u16[1]);
          v83.i16[2] = *(v38 + 2 * v82.u16[2]);
          v83.i16[3] = *(v38 + 2 * v82.u16[3]);
          v83.i16[4] = *(v38 + 2 * v82.u16[4]);
          v83.i16[5] = *(v38 + 2 * v82.u16[5]);
          v83.i16[6] = *(v38 + 2 * v82.u16[6]);
          v83.i16[7] = *(v38 + 2 * v82.u16[7]);
          v84 = vmulq_f16(v73, v83);
          v85 = vmulq_f16(v72, v83);
          v86 = vmulq_f16(v81, v83);
          v87 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, _H15), v85, _H0), v86, _H1);
          v88 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v86, _H4), v85, _H3), v84, _H2);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, _H12), v85, _H13), v86, _H14), 0), v68));
          v133.val[0].i16[0] = *(v46 + 2 * v89.u16[0]);
          v90 = (v46 + 2 * v89.u16[5]);
          v91 = (v46 + 2 * v89.u16[6]);
          v133.val[0].i16[1] = *(v46 + 2 * v89.u16[1]);
          v133.val[0].i16[2] = *(v46 + 2 * v89.u16[2]);
          v92 = (v46 + 2 * v89.u16[7]);
          v133.val[0].i16[3] = *(v46 + 2 * v89.u16[3]);
          v133.val[0].i16[4] = *(v46 + 2 * v89.u16[4]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v87, 0), v68));
          v133.val[0].i16[5] = *v90;
          v133.val[0].i16[6] = *v91;
          v133.val[0].i16[7] = *v92;
          v94 = (v46 + 2 * v93.u16[5]);
          v95 = (v46 + 2 * v93.u16[6]);
          v133.val[1].i16[0] = *(v46 + 2 * v93.u16[0]);
          v133.val[1].i16[1] = *(v46 + 2 * v93.u16[1]);
          v133.val[1].i16[2] = *(v46 + 2 * v93.u16[2]);
          v96 = (v46 + 2 * v93.u16[7]);
          v133.val[1].i16[3] = *(v46 + 2 * v93.u16[3]);
          v133.val[1].i16[4] = *(v46 + 2 * v93.u16[4]);
          _Q5 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v88, 0), v68));
          v133.val[1].i16[5] = *v94;
          v133.val[1].i16[6] = *v95;
          v133.val[1].i16[7] = *v96;
          v133.val[2].i16[0] = *(v46 + 2 * _Q5.u16[0]);
          v133.val[2].i16[1] = *(v46 + 2 * _Q5.u16[1]);
          v133.val[2].i16[2] = *(v46 + 2 * _Q5.u16[2]);
          v133.val[2].i16[3] = *(v46 + 2 * _Q5.u16[3]);
          v133.val[2].i16[4] = *(v46 + 2 * _Q5.u16[4]);
          v133.val[2].i16[5] = *(v46 + 2 * _Q5.u16[5]);
          v133.val[2].i16[6] = *(v46 + 2 * _Q5.u16[6]);
          v133.val[2].i16[7] = *(v46 + 2 * _Q5.u16[7]);
          vst4q_s16(v71, v133);
          v71 += 32;
          v69 += 8;
        }

        while (v69 < v12 - 7);
        v97 = v12 & 0x7FFFFFF8;
        _S31 = v122;
      }

      v98 = v12 - v97;
      if (v12 > v97)
      {
        v99 = &v70[v25];
        v100 = &v70[v24];
        v101 = &v70[v121];
        v102 = &v70[v120];
        do
        {
          _Q5.i16[0] = *v102;
          _Q5.i16[1] = *v101;
          _D6 = vdup_n_s32(0x45FFF800u);
          *_Q5.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q5.i8), _D6), 0), _D6)));
          _Q5.i16[0] = *(v47 + 2 * _Q5.u32[0]);
          _D6.i16[0] = *v100;
          __asm
          {
            FCVT            S6, H6
            FCVT            S22, H5
          }

          _Q5.i16[0] = *(v47 + 2 * _Q5.u32[1]);
          __asm { FCVT            S23, H5 }

          _Q5.i16[0] = *(v47 + 2 * llroundf(fminf(fmaxf(_D6.f32[0] * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S24, H5 }

          v107 = fmaxf(_S22, fmaxf(_S23, _S24));
          v108 = (((_S18 * _S23) + (_S17 * _S22)) + (_S19 * _S24)) + (_S20 * v107);
          v109 = 8191.0;
          if (v108 <= 8191.0)
          {
            v109 = (((_S18 * _S23) + (_S17 * _S22)) + (_S19 * _S24)) + (_S20 * v107);
            if (v108 < 0.0)
            {
              v109 = 0.0;
            }
          }

          _H5 = *(v38 + 2 * llroundf(v109));
          v111 = *v99;
          __asm { FCVT            S5, H5 }

          v113 = _S22 * _S5;
          v114 = _S23 * _S5;
          v115 = _S24 * _S5;
          v116 = ((v129 * v114) + (v113 * _S31)) + (v115 * v128);
          v117 = ((v126 * v114) + (v113 * v127)) + (v115 * v125);
          v118 = ((v123 * v114) + (v113 * v124)) + (v115 * _S16);
          LOWORD(v114) = *(v46 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          LOWORD(v118) = *(v46 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          *v71 = *(v46 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          v71[1] = LOWORD(v114);
          v99 += 4;
          v100 += 4;
          v71[2] = LOWORD(v118);
          v71[3] = v111;
          v101 += 4;
          v102 += 4;
          v71 += 4;
          --v98;
        }

        while (v98);
      }

      v63 += v16;
      v58 += v19;
      ++v37;
    }

    while (v37 != v36);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = v9 + 164;
    v21 = v9 + 16548;
    v22 = v9 + 32932;
    v23 = *(v9 + 104);
    v24 = *(v9 + 108);
    v25 = *(v9 + 112);
    v26 = *(v9 + 116);
    v27 = *(v9 + 120);
    v28 = v5 + *(result + 15);
    v29 = *(result + 28) * a2 / v3 + *(result + 44);
    v30 = *(v9 + 157);
    v31 = *(v9 + 156);
    v32 = *(v9 + 155);
    v33 = *(v9 + 154);
    v34 = **(result + 16) + v11 * v28 + 8 * *(result + 14);
    v35 = **(result + 7) + v29 * v10 + 8 * *(result + 36);
    v36 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v37 = v8;
        v38 = v35;
        v39 = v34;
        do
        {
          _D25.i16[0] = *(v38 + 2 * v33);
          _D25.i16[1] = *(v38 + 2 * v32);
          _D25 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D25), v36), 0), v36)));
          _D25.i16[0] = *(v20 + 2 * _D25.u32[0]);
          _H26 = *(v38 + 2 * v31);
          __asm
          {
            FCVT            S26, H26
            FCVT            S25, H25
          }

          _H27 = *(v20 + 2 * _D25.u32[1]);
          v47 = llroundf(fminf(fmaxf(_S26 * 8191.0, 0.0), 8191.0));
          __asm { FCVT            S26, H27 }

          _H27 = *(v20 + 2 * v47);
          __asm { FCVT            S27, H27 }

          v51 = (((v25 * _S26) + (v24 * *_D25.i32)) + (v26 * _S27)) + (v27 * fmaxf(*_D25.i32, fmaxf(_S26, _S27)));
          v52 = 8191.0;
          if (v51 <= 8191.0)
          {
            v52 = v51;
            if (v51 < 0.0)
            {
              v52 = 0.0;
            }
          }

          v53 = *(v38 + 2 * v30);
          _H28 = *(v21 + 2 * llroundf(v52));
          __asm { FCVT            S28, H28 }

          v56 = *_D25.i32 * _S28;
          v57 = _S26 * _S28;
          v58 = _S27 * _S28;
          v59 = ((v13 * v57) + (v56 * v12)) + (v58 * v14);
          v60 = ((v16 * v57) + (v56 * v15)) + (v58 * v17);
          v61 = ((v19 * v57) + (v56 * v18)) + (v58 * v23);
          LOWORD(v58) = *(v22 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          LOWORD(v61) = *(v22 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          *v39 = *(v22 + 2 * llroundf(fminf(fmaxf(v59, 0.0), 8191.0)));
          v39[1] = LOWORD(v58);
          v38 += 8;
          v39[2] = LOWORD(v61);
          v39[3] = v53;
          v39 += 4;
          --v37;
        }

        while (v37);
      }

      v35 += v10;
      v34 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 36);
  v5 = *result;
  v6 = *(result + 14);
  v7 = *(result + 12);
  v8 = *(result + 13);
  v9 = v8 * a2 / v5;
  v10 = *(result + 19);
  v11 = **(result + 8);
  v12 = **(result + 7);
  v13 = v11 * (*(result + 28) * a2 / v5 + *(result + 44));
  v14 = **(result + 17);
  v15 = **(result + 16);
  v16 = v14 * (v9 + *(result + 15));
  v17 = *(v10 + 154);
  v113[0] = *(v10 + 154);
  v18 = *(v10 + 155);
  v113[1] = *(v10 + 155);
  v19 = *(v10 + 156);
  v113[2] = *(v10 + 156);
  v20 = *(v10 + 157);
  v113[3] = *(v10 + 157);
  _S17 = *(v10 + 72);
  _S1 = *(v10 + 76);
  _S2 = *(v10 + 80);
  _S3 = *(v10 + 84);
  _S4 = *(v10 + 88);
  _S5 = *(v10 + 92);
  _S6 = *(v10 + 96);
  _S7 = *(v10 + 100);
  _S16 = *(v10 + 104);
  memset(v112, 0, sizeof(v112));
  v30 = (v8 + v8 * a2) / v5;
  do
  {
    v31 = 0;
    v32 = v113[v3];
    v33 = *(v112 + v3);
    do
    {
      v111 = v33;
      *(&v111 | v31 & 7) = v32 + 4 * v31;
      v33 = v111;
      ++v31;
    }

    while (v31 != 8);
    *(v112 + v3++) = v111;
  }

  while (v3 != 4);
  v34 = v30 - v9;
  if (v30 - v9 >= 1)
  {
    v35 = 0;
    v36 = v10 + 164;
    v37 = v10 + 16548;
    __asm
    {
      FCVT            H8, S17
      FCVT            H9, S1
      FCVT            H10, S2
      FCVT            H11, S3
      FCVT            H12, S4
      FCVT            H13, S5
      FCVT            H14, S6
    }

    v49 = v15 + v16 + 8 * v6;
    __asm { FCVT            H15, S7 }

    v110 = v20;
    __asm { FCVT            H0, S16 }

    v109 = v19;
    v108 = v17;
    v52 = v12 + v13 + 8 * v4;
    v53.i64[0] = 0x7000700070007000;
    v53.i64[1] = 0x7000700070007000;
    v54.i64[0] = 0x9000900090009000;
    v54.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v89 = 0;
        v57 = v49;
        v56 = v52;
      }

      else
      {
        v55 = 0;
        v56 = v52;
        v57 = v49;
        do
        {
          v114 = vld4q_s16(v56);
          v56 += 32;
          v58 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v114.val[0], v53), 0), v54));
          v59.i16[0] = *(v36 + 2 * v58.u16[0]);
          v60 = (v36 + 2 * v58.u16[1]);
          v61 = (v36 + 2 * v58.u16[2]);
          v62 = (v36 + 2 * v58.u16[3]);
          v63 = (v36 + 2 * v58.u16[4]);
          v64 = (v36 + 2 * v58.u16[5]);
          v65 = v58.u16[7];
          v66 = (v36 + 2 * v58.u16[6]);
          v67 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v114.val[1], v53), 0), v54));
          v68.i16[0] = *(v36 + 2 * v67.u16[0]);
          v69 = (v36 + 2 * v65);
          v70 = (v36 + 2 * v67.u16[3]);
          v71 = (v36 + 2 * v67.u16[4]);
          v72 = (v36 + 2 * v67.u16[5]);
          v59.i16[1] = *v60;
          v68.i16[1] = *(v36 + 2 * v67.u16[1]);
          v59.i16[2] = *v61;
          v73 = (v36 + 2 * v67.u16[6]);
          v74 = v67.u16[7];
          v68.i16[2] = *(v36 + 2 * v67.u16[2]);
          v75 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v114.val[2], v53), 0), v54));
          v59.i16[3] = *v62;
          v76.i16[0] = *(v36 + 2 * v75.u16[0]);
          v68.i16[3] = *v70;
          v59.i16[4] = *v63;
          v68.i16[4] = *v71;
          v76.i16[1] = *(v36 + 2 * v75.u16[1]);
          v59.i16[5] = *v64;
          v68.i16[5] = *v72;
          v76.i16[2] = *(v36 + 2 * v75.u16[2]);
          v59.i16[6] = *v66;
          v68.i16[6] = *v73;
          v76.i16[3] = *(v36 + 2 * v75.u16[3]);
          v76.i16[4] = *(v36 + 2 * v75.u16[4]);
          v59.i16[7] = *v69;
          v76.i16[5] = *(v36 + 2 * v75.u16[5]);
          v76.i16[6] = *(v36 + 2 * v75.u16[6]);
          v68.i16[7] = *(v36 + 2 * v74);
          v76.i16[7] = *(v36 + 2 * v75.u16[7]);
          v77 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v59, _H8), v68, _H9), v76, _H10);
          v78 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v59, _H11), v68, _H12), v76, _H13);
          v79 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, _H0), v68, _H15), v59, _H14);
          v80 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v77, 0), v54));
          _D23.i16[0] = *(v37 + 2 * v80.u16[0]);
          v81 = (v37 + 2 * v80.u16[5]);
          v82 = (v37 + 2 * v80.u16[6]);
          _D23.i16[1] = *(v37 + 2 * v80.u16[1]);
          _D23.i16[2] = *(v37 + 2 * v80.u16[2]);
          v83 = (v37 + 2 * v80.u16[7]);
          _D23.i16[3] = *(v37 + 2 * v80.u16[3]);
          v114.val[0].i16[4] = *(v37 + 2 * v80.u16[4]);
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v78, 0), v54));
          v114.val[0].i16[5] = *v81;
          v114.val[0].i16[6] = *v82;
          v114.val[0].i16[7] = *v83;
          v85 = (v37 + 2 * v84.u16[5]);
          v86 = (v37 + 2 * v84.u16[6]);
          v114.val[1].i16[0] = *(v37 + 2 * v84.u16[0]);
          v114.val[1].i16[1] = *(v37 + 2 * v84.u16[1]);
          v114.val[1].i16[2] = *(v37 + 2 * v84.u16[2]);
          v87 = (v37 + 2 * v84.u16[7]);
          v114.val[1].i16[3] = *(v37 + 2 * v84.u16[3]);
          v114.val[1].i16[4] = *(v37 + 2 * v84.u16[4]);
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v54));
          v114.val[1].i16[5] = *v85;
          v114.val[1].i16[6] = *v86;
          v114.val[1].i16[7] = *v87;
          v114.val[2].i16[0] = *(v37 + 2 * v88.u16[0]);
          v114.val[2].i16[1] = *(v37 + 2 * v88.u16[1]);
          v114.val[2].i16[2] = *(v37 + 2 * v88.u16[2]);
          v114.val[2].i16[3] = *(v37 + 2 * v88.u16[3]);
          v114.val[2].i16[4] = *(v37 + 2 * v88.u16[4]);
          v114.val[2].i16[5] = *(v37 + 2 * v88.u16[5]);
          v114.val[2].i16[6] = *(v37 + 2 * v88.u16[6]);
          v114.val[2].i16[7] = *(v37 + 2 * v88.u16[7]);
          vst4q_s16(v57, *_D23.i8);
          v57 += 32;
          v55 += 8;
        }

        while (v55 < v7 - 7);
        v89 = v7 & 0x7FFFFFF8;
      }

      v90 = v7 - v89;
      if (v7 > v89)
      {
        v91 = &v56[v110];
        v92 = &v56[v109];
        v93 = &v56[v18];
        v94 = &v56[v108];
        do
        {
          v95 = *v94;
          v94 += 4;
          _D23.i16[0] = v95;
          v96 = *v93;
          v93 += 4;
          v97 = v96;
          v98 = *v92;
          v92 += 4;
          _H25 = v98;
          __asm { FCVT            S25, H25 }

          _D23.i16[1] = v97;
          v101 = vdup_n_s32(0x45FFF800u);
          _D23 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D23), v101), 0), v101)));
          _D23.i16[0] = *(v36 + 2 * _D23.u32[0]);
          _H26 = *(v36 + 2 * _D23.u32[1]);
          __asm { FCVT            S26, H26 }

          LOWORD(_S25) = *(v36 + 2 * llroundf(fminf(fmaxf(_S25 * 8191.0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S23, H23
            FCVT            S25, H25
          }

          v105 = ((_S1 * _S26) + (*_D23.i32 * _S17)) + (_S25 * _S2);
          v101.i16[0] = *(v37 + 2 * llroundf(fminf(fmaxf(((_S4 * _S26) + (*_D23.i32 * _S3)) + (_S25 * _S5), 0.0), 8191.0)));
          _D23.i16[0] = *(v37 + 2 * llroundf(fminf(fmaxf(((_S7 * _S26) + (*_D23.i32 * _S6)) + (_S25 * _S16), 0.0), 8191.0)));
          v106 = *v91;
          v91 += 4;
          *v57 = *(v37 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          v57[1] = v101.i16[0];
          v57[2] = _D23.i16[0];
          v57[3] = v106;
          v57 += 4;
          --v90;
        }

        while (v90);
      }

      v52 += v11;
      v49 += v14;
      ++v35;
    }

    while (v35 != v34);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = *(v9 + 104);
    v21 = v9 + 164;
    v22 = v9 + 16548;
    v23 = v5 + *(result + 15);
    v24 = *(result + 28) * a2 / v3 + *(result + 44);
    v25 = *(v9 + 157);
    v26 = *(v9 + 156);
    v27 = *(v9 + 155);
    v28 = *(v9 + 154);
    v29 = **(result + 16) + v11 * v23 + 8 * *(result + 14);
    v30 = **(result + 7) + v24 * v10 + 8 * *(result + 36);
    v31 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v32 = v8;
        v33 = v30;
        v34 = v29;
        do
        {
          _D21.i16[0] = *(v33 + 2 * v28);
          _D21.i16[1] = *(v33 + 2 * v27);
          _H22 = *(v33 + 2 * v26);
          __asm { FCVT            S22, H22 }

          _D21 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D21), v31), 0), v31)));
          v41 = *(v33 + 2 * v25);
          _H24 = *(v21 + 2 * _D21.u32[1]);
          v43 = _D21.i32[0];
          *_D21.i32 = fmaxf(_S22 * 8191.0, 0.0);
          LOWORD(_S22) = *(v21 + 2 * v43);
          _D21.i16[0] = *(v21 + 2 * llroundf(fminf(*_D21.i32, 8191.0)));
          __asm
          {
            FCVT            S22, H22
            FCVT            S24, H24
            FCVT            S21, H21
          }

          v46 = ((v13 * _S24) + (_S22 * v12)) + (*_D21.i32 * v14);
          v47 = ((v16 * _S24) + (_S22 * v15)) + (*_D21.i32 * v17);
          *_D21.i32 = ((v19 * _S24) + (_S22 * v18)) + (*_D21.i32 * v20);
          LOWORD(_S22) = *(v22 + 2 * llroundf(fminf(fmaxf(v47, 0.0), 8191.0)));
          _D21.i16[0] = *(v22 + 2 * llroundf(fminf(fmaxf(*_D21.i32, 0.0), 8191.0)));
          *v34 = *(v22 + 2 * llroundf(fminf(fmaxf(v46, 0.0), 8191.0)));
          v34[1] = LOWORD(_S22);
          v33 += 8;
          v34[2] = _D21.i16[0];
          v34[3] = v41;
          v34 += 4;
          --v32;
        }

        while (v32);
      }

      v30 += v10;
      v29 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_RGhA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_RGhA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 36);
  v4 = *result;
  v5 = *(result + 14);
  v6 = *(result + 12);
  v7 = *(result + 13);
  v8 = v7 * a2 / v4;
  v9 = v7 + v7 * a2;
  v10 = *(result + 19);
  v11 = **(result + 8);
  v12 = **(result + 7);
  v13 = v11 * (*(result + 28) * a2 / v4 + *(result + 44));
  v14 = **(result + 17);
  v15 = **(result + 16);
  v16 = v14 * (v8 + *(result + 15));
  v17 = v10[154];
  v54[0] = v10[154];
  v18 = v10[155];
  v54[1] = v10[155];
  v19 = v10[156];
  v54[2] = v10[156];
  v20 = v10[157];
  v54[3] = v20;
  memset(v53, 0, sizeof(v53));
  v21 = v9 / v4;
  do
  {
    v22 = 0;
    v23 = v54[v2];
    v24 = *(v53 + v2);
    do
    {
      v52 = v24;
      *(&v52 | v22 & 7) = v23 + 4 * v22;
      v24 = v52;
      ++v22;
    }

    while (v22 != 8);
    *(v53 + v2++) = v52;
  }

  while (v2 != 4);
  v25 = v21 - v8;
  if (v21 - v8 >= 1)
  {
    v26 = 0;
    v27 = v20;
    v28 = v19;
    v29 = v15 + v16;
    v30 = v18;
    v31 = v12 + v13;
    v32 = (v29 + 8 * v5);
    v33 = v17;
    v34 = (v31 + 8 * v3);
    do
    {
      if (v6 < 8)
      {
        v38 = 0;
        v37 = v32;
        v36 = v34;
      }

      else
      {
        v35 = 0;
        v36 = v34;
        v37 = v32;
        do
        {
          v55 = vld4q_s16(v36);
          v36 += 32;
          vst4q_s16(v37, v55);
          v37 += 32;
          v35 += 8;
        }

        while (v35 < v6 - 7);
        v38 = v6 & 0x7FFFFFF8;
      }

      v39 = __OFSUB__(v6, v38);
      v40 = v6 - v38;
      if (!((v40 < 0) ^ v39 | (v40 == 0)))
      {
        v41 = &v36[v27];
        v42 = &v36[v28];
        v43 = &v36[v30];
        v44 = &v36[v33];
        do
        {
          v45 = *v44;
          v44 += 4;
          v46 = v45;
          v47 = *v43;
          v43 += 4;
          v48 = v47;
          v49 = *v42;
          v42 += 4;
          v50 = v49;
          v51 = *v41;
          v41 += 4;
          *v37 = v46;
          v37[1] = v48;
          v37[2] = v50;
          v37[3] = v51;
          v37 += 4;
          --v40;
        }

        while (v40);
      }

      v34 = (v34 + v11);
      v32 = (v32 + v14);
      ++v26;
    }

    while (v26 != v25);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 8 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_RGhA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = **(result + 8);
    v9 = **(result + 17);
    v10 = v4 + *(result + 15);
    v11 = *(result + 19);
    v12 = *(result + 28) * a2 / v2 + *(result + 44);
    v13 = v11[157];
    v14 = v11[156];
    v15 = **(result + 16) + v9 * v10;
    v16 = v11[155];
    v17 = v11[154];
    v18 = (v15 + 8 * *(result + 14));
    v19 = **(result + 7) + v12 * v8 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          v23 = *(v21 + 2 * v17);
          v24 = *(v21 + 2 * v16);
          v25 = *(v21 + 2 * v14);
          v26 = *(v21 + 2 * v13);
          v21 += 8;
          *v22 = v23;
          v22[1] = v24;
          v22[2] = v25;
          v22[3] = v26;
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v8;
      v18 = (v18 + v9);
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double _D5)
{
  v8 = 0;
  v9 = *(a1 + 36);
  v10 = *a1;
  v11 = *(a1 + 28) * a2 / v10 + *(a1 + 44);
  v12 = *(a1 + 14);
  v14 = *(a1 + 12);
  v13 = *(a1 + 13);
  v15 = *(a1 + 19);
  v16 = v13 * a2 / v10;
  v17 = v13 + v13 * a2;
  v18 = **(a1 + 8);
  v19 = **(a1 + 7);
  v20 = v18 * v11;
  v21 = **(a1 + 17);
  v22 = **(a1 + 16);
  v23 = v21 * (v16 + *(a1 + 15));
  v151[0] = *(v15 + 154);
  v24 = *(v15 + 155);
  v151[1] = *(v15 + 155);
  v25 = *(v15 + 156);
  v151[2] = *(v15 + 156);
  v26 = *(v15 + 157);
  v151[3] = *(v15 + 157);
  _S21 = *(v15 + 72);
  _S22 = *(v15 + 76);
  _S23 = *(v15 + 80);
  _S24 = *(v15 + 84);
  _S25 = *(v15 + 88);
  _S29 = *(v15 + 92);
  _S31 = *(v15 + 96);
  v147 = *(v15 + 104);
  v148 = *(v15 + 100);
  v145 = *(v15 + 112);
  v146 = *(v15 + 108);
  v143 = *(v15 + 120);
  v144 = *(v15 + 116);
  memset(v150, 0, sizeof(v150));
  v34 = v17 / v10;
  do
  {
    v35 = 0;
    v36 = v151[v8];
    v37 = *(v150 + v8);
    do
    {
      result = (v36 + 4 * v35);
      v149 = v37;
      *(&v149 | v35 & 7) = v36 + 4 * v35;
      v37 = v149;
      ++v35;
    }

    while (v35 != 8);
    *(v150 + v8++) = v149;
  }

  while (v8 != 4);
  v39 = v34 - v16;
  if (v34 - v16 >= 1)
  {
    v40 = 0;
    _S0 = v145;
    _S1 = v146;
    __asm
    {
      FCVT            H8, S1
      FCVT            H9, S0
    }

    _S0 = v143;
    _S1 = v144;
    __asm { FCVT            H10, S1 }

    v52 = v15 + 16548;
    v53 = v14 - 7;
    __asm
    {
      FCVT            H11, S0
      FCVT            H12, S21
      FCVT            H13, S22
    }

    v57 = v15 + 32932;
    v58 = v15 + 164;
    __asm
    {
      FCVT            H14, S23
      FCVT            H15, S24
      FCVT            H0, S25
      FCVT            H1, S29
      FCVT            H2, S31
    }

    _S4 = v147;
    _S3 = v148;
    __asm
    {
      FCVT            H3, S3
      FCVT            H4, S4
    }

    v68 = v22 + v23 + 16 * v12;
    result = v19 + v20 + 8 * v9;
    v128 = v14 & 0xFFFFFFF8;
    v129 = v34 - v16;
    v69.i64[0] = 0x7000700070007000;
    v69.i64[1] = 0x7000700070007000;
    v70.i64[0] = 0x9000900090009000;
    v70.i64[1] = 0x9000900090009000;
    v71 = &qword_18FECD000;
    v138 = v18;
    v139 = v14;
    v137 = v21;
    v135 = _S22;
    v136 = _S21;
    v133 = _S24;
    v134 = _S23;
    v131 = _S29;
    v132 = _S25;
    v130 = _S31;
    do
    {
      if (v14 < 8)
      {
        v100 = 0;
        v74 = v68;
        v73 = result;
      }

      else
      {
        v142 = v40;
        v72 = 0;
        v140 = result;
        v141 = v68;
        v73 = result;
        v74 = v68;
        do
        {
          v153 = vld4q_s16(v73);
          v73 += 32;
          v75 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v153.val[0], v69), 0), v70));
          v76.i16[0] = *(v58 + 2 * v75.u16[0]);
          v77 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v153.val[1], v69), 0), v70));
          v78.i16[0] = *(v58 + 2 * v77.u16[0]);
          v76.i16[1] = *(v58 + 2 * v75.u16[1]);
          v79 = (v58 + 2 * v77.u16[4]);
          v80 = (v58 + 2 * v77.u16[5]);
          v76.i16[2] = *(v58 + 2 * v75.u16[2]);
          v81 = v77.u16[7];
          v78.i16[1] = *(v58 + 2 * v77.u16[1]);
          v76.i16[3] = *(v58 + 2 * v75.u16[3]);
          v82 = (v58 + 2 * v77.u16[6]);
          v78.i16[2] = *(v58 + 2 * v77.u16[2]);
          v78.i16[3] = *(v58 + 2 * v77.u16[3]);
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v153.val[2], v69), 0), v70));
          v76.i16[4] = *(v58 + 2 * v75.u16[4]);
          v84.i16[0] = *(v58 + 2 * v83.u16[0]);
          v78.i16[4] = *v79;
          v76.i16[5] = *(v58 + 2 * v75.u16[5]);
          v78.i16[5] = *v80;
          v76.i16[6] = *(v58 + 2 * v75.u16[6]);
          v78.i16[6] = *v82;
          v84.i16[1] = *(v58 + 2 * v83.u16[1]);
          v76.i16[7] = *(v58 + 2 * v75.u16[7]);
          v84.i16[2] = *(v58 + 2 * v83.u16[2]);
          v84.i16[3] = *(v58 + 2 * v83.u16[3]);
          v78.i16[7] = *(v58 + 2 * v81);
          v84.i16[4] = *(v58 + 2 * v83.u16[4]);
          v84.i16[5] = *(v58 + 2 * v83.u16[5]);
          v84.i16[6] = *(v58 + 2 * v83.u16[6]);
          v84.i16[7] = *(v58 + 2 * v83.u16[7]);
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, _H8), v78, _H9), v84, _H10), vmaxq_f16(vmaxq_f16(v76, v78), v84), _H11), 0), v70));
          v75.i16[0] = *(v52 + 2 * v85.u16[0]);
          v75.i16[1] = *(v52 + 2 * v85.u16[1]);
          v75.i16[2] = *(v52 + 2 * v85.u16[2]);
          v75.i16[3] = *(v52 + 2 * v85.u16[3]);
          v75.i16[4] = *(v52 + 2 * v85.u16[4]);
          v75.i16[5] = *(v52 + 2 * v85.u16[5]);
          v75.i16[6] = *(v52 + 2 * v85.u16[6]);
          v75.i16[7] = *(v52 + 2 * v85.u16[7]);
          v86 = vmulq_f16(v76, v75);
          v87 = vmulq_f16(v78, v75);
          v88 = vmulq_f16(v84, v75);
          v89 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v86, _H15), v87, _H0), v88, _H1);
          v90 = vmlaq_n_f16(vmulq_n_f16(v88, _H4), v87, _H3);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v86, _H12), v87, _H13), v88, _H14), 0), v70));
          v78.i16[0] = *(v57 + 2 * v91.u16[0]);
          v76.i16[0] = *(v57 + 2 * v91.u16[4]);
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v89, 0), v70));
          v93.i16[0] = *(v57 + 2 * v92.u16[0]);
          LOWORD(_D5) = *(v57 + 2 * v92.u16[4]);
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v90, v86, _H2), 0), v70));
          v92.i16[0] = *(v57 + 2 * v94.u16[0]);
          v90.i16[0] = *(v57 + 2 * v94.u16[4]);
          v95 = (v57 + 2 * v94.u16[5]);
          v96 = (v57 + 2 * v94.u16[6]);
          v97 = (v57 + 2 * v94.u16[7]);
          v152.val[3] = vcvtq_f32_f16(*v153.val[3].f32);
          v153.val[3] = vcvtq_f32_f16(*&vextq_s8(v153.val[3], v153.val[3], 8uLL));
          v78.i16[1] = *(v57 + 2 * v91.u16[1]);
          v78.i16[2] = *(v57 + 2 * v91.u16[2]);
          v93.i16[1] = *(v57 + 2 * v92.u16[1]);
          v78.i16[3] = *(v57 + 2 * v91.u16[3]);
          v93.i16[2] = *(v57 + 2 * v92.u16[2]);
          v92.i16[1] = *(v57 + 2 * v94.u16[1]);
          v93.i16[3] = *(v57 + 2 * v92.u16[3]);
          v92.i16[2] = *(v57 + 2 * v94.u16[2]);
          v76.i16[1] = *(v57 + 2 * v91.u16[5]);
          v92.i16[3] = *(v57 + 2 * v94.u16[3]);
          v76.i16[2] = *(v57 + 2 * v91.u16[6]);
          WORD1(_D5) = *(v57 + 2 * v92.u16[5]);
          v76.i16[3] = *(v57 + 2 * v91.u16[7]);
          v152.val[0] = vcvtq_f32_f16(*v78.i8);
          WORD2(_D5) = *(v57 + 2 * v92.u16[6]);
          HIWORD(_D5) = *(v57 + 2 * v92.u16[7]);
          v152.val[1] = vcvtq_f32_f16(v93);
          v152.val[2] = vcvtq_f32_f16(*v92.i8);
          v90.i16[1] = *v95;
          v90.i16[2] = *v96;
          v153.val[0] = vcvtq_f32_f16(*v76.i8);
          v153.val[1] = vcvtq_f32_f16(*&_D5);
          v90.i16[3] = *v97;
          v153.val[2] = vcvtq_f32_f16(*v90.i8);
          v98 = v74 + 128;
          vst4q_f32(v74, v152);
          v99 = (v74 + 64);
          vst4q_f32(v99, v153);
          v74 = v98;
          v72 += 8;
        }

        while (v72 < v53);
        v100 = v128;
        v39 = v129;
        v18 = v138;
        LODWORD(v14) = v139;
        v21 = v137;
        _S22 = v135;
        _S21 = v136;
        _S24 = v133;
        _S23 = v134;
        _S29 = v131;
        _S25 = v132;
        _S31 = v130;
        v40 = v142;
        result = v140;
        v68 = v141;
        v71 = &qword_18FECD000;
      }

      v101 = v14 - v100;
      if (v14 > v100)
      {
        do
        {
          LOWORD(_D5) = v73[v151[0]];
          WORD1(_D5) = v73[v24];
          _D6 = vdup_n_s32(0x45FFF800u);
          _D5 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D5), _D6), 0), _D6))));
          _D6.i16[0] = *(v58 + 2 * LODWORD(_D5));
          LOWORD(_D5) = v73[v25];
          __asm { FCVT            S7, H5 }

          LODWORD(_D5) = *(v71 + 842);
          __asm { FCVT            S6, H6 }

          _H16 = *(v58 + 2 * HIDWORD(_D5));
          v106 = llroundf(fminf(fmaxf(_S7 * *&_D5, 0.0), *&_D5));
          __asm { FCVT            S7, H16 }

          _H16 = *(v58 + 2 * v106);
          __asm { FCVT            S16, H16 }

          v110 = (((v145 * _S7) + (v146 * _S6)) + (v144 * _S16)) + (v143 * fmaxf(_S6, fmaxf(_S7, _S16)));
          v111 = *&_D5;
          if (v110 <= *&_D5)
          {
            v111 = v110;
            if (v110 < 0.0)
            {
              v111 = 0.0;
            }
          }

          _H18 = v73[v26];
          __asm { FCVT            S18, H18 }

          v73 += 4;
          _H17 = *(v52 + 2 * llroundf(v111));
          __asm { FCVT            S17, H17 }

          v116 = _S6 * _S17;
          _S7 = _S7 * _S17;
          _S16 = _S16 * _S17;
          v119 = ((_S22 * _S7) + (v116 * _S21)) + (_S16 * _S23);
          v120 = ((_S25 * _S7) + (v116 * _S24)) + (_S16 * _S29);
          v121 = ((v148 * _S7) + (v116 * _S31)) + (_S16 * v147);
          LOWORD(_S7) = *(v57 + 2 * llroundf(fminf(fmaxf(v119, 0.0), *&_D5)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S16) = *(v57 + 2 * llroundf(fminf(fmaxf(v120, 0.0), *&_D5)));
          __asm { FCVT            S16, H16 }

          _H5 = *(v57 + 2 * llroundf(fminf(fmaxf(v121, 0.0), *&_D5)));
          *v74 = _S7;
          *(v74 + 4) = _S16;
          __asm { FCVT            S5, H5 }

          *(v74 + 8) = _S5;
          *(v74 + 12) = _S18;
          v74 += 16;
          --v101;
        }

        while (v101);
      }

      result += v18;
      v68 += v21;
      ++v40;
    }

    while (v40 != v39);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = v9 + 164;
    v21 = v9 + 16548;
    v22 = v9 + 32932;
    v23 = *(v9 + 104);
    v24 = *(v9 + 108);
    v25 = *(v9 + 112);
    v26 = *(v9 + 116);
    v27 = *(v9 + 120);
    v28 = v5 + *(result + 15);
    v29 = *(result + 28) * a2 / v3 + *(result + 44);
    v30 = *(v9 + 157);
    v31 = *(v9 + 156);
    v32 = *(v9 + 155);
    v33 = *(v9 + 154);
    v34 = **(result + 16) + v11 * v28 + 16 * *(result + 14);
    v35 = **(result + 7) + v29 * v10 + 8 * *(result + 36);
    v36 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v37 = v8;
        v38 = v35;
        v39 = v34;
        do
        {
          _D25.i16[0] = *(v38 + 2 * v33);
          _D25.i16[1] = *(v38 + 2 * v32);
          _D25 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D25), v36), 0), v36)));
          _D25.i16[0] = *(v20 + 2 * _D25.u32[0]);
          _H26 = *(v38 + 2 * v31);
          __asm
          {
            FCVT            S26, H26
            FCVT            S25, H25
          }

          _H27 = *(v20 + 2 * _D25.u32[1]);
          v47 = llroundf(fminf(fmaxf(_S26 * 8191.0, 0.0), 8191.0));
          __asm { FCVT            S26, H27 }

          _H27 = *(v20 + 2 * v47);
          __asm { FCVT            S27, H27 }

          v51 = (((v25 * _S26) + (v24 * *_D25.i32)) + (v26 * _S27)) + (v27 * fmaxf(*_D25.i32, fmaxf(_S26, _S27)));
          v52 = 8191.0;
          if (v51 <= 8191.0)
          {
            v52 = v51;
            if (v51 < 0.0)
            {
              v52 = 0.0;
            }
          }

          _H29 = *(v38 + 2 * v30);
          __asm { FCVT            S29, H29 }

          v38 += 8;
          _H28 = *(v21 + 2 * llroundf(v52));
          __asm { FCVT            S28, H28 }

          v57 = *_D25.i32 * _S28;
          _S26 = _S26 * _S28;
          _S27 = _S27 * _S28;
          v60 = ((v13 * _S26) + (v57 * v12)) + (_S27 * v14);
          v61 = ((v16 * _S26) + (v57 * v15)) + (_S27 * v17);
          _S25 = ((v19 * _S26) + (v57 * v18)) + (_S27 * v23);
          LOWORD(_S26) = *(v22 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          LOWORD(_S27) = *(v22 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          LOWORD(_S25) = *(v22 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          *v39 = _S26;
          v39[1] = _S27;
          __asm { FCVT            S25, H25 }

          v39[2] = _S25;
          v39[3] = _S29;
          v39 += 4;
          --v37;
        }

        while (v37);
      }

      v35 += v10;
      v34 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float32x4_t _Q1)
{
  v4 = 0;
  v5 = *(a1 + 36);
  v6 = *a1;
  v7 = *(a1 + 14);
  v9 = *(a1 + 12);
  v8 = *(a1 + 13);
  v10 = v8 * a2 / v6;
  v11 = *(a1 + 19);
  v12 = v8 + v8 * a2;
  v13 = **(a1 + 8);
  v14 = **(a1 + 7);
  v15 = v13 * (*(a1 + 28) * a2 / v6 + *(a1 + 44));
  v16 = **(a1 + 17);
  v17 = **(a1 + 16);
  v18 = v16 * (v10 + *(a1 + 15));
  v122[0] = *(v11 + 154);
  v19 = *(v11 + 155);
  v122[1] = *(v11 + 155);
  v20 = *(v11 + 156);
  v122[2] = *(v11 + 156);
  v21 = *(v11 + 157);
  v122[3] = *(v11 + 157);
  _S25 = *(v11 + 72);
  _S17 = *(v11 + 76);
  _S26 = *(v11 + 80);
  _S27 = *(v11 + 84);
  _S28 = *(v11 + 88);
  _S5 = *(v11 + 92);
  _S6 = *(v11 + 96);
  _S7 = *(v11 + 100);
  _S16 = *(v11 + 104);
  memset(v121, 0, sizeof(v121));
  v31 = v12 / v6;
  do
  {
    v32 = 0;
    result = v122[v4];
    v34 = *(v121 + v4);
    do
    {
      v120 = v34;
      *(&v120 | v32 & 7) = result + 4 * v32;
      v34 = v120;
      ++v32;
    }

    while (v32 != 8);
    *(v121 + v4++) = v120;
  }

  while (v4 != 4);
  v35 = v31 - v10;
  if (v31 - v10 >= 1)
  {
    v36 = 0;
    __asm
    {
      FCVT            H8, S25
      FCVT            H9, S17
    }

    v43 = v11 + 164;
    v44 = v11 + 16548;
    v45 = v9 - 7;
    __asm
    {
      FCVT            H10, S26
      FCVT            H11, S27
      FCVT            H12, S28
      FCVT            H13, S5
      FCVT            H14, S6
      FCVT            H15, S7
      FCVT            H0, S16
    }

    v53 = v17 + v18 + 16 * v7;
    result = v14 + v15 + 8 * v5;
    v108 = v9 & 0xFFFFFFF8;
    v109 = v31 - v10;
    v54.i64[0] = 0x7000700070007000;
    v54.i64[1] = 0x7000700070007000;
    v55.i64[0] = 0x9000900090009000;
    v55.i64[1] = 0x9000900090009000;
    v115 = v13;
    v116 = v9;
    v114 = v16;
    v112 = _S26;
    v113 = _S25;
    v110 = _S28;
    v111 = _S27;
    do
    {
      if (v9 < 8)
      {
        v95 = 0;
        v58 = v53;
        v57 = result;
      }

      else
      {
        v119 = v36;
        v56 = 0;
        v117 = result;
        v118 = v53;
        v57 = result;
        v58 = v53;
        do
        {
          v123 = vld4q_s16(v57);
          v57 += 32;
          v59 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v123.val[0], v54), 0), v55));
          v60.i16[0] = *(v43 + 2 * v59.u16[0]);
          v61 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v123.val[1], v54), 0), v55));
          v62.i16[0] = *(v43 + 2 * v61.u16[0]);
          v63 = (v43 + 2 * v61.u16[2]);
          v64 = (v43 + 2 * v61.u16[3]);
          v65 = (v43 + 2 * v61.u16[4]);
          v66 = (v43 + 2 * v61.u16[5]);
          v60.i16[1] = *(v43 + 2 * v59.u16[1]);
          v67 = v61.u16[7];
          v62.i16[1] = *(v43 + 2 * v61.u16[1]);
          v60.i16[2] = *(v43 + 2 * v59.u16[2]);
          v68 = (v43 + 2 * v61.u16[6]);
          v69 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v123.val[2], v54), 0), v55));
          v62.i16[2] = *v63;
          v70.i16[0] = *(v43 + 2 * v69.u16[0]);
          v60.i16[3] = *(v43 + 2 * v59.u16[3]);
          v62.i16[3] = *v64;
          v60.i16[4] = *(v43 + 2 * v59.u16[4]);
          v62.i16[4] = *v65;
          v60.i16[5] = *(v43 + 2 * v59.u16[5]);
          v62.i16[5] = *v66;
          v70.i16[1] = *(v43 + 2 * v69.u16[1]);
          v60.i16[6] = *(v43 + 2 * v59.u16[6]);
          v70.i16[2] = *(v43 + 2 * v69.u16[2]);
          v70.i16[3] = *(v43 + 2 * v69.u16[3]);
          v62.i16[6] = *v68;
          v70.i16[4] = *(v43 + 2 * v69.u16[4]);
          v70.i16[5] = *(v43 + 2 * v69.u16[5]);
          v60.i16[7] = *(v43 + 2 * v59.u16[7]);
          v70.i16[6] = *(v43 + 2 * v69.u16[6]);
          v70.i16[7] = *(v43 + 2 * v69.u16[7]);
          v62.i16[7] = *(v43 + 2 * v67);
          v71 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v60, _H8), v62, _H9), v70, _H10);
          v72 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v60, _H11), v62, _H12), v70, _H13);
          v73 = vmlaq_n_f16(vmulq_n_f16(v70, _H0), v62, _H15);
          v74 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v71, 0), v55));
          v62.i16[0] = *(v44 + 2 * v74.u16[0]);
          v75 = vmlaq_n_f16(v73, v60, _H14);
          v76 = (v44 + 2 * v74.u16[1]);
          v77 = (v44 + 2 * v74.u16[2]);
          v78 = (v44 + 2 * v74.u16[3]);
          v60.i16[0] = *(v44 + 2 * v74.u16[4]);
          v79 = (v44 + 2 * v74.u16[5]);
          v80 = (v44 + 2 * v74.u16[6]);
          LOWORD(v68) = v74.i16[7];
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v72, 0), v55));
          v82.i16[0] = *(v44 + 2 * v81.u16[0]);
          v83.i16[0] = *(v44 + 2 * v81.u16[4]);
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v75, 0), v55));
          v85.i16[0] = *(v44 + 2 * v84.u16[0]);
          v86.i16[0] = *(v44 + 2 * v84.u16[4]);
          v87 = (v44 + 2 * v84.u16[5]);
          v88 = (v44 + 2 * v84.u16[6]);
          v89 = (v44 + 2 * v84.u16[7]);
          v90 = vcvtq_f32_f16(*v123.val[3].f32);
          v123.val[3] = vcvtq_f32_f16(*&vextq_s8(v123.val[3], v123.val[3], 8uLL));
          v62.i16[1] = *v76;
          v62.i16[2] = *v77;
          v82.i16[1] = *(v44 + 2 * v81.u16[1]);
          v62.i16[3] = *v78;
          v82.i16[2] = *(v44 + 2 * v81.u16[2]);
          v85.i16[1] = *(v44 + 2 * v84.u16[1]);
          v82.i16[3] = *(v44 + 2 * v81.u16[3]);
          v85.i16[2] = *(v44 + 2 * v84.u16[2]);
          v60.i16[1] = *v79;
          v85.i16[3] = *(v44 + 2 * v84.u16[3]);
          v60.i16[2] = *v80;
          v83.i16[1] = *(v44 + 2 * v81.u16[5]);
          v60.i16[3] = *(v44 + 2 * v68);
          _Q1 = vcvtq_f32_f16(*v62.i8);
          v83.i16[2] = *(v44 + 2 * v81.u16[6]);
          v83.i16[3] = *(v44 + 2 * v81.u16[7]);
          v91 = vcvtq_f32_f16(v82);
          v92 = vcvtq_f32_f16(v85);
          v86.i16[1] = *v87;
          v86.i16[2] = *v88;
          v123.val[0] = vcvtq_f32_f16(*v60.i8);
          v123.val[1] = vcvtq_f32_f16(v83);
          v86.i16[3] = *v89;
          v123.val[2] = vcvtq_f32_f16(v86);
          v93 = v58 + 128;
          vst4q_f32(v58, *_Q1.f32);
          v94 = (v58 + 64);
          vst4q_f32(v94, v123);
          v58 = v93;
          v56 += 8;
        }

        while (v56 < v45);
        v95 = v108;
        v35 = v109;
        v13 = v115;
        LODWORD(v9) = v116;
        v16 = v114;
        _S26 = v112;
        _S25 = v113;
        _S28 = v110;
        _S27 = v111;
        v36 = v119;
        result = v117;
        v53 = v118;
      }

      v96 = v9 - v95;
      if (v9 > v95)
      {
        do
        {
          _Q1.i16[0] = v57[v122[0]];
          _H2 = v57[v20];
          _H3 = v57[v21];
          __asm { FCVT            S2, H2 }

          _Q1.i16[1] = v57[v19];
          _D21 = vdup_n_s32(0x45FFF800u);
          __asm { FCVT            S3, H3 }

          *_Q1.f32 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q1.f32), _D21), 0), _D21)));
          _Q1.i16[0] = *(v43 + 2 * _Q1.u32[0]);
          v57 += 4;
          _D21.i16[0] = *(v43 + 2 * _Q1.u32[1]);
          __asm { FCVT            S21, H21 }

          LOWORD(_S2) = *(v43 + 2 * llroundf(fminf(fmaxf(_S2 * 8191.0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S1, H1
          }

          v103 = ((_S17 * _D21.f32[0]) + (_Q1.f32[0] * _S25)) + (_S2 * _S26);
          v104 = ((_S28 * _D21.f32[0]) + (_Q1.f32[0] * _S27)) + (_S2 * _S5);
          _Q1.f32[0] = ((_S7 * _D21.f32[0]) + (_Q1.f32[0] * _S6)) + (_S2 * _S16);
          LOWORD(_S2) = *(v44 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _D21.i16[0] = *(v44 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _Q1.i16[0] = *(v44 + 2 * llroundf(fminf(fmaxf(_Q1.f32[0], 0.0), 8191.0)));
          *v58 = _S2;
          *(v58 + 4) = _D21.i32[0];
          __asm { FCVT            S1, H1 }

          *(v58 + 8) = _Q1.i32[0];
          *(v58 + 12) = _S3;
          v58 += 16;
          --v96;
        }

        while (v96);
      }

      result += v13;
      v53 += v16;
      ++v36;
    }

    while (v36 != v35);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 24);
    v9 = *(result + 19);
    v10 = **(result + 8);
    v11 = **(result + 17);
    v12 = *(v9 + 72);
    v13 = *(v9 + 76);
    v14 = *(v9 + 80);
    v15 = *(v9 + 84);
    v16 = *(v9 + 88);
    v17 = *(v9 + 92);
    v18 = *(v9 + 96);
    v19 = *(v9 + 100);
    v20 = *(v9 + 104);
    v21 = v9 + 164;
    v22 = v9 + 16548;
    v23 = v5 + *(result + 15);
    v24 = *(result + 28) * a2 / v3 + *(result + 44);
    v25 = *(v9 + 157);
    v26 = *(v9 + 156);
    v27 = *(v9 + 155);
    v28 = *(v9 + 154);
    v29 = **(result + 16) + v11 * v23 + 16 * *(result + 14);
    v30 = **(result + 7) + v24 * v10 + 8 * *(result + 36);
    v31 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v8 >= 1)
      {
        v32 = v8;
        v33 = v30;
        v34 = v29;
        do
        {
          _D21.i16[0] = *(v33 + 2 * v28);
          _H22 = *(v33 + 2 * v26);
          __asm { FCVT            S22, H22 }

          _H23 = *(v33 + 2 * v25);
          _D21.i16[1] = *(v33 + 2 * v27);
          __asm { FCVT            S23, H23 }

          _D21 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D21), v31), 0), v31)));
          _D21.i16[0] = *(v21 + 2 * _D21.u32[0]);
          v33 += 8;
          __asm { FCVT            S21, H21 }

          _H24 = *(v21 + 2 * _D21.u32[1]);
          __asm { FCVT            S24, H24 }

          LOWORD(_S22) = *(v21 + 2 * llroundf(fminf(fmaxf(_S22 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v46 = ((v13 * _S24) + (*_D21.i32 * v12)) + (_S22 * v14);
          v47 = ((v16 * _S24) + (*_D21.i32 * v15)) + (_S22 * v17);
          *_D21.i32 = ((v19 * _S24) + (*_D21.i32 * v18)) + (_S22 * v20);
          LOWORD(_S22) = *(v22 + 2 * llroundf(fminf(fmaxf(v46, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S24) = *(v22 + 2 * llroundf(fminf(fmaxf(v47, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _D21.i16[0] = *(v22 + 2 * llroundf(fminf(fmaxf(*_D21.i32, 0.0), 8191.0)));
          *v34 = _S22;
          v34[1] = _S24;
          __asm { FCVT            S21, H21 }

          v34[2] = _D21.i32[0];
          v34[3] = _S23;
          v34 += 4;
          --v32;
        }

        while (v32);
      }

      v30 += v10;
      v29 += v11;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}